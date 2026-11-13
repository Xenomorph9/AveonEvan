local l8
local ll
local lN
local Rebirth
local SpinnerConfig
local me
local lT
local LocalPlayer
local mh
local lk
local BuySpinner
local ln
local mq
local l4
local Toggles
local l7
local lt
local ma
local lS
local lV
local mg
local lz
local UpgradeTier
local l0
local Workspace
local lm
local l3
local mp
local lp
local lI
local lL
local ls
local lO
local mc
local ly
local lU
local lX
local lE
local ml
local li
local lH
local StartFight
local l_
local lo
local lK
local mr
local lr
local function worker()
    while not lH.Unloaded do
        ly()
        li()
        mc()
        me()
        l_()
        l8()
        lI()
        lk()
        task.wait(0.08)
    end
end
local function fn60(ai)
    local mT = Toggles[ai]
    return mT ~= nil and mT.Value == true
end
local function fn109(bc)
    local attr = bc:GetAttribute("RequiredRebirth")
    local nu = typeof(attr) == "number"
    if nu then
        local nv_1 = (LocalPlayer:GetAttribute("Rebirths"))
        local nz = if nv_1 then 1 else 0
        local nx = 64 * nz + 760 * (1 - nz)
        local ny = 910 * nz + 353 * (1 - nz)
        if not ((nx * 1512 + ny * 3875 + nx * ny) % 16777213 == 3681258) then
            nv_1 = 0
        end
        nu = nv_1 < attr
    end
    if nu then
        return false
    end
    local nu_1 = attr == nil
    local nv_2 = bc:GetAttribute("Locked") == true and nu_1
    if nv_2 then
        return false
    end
    return true
end
local function fn127()
    local oz = l3()
    if not oz then
        return nil, nil
    end
    local oA = {}
    local GetTierCap = SpinnerConfig.GetTierCap
    local oC = (LocalPlayer:GetAttribute("Rebirths"))
    local oH = if oC then 1 else 0
    local oF = 272 * oH + 3250 * (1 - oH)
    local oG = 370 * oH + 1542 * (1 - oH)
    if not ((oF * 114 + oG * 1840 + oF * oG) % 16777213 == 812448) then
        oC = 0
    end
    local oD = GetTierCap(oC)
    for i, child in oz:GetChildren() do
        local oz_1 = lt(child) and lE(child) == "Merge"
        if oz_1 then
            local oz_2 = tonumber(child:GetAttribute("Tier"))
            if oz_2 and oz_2 < oD then
                local oB_2 = oA[oz_2]
                if not oB_2 then
                    oB_2 = {}
                    oA[oz_2] = oB_2
                end
                oB_2[#oB_2 + 1] = child
            end
        end
    end
    local oz_3 = {}
    for k in oA do
        oz_3[#oz_3 + 1] = k
    end
    table.sort(oz_3, function(cD, cE)
        return cD > cE
    end)
    for k, v in oz_3 do
        local oz_4 = oA[v]
        if #oz_4 >= 2 then
            return oz_4[1], oz_4[2]
        end
    end
    return nil, nil
end
local function fn143(bJ)
    local n2 = {}
    local n3 = l3()
    if not n3 then
        return n2
    end
    for i, child in n3:GetChildren() do
        local n3_1 = lt(child) and lE(child) == bJ
        if n3_1 then
            n2[#n2 + 1] = child
        end
    end
    table.sort(n2, function(bQ, bR)
        local n_ = tonumber(bQ:GetAttribute("Tier")) or 0
        local n0 = tonumber(bR:GetAttribute("Tier")) or 0
        return n_ > n0
    end)
    return n2
end
local function fn157(W, X)
    return string.format('<font color="%s">%s</font>', X, W)
end
local function fn212()
    mr(lo, "Copied Discord invite to clipboard")
end
local function fn226()
    local m6 = ma()
    local m7 = m6 and m6:FindFirstChild("ResultGui")
    if not m7 then
        return nil, nil
    end
    return m7:FindFirstChild("DefeatFrame"), m7:FindFirstChild("VictoryFrame")
end
local function fn251()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local m2 = leaderstats and leaderstats:FindFirstChild("Coins")
    local m1_1 = m2
    if m2 then
        m2 = tonumber(m1_1.Value)
    end
    return m2 or 0
end
local function fn258()
    local p4 = not lO("AutoStart")
    local p8 = if p4 then 1 else 0
    local p6 = 645 * p8 + 75 * (1 - p8)
    local p7 = 3705 * p8 + 802 * (1 - p8)
    if not ((p6 * 2075 + p7 * 461 + p6 * p7) % 16777213 == 5436105) then
        p4 = lU
    end
    if p4 then
        return
    end
    local p4_1 = ml() or lS()
    if p4_1 then
        local p4_2 = lS() and lO("AutoStart")
        if p4_2 then
            local p4_3 = os.clock()
            if p4_3 - l7 < 0.75 then
                return
            end
            l7 = p4_3
            lr()
            task.delay(0.35, function()
                local p_ = lH.Unloaded or not lO("AutoStart") or mq()
                if p_ then
                    return
                end
                pcall(function()
                    StartFight:FireServer()
                end)
            end)
            return
        end
        return
    end
    if mq() then
        return
    end
    local p4_4 = os.clock()
    if p4_4 - l7 < 0.9 then
        return
    end
    l7 = p4_4
    pcall(function()
        StartFight:FireServer()
    end)
end
local function fn259(a7)
    local np = a7:GetAttribute("Zone") or "Merge"
    return np
end
local function fn272()
    local pK = not lO("AutoRebirth") or mq()
    if pK or lU then
        return
    end
    local pK_1 = os.clock()
    if pK_1 - mg < 1 then
        return
    end
    local pP = if not mh() then 1 else 0
    if pP == 1 then
        return
    end
    mg = pK_1
    pcall(function()
        Rebirth:FireServer()
    end)
end
local function fn283()
    local pZ = if not lO("AutoRetry") then 1 else 0
    if pZ == 1 then
        return
    end
    if not ml() then
        return
    end
    local pV = os.clock()
    if pV - l0 < 0.75 then
        return
    end
    l0 = pV
    lr()
    task.delay(0.35, function()
        local pQ = lH.Unloaded or not lO("AutoRetry")
        if pQ then
            return
        end
        if mq() then
            return
        end
        pcall(function()
            StartFight:FireServer()
        end)
    end)
end
local function fn312()
    local o_ = not lO("AutoUpgradeTier") or mq()
    if o_ or lU then
        return
    end
    if not lz() then
        return
    end
    local o__1 = os.clock()
    if o__1 - ln < 0.35 then
        return
    end
    local o0_1 = tonumber(LocalPlayer:GetAttribute("TierUpgradeCost"))
    local o1 = not o0_1
    local o5 = if o1 then 1 else 0
    local o3 = 3663 * o5 + 1449 * (1 - o5)
    local o4 = 1635 * o5 + 153 * (1 - o5)
    if not ((o3 * 2512 + o4 * 3127 + o3 * o4) % 16777213 == 3525893) then
        o1 = lL() < o0_1
    end
    if o1 then
        return
    end
    ln = o__1
    pcall(function()
        UpgradeTier:FireServer()
    end)
end
local function fn414()
    local Character = LocalPlayer.Character
    local mX = Character and Character:FindFirstChildOfClass("Humanoid")
    return mX
end
local function fn425(e2)
    local DiscordGroup = e2:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = l4 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = l4 })
end
local function fn447(Z, aa, ab)
    return string.format("<b>%s</b> %s %s", Z, lK("-", "#5a6070"), lK(aa, ab))
end
local function fn452()
    local op_1
    local on = tonumber(LocalPlayer:GetAttribute("Rebirths")) or 0
    local on_1
    if SpinnerConfig.IsMaxRebirth(on) then
        return false
    end
    op_1, on_1 = SpinnerConfig.GetRebirthRequirement(on)
    local oq = SpinnerConfig.GetRebirthDefeatLevel(on)
    local oo_1 = tonumber(LocalPlayer:GetAttribute("Level")) or 0
    local oo_2 = (tonumber(LocalPlayer:GetAttribute("MaxTierSeen")))
    local oy = if oo_2 then 1 else 0
    local ow = 543 * oy + 688 * (1 - oy)
    local ox = 3195 * oy + 2473 * (1 - oy)
    if not ((ow * 2894 + ox * 2076 + ow * ox) % 16777213 == 9939147) then
        oo_2 = 0
    end
    local ou = oo_2
    local oo_3 = tonumber(on_1) or math.huge
    local on_2 = ou >= oo_3
    local oo_4 = tonumber(op_1) or math.huge
    local op_2 = oo_1 >= oo_4
    if not op_2 then
        local oo_5 = tonumber(oq) or math.huge
        op_2 = oo_1 > oo_5
    end
    return on_2 and op_2
end
local function fn470()
    local m4 = LocalPlayer:GetAttribute("Fighting") == true or LocalPlayer:GetAttribute("RaidQueued") == true or LocalPlayer:GetAttribute("Raiding") == true
    return m4
end
local function fn504(a9)
    local nr = a9:IsA("Model") and not a9:GetAttribute("IsHero") and a9:GetAttribute("Dead") ~= true and a9:GetAttribute("IsEnemy") ~= true
    return nr
end
local function fn521()
    return LocalPlayer:FindFirstChild("PlayerGui")
end
local function fn576(P, Q)
    if setclipboard then
        setclipboard(P)
    elseif toclipboard then
        toclipboard(P)
    end
    lH:Notify(Q)
end
local function fn596(bs)
    local nM = lp()
    local nN = nM and nM:FindFirstChild("Grids")
    local nO = bs == "Attack" and "AttackGrids"
    local nT = if nO then 1 else 0
    local nR = 3857 * nT + 1218 * (1 - nT)
    local nS = 860 * nT + 2431 * (1 - nT)
    if not ((nR * 1414 + nS * 3227 + nR * nS) % 16777213 == 11546038) then
        nO = "MergeGrids"
    end
    local nN_2 = nN
    local nP = nO
    if nN_2 then
        nN_2 = nN:FindFirstChild(nP)
    end
    local nM_2 = nN_2
    if not nM_2 then
        return nil
    end
    local nN_3 = lV(bs)
    local nO_1 = {}
    for i, child in nM_2:GetChildren() do
        if child:IsA("BasePart") then
            local nM_3 = tonumber(child:GetAttribute("TileIndex"))
            local nP_1 = nM_3 and not nN_3[nM_3] and mp(child)
            if nP_1 then
                nO_1[#nO_1 + 1] = nM_3
            end
        end
    end
    table.sort(nO_1)
    return nO_1[1]
end
local function fn611()
    local ng_1
    local nf_1
    nf_1, ng_1 = lX()
    return ng_1 ~= nil and ng_1.Visible == true
end
local function fn614()
    local oi = tonumber(LocalPlayer:GetAttribute("BuyTier")) or 1
    local oi_1 = tonumber(LocalPlayer:GetAttribute("TierCap")) or SpinnerConfig.MAX_TIER
    local IsMaxRebirth = SpinnerConfig.IsMaxRebirth
    local ol = LocalPlayer:GetAttribute("Rebirths") or 0
    if IsMaxRebirth(ol) then
        return true
    end
    return oi < oi_1
end
local function fn662()
    local Character = LocalPlayer.Character
    local m_ = Character and Character:FindFirstChild("HumanoidRootPart")
    return m_
end
local function fn704()
    lU = false
    lT(false)
    lN()
    if lm then
        lm:Disconnect()
    end
    local sa = ll()
    if sa then
        sa.PlatformStand = false
        sa.WalkSpeed = 16
    end
end
local function fn714()
    local nm = lp()
    local nn = nm and nm:FindFirstChild("PlayerSpinners")
    return nn
end
local function fn729()
    local nc = lX()
    return nc ~= nil and nc.Visible == true
end
local function fn742(bh)
    local nD = {}
    local nE = l3()
    if not nE then
        return nD
    end
    for i, child in nE:GetChildren() do
        local nE_1 = lt(child) and lE(child) == bh
        if nE_1 then
            local nE_2 = tonumber(child:GetAttribute("TileIndex"))
            if nE_2 then
                nD[nE_2] = child
            end
        end
    end
    return nD
end
local function fn753()
    local attr = LocalPlayer:GetAttribute("PlotName")
    if typeof(attr) ~= "string" then
        return nil
    end
    local Plots = Workspace:FindFirstChild("Plots")
    local nk = Plots and Plots:FindFirstChild(attr)
    return nk
end
local function fn802()
    local na_1
    local m9_1
    m9_1, na_1 = lX()
    if m9_1 then
        m9_1.Visible = false
    end
    if na_1 then
        na_1.Visible = false
    end
end
local function fn814()
    local oW = not lO("AutoBuySpinner") or mq()
    if oW or lU then
        return
    end
    local oW_1 = os.clock()
    if oW_1 - ls < 0.2 then
        return
    end
    local oX_1 = tonumber(LocalPlayer:GetAttribute("NextSpinnerCost"))
    local oY = not oX_1 or lL() < oX_1
    if oY then
        return
    end
    ls = oW_1
    pcall(function()
        BuySpinner:FireServer()
    end)
end
li = nil
lk = nil
ll = nil
lm = nil
ln = nil
lo = nil
lp = nil
Toggles = nil
lr = nil
ls = nil
lt = nil
SpinnerConfig = nil
ly = nil
lz = nil
LocalPlayer = nil
lE = nil
Workspace = nil
lH = nil
lI = nil
lK = nil
lL = nil
lN = nil
lO = nil
lS = nil
lT = nil
lU = nil
lV = nil
lX = nil
l_ = nil
l0 = nil
StartFight = nil
local lg, lh, Options, lu, lv, lw, lB, lC, SetAutoMerge, lG, CancelMerge, CoreGui, DropSpinner, lQ, GuiService, lW, PickupSpinner, HttpService, l1
l3 = nil
l4 = nil
l7 = nil
l8 = nil
ma = nil
Rebirth = nil
mc = nil
me = nil
mg = nil
mh = nil
UpgradeTier = nil
ml = nil
BuySpinner = nil
mp = nil
mq = nil
mr = nil
local l5, VirtualUser, l9, md, UserInputService, mi, RunService, mm, mo
local mu_1
local ReplicatedStorage
ReplicatedStorage, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, lv, lo, lh, BuySpinner, UpgradeTier, Rebirth, StartFight, PickupSpinner, DropSpinner, CancelMerge, SetAutoMerge, SpinnerConfig, ls, ln, lg, mo, mm, mg, l7, l0, lU, mu_1, lH, lw, Toggles, Options, mi, l9, l1, lW, lB, mr, l4, lK, lu, lO, ll, md, lL, mq, ma, lX, lr, ml, lS, lp, l3, lE, lt, mp, lV, l5, lC, lG, lz, mh, lQ, me, mc, l_, l8, lI, li, ly, lk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
if (lO and lO or (lO or lO)) and (not md or false or md and not md) and not ((lO and lO or (lO or lO)) and (not md or false or md and not md)) then
    lu = game:GetService("ReplicatedStorage")
else
    ReplicatedStorage = game:GetService("ReplicatedStorage")
end
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
lv = "Merge a Spinner!"
lo = "https://discord.gg/ehKVq7pf7v"
lh = "https://rscripts.net/@Ouroboros"
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
BuySpinner = Remotes:WaitForChild("BuySpinner")
UpgradeTier = Remotes:WaitForChild("UpgradeTier")
Rebirth = Remotes:WaitForChild("Rebirth")
StartFight = Remotes:WaitForChild("StartFight")
PickupSpinner = Remotes:WaitForChild("PickupSpinner")
DropSpinner = Remotes:WaitForChild("DropSpinner")
CancelMerge = Remotes:WaitForChild("CancelMerge")
SetAutoMerge = Remotes:WaitForChild("SetAutoMerge")
SpinnerConfig = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("SpinnerConfig"))
ls = 0
ln = 0
lg = 0
mo = 0
mm = 0
mg = 0
l7 = 0
l0 = 0
lU = false
if (not lV or not lV) and (not ly or not lL) and (not lL or lV or not lL and ma) and ((not lL or not ly) and (ly and not lV) or (lV or not lL or (not lV or ma))) and not ((not lV or not lV) and (not ly or not lL) and (not lL or lV or not lL and ma) and ((not lL or not ly) and (ly and not lV) or (lV or not lL or (not lV or ma)))) then
    lX = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    mu_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
if (ma or ma or (not lK or l0) or (not ma and lK or lh and lK)) and (mg and not ma or not mg and lI or (not lK and lI or (lh or not mg))) and not ((ma or ma or (not lK or l0) or (not ma and lK or lh and lK)) and (mg and not ma or not mg and lI or (not lK and lI or (lh or not mg)))) then
    mu_1 = loadstring(game:HttpGet(lH .. "Library.lua"))()
else
    lH = loadstring(game:HttpGet(mu_1 .. "Library.lua"))()
end
local mz = loadstring(game:HttpGet(mu_1 .. "addons/ThemeManager.lua"))()
lw = loadstring(game:HttpGet(mu_1 .. "addons/SaveManager.lua"))()
Toggles = lH.Toggles
Options = lH.Options
mr = fn576
l4 = fn212
if ((not l3 or not lQ) and (not lQ or not l3) or not l3 and not md and (not l3 and not l3)) and not ((not l3 or not lQ) and (not lQ or not l3) or not l3 and not md and (not l3 and not l3)) then
    lu = fn157
    l9 = fn447
    lK = "#7fd47f"
    l1 = "#6ec1ff"
    mi = "#e8a34d"
else
    lK = fn157
    lu = fn447
    mi = "#7fd47f"
    l9 = "#6ec1ff"
    l1 = "#e8a34d"
end
lW = "#8b93a3"
lO = fn60
ll = fn414
md = fn662
lL = fn251
mq = fn470
ma = fn521
lX = fn226
lr = fn802
ml = fn729
lS = fn611
lp = fn753
l3 = fn714
lE = fn259
lt = fn504
mp = fn109
lV = fn742
l5 = fn596
lC = fn143
lG = function(bT, bU, bV)
    local od = not bT or not bT.Parent or not bU
    local ob_1 = not bV
    local oc_1 = od
    local oh = if oc_1 then 1 else 0
    local of = 3761 * oh + 1823 * (1 - oh)
    local og = 713 * oh + 3284 * (1 - oh)
    if not ((of * 853 + og * 2777 + of * og) % 16777213 == 7869727) then
        oc_1 = ob_1
    end
    if oc_1 then
        return
    end
    pcall(function()
        PickupSpinner:FireServer(bT)
    end)
    task.wait(0.18)
    pcall(function()
        DropSpinner:FireServer(nil, bU, bV)
    end)
    task.wait(0.08)
    pcall(function()
        CancelMerge:FireServer()
    end)
end
lz = fn614
mh = fn452
lQ = fn127
me = fn814
mc = fn312
l_ = function()
    local o6, o7
    local o8 = not lO("AutoMerge")
    local pe = if o8 then 1 else 0
    local pc = 1905 * pe + 318 * (1 - pe)
    local pd = 3296 * pe + 2587 * (1 - pe)
    if not ((pc * 1429 + pd * 1590 + pc * pd) % 16777213 == 14241765) then
        o8 = mq()
    end
    if o8 or lU then
        return
    end
    local o8_1 = os.clock()
    if o8_1 - lg < 0.2 then
        return
    end
    o6, o7 = lQ()
    local o9_1 = not o7
    local pa = not o6
    local ph = if pa then 1 else 0
    local pf = 3348 * ph + 2911 * (1 - ph)
    local pg = 2674 * ph + 3796 * (1 - ph)
    if not ((pf * 1376 + pg * 942 + pf * pg) % 16777213 == 16078308) then
        pa = o9_1
    end
    if pa then
        return
    end
    lg = o8_1
    lU = true
    task.spawn(function()
        pcall(function()
            PickupSpinner:FireServer(o6)
        end)
        task.wait(0.12)
        pcall(function()
            DropSpinner:FireServer(o7, nil, nil)
        end)
        task.wait(0.08)
        pcall(function()
            CancelMerge:FireServer()
        end)
        lU = false
    end)
end
l8 = function()
    local pj, pk, pl, pm
    local pn = not lO("AutoReplaceBetter") or mq()
    if pn or lU then
        return
    end
    local pn_1 = os.clock()
    if pn_1 - mm < 0.45 then
        return
    end
    local po_1 = lC("Attack")
    local pp = lC("Merge")
    if #po_1 == 0 or #pp == 0 then
        return
    end
    pl = pp[1]
    local pp_1 = (tonumber(pl:GetAttribute("Tier")))
    local pv = if pp_1 then 1 else 0
    local pt = 3964 * pv + 1483 * (1 - pv)
    local pu = 3624 * pv + 3534 * (1 - pv)
    if not ((pt * 3161 + pu * 16 + pt * pu) % 16777213 == 10176511) then
        pp_1 = 0
    end
    local pq_1 = math.huge
    pk = nil
    local pr = pp_1
    for k, v in po_1 do
        local po_2 = tonumber(v:GetAttribute("Tier")) or 0
        if po_2 < pr and po_2 < pq_1 then
            pk = v
            pq_1 = po_2
        end
    end
    if not pk then
        return
    end
    pm = l5("Merge")
    if not pm then
        return
    end
    pj = tonumber(pk:GetAttribute("TileIndex"))
    if not pj then
        return
    end
    mm = pn_1
    lU = true
    task.spawn(function()
        lG(pk, pm, "Merge")
        task.wait(0.22)
        if pl.Parent then
            lG(pl, pj, "Attack")
        end
        lU = false
    end)
end
lI = function()
    local pC, pD
    local pE = not lO("AutoPlaceSpinners") or mq()
    if pE or lU then
        return
    end
    local pE_1 = os.clock()
    if pE_1 - mo < 0.35 then
        return
    end
    pC = l5("Attack")
    if not pC then
        return
    end
    local pF_1 = lC("Merge")
    pD = pF_1[1]
    if not pD then
        return
    end
    mo = pE_1
    lU = true
    task.spawn(function()
        lG(pD, pC, "Attack")
        lU = false
    end)
end
li = fn272
ly = fn283
lk = fn258
local Window = lH:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = lo, Copyable = true }, "|", lv },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
lB = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in lB do
    fn425(v)
end
lT, lN, lm = nil, nil, nil
local function mw_2()
    local qn
    qn = nil
    local qk, ql, qm, Label
    qn = "Unknown"
    pcall(function()
        local qd_1
        local qc_1
        if identifyexecutor then
            qd_1, qc_1 = identifyexecutor()
            local qe = qd_1 ~= ""
            local qf = type(qd_1) == "string" and qe
            if qf then
                local qe_1 = type(qc_1) == "string" and qc_1 ~= "" and qd_1 .. " " .. qc_1
                qn = qe_1 or qd_1
            end
        end
    end)
    local AccountGroup = lB.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(lu("User", LocalPlayer.Name, mi), true)
    AccountGroup:AddLabel(lu("Status", "Keyless", mi), true)
    AccountGroup:AddLabel(lu("Executor", qn, mi), true)
    local GameInfoGroup = lB.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(lK(lv .. " [" .. tostring(game.PlaceId) .. "]", l9), true)
    GameInfoGroup:AddLabel(lu("Place ID", tostring(game.PlaceId), l9), true)
    Label = GameInfoGroup:AddLabel(lu("Session time", "0s", l1), true)
    ql = tostring(game.JobId)
    local qq = #ql > 18 and string.sub(ql, 1, 18) .. "..."
    local qq_1 = qq or ql
    GameInfoGroup:AddLabel(lu("Server", qq_1, lW), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local fs = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ql)
            mr(fs, "Copied join script to clipboard")
        end
    })
    qk = os.clock()
    task.spawn(function()
        local qi_1
        while true do
            task.wait(1)
            if lH.Unloaded then
                break
            end
            local qh = math.floor(os.clock() - qk)
            if qh < 60 then
                qi_1 = qh .. "s"
            elseif qh < 3600 then
                qi_1 = string.format("%dm %ds", qh // 60, qh % 60)
            else
                qi_1 = string.format("%dh %dm", qh // 3600, qh % 3600 // 60)
            end
            Label:SetText(lu("Session time", qi_1, l1))
        end
    end)
    local ScriptsGroup = lB.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(lK("Included in this hub", lW), true)
    ScriptsGroup:AddLabel(lK(lv, l9), true)
    local FeaturesGroup = lB.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(lK("Automation", l9), true)
    FeaturesGroup:AddLabel(lK("Misc Utilities", lW), true)
    local SocialsGroup = lB.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = l4 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            mr(lh, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = lB.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = l4 })
    qm = {
        [1] = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        [2] = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        [3] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [4] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [5] = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        [6] = "https://paypal.me/TheTruckerGOD",
        [7] = "https://venmo.com/u/miserablemusic"
    }
    local DonationsGroup = lB.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(lK("All donations are optional but appreciated.", l1), true)
    DonationsGroup:AddLabel(lK("If you donate you get a special role, just PING after you donate.", mi), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(lK("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            mr(qm[1], "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(lK("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            mr(qm[2], "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(lK("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            mr(qm[3], "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(lK("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            mr(qm[4], "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(lK("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            mr(qm[5], "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(lK("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            mr(qm[6], "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(lK("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            mr(qm[7], "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(lK("Don't have any of the listed currencies but still wanna donate?", lW), true)
    DonationsGroup:AddLabel(lK("DM me and we'll work something out.", l9), true)
    local FaqGroup = lB.Info:AddRightGroupbox("FAQ", "circle-help")
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
mw_2()
local AutomationGroup = lB.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoBuySpinner", { Text = "Auto Buy Spinner", Default = false })
AutomationGroup:AddToggle("AutoUpgradeTier", { Text = "Auto Upgrade Tier", Default = false })
AutomationGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
AutomationGroup:AddToggle("AutoPlaceSpinners", { Text = "Auto Place Spinners", Default = false })
AutomationGroup:AddToggle("AutoReplaceBetter", { Text = "Auto Replace Spinners with Better", Default = false })
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddToggle("AutoStart", { Text = "Auto Start", Default = false })
AutomationGroup:AddToggle("AutoRetry", { Text = "Auto Retry", Default = false })
Toggles.AutoMerge:OnChanged(function()
    local qt
    qt = Toggles.AutoMerge.Value == true
    if LocalPlayer:GetAttribute("AutoMerge") == qt then
        return
    end
    pcall(function()
        SetAutoMerge:FireServer(qt)
    end)
end)
task.spawn(worker)
local function mv()
    local connection
    local MovementGroup = lB.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = lB.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function gn(go)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not go)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not go
            end
        end)
        if not go then
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
    local function gB(gC)
        if not gC:IsA("ProximityPrompt") then
            return
        end
        gC.HoldDuration = 0
        gC.MaxActivationDistance = 50
        gC.RequiresLineOfSight = false
    end
    connection = nil
    RunService.Stepped:Connect(function()
        if lH.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local qB_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if qB_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if lH.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local qJ_1 = ll()
            if qJ_1 then
                qJ_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(gY)
        if lH.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local qO_1 = ll()
            if qO_1 then
                qO_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local qO_3 = md()
            local qP = ll()
            if qO_3 and qP then
                qP.PlatformStand = true
                local qP_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    qP_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    qP_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    qP_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    qP_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    qP_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    qP_1 -= Vector3.new(0, 1, 0)
                end
                qO_3.AssemblyLinearVelocity = Vector3.zero
                if qP_1.Magnitude > 0 then
                    qO_3.CFrame = qO_3.CFrame + qP_1.Unit * Options.FlySpeed.Value * gY
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local qS = ll()
            if qS then
                qS.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local q_ = ll()
            if q_ then
                q_.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        gn(Toggles.AntiGameplayPause.Value)
    end)
    gn(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(gB, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(hr)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(gB, hr)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not lH.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                gn(true)
            end
        end
    end)
    return gn, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
lT, lN = mv()
local function mt_1(hB)
    local hC = 0
    local hD = tick()
    hB:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = hB:AddLabel("AFK triggers: 0")
    local function hF()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        hC += 1
        hD = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. hC)
        end)
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(hF)
        end
    end)
    task.spawn(function()
        while not lH.Unloaded do
            task.wait(2)
            local rh = Toggles.AntiAfk.Value and tick() - hD >= 60
            if rh then
                pcall(hF)
            end
        end
    end)
    hB:AddButton({
        Text = "Unload UI",
        Func = function()
            lH:Unload()
        end
    })
    return connection
end
local MenuGroup = lB.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
lH.ToggleKeybind = Options.MenuKeybind
lm = mt_1(MenuGroup)
mz:SetLibrary(lH)
mz:SetFolder("OuroborosHub")
mz:SaveDefault("Evil Hello Kitty")
mz:ApplyToTab(lB.Settings)
mz:LoadDefault()
lw:SetLibrary(lH)
lw:IgnoreThemeSettings()
lw:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
lw:SetFolder("OuroborosHub/MergeASpinner")
local mA = lw:BuildConfigSection(lB.Settings)
lw:LoadAutoloadConfig()
local function mx_1(h5)
    local function h6(h7, h8)
        local rk = h7 == "Toggle" and Toggles
        local rp = if rk then 1 else 0
        local rn = 867 * rp + 3894 * (1 - rp)
        local ro = 2939 * rp + 3662 * (1 - rp)
        if not ((rn * 811 + ro * 1684 + rn * ro) % 16777213 == 8200526) then
            rk = Options
        end
        local rk_1 = rk[h8]
        local rj_2 = type(rk_1) == "table" and rk_1.Type == h7
        local rj_3 = rj_2 and rk_1
        local rp_1 = if rj_3 then 1 else 0
        local rn_1 = 3092 * rp_1 + 3283 * (1 - rp_1)
        local ro_1 = 4001 * rp_1 + 3691 * (1 - rp_1)
        if not ((rn_1 * 2602 + ro_1 * 1906 + rn_1 * ro_1) % 16777213 == 11265169) then
            rj_3 = nil
        end
        return rj_3
    end
    local function ih(ii, ij)
        local Type = ij.Type
        if Type == "Toggle" then
            return { idx = ii, type = "Toggle", value = ij.Value == true }
        elseif Type == "Slider" then
            return { idx = ii, type = "Slider", value = tostring(ij.Value) }
        elseif Type == "Dropdown" then
            return { idx = ii, type = "Dropdown", multi = ij.Multi == true, value = ij.Value }
        elseif Type == "Input" then
            local ru = ij.Value or ""
            return { idx = ii, type = "Input", text = tostring(ru) }
        elseif Type == "ColorPicker" then
            return { idx = ii, type = "ColorPicker", value = ij.Value:ToHex(), transparency = ij.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = ii,
                type = "KeyPicker",
                mode = ij.Mode,
                key = ij.Value,
                modifiers = ij.Modifiers,
                toggled = ij.Toggled
            }
        else
            return nil
        end
    end
    local function il()
        local rA = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local rB = type(v) == "table" and type(v.Type) == "string" and not lw.Ignore[k]
                if rB then
                    local rB_1 = ih(k, v)
                    if rB_1 then
                        rA[#rA + 1] = rB_1
                    end
                end
            end
        end
        table.sort(rA, function(iu, iv)
            if iu.type ~= iv.type then
                return iu.type < iv.type
            end
            return iu.idx < iv.idx
        end)
        return { objects = rA }
    end
    local function iw(ix)
        local rR
        rR = nil
        local rS = type(ix) ~= "table" or type(ix.idx) ~= "string" or type(ix.type) ~= "string" or lw.Ignore[ix.idx]
        if rS then
            return false
        end
        rR = h6(ix.type, ix.idx)
        if not rR then
            return false
        end
        local rS_1 = pcall(function()
            if ix.type == "Input" then
                if type(ix.text) ~= "string" then
                    return
                end
                rR:SetValue(ix.text)
            elseif ix.type == "ColorPicker" then
                rR:SetValueRGB(Color3.fromHex(ix.value), ix.transparency)
            elseif ix.type == "KeyPicker" then
                rR:SetValue({ ix.key, ix.mode, ix.modifiers })
                if ix.mode == "Toggle" and ix.toggled ~= nil then
                    rR.Toggled = ix.toggled
                    rR:Update()
                end
            else
                rR:SetValue(ix.value)
            end
        end)
        return rS_1
    end
    h5:AddDivider()
    h5:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    h5:AddButton("Export Config to Clipboard", function()
        local rV_1
        local rU_1
        rU_1, rV_1 = pcall(HttpService.JSONEncode, HttpService, il())
        if not rU_1 then
            lH:Notify("Failed to encode the config")
            return
        end
        local rU_2 = setclipboard or toclipboard
        local rU_3 = type(rU_2) ~= "function" or not pcall(rU_2, rV_1)
        if rU_3 then
            lH:Notify("Your executor does not support copying to the clipboard")
            return
        end
        lH:Notify("Config copied to clipboard", 6)
    end)
    h5:AddButton("Import Config from Clipboard Text", function()
        local r__1
        local rY = Options.SaveManager_ImportSource.Value or ""
        local rY_1
        local rZ = tostring(rY):match("^%s*(.-)%s*$")
        if rZ == "" then
            lH:Notify("Paste an exported config into the box first")
            return
        end
        rY_1, r__1 = pcall(HttpService.JSONDecode, HttpService, rZ)
        local rZ_1 = not rY_1 or type(r__1) ~= "table" or type(r__1.objects) ~= "table"
        if rZ_1 then
            lH:Notify("That is not a valid exported config")
            return
        end
        local rY_2 = 0
        for k, v in r__1.objects do
            if iw(v) then
                rY_2 += 1
            end
        end
        if rY_2 == 0 then
            lH:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local r__2 = rY_2 == 1 and "" or "s"
        lH:Notify(("Imported %d setting%s"):format(rY_2, r__2), 6)
    end)
end
mx_1(mA)
lH:OnUnload(fn704)
