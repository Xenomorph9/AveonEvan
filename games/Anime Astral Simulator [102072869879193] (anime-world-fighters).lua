local f4
local fX
local f7
local f_
local ga
local fV
local f5
local f8
local f0
local gb
local f3
local Omni
local f9
local f1
local gc
local Fluent
local function fn19(S)
    local hk = not S or not S.Parent or not S:IsA("BasePart")
    if hk then
        return false
    elseif S:GetAttribute("Died") == true then
        return false
    else
        local attr = S:GetAttribute("Health")
        local hl = (function(dY, dZ, d_)
            if type(dY) ~= "string" then
                return false
            end
            if #dY ~= dZ then
                return false
            end
            local d0 = 5381
            local d1 = buffer.fromstring(dY)
            local d2 = 0
            while d2 <= dZ - 4 do
                local d3 = buffer.readu32(d1, d2)
                local d0_1 = bit32.bxor(d0, d3)
                d0 = bit32.band(d0_1 * 33, 4294967295)
                d2 = d2 + 4
            end
            while d2 < dZ do
                local d4 = buffer.readu8(d1, d2)
                local d0_2 = bit32.bxor(d0, d4)
                d0 = bit32.band(d0_2 * 33, 4294967295)
                d2 = d2 + 1
            end
            return d0 == d_
        end)(typeof(attr), 6, 472614556) and attr <= 0
        if hl then
            return false
        end
        return S:GetAttribute("ID") ~= nil
    end
end
local function fn78(a4)
    local is = f5()
    local it = is and f0(a4)
    if it then
        local it_1 = CFrame.new(0, 0, fX.FarmDistance)
        is.CFrame = CFrame.new(a4.Position + Vector3.new(0, 2, 0)) * it_1
        is.AssemblyLinearVelocity = Vector3.zero
    end
end
local function fn82()
    return fX.AutoRewards
end
local function fn89()
    local jh = { "EnemiesOnRangeIds" }
    local Cache = Omni.Cache
    local jj = Cache:Get(jh) or {}
    f9(jj)
end
local function fn95()
    local hT = {}
    local hV = Omni.Shared.Gacha and Omni.Shared.Gacha.List or {}
    for k in pairs(hV) do
        hT[#hT + 1] = k
    end
    table.sort(hT)
    return hT
end
local function fn108(E)
    local g5 = E
    local g6 = {}
    if not g5 then
        g5 = {}
    end
    for k in pairs(g5) do
        g6[#g6 + 1] = k
    end
    table.sort(g6, function(I, J)
        return tostring(I) < tostring(J)
    end)
    return g6
end
local function fn165()
    f1("General", "Achievements", "ClaimAll")
end
local function fn171()
    Omni.WaitInitialization(Omni)
end
local function fn251(cN)
    fX.StarDelay = cN
end
local function fn288()
    return fX.AutoAwaken
end
local function fn311(aI, aJ)
    local ie = not aI
    local ig = {}
    if not ie then
        ie = not aJ
    end
    if ie then
        return ig
    end
    local ie_1 = gb(aI)
    if not ie_1 then
        return ig
    end
    for i, descendant in ipairs(ie_1:GetDescendants()) do
        local ie_2 = descendant:IsA("BasePart") and descendant.Name == aJ and f0(descendant)
        if ie_2 then
            ig[#ig + 1] = descendant
        end
    end
    table.sort(ig, function(aQ, aR)
        local h9 = aQ:GetAttribute("Health") or math.huge
        local h9_1 = aR:GetAttribute("Health") or math.huge
        if h9 == h9_1 then
            local h9_2 = aQ:GetAttribute("ID") or ""
            local ic = aR:GetAttribute("ID") or ""
            return h9_2 < ic
        end
        return h9 < h9_1
    end)
    return ig
end
local function fn429()
    f1("General", "Attack", "Click", {})
end
local function fn439(cx)
    fX.SelectedEnemy = cx
end
local function fn492()
    if not Omni.DataLoaded then
        Omni.LoadData(Omni)
    end
end
local function fn505(aZ)
    local ip = aZ and next(aZ)
    if ip then
        f1("General", "Attack", "Click", aZ)
    end
end
local function fn532()
    return fX.AttackDelay
end
local function fn535()
    return fX.AutoIndex
end
local function fn591()
    return fX.PunchDelay or fX.AttackDelay
end
local function fn600()
    return fX.AutoAttack and not fX.AutoFarm
end
local function fn602(a2)
    if f0(a2) then
        f9({ [a2:GetAttribute("ID")] = true })
    end
end
local function fn617()
    return fX.AutoFeats
end
local function fn632()
    return fX.AutoStats
end
local function fn709(d6, d7)
    if type(d6) ~= "number" then
        return false
    end
    if d6 % 1 ~= 0 then
        return false
    end
    local d8_1 = bit32.bxor(d6, 1540483477)
    local d8_2 = bit32.band(d8_1 * 403 + bit32.lshift(d8_1, 24), 4294967295)
    local d8_3 = bit32.bxor(d8_2, bit32.rshift(d8_2, 13))
    return d8_3 == d7
end
local function fn721()
    local Data = Omni.Data
    if not Data or not Omni.Shared.IndexRewards then
        return
    end
    local iR_1 = Omni.Shared.IndexRewards.List or {}
    for k, v in pairs(iR_1) do
        local iR_3 = Data.IndexRewards and Data.IndexRewards[k] or {}
        for k2 in pairs(v) do
            if iR_3[k2] ~= true then
                f1("General", "IndexRewards", "Claim", k, k2)
                task.wait(0.15)
                f1("General", "Index", "ClaimReward", k, k2)
                task.wait(0.15)
            end
        end
    end
end
local function fn726(L)
    return L and L[1] or nil
end
local function fn733(bN)
    local jb_1
    local ja_1
    if (function(dY, dZ, d_)
        if type(dY) ~= "string" then
            return false
        end
        if #dY ~= dZ then
            return false
        end
        local d0 = 5381
        local d1 = buffer.fromstring(dY)
        local d2 = 0
        while d2 <= dZ - 4 do
            local d3 = buffer.readu32(d1, d2)
            local d0_7 = bit32.bxor(d0, d3)
            d0 = bit32.band(d0_7 * 33, 4294967295)
            d2 = d2 + 4
        end
        while d2 < dZ do
            local d4 = buffer.readu8(d1, d2)
            local d0_8 = bit32.bxor(d0, d4)
            d0 = bit32.band(d0_8 * 33, 4294967295)
            d2 = d2 + 1
        end
        return d0 == d_
    end)(typeof(bN), 8, 2851454103) then
        ja_1, jb_1 = pcall(bN)
        local jc = ja_1 and (function(dY, dZ, d_)
            if type(dY) ~= "string" then
                return false
            end
            if #dY ~= dZ then
                return false
            end
            local d0 = 5381
            local d1 = buffer.fromstring(dY)
            local d2 = 0
            while d2 <= dZ - 4 do
                local d3 = buffer.readu32(d1, d2)
                local d0_5 = bit32.bxor(d0, d3)
                d0 = bit32.band(d0_5 * 33, 4294967295)
                d2 = d2 + 4
            end
            while d2 < dZ do
                local d4 = buffer.readu8(d1, d2)
                local d0_6 = bit32.bxor(d0, d4)
                d0 = bit32.band(d0_6 * 33, 4294967295)
                d2 = d2 + 1
            end
            return d0 == d_
        end)(typeof(jb_1), 6, 472614556)
        if jc then
            return jb_1
        end
        return 1
    elseif (function(dY, dZ, d_)
        if type(dY) ~= "string" then
            return false
        end
        if #dY ~= dZ then
            return false
        end
        local d0 = 5381
        local d1 = buffer.fromstring(dY)
        local d2 = 0
        while d2 <= dZ - 4 do
            local d3 = buffer.readu32(d1, d2)
            local d0_3 = bit32.bxor(d0, d3)
            d0 = bit32.band(d0_3 * 33, 4294967295)
            d2 = d2 + 4
        end
        while d2 < dZ do
            local d4 = buffer.readu8(d1, d2)
            local d0_4 = bit32.bxor(d0, d4)
            d0 = bit32.band(d0_4 * 33, 4294967295)
            d2 = d2 + 1
        end
        return d0 == d_
    end)(typeof(bN), 6, 472614556) then
        return bN
    else
        return 1
    end
end
local function fn760(cv)
    fX.SelectedWorld = cv
    local jw = f_(cv)
    fX.SelectedEnemy = gc(jw)
    f7.SetValues(f7, jw)
    if fX.SelectedEnemy then
        f7.SetValue(f7, fX.SelectedEnemy)
    end
end
local function fn770(ae)
    local hr = {}
    local hs = Omni.Shared.Enemies and Omni.Shared.Enemies[ae] or {}
    for k, v in pairs(hs) do
        for k in pairs(v) do
            hr[k] = true
        end
    end
    local hs_1 = gb(ae)
    if hs_1 then
        for i, descendant in ipairs(hs_1:GetDescendants()) do
            local hs_2 = descendant:IsA("BasePart") and descendant:GetAttribute("ID")
            if hs_2 then
                hr[descendant.Name] = true
            end
        end
    end
    return f4(hr)
end
local function fn782(b9)
    b9.CreateButton(b9, {
        Title = "Join Discord for Dupe / Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = function()
            if setclipboard then
                setclipboard(f3)
                fV("Discord", "Invite copied to clipboard.", 4)
            else
                fV("Discord", f3, 8)
            end
        end
    })
end
local function fn797(X)
    local Server = ga:FindFirstChild("Server")
    local ho = Server and Server:FindFirstChild("Enemies")
    if not ho then
        return nil
    end
    local World = ho:FindFirstChild("World")
    local hp = World and X and World:FindFirstChild(X)
    if hp then
        return World:FindFirstChild(X)
    end
    local ho_2 = X and ho:FindFirstChild(X)
    if ho_2 then
        return ho:FindFirstChild(X)
    end
    return ho
end
local function fn820()
    local i3_1 = Omni.Shared.Awakenings.List[(Omni.Data.Awakening or 0) + 1]
    if i3_1 and (Omni.Data.Power or 0) >= i3_1.Power then
        f1("General", "Awakening", "Awaken")
    end
end
local function fn829()
    local hJ = {}
    local hL = Omni.Shared.Maps and Omni.Shared.Maps.List or {}
    for k, v in pairs(hL) do
        if not v.FakeMap then
            hJ[#hJ + 1] = k
        end
    end
    table.sort(hJ)
    return hJ
end
local function fn872()
    local h0 = {}
    local h1 = Omni.Shared.Stars or {}
    for k, v in pairs(h1) do
        if (function(dY, dZ, d_)
            if type(dY) ~= "string" then
                return false
            end
            if #dY ~= dZ then
                return false
            end
            local d0 = 5381
            local d1 = buffer.fromstring(dY)
            local d2 = 0
            while d2 <= dZ - 4 do
                local d3 = buffer.readu32(d1, d2)
                local d0_9 = bit32.bxor(d0, d3)
                d0 = bit32.band(d0_9 * 33, 4294967295)
                d2 = d2 + 4
            end
            while d2 < dZ do
                local d4 = buffer.readu8(d1, d2)
                local d0_10 = bit32.bxor(d0, d4)
                d0 = bit32.band(d0_10 * 33, 4294967295)
                d2 = d2 + 1
            end
            return d0 == d_
        end)(typeof(v), 5, 248602996) then
            h0[#h0 + 1] = k
        end
    end
    table.sort(h0)
    return h0
end
local function fn926()
    local Data = Omni.Data
    if not Data then
        return
    end
    local iz = Omni.Shared.TimeRewards or {}
    for k, v in pairs(iz) do
        local iz_1 = Data.TimeRewards and Data.TimeRewards.Claimed and Data.TimeRewards.Claimed[tostring(k)] ~= true and Data.TimeRewards.TimePlayed >= v.Time
        if iz_1 then
            f1("General", "TimeRewards", "Claim", k)
            task.wait(0.1)
        end
    end
    local iz_2 = Data.DailyRewards and (ga:GetServerTimeNow() - Data.DailyRewards.Start) / 86400
    local iA = iz_2 or 0
    local iA_1 = Omni.Shared.DailyRewards or {}
    for k in pairs(iA_1) do
        local iA_2 = Data.DailyRewards and Data.DailyRewards.Claimed and Data.DailyRewards.Claimed[tostring(k)] ~= true and k <= iA
        if iA_2 then
            f1("General", "DailyRewards", "Claim", k)
            task.wait(0.1)
        end
    end
    local iz_4 = Omni.Shared.PlayerLevel.List.Rewards or {}
    for i, v in ipairs(iz_4) do
        local iz_5 = "Level" .. tostring(v.Level)
        if Data.Level and Data.Level.Amount >= v.Level and Data.Level.Rewards[iz_5] ~= true then
            f1("General", "PlayerLevel", "ClaimReward", v.Level)
            task.wait(0.1)
        end
    end
end
local function fn938()
    local Character = f8.Character
    local hi = Character and Character:FindFirstChild("HumanoidRootPart")
    return hi
end
local function fn940()
    return fX.GachaDelay
end
local function fn974()
    fX.Running = false
    fX.AutoAttack = false
    fX.AutoPunch = false
    fX.AutoStats = false
    fX.AutoRewards = false
    fX.AutoIndex = false
    fX.AutoAwaken = false
    fX.AutoFeats = false
    fX.AutoFarm = false
    fX.AutoGacha = false
    fX.AutoStar = false
    pcall(function()
        f1("Player", "AntiAfk", "SetValue", "LastGacha", "None")
        f1("Player", "AntiAfk", "SetValue", "LastStar", "None")
    end)
    pcall(function()
        if Fluent.Destroy then
            Fluent.Destroy(Fluent)
        elseif Fluent.Unload then
            Fluent.Unload(Fluent)
        end
    end)
    if getgenv().BWFAutoFluent == fX then
        getgenv().BWFAutoFluent = nil
    end
end
local function fn1010()
    return fX.AutoGacha and fX.SelectedGacha ~= nil
end
local function fn1022()
    return fX.AutoPunch
end
local function fn1026()
    return f4(Omni.Shared.PlayerLevel.List.Stats)
end
local function fn1067()
    if fX.SelectedGacha then
        f1("General", "Gacha", "Roll", fX.SelectedGacha, {})
    end
end
Fluent = nil
fV = nil
fX = nil
local fY
local fZ
f_ = nil
f0 = nil
f1 = nil
f3 = nil
f4 = nil
f5 = nil
Omni = nil
f7 = nil
f8 = nil
f9 = nil
ga = nil
gb = nil
gc = nil
local ge
local f2, gh, gj, gl, gm, gn, gv, gw, gy, gz, gA, gB, gD, gE, gF, gG
local gC_1
local gH, gI, gJ, gK, gM, gN, gO, gP
local fW = (buffer.fromstring("<  $'n{{3= <!6z7;9{\x157 !58\x195' 1&\x1b;3#5-{\x128!1: y\x061:1#10{&1815'1'{85 1' {0;#:8;50{\x128!1: z8!5!IYkfH]V%&lw,ZUBuKj30*QjHYl[LDALOAH}BDCY^aVHPzOyx+7?R?+Bj59LEMy=l]&U6CdR[RTCRSrYRZNrQ&O5/%OrYle-(!e@Dv:6Ip/_&!QS=vGPTAPaZRRYP7$XC]0wlAUfcS!Cb0_SL9OJEj9zAY)n{jmYXCj@YIBXR}/XqW]f;6PM}Kt#iQ1NN(@P4X{juCJCERCBcHCK_?9R7iRBH@}E#}YD8/6$t_mheV0k/{TSY{TONI~UTQY.=vAU?xs$.x?pyty}NZI1KPIOlvyOKXIBKHFO06{TrIauPb$S,sE^Q[OwDa7D,7f;s,k]KAODCDMRNmaoS-l8&,*eFuJy8FU.)D{TpUPkuljEH@D{L^H[Mz]#im=_RR}cK*{hY:)c&3j!kuh{gzWEBqWU^WYV02(t85YJ@-I*!Qp+dA]NQf40Q_e8gQXQW@QPg@UFK7(#/%#/x3UU4lt@(fu1+]IytNpoH[Dm@Z]HGJLP&*9.C3=[=p9oB*ZfP3kjyFA:si_V_YN_^}[YR[PQM=]LkwJC=RYIW!s!ls%IbY8wLEVA@HC:QOKu#]EuHi{DHTW]&45J_[8-5@I8bVWL\x03pWBQGD?5;iP{DDz%&_x?{o^a3B$=z^T/~[SVCh_M[H^Iv&k/skcU2.}NJ3$*rnAH/;q*Ph]]HJB\tmLEHPT5z^4,,kMIi.m10hz&Jif,nKazGZBKyj1+MDmW{RrK;4l#YZj^/D.LyHJFLSK)>:529=5bGXLT.Ra@z$i=dF,pjeu3h9)Mfu#tV]VAR_4F{;[NdYbWKB%QMb.:GA9wU.o9&GSvZRUK0#:)c,p_@+0;E!!=+Q_E4@0!yiQ.{AgKCD1Pb2DD=Tg)$s^^5GU7du{WG1$b[6#i;q@WSFWf]UU^WGsKF-x)#iWF9N*uP*#6MRV4qLQI@4#hQo)=89G,QPOj_TLkUUbUk_Ro7W;yMLWkLYLKX#3)da92vs2xT(oj)}H9M)MVegN]NG8433?nBu:KAy-qCXy=nba_%Nd$FJ3k_^Ek^^KIAk5Rbe}E75.Z#de!![7EpT5VecBoDMBKIHuM*n%?]7B9D2NE9M,1KFG0Q@zkSJROfdQzQ5o=ocJ8D})2k]jHZR_R-_5-HpFOF@WFGfMFNZ3FAT#;meq.9zRC}iiE@,UnXIITSZN.apZ7_+yCa3:YChA$7XhZgRQG[b@QdQQWLGPQ@MajQL=hbZ{z+(s6YMs*lt`AWGVMTPMKJ@c6R=!WXyo*DiO9XK_%2&[uHUMD6](!Wi3sM}lPP(1BqRdglhgMv;?lfGjAHGNLMFTz.Bz[3b!^soFxiR$S0?OKluWFsFF@[PGFWr5xeDz)sVY4Zq4L3fz4LxYt_VYPRS&M$E+$U3ggJ9SV,O2eT;1cBn_HLYHoXYYBC0$Ro?DvvT?qmTp-4Wb&1{J]YL]zMLLWVH^m[@r;{jnpYKb1BQjoo{_X_[_LS}SO;s@UKh&ylJq1#fb.4eqpHh^W^XO^_hOZOUMQwLvDA%ShsBi6htEATBJWKDbc-8K;drmv)hXq:9:[h/#*fZceTCGRCrIAAJC@O,e$BnHJX{NMf{vJ5qpDE^wTPEB,e^AuF}:xUuizS/(aQ+V?iN[N~HUJ^UMTTmVTWI4(y4::(vTvUg!-<!R.A8bAyZ2znO_Z:[VI(_*yy+l@gFk@IFOML,w5{gCvgh4%hbS$(Ylh&,wXU]Yyo8o?7pmbx-}G5(7wZpkx_mzlZKKVQXLlz?AGJTB?1QV%PEf7PRW,uTWPD]EL=V%5OD9;a@Eng5y[,U[#SmJYF\x0boBX_JEHNP0z+cx}mV8EfqL=gxNGNH_NOx_JY;w=R{l*+x.a3D}++7hDLKsXtZ:?Dw}4K;JT]yi@s(nDd}bNLVMW?flG@Ee!MI1FQ(6:QW6Sxl{ONU{M[Q_T=drZbRO-2;-=2{D%{9bT]TRETUbEPC:MPED6dezs*cZvh%TZ]TA[CPD[Awq-,g1.$$_Rk_.q.gQ@@]ZSGI//jlD4G%@=H1aJsp)v{F[CJ=!e@x,AuTO@ZSdjsMDTqEanHJAHmLEHPaCNZb*8rR{H7=Bgw:lZKnVJ^K-6hUqxU-MO,b3H={^g-lQLT]IBp*%{M1xvh#qGp+OpJ5_|@MUI^`IZI@Gc0H}+9MF4LRLlkq@WSFWa^[VW@^Hi5o4y3+;50V});#>#+0-EN27meHz77#Y={n*^hYNJ_NxGBONYweYGsvooGq0@V~C^FOqE{46c+,fryA-!fn?&rMqPST@YABC+mAAR$uu+onQ6B8dR[RTCRS`XE[SlDXhrkyZao_q^YSq^EDCt_^[SchLjU+JbWNfL@A*v;m/AR}cyh@RR/(ly3t|J[yNCZJ(Uazd943;BQCd:mhNYoROW^0z!E6wkSps;^pFeeDiBKDMONb9QS.X.h*0oD&izGDD[&fOmU+g,8*}J4=z9#%7>5qwn/z#08.c8AaA9CzxHxNGNH_NOnENFRZ,/akLR]2~JKP\x1f~H^TZQ3Ui{[!_@,I3zNOThOZOH5Bt-r(@X[?G,HgUUCKDJ_jOHCGTpCJIEOR_sGF]sFFSQYdy^/+m)d*)Cm|GEFHM#eA.+#OO{sv?%yQe@HMXsDV@SERA0%d^oN[vkL_@iD^YLCNHb(r#2A!G@uBOVFP+X!vY,o%wHIk5apQ|W^QXZ[xxAKpu6utm?vBCX\x17t[V^Z\x17~YSRO1ALKk]YJ[PYZT]wKH4D2e%%0lXYBdCIHUfZeXxd;OyVFyH_[N_~HUJ^UMTtfVQ#o[ZA\x0eoZZOMEihALLrQw{@IZMLN#4DI98:@pVdmk_^E\niFKCG\nxO]KXNYh^HBLG@GNZapFh$a*/kMODMM(49$)*4k,JoOtVGrGGAZQFGVQ{b_JsiHKLXAYsmtk}5)c+x.WNYUSKE@M%DS!]A8NtCVJOEGRCBuRITGACmO^yOX\\CIOLt0uY;7pRCdREAREc^ZRyX@lXYB\rlZLFHC*_w2kZVH*#bU0j/G#v6v,{ONU}[YR[TK%?}3$xGRYvJdi3f(9#S(HwFQU@QgX]PQF=Z{NpFOF@WFGdB@KBZ1bVWL\x03pSJM\x03dB@KByDYAH5[r1+gCU*0gSRI\x06uVOH\x06aGENGwAPrEHQA;fSo[UffDUeDRBDOE@OURbSD@UDuNFFMDI[rCTPETuC^AU^F_t@AZ\x15tAATV^it}eXE]TXxP3hy5:o`QFBWFgQLSGLTM,4-.--#$53/Jl}hy~JKPySJZQK~HAHNYHIjLNEL}KBKMZKJk@KCWwAHAGPA@sKVH@i_V_YNn[X!mcbtLQOGgQLSGLTMGL^eU:5)HlkRze@HMXsDV@SERmH@EP{L^H[MZrCTPETb]XUTCl]JN[J{@HHCJoHBC^tCQGTBU|MZ^KZkPXXSZrCTPETsDEE^_uCJCERCBuRGTbSD@UDrMHEDS{ZLKMPFN(,9FjMGF[qFTBQGPrNNJ}_N{ICTYh]]HJBmLEHP,$15%>3%??2bFAvQ-we3g5-5*$./?:;+<yD@H\x7fHZL_I^nSW_h_M[H^IvJG_CTwZA/%lXYBjLNELXLmWHEJ@\x04wPEVjHCH_LA!:)!xDIQMZdM^MDzLH[JAHKELpFBQ@KBAOFEQLNlEEPFWwCBYwBBWU]dPQJdQQDFNeDiBKDMON]vTEbTCGXRT138-%8, 6.nL]zL[_@JLJIO4).e3brU@SeDM@X>-2.>+6#+mUHQIJ[Y_pDE^wTPEByMLWhMV[P|HIRtSYXEeSB`WZCSEmYXCeBHITj^_DlJHCJk_^Ez_DIBt@AZe@[V]mYXCjIMX_TB_C8/jvjo[ZA}ZOZ]~H^TZQVQXq@WSFWfSP\x00\x00\x00\x00\x00\x00\xe8?yMLWkLYJwUXXVUW_'%9:62,:~]SVvSFShNYoROW^\x00\x00\x00\x00\x00\x00\xe0?xE_DNCDMqS^^PSQYDVYDYDO[\n\xd7\xa3p=\n\xc7?pFWWJMDPQBYTC^XYgQ@bUXAQ62;)#+6mC_eIBC}ALTH_^?.;,2/1eBYY^YPpQRUAX@qPST@YAlA[KGZLERAREDRjKHO[BZz]FFAFOvT_TCP]*.6+=*}ALTH_~EL_HIeSEOAJwBBWU]LDCNL[zM@YI_qJHKE@pKIJDA`WA[HWnSNV_xEX@Ia]PXP~_BGXgZG_VLZRO]rORJCxQBQX|ABB]\x1b41;3wOVNSe]@^VeXE]T(,)-?iTWW`JFGpWD[findaDWN\xa4\xd5\xcdY\x15}\x03\x96 \xabs\"vZCQ\x9f1\x9f=\x1e\x1b\xf6\xf4O\xdd\xa1\x11\xcbGO%bMVA~RZ]hBNO;-%8R%\xd71`LDCQEQE]ZX^mHRUuWTSwRHO|FUJVFE`ZhlHOeAF{AsX_RpTS|PI^:K5M%\x05\x19#wQ@\x1eLXqtI3\x1b\x18$[R\x082"))
local gg = (buffer.fromstring("\x1a-$'),h-&-%!-;h.':h< -h;-$-+<-,h?':$,h.:'%h; ):-,h,)<)h)&,h$!>-h?':#;8)+-f_2!LsDL9S9Zw&03[Ja5R,%xoqT\x1479<=<x/1,0x\x1e4-=6,x\n=6=/=<vJfklrK)-s](fDJF4Z4oU)keSZSUBSReBWD50O:-C+{(tq/9ZSsSu^mGx)uie,}aAFk^^KIAnOFKSO(p2*vFV-ATZDdsNo;@l1qr1hK4Ap#{\x14%26#2\x04;>32%Q!ECCR?-7g6W(7xSj@Uowt?0AK0@.`UU@BJeDM@XeWH,-5)?[^1c#nyOQ%#IAyWcTW2Izm~[N[vU[^_^Y{30x,:vNWJxW;@,y/yjAFjn=ir3hJmsGF]uSQZSMHV%YZD02G9gWx*=HQr2!4Rgs0g4ruaASPEBFVEG^Q%bSC;WsH=BOJX.*zhf}f*6yZDDF(I|JCJL[JKx@]CKEl$vEU-!Kqn8B;H@^(:/.l?#d,UpQ|W^QXZ[w;sC0%EpbGrMsos+IaJIvRq08({4r-pFBQ@KBAOF2F-@wGL2Eye7i0#@lS(Gy}fPAMv;@dB@KBgQLSGLTMSG6VGIJ{m{q[^.9u},n6s?L+VuA@[uCU_QZT/yR@@mg9Rh[x]$LzZl)78=r}^gKcBoDMBKIHS03JB.ffCL,QmcW2XH?RrEb8qtw/`TUN\x01rU@UR/v*4X;_Wj&.##LBcRPUr_0x-F(RlNEDH[H@HCY^w4*fTiTo@q%:D?FSppLu(pfcFvWTSG^Fym^.4k)Z):JweKdo43h)!%&rvII{8Gb@MMC@BJ^]91Q^M(9Qb2wvD!{1ewXaON(MD=!uBOVFP0R1x:Ha[k,LLF]Q?{GM3vOIWGL(mJOv@QsDIP@$r/m.)Te98TU5?/ePt?MJw2:+ArUpQRUAX@44I@hfNTLzz0J}?Iz.l9?vc?h*)O_~C^FOo7o:Fd3Fn/a5[gpbIGENKQKe(RFcVeg[VNRE{RAR[$0EC[xjApu+f)=1qF}i*Pkyndq`gSRI`JSCHR:dPwxnNC4o1r9%/2i;6@:bfIDLHdIIN@YdT6Zp{H$aq$^0U!*3g{y$LJUOIBBEB@GWALtUaV-+xlX__-iqv#_KK*b+t@AZe@[V]CSuL%5%GK(X1RZENfFUMJ&(w;OJC[C#&;S&}4=wDM@e=2m,Cp=/}a%7vzAlpTSTPTGXvXD6suitS&gQYA6YE/IUhBRIoHxEFFY(:NW4h6cJj:&yoXjKOD+VS3c/uz=/fGjAHGNLM)=fB!}}=!6c%6j%!J:}+?h+$JvSHENbCJG_6ert@w=S(Uon(%7#)RA4nSOrTV]TqPYTLN)+OMp#)(7ax!r7ss*@u?:=|[HWuvGK*Ew_BS^Coz965F?zvJGd#}fp.: 78#CMIF(P+$n4-}6iZqB1N9I!cf%}k]:##/4+fv1t:@W]Y_*uMlonA]:VVRg%?[qLQI@=g6Lggfs@#:nnsD(983&DUaCq+P`ABEQHPH?a)g7T]xIu^#EjJII3QnE#A&ED_C^NM&gHF,;r+66bQ!]2[cfKK(OiwH~C^FO1&gkz_XIs$b5g6::Io0H;vUOxkThDEENH_BDEX*Misa#g,?GI&1*F}]Jxfb@QdQQWLGPQ@Kd8W2xb$!FSyg?3OszvF@NDBIjuJrb86@V_]/Bk3OLjll_Unqkh]]HJB\tmLEHPgt[cm:23YfYxD2Q[aGz]H]m[FYMF^GfCvH6Pa*!J{r0sO7D7fGjAHGNLM?}yq6S%D4lNBHYKxZxi9u`TUN`UU@BJo2(x#C*FGg=/_$.ZCt*$wLEVA@v7/X[]LO3FTe$[TWP?0nLWBeTCGRCrIAAJC[E}P}VwKwZu[]nnmTjM^AhE_XMBOI^p9bo^d9vw0.XjZ{0gZG_Vax*}Cbo4f]p=[/Yzav,Ar6b:vBCX\x17t[V^Z\x17~YSROm$Dp,H?.gOPjixE_DNCDM41NMJ$%k6WgX.*6wr6c$tBJWjMJWJBOJYBWJLM^GC_$E0?}peQPKwPEPW)DsJ0XO+V@{,)cKs:0Nc[FXPqS@FfY8XSy%+Q{BPD,=wm6l|^U^IZWe*hZ@Y@W:*Hcf#:eE47,dSFZ_UWBSReBYDWQS7AC60DcnYFq^YSq^EDCt_^[Stmk4-eWDV7y;JbDFMDiC9Y+U90/0XwFC40HTMoo)\x1568=<=y.0-1y\x1f5,<7-y\x0b<7<.<=wPLZ_^U/L=tSXN&#wAQ5#$TqRQ0~F_GZ{]%Og1f)wqaH=Uw#V]ipMRNMCHQEYWt^3{$S)Pv[q1]w%yUiHKLXAY#e@7NDaP]LxHIz&)s0pi|m\x0bj^_Dv\x0bXBLEJG\x0bMJBGNO\x11\x11'.'!6'&\x05#!*#&fK%jp[J+J]WRWKY_lS4Y*U,X&oaPj1W}z3%lXYB~YLY^w[sF]-_NxmTUyFgrSEUD_FB_YXKa(.5b7S?-#?p|AEMzM_IZL[BLb?Zj+Kq:XPYzGZBK+mPsziHWm-h?J*leS9fATGFVWE5(?V5yvv8d8G%URZXEONQA_F_FU-]HW08d+m}Cx_DDCDM2%((*lMTUC@Ej.64~ID]M[a==9Z]EB3(u2.k7,uHUMDr/gf]IgegFM]mr%C*~TXYa{7iJUnVgIvY0zvk#KnSNV_,92A!K@FIU_f,J,gHl]JN[Jk]@_K@XAMtx)V^nHiOMFOjKBOW)Lm^?fcxi)uHgSRI\x06vSHENyONES#*j:;vrDUUHOFR$cpwQ(RKn9Eic.)),,:8+:_h)D[EnRKp(f\x16=6>*s?: 's!65!6 ;67}fW@DQ@qJBBI@QL3C!+{!aCHCTGJn8SHU72G]F8hc~_rYP_VTUoEqSTpjnvt-qED_bUGQBTCdq2PaT2[9tERVCRcXPP[RtU{vhbZeX[[D]el,c[X)+Ce(dGiHKLXAY8/26H7nV4PUenIZE;J6Amalaf@-B1Zi^]I^HS\x1b~U^VB\x1bwRHOdEhCJELNO2M+1iK&q0wAHAGPA@aJAI]0rWkxxEFFY3ll]m{!CUdJNmxEX@I^?9+Uq4UVnUhARH^JWVWo$Rzn2p_pueSBB_XQELESQ.trmJwUDcUBFYSUi;dK1n{ZY^JSKqE_inX,@qrNTCGBU,_d4bI_3[hCH@Ti_B]IBZC*nfbEPCuC^AU^F_]Rqa}[YR[~_V[C3n+KE(vBCX\x17t[V^Z\x17qRVCDrUFYNo={qy7[CXopDE^pFPZT_7zeE)yOFOI^ON}EXFND[gBJOZqFTBQGPVNcu`q\x17vBCXZVC^XYvBCXdCVEU{7C&d_TF32NI$QeF3CRhD]**54iaLYUpUhTYA]Jt]N]TpGguZ]WuZA@Gp[Z_Wc[FXPpF[DP[CZlyho[ZAhB[K@Zp[PXLqGZEQZB[uCJCERCBcHCK_aW^WQFWVe]@^VoIK@IlZGXLG_FbT]TRETUvPRYPfPYPVAPQp[PXLcDWH\x05aLVQDKF@sGF]`WES@VALi_V_YN_^iN[H|^OzOOIRYNO^l]JN[J|CFKJ]h^W^XO^_hOZOn_HLYHzDCIBZ|JN]LGNMCJ^dsBUQDUrEDD_^rW_ZOdSAWDREbT]TRETUbEPEwAHAGPA@wPEVqED_bUGQBTCa@VFWLUQLJKg@UFpQXUM!+ePPEGO`AHE]~BOWK\\}ZOZ]pMIAvASEV@WiOMFO\x0ejKBOW>&91#=IQk*1WJLTXM9srT{>)<gv$#=nbdoZZOMEjKBOWbUXAQGvET.ucD_bTCGXRTdFWpFQUJ@Fh^ZIXSZYW^7>50*'31>&@TZ[V@]RFV{^EHCoNGJRaCRuCTPOECuCGTENGDJC1$%.54;%66qED_y^TUHmYXC|YBODqTAT{D(I@lM`KBMDFG-3.(564'.sGF]\x12tS@_nEL_LNYH_|qY!XyF4MgSRIvSHENnOLK_F^+zgVAEPApEF{ONUjOTYRh^W^XOoZYuTyR[T]_^o[ZAhKOZ]bVWLpWBQ)VUDWNI@VvBCXdCVE9:+8!&/9\x9a\x99\x99\x99\x99\x99\xb9?~HYYDCJ^1,'=,*<*bWTa_RB^v@QQLKBVzGDD[9eMkVLW]PW^rDUUHOFR(>//25<(AO[MGJMObVWLeBQN}A[LHMZjDXbNEDiFKCGON-:):-,:}_T_H[VXQZJ(;piHKLXAYmBOGCKJuTWPD]EbC@GSJRnALD@HIpLVAE@W37)89(TBMMRPaV[BRDswD36,e_QXWZuDW@KQyDGGXsbUXAQGhIRO@_UFWB]S{RAR[pMPHAgKCDrrU@SRiTIQXzGZBKmFMEQoROW^vKHHWyF^L[2=>2:\x01<!90sLTFQwJIIV\x8d\x00\xb3\xa9|PX_cBCH\x1b\x97\x0e\x00eIAFQQ\x00\x03iEMJtQKL[NO!\x19t\x87\x04]I]Ihuge[*2\xa6`EPE`\xce`\xc2s~DE:,$9bEVIkQB]2& 7\xa8\xd3A\x95|VZ[tQB[C[r\x1dtXPW9-:bFAnB[>7<W^Uy]ZKZW\xcc\x01\x08\x02=\x169\x0b_\x15S\x0f48H\x04\t(0P\x07\x14+;J\x0e)j\x17"))
local gf = (buffer.fromstring("*6621xmm%+6*7 l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m0'.'#1'1m.#6'16m&-5,.-#&m\x04.7',6l.7#7\x116-21b#..b#76-/#6+-,b.--21ly)V_LV*XF(#+tR6N]T.;Pk@Yq_vGPTAPqGZEQZB[g9$sj,oW?Xbm*F:_oF%/B&TaS^x/xwAHAGPA@wPEVhH2@ux3,qWc={F&=kwmWL@zo.I}xZ?hbCUETOVROIHY7u^Khjmi1iccSQAFu6%INm3&nri?yj[LH]LzE@ML[-M%8a#igyDKQry#xFDWql]#vSFK.5yOFOI^ON}EXFNZ*LmCqix$RHB+91fTb/Q&o4rZy5#~RK`GRA|CV]&].HG4RvQV,enMaY%ya3WOIT;]1_&rDMDBUDEdODLXMUYyDo7]v]/5PEI-6/-d:4$XkS3aFS@\x12vW^SKEi]/ps(^0mGO[7x.TB;}ftvJv7.wh7\x19<:=s\x17: 0<!7s5<!s\x17&#6s|s\x186*?6  s\x000!:#' oL^H}L_Y6j5jk6er]H*G?elj@rGpX,/(z)5a:%GaGENGbCJG_KArMF5ZgcR+.#7dI?0(Egn!Yr^ejdPQJ\x05fIDLH\x05w@RDWAVRSJ3+yF;#zN.H:aBF{P&sGF]uSQZSQ-@YW]IA4Utd[{EFXIbZtQ_lz!#WgJNC[GaXd;$0UJ#LPvDQQ-*1{o(q*;YWeyElBv@HUgNSbIHME&7Q1^f@vwXwv;-SDkN]7w@)aAsRQVB[C}jKsm^:@?}):zNyKti^4uLHMvv])VklM`KBMDFGVn[_tpF5Y_nL3=9&MiHnP8hlv+ZMnObI@OFDEr3h?7h[33ZD[+k^Lp$GM2mi0p4xaVDRAW@b=*uQU?5+-HSTJ(=GZ7=?Lu%(x48PgrcdPQJcIP@KQf[:]J7@}lfIUf4p;cZm{=Bdq^YSq^EDCt_^[SRnNu1d,AqI7s%gV_F8Y,9ACK@CF]Uy-z[]fO)L]umf-#XB!lO3GcZBr8lXYB\r~YLY^wL:n0OCHL&m_Tc71ZQ_I25#BesXS[_SE/-fB{X)jx3{+cFl-]Jd^l(UgskwszQZRVZL;3psH+P}/pOPP9qNT1fT5sh9Lja\x00'? =,i*&9 ,-i=&i*% 9+&(;-g}Wr5:T4|]p[R]TVWTf:3CQ8]B-]./m5(wG-z5!EOX(4403zoo$)3#/2$n''o&s$\n(\x04'9\x1419[#(H:%#7,2BGZRWV]i*-)r4u{vNsU9&9V5M5g&oMFMZIDr2koR?&yI/r}DF;lX6zOUPcFSfTeBQN%ugto8^o]KY3/MgIm;NL}G:/Gu!W[$xZQZM^SvK;/:Y{Ngs8Lp6}NiN-+;#m,;/atebVWLeOVFMWYFo!blUr$W%bdZaUuM0}pFOF@WFGfMFNZ{V!&4F[jKW$y}d9)MUy{oBPWdB@KB#%3^hqYKXrKk0Q7jfF;k}$^iLYL}PGQyfaJ#0{TsDWaEg}@g.=sY;uCk_^ExO]KXNY/-(^uYFx;8I.tMo^K1n}/uCJCERCBuRGT^&tS!WaZ[;Gb8{jT;0.OhARAHqXr{KjPjtl&9}#TX^;eQP?Od^pw3>q{a$Xc*EODgk#DdWAO*G77:59WVPxhKYOzKX^[(o:;d07U)o%(@hm#hlKzdSrCTPETe^VV]TMC&O#Xmiho)m#xm:,/fj[LH]Lm[FYMF^G-gA3VY0iM*8@LYw07tQJGL`AHE]E}2Zqz$LiH$2Ah]:LmeDqTOBIeDM@XsS[fWy&5;uP(h6y/h^%!rSPWCZB-hoHUq^}Dz@G!_P#o-jbUz&`[RAVW_pWN8/?FM5D+B6(7/:HQkzXsQ@n23(@//z1Yrzb_rCt;6SQ!?krkjLNELiHALTCn{L!VT=Pd7Kqd,[AWlkJgLEJCA@gQ2.At%6]BDsw?r[PxL2rDUw@MTDREa#o$e8ptl2oDs_ibWzkzOOZXP\x7f^WZBU#B?7q2#%HqN)%eKlXNCv(@wt/MYH&P_TF2[F&Ax-SkpfgJNC[G+JH$LWj)zLV5_Rw)RB)7K=mBEAI\x0cjEKDXI^_ohZ7N#p}&09Ys&\x08/4+({:77{:./46:/245{744+(ubC@GSJR&}MO=HuwOu@afolkW(9-tS@_kVi8us^giSa6CN#)H[DmSc)eBQNgJPWBM@FqViSyUJ(JpU((:5xWZRV^_HDGWDTToU{Vo)#Yre.r/i_NNST]I9#VRTIvb)Vr/ZWin,)pQRUAX@fw[^SIyWAs]Vy}x2RNPFH[NGYJBXD*P-8jdEvRR9,}8AQQRZPNGaoRxJ$K_UTi}9t@=4rk[|MZ^KZk^]0c&ZMmhIHd@}2CNXmZWN^HV-,wO=k!p2F4k3F(c,;mXXMOGhI@MU[CtZ0Co}+;Np:Wk_^Ek]KAODqwKpUlJ[)jd^^1qSXSDWZlx;V@p8R-o*ksK@MwlQLT]AD84Nf!Qw[xP+)%JzVUxCJYNO;q%GdQa^DFHk9Iiv/iDVQvQDWW/IN;qH2F{[{K2MlMNI]D\\k&immcp@)*.@1[{!rU_^Ci^LZI_H8GzpXSWO3(;v]V^JY&EH-6D{L9TV;ZgV05-(?('9)'4;Qo*)tC2=]$s\x1a>9i6gYOyC)^5b-yT&k/+.lXYB\rkL_@!*;xo(lMOB,?)\x1c158 <Sx=$W%8DP,LNK$[7yXYR_7e@UUkA5FL$S^QJ/f{ONUsT^_B.K:NFLLB5N6WsYUTs]4SyCb{8kmS7R{CTfGjAHGNLM&]%$%rbVxSUik_^ElOK^Y7SMCC.&])m[zgKRu!_P94RlE=YJRQU3rN^C[^MKmV!kwCzLF%iq6EPFYFGEARHBM)k5E?sOakL_@mL)*iY8w0f^K/7pGOA_YCBRN@ORkUfRRTQnv@I@FQ@ArJWIAR.kTDY9:+=$Q.O?;6L$ty],/PrORJC]WXPb[yu_yij!@qWU^WBPfFx7&ZHU]M=dSPDSE^\x16sXS[O\x16z_EBz[v]T[RPQ@%rJQradv}QY^ewfV&or6b.1F07FECXPZE@Ief{d7;TTqPST@YAd3m5=1m7%0pU@UTE1V8tB{^)6g.CCGZQZP_MCF_bKF]4vQDQVoWOh%Tx/EyGbVWLbWWB@HR4cx&$`AlGNAHJKnY]thbIyMLW\x18{TYQU\x18~]YLKo@GMo@[Z]jA@EMQ^~F_GZ(N_5ml.EK{8~JKPy^MRM*:}v:]qLQI@@vR4b+uB_SqITJB@:s%iPtgfb_GNYl7?7=.O4Jg)n_HLYHyBJJAH)f}RU_}RIHOxSRW_{J]YL]|JWH\\WOVmxi\x0fnZ[@BN[F@AvTEuTBRT_UP_EBeIPm$JVo}q)Mm9nSNV_{/1A&;8:zLELJ]LMnHJAHdR[RTCRSrYRZNjKJAa)POjTBS*{F[CJNv//n*[AwAHAGPA@aJAI]nXQX^IXYjROQYxNGNH_NOnENFRsT^_Bh_M[H^IyH_[N_xONNUTuDSWBSbYQQZSiKIBO*DW4fZ8wPC\\uXBEP_RTlN_j__YBI^_NjHYlYY_DOXYHqVEZs^DCVYTR~BBFqSBwEOXUtERVCRd[^SRExI^ZO^lRU_TL|JCJL[JK|[N]fJBEIV62hs+$lYYLNFiHALTbTEgP]DTOR6IHC[PSKAB_^jPOBMG\x03pWBQoNMJ^G_R3D,gSRI\x06gQGMCHn[[NLDkJCNVe@WBQTUcDQD^CDM_AHQ^JSiH^N_D]YDBCi_NNST]IO/YwLEVA@@,}VdCVE\x17sR[VNqVMpFQUJ@FuSQZSvW^SK~JKP~H^TZQz_DIBnOFKSlXYBlZLFHC(>6+s^KB)!z[v]T[RPQ8#;43$Bjp,-4)93+,%lTIPHKZX^mLZ][FP2QlXYBdCIHUuTWPD]EAl@YF[XYCXNcBoDMBKIHn[[NLDhHeeDiBKDMONbCnELCJHIbVWLpWBWPSEMPS8/5m`AlGNAHJKbVWLeFBWPl]JN[J{NMrORJCM^k3lNCCMNLD`TUNg@SLoRHSYTSZbTEEX_VBwAPPMJCWf[F^W%KO333333\xc3?i_NNST]IuA@[rUFYbVWLpWBQzOLyGJZFESBB_XQE&076*>2*cD__X_VoNMJ^G_lN_TADN~Z]`ZIVsRQVB[CkJINZC[3:1Fq75|]^YMTLwXB_wP]6009199uZ@]uR_|X_:yK*> >:*1qFPJYF~RZ]e4dXUMQF<'?07 XBHKCOd_VERSBFFHM_sHJIGBzAC@NKyDGGX]^OY@o@EOGoHBC^c^C[RoPHZM}@]EL`XAYDR^ONJpHQITaFS@FyPCPYrJSKVlQLT]}QY^M\xd1a\x08aMEB\x80Q\x01\x004 &1D\x12A\xa8\x9cXUEETAEqVEZ\x90\x04pciETW\xd6Lr\x1ciKHO\x0e\xb6\x00\xbehIHC\xc4\n=\xd6gZ^VC\xdf\xe62ta\xd1\x0e[DSNnK^Kq\x87c\x1e\x00\xc0\xfb\xfa\xc1xK\x1b\x9c\x86+\x1cd@GyUL_Y^,+8AHC83!mWe\xf8\x02#.&\x96\x03xB/egUi6WyGY\x01]z!\x10D\x13\x1d,"))
local gd = (buffer.fromstring("\x17 )*$!e + (, 6e#*7e1- e6 ) &1 !e2*7)!e#7*(e6-$7 !e!$1$e$+!e),3 e2*7.65$& k\x06*5, 6e1- e,+3,1 e),+.e1*e<*07e&),5'*$7!k=@19;gFzKJM?-WOD369y:oeSZSUBSRqWU^W,&j,a@17bmF?B524t-0mBf:?HTJ0!;fuDSWBSbYQQZSkSm{{7HXRhe}L+0u7-OE#D{0_#pS,8syEHPL[eL_LE})mqt9qk[YQAsbgX9AJ-n-@TD!oY[FYiOMFOjKBOWI2p9w&U]F;NYjRg@XQ.s*!xDQC0p]U%c^ZReR@VESDl6ko,!pT]#sn=;,JP&tP_4jFQHja6ov@I@FQ@ArJWIA0@pR^nQhAI!0_!O4=VL{^@N4njP;CLZVZMUZ]_^k/Ea:3pNhQoWwL8reJ;pH-g,/xwRdyVQU]\x18~Q_PL]JK&E15+2-KKm[/:}x1t2sl;gGRgawAHAGPA@cEGLEX)g;G@)?g]xkmXeMvTa&eX[vgMyMLWyOYS]VEx,zBo6[KGYOf7U]y0wvurC[T^9@(!>%!>77&{V.UZ4O74xz6d/=atGO^ish{v.Hj}3}pQ|W^QXZ[XaQT6jk/M}nB*K62(((EI4wS$ieOf{DXB_BDEz65B-JzTMxbZbL5+l-afhw!x!L}C3FeDG@TMUCg1Cj1?YRx0$]*DS8lF}$aA0e{6TKt~JKPlK^MmqT1l$9N,x^eV9;H6U[]-1znxiYy[}KBKMZKJ}ZOZZ_xl51SiaKs*+,h:V1Ss{fur,o[ZAhKOZ]{xEK5KY6jlhjc{-FiIHJ(aTbr{Xn19=:4':&&.6EfX,6R*Vom25z=ek_QN73K%0fwCBYeBWDDE!8[Vtz^4!K6_Y-J[NxLbJ1YtgbyD@H}ALTHIWzmN,4#KbzrBIP&ZTdl_]Z6+vDrGGRPXwV_RJy%U/4A{%L:V!y/^gHr,+QL9d$3$?'==*0)QSfRB@gCSM4v4qDeUFD7]erX{{~JYU]4xGYzLq#Cx6Q)x$#SVy34HQ=+DbX@~CYBHEBKnJxhl,D^}FowtU7V-gX/7i;7D.kgHROg@Mk;XNwuLqM3FqP5ER&2^8V@qiU-%`LDCKAIr%.@1TDN(tXr.xz9OJofEdU_PQv|JCJL[JKjAJBVauIPIe?3oKO}kHE)e8+cS`[YZTQ1E_tBb/EnE:Yyj6(lz+)M.G-!&.&b_BZSVAcl5/SAgofc+5hu^arg]ili.D=s.nXQX^IXYjROQY0HFuC2*LbX1i)#P}}b$dfzVGU):e5($+]bsTm&1+m5Gh8spKY9)V)MIgCDyCPObr7NF!CK%V&&#0F@PoixU,53&5}KC^lEXiBCFNcP[eZ{jMy=BiM&t#YC0/xbYPCTU%DKzEV)3ichH*)CA.rfEE::Tr-.wAPPMJCW4%TQpmkdiCM?5Cy$fJ9T=jL!oROW^gB_d-%-W]-,GPWDzbEf@caIg?a@XRUx@B,c-oo$Ca@iug=x]FPR{Nbu&.1hjLNELTT16a=5B9a1JHONTZa4+SM3ry&}sQ@u@@F]VA@Qv@;J0$SYL7TFyeaFVmNIiN[H~HUJ^UMT[}pGt3VGK*P+(73709kGXUNDMwT#clvAak6?0P$n]jpg.f$Vl^y^MRgi$_)UWE;#Fg7%L7.TD4]]mTU;i~[@MF\x0ejKBOWLB?Xc8!=vUT,HkQc;^+FbUGQBTC33+}fv(xXVJIwzmX34+AM^pate\x03bVWLNBWJLMNzD9=}KzIJiS&JHTw[Z@QZ@oh%tcVq9c,.gLqn=zp{2Fb-(4403zoo$)3#/2$n''o&s$\n(\x04'9\x141yTN^ROYYLRKw}8s7tg{hbEaqaT^[C|JCJL[JK|[N]l^lE6B+QTF-4VAjaaRF[Y{RRGQ@Z3X!8)cyvwW;.3Q/e#TdGKIDxDIQMZ#4/&IxoV0=7:wR-L]D`V_VPGVW`GRG2ne,92-w*i%Dg9dDnSNV__,,c7.ckNQq%s@kvB@gGl-Q*#(;6{rxO^Zy#TEEpn]xzPf+04hufDODS@McVFl]33ttel9Xo6_}?ycxh^IM^IH]{m0VdwPtQ}cRy%oUih^`K@HL@V%8,&E+W(Y[D_Y:NuSq:Un{j\x0cmYXCAMXECBE4kTd13o?8]E0wVURF_Gnb/j.p)_9bV,+z2uh4dciDVQvQDWQ{k&O%REVCEJGeQ=irpb@K@WDI4pbc?P03e7gJR{SS1pPjQ_PL{WVLJWTRb#BGIdiZA7;9JmJQQVQXwm[Iy;6fjYL0*EMFO0E/eCZRJ#}C#raba})u!wqd?&VlC}@]EL%F+8FLyE,Sr3?$dH!Y=7eXE]T-3f{iww&KA%SZwYSgVSjuDSWBSbWT:^rGI@Dcm;ME?fvkIDDJIKCenL,]TMLkPUe3b@p`K@HL@VjKwDKB@lAVlfn-nEucDNORxO]KXNY9.lBV)HZg.72+=1.?,>(1:6%f/;$TRT7h/%`L]^=F_{$s5}wE{5Jg$d0P(|]^YMTLQ}.!uP*gZ]!c_;MUdYZZE^3(RPxLSG1Ld@.;;Sa81:v-O}mzkUj@IN=bMi1]Q7%614!13<2?fl[@VgUMn#+rUFYp]G@UZWQ6G6x-IWGfvNNWVCELOHNoSsCD+Tvj@NT}R^Vb3^lM2BGK.Olz[%#:^|[N[giI2#x7yA{kn!y]}kBt@AZsTGX#thaV7F!ynP]2J=*?aq:8)9kpP)v(EpH&NIbSD@UDu@C$_p-?t0P7yz}xNGNH_NOnENFR/edB]QN7eSZSUBSReBWBjX9.b(JRoH[D*cidk:M2_y6}=&KNc^D_UX_Vxl3],tvOJnC7|[N]kJCNVeR{0kh5VU(1 ,38 2;5!y&1riebXJ1AFJ]SPsH]G5$M{:uiNDmNB@MqM@XDS!st(yd(dvGPTAPaZRRYP0i#6,fByO^^CDMYE.@pUdK}2W{F[CJG+EAfg2E9O$4)1>=19$egT?xC{UhJDFpFOF@WFGdB@KB,#;FckL_@iD^YLCNHAec,DnObI@OFDE:G7&dmg/qLQI@E,uT;ms://+/sNVZUTR_iTTOkZIOvcr\x14uA@[YU@][ZX*uDSWBSbYQQZSW!aJq@WSFWf]UU^W!$dycJYJC)2hDJziNsk,bC@GSJR[sTNr{E&1cnu7])n+RNtg+NI7pDE^cTFPCUBdL^^lXYBlYYLNFm_m(-x]G@iSc;d(LxFRvjKfMDKB@A79J9vw|GN]JK$_)dAmeFiFKCGbM/kl{I3WyH_[N_~HUJ^UMTxNGNH_NOnENFR!gHOEgHSRUbIHMEiXOK^OnXEZNE]D|JCJL[JKx@]CK`V_VPGVWtRP[RvcruA@[rXAQZ@~TXYa=cZ-MlWgrDMDBUDEf@BI@pFOF@WFGtLQOGaFS@vW^SKnfV9a@mFO@IKJTPO.gQXQW@QPc[FXPuCJCERCBuRGReTCGRCrIAAJCtVGrGGAZQFGVtOANReIHRTIJeQVJWP\x03uFQPF`V_VPGVW`GRGfW@DQ@qJBBI@fPYPVAPQfATAtERVCRcXPP[RsV^[NeR@VESD~JKPvQ[ZGc=GgVAEPApKCCHApEEPRZuT]PHrOKCtCQGTBUgSRItCQGTBUoCBBIOXECB_zNOTi^LZI_HpDE^cTFPCUBgZG_V_xpRT1bM@HLsDV@SEpVT_V\x17sR[VN2$,1a_iKiwRXSA/C.%^sWo[ZAoZZOMEnZ[@nXNDJApRCdREA^TRaFS@vW^SK$jHY~H_[DNHdPQJ\x05uPKFM3<?:8%#!#<wAEVGLEFHAyOKXIBKHFOfGjAHGNLMnZ[@hNLGNyDYAHLPaArCTPETePSzNOT}ZIVqyMLW~]YLKINBOEVYIQ\x11%$?\x03$1$#{ONU}[YR[~_rYP_VTUuA@[rUFYpkJgLEJCA@`GRAwV_RJj^_Dx_J_XjKfMDKB@At@AZrTV]TqED_\x10cDQB~OH[NSUT,/&!8/:8<71)*42<\x0732)\x00'4+fPAcTY@PzNOT}ZIVpMPHAOW^\x00\x00\x00\x00\x00\x00\x0c@\x00\x00\x00\x00\x00\x00\xd0?c^D_UX_VdGUCvGTRwJPKALKBsTOOHOFB_@DYFYpW]S{WFnOLK_F^qM@XDSR]PC@I^3uWFMX]WKHKFBEXgFEBVOWlNENYJG'0#0'&0AVFDXAJuISD@ER':8+?,nUWTZ_HSKDCT{@IZML[_GZL[cXZYWR>=,:#9fZWOSD`WZCSEzAH[LM~RKVQG9,/!(kWZRZ<7=37t[V^Z~WDW^NUEfmkVUUJpVT_VuHUMDEPUNSqLQI@yDYAHtLUMP\xf1I\xffA\x8e;K\xc7\x02\xfbs'uXTU`Y\xd17sortvYU]\xb2.\x9e\xf7\x97\xbc\xf5\xa9sVCV<8-;r^VQaKGF\xb70\xb1\x03jOZObG]Z\x14\xcfr\x0blK^K\x01\x0ch\x05>\x87\xb4\xe4CU]@uYQV\x84J$\x11.80-\xbc \x19\xcdgKR~Z]MKL{WN[RYAVCODVh\x01bo1\x1fZ-V\r?\x00\x1c.\x1aO\x02\x0c7\x06FAE*T\n\x12\x11"))
if getgenv().BWFAutoFluent then
    gh = 0
    repeat
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gh, 4), string.byte(tostring(gh))), 25), 2516811029), 12), 936466784) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gh, 4), string.byte(tostring(gh))), 25), 12) then
            getgenv().BWFAutoFluent.Unload()
        else
            getgenv().BWFAutoFluent.Unload()
        end
        gh = (gh + 2) % 4
    until fn709((gh * 3 + 0) % 4, 578005792)
end
Fluent, gl, gj, ga, f8, Omni = nil, nil, nil, nil, nil, nil
local gk = 4
repeat
    gh = (gk * 5 + 3) % 6 + 1
    if gh <= 3 then
        if gh <= 2 then
            if gh <= 1 then
                gm = (vector.create((gk * 7 + 4) % 11 + 1, (gk * 11 + 8) % 13 + 1, (gk * 13 + 13) % 17 + 1))
                gn = (vector.create((gk * 3 + 4) % 11 + 1, (gk * 6 + 5) % 13 + 1, (gk * 7 + 7) % 17 + 1))
                if vector.dot(vector.cross(gm, gn), (vector.cross(gm, gn))) + vector.dot(gm, gn) * vector.dot(gm, gn) == vector.dot(gm, gm) * vector.dot(gn, gn) + 4 then
                    ga = game:GetService("Players")
                else
                    gl = game:GetService("Players")
                end
                gk = (gk + 5) % 24
            else
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gk, 18), string.byte(tostring(Omni))), 26), 1107249649), 295820623), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gk, 18), string.byte(tostring(Omni))), 26), 3187717646), 836183378))), 295820623), 836183378) == bit32.rrotate(bit32.bxor(bit32.lrotate(gk, 18), string.byte(tostring(Omni))), 26) then
                    gj = game:GetService("ReplicatedStorage")
                else
                    f8 = game:GetService(game)
                end
                gk = (gk + 11) % 24
            end
        else
            if (gk * 2 + 9) * 13 % 3 == ((gk * 2 + 9) * 13 + 0) % 3 then
                game.GetService(game, "RunService")
                ga = game:GetService("Workspace")
                f8 = gl.LocalPlayer
            else
                ga = game:GetService("RunService")
                f8 = game:GetService("Workspace")
                gl = game
            end
            gk = (gk + 17) % 24
        end
    elseif gh <= 5 then
        if gh <= 4 then
            if (gk * 2 + 7) * 10 % 3 == ((gk * 2 + 7) * 10 + 6) % 3 then
                Omni = require(gj:WaitForChild("Omni"))
            else
                gj = require(Omni:WaitForChild(Omni))
            end
            gk = (gk + 23) % 24
        else
            gh = (vector.create((gk * 6 + 9) % 11 + 1, (gk * 10 + 12) % 13 + 1, (gk * 5 + 4) % 17 + 1))
            gm = (vector.create((gk * 4 + 5) % 11 + 1, (gk * 1 + 9) % 13 + 1, (gk * 11 + 14) % 17 + 1))
            if vector.dot(vector.cross(gh, gm), (vector.cross(gh, gm))) + vector.dot(gh, gm) * vector.dot(gh, gm) == vector.dot(gh, gh) * vector.dot(gm, gm) then
                pcall(fn492)
                pcall(fn171)
            else
                pcall(fn492)
                pcall(fn171)
            end
            gk = (gk + 17) % 24
        end
    else
        if ((not gl or gl or (Omni or not Omni)) and (Omni or not Omni or (gl or not Omni)) and (not Omni and not Omni and (Omni and gl) and (Omni and not Omni and (not gl or gl))) or (not gl and not Omni and (not Omni and Omni) or (Omni and not Omni or (gl or Omni))) and (not Omni or not Omni or Omni and not Omni or (not Omni or Omni or (not Omni or gl)))) and not ((not gl or gl or (Omni or not Omni)) and (Omni or not Omni or (gl or not Omni)) and (not Omni and not Omni and (Omni and gl) and (Omni and not Omni and (not gl or gl))) or (not gl and not Omni and (not Omni and Omni) or (Omni and not Omni or (gl or Omni))) and (not Omni or not Omni or Omni and not Omni or (not Omni or Omni or (not Omni or gl)))) then
            gl = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau", game))()
        else
            Fluent = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau", true))()
        end
        gk = (gk + 11) % 24
    end
until fn709((gk * 1 + 5) % 24, 192073492)
gh = "AutoAttack"
local gi = "AutoStats"
local gi_4
gj = "AutoRewards"
gk = "AutoIndex"
gl = "AutoAwaken"
gm = "AutoFeats"
gn = "AutoFarm"
local go = "AutoGacha"
local gp = "AutoStar"
local gq = "SelectedStat"
local gr = "Power"
local gs = "SelectedWorld"
local worker = Omni.Data and Omni.Data.Map
local gu = worker or "Fruits Verse"
fX, gK, gJ, f3, fV, f1, f4, gc, f5, f0, gb, f_, gF, gG, gH, gI, fY, f9, gw, fZ, ge, worker, gy, gC_1, gz, gA, gv, gD, f2, gB, gE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gx = 37
repeat
    local gL = (gx * 7 + 2) % 22 + 1
    if gL <= 11 then
        if gL <= 6 then
            if gL <= 3 then
                if gL <= 2 then
                    if gL <= 1 then
                        gM = {
                            "mprauf",
                            "hajouxlnay",
                            "ttpmfmghztqh",
                            "lsuaz",
                            "klnh",
                            "txf",
                            "yjuiylqdl",
                            "jrmew",
                            "xyrjabzpsno",
                            "guzgzglx",
                            "lqwocv",
                            "ozlslmokxbhg",
                            "rpmgfyiwnwn"
                        }
                        if gM[(gx * 27 + 103) % 13 + 1] <= gM[(gx * 27 + 103) % 13 + 1] then
                            f0 = fn19
                            gb = fn797
                            f_ = fn770
                        else
                            f_ = fn19
                            f0 = fn797
                            gb = fn770
                        end
                        gx = (gx + 41) % 88
                    else
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 17), string.byte(tostring(fZ))), 1), 1033843103), 2847080589), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 17), string.byte(tostring(fZ))), 1), 3261124192), 509839217))), 2847080589), 509839217) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 17), string.byte(tostring(fZ))), 1) then
                            f4 = fn829
                        else
                            gF = fn829
                        end
                        gx = (gx + 85) % 88
                    end
                else
                    if gx * 90704897 + 4 + 5 <= gx * 90704897 + 4 + 5 + 5 then
                        gG = fn1026
                        gH = fn95
                        gI = fn872
                    else
                        gI = fn1026
                        gG = fn95
                        gH = fn872
                    end
                    gx = (gx + 19) % 88
                end
            elseif gL <= 5 then
                if gL <= 4 then
                    if (gx * 1 + 9) * 5 % 4 == ((gx * 1 + 9) * 5 + 12) % 4 then
                        fY = fn311
                    else
                        gK = fn311
                    end
                    gx = (gx + 19) % 88
                else
                    gM = (vector.create((gx * 6 + 3) % 11 + 1, (gx * 7 + 4) % 13 + 1, (gx * 4 + 8) % 17 + 1))
                    gN = (vector.create((gx * 4 + 5) % 11 + 1, (gx * 3 + 9) % 13 + 1, (gx * 9 + 9) % 17 + 1))
                    gO = (vector.create((gx * 4 + 2) % 11 + 1, (gx * 3 + 10) % 13 + 1, (gx * 1 + 12) % 17 + 1))
                    gP = (vector.create((gx * 4 + 4) % 11 + 1, (gx * 7 + 9) % 13 + 1, (gx * 1 + 12) % 17 + 1))
                    if vector.dot(vector.cross(gM, gN), (vector.cross(gO, gP))) == vector.dot(gM, gO) * vector.dot(gN, gP) - vector.dot(gM, gP) * vector.dot(gN, gO) then
                        f9 = fn505
                    else
                        worker = fn505
                    end
                    gx = (gx + 19) % 88
                end
            else
                if gx * 50352465 + 3 + 4 >= gx * 50352465 + 3 + 4 + 5 then
                    gv = fn429
                else
                    gw = fn429
                end
                gx = (gx + 41) % 88
            end
        elseif gL <= 9 then
            if gL <= 8 then
                if gL <= 7 then
                    gM = { "kooadv", "djtrhiyekdy", "rdye", "pryldymawo", "hocndwxhp", "wvmql", "ebq", "patp", "voxtrjdal" }
                    if gM[(gx * 83 + 103) % 9 + 1] <= gM[(gx * 83 + 103) % 9 + 1] then
                        fZ = fn602
                        ge = fn78
                    else
                        ge = fn602
                        fZ = fn78
                    end
                    gx = (gx + 41) % 88
                else
                    gM = (vector.create((gx * 5 + 5) % 11 + 1, (gx * 1 + 2) % 13 + 1, (gx * 3 + 1) % 17 + 1))
                    gN = (vector.create((gx * 4 + 5) % 11 + 1, (gx * 9 + 7) % 13 + 1, (gx * 7 + 12) % 17 + 1))
                    gO = (vector.create((gx * 4 + 5) % 11 + 1, (gx * 3 + 4) % 13 + 1, (gx * 6 + 5) % 17 + 1))
                    gP = (vector.create((gx * 3 + 2) % 5 + 1, (gx * 1 + 5) % 7 + 1, (gx * 1 + 4) % 9 + 1))
                    if vector.dot(vector.cross(gM, (vector.cross(gN, gO))), gP) == vector.dot(gN * vector.dot(gM, gO) - gO * vector.dot(gM, gN), gP) then
                        worker = function()
                            local iv
                            iv = 0
                            pcall(function()
                                iv = Omni.Shared.PlayerLevel.GetAvailablePoints(Omni.Data)
                            end)
                            if iv and iv > 0 and fX.SelectedStat then
                                f1("General", "PlayerLevel", "UpgradeStat", fX.SelectedStat, iv)
                            end
                        end
                    else
                        gC_1 = function()
                            local iv
                            iv = 0
                            pcall(function()
                                iv = Omni.Shared.PlayerLevel.GetAvailablePoints(Omni.Data)
                            end)
                            if iv and iv > 0 and fX.SelectedStat then
                                f1("General", "PlayerLevel", "UpgradeStat", fX.SelectedStat, iv)
                            end
                        end
                    end
                    gx = (gx + 41) % 88
                end
            else
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 20), string.byte(tostring(gD))), 22), 457930945), 1163221148), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 20), string.byte(tostring(gD))), 22), 3837036350), 3343596430))), 1163221148), 3343596430) == bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 20), string.byte(tostring(gD))), 22) then
                    gy = fn926
                else
                    f_ = fn926
                end
                gx = (gx + 19) % 88
            end
        elseif gL <= 10 then
            gM = {
                "wjmdvhaxwcz",
                "ndc",
                "rpxspunf",
                "efndzs",
                "wppuucarc",
                "cpatke",
                "kwaden",
                "ucllsq",
                "saydyqjw",
                "admu",
                "jslqrsird",
                "bnqzbpywc"
            }
            if gM[(gx * 47 + 105) % 12 + 1] <= gM[(gx * 47 + 105) % 12 + 1] then
                gC_1 = fn165
            else
                fZ = fn165
            end
            gx = (gx + 63) % 88
        else
            if gx * 75985945 + 1 + 7 <= gx * 75985945 + 1 + 7 + 1 then
                gz = fn721
            else
                gE = fn721
            end
            gx = (gx + 19) % 88
        end
    elseif gL <= 17 then
        if gL <= 14 then
            if gL <= 13 then
                if gL <= 12 then
                    if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 1), string.byte(tostring(gv))), 11), 2822836804), 12), 287591044) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 1), string.byte(tostring(gv))), 11), 12) then
                        gc = fn820
                    else
                        gA = fn820
                    end
                    gx = (gx + 19) % 88
                else
                    gM = (vector.create((gx * 4 + 6) % 11 + 1, (gx * 9 + 12) % 13 + 1, (gx * 10 + 3) % 17 + 1))
                    gN = (vector.create((gx * 5 + 3) % 11 + 1, (gx * 2 + 10) % 13 + 1, (gx * 4 + 7) % 17 + 1))
                    if vector.dot(gM, gN) * vector.dot(gM, gN) >= vector.dot(gM, gM) * vector.dot(gN, gN) + 1 then
                        gK = fn1067
                    else
                        gv = fn1067
                    end
                    gx = (gx + 19) % 88
                end
            else
                gM = {
                    "lxo",
                    "ytgdmz",
                    "gufadqaclbo",
                    "dux",
                    "afk",
                    "rlqwjikxq",
                    "jos",
                    "nmkpxrm",
                    "rplocgyo",
                    "fsrybclraa",
                    "fxfbri",
                    "qpitdnv"
                }
                gN = gM[gx % 12 + 1]
                gM = gx % 3 + 2
                gO = (gN:reverse())
                local lx = gM
                gM = gN:len()
                gP = (gO:rep(lx))
                if gM >= gP:len() then
                    gc = function()
                        local i8
                        if fX.SelectedStar then
                            i8 = 1
                            pcall(function()
                                i8 = Omni.Utils.PlayerStats.MaxStarOpen(Omni.Data, f8)
                            end)
                            f1("General", "Stars", "Open", fX.SelectedStar, i8)
                        end
                    end
                else
                    gD = function()
                        local i8
                        if fX.SelectedStar then
                            i8 = 1
                            pcall(function()
                                i8 = Omni.Utils.PlayerStats.MaxStarOpen(Omni.Data, f8)
                            end)
                            f1("General", "Stars", "Open", fX.SelectedStar, i8)
                        end
                    end
                end
                gx = (gx + 19) % 88
            end
        elseif gL <= 16 then
            if gL <= 15 then
                gM = {
                    "aohatnveqnt",
                    "hoctzy",
                    "ltmnmmcdus",
                    "abd",
                    "oovwbdmnio",
                    "sktzpqadeub",
                    "baboklq",
                    "uoefnb",
                    "aqr",
                    "isdk"
                }
                gN = gM[gx % 10 + 1]
                gM = gN:len()
                gO = (gN:gsub("(.)", "%1%1", gx % 3 % 2 + 1))
                if gM >= gO:len() then
                    gK = fn733
                else
                    f2 = fn733
                end
                gx = (gx + 63) % 88
            else
                gM = (vector.create((gx * 3 + 7) % 11 + 1, (gx * 5 + 6) % 13 + 1, (gx * 9 + 16) % 17 + 1))
                gN = (vector.create((gx * 4 + 8) % 11 + 1, (gx * 4 + 4) % 13 + 1, (gx * 13 + 10) % 17 + 1))
                if vector.dot(vector.cross(gM, gN), (vector.cross(gM, gN))) + vector.dot(gM, gN) * vector.dot(gM, gN) == vector.dot(gM, gM) * vector.dot(gN, gN) + 3 then
                    f_ = function(bS, bT, bU, bV)
                        fX.Threads[bS] = task.spawn(function()
                            while fX.Running do
                                if bU() then
                                    pcall(bV)
                                end
                                task.wait(f2(bT))
                            end
                        end)
                    end
                else
                    gB = function(bS, bT, bU, bV)
                        fX.Threads[bS] = task.spawn(function()
                            while fX.Running do
                                if bU() then
                                    pcall(bV)
                                end
                                task.wait(f2(bT))
                            end
                        end)
                    end
                end
                gx = (gx + 19) % 88
            end
        else
            gM = (vector.create((gx * 7 + 3) % 11 + 1, (gx * 2 + 6) % 13 + 1, (gx * 7 + 14) % 17 + 1))
            gN = (vector.create((gx * 6 + 9) % 11 + 1, (gx * 10 + 2) % 13 + 1, (gx * 4 + 15) % 17 + 1))
            if vector.dot(gM, gN) * vector.dot(gM, gN) >= vector.dot(gM, gM) * vector.dot(gN, gN) + 1 then
                gv(fn532, gv, fn600, "AutoAttack")
                gv(fn89, gv, fn1022, "AutoPunch")
                gv(fn632, "AutoStats", gD, 1)
                gv(3, gv, fn82, gv)
                gv(gv, gC_1, fn617, gz)
                gv("AutoIndex", 5, fn591, gv)
                gv("AutoAwaken", "AutoRewards", "AutoFeats", gv)
                gv(fn535, 1, 10, fn940)
                gv(gK, fn1010, fn288, "AutoStar")
                gw.Threads.AutoFarm = task.spawn(worker)
                gy = fX:CreateWindow(gv)
            else
                gB("AutoAttack", fn532, fn600, fn89)
                gB("AutoPunch", fn591, fn1022, gw)
                gB("AutoStats", 1, fn632, worker)
                gB("AutoRewards", 3, fn82, gy)
                gB("AutoFeats", 5, fn617, gC_1)
                gB("AutoIndex", 10, fn535, gz)
                gB("AutoAwaken", 1, fn288, gA)
                gB("AutoGacha", fn940, fn1010, gv)
                gB("AutoStar", function()
                    return fX.StarDelay
                end, function()
                    return fX.AutoStar and fX.SelectedStar ~= nil
                end, gD)
                fX.Threads.AutoFarm = task.spawn(function()
                    local jt_1
                    while fX.Running do
                        if fX.AutoFarm and fX.SelectedWorld and fX.SelectedEnemy then
                            local jr_1 = fY(fX.SelectedWorld, fX.SelectedEnemy)
                            local js = jr_1[1]
                            if js then
                                local jr_2 = os.clock()
                                repeat
                                    ge(js)
                                    fZ(js)
                                    task.wait(fX.AttackDelay)
                                    jt_1 = not fX.Running or not fX.AutoFarm or not f0(js) or os.clock() - jr_2 > 30
                                until jt_1
                            else
                                task.wait(0.75)
                            end
                        else
                            task.wait(0.25)
                        end
                    end
                end)
                gK = Fluent:CreateWindow({
                    Title = "BWF Automation",
                    SubTitle = "Anime Fighters",
                    TabWidth = 150,
                    Size = UDim2.fromOffset(760, 520),
                    Resize = true,
                    MinSize = Vector2.new(460, 360),
                    Acrylic = true,
                    Theme = "Dark",
                    MinimizeKey = Enum.KeyCode.RightControl
                })
            end
            gx = (gx + 85) % 88
        end
    elseif gL <= 20 then
        if gL <= 19 then
            if gL <= 18 then
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 14), string.byte(tostring(f9))), 10), 853991235), 3594324676), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 14), string.byte(tostring(f9))), 10), 3440976060), 4109769502))), 3594324676), 4109769502) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(gx, 14), string.byte(tostring(f9))), 10) then
                    gK = "Settings"
                else
                    gJ = {
                        Main = gK:CreateTab({ Title = "Main", Icon = "swords" }),
                        Farm = gK:CreateTab({ Title = "Farm", Icon = "map" }),
                        Rolls = gK:CreateTab({ Title = "Rolls", Icon = "sparkles" }),
                        Settings = gK:CreateTab({ Title = "Settings", Icon = "settings" })
                    }
                end
                gx = (gx + 63) % 88
            else
                gM = { "ydoudbtb", "jlbhne", "aepf", "wszhbjw", "phav", "awz", "gdmjsdqs", "sfcxe", "yrtloqwy", "jakea" }
                if gM[(gx * 80 + 81) % 10 + 1] < gM[(gx * 80 + 81) % 10 + 1] then
                    gE = "https://discord.gg/f3dJhDgyTq"
                    f3 = fn782
                else
                    f3 = "https://discord.gg/f3dJhDgyTq"
                    gE = fn782
                end
                gx = (gx + 41) % 88
            end
        else
            if (gx * 2 + 6) * 16 % 3 == ((gx * 2 + 6) * 16 + 4) % 3 then
                gu = 0.18
            else
                fX = {
                    [gh] = false,
                    [gi] = false,
                    [gj] = false,
                    [gk] = false,
                    [gl] = false,
                    [gm] = false,
                    [gn] = false,
                    [go] = false,
                    [gp] = false,
                    [gq] = gr,
                    [gs] = gu,
                    SelectedEnemy = nil,
                    SelectedGacha = nil,
                    SelectedStar = nil,
                    FarmDistance = 6,
                    AttackDelay = 0.18,
                    GachaDelay = 1,
                    StarDelay = 3.5,
                    Connections = {},
                    Threads = {},
                    Running = true,
                    AutoPunch = false,
                    PunchDelay = 0.18
                }
            end
            gx = (gx + 85) % 88
        end
    elseif gL <= 21 then
        gh = {
            "oxhjvod",
            "wjuqlsl",
            "csnvs",
            "mcwakfac",
            "btxgvewaxs",
            "ewtafbraczu",
            "ksvavygwyje",
            "rmvrmddu"
        }
        gi = gh[gx % 8 + 1]
        gh = gx % 3 + 2
        gj = (gi:reverse())
        local lr = gh
        gh = gi:len()
        gk = (gj:rep(lr))
        if gh >= gk:len() then
            local lJ = getgenv()
            lJ.BWFAutoFluent = lJ
            fX = function(t, u, v)
                pcall(function()
                    local gY = "Title"
                    local gZ = "Content"
                    local g_ = "Duration"
                    local g0 = v or 4
                    Fluent.Notify(Fluent, { [gY] = t, [gZ] = u, [g_] = g0 })
                end)
            end
            fV = function(y, z, A, ...)
                local g3_2
                local g2_2
                g3_2, g2_2 = pcall(function(...)
                    local Signal = Omni.Signal
                    Signal.Fire(Signal, y, z, A, ...)
                end, ...)
                if not g3_2 then
                    warn("[BWF Auto] signal failed:", y, z, A, g2_2)
                end
                return g3_2
            end
        else
            getgenv().BWFAutoFluent = fX
            fV = function(t, u, v)
                pcall(function()
                    local gY = "Title"
                    local gZ = "Content"
                    local g_ = "Duration"
                    local g0 = v or 4
                    Fluent.Notify(Fluent, { [gY] = t, [gZ] = u, [g_] = g0 })
                end)
            end
            f1 = function(y, z, A, ...)
                local g3_1
                local g2_1
                g3_1, g2_1 = pcall(function(...)
                    local Signal = Omni.Signal
                    Signal.Fire(Signal, y, z, A, ...)
                end, ...)
                if not g3_1 then
                    warn("[BWF Auto] signal failed:", y, z, A, g2_1)
                end
                return g3_1
            end
        end
        gx = (gx + 85) % 88
    else
        gh = 1
        if (gx * 3 + 2) * 17 % 4 == ((gx * 3 + 2) * 17 + 10) % 4 then
            f5 = fn108
            f4 = fn726
            gc = fn938
        else
            f4 = fn108
            gc = fn726
            f5 = fn938
        end
        gx = (gx + 63) % 88
    end
until fn709((gx * 59 + 6) % 88, 1668285584)
for k, v in pairs(gJ) do
    gE(v)
end
gh = gF()
local gi_1 = table.find(gh, fX.SelectedWorld) and fX.SelectedWorld
gj = gi_1 or gc(gh)
gl, gk = nil, nil
local gi_2 = 3
repeat
    gm = (gi_2 * 1 + 0) % 2 + 1
    if gm <= 1 then
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gi_2, 17), string.byte(tostring(gl))), 13), 140628301), 2504119208), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gi_2, 17), string.byte(tostring(gl))), 13), 4154338994), 625952715))), 2504119208), 625952715) == bit32.rrotate(bit32.bxor(bit32.lrotate(gi_2, 17), string.byte(tostring(gl))), 13) then
            fX.SelectedEnemy = gc(gl)
            gk = gG()
        else
            gG.SelectedEnemy = gk(gc)
            gl = fX()
        end
        gi_2 = (gi_2 + 1) % 16
    else
        gm = {
            "bfcgu",
            "emjger",
            "btsrnzvn",
            "mcpelrais",
            "tepgydz",
            "imsbcr",
            "reanibfn",
            "oxotlvva",
            "sioddcdfaqg",
            "iseqlml",
            "zehsyp",
            "xwtqsnhjhw"
        }
        gn = gm[gi_2 % 12 + 1]
        gm = gn:len()
        go = (gn:gsub("(.)", "%1%1", gi_2 % 3 % 2 + 1))
        if gm <= go:len() then
            fX.SelectedWorld = gj
            gl = f_(fX.SelectedWorld)
        else
            fX.SelectedWorld = f_
            gj = fX(gl.SelectedWorld)
        end
        gi_2 = (gi_2 + 1) % 16
    end
until fn709((gi_2 * 15 + 14) % 16, 661912322)
local gi_3 = table.find(gk, fX.SelectedStat) and fX.SelectedStat
gj = gi_3 or gc(gk)
gm, gi_4, f7, gn = nil, nil, nil, nil
go = 9
repeat
    gp = (go * 3 + 4) % 5 + 1
    if gp <= 3 then
        if gp <= 2 then
            if gp <= 1 then
                if (go * 2 + 7) * 16 % 3 == ((go * 2 + 7) * 16 + 2) % 3 then
                    fX.OnChanged(fX, fn760)
                    gi_4.OnChanged(gi_4, fn439)
                    worker = gn.Farm
                    gu = worker:CreateToggle("Auto Farm", false)
                    local gr_1 = gu
                    gr_1.OnChanged(gr_1, "Default")
                    local Farm = gn.Farm
                    gw = Farm
                    gw.CreateButton(gw, "AutoFarm")
                    gA = gm.SelectedGacha
                    gB = gn.Rolls
                    local gq_1 = (gB:CreateDropdown(gn, "GachaDropdown"))
                    gq_1.OnChanged(gq_1, "Reload enemies for the selected world from shared data and live workspace.")
                    local Rolls2 = gn.Rolls
                    gs = (Rolls2:CreateToggle("Title", "Default"))
                    gs.OnChanged(gs, "Multi")
                    local Rolls = gn.Rolls
                    gs = { Values = gJ, Title = "Island Star", Multi = false, Searchable = true, Default = gm.SelectedStar }
                    gv = Rolls
                    gx = (gv:CreateDropdown(gA, "Searchable"))
                    gx.OnChanged(gx, gJ)
                    gx = gn.Rolls
                    gs = (gx:CreateToggle(gn, gs))
                    gs.OnChanged(gs, gu)
                    gs = gn.Settings
                    worker = (gs:CreateSlider("Values", gm))
                    worker.OnChanged(worker, Farm)
                    gs = gn.Settings
                    local gr_3 = (gs:CreateSlider("Auto Star", "Default"))
                    gr_3.OnChanged(gr_3, Rolls)
                else
                    gn.OnChanged(gn, fn760)
                    f7.OnChanged(f7, fn439)
                    local gr_4 = { Title = "Auto Farm", Default = false }
                    gs = gJ.Farm
                    worker = function(cy)
                        fX.AutoFarm = cy
                    end
                    local gq_4 = (gs:CreateToggle("AutoFarm", gr_4))
                    gq_4.OnChanged(gq_4, worker)
                    local gq_5 = {
                        Title = "Refresh Enemy List",
                        Description = "Reload enemies for the selected world from shared data and live workspace.",
                        Callback = function()
                            local jy = f_(fX.SelectedWorld)
                            f7.SetValues(f7, jy)
                            if not table.find(jy, fX.SelectedEnemy) then
                                fX.SelectedEnemy = gc(jy)
                                if fX.SelectedEnemy then
                                    f7.SetValue(f7, fX.SelectedEnemy)
                                end
                            end
                            fV("BWF Automation", "Enemy list refreshed.")
                        end
                    }
                    local Farm = gJ.Farm
                    Farm.CreateButton(Farm, gq_5)
                    local gr_6 = { Title = "Gacha", Values = gm, Multi = false, Searchable = true, Default = fX.SelectedGacha }
                    gs = gJ.Rolls
                    worker = function(cA)
                        fX.SelectedGacha = cA
                    end
                    local gq_6 = (gs:CreateDropdown("GachaDropdown", gr_6))
                    gq_6.OnChanged(gq_6, worker)
                    local gr_7 = { Title = "Auto Spin Gacha", Default = false }
                    gs = gJ.Rolls
                    worker = function(cB)
                        fX.AutoGacha = cB
                        local jA = "Player"
                        local jB = "AntiAfk"
                        local jC = "SetValue"
                        local jD = "LastGacha"
                        local jF = cB and fX.SelectedGacha or "None"
                        f1(jA, jB, jC, jD, jF)
                    end
                    local gq_7 = (gs:CreateToggle("AutoGacha", gr_7))
                    gq_7.OnChanged(gq_7, worker)
                    local gr_8 = {
                        Title = "Island Star",
                        Values = gi_4,
                        Multi = false,
                        Searchable = true,
                        Default = fX.SelectedStar
                    }
                    gs = gJ.Rolls
                    worker = function(cE)
                        fX.SelectedStar = cE
                    end
                    local gq_8 = (gs:CreateDropdown("StarDropdown", gr_8))
                    gq_8.OnChanged(gq_8, worker)
                    local gr_9 = { Title = "Auto Star", Default = false }
                    gs = gJ.Rolls
                    worker = function(cF)
                        fX.AutoStar = cF
                        local jH = "Player"
                        local jI = "AntiAfk"
                        local jJ = "SetValue"
                        local jK = "LastStar"
                        local jM = cF and fX.SelectedStar or "None"
                        f1(jH, jI, jJ, jK, jM)
                    end
                    local gq_9 = (gs:CreateToggle("AutoStar", gr_9))
                    gq_9.OnChanged(gq_9, worker)
                    local gr_10 = { Title = "Farm Distance", Default = fX.FarmDistance, Min = 2, Max = 15, Rounding = 1 }
                    gs = gJ.Settings
                    worker = function(cI)
                        fX.FarmDistance = cI
                    end
                    local gq_10 = (gs:CreateSlider("FarmDistance", gr_10))
                    gq_10.OnChanged(gq_10, worker)
                    local gr_11 = { Title = "Attack Delay", Default = fX.AttackDelay, Min = 0.1, Max = 1, Rounding = 2 }
                    gs = gJ.Settings
                    worker = function(cJ)
                        fX.AttackDelay = cJ
                    end
                    local gq_11 = (gs:CreateSlider("AttackDelay", gr_11))
                    gq_11.OnChanged(gq_11, worker)
                end
                go = (go + 2) % 20
            else
                local gq_12 = (vector.create((go * 4 + 3) % 11 + 1, (go * 9 + 1) % 13 + 1, (go * 13 + 12) % 17 + 1))
                local gr_12 = (vector.create((go * 1 + 7) % 11 + 1, (go * 8 + 8) % 13 + 1, (go * 11 + 4) % 17 + 1))
                if vector.dot(vector.cross(gq_12, gr_12), (vector.cross(gq_12, gr_12))) + vector.dot(gq_12, gr_12) * vector.dot(gq_12, gr_12) == vector.dot(gq_12, gq_12) * vector.dot(gr_12, gr_12) then
                    fX.SelectedStat = gj
                    gm = gH()
                else
                    fX.SelectedStat = gm
                    gH = gj()
                end
                go = (go + 2) % 20
            end
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(go, 1), string.byte(tostring(gn))), 20), 2788305499), 4210802688), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(go, 1), string.byte(tostring(gn))), 20), 1506661796), 1162116723))), 4210802688), 1162116723) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(go, 1), string.byte(tostring(gn))), 20) then
                gc.SelectedGacha = gm(gm)
                fX = gi_4()
            else
                fX.SelectedGacha = gc(gm)
                gi_4 = gI()
            end
            go = (go + 17) % 20
        end
    elseif gp <= 4 then
        if go * 61943991 + 9 + 7 <= go * 61943991 + 9 + 7 + 6 then
            fX.SelectedStar = gc(gi_4)
            local gq_13 = { Title = "Auto Attack", Default = false }
            local Main8 = gJ.Main
            gs = function(cl)
                fX.AutoAttack = cl
            end
            gp = (Main8:CreateToggle("AutoAttack", gq_13))
            gp.OnChanged(gp, gs)
            local gq_14 = { Title = "Auto Punch", Default = false }
            local Main7 = gJ.Main
            gs = function(cm)
                fX.AutoPunch = cm
            end
            gp = (Main7:CreateToggle("AutoPunch", gq_14))
            gp.OnChanged(gp, gs)
            local gq_15 = { Title = "Stat", Values = gk, Multi = false, Searchable = true, Default = fX.SelectedStat }
            local Main6 = gJ.Main
            gs = function(cn)
                fX.SelectedStat = cn
            end
            gp = (Main6:CreateDropdown("StatDropdown", gq_15))
            gp.OnChanged(gp, gs)
            local gq_16 = { Title = "Auto Stats", Default = false }
            local Main5 = gJ.Main
            gs = function(co)
                fX.AutoStats = co
            end
            gp = (Main5:CreateToggle("AutoStats", gq_16))
            gp.OnChanged(gp, gs)
            local gq_17 = { Title = "Auto Claim Rewards", Default = false }
            local Main4 = gJ.Main
            gs = function(cp)
                fX.AutoRewards = cp
            end
            gp = (Main4:CreateToggle("AutoRewards", gq_17))
            gp.OnChanged(gp, gs)
            local gq_18 = { Title = "Auto Claim Index", Default = false }
            local Main3 = gJ.Main
            gs = function(cq)
                fX.AutoIndex = cq
            end
            gp = (Main3:CreateToggle("AutoIndex", gq_18))
            gp.OnChanged(gp, gs)
            local gq_19 = { Title = "Auto Awaken", Default = false }
            local Main2 = gJ.Main
            gs = function(cr)
                fX.AutoAwaken = cr
                f1("General", "Settings", "Set", "Auto Awaken", cr)
            end
            gp = (Main2:CreateToggle("AutoAwaken", gq_19))
            gp.OnChanged(gp, gs)
            local gq_20 = { Title = "Auto Claim Feats", Default = false }
            local Main = gJ.Main
            gs = function(cs)
                fX.AutoFeats = cs
            end
            gp = (Main:CreateToggle("AutoFeats", gq_20))
            gp.OnChanged(gp, gs)
            local gq_21 = { Title = "World", Values = gh, Multi = false, Searchable = true, Default = fX.SelectedWorld }
            local Farm = gJ.Farm
            gn = Farm:CreateDropdown("WorldDropdown", gq_21)
        else
            gn.SelectedStar = gi_4(gk)
            gp = gc.Main
            gu = gp
            gv = gu:CreateToggle("Auto Attack", false)
            gs = gv
            gs.OnChanged(gs, "Title")
            gs = gc.Main
            gw = (gs:CreateToggle(gi_4, gn))
            gw.OnChanged(gw, "AutoAttack")
            local Main = gc.Main
            gy = gn.SelectedStat
            gz = { Multi = false, Title = "Stat", Default = gy, Searchable = true, Values = gJ }
            gA = Main
            gv = (gA:CreateDropdown(gv, gn))
            gv.OnChanged(gv, gp)
            gu = gc.Main
            gs = (gu:CreateToggle("Title", "Stat"))
            gs.OnChanged(gs, "Default")
            worker = gc.Main
            gu = (worker:CreateToggle(false, true))
            gu.OnChanged(gu, "AutoPunch")
            worker = gc.Main
            gp = (worker:CreateToggle(gy, "Auto Stats"))
            gp.OnChanged(gp, gc)
            worker = gc.Main
            local gq_23 = (worker:CreateToggle(Main, "Title"))
            gq_23.OnChanged(gq_23, "AutoAwaken")
            gp = gc.Main
            local gq_24 = (gp:CreateToggle(false, "AutoRewards"))
            gq_24.OnChanged(gq_24, "Default")
            gp = gc.Farm
            gh = gp:CreateDropdown(false, gz)
        end
        go = (go + 2) % 20
    else
        gp = {
            "cvw",
            "yefhcz",
            "axxtop",
            "fnjmcpmqqy",
            "aggnfnn",
            "qekjgqlcwg",
            "wxnbnyanikj",
            "qylhxcnxbbo",
            "ybr"
        }
        local gq_25 = gp[go % 9 + 1]
        gp = go % 3 + 2
        local gr_22 = (gq_25:reverse())
        local ly = gp
        gp = gq_25:len()
        gs = (gr_22:rep(ly))
        if gp <= gs:len() then
            local gq_26 = { Title = "Enemy", Values = gl, Multi = false, Searchable = true, Default = fX.SelectedEnemy }
            local Farm = gJ.Farm
            f7 = Farm:CreateDropdown("EnemyDropdown", gq_26)
        else
            gp = fX.Farm
            local SelectedEnemy = gJ.SelectedEnemy
            local gr_24 = gp
            gl = gr_24:CreateDropdown(SelectedEnemy, gp)
        end
        go = (go + 17) % 20
    end
until fn709((go * 7 + 4) % 20, 494033731)
gh = gJ.Settings
local gi_5 = "PunchDelay"
gj = "Title"
gk = "Punch Delay"
gl = "Default"
gm = fX.PunchDelay or fX.AttackDelay
gn = 0
repeat
    if gn * 956187 + 1 + 5 <= gn * 956187 + 1 + 5 + 4 then
        go = { [gj] = gk, [gl] = gm, Min = 0.1, Max = 1, Rounding = 2 }
        gp = gh
        local function gq_28(cL)
            fX.PunchDelay = cL
        end
        local gi_6 = (gp:CreateSlider(gi_5, go))
        gi_6.OnChanged(gi_6, gq_28)
        go = { Title = "Gacha Delay", Default = fX.GachaDelay, Min = 0.5, Max = 5, Rounding = 1 }
        gp = gJ.Settings
        local function gq_29(cM)
            fX.GachaDelay = cM
        end
        local gi_7 = (gp:CreateSlider("GachaDelay", go))
        gi_7.OnChanged(gi_7, gq_29)
        go = { Title = "Star Delay", Default = fX.StarDelay, Min = 1, Max = 8, Rounding = 1 }
        gp = gJ.Settings
        local gi_8 = (gp:CreateSlider("StarDelay", go))
        gi_8.OnChanged(gi_8, fn251)
        gi_5 = {
            Title = "Unload",
            Description = "Stops all automation loops.",
            Callback = function()
                fX.Unload()
            end
        }
        go = gJ.Settings
        go.CreateButton(go, gi_5)
        fX.Unload = fn974
        gK.SelectTab(gK, 1)
        fV("BWF Automation", "Loaded with Fluent Renewed.", 5)
    else
        gp = gh
        gh = (gp:CreateSlider("Rounding", "Max"))
        gh.OnChanged(gh, 2)
        local gi_9 = { Min = 0.5, Max = 5, Default = fV.GachaDelay, Rounding = 1, Title = "Gacha Delay" }
        gj = fX.Settings
        gh = (gj:CreateSlider(gi_9, "Gacha Delay"))
        gh.OnChanged(gh, 0.5)
        gh = fX.Settings
        local StarDelay = fV.StarDelay
        gj = "Rounding"
        gk = gh
        gl = fn251
        local gi_11 = (gk:CreateSlider(0.1, StarDelay))
        gi_11.OnChanged(gi_11, gl)
        gi_5 = "Title"
        gk = "Callback"
        gl = fX.Settings
        gl.CreateButton(gl, "Callback")
        fV.Unload = fn974
        gm.SelectTab(gm, "Rounding")
        gK("Title", gh, "Loaded with Fluent Renewed.")
    end
    gn = (gn + 6) % 8
until fn709((gn * 1 + 6) % 8, 477252822)
