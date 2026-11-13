local xm_8
local xm_9_1
local xm_2_1
local Isinlan
local pj
local o0
local oI
local pp
local o6
local connection2
local Workspace
local ov
local OrmanConfig
local pU
local connection
local pB
local Library
local om
local pN
local oN
local pu
local ou
local pb
local oT
local pA
local YukseltAl
local ph
local pZ
local oZ
local oG
local Options
local o4
local pM
local pt
local Toggles
local pa
local pS
local oS
local pz
local pg
local pY
local o3
local pL
local oL
local py
local pX
local oX
local pE
local oE
local oi
local pr
local o8
local pQ
local oQ
local px
local GucTikla
local SatOdun
local pD
local oD
local pk
local o1
local RebirthYap
local LocalPlayer
local oo
local o7
local pP
local SatEsya
local pw
local pd
local pV
local oV
local function fn1(cv)
    local r3 = oQ[cv]
    if not r3 then
        return false
    elseif os.clock() >= r3 then
        oQ[cv] = nil
        return false
    else
        return true
    end
end
local function fn43()
    if not oD("AutoTrain") then
        return
    end
    local t9 = tonumber(pp("Guc")) or 0
    if t9 >= pw() then
        return
    end
    pcall(function()
        GucTikla:FireServer()
    end)
end
local function fn57()
    return LocalPlayer:FindFirstChild("sayac")
end
local function fn86(cd)
    local AutoUpgradeList = Options.AutoUpgradeList
    if not AutoUpgradeList then
        return false
    elseif AutoUpgradeList.Multi then
        return AutoUpgradeList.Value[cd] == true
    else
        return AutoUpgradeList.Value == cd
    end
end
local function fn93()
    if not oD("AutoSell") then
        return false
    end
    if (Options.SellWhen and Options.SellWhen.Value or "Always") == "Items Full" then
        return pZ()
    end
    local tO_2 = tonumber(pp("Odun")) or 0
    local tO_3 = tonumber(pp("Esya")) or 0
    local tO_4 = oD("SellWood")
    local tR = oD("SellItems")
    if tO_4 and tO_2 > 0 then
        return true
    end
    if tR and tO_3 > 0 then
        return true
    end
    return false
end
local function fn125()
    local ry_1
    local anahtar
    local rw = o8()
    ry_1, anahtar = 0, nil
    for k, v in OrmanConfig.AURALAR do
        local rz = type(v) == "table" and rw[v.anahtar] and k > ry_1
        if rz then
            ry_1 = k
            anahtar = v.anahtar
        end
    end
    return ry_1, anahtar
end
local function fn129()
    if connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn132(ci)
    local rW = not ci or not ci:IsA("ProximityPrompt")
    if rW then
        return
    end
    ci.HoldDuration = 0
    ci.MaxActivationDistance = math.max(ci.MaxActivationDistance, 20)
    ci.RequiresLineOfSight = false
    ci.Enabled = true
end
local function fn171()
    if not oD("AutoBuyUpgrades") then
        return
    end
    local uI = os.clock()
    if uI - pj < 0.8 then
        return
    end
    pj = uI
    if pU("Carry") then
        local uI_1 = oV()
        local uJ = uI_1 and oZ() >= uI_1
        if uJ then
            pcall(function()
                YukseltAl:FireServer("Kapasite")
            end)
        end
    end
end
local function worker2()
    local uM_1
    local uL_1
    while not Library.Unloaded do
        uL_1, uM_1 = pcall(function()
            pV()
            pA()
            pt()
            oo()
            oi()
            pX()
            pg()
        end)
        if not uL_1 then
            warn("[Ouroboros] farm loop:", uM_1)
            task.wait(0.5)
        elseif not oD("AutoFarm") then
            task.wait(0.2)
        else
            task.wait()
        end
    end
end
local function fn186(bi)
    if not bi then
        return
    end
    oX[bi] = os.clock() + pE
    if pa == bi then
        pa = nil
    end
end
local function fn188()
    if not oE() then
        return
    end
    local tY = Options.SellDelay and Options.SellDelay.Value or 1
    local tY_1 = os.clock()
    if tY_1 - px < tY then
        return
    end
    px = tY_1
    pa = nil
    local tX_2 = oD("SellWood")
    local tY_2 = oD("SellItems")
    pcall(function()
        Isinlan:FireServer("sell")
    end)
    task.wait(0.08)
    if tX_2 then
        pcall(function()
            SatOdun:FireServer()
        end)
    end
    if tY_2 then
        pcall(function()
            SatEsya:FireServer()
        end)
    end
    if oD("AutoFarm") then
        o6 = os.clock()
        local tX_3 = o4()
        if tX_3 then
            local tY_3 = pN(tX_3)
            if tY_3 then
                pQ(tY_3 * CFrame.new(0, 0, 2.5))
            end
        elseif oD("AutoBestZone") then
            pcall(function()
                Isinlan:FireServer("seviye")
            end)
            pr = os.clock()
        end
    elseif oD("AutoBestZone") then
        pcall(function()
            Isinlan:FireServer("seviye")
        end)
        pr = os.clock()
    end
end
local function fn204(av)
    local qp = Toggles[av]
    return qp ~= nil and qp.Value == true
end
local function fn233(bb)
    local qW = bb and bb.Parent and bb:IsA("Model") and not bb:GetAttribute("Devriliyor")
    return qW
end
local function fn246(be)
    local q0 = oX[be]
    if not q0 then
        return false
    elseif os.clock() >= q0 then
        oX[be] = nil
        return false
    else
        return true
    end
end
local function fn253(dD)
    local sZ = {}
    if not dD then
        return sZ
    end
    for i, child in dD:GetChildren() do
        local s_ = ph(child) and not o3(child)
        if s_ then
            sZ[#sZ + 1] = child
        end
    end
    return sZ
end
local function fn266(dA)
    local sV = pP()
    if not sV then
        return false
    end
    local Position = sV.Position
    local sX = dA or 35
    return oS(Position, sX)
end
local function fn283(ac, ad)
    if setclipboard then
        setclipboard(ac)
    elseif toclipboard then
        toclipboard(ac)
    end
    Library:Notify(ad)
end
local function fn340()
    if not oD("AutoBestZone") then
        return
    end
    local tG = oD("AutoFarm") and os.clock() - o6 < 8
    if tG then
        return
    end
    local tG_1 = os.clock()
    if tG_1 - pr < 12 then
        return
    end
    local tH = pP()
    local tI = ov(oN())
    if tH and tI then
        local Model = tI:FindFirstChildWhichIsA("Model")
        local tI_1 = Model and pN(Model)
        local tJ_2 = tI_1
        if tI_1 then
            tI_1 = (tJ_2.Position - tH.Position).Magnitude < 180
        end
        if tI_1 then
            return
        end
    end
    pr = tG_1
    pcall(function()
        Isinlan:FireServer("seviye")
    end)
end
local function fn363(cz)
    if cz then
        oQ[cz] = os.clock() + 2.5
    end
end
local function fn388(cZ)
    local sq_1
    local sp_1
    local so = cZ == "wood" and "Odunlar" or "Esyalar"
    local so_1 = Workspace:FindFirstChild(so)
    if not so_1 then
        return false
    end
    local sn_2 = cZ ~= "wood" and pZ()
    if sn_2 then
        return false
    end
    local sn_3 = pP()
    if not sn_3 then
        return false
    end
    sq_1, sp_1 = nil, nil
    for i, child in so_1:GetChildren() do
        if not oL(child) then
            local so_2 = o1(child)
            if so_2 then
                local Magnitude = (so_2.Position - sn_3.Position).Magnitude
                if not sp_1 or Magnitude < sp_1 then
                    sq_1 = child
                    sp_1 = Magnitude
                end
            end
        end
    end
    if not sq_1 then
        return false
    end
    return pM(sq_1)
end
local function fn390(dh, di)
    local sB_1
    local sA_1
    local sz = { Workspace:FindFirstChild("Esyalar"), Workspace:FindFirstChild("Odunlar") }
    sB_1, sA_1 = nil, nil
    local sC = pZ()
    for k, v in sz do
        if v then
            for i, child in v:GetChildren() do
                if not oL(child) then
                    local sz_1 = child.Name:match("^Esya") ~= nil
                    if not (sz_1 and sC) then
                        local sz_2 = o1(child)
                        if sz_2 then
                            local Magnitude = (sz_2.Position - dh).Magnitude
                            if Magnitude <= di and (not sA_1 or Magnitude < sA_1) then
                                sB_1 = child
                                sA_1 = Magnitude
                            end
                        end
                    end
                end
            end
        end
    end
    if not sB_1 then
        return false
    end
    return pM(sB_1)
end
local function fn454(bn)
    local attr = bn:GetAttribute("Kesen")
    return attr == LocalPlayer.UserId
end
local function fn455(g3)
    local DiscordGroup = g3:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pL })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pL })
end
local function fn464(cp)
    local rZ = cp and cp:FindFirstChildWhichIsA("ProximityPrompt", true)
    return rZ
end
local function fn481(aY)
    local qK = OrmanConfig.AGAC_KLASORLER and OrmanConfig.AGAC_KLASORLER[aY]
    if type(qK) ~= "string" then
        qK = "Agaclar" .. tostring(aY)
    end
    return Workspace:FindFirstChild(qK)
end
local function fn490(aj, ak)
    return string.format('<font color="%s">%s</font>', ak, aj)
end
local function fn499(dV)
    if #dV == 0 then
        return nil
    end
    return dV[math.random(1, #dV)]
end
local function fn528()
    if not oD("AutoRebirth") then
        return
    end
    local t5 = os.clock()
    if t5 - pd < 1.5 then
        return
    end
    local t6 = tonumber(pp("Guc")) or 0
    if t6 < pw() then
        return
    end
    pd = t5
    pcall(function()
        RebirthYap:FireServer()
    end)
end
local function fn541()
    local Character = LocalPlayer.Character
    local qw = Character and Character:FindFirstChild("HumanoidRootPart")
    return qw
end
local function fn555(iV)
    if not iV:IsA("ProximityPrompt") then
        return
    end
    iV.HoldDuration = 0
    iV.MaxActivationDistance = 50
    iV.RequiresLineOfSight = false
end
local function fn565()
    oI(false)
    pD()
    if connection2 then
        connection2:Disconnect()
    end
    local xf = om()
    if xf then
        xf.PlatformStand = false
        xf.WalkSpeed = 16
    end
end
local function fn575()
    local rh = {}
    local ri = LocalPlayer:GetAttribute("AuraSahip") or ""
    local rj = tostring(ri)
    for k in string.gmatch(rj, "[^,%s]+") do
        rh[k] = true
    end
    return rh
end
local function fn585()
    pY(pk, "Copied Discord invite to clipboard")
end
local function fn641()
    local tj = pP()
    if not tj then
        return nil
    end
    local tk = pa and ph(pa) and not o3(pa)
    if tk then
        return pa
    end
    pa = nil
    local tk_1 = ov(oN())
    local tl = oG(tk_1)
    if #tl == 0 then
        return nil
    end
    if (Options.FarmMode and Options.FarmMode.Value or "Nearest") == "Random" then
        pa = pb(tl)
    else
        pa = pS(tl, tj.Position)
    end
    return pa
end
local function fn659(am, an, ao)
    return string.format("<b>%s</b> %s %s", am, py("-", "#5a6070"), py(an, ao))
end
local function worker()
    local uP_1
    local uO_1
    while not Library.Unloaded do
        uO_1, uP_1 = pcall(oT)
        if not uO_1 then
            warn("[Ouroboros] train loop:", uP_1)
            task.wait(0.5)
        else
            local wait = task.wait
            local uP_2 = oD("AutoTrain") and 0.05
            local uQ = uP_2 or 0.25
            wait(uQ)
        end
    end
end
local function fn690(cs)
    if not cs then
        return nil
    end
    local r0 = cs:FindFirstChild("EsyaAnkor") or cs:FindFirstChild("EsyaAnkor", true)
    if not r0 then
        local r1 = cs:IsA("BasePart") and cs
        r0 = r1
    end
    if not r0 then
        r0 = cs.PrimaryPart
    end
    if not r0 then
        r0 = cs:FindFirstChildWhichIsA("BasePart", true)
    end
    return r0
end
local function fn733(dK, dL)
    local s8_1
    local s7_1
    s8_1, s7_1 = nil, nil
    for k, v in dK do
        local s9 = pN(v)
        if s9 then
            local Magnitude = (s9.Position - dL).Magnitude
            if not s7_1 or Magnitude < s7_1 then
                s8_1 = v
                s7_1 = Magnitude
            end
        end
    end
    return s8_1
end
local function fn776()
    local qD = tonumber(LocalPlayer:GetAttribute("Seviye"))
    if qD and qD > 0 then
        return qD
    end
    local max = math.max
    local qE_1 = (tonumber(pp("Bolge")))
    local qI = if qE_1 then 1 else 0
    local qG = 2886 * qI + 2941 * (1 - qI)
    local qH = 2969 * qI + 1686 * (1 - qI)
    if not ((qG * 139 + qH * 1646 + qG * qH) % 16777213 == 13856662) then
        qE_1 = 1
    end
    return max(1, qE_1)
end
local function fn797()
    if not oD("AutoFarm") then
        return
    end
    local tB = Options.FarmMode and Options.FarmMode.Value
    local tF = if tB then 1 else 0
    local tD = 1009 * tF + 1194 * (1 - tF)
    local tE = 4042 * tF + 2309 * (1 - tF)
    if not ((tD * 606 + tE * 803 + tD * tE) % 16777213 == 7935558) then
        tB = "Nearest"
    end
    if tB == "Ground Items" then
        if o7(60) then
            task.wait(0.05)
            return
        end
        local tA_2 = (ou("wood"))
        local tF_1 = if tA_2 then 1 else 0
        local tD_1 = 3270 * tF_1 + 1737 * (1 - tF_1)
        local tE_1 = 2927 * tF_1 + 2973 * (1 - tF_1)
        if not ((tD_1 * 3980 + tE_1 * 2374 + tD_1 * tE_1) % 16777213 == 12757375) then
            tA_2 = ou("item")
        end
        if tA_2 then
            task.wait(0.05)
            return
        end
        local tA_3 = o4()
        if tA_3 then
            pB(tA_3)
        else
            task.wait(0.15)
        end
        return
    end
    local tA_4 = os.clock()
    if tA_4 - o0 >= 0.45 then
        o0 = tA_4
        o7(14)
    end
    local tA_5 = o4()
    if tA_5 then
        pB(tA_5)
    else
        task.wait(0.08)
    end
end
local function fn809()
    local r6 = (tonumber(pp("Esya")))
    local sc = if r6 then 1 else 0
    local sa = 3197 * sc + 1132 * (1 - sc)
    local sb = 1531 * sc + 2439 * (1 - sc)
    if not ((sa * 3660 + sb * 4035 + sa * sb) % 16777213 == 5995999) then
        r6 = 0
    end
    local r7 = r6
    local r6_1 = tonumber(pp("Kapasite")) or 3
    return r7 >= r6_1
end
local function fn838()
    local Character = LocalPlayer.Character
    local qt = Character and Character:FindFirstChildOfClass("Humanoid")
    return qt
end
local function fn864()
    local rp = pu()
    local rq = 0
    for k in rp do
        if k > rq then
            rq = k
        end
    end
    return rq
end
local function fn879(aK)
    local qy = pz()
    local qz = qy and qy:FindFirstChild(aK)
    local qy_1 = qz
    if qz then
        qz = qy_1:IsA("ValueBase")
    end
    if qz then
        return qy_1.Value
    end
    return 0
end
local function fn883(br)
    local q6 = pP()
    local q7 = q6 and typeof(br) == "CFrame"
    if q7 then
        q6.CFrame = br + Vector3.new(0, 3, 0)
    end
end
local function fn890()
    local qB = tonumber(pp("Money")) or 0
    return qB
end
local function fn891()
    local q9 = {}
    local ra = LocalPlayer:GetAttribute("BaltaSahip") or ""
    local rb = tostring(ra)
    for k in string.gmatch(rb, "[^,%s]+") do
        local ra_1 = tonumber(k)
        if ra_1 then
            q9[ra_1] = true
        end
    end
    return q9
end
oi = nil
Options = nil
om = nil
oo = nil
Toggles = nil
ou = nil
ov = nil
YukseltAl = nil
Library = nil
Isinlan = nil
oD = nil
oE = nil
oG = nil
oI = nil
RebirthYap = nil
oL = nil
oN = nil
connection2 = nil
SatEsya = nil
oQ = nil
oS = nil
oT = nil
connection = nil
oV = nil
SatOdun = nil
oX = nil
oZ = nil
o0 = nil
o1 = nil
o3 = nil
o4 = nil
o6 = nil
o7 = nil
local AuraTak, on, op, AuraSatinAl, BaltaSec, SaveManager, oy, BaltaSatinAl, oF, oH, oK, oM, oR, oY, EsyaAlindi, o2, OdunAlindi
o8 = nil
pa = nil
pb = nil
OrmanConfig = nil
pd = nil
pg = nil
ph = nil
pj = nil
pk = nil
pp = nil
LocalPlayer = nil
pr = nil
pt = nil
pu = nil
Workspace = nil
pw = nil
px = nil
py = nil
pz = nil
pA = nil
pB = nil
pD = nil
pE = nil
pL = nil
pM = nil
pN = nil
pP = nil
pQ = nil
pS = nil
pU = nil
pV = nil
local AgacVur, pe, pf, pi, pl, pm, pn, po, ps, CoreGui, GuiService, pG, pH, HttpService, pJ, pK, VirtualUser, UserInputService, RunService
GucTikla = nil
pX = nil
pY = nil
pZ = nil
local qb
RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, pn, pk, pi, OrmanConfig, AgacVur, OdunAlindi, EsyaAlindi, SatOdun, SatEsya, RebirthYap, Isinlan, YukseltAl, BaltaSatinAl, BaltaSec, AuraSatinAl, AuraTak, GucTikla, pK, pG, pE, px, pr, po, pl, pj, pd, pa, o6, o0, oX, oQ, oK, Library, SaveManager, Toggles, Options, o2, oY, oR, oM, pe, pY, pL, py, pm, oD, om, pP, pz, pp, oZ, oN, ov, pN, ph, o3, oF, on, pQ, pu, o8, oH, op, pw, oV, pU, pH, ps, pf, o1, oL, oy, pZ, pM, ou, oS, o7, oG, pS, pb, o4, pB, pg, pV, oE, pA, pt, oT, oo, oi, pX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xm_5 = game:GetService("Players")
local xm_4 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = xm_5.LocalPlayer
pn = "+1 Cut and Ride Pet"
pk = "https://discord.gg/ehKVq7pf7v"
pi = "https://rscripts.net/@Ouroboros"
OrmanConfig = require(xm_4:WaitForChild("Shared"):WaitForChild("OrmanConfig"))
AgacVur = xm_4:WaitForChild("AgacVur")
OdunAlindi = xm_4:WaitForChild("OdunAlindi")
EsyaAlindi = xm_4:WaitForChild("EsyaAlindi")
SatOdun = xm_4:WaitForChild("SatOdun")
SatEsya = xm_4:WaitForChild("SatEsya")
RebirthYap = xm_4:WaitForChild("RebirthYap")
Isinlan = xm_4:WaitForChild("Isinlan")
YukseltAl = xm_4:WaitForChild("YukseltAl")
BaltaSatinAl = xm_4:WaitForChild("BaltaSatinAl")
BaltaSec = xm_4:WaitForChild("BaltaSec")
AuraSatinAl = xm_4:WaitForChild("AuraSatinAl")
AuraTak = xm_4:WaitForChild("AuraTak")
GucTikla = xm_4:WaitForChild("GucTikla")
local p8 = { "Nearest", "Random", "Ground Items" }
local xm_3 = { "Carry" }
local xm_7 = { "Always", "Items Full" }
pK = 0.03
pG = 40
pE = 12
px = 0
pr = 0
po = 0
pl = 0
pj = 0
pd = 0
pa = nil
o6 = 0
o0 = 0
oX = {}
oQ = {}
oK = {
    CFrame.new(0, 0, 2.5),
    CFrame.new(2.5, 0, 0),
    CFrame.new(-2.5, 0, 0),
    CFrame.new(0, 0, -2.5),
    CFrame.new(2, 0, 2),
    CFrame.new(-2, 0, 2)
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if (VirtualUser and not ov or (not VirtualUser or EsyaAlindi) or (EsyaAlindi and ov or ov and not VirtualUser) or (not VirtualUser and not ov or (VirtualUser or EsyaAlindi)) and ((pV or not EsyaAlindi) and (VirtualUser and EsyaAlindi))) and not (VirtualUser and not ov or (not VirtualUser or EsyaAlindi) or (EsyaAlindi and ov or ov and not VirtualUser) or (not VirtualUser and not ov or (VirtualUser or EsyaAlindi)) and ((pV or not EsyaAlindi) and (VirtualUser and EsyaAlindi))) then
    loadstring(game:HttpGet(SaveManager .. "addons/ThemeManager.lua"))()
    xm_9_1 = loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
else
    xm_9_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
Toggles = Library.Toggles
Options = Library.Options
pY = fn283
pL = fn585
py = fn490
pm = fn659
o2 = "#7fd47f"
oY = "#6ec1ff"
oR = "#e8a34d"
oM = "#8b93a3"
oD = fn204
om = fn838
pP = fn541
pz = fn57
pp = fn879
oZ = fn890
oN = fn776
ov = fn481
pN = function(a3)
    local qQ_1
    local qP_1
    qP_1, qQ_1 = pcall(function()
        return a3:GetPivot()
    end)
    local qR = qP_1 and typeof(qQ_1) == "CFrame"
    if qR then
        return qQ_1
    end
    local BasePart = a3:FindFirstChildWhichIsA("BasePart", true)
    return BasePart and BasePart.CFrame or nil
end
ph = fn233
o3 = fn246
oF = fn186
on = fn454
pQ = fn883
pu = fn891
o8 = fn575
oH = fn864
op = fn125
pw = function()
    local rH
    local rJ_1
    local rI = (tonumber(pp("Rebirths")))
    local rI_1
    local rO = if rI then 1 else 0
    local rM = 1047 * rO + 2010 * (1 - rO)
    local rN = 4047 * rO + 354 * (1 - rO)
    if not ((rM * 303 + rN * 252 + rM * rN) % 16777213 == 5574294) then
        rI = 0
    end
    rH = rI
    rI_1, rJ_1 = pcall(function()
        return OrmanConfig.rebirthGereken(rH)
    end)
    local rK = rI_1 and type(rJ_1) == "number"
    if rK then
        return rJ_1
    end
    return OrmanConfig.REBIRTH_TABAN_GUC or 20000
end
oV = function()
    local rP
    local rQ = tonumber(pp("Kapasite")) or 3
    local rQ_2
    local rR_1
    rP = math.max(0, rQ - 3)
    if rQ >= (OrmanConfig.KAPASITE_MAKS or 10) then
        return nil
    end
    rQ_2, rR_1 = pcall(function()
        return OrmanConfig.kapasiteFiyat(rP)
    end)
    local rS = rQ_2 and type(rR_1) == "number"
    if rS then
        return rR_1
    end
    return nil
end
pU = fn86
pH = fn132
ps = function(cl)
    pH(cl)
    if fireproximityprompt then
        pcall(fireproximityprompt, cl)
    else
        pcall(function()
            cl:InputHoldBegin()
            task.wait()
            cl:InputHoldEnd()
        end)
    end
end
pf = fn464
o1 = fn690
oL = fn1
oy = fn363
pZ = fn809
pM = function(cG)
    local sd
    local se = not cG or not cG.Parent or oL(cG)
    if se then
        return false
    end
    local se_1 = cG.Name:match("^Esya") ~= nil
    local sf = se_1 and pZ()
    if sf then
        oy(cG)
        return false
    end
    local se_2 = o1(cG)
    local sf_1 = pf(cG)
    if se_2 then
        pQ(se_2.CFrame)
    end
    if sf_1 then
        ps(sf_1)
    else
        local se_3 = cG.Name:match("^Odun") and OdunAlindi
        sd = se_3 or EsyaAlindi
        pcall(function()
            sd:FireServer(cG)
        end)
    end
    task.wait(0.08)
    if cG.Parent then
        oy(cG)
        return false
    end
    return true
end
ou = fn388
oS = fn390
o7 = fn266
oG = fn253
pS = fn733
pb = fn499
o4 = fn641
pB = function(ed)
    local tr = not ed or not ph(ed) or o3(ed)
    if tr then
        return false
    end
    pa = ed
    local tr_1 = pN(ed)
    if not tr_1 then
        return false
    end
    local ts = 1
    local ts_2
    pQ(tr_1 * oK[1])
    local tt = tr_1.Position
    local tr_2 = false
    local tu = 0
    while true do
        local tv = oD("AutoFarm") and ed.Parent and not ed:GetAttribute("Devriliyor")
        if not tv then
            local tr_3 = ed.Parent and pN(ed)
            if ts_2 then
                tt = tr_3.Position
            end
            local tr_4 = not ed.Parent or ed:GetAttribute("Devriliyor")
            if tr_4 then
                oS(tt, 25)
                oS(tt, 25)
            end
            if pa == ed then
                pa = nil
            end
            return true
        end
        if Library.Unloaded then
            break
        end
        pcall(function()
            AgacVur:FireServer(ed)
        end)
        tu += 1
        if on(ed) then
            tr_2 = true
        end
        local tv_1 = not tr_2
        if tv_1 ~= false then
            tv_1 = tu % 10 == 0
        end
        if tv_1 then
            ts = ts % #oK + 1
            local tv_2 = pN(ed)
            if tv_2 then
                pQ(tv_2 * oK[ts])
                tt = tv_2.Position
            end
        end
        local tv_3 = not tr_2
        if tv_3 ~= false then
            tv_3 = tu >= pG
        end
        if tv_3 then
            oF(ed)
            local tr_5 = ed.Parent and pN(ed)
            ts_2 = tr_5
            if ts_2 then
                tt = ts_2.Position
            end
            local tr_6 = not ed.Parent or ed:GetAttribute("Devriliyor")
            if tr_6 then
                oS(tt, 25)
                oS(tt, 25)
            end
            if pa == ed then
                pa = nil
            end
            return true
        end
        task.wait(pK)
    end
    return false
end
pg = fn797
pV = fn340
oE = fn93
pA = fn188
pt = fn528
oT = fn43
oo = function()
    local ul = if not oD("AutoBuyAxe") then 1 else 0
    if ul == 1 then
        return
    end
    local ud = os.clock()
    if ud - po < 0.75 then
        return
    end
    po = ud
    local ud_1 = pu()
    local ue = oZ()
    local uf
    for k, v in OrmanConfig.BALTA_SEVIYELER do
        local up = k
        local ug_1 = type(v) == "table" and not ud_1[up]
        if ug_1 then
            local ug_2 = tonumber(v.fiyat) or 0
            if ug_2 >= 0 and ue >= ug_2 then
                pcall(function()
                    BaltaSatinAl:FireServer(up)
                end)
                uf = up
                break
            end
        end
    end
    local ug_4 = uf or oH()
    local uc = ug_4
    if uc > 0 then
        task.defer(function()
            pcall(function()
                BaltaSec:FireServer(uc)
            end)
        end)
    end
end
oi = function()
    local ux_2
    local uw_3
    if not oD("AutoBuyPets") then
        return
    end
    local ut = os.clock()
    if ut - pl < 0.75 then
        return
    end
    pl = ut
    local ut_1 = o8()
    local uu = oZ()
    local anahtar
    for k, v in OrmanConfig.AURALAR do
        local uC = k
        local uw_1 = type(v) == "table" and type(v.anahtar) == "string" and not ut_1[v.anahtar]
        if uw_1 then
            local uw_2 = tonumber(v.fiyat) or 0
            if uu >= uw_2 then
                pcall(function()
                    AuraSatinAl:FireServer(uC)
                end)
                anahtar = v.anahtar
                break
            end
        end
    end
    uw_3, ux_2 = op()
    local us = anahtar or ux_2
    if us then
        task.defer(function()
            pcall(function()
                AuraTak:FireServer(us)
            end)
        end)
    end
end
pX = fn171
local xm_10 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pk, Copyable = true }, "|", pn },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
pe = {
    Info = xm_10:AddTab("Info", "info"),
    Main = xm_10:AddTab("Main", "axe"),
    Player = xm_10:AddTab("Player", "person-standing"),
    Settings = xm_10:AddTab("Settings", "settings")
}
for k, v in pe do
    fn455(v)
end
xm_10, xm_2_1, connection, connection2, xm_8, oI, pJ, pD, xm_5, qb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if qb and not xm_5 and (not xm_5 or not xm_5) or (false or not xm_5 or not xm_5 and not xm_5) or not (qb and not xm_5 and (not xm_5 or not xm_5) or (false or not xm_5 or not xm_5 and not xm_5)) then
    xm_4 = pe.Main:AddLeftGroupbox("Farm", "trees")
    xm_4:AddToggle("AutoFarm", { Text = "Auto Farm Trees", Default = false })
    xm_4:AddDropdown("FarmMode", { Text = "Farm Mode", Values = p8, Default = 1 })
    xm_4:AddToggle("AutoBestZone", { Text = "Auto Best Zone", Default = false })
    xm_4:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    xm_4:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    xm_10 = pe.Main:AddLeftGroupbox("Sell", "badge-dollar-sign")
    xm_10:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    xm_10:AddToggle("SellWood", { Text = "Sell Wood", Default = true })
    xm_10:AddToggle("SellItems", { Text = "Sell Items", Default = true })
    xm_10:AddDropdown("SellWhen", { Text = "Sell When", Values = xm_7, Default = 1 })
    xm_10:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
    local xm_2_2 = pe.Main:AddRightGroupbox("Shop", "shopping-cart")
    xm_2_2:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    xm_2_2:AddDropdown("AutoUpgradeList", { Text = "Upgrades", Values = xm_3, Default = 1, Multi = true })
    xm_2_2:AddToggle("AutoBuyAxe", { Text = "Auto Buy Axe", Default = false })
    xm_2_2:AddToggle("AutoBuyPets", { Text = "Auto Buy Pets", Default = false })
    task.spawn(worker2)
    task.spawn(worker)
    xm_8 = function()
        local u4
        u4 = nil
        local u2, u3, u5, u6, Label, u8, u9, va, vb, vc
        local vj_2
        local vi_2
        local vh_2
        local vg_2
        u4 = "Unknown"
        pcall(function()
            local uT_2
            local uS_3
            if identifyexecutor then
                uT_2, uS_3 = identifyexecutor()
                local uU = uT_2 ~= ""
                local uV = type(uT_2) == "string" and uU
                if uV then
                    local uU_2 = type(uS_3) == "string" and uS_3 ~= "" and uT_2 .. " " .. uS_3
                    u4 = uU_2 or uT_2
                end
            end
        end)
        local AccountGroup = pe.Info:AddLeftGroupbox("Account", "circle-user")
        local vd_13
        AccountGroup:AddLabel(pm("User", LocalPlayer.Name, o2), true)
        AccountGroup:AddLabel(pm("Status", "Keyless", o2), true)
        AccountGroup:AddLabel(pm("Executor", u4, o2), true)
        local GameInfoGroup = pe.Info:AddLeftGroupbox("Game Info", "gamepad-2")
        GameInfoGroup:AddLabel(py(pn .. " [" .. tostring(game.PlaceId) .. "]", oY), true)
        GameInfoGroup:AddLabel(pm("Place ID", tostring(game.PlaceId), oY), true)
        Label = GameInfoGroup:AddLabel(pm("Session time", "0s", oR), true)
        u2 = tostring(game.JobId)
        local ve = #u2 > 18 and string.sub(u2, 1, 18) .. "..."
        local ve_4
        local vf = ve
        local vf_2
        local vo = if vf then 1 else 0
        local vm = 1304 * vo + 552 * (1 - vo)
        local vn = 3338 * vo + 1417 * (1 - vo)
        if not ((vm * 1383 + vn * 2671 + vm * vn) % 16777213 == 15071982) then
            vf = u2
        end
        local ve_3 = vf
        GameInfoGroup:AddLabel(pm("Server", ve_3, oM), true)
        GameInfoGroup:AddButton({
            Text = "Copy join script (Job ID)",
            Func = function()
                local hS = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, u2)
                pY(hS, "Copied join script to clipboard")
            end
        })
        u9 = os.clock()
        task.spawn(function()
            local u0_2
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                local u_ = math.floor(os.clock() - u9)
                if u_ < 60 then
                    u0_2 = u_ .. "s"
                elseif u_ < 3600 then
                    u0_2 = string.format("%dm %ds", u_ // 60, u_ % 60)
                else
                    u0_2 = string.format("%dh %dm", u_ // 3600, u_ % 3600 // 60)
                end
                Label:SetText(pm("Session time", u0_2, oR))
            end
        end)
        local ScriptsGroup = pe.Info:AddRightGroupbox("Scripts", "package")
        ScriptsGroup:AddLabel(py("Included in this hub", oM), true)
        ScriptsGroup:AddLabel(py(pn, oY), true)
        local FeaturesGroup = pe.Info:AddRightGroupbox("Features", "list")
        FeaturesGroup:AddLabel(py("Auto Farm", oY), true)
        FeaturesGroup:AddLabel(py("Auto Sell", oR), true)
        FeaturesGroup:AddLabel(py("Shop", o2), true)
        FeaturesGroup:AddLabel(py("Player", oM), true)
        local SocialsGroup = pe.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = pL })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                pY(pi, "Copied Rscripts profile to clipboard")
            end
        })
        local OuroborosHubGroup = pe.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
        OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
        OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
        OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
        OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = pL })
        vc = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
        u8 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
        u5 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
        vb = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
        va = "https://paypal.me/TheTruckerGOD"
        u3 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
        u6 = "https://venmo.com/u/miserablemusic"
        vd_13, ve_4, vf_2, vg_2, vh_2, vi_2, vj_2 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
        local DonationsGroup = pe.Info:AddRightGroupbox("Donations", "heart")
        DonationsGroup:AddLabel(py("All donations are optional but appreciated.", oR), true)
        DonationsGroup:AddLabel(py("If you donate you get a special role, just PING after you donate.", o2), true)
        DonationsGroup:AddDivider()
        DonationsGroup:AddLabel(py("LTC / Litecoin", vd_13), true)
        DonationsGroup:AddButton({
            Text = "Copy Litecoin Address",
            Func = function()
                pY(u3, "Copied Litecoin address")
            end
        })
        DonationsGroup:AddLabel(py("BTC / Bitcoin", ve_4), true)
        DonationsGroup:AddButton({
            Text = "Copy Bitcoin Address",
            Func = function()
                pY(vb, "Copied Bitcoin address")
            end
        })
        DonationsGroup:AddLabel(py("ETH / Ethereum", vf_2), true)
        DonationsGroup:AddButton({
            Text = "Copy Ethereum Address",
            Func = function()
                pY(u8, "Copied Ethereum address")
            end
        })
        DonationsGroup:AddLabel(py("USDT", vg_2), true)
        DonationsGroup:AddButton({
            Text = "Copy USDT Address",
            Func = function()
                pY(u5, "Copied USDT address")
            end
        })
        DonationsGroup:AddLabel(py("Solana", vh_2), true)
        DonationsGroup:AddButton({
            Text = "Copy Solana Address",
            Func = function()
                pY(vc, "Copied Solana address")
            end
        })
        DonationsGroup:AddLabel(py("PayPal", vi_2), true)
        DonationsGroup:AddButton({
            Text = "Copy PayPal Link",
            Func = function()
                pY(va, "Copied PayPal link")
            end
        })
        DonationsGroup:AddLabel(py("Venmo", vj_2), true)
        DonationsGroup:AddButton({
            Text = "Copy Venmo Link",
            Func = function()
                pY(u6, "Copied Venmo link")
            end
        })
        DonationsGroup:AddDivider()
        DonationsGroup:AddLabel(py("Don't have any of the listed currencies but still wanna donate?", oM), true)
        DonationsGroup:AddLabel(py("DM me and we'll work something out.", oY), true)
        local FaqGroup = pe.Info:AddRightGroupbox("FAQ", "circle-help")
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
    end
    xm_8()
    oI = function(iK)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not iK)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not iK
            end
        end)
        if not iK then
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
else
    xm_7 = oI.Main:AddLeftGroupbox("Farm", "trees")
    xm_7:AddToggle("AutoFarm", { Text = "Auto Farm Trees", Default = false })
    xm_7:AddDropdown("FarmMode", { Text = "Farm Mode", Default = 1, Values = xm_8 })
    xm_7:AddToggle("AutoBestZone", { Text = "Auto Best Zone", Default = false })
    xm_7:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    xm_7:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    pe = oI.Main:AddLeftGroupbox("Sell", "badge-dollar-sign")
    pe:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    pe:AddToggle("SellWood", { Text = "Sell Wood", Default = true })
    pe:AddToggle("SellItems", { Text = "Sell Items", Default = true })
    pe:AddDropdown("SellWhen", { Default = 1, Text = "Sell When", Values = xm_10 })
    pe:AddSlider("SellDelay", { Text = "Sell Delay", Min = 0.2, Max = 10, Default = 1, Rounding = 1 })
    xm_3 = oI.Main:AddRightGroupbox("Shop", "shopping-cart")
    xm_3:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    xm_3:AddDropdown("AutoUpgradeList", { Text = "Upgrades", Default = 1, Multi = true, Values = xm_2_1 })
    xm_3:AddToggle("AutoBuyAxe", { Text = "Auto Buy Axe", Default = false })
    xm_3:AddToggle("AutoBuyPets", { Text = "Auto Buy Pets", Default = false })
    task.spawn(worker2)
    task.spawn(worker)
    p8 = function()
        local u4
        u4 = nil
        local u2, u3, u5, u6, Label, u8, u9, va, vb, vc
        local vj_1
        local vi_1
        local vh_1
        local vg_1
        u4 = "Unknown"
        pcall(function()
            local uT_1
            local uS_1
            if identifyexecutor then
                uT_1, uS_1 = identifyexecutor()
                local uU = uT_1 ~= ""
                local uV = type(uT_1) == "string" and uU
                if uV then
                    local uU_1 = type(uS_1) == "string" and uS_1 ~= "" and uT_1 .. " " .. uS_1
                    u4 = uU_1 or uT_1
                end
            end
        end)
        local AccountGroup = pe.Info:AddLeftGroupbox("Account", "circle-user")
        local vd_6
        AccountGroup:AddLabel(pm("User", LocalPlayer.Name, o2), true)
        AccountGroup:AddLabel(pm("Status", "Keyless", o2), true)
        AccountGroup:AddLabel(pm("Executor", u4, o2), true)
        local GameInfoGroup = pe.Info:AddLeftGroupbox("Game Info", "gamepad-2")
        GameInfoGroup:AddLabel(py(pn .. " [" .. tostring(game.PlaceId) .. "]", oY), true)
        GameInfoGroup:AddLabel(pm("Place ID", tostring(game.PlaceId), oY), true)
        Label = GameInfoGroup:AddLabel(pm("Session time", "0s", oR), true)
        u2 = tostring(game.JobId)
        local ve = #u2 > 18 and string.sub(u2, 1, 18) .. "..."
        local ve_2
        local vf = ve
        local vf_1
        local vo = if vf then 1 else 0
        local vm = 1304 * vo + 552 * (1 - vo)
        local vn = 3338 * vo + 1417 * (1 - vo)
        if not ((vm * 1383 + vn * 2671 + vm * vn) % 16777213 == 15071982) then
            vf = u2
        end
        local ve_1 = vf
        GameInfoGroup:AddLabel(pm("Server", ve_1, oM), true)
        GameInfoGroup:AddButton({
            Text = "Copy join script (Job ID)",
            Func = function()
                local hS = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, u2)
                pY(hS, "Copied join script to clipboard")
            end
        })
        u9 = os.clock()
        task.spawn(function()
            local u0_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                local u_ = math.floor(os.clock() - u9)
                if u_ < 60 then
                    u0_1 = u_ .. "s"
                elseif u_ < 3600 then
                    u0_1 = string.format("%dm %ds", u_ // 60, u_ % 60)
                else
                    u0_1 = string.format("%dh %dm", u_ // 3600, u_ % 3600 // 60)
                end
                Label:SetText(pm("Session time", u0_1, oR))
            end
        end)
        local ScriptsGroup = pe.Info:AddRightGroupbox("Scripts", "package")
        ScriptsGroup:AddLabel(py("Included in this hub", oM), true)
        ScriptsGroup:AddLabel(py(pn, oY), true)
        local FeaturesGroup = pe.Info:AddRightGroupbox("Features", "list")
        FeaturesGroup:AddLabel(py("Auto Farm", oY), true)
        FeaturesGroup:AddLabel(py("Auto Sell", oR), true)
        FeaturesGroup:AddLabel(py("Shop", o2), true)
        FeaturesGroup:AddLabel(py("Player", oM), true)
        local SocialsGroup = pe.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = pL })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                pY(pi, "Copied Rscripts profile to clipboard")
            end
        })
        local OuroborosHubGroup = pe.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
        OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
        OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
        OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
        OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = pL })
        vc = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
        u8 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
        u5 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
        vb = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
        va = "https://paypal.me/TheTruckerGOD"
        u3 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
        u6 = "https://venmo.com/u/miserablemusic"
        vd_6, ve_2, vf_1, vg_1, vh_1, vi_1, vj_1 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
        local DonationsGroup = pe.Info:AddRightGroupbox("Donations", "heart")
        DonationsGroup:AddLabel(py("All donations are optional but appreciated.", oR), true)
        DonationsGroup:AddLabel(py("If you donate you get a special role, just PING after you donate.", o2), true)
        DonationsGroup:AddDivider()
        DonationsGroup:AddLabel(py("LTC / Litecoin", vd_6), true)
        DonationsGroup:AddButton({
            Text = "Copy Litecoin Address",
            Func = function()
                pY(u3, "Copied Litecoin address")
            end
        })
        DonationsGroup:AddLabel(py("BTC / Bitcoin", ve_2), true)
        DonationsGroup:AddButton({
            Text = "Copy Bitcoin Address",
            Func = function()
                pY(vb, "Copied Bitcoin address")
            end
        })
        DonationsGroup:AddLabel(py("ETH / Ethereum", vf_1), true)
        DonationsGroup:AddButton({
            Text = "Copy Ethereum Address",
            Func = function()
                pY(u8, "Copied Ethereum address")
            end
        })
        DonationsGroup:AddLabel(py("USDT", vg_1), true)
        DonationsGroup:AddButton({
            Text = "Copy USDT Address",
            Func = function()
                pY(u5, "Copied USDT address")
            end
        })
        DonationsGroup:AddLabel(py("Solana", vh_1), true)
        DonationsGroup:AddButton({
            Text = "Copy Solana Address",
            Func = function()
                pY(vc, "Copied Solana address")
            end
        })
        DonationsGroup:AddLabel(py("PayPal", vi_1), true)
        DonationsGroup:AddButton({
            Text = "Copy PayPal Link",
            Func = function()
                pY(va, "Copied PayPal link")
            end
        })
        DonationsGroup:AddLabel(py("Venmo", vj_1), true)
        DonationsGroup:AddButton({
            Text = "Copy Venmo Link",
            Func = function()
                pY(u6, "Copied Venmo link")
            end
        })
        DonationsGroup:AddDivider()
        DonationsGroup:AddLabel(py("Don't have any of the listed currencies but still wanna donate?", oM), true)
        DonationsGroup:AddLabel(py("DM me and we'll work something out.", oY), true)
        local FaqGroup = pe.Info:AddRightGroupbox("FAQ", "circle-help")
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
    end
    p8()
end
pJ = fn555
pD = fn129
local function qa()
    local MovementGroup = pe.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = pe.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local vv_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if vv_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local vG_1 = om()
            if vG_1 then
                vG_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(jm)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local vL_1 = om()
            if vL_1 then
                vL_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local vL_3 = pP()
            local vM = om()
            if vL_3 and vM then
                vM.PlatformStand = true
                local vM_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    vM_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    vM_1 -= CurrentCamera.CFrame.LookVector
                end
                local vR = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if vR == 1 then
                    vM_1 -= CurrentCamera.CFrame.RightVector
                end
                local vR_1 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if vR_1 == 1 then
                    vM_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    vM_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    vM_1 -= Vector3.new(0, 1, 0)
                end
                vL_3.AssemblyLinearVelocity = Vector3.zero
                if vM_1.Magnitude > 0 then
                    vL_3.CFrame = vL_3.CFrame + vM_1.Unit * Options.FlySpeed.Value * jm
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local vS = om()
            if vS then
                vS.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local vX = om()
            if vX then
                vX.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        oI(Toggles.AntiGameplayPause.Value)
    end)
    oI(true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                oI(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        pD()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(pJ, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(jY)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(pJ, jY)
                end
            end)
        end
    end)
end
qa()
xm_5 = function(j1)
    local j2 = 0
    local j3 = tick()
    j1:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = j1:AddLabel("AFK triggers: 0")
    local function j5()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        j2 += 1
        j3 = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. j2)
        end)
    end
    connection2 = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(j5)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local wd = Toggles.AntiAfk.Value and tick() - j3 >= 60
            if wd then
                pcall(j5)
            end
        end
    end)
    j1:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
end
local MenuGroup = pe.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
xm_5(MenuGroup)
xm_9_1:SetLibrary(Library)
xm_9_1:SetFolder("OuroborosHub")
xm_9_1:SaveDefault("Evil Hello Kitty")
xm_9_1:ApplyToTab(pe.Settings)
xm_9_1:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/CutAndRidePet")
local qc = SaveManager:BuildConfigSection(pe.Settings)
SaveManager:LoadAutoloadConfig()
qb = function(kw)
    local function kx(ky, kz)
        local wg_1 = (ky == "Toggle" and Toggles or Options)[kz]
        local wf_2 = type(wg_1) == "table" and wg_1.Type == ky
        return wf_2 and wg_1 or nil
    end
    local function kH(kI, kJ)
        local Type = kJ.Type
        if Type == "Toggle" then
            return { idx = kI, type = "Toggle", value = kJ.Value == true }
        elseif Type == "Slider" then
            return { idx = kI, type = "Slider", value = tostring(kJ.Value) }
        elseif Type == "Dropdown" then
            return { idx = kI, type = "Dropdown", multi = kJ.Multi == true, value = kJ.Value }
        elseif Type == "Input" then
            local wn = kJ.Value
            local wr = if wn then 1 else 0
            local wp = 1330 * wr + 516 * (1 - wr)
            local wq = 1655 * wr + 164 * (1 - wr)
            if not ((wp * 3273 + wq * 1867 + wp * wq) % 16777213 == 9644125) then
                wn = ""
            end
            return { idx = kI, type = "Input", text = tostring(wn) }
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
    local function kL()
        local wt = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local wu = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if wu then
                    local wu_1 = kH(k, v)
                    if wu_1 then
                        wt[#wt + 1] = wu_1
                    end
                end
            end
        end
        table.sort(wt, function(kU, kV)
            if kU.type ~= kV.type then
                return kU.type < kV.type
            end
            return kU.idx < kV.idx
        end)
        return { objects = wt }
    end
    local function kW(kX)
        local wQ
        wQ = nil
        local wR = type(kX) ~= "table" or type(kX.idx) ~= "string"
        local wV = if wR then 1 else 0
        local wT = 3506 * wV + 1948 * (1 - wV)
        local wU = 1783 * wV + 470 * (1 - wV)
        if not ((wT * 73 + wU * 1553 + wT * wU) % 16777213 == 9276135) then
            wR = type(kX.type) ~= "string"
        end
        if not wR then
            wR = SaveManager.Ignore[kX.idx]
        end
        if wR then
            return false
        end
        wQ = kx(kX.type, kX.idx)
        if not wQ then
            return false
        end
        local wR_1 = pcall(function()
            if kX.type == "Input" then
                if type(kX.text) ~= "string" then
                    return
                end
                wQ:SetValue(kX.text)
            elseif kX.type == "ColorPicker" then
                wQ:SetValueRGB(Color3.fromHex(kX.value), kX.transparency)
            elseif kX.type == "KeyPicker" then
                wQ:SetValue({ kX.key, kX.mode, kX.modifiers })
                if kX.mode == "Toggle" and kX.toggled ~= nil then
                    wQ.Toggled = kX.toggled
                    wQ:Update()
                end
            else
                wQ:SetValue(kX.value)
            end
        end)
        return wR_1
    end
    kw:AddDivider()
    kw:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    kw:AddButton("Export Config to Clipboard", function()
        local wX_1
        local wW_1
        wW_1, wX_1 = pcall(HttpService.JSONEncode, HttpService, kL())
        if not wW_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local wW_2 = setclipboard or toclipboard
        local wW_3 = type(wW_2) ~= "function" or not pcall(wW_2, wX_1)
        if wW_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    kw:AddButton("Import Config from Clipboard Text", function()
        local w1_1
        local w_ = Options.SaveManager_ImportSource.Value or ""
        local w__1
        local w0 = tostring(w_):match("^%s*(.-)%s*$")
        if w0 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        w__1, w1_1 = pcall(HttpService.JSONDecode, HttpService, w0)
        local w0_1 = not w__1 or type(w1_1) ~= "table"
        local w5 = if w0_1 then 1 else 0
        local w3 = 1769 * w5 + 999 * (1 - w5)
        local w4 = 2610 * w5 + 3023 * (1 - w5)
        if not ((w3 * 942 + w4 * 2392 + w3 * w4) % 16777213 == 12526608) then
            w0_1 = type(w1_1.objects) ~= "table"
        end
        if w0_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local w__2 = 0
        for k, v in w1_1.objects do
            local xe = if kW(v) then 1 else 0
            if xe == 1 then
                w__2 += 1
            end
        end
        if w__2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local w1_2 = w__2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(w__2, w1_2), 6)
    end)
end
qb(qc)
Library:OnUnload(fn565)
