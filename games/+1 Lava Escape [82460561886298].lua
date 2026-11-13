local fns = {}
local kC
local ki
local k0
local j_
local kI
local ko
local k6
local j5
local LocalPlayer
local kv
local lc
local RebirthFormula
local kB
local SaveManager
local k_
local jZ
local kH
local kn
local UserInputService
local j4
local kN
local RequestRebirth
local lb
local ka
local kT
local kA
local kg
local HttpService
local jY
local kG
local km
local k4
local j3
local kM
local ks
local la
local j9
local kS
local kz
local kf
local connection
local jX
local kl
local VirtualUser
local j2
local k9
local Options
local ScreamClicked
local ke
local kE
local kk
local k2
local j1
local kK
local kq
local k8
local j7
local Workspace
local kx
local Toggles
local kW
local kj
local k1
local connection2
local Library
local Label
local LevelFormula
local kP
local kw
local kc
local kV
function fns.fn6()
    connection:Disconnect()
    connection2:Disconnect()
    kj(false)
end
function fns.worker7()
    while not Library.Unloaded do
        if k1("AutoBuyBestScream") then
            pcall(kn)
        end
        task.wait(kw("ScreamBuyDelay", 1))
    end
end
function fns.onCopyVenmoLink()
    j3(j4, "Copied Venmo link")
end
function fns.fn69()
    kj(Toggles.AntiGameplayPause.Value)
end
function fns.fn80(aQ, aR)
    local mj = Options[aQ]
    local mk = mj and tonumber(mj.Value)
    if mk then
        return mk
    end
    return aR
end
function fns.onCopyJoinScript_JobID()
    local eE = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, k6)
    j3(eE, "Copied join script to clipboard")
end
local function fn92(bH)
    local mO_1
    local mP_1
    if type(bH) ~= "string" then
        return nil
    end
    mP_1, mO_1 = bH:match("([%d%.]+)%s*([KkMm]?)")
    local mP_2 = tonumber(mP_1)
    if not mP_2 then
        return nil
    end
    if mO_1 == "K" or mO_1 == "k" then
        mP_2 *= 1000
    else
        local mQ_1 = mO_1 == "m"
        local mR_1 = mO_1 == "M"
        local mV = if mR_1 then 1 else 0
        local mT = 3158 * mV + 3518 * (1 - mV)
        local mU = 534 * mV + 1063 * (1 - mV)
        if not ((mT * 2240 + mU * 2876 + mT * mU) % 16777213 == 10296076) then
            mR_1 = mQ_1
        end
        if mR_1 then
            mP_2 *= 1000000
        end
    end
    return mP_2
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local pf_1 = j5()
        if pf_1 then
            pf_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn117(I, J)
    if I.Multiplier == J.Multiplier then
        return I.RequiredRebirths < J.RequiredRebirths
    end
    return I.Multiplier < J.Multiplier
end
local function onExportConfigToClipboard()
    local qf_1
    local qe_1
    qe_1, qf_1 = pcall(HttpService.JSONEncode, HttpService, jZ())
    if not qe_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local qe_2 = setclipboard or toclipboard
    local qe_3 = type(qe_2) ~= "function" or not pcall(qe_2, qf_1)
    if qe_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn135(en)
    local DiscordGroup = en:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = k9 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = k9 })
end
local function fn149(cH)
    local nz = k0()
    local nA = nz and nz:FindFirstChild("TrainingZones")
    local nz_1 = nA
    if nA then
        nA = nz_1:FindFirstChild(cH)
    end
    local nz_2 = nA
    if not nz_2 then
        return nil
    end
    local Hitbox = nz_2:FindFirstChild("Hitbox")
    local nB = Hitbox and Hitbox:IsA("BasePart")
    if nB then
        return Hitbox
    end
    local Main = nz_2:FindFirstChild("Main")
    local nB_1 = Main and Main:IsA("BasePart")
    if nB_1 then
        return Main
    end
    return nz_2:FindFirstChildWhichIsA("BasePart", true)
end
local function fn150()
    local no = kG()
    local np = -1
    local nq
    for i, v in ipairs(k8) do
        if v.RequiredRebirths <= no and v.Multiplier >= np then
            nq = v
            np = v.Multiplier
        end
    end
    return nq
end
local function fn156()
    local nG = j_()
    if not nG then
        return
    end
    local nH = kS(nG.Name)
    if not nH then
        if Workspace.StreamingEnabled then
            local nI_1 = k0() and k0():FindFirstChild("Spawn")
            local nJ = nI_1
            if nI_1 then
                nI_1 = nJ:IsA("BasePart")
            end
            if nI_1 then
                kM(nJ.Position, 3)
            end
            nH = kS(nG.Name)
        end
        if not nH then
            return
        end
    end
    local nG_1 = la()
    if not nG_1 or (nG_1.Position - nH.Position).Magnitude > 6 then
        k2(nH.CFrame + Vector3.new(0, 3, 0))
    end
end
local function fn161(a4)
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(a4)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = a4
        end
    end
end
local function fn162(c7)
    local Upgrades = LocalPlayer:FindFirstChild("Upgrades")
    local nM = Upgrades and Upgrades:FindFirstChild(tostring(c7)) ~= nil
    return nM
end
local function fn164()
    local Character = LocalPlayer.Character
    local mq = Character and Character:FindFirstChildOfClass("Humanoid")
    return mq
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local o4_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if o4_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1)
        if k1("AntiGameplayPause") then
            kj(true)
        end
    end
end
local function fn233(b8, b9)
    local m4 = os.clock()
    local m6 = m4 + (b9 or 5)
    local m4_1 = kV(b8)
    if m4_1 then
        return m4_1
    end
    local m5_1 = kv[b8]
    if m5_1 then
        local min = math.min
        local m8_1 = b9 or 5
        kM(m5_1, min(m8_1, 5))
    else
        local m5_2 = k0() and k0():FindFirstChild("Spawn")
        local m7_2 = m5_2
        if m5_2 then
            m5_2 = m7_2:IsA("BasePart")
        end
        if m5_2 then
            local m5_3 = m7_2.Position + Vector3.new(0, 0, 40 * b8)
            local min = math.min
            local m9 = b9
            local ng = if m9 then 1 else 0
            local ne = 3673 * ng + 2006 * (1 - ng)
            local nf = 1122 * ng + 916 * (1 - ng)
            if not ((ne * 2915 + nf * 3916 + ne * nf) % 16777213 == 2444440) then
                m9 = 5
            end
            kM(m5_3, min(m9, 5))
        end
    end
    while true do
        local m5_4 = os.clock() < m6 and not Library.Unloaded
        if m5_4 then
            local m4_2 = kV(b8)
            if m4_2 then
                return m4_2
            end
            task.wait(0.1)
            continue
        end
        break
    end
    return kV(b8)
end
local function worker()
    local oP_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local oO = math.floor(os.clock() - kP)
        if oO < 60 then
            oP_1 = oO .. "s"
        elseif oO < 3600 then
            oP_1 = string.format("%dm %ds", oO // 60, oO % 60)
        else
            oP_1 = string.format("%dh %dm", oO // 3600, oO % 3600 // 60)
        end
        Label:SetText(kW("Session time", oP_1, kA))
    end
end
local function onInputBegan()
    kk = tick()
end
local function onUnload()
    Library:Unload()
end
local function onCopyUSDTAddress()
    j3(ki, "Copied USDT address")
end
local function fn313()
    pcall(function()
        ScreamClicked:FireServer()
    end)
end
local function fn322()
    local oK_1
    local oJ_1
    if identifyexecutor then
        oK_1, oJ_1 = identifyexecutor()
        local oL = oK_1 ~= ""
        local oM = type(oK_1) == "string" and oL
        if oM then
            local oL_1 = type(oJ_1) == "string" and oJ_1 ~= "" and oK_1 .. " " .. oJ_1
            kc = oL_1 or oK_1
        end
    end
end
local function fn323(bV)
    local mZ = k0()
    local m_ = mZ and mZ:FindFirstChild("Stages")
    local mZ_1 = m_
    if m_ then
        m_ = mZ_1:FindFirstChild("Stage" .. bV)
    end
    local mZ_2 = m_
    if m_ then
        m_ = mZ_2:FindFirstChild("Wins")
    end
    local mZ_3 = m_
    if m_ then
        m_ = mZ_3:FindFirstChild("Main")
    end
    local mZ_4 = m_
    if m_ then
        m_ = mZ_4:IsA("BasePart")
    end
    if m_ then
        kv[bV] = mZ_4.Position
        return mZ_4
    end
    return nil
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if k1("AntiAfk") then
            local qs = tick() - kk
            local qt = tick() - kg
            if qs >= 300 and qt >= 60 then
                pcall(jY)
            else
                if qs < 300 and qt >= 300 then
                    pcall(jY)
                end
            end
        end
    end
end
local function onCopyLitecoinAddress()
    j3(ks, "Copied Litecoin address")
end
local function onCopyEthereumAddress()
    j3(km, "Copied Ethereum address")
end
local function fn362(gt, gu)
    local Type = gu.Type
    if Type == "Toggle" then
        return { idx = gt, type = "Toggle", value = gu.Value == true }
    elseif Type == "Slider" then
        return { idx = gt, type = "Slider", value = tostring(gu.Value) }
    elseif Type == "Dropdown" then
        return { idx = gt, type = "Dropdown", multi = gu.Multi == true, value = gu.Value }
    elseif Type == "Input" then
        local pM = gu.Value or ""
        return { idx = gt, type = "Input", text = tostring(pM) }
    elseif Type == "ColorPicker" then
        return { idx = gt, type = "ColorPicker", value = gu.Value:ToHex(), transparency = gu.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gt,
            type = "KeyPicker",
            mode = gu.Mode,
            key = gu.Value,
            modifiers = gu.Modifiers,
            toggled = gu.Toggled
        }
    else
        return nil
    end
end
local function fn370(aG)
    local ma = Toggles[aG]
    return ma ~= nil and ma.Value == true
end
local function fn379(aL)
    local md = Options[aL]
    local md_1 = md and md.Value
    local mi = if md_1 then 1 else 0
    local mg = 720 * mi + 922 * (1 - mi)
    local mh = 1555 * mi + 2909 * (1 - mi)
    if not ((mg * 1345 + mh * 3065 + mg * mh) % 16777213 == 6854075) then
        md_1 = nil
    end
    return md_1
end
local function fn386(Z, aa)
    if setclipboard then
        setclipboard(Z)
    elseif toclipboard then
        toclipboard(Z)
    end
    Library:Notify(aa)
end
local function fn394()
    return lc("Wins")
end
local function fn415(aj, ak, al)
    return string.format("<b>%s</b> %s %s", aj, k4("-", "#5a6070"), k4(ak, al))
end
local function fn452()
    return lc("Rebirths")
end
local function fn453()
    local oE = RebirthFormula.RequiredLevel(kG())
    local oI = if kB() >= oE then 1 else 0
    if oI == 1 then
        pcall(function()
            RequestRebirth:FireServer()
        end)
    end
end
local function onCopyBitcoinAddress()
    j3(kq, "Copied Bitcoin address")
end
local function onInputChanged(ge)
    local UserInputType = ge.UserInputType
    local pC = UserInputType == Enum.UserInputType.MouseMovement
    local pG = if pC then 1 else 0
    local pE = 1342 * pG + 2910 * (1 - pG)
    local pF = 1761 * pG + 867 * (1 - pG)
    if not ((pE * 3650 + pF * 2845 + pE * pF) % 16777213 == 12271607) then
        pC = UserInputType == Enum.UserInputType.Gamepad1
    end
    if pC then
        kk = tick()
    end
end
local function fn500(gl, gm)
    local pI_1 = (gl == "Toggle" and Toggles or Options)[gm]
    local pH_2 = type(pI_1) == "table" and pI_1.Type == gl
    return pH_2 and pI_1 or nil
end
local function fn502()
    if not Toggles.WalkSpeedEnabled.Value then
        local o2 = j5()
        if o2 then
            o2.WalkSpeed = 16
        end
    end
end
local function fn545()
    local pP = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local pQ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if pQ then
                local pQ_1 = ka(k, v)
                if pQ_1 then
                    pP[#pP + 1] = pQ_1
                end
            end
        end
    end
    table.sort(pP, function(gH, gI)
        if gH.type ~= gI.type then
            return gH.type < gI.type
        end
        return gH.idx < gI.idx
    end)
    return { objects = pP }
end
local function onRscripts()
    j3(kE, "Copied Rscripts profile to clipboard")
end
local function onCopyPayPalLink()
    j3(j9, "Copied PayPal link")
end
local function worker9()
    while not Library.Unloaded do
        if k1("AutoRebirth") then
            pcall(k_)
        end
        task.wait(kw("RebirthDelay", 1))
    end
end
local function fn578(O, P)
    if O.Boost == P.Boost then
        return O.Cost < P.Cost
    end
    return O.Boost < P.Boost
end
local function fn610()
    if not Toggles.Fly.Value then
        local oY = j5()
        if oY then
            oY.PlatformStand = false
        end
    end
end
local function onRenderStepped(fL)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local pk_1 = j5()
        if pk_1 then
            pk_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local pk_3 = la()
        local pl = j5()
        lb = Workspace.CurrentCamera or lb
        if pk_3 and pl and lb then
            pl.PlatformStand = true
            local pl_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                pl_1 = pl_1 + lb.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                pl_1 = pl_1 - lb.CFrame.LookVector
            end
            local pr = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if pr == 1 then
                pl_1 = pl_1 - lb.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                pl_1 = pl_1 + lb.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                pl_1 = pl_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                pl_1 = pl_1 - Vector3.new(0, 1, 0)
            end
            pk_3.Velocity = Vector3.zero
            if pl_1.Magnitude > 0 then
                pk_3.CFrame = pk_3.CFrame + pl_1.Unit * Options.FlySpeed.Value * fL
            end
        end
    end
end
local function fn653()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kg = tick()
end
local function fn655()
    return Workspace:FindFirstChild("Game")
end
local function worker8()
    while not Library.Unloaded do
        if k1("AutoBuyAuras") then
            pcall(ko)
        end
        task.wait(kw("AuraDelay", 1))
    end
end
local function onCopySolanaAddress()
    j3(ke, "Copied Solana address")
end
local function fn673()
    local mW = kK("WinPlate")
    if type(mW) == "string" then
        local mX = tonumber(mW:match("%d+"))
        if mX then
            return math.clamp(mX, 1, j1)
        end
        return 1
    end
    return 1
end
local function fn679(ag, ah)
    return string.format('<font color="%s">%s</font>', ah, ag)
end
local function fn682()
    local nh = jX()
    local ni = j7(nh, 5)
    if not ni then
        return
    end
    local nh_1 = kT()
    k2(ni.CFrame + Vector3.new(0, 3, 0))
    local ni_1 = os.clock() + math.max(kw("WinDelay", 0.35), 0.2)
    while true do
        if os.clock() < ni_1 then
            local nj = Library.Unloaded or not k1("AutoWin")
            if nj then
                break
            end
            local nn = if kT() > nh_1 then 1 else 0
            if nn == 1 then
                return
            end
            task.wait(0.05)
            continue
        end
        return
    end
    return
end
local function fn712(bp)
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mI = leaderstats and leaderstats:FindFirstChild(bp)
    local mH_1 = mI
    if mI then
        local mJ = tonumber(mH_1.Value) or 0
        mI = mJ
    end
    return mI or 0
end
local function fn742()
    local Character = LocalPlayer.Character
    local mt = Character and Character:FindFirstChild("HumanoidRootPart")
    return mt
end
local function worker4()
    while not Library.Unloaded do
        if k1("AutoWin") then
            pcall(kI)
        else
            task.wait(0.25)
        end
    end
end
local function fn782(dc)
    local nR = k0()
    local nS = nR and nR:FindFirstChild("UpgradeShop")
    local nR_1 = nS
    if nS then
        nS = nR_1:FindFirstChild("Purchase")
    end
    local nR_2 = nS
    if nS then
        nS = nR_2:FindFirstChild(tostring(dc))
    end
    return nS
end
local function worker5()
    while not Library.Unloaded do
        if k1("AutoClick") then
            j2()
        end
        task.wait(kw("ClickDelay", 0.17))
    end
end
local function fn794()
    j3(kH, "Copied Discord invite to clipboard")
end
local function fn797()
    return lc("Screams")
end
local function fn810(dX)
    local Auras = LocalPlayer:FindFirstChild("Auras")
    local oq = Auras and Auras:FindFirstChild(dX) ~= nil
    return oq
end
local function fn831(dl)
    local nX = kz[dl]
    local nZ = nX and nX.Wins or math.huge
    local nY_1 = nX
    local n_ = nZ
    if nY_1 then
        nY_1 = nX.Mult
    end
    local nY_2 = nY_1 or 0
    local nX_2 = kx(dl)
    if nX_2 then
        local ShopGui = nX_2:FindFirstChild("ShopGui", true)
        local n0 = ShopGui and ShopGui:FindFirstChild("Wins_Label", true)
        local n1 = ShopGui
        if n1 then
            n1 = ShopGui:FindFirstChild("Multiplier_Label", true)
        end
        local nZ_2 = n1
        if n0 then
            local n0_1 = kl(n0.Text)
            if n0_1 then
                n_ = n0_1
            end
        end
        if nZ_2 then
            local n0_2 = nZ_2.Text or ""
            local nZ_3 = kl(n0_2:gsub("^%+", ""):gsub("/Scream", ""))
            if nZ_3 then
                nY_2 = nZ_3
            end
        end
    end
    return n_, nY_2, nX_2
end
local function worker6()
    while not Library.Unloaded do
        if k1("AutoTrain") then
            pcall(kf)
        end
        task.wait(kw("TrainDelay", 0.25))
    end
end
local function onImportConfigFromClipboardTex()
    local qk_1
    local qi = Options.SaveManager_ImportSource.Value or ""
    local qi_1
    local qj = tostring(qi):match("^%s*(.-)%s*$")
    if qj == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    qi_1, qk_1 = pcall(HttpService.JSONDecode, HttpService, qj)
    local qj_1 = not qi_1 or type(qk_1) ~= "table" or type(qk_1.objects) ~= "table"
    if qj_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local qi_2 = 0
    for i, v in ipairs(qk_1.objects) do
        if kC(v) then
            qi_2 += 1
        end
    end
    if qi_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local qk_2 = qi_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(qi_2, qk_2), 6)
end
local function fn883()
    local mL = LevelFormula.GetLevelInfo(kN())
    local mM = mL and tonumber(mL.Level)
    return mM or 0
end
jX = nil
jY = nil
jZ = nil
j_ = nil
j1 = nil
j2 = nil
j3 = nil
j4 = nil
j5 = nil
LevelFormula = nil
j7 = nil
Options = nil
j9 = nil
ka = nil
RebirthFormula = nil
kc = nil
Toggles = nil
ke = nil
kf = nil
kg = nil
SaveManager = nil
ki = nil
kj = nil
kk = nil
kl = nil
km = nil
kn = nil
ko = nil
Library = nil
kq = nil
ks = nil
RequestRebirth = nil
kv = nil
kw = nil
kx = nil
ScreamClicked = nil
kz = nil
kA = nil
kB = nil
kC = nil
kE = nil
kG = nil
kH = nil
kI = nil
connection2 = nil
kK = nil
local j0, RequestAura, kD, kF
kM = nil
kN = nil
LocalPlayer = nil
kP = nil
Workspace = nil
kS = nil
kT = nil
kV = nil
kW = nil
connection = nil
HttpService = nil
k_ = nil
k0 = nil
k1 = nil
k2 = nil
VirtualUser = nil
k4 = nil
UserInputService = nil
k6 = nil
Label = nil
k8 = nil
k9 = nil
la = nil
lb = nil
lc = nil
local kL, kR, CoreGui, GuiService, lt
kL = nil
kR = nil
CoreGui = nil
GuiService = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, kH, kE, ScreamClicked, RequestRebirth, RequestAura, RebirthFormula, LevelFormula = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local qJ_10 = game:GetService("Players")
local lh = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = qJ_10.LocalPlayer
local ll = "+1 Scream Per Click"
kH = "https://discord.gg/ehKVq7pf7v"
kE = "https://rscripts.net/@Ouroboros"
local qJ_3 = lh:WaitForChild("Remotes")
ScreamClicked = qJ_3:WaitForChild("ScreamClicked")
RequestRebirth = qJ_3:WaitForChild("RequestRebirth")
RequestAura = qJ_3:WaitForChild("RequestAura")
local qJ_4 = lh:WaitForChild("Modules")
local lj = require(qJ_4:WaitForChild("TrainingZoneConfig"))
local lk = require(qJ_4:WaitForChild("AuraConfig"))
RebirthFormula = require(qJ_4:WaitForChild("RebirthFormula"))
LevelFormula = require(qJ_4:WaitForChild("LevelFormula"))
local li = require(qJ_4:WaitForChild("StageWallFormula"))
qJ_10 = tonumber(li.MAX_STAGE) or 12
local qJ_9 = {}
j1 = qJ_10
local lJ = 1
local lH = j1
while lJ <= lH do
    local lK = lJ
    qJ_9[lK] = "Stage " .. lK
    lJ += 1
end
k8, qJ_4 = nil, nil
qJ_10 = 7
repeat
    qJ_3 = (qJ_10 * 1 + 1) % 2 + 1
    if qJ_3 <= 1 then
        if (not k8 and qJ_10 or not qJ_10 and not k8) and (not qJ_4 and qJ_10 or not qJ_4 and not k8) and not ((not k8 and qJ_10 or not qJ_10 and not k8) and (not qJ_4 and qJ_10 or not qJ_4 and not k8)) then
            qJ_4 = {}
        else
            k8 = {}
        end
        qJ_10 = (qJ_10 + 1) % 8
    else
        if (qJ_10 * 2 + 8) * 10 % 3 == ((qJ_10 * 2 + 8) * 10 + 8) % 3 then
            lj = qJ_4.Build()
        else
            qJ_4 = lj.Build()
        end
        qJ_10 = (qJ_10 + 5) % 8
    end
until (qJ_10 * 3 + 7) % 8 == 6
for k, v in pairs(qJ_4) do
    qJ_10 = type(v) == "table" and v.robuxOnly ~= true
    if qJ_10 then
        qJ_10 = #k8 + 1
        qJ_4 = tonumber(v.requiredRebirths) or 0
        qJ_3 = (tonumber(v.multiplier))
        local lU = if qJ_3 then 1 else 0
        local lS = 2709 * lU + 3606 * (1 - lU)
        local lT = 3307 * lU + 1307 * (1 - lU)
        if not ((lS * 3787 + lT * 2260 + lS * lT) % 16777213 == 9914253) then
            qJ_3 = 0
        end
        k8[qJ_10] = { Name = k, RequiredRebirths = qJ_4, Multiplier = qJ_3 }
    end
end
kR, li = nil, nil
lh = 2
repeat
    qJ_10 = (lh * 1 + 1) % 2 + 1
    if qJ_10 <= 1 then
        if (lh * 2 + 6) * 10 % 3 == ((lh * 2 + 6) * 10 + 0) % 3 then
            li = lk.Build()
        else
            lk = li.Build()
        end
        lh = (lh + 5) % 16
    else
        if (lh * 3 + 9) * 21 % 4 == ((lh * 3 + 9) * 21 + 4) % 4 then
            table.sort(k8, fn117)
            kR = {}
        else
            table.sort(kR, fn117)
            k8 = {}
        end
        lh = (lh + 5) % 16
    end
until (lh * 7 + 13) % 16 == 1
for k, v in pairs(li) do
    if type(v) == "table" then
        qJ_10 = #kR + 1
        qJ_4 = v.key or k
        qJ_3 = tostring(qJ_4)
        lh = tonumber(v.cost) or 0
        li = tonumber(v.boost) or 0
        kR[qJ_10] = { Key = qJ_3, Cost = lh, Boost = li }
    end
end
kz, kv, Library, SaveManager, Toggles, Options, lt, kA, ks, kq, km, ki, ke, j9, j4, j3, k9, k4, kW, k1, kK, kw, j5, la, k2, kM, lc, kT, kN, kG, kB, kl, j2, jX, k0, kV, j7, kI, j_, kS, kf, kL, kx, j0, kn, kD, ko, k_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(kR, fn578)
kz = {
    [1] = { Wins = 3, Mult = 2 },
    [2] = { Wins = 10, Mult = 5 },
    [3] = { Wins = 50, Mult = 25 },
    [4] = { Wins = 250, Mult = 50 },
    [5] = { Wins = 1000, Mult = 100 },
    [6] = { Wins = 2500, Mult = 250 },
    [7] = { Wins = 5000, Mult = 500 },
    [8] = { Wins = 10000, Mult = 750 },
    [9] = { Wins = 25000, Mult = 1000 },
    [10] = { Wins = 100000, Mult = 2500 },
    [11] = { Wins = 250000, Mult = 5000 },
    [12] = { Wins = 500000, Mult = 10000 }
}
kv = {}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
j3 = fn386
k9 = fn794
k4 = fn679
kW = fn415
if "#6ec1ff" and ((false or kz) and (not kz and ki)) and not ("#6ec1ff" and ((false or kz) and (not kz and ki))) then
    kv = "#7fd47f"
else
    lt = "#7fd47f"
end
local ls = "#6ec1ff"
kA = "#e8a34d"
local lr = "#8b93a3"
ks = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
kq = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
km = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ki = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ke = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
j9 = "https://paypal.me/TheTruckerGOD"
j4 = "https://venmo.com/u/miserablemusic"
local lq = "#345d9d"
local lp = "#f7931a"
local lo = "#627eea"
local lx = "#26a17b"
local lw = "#14f195"
local lv = "#0070ba"
local lu = "#008cff"
k1 = fn370
kK = fn379
kw = fns.fn80
j5 = fn164
la = fn742
k2 = fn161
kM = function(a9, ba)
    local mD
    if typeof(a9) ~= "Vector3" then
        return
    end
    if not Workspace.StreamingEnabled then
        return
    end
    mD = false
    task.spawn(function()
        pcall(function()
            local my = ba
            local mC = if my then 1 else 0
            local mA = 4077 * mC + 912 * (1 - mC)
            local mB = 979 * mC + 2905 * (1 - mC)
            if not ((mA * 2788 + mB * 3544 + mA * mB) % 16777213 == 2050422) then
                my = 5
            end
            LocalPlayer:RequestStreamAroundAsync(a9, my)
        end)
        mD = true
    end)
    local mE = os.clock()
    local mE_1 = mE + (ba or 5) + 0.25
    while true do
        local mF_1 = not mD and os.clock() < mE_1 and not Library.Unloaded
        if mF_1 then
            task.wait()
            continue
        end
        break
    end
end
lc = fn712
kT = fn394
kN = fn797
kG = fn452
kB = fn883
kl = fn92
j2 = fn313
jX = fn673
k0 = fn655
kV = fn323
j7 = fn233
kI = fn682
j_ = fn150
kS = fn149
kf = fn156
kL = fn162
kx = fn782
j0 = fn831
kn = function()
    local oe_1
    local od_1
    local oc_1
    local n8 = kT()
    local n9
    local ob = -1
    local oj = 1
    while oj <= 12 do
        local ok = oj
        if not kL(ok) then
            oc_1, od_1, oe_1 = j0(ok)
            if oe_1 and oc_1 <= n8 and od_1 > ob then
                ob = od_1
                n9 = oe_1
            end
        end
        oj += 1
    end
    if not n9 then
        return
    end
    local n8_1 = n9:FindFirstChild("Interaction") or n9:FindFirstChild("Main")
    local oa = n8_1
    if n8_1 then
        n8_1 = oa:IsA("BasePart")
    end
    if n8_1 then
        k2(oa.CFrame + Vector3.new(0, 3, 0))
        task.wait(0.15)
    end
    local ProximityPrompt = n9:FindFirstChildWhichIsA("ProximityPrompt", true)
    if ProximityPrompt and fireproximityprompt then
        pcall(function()
            fireproximityprompt(ProximityPrompt)
        end)
    end
end
kD = fn810
ko = function()
    local ou
    local ov = kT()
    ou = nil
    for i, v in ipairs(kR) do
        local ow = not kD(v.Key) and v.Cost <= ov
        if ow then
            if not ou or v.Boost > ou.Boost then
                ou = v
            end
        end
    end
    if not ou then
        return
    end
    pcall(function()
        RequestAura:FireServer(ou.Key)
    end)
end
k_ = fn453
lk = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kH, Copyable = true }, "|", ll },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local lz = {
    Info = lk:AddTab("Info", "info"),
    Main = lk:AddTab("Main", "mouse-pointer-click"),
    Shop = lk:AddTab("Shop", "shopping-bag"),
    Player = lk:AddTab("Player", "person-standing"),
    Settings = lk:AddTab("Settings", "settings")
}
local ln = fn135
for k, v in lz do
    ln(v)
end
kc, Label, k6 = nil, nil, nil
kc = "Unknown"
pcall(fn322)
qJ_10 = lz.Info:AddLeftGroupbox("Account", "circle-user")
qJ_10:AddLabel(kW("User", LocalPlayer.Name, lt), true)
qJ_10:AddLabel(kW("Status", "Keyless", lt), true)
qJ_10:AddLabel(kW("Executor", kc, lt), true)
lh = lz.Info:AddLeftGroupbox("Game Info", "gamepad-2")
lh:AddLabel(k4(ll .. " [" .. tostring(game.PlaceId) .. "]", ls), true)
lh:AddLabel(kW("Place ID", tostring(game.PlaceId), ls), true)
Label = lh:AddLabel(kW("Session time", "0s", kA), true)
k6 = tostring(game.JobId)
qJ_3 = #k6 > 18
if qJ_3 then
    qJ_10 = 3
    repeat
        local rD = bit32.rrotate(bit32.bxor(bit32.lrotate(qJ_10, 12), string.byte(tostring(qJ_10))), 9)
        if bit32.bxor(bit32.lrotate(bit32.bxor(rD, 929507538), 0), 929507538) == bit32.lrotate(rD, 0) then
            qJ_3 = string.sub(k6, 1, 18) .. "..."
        else
            k6 = string.sub(qJ_3, 1, 18) .. "..."
        end
        qJ_10 = (qJ_10 + 0) % 8
    until (qJ_10 * 5 + 3) % 8 == 2
end
qJ_10 = qJ_3 or k6
kP = nil
local lB = qJ_10
lh:AddLabel(kW("Server", lB, lr), true)
lh:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
kP = os.clock()
task.spawn(worker)
ln = lz.Info:AddRightGroupbox("Scripts", "package")
ln:AddLabel(k4("Included in this hub", lr), true)
ln:AddLabel(k4(ll, ls), true)
lk = lz.Info:AddRightGroupbox("Features", "list")
lk:AddLabel(k4("Auto Farm", ls), true)
lk:AddLabel(k4("Auto Shop", lt), true)
lk:AddLabel(k4("Auto Progress", kA), true)
lk:AddLabel(k4("Misc Utilities", lr), true)
lj = lz.Info:AddRightGroupbox("Socials", "link")
lj:AddButton({ Text = "Discord", Func = k9 })
lj:AddButton({ Text = "Rscripts", Func = onRscripts })
li = lz.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
li:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
li:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
li:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
li:AddButton({ Text = "Copy Discord Invite", Func = k9 })
qJ_3 = lz.Info:AddRightGroupbox("Donations", "heart")
qJ_3:AddLabel(k4("All donations are optional but appreciated.", kA), true)
qJ_3:AddLabel(k4("If you donate you get a special role, just PING after you donate.", lt), true)
qJ_3:AddDivider()
qJ_3:AddLabel(k4("LTC / Litecoin", lq), true)
qJ_3:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
qJ_3:AddLabel(k4("BTC / Bitcoin", lp), true)
qJ_3:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
qJ_3:AddLabel(k4("ETH / Ethereum", lo), true)
qJ_3:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
qJ_3:AddLabel(k4("USDT", lx), true)
qJ_3:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
qJ_3:AddLabel(k4("Solana", lw), true)
qJ_3:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
qJ_3:AddLabel(k4("PayPal", lv), true)
qJ_3:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
qJ_3:AddLabel(k4("Venmo", lu), true)
qJ_3:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
qJ_3:AddDivider()
qJ_3:AddLabel(k4("Don't have any of the listed currencies but still wanna donate?", lr), true)
qJ_3:AddLabel(k4("DM me and we'll work something out.", ls), true)
local FaqGroup = lz.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = lz.Main:AddLeftGroupbox("Farm", "mouse-pointer-click")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
qJ_10 = qJ_9[1] or "Stage 1"
lb, kk, kg, connection, connection2, kj, jY, kF, ka, jZ, kC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
FarmGroup:AddDropdown("WinPlate", { Text = "Win stage", Values = qJ_9, Default = qJ_10 })
FarmGroup:AddSlider("WinDelay", { Text = "Win delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
FarmGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
FarmGroup:AddSlider("ClickDelay", { Text = "Click delay", Default = 0.17, Min = 0.17, Max = 1, Rounding = 2, Suffix = "s" })
FarmGroup:AddToggle("AutoTrain", { Text = "Auto Train based on Rebirth Amount", Default = false })
FarmGroup:AddSlider("TrainDelay", { Text = "Train delay", Default = 0.25, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
lj = lz.Main:AddRightGroupbox("Progress", "rotate-ccw")
lj:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
lj:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
li = lz.Shop:AddLeftGroupbox("Shop", "shopping-bag")
li:AddToggle("AutoBuyBestScream", { Text = "Auto Buy Best Scream", Default = false })
li:AddSlider("ScreamBuyDelay", { Text = "Scream buy delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
li:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
li:AddSlider("AuraDelay", { Text = "Aura delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
qJ_3 = lz.Player:AddLeftGroupbox("Movement", "footprints")
qJ_3:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
qJ_3:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
qJ_3:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
qJ_3:AddToggle("NoClip", { Text = "NoClip", Default = false })
qJ_3:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
qJ_4 = lz.Player:AddRightGroupbox("Fly", "feather")
qJ_4:AddToggle("Fly", { Text = "Fly", Default = false })
qJ_4:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
kj = function(ff)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not ff)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ff
        end
    end)
    if not ff then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn69)
Toggles.Fly:OnChanged(fn610)
Toggles.WalkSpeedEnabled:OnChanged(fn502)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
lb = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
lh = lz.Settings:AddLeftGroupbox("Menu")
lh:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
lh:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lh:AddButton("Unload", onUnload)
kk = tick()
kg = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local py = v
        pcall(function()
            py:Disable()
        end)
    end
end)
jY = fn653
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(lz.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/plus1-scream-per-click")
ll = SaveManager:BuildConfigSection(lz.Settings)
if kk and qJ_4 or qJ_4 and not connection or (lb or qJ_4) and (not qJ_4 and not connection) or (connection or lb) and (connection or qJ_4) and (not ka and not ka and (not connection or not kk)) or not (kk and qJ_4 or qJ_4 and not connection or (lb or qJ_4) and (not qJ_4 and not connection) or (connection or lb) and (connection or qJ_4) and (not ka and not ka and (not connection or not kk))) then
    kF = fn500
    ka = fn362
    jZ = fn545
    kC = function(gK)
        local qb
        qb = nil
        local qc = type(gK) ~= "table" or type(gK.idx) ~= "string" or type(gK.type) ~= "string" or SaveManager.Ignore[gK.idx]
        if qc then
            return false
        end
        qb = kF(gK.type, gK.idx)
        if not qb then
            return false
        end
        local qc_2 = pcall(function()
            if gK.type == "Input" then
                if type(gK.text) ~= "string" then
                    return
                end
                qb:SetValue(gK.text)
            elseif gK.type == "ColorPicker" then
                qb:SetValueRGB(Color3.fromHex(gK.value), gK.transparency)
            elseif gK.type == "KeyPicker" then
                qb:SetValue({ gK.key, gK.mode, gK.modifiers })
                if gK.mode == "Toggle" and gK.toggled ~= nil then
                    qb.Toggled = gK.toggled
                    qb:Update()
                end
            else
                qb:SetValue(gK.value)
            end
        end)
        return qc_2
    end
else
    kC = fn500
    kF = fn362
    ka = fn545
    jZ = function(gK)
        local qb
        qb = nil
        local qc = type(gK) ~= "table" or type(gK.idx) ~= "string" or type(gK.type) ~= "string" or SaveManager.Ignore[gK.idx]
        if qc then
            return false
        end
        qb = kF(gK.type, gK.idx)
        if not qb then
            return false
        end
        local qc_1 = pcall(function()
            if gK.type == "Input" then
                if type(gK.text) ~= "string" then
                    return
                end
                qb:SetValue(gK.text)
            elseif gK.type == "ColorPicker" then
                qb:SetValueRGB(Color3.fromHex(gK.value), gK.transparency)
            elseif gK.type == "KeyPicker" then
                qb:SetValue({ gK.key, gK.mode, gK.modifiers })
                if gK.mode == "Toggle" and gK.toggled ~= nil then
                    qb.Toggled = gK.toggled
                    qb:Update()
                end
            else
                qb:SetValue(gK.value)
            end
        end)
        return qc_1
    end
end
ll:AddDivider()
ll:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
ll:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
ll:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(fns.worker7)
task.spawn(worker8)
task.spawn(worker9)
Library:OnUnload(fns.fn6)
Library:Notify("+1 Scream Per Click loaded")
