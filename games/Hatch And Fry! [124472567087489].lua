local En_1, En_5, En_6, En_7, En_8
local tw
local tC
local Eggs
local sI
local sp
local tO
local sO
local Library
local sv
local tc
local tB
local s_
local tH
local sH
local so
local s5
local tN
local sN
local tu
local tA
local sA
local sZ
local tn
local sn
local s4
local FarmPosition
local st
local Options
local sS
local tz
local sz
local tg
local sY
local tF
local sF
local tm
local sm
local s3
local Upgrade
local Workspace
local tR
local sR
local Configuration
local tf
local sE
local sl
local s2
local tr
local sr
local s8
local tQ
local sx
local Toggles
local sW
local tD
local sk
local CollectCash
local tq
local DataAggregation
local s7
local function fn20(fI)
    local yC, yD, CFrame, yG, yI, yJ, yL, yM, yN, yO, yQ, yR, yS, yT
    local yK = 8
    while true do
        local yK_1 = 10976 - yK
        do
            if yK_1 < 10966 then
                if yK_1 < 10964 then
                    if yK_1 < 10963 then
                        if yK_1 < 10962 then
                            if yK_1 < 9860 then
                                break
                            elseif yK_1 < 10763 then
                                break
                            elseif yK_1 < 10961 then
                                break
                            elseif yK_1 == 10961 then
                                yS += yR
                                yK = 11
                            else
                                yK = 10963
                                continue
                            end
                        else
                            return yG
                        end
                    else
                        yN += yM
                        yK = 10
                    end
                elseif yK_1 < 10965 then
                    if yK_1 == 10964 then
                        local yE_1 = CFrame:PointToWorldSpace(Vector3.new(yO, 0, yT))
                        yG = Vector3.new(yE_1.X, yC.groundY, yE_1.Z)
                        yK = if FarmPosition.IsValidEggPlacement(fI, yG, tQ, tN, 1, 1) then 14 else 7
                    else
                        yK = 10763
                        continue
                    end
                else
                    yK = if yR > 0 and yS <= yQ or yR <= 0 and yS >= yQ then 0 else 9
                end
            elseif yK_1 < 10974 then
                if yK_1 < 10970 then
                    if yK_1 < 10968 then
                        if yK_1 < 10967 then
                            if yK_1 == 10966 then
                                yK = if yM > 0 and yN <= yL or yM <= 0 and yN >= yL then 4 else 6
                            else
                                yK = 10962
                                continue
                            end
                        else
                            yK = 13
                        end
                    elseif yK_1 < 10969 then
                        yC = FarmPosition.GetFarmData(fI)
                        yK = if not yC then 5 else 2
                    elseif yK_1 == 10969 then
                        yK = 15
                    else
                        yK = 959
                        continue
                    end
                elseif yK_1 < 10972 then
                    if yK_1 < 10971 then
                        if yK_1 == 10970 then
                            return nil
                        end
                        yK = 10975
                        continue
                    elseif yK_1 == 10971 then
                        return nil
                    else
                        yK = 10974
                        continue
                    end
                elseif yK_1 < 10973 then
                    yO = yN
                    yK = 3
                else
                    yS = yI
                    yQ = yJ
                    yR = yD
                    yK = 11
                end
            elseif yK_1 < 10975 then
                if yK_1 == 10974 then
                    local mainPart = yC.mainPart
                    local Size = mainPart.Size
                    CFrame = mainPart.CFrame
                    yD = 6
                    yG = -Size.X / 2 + 5
                    local yH = Size.X / 2 - 5
                    yI = -Size.Z / 2 + 5
                    yJ = Size.Z / 2 - 5
                    yN = yG
                    yL = yH
                    yM = yD
                    yK = 10
                else
                    yK = 10971
                    continue
                end
            elseif yK_1 < 10976 then
                break
            else
                yT = yS
                yK = 12
            end
        end
    end
end
local function fn60(bG, bH)
    local u5 = bG and bG.Value
    if type(u5) ~= "table" then
        return false
    elseif u5[bH] == true then
        return true
    else
        for k, v in pairs(u5) do
            if v == bH then
                return true
            end
        end
        return false
    end
end
local function fn74(bX)
    if not bX then
        return nil
    end
    local Parent = bX.Parent
    local vn = Parent and Parent:IsA("BasePart")
    if vn then
        return Parent.Position
    end
    local vn_1 = Parent and Parent:IsA("Attachment")
    if vn_1 then
        return Parent.WorldPosition
    end
    local vn_2 = Parent and Parent:IsA("Model")
    if vn_2 then
        return Parent:GetPivot().Position
    end
    return nil
end
local function fn82(a7)
    tR[#tR + 1] = a7
    return a7
end
local function fn112(gJ)
    local zm = Eggs[gJ]
    local zm_1 = zm and zm.DisplayName or gJ
    return sR(Options.BuyEggFilter, zm_1)
end
local function fn139()
    local Character = s5.Character
    local uG = Character and Character:FindFirstChildOfClass("Humanoid")
    return uG
end
local function fn187(e0)
    local yl_1
    local yk_1
    local yj_1
    if not (Toggles.AutoServe and Toggles.AutoServe.Value) then
        return false
    end
    local yi_1 = tz(function(e3)
        return sE(e3, "PerfectlyCooked")
    end)[1] or tz(function(e7)
        return sE(e7, "Cooked")
    end)[1]
    if not yi_1 then
        return false
    end
    yj_1, yk_1, yl_1 = tH(e0)
    local yj_2 = not yk_1
    local yp = if yj_2 then 1 else 0
    local yn = 784 * yp + 61 * (1 - yp)
    local yo = 333 * yp + 3702 * (1 - yp)
    if not ((yn * 1024 + yo * 1761 + yn * yo) % 16777213 == 1650301) then
        yj_2 = not yl_1
    end
    if not yj_2 then
        yj_2 = yl_1.ActionText ~= "Serve Food"
    end
    if yj_2 then
        return false
    end
    local yj_3 = tr[yl_1] and tick() < tr[yl_1]
    if yj_3 then
        return false
    elseif not sr(yi_1) then
        return false
    else
        sW(yl_1)
        tr[yl_1] = tick() + 2
        local yi_2 = os.clock() + 1.25
        while os.clock() < yi_2 do
            if yl_1.ActionText == "Remove Food" then
                break
            end
            task.wait(0.05)
        end
        if yl_1.ActionText == "Serve Food" then
            tr[yl_1] = nil
            return false
        end
        return true
    end
end
local function fn247()
    local u_ = tg()
    local u__1 = u_ and u_.Currencies and u_.Currencies.Cash
    if type(u__1) == "number" then
        return u__1
    end
    return 0
end
local function fn269(dz)
    local ws = {}
    for k, v in sA(dz) do
        local wt = v.ActionText or ""
        if not string.find(wt, "Take out", 1, true) then
            ws[#ws + 1] = v
        end
    end
    return ws
end
local function fn279(hh)
    if not (Toggles.AutoRollEggs and Toggles.AutoRollEggs.Value) then
        return false
    end
    local zI = if tick() < tB then 1 else 0
    if zI == 1 then
        return false
    end
    local LeverMechanism = hh:FindFirstChild("LeverMechanism")
    local zB = LeverMechanism and tq(LeverMechanism, "SpinPrompt")
    if not zB or not zB.Enabled then
        return false
    end
    tB = tick() + tA
    sW(zB)
    return true
end
local function fn295(cv)
    local vE = cv:IsA("Tool") and cv:GetAttribute("ItemKind") == "Egg" and type(cv:GetAttribute("EggGuid")) == "string"
    return vE
end
local function fn313(ec)
    if not (Toggles.AutoPerfectCook and Toggles.AutoPerfectCook.Value) then
        return false
    end
    local PlacedCook = ec:FindFirstChild("PlacedCook")
    if not PlacedCook then
        return false
    end
    local xm = false
    for i, child in PlacedCook:GetChildren() do
        for k, v in tm(child) do
            local xl_2 = tz(function(el)
                return sE(el, "Raw")
            end)[1]
            if not xl_2 then
                return xm
            end
            if sr(xl_2) then
                sW(v)
                xm = true
                task.wait(0.25)
            end
        end
    end
    return xm
end
local function fn373(dm)
    local wd = {}
    for k, v in sx(dm, "PromptAttachment") do
        local ProximityPrompt = v:FindFirstChildOfClass("ProximityPrompt")
        if ProximityPrompt then
            wd[#wd + 1] = ProximityPrompt
        end
    end
    return wd
end
local function fn400()
    if not (Toggles.AutoUnlockRolls and Toggles.AutoUnlockRolls.Value) then
        return
    end
    local zR_1 = tg()
    local zS = zR_1 and zR_1.Stats and tonumber(zR_1.Stats.EggRollSlot)
    local zR_2 = zS or 1
    local zR_3 = tonumber(Configuration.MAX_EGG_ROLLS) or 3
    if zR_2 >= zR_3 then
        return
    end
    local ExtraEggRollsCosts = Configuration.ExtraEggRollsCosts
    local zT_1 = ExtraEggRollsCosts and tonumber(ExtraEggRollsCosts[zR_2 + 1])
    local zS_2 = not zT_1 or s4() < zT_1
    if zS_2 then
        return
    end
    pcall(function()
        Upgrade:FireServer("EggRolls")
    end)
end
local function fn473(ix, iy)
    local Af = sO()
    if ix == "CookTool" then
        local Ag_1 = Af and Af:FindFirstChild("PlacedCook")
        if Ag_1 then
            for i, child in Ag_1:GetChildren() do
                if child.Name == iy then
                    return true
                end
            end
        end
    else
        local Ag_2 = Af and Af:FindFirstChild("PlacedTable")
        if Ag_2 then
            for i, child in Ag_2:GetChildren() do
                if child.Name == iy then
                    return true
                end
            end
        end
    end
    local Af_2 = tg()
    local Ag_3 = Af_2 and Af_2.Inventory
    if Ag_3 then
        Ag_3 = ix == "CookTool" and Af_2.Inventory.CookingTools or Af_2.Inventory.ServingTables
    end
    local Af_3 = Ag_3
    if type(Af_3) == "table" then
        for k, v in Af_3 do
            local Af_4 = type(v) == "table" and v.Id == iy
            if Af_4 then
                return true
            end
        end
    end
    return false
end
local function fn510(am, an, ao)
    local up = {}
    local uq = {}
    local ur = {}
    for k, v in am do
        local us = an[v]
        local us_1 = us and us[ao] or v
        ur[#ur + 1] = us_1
        uq[us_1] = v
        up[us_1] = true
    end
    return ur, uq, up
end
local function fn527(h1)
    local z0 = tC()
    local z1 = z0 and z0.Data and z0.Data.PetShopState and z0.Data.PetShopState.Stock
    local z0_1 = z1
    if z1 then
        z1 = z0_1[h1]
    end
    local z0_2 = z1
    if type(z0_2) ~= "table" then
        return false
    end
    local z1_1 = z0_2.IsInStock == true
    if z1_1 then
        local z2 = tonumber(z0_2.StockAmount) or 0
        z1_1 = z2 > 0
    end
    return z1_1
end
local function fn544()
    return tn
end
local function worker()
    while not Library.Unloaded do
        pcall(function()
            local AU = sO()
            sF()
            sz()
            so()
            sH()
            tu()
            sn()
            tf()
            if AU then
                s_(AU)
                tD(AU)
                local AV = sm(AU)
                if not AV then
                    sv(AU)
                end
                s3(AU)
                sS(AU)
                sN(AU)
            end
        end)
        task.wait(0.18)
    end
end
local function fn582()
    local uX = sl()
    return uX and uX.Data
end
local function fn624(dv)
    local wm_1 = dv and dv.ActionText or ""
    return string.find(wm_1, "Perfect", 1, true) ~= nil
end
local function fn652()
    local uS_1
    local uR_1
    if not DataAggregation then
        return nil
    end
    uR_1, uS_1 = pcall(DataAggregation.GetReplica)
    if uR_1 then
        return uS_1
    end
    return nil
end
local function fn657(bS)
    local vg = s8()
    local vh = not vg or typeof(bS) ~= "Vector3"
    if vh then
        return false
    end
    vg.CFrame = CFrame.new(bS + Vector3.new(0, 3, 0))
    vg.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function onOnClientEvent(cN)
    if type(cN) == "table" then
        tO = cN
    end
    tB = 0
end
local function fn777(cy, cz)
    local vJ = if not cy:IsA("Tool") then 1 else 0
    if vJ == 1 then
        return false
    elseif cy:GetAttribute("ItemKind") ~= "Food" then
        return false
    elseif cy:GetAttribute("ToolCategory") ~= "Meat" then
        return false
    elseif cz then
        return cy:GetAttribute("FoodState") == cz
    else
        return true
    end
end
local function fn816(b9, ca)
    local vr = {}
    if not b9 then
        return vr
    end
    local vs = b9:FindFirstChild(ca)
    local vt = vs and vs:IsA("Attachment")
    if vt then
        vr[1] = vs
    end
    local vs_1 = 1
    while true do
        local vt_1 = b9:FindFirstChild(ca .. vs_1)
        if not vt_1 then
            break
        end
        if vt_1:IsA("Attachment") then
            vr[#vr + 1] = vt_1
        end
        vs_1 += 1
    end
    return vr
end
local function fn837(eD)
    local xR = eD.PrimaryPart or eD:FindFirstChild("HumanoidRootPart") or eD:FindFirstChildWhichIsA("BasePart")
    return xR
end
local function fn926(eG)
    local CustomerNPCs = Workspace:FindFirstChild("CustomerNPCs")
    local xU = eG and eG:FindFirstChild("PlacedTable")
    if not CustomerNPCs or not xU then
        return nil
    end
    for i, child in CustomerNPCs:GetChildren() do
        if child:GetAttribute("OwnerPlayerName") == s5.Name then
            local xT_1 = sk(child)
            if xT_1 then
                for i, child2 in xU:GetChildren() do
                    for k, v in sY(child2) do
                        local sit = v.sit
                        local prompt = v.prompt
                        if sit and prompt and (prompt and prompt.ActionText or "") == "Serve Food" and (xT_1.Position - sit.WorldPosition).Magnitude <= 10 then
                            return child, child2, prompt
                        end
                    end
                end
            end
        end
    end
    return nil
end
local function fn929(aM, aN)
    if setclipboard then
        setclipboard(aM)
    elseif toclipboard then
        toclipboard(aM)
    end
    Library:Notify(aN)
end
local function fn933()
    local uV_1
    local uU_1
    if not DataAggregation then
        return nil
    end
    uU_1, uV_1 = pcall(DataAggregation.GetSessionReplica)
    if uU_1 then
        return uV_1
    end
    return nil
end
local function fn944(gq, gr)
    local EggDisplayPedestals = gq:FindFirstChild("EggDisplayPedestals")
    local zg = EggDisplayPedestals and EggDisplayPedestals:FindFirstChild("Pedestal" .. gr)
    if not zg then
        return nil
    end
    local DisplayEgg = zg:FindFirstChild("DisplayEgg")
    if not DisplayEgg then
        return nil
    end
    local ProximityPrompt = DisplayEgg:FindFirstChildWhichIsA("ProximityPrompt", true)
    local zh = ProximityPrompt and ProximityPrompt.ObjectText
    local zh_1 = type(zh) == "string" and st[zh]
    if zh_1 then
        return st[zh]
    end
    local NPCName = DisplayEgg:FindFirstChild("NPCName", true)
    local zg_2 = NPCName and NPCName.Text
    local zg_3 = type(zg_2) == "string" and st[zg_2]
    if zg_3 then
        return st[zg_2]
    end
    local zf_6 = tO[gr]
    local zg_4 = type(zf_6) == "table" and type(zf_6.Id) == "string"
    if zg_4 then
        return zf_6.Id
    end
    return nil
end
local function fn964()
    s7(sI, "Copied Discord invite to clipboard")
end
local function fn1044()
    local Map = Workspace:FindFirstChild("Map")
    local uJ = Map and Map:FindFirstChild("Plots")
    if not uJ then
        return nil
    end
    for i, child in uJ:GetChildren() do
        if child:GetAttribute("Owner") == s5.Name then
            return child
        end
    end
    return nil
end
local function fn1085(gg)
    if not (Toggles.AutoHatch and Toggles.AutoHatch.Value) then
        return false
    end
    local PlacedEgg = gg:FindFirstChild("PlacedEgg")
    if not PlacedEgg then
        return false
    end
    for i, child in PlacedEgg:GetChildren() do
        if child:GetAttribute("IsReady") == true then
            local y1_2 = tq(child, "HatchPrompt")
            if y1_2 then
                sW(y1_2)
                return true
            end
        end
    end
    return false
end
local function fn1090(b2, b3)
    local vp = tc(b2)
    if vp then
        tF(vp)
        if not b3 then
            task.wait(0.2)
        end
    end
    sp(b2)
end
local function fn1119(aT)
    local DiscordGroup = aT:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = sZ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = sZ })
end
local function fn1125()
    DataAggregation = require(s5:WaitForChild("PlayerScripts"):WaitForChild("ClientLoader"):WaitForChild("Modules"):WaitForChild("DataAggregation"))
end
local function fn1132()
    if not (Toggles.AutoCollectCash and Toggles.AutoCollectCash.Value) then
        return
    end
    if tick() - tw < 0.35 then
        return
    end
    local vV_1 = tg()
    local vW = vV_1 and vV_1.Currencies
    if not vW then
        return
    end
    local vW_1 = tonumber(vW.UnclaimedCash) or 0
    if vW_1 > 0 then
        pcall(function()
            CollectCash:FireServer("FoodCash")
        end)
        tw = tick()
    end
    local vW_2 = tonumber(vW.UnclaimedAnimalCash) or 0
    local vX = vW_2 > 0
    if not vX then
        local vW_3 = tonumber(vW.OfflineAnimalCash) or 0
        vX = vW_3 > 0
    end
    if vX then
        pcall(function()
            CollectCash:FireServer("AnimalCash")
        end)
        tw = tick()
    end
    local vW_4 = tonumber(vW.Tips) or 0
    if vW_4 > 0 then
        pcall(function()
            CollectCash:FireServer("TipCash")
        end)
        tw = tick()
    end
end
local function fn1138(es)
    local xD = {}
    local xE = sx(es, "PromptAttachment")
    local xF = sx(es, "SitAttachment")
    local xG = math.max(#xE, #xF)
    local xL = 1
    while xL <= xG do
        local xM = xL
        local xG_1 = xE[xM]
        local xH = xG_1 and xG_1:FindFirstChildOfClass("ProximityPrompt")
        xD[#xD + 1] = { sit = xF[xM], prompt = xH }
        xL += 1
    end
    return xD
end
local function fn1154()
    local Character = s5.Character
    local uD = Character and Character:FindFirstChild("HumanoidRootPart")
    return uD
end
local function fn1170(cJ, cK)
    if not cJ then
        return nil
    end
    local vR = cJ:FindFirstChild(cK, true)
    local vS = vR and vR:IsA("ProximityPrompt")
    if vS then
        return vR
    end
    return nil
end
Eggs = nil
sk = nil
sl = nil
sm = nil
sn = nil
so = nil
sp = nil
DataAggregation = nil
sr = nil
Upgrade = nil
st = nil
sv = nil
sx = nil
sz = nil
sA = nil
sE = nil
sF = nil
sH = nil
sI = nil
CollectCash = nil
sN = nil
sO = nil
sR = nil
sS = nil
local sV
sW = nil
sY = nil
sZ = nil
s_ = nil
s2 = nil
s3 = nil
s4 = nil
local si, su, sw, BuyShopItem, sB, sC, BuyPetEgg, sG, sK, sL, sM, sP, sQ, PlaceEgg, sU, AcceptEgg, s0, s1
s5 = nil
s7 = nil
s8 = nil
Workspace = nil
Options = nil
tc = nil
Toggles = nil
tf = nil
tg = nil
tm = nil
tn = nil
tq = nil
tr = nil
FarmPosition = nil
tu = nil
Library = nil
tw = nil
Configuration = nil
tz = nil
tA = nil
tB = nil
tC = nil
tD = nil
tF = nil
tH = nil
tN = nil
tO = nil
tQ = nil
tR = nil
local s6, tb, td, th, tj, SaveManager, tl, tp, ts, tx, tE, tG, tI, tJ, tK, tL, tM, tP
s6 = nil
tb = nil
td = nil
th = nil
local ti
tj = nil
SaveManager = nil
tl = nil
local SharedUtils
tp = nil
ts = nil
tx = nil
tE = nil
tG = nil
tI = nil
tJ = nil
tK = nil
tL = nil
tM = nil
tP = nil
local t1, t2, t4, t7, t8, t9, DisplayEggRoll, uc, ud, ue
si, En_8, tL, tE, tx, ts, tn, th, tb, Workspace, s6, s5, s2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local En_2 = 8
repeat
    En_6 = (En_2 * 3 + 3) % 5 + 1
    if En_6 <= 3 then
        if En_6 <= 2 then
            if En_6 <= 1 then
                local En_4_1 = {
                    "wxczazts",
                    "umhclprdzenm",
                    "vgpftw",
                    "rsyblw",
                    "lon",
                    "nblj",
                    "nzaf",
                    "fpvfituchs",
                    "smkjkowdya",
                    "hceg",
                    "fmtjbfnzmvcz",
                    "zoy",
                    "wzkoyp",
                    "myldu",
                    "ovyz"
                }
                if En_4_1[(En_2 * 17 + 70) % 15 + 1] < En_4_1[(En_2 * 17 + 70) % 15 + 1] then
                    s6 = game:GetService("GuiService")
                    th = game:GetService("TeleportService")
                    s5 = game:GetService("Workspace")
                    si = game:GetService("Lighting")
                    tb = Workspace.LocalPlayer
                else
                    th = game:GetService("GuiService")
                    tb = game:GetService("TeleportService")
                    Workspace = game:GetService("Workspace")
                    s6 = game:GetService("Lighting")
                    s5 = si.LocalPlayer
                end
                En_2 = (En_2 + 2) % 20
            else
                local En_4_2 = (vector.create((En_2 * 3 + 1) % 11 + 1, (En_2 * 11 + 1) % 13 + 1, (En_2 * 4 + 12) % 17 + 1))
                En_1 = (vector.create((En_2 * 1 + 4) % 11 + 1, (En_2 * 7 + 9) % 13 + 1, (En_2 * 6 + 7) % 17 + 1))
                local FJ = vector.cross(En_4_2, En_1)
                local FK = vector.dot(En_4_2, En_1)
                if vector.dot(FJ, FJ) + FK * FK == vector.dot(En_4_2, En_4_2) * vector.dot(En_1, En_1) then
                    s2 = fn544
                else
                    th = fn544
                end
                En_2 = (En_2 + 7) % 20
            end
        else
            if (En_2 * 3 + 8) * 17 % 4 == ((En_2 * 3 + 8) * 17 + 0) % 4 then
                si = game:GetService("Players")
            else
                s2 = game:GetService("Players")
            end
            En_2 = (En_2 + 12) % 20
        end
    elseif En_6 <= 4 then
        local FF = bit32.rrotate(bit32.bxor(bit32.lrotate(En_2, 27), string.byte(tostring(tn))), 6)
        if bit32.bxor(bit32.lrotate(bit32.bxor(FF, 3548827091), 30), 4108432244) ~= bit32.lrotate(FF, 30) then
            si = game:GetService("ReplicatedStorage")
        else
            En_8 = game:GetService("ReplicatedStorage")
        end
        En_2 = (En_2 + 12) % 20
    else
        En_6 = (vector.create((En_2 * 6 + 9) % 11 + 1, (En_2 * 1 + 4) % 13 + 1, (En_2 * 13 + 4) % 17 + 1))
        local En_4_3 = (vector.create((En_2 * 5 + 4) % 11 + 1, (En_2 * 5 + 5) % 13 + 1, (En_2 * 11 + 6) % 17 + 1))
        En_1 = (vector.create((En_2 * 5 + 6) % 11 + 1, (En_2 * 5 + 3) % 13 + 1, (En_2 * 8 + 9) % 17 + 1))
        if vector.dot(vector.cross(En_6, En_4_3), En_1) == vector.dot(vector.cross(En_4_3, En_1), En_6) + 4 then
            tn = game:GetService("RunService")
            tx = game:GetService("UserInputService")
            tL = game:GetService("VirtualUser")
            tE = game:GetService("HttpService")
            ts = game:GetService("CoreGui")
        else
            tL = game:GetService("RunService")
            tE = game:GetService("UserInputService")
            tx = game:GetService("VirtualUser")
            ts = game:GetService("HttpService")
            tn = game:GetService("CoreGui")
        end
        En_2 = (En_2 + 17) % 20
    end
until (En_2 * 7 + 15) % 20 == 1
if getgenv then
    sV, En_6 = nil, nil
    En_2 = 3
    repeat
        if (En_2 * 1 + 0) % 2 + 1 <= 1 then
            if En_2 * 108597479 + 4 + 2 >= En_2 * 108597479 + 4 + 2 + 4 then
                sV = En_6
            else
                En_6 = sV
            end
            En_2 = (En_2 + 15) % 16
        else
            if (En_2 * 3 + 5) * 9 % 4 == ((En_2 * 3 + 5) * 9 + 11) % 4 then
                getgenv().gethui = sV
                s2 = getgenv().__OuroborosHatchAndFryLib
            else
                getgenv().gethui = s2
                sV = getgenv().__OuroborosHatchAndFryLib
            end
            En_2 = (En_2 + 7) % 16
        end
    until (En_2 * 11 + 7) % 16 == 10
    if En_6 then
        En_6 = sV.Unload
    end
    if En_6 then
        pcall(function()
            sV:Unload()
        end)
    end
end
pcall(function()
    gethui = s2
end)
if setthreadidentity then
    setthreadidentity(8)
end
sL, sI, sC, sw, En_6, Eggs, tP, tM, tG, Configuration, FarmPosition, SharedUtils, t4, t1, En_5, En_7, AcceptEgg, PlaceEgg, DisplayEggRoll, sP, sM, CollectCash, BuyPetEgg, BuyShopItem, Upgrade, DataAggregation, tQ, tN, tI, tA, tp, tj, td, st, t8, t7, En_2, ud, uc, Library, SaveManager = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sL = "Hatch And Fry"
sI = "https://discord.gg/ehKVq7pf7v"
sC = "https://rscripts.net/@Ouroboros"
sw = "https://ouroboros-hub-rbx.web.app/"
En_1 = En_8:WaitForChild("Shared")
local En_4_5 = En_1:WaitForChild("Registry")
if ((BuyPetEgg or not BuyPetEgg) and (BuyPetEgg or not BuyPetEgg) or (not Upgrade or Upgrade) and (not Upgrade and BuyPetEgg)) and ((Upgrade or not BuyPetEgg) and (not BuyPetEgg or not Upgrade) or not BuyPetEgg and Upgrade and (Upgrade and BuyPetEgg)) and ((not Upgrade or not BuyPetEgg) and (Upgrade and Upgrade) or (not Upgrade or not Upgrade) and (Upgrade or not Upgrade) or BuyPetEgg and BuyPetEgg and (not Upgrade and not Upgrade) and (not Upgrade or Upgrade or Upgrade and not Upgrade)) or not (((BuyPetEgg or not BuyPetEgg) and (BuyPetEgg or not BuyPetEgg) or (not Upgrade or Upgrade) and (not Upgrade and BuyPetEgg)) and ((Upgrade or not BuyPetEgg) and (not BuyPetEgg or not Upgrade) or not BuyPetEgg and Upgrade and (Upgrade and BuyPetEgg)) and ((not Upgrade or not BuyPetEgg) and (Upgrade and Upgrade) or (not Upgrade or not Upgrade) and (Upgrade or not Upgrade) or BuyPetEgg and BuyPetEgg and (not Upgrade and not Upgrade) and (not Upgrade or Upgrade or Upgrade and not Upgrade))) then
    En_6 = En_8:WaitForChild("Remotes")
else
    En_6:WaitForChild("Remotes")
end
if (not DisplayEggRoll and DisplayEggRoll and (not DisplayEggRoll) and (DisplayEggRoll and false or not DisplayEggRoll and 67) or (not DisplayEggRoll or not DisplayEggRoll and not DisplayEggRoll) and ((not DisplayEggRoll or DisplayEggRoll) and false)) and not (not DisplayEggRoll and DisplayEggRoll and (not DisplayEggRoll) and (DisplayEggRoll and false or not DisplayEggRoll and 67) or (not DisplayEggRoll or not DisplayEggRoll and not DisplayEggRoll) and ((not DisplayEggRoll or DisplayEggRoll) and false)) then
    En_4_5 = require(Eggs:WaitForChild("Eggs"))
else
    Eggs = require(En_4_5:WaitForChild("Eggs"))
end
tP = require(En_4_5:WaitForChild("PetEggs"))
tM = require(En_4_5:WaitForChild("CookingTools"))
tG = require(En_4_5:WaitForChild("ServingTables"))
Configuration = require(En_1:WaitForChild("Config"):WaitForChild("Configuration"))
FarmPosition = require(En_1:WaitForChild("FarmPosition"))
SharedUtils = require(En_1:WaitForChild("SharedUtils"))
if Eggs and Upgrade or (En_5 or t7) or En_6 and Upgrade and (not t7 or not En_6) or (En_6 or Upgrade or Eggs and not t7) and ((not t7 or not En_6) and (En_5 and t7)) or not (Eggs and Upgrade or (En_5 or t7) or En_6 and Upgrade and (not t7 or not En_6) or (En_6 or Upgrade or Eggs and not t7) and ((not t7 or not En_6) and (En_5 and t7))) then
    t4 = En_6:WaitForChild("Egg")
else
    En_6 = t4:WaitForChild("Egg")
end
local t3 = En_6:WaitForChild("Animal")
if (not ud or not ud or (ud or not En_5) or (not ud or ud) and (ud or ud)) and ((not ud or not ud or ud and not ud) and (not En_5 and not ud or (not ud or not En_5))) or not ((not ud or not ud or (ud or not En_5) or (not ud or ud) and (ud or ud)) and ((not ud or not ud or ud and not ud) and (not En_5 and not ud or (not ud or not En_5)))) then
    t1 = En_6:WaitForChild("Cook_Table")
else
    En_6 = t1:WaitForChild("Cook_Table")
end
local En_9 = En_6:WaitForChild("Plot")
local En_3 = En_6:WaitForChild("PetShop")
if (not uc or uc or (not uc or t8)) and (not t8 and not uc and (t8 or t8)) and (not uc or t8 or (not uc or uc) or (not t8 or t8 or uc and uc)) or ((not uc or uc) and (not uc and uc) and (not uc and not uc and (not uc and not uc)) or (not t8 and t8 or (not uc or not uc)) and (not t8 or not t8 or uc and uc)) or not ((not uc or uc or (not uc or t8)) and (not t8 and not uc and (t8 or t8)) and (not uc or t8 or (not uc or uc) or (not t8 or t8 or uc and uc)) or ((not uc or uc) and (not uc and uc) and (not uc and not uc and (not uc and not uc)) or (not t8 and t8 or (not uc or not uc)) and (not t8 or not t8 or uc and uc))) then
    En_5 = En_6:WaitForChild("ShopMain")
else
    En_6 = En_5:WaitForChild("ShopMain")
end
if ((not tP and not En_5 or (not En_5 or not tP)) and (not En_5 or En_5 or not tP and not tP) or En_5 and not En_5 and (not En_5 or En_5) and (not tP and not tP and (not En_5 and En_5))) and ((not tP or En_5 or tP and not tP) and (tP or En_5 or not tP and tP) and ((not En_5 and tP or not tP and not tP) and (not tP or tP or not En_5 and tP))) or not (((not tP and not En_5 or (not En_5 or not tP)) and (not En_5 or En_5 or not tP and not tP) or En_5 and not En_5 and (not En_5 or En_5) and (not tP and not tP and (not En_5 and En_5))) and ((not tP or En_5 or tP and not tP) and (tP or En_5 or not tP and tP) and ((not En_5 and tP or not tP and not tP) and (not tP or tP or not En_5 and tP)))) then
    En_7 = En_6:WaitForChild("UpgradeFold")
else
    En_7:WaitForChild("UpgradeFold")
end
if (not BuyPetEgg and not BuyPetEgg or not t4 and SharedUtils or (not BuyPetEgg or t3 or (not BuyPetEgg or not t4))) and not (not BuyPetEgg and not BuyPetEgg or not t4 and SharedUtils or (not BuyPetEgg or t3 or (not BuyPetEgg or not t4))) then
    AcceptEgg:WaitForChild("AcceptEgg")
    AcceptEgg:WaitForChild("PlaceEgg")
    AcceptEgg:WaitForChild("DisplayEggRoll")
    sM = PlaceEgg:WaitForChild("ProcessAnimal")
    sP = DisplayEggRoll:WaitForChild("RemoveMeat")
else
    AcceptEgg = t4:WaitForChild("AcceptEgg")
    PlaceEgg = t4:WaitForChild("PlaceEgg")
    DisplayEggRoll = t4:WaitForChild("DisplayEggRoll")
    sP = t3:WaitForChild("ProcessAnimal")
    sM = t1:WaitForChild("RemoveMeat")
end
CollectCash = En_9:WaitForChild("CollectCash")
BuyPetEgg = En_3:WaitForChild("BuyPetEgg")
BuyShopItem = En_5:WaitForChild("BuyShopItem")
Upgrade = En_7:WaitForChild("Upgrade")
pcall(fn1125)
tQ = Vector3.new(3.46, 4.24, 3.64)
tN = { "PlacedEgg", "PlacedPetEgg" }
tI = 0.6
tA = 1.6
local t5 = {
    "CommonEgg",
    "UncommonEgg",
    "RareEgg",
    "EpicEgg",
    "LegendaryEgg",
    "MythicEgg",
    "SecretEgg",
    "DinoEgg"
}
tp = {
    "HamsterEgg",
    "GuineaPigEgg",
    "LizardEgg",
    "ParrotEgg",
    "CapybaraEgg",
    "CatEgg",
    "DogEgg",
    "DireWolfEgg",
    "KitsuneEgg"
}
tj = {
    "StarterGrill",
    "BasicGrill",
    "AdvancedGrill",
    "ToasterOven",
    "PizzaOven",
    "IndustrialStove",
    "RadioactiveSmoker",
    "DinoGrill"
}
td = { "BasicTable", "TikiTable", "IndustrialCounter", "PicnicTable", "GlassTable" }
if (En_7 and En_7 or (not En_7) or (not En_7 or (not BuyShopItem))) and (not En_7 or 53) and (BuyShopItem or false or (En_7 or not En_7 or (BuyShopItem or 53)) or En_7 and (BuyShopItem or 53) and ((not En_7 or En_7) and (not BuyShopItem))) and not ((En_7 and En_7 or (not En_7) or (not En_7 or (not BuyShopItem))) and (not En_7 or 53) and (BuyShopItem or false or (En_7 or not En_7 or (BuyShopItem or 53)) or En_7 and (BuyShopItem or 53) and ((not En_7 or En_7) and (not BuyShopItem)))) then
    ue = fn510
    t2, tM, tp = ue(Eggs, tj, "DisplayName")
    t5, t9, tP = ue(td, t7, "DisplayName")
    tG = ue(st, En_2, "DisplayName")
    ud = ue(uc, t8, "DisplayName")
else
    t2 = fn510
    t9, st, t8 = t2(t5, Eggs, "DisplayName")
    t7, En_2, ue = t2(tp, tP, "DisplayName")
    ud = t2(tj, tM, "DisplayName")
    uc = t2(td, tG, "DisplayName")
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosHatchAndFryLib = Library
end
Toggles, Options, su, tR, tO, tJ, tB, tw, tr, sG, s7, sZ, tl, s8, s0, sO, sl, tC, tg, s4, sR, sp, tF, tc, sW, sx, tz, sQ, sE, sr, tq, sF, tf, sA, tK, tm, s_, sv, sY, sk, tH, sm, sz, sK, s3, tD, s1, ti, sS, sN, tu, sn, sU, so, sB, sH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
s7 = fn929
sZ = fn964
En_9 = fn1119
local En_4_6 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = sI, Copyable = true }, "|", sL },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
En_4_6:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
su = {
    Info = En_4_6:AddTab("Info", "info"),
    Main = En_4_6:AddTab("Main", "egg"),
    Player = En_4_6:AddTab("Player", "person-standing"),
    Settings = En_4_6:AddTab("Settings", "settings")
}
En_6 = su.Main:AddSubTab("Eggs", "egg")
En_8 = su.Main:AddSubTab("Kitchen", "flame")
En_2 = su.Main:AddSubTab("Shop", "shopping-bag")
En_9(En_6)
En_9(En_8)
En_9(En_2)
En_9(su.Player)
En_9(su.Settings)
tR = {}
tO = {}
tJ = 0
tB = 0
tw = 0
tr = {}
tl = fn82
s8 = fn1154
s0 = fn139
sO = fn1044
sl = fn652
tC = fn933
tg = fn582
s4 = fn247
sR = fn60
sp = function(bN)
    local ve = not bN or not bN:IsA("ProximityPrompt")
    if ve then
        return
    end
    bN.HoldDuration = 0
    bN.RequiresLineOfSight = false
    if fireproximityprompt then
        pcall(fireproximityprompt, bN)
        return
    end
    if firesignal then
        pcall(firesignal, bN.Triggered, s5)
        return
    end
    pcall(function()
        bN:InputHoldBegin()
        bN:InputHoldEnd()
    end)
end
tF = fn657
tc = fn74
sW = fn1090
sx = fn816
tz = function(ci)
    local cj
    cj = {}
    local function ck(cl)
        if not cl then
            return
        end
        for i, child in cl:GetChildren() do
            local vv = (child:IsA("Tool"))
            if vv then
                local vw = not ci or ci(child)
                vv = vw
            end
            if vv then
                cj[#cj + 1] = child
            end
        end
    end
    ck(s5:FindFirstChild("Backpack"))
    ck(s5.Character)
    return cj
end
sQ = fn295
sE = fn777
sr = function(cB)
    local vK = s0()
    if not vK or not cB then
        return false
    elseif cB.Parent == s5.Character then
        return true
    else
        pcall(function()
            vK:EquipTool(cB)
        end)
        local vL_1 = os.clock() + 0.45
        while true do
            if not (os.clock() < vL_1) then
                return cB.Parent == s5.Character
            end
            if cB.Parent == s5.Character then
                break
            end
            task.wait()
        end
        return true
    end
end
tq = fn1170
tl(DisplayEggRoll.OnClientEvent:Connect(onOnClientEvent))
t3 = En_6:AddLeftGroupbox("Eggs", "egg")
t3:AddToggle("AutoRollEggs", { Text = "Auto Roll Eggs", Default = false })
t3:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
t3:AddDropdown("BuyEggFilter", { Text = "Eggs", Values = t9, Multi = true, Default = t8 })
t3:AddToggle("ClearLeftovers", { Text = "Buy Unselected Too", Default = false })
t2 = En_6:AddRightGroupbox("Hatch", "bird")
t2:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
t2:AddDivider("Upgrades")
t2:AddToggle("AutoUpgradeLuck", { Text = "Auto Upgrade Luck", Default = false })
t2:AddDropdown("LuckBuyCount", { Text = "Luck Amount", Values = { "1", "10" }, Default = 1 })
t2:AddToggle("AutoUnlockRolls", { Text = "Auto Unlock Rolls", Default = false })
t1 = En_8:AddLeftGroupbox("Cook", "flame")
t1:AddToggle("AutoPerfectCook", { Text = "Auto Perfect Cook", Default = false })
t1:AddToggle("AutoDiscardBurnt", { Text = "Auto Discard Burnt", Default = true })
t1:AddToggle("AutoServe", { Text = "Auto Serve", Default = false })
t1:AddToggle("AutoCollectCash", { Text = "Auto Collect Cash", Default = true })
En_3 = En_8:AddRightGroupbox("Animals", "beef")
En_3:AddToggle("AutoProcess", { Text = "Auto Process", Default = false })
En_3:AddDropdown("ProcessAge", { Text = "Age", Values = { "Adult", "Juvenile", "Baby" }, Default = 1 })
En_7 = En_2:AddLeftGroupbox("Pets", "paw-print")
En_7:AddToggle("AutoBuyPets", { Text = "Auto Buy Pets", Default = false })
En_7:AddDropdown("BuyPetFilter", { Text = "Pet Eggs", Values = t7, Multi = true, Default = ue })
En_1 = En_2:AddRightGroupbox("Items", "utensils")
En_1:AddToggle("AutoBuyGrills", { Text = "Auto Buy Grills", Default = false })
En_1:AddDropdown("BuyGrillFilter", { Text = "Grills", Values = ud, Multi = true, Default = {} })
En_1:AddToggle("AutoBuyTables", { Text = "Auto Buy Tables", Default = false })
En_1:AddDropdown("BuyTableFilter", { Text = "Tables", Values = uc, Multi = true, Default = {} })
sF = fn1132
tf = function()
    if not (Toggles.AutoDiscardBurnt and Toggles.AutoDiscardBurnt.Value) then
        return
    end
    for k, v in tz(function(dc)
        return sE(dc, "Burnt")
    end) do
        local attr = v:GetAttribute("FoodGuid")
        if type(attr) == "string" then
            pcall(function()
                sM:InvokeServer(attr)
            end)
            task.wait(0.15)
        end
    end
end
sA = fn373
tK = fn624
tm = fn269
s_ = function(dG)
    local PlacedCook
    if not (Toggles.AutoPerfectCook and Toggles.AutoPerfectCook.Value) then
        return false
    end
    PlacedCook = dG:FindFirstChild("PlacedCook")
    if not PlacedCook then
        return false
    end
    local function wR_1()
        local wC = false
        for i, child in PlacedCook:GetChildren() do
            for k, v in sA(child) do
                if tK(v) then
                    sW(v, true)
                    wC = true
                    task.wait(0.12)
                    tf()
                end
            end
        end
        return wC
    end
    local wZ = if wR_1() then 1 else 0
    if wZ == 1 then
        return true
    end
    local wS = false
    for i, child in PlacedCook:GetChildren() do
        for k, v in sA(child) do
            local find = string.find
            local wU_1 = v.ActionText or ""
            if find(wU_1, "(Cooked)", 1, true) then
                wS = true
                break
            end
        end
        if wS then
            break
        end
    end
    if not wS then
        return false
    end
    local wS_1 = os.clock() + 4
    while true do
        if not (os.clock() < wS_1) then
            return wR_1()
        end
        if wR_1() then
            break
        end
        local wT_2 = false
        for i, child in PlacedCook:GetChildren() do
            for k, v in sA(child) do
                local wU_2 = v.ActionText or ""
                local wU_3 = string.find(wU_2, "(Cooked)", 1, true) or string.find(wU_2, "Perfect", 1, true)
                if wU_3 then
                    wT_2 = true
                    break
                end
            end
            if wT_2 then
                break
            end
        end
        if not wT_2 then
            return wR_1()
        end
        task.wait()
    end
    return true
end
sv = fn313
sY = fn1138
sk = fn837
tH = fn926
sm = fn187
sG = { Baby = 1, Juvenile = 2, Adult = 3 }
sz = function()
    if not (Toggles.AutoProcess and Toggles.AutoProcess.Value) then
        return
    end
    local AnimalData = Workspace:FindFirstChild("AnimalData")
    local yr = AnimalData and AnimalData:FindFirstChild(s5.Name)
    if not yr then
        return
    end
    local ys_1 = sG[Options.ProcessAge and Options.ProcessAge.Value or "Adult"] or 3
    for i, child in yr:GetChildren() do
        local yB = child
        if yB:GetAttribute("OwnerUserId") == s5.UserId then
            local attr = yB:GetAttribute("GrowthStage")
            if (sG[attr] or 0) >= ys_1 then
                local yq_5 = true
                if ys_1 >= 3 then
                    local ys_3 = tonumber(yB:GetAttribute("CurrentKg")) or 0
                    local ys_4 = tonumber(yB:GetAttribute("IndividualMaxKg")) or 0
                    yq_5 = ys_4 > 0 and ys_3 + 0.01 >= ys_4
                end
                if yq_5 then
                    pcall(function()
                        sP:InvokeServer(yB.Name)
                    end)
                    task.wait(0.15)
                end
            end
        end
    end
end
sK = fn20
s3 = function(f_)
    local yV, attr
    if not (Toggles.AutoHatch and Toggles.AutoHatch.Value) then
        return false
    elseif tick() - tJ < tI then
        return false
    else
        local yX_1 = tz(sQ)[1]
        if not yX_1 then
            return false
        end
        attr = yX_1:GetAttribute("EggGuid")
        yV = sK(f_)
        if not yV then
            return false
        end
        sr(yX_1)
        tJ = tick()
        pcall(function()
            PlaceEgg:InvokeServer(attr, yV, 0)
        end)
        return true
    end
end
tD = fn1085
if ((not su or su) and (not En_1 or not sN) or En_8 and su and (su or not En_1)) and (tB or not su or su and su or (sN or En_1) and (su and not En_1)) or (not t1 and En_8 or (not t1 or not En_1) or (En_8 and En_1 or t1 and not En_1)) and (sN and not su and (sN and not t1) and (su and not En_1 and (not t1 or not t1))) or not (((not su or su) and (not En_1 or not sN) or En_8 and su and (su or not En_1)) and (tB or not su or su and su or (sN or En_1) and (su and not En_1)) or (not t1 and En_8 or (not t1 or not En_1) or (En_8 and En_1 or t1 and not En_1)) and (sN and not su and (sN and not t1) and (su and not En_1 and (not t1 or not t1)))) then
    s1 = fn944
    ti = fn112
    sS = function(gR)
        if not (Toggles.AutoBuyEggs and Toggles.AutoBuyEggs.Value) then
            return false
        elseif tick() < tB then
            return false
        else
            local zp_2 = s4()
            local zq = false
            for i = 1, 3 do
                local zz = i
                local zr = s1(gR, zz)
                local zr_6
                if zr then
                    local zs = Eggs[zr]
                    local zs_8
                    local zt = zs and tonumber(zs.Price)
                    local zt_3 = zt or math.huge
                    local zs_6 = ti(zr)
                    if (zs_6 or Toggles.ClearLeftovers and Toggles.ClearLeftovers.Value) and zp_2 >= zt_3 then
                        zr_6, zs_8 = pcall(function()
                            return AcceptEgg:InvokeServer(zz)
                        end)
                        zq = true
                        local zu_2 = zr_6 and type(zs_8) == "table" and zs_8.success ~= false
                        if zu_2 then
                            zp_2 -= zt_3
                            task.wait(0.12)
                        else
                            local zt_4 = zr_6 and type(zs_8) == "table" and zs_8.message == "NoCash"
                            if zt_4 then
                                break
                            end
                        end
                    end
                end
            end
            return zq
        end
    end
    sN = fn279
    tu = function()
        local zJ
        if not (Toggles.AutoUpgradeLuck and Toggles.AutoUpgradeLuck.Value) then
            return
        end
        local zK_6 = tg()
        local zL = zK_6 and zK_6.Stats and tonumber(zK_6.Stats.EggRollLuck)
        local zK_7 = zL or 1
        local zK_8 = Options.LuckBuyCount and Options.LuckBuyCount.Value == "10"
        zJ = 1
        if zK_8 then
            local zK_9 = SharedUtils.CalculateMultipleEggLuckUpgradeCost(zK_7, 10, s4())
            local zM_3 = tonumber(zK_9) or 0
            zJ = zM_3
            if zJ < 1 then
                return
            end
        else
            local zK_10 = SharedUtils.CalculateEggLuckUpgradeCost(zK_7)
            local zL_4 = s4()
            local zM_4 = tonumber(zK_10) or math.huge
            if zL_4 < zM_4 then
                return
            end
        end
        pcall(function()
            Upgrade:FireServer("EggLuck", zJ)
        end)
    end
else
    sN = fn944
    s1 = fn112
    tu = function(gR)
        if not (Toggles.AutoBuyEggs and Toggles.AutoBuyEggs.Value) then
            return false
        elseif tick() < tB then
            return false
        else
            local zp_1 = s4()
            local zq = false
            for i = 1, 3 do
                local zz = i
                local zr = s1(gR, zz)
                local zr_3
                if zr then
                    local zs = Eggs[zr]
                    local zs_4
                    local zt = zs and tonumber(zs.Price)
                    local zt_1 = zt or math.huge
                    local zs_2 = ti(zr)
                    if (zs_2 or Toggles.ClearLeftovers and Toggles.ClearLeftovers.Value) and zp_1 >= zt_1 then
                        zr_3, zs_4 = pcall(function()
                            return AcceptEgg:InvokeServer(zz)
                        end)
                        zq = true
                        local zu_1 = zr_3 and type(zs_4) == "table" and zs_4.success ~= false
                        if zu_1 then
                            zp_1 -= zt_1
                            task.wait(0.12)
                        else
                            local zt_2 = zr_3 and type(zs_4) == "table" and zs_4.message == "NoCash"
                            if zt_2 then
                                break
                            end
                        end
                    end
                end
            end
            return zq
        end
    end
    sS = fn279
    ti = function()
        local zJ
        if not (Toggles.AutoUpgradeLuck and Toggles.AutoUpgradeLuck.Value) then
            return
        end
        local zK_1 = tg()
        local zL = zK_1 and zK_1.Stats and tonumber(zK_1.Stats.EggRollLuck)
        local zK_2 = zL or 1
        local zK_3 = Options.LuckBuyCount and Options.LuckBuyCount.Value == "10"
        zJ = 1
        if zK_3 then
            local zK_4 = SharedUtils.CalculateMultipleEggLuckUpgradeCost(zK_2, 10, s4())
            local zM_1 = tonumber(zK_4) or 0
            zJ = zM_1
            if zJ < 1 then
                return
            end
        else
            local zK_5 = SharedUtils.CalculateEggLuckUpgradeCost(zK_2)
            local zL_2 = s4()
            local zM_2 = tonumber(zK_5) or math.huge
            if zL_2 < zM_2 then
                return
            end
        end
        pcall(function()
            Upgrade:FireServer("EggLuck", zJ)
        end)
    end
end
sn = fn400
sU = fn527
so = function()
    if not (Toggles.AutoBuyPets and Toggles.AutoBuyPets.Value) then
        return
    end
    local z4_1 = s4()
    for k, v in tp do
        local Ae = v
        local z5 = tP[Ae]
        local z7 = z5 and z5.DisplayName or Ae
        local z7_1 = sR(Options.BuyPetFilter, z7) and sU(Ae)
        if z7_1 then
            local z6_2 = z5 and tonumber(z5.Price)
            if z4_1 >= (z6_2 or math.huge) then
                pcall(function()
                    BuyPetEgg:InvokeServer(Ae)
                end)
                return
            end
        end
    end
end
sB = fn473
sH = function()
    local AD = s4()
    if Toggles.AutoBuyGrills and Toggles.AutoBuyGrills.Value then
        for k, v in tj do
            local AN = v
            local AE_1 = tM[AN]
            local AF_2 = AE_1 and AE_1.DisplayName or AN
            local AG_2 = sR(Options.BuyGrillFilter, AF_2) and not sB("CookTool", AN)
            if AG_2 then
                local AF_3 = AE_1 and tonumber(AE_1.Cost)
                if AD >= (AF_3 or math.huge) then
                    pcall(function()
                        BuyShopItem:FireServer("BuyCookTool", AN)
                    end)
                    return
                end
            end
        end
    end
    if Toggles.AutoBuyTables and Toggles.AutoBuyTables.Value then
        for k, v in td do
            local AT = v
            local AE_4 = tG[AT]
            local AF_6 = AE_4 and AE_4.DisplayName or AT
            local AG_4 = sR(Options.BuyTableFilter, AF_6) and not sB("ServingTable", AT)
            if AG_4 then
                local AF_7 = AE_4 and tonumber(AE_4.Cost)
                if AD >= (AF_7 or math.huge) then
                    pcall(function()
                        BuyShopItem:FireServer("BuyTable", AT)
                    end)
                    return
                end
            end
        end
    end
end
task.spawn(worker)
t5 = function()
    local BO
    local BM
    local BV
    local BP
    local BN
    local BU
    BM = nil
    BN = nil
    BO = nil
    BP = nil
    BU = nil
    BV = nil
    local BQ, BR, Label2, Label3, BW, Label
    BP = function(j_, j0)
        return string.format('<font color="%s">%s</font>', j0, j_)
    end
    BR = function(j2, j3, j4)
        return string.format("<b>%s</b> %s %s", j2, BP("-", "#5a6070"), BP(j3, j4))
    end
    BO = "#7fd47f"
    BU = "#e05a5a"
    local BY = "#8b93a3"
    BM = "#e8a34d"
    local function B_()
        local A0 = hookfunction ~= nil
        local A1 = hookmetamethod ~= nil
        local A2 = getrawmetatable ~= nil
        local A3 = setrawmetatable ~= nil
        local A4 = getgc ~= nil
        local A5 = getgenv ~= nil
        local A6 = getreg ~= nil
        local A7 = getconnections ~= nil
        local A8 = firesignal ~= nil
        local A9 = getcallbackvalue ~= nil
        local Ba = setclipboard ~= nil
        local Bb = getcustomasset ~= nil
        local Bc = getnamecallmethod ~= nil
        local Bd = isexecutorclosure ~= nil
        local Be = fireproximityprompt ~= nil
        local Bf = firetouchinterest ~= nil
        local Bg = WebSocket ~= nil
        local Bh = readfile ~= nil
        local Bi = writefile ~= nil
        local Bk = (request or http_request) ~= nil
        local Bm = (debug and debug.getupvalues) ~= nil
        local Bo = (debug and debug.setupvalue) ~= nil
        local Bp = 0
        local Bq = { A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, Ba, Bb, Bc, Bd, Be, Bf, Bg, Bh, Bi, Bk, Bm, Bo }
        for i, v in ipairs(Bq) do
            if v then
                Bp += 1
            end
        end
        local A0_1 = Bp / #Bq
        if A0_1 >= 0.9 then
            return BP("Full Support", BO)
        elseif A0_1 >= 0.6 then
            return BP("Half Support", BM)
        else
            return BP("Low Support", BU)
        end
    end
    BV = "Unknown"
    pcall(function()
        local Bz_1
        local By_1
        if identifyexecutor then
            Bz_1, By_1 = identifyexecutor()
            local BA = Bz_1 ~= ""
            local BB = type(Bz_1) == "string" and BA
            if BB then
                local BA_1 = type(By_1) == "string" and By_1 ~= "" and Bz_1 .. " " .. By_1
                BV = BA_1 or Bz_1
            end
        end
    end)
    local B0 = B_()
    BN = os.clock()
    BQ = function()
        local BG = math.floor(os.clock() - BN)
        if BG < 60 then
            return BG .. "s"
        elseif BG < 3600 then
            return string.format("%dm %ds", BG // 60, BG % 60)
        else
            return string.format("%dh %dm", BG // 3600, BG % 3600 // 60)
        end
    end
    local B__1 = su.Info:AddLeftGroupbox("User", "circle-user")
    B__1:AddPlayerInfo("InfoUserCard", { Player = s5, Title = "User", HeaderIcon = "user", Collapsible = false })
    B__1:AddLabel(BR("User", s5.DisplayName .. " @" .. s5.Name, BO), true)
    B__1:AddLabel(BR("UserId", tostring(s5.UserId), "#6ec1ff"), true)
    B__1:AddLabel(BR("Executor", BV .. "  " .. B0, BO), true)
    B__1:AddDivider()
    Label3 = B__1:AddLabel(BR("Session", BQ(), BM), true)
    B__1:AddDivider()
    B__1:AddButton({
        Text = "Copy Username",
        Func = function()
            s7(s5.Name, "Copied username")
        end
    })
    B__1:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            s7("https://www.roblox.com/users/" .. tostring(s5.UserId) .. "/profile", "Copied profile link")
        end
    })
    local B__2 = su.Info:AddRightGroupbox("Session", "signal")
    B__2:AddDivider("Server")
    B__2:AddLabel(BR("Game", sL, "#6ec1ff"), true)
    Label2 = B__2:AddLabel(BR("Players", "0/0", BO), true)
    BW = tostring(game.JobId)
    local BZ = #BW > 18 and string.sub(BW, 1, 18) .. "..."
    local B0_1 = BZ or BW
    B__2:AddLabel(BR("Job", B0_1, BY), true)
    Label = B__2:AddLabel(BR("Ping", "0 ms", BM), true)
    B__2:AddDivider()
    B__2:AddButton({
        Text = "Rejoin Server",
        Func = function()
            tb:Teleport(game.PlaceId, s5)
        end
    })
    B__2:AddButton({
        Text = "Copy Job ID",
        Func = function()
            s7(BW, "Copied Job ID")
        end
    })
    task.spawn(function()
        local BJ_1
        local BI_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(BR("Session", BQ(), BM))
            Label2:SetText(BR("Players", #si:GetPlayers() .. "/" .. tostring(si.MaxPlayers), BO))
            BI_1, BJ_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local BI_2 = BI_1 and BJ_1 .. " ms" or "n/a"
            Label:SetText(BR("Ping", BI_2, BM))
        end
    end)
    local SocialsGroup = su.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = sZ })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            s7(sC, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            s7(sw, "Copied website link")
        end
    })
end
En_5 = function()
    local connection
    local MovementGroup = su.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = su.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    tl(tL.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = s5.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local B2_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if B2_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    tl(tE.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Ca_1 = s0()
            if Ca_1 then
                Ca_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local lE = Workspace.CurrentCamera
    tl(tL.RenderStepped:Connect(function(lF)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Cf_1 = s0()
            if Cf_1 then
                Cf_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Cf_3 = s8()
            local Cg = s0()
            if Cf_3 and Cg then
                Cg.PlatformStand = true
                local Cg_1 = Vector3.zero
                local Ch_1 = Workspace.CurrentCamera
                local Cl = if Ch_1 then 1 else 0
                local Cj = 1047 * Cl + 3950 * (1 - Cl)
                local Ck = 2591 * Cl + 2871 * (1 - Cl)
                if not ((Cj * 247 + Ck * 3825 + Cj * Ck) % 16777213 == 12881961) then
                    Ch_1 = lE
                end
                lE = Ch_1
                if tE:IsKeyDown(Enum.KeyCode.W) then
                    Cg_1 += lE.CFrame.LookVector
                end
                if tE:IsKeyDown(Enum.KeyCode.S) then
                    Cg_1 -= lE.CFrame.LookVector
                end
                if tE:IsKeyDown(Enum.KeyCode.A) then
                    Cg_1 -= lE.CFrame.RightVector
                end
                if tE:IsKeyDown(Enum.KeyCode.D) then
                    Cg_1 += lE.CFrame.RightVector
                end
                if tE:IsKeyDown(Enum.KeyCode.Space) then
                    Cg_1 += Vector3.new(0, 1, 0)
                end
                if tE:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Cg_1 -= Vector3.new(0, 1, 0)
                end
                Cf_3.AssemblyLinearVelocity = Vector3.zero
                if Cg_1.Magnitude > 0 then
                    Cf_3.CFrame = Cf_3.CFrame + Cg_1.Unit * Options.FlySpeed.Value * lF
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Cp = s0()
            if Cp then
                Cp.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Cr = s0()
            if Cr then
                Cr.WalkSpeed = 16
            end
        end
    end)
    local function l1(l2)
        if not l2:IsA("ProximityPrompt") then
            return
        end
        l2.HoldDuration = 0
        l2.MaxActivationDistance = 50
        l2.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(l1, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(ma)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(l1, ma)
                end
            end)
            tl(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
local function t6()
    local MenuGroup = su.Settings:AddLeftGroupbox("Menu", "logs")
    local mi = 0
    local mj = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function ml()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        tx:CaptureController()
        tx:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        mi += 1
        mj = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. mi)
        end)
    end
    local connection2 = s5.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(ml)
        end
    end)
    tl(connection2)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local CG = Toggles.AntiAfk.Value and tick() - mj >= 60
            if CG then
                pcall(ml)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local function mJ(mK)
        pcall(function()
            th:SetGameplayPausedNotificationEnabled(not mK)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = tn:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not mK
            end
        end)
        if not mK then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(s5, "GameplayPaused", false)
            else
                s5.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        mJ(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                mJ(true)
            end
        end
    end)
    local m0 = false
    local function m1()
        local JobId, PlaceId
        if m0 then
            return
        end
        m0 = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local CS = pcall(function()
            tb:TeleportToPlaceInstance(PlaceId, JobId, s5)
        end)
        if not CS then
            pcall(function()
                tb:Teleport(PlaceId, s5)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = tn:WaitForChild("RobloxPromptGui", 30)
        local CX = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not CX then
            return
        end
        tl(CX.ChildAdded:Connect(function(nk)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and nk.Name == "ErrorPrompt" then
                m1()
            end
        end))
    end)
    tl(tb.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            m0 = false
            m1()
        end
    end))
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            tL:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local nA = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function nB(nC)
        if nA[nC.ClassName] then
            pcall(function()
                nC.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                s6.GlobalShadows = false
            end)
            pcall(function()
                s6.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(nB, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(nR)
                if Toggles.FpsBoost.Value then
                    pcall(nB, nR)
                end
            end)
            tl(connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                s6.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = su.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        mJ(false)
        pcall(function()
            tL:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        for k, v in tR do
            local Dr = v
            pcall(function()
                Dr:Disconnect()
            end)
        end
        table.clear(tR)
        local Dh = s8()
        if Dh then
            Dh.Anchored = false
        end
        local Dh_1 = s0()
        if Dh_1 then
            Dh_1.PlatformStand = false
            Dh_1.WalkSpeed = 16
        end
        if getgenv then
            getgenv().__OuroborosHatchAndFryLib = nil
        end
    end)
end
local function uf(od)
    local function oe(of, og)
        local Dt_1 = (of == "Toggle" and Toggles or Options)[og]
        local Ds_2 = type(Dt_1) == "table" and Dt_1.Type == of
        return Ds_2 and Dt_1 or nil
    end
    local function op(oq, ot)
        local Type = ot.Type
        if Type == "Toggle" then
            return { idx = oq, type = "Toggle", value = ot.Value == true }
        elseif Type == "Slider" then
            return { idx = oq, type = "Slider", value = tostring(ot.Value) }
        elseif Type == "Dropdown" then
            return { idx = oq, type = "Dropdown", multi = ot.Multi == true, value = ot.Value }
        elseif Type == "Input" then
            local Dx = ot.Value
            local DB = if Dx then 1 else 0
            local Dz = 499 * DB + 3690 * (1 - DB)
            local DA = 772 * DB + 3096 * (1 - DB)
            if not ((Dz * 28 + DA * 2239 + Dz * DA) % 16777213 == 2127708) then
                Dx = ""
            end
            return { idx = oq, type = "Input", text = tostring(Dx) }
        elseif Type == "ColorPicker" then
            return { idx = oq, type = "ColorPicker", value = ot.Value:ToHex(), transparency = ot.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = oq,
                type = "KeyPicker",
                mode = ot.Mode,
                key = ot.Value,
                modifiers = ot.Modifiers,
                toggled = ot.Toggled
            }
        else
            return nil
        end
    end
    local function ov()
        local DD = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local DE = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if DE then
                    local DE_1 = op(k, v)
                    if DE_1 then
                        DD[#DD + 1] = DE_1
                    end
                end
            end
        end
        table.sort(DD, function(oF, oG)
            if oF.type ~= oG.type then
                return oF.type < oG.type
            end
            return oF.idx < oG.idx
        end)
        return { objects = DD }
    end
    local function oH(oI)
        local DX
        DX = nil
        local DY = type(oI) ~= "table"
        local D1 = if DY then 1 else 0
        local D_ = 3947 * D1 + 2603 * (1 - D1)
        local D0 = 2 * D1 + 3798 * (1 - D1)
        if not ((D_ * 1171 + D0 * 2882 + D_ * D0) % 16777213 == 4635595) then
            DY = type(oI.idx) ~= "string"
        end
        if not DY then
            DY = type(oI.type) ~= "string"
        end
        if not DY then
            DY = SaveManager.Ignore[oI.idx]
        end
        if DY then
            return false
        end
        DX = oe(oI.type, oI.idx)
        if not DX then
            return false
        end
        local DY_1 = pcall(function()
            if oI.type == "Input" then
                if type(oI.text) ~= "string" then
                    return
                end
                DX:SetValue(oI.text)
            elseif oI.type == "ColorPicker" then
                DX:SetValueRGB(Color3.fromHex(oI.value), oI.transparency)
            elseif oI.type == "KeyPicker" then
                DX:SetValue({ oI.key, oI.mode, oI.modifiers })
                if oI.mode == "Toggle" and oI.toggled ~= nil then
                    DX.Toggled = oI.toggled
                    DX:Update()
                end
            else
                DX:SetValue(oI.value)
            end
        end)
        return DY_1
    end
    od:AddDivider()
    od:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    od:AddButton("Export Config to Clipboard", function()
        local D3_1
        local D2_1
        D2_1, D3_1 = pcall(ts.JSONEncode, ts, ov())
        if not D2_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local D2_2 = setclipboard or toclipboard
        local D2_3 = type(D2_2) ~= "function" or not pcall(D2_2, D3_1)
        if D2_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    od:AddButton("Import Config from Clipboard Text", function()
        local D8_1
        local D6 = Options.SaveManager_ImportSource.Value or ""
        local D6_1
        local D7 = tostring(D6):match("^%s*(.-)%s*$")
        if D7 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        D6_1, D8_1 = pcall(ts.JSONDecode, ts, D7)
        local D7_1 = not D6_1 or type(D8_1) ~= "table"
        local Ec = if D7_1 then 1 else 0
        local Ea = 2867 * Ec + 932 * (1 - Ec)
        local Eb = 806 * Ec + 2558 * (1 - Ec)
        if not ((Ea * 1216 + Eb * 811 + Ea * Eb) % 16777213 == 6450740) then
            D7_1 = type(D8_1.objects) ~= "table"
        end
        if D7_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local D6_2 = 0
        for i, v in ipairs(D8_1.objects) do
            if oH(v) then
                D6_2 += 1
            end
        end
        if D6_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local D8_2 = D6_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(D6_2, D8_2), 6)
    end)
end
t5()
En_5()
t6()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(su.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/HatchAndFry")
t4 = SaveManager:BuildConfigSection(su.Settings)
uf(t4)
SaveManager:LoadAutoloadConfig()
if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
    Library:Toggle(false)
end
