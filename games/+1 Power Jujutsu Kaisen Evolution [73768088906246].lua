local kN
local kq
local j7
local kQ
local kt
local ka
local kT
local Library
local kA
local kg
local kD
local kZ
local PowerUtils
local kj
local km
local k4
local kM
local kp
local Options
local kP
local ks
local j9
local kw
local MorphConfig
local kV
local kf
local ki
local kF
local k3
local ko
local kL
local k6
local j5
local j8
local kv
local kb
local kU
local Toggles
local kB
local kE
local TrainingZones
local TitleConfig
local kH
local k2
local kK
local k5
local function fn63()
    if not j8("AutoFarmWin") then
        return
    end
    local mm = kE
    if kL("WinFarmMode") == "Random" then
        mm = math.random(1, kE)
    end
    kU.ClaimWins:Fire(mm)
end
local function fn128()
    local Character = ko.Character
    local me = Character and Character:FindFirstChildOfClass("Humanoid")
    return me
end
local function fn143(c_)
    local DiscordGroup = c_:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kv })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kv })
end
local function worker()
    while not Library.Unloaded do
        if j8("AutoFarmWin") then
            pcall(kH)
            pcall(kH)
            pcall(kH)
        end
        task.wait()
    end
end
local function fn171()
    if not j8("AutoEquipBestTitle") then
        k4 = nil
        return
    end
    local mR = kT()
    if not mR then
        return
    end
    local mS = kV(mR)
    if not mS or mR.EquippedTitle == mS or k4 == mS then
        return
    end
    kU.ChangeTitleState:Fire(mS, true)
    k4 = mS
end
local function fn189(aA)
    if Library.Unloaded then
        return false
    end
    local lS = Toggles[aA]
    return lS ~= nil and lS.Value == true
end
local function fn190(b7)
    local ne = b7 and b7.UnlockedMorphs
    if type(ne) ~= "table" then
        return nil
    end
    local ne_1 = -1
    local ng
    local nh
    for k, v in MorphConfig.Morphs do
        if ne[k] then
            if v.BestMultiplier then
                ng = k
            else
                local ni = tonumber(v.Multiplier) or 0
                local ni_1 = ni > ne_1
                if not ni_1 then
                    local nk = ni == ne_1 and kP(k) > kP(nh)
                    ni_1 = nk
                end
                if ni_1 then
                    ne_1 = ni
                    nh = k
                end
            end
        end
    end
    return ng or nh
end
local function fn200(ad)
    if ad then
        k6[#k6 + 1] = ad
    end
    return ad
end
local function worker2()
    while not Library.Unloaded do
        if j8("AutoClick") then
            pcall(kt)
        end
        task.wait()
    end
end
local function fn230()
    if not j8("AutoTrain") then
        return
    end
    local nW = kT()
    if not nW then
        return
    end
    local nX = kN(nW)
    if not nX then
        return
    end
    local nW_1 = TrainingZones:FindFirstChild(nX)
    local nX_1 = nW_1 and nW_1:FindFirstChild("Zone")
    local nX_2 = not nX_1 or not nX_1:IsA("BasePart")
    if nX_2 then
        return
    end
    local nX_3 = kp()
    local nY = nX_1.CFrame * CFrame.new(0, 3, 0)
    if not nX_3 or (nX_3.Position - nX_1.Position).Magnitude > 10 then
        k3(nY)
    end
end
local function fn262(aG)
    local lV = Options[aG]
    return lV and lV.Value or nil
end
local function fn282(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function fn311()
    if not j8("AutoBuyMorphs") then
        return
    end
    local ns = kT()
    if not ns then
        return
    end
    local nt = tonumber(ns.Wins) or 0
    local UnlockedMorphs = ns.UnlockedMorphs
    local nv = false
    for k, v in k2 do
        local nw = type(UnlockedMorphs) == "table" and UnlockedMorphs[v.Id]
        if nw and true or false then
            km[v.Id] = true
        else
            if not km[v.Id] and nt >= v.Price then
                km[v.Id] = true
                kU.PurchaseMorph:Fire(v.Id)
                nv = true
                break
            end
        end
    end
    if nv then
        return
    end
    local nt_2 = kF(ns)
    if not nt_2 or kq == nt_2 or ns.EquippedMorph == nt_2 then
        if nt_2 then
            kq = nt_2
        end
        return
    end
    kU.EquipMorph:Fire(nt_2)
    kq = nt_2
end
local function fn328()
    if not j8("AutoClick") then
        return
    end
    kU.TapEvent:Fire()
end
local function fn339(bD)
    local mF = bD
    local mG
    local mH = -1
    if mF then
        mF = bD.Titles
    end
    local mI = mF
    if type(mI) ~= "table" then
        return nil
    end
    for k in mI do
        local mF_1 = TitleConfig[k]
        local mI_1 = mF_1 and tonumber(mF_1.Multiplier)
        local mF_2 = mI_1 or 0
        if mF_2 > mH then
            mH = mF_2
            mG = k
        end
    end
    return mG
end
local function fn388()
    if not j8("AutoBuyAura") then
        ki = nil
        return
    end
    local mW = kT()
    if not mW then
        return
    end
    local mX = tonumber(mW.Wins) or 0
    local mY = mX
    local Auras = mW.Auras
    local mZ = -1
    local Id
    for k, v in kA do
        local m0_1 = type(Auras) == "table" and Auras[v.Id] == true
        local m1 = m0_1
        local m0_2 = not m1
        if m0_2 ~= false then
            m0_2 = mY >= v.Cost
        end
        if m0_2 then
            kU.PurchaseAura:Fire(v.Id)
            mY -= v.Cost
            m1 = true
        end
        if m1 and v.Multiplier > mZ then
            mZ = v.Multiplier
            Id = v.Id
        end
    end
    if Id and mW.EquippedAura ~= Id and ki ~= Id then
        kU.ChangeAura:Fire(Id, true)
        ki = Id
    end
end
local function fn419(b5)
    local nc = tonumber(string.match(tostring(b5), "%d+")) or 0
    return nc
end
local function fn442()
    kQ(j9, "Copied Discord invite to clipboard")
end
local function fn469(cy)
    local nI = tonumber(cy.Rebirths) or 0
    local Gamepasses = cy.Gamepasses
    local nK = -1
    local nL
    for k, v in j5 do
        if type(v) == "table" then
            local nM = false
            if v.Product then
                local nN_1 = type(Gamepasses) == "table" and Gamepasses[v.Product] == true
                nM = nN_1
            elseif type(v.Rebirths) == "number" then
                nM = nI >= v.Rebirths
            end
            local nN_2 = tonumber(v.Multiplier) or 0
            local nO = nM
            if nO then
                nO = nN_2 > nK
            end
            if nO then
                nK = nN_2
                nL = k
            end
        end
    end
    return nL
end
local function fn476()
    if Toggles.AutoBuyMorphs.Value then
        kq = nil
        table.clear(km)
    end
end
local function fn535(a0)
    local Character = ko.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(a0)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = a0
        end
    end
end
local function fn557()
    if not j8("AutoBuyUpgrades") then
        return
    end
    local mu = kT()
    if not mu then
        return
    end
    local mv = kj(kL("UpgradeList"))
    local mw = tonumber(mu.Wins) or 0
    local mx = mw
    local Upgrades = mu.Upgrades
    for k in mv do
        local mu_1 = kK[k]
        local mv_1 = mu_1 and kw.Upgrades[mu_1]
        if mv_1 then
            local mv_2 = Upgrades and Upgrades[mu_1]
            local mz = tonumber(mv_2) or 0
            if mz < (mv_1.Max or 0) then
                local my_1 = kw.Prices[mz + 1]
                local mv_4 = type(my_1) == "number" and mx >= my_1
                if mv_4 then
                    kU.Upgrade:Fire(mu_1)
                    mx -= my_1
                end
            end
        end
    end
end
local function fn563(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, kb("-", "#5a6070"), kb(ar, as))
end
local function fn571(T, U)
    if T.Multiplier == U.Multiplier then
        return T.Price < U.Price
    end
    return T.Multiplier > U.Multiplier
end
local function fn572()
    if not j8("AutoRebirth") then
        return
    end
    local mo = kT()
    if not mo then
        return
    end
    local mp = PowerUtils:GetLevelData(mo.Power, mo.Rebirths)
    local mo_1 = not mp
    local mt = if mo_1 then 1 else 0
    local mr = 3696 * mt + 2829 * (1 - mt)
    local ms = 643 * mt + 311 * (1 - mt)
    if not ((mr * 3510 + ms * 45 + mr * ms) % 16777213 == 15378423) then
        mo_1 = not mp.IsMax
    end
    if mo_1 then
        return
    end
    kU.Rebirth:Fire()
end
local function fn575(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function fn606(aL)
    local l0 = {}
    if type(aL) == "table" then
        for k, v in aL do
            if v then
                l0[k] = true
            end
        end
    else
        local l1 = aL ~= ""
        local l2 = type(aL) == "string" and l1
        if l2 then
            l0[aL] = true
        end
    end
    return l0
end
local function worker3()
    local n5_1
    local n4_1
    while not Library.Unloaded do
        n4_1, n5_1 = pcall(function()
            j7()
            kB()
            kZ()
            ka()
            kf()
            kM()
        end)
        if not n4_1 then
            warn("[Ouroboros] farm loop:", n5_1)
            task.wait(0.5)
        else
            task.wait(0.15)
        end
    end
end
local function fn644()
    return k5 and k5.Data or nil
end
local function fn663()
    local Character = ko.Character
    local mh = Character and Character:FindFirstChild("HumanoidRootPart")
    return mh
end
local function worker4()
    while not Library.Unloaded do
        if j8("AutoRollTitle") then
            local n7 = kT()
            local n8 = n7
            if n8 then
                local n9 = tonumber(n7.Wins) or 0
                n8 = n9 >= 10
            end
            if n8 then
                pcall(function()
                    kU.RequestRoll:Fire()
                end)
            end
        end
        task.wait(0.2)
    end
end
local function fn702()
    local ob = hookfunction ~= nil
    local oc = hookmetamethod ~= nil
    local od = getrawmetatable ~= nil
    local oe = setrawmetatable ~= nil
    local of = getgc ~= nil
    local og = getgenv ~= nil
    local oh = getreg ~= nil
    local oi = getconnections ~= nil
    local oj = firesignal ~= nil
    local ol = getcallbackvalue ~= nil
    local om = setclipboard ~= nil
    local on = getcustomasset ~= nil
    local oo = getnamecallmethod ~= nil
    local op = isexecutorclosure ~= nil
    local oq = fireproximityprompt ~= nil
    local ot = firetouchinterest ~= nil
    local ou = WebSocket ~= nil
    local ov = readfile ~= nil
    local ow = writefile ~= nil
    local oy = (request or http_request) ~= nil
    local oA = (debug and debug.getupvalues) ~= nil
    local oC = (debug and debug.setupvalue) ~= nil
    local oD = 0
    local oE = { ob, oc, od, oe, of, og, oh, oi, oj, ol, om, on, oo, op, oq, ot, ou, ov, ow, oy, oA, oC }
    for i, v in ipairs(oE) do
        if v then
            oD += 1
        end
    end
    local ob_1 = oD / #oE
    if ob_1 >= 0.9 then
        return kb("Full Support", kD)
    elseif ob_1 >= 0.6 then
        return kb("Half Support", ks)
    else
        return kb("Low Support", kg)
    end
end
local function fn709(N, O)
    if N.Cost == O.Cost then
        return N.Multiplier > O.Multiplier
    end
    return N.Cost < O.Cost
end
j5 = nil
Options = nil
j7 = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
MorphConfig = nil
Toggles = nil
kf = nil
kg = nil
ki = nil
kj = nil
TitleConfig = nil
km = nil
ko = nil
kp = nil
kq = nil
ks = nil
kt = nil
kv = nil
kw = nil
Library = nil
kA = nil
kB = nil
kD = nil
kE = nil
kF = nil
PowerUtils = nil
kH = nil
kK = nil
kL = nil
kM = nil
kN = nil
kP = nil
kQ = nil
local j4, kd, kh, SaveManager, kn, kr, ky, CoreGui, kC, kI, kJ, kO, kR, kS
kT = nil
kU = nil
kV = nil
kZ = nil
TrainingZones = nil
k2 = nil
k3 = nil
k4 = nil
k5 = nil
k6 = nil
local kW, kX, RunService, k0, k1, k7, k8
local li_1
local lh_1
local ld_1
local AuraConfig
local lf_1
local le_1
local Packet
local lb_1
local la_1
j4, lf_1, RunService, kS, kR, kO, kI, kC, CoreGui, kr, ko, kh, j9, k7, k1, le_1, ld_1, Packet, lb_1, PowerUtils, la_1, kw, AuraConfig, TitleConfig, MorphConfig, j5, k5, TrainingZones, kU, li_1, lh_1, kK, kE, kA = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local k9 = 108
repeat
    local lj_1 = (k9 * 13 + 6) % 20 + 1
    if lj_1 <= 10 then
        if lj_1 <= 5 then
            if lj_1 <= 3 then
                if lj_1 <= 2 then
                    if lj_1 <= 1 then
                        local sh = bit32.rrotate(bit32.bxor(bit32.lrotate(k9, 26), string.byte(tostring(kC))), 13)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(sh, 2737858933), 1513505207), (bit32.bxor(bit32.band(sh, 1557108362), 1391392662))), 1513505207), 1391392662) == sh then
                            Packet = require(le_1:WaitForChild("Packet"))
                        else
                            le_1 = require(Packet:WaitForChild("Packet"))
                        end
                        k9 = (k9 + 97) % 160
                    else
                        local lk_1 = {
                            "qgpdxvb",
                            "znsfsufw",
                            "oaloggizz",
                            "lhp",
                            "enggsdreri",
                            "wigsimxq",
                            "lkih",
                            "ujhnnqqskhl",
                            "lzjc"
                        }
                        local sd = k9
                        local ll_1 = lk_1[sd % 9 + 1]
                        if ll_1:len() >= ll_1:gsub("(.)", "%1%1", sd % 3 % 2 + 1):len() then
                            lf_1 = require(lb_1:WaitForChild("ReplicaController"))
                        else
                            lb_1 = require(lf_1:WaitForChild("ReplicaController"))
                        end
                        k9 = (k9 + 97) % 160
                    end
                else
                    local lk_2 = {
                        "bmdfmuumv",
                        "cejfpbkyq",
                        "pgbdups",
                        "ettvogvcd",
                        "tcb",
                        "uztppyll",
                        "rjsjraym",
                        "kucrbdvoik",
                        "ssyqsvhrlymz",
                        "jadofwsihcft"
                    }
                    if lk_2[(k9 * 31 + 4) % 10 + 1] <= lk_2[(k9 * 31 + 4) % 10 + 1] then
                        PowerUtils = require(lf_1:WaitForChild("Shared"):WaitForChild("PowerUtils"))
                    else
                        lf_1 = require(PowerUtils:WaitForChild("Shared"):WaitForChild("PowerUtils"))
                    end
                    k9 = (k9 + 37) % 160
                end
            elseif lj_1 <= 4 then
                if ((lf_1 and lf_1 or not kr and kr or (not kr or not kr) and (lf_1 and lf_1)) and (lf_1 and kr and (lf_1 or not lf_1) or (kr or kr) and (not lf_1 or not kr)) or (lf_1 or not kr) and (not kr and kr) and (not kr and kr or not lf_1 and not lf_1) and ((kr and not kr or (lf_1 or lf_1)) and (kr or not kr or (lf_1 or not lf_1)))) and not ((lf_1 and lf_1 or not kr and kr or (not kr or not kr) and (lf_1 and lf_1)) and (lf_1 and kr and (lf_1 or not lf_1) or (kr or kr) and (not lf_1 or not kr)) or (lf_1 or not kr) and (not kr and kr) and (not kr and kr or not lf_1 and not lf_1) and ((kr and not kr or (lf_1 or lf_1)) and (kr or not kr or (lf_1 or not lf_1)))) then
                    ld_1 = require(la_1:WaitForChild("WallConfig"))
                else
                    la_1 = require(ld_1:WaitForChild("WallConfig"))
                end
                k9 = (k9 + 97) % 160
            else
                if ((not k5 or not j4) and (Packet and k5) or (not Packet or k5 or (Packet or k5))) and (not k5 or not k5 or (not Packet or TitleConfig) or (TitleConfig and not Packet or PowerUtils and TitleConfig)) or not (((not k5 or not j4) and (Packet and k5) or (not Packet or k5 or (Packet or k5))) and (not k5 or not k5 or (not Packet or TitleConfig) or (TitleConfig and not Packet or PowerUtils and TitleConfig))) then
                    kw = require(ld_1:WaitForChild("UpgradeConfig"))
                else
                    ld_1 = require(kw:WaitForChild("UpgradeConfig"))
                end
                k9 = (k9 + 57) % 160
            end
        elseif lj_1 <= 8 then
            if lj_1 <= 7 then
                if lj_1 <= 6 then
                    local lk_3 = (vector.create((k9 * 2 + 2) % 11 + 1, (k9 * 10 + 3) % 13 + 1, (k9 * 5 + 15) % 17 + 1))
                    local ll_2 = (vector.create((k9 * 4 + 3) % 11 + 1, (k9 * 8 + 10) % 13 + 1, (k9 * 7 + 2) % 17 + 1))
                    local lm_1 = (vector.create((k9 * 3 + 6) % 11 + 1, (k9 * 6 + 5) % 13 + 1, (k9 * 11 + 9) % 17 + 1))
                    local ln_1 = (vector.create((k9 * 4 + 3) % 5 + 1, (k9 * 3 + 1) % 7 + 1, (k9 * 3 + 6) % 9 + 1))
                    if vector.dot(vector.cross(lk_3, (vector.cross(ll_2, lm_1))), ln_1) == vector.dot(ll_2 * vector.dot(lk_3, lm_1) - lm_1 * vector.dot(lk_3, ll_2), ln_1) then
                        AuraConfig = require(ld_1:WaitForChild("AuraConfig"))
                    else
                        ld_1 = require(AuraConfig:WaitForChild("AuraConfig"))
                    end
                    k9 = (k9 + 117) % 160
                else
                    local sc = bit32.rrotate(bit32.bxor(bit32.lrotate(k9, 19), string.byte(tostring(le_1))), 24)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(sc, 3248324422), 28), 1813633012) ~= bit32.lrotate(sc, 28) then
                        ld_1 = require(TitleConfig:WaitForChild("TitleConfig"))
                    else
                        TitleConfig = require(ld_1:WaitForChild("TitleConfig"))
                    end
                    k9 = (k9 + 157) % 160
                end
            else
                if (not PowerUtils or not PowerUtils) and (PowerUtils or TrainingZones) and (not kO and MorphConfig or (MorphConfig or ko)) or not ((not PowerUtils or not PowerUtils) and (PowerUtils or TrainingZones) and (not kO and MorphConfig or (MorphConfig or ko))) then
                    MorphConfig = require(ld_1:WaitForChild("MorphConfig"))
                else
                    ld_1 = require(MorphConfig:WaitForChild("MorphConfig"))
                end
                k9 = (k9 + 37) % 160
            end
        elseif lj_1 <= 9 then
            local lk_4 = { "hfk", "evw", "driqginlj", "cvvrgm", "jjsay", "vuxug", "kvowv" }
            local se = k9
            local ll_3 = lk_4[se % 7 + 1]
            if ll_3:len() >= ll_3:gsub("(.)", "%1%1", se % 3 % 2 + 1):len() then
                kr = require(kU:WaitForChild("TrainingConfig"))
                lb_1 = Packet:GetReplica()
                k5 = TrainingZones:WaitForChild("TrainingZones")
                li_1 = {
                    PurchaseMorph = ld_1("PurchaseMorph", ld_1.String),
                    ChangeAura = ld_1("ChangeAura", ld_1.String, ld_1.Boolean8),
                    ClaimWins = ld_1("ClaimWins", ld_1.NumberS8),
                    RequestRoll = ld_1("RequestRoll"):Response(ld_1.String, ld_1.NumberS8),
                    EquipMorph = ld_1("EquipMorph", ld_1.String),
                    ChangeTitleState = ld_1("ChangeTitleState", ld_1.String, ld_1.Boolean8),
                    PurchaseAura = ld_1("PurchaseAura", ld_1.String),
                    TapEvent = ld_1("TapEvent"),
                    Rebirth = ld_1("Rebirth"),
                    Upgrade = ld_1("Upgrade", ld_1.String)
                }
                j5 = { "Best", "Random" }
            else
                j5 = require(ld_1:WaitForChild("TrainingConfig"))
                k5 = lb_1:GetReplica()
                TrainingZones = kr:WaitForChild("TrainingZones")
                kU = {
                    ClaimWins = Packet("ClaimWins", Packet.NumberS8),
                    Rebirth = Packet("Rebirth"),
                    Upgrade = Packet("Upgrade", Packet.String),
                    RequestRoll = Packet("RequestRoll"):Response(Packet.String, Packet.NumberS8),
                    ChangeTitleState = Packet("ChangeTitleState", Packet.String, Packet.Boolean8),
                    PurchaseAura = Packet("PurchaseAura", Packet.String),
                    ChangeAura = Packet("ChangeAura", Packet.String, Packet.Boolean8),
                    PurchaseMorph = Packet("PurchaseMorph", Packet.String),
                    EquipMorph = Packet("EquipMorph", Packet.String),
                    TapEvent = Packet("TapEvent")
                }
                li_1 = { "Best", "Random" }
            end
            k9 = (k9 + 97) % 160
        else
            if k9 * 85454845 + 8 + 6 >= k9 * 85454845 + 8 + 6 + 2 then
                kA = { "Speed", "Training Rate", "Luck" }
                lh_1 = { ["Training Rate"] = "TrainingRate", Luck = "Luck", Speed = "Speed" }
                la_1 = #kE.Walls
                kK = {}
            else
                lh_1 = { "Speed", "Training Rate", "Luck" }
                kK = { Speed = "Speed", ["Training Rate"] = "TrainingRate", Luck = "Luck" }
                kE = #la_1.Walls
                kA = {}
            end
            k9 = (k9 + 137) % 160
        end
    elseif lj_1 <= 15 then
        if lj_1 <= 13 then
            if lj_1 <= 12 then
                if lj_1 <= 11 then
                    if k9 * 59937601 + 8 + 3 <= k9 * 59937601 + 8 + 3 + 6 then
                        j4 = game:GetService("Players")
                    else
                        kw = game:GetService("Players")
                    end
                    k9 = (k9 + 77) % 160
                else
                    if (kK and TrainingZones or (not kU or kU)) and ((not kU or not TrainingZones) and (TrainingZones or not TrainingZones)) and (kU and kU or (kK or TrainingZones) or (not kU or not kU or (not TrainingZones or not TrainingZones))) and (TrainingZones and TrainingZones and (not kK or not TrainingZones) and (kK and kU and (not TrainingZones or not kK)) or ((kU or not kU) and (not kU and TrainingZones) or not kU and not TrainingZones and (not kK and kU))) and not ((kK and TrainingZones or (not kU or kU)) and ((not kU or not TrainingZones) and (TrainingZones or not TrainingZones)) and (kU and kU or (kK or TrainingZones) or (not kU or not kU or (not TrainingZones or not TrainingZones))) and (TrainingZones and TrainingZones and (not kK or not TrainingZones) and (kK and kU and (not TrainingZones or not kK)) or ((kU or not kU) and (not kU and TrainingZones) or not kU and not TrainingZones and (not kK and kU)))) then
                        lb_1 = game:GetService("ReplicatedStorage")
                    else
                        lf_1 = game:GetService("ReplicatedStorage")
                    end
                    k9 = (k9 + 97) % 160
                end
            else
                if (kr and not kr or (not j4 or not j4)) and (not j4 and not j4 and (not j4 and not j4)) or not ((kr and not kr or (not j4 or not j4)) and (not j4 and not j4 and (not j4 and not j4))) then
                    RunService = game:GetService("RunService")
                else
                    kE = game:GetService("RunService")
                end
                k9 = (k9 + 137) % 160
            end
        elseif lj_1 <= 14 then
            local lk_5 = {
                "jmdabuuiix",
                "rqvyyiunpnl",
                "uclhraxqev",
                "ggcwhykpt",
                "ftzrh",
                "kgs",
                "exfaa",
                "esotfkuzm",
                "nyayjeiuml",
                "drwxhrrdw",
                "xsjwzmpkg",
                "qlhe"
            }
            local rS = k9
            local ll_4 = lk_5[rS % 12 + 1]
            if ll_4:len() <= ll_4:reverse():rep(rS % 3 + 2):len() then
                kS = game:GetService("UserInputService")
                kR = game:GetService("VirtualUser")
                kO = game:GetService("HttpService")
            else
                kO = game:GetService("UserInputService")
                kS = game:GetService("VirtualUser")
                kR = game:GetService("HttpService")
            end
            k9 = (k9 + 97) % 160
        else
            if (k9 * 2 + 5) * 16 % 3 == ((k9 * 2 + 5) * 16 + 3) % 3 then
                kI = game:GetService("GuiService")
                kC = game:GetService("TeleportService")
            else
                kC = game:GetService("GuiService")
                kI = game:GetService("TeleportService")
            end
            k9 = (k9 + 17) % 160
        end
    elseif lj_1 <= 18 then
        if lj_1 <= 17 then
            if lj_1 <= 16 then
                local lk_6 = (vector.create((k9 * 4 + 6) % 11 + 1, (k9 * 11 + 8) % 13 + 1, (k9 * 10 + 14) % 17 + 1))
                local ll_5 = (vector.create((k9 * 5 + 8) % 11 + 1, (k9 * 7 + 10) % 13 + 1, (k9 * 9 + 9) % 17 + 1))
                local lm_2 = (vector.create((k9 * 4 + 3) % 5 + 1, (k9 * 3 + 6) % 7 + 1, (k9 * 5 + 6) % 9 + 1))
                if math.abs((vector.angle(lk_6, ll_5, lm_2))) - math.abs((vector.angle(ll_5, lk_6, lm_2))) == 4 then
                    li_1 = game:GetService("CoreGui")
                else
                    CoreGui = game:GetService("CoreGui")
                end
                k9 = (k9 + 157) % 160
            else
                if (k9 * 3 + 5) * 13 % 4 == ((k9 * 3 + 5) * 13 + 14) % 4 then
                    j5 = game:GetService("Workspace")
                else
                    kr = game:GetService("Workspace")
                end
                k9 = (k9 + 77) % 160
            end
        else
            local lk_7 = (vector.create((k9 * 7 + 9) % 11 + 1, (k9 * 11 + 6) % 13 + 1, (k9 * 2 + 5) % 17 + 1))
            local ll_6 = (vector.create((k9 * 6 + 7) % 11 + 1, (k9 * 8 + 6) % 13 + 1, (k9 * 7 + 11) % 17 + 1))
            local lm_3 = (vector.create((k9 * 1 + 2) % 11 + 1, (k9 * 8 + 6) % 13 + 1, (k9 * 11 + 7) % 17 + 1))
            local ln_2 = (vector.create((k9 * 4 + 1) % 5 + 1, (k9 * 5 + 6) % 7 + 1, (k9 * 4 + 3) % 9 + 1))
            if vector.dot(vector.cross(lk_7, (vector.cross(ll_6, lm_3))), ln_2) == vector.dot(ll_6 * vector.dot(lk_7, lm_3) - lm_3 * vector.dot(lk_7, ll_6), ln_2) then
                ko = j4.LocalPlayer
                kh = "+1 Power Jujutsu Kaisen Evolution"
                j9 = "https://discord.gg/ehKVq7pf7v"
                k7 = "https://rscripts.net/@Ouroboros"
                k1 = "https://ouroboros-hub-rbx.web.app/"
            else
                j9 = nil
                k7 = "+1 Power Jujutsu Kaisen Evolution"
                j4 = "https://discord.gg/ehKVq7pf7v"
                kh = "https://rscripts.net/@Ouroboros"
                ko = "https://ouroboros-hub-rbx.web.app/"
            end
            k9 = (k9 + 97) % 160
        end
    elseif lj_1 <= 19 then
        local lj_2 = { "wgpkkvwdz", "lxtxug", "arepzst", "lyn", "typwvtqf", "ehoaewk", "azciik" }
        local sb = k9
        local lk_8 = lj_2[sb % 7 + 1]
        if lk_8:len() >= lk_8:gsub("(.)", "%1%1", sb % 3 % 2 + 1):len() then
            lf_1 = le_1:WaitForChild("Packages")
        else
            le_1 = lf_1:WaitForChild("Packages")
        end
        k9 = (k9 + 97) % 160
    else
        local rG = bit32.rrotate(bit32.bxor(bit32.lrotate(k9, 21), string.byte(tostring(kr))), 11)
        if bit32.bxor(bit32.lrotate(bit32.bxor(rG, 2574890237), 18), 3556140518) ~= bit32.lrotate(rG, 18) then
            lf_1 = ld_1:WaitForChild("Config")
        else
            ld_1 = lf_1:WaitForChild("Config")
        end
        k9 = (k9 + 157) % 160
    end
until (k9 * 67 + 60) % 160 == 156
for k, v in AuraConfig do
    local k9_1 = type(v) == "table" and type(v.Cost) == "number"
    if k9_1 then
        local k9_2 = #kA + 1
        local Cost = v.Cost
        local lb_2 = tonumber(v.Multiplier) or 0
        kA[k9_2] = { Id = k, Cost = Cost, Multiplier = lb_2 }
    end
end
k2 = nil
local la_3 = 2
repeat
    if (la_3 * 2 + 1) * 16 % 3 == ((la_3 * 2 + 1) * 16 + 3) % 3 then
        table.sort(kA, fn709)
        k2 = {}
    else
        table.sort(k2, fn709)
        kA = {}
    end
    la_3 = (la_3 + 1) % 4
until (la_3 * 3 + 0) % 4 == 1
for k, v in MorphConfig.Morphs do
    local k9_3 = type(v) == "table" and type(v.Price) == "number" and v.Product == nil
    if k9_3 then
        local k9_4 = #k2 + 1
        local Price = v.Price
        local lb_3 = tonumber(v.Multiplier) or 0
        k2[k9_4] = { Id = k, Price = Price, Multiplier = lb_3 }
    end
end
Library, SaveManager, Toggles, Options, k6, kD, ky, ks, kn, kg, k4, ki, kq, km, k8, k0, kQ, kv, kb, kX, j8, kL, kj, kT, kJ, kp, k3, kH, j7, kB, kV, kZ, ka, kP, kF, kf, kN, kM, kt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(k2, fn571)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
k6 = {}
k0 = fn200
kQ = fn282
kv = fn442
kb = fn575
kX = fn563
kD = "#7fd47f"
ky = "#6ec1ff"
ks = "#e8a34d"
kn = "#8b93a3"
kg = "#e05a5a"
j8 = fn189
kL = fn262
kj = fn606
kT = fn644
kJ = fn128
kp = fn663
k3 = fn535
kH = fn63
j7 = fn572
kB = fn557
kV = fn339
k4 = nil
kZ = fn171
ki = nil
ka = fn388
kP = fn419
kF = fn190
kq = nil
km = {}
kf = fn311
kN = fn469
kM = fn230
kt = fn328
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = j9, Copyable = true }, "|", kh },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
k8 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in k8 do
    if k ~= "Info" then
        fn143(v)
    end
end
kd, kW = nil, nil
local FarmGroup = k8.Main:AddLeftGroupbox("Farm", "swords")
FarmGroup:AddToggle("AutoFarmWin", { Text = "Auto Farm Win", Default = false })
FarmGroup:AddDropdown("WinFarmMode", { Text = "Win Mode", Values = li_1, Default = 1 })
FarmGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
FarmGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
local ShopGroup = k8.Main:AddRightGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = lh_1, Default = {}, Multi = true })
ShopGroup:AddToggle("AutoRollTitle", { Text = "Auto Roll Title", Default = false })
ShopGroup:AddToggle("AutoEquipBestTitle", { Text = "Auto Equip Best Title", Default = false })
ShopGroup:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
ShopGroup:AddToggle("AutoBuyMorphs", { Text = "Auto Buy Morphs", Default = false })
Toggles.AutoBuyMorphs:OnChanged(fn476)
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
kW = fn702
local function lg_2()
    local o7
    local o3
    o3 = nil
    o7 = nil
    local Label3, o5, o6, Label, Label2
    o7 = "Unknown"
    pcall(function()
        local oN_1
        local oM_1
        if identifyexecutor then
            oN_1, oM_1 = identifyexecutor()
            local oO = oN_1 ~= ""
            local oP = type(oN_1) == "string" and oO
            if oP then
                local oO_1 = type(oM_1) == "string" and oM_1 ~= "" and oN_1 .. " " .. oM_1
                o7 = oO_1 or oN_1
            end
        end
    end)
    local pa = kW()
    o3 = os.clock()
    o6 = function()
        local oU = math.floor(os.clock() - o3)
        if oU < 60 then
            return oU .. "s"
        elseif oU < 3600 then
            return string.format("%dm %ds", oU // 60, oU % 60)
        else
            return string.format("%dh %dm", oU // 3600, oU % 3600 // 60)
        end
    end
    local UserGroup = k8.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = ko, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(kX("User", ko.DisplayName .. " @" .. ko.Name, kD), true)
    UserGroup:AddLabel(kX("UserId", tostring(ko.UserId), ky), true)
    UserGroup:AddLabel(kX("Executor", o7 .. "  " .. pa, kD), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(kX("Session", o6(), ks), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            kQ(ko.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            kQ("https://www.roblox.com/users/" .. tostring(ko.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = k8.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(kX("Game", kh, ky), true)
    Label2 = SessionGroup:AddLabel(kX("Players", "0/0", kD), true)
    o5 = tostring(game.JobId)
    local pb_1 = #o5 > 18 and string.sub(o5, 1, 18) .. "..."
    local pc = pb_1
    local pg = if pc then 1 else 0
    local pe = 2469 * pg + 4047 * (1 - pg)
    local pf = 2514 * pg + 677 * (1 - pg)
    if not ((pe * 638 + pf * 1518 + pe * pf) % 16777213 == 11598540) then
        pc = o5
    end
    local pb_2 = pc
    SessionGroup:AddLabel(kX("Job", pb_2, kn), true)
    Label = SessionGroup:AddLabel(kX("Ping", "0 ms", ks), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            kC:Teleport(game.PlaceId, ko)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            kQ(o5, "Copied Job ID")
        end
    })
    task.spawn(function()
        local o__1
        local oZ_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(kX("Session", o6(), ks))
            Label2:SetText(kX("Players", #j4:GetPlayers() .. "/" .. tostring(j4.MaxPlayers), kD))
            oZ_1, o__1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local oZ_2 = oZ_1 and o__1 .. " ms" or "n/a"
            Label:SetText(kX("Ping", oZ_2, ks))
        end
    end)
    local SocialsGroup = k8.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = kv })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(k7)
            elseif toclipboard then
                toclipboard(k7)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            kQ(k1, "Copied website link")
        end
    })
end
lg_2()
local function lj_3()
    local MovementGroup = k8.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = k8.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    k0(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = ko.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local ph_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if ph_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    k0(kS.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local pp_1 = kJ()
            if pp_1 then
                pp_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = kr.CurrentCamera
    k0(RunService.RenderStepped:Connect(function(fc)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local pr_1 = kJ()
            if pr_1 then
                pr_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local pr_3 = kp()
            local ps = kJ()
            if pr_3 and ps then
                ps.PlatformStand = true
                local ps_1 = Vector3.zero
                if kS:IsKeyDown(Enum.KeyCode.W) then
                    ps_1 = ps_1 + CurrentCamera.CFrame.LookVector
                end
                if kS:IsKeyDown(Enum.KeyCode.S) then
                    ps_1 = ps_1 - CurrentCamera.CFrame.LookVector
                end
                local px = if kS:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if px == 1 then
                    ps_1 = ps_1 - CurrentCamera.CFrame.RightVector
                end
                if kS:IsKeyDown(Enum.KeyCode.D) then
                    ps_1 = ps_1 + CurrentCamera.CFrame.RightVector
                end
                if kS:IsKeyDown(Enum.KeyCode.Space) then
                    ps_1 = ps_1 + Vector3.new(0, 1, 0)
                end
                local pA = if kS:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if pA == 1 then
                    ps_1 = ps_1 - Vector3.new(0, 1, 0)
                end
                pr_3.Velocity = Vector3.zero
                if ps_1.Magnitude > 0 then
                    pr_3.CFrame = pr_3.CFrame + ps_1.Unit * Options.FlySpeed.Value * fc
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local pB = kJ()
            if pB then
                pB.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local pD = kJ()
            if pD then
                pD.WalkSpeed = 16
            end
        end
    end)
    local function fy(fz)
        pcall(function()
            kI:SetGameplayPausedNotificationEnabled(not fz)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not fz
            end
        end)
        if not fz then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(ko, "GameplayPaused", false)
            else
                ko.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        fy(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                fy(true)
            end
        end
    end)
    local function fQ(fR)
        if not fR:IsA("ProximityPrompt") then
            return
        end
        fR.HoldDuration = 0
        fR.MaxActivationDistance = 50
        fR.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(kr:GetDescendants()) do
                pcall(fQ, descendant)
            end
            connection = kr.DescendantAdded:Connect(function(fZ)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(fQ, fZ)
                end
            end)
            k0(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        fy(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
lj_3()
local function lc_2()
    local MenuGroup = k8.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local f9 = 0
    local ga = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function gc()
        local CurrentCamera = kr.CurrentCamera
        if not CurrentCamera then
            return
        end
        kR:CaptureController()
        kR:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        f9 = f9 + 1
        ga = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. f9)
        end)
    end
    local connection = ko.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(gc)
        end
    end)
    k0(connection)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local p2 = Toggles.AntiAfk.Value and tick() - ga >= 60
            if p2 then
                pcall(gc)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
end
lc_2()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("MyScriptHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(k8.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/Plus1PowerJujutsuKaisenEvolution")
kd = SaveManager:BuildConfigSection(k8.Settings)
SaveManager:LoadAutoloadConfig()
local function k9_5()
    local function gB(gC, gD)
        local p5_1 = (gC == "Toggle" and Toggles or Options)[gD]
        local p4_2 = type(p5_1) == "table" and p5_1.Type == gC
        return p4_2 and p5_1 or nil
    end
    local function gL(gM, gN)
        local Type = gN.Type
        if Type == "Toggle" then
            return { idx = gM, type = "Toggle", value = gN.Value == true }
        elseif Type == "Slider" then
            return { idx = gM, type = "Slider", value = tostring(gN.Value) }
        elseif Type == "Dropdown" then
            return { idx = gM, type = "Dropdown", multi = gN.Multi == true, value = gN.Value }
        elseif Type == "Input" then
            local qc = gN.Value or ""
            return { idx = gM, type = "Input", text = tostring(qc) }
        elseif Type == "ColorPicker" then
            return { idx = gM, type = "ColorPicker", value = gN.Value:ToHex(), transparency = gN.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = gM,
                type = "KeyPicker",
                mode = gN.Mode,
                key = gN.Value,
                modifiers = gN.Modifiers,
                toggled = gN.Toggled
            }
        else
            return nil
        end
    end
    local function gP()
        local qf = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local qg = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if qg then
                    local qg_1 = gL(k, v)
                    if qg_1 then
                        qf[#qf + 1] = qg_1
                    end
                end
            end
        end
        table.sort(qf, function(gZ, g_)
            if gZ.type ~= g_.type then
                return gZ.type < g_.type
            end
            return gZ.idx < g_.idx
        end)
        return { objects = qf }
    end
    local function g0(g1)
        local qw
        qw = nil
        local qx = type(g1) ~= "table"
        local qB = if qx then 1 else 0
        local qz = 2031 * qB + 2525 * (1 - qB)
        local qA = 1349 * qB + 1354 * (1 - qB)
        if not ((qz * 3230 + qA * 855 + qz * qA) % 16777213 == 10453344) then
            qx = type(g1.idx) ~= "string"
        end
        if not qx then
            qx = type(g1.type) ~= "string"
        end
        if not qx then
            qx = SaveManager.Ignore[g1.idx]
        end
        if qx then
            return false
        end
        qw = gB(g1.type, g1.idx)
        if not qw then
            return false
        end
        local qx_1 = pcall(function()
            if g1.type == "Input" then
                if type(g1.text) ~= "string" then
                    return
                end
                qw:SetValue(g1.text)
            elseif g1.type == "ColorPicker" then
                qw:SetValueRGB(Color3.fromHex(g1.value), g1.transparency)
            elseif g1.type == "KeyPicker" then
                qw:SetValue({ g1.key, g1.mode, g1.modifiers })
                if g1.mode == "Toggle" and g1.toggled ~= nil then
                    qw.Toggled = g1.toggled
                    qw:Update()
                end
            else
                qw:SetValue(g1.value)
            end
        end)
        return qx_1
    end
    kd:AddDivider()
    kd:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    kd:AddButton("Export Config to Clipboard", function()
        local qD_1
        local qC_1
        qC_1, qD_1 = pcall(kO.JSONEncode, kO, gP())
        if not qC_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local qC_2 = setclipboard or toclipboard
        local qC_3 = type(qC_2) ~= "function" or not pcall(qC_2, qD_1)
        if qC_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    kd:AddButton("Import Config from Clipboard Text", function()
        local qI_1
        local qG = Options.SaveManager_ImportSource.Value or ""
        local qG_1
        local qH = tostring(qG):match("^%s*(.-)%s*$")
        if qH == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        qG_1, qI_1 = pcall(kO.JSONDecode, kO, qH)
        local qH_1 = not qG_1 or type(qI_1) ~= "table" or type(qI_1.objects) ~= "table"
        if qH_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local qG_2 = 0
        for i, v in ipairs(qI_1.objects) do
            if g0(v) then
                qG_2 += 1
            end
        end
        if qG_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local qI_2 = qG_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(qG_2, qI_2), 6)
    end)
end
k9_5()
Library:OnUnload(function()
    for k, v in k6 do
        local qZ = v
        pcall(function()
            qZ:Disconnect()
        end)
    end
    table.clear(k6)
end)
