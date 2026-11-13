local AttackController
local f3
local f6
local fU
local screenGui2
local f_
local f2
local fN
local gb
local fW
local gh
local fZ
local ItemDef
local f1
local f4
local gq
local gt
local gd
local gm
local function fn71(ed, ee)
    if type(ed) ~= "number" then
        return false
    end
    if ed % 1 ~= 0 then
        return false
    end
    local ef_1 = bit32.bxor(ed, 1540483477)
    local ef_2 = bit32.band(ef_1 * 403 + bit32.lshift(ef_1, 24), 4294967295)
    local ef_3 = bit32.bxor(ef_2, bit32.rshift(ef_2, 13))
    return ef_3 == ee
end
local function fn107(bG)
    if gb and (bG.UserInputType == Enum.UserInputType.MouseMovement or bG.UserInputType == Enum.UserInputType.Touch) then
        local iJ_1 = bG.Position - f6
        if iJ_1.Magnitude > 4 then
            fZ = true
        end
        gq.Position = UDim2.new(f1.X.Scale, f1.X.Offset + iJ_1.X, f1.Y.Scale, f1.Y.Offset + iJ_1.Y)
    end
end
local function fn183(aE)
    gm.Notify(gm, { Title = "Ouroboros Hub", Content = aE, Duration = 4 })
end
local function fn250(be)
    fN.AutoCollectWeapons = be
end
local function worker()
    while true do
        if fN.KillAura then
            pcall(function()
                for i, v in ipairs(f3:GetAliveEnemies()) do
                    f3.DoDamageToEnemy(f3, v)
                end
            end)
            task.wait(math.max(gt() * 0.5, 0.05))
        else
            task.wait(0.1)
        end
    end
end
local function fn605(bo)
    bo.AddButton(bo, {
        Title = "Join Discord for Dupes/Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = function()
            setclipboard(f4)
            fW("Ouroboros Discord copied to clipboard!")
        end
    })
end
local function fn657(bh)
    fN.AutoUnlockZones = bh
end
local function fn672()
    local hw_1
    local hv_1
    hv_1, hw_1 = pcall(function()
        return AttackController:_GetAttackCooldown()
    end)
    local hx = hv_1 and (function(d4, d5, d6)
        if type(d4) ~= "string" then
            return false
        end
        if #d4 ~= d5 then
            return false
        end
        local d7 = 5381
        local d8 = buffer.fromstring(d4)
        local d9 = 0
        while d9 <= d5 - 4 do
            local ea = buffer.readu32(d8, d9)
            local d7_1 = bit32.bxor(d7, ea)
            d7 = bit32.band(d7_1 * 33, 4294967295)
            d9 = d9 + 4
        end
        while d9 < d5 do
            local eb = buffer.readu8(d8, d9)
            local d7_2 = bit32.bxor(d7, eb)
            d7 = bit32.band(d7_2 * 33, 4294967295)
            d9 = d9 + 1
        end
        return d7 == d6
    end)(type(hw_1), 6, 472614556) and hw_1 > 0
    if hx then
        return hw_1
    end
    return 0.2
end
local function fn685()
    if fZ then
        return
    end
    gh = not gh
    f2.Minimize(f2, gh)
end
local function fn764(Z)
    local hm_1, hm_2
    local hl_1
    for i, v in ipairs(Z) do
        hl_1, hm_1 = pcall(game.HttpGet, game, v)
        local hn = hl_1 and (function(d4, d5, d6)
            if type(d4) ~= "string" then
                return false
            end
            if #d4 ~= d5 then
                return false
            end
            local d7 = 5381
            local d8 = buffer.fromstring(d4)
            local d9 = 0
            while d9 <= d5 - 4 do
                local ea = buffer.readu32(d8, d9)
                local d7_5 = bit32.bxor(d7, ea)
                d7 = bit32.band(d7_5 * 33, 4294967295)
                d9 = d9 + 4
            end
            while d9 < d5 do
                local eb = buffer.readu8(d8, d9)
                local d7_6 = bit32.bxor(d7, eb)
                d7 = bit32.band(d7_6 * 33, 4294967295)
                d9 = d9 + 1
            end
            return d7 == d6
        end)(type(hm_1), 6, 2175009567) and #hm_1 > 200
        local hn_1
        if hn then
            local hl_2 = loadstring(hm_1)
            if hl_2 then
                hm_2, hn_1 = pcall(hl_2)
                local hl_3 = hm_2 and (function(d4, d5, d6)
                    if type(d4) ~= "string" then
                        return false
                    end
                    if #d4 ~= d5 then
                        return false
                    end
                    local d7 = 5381
                    local d8 = buffer.fromstring(d4)
                    local d9 = 0
                    while d9 <= d5 - 4 do
                        local ea = buffer.readu32(d8, d9)
                        local d7_3 = bit32.bxor(d7, ea)
                        d7 = bit32.band(d7_3 * 33, 4294967295)
                        d9 = d9 + 4
                    end
                    while d9 < d5 do
                        local eb = buffer.readu8(d8, d9)
                        local d7_4 = bit32.bxor(d7, eb)
                        d7 = bit32.band(d7_4 * 33, 4294967295)
                        d9 = d9 + 1
                    end
                    return d7 == d6
                end)(type(hn_1), 5, 248602996)
                if hl_3 then
                    return hn_1
                end
            end
        end
    end
    return nil
end
local function fn792()
    pcall(function()
        gd.CaptureController(gd)
        gd.ClickButton2(gd, Vector2.new())
    end)
end
local function fn838(bE)
    if bE.UserInputType == Enum.UserInputType.MouseButton1 or bE.UserInputType == Enum.UserInputType.Touch then
        gb, fZ = true, false
        f6 = bE.Position
        f1 = gq.Position
    end
end
local function fn1004(bd)
    fN.EquipBestSword = bd
end
local function worker3()
    while true do
        if fN.AutoCollectWeapons then
            pcall(function()
                for k, v in pairs(fU._Orbs) do
                    local hQ = v._Metadata and v._Metadata.RewardType
                    local hR = hQ
                    if hQ then
                        hQ = ItemDef.GetItemInfo(hR)
                    end
                    local hR_1 = hQ
                    if hQ then
                        hQ = hR_1.Category == ItemDef.Categories.Equips
                    end
                    if hQ then
                        hQ = (function(d4, d5, d6)
                            if type(d4) ~= "string" then
                                return false
                            end
                            if #d4 ~= d5 then
                                return false
                            end
                            local d7 = 5381
                            local d8 = buffer.fromstring(d4)
                            local d9 = 0
                            while d9 <= d5 - 4 do
                                local ea = buffer.readu32(d8, d9)
                                local d7_7 = bit32.bxor(d7, ea)
                                d7 = bit32.band(d7_7 * 33, 4294967295)
                                d9 = d9 + 4
                            end
                            while d9 < d5 do
                                local eb = buffer.readu8(d8, d9)
                                local d7_8 = bit32.bxor(d7, eb)
                                d7 = bit32.band(d7_8 * 33, 4294967295)
                                d9 = d9 + 1
                            end
                            return d7 == d6
                        end)(hR_1.EquipType, 5, 3419495346)
                    end
                    if hQ then
                        v.AlignPositionToCharacter(v)
                    end
                end
            end)
        end
        task.wait(0.2)
    end
end
fN = nil
local fO
local fP
local fR
local fS
fU = nil
fW = nil
screenGui2 = nil
local fY
fZ = nil
f_ = nil
AttackController = nil
f1 = nil
f2 = nil
f3 = nil
f4 = nil
f6 = nil
local f7
local f8
local ga
gb = nil
local gc
gd = nil
local ge
local gf
local gg
gh = nil
local connection
ItemDef = nil
local textLabel2
gm = nil
local gn
local gp
gq = nil
local gr
gt = nil
local f9, gu, gw, gy
local gv_1, gv_2
local gz, gA, gC, gD, gE, worker2, gI, gJ, gK, gL, gM
local gB_1
local fV = (buffer.fromstring("\x1a2)}.-</8}122)}-4143:}(-b}\t(/3}$2(/}:/439}43)2}<>)(<1}-/2;4)sWW\x1e14>6})2}7243})58}?4::8.)})/<943:}>200(34)$}</2(39|$5BK1;^ygf.;''# i||!2$}4:';&1& 6!0<='6='}0<>|\x120'&2?\x1e2 '6!\x1c<4$2*|\x15?&6='~\x016=6$67|>2 '6!|\x15?&6='}?&2&3#9 22$5(%{nnxpuqqqywtryqvu!*LM*,9+p@e+ioJy$2Nhx%rd{)wTV^RGZ@[QaGT[FETGP[VLVF3=atQwoCw+,Ee=y9k=+QAz5+lHZ@GNm@[LJ]@FGzK6F9etDSi(y)e-,!/?LF?,8yEGZdUGdGUU^cUBFYSU6J}lrSqZ[=?I@[z%Oj#NR{qS8W#pY0=x]J_LIHnBCY_BAAH_]n-:gqjFx_IrbX@W56%.?602M~E_IBoDKHFON5J*]m)6Fawf,7!bAejtpht7[=&}gGgSRIdCUR|IHC702Kf6rEBA_R?g]AC%T]HdVf:#XP\x02.=$*;?#.,*o\x0b&<, =+o, ?&*+o; o,#&?- .=+nw[FZQFfUP]AG0BW0m_!e[ywh{DokjPpuu}1A:x(mYXCyB@COGvCBI_eij4NpZ2jsSZ++js=cc4QH(nMOGK^CYBHx^MB_\\M^IBOU-iE268@cMrcql4F(q@SDOU2xs/n1{kvGWKJ.%v#C0TwhKD}0vhY+oQEXZepu}adTL)ievrDO17vHow%C_;4Mq]7PI-eHRBNOODBUiwB+@pit}OzM}[3oL.%siu9@a1q^SX_B`_Y^DGiD}?7!BpE^H84{zn_oi(+itIPMO_@EcDbuXkS5MpN,=)g9Fr:ON&$afk(M&szEYC^CED}WXcC5/rGU}akjFN^ciMM2,AzwVS\x18,-6y\x1a655<:-y\x0e<8)67*y67y\x1e+6,7=[iC!LgWUXQ`MDQmXwiazXlYZAvZ*E-Zq=Eo[_8&v|XTRPyTWPYZ&E)NU,LVHE=tkb/Z{jrI*SBZ~bx_YD@NQ,Ra*P&bJE!z3F/xgr/WAGH5OM}GTK$[CG)^0d63a${S=#Q{}#dE.N.*9GWwb]F@AUXaGQF4J*NRNqwDRp+yL7OB4!w9oq@SDOUH^2tOWsF8V=iz&s:}Mry3}6/G.KqVHMLz]_YVhWrP_@-U^g?y,,ogWA{qK%k?4&$,R+/HA*-^.VcG[D)GR,=;gEhW8;1eTGP[Av.Hso1l}m!0,]GC*=bP1a#YjcTr^VQF81FZ.W)+Y?zqi,Wd(dunjowRE}]vTEbTCGXRTpZ(CX+3Om#fDhlyBt.jcnhKIAMXE_DN~XKDYZKXODIS]v1+:qJ2;W^U?t1D=.h]yO=UsRHqi17[UFJ:mHq.%;1I${%x0C^q#xtP)e:tnn,L^3l_kuDW@KQ(-gTkKP-=TK3F$iY6I1pZ^PoV]O#olwRB7c+0^=]p)umg)7Mz2FSot+-8!+-&wHAP3Nfkm8JLfit4Z:8i+fzs`GMLQkLAH_@F[%O098?o^NxaL9p!?97?44,Xf1PCY:wj7U@aCbp#:N42,~RSSX^I{y]0QJcfVlzx@^z*=M_cCtEVAJPXv,&Z,LSvs{:b8w$UlCgQMvZ[APMA@TYR]&^dD6nV.KQHA0I1IsGF]`WP[@FZu;ZrNm&JwsJ!)bAZoUVGQHv*:B^6d6zw:OfOXm_lTYULPnJ^[6]CLNs_1s_K[;=_0!23Kik-pFWoJAQBQZ;AG4(QQT#tnK+7Kc=+;!8**<-0=cvv`hmiiiaoljainm{WTWJm#I7nUFqS1@v86SjRUKHLrWWgRQNKx@cTxo6h25_Lse5YFwsGF]gBU@SVWAon[8fa4h_b[CM7xTUOITWW^IHL#M14Nrl{/4eTCzNOTnUWTXPaTU^H2h6cVQwRfFZQCUC*agLp?2ajJmr0KC.-!NGvBCXt[V^Z~YSROuE3t[!Ct;)kdH@GCav*/6c]4f[j/cEiw}.7vCBI_Mot0]cSiy=)_0/JbS$;m~YSROuR_VA^XEsKOLt4WmurVD^YPdCN[R$)#KB7K*}T(-mK]JqVHMLlAH]n=fEw9oaXZsRQVB[CEpUa28iDG1@@JZMUoLNFJ_BXCIy_LC^]L_HCNTHWMZIMW[I$3(^8RV}Og#DtpMPHA7d6Ev,8g&HxR{$1I[tNO={hU#=Lwb%u^z%GCq9yCDYTYDYEfDY[YkNb!!p2wSKV@g:GWRO)(c#.f#3u%XT[F[Yv)e_j6Dk87In@ghJGGIJH@[TjTLHFHeAOQeQPKgKHHAGPsAETKJWWgmX[nP]MQgD2GpqJszl2y]ILT;MB{FL.eE[[QowQZHr2HP1QDWnyYu^s3drHzo=8US;ld7wV*2,UjaBLIlXYBABLInBCKDJbSZSFYDBuYXBDYZZSDdFWnB[aVZoFUFOPXH@q^CG@3T-=aUhhm;E}sGF]gBU@SVWAY_J5NlZKyPS[ZMsd;Yv#!(eRDRCxYdGV@Y=X60ejP[UPW^#ap;qAob;,%.9XENyiT2:]x[F_[@TUpSNe),EV%v6gRRGEMeIHRTIJJCT{XIUVON_jUISNSUTzNOTyNOOTUxTWTIx^H_dC]XYyT]HmccNSEDSrH[DqHYDMeIJITvYeX3iW!iucY^CNC^C_xCKK@IgNOUI-JT;t}QcHll]@L`yTQ_VU]VL}IZV^jybGF!5rmACZR[VWVw+O};y~OR^rkFCMDGOD^!+4(%%0*b)Bgs=qFAJQWKpFQUJ@FlA1M-fG3Q^DAHiX]]PW^{VMMVThNXOtSMHIiDMXr;pc3*!EUKbTtdPQJHDQLFvL_@cRWWZ]TaZT[GgVAEPAsMJ@KSlZRO}TIxSRW_w[FZQFfUP]AG`QTTY^WbYWXDs_B^UBbQTYEC6 5&!=-4=633iSTIDITIUnSD~KJAwAVRMGAtXYCRYCLtZbrHI8}Iv5eD4wBCH~H_[DNHhE]KQPkV@AVbFJLNi^__DE6=/ZV(k%$q1`LDCNv?C$E%fDUrDSWHBDpFWoJAQBQZnF]AHDkFEMdUFQZ@_q/7 4'448&7;8PAEJ[=L?xb=+40(<'83+{JW[W,4=M7<.eP%yNEyEDNFCH^^aWFt]^VW@{JW[cNMJChDGDYfe+-vSScXPP[R$'6 9A7qcqNRHUHNO\xcd\xcc\xcc\xcc\xcc\xcc\xdc?}B^DYDBC\n\xd7\xa3p=\n\xe7?vBQ]U{=7>7<Q!Px?333333\xd3?{_X_[_LSiVJPMPVW~A]GZGA@\x0626*30(N`TGKCcC=$6i7PGwF[W}Kbr^__TRESGZXgrwyEHPL[Z3!+87N,PDY[dqt*=.=*+=hIJMY@XwFQU@Q-)1,:-pAVRGVwQZ@QF`QBU^D%920:3}L_HCYRBLVA=%&5=LO^HQvBQ]UYLOAH}@]ELWK^MIEFWAXzFKS\xbd\xed\xec\xd1C[r\x1dFMNU\xf4#\xa29@`9\x9c{ARM\xe4%K\xa1\x9c\x86+\x1ccYJU%\x99<\x00pT@E\x16\xc2GDS@ND\x9e\xb8`6 \xabs\"\xab\x0fr\x15JAS&/$maxT_M`ORTZV83!uNQ1:(\xcc\x01\xa4\x01-\x0eV\x010\x05\x10R_\xbei\xff-\x03*?s"))
local fT = (buffer.fromstring("5))-.grr/<*s:4)5(?(.8/>23)83)s>20r\x1c>)(<1\x10<.)8/\x122:*<$r\x1b1(83)p\x0f838*89r0<.)8/r\x1c9923.r\x143)8/;<>8\x10<3<:8/s1(<Ci3(.CePPrAx8*uAM2,8;''# i||4:';&1}0<>|\x120'&2?\x1e2 '6!\x1c<4$2*|\x15?&6='~\x016=6$67|!6?62 6 |?2'6 '|7<$=?<27|\x15?&6='}?&2&\x0510+d\x07+((!'0d\x13!%4+*7d+*d\x036+1* s}!/W/$aVWx&y7eYGTkm,i#eQPKgKHHAGPsAETKJWl1k3s4rh]aY]*#S5%M?,+]*0!Dh6&ay[AGQvA@@[Z\x05wX]W_H,v]]vP_{K8K5W1P^[n.H&TC:Wuqabq+`~~v=27=5~*1~=1.'w(6}IvTE;]9qfyq71IxCpSxzUXSTIkTRUOvXd/?^2Kj058uH-FpkOYD1c:?SK)NYmx[YQ]HUOT^nH[TIJ[H_TYClrBxp*$Bzppw]/kHFFmvTEbTCGXRT*cI1J7fFD0+rr.BBkAcVu+i{#:SLj}kNN~EMMFO&ZA4Ui87%vIG+-OIq(pD+L@T+.C582`TUN\x01fN\x01UN\x01cDRU\x01nVODE\x01{NOD9I=SavZMsvq&i\n07*'*7*6e\x01,6&*7!e&*5, !e1*e&),5'*$7!dy[AGQvA@@[Z\x05wX]W_@5p.Ry%3W(-^gcJQ#bw,kgBBrIAAJC-=e0w3%s:97F-]@R[0(TlhQ[qkx8bTE}XSCPCH?6-7aZ[joY3dI)s/Y*eQHJfyWI3zYKK@}K\\XGMKjF@_uGZ0n@JVm^/C_;Erh:j9djE_B\x06jm`RaHuZu?mtGv6$r.B3d:!Wgp0}fW+gVERYCP-+ustN_v%YI:#rIJ56p81.GX8P%3hqS^^PSQY/8(TLfseTHsMb?F##$%wHUomW=&4fCTARWV@IA%MYUex2#x:3tDc7$wTY3fUHeVq@SDOU0.qsVvd;rbn4%6#j)A5L(ikay1Z$tsPRZVC^D_Ur^]^C\x02MD0g@DkFq#CKs7TujB8xd}LIIDCJBd{Q)}@{zU?g?&f)FY=?1(8m=rQS[WB_E^TdBQ^C@QBU^SIdR3a%q,[#1W6oFEWfI(oiEvK9a;RT++JkI{39g/dvOgQt6787><;816*&^(L&4{;l./Z$l0j-,RE4]vZ[AGZYYPGFDS?Uj0Ef*+zLFK;7PL3iCfkZGKs^]ZS9%8nYZY@9N=jw27udJ%P^8?l]@LlJYVKHYJ]V[Avp{gjS^)y0NQPo*n`FUZGDUFQZWM1sXO*_ifERP6IkV[NiKa^BXEX^_CJ;E$D1Jr$,M2uInty8/YQfrH[D&(bTF@+U}5}#+,%2RZL^}$h{m4{~OR^rkFCMDGOD^0l2]0R!owABh2MWwweTIE.z#&b]48kvt7eCv?wY]c00-rl#rVD^YPs^ERTC^XY+arp@-Tqm!$B^/FeTIEbXKT2#!jNy}B7{Habq4(fS}x7dwVURF_Gk;9NbvjTUW;tHywNES1(%6=9'=-2eF!yWQ]4yJ$K4-.pN/kBM-d<&-(;+/64)6i51M%6NN36wApTK)3.arU_^Cy^SZMRTI(A6@I+s1CFiRrf0qNRHUHNOKnW}zg5c*].Lf[YacUD*mDE_/IH@,#ntu@x0sZ:FU5Ab;oP4cROCd^MR[iOM%DzTIf56e[refMBn&-?@f;sgc4V{l8=]ibYFx);q0(3CZAPLzCusJ?D7$u%N1s}0%n9GFr]Y^DC[MZHOAM@k#?I&5?_b%SK5{d~JKPjOXM^[ZL02yyk/Ou,Y8R^DabHDEGo[.,g16^JLbk]aXqpSI(WbQF@]WUXuX]SZYQZ@;p=,%eUCK{^^xONNUTF.?3RLzxexLvEeWXHlXYBnALD@dCIHU@+-p=Z,^}wW{YL]_WJQ]Ka6d1*Dal4]!rgzng[ZPX]V@@8Mijp:xRprl*4J9Zj^_DFJ_BHxBQN/?RxQ+GE#z8*tIXPyX[j/i/Q,%Ck?Vx.];Nr{TQQyTOX^ITRS[;[WUdhXexBqED_e@WBQTUCAVzc{OE;]I9dGEMATISHBrTGHUVGTCHE_gMYDFylidAD)rdCJQG.!qKX*uWZZTWU]Th@H1.(rg{j;$C_PDY[yPPESB3^9;[]=of%kzrQS[WB_E^TdBQ^C@QBU^SItWU]QDYCXRbDWXEFWDSXUOPDY[dqt9RI1++=L(1j26SqmgKVJAVir?IvRu}Hxf$qyHUYnBAB_\x1e.XCUKbv^gSmhLX]YI1bW37Tgrf/m0AOhBNON*=s(OGpWTv%0}!7i@A[4/1cjJ9m3]Qh@f.[VI_[^AX=1n0@E-yM2_1wPMVEPQK^S~SVXQRZQKV]O_){xN+ZQLG#76e5j~YGBCuRPVYQ-x#Ekj]I=>/9 AJH*2&/1v+=s%sVVfSP7MmmM1JIgCy3h_CFNiEDLCMyOI^CEDpJYF3OzAn+o@3[{T[{LYE@JH]LMjFGO@NZ~DWHZx(2CRS!ytWA;nTSNCNSNR\x01iTCU(Qp{JCJ_@][{@u@AJM/$6*}6@zd?}lW{}EzYHTWNO^kTHRORTU92 tkn.RRIcGsdDPnKK{@HHCJQ5NVAjW;2$>%(<:*LL{=&%nnENFRhDE_YDGGNYc_RJ[dC:_J98g_buA@[aZX[W_n[ZQGEBBK*=JqysC#2+T;9;&#qII)K]eraRgVKGyNWO6*2IPbq@]Q}dILBKH@KQxITXum@EKBAIBXo[_CZhOY^y]EXNwMJWZWJWKhJWUWyUHT_Hh[^SOIyd^lgIL]+uP21OnTUR(lLC{X!b?`FPG|[E@AaLEP@WB7euotjWL7PgHMMeHSDBUHNOxYB_POQEp0&TNvBCX\x17eRU^EC_+ 2TeqHiLNh7NXIITSZNWCQEe_XEHEXEYb_H|TOSZVv^_RNV`BX^HhCLOAHIlCFLDmZ[[@A\x1d|^OxSRW_I^U|S^UROmRTSIgSRItCDOTRN}_Ni_HLSY_u33')10*'4883*?766?/1+1HANSXKTAQMVzEYC^CED99f`VGGZ]T@}{zXBDR{RVARYR@7t^dK;fo^COyNOOTU\x0b:'+\x1c030-lXSAa#&dd_y{WVV][L8(c_RJ{B^?Y{^^nU]]V_p@QFFMdVJ~HYkBAIH_@TZOYOSxIsaIXMHMXMq@]QiDG@INZGE{KIDMbGGwLDDOFfYE_B_YXjHEEKHJBmRNTITRShOEDYeDGlQ]L[GHExZ__rFARtVSS~JM^yO^^CDMYffffff\xd6?pR__QRPX 7$7 !7T@]_`upxG]GLBKeDG@TMUO[FD{nks_^^USD?)!<QrKbMWJbEHtA@KjKH}BXBIGNbDOUDShRA^?!o^MZQKdUFQZ@cRAV]Gk^^KIA|M^IBXj^MAIoBJCBcOG@#fSP^WGSBE@<?.8!|FUJEt[W_YALAFh\x0e\xfd\x88\x15\xdc\xb0$3;'6M[SNkZGKta\xd1\x0etXPW{W_XeLO]iEMJeOCBiHr\x1f^\xb2\x14J\xbf\x9f\xc6cyHUY\xd8\x1bC;$-&=6$*!3mWeXSA,%.,'5'.%ABK,\x01\xb8\x0bd\x14,a2W\x0c\x06\tk\x1d<J\x1a[\xaaC"))
local fQ = (buffer.fromstring("\x1a2)}.-</8}122)}-4143:}(-b}\t(/3}$2(/}:/439}43)2}<>)(<1}-/2;4)sWW\x1e14>6})2}7243})58}?4::8.)})/<943:}>200(34)$}</2(39|C23Z#0,,(+bww?1,0-:v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w*=4=9+=+w49,=+,w<7/6479<w\x1e4-=6,v4-9-`ECD\ne_XEHEXEY lXOO\naOSFOYY\n\x0c\nn_ZO\nyIXCZ^Y qiFCIA\n^E\niEZS\nnCYIEXNw\x07=:'*':';h\x0c!;+':,h+'8!-,h<'h+$!8*'):,ig[,nhU@V{JW[wnCFHABJA[Sr5xHU2s6,eqsQ{gz&s6L?Ph?;Dm?rfD^XNi^__DE\x1ahGBH@BTQE!a)4o/D:HlmSqP)E;a/b?n[ZQw[Z@F[XXQFDu9Y)^lq_/?*=HPa!=u=bl1R2@{xITXtm@EKBAIBXz;i:xZXm9I@5Hy7b24@egH)?Q,2vPFQjMSVWpFQUJ@FeF$#P:i#=4q)dTWS.{Q=$qKEs_B^UBbQTYECm49XRzv@g1+o^t8#r3$u!3,1@-UsLPJWJLM7@,;8z,}bUZuGc?t;4-kZu(5$!Rs]]euDYUvS@QQDEgXir)!)etV5+$]A%92ZXKMT2-bJ05-3...!9(57zqXecvcF9+2-i4XJOTy@?QkAJ*qUG]ZSg@MXQ_4.lx#O]a:s)2^PXxWLYJ#FU4%FM_FN_FBOIC005+p&9N#Ba{qiLophvz&$ce?j.-<*3lrDJ831(]sjf9U*k1c&Y!O6)pFokv:;`_CYDY_^?o*PYB%mFDlY.Ei?@i5[F3rt^)t?LXEGxmhBMV]F3fBXV0NgLmG{RR;3kfGnwo[eb@MMC@BJl}0*1tJPy*YnlpGwFwsDm]aQ*})=jOXM^[ZL%kgY}.{-6kPpjN*bWnq[8x5ws$@g[VND18;1^vsIyndq.BKI}.So]DMU[}n@/?LZROWWtTb;ycQ;;+Scxe=rO]-KurbV56eFdUFQZ@0p%)@5d@8M3D^-Z)Q$Xa_*xk5qgDV]OrOi!Sh!U0{1DUWb2df{EHQUIt.qmeIQkQVKFKVKW\x04iEVOAPb+UQODmAGlhVO9PrGcAPwAVRMGA]*?K)eEv5Z_RGx}*Q@thP-.{hOEDYcDI@WHNS]&@ZZ_lCo+V,Tu*K@w\n,?:;p~\r;22p~\x0e,187*p]M5z7ZYpM$PbEXGG@Y[C@-$aBjfIBkLE+q]}T@ZFm_!b,'5sv72+?MX@VjC@_M6#s]2)XOage{+fJW@bPLoG%EVXZZ2-nNVJ4I^qeDlEwnpJAOJMD(I+1.pU)COil$Y!8P=m/h5/hh_I_NuTiJ[MTL)SnHrSjmM^ejOjfBIYMPRpYYLZKfdZ05[LmB=0-8Dx*u@)2@TIKi@@UCR*pHEVxSZYo.!u^HPY#[elVQLALQLP\x03nBQHFW1@0qA^9LvOduz$}L_HCYX[Cm(;U$-9)cg)#iK)oO}*d{WVV][L+b+m4Nj9:[:tm:Mt3%a+g5}X^Y\x17xBEXUXEXD=ltXGN\x17s^DTXESjeB_DWBCYLAlADJC@HCYZ_)35enC-eeIHHCER1b(@sP3RwD?D{f}(K,xtoDMF%&U;BMX?&Eg3,a;,hJVagpS1Sj[H_TNZy=ZL%o#(jp!Y4KO$h20:UmqkLJWS]$14=sjW)J-]yZs[,@CAouS@ORQ@SDOBX=?bEYhtncx3W3=.BI[S)RyA3=vJM6bR=,56lq8Fj](:KKeyJ50-J)fX6@c0:X@,9plXk9rVD^YPdCN[RMEs9WioUbNt?IYUjO50Lc9]Q6#_}wxe5LU3@Pok[VEQLNlEEPFW/?-MwBGMq{r45dbDxITXnYXXCB]5_;y+d$Dv#^m.QYOGZ&ba/@OMFX4$pFNtNh&q;;tHE]+2dJHO==w]SW]Jb]v)&}^tNITYTITH\x1bsNYS}gs7&dE8)*=>/9 IgLMwvp!ba5Kmq=c_^^`rZK^[^K^%KE#e8y1=wt88Ma5MzV#LNyVF[faYmunEth[(9)vGTCHRu4Q[ce9&?[Eq?Q/Y]hKIAMXE_DN~XKDYZKXODISmfEGOCVKQJ@pVEJWTEVAJG]tRDShOQTUuXQDG9bixc,=HrC^RV[7q(.(dVTd2V[bfMWlQGFQb-FLE]Fze=MWn=vF,kZGK|PSPM\x0c2Wkw(i4VKhsgPLIAlKQ@WCDF@v@FQLJKiBIAUoCBX^C@@I^ZAF^.,lVQLALQLPnBQHFWSOB@FlKA@]v@WSLF@5==?nw:&bSZSFYDBwHzC!Pl@P]1/xOHCX^B5PU.ZSDRf]%:PDY[dqt&an]i-Jo5z%QdJCB_HyEH@H~HYYDCJ^wRRbYQQZS:Z.udQ{#jIkZI^UOs8UG4o1L%mE_o^COhRA^b]D8FVc(*9mO^nOYIODNKD^Yu-Ey#(:F/ULxq_]ORgT=mpwDSUHB@M`MHFOLDOUOXM+DJBQBE]5(jehWrHOD?ZeVw&lCvoz+cWSOV\x06dCUR\x06uQITBbKJPna?FCp!3Hg&ElXYB\rnALD@\rdCIHUvUW_SF[AZPw[X[F\x07cROCd^MR..sULsAq'#:&!$AJNnQu.CM?5>,FB/cUt1yUyYcnJXBELoBYNH_BDEnKLQMbAI&ZRkfp8tEEYLfAGZ^PxZQPcGUOHAbOTCEROIH83!UX_6e#U0$?);:::7aZH!{hY03arU_^Cy^SZMRTItERVCR`^YSX@=Lx[WUXdXUMQFfk[}LQ]Dw@XFm1aMsQ@uXX}ZPQLQGk_^EhOY^pEDO&|PX_uWU)4{iSvxCIB~OR^6u;yqvTEbTCGXRTP+&dH@GD1ikGFS.}zGV^wVUsmP:XeLMW5;8hwz7At@AZwPFAoZ[PbDWXEFWDSXUOvMCLPgKJPVKHgPFPAz[fETB[eCP_BAPCT_RHyCBfVOMU]Ylo^[[VQXsZYKzNOTi^YRIOScROC`EVGGRS6>32(4/ -& yHUYaLOHAej 6'9&&%&7(*$)=695$2!;&`QL@w[X[F\x07QEXZxQQDRCfAZgQFB]WQdFWpFQUJ@FuWMK]}VL]JSXJ$TL:SvhAZ@CMI[^@AIL@VRUORbRP]TeHATfVTYPaLEPiYH__T}OSo^COwZY^WIJTM[GKRGgJ/9V5F@U`BOOAB@HzeT]TA^CExI^ZO^P[x1z7?n{{o^COhRA^ZGDAAF1=mOBBLOME333333\xc3?+ 2[Wh[QsBEVC^XY=\n\xd7\xa3p=\xea?{F[CJSlv\x9a\x99\x99\x99\x99\x99\xa9?xPKW^RNPTPZUAPgFEBVOWa@CDPIQvWTSG^Fd^U[^YP{ZY^JSKYMPRmx}~DOADCJ{JYNE_l]JN[JI_@CVX\x14%6!*0tEVAJPvGTCHR[XI_FpMPHAG[IDY}IZV^~U^VBzVUVK4+/3 RQ@VOeXNOXrORJC*)44wSGBb^SK}TUOiST_XNF[?@n\x04sOBZuQE@e_LSfOL^iS@_`IHR{GJR\xaf\xe5\xfe\x00[MEXhR`4?-8/:-&4$/=+ 2ELG#(:rep0\x029O\xc8cN\x8c@\x0b;&H\ry]\x07\x115q:"))
local fM = (buffer.fromstring("6**.-dqq,?)p97*6+<+-;,=10*;0*p=13q\x1f=*+?2\x13?-*;,\x1119)?'q\x182+;0*s\x0c;0;);:q3?-*;,q\x1f::10-q\r?(;\x13?0?9;,p2+?*JK%2!hocQA.m,#(usE}0,,(+bww*9/v?1,0-:-+=*;76,=6,v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w59+,=*w\x19<<76+w\x0b9.=\x15969?=*v4-9oHPCHRIT_soeIHRTIJJCTrM6oo72I};-hg;)H2zneOY.KkE7^0hKIAMXE_DN~XKDYZKXODIS+z[S4vm_^tlMuGzAF^oi{O]5H7skIXmXXMOGoCC@HC[Bgk+)E@}LMY6@]3j:1-cB1sb0doXveBHITnIDMZEC^c-taRJu3G#tVffzIlg=Hx9!a#Z?rodPQJgPQQJKfJIJW3$9DOh]mK9BmEprwnZhz3zrVD^SrDLQcJWfMLIA_m-2U.46s/!190l$iXzf_a9spqI+WmHHxCKK@IY9#k;[gS,x2;Y{CyP2G.!01sF]?hO&6nKK{@HHCJurl9)v!j)UuZz]%aJ;NFsdN:=laj{Ni: !#,;%32RN^eh$hyXGvl5o%n=4Rb$-x.b$b!cBjMUFMWLQZe}w_PDr2iuD=xxQ[p)@W[.oczMN/fhDYENYyJOB^X)J/R{v@xJ]#jV(E2pi!YHj:pIsK_B@bKK^HYv!%]{@qFF^-)Tn9b(hp0rE8DVsCK_B@bKK^HYyKFVg34mMY)ZuY$$pm1G0yA-UvxzKVZwoBGI@CK@ZaQxW=33N.za8eg9S09A,2GB\x01-()l\x039>#.#>#?l\x01->')8< -/)ljjl\x01\x01ZLl8t@AZvYT\\X|[QPMVndXQoj&ncssE*%Ze=42:W|^Oh^IMRX^Snb3IFe^0O73oG#LA7Kwd@$P.6dYUDSO@MOJy$+oQns0D!?FbNX7,AhFQ?Y?Wo^COwZY^WHJ^?!mOA1s$-Nd}W^pXL.,[RRugBLC_BELufam3*^o0:+Tem)V^D)[.@he3hgVERYCfj,.nKPB,,Z9{/&.q}]N3sKcADZAsWE_XQr_DSUB_YXi{2r.v_#sE;8GooU!L9sGC_FtSEBeAYDRn=9dKAJ^/vTl_$}D}VQAKOGKKDNEkdcM%WpvM?-]qPR{*(o+!?b.l@C@];xDOPSoUG@;^4HGdV30c&og*hz29o^COwZY^WgH@H]/k(UlCWpCNgf,}M!%]0&.3O%#AdEpsX9cHOMq0EBXvH4TJ2EuqQPH,N5?#r@nhqOaQE08!v1]vYX4$E^P@F]MSAR@?N15{10P;;r#tu]lz^KSm[9zMYDFxHJGN*6+quo&eiM*Bk]bX;w67c{yHMM@GNeLO]nY&SOTU.D/vO1[CsW}VOdxbEC^ZTX(_[Dn2!cY.6k0tj*hA%&yXEQGM@X*#EGhn@gciB1,&VAn60=)-Q0;)@ox?HvfEHR$ezwQ@AI4zANY}0B,HKZLU+:eCY@()ywbqC;Z[z-9@ufGF=!!%&ozz1<&6:'1{22z0=\x1e\x03$b%3b#{ZY^JSKsJ%!ZadWzz@DuULtA;2YH(mYXC\x0co@MEA\x0ceBHIT/Q?ihPK$;[DC{iXEIe|QTZSPXSI*KT09vl00OG%S}/;=*qVFi)UKLtSbAfpIg*;p@w#K^O]JUWPRSZH^K@LCFJLuqHDG7%gK!+ 2I3zd_Kw9yps4vPCoKv-eT]j-4d[G]@][ZQ#PBG!6PY1uF,{9Rxu_vPFQjMSVWwZSFLW{C.O&o(mgbE8)9#:((>/2?attbjokkkcmnhcklohRA^$U(UOeMhF.?20x)M}r4GAETTJGY_MwsLFvoVI]+[SqW@h3zYjH_B]J_NOBLaTe=Y#uD[KZ79g*UI[PFKF_HB_UmJE&KZqRN*&6NevQ[ZG}ZW^IVPM/#%v8KVXrGXnXItZSROXtSYXEXNgGF%Ypf?Dv[^PYgXD^C^XYcXt_VEVTCREjLZMvQOJKkFOZecP!)lgw_NIkTHRORTUA46aHjwot1jXKW5ZkQVKFKVKW\x04f]TEWWMJC0vz0YuAEY@rUCDcG_BTCmHvM(2t^qUG]ZSg@MXQjnjjpp3+qQnmeGJJDGEMM8^SZLZLRRNv6z~ROXzHTkZ!mhC8v;sD%]N7uIHBJODRR&c(ED_}(=U4CiyZXP\\ITNU_oIZUHKZI^UXBwMLyK!_5,imUA(]pS^jWvzNOTxWZRVrU_^C6f!2v8niS@_-f%H?*YKfFT?d=N(do^COVLX?2%O.=fGZ*#]qF@Gd#18a]r?n-6[nQC1cuAEY@rUCDcG_BT3a-2_#jDMLQFwKFNFpFWWJMDP`OCK^J:8Zqxz#:v/X^0yjMGF[aFKBUJLQuSXls|FG)XwpqWKqpn^u*E,ZaCRsVATGBCjCPCJ,72osyUHT_H3oDp5q7,zlvBCXtX[[RTC`RVGXYDzUXSTIkTRUONLD8#p=MDOpsV3cOq/CGQf,MrHaTU^nUWTXP^_gb^tWU]QDYCXRuYZYD\x05rEIe@WBQTU|UFU\\CODVk=FKB5%T{gI&iyO^cMDEXOcDNOROY]ITVt]]H^ObWB&&9OAJKXE[_=q=?F5XqV_K^OVO2lZDp_%:n_BNc{VS]TW_TNfoJJzOL282LCX1/[LXEGyIKFOD$^y5LsXsVZVPRcXrYRZN}YKQV_|QJ][LQWVEZHPWSPULRuh-=zfl@]AJ]$VnLt!vCBIoCBX^C@@I^raFLMPjM@I^AGZl|AQ@=^5@XrJ[p}SZ[FQsA]}ZGQ@tRDShOQTUuXQDmK]JqVHMLlAH]4?-++]E&,uJ=0 87.81 ,-^{+ryUTT_YNSVl&8AeDRUSNXZBV?8eRDRCxYdGV@YkCXDMAaIHEYAJDADXUI@MNZX}[HGZYH[LGJPnLVPFoFBUFnPb~{^DC{VNXBCeS[Ft]@qZ[^VyMLWz]KLbWV]zXI~UTQYOXSk_^ExOHCX^B659$*wvP)F!]ITVt]]H^O$12#5,LMhf$T_NN_AJUN_USwAPhMFVEV]?+64\x16??*<-^JWUw^^K]Ls[@\\UYv[XPaVDRAWgJCVCWJHjCCV@Q\x1a33&0!clkcfBNHJcNMJClVEZeB-AhzKVZbOLKB`ABEQHPr&`EEuNFFMDvFW@@KbPLBU__^T_NUUGA[^E[TX]NR^BQSGRUJX@ZHWW}KZZG@I]fWJFa[HWlNCCMNLD\x00\x00\x00\x00\x00\x00\xf8?wAPPMJCWgE@@mY^Mb@MMC@BJnrhOITP^dUFQZ@t^\x9a\x99\x99\x99\x99\x99\xc9?z]WVKwVULXEGxmh8<&8<)<eIHHCERwHRHCMD*#0 +''dH@G!V=CTGTCBTbC@GSJRJ^CA~kn-$/P4KeLLYO^qDDQS[vSTIymq@SDOUlD_CJFkVKSZoKGACf[F^WeXE]Tb_BZS^]LZCdYONY47&0)dYD\\U[JCU}GTK)-$6\xff\xff\xff\x7fyU]Zp\xc3\x92T3%-0\xfa\x9e}\xaafJBEQSFD;8\x10\xf9aG\x9f\xc9w^_ELZRO}TWErC^RhugeODVqJU38* +9]LIZUU(#1BI[6!*.%7GmF\x08(71MI$Q+x\x1cw\"b\xff"))
local gs = (buffer.fromstring("!==9:sff;(>g. =!<+<:,;*&'=,'=g*&$f\x08*=<(%\x04(:=,;\x06&.>(0f\x0f%<,'=d\x1b,',>,-f$(:=,;f\x08--&':f\x00'=,;/(*,\x04('(.,;g%<(<4++M;v{URw\x00%#$j,%8j\x0e?:/9j+$.j\x01/3&/99j\x19)8#:>9dj\x0e?:/9j=#&&j+&=+39j(/j+$$%?$)/.j+$.j$/</8j-+>/!/:>j#$j\x05?8%(%8%9dx_GT_E^CHdxr^_EC^]]TChf$(u@JYhv:vnRS[:,cb%aA7%2v[?!nrQS[WB_E^TdBQ^C@QBU^SIm}#3v,I!uvOQEW[z^v$x}t%]#eo^[[VQX}PKKPRQ?3WhJ5uND!=l6Q8L,(*VF(c@1kEJrW\x0c*9<=vx\x0b=44vx\x08*7>1,v9.F@R_+&ow*Vu+Rs8jxpYE4dw-fxxp;7(1=<yqgu7ZA=;@9!ZIZg?t4eXNK3Cy4/dsVATGBCeIHRTIJJCTGm4DO^;$MMM@]szuYZcixnquzY[S_JWMV\\lJYVKHYJ]V[Ao^2@h*,ESp8%aDgmxiiXEIe|QTZSPXSImqDsT]Wva4pU]RRQb0wbl0{y3!<7> '2%8?[:]Ns*TG0k8kkM]uyYgtlJ[kDfOAdDW]^^]UJEE]I+q%.tydpy=b;cU(6]AmYfY:Fn2ENyFZ@]@FG17/]Iq&NNvr6X?hXzT9=HxaXD;}X^ecAP`AWGAJ@EJPWDF3}]fHvF]([UlL7DfI,,EQzNOTnUWTXPaTU^HINsBWk%D/kj%A]&HE.{#DajHY~H_[DNHmk!Gf+zM:jMJ([?8Juv2Z&tNo?1nA[FnID,!:0[umx&S4f;A.[SgfI^%Mz:y5*zfDUQPW@fJKQWJII@W4SURMtd%+fW9m&JbQphsW[]_v[X_V,xq;ZN[8}?1Qn4k^366=PX!]8X0+$:Xtj}4r^#,s@%iJ[Q[9YE0mYmqZwMFV@iKZQDAK$@oP5)DUC8H%Dppf=&WY%94,3/U[bFRWW,qzo[V2]vr:l7,4PTVS-a3*0]Bzs,sZ[Ag(6K4U-/9L9ExORg^!Yrlwn^7q%z[%FM_prvC)deQ^MrDT7c@Gy!wE^&QiCdd.-6fJKK@FQRQFWJJaTN$o34..(1FoA8YhVajw@UILFDQ@AvQJWDB@(:C?9e/j/zts!#yomDGUZ0eHp8UnZHRT{dLNyi=t{8q1#0VZH'19$[omiMKNi-MPMQi1M?LKRf]$i?[MDdAVCPUTBuTW#HAn%CEmQH}Vdd}xea5)R+;!8**<-0=cvv`hmiiiaoljainmYaEGeUPRFMDNXjhpd$Fpb6rFStB%U&Z]oY^#bSNBnwZ_QX[SXBjCb.JF6O=V[El(jO3{KZMMFo]AeSQ!S@oDOO-D,wHQ+B%pQkx_UTIsTYPGX^Cs$*7G3$pJCCS&E*OeYTLbG0^30LSbuZ*),*Bw3zNynoSyM|ZM{F[CJ3];FRfFk^.v]LgLv[1pB+WRF[Y{RRGQ@a&uYM(d]wqifXZZxK5=AuWFaW@D[QWSZ}Zy(rXs[m-_plB^j,{VNXBCxESREIpgFoh!aQ2USANwfS+`TUN\x01tOMNBJ\x01{NODRd=}^#&makBPmqNRHUHNO8WAB*#R)Xk3gQ$cD/VIeuWMK]t]YN]b[0?@ES1Y?p{W}[cE)nBCCHNYF].7+x*uk/e2C]L&VMy,o}L_HCYzzwh]TXosv/A{03dDJt]KI*: 9++=,1<bwwailhhh`nmk`holcGUOHAbOTCEROIH_+Lhe:jSfh@TkV@AV.?=DwYKu&q;R8s&wY[iltc`TUNtOMNBJ{NODRiqq*gI-JFpDm@]KJ]|FUJ\x7fFWJC;[o=Ze.k231t@AZ\x15rZ\x15AZ\x15wPFA\x15zB[PQ\x15oZ[PiNUh^IMRX^*A?N/}xlO(s/2s_cT_UTCbETAATU_1NMT*QmHLi{mq{WJV]J1yv{g&)=CJm!SAaIbtVG`VAEZPV7C=Qa_Y;2E,-O8lXYBnBAAHNYzHL]BC^J0fSP?n^OXXSzHTHnQ{Vzbfwwik.:=d^MRUl#14df*{k;NPgR@x=/y]ITVhXZW^&x98.a;+_[#[dMkISUCkIPCKCHR)n:PA-:G=6vUW_SF[AZP`FUZGDUFQZWM}YUSQy7Dn^Pi2Qm7l=(KlPhKIAMXE_DN~XKDYZKXODISwCBY\x16dST_DB^xDJx^y}6N{wVURF_G%)NwKQDpK2&rCJMFT_Z]0cM8uE4+5uUILO9CX@OH_GvSH^x3bSn,Y2Y7oC@C^hUjf(Ge#@Bu@b3}fPAsZYQPGPr!iWk1}%DA{AF[V[F[G|AV\x1bx[[@fzszYHTWNO^hRA^QrWL+5BaVJOG`LMEJDpF@WJLMt~A]GZGA@8bTq+,P[R&C*!3W0pl)yYouRLR{a[MmYXCoC@@IOX{IM\\CB_IS]JJZ[k?8MDUI9BaUj]HTQ[YL]\\{WV^Q_K$qWAVmJTQPwAVRMGA%`CRNMTUDrH[D7d4H} +9TVo}vJn).qD-Vgt@AZ\x15`[YZV^\x15oZ[PF|HIRhSQR^VgRSXNiiXEI.4f,Uqf@72AQw[STYZ?S]unp2fDIpSB^]DETa^BXEX^_fEGOCVKQJ@gKHKV\x17K_B@~NLAHz$sd=NyMLWzMLLWV{WTWJ{JJVCiNHUQ_wU^_GL^R^N(.M+b=c#C +9rPO[]2IblW;K!6%6! 6Frmy7#isgVKGjr_ZT]^V]GzKVZvoBGI@CK@ZqbEONSiNCJ]BDYwF[W{bOJDMNFMWt@AZvYT\\X|[QPMmYXCo@MEAeBHITq^S[_oC49s9?auDYUbNMNS\x12:Kzx^H_dC]XYyT]H}TUO+RoRrD8G}uA@[vQG@n[ZQ[gSRIsVATGBCU}ZDA@qZPQP.K^JWUw^^K]LK{dPQJpUBWDA@VsEMPbKVgLMH@}UNR[Ww_^SOWe^DRY}*RYvj)zKNNCDM~EZ=hrPAtYYoZ[PFfDUrDSWHBD.kIXm@@vCBI_b@QlQ@HlKCJ_WNDD^^HRVUHTFZH_G]_^W~Z]Z^ZIVxVJrVD^YPdCN[R]ITVt]]H^OhJ[|J]YFLJyHUYoXYYBCfNUI@LcNMEzXInXOKT^XsoeITHCTO5~DWH)v=[nBg[ZPX]V@@xBC/1KIUinKK{@HHCJZLDYI8AzyQEXZdTV[RTYIS[TREPzJHEL}PYL5/$3,+71HzKVZ}GTKy[VVX[YQ\xcd\xcc\xcc\xcc\xcc\xcc\xec?sLPJWJLMsouRTIMCbSD@UDlyeGJJDGEM$'6 9YXg\x9a\x99\x99\x99\x99\x99\xd9?\x00\x00\x00\x00\x00\x00\xd0?{\x14\xaeG\xe1z\xa4?qRRI\x1doszxTUU^XOdUPP]ZS6#0%,*)qPST@YA{YHCVSYW@S@WV@nB_HjXD~RSSX^Ix]]mX[|MZ^KZ/+ 6>*aPCT_EinsertU^LpiU~j~jSu-#-80+eAMKI<7%SP>>>;>]T_U$>)<.(54=0(lQLT]`TGKCdKGOC\x95\x8aw6 (5|UTNo@LDpJYF\x8d\xfb|\x15gNM_\xce\x1e\xdd\xdboFG]`LDC\xb2[\xd1\xcbvK[J-\xa6\xd5\x03kQB]\xfcAr\x1ewM^A_TFFM_}GF>5'[PB@KY+ $',>ZQCGL^8\x0fB\xa0\x00\x04!)UDXA\x968\n\xf0=/"))
local go = (buffer.fromstring("*6621xmm0#5l%+6*7 71'0!-,6',6l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m/#16'0m\x03&&-,1m\x0b,6'0$#!'\x0f#,#%'0l.7#7-j_b^ <<8;rgg:)?f/!< =*=;-:+'&<-&<f+'%g\t+<=)$\x05);<-:\x07'/?)1g\x0e$=-&<e\x1a-&-?-,g%);<-:g\t,,'&;g\x1b)>-\x05)&)/-:f$=)=%ff+;!8**<-0=cvv`hmiiiaoljainmYA[KmA/J%Ft%k-eDS}4!svwNA9BnmYXC\x0c|Y^ODM_I\x0cmJJC^HMN@I\x0cy\\K^MHI_yGi(MBiq40;B.riJH@LYD^EOhDGDY\x18BpnHD=,f#LJ2)Ozx0uesM%xf70xL^ItWU]QDYCXRuYZYD\x05izrZh:oBmF@q)iob-HdV@edqxGgcTBTE~_bAPF_YO)!P_!G(RYMa#(8eM!%IsP}9O.W/k}YKQV_kLAT]u:/,P!Jn=7-=:Nd(aoEicz[n3b&!,QsI`UT_oTVUYQ_^W(v/_(-S+@)6Lb^Y9+:gr1Nm%m~OR^iEFEX\x19njVA7tF[CGX}X#(@4D/]G66wdAOuu+uPP`[SSXQq$;MIBszz!FV@mX98V/Tylv7!kui3o\x0f*,+e\x01,6&*7!e#*7e\x0105 6j\x0e <) 66e\x16&7,516{MEXjC^oDE@H=AxIwigSu1DmC1+)mX#IQp)RB-e_XEHEXEY\nb_H918J(5W0ekg7zEx]VTcKF?&8qk_[G^lK]ZesZ=iEmAA8)1_k0.%eH8eas++:x|[E@Ap[QPQI3&4:ZK{^-ia&ax((c^S8xWrt]K/=><2)?!2;yFH&B*j,bBP=ODW{=D[lhu}Fg#O[FD{nk*ooWQjbA9U_I9m./ekUSDehR[YrsLi^BGObE_NYMJHNxNH_BDEB/Di8ph]G,}-q2wcADDi]ZI3bwVil,G2$:DRHwW-?tR(A74sVswHRHCMDUG)ZUO?wUGWFVlz4m{7CjHMkgY$N}BY_^JG~XNY:(h2Io9V46HoUzetUNYBwo*=:<' )mbaIe?hF:pwYl+F,^pBXD)I6WyKCg[VN7EC(0I)BB4hLZkx$t2VNPC3QC2#T[UgSRI\x06vSTENGUC\x06g@@ITBGDJC\x06sVATGBCUiJJQ\x05wkb!h(_Ep7aH0DWs2n;Fr$+*q!oQuYDSqC_O-1^5zi(?uvci7$H{6iWA0W*$8cAPwAVRMGA&6Se+StkGIci&yK![+?wuy|MZ^KZ?Jt7l&cXk}#nfFdnhEz3f+D:O^xBIGBELMC@F6=?zLtza_mq%QP-6xcID_p^BxT_^{Kw&diuUDa&L)k&8mzMiLjvQgVAEPA)I_Qy[*+LV@:nvN?gw7:,6Ypq{WVV][LuB?ln[F/NcG)5DfY^2,7VDN]T_$rHj%(74sxwHODSHmKrmI}(D{v!0Ire?km73JsPei]H4:([Gqiv!.cq9/fW@DQ@O[[Wm!B)XI3]Q^+0cGzH-#XeK_B@bKK^HY0KuZJ%_lNi]W&+B1hs70$88<?vcc(%?/#>(b++c)$\x07\x1a={<*{:!=$%4 7!()Q@UpF#{3waWhv}9DyLv7?;1!2lAaXAG@#9PUZm(svHyX.D?9pDE^dAVCPUTBPOE]TUDQ?+r+/ZaAfD^XNnE_NY{e!@uvRRVi0OL?Kh(=b9yRHh;h2_i:-nXc#@&@g^t%h:4bcROCcEVYDGVERYTNG.Q+z:#YSR(4%5/6$$2#>3mxxnfcgggoabdog`ch5fAaCpbWeVUUERxY@ENYN$QAW_|_NRQHIXnTGXE}zZUJ;1Kc]oKHr`IHRVR+Me):sk2pSmhR)X}H26=dFWpFQUJ@FWz0xA/FB8^rAecr]gZG_VUY7[9G@V:Hvz)6EKU*)UDuNTBIKpd%WCx,bj-sMXZH}$k2}MOBKzW^KpYoIx0ywwb!8[)WYGESHZ^@RX]DIN96)jAqrCGzjFxTUU^XO3YJHHH7FaBJ*[bS&ScGUOHAuR_JC&=BEf#MA%4*A8i@A[Nh8[4!HYl/.N#}MIpoC_vBCXtX[[RTC`RVGXYD1TVJ-T@]_}TTAWFa7pxHGhb4d=n0_P]TDPVK:l%w$rNN%9E0jLrqUG]ZSg@MXQDo6HsmP/^ANGzfl@]AJ]AW:3nUCXo,[L9Wb@QdILS@`K@HL@VzIbpBYUT_MwQXgrc]ciKpC5aN{mM=nBJMI/6to%:}iCXX)IQCRjLZMvQOJKkFOZc2aL4;zNDO]wsC+06YF/Ctb{g)2JniECJMPQ@AxU!ua!:Cc;5c_RJVA@&xieQZ6e_61T;kISUCdSRRIH\x17eJOEMH=XgBBrIAAJC4YH@#zS*hxpJMP]PMPL\x1f}FO^LLVQX7*.+jGlY3J^TWs2zz%ZsBUQDUxzrO;YxS.*uJtyHAH]B_YnBCY_BAAH_gEPACKV]RfYD/}KoA[zXInXOKT^XBX,r5$@yWAPPMJCWd9?igU/.%o@][xT#?ZnV8l:@}u\x1e#>&/OS4&Drub$e-=zJHEL}PYL^=n8Fw2*uDYUrH[DD,E;r;#c~JNRK\x1by^HO\x1bhLTI_qLQI@A#)[64PDQEZeTIEE2(4h_bA-OS$gDFNBWJPKAfJIJW\x16ZQCvRbaoQjXVd6$gFEBVOW)/B^A75tdPQJgPQQJKfJIJWkNN~EMMFOD&ReV/-/&-((:7!#/zA95@TIKtadsUH_R]dKeTCGRC#EDeXpY4zKVZZk,ivqgfy{`TPLUg@VQvRJWAm~YSROuR_VA^XEjWGV%[e8&[AszxbURYBDXcUBFYSUV]OmAd!%c/uMtXQZTiRqS)Xb3!jLZMvQOJKkFOZuXBA]PH~CUTCYbX_BOB_B^\reXO}_ECUrEDD_^\x01y]QWUrabY,mC27./.!=<!>24pDE^sTBEk^_TiTIQXGz:DSb4k^_TBL0*a={xwRRbYQQZS8c+m[SN|UHyRSV^jG_ISRiTBCTIHAKDX@OFYBvUY[VjV[C_HeQPKvAFMVPL (=7 !&>(<>kZGKhM^OOZ[- 8,=(=1Kz?b@Qv@WSLF@va[Zr]85#t]jHY~H_[DNHvTEbTCGXRTtVG`VAEZPVaPUUX_Ve^A{JW[l@C@]\x1cqJHKGO~KJA~[[kPXXSZ|@][`]KJ]~N_HHCjXDaQS^WfKBW}LQ]eHKLEMMI8=;Z:m|`yHMM@GNhXZW^oBK^osiNHUQ_`BGGj^YJrPUUxLKXI]@B}hmouJVLQLJKDEORBHUvlJ]kVKSZ333333\xeb?ZUSVUSQ]|`jF[GL[qS^^PSQY;29b2Br9.=.98.RF[Yfsv~WTF0}flYXSrSPVB_]bwr@TIKtadrHCMHOFOXKXONX',>1rS/&)7=;'kZI^UOAY_RREj[LH]L=<)<&=eTGP[AuDW@KQ@MM@TC@QG^gZG_Vz^RTV92 bt,/>(1zJHELiRH^U7!)4nBJM\x8f\x85\x1d\x01eYTLyCPOi@A[bKJP&2(/\x1f\x03\xa4\x81~OR^\xd1\xb8\xcfWbXKT\x1a\xb6s xDIQ\x02\xfbs' >>7kGOH6=/tN|:1#A_^q^CYR@]VD&-?WS_}Gun/oEP\xe63uL\x1f\x16^4\x02.\x15T6"))
local gi = (buffer.fromstring("5))-.grr/<*s:4)5(?(.8/>23)83)s>20r\x1c>)(<1\x10<.)8/\x122:*<$r\x1b1(83)p\x0f838*89r0<.)8/r\x1c9923.r\x143)8/;<>8\x10<3<:8/s1(<!==9:sff;(>g. =!<+<:,;*&'=,'=g*&$f\x08*=<(%\x04(:=,;\x06&.>(0f\x0f%<,'=d\x1b,',>,-f$(:=,;f\x08--&':f\x1a(?,\x04('(.,;g%<(<_7!@7++/,epp->(q86+7*=*,:-<01+:1+q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p2>,+:-p\x193*:1+q3*>*~DC^S^C^B}^PUTCGZ[#J;a%1T%.Dy%!bdA0O%%&lNoEv=GoKYCDMnCXOI^CEDEZD4+&)4Hw_-#7_{;/^%c0OS6qIF4hKIAMXE_DN~XKDYZKXODISQ(q6=.tq/%TZz?[uttg;\x0b'8!-;h< -h!&>!<-h$!&#h<'h1'=:h+$!8*'):,f!1!!6'*2'%<+tR&u[z!m6*Q*k)c@iD6eF5ufhi!joLNFJ_BXCIy_LC^]L_HCNTmuztg4if?_txr0q*)SwTV^RGZ@[QaGT[FETGP[VL3iK:Kam=l68.51,!Wo^COxTWTI\x08vdGF25+H2_D_edWO6rOVuD9KhR/gx|JCJL[{NMt,a0,;e4/7P#8D-Mc7;3pr7WgX])[oAX_hKKHNYXgv&0Pk[xQY=n5-RuDp/Tv;1up{yjMGF[aFKBUJLQ)c*y6fCod%+;-=2ovw/,_]w|LNCJ{V_J6!1bPPv;A?QcH!d]rP,rvhVG-}KEmLZ][FPIo%l0sy0lybt6PnMm;aFv=mD,9Z8k.*!7*91*6(=cl/9r:wh{X)S3t]2+RA8d@0Y:vLKV[VKVJqL[\x16uVVMkw~HXpmEn.$k((GSA_EjWA@W(Ig&N08zyFV?:.z@wqiQ5QHv-pUz2byiLL|GOODMS/sht]J#PBNCNgwwVn*c-dE0vCy]QWU,9cN!.[N!=qs.hja_kH)YI*d9ihttRgBU@SVWAvWT(D#-RgBvmC.19fmFwQ5Y%[8}ALTNInn,ILc}^*W@+=od3tlG3!Iod+LgKrNNJ}_N-/{0Ujhse=Pn@.[BND{b;sj?MQ4rCTPET^Ci9}X-l(QFM7-hXfxb((WNT_*#QEXZxQQDRCj)3F/ulO*;1CG0E$d3ug.NJuAEY@dI@U&{pIhO%Hb]jIFO=h9{)m:^#=6$?BD!_atteCSB7wGg#U;)qX&6Qx!t4cA[]Kl[ZZA@\x1fmBGMEeicL,5#3a0WyASRrTGHUVGTCHE_eR,]5tZ_2d!4hFBa&7G[FZXFUWDDLH^*F#_X[(M]Wh:QIAD:g2bX_BOB_B^`L_FHY]ALNH1@wvLQ5^YILfAYJA[@]V-7*eMX$!EAJ-gLtoS4=PXh_I_NuTiJ[MTbE*!-,EoOzpgdG&m8/SGZXzSSFPAuS;ARU?.tJ-n0DiCYW(]}Y^Y]YJU{UIBZow?dn[Fxv$FsK%yqH.%7Vz;iK%&f$lU0g}Y6_Bf,nDT$N,}MOBKdsyVr4#:d$(w_Pr:m3+dy,*EgTCEXRP]!nCxihY4#/SG,A+:=y2.l5>.,<=114@NdzmN-uX[4*d];K;M7vIUOROIH-sjwy+30vHGZnk%=7R%%_TFHk#UMav$S&#Urr8W-5M4YU(ve=6$Un+Q_mVtp3OKH%D3HJR;,M}=K%!9*/<&$1SNExQNQ_&pfi%sHL&QR]^OY@CKB8s9xd4!@tpR/Y5Z@/8!cWSOVdCURuQITBz28vJZIYO760KdFCC\x0fnZ]N_DFN+vJ,!zzhG=xdihzA[MFk@OLBKJ%7=.7h&iIFH?gKgZG_V}+}Ib4B!]3sQmS-rs/[(gaPMAvZYZG\x06BBpH5XsDCI4MO=3.wXB_\x1bwp})rA56xPIFwIe#9FEvyIXOODm_Cr2=wxANQLfNi3)r+qUG]ZSp]FQW@][ZCcDj?^nPk2pZVW:#8vc1=?=}Ko?5z6rm+?mRHRYW^?B2p1X,LGk1(bM@#I~BOWBZ1b4U19i4bsrk&k3ij5|S^UROmRTSIZosv2i63C^R1m~$oqqy2=82:q%>q2>!(xrCy0{H);dVt[zMViJ6[WglO$2[[UxlnNkVZ_[}_oZEC@Xg?jIKCOZG]FL|ZIF[XIZMFKQsPRZVC^D_UeCP_BAPCT_RHdKGOs&ONGY7sOn=St/p(8ORQ9s^F=71;oy^JA?gwVH406$621k:wOX*w=2*#UvnXCSXUQOYZVPNIc]fX-hKODV*;#J)=W8&RNXm#e?HwM^AdvCP,8Z?6x,DssTJz@SLe)055lvwq==EWtQUuYQVuK[dY2_xswcHjE:T_FSCU5[W!Ots1AQS^KaEWMJCwP]HAgP}6.D)9zL]]@GNZx=SCKJE]j)~RSSX^IN?.gNF/${.]|@MUsQ0EFcN&B}][s=}@]ELX#ivpj_t6.p-.sDQMHB@UDErUNS@FDpVEJWTEVAJG]$zS9DsBQFMW$]^(ZFBF@]-\x0366#!)\x01-,60-..'0nMOGK^CYBHoC@C^\x1f{XZR^KVLW]zVUVK\nV]Oj=a3/fDJh_w(0rDUUHOFR8gXDA2m:*=(@a77/.DkM:!),`LMMF@W#t!G2)hylVQLALQLPwLDDOFfBPJMDgJQF@WJLMuWMK]}VL]JXb}JmoA]gK@Avq9-?:rABVKIvcf?88I!v;-820;/0'/}o/r&)>+!t=%SLT]WMU{JW[wnCFHABJA[mE^BKGyOGCHEFN{hOEDYcDI@WHNSrO_~RSIORQQXOxODNOXy^OZZONHKZLUPjT5t=JFvYDB4Qn+rCnwBnSCbNOUSNMMDSfBPJMDpWZOFf4FIEUXDb7nV*jcDZ_^iBKDMONrPJLZ}JKKPQ\x0eiXEI~RQRO\x0evO~YSROdREA^TRdLWKBNnFGJVNzKXOD^_Rdka6aV@VG|]`CRD]j^_DyNIBY_C,1!7(:,0,+:AJXF#@NjeF;qUG]ZSg@MXQoKGACdSRRIHm@XNTUnSEDSgFP@QJSWJLMnL]zL[_@JLeTIEr^]^C\x02zKVZl[ZZA@aPMAvZYZG\x06EQLNlEEPFWkZGK}JKKPQYMPRpYYLZKjHMM\x01`TS@xDY_dYONYpLMGOJAWWgHDL_K)D=/;8+,) +?xITX`MNI@rNOEMHCUU3%-0Fv8T8|YYiRZZQX`QL@g]NQiBIAUmZnlZKKVQXLzL]]@GNZxMN{EHXD\x9a\x99\x99\x99\x99\x99\xe1?\x00\x00\x00\x00\x00\x00\xe0?~HYYDCJ^\x9a\x99\x99\x99\x99\x99\xb9?H]GVHM^[g{aF@]YWuYXXSUBNZGEzojAXD_]8#w[FQsA]EQLNqdaeZ@ZQ_VbXS]X_VGSNLsfcpQRUAX@,(0-;,mE^BKG%78#(!o^CONFzKXOD^hYJ]VLj[H_TN{F[CJ239##lQGFQfBNHJxEX@I12#5,hDGDYyUVUH=:*0)\x8d:r\x13kO[^%vr\x1bW@UB5#+6z@SL92 ^mBNFfBVSxBQNo^COhRA^sort =,8\xb9\tDMhDLKDBTd^_90;U^LV]O,>0%.<7<.QZHHCQ\x90\x01ZM\x18\x1e%\x12\x177\xdc\x13\x1b lK\x19SY#"))
gv_1, gy, gn, gB_1, gA, gd, ga, f4, gm, gw, gz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gx = 19
repeat
    gC = (gx * 5 + 3) % 6 + 1
    if gC <= 3 then
        if gC <= 2 then
            if gC <= 1 then
                gD = (vector.create((gx * 3 + 6) % 11 + 1, (gx * 8 + 8) % 13 + 1, (gx * 13 + 12) % 17 + 1))
                if fn71(vector.dot(vector.floor(gD) + vector.ceil(gD * -1), vector.floor(gD) + vector.ceil(gD * -1)), 544454170) then
                    gw()
                    gz = fn764
                else
                    gz()
                    gw = fn764
                end
                gx = (gx + 23) % 48
            else
                gD = { "qmxko", "hkb", "urbxa", "vnaxngvz", "kjr", "deeeh", "zgeujo", "jwsv", "xjlvshvyu" }
                gE = gD[gx % 9 + 1]
                gD = gx % 3 + 2
                worker2 = (gE:reverse())
                local lb = gD
                gD = gE:len()
                local gG_1 = (worker2:rep(lb))
                if gD >= gG_1:len() then
                    gz = gm({
                        "https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau",
                        "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Fluent.luau"
                    })
                else
                    gm = gz({
                        "https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau",
                        "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Fluent.luau"
                    })
                end
                gx = (gx + 11) % 48
            end
        else
            if ((gn or not gd) and (gv_1 or gv_1) and (gd or gz or (not gn or ga)) or (gd and not gd and (gn and not gn) or (not gz or not gz) and (not gv_1 or not gv_1))) and (gn and gd or (gv_1 or gz) or gd and ga and (gv_1 or not gd) or (gz and not gv_1 and (gd and ga) or not ga and not gd and (ga and gn))) or not (((gn or not gd) and (gv_1 or gv_1) and (gd or gz or (not gn or ga)) or (gd and not gd and (gn and not gn) or (not gz or not gz) and (not gv_1 or not gv_1))) and (gn and gd or (gv_1 or gz) or gd and ga and (gv_1 or not gd) or (gz and not gv_1 and (gd and ga) or not ga and not gd and (ga and gn)))) then
                gv_1 = game:GetService("Players")
            else
                gn = game:GetService(game)
            end
            gx = (gx + 5) % 48
        end
    elseif gC <= 5 then
        if gC <= 4 then
            gC = (vector.create((gx * 1 + 6) % 11 + 1, (gx * 8 + 7) % 13 + 1, (gx * 2 + 12) % 17 + 1))
            gD = (vector.create((gx * 3 + 9) % 11 + 1, (gx * 7 + 3) % 13 + 1, (gx * 1 + 17) % 17 + 1))
            gE = (vector.create((gx * 1 + 9) % 11 + 1, (gx * 2 + 6) % 13 + 1, (gx * 2 + 10) % 17 + 1))
            worker2 = (vector.create((gx * 7 + 1) % 11 + 1, (gx * 4 + 13) % 13 + 1, (gx * 6 + 10) % 17 + 1))
            if vector.dot(vector.cross(gC, gD), (vector.cross(gE, worker2))) == vector.dot(gC, gE) * vector.dot(gD, worker2) - vector.dot(gC, worker2) * vector.dot(gD, gE) then
                gy = game:GetService("ReplicatedStorage")
                gn = game:GetService("TweenService")
                gB_1 = game:GetService("RunService")
                gA = game:GetService("UserInputService")
                gd = game:GetService("VirtualUser")
            else
                gn = game:GetService("ReplicatedStorage")
                gB_1 = game:GetService("TweenService")
                gd = game:GetService(game)
                gy = game:GetService("UserInputService")
                gA = game:GetService(game)
            end
            gx = (gx + 47) % 48
        else
            if gx * 64333357 + 13 + 3 <= gx * 64333357 + 13 + 3 + 1 then
                ga = gv_1.LocalPlayer
                f4 = "https://discord.gg/ehKVq7pf7v"
            else
                gv_1 = f4
                ga = "https://discord.gg/ehKVq7pf7v"
            end
            gx = (gx + 41) % 48
        end
    else
        gC = (vector.create((gx * 3 + 1) % 11 + 1, (gx * 5 + 1) % 13 + 1, (gx * 15 + 5) % 17 + 1))
        gD = (vector.create((gx * 4 + 3) % 11 + 1, (gx * 5 + 6) % 13 + 1, (gx * 15 + 17) % 17 + 1))
        if vector.dot(vector.cross(gC, gD), (vector.cross(gC, gD))) + vector.dot(gC, gD) * vector.dot(gC, gD) == vector.dot(gC, gC) * vector.dot(gD, gD) then
            gw = function()
                local textButton, gZ, frame3, g0, g1
                local screenGui = Instance.new("ScreenGui")
                screenGui.Name = "OuroborosLoader"
                screenGui.ResetOnSpawn = false
                screenGui.IgnoreGuiInset = true
                screenGui.DisplayOrder = 2147483647
                screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                local g3 = gethui and gethui()
                local g4 = g3 or game:GetService("CoreGui")
                screenGui.Parent = g4
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
                g1 = function(z)
                    local uIStroke = Instance.new("UIStroke")
                    uIStroke.Color = Color3.fromRGB(0, 0, 0)
                    uIStroke.Thickness = 2
                    uIStroke.Transparency = 0.1
                    uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                    uIStroke.Parent = z
                    return uIStroke
                end
                local function g4_9(C, D, E, F, G)
                    local textLabel = Instance.new("TextLabel")
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.fromOffset(460, D + 6)
                    textLabel.Font = E
                    textLabel.Text = C
                    textLabel.TextSize = D
                    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textLabel.TextTransparency = F
                    textLabel.LayoutOrder = G
                    g1(textLabel)
                    textLabel.Parent = frame3
                    return textLabel
                end
                g4_9("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                textButton = Instance.new("TextButton")
                textButton.BackgroundTransparency = 1
                textButton.AutoButtonColor = false
                textButton.Size = UDim2.fromOffset(460, 24)
                textButton.Font = Enum.Font.GothamSemibold
                textButton.RichText = true
                textButton.Text = "<u>https://discord.gg/ehKVq7pf7v</u>  (click to copy)"
                textButton.TextSize = 16
                textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                textButton.LayoutOrder = 2
                g1(textButton)
                textButton.Parent = frame3
                local function g5()
                    textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                end
                local MouseEnter = textButton.MouseEnter
                MouseEnter.Connect(MouseEnter, g5)
                local function g5_6()
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                end
                local MouseLeave = textButton.MouseLeave
                MouseLeave.Connect(MouseLeave, g5_6)
                local function g5_7()
                    if setclipboard then
                        setclipboard(f4)
                    end
                    textButton.Text = "<u>https://discord.gg/ehKVq7pf7v</u>  (copied!)"
                    task.delay(1.5, function()
                        textButton.Text = "<u>https://discord.gg/ehKVq7pf7v</u>  (click to copy)"
                    end)
                end
                local Activated = textButton.Activated
                Activated.Connect(Activated, g5_7)
                local g5_8 = g4_9("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                g5_8.TextWrapped = true
                g5_8.Size = UDim2.fromOffset(420, 34)
                gZ = g4_9("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                gZ.Size = UDim2.fromOffset(460, 18)
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
                g0 = true
                task.spawn(function()
                    local gW = 0
                    while g0 do
                        gW = gW % 3 + 1
                        gZ.Text = "Ouroboros Bypassing" .. string.rep(".", gW)
                        task.wait(0.35)
                    end
                end)
                local g6_11 = (gn:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                g6_11.Play(g6_11)
                local g6_12 = { 0.35, 0.55, 0.72, 0.9, 1 }
                for i, v in ipairs(g6_12) do
                    local g6_13 = (gn:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                    g6_13.Play(g6_13)
                    task.wait(0.55)
                end
                g0 = false
                task.wait(0.25)
                local g6_14 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                for i, descendant in ipairs(frame3:GetDescendants()) do
                    local g7_5 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                    if g7_5 then
                        local g7_6 = (gn:Create(descendant, g6_14, { TextTransparency = 1 }))
                        g7_6.Play(g7_6)
                    elseif descendant:IsA("UIStroke") then
                        local g7_7 = (gn:Create(descendant, g6_14, { Transparency = 1 }))
                        g7_7.Play(g7_7)
                    end
                end
                local g7_8 = (gn:Create(frame2, g6_14, { BackgroundTransparency = 1 }))
                g7_8.Play(g7_8)
                local g4_11 = (gn:Create(frame, g6_14, { BackgroundTransparency = 1 }))
                g4_11.Play(g4_11)
                local g4_12 = (gn:Create(blurEffect, g6_14, { Size = 0 }))
                g4_12.Play(g4_12)
                task.wait(0.45)
                blurEffect.Destroy(blurEffect)
                screenGui.Destroy(screenGui)
            end
        else
            ga = function()
                local textButton, gZ, frame3, g0, g1
                local screenGui = Instance.new("ScreenGui")
                screenGui.Name = "OuroborosLoader"
                screenGui.ResetOnSpawn = false
                screenGui.IgnoreGuiInset = true
                screenGui.DisplayOrder = 2147483647
                screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                local g3 = gethui and gethui()
                local g4 = g3 or game:GetService("CoreGui")
                screenGui.Parent = g4
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
                g1 = function(z)
                    local uIStroke = Instance.new("UIStroke")
                    uIStroke.Color = Color3.fromRGB(0, 0, 0)
                    uIStroke.Thickness = 2
                    uIStroke.Transparency = 0.1
                    uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                    uIStroke.Parent = z
                    return uIStroke
                end
                local function g4_3(C, D, E, F, G)
                    local textLabel = Instance.new("TextLabel")
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.fromOffset(460, D + 6)
                    textLabel.Font = E
                    textLabel.Text = C
                    textLabel.TextSize = D
                    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textLabel.TextTransparency = F
                    textLabel.LayoutOrder = G
                    g1(textLabel)
                    textLabel.Parent = frame3
                    return textLabel
                end
                g4_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                textButton = Instance.new("TextButton")
                textButton.BackgroundTransparency = 1
                textButton.AutoButtonColor = false
                textButton.Size = UDim2.fromOffset(460, 24)
                textButton.Font = Enum.Font.GothamSemibold
                textButton.RichText = true
                textButton.Text = "<u>https://discord.gg/ehKVq7pf7v</u>  (click to copy)"
                textButton.TextSize = 16
                textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                textButton.LayoutOrder = 2
                g1(textButton)
                textButton.Parent = frame3
                local function g5()
                    textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                end
                local MouseEnter = textButton.MouseEnter
                MouseEnter.Connect(MouseEnter, g5)
                local function g5_1()
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                end
                local MouseLeave = textButton.MouseLeave
                MouseLeave.Connect(MouseLeave, g5_1)
                local function g5_2()
                    if setclipboard then
                        setclipboard(f4)
                    end
                    textButton.Text = "<u>https://discord.gg/ehKVq7pf7v</u>  (copied!)"
                    task.delay(1.5, function()
                        textButton.Text = "<u>https://discord.gg/ehKVq7pf7v</u>  (click to copy)"
                    end)
                end
                local Activated = textButton.Activated
                Activated.Connect(Activated, g5_2)
                local g5_3 = g4_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                g5_3.TextWrapped = true
                g5_3.Size = UDim2.fromOffset(420, 34)
                gZ = g4_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                gZ.Size = UDim2.fromOffset(460, 18)
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
                g0 = true
                task.spawn(function()
                    local gW = 0
                    while g0 do
                        gW = gW % 3 + 1
                        gZ.Text = "Ouroboros Bypassing" .. string.rep(".", gW)
                        task.wait(0.35)
                    end
                end)
                local g6_4 = (gn:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                g6_4.Play(g6_4)
                local g6_5 = { 0.35, 0.55, 0.72, 0.9, 1 }
                for i, v in ipairs(g6_5) do
                    local g6_6 = (gn:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                    g6_6.Play(g6_6)
                    task.wait(0.55)
                end
                g0 = false
                task.wait(0.25)
                local g6_7 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                for i, descendant in ipairs(frame3:GetDescendants()) do
                    local g7_1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                    if g7_1 then
                        local g7_2 = (gn:Create(descendant, g6_7, { TextTransparency = 1 }))
                        g7_2.Play(g7_2)
                    elseif descendant:IsA("UIStroke") then
                        local g7_3 = (gn:Create(descendant, g6_7, { Transparency = 1 }))
                        g7_3.Play(g7_3)
                    end
                end
                local g7_4 = (gn:Create(frame2, g6_7, { BackgroundTransparency = 1 }))
                g7_4.Play(g7_4)
                local g4_5 = (gn:Create(frame, g6_7, { BackgroundTransparency = 1 }))
                g4_5.Play(g4_5)
                local g4_6 = (gn:Create(blurEffect, g6_7, { Size = 0 }))
                g4_6.Play(g4_6)
                task.wait(0.45)
                blurEffect.Destroy(blurEffect)
                screenGui.Destroy(screenGui)
            end
        end
        gx = (gx + 41) % 48
    end
until fn71((gx * 47 + 26) % 48, 359796651)
if not gm then
    return
end
gC, gw, gv_2, f9, f3, AttackController, fY, fU, fR, fO, gu, gr, ItemDef, gg, ge, gc, f8, f2, gE, fN, gp, connection, fW, gt, gf, gD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gx = 10
repeat
    worker2 = (gx * 5 + 5) % 11 + 1
    if worker2 <= 6 then
        if worker2 <= 3 then
            if worker2 <= 2 then
                if worker2 <= 1 then
                    local gH_1 = ({
                        "auvebgneq",
                        "oclqln",
                        "vkwukxziiae",
                        "crvyh",
                        "rvmyx",
                        "kbtnuxlj",
                        "cmfgtiw",
                        "jnhzhlo",
                        "dbwndbi",
                        "zuxqausn",
                        "dvuwybtjyp",
                        "mvfxj"
                    })[gx % 12 + 1]
                    local gG_3 = gx % 3 + 2
                    gI = (gH_1:reverse())
                    local gG_4 = gH_1:len()
                    gJ = (gI:rep(gG_3))
                    if gG_4 >= gJ:len() then
                        local gG_5 = gC:WaitForChild(require)
                        gy = require(gG_5:WaitForChild(gG_5))
                    else
                        local External = (gy:WaitForChild("External"))
                        gC = require(External:WaitForChild("Knit"))
                    end
                    gx = (gx + 31) % 44
                else
                    if gx * 16704943 + 3 + 7 <= gx * 16704943 + 3 + 7 + 1 then
                        gw = gy:WaitForChild("Controllers")
                    else
                        gy = gw:WaitForChild(gw)
                    end
                    gx = (gx + 20) % 44
                end
            else
                local gG_6 = {
                    "bmknmkie",
                    "flsobbwm",
                    "okg",
                    "edkdmohkbey",
                    "tpiurw",
                    "lgnpwbuho",
                    "rmiuf",
                    "wsiwsfs",
                    "jee",
                    "fhmhtyelabvt",
                    "pumsnnnayhu",
                    "rfwpu",
                    "cgycsl",
                    "dqkzdarw",
                    "moybptjxrwnc"
                }
                if gG_6[(gx * 70 + 46) % 15 + 1] < gG_6[(gx * 70 + 46) % 15 + 1] then
                    gy = gv_2:WaitForChild("ReplicatedConfigs")
                else
                    gv_2 = gy:WaitForChild("ReplicatedConfigs")
                end
                gx = (gx + 31) % 44
            end
        elseif worker2 <= 5 then
            if worker2 <= 4 then
                local gG_7 = (vector.create((gx * 1 + 7) % 11 + 1, (gx * 8 + 6) % 13 + 1, (gx * 8 + 15) % 17 + 1))
                local gH_4 = (vector.create((gx * 3 + 6) % 11 + 1, (gx * 9 + 6) % 13 + 1, (gx * 10 + 13) % 17 + 1))
                gI = (vector.create((gx * 7 + 1) % 11 + 1, (gx * 11 + 8) % 13 + 1, (gx * 9 + 7) % 17 + 1))
                gJ = (vector.create((gx * 1 + 5) % 5 + 1, (gx * 5 + 7) % 7 + 1, (gx * 3 + 2) % 9 + 1))
                if vector.dot(vector.cross(gG_7, (vector.cross(gH_4, gI))), gJ) == vector.dot(gH_4 * vector.dot(gG_7, gI) - gI * vector.dot(gG_7, gH_4), gJ) + 3 then
                    fY = require(AttackController.Upgrades)
                    local Enemy = AttackController.Enemy
                    f9 = require(Enemy.EnemyController)
                    local Attack = AttackController.Attack
                    f3 = require(AttackController)
                    fU = require(Attack)
                    gw = require(Enemy)
                else
                    f9 = require(gw.Upgrades.UpgradeController)
                    f3 = require(gw.Enemy.EnemyController)
                    AttackController = require(gw.Attack.AttackController)
                    fY = require(gw.Inventory.InventoryUIController)
                    fU = require(gw.Orbs.OrbController)
                end
                gx = (gx + 20) % 44
            else
                local gG_9 = (vector.create((gx * 2 + 4) % 11 + 1, (gx * 2 + 11) % 13 + 1, (gx * 11 + 8) % 17 + 1))
                if fn71(vector.dot(vector.floor(gG_9) + vector.ceil(gG_9 * -1), vector.floor(gG_9) + vector.ceil(gG_9 * -1)), 544454170) then
                    fR = require(gw.Zones.ZoneController)
                    fO = require(gw.Teleport.TeleportController)
                    gu = require(gv_2.UpgradesDef)
                    gr = require(gv_2.IndexDef)
                else
                    gr = require(gv_2)
                    local TeleportController = gv_2.Teleport.TeleportController
                    gu = require(gv_2)
                    fR = require(TeleportController)
                    fO = require(gw)
                end
                gx = (gx + 20) % 44
            end
        else
            local gG_11 = (vector.create((gx * 7 + 8) % 11 + 1, (gx * 7 + 10) % 13 + 1, (gx * 10 + 6) % 17 + 1))
            local gH_6 = (vector.create((gx * 5 + 4) % 11 + 1, (gx * 1 + 2) % 13 + 1, (gx * 5 + 7) % 17 + 1))
            gI = (vector.create((gx * 2 + 6) % 11 + 1, (gx * 4 + 3) % 13 + 1, (gx * 5 + 12) % 17 + 1))
            gJ = (vector.create((gx * 7 + 1) % 11 + 1, (gx * 4 + 11) % 13 + 1, (gx * 9 + 13) % 17 + 1))
            if vector.dot(vector.cross(gG_11, gH_6), (vector.cross(gI, gJ))) == vector.dot(gG_11, gI) * vector.dot(gH_6, gJ) - vector.dot(gG_11, gJ) * vector.dot(gH_6, gI) + 2 then
                gv_2 = require(gC.ItemDef)
                ge = require(require)
                gg = ItemDef:GetService()
            else
                ItemDef = require(gv_2.ItemDef)
                gg = require(gv_2.ZoneDef)
                ge = gC.GetService("RebirthService")
            end
            gx = (gx + 9) % 44
        end
    elseif worker2 <= 9 then
        if worker2 <= 8 then
            if worker2 <= 7 then
                local gG_12 = (vector.create((gx * 3 + 8) % 11 + 1, (gx * 5 + 9) % 13 + 1, (gx * 4 + 15) % 17 + 1))
                local gH_7 = (vector.create((gx * 2 + 6) % 11 + 1, (gx * 8 + 11) % 13 + 1, (gx * 4 + 17) % 17 + 1))
                gI = (vector.create((gx * 1 + 5) % 11 + 1, (gx * 9 + 10) % 13 + 1, (gx * 4 + 12) % 17 + 1))
                if vector.dot(vector.cross(gG_12, gH_7), gI) == vector.dot(vector.cross(gH_7, gI), gG_12) then
                    gc = gC.GetService("IndexService")
                    f8 = gC.GetService("ZoneService")
                else
                    f8 = gc:GetService()
                    gC = gc.GetService("IndexService")
                end
                gx = (gx + 20) % 44
            else
                if (gw or gu or (not gw or gt) or (fN or gw or not gw and not fN) or (gu and gu and (not gt or not gt) or (f3 or not fN or not gu and not f3))) and ((f3 and not fN or gw and f3) and ((not fN or not gw) and (not gu or not fN)) or (not gu and fN and (gu and not fN) or (gt or gu) and (not gw or fN))) and not ((gw or gu or (not gw or gt) or (fN or gw or not gw and not fN) or (gu and gu and (not gt or not gt) or (f3 or not fN or not gu and not f3))) and ((f3 and not fN or gw and f3) and ((not fN or not gw) and (not gu or not fN)) or (not gu and fN and (gu and not fN) or (gt or gu) and (not gw or fN)))) then
                    gm = f2:CreateWindow("Ouroboros Hub")
                else
                    f2 = gm:CreateWindow({
                        Title = "Loot RNG",
                        SubTitle = "Ouroboros Hub",
                        TabWidth = 160,
                        Size = UDim2.fromOffset(560, 400),
                        Acrylic = false,
                        Image = "rbxassetid://91400086538074",
                        MinimizeKey = Enum.KeyCode.RightControl
                    })
                end
                gx = (gx + 42) % 44
            end
        else
            local gG_13 = {
                "wih",
                "fyctgcyu",
                "inng",
                "tqsgleoy",
                "yzvke",
                "zewohlojsm",
                "ngsfwnw",
                "gxnjopi",
                "ruohpfqcdjf",
                "gigrza",
                "gosb",
                "ewxch",
                "uqzlqbjqmsf",
                "aeakdpa",
                "nxiwhhkhyfd",
                "vnheer"
            }
            if gG_13[(gx * 15 + 111) % 16 + 1] <= gG_13[(gx * 15 + 111) % 16 + 1] then
                gE = {
                    Main = f2:AddTab({ Title = "Main", Icon = "swords" }),
                    Settings = f2:AddTab({ Title = "Settings", Icon = "settings" })
                }
            else
                f2 = gE
            end
            gx = (gx + 42) % 44
        end
    elseif worker2 <= 10 then
        worker2 = {
            "hrynqvjl",
            "uxhrzusdq",
            "zfthzmuomle",
            "jyeiufdpe",
            "dxjgz",
            "wermohjkbpfs",
            "kodrzn",
            "emhdrvqkv",
            "zhbq",
            "ijww",
            "bipeuc",
            "iqrai"
        }
        if worker2[(gx * 1 + 17) % 12 + 1] <= worker2[(gx * 1 + 17) % 12 + 1] then
            fW = fn183
            fN = {
                AutoUpgrades = false,
                KillAura = false,
                EquipBestSword = false,
                AutoCollectWeapons = false,
                AutoRebirth = false,
                AutoClaimIndex = false,
                AutoUnlockZones = false,
                AutoBestZone = false
            }
            gt = fn672
            task.spawn(function()
                while task.wait() do
                    if fN.AutoUpgrades then
                        for k in pairs(gu.Table) do
                            local hG = k
                            if not fN.AutoUpgrades then
                                break
                            end
                            pcall(function()
                                local hz = f9:GetMaxBuyLevels(hG)
                                if hz > 0 then
                                    local hA = f9:GetUpgradeLevel(hG)
                                    f9.BuyUpgradeLevels(f9, hG, hA + 1, hA + hz)
                                end
                            end)
                        end
                    end
                    task.wait(0.5)
                end
            end)
            task.spawn(worker)
            task.spawn(function()
                while true do
                    if fN.EquipBestSword then
                        pcall(function()
                            fY._EquipBest(fY)
                        end)
                    end
                    task.wait(1)
                end
            end)
            task.spawn(worker3)
            task.spawn(function()
                while true do
                    if fN.AutoRebirth then
                        pcall(function()
                            ge.Rebirth(ge)
                        end)
                    end
                    task.wait(1)
                end
            end)
            task.spawn(function()
                while true do
                    if fN.AutoClaimIndex then
                        pcall(function()
                            for k in pairs(gr.GetAllIndexes()) do
                                gc.Claim(gc, k)
                            end
                        end)
                    end
                    task.wait(2)
                end
            end)
            task.spawn(function()
                while true do
                    if fN.AutoUnlockZones then
                        pcall(function()
                            local h6 = {}
                            for k, v in pairs(gg.GetAllZones()) do
                                if not fR:IsZoneUnlocked(k) then
                                    local h8 = "Id"
                                    local h9 = "Order"
                                    local ia = v.Order or math.huge
                                    table.insert(h6, { [h8] = k, [h9] = ia })
                                end
                            end
                            table.sort(h6, function(a0, a1)
                                return a0.Order < a1.Order
                            end)
                            for i, v in ipairs(h6) do
                                f8.UnlockZone(f8, v.Id)
                            end
                        end)
                    end
                    task.wait(1)
                end
            end)
            task.spawn(function()
                while true do
                    if fN.AutoBestZone then
                        pcall(function()
                            local it_1
                            local is_1
                            it_1, is_1 = nil, -1
                            for k, v in pairs(gg.GetAllZones()) do
                                local iu = fR:IsZoneUnlocked(k) and (v.Order or 0) > is_1
                                if iu then
                                    is_1 = v.Order or 0
                                    it_1 = k
                                end
                            end
                            if it_1 then
                                fO._TeleportToZone(fO, it_1)
                            end
                        end)
                    end
                    task.wait(1)
                end
            end)
            local gG_14 = {
                Title = "Auto Purchase Affordable Upgrades",
                Default = false,
                Callback = function(bb)
                    fN.AutoUpgrades = bb
                end
            }
            local Main8 = gE.Main
            Main8.AddToggle(Main8, "AutoUpgrades", gG_14)
            local gG_15 = {
                Title = "Kill Aura",
                Default = false,
                Callback = function(bc)
                    fN.KillAura = bc
                end
            }
            local Main7 = gE.Main
            Main7.AddToggle(Main7, "KillAura", gG_15)
            local gG_16 = { Title = "Equip Best Sword", Default = false, Callback = fn1004 }
            local Main6 = gE.Main
            Main6.AddToggle(Main6, "EquipBestSword", gG_16)
            local gG_17 = { Title = "Auto Collect Weapons on Ground", Default = false, Callback = fn250 }
            local Main5 = gE.Main
            Main5.AddToggle(Main5, "AutoCollectWeapons", gG_17)
            local gG_18 = {
                Title = "Auto Rebirth",
                Default = false,
                Callback = function(bf)
                    fN.AutoRebirth = bf
                end
            }
            local Main4 = gE.Main
            Main4.AddToggle(Main4, "AutoRebirth", gG_18)
            local gG_19 = {
                Title = "Auto Claim Index",
                Default = false,
                Callback = function(bg)
                    fN.AutoClaimIndex = bg
                end
            }
            local Main3 = gE.Main
            Main3.AddToggle(Main3, "AutoClaimIndex", gG_19)
            local gG_20 = { Title = "Auto Unlock Zones", Default = false, Callback = fn657 }
            local Main2 = gE.Main
            Main2.AddToggle(Main2, "AutoUnlockZones", gG_20)
            local gG_21 = {
                Title = "Auto Go to Best Owned Zone",
                Default = false,
                Callback = function(bi)
                    fN.AutoBestZone = bi
                end
            }
            local Main = gE.Main
            Main.AddToggle(Main, "AutoBestZone", gG_21)
            gp = false
            gf = fn792
        else
            worker2 = fn183
            gt = worker2
            gK = {
                AutoRebirth = false,
                AutoBestZone = false,
                AutoClaimIndex = false,
                EquipBestSword = false,
                AutoUpgrades = false,
                AutoCollectWeapons = false,
                KillAura = false,
                AutoUnlockZones = false
            }
            gE = false
            gL = fn672
            gf = gL
            task.spawn("KillAura")
            task.spawn(false)
            task.spawn(worker2)
            worker2 = worker3
            task.spawn(worker)
            task.spawn(task)
            task.spawn(gK)
            task.spawn(task[nil])
            task.spawn(task.spawn)
            gM = fN.Main
            gM.AddToggle(gM, "AutoUpgrades", task)
            local Main2 = fN.Main
            local gN = Main2
            gN.AddToggle(gN, "KillAura", "AutoClaimIndex")
            gJ = fn1004
            gM = fN.Main
            gM.AddToggle(gM, gL, "EquipBestSword")
            gM = { Title = "Auto Collect Weapons on Ground", Callback = fn250, Default = false }
            gN = fN.Main
            gN.AddToggle(gN, false, worker2)
            worker2 = fN.Main
            worker2.AddToggle(worker2, "Default", Main2)
            worker2 = fN.Main
            worker2.AddToggle(worker2, "Callback", gM)
            worker2 = fn657
            local Main = fN.Main
            Main.AddToggle(Main, gJ, worker2)
            worker2 = fN.Main
            worker2.AddToggle(worker2, fN, "AutoCollectWeapons")
            fW = "Title"
            gp = fn792
        end
        gx = (gx + 42) % 44
    else
        if gx * 3971365 + 2 + 2 <= gx * 3971365 + 2 + 2 + 4 then
            task.spawn(function()
                while true do
                    if gp then
                        gf()
                    end
                    task.wait(60)
                end
            end)
            local gG_24 = {
                Title = "Anti-AFK",
                Default = true,
                Callback = function(bm)
                    gp = bm
                    if bm then
                        if not connection then
                            local Idled = ga.Idled
                            connection = Idled:Connect(gf)
                        end
                    elseif connection then
                        connection.Disconnect(connection)
                        connection = nil
                    end
                end
            }
            local Settings = gE.Settings
            Settings.AddToggle(Settings, "AntiAfk", gG_24)
            gD = fn605
        else
            task.spawn(task.spawn)
            local Settings = gD.Settings
            Settings.AddToggle(Settings, "Default", "AntiAfk")
            gE = fn605
        end
        gx = (gx + 9) % 44
    end
until fn71((gx * 27 + 23) % 44, 494033731)
for k, v in pairs(gE) do
    gD(v)
end
gx, gw = nil, nil
local gv_3 = 0
repeat
    gy = (gv_3 * 1 + 1) % 2 + 1
    if gy <= 1 then
        if gv_3 * 74334271 + 4 + 2 <= gv_3 * 74334271 + 4 + 2 + 2 then
            gw = gz({
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau",
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.lua"
            })
        else
            gz = gw(gw)
        end
        gv_3 = (gv_3 + 3) % 8
    else
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_3, 14), string.byte(tostring(gw))), 10), 1418904432), 6), 615570453) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_3, 14), string.byte(tostring(gw))), 10), 6) then
            gz = gx(gx)
        else
            gx = gz({
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau",
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.lua"
            })
        end
        gv_3 = (gv_3 + 3) % 8
    end
until fn71((gv_3 * 3 + 7) % 8, 527583337)
if gx then
    local gv_4 = 0
    repeat
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_4, 18), string.byte(tostring(gv_4))), 13), 360512397), 4), 1473231057) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_4, 18), string.byte(tostring(gv_4))), 13), 4) then
            gx.SetLibrary(gx, gm)
            gx.IgnoreThemeSettings(gx)
            gx.SetIgnoreIndexes(gx, {})
            gx.SetFolder(gx, "OuroborosHub/LootRNG")
            gx.BuildConfigSection(gx, gE.Settings)
        else
            gm.SetLibrary(gm, gE)
            gm.IgnoreThemeSettings(gm)
            gm.SetIgnoreIndexes(gm, {})
            gm.SetFolder(gm, gm)
            gm.BuildConfigSection(gm, gm)
        end
        gv_4 = (gv_4 + 1) % 4
    until fn71((gv_4 * 1 + 1) % 4, 578005792)
end
if gw then
    local gv_5 = 2
    repeat
        gy = { "srgrhs", "vbqbbnpamn", "glh", "tttqt", "rcf", "qfm", "uwnfobc", "gflqak", "dbldoow" }
        gz = gy[gv_5 % 9 + 1]
        gy = gz:len()
        gC = (gz:gsub("(.)", "%1%1", gv_5 % 3 % 2 + 1))
        if gy >= gC:len() then
            gE.SetLibrary(gE, gE)
            gE.SetFolder(gE, "OuroborosHub")
            gE.BuildInterfaceSection(gE, gm.Settings)
        else
            gw.SetLibrary(gw, gm)
            gw.SetFolder(gw, "OuroborosHub")
            gw.BuildInterfaceSection(gw, gE.Settings)
        end
        gv_5 = (gv_5 + 3) % 4
    until fn71((gv_5 * 1 + 1) % 4, 578005792)
end
f2.SelectTab(f2, 1)
if gx then
    gx.LoadAutoloadConfig(gx)
end
gw = nil
local gv_6 = 2
repeat
    gx = (gv_6 * 1 + 0) % 2 + 1
    if gx <= 1 then
        if (gv_6 and gv_6 or (not gw or gw)) and (gv_6 or not gw or not gw and gw) and not ((gv_6 and gv_6 or (not gw or gw)) and (gv_6 or not gw or not gw and gw)) then
            gw = Instance.new("ScreenGui")
        else
            gw = Instance.new("ScreenGui")
        end
        gv_6 = (gv_6 + 5) % 8
    else
        if (gv_6 * 3 + 6) * 13 % 4 == ((gv_6 * 3 + 6) * 13 + 14) % 4 then
            gw.Name = gw
            gw.ResetOnSpawn = "OuroborosToggle"
            gw.ZIndexBehavior = gw
        else
            gw.Name = "OuroborosToggle"
            gw.ResetOnSpawn = false
            gw.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        gv_6 = (gv_6 + 5) % 8
    end
until fn71((gv_6 * 7 + 1) % 8, 460486181)
local gv_7 = gethui and gethui()
gx = gv_7 or game:GetService("CoreGui")
gq, gz, gb, f6, f1, fZ, gh, gD = nil, nil, nil, nil, nil, nil, nil, nil
local gv_8 = 4
repeat
    gE = (gv_8 * 3 + 2) % 4 + 1
    if gE <= 2 then
        if gE <= 1 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_8, 3), string.byte(tostring(f6))), 1), 966927348), 14), 2298285672) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_8, 3), string.byte(tostring(f6))), 1), 14) then
                worker2 = fn838
                local InputBegan = gq.InputBegan
                InputBegan.Connect(InputBegan, worker2)
                worker2 = fn107
                local InputChanged = gA.InputChanged
                InputChanged.Connect(InputChanged, worker2)
                worker2 = function(bK)
                    if bK.UserInputType == Enum.UserInputType.MouseButton1 or bK.UserInputType == Enum.UserInputType.Touch then
                        gb = false
                    end
                end
                local InputEnded = gA.InputEnded
                InputEnded.Connect(InputEnded, worker2)
                gh = false
            else
                worker2 = fn838
                local InputBegan = gh.InputBegan
                InputBegan.Connect(InputBegan, gh)
                local InputChanged = gq.InputChanged
                InputChanged.Connect(InputChanged, gq)
                local InputEnded = gq.InputEnded
                InputEnded.Connect(InputEnded, fn107)
                gA = worker2
            end
            gv_8 = (gv_8 + 7) % 16
        else
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_8, 10), string.byte(tostring(f6))), 11), 2706056676), 28), 1242870366) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_8, 10), string.byte(tostring(f6))), 11), 28) then
                worker2 = gD.MouseButton1Click
                local gH_20 = worker2
                gH_20.Connect(gH_20, fn685)
                gA = worker2
            else
                worker2 = fn685
                local MouseButton1Click = gq.MouseButton1Click
                MouseButton1Click.Connect(MouseButton1Click, worker2)
                gD = gA.TouchEnabled
            end
            gv_8 = (gv_8 + 3) % 16
        end
    elseif gE <= 3 then
        if (gv_8 * 1 + 1) * 17 % 4 == ((gv_8 * 1 + 1) * 17 + 12) % 4 then
            gw.Parent = gx
            gq = Instance.new("ImageButton")
        else
            gw.Parent = gq
            gx = Instance:new()
        end
        gv_8 = (gv_8 + 7) % 16
    else
        if (gv_8 * 3 + 2) * 21 % 4 == ((gv_8 * 3 + 2) * 21 + 10) % 4 then
            gE = UDim2.fromOffset
            gz.Size = gE(52, 52)
            worker2 = UDim2.fromScale
            gz.Position = worker2(gz, UDim2)
            gz.AnchorPoint = Vector2.new(UDim2, worker2)
            worker2 = Color3.fromRGB
            gz.BackgroundColor3 = worker2(25, gE, 0.5)
            gz.BackgroundTransparency = 0
            gz.Image = 0.1
            local Fit = Enum.ScaleType.Fit
            gz.ScaleType = Enum[nil]
            gz.AutoButtonColor = gz
            gz.Parent = Enum
            gw = Instance.new("rbxassetid://91400086538074")
            gE = UDim.new
            gw.CornerRadius = gE(30, worker2)
            gw.Parent = 25
            f1 = Instance.new(0.5)
            f1.Color = Color3.fromRGB(0, Color3, Fit)
            f1.Thickness = UDim
            f1.Transparency = Instance
            f1.Parent = Color3
            gq = Instance.new("UIPadding")
            gq.PaddingTop = UDim:new(gq)
            gq.PaddingBottom = UDim.new(gz, UDim.new)
            gq.PaddingLeft = UDim.new(Instance, 95)
            gq.PaddingRight = UDim.new(0, 0.04)
            gq.Parent = gE
            gb, f6 = f1, gq
        else
            gq.Size = UDim2.fromOffset(52, 52)
            gq.Position = UDim2.fromScale(0.5, 0.04)
            gq.AnchorPoint = Vector2.new(0.5, 0)
            gq.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
            gq.BackgroundTransparency = 0.1
            gq.Image = "rbxassetid://91400086538074"
            gq.ScaleType = Enum.ScaleType.Fit
            gq.AutoButtonColor = true
            gq.Parent = gw
            gC = Instance.new("UICorner")
            gC.CornerRadius = UDim.new(0, 12)
            gC.Parent = gq
            gz = Instance.new("UIStroke")
            gz.Color = Color3.fromRGB(80, 80, 95)
            gz.Thickness = 1
            gz.Transparency = 0.3
            gz.Parent = gq
            gy = Instance.new("UIPadding")
            gy.PaddingTop = UDim.new(0, 6)
            gy.PaddingBottom = UDim.new(0, 6)
            gy.PaddingLeft = UDim.new(0, 6)
            gy.PaddingRight = UDim.new(0, 6)
            gy.Parent = gq
            gb, f6, f1, fZ = false, nil, nil, false
        end
        gv_8 = (gv_8 + 3) % 16
    end
until fn71((gv_8 * 13 + 13) % 16, 460486181)
if gD then
    gD = not gA.MouseEnabled
end
f_, screenGui2 = nil, nil
local gv_9 = 4
repeat
    gw = (gv_9 * 1 + 0) % 3 + 1
    if gw <= 2 then
        if gw <= 1 then
            gw = (vector.create((gv_9 * 3 + 3) % 11 + 1, (gv_9 * 1 + 12) % 13 + 1, (gv_9 * 6 + 17) % 17 + 1))
            gx = (vector.create((gv_9 * 4 + 1) % 11 + 1, (gv_9 * 5 + 6) % 13 + 1, (gv_9 * 12 + 1) % 17 + 1))
            if vector.dot(gw, gx) * vector.dot(gw, gx) <= vector.dot(gw, gw) * vector.dot(gx, gx) then
                screenGui2.Name = "OuroborosPromo"
                screenGui2.ResetOnSpawn = false
                screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            else
                screenGui2.Name = "OuroborosPromo"
                screenGui2.ResetOnSpawn = screenGui2
                screenGui2.ZIndexBehavior = Enum
            end
            gv_9 = (gv_9 + 10) % 24
        else
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_9, 10), string.byte(tostring(screenGui2))), 10), 994253784), 0), 994253784) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_9, 10), string.byte(tostring(screenGui2))), 10), 0) then
                f_ = gD
            else
                gD = f_
            end
            gv_9 = (gv_9 + 4) % 24
        end
    else
        if (gv_9 * 2 + 7) * 7 % 3 == ((gv_9 * 2 + 7) * 7 + 4) % 3 then
            f_ = Instance:new()
        else
            screenGui2 = Instance.new("ScreenGui")
        end
        gv_9 = (gv_9 + 16) % 24
    end
until fn71((gv_9 * 7 + 11) % 24, 661912322)
local gv_10 = gethui and gethui()
gw = gv_10 or game:GetService("CoreGui")
screenGui2.Parent = gw
local function gv_11(bT, bU)
    local textButton = Instance.new("TextButton")
    local iQ = f_ and UDim2.fromOffset(150, 40)
    local iR = iQ or UDim2.fromOffset(240, 60)
    textButton.Size = iR
    textButton.Position = bT
    textButton.AnchorPoint = bU
    textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    textButton.BackgroundTransparency = 0
    textButton.Text = ""
    textButton.AutoButtonColor = true
    textButton.Parent = screenGui2
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(0, 8)
    uICorner.Parent = textButton
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Color = Color3.fromRGB(80, 80, 95)
    uIStroke.Thickness = 1
    uIStroke.Transparency = 0.3
    uIStroke.Parent = textButton
    local iR_1 = f_ and 24 or 36
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.fromOffset(iR_1, iR_1)
    local new = UDim2.new
    local iT = f_ and 8 or 12
    imageLabel.Position = new(0, iT, 0.5, 0)
    imageLabel.AnchorPoint = Vector2.new(0, 0.5)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = "rbxassetid://91400086538074"
    imageLabel.ScaleType = Enum.ScaleType.Fit
    imageLabel.Parent = textButton
    local iR_3 = f_ and 40 or 60
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -iR_3, 1, 0)
    textLabel.Position = UDim2.new(0, iR_3, 0, 0)
    textLabel.BackgroundTransparency = 1
    local iS_1 = f_ and "Join Ouroboros\n[Copy Discord]" or "Join Ouroboros\nFree Keyless & Dupe Scripts\n[Click to Copy Discord]"
    textLabel.Text = iS_1
    textLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    local iS_2 = f_ and 10 or 12
    textLabel.TextSize = iS_2
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = textButton
    local function iQ_10()
        pcall(function()
            setclipboard(f4)
        end)
        fW("Ouroboros Discord copied to clipboard!")
    end
    local MouseButton1Click = textButton.MouseButton1Click
    MouseButton1Click.Connect(MouseButton1Click, iQ_10)
end
if f_ then
    gw = 6
    repeat
        gx = {
            "uxlghducpjw",
            "llxvnouxkgg",
            "yopsfh",
            "nwbjkkbrlvl",
            "eueercnvcax",
            "xzxe",
            "byvh",
            "rzwvlpkdibd",
            "rhcfueaxzgx",
            "cujnvbyfmu",
            "ngtdocc",
            "dfsq"
        }
        gy = gx[gw % 12 + 1]
        gx = gw % 3 + 2
        gz = (gy:reverse())
        local lv = gx
        gx = gy:len()
        gA = (gz:rep(lv))
        if gx <= gA:len() then
            gv_11(UDim2.new(0, 12, 0.5, 0), Vector2.new(0, 0.5))
        else
            gv_11(0, Vector2.new(0.5, (UDim2.new(12, gv_11, 0.5, UDim2))))
        end
        gw = (gw + 6) % 8
    until fn71((gw * 5 + 3) % 8, 494033731)
else
    gx = 4
    repeat
        gw = (vector.create((gx * 5 + 8) % 11 + 1, (gx * 7 + 9) % 13 + 1, (gx * 7 + 10) % 17 + 1))
        gy = (vector.create((gx * 2 + 1) % 11 + 1, (gx * 2 + 12) % 13 + 1, (gx * 6 + 11) % 17 + 1))
        if vector.dot(gw, gy) * vector.dot(gw, gy) <= vector.dot(gw, gw) * vector.dot(gy, gy) then
            gv_11(UDim2.new(0, 20, 0.82, 0), Vector2.new(0, 0.5))
            gv_11(UDim2.new(1, -20, 0.82, 0), Vector2.new(1, 0.5))
        else
            gv_11(gv_11, Vector2.new(0.5, 0.82))
            gv_11(UDim2.new(0, UDim2, UDim2.new, 20), Vector2.new(1, 0.5))
        end
        gx = (gx + 4) % 8
    until fn71((gx * 1 + 6) % 8, 510804476)
end
gy = nil
gw = 0
repeat
    if (gw * 1 + 1) % 2 + 1 <= 1 then
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gw, 21), string.byte(tostring(gy))), 1), 1673961407), 4178589755), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gw, 21), string.byte(tostring(gy))), 1), 2621005888), 2005570883))), 4178589755), 2005570883) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(gw, 21), string.byte(tostring(gy))), 1) then
            gy.Name = "OuroborosMarketplace"
            gy.ResetOnSpawn = gy
            gy.ZIndexBehavior = gy
        else
            gy.Name = "OuroborosMarketplace"
            gy.ResetOnSpawn = false
            gy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        gw = (gw + 5) % 16
    else
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(gw, 14), string.byte(tostring(gy))), 8), 3688701646), 12), 3521965501) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(gw, 14), string.byte(tostring(gy))), 8), 12) then
            gy = Instance.new(Instance.new)
        else
            gy = Instance.new("ScreenGui")
        end
        gw = (gw + 3) % 16
    end
until fn71((gw * 9 + 14) % 16, 510804476)
local gv_13 = gethui and gethui()
gw = gv_13 or game:GetService("CoreGui")
local f5
local gv_14 = 2
repeat
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_14, 23), string.byte(tostring(f5))), 31), 3382658913), 1145553430), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(gv_14, 23), string.byte(tostring(f5))), 31), 912308382), 2860359418))), 1145553430), 2860359418) == bit32.rrotate(bit32.bxor(bit32.lrotate(gv_14, 23), string.byte(tostring(f5))), 31) then
        gy.Parent = gw
        f5 = Instance.new("Frame")
    else
        gy.Parent = f5
        gw = Instance.new(Instance.new)
    end
    gv_14 = (gv_14 + 3) % 4
until fn71((gv_14 * 3 + 1) % 4, 544454170)
local gv_15 = f_
if gv_15 then
    gw = 7
    repeat
        gx = { "lhas", "tixl", "hzt", "chkp", "mftmetmidbh", "kowdarhj", "uxxua", "tciihbixc", "telz" }
        gz = gx[gw % 9 + 1]
        gx = gw % 3 + 2
        gA = (gz:reverse())
        local lO = gx
        gx = gz:len()
        gC = (gA:rep(lO))
        if gx >= gC:len() then
            gv_15 = UDim2.fromOffset(100, UDim2.fromOffset)
        else
            gv_15 = UDim2.fromOffset(170, 100)
        end
        gw = (gw + 4) % 8
    until fn71((gw * 3 + 6) % 8, 494033731)
end
gx = gv_15
if not gx then
    local gv_16 = 1
    repeat
        gw = {
            "yqhbbxxntps",
            "hkulzfjsf",
            "ipb",
            "qzjhxyuu",
            "mywbtb",
            "iig",
            "vyueht",
            "wjzlsawkwpa",
            "yygjtr",
            "ybs",
            "lfbjffich",
            "uzdnht"
        }
        gz = gw[gv_16 % 12 + 1]
        gw = gv_16 % 3 + 2
        gA = (gz:reverse())
        local lW = gw
        gw = gz:len()
        gC = (gA:rep(lW))
        if gw >= gC:len() then
            gx = UDim2:fromOffset(240)
        else
            gx = UDim2.fromOffset(240, 140)
        end
        gv_16 = (gv_16 + 1) % 8
    until fn71((gv_16 * 5 + 6) % 8, 544454170)
end
gw, fS, fP, gD, textLabel2, f7 = nil, nil, nil, nil, nil, nil
gA = 19
repeat
    local gv_17 = (gA * 1 + 1) % 5 + 1
    if gv_17 <= 3 then
        if gv_17 <= 2 then
            if gv_17 <= 1 then
                gE = { "jsotv", "cahcfftyom", "tyaudqdh", "enp", "use", "mvloaewrl", "rnwvgsdr", "lalk" }
                worker2 = gE[gA % 8 + 1]
                gE = gA % 3 + 2
                local gG_33 = (worker2:reverse())
                local lA = gE
                gE = worker2:len()
                local gH_21 = (gG_33:rep(lA))
                if gE <= gH_21:len() then
                    f5.Size = gx
                    f5.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                    f5.BackgroundTransparency = 0
                    f5.Visible = false
                    f5.Parent = gy
                    gw = Instance.new("UICorner")
                else
                    f5.Size = gw
                    gx.BackgroundColor3 = Color3.fromRGB(Color3.fromRGB, Color3, gx)
                    gx.BackgroundTransparency = 25
                    gx.Visible = gx
                    gx.Parent = 25
                    gy = Instance.new(30)
                end
                gA = (gA + 11) % 40
            else
                if (gA * 2 + 4) * 10 % 3 == ((gA * 2 + 4) * 10 + 1) % 3 then
                    fS.CornerRadius = UDim.new(0, fS)
                    fS.Parent = fS
                    f5 = Instance.new(gw)
                else
                    gw.CornerRadius = UDim.new(0, 8)
                    gw.Parent = f5
                    fS = Instance.new("UIStroke")
                end
                gA = (gA + 21) % 40
            end
        else
            gE = {
                "plgeof",
                "nfsynohpfrp",
                "delfiumbkto",
                "awbqvjzcjadd",
                "vsjkjeyxez",
                "cxhcnjtbam",
                "gtzp",
                "gxjrhzee",
                "deouu",
                "qxwjarmxhto",
                "fxxq",
                "dxjawzwnysn",
                "ogciyj",
                "fvxbu",
                "pjdsscb",
                "zkkzdopkzpv"
            }
            if gE[(gA * 73 + 51) % 16 + 1] <= gE[(gA * 73 + 51) % 16 + 1] then
                fS.Color = Color3.fromRGB(80, 80, 95)
                fS.Thickness = 1
                fS.Transparency = 0.3
                fS.Parent = f5
                fP = Instance.new("ImageLabel")
            else
                f5.Color = Color3.fromRGB(80, 80, Color3)
                f5.Thickness = 95
                f5.Transparency = 0.3
                f5.Parent = f5
                fS = Instance.new(f5)
            end
            gA = (gA + 6) % 40
        end
    elseif gv_17 <= 4 then
        gE = ({
            "rol",
            "xbcanygqp",
            "wbqdmkh",
            "roliin",
            "aae",
            "pmyoehp",
            "eqkl",
            "snqqvomuv",
            "cma",
            "hbaabjuzzbv",
            "xmgenzerz"
        })[gA % 11 + 1]
        local gv_19 = gA % 3 + 2
        worker2 = (gE:reverse())
        local gv_20 = gE:len()
        local gG_34 = (worker2:rep(gv_19))
        if gv_20 <= gG_34:len() then
            fP.Size = UDim2.fromOffset(40, 40)
            fP.Position = UDim2.new(0, 15, 0, 15)
            fP.BackgroundTransparency = 1
            fP.Image = "rbxassetid://91400086538074"
            fP.ScaleType = Enum.ScaleType.Fit
            fP.Parent = f5
            gD = Instance.new("TextLabel")
            gD.Size = UDim2.new(1, -70, 0, 20)
            gD.Position = UDim2.new(0, 65, 0, 15)
            gD.BackgroundTransparency = 1
            gD.Text = "Ouroboros Market"
            gD.TextColor3 = Color3.fromRGB(240, 240, 240)
            gD.TextSize = 14
            gD.Font = Enum.Font.GothamBold
            gD.TextXAlignment = Enum.TextXAlignment.Left
            gD.Parent = f5
            gC = Instance.new("TextLabel")
            gC.Size = UDim2.new(1, -70, 0, 15)
            gC.Position = UDim2.new(0, 65, 0, 35)
            gC.BackgroundTransparency = 1
            gC.Text = "Trade. Sell. Profit."
            gC.TextColor3 = Color3.fromRGB(150, 150, 150)
            gC.TextSize = 11
            gC.Font = Enum.Font.GothamMedium
            gC.TextXAlignment = Enum.TextXAlignment.Left
            gC.Parent = f5
            textLabel2 = Instance.new("TextLabel")
            textLabel2.Size = UDim2.new(1, -30, 0, 60)
            textLabel2.Position = UDim2.new(0, 15, 0, 65)
            textLabel2.BackgroundTransparency = 1
            textLabel2.Text = "Got spare loot piling up? Turn your grind into actual profit.\n\nClick to join the biggest trading community around!"
            textLabel2.TextColor3 = Color3.fromRGB(190, 190, 190)
            textLabel2.TextSize = 11
            textLabel2.Font = Enum.Font.Gotham
            textLabel2.TextXAlignment = Enum.TextXAlignment.Left
            textLabel2.TextYAlignment = Enum.TextYAlignment.Top
            textLabel2.TextWrapped = true
            textLabel2.Parent = f5
            gz = Instance.new("TextButton")
            gz.Size = UDim2.new(1, 0, 1, 0)
            gz.BackgroundTransparency = 1
            gz.Text = ""
            gz.Parent = f5
            local function gv_21()
                local fg = (gn:Create(f5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(30, 30, 35) }))
                fg.Play(fg)
                local fh = (gn:Create(fS, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 100, 115) }))
                fh.Play(fh)
                local fi = (gn:Create(textLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(230, 230, 230) }))
                fi.Play(fi)
            end
            gE = gz.MouseEnter
            gE.Connect(gE, gv_21)
            local function gv_22()
                local fj = (gn:Create(f5, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(25, 25, 30) }))
                fj.Play(fj)
                local fk = (gn:Create(fS, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(80, 80, 95) }))
                fk.Play(fk)
                local fl = (gn:Create(textLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(190, 190, 190) }))
                fl.Play(fl)
            end
            gE = gz.MouseLeave
            gE.Connect(gE, gv_22)
            local function gv_23()
                task.spawn(function()
                    local fm = (gn:Create(fP, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(34, 34), Position = UDim2.new(0, 18, 0, 18) }))
                    fm.Play(fm)
                    task.wait(0.1)
                    local fo = (gn:Create(fP, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(40, 40), Position = UDim2.new(0, 15, 0, 15) }))
                    fo.Play(fo)
                end)
                pcall(function()
                    setclipboard(f4)
                end)
                fW("Marketplace Discord copied to clipboard!")
            end
            gE = gz.MouseButton1Click
            gE.Connect(gE, gv_23)
            f7 = nil
        else
            local fromOffset = UDim2.fromOffset
            gD.Size = fromOffset(40, 40)
            gE = UDim2.new
            gD.Position = gE(15, fromOffset, 15, UDim2)
            gD.BackgroundTransparency = gD
            gD.Image = "rbxassetid://91400086538074"
            local ScaleType = Enum.ScaleType
            worker2 = ScaleType.Fit
            gD.ScaleType = 1
            gD.Parent = worker2
            worker2 = Instance.new
            gz = worker2(gD)
            gz.Size = UDim2.new(textLabel2, Enum, worker2, gD)
            worker2 = UDim2.new
            gz.Position = worker2(gE, gD, 1, ScaleType)
            gz.BackgroundTransparency = 0
            gz.Text = gz
            gE = Color3.fromRGB
            gz.TextColor3 = gE(240, gD, Color3)
            gz.TextSize = gz
            gI = Enum.Font
            gz.Font = gD
            gJ = Enum.TextXAlignment
            gK = gJ.Left
            gz.TextXAlignment = 1
            gz.Parent = gJ
            f5 = Instance.new(20)
            gL = UDim2.new
            f5.Size = gL(0, gz, UDim2, -70)
            gM = UDim2.new
            f5.Position = gM(gz, 240, 15, "TextLabel")
            f5.BackgroundTransparency = 0
            f5.Text = f5
            f5.TextColor3 = Color3.fromRGB(0, -70, 0)
            f5.TextSize = "Ouroboros Market"
            local Font = Enum.Font
            f5.Font = Enum
            f5.TextXAlignment = UDim2
            f5.Parent = gM
            f7 = Instance.new(0)
            f7.Size = UDim2.new(Font, 65, 70, UDim2)
            f7.Position = UDim2.new(gz, Enum, Enum, gK)
            f7.BackgroundTransparency = f5
            f7.Text = f5
            f7.TextColor3 = Color3.fromRGB(UDim2, gL, Instance)
            f7.TextSize = "TextLabel"
            f7.Font = f5
            local TextXAlignment = Enum.TextXAlignment
            f7.TextXAlignment = f7
            f7.TextYAlignment = 150
            f7.TextWrapped = f7
            f7.Parent = gI
            gC = Instance.new(gz)
            gC.Size = UDim2.new(TextXAlignment, gE, 0, Enum)
            gC.BackgroundTransparency = worker2
            gC.Text = gz
            gC.Parent = f7
            local MouseEnter = gC.MouseEnter
            MouseEnter.Connect(MouseEnter, 1)
            local MouseLeave = gC.MouseLeave
            MouseLeave.Connect(MouseLeave, "Trade. Sell. Profit.")
            local MouseButton1Click = gC.MouseButton1Click
            MouseButton1Click.Connect(MouseButton1Click, UDim2)
            fP = 1
        end
        gA = (gA + 16) % 40
    else
        if gA * 18711951 + 4 + 7 >= gA * 18711951 + 4 + 7 + 1 then
            task.spawn(task)
            local RenderStepped = gB_1.RenderStepped
            gE = RenderStepped
            gE.Connect(gE, RenderStepped)
        else
            task.spawn(function()
                while task.wait(1) do
                    if not f7 or not f7.Parent then
                        local iV_1 = gethui and gethui()
                        local iW = iV_1 or game:GetService("CoreGui")
                        for i, child in ipairs(iW:GetChildren()) do
                            if child:IsA("ScreenGui") then
                                for i, child in ipairs(child:GetChildren()) do
                                    local iV_3 = child:IsA("Frame") and child.AbsoluteSize.Y > 200
                                    if iV_3 then
                                        for i, descendant in ipairs(child:GetDescendants()) do
                                            local iV_4 = descendant:IsA("TextLabel") and (function(d4, d5, d6)
                                                if type(d4) ~= "string" then
                                                    return false
                                                end
                                                if #d4 ~= d5 then
                                                    return false
                                                end
                                                local d7 = 5381
                                                local d8 = buffer.fromstring(d4)
                                                local d9 = 0
                                                while d9 <= d5 - 4 do
                                                    local ea = buffer.readu32(d8, d9)
                                                    local d7_9 = bit32.bxor(d7, ea)
                                                    d7 = bit32.band(d7_9 * 33, 4294967295)
                                                    d9 = d9 + 4
                                                end
                                                while d9 < d5 do
                                                    local eb = buffer.readu8(d8, d9)
                                                    local d7_10 = bit32.bxor(d7, eb)
                                                    d7 = bit32.band(d7_10 * 33, 4294967295)
                                                    d9 = d9 + 1
                                                end
                                                return d7 == d6
                                            end)(descendant.Text, 13, 1296304569)
                                            if iV_4 then
                                                f7 = child
                                                break
                                            end
                                        end
                                    end
                                    if f7 then
                                        break
                                    end
                                end
                            end
                            if f7 then
                                break
                            end
                        end
                    end
                end
            end)
            local function gv_32()
                if f7 and f7.Parent then
                    local jf_1 = false
                    if not f7.Visible then
                        jf_1 = true
                    elseif f7.AbsoluteSize.Y < 50 then
                        jf_1 = true
                    elseif f7.AbsolutePosition.Y < -3000 then
                        jf_1 = true
                    end
                    if jf_1 then
                        f5.Visible = false
                    else
                        f5.Visible = true
                        f5.Position = UDim2.fromOffset(f7.AbsolutePosition.X + f7.AbsoluteSize.X + 15, f7.AbsolutePosition.Y)
                    end
                else
                    f5.Visible = false
                end
            end
            gE = gB_1.RenderStepped
            gE.Connect(gE, gv_32)
        end
        gA = (gA + 11) % 40
    end
until fn71((gA * 31 + 25) % 40, 326253197)
