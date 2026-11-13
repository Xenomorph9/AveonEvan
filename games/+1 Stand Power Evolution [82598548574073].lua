local sF_2, sF_3
local Library
local lv
local UserInputService
local lc
local lU
local Rebirth
local mi
local l_
local k_
local ClaimPowerGain
local lo
local Rebirth2
local StopTrainingDummy
local lN
local lu
local mb
local lb
local lT
local lA
local mh
local lh
local lZ
local lG
local ln
local HttpService
local lM
local lS
local lz
local Auras
local lY
local lF
local Workspace
local k3
local lL
local ls
local Partners
local k9
local lR
local mf
local lf
local connection2
local CurrentCamera
local ll
local k2
local SaveManager
local lr
local l8
local k8
local lQ
local lx
local connection
local Label
local lD
local Trails
local l1
local GetAllData
local lq
local VirtualUser
local k7
local lP
local ld
local lV
local Options
local mj
local lj
local l0
local k0
local Toggles
local k6
local function worker2()
    while not Library.Unloaded do
        if lU("AutoClick") then
            k3()
            task.wait(0.35)
        else
            task.wait(0.2)
        end
    end
end
local function fn77()
    if not Toggles.WalkSpeedEnabled.Value then
        local r2 = ln()
        if r2 then
            r2.WalkSpeed = 16
        end
    end
end
local function fn101(ab, ac, ad)
    return string.format("<b>%s</b> %s %s", ab, lc("-", "#5a6070"), lc(ac, ad))
end
local function fn106(aC)
    local Character = lZ.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(aC)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = aC
        end
    end
end
local function fn119()
    local n1_1
    local n0 = lD("WinPlateChoice")
    if n0 == "Win" or n0 == "2xWins" or n0 == "10xWins" then
        n1_1 = n0
    else
        n1_1 = "Win"
    end
    local n0_1 = lr(n1_1)
    if #n0_1 == 0 then
        return nil
    end
    table.sort(n0_1, function(bC, bD)
        return bC.Value > bD.Value
    end)
    return n0_1[1]
end
local function fn125(ak)
    local m_ = Toggles[ak]
    return m_ ~= nil and m_.Value == true
end
local function fn135(d8, d9)
    local pX_1
    local pW_1
    if type(Partners.GetWinCost) == "function" then
        pW_1, pX_1 = pcall(Partners.GetWinCost, d8, d9)
        if pW_1 then
            return tonumber(pX_1)
        end
        return nil
    end
    return nil
end
local function fn169()
    local Character = lZ.Character
    local m6 = Character and Character:FindFirstChildOfClass("Humanoid")
    return m6
end
local function fn171(aJ)
    local ni_1
    local nh = not aJ
    local nh_1
    if nh ~= false then
        nh = l0
    end
    if nh then
        nh = os.clock() - lY < 0.75
    end
    if nh then
        return l0
    end
    nh_1, ni_1 = pcall(function()
        return GetAllData:InvokeServer()
    end)
    local nj = nh_1 and type(ni_1) == "table"
    if nj then
        l0 = ni_1
        lY = os.clock()
        return ni_1
    end
    return l0
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = lZ.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local r5_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if r5_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local sp = tick() - lu
            local sq = tick() - lq
            if sp >= 300 and sq >= 60 then
                pcall(k7)
            else
                if sp < 300 and sq >= 300 then
                    pcall(k7)
                end
            end
        end
    end
end
local function onInputChanged(g_)
    local UserInputType = g_.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lu = tick()
    end
end
local function onRenderStepped(hz)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local sf_1 = ln()
        if sf_1 then
            sf_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local sf_3 = k8()
        local sg = ln()
        if sf_3 and sg then
            sg.PlatformStand = true
            local sg_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                sg_1 = sg_1 + CurrentCamera.CFrame.LookVector
            end
            local sl = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if sl == 1 then
                sg_1 = sg_1 - CurrentCamera.CFrame.LookVector
            end
            local sl_1 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if sl_1 == 1 then
                sg_1 = sg_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                sg_1 = sg_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                sg_1 = sg_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                sg_1 = sg_1 - Vector3.new(0, 1, 0)
            end
            sf_3.Velocity = Vector3.zero
            if sg_1.Magnitude > 0 then
                sf_3.CFrame = sf_3.CFrame + sg_1.Unit * Options.FlySpeed.Value * hz
            end
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local sd_1 = ln()
        if sd_1 then
            sd_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn253(aY)
    for i, descendant in ipairs(aY:GetDescendants()) do
        if descendant:IsA("TextLabel") then
            local Text = descendant.Text
            local nq = type(Text) == "string" and Text ~= "" and not string.find(Text, "Double", 1, true)
            if nq then
                local nq_1 = lo(Text)
                if nq_1 then
                    return Text, nq_1
                end
            end
        end
    end
    return nil, nil
end
local function fn265()
    pcall(function()
        ClaimPowerGain:FireServer()
    end)
end
local function worker4()
    while not Library.Unloaded do
        if lU("AutoTrain") then
            ld()
            task.wait(1.5)
        else
            if lf then
                lv()
            end
            task.wait(0.35)
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        if lU("AutoWinPlates") then
            ls()
        else
            task.wait(0.35)
        end
    end
end
local function fn329(fY, fZ)
    local qP = fY == "Toggle" and Toggles
    local qU = if qP then 1 else 0
    local qS = 2664 * qU + 1310 * (1 - qU)
    local qT = 919 * qU + 1901 * (1 - qU)
    if not ((qS * 2350 + qT * 3853 + qS * qT) % 16777213 == 12249523) then
        qP = Options
    end
    local qP_1 = qP[fZ]
    local qO_2 = type(qP_1) == "table" and qP_1.Type == fY
    return qO_2 and qP_1 or nil
end
local function fn332()
    local n6 = lQ()
    if not n6 then
        return
    end
    local n7 = k8()
    if not n7 then
        return
    end
    mh(CFrame.new(0, 200, 0))
    task.wait(0.35)
    mh(n6.Part.CFrame + Vector3.new(0, 4, 0))
    task.wait(1.1)
end
local function onImportConfigFromClipboardTex()
    local rr_1
    local rp = Options.SaveManager_ImportSource.Value or ""
    local rp_1
    local rq = tostring(rp):match("^%s*(.-)%s*$")
    if rq == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    rp_1, rr_1 = pcall(HttpService.JSONDecode, HttpService, rq)
    local rq_1 = not rp_1 or type(rr_1) ~= "table" or type(rr_1.objects) ~= "table"
    if rq_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local rp_2 = 0
    for i, v in ipairs(rr_1.objects) do
        if lG(v) then
            rp_2 += 1
        end
    end
    if rp_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local rr_2 = rp_2 == 1 and ""
    local rE = if rr_2 then 1 else 0
    local rC = 800 * rE + 2094 * (1 - rE)
    local rD = 312 * rE + 428 * (1 - rE)
    if not ((rC * 179 + rD * 2971 + rC * rD) % 16777213 == 1319752) then
        rr_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(rp_2, rr_2), 6)
end
local function fn373(bW, bX)
    local oe = bW and bW.Trails
    local oe_1 = type(oe) == "table" and oe[bX] == true
    return oe_1
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            lT(true)
        end
    end
end
local function fn411(c2)
    local pd = -1
    local Name
    for i, v in ipairs(Auras) do
        local pf = type(v) == "table" and type(v.Name) == "string" and lz(c2, v.Name)
        if pf then
            local pf_1 = tonumber(v.Multiplier) or 0
            if pf_1 > pd then
                pd = pf_1
                Name = v.Name
            end
        end
    end
    return Name
end
local function fn419(f5, f6)
    local Type = f6.Type
    if Type == "Toggle" then
        return { idx = f5, type = "Toggle", value = f6.Value == true }
    elseif Type == "Slider" then
        return { idx = f5, type = "Slider", value = tostring(f6.Value) }
    elseif Type == "Dropdown" then
        return { idx = f5, type = "Dropdown", multi = f6.Multi == true, value = f6.Value }
    elseif Type == "Input" then
        local qW = f6.Value or ""
        return { idx = f5, type = "Input", text = tostring(qW) }
    elseif Type == "ColorPicker" then
        return { idx = f5, type = "ColorPicker", value = f6.Value:ToHex(), transparency = f6.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = f5,
            type = "KeyPicker",
            mode = f6.Mode,
            key = f6.Value,
            modifiers = f6.Modifiers,
            toggled = f6.Toggled
        }
    else
        return nil
    end
end
local function worker5()
    while not Library.Unloaded do
        if lU("AutoRebirth") then
            mj()
        end
        task.wait(1)
    end
end
local function fn425()
    local nB = {}
    local Wins = Workspace:FindFirstChild("Wins")
    if Wins then
        nB[1] = Wins
    end
    local World2 = Workspace:FindFirstChild("World2")
    local nD = World2 and World2:FindFirstChild("Wins")
    if nD then
        nB[#nB + 1] = nD
    end
    return nB
end
local function fn431()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lq = tick()
end
local function onUnload()
    Library:Unload()
end
local function fn467()
    local qE_1
    local qD_1
    if identifyexecutor then
        qE_1, qD_1 = identifyexecutor()
        local qF = qE_1 ~= ""
        local qG = type(qE_1) == "string" and qF
        if qG then
            local qF_1 = type(qD_1) == "string" and qD_1 ~= "" and qE_1 .. " " .. qD_1
            mi = qF_1 or qE_1
        end
    end
end
local function fn472()
    local p8 = {}
    local TrainingDummies = Workspace:FindFirstChild("TrainingDummies")
    if TrainingDummies then
        p8[1] = TrainingDummies
    end
    local World2 = Workspace:FindFirstChild("World2")
    local qa = World2 and World2:FindFirstChild("TrainingDummies")
    if qa then
        p8[#p8 + 1] = qa
    end
    return p8
end
local function onCopyJoinScript_JobID()
    local fz = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lP)
    lA(fz, "Copied join script to clipboard")
end
local function fn531()
    if not Toggles.AutoTrain.Value then
        lv()
    end
end
local function fn537(fi)
    local DiscordGroup = fi:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ll })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ll })
end
local function onExportConfigToClipboard()
    local rm_1
    local rl_1
    rl_1, rm_1 = pcall(HttpService.JSONEncode, HttpService, k0())
    if not rl_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local rl_2 = setclipboard or toclipboard
    local rl_3 = type(rl_2) ~= "function" or not pcall(rl_2, rm_1)
    if rl_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn564(ap)
    local m2 = Options[ap]
    return m2 and m2.Value or nil
end
local function fn566()
    local n9 = lV(true)
    if not n9 then
        return
    end
    local oc = Rebirth2.Levels[(n9.Rebirth or 0) + 1]
    if not oc then
        return
    end
    if (n9.Level or 1) < (oc.Requirement or 0) then
        return
    end
    pcall(function()
        Rebirth:InvokeServer()
    end)
    l0 = nil
end
local function onInputBegan()
    lu = tick()
end
local function fn610(b1, b2)
    local oh = b1 and b1.Auras
    local oh_1 = type(oh) == "table" and oh[b2] == true
    return oh_1
end
local function fn617(R, S)
    if setclipboard then
        setclipboard(R)
    elseif toclipboard then
        toclipboard(R)
    end
    Library:Notify(S)
end
local function fn636()
    lv()
    lT(false)
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    print("Unloaded!")
end
local function fn672(aT)
    local nm_1
    local nl_1
    if type(aT) ~= "string" then
        return nil
    end
    nl_1, nm_1 = string.match(aT, "^([%d%.]+)%s*([KMB]?)%s*Wins?$")
    if not nl_1 then
        return nil
    end
    local nn = tonumber(nl_1)
    if not nn then
        return nil
    end
    if nm_1 == "K" then
        nn = nn * 1000
    elseif nm_1 == "M" then
        nn = nn * 1000000
    elseif nm_1 == "B" then
        nn = nn * 1000000000
    end
    return nn
end
local function onRscripts()
    lA(lN, "Copied Rscripts profile to clipboard")
end
local function fn717()
    if not lf then
        return
    end
    lf = false
    lb = nil
    pcall(function()
        StopTrainingDummy:FireServer()
    end)
end
local function fn727(a5)
    local Baseplate = a5:FindFirstChild("Baseplate")
    local nz = Baseplate and Baseplate:IsA("BasePart")
    if nz then
        return Baseplate
    end
    return a5:FindFirstChildWhichIsA("BasePart", true)
end
local function fn738(eE)
    local qc = -1
    local qd
    for i, v in ipairs(k6()) do
        for i, descendant in ipairs(v:GetDescendants()) do
            local qe = descendant:IsA("Model") and descendant.Name == "Training Dummy" and descendant:GetAttribute("Gamepass") ~= true
            if qe then
                local attr = descendant:GetAttribute("Rebirth")
                local qf = typeof(attr) == "number" and attr <= eE and attr >= qc
                if qf then
                    qc = attr
                    qd = descendant
                end
            end
        end
    end
    return qd
end
local function fn741(cT)
    local o_ = -1
    local Name
    for i, v in ipairs(Trails) do
        local o1 = type(v) == "table" and type(v.Name) == "string" and lS(cT, v.Name)
        if o1 then
            local o1_1 = tonumber(v.Multiplier) or 0
            if o1_1 > o_ then
                o_ = o1_1
                Name = v.Name
            end
        end
    end
    return Name
end
local function fn742()
    if not Toggles.Fly.Value then
        local r0 = ln()
        if r0 then
            r0.PlatformStand = false
        end
    end
end
local function fn746(bg)
    local nK_2
    local nI = {}
    for i, v in ipairs(lM()) do
        for i, child in ipairs(v:GetChildren()) do
            local nJ = (child:IsA("Model"))
            local nJ_2
            if nJ then
                nJ = not bg or child.Name == bg
            end
            if nJ then
                if child.Name == "Win" or child.Name == "2xWins" or child.Name == "10xWins" then
                    nK_2, nJ_2 = k2(child)
                    local nL = l1(child)
                    if nK_2 and nJ_2 and nL then
                        nI[#nI + 1] = { Model = child, Part = nL, Name = child.Name, Label = nK_2, Value = nJ_2 }
                    end
                end
            end
        end
    end
    return nI
end
local function worker6()
    while not Library.Unloaded do
        if lU("AutoBuyTrails") then
            lL()
        end
        if lU("AutoBuyAura") then
            mf()
        end
        if lU("AutoEquipTrail") then
            lF()
        end
        if lU("AutoEquipAura") then
            k9()
        end
        if lU("AutoBuyStands") then
            mb()
        end
        if lU("AutoEquipStand") then
            lj()
        end
        if lU("AutoRollLuckyBlocks") then
            l8()
        end
        task.wait(1)
    end
end
local function fn770()
    local Character = lZ.Character
    local m9 = Character and Character:FindFirstChild("HumanoidRootPart")
    return m9
end
local function fn799()
    lA(lR, "Copied Discord invite to clipboard")
end
local function fn804()
    local qZ = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local q_ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if q_ then
                local q__1 = lh(k, v)
                if q__1 then
                    qZ[#qZ + 1] = q__1
                end
            end
        end
    end
    table.sort(qZ, function(gj, gk)
        if gj.type ~= gk.type then
            return gj.type < gk.type
        end
        return gj.idx < gk.idx
    end)
    return { objects = qZ }
end
local function fn817(Y, Z)
    return string.format('<font color="%s">%s</font>', Z, Y)
end
local function fn831()
    lT(Toggles.AntiGameplayPause.Value)
end
local function worker()
    local qM_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qL = math.floor(os.clock() - lx)
        if qL < 60 then
            qM_1 = qL .. "s"
        elseif qL < 3600 then
            qM_1 = string.format("%dm %ds", qL // 60, qL % 60)
        else
            qM_1 = string.format("%dh %dm", qL // 3600, qL % 3600 // 60)
        end
        Label:SetText(k_("Session time", qM_1, l_))
    end
end
k_ = nil
k0 = nil
GetAllData = nil
k2 = nil
k3 = nil
StopTrainingDummy = nil
k6 = nil
k7 = nil
k8 = nil
k9 = nil
lb = nil
lc = nil
ld = nil
lf = nil
lh = nil
lj = nil
ll = nil
ln = nil
lo = nil
lq = nil
lr = nil
ls = nil
lu = nil
lv = nil
lx = nil
lz = nil
lA = nil
Rebirth = nil
Options = nil
lD = nil
CurrentCamera = nil
lF = nil
lG = nil
ClaimPowerGain = nil
Toggles = nil
SaveManager = nil
lL = nil
local CloseLuckyBlockGui, k4, StartTrainingDummy, BuyLuckyBlockWithWins, lg, EquipStand, PurchaseStand, lm, EquipAura, EquipTrail, PurchaseAura, PurchaseTrail, lJ
lM = nil
lN = nil
Library = nil
lP = nil
lQ = nil
lR = nil
lS = nil
lT = nil
lU = nil
lV = nil
Label = nil
connection2 = nil
lY = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
Workspace = nil
HttpService = nil
Rebirth2 = nil
VirtualUser = nil
l8 = nil
Partners = nil
mb = nil
UserInputService = nil
connection = nil
mf = nil
Auras = nil
mh = nil
mi = nil
mj = nil
Trails = nil
local l2, l6, ma, Stands, mx
l2 = nil
l6 = nil
ma = nil
Stands = nil
local mA, FarmGroup
UserInputService, VirtualUser, HttpService, Workspace, lZ, lR, lN, ClaimPowerGain, Rebirth, PurchaseTrail, PurchaseAura, EquipTrail, EquipAura, PurchaseStand, EquipStand, BuyLuckyBlockWithWins, StartTrainingDummy, StopTrainingDummy, GetAllData, CloseLuckyBlockGui, Trails, Auras, Stands, Partners, Rebirth2, Library, SaveManager, Toggles, Options, l_, l0, lY, lf, lb, lA, ll, lc, k_, lU, lD, ln, k8, mh, lV, lo, k2, l1, lM, lr, lQ, ls, k3, mj, lS, lz, lg, lL, mf, lm, ma, lF, k9, l2, lj, mb, k4, l8, k6, l6, lv, ld = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local mr = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
if (not lm and not EquipAura and (not lm and lF) and (not lm and false and (EquipAura or lm)) or ((lF or lF) and (EquipAura and EquipAura) or (lM or not k3) and (not k3 or not lM))) and not (not lm and not EquipAura and (not lm and lF) and (not lm and false and (EquipAura or lm)) or ((lF or lF) and (EquipAura and EquipAura) or (lM or not k3) and (not k3 or not lM))) then
    k6 = game:GetService("HttpService")
else
    HttpService = game:GetService("HttpService")
end
Workspace = game:GetService("Workspace")
lZ = Players.LocalPlayer
local mv = "+1 Stand Power Evolution"
lR = "https://discord.gg/ehKVq7pf7v"
lN = "https://rscripts.net/@Ouroboros"
local sF_5 = mr:WaitForChild("RemotesFolder")
local sF_8 = mr:WaitForChild("Configs")
ClaimPowerGain = sF_5:WaitForChild("ClaimPowerGain")
Rebirth = sF_5:WaitForChild("Rebirth")
PurchaseTrail = sF_5:WaitForChild("PurchaseTrail")
PurchaseAura = sF_5:WaitForChild("PurchaseAura")
EquipTrail = sF_5:WaitForChild("EquipTrail")
EquipAura = sF_5:WaitForChild("EquipAura")
PurchaseStand = sF_5:WaitForChild("PurchaseStand")
EquipStand = sF_5:WaitForChild("EquipStand")
BuyLuckyBlockWithWins = sF_5:WaitForChild("BuyLuckyBlockWithWins")
StartTrainingDummy = sF_5:WaitForChild("StartTrainingDummy")
StopTrainingDummy = sF_5:WaitForChild("StopTrainingDummy")
GetAllData = sF_5:WaitForChild("GetAllData")
CloseLuckyBlockGui = sF_5:FindFirstChild("CloseLuckyBlockGui")
Trails = require(sF_8:WaitForChild("Trails"))
Auras = require(sF_8:WaitForChild("Auras"))
Stands = require(sF_8:WaitForChild("Stands"))
Partners = require(sF_8:WaitForChild("Partners"))
Rebirth2 = require(sF_8:WaitForChild("Rebirth"))
local mz = { "Best", "Win", "2xWins", "10xWins" }
local my = { "Normal", "Exotic", "Ancient" }
local mw = { "1", "3", "6" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lA = fn617
ll = fn799
lc = fn817
k_ = fn101
local mB = "#7fd47f"
if (lm or not lm or Workspace and k_ or (not lv or Workspace) and (not lm or lm) or (not lm or k_ or (k_ or lm) or (k_ or k_ or (k_ or lv)))) and ((not lm and Workspace or lv and not k_) and (not k_ or not lv or not Workspace and not lv) and (not lv and not lm and (k_ or not lm) and ((not Workspace or not k_) and (lv or not lm)))) or not ((lm or not lm or Workspace and k_ or (not lv or Workspace) and (not lm or lm) or (not lm or k_ or (k_ or lm) or (k_ or k_ or (k_ or lv)))) and ((not lm and Workspace or lv and not k_) and (not k_ or not lv or not Workspace and not lv) and (not lv and not lm and (k_ or not lm) and ((not Workspace or not k_) and (lv or not lm))))) then
    mA = "#6ec1ff"
    l_ = "#e8a34d"
    mx = "#8b93a3"
    lU = fn125
    lD = fn564
else
    l_ = "#6ec1ff"
    lD = "#e8a34d"
    lU = "#8b93a3"
    mx = fn125
    mA = fn564
end
ln = fn169
k8 = fn770
mh = fn106
l0 = nil
lY = 0
lV = fn171
lo = fn672
if (lU and not PurchaseStand and (lf or PurchaseStand) or (lf or PurchaseStand or (not lU or not lU))) and ((not lD or not lD or not lU and not lf) and (PurchaseStand and lU or (not lD or PurchaseStand))) or not ((lU and not PurchaseStand and (lf or PurchaseStand) or (lf or PurchaseStand or (not lU or not lU))) and ((not lD or not lD or not lU and not lf) and (PurchaseStand and lU or (not lD or PurchaseStand)))) then
    k2 = fn253
else
    mj = fn253
end
l1 = fn727
lM = fn425
lr = fn746
lQ = fn119
ls = fn332
k3 = fn265
if (k9 or k8 or (not PurchaseAura or not mr)) and (not PurchaseAura and not lr or k8 and not k8) or not ((k9 or k8 or (not PurchaseAura or not mr)) and (not PurchaseAura and not lr or k8 and not k8)) then
    mj = fn566
else
    lQ = fn566
end
lS = fn373
lz = fn610
lg = function(b7, b8)
    local ol = b7 and b7.StandsPurchased
    local ol_1
    local om_1
    if type(ol) == "table" then
        for i, v in ipairs(ol) do
            if v == b8 then
                return true
            end
        end
    end
    ol_1, om_1 = pcall(function()
        return Stands.GetByIndex(b8)
    end)
    local on = not ol_1 or type(om_1) ~= "table" or typeof(om_1.Gamepass) ~= "string"
    if on then
        return false
    end
    local on_1 = b7 and b7.Gamepasses
    local ol_3 = type(on_1) == "table" and on_1[om_1.Gamepass] == true
    return ol_3
end
lL = function()
    local oD_1
    local oA = lV()
    if not oA then
        return
    end
    local oB = tonumber(oA.Wins) or 0
    local oB_3
    local oC = oB
    for i, v in ipairs(Trails) do
        local oM = v
        local oB_1 = type(oM) == "table" and type(oM.Name) == "string" and type(oM.Wins) == "number"
        if oB_1 then
            local oB_2 = not lS(oA, oM.Name) and oC >= oM.Wins
            if oB_2 then
                oB_3, oD_1 = pcall(function()
                    return PurchaseTrail:InvokeServer(oM.Name)
                end)
                if oB_3 and oD_1 == "success" then
                    oC -= oM.Wins
                    l0 = nil
                    local oB_4 = lV(true) or oA
                    oA = oB_4
                end
            end
        end
    end
end
mf = function()
    local oQ_1
    local oN = lV()
    if not oN then
        return
    end
    local oO = tonumber(oN.Wins) or 0
    local oO_3
    local oP = oO
    for i, v in ipairs(Auras) do
        local oZ = v
        local oO_1 = type(oZ) == "table" and type(oZ.Name) == "string" and type(oZ.Wins) == "number"
        if oO_1 then
            local oO_2 = not lz(oN, oZ.Name) and oP >= oZ.Wins
            if oO_2 then
                oO_3, oQ_1 = pcall(function()
                    return PurchaseAura:InvokeServer(oZ.Name)
                end)
                if oO_3 and oQ_1 == "success" then
                    oP -= oZ.Wins
                    l0 = nil
                    local oO_4 = lV(true) or oN
                    oN = oO_4
                end
            end
        end
    end
end
lm = fn741
ma = fn411
lF = function()
    local po
    local pp = lV()
    if not pp then
        return
    end
    po = lm(pp)
    if not po then
        return
    end
    if pp.EquippedTrail == po then
        return
    end
    pcall(function()
        EquipTrail:InvokeServer(po)
    end)
    l0 = nil
end
k9 = function()
    local pr
    local ps = lV()
    if not ps then
        return
    end
    pr = ma(ps)
    if not pr then
        return
    end
    if ps.EquippedAura == pr then
        return
    end
    pcall(function()
        EquipAura:InvokeServer(pr)
    end)
    l0 = nil
end
l2 = function(ds)
    local pA_1
    local pz_1
    local px = -1
    local py
    for i = 1, 40 do
        local pG = i
        pz_1, pA_1 = pcall(function()
            return Stands.GetByIndex(pG)
        end)
        local pB = not pz_1 or type(pA_1) ~= "table"
        if pB then
            break
        elseif lg(ds, pG) then
            local pz_2 = tonumber(pA_1.Power) or 0
            if pz_2 > px then
                px = pz_2
                py = pG
            end
        end
    end
    return py
end
lj = function()
    local pH
    local pI = lV()
    if not pI then
        return
    end
    pH = l2(pI)
    if not pH then
        return
    end
    if pI.StandEquipped == pH then
        return
    end
    pcall(function()
        EquipStand:InvokeServer(pH)
    end)
    l0 = nil
end
mb = function()
    local pN_1
    local pK = lV()
    if not pK then
        return
    end
    local pL = tonumber(pK.Wins) or 0
    local pL_1, pL_4
    local pM = pL
    for i = 1, 40 do
        local pV = i
        pL_1, pN_1 = pcall(function()
            return Stands.GetByIndex(pV)
        end)
        local pO = not pL_1 or type(pN_1) ~= "table"
        local pO_1
        if pO then
            break
        elseif typeof(pN_1.Gamepass) ~= "string" then
            local pL_2 = tonumber(pN_1.Wins) or 0
            local pL_3 = not lg(pK, pV) and pM >= pL_2
            if pL_3 then
                pL_4, pO_1 = pcall(function()
                    return PurchaseStand:InvokeServer(pV)
                end)
                if pL_4 and pO_1 == true then
                    pM -= pL_2
                    l0 = nil
                    local pL_5 = lV(true) or pK
                    pK = pL_5
                end
            end
        end
    end
end
k4 = fn135
l8 = function()
    local pZ, p_
    p_ = lD("LuckyBlockType")
    local p0 = tonumber(lD("LuckyBlockAmount")) or 1
    pZ = p0
    local p0_1 = p_ == ""
    local p1 = type(p_) ~= "string" or p0_1
    if p1 then
        return
    end
    local p0_2 = lV()
    if not p0_2 then
        return
    end
    local p1_1 = k4(p_, pZ)
    local p2 = tonumber(p0_2.Wins) or 0
    if p1_1 and p2 < p1_1 then
        return
    end
    pcall(function()
        BuyLuckyBlockWithWins:FireServer(p_, pZ, true)
    end)
    if CloseLuckyBlockGui then
        pcall(function()
            CloseLuckyBlockGui:FireServer()
        end)
    end
    l0 = nil
end
lf = false
lb = nil
k6 = fn472
l6 = fn738
lv = fn717
ld = function()
    local qu
    local qv = lV()
    local qv_5
    if not qv then
        return
    end
    local qw = tonumber(qv.Rebirth) or 0
    local qw_4
    qu = l6(qw)
    if not qu then
        return
    end
    if lf and lb == qu then
        local qv_3 = k8()
        local qw_2 = qu:FindFirstChild("Torso", true) or qu:FindFirstChildWhichIsA("BasePart", true)
        local qx_1 = qv_3
        if qx_1 then
            qx_1 = qw_2
        end
        if qx_1 then
            qx_1 = (qv_3.Position - qw_2.Position).Magnitude > 18
        end
        if qx_1 then
            mh(qw_2.CFrame + Vector3.new(0, 4, 3))
        end
        return
    end
    if lf then
        lv()
        task.wait(0.2)
    end
    local qv_4 = (qu:FindFirstChild("Torso", true))
    local qC = if qv_4 then 1 else 0
    local qA = 1040 * qC + 392 * (1 - qC)
    local qB = 253 * qC + 976 * (1 - qC)
    if not ((qA * 1025 + qB * 76 + qA * qB) % 16777213 == 1348348) then
        qv_4 = qu:FindFirstChildWhichIsA("BasePart", true)
    end
    local qw_3 = qv_4
    if qw_3 then
        mh(qw_3.CFrame + Vector3.new(0, 4, 3))
        task.wait(0.25)
    end
    qv_5, qw_4 = pcall(function()
        return StartTrainingDummy:InvokeServer(qu)
    end)
    if qv_5 and qw_4 == true then
        lf = true
        lb = qu
    end
end
local sF_4 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = lR, Copyable = true }, "|", mv },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local mt = {
    Info = sF_4:AddTab("Info", "info"),
    Main = sF_4:AddTab("Main", "swords"),
    Player = sF_4:AddTab("Player", "person-standing"),
    Settings = sF_4:AddTab("Settings", "settings")
}
local ms = fn537
for k, v in mt do
    ms(v)
end
mi, sF_4, sF_8, Label, lP, sF_2 = nil, nil, nil, nil, nil, nil
local sF_6_1 = 1
repeat
    sF_5 = (sF_6_1 * 2 + 2) % 3 + 1
    if sF_5 <= 2 then
        if sF_5 <= 1 then
            sF_5 = {
                "ldavdda",
                "teyy",
                "kckxa",
                "twzasxrsg",
                "pjhfjcdbwb",
                "ncio",
                "ooogpowxie",
                "nqxwztdnx",
                "kaduhdutnx",
                "cyt",
                "blzzyesar",
                "xekep",
                "icvjg",
                "bsfqh"
            }
            if sF_5[(sF_6_1 * 87 + 42) % 14 + 1] <= sF_5[(sF_6_1 * 87 + 42) % 14 + 1] then
                sF_2 = #lP > 18
            else
                lP = #sF_2 > 18
            end
            sF_6_1 = (sF_6_1 + 5) % 12
        else
            if (sF_6_1 * 3 + 8) * 5 % 4 == ((sF_6_1 * 3 + 8) * 5 + 12) % 4 then
                mi = "Unknown"
                pcall(fn467)
                sF_4 = mt.Info:AddLeftGroupbox("Account", "circle-user")
                sF_4:AddLabel(k_("User", lZ.Name, mB), true)
                sF_4:AddLabel(k_("Status", "Keyless", mB), true)
                sF_4:AddLabel(k_("Executor", mi, mB), true)
                sF_8 = mt.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                sF_8:AddLabel(lc(mv .. " [" .. tostring(game.PlaceId) .. "]", mA), true)
                sF_8:AddLabel(k_("Place ID", tostring(game.PlaceId), mA), true)
                Label = sF_8:AddLabel(k_("Session time", "0s", l_), true)
            else
                mv = "Unknown"
                pcall(fn467)
                lZ = sF_8.Info:AddLeftGroupbox("Account", "circle-user")
                lZ:AddLabel(mi("User", mA.Name, lc), true)
                lZ:AddLabel(mi("Status", "Keyless", lc), true)
                lZ:AddLabel(mi("Executor", "Unknown", lc), true)
                k_ = sF_8.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                k_:AddLabel(mt(Label .. " [" .. tostring(game.PlaceId) .. "]", l_), true)
                k_:AddLabel(mi("Place ID", tostring(game.PlaceId), l_), true)
                mB = k_:AddLabel(mi("Session time", "0s", sF_4), true)
            end
            sF_6_1 = (sF_6_1 + 2) % 12
        end
    else
        if not mi and not sF_4 and (mi and not sF_4) and (mi and sF_4 or (mi or sF_4)) and ((not sF_4 or not mi) and (sF_4 or sF_4) or (sF_4 or not sF_4 or not mi and sF_4)) or (not sF_4 or not sF_4 or sF_4 and not mi) and (not mi or not mi or (sF_4 or not sF_4)) and (not mi or mi or sF_4 and not sF_4 or (sF_4 or sF_4 or not sF_4 and mi)) or not (not mi and not sF_4 and (mi and not sF_4) and (mi and sF_4 or (mi or sF_4)) and ((not sF_4 or not mi) and (sF_4 or sF_4) or (sF_4 or not sF_4 or not mi and sF_4)) or (not sF_4 or not sF_4 or sF_4 and not mi) and (not mi or not mi or (sF_4 or not sF_4)) and (not mi or mi or sF_4 and not sF_4 or (sF_4 or sF_4 or not sF_4 and mi))) then
            lP = tostring(game.JobId)
        else
            sF_8 = tostring(game.JobId)
        end
        sF_6_1 = (sF_6_1 + 5) % 12
    end
until (sF_6_1 * 5 + 10) % 12 == 3
if sF_2 then
    local sF_6_2 = 1
    repeat
        sF_4 = (vector.create((sF_6_2 * 4 + 2) % 11 + 1, (sF_6_2 * 2 + 8) % 13 + 1, (sF_6_2 * 8 + 15) % 17 + 1))
        sF_5 = (vector.create((sF_6_2 * 2 + 5) % 11 + 1, (sF_6_2 * 5 + 10) % 13 + 1, (sF_6_2 * 2 + 2) % 17 + 1))
        sF_3 = (vector.create((sF_6_2 * 5 + 3) % 11 + 1, (sF_6_2 * 9 + 1) % 13 + 1, (sF_6_2 * 7 + 17) % 17 + 1))
        if vector.dot(vector.cross(sF_4, sF_5), sF_3) == vector.dot(vector.cross(sF_5, sF_3), sF_4) then
            sF_2 = string.sub(lP, 1, 18) .. "..."
        else
            lP = string.sub(sF_2, 1, 18) .. "..."
        end
        sF_6_2 = (sF_6_2 + 2) % 8
    until (sF_6_2 * 7 + 5) % 8 == 2
end
local sF_6_3 = sF_2 or lP
lx, FarmGroup, lu, lq, connection, connection2, CurrentCamera, lJ, lh, k0, lG, k7, lT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sF_3 = sF_6_3
sF_8:AddLabel(k_("Server", sF_3, mx), true)
sF_8:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lx = os.clock()
task.spawn(worker)
sF_2 = mt.Info:AddRightGroupbox("Scripts", "package")
sF_2:AddLabel(lc("Included in this hub", mx), true)
sF_2:AddLabel(lc(mv, mA), true)
sF_4 = mt.Info:AddRightGroupbox("Features", "list")
sF_4:AddLabel(lc("Auto Farm", mA), true)
sF_4:AddLabel(lc("Auto Shop", mB), true)
sF_4:AddLabel(lc("Auto Progress", l_), true)
sF_4:AddLabel(lc("Misc Utilities", mx), true)
local SocialsGroup = mt.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = ll })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = mt.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ll })
local FaqGroup = mt.Info:AddRightGroupbox("FAQ", "circle-help")
if (not k0 or sF_4) and (sF_4 and sF_2) or (not OuroborosHubGroup or sF_3) and (not k0 and sF_3) or (not sF_2 and not sF_4 and (not k0 and not sF_3) or (not k0 or OuroborosHubGroup) and (sF_3 or not sF_3)) or not ((not k0 or sF_4) and (sF_4 and sF_2) or (not OuroborosHubGroup or sF_3) and (not k0 and sF_3) or (not sF_2 and not sF_4 and (not k0 and not sF_3) or (not k0 or OuroborosHubGroup) and (sF_3 or not sF_3))) then
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
    FarmGroup = mt.Main:AddLeftGroupbox("Farm", "swords")
else
    FarmGroup:AddLabel("Where do I get a good config?", true)
    FarmGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    FarmGroup:AddLabel("How do I import / export configs?", true)
    FarmGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    FarmGroup:AddLabel("How do I report bugs?", true)
    FarmGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
    FarmGroup:AddLabel("How do I make suggestions?", true)
    FarmGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    FarmGroup:AddLabel("How do I get help or updates?", true)
    FarmGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
    mt = FaqGroup.Main:AddLeftGroupbox("Farm", "swords")
end
FarmGroup:AddToggle("AutoWinPlates", { Text = "Auto Farm Win Plates", Default = false })
FarmGroup:AddDropdown("WinPlateChoice", { Text = "Win Plate", Values = mz, Default = "Best" })
FarmGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
FarmGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local ShopGroup = mt.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
ShopGroup:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
ShopGroup:AddToggle("AutoEquipTrail", { Text = "Auto Equip Trail", Default = false })
ShopGroup:AddToggle("AutoEquipAura", { Text = "Auto Equip Aura", Default = false })
ShopGroup:AddToggle("AutoBuyStands", { Text = "Auto Buy Stands", Default = false })
ShopGroup:AddToggle("AutoEquipStand", { Text = "Auto Equip Stand", Default = false })
ShopGroup:AddToggle("AutoRollLuckyBlocks", { Text = "Auto Roll Lucky Blocks", Default = false })
ShopGroup:AddDropdown("LuckyBlockType", { Text = "Lucky Block", Values = my, Default = "Normal" })
ShopGroup:AddDropdown("LuckyBlockAmount", { Text = "Lucky Block Amount", Values = mw, Default = "1" })
local MovementGroup = mt.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = mt.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ms = mt.Settings:AddLeftGroupbox("Menu")
ms:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ms:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ms:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(mt.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/StandPowerEvolution")
mr = SaveManager:BuildConfigSection(mt.Settings)
lJ = fn329
lh = fn419
k0 = fn804
lG = function(gm)
    local ri
    ri = nil
    local rj = type(gm) ~= "table" or type(gm.idx) ~= "string" or type(gm.type) ~= "string" or SaveManager.Ignore[gm.idx]
    if rj then
        return false
    end
    ri = lJ(gm.type, gm.idx)
    if not ri then
        return false
    end
    local rj_1 = pcall(function()
        if gm.type == "Input" then
            if type(gm.text) ~= "string" then
                return
            end
            ri:SetValue(gm.text)
        elseif gm.type == "ColorPicker" then
            ri:SetValueRGB(Color3.fromHex(gm.value), gm.transparency)
        elseif gm.type == "KeyPicker" then
            ri:SetValue({ gm.key, gm.mode, gm.modifiers })
            if gm.mode == "Toggle" and gm.toggled ~= nil then
                ri.Toggled = gm.toggled
                ri:Update()
            end
        else
            ri:SetValue(gm.value)
        end
    end)
    return rj_1
end
mr:AddDivider()
mr:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
mr:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
mr:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
lu = tick()
lq = tick()
pcall(function()
    for i, v in ipairs(getconnections(lZ.Idled)) do
        local rL = v
        pcall(function()
            rL:Disable()
        end)
    end
end)
k7 = fn431
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
lT = function(g5)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not g5)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not g5
        end
    end)
    if not g5 then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(lZ, "GameplayPaused", false)
        else
            lZ.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn831)
Toggles.Fly:OnChanged(fn742)
Toggles.WalkSpeedEnabled:OnChanged(fn77)
Toggles.AutoTrain:OnChanged(fn531)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
task.spawn(antiAfkLoop)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
Library:OnUnload(fn636)
