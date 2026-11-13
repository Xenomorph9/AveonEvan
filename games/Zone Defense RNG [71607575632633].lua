local np
local nO
local ns
local nv
local nR
local nU
local ny
local nB
local ni
local nE
local nl
local nH
local nK
local LocalPlayer
local nr
local nu
local nx
local nT
local nA
local nh
local nD
local nZ
local nk
local n1
local nG
local nJ
local nq
local nM
local nt
local nP
local nw
local nV
local nC
local nF
local nj
local nm
local nI
local nL
local function fn16()
    local core = nj.core
    local ov = core and core.toolObjs
    local ou_1 = ov
    if ov then
        ov = ou_1.currentTool
    end
    local ou_2 = ov
    local ov_1 = typeof(ou_2) == "Instance" and ou_2.Parent
    if ov_1 then
        return ou_2
    end
    local Character = LocalPlayer.Character
    local ov_2 = Character and Character:FindFirstChildWhichIsA("Tool")
    return ov_2
end
local function worker2()
    while not n1.Unloaded do
        if n1.Flags.AutoEquipBest then
            n1.EquipBest()
            task.wait(2)
        else
            task.wait(0.4)
        end
    end
end
local function fn96()
    local op = nK.getReplica()
    return op and op.Data
end
local function fn110(F, G)
    local connection = F:Connect(G)
    table.insert(ni, connection)
    return connection
end
local function fn118()
    ns("luck")
end
local function fn164()
    if nj.auraMouse and nj.input then
        nj.input.isMouseDown = false
    end
    nj.auraMouse = false
end
local function fn166(an)
    if not an or nF[an] then
        return
    end
    local oG_1 = nP(an, "firerate")
    local oH = oG_1 and oG_1.Value
    nF[an] = { firerate = oH }
end
local function fn184()
    local qn = nZ()
    if not qn then
        return
    end
    local qo = nR.getInvLimitForPlayer(LocalPlayer)
    if qn.numOwnedExaltedWeapons >= qo then
        return
    end
    local qo_1 = nU.getNextRollCost(qn)
    local qp = type(qo_1) == "number" and qn.cash < qo_1
    if qp then
        return
    end
    pcall(function()
        nG.Roll:InvokeServer()
    end)
end
local function fn205(bu, bv)
    local py = if not nr(bu, bv) then 1 else 0
    if py == 1 then
        return false
    end
    local attr = bu:GetAttribute("simZombieId")
    local pu = type(attr) == "number" and nw[attr]
    local pt_1 = pu
    if pu then
        pu = os.clock() < pt_1
    end
    return not pu
end
local function fn240()
    if nO and nO.Parent then
        return nO
    end
    local folder = Instance.new("Folder")
    folder.Name = "OuroborosZDRNGEsp"
    folder.Parent = nV()
    nO = folder
    return folder
end
local function fn276()
    for k, v in nl do
        if v.gui then
            v.gui:Destroy()
        end
        if v.highlight then
            v.highlight:Destroy()
        end
        nl[k] = nil
    end
end
local function fn307()
    if n1.Unloaded then
        return
    end
    n1.Unloaded = true
    for k in n1.Flags do
        n1.Flags[k] = false
    end
    nh()
    for k in nF do
        nM(k)
    end
    table.clear(nF)
    table.clear(nB)
    table.clear(nw)
    nm()
    if nO then
        nO:Destroy()
        nO = nil
    end
    for k, v in ni do
        v:Disconnect()
    end
    table.clear(ni)
    if getgenv()[nJ] == n1 then
        getgenv()[nJ] = nil
    end
end
local function fn317()
    ns("damage")
end
local function fn335(bK, bL)
    local pH
    local pI = bL
    for k, v in nD:QueryDescendants("BasePart#HumanoidRootPart") do
        local Parent = v.Parent
        if nL(Parent, v) then
            local Magnitude = (v.Position - bK).Magnitude
            if Magnitude < pI then
                pI = Magnitude
                pH = v
            end
        end
    end
    return pH, pI
end
local function fn450(bn, bo)
    if not (bn and bo and bo.Parent) then
        return false
    elseif bo.Position.Magnitude >= nA then
        return false
    elseif nT(bn) then
        nu(bn)
        return false
    else
        return true
    end
end
local function worker3()
    while not n1.Unloaded do
        if n1.Flags.UpgradeLuck then
            n1.UpgradeLuck()
        end
        if n1.Flags.UpgradeDamage then
            n1.UpgradeDamage()
        end
        task.wait(0.35)
    end
end
local function fn492(bD)
    for k, v in nD:QueryDescendants("BasePart#HumanoidRootPart") do
        local Parent = v.Parent
        if nr(Parent, v) then
            bD(Parent, v)
        end
    end
end
local function worker()
    while not n1.Unloaded do
        if n1.Flags.AutoRoll then
            n1.Roll()
            task.wait(0.4)
        else
            task.wait(0.25)
        end
    end
end
local function worker5()
    while not n1.Unloaded do
        n1.UpdateEsp()
        task.wait(0.2)
    end
end
local function fn523(aY)
    if not aY then
        return
    end
    nq(aY)
    nC(aY)
    local o4 = nF[aY]
    local o5 = nP(aY, "firerate")
    local o6 = o5 and o4 and o4.firerate ~= nil
    local o6_1
    if o6 then
        if n1.Flags.RapidFire then
            o6_1 = nx
        else
            o6_1 = o4.firerate
        end
        o5.Value = o6_1
    end
    if n1.Flags.NoReload then
        nk(aY)
    end
end
local function fn533(dX, dY, dZ)
    local Name = dX:FindFirstChild("Name")
    local Dist = dX:FindFirstChild("Dist")
    if Name then
        Name.Text = dY.Name
    end
    if Dist then
        Dist.Text = string.format("%dm", math.floor(dZ + 0.5))
    end
end
local function fn619(bg)
    if bg:GetAttribute("dead") then
        return true
    end
    local attr = bg:GetAttribute("clientHealth")
    local pi = type(attr) ~= "number" or attr <= 0
    if pi then
        return true
    end
    local pi_1 = (bg:GetAttribute("pendingPredictedDmg"))
    local pn = if pi_1 then 1 else 0
    local pl = 2404 * pn + 3747 * (1 - pn)
    local pm = 1518 * pn + 2783 * (1 - pn)
    if not ((pl * 3529 + pm * 2856 + pl * pm) % 16777213 == 16468396) then
        pi_1 = 0
    end
    if attr - pi_1 <= 0 then
        return true
    end
    local Humanoid = bg:FindFirstChildOfClass("Humanoid")
    return Humanoid ~= nil and Humanoid.Health <= 0
end
local function fn734(ah, ai)
    local oA = ah and ah:FindFirstChild("config")
    local oB = oA
    if oA then
        oA = oB:FindFirstChild(ai)
    end
    return oA
end
local function fn751(aB)
    local oQ = nP(aB, "ammo")
    if not oQ then
        return
    end
    local MaxValue = oQ.MaxValue
    local oS = type(MaxValue) ~= "number" or oQ.Value >= MaxValue
    if oS then
        return
    end
    ny = true
    oQ.Value = MaxValue
    ny = false
    if nj.core then
        nj.core.isReloading = false
    end
end
local function fn763()
    local pZ_1
    local pY_1
    local pX = nZ()
    if not pX then
        return nil
    end
    pY_1, pZ_1 = nE(pX.maxWeaponDpsWeaponKey)
    local p_ = pY_1 and pX.exaltedWeapons and pX.exaltedWeapons[pY_1]
    if p_ then
        p_ = not pZ_1 or pX.exaltedWeapons[pY_1][pZ_1]
    end
    if p_ then
        return pY_1, pZ_1
    end
    local p__1 = nil
    local pY_2 = nil
    local pZ_2 = -1
    local p0_2 = -1
    local exaltedWeapons = pX.exaltedWeapons
    if type(exaltedWeapons) ~= "table" then
        return nil
    end
    for k, v in exaltedWeapons do
        if type(v) == "table" then
            for k2, v in v do
                local p1_1 = nt[v.rarity] or 0
                local pX_2 = tonumber(v.rollOneIn) or 0
                if p1_1 > p0_2 or p1_1 == p0_2 and pX_2 > pZ_2 then
                    p0_2 = p1_1
                    pZ_2 = pX_2
                    p__1 = k
                    pY_2 = k2
                end
            end
        end
    end
    return p__1, pY_2
end
local function fn841(n)
    local on = typeof(cloneref) == "function" and typeof(n) == "Instance"
    if on then
        return cloneref(n)
    end
    return n
end
local function fn854(au)
    local oJ = nF[au]
    if not oJ then
        return
    end
    local oK = nP(au, "firerate")
    if oK and oJ.firerate ~= nil then
        oK.Value = oJ.firerate
    end
end
local function worker4()
    while not n1.Unloaded do
        local rS = nH()
        if rS then
            nv(rS)
        end
        if n1.Flags.KillAura then
            n1.KillAura()
            local rT = rS and nP(rS, "firerate")
            local rS_1 = nx
            local rU = rT
            if not n1.Flags.RapidFire then
                if rT then
                    rT = rU.Value
                end
                rS_1 = rT or 0.1
            end
            task.wait(math.max(0.02, rS_1))
        else
            nh()
            task.wait(0.15)
        end
    end
end
local function fn866()
    if nj.core and nj.input then
        return true
    end
    local qP_1 = pcall(function()
        local Player_Logic = LocalPlayer.PlayerScripts:WaitForChild("Player Logic", 5)
        local qN = Player_Logic and Player_Logic:WaitForChild("toolSystem"):WaitForChild("modules")
        if not qN then
            return
        end
        nj.core = require(qN:WaitForChild("coreHandler"))
        nj.input = require(qN:WaitForChild("inputHandler"))
    end)
    return qP_1 and nj.core ~= nil and nj.input ~= nil
end
local function fn892()
    if typeof(gethui) == "function" then
        return gethui()
    end
    return LocalPlayer:WaitForChild("PlayerGui")
end
local function fn918(d2, d3)
    local d5 = nI()
    local highlight = Instance.new("Highlight")
    highlight.Name = "Esp"
    highlight.Adornee = d2
    highlight.FillColor = Color3.fromRGB(255, 70, 70)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.65
    highlight.OutlineTransparency = 0.1
    highlight.Parent = d5
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "Esp"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(160, 36)
    billboardGui.StudsOffset = Vector3.new(0, 3.2, 0)
    billboardGui.Adornee = d3
    billboardGui.Parent = d5
    local textLabel2 = Instance.new("TextLabel")
    textLabel2.Name = "Name"
    textLabel2.BackgroundTransparency = 1
    textLabel2.Size = UDim2.fromScale(1, 0.55)
    textLabel2.Font = Enum.Font.BuilderSans
    textLabel2.TextColor3 = Color3.fromRGB(255, 90, 90)
    textLabel2.TextStrokeTransparency = 0.4
    textLabel2.TextScaled = true
    textLabel2.Parent = billboardGui
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Dist"
    textLabel.BackgroundTransparency = 1
    textLabel.Position = UDim2.fromScale(0, 0.55)
    textLabel.Size = UDim2.fromScale(1, 0.45)
    textLabel.Font = Enum.Font.BuilderSans
    textLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
    textLabel.TextStrokeTransparency = 0.4
    textLabel.TextScaled = true
    textLabel.Parent = billboardGui
    nl[d2] = { gui = billboardGui, highlight = highlight, root = d3 }
end
local function fn920(bV)
    local pR = bV == ""
    local pR_1
    local pS = type(bV) ~= "string" or pR
    local pS_1
    if pS then
        return nil
    end
    pS_1, pR_1 = string.match(bV, "^(.-):(%b{})$")
    if pS_1 then
        return pS_1, pR_1
    end
    return bV, nil
end
local function fn958(ba)
    local pb = ba and ba:GetAttribute("simZombieId")
    if type(pb) == "number" then
        nw[pb] = os.clock() + np
    end
end
nh = nil
ni = nil
nj = nil
nk = nil
nl = nil
nm = nil
np = nil
nq = nil
nr = nil
ns = nil
nt = nil
nu = nil
nv = nil
nw = nil
nx = nil
ny = nil
nA = nil
nB = nil
nC = nil
nD = nil
nE = nil
nF = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
nL = nil
nM = nil
LocalPlayer = nil
nO = nil
nP = nil
nR = nil
nT = nil
nU = nil
nV = nil
nZ = nil
n1 = nil
local Players, nn, no, nz, nQ, Workspace, RunService, nX, nY, n_, n0
local n2_1
local n7_1
local n8_1
Players, RunService, Workspace, LocalPlayer, nJ = nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
nJ = "OuroborosZoneDefenseRNG"
local n4 = getgenv()[nJ]
if n4 and n4.Unload then
    n4.Unload()
end
n8_1, nY, nU, nR, nK, nG, nD, nA, nx, nt, n7_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((nx and not n8_1 or not nK and nK) and (not n8_1 and nx or not nK and not nx) or (not nx and not n8_1 or nK and not nx or (nx and nK or (nx or not nK)))) and ((nK and not n8_1 or (not nK or n8_1)) and (not n8_1 and not nK or (not nK or not n8_1)) and ((not nx or nx or nK and nK) and (nK or n8_1 or nx and not nx))) and not (((nx and not n8_1 or not nK and nK) and (not n8_1 and nx or not nK and not nx) or (not nx and not n8_1 or nK and not nx or (nx and nK or (nx or not nK)))) and ((nK and not n8_1 or (not nK or n8_1)) and (not n8_1 and not nK or (not nK or not n8_1)) and ((not nx or nx or nK and nK) and (nK or n8_1 or nx and not nx)))) then
    nx = fn841
else
    n7_1 = fn841
end
local n6 = n7_1(ReplicatedStorage)
local n3_1 = n7_1(n6:WaitForChild("events"))
local n8_2 = n7_1(n6:WaitForChild("modules"))
nY = require(n7_1(n8_2:WaitForChild("itemData")))
nU = require(n7_1(n8_2:WaitForChild("newProgressionData")))
nR = require(n7_1(n8_2:WaitForChild("utils")))
nK = require(n7_1(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("clientData")))
nG = {
    Roll = n7_1(n3_1:WaitForChild("rollWeapon")),
    TrackUpgrade = n7_1(n3_1:WaitForChild("purchaseTrackUpgrade")),
    Equip = n7_1(n3_1:WaitForChild("equipItem"))
}
nD = n7_1(Workspace:WaitForChild("ai"))
nA = 8000
nx = 0.03
nt = {}
for k, v in nU.rarityOrder do
    nt[v] = k
end
ni, nF, nB, ny, nw, np, nl, nj, n1, nO, n_, nZ, nH, nP, nq, nM, nk, nC, nv, nu, nT, nr, nL, n0, nz, nE, no, ns, nX, nh, nm, nV, nI, nn, nQ, n2_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ni = {}
n_ = fn110
nF = {}
nB = {}
ny = false
nw = {}
np = 5
if (false or not nm or not nz and not nm) and (nz or nz or (nm or not nz)) or ((nz or not nm) and (false or not nm) or n2_1 and not nm and (false and nz)) or (not nm and nz and (nm and not nz) and (not nm and false and (not nz and not nz)) or not nm and n2_1 and (not nz or nm) and ((n2_1 or n2_1) and (n2_1 or n2_1))) or not ((false or not nm or not nz and not nm) and (nz or nz or (nm or not nz)) or ((nz or not nm) and (false or not nm) or n2_1 and not nm and (false and nz)) or (not nm and nz and (nm and not nz) and (not nm and false and (not nz and not nz)) or not nm and n2_1 and (not nz or nm) and ((n2_1 or n2_1) and (n2_1 or n2_1)))) then
    nl = {}
else
    nF = {}
end
nj = { core = nil, input = nil, auraMouse = false }
n1 = {
    Unloaded = false,
    Flags = {
        AutoRoll = false,
        AutoEquipBest = false,
        UpgradeLuck = false,
        UpgradeDamage = false,
        KillAura = false,
        NoReload = false,
        RapidFire = false,
        MobEsp = false
    }
}
nZ = fn96
nH = fn16
nP = fn734
nq = fn166
nM = fn854
nk = fn751
nC = function(aJ)
    local o1 = nP(aJ, "ammo")
    if not o1 or nB[aJ] then
        return
    end
    nB[aJ] = n_(o1:GetPropertyChangedSignal("Value"), function()
        local oX = ny
        local o0 = if oX then 1 else 0
        local oZ = 3767 * o0 + 1855 * (1 - o0)
        local o_ = 2879 * o0 + 2585 * (1 - o0)
        if not ((oZ * 3686 + o_ * 1767 + oZ * o_) % 16777213 == 13040335) then
            oX = n1.Unloaded
        end
        if not oX then
            oX = not n1.Flags.NoReload
        end
        if oX then
            return
        end
        nk(aJ)
    end)
end
nv = fn523
nu = fn958
nT = fn619
nr = fn450
nL = fn205
n0 = fn492
nz = fn335
nE = fn920
no = fn763
n1.Roll = fn184
n1.EquipBest = function()
    local qu, qv
    local qw = nZ()
    qv, qu = no()
    if not (qw and qv) then
        return
    end
    local qx_1 = nY[qv]
    local qy = qx_1 and qx_1.itemSubtype
    local qx_2 = qy
    if qy then
        qy = qw.equippedExaltedWeapons
    end
    if qy then
        qy = qw.equippedExaltedWeapons[qx_2]
    end
    local qw_1 = qy
    if qw_1 and qw_1.weaponName == qv and qw_1.exaltedWeaponId == qu then
        return
    end
    pcall(function()
        nG.Equip:InvokeServer(qv, qu)
    end)
end
ns = function(cI)
    local qD = nZ()
    if not qD then
        return
    end
    local qE = nU.upgradeTracks[cI]
    local qF = qD[cI .. "Level"]
    local qG = qE and type(qF) == "number"
    if not qG or qE.maxLevel <= qF then
        return
    end
    local qE_1 = nU.getUpgradePrice(cI, qF + 1, nU.isTutorialFree(qD, cI), LocalPlayer)
    local qF_1 = type(qE_1) ~= "number" or qD.cash < qE_1
    if qF_1 then
        return
    end
    pcall(function()
        nG.TrackUpgrade:InvokeServer(cI)
    end)
end
n1.UpgradeLuck = fn118
n1.UpgradeDamage = fn317
nX = fn866
nh = fn164
n1.KillAura = function()
    local qY
    if not nX() then
        return
    end
    local qZ = nH()
    local q_ = not qZ or not qZ:GetAttribute("ready")
    if q_ then
        nh()
        return
    end
    nv(qZ)
    local q__1 = LocalPlayer.Character
    local q0 = q__1 and q__1:FindFirstChild("HumanoidRootPart")
    local q1 = q__1
    if q1 then
        q1 = q__1:FindFirstChildOfClass("Humanoid")
    end
    local q__2 = q0
    local q0_1 = q1
    if q__2 then
        q__2 = q0_1
    end
    if q__2 then
        q__2 = q0_1.Health > 0
    end
    if not q__2 then
        return
    end
    local q__3 = nY[qZ.Name]
    if (q__3 and q__3.itemSubtype) == "melee" then
        if not nj.auraMouse then
            nj.auraMouse = true
            task.spawn(function()
                nj.input.isMouseDown = true
                pcall(nj.input.onMouseDown)
                if nj.auraMouse then
                    nj.input.isMouseDown = false
                    nj.auraMouse = false
                end
            end)
        end
        return
    end
    nh()
    local q__5 = nP(qZ, "ammo")
    if not n1.Flags.NoReload and q__5 and q__5.Value <= 0 then
        return
    end
    local q__6 = q0.Position
    local q0_4 = qZ:GetAttribute("range") or 250
    qY = nz(q__6, q0_4)
    if not qY then
        return
    end
    local q__7 = qY.Parent
    pcall(function()
        nj.input.fireBullet(n1.Flags.NoReload, nil, nil, nil, nil, CFrame.new(qY.Position))
    end)
    local q0_5 = q__7 and nT(q__7)
    if q0_5 then
        nu(q__7)
    end
    if n1.Flags.NoReload then
        nk(qZ)
    end
end
nm = fn276
nV = fn892
nI = fn240
nn = fn533
nQ = fn918
n1.UpdateEsp = function()
    local rr, rs
    if not n1.Flags.MobEsp then
        nm()
        return
    end
    local Character = LocalPlayer.Character
    local ru = Character and Character:FindFirstChild("HumanoidRootPart")
    rr = {}
    rs = ru
    n0(function(ej, ek)
        rr[ej] = true
        if not nl[ej] then
            nQ(ej, ek)
        end
        local rk = nl[ej]
        if rk then
            rk.root = ek
            if rk.highlight then
                rk.highlight.Adornee = ej
            end
            if rk.gui then
                rk.gui.Adornee = ek
                local rl_1 = rs and (ek.Position - rs.Position).Magnitude or 0
                nn(rk.gui, ej, rl_1)
            end
        end
    end)
    for k, v in nl do
        if not rr[k] then
            if v.gui then
                v.gui:Destroy()
            end
            if v.highlight then
                v.highlight:Destroy()
            end
            nl[k] = nil
        end
    end
end
n1.Unload = fn307
getgenv()[nJ] = n1
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
local function n2_2()
    local Unload
    local Library
    local e7 = "https://ouroboros-hub-rbx.web.app/"
    local e5 = "https://discord.gg/ehKVq7pf7v"
    local HttpService = game:GetService("HttpService")
    local e4 = "Zone Defense RNG"
    local e6 = "https://rscripts.net/@Ouroboros"
    local UserInputService = game:GetService("UserInputService")
    local TeleportService = game:GetService("TeleportService")
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    Unload = n1.Unload
    n1.Unload = function()
        if not Library.Unloaded then
            Library:Unload()
        else
            Unload()
        end
    end
    Library:OnUnload(Unload)
    local function fi(fj, fk)
        if setclipboard then
            setclipboard(fj)
        elseif toclipboard then
            toclipboard(fj)
        end
        Library:Notify(fk)
    end
    local function onDiscord()
        fi(e5, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = e5, Copyable = true }, "|", e4 },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    local fr = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local fs = fr[2]:AddSubTab("Weapons", "swords")
    local ft = fr[2]:AddSubTab("Combat", "crosshair")
    local function fu(fv)
        local DiscordGroup = fv:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    fu(fs)
    fu(ft)
    fu(fr[3])
    fu(fr[4])
    local function fy(fz, fA)
        Toggles[fz]:OnChanged(function(fC)
            n1.Flags[fA] = fC == true
        end)
    end
    local RollingGroup = fs:AddLeftGroupbox("Rolling", "dices")
    RollingGroup:AddToggle("AutoRoll", { Text = "Auto Roll Weapon", Default = false })
    RollingGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Weapon", Default = false })
    local UpgradesGroup = fs:AddRightGroupbox("Upgrades", "trending-up")
    UpgradesGroup:AddToggle("UpgradeLuck", { Text = "Upgrade Weapon Luck", Default = false })
    UpgradesGroup:AddToggle("UpgradeDamage", { Text = "Upgrade Weapon Damage", Default = false })
    local CombatGroup = ft:AddLeftGroupbox("Combat", "swords")
    CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
    CombatGroup:AddToggle("NoReload", { Text = "No Reload", Default = false })
    CombatGroup:AddToggle("RapidFire", { Text = "Rapid Fire", Default = false })
    local VisualsGroup = ft:AddRightGroupbox("Visuals", "eye")
    VisualsGroup:AddToggle("MobEsp", { Text = "Mob ESP", Default = false })
    fy("AutoRoll", "AutoRoll")
    fy("AutoEquipBest", "AutoEquipBest")
    fy("UpgradeLuck", "UpgradeLuck")
    fy("UpgradeDamage", "UpgradeDamage")
    fy("NoReload", "NoReload")
    fy("RapidFire", "RapidFire")
    Toggles.MobEsp:OnChanged(function(fK)
        n1.Flags.MobEsp = fK == true
        if not fK then
            nm()
        end
    end)
    Toggles.KillAura:OnChanged(function(fO)
        n1.Flags.KillAura = fO == true
        if not fO then
            nh()
        end
    end)
    local function fS()
        local sX
        local sZ
        local sT
        local sP
        local sW
        local sS
        sP = nil
        sS = nil
        sT = nil
        sW = nil
        sX = nil
        sZ = nil
        local sQ, sR, Label3, Label2, sY, Label
        sP = function(fU, fV)
            return string.format('<font color="%s">%s</font>', fV, fU)
        end
        sR = function(fX, fY, fZ)
            return string.format("<b>%s</b> %s %s", fX, sP("-", "#5a6070"), sP(fY, fZ))
        end
        local s0 = "#8b93a3"
        sZ = "#7fd47f"
        sW = "#e8a34d"
        sS = "#e05a5a"
        local function s2()
            local r0 = hookfunction ~= nil
            local r1 = hookmetamethod ~= nil
            local r2 = getrawmetatable ~= nil
            local r3 = setrawmetatable ~= nil
            local r4 = getgc ~= nil
            local r5 = getgenv ~= nil
            local r6 = getreg ~= nil
            local r7 = getconnections ~= nil
            local r8 = firesignal ~= nil
            local r9 = getcallbackvalue ~= nil
            local sa = setclipboard ~= nil
            local sb = getcustomasset ~= nil
            local sc = getnamecallmethod ~= nil
            local sd = isexecutorclosure ~= nil
            local se = fireproximityprompt ~= nil
            local sf = firetouchinterest ~= nil
            local sg = WebSocket ~= nil
            local sh = readfile ~= nil
            local si = writefile ~= nil
            local sk = (request or http_request) ~= nil
            local sm = (debug and debug.getupvalues) ~= nil
            local so = (debug and debug.setupvalue) ~= nil
            local sp = 0
            local sq = { r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sa, sb, sc, sd, se, sf, sg, sh, si, sk, sm, so }
            for i, v in ipairs(sq) do
                if v then
                    sp += 1
                end
            end
            local r0_1 = sp / #sq
            if r0_1 >= 0.9 then
                return sP("Full Support", sZ)
            elseif r0_1 >= 0.6 then
                return sP("Half Support", sW)
            else
                return sP("Low Support", sS)
            end
        end
        sT = "Unknown"
        pcall(function()
            local sC_1
            local sB_1
            if identifyexecutor then
                sC_1, sB_1 = identifyexecutor()
                local sD = sC_1 ~= ""
                local sE = type(sC_1) == "string" and sD
                if sE then
                    local sD_1 = type(sB_1) == "string" and sB_1 ~= "" and sC_1 .. " " .. sB_1
                    sT = sD_1 or sC_1
                end
            end
        end)
        local s3 = s2()
        sX = os.clock()
        sQ = function()
            local sJ = math.floor(os.clock() - sX)
            if sJ < 60 then
                return sJ .. "s"
            elseif sJ < 3600 then
                return string.format("%dm %ds", sJ // 60, sJ % 60)
            else
                return string.format("%dh %dm", sJ // 3600, sJ % 3600 // 60)
            end
        end
        local UserGroup = fr[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(sR("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, sZ), true)
        UserGroup:AddLabel(sR("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
        UserGroup:AddLabel(sR("Executor", sT .. "  " .. s3, sZ), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(sR("Session", sQ(), sW), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                fi(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                fi("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = fr[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddDivider("Server")
        SessionGroup:AddLabel(sR("Game", e4, "#6ec1ff"), true)
        Label2 = SessionGroup:AddLabel(sR("Players", "0/0", sZ), true)
        sY = tostring(game.JobId)
        local s1 = #sY > 18 and string.sub(sY, 1, 18) .. "..."
        local s3_1 = s1 or sY
        SessionGroup:AddLabel(sR("Job", s3_1, s0), true)
        Label = SessionGroup:AddLabel(sR("Ping", "0 ms", sW), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Server",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                fi(sY, "Copied Job ID")
            end
        })
        task.spawn(function()
            local sM_1
            local sL_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(sR("Session", sQ(), sW))
                Label2:SetText(sR("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), sZ))
                sL_1, sM_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local sL_2 = sL_1 and sM_1 .. " ms" or "n/a"
                Label:SetText(sR("Ping", sL_2, sW))
            end
        end)
        local SocialsGroup = fr[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                fi(e6, "Copied Rscripts profile to clipboard")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                fi(e7, "Copied website link")
            end
        })
    end
    fS()
    local function ha()
        local hc
        local hd
        local hb
        local he
        hb = {}
        hd = {}
        he = {}
        hc = {}
        local function hf()
            for k, v in hb do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(hb)
        end
        local function hj()
            for k, v in hc do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(hc)
        end
        local function hn()
            for k, v in hd do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(hd)
        end
        local function hr()
            for k, v in he do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(he)
        end
        local function hv(hw)
            if not hw:IsA("ProximityPrompt") then
                return
            end
            if he[hw] == nil then
                he[hw] = {
                    HoldDuration = hw.HoldDuration,
                    MaxActivationDistance = hw.MaxActivationDistance,
                    RequiresLineOfSight = hw.RequiresLineOfSight
                }
            end
            hw.HoldDuration = 0
            hw.MaxActivationDistance = 50
            hw.RequiresLineOfSight = false
        end
        local MovementGroup = fr[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", {
            Text = "NoClip",
            Default = false,
            Callback = function(hA)
                if not hA then
                    hf()
                end
            end
        })
        MovementGroup:AddToggle("InstantProximityPrompt", {
            Text = "Instant ProximityPrompt",
            Default = false,
            Callback = function(hC)
                if hC then
                    for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                        hv(v)
                    end
                else
                    hr()
                end
            end
        })
        local FlyGroup = fr[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local function hL()
            local Character = LocalPlayer.Character
            local tN = Character and Character:FindFirstChildOfClass("Humanoid")
            return tN
        end
        n_(RunService.Stepped, function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip.Value then
                local Character = LocalPlayer.Character
                if Character then
                    for i, descendant in Character:GetDescendants() do
                        local t1 = if descendant:IsA("BasePart") then 1 else 0
                        if t1 == 1 then
                            if hb[descendant] == nil then
                                hb[descendant] = descendant.CanCollide
                            end
                            descendant.CanCollide = false
                        end
                    end
                end
            end
        end)
        n_(UserInputService.JumpRequest, function()
            if Library.Unloaded or not Toggles.InfJump.Value then
                return
            end
            local t2_1 = hL()
            if t2_1 then
                t2_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
        n_(Workspace.DescendantAdded, function(ic)
            if Toggles.InstantProximityPrompt.Value then
                hv(ic)
            end
        end)
        n_(RunService.RenderStepped, function(ih)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local t9 = Character and Character:FindFirstChildOfClass("Humanoid")
            local ua = Character
            if ua then
                ua = Character:FindFirstChild("HumanoidRootPart")
            end
            local t8_1 = ua
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and t9 then
                if hc[t9] == nil then
                    hc[t9] = t9.WalkSpeed
                end
                t9.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and t8_1 and t9 and CurrentCamera then
                if hd[t9] == nil then
                    hd[t9] = t9.PlatformStand
                end
                t9.PlatformStand = true
                local ua_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        ua_4 += CurrentCamera.CFrame.LookVector
                    end
                    local ug = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                    if ug == 1 then
                        ua_4 -= CurrentCamera.CFrame.LookVector
                    end
                    local ug_1 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                    if ug_1 == 1 then
                        ua_4 -= CurrentCamera.CFrame.RightVector
                    end
                    local ug_2 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                    if ug_2 == 1 then
                        ua_4 += CurrentCamera.CFrame.RightVector
                    end
                    local ug_3 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                    if ug_3 == 1 then
                        ua_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        ua_4 -= Vector3.new(0, 1, 0)
                    end
                end
                t8_1.AssemblyLinearVelocity = Vector3.zero
                if ua_4.Magnitude > 0 then
                    t8_1.CFrame = t8_1.CFrame + ua_4.Unit * Options.FlySpeed.Value * ih
                end
            end
        end)
        Toggles.Fly:OnChanged(function(iz)
            if not iz then
                hn()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function(iB)
            if not iB then
                hj()
            end
        end)
        Library:OnUnload(function()
            hf()
            hj()
            hn()
            hr()
        end)
    end
    ha()
    local function iH()
        local jm
        local iM
        local GuiService = game:GetService("GuiService")
        local Lighting = game:GetService("Lighting")
        iM = {}
        local VirtualUser = game:GetService("VirtualUser")
        local CoreGui = game:GetService("CoreGui")
        local iN
        local iP = 0
        local iO = false
        local iQ = os.clock()
        local MenuGroup = fr[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function iU()
            local CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
            iP += 1
            iQ = os.clock()
            Label:SetText("AFK triggers: " .. iP)
        end
        local function onAntiGameplayPause(i2)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not i2)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not i2
                end
            end)
            if i2 then
                pcall(function()
                    if sethiddenproperty then
                        sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                    else
                        LocalPlayer.GameplayPaused = false
                    end
                end)
            end
        end
        local function jd()
            for k, v in iM do
                local ut = k
                local uv = v
                if ut.Parent then
                    pcall(function()
                        ut.Enabled = uv
                    end)
                end
            end
            table.clear(iM)
            if iN then
                pcall(function()
                    settings().Rendering.QualityLevel = iN.Quality
                end)
                Lighting.GlobalShadows = iN.Shadows
                Lighting.FogEnd = iN.Fog
                iN = nil
            end
        end
        jm = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
        local function jn(jo)
            if jm[jo.ClassName] then
                if iM[jo] == nil then
                    iM[jo] = jo.Enabled
                end
                jo.Enabled = false
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(jr)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not jr)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(jw)
                if jw then
                    if not iN then
                        iN = {
                            Quality = settings().Rendering.QualityLevel,
                            Shadows = Lighting.GlobalShadows,
                            Fog = Lighting.FogEnd
                        }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9000000000
                    for i, descendant in Workspace:GetDescendants() do
                        pcall(jn, descendant)
                    end
                else
                    jd()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = fr[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        n_(LocalPlayer.Idled, function()
            if Toggles.AntiAfk.Value then
                pcall(iU)
            end
        end)
        n_(Workspace.DescendantAdded, function(jM)
            if Toggles.FpsBoost.Value then
                jn(jM)
            end
        end)
        local function jP(jQ)
            if iO or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            iO = true
            local uK_1 = pcall(function()
                if jQ then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not uK_1 then
                iO = false
                if not jQ then
                    jP(true)
                end
            end
        end
        n_(TeleportService.TeleportInitFailed, function(j2)
            if j2 == LocalPlayer and iO then
                iO = false
                task.delay(3, function()
                    jP(true)
                end)
            end
        end)
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local uQ = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not uQ then
                return
            end
            n_(uQ.ChildAdded, function(kd)
                if kd.Name == "ErrorPrompt" then
                    jP(false)
                end
            end)
        end)
        task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    onAntiGameplayPause(true)
                end
                local uT = Toggles.AntiAfk.Value and os.clock() - iQ >= 60
                if uT then
                    pcall(iU)
                end
                task.wait(1)
            end
        end)
        Library:OnUnload(function()
            onAntiGameplayPause(false)
            jd()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    iH()
    local function kq()
        local vM, vN, vO, vP
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(fr[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/ZoneDefenseRNG")
        local vQ = SaveManager:BuildConfigSection(fr[4])
        vN = function(ky, kz)
            local uW_1 = (ky == "Toggle" and Toggles or Options)[kz]
            local uV_2 = type(uW_1) == "table" and uW_1.Type == ky
            return uV_2 and uW_1 or nil
        end
        vP = function(kI, kJ)
            local Type = kJ.Type
            if Type == "Toggle" then
                return { idx = kI, type = "Toggle", value = kJ.Value == true }
            elseif Type == "Slider" then
                return { idx = kI, type = "Slider", value = tostring(kJ.Value) }
            elseif Type == "Dropdown" then
                return { idx = kI, type = "Dropdown", multi = kJ.Multi == true, value = kJ.Value }
            elseif Type == "Input" then
                local u2 = kJ.Value
                local u6 = if u2 then 1 else 0
                local u4 = 3064 * u6 + 3187 * (1 - u6)
                local u5 = 409 * u6 + 953 * (1 - u6)
                if not ((u4 * 2449 + u5 * 2313 + u4 * u5) % 16777213 == 9702929) then
                    u2 = ""
                end
                return { idx = kI, type = "Input", text = tostring(u2) }
            elseif Type == "ColorPicker" then
                return { idx = kI, type = "ColorPicker", value = kJ.Value:ToHex(), transparency = kJ.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = kI,
                    type = "KeyPicker",
                    mode = kJ.Mode,
                    key = kJ.Value,
                    modifiers = kJ.Modifiers,
                    toggled = kJ.Toggled
                }
            else
                return nil
            end
        end
        vO = function()
            local vb = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local vc = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if vc then
                        local vc_1 = vP(k, v)
                        if vc_1 then
                            vb[#vb + 1] = vc_1
                        end
                    end
                end
            end
            table.sort(vb, function(kT, kU)
                if kT.type ~= kU.type then
                    return kT.type < kU.type
                end
                return kT.idx < kU.idx
            end)
            return { objects = vb }
        end
        vM = function(kW)
            local vs
            vs = nil
            local vt = type(kW) ~= "table" or type(kW.idx) ~= "string" or type(kW.type) ~= "string" or SaveManager.Ignore[kW.idx]
            if vt then
                return false
            end
            vs = vN(kW.type, kW.idx)
            if not vs then
                return false
            end
            local vt_1 = pcall(function()
                if kW.type == "Input" then
                    if type(kW.text) ~= "string" then
                        return
                    end
                    vs:SetValue(kW.text)
                elseif kW.type == "ColorPicker" then
                    vs:SetValueRGB(Color3.fromHex(kW.value), kW.transparency)
                elseif kW.type == "KeyPicker" then
                    vs:SetValue({ kW.key, kW.mode, kW.modifiers })
                    if kW.mode == "Toggle" and kW.toggled ~= nil then
                        vs.Toggled = kW.toggled
                        vs:Update()
                    end
                else
                    vs:SetValue(kW.value)
                end
            end)
            return vt_1
        end
        vQ:AddDivider()
        vQ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        vQ:AddButton("Export Config to Clipboard", function()
            local vw_1
            local vv_1
            vv_1, vw_1 = pcall(HttpService.JSONEncode, HttpService, vO())
            if not vv_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local vv_2 = setclipboard or toclipboard
            local vv_3 = type(vv_2) ~= "function" or not pcall(vv_2, vw_1)
            if vv_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        vQ:AddButton("Import Config from Clipboard Text", function()
            local vE_1
            local vC = Options.SaveManager_ImportSource.Value or ""
            local vC_1
            local vD = tostring(vC):match("^%s*(.-)%s*$")
            if vD == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            vC_1, vE_1 = pcall(HttpService.JSONDecode, HttpService, vD)
            local vD_1 = not vC_1 or type(vE_1) ~= "table" or type(vE_1.objects) ~= "table"
            if vD_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local vC_2 = 0
            for i, v in ipairs(vE_1.objects) do
                if vM(v) then
                    vC_2 += 1
                end
            end
            if vC_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local vE_2 = vC_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(vC_2, vE_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        n1.Flags.AutoRoll = Toggles.AutoRoll.Value
        n1.Flags.AutoEquipBest = Toggles.AutoEquipBest.Value
        n1.Flags.UpgradeLuck = Toggles.UpgradeLuck.Value
        n1.Flags.UpgradeDamage = Toggles.UpgradeDamage.Value
        n1.Flags.KillAura = Toggles.KillAura.Value
        n1.Flags.NoReload = Toggles.NoReload.Value
        n1.Flags.RapidFire = Toggles.RapidFire.Value
        n1.Flags.MobEsp = Toggles.MobEsp.Value
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    kq()
end
n2_2()
