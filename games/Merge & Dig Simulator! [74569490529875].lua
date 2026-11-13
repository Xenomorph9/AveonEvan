local AT_7, AT_8, AT_10, AT_17, AT_19, AT_21, AT_24, AT_33, AT_34
local rd
local qj
local rI
local qI
local rp
local qp
local Workspace
local rv
local qv
local qU
local rB
local qB
local q_
local rH
local ro
local qo
local q5
local qN
local qu
local rb
local rA
local qA
local rG
local qG
local rn
local qM
local DuelPower
local qz
local rg
local qg
local qY
local rF
local qF
local rm
local qm
local q3
local rs
local qs
local q9
local qR
local ry
local qy
local qX
local qE
local rl
local ql
local qK
local rr
local q8
local p8
local qQ
local rx
local re
local rD
local qD
local rk
local Toggles
local qq
local q7
local p7
local qP
local function fn7(c7)
    local EnemyZones = Workspace:FindFirstChild("EnemyZones")
    local tS = EnemyZones and EnemyZones:FindFirstChild(tostring(c7))
    if not tS then
        return nil
    elseif tS:IsA("BasePart") then
        return tS
    else
        return tS:FindFirstChildWhichIsA("BasePart", true)
    end
end
local function fn9()
    local xi = qo()
    local xi_1
    if not xi then
        return false
    end
    local xj = tonumber(xi.Rebirth) or 0
    local xj_3
    local xj_1 = qj.REBIRTH[xj + 1]
    local xk_1 = not xj_1
    local xp = if xk_1 then 1 else 0
    local xn = 3458 * xp + 650 * (1 - xp)
    local xo = 1163 * xp + 4056 * (1 - xp)
    if not ((xn * 3218 + xo * 632 + xn * xo) % 16777213 == 15884514) then
        xk_1 = type(xj_1.Cost) ~= "table"
    end
    if xk_1 then
        return false
    end
    local xk_2 = tonumber(xj_1.Cost.Cash) or 0
    if rG(xi) < xk_2 then
        return false
    end
    xi_1, xj_3 = pcall(function()
        return qQ:Rebirth()
    end)
    return xi_1 and xj_3 == true
end
local function fn71()
    return rl
end
local function fn87()
    table.clear(rb)
    qy()
    qY()
end
local function fn117()
    if rm("AutoDig") then
        qX()
    end
end
local function fn119()
    local Character = q3.Character
    local s8 = Character and Character:FindFirstChildOfClass("Humanoid")
    return s8
end
local function fn164(bU)
    if qv.Unloaded then
        return false
    end
    local s4 = Toggles[bU]
    return s4 ~= nil and s4.Value == true
end
local function fn168(a3, a4)
    return a3.value < a4.value
end
local function fn182(h7)
    local DiscordGroup = h7:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = rA })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = rA })
end
local function fn186()
    return ry[qG.DigStage and qG.DigStage.Value]
end
local function fn218()
    local uC_1, uC_2
    local uB_1, uB_2
    if q3:GetAttribute(rH.ATTRIBUTE) then
        uB_1, uC_1 = pcall(function()
            return qE:Exit()
        end)
        return uB_1 and uC_1 ~= false
    end
    uB_2, uC_2 = pcall(function()
        return qM:WarpToLocation("DigStart")
    end)
    return uB_2 and uC_2 ~= false
end
local function fn242()
    rd.ZoneCleared:Connect(function(im)
        if qv.Unloaded then
            return
        end
        qR(im)
    end)
end
local function fn244(aC, aD)
    return aC.order < aD.order
end
local function fn282()
    local ve = p7.GetGrid(q3)
    if not ve then
        return
    end
    for i, child in ve:GetChildren() do
        rp(child.Name)
    end
end
local function fn299()
    rv()
end
local function fn316()
    local Character = q3.Character
    local tb = Character and Character:FindFirstChild("HumanoidRootPart")
    return tb
end
local function fn331()
    qI = nil
    qF = 0
    qA = false
end
local function fn335()
    if rm("AutoDig") then
        qX()
        if not q3:GetAttribute("AutoRun") then
            pcall(function()
                rx:Start()
            end)
        end
    elseif q3:GetAttribute("AutoRun") then
        pcall(function()
            rx:Stop()
        end)
    end
end
local function fn336()
    local uK_1
    local uJ_1
    if qA then
        if q3:GetAttribute("InSpawn") ~= false then
            qA = false
            qy()
        elseif tick() - q5 > 8 then
            qA = false
        end
        return false
    elseif q3:GetAttribute("InSpawn") ~= false then
        qy()
        return false
    elseif tick() - q5 < 5 then
        return false
    else
        uK_1, uJ_1 = qK()
        if type(uK_1) ~= "number" then
            return false
        end
        local uL = rr()
        if not uL then
            return false
        end
        local uM = qp[uL] or DuelPower.RecommendedDamage(uL)
        local uM_1 = (tonumber(uL))
        local uS = if uM_1 then 1 else 0
        local uQ = 3100 * uS + 1876 * (1 - uS)
        local uR = 2939 * uS + 2571 * (1 - uS)
        if not ((uQ * 1622 + uR * 3314 + uQ * uR) % 16777213 == 7101733) then
            uM_1 = 0
        end
        local uL_1 = uM_1
        local uM_2 = tonumber(uJ_1) or 0
        local uJ_2 = false
        local uM_3 = type(uM) == "number" and uM >= uK_1
        if uM_3 then
            uJ_2 = true
        else
            if uM_2 > 0 and uL_1 >= uM_2 then
                uJ_2 = true
            end
        end
        if not uJ_2 then
            return false
        end
        local uV = if qm() then 1 else 0
        if uV == 1 then
            q5 = tick()
            qA = true
            return true
        end
        return false
    end
end
local function worker2()
    while not qv.Unloaded do
        local zk = false
        if rm("AutoDig") then
            rv()
        end
        local zl = rm("AutoLeave") and rn()
        if zl then
            zk = true
        end
        local zl_1 = rm("AutoBuyPickaxe") and q8()
        if zl_1 then
            zk = true
        end
        local zl_2 = rm("AutoMerge") and rI()
        if zl_2 then
            zk = true
        end
        local zl_3 = rm("AutoEquipBest") and rs()
        if zl_3 then
            zk = true
        end
        local zl_4 = rm("AutoGiftBox") and qP()
        if zl_4 then
            zk = true
        end
        local zl_5 = rm("AutoBuyPickaxe") or rm("AutoMerge") or rm("AutoGiftBox") or rm("AutoEquipBest")
        if zl_5 then
            if ro:IsMergeActive() then
                pcall(rD)
            end
        end
        local zl_6 = rm("AutoBuyAura") and qD()
        if zl_6 then
            zk = true
        end
        local zl_7 = rm("AutoBuyUpgrades") and re()
        if zl_7 then
            zk = true
        end
        local zl_8 = rm("AutoBuyEgg") and q9()
        if zl_8 then
            zk = true
        end
        local zl_9 = rm("AutoRebirth") and rg()
        if zl_9 then
            zk = true
        end
        local wait = task.wait
        local zk_1 = zk and 0.35 or 0.5
        wait(zk_1)
    end
end
local function worker()
    while qv and not qv.Unloaded do
        qq()
        task.wait(1)
    end
end
local function fn467(aQ, aR)
    return aQ.cost < aR.cost
end
local function fn480()
    local uy = qG.LeaveDamage and qG.LeaveDamage.Value
    return qu[uy], ql[uy]
end
local function fn497(bF, bG)
    return string.format('<font color="%s">%s</font>', bG, bF)
end
local function fn504(bN, bO)
    if setclipboard then
        setclipboard(bN)
    elseif toclipboard then
        toclipboard(bN)
    end
    qv:Notify(bO)
end
local function fn554()
    local we_1
    local wd_1
    if tick() - q_ < 2 then
        return false
    end
    local wk = if tick() < qN then 1 else 0
    if wk == 1 then
        return false
    end
    wd_1, we_1 = pcall(function()
        return q7:EquipBest()
    end)
    if wd_1 and we_1 == true then
        q_ = tick()
        qN = tick() + 0.35
        task.defer(rD)
        return true
    end
    return false
end
local function fn656()
    local uq = qg()
    if uq then
        qR(uq)
    end
    local ur = qF > 0
    if ur then
        local us = not uq
        if not us then
            local ut = (tonumber(uq))
            local ux = if ut then 1 else 0
            local uv = 236 * ux + 387 * (1 - ux)
            local uw = 2394 * ux + 1074 * (1 - ux)
            if not ((uv * 2010 + uw * 862 + uv * uw) % 16777213 == 3102972) then
                ut = 0
            end
            us = qF >= ut
        end
        ur = us
    end
    if ur then
        return qI
    end
    return uq
end
local function fn662()
    local te_1
    local td_1
    td_1, te_1 = pcall(function()
        return rB:GetPlayerData()
    end)
    local tf = td_1 and type(te_1) == "table"
    if tf then
        return te_1
    end
    return nil
end
local function fn677(aj, ak)
    return aj.order < ak.order
end
local function fn706(eE)
    local u0 = qo()
    local u1 = p7.GetGridCell(q3, tostring(eE))
    if not u1 then
        return
    end
    local u2 = rF(u0, tostring(eE))
    local u0_1 = type(u2) == "table" and u2.type
    local u3 = u0_1 or nil
    local u3_1 = u3 == "Gift"
    if not u3_1 then
        local u4_1 = type(u2) == "table" and u2.itemCategory == "Gift"
        u3_1 = u4_1
    end
    local u2_1 = false
    local u4_2 = u3_1
    for i, child in u1:GetChildren() do
        if child:IsA("Model") then
            local u1_1 = child:HasTag("Gift") or child.Name == "Gift"
            local u3_2 = false
            if u4_2 then
                u3_2 = u1_1 and not u2_1
            elseif type(u3) == "string" then
                u3_2 = child.Name == u3 and not u2_1
            end
            if u3_2 then
                u2_1 = true
            else
                child:Destroy()
            end
        end
    end
end
local function fn801(as, at)
    return as.cost < at.cost
end
local function fn814(bI, bJ, bK)
    return string.format("<b>%s</b> %s %s", bI, qB("-", "#5a6070"), qB(bJ, bK))
end
local function fn897()
    if q3:GetAttribute("InSpawn") then
        qy()
    end
end
local function fn925()
    local vm = qo()
    local vm_1
    if not vm then
        return false
    elseif tick() < qN then
        return false
    else
        local vn = qG.BuyPickaxe and qG.BuyPickaxe.Value
        local vn_4
        local vn_1 = rk[vn]
        if type(vn_1) ~= "number" then
            return false
        end
        local vp = vm.Upgrades and vm.Upgrades.WeaponLevel or 1
        if vp > vn_1 then
            return false
        end
        local vn_2 = qz.GetByTier(vp)
        if not vn_2 then
            return false
        end
        local vo_3 = (tonumber(vn_2.cost))
        local vw = if vo_3 then 1 else 0
        local vu = 580 * vw + 3756 * (1 - vw)
        local vv = 547 * vw + 2551 * (1 - vw)
        if not ((vu * 565 + vv * 1003 + vu * vv) % 16777213 == 1193601) then
            vo_3 = 0
        end
        local vn_3 = vo_3
        local vo_4 = not vm.TutorialFinished
        if vo_4 ~= false then
            vo_4 = not vm.FreePickaxeUsed
        end
        local vo_5 = not vo_4
        if vo_5 ~= false then
            vo_5 = rG(vm) < vn_3
        end
        if vo_5 then
            return false
        end
        if ro:IsMergeActive() then
            vm_1, vn_4 = pcall(function()
                return ro:Buy()
            end)
        else
            vm_1, vn_4 = pcall(function()
                return q7:Buy()
            end)
        end
        if vm_1 and vn_4 == true then
            qN = tick() + 0.35
            task.defer(rD)
            return true
        end
        return false
    end
end
local function fn932()
    return qY()
end
local function fn947(cd)
    local th = cd or qo()
    cd = th
    if not cd then
        return 0
    end
    local Currencies = cd.Currencies
    local ti = Currencies and tonumber(Currencies.Cash)
    return ti or 0
end
local function fn948()
    p8(qs, "Copied Discord invite to clipboard")
end
local function fn972(dc)
    local tX = tonumber(dc)
    if not tX then
        return
    end
    if tX > qF then
        qF = tX
        qI = tostring(dc)
    end
end
local function fn999(ez, eA)
    local uW = not ez or type(ez.Plot) ~= "table"
    if uW then
        return nil
    end
    local uW_1 = ez.Plot[eA]
    if uW_1 == nil then
        uW_1 = ez.Plot[tonumber(eA)]
    end
    return uW_1
end
p7 = nil
p8 = nil
DuelPower = nil
qg = nil
qj = nil
ql = nil
qm = nil
qo = nil
qp = nil
qq = nil
qs = nil
qu = nil
qv = nil
qy = nil
qz = nil
qA = nil
qB = nil
qD = nil
qE = nil
qF = nil
qG = nil
qI = nil
Toggles = nil
qK = nil
local qL
qM = nil
qN = nil
qP = nil
qQ = nil
qR = nil
local p5, p6, p9, qb, UpgradeConfig, qd, qe, qf, qh, qi, qk, qn, qr, MapsConfig, qw, qx, qC, qH, SaveManager, qS
qU = nil
qX = nil
qY = nil
q_ = nil
q3 = nil
q5 = nil
Workspace = nil
q7 = nil
q8 = nil
q9 = nil
rb = nil
rd = nil
re = nil
rg = nil
rk = nil
rl = nil
rm = nil
rn = nil
ro = nil
rp = nil
rr = nil
rs = nil
rv = nil
rx = nil
ry = nil
rA = nil
rB = nil
rD = nil
rF = nil
local ThemeManager, qV, qW, qZ, q0, q1, q2, q4, ra, rc, rf, rh, ri, rj, rq, rt, ru, rw, rz, rC, rE
rG = nil
rH = nil
rI = nil
p5, AT_17, rC, rz, rw, rt, rl, rh, rc, Workspace, q3, q0, qU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local AT_31 = 2
repeat
    AT_7 = (AT_31 * 1 + 3) % 5 + 1
    if AT_7 <= 3 then
        if AT_7 <= 2 then
            if AT_7 <= 1 then
                local Cc = bit32.rrotate(bit32.bxor(bit32.lrotate(AT_31, 3), string.byte(tostring(q3))), 8)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Cc, 928694305), 28), 326478850) == bit32.lrotate(Cc, 28) then
                    p5 = game:GetService("Players")
                else
                    rz = game:GetService("Players")
                end
                AT_31 = (AT_31 + 1) % 20
            else
                AT_33 = (vector.create((AT_31 * 2 + 5) % 11 + 1, (AT_31 * 2 + 1) % 13 + 1, (AT_31 * 3 + 9) % 17 + 1))
                AT_19 = (vector.create((AT_31 * 1 + 4) % 11 + 1, (AT_31 * 8 + 10) % 13 + 1, (AT_31 * 4 + 15) % 17 + 1))
                AT_8 = (vector.create((AT_31 * 2 + 9) % 11 + 1, (AT_31 * 4 + 11) % 13 + 1, (AT_31 * 8 + 1) % 17 + 1))
                if vector.dot(vector.cross(AT_33, AT_19), AT_8) == vector.dot(vector.cross(AT_19, AT_8), AT_33) then
                    AT_17 = game:GetService("ReplicatedStorage")
                    rC = game:GetService("RunService")
                    rz = game:GetService("UserInputService")
                else
                    rz = game:GetService("ReplicatedStorage")
                    AT_17 = game:GetService("RunService")
                    rC = game:GetService("UserInputService")
                end
                AT_31 = (AT_31 + 16) % 20
            end
        else
            AT_33 = {
                "ggmrsemksrxe",
                "jzoyooahpxqm",
                "hoksai",
                "vjsrxenok",
                "wqgsqvbt",
                "wmifzgkl",
                "erucpfnzo",
                "msaewpvzv",
                "iyk",
                "yjyyy",
                "uaxe"
            }
            if AT_33[(AT_31 * 1 + 4) % 11 + 1] < AT_33[(AT_31 * 1 + 4) % 11 + 1] then
                rl = game:GetService("VirtualUser")
                rh = game:GetService("HttpService")
                rc = game:GetService("CoreGui")
                rt = game:GetService("GuiService")
                rw = game:GetService("TeleportService")
            else
                rw = game:GetService("VirtualUser")
                rt = game:GetService("HttpService")
                rl = game:GetService("CoreGui")
                rh = game:GetService("GuiService")
                rc = game:GetService("TeleportService")
            end
            AT_31 = (AT_31 + 16) % 20
        end
    elseif AT_7 <= 4 then
        if AT_31 * 26314895 + 12 + 5 >= AT_31 * 26314895 + 12 + 5 + 1 then
            p5 = game:GetService("Workspace")
            q0 = Workspace.LocalPlayer
            q3 = q0:WaitForChild("PlayerGui")
        else
            Workspace = game:GetService("Workspace")
            q3 = p5.LocalPlayer
            q0 = q3:WaitForChild("PlayerGui")
        end
        AT_31 = (AT_31 + 11) % 20
    else
        AT_7 = {
            "bamlnv",
            "hpoi",
            "wmtzedxr",
            "tokpjjnyq",
            "jttv",
            "cpdxxnwzmzo",
            "vrorycaican",
            "ols",
            "zgxtdws",
            "chyzftamzm",
            "qltqnop",
            "jvtixce"
        }
        local Ch = AT_31
        AT_33 = AT_7[Ch % 12 + 1]
        if AT_33:len() >= AT_33:reverse():rep(Ch % 3 + 2):len() then
            rw = fn71
        else
            qU = fn71
        end
        AT_31 = (AT_31 + 6) % 20
    end
until (AT_31 * 13 + 8) % 20 == 4
if getgenv then
    qL, AT_7 = nil, nil
    AT_31 = 10
    repeat
        AT_33 = (AT_31 * 1 + 1) % 2 + 1
        if AT_33 <= 1 then
            AT_33 = (vector.create((AT_31 * 7 + 8) % 11 + 1, (AT_31 * 7 + 1) % 13 + 1, (AT_31 * 3 + 13) % 17 + 1))
            AT_19 = (vector.create((AT_31 * 2 + 2) % 11 + 1, (AT_31 * 8 + 10) % 13 + 1, (AT_31 * 15 + 8) % 17 + 1))
            AT_8 = (vector.create((AT_31 * 4 + 7) % 5 + 1, (AT_31 * 5 + 7) % 7 + 1, (AT_31 * 4 + 7) % 9 + 1))
            if math.abs((vector.angle(AT_33, AT_19, AT_8))) - math.abs((vector.angle(AT_19, AT_33, AT_8))) == 2 then
                qL = AT_7
            else
                AT_7 = qL
            end
            AT_31 = (AT_31 + 7) % 16
        else
            if (AT_31 * 3 + 1) * 9 % 4 == ((AT_31 * 3 + 1) * 9 + 9) % 4 then
                getgenv().gethui = qL
                qU = getgenv().__OuroborosMergeDigSimLib
            else
                getgenv().gethui = qU
                qL = getgenv().__OuroborosMergeDigSimLib
            end
            AT_31 = (AT_31 + 5) % 16
        end
    until (AT_31 * 7 + 5) % 16 == 15
    if AT_7 then
        AT_7 = qL.Unload
    end
    if AT_7 then
        pcall(function()
            qL:Unload()
        end)
    end
end
pcall(function()
    gethui = qU
end)
if setthreadidentity then
    setthreadidentity(8)
end
qw, qs, qn, qi, qe, qb, p9, p6, rE, AT_7, rB, rx, ru, ro, ri, rd, q7, q4, q1, qW, qQ, qM, qH, qE, qz, qx, MapsConfig, AT_33, qj, AT_19, UpgradeConfig, DuelPower, p7, rH, AT_8, AT_34, ry = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
AT_31 = 125
repeat
    AT_21 = (AT_31 * 5 + 5) % 16 + 1
    if AT_21 <= 8 then
        if AT_21 <= 4 then
            if AT_21 <= 2 then
                if AT_21 <= 1 then
                    if AT_31 * 66185585 + 13 + 7 >= AT_31 * 66185585 + 13 + 7 + 6 then
                        AT_7 = qQ.GetService("SkinService")
                        qW = qQ.GetService("RebirthService")
                    else
                        qW = AT_7.GetService("SkinService")
                        qQ = AT_7.GetService("RebirthService")
                    end
                    AT_31 = (AT_31 + 93) % 128
                else
                    local Bo = bit32.rrotate(bit32.bxor(bit32.lrotate(AT_31, 10), string.byte(tostring(MapsConfig))), 10)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Bo, 1993515946), 28), 2808949306) == bit32.lrotate(Bo, 28) then
                        qM = AT_7.GetService("WarpService")
                        qH = AT_7.GetService("UpgradesService")
                    else
                        AT_7 = qH.GetService("WarpService")
                        qM = qH.GetService("UpgradesService")
                    end
                    AT_31 = (AT_31 + 29) % 128
                end
            elseif AT_21 <= 3 then
                if AT_31 * 98812315 + 3 + 6 <= AT_31 * 98812315 + 3 + 6 + 1 then
                    qE = AT_7.GetService("GoldenBlockService")
                    qz = require(AT_17.Configs.WeaponsConfig)
                    qx = require(AT_17.Configs.EggsConfig)
                    MapsConfig = require(AT_17.Configs.MapsConfig)
                else
                    qx = MapsConfig.GetService("GoldenBlockService")
                    AT_17 = require(qE.Configs.WeaponsConfig)
                    qz = require(qE.Configs.EggsConfig)
                    AT_7 = require(qE.Configs.MapsConfig)
                end
                AT_31 = (AT_31 + 29) % 128
            else
                if (AT_31 * 3 + 4) * 17 % 4 == ((AT_31 * 3 + 4) * 17 + 8) % 4 then
                    AT_33 = require(AT_17.Configs.PlayerSkinConfig)
                    qj = require(AT_17.Configs.RebirthConfig)
                    AT_19 = require(AT_17.Configs.BlocksConfig)
                    UpgradeConfig = require(AT_17.Configs.UpgradeConfig)
                else
                    AT_17 = require(UpgradeConfig.Configs.PlayerSkinConfig)
                    AT_33 = require(UpgradeConfig.Configs.RebirthConfig)
                    qj = require(UpgradeConfig.Configs.BlocksConfig)
                    AT_19 = require(UpgradeConfig.Configs.UpgradeConfig)
                end
                AT_31 = (AT_31 + 13) % 128
            end
        elseif AT_21 <= 6 then
            if AT_21 <= 5 then
                AT_10 = (vector.create((AT_31 * 7 + 1) % 11 + 1, (AT_31 * 6 + 12) % 13 + 1, (AT_31 * 2 + 2) % 17 + 1))
                local Bd = vector.floor(AT_10) + vector.ceil(AT_10 * -1)
                if vector.dot(Bd, Bd) == 0 then
                    DuelPower = require(AT_17.GameShared.DuelPower)
                    p7 = require(AT_17.GameShared.PlotUtils)
                    rH = require(AT_17.GameShared.GoldenBlockUtils)
                    AT_8 = require(AT_17.Shared.AbbreviationUtils)
                    AT_34 = {}
                else
                    AT_8 = require(DuelPower.GameShared.DuelPower)
                    AT_17 = require(DuelPower.GameShared.PlotUtils)
                    AT_34 = require(DuelPower.GameShared.GoldenBlockUtils)
                    p7 = require(DuelPower.Shared.AbbreviationUtils)
                    rH = {}
                end
                AT_31 = (AT_31 + 61) % 128
            else
                if (AT_31 * 2 + 1) * 13 % 3 == ((AT_31 * 2 + 1) * 13 + 2) % 3 then
                    qe = {}
                else
                    ry = {}
                end
                AT_31 = (AT_31 + 77) % 128
            end
        elseif AT_21 <= 7 then
            local BX = bit32.rrotate(bit32.bxor(bit32.lrotate(AT_31, 13), string.byte(tostring(q4))), 16)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BX, 3405450683), 379959010), (bit32.bxor(bit32.band(BX, 889516612), 168356682))), 379959010), 168356682) ~= BX then
                qs = "Merge & Dig Simulator!"
                qw = "https://discord.gg/ehKVq7pf7v"
            else
                qw = "Merge & Dig Simulator!"
                qs = "https://discord.gg/ehKVq7pf7v"
            end
            AT_31 = (AT_31 + 93) % 128
        else
            local BT = bit32.rrotate(bit32.bxor(bit32.lrotate(AT_31, 19), string.byte(tostring(qj))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BT, 3508326407), 2934083596), (bit32.bxor(bit32.band(BT, 786640888), 4232287197))), 2934083596), 4232287197) ~= BT then
                qW = "https://rscripts.net/@Ouroboros"
            else
                qn = "https://rscripts.net/@Ouroboros"
            end
            AT_31 = (AT_31 + 93) % 128
        end
    elseif AT_21 <= 12 then
        if AT_21 <= 10 then
            if AT_21 <= 9 then
                if (AT_31 * 1 + 6) * 21 % 4 == ((AT_31 * 1 + 6) * 21 + 12) % 4 then
                    qi = "https://ouroboros-hub-rbx.web.app/"
                else
                    qM = "https://ouroboros-hub-rbx.web.app/"
                end
                AT_31 = (AT_31 + 61) % 128
            else
                if (AT_31 * 2 + 9) * 13 % 3 == ((AT_31 * 2 + 9) * 13 + 1) % 3 then
                    ri = "#7fd47f"
                else
                    qe = "#7fd47f"
                end
                AT_31 = (AT_31 + 125) % 128
            end
        elseif AT_21 <= 11 then
            AT_10 = {
                "wyvijb",
                "xswme",
                "qplsexaied",
                "ttdm",
                "twcb",
                "icpn",
                "ztcyjjznq",
                "llxim",
                "sscdnx",
                "pwlwv",
                "smziro"
            }
            local BW = AT_31
            local AT_1_1 = AT_10[BW % 11 + 1]
            if AT_1_1:len() >= AT_1_1:gsub("(.)", "%1%1", BW % 3 % 2 + 1):len() then
                rE = "#6ec1ff"
                qb = "#e8a34d"
                p9 = "#8b93a3"
                p6 = "#e05a5a"
            else
                qb = "#6ec1ff"
                p9 = "#e8a34d"
                p6 = "#8b93a3"
                rE = "#e05a5a"
            end
            AT_31 = (AT_31 + 61) % 128
        else
            if AT_31 * 52514023 + 4 + 5 <= AT_31 * 52514023 + 4 + 5 + 3 then
                AT_7 = require(AT_17:WaitForChild("Packages"):WaitForChild("Knit"))
            else
                AT_17 = require(AT_7:WaitForChild("Packages"):WaitForChild("Knit"))
            end
            AT_31 = (AT_31 + 125) % 128
        end
    elseif AT_21 <= 14 then
        if AT_21 <= 13 then
            AT_10 = (vector.create((AT_31 * 1 + 6) % 11 + 1, (AT_31 * 3 + 11) % 13 + 1, (AT_31 * 11 + 7) % 17 + 1))
            local AT_1_2 = (vector.create((AT_31 * 2 + 7) % 11 + 1, (AT_31 * 2 + 3) % 13 + 1, (AT_31 * 10 + 7) % 17 + 1))
            AT_24 = (vector.create((AT_31 * 3 + 4) % 11 + 1, (AT_31 * 9 + 10) % 13 + 1, (AT_31 * 8 + 2) % 17 + 1))
            local AT_12 = (vector.create((AT_31 * 5 + 6) % 11 + 1, (AT_31 * 5 + 10) % 13 + 1, (AT_31 * 13 + 8) % 17 + 1))
            if vector.dot(vector.cross(AT_10, AT_1_2), (vector.cross(AT_24, AT_12))) == vector.dot(AT_10, AT_24) * vector.dot(AT_1_2, AT_12) - vector.dot(AT_10, AT_12) * vector.dot(AT_1_2, AT_24) then
                AT_7.OnStart():await()
                rB = AT_7.GetController("ReplicaController")
                rx = AT_7.GetController("AutorunController")
                ru = AT_7.GetController("ZoneController")
                ro = AT_7.GetController("MergeController")
            else
                ro.OnStart():await()
                ru = ro.GetController("ReplicaController")
                AT_7 = ro.GetController("AutorunController")
                rx = ro.GetController("ZoneController")
                rB = ro.GetController("MergeController")
            end
            AT_31 = (AT_31 + 109) % 128
        else
            if (not ry or not q4 or not qw and not q4 or (ry and qw or (qQ or qn))) and not (not ry or not q4 or not qw and not q4 or (ry and qw or (qQ or qn))) then
                AT_7 = rd.GetController("WindowController")
                ri = rd.GetController("EnemyController")
            else
                ri = AT_7.GetController("WindowController")
                rd = AT_7.GetController("EnemyController")
            end
            AT_31 = (AT_31 + 29) % 128
        end
    elseif AT_21 <= 15 then
        AT_21 = (vector.create((AT_31 * 7 + 5) % 11 + 1, (AT_31 * 1 + 8) % 13 + 1, (AT_31 * 15 + 13) % 17 + 1))
        AT_10 = (vector.create((AT_31 * 1 + 9) % 11 + 1, (AT_31 * 1 + 7) % 13 + 1, (AT_31 * 9 + 14) % 17 + 1))
        local AT_1_3 = (vector.create((AT_31 * 2 + 5) % 11 + 1, (AT_31 * 9 + 3) % 13 + 1, (AT_31 * 11 + 3) % 17 + 1))
        if vector.dot(vector.cross(AT_21, AT_10), AT_1_3) == vector.dot(vector.cross(AT_10, AT_1_3), AT_21) + 3 then
            AT_7 = q7.GetService("MergeService")
        else
            q7 = AT_7.GetService("MergeService")
        end
        AT_31 = (AT_31 + 29) % 128
    else
        local BV = bit32.rrotate(bit32.bxor(bit32.lrotate(AT_31, 15), string.byte(tostring(DuelPower))), 4)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BV, 240714647), 903917898), (bit32.bxor(bit32.band(BV, 4054252648), 2021843523))), 903917898), 2021843523) == BV then
            q4 = AT_7.GetService("BiomeService")
            q1 = AT_7.GetService("EggService")
        else
            q1 = q4.GetService("BiomeService")
            AT_7 = q4.GetService("EggService")
        end
        AT_31 = (AT_31 + 125) % 128
    end
until (AT_31 * 103 + 63) % 128 == 10
AT_21 = {}
for k, v in MapsConfig.CONFIG do
    AT_31 = #AT_21 + 1
    AT_17 = v.name
    AT_7 = v.order or 0
    AT_21[AT_31] = { id = k, name = AT_17, order = AT_7 }
end
table.sort(AT_21, fn677)
for k, v in AT_21 do
    AT_34[#AT_34 + 1] = v.name
    ry[v.name] = v.id
end
AT_31 = {}
AT_17 = {}
for k, v in qx do
    AT_7 = type(v) == "table" and type(v.Cost) == "table"
    if AT_7 then
        AT_7 = #AT_17 + 1
        AT_21 = tonumber(v.Cost.Amount) or 0
        AT_17[AT_7] = { name = k, cost = AT_21 }
    end
end
AT_10 = 2
repeat
    AT_7 = {
        "fhuxt",
        "zyguycwkpmsy",
        "zwyxaboypkzq",
        "zyvgafzvaq",
        "wwvhwugcjr",
        "oklrwk",
        "ivhvrbuco",
        "mhtohuaf",
        "xcsjywljdpr",
        "vqrkwcx",
        "kvrnkatxue",
        "idot",
        "tpqkbc",
        "pwxfxix",
        "rqlydbwtsu"
    }
    if AT_7[(AT_10 * 72 + 95) % 15 + 1] < AT_7[(AT_10 * 72 + 95) % 15 + 1] then
        table.sort(AT_17, fn801)
    else
        table.sort(AT_17, fn801)
    end
    AT_10 = (AT_10 + 6) % 8
until (AT_10 * 5 + 4) % 8 == 4
for k, v in AT_17 do
    AT_31[#AT_31 + 1] = v.name
end
qk, qf, qd = nil, nil, nil
AT_17 = 1
repeat
    AT_7 = {
        "sucarqmqcycc",
        "bujcndfq",
        "vscpwstwzda",
        "vqnbxxqm",
        "ddij",
        "ogrvygsrnnmu",
        "wxehvvcdu",
        "eef",
        "vty",
        "fcnvl",
        "cowppqjfo",
        "zte",
        "ridejeznzk",
        "ifupz",
        "zko"
    }
    if AT_7[(AT_17 * 76 + 56) % 15 + 1] <= AT_7[(AT_17 * 76 + 56) % 15 + 1] then
        qk = {}
        qf = {}
        qd = {}
    else
        qd = {}
        qk = {}
        qf = {}
    end
    AT_17 = (AT_17 + 1) % 8
until (AT_17 * 7 + 3) % 8 == 1
AT_7 = {}
for k, v in UpgradeConfig.Upgrades do
    AT_17 = #AT_7 + 1
    AT_21 = v.name or k
    AT_10 = tonumber(v.layoutOrder) or 0
    AT_7[AT_17] = { id = k, name = AT_21, order = AT_10 }
end
local AT_1_4 = 1
repeat
    AT_17 = { "fdws", "uyy", "ttccz", "phuo", "krqxs", "qkzd", "whtcgdxzwq" }
    local Cj = AT_1_4
    AT_21 = AT_17[Cj % 7 + 1]
    if AT_21:len() <= AT_21:reverse():rep(Cj % 3 + 2):len() then
        table.sort(AT_7, fn244)
    else
        table.sort(AT_7, fn244)
    end
    AT_1_4 = (AT_1_4 + 2) % 8
until (AT_1_4 * 7 + 7) % 8 == 4
for k, v in AT_7 do
    qk[#qk + 1] = v.name
    qf[v.name] = v.id
    qd[v.name] = true
end
rk = {}
AT_17 = {}
AT_7 = tonumber(qz.MAX_SHOP_TIER) or 50
AT_21 = AT_7
local sq = 1
local so = AT_21
while sq <= so do
    local sr = sq
    AT_7 = qz.GetByTier(sr)
    AT_21 = AT_7 and type(AT_7.name) == "string"
    if AT_21 then
        AT_17[#AT_17 + 1] = AT_7.name
        rk[AT_7.name] = sr
    end
    sq += 1
end
qZ = {}
for k, v in AT_33 do
    AT_7 = type(v) == "table" and type(k) == "string" and k ~= "EMPTY" and type(v.cost) == "number" and v.cost > 0 and not v.passRequired and not v.hideIfNotOwned
    if AT_7 then
        AT_7 = #qZ + 1
        AT_33 = v.cost
        AT_21 = tonumber(v.damageMulti) or 0
        qZ[AT_7] = { id = k, cost = AT_33, multi = AT_21 }
    end
end
AT_33 = 3
repeat
    AT_7 = {
        "zsw",
        "vje",
        "toskhi",
        "hfb",
        "sirfuea",
        "quuci",
        "irboiqtztw",
        "lrnx",
        "hec",
        "ypghv",
        "jvzqsy",
        "wmzkq",
        "sqkg",
        "jimhswdfw"
    }
    if AT_7[(AT_33 * 6 + 111) % 14 + 1] < AT_7[(AT_33 * 6 + 111) % 14 + 1] then
        table.sort(qZ, fn467)
    else
        table.sort(qZ, fn467)
    end
    AT_33 = (AT_33 + 0) % 8
until (AT_33 * 5 + 3) % 8 == 2
AT_21, qu, qp, ql = nil, nil, nil, nil
AT_7 = 11
repeat
    AT_33 = (AT_7 * 1 + 1) % 2 + 1
    if AT_33 <= 1 then
        AT_33 = (vector.create((AT_7 * 3 + 7) % 11 + 1, (AT_7 * 11 + 12) % 13 + 1, (AT_7 * 1 + 10) % 17 + 1))
        AT_10 = (vector.create((AT_7 * 6 + 9) % 11 + 1, (AT_7 * 7 + 13) % 13 + 1, (AT_7 * 1 + 17) % 17 + 1))
        local AT_1_5 = (vector.create((AT_7 * 5 + 7) % 11 + 1, (AT_7 * 2 + 2) % 13 + 1, (AT_7 * 11 + 9) % 17 + 1))
        if vector.dot(vector.cross(AT_33, AT_10), AT_1_5) == vector.dot(vector.cross(AT_10, AT_1_5), AT_33) then
            AT_21 = {}
        else
            qp = {}
        end
        AT_7 = (AT_7 + 11) % 16
    else
        local Bp = bit32.rrotate(bit32.bxor(bit32.lrotate(AT_7, 9), string.byte(tostring(AT_21))), 30)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Bp, 4132991032), 14), 470695318) ~= bit32.lrotate(Bp, 14) then
            ql = {}
            qu = {}
            qp = {}
        else
            qu = {}
            qp = {}
            ql = {}
        end
        AT_7 = (AT_7 + 13) % 16
    end
until (AT_7 * 5 + 8) % 16 == 7
AT_33 = {}
local sz = 1
while sz <= 30 do
    local sA = sz
    AT_7 = tostring(sA)
    AT_10 = DuelPower.RecommendedDamage(AT_7)
    if not AT_10 then
        local AT_1_6 = AT_19.CONFIG["Block" .. AT_7]
        AT_24 = AT_1_6 and tonumber(AT_1_6.hp)
        local AT_1_7 = AT_24
        if AT_1_7 then
            AT_10 = AT_1_7 / DuelPower.RECOMMENDED_THRESHOLD
        end
    end
    if AT_10 then
        local AT_1_8 = AT_8:AbbreviateNumber(AT_10)
        qp[AT_7] = AT_10
        AT_33[#AT_33 + 1] = { label = AT_1_8, value = AT_10, zone = AT_7 }
    end
    sz += 1
end
AT_24 = 1
repeat
    AT_7 = { "qlcx", "xkx", "dpduwbqfah", "xrqmigta", "eawq", "aeyg", "wqfgiww", "mrw", "jrhxk" }
    local Ck = AT_24
    AT_19 = AT_7[Ck % 9 + 1]
    if AT_19:len() >= AT_19:reverse():rep(Ck % 3 + 2):len() then
        table.sort(AT_33, fn168)
    else
        table.sort(AT_33, fn168)
    end
    AT_24 = (AT_24 + 1) % 4
until (AT_24 * 1 + 1) % 4 == 3
for k, v in AT_33 do
    AT_21[#AT_21 + 1] = v.label
    qu[v.label] = v.value
    ql[v.label] = v.zone
end
rb, q5, q2, q_, qS, qN, qI, qF, qA, qv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
rb = {}
q5 = 0
q2 = 0
q_ = 0
qS = 0
qN = 0
qI = nil
qF = 0
qA = false
qv = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if getgenv then
    getgenv().__OuroborosMergeDigSimLib = qv
end
ThemeManager, SaveManager, Toggles, qG, qh, qq, qB, qr, p8, rA, rm, qV, qC, qo, rG, rj, qX, rv, qY, rq, rf, qR, qy, qg, rr, qK, qm, rn, rF, rp, rD, q8, ra, rI, rs, qP, qD, re, q9, rg = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qq = function()
    local function sP(bk)
        local sN = not bk or not bk:IsA("ScreenGui")
        if sN then
            return
        end
        bk.ResetOnSpawn = false
        bk.IgnoreGuiInset = true
        bk.DisplayOrder = math.max(bk.DisplayOrder, 1000)
        pcall(function()
            bk.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            bk.ScreenInsets = Enum.ScreenInsets.None
        end)
        if bk.Parent ~= rl then
            bk.Parent = rl
        end
    end
    sP(qv.ScreenGui)
    if qv.ActiveLoading and qv.ActiveLoading.ScreenGui then
        sP(qv.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local sQ_1 = rl:FindFirstChild(v) or q0:FindFirstChild(v)
        if sQ_1 then
            sP(sQ_1)
        end
    end
end
qq()
task.spawn(worker)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
if (false or (rA or qC) or false and (qY or re)) and ((qY and rF or (false or rA)) and (qC or qY or (qY or qY))) or (rA and re or (qC or false) or (rF and qC or false)) and (re or false or rA and qY or (not rA or not rA) and (not rA and re)) or not ((false or (rA or qC) or false and (qY or re)) and ((qY and rF or (false or rA)) and (qC or qY or (qY or qY))) or (rA and re or (qC or false) or (rF and qC or false)) and (re or false or rA and qY or (not rA or not rA) and (not rA and re))) then
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = qv.Toggles
    qG = qv.Options
else
    loadstring(game:HttpGet(Toggles .. "addons/SaveManager.lua"))()
    qG = SaveManager.Toggles
    qv = SaveManager.Options
end
qB = fn497
qr = fn814
p8 = fn504
rA = fn948
rm = fn164
qV = fn119
qC = fn316
qo = fn662
rG = fn947
rj = fn186
qX = function()
    local tq
    tq = rj()
    if not tq then
        return false
    end
    local tr = qo()
    local tr_2
    local ts = tr and tr.UnlockedBiomes
    local ts_2
    local tt = ts
    if ts then
        ts = not tt[tq]
    end
    if ts then
        return false
    end
    local ts_1 = (q3:GetAttribute("CurrentBiome"))
    if not ts_1 then
        ts_1 = tr and tr.CurrentBiome
    end
    if ts_1 == tq then
        return true
    end
    tr_2, ts_2 = pcall(function()
        return q4:ChangeBiome(tq)
    end)
    return tr_2 and ts_2 == true
end
rv = fn335
qY = function()
    local tD_1
    local attr = q3:GetAttribute("CurrentBiome")
    local tC = attr and MapsConfig.CONFIG[attr]
    local tC_1
    local tB_1 = tC
    if tC then
        tC = tB_1.zones
    end
    local tB_2 = tC
    if type(tB_2) ~= "table" then
        tB_2 = {}
        local tI = 1
        while tI <= 30 do
            local tJ = tI
            tB_2[tJ] = tostring(tJ)
            tI += 1
        end
    end
    for k, v in tB_2 do
        local tA = tostring(v)
        if not rb[tA] then
            tC_1, tD_1 = pcall(function()
                return ru:GetZone(tA)
            end)
            local tE = tC_1 and type(tD_1) == "table"
            if tE then
                rb[tA] = tD_1
            end
        end
    end
    return tB_2
end
rq = fn932
rf = fn7
qR = fn972
qy = fn331
qg = function()
    local t0 = rq()
    local t1 = -1
    local t2
    for k, v in t0 do
        local t3_1 = tostring(v)
        local t_ = rb[t3_1]
        local tZ = false
        if t_ then
            pcall(function()
                tZ = t_:IsInside() == true
            end)
        end
        if tZ then
            local t4_1 = (tonumber(t3_1))
            local uj = if t4_1 then 1 else 0
            local uh = 3397 * uj + 3223 * (1 - uj)
            local ui = 3930 * uj + 784 * (1 - uj)
            if not ((uh * 1905 + ui * 3387 + uh * ui) % 16777213 == 16355192) then
                t4_1 = 0
            end
            local t5_1 = t4_1
            if t5_1 > t1 then
                t1 = t5_1
                t2 = t3_1
            end
        end
    end
    if t2 then
        qR(t2)
        return t2
    end
    local t1_1 = qC()
    if not t1_1 then
        return qI
    end
    local t2_1 = t1_1.Position.X
    local t1_2 = -1
    local t3_2 = nil
    local t4_2 = -1
    local t5_2 = nil
    for k, v in t0 do
        local t0_1 = tostring(v)
        local t6 = rf(t0_1)
        if t6 then
            local t7 = t6.Position.X
            local t8 = t6.Size.X * 0.5
            local t6_1 = tonumber(t0_1) or 0
            if t2_1 >= t7 - t8 and t2_1 <= t7 + t8 and t6_1 > t1_2 then
                t1_2 = t6_1
                t3_2 = t0_1
            end
            if t2_1 <= t7 + t8 and t6_1 > t4_2 then
                t4_2 = t6_1
                t5_2 = t0_1
            end
        end
    end
    local t1_3 = t3_2 or t5_2 or qI
    if t1_3 then
        qR(t1_3)
    end
    return t1_3
end
rr = fn656
qK = fn480
qm = fn218
rn = fn336
rF = fn999
rp = fn706
rD = fn282
q8 = fn925
ra = function(fu)
    local vD
    vD = {}
    local function vE(fx, fy, fz)
        local vA = type(fz) ~= "table" or type(fz.type) ~= "string"
        if vA then
            return
        end
        local vA_1 = qz.CONFIG[fz.type]
        local vB = not vA_1 or not vA_1.tier or not qz.GetNextTier(vA_1.tier)
        if vB then
            return
        end
        vD[#vD + 1] = { type = fx, id = tostring(fy), weapon = fz.type, tier = vA_1.tier }
    end
    if type(fu.Plot) == "table" then
        for k, v in fu.Plot do
            vE("Plot", k, v)
        end
    end
    if type(fu.CharacterArms) == "table" then
        for k, v in fu.CharacterArms do
            vE("Character", k, v)
        end
    end
    return vD
end
rI = function()
    if tick() < qN then
        return false
    elseif not ro:IsMergeActive() then
        return false
    else
        local vX = qo()
        local vX_4
        if not vX then
            return false
        end
        local vY = {}
        local vY_1
        for k, v in ra(vX) do
            local vX_1 = vY[v.weapon]
            if not vX_1 then
                vX_1 = {}
                vY[v.weapon] = vX_1
            end
            vX_1[#vX_1 + 1] = v
        end
        for k, v in vY do
            local vW, vU
            if #v >= 2 then
                local vV = v[1]
                local vT = v[2]
                if vV.type == "Plot" and vT.type ~= "Plot" then
                    vV, vT = vT, vV
                end
                vW = { type = vV.type, id = vV.id }
                vU = { type = vT.type, id = vT.id }
                local vX_3 = ro:IsLocationLocked(vW) or ro:IsLocationLocked(vU)
                if vX_3 then
                    return false
                end
                vX_4, vY_1 = pcall(function()
                    return q7:Merge(vW, vU)
                end)
                if vX_4 and vY_1 == true then
                    qN = tick() + 0.45
                    task.defer(function()
                        if vV.type == "Plot" then
                            rp(vV.id)
                        end
                        if vT.type == "Plot" then
                            rp(vT.id)
                        end
                        rD()
                    end)
                    return true
                end
            end
        end
        return false
    end
end
rs = fn554
qP = function()
    local ww = if tick() - q2 < 1.25 then 1 else 0
    if ww == 1 then
        return false
    elseif tick() < qN then
        return false
    elseif not ro:IsMergeActive() then
        return false
    else
        local wq = qo()
        local wq_3
        local wr = not wq or type(wq.Plot) ~= "table"
        local wr_2
        if wr then
            return false
        end
        for k, v in wq.Plot do
            local wq_1 = type(v) == "table"
            if wq_1 then
                wq_1 = v.type == "Gift" or v.itemCategory == "Gift"
            end
            if wq_1 then
                local wp = tostring(k)
                local wq_2 = { type = "Plot", id = wp }
                if not ro:IsLocationLocked(wq_2) then
                    pcall(function()
                        q3:SetAttribute("GiftSlotId", wp)
                    end)
                    pcall(function()
                        ri:SetCurrentWindow("Giftbox")
                    end)
                    task.wait(0.05)
                    wq_3, wr_2 = pcall(function()
                        return q7:OpenGift(wp, "Perfect")
                    end)
                    pcall(function()
                        local wo = if ri:GetCurrentWindow() == "Giftbox" then 1 else 0
                        if wo == 1 then
                            ri:CloseCurrentWindow()
                        end
                    end)
                    pcall(function()
                        q3:SetAttribute("GiftSlotId", nil)
                    end)
                    task.wait(0.15)
                    rp(wp)
                    task.defer(rD)
                    q2 = tick()
                    qN = tick() + 0.75
                    if wq_3 and wr_2 then
                        return true
                    end
                end
            end
        end
        return false
    end
end
qD = function()
    local wG_1
    local wD = qo()
    local wD_2
    if not wD then
        return false
    end
    local wF = wD.OwnedSkins or {}
    local wF_1 = rG(wD)
    for k, v in qZ do
        local wO = v
        if not wF[wO.id] and wF_1 >= wO.cost then
            wD_2, wG_1 = pcall(function()
                return qW:BuySkin(wO.id)
            end)
            if wD_2 and wG_1 then
                pcall(function()
                    qW:EquipSkin(wO.id)
                end)
                return true
            end
        end
    end
    return false
end
re = function()
    local wQ = qG.UpgradeTypes and qG.UpgradeTypes.Value
    if type(wQ) ~= "table" then
        return false
    end
    local wQ_1 = qo()
    if not wQ_1 then
        return false
    end
    local wS = rG(wQ_1)
    local wT = {}
    local wT_5
    local wU = wQ_1.Upgrades or wT
    local wU_4
    for k, v in qk do
        if wQ[v] == true then
            local wP = qf[v]
            local wT_1 = wP and UpgradeConfig.Upgrades[wP]
            if wT_1 then
                local wT_2 = tonumber(wU[wP]) or 1
                local wT_3 = tonumber(wT_1.maxLevel) or wT_2
                if wT_2 < wT_3 then
                    local wT_4 = UpgradeConfig.GetPrice(wP, wT_2 + 1)
                    local wU_3 = type(wT_4) == "number" and wS >= wT_4
                    if wU_3 then
                        wT_5, wU_4 = pcall(function()
                            return qH:Upgrade(wP, 1)
                        end)
                        if wT_5 and wU_4 then
                            return true
                        end
                    end
                end
            end
        end
    end
    return false
end
q9 = function()
    local w2
    if tick() - qS < 1.15 then
        return false
    end
    local w3 = qG.BuyEgg and qG.BuyEgg.Value
    local w3_7
    w2 = w3
    local w3_1 = w2 == ""
    local w4 = type(w2) ~= "string" or w3_1
    local w4_5
    if w4 then
        return false
    end
    local w3_2 = qx[w2]
    local w4_1 = not w3_2 or type(w3_2.Cost) ~= "table"
    if w4_1 then
        return false
    end
    local w4_2 = qo()
    if not w4_2 then
        return false
    end
    local w5 = tonumber(w3_2.Cost.Amount) or 0
    if rG(w4_2) < w5 then
        return false
    end
    local w3_4 = w4_2.PetsService and w4_2.PetsService.Pets
    local w3_5 = w4_2.PetsService and tonumber(w4_2.PetsService.MaxStorage)
    local w4_3 = w3_5 or 0
    local w3_6 = 0
    if type(w3_4) == "table" then
        for k in w3_4 do
            w3_6 += 1
        end
    end
    if w4_3 > 0 and w3_6 >= w4_3 then
        return false
    end
    w3_7, w4_5 = pcall(function()
        return q1:OpenEgg(w2, 1, false)
    end)
    local w6_1 = not w3_7 or w4_5 == false
    local w3_8 = w4_5 == "cancel"
    local w5_3 = w6_1
    local xh = if w5_3 then 1 else 0
    local xf = 1864 * xh + 2938 * (1 - xh)
    local xg = 1293 * xh + 1592 * (1 - xh)
    if not ((xf * 1377 + xg * 2861 + xf * xg) % 16777213 == 8676153) then
        w5_3 = w3_8
    end
    if w5_3 or w4_5 == nil then
        return false
    end
    qS = tick()
    return true
end
rg = fn9
AT_7 = qv:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = qs, Copyable = true }, "|", qw },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
qh = {
    Info = AT_7:AddTab("Info", "info"),
    Main = AT_7:AddTab("Main", "pickaxe"),
    Player = AT_7:AddTab("Player", "person-standing"),
    Settings = AT_7:AddTab("Settings", "settings")
}
AT_8 = fn182
for k, v in qh do
    if k ~= "Info" then
        AT_8(v)
    end
end
AT_33 = qh.Main:AddLeftGroupbox("Digging", "shovel")
AT_33:AddToggle("AutoDig", { Text = "Auto Dig", Default = false })
AT_33:AddDropdown("DigStage", { Text = "Stage", Values = AT_34, Default = AT_34[1] })
AT_33:AddDivider("Leaving")
AT_33:AddToggle("AutoLeave", { Text = "Auto Leave", Default = false })
AT_7 = AT_21[3]
local sM = if AT_7 then 1 else 0
local sK = 1266 * sM + 1236 * (1 - sM)
local sL = 841 * sM + 2253 * (1 - sM)
if not ((sK * 743 + sL * 2827 + sK * sL) % 16777213 == 4382851) then
    AT_7 = AT_21[1]
end
AT_34, AT_8 = nil, nil
if (AT_8 and not AT_8) and (not AT_34 and not AT_34 and 2) or ((not AT_34 or not AT_8) and (AT_8 or false) or not AT_34 and AT_34 and (not AT_34 and not AT_34)) or not ((AT_8 and not AT_8) and (not AT_34 and not AT_34 and 2) or ((not AT_34 or not AT_8) and (AT_8 or false) or not AT_34 and AT_34 and (not AT_34 and not AT_34))) then
    AT_33:AddDropdown("LeaveDamage", { Text = "Leave At", Values = AT_21, Default = AT_7 })
    AT_34 = qh.Main:AddLeftGroupbox("Merge", "combine")
else
    AT_33:AddDropdown("LeaveDamage", { Text = "Leave At", Default = AT_34, Values = AT_21 })
    qh = AT_7.Main:AddLeftGroupbox("Merge", "combine")
end
AT_34:AddToggle("AutoBuyPickaxe", { Text = "Auto Buy Pickaxe", Default = false })
AT_34:AddDropdown("BuyPickaxe", { Text = "Pickaxe", Values = AT_17, Default = AT_17[1] })
AT_34:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
AT_34:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
AT_34:AddToggle("AutoGiftBox", { Text = "Auto Gift Box", Default = false })
AT_8 = qh.Main:AddRightGroupbox("Shop", "store")
AT_8:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
AT_8:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AT_8:AddDropdown("UpgradeTypes", { Text = "Upgrades", Values = qk, Default = qk, Multi = true })
AT_8:AddToggle("AutoBuyEgg", { Text = "Auto Buy Egg", Default = false })
AT_8:AddDropdown("BuyEgg", { Text = "Egg", Values = AT_31, Default = AT_31[1] })
AT_8:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
Toggles.AutoDig:OnChanged(fn299)
qG.DigStage:OnChanged(fn117)
pcall(fn242)
q3:GetAttributeChangedSignal("InSpawn"):Connect(fn897)
q3:GetAttributeChangedSignal("CurrentBiome"):Connect(fn87)
local function AT_1_9()
    local ym
    local yl
    yl = nil
    ym = nil
    local Label, Label2, Label3, yq, yr
    local function ys()
        local xt = hookfunction ~= nil
        local xu = hookmetamethod ~= nil
        local xv = getrawmetatable ~= nil
        local xw = setrawmetatable ~= nil
        local xx = getgc ~= nil
        local xy = getgenv ~= nil
        local xz = getreg ~= nil
        local xA = getconnections ~= nil
        local xB = firesignal ~= nil
        local xC = getcallbackvalue ~= nil
        local xD = setclipboard ~= nil
        local xE = getcustomasset ~= nil
        local xF = getnamecallmethod ~= nil
        local xG = isexecutorclosure ~= nil
        local xH = fireproximityprompt ~= nil
        local xI = firetouchinterest ~= nil
        local xJ = WebSocket ~= nil
        local xK = readfile ~= nil
        local xL = writefile ~= nil
        local xM = request
        local xX = if xM then 1 else 0
        local xV = 364 * xX + 477 * (1 - xX)
        local xW = 3524 * xX + 3899 * (1 - xX)
        if not ((xV * 2075 + xW * 1688 + xV * xW) % 16777213 == 7986548) then
            xM = http_request
        end
        local xN = xM ~= nil
        local xP = (debug and debug.getupvalues) ~= nil
        local xR = (debug and debug.setupvalue) ~= nil
        local xS = 0
        local xT = { xt, xu, xv, xw, xx, xy, xz, xA, xB, xC, xD, xE, xF, xG, xH, xI, xJ, xK, xL, xN, xP, xR }
        for i, v in ipairs(xT) do
            if v then
                xS += 1
            end
        end
        local xt_1 = xS / #xT
        if xt_1 >= 0.9 then
            return qB("Full Support", qe)
        elseif xt_1 >= 0.6 then
            return qB("Half Support", p9)
        else
            return qB("Low Support", rE)
        end
    end
    yl = "Unknown"
    pcall(function()
        local x7_1
        local x6_1
        if identifyexecutor then
            x7_1, x6_1 = identifyexecutor()
            local x8 = x7_1 ~= ""
            local x9 = type(x7_1) == "string" and x8
            if x9 then
                local x8_1 = type(x6_1) == "string" and x6_1 ~= "" and x7_1 .. " " .. x6_1
                yl = x8_1 or x7_1
            end
        end
    end)
    local yt = ys()
    ym = os.clock()
    yq = function()
        local ye = math.floor(os.clock() - ym)
        if ye < 60 then
            return ye .. "s"
        elseif ye < 3600 then
            return string.format("%dm %ds", ye // 60, ye % 60)
        else
            return string.format("%dh %dm", ye // 3600, ye % 3600 // 60)
        end
    end
    local UserGroup = qh.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = q3, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(qr("User", q3.DisplayName .. " @" .. q3.Name, qe), true)
    UserGroup:AddLabel(qr("UserId", tostring(q3.UserId), qb), true)
    UserGroup:AddLabel(qr("Executor", yl .. "  " .. yt, qe), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(qr("Session", yq(), p9), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            p8(q3.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            p8("https://www.roblox.com/users/" .. tostring(q3.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = qh.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(qr("Game", qw, qb), true)
    Label2 = SessionGroup:AddLabel(qr("Players", "0/0", qe), true)
    yr = tostring(game.JobId)
    local yt_1 = #yr > 18 and string.sub(yr, 1, 18) .. "..."
    local yt_2 = yt_1 or yr
    SessionGroup:AddLabel(qr("Job", yt_2, p6), true)
    Label = SessionGroup:AddLabel(qr("Ping", "0 ms", p9), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            rc:Teleport(game.PlaceId, q3)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            p8(yr, "Copied Job ID")
        end
    })
    task.spawn(function()
        local yh_1
        local yg_1
        while true do
            task.wait(1)
            if qv.Unloaded then
                break
            end
            Label3:SetText(qr("Session", yq(), p9))
            Label2:SetText(qr("Players", #p5:GetPlayers() .. "/" .. tostring(p5.MaxPlayers), qe))
            yg_1, yh_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local yg_2 = yg_1 and yh_1 .. " ms" or "n/a"
            Label:SetText(qr("Ping", yg_2, p9))
        end
    end)
    local SocialsGroup = qh.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = rA })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(qn)
            elseif toclipboard then
                toclipboard(qn)
            end
            qv:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            p8(qi, "Copied website link")
        end
    })
end
AT_24 = function()
    local connection
    local MovementGroup = qh.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = qh.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function jN(jO)
        pcall(function()
            rh:SetGameplayPausedNotificationEnabled(not jO)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = rl:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not jO
            end
        end)
        if not jO then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(q3, "GameplayPaused", false)
            else
                q3.GameplayPaused = false
            end
        end)
    end
    local function j0(j1)
        if not j1:IsA("ProximityPrompt") then
            return
        end
        j1.HoldDuration = 0
        j1.MaxActivationDistance = 50
        j1.RequiresLineOfSight = false
    end
    rC.Stepped:Connect(function()
        if qv.Unloaded then
            return
        end
        if rm("NoClip") then
            local Character = q3.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local yB_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if yB_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    rz.JumpRequest:Connect(function()
        if qv.Unloaded then
            return
        end
        if rm("InfJump") then
            local yP = qV()
            if yP then
                yP:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    rC.RenderStepped:Connect(function(ki)
        if qv.Unloaded then
            return
        end
        if rm("WalkSpeedEnabled") then
            local yU_1 = qV()
            local WalkSpeed = qG.WalkSpeed
            if yU_1 and WalkSpeed then
                yU_1.WalkSpeed = WalkSpeed.Value
            end
        end
        if rm("Fly") then
            local yU_2 = qC()
            local yV_2 = qV()
            local FlySpeed = qG.FlySpeed
            local CurrentCamera = Workspace.CurrentCamera
            if yU_2 and yV_2 and FlySpeed and CurrentCamera then
                yV_2.PlatformStand = true
                local yV_3 = Vector3.zero
                local y5 = if rz:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if y5 == 1 then
                    yV_3 += CurrentCamera.CFrame.LookVector
                end
                if rz:IsKeyDown(Enum.KeyCode.S) then
                    yV_3 -= CurrentCamera.CFrame.LookVector
                end
                if rz:IsKeyDown(Enum.KeyCode.A) then
                    yV_3 -= CurrentCamera.CFrame.RightVector
                end
                if rz:IsKeyDown(Enum.KeyCode.D) then
                    yV_3 += CurrentCamera.CFrame.RightVector
                end
                local y2 = if rz:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if y2 == 1 then
                    yV_3 += Vector3.new(0, 1, 0)
                end
                if rz:IsKeyDown(Enum.KeyCode.LeftControl) then
                    yV_3 -= Vector3.new(0, 1, 0)
                end
                yU_2.Velocity = Vector3.zero
                if yV_3.Magnitude > 0 then
                    yU_2.CFrame = yU_2.CFrame + yV_3.Unit * FlySpeed.Value * ki
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local y6 = qV()
            if y6 then
                y6.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local y8 = qV()
            if y8 then
                y8.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        jN(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not qv.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                jN(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(j0, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(kT)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(j0, kT)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    qv:OnUnload(function()
        jN(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
AT_1_9()
AT_24()
task.spawn(worker2)
AT_10 = function()
    local Av, Aw, connection, Label, Az, AA, AB, AC, AD
    local MenuGroup = qh.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    qv.ToggleKeybind = qG.MenuKeybind
    AB = 0
    Aw = tick()
    Label = nil
    AD = function()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        rw:CaptureController()
        rw:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        AB += 1
        Aw = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. AB)
            end)
        end
    end
    connection = q3.Idled:Connect(function()
        if rm("AntiAfk") then
            pcall(AD)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            qv:Unload()
        end
    })
    task.spawn(function()
        while not qv.Unloaded do
            task.wait(2)
            local zu = rm("AntiAfk") and tick() - Aw >= 60
            if zu then
                pcall(AD)
            end
        end
    end)
    qv:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        if q3:GetAttribute("AutoRun") then
            pcall(function()
                rx:Stop()
            end)
        end
        if getgenv then
            getgenv().__OuroborosMergeDigSimLib = nil
        end
    end)
    ThemeManager:SetLibrary(qv)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(qh.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(qv)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/MergeDigSimulator")
    local AE_1 = SaveManager:BuildConfigSection(qh.Settings)
    AC = function(lS, lT)
        local zz_1 = (lS == "Toggle" and Toggles or qG)[lT]
        local zy_2 = type(zz_1) == "table" and zz_1.Type == lS
        return zy_2 and zz_1 or nil
    end
    Av = function(l0, l1)
        local Type = l1.Type
        if Type == "Toggle" then
            return { idx = l0, type = "Toggle", value = l1.Value == true }
        elseif Type == "Slider" then
            return { idx = l0, type = "Slider", value = tostring(l1.Value) }
        elseif Type == "Dropdown" then
            return { idx = l0, type = "Dropdown", multi = l1.Multi == true, value = l1.Value }
        elseif Type == "Input" then
            local zG = l1.Value or ""
            return { idx = l0, type = "Input", text = tostring(zG) }
        elseif Type == "ColorPicker" then
            return { idx = l0, type = "ColorPicker", value = l1.Value:ToHex(), transparency = l1.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = l0,
                type = "KeyPicker",
                mode = l1.Mode,
                key = l1.Value,
                modifiers = l1.Modifiers,
                toggled = l1.Toggled
            }
        else
            return nil
        end
    end
    Az = function()
        local zP = {}
        for i, v in ipairs({ Toggles, qG }) do
            for k, v in pairs(v) do
                local zQ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if zQ then
                    local zQ_1 = Av(k, v)
                    if zQ_1 then
                        zP[#zP + 1] = zQ_1
                    end
                end
            end
        end
        table.sort(zP, function(mb, mc)
            if mb.type ~= mc.type then
                return mb.type < mc.type
            end
            return mb.idx < mc.idx
        end)
        return { objects = zP }
    end
    AA = function(me)
        local z8
        z8 = nil
        local z9 = type(me) ~= "table" or type(me.idx) ~= "string" or type(me.type) ~= "string" or SaveManager.Ignore[me.idx]
        if z9 then
            return false
        end
        z8 = AC(me.type, me.idx)
        if not z8 then
            return false
        end
        local z9_1 = pcall(function()
            if me.type == "Input" then
                if type(me.text) ~= "string" then
                    return
                end
                z8:SetValue(me.text)
            elseif me.type == "ColorPicker" then
                z8:SetValueRGB(Color3.fromHex(me.value), me.transparency)
            elseif me.type == "KeyPicker" then
                z8:SetValue({ me.key, me.mode, me.modifiers })
                if me.mode == "Toggle" and me.toggled ~= nil then
                    z8.Toggled = me.toggled
                    z8:Update()
                end
            else
                z8:SetValue(me.value)
            end
        end)
        return z9_1
    end
    AE_1:AddDivider()
    AE_1:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    AE_1:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local Af_1
            local Ae_1
            Ae_1, Af_1 = pcall(rt.JSONEncode, rt, Az())
            if not Ae_1 then
                qv:Notify("Failed to encode the config")
                return
            end
            local Ae_2 = setclipboard or toclipboard
            local Ae_3 = type(Ae_2) ~= "function" or not pcall(Ae_2, Af_1)
            if Ae_3 then
                qv:Notify("Your executor does not support copying to the clipboard")
                return
            end
            qv:Notify("Config copied to clipboard", 6)
        end
    })
    AE_1:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local An_1
            local Al = qG.SaveManager_ImportSource.Value or ""
            local Al_1
            local Am = tostring(Al):match("^%s*(.-)%s*$")
            if Am == "" then
                qv:Notify("Paste an exported config into the box first")
                return
            end
            Al_1, An_1 = pcall(rt.JSONDecode, rt, Am)
            local Am_1 = not Al_1 or type(An_1) ~= "table" or type(An_1.objects) ~= "table"
            if Am_1 then
                qv:Notify("That is not a valid exported config")
                return
            end
            local Al_2 = 0
            for i, v in ipairs(An_1.objects) do
                if AA(v) then
                    Al_2 += 1
                end
            end
            if Al_2 == 0 then
                qv:Notify("No settings in that config matched this script")
                return
            end
            qG.SaveManager_ImportSource:SetValue("")
            local An_2 = Al_2 == 1 and "" or "s"
            qv:Notify(("Imported %d setting%s"):format(Al_2, An_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
    local AE_2 = qG.UpgradeTypes and qG.UpgradeTypes.Value
    local AF = false
    if type(AE_2) == "table" then
        for k, v in AE_2 do
            if v == true then
                AF = true
                break
            end
        end
    end
    local AE_3 = not AF
    if AE_3 ~= false then
        AE_3 = qG.UpgradeTypes
    end
    if AE_3 then
        qG.UpgradeTypes:SetValue(qd)
    end
end
AT_10()
