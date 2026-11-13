local fns = {}
local tz_3, tz_4, tz_8, tz_10, tz_13, tz_14, tz_16
local mM
local nt
local na
local nS
local mS
local nz
local ng
local nY
local connection
local nF
local nm
local m3
local container
local mL
local m9
local nR
local mR
local ny
local nf
local nX
local mX
local nE
local nl
local TeleportTag
local m2
local nK
local mK
local CollectionService
local m8
local nQ
local mQ
local __ouroboros_gen
local nW
local Label
local nD
local nk
local n1
local m1
local nJ
local mJ
local connection3
local m7
local VirtualUser
local mP
local nw
local nd
local nV
local mV
local nC
local nj
local n0
local m0
local HttpService
local mI
local np
local m6
local Toggles
local mO
local nv
local nc
local UserInputService
local mU
local n_
local SaveManager
local no
local Library
local nN
local mN
local Workspace
local nb
local Options
local mT
local nA
local nZ
local mZ
local nG
local nn
local m4
local connection2
function fns.onCopyLitecoinAddress()
    nC(n_, "Copied Litecoin address")
end
function fns.fn34()
    return nm:TbMainChallenge():getDataList()
end
function fns.fn62()
    local Character = nk.Character
    local qa = Character and Character:FindFirstChildOfClass("Humanoid")
    return qa
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = nk.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local qH_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if qH_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn89()
    return not Library.Unloaded and ng.__ouroboros_gen == __ouroboros_gen
end
function fns.fn134()
    return nv.Tables:new()
end
function fns.fn160()
    return nn(n1.AtomRebirth)
end
function fns.fn171()
    nC(no, "Copied Discord invite to clipboard")
end
function fns.onCopyBitcoinAddress()
    nC(nW, "Copied Bitcoin address")
end
function fns.fn192()
    if not Toggles.Rebirth.Value then
        task.wait(1)
        return
    end
    local Value = Options.RebirthInterval.Value
    if not mN() then
        task.wait(Value)
        return
    end
    pcall(function()
        local tb = mT() and os.clock() - nz >= 5
        if tb then
            local tb_1 = (nF())
            local tg = if tb_1 then 1 else 0
            local te = 1305 * tg + 3050 * (1 - tg)
            local tf = 462 * tg + 3952 * (1 - tg)
            if not ((te * 2424 + tf * 2679 + te * tf) % 16777213 == 5003928) then
                tb_1 = 0
            end
            local tc = nQ * (tb_1 + 1)
            local tb_2 = mL() or 0
            if tb_2 >= tc then
                nz = os.clock()
                np.rebirth:FireServer()
            end
        end
    end)
    nY()
    task.wait(Value)
end
function fns.fn194()
    task.wait(1)
    if Toggles.AntiGameplayPause.Value then
        m9(true)
    end
end
function fns.onExportConfigToClipboard()
    local r0_1
    local r__1
    r__1, r0_1 = pcall(HttpService.JSONEncode, HttpService, mM())
    if not r__1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local r__2 = setclipboard or toclipboard
    local r__3 = type(r__2) ~= "function" or not pcall(r__2, r0_1)
    if r__3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.onInputBegan()
    m7 = tick()
end
function fns.fn272()
    if mS then
        if os.clock() - mQ > 150 then
            mS = false
            mS = true
            mQ = os.clock()
            return true
        end
        return false
    end
    mS = true
    mQ = os.clock()
    return true
end
function fns.onCopyEthereumAddress()
    nC(nR, "Copied Ethereum address")
end
function fns.onCopyJoinScript_JobID()
    local c6 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mR)
    nC(c6, "Copied join script to clipboard")
end
function fns.fn316(cS)
    local DiscordGroup = cS:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nj })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nj })
end
function fns.fn320()
    local qp_1
    local qo_1
    if identifyexecutor then
        qp_1, qo_1 = identifyexecutor()
        local qq = qp_1 ~= ""
        local qr = type(qp_1) == "string" and qq
        if qr then
            local qq_1 = type(qo_1) == "string" and qo_1 ~= "" and qp_1 .. " " .. qo_1
            nc = qq_1 or qp_1
        end
    end
end
function fns.fn346(f6)
    local sq = os.clock()
    while true do
        if not (os.clock() - sq < f6) then
            return false
        end
        if not m8() then
            return false
        end
        local Character = nk.Character
        local ss = Character and Character:FindFirstChild("HumanoidRootPart")
        if ss then
            break
        end
        task.wait(0.5)
    end
    return true
end
function fns.fn390()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    m2 = tick()
end
function fns.antiAfkLoop()
    while true do
        if not Library.Unloaded and ng.__ouroboros_gen == __ouroboros_gen then
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local tq_1 = tick() - m7
                local tr = tick() - m2
                if tq_1 >= 300 and tr >= 60 then
                    pcall(mP)
                else
                    if tq_1 < 300 and tr >= 300 then
                        pcall(mP)
                    end
                end
            end
            continue
        end
        break
    end
end
function fns.fn425()
    if not Toggles.Fly.Value then
        local qD = na()
        if qD then
            qD.PlatformStand = false
        end
    end
end
function fns.onRscripts()
    nC(nl, "Copied Rscripts profile to clipboard")
end
function fns.onUnload()
    Library:Unload()
end
function fns.onCopySolanaAddress()
    nC(nE, "Copied Solana address")
end
function fns.fn450(bq)
    nA()
    local pP = nN[bq]
    if not pP then
        return false
    end
    local Character = nk.Character
    local pR = Character and Character:FindFirstChild("HumanoidRootPart")
    if not pR then
        return false
    end
    pR.CFrame = pP * CFrame.new(0, 4, 0)
    return true
end
local function fn458()
    m9(Toggles.AntiGameplayPause.Value)
end
local function fn506()
    local qi = Library.MainFrame
    while true do
        local qj_1 = qi and not qi:IsA("ScreenGui")
        if qj_1 then
            qi = qi.Parent
            continue
        end
        break
    end
    local qj_2 = qi and qi:IsA("ScreenGui")
    if qj_2 then
        qi:SetAttribute("OuroborosHubUI", true)
    end
end
local function fn515()
    return nn(mJ.AtomBattleState)
end
local function fn518()
    local pX = nX() or 0
    return pX == 0
end
local function onRenderStepped(el)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qU_1 = na()
        if qU_1 then
            qU_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qU_3 = m0()
        local qV = na()
        n0 = Workspace.CurrentCamera or n0
        if qU_3 and qV and n0 then
            qV.PlatformStand = true
            local qV_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                qV_1 = qV_1 + n0.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qV_1 = qV_1 - n0.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                qV_1 = qV_1 - n0.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qV_1 = qV_1 + n0.CFrame.RightVector
            end
            local rc = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if rc == 1 then
                qV_1 = qV_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                qV_1 = qV_1 - Vector3.new(0, 1, 0)
            end
            qU_3.Velocity = Vector3.zero
            if qV_1.Magnitude > 0 then
                qU_3.CFrame = qU_3.CFrame + qV_1.Unit * Options.FlySpeed.Value * el
            end
        end
    end
end
local function fn548()
    if not Toggles.ReaperTP.Value then
        task.wait(1)
        return
    end
    local Value = Options.ReaperInterval.Value
    local sO = mV() or math.huge
    local sP = sO <= os.time() and not mI()
    if sP then
        if mN() then
            pcall(function()
                mX("reaper")
            end)
            nY()
        end
    end
    task.wait(Value)
end
local function fn557()
    return nn(mJ.AtomMainLevel)
end
local function fn564()
    local pd = nt()
    local pe = pd and pd.Titles
    local pe_1
    local pd_1 = pe
    if pe then
        pe = pd_1.UnlockedTitles
    end
    local pd_2 = {}
    local pf = pe
    local pf_1
    local pm = if pf then 1 else 0
    local pk = 1388 * pm + 3874 * (1 - pm)
    local pl = 650 * pm + 3731 * (1 - pm)
    if not ((pk * 3243 + pl * 3293 + pk * pl) % 16777213 == 7543934) then
        pf = pd_2
    end
    local pd_3 = pf
    pe_1, pf_1 = -1, nil
    for i, v in ipairs(pd_3) do
        local pd_4 = nV[v]
        if pd_4 and not pd_4.hidden then
            local pd_5 = (pd_4.rarity or 0) * 1000000 + (pd_4.sort or 0)
            if pd_5 > pe_1 then
                pe_1, pf_1 = pd_5, v
            end
        end
    end
    return pf_1
end
local function onCopyPayPalLink()
    nC(ny, "Copied PayPal link")
end
local function onCopyUSDTAddress()
    nC(nK, "Copied USDT address")
end
local function fn600(b7, b8)
    return string.format('<font color="%s">%s</font>', b8, b7)
end
local function fn620()
    mS = false
end
local function fn623()
    return nn(mJ.AtomReaperTime)
end
local function worker()
    local qu_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qt = math.floor(os.clock() - nS)
        if qt < 60 then
            qu_1 = qt .. "s"
        elseif qt < 3600 then
            qu_1 = string.format("%dm %ds", qt // 60, qt % 60)
        else
            qu_1 = string.format("%dh %dm", qt // 3600, qt % 3600 // 60)
        end
        Label:SetText(m6("Session time", qu_1, mK))
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local qS_1 = na()
        if qS_1 then
            qS_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn652(e3, e4)
    local Type = e4.Type
    if Type == "Toggle" then
        return { idx = e3, type = "Toggle", value = e4.Value == true }
    elseif Type == "Slider" then
        return { idx = e3, type = "Slider", value = tostring(e4.Value) }
    elseif Type == "Dropdown" then
        return { idx = e3, type = "Dropdown", multi = e4.Multi == true, value = e4.Value }
    elseif Type == "Input" then
        local rx = e4.Value
        local rB = if rx then 1 else 0
        local rz = 3479 * rB + 892 * (1 - rB)
        local rA = 1095 * rB + 3423 * (1 - rB)
        if not ((rz * 3630 + rA * 1766 + rz * rA) % 16777213 == 1594832) then
            rx = ""
        end
        return { idx = e3, type = "Input", text = tostring(rx) }
    elseif Type == "ColorPicker" then
        return { idx = e3, type = "ColorPicker", value = e4.Value:ToHex(), transparency = e4.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = e3,
            type = "KeyPicker",
            mode = e4.Mode,
            key = e4.Value,
            modifiers = e4.Modifiers,
            toggled = e4.Toggled
        }
    else
        return nil
    end
end
local function onCopyVenmoLink()
    nC(nw, "Copied Venmo link")
end
local function fn674(an)
    return container:WaitForChild(an, 15)
end
local function onOnClientEvent(bM)
    m4 = bM == true
end
local function fn721()
    if not Toggles.WalkSpeedEnabled.Value then
        local qF = na()
        if qF then
            qF.WalkSpeed = 16
        end
    end
end
local function fn722()
    return nm:TbGlobalConfig():rebirthTowerLevelRatio()
end
local function fn811()
    return nn(mJ.AtomTowerLevel)
end
local function fn822()
    if not Toggles.Stages.Value then
        task.wait(1)
        return
    end
    local Value = Options.StagesInterval.Value
    if not mN() then
        task.wait(Value)
        return
    end
    pcall(function()
        local sK = if mT() then 1 else 0
        if sK == 1 then
            local sF = m3() or 0
            local sG = sF + 1
            if nD > 0 then
                sG = math.min(sG, nD)
            end
            local sF_1 = "DeathRoad" .. sG
            mX(sF_1)
        end
    end)
    nY()
    task.wait(Value)
end
local function onInputChanged(eO)
    local UserInputType = eO.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        m7 = tick()
    end
end
local function fn864()
    local pb_1
    local pa_1
    pa_1, pb_1 = pcall(function()
        return nZ.saveAtom()()
    end)
    if not pa_1 then
        return nil
    end
    return pb_1[tostring(nk.UserId)]
end
local function fn908(ca, cb, cc)
    return string.format("<b>%s</b> %s %s", ca, nb("-", "#5a6070"), nb(cb, cc))
end
local function fn965()
    local pZ = nX() or 0
    return mO[pZ] == true
end
local function fn966()
    ng.__ouroboros_gen = __ouroboros_gen + 1000
    ng.OuroborosHub_Library = nil
    if connection then
        connection:Disconnect()
    end
    connection2:Disconnect()
    connection3:Disconnect()
    m9(false)
    local tu = na()
    if tu then
        tu.PlatformStand = false
        tu.WalkSpeed = 16
    end
end
local function fn987()
    if not Toggles.Tower.Value then
        task.wait(1)
        return
    end
    local Value = Options.TowerInterval.Value
    local s5 = nJ > 0
    if s5 then
        local s6_1 = m3() or 0
        s5 = s6_1 < nJ
    end
    if s5 then
        task.wait(Value)
        return
    end
    local s6_3 = mU[Options.TowerLevelAdd and Options.TowerLevelAdd.Value or "Add1"]
    local ta = if s6_3 then 1 else 0
    local s8 = 1225 * ta + 177 * (1 - ta)
    local s9 = 971 * ta + 3603 * (1 - ta)
    if not ((s8 * 3554 + s9 * 1344 + s8 * s9) % 16777213 == 6848149) then
        s6_3 = 0
    end
    local s5_3 = s6_3
    if mN() then
        pcall(m1, 3, s5_3)
        nY()
    end
    task.wait(Value)
end
local function fn1002()
    if not Toggles.DeathKing.Value then
        task.wait(1)
        return
    end
    local Value = Options.DeathInterval.Value
    local s__1 = mU[Options.DeathLevelAdd and Options.DeathLevelAdd.Value or "Add1"] or 0
    if mN() then
        pcall(m1, 1, s__1)
        nY()
    end
    task.wait(Value)
end
local function fn1013()
    local TowerBattle = Workspace:FindFirstChild("TowerBattle")
    local pU = TowerBattle and TowerBattle:FindFirstChild("Pos")
    local pT_1 = pU
    if pU then
        pU = pT_1:FindFirstChild("Player")
    end
    local pT_2 = pU
    if pU then
        pU = pT_2:IsA("BasePart")
    end
    if pU then
        local Character = nk.Character
        local pV = Character and Character:FindFirstChild("HumanoidRootPart")
        if pV then
            pV.CFrame = pT_2.CFrame + Vector3.new(0, 4, 0)
            return true
        end
        return mX("towerEntry")
    end
    return mX("towerEntry")
end
local function onImportConfigFromClipboardTex()
    local r5_1
    local r3 = Options.SaveManager_ImportSource.Value or ""
    local r3_1
    local r4 = tostring(r3):match("^%s*(.-)%s*$")
    if r4 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    r3_1, r5_1 = pcall(HttpService.JSONDecode, HttpService, r4)
    local r4_1 = not r3_1
    local r9 = if r4_1 then 1 else 0
    local r7 = 3446 * r9 + 37 * (1 - r9)
    local r8 = 2620 * r9 + 2112 * (1 - r9)
    if not ((r7 * 1853 + r8 * 40 + r7 * r8) % 16777213 == 15518758) then
        r4_1 = type(r5_1) ~= "table"
    end
    if not r4_1 then
        r4_1 = type(r5_1.objects) ~= "table"
    end
    if r4_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local r3_2 = 0
    for i, v in ipairs(r5_1.objects) do
        if nf(v) then
            r3_2 += 1
        end
    end
    if r3_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local r5_2 = r3_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(r3_2, r5_2), 6)
end
local function fn1053(bZ, b_)
    if setclipboard then
        setclipboard(bZ)
    elseif toclipboard then
        toclipboard(bZ)
    end
    Library:Notify(b_)
end
local function fn1103()
    if not Toggles.CursedKing.Value then
        task.wait(1)
        return
    end
    local Value = Options.CursedInterval.Value
    local sW_1 = mU[Options.CursedLevelAdd and Options.CursedLevelAdd.Value or "Add1"] or 0
    if mN() then
        pcall(m1, 2, sW_1)
        nY()
    end
    task.wait(Value)
end
local function fn1111()
    if not Toggles.BestTitle.Value then
        task.wait(1)
        return
    end
    local Value = Options.TitleInterval.Value
    if not mN() then
        task.wait(Value)
        return
    end
    pcall(function()
        local tj = nd()
        if tj then
            local tk = nt()
            if (tk and tk.Titles and tk.Titles.EquippedTitle) ~= tj then
                np.equipTitle:FireServer(tj)
            end
        end
    end)
    nY()
    task.wait(Value)
end
local function fn1112()
    local rD = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local rE = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rE then
                local rE_1 = mZ(k, v)
                if rE_1 then
                    rD[#rD + 1] = rE_1
                end
            end
        end
    end
    table.sort(rD, function(fh, fi)
        if fh.type ~= fi.type then
            return fh.type < fi.type
        end
        return fh.idx < fi.idx
    end)
    return { objects = rD }
end
local function fn1127()
    local Character = nk.Character
    local qg = Character and Character:FindFirstChild("HumanoidRootPart")
    return qg
end
local function fn1133(eW, eX)
    local rq_1 = (eW == "Toggle" and Toggles or Options)[eX]
    local rp_2 = type(rq_1) == "table" and rq_1.Type == eW
    local rp_3 = rp_2 and rq_1
    local rv = if rp_3 then 1 else 0
    local rt = 1403 * rv + 1762 * (1 - rv)
    local ru = 1220 * rv + 173 * (1 - rv)
    if not ((rt * 3961 + ru * 3296 + rt * ru) % 16777213 == 11290063) then
        rp_3 = nil
    end
    return rp_3
end
local function fn1151(E)
    local o__1
    local oZ_1
    oZ_1, o__1 = pcall(require, E)
    return oZ_1 and o__1
end
local function fn1152()
    for i, child in ipairs(gethui():GetChildren()) do
        local p0 = child:IsA("ScreenGui") and child:GetAttribute("OuroborosHubUI")
        if p0 then
            child:Destroy()
        end
    end
end
local function fn1161()
    local pv = os.clock()
    if pv - nG < 2.5 then
        return
    end
    nG = pv
    table.clear(nN)
    local function pv_1(bf)
        if bf:IsA("BasePart") then
            local attr = bf:GetAttribute("point")
            if attr then
                nN[attr] = bf.CFrame
            end
        end
    end
    if TeleportTag then
        for i, v in ipairs(CollectionService:GetTagged(TeleportTag)) do
            pv_1(v)
        end
    else
        for i, descendant in ipairs(Workspace:GetDescendants()) do
            pv_1(descendant)
        end
    end
end
local function fn1165()
    return nm:TbGlobalConfig():unlockTowerMainLevelRequire()
end
mI = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
Label = nil
mX = nil
connection = nil
mZ = nil
SaveManager = nil
m0 = nil
m1 = nil
m2 = nil
m3 = nil
m4 = nil
Library = nil
m6 = nil
m7 = nil
m8 = nil
m9 = nil
na = nil
nb = nil
nc = nil
nd = nil
__ouroboros_gen = nil
nf = nil
ng = nil
nj = nil
nk = nil
nl = nil
nm = nil
nn = nil
no = nil
np = nil
connection3 = nil
CollectionService = nil
nt = nil
Workspace = nil
local nh, ni, ns
nv = nil
nw = nil
ny = nil
nz = nil
nA = nil
nC = nil
nD = nil
nE = nil
nF = nil
nG = nil
HttpService = nil
nJ = nil
nK = nil
container = nil
connection2 = nil
nN = nil
Toggles = nil
VirtualUser = nil
nQ = nil
nR = nil
nS = nil
Options = nil
UserInputService = nil
nV = nil
nW = nil
nX = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
TeleportTag = nil
local CoreGui, GuiService, nH
CoreGui = nil
GuiService = nil
nH = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, CollectionService, nk, ng = nil, nil, nil, nil, nil, nil, nil, nil, nil
local tz_9 = game:GetService("Players")
local tz_11 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
local tz_5 = tz_9.LocalPlayer
nk = tz_5
local tz_7 = "+1 DMG Per Revive"
ng = getgenv()
tz_9 = ng.__ouroboros_gen or 0
__ouroboros_gen, tz_13 = nil, nil
local tz_15 = 13
repeat
    tz_3 = (tz_15 * 1 + 0) % 2 + 1
    if tz_3 <= 1 then
        tz_3 = (vector.create((tz_15 * 6 + 8) % 11 + 1, (tz_15 * 6 + 6) % 13 + 1, (tz_15 * 7 + 14) % 17 + 1))
        local vd = vector.floor(tz_3) + vector.ceil(tz_3 * -1)
        if vector.dot(vd, vd) == 0 then
            tz_13 = ng.OuroborosHub_Library
        else
            ng = tz_13.OuroborosHub_Library
        end
        tz_15 = (tz_15 + 5) % 16
    else
        tz_3 = (vector.create((tz_15 * 2 + 5) % 11 + 1, (tz_15 * 2 + 5) % 13 + 1, (tz_15 * 15 + 16) % 17 + 1))
        tz_8 = (vector.create((tz_15 * 7 + 8) % 11 + 1, (tz_15 * 5 + 5) % 13 + 1, (tz_15 * 10 + 13) % 17 + 1))
        tz_14 = (vector.create((tz_15 * 4 + 7) % 5 + 1, (tz_15 * 3 + 7) % 7 + 1, (tz_15 * 3 + 6) % 9 + 1))
        if math.abs((vector.angle(tz_3, tz_8, tz_14))) - math.abs((vector.angle(tz_8, tz_3, tz_14))) == 2 then
            ng.__ouroboros_gen = __ouroboros_gen + 1
            ng = tz_9.__ouroboros_gen
        else
            ng.__ouroboros_gen = tz_9 + 1
            __ouroboros_gen = ng.__ouroboros_gen
        end
        tz_15 = (tz_15 + 3) % 16
    end
until (tz_15 * 1 + 2) % 16 == 7
if tz_13 then
    tz_9 = 2
    repeat
        tz_15 = {
            "yuhtq",
            "kboetctkya",
            "touwthlu",
            "yids",
            "hwcf",
            "yxgdtxgu",
            "hrvuwvkev",
            "bln",
            "gwkwnqcu",
            "jyylbmsntdf"
        }
        local uW = tz_9
        tz_3 = tz_15[uW % 10 + 1]
        if tz_3:len() >= tz_3:reverse():rep(uW % 3 + 2):len() then
            ng = type(tz_13.OuroborosHub_Library.Unload) == "function"
        else
            tz_13 = type(ng.OuroborosHub_Library.Unload) == "function"
        end
        tz_9 = (tz_9 + 0) % 4
    until (tz_9 * 1 + 2) % 4 == 0
end
if tz_13 then
    pcall(function()
        ng.OuroborosHub_Library:Unload()
    end)
end
Library, SaveManager = nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
tz_3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
ng.OuroborosHub_Library = Library
tz_13 = fn1151
tz_9 = {}
tz_15 = tz_13(tz_11.common.store.battle) or tz_9
mJ = tz_15
tz_9 = {}
tz_15 = tz_13(tz_11.common.store.rebirth) or tz_9
n1 = tz_15
tz_9 = {}
tz_15 = tz_13(tz_11.common.store.save) or tz_9
nZ = tz_15
tz_9 = {}
tz_15 = tz_13(tz_11.gen_config.tbtitle) or tz_9
nV, nQ, nJ, nD, tz_8, nv = nil, nil, nil, nil, nil, nil
tz_13 = 13
repeat
    tz_9 = (tz_13 * 1 + 1) % 3 + 1
    if tz_9 <= 2 then
        if tz_9 <= 1 then
            tz_9 = (vector.create((tz_13 * 4 + 9) % 11 + 1, (tz_13 * 9 + 2) % 13 + 1, (tz_13 * 7 + 6) % 17 + 1))
            local uO = vector.floor(tz_9) + vector.ceil(tz_9 * -1)
            if vector.dot(uO, uO) == 0 then
                nJ = 0
                nD = 0
            else
                nD = 0
                nJ = 0
            end
            tz_13 = (tz_13 + 22) % 24
        else
            if tz_13 * 34037433 + 7 + 1 <= tz_13 * 34037433 + 7 + 1 + 1 then
                tz_8, nv = pcall(require, tz_11.common.config.schema)
            else
                nv, tz_11 = pcall(require, tz_8.common.config.schema)
            end
            tz_13 = (tz_13 + 4) % 24
        end
    else
        tz_9 = {
            "ycdjk",
            "vbspwpezxux",
            "avbwwmupjxw",
            "qjno",
            "kpepgdpcwj",
            "yykiizau",
            "urihqp",
            "gukbsxtuh",
            "eyeqiwgjz"
        }
        local uX = tz_13
        tz_14 = tz_9[uX % 9 + 1]
        if tz_14:len() <= tz_14:reverse():rep(uX % 3 + 2):len() then
            nV = tz_15
            nQ = 5
        else
            tz_15 = nQ
            nV = 5
        end
        tz_13 = (tz_13 + 13) % 24
    end
until (tz_13 * 11 + 7) % 24 == 3
if tz_8 then
    tz_13, nm, tz_15 = nil, nil, nil
    tz_9 = 8
    repeat
        tz_8 = (tz_9 * 1 + 1) % 2 + 1
        if tz_8 <= 1 then
            if tz_9 * 25526371 + 13 + 5 <= tz_9 * 25526371 + 13 + 5 + 2 then
                tz_15 = tz_13
            else
                tz_13 = tz_15
            end
            tz_9 = (tz_9 + 5) % 16
        else
            local uh = bit32.rrotate(bit32.bxor(bit32.lrotate(tz_9, 11), string.byte(tostring(nm))), 15)
            if bit32.bxor(bit32.lrotate(bit32.bxor(uh, 1196971307), 8), 1481976647) == bit32.lrotate(uh, 8) then
                tz_13, nm = pcall(fns.fn134)
            else
                nm, tz_13 = pcall(fns.fn134)
            end
            tz_9 = (tz_9 + 1) % 16
        end
    until (tz_9 * 13 + 10) % 16 == 0
    if tz_15 then
        tz_15 = nm
    end
    if tz_15 then
        tz_15 = nm.TbGlobalConfig
    end
    if tz_15 then
        tz_9, tz_4 = pcall(fn722)
        tz_14 = tz_9
        if tz_14 then
            tz_9 = 1
            repeat
                if tz_9 * 126271303 + 8 + 7 <= tz_9 * 126271303 + 8 + 7 + 1 then
                    tz_14 = type(tz_4) == "number"
                else
                    tz_4 = type(tz_14) == "number"
                end
                tz_9 = (tz_9 + 4) % 8
            until (tz_9 * 3 + 0) % 8 == 7
        end
        if tz_14 then
            nQ = tz_4
        end
        tz_9, tz_14, tz_8 = nil, nil, nil
        tz_15 = 6
        repeat
            tz_4 = (tz_15 * 1 + 1) % 2 + 1
            if tz_4 <= 1 then
                if (tz_15 * 2 + 3) * 16 % 3 == ((tz_15 * 2 + 3) * 16 + 4) % 3 then
                    tz_9 = tz_8
                else
                    tz_8 = tz_9
                end
                tz_15 = (tz_15 + 9) % 16
            else
                if (tz_15 and not tz_15 and (tz_9 and tz_8) or not tz_8 and not tz_8 and (tz_14 or tz_15) or ((not tz_14 or tz_9) and (tz_15 and not tz_15) or tz_9 and not tz_8 and (not tz_15 or tz_8))) and not (tz_15 and not tz_15 and (tz_9 and tz_8) or not tz_8 and not tz_8 and (tz_14 or tz_15) or ((not tz_14 or tz_9) and (tz_15 and not tz_15) or tz_9 and not tz_8 and (not tz_15 or tz_8))) then
                    tz_14, tz_9 = pcall(fn1165)
                else
                    tz_9, tz_14 = pcall(fn1165)
                end
                tz_15 = (tz_15 + 15) % 16
            end
        until (tz_15 * 13 + 3) % 16 == 9
        if tz_8 then
            tz_9 = 1
            repeat
                tz_15 = (vector.create((tz_9 * 7 + 7) % 11 + 1, (tz_9 * 8 + 6) % 13 + 1, (tz_9 * 1 + 8) % 17 + 1))
                tz_4 = (vector.create((tz_9 * 1 + 8) % 11 + 1, (tz_9 * 9 + 9) % 13 + 1, (tz_9 * 1 + 1) % 17 + 1))
                tz_10 = (vector.create((tz_9 * 1 + 9) % 11 + 1, (tz_9 * 2 + 4) % 13 + 1, (tz_9 * 12 + 9) % 17 + 1))
                tz_16 = (vector.create((tz_9 * 1 + 2) % 11 + 1, (tz_9 * 3 + 1) % 13 + 1, (tz_9 * 6 + 6) % 17 + 1))
                if vector.dot(vector.cross(tz_15, tz_4), (vector.cross(tz_10, tz_16))) == vector.dot(tz_15, tz_10) * vector.dot(tz_4, tz_16) - vector.dot(tz_15, tz_16) * vector.dot(tz_4, tz_10) then
                    tz_8 = type(tz_14) == "number"
                else
                    tz_14 = type(tz_8) == "number"
                end
                tz_9 = (tz_9 + 0) % 4
            until (tz_9 * 1 + 0) % 4 == 1
        end
        if tz_8 then
            nJ = tz_14
        end
    end
    tz_9 = tz_13 and nm and nm.TbMainChallenge
    if tz_9 then
        tz_15, tz_14, tz_8 = nil, nil, nil
        tz_13 = 8
        repeat
            tz_9 = (tz_13 * 1 + 0) % 2 + 1
            if tz_9 <= 1 then
                tz_9 = {
                    "ixemoe",
                    "vqarp",
                    "agxnf",
                    "bwzpmqxohc",
                    "auhcxihlgfv",
                    "knldrxd",
                    "vymxzywpi",
                    "vizbxhehzs",
                    "iduysi"
                }
                local u6 = tz_13
                tz_4 = tz_9[u6 % 9 + 1]
                if tz_4:len() <= tz_4:gsub("(.)", "%1%1", u6 % 3 % 2 + 1):len() then
                    tz_15, tz_14 = pcall(fns.fn34)
                else
                    tz_14, tz_15 = pcall(fns.fn34)
                end
                tz_13 = (tz_13 + 1) % 16
            else
                tz_9 = { "gwceq", "smumdmwim", "qvovsfswo", "xygktdfnfb", "pxduxdylmfr", "ukn", "mnkgsu", "fqtghblix" }
                if tz_9[(tz_13 * 57 + 25) % 8 + 1] <= tz_9[(tz_13 * 57 + 25) % 8 + 1] then
                    tz_8 = tz_15
                else
                    tz_15 = tz_8
                end
                tz_13 = (tz_13 + 15) % 16
            end
        until (tz_13 * 13 + 7) % 16 == 15
        if tz_8 then
            tz_9 = 3
            repeat
                tz_15 = (vector.create((tz_9 * 5 + 6) % 11 + 1, (tz_9 * 8 + 8) % 13 + 1, (tz_9 * 2 + 17) % 17 + 1))
                tz_13 = (vector.create((tz_9 * 5 + 9) % 11 + 1, (tz_9 * 10 + 12) % 13 + 1, (tz_9 * 3 + 4) % 17 + 1))
                tz_4 = (vector.create((tz_9 * 6 + 5) % 11 + 1, (tz_9 * 5 + 11) % 13 + 1, (tz_9 * 1 + 3) % 17 + 1))
                tz_10 = (vector.create((tz_9 * 2 + 6) % 5 + 1, (tz_9 * 1 + 4) % 7 + 1, (tz_9 * 5 + 1) % 9 + 1))
                if vector.dot(vector.cross(tz_15, (vector.cross(tz_13, tz_4))), tz_10) == vector.dot(tz_13 * vector.dot(tz_15, tz_4) - tz_4 * vector.dot(tz_15, tz_13), tz_10) then
                    tz_8 = type(tz_14) == "table"
                else
                    tz_14 = type(tz_8) == "table"
                end
                tz_9 = (tz_9 + 0) % 4
            until (tz_9 * 3 + 3) % 4 == 0
        end
        if tz_8 then
            nD = #tz_14
        end
    end
end
TeleportTag, tz_15, tz_8, tz_13 = nil, nil, nil, nil
tz_9 = 7
repeat
    tz_14 = (tz_9 * 1 + 1) % 3 + 1
    if tz_14 <= 2 then
        if tz_14 <= 1 then
            tz_14 = {
                "pdsfms",
                "xuohhnzva",
                "qwvujpz",
                "bpcrclvgudhr",
                "phmdw",
                "rbafbul",
                "hntp",
                "ack",
                "rhiucxmpr",
                "jutqmfo",
                "zjjrofgrg",
                "ptubfra"
            }
            if tz_14[(tz_9 * 55 + 83) % 12 + 1] <= tz_14[(tz_9 * 55 + 83) % 12 + 1] then
                tz_15, tz_8 = pcall(require, tz_11.common.util["tag-util"])
            else
                tz_11, tz_15 = pcall(require, tz_8.common.util["tag-util"])
            end
            tz_9 = (tz_9 + 7) % 24
        else
            tz_14 = {
                "vccnljkbj",
                "lfyasvsccxop",
                "xfowqzt",
                "aawaaunn",
                "vjximhqckbiy",
                "woqqg",
                "yyesathfod",
                "lkt",
                "jbpzw",
                "xkg",
                "gksvzkpeaz",
                "ogv",
                "irunyjrrdj",
                "egqdmey"
            }
            if tz_14[(tz_9 * 73 + 7) % 14 + 1] < tz_14[(tz_9 * 73 + 7) % 14 + 1] then
                tz_15 = tz_13
            else
                tz_13 = tz_15
            end
            tz_9 = (tz_9 + 19) % 24
        end
    else
        tz_14 = (vector.create((tz_9 * 6 + 8) % 11 + 1, (tz_9 * 2 + 10) % 13 + 1, (tz_9 * 15 + 8) % 17 + 1))
        tz_4 = (vector.create((tz_9 * 6 + 1) % 11 + 1, (tz_9 * 6 + 6) % 13 + 1, (tz_9 * 12 + 16) % 17 + 1))
        local uD = vector.dot(tz_14, tz_4)
        if uD * uD <= vector.dot(tz_14, tz_14) * vector.dot(tz_4, tz_4) then
            TeleportTag = nil
        else
            tz_15 = nil
        end
        tz_9 = (tz_9 + 19) % 24
    end
until (tz_9 * 11 + 11) % 24 == 7
if tz_13 then
    tz_9 = 0
    repeat
        if (tz_9 * 2 + 6) * 7 % 3 == ((tz_9 * 2 + 6) * 7 + 0) % 3 then
            tz_13 = typeof(tz_8) == "table"
        else
            tz_8 = typeof(tz_13) == "table"
        end
        tz_9 = (tz_9 + 0) % 4
    until (tz_9 * 3 + 0) % 4 == 0
end
if tz_13 then
    tz_9 = 0
    repeat
        if (tz_9 * 1 + 3) * 17 % 4 == ((tz_9 * 1 + 3) * 17 + 12) % 4 then
            tz_13 = type(tz_8.TeleportTag) == "string"
        else
            tz_8 = type(tz_13.TeleportTag) == "string"
        end
        tz_9 = (tz_9 + 3) % 4
    until (tz_9 * 3 + 0) % 4 == 1
end
if tz_13 then
    TeleportTag = tz_8.TeleportTag
end
if setthreadidentity then
    setthreadidentity(8)
end
container, ns, np, nN, nG, m4, connection, mO, no, nl, tz_10, mK, n_, nW, nR, nK, nE, ny, nw, nc, Label, mR, tz_4, nn, m3, mV, mL, nX, nF, nt, nd, nA, mX, nH, mT, mI, nC, nj, nb, m6, na, m0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
container = tz_11.rbxts_include.node_modules["@rbxts"].remo.src.container
tz_14 = fn674
ns = {
    staticReaperReq = tz_14("staticReaperReq"),
    startTimeLimitChallengeReq = tz_14("startTimeLimitChallengeReq"),
    timeLimitChallengeResult = tz_14("timeLimitChallengeResult")
}
np = { rebirth = tz_14("rebirth"), equipTitle = tz_14("EquipTitle") }
nn = function(as)
    local o2
    local o4_1
    local o3_1, o3_2
    if type(as) ~= "function" then
        return nil
    end
    o3_1, o2 = pcall(function()
        return as()
    end)
    if not o3_1 then
        return nil
    elseif type(o2) ~= "function" then
        return o2
    else
        o3_2, o4_1 = pcall(function()
            return o2()
        end)
        return o3_2 and o4_1 or nil
    end
end
m3 = fn557
mV = fn623
mL = fn811
nX = fn515
nF = fns.fn160
nt = fn864
nd = fn564
nN = {}
nG = 0
nA = fn1161
mX = fns.fn450
nH = fn1013
m4 = nil
connection = ns.timeLimitChallengeResult.OnClientEvent:Connect(onOnClientEvent)
mT = fn518
if (nF and not mV or not nF and nF) and (not mV and nF or not nF and not mV) and not ((nF and not mV or not nF and nF) and (not mV and nF or not nF and not mV)) then
    nC = { [2] = true, [5] = true, [7] = true, [3] = true, [8] = true, [1] = true, [6] = true }
    mO = fn965
    pcall(fn1152)
    mI = fn1053
else
    mO = { [1] = true, [2] = true, [3] = true, [5] = true, [6] = true, [7] = true, [8] = true }
    mI = fn965
    pcall(fn1152)
    nC = fn1053
end
no = "https://discord.gg/ehKVq7pf7v"
nl = "https://rscripts.net/@Ouroboros"
nj = fns.fn171
nb = fn600
m6 = fn908
tz_16 = "#7fd47f"
if ((not m3 or (not mR or m3)) and ((not connection or tz_4) and (not mR)) or (connection or not m3 or (tz_4 or not connection)) and (not connection or (not mR or 216))) and not ((not m3 or (not mR or m3)) and ((not connection or tz_4) and (not mR)) or (connection or not m3 or (tz_4 or not connection)) and (not connection or (not mR or 216))) then
    nj = "#6ec1ff"
else
    tz_10 = "#6ec1ff"
end
mK = "#e8a34d"
local oy = "#8b93a3"
n_ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nW = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nK = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nE = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
ny = "https://paypal.me/TheTruckerGOD"
nw = "https://venmo.com/u/miserablemusic"
local op = "#345d9d"
local on = "#f7931a"
local om = "#627eea"
local ol = "#26a17b"
local oj = "#14f195"
local tz_2 = "#0070ba"
local tz_12 = "#008cff"
na = fns.fn62
m0 = fn1127
tz_9 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = no, Copyable = true }, "|", tz_7 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
pcall(fn506)
local ox = {
    Info = tz_9:AddTab("Info", "info"),
    Farming = tz_9:AddTab("Farming", "swords"),
    Bosses = tz_9:AddTab("Bosses", "skull"),
    Rebirth = tz_9:AddTab("Rebirth", "refresh-cw"),
    Player = tz_9:AddTab("Player", "person-standing"),
    Settings = tz_9:AddTab("Settings", "settings")
}
local ow = ox.Bosses:AddSubTab("Reaper", "skull")
local ov = ox.Bosses:AddSubTab("Cursed King", "timer")
local ou = ox.Bosses:AddSubTab("Death King", "flame")
local ot = ox.Bosses:AddSubTab("Death Tower", "landmark")
local oq = ox.Rebirth:AddSubTab("Rebirth Loop", "repeat")
local oo = ox.Rebirth:AddSubTab("Titles", "star")
tz_8 = fns.fn316
tz_8(ox.Info)
tz_8(ox.Farming)
tz_8(ox.Player)
tz_8(ox.Settings)
tz_8(ow)
tz_8(ov)
tz_8(ou)
tz_8(ot)
tz_8(oq)
tz_8(oo)
nc = "Unknown"
pcall(fns.fn320)
tz_15 = ox.Info:AddLeftGroupbox("Account", "circle-user")
tz_15:AddLabel(m6("User", tz_5.Name, tz_16), true)
tz_15:AddLabel(m6("Status", "Keyless", tz_16), true)
tz_15:AddLabel(m6("Executor", nc, tz_16), true)
local GameInfoGroup = ox.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(nb(tz_7 .. " [" .. tostring(game.PlaceId) .. "]", tz_10), true)
GameInfoGroup:AddLabel(m6("Place ID", tostring(game.PlaceId), tz_10), true)
Label = GameInfoGroup:AddLabel(m6("Session time", "0s", mK), true)
mR = tostring(game.JobId)
tz_4 = #mR > 18
if tz_4 then
    tz_9 = 1
    repeat
        tz_15 = {
            "mfnzqmtomm",
            "dnthwcbtfn",
            "wnomjqc",
            "oyotxdpvpt",
            "wktvjm",
            "pncxwz",
            "pujotr",
            "qkbhxm",
            "hchvmogxlfq",
            "gysiasbueql",
            "aljwbvorrqc",
            "shdk"
        }
        local ul = tz_9
        tz_5 = tz_15[ul % 12 + 1]
        if tz_5:len() <= tz_5:reverse():rep(ul % 3 + 2):len() then
            tz_4 = string.sub(mR, 1, 18) .. "..."
        else
            mR = string.sub(tz_4, 1, 18) .. "..."
        end
        tz_9 = (tz_9 + 3) % 4
    until (tz_9 * 3 + 2) % 4 == 2
end
tz_9 = tz_4 or mR
nS, Options, Toggles, n0, m7, m2, connection2, connection3, mS, mQ, mU, nz, m9, mP, nh, mZ, mM, nf, m8, mN, nY, ni, m1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tz_15 = tz_9
GameInfoGroup:AddLabel(m6("Server", tz_15, oy), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
nS = os.clock()
task.spawn(worker)
local ScriptsGroup = ox.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nb("Included in this hub", oy), true)
ScriptsGroup:AddLabel(nb(tz_7, tz_10), true)
local FeaturesGroup = ox.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nb("Auto Stage Progression", tz_10), true)
FeaturesGroup:AddLabel(nb("Auto Bosses and Tower", mK), true)
FeaturesGroup:AddLabel(nb("Auto Rebirth and Titles", tz_16), true)
local SocialsGroup = ox.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nj })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
tz_13 = ox.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
tz_13:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
tz_13:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
tz_13:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
tz_13:AddButton({ Text = "Copy Discord Invite", Func = nj })
tz_5 = ox.Info:AddRightGroupbox("Donations", "heart")
tz_5:AddLabel(nb("All donations are optional but appreciated.", mK), true)
tz_5:AddLabel(nb("If you donate you get a special role, just PING after you donate.", tz_16), true)
tz_5:AddDivider()
tz_5:AddLabel(nb("LTC / Litecoin", op), true)
tz_5:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
tz_5:AddLabel(nb("BTC / Bitcoin", on), true)
tz_5:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
tz_5:AddLabel(nb("ETH / Ethereum", om), true)
tz_5:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
tz_5:AddLabel(nb("USDT", ol), true)
tz_5:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
tz_5:AddLabel(nb("Solana", oj), true)
tz_5:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
tz_5:AddLabel(nb("PayPal", tz_2), true)
tz_5:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
tz_5:AddLabel(nb("Venmo", tz_12), true)
tz_5:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
tz_5:AddDivider()
tz_5:AddLabel(nb("Don't have any of the listed currencies but still wanna donate?", oy), true)
tz_5:AddLabel(nb("DM me and we'll work something out.", tz_10), true)
local FaqGroup = ox.Info:AddRightGroupbox("FAQ", "circle-help")
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
local StageProgressionGroup = ox.Farming:AddLeftGroupbox("Stage Progression", "route")
StageProgressionGroup:AddToggle("Stages", { Text = "Auto Progress Stages", Default = false })
StageProgressionGroup:AddSlider("StagesInterval", { Text = "Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local ReaperGroup = ow:AddLeftGroupbox("Reaper", "skull")
ReaperGroup:AddToggle("ReaperTP", { Text = "Auto TP to Reaper Off Cooldown", Default = false })
ReaperGroup:AddSlider("ReaperInterval", { Text = "Check Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local CursedKing_GreenDragonGroup = ov:AddLeftGroupbox("Cursed King (Green Dragon)", "timer")
CursedKing_GreenDragonGroup:AddToggle("CursedKing", { Text = "Auto Attempt Cursed King Until Fail", Default = false })
CursedKing_GreenDragonGroup:AddSlider("CursedInterval", { Text = "Retry Interval", Default = 30, Min = 1, Max = 120, Rounding = 0, Suffix = "s" })
CursedKing_GreenDragonGroup:AddDropdown("CursedLevelAdd", { Text = "Level Add", Values = { "Add1", "Add5", "Add10", "Add50" }, Default = "Add1" })
local DeathKing_RedDragonGroup = ou:AddLeftGroupbox("Death King (Red Dragon)", "flame")
DeathKing_RedDragonGroup:AddToggle("DeathKing", { Text = "Auto Attempt Death King Until Fail", Default = false })
DeathKing_RedDragonGroup:AddSlider("DeathInterval", { Text = "Retry Interval", Default = 30, Min = 1, Max = 120, Rounding = 0, Suffix = "s" })
DeathKing_RedDragonGroup:AddDropdown("DeathLevelAdd", { Text = "Level Add", Values = { "Add1", "Add5", "Add10", "Add50" }, Default = "Add1" })
local DeathTowerGroup = ot:AddLeftGroupbox("Death Tower", "landmark")
DeathTowerGroup:AddToggle("Tower", { Text = "Auto Progress Death Tower", Default = false })
DeathTowerGroup:AddSlider("TowerInterval", { Text = "Retry Interval", Default = 30, Min = 1, Max = 120, Rounding = 0, Suffix = "s" })
DeathTowerGroup:AddDropdown("TowerLevelAdd", { Text = "Level Add", Values = { "Add1", "Add5", "Add10", "Add50" }, Default = "Add1" })
local AutoRebirthGroup = oq:AddLeftGroupbox("Auto Rebirth", "repeat")
AutoRebirthGroup:AddToggle("Rebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthInterval", { Text = "Check Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
tz_4 = oo:AddLeftGroupbox("Auto Title", "star")
tz_4:AddToggle("BestTitle", { Text = "Auto Equip Best Title", Default = false })
tz_4:AddSlider("TitleInterval", { Text = "Check Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
tz_14 = ox.Player:AddLeftGroupbox("Movement", "footprints")
tz_14:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
tz_14:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
tz_14:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
tz_14:AddToggle("NoClip", { Text = "NoClip", Default = false })
tz_14:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
tz_8 = ox.Player:AddRightGroupbox("Fly", "feather")
tz_8:AddToggle("Fly", { Text = "Fly", Default = false })
tz_8:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
m9 = function(dO)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not dO)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not dO
        end
    end)
    if not dO then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(nk, "GameplayPaused", false)
        else
            nk.GameplayPaused = false
        end
    end)
end
Options = Library.Options
Toggles = Library.Toggles
Toggles.AntiGameplayPause:OnChanged(fn458)
Toggles.Fly:OnChanged(fns.fn425)
Toggles.WalkSpeedEnabled:OnChanged(fn721)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
n0 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
tz_11 = ox.Settings:AddLeftGroupbox("Menu")
tz_11:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
m7 = tick()
m2 = tick()
pcall(function()
    for i, v in ipairs(getconnections(nk.Idled)) do
        local rj = v
        pcall(function()
            rj:Disable()
        end)
    end
end)
mP = fns.fn390
connection2 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
tz_11:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
tz_11:AddButton({ Text = "Unload", Func = fns.onUnload })
tz_3:SetLibrary(Library)
tz_3:SetFolder("OuroborosHub")
tz_3:SaveDefault("Evil Hello Kitty")
tz_3:ApplyToTab(ox.Settings)
tz_3:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/InfiniteReal")
local oD = SaveManager:BuildConfigSection(ox.Settings)
nh = fn1133
mZ = fn652
mM = fn1112
nf = function(fk)
    local rX
    rX = nil
    local rY = type(fk) ~= "table" or type(fk.idx) ~= "string" or type(fk.type) ~= "string" or SaveManager.Ignore[fk.idx]
    if rY then
        return false
    end
    rX = nh(fk.type, fk.idx)
    if not rX then
        return false
    end
    local rY_1 = pcall(function()
        if fk.type == "Input" then
            if type(fk.text) ~= "string" then
                return
            end
            rX:SetValue(fk.text)
        elseif fk.type == "ColorPicker" then
            rX:SetValueRGB(Color3.fromHex(fk.value), fk.transparency)
        elseif fk.type == "KeyPicker" then
            rX:SetValue({ fk.key, fk.mode, fk.modifiers })
            if fk.mode == "Toggle" and fk.toggled ~= nil then
                rX.Toggled = fk.toggled
                rX:Update()
            end
        else
            rX:SetValue(fk.value)
        end
    end)
    return rY_1
end
oD:AddDivider()
oD:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
oD:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
oD:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
m8 = fns.fn89
mS = false
mQ = 0
mN = fns.fn272
nY = fn620
local function oL(fZ)
    task.spawn(function()
        local sn_1
        local sm_1
        setthreadidentity(8)
        while m8() do
            sm_1, sn_1 = pcall(fZ)
            local so = not sm_1
            if so ~= false then
                so = m8()
            end
            if so then
                warn("[OuroborosHub] loop error: " .. tostring(sn_1))
                task.wait(1)
            end
        end
    end)
end
ni = fns.fn346
m1 = function(gd, ge)
    local sD_1
    local sC_1
    sC_1, sD_1 = pcall(function()
        local sw_5
        local su_1, su_6, su_7
        if mI() then
            return false
        end
        local sB = if not ni(6) then 1 else 0
        if sB == 1 then
            return false
        end
        if gd == 3 then
            su_1 = nH()
        else
            local sw_1 = gd == 2 and "GreenDragon" or "RedDragon"
            su_1 = mX(sw_1)
        end
        if not su_1 then
            return false
        end
        local su_2 = os.clock()
        while true do
            if not (os.clock() - su_2 < 4) then
                local sB_1 = if not mT() then 1 else 0
                if sB_1 == 1 then
                    return false
                end
                task.wait(0.4)
                m4 = nil
                ns.startTimeLimitChallengeReq:FireServer(gd, ge)
                os.clock()
                local sv_2 = false
                while true do
                    if not (os.clock() - su_6 < 12) then
                        if m4 == nil then
                            return false
                        end
                        os.clock()
                        while true do
                            if not (os.clock() - su_7 < 100) then
                                return m4 == true
                            end
                            if not m8() then
                                return false
                            end
                            if m4 ~= nil then
                                return m4
                            end
                            local sw_3 = sv_2 and mT()
                            task.wait(0.5)
                        end
                        return false
                    end
                    if not m8() then
                        break
                    end
                    if not mT() then
                        os.clock()
                        while true do
                            if not (os.clock() - su_7 < 100) then
                                return m4 == true
                            end
                            if not m8() then
                                return false
                            end
                            if m4 ~= nil then
                                return m4
                            end
                            mT()
                            if sw_5 then
                                break
                            end
                            task.wait(0.5)
                        end
                        return false
                    end
                    if m4 ~= nil then
                        return false
                    end
                    task.wait(0.2)
                end
                return false
            end
            if not m8() then
                break
            end
            if mT() then
                local sB_2 = if not mT() then 1 else 0
                if sB_2 == 1 then
                    return false
                end
                task.wait(0.4)
                m4 = nil
                ns.startTimeLimitChallengeReq:FireServer(gd, ge)
                su_6 = os.clock()
                while true do
                    if not (os.clock() - su_6 < 12) then
                        return false
                    end
                    if not m8() then
                        break
                    end
                    if not mT() then
                        su_7 = os.clock()
                        while true do
                            if not (os.clock() - su_7 < 100) then
                                return m4 == true
                            end
                            if not m8() then
                                return false
                            end
                            if m4 ~= nil then
                                return m4
                            end
                            sw_5 = mT()
                            if sw_5 then
                                break
                            end
                            task.wait(0.5)
                        end
                        return false
                    end
                    if m4 ~= nil then
                        return false
                    end
                    task.wait(0.2)
                end
                return false
            end
            task.wait(0.2)
        end
        return false
    end)
    if not sC_1 then
        warn("[OuroborosHub] attempt error: " .. tostring(sD_1))
        return false
    end
    return sD_1
end
mU = { Add1 = 0, Add5 = 1, Add10 = 2, Add50 = 3 }
oL(fn822)
oL(fn548)
oL(fn1103)
oL(fn1002)
oL(fn987)
nz = 0
oL(fns.fn192)
oL(fn1111)
oL(fns.fn194)
task.spawn(fns.antiAfkLoop)
Library:OnUnload(fn966)
local oM = getgenv().STATE
if not oM then
    tz_9 = getfenv() and getfenv().STATE
    oM = tz_9
end
tz_11 = oM
tz_5 = type(tz_11) == "table" and tz_11.onCleanup
if tz_5 then
    tz_11.onCleanup(function()
        if ng.OuroborosHub_Library then
            pcall(function()
                ng.OuroborosHub_Library:Unload()
            end)
        end
    end)
end
Library:Notify("+1 DMG Per Revive loaded")
