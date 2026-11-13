local gL
local gp
local gs
local gv
local gR
local gE
local gi
local gH
local gl
local go
local gK
local Position
local gr
local gQ
local gx
local gT
local gW
local gA
local gh
local gD
local RollFinished
local gk
local screenGui3
local gn
local gJ
local Fluent
local Upgrades
local gS
local gz
local gV
local LocalPlayer
local gY
local gF
local gI
local function fn1()
    return gk.UpgradeInterval
end
local function fn3()
    gh(gz.EquipBest)
end
local function fn7(bF)
    gk.FarmInterval = bF
end
local function fn18()
    if setclipboard then
        pcall(setclipboard, gA)
    end
end
local function fn30()
    task.spawn(function()
        gh(gz.RollWeapons, false)
    end)
    task.wait(0.1)
    if RollFinished then
        RollFinished.Fire(RollFinished)
    end
end
local function fn31()
    gI.SetValues(gI, gn())
end
local function fn45(c4)
    if c4.UserInputType == Enum.UserInputType.MouseButton1 or c4.UserInputType == Enum.UserInputType.Touch then
        gW = false
    end
end
local function fn92()
    return gk.AutoFarm or gk.AutoFarmBest
end
local function fn111(as)
    gV.SetValue(gV, as)
end
local function fn124()
    local iB = {}
    for i, v in ipairs(gx()) do
        iB[#iB + 1] = v.Name
    end
    return iB
end
local function fn145()
    return gk.AutoUpgrades
end
local function fn190(cZ)
    if cZ.UserInputType == Enum.UserInputType.MouseButton1 or cZ.UserInputType == Enum.UserInputType.Touch then
        gW, gL = true, false
        gR = cZ.Position
        Position = gs.Position
    end
end
local function fn224(a6)
    local iy = not a6 or not a6:FindFirstChild("SafeAreaSpawn")
    if iy then
        return false
    end
    local iy_1 = gH()
    local iz = not iy_1 or LocalPlayer:GetAttribute("isAscending")
    if iz then
        return false
    end
    iy_1.CFrame = a6.SafeAreaSpawn.CFrame
    return true
end
local function fn231()
    if gL then
        return
    end
    gl = not gl
    pcall(function()
        gi.Minimize(gi, gl)
    end)
end
local function fn238(aP)
    local ij = tonumber(gF("🎯 Kills")) or 0
    local ij_1 = tonumber(gF("🌟 Ascends")) or 0
    local ij_2 = tonumber(aP:GetAttribute("MinimumKills")) or 0
    local ij_3 = tonumber(aP:GetAttribute("MinAscends"))
    local io = tonumber(aP:GetAttribute("MinTTStages"))
    if ij < ij_2 then
        return false
    end
    if ij_3 and ij_1 < ij_3 then
        return false
    elseif io then
        local ij_4 = select(2, gh(gz.GetSetting, "HighestTimeTrialStage")) or 0
        local ij_5 = tonumber(ij_4) or 0
        if ij_5 < io then
            return false
        end
        return true
    else
        return true
    end
end
local function fn282()
    local ja_1
    local i8_1, i8_2, i8_3
    local i7_1, i7_2, i7_3
    i7_1, i8_1 = gh(gz.GetUpgradeValue, "Damage Multiplier")
    local i9 = i7_1 and (function(eD, eE, eF)
        if type(eD) ~= "string" then
            return false
        end
        if #eD ~= eE then
            return false
        end
        local eG = 5381
        local eH = buffer.fromstring(eD)
        local eI = 0
        while eI <= eE - 4 do
            local eJ = buffer.readu32(eH, eI)
            local eG_7 = bit32.bxor(eG, eJ)
            eG = bit32.band(eG_7 * 33, 4294967295)
            eI = eI + 4
        end
        while eI < eE do
            local eK = buffer.readu8(eH, eI)
            local eG_8 = bit32.bxor(eG, eK)
            eG = bit32.band(eG_8 * 33, 4294967295)
            eI = eI + 1
        end
        return eG == eF
    end)(type(i8_1), 6, 472614556)
    local i9_2
    if i9 then
        gY.DmgMulti = i8_1
    end
    i7_2, i8_2 = gh(gz.GetGuildDamageMulti)
    local i9_1 = i7_2 and (function(eD, eE, eF)
        if type(eD) ~= "string" then
            return false
        end
        if #eD ~= eE then
            return false
        end
        local eG = 5381
        local eH = buffer.fromstring(eD)
        local eI = 0
        while eI <= eE - 4 do
            local eJ = buffer.readu32(eH, eI)
            local eG_5 = bit32.bxor(eG, eJ)
            eG = bit32.band(eG_5 * 33, 4294967295)
            eI = eI + 4
        end
        while eI < eE do
            local eK = buffer.readu8(eH, eI)
            local eG_6 = bit32.bxor(eG, eK)
            eG = bit32.band(eG_6 * 33, 4294967295)
            eI = eI + 1
        end
        return eG == eF
    end)(type(i8_2), 6, 472614556)
    if i9_1 then
        gY.GuildMulti = i8_2
    end
    i8_3, i9_2, i7_3, ja_1 = gh(gz.GetBestWeapon)
    local i7_4 = i8_3 and (function(eD, eE, eF)
        if type(eD) ~= "string" then
            return false
        end
        if #eD ~= eE then
            return false
        end
        local eG = 5381
        local eH = buffer.fromstring(eD)
        local eI = 0
        while eI <= eE - 4 do
            local eJ = buffer.readu32(eH, eI)
            local eG_3 = bit32.bxor(eG, eJ)
            eG = bit32.band(eG_3 * 33, 4294967295)
            eI = eI + 4
        end
        while eI < eE do
            local eK = buffer.readu8(eH, eI)
            local eG_4 = bit32.bxor(eG, eK)
            eG = bit32.band(eG_4 * 33, 4294967295)
            eI = eI + 1
        end
        return eG == eF
    end)(typeof(i9_2), 8, 1471340621) and (function(eD, eE, eF)
        if type(eD) ~= "string" then
            return false
        end
        if #eD ~= eE then
            return false
        end
        local eG = 5381
        local eH = buffer.fromstring(eD)
        local eI = 0
        while eI <= eE - 4 do
            local eJ = buffer.readu32(eH, eI)
            local eG_1 = bit32.bxor(eG, eJ)
            eG = bit32.band(eG_1 * 33, 4294967295)
            eI = eI + 4
        end
        while eI < eE do
            local eK = buffer.readu8(eH, eI)
            local eG_2 = bit32.bxor(eG, eK)
            eG = bit32.band(eG_2 * 33, 4294967295)
            eI = eI + 1
        end
        return eG == eF
    end)(type(ja_1), 6, 472614556)
    if i7_4 then
        gY.BestWeapon = i9_2
        gY.BaseDamage = ja_1
    end
end
local function fn303(bB)
    gk.AutoFarmBest = bB
end
local function fn334()
    return gk.AutoBuySP
end
local function fn346(bz)
    gk.AutoFarm = bz
end
local function worker()
    return gk.FarmInterval
end
local function fn361(au)
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    if not leaderstats then
        return nil
    end
    local h0 = leaderstats:FindFirstChild(au)
    return h0 and h0.Value or nil
end
local function fn364()
    return gk.AutoSpin
end
local function fn416(bw)
    local iM = tonumber(bw) or 1
    gk.SPAmount = iM
end
local function fn439()
    return gk.SpinInterval
end
local function fn446(bq)
    gk.AutoEquipBest = bq
end
local function fn454()
    Upgrades = require(gS.SharedConstants.Upgrades)
end
local function fn474()
    return gk.EquipInterval
end
local function fn485()
    local ju
    if gk.AutoFarmBest then
        ju = go()
    elseif gk.AutoFarm and gk.SelectedStage then
        ju = gp(gk.SelectedStage)
    end
    if ju then
        gJ(ju)
        gQ("Farming: " .. ju.Name)
    end
end
local function fn508(bu)
    gk.AutoBuySP = bu
end
local function fn535(bj)
    local Areas = gE:FindFirstChild("Areas")
    local iK = Areas and Areas:FindFirstChild(bj)
    return iK
end
local function fn557(ai)
    ai.AddButton(ai, {
        Title = "Join Discord for Dupes/Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = gr
    })
end
local function fn614(bn)
    gk.AutoSpin = bn
end
local function fn615()
    return gk.AutoEquipBest
end
local function fn660()
    local iq
    for i, v in ipairs(gx()) do
        if gD(v) then
            iq = v
        end
    end
    return iq
end
local function fn682()
    local Areas = gE:FindFirstChild("Areas")
    if not Areas then
        return {}
    end
    local h9 = {}
    for i, child in ipairs(Areas:GetChildren()) do
        if child:FindFirstChild("SafeAreaSpawn") then
            h9[#h9 + 1] = child
        end
    end
    table.sort(h9, function(aK, aL)
        local h5 = tonumber(aK:GetAttribute("StageNum")) or 0
        local h6 = tonumber(aL:GetAttribute("StageNum")) or 0
        return h5 < h6
    end)
    return h9
end
local function fn700()
    return gk.SPInterval
end
local function fn755()
    local Character = LocalPlayer.Character
    local h3 = Character and Character:FindFirstChild("HumanoidRootPart")
    return h3
end
local function fn758(cq)
    local jc = os.clock()
    if jc - gY.LastTeleport >= gk.TeleportInterval then
        gY.LastTeleport = jc
        gK(cq)
    end
    local BestWeapon = gY.BestWeapon
    if not (function(eD, eE, eF)
        if type(eD) ~= "string" then
            return false
        end
        if #eD ~= eE then
            return false
        end
        local eG = 5381
        local eH = buffer.fromstring(eD)
        local eI = 0
        while eI <= eE - 4 do
            local eJ = buffer.readu32(eH, eI)
            local eG_9 = bit32.bxor(eG, eJ)
            eG = bit32.band(eG_9 * 33, 4294967295)
            eI = eI + 4
        end
        while eI < eE do
            local eK = buffer.readu8(eH, eI)
            local eG_10 = bit32.bxor(eG, eK)
            eG = bit32.band(eG_10 * 33, 4294967295)
            eI = eI + 1
        end
        return eG == eF
    end)(typeof(BestWeapon), 8, 1471340621) then
        return
    end
    local jd = gY.BaseDamage * (1 + gY.DmgMulti / 100 + gY.GuildMulti)
    local Mobs = gE:FindFirstChild("Mobs")
    if not Mobs then
        return
    end
    local jf = {}
    for i, child in ipairs(Mobs:GetChildren()) do
        local attr = child:GetAttribute("ID")
        if attr then
            jf[#jf + 1] = { attr, jd, BestWeapon }
        end
    end
    if #jf > 0 then
        local HitMob = gz.HitMob
        HitMob.FireServer(HitMob, jf)
    end
end
local function fn812(eM, eN)
    if type(eM) ~= "number" then
        return false
    end
    if eM % 1 ~= 0 then
        return false
    end
    local eO_1 = bit32.bxor(eM, 1540483477)
    local eO_2 = bit32.band(eO_1 * 403 + bit32.lshift(eO_1, 24), 4294967295)
    local eO_3 = bit32.bxor(eO_2, bit32.rshift(eO_2, 13))
    return eO_3 == eN
end
local function fn823()
    local i4_1
    local i1 = gk.SPAmount or 1
    local i1_2
    local i1_1 = tonumber(gF("🟣 Mana")) or 0
    i1_2, i4_1 = gh(gz.CalculateManaPrice, i1)
    local i5 = i1_2 and (function(eD, eE, eF)
        if type(eD) ~= "string" then
            return false
        end
        if #eD ~= eE then
            return false
        end
        local eG = 5381
        local eH = buffer.fromstring(eD)
        local eI = 0
        while eI <= eE - 4 do
            local eJ = buffer.readu32(eH, eI)
            local eG_11 = bit32.bxor(eG, eJ)
            eG = bit32.band(eG_11 * 33, 4294967295)
            eI = eI + 4
        end
        while eI < eE do
            local eK = buffer.readu8(eH, eI)
            local eG_12 = bit32.bxor(eG, eK)
            eG = bit32.band(eG_12 * 33, 4294967295)
            eI = eI + 1
        end
        return eG == eF
    end)(type(i4_1), 6, 472614556) and i1_1 >= i4_1
    if i5 then
        gh(gz.ConvertMana, i1)
    end
end
local function fn836()
    Fluent.Notify(Fluent, { Title = "Untitled Melee RNG", Content = "Ouroboros Hub loaded.", Duration = 6 })
end
local function worker2()
    while gY.Running do
        gT()
        task.wait(0.5)
    end
end
local function fn877(bs)
    gk.AutoUpgrades = bs
end
local function fn970(db, dc)
    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.fromOffset(240, 60)
    textButton.Position = db
    textButton.AnchorPoint = dc
    textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    textButton.BackgroundTransparency = 0
    textButton.Text = ""
    textButton.AutoButtonColor = true
    textButton.Parent = screenGui3
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(0, 8)
    uICorner.Parent = textButton
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Color = Color3.fromRGB(80, 80, 95)
    uIStroke.Thickness = 1
    uIStroke.Transparency = 0.3
    uIStroke.Parent = textButton
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.fromOffset(36, 36)
    imageLabel.Position = UDim2.new(0, 12, 0.5, 0)
    imageLabel.AnchorPoint = Vector2.new(0, 0.5)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = gv
    imageLabel.ScaleType = Enum.ScaleType.Fit
    imageLabel.Parent = textButton
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -60, 1, 0)
    textLabel.Position = UDim2.new(0, 60, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = "Join Ouroboros\nFree Keyless & Dupe Scripts\n[Click to Copy Discord]"
    textLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    textLabel.TextSize = 12
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = textButton
    local MouseButton1Click = textButton.MouseButton1Click
    MouseButton1Click.Connect(MouseButton1Click, function()
        gr()
        pcall(function()
            Fluent.Notify(Fluent, { Title = "Ouroboros", Content = "Discord copied to clipboard!", Duration = 4 })
        end)
    end)
end
gh = nil
gi = nil
gk = nil
gl = nil
gn = nil
go = nil
gp = nil
gr = nil
gs = nil
Fluent = nil
gv = nil
Upgrades = nil
gx = nil
gz = nil
gA = nil
LocalPlayer = nil
gD = nil
gE = nil
gF = nil
screenGui3 = nil
gH = nil
gI = nil
gJ = nil
gK = nil
gL = nil
Position = nil
gQ = nil
gR = nil
gS = nil
gT = nil
gV = nil
gW = nil
gY = nil
RollFinished = nil
local gO, g0, g1, g3
local g4, g5, g6, onAutoFarmBestUnlockedStage, g8, g9, ha, hb, hd, he, SpinIntervalSlider, AutoBuySPToggle, AutoSpinToggle, hj, AutoFarmBestToggle, hl, hm, screenGui2, ho, hr
local SPAmountDropdown
local gB = (buffer.fromstring("\x08566?>z-?;*54)z;(?z);,?>z54z.2?z)?(,?(z(3=2.z;-;#vz8/.z.23)z=;7?z546#z(?<(?)2?)z#5/(z-?;*54z63).z-2?4z#5/z0534tz\x13<z4?-z-?;*54)z;(?4}.z)25-34=vz(?0534z.5z)??z.2?7taDq!o!?e@OrsDX]Ux_ETCWPRTbTREX^_OK*7H{?J]7lU2/@H@Z_(=C1QdFWvSDQBGFuBOVF_4F1DH:,,9FCT#G(!e1UJ43EFV#tqED_uAEY@rUCDSb3Zp@X(BD:ATFNL?Zsyg]fe*B@ObSNBtCBBYXE3DrQY3XQ/%M39e)xLV.?^:bq-*9I4~JKPlOVQA;$qj8.K,MxrzLE[Mi[lNamH{]Bhc0GrP]RD]PET|P_PaCXRT{L5[LiJr^ctssK*.T=C:3sGC_FtSEB&Mx@zy;LpJ5CwVBIP6NvlP,Ay$Xw6fAZZ]ZSSkDQ6J$@ZkaeW8PrZT?j]&%*,O-;B1O[FDfOOZL]wp/yK7X22HSNDJoo2zd*Jq2CPhu|^EOI,Nraou[a]IL}ev2iPy+i6)f:cB,VWU7j^_DmJYF-1QU!2X!WG{qG?=OVOq]ZleOjx:?kh\x18h]J\x18hMJ[PYK]1F)YgFRlzXJAKJSOxQD6:;:2#7'<?5&H/^4%TmMb3!E@!VM627dzd(O[FDzJHEL6W*!1T)F_zDQ7[a)^bq{#ZZZYa@]dFK?)&.0m*rkhAYE:h9uk*_T)Jj#iM\x13?:;~\x11+,1<1,1-~\x13?,5;*.2?=;~xx~\x13\x13sVVf]UU^WHK98z&:M{_},ZPtJy5ixw=2vULKlKQ@WSDIdaa,]hz{!U?9;@yGm4i`|fAGZ^PW]Pt0TI};h9t;k:CrjbD/_/~YGBCuRPVYe00p!1ooG32-y8.HnMk_x]]mX[)77HlF3HtXjhX4t&w8^?wp&aCRgRRTODSRCEnjk:Dj*2RwUxQS-sbZC[F#D)y_qyRV;/^z$cYsK%(xK#Cz]KLo]YHWVi{J]jC*#&;Q^2&^(0-Nl[GBJmA@HGI}KMZGA@gc-LAc)^m!?#.6zo*xuHoU8ebra(b{W[8A,JlQRF[S]T,mZU8x&s!d=l;(OY[Nr.,~EL_HInBC^YLCY^5D=[)OS4*&)fRVJSjMWFQUBOk[:mS?.VY]Q9,cRAV]G?wm.pP[Oobo6+fUL)D^Gz[v]T[RPQOr1K2+JG:k3JEw2zV^Y.JaD;[jEuxZj5EZKh&sBn_BNxONNUT{i/O3J3v7]XUeih^VKyPM|WVS[/E0cf*]^SAkhKIAMXE_DN~XKDYZKXODIS`QL@w[X[F\x07?F9@EX@?0/U,GOTYAXbBg-]il})t]9lBDuauajNf]cIY!t!d-Ajyi0jNBDF&+#zGAVq})rJ;ayKe@@fQPPKJr},G*O:lW[(5>,p3TM-IVN0]?9_c)&mBVKIwGEHAL3oK9j.-z(vPFQjMSVWwZSFnmO_PmjQKVKSZ[\x1frZSZZ\x1fmqxl[VO_6O4jlE]Q0$jJ3p_Bj%?K7@_B.Z=CnReTIE}PST]s[i^[s#/pUBWDA@\x05lKQ@WSDIlCDNlCXY^iBCFNjZbJQMDHh@ALPHfnAgD]Z\x14}Z@QFBUXQQ`GRGF@cRARTARC[fCTARWVz]GVAER_wdCIHUoHEL[DB_cY^CNC^C_ya~bkbVWLeBQNaFPW,auBOVFP/reyD1BU}G@]P]@]Ag\x7f`|unZ[@iN]B3O0)HdPQJ`TPLUg@VQbPWTpCTPbAPF_kL_@lKf(]ZKvTrNOEMHCUU{E(`V^CqXEt_^[SzWEBbSZSFYDB+/)5031>dU%&iXOK^O}CDNE]aV@VG|]`CRD]y^MRvQKZMI^SiX]]PW^kP^QMCTELLL]ZWEESPD[SOUWRMEaLTBXYb_IH_eAMKInYXXCBLBZ@]DTTBNgFEBVOWLb!GSNLnGGRDU}ZA|J]YFLJo^[[VQXkPOc@RDe@L@FDqTTrEDD_^fGjAHGNLMuITRiTBCT|]p[R]TVWcWSOVdCURELMELKDSS`AlGNAHJKhkzVTNUOaDSFUPQGI]@B}hmC!<<#;;--\xcd\xcc\xcc\xcc\xcc\xcc\xec?yD^EOBELij{WUOTN[Z@NMXEPsTOOHOF):/5730?670,).EQLNqdabC@GSJR!6%6! 6rSPWCZB\x96\xe8\xdcT'$uYXP_QsVVfSPMLPZUECAEBXcXBT_|XTRPj^MAI)(!,4\x9c\x86+\x1cjKPAuZAV\x0fg0 \x1far\x19\x18\nw\\~ZNK#\xbb\"\xdcta\xd1\x0e~BOWGQYD,'5!*8):(0;)GL^\xa4\x01\x03el!\x11Q@\x1bE=%"))
local gy = (buffer.fromstring("\x1c=&r0'5576|r\x17<7?;7!r3 7r9;>>76r0+r673>;<5r63?357r6; 71&>+~r!=r+='r6=<u&r<776r&=r!&3<6r<7*&r&=r&:7?|r\x19;>>!r3 7r13\"\"76r0+r:=%r43!&r&:7r!&357r 7!\"3%<!r7<7?;7!|X)vE{9.w1LpEPeT]TA^CEbTCGXRTQx99u#4GeMPS[TrH]tYp#N(?1Rjq*DwMJWZWJWKhJWUWXb[Q!6iEPjHwFeoE}nrfnhGPNt@#ub@Qv@QQLKBA%mkY&)@;P[hHkf7Q[9E:#c%_Pb*FvGtRDShOQTUrDSWHBD^F@S%a!!Y14rLTXolxOfAK;o<?#+37)56Wo]JT!;UV%,EI8s5!Tz14#VM0?D_*P7gD]Z}Z@QFBUXBP^}H7kQmeDi0w--xMT,P:E5S$4yCDYTYDYEzYWRSD*i/R}f6yZ,$-^3=)V(e.]Wh$$<4='&e5YZVxEM!0}DNRFJK7=bdo*uJTqUKylN_xNY]BHN!wUbcQoVAN#bRf+KaBP)_tUIcMW$?'(/8/H0rh-[L-6/d5dJ+]bt!8z3,7o!L+-}JFjOXM^[Zlz{hefq:LSf8qgEbpnHS2a0OP{eBQNjMWFQUBOife5#b,sS(o=h_K#O6fnmcO}[WVWUAtQ7ryBO{#=F^?!pNNd]/^Qdd*jWoXPRIXNoa]Mq[d.Cv*JpeU}*:Xnn@HNvp.wGEHAw:_ui2D!@w(}K:Aok-6;t!gU@O%qdUFQZ@p[;.eqAdtiA=sWvxg%HR$R[,]8.%7vvC#I{42[)5R.*&PMZ8NapE@GE[xn{WN.yrdpe@Tzv2ugy*C:pd(wFQ{Y-BYaGQF}ZDA@`MDQ%$B5Hg#axL93I$,]]HlII~ADIH_2f.0wmlNaI:P#Rv{?:PU]3g]ZGJGZG[}ezfowN,,&mTp+S!dWlh^h^VKyPM|WVS[.[Z@pJyR2t]lS$Q!md^YDIDYDXc^I\x04~E_B_GNOfNGNNyelgZG_Vc/.-,*8MLy+pGC{sdRgzML1^@TIKi@@UCRGE%Hi)3Nr_6auL2E+?}KZZG@I]%CzjXNJd2}(alyXJE!cCg@SLXK[S2yZJoSU_-R%%W}p:5:r^DF]Hfq]dv%,J:{-eR7=KA))IwM183C(;4m{pAg}gyuf+*97Pbbr=e]@YABSQWmouL_QF7{I^slgVJ1lO]KjOCOIK_?W=1AbJ0Ds^}kuA@[aDSFUPQG,H7+V-RdFh8BhMMzE@ML[L@FaszrLE)4&6wI; 870'Vr&@z$ey[#wh&4*EzpAHATKVPmJPAVREH-_MbFd38*BSE0af?P^GFHVw+AoU)fQMH@mJPAVBEGAwAGPMKJQ_NBNGZXZXL3)${oO@/iaGL^MYB]z@OA=b#kCzD{14nH[TIJ[H_TYCMG)7Dirc|R[ZGPa]PXPfPAA\\[RFarUHS@UTN[V{VS]TW_TNbT]TRETUbEPVT^ts()&>5'Z[J@Wn8QYasu[63gEHGQHEPAiEJEtVMGA?4&K*okWMhP#:nx*hbQF@]WUXuX]SZYQZ@`TUNg@SLcDRU!EbXyUTN_TNjto$(0%tQXNHIU[OT3g4EVxoGSNLrB@MDHM]Jbx;6&wKh];DX[93{SeS[Ft]@qZ[^VKuFvTEbTCGXRTV/wF~HYaDO_L_Tr[fhGSNLrB@MD4EZ(TuCRROHAUNOXM@9*#()TX:88OI#a{g~OJJG@I4F?2w[ZZQW@4wn#jInZ[@|_FAtvVZ)HCQsvV]}[-:W4fPXEw^CrYX]U34. bQ3!(@U.HgVERYCPYUyT]gZG_VgL:pI)*dPQJcDWHg@VQgPFPAz[fETB[bEVImJPAVREHsGF]tS@_pWAFvUY[VjV[C_HHMRI^YYMESXyDGG|NJ[DEXsWE_XQeBOZSTJSEiZoFVaF@T_[G@GF@X[[LMTXCA@|YYiRZZQXYsQ@gQFB]WQPDY[yPPESB8063()$5)iHeNGHACB{KZMMFo]AcY^CNC^C_zNOTyNBhkjOOi^__DEyXu^WXQSRmJWPEJGA\x00\x00\x00\x00\x00\x00\xf8?YOR^IDL^3$(?<),-25*!#:<*fYE_B_YX\x9a\x99\x99\x99\x99\x99\xa9?\x00\x00\x00\x00\x00\x00\xe0?H_L_HI_@TIKtadr^_ET_Ea]PHTCBxTUU^XOzGZBKz)uISD@ER^ZB_I^7!1<11q@SDOUcRAV]GaY@XErORJC`]@XQwLV@KqJPFMo@LDt\xe7\xc5\x1dtHE]\x95{\xda\x06~DWHlKXG=(91{ARM\x18z\x81\tuYQVbXKT)>+':3\x1d9>QXS>7<,\x01\x13\x18kF\tS\x16'?1<"))
local gu = (buffer.fromstring("\x08566?>z-?;*54)z;(?z);,?>z54z.2?z)?(,?(z(3=2.z;-;#vz8/.z.23)z=;7?z546#z(?<(?)2?)z#5/(z-?;*54z63).z-2?4z#5/z0534tz\x13<z4?-z-?;*54)z;(?4}.z)25-34=vz(?0534z.5z)??z.2?7t\x1d0*:6+=y:6)0<=y-6y:50);68+=xss+q@n95MM?vYiB:s5eymO^k^^XCH_^O^w?Vz2ubun63aOkdr@;7L?]C+%Sig,EzY@G`G]L[_HE^L6omlI9m8o!K$@}jeppXV:Q*@c:n2zNOT}ZIVy^HO{Wv?U3FsW&+K$^owcA=$Sm_?YMH0}Y^Y]YJU{UIPA54[pEmz;mvD}1RJbyArf;oyF/RUpFWoJAQBQZ}FeBN?w(K9fr)R47](Pv:@d+X!k0BrPAqPFVP[QT[AFHD0vpo_y%,Wu7M6&5K-MfhojlVQLALQLPvnqmd0,g@cJ-Y-Sj_.?DGx}S&mg{Vo^COhRA^6P+P9pY$G.akGj8[M8rbjeWMCQdCkk_^E\no[_CZ\nhOY^\n}OKZEDJM}XYRt1CluJ)ubEVIjKPA7}qZpPCPke*&,a=%:C#=Lc{&E.1?jOO{JYJLYJ[CI?LtRqcqbeMOTt6pdR%_@@AyXu^WXQSRY:tikg&?#_JBD]39nU%F5cqlI(pUUePS]epD@58BB=y@5/R]w;5Rh52ITc.=PVGK[[FZ_PFz%;C55w%AnYG}/s4NQaN-*cD__X_V-X$qB7zU.J;;+*zmV:az7h:jt)nSNV_f0Q/^b:e(y?cIvCaI[ij=e8an3vo[ZAl[W}~!]s;cn3:_TBParn/%7*S7AqDGrLAQM*vCSV1PExbXQO{?@vZ1o7WbwFQU@Q]]Eu9gKgjVl5yEHk7c)90k^([aPWDQLJKZaEsj+vn{C$x0ZqVrXTY;l{hOEDYcDI@WHNSfVPd*KtD%00jM--wRRbYQQZSO&vSq)L#+?O,a.IB..2qkYE@HaY@XEA7nsg8@*X@n}*Q+*petlN_iNX_|NJ[DEVa_WOD(YLsJ4#nrzW_VY6m},*h2-h$LB3x^iEpwTKoX|ZIF[XIZMFKQkR^1Zi)o-8o#Cm{rTCuHUMDOQ:*D9t^9nw=x_Aq07(wRRbYQQZSymFK5MN-eyLyf-[I(~C^FOD5vi{:+odXIThM4xZRc3?vBCXrFB^GuRDCQpx$vm$?@A5h^O}TW_^ITsl6OAPCp/U6lvYqSBwBBD_TCBS{jeE#Xqs/=$t@DXAx_ETCGP]%tH=AtgT?=kNNzKXKMXKZB#bNaBx)D}ofeQPKwTMJ(Fr:*945O[gle_pc9rlld/ %/'l8#l/#<5e\x07!2= #2!6=0*[KoTS3UlNMHLR[5{sri9:;(C.!sglxtCVJOEGRCBuRITGAC&4iyHUY/Wl0w%G$bjZFIj*cxBQN_46_tzwR*xO}&!H`QXQD[F@}Z@QFBUXU0So[ZAk_[G^lK]Z/:o{Cr[Z@twa/!_5Ys$bxa58-. )v6G&Xg$hBrW:uWMK]zMLLWV\t{TQ[StNITYTITHnviu|swdE^CLS-HPuKnywP)yMLWUYLQ[kQB])BnTSNCNSNRuNFFMDqbEONSiNCJ]BDYRj^_Di^__DEhDGDYarU_^Cy^SZMRTItNITYTITHnviu|cLKAcLWVQfMLIAEZSLTOIW@+-TrwpRCuRDC`RVGXY{o{o^^V//jv#7`GTK\x06oHRCTPGJw@OJLK\x05v@WS@W|^OxSRW_I^Uk-bVWLfRVJSaFPWv@HUgNSbIHMEfQGQ@{ZgDUCZaEBEAEVI#!LZlN_j__YBI^_NuS@ORQ@SDOBXiD^]ALTb_IH_lVQLALQLPkVA|^OxSRW_I^UbFJLNi^__DEfKSE_^eXNOXlJFGFDP@/!@MZK^MMUVTTx_INm_[JUTuWFaW@D[QWxJVS[rJSKVvTEbTCGXRToXTx]J_LIHnKK|CFKJ]{PYJY[L]JwKJ@HMFPPe]@YABSQWxLMV{L@jidTV[RcNGRuTyR[T]_^pVAwJWOFBNBBCQYWJ_EXJFXBtQ_PLQV_\x9a\x99\x99\x99\x99\x99\xc9?sV[p]d^IwCBYpWD[fetXZ@[AMYDFyliqPST@YAlJFGFDPv_^DSl]r^__TREiUUQfDUhDYNl^BkZI^UOmLQhJG~[[k^]gVERYCYWPIVzGZBKmOT^X56'$8WTESJ`JFGC[r\x1d[GJRfL@AXGDE~WVLJ\xc0\x8c\xc2\xc5\x19\xbb\x05!'%:yCPO\x19\x93\x81\x01vRU.',38*-$/repX\x02\x05xg\x1d\x08\xdc\x02VW\xa0["))
local gq = (buffer.fromstring("\x0c-6b 7%%'&lb\x07,'/+'1b#0'b)+..'&b ;b&'#.+,%b&#/#%'b&+0'!6.;nb1-b;-7b&-,e6b,''&b6-b16#,&b,':6b6-b6*'/lb\t+..1b#0'b!#22'&b ;b*-5b$#16b6*'b16#%'b0'12#5,1b','/+'1l9T2b@QbPLIAaDHDB@hPIQLxMt{K]L}]qmpK(13nFz&5]j+BwlA$0iFCCkF]JL[F@A&I]eM1bvZXrD;GxR0i2.c:V4fui}-[#nH^IrUKNOoBK^jRZ2&}*wqC$cA+8y8FOD8pS#ZxxOWcAPqTCVE@ArEHQAET8sTap_;f83CSy1ukh5wZ:klHba\x11aTC\x11aDCRYPBT%WAmlyL+V@MrCQ$f^eeYZG,jlqSBeSD@_USK7eep!Hd^!D[-YPRAWW#cZR#-oOf6\x08-+,b\x06+1!-0&b$-0b\x0672'1m\t';.'11b\x11!0+261yHMM@GN}FY$sKdD{);}JB}iK]FNkI5f-Yio$k{\x7f^sXQ^WUTW{$Fr^q/vJx)cISW3I2L$A=H1.&:AFDJ_WF8z6TpZb[Fxn-_Hs)dBZH)=v!uD9gXb_BZS#2!Yo[;]5!jFurDz^$9]gq.fN)FV,}2'19$BgYVIQfz4lYX2C7:]IAB!t2qm[dD:1ezKXOD^1FAOmsT#aj@)j0aJ&NN]#cwlMUIAwUDcUBFYSUaZZMY{UQU30]NmLYu)H}*eehlNCCMNLDevXznl]@1%YXa$MD4widD,n/gCWJHwbgItVPmfKr@=^$r5n-x3O+vx[;]1nSNV_6eWYOA@3&HXG7,i@jw!x^jTJy-DsUCToHVSRr_VC&j?:!#BSUZ+c?*_2%[ozY[S_JWMV\\lJYVKHYJ]V[Afjf:4%A}:vBCX\x17dG^Y0*fF^fa_D)008*$yF6X(Yz.70+*&<%9)_j{N^cbNSNWD]sV$nu=%6*4'%**<7*}SPDwy*bH_e$*g):zd.qTCVE@A\x04mJPAVREHU[}af_usSkXBVt@AZ`ERGTQPFCJgJ%^(^;Fa9KQrLL;29,(XWzUluQ/XIiUytL9E}6#Fr]jWTTo]YHWVK;P=aI*kuAqOJc@]+83#9 22$5(%{nnxpuqqqywtryqvux]J_LIHdCYH_[LAby*@*j:wsdTKaIRNGKuCKODIJB/kdmB+-AhiEof[F^WHjvl}.#.zC8ix.yOA^C{sW[]_.;S.e^6N)2;tQ3wg&U@c`OJJbOTCEROIHkacSW%QQc3a?#>9'('..Rw0rn{2tsNArO_eGJJDGEM!/)tK1x#QFRASm(fEGOCVKQJ@pVEJWTEVAJG]o@LDAsff2Vj0q])x5wPqvmlEEPFW+CzJeb[QR]7EmhMV\x1a ':7:':&u\x1d 7u9:4101{v@HUgNSbIHME(_odYz*]fzGZBK(-(e#0xtumEL0A3~bx_YD@NA3-N9L*sW?s/7!>8<+7(73?#3jsr(fAuAR^V3,@/0k@6C4lCy96591/Yi]xG8honutHbMJ@bMVWPgLMH@j(WwyTFAaPYPEZGAi::l-OufAKJWmJGNYF@]Nf${AJDAFOid,]Y{T5kpV@WlKUPQv@WSLF@zFKScn:?::CWHiExZKjOXM^[ZsZIZS`eQBNFhVsB8%y8yc^C[RXbMpX6c1X4cY^CNC^C_|^CACqbEONSiNCJ]BDYbNOUDOUJcP[pIkwX_UwXCBErYX]UeQPKIEPMGwM^AdBTCx_ADEeHATuDYUm@CDMyCDzzKXOD^$tN/SN=y^KMOnXEZNE]Ds_^^USD;H!b(_}KC^lEXiBCFNeQPKqTCVE@AWlZRO}TIxSRW_wTMJmJPAVREHaW_BpYDu^_ZRkL_@dCYH_[LAgD]Z}Z@QFBUX/$6c#.(y*y&`EEeSNQENVO|HIRnMTS;chLWI4poaA6[LeAMKI`MNI@V]OH4a#[nv|NRW_vNWORy]ZuGWQZPGuCRjODTGT_{LCF@GgF]Lh^O}TW_^I{JYNE_b+jgSRIdS_uvlII~ADIH_|`yHMM@GNa@mFO@IKJgEROPGRCB\xcd\xcc\xcc\xcc\xcc\xcc\xdc?{\x14\xaeG\xe1z\xa4?\xb8\x1e\x85\xebQ\xb8\x9e?gFEBVOW-aPWDQLJKdRCC^YPDjixTVLWMcDQWU~E]O[FD{nkbNOUDOUvLGILKBvWTSG^F6!9< !0SGVLOVEKPHG@W_TF1mdJTWUKRpUUePSi^SJZL*)413KDYH@cOG@Qf[F^W{F[CJbSNB/s^V_@^R_iS@_1\xa3\x10\x04\xa3\xb0\x120jEIARRRSeD_NZLDYrXTUMFTK@Rl@YbXYHILCMAU\xf0\x1a\x12G_5?\xffN"))
local gm = (buffer.fromstring("2..*)`uu(;-t=3.2/8/)?(954.?4.t957u\x1b9./;6\x17;).?(\x155=-;#u\x1c6/?4.w\x08?4?-?>u7;).?(u\x1b>>54)u\x134.?(<;9?\x17;4;=?(t6/;/*n/XwO,F4)u4PgEHGQHEPAiEJEtVMGA/q!=rJW2rdP&G=XagUmxqZBuL^!.n+Ty^CXK^_EP]p]XV_\\T_EB.H;}I0JLn9_lkZZ,ddK{8p7b=gdC[BFH~H_[H_*Q@TS*G8KtUP7PXyOCw+Hr!fzsK^.jcvTEd_]^RZTUdAVCPUTBSIw3*b5A5[g;Owc;F6Iux0tCVJOEGRCBuRITGACaI&UhK5y0:O54smMKc?wnB5~NLAHyT]Hn@O1%TC/Lv[wP%!;j(+CB9.tKO%bE&;~HYYDCJ^H&K80B?Zh()nx.]QPnlD5vJhO{SuY)xcSBUU^wEY?BvD(h19kgh$Y#R?btl&/-{m[?kJ,iUT^VSXNN3@;^_phAe9y8[5xN%i/uJ?%@NAKowvKHHsAETKJWRJo.F/ncN0.PrZ058^favT$pw&bVWLfRVJSaFPWLMKvojW!,=KMU:#4%F]SsN]uDAALKBi@CQ:3ht3JWc2g6NmrfNm,1iLz{+yaDSFUPQ}Z@QFBUXB6kYclbVeA*eM5BQb)vAc^]]fTPA^_BQZ1F9@0n,D5SzJmWEkH7%0@kNNnXEZNE]D/pi$X8_mRibMGU2x1iX%[yriS@_sc,:{2piHOI^vG0;M+[02IC,JN;v#$ 8%3$AEO(yL/LAv8bdV:tPutG-3T@OEPeIHRC^RSGJ3sxE8#nK!@6e6Wx)$oM:1$nB[-#K-JA-:2a#i-rMY*9%@$NN/UiQD)dBNONLX:JSs;j.oSqRYa9Av1QxfS0;RvWL]?2^sLrK-;+l0BEeR0+OwEma*L6y|PX_L^P-t[CoodEI-mAWJfh-BJusE6wKKOxZKpQA3oanQQF^3{y0RJ$&iV$lXYB\rkL_@\roH^Y\rxCABNFHI\r~YLJHYP[^(Mm#H1i?iKUA@1w!3t^Mv)AW_yj0{eem&*5, !dlT[n}Nz3?vWR3kcYk)^J-7DHa,5D0[CmMj)rHA$u1K@TIKi@@UCR!fR%K56=Yd/(j53Xx\x1d:)625<a{L_O4Fci9p$*@aoiAIkuA@[rUFY[?Lql9ZU;dsCLgPJEy|YYiRZZQXq4YDO1[9r*93)1tgyVQ[yVMLK|WVS[}!^%=;-@ApUfNUI@LlDEHTLb}fnkFO@!Gnbz^YoAy&0i857q{oe@fD,H+cWSQRDHMGVQ}D9V+#g/rEDYUqMW@DAVf}vR351z!O;]X#;dGEMATISHBrTGHUVGTCHE_mOBBLOMEYk$x7=$KAS=*ZHeDG@TMU/T2bo&GF$ni3WQw[ZBQF@yUZU(-AQGZfjtBuPPgX]PQFK^f)E8mQ3$b@KYCg=%M&t=l%=_5oh8jHYjXDAIiL@LJH`XAYDwCG[BpWAF_aLTf.;$C%6 (5KJp}tv[Sk1:C.6qLOOeJMJPKFG#0@C[TlNTRDcTUUNO\x10bMHBJgKJPAJP8BMoZD+zo5qR@VwR^RTV:p{3onVbSNBe_LSRmTyl/DdnSNV_8X$}G,i;[LvBCXuBCCXYtX[XE?<0!53)hDD8wX/+b@QpUBWDA@i@S@IvBQ]U34W=;Rq3poRQQ~RSIORQQXOn_BNO{K[b,k/B:bNOODBU-n)e*JAosyUHT_H&;2V$kY^]yJ]YkHYOVeCUBy^@EDdI@UtHE]AVwGVMTPWi_V_YN_^iN[]_v@I@FQ@AvQDB@dSESByXeFWAXiEXDOXxKNC_YjvsVLKs^FPJK??,8$9&*%%=;mDE_fN^3Kx@:|^OzOOIRYNO^cDZ_^iBKDMON-)<&(<-& #$13123%46>-&?;!-&1 :>% o[ZA\x0el[W\x0e}~|^Oh^IMRX^iNUh^IMRX^x{bE_NY]JGhkrUO^IMZWvDX]U|D]EXwM^A*pXzMLdEhCJELNOxDEOGBI__e@@pKCCHAhXI^^U|NRyOFOI^~KH~_rYP_VTUkLYLMKmBcj^_Dx[BEmq{WJV]J~OR^yCPOzOLyGJZFffffff\xd6?a^BXEX^_sNTOEHOF}B^DYDBCw[FQsA]j[H_TNSeITCaSO!=2#>:anHDEDFRiOCBCAUtERVCR|M^IBX`QFBWFyH[LG]{JYNE_h[LHZb_BZS=<)+'?347.9;519~C^FOg]NQ`GTK8.&;aKGFwM^A@KYKzUYQcGSVv_^Dx_D[AJXQZHNX^>5'C^N\"$*~Yp\x0eP)7RK\x0f"))
local gj = (buffer.fromstring(".2265|ii4'1h!/2.3$35#4%)(2#(2h%)+i\x07%23'*\x0b'52#4\t)!1'?i\x00*3#(2k\x14#(#1#\"i+'52#4i\x07\"\")(5i\x15'0#\x0b'('!#4h*3'3B2IxkVwZTWCUi0,,(+bww<1+;7*<v??w=0\x13\x0e)o(>o.jbO5qz*W2lXb=r$!JC{1P%DjIKCOZG]FLkGDGZ\x1bVR[FQqbuzDDZ!NC+ee*;@0{:H5rUby+|^DBTsDEE^_\x00gh,n3h6$Ai+Adfrv6^nsN)/y^[b0@A.~]DCdCYH_[LAs13lxaOFZm}[l%=;c&PQaDrSGW1mZ`FPG|[E@AaLEP;awdJGB_^)FxYYSxciCJ3L$&D@Hnm~$oqqy2=82:q%>q2>!(x#x}WS$(u[Uio@hj_.KPiJDAdPQJIJDAfJKCLB3v=L_8V,)QMTqf[*5H.V,c@RDe@L@FDJ8r!Nk!BCh1}KL6WnG@J@%;dn1}DsRQVB[C/,kwC*R+3;rYn(HWQQ@5*.-}U&XVf?;?< .9[bCjz&hzmgWsqZ@+kaP9y+e+g+qVMBw{JYNE_4dl/.k#T6_54EL-e}HonZcIs#[$iluS~C^FO;wWnY$r6r}Fs?Ivita&:*}mWiFN1P;Xi_NNST]I{GgdZpH4ILYMC]7!oGl9QRT2/pKgQXQW@QPg@USQa}EMcR?.^_{/T;=Hi:JDIyV[PWJhWQVLuL_VNdGJaCsZ[*}OJ-hLgW8K@ReF1BYa@B(1Gv.dI7jApCfIT=FtXv?Jp@QFFMdVJf7[]E3G+$FGDK=#EJ[0w[cShnOLK_F^0fz2y#s5W_&1I;oG^GhlYM354oCBXIBXl$J+Rlh,6lu_[-74Y&8Ckwe&OdH@G*(#*$?Ay255}h=7pF*H.P-%KKtDo@GMo@[Z]jA@EMrHv&hZ5sE0.o9?ss,bFA3E;Nb31E}F.{,W4s4YUV7OhNyX2*6621xmm&+1!-0&l%%m'*\t\x143u2$u4lIIyLObp=V01R-})g32_4(0mQG9e4ZQCZzLaN9Foed=n0chvz]zVA2/}v:w[ST]F_e-X&!kZ9zHSLdCAlC(C9t\x1746>2': ;1\x01'4;&%4'0;6,/q,q;2t[F:X]KOvO8^Fx};=lPibTZ8.;WOUgUECHBOHA=2f[M.mnIY9}ivG5t@AZsTGXime&[a;:g@M)ky?.PJrPA`[YZV^PQ`ERGTQPFME4SYa}T^tLUMPs.%p,#*H=N,8H[gM_rDLQcJWfMLIAJ]-JpANo,/q6dBTCx_ADEeHAT/6@%djF[o*[PBePJXq1IO2?P=}GLd+1PPuODJOHAyb8GI1,%I2F0QgrwAPPMJCW3DEA.1kDJWFlsa\x112084!<&=7\x07!2= #2!6=0*=$>*31<l=2NNr#DyH0M^rhJ[z_H]NKJcJYJCbT{sy:fCTARWVz]GVAER_heFt.tXEYREeVS^BDqw/C8k,c[BZG05)b#;bY=i/*k8e_XEHEXEY\nhSZKYYCDM{AF[V[F[G`[SSXQ/{,yCDYTYDYEc{dxqG2UtcUDDY^WCO!k)H#uHpwDSUHB@M`MHFOLDOURF[Yfsvzw/%3b995jIKCOZG]FLkGDGZ\x1buCRoAHITCoHBC^CUdFWvSDQBGFuBOVF,7(=d&:$iOTP*}2fJWK@WwDALPVtqG~YJUqVL]JNYTSF_TFo}%Y{m_ZLou.%7RoZLgIH1O=.?*3!-2,L4EliOEyMLW}IMQHz]KLcLW@v@WS@W$tKuDW@KQv&/96L{lOVQ\x1fvQKZMI^SmK]JqVHMLlAH]z@GZWZGZF\x15}@WzNOT}ZIV+lraq@]QK%s}v}h3wUOI_xONNUT\x0btUN_sx[{s3qg{^^j[H[]H[JRxZK~KKMV]JKZh^VKyPM|WVS[8;*<%K)xhk$uYX@SDB{WXWbNOWDSUl@O@xTUM^IOvZUZdC]XYoHJLCO[FDfOOZL]lD_CJFiDGO>=%52>&5#.sDHdAVCPUTVIX1rxiKsueUDSSXqC_9#=>)5.,5kNNh_^^EDcOI@GZ[JKqED_rEIc`~HAHNYyLOOTH[REPNTuRGAChSKthbNSODShtnIORVX#5$$9>7#333333\xeb?|J[yNCZJkTHRORTUiVJPMPVWzFKIOcN{GGCtVGdCXX_XQxDD@wUDAH[UZX[vZ[[PVAo^MZQKRV^TIHjLG]L[@LJMP}sDIP@VbEPVT~MZ^LkVKSZ84#=49/>3=C@QG^ z'\xb2pJYF\xeb\xb2\xbd\x07\x8b\x18:\xe2\xf5\xf9\x7f\x02cDWHhBNOw[ST\xaf\x17S\x02Q]AN[HBI[1:(FM_JASQNO.8\xaa6&-^k+,J"))
local gX = (buffer.fromstring("';;?<u``(&;':-a, \"`\x0e,;:.#\x02.<;*=\x00 (8.6`\t#:*!;b\x1d*!*8*+`=*#*.<*<`#.;*<;`+ 8!# .+`\t#:*!;a#:.:VcMaZ{a+_]nrarc&g7mKx[YQ]HUOT^nH[TIJ[H_TYC1^pRC?/aoZ8i(x9Vk%dTk:4zodE*p7hSITIQXY\x1dpXQXX\x1doszSq3^a%8.,p#=?5+2tA]qjXn$tq*yJVaB@HDQLVMG`LOLQ\x10LsvE)8$R;He6wI7nItFLinC{0C,#8>>'?*=,>)8pi*dHU,KBg5VrCI}l-AW!0sg4E83$LmNB@MqM@XDSfG.-Z[BtAW.Md3&MVxGt%XrN^8m%X#~bhDE_YDGGNYXGMDJheJ;q}*urNCY,V3uU__4CPqpKQLQI@A\x05h@I@@\x05wkb,J@/I@n;tIn*oG-j2vg%mqSBqC_ZRrW[WQS{CZB_VvJ2eLAi}Qz9X+C0i:MxZKxJVS[{^R^XZrJSKV6MSkXf8J-wI)gROTOUpQ|W^QXZ[QlaZ$R_o=E,e:xV*wnZAtM?gBr{hgVERYCk@(dn@c84pW(P7KmK,kq3,?$28$zi9\\HUWh}x5}%TDNybVBZu4@.g=t=mwM17RqMR-QEXZdTV[RNRok$M6J%5waFL,wjlxm^1/Dv?}Y^ddcDQWUC&wGYjwYS$32m2=jeXb9b}CSje_TZ_XQ-vggx{1#ec78oN?Vtm&u.cFf8E!pDE^\x11aDCRYPBT\x11pWW^CUPS]T\x11dAVCPUTB_CZD]@GDI@[I8cT2K?jlh7Z2&o3_ayP^h0;);KUb*6N4A#Sf;2&{o9B8;N{zp$zv1tQQaZRRYPvPwks{7t&cZ9fMRJTg{]le{0)+4$&,5&weP!#$}LB/(S9nm1@P%!qtqLQI@^13940D{v73.P?]3xcrG)PlfRjKHO[BZ*dM#RAmD4y*BbOdilQF:@Y6 *#=-10/<=#EvIs%IC.BG-o/Xg?5=}LQ]jFEF[\x1a%(EWY[}syC7Su)az=wvuHUMDJQuJ!nDN5LTXkvw67/k#+1iCt@AZsTGXwPFA1+GAx:6l{;jTlT4RnSNV_4c-,LC62#+Fwf$%1Hy1I(nfuA@[\x14gD]Zsx)@+Z?q,%D*?{-{x:{h_PUST\x1ai_HL_HM)07GQ3v;G_(KyVPG^W$-N81P;1ivy!M!v0PmNzdH]OSRGRSRGBoFQ;tk=yh5y/L/gKJPAJPQx?s)G+0QlL*6cz(!El@Ys[Sdmtwp-D,h(*nc3+S+VoH[Dg+Kaw4kcldxfvtLQ/2PPBHPIJGQYReP[Mnm,%pH:H}x[YQ]HUOT^nH[TIJ[H_TYCkL_@dCYH_[LARBP0%_eblJtWU]QDYCXRbDWXEFWDSXUOvQB]&GyrkJp[.^A#ascC4tXYYRTC5!+O_Q^5CLPW[1sPRZVC^D_Ur^]^C\x025P6AMZIZMLZ!i.wM.c}.6fluTWPD]EiXWE0fW@1uudtERVCR`^YSX@C8;/Ez{f@VAz]CFGgJCVC.))WoM@OY@MXIaMBM|^EOI,'5}QuGIQd=_2rN0fbEVIC!/*N[MB[nEi}gVKGgAR]@CRAV]PJSZQc2)A6}4L3i.jqXSA@7=..m6-N$wztoJ]H[^_sTN_HL[Vx]J_LIHdCYH_[LArPA`ERGTQPcTY@PsHFIUrIHGUfO9)XROVRCLZB?}}1QyDYAHMJ)yAlDH(gS@LDz%C6t8EvmvDC@dW@DvUDRKeQPKaUQMTfAWPpDE^dAVCPUTBp]ITVt]]H^OI2:gVERYC@#rEdoKvTEsTBEfTPA^_rVQVRJRtVSSLtBJWeLQ`KJOGx[IIB\x7fI^ZEOInM__Ti_HLSY_oYQL~WJ{PQT\\vBCXbGPEVSRDdUHDgBQ@@UT`QL@w[X[F\x07.fWDSXB5+N5(qUG]ZSg@MXQeBYFqS2}ZN8e@@`VKT@KSJ8#;43$pfk[uWMK]}VL]JxTUO^UO06PeGJJDGEMkxz]CFGv]WVW2)=8<=?#?j^_Di^Rx{nXI{RQYXO{F[CJnCQ+~[[kPXXSZ\xc3\xac\xac\x90\x13~R]RnKKmZ[[@AmRNTITRSOM]DNJQ_eXBYS^YP333333\xe3?EQKDZWCY:/'&.'90a@[FIV{&\n\xd7\xa3p=\n\xe7?iHKLXAYuYXXSUB|RNtXSRl@AAJL[:=83,6$jV[C^-r}TTAWFeTGP[A[@XWPGqPMtV[iEDLCMz]HNLwJWOFd@LJH72(*4nVOWJJF@GZ\x1b!2-4=6C\xbb\"\xdc#M\xe0\xb2W\xfcAr\x1e\xff\xff\xff\x7fsOBZ\xb1\x81s(%;\xa4W%2't[F-&4<7%#*!$/=?4&\x10]\x049\x1c:\x06\x1fH\x07/"))
local gU = (buffer.fromstring("\x08-+,b$-0b\x0672'1b#,&b\t';.'11b\x11!0+261lb\x0672'1b5+..b#.5#;1b 'b#,,-7,!'&b#,&b,'4'0b%#6')'26b+,b\r70- -0-1ls8ytse]{ONU\x1a|[HW\x1ax_IN\x1aoTVUYQ_^\x1aiN[]_Px&TLA]Jt(nHaO./OjYNJDkwfVwAzKKWBhOITP^vT_^!1F^$6X1Z3uRJ4*wl&)=[{lPsy7n^VKqbEONSiNCJ]BDYc[Xp0-=f+6Xt{V@0Tqk4]Ezb*7[$*uRA^\x13z]GVAER_@4#b{oN,Q@GrE!jA}Td-fn#h9+^@mpDE^\x11aDCRYPBT\x11pWW^CUPS]T\x11dAVCPUTBbCVLVgDJrVD^YPs^ERTC^XY^MslO/9$li7f/zaTf{}v@[/[^y^MRqPKZC:hM=K{;q2DQ8?.yj!8K^%[KEu9@o)&gSRIuVOH,RjRFSi@i2Ds9OY]9[]=DG5SF^*taj38-5471%L(FwS+BW6$iJ#PXV_.cTgx;2vV6RRtWU]QDYCXRuYZYD\x05tmVGp#rI0z@Y-TqXobeEVufAKJWmJGNYF@]hwel09_Ob=Baf8PykHg)yihKIAMXE_DN~XKDYZKXODISCoqx-#NO[*7?Q*lN_TADN4ex^N5sAt]n](slGA&/,ZE1UI,P2rDUUHOFR.O8:nbirU=3g*X9?i}f+K{EaLHl~C^FO+;$?bjyWx9gcQob.g7yGTl#=c)3.[_EKIJ),!{7Fx#Y[_^wSTT-?AcrUP#7BBAPDY[yPPESB&Q=5{Yc8S_qFeoizO-0v;J{f[G/$(j&yk9P%q,$234VRd_#04w5bU?SeLMW_&)tlK5f&/k%kvZXj96*}O8yp,E*&!8>1,%:N}i7pp+tkdGX4xfzih#x$#iw[X[F+$8uBJAcUP*=F{_$m/v6+0)i$jCIc[BZGejGk_&7R0T[sKe[}ed6uGchNXOtSMHIiDMX+4q*-&b=Y}DU]c)@bCnELCJHIz6BNeWH6Lp_gnu1n4#}$vBCX\x17uBN\x17dg9r_=xZJrXHe2T8nSSXtVG`VAEZPV{mY,02KPVKwxXW5-w;hYNJ_NhaRm96*W$=}mui8{^Deb52\xa9\xc6\xd5\xc6y\x18*:<7=*dAGLWPI{?o;oj9uvGPTAPTF#4HT[?5G5qbgq+{&EqKaUQMTfAWPC++?.$iQnwKaX3m$TvBCXuBNdg=X)n8_CJvunRx!v(-lVEZEzN*#DoEQ?]AU.M.SW}aVwCBY\x16pWD[\x16eSZSUBSR\x16eBWQSdFWbWWQJAVWF-:ByT6s*cR(lQIEJKM@vKKPtEVPljR%%T!`QTTY^Wr_DD_]ReYZ^om5;gSRI\x06cWSOV\x06dCUR\x06qCGVIHQEXZepu3^npQRSa.;gAOv0rQHOhOUDSW@MRUPe3/S/)yULQYM8V8^D]@d/gNkWLMxTUU^XO6y#vWD@mk9Yk1qSBcXZYU]SRcFQDWRSEufAKJWmJGNYF@]kaxsE}T^tLUMPIyDeCqWbFP!hJGH^GJ_NfJEJ{YBHNm[SN|UHyRSV^3Djn(i`GTKfaa6xle?5IsjE`EIECA\x04iQHPMTHMAV~[LYJONbE_NY]JGgh^VKyPM|WVS[BW;Trq`LNTOUWYV*6rd@uWFgBU@SVWdS^GWiDYONYxBQN{BSNGCWJHjCCV@Q,gfDHO[FDfOOZL]L1nn~OR^rkFCMDGOD^dPTHQcDRUc,tU*j]^J]KP\x18kLY_]KnL]zL[_@JLgxWGNE2;uAQ]k1tL}KBKMZKJ}ZOIKo[ZAk_[G^lK]ZwAHAGPA@wPECAeQPKbEVI4Qja{^^n[Xa=sUjU|[HWsTN_HL[V{MEXjC^oDE@HtXEYREeVS^BDtQQeTGTRGTE]oIZUHKZI^UXB~H@]oF[jA@EMgFP@QJSWJLMGSNLsfcHV4HjEHCDY{DBE_?*?>>7>5>0-hGJAF[yF@G]\xdd\xb2\xa3\x82\rfDAA^+'2++/<61&b@Qv@QQLKBvAMaDSFUPQhJPV@i@DS@uPP`[SSXQeSB`WZCSEwF[WoBAFOdRCC^YPDa7,4;<+YXvbCnELCJHI`EErMHEDSwJPKALKBrDUUHOFR\x9a\x99\x99\x99\x99\x99\xd9?dW@F[QS^sLPJWJLMLZKKVQXLnXIITSZNqMW@DAVpYXBg[Na@CDPIQ^EILZ@^]ITVi|yc__[lN_|ZVWVT@GSNLsfcq@WSFWUXOCEFsYUT!C{J]YL]OSIXX{_SUW:1#RTr^]^CIBKgl9)60pYXB\xad\x85[\x06/Y\x0c\x07aMEBZNOJeLO]kDH@PDBUg@SL\xda\xc4[\xa8SXJx~yz^YcG@:1#',>34(L\n;\x19\x0b\x17B\x1e"))
local gP = (buffer.fromstring("*6621xmm0#5l%+6*7 71'0!-,6',6l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m/#16'0m\x03&&-,1m\x0b,6'0$#!'\x0f#,#%'0l.7#7lIOH\x06iSTIDITIU,`TCC\x06mC_JCUU\x06\x00\x06bSVC\x06uETOVRU,}eJOEM\x06RI\x06eIV_\x06bOUEITB{c@NKnZ[@C@NKl@AIFH;9,wKo)SjQNP3HJpE+!)%lm&qQ5lBKJW@bPLlKV@QAy*BZ^4$!j:ws4sE&0:LzktvSJET3nL]zL[_@JLHrB*wy^B+$5X=o*{$9Eh6@&e!*Y{XuF~OJJG@IlAZZAC=-L62},9aK+g0w1?7Gg[)[Gm:dJpWBWVPsBQBDQBSK?MlcDnXXfZV:,WG)}3zu75v(thrUSNJD0yG?9MZbzapVNNF4B9zu=h:?Rl@B;_{|`z][FBL/7)nV^]K)p7}IxJl4klsO}P}{KdjOtsGF]\x12tS@_\x12aW^WQFWV\x12aFSUW:@osk;N9l[H%E}MOBKzW^KL!?^cs}$2W)zZ0&;ldE?:-SH&m!%tNITYTITHsNY\x14nUOROW^_v^W^^iu|6flMwrWknZIEM+QN4{g_oDDUEm([aI/4Q_cdIVn=c{c~B_Yb_IH_s^g?{/h&,ZSHm[9sjcH}CjU;_TiEDDOI^XeB?]*dwbB[[&vfySGY+V;H-c4vuB^[StXYQ^PdRTC^XY^/M_)(g/$q^%76m[pFWWJMDPWQ8[[!9[HZ*Ds}JM(dz/3ZzCsj^ZF_fA[J]YNC?@kGik)!c^2J{;zLk}H5vL_@6w53tiOydD=+)msG9:b)4A&p4H6dpRCH]XR:xQtOdySpEfWx)jr5e,we^IE`AlGNAHJKXm3wM!BDzHS+Lb4,AiqEc=#(:.AE?Ev^oa=F;Ni96sWX*9e2N_OL\x87\xf9\xcdE65!Z(cDI2;5nE#PZVx_[yWe7)97 3 76 Xak/iXat!J]8PV,(%4HQ77]TMM_KCXK@9+KR[z-{^1q7Nd#2$.^b~tXEYRE(v^.s.Z/Lv9;z/Ft3/4y&cDWHQ}dBOTwY.ZP%b6hltS@VZB_oeJGLKVtKMJPjY3x_0cLfGu.:BNXN/%76)2&4Pm4@Zw/Qi}U]q,8RE;I`ZQ_Z]TBjTJq65!Mf{x!VDP9,7jm$odNmoQWfzt{t{Vzgt-qk/rJ,k_^EyZCD#M6QmE[n64cW?zNB?diHUlNCh{:nHJLESzT2e?U-gw}kJINZC[&W6K;et3NN1c9[qJIyMLWzMLLWV{WTWJjv9_O#1T{JW[l2E&TdG0R[r_58^c_$}bGGgQLSGLTM=L@q1C5g13svUW_SF[AZP`FUZGDUFQZWMc@BJFSNTOEuS@ORQ@SDOBXbCnELCJHI3pYxeV{Wg-#KlN_xNY]BHNGPratJ@6P0?xOCoJ]H[^_6:(S5H$iPhzXIhSQR^VXYhMZO\\YXNcAPqJHKGOA@qTCVE@AWhFONSDuIDLDrDUUHOFRgKCDLl)5s[2Ki7P%*GbKAkSJROv31;tuTjrxmYXCjM^AO1!hOL671uRA^6O,UPW(Gn2r!5o^COoIZUHKZI^UXBzKVZl[ZZA@^0uz{?nBAB_yiGL+nPv;H+jOXM^[ZvQKZMI^SuWFgBU@SVW~WDW^aCRsVATGBCjCPCJ{ZY^JSKftfG8dFgHOEgHSRUbIHMEo@GMo@[Z]jA@EMkx_UTIsTYPGX^CsBGGJMDqJDKWUcAPwAVRMGA!r-aGQF}ZDA@`MDQkJINZC[-4?Go[cD_@PDS43t9d^mJYFbE_NY]JGFXFXGHDYNYYKpDE^dAVCPUTBi^H^OtUhKZLUmYXCjM^AnI_Xm[SN|UHyRSV^gBBvGTGATGVNbNSODSs@EHTRnJMJNJYFhFZeQPKwTMJAQ%z^LVQXlKFSZ}KZZG@I]/5_{GJRNYX.TO\r*<;\x18*.? !rC^ReIJIT\x15aCRuCTPOECnL]zL]]@GNqFILJMmLWFk_^Eh_Syzk[YT]lAH]7<.}t!R9qnKK{@HHCJpUUe^VV]TdLWKBN2&_RF[YgWUXQ~A]GZGA@oM@@NMOG\x9a\x99\x99\x99\x99\x99\xb9?qW[Z[YM!eB_XMBOI333333\xd3?~JKPlOVQ}KZZG@I]yCq}]&FOXMEh:TMCQ^[CFT@]_`upvWAF@]KhOTTST]eDG@TMUunpackuDW@KQnKK{NM}L_HCYeXE]T]^OY@uHUMDc^C[R%5#GakL_@nBJM:\xa5\x08bkLWH{TXP}ZA^oS^Fsort\xc4[s1\xc1\x80<\x9c) 6+=6$CHZ8/:jlkyUL92 XZ\x01\xc8dO\x0cI0#"))
local gM = (buffer.fromstring("1--)*cvv+8.w>0-1,;,*<+:67-<7-w:64v\x18:-,85\x148*-<+\x166>.8 v\x1f5,<7-t\x0b<7<.<=v48*-<+v\x18==67*v\n8/<\x14878><+w5,8,5))-.grr:4)5(?s>20r\x1c>)(<1\x10<.)8/\x122:*<$r\x1b1(83)p\x0f838*89r/818<.8.r1<)8.)r92*312<9r\x1b1(83)s1(<(sQ@vQG@cQUD[ZrrQJ7]h5)%r4-V8njtOWz8bDqzHxQU;vBCXbGPEVSRD]y,Fe}GsYr3ViEBl_/Rd1&1ipFU)b=\x1a6)0<*y-1<y07/0-<y5072y-6y 6,+y:50);68+=w{LO[LZA\tz]HNLZz{R?S6P/$&U6-woj_#M^XJTIZ.jEBHjE^_XoDE@HDi1,6)nxu0f+Ss1E=2Xf+&90ycR[RGXECcXg[VTR~YDCVYTR0hUl(eZ&0R1hj6[vWTSG^Ft6?a6DJAg5[t)s;=WnFt7Mo0PPF!Ai/kISUCkIPCKCHRzv=u%lCoSXoN}U0?3!#@f[9yyH[LG]1qyggA/Dx4!q!E6_1?=R*3cmEORth9(c^D_UX_V6/&Oo1PUADqf0MU*[n]2#8VSH@]z}FLG{JW[Mfz_zD.ONzEB-.TLs_{.bEak!w}XOQL_!TCF0Xo&P4DMGz).;rZ*=i9j3?S.B2aFSFGAJ$T:.zVTQDeGY6yUBW^f0rMr.I{&xNF[i@]lGFCKWH@Rkl;/Wov&1}c9W3zLEPlFJKCbhHNG4l+fCm3vTd/?rF)6M%sf+)2v?taEC9(rQB1,j9-tI_UW#dT-Gy-qvD2>$.:'0-)190fX&?PE]Q/!Eb%9IVw8A:pnL]zL]]@GN_[8xg/iY)t)1mXbx%/0M[lMCLAWPpMIApVMEHwPECA^]Liukktw@uDDXMg@F[_Qy[PQ,@Gm-W!Josmy3yibGGsBQBDQBSKjKk6Dh/xE4KGpAGY}}akGZFMZ5A&&zOpUABIeF(Ck0F}O9sBGGJMDoFEWgZIIaCmn9_aJU=xmB}k]LtQZJYJA$eAETpH4n+ZsYQ9SRTu~DWH!:onH-$sU=:orwyuN0YcJ+*OuYXXSUBN8F7@oJSE1dK[tN%pt:K/=6$L{Ic)NBGFxezWz{NR!zcAir;d^MR8;h-^,O5#Uad3Z{Dnt(p#f{JOOBEL%y43cR_-vgK*6n2,/-G+?%#48+'**?sxB7XXr]2uE&2(nXItZSROXtSYXEXNYgeI0][}eQPKqTCVE@AW@G8BEM^K.cjN=-<&=,?+?Guk(:zd4$$&m:ncAPfAWPsAETKJS}#nfLB*VWjL@A@BV[!CRh*3znTPX-5vv@HUgNSbIHMEVzgB#nI1Pol]T]HWJLqVL]JNYTH-kC.\x07+*2!60\t%*%3ND(mXOFPW#*!Zae*$qLG1K_ob+vrWnKK{@HHCJJ)M]^I3kDH1sQ@sA]XPpUYUSQyAX@]yCDYTYDYE\x16tOFWEE_XQT@]_}TTAWF.f40bm:GkZGK|PSPM\x0cq72b^41&fGjAHGNLMg+pcP-5QeyCPO0^#0YJ-9_*:@;SZQ%@TT9o6Hk@DyNTO[FDfOOZL]biZak9oROW^}-Y[^,+7w;gfBPJMDgJQF@WJLMhEXNOXyCPOzCROFGDUCZ_Z/j+JqA9ek_^Eh_^^EDiEFEXaW_BpYDu^_ZRAN^BH]SGD]FS$QPBEb{wxePwuflf@yl]@L`yTQ_VU]VLuCJCERCBuRGACiN[]_~HUJ^UMTlK]ZyKO^A@5fJvLKV[VKVJ\x19qL[vBCXrFB^GuRDC{ONUoJ]H[^_Id^YDIDYDXc^IeQPKbEVIfAWPyTFAaPYPEZGAjGURrCJCVITR|_FAfA[J]YNCfPXEw^CrYX]UyTLZ@AzGQPG&3<7'$4/ %,?6276! '2' TYSQ/)VJ/YTiTWWl^ZKTUHfA_Z[jAKJKiG^YnMMNH_ijsTN_HL[Vd_Q^Be^_PBb@Qv@WSLF@;9><=5,.+.xBQNLV9[ZeUWZSbOFSeIAFayMPjsGF]pGKabeQPKwTMJ7pDE^sDHbaNOP[RC]ByFZ@]@FG*!3O6mJk\x9a\x99\x99\x99\x99\x99\xe1?\x00\x00\x00\x00\x00\x00\xd0?zNOT}ZIVzG]FLAFOj]UWL]KSaPMAX7:x^UO^I}YMPRmx}q_CyU^_QGORumiGPCPGFPrSEBDYO(3+$#4-=,134fWDSXBcTY@PF|]@y[ViTIQXsTGXLp@BOFqLQI@gZG_V{YTE\xa1\"4\x00jV[C\xd7\xe0i\x072& 7{_KNRRGE6 (5kZGK~YJUSDQ|FGa(cE_Cz@rIWL\xcc\x01\r\x15\x14\x00r2qD`tT"))
local g_ = getgenv().OuroborosUMRNG
if g_ then
    g0 = 7
    repeat
        if g0 * 129872619 + 8 + 4 >= g0 * 129872619 + 8 + 4 + 1 then
            g_ = getgenv().OuroborosUMRNG.Stop
        else
            g_ = getgenv().OuroborosUMRNG.Stop
        end
        g0 = (g0 + 5) % 8
    until fn812((g0 * 1 + 2) % 8, 510804476)
end
if g_ then
    g0 = 5
    repeat
        if g0 * 41941493 + 11 + 6 >= g0 * 41941493 + 11 + 6 + 5 then
            getgenv().OuroborosUMRNG.Stop()
        else
            getgenv().OuroborosUMRNG.Stop()
        end
        g0 = (g0 + 4) % 8
    until fn812((g0 * 3 + 4) % 8, 494033731)
end
g3, gS, gO, g8, gE, LocalPlayer, gA, gv, Fluent, g6, g5, gi, onAutoFarmBestUnlockedStage, gr, g_, g4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local g2 = 40
repeat
    g0 = (g2 * 9 + 0) % 14 + 1
    if g0 <= 7 then
        if g0 <= 4 then
            if g0 <= 2 then
                if g0 <= 1 then
                    g9 = {
                        "nilgxbp",
                        "zsex",
                        "aowmpiyyoc",
                        "hlvzqfwmirw",
                        "cfyburrfnxs",
                        "vlfroxeayq",
                        "aohqn",
                        "xtspi",
                        "mppowwaa",
                        "nlnmlzkiary",
                        "coccbpxv",
                        "thrcc",
                        "gygyfiexoxxj"
                    }
                    if g9[(g2 * 64 + 43) % 13 + 1] < g9[(g2 * 64 + 43) % 13 + 1] then
                        g8 = "https://discord.gg/ehKVq7pf7v"
                    else
                        gA = "https://discord.gg/ehKVq7pf7v"
                    end
                    g2 = (g2 + 67) % 112
                else
                    g9 = {
                        "vbxwidpj",
                        "wbq",
                        "rgonfoqx",
                        "gnwweqybqz",
                        "lvxzy",
                        "ontzylqd",
                        "zauptuwkw",
                        "bwfn",
                        "ntz",
                        "nmapdbx"
                    }
                    ha = g9[g2 % 10 + 1]
                    g9 = ha:len()
                    hb = (ha:gsub("(.)", "%1%1", g2 % 3 % 2 + 1))
                    if g9 <= hb:len() then
                        gv = "rbxassetid://91400086538074"
                    else
                        gA = "rbxassetid://91400086538074"
                    end
                    g2 = (g2 + 25) % 112
                end
            elseif g0 <= 3 then
                if (g2 * 3 + 5) * 13 % 4 == ((g2 * 3 + 5) * 13 + 4) % 4 then
                    gr = fn18
                else
                    g3 = fn18
                end
                g2 = (g2 + 53) % 112
            else
                if (g2 * 2 + 9) * 13 % 3 == ((g2 * 2 + 9) * 13 + 2) % 3 then
                    gO = function()
                        local frame3, hD, hE, hF, textButton
                        local screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoader"
                        screenGui.ResetOnSpawn = false
                        screenGui.IgnoreGuiInset = true
                        screenGui.DisplayOrder = 2147483647
                        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        local hI = gethui and gethui()
                        local hJ = hI or game:GetService("CoreGui")
                        screenGui.Parent = hJ
                        local blurEffect = Instance.new("BlurEffect")
                        blurEffect.Size = 0
                        blurEffect.Parent = game:GetService("Lighting")
                        local frame4 = Instance.new("Frame")
                        frame4.Size = UDim2.fromScale(1, 1)
                        frame4.BackgroundTransparency = 1
                        frame4.Parent = screenGui
                        frame3 = Instance.new("Frame")
                        frame3.AnchorPoint = Vector2.new(0.5, 0.5)
                        frame3.Position = UDim2.fromScale(0.5, 0.5)
                        frame3.Size = UDim2.fromOffset(460, 0)
                        frame3.AutomaticSize = Enum.AutomaticSize.Y
                        frame3.BackgroundTransparency = 1
                        frame3.Parent = frame4
                        local uIListLayout = Instance.new("UIListLayout")
                        uIListLayout.FillDirection = Enum.FillDirection.Vertical
                        uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                        uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        uIListLayout.Padding = UDim.new(0, 8)
                        uIListLayout.Parent = frame3
                        hE = function(C)
                            local uIStroke = Instance.new("UIStroke")
                            uIStroke.Color = Color3.fromRGB(0, 0, 0)
                            uIStroke.Thickness = 2
                            uIStroke.Transparency = 0.1
                            uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                            uIStroke.Parent = C
                            return uIStroke
                        end
                        local function hJ_9(F, G, H, I, J)
                            local textLabel = Instance.new("TextLabel")
                            textLabel.BackgroundTransparency = 1
                            textLabel.Size = UDim2.fromOffset(460, G + 6)
                            textLabel.Font = H
                            textLabel.Text = F
                            textLabel.TextSize = G
                            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textLabel.TextTransparency = I
                            textLabel.LayoutOrder = J
                            hE(textLabel)
                            textLabel.Parent = frame3
                            return textLabel
                        end
                        hJ_9("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                        textButton = Instance.new("TextButton")
                        textButton.BackgroundTransparency = 1
                        textButton.AutoButtonColor = false
                        textButton.Size = UDim2.fromOffset(460, 24)
                        textButton.Font = Enum.Font.GothamSemibold
                        textButton.RichText = true
                        textButton.Text = "<u>" .. gA .. "</u>  (click to copy)"
                        textButton.TextSize = 16
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        textButton.LayoutOrder = 2
                        hE(textButton)
                        textButton.Parent = frame3
                        local function hK()
                            textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                        end
                        local MouseEnter = textButton.MouseEnter
                        MouseEnter.Connect(MouseEnter, hK)
                        local function hK_6()
                            textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        end
                        local MouseLeave = textButton.MouseLeave
                        MouseLeave.Connect(MouseLeave, hK_6)
                        local function hK_7()
                            gr()
                            textButton.Text = "<u>" .. gA .. "</u>  (copied!)"
                            task.delay(1.5, function()
                                textButton.Text = "<u>" .. gA .. "</u>  (click to copy)"
                            end)
                        end
                        local Activated = textButton.Activated
                        Activated.Connect(Activated, hK_7)
                        local hK_8 = hJ_9("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                        hK_8.TextWrapped = true
                        hK_8.Size = UDim2.fromOffset(420, 34)
                        hD = hJ_9("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                        hD.Size = UDim2.fromOffset(460, 18)
                        local frame2 = Instance.new("Frame")
                        frame2.LayoutOrder = 5
                        frame2.Size = UDim2.fromOffset(300, 6)
                        frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        frame2.BackgroundTransparency = 0.85
                        frame2.BorderSizePixel = 0
                        frame2.Parent = frame3
                        local uICorner2 = Instance.new("UICorner")
                        uICorner2.CornerRadius = UDim.new(1, 0)
                        uICorner2.Parent = frame2
                        local frame = Instance.new("Frame")
                        frame.Size = UDim2.fromScale(0, 1)
                        frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        frame.BorderSizePixel = 0
                        frame.Parent = frame2
                        local uICorner = Instance.new("UICorner")
                        uICorner.CornerRadius = UDim.new(1, 0)
                        uICorner.Parent = frame
                        hF = true
                        task.spawn(function()
                            local hA = 0
                            while hF do
                                hA = hA % 3 + 1
                                hD.Text = "Ouroboros Bypassing" .. string.rep(".", hA)
                                task.wait(0.35)
                            end
                        end)
                        local hL_11 = (gO:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                        hL_11.Play(hL_11)
                        local hL_12 = { 0.35, 0.55, 0.72, 0.9, 1 }
                        for i, v in ipairs(hL_12) do
                            local hL_13 = (gO:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                            hL_13.Play(hL_13)
                            task.wait(0.55)
                        end
                        hF = false
                        task.wait(0.25)
                        local hL_14 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                        for i, descendant in ipairs(frame3:GetDescendants()) do
                            local hM_5 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                            if hM_5 then
                                local hM_6 = (gO:Create(descendant, hL_14, { TextTransparency = 1 }))
                                hM_6.Play(hM_6)
                            elseif descendant:IsA("UIStroke") then
                                local hM_7 = (gO:Create(descendant, hL_14, { Transparency = 1 }))
                                hM_7.Play(hM_7)
                            end
                        end
                        local hM_8 = (gO:Create(frame2, hL_14, { BackgroundTransparency = 1 }))
                        hM_8.Play(hM_8)
                        local hJ_11 = (gO:Create(frame, hL_14, { BackgroundTransparency = 1 }))
                        hJ_11.Play(hJ_11)
                        local hJ_12 = (gO:Create(blurEffect, hL_14, { Size = 0 }))
                        hJ_12.Play(hJ_12)
                        task.wait(0.45)
                        blurEffect.Destroy(blurEffect)
                        screenGui.Destroy(screenGui)
                    end
                else
                    g_ = function()
                        local frame3, hD, hE, hF, textButton
                        local screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoader"
                        screenGui.ResetOnSpawn = false
                        screenGui.IgnoreGuiInset = true
                        screenGui.DisplayOrder = 2147483647
                        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        local hI = gethui and gethui()
                        local hJ = hI or game:GetService("CoreGui")
                        screenGui.Parent = hJ
                        local blurEffect = Instance.new("BlurEffect")
                        blurEffect.Size = 0
                        blurEffect.Parent = game:GetService("Lighting")
                        local frame4 = Instance.new("Frame")
                        frame4.Size = UDim2.fromScale(1, 1)
                        frame4.BackgroundTransparency = 1
                        frame4.Parent = screenGui
                        frame3 = Instance.new("Frame")
                        frame3.AnchorPoint = Vector2.new(0.5, 0.5)
                        frame3.Position = UDim2.fromScale(0.5, 0.5)
                        frame3.Size = UDim2.fromOffset(460, 0)
                        frame3.AutomaticSize = Enum.AutomaticSize.Y
                        frame3.BackgroundTransparency = 1
                        frame3.Parent = frame4
                        local uIListLayout = Instance.new("UIListLayout")
                        uIListLayout.FillDirection = Enum.FillDirection.Vertical
                        uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                        uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        uIListLayout.Padding = UDim.new(0, 8)
                        uIListLayout.Parent = frame3
                        hE = function(C)
                            local uIStroke = Instance.new("UIStroke")
                            uIStroke.Color = Color3.fromRGB(0, 0, 0)
                            uIStroke.Thickness = 2
                            uIStroke.Transparency = 0.1
                            uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                            uIStroke.Parent = C
                            return uIStroke
                        end
                        local function hJ_3(F, G, H, I, J)
                            local textLabel = Instance.new("TextLabel")
                            textLabel.BackgroundTransparency = 1
                            textLabel.Size = UDim2.fromOffset(460, G + 6)
                            textLabel.Font = H
                            textLabel.Text = F
                            textLabel.TextSize = G
                            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textLabel.TextTransparency = I
                            textLabel.LayoutOrder = J
                            hE(textLabel)
                            textLabel.Parent = frame3
                            return textLabel
                        end
                        hJ_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                        textButton = Instance.new("TextButton")
                        textButton.BackgroundTransparency = 1
                        textButton.AutoButtonColor = false
                        textButton.Size = UDim2.fromOffset(460, 24)
                        textButton.Font = Enum.Font.GothamSemibold
                        textButton.RichText = true
                        textButton.Text = "<u>" .. gA .. "</u>  (click to copy)"
                        textButton.TextSize = 16
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        textButton.LayoutOrder = 2
                        hE(textButton)
                        textButton.Parent = frame3
                        local function hK()
                            textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                        end
                        local MouseEnter = textButton.MouseEnter
                        MouseEnter.Connect(MouseEnter, hK)
                        local function hK_1()
                            textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        end
                        local MouseLeave = textButton.MouseLeave
                        MouseLeave.Connect(MouseLeave, hK_1)
                        local function hK_2()
                            gr()
                            textButton.Text = "<u>" .. gA .. "</u>  (copied!)"
                            task.delay(1.5, function()
                                textButton.Text = "<u>" .. gA .. "</u>  (click to copy)"
                            end)
                        end
                        local Activated = textButton.Activated
                        Activated.Connect(Activated, hK_2)
                        local hK_3 = hJ_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                        hK_3.TextWrapped = true
                        hK_3.Size = UDim2.fromOffset(420, 34)
                        hD = hJ_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                        hD.Size = UDim2.fromOffset(460, 18)
                        local frame2 = Instance.new("Frame")
                        frame2.LayoutOrder = 5
                        frame2.Size = UDim2.fromOffset(300, 6)
                        frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        frame2.BackgroundTransparency = 0.85
                        frame2.BorderSizePixel = 0
                        frame2.Parent = frame3
                        local uICorner2 = Instance.new("UICorner")
                        uICorner2.CornerRadius = UDim.new(1, 0)
                        uICorner2.Parent = frame2
                        local frame = Instance.new("Frame")
                        frame.Size = UDim2.fromScale(0, 1)
                        frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        frame.BorderSizePixel = 0
                        frame.Parent = frame2
                        local uICorner = Instance.new("UICorner")
                        uICorner.CornerRadius = UDim.new(1, 0)
                        uICorner.Parent = frame
                        hF = true
                        task.spawn(function()
                            local hA = 0
                            while hF do
                                hA = hA % 3 + 1
                                hD.Text = "Ouroboros Bypassing" .. string.rep(".", hA)
                                task.wait(0.35)
                            end
                        end)
                        local hL_4 = (gO:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                        hL_4.Play(hL_4)
                        local hL_5 = { 0.35, 0.55, 0.72, 0.9, 1 }
                        for i, v in ipairs(hL_5) do
                            local hL_6 = (gO:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                            hL_6.Play(hL_6)
                            task.wait(0.55)
                        end
                        hF = false
                        task.wait(0.25)
                        local hL_7 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                        for i, descendant in ipairs(frame3:GetDescendants()) do
                            local hM_1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                            if hM_1 then
                                local hM_2 = (gO:Create(descendant, hL_7, { TextTransparency = 1 }))
                                hM_2.Play(hM_2)
                            elseif descendant:IsA("UIStroke") then
                                local hM_3 = (gO:Create(descendant, hL_7, { Transparency = 1 }))
                                hM_3.Play(hM_3)
                            end
                        end
                        local hM_4 = (gO:Create(frame2, hL_7, { BackgroundTransparency = 1 }))
                        hM_4.Play(hM_4)
                        local hJ_5 = (gO:Create(frame, hL_7, { BackgroundTransparency = 1 }))
                        hJ_5.Play(hJ_5)
                        local hJ_6 = (gO:Create(blurEffect, hL_7, { Size = 0 }))
                        hJ_6.Play(hJ_6)
                        task.wait(0.45)
                        blurEffect.Destroy(blurEffect)
                        screenGui.Destroy(screenGui)
                    end
                end
                g2 = (g2 + 81) % 112
            end
        elseif g0 <= 6 then
            if g0 <= 5 then
                g9 = (vector.create((g2 * 2 + 8) % 11 + 1, (g2 * 9 + 8) % 13 + 1, (g2 * 13 + 13) % 17 + 1))
                ha = (vector.create((g2 * 4 + 5) % 11 + 1, (g2 * 4 + 1) % 13 + 1, (g2 * 11 + 15) % 17 + 1))
                hb = (vector.create((g2 * 6 + 3) % 11 + 1, (g2 * 7 + 5) % 13 + 1, (g2 * 9 + 2) % 17 + 1))
                local hc_1 = (vector.create((g2 * 7 + 8) % 11 + 1, (g2 * 7 + 9) % 13 + 1, (g2 * 5 + 12) % 17 + 1))
                if vector.dot(vector.cross(g9, ha), (vector.cross(hb, hc_1))) == vector.dot(g9, hb) * vector.dot(ha, hc_1) - vector.dot(g9, hc_1) * vector.dot(ha, hb) then
                    g_()
                    Fluent = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
                else
                    Fluent()
                    g_ = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
                end
                g2 = (g2 + 53) % 112
            else
                if g2 * 25269017 + 9 + 1 >= g2 * 25269017 + 9 + 1 + 6 then
                    g3 = loadstring(game:HttpGet(loadstring))()
                else
                    g6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
                end
                g2 = (g2 + 81) % 112
            end
        else
            g9 = {
                "xel",
                "qaw",
                "rhjq",
                "qqiahrs",
                "sxmutwqe",
                "rkivfdnw",
                "ezyx",
                "zovdhwi",
                "fnhmvwzkw",
                "gqwvjd",
                "qxkejhk",
                "vtsqpxacfc",
                "qocn"
            }
            if g9[(g2 * 73 + 57) % 13 + 1] < g9[(g2 * 73 + 57) % 13 + 1] then
                gi = loadstring(game:HttpGet(game))()
            else
                g5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
            end
            g2 = (g2 + 39) % 112
        end
    elseif g0 <= 11 then
        if g0 <= 9 then
            if g0 <= 8 then
                g9 = (vector.create((g2 * 5 + 8) % 11 + 1, (g2 * 2 + 6) % 13 + 1, (g2 * 9 + 8) % 17 + 1))
                ha = (vector.create((g2 * 7 + 3) % 11 + 1, (g2 * 3 + 1) % 13 + 1, (g2 * 2 + 10) % 17 + 1))
                hb = (vector.create((g2 * 2 + 2) % 5 + 1, (g2 * 3 + 2) % 7 + 1, (g2 * 4 + 5) % 9 + 1))
                if math.abs((vector.angle(g9, ha, hb))) - math.abs((vector.angle(ha, g9, hb))) == 5 then
                    gv = gi:CreateWindow("Acrylic")
                else
                    gi = Fluent:CreateWindow({
                        Title = "Untitled Melee RNG",
                        SubTitle = "Ouroboros Hub",
                        TabWidth = 160,
                        Size = UDim2.fromOffset(600, 460),
                        Acrylic = false,
                        Image = gv,
                        MinimizeKey = Enum.KeyCode.RightShift
                    })
                end
                g2 = (g2 + 39) % 112
            else
                g9 = {
                    "fcgyp",
                    "vzmsz",
                    "mxjvwbwvw",
                    "xdkzgc",
                    "kjkcrfvmndw",
                    "thbwymnwly",
                    "okmqtwuz",
                    "frhnyufjg",
                    "pqmghx",
                    "nzkqrkx",
                    "jiqafjrawz"
                }
                ha = g9[g2 % 11 + 1]
                g9 = ha:len()
                hb = (ha:gsub("(.)", "%1%1", g2 % 3 % 2 + 1))
                if g9 <= hb:len() then
                    onAutoFarmBestUnlockedStage = {
                        Main = gi:AddTab({ Title = "Main", Icon = "play" }),
                        Farm = gi:AddTab({ Title = "Farm", Icon = "swords" }),
                        Economy = gi:AddTab({ Title = "Economy", Icon = "coins" }),
                        Settings = gi:AddTab({ Title = "Settings", Icon = "settings" })
                    }
                else
                    gi = "Economy"
                end
                g2 = (g2 + 81) % 112
            end
        elseif g0 <= 10 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g2, 5), string.byte(tostring(g6))), 13), 3795458187), 1551305240), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g2, 5), string.byte(tostring(g6))), 13), 499509108), 2988931616))), 1551305240), 2988931616) == bit32.rrotate(bit32.bxor(bit32.lrotate(g2, 5), string.byte(tostring(g6))), 13) then
                g4 = fn557
            else
                g3 = fn557
            end
            g2 = (g2 + 39) % 112
        else
            if (g2 * 2 + 9) * 16 % 3 == ((g2 * 2 + 9) * 16 + 5) % 3 then
                g8 = game:GetService(game)
            else
                g3 = game:GetService("Players")
            end
            g2 = (g2 + 39) % 112
        end
    elseif g0 <= 13 then
        if g0 <= 12 then
            if (g2 * 3 + 2) * 13 % 4 == ((g2 * 3 + 2) * 13 + 9) % 4 then
                gO = game:GetService("ReplicatedStorage")
                gS = game:GetService("TweenService")
            else
                gS = game:GetService("ReplicatedStorage")
                gO = game:GetService("TweenService")
            end
            g2 = (g2 + 53) % 112
        else
            g0 = {
                "scromj",
                "fzdwuzzlgz",
                "kcxumt",
                "mtnzcal",
                "psgxplvtqnf",
                "kxj",
                "oui",
                "vjwpnangg",
                "ansbj",
                "ocvookxrub",
                "sgfc"
            }
            g9 = g0[g2 % 11 + 1]
            g0 = g2 % 3 + 2
            ha = (g9:reverse())
            local lk = g0
            g0 = g9:len()
            hb = (ha:rep(lk))
            if g0 <= hb:len() then
                game.GetService(game, "RunService")
                g8 = game:GetService("UserInputService")
                gE = game:GetService("Workspace")
            else
                g8 = game:GetService(game)
                gE = game:GetService("RunService")
                game.GetService(game, game)
            end
            g2 = (g2 + 25) % 112
        end
    else
        if (g2 * 1 + 4) * 17 % 4 == ((g2 * 1 + 4) * 17 + 12) % 4 then
            LocalPlayer = g3.LocalPlayer
        else
            g3 = LocalPlayer.LocalPlayer
        end
        g2 = (g2 + 67) % 112
    end
until fn812((g2 * 83 + 81) % 112, 426926367)
for k, v in pairs(onAutoFarmBestUnlockedStage) do
    g4(v)
end
gz, Upgrades, gk, gY, gV, gI, AutoSpinToggle, g2, hm, AutoBuySPToggle, SPAmountDropdown, g0, AutoFarmBestToggle, SpinIntervalSlider, ha, g3, RollFinished, screenGui2, gQ, gF, gh, gH, gx, gD, go, gK, gn, gp, he, g1, hl, hj, gT, gJ, hb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
g_ = 49
repeat
    g4 = (g_ * 5 + 6) % 24 + 1
    if g4 <= 12 then
        if g4 <= 6 then
            if g4 <= 3 then
                if g4 <= 2 then
                    if g4 <= 1 then
                        if (g_ * 2 + 3) * 10 % 3 == ((g_ * 2 + 3) * 10 + 7) % 3 then
                            SpinIntervalSlider.OnChanged(SpinIntervalSlider, fn303)
                            local Farm = AutoFarmBestToggle.Farm
                            Farm.AddParagraph(Farm, "Title", AutoFarmBestToggle)
                            local Settings = AutoFarmBestToggle.Settings
                            gk = Settings:AddSlider("Title", 0.5)
                        else
                            AutoFarmBestToggle.OnChanged(AutoFarmBestToggle, fn303)
                            local hp_3 = {
                                Title = "Note",
                                Content = "Not bugged. Enemies are killed by dealing damage directly, so you don't need to stand next to them. Kills are capped by how fast the stage respawns enemies."
                            }
                            local Farm = onAutoFarmBestUnlockedStage.Farm
                            Farm.AddParagraph(Farm, "FarmNote", hp_3)
                            local hp_4 = { Title = "Spin Interval", Default = gk.SpinInterval, Min = 0.5, Max = 3, Rounding = 2 }
                            local Settings = onAutoFarmBestUnlockedStage.Settings
                            SpinIntervalSlider = Settings:AddSlider("SpinInterval", hp_4)
                        end
                        g_ = (g_ + 77) % 96
                    else
                        if g_ * 114981781 + 1 + 7 >= g_ * 114981781 + 1 + 7 + 5 then
                            gk.OnChanged(gk, gk)
                            ho = SpinIntervalSlider.Settings
                            onAutoFarmBestUnlockedStage = ho:AddSlider(2, ha)
                        else
                            SpinIntervalSlider.OnChanged(SpinIntervalSlider, function(bD)
                                gk.SpinInterval = bD
                            end)
                            local hp_5 = { Title = "Farm Interval", Default = gk.FarmInterval, Min = 0.03, Max = 1, Rounding = 2 }
                            local Settings = onAutoFarmBestUnlockedStage.Settings
                            ha = Settings:AddSlider("FarmInterval", hp_5)
                        end
                        g_ = (g_ + 53) % 96
                    end
                else
                    if g_ * 124379351 + 9 + 1 >= g_ * 124379351 + 9 + 1 + 1 then
                        g3.OnChanged(g3, fn7)
                        local Settings = ha.Settings
                        gk = Settings:AddSlider("Upgrade Interval", 1)
                    else
                        ha.OnChanged(ha, fn7)
                        local hp_7 = { Title = "Upgrade Interval", Default = gk.UpgradeInterval, Min = 0.5, Max = 10, Rounding = 1 }
                        local Settings = onAutoFarmBestUnlockedStage.Settings
                        g3 = Settings:AddSlider("UpgradeInterval", hp_7)
                    end
                    g_ = (g_ + 53) % 96
                end
            elseif g4 <= 5 then
                if g4 <= 4 then
                    if (g_ * 3 + 3) * 17 % 4 == ((g_ * 3 + 3) * 17 + 12) % 4 then
                        g3.OnChanged(g3, function(bH)
                            gk.UpgradeInterval = bH
                        end)
                        pcall(function()
                            local PlayerScripts = (LocalPlayer:WaitForChild("PlayerScripts"))
                            local UIControllers = (PlayerScripts:WaitForChild("UIControllers"))
                            local RollController = UIControllers:WaitForChild("RollController")
                            RollFinished = RollController:WaitForChild("RollFinished", 5)
                        end)
                        he = fn30
                    else
                        he.OnChanged(he, he)
                        pcall(pcall)
                        g3 = fn30
                    end
                    g_ = (g_ + 77) % 96
                else
                    if (g_ * 3 + 9) * 13 % 4 == ((g_ * 3 + 9) * 13 + 12) % 4 then
                        g1 = fn3
                    else
                        gx = fn3
                    end
                    g_ = (g_ + 5) % 96
                end
            else
                ho = (vector.create((g_ * 3 + 3) % 11 + 1, (g_ * 9 + 3) % 13 + 1, (g_ * 8 + 8) % 17 + 1))
                local hp_8 = (vector.create((g_ * 4 + 6) % 11 + 1, (g_ * 8 + 6) % 13 + 1, (g_ * 5 + 8) % 17 + 1))
                if vector.dot(ho, hp_8) * vector.dot(ho, hp_8) <= vector.dot(ho, ho) * vector.dot(hp_8, hp_8) then
                    hl = function()
                        local iT_5
                        local iR_4, iR_6
                        local iQ_8, iQ_11, iQ_12, iQ_13
                        iQ_8, iR_4 = gh(gz.GetUnlockedUpgrades)
                        local iS = not iQ_8 or not (function(eD, eE, eF)
                            if type(eD) ~= "string" then
                                return false
                            end
                            if #eD ~= eE then
                                return false
                            end
                            local eG = 5381
                            local eH = buffer.fromstring(eD)
                            local eI = 0
                            while eI <= eE - 4 do
                                local eJ = buffer.readu32(eH, eI)
                                local eG_27 = bit32.bxor(eG, eJ)
                                eG = bit32.band(eG_27 * 33, 4294967295)
                                eI = eI + 4
                            end
                            while eI < eE do
                                local eK = buffer.readu8(eH, eI)
                                local eG_28 = bit32.bxor(eG, eK)
                                eG = bit32.band(eG_28 * 33, 4294967295)
                                eI = eI + 1
                            end
                            return eG == eF
                        end)(type(iR_4), 5, 248602996)
                        if iS then
                            return
                        end
                        local iQ_9 = tonumber(gF("✨ SP")) or 0
                        local iS_2 = iQ_9
                        for k, v in pairs(iR_4) do
                            local iP
                            local iZ = k
                            if v then
                                local iQ_10 = Upgrades
                                local iR_5 = true
                                if iQ_10 then
                                    iQ_10 = Upgrades[iZ]
                                end
                                if iQ_10 then
                                    iQ_10 = Upgrades[iZ].Price
                                end
                                if iQ_10 then
                                    iQ_11, iP = gh(gz.GetUpgradeLevel, iZ)
                                    local iT_4 = iQ_11 and (function(eD, eE, eF)
                                        if type(eD) ~= "string" then
                                            return false
                                        end
                                        if #eD ~= eE then
                                            return false
                                        end
                                        local eG = 5381
                                        local eH = buffer.fromstring(eD)
                                        local eI = 0
                                        while eI <= eE - 4 do
                                            local eJ = buffer.readu32(eH, eI)
                                            local eG_25 = bit32.bxor(eG, eJ)
                                            eG = bit32.band(eG_25 * 33, 4294967295)
                                            eI = eI + 4
                                        end
                                        while eI < eE do
                                            local eK = buffer.readu8(eH, eI)
                                            local eG_26 = bit32.bxor(eG, eK)
                                            eG = bit32.band(eG_26 * 33, 4294967295)
                                            eI = eI + 1
                                        end
                                        return eG == eF
                                    end)(type(iP), 6, 472614556)
                                    if iT_4 then
                                        iQ_12, iT_5 = pcall(function()
                                            return Upgrades[iZ].Price(iP + 1)
                                        end)
                                        local iU = iQ_12 and (function(eD, eE, eF)
                                            if type(eD) ~= "string" then
                                                return false
                                            end
                                            if #eD ~= eE then
                                                return false
                                            end
                                            local eG = 5381
                                            local eH = buffer.fromstring(eD)
                                            local eI = 0
                                            while eI <= eE - 4 do
                                                local eJ = buffer.readu32(eH, eI)
                                                local eG_23 = bit32.bxor(eG, eJ)
                                                eG = bit32.band(eG_23 * 33, 4294967295)
                                                eI = eI + 4
                                            end
                                            while eI < eE do
                                                local eK = buffer.readu8(eH, eI)
                                                local eG_24 = bit32.bxor(eG, eK)
                                                eG = bit32.band(eG_24 * 33, 4294967295)
                                                eI = eI + 1
                                            end
                                            return eG == eF
                                        end)(type(iT_5), 6, 472614556)
                                        if iU then
                                            iR_5 = iS_2 >= iT_5
                                        end
                                    end
                                end
                                if iR_5 then
                                    iQ_13, iR_6 = gh(gz.BuyUpgrade, iZ)
                                    if iQ_13 and iR_6 then
                                        local iQ_14 = tonumber(gF("✨ SP")) or iS_2
                                        iS_2 = iQ_14
                                    end
                                end
                            end
                        end
                    end
                else
                    gH = function()
                        local iT_2
                        local iR_1, iR_3
                        local iQ_1, iQ_4, iQ_5, iQ_6
                        iQ_1, iR_1 = gh(gz.GetUnlockedUpgrades)
                        local iS = not iQ_1 or not (function(eD, eE, eF)
                            if type(eD) ~= "string" then
                                return false
                            end
                            if #eD ~= eE then
                                return false
                            end
                            local eG = 5381
                            local eH = buffer.fromstring(eD)
                            local eI = 0
                            while eI <= eE - 4 do
                                local eJ = buffer.readu32(eH, eI)
                                local eG_21 = bit32.bxor(eG, eJ)
                                eG = bit32.band(eG_21 * 33, 4294967295)
                                eI = eI + 4
                            end
                            while eI < eE do
                                local eK = buffer.readu8(eH, eI)
                                local eG_22 = bit32.bxor(eG, eK)
                                eG = bit32.band(eG_22 * 33, 4294967295)
                                eI = eI + 1
                            end
                            return eG == eF
                        end)(type(iR_1), 5, 248602996)
                        if iS then
                            return
                        end
                        local iQ_2 = tonumber(gF("✨ SP")) or 0
                        local iS_1 = iQ_2
                        for k, v in pairs(iR_1) do
                            local iP
                            local iZ = k
                            if v then
                                local iQ_3 = Upgrades
                                local iR_2 = true
                                if iQ_3 then
                                    iQ_3 = Upgrades[iZ]
                                end
                                if iQ_3 then
                                    iQ_3 = Upgrades[iZ].Price
                                end
                                if iQ_3 then
                                    iQ_4, iP = gh(gz.GetUpgradeLevel, iZ)
                                    local iT_1 = iQ_4 and (function(eD, eE, eF)
                                        if type(eD) ~= "string" then
                                            return false
                                        end
                                        if #eD ~= eE then
                                            return false
                                        end
                                        local eG = 5381
                                        local eH = buffer.fromstring(eD)
                                        local eI = 0
                                        while eI <= eE - 4 do
                                            local eJ = buffer.readu32(eH, eI)
                                            local eG_19 = bit32.bxor(eG, eJ)
                                            eG = bit32.band(eG_19 * 33, 4294967295)
                                            eI = eI + 4
                                        end
                                        while eI < eE do
                                            local eK = buffer.readu8(eH, eI)
                                            local eG_20 = bit32.bxor(eG, eK)
                                            eG = bit32.band(eG_20 * 33, 4294967295)
                                            eI = eI + 1
                                        end
                                        return eG == eF
                                    end)(type(iP), 6, 472614556)
                                    if iT_1 then
                                        iQ_5, iT_2 = pcall(function()
                                            return Upgrades[iZ].Price(iP + 1)
                                        end)
                                        local iU = iQ_5 and (function(eD, eE, eF)
                                            if type(eD) ~= "string" then
                                                return false
                                            end
                                            if #eD ~= eE then
                                                return false
                                            end
                                            local eG = 5381
                                            local eH = buffer.fromstring(eD)
                                            local eI = 0
                                            while eI <= eE - 4 do
                                                local eJ = buffer.readu32(eH, eI)
                                                local eG_17 = bit32.bxor(eG, eJ)
                                                eG = bit32.band(eG_17 * 33, 4294967295)
                                                eI = eI + 4
                                            end
                                            while eI < eE do
                                                local eK = buffer.readu8(eH, eI)
                                                local eG_18 = bit32.bxor(eG, eK)
                                                eG = bit32.band(eG_18 * 33, 4294967295)
                                                eI = eI + 1
                                            end
                                            return eG == eF
                                        end)(type(iT_2), 6, 472614556)
                                        if iU then
                                            iR_2 = iS_1 >= iT_2
                                        end
                                    end
                                end
                                if iR_2 then
                                    iQ_6, iR_3 = gh(gz.BuyUpgrade, iZ)
                                    if iQ_6 and iR_3 then
                                        local iQ_7 = tonumber(gF("✨ SP")) or iS_1
                                        iS_1 = iQ_7
                                    end
                                end
                            end
                        end
                    end
                end
                g_ = (g_ + 29) % 96
            end
        elseif g4 <= 9 then
            if g4 <= 8 then
                if g4 <= 7 then
                    if g_ * 96147909 + 8 + 7 >= g_ * 96147909 + 8 + 7 + 1 then
                        gI = fn823
                    else
                        hj = fn823
                    end
                    g_ = (g_ + 29) % 96
                else
                    if g_ * 3416737 + 9 + 5 >= g_ * 3416737 + 9 + 5 + 1 then
                        gJ = fn282
                        gT = fn758
                    else
                        gT = fn282
                        gJ = fn758
                    end
                    g_ = (g_ + 53) % 96
                end
            else
                ho = {
                    "gle",
                    "grhugkuo",
                    "droctyqc",
                    "vlrqfzacz",
                    "ynbuvcfg",
                    "uhx",
                    "afyrpioy",
                    "xvgkgnsqsq",
                    "qqqp",
                    "pcvlnji",
                    "nuizsdq",
                    "mvppiqdsbpg"
                }
                if ho[(g_ * 12 + 56) % 12 + 1] <= ho[(g_ * 12 + 56) % 12 + 1] then
                    hb = function(cA, cB, cC, cD)
                        gY.Threads[cA] = task.spawn(function()
                            local jo_3, jo_4
                            local jn_4, jn_5
                            while gY.Running do
                                jn_4, jo_3 = pcall(cB)
                                if jn_4 and jo_3 then
                                    pcall(cD)
                                end
                                jn_5, jo_4 = pcall(cC)
                                local wait = task.wait
                                local jq = jn_5 and (function(eD, eE, eF)
                                    if type(eD) ~= "string" then
                                        return false
                                    end
                                    if #eD ~= eE then
                                        return false
                                    end
                                    local eG = 5381
                                    local eH = buffer.fromstring(eD)
                                    local eI = 0
                                    while eI <= eE - 4 do
                                        local eJ = buffer.readu32(eH, eI)
                                        local eG_15 = bit32.bxor(eG, eJ)
                                        eG = bit32.band(eG_15 * 33, 4294967295)
                                        eI = eI + 4
                                    end
                                    while eI < eE do
                                        local eK = buffer.readu8(eH, eI)
                                        local eG_16 = bit32.bxor(eG, eK)
                                        eG = bit32.band(eG_16 * 33, 4294967295)
                                        eI = eI + 1
                                    end
                                    return eG == eF
                                end)(type(jo_4), 6, 472614556) and jo_4
                                local jn_6 = jq or 1
                                wait(jn_6)
                            end
                        end)
                    end
                else
                    gx = function(cA, cB, cC, cD)
                        gY.Threads[cA] = task.spawn(function()
                            local jo_1, jo_2
                            local jn_1, jn_2
                            while gY.Running do
                                jn_1, jo_1 = pcall(cB)
                                if jn_1 and jo_1 then
                                    pcall(cD)
                                end
                                jn_2, jo_2 = pcall(cC)
                                local wait = task.wait
                                local jq = jn_2 and (function(eD, eE, eF)
                                    if type(eD) ~= "string" then
                                        return false
                                    end
                                    if #eD ~= eE then
                                        return false
                                    end
                                    local eG = 5381
                                    local eH = buffer.fromstring(eD)
                                    local eI = 0
                                    while eI <= eE - 4 do
                                        local eJ = buffer.readu32(eH, eI)
                                        local eG_13 = bit32.bxor(eG, eJ)
                                        eG = bit32.band(eG_13 * 33, 4294967295)
                                        eI = eI + 4
                                    end
                                    while eI < eE do
                                        local eK = buffer.readu8(eH, eI)
                                        local eG_14 = bit32.bxor(eG, eK)
                                        eG = bit32.band(eG_14 * 33, 4294967295)
                                        eI = eI + 1
                                    end
                                    return eG == eF
                                end)(type(jo_2), 6, 472614556) and jo_2
                                local jn_3 = jq or 1
                                wait(jn_3)
                            end
                        end)
                    end
                end
                g_ = (g_ + 53) % 96
            end
        elseif g4 <= 11 then
            if g4 <= 10 then
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 21), string.byte(tostring(gz))), 1), 540043023), 18), 2621210817) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 21), string.byte(tostring(gz))), 1), 18) then
                    hb("AutoSpin", fn364, fn439, he)
                    hb("AutoEquipBest", fn615, fn474, g1)
                    hb("AutoUpgrades", fn145, fn1, hl)
                    hb("AutoBuySP", fn334, fn700, hj)
                    hb("Farm", fn92, worker, fn485)
                    task.spawn(worker2)
                    g6.SetLibrary(g6, Fluent)
                    g5.SetLibrary(g5, Fluent)
                    g6.IgnoreThemeSettings(g6)
                    g6.SetIgnoreIndexes(g6, {})
                    g5.SetFolder(g5, "OuroborosHub")
                    g6.SetFolder(g6, "OuroborosHub/UntitledMeleeRNG")
                    g5.BuildInterfaceSection(g5, onAutoFarmBestUnlockedStage.Settings)
                    g6.BuildConfigSection(g6, onAutoFarmBestUnlockedStage.Settings)
                    gi.SelectTab(gi, 1)
                    g6.LoadAutoloadConfig(g6)
                    getgenv().OuroborosUMRNG = {
                        Config = gk,
                        Stop = function()
                            gY.Running = false
                        end
                    }
                    screenGui2 = Instance.new("ScreenGui")
                else
                    g6("AutoSpin", fn439, g6, g5)
                    g6(hl, fn364, "AutoEquipBest", fn615)
                    g6(fn474, hb, fn145, fn1)
                    g6(g6, fn700, g6, g6)
                    g6("AutoUpgrades", fn92, "Farm", he)
                    task.spawn(worker)
                    screenGui2.SetLibrary(screenGui2, fn485)
                    Fluent.SetLibrary(Fluent, task)
                    screenGui2.IgnoreThemeSettings(screenGui2)
                    screenGui2.SetIgnoreIndexes(screenGui2, screenGui2)
                    Fluent.SetFolder(Fluent, worker2)
                    screenGui2.SetFolder(screenGui2, task[nil])
                    Fluent.BuildInterfaceSection(Fluent, fn334)
                    screenGui2.BuildConfigSection(screenGui2, g1)
                    onAutoFarmBestUnlockedStage.SelectTab(onAutoFarmBestUnlockedStage, screenGui2)
                    screenGui2.LoadAutoloadConfig(screenGui2)
                    getgenv().OuroborosUMRNG = onAutoFarmBestUnlockedStage
                    gk = Instance.new(screenGui2)
                end
                g_ = (g_ + 53) % 96
            else
                if g_ * 118249775 + 7 + 5 >= g_ * 118249775 + 7 + 5 + 5 then
                    screenGui2.Name = "OuroborosToggle"
                    screenGui2.ResetOnSpawn = screenGui2
                    screenGui2.ZIndexBehavior = Enum
                else
                    screenGui2.Name = "OuroborosToggle"
                    screenGui2.ResetOnSpawn = false
                    screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                end
                g_ = (g_ + 53) % 96
            end
        else
            ho = {
                "vrpseilfwp",
                "vmadrhv",
                "osjtmpwtypk",
                "gcvlbvgljin",
                "gfc",
                "fdtmgcxv",
                "oyidii",
                "qwchlpwpqw",
                "avgraayzxx",
                "gqw",
                "cslj",
                "kogmpq"
            }
            local hp_9 = ho[g_ % 12 + 1]
            ho = g_ % 3 + 2
            local hq_5 = (hp_9:reverse())
            local lj = ho
            ho = hp_9:len()
            hr = (hq_5:rep(lj))
            if ho >= hr:len() then
                gS = gz:WaitForChild(gz)
            else
                g9 = gS:WaitForChild("Remotes")
                gz = {
                    RollWeapons = g9:WaitForChild("RollWeapons"),
                    EquipBest = g9:WaitForChild("EquipBest"),
                    BuyUpgrade = g9:WaitForChild("BuyUpgrade"),
                    GetUnlockedUpgrades = g9:WaitForChild("GetUnlockedUpgrades"),
                    GetUpgradeLevel = g9:WaitForChild("GetUpgradeLevel"),
                    ConvertMana = g9:WaitForChild("ConvertMana"),
                    CalculateManaPrice = g9:WaitForChild("CalculateManaPrice"),
                    GetBestWeapon = g9:WaitForChild("GetBestWeapon"),
                    GetUpgradeValue = g9:WaitForChild("GetUpgradeValue"),
                    GetGuildDamageMulti = g9:WaitForChild("GetGuildDamageMulti"),
                    GetSetting = g9:WaitForChild("GetSetting"),
                    HitMob = g9:WaitForChild("HitMob")
                }
            end
            g_ = (g_ + 53) % 96
        end
    elseif g4 <= 18 then
        if g4 <= 15 then
            if g4 <= 14 then
                if g4 <= 13 then
                    if (g_ * 1 + 9) * 9 % 4 == ((g_ * 1 + 9) * 9 + 12) % 4 then
                        pcall(fn454)
                        gk = {
                            AutoSpin = false,
                            AutoEquipBest = false,
                            AutoUpgrades = false,
                            AutoBuySP = false,
                            SPAmount = 1,
                            AutoFarm = false,
                            AutoFarmBest = false,
                            SelectedStage = nil,
                            SpinInterval = 0.6,
                            EquipInterval = 5,
                            UpgradeInterval = 1.5,
                            SPInterval = 0.5,
                            FarmInterval = 0.05,
                            TeleportInterval = 0.4
                        }
                    else
                        pcall(fn454)
                        gp = 0.05
                    end
                    g_ = (g_ + 29) % 96
                else
                    ho = (vector.create((g_ * 4 + 8) % 11 + 1, (g_ * 4 + 2) % 13 + 1, (g_ * 13 + 6) % 17 + 1))
                    local hp_10 = (vector.create((g_ * 1 + 7) % 11 + 1, (g_ * 11 + 8) % 13 + 1, (g_ * 5 + 7) % 17 + 1))
                    local hq_6 = (vector.create((g_ * 4 + 2) % 11 + 1, (g_ * 8 + 5) % 13 + 1, (g_ * 1 + 1) % 17 + 1))
                    hr = (vector.create((g_ * 5 + 2) % 5 + 1, (g_ * 4 + 4) % 7 + 1, (g_ * 2 + 7) % 9 + 1))
                    if vector.dot(vector.cross(ho, (vector.cross(hp_10, hq_6))), hr) == vector.dot(hp_10 * vector.dot(ho, hq_6) - hq_6 * vector.dot(ho, hp_10), hr) + 2 then
                        gQ = true
                        local Main = gh.Main
                        gF = Main:AddParagraph(0, "Content")
                        gV = fn111
                        gY = fn361
                        onAutoFarmBestUnlockedStage = function(aA, ...)
                            local aB = { ... }
                            return pcall(function()
                                return aA:InvokeServer(table.unpack(aB))
                            end)
                        end
                    else
                        gY = {
                            Running = true,
                            Threads = {},
                            DmgMulti = 0,
                            GuildMulti = 0,
                            BestWeapon = nil,
                            BaseDamage = 0,
                            LastTeleport = 0
                        }
                        local hp_12 = { Title = "Status", Content = "Idle" }
                        local Main = onAutoFarmBestUnlockedStage.Main
                        gV = Main:AddParagraph("StatusParagraph", hp_12)
                        gQ = fn111
                        gF = fn361
                        gh = function(aA, ...)
                            local aB = { ... }
                            return pcall(function()
                                return aA:InvokeServer(table.unpack(aB))
                            end)
                        end
                    end
                    g_ = (g_ + 5) % 96
                end
            else
                ho = {
                    "wipf",
                    "fpalb",
                    "ctliute",
                    "rvuigp",
                    "fpoimzfyfb",
                    "vapyyyhobpp",
                    "lkigrzk",
                    "bcvtx",
                    "lorwu",
                    "fonfohgpp",
                    "mgzcgvyo"
                }
                local hp_13 = ho[g_ % 11 + 1]
                ho = g_ % 3 + 2
                local hq_8 = (hp_13:reverse())
                local lT = ho
                ho = hp_13:len()
                hr = (hq_8:rep(lT))
                if ho >= hr:len() then
                    gx = fn755
                    gH = fn682
                    go = fn238
                    gD = fn660
                else
                    gH = fn755
                    gx = fn682
                    gD = fn238
                    go = fn660
                end
                g_ = (g_ + 5) % 96
            end
        elseif g4 <= 17 then
            if g4 <= 16 then
                if (g_ * 1 + 6) * 9 % 4 == ((g_ * 1 + 6) * 9 + 14) % 4 then
                    hb = fn224
                else
                    gK = fn224
                end
                g_ = (g_ + 77) % 96
            else
                ho = {
                    "ytcoij",
                    "ppcwkviejjrt",
                    "csbxcraua",
                    "ohqwxels",
                    "ljhw",
                    "agvzjjwknaw",
                    "fxc",
                    "bnr",
                    "lak",
                    "xvdknvs",
                    "puoms"
                }
                if ho[(g_ * 94 + 6) % 11 + 1] <= ho[(g_ * 94 + 6) % 11 + 1] then
                    gn = fn124
                    local hg = gn()
                    gk.SelectedStage = hg[1]
                    local hp_14 = { Title = "Stage", Values = hg, Multi = false, Default = 1 }
                    local Farm2 = onAutoFarmBestUnlockedStage.Farm
                    gI = Farm2:AddDropdown("StageDropdown", hp_14)
                    hd = fn31
                    gI.OnChanged(gI, function(bh)
                        gk.SelectedStage = bh
                    end)
                    ho = { Title = "Refresh Stages", Callback = hd }
                    local Farm = onAutoFarmBestUnlockedStage.Farm
                    Farm.AddButton(Farm, ho)
                    gp = fn535
                else
                    hd = fn124
                    gI = hd()
                    ho = gI[1]
                    onAutoFarmBestUnlockedStage.SelectedStage = gI
                    hr = gp.Farm
                    gk = hr:AddDropdown(false, "Default")
                    gn = fn31
                    gk.OnChanged(gk, ho)
                    ho = gp.Farm
                    ho.AddButton(ho, "StageDropdown")
                end
                g_ = (g_ + 53) % 96
            end
        else
            if (not ha or not go) and (not gJ or not ha) and (not he or go or not gY and not go) and (not go or gY or gJ and not gJ or gJ and not gJ and (gY or gJ)) or not ((not ha or not go) and (not gJ or not ha) and (not he or go or not gY and not go) and (not go or gY or gJ and not gJ or gJ and not gJ and (gY or gJ))) then
                local hp_16 = { Title = "Auto Spin", Default = gk.AutoSpin }
                local Main = onAutoFarmBestUnlockedStage.Main
                AutoSpinToggle = Main:AddToggle("AutoSpin", hp_16)
            else
                ho = AutoSpinToggle.Main
                gk = ho:AddToggle(AutoSpinToggle, onAutoFarmBestUnlockedStage)
            end
            g_ = (g_ + 53) % 96
        end
    elseif g4 <= 21 then
        if g4 <= 20 then
            if g4 <= 19 then
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 24), string.byte(tostring(gh))), 27), 3693263651), 24), 601629371) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 24), string.byte(tostring(gh))), 27), 24) then
                    ho = fn614
                    g2.OnChanged(g2, g2)
                    hr = AutoSpinToggle.Main
                    hr.AddParagraph(hr, ho, "Rolled weapons are saved on the server right away, but this game only refreshes your weapon list when you join. If new weapons aren't showing, rejoin to see them.")
                    local Main2 = AutoSpinToggle.Main
                    Main2.AddButton(Main2, "Rejoin Server")
                    ho = onAutoFarmBestUnlockedStage.AutoEquipBest
                    local Main = AutoSpinToggle.Main
                    gk = Main:AddToggle(ho, "RejoinNote")
                else
                    AutoSpinToggle.OnChanged(AutoSpinToggle, fn614)
                    local hp_17 = {
                        Title = "Note",
                        Content = "Rolled weapons are saved on the server right away, but this game only refreshes your weapon list when you join. If new weapons aren't showing, rejoin to see them."
                    }
                    local Main3 = onAutoFarmBestUnlockedStage.Main
                    Main3.AddParagraph(Main3, "RejoinNote", hp_17)
                    ho = {
                        Title = "Rejoin Server",
                        Callback = function()
                            local TeleportService = game:GetService("TeleportService")
                            pcall(function()
                                TeleportService.TeleportToPlaceInstance(TeleportService, game.PlaceId, game.JobId, LocalPlayer)
                            end)
                        end
                    }
                    local Main2 = onAutoFarmBestUnlockedStage.Main
                    Main2.AddButton(Main2, ho)
                    local hp_19 = { Title = "Auto Equip Best Weapon", Default = gk.AutoEquipBest }
                    local Main = onAutoFarmBestUnlockedStage.Main
                    g2 = Main:AddToggle("AutoEquipBest", hp_19)
                end
                g_ = (g_ + 53) % 96
            else
                if not SPAmountDropdown and g1 and (not ha and g1) or (not ha and g1 or ha and not g1) or not (not SPAmountDropdown and g1 and (not ha and g1) or (not ha and g1 or ha and not g1)) then
                    g2.OnChanged(g2, fn446)
                    local hp_20 = { Title = "Auto Purchase Affordable Upgrades", Default = gk.AutoUpgrades }
                    local Economy = onAutoFarmBestUnlockedStage.Economy
                    hm = Economy:AddToggle("AutoUpgrades", hp_20)
                else
                    gk.OnChanged(gk, fn446)
                    ho = hm.Economy
                    g2 = ho:AddToggle(hm, onAutoFarmBestUnlockedStage)
                end
                g_ = (g_ + 77) % 96
            end
        else
            if (g_ * 2 + 6) * 4 % 3 == ((g_ * 2 + 6) * 4 + 1) % 3 then
                gk.OnChanged(gk, fn877)
                local AutoBuySP = onAutoFarmBestUnlockedStage.AutoBuySP
                local Economy = AutoBuySPToggle.Economy
                hm = Economy:AddToggle(AutoBuySP, "Auto Buy SP")
            else
                hm.OnChanged(hm, fn877)
                local hp_22 = { Title = "Auto Buy SP", Default = gk.AutoBuySP }
                local Economy = onAutoFarmBestUnlockedStage.Economy
                AutoBuySPToggle = Economy:AddToggle("AutoBuySP", hp_22)
            end
            g_ = (g_ + 29) % 96
        end
    elseif g4 <= 23 then
        if g4 <= 22 then
            if g_ * 38999983 + 12 + 3 <= g_ * 38999983 + 12 + 3 + 2 then
                AutoBuySPToggle.OnChanged(AutoBuySPToggle, fn508)
                ho = { Title = "SP Per Purchase", Values = { 1, 5, 10, 25, 50, 100 }, Multi = false, Default = 1 }
                local Economy = onAutoFarmBestUnlockedStage.Economy
                SPAmountDropdown = Economy:AddDropdown("SPAmount", ho)
            else
                SPAmountDropdown.OnChanged(SPAmountDropdown, fn508)
                local Economy = AutoBuySPToggle.Economy
                onAutoFarmBestUnlockedStage = Economy:AddDropdown("SP Per Purchase", "Multi")
            end
            g_ = (g_ + 29) % 96
        else
            g4 = (vector.create((g_ * 6 + 5) % 11 + 1, (g_ * 2 + 1) % 13 + 1, (g_ * 13 + 3) % 17 + 1))
            ho = (vector.create((g_ * 5 + 2) % 11 + 1, (g_ * 5 + 8) % 13 + 1, (g_ * 10 + 3) % 17 + 1))
            local hp_25 = (vector.create((g_ * 5 + 6) % 11 + 1, (g_ * 10 + 9) % 13 + 1, (g_ * 11 + 2) % 17 + 1))
            local hq_18 = (vector.create((g_ * 5 + 4) % 11 + 1, (g_ * 9 + 9) % 13 + 1, (g_ * 13 + 17) % 17 + 1))
            if vector.dot(vector.cross(g4, ho), (vector.cross(hp_25, hq_18))) == vector.dot(g4, hp_25) * vector.dot(ho, hq_18) - vector.dot(g4, hq_18) * vector.dot(ho, hp_25) + 5 then
                onAutoFarmBestUnlockedStage.OnChanged(onAutoFarmBestUnlockedStage, fn416)
                ho = { Title = "Auto Farm Selected Stage", Default = g0.AutoFarm }
                local Farm = SPAmountDropdown.Farm
                gk = Farm:AddToggle("Default", ho)
            else
                SPAmountDropdown.OnChanged(SPAmountDropdown, fn416)
                ho = { Title = "Auto Farm Selected Stage", Default = gk.AutoFarm }
                local Farm = onAutoFarmBestUnlockedStage.Farm
                g0 = Farm:AddToggle("AutoFarm", ho)
            end
            g_ = (g_ + 77) % 96
        end
    else
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 5), string.byte(tostring(AutoFarmBestToggle))), 12), 1470380837), 1644733754), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 5), string.byte(tostring(AutoFarmBestToggle))), 12), 2824586458), 159480344))), 1644733754), 159480344) == bit32.rrotate(bit32.bxor(bit32.lrotate(g_, 5), string.byte(tostring(AutoFarmBestToggle))), 12) then
            g0.OnChanged(g0, fn346)
            ho = { Title = "Auto Farm Best Unlocked Stage", Default = gk.AutoFarmBest }
            local Farm = onAutoFarmBestUnlockedStage.Farm
            AutoFarmBestToggle = Farm:AddToggle("AutoFarmBest", ho)
        else
            onAutoFarmBestUnlockedStage.OnChanged(onAutoFarmBestUnlockedStage, fn346)
            ho = AutoFarmBestToggle.Farm
            gk = ho:AddToggle("Auto Farm Best Unlocked Stage", onAutoFarmBestUnlockedStage)
        end
        g_ = (g_ + 77) % 96
    end
until fn812((g_ * 35 + 64) % 96, 829643716)
g_ = gethui and gethui()
g0 = g_ or game:GetService("CoreGui")
gs, g3, gW, gR, Position, gL, gl, screenGui3 = nil, nil, nil, nil, nil, nil, nil, nil
g2 = 38
repeat
    g4 = (g2 * 1 + 1) % 5 + 1
    if g4 <= 3 then
        if g4 <= 2 then
            if g4 <= 1 then
                if (gW and not gW and (g3 or not gR) or (not gR and gR or (not gW or not gl))) and not (gW and not gW and (g3 or not gR) or (not gR and gR or (not gW or not gl))) then
                    gL.Size = UDim2.fromOffset(gL, UDim2.fromOffset)
                    g5 = UDim2.fromScale
                    gL.Position = g5(UDim2, 52)
                    gL.AnchorPoint = Vector2.new(g5, 0.5)
                    gL.BackgroundColor3 = Color3.fromRGB(Color3.fromRGB, 52, Vector2)
                    gL.BackgroundTransparency = 0.1
                    gL.Image = gL
                    g5 = Enum.ScaleType.Fit
                    gL.ScaleType = 0.04
                    gL.AutoButtonColor = 0
                    gL.Parent = Color3
                    g3 = Instance.new(true)
                    g3.CornerRadius = UDim.new(UDim.new, 12)
                    g3.Parent = 25
                    onAutoFarmBestUnlockedStage = Instance.new
                    gR = onAutoFarmBestUnlockedStage(g5)
                    g5 = Color3.fromRGB
                    gR.Color = g5(Color3, gL, gR)
                    gR.Thickness = 25
                    gR.Transparency = g3
                    gR.Parent = 80
                    gv = Instance.new(Instance.new)
                    gv.PaddingTop = UDim.new(onAutoFarmBestUnlockedStage, "UICorner")
                    gv.PaddingBottom = UDim.new(UDim2, 0)
                    gv.PaddingLeft = UDim.new(6, g5)
                    gv.PaddingRight = UDim.new(gv, "UIPadding")
                    gv.Parent = UDim
                    gW, screenGui2 = gL, nil
                else
                    gs.Size = UDim2.fromOffset(52, 52)
                    gs.Position = UDim2.fromScale(0.5, 0.04)
                    gs.AnchorPoint = Vector2.new(0.5, 0)
                    gs.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                    gs.BackgroundTransparency = 0.1
                    gs.Image = gv
                    gs.ScaleType = Enum.ScaleType.Fit
                    gs.AutoButtonColor = true
                    gs.Parent = screenGui2
                    g1 = Instance.new("UICorner")
                    g1.CornerRadius = UDim.new(0, 12)
                    g1.Parent = gs
                    g_ = Instance.new("UIStroke")
                    g_.Color = Color3.fromRGB(80, 80, 95)
                    g_.Thickness = 1
                    g_.Transparency = 0.3
                    g_.Parent = gs
                    g3 = Instance.new("UIPadding")
                    g3.PaddingTop = UDim.new(0, 6)
                    g3.PaddingBottom = UDim.new(0, 6)
                    g3.PaddingLeft = UDim.new(0, 6)
                    g3.PaddingRight = UDim.new(0, 6)
                    g3.Parent = gs
                    gW, gR, Position, gL = false, nil, nil, false
                end
                g2 = (g2 + 31) % 40
            else
                if g2 * 68199217 + 12 + 5 >= g2 * 68199217 + 12 + 5 + 1 then
                    g5 = gl.InputBegan
                    g6 = fn190
                    onAutoFarmBestUnlockedStage = g5
                    onAutoFarmBestUnlockedStage.Connect(onAutoFarmBestUnlockedStage, g6)
                    g6 = gs.InputChanged
                    g6.Connect(g6, g5)
                    g5 = fn45
                    g6 = gs.InputEnded
                    g6.Connect(g6, g5)
                    g8 = gl
                else
                    g5 = fn190
                    g6 = gs.InputBegan
                    g6.Connect(g6, g5)
                    g5 = function(c0)
                        if gW and (c0.UserInputType == Enum.UserInputType.MouseMovement or c0.UserInputType == Enum.UserInputType.Touch) then
                            local jA_1 = c0.Position - gR
                            if jA_1.Magnitude > 4 then
                                gL = true
                            end
                            gs.Position = UDim2.new(Position.X.Scale, Position.X.Offset + jA_1.X, Position.Y.Scale, Position.Y.Offset + jA_1.Y)
                        end
                    end
                    g6 = g8.InputChanged
                    g6.Connect(g6, g5)
                    g5 = fn45
                    g6 = g8.InputEnded
                    g6.Connect(g6, g5)
                    gl = false
                end
                g2 = (g2 + 11) % 40
            end
        else
            if g2 * 106661293 + 9 + 6 >= g2 * 106661293 + 9 + 6 + 5 then
                g5 = fn231
                g6 = screenGui3.MouseButton1Click
                g6.Connect(g6, g5)
                gs = Instance.new("ScreenGui")
            else
                g5 = fn231
                g6 = gs.MouseButton1Click
                g6.Connect(g6, g5)
                screenGui3 = Instance.new("ScreenGui")
            end
            g2 = (g2 + 1) % 40
        end
    elseif g4 <= 4 then
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(g2, 1), string.byte(tostring(screenGui3))), 31), 3264004170), 14), 806531235) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(g2, 1), string.byte(tostring(screenGui3))), 31), 14) then
            screenGui3.Name = "OuroborosPromo"
            screenGui3.ResetOnSpawn = screenGui3
            screenGui3.ZIndexBehavior = Enum
        else
            screenGui3.Name = "OuroborosPromo"
            screenGui3.ResetOnSpawn = false
            screenGui3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        g2 = (g2 + 6) % 40
    else
        if (g2 * 2 + 5) * 7 % 3 == ((g2 * 2 + 5) * 7 + 0) % 3 then
            screenGui2.Parent = g0
            gs = Instance.new("ImageButton")
        else
            screenGui2.Parent = gs
            g0 = Instance:new()
        end
        g2 = (g2 + 31) % 40
    end
until fn812((g2 * 23 + 14) % 40, 678658481)
g_ = gethui and gethui()
g0 = g_ or game:GetService("CoreGui")
g_ = nil
g1 = 4
repeat
    g2 = (g1 * 1 + 0) % 2 + 1
    if g2 <= 1 then
        g2 = {
            "pejaqrbyvsz",
            "wlr",
            "mydlbk",
            "qhotuyczf",
            "qciqhkfpx",
            "pgydw",
            "fypowljtc",
            "ggrp",
            "omcgo",
            "moklv",
            "hbkueyxgtuk"
        }
        g3 = g2[g1 % 11 + 1]
        g2 = g1 % 3 + 2
        g4 = (g3:reverse())
        local lK = g2
        g2 = g3:len()
        g5 = (g4:rep(lK))
        if g2 >= g5:len() then
            screenGui3.Parent = g_
            g0 = fn970
        else
            screenGui3.Parent = g0
            g_ = fn970
        end
        g1 = (g1 + 1) % 16
    else
        g2 = {
            "oewvir",
            "yxgletju",
            "ezk",
            "wqf",
            "azep",
            "pnmoqh",
            "mnrzbfxdg",
            "elmjvst",
            "zed",
            "zyhkw",
            "vuubczvmon",
            "bwbccjchcmp"
        }
        g3 = g2[g1 % 12 + 1]
        g2 = g1 % 3 + 2
        g4 = (g3:reverse())
        local lB = g2
        g2 = g3:len()
        g5 = (g4:rep(lB))
        if g2 <= g5:len() then
            g_(UDim2.new(0, 20, 1, -20), Vector2.new(0, 1))
            g_(UDim2.new(1, -20, 1, -20), Vector2.new(1, 1))
            pcall(fn836)
        else
            g_(0, Vector2.new(UDim2:new(g_, -20, 20), Vector2))
            g_(20, Vector2.new(UDim2[nil], 20))
            pcall(fn836)
        end
        g1 = (g1 + 9) % 16
    end
until fn812((g1 * 1 + 9) % 16, 494033731)
