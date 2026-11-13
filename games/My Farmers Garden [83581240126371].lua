local Bp_9_1
local Bp_5_4
local qA
local qW
local qD
local rk
local pZ
local qk
local q1
local qh
local qn
local p4
local qq
local p7
local qP
local qw
local rd
local qS
local rg
local qg
local Library
local pY
local Toggles
local q3
local qp
local PlayerGui
local qs
local p9
local rf
local qf
local qX
local ri
local pX
local qB
local qE
local q_
local q2
local Options
local qo
local qK
local qu
local rb
local qQ
local qb
local function fn15(ck)
    local ti = {}
    if not ck then
        return ti
    end
    for i, child in ck:GetChildren() do
        local tj_1 = child:IsA("Tool") and child:GetAttribute("IsShopDisplay") == true
        if tj_1 then
            local Handle = child:FindFirstChild("Handle")
            local tk_1 = Handle and Handle:FindFirstChildOfClass("ProximityPrompt")
            if tk_1 then
                local tk_2 = #ti + 1
                local Name = child.Name
                local tn_1 = tonumber(child:GetAttribute("FinalPrice")) or tonumber(child:GetAttribute("Price"))
                local to_1 = tn_1 or 0
                ti[tk_2] = { tool = child, name = Name, price = to_1, prompt = tk_1, handle = Handle }
            end
        end
    end
    for i, descendant in ck:GetDescendants() do
        local tj_3 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Buy"
        if tj_3 then
            local Parent = descendant.Parent
            local tk_3 = Parent and Parent.Parent
            local tl_2 = tk_3
            if tk_3 then
                tk_3 = tl_2:IsA("Tool")
            end
            if tk_3 then
                local tk_4 = false
                for k, v in ti do
                    if v.tool == tl_2 then
                        tk_4 = true
                        break
                    end
                end
                if not tk_4 then
                    local tk_5 = #ti + 1
                    local Name = tl_2.Name
                    local tn_2 = tonumber(tl_2:GetAttribute("FinalPrice")) or tonumber(tl_2:GetAttribute("Price"))
                    local to_2 = tn_2 or 0
                    ti[tk_5] = { tool = tl_2, name = Name, price = to_2, prompt = descendant, handle = Parent }
                end
            end
        end
    end
    return ti
end
local function fn46()
    local leaderstats = qg:FindFirstChild("leaderstats")
    local sD = leaderstats and leaderstats:FindFirstChild("Sunshine")
    local sC_1 = sD
    if sD then
        sD = sC_1.Value
    end
    return ri(sD)
end
local function fn48()
    local Character = qg.Character
    local sw = Character and Character:FindFirstChild("HumanoidRootPart")
    return sw
end
local function fn73(eA)
    local vf = {}
    if not eA then
        return vf
    end
    local vp = 1
    while vp <= 6 do
        local vr = vp
        local vg = eA:FindFirstChild("Plot" .. vr)
        local vh = vg and vg:FindFirstChild("GardenPlot")
        local vi = vh
        if vh then
            vh = vi:IsA("BasePart")
        end
        if vh then
            vh = vi:GetAttribute("Locked") ~= true
        end
        if vh then
            local vh_1 = false
            for i, descendant in vg:GetDescendants() do
                if descendant:GetAttribute("IsPlantedPlant") == true then
                    vh_1 = true
                    break
                end
            end
            vf[#vf + 1] = { model = vg, part = vi, empty = not vh_1 }
        end
        vp += 1
    end
    return vf
end
local function fn115(bq)
    local sA_1
    if type(bq) == "number" then
        return bq
    end
    local sy = bq or "0"
    local sy_1
    local sz = tostring(sy):gsub("[$%,]", ""):gsub("%s", "")
    sA_1, sy_1 = sz:match("^([%d%.]+)([KkMmBbTt]?)$")
    local sA_2 = tonumber(sA_1)
    if not sA_2 then
        return 0
    end
    local sz_1 = ({
        K = 1000,
        k = 1000,
        M = 1000000,
        m = 1000000,
        B = 1000000000,
        b = 1000000000,
        T = 1000000000000,
        t = 1000000000000
    })[sy_1] or 1
    return math.floor(sA_2 * sz_1)
end
local function fn129()
    local tY = qu("BuySeeds")
    local tZ = qu("BuyEggs")
    local t_ = not next(tY)
    if t_ ~= false then
        t_ = not next(tZ)
    end
    if t_ then
        return false
    end
    local t__1 = qD()
    local t0 = qs()
    local t1
    local t2 = math.huge
    if next(tZ) then
        for k, v in q1() do
            if tZ[v.name] and v.price > 0 and v.price <= t__1 then
                local t3_2 = t0
                local t4 = 0
                if t3_2 then
                    t3_2 = v.handle
                end
                if t3_2 then
                    t4 = (t0.Position - v.handle.Position).Magnitude
                end
                if not t1 or t4 < t2 then
                    t1 = v
                    t2 = t4
                end
            end
        end
    end
    local tZ_1 = not t1
    if tZ_1 ~= false then
        tZ_1 = next(tY)
    end
    if tZ_1 then
        local GameShops = qp:FindFirstChild("GameShops")
        if GameShops then
            for i, child in GameShops:GetChildren() do
                if child.Name:match("^Shop%d+") then
                    for k, v in qA(child) do
                        if tY[v.name] and v.prompt and v.prompt.Enabled and v.price > 0 and v.price <= t__1 then
                            local tZ_4 = t0
                            local t3_4 = 0
                            if tZ_4 then
                                tZ_4 = v.handle
                            end
                            if tZ_4 then
                                t3_4 = (t0.Position - v.handle.Position).Magnitude
                            end
                            if not t1 or t3_4 < t2 then
                                t1 = v
                                t2 = t3_4
                            end
                        end
                    end
                end
            end
        end
    end
    if not t1 then
        return false
    end
    return q_(t1)
end
local function fn153(aQ, aR)
    return string.format('<font color="%s">%s</font>', aR, aQ)
end
local function fn202()
    local uU = rd()
    local uV = uU and uU:FindFirstChild("MoneyStorage")
    local uV_1 = not uV or not uV:IsA("BasePart")
    if uV_1 then
        return false
    end
    local uV_2 = nil
    for i, descendant in uV:GetDescendants() do
        local uW_1 = descendant.Name == "AmountLabel" and descendant:IsA("TextLabel")
        if uW_1 then
            uV_2 = descendant
            break
        end
    end
    local uV_3 = uV_2 and uV_2.Text or "$0"
    if ri(uV_3) <= 0 then
        return false
    end
    return qh(uV)
end
local function fn203()
    local wl = qn()
    local wm = not wl or not wl:IsA("BasePart")
    if wm then
        return false
    end
    local wm_1 = qs()
    local wn = qK()
    local wp = not wm_1 or not wn
    local wp_3, wp_6
    if wp then
        return false
    end
    local SellMode = Options.SellMode
    local wp_2 = SellMode and SellMode.Value or "Selected"
    local wq = wp_2 ~= "Inventory" and wp_2 ~= "Selected"
    local wq_1, wq_3
    if wq then
        wp_2 = "Selected"
    end
    local wo_4 = rk()
    if wp_2 == "Inventory" then
        if #wo_4 == 0 then
            return false
        end
        wm_1.CFrame = wl.CFrame + Vector3.new(0, 3, 0)
        task.wait(0.15)
        wp_3, wq_1 = pcall(function()
            return pZ:InvokeServer("SellInventory")
        end)
        local wr_1 = wp_3 and type(wq_1) == "table" and wq_1.success
        if wr_1 then
            task.wait(0.25)
            return true
        end
        return false
    end
    local wp_4 = qu("SellPlants")
    if not next(wp_4) then
        return false
    end
    local wq_2 = {}
    for k, v in wo_4 do
        if wp_4[p7(v)] then
            wq_2[#wq_2 + 1] = v
        end
    end
    if #wq_2 == 0 then
        return false
    end
    local wo_5 = false
    for k, v in wq_2 do
        local wp_5 = Library.Unloaded or not qX("AutoSell")
        if wp_5 then
            break
        elseif v.Parent then
            wn:EquipTool(v)
            task.wait(0.1)
            wm_1.CFrame = wl.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.08)
            wp_6, wq_3 = pcall(function()
                return pZ:InvokeServer("SellThis")
            end)
            local wr_2 = wp_6 and type(wq_3) == "table" and wq_3.success
            if wr_2 then
                wo_5 = true
                task.wait(0.25)
            end
        end
    end
    return wo_5
end
local function fn220(et)
    return et:GetAttribute("JustPlanted") ~= true
end
local function fn245(a4)
    local sg = Toggles[a4]
    return sg ~= nil and sg.Value == true
end
local function worker2()
    while not Library.Unloaded do
        local zQ = false
        local zR = qX("AutoBuySeedsEggs") and qo()
        if zR then
            zQ = true
        end
        local zR_1 = qX("AutoBuyGears") and q2()
        if zR_1 then
            zQ = true
        end
        local zR_2 = qX("AutoBuyFarmer") and p9()
        if zR_2 then
            zQ = true
        end
        local zR_3 = qX("AutoCollectMoney") and qk()
        if zR_3 then
            zQ = true
        end
        local zR_4 = qX("AutoPlant") and pX()
        if zR_4 then
            zQ = true
        end
        local zR_5 = qX("AutoSell") and rb()
        if zR_5 then
            zQ = true
        end
        local zR_6 = qX("AutoWaterPlants") and qW()
        if zR_6 then
            zQ = true
        end
        local zR_7 = qX("AutoShovelPlants") and qb()
        if zR_7 then
            zQ = true
        end
        local zR_8 = qX("AutoMergePlants") and qf()
        if zR_8 then
            zQ = true
        end
        local zR_9 = qX("AutoSpin") and p4()
        if zR_9 then
            zQ = true
        end
        if qX("HideSpinInterface") then
            qP(true)
        end
        local wait = task.wait
        local zQ_1 = zQ and 0.25 or 0.5
        wait(zQ_1)
    end
end
local function fn254(ic)
    local SpinningWheel = PlayerGui:FindFirstChild("SpinningWheel")
    if not SpinningWheel then
        return
    end
    SpinningWheel.Enabled = true
    local WheelFrame = SpinningWheel:FindFirstChild("WheelFrame")
    local DimBackdrop = SpinningWheel:FindFirstChild("DimBackdrop")
    if ic then
        if WheelFrame then
            WheelFrame.Visible = false
        end
        if DimBackdrop then
            DimBackdrop.Visible = false
        end
    else
        if WheelFrame then
            WheelFrame.Visible = true
        end
        if DimBackdrop then
            DimBackdrop.Visible = true
        end
    end
end
local function fn296(a9)
    local sj = Options[a9]
    local sk = sj and sj.Value
    if type(sk) ~= "table" then
        return {}
    end
    local sk_1 = {}
    for k, v in sk do
        if v == true then
            sk_1[k] = true
        end
    end
    return sk_1
end
local function fn330(cR)
    local tV = qs()
    if tV and cR.handle then
        tV.CFrame = cR.handle.CFrame * CFrame.new(0, 2, 4)
        task.wait(0.1)
    end
    if not qS(cR.prompt) then
        return false
    end
    task.wait(0.45)
    return true
end
local function fn349(aY, aZ)
    if setclipboard then
        setclipboard(aY)
    elseif toclipboard then
        toclipboard(aY)
    end
    Library:Notify(aZ)
end
local function fn420(ev)
    local u7 = {}
    if not ev then
        return u7
    end
    for i, descendant in ev:GetDescendants() do
        if descendant:GetAttribute("IsPlantedPlant") == true then
            u7[#u7 + 1] = descendant
        end
    end
    return u7
end
local function fn434(eL)
    local Size = eL.Size
    return eL.CFrame:PointToWorldSpace(Vector3.new(0, Size.Y * 0.5, 0))
end
local function fn436()
    local Character = qg.Character
    local st = Character and Character:FindFirstChildOfClass("Humanoid")
    return st
end
local function fn473(eq)
    local u5 = not eq or not eq:IsA("Tool")
    if u5 then
        return false
    elseif eq:GetAttribute("PlantID") == nil then
        return false
    else
        return eq:GetAttribute("SizeRolled") ~= true
    end
end
local function fn483()
    local sH_1
    local sG_1
    local PLAYERS_GARDEN = qp:FindFirstChild("PLAYERS GARDEN")
    if not PLAYERS_GARDEN then
        return nil
    end
    sG_1, sH_1 = pcall(function()
        return qw:InvokeServer()
    end)
    local sI = sG_1 and type(sH_1) == "string"
    if sI then
        local sG_2 = PLAYERS_GARDEN:FindFirstChild(sH_1)
        if sG_2 then
            return sG_2
        end
        for i, child in PLAYERS_GARDEN:GetChildren() do
            if child:GetAttribute("OwnerUserId") == qg.UserId then
                return child
            end
            local Plot1 = child:FindFirstChild("Plot1")
            local sG_3 = Plot1 and Plot1:FindFirstChild("GardenPlot")
            local sF_2 = sG_3
            if sG_3 then
                sG_3 = sF_2:GetAttribute("OwnerUserId") == qg.UserId
            end
            if sG_3 then
                return child
            end
        end
        return nil
    end
    for i, child in PLAYERS_GARDEN:GetChildren() do
        if child:GetAttribute("OwnerUserId") == qg.UserId then
            return child
        end
        local Plot1 = child:FindFirstChild("Plot1")
        local sG_4 = Plot1 and Plot1:FindFirstChild("GardenPlot")
        local sF_4 = sG_4
        if sG_4 then
            sG_4 = sF_4:GetAttribute("OwnerUserId") == qg.UserId
        end
        if sG_4 then
            return child
        end
    end
    return nil
end
local function fn509(il)
    local DiscordGroup = il:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = rg })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = rg })
end
local function fn557()
    local tI = {}
    for i, child in qp:GetChildren() do
        local tJ = child:IsA("Tool") and child:GetAttribute("IsEgg") == true and child:GetAttribute("PotName") ~= nil
        if tJ then
            local Handle = child:FindFirstChild("Handle")
            local tK = Handle and Handle:FindFirstChildOfClass("ProximityPrompt")
            local tL = tK
            if tK then
                tK = tL.Enabled
            end
            if tK then
                local tK_1 = ri(tL.ObjectText)
                if tK_1 <= 0 then
                    local tM = tonumber(child:GetAttribute("FinalPrice")) or tonumber(child:GetAttribute("Price"))
                    tK_1 = tM or 0
                end
                tI[#tI + 1] = { tool = child, name = child.Name, price = tK_1, prompt = tL, handle = Handle }
            end
        end
    end
    return tI
end
local function fn628(gZ)
    return tostring(gZ) .. " Star"
end
local function fn706(aT, aU, aV)
    return string.format("<b>%s</b> %s %s", aT, rf("-", "#5a6070"), rf(aU, aV))
end
local function fn720()
    local Stalls = qp:FindFirstChild("Stalls")
    local wj = Stalls and Stalls:FindFirstChild("SellPart")
    return wj
end
local function fn754()
    qq(qB, "Copied Discord invite to clipboard")
end
local function fn826()
    return qE
end
local function fn844(gX)
    local xf = tonumber(gX:GetAttribute("MergeCount")) or 0
    return xf
end
local function fn855(G)
    if cloneref then
        return cloneref(G)
    end
    return G
end
local function worker()
    while Library and not Library.Unloaded do
        qQ()
        task.wait(1)
    end
end
local function fn957(en)
    local u3 = en:GetAttribute("PlantName") or en.Name
    return u3
end
Options = nil
pX = nil
pY = nil
pZ = nil
Toggles = nil
p4 = nil
PlayerGui = nil
p7 = nil
p9 = nil
qb = nil
qf = nil
qg = nil
qh = nil
qk = nil
qn = nil
qo = nil
qp = nil
qq = nil
qs = nil
qu = nil
qw = nil
qA = nil
qB = nil
qD = nil
qE = nil
local pT, pV, pW, p_, p1, p2, p3, p5, p8, qa, SaveManager, qd, qe, qi, qj, ThemeManager, qm, qr, qt, qv, qx, qy, qz, qC, qF
qK = nil
qP = nil
qQ = nil
qS = nil
qW = nil
qX = nil
Library = nil
q_ = nil
q1 = nil
q2 = nil
q3 = nil
local q6
rb = nil
rd = nil
rf = nil
rg = nil
ri = nil
rk = nil
local qG, qH, qI, qJ, qL, qO, qR, qT, qU, qV, qZ, q0, q4, q5, q7, q8, q9, ra, rc, re, rh, rj
qG = nil
qH = nil
qI = nil
qJ = nil
qL = nil
local qM
local qN
qO = nil
qR = nil
qT = nil
qU = nil
qV = nil
qZ = nil
q0 = nil
q4 = nil
q5 = nil
q7 = nil
q8 = nil
q9 = nil
ra = nil
rc = nil
re = nil
rh = nil
rj = nil
pT, Bp_9_1, q4, qZ, qR, qI, qE, qy, qv, qp, qg, PlayerGui, pY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Bp_2 = 15
repeat
    local Bp_5_1 = (Bp_2 * 1 + 3) % 4 + 1
    if Bp_5_1 <= 2 then
        if Bp_5_1 <= 1 then
            if (Bp_2 * 1 + 6) * 5 % 4 == ((Bp_2 * 1 + 6) * 5 + 15) % 4 then
                qp = game:GetService("CoreGui")
                qv = game:GetService("GuiService")
                qE = game:GetService("TeleportService")
                qy = game:GetService("Workspace")
            else
                qE = game:GetService("CoreGui")
                qy = game:GetService("GuiService")
                qv = game:GetService("TeleportService")
                qp = game:GetService("Workspace")
            end
            Bp_2 = (Bp_2 + 13) % 16
        else
            local CD = bit32.rrotate(bit32.bxor(bit32.lrotate(Bp_2, 12), string.byte(tostring(q4))), 29)
            if bit32.bxor(bit32.lrotate(bit32.bxor(CD, 32393915), 10), 3106597895) == bit32.lrotate(CD, 10) then
                qg = pT.LocalPlayer
                PlayerGui = qg:WaitForChild("PlayerGui")
                pY = fn826
            else
                pT = PlayerGui.LocalPlayer
                pY = pT:WaitForChild("PlayerGui")
                qg = fn826
            end
            Bp_2 = (Bp_2 + 13) % 16
        end
    elseif Bp_5_1 <= 3 then
        local Bp_5_2 = {
            "qmpdudzm",
            "fuubkzyrpki",
            "pxxu",
            "tykqb",
            "ullfqhptxm",
            "nsu",
            "evrrx",
            "niyme",
            "fgoug",
            "bpgsqjcl",
            "buq"
        }
        local Cs = Bp_2
        local ro_1 = Bp_5_2[Cs % 11 + 1]
        if ro_1:len() <= ro_1:gsub("(.)", "%1%1", Cs % 3 % 2 + 1):len() then
            pT = game:GetService("Players")
        else
            qR = game:GetService("Players")
        end
        Bp_2 = (Bp_2 + 1) % 16
    else
        local Bp_5_3 = (vector.create((Bp_2 * 4 + 9) % 11 + 1, (Bp_2 * 2 + 8) % 13 + 1, (Bp_2 * 2 + 11) % 17 + 1))
        local C3 = vector.floor(Bp_5_3) + vector.ceil(Bp_5_3 * -1)
        if vector.dot(C3, C3) == 5 then
            qI = game:GetService("ReplicatedStorage")
            Bp_9_1 = game:GetService("RunService")
            qR = game:GetService("UserInputService")
            q4 = game:GetService("VirtualUser")
            qZ = game:GetService("HttpService")
        else
            Bp_9_1 = game:GetService("ReplicatedStorage")
            q4 = game:GetService("RunService")
            qZ = game:GetService("UserInputService")
            qR = game:GetService("VirtualUser")
            qI = game:GetService("HttpService")
        end
        Bp_2 = (Bp_2 + 5) % 16
    end
until (Bp_2 * 9 + 2) % 16 == 9
if getgenv then
    q6, Bp_5_4 = nil, nil
    local Bp_2_1 = 0
    repeat
        if (Bp_2_1 * 1 + 0) % 2 + 1 <= 1 then
            if (Bp_2_1 or not q6 or (Bp_2_1 or Bp_5_4)) and ((q6 or not q6) and (not Bp_5_4 and Bp_2_1)) and ((not Bp_5_4 or not q6 or not Bp_2_1 and Bp_2_1) and (not q6 and not Bp_5_4 and (Bp_2_1 or q6))) or (Bp_2_1 and Bp_5_4 or not Bp_5_4 and not Bp_5_4 or (not Bp_2_1 and not q6 or (not Bp_5_4 or Bp_2_1))) and ((Bp_2_1 or not q6 or (not Bp_2_1 or Bp_5_4)) and (Bp_2_1 and Bp_2_1 and (q6 or not Bp_5_4))) or not ((Bp_2_1 or not q6 or (Bp_2_1 or Bp_5_4)) and ((q6 or not q6) and (not Bp_5_4 and Bp_2_1)) and ((not Bp_5_4 or not q6 or not Bp_2_1 and Bp_2_1) and (not q6 and not Bp_5_4 and (Bp_2_1 or q6))) or (Bp_2_1 and Bp_5_4 or not Bp_5_4 and not Bp_5_4 or (not Bp_2_1 and not q6 or (not Bp_5_4 or Bp_2_1))) and ((Bp_2_1 or not q6 or (not Bp_2_1 or Bp_5_4)) and (Bp_2_1 and Bp_2_1 and (q6 or not Bp_5_4)))) then
                getgenv().gethui = pY
                q6 = getgenv().__OuroborosMyFarmersGardenLib
            else
                getgenv().gethui = q6
                pY = getgenv().__OuroborosMyFarmersGardenLib
            end
            Bp_2_1 = (Bp_2_1 + 13) % 16
        else
            local ro_3 = (vector.create((Bp_2_1 * 1 + 4) % 11 + 1, (Bp_2_1 * 5 + 9) % 13 + 1, (Bp_2_1 * 5 + 2) % 17 + 1))
            local rp_1 = (vector.create((Bp_2_1 * 5 + 4) % 11 + 1, (Bp_2_1 * 3 + 7) % 13 + 1, (Bp_2_1 * 15 + 16) % 17 + 1))
            local rq_1 = (vector.create((Bp_2_1 * 2 + 7) % 11 + 1, (Bp_2_1 * 8 + 9) % 13 + 1, (Bp_2_1 * 5 + 12) % 17 + 1))
            local rr_1 = (vector.create((Bp_2_1 * 4 + 6) % 5 + 1, (Bp_2_1 * 1 + 2) % 7 + 1, (Bp_2_1 * 5 + 2) % 9 + 1))
            if vector.dot(vector.cross(ro_3, (vector.cross(rp_1, rq_1))), rr_1) == vector.dot(rp_1 * vector.dot(ro_3, rq_1) - rq_1 * vector.dot(ro_3, rp_1), rr_1) + 5 then
                q6 = Bp_5_4
            else
                Bp_5_4 = q6
            end
            Bp_2_1 = (Bp_2_1 + 11) % 16
        end
    until (Bp_2_1 * 9 + 6) % 16 == 14
    if Bp_5_4 then
        Bp_5_4 = q6.Unload
    end
    if Bp_5_4 then
        pcall(function()
            q6:Unload()
        end)
    end
end
pcall(function()
    gethui = pY
end)
if setthreadidentity then
    setthreadidentity(8)
end
qH, qB, qx, qt, qm, qd, p1, pV, ra, qT, qJ, qF, qz, qw, qr, qi, p8, pZ, rh, q8, q3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qH = "My Farmers Garden"
if not qw or qr or (q8 or false) or (false and not q8 or not qw) or not (not qw or qr or (q8 or false) or (false and not q8 or not qw)) then
    qB = "https://discord.gg/ehKVq7pf7v"
    qx = "https://rscripts.net/@Ouroboros"
    qt = "https://ouroboros-hub-rbx.web.app/"
    qm = "#7fd47f"
    qd = "#6ec1ff"
else
    qd = "https://discord.gg/ehKVq7pf7v"
    qB = "https://rscripts.net/@Ouroboros"
    qx = "https://ouroboros-hub-rbx.web.app/"
    qt = "#7fd47f"
    qm = "#6ec1ff"
end
if (not qw or false) and (false and (not pZ and qw)) or not ((not qw or false) and (false and (not pZ and qw))) then
    p1 = "#e8a34d"
else
    qt = "#e8a34d"
end
pV = "#8b93a3"
ra = "#e05a5a"
if ((not qF or qH) and (not qm and qF) or (qF or not qm or (qB or qF))) and (false or qF and not qB or (qF or not qB or not qF and not qm)) or not (((not qF or qH) and (not qm and qF) or (qF or not qm or (qB or qF))) and (false or qF and not qB or (qF or not qB or not qF and not qm))) then
    qT = fn855(Bp_9_1:WaitForChild("GearShopBuyRequest"))
else
    Bp_9_1 = qT(fn855:WaitForChild("GearShopBuyRequest"))
end
qJ = fn855(Bp_9_1:WaitForChild("BuyFarmerRequest"))
qF = fn855(Bp_9_1:WaitForChild("GetGearShopStateRequest"))
qz = fn855(Bp_9_1:WaitForChild("GetFarmerShopStockRequest"))
qw = fn855(Bp_9_1:WaitForChild("GetMyGardenRequest"))
if (not qF or pV or (false or qT) or (qT or not qT) and 10) and (pV and not qF or qT and false or (pV or qT) and (qF or false)) and not ((not qF or pV or (false or qT) or (qT or not qT) and 10) and (pV and not qF or qT and false or (pV or qT) and (qF or false))) then
    p8 = Bp_9_1(fn855:WaitForChild("WateringCanUseRequest"))
    qr = Bp_9_1(fn855:WaitForChild("ShovelUprootRequest"))
    qi = Bp_9_1(fn855:WaitForChild("PlantPlacementRequest"))
else
    qr = fn855(Bp_9_1:WaitForChild("WateringCanUseRequest"))
    qi = fn855(Bp_9_1:WaitForChild("ShovelUprootRequest"))
    p8 = fn855(Bp_9_1:WaitForChild("PlantPlacementRequest"))
end
pZ = fn855(Bp_9_1:WaitForChild("SellRequest"))
rh = fn855(Bp_9_1:WaitForChild("FusionMergeConfirm"))
q8 = fn855(Bp_9_1:WaitForChild("SpinRequest"))
q3 = fn855(Bp_9_1:WaitForChild("AutoSpinToggle"))
local SpinWheelConfig = require(Bp_9_1:WaitForChild("Configs"):WaitForChild("SpinWheelConfig"))
local Bp_2_2 = SpinWheelConfig.SPIN_COST or 100000
qO = nil
qO = Bp_2_2
local rq_2 = { "Selected", "Inventory" }
local InventoryItems = Bp_9_1:WaitForChild("InventoryItems")
local rp_2 = {}
local rr_2 = {}
for i, child in InventoryItems:WaitForChild("Plants"):GetChildren() do
    rr_2[#rr_2 + 1] = child.Name
end
local Bp_2_3 = 2
repeat
    local BT = bit32.rrotate(bit32.bxor(bit32.lrotate(Bp_2_3, 16), string.byte(tostring(Bp_2_3))), 1)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BT, 3405390831), 591392235), (bit32.bxor(bit32.band(BT, 889576464), 1505726205))), 591392235), 1505726205) ~= BT then
        table.sort(rp_2)
        rr_2 = rp_2
    else
        table.sort(rr_2)
        rp_2 = rr_2
    end
    Bp_2_3 = (Bp_2_3 + 6) % 8
until (Bp_2_3 * 7 + 7) % 8 == 7
p3, pW, rc, q5, qV, qG = nil, nil, nil, nil, nil, nil
p3 = {
    Bellsora = true,
    ["Vasal Flower"] = true,
    ["Cotton Bloom"] = true,
    ["Coco Bloom"] = true,
    ["White Sta Rosa"] = true,
    ["Red Sta Rosa"] = true
}
pW = table.clone(p3)
rc = table.clone(p3)
q5 = table.clone(p3)
local rs = { "0 Star", "1 Star", "2 Star", "3 Star", "4 Star", "5 Star" }
qV = {
    ["0 Star"] = true,
    ["1 Star"] = true,
    ["2 Star"] = true,
    ["3 Star"] = true,
    ["4 Star"] = true,
    ["5 Star"] = true
}
qG = {}
local Bp_2_4 = {}
for i, child in InventoryItems:WaitForChild("Eggs"):GetChildren() do
    Bp_2_4[#Bp_2_4 + 1] = child.Name
    qG[child.Name] = true
end
table.sort(Bp_2_4)
qa, p_, rj, q9, Library = nil, nil, nil, nil, nil
local rt = {
    "Watering Can",
    "Basic Sprinkler",
    "Improved Sprinkler",
    "Precision Sprinkler",
    "Hydro Sprinkler",
    "Aqua Watering Can",
    "Reclaimer"
}
qa = { ["Watering Can"] = true, ["Basic Sprinkler"] = true }
p_ = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Angelic", "Secret", "Money" }
rj = { Common = true }
q9 = {}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if getgenv then
    getgenv().__OuroborosMyFarmersGardenLib = Library
end
ThemeManager, SaveManager, Toggles, Options, qe, p5, qQ, rf, qU, qq, rg, qX, qu, qK, qs, ri, qD, rd, qS, qh, qM, qA, q1, q_, qo, q2, p9, qk, p7, q7, qN, qC, p2, qj, rk, pX, qn, rb, qb, qW, re, q0, qL, qf, p4, qP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qQ = function()
    local function r3(av)
        local rZ = not av or not av:IsA("ScreenGui")
        if rZ then
            return
        end
        av.ResetOnSpawn = false
        av.IgnoreGuiInset = true
        av.DisplayOrder = math.max(av.DisplayOrder, 1000)
        pcall(function()
            av.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            av.ScreenInsets = Enum.ScreenInsets.None
        end)
        if av.Parent ~= qE then
            av.Parent = qE
        end
    end
    r3(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        r3(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local r4_1 = qE:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if r4_1 then
            r3(r4_1)
        end
    end
end
qQ()
task.spawn(worker)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
rf = fn153
qU = fn706
qq = fn349
rg = fn754
qX = fn245
qu = fn296
qK = fn436
qs = fn48
ri = fn115
qD = fn46
rd = fn483
qS = function(bT)
    local sQ = not bT or not bT:IsA("ProximityPrompt") or not bT.Enabled
    if sQ then
        return false
    end
    local HoldDuration = bT.HoldDuration
    bT.HoldDuration = 0
    local sR = pcall(function()
        fireproximityprompt(bT)
    end)
    bT.HoldDuration = HoldDuration
    return sR
end
qh = function(bZ)
    local sW = qs()
    local sX = not sW or not bZ or not bZ:IsA("BasePart")
    if sX then
        return false
    end
    sW.CFrame = bZ.CFrame + Vector3.new(0, 3, 0)
    if firetouchinterest then
        pcall(function()
            firetouchinterest(sW, bZ, 0)
            task.wait()
            firetouchinterest(sW, bZ, 1)
        end)
    end
    return true
end
qM = function(b5)
    local s2 = qK()
    if not s2 then
        return nil
    end
    local function s3(b9)
        if type(b5) == "function" then
            return b5(b9)
        end
        return b9.Name == b5
    end
    local Character = qg.Character
    if Character then
        for i, child in Character:GetChildren() do
            local s4_1 = child:IsA("Tool") and s3(child)
            if s4_1 then
                return child
            end
        end
    end
    for i, child in qg.Backpack:GetChildren() do
        local s4_2 = child:IsA("Tool") and s3(child)
        if s4_2 then
            s2:EquipTool(child)
            return child
        end
    end
    return nil
end
qA = fn15
q1 = fn557
q_ = fn330
qo = fn129
q2 = function()
    local ut_1
    local us_1
    local ur = qu("BuyGears")
    if not next(ur) then
        return false
    end
    us_1, ut_1 = pcall(function()
        return qF:InvokeServer()
    end)
    local uu = not us_1 or type(ut_1) ~= "table"
    if uu then
        return false
    end
    local uu_1 = ut_1.stock or {}
    local uv = ut_1.prices or {}
    local uu_3 = qD()
    local uv_1 = false
    for k in ur do
        local uC = k
        local ur_1 = tonumber(uu_1[uC]) or 0
        local ur_2 = tonumber(uv[uC]) or 0
        if ur_1 > 0 and ur_2 > 0 and uu_3 >= ur_2 then
            local ur_4 = pcall(function()
                qT:FireServer(uC)
            end)
            if ur_4 then
                uv_1 = true
                task.wait(0.25)
                uu_3 = qD()
            end
        end
    end
    return uv_1
end
p9 = function()
    local uF_1
    local uE_1
    local uD = qu("BuyFarmers")
    if not next(uD) then
        return false
    end
    uE_1, uF_1 = pcall(function()
        return qz:InvokeServer()
    end)
    local uG = not uE_1
    local uN = if uG then 1 else 0
    local uL = 3393 * uN + 1514 * (1 - uN)
    local uM = 2371 * uN + 709 * (1 - uN)
    if not ((uL * 266 + uM * 3715 + uL * uM) % 16777213 == 978393) then
        uG = type(uF_1) ~= "table"
    end
    if uG then
        return false
    end
    local uE_2 = qD()
    local uG_1 = false
    for k, v in p_ do
        local uT = v
        if uD[uT] then
            local uH = uF_1[uT]
            local uH_2
            if type(uH) == "table" then
                local uI = tonumber(uH.stock) or 0
                local uI_3
                local uI_1 = tonumber(uH.price) or 0
                if uI > 0 and uI_1 > 0 and uE_2 >= uI_1 then
                    uI_3, uH_2 = pcall(function()
                        return qJ:InvokeServer(uT)
                    end)
                    local uJ_1 = uI_3 and type(uH_2) == "table" and uH_2.success
                    if uJ_1 then
                        uG_1 = true
                        task.wait(0.3)
                        uE_2 = qD()
                    elseif uI_3 then
                        task.wait(0.15)
                    end
                end
            end
        end
    end
    return uG_1
end
qk = fn202
p7 = fn957
q7 = fn473
qN = fn220
qC = fn420
p2 = fn73
qj = fn434
rk = function()
    local vA
    vA = nil
    vA = {}
    local function vB(eQ)
        local vy = eQ:IsA("Tool") and eQ:GetAttribute("PlantID")
        if vy then
            vA[#vA + 1] = eQ
        end
    end
    for i, child in qg.Backpack:GetChildren() do
        vB(child)
    end
    local Character = qg.Character
    if Character then
        for i, child in Character:GetChildren() do
            vB(child)
        end
    end
    return vA
end
pX = function()
    local vU = qu("PlantPlants")
    if not next(vU) then
        return false
    end
    local vV = qX("PlantIgnoreIfNotSeed")
    local vW = rd()
    local vX = p2(vW)
    local vW_1 = {}
    for k, v in vX do
        if v.empty then
            vW_1[#vW_1 + 1] = v
        end
    end
    if #vW_1 == 0 then
        return false
    end
    local vX_1 = qK()
    local vY = qs()
    if not vX_1 or not vY then
        return false
    end
    local vZ_1 = 1
    local v__1 = false
    for k, v in rk() do
        local vT
        local v0 = Library.Unloaded or not qX("AutoPlant")
        if v0 then
            break
        elseif vZ_1 > #vW_1 then
            break
        else
            local v0_1 = vU[p7(v)]
            if v0_1 then
                local v1_1 = not vV or q7(v)
                v0_1 = v1_1
            end
            if v0_1 then
                local v0_2 = vW_1[vZ_1]
                vZ_1 += 1
                vX_1:EquipTool(v)
                task.wait(0.1)
                vT = qj(v0_2.part)
                vY.CFrame = CFrame.new(vT + Vector3.new(0, 4, 0))
                task.wait(0.08)
                local v1_2 = pcall(function()
                    p8:FireServer(vT)
                end)
                if v1_2 then
                    v__1 = true
                    v0_2.empty = false
                    task.wait(0.35)
                end
            end
        end
    end
    return v__1
end
if ((not ThemeManager or qS or not Options and not Toggles) and ((false or Toggles) and (rk or Options)) and ((qS and Options or (not ri or not ri)) and (not Options and false or not Options and Options)) or ((not Options or not Options) and (Toggles or not Toggles) and ((not ThemeManager or qS) and (not Options or Options)) or ((false or qS) and (ri and rk) or (not Options or ThemeManager or not ri and false)))) and not ((not ThemeManager or qS or not Options and not Toggles) and ((false or Toggles) and (rk or Options)) and ((qS and Options or (not ri or not ri)) and (not Options and false or not Options and Options)) or ((not Options or not Options) and (Toggles or not Toggles) and ((not ThemeManager or qS) and (not Options or Options)) or ((false or qS) and (ri and rk) or (not Options or ThemeManager or not ri and false)))) then
    rb = fn720
    qn = fn203
    qW = function()
        local wI = qu("ShovelPlants")
        if not next(wI) then
            return false
        end
        local wJ = qX("ShovelIgnoreFullyGrown")
        local wK = rd()
        local wL = qC(wK)
        if #wL == 0 then
            return false
        end
        local wK_3 = {}
        for k, v in wL do
            local wL_3 = wI[p7(v)]
            if wL_3 then
                local wM = wJ and qN(v)
                wL_3 = not wM
            end
            if wL_3 then
                wK_3[#wK_3 + 1] = v
            end
        end
        if #wK_3 == 0 then
            return false
        end
        qM("Shovel")
        local wI_2 = false
        for k, v in wK_3 do
            local w1 = v
            local wJ_5 = Library.Unloaded or not qX("AutoShovelPlants")
            if wJ_5 then
                break
            elseif w1.Parent then
                local wJ_6 = w1:FindFirstChild("Handle") or w1:FindFirstChildWhichIsA("BasePart", true)
                local wJ_7 = qs()
                if wJ_7 and wJ_6 then
                    wJ_7.CFrame = wJ_6.CFrame + Vector3.new(0, 3, 0)
                    task.wait(0.05)
                end
                local wJ_8 = pcall(function()
                    qi:FireServer(w1)
                end)
                if wJ_8 then
                    wI_2 = true
                    task.wait(0.2)
                end
            end
        end
        return wI_2
    end
    re = function()
        local w4 = rd()
        local w5 = qC(w4)
        if #w5 == 0 then
            return false
        elseif not qM(function(gG)
            return gG.Name == "Watering Can" or gG.Name == "Aqua Watering Can"
        end) then
            return false
        else
            local w4_2 = false
            for k, v in w5 do
                local xe = v
                local w5_5 = Library.Unloaded or not qX("AutoWaterPlants")
                if w5_5 then
                    break
                else
                    local w5_6 = xe:FindFirstChild("Handle") or xe:FindFirstChildWhichIsA("BasePart", true)
                    local w5_7 = qs()
                    if w5_7 and w5_6 then
                        w5_7.CFrame = w5_6.CFrame + Vector3.new(0, 3, 0)
                        task.wait(0.05)
                    end
                    local w5_8 = pcall(function()
                        qr:FireServer(xe)
                    end)
                    if w5_8 then
                        w4_2 = true
                        task.wait(0.15)
                    end
                end
            end
            return w4_2
        end
    end
    qb = fn844
else
    qn = fn720
    rb = fn203
    qb = function()
        local wI = qu("ShovelPlants")
        if not next(wI) then
            return false
        end
        local wJ = qX("ShovelIgnoreFullyGrown")
        local wK = rd()
        local wL = qC(wK)
        if #wL == 0 then
            return false
        end
        local wK_1 = {}
        for k, v in wL do
            local wL_1 = wI[p7(v)]
            if wL_1 then
                local wM = wJ and qN(v)
                wL_1 = not wM
            end
            if wL_1 then
                wK_1[#wK_1 + 1] = v
            end
        end
        if #wK_1 == 0 then
            return false
        end
        qM("Shovel")
        local wI_1 = false
        for k, v in wK_1 do
            local w1 = v
            local wJ_1 = Library.Unloaded or not qX("AutoShovelPlants")
            if wJ_1 then
                break
            elseif w1.Parent then
                local wJ_2 = w1:FindFirstChild("Handle") or w1:FindFirstChildWhichIsA("BasePart", true)
                local wJ_3 = qs()
                if wJ_3 and wJ_2 then
                    wJ_3.CFrame = wJ_2.CFrame + Vector3.new(0, 3, 0)
                    task.wait(0.05)
                end
                local wJ_4 = pcall(function()
                    qi:FireServer(w1)
                end)
                if wJ_4 then
                    wI_1 = true
                    task.wait(0.2)
                end
            end
        end
        return wI_1
    end
    qW = function()
        local w4 = rd()
        local w5 = qC(w4)
        if #w5 == 0 then
            return false
        elseif not qM(function(gG)
            return gG.Name == "Watering Can" or gG.Name == "Aqua Watering Can"
        end) then
            return false
        else
            local w4_1 = false
            for k, v in w5 do
                local xe = v
                local w5_1 = Library.Unloaded or not qX("AutoWaterPlants")
                if w5_1 then
                    break
                else
                    local w5_2 = xe:FindFirstChild("Handle") or xe:FindFirstChildWhichIsA("BasePart", true)
                    local w5_3 = qs()
                    if w5_3 and w5_2 then
                        w5_3.CFrame = w5_2.CFrame + Vector3.new(0, 3, 0)
                        task.wait(0.05)
                    end
                    local w5_4 = pcall(function()
                        qr:FireServer(xe)
                    end)
                    if w5_4 then
                        w4_1 = true
                        task.wait(0.15)
                    end
                end
            end
            return w4_1
        end
    end
    re = fn844
end
q0 = fn628
qL = function()
    local xm
    xm = {}
    local function xn(g2)
        if not g2:IsA("Tool") then
            return
        end
        if not g2:GetAttribute("PlantID") then
            return
        end
        if g2:GetAttribute("MergeCount") == nil then
            return
        end
        if g2:GetAttribute("IsEgg") == true then
            return
        end
        local xh = g2:GetAttribute("PlantName") or g2.Name
        local xh_1 = re(g2)
        local xj = xh .. "\x00" .. xh_1
        local xk = xm[xj]
        if not xk then
            xk = { name = xh, stars = xh_1, tools = {} }
            xm[xj] = xk
        end
        xk.tools[#xk.tools + 1] = g2
    end
    for i, child in qg.Backpack:GetChildren() do
        xn(child)
    end
    local Character = qg.Character
    if Character then
        for i, child in Character:GetChildren() do
            xn(child)
        end
    end
    return xm
end
qf = function()
    local xD = qu("MergeStars")
    if not next(xD) then
        return false
    end
    local FusionMachine = qp:FindFirstChild("FusionMachine")
    if not FusionMachine then
        return false
    end
    local Plant1 = FusionMachine:FindFirstChild("Plant1")
    local Plant2 = FusionMachine:FindFirstChild("Plant2")
    local Merge = FusionMachine:FindFirstChild("Merge")
    if not (Plant1 and Plant2 and Merge) then
        return false
    end
    local xE_2 = qL()
    local xI_1 = nil
    local name
    local stars
    for k, v in xE_2 do
        local xE_3 = xD[q0(v.stars)] and #v.tools >= 2
        if xE_3 then
            xI_1 = { v.tools[1], v.tools[2] }
            name = v.name
            stars = v.stars
            break
        end
    end
    if not xI_1 then
        return false
    end
    local xD_1 = qs()
    local xE_4 = qK()
    if not xD_1 or not xE_4 then
        return false
    end
    xE_4:EquipTool(xI_1[1])
    xD_1.CFrame = Plant1.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.1)
    qS(Plant1:FindFirstChildOfClass("ProximityPrompt"))
    task.wait(0.45)
    local xF_1 = xI_1[2]
    if not xF_1.Parent then
        for k, v in qL() do
            if v.name == name and v.stars == stars and #v.tools >= 1 then
                xF_1 = v.tools[1]
                break
            end
        end
    end
    if not xF_1 or not xF_1.Parent then
        return true
    end
    xE_4:EquipTool(xF_1)
    xD_1.CFrame = Plant2.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.1)
    qS(Plant2:FindFirstChildOfClass("ProximityPrompt"))
    task.wait(0.45)
    pcall(function()
        rh:FireServer(true)
    end)
    task.wait(0.1)
    pcall(function()
        rh:FireServer()
    end)
    xD_1.CFrame = Merge.CFrame + Vector3.new(0, 3, 0)
    qS(Merge:FindFirstChildOfClass("ProximityPrompt"))
    local Fusion = PlayerGui:FindFirstChild("Fusion")
    local xE_5 = Fusion and Fusion:FindFirstChild("ProceedButton", true)
    local xD_3 = xE_5
    if xE_5 then
        xE_5 = getconnections
    end
    if xE_5 then
        for k, v in getconnections(xD_3.MouseButton1Click) do
            local x5 = v
            pcall(function()
                if x5.Function then
                    x5.Function()
                end
            end)
        end
    end
    task.wait(0.4)
    return true
end
qe = false
p4 = function()
    local x7
    local x8
    local connection
    if qe then
        return false
    elseif qD() < qO then
        return false
    else
        qe = true
        x7 = false
        x8 = false
        connection = nil
        connection = q8.OnClientEvent:Connect(function(h1)
            x8 = true
            x7 = h1 == "NoFunds"
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end)
        local ya = pcall(function()
            q8:FireServer()
        end)
        if not ya then
            if connection then
                connection:Disconnect()
            end
            qe = false
            return false
        end
        local ya_1 = os.clock() + 12
        while true do
            local yb = not x8 and os.clock() < ya_1 and not Library.Unloaded and qX("AutoSpin")
            if yb then
                task.wait(0.1)
                continue
            end
            break
        end
        if connection then
            connection:Disconnect()
        end
        qe = false
        if not x8 or x7 then
            return false
        end
        task.wait(2.5)
        return true
    end
end
qP = fn254
local Bp_2_5 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = qB, Copyable = true }, "|", qH },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
p5 = {
    Info = Bp_2_5:AddTab("Info", "info"),
    Main = Bp_2_5:AddTab("Main", "sprout"),
    Player = Bp_2_5:AddTab("Player", "person-standing"),
    Settings = Bp_2_5:AddTab("Settings", "settings")
}
for k, v in p5 do
    if k ~= "Info" then
        fn509(v)
    end
end
local ShopGroup = p5.Main:AddLeftGroupbox("Shop", "store")
ShopGroup:AddToggle("AutoBuySeedsEggs", { Text = "Auto Buy Seeds & Eggs", Default = false })
ShopGroup:AddDropdown("BuySeeds", { Text = "Seeds", Values = rp_2, Default = p3, Multi = true, Expandable = true, ExpandColumns = 2 })
ShopGroup:AddDropdown("BuyEggs", { Text = "Eggs", Values = Bp_2_4, Default = qG, Multi = true })
ShopGroup:AddDivider("Gear")
ShopGroup:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
ShopGroup:AddDropdown("BuyGears", { Text = "Gears", Values = rt, Default = qa, Multi = true })
ShopGroup:AddDivider("Farmers")
ShopGroup:AddToggle("AutoBuyFarmer", { Text = "Auto Buy Farmer", Default = false })
ShopGroup:AddDropdown("BuyFarmers", { Text = "Farmers", Values = p_, Default = rj, Multi = true })
local Bp_9_2 = p5.Main:AddRightGroupbox("Garden", "flower")
Bp_9_2:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
Bp_9_2:AddDivider("Plant")
Bp_9_2:AddToggle("AutoPlant", { Text = "Auto Plant", Default = false })
Bp_9_2:AddToggle("PlantIgnoreIfNotSeed", { Text = "Ignore If Not Seed", Default = true })
Bp_9_2:AddDropdown("PlantPlants", { Text = "Plants", Values = rp_2, Default = pW, Multi = true, Expandable = true, ExpandColumns = 2 })
Bp_9_2:AddDivider("Sell")
Bp_9_2:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
Bp_9_2:AddDropdown("SellMode", { Text = "Mode", Values = rq_2, Default = "Selected" })
Bp_9_2:AddDropdown("SellPlants", { Text = "Plants", Values = rp_2, Default = rc, Multi = true, Expandable = true, ExpandColumns = 2 })
Bp_9_2:AddDivider("Shovel")
Bp_9_2:AddToggle("AutoShovelPlants", { Text = "Auto Shovel Plants", Default = false })
Bp_9_2:AddToggle("ShovelIgnoreFullyGrown", { Text = "Ignore Fully Grown", Default = true })
Bp_9_2:AddDropdown("ShovelPlants", { Text = "Plants", Values = rp_2, Default = q5, Multi = true, Expandable = true, ExpandColumns = 2 })
Bp_9_2:AddDivider("Merge")
Bp_9_2:AddToggle("AutoMergePlants", { Text = "Auto Merge Plants", Default = false })
Bp_9_2:AddDropdown("MergeStars", { Text = "Stars", Values = rs, Default = qV, Multi = true })
Bp_9_2:AddToggle("AutoWaterPlants", { Text = "Auto Water Plants", Default = false })
local Bp_2_6 = p5.Main:AddRightGroupbox("Spin", "rotate-cw")
if Bp_9_2 or Bp_2_6 or Bp_9_2 and 28 or (Bp_9_2 or (ShopGroup or Bp_9_2)) or (not Bp_9_2) and (not Bp_2_6 and false) and ((not Bp_2_6 or Bp_2_6) and ShopGroup) or not (Bp_9_2 or Bp_2_6 or Bp_9_2 and 28 or (Bp_9_2 or (ShopGroup or Bp_9_2)) or (not Bp_9_2) and (not Bp_2_6 and false) and ((not Bp_2_6 or Bp_2_6) and ShopGroup)) then
    Bp_2_6:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
    Bp_2_6:AddToggle("HideSpinInterface", { Text = "Hide Spin Interface", Default = false })
else
    Bp_2_6:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
    Bp_2_6:AddToggle("HideSpinInterface", { Text = "Hide Spin Interface", Default = false })
end
local function ro_7()
    local y0
    local y_
    y_ = nil
    y0 = nil
    local Label, Label2, Label3, y4, y5
    local function y6()
        local yh = hookfunction ~= nil
        local yi = hookmetamethod ~= nil
        local yj = getrawmetatable ~= nil
        local yk = setrawmetatable ~= nil
        local yl = getgc ~= nil
        local ym = getgenv ~= nil
        local yn = getreg ~= nil
        local yo = getconnections ~= nil
        local yp = firesignal ~= nil
        local yq = getcallbackvalue ~= nil
        local yr = setclipboard ~= nil
        local ys = getcustomasset ~= nil
        local yt = getnamecallmethod ~= nil
        local yu = isexecutorclosure ~= nil
        local yv = fireproximityprompt ~= nil
        local yw = firetouchinterest ~= nil
        local yx = WebSocket ~= nil
        local yy = readfile ~= nil
        local yz = writefile ~= nil
        local yB = (request or http_request) ~= nil
        local yD = (debug and debug.getupvalues) ~= nil
        local yF = (debug and debug.setupvalue) ~= nil
        local yG = 0
        local yH = { yh, yi, yj, yk, yl, ym, yn, yo, yp, yq, yr, ys, yt, yu, yv, yw, yx, yy, yz, yB, yD, yF }
        for i, v in ipairs(yH) do
            if v then
                yG += 1
            end
        end
        local yh_1 = yG / #yH
        if yh_1 >= 0.9 then
            return rf("Full Support", qm)
        elseif yh_1 >= 0.6 then
            return rf("Half Support", p1)
        else
            return rf("Low Support", ra)
        end
    end
    y_ = "Unknown"
    pcall(function()
        local yQ_1
        local yP_1
        if identifyexecutor then
            yQ_1, yP_1 = identifyexecutor()
            local yR = yQ_1 ~= ""
            local yS = type(yQ_1) == "string" and yR
            if yS then
                local yR_1 = type(yP_1) == "string" and yP_1 ~= "" and yQ_1 .. " " .. yP_1
                y_ = yR_1 or yQ_1
            end
        end
    end)
    local y7 = y6()
    y0 = os.clock()
    y4 = function()
        local yU = math.floor(os.clock() - y0)
        if yU < 60 then
            return yU .. "s"
        elseif yU < 3600 then
            return string.format("%dm %ds", yU // 60, yU % 60)
        else
            return string.format("%dh %dm", yU // 3600, yU % 3600 // 60)
        end
    end
    local UserGroup = p5.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = qg, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(qU("User", qg.DisplayName .. " @" .. qg.Name, qm), true)
    UserGroup:AddLabel(qU("UserId", tostring(qg.UserId), qd), true)
    UserGroup:AddLabel(qU("Executor", y_ .. "  " .. y7, qm), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(qU("Session", y4(), p1), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            qq(qg.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            qq("https://www.roblox.com/users/" .. tostring(qg.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = p5.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(qU("Game", qH, qd), true)
    Label2 = SessionGroup:AddLabel(qU("Players", "0/0", qm), true)
    y5 = tostring(game.JobId)
    local y7_1 = #y5 > 18 and string.sub(y5, 1, 18) .. "..."
    local y7_2 = y7_1 or y5
    SessionGroup:AddLabel(qU("Job", y7_2, pV), true)
    Label = SessionGroup:AddLabel(qU("Ping", "0 ms", p1), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            qv:Teleport(game.PlaceId, qg)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            qq(y5, "Copied Job ID")
        end
    })
    task.spawn(function()
        local yX_1
        local yW_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(qU("Session", y4(), p1))
            Label2:SetText(qU("Players", #pT:GetPlayers() .. "/" .. tostring(pT.MaxPlayers), qm))
            yW_1, yX_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local yW_2 = yW_1 and yX_1 .. " ms" or "n/a"
            Label:SetText(qU("Ping", yW_2, p1))
        end
    end)
    local SocialsGroup = p5.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = rg })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            qq(qx, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            qq(qt, "Copied website link")
        end
    })
end
local function rw()
    local MovementGroup = p5.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = p5.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local CurrentCamera = qp.CurrentCamera
    local connection
    local function jM(jN)
        pcall(function()
            qy:SetGameplayPausedNotificationEnabled(not jN)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = qE:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not jN
            end
        end)
        if not jN then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(qg, "GameplayPaused", false)
            else
                qg.GameplayPaused = false
            end
        end)
    end
    local function j_(j0)
        if not j0:IsA("ProximityPrompt") then
            return
        end
        j0.HoldDuration = 0
        j0.MaxActivationDistance = 50
        j0.RequiresLineOfSight = false
    end
    q4.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if qX("NoClip") then
            local Character = qg.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local zi_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if zi_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    qZ.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if qX("InfJump") then
            local zq = qK()
            if zq then
                zq:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    q4.RenderStepped:Connect(function(kh)
        if Library.Unloaded then
            return
        end
        if qX("WalkSpeedEnabled") then
            local zv_1 = qK()
            if zv_1 then
                zv_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if qX("Fly") then
            local zv_2 = qs()
            local zw = qK()
            if zv_2 and zw then
                zw.PlatformStand = true
                local zw_1 = Vector3.zero
                if qZ:IsKeyDown(Enum.KeyCode.W) then
                    zw_1 += CurrentCamera.CFrame.LookVector
                end
                if qZ:IsKeyDown(Enum.KeyCode.S) then
                    zw_1 -= CurrentCamera.CFrame.LookVector
                end
                if qZ:IsKeyDown(Enum.KeyCode.A) then
                    zw_1 -= CurrentCamera.CFrame.RightVector
                end
                local zB = if qZ:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if zB == 1 then
                    zw_1 += CurrentCamera.CFrame.RightVector
                end
                if qZ:IsKeyDown(Enum.KeyCode.Space) then
                    zw_1 += Vector3.new(0, 1, 0)
                end
                if qZ:IsKeyDown(Enum.KeyCode.LeftControl) then
                    zw_1 -= Vector3.new(0, 1, 0)
                end
                zv_2.Velocity = Vector3.zero
                if zw_1.Magnitude > 0 then
                    zv_2.CFrame = zv_2.CFrame + zw_1.Unit * Options.FlySpeed.Value * kh
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local zC = qK()
            if zC then
                zC.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local zE = qK()
            if zE then
                zE.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        jM(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                jM(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(qp:GetDescendants()) do
                pcall(j_, descendant)
            end
            connection = qp.DescendantAdded:Connect(function(kO)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(j_, kO)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        jM(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
ro_7()
rw()
if Toggles.AutoSpin then
    Toggles.AutoSpin:OnChanged(function()
        pcall(function()
            q3:FireServer(false)
        end)
    end)
end
if Toggles.HideSpinInterface then
    Toggles.HideSpinInterface:OnChanged(function()
        qP(Toggles.HideSpinInterface.Value == true)
    end)
end
task.spawn(worker2)
local function Bp_2_7()
    local A8, A9, Ba, Bb, Bc, Bd, Be, connection, Label
    local MenuGroup = p5.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    A9 = 0
    Bd = tick()
    Label = nil
    Ba = function()
        local CurrentCamera = qp.CurrentCamera
        if not CurrentCamera then
            return
        end
        qR:CaptureController()
        qR:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        A9 += 1
        Bd = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. A9)
            end)
        end
    end
    connection = qg.Idled:Connect(function()
        if qX("AntiAfk") then
            pcall(Ba)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local zX = qX("AntiAfk") and tick() - Bd >= 60
            if zX then
                pcall(Ba)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        pcall(function()
            q3:FireServer(false)
        end)
        qP(false)
        for k, v in q9 do
            local z4 = v
            pcall(function()
                z4:Disconnect()
            end)
        end
        table.clear(q9)
        if getgenv then
            getgenv().__OuroborosMyFarmersGardenLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(p5.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/MyFarmersGarden")
    local Bh_1 = SaveManager:BuildConfigSection(p5.Settings)
    Bc = function(lU, lV)
        local z6_1 = (lU == "Toggle" and Toggles or Options)[lV]
        local z5_2 = type(z6_1) == "table" and z6_1.Type == lU
        return z5_2 and z6_1 or nil
    end
    Be = function(l2, l3)
        local Type = l3.Type
        if Type == "Toggle" then
            return { idx = l2, type = "Toggle", value = l3.Value == true }
        elseif Type == "Slider" then
            return { idx = l2, type = "Slider", value = tostring(l3.Value) }
        elseif Type == "Dropdown" then
            return { idx = l2, type = "Dropdown", multi = l3.Multi == true, value = l3.Value }
        elseif Type == "Input" then
            local Ag = l3.Value or ""
            return { idx = l2, type = "Input", text = tostring(Ag) }
        elseif Type == "ColorPicker" then
            return { idx = l2, type = "ColorPicker", value = l3.Value:ToHex(), transparency = l3.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = l2,
                type = "KeyPicker",
                mode = l3.Mode,
                key = l3.Value,
                modifiers = l3.Modifiers,
                toggled = l3.Toggled
            }
        else
            return nil
        end
    end
    A8 = function()
        local Aj = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local Ak = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if Ak then
                    local Ak_1 = Be(k, v)
                    if Ak_1 then
                        Aj[#Aj + 1] = Ak_1
                    end
                end
            end
        end
        table.sort(Aj, function(mf, mg)
            if mf.type ~= mg.type then
                return mf.type < mg.type
            end
            return mf.idx < mg.idx
        end)
        return { objects = Aj }
    end
    Bb = function(mi)
        local AD
        AD = nil
        local AE = type(mi) ~= "table" or type(mi.idx) ~= "string" or type(mi.type) ~= "string"
        local AI = if AE then 1 else 0
        local AG = 2476 * AI + 3639 * (1 - AI)
        local AH = 1436 * AI + 843 * (1 - AI)
        if not ((AG * 3676 + AH * 2281 + AG * AH) % 16777213 == 15932828) then
            AE = SaveManager.Ignore[mi.idx]
        end
        if AE then
            return false
        end
        AD = Bc(mi.type, mi.idx)
        if not AD then
            return false
        end
        local AE_1 = pcall(function()
            if mi.type == "Input" then
                if type(mi.text) ~= "string" then
                    return
                end
                AD:SetValue(mi.text)
            elseif mi.type == "ColorPicker" then
                AD:SetValueRGB(Color3.fromHex(mi.value), mi.transparency)
            elseif mi.type == "KeyPicker" then
                AD:SetValue({ mi.key, mi.mode, mi.modifiers })
                if mi.mode == "Toggle" and mi.toggled ~= nil then
                    AD.Toggled = mi.toggled
                    AD:Update()
                end
            else
                AD:SetValue(mi.value)
            end
        end)
        return AE_1
    end
    Bh_1:AddDivider()
    Bh_1:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    Bh_1:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local AK_1
            local AJ_1
            AJ_1, AK_1 = pcall(qI.JSONEncode, qI, A8())
            if not AJ_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local AJ_2 = setclipboard or toclipboard
            local AJ_3 = type(AJ_2) ~= "function"
            local AP = if AJ_3 then 1 else 0
            local AN = 3891 * AP + 240 * (1 - AP)
            local AO = 2909 * AP + 1316 * (1 - AP)
            if not ((AN * 135 + AO * 79 + AN * AO) % 16777213 == 12074015) then
                AJ_3 = not pcall(AJ_2, AK_1)
            end
            if AJ_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    Bh_1:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local AS_1
            local AQ = Options.SaveManager_ImportSource.Value or ""
            local AQ_1
            local AR = tostring(AQ):match("^%s*(.-)%s*$")
            if AR == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            AQ_1, AS_1 = pcall(qI.JSONDecode, qI, AR)
            local AR_1 = not AQ_1 or type(AS_1) ~= "table" or type(AS_1.objects) ~= "table"
            if AR_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local AQ_2 = 0
            for i, v in ipairs(AS_1.objects) do
                if Bb(v) then
                    AQ_2 += 1
                end
            end
            if AQ_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local AS_2 = AQ_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(AQ_2, AS_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
    local function Bh_2(mM)
        local A_ = Options[mM]
        local A__1 = A_ and A_.Value
        if type(A__1) ~= "table" then
            return true
        end
        for k, v in A__1 do
            if v == true then
                return false
            end
        end
        return true
    end
    local Bi = Bh_2("BuySeeds") and Options.BuySeeds
    if Bi then
        Options.BuySeeds:SetValue(p3)
    end
    local Bi_1 = Bh_2("BuyEggs") and Options.BuyEggs
    if Bi_1 then
        Options.BuyEggs:SetValue(qG)
    end
    local Bi_2 = Bh_2("BuyGears") and Options.BuyGears
    if Bi_2 then
        Options.BuyGears:SetValue(qa)
    end
    local Bi_3 = Bh_2("BuyFarmers") and Options.BuyFarmers
    if Bi_3 then
        Options.BuyFarmers:SetValue(rj)
    end
    local Bi_4 = Bh_2("PlantPlants") and Options.PlantPlants
    if Bi_4 then
        Options.PlantPlants:SetValue(pW)
    end
    local Bi_5 = Bh_2("SellPlants") and Options.SellPlants
    if Bi_5 then
        Options.SellPlants:SetValue(rc)
    end
    local Bi_6 = Bh_2("ShovelPlants") and Options.ShovelPlants
    if Bi_6 then
        Options.ShovelPlants:SetValue(q5)
    end
    local Bi_7 = Bh_2("MergeStars") and Options.MergeStars
    if Bi_7 then
        Options.MergeStars:SetValue(qV)
    end
end
Bp_2_7()
