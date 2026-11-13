local tC_1, tC_2, tC_3, tC_4, tC_9, tC_11, tC_12, tC_13, onAutoGoNewZone, tC_22, tC_24, tC_28
local tC_21_1
local j4
local kt
local kA
local lo
local km
local k5
local j3
local kM
local ks
local lb
local kz
local lh
local kf
local kF
local lg
local kX
local onAutoClaimQuests_Hourly_Daily
local lm
local k2
local k9
local j7
local kx
local kd
local kW
local k1
local kJ
local kw
local le
local kV
local ki
local ko
local kO
local kv
local ld
local kU
local kB
local k_
local fn1153
local function fn6()
    local Character = k5.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChildOfClass("Humanoid")
end
local function fn30(bk, bl)
    local m4_1
    if not bk then
        return true
    end
    local m3 = k_ and k_.isUnlocked
    local m3_1
    if m3 then
        m3_1, m4_1 = pcall(k_.isUnlocked, bk, bl)
        if m3_1 then
            return m4_1
        end
        return true
    end
    return true
end
local function fn61(e4)
    onAutoClaimQuests_Hourly_Daily.OnlyFarmZoneId = e4
end
local function worker2()
    while true do
        if onAutoClaimQuests_Hourly_Daily.AutoRoll then
            lg()
            if onAutoClaimQuests_Hourly_Daily.AutoEquipBest then
                kB()
            end
            task.wait(onAutoClaimQuests_Hourly_Daily.RollDelay)
        else
            task.wait(0.2)
        end
    end
end
local function fn102()
    if kt and kt.Parent then
        return kt
    end
    local ClientFxCaches = workspace:FindFirstChild("ClientFxCaches")
    local nN = ClientFxCaches and ClientFxCaches:FindFirstChild("ObjectCache")
    kt = nN
    return kt
end
local function fn191()
    local Character = k5.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChild("HumanoidRootPart")
end
local function fn239()
    local mO_1
    local mN_1
    if not kx then
        return nil
    end
    mN_1, mO_1 = pcall(function()
        return kx:fetch("requestRoll")
    end)
    if mN_1 then
        return mO_1
    end
    return nil
end
local function fn246()
    local mo = k2
    local mp = { "base" }
    if mo then
        mo = fn1153(type(k2.AXE_MUTATIONS), 5, 248602996)
    end
    if mo then
        for k, v in k2.AXE_MUTATIONS do
            local mo_1 = fn1153(type(v), 5, 248602996) and fn1153(type(v.id), 6, 2175009567)
            if mo_1 then
                table.insert(mp, v.id)
            end
        end
    end
    return mp
end
local function fn248(eS)
    kU("gold", eS)
end
local function fn253(aB)
    local mC_1
    local mB_1
    if not lh then
        return 0
    end
    mB_1, mC_1 = pcall(lh.getNumber, aB)
    local mD = mB_1 and fn1153(type(mC_1), 6, 472614556)
    if mD then
        return mC_1
    end
    return 0
end
local function fn273(aG)
    local mG_1
    local mF_1
    if not lh then
        return {}
    end
    mF_1, mG_1 = pcall(lh.getTable, aG)
    local mH = mF_1 and fn1153(type(mG_1), 5, 248602996)
    if mH then
        return mG_1
    end
    return {}
end
local function fn282()
    local ne_1
    local nd = kW and kW.getLocalPlayerZoneId
    local nd_1
    if nd then
        nd_1, ne_1 = pcall(kW.getLocalPlayerZoneId)
        if nd_1 then
            return ne_1
        end
        return nil
    end
    return nil
end
local function fn340()
    kJ(onAutoClaimQuests_Hourly_Daily.SelectedZone)
    task.wait(0.4)
    km(onAutoClaimQuests_Hourly_Daily.SelectedZone)
end
local function fn399(eo, ep, eq)
    local p6 = "Title"
    local p7 = "Content"
    local p8 = "Duration"
    local p9 = eq or 4
    kV.Notify(kV, { [p6] = eo, [p7] = ep, [p8] = p9 })
end
local function fn508()
    local ov_1
    local ou_1
    if not j3 then
        return nil
    end
    ou_1, ov_1 = pcall(function()
        return j3.claimOffline()
    end)
    if ou_1 then
        return ov_1
    end
    return nil
end
local function fn543(cf)
    if not onAutoClaimQuests_Hourly_Daily.TreeFarm or not kX then
        return
    end
    local nF_1 = kd()
    if not nF_1 then
        return
    end
    local nG = Vector3.new(kX.X, kX.Y + 1, kX.Z + 2)
    if fn1153(onAutoClaimQuests_Hourly_Daily.MoveMode, 3, 195654294) then
        nF_1.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        local Position = nF_1.Position
        local nI = nG - Position
        local Magnitude = nI.Magnitude
        if Magnitude > 0.5 then
            local nK = math.min(Magnitude, 90 * cf)
            nF_1.CFrame = CFrame.new(Position + nI.Unit * nK, Vector3.new(kX.X, Position.Y, kX.Z))
        end
    elseif fn1153(onAutoClaimQuests_Hourly_Daily.MoveMode, 2, 5940033) then
        if (nF_1.Position - nG).Magnitude > 3 then
            nF_1.CFrame = CFrame.new(nG, kX)
        end
    elseif fn1153(onAutoClaimQuests_Hourly_Daily.MoveMode, 4, 3640327826) then
        local nG_1 = lo()
        if nG_1 then
            nG_1.MoveTo(nG_1, Vector3.new(kX.X, nF_1.Position.Y, kX.Z))
        end
    end
end
local function fn562()
    j4(true)
end
local function fn629(aw)
    local my_1
    local mx_1
    if not lh then
        return false
    end
    mx_1, my_1 = pcall(lh.getBool, aw)
    return mx_1 and my_1 == true
end
local function fn635(eU)
    kU("rainbow", eU)
end
local function fn652(e9)
    onAutoClaimQuests_Hourly_Daily.AutoQuests = e9
end
local function fn654()
    local fj = kz()
    local jB = "Redeemed %d codes."
    kA("Axe RNG", jB:format(fj))
end
local function fn672(be)
    local m0_1
    local m_ = kO and kO.findClickHitbox
    local m__1
    if m_ then
        m__1, m0_1 = pcall(kO.findClickHitbox, be)
        if m__1 and m0_1 then
            return m0_1
        end
        return nil
    end
    return nil
end
local function fn707(fu)
    local qD_1, qD_2
    local qC_1
    for i, v in ipairs(fu) do
        qC_1, qD_1 = pcall(game.HttpGet, game, v)
        local qE = qC_1 and fn1153(type(qD_1), 6, 2175009567) and #qD_1 > 200
        local qE_1
        if qE then
            local qC_2 = loadstring(qD_1)
            if qC_2 then
                qD_2, qE_1 = pcall(qC_2)
                local qC_3 = qD_2 and fn1153(type(qE_1), 5, 248602996)
                if qC_3 then
                    return qE_1
                end
            end
        end
    end
    return nil
end
local function fn721(bq)
    local m7_1
    local m6 = k_ and k_.highestUnlockedZoneId
    local m6_1
    if m6 then
        m6_1, m7_1 = pcall(k_.highestUnlockedZoneId, bq)
        if m6_1 and m7_1 then
            return m7_1
        end
        return ld and ld.STARTER_ZONE_ID or nil
    end
    return ld and ld.STARTER_ZONE_ID or nil
end
local function fn762(af)
    local ml_1
    local mk = kO and kO.getChopNetIdFromInstance
    local mk_1
    if mk then
        mk_1, ml_1 = pcall(kO.getChopNetIdFromInstance, af)
        if mk_1 and ml_1 then
            return ml_1
        end
        local attr = af:GetAttribute("ChopNetId")
        local ml_2 = fn1153(type(attr), 6, 472614556) and attr
        return ml_2 or nil
    end
    local attr = af:GetAttribute("ChopNetId")
    local ml_3 = fn1153(type(attr), 6, 472614556) and attr
    return ml_3 or nil
end
local function fn787(a7)
    local mX_1
    local mW = kO and kO.resolveChoppableRoot
    local mW_1
    if mW then
        mW_1, mX_1 = pcall(kO.resolveChoppableRoot, a7)
        if mW_1 and mX_1 then
            return mX_1
        elseif a7:IsA("Model") then
            return a7
        else
            local mW_2 = a7:FindFirstAncestorWhichIsA("Model") or a7
            return mW_2
        end
    elseif a7:IsA("Model") then
        return a7
    else
        local mW_3 = a7:FindFirstAncestorWhichIsA("Model") or a7
        return mW_3
    end
end
local function fn810(t)
    local ma_1
    local l9_1
    if not t then
        return nil
    end
    l9_1, ma_1 = pcall(require, t)
    if l9_1 then
        return ma_1
    end
    return nil
end
local function fn826(y, ...)
    local mc = y
    for k, v in { ... } do
        if not mc then
            return nil
        end
        local tE = mc
        mc = tE:FindFirstChild(v)
    end
    return mc
end
local function fn859(bA, bB)
    if not kF(bA, bB) then
        return false
    end
    local nb = k1(bB)
    if nb then
        return bA == nb
    end
    return true
end
local function fn900(ew)
    ew.AddButton(ew, {
        Title = "Join Discord for Dupes/Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = function()
            if setclipboard then
                setclipboard(kw)
            end
            kA("Ouroboros Hub", "Discord invite copied.", 4)
        end
    })
end
local function worker()
    while true do
        if onAutoClaimQuests_Hourly_Daily.AutoRebirth then
            kM()
        end
        if onAutoClaimQuests_Hourly_Daily.AutoSocial then
            kv()
        end
        if onAutoClaimQuests_Hourly_Daily.AutoBeeHatch then
            kf()
        end
        if onAutoClaimQuests_Hourly_Daily.AutoUpgrades then
            le()
        end
        if onAutoClaimQuests_Hourly_Daily.AutoQuests then
            lb()
        end
        if onAutoClaimQuests_Hourly_Daily.AutoMarket then
            j7()
        end
        task.wait(5)
    end
end
local function fn952(h7, h8)
    if type(h7) ~= "number" then
        return false
    end
    if h7 % 1 ~= 0 then
        return false
    end
    local h9_1 = bit32.bxor(h7, 1540483477)
    local h9_2 = bit32.band(h9_1 * 403 + bit32.lshift(h9_1, 24), 4294967295)
    local h9_3 = bit32.bxor(h9_2, bit32.rshift(h9_2, 13))
    return h9_3 == h8
end
local function fn963()
    local n__1
    local nZ_1
    if not ko then
        return false
    end
    nZ_1, n__1 = pcall(function()
        return ko.performRebirth()
    end)
    return nZ_1 and n__1 == true
end
local function fn1042()
    local pF_1
    local pC = not ld or not fn1153(type(ld.ZONE_ORDER), 5, 248602996)
    if pC then
        return nil
    end
    local pC_1 = k9("zones")
    for k, v in ld.ZONE_ORDER do
        local pD = kF(v, pC_1)
        local pD_2
        if not pD then
            local pD_1 = k_
            local pE = true
            if pD_1 then
                pD_1 = k_.prerequisiteMet
            end
            if pD_1 then
                pD_2, pF_1 = pcall(k_.prerequisiteMet, v, pC_1)
                if pD_2 then
                    pE = pF_1
                end
            end
            if pE then
                return v, pC_1
            end
        end
    end
    return nil
end
local function fn1113(by)
    if onAutoClaimQuests_Hourly_Daily.FarmBestZone then
        return ki(by)
    elseif onAutoClaimQuests_Hourly_Daily.OnlyFarmZone then
        return onAutoClaimQuests_Hourly_Daily.OnlyFarmZoneId
    else
        return nil
    end
end
local function fn1117()
    local mS_1
    local mR_1
    if not ks then
        return false
    end
    mR_1, mS_1 = pcall(function()
        return ks.equipBestAxes()
    end)
    return mR_1 and mS_1 == true
end
local function fn1126()
    local n3_1
    local n2_1
    if not lm then
        return false
    end
    n2_1, n3_1 = pcall(function()
        return lm.claimSocialReward()
    end)
    return n2_1 and n3_1 == true
end
fn1153 = function(hZ, h_, h0)
    if type(hZ) ~= "string" then
        return false
    end
    if #hZ ~= h_ then
        return false
    end
    local h1 = 5381
    local h2 = buffer.fromstring(hZ)
    local h3 = 0
    while h3 <= h_ - 4 do
        local h4 = buffer.readu32(h2, h3)
        local h1_1 = bit32.bxor(h1, h4)
        h1 = bit32.band(h1_1 * 33, 4294967295)
        h3 = h3 + 4
    end
    while h3 < h_ do
        local h5 = buffer.readu8(h2, h3)
        local h1_2 = bit32.bxor(h1, h5)
        h1 = bit32.band(h1_2 * 33, 4294967295)
        h3 = h3 + 1
    end
    return h1 == h0
end
j3 = nil
j4 = nil
j7 = nil
local j9
local kc
kd = nil
local ke
kf = nil
ki = nil
km = nil
ko = nil
local kp
local kr
ks = nil
kt = nil
kv = nil
kw = nil
kx = nil
kz = nil
kA = nil
kB = nil
local kC
local kD
onAutoClaimQuests_Hourly_Daily = nil
kF = nil
local kH
local kI
kJ = nil
kM = nil
kO = nil
local j5, j6, j8, ka, kb, kg, kh, kj, kk, kl, kn, kq, ky, kG, kK, kL, kN, kP, kQ
kU = nil
kV = nil
kW = nil
kX = nil
k_ = nil
k1 = nil
k2 = nil
k5 = nil
local k6
k9 = nil
local la
lb = nil
local lc
ld = nil
le = nil
lg = nil
lh = nil
lm = nil
lo = nil
local kS
local kZ
local k7
local lj
local lk
local lO, lP
local ln = (buffer.fromstring("0,,(+bww*9/v?1,0-:-+=*;76,=6,v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w59+,=*w\x19<<76+w\x116,=*>9;=\x15969?=*v4-9d.y.v-?E^tC2[$q0m=nX3-\x86\xe9\xfa\xc4+V7\x0e\x13V$81bT/Y()4O8Jd)EoY^EiCIR@t7:KNTJydPQJg@@mDQFMsB%#cnzrr]Cz#HMuGyJT6yFj0)r&:4yMLW\x18zMA\x18pWMJTA\x18uYJS]L\x18qL]UK2LwDz_Z%+Fsb}\x18) )<#>8l*-% )(ld #/')(sebqYU+*Q!aMo33&;kNN~EMMFOYWM#YH$Xg%uv-)Y8C*7Cq11@$so5c;0-5>&<4-#=5;@rJC/=.x4R5*6p,(hABR{+ODdP|HIR~RQQX^IRVUV9epe-[,Uu,{Pd;bFq+k;uiklXYB|XH^Y^09:r))5s/)Y,1dX[_X/v_P4x#[xeDG@TMUKVdn%sQ%nmZua(26f?OZC@g9vA8Tt4-#$30tEzzgcW-v+oE!*eh!a}mm_TEa4iyGh]aV@VG|]`CRD]}}(@NM{a,:[qxU*rZj&LINN@pUUsDEE^_y,l[a.:,h?=g:pbpPUZ9p6$+XE]UV^To9^pQpjbdAKX9DmcOxIN^)VGKse-S11???+y=FLfV6ZhC,)^LKZub])W_G/ZZ16{F[CJTt!b&1lOf7!kI?z.jg3-U%TfnCSwoyO^^CDMYSEPR4mfOd:Fk+IG^/I?LEhz-pvKHHl607Ih@z:ND/-rG?vh)B2JR-q_ptWfrfr%m3i$wrC+LZ3BupSj0uP-[VdM6(O++>,!?+,*,6{6hb.Wc}_&xyj1YI6UQE0lIIoXYYBCgKlP@9im[hQHB%u@D3CfEO$4$B-C*R&L#}&XQ;7%1J6Zky8T.O^wNqED_aEUCDCJa$gbyAi=/B7@^t*j!NOzNOT\x1byNB\x1bsTNIWB\x1bvZIP^O\x1brO^VH*V@UYP[FTml4S%&%9WnUSwqHYBKUJ=n*gFEBVOW2]RMD?/%?LkPH=2&[n;3$}sXIJROVC1gsk0ucd;n!aw@k@w2u+:{]JJiN]BU),8U?Qh9rTJqs[!WC8S^gSRI\x06tCDOTRN218.*8s]jIBAFxL$ATWYPJ:O+SQzg8iGt4=GP6&:[$yLPQ{ZLKMPFZ[cxdxM,$:c046xXVXbVWL\x03fRVJS\x03aFPW\x03b[FPLJ*{a;VxEX@IrI38_0,q!:btB#8RaL)G(uHUMDIAO]^.?W2^+(kvf[[;g/qvXQPMZkWZRZlZKKVQXLp:]WuM-qS^^PSQY%+V:{rjFv],3W.KRPpRCdREA^TR8U?Kd;n-/[0pg$!C_P_YL&I/EDMIh}i7:jX6Yfb?8+iWk6WK[s?6s(ipmz}3#w[vPGqLQI@_@zJ2_p?{D!y^IOrORJCa[r7Ci^IN-lP/.byPyDYAHc?!RO$x2k%horL5}H`OUH\x0c`gjIx[cu75wLJLv[]}B^DYDBCAtR}I.*yhnx8h_{^^xONNUTtwU4/CtLF9Sw*!7(+*# %=?KEa-@*jY=pLMNIHU]BOT8Dz3XI:}5{k_^EyEICKFN4(e]HCK^jXRATQNYQNNFC=IiBPp(}J_CFLN[JK|[@]NHJjFp_EXpwz;Nqh@{N/Ri[aJOXXQFSK^LFG%1&Va?mPHDKJLA_h{Uo-c=G$,:.072'9-//wXIR.`OBJN\x03lEEOJMF\x03mLT\x18?,3~\x0c;8,;-6~v-wxONOOG\nkFF\niENOYiXQXMROI\x1diR\x1dgRSXnOLK_F^&Aka!_yWg^C\x06thaQ9TlKo2hq_CyU^_1Ro/l{-zzNOT|Tu^LaTU^L{TSY{TONI~UTQYoPLVKVPQy@CPU4j^_DnZ^B[iNX_k_^Eo[_CZhOY^lQLT].VTNgP,6ZQEQSAVGYAV%b~EKDXoCBX^C@wAHAGPA@~KJAsTNIWBvZIP^OCT@DTBEyPERYo^JLZ{V^RPQ[k_^EgKXAO^u&?%'/?[O,]j#inSNV_UL5hjA~ZVPRuBCCXYOWX[T^ZD_QN=4?9ye4hAPuDFCEG[MB]RK@CRD]+r24,{vTEbTCGXRT0%$/5%8./8rYVU[R\x17v[[k@OLBK\x0eoBB{ONUiUYS[VhXI^^U|NR<1;=um40e(4&4$)#&#dAAvILA@WiLL|GOODM+$$'$.1/+{VRAGQVRG|YYiRZZQX`BOOAB@H.-&,>='3bSTGROIHnLAAOLNFr]GZ\x1erux\x9a\x99\x99\x99\x99\x99\xa9?AGUKDARA^[VW@A&!90+$/k@QRJWNu^OLTIP'8=01&'pYYSVQZ--0< 3>ERAREDR(?*?;.RUOHVC-.?$,5j[H_TNCU]@-5923%6=/6^kLYL]pMPHAEFWAX)<?18OJKV\xb1\x81s(\xa7\xa7\xd71%$,)iN]BRF@Wo[ZAqGJM\xaf!\xb8\xe8`JFG-;3.J@OX_V]%}{|CHZ0<-g]oUST@_Tok\x19]Gnt\x96\x1cV\tiL:"))
local ll = (buffer.fromstring(".2265|ii4'1h!/2.3$35#4%)(2#(2h%)+i\x07%23'*\x0b'52#4\t)!1'?i\x00*3#(2k\x14#(#1#\"i+'52#4i\x07\"\")(5i\x0f(2#4 '%#\x0b'('!#4h*3'lnTpG.%upATufAKJWmJGNYF@]N,jnrJvN^iklkm#;#i*Jf]-e/JkG{^X25 35$3>;./$>(%oi*c69vB[)#}efn$YeeQHwe+9h}\x1d1.7;-~*6;~70(7*;~2705~*1~'1+,~=27.<1?,:p{^^nU]]V_F0HaOwmUa@!1e7$NV^5{-cJQAuy5m$;eQPKvAFMVPL&f,&AR1R$nv&t}Hsi_C^.]:*mnlmzNOTvZIP^Okb^b5jvepw;PCZ)wIMgnNv?sY6WBCBLCNX_~EGDH@NOqDENbO%S{iu17i8D,yrRT,tvWTSG^FSb$ssvVGgQzV8BF,f1UNG#(l=Vj+$?yH[LG]E_G[_]@t28/n$8vh9-p9V2zUa7eF-zpO[FDfOOZL][Lh)-=]={d/PZu/(O)WgcPKpxglQLT]GCC.4)W=gSeOvSpep:E(o0USrJpT=dDF^[F@Jf)A%TcgQC)*puW$q,m;1X0QAB+v/^sFGLZrnzVL-3[t,[it].CQEZU^UPIL3^b+IcHGDJCBoT5ZcpIbjqzYy2XTE_-+f@rU4/)}@]ELv9Z6h41;mNmbXJA6U!Fos$y^/[%SBS^PHAPNTOLakJD,hTqR5$odYzB/,AFa{Eu`LMMF@W)LVZF?Gd,}jvQILMv;;^Cnd:tQnOMX\x01g@SL\x01{NODYtF?IF_^mEgW-U1[f)3#*742]E^5FAi.uD8)9hHVD*4?I6{mc=*#(.#;Z_v{[Rq4L9^Wmk3&8ylUo@IEtCgET_JOE2Fytx@q9=DfjGA76rA:{ln%kBAXVBEVN_L_yL^4OvHkZ]lzfJl}Ia@bGGwLDDOFo7%V:/7BaUYF0BU#K6nCz;<):<-:72'&-7!,/2u4LEm#44ViQLG477>:.):()GWE4u@Z57GT$C,hzz2F/!.<9C8K3(lq=2#Rv@fVP6RgY!O+xsXIJROV^]m)sWfO,?lO2n7xPVX9WzNCJ^@_Q4SIW_OJFX%7kMikM;r4N;',>h:Dn_&nZ!UD]AJGnj[#8[3d[hmA@HGIWp,un1RYhi?Q5R2$_70I}3%-0.g-YwwzwGx[{bO4!v+%;;wS8=:+ );-}$qCWf[ESUql9V61O#jHEEKHJBI2?2O@=I&2&DU42TlYv@HUgNSbIHMEC0@veI_zgt2/alnBCCHNYt$gUaR8#lb65;8_SFjiyLMFP1,6KkATijB)w!;M@I3pujEBHjE^_XmBOI_XC^{DEODe_m$#84<c7a7?xPzxTItr:a;rdCtQQaZRRYPI6YVl=!j1HX4M)99$%-3-ZLS?RXjYWyB,Yc2RtUWB\x1b}ZIV\x1bRU\x1boSRH\x1baTU^\x0e+,=6?-;~8?72;:p&*yRDEbCATkL_@wBCH/^wISSD$]BqED_}QB[UD56gInBO$Mka~RQQX^ITRSnXOKT^X#l@Xi^BGObE_NYMJHNxNH_BDEzNOT|Tu^LaTU^2iMV0&[fD^XNi^__DE\x1ahGBH@@(dUAGQ\x14fU]ZV[C\x14gD]ZG{ONU\x1a}U\x1anU\x1at_M\x1a`UT_gZG_VNP48JYEInqemgK_YN/W8Ygg?%IUW,(uqLOONY3g=){&b-:4XmYXCoC@@IOXT7n0Z,-.,+=;qaX7:*:B(pwvGSUC\x06aIJB\x06uVOHUbTExV_^CTx_UTITBJ_^Uv_By^CDQ^SUQSDSDPTHRHUDlDUeXE]Tsf?sC3I0ByVQ[yVMLK|WVS[&;>Hq)j8khr/XrhOZO^,G#eQE2^fwCBYtSS~WBU^$EnZ[@h@aJXu@AJ}[LLoH[DNP7DWyFZ@]@FGsk$S=pWD[tSEBlYXS4)0+8//=506)?,=:4),5(?*;&6%&3A+IXVi$tVGrGGAZQFGVlVQLALQLPkVA{ONUx__r[NYRLEVKVNQYYMPsNMM{F!q&kJ`TUNsDCHSUIrSEUD_FB_YXbMAIJmU/90U,;(;,-;$F5*!&.*12+1=~KJA,2JEAIb@Qv@WSLF@lXYB_IL1rjk_^EgKXAO^SIoTVUYQ_^tIJJbCJG_eIBCUbGRGv@QcJIA@WvSScVUfrUeNIV[bhGJbGGwLDDOFpUUe^VV]ThJS@hJA@zL]]@GNZbWTa_RB^wUXXVUW_333333\xe3?oM@@NMOGuYXXSUBkD^CklabC@GSJRHO_]__IxBIGBELzQ@C[F_'238.EB4'/($)1$7?849!RG^OAEoCBJEKbUXAQGNXGYf+-24*)@UVXQOL]JA47&0)rU@UDr_W^_rORJCmJYF \xabs\"\xac\xf0\x7f{YZRFa\xd0\x8e\xbdQ\xdf\xce\x04WWBWyMLW\xccp\x05\x07:%0;yRUJV@HU(>6+KJTminC[OBK@GNEXSA $\x18\x1b!2_#5=s%\x05\xc8"))
local li = (buffer.fromstring("6**.-dqq,?)p97*6+<+-;,=10*;0*p=13q\x1f=*+?2\x13?-*;,\x1119)?'q\x182+;0*s\x0c;0;);:q3?-*;,q\x1f::10-q\r?(;\x13?0?9;,p2+?Un1_vN2qC_9cfB{lVQLALQLPkVA\x0cb[Fqmdgj;R4CpqC,jH:XtSXVhDx^v=r2NELTMDY@HUJX]XII$BJTWxka99SXN/9-]Vm:lm^bMn4HJ[lG@_aJ[fKi]@BfA\\[NALJswhc#QGZGRgPn)CJ7jE@LG]oQjHJALZ[IT;_*,Sw4a5SC9KgKfUUA,O]CsX]]S^PCU#YL?%{kypYJaAy_kCyHG@u4%a/*619lKXGhOY^pEDOh.k&XtZCc6N.-7!:qKxqoMcc@V{ZXMrUFYn[ZQ}PvNfX+WRbdL=?:YCjA9iHYBn!nKK{NM%9,h$.XqAa,!)gMgg9NY0;E9?vpxh5SD^xCABNFHIRjc}}1gG7}2Y)h=(d690X(/CL}apQRUAX@#1^T=00Y:JTd]A?stu}x3jEaqwA@To^JLZ{V^RPQ[MA{pJ7!_^lgz=Eg+FB@Y5B9uk]T][LlYZq$onUD!Y[vgW7T{B-,bcjz,HvJ!#,$*>.$,#$lBFN,,ES;3x-=IXr#v)IB[=fPAcTY@P+,)+_^O;9U5J1,zqi7YnkxeFSYlQLT](*_W.uqv7_tU{n,cts=:g,!uURTs9wCBY\x16fCDU^WES\x16wPPYDRWTZS\x16cFQDWRSE/vGSUCtGOHDIQkX([l(s_j1rB3)&i=a%,KgSRIhC^R|IHC:5V#s1,T*:[Q0XOE0WQ45dAAvILA@WNfP%a}6hPx(x-KbSFbtisO2lNCCMNLDX@.;er-W[[PVr@.Zj9^i)9*llKKanq%BR[ROS:Cy3E-mxr[35Eh,B^@GMZId9j_#L^W)CB7x-grIAO.1lta1VtXYQ^Pv.FlgxpO[9IA[hoAkX2*AE&rQSWMHZHS!Lut@7(j8IFk5$5aW5NBNDvQJwAVRMGA21^Zl6dT?8:W4CUr2rNxI][MoGDLOrAEczo$S)D2m(JW^0?Sk_^EvH92=&2:#a)ri%1oyI{Z%Glq[rXTUa%dS&@7;3VKsCA2.](m;dTg=cwcw8@=+%XqS8,bfs:lIbP!A]GQty[VVX[YQI[d6Dx#5_yezRz0o1MjmYXC~INE^XDv5fiSZdn6UZcmzUcbVWLqFAJQWK.-0.M:;dT1uffTQlMOZeBQNyLMF(gI#:ASKv!65&NxLMVup4;eY44cl8PH,z6Wm5qOq4! +1!<*+<dY9bE}*Qe%8*pew}\x1d2?73;:~{:~70:;&~,;)?,:-pJCHLxbHf2:K.bR8-3M}j/T_hqTSBI@RDE\x01@Al)U3au*).^nejKHO[BZ$lXCB#mwRK%}l/+7s9:+=$;th@N3vdvR4M%JM{@DK_B@bKK^HY.y)doUWnu?[nXN_j^_DnZ^B[iNX_jSNXdEpQRUAX@y8?fxeb-JY}iu4fjFGGLJ]=:Ln93]8ks9&fWfECcuzN!P.jA,6Co^1YU=:*(8154695YzUD*-$W?k}KZZG@I]h8m$J8$}.?njk^_TB11PI:{1r.B=p;$vnZ[@aJW[u@AJ7(D6d6)uWZZTWU]LQbdXebyb*oiTIQXbo8i[Qk)Iib{j\x0b<=<<4<=y|=y:6=<*wjM^ACfITEPwN/(DfQgVERYCp7/gGY6l${.^]DCiDL@BCI}LX^HIgP]DTB73U)B/NhS*w@L\x15oZ[P+}jNLa)5{AF[V[F[G`[SSXQgZG_VcG[Xsi&_j]?;C5+SC3n4i.4!iFAKiF]\\[lGFCKYHAH]B_YyBwBCHfGEPoH[DsFGL`MmYXCbITXvCBI9XtQQqGZEQZB[%tzGZBKqE**aV2[qLOO52nvx3+c2hGBH@i^__DE\x198-. )J;X3NOMq@TRDs@HOCNVg@SLcDRU{NODeSZSUBbWTao=`ACViN]Bu@AJeBX_AT`L_FHYtS@_`WT@WAZ~SI[XV_\x1a{VV;=(<9(<18neYGKZU_YOQL[nKK{@HHCJ}P~YJUzBJ!dZV^UT]WC@X_-'$2 /. 92/366;6520;lXYB`L_FHYeQPKuQAWPWnL]zL[_@JLfJLEB_^ONQBN^YWC]EgKMDC^_NOoJJzAIIBKrYPCPRETCKGIQIPTPHbNEDRe@U@hLKLHL_@oZ[PqTAT!)9,/!;;y[VVX[YQsGF]`]^^iKFFHKIAqM@XDSRb[F\x03qmdoC^IkYEo@ZGohesRQVB[CxSBAYD]oNMJ^G_a@CDPIQinsertuPP`UVVQWLKBDDVDW_(!<#/:tQQaTWeXE]TLO^HQf[F^WxEX@Ic^C[R9&.23\xa7O\xde\x03uRA^8?&+]KC^;-%83x-\xa1YOGZWCER_ZEZH\xd6.\x02&08%$2:'\xc6\x89\xe4\x9fqwp&/$I@Kvpw[RYSYFb0\x08qCM768;&\x06\x88B"))
local lf = (buffer.fromstring("<  $'n{{&5#z3= <!6!'1&7;: 1: z7;9{\x157 !58\x195' 1&\x1b;3#5-{\x128!1: y\x061:1#10{95' 1&{\x1500;:'{\x075\"1\x195:531&z8!5!z2%F(9dou^sGF]\x12bG@QZSAW\x12sTT]@VSP^W\x12gBU@SVWA{5W{fGn&&u_Jup2~O[]K\x0e|OG@LAY\x0e}^G@]MaB$aq=f2h}J%#TgX*oh9ePG\x14.)494)4({\x13.9{74:?>?u*ykdCl4Ko?Oxdia1ts_rRPAyZVTYeYTLPGoZ[P|Q#soxSF%}3,70j/(RKC_P\x070<ene\x11 ) 5*71OzaU;rd4Ma}ZLI!Ws/kHsEmO&`]EIFGALzGG\\xIZ\\#ww/0$jc6n3C$Fs;&MF6OOwCBYxSNBlYXSEkze#-1S1D,o#7j*^IiMP87o2pgPLIAfJKCLBv@FQLJK%kl(XcxrVEekQd1(d%yeSBB_XQEQ4}-S%+(d}?QnswV?1}_{HxPybGiQbC@GSJR,;^Ljkj/AL),E3]=BNsfHeiYXBgw^pDE^dAVCPUTB6km#_#oU@WmKCt}G%k+gfiU.vBCXfBRDCDKFtB,Tj1f[1o2w/b?)3xC-4$%vBCXtX[[RTCxD#=&#nn=_WN2d,sK,^PER=PbVWLaFFkBW@K,iA6uS/H)a1fLaD!%]pewx4:?wq&k_xi7vVj;_.$tdNjSmuA]i@w.FV.-&41vBJ;EtMS/XaMX._^%2AwrM;PQSsK2{kVKSZ?(Qa0YhP0vJ;;tX!cW^sJxe%}Z35vWTSG^FpXAJn54g$a]M_@A0QB1ZQLT)quLQ\x14fzsf%.p/%g{8-*U{xx1zKs*vk;l-cNJY_INJ_H6w$cQd8.mfNH%W}]Q(#ZNW{F[CJ{PSFAMJM&Qp3D5Iku@f:LH_2.@MDOoR%2zgV3HH(ANP*T/ex1k{fL$v&oROW^[8t,poI6EFu7.k01)eOS}=41aj[OI_}UV^Zy7*_Qw00_Z*p[F{HG{6,kD^Cklao:e)WpvHsQC!d?t#Bh$dP+dXUMQFpU@UPEv;M0AA}.D5%*.M[M%2..*)`uu>3)95(>t==u<i>\x102\x1e=#\x0e+bFJLNPg{T5X8v3ZJyo*U}Qqp{?Q{NBIH]GV{EnMvV%9%#_#u^MySOzhw@VG`CZ]gJCVcRF@VW+LCEcaNzya*: 9++=,1<bwwailhhh`nmk`holqS^^PSQYJiqtIr[CE)$1+p]u/V3gAVVuRA^]ywD)Mmr^KNB07R&!eBVKIwGEHAB.Avi8pHe92pWDh1E`WP[@FZ]4oNQGZ$3KCEjEVHZViKFFHKIAXQ8*Ee5VscN89Skc*|RNtXSR,3ww]eI&/eIl7SHE{RWTMJvEMJFKStEQWA@)CE524.81<;)=8*@fshYInHkzw2uBOFlN_xNY]BHNvcK9PO1ucK.uwoROW^jJ78q5-j,b]]Hy++D{ONUt_BN`UT_Z1$/4J.RWReQPK\x04gKHHAGP\x04hKC\x04`VKTWkQVKFKVKW\x04lQFC0@4y)*GrUFYvb4oZLgGhg@0t4ER!;?gF*r(6:-L)$5&xr.IFy[VVX[YQA4&Q$uypXUZsiKRAiK@AiTEipwB%]ZeIaJ[X@]D5*!@N3g,UKUomXYR\x17dR[RTCXEjxS4xheQPK\x04wKGMEH\x04vASEV@\t+2!d\t+ !2$hJuV1M-{QD[l]1Ut-o_6%v@J|p{zlmrJt}GrAulbatfHpL_rXKUc=,f6hPEV_b97YO8+nVZo1RrORJC;-$:@!C!hOfDIIGDFN$Qzh4Gy5 #-$C5gb+N@mtRTQVGLEWA~KJAtu1\x10-..b\x06'.#;bj1kzGZBKQwlbE1=$G`OHB`OTUReNOJBL@KJ+5nhR*T01m2'$*#eCoHCC4Ik_^EmEdO]pEDOBBTUUBFc6yfTDgQXQW@QPn[ZQePQZLQ8!_6i.vQB]rUCDj_^UfWCESr_W[YXRgSRIsVATGBCU{ONUt_BN`UT_\x7fI@IOXIHvCBITCWSCURtIJJ0.62.9vTJc*vSSsEXGSX@YYPREGQJIYCP~KJAwAHAGPopFWoJAQBQZa^BXEX^_)U_ZAXIHHWC^3&',6&;-,;bVWLnBQHFWz^Y/hAzDLetVG`VAEZPV|ZMMnIZE(qTTd_WW\\U~[[kPXXSZr^XQVKJ[Zr_[HNX_[NsBVPFdLOG\x9a\x99\x99\x99\x99\x99\xd9?lNCCMNLD~HYYDCJ^xN__BELXEF^L[G#iLGVSTVT]eQPKvKHH\x00\x00\x00\x00\x00\x00\xe0?q^DYqv{g^C\x06tha01*4=-3oCBBIOX`ABEQHPiUUQfDUmA@@KMZl@AIFHtQB[UB0+ 5(88#'-.!>9?$#*{^^n[X6# .'D[XCDvZQPFGRQ_VgZG_Vta\xd1\x0eyDGGYD@E\xd6Lr\x1cA\xa3Z\x00wcwcqLOO/5,*%17 kVUU\x13\xc8z.P\xdeG\x17Q\x90\x12\xdf\xc3\xb0\x1e\x05aQ\xdb\n;29`fabFAfECAJX\x02JXUDeN,@W?3<\x8f"))
local k8 = (buffer.fromstring(";''# i||!2$}4:';&1& 6!0<='6='}0<>|\x120'&2?\x1e2 '6!\x1c<4$2*|\x15?&6='~\x016=6$67|>2 '6!|\x1277<= |\x1a='6!5206\x1e2=246!}?&2&\x14;6>:23w811;>92w26%9>90$yhH+{w[l/%@l(;!J1PL?a0^4X{ONUx__r[NYR^^ZD/Un]fSd/#oE-oUrdUNZS.;yPrXOxLMVjVZPXUSl&#RLCKph6{73N4p0&z%n3.e?_L^wgo[_CZ\nhOY^\nkROY\ndE]k-iolX]2EKwIwT18lPx_E[YVhMJ[PYK]L{Df8mdmiF(53bY@v*d5{cD&8DrL`CMHmYXC@CMHoCBJEKs$BzG%+,aF*i-sA%@ekN}bC@GSJR+;{QH^;k^rkT/4OL_wvh7pP*%aj,g(6nXIITSZN6}6-Za+#&?_nZ42$p1YGLI1/QoIwrtVG`VAEZPV+dyk,an]&=4[xYEV66xnPXbbsq=eGJJDGEMsRThB-mZ=1pA#?/XmYMyA#qG[/?GdF_LdFMLYd+Cpl_/4^Ujw{Gi)43g2&qc_VnJuYZZSUB_YXeSD@_USux&p@/b(=N,=7YZug.iKFFHKIAxd=xVR-GIa_+hg.*WMJhv,#K,wdkJINZC[!}*Q)9^.jHEViM5CrEE40hs(QKez^Y^Z^MRq/6s,Hw+cA!!?t:bu0dHRBBFbG\x17*))e\x01 )$<em6lJcmt6EUZ^c&-ByTW0Gpx]JDXFF_XABK4#P]kQ]x!Ws(YY9uZ9#LA!pUUuC^AU^F_Y$.)mecBD.V@/?MQ.[&SvWiLL|IJ7g2&Cu?oG3Q{Unnl;_=9!Dp66;|^UT]&A2(W(OmewFsW1N^drOoqUb65XHuPP`[SSXQ}x)AA+a^%GqhZB-yhZ*XE-3844,(&3%*2U#:gnA!v]NmZ(Jto;^3qED_\x10`EBSXQCU\x10~UHD\x10|_S[UT\x10j_^UpUUe^VV]TnnX[;Z}WIa:7xW3{@Z1D:GRQ_VQY]Yz$I(zeWIH5!}*zfZKs@,V$-&kJ(YkZ&dcF4V-!+p%ia2/FBSj@hIJMY@XN}{D_V?O[$d^wTeBm6.fAidAAqJBBI@$Qk2U0*m=s)9v3r40.d/mGKJ^{a9t8LlYT$1Olh%xJZgE}@+?/5,>>(9$)wbbt|y}}}u{x~u}zybM@HL\x01`MM\x01`YD\x01hOEDY\x01sDV@SERxWZRV\x1bzWW\x1bzC^\x1brU_^C\x1bi^LZI_H'= >Ao[^+GpXy2U5)kQ&jXgc_,uA@[aDSFUPQG2_NqAEjEwh-yy4~C@@hI@MUYnY%;hlLoNg1=sQMpUUsDEE^_v4dt;Fs+.+hYl;MR9,/!(LR1gru$#xr#uB^xc1c%J7-$-&'(2m,1UoArk:gszPz/VoAHITCrNCKCuCRROHAUz8iAVpQSFy^MRePQZv1bpjQ+&tTCqHU\x10b~wlKmU!Xmdi2om_Sg4#6UZGw/5?cgPBd!(4h=zg=4?KIFP@pn@gY.cR#6#%+nuZ]WuZA@Gp[Z_W|Up_R@@cHYZB_FL,N]:av-}uiwG/PRC{XTV[g[VNREmXYR~SPGGIBVJV19OEInk)!-_CgQXQW@QPn[ZQ5E^8)/?N{WV^Q_}8GVx-0c={1ND\x08<8$==()m/(>9m,5(>chJ[_^YNhDE_YDGGNYo(!*g:LK.NP#2jNCl/[yN[GBHJ_NOx_DYJLNuWMK]zMLLWV\t{TQ[SgPQPPX\x15tYY\x15vZQPFT^@VUGCQ[N}-UGQo%03=4jZ&Wn_fG7yYf[F^W:&V-XY1p[sgSRIeIJJCER9{[ja\xca\xa5\xb6\x88g\x1a{B_\x1aht}3]UV^]QC=o+9::5xBuTBRT_UP_E~WtUWB\x1b}ZIV\x1baTU^>/7-=fQ.6Qp(?is_^VYWA}h}Y_j(+:,5tJS@&wD)dXUMQFgWF]D@Gt@AZxTG^PAYra^BXEX^_S(Aq?7 6-744=4:!R@WZW)w2ha_o+9',-<'9>:<<1$/2$1=/ 5.4!7%0)=.73/1fL@A13%2pY{mYXCm*X([dMuXP_YNy[YR_87:26.)JlVo;',!'%/*1$ cIEDK^3M{P{aCRuCTPOECzNOTjN^HOHo[ZA}AMGOB78;7?8t4z}jMVk]JNQ[]bVWLpL@JBOzGDDlMDIQdUAGQs[XPe]_ZZbDSSzWS@FPWSFQSBxC[TSDuPP`[SSXQjHEEKHJBfYE_B_YXkIDDJIKCuWZZTWU])?..34=)dF_LdFMLpFWWJMDPHMHTLWVRfJKK@FQiPM\x08zfooKGAC*;pQRUAX@kJINZC[cTSXCEYv]LOWJS:7=;skKAXHCYz^NX_X62-%,#uDW@KQ&1??:nSNV_ePQZLkVKSZ&!% (HKZLU2=08<lKXG`D^NEty\x84xEFF2$,1bEVI\x19 \xd3\xe6gMA@\x8cI\xea\xe4|IHChLVFlXYB\x1d:)6\x1f\x03\xa4\x81J]ZCBG!-<:!5kOH4\x1dg\x1epPY\xdcr\x11KH\x13\x04"))
local k3 = (buffer.fromstring("2..*)`uu(;-t=3.2/8/)?(954.?4.t957u\x1b9./;6\x17;).?(\x155=-;#u\x1c6/?4.w\x08?4?-?>u7;).?(u\x1b>>54)u\x134.?(<;9?\x17;4;=?(t6/;/y^TUHbUGQBTC~UDG_B[ouc).f9x5r)BSf,d}q9J3JV1dqruZzF_YToX_^UIS_]Rk%S%xNSVBn_BRzdH83r++$K(RW45wz@GZWZGZF}@W\x1atMPg{rD}[Ts2Vm89FzzuPMDEqf!zkx_UTIsTYPGX^CH[-N.KDkV}oOJMI#?7FYujmaMP\x0732)f\x05*'/+f\x173#525fn\x0e)34*?i\x02'/*?i\x11##-*?o`BOOAB@HKeVu5Ejij1GspRvWaHAc]Pt2:8%k)gvBCX\x17dXT^V[\x17eR@VESRYOl1K-tVR7vwqL,LBo^qW@@cDWH6fzloVvo25HJqdR6l?bNh3RhjDG!^3 ;2 1'$&0AB$_z+mt+*ap3glD4!;-beAns_apR__QRPXrYQ7npCpZbRZx{j?,q:o:h1J]w?B,9:4=^ArGl&5o?Vb0UJc.E_,cho-M*&s8Q(E@BUBUAEYCYDU}UDwW3M1LFOAT?xDo^e6}xi0'><8/!& =;-G4ii)49RhR00[w5RjqrKQRAxSBAYD]eeUpu[A+gMA0$Sizj)v*D?^M7@H}W[Zm/]meJ7/Hv#-KWU%P{^W&-9{*Q;#tmfBXHReFsksGLD[48,m%lj4g/DZo:$Ee_3.PRC{XTV[g[VNREmXYR~S,^FvoFgyp3?o+IKDz_XIBKYOZ_vu@FuwK+xW&oG7F-.;-e`ACViN]Bu@AJfK)smCo,J1$U+s&ZO@k=BDCv}_?uZ^bb4g$f@-EgI6?93DjJW/(L21 7<1.,wl1E[i-2)E4c+5=0(5{7_RexSBAYD]?eu{Gdh{ZYP;l*6e-[}WMr=0+ 2y6j0S%fGMZTo=iORL}gT!/-(@m@eWWAIFH]hMJAEVrAHKGMP]DiKsUy!?]OOAFS:f#J91XJMW]h18Z*:d#YXy%6qS^^PSQY+N47i$h!w,[H:8}Hv,$vpB[BMGLBELRP/-0);^WqP&(ZL7z_6z`BOOAB@H*IOn6WY_NZ3$(yM$*YSkCR[RGXECcXmXYR^!9d3HY.-K?ld{mFWTLQHL3?jKUIW;g(pdWE&cOz?X`UT_I}WiQ%[7I}%vMg!CsLR?IM*iHKLXAYgC26oNa[f,u]?:Hwd)cHrKV\x13a}t,H(U:L]YI;XmI?ms0X6lKXGxOLXOYB5ma&pe(/f-orYhMg^C\x06tha2kk_Gv^@eO[S_yOdzhLXLXB)MX-_Fro/gJIE}2(cD*msGF]`WP[@FZsda,17)vg;5D%GNMOH^X(4W2aAi#lyU}q^4o6Lx[WUXdXUMQFPlB:A6bLx%shGvFW@@KbPLLz*l%lGxueMHpJgEHHFEGOEFNhnT;1![0d-U/4,#$3QmO*Ss=BpsGr*MFToH[D{LO[LZA#wU/,^OvO0YjKPMB]C5)+#_9X-2&{;I@]VD-pAkJ0Yux]mYmmWF7wvsGTXP?:SNnacJGl},XCnZ[@mJJgN[LGJk1Ub^G.\x07%</.j>%j(/9>j0%$/pj#65;2soUjYJB1?3!,s?cWSOV\x06dCUR\x06g^CU\x06hIQ}[LLoH[DqwE+IS,LgdpSAWbS@FA;d=1O)H)V^]DCjBAI}LX^HI1G)`UT_IBA_P9=?_0gZCvBCXbGPEVSRD+gxpq@TRDeH@LNOEDi/y{JCJ_@][\x0f{@\x0fu@AJmPSSK(1&WN&;vxj,978=)T.e]79RkM}GTKC6O$HZ+YZ:e\r<5<)6+-<=y-6y?>;1) /##&<:I,{ZXMrUFYn[ZQ}PeGJJDGEMwcqQ/TzNOT~JNRKy^HO|YYiRZZQX]4.ib{f|nvwbwjlmpt@AZ{PMAoZ[Pb^RXP]cTFPCUlZRO}TIxSRW_eXE]TVf&$K}2kNNh_^^EDck#bT]TRETUk^_TlNCCMNLDOLmpDE^cTSXCEYwCBY@YP*n.)BCiH^Y_BTHIeAFAEARMcMQd[@FGS^gAW@$:1>%>?/266dRC{^UEVENkGZMo]A%BujHY~H_[DNH>4 #' &(0?u@AJ|JCJL[dPQJtP@VQVxEFFnOFKS$//&0>8>7?5:; =3)=mHHxCKK@IeSBpYZRSD{WQX_BCRS|A[@JG@ItISHBOHA\x9a\x99\x99\x99\x99\x99\xc9?pR__QRPXCX[CPGOAzXUU[XZRrP]]SPRZeGJJDGEMnRRVaCRjAPSKVOoDUVNSJeJPMeboFG{LNLGvWTSG^FdO^]EXA2;&95 VEARQ]$3233;EDJPWWoJJzOL@UT_I*?<2;?19IAuHUMDzFKCK.-<*3oROW^ePQZ}i}i%vr\x1b/91,+/92sTGX4=/#\x1e: 0~C@@|HIRt[W_f[XXN\x98s$bVWL|EXoEPJWO~TAAL\xa4\x01[vS\x00\x1fZROT\x03/\x10-"))
local k0 = (buffer.fromstring("7++/,epp86+7*=q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p-:3:>,:,p3>+:,+p;0(130>;p\x193*:1+q3*>*K6@q%1WkHsJ]KWTN]{PWHHYZT]jWWL[:jpnGl_J9m.3,b:L%skK;tibHslv2NL]eFJHEyEHPL[sFGL`MpM_2)Mlv{ufUy/[e6.RF&H+lKXGxOLXOYB]+7teez+Mp*wZ:wmXxnsd8m(XQuJt&@!&<%9)2:<-Ju}0E)5uCS3J:;75f$5#v8}2%r%W#DuLZK~JKPzNJVO}ZLK~GZLpQ#k-?VA@UJ}RCi2(1lWHCUWKYIGa(@G;@-xvmA7=dV2kcr7LJam.W(AdE~JKPnJZLKLx;MHV&YKwQ8H?Gno=Z]8jMQRVSxQiYH__T}OSLEK^?o5h@,SR)32(vA$7n48%NR[{?0/(1%.;}5]nh/JuAJ;10&7SqHOVmosSFD(w156'1(k-mddFFwS9X,S7CKo/$ZM4k2H42V(((wOMHHpVAAD9yKp3k8(1Q.+{Xt6QNdrCK];OWj^_DfJY@N_UMV0*PO}9po4E(pa/]ggFqO+cfQGQ@{ZgDUCZn(=RP*R}E=Obp527L#w[H-[CWJHjCCV@QtmzbuDLLnHN8WZ{mhfo$I8bm:1#%ONhuU*)EW[Ixj&O7iYRT}S0l08bv3bwKKOxZK!X5[,2gw$,w.-;WNe4/!US.[ybK7/2U3P@6j4-:.=&U1oxB_p$dyz(3wJ@hoc^C[RlpZ$N4zr.wvHE$tIhUy4u@w0k2X9mZWN^H1_LZgFkO=V4L=N!Qt?k;R^JeZ!yMLWIpvd!GN7*B*nvA}OzlQpT!8zKq@h;:10&P.f}hC!r#@s(JnxI]%LA!2n,)voZ[PFiNcXM%&5/m2{fm@i:X.akrK3SKiTWWo7R*v;*I[&+7j;u7@nTnj}FF4f[XJWADE]VQL:r6Jf%1D;:c(^8Y)+M:=8+'Vb+1_/e{ZBTHFbeMr#fb=@G5#=|ST^|SHINyRSV^N}%v5f4J:lMZQ3OvTM^oT0jnpkU#rkvh&IvdFT7kpus[+;!8**<-0=cvv`hmiiiaoljainm7P@BAElaaxnox0c}z7ktImbCSYJR^sNTOEHOFt=hZFofrg-NA$9C^F5:2=;--+==^5B]jGlTNcI9/YL3Z_UtgCYI1rfxEp?ytJ,mfVNopu]C]9alHRB5E&Y*fBJu9MOils4Z@we#8fSPe[VFZ6b9}SG}+CnNuYw36GE`EEuNFFMD_it#C0nEmPUprK;Qn[ZQ3eZ[BClf*46##OoCwpW#N{ONUhUVVn348o*oT=kvF*3,EZdBUUvQB]vV%W5V&+ud$.9a/^2& 79B]33Cr7Pee*(GV19mL-(/52,9TV/AN1[z^Fkt.+g?t~RKwZ-THK-Lt@QD_#pGOPfgEHHFEGOlT}Y@or6Z8{Q;$vWTSG^FS0h5$0FOi7N]&7N`D^N*(!d0)-cPS(Cwi5;HzNOTy^^sZOXSs]N:}[XFD|G@]Hf4#0^T#2)y4:K}BgHDLJSzWKnc5ud84KERKGDUCZET1{wMx36fRJ[][^YHCJXNeDON/8NXyLD}ZPQLfQCUFPGzQ@C[F_kZI^UOH[S=NMHl@&QAzHJ[{NMCJLAxCoA*N.Py.ytNkq1(Z,8vlp[YMR@T;Qc4vUpPGKMC)\x0b,? m\x1f(+?(>%me>di_Ns]TUH_sT^_B_I@WBGpHr$NH*V1@;x.4&*,7():]p}j/XxSBeM/.GCR!6jcfpWW!+?}6;T)59}FsVVfSPp@q3CSF?'<>)XGe3&0gtgZMXO[ROPoX_TOIU(-% 5fNN!X[k!WdGOlZGXiFK@GZiQSVVnH__~[N[o[ZAk_[G^lK]ZaPDBTcPX_S^FqVEZuRDCmXYRgVAEPAsMJ@KSzBCVC^XYsVCVmYXCnIIdMXODODGSZ]DCYPUF#67<&6+=<+O|YYyORMYRJS.=,?1$>!/:$vTYYWTV^CoWqSBu^_ZRDSXgCDCGCPOaOS~JKPmZ]VMKWeBWBSS[SkrlXYB~BNDLAvBCXfBRDCDL]^GQNSA2&?%=4029;&>UILAUSLGEFz__yNOOTUnXI{RQYXOqTTrEDD_^|WPOqZKv[gLKTTEFHA{^^xONNUTEF]FUGNFfDIIGDFN~A]GZGA@-&5*3-%1nZ[@}@CCb@MMC@BJ]CWWRVJPlZKi^SJZACRdIIJBKFPHR_[V^RPQ[t_NMUHQ1'0&:/9pRCH]XRgFEBVOW.8;+;%@AIKPQFCORTU<7)7+S<#&);9ZUVZRK]ZHXEPQZL65$2+^_TUCoZ[PF2'&-;iHr\x1fD\x91\x8a\xe1pTN^\x1a\xb6s `]^^\xd6+4\xec\xd3\xbf\x89\x85pDE^\xfb\xb3\xc8\x8d9-+<pZVWFPXE\x92\xfe\xfa\xd8\xcc\x87\xd2^V_T 7,GL^>=5$ x|ny\xffF\x0fA\x841^\x16+o\x0c"))
local kY = (buffer.fromstring("*6621xmm0#5l%+6*7 71'0!-,6',6l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m/#16'0m\x03&&-,1m\x11#4'\x0f#,#%'0l.7#7yXZO\x16pWD[\x16_X\x16b^_E\x16lYXSNn3J3,cD17rR]q/:2#y5oOxnh&p:\x06!2-`).`\x02%34`\x1a/.%odHaoPvddUH_@8,4FYfXSZdLu!oLNFJ_BXCIy_LC^]L_HCNT,rC4t%c.P5I-;z$s=l9HlXYBh\\XD]oH^Y?9WHmQkh7=]IFP&A,X8IUo.d74u5vBCXdXT^V[ZFRG&4ZT&KXXGYJ7Y?x6M!i+zzGWVj^_D~[LYJONX2h!_%f8{=HnMoF+r^(&=sSvY!dMoJJzAIIBK_lHnQb0g)tAAxNItQxCJ0ZNNF,sg9XJPTVP&$:PKN}PU:M&dCfFlExDXmG?s:dfjVuMTGNYTGW4Lc/+2*ScQo/8pPUOn#q,z4VXnUW+wTXZWkWZB^Ip=+vGGy8pAsiv#!w,{R8=JzC*nKK{NM=rSQ*ov9t(_SYVB]OF/8(8zJs5vw-F`XZ__gAVVwRGRX4Zyg80j1rI#iw$ae$1oRKsFGLZ1@fJFcq8OgippHVt$q3]y1StvbOt[-nZ[@j^ZF_mJ\\[$U}w15BjpLaq3^-4h)V*1xY[NqVEZmXYR~SpF,m2Bd[ttc$(0M7v0T(bNHAF[ZKJV2;+}Ukcyrd!eZ;$RNk1xu_3w->61=0(ETBGG6cH^HO:ig@JZxLJ;tf_@Mt@AZrZ{PBoZ[PJ:r9FjDoo#oO_^$$ge^X-286>cS}cu;AVLI8AYQjx@Td})r.InU*\x1c:--h\x0e):%h`%'>-h<'h&-):-;<h<:--aSDBTAUz@YX3}=ZN)Q}QGy7%ol./8%r554#> >1=3+ =Vb30ZJn]X)d^Bej*1N]lKXGvD6iUlPN:,,K?RdN1-s?BHKWT%j^_D\x0b{^YHCJXN\x0beNS_\x0bgDH@NO\x0bqDENoH[DbDiAw.,(DbTpT06(ctp%j]6vUwFUYRWSPLC=ukKVjGtWHx@!]-QPG1Y[PBotXk;t$OyJ6W@i5&aY;G?pl_6.ZUVZRG]Dq(Lflw61TYurZg@34xla5V]V[BTFHAKUo]xEzkCK(k.xkNb$LlQLT]ba/A$2W(qvN2T=JORu9+NviuPPvA@@[Zx$lDf.C;M1VyR0$F[c\x016:chc\x17&/&3,17{O,,8gnc_S9n18>7:5'&';/h@l2l?by0Fs97h{bGGwLDDOFqI,WPc9geV,16oaM[j]Q\x08rGFM!pgtn,tDwP]nVLsX-@HG@JmBGMEfGZLAVpf6n=Ijj3}^Y]gng]klc-!})Z,yU%c/-l?/]_NyRUJt_Ns^|HUWsTIN[TY_DZYVQ[WLT@40I_G8?}1y(%6%oRQQ$bha??Pf9W4_5TWRm+pt@AZ\x15rZ\x15aZ\x15{PB\x15oZ[Prs{IDL@BCIrEBCHTNB@Oznjkr\x1e3)95(>z34,3.?z95*3?>tdSOJBoHRCT@GECuCEROIHb_BZS{OTOq=UC.4]tutPrlMOZeBQNyLMF($LT5Utd`]@XQ)((Jz&w+f;A2zD.|HIR~RQQX^I)tG&z%}&qPST@YAw{zn,T5;TJe;gXD^C^XY*[m?TH5@v,LpDE^sTTyPERY/L0z+6xcTHMEbNOGHFrDBUHNOEF_XdW_XTYAfWCESRwXU]Y\x14{RRX]ZQ\x14z[CJB^PBPE@Z_BwUHnI{ZY^JSKcx3:B6=^vtqEVZR]:ToZ-w}=Gt@AZrZ{PBoZ[PYOGHOEbMHBJiHUCNY6# .'E*{n^]N=.CeQPK\x04fAA\x04lEPGL{]J|A\\DMJteqj1j^_D\x0biNN\x0bcJ_HC{ONU\x1ahUVVD$oWxgSRIaIhCQ|IHCUAEY@rUCDqHUCqED_uAEY@rUCDwON[NSUT~[N[@TQ{HSKt/;w;xDIAI[qQwl&idPQJpUBWDA@Vo[ZAMra:l5cJ|[HWx_IN`UT_b_BZSkMvM[QhCRQITMJ[Y:bWV]Kp$5Uv?nZ[@l@CCJL[|HIRoX_TOIUjAH[HJ]L[c;{Y@S{YRSgiwxN_gBIYJYRK@YJRLQJLZRRCECECFCP)<=6,<!76!2< (/+(!0)cTY@PFK9OkNNh_^^EDwRRbYQQZSwUDdQWWUTlZKyPS[ZMmPSS{ZS^FuPPvA@@[ZlIIoXYYBC'!3#4+%)a^BXEX^_NL]z]H]L{YTTZY[SqS^^PSQY\xb8\x1e\x85\xebQ\xb8\xbe?wJPKALKBuTWPD]EeLLFCDO{TNS{|qwVURF_GnT_QTSZ<6!!2-0(6!f7;miLL|IJXFF[P[w[ZR]S'.3, 5OCD]_@UJIRU$;8#$pEDOY+7=;9j^_Du2'$*#+>=3:wSIY\xfcAr\x1eh6\xa9'nJP@)\xd4\xcb\x13\xbb\x08 Y|VZ[\xff\xb7\xc7\n2:91nIZE\xff=\xa2EXLXLUVDR\x96r\xa9\x0ba[i8!<(!*IPM%!!%\n\x15*)\x82\rEj\xfa\x1a}\x17"))
local kT = (buffer.fromstring(" <<8;rgg:)?f/!< =*=;-:+'&<-&<f+'%g\t+<=)$\x05);<-:\x07'/?)1g\x0e$=-&<e\x1a-&-?-,g%);<-:g\t,,'&;g\x1b)>-\x05)&)/-:f$=)ERDX[ARt_XGGVU[ReXXC#7XFi,QIZP%wF_9KD4pYC91u{j=Quv^eTCGRCqOHBIQK7WhDLNYqAJD0Ek/GcUf.pu7PdNuem(`sT^_Bx_R[LSUHkyySEYYR@ONCZGetJvo*[DXSJrytvBCXtX[[RTCr4bbjl?A1$-nomM3kz[@x90GoO5Jh2x]]{LMMVWru%Ul1p8dFM[U^=+)T{vk[O^:aKiF%\x1c()2}\x1e1<40}\x0c(8.).}u\x152(/1$r\x19<41$r\n8861$t{^X_\x11uXBR^CU\x11W^C\x11uDATB\x1ezTH]TBB\x11bRCXAEBpDE^dAVCPUTB7k&yMU_@MUyzE&%9yChl%C+$pGFHGJ\\[zAC@LDJKu@AJfK-x?*QwVub;?$Dtz/kIPC\x06kIBCQ!:0QQ{iN,@oAqi:X}Oda$]q8k!gSRIhC^R|IHCSODOx+yg+p.zjoyjIxf_P+QLuHUMDq0-@LIYT7ZLFom}8H=o&8N1)/kOoR2uA@[qEA]DvQG@/{tN@B3M=4)0AJO;HR:WB3hE_MN@I\x0cm@@L_/}JBSUhe5Yvk9:)yxFpk,u^YFBXPMkDTL2HF&R)Ow2Wqo.By6q3j}?E|FUJcO}rrw%lVpeU5&B@Vx-:LS3)*D+Nj!bCRCEROIHn*$(9Hs_NMl-Y-.@UST8?CotXF@MOXFL3M%E)QTER=F(_BENH7qu:t8NE\x05#44q\x170#<qy<>'4q%>q?40#4\"%q%#44x~RKRQ3D[mb^,VDYUi)^&VKKxfL!Qh[?.XZ^ZS^XKAON8Kv7)s@Tw&gOx@oC,{G(-#8.5$5J%SHz4sJh,,ThXo2,g%r6qa2rSPWCZBJJQoP8h83m;q,w]m_FQ,PqLoROW^cRNg0(4Beto%qs53}TM-9q)fEk@QRJWN3{3/J0n6z8i;G;A1l2.(UpymJYF&kMi_cqN!@SQOj&2P:Me7&)u](4403zoo$)3#/2$n''o&s$\n(\x04'9\x141gSRI\x06tCDOTRN-d4I2WBkVFhZP0olNll\x0e5l\x039>#.#>#?l\x049.19%Zbr}_]Ikx_UTIsTYPGX^C80B(C$Q[=ll]x 5681inEgdeX)Wsp(QqkI]m87^:oM@@NMOG;w-fARUr#IsbK+]^d)5|YYyORMYRJSpW35?-*Nk@rMxb8QZH3a]&VipNhA:mCIIBug8w%?]lyxsiydrsdN4MUdt39RI(*w0PmaGPPsTGXKf@M?c{$,#2IJL+3m@V^CR*3dYI#B!@lMIY/!]u6PxmA@HGIG8s./Pea$YXy#wTg29i_V_YN_^`UT_a*h,tb*7#.;Q\r98#a>)())!)(li(l/#()?biJH@LYD^EO\x7fYJEX[JYNEHRhIJMY@Xl0yD3R}13S5r%zIXLJ]ujY[qbo%PqG!Yc]Y-#fBNHJ0btk/XDW2$Vp63gOeAMKI,5=[z%O26w#F-jdZ&0!!<;2&VTyw!v!m-d)-}@]EL/eho4v.1&S;/l-)~C^FOb8/K#R8Tg^aw0{}@]EL)fDNB:0tBq1/gr`FQQzQ@C[F_n+k!?@46iSTIDITIUrIAAJCafQdaCZIaCHI4B;M?JU:NPfGEPoH[DsFGL4x^(dtMP\x15g{rO_nJ$Q4{3NzEYC^CEDZ+I6ig$4^I]YI_XdMXODeXIA*8861$.LXj;X&N?bgZG_V){7SL(:PJsQZH.y@OfGn%2C*v(M.U+;il%j?o5udxLMVzVUU\\ZM4MHgBBrIAAJC/mNc5jV[C_H~[N[,lv)a\xca\xa5\xb6\x88g\x1a{B_\x1aht}e|a{iqpepmkjwz__yNOOTUFNz%uCJCERCB|IHC5oBJCBHRs^aCMNALD@bKKADCHlMOZeBQNyLMFpFOF@WFGyLMF.17,!+%1#)*,kQVKFKVKWlQF(/)25<l}GV@DRTDDZFSABSbGGgQLSGLTMdKFMJWuJLKQvTErYX]UCT_wJWOF(p&}A6sGF]`WP[@FZnZ[@|@LFNC3$&H2YcdWI|^Oh^IMRX^xLMVjVZPXUuHUMDEM3(KkNN~EMMFO`EEcTUUNOkG^w/$xq!sVVpGFF]\\f[F^W7f&g`EEuNFFMDiTWWmrG6yuPPgX]PQFdBUUvQB]mOBBLOMEfD]NfDONxZWWYZXPgEHHFEGO|IHCbGRG!.#+/'&Z[gPRP[E@ANNZZ.!>(,>#@OIPDVPgKJJAGPjKHO[BZaJ[X@]DoCBXIBX$2)&-$`D^N0*vSScVUqTTdQRoCHI_{F[CJ.;86?8923%wJWOF(70+<VUDRKhugeuA@[AGBFA[ZZVBDSeJFNc^]]DKC[q[WVnZ[@9v\x1b`}ZIV\x87\xf5r\x0c,8/HHV!(#AY[nB[z^YJG\x07\x14(u.Im(c\x0b\x90\x12"))
local kR = (buffer.fromstring("6**.-dqq97*6+<p=13q\x1f=*+?2\x13?-*;,\x1119)?'q\x182+;0*s\x0c;0;);:q,;2;?-;-q2?*;-*q:1)021?:q\x182+;0*p2+?+?/5,>>(9$)wbbt|y}}}u{x~u}zy+BdX4SOCF=:*$Y;IPb}hG{AR@O^#IVULKaLDHJKAuDPV@Ab%m,Y@!1[MBym=ZBYnvxQN6a^u%nOMXg@SL{NODhEPk&QUfcC#DwF@-/%6T&JYG;/gyVW]L^ERL@VV_Usg%$eP9@a/rIU*p0u,J/bPe=[Ir(;?vR^XZ}JKKPQ$dPugg1^/G/*q]#)J0K=!j5sP,fp}LX^H\riDL@BCI\r~]DC^lc96%.GCDXTsTSs3SFLKGEJgHEMI$E;6L^,kkDw8$R,Y&gjhE$%$!6jd6^4/78?(]}]X%ITr^fqCiQcevaIuc&3;CM{dfJmgVBDReV^YUX@yd^ov}tO.S7m^e;W_ns2F)vN8t\xdf\xb0\xa3\x9dr\x0fnWJ\x0f}ah;/W!uph-3m#aIXabCbmsZO#K^_Tw^Cx_BEP_RT?C)B-0dk1^!LA}U})6!8xnWJ\x0f}ahv_qf_&NlLWG[6Xl:A$;*)cRaqc.*mYXC}YI_X_}u+[x-o*qJixZvZ*0D;F{W/6{:56:2PW.u9{)#QCcdXengmw*d:IsG]EW=b&1$15 0ai{bi,9Jmi:^b8CLDX7rm^^cP:{JYQVZWOgPWV]A[WUZ3(MeEgiHcjf+;8S)vlQLT]&fyC_XkKW{:WJKacR^1gN}-IO3?FeDG@TMUvX{nf2gzFufHrUrdyfC[QJizx6b_BZSbOk=_kqNbayJ-O$IpGHJ]DL+ZHHYFE^Y@vrg!JjL]Lcew.QCIRk8dTEHl-6{ZY^JSK,*YkqI*E+4q3s5jm[A)L^caELSEBM@B#m-B1_x7w{e&&=)t=l[t0b1l{ONUOJ01XB%ll$&4ZP0S*Y../oVaiob_BZS%8_e:-sj*u8(@P!G$QQ3R/C+xsGF]\x7fS@YWFFTfu5EopJb@xsMx2AFmMn[ZQGbX#)CY1C0$[1g(x)rG8q7{Ss=805 =%Ew]!:(bLXsE#{1&k4-X,wiwU^_VRSuMWcWj)1tg5LAhonf13S=j5:=74g7X?{&7X6y.0%NJ;jjiZ&tY&;/4,0hF^%#=*ViK,&u;.@iC=TI&pFWoJAQBQZCslA/mEQpb!i;)/z;pEDO(ge8lYu8[{1RXb19Rx84]jbiTIQXhy$}2ix6Rrf3fHnG(_CmnrNBH@MsDV@SE^79t[hIP:TevBFwCBYxSNBlYXS*ApNGl(*[cJ^{#kWZB^IhXIRKOH}Ro9n{db)-:yFDUrU@UD(;KnrPe=fQ9eWR7gMzE^XYM@y_I^3EaoMgx%b@9w5=(+%,&qdSh+t/3k8y{,W!h+P|HIR\x1d~RQQX^I\x1dqRZ\x1dyORMNx8-,'=-0&'0Y*3d:NrFdxz$WR[DZTE_qvcsjLc!xJ?,1t;?)7,;14>.]y{&ik%+u#zg&+#/-,&E5Ma4oRueTE1CL\x19#$949$9%v\x1e#4v:97232xdPQJ\x05`TPLU\x05g@VQ\x05d]@V~C^FOH,kWe!]HIUcmrbskL_@icd:]Bq:6rGu+bUc^]]2+@T1zb7)A}(UaFo^JLZ\x1f{V^RPQ[\x1flOVQLJEH@DzFJ@HE{L^H[MXvuu\x17,u\x1a ':7:':&u\x1d 7lKXG\nCD\nhOY^\npEDOiN]Bd&%MmYT-I.A}juRA^{C}($9YH({NEdYZZAhD)CH9HEryLxI][M\x08oGDL\x08{XAF[61$71 7:?*+ :,!b_BZSQ1}dOnG1}tbXKTFmK$NxP/0C.RQHOfNMEq@TRDExY[NqVEZmXYR~S:1#AANw)j+tyId~JKPxPqZHePQZaTU^\x1bh^W^XOTI>6$J_Vrpm&1+.gMA@waVRfaGSkxCMB^iED^XEF|YYiRZZQXFRj/>06'9*=/&080%&(!B#RC8GYy^MR}ZLKePQZk_^ExEFF$H_zwCBYcFQDWRSE{ONUyUVV_YNe`TGKCOv9NIvQB]bUVBUCXq^SX_B`_Y^DpVAAjAPSKVO3?& 239,><2@TIKi@@UCR3*$5  !3?7XZDYL^OBEZ(64)<7/2<(9,-&<,1'&1gFWF@WJLMgSRI\x06tIJJ#8?&MBnvmdAAgPQQJKdAAqJBBI@iKFFHKIA8QEXZdTV[RgBBdSRRIHdFWsJULW333333\xd3?vTYYWTV^`TUNsNMM\x9a\x99\x99\x99\x99\x99\xb9?wQFFeBQNrKVja4$hIJMY@XwXB_wp}mBXEmjgALDHJKAqPST@YAsOBZFQPeDG@TMUrSPWCZB>>>!)9CDBY^WaEUCDCz@rspfqLQI@`]@XQU@CMDljmpR&3(.'lQLT]~C^FOoYTS>( =aE_O{ARMbTY^fMJU7>1)dPQJ\xaeo\xed \x9c\x86+\x1cIJBVaKGFUAUAQXS6?4WW@`KZHAJ2%<D\x02'\x0e=9h\x01aQ k0$"))
tC_28, tC_9, lj, tC_12, la, k5, tC_21_1, kx, ks, kq, ko, kn, kj, kg, kb, j6, j3, lm, lk, lh, ld, k7, k2, k_, kW, onAutoGoNewZone, kO, kK, tC_1, tC_2, tC_11 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tC_19 = 130
repeat
    tC_3 = (tC_19 * 17 + 17) % 18 + 1
    if tC_3 <= 9 then
        if tC_3 <= 5 then
            if tC_3 <= 3 then
                if tC_3 <= 2 then
                    if tC_3 <= 1 then
                        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 13), string.byte(tostring(kb))), 8), 36623944), 18), 1495271611) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 13), string.byte(tostring(kb))), 8), 18) then
                            tC_11 = fn810
                        else
                            tC_2 = fn810
                        end
                        tC_19 = (tC_19 + 71) % 144
                    else
                        tC_22 = {
                            "bzg",
                            "tiqzbxpigyq",
                            "pkoefi",
                            "dznnkosi",
                            "mdvz",
                            "cifq",
                            "mpu",
                            "fsxesfjxwbyc",
                            "mzttq",
                            "upggnyltasyx",
                            "ygalnygm",
                            "punwfggxlq",
                            "mdks",
                            "qzvvnjdqghp"
                        }
                        if tC_22[(tC_19 * 35 + 10) % 14 + 1] < tC_22[(tC_19 * 35 + 10) % 14 + 1] then
                            tC_21_1 = fn826
                        else
                            tC_11 = fn826
                        end
                        tC_19 = (tC_19 + 89) % 144
                    end
                else
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 16), string.byte(tostring(tC_1))), 6), 1612412473), 182145377), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 16), string.byte(tostring(tC_1))), 6), 2682554822), 117797068))), 182145377), 117797068) == bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 16), string.byte(tostring(tC_1))), 6) then
                        kx = tC_2(tC_11(tC_21_1, "Roll", "Network"))
                        ks = tC_2(tC_11(tC_21_1, "Bag", "Network"))
                        kq = tC_2(tC_11(tC_21_1, "Zone", "Network"))
                        ko = tC_2(tC_11(tC_21_1, "Rebirth", "Network"))
                        kn = tC_2(tC_11(tC_21_1, "Bee", "Network"))
                    else
                        kq = kn(ks("Network", tC_11, "Roll"))
                        tC_21_1 = kn(ks(kn, "Network", "Bag"))
                        kx = kn(ks("Network", ks, ks))
                        tC_2 = kn(ks(ks, "Network", kn))
                        ko = kn(ks(tC_11, "Bee", kn))
                    end
                    tC_19 = (tC_19 + 143) % 144
                end
            elseif tC_3 <= 4 then
                tC_22 = (vector.create((tC_19 * 3 + 7) % 11 + 1, (tC_19 * 4 + 1) % 13 + 1, (tC_19 * 8 + 13) % 17 + 1))
                tC_13 = (vector.create((tC_19 * 6 + 7) % 11 + 1, (tC_19 * 4 + 8) % 13 + 1, (tC_19 * 8 + 3) % 17 + 1))
                tC_4 = (vector.create((tC_19 * 2 + 2) % 11 + 1, (tC_19 * 9 + 13) % 13 + 1, (tC_19 * 7 + 6) % 17 + 1))
                tC_24 = (vector.create((tC_19 * 4 + 3) % 5 + 1, (tC_19 * 5 + 4) % 7 + 1, (tC_19 * 4 + 3) % 9 + 1))
                if vector.dot(vector.cross(tC_22, (vector.cross(tC_13, tC_4))), tC_24) == vector.dot(tC_13 * vector.dot(tC_22, tC_4) - tC_4 * vector.dot(tC_22, tC_13), tC_24) + 1 then
                    tC_11 = kg(kb("Quests", kg, kb))
                    tC_2 = kg(kb("SkillTree", kg, kb))
                    tC_21_1 = kg(kb("HourlyMarket", "Network", kj))
                else
                    kj = tC_2(tC_11(tC_21_1, "Quests", "Network"))
                    kg = tC_2(tC_11(tC_21_1, "SkillTree", "Network"))
                    kb = tC_2(tC_11(tC_21_1, "HourlyMarket", "Network"))
                end
                tC_19 = (tC_19 + 107) % 144
            else
                tC_22 = (vector.create((tC_19 * 4 + 4) % 11 + 1, (tC_19 * 10 + 2) % 13 + 1, (tC_19 * 7 + 10) % 17 + 1))
                tC_13 = (vector.create((tC_19 * 4 + 5) % 11 + 1, (tC_19 * 9 + 9) % 13 + 1, (tC_19 * 15 + 1) % 17 + 1))
                if vector.dot(tC_22, tC_13) * vector.dot(tC_22, tC_13) >= vector.dot(tC_22, tC_22) * vector.dot(tC_13, tC_13) + 1 then
                    lm = lk(j6(j6, tC_11, "Codes"))
                    tC_2 = lk(j6(tC_11, lk, j6))
                    j3 = lk(j6("Network", "Network", "Offline"))
                    tC_21_1 = lk(j6(lk, "SocialReward", "Axe"))
                else
                    j6 = tC_2(tC_11(tC_21_1, "Codes", "Network"))
                    j3 = tC_2(tC_11(tC_21_1, "Offline", "Network"))
                    lm = tC_2(tC_11(tC_21_1, "SocialReward", "Network"))
                    lk = tC_2(tC_11(tC_21_1, "Axe", "IndexRewardsNetwork"))
                end
                tC_19 = (tC_19 + 89) % 144
            end
        elseif tC_3 <= 7 then
            if tC_3 <= 6 then
                if (kj or not kj or (not kj or lh) or (lh or kj) and (lh and kj)) and (kj and not kj and (not kj or not lh) or (lh or lh) and (kj or not lh)) or not ((kj or not kj or (not kj or lh) or (lh or kj) and (lh and kj)) and (kj and not kj and (not kj or not lh) or (lh or lh) and (kj or not lh))) then
                    lh = tC_2(tC_11(tC_21_1, "State", "PlayerData"))
                else
                    local ut = tC_21_1
                    tC_11 = ut(lh("State", "PlayerData", ut))
                end
                tC_19 = (tC_19 + 17) % 144
            else
                tC_22 = { "ntleachjwo", "cngs", "faypkdo", "wxgqugz", "vfdgc", "qtqmunok", "nph", "xnq", "wyvda" }
                tC_13 = tC_22[tC_19 % 9 + 1]
                tC_22 = tC_13:len()
                tC_4 = (tC_13:gsub("(.)", "%1%1", tC_19 % 3 % 2 + 1))
                if tC_22 >= tC_4:len() then
                    tC_11 = ld(tC_9(tC_2, ld, "Config"))
                else
                    ld = tC_2(tC_11(tC_9, "Config", "ZoneData"))
                end
                tC_19 = (tC_19 + 35) % 144
            end
        elseif tC_3 <= 8 then
            tC_22 = (vector.create((tC_19 * 4 + 3) % 11 + 1, (tC_19 * 2 + 12) % 13 + 1, (tC_19 * 14 + 6) % 17 + 1))
            tC_13 = (vector.create((tC_19 * 4 + 3) % 11 + 1, (tC_19 * 6 + 9) % 13 + 1, (tC_19 * 11 + 16) % 17 + 1))
            tC_4 = (vector.create((tC_19 * 3 + 6) % 5 + 1, (tC_19 * 3 + 6) % 7 + 1, (tC_19 * 1 + 7) % 9 + 1))
            if math.abs((vector.angle(tC_22, tC_13, tC_4))) - math.abs((vector.angle(tC_13, tC_22, tC_4))) == 5 then
                local tQ = tC_9
                tC_2 = tQ(k7("Config", "CodesData", tQ))
            else
                k7 = tC_2(tC_11(tC_9, "Config", "CodesData"))
            end
            tC_19 = (tC_19 + 17) % 144
        else
            tC_22 = (vector.create((tC_19 * 7 + 1) % 11 + 1, (tC_19 * 2 + 3) % 13 + 1, (tC_19 * 3 + 2) % 17 + 1))
            tC_13 = (vector.create((tC_19 * 6 + 3) % 11 + 1, (tC_19 * 3 + 13) % 13 + 1, (tC_19 * 7 + 2) % 17 + 1))
            if vector.dot(tC_22, tC_13) * vector.dot(tC_22, tC_13) <= vector.dot(tC_22, tC_22) * vector.dot(tC_13, tC_13) then
                k2 = tC_2(tC_11(tC_9, "Config", "MutationData"))
                k_ = tC_2(tC_11(tC_9, "Zone", "State"))
            else
                tC_2 = tC_9(k_(tC_11, k_, "Config"))
                k2 = tC_9(k_("State", "Zone", tC_9))
            end
            tC_19 = (tC_19 + 143) % 144
        end
    elseif tC_3 <= 14 then
        if tC_3 <= 12 then
            if tC_3 <= 11 then
                if tC_3 <= 10 then
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 12), string.byte(tostring(tC_2))), 15), 3742535761), 3180253281), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 12), string.byte(tostring(tC_2))), 15), 552431534), 665400936))), 3180253281), 665400936) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 12), string.byte(tostring(tC_2))), 15) then
                        local up = tC_2
                        tC_9 = kW(up(kW, "Detection", up))
                    else
                        kW = tC_2(tC_11(tC_9, "Zone", "Detection"))
                    end
                    tC_19 = (tC_19 + 107) % 144
                else
                    tC_22 = {
                        "mcxnudu",
                        "qxkvkslddpm",
                        "psbyqh",
                        "vxp",
                        "oeqrvqwyan",
                        "maowovr",
                        "ynw",
                        "oybmfo",
                        "evzjmcwiq",
                        "snjo",
                        "sqorgudinq",
                        "fjmtvi"
                    }
                    tC_13 = tC_22[tC_19 % 12 + 1]
                    tC_22 = tC_13:len()
                    tC_4 = (tC_13:gsub("(.)", "%1%1", tC_19 % 3 % 2 + 1))
                    if tC_22 <= tC_4:len() then
                        onAutoGoNewZone = tC_2(tC_11(tC_9, "Config", "SkillTreeData"))
                    else
                        local tN = tC_11
                        local tO = onAutoGoNewZone
                        tC_9 = tN(tO(tN, "Config", tO))
                    end
                    tC_19 = (tC_19 + 143) % 144
                end
            else
                if tC_19 * 64901031 + 3 + 1 <= tC_19 * 64901031 + 3 + 1 + 1 then
                    kO = tC_2(tC_11(tC_9, "Chop", "Net"))
                    kK = {}
                else
                    local tF = tC_2
                    tC_11 = tC_9(tF("Chop", kK, tF))
                    kO = {}
                end
                tC_19 = (tC_19 + 89) % 144
            end
        elseif tC_3 <= 13 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 25), string.byte(tostring(k7))), 31), 2704111667), 2378740731), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 25), string.byte(tostring(k7))), 31), 1590855628), 2222552133))), 2378740731), 2222552133) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 25), string.byte(tostring(k7))), 31) then
                onAutoGoNewZone = tC_1
            else
                tC_1 = onAutoGoNewZone
            end
            tC_19 = (tC_19 + 53) % 144
        else
            tC_22 = (vector.create((tC_19 * 4 + 1) % 11 + 1, (tC_19 * 2 + 12) % 13 + 1, (tC_19 * 1 + 16) % 17 + 1))
            tC_13 = (vector.create((tC_19 * 5 + 8) % 11 + 1, (tC_19 * 8 + 2) % 13 + 1, (tC_19 * 4 + 3) % 17 + 1))
            tC_4 = (vector.create((tC_19 * 4 + 7) % 11 + 1, (tC_19 * 6 + 4) % 13 + 1, (tC_19 * 9 + 2) % 17 + 1))
            tC_24 = (vector.create((tC_19 * 2 + 2) % 5 + 1, (tC_19 * 4 + 1) % 7 + 1, (tC_19 * 1 + 3) % 9 + 1))
            if vector.dot(vector.cross(tC_22, (vector.cross(tC_13, tC_4))), tC_24) == vector.dot(tC_13 * vector.dot(tC_22, tC_4) - tC_4 * vector.dot(tC_22, tC_13), tC_24) + 4 then
                tC_12 = game:GetService("Players")
            else
                tC_28 = game:GetService("Players")
            end
            tC_19 = (tC_19 + 35) % 144
        end
    elseif tC_3 <= 16 then
        if tC_3 <= 15 then
            tC_22 = {
                "mnngcwpcqp",
                "tttkcs",
                "mweiotkjy",
                "ruegees",
                "vczkea",
                "fudwylvigrl",
                "xqsdfpkhxbq",
                "jtc",
                "rbkvus",
                "xsxulzhfo"
            }
            tC_13 = tC_22[tC_19 % 10 + 1]
            tC_22 = tC_13:len()
            tC_4 = (tC_13:gsub("(.)", "%1%1", tC_19 % 3 % 2 + 1))
            if tC_22 >= tC_4:len() then
                kx = game:GetService(game)
            else
                tC_9 = game:GetService("ReplicatedStorage")
            end
            tC_19 = (tC_19 + 71) % 144
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 5), string.byte(tostring(la))), 22), 332125225), 3783954756), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 5), string.byte(tostring(la))), 22), 3962842070), 3872595993))), 3783954756), 3872595993) == bit32.rrotate(bit32.bxor(bit32.lrotate(tC_19, 5), string.byte(tostring(la))), 22) then
                lj = game:GetService("CollectionService")
                tC_12 = game:GetService("RunService")
                la = game:GetService("VirtualUser")
            else
                la = game:GetService("CollectionService")
                lj = game:GetService(game)
                tC_12 = game:GetService("RunService")
            end
            tC_19 = (tC_19 + 35) % 144
        end
    elseif tC_3 <= 17 then
        tC_3 = (vector.create((tC_19 * 3 + 4) % 11 + 1, (tC_19 * 11 + 10) % 13 + 1, (tC_19 * 15 + 4) % 17 + 1))
        if vector.dot(vector.floor(tC_3) + vector.ceil(tC_3 * -1), vector.floor(tC_3) + vector.ceil(tC_3 * -1)) == 1 then
            tC_28 = k5
        else
            k5 = tC_28.LocalPlayer
        end
        tC_19 = (tC_19 + 71) % 144
    else
        if ((not kx or kx) and (tC_11 or k_) or (k_ or not k_ or (k_ or tC_11))) and ((kx or k_) and (not k_ and tC_11) or (not k_ or not kx or tC_11 and not k_)) or not (((not kx or kx) and (tC_11 or k_) or (k_ or not k_ or (k_ or tC_11))) and ((kx or k_) and (not k_ and tC_11) or (not k_ or not kx or tC_11 and not k_))) then
            tC_21_1 = k5:WaitForChild("PlayerScripts")
        else
            local un = tC_21_1
            k5 = un:WaitForChild("PlayerScripts")
        end
        tC_19 = (tC_19 + 89) % 144
    end
until fn952((tC_19 * 55 + 22) % 144, 678658481)
if tC_1 then
    tC_28 = 3
    repeat
        tC_19 = {
            "jlim",
            "rqjqbpyq",
            "hxzjcgfdk",
            "tuvqpmezw",
            "ooyxxok",
            "kebuv",
            "mjnkc",
            "razsapfegq",
            "ibsvqsqx"
        }
        tC_9 = tC_19[tC_28 % 9 + 1]
        tC_3 = (tC_9:reverse())
        tC_19 = tC_9:len()
        tC_22 = (tC_3:rep(tC_19))
        if tC_19 >= tC_22:len() then
            onAutoGoNewZone = fn1153(type(tC_1.nodes), 5, 248602996)
        else
            tC_1 = fn1153(type(onAutoGoNewZone.nodes), 5, 248602996)
        end
        tC_28 = (tC_28 + 3) % 8
    until fn952((tC_28 * 5 + 4) % 8, 578005792)
end
if tC_1 then
    for k in onAutoGoNewZone.nodes do
        if fn1153(type(k), 6, 2175009567) then
            table.insert(kK, k)
        end
    end
end
kH, kD = nil, nil
tC_28 = 0
repeat
    tC_19 = (tC_28 * 1 + 0) % 2 + 1
    if tC_19 <= 1 then
        tC_19 = (vector.create((tC_28 * 7 + 3) % 11 + 1, (tC_28 * 2 + 3) % 13 + 1, (tC_28 * 11 + 8) % 17 + 1))
        if fn952(vector.dot(vector.floor(tC_19) + vector.ceil(tC_19 * -1), vector.floor(tC_19) + vector.ceil(tC_19 * -1)), 544454170) then
            kH = tC_2(tC_11(tC_21_1, "Chop", "TreeNetwork"))
        else
            local t9 = tC_2
            tC_21_1 = kH(t9(t9, kH, "TreeNetwork"))
        end
        tC_28 = (tC_28 + 3) % 16
    else
        tC_19 = (vector.create((tC_28 * 4 + 8) % 11 + 1, (tC_28 * 2 + 9) % 13 + 1, (tC_28 * 6 + 16) % 17 + 1))
        tC_9 = (vector.create((tC_28 * 3 + 9) % 11 + 1, (tC_28 * 6 + 6) % 13 + 1, (tC_28 * 2 + 1) % 17 + 1))
        tC_1 = (vector.create((tC_28 * 3 + 1) % 5 + 1, (tC_28 * 4 + 3) % 7 + 1, (tC_28 * 2 + 6) % 9 + 1))
        if math.abs((vector.angle(tC_19, tC_9, tC_1))) - math.abs((vector.angle(tC_9, tC_19, tC_1))) == 1 then
            kH = {}
        else
            kD = {}
        end
        tC_28 = (tC_28 + 11) % 16
    end
until fn952((tC_28 * 7 + 10) % 16, 611555406)
if kH then
    if kH.onDestroyed then
        pcall(function()
            kH.onDestroyed(function(ac)
                kD[ac] = true
            end)
        end)
    end
    if kH.onRegen then
        pcall(function()
            kH.onRegen(function(ad)
                kD[ad] = nil
            end)
        end)
    end
end
kP, j8, kL, tC_9, j9, k9 = nil, nil, nil, nil, nil, nil
tC_19 = 14
repeat
    tC_1 = (tC_19 * 2 + 3) % 5 + 1
    if tC_1 <= 3 then
        if tC_1 <= 2 then
            if tC_1 <= 1 then
                tC_19 = (tC_19 + 38) % 40
            else
                onAutoGoNewZone = (vector.create((tC_19 * 4 + 1) % 11 + 1, (tC_19 * 6 + 8) % 13 + 1, (tC_19 * 10 + 14) % 17 + 1))
                if fn952(vector.dot(vector.floor(onAutoGoNewZone) + vector.ceil(onAutoGoNewZone * -1), vector.floor(onAutoGoNewZone) + vector.ceil(onAutoGoNewZone * -1)), 544454170) then
                    j8 = fn762
                else
                    kL = fn762
                end
                tC_19 = (tC_19 + 23) % 40
            end
        else
            onAutoGoNewZone = {
                "xglzxdvfh",
                "jku",
                "hekszkuotw",
                "qrz",
                "onukbr",
                "vmox",
                "jemu",
                "fjsugflykig",
                "cvxwr",
                "yencegmhsfb"
            }
            if onAutoGoNewZone[(tC_19 * 46 + 58) % 10 + 1] < onAutoGoNewZone[(tC_19 * 46 + 58) % 10 + 1] then
                j9 = "diamond"
            end
            tC_19 = (tC_19 + 8) % 40
        end
    elseif tC_1 <= 4 then
        tC_1 = {
            "jhlhaljy",
            "xsezyxqrwo",
            "ckwykylisv",
            "mpiravvdliop",
            "griof",
            "khzgqtumfa",
            "smfirihxeaa",
            "aqa",
            "yfnrs"
        }
        if tC_1[(tC_19 * 60 + 76) % 9 + 1] <= tC_1[(tC_19 * 60 + 76) % 9 + 1] then
            kP = { "hourly", "daily", "weekly" }
            kL = fn246
            tC_9 = fn629
            j9 = fn253
        else
            kL = "daily"
            kP = fn246
            j9 = fn629
            tC_9 = fn253
        end
        tC_19 = (tC_19 + 18) % 40
    else
        tC_1 = (vector.create((tC_19 * 3 + 8) % 11 + 1, (tC_19 * 4 + 8) % 13 + 1, (tC_19 * 10 + 14) % 17 + 1))
        onAutoGoNewZone = (vector.create((tC_19 * 5 + 7) % 11 + 1, (tC_19 * 6 + 2) % 13 + 1, (tC_19 * 12 + 4) % 17 + 1))
        tC_11 = (vector.create((tC_19 * 2 + 6) % 11 + 1, (tC_19 * 9 + 5) % 13 + 1, (tC_19 * 3 + 15) % 17 + 1))
        tC_2 = (vector.create((tC_19 * 5 + 4) % 11 + 1, (tC_19 * 10 + 11) % 13 + 1, (tC_19 * 13 + 6) % 17 + 1))
        if vector.dot(vector.cross(tC_1, onAutoGoNewZone), (vector.cross(tC_11, tC_2))) == vector.dot(tC_1, tC_11) * vector.dot(onAutoGoNewZone, tC_2) - vector.dot(tC_1, tC_2) * vector.dot(onAutoGoNewZone, tC_11) then
            k9 = fn273
        else
            j8 = fn273
        end
        tC_19 = (tC_19 + 28) % 40
    end
until fn952((tC_19 * 39 + 29) % 40, 208860551)
tC_28 = "AutoRoll"
tC_19 = "RollDelay"
tC_1 = "AutoEquipBest"
onAutoGoNewZone = "TreeFarm"
tC_11 = "MoveMode"
tC_2 = "TP"
local tC_21_2 = "FarmRefresh"
tC_3 = "OnlyFarmZone"
tC_22 = "OnlyFarmZoneId"
tC_13 = ld and ld.STARTER_ZONE_ID
tC_4 = tC_13 or "spruce"
tC_13 = "FarmBestZone"
tC_24 = "AutoCollect"
local tC_15 = "AutoRebirth"
local tC_5 = "AutoSocial"
local tC_25 = "AutoBeeHatch"
local tC_16 = "AutoUpgrades"
local tC_7 = "AutoQuests"
local tC_27 = "AutoMarket"
local tC_18 = "AutoNextZone"
local tC_8 = "AutoGoNewZone"
local lL = "SelectedZone"
local lM = ld and ld.STARTER_ZONE_ID
local lN = lM or "spruce"
onAutoClaimQuests_Hourly_Daily, kk, kX, kS, kQ, kt, ke, kC, kV, kG, lP, kw, kA, kd, lo, lg, kU, kB, j5, kZ, kF, ki, k1, kN, ky, kh, kr, kM, kv, kf, kI, kp, lb, j7, kz, le, kc, kJ, km, lO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lM = 49
repeat
    local lQ = (lM * 4 + 8) % 17 + 1
    if lQ <= 9 then
        if lQ <= 5 then
            if lQ <= 3 then
                if lQ <= 2 then
                    if lQ <= 1 then
                        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 29), string.byte(tostring(kC))), 4), 2071982252), 20), 180860927) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 29), string.byte(tostring(kC))), 4), 20) then
                            onAutoClaimQuests_Hourly_Daily = {
                                [tC_28] = false,
                                [tC_19] = 0.5,
                                [tC_1] = false,
                                [onAutoGoNewZone] = false,
                                [tC_11] = tC_2,
                                [tC_21_2] = 0.4,
                                [tC_3] = false,
                                [tC_22] = tC_4,
                                [tC_13] = false,
                                [tC_24] = false,
                                [tC_15] = false,
                                [tC_5] = false,
                                [tC_25] = false,
                                [tC_16] = false,
                                [tC_7] = false,
                                [tC_27] = false,
                                [tC_18] = false,
                                [tC_8] = false,
                                [lL] = lN,
                                AntiAFK = false
                            }
                            kA = function(aQ, aR, aS)
                                pcall(function()
                                    Fluent_Notify(aQ, aR, aS)
                                end)
                            end
                        else
                            lN = false
                            onAutoClaimQuests_Hourly_Daily = function(aQ, aR, aS)
                                pcall(function()
                                    Fluent_Notify(aQ, aR, aS)
                                end)
                            end
                        end
                        lM = (lM + 115) % 136
                    else
                        tC_28 = 1
                        if kf and kf or (not kF or kf) or (not kF and not kf or not kf and kf) or not (kf and kf or (not kF or kf) or (not kF and not kf or not kf and kf)) then
                            kd = fn191
                            lo = fn6
                            lg = fn239
                            kU = function(a0, a1)
                                if not kx then
                                    return
                                end
                                pcall(function()
                                    kx.fetch(kx, "setSpinTypePaused", a0, a1)
                                end)
                            end
                            kB = fn1117
                        else
                            lg = fn191
                            kd = fn6
                            kU = fn239
                            kB = function(a0, a1)
                                if not kx then
                                    return
                                end
                                pcall(function()
                                    kx.fetch(kx, "setSpinTypePaused", a0, a1)
                                end)
                            end
                            lo = fn1117
                        end
                        lM = (lM + 115) % 136
                    end
                else
                    tC_28 = (vector.create((lM * 6 + 9) % 11 + 1, (lM * 4 + 4) % 13 + 1, (lM * 8 + 7) % 17 + 1))
                    tC_19 = (vector.create((lM * 4 + 4) % 11 + 1, (lM * 11 + 9) % 13 + 1, (lM * 14 + 12) % 17 + 1))
                    tC_1 = (vector.create((lM * 7 + 6) % 11 + 1, (lM * 2 + 1) % 13 + 1, (lM * 4 + 11) % 17 + 1))
                    if vector.dot(vector.cross(tC_28, tC_19), tC_1) == vector.dot(vector.cross(tC_19, tC_1), tC_28) then
                        task.spawn(worker2)
                        j5 = fn787
                    else
                        task.spawn(worker2)
                        j7 = fn787
                    end
                    lM = (lM + 81) % 136
                end
            elseif lQ <= 4 then
                tC_28 = { "oevcfynfy", "rapwydaxergv", "oynxdqg", "iwwjaj", "ntuu", "fpbwnzipthv", "aaooo", "jarmtjbv" }
                if tC_28[(lM * 87 + 25) % 8 + 1] < tC_28[(lM * 87 + 25) % 8 + 1] then
                    kJ = fn672
                else
                    kZ = fn672
                end
                lM = (lM + 47) % 136
            else
                tC_28 = { "nqz", "xreevit", "axvgrrsame", "aguermco", "urv", "ecvbgvbof", "nwdmzwd", "cptgdh" }
                tC_19 = tC_28[lM % 8 + 1]
                tC_28 = tC_19:len()
                tC_1 = (tC_19:gsub("(.)", "%1%1", lM % 3 % 2 + 1))
                if tC_28 >= tC_1:len() then
                    k1 = fn30
                    kF = fn721
                    kN = fn1113
                    ky = fn859
                    ki = fn282
                else
                    kF = fn30
                    ki = fn721
                    k1 = fn1113
                    kN = fn859
                    ky = fn282
                end
                lM = (lM + 13) % 136
            end
        elseif lQ <= 7 then
            if lQ <= 6 then
                tC_28 = { "ptkcje", "fobewcft", "szwaycn", "zpo", "zeoai", "xvs", "llqpxf", "bfpnubhmgw", "eufep" }
                tC_19 = tC_28[lM % 9 + 1]
                tC_28 = tC_19:len()
                tC_1 = (tC_19:gsub("(.)", "%1%1", lM % 3 % 2 + 1))
                if tC_28 >= tC_1:len() then
                    lg = {}
                else
                    kk = {}
                end
                lM = (lM + 13) % 136
            else
                tC_28 = (vector.create((lM * 5 + 6) % 11 + 1, (lM * 3 + 7) % 13 + 1, (lM * 15 + 16) % 17 + 1))
                tC_19 = (vector.create((lM * 2 + 4) % 11 + 1, (lM * 5 + 1) % 13 + 1, (lM * 7 + 13) % 17 + 1))
                tC_1 = (vector.create((lM * 5 + 4) % 5 + 1, (lM * 2 + 5) % 7 + 1, (lM * 1 + 2) % 9 + 1))
                if math.abs((vector.angle(tC_28, tC_19, tC_1))) - math.abs((vector.angle(tC_19, tC_28, tC_1))) == 5 then
                    kX = function()
                        local nr_3
                        local Position
                        local nl_3
                        local nk_3
                        local nn_5
                        local nq_9
                        local no_7
                        local nh = kd()
                        if not nh then
                            return nil
                        end
                        local ni = k9("zones")
                        local Position2 = nh.Position
                        local nh_3 = os.clock()
                        Position, nk_3, nl_3 = nil, math.huge, nil
                        for k, v in lj:GetTagged("Choppable") do
                            if v:IsDescendantOf(workspace) then
                                local ng = j5(v)
                                if ng then
                                    nn_5, no_7 = pcall(function()
                                        return ng:GetPivot().Position
                                    end)
                                    if nn_5 and (no_7 - Position2).Magnitude < 250 then
                                        local nn_6 = j8(ng)
                                        local no_8 = nn_6
                                        if no_8 then
                                            local np_9 = kD[nn_6]
                                            if not np_9 then
                                                np_9 = kk[nn_6] and kk[nn_6] > nh_3
                                            end
                                            no_8 = np_9
                                        end
                                        if not no_8 then
                                            local no_9 = kZ(ng)
                                            if no_9 then
                                                local np_11 = nil
                                                if ld and ld.zoneForInstance then
                                                    nq_9, nr_3 = pcall(ld.zoneForInstance, ng)
                                                    if nq_9 then
                                                        np_11 = nr_3
                                                    end
                                                end
                                                if kN(np_11, ni) then
                                                    local Magnitude = (no_9.Position - Position2).Magnitude
                                                    if Magnitude < nk_3 then
                                                        Position, nk_3, nl_3 = no_9.Position, Magnitude, nn_6
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return Position, nl_3
                    end
                    kQ = function()
                        local nr_2
                        local Position
                        local nl_2
                        local nk_2
                        local nn_3
                        local nq_6
                        local no_4
                        local nh = kd()
                        if not nh then
                            return nil
                        end
                        local ni = k9("zones")
                        local Position2 = nh.Position
                        local nh_2 = os.clock()
                        Position, nk_2, nl_2 = nil, math.huge, nil
                        for k, v in lj:GetTagged("Choppable") do
                            if v:IsDescendantOf(workspace) then
                                local ng = j5(v)
                                if ng then
                                    nn_3, no_4 = pcall(function()
                                        return ng:GetPivot().Position
                                    end)
                                    if nn_3 and (no_4 - Position2).Magnitude < 250 then
                                        local nn_4 = j8(ng)
                                        local no_5 = nn_4
                                        if no_5 then
                                            local np_5 = kD[nn_4]
                                            if not np_5 then
                                                np_5 = kk[nn_4] and kk[nn_4] > nh_2
                                            end
                                            no_5 = np_5
                                        end
                                        if not no_5 then
                                            local no_6 = kZ(ng)
                                            if no_6 then
                                                local np_7 = nil
                                                if ld and ld.zoneForInstance then
                                                    nq_6, nr_2 = pcall(ld.zoneForInstance, ng)
                                                    if nq_6 then
                                                        np_7 = nr_2
                                                    end
                                                end
                                                if kN(np_7, ni) then
                                                    local Magnitude = (no_6.Position - Position2).Magnitude
                                                    if Magnitude < nk_2 then
                                                        Position, nk_2, nl_2 = no_6.Position, Magnitude, nn_4
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return Position, nl_2
                    end
                    kh, tC_12 = 0, nil
                    task.spawn(nil)
                    tC_28 = fn543
                    tC_19 = kt.Heartbeat
                    tC_19.Connect(tC_19, tC_28)
                    kS = kt
                else
                    kh = function()
                        local nr_1
                        local Position
                        local nl_1
                        local nk_1
                        local nn_1
                        local nq_3
                        local no_1
                        local nh = kd()
                        if not nh then
                            return nil
                        end
                        local ni = k9("zones")
                        local Position2 = nh.Position
                        local nh_1 = os.clock()
                        Position, nk_1, nl_1 = nil, math.huge, nil
                        for k, v in lj:GetTagged("Choppable") do
                            if v:IsDescendantOf(workspace) then
                                local ng = j5(v)
                                if ng then
                                    nn_1, no_1 = pcall(function()
                                        return ng:GetPivot().Position
                                    end)
                                    if nn_1 and (no_1 - Position2).Magnitude < 250 then
                                        local nn_2 = j8(ng)
                                        local no_2 = nn_2
                                        if no_2 then
                                            local np_1 = kD[nn_2]
                                            if not np_1 then
                                                np_1 = kk[nn_2] and kk[nn_2] > nh_1
                                            end
                                            no_2 = np_1
                                        end
                                        if not no_2 then
                                            local no_3 = kZ(ng)
                                            if no_3 then
                                                local np_3 = nil
                                                if ld and ld.zoneForInstance then
                                                    nq_3, nr_1 = pcall(ld.zoneForInstance, ng)
                                                    if nq_3 then
                                                        np_3 = nr_1
                                                    end
                                                end
                                                if kN(np_3, ni) then
                                                    local Magnitude = (no_3.Position - Position2).Magnitude
                                                    if Magnitude < nk_1 then
                                                        Position, nk_1, nl_1 = no_3.Position, Magnitude, nn_2
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return Position, nl_1
                    end
                    kX = nil
                    kS, kQ = nil, 0
                    task.spawn(function()
                        local nB_1
                        while true do
                            if onAutoClaimQuests_Hourly_Daily.TreeFarm then
                                local nA = k9("zones")
                                local nA_2
                                local nz = k1(nA)
                                local nA_1 = nz and ky() ~= nz
                                if nA_1 then
                                    if kq then
                                        pcall(function()
                                            kq.teleportToZone(nz)
                                        end)
                                    end
                                    task.wait(0.6)
                                end
                                nA_2, nB_1 = kh()
                                kX = nA_2
                                if nB_1 and nB_1 == kS then
                                    if os.clock() - kQ > 6 then
                                        kk[nB_1] = os.clock() + 12
                                        kS, kQ = nil, 0
                                    end
                                else
                                    kS, kQ = nB_1, os.clock()
                                end
                                task.wait(onAutoClaimQuests_Hourly_Daily.FarmRefresh)
                            else
                                kX = nil
                                kS, kQ = nil, 0
                                task.wait(0.3)
                            end
                        end
                    end)
                    tC_28 = fn543
                    tC_19 = tC_12.Heartbeat
                    tC_19.Connect(tC_19, tC_28)
                    kt = nil
                end
                lM = (lM + 47) % 136
            end
        elseif lQ <= 8 then
            tC_28 = {
                "ramfcgdx",
                "wknncnmjhc",
                "aasarz",
                "cqfkf",
                "dmulexaitky",
                "zyrxjisg",
                "fnedmgspho",
                "cljsgus",
                "frw",
                "hqhgmfhofxz"
            }
            tC_19 = tC_28[lM % 10 + 1]
            tC_28 = tC_19:len()
            tC_1 = (tC_19:gsub("(.)", "%1%1", lM % 3 % 2 + 1))
            if tC_28 <= tC_1:len() then
                kr = fn102
                ke = 0
                tC_28 = function(cu)
                    if not onAutoClaimQuests_Hourly_Daily.AutoCollect then
                        return
                    end
                    ke = ke + cu
                    if ke < 0.05 then
                        return
                    end
                    ke = 0
                    local nP = kd()
                    if not nP then
                        return
                    end
                    local nQ = kr()
                    if not nQ then
                        return
                    end
                    local Position = nP.Position
                    for i, child in nQ:GetChildren() do
                        local nP_1 = child:IsA("BasePart") and fn1153(child.Name, 13, 836216743)
                        if nP_1 then
                            local nP_2 = child:FindFirstChild("Billboard") and (child.Position - Position).Magnitude < 220
                            if nP_2 then
                                child.CFrame = CFrame.new(Position)
                            end
                        end
                    end
                end
                tC_19 = tC_12.Heartbeat
                tC_19.Connect(tC_19, tC_28)
                kM = fn963
                kv = fn1126
            else
                tC_28 = fn102
                ke = tC_28
                kv = 0
                tC_19 = kM.Heartbeat
                tC_19.Connect(tC_19, tC_28)
                tC_12 = fn963
                kr = fn1126
            end
            lM = (lM + 115) % 136
        else
            tC_28 = (vector.create((lM * 4 + 2) % 11 + 1, (lM * 9 + 10) % 13 + 1, (lM * 4 + 14) % 17 + 1))
            tC_19 = (vector.create((lM * 4 + 9) % 11 + 1, (lM * 7 + 7) % 13 + 1, (lM * 7 + 11) % 17 + 1))
            if vector.dot(vector.cross(tC_28, tC_19), (vector.cross(tC_28, tC_19))) + vector.dot(tC_28, tC_19) * vector.dot(tC_28, tC_19) == vector.dot(tC_28, tC_28) * vector.dot(tC_19, tC_19) + 2 then
                kI = function()
                    local n8_3, n8_4
                    local n7_3, n7_4
                    if not kn then
                        return 0
                    end
                    local n6 = 0
                    local od = 1
                    local ob = 50
                    while true do
                        if od <= ob then
                            n7_3, n8_3 = pcall(function()
                                return kn.requestHatch()
                            end)
                            local n9_3 = n7_3 and fn1153(type(n8_3), 5, 248602996)
                            if n9_3 then
                                n6 = n6 + 1
                                task.wait(0.12)
                                od += 1
                                continue
                            end
                            break
                        end
                        break
                    end
                    for k, v in { "diamond_honeycomb", "rainbow_honeycomb", "void_honeycomb" } do
                        local om = v
                        local op = 1
                        local on = 50
                        while true do
                            if op <= on then
                                n7_4, n8_4 = pcall(function()
                                    return kn.requestHatchItem(om)
                                end)
                                local n9_4 = n7_4 and fn1153(type(n8_4), 5, 248602996)
                                if n9_4 then
                                    n6 = n6 + 1
                                    task.wait(0.12)
                                    op += 1
                                    continue
                                end
                                break
                            end
                            break
                        end
                    end
                    return n6
                end
                kf = fn508
            else
                kf = function()
                    local n8_1, n8_2
                    local n7_1, n7_2
                    if not kn then
                        return 0
                    end
                    local n6 = 0
                    local od = 1
                    local ob = 50
                    while true do
                        if od <= ob then
                            n7_1, n8_1 = pcall(function()
                                return kn.requestHatch()
                            end)
                            local n9_1 = n7_1 and fn1153(type(n8_1), 5, 248602996)
                            if n9_1 then
                                n6 = n6 + 1
                                task.wait(0.12)
                                od += 1
                                continue
                            end
                            break
                        end
                        break
                    end
                    for k, v in { "diamond_honeycomb", "rainbow_honeycomb", "void_honeycomb" } do
                        local om = v
                        local op = 1
                        local on = 50
                        while true do
                            if op <= on then
                                n7_2, n8_2 = pcall(function()
                                    return kn.requestHatchItem(om)
                                end)
                                local n9_2 = n7_2 and fn1153(type(n8_2), 5, 248602996)
                                if n9_2 then
                                    n6 = n6 + 1
                                    task.wait(0.12)
                                    op += 1
                                    continue
                                end
                                break
                            end
                            break
                        end
                    end
                    return n6
                end
                kI = fn508
            end
            lM = (lM + 64) % 136
        end
    elseif lQ <= 13 then
        if lQ <= 11 then
            if lQ <= 10 then
                tC_28 = (vector.create((lM * 7 + 9) % 11 + 1, (lM * 6 + 13) % 13 + 1, (lM * 8 + 6) % 17 + 1))
                tC_19 = (vector.create((lM * 4 + 2) % 11 + 1, (lM * 1 + 12) % 13 + 1, (lM * 4 + 1) % 17 + 1))
                if vector.dot(vector.cross(tC_28, tC_19), (vector.cross(tC_28, tC_19))) + vector.dot(tC_28, tC_19) * vector.dot(tC_28, tC_19) == vector.dot(tC_28, tC_28) * vector.dot(tC_19, tC_19) + 2 then
                    lb = function()
                        local oz_2
                        local oy_2
                        if not lk then
                            return 0
                        end
                        local ox = 0
                        for k, v in kL() do
                            local oH = v
                            oy_2, oz_2 = pcall(function()
                                return lk.claim(oH)
                            end)
                            local oA = oy_2 and fn1153(type(oz_2), 5, 248602996) and oz_2.ok
                            if oA then
                                ox = ox + 1
                            end
                            task.wait(0.05)
                        end
                        return ox
                    end
                    kp = function()
                        local oK_3, oK_4
                        local oJ_4, oJ_6
                        if not kj then
                            return 0
                        end
                        local oI = 0
                        for k, v in kP do
                            local oS = v
                            oJ_4, oK_3 = pcall(function()
                                return kj.getState(oS)
                            end)
                            local oL = oJ_4 and fn1153(type(oK_3), 5, 248602996) and fn1153(type(oK_3.slots), 5, 248602996)
                            if oL then
                                for k, v in oK_3.slots do
                                    local oW = k
                                    local oJ_5 = fn1153(type(v), 5, 248602996) and v.canClaim and not v.claimed
                                    if oJ_5 then
                                        oJ_6, oK_4 = pcall(function()
                                            return kj.claim(oS, oW)
                                        end)
                                        local oL_2 = oJ_6 and fn1153(type(oK_4), 5, 248602996) and oK_4.ok
                                        if oL_2 then
                                            oI = oI + 1
                                        end
                                        task.wait(0.05)
                                    end
                                end
                            end
                        end
                        return oI
                    end
                else
                    kp = function()
                        local oz_1
                        local oy_1
                        if not lk then
                            return 0
                        end
                        local ox = 0
                        for k, v in kL() do
                            local oH = v
                            oy_1, oz_1 = pcall(function()
                                return lk.claim(oH)
                            end)
                            local oA = oy_1 and fn1153(type(oz_1), 5, 248602996) and oz_1.ok
                            if oA then
                                ox = ox + 1
                            end
                            task.wait(0.05)
                        end
                        return ox
                    end
                    lb = function()
                        local oK_1, oK_2
                        local oJ_1, oJ_3
                        if not kj then
                            return 0
                        end
                        local oI = 0
                        for k, v in kP do
                            local oS = v
                            oJ_1, oK_1 = pcall(function()
                                return kj.getState(oS)
                            end)
                            local oL = oJ_1 and fn1153(type(oK_1), 5, 248602996) and fn1153(type(oK_1.slots), 5, 248602996)
                            if oL then
                                for k, v in oK_1.slots do
                                    local oW = k
                                    local oJ_2 = fn1153(type(v), 5, 248602996) and v.canClaim and not v.claimed
                                    if oJ_2 then
                                        oJ_3, oK_2 = pcall(function()
                                            return kj.claim(oS, oW)
                                        end)
                                        local oL_1 = oJ_3 and fn1153(type(oK_2), 5, 248602996) and oK_2.ok
                                        if oL_1 then
                                            oI = oI + 1
                                        end
                                        task.wait(0.05)
                                    end
                                end
                            end
                        end
                        return oI
                    end
                end
                lM = (lM + 13) % 136
            else
                tC_28 = 1
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 8), string.byte(tostring(kC))), 14), 1168260607), 0), 1168260607) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 8), string.byte(tostring(kC))), 14), 0) then
                    le = function()
                        local oZ_3
                        local o__4, o__6
                        if not kb then
                            return 0
                        end
                        oZ_3, o__4 = pcall(function()
                            return kb.getState()
                        end)
                        local o0 = not oZ_3 or not fn1153(type(o__4), 5, 248602996) or not o__4.open or not fn1153(type(o__4.slots), 5, 248602996)
                        local o0_4
                        if o0 then
                            return 0
                        end
                        local oZ_4 = 0
                        for k, v in o__4.slots do
                            local o6 = k
                            if fn1153(type(v), 5, 248602996) then
                                local o__5 = tonumber(v.stock) or 0
                                local pb = 1
                                while true do
                                    if pb <= o__5 then
                                        o__6, o0_4 = pcall(function()
                                            return kb.purchase(o6)
                                        end)
                                        local o1 = o__6 and fn1153(type(o0_4), 5, 248602996) and o0_4.ok
                                        if o1 then
                                            oZ_4 = oZ_4 + 1
                                            task.wait(0.05)
                                            pb += 1
                                            continue
                                        end
                                        break
                                    end
                                    break
                                end
                            end
                        end
                        return oZ_4
                    end
                else
                    j7 = function()
                        local oZ_1
                        local o__1, o__3
                        if not kb then
                            return 0
                        end
                        oZ_1, o__1 = pcall(function()
                            return kb.getState()
                        end)
                        local o0 = not oZ_1 or not fn1153(type(o__1), 5, 248602996) or not o__1.open or not fn1153(type(o__1.slots), 5, 248602996)
                        local o0_2
                        if o0 then
                            return 0
                        end
                        local oZ_2 = 0
                        for k, v in o__1.slots do
                            local o6 = k
                            if fn1153(type(v), 5, 248602996) then
                                local o__2 = tonumber(v.stock) or 0
                                local pb = 1
                                while true do
                                    if pb <= o__2 then
                                        o__3, o0_2 = pcall(function()
                                            return kb.purchase(o6)
                                        end)
                                        local o1 = o__3 and fn1153(type(o0_2), 5, 248602996) and o0_2.ok
                                        if o1 then
                                            oZ_2 = oZ_2 + 1
                                            task.wait(0.05)
                                            pb += 1
                                            continue
                                        end
                                        break
                                    end
                                    break
                                end
                            end
                        end
                        return oZ_2
                    end
                end
                lM = (lM + 30) % 136
            end
        elseif lQ <= 12 then
            tC_28 = (vector.create((lM * 7 + 6) % 11 + 1, (lM * 6 + 1) % 13 + 1, (lM * 7 + 13) % 17 + 1))
            tC_19 = (vector.create((lM * 3 + 9) % 11 + 1, (lM * 6 + 11) % 13 + 1, (lM * 2 + 4) % 17 + 1))
            tC_1 = (vector.create((lM * 1 + 3) % 11 + 1, (lM * 11 + 11) % 13 + 1, (lM * 8 + 11) % 17 + 1))
            onAutoGoNewZone = (vector.create((lM * 1 + 8) % 11 + 1, (lM * 8 + 4) % 13 + 1, (lM * 12 + 11) % 17 + 1))
            if vector.dot(vector.cross(tC_28, tC_19), (vector.cross(tC_1, onAutoGoNewZone))) == vector.dot(tC_28, tC_1) * vector.dot(tC_19, onAutoGoNewZone) - vector.dot(tC_28, onAutoGoNewZone) * vector.dot(tC_19, tC_1) then
                kz = function()
                    local pg_2
                    local pe = not j6 or not k7 or not fn1153(type(k7.CODES), 5, 248602996)
                    if pe then
                        return 0
                    end
                    local pe_2 = 0
                    for k, v in k7.CODES do
                        local pp = v
                        local pf = fn1153(type(pp), 5, 248602996) and fn1153(type(pp.code), 6, 2175009567)
                        local pf_2
                        if pf then
                            pf_2, pg_2 = pcall(function()
                                return j6.redeem(pp.code)
                            end)
                            local ph = pf_2 and fn1153(pg_2, 7, 779798547)
                            if ph then
                                pe_2 = pe_2 + 1
                            end
                            task.wait(0.2)
                        end
                    end
                    return pe_2
                end
                le = function()
                    local ps_2
                    local pr_2
                    local pq = not kg or fn952(#kK, 544454170)
                    if pq then
                        return 0
                    end
                    local pq_2 = 0
                    for k, v in kK do
                        local pA = v
                        pr_2, ps_2 = pcall(function()
                            return kg.purchaseNode(pA)
                        end)
                        if pr_2 and ps_2 == true then
                            pq_2 = pq_2 + 1
                        end
                        task.wait(0.05)
                    end
                    return pq_2
                end
                task.spawn(worker)
                kc = fn1042
            else
                kc = function()
                    local pg_1
                    local pe = not j6 or not k7 or not fn1153(type(k7.CODES), 5, 248602996)
                    if pe then
                        return 0
                    end
                    local pe_1 = 0
                    for k, v in k7.CODES do
                        local pp = v
                        local pf = fn1153(type(pp), 5, 248602996) and fn1153(type(pp.code), 6, 2175009567)
                        local pf_1
                        if pf then
                            pf_1, pg_1 = pcall(function()
                                return j6.redeem(pp.code)
                            end)
                            local ph = pf_1 and fn1153(pg_1, 7, 779798547)
                            if ph then
                                pe_1 = pe_1 + 1
                            end
                            task.wait(0.2)
                        end
                    end
                    return pe_1
                end
                kz = function()
                    local ps_1
                    local pr_1
                    local pq = not kg or fn952(#kK, 544454170)
                    if pq then
                        return 0
                    end
                    local pq_1 = 0
                    for k, v in kK do
                        local pA = v
                        pr_1, ps_1 = pcall(function()
                            return kg.purchaseNode(pA)
                        end)
                        if pr_1 and ps_1 == true then
                            pq_1 = pq_1 + 1
                        end
                        task.wait(0.05)
                    end
                    return pq_1
                end
                task.spawn(worker)
                le = fn1042
            end
            lM = (lM + 115) % 136
        else
            tC_28 = 1
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 17), string.byte(tostring(kt))), 21), 3904381359), 2240397267), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 17), string.byte(tostring(kt))), 21), 390585936), 3840559500))), 2240397267), 3840559500) == bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 17), string.byte(tostring(kt))), 21) then
                kJ = function(dZ)
                    local pO_2
                    local pN = not kq or not dZ
                    local pN_2
                    if pN then
                        return false
                    end
                    pN_2, pO_2 = pcall(function()
                        return kq.purchaseZone(dZ)
                    end)
                    return pN_2 and pO_2 == true
                end
                km = function(d4)
                    local pS_3
                    local pR = not kq or not d4
                    local pR_3
                    if pR then
                        return false
                    end
                    pR_3, pS_3 = pcall(function()
                        return kq.teleportToZone(d4)
                    end)
                    return pR_3 and pS_3 == true
                end
                task.spawn(function()
                    local pZ_1
                    local pW_1
                    local pV_1
                    while true do
                        if onAutoClaimQuests_Hourly_Daily.AutoNextZone then
                            pW_1, pV_1 = kc()
                            if pW_1 then
                                local pX = k_
                                local pX_1
                                local pY = true
                                if pX then
                                    pX = k_.canPurchase
                                end
                                if pX then
                                    pX_1, pZ_1 = pcall(k_.canPurchase, pW_1, pV_1, { logs = j9("logs") })
                                    if pX_1 then
                                        pY = pZ_1
                                    end
                                end
                                if pY then
                                    kJ(pW_1)
                                end
                            end
                            task.wait(3)
                        else
                            task.wait(1)
                        end
                    end
                end)
                kC = nil
            else
                kC = function(dZ)
                    local pO_1
                    local pN = not kq or not dZ
                    local pN_1
                    if pN then
                        return false
                    end
                    pN_1, pO_1 = pcall(function()
                        return kq.purchaseZone(dZ)
                    end)
                    return pN_1 and pO_1 == true
                end
                kJ = function(d4)
                    local pS_2
                    local pR = not kq or not d4
                    local pR_2
                    if pR then
                        return false
                    end
                    pR_2, pS_2 = pcall(function()
                        return kq.teleportToZone(d4)
                    end)
                    return pR_2 and pS_2 == true
                end
                task.spawn(function(d4)
                    local pS_1
                    local pR = not kq or not d4
                    local pR_1
                    if pR then
                        return false
                    end
                    pR_1, pS_1 = pcall(function()
                        return kq.teleportToZone(d4)
                    end)
                    return pR_1 and pS_1 == true
                end)
                km = nil
            end
            lM = (lM + 98) % 136
        end
    elseif lQ <= 15 then
        if lQ <= 14 then
            tC_28 = {
                "ewmikm",
                "erkimztsuhn",
                "lrpmxskvxl",
                "xvjbeabkzc",
                "uofode",
                "ggp",
                "dzvghbdrlqf",
                "bdvhgbq",
                "sdc"
            }
            tC_19 = tC_28[lM % 9 + 1]
            tC_28 = tC_19:len()
            tC_1 = (tC_19:gsub("(.)", "%1%1", lM % 3 % 2 + 1))
            if tC_28 >= tC_1:len() then
                task.spawn(task.spawn)
                tC_28 = kV.Idled
                tC_28.Connect(tC_28, task)
                k5 = loadstring(game:HttpGet(loadstring))()
            else
                task.spawn(function()
                    local p3_1
                    while true do
                        if onAutoClaimQuests_Hourly_Daily.AutoGoNewZone then
                            local p0 = k9("zones")
                            local p0_2
                            local p1 = ki(p0)
                            local p2
                            if kW and kW.getLocalPlayerZoneId then
                                p0_2, p3_1 = pcall(kW.getLocalPlayerZoneId)
                                if p0_2 then
                                    p2 = p3_1
                                end
                            end
                            if p1 and p2 ~= p1 and kC ~= p1 then
                                if km(p1) then
                                    kC = p1
                                    kA("Axe RNG", "Moved to best zone: " .. tostring(p1))
                                end
                            end
                            task.wait(3)
                        else
                            kC = nil
                            task.wait(1)
                        end
                    end
                end)
                tC_28 = function()
                    if onAutoClaimQuests_Hourly_Daily.AntiAFK then
                        pcall(function()
                            la.CaptureController(la)
                            la.ClickButton2(la, Vector2.new())
                        end)
                    end
                end
                tC_19 = k5.Idled
                tC_19.Connect(tC_19, tC_28)
                kV = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
            end
            lM = (lM + 132) % 136
        else
            tC_28 = (vector.create((lM * 2 + 5) % 11 + 1, (lM * 8 + 7) % 13 + 1, (lM * 13 + 1) % 17 + 1))
            tC_19 = (vector.create((lM * 7 + 5) % 11 + 1, (lM * 3 + 13) % 13 + 1, (lM * 8 + 1) % 17 + 1))
            tC_1 = (vector.create((lM * 4 + 7) % 5 + 1, (lM * 3 + 7) % 7 + 1, (lM * 4 + 5) % 9 + 1))
            if fn952(math.abs((vector.angle(tC_28, tC_19, tC_1))) - math.abs((vector.angle(tC_19, tC_28, tC_1))), 544454170) then
                Fluent_Notify = fn399
                kG = kV:CreateWindow({
                    Title = "[🌲] Axe RNG",
                    SubTitle = "  By Ouroboros Hub",
                    TabWidth = 150,
                    Size = UDim2.fromOffset(580, 420),
                    Acrylic = true,
                    Theme = "Darker",
                    Image = "rbxassetid://91400086538074",
                    MinimizeKey = Enum.KeyCode.RightControl
                })
            else
                Fluent_Notify = fn399
                kV = kG:CreateWindow("Theme")
            end
            lM = (lM + 132) % 136
        end
    else
        tC_28 = 2
        if lQ <= 16 then
            if (lM * 1 + 5) * 13 % 4 == ((lM * 1 + 5) * 13 + 0) % 4 then
                lP = {
                    Roll = kG:AddTab({ Title = "Roll", Icon = "dice-5" }),
                    Farm = kG:AddTab({ Title = "Farm", Icon = "axe" }),
                    Auto = kG:AddTab({ Title = "Auto", Icon = "repeat" }),
                    Zones = kG:AddTab({ Title = "Zones", Icon = "map" }),
                    Misc = kG:AddTab({ Title = "Misc", Icon = "settings" }),
                    Settings = kG:AddTab({ Title = "Settings", Icon = "sliders" })
                }
            else
                kG = "Farm"
            end
            lM = (lM + 132) % 136
        else
            tC_28 = 1
            if lM * 85897411 + 5 + 6 >= lM * 85897411 + 5 + 6 + 5 then
                lO = "https://discord.gg/f3dJhDgyTq"
                kw = fn900
            else
                kw = "https://discord.gg/f3dJhDgyTq"
                lO = fn900
            end
            lM = (lM + 115) % 136
        end
    end
until fn952((lM * 109 + 20) % 136, 510804476)
for k, v in pairs(lP) do
    lO(v)
end
local j2
tC_28 = 2
repeat
    tC_19 = (tC_28 * 1 + 0) % 2 + 1
    if tC_19 <= 1 then
        if (tC_28 * 3 + 9) * 13 % 4 == ((tC_28 * 3 + 9) * 13 + 0) % 4 then
            j2 = Instance.new("ScreenGui")
        else
            j2 = Instance:new()
        end
        tC_28 = (tC_28 + 1) % 8
    else
        tC_19 = (vector.create((tC_28 * 3 + 3) % 11 + 1, (tC_28 * 2 + 1) % 13 + 1, (tC_28 * 4 + 8) % 17 + 1))
        tC_1 = (vector.create((tC_28 * 1 + 4) % 11 + 1, (tC_28 * 1 + 7) % 13 + 1, (tC_28 * 4 + 5) % 17 + 1))
        if vector.dot(tC_19, tC_1) * vector.dot(tC_19, tC_1) >= vector.dot(tC_19, tC_19) * vector.dot(tC_1, tC_1) + 1 then
            j2.Name = "OuroborosToggle"
            j2.ResetOnSpawn = false
            j2.ZIndexBehavior = Enum
        else
            j2.Name = "OuroborosToggle"
            j2.ResetOnSpawn = false
            j2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        tC_28 = (tC_28 + 7) % 8
    end
until fn952((tC_28 * 3 + 6) % 8, 477252822)
tC_28 = gethui and gethui()
tC_19 = tC_28 or game:GetService("CoreGui")
tC_1, lc, k6 = nil, nil, nil
tC_28 = 6
repeat
    onAutoGoNewZone = (tC_28 * 2 + 0) % 3 + 1
    if onAutoGoNewZone <= 2 then
        if onAutoGoNewZone <= 1 then
            if not tC_1 and tC_1 and (not lc and false) or (k6 and tC_1 or not lc and tC_1) or (not tC_1 and not lc and (false or tC_1) or (lc and not tC_1 or (lc or tC_1))) or not (not tC_1 and tC_1 and (not lc and false) or (k6 and tC_1 or not lc and tC_1) or (not tC_1 and not lc and (false or tC_1) or (lc and not tC_1 or (lc or tC_1)))) then
                j2.Parent = tC_19
                tC_1 = Instance.new("ImageButton")
            else
                j2.Parent = tC_1
                tC_19 = Instance:new()
            end
            tC_28 = (tC_28 + 17) % 24
        else
            onAutoGoNewZone = {
                "jusheoaugmnh",
                "ojkddpp",
                "otsj",
                "rekwiipwnmd",
                "cfjwqp",
                "vdzqpazdcgaa",
                "paoixfubpyog",
                "vjobvpodfe",
                "lmzgyghdjryd",
                "gpk",
                "admrlbsi",
                "umhus",
                "cbjhsr",
                "qyk",
                "xspdmjstngbq"
            }
            if onAutoGoNewZone[(tC_28 * 50 + 42) % 15 + 1] <= onAutoGoNewZone[(tC_28 * 50 + 42) % 15 + 1] then
                tC_1.Size = UDim2.fromOffset(48, 48)
                tC_1.Position = UDim2.fromScale(0.5, 0)
                tC_1.AnchorPoint = Vector2.new(0.5, 0)
                tC_1.BackgroundTransparency = 1
                tC_1.Image = "rbxassetid://91400086538074"
                tC_1.Parent = j2
                lc = false
                k6 = function(eF)
                    local qc = pcall(function()
                        kG.Minimize(kG, eF)
                    end) or pcall(function()
                        kG.Minimize(kG)
                    end)
                    if not qc then
                        local qc_4 = gethui and gethui()
                        local qd = qc_4 or game:GetService("CoreGui")
                        for i, child in qd:GetChildren() do
                            local qc_6 = child:IsA("ScreenGui") and child ~= j2
                            if qc_6 then
                                local Name = child.Name
                                local qf = (Name:lower())
                                qc_6 = qf:find("fluent")
                            end
                            if qc_6 then
                                child.Enabled = not eF
                            end
                        end
                    end
                end
            else
                k6.Size = UDim2.fromOffset(UDim2.fromOffset, 48)
                k6.Position = UDim2.fromScale(k6, UDim2.fromScale)
                k6.AnchorPoint = Vector2.new(UDim2, 0.5)
                k6.BackgroundTransparency = k6
                k6.Image = 0.5
                k6.Parent = Vector2
                tC_1 = k6
                j2 = function(eF)
                    local qc = pcall(function()
                        kG.Minimize(kG, eF)
                    end) or pcall(function()
                        kG.Minimize(kG)
                    end)
                    if not qc then
                        local qc_1 = gethui and gethui()
                        local qd = qc_1 or game:GetService("CoreGui")
                        for i, child in qd:GetChildren() do
                            local qc_3 = child:IsA("ScreenGui") and child ~= j2
                            if qc_3 then
                                local Name = child.Name
                                local qf = (Name:lower())
                                qc_3 = qf:find("fluent")
                            end
                            if qc_3 then
                                child.Enabled = not eF
                            end
                        end
                    end
                end
            end
            tC_28 = (tC_28 + 5) % 24
        end
    else
        onAutoGoNewZone = {
            "cydz",
            "dcp",
            "hwafidf",
            "lnaigsciani",
            "yanmbhlrigx",
            "row",
            "chqbzdybdr",
            "yqgsmjozdprr",
            "lsa",
            "neqegubsmub",
            "gmnxjedjsx",
            "tpfm",
            "kkvzfux",
            "ksg"
        }
        if onAutoGoNewZone[(tC_28 * 56 + 112) % 14 + 1] < onAutoGoNewZone[(tC_28 * 56 + 112) % 14 + 1] then
            onAutoGoNewZone = tC_1.MouseButton1Click
            onAutoGoNewZone.Connect(onAutoGoNewZone, tC_1)
        else
            onAutoGoNewZone = function()
                lc = not lc
                k6(lc)
            end
            tC_11 = tC_1.MouseButton1Click
            tC_11.Connect(tC_11, onAutoGoNewZone)
        end
        tC_28 = (tC_28 + 23) % 24
    end
until fn952((tC_28 * 11 + 20) % 24, 460486181)
kl, tC_2, tC_11 = nil, nil, nil
onAutoGoNewZone = 5
repeat
    tC_28 = (onAutoGoNewZone * 1 + 0) % 2 + 1
    if tC_28 <= 1 then
        if (onAutoGoNewZone * 1 + 9) * 9 % 4 == ((onAutoGoNewZone * 1 + 9) * 9 + 12) % 4 then
            tC_11 = ld
        else
            ld = tC_11
        end
        onAutoGoNewZone = (onAutoGoNewZone + 15) % 16
    else
        if (onAutoGoNewZone * 2 + 5) * 7 % 3 == ((onAutoGoNewZone * 2 + 5) * 7 + 8) % 3 then
            tC_2 = {}
            tC_28 = kl.Roll
            tC_1 = tC_28
            tC_2.AutoRoll = tC_1:AddToggle(tC_28, false)
            tC_3 = kl.Roll
            tC_3.AddSlider(tC_3, "RollDelay", "Min")
            tC_3 = function(eQ)
                onAutoClaimQuests_Hourly_Daily.AutoEquipBest = eQ
                if ks and ks.setAutoEquipBestAxesOn then
                    pcall(function()
                        ks.setAutoEquipBestAxesOn(eQ)
                    end)
                end
            end
            tC_22 = { Callback = tC_3, Default = false, Title = "Auto Equip Best Axes" }
            tC_13 = kl.Roll
            tC_2.AutoEquipBest = tC_13:AddToggle("AutoEquipBest", tC_22)
            tC_28 = kl.Roll
            tC_13 = tC_28
            tC_13.AddButton(tC_13, kl)
            tC_24 = { Callback = fn248, Title = "Pause Gold Spins", Default = lP(0.1) }
            tC_15 = kl.Roll
            tC_2.PauseGold = tC_15:AddToggle("Equip Best Axes Now", "Rounding")
            tC_12 = lP(3)
            tC_22 = kl.Roll
            tC_2.PauseDiamond = tC_22:AddToggle("Default", tC_24)
            local tC_21_3 = { Default = lP("Default"), Title = "Pause Rainbow Spins", Callback = fn635 }
            tC_22 = kl.Roll
            tC_2.PauseRainbow = tC_22:AddToggle("Title", tC_2)
            tC_4 = kl.Farm
            tC_2.TreeFarm = tC_4:AddToggle(kl, "Title")
            tC_19 = kl.Farm
            tC_19.AddDropdown(tC_19, "PauseGold", "Title")
            tC_13 = kl.Farm
            tC_13.AddSlider(tC_13, "Title", tC_3)
            tC_19 = kl.Farm
            tC_2.AutoCollect = tC_19:AddToggle(2, tC_12)
            tC_19 = kl.Farm
            tC_2.FarmBestZone = tC_19:AddToggle("Max", tC_21_3)
            tC_19 = kl.Farm
            tC_2.OnlyFarmZone = tC_19:AddToggle(kl, tC_28)
            tC_9 = "PauseRainbow"
        else
            kl = {}
            tC_19 = {
                Title = "Auto Roll",
                Default = false,
                Callback = function(eO)
                    onAutoClaimQuests_Hourly_Daily.AutoRoll = eO
                end
            }
            tC_1 = lP.Roll
            kl.AutoRoll = tC_1:AddToggle("AutoRoll", tC_19)
            tC_19 = {
                Title = "Roll Delay (s)",
                Default = 0.5,
                Min = 0.1,
                Max = 3,
                Rounding = 2,
                Callback = function(eP)
                    onAutoClaimQuests_Hourly_Daily.RollDelay = eP
                end
            }
            tC_1 = lP.Roll
            tC_1.AddSlider(tC_1, "RollDelay", tC_19)
            tC_19 = {
                Title = "Auto Equip Best Axes",
                Default = false,
                Callback = function(eQ)
                    onAutoClaimQuests_Hourly_Daily.AutoEquipBest = eQ
                    if ks and ks.setAutoEquipBestAxesOn then
                        pcall(function()
                            ks.setAutoEquipBestAxesOn(eQ)
                        end)
                    end
                end
            }
            tC_1 = lP.Roll
            kl.AutoEquipBest = tC_1:AddToggle("AutoEquipBest", tC_19)
            tC_28 = {
                Title = "Equip Best Axes Now",
                Callback = function()
                    if kB() then
                        kA("Axe RNG", "Equipped best axes.")
                    end
                end
            }
            tC_19 = lP.Roll
            tC_19.AddButton(tC_19, tC_28)
            tC_19 = { Title = "Pause Gold Spins", Default = tC_9("spinGoldPaused"), Callback = fn248 }
            tC_1 = lP.Roll
            kl.PauseGold = tC_1:AddToggle("PauseGold", tC_19)
            tC_19 = {
                Title = "Pause Diamond Spins",
                Default = tC_9("spinDiamondPaused"),
                Callback = function(eT)
                    kU("diamond", eT)
                end
            }
            tC_1 = lP.Roll
            kl.PauseDiamond = tC_1:AddToggle("PauseDiamond", tC_19)
            tC_19 = { Title = "Pause Rainbow Spins", Default = tC_9("spinRainbowPaused"), Callback = fn635 }
            tC_1 = lP.Roll
            kl.PauseRainbow = tC_1:AddToggle("PauseRainbow", tC_19)
            tC_19 = {
                Title = "Tree Farm (move to nearest tree)",
                Default = false,
                Callback = function(eV)
                    onAutoClaimQuests_Hourly_Daily.TreeFarm = eV
                end
            }
            tC_1 = lP.Farm
            kl.TreeFarm = tC_1:AddToggle("TreeFarm", tC_19)
            tC_19 = {
                Title = "Move Mode",
                Values = { "TP", "Fly", "Walk" },
                Default = "TP",
                Callback = function(eW)
                    onAutoClaimQuests_Hourly_Daily.MoveMode = eW
                end
            }
            tC_1 = lP.Farm
            tC_1.AddDropdown(tC_1, "MoveMode", tC_19)
            tC_19 = {
                Title = "Farm Refresh (s)",
                Default = 0.4,
                Min = 0.1,
                Max = 2,
                Rounding = 2,
                Callback = function(eX)
                    onAutoClaimQuests_Hourly_Daily.FarmRefresh = eX
                end
            }
            tC_1 = lP.Farm
            tC_1.AddSlider(tC_1, "FarmRefresh", tC_19)
            tC_19 = {
                Title = "Auto Collect Log Drops",
                Default = false,
                Callback = function(eY)
                    onAutoClaimQuests_Hourly_Daily.AutoCollect = eY
                end
            }
            tC_1 = lP.Farm
            kl.AutoCollect = tC_1:AddToggle("AutoCollect", tC_19)
            tC_19 = {
                Title = "Farm in Best Zone",
                Default = false,
                Callback = function(eZ)
                    onAutoClaimQuests_Hourly_Daily.FarmBestZone = eZ
                end
            }
            tC_1 = lP.Farm
            kl.FarmBestZone = tC_1:AddToggle("FarmBestZone", tC_19)
            tC_19 = {
                Title = "Only Farm in This Zone",
                Default = false,
                Callback = function(e_)
                    onAutoClaimQuests_Hourly_Daily.OnlyFarmZone = e_
                end
            }
            tC_1 = lP.Farm
            kl.OnlyFarmZone = tC_1:AddToggle("OnlyFarmZone", tC_19)
            tC_2 = {}
        end
        onAutoGoNewZone = (onAutoGoNewZone + 5) % 16
    end
until fn952((onAutoGoNewZone * 9 + 15) % 16, 544454170)
if tC_11 then
    tC_28 = 6
    repeat
        tC_19 = { "qtgk", "iuguehbgb", "wlx", "gnhalcqpqmy", "qkia", "mmxm", "reg" }
        tC_9 = tC_19[tC_28 % 7 + 1]
        tC_1 = (tC_9:reverse())
        tC_19 = tC_9:len()
        onAutoGoNewZone = (tC_1:rep(tC_19))
        if tC_19 >= onAutoGoNewZone:len() then
            ld = fn1153(type(tC_11), 5, 248602996)
        else
            tC_11 = fn1153(type(ld.ZONE_ORDER), 5, 248602996)
        end
        tC_28 = (tC_28 + 3) % 8
    until fn952((tC_28 * 5 + 4) % 8, 527583337)
end
if tC_11 then
    for k, v in ld.ZONE_ORDER do
        table.insert(tC_2, v)
    end
end
tC_9, tC_19 = nil, nil
tC_28 = 14
repeat
    tC_1 = (tC_28 * 1 + 1) % 2 + 1
    if tC_1 <= 1 then
        tC_1 = (vector.create((tC_28 * 3 + 3) % 11 + 1, (tC_28 * 5 + 12) % 13 + 1, (tC_28 * 12 + 16) % 17 + 1))
        onAutoGoNewZone = (vector.create((tC_28 * 5 + 6) % 11 + 1, (tC_28 * 5 + 5) % 13 + 1, (tC_28 * 9 + 7) % 17 + 1))
        if vector.dot(tC_1, onAutoGoNewZone) * vector.dot(tC_1, onAutoGoNewZone) >= vector.dot(tC_1, tC_1) * vector.dot(onAutoGoNewZone, onAutoGoNewZone) + 1 then
            ld = tC_19
        else
            tC_19 = ld
        end
        tC_28 = (tC_28 + 3) % 16
    else
        if not tC_19 and not tC_9 and (not tC_9 or tC_28) and (tC_9 and tC_9 and (not tC_9 or not tC_28)) or ((not tC_28 or not tC_28) and (tC_19 or tC_19) or tC_9 and not tC_19 and (not tC_9 or tC_9)) or not (not tC_19 and not tC_9 and (not tC_9 or tC_28) and (tC_9 and tC_9 and (not tC_9 or not tC_28)) or ((not tC_28 or not tC_28) and (tC_19 or tC_19) or tC_9 and not tC_19 and (not tC_9 or tC_9))) then
            onAutoGoNewZone = {
                Title = "Only Farm Zone",
                Values = tC_2,
                Default = onAutoClaimQuests_Hourly_Daily.OnlyFarmZoneId,
                Callback = fn61
            }
            tC_11 = lP.Farm
            tC_11.AddDropdown(tC_11, "OnlyFarmZoneId", onAutoGoNewZone)
            onAutoGoNewZone = {
                Title = "Auto Rebirth",
                Default = false,
                Callback = function(e5)
                    onAutoClaimQuests_Hourly_Daily.AutoRebirth = e5
                end
            }
            tC_11 = lP.Auto
            kl.AutoRebirth = tC_11:AddToggle("AutoRebirth", onAutoGoNewZone)
            onAutoGoNewZone = {
                Title = "Auto Social Reward",
                Default = false,
                Callback = function(e6)
                    onAutoClaimQuests_Hourly_Daily.AutoSocial = e6
                end
            }
            tC_11 = lP.Auto
            kl.AutoSocial = tC_11:AddToggle("AutoSocial", onAutoGoNewZone)
            onAutoGoNewZone = {
                Title = "Auto Bee Hatch",
                Default = false,
                Callback = function(e7)
                    onAutoClaimQuests_Hourly_Daily.AutoBeeHatch = e7
                end
            }
            tC_11 = lP.Auto
            kl.AutoBeeHatch = tC_11:AddToggle("AutoBeeHatch", onAutoGoNewZone)
            onAutoGoNewZone = {
                Title = "Auto Purchase Affordable Upgrades",
                Default = false,
                Callback = function(e8)
                    onAutoClaimQuests_Hourly_Daily.AutoUpgrades = e8
                end
            }
            tC_11 = lP.Auto
            kl.AutoUpgrades = tC_11:AddToggle("AutoUpgrades", onAutoGoNewZone)
            onAutoGoNewZone = { Title = "Auto Claim Quests (Hourly/Daily/Weekly)", Default = false, Callback = fn652 }
            tC_11 = lP.Auto
            kl.AutoQuests = tC_11:AddToggle("AutoQuests", onAutoGoNewZone)
            onAutoGoNewZone = {
                Title = "Auto Buy Hourly Market Items",
                Default = false,
                Callback = function(fa)
                    onAutoClaimQuests_Hourly_Daily.AutoMarket = fa
                end
            }
            tC_11 = lP.Auto
            kl.AutoMarket = tC_11:AddToggle("AutoMarket", onAutoGoNewZone)
            tC_1 = {
                Title = "Claim Offline Now",
                Callback = function()
                    if kI() then
                        kA("Axe RNG", "Claimed offline earnings.")
                    end
                end
            }
            onAutoGoNewZone = lP.Auto
            onAutoGoNewZone.AddButton(onAutoGoNewZone, tC_1)
            tC_1 = {
                Title = "Claim All Axe Index Rewards",
                Callback = function()
                    local fb = kp()
                    local jA = "Claimed %d index rewards."
                    kA("Axe RNG", jA:format(fb))
                end
            }
            onAutoGoNewZone = lP.Auto
            onAutoGoNewZone.AddButton(onAutoGoNewZone, tC_1)
            onAutoGoNewZone = {
                Title = "Auto Purchase Next Locked Zone",
                Default = false,
                Callback = function(fc)
                    onAutoClaimQuests_Hourly_Daily.AutoNextZone = fc
                end
            }
            tC_11 = lP.Zones
            kl.AutoNextZone = tC_11:AddToggle("AutoNextZone", onAutoGoNewZone)
            onAutoGoNewZone = {
                Title = "Auto Go To New Zone",
                Default = false,
                Callback = function(fd)
                    onAutoClaimQuests_Hourly_Daily.AutoGoNewZone = fd
                end
            }
            tC_11 = lP.Zones
            kl.AutoGoNewZone = tC_11:AddToggle("AutoGoNewZone", onAutoGoNewZone)
            tC_9 = {}
        else
            tC_11 = fn61
            local tC_21_4 = { Callback = tC_11, Default = lP.OnlyFarmZoneId, Title = "Only Farm Zone", Values = tC_9 }
            tC_12 = onAutoClaimQuests_Hourly_Daily.Farm
            tC_12.AddDropdown(tC_12, tC_21_4, "Callback")
            onAutoGoNewZone = onAutoClaimQuests_Hourly_Daily.Auto
            tC_22 = onAutoGoNewZone
            tC_2.AutoRebirth = tC_22:AddToggle("Title", "Default")
            local tC_21_5 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_13 = tC_21_5
            tC_2.AutoSocial = tC_13:AddToggle("Only Farm Zone", "Auto Social Reward")
            tC_12 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_2.AutoBeeHatch = tC_12:AddToggle(lP, onAutoGoNewZone)
            tC_12 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_2.AutoUpgrades = tC_12:AddToggle("Default", tC_11)
            tC_11 = fn652
            tC_12 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_2.AutoQuests = tC_12:AddToggle(tC_11, tC_21_5)
            tC_12 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_2.AutoMarket = tC_12:AddToggle("Default", "Auto Bee Hatch")
            tC_1 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_1.AddButton(tC_1, false)
            tC_1 = onAutoClaimQuests_Hourly_Daily.Auto
            tC_1.AddButton(tC_1, "Default")
            tC_1 = onAutoClaimQuests_Hourly_Daily.Zones
            tC_2.AutoNextZone = tC_1:AddToggle(false, "Title")
            tC_1 = onAutoClaimQuests_Hourly_Daily.Zones
            tC_2.AutoGoNewZone = tC_1:AddToggle("Auto Claim Quests (Hourly/Daily/Weekly)", onAutoClaimQuests_Hourly_Daily)
            kl = "Callback"
        end
        tC_28 = (tC_28 + 1) % 16
    end
until fn952((tC_28 * 5 + 12) % 16, 510804476)
if tC_19 then
    tC_28 = 0
    repeat
        tC_1 = (vector.create((tC_28 * 2 + 7) % 11 + 1, (tC_28 * 10 + 6) % 13 + 1, (tC_28 * 8 + 15) % 17 + 1))
        onAutoGoNewZone = (vector.create((tC_28 * 7 + 2) % 11 + 1, (tC_28 * 5 + 9) % 13 + 1, (tC_28 * 11 + 8) % 17 + 1))
        tC_11 = (vector.create((tC_28 * 6 + 2) % 11 + 1, (tC_28 * 10 + 11) % 13 + 1, (tC_28 * 9 + 2) % 17 + 1))
        if vector.dot(vector.cross(tC_1, onAutoGoNewZone), tC_11) == vector.dot(vector.cross(onAutoGoNewZone, tC_11), tC_1) + 4 then
            ld = fn1153(type(tC_19.ZONE_ORDER), 5, 248602996)
        else
            tC_19 = fn1153(type(ld.ZONE_ORDER), 5, 248602996)
        end
        tC_28 = (tC_28 + 2) % 4
    until fn952((tC_28 * 1 + 0) % 4, 578005792)
end
if tC_19 then
    for k, v in ld.ZONE_ORDER do
        table.insert(tC_9, v)
    end
end
ka, onAutoGoNewZone, tC_1, j4, tC_28 = nil, nil, nil, nil, nil
tC_19 = 5
repeat
    tC_11 = (tC_19 * 3 + 1) % 4 + 1
    if tC_11 <= 2 then
        if tC_11 <= 1 then
            if (tC_19 * 2 + 8) * 13 % 3 == ((tC_19 * 2 + 8) * 13 + 6) % 3 then
                local tC_21_6 = {
                    Title = "Zone Selector",
                    Values = tC_9,
                    Default = onAutoClaimQuests_Hourly_Daily.SelectedZone,
                    Callback = function(fi)
                        onAutoClaimQuests_Hourly_Daily.SelectedZone = fi
                    end
                }
                tC_12 = lP.Zones
                tC_12.AddDropdown(tC_12, "ZoneSelect", tC_21_6)
                tC_2 = {
                    Title = "Teleport To Zone",
                    Callback = function()
                        if km(onAutoClaimQuests_Hourly_Daily.SelectedZone) then
                            kA("Axe RNG", "Teleported to " .. tostring(onAutoClaimQuests_Hourly_Daily.SelectedZone))
                        else
                            kA("Axe RNG", "Teleport failed (locked?).")
                        end
                    end
                }
                local tC_21_7 = lP.Zones
                tC_21_7.AddButton(tC_21_7, tC_2)
                tC_2 = {
                    Title = "Buy Zone",
                    Callback = function()
                        if kJ(onAutoClaimQuests_Hourly_Daily.SelectedZone) then
                            kA("Axe RNG", "Purchased " .. tostring(onAutoClaimQuests_Hourly_Daily.SelectedZone))
                        else
                            kA("Axe RNG", "Purchase failed.")
                        end
                    end
                }
                local tC_21_8 = lP.Zones
                tC_21_8.AddButton(tC_21_8, tC_2)
                tC_2 = { Title = "Buy + Teleport", Callback = fn340 }
                local tC_21_9 = lP.Zones
                tC_21_9.AddButton(tC_21_9, tC_2)
                tC_2 = { Title = "Redeem All Codes", Callback = fn654 }
                local tC_21_10 = lP.Misc
                tC_21_10.AddButton(tC_21_10, tC_2)
                local tC_21_11 = {
                    Title = "Anti-AFK",
                    Default = false,
                    Callback = function(fk)
                        onAutoClaimQuests_Hourly_Daily.AntiAFK = fk
                    end
                }
                tC_12 = lP.Misc
                kl.AntiAFK = tC_12:AddToggle("AntiAFK", tC_21_11)
                ka = {
                    "AutoRoll",
                    "AutoEquipBest",
                    "TreeFarm",
                    "AutoCollect",
                    "AutoRebirth",
                    "AutoSocial",
                    "AutoBeeHatch",
                    "AutoUpgrades",
                    "AutoQuests",
                    "AutoMarket",
                    "AutoNextZone",
                    "AutoGoNewZone",
                    "AntiAFK"
                }
                j4 = function(fo)
                    for k, v in ka do
                        local qt = kl[v]
                        if qt and qt.SetValue then
                            pcall(function()
                                qt.SetValue(qt, fo)
                            end)
                        end
                    end
                end
            else
                tC_22 = ka.Zones
                tC_22.AddDropdown(tC_22, "Zone Selector", "Title")
                local tC_21_12 = ka.Zones
                tC_21_12.AddButton(tC_21_12, "ZoneSelect")
                tC_2 = ka.Zones
                tC_2.AddButton(tC_2, "Values")
                tC_2 = ka.Zones
                tC_12 = { Title = "Buy + Teleport", Callback = fn340 }
                tC_3 = tC_2
                tC_3.AddButton(tC_3, kl)
                tC_3 = fn654
                tC_22 = ka.Misc
                tC_22.AddButton(tC_22, tC_2)
                tC_2 = ka.Misc
                onAutoClaimQuests_Hourly_Daily.AntiAFK = tC_2:AddToggle("Title", tC_12)
                j4 = tC_3
                tC_9 = function(fo)
                    for k, v in ka do
                        local qt = kl[v]
                        if qt and qt.SetValue then
                            pcall(function()
                                qt.SetValue(qt, fo)
                            end)
                        end
                    end
                end
            end
            tC_19 = (tC_19 + 3) % 32
        else
            tC_2 = {
                "bmrulxs",
                "qnkdvt",
                "ubdrg",
                "bmmnmgxfb",
                "wbnglqc",
                "azqdyi",
                "yeoik",
                "uceuukwbpsb",
                "jhlvsas",
                "rrguxfrusuo",
                "unmufqyw",
                "pcj"
            }
            local tC_21_13 = tC_2[tC_19 % 12 + 1]
            tC_2 = tC_21_13:len()
            tC_12 = (tC_21_13:gsub("(.)", "%1%1", tC_19 % 3 % 2 + 1))
            if tC_2 <= tC_12:len() then
                tC_2 = { Title = "Enable All", Callback = fn562 }
                local tC_21_14 = lP.Misc
                tC_21_14.AddButton(tC_21_14, tC_2)
                tC_2 = {
                    Title = "Disable All",
                    Callback = function()
                        j4(false)
                    end
                }
                local tC_21_15 = lP.Misc
                tC_21_15.AddButton(tC_21_15, tC_2)
                tC_28 = fn707
            else
                tC_2 = fn562
                local tC_21_16 = tC_28.Misc
                tC_21_16.AddButton(tC_21_16, tC_2)
                tC_2 = tC_28.Misc
                tC_2.AddButton(tC_2, tC_28)
                lP = fn707
            end
            tC_19 = (tC_19 + 3) % 32
        end
    elseif tC_11 <= 3 then
        if tC_19 * 80666449 + 7 + 6 <= tC_19 * 80666449 + 7 + 6 + 6 then
            onAutoGoNewZone = tC_28({
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau",
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.lua"
            })
        else
            tC_28 = onAutoGoNewZone({
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau",
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.lua"
            })
        end
        tC_19 = (tC_19 + 15) % 32
    else
        tC_11 = { "eda", "tccmfrnr", "nzm", "qzzsekmkb", "onfc", "pohsd", "dnpfewsak", "ggy", "uvoaurayh" }
        if tC_11[(tC_19 * 53 + 11) % 9 + 1] < tC_11[(tC_19 * 53 + 11) % 9 + 1] then
            tC_28 = tC_1("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau")
        else
            tC_1 = tC_28({
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau",
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.lua"
            })
        end
        tC_19 = (tC_19 + 15) % 32
    end
until fn952((tC_19 * 7 + 9) % 32, 678658481)
if onAutoGoNewZone then
    tC_28 = 7
    repeat
        tC_19 = (vector.create((tC_28 * 6 + 4) % 11 + 1, (tC_28 * 11 + 13) % 13 + 1, (tC_28 * 1 + 17) % 17 + 1))
        if vector.dot(vector.floor(tC_19) + vector.ceil(tC_19 * -1), vector.floor(tC_19) + vector.ceil(tC_19 * -1)) == 2 then
            kV.SetLibrary(kV, kV)
            kV.IgnoreThemeSettings(kV)
            kV.SetIgnoreIndexes(kV, lP)
            kV.SetFolder(kV, {})
            kV.BuildConfigSection(kV, onAutoGoNewZone)
        else
            local ug = onAutoGoNewZone
            ug.SetLibrary(ug, kV)
            local uh = onAutoGoNewZone
            uh.IgnoreThemeSettings(uh)
            local ui = onAutoGoNewZone
            ui.SetIgnoreIndexes(ui, {})
            local uj = onAutoGoNewZone
            uj.SetFolder(uj, "OuroborosHub/AxeRNG")
            local uk = onAutoGoNewZone
            uk.BuildConfigSection(uk, lP.Settings)
        end
        tC_28 = (tC_28 + 5) % 8
    until fn952((tC_28 * 5 + 2) % 8, 510804476)
end
if tC_1 then
    tC_28 = 1
    repeat
        if (tC_28 or not tC_28 or not tC_28 and tC_28 or (not tC_28 and tC_28 or tC_28 and not tC_28)) and (tC_28 and not tC_28 or (not tC_28 or not tC_28) or not tC_28 and not tC_28 and (tC_28 or not tC_28)) and ((not tC_28 or tC_28 or tC_28 and not tC_28) and (not tC_28 and tC_28 or (not tC_28 or not tC_28)) or (tC_28 and tC_28 or (tC_28 or not tC_28) or (tC_28 and not tC_28 or (not tC_28 or not tC_28)))) or not ((tC_28 or not tC_28 or not tC_28 and tC_28 or (not tC_28 and tC_28 or tC_28 and not tC_28)) and (tC_28 and not tC_28 or (not tC_28 or not tC_28) or not tC_28 and not tC_28 and (tC_28 or not tC_28)) and ((not tC_28 or tC_28 or tC_28 and not tC_28) and (not tC_28 and tC_28 or (not tC_28 or not tC_28)) or (tC_28 and tC_28 or (tC_28 or not tC_28) or (tC_28 and not tC_28 or (not tC_28 or not tC_28))))) then
            local t2 = tC_1
            t2.SetLibrary(t2, kV)
            local t3 = tC_1
            t3.SetFolder(t3, "OuroborosHub")
            local t4 = tC_1
            t4.BuildInterfaceSection(t4, lP.Settings)
        else
            kV.SetLibrary(kV, kV)
            kV.SetFolder(kV, kV)
            kV.BuildInterfaceSection(kV, tC_1)
        end
        tC_28 = (tC_28 + 1) % 4
    until fn952((tC_28 * 1 + 0) % 4, 578005792)
end
tC_19 = 0
repeat
    tC_28 = {
        "zlkyi",
        "jmwnrbyqwf",
        "gmbcxekqe",
        "jvyvpe",
        "lnkmosejuzc",
        "livi",
        "fnyotnmmdmcx",
        "ixjqfxtbbka",
        "jbrgdjpp",
        "gznu",
        "opvhk",
        "fwoue",
        "qolcdnbyau",
        "zpgt"
    }
    if tC_28[(tC_19 * 56 + 26) % 14 + 1] < tC_28[(tC_19 * 56 + 26) % 14 + 1] then
        task.spawn(task)
        kG.SelectTab(kG, kG)
    else
        task.spawn(function()
            local qM = kz()
            if qM > 0 then
                kA("Axe RNG", ("Auto-redeemed %d codes.").format("Auto-redeemed %d codes.", qM), 5)
            end
        end)
        kG.SelectTab(kG, 1)
    end
    tC_19 = (tC_19 + 0) % 4
until fn952((tC_19 * 1 + 2) % 4, 578005792)
if onAutoGoNewZone then
    local tR = onAutoGoNewZone
    tR.LoadAutoloadConfig(tR)
end
tC_28 = 0
repeat
    tC_19 = {
        "dekqvv",
        "mfxfz",
        "tln",
        "klux",
        "binfbyzcyu",
        "gvulzexj",
        "knor",
        "aapvpvpupc",
        "awtdtj",
        "tupzbkdhhmwq",
        "vlus"
    }
    if tC_19[(tC_28 * 66 + 14) % 11 + 1] < tC_19[(tC_28 * 66 + 14) % 11 + 1] then
        kA("[🌲] Axe RNG", "Ouroboros Hub loaded.", 6)
    else
        kA("[🌲] Axe RNG", "Ouroboros Hub loaded.", 6)
    end
    tC_28 = (tC_28 + 7) % 8
until fn952((tC_28 * 3 + 3) % 8, 544454170)
