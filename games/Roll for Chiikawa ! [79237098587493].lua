local rN_13
local km
local k4
local j3
local Workspace
local k7
local Label
local kP
local kw
local j9
local kS
local kc
local kf
local kC
local VirtualUser
local k0
local k3
local kI
local Toggles
local Options
local kL
local kr
local j5
local k9
local TirarRuleta
local j8
local kb
local kU
local ke
local HttpService
local ChiikawaData
local kh
local UserInputService
local kk
local k2
local connection2
local LocalPlayer
local kn
local j4
local k5
local k8
local SaveManager
local connection
local kt
local ka
local ShinyUtil
local j1
local worker
local kT
local kg
local kZ
local kD
local kj
local k1
local function fn10()
    local qM = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local qN = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if qN then
                local qN_1 = kc(k, v)
                if qN_1 then
                    qM[#qM + 1] = qN_1
                end
            end
        end
    end
    table.sort(qM, function(gm, gn)
        if gm.type ~= gn.type then
            return gm.type < gn.type
        end
        return gm.idx < gn.idx
    end)
    return { objects = qM }
end
local function onCopySolanaAddress()
    k1(j3, "Copied Solana address")
end
local function placeBestDelayLoop()
    while not ke.Unloaded do
        if kP("AutoPlaceBest") then
            pcall(worker)
        end
        local rB = Options.PlaceBestDelay.Value or 1
        task.wait(math.max(rB, 0.1))
    end
end
local function fn40(aM)
    local mp = Options[aM]
    local mq = mp and mp.Value
    if typeof(mq) ~= "table" then
        return {}
    end
    local mq_1 = true
    local mr = {}
    for k in mq do
        if type(k) ~= "number" then
            mq_1 = false
            break
        end
    end
    if mq_1 then
        for i, v in ipairs(mq) do
            if type(v) == "string" then
                mr[v] = true
            end
        end
        return mr
    end
    return mq
end
local function onCopyJoinScript_JobID()
    local pB = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, j1)
    if setclipboard then
        setclipboard(pB)
    elseif toclipboard then
        toclipboard(pB)
    end
    ke:Notify("Copied join script to clipboard")
end
local function antiGameplayPauseLoop()
    while not ke.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            kn(true)
        end
    end
end
local function fn175(dY)
    local DiscordGroup = dY:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kT })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kT })
end
local function onStepped()
    if ke.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local pW_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if pW_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(kC)
    elseif toclipboard then
        toclipboard(kC)
    end
    ke:Notify("Copied Rscripts profile to clipboard")
end
local function fn213()
    kn(Toggles.AntiGameplayPause.Value)
end
local function fn217()
    local na = {}
    local ChiikawasObtenidos = LocalPlayer:FindFirstChild("ChiikawasObtenidos")
    if ChiikawasObtenidos then
        for i, child in ipairs(ChiikawasObtenidos:GetChildren()) do
            local nb_1 = k3[child.Name]
            if nb_1 then
                na[child.Name] = nb_1
            end
        end
    end
    for i, v in ipairs(kU) do
        local nb_2 = LocalPlayer:FindFirstChild(v.carpeta)
        if nb_2 then
            for i, child in ipairs(nb_2:GetChildren()) do
                local nb_3 = k3[child.Name]
                if nb_3 then
                    local nc = ShinyUtil.ValorVariante(child.Name, v.clave)
                    na[nc] = nb_3 * v.mult
                end
            end
        end
    end
    return na
end
local function onCopyEthereumAddress()
    k1(j9, "Copied Ethereum address")
end
local function worker3()
    while not ke.Unloaded do
        if kP("AutoCraft") then
            pcall(kt)
        end
        task.wait(0.6)
    end
end
local function onImportConfigFromClipboardTex()
    local re_1
    local rc = Options.SaveManager_ImportSource.Value
    local rc_1
    local ri = if rc then 1 else 0
    local rg = 2899 * ri + 2465 * (1 - ri)
    local rh = 2364 * ri + 1095 * (1 - ri)
    if not ((rg * 1327 + rh * 1817 + rg * rh) % 16777213 == 14995597) then
        rc = ""
    end
    local rd = tostring(rc):match("^%s*(.-)%s*$")
    if rd == "" then
        ke:Notify("Paste an exported config into the box first")
        return
    end
    rc_1, re_1 = pcall(HttpService.JSONDecode, HttpService, rd)
    local rd_1 = not rc_1 or type(re_1) ~= "table" or type(re_1.objects) ~= "table"
    if rd_1 then
        ke:Notify("That is not a valid exported config")
        return
    end
    local rc_2 = 0
    for i, v in ipairs(re_1.objects) do
        if kw(v) then
            rc_2 += 1
        end
    end
    if rc_2 == 0 then
        ke:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local re_2 = rc_2 == 1 and "" or "s"
    ke:Notify(("Imported %d setting%s"):format(rc_2, re_2), 6)
end
local function fn323()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mT = leaderstats and leaderstats:FindFirstChild("Rebirths")
    local mS_1 = mT
    if mT then
        mT = mS_1.Value
    end
    return mT or 0
end
local function fn330()
    local Map = Workspace:FindFirstChild("Map")
    local mW = Map and Map:FindFirstChild("BASES")
    if not mW then
        return nil
    end
    for i, child in ipairs(mW:GetChildren()) do
        if tostring(child:GetAttribute("DuenoUserId")) == tostring(LocalPlayer.UserId) then
            return child
        end
    end
    return nil
end
local function fn336()
    local m4_1
    local m3_1
    m3_1, m4_1 = pcall(function()
        return TirarRuleta:InvokeServer()
    end)
    local m5 = m3_1 and type(m4_1) == "table" and m4_1.noDinero
    if m5 then
        return "nodinero"
    end
    return "ok"
end
local function onJumpRequest()
    if ke.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local p9_1 = kb()
        if p9_1 then
            p9_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onExportConfigToClipboard()
    local q9_1
    local q8_1
    q8_1, q9_1 = pcall(HttpService.JSONEncode, HttpService, k5())
    if not q8_1 then
        ke:Notify("Failed to encode the config")
        return
    end
    local q8_2 = setclipboard or toclipboard
    local q8_3 = type(q8_2) ~= "function" or not pcall(q8_2, q9_1)
    if q8_3 then
        ke:Notify("Your executor does not support copying to the clipboard")
        return
    end
    ke:Notify("Config copied to clipboard", 6)
end
local function rebirthSavesLoop()
    while not ke.Unloaded do
        if kP("AutoRebirth") then
            local rw = Options.RebirthSaves.Value or 2
            pcall(kZ, rw)
        end
        if kP("AutoUpgrade") then
            pcall(k8)
        end
        if kP("AutoUnlockSlots") then
            pcall(j4)
        end
        task.wait(0.5)
    end
end
local function fn441()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kh = tick()
end
local function onCopyPayPalLink()
    k1(k7, "Copied PayPal link")
end
local function fn500(ci)
    local ChiikawasObtenidos = LocalPlayer:FindFirstChild("ChiikawasObtenidos")
    if not ChiikawasObtenidos then
        return nil
    end
    local ChiikawasConPadlock = LocalPlayer:FindFirstChild("ChiikawasConPadlock")
    local oa = ChiikawaData.RarezasPermanentes or {}
    local n9_1 = {}
    for i, child in ipairs(ChiikawasObtenidos:GetChildren()) do
        local n7_1 = ka[child.Name]
        local oa_1 = ChiikawasConPadlock and ChiikawasConPadlock:FindFirstChild(child.Name) ~= nil
        local oc = n7_1
        if oc then
            oc = not oa[n7_1]
        end
        if oc and not oa_1 then
            n9_1[#n9_1 + 1] = child.Name
        end
    end
    table.sort(n9_1, function(cw, cx)
        return (kj[ka[cw]] or 0) > (kj[ka[cx]] or 0)
    end)
    if #n9_1 < 2 then
        return nil
    end
    local n7_3 = {}
    local n8_1 = math.min(ci, #n9_1)
    local ot = 1
    while ot <= n8_1 do
        local ou = ot
        n7_3[ou] = n9_1[ou]
        ot += 1
    end
    return n7_3
end
local function fn525(f0, f1)
    local qC_1 = (f0 == "Toggle" and Toggles or Options)[f1]
    local qB_2 = type(qC_1) == "table" and qC_1.Type == f0
    return qB_2 and qC_1 or nil
end
local function onInputChanged(fT)
    local UserInputType = fT.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kk = tick()
    end
end
local function fn541()
    if not Toggles.Fly.Value then
        local pO = kb()
        if pO then
            pO.PlatformStand = false
        end
    end
end
local function onCopyLitecoinAddress()
    k1(kg, "Copied Litecoin address")
end
local function worker2()
    local pH_1
    while true do
        task.wait(1)
        if ke.Unloaded then
            break
        end
        local pG = math.floor(os.clock() - kS)
        if pG < 60 then
            pH_1 = pG .. "s"
        elseif pG < 3600 then
            pH_1 = string.format("%dm %ds", pG // 60, pG % 60)
        else
            pH_1 = string.format("%dh %dm", pG // 3600, pG % 3600 // 60)
        end
        Label:SetText(kD("Session time", pH_1, km))
    end
end
local function onInputBegan()
    kk = tick()
end
local function fn563()
    if Toggles.AutoPlaceBest.Value then
        task.spawn(worker)
    end
end
local function onCopyVenmoLink()
    k1(k2, "Copied Venmo link")
end
local function onRenderStepped(fq)
    if ke.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qe_1 = kb()
        if qe_1 then
            qe_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qe_3 = k4()
        local qf = kb()
        k0 = Workspace.CurrentCamera or k0
        if qe_3 and qf and k0 then
            qf.PlatformStand = true
            local qf_1 = Vector3.zero
            local ql = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if ql == 1 then
                qf_1 = qf_1 + k0.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qf_1 = qf_1 - k0.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                qf_1 = qf_1 - k0.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qf_1 = qf_1 + k0.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                qf_1 = qf_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                qf_1 = qf_1 - Vector3.new(0, 1, 0)
            end
            qe_3.Velocity = Vector3.zero
            if qf_1.Magnitude > 0 then
                qe_3.CFrame = qe_3.CFrame + qf_1.Unit * Options.FlySpeed.Value * fq
            end
        end
    end
end
local function fn658(aI)
    local mj = Toggles[aI]
    return mj ~= nil and mj.Value == true
end
local function fn685(cS)
    local oD_1
    local oC_1
    oC_1, oD_1 = cS:match("([%d%.]+)%s*([KMBT]?)%)")
    local oE = oC_1 and tonumber(oC_1)
    if not oE then
        return nil
    end
    local oE_1 = ({ K = 1000, M = 1000000, B = 1000000000, T = 1000000000000 })[oD_1]
    local oL = if oE_1 then 1 else 0
    local oJ = 1502 * oL + 256 * (1 - oL)
    local oK = 1776 * oL + 3826 * (1 - oL)
    if not ((oJ * 1936 + oK * 740 + oJ * oK) % 16777213 == 6889664) then
        oE_1 = 1
    end
    return oE * oE_1
end
local function worker4()
    while not ke.Unloaded do
        task.wait(2)
        if kP("AntiAfk") then
            local rE = tick() - kk
            local rF = tick() - kh
            if rE >= 300 and rF >= 60 then
                pcall(k9)
            else
                if rE < 300 and rF >= 300 then
                    pcall(k9)
                end
            end
        end
    end
end
local function fn695()
    local pu_1
    local pt_1
    if identifyexecutor then
        pu_1, pt_1 = identifyexecutor()
        local pv = pu_1 ~= ""
        local pw = type(pu_1) == "string" and pv
        if pw then
            local pv_1 = type(pt_1) == "string" and pt_1 ~= "" and pu_1 .. " " .. pt_1
            kr = pv_1 or pu_1
        end
    end
end
local function fn726()
    local Character = LocalPlayer.Character
    local mH = Character and Character:FindFirstChildOfClass("Humanoid")
    return mH
end
local function fn740()
    if not Toggles.WalkSpeedEnabled.Value then
        local pQ = kb()
        if pQ then
            pQ.WalkSpeed = 16
        end
    end
end
local function fn741(M, N)
    return string.format('<font color="%s">%s</font>', N, M)
end
local function fn760()
    local Character = LocalPlayer.Character
    local mK = Character and Character:FindFirstChild("HumanoidRootPart")
    return mK
end
local function fn771()
    k1(kI, "Copied Discord invite to clipboard")
end
local function fn774(F, G)
    if setclipboard then
        setclipboard(F)
    elseif toclipboard then
        toclipboard(F)
    end
    ke:Notify(G)
end
local function onCopyUSDTAddress()
    k1(j8, "Copied USDT address")
end
local function rollDelayLoop()
    while not ke.Unloaded do
        if kP("AutoRoll") then
            local rp = j5()
            if rp == "nodinero" then
                task.wait(0.5)
            else
                local wait = task.wait
                local rr = Options.RollDelay.Value or 0
                wait(math.max(rr, 0.05))
            end
        else
            task.wait(0.25)
        end
    end
end
local function fn830(f8, f9)
    local Type = f9.Type
    if Type == "Toggle" then
        return { idx = f8, type = "Toggle", value = f9.Value == true }
    elseif Type == "Slider" then
        return { idx = f8, type = "Slider", value = tostring(f9.Value) }
    elseif Type == "Dropdown" then
        return { idx = f8, type = "Dropdown", multi = f9.Multi == true, value = f9.Value }
    elseif Type == "Input" then
        local qG = f9.Value or ""
        return { idx = f8, type = "Input", text = tostring(qG) }
    elseif Type == "ColorPicker" then
        return { idx = f8, type = "ColorPicker", value = f9.Value:ToHex(), transparency = f9.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = f8,
            type = "KeyPicker",
            mode = f9.Mode,
            key = f9.Value,
            modifiers = f9.Modifiers,
            toggled = f9.Toggled
        }
    else
        return nil
    end
end
local function onCopyBitcoinAddress()
    k1(kf, "Copied Bitcoin address")
end
local function fn841(P, Q, R)
    return string.format("<b>%s</b> %s %s", P, kL("-", "#5a6070"), kL(Q, R))
end
local function onUnload()
    ke:Unload()
end
local function fn882()
    connection:Disconnect()
    connection2:Disconnect()
    kn(false)
    local rI = kb()
    if rI then
        rI.PlatformStand = false
        rI.WalkSpeed = 16
    end
end
local function fn885()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mQ = leaderstats and leaderstats:FindFirstChild("Money")
    local mP_1 = mQ
    if mQ then
        mQ = mP_1.Value
    end
    return mQ or 0
end
j1 = nil
Toggles = nil
j3 = nil
j4 = nil
j5 = nil
Label = nil
SaveManager = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
kc = nil
worker = nil
ke = nil
kf = nil
kg = nil
kh = nil
kj = nil
kk = nil
km = nil
kn = nil
kr = nil
kt = nil
TirarRuleta = nil
kw = nil
ShinyUtil = nil
ChiikawaData = nil
kC = nil
kD = nil
connection2 = nil
kI = nil
LocalPlayer = nil
kL = nil
Workspace = nil
kP = nil
local Craftear, EquiparChiikawa, ComprarMejora, kp, kq, HacerRebirth, ky, RebirthConfig, kA, kE, kF, kG, kJ, CoreGui, kO
connection = nil
kS = nil
kT = nil
kU = nil
HttpService = nil
VirtualUser = nil
kZ = nil
UserInputService = nil
k0 = nil
k1 = nil
k2 = nil
k3 = nil
k4 = nil
k5 = nil
Options = nil
k7 = nil
k8 = nil
k9 = nil
local GuiService, kV, kW, li, lj, ll, lm, ln, lv, lw, lx
GuiService = nil
kV = nil
kW = nil
local UpgradesGroup
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, kI, kC, ChiikawaData, RebirthConfig, ShinyUtil, TirarRuleta, HacerRebirth, ComprarMejora, EquiparChiikawa, Craftear, ke, SaveManager, Toggles, Options, km, kg, kf, j9, j8, j3, k7, k2, kJ, kE, kA, k1, kT, kL, kD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local rN_9 = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ld_2
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = rN_9.LocalPlayer
local lk = "Roll for Chiikawa"
kI = "https://discord.gg/ehKVq7pf7v"
kC = "https://rscripts.net/@Ouroboros"
ChiikawaData = require(ReplicatedStorage:WaitForChild("ChiikawaData"))
RebirthConfig = require(ReplicatedStorage:WaitForChild("RebirthConfig"))
ShinyUtil = require(ReplicatedStorage:WaitForChild("ShinyUtil"))
TirarRuleta = ReplicatedStorage:WaitForChild("TirarRuleta")
HacerRebirth = ReplicatedStorage:WaitForChild("HacerRebirth")
ComprarMejora = ReplicatedStorage:WaitForChild("ComprarMejora")
EquiparChiikawa = ReplicatedStorage:WaitForChild("EquiparChiikawa")
Craftear = ReplicatedStorage:WaitForChild("Craftear")
ke = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = ke.Toggles
Options = ke.Options
k1 = fn774
kT = fn771
kL = fn741
kD = fn841
local lh = "#7fd47f"
local lg = "#6ec1ff"
km = "#e8a34d"
local lf = "#8b93a3"
kg = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
kf = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
j9 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
j8 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
j3 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
k7 = "https://paypal.me/TheTruckerGOD"
k2 = "https://venmo.com/u/miserablemusic"
local lr = "#345d9d"
local lq = "#f7931a"
local lp = "#627eea"
local lo = "#26a17b"
if (not TirarRuleta or false) or not (not TirarRuleta or false) then
    ln = "#14f195"
    lm = "#0070ba"
    ll = "#008cff"
else
    ll = "#14f195"
    ln = "#0070ba"
    lm = "#008cff"
end
if (UserInputService or VirtualUser) and false and (not UserInputService or lk or not CoreGui and CoreGui) or not ((UserInputService or VirtualUser) and false and (not UserInputService or lk or not CoreGui and CoreGui)) then
    kJ = { Luck = "Suerte", Speed = "Velocidad", Rolls = "Rolls" }
    lj = { "Luck", "Speed", "Rolls" }
    kE = { Suerte = 15, Velocidad = 15, Rolls = 2 }
    li = {}
else
    lj = { Speed = "Velocidad", Rolls = "Rolls", Luck = "Suerte" }
    kJ = { "Rolls", "Luck", "Speed" }
    li = { Rolls = 2, Suerte = 15, Velocidad = 15 }
    kE = {}
end
if (not UserInputService and false and (Options or UserInputService) and (Options or not CoreGui or (false or CoreGui)) or (false and not rN_9 or Options and j3) and (not CoreGui or rN_9 or (j3 or UserInputService))) and ((false or UserInputService and CoreGui) and (rN_9 or not rN_9 or (false or Options)) or (false and (j3 or not Options) or j3 and rN_9 and (not CoreGui and not UserInputService))) and not ((not UserInputService and false and (Options or UserInputService) and (Options or not CoreGui or (false or CoreGui)) or (false and not rN_9 or Options and j3) and (not CoreGui or rN_9 or (j3 or UserInputService))) and ((false or UserInputService and CoreGui) and (rN_9 or not rN_9 or (false or Options)) or (false and (j3 or not Options) or j3 and rN_9 and (not CoreGui and not UserInputService)))) then
    ke = {}
else
    kA = {}
end
rN_9 = require(ReplicatedStorage:WaitForChild("CrafteoConfig"))
for i, v in ipairs(rN_9.Cadena) do
    rN_9 = v.De .. " -> " .. v.A
    li[#li + 1] = rN_9
    kA[rN_9] = i
end
rN_13, kj = nil, nil
local rN_4 = 1
repeat
    rN_9 = {
        "orlcpqh",
        "vympq",
        "wnmcmhuu",
        "jnzaexzqs",
        "tasxnblnlau",
        "qima",
        "zsodsj",
        "lmfg",
        "kovqsk",
        "jxnughh",
        "zamkyauca"
    }
    local sC = rN_4
    local ld_1 = rN_9[sC % 11 + 1]
    if ld_1:len() >= ld_1:gsub("(.)", "%1%1", sC % 3 % 2 + 1):len() then
        kj = { "Glitch", "Void", "Shiny", "Gold", "Normal" }
        rN_13 = {}
    else
        rN_13 = { "Normal", "Shiny", "Gold", "Void", "Glitch" }
        kj = {}
    end
    rN_4 = (rN_4 + 1) % 4
until (rN_4 * 1 + 1) % 4 == 3
rN_9 = {}
local rN_4_1 = ChiikawaData.OrdenRarezas or rN_9
for i, v in ipairs(rN_4_1) do
    kj[v] = i
end
ka = {}
rN_9 = {}
local rN_4_2 = ChiikawaData.Chiikawas or rN_9
for i, v in ipairs(rN_4_2) do
    rN_9 = type(v) == "table" and v.Nombre
    if rN_9 then
        ka[v.Nombre] = v.Rareza
    end
end
k3 = {}
rN_9 = {}
local rN_4_3 = ChiikawaData.Chiikawas
local lR = if rN_4_3 then 1 else 0
local lP = 2102 * lR + 3973 * (1 - lR)
local lQ = 3840 * lR + 1322 * (1 - lR)
if not ((lP * 1530 + lQ * 954 + lP * lQ) % 16777213 == 14951100) then
    rN_4_3 = rN_9
end
for i, v in ipairs(rN_4_3) do
    rN_9 = type(v) == "table" and v.Nombre
    if rN_9 then
        rN_9 = v.Nombre
        local rN_4_4 = v.Genera or 0
        k3[rN_9] = rN_4_4
    end
end
kU, lv, kP, kF, kb, k4, kV, kG, kq, j5, kW, worker, kO, kZ, kp, j4, k8, kt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kU = {
    { clave = "Shiny", carpeta = "ChiikawasShinyObtenidos", mult = 2 },
    { clave = "Gold", carpeta = "ChiikawasGoldObtenidos", mult = 3 },
    { clave = "Void", carpeta = "ChiikawasVoidObtenidos", mult = 5 },
    { clave = "Glitch", carpeta = "ChiikawasGlitchObtenidos", mult = 10 }
}
kP = fn658
kF = fn40
kb = fn726
k4 = fn760
kV = fn885
kG = fn323
kq = fn330
if ((not lv or not lv) and (lv and not k8) or (kO or not lv or (kO or k8))) and ((not k8 and not lv or (not kO or lv)) and (not lv and not k8 and (kO or not k8))) and ((kO or k8 or not kO and kO) and ((not lv or not lv) and (kO or not lv)) or kO and not kO and (not kO or kO) and (not lv or k8 or kO and k8)) and not (((not lv or not lv) and (lv and not k8) or (kO or not lv or (kO or k8))) and ((not k8 and not lv or (not kO or lv)) and (not lv and not k8 and (kO or not k8))) and ((kO or k8 or not kO and kO) and ((not lv or not lv) and (kO or not lv)) or kO and not kO and (not kO or kO) and (not lv or k8 or kO and k8))) then
    kP = fn336
else
    j5 = fn336
end
kW = fn217
worker = function()
    local nE_1
    local Slots = LocalPlayer:FindFirstChild("Slots")
    if not Slots then
        return
    end
    if LocalPlayer:GetAttribute("EquipBestOn") == true then
        return
    end
    local nA = kW()
    local nB = {}
    local nC = {}
    for i, child in ipairs(Slots:GetChildren()) do
        if child:IsA("StringValue") then
            nC[#nC + 1] = child
            if child.Value ~= "" then
                nB[child.Value] = true
            end
        end
    end
    local nz_1 = {}
    for k, v in pairs(nA) do
        if not nB[k] then
            nz_1[#nz_1 + 1] = { valor = k, genera = v }
        end
    end
    table.sort(nz_1, function(bV, bW)
        return bV.genera > bW.genera
    end)
    local nD = 1
    for i, v in ipairs(nC) do
        local nw
        local nY = v
        if nD > #nz_1 then
            break
        elseif nY.Value == "" then
            nw = nz_1[nD]
            pcall(function()
                EquiparChiikawa:FireServer(nY.Name, nw.valor)
            end)
            task.wait(0.08)
            if nY.Value == nw.valor then
                nB[nw.valor] = true
                nD += 1
            end
        end
    end
    local nQ = false
    repeat
        local nx
        if nD <= #nz_1 then
            local ny = nz_1[nD]
            nx, nE_1 = nil, nil
            for i, v in ipairs(nC) do
                if v.Value ~= "" then
                    local nF = nA[v.Value] or 0
                    if nF < ny.genera and (not nE_1 or nF < nE_1) then
                        nx = v
                        nE_1 = nF
                    end
                end
            end
            if not nx then
                nQ = true
            else
                local Value = nx.Value
                pcall(function()
                    EquiparChiikawa:FireServer(nx.Name, ny.valor)
                end)
                task.wait(0.08)
                if nx.Value == ny.valor then
                    nB[Value] = nil
                    nB[ny.valor] = true
                end
                nD += 1
            end
        else
            nQ = true
        end
    until nQ
end
kO = fn500
kZ = function(cE)
    local ow, ox
    ow = 0
    pcall(function()
        ow = RebirthConfig.precio(kG())
    end)
    local oB = if kV() < ow then 1 else 0
    if oB == 1 then
        return
    end
    ox = kO(cE)
    if not ox then
        return
    end
    pcall(function()
        HacerRebirth:InvokeServer(ox)
    end)
end
if (not kb or not k4) and (not k4 or kb) or (k4 or kb) and (k4 and not kb) or k4 and not kb and (k4 and k4) and (not kb and not k4 and (not k4 or not k4)) or not ((not kb or not k4) and (not k4 or kb) or (k4 or kb) and (k4 and not kb) or k4 and not kb and (k4 and k4) and (not kb and not k4 and (not k4 or not k4))) then
    kp = fn685
end
if (kW and 5 or (kW or 5) or (not kW or 5) or 5) and ((kW and (kW or false) or (kW or not kW) and false) and ((kW or not kW) and 5)) and not ((kW and 5 or (kW or 5) or (not kW or 5) or 5) and ((kW and (kW or false) or (kW or not kW) and false) and ((kW or not kW) and 5))) then
    k8 = function()
        local oN
        local CFrame
        CFrame = nil
        oN = nil
        if type(fireproximityprompt) ~= "function" then
            return
        end
        local oO = kq()
        if not oO then
            return
        end
        oN = k4()
        if not oN then
            return
        end
        local oP = kV()
        local oQ = {}
        for i, descendant in ipairs(oO:GetDescendants()) do
            local oO_5 = descendant:IsA("ProximityPrompt") and descendant.Enabled
            if oO_5 then
                local oO_6 = tostring(descendant.ActionText)
                local oR = string.find(oO_6, "Unlock", 1, true) and not string.find(oO_6, "Robux", 1, true)
                if oR then
                    local Parent = descendant.Parent
                    local oS = kp(oO_6)
                    local oO_7 = Parent and Parent:IsA("BasePart") and oS and oP >= oS
                    if oO_7 then
                        oQ[#oQ + 1] = { prompt = descendant, part = Parent }
                    end
                end
            end
        end
        if #oQ == 0 then
            return
        end
        CFrame = oN.CFrame
        for i, v in ipairs(oQ) do
            local o7 = v
            local oO_8 = ke.Unloaded or not kP("AutoUnlockSlots")
            if oO_8 then
                break
            end
            oN.CFrame = o7.part.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.1)
            pcall(function()
                fireproximityprompt(o7.prompt)
            end)
            task.wait(0.15)
        end
        pcall(function()
            oN.CFrame = CFrame
        end)
    end
    j4 = function()
        local Mejoras = LocalPlayer:FindFirstChild("Mejoras")
        if not Mejoras then
            return
        end
        local pa = kF("UpgradeChoice")
        for k, v in pa do
            if v then
                local o8 = kJ[k]
                local pa_3 = o8 and Mejoras:FindFirstChild(o8)
                if pa_3 then
                    if pa_3.Value < (kE[o8] or 15) then
                        pcall(function()
                            ComprarMejora:FireServer(o8)
                        end)
                    end
                end
            end
        end
    end
else
    j4 = function()
        local oN
        local CFrame
        CFrame = nil
        oN = nil
        if type(fireproximityprompt) ~= "function" then
            return
        end
        local oO = kq()
        if not oO then
            return
        end
        oN = k4()
        if not oN then
            return
        end
        local oP = kV()
        local oQ = {}
        for i, descendant in ipairs(oO:GetDescendants()) do
            local oO_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled
            if oO_1 then
                local oO_2 = tostring(descendant.ActionText)
                local oR = string.find(oO_2, "Unlock", 1, true) and not string.find(oO_2, "Robux", 1, true)
                if oR then
                    local Parent = descendant.Parent
                    local oS = kp(oO_2)
                    local oO_3 = Parent and Parent:IsA("BasePart") and oS and oP >= oS
                    if oO_3 then
                        oQ[#oQ + 1] = { prompt = descendant, part = Parent }
                    end
                end
            end
        end
        if #oQ == 0 then
            return
        end
        CFrame = oN.CFrame
        for i, v in ipairs(oQ) do
            local o7 = v
            local oO_4 = ke.Unloaded or not kP("AutoUnlockSlots")
            if oO_4 then
                break
            end
            oN.CFrame = o7.part.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.1)
            pcall(function()
                fireproximityprompt(o7.prompt)
            end)
            task.wait(0.15)
        end
        pcall(function()
            oN.CFrame = CFrame
        end)
    end
    k8 = function()
        local Mejoras = LocalPlayer:FindFirstChild("Mejoras")
        if not Mejoras then
            return
        end
        local pa = kF("UpgradeChoice")
        for k, v in pa do
            if v then
                local o8 = kJ[k]
                local pa_1 = o8 and Mejoras:FindFirstChild(o8)
                if pa_1 then
                    if pa_1.Value < (kE[o8] or 15) then
                        pcall(function()
                            ComprarMejora:FireServer(o8)
                        end)
                    end
                end
            end
        end
    end
end
kt = function()
    local pk, pl
    local CraftRecipe = Options.CraftRecipe
    local pm_3
    local pn = CraftRecipe and CraftRecipe.Value
    local pn_3
    local pn_1 = type(pn) == "string" and kA[pn]
    pk = pn_1
    if not pk then
        return
    end
    local CraftVariant = Options.CraftVariant
    pl = CraftVariant and CraftVariant.Value
    if type(pl) ~= "string" then
        pl = "Normal"
    end
    pm_3, pn_3 = pcall(function()
        return Craftear:InvokeServer(pk, pl)
    end)
    local po = pm_3 and type(pn_3) == "table" and pn_3.error == "cooldown"
    if po then
        task.wait(0.4)
    end
end
local lt = ke:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kI, Copyable = true }, "|", lk },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
if (not k8 or not kq) and (kq or not k8) and (k8 or kq or not k8 and kW) or not ((not k8 or not kq) and (kq or not k8) and (k8 or kq or not k8 and kW)) then
    lv = {
        Info = lt:AddTab("Info", "info"),
        Main = lt:AddTab("Main", "gamepad-2"),
        Player = lt:AddTab("Player", "person-standing"),
        Settings = lt:AddTab("Settings", "settings")
    }
else
    lt = {
        Main = lv:AddTab("Main", "gamepad-2"),
        Info = lv:AddTab("Info", "info"),
        Settings = lv:AddTab("Settings", "settings"),
        Player = lv:AddTab("Player", "person-standing")
    }
end
lv.Rolling = lv.Main:AddSubTab("Rolling", "dices")
lv.Progress = lv.Main:AddSubTab("Progress", "trending-up")
lv.Crafting = lv.Main:AddSubTab("Crafting", "hammer")
local lu = fn175
for k, v in lv do
    if v ~= lv.Main then
        lu(v)
    end
end
kr, rN_9, lt, Label, j1, ld_2 = nil, nil, nil, nil, nil, nil
local rN_4_5 = 6
repeat
    lu = (rN_4_5 * 1 + 1) % 3 + 1
    if lu <= 2 then
        if lu <= 1 then
            if rN_4_5 * 123547841 + 1 + 1 <= rN_4_5 * 123547841 + 1 + 1 + 4 then
                ld_2 = #j1 > 18
            else
                j1 = #ld_2 > 18
            end
            rN_4_5 = (rN_4_5 + 7) % 24
        else
            if j1 or rN_4_5 or not j1 and j1 or (rN_4_5 and not j1 or not j1 and j1) or (j1 and not j1 or (rN_4_5 or j1)) and ((rN_4_5 or j1) and (j1 and not j1)) or not (j1 or rN_4_5 or not j1 and j1 or (rN_4_5 and not j1 or not j1 and j1) or (j1 and not j1 or (rN_4_5 or j1)) and ((rN_4_5 or j1) and (j1 and not j1))) then
                kr = "Unknown"
                pcall(fn695)
                rN_9 = lv.Info:AddLeftGroupbox("Account", "circle-user")
                rN_9:AddLabel(kD("User", LocalPlayer.Name, lh), true)
                rN_9:AddLabel(kD("Status", "Keyless", lh), true)
                rN_9:AddLabel(kD("Executor", kr, lh), true)
                lt = lv.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                lt:AddLabel(kL(lk .. " [" .. tostring(game.PlaceId) .. "]", lg), true)
                lt:AddLabel(kD("Place ID", tostring(game.PlaceId), lg), true)
                Label = lt:AddLabel(kD("Session time", "0s", km), true)
            else
                km = "Unknown"
                pcall(fn695)
                lv = kr.Info:AddLeftGroupbox("Account", "circle-user")
                lv:AddLabel(rN_9("User", Label.Name, LocalPlayer), true)
                lv:AddLabel(rN_9("Status", "Keyless", LocalPlayer), true)
                lv:AddLabel(rN_9("Executor", km, LocalPlayer), true)
                lk = kr.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                lk:AddLabel(kD(kL .. " [" .. tostring(game.PlaceId) .. "]", lt), true)
                lk:AddLabel(rN_9("Place ID", tostring(game.PlaceId), lt), true)
                lh = lk:AddLabel(rN_9("Session time", "0s", lg), true)
            end
            rN_4_5 = (rN_4_5 + 1) % 24
        end
    else
        local sc = bit32.rrotate(bit32.bxor(bit32.lrotate(rN_4_5, 19), string.byte(tostring(ld_2))), 15)
        if bit32.bxor(bit32.lrotate(bit32.bxor(sc, 1540006242), 14), 2824378098) == bit32.lrotate(sc, 14) then
            j1 = tostring(game.JobId)
        else
            lt = tostring(game.JobId)
        end
        rN_4_5 = (rN_4_5 + 1) % 24
    end
until (rN_4_5 * 7 + 21) % 24 == 6
if ld_2 then
    rN_9 = 0
    repeat
        local rN_4_6 = (vector.create((rN_9 * 7 + 7) % 11 + 1, (rN_9 * 5 + 12) % 13 + 1, (rN_9 * 1 + 13) % 17 + 1))
        lu = (vector.create((rN_9 * 5 + 2) % 11 + 1, (rN_9 * 5 + 5) % 13 + 1, (rN_9 * 7 + 1) % 17 + 1))
        lw = (vector.create((rN_9 * 3 + 8) % 11 + 1, (rN_9 * 1 + 2) % 13 + 1, (rN_9 * 11 + 14) % 17 + 1))
        lx = (vector.create((rN_9 * 2 + 5) % 5 + 1, (rN_9 * 3 + 6) % 7 + 1, (rN_9 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(rN_4_6, (vector.cross(lu, lw))), lx) == vector.dot(lu * vector.dot(rN_4_6, lw) - lw * vector.dot(rN_4_6, lu), lx) + 1 then
            j1 = string.sub(ld_2, 1, 18) .. "..."
        else
            ld_2 = string.sub(j1, 1, 18) .. "..."
        end
        rN_9 = (rN_9 + 0) % 4
    until (rN_9 * 1 + 3) % 4 == 3
end
rN_9 = ld_2 or j1
kS, UpgradesGroup, k0, kk, kh, connection, connection2, kn, k9, ky, kc, k5, kw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local lK = rN_9
lt:AddLabel(kD("Server", lK, lf), true)
lt:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kS = os.clock()
task.spawn(worker2)
local ScriptsGroup = lv.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kL("Included in this hub", lf), true)
ScriptsGroup:AddLabel(kL(lk, lg), true)
local FeaturesGroup = lv.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kL("Auto Roll", lg), true)
FeaturesGroup:AddLabel(kL("Auto Rebirth", km), true)
FeaturesGroup:AddLabel(kL("Auto Upgrade / Unlock Slots", lh), true)
FeaturesGroup:AddLabel(kL("Auto Craft", lg), true)
FeaturesGroup:AddLabel(kL("Misc Utilities", lf), true)
local SocialsGroup = lv.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kT })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = lv.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kT })
local rN_4_7 = lv.Info:AddRightGroupbox("Donations", "heart")
rN_4_7:AddLabel(kL("All donations are optional but appreciated.", km), true)
rN_4_7:AddLabel(kL("If you donate you get a special role, just PING after you donate.", lh), true)
rN_4_7:AddDivider()
rN_4_7:AddLabel(kL("LTC / Litecoin", lr), true)
rN_4_7:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
rN_4_7:AddLabel(kL("BTC / Bitcoin", lq), true)
rN_4_7:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
rN_4_7:AddLabel(kL("ETH / Ethereum", lp), true)
rN_4_7:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
rN_4_7:AddLabel(kL("USDT", lo), true)
rN_4_7:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
rN_4_7:AddLabel(kL("Solana", ln), true)
rN_4_7:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
rN_4_7:AddLabel(kL("PayPal", lm), true)
rN_4_7:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
rN_4_7:AddLabel(kL("Venmo", ll), true)
rN_4_7:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
rN_4_7:AddDivider()
rN_4_7:AddLabel(kL("Don't have any of the listed currencies but still wanna donate?", lf), true)
rN_4_7:AddLabel(kL("DM me and we'll work something out.", lg), true)
local FaqGroup = lv.Info:AddRightGroupbox("FAQ", "circle-help")
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
local RouletteGroup = lv.Rolling:AddLeftGroupbox("Roulette", "dices")
RouletteGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
RouletteGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.3, Min = 0, Max = 3, Rounding = 2 })
local EquipGroup = lv.Rolling:AddRightGroupbox("Equip", "star")
EquipGroup:AddToggle("AutoPlaceBest", { Text = "Auto Place Best", Default = false })
EquipGroup:AddSlider("PlaceBestDelay", { Text = "Place Best Delay", Default = 1, Min = 0.1, Max = 10, Rounding = 1 })
local RebirthGroup = lv.Progress:AddLeftGroupbox("Rebirth", "rotate-ccw")
if ScriptsGroup and not UpgradesGroup and (not ScriptsGroup or not UpgradesGroup) or UpgradesGroup and ScriptsGroup and (not UpgradesGroup and not ScriptsGroup) or not (ScriptsGroup and not UpgradesGroup and (not ScriptsGroup or not UpgradesGroup) or UpgradesGroup and ScriptsGroup and (not UpgradesGroup and not ScriptsGroup)) then
    RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    RebirthGroup:AddSlider("RebirthSaves", { Text = "Chiikawas To Save", Default = 2, Min = 2, Max = 3, Rounding = 0 })
    UpgradesGroup = lv.Progress:AddRightGroupbox("Upgrades", "arrow-big-up")
else
    UpgradesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    UpgradesGroup:AddSlider("RebirthSaves", { Text = "Chiikawas To Save", Default = 2, Rounding = 0, Max = 3, Min = 2 })
    lv = RebirthGroup.Progress:AddRightGroupbox("Upgrades", "arrow-big-up")
end
UpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
UpgradesGroup:AddDropdown("UpgradeChoice", { Text = "Upgrades To Buy", Values = lj, Default = {}, Multi = true, AllowNull = true })
local BaseGroup = lv.Progress:AddLeftGroupbox("Base", "grid-2x2")
BaseGroup:AddToggle("AutoUnlockSlots", { Text = "Auto Unlock Slots", Default = false })
local CraftGroup = lv.Crafting:AddLeftGroupbox("Craft", "hammer")
CraftGroup:AddToggle("AutoCraft", { Text = "Auto Craft", Default = false })
CraftGroup:AddDropdown("CraftRecipe", { Text = "Recipe", Values = li, Default = li[1] })
CraftGroup:AddDropdown("CraftVariant", { Text = "Variant", Values = rN_13, Default = "Normal" })
lx = lv.Player:AddLeftGroupbox("Movement", "footprints")
lx:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
lx:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
lx:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
lx:AddToggle("NoClip", { Text = "NoClip", Default = false })
lx:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
lw = lv.Player:AddRightGroupbox("Fly", "feather")
lw:AddToggle("Fly", { Text = "Fly", Default = false })
lw:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
kn = function(eT)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not eT)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not eT
        end
    end)
    if not eT then
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
Toggles.AntiGameplayPause:OnChanged(fn213)
Toggles.Fly:OnChanged(fn541)
Toggles.WalkSpeedEnabled:OnChanged(fn740)
Toggles.AutoPlaceBest:OnChanged(fn563)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
k0 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
lu = lv.Settings:AddLeftGroupbox("Menu")
lu:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ke.ToggleKeybind = Options.MenuKeybind
kk = tick()
kh = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qs = v
        pcall(function()
            qs:Disable()
        end)
    end
end)
k9 = fn441
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
lu:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lu:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(ke)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
SaveManager:SetLibrary(ke)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/roll-for-chiikawa")
local lE = SaveManager:BuildConfigSection(lv.Settings)
if (FaqGroup and not ScriptsGroup or k9 and FaqGroup or k0 and lE and (kh or not kh)) and not (FaqGroup and not ScriptsGroup or k9 and FaqGroup or k0 and lE and (kh or not kh)) then
    kc = fn525
else
    ky = fn525
end
kc = fn830
k5 = fn10
kw = function(gp)
    local q2
    q2 = nil
    local q3 = type(gp) ~= "table" or type(gp.idx) ~= "string" or type(gp.type) ~= "string"
    local q7 = if q3 then 1 else 0
    local q5 = 1831 * q7 + 2415 * (1 - q7)
    local q6 = 3586 * q7 + 2082 * (1 - q7)
    if not ((q5 * 1806 + q6 * 13 + q5 * q6) % 16777213 == 9919370) then
        q3 = SaveManager.Ignore[gp.idx]
    end
    if q3 then
        return false
    end
    q2 = ky(gp.type, gp.idx)
    if not q2 then
        return false
    end
    local q3_1 = pcall(function()
        if gp.type == "Input" then
            if type(gp.text) ~= "string" then
                return
            end
            q2:SetValue(gp.text)
        elseif gp.type == "ColorPicker" then
            q2:SetValueRGB(Color3.fromHex(gp.value), gp.transparency)
        elseif gp.type == "KeyPicker" then
            q2:SetValue({ gp.key, gp.mode, gp.modifiers })
            if gp.mode == "Toggle" and gp.toggled ~= nil then
                q2.Toggled = gp.toggled
                q2:Update()
            end
        else
            q2:SetValue(gp.value)
        end
    end)
    return q3_1
end
lE:AddDivider()
lE:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
lE:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
lE:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
ThemeManager:ApplyToTab(lv.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(rollDelayLoop)
task.spawn(rebirthSavesLoop)
task.spawn(worker3)
task.spawn(placeBestDelayLoop)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker4)
ke:OnUnload(fn882)
ke:Notify(lk .. " loaded")
