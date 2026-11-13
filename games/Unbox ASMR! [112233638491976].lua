local xd_1
local oT
local HttpService
local oW
local Toggles
local oZ
local oh
local Options
local o1
local connection
local Label
local oo
local CurrentCamera
local oM
local ot
local oP
local oS
local SaveManager
local oz
local od
local oC
local __ouroboros_gen
local og
local oF
local oj
local UserInputService
local o3
local on
local oL
local oq
local o9
local oO
local LocalPlayer
local oR
local pc
local oy
local oc
local ThemeManager
local VirtualUser
local Library
local oH
local o2
local oi
local Workspace
local om
local o5
local op
local connection2
local oN
local ou
local oQ
local pb
local function onCopyJoinScript_JobID()
    local qM = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, o2)
    if setclipboard then
        setclipboard(qM)
    elseif toclipboard then
        toclipboard(qM)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn51()
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
local function fn66()
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    oh(false)
    if oc.__OUROBOROS_HUB and oc.__OUROBOROS_HUB.gen == __ouroboros_gen then
        oc.__OUROBOROS_HUB = nil
    end
    local w8_1 = oc.__ouroboros_gen or 0
    oc.__ouroboros_gen = w8_1 + 1
    print("[Ouroboros] Unloaded Unbox ASMR hub gen " .. __ouroboros_gen)
end
local function fn100()
    ot = game:GetService("MarketplaceService"):GetProductInfo(oo).Name
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local vu = tick() - oP
            local vv = tick() - oL
            if vu >= 300 and vv >= 60 then
                pcall(oz)
            else
                if vu < 300 and vv >= 300 then
                    pcall(oz)
                end
            end
        end
    end
end
local function fn177()
    op(oy, "Copied Discord invite to clipboard")
end
local function fn185(ie, ig)
    local vz_1 = (ie == "Toggle" and Toggles or Options)[ig]
    local vy_2 = type(vz_1) == "table" and vz_1.Type == ie
    return vy_2 and vz_1 or nil
end
local function fn239()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    oL = tick()
end
local function fn244()
    setthreadidentity(8)
end
local function worker()
    local qS_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qR = math.floor(os.clock() - oR)
        if qR < 60 then
            qS_1 = qR .. "s"
        elseif qR < 3600 then
            qS_1 = string.format("%dm %ds", qR // 60, qR % 60)
        else
            qS_1 = string.format("%dh %dm", qR // 3600, qR % 3600 // 60)
        end
        Label:SetText(oM("Session time", qS_1, oq))
    end
end
local function fn250()
    Options.CrateRarityFilter:OnChanged(function()
        local Value = Options.CrateRarityFilter.Value
        oC = {}
        if typeof(Value) == "table" then
            for k, v in pairs(Value) do
                if v then
                    oC[k] = true
                end
            end
        elseif typeof(Value) == "string" then
            oC[Value] = true
        end
    end)
    local Value = Options.CrateRarityFilter.Value
    if typeof(Value) == "table" then
        for k, v in pairs(Value) do
            if v then
                oC[k] = true
            end
        end
    elseif typeof(Value) == "string" then
        oC[Value] = true
    end
end
local function fn264()
    local qF_1
    local qE_1
    if identifyexecutor then
        qF_1, qE_1 = identifyexecutor()
        local qG = qF_1 ~= ""
        local qH = type(qF_1) == "string" and qG
        if qH then
            local qG_1 = type(qE_1) == "string" and qE_1 ~= "" and qF_1 .. " " .. qE_1
            on = qG_1 or qF_1
        end
    end
end
local function fn267()
    local attr = LocalPlayer:GetAttribute("PlotNumber")
    if typeof(attr) ~= "number" then
        return nil
    end
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    local ActivePlots = Plots:FindFirstChild("ActivePlots")
    if not ActivePlots then
        return nil
    end
    return ActivePlots:FindFirstChild("Plot" .. tostring(attr))
end
local function fn276(aM)
    local DiscordGroup = aM:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oi })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oi })
end
local function onRscripts()
    if setclipboard then
        setclipboard(ou)
    elseif toclipboard then
        toclipboard(ou)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn297()
    return oN()
end
local function fn304()
    local Character = LocalPlayer.Character
    local uI = Character and Character:FindFirstChild("HumanoidRootPart")
    return uI
end
local function fn318()
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:GetAttribute("IsCrateTool") == true then
            return child
        end
    end
    for i, child in ipairs(LocalPlayer.Character:GetChildren()) do
        local sH = child:IsA("Tool") and child:GetAttribute("IsCrateTool") == true
        if sH then
            return child
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:GetAttribute("CrateTemplateName") then
            return child
        end
    end
    return nil
end
local function onCopyVenmoLink()
    op(o1, "Copied Venmo link")
end
local function onCopyUSDTAddress()
    op(o9, "Copied USDT address")
end
local function fn370()
    local vG = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local vH = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if vH then
                local vH_1 = om(k, v)
                if vH_1 then
                    vG[#vG + 1] = vH_1
                end
            end
        end
    end
    table.sort(vG, function(iD, iE)
        if iD.type ~= iE.type then
            return iD.type < iE.type
        end
        return iD.idx < iE.idx
    end)
    return { objects = vG }
end
local function fn429()
    local sd = oS()
    if not sd then
        return nil
    end
    local Placement = sd:FindFirstChild("Placement")
    if not Placement then
        return nil
    end
    local Unlocked = Placement:FindFirstChild("Unlocked")
    local Bounds = Placement:FindFirstChild("Bounds")
    local se_1 = not Unlocked or not Bounds or not Bounds:IsA("BasePart")
    if se_1 then
        return nil
    end
    local ASMR = sd:FindFirstChild("ASMR")
    local PlacedCrates = sd:FindFirstChild("PlacedCrates")
    for i, descendant in ipairs(Unlocked:GetDescendants()) do
        local sd_1 = descendant:IsA("BasePart") and descendant:GetAttribute("Placeable") == true
        if sd_1 then
            local sd_2 = descendant.CFrame + Vector3.new(0, 2, 0)
            local sh = OverlapParams.new()
            sh.FilterType = Enum.RaycastFilterType.Include
            sh.FilterDescendantsInstances = { ASMR, PlacedCrates }
            local si = Workspace:GetPartBoundsInBox(sd_2, Vector3.new(4, 1.4, 4), sh)
            local sh_1 = false
            for i, v in ipairs(si) do
                if v:IsA("BasePart") then
                    sh_1 = true
                    break
                end
            end
            if not sh_1 then
                return sd_2
            end
        end
    end
    for i, child in ipairs(Unlocked:GetChildren()) do
        if child:IsA("BasePart") then
            return child.CFrame + Vector3.new(0, 2, 0)
        end
    end
    return nil
end
local function onCloseStuckConveyorMenu()
    pcall(function()
        local ChangeConveyorGui = LocalPlayer.PlayerGui:FindFirstChild("ChangeConveyorGui")
        if ChangeConveyorGui then
            ChangeConveyorGui.Enabled = false
        end
    end)
    oF("Conveyor Menu", "Closed", 2)
end
local function onInputBegan()
    oP = tick()
end
local function fn464()
    local ChangeConveyorGui = LocalPlayer.PlayerGui:FindFirstChild("ChangeConveyorGui")
    if ChangeConveyorGui then
        ChangeConveyorGui.Enabled = false
    end
end
local function fn495()
    oc.__OUROBOROS_HUB.Library:Unload()
end
local function onCopyEthereumAddress()
    op(pb, "Copied Ethereum address")
end
local function fn625()
    local rj = oS()
    if not rj then
        return {}
    end
    local rk = rj:FindFirstChild("Conveyor", true)
    if not rk then
        local Conveyor = rj:FindFirstChild("Conveyor")
        if Conveyor then
            rk = Conveyor:FindFirstChild("ActiveCrates")
        end
    end
    local rl_2 = rj:FindFirstChild("Conveyor") and rj.Conveyor:FindFirstChild("ActiveCrates")
    local rj_1 = rl_2
    local rl_3 = not rj_1
    if rl_3 ~= false then
        rl_3 = rk
    end
    if rl_3 then
        rj_1 = rk
    end
    if not rj_1 then
        return {}
    end
    local rk_1 = {}
    for i, child in ipairs(rj_1:GetChildren()) do
        local rj_2 = child:GetAttribute("IsConveyorCrate") == true and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if rj_2 then
            local rj_3 = child:FindFirstChild("Main", true) and child.Main:FindFirstChild("CrateBuyPrompt")
            local rl_4 = rj_3 or child:FindFirstChild("CrateBuyPrompt", true)
            local rj_4 = rl_4 and rl_4:IsA("ProximityPrompt") and rl_4.Enabled
            if rj_4 then
                local rj_5 = child:GetAttribute("Rarity") or "Common"
                local rm = rj_5
                local rj_6 = child:GetAttribute("TemplateName") or child:GetAttribute("CrateTemplateName")
                local rn = oj
                if rn then
                    rn = rj_6
                end
                if rn then
                    rn = oj.Crates
                end
                if rn then
                    rn = oj.Crates[rj_6]
                end
                if rn then
                    rm = oj.Crates[rj_6].Rarity or rm
                end
                local rj_8 = next(oC) == nil or oC[rm]
                if rj_8 then
                    local insert = table.insert
                    local rn_1 = child:GetAttribute("Price") or 0
                    insert(rk_1, { model = child, prompt = rl_4, rarity = rm, price = rn_1 })
                end
            end
        end
    end
    return rk_1
end
local function fn653()
    local rD = oS()
    if not rD then
        return false
    end
    local UpgradeConveyorButton = rD:FindFirstChild("UpgradeConveyorButton", true)
    local rF
    if UpgradeConveyorButton then
        local rG = UpgradeConveyorButton:FindFirstChild("ButtonPart") or UpgradeConveyorButton:FindFirstChild("Part")
        rF = rG
    end
    if not rF then
        for i, descendant in ipairs(rD:GetDescendants()) do
            if descendant.Name == "ButtonPart" and descendant.Parent and descendant.Parent.Name == "UpgradeConveyorButton" then
                rF = descendant
                break
            end
        end
    end
    local rD_2 = rF and rF:IsA("BasePart")
    if rD_2 then
        local rD_3 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if rD_3 then
            rD_3.CFrame = CFrame.new(rF.Position + Vector3.new(0, 3, 0))
            task.wait(0.4)
            if not oW() then
                return true
            end
            pcall(function()
                local ChangeConveyorGui = LocalPlayer.PlayerGui:FindFirstChild("ChangeConveyorGui")
                if ChangeConveyorGui then
                    ChangeConveyorGui.Enabled = false
                end
            end)
            return true
        end
        return false
    end
    return false
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local uK_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uK_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn663(io, ip)
    local Type = ip.Type
    if Type == "Toggle" then
        return { idx = io, type = "Toggle", value = ip.Value == true }
    elseif Type == "Slider" then
        return { idx = io, type = "Slider", value = tostring(ip.Value) }
    elseif Type == "Dropdown" then
        return { idx = io, type = "Dropdown", multi = ip.Multi == true, value = ip.Value }
    elseif Type == "Input" then
        local vD = ip.Value or ""
        return { idx = io, type = "Input", text = tostring(vD) }
    elseif Type == "ColorPicker" then
        return { idx = io, type = "ColorPicker", value = ip.Value:ToHex(), transparency = ip.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = io,
            type = "KeyPicker",
            mode = ip.Mode,
            key = ip.Value,
            modifiers = ip.Modifiers,
            toggled = ip.Toggled
        }
    else
        return nil
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            oh(true)
        end
    end
end
local function onCopySolanaAddress()
    op(o5, "Copied Solana address")
end
local function fn694()
    local Character = LocalPlayer.Character
    local uF = Character and Character:FindFirstChildOfClass("Humanoid")
    return uF
end
local function fn698()
    return oc.__ouroboros_gen == __ouroboros_gen
end
local function fn704(aU, aV)
    return string.format('<font color="%s">%s</font>', aV, aU)
end
local function onCopyLitecoinAddress()
    op(og, "Copied Litecoin address")
end
local function fn731(aF, aG)
    if setclipboard then
        setclipboard(aF)
    elseif toclipboard then
        toclipboard(aF)
    end
    Library:Notify(aG)
end
local function fn736()
    local tf = oS()
    if not tf then
        return nil
    end
    local ASMR = tf:FindFirstChild("ASMR")
    if not ASMR then
        return nil
    end
    for i, child in ipairs(ASMR:GetChildren()) do
        local tf_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId and child:GetAttribute("WorkerAssigned") ~= true and child:GetAttribute("NoWorkers") ~= true
        if tf_1 then
            local attr = child:GetAttribute("ASMRRarity")
            if attr ~= "Cosmic" and attr ~= "Fire & Ice" then
                if child:GetAttribute("PlacedASMRId") then
                    return child
                end
            end
        end
    end
    return nil
end
local function onExportConfigToClipboard()
    local v3_1
    local v2_1
    v2_1, v3_1 = pcall(HttpService.JSONEncode, HttpService, pc())
    if not v2_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local v2_2 = setclipboard or toclipboard
    local v2_3 = type(v2_2) ~= "function" or not pcall(v2_2, v3_1)
    if v2_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onInputChanged(hY)
    local UserInputType = hY.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oP = tick()
    end
end
local function fn811()
    SaveManager:LoadAutoloadConfig()
end
local function fn819()
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:GetAttribute("IsWorkerTool") == true then
            return child
        end
    end
    for i, child in ipairs(LocalPlayer.Character:GetChildren()) do
        local ts = child:IsA("Tool") and child:GetAttribute("IsWorkerTool") == true
        if ts then
            return child
        end
    end
    return nil
end
local function onCopyBitcoinAddress()
    op(od, "Copied Bitcoin address")
end
local function onImportConfigFromClipboardTex()
    local v8_1
    local v6 = Options.SaveManager_ImportSource.Value or ""
    local v6_1
    local v7 = tostring(v6):match("^%s*(.-)%s*$")
    if v7 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    v6_1, v8_1 = pcall(HttpService.JSONDecode, HttpService, v7)
    local v7_1 = not v6_1 or type(v8_1) ~= "table" or type(v8_1.objects) ~= "table"
    if v7_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local v6_2 = 0
    for i, v in ipairs(v8_1.objects) do
        if oH(v) then
            v6_2 += 1
        end
    end
    if v6_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local v8_2 = v6_2 == 1 and ""
    local wi = if v8_2 then 1 else 0
    local wg = 419 * wi + 3396 * (1 - wi)
    local wh = 2775 * wi + 3660 * (1 - wi)
    if not ((wg * 352 + wh * 3161 + wg * wh) % 16777213 == 10081988) then
        v8_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(v6_2, v8_2), 6)
end
local function fn931()
    local ChangeConveyorGui = LocalPlayer.PlayerGui:FindFirstChild("ChangeConveyorGui")
    if ChangeConveyorGui then
        ChangeConveyorGui.Enabled = false
    end
end
local function fn939()
    if not Toggles.Fly.Value then
        local u6 = oZ()
        if u6 then
            u6.PlatformStand = false
        end
    end
end
local function fn947()
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:GetAttribute("IsASMRTool") == true then
            return child
        end
    end
    for i, child in ipairs(LocalPlayer.Character:GetChildren()) do
        local rW = child:IsA("Tool") and child:GetAttribute("IsASMRTool") == true
        if rW then
            return child
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:GetAttribute("ASMRTemplateName") then
            return child
        end
    end
    return nil
end
local function fn953()
    if not Toggles.WalkSpeedEnabled.Value then
        local u8 = oZ()
        if u8 then
            u8.WalkSpeed = 16
        end
    end
end
local function onRenderStepped(hf)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local u__1 = oZ()
        if u__1 then
            u__1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local u__3 = oQ()
        local u0 = oZ()
        if u__3 and u0 then
            u0.PlatformStand = true
            local u0_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                u0_1 = u0_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                u0_1 = u0_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                u0_1 = u0_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                u0_1 = u0_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                u0_1 = u0_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                u0_1 = u0_1 - Vector3.new(0, 1, 0)
            end
            u__3.Velocity = Vector3.zero
            if u0_1.Magnitude > 0 then
                u__3.CFrame = u__3.CFrame + u0_1.Unit * Options.FlySpeed.Value * hf
            end
        end
    end
end
local function fn1048()
    local qi = oO
    local qj = qi:FindFirstChild("RebirthRemotes") and qi.RebirthRemotes:FindFirstChild("RequestRebirth")
    local qk = qi:FindFirstChild("RebirthRemotes") and qi.RebirthRemotes:FindFirstChild("GetRebirthState")
    local ql = qi:FindFirstChild("PlotSystemRemotes") and qi.PlotSystemRemotes:FindFirstChild("ConveyorButtonPress")
    local qm = qi:FindFirstChild("PlotSystemRemotes") and qi.PlotSystemRemotes:FindFirstChild("ChangeConveyorRequest")
    local qn = qi:FindFirstChild("WorkerRemotes") and qi.WorkerRemotes:FindFirstChild("BuyWorker")
    local qo = qi:FindFirstChild("WorkerRemotes") and qi.WorkerRemotes:FindFirstChild("AssignWorker")
    local qp = qi:FindFirstChild("CratePlacementRemotes") and qi.CratePlacementRemotes:FindFirstChild("RequestPlaceCrate")
    local qq = qi:FindFirstChild("ASMRPlacementRemotes") and qi.ASMRPlacementRemotes:FindFirstChild("RequestPlaceASMR")
    local qr = qi:FindFirstChild("ASMRPlacementRemotes") and qi.ASMRPlacementRemotes:FindFirstChild("RequestPickupASMR")
    local qs = qi:FindFirstChild("ASMRRewardRemotes") and qi.ASMRRewardRemotes:FindFirstChild("RequestUpgrade")
    local qt = qi:FindFirstChild("PlotExpansionRemotes") and qi.PlotExpansionRemotes:FindFirstChild("ExpansionPurchaseResult")
    return {
        Rebirth_Request = qj,
        Rebirth_GetState = qk,
        ConveyorPress = ql,
        ChangeConveyor = qm,
        BuyWorker = qn,
        AssignWorker = qo,
        RequestPlaceCrate = qp,
        RequestPlaceASMR = qq,
        RequestPickupASMR = qr,
        RequestUpgrade = qs,
        ExpansionResult = qt
    }
end
local function fn1068()
    oh(Toggles.AntiGameplayPause.Value)
end
local function onUnload()
    Library:Unload()
end
local function onCopyPayPalLink()
    op(o3, "Copied PayPal link")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local uV_1 = oZ()
        if uV_1 then
            uV_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn1102(aX, aY, aZ)
    return string.format("<b>%s</b> %s %s", aX, oT("-", "#5a6070"), oT(aY, aZ))
end
oc = nil
od = nil
og = nil
oh = nil
oi = nil
oj = nil
connection = nil
om = nil
on = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
LocalPlayer = nil
oy = nil
oz = nil
HttpService = nil
oC = nil
Toggles = nil
VirtualUser = nil
oF = nil
Options = nil
oH = nil
UserInputService = nil
Workspace = nil
oL = nil
oM = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
oT = nil
SaveManager = nil
oW = nil
ThemeManager = nil
__ouroboros_gen = nil
oZ = nil
Library = nil
o1 = nil
local oe, of, ow, ox, oB, oJ, oU
o2 = nil
o3 = nil
Label = nil
o5 = nil
CurrentCamera = nil
connection2 = nil
o9 = nil
pb = nil
pc = nil
local o6, pa, pf, pg, ph, pi, pj, pl, pm, pq, pI, pJ, pP
local pp_1
local pk_1, pk_2, pk_3, pk_4
o6 = nil
pa = nil
oc, xd_1 = nil, nil
local xd_4 = 3
repeat
    pf = (xd_4 * 1 + 0) % 2 + 1
    if pf <= 1 then
        if (xd_4 * 3 + 9) * 17 % 4 == ((xd_4 * 3 + 9) * 17 + 5) % 4 then
            oc = xd_1.__OUROBOROS_HUB
        else
            xd_1 = oc.__OUROBOROS_HUB
        end
        xd_4 = (xd_4 + 1) % 8
    else
        pf = (vector.create((xd_4 * 2 + 3) % 11 + 1, (xd_4 * 2 + 5) % 13 + 1, (xd_4 * 4 + 12) % 17 + 1))
        pg = (vector.create((xd_4 * 1 + 5) % 11 + 1, (xd_4 * 9 + 12) % 13 + 1, (xd_4 * 6 + 9) % 17 + 1))
        ph = (vector.create((xd_4 * 4 + 7) % 11 + 1, (xd_4 * 2 + 4) % 13 + 1, (xd_4 * 15 + 2) % 17 + 1))
        pi = (vector.create((xd_4 * 5 + 6) % 5 + 1, (xd_4 * 4 + 7) % 7 + 1, (xd_4 * 3 + 7) % 9 + 1))
        if vector.dot(vector.cross(pf, (vector.cross(pg, ph))), pi) == vector.dot(pg * vector.dot(pf, ph) - ph * vector.dot(pf, pg), pi) + 3 then
            xd_1 = getgenv()
        else
            oc = getgenv()
        end
        xd_4 = (xd_4 + 1) % 8
    end
until (xd_4 * 7 + 4) % 8 == 7
if xd_1 then
    xd_1 = oc.__OUROBOROS_HUB.Library
end
if xd_1 then
    xd_4 = 1
    repeat
        local xN = bit32.rrotate(bit32.bxor(bit32.lrotate(xd_4, 17), string.byte(tostring(xd_4))), 25)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xN, 2422662955), 2757612918), (bit32.bxor(bit32.band(xN, 1872304340), 3130637054))), 2757612918), 3130637054) ~= xN then
            pcall(fn495)
            task.wait(0.15)
        else
            pcall(fn495)
            task.wait(0.15)
        end
        xd_4 = (xd_4 + 3) % 4
    until (xd_4 * 1 + 0) % 4 == 0
end
pcall(function()
    for i2, descendant in ipairs(game:GetService("CoreGui"):GetDescendants()) do
        local qh = descendant
        if qh.Name == "Obsidian" then
            pcall(function()
                qh:Destroy()
            end)
        end
    end
end)
xd_4 = oc.__ouroboros_gen or 0
__ouroboros_gen, oO, Workspace, UserInputService, VirtualUser, HttpService, LocalPlayer, ot, oo, oW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oc.__ouroboros_gen = xd_4 + 1
__ouroboros_gen = oc.__ouroboros_gen
oW = fn698
xd_1 = game:GetService("Players")
oO = game:GetService("ReplicatedStorage")
Workspace = game:GetService("Workspace")
pg = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = xd_1.LocalPlayer
ot = "[🌌] Unbox ASMR!"
oo = 112233638491976
pcall(fn100)
if ot == "" then
    ot = "[🌌] Unbox ASMR!"
end
oj, xd_1, ph, pi, pj = nil, nil, nil, nil, nil
xd_4 = 0
repeat
    if (pj and not xd_1 or (xd_4 or not ph)) and (oj or not pi or (not xd_1 or not pi)) and ((oj or not oj) and (not xd_1 and pj) or ph and not xd_1 and (xd_4 and pi)) and not ((pj and not xd_1 or (xd_4 or not ph)) and (oj or not pi or (not xd_1 or not pi)) and ((oj or not oj) and (not xd_1 and pj) or ph and not xd_1 and (xd_4 and pi))) then
        ph = {
            "Celestial",
            "Uncommon",
            "Common",
            "Epic",
            "Exotic",
            "Legendary",
            "Godly",
            "Rare",
            "Mythic",
            "Transcendant",
            "Divine"
        }
    else
        pj = {
            "Common",
            "Uncommon",
            "Rare",
            "Epic",
            "Legendary",
            "Mythic",
            "Divine",
            "Exotic",
            "Godly",
            "Celestial",
            "Transcendant"
        }
    end
    xd_4 = (xd_4 + 2) % 4
until (xd_4 * 3 + 0) % 4 == 2
pl, pm = pcall(require, oO:WaitForChild("CrateConfig"))
xd_4 = pl and pm
if xd_4 then
    oj = pm
    if oj.ByRarity then
        xd_4 = {}
        for k, v in pairs(oj.ByRarity) do
            table.insert(xd_4, k)
        end
        table.sort(xd_4)
        if #xd_4 > 0 then
            pj = xd_4
        end
    end
end
pl, pm = pcall(require, oO:WaitForChild("PlotExpansionConfig"))
pl = nil
xd_4 = 2
repeat
    xd_1 = { "cuphpkzmop", "uljnfoddre", "drj", "vrrh", "ialhyfzgsou", "syg", "fcrtc" }
    local xM = xd_4
    pm = xd_1[xM % 7 + 1]
    if pm:len() <= pm:reverse():rep(xM % 3 + 2):len() then
        pk_1, pl = pcall(require, oO:WaitForChild("ConveyorUpgradeConfig"))
    else
        oO, pk_2 = pcall(require, pl:WaitForChild("ConveyorUpgradeConfig"))
    end
    xd_4 = (xd_4 + 6) % 8
until (xd_4 * 7 + 6) % 8 == 6
xd_1, pk_3 = pcall(require, oO:WaitForChild("RebirthConfig"))
xd_1, pf = pcall(require, oO:WaitForChild("WorkerConfig"))
Library, ThemeManager, SaveManager, oB = nil, nil, nil, nil
oB = fn1048
xd_1, ph = pcall(fn51)
xd_4 = not Library
pf = not xd_1 or xd_4
if pf then
    xd_4 = 0
    repeat
        xd_1 = (vector.create((xd_4 * 1 + 3) % 11 + 1, (xd_4 * 8 + 12) % 13 + 1, (xd_4 * 12 + 4) % 17 + 1))
        pf = (vector.create((xd_4 * 3 + 9) % 11 + 1, (xd_4 * 8 + 13) % 13 + 1, (xd_4 * 2 + 6) % 17 + 1))
        local yy = vector.cross(xd_1, pf)
        local yz = vector.dot(xd_1, pf)
        if vector.dot(yy, yy) + yz * yz == vector.dot(xd_1, xd_1) * vector.dot(pf, pf) then
            warn("[Ouroboros] ObsidianUltra load failed: " .. tostring(ph))
        else
            warn("[Ouroboros] ObsidianUltra load failed: " .. tostring(ph))
        end
        xd_4 = (xd_4 + 2) % 4
    until (xd_4 * 1 + 3) % 4 == 1
    return
end
Options, Toggles, oy, ou, pq, pm, oq, on, Label, o2, pk_4, op, oi, oT, oM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn244)
Options = Library.Options
Toggles = Library.Toggles
oy = "https://discord.gg/ehKVq7pf7v"
ou = "https://rscripts.net/@Ouroboros"
if (o2 and oM and (not oi and not pm) and (oM and not oT and (oT or not pm)) or (not oM and o2 or (not o2 or not oM) or o2 and pq and (pq or oM))) and ((pq or oi or pq and pm) and (not pq or not pq or (oi or o2)) or oM and oi and (oM or not oM) and (not oT and oM or (not oT or not oi))) and not ((o2 and oM and (not oi and not pm) and (oM and not oT and (oT or not pm)) or (not oM and o2 or (not o2 or not oM) or o2 and pq and (pq or oM))) and ((pq or oi or pq and pm) and (not pq or not pq or (oi or o2)) or oM and oi and (oM or not oM) and (not oT and oM or (not oT or not oi)))) then
    oi = fn731
    pp_1 = fn177
    op = fn276
else
    op = fn731
    oi = fn177
    pp_1 = fn276
end
xd_1 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = oy, Copyable = true }, "|", ot },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
pcall(fn931)
oc.__OUROBOROS_HUB = { Library = Library, Window = xd_1, gen = __ouroboros_gen }
pq = {
    Info = xd_1:AddTab("Info", "info"),
    Farming = xd_1:AddTab("Farming", "tractor"),
    Inventory = xd_1:AddTab("Inventory", "package"),
    Rebirth = xd_1:AddTab("Rebirth", "refresh-cw"),
    Player = xd_1:AddTab("Player", "person-standing"),
    Settings = xd_1:AddTab("Settings", "settings")
}
if not oT and false and (not pk_4 and not o2) or not (not oT and false and (not pk_4 and not o2)) then
    oT = fn704
else
    oi = fn704
end
oM = fn1102
local pn = "#7fd47f"
pm = "#6ec1ff"
oq = "#e8a34d"
pl = "#8b93a3"
on = "Unknown"
pcall(fn264)
pi = pq.Info:AddLeftGroupbox("Account", "circle-user")
pi:AddLabel(oM("User", LocalPlayer.Name, pn), true)
pi:AddLabel(oM("Status", "Keyless", pn), true)
pi:AddLabel(oM("Executor", on, pn), true)
local GameInfoGroup = pq.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(oT(ot .. " [" .. tostring(game.PlaceId) .. "]", pm), true)
GameInfoGroup:AddLabel(oM("Place ID", tostring(game.PlaceId), pm), true)
Label = GameInfoGroup:AddLabel(oM("Session time", "0s", oq), true)
o2 = tostring(game.JobId)
local pk_5 = #o2 > 18
if pk_5 then
    xd_4 = 1
    repeat
        if (xd_4 * 2 + 3) * 16 % 3 == ((xd_4 * 2 + 3) * 16 + 5) % 3 then
            o2 = string.sub(pk_5, 1, 18) .. "..."
        else
            pk_5 = string.sub(o2, 1, 18) .. "..."
        end
        xd_4 = (xd_4 + 1) % 4
    until (xd_4 * 3 + 3) % 4 == 1
end
xd_4 = pk_5
local pZ = if xd_4 then 1 else 0
local pX = 1280 * pZ + 1565 * (1 - pZ)
local pY = 899 * pZ + 3088 * (1 - pZ)
if not ((pX * 2199 + pY * 870 + pX * pY) % 16777213 == 4747570) then
    xd_4 = o2
end
oR, og, od, pb, o9, o5, o3, o1, oC, oS, oF, of, ox, pJ, o6, oN, oe, oU, ow, pa = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local py = xd_4
GameInfoGroup:AddLabel(oM("Server", py, pl), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
oR = os.clock()
task.spawn(worker)
local ScriptsGroup = pq.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(oT("Included in this hub", pl), true)
ScriptsGroup:AddLabel(oT(ot, pm), true)
ph = pq.Info:AddRightGroupbox("Features", "list")
ph:AddLabel(oT("Auto Farming", pm), true)
ph:AddLabel(oT("Auto Inventory", oq), true)
ph:AddLabel(oT("Auto Rebirth", pn), true)
ph:AddLabel(oT("Player Movement", pl), true)
pf = pq.Info:AddRightGroupbox("Socials", "link")
pf:AddButton({ Text = "Discord", Func = oi })
pf:AddButton({ Text = "Rscripts", Func = onRscripts })
xd_1 = pq.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
xd_1:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
xd_1:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
xd_1:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
xd_1:AddButton({ Text = "Copy Discord Invite", Func = oi })
og = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
od = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
pb = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o9 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o5 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
o3 = "https://paypal.me/TheTruckerGOD"
o1 = "https://venmo.com/u/miserablemusic"
local pz = "#345d9d"
local px = "#f7931a"
local pw = "#627eea"
local pv = "#26a17b"
local pu = "#14f195"
local pt = "#0070ba"
local ps = "#008cff"
local DonationsGroup = pq.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(oT("All donations are optional but appreciated.", oq), true)
DonationsGroup:AddLabel(oT("If you donate you get a special role, just PING after you donate.", pn), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(oT("LTC / Litecoin", pz), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(oT("BTC / Bitcoin", px), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(oT("ETH / Ethereum", pw), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(oT("USDT", pv), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(oT("Solana", pu), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(oT("PayPal", pt), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(oT("Venmo", ps), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(oT("Don't have any of the listed currencies but still wanna donate?", pl), true)
DonationsGroup:AddLabel(oT("DM me and we'll work something out.", pm), true)
local FaqGroup = pq.Info:AddRightGroupbox("FAQ", "circle-help")
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
pq.Farming:SetSubTabAlignment("Center")
local pB = pq.Farming:AddSubTab("Spawning", "package-plus")
local pC = pq.Farming:AddSubTab("Placement", "map-pin")
local pD = pq.Farming:AddSubTab("Plots", "expand")
pq.Inventory:SetSubTabAlignment("Center")
local pE = pq.Inventory:AddSubTab("Purchasing", "shopping-cart")
local pF = pq.Inventory:AddSubTab("Upgrades", "arrow-up")
local pG = pq.Inventory:AddSubTab("Worker Assign", "user-plus")
pp_1(pB)
pp_1(pC)
pp_1(pD)
pp_1(pE)
pp_1(pF)
pp_1(pG)
pp_1(pq.Rebirth)
pp_1(pq.Player)
oS = fn267
oF = function(cb, cc, cd)
    pcall(function()
        local q1 = cd
        local q5 = if q1 then 1 else 0
        local q3 = 2643 * q5 + 2990 * (1 - q5)
        local q4 = 2947 * q5 + 2056 * (1 - q5)
        if not ((q3 * 3074 + q4 * 975 + q3 * q4) % 16777213 == 2009615) then
            q1 = 2
        end
        Library:Notify({ Title = cb, Description = cc, Time = q1 })
    end)
end
of = function()
    local q6 = oB()
    local q7 = q6.Rebirth_Request and q6.Rebirth_Request:IsA("RemoteFunction")
    if q7 then
        local q7_1 = pcall(function()
            return q6.Rebirth_Request:InvokeServer()
        end)
        return q7_1
    elseif q6.Rebirth_Request then
        return pcall(function()
            q6.Rebirth_Request:FireServer()
        end)
    else
        return false
    end
end
local function pO()
    local rd_4
    local rc = oB()
    if rc.ConveyorPress then
        local rd_1 = pcall(function()
            rc.ConveyorPress:FireServer()
        end)
        if rd_1 then
            return true
        end
        local rd_2 = oS()
        if rd_4 then
            local Conveyor = rd_2:FindFirstChild("Conveyor", true)
            local rd_3 = Conveyor and Conveyor:IsA("BasePart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if rd_3 then
                return false
            end
            return false
        end
        return false
    end
    rd_4 = oS()
    if rd_4 then
        local Conveyor = rd_4:FindFirstChild("Conveyor", true)
        local rd_5 = Conveyor and Conveyor:IsA("BasePart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if rd_5 then
            return false
        end
        return false
    end
    return false
end
if false or "#627eea" and (oC or not pJ) and ("#345d9d" or (pw or not oC)) or not (false or "#627eea" and (oC or not pJ) and ("#345d9d" or (pw or not oC))) then
    oC = {}
else
    of = {}
end
if (false and not ScriptsGroup or o5 and not ScriptsGroup) and "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" or (ScriptsGroup or false) and false and "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" and ((not ScriptsGroup or false) and false) and (false and ((ScriptsGroup or false) and 160)) or not ((false and not ScriptsGroup or o5 and not ScriptsGroup) and "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" or (ScriptsGroup or false) and false and "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" and ((not ScriptsGroup or false) and false) and (false and ((ScriptsGroup or false) and 160))) then
    ox = fn625
    pJ = function()
        local rx
        rx = nil
        local ry = oS()
        if not ry then
            return false
        end
        local ry_7 = ox()
        if #ry_7 == 0 then
            return false
        end
        table.sort(ry_7, function(c0, c1)
            return c0.price < c1.price
        end)
        rx = ry_7[1]
        local ry_8 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if ry_8 then
            local ry_9 = rx.model:GetPivot().Position + Vector3.new(0, 3, 0)
            if (ry_8.Position - ry_9).Magnitude > 12 then
                ry_8.CFrame = CFrame.new(ry_9)
                task.wait(0.25)
                if not oW() then
                    return false
                end
                local ry_10 = pcall(function()
                    fireproximityprompt(rx.prompt)
                end)
                return ry_10
            end
            local ry_11 = pcall(function()
                fireproximityprompt(rx.prompt)
            end)
            return ry_11
        end
        local ry_12 = pcall(function()
            fireproximityprompt(rx.prompt)
        end)
        return ry_12
    end
    pP = fn653
    pcall(fn464)
    pI = function()
        local rT = oB()
        if rT.BuyWorker then
            local rU = pcall(function()
                rT.BuyWorker:FireServer()
            end)
            if rU then
                return true
            end
            pcall(function()
                rT.BuyWorker:FireServer(1)
            end)
            return true
        end
        return false
    end
else
    pJ = fn625
    pI = function()
        local rx
        rx = nil
        local ry = oS()
        if not ry then
            return false
        end
        local ry_1 = ox()
        if #ry_1 == 0 then
            return false
        end
        table.sort(ry_1, function(c0, c1)
            return c0.price < c1.price
        end)
        rx = ry_1[1]
        local ry_2 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if ry_2 then
            local ry_3 = rx.model:GetPivot().Position + Vector3.new(0, 3, 0)
            if (ry_2.Position - ry_3).Magnitude > 12 then
                ry_2.CFrame = CFrame.new(ry_3)
                task.wait(0.25)
                if not oW() then
                    return false
                end
                local ry_4 = pcall(function()
                    fireproximityprompt(rx.prompt)
                end)
                return ry_4
            end
            local ry_5 = pcall(function()
                fireproximityprompt(rx.prompt)
            end)
            return ry_5
        end
        local ry_6 = pcall(function()
            fireproximityprompt(rx.prompt)
        end)
        return ry_6
    end
    ox = fn653
    pcall(fn464)
    pP = function()
        local rT = oB()
        if rT.BuyWorker then
            local rU = pcall(function()
                rT.BuyWorker:FireServer()
            end)
            if rU then
                return true
            end
            pcall(function()
                rT.BuyWorker:FireServer(1)
            end)
            return true
        end
        return false
    end
end
o6 = fn947
oN = fn429
local function pN()
    local sB
    local sA = oB()
    if not sA.RequestPlaceASMR then
        return false
    end
    local sC = oS()
    if not sC then
        return false
    end
    local sC_1 = o6()
    if not sC_1 then
        return false
    end
    local Character = LocalPlayer.Character
    local sE = Character and Character:FindFirstChildOfClass("Humanoid")
    if sC_1.Parent == LocalPlayer.Backpack and sE then
        sE:EquipTool(sC_1)
        task.wait(0.2)
        if not oW() then
            return false
        elseif sC_1.Parent ~= Character then
            return false
        else
            sB = oN()
            if not sB then
                return false
            end
            local sC_2 = pcall(function()
                sA.RequestPlaceASMR:FireServer(sB)
            end)
            return sC_2
        end
    elseif sC_1.Parent ~= Character then
        return false
    else
        sB = oN()
        if not sB then
            return false
        end
        local sC_3 = pcall(function()
            sA.RequestPlaceASMR:FireServer(sB)
        end)
        return sC_3
    end
end
oe = fn318
oU = fn297
local function pL()
    local sZ
    local s_ = oB()
    if not s_.RequestPlaceCrate then
        return false
    end
    local s0 = oe()
    if not s0 then
        return false
    end
    local Character = LocalPlayer.Character
    local s2 = Character and Character:FindFirstChildOfClass("Humanoid")
    if s0.Parent == LocalPlayer.Backpack and s2 then
        s2:EquipTool(s0)
        task.wait(0.2)
        if not oW() then
            return false
        elseif s0.Parent ~= Character then
            return false
        else
            sZ = oU()
            if not sZ then
                return false
            end
            local s0_1 = pcall(function()
                s_.RequestPlaceCrate:FireServer(sZ)
            end)
            return s0_1
        end
    elseif s0.Parent ~= Character then
        return false
    else
        sZ = oU()
        if not sZ then
            return false
        end
        local s0_2 = pcall(function()
            s_.RequestPlaceCrate:FireServer(sZ)
        end)
        return s0_2
    end
end
local function pH()
    local s6 = oS()
    if not s6 then
        return false
    end
    local PlacedCrates = s6:FindFirstChild("PlacedCrates")
    if not PlacedCrates then
        return false
    end
    for i, child in ipairs(PlacedCrates:GetChildren()) do
        local s6_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if s6_1 then
            if not (child:GetAttribute("Ready") ~= true) then
                local s6_2 = child:FindFirstChild("Main", true) and child.Main:FindFirstChild("OpenCratePrompt")
                local s5 = s6_2 or child:FindFirstChild("OpenCratePrompt", true)
                local s6_3 = s5 and s5:IsA("ProximityPrompt") and s5.Enabled
                if not not s6_3 then
                    if not (s5.ActionText ~= "Open") then
                        local s6_4 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local s7_1 = s6_4
                        if s6_4 then
                            s6_4 = (s7_1.Position - child:GetPivot().Position).Magnitude > 12
                        end
                        if s6_4 then
                            s7_1.CFrame = CFrame.new(child:GetPivot().Position + Vector3.new(0, 3, 0))
                            task.wait(0.15)
                            if not oW() then
                                return true
                            end
                        end
                        local s6_5 = pcall(function()
                            fireproximityprompt(s5)
                        end)
                        if s6_5 then
                            return true
                        end
                    end
                end
            end
        end
    end
    return false
end
ow = fn736
pa = fn819
local function pM()
    local tI
    local tG
    local tH
    tG = nil
    tH = nil
    tI = nil
    local tJ = oS()
    local tJ_5
    if not tJ then
        return false
    end
    local tJ_1 = LocalPlayer:GetAttribute("UnassignedWorkers") or 0
    if tJ_1 <= 0 then
        return false
    end
    tI = ow()
    if not tI then
        return false
    end
    tG = pa()
    if not tG then
        return false
    end
    local Character = LocalPlayer.Character
    local tK_1 = Character and Character:FindFirstChildOfClass("Humanoid")
    if tG.Parent == LocalPlayer.Backpack and tK_1 then
        tK_1:EquipTool(tG)
        task.wait(0.2)
        if not oW() then
            return false
        end
        tH = oB()
        if not tH.AssignWorker then
            return false
        end
        local tJ_4 = pcall(function()
            tH.AssignWorker:FireServer(tI, tG)
        end)
        if not tJ_5 then
            pcall(function()
                tH.AssignWorker:FireServer(tI)
            end)
        end
        return tJ_4
    end
    tH = oB()
    if not tH.AssignWorker then
        return false
    end
    tJ_5 = pcall(function()
        tH.AssignWorker:FireServer(tI, tG)
    end)
    if not tJ_5 then
        pcall(function()
            tH.AssignWorker:FireServer(tI)
        end)
    end
    return tJ_5
end
local function pQ()
    local tU
    local tT
    tT = nil
    tU = nil
    local tS
    tU = oB()
    if not tU.RequestUpgrade then
        return false
    end
    local tV = oS()
    if not tV then
        return false
    end
    local ASMR = tV:FindFirstChild("ASMR")
    if not ASMR then
        return false
    end
    tS = "Cheapest First"
    pcall(function()
        tS = Options.ASMRUpgradeMode and Options.ASMRUpgradeMode.Value or "Cheapest First"
    end)
    local tV_1 = {}
    for i, child in ipairs(ASMR:GetChildren()) do
        local tW_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId and child:GetAttribute("NoUpgrades") ~= true
        if tW_1 then
            local tW_2 = child:GetAttribute("ASMRLevel") or 1
            local tW_3 = child:GetAttribute("ASMRMaxLevel") or 100
            if tW_2 < tW_3 then
                local tW_4 = child:GetAttribute("ASMRBaseUpgradeCost") or 0
                table.insert(tV_1, { model = child, lvl = tW_2, cost = tW_4 })
            end
        end
    end
    if #tV_1 == 0 then
        return false
    end
    if tS == "Cheapest First" then
        table.sort(tV_1, function(fY, fZ)
            return fY.cost < fZ.cost
        end)
    elseif tS == "Highest Level First" then
        table.sort(tV_1, function(fW, fX)
            return fW.lvl > fX.lvl
        end)
    end
    if tS == "All" then
        local tW_5 = 0
        for i, v in ipairs(tV_1) do
            local ua = v
            if not oW() then
                break
            end
            local tX_2 = pcall(function()
                tU.RequestUpgrade:FireServer(ua.model)
            end)
            if tX_2 then
                tW_5 += 1
            end
            task.wait(0.15)
            if tW_5 >= 3 then
                break
            end
        end
        return tW_5 > 0
    end
    tT = tV_1[1]
    local tV_2 = pcall(function()
        tU.RequestUpgrade:FireServer(tT.model)
    end)
    return tV_2
end
local function pK()
    local ub = oS()
    if not ub then
        return false
    end
    local uc = false
    for i, descendant in ipairs(ub:GetDescendants()) do
        local ul = descendant
        local ub_1 = ul:IsA("ProximityPrompt") and ul.Name == "ExpansionPurchasePrompt"
        if ub_1 then
            local attr = ul:GetAttribute("OwnerUserId")
            if not (attr and attr ~= LocalPlayer.UserId) then
                if not not ul.Enabled then
                    local Parent = ul.Parent
                    local ud_1 = Parent and Parent:IsA("BasePart")
                    if ud_1 then
                        local ud_2 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local ue = ud_2
                        if ud_2 then
                            ud_2 = (ue.Position - Parent.Position).Magnitude > 10
                        end
                        if ud_2 then
                            ue.CFrame = CFrame.new(Parent.Position + Vector3.new(0, 3, 2))
                            task.wait(0.3)
                            if not oW() then
                                return true
                            end
                        end
                    end
                    local ub_4 = pcall(function()
                        fireproximityprompt(ul)
                    end)
                    if ub_4 then
                        uc = true
                        break
                    end
                end
            end
        end
    end
    return uc
end
local ConveyorSpawningGroup = pB:AddLeftGroupbox("Conveyor Spawning", "factory")
ConveyorSpawningGroup:AddToggle("AutoSpawnCrate", { Text = "Auto Spawn Crate", Default = false })
ConveyorSpawningGroup:AddSlider("AutoSpawnCrateInterval", { Text = "Spawn Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ConveyorSpawningGroup:AddToggle("AutoPlaceCrates", { Text = "Auto Place Crates", Default = false })
ConveyorSpawningGroup:AddSlider("AutoPlaceCratesInterval", { Text = "Place Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local CrateOpeningGroup = pB:AddRightGroupbox("Crate Opening", "unlock")
CrateOpeningGroup:AddToggle("AutoOpenCrates", { Text = "Auto Open Crates", Default = false })
CrateOpeningGroup:AddSlider("AutoOpenCratesInterval", { Text = "Open Interval", Default = 0.8, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
xd_1 = pC:AddLeftGroupbox("ASMR Placement", "map-pin")
xd_1:AddToggle("AutoPlaceASMR", { Text = "Auto Place ASMR", Default = false })
xd_1:AddSlider("AutoPlaceASMRInterval", { Text = "Place Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ph = pD:AddLeftGroupbox("Plot Expansion", "expand")
ph:AddToggle("AutoExpandPlots", { Text = "Auto Expand Plots", Default = false })
ph:AddSlider("AutoExpandPlotsInterval", { Text = "Expand Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
pi = pE:AddLeftGroupbox("Crate Purchasing", "shopping-cart")
pi:AddToggle("AutoBuyCrate", { Text = "Auto Buy Crate", Default = false })
pi:AddSlider("AutoBuyCrateInterval", { Text = "Buy Interval", Default = 1.2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
pi:AddDropdown("CrateRarityFilter", { Text = "Rarity Filter", Values = pj, Default = 1, Multi = true, Searchable = true })
pcall(fn250)
xd_4 = pE:AddRightGroupbox("Workers", "users")
xd_4:AddToggle("AutoBuyWorkers", { Text = "Auto Buy Workers", Default = false })
xd_4:AddSlider("AutoBuyWorkersInterval", { Text = "Buy Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ph = pF:AddLeftGroupbox("Conveyor Upgrades", "arrow-up")
ph:AddToggle("AutoUpgradeConveyor", { Text = "Auto Upgrade Conveyor", Default = false })
ph:AddSlider("AutoUpgradeConveyorInterval", { Text = "Upgrade Interval", Default = 2.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ph:AddButton({ Text = "Close Stuck Conveyor Menu", Func = onCloseStuckConveyorMenu })
local AsmrLevelsGroup = pF:AddRightGroupbox("ASMR Levels", "trending-up")
AsmrLevelsGroup:AddToggle("AutoUpgradeASMR", { Text = "Auto Upgrade ASMR Level", Default = false })
AsmrLevelsGroup:AddSlider("AutoUpgradeASMRInterval", { Text = "Upgrade Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
AsmrLevelsGroup:AddDropdown("ASMRUpgradeMode", { Text = "Mode", Values = { "Cheapest First", "Highest Level First", "All" }, Default = 1 })
xd_1 = pG:AddLeftGroupbox("Worker Assignment", "user-plus")
xd_1:AddToggle("AutoAssignWorkers", { Text = "Auto Place Workers onto ASMR", Default = false })
xd_1:AddSlider("AutoAssignWorkersInterval", { Text = "Assign Interval", Default = 1.2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ph = pq.Rebirth:AddRightGroupbox("Rebirth", "refresh-cw")
ph:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ph:AddSlider("AutoRebirthInterval", { Text = "Rebirth Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
CurrentCamera, oP, oL, connection, connection2, oZ, oQ, oh, oz, oJ, om, pc, oH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pl = pq.Player:AddRightGroupbox("Movement", "footprints")
pl:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
pl:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
pl:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
pl:AddToggle("NoClip", { Text = "NoClip", Default = false })
pl:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = pq.Player:AddLeftGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
oZ = fn694
oQ = fn304
pg.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
pg.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn939)
Toggles.WalkSpeedEnabled:OnChanged(fn953)
oh = function(hA)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not hA)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hA
        end
    end)
    if not hA then
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
Toggles.AntiGameplayPause:OnChanged(fn1068)
task.spawn(antiGameplayPauseLoop)
pj = pq.Settings:AddLeftGroupbox("Menu", "wrench")
oP = tick()
oL = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local vo = v
        pcall(function()
            vo:Disable()
        end)
    end
end)
oz = fn239
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
pj:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
pj:AddButton("Unload", onUnload)
pj:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/UnboxASMR")
SaveManager:SetSubFolder("112233638491976")
pi = SaveManager:BuildConfigSection(pq.Settings)
ThemeManager:ApplyToTab(pq.Settings)
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:LoadDefault()
oJ = fn185
om = fn663
pc = fn370
oH = function(iG)
    local vX
    vX = nil
    local vY = type(iG) ~= "table" or type(iG.idx) ~= "string" or type(iG.type) ~= "string" or SaveManager.Ignore[iG.idx]
    if vY then
        return false
    end
    vX = oJ(iG.type, iG.idx)
    if not vX then
        return false
    end
    local vY_1 = pcall(function()
        if iG.type == "Input" then
            if type(iG.text) ~= "string" then
                return
            end
            vX:SetValue(iG.text)
        elseif iG.type == "ColorPicker" then
            vX:SetValueRGB(Color3.fromHex(iG.value), iG.transparency)
        elseif iG.type == "KeyPicker" then
            vX:SetValue({ iG.key, iG.mode, iG.modifiers })
            if iG.mode == "Toggle" and iG.toggled ~= nil then
                vX.Toggled = iG.toggled
                vX:Update()
            end
        else
            vX:SetValue(iG.value)
        end
    end)
    return vY_1
end
pi:AddDivider()
pi:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
pi:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
pi:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
pcall(fn811)
xd_1 = function(i9, ja, jb)
    task.spawn(function()
        local wq, wr
        pcall(function()
            setthreadidentity(8)
        end)
        local wu = false
        repeat
            local wo, wp
            local wt = 24
            while true do
                if wt < 12 then
                    if wt < 6 then
                        if wt < 3 then
                            if wt < 1 then
                                wt = 5
                            elseif wt < 2 then
                                wr = Library.Unloaded
                                wt = 13
                            else
                                wt = if Library.Unloaded then 3 else 12
                            end
                        elseif wt < 4 then
                            wt = 14
                        elseif wt < 5 then
                            wp = wq(wr, 0.1, 10)
                            pcall(jb)
                            wq = 0
                            wt = 23
                        else
                            break
                        end
                    elseif wt < 9 then
                        if wt < 7 then
                            wt = 22
                        elseif wt < 8 then
                            wt = 16
                        else
                            task.wait(0.2)
                            wt = 18
                        end
                    elseif wt < 10 then
                        wt = 0
                    elseif wt < 11 then
                        wt = 16
                    else
                        wt = 14
                    end
                elseif wt < 18 then
                    if wt < 15 then
                        if wt < 13 then
                            wo = false
                            pcall(function()
                                wo = Toggles[i9] and Toggles[i9].Value
                            end)
                            wt = if wo then 21 else 8
                        elseif wt < 14 then
                            wt = if wr then 7 else 6
                        else
                            wu = true
                            wt = 5
                        end
                    elseif wt < 16 then
                        task.wait(math.min(0.2, wp - wq))
                        wq += 0.2
                        wr = not oW()
                        wt = if wr then 13 else 1
                    elseif wt < 17 then
                        wt = 18
                    else
                        wt = if wq < wp then 15 else 10
                    end
                elseif wt < 21 then
                    if wt < 19 then
                        wt = if not oW() then 20 else 9
                    elseif wt < 20 then
                        wr = 1
                        wt = 4
                    else
                        wt = 14
                    end
                elseif wt < 23 then
                    if wt < 22 then
                        wp = 1
                        pcall(function()
                            wp = Options[ja] and Options[ja].Value or 1
                        end)
                        wq = math.clamp
                        wr = (tonumber(wp))
                        wt = if wr then 4 else 19
                    else
                        wt = 23
                    end
                elseif wt < 24 then
                    wt = 17
                else
                    wt = if oW() then 2 else 11
                end
            end
        until wu
    end)
end
xd_1("AutoSpawnCrate", "AutoSpawnCrateInterval", pO)
xd_1("AutoBuyCrate", "AutoBuyCrateInterval", pJ)
xd_1("AutoPlaceCrates", "AutoPlaceCratesInterval", pL)
xd_1("AutoOpenCrates", "AutoOpenCratesInterval", pH)
xd_1("AutoUpgradeConveyor", "AutoUpgradeConveyorInterval", pP)
xd_1("AutoBuyWorkers", "AutoBuyWorkersInterval", pI)
xd_1("AutoAssignWorkers", "AutoAssignWorkersInterval", pM)
xd_1("AutoUpgradeASMR", "AutoUpgradeASMRInterval", pQ)
xd_1("AutoPlaceASMR", "AutoPlaceASMRInterval", pN)
xd_1("AutoExpandPlots", "AutoExpandPlotsInterval", pK)
task.spawn(function()
    pcall(function()
        setthreadidentity(8)
    end)
    local wH = false
    repeat
        local wD
        if oW() then
            task.wait(1)
            local wE = Library.Unloaded or not oW()
            if wE then
                wH = true
            else
                wD = false
                pcall(function()
                    wD = Toggles.AutoUpgradeConveyor and Toggles.AutoUpgradeConveyor.Value
                end)
                if not wD then
                    pcall(function()
                        local ChangeConveyorGui = LocalPlayer.PlayerGui:FindFirstChild("ChangeConveyorGui")
                        if ChangeConveyorGui and ChangeConveyorGui.Enabled then
                            ChangeConveyorGui.Enabled = false
                        end
                    end)
                end
            end
        else
            wH = true
        end
    until wH
end)
task.spawn(function()
    local wS, wT
    pcall(function()
        setthreadidentity(8)
    end)
    local wW = false
    repeat
        local wP, wQ, wR
        local wV = 14
        while true do
            if wV < 11 then
                if wV < 5 then
                    if wV < 2 then
                        if wV < 1 then
                            wV = 4
                        else
                            wV = 2
                        end
                    elseif wV < 3 then
                        wV = 16
                    elseif wV < 4 then
                        wP = false
                        pcall(function()
                            wP = Toggles.AutoRebirth and Toggles.AutoRebirth.Value
                        end)
                        wV = if wP then 6 else 11
                    else
                        wV = 13
                    end
                elseif wV < 8 then
                    if wV < 6 then
                        wV = 8
                    elseif wV < 7 then
                        wQ = 2
                        pcall(function()
                            wQ = Options.AutoRebirthInterval and Options.AutoRebirthInterval.Value or 2
                        end)
                        wS = math.clamp
                        wT = (tonumber(wQ))
                        wV = if wT then 9 else 10
                    else
                        task.wait(0.2)
                        wS += 0.2
                        wT = not oW()
                        wV = if wT then 18 else 19
                    end
                elseif wV < 9 then
                    wW = true
                    wV = 15
                elseif wV < 10 then
                    wQ = wS(wT, 0.1, 10)
                    wR = false
                    pcall(function()
                        local wN = oB()
                        if wN.Rebirth_GetState then
                            wR = wN.Rebirth_GetState:InvokeServer()
                        end
                    end)
                    pcall(of)
                    wS = 0
                    wV = 2
                else
                    wT = 2
                    wV = 9
                end
            elseif wV < 17 then
                if wV < 14 then
                    if wV < 12 then
                        task.wait(0.2)
                        wV = 13
                    elseif wV < 13 then
                        wV = if Library.Unloaded then 17 else 3
                    else
                        wV = 21
                    end
                elseif wV < 15 then
                    wV = if oW() then 12 else 5
                elseif wV < 16 then
                    break
                else
                    wV = if wS < wQ then 7 else 0
                end
            elseif wV < 20 then
                if wV < 18 then
                    wV = 8
                elseif wV < 19 then
                    wV = if wT then 20 else 22
                else
                    wT = Library.Unloaded
                    wV = 18
                end
            elseif wV < 21 then
                wV = 4
            elseif wV < 22 then
                wV = 15
            else
                wV = 1
            end
        end
    until wW
end)
pcall(function()
    local wX
    wX = nil
    local wY = getgenv()
    if wY.__OUROBOROS_QUEUE_SET then
        return
    end
    local wZ = (rawget(wY, "queue_on_teleport"))
    local w7 = if wZ then 1 else 0
    local w5 = 4001 * w7 + 3688 * (1 - w7)
    local w6 = 111 * w7 + 1038 * (1 - w7)
    if not ((w5 * 2511 + w6 * 426 + w5 * w6) % 16777213 == 10537908) then
        wZ = rawget(wY, "queueonteleport")
    end
    if not wZ then
        wZ = rawget(wY, "queue_on_tp")
    end
    local w_ = wZ
    if not w_ then
        return
    end
    wX = nil
    local wZ_1 = rawget(wY, "readfile") and rawget(wY, "isfile") and isfile("Unbox ASMR.luau")
    if wZ_1 then
        wX = readfile("Unbox ASMR.luau")
    end
    if not wX or wX == "" then
        wX = "-- Ouroboros Hub fallback"
    end
    pcall(function()
        writefile("Unbox ASMR.luau", wX)
    end)
    w_("loadstring(readfile('Unbox ASMR.luau'))()")
    wY.__OUROBOROS_QUEUE_SET = true
end)
Library:OnUnload(fn66)
oF("Ouroboros", "Loaded for " .. ot, 3)
