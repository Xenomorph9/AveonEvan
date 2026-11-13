local yG
local zn
local zM
local worker
local zt
local LocalPlayer
local za
local yS
local zz
local yz
local zg
local yY
local zF
local zm
local CoreGui
local zL
local yL
local yR
local State
local yy
local zf
local yX
local zE
local yE
local zK
local zr
local yr
local connection
local ze
local yW
local zk
local zJ
local yJ
local y7
local yP
local zd
local yV
local zj
local zI
local yI
local yO
local zv
local yv
local zc
local yU
local yB
local y_
local zo
local y5
local zN
local yN
local zu
local yT
local zA
local yA
local yZ
local zG
local function fn48()
    return CoreGui
end
local function fn57(br)
    return LocalPlayer:GetAttribute(br)
end
local function fn81()
    local C1 = zk()
    if not C1 then
        return nil
    end
    local SpawnLocation = C1:FindFirstChildWhichIsA("SpawnLocation", true)
    if SpawnLocation then
        return SpawnLocation
    end
    return nil
end
local function fn114()
    zM.ringEnabled = false
end
local function fn148()
    return zu
end
local function fn170(kI)
    if kI then
        zt(y7, yL)
    else
        zr(y7)
        zI(nil)
        State.DuelStatus = "Idle"
    end
end
local function fn210(ky)
    local Hi = tostring(ky)
    if Hi == "Normal" or Hi == "Double" then
        zo.lane = Hi
    else
        zo.lane = "auto"
    end
    zo.target = nil
    zo.misses = 0
end
local function fn216(V)
    local Au = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if Au then
        return cloneref(V)
    end
    return V
end
local function fn245()
    local BA = y_()
    local BB = 0
    local BC = #BA
    local BG = 1
    while true do
        if BG <= BC then
            local BH = BG
            if yE(BH) then
                BB += 1
                BG += 1
                continue
            end
            break
        end
        break
    end
    return BB
end
local function onHeartbeat()
    local AR = not zN
    local AS = not yz() or AR
    if AS then
        return
    end
    local AR_1 = yT()
    if not AR_1 then
        return
    end
    AR_1.CFrame = zN
    AR_1.AssemblyLinearVelocity = Vector3.zero
end
local function fn314(hz)
    local Fh_1
    local ladder = zm.ladder
    local Fg = not ladder or not yN(ladder.ByTier)
    local Fg_1
    if Fg then
        return nil
    end
    Fg_1, Fh_1 = pcall(ladder.ByTier, hz, zK())
    local Ff_1 = Fg_1 and type(Fh_1) == "table"
    if Ff_1 then
        return Fh_1
    end
    return nil
end
local function fn322()
    local Bs = y_()
    local Bt = #Bs
    local Bx = 1
    while Bx <= Bt do
        local By = Bx
        if not yE(By) then
            return By, Bs[By]
        end
        Bx += 1
    end
    return nil, nil
end
local function fn360()
    return za("Wins")
end
local function fn385()
    local mogConfig = zm.mogConfig
    local Bm = not mogConfig or type(mogConfig.Zones) ~= "table"
    if Bm then
        return {}
    end
    return mogConfig.Zones
end
local function fn397(kR)
    if kR then
        zn()
    else
        yW()
        State.RingStatus = "Idle"
    end
end
local function fn413(k4)
    if k4 then
        yP.active = true
        zt(yP, yV)
    else
        zr(yP)
        if yP.active then
            yP.active = false
            worker()
        end
        State.ClickerStatus = "Idle"
    end
end
local function fn449(ap)
    zN = ap
end
local function fn458()
    zr(zo)
    zr(zg)
    zr(y7)
    zr(yX)
    zr(yP)
    if yP.active then
        yP.active = false
        task.spawn(worker)
    end
    zr(yI)
    zr(yB)
    zr(yr)
    zr(zL)
    zr(zF)
    zr(zA)
    yW()
    zI(nil)
end
local function fn459(bu)
    local Bg = tonumber(zv(bu)) or 0
    return Bg
end
local function fn505()
    local D9_1
    local D8_1
    local treadmills = zm.treadmills
    local D4 = zk()
    local D5 = not treadmills or type(treadmills.Belts) ~= "table"
    if D5 or not D4 then
        return {}
    end
    local D5_1 = type(treadmills.FolderPath) == "table" and treadmills.FolderPath
    local D6_1 = { "TreadmillFolder", "Treadmills" }
    local D7_1 = D5_1
    local Ef = if D7_1 then 1 else 0
    local Ed = 281 * Ef + 1197 * (1 - Ef)
    local Ee = 3126 * Ef + 1753 * (1 - Ef)
    if not ((Ed * 1262 + Ee * 1070 + Ed * Ee) % 16777213 == 4577848) then
        D7_1 = D6_1
    end
    local D5_2 = D4
    local D4_1 = D7_1
    for i, v in ipairs(D4_1) do
        local D4_2 = D5_2 and D5_2:FindFirstChild(v)
        D5_2 = D4_2
    end
    if not D5_2 then
        return {}
    end
    local D4_3 = {}
    for i, v in ipairs(treadmills.Belts) do
        local D6_2 = D5_2:FindFirstChild(tostring(v.Name))
        if D6_2 then
            local D7_2 = false
            if yN(treadmills.Unlocked) then
                D8_1, D9_1 = pcall(treadmills.Unlocked, LocalPlayer, v)
                D7_2 = D8_1 and D9_1 == true
            end
            local insert = table.insert
            local D9_2 = tostring(v.Name)
            local Ea_2 = tonumber(v.Multiplier) or 1
            insert(D4_3, { Name = D9_2, Multiplier = Ea_2, Unlocked = D7_2, Model = D6_2 })
        end
    end
    table.sort(D4_3, function(gB, gC)
        return gB.Multiplier > gC.Multiplier
    end)
    return D4_3
end
local function fn530(lI)
    if lI then
        zt(zA, yZ)
    else
        zr(zA)
        State.FreeGiftStatus = "Idle"
    end
end
local function fn539()
    return not zf.Unloaded
end
local function fn552()
    local Character = LocalPlayer.Character
    local AB = Character and Character:FindFirstChild("HumanoidRootPart")
    return AB or nil
end
local function worker2()
    local Be_1
    local Bd_1
    Bd_1, Be_1 = pcall(yG)
    if not Bd_1 then
        warn("[Ouroboros] module load failed: " .. tostring(Be_1))
        zm.ready = true
    end
end
local function fn597()
    gethui = zG
end
local function fn622(kq)
    if kq then
        zt(zo, yA)
    else
        zr(zo)
        zI(nil)
        State.WinStatus = "Idle"
    end
end
local function fn659(ec)
    ec.stopped = true
    local CH = ec.generation or 0
    ec.generation = CH + 1
end
local function fn694()
    if not zz() then
        State.RingStatus = "Ring packets unavailable"
        return
    end
    zM.ringEnabled = true
    State.RingStatus = "Waiting for rings"
end
local function fn712(dH)
    local Character = dH.Character
    local Cu = Character and Character:FindFirstChild("HumanoidRootPart")
    local mogConfig = zm.mogConfig
    local Cu_2 = mogConfig and mogConfig.DuelPromptName
    local CA = if Cu_2 then 1 else 0
    local Cy = 374 * CA + 3803 * (1 - CA)
    local Cz = 494 * CA + 1261 * (1 - CA)
    if not ((Cy * 889 + Cz * 2089 + Cy * Cz) % 16777213 == 1549208) then
        Cu_2 = "MogDuel"
    end
    local Cv_1 = Cu
    local Cw = Cu_2
    if Cv_1 then
        Cv_1 = Cu:FindFirstChild(Cw)
    end
    local Cu_3 = Cv_1
    if Cv_1 then
        Cv_1 = Cu_3:IsA("ProximityPrompt")
    end
    if Cv_1 then
        return Cu_3, Cu
    end
    return nil, nil
end
local function fn728(eD)
    local winPadConfig = zm.winPadConfig
    local C_ = winPadConfig and winPadConfig.Rewards
    local C__1 = type(C_) == "table" and #C_
    local CZ_2 = C__1 or 0
    if CZ_2 > 0 then
        return CZ_2
    end
    local CZ_3 = 0
    while true do
        local C__3 = eD and eD:FindFirstChild(tostring(CZ_3 + 1))
        if C__3 then
            CZ_3 += 1
            continue
        end
        break
    end
    return CZ_3
end
local function fn743(Y)
    return type(Y) == "function"
end
local function fn778(lq)
    if lq then
        zt(yr, zc)
    else
        zr(yr)
        State.RebirthStatus = "Idle"
    end
end
local function fn812()
    connection:Disconnect()
    zN = nil
end
local function fn890(lo)
    yB.equip = lo == true
end
local function fn902(af)
    local Aw = tonumber(af) or 0
    af = Aw
    local Aw_1 = 1
    local Ax = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while af >= 1000 and Aw_1 < 12 do
        af = af / 1000
        Aw_1 += 1
    end
    if Aw_1 == 1 then
        return string.format("%d", af)
    end
    return string.format("%.2f%s", af, Ax[Aw_1])
end
local function fn964()
    local winPadConfig = zm.winPadConfig
    local CK = zk()
    local CL = CK
    if CL then
        local CN_1 = winPadConfig and winPadConfig.Folder or "WinPads"
        CL = CK:FindFirstChild(CN_1)
    end
    local CK_1 = CL
    if not CK_1 then
        return nil, nil
    end
    local CM_2 = winPadConfig and winPadConfig.NormalLane or "Normal"
    local CL_2 = winPadConfig
    if CL_2 then
        CL_2 = winPadConfig.DoubleLane
    end
    local CM_3 = CL_2
    local CS = if CM_3 then 1 else 0
    local CQ = 3282 * CS + 1748 * (1 - CS)
    local CR = 3639 * CS + 867 * (1 - CS)
    if not ((CQ * 2321 + CR * 1482 + CQ * CR) % 16777213 == 8176505) then
        CM_3 = "Double"
    end
    local CL_3 = winPadConfig
    local CO = CM_3
    if CL_3 then
        CL_3 = winPadConfig.DoubleAttribute
    end
    local CJ_1 = CL_3 or "WinsX2"
    local lane = zo.lane
    if lane == "Normal" then
        return CK_1:FindFirstChild(CM_2), CM_2
    elseif lane == "Double" then
        return CK_1:FindFirstChild(CO), CO
    elseif zv(CJ_1) == true then
        local CJ_3 = CK_1:FindFirstChild(CO)
        if CJ_3 then
            return CJ_3, CO
        end
        return CK_1:FindFirstChild(CM_2), CM_2
    else
        return CK_1:FindFirstChild(CM_2), CM_2
    end
end
local function fn969()
    local Mog = zJ:FindFirstChild("Mog")
    local Modules = zJ:FindFirstChild("Modules")
    if Mog then
        zm.packets = ze(Mog:FindFirstChild("MogPackets"))
        zm.mogConfig = ze(Mog:FindFirstChild("MogConfig"))
        zm.winPadConfig = ze(Mog:FindFirstChild("WinPadConfig"))
        zm.hammerConfig = ze(Mog:FindFirstChild("HammerConfig"))
        zm.ladder = ze(Mog:FindFirstChild("MogLadder"))
    end
    if Modules then
        zm.treadmills = ze(Modules:FindFirstChild("Treadmills"))
        zm.rebirths = ze(Modules:FindFirstChild("Rebirths"))
        zm.playTime = ze(Modules:FindFirstChild("PlayTimeRewards"))
        zm.daily = ze(Modules:FindFirstChild("DailyRewards"))
        zm.freeGift = ze(Modules:FindFirstChild("FreeGiftRewards"))
        zm.autoClicker = ze(Modules:FindFirstChild("AutoClicker"))
    end
    zm.rewardRemotes = zJ:FindFirstChild("RewardRemotes")
    zm.rebirthRemotes = zJ:FindFirstChild("RebirthRemotes")
    zm.clickerRemotes = zJ:FindFirstChild("AutoClickerRemotes")
    local A4_1 = {}
    if not zm.packets or not zm.mogConfig then
        table.insert(A4_1, "battles")
    end
    if not zm.winPadConfig then
        table.insert(A4_1, "win pads")
    end
    if not zm.hammerConfig then
        table.insert(A4_1, "hammers")
    end
    if not zm.treadmills then
        table.insert(A4_1, "treadmills")
    end
    if not zm.ladder then
        table.insert(A4_1, "ascend")
    end
    if not zm.rebirths or not zm.rebirthRemotes then
        table.insert(A4_1, "rebirth")
    end
    if not zm.rewardRemotes then
        table.insert(A4_1, "rewards")
    end
    if not zm.clickerRemotes or not zm.autoClicker then
        table.insert(A4_1, "in-game clicker")
    end
    zm.missing = A4_1
    zm.ready = true
end
local function fn989(h0)
    local hammerConfig = zm.hammerConfig
    local floor = math.floor
    local Fw_1 = hammerConfig and hammerConfig.OwnedAttribute or "HammerOwned"
    local Fy_1 = tonumber(zv(Fw_1)) or 0
    local Fw_2 = floor(Fy_1)
    if Fw_2 <= 0 or h0 < 1 or h0 > 31 then
        return false
    end
    return bit32.band(Fw_2, bit32.lshift(1, h0 - 1)) ~= 0
end
local function fn995()
    return za("AppealTotal")
end
local function fn1010(kB)
    if kB then
        zt(zg, yR)
    else
        zr(zg)
        zI(nil)
        State.ZoneStatus = "Idle"
    end
end
local function fn1038(kP)
    local Hp = tonumber(kP) or 5
    y7.interval = math.max(2, Hp)
end
local function fn1050(lb)
    if lb then
        zt(yI, zj)
    else
        zr(yI)
        State.AscendStatus = "Idle"
    end
end
local function fn1075(lC)
    if lC then
        zt(zF, yS)
    else
        zr(zF)
        State.PlayTimeStatus = "Idle"
    end
end
local function fn1086()
    return zE:FindFirstChild("World" .. zK())
end
local function fn1088(kV)
    if kV then
        zt(yX, yU)
    else
        zr(yX)
        zI(nil)
        State.TreadmillStatus = "Idle"
    end
end
local function fn1128(a4)
    local AZ_1
    local AY_1
    if not a4 then
        return nil
    end
    AY_1, AZ_1 = pcall(require, a4)
    local A_ = AY_1 and type(AZ_1) == "table"
    if A_ then
        return AZ_1
    end
    return nil
end
local function fn1144(bY)
    return zv("Beat_Zone" .. bY - 1) == true
end
local function fn1169(gE)
    local Eu_1
    local treadmills = zm.treadmills
    local Et = treadmills and yN(treadmills.FindBelt)
    local Et_1
    if Et then
        Et_1, Eu_1 = pcall(treadmills.FindBelt, gE.Model)
        local Es_1 = Et_1 and typeof(Eu_1) == "Instance" and Eu_1:IsA("BasePart")
        if Es_1 then
            return Eu_1
        elseif gE.Model:IsA("BasePart") then
            return gE.Model
        else
            return gE.Model:FindFirstChildWhichIsA("BasePart")
        end
    elseif gE.Model:IsA("BasePart") then
        return gE.Model
    else
        return gE.Model:FindFirstChildWhichIsA("BasePart")
    end
end
local function fn1177()
    local hammerConfig = zm.hammerConfig
    local FN = not hammerConfig or type(hammerConfig.Tiers) ~= "table"
    if FN then
        State.HammerStatus = "Hammer config unavailable"
        return
    end
    local max2 = math.max
    local FO = tonumber(hammerConfig.PadCooldown) or 0.8
    local FP = max2(1.5, FO + 1.5)
    local function FN_2()
        return yB.stopped
    end
    local max = math.max
    local floor2 = math.floor
    local FR = hammerConfig.TierAttribute or "HammerTier"
    local FS = tonumber(zv(FR)) or 0
    local FR_1 = max(0, floor2(FS))
    local FO_2 = yO()
    local FQ_1 = nil
    for i, v in ipairs(hammerConfig.Tiers) do
        local FS_1 = tonumber(v.Index) or 0
        local FS_2 = tonumber(v.Cost) or 0
        local FS_3 = FS_1 > FR_1 and FS_2 > 0 and FO_2 >= FS_2 and zd(FS_1)
        if FS_3 then
            FQ_1 = v
        end
    end
    if FQ_1 then
        local FO_3 = tonumber(FQ_1.Index) or 0
        local FO_4 = zd(FO_3)
        if FO_4 then
            State.HammerStatus = string.format("Buying the %s hammer", tostring(FQ_1.Name))
            yY(FO_4, FP, FN_2)
            local floor = math.floor
            local FT_2 = hammerConfig.TierAttribute or "HammerTier"
            local FU_2 = tonumber(zv(FT_2)) or 0
            local FT_3 = floor(FU_2)
            if FT_3 >= FO_3 then
                State.HammerStatus = string.format("Equipped the %s hammer", tostring(FQ_1.Name))
                return
            end
            State.HammerStatus = string.format("The %s hammer did not register, retrying", tostring(FQ_1.Name))
            return
        end
    end
    if not yB.equip then
        State.HammerStatus = string.format("Hammer tier %d, saving wins", FR_1)
        return
    end
    local FO_6 = nil
    for i, v in ipairs(hammerConfig.Tiers) do
        local FM_1 = tonumber(v.Index) or 0
        local FM_2 = yJ(FM_1) and zd(FM_1)
        if FM_2 then
            FO_6 = v
        end
    end
    if not FO_6 then
        State.HammerStatus = string.format("Hammer tier %d, saving wins", FR_1)
        return
    end
    local FM_3 = tonumber(FO_6.Index) or 0
    if FM_3 == FR_1 then
        State.HammerStatus = string.format("Best owned hammer equipped: %s", tostring(FO_6.Name))
        return
    end
    local FM_4 = zd(FM_3)
    if FM_4 then
        State.HammerStatus = string.format("Equipping the %s hammer", tostring(FO_6.Name))
        yY(FM_4, FP, FN_2)
        State.HammerStatus = string.format("Best owned hammer equipped: %s", tostring(FO_6.Name))
    end
end
local function fn1187(aP)
    local AV_2
    local AU = os.clock() + 8
    local AU_2
    while true do
        local AV_1 = State.MoveBusy and yz() and os.clock() < AU
        if AV_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    local AU_1 = State.MoveBusy or not yz()
    if AU_1 then
        return false
    end
    State.MoveBusy = true
    AU_2, AV_2 = pcall(aP)
    State.MoveBusy = false
    zI(nil)
    if not AU_2 then
        warn("[Ouroboros] movement error: " .. tostring(AV_2))
        return false
    end
    return AV_2
end
local function fn1206(cb)
    local BJ = zk()
    local BK = BJ and BJ:FindFirstChild(cb)
    local mogConfig = zm.mogConfig
    local BK_2 = mogConfig and mogConfig.PlayerPedestalName
    local BQ = if BK_2 then 1 else 0
    local BO = 1882 * BQ + 3681 * (1 - BQ)
    local BP = 3480 * BQ + 559 * (1 - BQ)
    if not ((BO * 3750 + BP * 841 + BO * BP) % 16777213 == 16533540) then
        BK_2 = "PlayerPedastal"
    end
    local BL_1 = BK
    local BM = BK_2
    if BL_1 then
        BL_1 = BK:FindFirstChild(BM, true)
    end
    local BJ_2 = BL_1
    local BK_3 = BJ_2 and BJ_2:IsA("BasePart")
    if BK_3 then
        return BJ_2
    end
    return nil
end
local function fn1207()
    local Bi = tonumber(zv("World"))
    if not Bi or Bi < 1 then
        return 1
    end
    return math.floor(Bi)
end
local function fn1239(k1)
    local Ht = tostring(k1)
    local Hu = Ht == "Best Unlocked"
    local Hv = Ht == ""
    local Hz = if Hv then 1 else 0
    local Hx = 2301 * Hz + 3965 * (1 - Hz)
    local Hy = 8 * Hz + 131 * (1 - Hz)
    if not ((Hx * 169 + Hy * 3875 + Hx * Hy) % 16777213 == 438277) then
        Hv = Hu
    end
    if Hv then
        yX.belt = "auto"
    else
        yX.belt = Ht
    end
end
local function fn1263(lw)
    if lw then
        zt(zL, yv)
    else
        zr(zL)
        State.DailyStatus = "Idle"
    end
end
local function fn1275(bM)
    local Bo = y_()
    local Bp = Bo[bM]
    if not Bp then
        return math.huge
    end
    local mogConfig = zm.mogConfig
    local Bq = mogConfig and type(mogConfig.WorldAppeal) == "table" and mogConfig.WorldAppeal[zK()]
    local Bq_1 = type(Bq) == "table" and tonumber(Bq[bM])
    if Bq_1 then
        return tonumber(Bq[bM])
    end
    local Bo_3 = tonumber(Bp.AppealReq) or math.huge
    return Bo_3
end
local function fn1306(eR)
    local C4 = y5() + 1
    if eR > 0 then
        C4 = math.min(C4, eR)
    end
    return math.max(1, C4)
end
local function fn1333(lh)
    if lh then
        zt(yB, yy)
    else
        zr(yB)
        zI(nil)
        State.HammerStatus = "Idle"
    end
end
yr = nil
LocalPlayer = nil
yv = nil
connection = nil
yy = nil
yz = nil
yA = nil
yB = nil
yE = nil
yG = nil
yI = nil
yJ = nil
yL = nil
worker = nil
yN = nil
yO = nil
yP = nil
yR = nil
yS = nil
yT = nil
yU = nil
yV = nil
yW = nil
yX = nil
yY = nil
yZ = nil
y_ = nil
CoreGui = nil
y5 = nil
y7 = nil
za = nil
local Players, yp, yq, ys, yu, yw, yC, Workspace, yF, yH, Lighting, TeleportService, y0, y1, y2, y4, y6, GuiService, y9
zc = nil
zd = nil
ze = nil
zf = nil
zg = nil
zj = nil
zk = nil
zm = nil
zn = nil
zo = nil
zr = nil
zt = nil
zu = nil
zv = nil
State = nil
zz = nil
zA = nil
zE = nil
zF = nil
zG = nil
zI = nil
zJ = nil
zK = nil
zL = nil
zM = nil
zN = nil
local zb, HttpService, zi, zl, zp, VirtualUser, zs, zw, UserInputService, RunService, zC, zD, zH
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, zG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
game:GetService("CollectionService")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local zR = "OuroborosMogEvolution"
zG = fn48
if getgenv then
    getgenv().gethui = zG
end
zf, zJ, zE, State, zN, connection, zm, yF, yN, yz, zs, yT, zI, zp, ys, zC, yu, ze, yG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn597)
local function zS(u)
    local Ag
    local Ah
    local Af
    Af = nil
    Ag = nil
    Ah = nil
    local Ai = u ~= ""
    local Aj = type(u) == "string" and Ai
    assert(Aj, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Ag = getgenv()
    assert(type(Ag) == "table", "getgenv did not return a table")
    local Ai_1 = Ag[u]
    if Ai_1 ~= nil then
        local Aj_1 = type(Ai_1) == "table" and type(Ai_1.Unload) == "function"
        assert(Aj_1, "Namespace is occupied")
        Ai_1.Unload()
        assert(Ag[u] == nil, "Previous instance did not release its namespace")
    end
    Ah = {}
    Af = { State = {}, Unloaded = false }
    Af.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if Af.Unloaded then
            A()
        else
            table.insert(Ah, A)
        end
        return A
    end
    Af.Unload = function()
        local z8_1
        local z7_1
        if Af.Unloaded then
            return
        end
        Af.Unloaded = true
        local z5 = {}
        local Ac = #Ah
        local Ab = -1
        while false and Ac <= 1 or true and Ac >= 1 do
            local Ad = Ac
            local z6_1 = table.remove(Ah, Ad)
            z7_1, z8_1 = pcall(z6_1)
            if not z7_1 then
                table.insert(z5, tostring(z8_1))
            end
            Ac += Ab
        end
        table.clear(Af.State)
        if #z5 > 0 then
            error("Cleanup incomplete: " .. table.concat(z5, "; "), 0)
        end
        if Ag[u] == Af then
            Ag[u] = nil
        end
    end
    Ag[u] = Af
    return Af
end
local zS_1
yF = function(N, O)
    local Ap = type(N) == "table" and type(N.Track) == "function"
    assert(Ap, "FeatureAPI required")
    local Ap_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(Ap_1, "UI library required")
    assert(type(O.Unload) == "function", "UI unload required")
    N.Track(function()
        if not O.Unloaded then
            O:Unload()
        end
    end)
    O:OnUnload(function()
        N.Unload()
    end)
end
zf = zS(zR)
yN = fn743
yz = fn539
zJ = fn216(ReplicatedStorage)
zE = fn216(Workspace)
State = zf.State
State.WinStatus = "Idle"
State.ZoneStatus = "Idle"
State.DuelStatus = "Idle"
State.RingStatus = "Idle"
State.TreadmillStatus = "Idle"
State.ClickerStatus = "Idle"
State.AscendStatus = "Idle"
State.HammerStatus = "Idle"
State.RebirthStatus = "Idle"
State.DailyStatus = "Idle"
State.PlayTimeStatus = "Idle"
State.FreeGiftStatus = "Idle"
State.MoveBusy = false
zs = fn902
yT = fn552
zN = nil
zI = fn449
zp = function(as, at)
    local AD
    if typeof(as) ~= "Vector3" then
        return false
    end
    local AG = at or 4
    zN = CFrame.new(as + Vector3.new(0, AG, 0))
    AD = yT()
    if not AD then
        return false
    end
    return (pcall(function()
        AD.CFrame = zN
        AD.AssemblyLinearVelocity = Vector3.zero
    end))
end
ys = function(aA, aB)
    local AP
    AP = nil
    if typeof(aA) ~= "Vector3" then
        return false
    end
    AP = yT()
    if not AP then
        return false
    end
    return (pcall(function()
        local AK = aB
        local AO = if AK then 1 else 0
        local AM = 447 * AO + 131 * (1 - AO)
        local AN = 644 * AO + 1491 * (1 - AO)
        if not ((AM * 98 + AN * 1587 + AM * AN) % 16777213 == 1353702) then
            AK = 4
        end
        AP.CFrame = CFrame.new(aA + Vector3.new(0, AK, 0))
        AP.AssemblyLinearVelocity = Vector3.zero
    end))
end
connection = RunService.Heartbeat:Connect(onHeartbeat)
zf.Track(fn812)
zC = fn1187
yu = function(aZ)
    if typeof(aZ) ~= "Vector3" then
        return
    end
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(aZ)
    end)
end
zm = {
    ready = false,
    packets = nil,
    mogConfig = nil,
    winPadConfig = nil,
    hammerConfig = nil,
    ladder = nil,
    treadmills = nil,
    rebirths = nil,
    playTime = nil,
    daily = nil,
    freeGift = nil,
    autoClicker = nil,
    rewardRemotes = nil,
    rebirthRemotes = nil,
    clickerRemotes = nil,
    missing = {}
}
ze = fn1128
yG = fn969
local zV = task.spawn(worker2)
local zU = os.clock() + 12
while true do
    local zO_1 = not zm.ready and os.clock() < zU
    if zO_1 then
        task.wait(0.05)
        continue
    end
    break
end
local zP_1 = nil
local zO_2 = 0
repeat
    local zQ_1 = {
        "evluswc",
        "xtwptiqw",
        "vmrx",
        "suj",
        "ryma",
        "imtolwud",
        "otemai",
        "bmpqzldztw",
        "fxdfqqe",
        "nog",
        "gxudo"
    }
    local NC = zO_2
    local zR_1 = zQ_1[NC % 11 + 1]
    if zR_1:len() <= zR_1:reverse():rep(NC % 3 + 2):len() then
        zP_1 = coroutine.status(zV) ~= "dead"
    else
        zV = coroutine.status(zP_1) ~= "dead"
    end
    zO_2 = (zO_2 + 1) % 4
until (zO_2 * 1 + 1) % 4 == 2
if zP_1 then
    zP_1 = not zm.ready
end
if zP_1 then
    zm.ready = true
end
zM, zu, zo, zg, y7, y2, yX, yP, yI, yB, yr, zL, zF, zA, zv, za, yO, yC, zK, zk, y_, yw, yE, zH, y5, yp, y6, zz, zl, y4, zn, yW, yH, zi, zt, zr, y9, zb, zw, y1, yA, yR, yL, zD, yq, yU, yV, worker, y0, zj, yJ, zd, yY, yy, zc, yv, yS, yZ, zS_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
zv = fn57
za = fn459
yO = fn360
yC = fn995
zK = fn1207
zk = fn1086
y_ = fn385
yw = fn1275
yE = fn1144
zH = fn322
y5 = fn245
yp = fn1206
zM = {
    active = false,
    zone = nil,
    fill = 0,
    result = nil,
    hooked = false,
    ringEnabled = false,
    ringForce = 0,
    ringHits = 0,
    connections = {}
}
local function zR_2()
    for i, v in ipairs(zM.connections) do
        local BX = v
        pcall(function()
            BX:Disconnect()
        end)
    end
    table.clear(zM.connections)
    zM.hooked = false
    zM.active = false
end
zf.Track(zR_2)
y6 = function(cu, cv)
    local BZ_1
    local BY = not cu or not cu.OnClientEvent
    local BY_1
    if BY then
        return
    end
    BY_1, BZ_1 = pcall(function()
        return cu.OnClientEvent:Connect(cv)
    end)
    if BY_1 and BZ_1 then
        table.insert(zM.connections, BZ_1)
    end
end
zz = function()
    local packets
    if zM.hooked then
        return true
    end
    packets = zm.packets
    if not packets then
        return false
    end
    zM.hooked = true
    y6(packets.Begin, function(cH, cI)
        zM.active = true
        zM.zone = cH
        local B1 = tonumber(cI) or 0
        zM.fill = B1
        zM.result = nil
        zM.startedAt = os.clock()
    end)
    y6(packets.Fill, function(cK)
        local B3 = tonumber(cK) or zM.fill
        zM.fill = B3
    end)
    y6(packets.Result, function(cN)
        zM.result = cN == true
        zM.active = false
    end)
    y6(packets.Finish, function()
        zM.active = false
    end)
    y6(packets.Ring, function(cQ)
        if not yz() then
            return
        end
        if not zM.ringEnabled and zM.ringForce <= 0 then
            return
        end
        if packets.RingHit then
            pcall(function()
                packets.RingHit:Fire(cQ)
            end)
            zM.ringHits = zM.ringHits + 1
            State.RingStatus = string.format("Rings hit: %d", zM.ringHits)
        end
    end)
    return true
end
zu = 0.06
zl = fn148
y4 = function(c5, c6)
    local packets = zm.packets
    if not packets or not packets.Click then
        return false, nil
    elseif not zz() then
        return false, nil
    else
        local Cg_1 = os.clock() + 10
        while true do
            local Ch_1 = yz() and not zM.active and os.clock() < Cg_1
            if Ch_1 then
                task.wait(0.05)
                continue
            end
            break
        end
        if not zM.active then
            return false, nil
        end
        zI(nil)
        zM.ringForce = zM.ringForce + 1
        local mogConfig = zm.mogConfig
        local Ch_2 = mogConfig and mogConfig.BattleTimeout
        local Cg_3 = tonumber(Ch_2) or 120
        local Cg_4 = zl()
        local Ci = os.clock() + Cg_3
        while true do
            local Ch_4 = yz() and zM.active and os.clock() < Ci
            if Ch_4 then
                pcall(function()
                    packets.Click:Fire()
                end)
                State[c5] = string.format("Mogging %s (%d%%)", c6, math.clamp(math.floor(zM.fill * 100 + 0.5), 0, 100))
                task.wait(Cg_4)
                continue
            end
            break
        end
        local Cg_5 = os.clock() + 2
        while true do
            local Ch_5 = yz() and zM.result == nil and os.clock() < Cg_5
            if Ch_5 then
                task.wait(0.1)
                continue
            end
            break
        end
        zM.ringForce = math.max(0, zM.ringForce - 1)
        return true, zM.result
    end
end
zn = fn694
yW = fn114
zf.Track(yW)
yH = function(dA)
    local Co = not dA
    local Cs = if Co then 1 else 0
    local Cq = 1138 * Cs + 2728 * (1 - Cs)
    local Cr = 1406 * Cs + 125 * (1 - Cs)
    if not ((Cq * 1536 + Cr * 503 + Cq * Cr) % 16777213 == 4055214) then
        Co = not dA:IsA("ProximityPrompt")
    end
    if Co then
        return false
    elseif yN(fireproximityprompt) then
        local Co_1 = pcall(fireproximityprompt, dA)
        if Co_1 then
            return true
        end
        local Co_2 = pcall(function()
            dA:InputHoldBegin()
            task.wait(math.max(0.1, dA.HoldDuration + 0.15))
            dA:InputHoldEnd()
        end)
        return Co_2
    else
        local Co_3 = pcall(function()
            dA:InputHoldBegin()
            task.wait(math.max(0.1, dA.HoldDuration + 0.15))
            dA:InputHoldEnd()
        end)
        return Co_3
    end
end
zi = fn712
zo = { interval = 0.25, lane = "auto" }
zg = { interval = 3 }
y7 = { interval = 5 }
y2 = {}
yX = { interval = 1, belt = "auto" }
yP = { interval = 20 }
yI = { interval = 5 }
if (yH or yJ or false) and (yH and not zS_1 and (y0 or y0)) and not ((yH or yJ or false) and (yH and not zS_1 and (y0 or y0))) then
    zl = { interval = 5, equip = true }
else
    yB = { interval = 5, equip = true }
end
yr = { interval = 10 }
zL = { interval = 30 }
zF = { interval = 20 }
zA = { interval = 30 }
zt = function(d4, d5)
    local generation
    local CF = d4.generation or 0
    d4.generation = CF + 1
    d4.stopped = false
    generation = d4.generation
    task.spawn(function()
        local CC_1
        while true do
            local CB = yz() and not d4.stopped and d4.generation == generation
            local CB_1
            if CB then
                CB_1, CC_1 = pcall(d5)
                if not CB_1 then
                    warn("[Ouroboros] loop error: " .. tostring(CC_1))
                end
                local CB_2 = not yz() or d4.stopped or d4.generation ~= generation
                if CB_2 then
                    break
                end
                task.wait(d4.interval)
                continue
            end
            break
        end
    end)
end
zr = fn659
y9 = fn964
zb = fn728
zw = fn81
y1 = fn1306
yA = function()
    local Dd, De, Df, Dg, Dh, Di
    local Dk_1
    local winPadConfig = zm.winPadConfig
    if not winPadConfig then
        State.WinStatus = "Win pad config unavailable"
        return
    end
    Dk_1, De = y9()
    if not Dk_1 then
        State.WinStatus = "Win pads are not loaded"
        return
    end
    local Dl = zb(Dk_1)
    Dh = y1(Dl)
    local clamp = math.clamp
    local Dm = zo.target or Dh
    Dg = clamp(Dm, 1, math.max(1, Dh))
    local Dl_2 = zo.beatenAt or -1
    if Dl_2 ~= y5() then
        zo.beatenAt = y5()
        zo.misses = 0
        Dg = Dh
    end
    zo.target = Dg
    local Dl_3 = Dk_1:FindFirstChild(tostring(Dg))
    local Dk_2 = Dl_3
    if Dk_2 then
        local Dm_1 = winPadConfig.HitboxName or "Hitbox"
        Dk_2 = Dl_3:FindFirstChild(Dm_1)
    end
    Dd = Dk_2
    local Dj_1 = not Dd or not Dd:IsA("BasePart")
    if Dj_1 then
        State.WinStatus = string.format("Pad %d is not loaded in", Dg)
        return
    end
    Df = zw()
    Di = yO()
    zC(function()
        zI(nil)
        if Df then
            yu(Df.Position)
            ys(Df.Position, 4)
            task.wait(0.5)
        end
        State.WinStatus = string.format("%s lane, claiming pad %d/%d", De, Dg, Dh)
        yu(Dd.Position)
        local C6 = os.clock() + 14
        local C7 = 0
        while true do
            local C8 = yz() and not zo.stopped and yO() == Di and os.clock() < C6
            if C8 then
                C7 += 1
                local Position = Dd.Position
                local Db = C7 % 2 == 0 and 1 or -1
                ys(Position + Vector3.new(Db, 0, 0), Dd.Size.Y / 2 + 2)
                task.wait(0.25)
                continue
            end
            break
        end
        zI(nil)
    end)
    local Dj_2 = yO() - Di
    if Dj_2 > 0 then
        zo.misses = 0
        State.WinStatus = string.format("%s lane, pad %d, +%s wins", De, Dg, zs(Dj_2))
        return
    end
    local Dj_3 = zo.misses or 0
    zo.misses = Dj_3 + 1
    if zo.misses >= 2 and Dg > 1 then
        zo.target = Dg - 1
        zo.misses = 0
        State.WinStatus = string.format("Pad %d is still locked, dropping to pad %d", Dg, Dg - 1)
        return
    end
    State.WinStatus = string.format("%s lane, pad %d did not pay out, retrying", De, Dg)
end
yR = function()
    local Dv, packets, Dx, Dy
    packets = zm.packets
    local Dz = not packets or not packets.Challenge
    local Dz_2
    if Dz then
        State.ZoneStatus = "Battle packets unavailable"
        return
    end
    local Dz_1 = zg.retryAt
    local DF = if Dz_1 then 1 else 0
    local DD = 4030 * DF + 170 * (1 - DF)
    local DE = 1703 * DF + 2462 * (1 - DF)
    if not ((DD * 1824 + DE * 1854 + DD * DE) % 16777213 == 593959) then
        Dz_1 = 0
    end
    if Dz_1 > os.clock() then
        State.ZoneStatus = string.format("Lost too many times, retrying in %ds", math.ceil(zg.retryAt - os.clock()))
        return
    end
    Dy, Dz_2 = zH()
    if not Dy or not Dz_2 then
        State.ZoneStatus = "Every stage in this world is beaten"
        return
    end
    local DA_1 = Dz_2.Zone or "Zone" .. Dy - 1
    Dv = tostring(DA_1)
    local Dz_3 = yw(Dy)
    local DA_2 = yC()
    if DA_2 < Dz_3 then
        State.ZoneStatus = string.format("%s needs %s appeal, you have %s", Dv, zs(Dz_3), zs(DA_2))
        return
    end
    Dx = yp(Dv)
    if not Dx then
        State.ZoneStatus = string.format("%s is not loaded in", Dv)
        return
    end
    zC(function()
        local Dp_1
        local Do_1
        State.ZoneStatus = string.format("Walking to %s", Dv)
        yu(Dx.Position)
        zp(Dx.Position, 4)
        task.wait(1.2)
        zI(nil)
        pcall(function()
            packets.Challenge:Fire(Dv)
        end)
        Do_1, Dp_1 = y4("ZoneStatus", Dv)
        if not Do_1 then
            State.ZoneStatus = string.format("%s did not start, retrying", Dv)
            return
        end
        task.wait(1)
        local Do_2 = Dp_1 == true
        local Dq = yE(Dy) or Do_2
        if Dq then
            zg.losses = 0
            State.ZoneStatus = string.format("Beat %s", Dv)
        else
            local Do_3 = zg.losses or 0
            zg.losses = Do_3 + 1
            if zg.losses >= 3 then
                zg.retryAt = os.clock() + 30
            end
            State.ZoneStatus = string.format("Lost to %s (%d in a row), train more appeal", Dv, zg.losses)
        end
    end)
end
yL = function()
    local DM
    local DT_1
    local DS_1
    local DR_1
    local DQ_1
    if not zm.packets then
        State.DuelStatus = "Battle packets unavailable"
        return
    end
    local DN_1 = yT()
    if not DN_1 then
        State.DuelStatus = "Waiting for your character"
        return
    end
    local DP = y7.cooldowns or {}
    y7.cooldowns = DP
    local mogConfig = zm.mogConfig
    local DP_1 = mogConfig and mogConfig.DuelRequestCooldown
    local DO_2 = tonumber(DP_1) or 60
    local DO_3 = os.clock()
    DM, DR_1, DQ_1 = nil, nil, math.huge
    for i, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            DT_1, DS_1 = zi(player)
            if DT_1 and DS_1 and DT_1.Enabled and (y7.cooldowns[player.UserId] or 0) <= DO_3 then
                local Magnitude = (DS_1.Position - DN_1.Position).Magnitude
                if Magnitude < DQ_1 then
                    DM, DR_1, DQ_1 = player, DT_1, Magnitude
                end
            end
        end
    end
    if not DM or not DR_1 then
        State.DuelStatus = "No player is open to a mog right now"
        return
    end
    y7.cooldowns[DM.UserId] = DO_3 + DO_2
    zC(function()
        local DH_1
        local DG_1
        DG_1, DH_1 = zi(DM)
        if not DH_1 then
            return
        end
        State.DuelStatus = string.format("Challenging %s", DM.DisplayName)
        yu(DH_1.Position)
        zp(DH_1.Position + DH_1.CFrame.LookVector * 6, 3)
        task.wait(1)
        zI(nil)
        local DG_2 = zi(DM)
        local DH_2 = not DG_2 or not yH(DG_2)
        if DH_2 then
            State.DuelStatus = string.format("Could not reach %s", DM.DisplayName)
            return
        end
        local DL = if not y4("DuelStatus", DM.DisplayName) then 1 else 0
        if DL == 1 then
            State.DuelStatus = string.format("%s did not accept", DM.DisplayName)
            return
        end
        task.wait(1)
        State.DuelStatus = string.format("Finished the mog with %s", DM.DisplayName)
    end)
end
zD = fn505
yq = fn1169
yU = function()
    local Ez
    local EA = zD()
    if #EA == 0 then
        State.TreadmillStatus = "Treadmills are not loaded"
        return
    end
    local EB
    if yX.belt ~= "auto" then
        for i, v in ipairs(EA) do
            if v.Name == yX.belt then
                EB = v
                break
            end
        end
    end
    if not EB then
        for i, v in ipairs(EA) do
            if v.Unlocked then
                EB = v
                break
            end
        end
    end
    if not EB then
        State.TreadmillStatus = "No treadmill is unlocked yet"
        return
    end
    Ez = yq(EB)
    if not Ez then
        State.TreadmillStatus = string.format("%s has no belt part", EB.Name)
        return
    end
    zC(function()
        yu(Ez.Position)
        zp(Ez.Position, Ez.Size.Y / 2 + 3.5)
        local Ew = os.clock() + math.max(1, yX.interval)
        while true do
            local Ex = yz() and not yX.stopped and os.clock() < Ew
            if Ex then
                task.wait(0.1)
                continue
            end
            break
        end
    end)
    State.TreadmillStatus = string.format("%s treadmill, appeal %s", EB.Name, zs(yC()))
end
yV = function()
    local autoClicker = zm.autoClicker
    local clickerRemotes = zm.clickerRemotes
    local EW = clickerRemotes and clickerRemotes:FindFirstChild("SetMode")
    local ES = EW
    if not autoClicker or not ES then
        State.ClickerStatus = "In-game clicker unavailable"
        return
    end
    local EV_2 = type(autoClicker.Modes) == "table" and autoClicker.Modes
    local EX = EV_2 or { Off = "Off", Free = "Free", Paid = "Paid" }
    local ET
    local EW_3 = autoClicker.OwnedAttribute or "AutoClickerOwned"
    if zv(EW_3) == true then
        ET = EX.Paid
    else
        local EW_4 = autoClicker.FreeUnlockedAttribute
        local E0 = if EW_4 then 1 else 0
        local EZ = 727 * E0 + 610 * (1 - E0)
        local E_ = 2736 * E0 + 288 * (1 - E0)
        if not ((EZ * 465 + E_ * 833 + EZ * E_) % 16777213 == 4606215) then
            EW_4 = "AutoClickerFreeUnlocked"
        end
        if zv(EW_4) == true then
            ET = EX.Free
        end
    end
    if not ET then
        State.ClickerStatus = "Auto clicker is still locked"
        return
    end
    local EV_4 = autoClicker.ModeAttribute or "AutoClickerMode"
    local EW_5 = zv(EV_4)
    if EW_5 ~= ET then
        pcall(function()
            ES:FireServer(ET)
        end)
    end
    local format = string.format
    local EW_6 = autoClicker.ModeAttribute
    local E3 = if EW_6 then 1 else 0
    local E1 = 2320 * E3 + 949 * (1 - E3)
    local E2 = 2936 * E3 + 1093 * (1 - E3)
    if not ((E1 * 893 + E2 * 537 + E1 * E2) % 16777213 == 10459912) then
        EW_6 = "AutoClickerMode"
    end
    local EU_1 = zv(EW_6) or ET
    State.ClickerStatus = format("Mode: %s", tostring(EU_1))
end
worker = function()
    local E6
    local E7
    E6 = nil
    E7 = nil
    local autoClicker = zm.autoClicker
    local clickerRemotes = zm.clickerRemotes
    local Fa = clickerRemotes and clickerRemotes:FindFirstChild("SetMode")
    E6 = Fa
    local E9_1 = not E6
    local Fa_1 = not autoClicker
    local Fe = if Fa_1 then 1 else 0
    local Fc = 2226 * Fe + 3715 * (1 - Fe)
    local Fd = 2150 * Fe + 259 * (1 - Fe)
    if not ((Fc * 4059 + Fd * 2752 + Fc * Fd) % 16777213 == 2960821) then
        Fa_1 = E9_1
    end
    if Fa_1 then
        return
    end
    local E9_2 = type(autoClicker.Modes) == "table" and autoClicker.Modes
    E7 = E9_2 or { Off = "Off" }
    pcall(function()
        local E4 = E7.Off or "Off"
        E6:FireServer(E4)
    end)
end
y0 = fn314
zj = function()
    local packets
    packets = nil
    packets = zm.packets
    local ladder = zm.ladder
    if not packets or not packets.Ascend or not ladder then
        State.AscendStatus = "Ascend is unavailable"
        return
    end
    local max2 = math.max
    local floor2 = math.floor
    local Fq_1 = ladder.TierAttribute or "BodyTier"
    local Fr = tonumber(zv(Fq_1)) or 1
    local Fq_2 = max2(1, floor2(Fr))
    local Fo_2 = y0(Fq_2 + 1)
    if not Fo_2 then
        State.AscendStatus = "You are on the final body"
        return
    end
    local Fp_2 = tonumber(Fo_2.Cost) or 0
    local Fp_3 = yO()
    if Fp_3 < Fp_2 then
        State.AscendStatus = string.format("%s costs %s wins, you have %s", tostring(Fo_2.Name), zs(Fp_2), zs(Fp_3))
        return
    end
    pcall(function()
        packets.Ascend:Fire()
    end)
    task.wait(1)
    local max = math.max
    local floor = math.floor
    local Fr_1 = ladder.TierAttribute or "BodyTier"
    local Fn_1 = (tonumber(zv(Fr_1)))
    local Fv = if Fn_1 then 1 else 0
    local Ft = 2529 * Fv + 1026 * (1 - Fv)
    local Fu = 2390 * Fv + 2793 * (1 - Fv)
    if not ((Ft * 1820 + Fu * 2780 + Ft * Fu) % 16777213 == 514077) then
        Fn_1 = 1
    end
    local Fr_2 = y0(max(1, floor(Fn_1)))
    local format = string.format
    local Fq_5 = Fr_2 and Fr_2.Name or Fo_2.Name
    State.AscendStatus = format("Body: %s", tostring(Fq_5))
end
yJ = fn989
zd = function(h8)
    local hammerConfig = zm.hammerConfig
    local FB_3
    local FC = zk()
    local FC_2
    local FD = FC
    if FD then
        local FB_1 = hammerConfig and hammerConfig.StandFolder or "HammerStand"
        FD = FC:FindFirstChild(FB_1)
    end
    local FB_2 = FD
    local FC_1 = FB_2 and FB_2:FindFirstChild(tostring(h8))
    local FA = FC_1
    if not FA then
        return nil
    elseif FA:IsA("BasePart") then
        return FA.Position
    elseif FA:IsA("Model") then
        FB_3, FC_2 = pcall(function()
            return FA:GetPivot().Position
        end)
        if FB_3 then
            return FC_2
        end
        return nil
    else
        return nil
    end
end
yY = function(iq, ir, is)
    zC(function()
        yu(iq)
        zp(iq, 4)
        local FJ = os.clock() + ir
        while true do
            local FK = yz() and not is() and os.clock() < FJ
            if FK then
                task.wait(0.1)
                continue
            end
            break
        end
    end)
end
yy = fn1177
zc = function()
    local Ga
    Ga = nil
    local Gh_1
    local Gg_1, Gg_2
    local rebirths = zm.rebirths
    local rebirthRemotes = zm.rebirthRemotes
    local Gd = rebirthRemotes and rebirthRemotes:FindFirstChild("DoRebirth")
    Ga = Gd
    if not rebirths or not Ga then
        State.RebirthStatus = "Rebirth remote unavailable"
        return
    end
    local floor2 = math.floor
    local Gd_2 = rebirths.LevelAttribute or "Level"
    local Ge = tonumber(zv(Gd_2)) or 1
    local Gd_3 = floor2(Ge)
    local Ge_1 = rebirths.RebirthsAttribute or "Rebirths"
    local Gf = tonumber(zv(Ge_1)) or 0
    local Gf_1
    local Ge_2 = floor2(Gf)
    local Gc_3 = nil
    if yN(rebirths.RequiredLevel) then
        Gf_1, Gg_1 = pcall(rebirths.RequiredLevel, Ge_2)
        if Gf_1 then
            Gc_3 = tonumber(Gg_1)
        end
    end
    local Gf_2 = false
    if yN(rebirths.CanRebirth) then
        Gg_2, Gh_1 = pcall(rebirths.CanRebirth, Gd_3, Ge_2)
        Gf_2 = Gg_2 and Gh_1 == true
    elseif Gc_3 then
        Gf_2 = Gd_3 >= Gc_3
    end
    if not Gf_2 then
        local format = string.format
        local Gg_3 = Gc_3 and tostring(Gc_3)
        local Gc_4 = Gg_3 or "?"
        State.RebirthStatus = format("Level %d of %s", Gd_3, Gc_4)
        return
    end
    pcall(function()
        Ga:FireServer()
    end)
    task.wait(1.5)
    local format = string.format
    local floor = math.floor
    local Gf_4 = rebirths.RebirthsAttribute or "Rebirths"
    local Gb_1 = tonumber(zv(Gf_4)) or Ge_2
    State.RebirthStatus = format("Rebirths: %d", floor(Gb_1))
end
yv = function()
    local Go
    Go = nil
    local Gt_1, Gt_2
    local daily = zm.daily
    local rewardRemotes = zm.rewardRemotes
    local Gr = rewardRemotes and rewardRemotes:FindFirstChild("ClaimDaily")
    local Gr_3, Gr_4, Gr_7
    Go = Gr
    local Gq_1 = not Go
    local Gr_1 = not daily
    local Gz = if Gr_1 then 1 else 0
    local Gx = 1797 * Gz + 1282 * (1 - Gz)
    local Gy = 3797 * Gz + 724 * (1 - Gz)
    if not ((Gx * 1038 + Gy * 843 + Gx * Gy) % 16777213 == 11889366) then
        Gr_1 = Gq_1
    end
    if Gr_1 then
        State.DailyStatus = "Daily reward remote unavailable"
        return
    end
    local Gq_2 = daily.LastClaimAttribute or "DailyLastClaim"
    local Gr_2 = tonumber(zv(Gq_2)) or 0
    local Gq_3 = true
    local Gs_2
    local GC = if yN(daily.CanClaim) then 1 else 0
    if GC == 1 then
        Gr_3, Gt_1 = pcall(daily.CanClaim, Gr_2, os.time())
        Gq_3 = Gr_3 and Gt_1 == true
    end
    if not Gq_3 then
        local Gq_4 = nil
        if yN(daily.SecondsLeft) then
            Gr_4, Gt_2 = pcall(daily.SecondsLeft, Gr_2, os.time())
            local Gs_1 = Gr_4 and tonumber(Gt_2)
            Gq_4 = Gs_1 or nil
        end
        local Gr_6 = Gq_4 and yN(daily.FormatCountdown)
        if Gr_6 then
            Gr_7, Gs_2 = pcall(daily.FormatCountdown, Gq_4)
            local Gq_5 = Gr_7 and string.format("Next daily in %s", tostring(Gs_2))
            local Gr_8 = Gq_5 or "Daily reward is on cooldown"
            State.DailyStatus = Gr_8
        else
            State.DailyStatus = "Daily reward is on cooldown"
        end
        return
    end
    pcall(function()
        Go:FireServer()
    end)
    task.wait(1)
    local format = string.format
    local floor = math.floor
    local Gs_3 = daily.StreakAttribute
    local GC_1 = if Gs_3 then 1 else 0
    local GA = 861 * GC_1 + 2027 * (1 - GC_1)
    local GB = 899 * GC_1 + 3694 * (1 - GC_1)
    if not ((GA * 1522 + GB * 1420 + GA * GB) % 16777213 == 3361061) then
        Gs_3 = "DailyStreak"
    end
    local Gp_1 = tonumber(zv(Gs_3)) or 0
    State.DailyStatus = format("Daily streak: %d", floor(Gp_1))
end
yS = function()
    local GO_1
    local playTime = zm.playTime
    local rewardRemotes = zm.rewardRemotes
    local GK = rewardRemotes and rewardRemotes:FindFirstChild("ClaimPlayTime")
    local GJ_1 = not playTime
    local GG = GK
    if not GJ_1 then
        GJ_1 = type(playTime.Tiers) ~= "table"
    end
    if GJ_1 or not GG then
        State.PlayTimeStatus = "Playtime reward remote unavailable"
        return
    end
    local floor2 = math.floor
    local GK_2 = playTime.SessionAttribute or "SessionSeconds"
    local GL_1 = tonumber(zv(GK_2)) or 0
    local GK_3 = floor2(GL_1)
    local GL_2 = playTime.ClaimedAttribute
    local GU = if GL_2 then 1 else 0
    local GS = 2492 * GU + 497 * (1 - GU)
    local GT = 966 * GU + 789 * (1 - GU)
    if not ((GS * 2187 + GT * 1530 + GS * GT) % 16777213 == 9335256) then
        GL_2 = "PlayTimeClaimed"
    end
    local GM = tonumber(zv(GL_2)) or 0
    local GM_3
    local GL_3 = floor2(GM)
    local GJ_3 = 0
    for i, v in ipairs(playTime.Tiers) do
        local GM_1 = tonumber(v.Index) or 0
        local GH = GM_1
        local GM_2 = tonumber(v.Seconds) and GK_3 >= tonumber(v.Seconds)
        local GN = GM_2
        if yN(playTime.IsUnlocked) then
            GM_3, GO_1 = pcall(playTime.IsUnlocked, GH, GK_3)
            GN = GM_3 and GO_1 == true
        end
        local GM_4 = GH >= 1 and GH <= 31 and bit32.band(GL_3, bit32.lshift(1, GH - 1)) ~= 0
        if GN and not GM_4 then
            GJ_3 += 1
            pcall(function()
                GG:FireServer(GH)
            end)
            task.wait(0.4)
            local floor = math.floor
            local GN_1 = playTime.ClaimedAttribute or "PlayTimeClaimed"
            local GO_3 = tonumber(zv(GN_1)) or GL_3
            GL_3 = floor(GO_3)
        end
    end
    if GJ_3 > 0 then
        local format = string.format
        local GM_7 = GJ_3 == 1 and "" or "s"
        State.PlayTimeStatus = format("Claimed %d playtime reward%s", GJ_3, GM_7)
    else
        State.PlayTimeStatus = string.format("Session: %dm %ds", GK_3 // 60, GK_3 % 60)
    end
end
yZ = function()
    local G2
    G2 = nil
    local freeGift = zm.freeGift
    local rewardRemotes = zm.rewardRemotes
    local G5 = rewardRemotes and rewardRemotes:FindFirstChild("ClaimFreeGift")
    local G6 = rewardRemotes
    G2 = G5
    if G6 then
        G6 = rewardRemotes:FindFirstChild("MarkRequirement")
    end
    local G4_1 = not freeGift
    local G1 = G6
    if not G4_1 then
        G4_1 = type(freeGift.Requirements) ~= "table"
    end
    if G4_1 or not G2 or not G1 then
        State.FreeGiftStatus = "Free gift remote unavailable"
        return
    end
    local G4_3 = freeGift.ClaimedAttribute or "FreeGiftClaimed"
    if zv(G4_3) == true then
        State.FreeGiftStatus = "Free gift already claimed"
        return
    end
    local G4_4 = {}
    for i, v in ipairs(freeGift.Requirements) do
        local G0 = tostring(v.Attribute)
        if zv(G0) ~= true then
            pcall(function()
                G1:FireServer(G0)
            end)
            task.wait(0.4)
            if zv(G0) ~= true then
                local insert = table.insert
                local G6_2 = v.Text or G0
                insert(G4_4, tostring(G6_2))
            end
        end
    end
    if #G4_4 > 0 then
        State.FreeGiftStatus = "Still needed: " .. table.concat(G4_4, ", ")
        return
    end
    pcall(function()
        G2:FireServer()
    end)
    task.wait(1)
    local G4_5 = freeGift.ClaimedAttribute or "FreeGiftClaimed"
    if zv(G4_5) == true then
        State.FreeGiftStatus = "Free gift claimed"
    else
        State.FreeGiftStatus = "Waiting on the free gift playtime"
    end
end
zo.SetEnabled = fn622
zo.SetLane = fn210
zg.SetEnabled = fn1010
y7.SetEnabled = fn170
y7.SetDelay = fn1038
y2.SetEnabled = fn397
yX.SetEnabled = fn1088
yX.SetBelt = fn1239
yP.SetEnabled = fn413
yI.SetEnabled = fn1050
yB.SetEnabled = fn1333
yB.SetEquip = fn890
yr.SetEnabled = fn778
zL.SetEnabled = fn1263
zF.SetEnabled = fn1075
zA.SetEnabled = fn530
zf.Track(fn458)
local function zS_2()
    local onDiscord
    local Ml
    local Mj
    onDiscord = nil
    Mj = nil
    Ml = nil
    local Ma, Library, Toggles, Me, Mf, ThemeManager, Options, Mi, Mk, SaveManager, Mn, Mo
    local Mp = "v0.2"
    Mo = "https://rscripts.net/@Ouroboros"
    Mf = "https://ouroboros-hub-rbx.web.app/"
    Mj = "https://discord.gg/synapsex"
    Mn = "+1 Mog Evolution"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    yF(zf, Library)
    Ma = { "Best Unlocked" }
    Mk = { "Auto", "Normal", "Double" }
    Me = false
    task.spawn(function()
        local HJ_1
        local HI_1
        HI_1, HJ_1 = pcall(zD)
        local HK = HI_1 and type(HJ_1) == "table"
        if HK then
            for i, v in ipairs(HJ_1) do
                table.insert(Ma, v.Name)
            end
        end
        Me = true
    end)
    local Mq = os.clock() + 6
    while true do
        local Mr = not Me and os.clock() < Mq
        if Mr then
            task.wait(0.05)
            continue
        end
        break
    end
    Ml = function(mr, ms)
        local HS = yN(setclipboard) and setclipboard
        local HT = HS
        if not HT then
            local HS_1 = yN(toclipboard) and toclipboard
            HT = HS_1 or nil
        end
        local HS_2 = HT
        if not HS_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local HT_1 = pcall(HS_2, mr)
        if HT_1 then
            Library:Notify(ms)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Ml(Mj, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Mj, Copyable = true }, "|", Mn, "|", Mp },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Mi = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Mp_1(mI)
        local DiscordGroup = mI:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Mi do
        if k ~= "Info" then
            Mp_1(v)
        end
    end
    local function Mq_2()
        local oo
        local AutoWinGroup = Mi.Main:AddLeftGroupbox("Auto Win", "trophy")
        local Label12 = AutoWinGroup:AddLabel(State.WinStatus, true)
        AutoWinGroup:AddDivider()
        AutoWinGroup:AddToggle("AutoWin", {
            Text = "Auto Win / Zone Farm",
            Default = false,
            Tooltip = "Claims the highest win pad your beaten stages have opened, returning to spawn between claims so every claim counts.",
            Callback = function(mT)
                zo.SetEnabled(mT)
            end
        })
        AutoWinGroup:AddDropdown("WinLane", {
            Text = "Win Pad Lane",
            Values = Mk,
            Default = Mk[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Auto uses the Double lane when you own the 2x Wins pass.",
            Callback = function(mY)
                zo.SetLane(mY)
            end
        })
        local Label11 = AutoWinGroup:AddLabel(State.ZoneStatus, true)
        AutoWinGroup:AddToggle("AutoZone", {
            Text = "Auto Unlock Next Zone",
            Default = false,
            Tooltip = "Walks to the next unbeaten stage and mogs it once your appeal meets its requirement.",
            Callback = function(m0)
                zg.SetEnabled(m0)
            end
        })
        local Label10 = AutoWinGroup:AddLabel(State.DuelStatus, true)
        AutoWinGroup:AddToggle("AutoDuel", {
            Text = "Auto Duel / Mog Crusher",
            Default = false,
            Tooltip = "Walks to the closest player who can be mogged and triggers their duel prompt.",
            Callback = function(m5)
                y7.SetEnabled(m5)
            end
        })
        AutoWinGroup:AddSlider("DuelDelay", {
            Text = "Duel Delay",
            Default = 5,
            Min = 2,
            Max = 30,
            Rounding = 0,
            Suffix = "s",
            Callback = function(m9)
                y7.SetDelay(m9)
            end
        })
        local Label9 = AutoWinGroup:AddLabel(State.RingStatus, true)
        AutoWinGroup:AddToggle("AutoRings", {
            Text = "Auto Hit Rings (Mog Bar)",
            Default = false,
            Tooltip = "Hits every bonus ring the mog bar spawns during a battle. Rings only appear in the second world.",
            Callback = function(nc)
                y2.SetEnabled(nc)
            end
        })
        local TrainingGroup = Mi.Main:AddLeftGroupbox("Training", "activity")
        local Label8 = TrainingGroup:AddLabel(State.TreadmillStatus, true)
        TrainingGroup:AddDivider()
        TrainingGroup:AddToggle("AutoTreadmill", {
            Text = "Auto Best Treadmill Training",
            Default = false,
            Tooltip = "Stands on the strongest treadmill belt your rebirths and passes have unlocked.",
            Callback = function(ni)
                yX.SetEnabled(ni)
            end
        })
        TrainingGroup:AddDropdown("TreadmillBelt", {
            Text = "Treadmill",
            Values = Ma,
            Default = Ma[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Best Unlocked picks the highest multiplier you can actually use.",
            Callback = function(nn)
                yX.SetBelt(nn)
            end
        })
        local Label7 = TrainingGroup:AddLabel(State.ClickerStatus, true)
        TrainingGroup:AddToggle("AutoClicker", {
            Text = "Auto In-Game Clicker",
            Default = false,
            Tooltip = "Turns on the game's own auto clicker, using the paid mode when you own it.",
            Callback = function(nq)
                yP.SetEnabled(nq)
            end
        })
        local EvolutionGroup = Mi.Main:AddRightGroupbox("Evolution", "dna")
        local Label6 = EvolutionGroup:AddLabel(State.AscendStatus, true)
        EvolutionGroup:AddDivider()
        EvolutionGroup:AddToggle("AutoAscend", {
            Text = "Auto Body Ascend / Evolution",
            Default = false,
            Tooltip = "Buys the next body on the ladder as soon as you can afford it.",
            Callback = function(nw)
                yI.SetEnabled(nw)
            end
        })
        local Label5 = EvolutionGroup:AddLabel(State.HammerStatus, true)
        EvolutionGroup:AddToggle("AutoHammer", {
            Text = "Auto Buy & Equip Best Hammer",
            Default = false,
            Tooltip = "Stands on the hammer podium to buy the best hammer your wins allow.",
            Callback = function(nB)
                yB.SetEnabled(nB)
            end
        })
        EvolutionGroup:AddToggle("HammerEquip", {
            Text = "Equip Best Owned Hammer",
            Default = true,
            Tooltip = "Also walks back to the best hammer you already own when nothing new is affordable.",
            Callback = function(nF)
                yB.SetEquip(nF)
            end
        })
        local RebirthGroup = Mi.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
        local Label4 = RebirthGroup:AddLabel(State.RebirthStatus, true)
        RebirthGroup:AddDivider()
        RebirthGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths the moment your level reaches the requirement.",
            Callback = function(nJ)
                yr.SetEnabled(nJ)
            end
        })
        local RewardsGroup = Mi.Main:AddRightGroupbox("Rewards", "gift")
        local Label3 = RewardsGroup:AddLabel(State.DailyStatus, true)
        RewardsGroup:AddDivider()
        RewardsGroup:AddToggle("AutoDaily", {
            Text = "Auto Claim Daily Rewards",
            Default = false,
            Callback = function(nP)
                zL.SetEnabled(nP)
            end
        })
        local Label2 = RewardsGroup:AddLabel(State.PlayTimeStatus, true)
        RewardsGroup:AddToggle("AutoPlayTime", {
            Text = "Auto Claim Playtime Rewards",
            Default = false,
            Callback = function(nU)
                zF.SetEnabled(nU)
            end
        })
        local Label = RewardsGroup:AddLabel(State.FreeGiftStatus, true)
        RewardsGroup:AddToggle("AutoFreeGift", {
            Text = "Auto Claim Free Gift",
            Default = false,
            Tooltip = "Marks the like and favourite steps and claims the gift once the group check passes.",
            Callback = function(nZ)
                zA.SetEnabled(nZ)
            end
        })
        oo = task.spawn(function()
            while not Library.Unloaded do
                task.wait(0.4)
                pcall(function()
                    Label12:SetText(State.WinStatus)
                    Label11:SetText(State.ZoneStatus)
                    Label10:SetText(State.DuelStatus)
                    Label9:SetText(State.RingStatus)
                    Label8:SetText(State.TreadmillStatus)
                    Label7:SetText(State.ClickerStatus)
                    Label6:SetText(State.AscendStatus)
                    Label5:SetText(State.HammerStatus)
                    Label4:SetText(State.RebirthStatus)
                    Label3:SetText(State.DailyStatus)
                    Label2:SetText(State.PlayTimeStatus)
                    Label:SetText(State.FreeGiftStatus)
                end)
            end
        end)
        zf.Track(function()
            if coroutine.status(oo) ~= "dead" then
                task.cancel(oo)
            end
        end)
    end
    Mq_2()
    local function Mp_2()
        local Ig
        local Il
        local Ij
        local If
        If = nil
        Ig = nil
        Ij = nil
        Il = nil
        local Label2, Id, Label3, Ih, Ii, Label, Im, In, Io
        Ij = function(ov)
            return (tostring(ov):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Ig = function(ox, oy)
            return string.format('<font color="%s">%s</font>', oy, Ij(ox))
        end
        In = function(oB, oC, oD)
            return string.format("<b>%s</b> %s %s", oB, Ig("-", "#5a6070"), Ig(oC, oD))
        end
        local Ip = "#8b93a3"
        Id = "#e8a34d"
        Ih = "#7fd47f"
        local Iq = "#6ec1ff"
        local missing = zm.missing
        local It = #missing == 0 and "ready"
        local Ix = if It then 1 else 0
        local Iv = 1538 * Ix + 1371 * (1 - Ix)
        local Iw = 1962 * Ix + 2668 * (1 - Ix)
        if not ((Iv * 3157 + Iw * 2907 + Iv * Iw) % 16777213 == 13576556) then
            It = "limited: " .. table.concat(missing, ", ")
        end
        Im = "Unknown"
        local Ir_1 = It
        pcall(function()
            local HZ_1
            local HY_1
            if yN(identifyexecutor) then
                HZ_1, HY_1 = identifyexecutor()
                local H_ = HZ_1 ~= ""
                local H0 = type(HZ_1) == "string" and H_
                if H0 then
                    local H__1 = type(HY_1) == "string" and HY_1 ~= "" and HZ_1 .. " " .. HY_1
                    Im = H__1 or HZ_1
                end
            end
        end)
        If = os.clock()
        Io = function()
            local H5 = math.floor(os.clock() - If)
            if H5 < 60 then
                return H5 .. "s"
            elseif H5 < 3600 then
                return string.format("%dm %ds", H5 // 60, H5 % 60)
            else
                return string.format("%dh %dm", H5 // 3600, H5 % 3600 // 60)
            end
        end
        local UserGroup = Mi.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(In("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Ih), true)
        UserGroup:AddLabel(In("UserId", tostring(LocalPlayer.UserId), Iq), true)
        UserGroup:AddLabel(In("Executor", Im .. "  " .. Ir_1, Ih), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(In("Session", Io(), Id), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Ml(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Ml("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Mi.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(In("Game", Mn, Iq), true)
        Label2 = SessionGroup:AddLabel(In("Players", "0/0", Ih), true)
        Ii = tostring(game.JobId)
        local Iq_1 = #Ii > 18 and string.sub(Ii, 1, 18) .. "..."
        local Is_2 = Iq_1 or Ii
        SessionGroup:AddLabel(In("Job", Is_2, Ip), true)
        Label = SessionGroup:AddLabel(In("Ping", "0 ms", Id), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                Ml(Ii, "Copied Job ID")
            end
        })
        Il = task.spawn(function()
            local H8_1
            local H7_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(In("Session", Io(), Id))
                Label2:SetText(In("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Ih))
                H7_1, H8_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local H7_2 = H7_1 and H8_1 .. " ms" or "n/a"
                Label:SetText(In("Ping", H7_2, Id))
            end
        end)
        zf.Track(function()
            if coroutine.status(Il) ~= "dead" then
                task.cancel(Il)
            end
        end)
        local SocialsGroup = Mi.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Ml(Mo, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Ml(Mf, "Copied website link")
            end
        })
    end
    Mp_2()
    local function Mp_3()
        local pQ
        local pT
        local pR
        local pS
        local MovementGroup = Mi.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Mi.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        pR = {}
        pT = {}
        pS = {}
        local pP = {}
        pQ = {}
        local function pU()
            for k, v in pQ do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(pQ)
        end
        local function pY()
            for k, v in pR do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(pR)
        end
        local function p1()
            for k, v in pS do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(pS)
        end
        local function p5(p6)
            if not p6:IsA("ProximityPrompt") then
                return
            end
            if pT[p6] == nil then
                pT[p6] = {
                    HoldDuration = p6.HoldDuration,
                    MaxActivationDistance = p6.MaxActivationDistance,
                    RequiresLineOfSight = p6.RequiresLineOfSight
                }
            end
            p6.HoldDuration = 0
            p6.MaxActivationDistance = 50
            p6.RequiresLineOfSight = false
        end
        local function p8()
            for k, v in pT do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(pT)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                p1()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                pY()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                pU()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(p5, v)
                end
            else
                p8()
            end
        end)
        table.insert(pP, Workspace.DescendantAdded:Connect(function(qr)
            if Toggles.InstantProximityPrompt.Value then
                p5(qr)
            end
        end))
        table.insert(pP, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if pQ[v] == nil then
                        pQ[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(pP, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Jr = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Jr then
                Jr:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(pP, RunService.RenderStepped:Connect(function(qN)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Jx = Character and Character:FindFirstChildOfClass("Humanoid")
            local Jy = Character
            if Jy then
                Jy = Character:FindFirstChild("HumanoidRootPart")
            end
            local Jw_1 = Jy
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Jx then
                if pR[Jx] == nil then
                    pR[Jx] = Jx.WalkSpeed
                end
                Jx.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Jw_1 and Jx and CurrentCamera then
                if pS[Jx] == nil then
                    pS[Jx] = Jx.PlatformStand
                end
                Jx.PlatformStand = true
                local Jy_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Jy_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Jy_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Jy_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Jy_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Jy_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Jy_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Jw_1.AssemblyLinearVelocity = Vector3.zero
                if Jy_4.Magnitude > 0 then
                    Jw_1.CFrame = Jw_1.CFrame + Jy_4.Unit * Options.FlySpeed.Value * qN
                end
            end
        end))
        zf.Track(function()
            for k, v in pP do
                v:Disconnect()
            end
            pU()
            pY()
            p1()
            p8()
        end)
    end
    Mp_3()
    local function Mp_4()
        local KL, KM, Label, KO, KP, KQ, KR, KS, KT, KU, KV, KW, KX, KY
        KO = {}
        KW = {}
        KT = nil
        KQ = 0
        KY = false
        KU = 0
        KL = os.clock()
        local MenuGroup = Mi.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        KR = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local JN = not CurrentCamera or not yN(VirtualUser.CaptureController) or not yN(VirtualUser.ClickButton2)
            if JN then
                return false
            end
            local JN_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not JN_1 then
                return false
            end
            KU += 1
            KL = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. KU)
            end)
            return true
        end
        KM = function(rw)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not rw)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not rw
                end
            end)
            if not rw then
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
        KX = function(rM)
            if rM.ClassName == "ParticleEmitter" or rM.ClassName == "Trail" or rM.ClassName == "Smoke" or rM.ClassName == "Fire" or rM.ClassName == "Sparkles" or rM.ClassName == "Explosion" or rM.ClassName == "Beam" then
                if KO[rM] == nil then
                    KO[rM] = rM.Enabled
                end
                pcall(function()
                    rM.Enabled = false
                end)
            end
        end
        KV = function()
            for k, v in KO do
                local J4 = k
                local J6 = v
                if J4.Parent then
                    pcall(function()
                        J4.Enabled = J6
                    end)
                end
            end
            table.clear(KO)
            if KT then
                pcall(function()
                    settings().Rendering.QualityLevel = KT.Quality
                end)
                Lighting.GlobalShadows = KT.Shadows
                Lighting.FogEnd = KT.Fog
                KT = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(r0)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not r0)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(r5)
                if r5 then
                    if not KT then
                        KT = {
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
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(KX, v)
                    end
                else
                    KV()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        KM(true)
        local ScriptGroup = Mi.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            KM(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            KM(true)
        end
        table.insert(KW, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                KR()
            end
        end))
        table.insert(KW, Workspace.DescendantAdded:Connect(function(so)
            if Toggles.FpsBoost.Value then
                KX(so)
            end
        end))
        KS = function(ss)
            if KY or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            KY = true
            local Km = KQ
            local Kn_1 = pcall(function()
                if ss then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Kn_1 then
                KY = false
                if not ss and Km == KQ then
                    task.delay(1.5, function()
                        if Km == KQ then
                            KS(true)
                        end
                    end)
                end
            end
        end
        table.insert(KW, TeleportService.TeleportInitFailed:Connect(function(sK)
            local Ku
            if sK == LocalPlayer and KY then
                KY = false
                Ku = KQ
                task.delay(3, function()
                    if Ku == KQ then
                        KS(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Kz = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Kz then
                return
            end
            table.insert(KW, Kz.ChildAdded:Connect(function(sZ)
                if sZ.Name == "ErrorPrompt" then
                    KS(false)
                end
            end))
        end)
        KP = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    KM(true)
                end
                local KC = Toggles.AntiAfk.Value and os.clock() - KL >= 60
                if KC then
                    KR()
                end
                task.wait(1)
            end
        end)
        zf.Track(function()
            KQ += 1
            for k, v in KW do
                v:Disconnect()
            end
            pcall(task.cancel, KP)
            KM(false)
            KV()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Mp_4()
    local function Mp_5()
        local L1, L2, L3, L4
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Mi.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/MogEvolution")
        local L5 = SaveManager:BuildConfigSection(Mi.Settings)
        L3 = function(tp, tq)
            local K1_1 = (tp == "Toggle" and Toggles or Options)[tq]
            local K0_2 = type(K1_1) == "table" and K1_1.Type == tp
            local K0_3 = K0_2 and K1_1
            local K6 = if K0_3 then 1 else 0
            local K4 = 613 * K6 + 194 * (1 - K6)
            local K5 = 2759 * K6 + 1325 * (1 - K6)
            if not ((K4 * 4040 + K5 * 2502 + K4 * K5) % 16777213 == 11070805) then
                K0_3 = nil
            end
            return K0_3
        end
        L1 = function(tz, tA)
            local Type = tA.Type
            if Type == "Toggle" then
                return { idx = tz, type = "Toggle", value = tA.Value == true }
            elseif Type == "Slider" then
                return { idx = tz, type = "Slider", value = tostring(tA.Value) }
            elseif Type == "Dropdown" then
                return { idx = tz, type = "Dropdown", multi = tA.Multi == true, value = tA.Value }
            elseif Type == "Input" then
                local K8 = tA.Value or ""
                return { idx = tz, type = "Input", text = tostring(K8) }
            elseif Type == "ColorPicker" then
                return { idx = tz, type = "ColorPicker", value = tA.Value:ToHex(), transparency = tA.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = tz,
                    type = "KeyPicker",
                    mode = tA.Mode,
                    key = tA.Value,
                    modifiers = tA.Modifiers,
                    toggled = tA.Toggled
                }
            else
                return nil
            end
        end
        L4 = function()
            local Le = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Lf = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Lf then
                        local Lf_1 = L1(k, v)
                        if Lf_1 then
                            Le[#Le + 1] = Lf_1
                        end
                    end
                end
            end
            table.sort(Le, function(tK, tL)
                if tK.type ~= tL.type then
                    return tK.type < tL.type
                end
                return tK.idx < tL.idx
            end)
            return { objects = Le }
        end
        L2 = function(tN)
            local Ly
            Ly = nil
            local Lz = type(tN) ~= "table"
            local LD = if Lz then 1 else 0
            local LB = 2988 * LD + 2170 * (1 - LD)
            local LC = 1768 * LD + 1013 * (1 - LD)
            if not ((LB * 2639 + LC * 1149 + LB * LC) % 16777213 == 15199548) then
                Lz = type(tN.idx) ~= "string"
            end
            if not Lz then
                Lz = type(tN.type) ~= "string"
            end
            local LD_1 = if Lz then 1 else 0
            local LB_1 = 4044 * LD_1 + 3660 * (1 - LD_1)
            local LC_1 = 2653 * LD_1 + 792 * (1 - LD_1)
            if not ((LB_1 * 95 + LC_1 * 2886 + LB_1 * LC_1) % 16777213 == 1992257) then
                Lz = SaveManager.Ignore[tN.idx]
            end
            if Lz then
                return false
            end
            Ly = L3(tN.type, tN.idx)
            if not Ly then
                return false
            end
            local Lz_1 = pcall(function()
                if tN.type == "Input" then
                    if type(tN.text) ~= "string" then
                        return
                    end
                    Ly:SetValue(tN.text)
                elseif tN.type == "ColorPicker" then
                    Ly:SetValueRGB(Color3.fromHex(tN.value), tN.transparency)
                elseif tN.type == "KeyPicker" then
                    Ly:SetValue({ tN.key, tN.mode, tN.modifiers })
                    if tN.mode == "Toggle" and tN.toggled ~= nil then
                        Ly.Toggled = tN.toggled
                        Ly:Update()
                    end
                else
                    Ly:SetValue(tN.value)
                end
            end)
            return Lz_1
        end
        L5:AddDivider()
        L5:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        L5:AddButton("Export Config to Clipboard", function()
            local LF_1
            local LE_1
            LE_1, LF_1 = pcall(HttpService.JSONEncode, HttpService, L4())
            if LE_1 then
                local LE_2 = yN(setclipboard) and setclipboard
                local LG = LE_2
                if not LG then
                    local LE_3 = yN(toclipboard) and toclipboard
                    LG = LE_3 or nil
                end
                local LE_4 = LG
                local LG_1 = type(LE_4) == "function" and pcall(LE_4, LF_1)
                if LG_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        L5:AddButton("Import Config from Clipboard Text", function()
            local LO_1
            local LM = Options.SaveManager_ImportSource.Value
            local LM_1
            local LS = if LM then 1 else 0
            local LQ = 2798 * LS + 2572 * (1 - LS)
            local LR = 116 * LS + 2378 * (1 - LS)
            if not ((LQ * 75 + LR * 313 + LQ * LR) % 16777213 == 570726) then
                LM = ""
            end
            local LN = tostring(LM):match("^%s*(.-)%s*$")
            if LN == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #LN > 262144 then
                Library:Notify("That config is too large")
                return
            end
            LM_1, LO_1 = pcall(HttpService.JSONDecode, HttpService, LN)
            local LN_1 = not LM_1 or type(LO_1) ~= "table" or type(LO_1.objects) ~= "table"
            if LN_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #LO_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local LM_2 = 0
            for i, v in ipairs(LO_1.objects) do
                if L2(v) then
                    LM_2 += 1
                end
            end
            if LM_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local LO_2 = LM_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(LM_2, LO_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.WinLane then
            zo.SetLane(Options.WinLane.Value)
        end
        if Options.DuelDelay then
            y7.SetDelay(Options.DuelDelay.Value)
        end
        if Options.TreadmillBelt then
            yX.SetBelt(Options.TreadmillBelt.Value)
        end
        if Toggles.HammerEquip then
            yB.SetEquip(Toggles.HammerEquip.Value)
        end
        if Toggles.AutoWin then
            zo.SetEnabled(Toggles.AutoWin.Value)
        end
        if Toggles.AutoZone then
            zg.SetEnabled(Toggles.AutoZone.Value)
        end
        if Toggles.AutoDuel then
            y7.SetEnabled(Toggles.AutoDuel.Value)
        end
        if Toggles.AutoRings then
            y2.SetEnabled(Toggles.AutoRings.Value)
        end
        if Toggles.AutoTreadmill then
            yX.SetEnabled(Toggles.AutoTreadmill.Value)
        end
        if Toggles.AutoClicker then
            yP.SetEnabled(Toggles.AutoClicker.Value)
        end
        if Toggles.AutoAscend then
            yI.SetEnabled(Toggles.AutoAscend.Value)
        end
        if Toggles.AutoHammer then
            yB.SetEnabled(Toggles.AutoHammer.Value)
        end
        if Toggles.AutoRebirth then
            yr.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoDaily then
            zL.SetEnabled(Toggles.AutoDaily.Value)
        end
        if Toggles.AutoPlayTime then
            zF.SetEnabled(Toggles.AutoPlayTime.Value)
        end
        if Toggles.AutoFreeGift then
            zA.SetEnabled(Toggles.AutoFreeGift.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Mp_5()
end
zS_2()
