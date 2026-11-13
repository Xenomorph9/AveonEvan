local fns = {}
local uQ_1, uQ_2, uQ_4, uQ_5, UserInputService, uQ_7, uQ_11, uQ_12, uQ_14, uQ_15, uQ_16, uQ_19, uQ_21, uQ_23, MinerDataChanged, uQ_26, uQ_27
local n2
local ov
local nr
local n8
local m8
local nQ
local nx
local oe
local Toggles
local nD
local ol
local nk
local nJ
local connection
local n7
local nP
local nw
local od
local nd
local nV
local nC
local oj
local n0
local ot
local m6
local nO
local oz
local oc
local nU
local oF
local nB
local MyPlot
local Workspace
local Library
local m5
local nN
local oy
local nu
local ob
local nb
local Options
local oh
local nZ
local nG
local op
local nn
local n4
local m4
local ox
local oa
local na
local nS
local GetOreState
local og
local ng
local connection2
local ow
local ns
local n9
local m9
local nR
local ny
local of
local nf
local nX
function fns.fn18()
    local pY_1
    local pX_1
    pX_1, pY_1 = pcall(function()
        return GetOreState:InvokeServer()
    end)
    local pZ = pX_1 and type(pY_1) == "table"
    if pZ then
        local pX_2 = pY_1.carrying or 0
        nJ.carrying = pX_2
        local pX_3 = pY_1.stock or 0
        nJ.stock = pX_3
        local pX_4 = pY_1.banked or 0
        nJ.banked = pX_4
        local pX_5 = pY_1.rate or 0
        nJ.rate = pX_5
        local pX_6 = pY_1.upgradeCost or 0
        nJ.upgradeCost = pX_6
        local pX_7 = pY_1.level or 0
        nJ.level = pX_7
    end
    return nJ
end
function fns.fn23(aw, ax)
    return string.format('<font color="%s">%s</font>', ax, aw)
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn66(a4)
    return next(nf(a4)) ~= nil
end
function fns.fn74()
    local qA = oz()
    if not qA then
        return nil
    end
    local Lever = qA:FindFirstChild("Lever", true)
    if not Lever then
        return nil
    end
    return Lever:FindFirstChildWhichIsA("ProximityPrompt", true)
end
function fns.fn88()
    local Character = ol.Character
    local qf = Character and Character:FindFirstChild("HumanoidRootPart")
    return qf
end
function fns.onOnClientEvent4(cl)
    if cl == "start" then
        n9 = true
        n4 = 0
    elseif cl == "land" then
        n9 = false
        n4 = os.clock()
    end
end
function fns.onOnClientEvent3(bJ)
    if type(bJ) == "table" then
        nG = bJ
    end
end
function fns.fn105()
    local Character = ol.Character
    local qi = Character and Character:FindFirstChildOfClass("Humanoid")
    return qi
end
function fns.fn144()
    local rs = {}
    local rt = ot()
    if not rt then
        return rs
    end
    for i, descendant in ipairs(rt:GetDescendants()) do
        local rt_1 = descendant:IsA("Model") and descendant:GetAttribute("PickaxeSetup")
        if rt_1 then
            table.insert(rs, descendant)
        end
    end
    return rs
end
function fns.fn146(eK)
    local sw = {}
    local SpinDisplays = Workspace:FindFirstChild("SpinDisplays")
    local sy = nn()
    if not (SpinDisplays and sy) then
        return sw
    end
    local sz_1 = eK or 70
    for i, child in ipairs(SpinDisplays:GetChildren()) do
        local BuyPrompt = child:FindFirstChild("BuyPrompt", true)
        local sz_2 = BuyPrompt and BuyPrompt:IsA("ProximityPrompt") and BuyPrompt.Enabled
        if sz_2 then
            local sz_3 = nd(BuyPrompt)
            if sz_3 and (sz_3 - sy).Magnitude <= sz_1 then
                local insert = table.insert
                local Name = child.Name
                local ObjectText = BuyPrompt.ObjectText
                local sE = nB(BuyPrompt.ActionText) or m5[child.Name]
                local sF = sE or 0
                insert(sw, {
                    stand = child,
                    prompt = BuyPrompt,
                    name = Name,
                    object = ObjectText,
                    price = sF,
                    distance = (sz_3 - sy).Magnitude
                })
            end
        end
    end
    table.sort(sw, function(e0, e1)
        return e0.distance < e1.distance
    end)
    return sw
end
function fns.fn159(b0)
    local qk = oz()
    if not qk then
        return 0
    end
    local ql = tonumber(qk:GetAttribute(b0)) or 0
    return ql
end
function fns.fn175(dm)
    local rl = n0()
    if not rl or not dm then
        return false
    end
    local Character = ol.Character
    local rn_1 = Character and Character:FindFirstChildOfClass("Tool")
    local rm_2 = rn_1
    if rn_1 then
        rn_1 = rm_2.Name == dm
    end
    if rn_1 then
        return true
    end
    local Backpack = ol:FindFirstChildOfClass("Backpack")
    local rn_2 = Backpack and Backpack:FindFirstChild(dm)
    if not rn_2 then
        return false
    end
    rl:EquipTool(rn_2)
    return true
end
function fns.worker()
    nC()
    na()
    oj()
end
function fns.onOnClientEvent(bz)
    if type(bz) == "table" then
        nQ = bz
    end
end
function fns.fn269(cG)
    local qS = os.clock()
    local qT = cG or 6
    while true do
        local qT_1 = not Library.Unloaded and os.clock() - qS < qT
        if qT_1 then
            local qT_2 = not n9 and n4 > 0 and os.clock() - n4 < 4
            if qT_2 then
                return true
            end
            task.wait(0.05)
            continue
        end
        break
    end
    n9 = false
    return true
end
function fns.fn277(aO, aP)
    local pE = Options[aO]
    if pE == nil then
        return aP
    end
    return pE.Value
end
function fns.fn290()
    local qN = oz()
    if not qN then
        return nil
    end
    return qN:GetPivot().Position
end
local function fn300(aX)
    local pI = nP(aX, {})
    if typeof(pI) ~= "table" then
        return {}
    end
    local pJ = {}
    for k, v in pairs(pI) do
        if v == true then
            pJ[k] = true
        else
            local pI_1 = typeof(k) == "number" and typeof(v) == "string"
            if pI_1 then
                pJ[v] = true
            end
        end
    end
    return pJ
end
local function fn313(cU)
    local q0 = cU and cU:IsA("Tool") and nU.getEntry(cU.Name) ~= nil
    return q0
end
local function onPlatformDown()
    pcall(function()
        nR:InvokeServer(-1)
    end)
end
local function fn321(aI)
    if Library.Unloaded then
        return false
    end
    local pB = Toggles[aI]
    return pB ~= nil and pB.Value == true
end
local function fn335(fx)
    local DiscordGroup = fx:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nw })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nw })
end
local function fn340(c0)
    local Backpack = ol:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            if child:IsA("Tool") then
                c0(child)
            end
        end
    end
    local Character = ol.Character
    if Character then
        local Tool = Character:FindFirstChildOfClass("Tool")
        if Tool then
            c0(Tool)
        end
    end
end
local function fn359(cD)
    return nf("UpgradeTargets")[cD] == true
end
local function fn364(cz)
    local qQ = cz and cz.Parent
    while true do
        if not qQ then
            return nil
        end
        if qQ:IsA("BasePart") then
            return qQ.Position
        end
        if qQ:IsA("Model") then
            break
        end
        qQ = qQ.Parent
    end
    return qQ:GetPivot().Position
end
local function onInputBegan()
    ny = tick()
end
local function fn423()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    ow:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    ow:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    ns = tick()
end
local function fn435()
    local p1_1
    local p0_1
    p0_1, p1_1 = pcall(function()
        return of:InvokeServer()
    end)
    local p2 = p0_1 and type(p1_1) == "table"
    if p2 then
        nG = p1_1
    end
    return nG
end
local function fn471()
    local tb_1
    local ta_1
    if identifyexecutor then
        tb_1, ta_1 = identifyexecutor()
        local tc = tb_1 ~= ""
        local td = type(tb_1) == "string" and tc
        if td then
            local tc_1 = type(ta_1) == "string" and ta_1 ~= "" and tb_1 .. " " .. ta_1
            nx = tc_1 or tb_1
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        local tN = nr("RollDelay", 0.55)
        if oa("AutoSpin") then
            if not n9 then
                local tO = true
                local tP = ov() and not oa("AutoSkipUnaffordable")
                if tP then
                    tO = oc()
                end
                if tO then
                    local tO_1 = nS()
                    if tO_1 then
                        n4 = 0
                        oy(tO_1.Parent)
                        task.wait(0.1)
                        nu(tO_1)
                        op(6)
                        task.wait(0.25)
                        if ov() then
                            oc()
                        end
                    end
                end
            end
        elseif ov() then
            oc()
        end
        task.wait(tN)
    end
end
local function fn490(cY)
    local q5 = cY and cY:IsA("Tool") and cY:GetAttribute("IsMiner") == true
    return q5
end
local function fn509(az, aA, aB)
    return string.format("<b>%s</b> %s %s", az, nk("-", "#5a6070"), nk(aA, aB))
end
local function fn533(ap, aq)
    if setclipboard then
        setclipboard(ap)
    elseif toclipboard then
        toclipboard(ap)
    end
    Library:Notify(aq)
end
local function fn555(dQ)
    if not dQ or not m8[dQ] then
        return false
    end
    local rR_1 = nP("PlaceMinPickaxe", "Basic")
    local rS = m8[rR_1]
    local rW = if rS then 1 else 0
    local rU = 2020 * rW + 3411 * (1 - rW)
    local rV = 2621 * rW + 2565 * (1 - rW)
    if not ((rU * 2754 + rV * 3111 + rU * rV) % 16777213 == 2234218) then
        rS = 1
    end
    if (m8[dQ] or 0) < rS then
        return false
    end
    local rR_3 = nf("PlacePickaxeTargets")
    local rS_2 = next(rR_3) and not rR_3[dQ]
    if rS_2 then
        return false
    end
    return true
end
local function fn574()
    connection:Disconnect()
    connection2:Disconnect()
    pcall(function()
        n8:FireServer(false, {})
    end)
end
local function fn591()
    if oa("AutoBuyAny") then
        return og(true)
    elseif oa("AutoBuyDisplays") then
        return og(false)
    else
        return true
    end
end
local function fn609()
    local s7 = oa("AutoBuyAny") or oa("AutoBuyDisplays")
    return s7
end
local function fn626(ct)
    local qH = ct or ""
    local qI = string.match(qH, "([%d,]+)")
    if not qI then
        return nil
    end
    return tonumber((string.gsub(qI, ",", "")))
end
local function fn633()
    m4()
end
local function onInputChanged(gC)
    local UserInputType = gC.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        ny = tick()
    end
end
local function fn652()
    nN(ob, "Copied Discord invite to clipboard")
end
local function onPlatformUp()
    pcall(function()
        nR:InvokeServer(1)
    end)
end
local function fn682()
    return MyPlot.lobby(1)
end
local function fn707()
    return MyPlot.mining(1)
end
local function onRollTargets()
    if oa("AutoSpecificRoll") then
        m4()
    end
end
local function fn775()
    local pU_1
    local pT_1
    pT_1, pU_1 = pcall(function()
        return ox:InvokeServer()
    end)
    local pV = pT_1 and type(pU_1) == "table"
    if pV then
        nQ = pU_1
    end
    return nQ
end
local function onCopyJoinScript_JobID()
    local fO = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oF)
    nN(fO, "Copied join script to clipboard")
end
local function fn801(aT, aU)
    local pG = tonumber(nP(aT, aU)) or aU
    return pG
end
local function fn814(ce)
    local qs = oe()
    local qt = not ce
    local qu = not qs
    local qy = if qu then 1 else 0
    local qw = 2455 * qy + 3126 * (1 - qy)
    local qx = 2420 * qy + 2595 * (1 - qy)
    if not ((qw * 3448 + qx * 3793 + qw * qx) % 16777213 == 6807787) then
        qu = qt
    end
    if qu then
        return false
    elseif ce:IsA("Model") then
        local pivot = ce:GetPivot()
        qs.CFrame = pivot + Vector3.new(0, 4, 0)
        return true
    elseif ce:IsA("BasePart") then
        local CFrame = ce.CFrame
        qs.CFrame = CFrame + Vector3.new(0, 4, 0)
        return true
    else
        return false
    end
end
local function fn816(dG)
    for i, descendant in ipairs(dG:GetDescendants()) do
        local rB = descendant:IsA("ProximityPrompt") and descendant.Name == "PlacePrompt"
        if rB then
            return descendant
        end
    end
    return nil
end
local function fn826(e3)
    local sQ = nf("RollTargets")
    local sR = not e3
    if sR ~= false then
        sR = not next(sQ)
    end
    if sR then
        return true
    end
    local sR_1 = nQ or nC()
    local sS = sR_1
    if sR_1 then
        sR_1 = sS.cash
    end
    local sT = sR_1
    local s0 = if sT then 1 else 0
    local sZ = 1458 * s0 + 1565 * (1 - s0)
    local s_ = 2856 * s0 + 3419 * (1 - s0)
    if not ((sZ * 4020 + s_ * 424 + sZ * s_) % 16777213 == 11236152) then
        sT = 0
    end
    local sR_2 = sT
    local sT_1 = oa("AutoSkipUnaffordable")
    local sU = false
    for i, v in ipairs(nZ(70)) do
        if Library.Unloaded then
            break
        else
            local sV = v.object
            local sW = sV == ""
            local sX = typeof(sV) ~= "string" or sW
            if sX then
                sV = v.name
            end
            local sW_1 = not e3
            if sW_1 ~= false then
                sW_1 = not sQ[sV]
            end
            if not sW_1 then
                if v.price > sR_2 then
                    if not sT_1 then
                        sU = true
                    end
                else
                    oy(v.prompt.Parent)
                    task.wait(0.12)
                    if nu(v.prompt) then
                        local sR_3 = sR_2 - v.price
                        task.wait(0.2)
                        local sS_1 = nC()
                        sR_2 = sS_1 and sS_1.cash or sR_3
                    end
                end
            end
        end
    end
    return not sU
end
local function onOnClientEvent2(bB)
    if type(bB) ~= "table" then
        return
    end
    local p8 = bB.carrying or nJ.carrying
    nJ.carrying = p8
    local p8_1 = bB.stock
    local qc = if p8_1 then 1 else 0
    local qa = 3801 * qc + 2051 * (1 - qc)
    local qb = 2473 * qc + 2412 * (1 - qc)
    if not ((qa * 810 + qb * 1920 + qa * qb) % 16777213 == 449630) then
        p8_1 = nJ.stock
    end
    nJ.stock = p8_1
    local p8_2 = bB.banked or nJ.banked
    nJ.banked = p8_2
    local p8_3 = bB.rate
    local qc_1 = if p8_3 then 1 else 0
    local qa_1 = 493 * qc_1 + 1417 * (1 - qc_1)
    local qb_1 = 2692 * qc_1 + 949 * (1 - qc_1)
    if not ((qa_1 * 3934 + qb_1 * 3139 + qa_1 * qb_1) % 16777213 == 11716806) then
        p8_3 = nJ.rate
    end
    nJ.rate = p8_3
    local p8_4 = bB.upgradeCost or nJ.upgradeCost
    nJ.upgradeCost = p8_4
    local p8_5 = bB.level or nJ.level
    nJ.level = p8_5
end
local function fn855(cP, cQ)
    if not cP then
        return -1
    elseif cQ == "Money" then
        return m5[cP] or 0
    else
        return m8[cP] or 0
    end
end
local function onRscripts()
    nN(n7, "Copied Rscripts profile to clipboard")
end
local function fn866()
    local r4_1
    local r3_1
    local r8_2
    local r1 = nP("PlaceCompareBy", "Rarity")
    local r2 = nP("PlacePickaxeMode", "Replace Worse")
    r4_1, r3_1 = nX(r1)
    if not r4_1 then
        return
    end
    local r5 = math.huge
    local r6
    local r7
    for i, v in ipairs(n2()) do
        local attr = v:GetAttribute("Pickaxe")
        local r9 = attr == ""
        local sa = typeof(attr) ~= "string" or r9
        if sa then
            r6 = r6 or v
        else
            local r9_2 = nO(attr, r1)
            if r9_2 < r5 then
                r5 = r9_2
                r7 = v
            end
        end
    end
    if r2 == "Empty Only" then
        r8_2 = r6
    else
        r8_2 = r6
        local r1_1 = not r8_2
        if r1_1 ~= false then
            r1_1 = r7
        end
        if r1_1 then
            r1_1 = r3_1 > r5
        end
        if r1_1 then
            r8_2 = r7
        end
    end
    if not r8_2 then
        return
    end
    if not ng(r4_1) then
        return
    end
    task.wait(0.15)
    local r1_2 = nD(r8_2)
    if not r1_2 then
        return
    end
    oy(r8_2)
    task.wait(0.1)
    nu(r1_2)
end
local function onTeleportPlot()
    pcall(function()
        nV:InvokeServer()
    end)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local uK = tick() - ny
            local uL = tick() - ns
            if uK >= 300 and uL >= 60 then
                pcall(nb)
            else
                if uK < 300 and uL >= 300 then
                    pcall(nb)
                end
            end
        end
    end
end
local function worker2()
    local tj_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local ti = math.floor(os.clock() - od)
        if ti < 60 then
            tj_1 = ti .. "s"
        elseif ti < 3600 then
            tj_1 = string.format("%dm %ds", ti // 60, ti % 60)
        else
            tj_1 = string.format("%dh %dm", ti // 3600, ti % 3600 // 60)
        end
        m6:SetText(m9("Session time", tj_1, oh))
    end
end
local function onTeleportToLever()
    local tm = nS()
    if tm then
        oy(tm.Parent)
    end
end
m4 = nil
m5 = nil
m6 = nil
m8 = nil
m9 = nil
na = nil
nb = nil
nd = nil
nf = nil
ng = nil
nk = nil
nn = nil
nr = nil
ns = nil
nu = nil
nw = nil
nx = nil
ny = nil
nB = nil
nC = nil
nD = nil
nG = nil
nJ = nil
nN = nil
nO = nil
nP = nil
nQ = nil
local m3, m7, nc, ne, nh, GetPickaxeInfo, nj, nl, ClaimOfflineEarnings, no, GetGroupReward, nq, nt, nv, nz, nA, BuyLuck, nF, nH, nI, nK, nL, ClaimDaily
nR = nil
nS = nil
Options = nil
nU = nil
nV = nil
Toggles = nil
nX = nil
nZ = nil
MyPlot = nil
n0 = nil
n2 = nil
connection2 = nil
n4 = nil
Library = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
of = nil
og = nil
oh = nil
oj = nil
ol = nil
op = nil
Workspace = nil
ot = nil
connection = nil
ov = nil
ow = nil
ox = nil
oy = nil
oz = nil
GetOreState = nil
oF = nil
local nY, n1, n6, oi, om, oo, oA, oB, oC, oE
nY = nil
n1 = nil
n6 = nil
oi = nil
om = nil
oo = nil
oA = nil
oB = nil
oC = nil
oE = nil
uQ_19, uQ_21, UserInputService, ow, Workspace, ol, uQ_15, ob, n7, uQ_1, MyPlot, uQ_11, nU, uQ_23, nK, nH, BuyLuck, nz, nt, no, nl, GetPickaxeInfo, nh, nc, m7, m3, GetOreState, uQ_14, ox, MinerDataChanged, om, of, uQ_4, n8, uQ_12, n1, nY, nV, nR, ClaimDaily, nI, nF, nA, nv, GetGroupReward, ClaimOfflineEarnings, nj, uQ_26, uQ_5, m8, m5, uQ_2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local uQ_9 = 53
repeat
    uQ_27 = (uQ_9 * 7 + 3) % 20 + 1
    if uQ_27 <= 10 then
        if uQ_27 <= 5 then
            if uQ_27 <= 3 then
                if uQ_27 <= 2 then
                    if uQ_27 <= 1 then
                        if (uQ_9 * 1 + 4) * 9 % 4 == ((uQ_9 * 1 + 4) * 9 + 4) % 4 then
                            MyPlot = require(uQ_21:WaitForChild("MyPlot"))
                        else
                            uQ_21 = require(MyPlot:WaitForChild("MyPlot"))
                        end
                        uQ_9 = (uQ_9 + 3) % 160
                    else
                        if uQ_9 * 48955353 + 4 + 6 <= uQ_9 * 48955353 + 4 + 6 + 1 then
                            uQ_11 = require(uQ_21:WaitForChild("PickaxeConfig"))
                        else
                            uQ_21 = require(uQ_11:WaitForChild("PickaxeConfig"))
                        end
                        uQ_9 = (uQ_9 + 63) % 160
                    end
                else
                    local v8 = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ_9, 8), string.byte(tostring(GetPickaxeInfo))), 1)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(v8, 875961783), 12), 1641771843) ~= bit32.lrotate(v8, 12) then
                        uQ_21 = require(nU:WaitForChild("PickaxeLib"))
                    else
                        nU = require(uQ_21:WaitForChild("PickaxeLib"))
                    end
                    uQ_9 = (uQ_9 + 63) % 160
                end
            elseif uQ_27 <= 4 then
                if uQ_9 * 10695755 + 12 + 5 <= uQ_9 * 10695755 + 12 + 5 + 6 then
                    uQ_23 = require(uQ_21:WaitForChild("MinerShopConfig"))
                else
                    uQ_21 = require(uQ_23:WaitForChild("MinerShopConfig"))
                end
                uQ_9 = (uQ_9 + 3) % 160
            else
                if (not m5 or m5) and (not ol or not ol) and (nc or nc or not m5 and nI) or not ((not m5 or m5) and (not ol or not ol) and (nc or nc or not m5 and nI)) then
                    nK = uQ_1:WaitForChild("BuyRoll")
                    nH = uQ_1:WaitForChild("BuyMiner")
                    BuyLuck = uQ_1:WaitForChild("BuyLuck")
                    nz = uQ_1:WaitForChild("BuyMutation")
                    nt = uQ_1:WaitForChild("BuyAxeSpeed")
                else
                    nt = BuyLuck:WaitForChild("BuyRoll")
                    uQ_1 = BuyLuck:WaitForChild("BuyMiner")
                    nz = BuyLuck:WaitForChild("BuyLuck")
                    nH = BuyLuck:WaitForChild("BuyMutation")
                    nK = BuyLuck:WaitForChild("BuyAxeSpeed")
                end
                uQ_9 = (uQ_9 + 83) % 160
            end
        elseif uQ_27 <= 8 then
            if uQ_27 <= 7 then
                if uQ_27 <= 6 then
                    if (uQ_9 * 3 + 6) * 17 % 4 == ((uQ_9 * 3 + 6) * 17 + 8) % 4 then
                        no = uQ_1:WaitForChild("BuyShopMiner")
                        nl = uQ_1:WaitForChild("UpgradePickaxe")
                        GetPickaxeInfo = uQ_1:WaitForChild("GetPickaxeInfo")
                        nh = uQ_1:WaitForChild("UpgradeProcessor")
                        nc = uQ_1:WaitForChild("CollectOre")
                    else
                        nh = GetPickaxeInfo:WaitForChild("BuyShopMiner")
                        no = GetPickaxeInfo:WaitForChild("UpgradePickaxe")
                        nc = GetPickaxeInfo:WaitForChild("GetPickaxeInfo")
                        uQ_1 = GetPickaxeInfo:WaitForChild("UpgradeProcessor")
                        nl = GetPickaxeInfo:WaitForChild("CollectOre")
                    end
                    uQ_9 = (uQ_9 + 83) % 160
                else
                    uQ_16 = (vector.create((uQ_9 * 7 + 9) % 11 + 1, (uQ_9 * 11 + 10) % 13 + 1, (uQ_9 * 5 + 9) % 17 + 1))
                    uQ_7 = (vector.create((uQ_9 * 6 + 3) % 11 + 1, (uQ_9 * 7 + 10) % 13 + 1, (uQ_9 * 7 + 12) % 17 + 1))
                    local vi = vector.cross(uQ_16, uQ_7)
                    local vj = vector.dot(uQ_16, uQ_7)
                    if vector.dot(vi, vi) + vj * vj == vector.dot(uQ_16, uQ_16) * vector.dot(uQ_7, uQ_7) + 3 then
                        uQ_1 = GetOreState:WaitForChild("MeltOre")
                        m7 = GetOreState:WaitForChild("CollectCash")
                        uQ_14 = GetOreState:WaitForChild("GetOreState")
                        ox = GetOreState:WaitForChild("OreStateChanged")
                        m3 = GetOreState:WaitForChild("GetMinerData")
                    else
                        m7 = uQ_1:WaitForChild("MeltOre")
                        m3 = uQ_1:WaitForChild("CollectCash")
                        GetOreState = uQ_1:WaitForChild("GetOreState")
                        uQ_14 = uQ_1:WaitForChild("OreStateChanged")
                        ox = uQ_1:WaitForChild("GetMinerData")
                    end
                    uQ_9 = (uQ_9 + 83) % 160
                end
            else
                if (uQ_9 * 3 + 9) * 13 % 4 == ((uQ_9 * 3 + 9) * 13 + 9) % 4 then
                    uQ_1 = MinerDataChanged:WaitForChild("MinerDataChanged")
                else
                    MinerDataChanged = uQ_1:WaitForChild("MinerDataChanged")
                end
                uQ_9 = (uQ_9 + 63) % 160
            end
        elseif uQ_27 <= 9 then
            uQ_16 = { "bfgtev", "xgozkuqpr", "hxh", "kis", "kxjtdycwc", "dwqxrk", "hfnw" }
            local wd = uQ_9
            uQ_7 = uQ_16[wd % 7 + 1]
            if uQ_7:len() >= uQ_7:reverse():rep(wd % 3 + 2):len() then
                uQ_1 = uQ_12:WaitForChild("DoRebirth")
                n8 = uQ_12:WaitForChild("GetRebirthData")
                of = uQ_12:WaitForChild("RebirthChanged")
                om = uQ_12:WaitForChild("AutoSpinSet")
                uQ_4 = uQ_12:WaitForChild("SpinPhase")
            else
                om = uQ_1:WaitForChild("DoRebirth")
                of = uQ_1:WaitForChild("GetRebirthData")
                uQ_4 = uQ_1:WaitForChild("RebirthChanged")
                n8 = uQ_1:WaitForChild("AutoSpinSet")
                uQ_12 = uQ_1:WaitForChild("SpinPhase")
            end
            uQ_9 = (uQ_9 + 143) % 160
        else
            if (uQ_9 * 2 + 9) * 16 % 3 == ((uQ_9 * 2 + 9) * 16 + 2) % 3 then
                nY = ClaimDaily:WaitForChild("PlaceMiner")
                nV = ClaimDaily:WaitForChild("TrashPickaxe")
                uQ_1 = ClaimDaily:WaitForChild("TeleportPlot")
                n1 = ClaimDaily:WaitForChild("TeleportPlatform")
                nR = ClaimDaily:WaitForChild("ClaimDaily")
            else
                n1 = uQ_1:WaitForChild("PlaceMiner")
                nY = uQ_1:WaitForChild("TrashPickaxe")
                nV = uQ_1:WaitForChild("TeleportPlot")
                nR = uQ_1:WaitForChild("TeleportPlatform")
                ClaimDaily = uQ_1:WaitForChild("ClaimDaily")
            end
            uQ_9 = (uQ_9 + 103) % 160
        end
    elseif uQ_27 <= 15 then
        if uQ_27 <= 13 then
            if uQ_27 <= 12 then
                if uQ_27 <= 11 then
                    local vo = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ_9, 10), string.byte(tostring(m8))), 4)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(vo, 1090411197), 1799253251), (bit32.bxor(bit32.band(vo, 3204556098), 52351829))), 1799253251), 52351829) == vo then
                        nI = uQ_1:WaitForChild("GetDailyData")
                        nF = uQ_1:WaitForChild("ClaimPlayTime")
                        nA = uQ_1:WaitForChild("GetPlayTimeData")
                        nv = uQ_1:WaitForChild("ClaimGroupReward")
                        GetGroupReward = uQ_1:WaitForChild("GetGroupReward")
                    else
                        uQ_1 = GetGroupReward:WaitForChild("GetDailyData")
                        nI = GetGroupReward:WaitForChild("ClaimPlayTime")
                        nF = GetGroupReward:WaitForChild("GetPlayTimeData")
                        nA = GetGroupReward:WaitForChild("ClaimGroupReward")
                        nv = GetGroupReward:WaitForChild("GetGroupReward")
                    end
                    uQ_9 = (uQ_9 + 103) % 160
                else
                    local wl = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ_9, 6), string.byte(tostring(nI))), 8)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(wl, 888959991), 22), 4258086684) ~= bit32.lrotate(wl, 22) then
                        uQ_1 = ClaimOfflineEarnings:WaitForChild("ClaimOfflineEarnings")
                    else
                        ClaimOfflineEarnings = uQ_1:WaitForChild("ClaimOfflineEarnings")
                    end
                    uQ_9 = (uQ_9 + 23) % 160
                end
            else
                uQ_16 = {
                    "rcqlsdjjj",
                    "dohj",
                    "jgonmlsk",
                    "bbx",
                    "wpvtwsdp",
                    "dqflzyrjhfd",
                    "dajvgaq",
                    "duuryqnzuozz",
                    "euwtjkg",
                    "grvo",
                    "lvbmrco",
                    "ijunvjadljji",
                    "jkhyobimn",
                    "dmidyfsxc",
                    "kpyvwu",
                    "revll"
                }
                if uQ_16[(uQ_9 * 43 + 105) % 16 + 1] <= uQ_16[(uQ_9 * 43 + 105) % 16 + 1] then
                    nj = uQ_1:WaitForChild("GetMinerShop")
                    uQ_26 = { "Ore", "Pickaxes", "Luck", "Mutation", "Axe Speed", "Rolls", "Miners" }
                    uQ_5 = {}
                    m8 = {}
                else
                    m8 = uQ_26:WaitForChild("GetMinerShop")
                    uQ_1 = { "Pickaxes", "Ore", "Mutation", "Axe Speed", "Luck", "Rolls", "Miners" }
                    nj = {}
                    uQ_5 = {}
                end
                uQ_9 = (uQ_9 + 143) % 160
            end
        elseif uQ_27 <= 14 then
            local wb = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ_9, 26), string.byte(tostring(MinerDataChanged))), 9)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wb, 3046858165), 1301700425), (bit32.bxor(bit32.band(wb, 1248109130), 1321836155))), 1301700425), 1321836155) ~= wb then
                uQ_2 = {}
                m5 = {}
            else
                m5 = {}
                uQ_2 = {}
            end
            uQ_9 = (uQ_9 + 83) % 160
        else
            uQ_16 = {
                "wmbq",
                "sciktzttwfq",
                "eznrfwih",
                "wlpr",
                "svzlriep",
                "engjnnzamwh",
                "swzhytqj",
                "yyqmehg",
                "nyziobcvwi",
                "ljyretqorbv"
            }
            local wk = uQ_9
            uQ_7 = uQ_16[wk % 10 + 1]
            if uQ_7:len() <= uQ_7:gsub("(.)", "%1%1", wk % 3 % 2 + 1):len() then
                uQ_19 = game:GetService("Players")
            else
                ol = game:GetService("Players")
            end
            uQ_9 = (uQ_9 + 3) % 160
        end
    elseif uQ_27 <= 18 then
        if uQ_27 <= 17 then
            if uQ_27 <= 16 then
                uQ_16 = {
                    "sjsfomrkhrj",
                    "esumrjpwfchv",
                    "dufso",
                    "uicwwil",
                    "hjieqsauup",
                    "axrrviq",
                    "jhvhdvsdcwc",
                    "slxgrebe",
                    "omqnxamzxttg",
                    "vhff",
                    "abtxi",
                    "icxtmgnafb",
                    "tayzgk",
                    "qmrngnn",
                    "ddxonsqoragn"
                }
                if uQ_16[(uQ_9 * 84 + 105) % 15 + 1] < uQ_16[(uQ_9 * 84 + 105) % 15 + 1] then
                    nU = game:GetService("ReplicatedStorage")
                else
                    uQ_21 = game:GetService("ReplicatedStorage")
                end
                uQ_9 = (uQ_9 + 123) % 160
            else
                if (uQ_9 * 2 + 6) * 16 % 3 == ((uQ_9 * 2 + 6) * 16 + 0) % 3 then
                    UserInputService = game:GetService("UserInputService")
                else
                    ol = game:GetService("UserInputService")
                end
                uQ_9 = (uQ_9 + 3) % 160
            end
        else
            uQ_16 = (vector.create((uQ_9 * 5 + 1) % 11 + 1, (uQ_9 * 2 + 2) % 13 + 1, (uQ_9 * 8 + 17) % 17 + 1))
            uQ_7 = (vector.create((uQ_9 * 1 + 8) % 11 + 1, (uQ_9 * 8 + 2) % 13 + 1, (uQ_9 * 15 + 10) % 17 + 1))
            local wh = vector.cross(uQ_16, uQ_7)
            local wi = vector.dot(uQ_16, uQ_7)
            if vector.dot(wh, wh) + wi * wi == vector.dot(uQ_16, uQ_16) * vector.dot(uQ_7, uQ_7) then
                ow = game:GetService("VirtualUser")
                Workspace = game:GetService("Workspace")
                ol = uQ_19.LocalPlayer
                uQ_15 = "Build An Ore Farm"
                ob = "https://discord.gg/ehKVq7pf7v"
            else
                uQ_19 = game:GetService("VirtualUser")
                ow = game:GetService("Workspace")
                ob = Workspace.LocalPlayer
                ol = "Build An Ore Farm"
                uQ_15 = "https://discord.gg/ehKVq7pf7v"
            end
            uQ_9 = (uQ_9 + 123) % 160
        end
    elseif uQ_27 <= 19 then
        if uQ_9 * 40644869 + 1 + 3 <= uQ_9 * 40644869 + 1 + 3 + 4 then
            n7 = "https://rscripts.net/@Ouroboros"
        else
            uQ_21 = "https://rscripts.net/@Ouroboros"
        end
        uQ_9 = (uQ_9 + 3) % 160
    else
        uQ_27 = (vector.create((uQ_9 * 3 + 2) % 11 + 1, (uQ_9 * 3 + 2) % 13 + 1, (uQ_9 * 2 + 3) % 17 + 1))
        local vq = vector.floor(uQ_27) + vector.ceil(uQ_27 * -1)
        if vector.dot(vq, vq) == 4 then
            uQ_21 = uQ_1:WaitForChild("Remotes")
        else
            uQ_1 = uQ_21:WaitForChild("Remotes")
        end
        uQ_9 = (uQ_9 + 43) % 160
    end
until (uQ_9 * 27 + 156) % 160 == 7
for i, v in ipairs(uQ_11) do
    table.insert(uQ_5, v.name)
    m8[v.name] = i
    uQ_19 = v.name
    uQ_9 = v.value or 0
    m5[uQ_19] = uQ_9
    uQ_19 = v.name
    uQ_9 = v.oneIn or 0
    uQ_2[uQ_19] = uQ_9
end
oo = {}
uQ_19 = {}
for i, v in ipairs(uQ_23.Tiers) do
    table.insert(uQ_19, v.Name)
    oo[v.Name] = i
end
Library, Toggles, Options, oh, nQ, nJ, nG, n9, n4, nN, nw, nk, m9, oa, nP, nr, nf, oi, nC, na, oj, oz, ot, oe, n0, nL, nu, oy, nS, nB, nn, nd, oB, op, nO, nq, ne, oE, n6, ng, n2, nD, oC, nX, oA, m4, nZ, og, ov, oc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
uQ_7 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
uQ_27 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nN = fn533
nw = fn652
nk = fns.fn23
m9 = fn509
local uQ_8 = "#7fd47f"
local uQ_17 = "#6ec1ff"
oh = "#e8a34d"
local uQ_28 = "#8b93a3"
oa = fn321
nP = fns.fn277
nr = fn801
nf = fn300
oi = fns.fn66
nQ = nil
nJ = { carrying = 0, stock = 0, banked = 0, rate = 0, upgradeCost = 0, level = 0 }
nG = nil
nC = fn775
na = fns.fn18
oj = fn435
MinerDataChanged.OnClientEvent:Connect(fns.onOnClientEvent)
uQ_14.OnClientEvent:Connect(onOnClientEvent2)
uQ_4.OnClientEvent:Connect(fns.onOnClientEvent3)
task.spawn(fns.worker)
oz = fn682
ot = fn707
oe = fns.fn88
n0 = fns.fn105
nL = fns.fn159
nu = function(b4)
    local Enabled
    local HoldDuration
    Enabled = nil
    HoldDuration = nil
    if not b4 or not b4.Parent then
        return false
    end
    HoldDuration = b4.HoldDuration
    Enabled = b4.Enabled
    local qq_1 = pcall(function()
        b4.Enabled = true
        b4.HoldDuration = 0
        if fireproximityprompt then
            fireproximityprompt(b4)
        else
            b4:InputHoldBegin()
            b4:InputHoldEnd()
        end
    end)
    pcall(function()
        b4.HoldDuration = HoldDuration
        b4.Enabled = Enabled
    end)
    return qq_1
end
oy = fn814
n9 = false
n4 = 0
uQ_12.OnClientEvent:Connect(fns.onOnClientEvent4)
nS = fns.fn74
nB = fn626
if (not nP or not Toggles) and (not nn and nu) and (not op and uQ_7 and (not nn or op)) or (not nn or not Toggles or op and not nn) and (not Toggles and not op and (Toggles or not op)) or not ((not nP or not Toggles) and (not nn and nu) and (not op and uQ_7 and (not nn or op)) or (not nn or not Toggles or op and not nn) and (not Toggles and not op and (Toggles or not op))) then
    nn = fns.fn290
    nd = fn364
    oB = fn359
    op = fns.fn269
    nO = fn855
else
    op = fns.fn290
    nn = fn364
    nd = fn359
    nO = fns.fn269
    oB = fn855
end
nq = fn313
ne = fn490
oE = fn340
n6 = function(c8)
    local da = -1
    local Name
    oE(function(dc)
        local rk = if not nq(dc) then 1 else 0
        if rk == 1 then
            return
        end
        local rg = nO(dc.Name, c8)
        if rg > da then
            da = rg
            Name = dc.Name
        end
    end)
    return Name, da
end
ng = fns.fn175
n2 = fns.fn144
nD = fn816
oC = fn555
nX = function(d_)
    local d1 = -1
    local Name
    oE(function(d3)
        local r0 = if not nq(d3) then 1 else 0
        if r0 == 1 then
            return
        end
        if not oC(d3.Name) then
            return
        end
        local rX = nO(d3.Name, d_)
        if rX > d1 then
            d1 = rX
            Name = d3.Name
        end
    end)
    return Name, d1
end
oA = fn866
m4 = function()
    local so, sp
    so = oa("AutoSpecificRoll")
    local sq = nf("RollTargets")
    sp = {}
    for k in pairs(sq) do
        sp[k] = true
    end
    pcall(function()
        n8:FireServer(so, sp)
    end)
end
nZ = fns.fn146
og = fn826
ov = fn609
oc = fn591
uQ_21 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = ob, Copyable = true }, "|", uQ_15 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
uQ_16 = {
    Info = uQ_21:AddTab("Info", "info"),
    Main = uQ_21:AddTab("Main", "pickaxe"),
    Misc = uQ_21:AddTab("Misc", "sparkles"),
    Settings = uQ_21:AddTab("Settings", "settings")
}
uQ_16.Farm = uQ_16.Main:AddSubTab("Farm", "factory")
uQ_16.Roll = uQ_16.Main:AddSubTab("Roll", "dices")
uQ_16.Upgrades = uQ_16.Main:AddSubTab("Upgrades", "arrow-up")
uQ_16.Inventory = uQ_16.Main:AddSubTab("Inventory", "backpack")
uQ_23 = fn335
for k, v in uQ_16 do
    if v ~= uQ_16.Main then
        uQ_23(v)
    end
end
nx, uQ_9, uQ_11, m6, oF, uQ_21 = nil, nil, nil, nil, nil, nil
uQ_1 = 7
repeat
    uQ_2 = (uQ_1 * 2 + 2) % 3 + 1
    if uQ_2 <= 2 then
        if uQ_2 <= 1 then
            local wj = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ_1, 3), string.byte(tostring(uQ_9))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(wj, 1821908185), 20), 3449211265) ~= bit32.lrotate(wj, 20) then
                oF = #uQ_21 > 18
            else
                uQ_21 = #oF > 18
            end
            uQ_1 = (uQ_1 + 8) % 24
        else
            uQ_2 = (vector.create((uQ_1 * 1 + 8) % 11 + 1, (uQ_1 * 9 + 1) % 13 + 1, (uQ_1 * 7 + 15) % 17 + 1))
            uQ_23 = (vector.create((uQ_1 * 7 + 4) % 11 + 1, (uQ_1 * 9 + 5) % 13 + 1, (uQ_1 * 11 + 8) % 17 + 1))
            uQ_12 = (vector.create((uQ_1 * 3 + 3) % 11 + 1, (uQ_1 * 9 + 10) % 13 + 1, (uQ_1 * 4 + 10) % 17 + 1))
            if vector.dot(vector.cross(uQ_2, uQ_23), uQ_12) == vector.dot(vector.cross(uQ_23, uQ_12), uQ_2) then
                nx = "Unknown"
                pcall(fn471)
                uQ_9 = uQ_16.Info:AddLeftGroupbox("Account", "circle-user")
                uQ_9:AddLabel(m9("User", ol.Name, uQ_8), true)
                uQ_9:AddLabel(m9("Status", "Keyless", uQ_8), true)
                uQ_9:AddLabel(m9("Executor", nx, uQ_8), true)
                uQ_11 = uQ_16.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                uQ_11:AddLabel(nk(uQ_15 .. " [" .. tostring(game.PlaceId) .. "]", uQ_17), true)
                uQ_11:AddLabel(m9("Place ID", tostring(game.PlaceId), uQ_17), true)
                m6 = uQ_11:AddLabel(m9("Session time", "0s", oh), true)
            else
                uQ_16 = "Unknown"
                pcall(fn471)
                ol = uQ_11.Info:AddLeftGroupbox("Account", "circle-user")
                ol:AddLabel(uQ_15("User", m9.Name, uQ_17), true)
                ol:AddLabel(uQ_15("Status", "Keyless", uQ_17), true)
                ol:AddLabel(uQ_15("Executor", "Unknown", uQ_17), true)
                m6 = uQ_11.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                m6:AddLabel(uQ_9(oh .. " [" .. tostring(game.PlaceId) .. "]", uQ_8), true)
                m6:AddLabel(uQ_15("Place ID", tostring(game.PlaceId), uQ_8), true)
                nx = m6:AddLabel(uQ_15("Session time", "0s", nk), true)
            end
            uQ_1 = (uQ_1 + 11) % 24
        end
    else
        if uQ_1 * 112352705 + 4 + 6 >= uQ_1 * 112352705 + 4 + 6 + 1 then
            m6 = tostring(game.JobId)
        else
            oF = tostring(game.JobId)
        end
        uQ_1 = (uQ_1 + 5) % 24
    end
until (uQ_1 * 19 + 0) % 24 == 13
if uQ_21 then
    uQ_9 = 4
    repeat
        uQ_1 = (vector.create((uQ_9 * 4 + 3) % 11 + 1, (uQ_9 * 3 + 2) % 13 + 1, (uQ_9 * 11 + 1) % 17 + 1))
        uQ_2 = (vector.create((uQ_9 * 3 + 8) % 11 + 1, (uQ_9 * 10 + 3) % 13 + 1, (uQ_9 * 6 + 8) % 17 + 1))
        uQ_23 = (vector.create((uQ_9 * 5 + 3) % 11 + 1, (uQ_9 * 2 + 4) % 13 + 1, (uQ_9 * 9 + 1) % 17 + 1))
        uQ_12 = (vector.create((uQ_9 * 1 + 5) % 11 + 1, (uQ_9 * 8 + 5) % 13 + 1, (uQ_9 * 13 + 6) % 17 + 1))
        if vector.dot(vector.cross(uQ_1, uQ_2), (vector.cross(uQ_23, uQ_12))) == vector.dot(uQ_1, uQ_23) * vector.dot(uQ_2, uQ_12) - vector.dot(uQ_1, uQ_12) * vector.dot(uQ_2, uQ_23) + 3 then
            oF = string.sub(uQ_21, 1, 18) .. "..."
        else
            uQ_21 = string.sub(oF, 1, 18) .. "..."
        end
        uQ_9 = (uQ_9 + 0) % 8
    until (uQ_9 * 5 + 6) % 8 == 2
end
uQ_9 = uQ_21 or oF
od, uQ_4, uQ_12, ny, ns, connection, connection2, nb = nil, nil, nil, nil, nil, nil, nil, nil
local o6 = uQ_9
uQ_11:AddLabel(m9("Server", o6, uQ_28), true)
uQ_11:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
od = os.clock()
task.spawn(worker2)
local ScriptsGroup = uQ_16.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nk("Included in this hub", uQ_28), true)
ScriptsGroup:AddLabel(nk(uQ_15, uQ_17), true)
local FeaturesGroup = uQ_16.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nk("Auto Farm", uQ_17), true)
FeaturesGroup:AddLabel(nk("Auto Roll", oh), true)
FeaturesGroup:AddLabel(nk("Auto Upgrades", uQ_8), true)
FeaturesGroup:AddLabel(nk("Inventory Tools", uQ_28), true)
uQ_14 = uQ_16.Info:AddRightGroupbox("Socials", "link")
if ((not uQ_12 or not nb or (not uQ_12 or nb)) and (nb or nb or (not uQ_12 or not nb)) or not nb and not nb and (nb or not uQ_12) and (uQ_12 and not uQ_12 or not uQ_12 and nb)) and ((uQ_12 and uQ_12 and (not uQ_12 and nb) or (nb and not nb or (uQ_12 or nb))) and ((uQ_12 or nb or (nb or not uQ_12)) and (not nb or nb or not uQ_12 and nb))) and not (((not uQ_12 or not nb or (not uQ_12 or nb)) and (nb or nb or (not uQ_12 or not nb)) or not nb and not nb and (nb or not uQ_12) and (uQ_12 and not uQ_12 or not uQ_12 and nb)) and ((uQ_12 and uQ_12 and (not uQ_12 and nb) or (nb and not nb or (uQ_12 or nb))) and ((uQ_12 or nb or (nb or not uQ_12)) and (not nb or nb or not uQ_12 and nb)))) then
    uQ_4:AddButton({ Text = "Discord", Func = uQ_14 })
    uQ_4:AddButton({ Text = "Rscripts", Func = onRscripts })
    uQ_16 = nw.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    uQ_14:AddButton({ Text = "Discord", Func = nw })
    uQ_14:AddButton({ Text = "Rscripts", Func = onRscripts })
    uQ_4 = uQ_16.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
uQ_4:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
uQ_4:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
uQ_4:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
uQ_4:AddButton({ Text = "Copy Discord Invite", Func = nw })
uQ_12 = uQ_16.Info:AddRightGroupbox("FAQ", "circle-help")
uQ_12:AddLabel("Where do I get a good config?", true)
uQ_12:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
uQ_12:AddLabel("How do I import / export configs?", true)
uQ_12:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
uQ_12:AddLabel("How do I report bugs?", true)
uQ_12:AddLabel("Join the Discord and post it in the bugs channel.", true)
uQ_12:AddLabel("How do I make suggestions?", true)
uQ_12:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
uQ_12:AddLabel("How do I get help or updates?", true)
uQ_12:AddLabel("Join the Discord, updates and support are posted there first.", true)
uQ_23 = uQ_16.Farm:AddLeftGroupbox("Farm")
uQ_23:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
uQ_23:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
uQ_23:AddSlider("FarmDelay", { Text = "Farm Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
uQ_2 = uQ_16.Farm:AddRightGroupbox("Shop Miners")
uQ_2:AddToggle("AutoBuyShopMiners", { Text = "Auto Buy Shop Miners", Default = false })
uQ_2:AddDropdown("ShopMinerTargets", {
    Text = "Shop Miners",
    Values = uQ_19,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
uQ_2:AddToggle("AutoPlaceMiners", { Text = "Auto Place / Replace Miners", Default = false })
uQ_21 = uQ_16.Roll:AddLeftGroupbox("Roll")
uQ_21:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
uQ_21:AddToggle("AutoSpecificRoll", { Text = "Auto Specific Roll", Default = false })
uQ_21:AddToggle("AutoBuyAny", { Text = "Auto Buy Any", Default = false })
uQ_21:AddToggle("AutoBuyDisplays", { Text = "Auto Buy Selected Pickaxes", Default = false })
uQ_21:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip If Can't Afford", Default = true })
uQ_21:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.55, Min = 0.2, Max = 3, Rounding = 2, Suffix = "s" })
uQ_1 = uQ_16.Roll:AddRightGroupbox("Targets")
uQ_1:AddDropdown("RollTargets", {
    Text = "Pickaxes",
    Values = uQ_5,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Callback = onRollTargets
})
local UpgradesGroup = uQ_16.Upgrades:AddLeftGroupbox("Upgrades")
UpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
UpgradesGroup:AddDropdown("UpgradeTargets", {
    Text = "Upgradeables",
    Values = uQ_26,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
UpgradesGroup:AddSlider("UpgradeDelay", { Text = "Upgrade Delay", Default = 0.4, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
local InventoryGroup = uQ_16.Inventory:AddLeftGroupbox("Inventory")
InventoryGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
InventoryGroup:AddToggle("AutoPlacePickaxes", { Text = "Auto Place Pickaxes", Default = false })
InventoryGroup:AddDropdown("PlacePickaxeMode", { Text = "Place Mode", Values = { "Empty Only", "Replace Worse" }, Default = "Replace Worse" })
InventoryGroup:AddDropdown("PlaceCompareBy", { Text = "Compare By", Values = { "Rarity", "Money" }, Default = "Rarity" })
InventoryGroup:AddDropdown("PlacePickaxeTargets", {
    Text = "Place Pickaxes",
    Values = uQ_5,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
InventoryGroup:AddDropdown("PlaceMinPickaxe", { Text = "Minimum", Values = uQ_5, Default = "Basic" })
InventoryGroup:AddToggle("AutoTrashWeak", { Text = "Auto Trash Weak", Default = false })
InventoryGroup:AddDropdown("TrashBelow", { Text = "Trash Below", Values = uQ_5, Default = "Basic" })
InventoryGroup:AddSlider("InventoryDelay", { Text = "Inventory Delay", Default = 0.5, Min = 0.2, Max = 3, Rounding = 2, Suffix = "s" })
local ClaimsGroup = uQ_16.Misc:AddLeftGroupbox("Claims")
ClaimsGroup:AddToggle("AutoClaimDaily", { Text = "Auto Claim Daily", Default = false })
ClaimsGroup:AddToggle("AutoClaimPlayTime", { Text = "Auto Claim Playtime", Default = false })
ClaimsGroup:AddToggle("AutoClaimGroup", { Text = "Auto Claim Group", Default = false })
ClaimsGroup:AddToggle("AutoClaimOffline", { Text = "Auto Claim Offline", Default = false })
local TeleportGroup = uQ_16.Misc:AddRightGroupbox("Teleport")
TeleportGroup:AddButton({ Text = "Teleport Plot", Func = onTeleportPlot })
TeleportGroup:AddButton({ Text = "Platform Up", Func = onPlatformUp })
TeleportGroup:AddButton({ Text = "Platform Down", Func = onPlatformDown })
TeleportGroup:AddButton({ Text = "Teleport to Lever", Func = onTeleportToLever })
local MenuGroup = uQ_16.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddButton("Unload", fns.onUnload)
Library.ToggleKeybind = Options.MenuKeybind
uQ_7:SetLibrary(Library)
uQ_7:SetFolder("OuroborosHub")
uQ_7:SaveDefault("Monochrome")
uQ_7:ApplyToTab(uQ_16.Settings)
uQ_7:LoadDefault()
uQ_27:SetLibrary(Library)
uQ_27:IgnoreThemeSettings()
uQ_27:SetIgnoreIndexes({ "MenuKeybind" })
uQ_27:SetFolder("OuroborosHub/build-an-ore-farm")
uQ_27:BuildConfigSection(uQ_16.Settings)
uQ_27:LoadAutoloadConfig()
ny = tick()
ns = tick()
pcall(function()
    for i, v in ipairs(getconnections(ol.Idled)) do
        local tu = v
        pcall(function()
            tu:Disable()
        end)
    end
end)
nb = fn423
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Toggles.AutoSpecificRoll:OnChanged(fn633)
task.spawn(function()
    local tE_1
    local tD_2
    while not Library.Unloaded do
        local tA = nr("FarmDelay", 0.35)
        if oa("AutoSell") then
            na()
            local tB_1 = nL("DispOre")
            local tC_1 = math.max(nL("DispBanked"), nJ.banked)
            if tB_1 >= 1 and nJ.carrying <= 0 then
                pcall(function()
                    nc:FireServer()
                end)
                task.wait(0.15)
            end
            if nJ.carrying > 0 then
                pcall(function()
                    m7:FireServer()
                end)
                task.wait(0.15)
            end
            if tC_1 > 0 then
                pcall(function()
                    m3:FireServer()
                end)
            end
        end
        if oa("AutoBuyShopMiners") then
            local tB_2 = nQ or nC()
            local tC_2 = tB_2
            if tB_2 then
                tB_2 = tC_2.cash
            end
            local tC_3 = tB_2 or 0
            local tC_4 = nf("ShopMinerTargets")
            if next(tC_4) then
                tD_2, tE_1 = pcall(function()
                    return nj:InvokeServer()
                end)
                local tF = tD_2 and type(tE_1) == "table" and type(tE_1.rows) == "table"
                if tF then
                    for k, v in pairs(tE_1.rows) do
                        local tM = v
                        local tD_3 = type(tM) == "table" and tC_4[tM.name]
                        if tD_3 then
                            tD_3 = (tM.stock or 0) > 0
                        end
                        if tD_3 then
                            tD_3 = tC_3 >= (tM.price or math.huge)
                        end
                        if tD_3 then
                            pcall(function()
                                no:InvokeServer(tM.index)
                            end)
                            break
                        end
                    end
                end
            end
        end
        if oa("AutoRebirth") then
            local tB_4 = nG or oj()
            local tC_5 = tB_4
            if tB_4 then
                tB_4 = tC_5.canRebirth
            end
            if tB_4 then
                pcall(function()
                    om:FireServer()
                end)
                oj()
            end
        end
        task.wait(tA)
    end
end)
task.spawn(worker3)
task.spawn(function()
    while not Library.Unloaded do
        local tR = nr("UpgradeDelay", 0.4)
        local tS = oa("AutoUpgrade") and oi("UpgradeTargets")
        local tS_4
        if tS then
            local tS_1 = nC()
            local tU = tS_1 and tS_1.cash or 0
            local tU_19
            local tT_1 = tU
            if oB("Ore") then
                na()
                local tV_1 = tT_1 >= (nJ.upgradeCost or math.huge)
                if tV_1 then
                    tV_1 = (nJ.upgradeCost or 0) > 0
                end
                if tV_1 then
                    pcall(function()
                        nh:FireServer()
                    end)
                    tS_1 = nC()
                    tT_1 = tS_1 and tS_1.cash or tT_1
                end
            end
            local tU_4 = oB("Rolls") and tS_1 and tS_1.rolls and tS_1.maxRolls and tS_1.rollCost
            if tU_4 then
                if tS_1.rolls < tS_1.maxRolls and tT_1 >= tS_1.rollCost then
                    pcall(function()
                        nK:InvokeServer()
                    end)
                    tS_1 = nC()
                    tT_1 = tS_1 and tS_1.cash or tT_1
                end
            end
            local tU_7 = oB("Miners") and tS_1 and tS_1.miners and tS_1.maxMiners and tS_1.cost
            if tU_7 then
                if tS_1.miners < tS_1.maxMiners and tT_1 >= tS_1.cost then
                    pcall(function()
                        nH:InvokeServer()
                    end)
                    tS_1 = nC()
                    tT_1 = tS_1 and tS_1.cash or tT_1
                end
            end
            local tU_10 = oB("Luck") and tS_1 and tS_1.luck and tS_1.luckMax and tS_1.luckCost
            if tU_10 then
                if tS_1.luck < tS_1.luckMax and tT_1 >= tS_1.luckCost then
                    pcall(function()
                        BuyLuck:InvokeServer()
                    end)
                    tS_1 = nC()
                    tT_1 = tS_1 and tS_1.cash or tT_1
                end
            end
            local tU_13 = oB("Mutation") and tS_1 and tS_1.mut and tS_1.mutMax and tS_1.mutCost
            if tU_13 then
                if tS_1.mut < tS_1.mutMax and tT_1 >= tS_1.mutCost then
                    pcall(function()
                        nz:InvokeServer()
                    end)
                    tS_1 = nC()
                    tT_1 = tS_1 and tS_1.cash or tT_1
                end
            end
            local tU_16 = oB("Axe Speed") and tS_1 and tS_1.axeMult and tS_1.axeSpeedCost
            if tU_16 then
                if tS_1.axeMult < 10 and tT_1 >= tS_1.axeSpeedCost then
                    pcall(function()
                        nt:InvokeServer()
                    end)
                    local tS_2 = nC()
                    tT_1 = tS_2 and tS_2.cash or tT_1
                end
            end
            if oB("Pickaxes") then
                for i, v in ipairs(n2()) do
                    local t7 = v
                    if Library.Unloaded then
                        break
                    end
                    tS_4, tU_19 = pcall(function()
                        return GetPickaxeInfo:InvokeServer(t7)
                    end)
                    local tV_7 = tS_4 and type(tU_19) == "table" and tU_19.cost and tT_1 >= tU_19.cost
                    if tV_7 then
                        pcall(function()
                            nl:InvokeServer(t7)
                        end)
                        tT_1 = tT_1 - tU_19.cost
                        task.wait(0.1)
                    end
                end
            end
        end
        task.wait(tR)
    end
end)
task.spawn(function()
    local ut = false
    repeat
        local uj, uk
        if not Library.Unloaded then
            local um = nr("InventoryDelay", 0.5)
            local un = nP("PlaceCompareBy", "Rarity")
            if oa("AutoEquipBest") then
                local uo_1 = n6(un)
                if uo_1 then
                    ng(uo_1)
                end
            end
            if oa("AutoPlacePickaxes") then
                oA()
            end
            if oa("AutoPlaceMiners") then
                uj = nil
                oE(function(iK)
                    if ne(iK) then
                        local t8 = uj
                        local uc = if t8 then 1 else 0
                        local ua = 1884 * uc + 3022 * (1 - uc)
                        local ub = 2013 * uc + 57 * (1 - uc)
                        if not ((ua * 1879 + ub * 1150 + ua * ub) % 16777213 == 9647478) then
                            t8 = iK
                        end
                        uj = t8
                    end
                end)
                local un_1 = uj and ng(uj.Name)
                if un_1 then
                    local un_2 = oo[uj.Name] or 0
                    local uo_2 = math.huge
                    local ul
                    for i, v in ipairs(n2()) do
                        local un_3 = tonumber(v:GetAttribute("MinerTier")) or 0
                        if un_3 <= 0 then
                            ul = v
                            break
                        end
                        if un_3 < un_2 and un_3 < uo_2 then
                            uo_2 = un_3
                            ul = v
                        end
                    end
                    if ul then
                        oy(ul)
                        task.wait(0.1)
                        pcall(function()
                            n1:FireServer(ul)
                        end)
                    end
                end
            end
            if oa("AutoTrashWeak") then
                local un_5 = nP("TrashBelow", "Basic")
                uk = m8[un_5] or 1
                oE(function(i3)
                    if not nq(i3) then
                        return
                    end
                    local ud = m8[i3.Name] or 0
                    if ud > 0 and ud < uk then
                        local ui = if ng(i3.Name) then 1 else 0
                        if ui == 1 then
                            task.wait(0.1)
                            pcall(function()
                                nY:FireServer()
                            end)
                        end
                    end
                end)
            end
            task.wait(um)
        else
            ut = true
        end
    until ut
end)
task.spawn(function()
    local uB_1, uB_2, uB_3
    local uA_1, uA_2, uA_4
    while not Library.Unloaded do
        if oa("AutoClaimDaily") then
            uA_1, uB_1 = pcall(function()
                return nI:InvokeServer()
            end)
            local uC_1 = uA_1 and type(uB_1) == "table" and uB_1.state and uB_1.state.available
            if uC_1 then
                pcall(function()
                    ClaimDaily:InvokeServer()
                end)
            end
        end
        if oa("AutoClaimPlayTime") then
            uA_2, uB_2 = pcall(function()
                return nA:InvokeServer()
            end)
            local uC_2 = uA_2 and type(uB_2) == "table" and type(uB_2.rewards) == "table"
            if uC_2 then
                for i, v in ipairs(uB_2.rewards) do
                    local uJ = v
                    if uJ.ready and not uJ.claimed then
                        pcall(function()
                            nF:InvokeServer(uJ.index)
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
        if oa("AutoClaimGroup") then
            uA_4, uB_3 = pcall(function()
                return GetGroupReward:InvokeServer()
            end)
            local uC_3 = uA_4 and type(uB_3) == "table" and uB_3.inGroup and not uB_3.claimed
            if uC_3 then
                pcall(function()
                    nv:InvokeServer()
                end)
            end
        end
        if oa("AutoClaimOffline") then
            pcall(function()
                ClaimOfflineEarnings:FireServer()
            end)
        end
        task.wait(2)
    end
end)
task.spawn(antiAfkLoop)
Library:OnUnload(fn574)
