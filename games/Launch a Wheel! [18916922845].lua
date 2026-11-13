local SeasonpassMultiplier
local gz
local Position
local gF
local f_
local gE
local fZ
local gl
local gH
local f1
local Throw
local Claim2
local CurrentSeason
local gd
local gA
local gD
local gg
local fY
local gk
local gn
local f3
local fn921
local function fn13()
    fZ(true)
end
local function fn88(cc)
    gD.AutoEquipBest = cc
end
local function worker2()
    while true do
        if gD.AutoSeasonPass then
            local hK = f3()
            if hK then
                local hL = hK[CurrentSeason .. "XP"]
                local hM = hK[CurrentSeason .. "Resets"]
                local hN = hK[CurrentSeason .. "ClaimedRewards"]
                local hK_1 = hL and hM and fn921(type(hN), 5, 248602996)
                if hK_1 then
                    for k, v in pairs(gE.Rewards) do
                        local hK_2 = fn921(type(v), 5, 248602996) and v.Required
                        if hK_2 then
                            if hL >= v.Required * SeasonpassMultiplier ^ hM then
                                for i, v in ipairs({ "Free", "Premium" }) do
                                    local hK_4 = hN[v]
                                    local hO = hK_4 and hK_4[tostring(k)]
                                    if not hO then
                                        Claim2.FireServer(Claim2, v, k)
                                        task.wait(0.15)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            task.wait(5)
        else
            task.wait(1)
        end
    end
end
local function worker()
    while true do
        if gD.AutoBuyWheels then
            local ik = f3()
            local attr = gl:GetAttribute("CurrentArea")
            local im = ik and ik.Cash and fn921(type(ik.Items), 5, 248602996) and attr
            if im then
                for k, v in pairs(gA) do
                    local im_1 = fn921(type(v), 5, 248602996) and v.Price and not v.Robux and tostring(v.World) == attr and not ik.Items[k] and v.Price <= ik.Cash
                    if im_1 then
                        gF.FireServer(gF, k)
                        task.wait(0.1)
                    end
                end
            end
            task.wait(2)
        else
            task.wait(1)
        end
    end
end
local function fn269(bK)
    bK.AddButton(bK, {
        Title = "Join Discord for Dupes/Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = function()
            if setclipboard then
                setclipboard(gg)
            end
            gd("Ouroboros Hub", "Discord invite copied.", 4)
        end
    })
end
local function fn303()
    local GameItems = workspace:FindFirstChild("GameItems")
    if not GameItems then
        return nil
    end
    return GameItems:FindFirstChild("ThrowArea")
end
local function worker3()
    while true do
        local h4 = false
        if gD.AutoPotions then
            for i, v in ipairs(gD.SelectedPotions) do
                f_.FireServer(f_, v, 1)
                h4 = true
                task.wait(0.1)
            end
        end
        if gD.AutoFruits then
            for i, v in ipairs(gD.SelectedFruits) do
                f_.FireServer(f_, v, 1)
                h4 = true
                task.wait(0.1)
            end
        end
        if h4 then
            task.wait(gD.UseDelay)
        else
            task.wait(0.5)
        end
    end
end
local function fn325(b9)
    gD.ThrowDelay = b9
end
local function fn356(ca)
    gD.AutoTrain = ca
end
local function fn535(cb)
    gD.TrainRepDelay = cb
end
local function fn543(ce)
    gD.AutoSeasonPass = ce
end
local function fn600()
    local Character = gl.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChild("HumanoidRootPart")
end
local function fn627(b_)
    if f1 and (b_.UserInputType == Enum.UserInputType.MouseMovement or b_.UserInputType == Enum.UserInputType.Touch) then
        local jc_1 = b_.Position - fY
        if jc_1.Magnitude > 4 then
            gH = true
        end
        gk.Position = UDim2.new(Position.X.Scale, Position.X.Offset + jc_1.X, Position.Y.Scale, Position.Y.Offset + jc_1.Y)
    end
end
local function fn681(d7, d8)
    if type(d7) ~= "number" then
        return false
    end
    if d7 % 1 ~= 0 then
        return false
    end
    local d9_1 = bit32.bxor(d7, 1540483477)
    local d9_2 = bit32.band(d9_1 * 403 + bit32.lshift(d9_1, 24), 4294967295)
    local d9_3 = bit32.bxor(d9_2, bit32.rshift(d9_2, 13))
    return d9_3 == d8
end
local function worker4()
    while true do
        if gD.AutoThrow then
            local hs = gz()
            local ht = gn()
            if hs and ht then
                if (hs.Position - ht.Position).Magnitude > 6 then
                    hs.CFrame = CFrame.new(ht.Position + Vector3.new(0, 3, 0))
                end
                local hs_1 = not workspace:GetAttribute("Cooldown") and not gl:GetAttribute("InThrow")
                if hs_1 then
                    Throw.FireServer(Throw)
                end
            end
            task.wait(gD.ThrowDelay)
        else
            task.wait(0.3)
        end
    end
end
local function fn815(b8)
    gD.AutoThrow = b8
end
local function fn865(co)
    gD.HatchAmount = co
end
local function fn869(cd)
    gD.AutoRebirth = cd
end
fn921 = function(dZ, d_, d0)
    if type(dZ) ~= "string" then
        return false
    end
    if #dZ ~= d_ then
        return false
    end
    local d1 = 5381
    local d2 = buffer.fromstring(dZ)
    local d3 = 0
    while d3 <= d_ - 4 do
        local d4 = buffer.readu32(d2, d3)
        local d1_1 = bit32.bxor(d1, d4)
        d1 = bit32.band(d1_1 * 33, 4294967295)
        d3 = d3 + 4
    end
    while d3 < d_ do
        local d5 = buffer.readu8(d2, d3)
        local d1_2 = bit32.bxor(d1, d5)
        d1 = bit32.band(d1_2 * 33, 4294967295)
        d3 = d3 + 1
    end
    return d1 == d0
end
local Rebirth
Position = nil
local fV
local fX
fY = nil
fZ = nil
f_ = nil
f1 = nil
f3 = nil
local f4
SeasonpassMultiplier = nil
Claim2 = nil
local f9
CurrentSeason = nil
local Train
local gc
gd = nil
local Roll
gg = nil
local gh
gk = nil
gl = nil
local gm
gn = nil
local go
local gp
local gq
Throw = nil
local gt
local gu
local VirtualUser
local Spin
gz = nil
gA = nil
local gB
gD = nil
gE = nil
gF = nil
local f2, ge, gj, TweenService, gv
gH = nil
local gI, gK, gN, gO, gP, gR, gS, gT, gV, gW, gX, gY
local gJ_1, gJ_2
local InventoryConfig
local gL_1
local f8 = (buffer.fromstring("0,,(+bww?1,0-:v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w*=4=9+=+w49,=+,w<7/6479<w\x1e4-=6,v4-9-cUZXkp){UK9_1[g*: 9++=,1<bwwailhhh`nmk`holL2zUS,OaA.J1uT+J}_N{NNHSXON_8%6oyEA}Z?9ERv[?CoAw{(b),80vS@~JKPzNJVO}ZLKK$DQ&B(X844QX)cW%6SS:1k8$1O$o@[LzL[_L[uN!7C5sL.C66a^,CCttx_o#g?b{H$[v]ITVt]]H^OGUvz%Jw4BN@4+0[UX(z2tpJn35dY*_k_^E~XKCDuJ?AG-aIy_K$DC%rwZtltRcVgH(,a;`sT^_Bx_R[LSUHz%K2p:-iJkQWz.{}B7?LMFsn(o@[LzL[_L[+Q(2SYml=]P]*__DCQr@.UN%RM/!S|HIR{OHTINdpWP&C7FcIsLe$6x3rJ^/mg2[/ZXyMLWlJYQVoc@+7W&}iWzE5[d-e.E3!qQdhx0{w}LQ]jFEF[\x1azRUe;NWq&3B9;:*/yjz0zX$/U]nkII]mA@HGId+9FQ2%I1pm+]CjwDN4Q$=}&J?jv@HUgNSbIHMEWn48@J&iwL*K3D;kSUSKbLA9pDE^bTPB^_aPBBIom8}b;%nQx}0qdVI_}/xC~NLAHyT]HRR4l:*_l,Bq}_2O)C8]1;(JB0Rw[ZZQW@9eJf,@3ZC+it6G]8HUj+LzuYwMrFa@CDPIQrz)A}us,(a3=Uq_WZ{4Yw%V$i)+g{ONUyV[SW{YRS_L_W_TNIW*w1O[j&DyDT,mO^U@EO3qcI._Rpk3Kh]xD!jR;#O=(@xpl~UXNInXOKT^Xa.c*}4Du(IU+o8L#=AJQNS`BBVj$HC[{%lEqm9*!Vb*:GhpSFeiWhcs?/5,>>(9$)wbbt|y}}}u{x~u}zy&ET%/1zM@YI_V%Yr[*)VPHP.$v2fj.1DHon&;/Go[ZAmBOGCoMFGKXKCK@Z]w1YQ@Tdiv,ywgQXQW@QPrFA]@GNSa#s#grR?*s2t$*Pi{ZY^JSK_k2^pY:hp6;.NKFQe6%HbwB)CyMLWj]ZQJLP=YMZE:){XOnGj.eukgD(i'0H&12Y]e2}x];W!e9B:c;Uqh09{=st|HIR\x1d{OXX\x1d~UXNI]@=}Jwk8X:iUv41aPDY[eUWZS.rLG?eFO1fPh46ndwu3[pve@@pEFz4d%^vf?m8eRj*4Xn2D35}.crORJC1}F.jlN}v:FC2HY2tmD?HS:Y4`OCKHP&&?W_OAgDrIi-pD2NQxG!i1&vTTO+E5tne$K5vmt1EHM5TzFsndR=`FU]ZYoiIkcjlg&fEn@O&DE,9{JZPr^__TRE$a)gEP?N?],]45fX(acORJ <<8;rgg,!;+':,f//g.{,\x02 \x0c/1\x1c9}KBKMZKJ~AZGA@]WAH5p*detRQY5sLPJWJLMFBVZ-AuregpVtrL(V%kvTT@d(EP/uGq%RFdSi@r:AdWys;v@I@FQ@AcWPLQVeQ[&BVejn103#{FW_A@_Z3rvtpHCNHbw=9@m$MdC$2:'VdQkBf*gNbHdh2^jhCdH;+sVVfSP:02XNP[I=r#c-B4nG{?38*.YEyh&6@fMyOCwUdAR[:J7mOXPTHP0NQ9i-@%l$2y7xdBr)>)i_[80:5mTd%Or0P#Xl=c2/wU^_S@S[SXBuYXP_QaZk3$n@hUDLRbNOGHF,q%ci7_[kS)GnbGGgQLSGLTM?uSbBa^oHUb,pf[F^W[uLP/eYBbLzG1.V]nFyDYAHYAk&NaZQ:U]n0uVxL1yDU]Cs_^VYWz(ko0Y]gg3=w[VS_NM_[KR&9;m.;72MqF]m\x13>$48%3w>9!>#2w48'>23yCU]@Y/A=&+VN}AUcD!gGw2PSBTM&6/FE;I4=vFnTo-j{ARM!d@p-j][lkR*sOjXEnLVPFnLUFNFMW/i*r0Adf[F^W^6nUORoCy8KP0hY`OTCuCTPCT6Y7Senv(gzcOG@mnGfw8WiKt%VlEyI\x1c:)!&h\x1a-8h\x0c-$)1h`;acDYBQDE_JGjGBLEFNE_g]ZGJGZG[\x08jQXI[[AFOgSRIvJG_ROKCtCQGTBeGLMARAIAJPwAVRMGAu^WDWUBSDRg5bKgPPkzXInXOKT^X=Y,{dU_t=vI.pDS(M*7vg:8Y8.&;ABm(3u(zym@LcyJ][FLNCnCFHABJA[nSNV_*[R+You*1R4vQIZQKPMF|PQYVX6jIKCOZG]FLkGDGZ\x1bmPHDKJLAwJJQuDWQvTYYWTV^a$;iP#xUoM@@NMOG4$HNE/KeCUBy^@EDdI@UeFnZ[@{G]@X*=q=bqqXMZQ|^^QI(hnFulCFFnCXOI^CEDBbDW_X_XQuYXP_QkII]b!9#!Q[X.F{TSY{TONI~UTQYcTSXCEYbTCGXRTeys_B^UBlz[h@mZVSrTk]R2We!zXORMZO^_Q!vIbNWH$yYkr!8sRgSRItIJJeJGUU`KFPWpFQUJ@FnMTSNnXOKT^XrP]]SPRZlTXVe^P_CtXYCEX[dLWKBNnFGJVNuS@ORQ@SDOBXjEHCDY{DBE_bXKTo^B*,FTgSRItCDOTRNT@]_`upISpOtBEERYCvERV-89$!.%1!29}YCSs_^VYWz^DTtXYQ^PzNOT\x1boIZRU43:(3+/*?4iRH^UE!iXm4)%>(93(1>sGF]t@G[FA$6$!$3'13?bVWL\x03pSJM+)6)-22@edAAgPQQJKeDG@TMUq-k_^EyZCD}dAAqJBBI@SPEECSIWX`TUNuS@HOtQQaZRRYPk_^E~XKCDxLMVqXMZQfWJFa[HW{NMxFK[GgAWvW^SK^HYYDCJ^\x00\x00\x00\x00\x00\x00\xe0?wUXXVUW_333333\xc3?xEX@IzgVqS^^PSQYzXUU[XZRdSGC_DSR\x1a855;8:2hIJMY@XzVW_P^JtXYYRTClMNI]D\\p_EXpwzj}TZ#jl7*&. 1*{TNS{|qiSXVST]~DCJAHeLLYO^tEVAJPinsert`QBU^DzGZBKuZW_[eXE]TrORJCqLQI@|S^VR74%3*5.=4+{W_XR|XBRtXPWZLDYcAAU\xb4T\x1c\x01\x1a\xb6s iXEIpZVWkWZBG\x00-\x15~DWHaKGFuQE@vbvb\xb7Jl\x9c{As{TIaMT&/$ 5*\xcc\x01,\x01lvb\x06\xaa?&M t\x13KU_AQ"))
local f5 = (buffer.fromstring("\x13607y?6+y\x1d,)<*y87=y\x12< 5<**y\n:+0)-*wy\x1d,)<*y.055y85.8 *y;<y8776,7:<=y87=y7</<+y>8-<2<)-y07y\x16,+6;6+6*wk_^EzFKS^CGOxO]KXN)(54A0][vad;@W5u,_XK%M/*/vBCXrFB^GuRDC7!iV?bfjt;-[1T7Zz2+$*wh6)-gB@yMLWUYLQ[kQB]U3T-qwWr}lT1gpu0M0-N$Mi/B0_pDj^_D{D_BDEX9w:o1iZGtGZDFuT8QE_NEL*J$1[xFDzXInXOKT^X[9nY%tV7@yMV!tXjr5Dok=h4Rv4xBYdBTCx_ADEeHAT9(T#&%&}/Ny$e0l_0+=&0oe],R`VAEZPV@D_h-AU{v_,0NlUbMrSTr$4k4L#gt&J=\x04)=&+ h)h\x1f --$iXK.)G2;ShP9OJD4q5NFVrCZAqLVMGJMDZ0tQ7:),/$/}^(r_,Z[m*lA&#0Uk;DbVWLsLWJLMPea*d)r1X?bt%&Fo%,nNYz$W_j{/mYXCnYU{DII@_hQ^!Hg$M}g5?}cymjg;2U]-(h^YYNE_jYNJ_;h{$Zs!6F^kYXocKE.Sg-zsTP47&0)#aDCuEK$PKY]-i+H1ckB_HNE3]{pu^7\x1c:)!&h\x1a-8h\x0c-$)1h`;aUC6iRO$dy&6w4wUP[k_^E\nxOHCX^B..^QFCZtr/U{#hg:=,Ej)EihcWPLQSxY0y#aSLah[1e[MRN%m;Tf^VF@{XpI]@B|LNCJf+B5328]_8b?_s:1pmd()$CWwWnLAAOLNF-EiE4cG!syMDcv}JVPX:MkNetYnAZM{MZ^MZKi}-u57W{Ba;ymPP**Ye7XeJfDDPhp(AqLOp.CTYI-QI:BrzWQvF^2+2Aiz@SLjsB?WM=eyZpyhK!8(7^57sonseRY1AfPXEw^CrYX]UJBtHAt+/Q,9rbdoRS%kMCzNOTkTORTUH#ykpp8N3)#hCij_x7GnM-_t@AZfPTFZ[eTFFk(@tf[.a+N+8H:DUXM2`VGeR_FV{7#I2#^dvQh3qAJ5I7uqJzI.GSNLsfc}=kJEu!EHOkS7_zB8)o$)c:,hvBCXcEV^Y$JMmbzyQKEzc}G:x%&X9vibpU]XMfQCUFPGgQFB]WQ?+RG?@_HC^sZdBQY^Y^WcUBFYSUUSpKdjXoXu,2&R#WoBJCBCjlG!fj$dQ0uyN*=KE#F.pr_R7iMWGAAm6:mV+F/=7jNH?$Vh2gbPcnRcthrUSNJDxKC8*ahRb%E/8yw7z&+7{%QZHVat-7NRp[Vm!*t3=@:?7XC&?0)hZLDYU&atM#dUbLdg1)-?v7;MtE142dtEVAJPTQs#0AKpoHR1a,b*Z%;CNA^0,,(+bww<1+;7*<v??w>k<\x120\x1c?!\x0c)`FU]ZUt:3wn=Z9@YjDnz;dkyO(RxiHKLXAYyu0x}I[qq}63^}my*,+*UkJINZC[EYHeHfi-zU%}K0,ZGR0yymZWN^HxmL{N5KtMWt,8l0y:=%N-lQ@HVhEa!}ymGT8Jo4EfA6oCT%CpXC_VZzRS^BZdUgHkHs)T[Ce(nhtnIORVX+Uku1y{WNqtd8yCW+0{RGP[wV_RJsdcc/!n0A/bHgrb#}KBKMZzOL/Q[I+g_D9fdWEc5;aZ@V].N[P++{pmUxg$cnh$4#j|ZLmLEHPK%s%E=&Zp[/qdBiJ|5~vGiHyw[);[y#)bodv*0eRoC^BI^~MHEY_g2ISiA1pl^GnsGF]b^SKF[_W`WES@V@q]r!V/$6zHy)1G!=c@PwiAZTSn@WdPQJ\x05fIDLH\x05dFML@S@H@KQVuWE^pl06b=%*jKF4[V}!W,2pDE^bAX_GBYX,d$}YGWDjukZI^UO!bfRHrDbUBmi7%vtpTS/i}LaDev7_pL___ols&QEXZxQQDRC)#S$H#J(9NqRtHE]PMIAvASEV@wAVRMGAc^C[R(2w6l#QN21[Jh,-~QJ]k]JN]Jwg*5]]7Xo;RQ@VO4!@Trnudobo]@s9\x1d4!6=u\x11094,u}&|hCk8gb_BZSfSN(Y2MBKb:zJaUAGPp!+__sdgReNla}rf[F^W[7=SYyx,N1xWI#zNOTh^ZHTUkZHHj1N(pUUb]XUTCf}Y]8iwzNgBBuJOBCTUu:7_pSbLO^HQwmdwjc)OPm(La@CDPIQ@^LQk}KQhEGL^[z!A-d%270A@0QxEX@I:+VQ.9zOG4[CmZNJVMZ[5ii#!:3h!wAEWKJTEWWgKJBMCsEMPbKVgLMH@oJ;,qVN]VLWJAk]JNQ[]iEXDOXxKNC_Y5sD\x149-6;0x9x\x0f0==4ycT@DXCTUGU[Yxy6rORJC)FC%/^R-GcsWE_XQr_DSUB_YXsGF]\x12pGK\x12eZWW^AqED_cUQC_^`QCC4#FID6uhXrkt}suZW_[#^*,aq}7okDIAER1wt1tS8{YS[zu9g;BkA^1cEV^YeRGsR[VNaPMAw@AAZ[M9uyMLWjWTT{TYKKK^]SZnYw(l!57gDVV]`VAEZPVJ@BGR@DN_PROc_EX@dREA^TReRDRCxYdGV@Y`fagWkD1%fXiqPST@YA-:ZC0kJINZC[9hMD7<.eQ$U],z0pYL[PyUWMVLdFFRrDSWHBD}LQ]~[HYYLMq@EEHOFmDGUo[ZA\x0efOZMFdPQJcWPLQVeLYNEiHALTVOHK^_ABNLhJJ^nBCKDJ}_ECUu^DUBdFWpFQUJ@F}_ECU|UQFU}[M-LiBc=uPPvA@@[ZwRRbYQQZSK_B@~NLAH{F[CJf!bhlIIyBJJAH@BBt^l8ZN|PX_ZWb(6yMLW{P]KL-0<4:+!R0kJINZC[_K)=3>693*\x00\x00\x00\x00\x00\x00\xf8?\xcd\xcc\xcc\xcc\xcc\xcc\xdc?b@MMC@BJkIDDJIKC{YTTZY[SyU]ZVrlgjHEEKHJBeQPKwTMJ183#0=O0xZWWYZXPxQDSXuWWnA[FnidpJYF3R6C_@ROKK`QFBWFseIPv{VRgFEBVOWvZ[[PVAbMWJbehsRQVB[Co^IMXIdE^CLS#%1<20%> >6,`F]DXQpHQITeAMKIq^S[_{ldp[qL]UKxEX@If[F^Wk_L@H56'1(vSTI8.&;lXOOdXUMrH[DiMWG~RZ]bKJP>( =q[WVl@HOrPPD\xf7\xff\x19ZCU]@7>56,%VCC.',aEB>)<(#1\xa4\x01\x15\x0fD(8<\x192s\x1e\"\x14\xa0W6O"))
local f0 = (buffer.fromstring("0,,(+bww?1,0-:v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w*=4=9+=+w49,=+,w<7/6479<w\x1e4-=6,v4-9-`TUNqM@XUHLDsDV@SEwMIEA&H,6vj6jke@:IF-fbm[/EwLBMQfJKQWJI(aAg8M4TzwYNW,%#6^-w6y*#d_lq=YlzNOTxWZRVzXSR^M^V^UOHY:MESqeyG1SNGMz5R!lqvb@KJFUFNFMW`LMEJDGA3m@F/,j:IzN8-J)4?Fl$u=jBYEL@oBAIJ.bK(&ORONx^Hk&G9%opyIq/Le]02tlpYL[PyUWMVLe.!IDqhRylMiZaExx2)l0DFiN2%w-dBQY^Y^WcUBFYSUp&RH})_h&!EYS{Huo5wi48{lraFLMPjM@I^AGZ:=g!xUv[:#y:jVW/#YHNV&)dVdRVDXYGVDDdREA^TR1wGuE_x@&job[sM10HRQpPiVJPMPVW5!o(+{FcBiyg(W]8Up]*}OYB0gQYl#aLTBXYb_IH_^2RFjDT.MXWbYTj}lPHa[+9+1E%;(>)?9Tf3.z/fJkr$2c6)fa#M)69=r6U^n{C:{G]@XkJCNV/4zaPR+y@iP$z.V2Yy_Pe];_xw|ZIAFzMXlMDIQM/C9mnw30LXaMnuE(/]fptu)9>%#-;%(-*&rhX&4j%1SLcME(?:Xj$[:BlNMYDFyli)cU#fhy{)=&9%*wBE3,Qdg8OtcR;xNF[i@]lGFCKOKTfImdXoFBE}t^6r:PP+h4vBCXt_RDC#HxDpy-Sn;tX5hEO[@^4j2gA60r\\UTI^|NRrUH^OHJcY4W}%fD{08M,b6+s;}i}i+)Rnq5VIPaD/6QJ0+0C(9DSuJ!PcY)mYXChME@U~I[M^H+Md4nx@f6tZX}T$(.{{%'*33*4/:1vx3d5z}Wy2DPod)JkykN0);\x03*?(#k\x0f.'*2kc8bW&#&nY^p^Xhhv?N{iVt@AZw@Lb]PPYFFpQS0p4z*;Tl};&rb[FD@V^CyyTpz0r]a+a4c?+,Lp.X-t2{%p4i\x18410u\x1a ':7:':&u\x184'>0!%9460ussu\x18\x18gSRIcWSOVdCUR[eo#PI)cy=yZbTrx?Ep]VDN(3qL&PTdhGrcUhP&lBoV$0AvRt@H:-mdW)d7Tl@Or04+noOoDKbVax*a)b1lNCCMNLDUq}DGe1jfzP/.WQ)MOXk6EFlXYB\roXT\rzEHHA^t:Y.pc:gK/kTg0htkLYL]{WVLJWTT]JU=/jzGFE]aQT?@apQRUAX@ru3eLu/%[NR1;;kR$)a$5UQg{aF@]YWLhkboknUpdy4dm})51ONi1bGGwLDDOF!8BQS3hks*.]mwZx,do{c^C[RE__KE7H9OPijNzSlKD7d90O7v5JZ?,Gd]Uc9N{*-S]M-OOYZ;Yw}=tQQaZRRYPhDHxX;L*Fj{G@gA$f_gtRDShOQTUuXQDeaLC66+d[36^L.bxHYNNEl^Bza&VHY)NCjlQY)()UFqLQI@H?KDdrRls%wL_ALRczKZFChKIAMXE_DN~XKDYZKXODISi.=SAwDSUHB@M`MHFOLDOUsqZ/R?@y}bRP]TteQJwmA@JY1Q2s@;RAZn&*>8/y7_dAvz9cTXlhS&aS.MYNwMJCHAi{;PYj(&PuGAW,)6&H%e_TZ_XQ,z.Ft@fdW^tA#p?:[lJYQVj]H|]TYA@yQ%(cibYhz-;3.UW,-].8Of+k!JrJYn!SC{ONUr[NYR{%kSoTVfJef4ZB0hUVVMjH#bdaJp+OhC(62BL9wCBY~WBU^[]u7*1}=)V^]wWdAAaWJUAJRK4BnMU[Ru#4G%mNLDH]@ZAK{]NA\\_N]JALVpUUe^VV]T=UZ0APdY7w{2euWZZTWU]5#un0zsgT%^zu&~JKP|WZLK04_^B(G3lg:Go|&mss{0?:08s'<s0<#*zpMPHA*0+;__OiU;c5oJIG~C^FOoscWPy?4t.#]NFlbNFAARi^w8;twX-&/Cc)y]Z]Y]NQOd;+4XHGxKQve_XEHEXEY\nb_HgMYo0AmPSS9fzag%p#9ji?J}cmH@EP{L^H[MZzL[_@JL',>$+?+zW?qf+XS?rRcSBUU^wEY-mg[b}$qNnOLK_F^!K,50XFSASpFBPLMSBPPpFQUJ@F^]LZC#cCvT*Q=97%UbT]TRETUwCDXEB^3?kDIBEXzECD^OXzNTV{ONUnRHUMSgaixZ8_aVQZAG[3_*5&lbb^.>8)8%:&!-,lA^QubVWL\x03vPF\x03sLWJLMPa#AY{Z9#nd[pCK7`TUNe@HMXsDV@SE&1O:L]&.k@(#:RtoB_IH_~DWH}DUHAwFFZOeBDY]S{YRSmYXChME@U~I[M^HlXYB~HL^BC}L^^kDI[[M[{MZ^AKMdPQJv@DVJKuDVV~JKPzNJVO}ZLK`FPG|[E@AaLEPbDW_XdSFrSZWOsVVfSPlbYPm?brHOR_RORN\x1duH_k_^ExEFFiFKYY#)$6.h&*+,&$)qL]UKk]JNQ[]`V^CqXEt_^[Sy^@EDsXQ^WUT|ZIF[XIZMFKQj[^^ST]hS]RNvBCXeRU^EC_yMLWpYL[P_0uHUMD&W5UJrhL@FDcTUUNO{^^~HUJ^UMTbVWLsLWJLMPzKVZl[ZZA@`LOLQ?pyOuwUDcUBFYSUpRCdREA^TR~JKPyMJVKL~WBU^_XQoSfZ@]EvW^SK\t,+6i*x&q,{ONUyR_INvSScXPP[RzNOToSITLlIIoXYYBCuPP`[SSXQ5#+68!Ut_JGBEOc}FnHCQ)7@NN{sVVa^[VW@vFDI@q\\U@zGZBKd51bgEHHFEGOthrUSNJD\xcd\xcc\xcc\xcc\xcc\xcc\xec?`BOOAB@H{\x14\xaeG\xe1z\xa4?\x9a\x99\x99\x99\x99\x99\xe1?:9(>'ObH\n\xd7\xa3p=\n\xe7?hJGGIJH@mOBBLOMEvAUQMVA@i@UBIdFFnOLK_F^bCURTI_'>=46>;kWZB^IH}JMF][GuQVM1&h]_]_ZLHh_M[H^I%2!2%$2lIIyLOGINQIDvSScVUsBUQDUgAZC_VOUIVUpMPHAb_NFXqLAV[yDU]C`PR_V=>/9 cOG@baCXRTaNBJ]OCSgKCD\x81\xe3\xcf\xea^JL[kL$kW\xb6i\x05w^_ELB@Dl]@L\xa3\x05`\x03@T@Ta[HWpYXB81:=4?hD]:3838*7<.{_X4#1\x1b\x12\x00R39\x023]*x\nNin"))
local fW = (buffer.fromstring("/3374}hh#.4$(5#i  h!t#\r/\x03 >\x1364!JSpvJg,dixu}NCHWXGx_d^YDIDYDX\x0biR[JXXBELmJa^L_qTO0zxaA[XKirBtqr%5/bMJ@bMVWPgLMH@cZzvb[$0bX;;cJKTX2;ytyWcg60?2%tNITYTITHwTZ_^IK]N=z7sIq0Cu5nDO?$r?%Eg0+=(xNF[i@]lGFCK1puk=m9x&7G+FqWY.l_jP@8/RiuauGiF]J|J]YJ]gI_zK%xxl#y+QnLTQjfIbGp:]G(&/WjuA@[f[XXwXUGGvfL/y[s0_I-MZi#_O.OzuH+;S.R5fBEBFBQN`NRH*hK6qO:97uk]dbq(-_=4{PbVnFQXuA@[gD]ZU{Rt?{CENo^p/CccZkFk5be#QC:/15T\x07*>%(#k*k\x1c#..'j,BI1MNiGIKVif#jmrr4fA3DR.$9+##6,!u7pfWDxl6;oEr(y[,p!;GT}hmrA@?fDU`UUSHCTUDJ7fZ3U)lERQ[5c7qh##+TgdgC$dPQJcWPLQVaWd5$g7D0koG#MuvV}#}(%Bm6&TiKFFHKIAd65JvDpCy2&$MNPEb$dP=QuYF_9NI~H@]oF[jA@EMYvzqn]{47;D.guU_JQ0zj=.)bNOODBUUYBUIG}$,wAflh@-ZYrvkQgu8IH)Xn_HLYHzDCIBZoL&*hvZj%O%Yz)_abMjrK?.!cRAV]G[8,vb99m.g#SDQ^,hfx{-N,?wwyNIk]YKWVHYKKuMTLQHTQ]JcPBH6P#V@EN37pssEMPbKVgLMH@mWHh7;6yn&)p.hwcWnP@)}yEDNFCH^^K?1iz!U=oH%Rc!QI9UMUa.:}U@KYL/QwKX/bjKE,YKJ^NBd*:Xl;e}9c*Y,gJRD^_dYONYT_89PG9RmZ.$D{J?.+lE=EhaGQF}ZDA@gQFB]WQES^.:MwGeXr,%pbk_bM@HL!@tL]b-R/AD=8,wjXsYjrnCLl69+bVWLqFAJQWKja#I[,@Js(LK{mkD0_)Xsc0;)b$6t[e5tSDaO!tEODC:rA_r,VK7]?jLZMvQOJKkFOZLFtba7Elbt0#e8(N+G+wCBYtCOa^SSZEvgQV.n$51L,PGjxMsHNpUUe^VV]TDswdni^xwyYj1)Wbr]gdI8fPXEw^CrYX]UFzKh^o_b/@%4{yoVI&91!;\"00&7*'yllzrwsss{uvp{stw?HYsKQQL]WQBAA^eur3#0N9NU=@Vq)^rh)}zE^CEDB09*knG;GFt]D-7OXi?XW&tyiTIQX-^J[IF+*Nc,6dk+eQ1/9?b!F[:,$9.(z.)x7WEbhFN625nq{,*YL3li}__Krn0_=em5}+Gn#rQ4[vMwoP@#=oI_HsTJONnCJ_(+Cs)#dxU/NqH[@%|HIR{OHTINqNEi5g?IFOjG##4w7KTFRKMF]MYHI?j!/Y7nQq[h;bCx!/tKSAVBer3bpIlEq;q[M^R3IN[^_sgZKC]c?h):ZvuV-c?e2MIIX=umL|MMQDnIORVXpRYXx-j?Sil83yJK5%-9mZ]UIN8&uFkqbU7L6Bq3p:|YYiRZZQX,3xND0P]U2Oo{Ts:U^JWUk[YT];)@%6Jp7XyZ$m$g&SjANMCJ\x0fnCCTEhBEjL#V(*oE9V|M^IBXYirldW?.dczf*:=%yxs`EEuNFFMD*!-*zU$(W}OAai7}LIIDCJOWftZbAGa^$NpS&DJeQPKtHE]PMIAvASEV@LPC(:W 56814l?^lz4DHqs0oBAm3],`]@XQ-BTE}oX4rKHQmH=*JnrTCuHUMDqq}s+nTFY+Zf@E;j^_DhCNX_?I6f=/R;,Yb#&Yc@BJFSNTOEuS@ORQ@SDOBXfIDVV@Vv@WSLF@XP71N{jYfPXEw^CrYX]Uc:W6d4}oCA\x0e43.#.3.2a\t4#a-. %$%omBGMEl[ZZA@\x1cOtWrWb%?rlPQ[SV]KKN@Rp5vHNw$&ZvTYYWTV^2x@T/dn;-[NyuTWPD]EUN?dOg9Z/4HgY`FPG|[E@AaLEPKAV,S^xuWZZTWU].e/5v&.oFPjdPQJ\x05`TPLU\x05g@VQ\x05u@QvBCXeRU^EC_V!H[RV7f=315<19,93axfFU$h_qGOR`ITeNOJB*pjL68i~*2ai!kXI$EJPZHnyVLQy~sB3ong8p3U+dSFZ_UWBSReBYDWQS`]@XQzQHLu:9FN*JY? 4(=-wbeA[als{O%MDO^mHMLYvZa66idUn_BNnH[TIJ[H_TYCjv|PMQZMhS!S&urMtRDShOQTUrDSWHBDvBCXsV^[NeR@VESbDW_X_XQeSD@_UStg=vhh`+'8!-,ia{ONU\x1a|H__\x1ayR_INzLELJ]LMyF]@FGZdR[RTCRSgXC^XYD-.?)0P2TUT/bL4uPCZTCVAU@yyC=bASSXeSD@_USxM}_Ni_HLSY_y(bbDRE~YGBCcNGRrFB^GuRDCbm2IpJMP]PMPL\x1fwJ]kM^VQmZO{ZS^Fb@QfJKQWJII@WqED_\x10bURYBDX@xNF[i@]lGFCKtIXPNnXOKT^XoEIHuRx{5CQEqSBwBBD_TCBS[PB=aM}C9Q&TYR@YYFyxS_fkO]G@I}ZWBKeLYNEl@BXCY8375:6=2&8=qMWJR!sAx@]4!&%C64y4t;mQKVN}\\UX@~YGBCrYSRSlPJWO|]TYA>!?-):0>2;yPERYuT]PHwUUAJuId;#r]PBB\x11b]^Ez]CFGqVTR]kc)}l3)Y*|HIRu\\I^U|YYiRZZQX|YYnQTYXOxLMVmKXPWnRHUM{H_[}LQ]eHKLEp@BOFwZSFoJJzAIIBKe@@pKCCHAcJKQ.8;7e\x9a\x99\x99\x99\x99\x99\xc9?oXLHTOXYc^D_UX_V|_FApbW9uYQV%3I$v?t;Xid-gHRO\x0bg`m|ZLmLEHP\x9a\x99\x99\x99\x99\x99\xd9?o[ZA}^G@mDE_HQ}WrEHQAW/NMFWJKEQeXE]T0Pl@AAJL[uTWPD]EvS@YW@PxTUU^XOpQRUAX@jKHO[BZj]ZQJLPQBHJL@j[H_TNyH[LG]kZI^UO=:<' )c@Y^!{G]@Xc^C[RgZG_VhUDLR~C^FO 5681tX[XE# 1'>SEMP[MEX3%-0\xdb\x96s*\xb3\xa0GC}ALTLVDD{W_XFPXE\x1f\x196\x05~TXY~SZOy]GWnBJMbXY_TF*!3f`gtRDwST1&avyn5-:7u$\r^c%\x1cX\x96f"))
local fT = (buffer.fromstring("lXYBnALD@lNEDH[H@HCY^g(pco]/.awl:nhbAETAON$Mbs.c1\x06*5, 6e1- e,+3,1 e),+.e1*e<*07e&),5'*$7!kfF5l#owCBYrW_ZOdSAWDRF0r3J.Z,gjv@Z#9VAw$s.s3mew?;YjIKCOZG]FL|ZIF[XIZMFKQAQ6}wYBLL&uof}sjg.ppyMLW{TYQUy[PQ]N]U]VLKuD5T.UBFd-Xb7AO!;^5$d{ONU\x1ar[NYRpOy,!C:[}VvtrgcXIF*gLUI9lZ2kO;${LZL]fGzYH^GIJ%i]8dOIY:j2?Cxi*hRTGc.Nw,r2oKYCDMy^SFO9J=Lp?bC}3^,fC)Cymgm?3_pCQBfmnLLXxNY]BHNBP@9[C/$nWM*0sgXE#2@v^_%O@GcvUW_SF[AZP`FUZGDUFQZWMGj&JOZrgcVcARwWVa`TUNqNUHNORZaj9]Tqq(dnoGP2D*HNrG=}oh2XoL@BOsOBZFQuuPOCb](ef[1P#E/l^@9s$G7jT(bVWLqFAJQWKAPi;r-r/n[5D,6NwucnwY}Xx=O{YTTZY[S@DB9A/3@d-1*CmbHl$hqGBgnw-rKJ`ABEQHPo2AO/X{q9s6^Q*fk@%;=Q*o:3BUZ&mq{WJV]JY,v]F_?FI(]RARu:Z^-3[z!d]vkCiKFFHKIAi80cU{-*?,-}MoFt0-kclA#Zfr=[~QKV~ytA%!tLw!;_2Kd#=W)jr9Dzq4q/BK,cRAV]G5SE9M!OXIPtbp!gdr@4B*6=6rLxfvN[G@BC4{^S=7DP:h$qM$^+H[(P2-XOv}cQwUDqDDBYREDUN4pV7-(/XEjE(nPuDRJK]YzGZBKbW;i[obWgE/lCBB^cER@Cgg8$2LasnBJMxdy&B?%,&M-$_Ge:t5zb9TIT(%XCz8lXYBy_LDC!/+!maQ%-K27;-NAIX_nI4;1iSTIDITIUrIAAJC(L.r=,v1zDq4+&vO=1hIJMY@XGv0:1E:J4FZY_uMG((u,pjcP)Hy_H~C^FO:k=F,J_FcJHTyeKd-Sk:&bF}yEHP]@DL{L^H[MzL[_@JL7t&BGD1u*jxfYASD]9{.I;+89s6-0JTbjno3H$#9DK+BAPF_&}cOL[*u#m:xftsdZ3M1);f/}Pj},9gT?2y=bxc^)SYsjj;-,?lxqC:-ty^ExNY]BHN)u$jOf,mHD4:n.Rvh]@$1zV^Yhp[(Kp(?7L$%}Y,^qHm}Fs#w3kvL_@x(-N;WJ*&1+34NTC7dZj=mwGYfkVLW]PW^o34A^Gm;VTMwfKX)JsfC86tKWMPMKJ(cC7#6LrMEEll!d4uG^(S*c_PNdvzF(xeV%x4!0{+TKsCgUnz*vs`GMLQkLAH_@F[)kFx2tpH4RffEj+{ZY^JSKZIaARCi$}&ayN5S7bv.z+4AJXl*N!9N+d.B#&Mrc_M-;FI^]NBqED_bURYBDXKN@8^A9=O1fLnGt=_r^XQVKJ[Z5LL^eepTff%#rk-)Xu{DXB_BDE[C)Q.$dhzI[*)G5y)YhgZG_VE(5j/_(dt;t}B(P]cs[sC0&$=$*z=)!5Q5[SSqdz=_+!*X:kGPKG[62v9hMu]=={WFeVHl8$uA@[\x14wXU]Y\x14gQUG[Z\x14dUGG#B0qmgKVJAVG,z+Krih)Td7wPn*SHCQb*5iGmWi^(Of7R0!-;USWQk_^Eo[_CZhOY^KJhE!Ia$c^zmOBBLOMErW6IJ=ZEP2!-vA)!:9(>'jC*[D)iK9laXvC7zW:_|@ZG_lMDIQ^NNU7[YV6gcyY{ONU\x1ajV[CNSW_\x1ah_M[H^ktct@AZa]GZBJL]HXPPe=TTcfkz^Y=6/39v$ULlzbis.Xc{8f[F^W;0V2;i+J)E+n0c-nc:.$;)=(7!g=6J#JOWx%;{.o[ZAmBOGCoMFGKXKCK@Z]eIKQJP$cs^gdSW}/TRV}ekBW@KgFOBZy#XV&u=.l%GcOV)#=/tY?S+Z(D/LFc_gEHHFEGOaS@,=ZHQHP@8bVWL\x03qLOO\x03`OBPPWtu&YwUDcUBFYSUPDybuAo*AgEHHFEGOF,oNXPzMut*eJQFpFQUFQ-8WNn{M.{ONUjV[CNSW_h_M[H^eTCGRCqOHBIQkW(Sz4/$6}qB_6NOycBNd;f2hUOT^ST]Y/TDb$%I^yOFOI^ONlX_C^Y37RhG]@hob{li@&0!!a6gE_YOh_^^ED\x1biFCIAzNOT}INROHzLyJJxI}[H@G@GNzL[_@JLgeSWEYXFWEEuYXP_QqED_\x10eCU\x10`_DY_^CxLMV\x19kVUU\x19zUXJJvGBBOHAjC@Rwj3JgSRIvIROIHU*a6bq@EEHOFsHFIU2pDeBZIBXC^UoCBJEKrSPWCZB7,sYnRrk_^EyOKYEDzKYYcEV^Y^YPtXYQ^PjHYiH^NHCILCY^yOFOI^ONlX_C^Yo[ZAl[WyFKKB]vGBBOHAdIRRIKx^H_dC]XYyT]H|APXFYu)m!3/r~JKPmPSS|S^LLaGT[FETGP[VLr^__TREQRqy*zY@GZzL[_@JL]AEPIVPP]HIGdPQJqMWJR4;4{YCEStCBBYX\x07m[SN|UHyRSV^wTXZWkWZB^IvCRUuCTPOEChJ[|J]YFLJN%<*3?<<? $!sRDTE^GC^XYfA_Z[mJHNAmBO]]\x0e}BAZvTYYWTV^8neQPKbVQMPWRF[Y{RRGQ@uWFaW@D[QW{RGP[wV_RJuZAV`VAEVAt[VDDd[XCkMAIeXIA_}QW^YDETUk_^EbK^IBgBBrIAAJCqUY_]pz!WEQLNp@BOFgSRInGRENo[ZAfOZMFlXYBy_LDCbGGaVWWLMsHBIuDYUeGJJDGEMffffff\xd6?}[H@G@GN\x9a\x99\x99\x99\x99\x99\xa9?o^YJ_BDE`TUNrQHOVTEbEPETlNCCMNLD`VAEZPV@|A[@JG@IoX_TOIU|FMCFAHmHCS@SXiUUQfDU5>,DqrAK_B@\x7fjo9''1-.:sRDCEXNnBCCHNY`LQFdVJ{ZY^JSKzKXOD^~ID]M[gP]DTBhYJ]VL`]@XQ}BZH_yEH@HYZK]DsGTXPsKVH@{FW_AMZNQ[iTIQX4N\x07\xa8\x93\xa3\x8c\x01#\xbdS\x89sort\x0c\x1d\xba|:,$9e@GZhBNO\x00\xb1p\xb7ta\xd1\x0e~\x1c0\x15wUUAd^MR\xd6Lr\x1c=6$U^L<7%MFT[]Z}ROD\x02;,<+\x084`;S\x03\x0e\xff\x1f\x17F#,\x04"))
local gG = (buffer.fromstring("~JKPoS^FKVRZmZH^M[+14Lui8/^HymLG?N9uh6RwEGg!rvV,=gVKGgAR]@CRAV]PJ[P0j^h1oMP%JCQdPGU?zEC_T)(C%FabVWLaVWWLM`LOLQatqSscye8=USI.aCr3U/Y+#=%.y]9lZRO}TIxSRW_245Q8jUdMGb3hW[PTYNc0-bqbvb0}nmk_^Eh_S}BOOFY{M1*2G-?Y8(oz?doc:&1%a71^;;X8\x1d' =0= =!r\x1a'0r>=3676|44,sKxq,:vviVRt#+,&5bGGgQLSGLTMt;WD+yCcof0XWgWTeDQ7.QP/JwsYC,{JW[cNMJCK-I,8]tW25sA)qDgpmz?v#+FpqnQ%MEnKK{@HHCJ[^Jn.{x3W0z}1DfT^0(75tEav}IJEypc9rlld/ %/'l8#l/#<5e,HYeE{M+;4)cowj[v#qPST@YA]Sz{Dm,c6oTwW[W#DY3:l:b$^?}ApSkj^_DhGJBFjHCBN]NFNE_X@o)TR)Qn[1E*LVSLiwCBYtCOa^SSZEi5YmO4R_KtEoX23e#&:?wFrimYXCo@MEAmODEIZIAIBX_g,{#8mgr7_y=5C3PzGZBKR/d)7L9FqpHNmpEu6-e,98w_!5Ny_y8vBCX\x17t[V^Z\x17dRVDXY\x17gVDDm-_p3P{V(roPCw|FUJ/YZv%Dw3qLFQf4x8h%jnQRX981xt-ohE]^[FFB]@]VI1J{]xmcMFXe{B#QeWm^qMk_`TUNdPTHQcDRU(id/(q2jls{8=pA+R([fO3zNOTiTWWxWZHHcIpw+1E?5!CO]/?[bat$Y$-&qvb[ObFb/urfK.B3b7fmM-qyz0qpbUr`SDB_UWZR54(7S2DctcG1ctmv)mL97=R_NfOZMFkII8*?z6*b!O:e.)(zl$?)-+F)spOpMPHAvsdsEfdtKAj!e@uSOx7=ownwqQ:u6=/Zeoi#sDfNdN,kAqHyywU@8?)TW.Un,mO^U@EObhH[}g4G}(?Q6E&NF/5[X$q)[U<7%S/x_V9U3$hN8?nSCt@H/]QL@*%r9K}ALTBy-^Zzb(9::3T*&7BIRc1{y]Q6VdwCBYrW_ZOdSAWDR#Ul8YrgEPny;zJTY&x_ADErYP_VTUxedw6MhBi+VXM5+.uUHKhYJ]VL5(_MqsdC;wj96+88MVJhX}KfEdPQJ\x05qMWJR);?q5M6&zl.o_{k&@:PE!4?-F)=OnWbFo#Pk&XfLl6qv#ZIOS]ITAX[AVNihkf(4Urh6V&(rHM9)3VeGtk^OHh^IMRX^qML_z$Nx?(}nY5D88c^]UYT]KAi7rkIXWTpy7[7AdAh*Y9:@Br^G^8$Ee2:HIB]vSYhH9p-2%Qw#=Cm@XNTUnSEDS]kYs%I$9j84yxUe2v2qL]UK@PVnHq4*Ye%x,-Db*hNcGO3O >/#?&85oM,JfRtt&eX?Mx4c_+$!ZSX{gcomj{5#zp3Ub62AjSO+.CFA`]LDZq:SNba@1w!(xy_&CqEd85V|HIR~UXNI7FJFjZW:Md2n%5S^q9a@CDPIQ7jgahJwVw5?#!reCaP[sDHWeJSdRP:]GJHV*?^3gIco/}(,./-z+/cniI$5rZp99ex*&7e|JB_mDYhCBGO8C*oARbxo6M6dgBBbTIVBIQH:&GVX}{TZ*h[=AhYJ]VL+%D#s!_w;bE[(#_HQ_B+.!*4$-.+z{APR9KMfQ1eQX=pMPHAGuxklZ6_0cmuAlv6ir?9;13&3=>)3$Qa&B1Nm-*fH{,T_MltzQR@5hN_bR-gYFfA7*`QFBWFf_,ccR]Dq!lCJ/:6avBCX\x17t[V^Z\x17vT_^RARZRYCDzNOToIZRU7;zH5XFEZ;u1AlXYBk_XDY^_-.]!6!*.q[Fx[YQ]HUOT^nH[TIJ[H_TYClIIyLO*w$(fN51e][.Ok&yMLW{TYQUy[PQ]N]U]VLKgCYIjS#GF.-/3^D4fw:fpkVLW]PW^66GZ[9OjtAD9NZGEzojjx/c!cubt3}J-nB_HjXD;qD*zFZ%2k7K7/$6/buiS(5/tG#Any9N<%($.Ra7#vvoL?=HeUrqt@S_W_BhP4Oeks7hu~JKPoS^FKVRZmZH^M[j^_Di^R|CNNGXU&Fm(PDY[yPPESB!m=JvrcnuQE@r]dYj43(w4/lQGQYD=_nF@nixW3R?)mPAIW)Nw36,wr$g*Fo[ZAk_[G^lK]Z0adu9!')2'?=3;W!:(UMXuPP`UVr,H51r^3/{iJH@LYD^EOhDGDY\x18&6(87*2&'8HcT,D)xNGNH_NO{D_BDEXi]\\GlIADQzM_IZLi_V_YN_^jUNSUTIz@SLrlSOngc[/{Av[FPQFg]NQd]LQXeRDRCD)rKg#G}iu]FZS_aW_[P]^VODVt;DlG9QO$SRuA@[gQUG[ZdUGG#.48#; /5<I==ZlCFFnCXOI^CEDeQPKfQ]sLAAHWr[NYR{WUOTNUwuA@[f[XXwXUGGpDE^t@DXAsTBEzEYC^CEDI7Dkb_BZS)q#M,m+cA[]Kl[ZZA@\x1f~bgBX_gJRD^_dXUM+7i[F9{U@PTTY_YVSMG_mDQFMdHJPKQG_@CPPCIACKwXU^YDfY_XBV_GTPATXDB+dAAaWJUAJRK{VL^]SZ\x1f~SSyMLWj]ZQJLPyVMZlZMIZMk_[G^lK]ZfaPUUX_Ve^AeJQFpFQUFQgEHHFEGO=4O[FDfOOZL]!-/5 ;6 8#lPMKpM[ZMmHHnYXXCBk_^E~BXE]bGGwLDDOFbM@RRrMNUuA@[`FU]Z~JKPkWMPHj^_DcJ_HC~[[lSV[ZMmHHxCKK@IkQB]B_,#DgXD^C^XYtXX[SX@YhPIQL_R$}XVYEX_V|C_EXECBnGRENcAAtXYYRTCfeRFB^ERSOTR[@UYTxEX@IpyP333333\xd3?zXXXARnbC@GSJR`LMMF@W +9j_w?|MZ^KZ7DTYW[NDdST_DB^wVURF_G8/</89/aOSiENOhOuISNVj^YEX_{JYNE_w@MTDRmZWN^HoROW^lQLT]}@]ELr^VQjEFWAXWFKFIvKZRL65$2+JPN74kQB]`QL@qSSG{_EU\xb7\xbcs!}__KbNFA\xa9a\xab\x06\xb1\x81s(eTIEYOGZvJG_}QY^L_\xb8\xbcgKRJASYR@{lw~Z]*((xomz0'BJ@\x11jh\xffG0Ie\x16+Z"))
local gC = (buffer.fromstring("mYXC\x0c|@MUXEAI\x0c~I[M^HJXL@;{3bUWY&$ht]WL$fSWe]@05rt\x1a7#85>v7v\x01>33:wVD#8Au4i7M^5rT_$2stG#)y_r038=E0iJH@LYD^EOhDGDY\x18tTZ+1rqhuA+t}YhkIY8^8tGHTH3W`VQQFMWpFBPLMf#f3suH4tF,-W:S2A%Ss)z*}lA[2H9uA@[pU]XMfQCUFPxx.q8Di,^DzqXX+7n!U}@:BN-+OfZ@]EvW^SKzKMOD$[Xc6#yK^!N#+LH%f3x.(mUzl5gSRItIJJeJGUUpQCa0pT*T/*c9_j-3*fq)I1rIY[uS@HOHOFrDSWHBD]ERfXy%i.aE,^+7}:uZ+=n8a_qDGrLAQMMZ+yb/+TW5dE#2?w?/;?W5V(RR5yU/Lz^Y^Z^MR|RNsMGV$HGkPl;XPhNw.(m65$%pjOJ&bGGwLDDOF&Pf1*7w:[FkpnAXqdQEyVsVDNVP8k|Y_X\x16r_EUYDR\x16PYD\x16rCFSE\x19}SOZSEE\x16eUD_FBEGSNLnGGRDUG3Z?z37kH[EHe51zoOVLIS:rySO9t@AZv]PFAI=UwodQcAFAy?(:vZ=u%.&d6d3cSfDIIGDFN{C.,w#8g2KvI#CUn3=XMq)OrDo8]d@G@D@SL0%;++s*4u8ix6qyKsp$z0HPbbf5wxBQNw%jTsm)wDQAc5Lqas8]Fv_X5fmviyk[oNMJ^G_WgY}{YQ$N-*zmEbe$vxBaDIUs#qPfBXHsh[cFW;m,r5DrLtq]bEp)hS+2)UJJ,WbMVAwAVRAV2}NK;oGHZ@Ey&-}mntn[:+LLzNOTsZOXSCuZ&8dDkDQkRRZ?&:.{hv&vR:cAPwAVRMGA32MpTip^H0=!DSYY:+X!:*?*tXYCROCBV[b.O2Kgy64]M5XU}%TDkK8:1EzQ^]SZ\x1f~SSR%TkUrX)e;[HGf6^PO&:#VwzV^Yx;kv8E9#?#@(G1Sg%h:*Z%=amSGm[=+#>v#2[sk?5T%p/tHo:s*ggfV$j(GY+4oJAQBQZtw,bKxBtr4/?34b.)5k=KVN7l>=,:#{v:LSO[6[AxH7k^}n3Z84mX2p@,nOLK_F^$XNGs((,o_kt4IJb,72jmQu[4e@@pKCCHA*5[,OKP]!ucL@f9l-2s/}**yF]@FGZPnx.*GHT;?ZpB[?ne7x!3_)YgE_YOh_^^ED\x1biFCIAQkXO7bMV;^:dH(p_RZ^Z.7*%^]]}aMoNQe:Im{)9?flfELG3Fa-IQ0-.XK^77eYe7Z+)bawrI4\x153%`\x04%,!9`h3iwvW-9=Ftris,]g(M2tVG`VAEZPV}-.B;BCa(!1.}@AOhe][uZW_[9!lUgAKcMoArx!!_noF[z%GjuA@[\x14qEA]D\x14vQG@\x14dQ@iNl-Wad?EdO[FDfOOZL]&VLO;c-qD4]W8:/lxb2cLW@v@WS@W)xH+&RB)3?1HZ*R&A}LXEGxmhoeApUe}gqV=t:(N=ZlEyxbC@GSJRIa&+XGOYs&hlOP4tcA{lmRNTITRS&kPYfP}E2vb1!@{S#:gaMEBCo6W$a]sTGW4rbODi($Y(P{F[CJZF;XYH2=O4ObRSc)x1fKTzSFQZwUUn9;$W(.4xonj=L$J2gZG_VOy=f{koTp$MvgL{iMWmm#(:E,%2$MeQkM&-hCRkB0f#w$/91,BA#T?b{FsLp,J@t}st^j.eXIA_}*Y[)_urFk3j-]#;Q$Rm[SN|UHyRSV^oD,kpI)n.QN(dPQJfIDLHdFML@S@H@KQVkG,lCYDlkfOM3eQE,(3b*{OQW.fBXHP}abQco0a(7(o94B_EctRDShOQTUuXQDEcJLtA(bn2bVWLsLWJLMP?aJv%@los4;rC^ReIJIT\x15Zy}!KGx(B5u0yHUYnBAB_\x1egi/):)Xaf.pP$3_?OFKpWWKIJH[a+zX*1vBCX\x17sV^[N\x17eR@VES!6FkgFEBVOWh+ChHm-CYzutmgqmtE@@MJC]YOfobw0w;5xEX@IXv*/,eaVxgNf_w&uS@HOHOFrDSWHBDM#WCxLMVjIPWbzn@fDv4p_3LXEGeLLYO^wn%xz31I+nSNV_WR4g9eZn&xG{WazNOTkWZBORV^i^LZI_eQPKtHE]PMIAvASEV@|@][`]KJ]Nkp5wIho6\x08<=&i\x1c:,i\x0f;< =:l9kNNnXEZNE]DP5OgAAqFSOJ@BWFGpWLQBDFV@HU(b^;%*2zUa^!hvUW_SF[AZPw[X[F\x07wUXXVUW_4D!4g+!&oHPCHRIT_uCTPOEC~JKPoPKVPQLSQNwasVVf]UU^WH{9?H);bVWLaVWWLM`LOLQjKHO[BZ@F,tD-AMdPQJ\x05pV@\x05cWPLQVfBPJMDgJQF@WJLMwXU]YQPfQCUFPGevQ[ZG}ZW^IVPMp_XRp_DEBu^_ZRbGGwLDDOF)u&*jyMLWk]YKWVhYKKuZAV`VAEVAwwUtRDShOQTUuXQDvPFQjMSVWwZSFbVWLNBWJ@pJYFbVWLaVZtKFFOPfQGQ@{ZgDUCZ-/;:.,+0=$>-dFWbWWQJAVWFqGOR`ITeNOJB~H@]oF[jA@EMxZK~KKMV]JKZlA[IJDM\x08iDDcGUOHAuR_JCQC[AR@[XI^]j^_D{D_BDEXmYXC|CXECB_av.x-vBUNBhlHDB@gPQQJKzXUU[XZRF!aPMAvZYZG\x06GSNLnGGRDUsQ@gQFB]WQhF_XoLLOI^wCBYpDC_BEqED_\x10dBQY^{^^nU]]V_v@I@FQqDGbVWL`KFPWsGF]fZ@]ElXYByE_BZhGJXXxGD_nZ[@{]NFAPB[FKRUVQsovGBBOHAeDG@TMUtOlXYBnEH^YhWKQLQWVaWFdS^GWrP]]SPRZWYBZYSQK\x00\x00\x00\x00\x00\x00\xd0?[H_DWBkKuWZZTWU]\x9a\x99\x99\x99\x99\x99\xf9?hOZIO&Y3wCBYeF_XoM@@NMOGeIAFBEshG]@hobeKWmAJKPDY[dqtqPST@YAoNMJ^G_fJKQ@KQ|]^YMTLc^C[R#%z_TDWDOCWJHwbguDSWBS|M^IBXdUFQZ@#+ ?.ZLDYAvBQ]UrISENnSNV_jNBDF9:+=$jHSY_-.?)0b_BZSqNVDSC[r\x1dv_^D&\xfa\xa1\x04\x1f\x03\xa4\x81\xad\xear\x0eaMEBw[ST&08%\x00\x9dq_\xff\xff\xff\x7fnKLQjFQJ\x1d\xc41\x00$3&repyUL{A@]VD7?*!6)>w`=\x10j\x07CP\x1aL'HE\x01{\x1d"))
local gy = (buffer.fromstring("hJ[_^YNhDE_YDGGNYauFapE=S!G{HLqKa!e.}g6yNhR{U8hJvBCX\x17sV^[N\x17eR@VES$BMs9?F4rD@.f]L[4[[f_{+5[[I:a#uDAALKBgJQQJHU4:;H/@3Z&OyuY+!YC.RgF]5x;_V!d6aF[@SFG]HEhE@NGDLG]T:4XR@2W##6sAGB/Bz45{+EvbVWLfRVJSaFPW)ZG[1sVyJ6Fu(a-kc0A8^-xKNOR-iz]CFGv]WVW#?O1E{LxOUet;LmtF+Tk&sL*V0rmH)SeS[Ft]@qZ[^V/ttir{RpND*GX%6l/,2f7va(3%FHuPPpF[DP[CZ?m)r#w%pkVnk1y1?Kk$;y;ElBgPOVFNLWHUBHSMStQ18FgCS/ACvF*gMz6{puzHQ{&TXmRIONZWnH^Ipp-kzu!.ZChwVXVJPwX-KB49Frx*MRFSI]QTQT[2;^%7F;LN%EILzs}wIm5Euicf)@uPP`[SSXQ9O?3p5Taf2?f2r15CGQ=1XCTIN(A;9-!.?5;:7+NXr&Az-48XfoKP_n/DduxNb2IwUjLG]L[er7RmW9kUJ1yfbMP3dxW=;)C{tCXm1W~RS[TZNg{FWuRS{v:#]BYpw5.Lo5/ahCSJ-F|]^YMTLB}[6*eICJGrT^=o.NHMP5mu0,6Sqd{VNXBCxESREua}[2^^$./;E44]#()koCk]v.vTYYWTV^DYn@IAeB*tBdLRBjAgV&aiCYQ9PuJQWVBOvPFQ0v3ZcG9Lkf/%_N.+3B0P_][FwQBMPSBQFM@Zwr2F2(,dll,-SduedSs55Yh^ZHTUKZHHvNWORKWR^Iu=fwD3VQ_owTw9eXIA_tjGyPI]{9Fo4&ot7+=WbWJOpW3W*l21 6/NFmwY+GUK:Soc7pAZ.wor9usUj8.]bVWLaVWWLM`LOLQwu&1%%T{:)z7aS5W{{pUUe^VV]Tthq-JdA7*X0?lG#5&pAB^rr_AZFZFRO][^P_9e=dtnd4!CxPdJBizHb7=b@Qv@WSLF@TlMX7,llJ,cSPPOEdq]U^mmBOGC+$1d#[U}2E5^kHFE]&g]iEERmZFnX__HCY~HL^BC!^bZteVT3*+AM7L-x6AmHHxCKK@I&8RjDZCTplb(TT,e[qLyYvmYXC~INE^XD!;:.g2{@TtwJeL)%QD,zlX_C^YD@,N6V})kq#jNp+//zi!$:HxLyVMZlZMIZMLN1Ss;%F2}WY#Z@2b-!X:cG]ME%B0g1Q^,[Z=;wILV@EreR&za+a[iDroP@p{7yK,/;Lox9gDr*Ij,Fzo4#d4,_gvl-nu/nOK0v-ZE}}#k?wlVji@UBIeDM@XyrDWw1@G89_Y-^}qyIXj]ZQJLP*.n5d!%T&$Q{bH:3O&W&(8q^SAAa^]FCM]E4ismkuUj[xnfJeZ_|oHBC^dCNGPOIT8YCK9RJ1]Zfpl0_IXXEBK_#^y(^w=leaNaWuAV_w,LeXBYS^YPlm7BS5r*eZ}P-K-!t&@*: 9++=,1<bwwailhhh`nmk`holqM@Xmyt]+NajSaBpuB*ZAjGX%j<6;)1w95439;6{zZjU;$YTp&@Uw`Ha/x%Ou34QL3P%I4dzKuQQQhWLQWVK:}QHw.L1yiasv(C0XLBVKIwGEHA*DbW9j:$2_.lrMryLZRO;mPq3YX.;h9-q=TFaY7L@aLDML;h3*F1_ziKyuc5r#AQ=vNWORGziv6sNvM6]n}Y-{_%!{F[CJJywC$^8Q}TL2YMkVEG`EErMHEDSg!^fe8=)iz]J41zVUVKPci6O[gw$?V7m4RLt{bSD@UDM;b9,Agss1mqsW21#wUXXVUW_uFdmQ-5zf24nJt1sPRZVC^D_UeCP_BAPCT_RHdPQJw@GLWQMd5p1C9fwsmPg@[Dabt[CWpLX8p:Bzj8hEWMROTLNe+]-S=#Ap%y7gyVLQy~s716px#4ebHa}-},'5bIbf#Ug+-nTSM-5NSzSSFPAGCx?wr!!/Z7NpxwMJCHAB^asxO],.ki7bpDE^eYC^F)mU=!#^ZJ&jdw/%Y$TA4/LF*9Vx=(aLEP.XbZ:z1KgkO(q0#zXSR^M^V^UOh^IMRX^mYXC\x0cxD^C[p20:eCTglEPGLaCCceXLiO,&mVkZI^UO0=CNs5}cu=JwJWOFDJSUI,/bw9Mu{F[CJa#c1y/8#7_@ewAHAGPA@bVQMPWW*/`OBPPpOLW}bW(ZQ;qLQI@M@%AZ_RNx{qqED_c@Y^E;[5.W{/gN[LGnB@ZA[/Ki!&CRSNA^BM5qrBAs-ewCBYrW_ZOdSAWDR{AF[V[F[G`[SSXQ\x07;!<$s\x176?2*s{ z\x00<&;#t\x10185-t|'}yjMGF[aFKBUJLQzNOT~JNRKy^HO)oHSnXOKT^XE7YDi^YRIOSh^IMRX^nAZM{MZ^MZKhD1:9(>'(R@&9-M?~XKCDxOZnOFKSg_F^Cyq.-u_GiqfOxY-y7l:,Zr\x0b-;~\x1a;2?'~v-woRHSYTSZQJBWeHRQM@XnSEDStBJWeLQ`KJOG|PMQZMm^[VJLcAPePPVMFQPAkGZFMZzILA][pUUuC^AU^F_i@UBIdFFV9kwSGBzZQj;8QFGZBR@A}SebmZNJVMZ[}Yl,%5(9,=!,4YLXEGeLLYO^nL]zL[_@JL~OJJG@IzA^rVQ;*l/S*oT_M$@?D[W1nAZM{MZ^MZgHSDrDSWDSTQQSGORX_D`EErMHEDS}M\\KK@i[G[NIOQ]dqilXYB\r~]DCuIHBJODRRgBBuJOBCT+4=(6-000`EEuNFFMDbFJLN,q%-j^_DhCNX_iY[V_nCJ_vTYYWTV^tN|z{%Z{aH]JAlNNeCPX_X_V333333\xeb?\x9a\x99\x99\x99\x99\x99\xb9?bK^IBoMM\x16499746>qWA`AHE]qXMZQ|^^cROCd^MR}[MlMDIQkJINZC[r^__TRESR[VNJJ\x0c-.)=$<LXEGxmh`ABEQHPvSXH[HCoS^FZMLiHKLXAYFPXEzpf@KQ@WMN@INFzVTNUOuYQV6n{TYQUeBWDB|kqnV1$') |@MEMwJWOFPSBTMGRQ_V6# .'?/.4gh\xdd\xffxZHSkOUEpWLS}GTKXNF[`LDCgMA@^H@]!,93\x1fC\x87.O\xcb\x0f\x067!)4gHDLT_M>)oAJX0;)%.<\xb8\x01>)tc\x0c/![T\x05\x0bY\t\xc8V\x18)."))
gI, gO, VirtualUser, TweenService, gR, gl, ge, gL_1, gK, gJ_1, fX, gP, InventoryConfig, gE, gA, gu, Throw, go, gh, Train, Claim2, f4, f_, fV, Rebirth, gF, gB, Spin, gt, gp, gm, Roll, CurrentSeason, SeasonpassMultiplier, gc, gS, f3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gM = 60
repeat
    gT = (gM * 13 + 8) % 22 + 1
    if gT <= 11 then
        if gT <= 6 then
            if gT <= 3 then
                if gT <= 2 then
                    if gT <= 1 then
                        if (gM * 2 + 4) * 16 % 3 == ((gM * 2 + 4) * 16 + 8) % 3 then
                            gl = game:GetService(game)
                            ge = game:GetService("TweenService")
                            local LocalPlayer = gR.LocalPlayer
                            gO = game
                            gV = (TweenService:WaitForChild(require))
                            gI = require(gV:WaitForChild(LocalPlayer))
                        else
                            TweenService = game:GetService("TweenService")
                            gR = game:GetService("UserInputService")
                            gl = gI.LocalPlayer
                            gV = (gO:WaitForChild("Library"))
                            ge = require(gV:WaitForChild("Knit"))
                        end
                        gM = (gM + 17) % 88
                    else
                        local gU_2 = (vector.create((gM * 4 + 4) % 11 + 1, (gM * 1 + 12) % 13 + 1, (gM * 10 + 8) % 17 + 1))
                        gV = (vector.create((gM * 3 + 3) % 11 + 1, (gM * 1 + 2) % 13 + 1, (gM * 7 + 15) % 17 + 1))
                        if vector.dot(vector.cross(gU_2, gV), (vector.cross(gU_2, gV))) + vector.dot(gU_2, gV) * vector.dot(gU_2, gV) == vector.dot(gU_2, gU_2) * vector.dot(gV, gV) then
                            gL_1 = gO:WaitForChild("Configs")
                        else
                            gO = gL_1:WaitForChild("Configs")
                        end
                        gM = (gM + 39) % 88
                    end
                else
                    if gM * 3261469 + 2 + 1 >= gM * 3261469 + 2 + 1 + 1 then
                        gO = gK
                    else
                        gK = gO.Library.Knit.Services
                    end
                    gM = (gM + 61) % 88
                end
            elseif gT <= 5 then
                if gT <= 4 then
                    if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gM, 16), string.byte(tostring(f3))), 7), 4292700263), 14), 1511653367) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gM, 16), string.byte(tostring(f3))), 7), 14) then
                        gJ_1 = require(gL_1:WaitForChild("MiscConfig"))
                    else
                        gL_1 = require(gJ_1:WaitForChild("MiscConfig"))
                    end
                    gM = (gM + 39) % 88
                else
                    gV = ({
                        "ndl",
                        "netihfr",
                        "vobn",
                        "ayfevveogem",
                        "lkbpkswrgl",
                        "dzzlpsg",
                        "xtvlyboyaz",
                        "koml",
                        "yidjfs",
                        "mopoktt",
                        "sop"
                    })[gM % 11 + 1]
                    local gU_4 = gV:len()
                    gW = (gV:gsub("(.)", "%1%1", gM % 3 % 2 + 1))
                    if gU_4 <= gW:len() then
                        fX = require(gL_1:WaitForChild("TrainingConfig"))
                    else
                        gL_1 = require(fX:WaitForChild(require))
                    end
                    gM = (gM + 83) % 88
                end
            else
                local gU_5 = (vector.create((gM * 1 + 5) % 11 + 1, (gM * 11 + 5) % 13 + 1, (gM * 2 + 2) % 17 + 1))
                gV = (vector.create((gM * 4 + 7) % 11 + 1, (gM * 2 + 5) % 13 + 1, (gM * 14 + 15) % 17 + 1))
                gW = (vector.create((gM * 5 + 8) % 11 + 1, (gM * 11 + 10) % 13 + 1, (gM * 12 + 11) % 17 + 1))
                if vector.dot(vector.cross(gU_5, gV), gW) == vector.dot(vector.cross(gV, gW), gU_5) + 2 then
                    gL_1 = require(gP:WaitForChild(require))
                else
                    gP = require(gL_1:WaitForChild("EggsConfig"))
                end
                gM = (gM + 83) % 88
            end
        elseif gT <= 9 then
            if gT <= 8 then
                if gT <= 7 then
                    local gU_6 = (vector.create((gM * 1 + 2) % 11 + 1, (gM * 8 + 2) % 13 + 1, (gM * 8 + 10) % 17 + 1))
                    gV = (vector.create((gM * 2 + 7) % 11 + 1, (gM * 10 + 5) % 13 + 1, (gM * 12 + 8) % 17 + 1))
                    if vector.dot(gU_6, gV) * vector.dot(gU_6, gV) >= vector.dot(gU_6, gU_6) * vector.dot(gV, gV) + 1 then
                        gL_1 = require(InventoryConfig:WaitForChild("InventoryConfig"))
                    else
                        InventoryConfig = require(gL_1:WaitForChild("InventoryConfig"))
                    end
                    gM = (gM + 61) % 88
                else
                    if (not Train and not Train or (not VirtualUser or not Train)) and ((not Train or VirtualUser) and (VirtualUser or VirtualUser)) or not ((not Train and not Train or (not VirtualUser or not Train)) and ((not Train or VirtualUser) and (VirtualUser or VirtualUser))) then
                        gE = require(gL_1:WaitForChild("SeasonpassConfig"))
                        gA = require(gL_1:WaitForChild("ItemsConfig"))
                        gu = require(gL_1:WaitForChild("AchievementConfig"))
                    else
                        gu = require(gA:WaitForChild(require))
                        gE = require(gA:WaitForChild(require))
                        gL_1 = require(gA:WaitForChild("ItemsConfig"))
                    end
                    gM = (gM + 61) % 88
                end
            else
                local gU_7 = (vector.create((gM * 6 + 8) % 11 + 1, (gM * 10 + 10) % 13 + 1, (gM * 12 + 8) % 17 + 1))
                if fn681(vector.dot(vector.floor(gU_7) + vector.ceil(gU_7 * -1), vector.floor(gU_7) + vector.ceil(gU_7 * -1)), 544454170) then
                    Throw = gK.ThrowService.RE.Throw
                    go = gK.TrainingService.RE.Start
                    gh = gK.TrainingService.RE.Stop
                else
                    gK = Throw.ThrowService
                    gh = Throw.TrainingService.RE
                    go = Throw
                end
                gM = (gM + 61) % 88
            end
        elseif gT <= 10 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gM, 8), string.byte(tostring(gL_1))), 30), 18633908), 14), 355270727) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gM, 8), string.byte(tostring(gL_1))), 30), 14) then
                Train = gK.TrainingService.RE.Train
            else
                gK = Train
            end
            gM = (gM + 83) % 88
        else
            local gU_8 = (vector.create((gM * 4 + 4) % 11 + 1, (gM * 4 + 7) % 13 + 1, (gM * 5 + 7) % 17 + 1))
            if fn681(vector.dot(vector.floor(gU_8) + vector.ceil(gU_8 * -1), vector.floor(gU_8) + vector.ceil(gU_8 * -1)), 544454170) then
                Claim2 = gK.SeasonpassService.RE.Claim
                f4 = gK.EggsService.RE.HatchEgg
                f_ = gK.InventoryService.RE.Use
            else
                f_ = Claim2.SeasonpassService.RE
                local RE = Claim2.EggsService.RE
                gK = Claim2
                f4 = RE
            end
            gM = (gM + 83) % 88
        end
    elseif gT <= 17 then
        if gT <= 14 then
            if gT <= 13 then
                if gT <= 12 then
                    if gM * 101698383 + 7 + 3 >= gM * 101698383 + 7 + 3 + 5 then
                        local PetsService = Rebirth.PetsService
                        gK = Rebirth
                        fV = PetsService
                    else
                        fV = gK.PetsService.RE.EquipBest
                        Rebirth = gK.RebirthService.RE.Rebirth
                    end
                    gM = (gM + 83) % 88
                else
                    local gU_11 = {
                        "yomtmc",
                        "ecwztv",
                        "gwpkmcukfcdh",
                        "rbj",
                        "tycotlwxbk",
                        "oegbweakzuwj",
                        "ywuq",
                        "vesdrt",
                        "ivbwmyupup",
                        "iqwybwomck",
                        "ekphkacy",
                        "wgccnhnadzph",
                        "dtrcroplkg"
                    }
                    if gU_11[(gM * 48 + 56) % 13 + 1] <= gU_11[(gM * 48 + 56) % 13 + 1] then
                        gF = gK.ItemsService.RE.Buy
                        gB = gK.AchievementService.RE.Claim
                        Spin = gK.SpinsService.RE.Spin
                    else
                        gB = Spin.ItemsService
                        gK = Spin.AchievementService.RE
                        gF = Spin
                    end
                    gM = (gM + 83) % 88
                end
            else
                gV = ({
                    "ikacvcmnyc",
                    "ozz",
                    "nuszatxu",
                    "xmtwmzb",
                    "akvdllyc",
                    "cqhuxafeb",
                    "cffdpxeohs",
                    "dyunxicxan",
                    "izprtx",
                    "djmrjg",
                    "battrbxfi"
                })[gM % 11 + 1]
                local gU_13 = gV:len()
                gW = (gV:gsub("(.)", "%1%1", gM % 3 % 2 + 1))
                if gU_13 >= gW:len() then
                    gK = gt.DailyRewardsService.RE.Claim
                    local Claim = gt.PlaytimeRewardService.RE.Claim
                    gm = gt
                    gp = Claim
                else
                    gt = gK.DailyRewardsService.RE.Claim
                    gp = gK.PlaytimeRewardService.RE.Claim
                    gm = gK.ChestService.RE.Claim
                end
                gM = (gM + 83) % 88
            end
        elseif gT <= 16 then
            if gT <= 15 then
                local gU_15 = (vector.create((gM * 2 + 7) % 11 + 1, (gM * 8 + 1) % 13 + 1, (gM * 1 + 4) % 17 + 1))
                gV = (vector.create((gM * 6 + 2) % 11 + 1, (gM * 1 + 12) % 13 + 1, (gM * 10 + 11) % 17 + 1))
                gW = (vector.create((gM * 1 + 6) % 11 + 1, (gM * 3 + 7) % 13 + 1, (gM * 4 + 10) % 17 + 1))
                if vector.dot(vector.cross(gU_15, gV), gW) == vector.dot(vector.cross(gV, gW), gU_15) + 4 then
                    gK = Roll.ClassesService.RE
                else
                    Roll = gK.ClassesService.RE.Roll
                end
                gM = (gM + 17) % 88
            else
                local gU_16 = (vector.create((gM * 7 + 2) % 11 + 1, (gM * 6 + 8) % 13 + 1, (gM * 5 + 11) % 17 + 1))
                gV = (vector.create((gM * 3 + 6) % 11 + 1, (gM * 3 + 6) % 13 + 1, (gM * 8 + 8) % 17 + 1))
                if vector.dot(vector.cross(gU_16, gV), (vector.cross(gU_16, gV))) + vector.dot(gU_16, gV) * vector.dot(gU_16, gV) == vector.dot(gU_16, gU_16) * vector.dot(gV, gV) then
                    CurrentSeason = gJ_1.CurrentSeason
                else
                    gJ_1 = CurrentSeason
                end
                gM = (gM + 17) % 88
            end
        else
            if (gM * 3 + 8) * 21 % 4 == ((gM * 3 + 8) * 21 + 8) % 4 then
                SeasonpassMultiplier = gJ_1.SeasonpassMultiplier
                f3 = function()
                    local hj
                    local hk_5, hk_6
                    hk_5, hj = pcall(function()
                        return ge.GetController("StateController")
                    end)
                    local hl = not hk_5 or not hj
                    local hl_3
                    if hl then
                        return nil
                    end
                    hk_6, hl_3 = pcall(function()
                        return hj:getState()
                    end)
                    local hm = hk_6 and fn921(type(hl_3), 5, 248602996)
                    if hm then
                        return hl_3
                    end
                    return nil
                end
                gc = { [1] = "Single", [3] = "Triple", [8] = "Octo" }
            else
                gJ_1 = SeasonpassMultiplier.SeasonpassMultiplier
                gc = function()
                    local hj
                    local hk_3, hk_4
                    hk_3, hj = pcall(function()
                        return ge.GetController("StateController")
                    end)
                    local hl = not hk_3 or not hj
                    local hl_2
                    if hl then
                        return nil
                    end
                    hk_4, hl_2 = pcall(function()
                        return hj:getState()
                    end)
                    local hm = hk_4 and fn921(type(hl_2), 5, 248602996)
                    if hm then
                        return hl_2
                    end
                    return nil
                end
                f3 = function()
                    local hj
                    local hk_1, hk_2
                    hk_1, hj = pcall(function()
                        return ge.GetController("StateController")
                    end)
                    local hl = not hk_1 or not hj
                    local hl_1
                    if hl then
                        return nil
                    end
                    hk_2, hl_1 = pcall(function()
                        return hj:getState()
                    end)
                    local hm = hk_2 and fn921(type(hl_1), 5, 248602996)
                    if hm then
                        return hl_1
                    end
                    return nil
                end
            end
            gM = (gM + 61) % 88
        end
    elseif gT <= 20 then
        if gT <= 19 then
            if gT <= 18 then
                if gM * 56624547 + 6 + 4 >= gM * 56624547 + 6 + 4 + 2 then
                    gE = {}
                else
                    gS = {}
                end
                gM = (gM + 83) % 88
            else
                if (gM * 1 + 8) * 5 % 4 == ((gM * 1 + 8) * 5 + 0) % 4 then
                    gI = game:GetService("Players")
                else
                    gA = game:GetService(game)
                end
                gM = (gM + 61) % 88
            end
        else
            local gU_17 = (vector.create((gM * 4 + 5) % 11 + 1, (gM * 1 + 6) % 13 + 1, (gM * 12 + 17) % 17 + 1))
            if fn681(vector.dot(vector.floor(gU_17) + vector.ceil(gU_17 * -1), vector.floor(gU_17) + vector.ceil(gU_17 * -1)), 544454170) then
                gO = game:GetService("ReplicatedStorage")
            else
                gR = game:GetService(game)
            end
            gM = (gM + 61) % 88
        end
    elseif gT <= 21 then
        gT = {
            "ablebj",
            "jteiulr",
            "gomvitcirlr",
            "pgslf",
            "irlr",
            "bxjj",
            "rflsau",
            "atsp",
            "mtspedzyuw",
            "cjzgvcrn",
            "wolittporod",
            "nkdoqahkn",
            "egegbtp"
        }
        if gT[(gM * 34 + 89) % 13 + 1] < gT[(gM * 34 + 89) % 13 + 1] then
            fX = game:GetService(game)
        else
            game.GetService(game, "RunService")
        end
        gM = (gM + 61) % 88
    else
        if gM * 25994131 + 11 + 5 >= gM * 25994131 + 11 + 5 + 1 then
            gt = game:GetService("VirtualUser")
        else
            VirtualUser = game:GetService("VirtualUser")
        end
        gM = (gM + 83) % 88
    end
until fn681((gM * 63 + 70) % 88, 242412205)
for k in pairs(gP) do
    if fn921(type(k), 6, 2175009567) then
        table.insert(gS, k)
    end
end
gK, gJ_2 = nil, nil
gI = 5
repeat
    if (gI * 2 + 5) * 4 % 3 == ((gI * 2 + 5) * 4 + 3) % 3 then
        table.sort(gS)
        gK, gJ_2 = {}, {}
    else
        table.sort(table.sort)
        gS, gK = table, gJ_2
    end
    gI = (gI + 0) % 8
until fn681((gI * 7 + 0) % 8, 561233079)
for k, v in pairs(InventoryConfig) do
    if fn921(type(v), 5, 248602996) then
        if fn921(v.Type, 6, 2819051060) then
            table.insert(gK, k)
        elseif fn921(v.Type, 5, 2624342711) then
            table.insert(gJ_2, k)
        end
    end
end
gD, gj, gq, gN, gg, gz, gn, gI, gd, gM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gL_2 = 22
repeat
    gO = (gL_2 * 1 + 6) % 7 + 1
    if gO <= 4 then
        if gO <= 2 then
            if gO <= 1 then
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gL_2, 17), string.byte(tostring(gq))), 31), 3939492737), 77724198), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gL_2, 17), string.byte(tostring(gq))), 31), 355474558), 2303966499))), 77724198), 2303966499) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(gL_2, 17), string.byte(tostring(gq))), 31) then
                    table.sort(table)
                    table.sort(table)
                    gJ_2 = "AntiAFK"
                    gn = fn600
                    gz = fn303
                else
                    table.sort(gK)
                    table.sort(gJ_2)
                    gD = {
                        AutoThrow = false,
                        ThrowDelay = 0.3,
                        AutoTrain = false,
                        TrainRepDelay = 0.2,
                        AutoSeasonPass = false,
                        AutoHatch = false,
                        HatchEgg = gS[1],
                        HatchAmount = 1,
                        HatchDelay = 0.5,
                        AutoPotions = false,
                        SelectedPotions = {},
                        AutoFruits = false,
                        SelectedFruits = {},
                        UseDelay = 1,
                        AutoEquipBest = false,
                        AutoRebirth = false,
                        AutoBuyWheels = false,
                        AutoClaimAchievements = false,
                        AutoSpin = false,
                        AutoDailyReward = false,
                        AutoPlaytimeReward = false,
                        AutoChest = false,
                        AutoRollClass = false,
                        ClassSlot = 1,
                        AntiAFK = false
                    }
                    gz = fn600
                    gn = fn303
                end
                gL_2 = (gL_2 + 15) % 28
            else
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gL_2, 24), string.byte(tostring(gM))), 13), 780616479), 26), 2092571916) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gL_2, 24), string.byte(tostring(gM))), 13), 26) then
                    task.spawn(worker4)
                    task.spawn(function()
                        while true do
                            if gD.AutoTrain then
                                local hw = f3()
                                local attr2 = gl:GetAttribute("CurrentArea")
                                local hy = attr2 and tonumber(attr2)
                                local hz = hw
                                if hz then
                                    hz = hw.Power
                                end
                                if hz then
                                    hz = hw.Rebirth
                                end
                                if hz then
                                    hz = hy
                                end
                                if hz then
                                    local hy_1 = fX[hy]
                                    if hy_1 then
                                        local hz_1 = nil
                                        local hF = 1
                                        local hD = 12
                                        while hF <= hD do
                                            local hG = hF
                                            local hA_1 = hy_1[hG]
                                            if hA_1 and hA_1.Required and hA_1.Required.Power and hA_1.Required.Rebirth then
                                                if hw.Rebirth < hA_1.Required.Rebirth and hw.Power < hA_1.Required.Power then
                                                    break
                                                end
                                                hz_1 = attr2 .. "|" .. hG
                                                hF += 1
                                                continue
                                            end
                                            hF += 1
                                        end
                                        if hz_1 then
                                            local attr = gl:GetAttribute("Training")
                                            if attr then
                                                if attr ~= hz_1 then
                                                    gh.FireServer(gh)
                                                    task.wait(1.6)
                                                    if gD.AutoTrain then
                                                        go.FireServer(go, hz_1)
                                                    end
                                                end
                                            else
                                                go.FireServer(go, hz_1)
                                            end
                                        end
                                    end
                                end
                                task.wait(1.5)
                            else
                                task.wait(0.5)
                            end
                        end
                    end)
                    task.spawn(function()
                        while true do
                            if gD.AutoTrain then
                                local attr = gl:GetAttribute("Training")
                                if attr then
                                    Train.FireServer(Train, attr)
                                    task.wait(gD.TrainRepDelay)
                                else
                                    task.wait(0.3)
                                end
                            else
                                task.wait(0.4)
                            end
                        end
                    end)
                    task.spawn(worker2)
                    task.spawn(function()
                        while true do
                            if gD.AutoHatch and gD.HatchEgg then
                                if not gl:GetAttribute("Hatching") then
                                    local HatchEgg = gD.HatchEgg
                                    local h2 = gc[gD.HatchAmount] or "Single"
                                    f4.FireServer(f4, HatchEgg, h2)
                                end
                                task.wait(gD.HatchDelay)
                            else
                                task.wait(0.4)
                            end
                        end
                    end)
                    task.spawn(worker3)
                    task.spawn(function()
                        while true do
                            if gD.AutoEquipBest then
                                fV.FireServer(fV)
                            end
                            if gD.AutoRebirth then
                                Rebirth.FireServer(Rebirth, 0)
                            end
                            task.wait(3)
                        end
                    end)
                    task.spawn(worker)
                    task.spawn(function()
                        while true do
                            if gD.AutoClaimAchievements then
                                for k in pairs(gu) do
                                    gB.FireServer(gB, k)
                                    task.wait(0.1)
                                end
                                task.wait(5)
                            else
                                task.wait(1)
                            end
                        end
                    end)
                    task.spawn(function()
                        while true do
                            if gD.AutoSpin then
                                Spin.FireServer(Spin)
                            end
                            if gD.AutoDailyReward then
                                gt.FireServer(gt)
                            end
                            if gD.AutoPlaytimeReward then
                                gp.FireServer(gp)
                            end
                            if gD.AutoChest then
                                gm.FireServer(gm)
                            end
                            task.wait(3)
                        end
                    end)
                    task.spawn(function()
                        while true do
                            if gD.AutoRollClass then
                                Roll.FireServer(Roll, gD.ClassSlot)
                                task.wait(1)
                            else
                                task.wait(0.5)
                            end
                        end
                    end)
                    gP = function()
                        if gD.AntiAFK then
                            pcall(function()
                                VirtualUser.CaptureController(VirtualUser)
                                VirtualUser.ClickButton2(VirtualUser, Vector2.new())
                            end)
                        end
                    end
                    local Idled = gl.Idled
                    Idled.Connect(Idled, gP)
                    gI = function()
                        local iG, iH, iI, frame3, iK, textButton
                        local screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoader"
                        screenGui.ResetOnSpawn = false
                        screenGui.IgnoreGuiInset = true
                        screenGui.DisplayOrder = 2147483647
                        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        local iN = gethui and gethui()
                        local iO = iN or game:GetService("CoreGui")
                        screenGui.Parent = iO
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
                        iG = function(ba)
                            local uIStroke = Instance.new("UIStroke")
                            uIStroke.Color = Color3.fromRGB(0, 0, 0)
                            uIStroke.Thickness = 2
                            uIStroke.Transparency = 0.1
                            uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                            uIStroke.Parent = ba
                            return uIStroke
                        end
                        local function iO_9(bd, be, bf, bg, bh)
                            local textLabel = Instance.new("TextLabel")
                            textLabel.BackgroundTransparency = 1
                            textLabel.Size = UDim2.fromOffset(460, be + 6)
                            textLabel.Font = bf
                            textLabel.Text = bd
                            textLabel.TextSize = be
                            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textLabel.TextTransparency = bg
                            textLabel.LayoutOrder = bh
                            iG(textLabel)
                            textLabel.Parent = frame3
                            return textLabel
                        end
                        iH = "https://discord.gg/f3dJhDgyTq"
                        iO_9("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                        textButton = Instance.new("TextButton")
                        textButton.BackgroundTransparency = 1
                        textButton.AutoButtonColor = false
                        textButton.Size = UDim2.fromOffset(460, 24)
                        textButton.Font = Enum.Font.GothamSemibold
                        textButton.RichText = true
                        textButton.Text = "<u>" .. iH .. "</u>  (click to copy)"
                        textButton.TextSize = 16
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        textButton.LayoutOrder = 2
                        iG(textButton)
                        textButton.Parent = frame3
                        local function iP()
                            textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                        end
                        local MouseEnter = textButton.MouseEnter
                        MouseEnter.Connect(MouseEnter, iP)
                        local function iP_6()
                            textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        end
                        local MouseLeave = textButton.MouseLeave
                        MouseLeave.Connect(MouseLeave, iP_6)
                        local function iP_7()
                            if setclipboard then
                                setclipboard(iH)
                            end
                            textButton.Text = "<u>" .. iH .. "</u>  (copied!)"
                            task.delay(1.5, function()
                                textButton.Text = "<u>" .. iH .. "</u>  (click to copy)"
                            end)
                        end
                        local Activated = textButton.Activated
                        Activated.Connect(Activated, iP_7)
                        local iP_8 = iO_9("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                        iP_8.TextWrapped = true
                        iP_8.Size = UDim2.fromOffset(420, 34)
                        iI = iO_9("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                        iI.Size = UDim2.fromOffset(460, 18)
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
                        iK = true
                        task.spawn(function()
                            local iE = 0
                            while iK do
                                iE = iE % 3 + 1
                                iI.Text = "Ouroboros Bypassing" .. string.rep(".", iE)
                                task.wait(0.35)
                            end
                        end)
                        local iQ_11 = (TweenService:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                        iQ_11.Play(iQ_11)
                        local iQ_12 = { 0.35, 0.55, 0.72, 0.9, 1 }
                        for i, v in ipairs(iQ_12) do
                            local iQ_13 = (TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                            iQ_13.Play(iQ_13)
                            task.wait(0.55)
                        end
                        iK = false
                        task.wait(0.25)
                        local iQ_14 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                        for i, descendant in ipairs(frame3:GetDescendants()) do
                            local iR_5 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                            if iR_5 then
                                local iR_6 = (TweenService:Create(descendant, iQ_14, { TextTransparency = 1 }))
                                iR_6.Play(iR_6)
                            elseif descendant:IsA("UIStroke") then
                                local iR_7 = (TweenService:Create(descendant, iQ_14, { Transparency = 1 }))
                                iR_7.Play(iR_7)
                            end
                        end
                        local iR_8 = (TweenService:Create(frame2, iQ_14, { BackgroundTransparency = 1 }))
                        iR_8.Play(iR_8)
                        local iO_11 = (TweenService:Create(frame, iQ_14, { BackgroundTransparency = 1 }))
                        iO_11.Play(iO_11)
                        local iO_12 = (TweenService:Create(blurEffect, iQ_14, { Size = 0 }))
                        iO_12.Play(iO_12)
                        task.wait(0.45)
                        blurEffect.Destroy(blurEffect)
                        screenGui.Destroy(screenGui)
                    end
                else
                    task.spawn(worker4)
                    task.spawn(task.spawn)
                    task.spawn(task)
                    task.spawn(task)
                    task.spawn(task[nil])
                    task.spawn(task)
                    task.spawn(worker3)
                    task.spawn(task.spawn)
                    task.spawn(worker2)
                    task.spawn(worker)
                    task.spawn(task)
                    gP = gI.Idled
                    gP.Connect(gP, task)
                    gl = function()
                        local iG, iH, iI, frame3, iK, textButton
                        local screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoader"
                        screenGui.ResetOnSpawn = false
                        screenGui.IgnoreGuiInset = true
                        screenGui.DisplayOrder = 2147483647
                        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        local iN = gethui and gethui()
                        local iO = iN or game:GetService("CoreGui")
                        screenGui.Parent = iO
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
                        iG = function(ba)
                            local uIStroke = Instance.new("UIStroke")
                            uIStroke.Color = Color3.fromRGB(0, 0, 0)
                            uIStroke.Thickness = 2
                            uIStroke.Transparency = 0.1
                            uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                            uIStroke.Parent = ba
                            return uIStroke
                        end
                        local function iO_3(bd, be, bf, bg, bh)
                            local textLabel = Instance.new("TextLabel")
                            textLabel.BackgroundTransparency = 1
                            textLabel.Size = UDim2.fromOffset(460, be + 6)
                            textLabel.Font = bf
                            textLabel.Text = bd
                            textLabel.TextSize = be
                            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textLabel.TextTransparency = bg
                            textLabel.LayoutOrder = bh
                            iG(textLabel)
                            textLabel.Parent = frame3
                            return textLabel
                        end
                        iH = "https://discord.gg/f3dJhDgyTq"
                        iO_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                        textButton = Instance.new("TextButton")
                        textButton.BackgroundTransparency = 1
                        textButton.AutoButtonColor = false
                        textButton.Size = UDim2.fromOffset(460, 24)
                        textButton.Font = Enum.Font.GothamSemibold
                        textButton.RichText = true
                        textButton.Text = "<u>" .. iH .. "</u>  (click to copy)"
                        textButton.TextSize = 16
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        textButton.LayoutOrder = 2
                        iG(textButton)
                        textButton.Parent = frame3
                        local function iP()
                            textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                        end
                        local MouseEnter = textButton.MouseEnter
                        MouseEnter.Connect(MouseEnter, iP)
                        local function iP_1()
                            textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                        end
                        local MouseLeave = textButton.MouseLeave
                        MouseLeave.Connect(MouseLeave, iP_1)
                        local function iP_2()
                            if setclipboard then
                                setclipboard(iH)
                            end
                            textButton.Text = "<u>" .. iH .. "</u>  (copied!)"
                            task.delay(1.5, function()
                                textButton.Text = "<u>" .. iH .. "</u>  (click to copy)"
                            end)
                        end
                        local Activated = textButton.Activated
                        Activated.Connect(Activated, iP_2)
                        local iP_3 = iO_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                        iP_3.TextWrapped = true
                        iP_3.Size = UDim2.fromOffset(420, 34)
                        iI = iO_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                        iI.Size = UDim2.fromOffset(460, 18)
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
                        iK = true
                        task.spawn(function()
                            local iE = 0
                            while iK do
                                iE = iE % 3 + 1
                                iI.Text = "Ouroboros Bypassing" .. string.rep(".", iE)
                                task.wait(0.35)
                            end
                        end)
                        local iQ_4 = (TweenService:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                        iQ_4.Play(iQ_4)
                        local iQ_5 = { 0.35, 0.55, 0.72, 0.9, 1 }
                        for i, v in ipairs(iQ_5) do
                            local iQ_6 = (TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                            iQ_6.Play(iQ_6)
                            task.wait(0.55)
                        end
                        iK = false
                        task.wait(0.25)
                        local iQ_7 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                        for i, descendant in ipairs(frame3:GetDescendants()) do
                            local iR_1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                            if iR_1 then
                                local iR_2 = (TweenService:Create(descendant, iQ_7, { TextTransparency = 1 }))
                                iR_2.Play(iR_2)
                            elseif descendant:IsA("UIStroke") then
                                local iR_3 = (TweenService:Create(descendant, iQ_7, { Transparency = 1 }))
                                iR_3.Play(iR_3)
                            end
                        end
                        local iR_4 = (TweenService:Create(frame2, iQ_7, { BackgroundTransparency = 1 }))
                        iR_4.Play(iR_4)
                        local iO_5 = (TweenService:Create(frame, iQ_7, { BackgroundTransparency = 1 }))
                        iO_5.Play(iO_5)
                        local iO_6 = (TweenService:Create(blurEffect, iQ_7, { Size = 0 }))
                        iO_6.Play(iO_6)
                        task.wait(0.45)
                        blurEffect.Destroy(blurEffect)
                        screenGui.Destroy(screenGui)
                    end
                end
                gL_2 = (gL_2 + 15) % 28
            end
        elseif gO <= 3 then
            if gL_2 * 87431455 + 7 + 7 >= gL_2 * 87431455 + 7 + 7 + 2 then
                gj()
                gI = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
            else
                gI()
                gj = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
            end
            gL_2 = (gL_2 + 1) % 28
        else
            if gL_2 * 90814039 + 13 + 4 <= gL_2 * 90814039 + 13 + 4 + 2 then
                gd = function(bC, bD, bE)
                    pcall(function()
                        local i4 = "Title"
                        local i5 = "Content"
                        local i6 = "Duration"
                        local i7 = bE or 4
                        gj.Notify(gj, { [i4] = bC, [i5] = bD, [i6] = i7 })
                    end)
                end
            else
                gz = function(bC, bD, bE)
                    pcall(function()
                        local i4 = "Title"
                        local i5 = "Content"
                        local i6 = "Duration"
                        local i7 = bE or 4
                        gj.Notify(gj, { [i4] = bC, [i5] = bD, [i6] = i7 })
                    end)
                end
            end
            gL_2 = (gL_2 + 8) % 28
        end
    elseif gO <= 6 then
        if gO <= 5 then
            if not gz and not gD and (gM or not gz) and ((gD or not gq) and (not gq or gz)) or not (not gz and not gD and (gM or not gz) and ((gD or not gq) and (not gq or gz))) then
                gq = gj:CreateWindow({
                    Title = "Launch a Wheel!",
                    SubTitle = "Ouroboros Hub",
                    TabWidth = 150,
                    Size = UDim2.fromOffset(580, 440),
                    Acrylic = false,
                    Theme = "Darker",
                    Image = "rbxassetid://91400086538074",
                    MinimizeKey = Enum.KeyCode.RightControl
                })
            else
                gj = gq:CreateWindow(Enum.KeyCode)
            end
            gL_2 = (gL_2 + 8) % 28
        else
            gO = {
                "mep",
                "gwiyvksgfy",
                "kymtrybrfwv",
                "mvels",
                "ftxh",
                "jbivg",
                "ladci",
                "pebdz",
                "glhjeibmygb",
                "kqx",
                "tehej",
                "fyguqbhfjc"
            }
            gP = gO[gL_2 % 12 + 1]
            gO = gL_2 % 3 + 2
            local gQ_3 = (gP:reverse())
            local lE = gO
            gO = gP:len()
            gT = (gQ_3:rep(lE))
            if gO >= gT:len() then
                gq = (gN:AddTab("Title"))
            else
                gN = {
                    Main = gq:AddTab({ Title = "Main", Icon = "rocket" }),
                    Eggs = gq:AddTab({ Title = "Eggs", Icon = "egg" }),
                    Items = gq:AddTab({ Title = "Items", Icon = "flask-conical" }),
                    Misc = gq:AddTab({ Title = "Misc", Icon = "settings" })
                }
            end
            gL_2 = (gL_2 + 15) % 28
        end
    else
        if (gL_2 * 2 + 8) * 16 % 3 == ((gL_2 * 2 + 8) * 16 + 6) % 3 then
            gg = "https://discord.gg/f3dJhDgyTq"
            gM = fn269
        else
            gM = "https://discord.gg/f3dJhDgyTq"
            gg = fn269
        end
        gL_2 = (gL_2 + 22) % 28
    end
until fn681((gL_2 * 5 + 12) % 28, 712218331)
for k, v in pairs(gN) do
    gM(v)
end
local gL_3 = nil
gI = 3
repeat
    gM = (gI * 1 + 0) % 2 + 1
    if gM <= 1 then
        gM = (vector.create((gI * 7 + 2) % 11 + 1, (gI * 6 + 4) % 13 + 1, (gI * 7 + 6) % 17 + 1))
        gO = (vector.create((gI * 3 + 4) % 11 + 1, (gI * 3 + 8) % 13 + 1, (gI * 2 + 10) % 17 + 1))
        gP = (vector.create((gI * 2 + 2) % 11 + 1, (gI * 10 + 11) % 13 + 1, (gI * 12 + 5) % 17 + 1))
        local gQ_4 = (vector.create((gI * 3 + 3) % 5 + 1, (gI * 3 + 5) % 7 + 1, (gI * 5 + 5) % 9 + 1))
        if vector.dot(vector.cross(gM, (vector.cross(gO, gP))), gQ_4) == vector.dot(gO * vector.dot(gM, gP) - gP * vector.dot(gM, gO), gQ_4) + 3 then
            gL_3.Name = gL_3
            gL_3.ResetOnSpawn = false
            gL_3.ZIndexBehavior = Enum.ZIndexBehavior
        else
            gL_3.Name = "OuroborosToggle"
            gL_3.ResetOnSpawn = false
            gL_3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        gI = (gI + 3) % 8
    else
        if gI * 111894953 + 7 + 3 <= gI * 111894953 + 7 + 3 + 4 then
            gL_3 = Instance.new("ScreenGui")
        else
            gL_3 = Instance:new()
        end
        gI = (gI + 1) % 8
    end
until fn681((gI * 7 + 6) % 8, 494033731)
gI = gethui and gethui()
gM = gI or game:GetService("CoreGui")
gk, f1, fY, Position, gH, f9 = nil, nil, nil, nil, nil, nil
gI = 18
repeat
    gT = (gI * 3 + 2) % 4 + 1
    if gT <= 2 then
        if gT <= 1 then
            local gU_18 = { "zhrmpksq", "wlplpdykmhfi", "jch", "lptaxgaalyxv", "dqn", "ouuhys", "egsrfdcxulve", "blnjcnfsfl" }
            if gU_18[(gI * 95 + 17) % 8 + 1] < gU_18[(gI * 95 + 17) % 8 + 1] then
                gL_3.Parent = gk
                gM = Instance.new(Instance.new)
            else
                gL_3.Parent = gM
                gk = Instance.new("ImageButton")
            end
            gI = (gI + 7) % 32
        else
            gV = ({
                "rsnvftu",
                "gehqqhvmxs",
                "zonsvyrfven",
                "vbnapztu",
                "pofsmvkkk",
                "zhpjykpsbuv",
                "brsi",
                "ogkfoys",
                "ytak"
            })[gI % 9 + 1]
            local gU_20 = gI % 3 + 2
            gW = (gV:reverse())
            local gU_21 = gV:len()
            gX = (gW:rep(gU_20))
            if gU_21 >= gX:len() then
                local fromOffset = UDim2.fromOffset
                gL_3.Size = fromOffset(52, 52)
                gV = UDim2.fromScale
                gL_3.Position = gV(gL_3, gL_3)
                gW = Vector2.new
                gL_3.AnchorPoint = gW(UDim2, 0)
                gX = Color3.fromRGB
                gL_3.BackgroundColor3 = gX(25, 25, gV)
                gL_3.BackgroundTransparency = 0.04
                gL_3.Image = 0.1
                gY = Enum.ScaleType
                gL_3.ScaleType = 0.5
                gL_3.AutoButtonColor = gW
                gL_3.Parent = Color3
                f1 = Instance.new(gL_3)
                f1.CornerRadius = UDim.new(gX, UDim)
                f1.Parent = f1
                fY = Instance.new(gY)
                fY.Color = Color3.fromRGB(gL_3, 0.5, UDim2)
                fY.Thickness = Enum
                fY.Transparency = fromOffset
                fY.Parent = "UIStroke"
                gH = Instance.new(fY)
                local new = UDim.new
                gH.PaddingTop = new(UDim, Vector2)
                gH.PaddingBottom = UDim.new(gL_3, fY)
                gH.PaddingLeft = UDim.new(0, 0)
                gH.PaddingRight = UDim.new(0, true)
                gH.Parent = gL_3
                gk = "rbxassetid://91400086538074"
            else
                gk.Size = UDim2.fromOffset(52, 52)
                gk.Position = UDim2.fromScale(0.5, 0.04)
                gk.AnchorPoint = Vector2.new(0.5, 0)
                gk.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                gk.BackgroundTransparency = 0.1
                gk.Image = "rbxassetid://91400086538074"
                gk.ScaleType = Enum.ScaleType.Fit
                gk.AutoButtonColor = true
                gk.Parent = gL_3
                local uICorner = Instance.new("UICorner")
                uICorner.CornerRadius = UDim.new(0, 12)
                uICorner.Parent = gk
                gP = Instance.new("UIStroke")
                gP.Color = Color3.fromRGB(80, 80, 95)
                gP.Thickness = 1
                gP.Transparency = 0.3
                gP.Parent = gk
                gO = Instance.new("UIPadding")
                gO.PaddingTop = UDim.new(0, 6)
                gO.PaddingBottom = UDim.new(0, 6)
                gO.PaddingLeft = UDim.new(0, 6)
                gO.PaddingRight = UDim.new(0, 6)
                gO.Parent = gk
                f1, fY, Position, gH = false, nil, nil, false
            end
            gI = (gI + 15) % 32
        end
    elseif gT <= 3 then
        if (gI * 3 + 5) * 17 % 4 == ((gI * 3 + 5) * 17 + 8) % 4 then
            gT = function(bY)
                if bY.UserInputType == Enum.UserInputType.MouseButton1 or bY.UserInputType == Enum.UserInputType.Touch then
                    f1, gH = true, false
                    fY = bY.Position
                    Position = gk.Position
                end
            end
            local InputBegan = gk.InputBegan
            InputBegan.Connect(InputBegan, gT)
            gT = fn627
            local InputChanged = gR.InputChanged
            InputChanged.Connect(InputChanged, gT)
            gT = function(b3)
                if b3.UserInputType == Enum.UserInputType.MouseButton1 or b3.UserInputType == Enum.UserInputType.Touch then
                    f1 = false
                end
            end
            local InputEnded = gR.InputEnded
            InputEnded.Connect(InputEnded, gT)
            f9 = false
        else
            gT = f9.InputBegan
            local gU_27 = gT
            gU_27.Connect(gU_27, gT)
            gT = fn627
            local InputChanged = gk.InputChanged
            InputChanged.Connect(InputChanged, gk)
            local InputEnded = gk.InputEnded
            InputEnded.Connect(InputEnded, gT)
            gR = gk
        end
        gI = (gI + 3) % 32
    else
        gT = (vector.create((gI * 2 + 5) % 11 + 1, (gI * 5 + 9) % 13 + 1, (gI * 14 + 1) % 17 + 1))
        local gU_30 = (vector.create((gI * 1 + 4) % 11 + 1, (gI * 1 + 13) % 13 + 1, (gI * 6 + 3) % 17 + 1))
        gV = (vector.create((gI * 1 + 6) % 5 + 1, (gI * 4 + 3) % 7 + 1, (gI * 2 + 5) % 9 + 1))
        if fn681(math.abs((vector.angle(gT, gU_30, gV))) - math.abs((vector.angle(gU_30, gT, gV))), 544454170) then
            gT = function()
                if gH then
                    return
                end
                f9 = not f9
                local jh = pcall(function()
                    gq.Minimize(gq, f9)
                end)
                if not jh then
                    pcall(function()
                        gq.Minimize(gq)
                    end)
                end
            end
            local MouseButton1Click = gk.MouseButton1Click
            MouseButton1Click.Connect(MouseButton1Click, gT)
        else
            gT = gk.MouseButton1Click
            gT.Connect(gT, gk)
        end
        gI = (gI + 3) % 32
    end
until fn681((gI * 31 + 18) % 32, 477252822)
gv, f2, fZ = nil, nil, nil
gT = 11
repeat
    gI = (gT * 2 + 2) % 3 + 1
    if gI <= 2 then
        if gI <= 1 then
            gI = {
                "czluyzzyfbg",
                "alietwea",
                "eltgcrgkwq",
                "eznrgw",
                "vlpol",
                "ufq",
                "bpbgbuawuy",
                "sgidlcip",
                "ozfac",
                "krqxzrw",
                "wfgzujvy"
            }
            local gL_4 = gI[gT % 11 + 1]
            gI = gL_4:len()
            gM = (gL_4:gsub("(.)", "%1%1", gT % 3 % 2 + 1))
            if gI <= gM:len() then
                gv = {}
                local gL_5 = { Title = "Auto Throw", Default = false, Callback = fn815 }
                gM = gN.Main
                gv.AutoThrow = gM:AddToggle("AutoThrow", gL_5)
                local gL_6 = { Title = "Throw Delay (s)", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2, Callback = fn325 }
                gM = gN.Main
                gM.AddSlider(gM, "ThrowDelay", gL_6)
                local gL_7 = { Title = "Auto Train", Default = false, Callback = fn356 }
                gM = gN.Main
                gv.AutoTrain = gM:AddToggle("AutoTrain", gL_7)
                local gL_8 = { Title = "Train Rep Delay (s)", Default = 0.2, Min = 0.1, Max = 1, Rounding = 2, Callback = fn535 }
                gM = gN.Main
                gM.AddSlider(gM, "TrainRepDelay", gL_8)
                local gL_9 = { Title = "Auto Equip Best Pet", Default = false, Callback = fn88 }
                gM = gN.Main
                gv.AutoEquipBest = gM:AddToggle("AutoEquipBest", gL_9)
                local gL_10 = { Title = "Auto Rebirth", Default = false, Callback = fn869 }
                gM = gN.Main
                gv.AutoRebirth = gM:AddToggle("AutoRebirth", gL_10)
                local gL_11 = { Title = "Auto Claim Season Pass", Default = false, Callback = fn543 }
                gM = gN.Main
                gv.AutoSeasonPass = gM:AddToggle("AutoSeasonPass", gL_11)
                local gL_12 = {
                    Title = "Auto Buy Wheels",
                    Default = false,
                    Callback = function(cf)
                        gD.AutoBuyWheels = cf
                    end
                }
                gM = gN.Main
                gv.AutoBuyWheels = gM:AddToggle("AutoBuyWheels", gL_12)
                local gL_13 = {
                    Title = "Auto Claim Achievements",
                    Default = false,
                    Callback = function(cg)
                        gD.AutoClaimAchievements = cg
                    end
                }
                gM = gN.Main
                gv.AutoClaimAchievements = gM:AddToggle("AutoClaimAchievements", gL_13)
                local gL_14 = {
                    Title = "Auto Spin",
                    Default = false,
                    Callback = function(ch)
                        gD.AutoSpin = ch
                    end
                }
                gM = gN.Main
                gv.AutoSpin = gM:AddToggle("AutoSpin", gL_14)
                local gL_15 = {
                    Title = "Auto Daily Reward",
                    Default = false,
                    Callback = function(ci)
                        gD.AutoDailyReward = ci
                    end
                }
                gM = gN.Main
                gv.AutoDailyReward = gM:AddToggle("AutoDailyReward", gL_15)
                local gL_16 = {
                    Title = "Auto Playtime Reward",
                    Default = false,
                    Callback = function(cj)
                        gD.AutoPlaytimeReward = cj
                    end
                }
                gM = gN.Main
                gv.AutoPlaytimeReward = gM:AddToggle("AutoPlaytimeReward", gL_16)
                local gL_17 = {
                    Title = "Auto Free Chest",
                    Default = false,
                    Callback = function(ck)
                        gD.AutoChest = ck
                    end
                }
                gM = gN.Main
                gv.AutoChest = gM:AddToggle("AutoChest", gL_17)
                local gL_18 = {
                    Title = "Class Slot",
                    Values = { 1, 2, 3 },
                    Default = 1,
                    Callback = function(cl)
                        gD.ClassSlot = cl
                    end
                }
                gM = gN.Main
                gM.AddDropdown(gM, "ClassSlot", gL_18)
                local gL_19 = {
                    Title = "Auto Roll Class",
                    Default = false,
                    Callback = function(cm)
                        gD.AutoRollClass = cm
                    end
                }
                gM = gN.Main
                gv.AutoRollClass = gM:AddToggle("AutoRollClass", gL_19)
                local gL_20 = {
                    Title = "Egg",
                    Values = gS,
                    Default = gD.HatchEgg,
                    Callback = function(cn)
                        gD.HatchEgg = cn
                    end
                }
                gM = gN.Eggs
                gM.AddDropdown(gM, "HatchEgg", gL_20)
                local gL_21 = { Title = "Amount", Values = { 1, 3, 8 }, Default = 1, Callback = fn865 }
                gM = gN.Eggs
                gM.AddDropdown(gM, "HatchAmount", gL_21)
                local gL_22 = {
                    Title = "Hatch Delay (s)",
                    Default = 0.5,
                    Min = 0.2,
                    Max = 3,
                    Rounding = 2,
                    Callback = function(cp)
                        gD.HatchDelay = cp
                    end
                }
                gM = gN.Eggs
                gM.AddSlider(gM, "HatchDelay", gL_22)
                local gL_23 = {
                    Title = "Auto Hatch",
                    Default = false,
                    Callback = function(cq)
                        gD.AutoHatch = cq
                    end
                }
                gM = gN.Eggs
                gv.AutoHatch = gM:AddToggle("AutoHatch", gL_23)
                local gL_24 = {
                    Title = "Potions",
                    Values = gK,
                    Multi = true,
                    Default = {},
                    Callback = function(cr)
                        local jj = {}
                        for k, v in pairs(cr) do
                            if v then
                                table.insert(jj, k)
                            end
                        end
                        gD.SelectedPotions = jj
                    end
                }
                gM = gN.Items
                gM.AddDropdown(gM, "SelectedPotions", gL_24)
                local gL_25 = {
                    Title = "Auto Use Potions",
                    Default = false,
                    Callback = function(cv)
                        gD.AutoPotions = cv
                    end
                }
                gM = gN.Items
                gv.AutoPotions = gM:AddToggle("AutoPotions", gL_25)
                local gL_26 = {
                    Title = "Fruits",
                    Values = gJ_2,
                    Multi = true,
                    Default = {},
                    Callback = function(cw)
                        local jr = {}
                        for k, v in pairs(cw) do
                            if v then
                                table.insert(jr, k)
                            end
                        end
                        gD.SelectedFruits = jr
                    end
                }
                gM = gN.Items
                gM.AddDropdown(gM, "SelectedFruits", gL_26)
                local gL_27 = {
                    Title = "Auto Use Fruits",
                    Default = false,
                    Callback = function(cA)
                        gD.AutoFruits = cA
                    end
                }
                gM = gN.Items
                gv.AutoFruits = gM:AddToggle("AutoFruits", gL_27)
                local gL_28 = {
                    Title = "Use Delay (s)",
                    Default = 1,
                    Min = 0.5,
                    Max = 10,
                    Rounding = 1,
                    Callback = function(cB)
                        gD.UseDelay = cB
                    end
                }
                gM = gN.Items
                gM.AddSlider(gM, "UseDelay", gL_28)
                local gL_29 = {
                    Title = "Anti-AFK",
                    Default = false,
                    Callback = function(cC)
                        gD.AntiAFK = cC
                    end
                }
                gM = gN.Misc
                gv.AntiAFK = gM:AddToggle("AntiAFK", gL_29)
                f2 = {
                    "AutoThrow",
                    "AutoTrain",
                    "AutoEquipBest",
                    "AutoRebirth",
                    "AutoSeasonPass",
                    "AutoBuyWheels",
                    "AutoClaimAchievements",
                    "AutoSpin",
                    "AutoDailyReward",
                    "AutoPlaytimeReward",
                    "AutoChest",
                    "AutoRollClass",
                    "AutoHatch",
                    "AutoPotions",
                    "AutoFruits",
                    "AntiAFK"
                }
            else
                gN = {}
                gI = gJ_2.Main
                gR = { Callback = fn815, Default = false, Title = "Auto Throw" }
                local gU_32 = gI
                gN.AutoThrow = gU_32:AddToggle(gJ_2, gR)
                gX = fn325
                gY = gJ_2.Main
                gY.AddSlider(gY, "AutoThrow", "Auto Throw")
                local Main4 = gJ_2.Main
                local gZ = { Default = false, Title = "Auto Train", Callback = fn356 }
                gN.AutoTrain = Main4:AddToggle("Callback", 3)
                local g2 = gJ_2.Main
                g2.AddSlider(g2, gI, "ThrowDelay")
                gR = { Default = false, Callback = fn88, Title = "Auto Equip Best Pet" }
                g2 = gJ_2.Main
                gN.AutoEquipBest = g2:AddToggle(gZ, "Auto Equip Best Pet")
                gZ = fn869
                g2 = gJ_2.Main
                gN.AutoRebirth = g2:AddToggle("AutoRebirth", gX)
                gX = fn543
                g2 = gJ_2.Main
                gN.AutoSeasonPass = g2:AddToggle("Title", "Title")
                gP = gJ_2.Main
                gN.AutoBuyWheels = gP:AddToggle(fn815, false)
                gP = gJ_2.Main
                local gQ_7 = gP
                gN.AutoClaimAchievements = gQ_7:AddToggle(Main4, gP)
                local Main3 = gJ_2.Main
                gN.AutoSpin = Main3:AddToggle("Callback", false)
                g2 = gJ_2.Main
                gN.AutoDailyReward = g2:AddToggle("Title", gX)
                gX = gJ_2.Main
                gN.AutoPlaytimeReward = gX:AddToggle(gJ_2, "Default")
                local Main2 = gJ_2.Main
                gN.AutoChest = Main2:AddToggle(1, "Callback")
                local Main = gJ_2.Main
                Main.AddDropdown(Main, "AutoTrain", "Callback")
                gO = gJ_2.Main
                gN.AutoRollClass = gO:AddToggle("Min", "Rounding")
                gO = gJ_2.Eggs
                gO.AddDropdown(gO, "Auto Free Chest", "AutoDailyReward")
                gO = { Title = "Amount", Default = 1, Callback = fn865, Values = { 1, 8, 3 } }
                gP = gJ_2.Eggs
                gP.AddDropdown(gP, "AutoSpin", "Default")
                gP = gJ_2.Eggs
                gP.AddSlider(gP, fn535, gN)
                gP = gJ_2.Eggs
                gN.AutoHatch = gP:AddToggle("Callback", gN)
                gP = gJ_2.Items
                gP.AddDropdown(gP, 3, 0.2)
                gP = gJ_2.Items
                gN.AutoPotions = gP:AddToggle(gD, gZ)
                local Items = gJ_2.Items
                Items.AddDropdown(Items, "Values", "Callback")
                gP = gJ_2.Items
                gN.AutoFruits = gP:AddToggle("Default", "Title")
                gM = gJ_2.Items
                gM.AddSlider(gM, "Title", gR)
                gI = gJ_2.Misc
                gN.AntiAFK = gI:AddToggle(gO, gJ_2)
                gK = "Default"
            end
            gT = (gT + 5) % 12
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gT, 17), string.byte(tostring(fZ))), 11), 1128767667), 1601281280), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gT, 17), string.byte(tostring(fZ))), 11), 3166199628), 3077615872))), 1601281280), 3077615872) == bit32.rrotate(bit32.bxor(bit32.lrotate(gT, 17), string.byte(tostring(fZ))), 11) then
                fZ = function(cF)
                    for i, v in ipairs(f2) do
                        local jz = gv[v]
                        if jz and jz.SetValue then
                            pcall(function()
                                jz.SetValue(jz, cF)
                            end)
                        end
                    end
                end
            else
                gv = function(cF)
                    for i, v in ipairs(f2) do
                        local jz = gv[v]
                        if jz and jz.SetValue then
                            pcall(function()
                                jz.SetValue(jz, cF)
                            end)
                        end
                    end
                end
            end
            gT = (gT + 2) % 12
        end
    else
        gI = (vector.create((gT * 4 + 1) % 11 + 1, (gT * 1 + 4) % 13 + 1, (gT * 13 + 15) % 17 + 1))
        local gL_31 = (vector.create((gT * 1 + 2) % 11 + 1, (gT * 8 + 10) % 13 + 1, (gT * 15 + 4) % 17 + 1))
        if vector.dot(gI, gL_31) * vector.dot(gI, gL_31) >= vector.dot(gI, gI) * vector.dot(gL_31, gL_31) + 1 then
            gM = { Title = "Enable All", Callback = fn13 }
            gO = gq.Misc
            gO.AddButton(gO, "Title")
            gI = gq.Misc
            gO = gI
            gO.AddButton(gO, gq)
            gd.SelectTab(gd, 1)
            gN(fn13, gM, gI)
        else
            gI = { Title = "Enable All", Callback = fn13 }
            local Misc2 = gN.Misc
            Misc2.AddButton(Misc2, gI)
            gI = {
                Title = "Disable All",
                Callback = function()
                    fZ(false)
                end
            }
            local Misc = gN.Misc
            Misc.AddButton(Misc, gI)
            gq.SelectTab(gq, 1)
            gd("Launch a Wheel!", "Ouroboros Hub loaded.", 6)
        end
        gT = (gT + 8) % 12
    end
until fn681((gT * 5 + 10) % 12, 678658481)
