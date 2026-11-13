local iu
local iT
local iA
local jh
local iZ
local Workspace
local iM
local it
local ja
local iS
local iz
local jg
local iY
local iL
local i9
local iR
local jf
local iX
local iE
local jl
local i2
local iK
local ReplicatedStorage
local iQ
local ix
local je
local iD
local jk
local LocalPlayer
local i7
local iP
local iw
local CollectionService
local iV
local iC
local jj
local i0
local iI
local jp
local iO
local iv
local iB
local ji
local i_
local jo
local i5
local function fn85(b8)
    jp.ZonePurchaseInterval = iV("ZonePurchaseInterval", b8)
end
local function fn157(b0)
    jp.WalkOffset = iV("WalkOffset", b0)
end
local function fn290()
    iM()
end
local function fn617(ce)
    iT.SetTheme(iT, iV("Theme", ce))
end
local function fn797(hh, hi)
    if type(hh) ~= "number" then
        return false
    end
    if hh % 1 ~= 0 then
        return false
    end
    local hj_1 = bit32.bxor(hh, 1540483477)
    local hj_2 = bit32.band(hj_1 * 403 + bit32.lshift(hj_1, 24), 4294967295)
    local hj_3 = bit32.bxor(hj_2, bit32.rshift(hj_2, 13))
    return hj_3 == hi
end
local function fn1103(bR)
    jp.TargetUnit = bR
end
local function fn1141(ca)
    jp.BestZoneInterval = iV("BestZoneInterval", ca)
end
it = nil
iu = nil
iv = nil
iw = nil
ix = nil
local iy
iz = nil
iA = nil
iB = nil
iC = nil
iD = nil
iE = nil
iI = nil
iK = nil
iL = nil
iM = nil
iO = nil
iP = nil
iQ = nil
iR = nil
iS = nil
iT = nil
iV = nil
iX = nil
iY = nil
iZ = nil
i_ = nil
i0 = nil
LocalPlayer = nil
i2 = nil
Workspace = nil
i5 = nil
i7 = nil
ReplicatedStorage = nil
i9 = nil
ja = nil
local jb
CollectionService = nil
je = nil
jf = nil
local iN, iU, iW, i3, i6
jg = nil
jh = nil
ji = nil
jj = nil
jk = nil
jl = nil
jo = nil
jp = nil
local jq, ju, onStatus, jy, jA, jB, jC, jD, jE, jF, jG, jH
local iJ = (buffer.fromstring("<  $'n{{3= <!6z7;9{\x157 !58\x195' 1&\x1b;3#5-{\x128!1: y\x061:1#10{&1815'1'{85 1' {0;#:8;50{\x128!1: z8!5!r10Ikd*A$S=FG5l&wyrv8xyOHw\x13'&=r\x15=r\x06=r\x107!&r\x08=<7r7<30>76)-3/1.S#uO]zq*I}?Kx^k&I!v+\x07 ;$'t588t8;;$'t5:0t!:8;50't <1t\x01\x1dB8{m*^Y5e$IFbv11Yk\x169<%7:4'1u<&u ;4#4<94790u:;u!=<&u0-06 !:'{_\x1c;#<!0ou\x1a./4{\x0c:70{\x0f4{\x1649(a{FrRRAC)51Q}VdD0_%VQ=/C#!&U3P23rsTBE\x11k^_T\x11fPCA\x11x_ETCGP]C00@5xf?3L6GW7#V}PHFW&p5FzURV^yZOOW^iu|dzNOT9w@teZ2ernJe!dQY63C,AuJ%4MYhgSRI\x06qGJM\x06rI\x06kIDU$5Mo*_KDy:hVwSvD,&o68j}1%UDCE]nAFBJmN[[CJ}ahpnZ[@mq_]Z.p!lO1#DP$R[C0d/7vjnncbVWLdLwLaFPWyLMF6!fnm,(}59Y^+bhNlY)N3[Y*7N3Ax7++/,epp;6,<0-;q88p9l;\x157\x1b8&\x0b.p18/TTdCtFq?kW$(\x7fHZL_IdCYH_[LACGhKEqUz-/DOUlDonScC[bo@{7uW#;*gSRI\x06eJGOK\x06tCQGTBUFWu$QRtUJ#e}acX-,UGBl,F,x%aDBE\x0boBXHDYO\x0bMDY\x0bfDYN\x0b`NRGNXX\x0bxHYB[_X03y(M4{sGF]bG@QZSAWsDS[^SP^WgBU@SVWA5w20JYphe7NH*3AkQVKFKVKW\x04lQF!TyQ}q=9Kbo{3HRMw:=(G)R@K4(hU;wCBYfCDU^WESxSNBlYXSsrcNwi*U9%:&@$(YpjWQ;Z*\n=>*=+0x\r61,+x~x\x0c*91,+Pey:wRj5gJ*K=n#25!TP%\x0f(3.}\x18,(4-}\x1f8.)}23>8apUiQY5oU5;%wj+tjJ@j-1o}ZLKePQZvQKZMI^S(#(.)b5V^1R=sKc=IBt[kE,vwEhwX_UwXCBErYX]UnF3hWMwdEa}U}.lL!$Ivm:0cNx64\x13'&=r\x053>9r\x06=r\x1f=0!hr%3;&;<5r4= r>=13>r7<7?+|ST^|SHINyRSV^[Q4ns6dO[JeUUWUPZ!37aI0-SH!0c^FJEDBOyDD_{JY_:58EHDe@TD_kS/$F9SCqAm#v%/`TUNqTSBI@RDoDYU{NODMH9MW_pcYFWAJ.q_T7By[nOYIXCZ^CEDdbuc^^4uMIe8ox!QsHs0XzA?f}*5FHeCP_BAPCT_RHM=,])ut:JmYWTanwCPsr@9[=YS.kf\x12&'<s\x14<s\x07<s\x116 's\t<=6is=<s<$=67s)<=6s5<&=7\x0376-b\x01.#+/b\x06#+.;b&+1# .'&9ra?QJboxQ8F}_Y~YSRO~YCREAV[OaIMrTlG9k8dO6+FBl=sHX-u3=}|]p[R]TVWuF!:-]g]4dY,%vfyW[DS-VV;6sE+^kn}RU_}RIHOxSRW_C9YNX&(6lLZ_VOW]RhDTU1kUbv^\x11e^\x11sTBE\x11~F_TU\x11k^_T$V8q,$mSHQ[EhZ.GvBeQPKgHEMI`EMH]RP*StC-?4Eh}75W&O9;l26NNGhWKQLQWV)4k)@x]qc,w*M{KuTY!b**dExxI$}GvvSTENGUCqGJJ]MnUK1^SgPZO9d87z?=-[5BPd!h^XORTU#ICvWxeXk;FrrSy-SM.MBWJT1lPMTVa|[HWST]#DUw*y;Im^=cAJWIx#:Ibnhcp4yU/+FtQVGLEWAsKVH@qTCVE@A6BPP}27+8/rg362@munAFLnAZ[\\k@ADLgNkDI[[;:*+Tg9/md!PUIc*fmYXC\x0c|Y^ODM_I\x0cbITX\x0cvCBIV6oi1dwivSg(f2ugSRIqGJMrIkIDUC{mVwO6bn!}+hQ6PsUM7CBPs\x16 312a./\"$a5.a8.43a)(&)$25a.6/$%a;./$[F@@AKNZ?-t+p%?ms;eta;g_=e^k3Cs3@5[!:~[LYJONbE_NY]JGEMX/ya,I[u}}DFBp).8oT7cJWF@\x05`TPLU\x05g@VQ=-tFt*R8mNq70;Rj0]2PCy_LDY^O)T7Hg=w6@:Qiu.SNzw(-23TITYpW4=o@MEAhME@Uh&/XkpZ#lf,];}u1[+YXX))=$tkuDYUm@CDMu2.p8F}ivFnMVIFrB3tp0LI3,6!|S^VRtVSS6?6;U}fs{0YE,j3J)bWioIR2;4OnXIITSZN4]l,+tzU+-?w2!pr]{[deX%3ZMNdeSB`WZCSb]I1X$:2q_HxJnEg,kb+,oop(ea3k]LkSQHyVQU(02;lzdGmWz3U3@uO%p@t)mWk\x16:%<01u<;#<!0u!:u69<%7:4'1{h61tK_&b.pWD[_XQHW8im+[^2XWY[#py5+(q]NM33[(,Em[FYMF^Gj-N$-LN@646]SxJT.dkBxpZXZRA5{TSW_x[NNV_ht}e{ONULP3-@Rs!9AGo#$Zt6sRDTE^GC^XY72L2TK-kp}bUOa!eNNLmY(aB&y^EX\x0bnZ^B[\x0biNX_\x0bDEHN/*ZDWnN7_YhlV#[!FMXBZTG]MMn+k@cK)b0VW435@2z+5P@lQuG{lGLDPjHY_6lYiy%j?q7QDF*if6hz*_xyKRneSBB_XQE*kE.k8iS9IcEcmUU!ch;s$]REMpcJ@JYBbE_NY]JG:*HbPJp8jB&UKa1?[M:p^k^_TaDCRYPBTx_ETCGP]p^LY/EFoC6Ty5nVbEVIMJC6EtQp+0YE=S+G4f{sU)ECU{[1WwrlNCCMNLDLdVRiq/.oU/(dY:Lwa#=+%=BS8#\t=<'h\x0b$)!%h\x0c)!$1h-&)*$-,KXoC/Z3q.MjdGUCvGTR.l^IvG8sWP.]n:!Rp!YH$=a6*@~HYYDCJ^W:LOe*RtFn4Ii[+h$)p)Ev[==Hv@QsDIP@w${iyWDPM$86y-C8=/CBsw#((^qLQI@aQ50.4_;w+_S33%q1-*/}L01v2kkJ& -1#(ak_SeK0y$1(W+;f]^XFd&l&&StS_dS[YBSpCXUB_YX9)V.niu6@qYNZ-2R,w70\x12&'<s\x10?2:>s\x016$2!7 s6=21?67VW_h^lvr~_rYP_VTU@a!T2jtxl%5cY93:oP[NcH9y8nOLK_F^$ee%.NS#dn&$iBxe-WciVUfT?/?qJMP2B3*j(e4Yf+$jy7)j(pdGJ%Zwr,QV+hKGEHaJAIMAW^&7[lj5%h!MtBzN)!L$qFx_D[5%T4sJujixYpu#AD(4u!F%m#/kfZm~JKPmPSSkM^VK9V5JN.CaNK?P%YZ11Mb,\x1f+*1~\x191~\n1~\x1c;-*~\x0410;~:7-?<2;:Uu(ZnENFRyJ_Nd1Y.!A4)Wb{OMFYf{AFNND;:p_XRp_DEBu^_ZRxWvn6/shWj=l1(nDrw1oIZROHh^IMRX^b{Uf3#Ha8bS+(oMLe0sPuYXBSXBcYC@c.}a1VAfNU@oQ_dFKc$*f5!47901Jhn_,ee;jTB7u[SK!}D;mWw7kEz{NMxFK[Gb}n{.x2ygMx^vc;3n?;wgH7}}vUGQdUF@0x);$/OO95Rj1cQ5-qq4eD%^*rEHQA*#cUvL(e7D8dv]sR,KX($G2--j_tCQGTBoHRCTPGJo66ck0Ij@q?LGxv49:j^_DnZ^B[iNX_~EB_Ctz3fBCNVALW.*VnJMI[[JfjoLve+{PEc%Km-vb4&%JIN-8\x19-,7x\x08-*;09+=x\x16= ,x\x0276=x<1+9:4=<6 1&),5'*$7!e#^YQcm6I3?11Q3;O;11cRPXRTV@AdUg8h972N*8hUt*1V_@:BJYo(:dXp7)$,v#b?l?bD&^qS8G/FoQt2+O 5681P;_erSo09d)4Q10EzrJ}f,Q!^xsnALD@`DAH^YBCHMMV!6O[fIEa5C5lg$YuPEP4UNQn(*Uad+ZJ$qW_PeE&Fvyx?[X`ABEQHP$MPZ64/e!rJ,CzKRbTzG{)PlwX_UwXCBErYX]UbHyVIBRS%c=m4VA-A\x1a./4{\x0b.)83:(>{\x15>#/{\x0145>a{5InoAZ2'$*#wuA6DEvION?X2SHytMf/yP,+I+/;xu!;C[E8]inu-luU4.fJ1hLUEay3&mYXCkCxCnI_XvCBI%Nh@}[l{.I}3yZYnAD]OBL_IjjOgCiR^taX#q-Sl1Ji(zi;-- --)!fmas9[D(,[HHN!fM4oP):OslXYBzLAFyB`BO^IXT#m^evGqf*:16B63#?7UYq^6p/kVq+Zom;.kY]!,;FBz<Wru^KpPiUszRQf1pV^4dnu1?pLqLC[BCSROPXE_VFg^42RGR_8CUK)}#_yd|JG@dMMXN_8F9:[(%NQaX]Xf9b2G3:vWTSG^FTqd0f^v^Uq^5c&ez][4RZRnjYNJXaeCVrI0&5C@JxWW4bVrc#9-z{gHOEgHSRUbIHME8E.:3u5whH)C6}hkrSEUD_FB_YXUyja(!V;tsi!)C*)gp3}QY^FJ*4wXqLT(%-IwQBKz1f=}8o,wCBYfCDU^WESw@W_ZWTZScFQDWRSEgSRIuVOH$T0jXxqFd*u/!oQtLpX?sdYCXR_XQOt9t;fUgc$ieN5LpPnO5!jK]M\\G^ZGA@4Enw{aGEjNRW}&$qX[pDE^aDCRYPBTpGPX]PS]TdAVCPUTBeQPKtQVGLEWAeREMHEFHAqTCVE@AWqFTBQG\x03jMWFQUBO=OC4{@$-q%SIb)`OBJNsOBZWJNF8/Ws+*b-/Wk[]HMU+.%-)*9S/p#MRoE}_tU._2]z$Tz#KsNMMrQDDEk6^J2q/SDb[oZQ((w0oRiHKLXAYT$_{I%{[SX(k*@Jj@&nw/y;/fhLl7dYH@{0Sp{&EhTLNb!@td8hUVVnH[SN@xYD:I@W&3),Lf?Q,EMt^RSW&Wqo;#e:wTTYt}kaP3or;W9xLMV|HLPI{\\JMlWPM%T1R]d:}!oJvL~j[:MoL4q_EU8nBXh;kwVIKX}6lM`KBMDFGCas9e&#wi]-x%K&RiywmZ[[@A4Ev:X:s^cRB:,ln[xp6(}S}@]ELs+*GWhh4GSSy+0AJmSLPi.lXYBeLFL_D&7kAAy+Jw]9s;RlTjvAIKPAbQJGPMKJ\x04QJEREMHEFHA%eBHITaE@I_XCBI_CGO!2vM#AuD(kVKSZeAPVzx@E1Sv/eq/IP]6DyezNOTiTWWoIZROJn@t3xhFMM@@*ZwL{TXP3]KlNIPt&TZO*)l^WCVHW,7/ '0ca-ili4(gspc{+DDGy6*HmKXPMJTRP(^_e=KR[kreX?,n_D}rSPWCZB_PL.v1}F=/LPv.Ws^Ce\x0401*e\x12$).e\x11*e\x08*'6e!,6$') !\x1b/.5z\x0e(;3.`z>;.;z45.z(?;>#\x0074 7!:76r'<;&!r3<6r& 3;&!\x0775::=:3t.;:1t;#:1&'<=$zzzg@VQ\x7fJK@lKQ@WSDI1/$%$@Jj;nyNFD_Nm^EH_BDE\x0b^EJ]JBGJIGNvUGQdUF@k]c{XX(r5A0WA8E.H[mYXCkCxCnI_XvCBIbr;]:tfAcYJN[SBNMZEMA/lq9{-k*9B(-%oIEMaFNG8]UDYe6yxEtFU;dEkdPQJfIDLHlKA@]AMTtY!S7nBw\x07-4$/5a\x13$/$6$%a\x14\x08a-. %$%ojOHYR[I_mUHV^oJ]H[^_axC}Gw[STQp+4b/Dkd*eV}hymY6hNvxNCD`II\\J[s0BS^TXty({w3-wzNOT|ToTy^HOaTU^Y40Go-KhgHOEgHSRUbIHMEnGbM@RRKC4sRQVB[C^P:fkO1_EW(}o/3kh~JKP\x1fzNJVO\x1f}ZLK\x1f[VL^]SZ[z[v]T[RPQ4G8*a!3q9!#MRZMzL]]@GNZ@]!tY_h..QGjCx^xrTGHUVGTCHE_o8,G&{Hcym.UtXA!3hoGV$opK+(}p+GkihR=y[JATQ[}$8nsQ0C*f;YPSIFveQPK\x04vKHH\x04pVEMP\x04@MWEFHA@aF^GCM{MZ^MZZa*8bQ6e;yCWgKRb?;F2qOo@BLA*w*wA2i}w@MTDRVIDl8-^W)7?=K:)w&jHEEKHJB8SjQaxXGln)23D[jOXM^[ZvQKZMI^S3LPS-uGB{MEXjC^oDE@HDQnZ%i./#c*`TUN\x01sNMM\x01uS@HU\x01DO@CMDEnIRM!A#TyVwbyWFL/DvR^m$dPQJvULKO]RiBwN,/0,:]g.]KC^a,/}]0dg{o7iq/#(c^3uPEP{Bnf7n_H0s4ln/IY_#W`zURV^yZOOW^iu|f\x1b\x1eH\x01\x1b\x1eH~C^FOZ2sma?oGrE*;05$yNzY@G`G]L[_HEW^5U).OAe6zAvYU]{J5:y.Om$&Ep%]r(rVQVRVEZtZF/%!.k8k4,Vo|HLPIpWM\\KOXUQ6:x7sQ#}\n=>*=+0x\r61,+x~x\x0c*91,+nR_W_m.vm3za^EPYPK:QFNdCUR|IHCoHRCTPGJ.srYR*w@CW@VM\x05pKLQV:$tq,gq[6~KJA\x04tQVGLEWA\x04mJPAVREH{ONUiJSTJ#dov!ji+Z(ss.pUBWDA@VGPw4x:ff,:s8h+yL_JHYy_LDY$7yLA6Dwo/7|Q0jGC?!MQg-EVqsk?00_\x1c()2}(-:/<98.}83<?189|ST^|SHINyRSV^ckEO=^3mBEOmBYX_hCBGOdMhGJXX~CYBHEBKrzpr%dzgCRVxSeQPKaUQMTfAWPqJMP}AMuhDLKl1D[]3eyKD*Q0P4eRf]UU^WONp(wdlH3h=/k{=x^MEX_&:9z$%y__}HX8f0OZYW^NxyD/s^&Ux(G^WnlYXSfCDU^WES\x7fXBSD@WZ)/#3*1,>0)j%[Mz%kuAdn[ZQdAFW\\UGQ}Z@QFBUXmPSSkM^VKl{h&u[kJ$@w#+!xsF@Ch^y41w=7kD6Qk^MXZKjQVKM29pyvZFDWgKCDzKX^_Rtx*aSBOJ-9oZ[Pe@GV]TFP|[APGCTYgSRI\x06cWSOV\x06dCUR\x06sHORbVWLsVQ@KBPFmF[WyLMF~C^FOsqXT+$SvvRl,#O7qKymdB}dMmBJx(x,xy9M}PCwowFRn5-q.I#@x}{.\x0510+d\x106%-0~d6(vFkY]n'81= :=7?\x0b?:= \x14ezczdqGTVCA2EHW-Ok?SGaL^StCQGTBU!6*8ksP+-?qvo@GCKlOZZBK|`iqo[ZAeJMIAfEPPHAvjc{eQPKaEBR,w&W&wtReazGYIalQLT]559@p=[Wdvq9s6sV^[NeR@VESDdREA^TROYR[BwgL.6ukVvsf?l.eRD^MRZP8A(u[2HO%ikv[09l?h$(61}anqCP[A\x1b/.5z\x12;1;(3z?4;86?>bC@GSJR;sSM6VG5TP2wLDDOFwQBMPSBQFM@ZoJM\\W^LZ\x1fqZGK\x1fePQZcVKQTvASEV@wAVRMGAk^MXZKkM^VK(oLf0Sjb@MMC@BJ0z+ic5OV;kcFQDWRSeBWBMCm#KUfjOHYR[I_\x1at_BN\x1a`UT_fWDWQDWF^^%_hOc]Rp`ZIVcAL9(f3RUjWmiQnU]]V_66D,/1Q0R%&x76x)lcVXoU#):*JddPQJ`TPLUg@VQpKLQqWDLQwJIIlKQ@WSDIxEX@Ig+#gebZEw}%@pdpd*y_OwXoVrm_}!yUVV_YNSUTi_HLSY_7!@e!dZP=CW=s*;VxrFG\\vBFZCqV@Gf]ZGFETB[DQd_Y3@in,PJMKPW^{@p8M#x^1w`ITEC\x06cWSOV\x06dCURdAFW\\UGQcUXX:*8{zNOTxWZRVi^LZI_HmPHDKJLAwJJQuDWQvQG@n[ZQ}Z@QFBUXqTCVE@A\x04mJPAVREHb@MMC@BJ@(rXVli7wPFAoZ[P|[APGCTYmYXCx^MEXx^MEX?jx_J_^XZfEgQ^/ZH4hKYOzKX^c5&%2A,*bVWL`OBJNqFTBQGPzGZBK^T?6Q4*z:x.wLBMQvMLCQzb:rM_vBCX\x17t[V^Z\x17sV^[NnYXXCBESaLUu!pL\x145z.(;3.)z<5/4>mPJQ[VQXcPh:_fr~I[M^H\x0ceBXI^ZM@mDYHN\x0bhGJBF\x0bjGGaDSFUPQ}Z@QFBUX|YN[HML`G]L[_HE\x0c-b60#+61b$-7,&sRQVB[C.7Geqt)&uWFsFF@[PGFWXg3bVWL\x03qLOO\x03wQBJWaMT)rC(?T$/j#o[>*@(oLN@YEfBKp_pYZRSDHTIaMl.EF{BDCXeklKF-g,7_wSTSWS@_q_CXST^i^LZI_rUO^IMZWlCDNlCXY^iBCFNrQCU`QBD#3/OfY\x1b:u ;<!&u3: ;1o@GMo@[Z]jA@EMnZ[@lCNFBkNFCVmBEOmBYX_hCBGOgFk@IFOMLCxr!W\x1e?p%>9$#p6?%>4bMJ@bMVWPgLMH@nEL_LNYH_lIIHIeR@VES~YCREAV[lXYBnALD@dCIHU`OHB`OTUReNOJBnSCDMtk]tx7W4(vBCXcEV^CcEV^CiHKLXAYUaHDqC1eQPKgHEMI`EMH]wVURF_G0o_.6AGuA@[cUX_`[y[VGlXYBnALD@iLDATj^_DhGJBFoJBGR071*-$3[i(B{D@pKIJDA\x05vFWLUQrSPWCZBfgCBoW=1.'=27.<1?,:dYZZtWBU^$(l;uY[TWBeSD@_UScG@GCGTK\x0elG@J`WZCSEfGc2)LUfDUrDSWHBDo&z`TUNsNMMuS@HUkTHRORTUS$YpxaEBD[nd56,)}T`GMLQ`G]L[_HEr_[VNRmkK-2,UgD]Z\x14}Z@QFBUXy_LC^]L_HCNTpVEJWTEVAJG]yH[HN[HYAC5yzY@G`G]L[_HEjNBDFaVWWLM_cEVYDGVERYTNKFGNQUVR@@CN~]DCdCYH_[LArTGHUVGTCHE_yMLWkHQVYX[L\x1a=+,x\x17/6=<bxcw%02,73*WS5zL]]@GNZ[FRd`TPLUv@WSLF@v@QdPQJfIDLHvULKlKQ@WSDI`DTBEbTCGXRTz]H]ZzL[_@JLv@MJhOUDSW@Mn[[NLD|_JJK`AWGVMTPMKJT^UNXAL)Bn(fEIKFzFKSOXtA@K\x0e}ZOZ[]bCUETOVROIHwAPeQPKvKHHnXI|HIRoRQQ|T_DzTHSX_UBCJNJHKJGWKmLZJ[@Y]@FG}@CC|J]YFLJ*;>5.?!5<89gQ@g_]DuZ]Y.=&+<!'&7*s;8)?&9//VzyaEBEAEVIgIUdPQJmDNDWL|@MUoDMBOIj^_DcJ@JYB~JNRKhWTOHfP]Z~WWBTEqED_xQ[QBYy_XLKIOm_C|^Q|PSSV[Zz]H]LP2Ys#qJDKWpKJEW}FNNEL(qO1{TYQU|YQTAt[V^ZpEXBGsQ@gQFB]WQ>40 %%2=&'vL~L?a%mtp}@]ELZXhx{bXj;Ajh}dXq^S[_u@]GBfGjAHGNLMiECJMPQ@AiTWWoIZROyXu^WXQSRyAX@]^s=*iHeNGHACBgFk@IFOML;)8/98)(;gZG_VnF,&eDiBKDMONa@mFO@IKJ$)13$?9$*nObI@OFDEo@MEAgE@@wCG[BpWAFjKfMDKB@AaDSFUPQ}PrGFM[lI\\IwJPKALKBc@RDq@SUqPKVYFJ!`VGGZ]T@dRCaV[BR4)#2;**2x]ZK@I[MlZKi^SJZsPBTaPCEyD^EOBELb^SKF[_W`VGeR_FV\x9a\x99\x99\x99\x99\x99\xa9?eSBB_XQE#2;2'8%#hNBJfAI@v@WSLF@VdYCXR_XQnZ[@|_FAnH[SNIGayORMYRJS1#$*&(#4\x9a\x99\x99\x99\x99\x99\xc9?tXPWiXKMgQ@@]ZSG@CRAX_V@|ZV^rU]TfQ]{sEHH\x9a\x99\x99\x99\x99\x99\xb9?sDV@SERG\x9a\x99\x99\x99\x99\x99\xe9?rDUUHOFRwUZeAQFMa^ZGA@]vQB]Y^WfQDX]WUiVROIHUbNOUDOU}SOuYRSxGBONYGoCBXIBX8 :&8+$$06!cnD|^K^SPXrNNJ}_NNJROYN@x^R]SZMbC@GSJRvWTSG^FuTWPD]EaVDRAW@{D@][ZG|]^YMTLtSHHOHAwVURF_GsvBQ]U=y[N[VU]oCANMXl[ZZA@`QBU^D.)/43:qWDLQV~EMMFO).(34=zE@ML[d[^SREeZ_RSDyoHBC^`TGKCiNEVUDRhVQ[PHaZRRYPinsertjo[HDLyBaTU^nYTM]K|PQYVX '!:=4fQPPKJrTGORUcEV^CDtCBBYXaV[BRnSNV_P]CU]{F[CJeXE]T~C^FOoROW^tLUMP{GJBEcWSOVnR_W_`XAYD}IZV^X]]U]6# .'.;86?}@]ELqGTVUs@WSA#65;2fDONGzGZBKc_RZRyDYAHc^C[RlIADQ?29>+]HKELrNCKCrWBWu@AJzV^YyVZRcOG@\xcds\x10#zW_V\x17\xd4\xb3\x97ta\xd1\x0e270-\xb2\x08\x99\xd0\xce\xe2Z\x00?\xf1\xee\xe52\x8c\xef\xdcdKGOUAGPv@HUq^RZxITX$*%7rXTU\x97\xbc\xf5\xa9t[W_^J^J\x9d\x18\x91S|\xdd\x13\r\x1a\xb6s \x9c\x86+\x1crUNQsort~Q]U\x05!&AG@]P]tN|z@rODVuY@qDG`DC_FEabsn[X|FtkG^uQVsub\xcc\x01~SyT\x05\x15&2X\x02+@r_|h+(2:dK$\x16OC@\x1b^HbS\x02W&z\x1aq%\x03-j\x1exmtI\x06\x18;\x05*6MFL\x10=\nR5Y03\x0c}\x19Ph7,"))
local iG = (buffer.fromstring("\x05(25 /\"$a5.a25 8a(/a'3./5a.'a$/$,($214BA7Zr8s&#NL.t;0n;t^rb/lN6FgsGF]bG@QZSAWsDS[^SP^WgBU@SVWAU6mTFpIc^ER.mtXHnH;$c.j4.iPhY\t=<'h\x1f)$#h\x1c'h\x05'*;h-&)*$-,SJNzE=*d6s{J,d_+Yh]R.DH!Eu&\x14!!08%!&u!:u7 ,u!=0u;0-!u9:6>01u/:;0u:;606rbL49v8bV\x19,,=5(,+x,7x:-!x,0=x6= ,x47;3=<x\"76=x76;=TIX)=+z61\x15! ;t\x04!&7<5'1t\x1a1, t\x0e;:1t1:56810u-t?IQ!-+/*2B=xXqi.sGF]\x12zSYS@[\x12V[ASP^WVv@BbCdsYJbXO+Fd:#cok{2yr_n/E\x10$%>q\x05#08%kq#>==8?6qy$FUnuq^U3ky0;Z,lf?W%jVh{RXzNOTxWZRVi^LZI_H5s2t(f3MmD,OKK69%k+*vt!UvD7CvSdPQJ\x05wJII\x05qWDLQjg/$V%gr5#M$WF?NrDz0sbqM+qfvN%/eQPKgHEMI`EMH]nt2ALs,1s5Qu8^}EvDHk#l5yP#s]J#Z\x04'?-:h!;h.);<-:,ujTg7VZHMu$gt^:.8dpB$[n$wZ97ocLKAcLWVQfMLIA.@K3pK_,%-3v1QAMc!gw?L)2[^ywQklJYQLjWTTqVL]JNYT83k#1hr)=w8z.?V%zkhEZmGlV^HnI_XvCBIeBXI^ZM@t,-(PxFi_I:Vap[xl6S66a?L3!)DbMJNF\x03aBWWOF\x03qmdvXz1#5-^;dS3H!}FN!dC[)pSU*)s\x06!:%&u499u9::%&u4;1u ;9:41&u!=0u\x00\x1c2&lg93[BrbVWL`OBJNjMGF[_=9ylET$8=&tch8z@xsh2jb:i2VK!s=<'s:=s:=%6='<!*ZFgaho?(l5+,k.R-v9RAc@qM0JkWWSdFWbPZM@F{WKVo;c4_[ZtnstwYXct%+qoJ_d_25\x0b'8!-;h< -h\x0c!;+':,h!&>!<-h<'h1'=:h+$!8*'):,\x170-((d-*-0-%(->-*#jd\x106=d%#%-*d-*d%d)+)!*0j\x17>#24q\x12=08<q\x10==q4)42$%45G+#cj7e8aqF{Gt{qq;`MWGKV@\x04mJRMPAJgJl=gbUmb]D-Q:y]))dP4r0a5o*dPQJ\x05fIDLH\x05lKA@]km/-[l?/xt$tdt%;UC%lQ}n)#fAWP~KJAmJPAVREH5oJM+,S*_DhkgOI7FX_;54[Ys~I[M^HeBXI^ZM@RyBQ;551:Nm-#(S?O7IR7ez4CLKlXYB\reLFL_DEv4c?Wi+vz2NQw5yV]A(AibJvGT@@=\x0b,7*y+<.8+=uy=805 uy87=y07=<!y:5804y67:<uZ]WuZA@Gp[Z_WJIztHocfL?uaf37@!v)6h1pH(9pQGWF]D@][Z=F+!n]5=oTe%XDd(F]m&qDpRq!B^t\x06!:'t&1#5&0xt05=8-xt5:0t=:01,t785=9t;:71wCBYbDW_BcX_BM;#v0G:oSj^+h?3t6ZAMFoDjH&j^_D{^YHCJXNj]JBGJIGN~[LYJONX-+J:T0=z6zo@GMo@[Z]jA@EM@tomQw7x%dEZG$rSp!1Bjh9yEdF]YUFMdUF@F?%Edbb7RLuNBtd=qzsx:uw^XZa0nZ[@lCNFBfAKJWrdvfA7K!QnXQs@a(%y[nx(!%{TSY{TONI~UTQYW)C69El6A@rQ08k-VT/-Fp4saVDRAW@9t^Op/psqvds0r$*fF+9Qo#3Y*NgwIj}Z@QFRUWQXxzn[h^D%oW#[ZaK$Y.7pB-!F7y;6b@QdQQWLGPQ@Vgnokvsx-)P%:?E4pIPNyiyYV,gFk@IFOMLE=C^hft9oBxHYD=rm/b}88Po82_Q1\x15#021b-,!'b6-b;-70b*+%*'16b-5,'&b8-,'xNCDfA[J]YNC?T-V/7=dkDnr9ArB4}2N0_UI-lXYB\r}X_NEL^H\rl[LDALOAH\rx]J_LIH^PTYHH$744<?#/i9XT}1-rZ+68J3uzB{O1}r^Y/eQ2.~JKPkM^VKjQVKaA[%QFsP9Lbn7{VM_)em_E;qk^MXZKkM^VKYbS-X1PLg0460)Gwd(@u7i8%N!rQHOhOUDSW@M7H8S}*Zxe[Y^2ZLBNQ1h[^.LNwUDqDDBYREDUfs75Sh.]5c=AhXG}j)&^I02lz\x01,61$+& e1*e61$<e,+e#7*+1e*#e + (, 6{D@][ZG66)O-J(*@}6#&G^cg]@!E;!@yKnC-}ITVr_?[y4Az3x_jQJLf5,$47Tu?I3SxnI}q\x03$,) !e1*e!*2+)*$!e\x10\x0ce),'7$7<e6*07& wTMJmJPAVREHe;+HUuyyot:eK(Dah6y25DVLEY_BXNZA[AMthdodj#B7%.[S45=lVdT[qGu+yBJJAHhrC=$#4xlL;YZcUHz]Bkujhi}]t&/?s^FPJKpM[ZMeBfVRZ!8qP&/$l)3HK4Uat0o9~EMMFOz!ZPbYH@-}Gl-9Y:1:BU*QYOr96j8/mVaNBJ(#b(Z6tIfSeGFDV,-YziC{Fn^:^.Z@~HEBfOOZL]naN2J(f:f}t366j%bxO3y8&fvT~10~VEQ=86-;%crlmj!yp;Jq(QaTq59{k-5aV[BRD9&^oiM-:fNK)42N#nvV3GbAP&(XQj3,%1,&5:5!:?[$P^{!hsYbhP)7*6Mlq^Ukyd[^SRET,Cjpn2B^}q[gV/@U@gyEYf@.&&SYURTOHAF;I-:PUmseizz(LPeSx2x-T=7ft:koNXHYB[_BDE_lOAwbA2pK8W&b.popoNX_73yUL-U=#QTiGgpCM(PNa$P^5XP,taOUMXy(74%3*e2G3Rs-@qh/+k^MfB@Ow.9+#%#dudgRATVG\x13gARZG!cIVPIw7.VES&?)vR7qT=3m[VQiJ__^3j2-f)}ediy*@RA9}2%P{oN7]cBoDMBKIH=cg2!7W_^;1P.ugck!7jWC#54vCBI|Y^ODM_IeBXI^ZM@IgoGE^y]EnW[(1wqvBHxdhPlW2xzn:S=PbED9a%rfPSs6@+?vYU]0wP9zT@y4R=c#dP{AX)Myz&2#]J04.pOJGFQHLS5/UF=$I4b_%@HLG4s%@&;863bxCKK@IwgQ;8c5P_53)*fZXnv_+wpRnBxH=\x0376-b\x1270!*#1'b\x0c':6b\x18-,'xb#..b-5,'&sNTOEHOF+a?Xp]Hc*:[Go5QY297u3ZGDt/4,#$3Gtuwr/8Ac,Nuz)uZ&g?nfTT!U@U}Y^*J]Y&j*5{:@Tax8WhJe20:.fvgp%.4bVWLwQBJWvMJW#3{;Di69;M#Aqv}A2X{,oNMJ^G_1DTtS4.20:k8!xdvkMZ$!F-xcdFCB[NIXUNmr0BhaGG09Tirp7)V.*LEM)O\r98#\x1e#  \x18>-%8bvGo#Upt9:]-sI*kLfq5oZ[PfPGC\\VP)j4o*Kb}rH}dT20p0mhOsRLBXXX@F_9{fD]@HL/G*&ozDE@-WU6I:cZoZ[Pe@GV]TFP|[APGCTYKrR8.J=FsP^X*lZWPt]]H^OKY1cd0ab/w6qm^4c;yqa3nYyNOOTU405Tp]/[iQ6sOq29qal2ENcj%PXgQ@@]ZSG31MP+R0Tp#uBb^epz6HR7]Db~JKP|S^VRvQ[ZG%B]fU(as&_x,R+R!h&znE;J_66LYS?ES^lieWVD;U9y=]Z699ynGMGTOoHRCTPGJ2MAVx3}Hp&Hl2ihbK3gHOEgHSRUbIHMEM#b/AW*}N)={wQ)sM6p_RZ^xZ__wm,-s_vtmgr6U+i7[#@E2TJiFAKiF]\\[lGFCKa8T;&^mLLYG;M(UlOt{TYQU/RaS=Tw]d3zg?c(IQ@4$U+!aFK/uYQVxnB7DBs@St^aE:=5Y.*tjj2Mwc2WoTSN&wwa?0:cj%}9ZCtTRZ&Ulawwogk\x0376-b\x112+,b&+1# .'&nq*u2,b;#E5ZLzAIIBKJ^:PO@%1eg[[N41732JHDz.yN&!*gp}8qGW%Wn)c=N(8Wa=-%Vw&3-&)pUBWDA@lKQ@WSDIvj6lzaZwMzebFPbKlEXIO\no[_CZ\nhOY^\nOROI_^ONWV0?S0K^]SZiB[gO:;kD*7W:r=dnstJ6a}Mo7uIDLDR[PB]S:F0qkJx8h@#TYgT3xogEgSRItIJJrTGORjIIVgxbPlk@EkTp)_[~JKPh^STkPrP]LRqCyXNmQKW_=6s#_tOxW[Sa{E;hUF;2te#yyqzqS=mr*?x:&..!%[zxz}H-bhm4d:au*adl7[KExeBYFi&_%Da=gcvEgm1;1BJSsT}v8]9_DHGB[IDJYOIQ1PJY!c4vw+Bx(.(/Ce@U@YMep:By/p6-AB=b{H8xxa4O?6hjKfMDKB@A//0Wj0Gmj@)$I?dA.s)n-|[HWST]}o5ZXq1A@sJqFW4mbpbN2z9G^KBK32b]HTg@cMWryFFzdfMKCfb8-iTWWZa:Tw{F8gz41Nf}eVwunL,.m:dBQ^C@QBU^SIQYI_CNgxYz.,rHDM,wJWOF0aagoAR4tYVHj4;w!j&(v0;uoROW^NDu(=c7eg#uz2]#:SWDJM&N}eCP_BAPCT_RHCHt#A$0J[qMa4bgzHwCBYuZW_[dSAWDREh8}KQxJsp_)(&bVWLsVQ@KBPFbUBJOBAOFvSDQBGFP`OHLDc@UUMDsof~`TUN}u315{bEQO~AEX^_B4Src#MNHqNPX,f=()Q%l*^-/&',?&0$TypKFPN#I@y0c+al_hid|YN[HMLz]H]CJEoG..dBbC?7::#M.dpm@GfsBsgPQhd!ZWVQni74snK}{MgZG_VM8W2!pGuJJBcHv9_X?;67=eAk_^EyZCDF=9[:@(jlGptFGW8;ZdX2'$*#QfKlYd}8&WOl)GIc*t:=uc&fDIIGDFNTl;0(lq2[Vsl3U0w},A*XMN@IBjwBAV(ui=)ZP-m[]OfQottuBOVFPLdjM$DPR$Y]B1kJ/xZ!L6EzMLLWV:;qSMf:vHXycXK_9Nq$3%]p](1!yp}xEK3KpEx&S/U_*gv6y6zGZBK5O[)(;SG&pTeIP%6lSNZMfr]ZPr]FG@w\\]XPa7JV%PMqdy,^OzAIIBK5NY/;qpo*TdpfUaYyeaq@uRDC\x17mXYR\x17`VEG\x17~YCREAV[-1fWWA_z1pqQr(qd5P-8FjMV}NrB=BFiH^N_D]YDBCIE)ky0N,c2F9ncsTlVdl1%!c0fp@T)*/@0Q0Ihuzm9-wCBY\x16uZW_[\x16dSAWDRE\x16R_EWTZSR~JKPxPkP}ZLKePQZmv&!uc)B@Po@GMo@[Z]jA@EMuBc@M#j*7d^Gg[VNREpB^p=hE!{zIuj8t!@]H2~I[M^H_S3E=C4+X2ro^$MMd{k%gQB@d_j_^UVHi#^4FY!Q$3:[27cLKAcLWVQfMLIAwyR3A/_tW[olbNHOlTM}?Z)(Jyx4MY/VOa;8(HpFWWJMDPHa_X}:6wX6Qn;RZpH{/:97>94}BjWwkb!^IJl%qX3LA|@MUoDMBOI^@KGWt6AZFQ4-%y}JG^Nuv[W,m5+k_^891uA)R^Xk_^EbKAKXCuoqtgyQ^Cur@kNz\x0401*e\x06)$,(e\x0c+! =e!,6$') !rORJCKz5{IP$pWP_D[aDtce9jpREXGTXK0/-2;^(5{o-i4f[*yeS^Y}TTAWF8UA2hF#[5tV%:Jev@QdPQJwJIIoviJFn4yOs.7GxEX@IW0rr]^(4Yp/*0h*rSb^zXCGKXSzKX^??Y8diJNy@^j/tHE]PMIAT{gHZBs7^37%[)+)vSFSPnFU.+/$j+-[),Hlj:skx@YRSbY^CDqpK:!KsG+{r4/$qPST@YAwI&bvrY6PiIc8wKlLa@VFWLUQLJKcenc**+jK!3p={ONU\x1ayV[SW\x1asT^_B\x1a_T[XV_^kVKSZ&D]ZsbYVx-&mq;LOj)2kDCGOhK^^FOxdmuk_^EG]UdGi_Nl[VO_IS(}Egr%0D^Mzg&~HYYDCJ^Vt(R6{$k9@$lg+Z\x08<=&i\x0c8< 9i\x0b,:=i,'(+%,-sOBZFQPA*7KNLt0$*K6M(X%{ONUjOHYR[I_t_BN`UT_))EvZRU2b&6k8gKM}?Ci.V[a*jaVUAV@[\x13gARZG@0Q,E=IIRcuCRuMOVgHOKFmSQRHNrV]=LgBJOZjMWFQUBO*EY1CT4b/DzL_]yBwBCHsDtKuKy*)MAif0T1Gb6J)MX_!Z-gdot%IBRaL,VWnJ,nfOS,aSkwbw)Cf_JIGNTg4AtN;,ixy7lpj-@\x7fJK@\x05uPWFMDV@\x05lKQ@WSDImPHDKJLAwJJQuDWQt3MSJ?\x0154/`\x07/`\x14/`\x02%34`\x1a/.%z`6&&x^1F{l]Z}VlVQT5_uO-4<#'6{D@Y)4m[cO,9xj;nS=56'&5%!MGt8rt,Cf_e!QNyMLW}IMQHz]KLmVQL6WcPj{YTTZY[SqE)biD[1?B}LYSgRATVGgARZG17m::MB^Eo[uA@[\x14ADSFUPQG\x14P]GUVXQPjV[CNSW_h_M[H^Ii_HLSY_`]KJ]pK_+z)74.t;Hi-{;qqFEQFPK\x03wQBJWPF2By-4xeX[[uVCT_Q0-EHd%;)ZiZxN__BELX;)X7bwr4638u%sA]vA@@[Z$K/G2*n]1M)=vIMPVWJ!M/,p&}ZC9=PuuxN_j^_DhGJBFqQ=7#)Z@LdL\x03wL\x03aFPW\x03lTMFG\x03yLMFk_^Ez_XIBKYOdOR^pEDOyLMFsVQ@KBPFjMWFQUBOqDEN{^YHCJXNbE_NY]JG6709-;024Jd?BiDnr5%(b_BZSUmrmF%Whx0@i]nR\x05((d1*(+'/! wa]ajcpwK^]SZU:q{!rT99COmh&6z@rn/7Tkrrv6$ZI!Vxp5iTIQXA^u+EW+[mkZO{&idPQJrDINqJhJGVEqy;U}nALD@`DAH^YBCH8+O]EXmYXC\x0ckC\x0cxC\x0cnI_X\x0cvCBIvBCXgBET_VDRyROCmXYRxN__BELXsH:EBedhHUs=cBoDMBKIHwx(fS]$p;3}oNXHYB[_BDEB*/I35h*BoZG]Xq0!Z9)rF$K+/516gD]Z}Z@QFBUX[-(&Y#:1hE_OC^H\x0ceBZEXI:nuvW\x0376-b\x160#+6xb0-..'&bmBEAInMXX@I~bksmYXCeSZSUBbWT7{^)EtCc9ae]@^VgBU@SVWaW@D[QWnQTYXOw3-sAAK+b.1aFnAFBJmN[[CJ}ahpnZ[@pQRUAX@bQ=u6xz9_(Pt|ST^|SHINyRSV^i^iC5dNBCILgWujH*R5n@OT%{F[CJH.x??t8{ZSFqibZG^FETVPZ4Yv{CzJek]LLQV_Ky!$]X[C+yd}BDCYyBbOGHNY~]LNH!baOET?g2yM^de}-RTsI{JJlT$/Fl-y+e.S+bAX_x_ETCGP]xj*E#sh_^^EDEW:jMAvD!lF{aMT(lj6].kru_z!SIbzNOTxWZRVrU_^CgOOfhGJBFfBGNX_DEN[afa\x1c()2}\x0e-43}83<?189\x7fH]ADNLYHI~YB_LJHilXKGOS]IuakUMAr(iTIQX7}lAnb!uY[ekeQPKaUQMTfAWPqJMPjo[HDLNVRbNvPrxWp+>=3:;?L{Go_J0z+,kNIXSZH^lZWW0!8Q$o[ZAmBOGC|KYO\\J]bVWLdLwLaFPWyLMFFSP^WNsBdiN:yYnQyL_JHYy_LDY_mB0Oa^[VW@DdG{.0/hqRyXN^OTMITRS^jPV,o[ZAiAzAlK]ZtA@KoH^YwBCHdCYH_[LAa@CDPIQr(Q][=$-puAEY@rUCD1gFU0SgzG_S\\][V`]]FbS@FT]Vv!?XjKs5ZNcsl06{a6!+e2ypK-z,q~F_GZ!$Jb6(9P+gEbGPEVSR\x17~YCREAV[uCRgSRItIJJ,dS&HwCBYuZW_[dSAWDREyORMYRJSn:OK{}O|GBGF^GWFYuwTiS{~JYU]SWb+Kdt$*liqwX9F8u1{PTp^lEXIO\niFKCG\nkFF`Zhh2#D*kv;ys#XjOXM^[ZvQKZMI^SsVATGBCoHRCTPGJbI@OFDEb@MMC@BJ\x156.<+y0*y?8*-<+pQ|W^QXZ[gtPLRV~IACXIjYBOXECBd~JKP|S^VR}JKKPQHCQ,IR9{&*wD7XMqTCVE@AmJPAVREHeS^Y}TTAWF6j=ccUDdXU]UF!&a__uZ]WuZA@Gp[Z_W{TYQUuQT]KLWV]wX_UwXCBErYX]UyMLWlJYQLlJYQL_\x1b0-!u\x19:6>01ouaVDRAWz]GVAER_eJMGeJQPW`KJOGxLMV\x19jIPWYeHmPcTFPCUx_ETCGP]XQZ4frz*$])4$[uA@[f[XX`FU]@TpRCsRDTRYSVYCDk_^EbKAKXCmhEK}RU_}RIHOxSRW_qFTBQGjMWFQUBOjEBHjE^_XoDE@HyVQ[yVMLK|WVS[p_XRp_DEBu^_ZReQPKpVEMPpVEMP~JKP|S^VRvQ[ZGqED_gQ\\[d_}_RCvULK\x05lKQ@WSDI=eJGOKvJG_ROKCzV^Y!Ar&M&F/D~JKPmPSSkM^VKdPQJwJIIqWDLQkIDDJIKCwHL8WxLMVkVUUmKXPMeRQERD_\x17bY^CDzNOToIZROnURO{ONUhUVVnH[SNbVWLqLOOwQBJWgTCGrCKVJGRC(k^_Tx_W^e1kO.rFB^G~YCREAV[{^VSFvQKZMI^SlWUVX]\x19jZKPIMfY]@FGZFuNN#ePVVTUd_XEBibWQQSRcX_BEIbEONS2F:Uf+Yc^C[RTA:%m/%nU]]V_P$Fd/jzG]FLAFOuE/VlJYQLK{WV^Q_~KXMO^\n~XKC^22)69%+ (2&0oL@BOfMFNJFPx_UTIbTCGXRTwAPeQPKgHEMI`FU]@Gw[ZR]ShOWNJDrDSWDSdEhCJELNOBp/~C^FOB.OcsltvNSMEtQFS@EDePQZ*5LcfwPaWZ]\x16yPPESBqSBu^_ZRDSXd@PFA2#oY69vSDQBGFpWBWdRAC`VAEZPVnSEDSJc0S&rgFP@QJSWJLMd\\ENO~EB_X4sXS[_SErWBW|^EAM^U|M^XyOBE\x0eaHH]KZwVMP_@)kS(p /&1<8880$=lHOHLH[DjDXiH^N_D]YDBCjHSW[HCj[HNrJSXYhSTIN~HEBfOOZL]QEXZxQQDRCIKZ[^XOB[KqVEZ^YP9iu_^HQNSHAAWwBQDFWvMJWeXNOXB)z&pvBCX\x17cEV^Ca]PHrYP_RTaWDFbYlYXShEq9^.}OPkdFWpFQUJ@Fi_NNST]InfrC^RdSRRIHxM^KIXyBEXlN_xNY]BHNePCVTEd_XEgSRInGMGTOpFWuBOVFPz[v]T[RPQbCnELCJHIlM`KBMDFG{GJRNYl^BrC^RjGDCJxYt_VYPRSqJMPW`EPEkDIAEcADDyR[H[YN_HqVL]J^Y[]j[H_TN^gQ|ABBlOZMFyO^^CDMY?`TPLUg@VQb@QqDBB@AaF]B,T+O5nM_I|M^XbTEEX_VBmPJQ[VQX|MJYLQWVqED_c@Y^~OMEOIK]|ZM{F[CJQ]C@Q_ABcTUUNOdzaGKCoH@IyO^^CDMYqNRHUHNOy[VVX[YQoRHSYTSZb_E^TY^WiKFFHKIA~HYYDCJ^\x1e(99$#*>bDH@lKCJ0&77*-$0{NODhOGNv@QQLKBVwUXXVUW_,$0**:7?qS^^PSQYsEXGSX@Yi_NNST]I~YDCVYTRsNTOEHOFjMPWBM@F333333\xc3?{YTTZY[SlNCCMNLDyU]ZdUF@pREXGPETbLPK@GMhI_X^CUlGHKELMa@CDPIQyOI^CEDfZW_WBm(?//<'=mLZ][FPeDG@TMUkJINZC[NNWT_OMkL_@DCJzTHr^UTrSPWCZBtVCV[XPhIJMY@XsRQVB[C`ABEQHP\x16+((! dhJ_JGDLoNMJ^G_b^DSWREeCPXEBcTUUNOhWR_^IbEPEDB;<:!&/<;=&!(90-2>+gPQQJK:=; '.' &=:3lW__T]wQBJWPpVEMPWvILA@W!v:9(kiRZZQXmZ[[@AZ][@GNi^SJZLoEIHr.pLAIAWqTG^PGZAYVQF`_ZWVAcX{NODxONNUTXMN@IqLQI@wJWOFqDENXBWTZSrORJC`TGKC|S^VRkVKSZATWYPuHUMDYLOAH{GJBJ`]@XQOZYW^pLAIAuZW_[<?/; pMPHAVUDRK=>/9 N[XV_xEX@IpM[ZM}JG^Nj,%8jlQLT]30!7.vQDQVupper-1<$\x15\xf4_\x01rH[DiHr\x1f\xc6tu\xaexAW_nK^K#6!9\x1f\x03\xa4\x81\x9a\x93\x81AT\xd0\xc6}cD_@\xa7\xa3DDbE^Ay8>\x00a\xc0NO\xec\x82\x87PA\xb9\x06\x0b+\x80\x81\x01\xe3\xdca\x06E@@Fel~\xbe\x10\xc1\xc8\x1fO\\w\x82o\x90\x84'M\xe0\xb2W\x13}x\xaf9-/gmBNFbHDEwSThLKncnyULpEFmX[dHQ4=6{_X{WNtPWoUgBK@bXjwBAzWbOaLdpsgv[p]hEgJcNJ\xfa\x04{\x14\x1ck9sAXi\x00N\x01\x0eT_\x0f\x17\x11\r?D\x1f\x154!V)\xa0d]s\x13\x07[.U\x1dlf8\x12BZ\toQw#1/\x0bE\x08"))
local onUnit
local js = 3
repeat
    if js * 25264171 + 5 + 3 >= js * 25264171 + 5 + 3 + 5 then
        local AnimeBattleRNG_Auto = getgenv().AnimeBattleRNG_Auto
        onUnit = getgenv
    else
        onUnit = getgenv().AnimeBattleRNG_Auto
    end
    js = (js + 4) % 8
until fn797((js * 1 + 2) % 8, 527583337)
if onUnit then
    js = 3
    repeat
        ju = (vector.create((js * 5 + 2) % 11 + 1, (js * 3 + 6) % 13 + 1, (js * 5 + 7) % 17 + 1))
        onStatus = (vector.create((js * 4 + 5) % 11 + 1, (js * 8 + 11) % 13 + 1, (js * 13 + 1) % 17 + 1))
        if vector.dot(ju, onStatus) * vector.dot(ju, onStatus) >= vector.dot(ju, ju) * vector.dot(onStatus, onStatus) + 1 then
            onUnit = getgenv().AnimeBattleRNG_Auto.Stop
        else
            onUnit = getgenv().AnimeBattleRNG_Auto.Stop
        end
        js = (js + 1) % 4
    until fn797((js * 1 + 0) % 4, 544454170)
end
if onUnit then
    js = 6
    repeat
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(js, 13), string.byte(tostring(js))), 20), 3195956325), 533250320), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(js, 13), string.byte(tostring(js))), 20), 1099010970), 1145349031))), 533250320), 1145349031) == bit32.rrotate(bit32.bxor(bit32.lrotate(js, 13), string.byte(tostring(js))), 20) then
            getgenv().AnimeBattleRNG_Auto.Stop()
        else
            getgenv().AnimeBattleRNG_Auto.Stop()
        end
        js = (js + 5) % 8
    until fn797((js * 5 + 1) % 8, 544454170)
end
js = game:GetService("Players")
CollectionService = game:GetService("CollectionService")
ReplicatedStorage = game:GetService("ReplicatedStorage")
Workspace = game:GetService("Workspace")
LocalPlayer = js.LocalPlayer
iX = "https://discord.gg/f3dJhDgyTq"
iT = nil
iP = function(q, r, t)
    if iT and iT.Notify then
        pcall(function()
            local jU = "Title"
            local jV = "Content"
            local jW = "Duration"
            local jX = t or 5
            iT.Notify(iT, { [jU] = q, [jV] = r, [jW] = jX })
        end)
    end
end
js = function(x)
    local j1_1
    local j0 = {
        function()
            return game:HttpGet(x)
        end,
        function()
            return game:HttpGetAsync(x, true)
        end
    }
    local j0_1
    for i, v in ipairs(j0) do
        j0_1, j1_1 = pcall(v)
        local j2 = j0_1 and (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_3 = bit32.bxor(hb, he)
                hb = bit32.band(hb_3 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_4 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_4 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(j1_1), 6, 2175009567) and not (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_1 = bit32.bxor(hb, he)
                hb = bit32.band(hb_1 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_2 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_2 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(j1_1, 0, 5381)
        if j2 then
            return j1_1
        end
    end
    error("Failed to download UI library source")
end
i5 = function(F)
    local ka = {
        rawget(getgenv(), "setclipboard"),
        rawget(getgenv(), "toclipboard"),
        rawget(getgenv(), "copyclipboard"),
        rawget(getgenv(), "Clipboard")
    }
    for i, v in ipairs(ka) do
        if (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_5 = bit32.bxor(hb, he)
                hb = bit32.band(hb_5 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_6 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_6 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(v), 8, 2851454103) then
            local ka_1 = pcall(v, F)
            if ka_1 then
                return true
            end
        end
    end
    return false
end
onUnit = js("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
iT = loadstring(onUnit)()
js = iT:Window({
    Title = "Ouroboros Hub",
    SubTitle = "Lust",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 460),
    Resize = true,
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightShift
})
onUnit = {
    Main = js:Tab({ Title = "Main", Icon = "play" }),
    Farming = js:Tab({ Title = "Farming", Icon = "swords" }),
    Rewards = js:Tab({ Title = "Rewards", Icon = "gift" }),
    Traits = js:Tab({ Title = "Traits", Icon = "sparkles" }),
    Settings = js:Tab({ Title = "Settings", Icon = "settings" })
}
ju = function(O)
    O.Button(O, {
        Title = "Join Discord for More Keyless Scripts",
        Description = "Copies the Discord invite to your clipboard",
        Callback = function()
            local ki = i5(iX)
            if ki then
                iP("Discord Invite", "Copied invite to clipboard.", 4)
            else
                iP("Discord Invite", "Clipboard is unavailable on this executor.\nInvite: https://discord.gg/f3dJhDgyTq", 8)
            end
        end
    })
end
for k, v in pairs(onUnit) do
    ju(v)
end
onStatus = { Title = "Status", Content = "Idle" }
local Main = onUnit.Main
iB = Main:Paragraph("Status", onStatus)
onStatus = { Title = "Zone Status", Content = "Scanning zone ownership..." }
local Main = onUnit.Main
iv = Main:Paragraph("ZoneInfo", onStatus)
i3 = {}
jh = {}
jp = {
    AutoSpin = false,
    AutoRollTrait = false,
    TargetTrait = "",
    TargetUnit = "",
    AutoPurchaseAvailableUpgrades = false,
    AutoClaimRewards = false,
    AutoClaimDaily = false,
    AutoWalkToMobs = false,
    AutoClaimIndex = false,
    AutoEquipBestUnit = false,
    AutoPurchaseNextZone = false,
    AutoGoToBestZone = false,
    AutoHakari = false,
    WalkOffset = 4,
    WalkInterval = 0.2,
    RewardInterval = 3,
    UpgradeInterval = 2,
    SpinInterval = 0.15,
    TraitRollInterval = 0.8,
    EquipInterval = 5,
    DailyInterval = 20,
    IndexInterval = 5,
    ZonePurchaseInterval = 4,
    BestZoneInterval = 8,
    HakariInterval = 1
}
ja = { [1] = true, [2] = {} }
i6 = {}
iY = nil
iV = nil
iR = nil
iM = nil
ix = nil
iY = function(ai)
    if iB and iB.SetValue then
        iB.SetValue(iB, ai)
    end
end
iV = function(ak, al)
    local km = iT.Options and iT.Options[ak]
    local kn = km
    if km then
        km = kn.Value ~= nil
    end
    if km then
        return kn.Value
    end
    return al
end
iR = function(ap, ...)
    local kq_1
    local kp = not ap or not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_7 = bit32.bxor(hb, he)
            hb = bit32.band(hb_7 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_8 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_8 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(typeof(ap), 8, 1471340621) or not ap:IsA("RemoteFunction")
    local kp_1
    if kp then
        return false, "RemoteFunction unavailable"
    end
    kq_1, kp_1 = pcall(ap.InvokeServer, ap, ...)
    return kq_1, kp_1
end
iM = function()
    iY("Still initializing. Try again in a moment.")
end
local iH = iM
local iF = iM
ix = iM
local jr = iM
local jm = iM
onStatus = { Title = "Auto Spin", Default = jp.AutoSpin }
local Main = onUnit.Main
local jx = Main:Toggle("AutoSpin", onStatus)
jx.OnChanged(jx, function(au)
    au = iV("AutoSpin", au)
    jp.AutoSpin = au
    iR(jh.SetAutoRoll, au)
    local kt = au and "Auto Spin enabled" or "Auto Spin disabled"
    iY(kt)
end)
onStatus = { Title = "Auto Equip Best Unit", Default = jp.AutoEquipBestUnit }
local Main = onUnit.Main
jx = Main:Toggle("AutoEquipBestUnit", onStatus)
jx.OnChanged(jx, function(ay)
    ay = iV("AutoEquipBestUnit", ay)
    jp.AutoEquipBestUnit = ay
    local kx = ay and "Auto Equip Best enabled" or "Auto Equip Best disabled"
    iY(kx)
end)
onStatus = { Title = "Auto Walk To Mobs", Default = jp.AutoWalkToMobs }
local Farming = onUnit.Farming
jx = Farming:Toggle("AutoWalkToMobs", onStatus)
jx.OnChanged(jx, function(aC)
    aC = iV("AutoWalkToMobs", aC)
    jp.AutoWalkToMobs = aC
    local kA = aC and "Auto Walk To Mobs enabled" or "Auto Walk To Mobs disabled"
    iY(kA)
end)
onStatus = { Title = "Auto Purchase Available Upgrades", Default = jp.AutoPurchaseAvailableUpgrades }
local Farming = onUnit.Farming
jx = Farming:Toggle("AutoPurchaseAvailableUpgrades", onStatus)
jx.OnChanged(jx, function(aG)
    aG = iV("AutoPurchaseAvailableUpgrades", aG)
    jp.AutoPurchaseAvailableUpgrades = aG
    local kD = aG and "Auto upgrades enabled" or "Auto upgrades disabled"
    iY(kD)
end)
onStatus = { Title = "Auto Purchase Next Zone", Default = jp.AutoPurchaseNextZone }
local Farming = onUnit.Farming
jx = Farming:Toggle("AutoPurchaseNextZone", onStatus)
jx.OnChanged(jx, function(aK)
    aK = iV("AutoPurchaseNextZone", aK)
    jp.AutoPurchaseNextZone = aK
    local kG = aK and "Auto Purchase Next Zone enabled" or "Auto Purchase Next Zone disabled"
    iY(kG)
end)
onStatus = { Title = "Auto Go To Best Zone", Default = jp.AutoGoToBestZone }
local Farming = onUnit.Farming
jx = Farming:Toggle("AutoGoToBestZone", onStatus)
jx.OnChanged(jx, function(aO)
    aO = iV("AutoGoToBestZone", aO)
    jp.AutoGoToBestZone = aO
    local kJ = aO and "Auto Go To Best Zone enabled" or "Auto Go To Best Zone disabled"
    iY(kJ)
end)
onStatus = { Title = "Auto Hakari", Default = jp.AutoHakari }
local Farming = onUnit.Farming
jx = Farming:Toggle("AutoHakari", onStatus)
jx.OnChanged(jx, function(aS)
    aS = iV("AutoHakari", aS)
    jp.AutoHakari = aS
    local kM = aS and "Auto Hakari enabled" or "Auto Hakari disabled"
    iY(kM)
end)
onStatus = { Title = "Auto Claim Rewards", Default = jp.AutoClaimRewards }
local Rewards = onUnit.Rewards
jx = Rewards:Toggle("AutoClaimRewards", onStatus)
jx.OnChanged(jx, function(aW)
    aW = iV("AutoClaimRewards", aW)
    jp.AutoClaimRewards = aW
    local kP = aW and "Auto Claim Rewards enabled" or "Auto Claim Rewards disabled"
    iY(kP)
end)
onStatus = { Title = "Auto Claim Daily", Default = jp.AutoClaimDaily }
local Rewards = onUnit.Rewards
jx = Rewards:Toggle("AutoClaimDaily", onStatus)
jx.OnChanged(jx, function(a_)
    a_ = iV("AutoClaimDaily", a_)
    jp.AutoClaimDaily = a_
    local kS = a_ and "Auto Claim Daily enabled" or "Auto Claim Daily disabled"
    iY(kS)
end)
onStatus = { Title = "Auto Claim Index", Default = jp.AutoClaimIndex }
local Rewards = onUnit.Rewards
jx = Rewards:Toggle("AutoClaimIndex", onStatus)
jx.OnChanged(jx, function(a3)
    a3 = iV("AutoClaimIndex", a3)
    jp.AutoClaimIndex = a3
    local kV = a3 and "Auto Claim Index enabled" or "Auto Claim Index disabled"
    iY(kV)
end)
it = nil
i9 = nil
it = function()
    local kZ_1
    local kY_1
    local kX_1, kX_2
    kX_1, kY_1 = pcall(require, ReplicatedStorage.Packages.Replica)
    if not kX_1 then
        return nil
    end
    kX_2, kZ_1 = pcall(debug.getupvalue, kY_1.FromId, 1)
    local kY_2 = not kX_2 or not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_15 = bit32.bxor(hb, he)
            hb = bit32.band(hb_15 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_16 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_16 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(kZ_1), 5, 248602996)
    if kY_2 then
        return nil
    end
    for k, v in pairs(kZ_1) do
        local kX_3 = (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_13 = bit32.bxor(hb, he)
                hb = bit32.band(hb_13 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_14 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_14 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(v), 5, 248602996) and (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_11 = bit32.bxor(hb, he)
                hb = bit32.band(hb_11 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_12 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_12 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(v.Data), 5, 248602996) and (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_9 = bit32.bxor(hb, he)
                hb = bit32.band(hb_9 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_10 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_10 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(v.Data.OwnedUnits), 5, 248602996)
        if kX_3 then
            return v
        end
    end
    return nil
end
local function jn()
    local k7 = it()
    local k8 = {}
    if k7 then
        for k in pairs(k7.Data.OwnedUnits) do
            if (function(g8, g9, ha)
                if type(g8) ~= "string" then
                    return false
                end
                if #g8 ~= g9 then
                    return false
                end
                local hb = 5381
                local hc = buffer.fromstring(g8)
                local hd = 0
                while hd <= g9 - 4 do
                    local he = buffer.readu32(hc, hd)
                    local hb_17 = bit32.bxor(hb, he)
                    hb = bit32.band(hb_17 * 33, 4294967295)
                    hd = hd + 4
                end
                while hd < g9 do
                    local hf = buffer.readu8(hc, hd)
                    local hb_18 = bit32.bxor(hb, hf)
                    hb = bit32.band(hb_18 * 33, 4294967295)
                    hd = hd + 1
                end
                return hb == ha
            end)(type(k), 6, 2175009567) then
                k8[#k8 + 1] = k
            end
        end
        table.sort(k8)
    end
    return k8
end
local function jc()
    local lg_1
    local lf_1
    local le = {}
    lf_1, lg_1 = pcall(require, ReplicatedStorage.GameInfo.TraitsConfig)
    local lh = lf_1 and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_23 = bit32.bxor(hb, he)
            hb = bit32.band(hb_23 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_24 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_24 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(lg_1), 5, 248602996) and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_21 = bit32.bxor(hb, he)
            hb = bit32.band(hb_21 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_22 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_22 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(lg_1.ByName), 5, 248602996)
    if lh then
        for k in pairs(lg_1.ByName) do
            if (function(g8, g9, ha)
                if type(g8) ~= "string" then
                    return false
                end
                if #g8 ~= g9 then
                    return false
                end
                local hb = 5381
                local hc = buffer.fromstring(g8)
                local hd = 0
                while hd <= g9 - 4 do
                    local he = buffer.readu32(hc, hd)
                    local hb_19 = bit32.bxor(hb, he)
                    hb = bit32.band(hb_19 * 33, 4294967295)
                    hd = hd + 4
                end
                while hd < g9 do
                    local hf = buffer.readu8(hc, hd)
                    local hb_20 = bit32.bxor(hb, hf)
                    hb = bit32.band(hb_20 * 33, 4294967295)
                    hd = hd + 1
                end
                return hb == ha
            end)(type(k), 6, 2175009567) then
                le[#le + 1] = k
            end
        end
        table.sort(le)
    end
    return le
end
i9 = function(br, bs)
    local TaggedUnits = br.Data.TaggedUnits
    local lo = TaggedUnits and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_25 = bit32.bxor(hb, he)
            hb = bit32.band(hb_25 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_26 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_26 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(TaggedUnits[bs]), 5, 248602996)
    if lo then
        for k in pairs(TaggedUnits[bs]) do
            return k
        end
    end
    return "Plain"
end
i7 = function(bx, by, bz, bA)
    local TaggedUnits = bx.Data.TaggedUnits
    local lv = TaggedUnits and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_31 = bit32.bxor(hb, he)
            hb = bit32.band(hb_31 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_32 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_32 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(TaggedUnits[by]), 5, 248602996) and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_29 = bit32.bxor(hb, he)
            hb = bit32.band(hb_29 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_30 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_30 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(TaggedUnits[by][bz]), 5, 248602996)
    if lv then
        local lv_1 = TaggedUnits[by][bz][bA]
        local lu_1 = (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_27 = bit32.bxor(hb, he)
                hb = bit32.band(hb_27 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_28 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_28 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(lv_1), 6, 472614556) and lv_1 > 0
        return lu_1
    end
    return false
end
iw = function(bG)
    jp.AutoRollTrait = false
    if iT.Options and iT.Options.AutoRollTrait then
        pcall(function()
            local AutoRollTrait = iT.Options.AutoRollTrait
            AutoRollTrait.SetValue(AutoRollTrait, false)
        end)
    end
    if bG then
        iY(bG)
    end
end
ju = function()
    local TargetUnit = jp.TargetUnit
    local TargetTrait = jp.TargetTrait
    local lB = not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_47 = bit32.bxor(hb, he)
            hb = bit32.band(hb_47 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_48 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_48 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(TargetUnit), 6, 2175009567) or not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_45 = bit32.bxor(hb, he)
            hb = bit32.band(hb_45 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_46 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_46 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(TargetTrait), 6, 2175009567) or (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_43 = bit32.bxor(hb, he)
            hb = bit32.band(hb_43 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_44 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_44 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(TargetUnit, 0, 5381) or (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_41 = bit32.bxor(hb, he)
            hb = bit32.band(hb_41 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_42 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_42 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(TargetTrait, 0, 5381)
    if lB then
        return
    end
    local lB_1 = (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_39 = bit32.bxor(hb, he)
            hb = bit32.band(hb_39 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_40 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_40 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(TargetUnit, 13, 2110181460) or (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_37 = bit32.bxor(hb, he)
            hb = bit32.band(hb_37 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_38 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_38 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(TargetUnit, 14, 662999151) or (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_35 = bit32.bxor(hb, he)
            hb = bit32.band(hb_35 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_36 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_36 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(TargetTrait, 14, 1330561121) or (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_33 = bit32.bxor(hb, he)
            hb = bit32.band(hb_33 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_34 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_34 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(TargetTrait, 15, 23065621)
    if lB_1 then
        return
    end
    local lB_2 = it()
    if not lB_2 then
        iY("Auto Trait: data not ready")
        return
    end
    if lB_2.Data.OwnedUnits[TargetUnit] == nil then
        iw("Auto Trait: " .. TargetUnit .. " not in inventory")
        return
    end
    local lC = i9(lB_2, TargetUnit)
    if i7(lB_2, TargetUnit, lC, TargetTrait) then
        iw("Auto Trait: rolled " .. TargetTrait .. " on " .. TargetUnit)
        iP("Auto Trait", "Rolled " .. TargetTrait .. " on " .. TargetUnit, 6)
        return
    end
    iR(jh.RollTrait, TargetUnit, lC, "")
    iY("Auto Trait: rolling " .. TargetUnit .. " for " .. TargetTrait)
end
onStatus = jn()
if fn797(#onStatus, 544454170) then
    onStatus = { "Refresh Units" }
end
local jw_12 = jc()
if fn797(#jw_12, 544454170) then
    jw_12 = { "Refresh Traits" }
end
iy, jb, jx, jC, jy, jF, jD, jA, jG, jH, jE, jB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jz = 28
repeat
    local jI = (jz * 3 + 6) % 13 + 1
    if jI <= 7 then
        if jI <= 4 then
            if jI <= 2 then
                if jI <= 1 then
                    if (jz * 2 + 3) * 16 % 3 == ((jz * 2 + 3) * 16 + 3) % 3 then
                        iy.OnChanged(iy, fn1103)
                        local jK_1 = { Title = "Target Trait", Values = jw_12, Multi = false, Default = 1 }
                        local Traits = onUnit.Traits
                        jb = Traits:Dropdown("AutoTraitTrait", jK_1)
                    else
                        jb.OnChanged(jb, fn1103)
                        local Traits = jw_12.Traits
                        onUnit = Traits:Dropdown("Target Trait", Traits)
                    end
                    jz = (jz + 61) % 104
                else
                    local jJ_2 = (vector.create((jz * 3 + 2) % 11 + 1, (jz * 11 + 8) % 13 + 1, (jz * 9 + 2) % 17 + 1))
                    local jK_2 = (vector.create((jz * 3 + 7) % 11 + 1, (jz * 1 + 1) % 13 + 1, (jz * 11 + 14) % 17 + 1))
                    local jL_3 = (vector.create((jz * 7 + 8) % 11 + 1, (jz * 11 + 10) % 13 + 1, (jz * 3 + 5) % 17 + 1))
                    local jM = (vector.create((jz * 4 + 6) % 11 + 1, (jz * 2 + 13) % 13 + 1, (jz * 6 + 2) % 17 + 1))
                    if vector.dot(vector.cross(jJ_2, jK_2), (vector.cross(jL_3, jM))) == vector.dot(jJ_2, jL_3) * vector.dot(jK_2, jM) - vector.dot(jJ_2, jM) * vector.dot(jK_2, jL_3) + 2 then
                        onStatus.OnChanged(onStatus, onStatus)
                        jx.TargetUnit = jb(jb, "AutoTraitUnit")
                        jx.TargetTrait = jb(jx, jb)
                        local Traits2 = jp.Traits
                        Traits2.Button(Traits2, jp)
                        local Traits = jp.Traits
                        iV = Traits:Toggle("Title", "AutoRollTrait")
                    else
                        jb.OnChanged(jb, function(bT)
                            jp.TargetTrait = bT
                        end)
                        jp.TargetUnit = iV("AutoTraitUnit", onStatus[1])
                        jp.TargetTrait = iV("AutoTraitTrait", jw_12[1])
                        local jJ_4 = {
                            Title = "Refresh Units & Traits",
                            Callback = function()
                                local lE = jn()
                                if fn797(#lE, 544454170) then
                                    lE = { "No units found" }
                                end
                                iy.SetValues(iy, lE)
                                local lE_1 = jc()
                                if fn797(#lE_1, 544454170) then
                                    lE_1 = { "No traits found" }
                                end
                                jb.SetValues(jb, lE_1)
                                iY("Refreshed units and traits")
                            end
                        }
                        local Traits2 = onUnit.Traits
                        Traits2.Button(Traits2, jJ_4)
                        local jK_4 = { Title = "Auto Roll Trait", Default = jp.AutoRollTrait }
                        local Traits = onUnit.Traits
                        jx = Traits:Toggle("AutoRollTrait", jK_4)
                    end
                    jz = (jz + 35) % 104
                end
            elseif jI <= 3 then
                if jz * 4077689 + 4 + 4 <= jz * 4077689 + 4 + 4 + 1 then
                    jx.OnChanged(jx, function(bX)
                        jp.AutoRollTrait = bX
                        if bX then
                            iR(jh.SetSkipAnim, true)
                        end
                        local lH = bX and "Auto Roll Trait enabled" or "Auto Roll Trait disabled"
                        iY(lH)
                    end)
                    local jK_5 = {
                        Title = "Walk Offset",
                        Description = "Distance to stay in front of enemies",
                        Default = jp.WalkOffset,
                        Min = 2,
                        Max = 12,
                        Rounding = 1
                    }
                    local Settings = onUnit.Settings
                    jC = Settings:Slider("WalkOffset", jK_5)
                else
                    onUnit.OnChanged(onUnit, onUnit)
                    local Settings = jC.Settings
                    jp = Settings:Slider("Description", "Default")
                end
                jz = (jz + 87) % 104
            else
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jz, 4), string.byte(tostring(jE))), 2), 588280781), 1402017949), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jz, 4), string.byte(tostring(jE))), 2), 3706686514), 3857641791))), 1402017949), 3857641791) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(jz, 4), string.byte(tostring(jE))), 2) then
                    jp.OnChanged(jp, fn157)
                    local Settings = jC.Settings
                    onUnit = Settings:Slider(1, "Spin Interval")
                else
                    jC.OnChanged(jC, fn157)
                    local jK_7 = {
                        Title = "Spin Interval",
                        Description = "Lower is faster",
                        Default = jp.SpinInterval,
                        Min = 0.1,
                        Max = 2,
                        Rounding = 1
                    }
                    local Settings = onUnit.Settings
                    jy = Settings:Slider("SpinInterval", jK_7)
                end
                jz = (jz + 74) % 104
            end
        elseif jI <= 6 then
            if jI <= 5 then
                local jJ_5 = (vector.create((jz * 6 + 5) % 11 + 1, (jz * 6 + 11) % 13 + 1, (jz * 15 + 13) % 17 + 1))
                local jK_8 = (vector.create((jz * 6 + 9) % 11 + 1, (jz * 2 + 5) % 13 + 1, (jz * 9 + 15) % 17 + 1))
                local jL_9 = (vector.create((jz * 5 + 8) % 11 + 1, (jz * 11 + 12) % 13 + 1, (jz * 2 + 16) % 17 + 1))
                if vector.dot(vector.cross(jJ_5, jK_8), jL_9) == vector.dot(vector.cross(jK_8, jL_9), jJ_5) then
                    jy.OnChanged(jy, function(b2)
                        jp.SpinInterval = iV("SpinInterval", b2)
                    end)
                    local jK_9 = { Title = "Upgrade Interval", Default = jp.UpgradeInterval, Min = 1, Max = 10, Rounding = 1 }
                    local Settings = onUnit.Settings
                    jF = Settings:Slider("UpgradeInterval", jK_9)
                else
                    jF.OnChanged(jF, jF)
                    local Settings = jy.Settings
                    jp = Settings:Slider("Title", "Max")
                end
                jz = (jz + 22) % 104
            else
                local jK_10 = ({ "egnodwnxl", "yii", "yqrcbq", "nkkm", "lpvkqgshrhd", "pofroevyvb", "xpz" })[jz % 7 + 1]
                local jJ_7 = jK_10:len()
                local jL_12 = (jK_10:gsub("(.)", "%1%1", jz % 3 % 2 + 1))
                if jJ_7 >= jL_12:len() then
                    jD.OnChanged(jD, jD)
                    local Settings = jp.Settings
                    onUnit = Settings:Slider(Settings, 15)
                else
                    jF.OnChanged(jF, function(b4)
                        jp.UpgradeInterval = iV("UpgradeInterval", b4)
                    end)
                    local jK_12 = { Title = "Reward Interval", Default = jp.RewardInterval, Min = 1, Max = 15, Rounding = 1 }
                    local Settings = onUnit.Settings
                    jD = Settings:Slider("RewardInterval", jK_12)
                end
                jz = (jz + 35) % 104
            end
        else
            if jz * 107076835 + 7 + 5 <= jz * 107076835 + 7 + 5 + 1 then
                jD.OnChanged(jD, function(b6)
                    jp.RewardInterval = iV("RewardInterval", b6)
                end)
                local jK_13 = {
                    Title = "Zone Purchase Interval",
                    Default = jp.ZonePurchaseInterval,
                    Min = 1,
                    Max = 20,
                    Rounding = 1
                }
                local Settings = onUnit.Settings
                jA = Settings:Slider("ZonePurchaseInterval", jK_13)
            else
                jA.OnChanged(jA, jA)
                local ZonePurchaseInterval = jD.ZonePurchaseInterval
                local Settings = jp.Settings
                onUnit = Settings:Slider("Rounding", ZonePurchaseInterval)
            end
            jz = (jz + 9) % 104
        end
    elseif jI <= 10 then
        if jI <= 9 then
            if jI <= 8 then
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jz, 16), string.byte(tostring(jD))), 19), 2943909139), 3499690162), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jz, 16), string.byte(tostring(jD))), 19), 1351058156), 2545144855))), 3499690162), 2545144855) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(jz, 16), string.byte(tostring(jD))), 19) then
                    jG.OnChanged(jG, fn85)
                    local jJ_10 = {
                        Title = "Best Zone Warp Interval",
                        Min = 3,
                        Rounding = 1,
                        Max = 30,
                        Default = jA.BestZoneInterval
                    }
                    local Settings = jp.Settings
                    onUnit = Settings:Slider(jJ_10, 30)
                else
                    jA.OnChanged(jA, fn85)
                    local jK_15 = {
                        Title = "Best Zone Warp Interval",
                        Default = jp.BestZoneInterval,
                        Min = 3,
                        Max = 30,
                        Rounding = 1
                    }
                    local Settings = onUnit.Settings
                    jG = Settings:Slider("BestZoneInterval", jK_15)
                end
                jz = (jz + 61) % 104
            else
                if (jz * 1 + 5) * 17 % 4 == ((jz * 1 + 5) * 17 + 10) % 4 then
                    jH.OnChanged(jH, fn1141)
                    local jK_16 = {
                        Description = "Warps once to your highest owned zone",
                        Callback = fn290,
                        Title = "Go To Best Owned Zone"
                    }
                    local Settings6 = jG.Settings
                    Settings6.Button(Settings6, jG)
                    local Settings5 = jG.Settings
                    Settings5.Button(Settings5, "Title")
                    local Settings4 = jG.Settings
                    Settings4.Button(Settings4, jG)
                    local Settings3 = jG.Settings
                    Settings3.Button(Settings3, jG)
                    local Settings2 = jG.Settings
                    Settings2.Button(Settings2, jK_16)
                    local Settings = jG.Settings
                    onUnit = Settings:Section(Settings4)
                else
                    jG.OnChanged(jG, fn1141)
                    local jJ_12 = {
                        Title = "Go To Best Owned Zone",
                        Description = "Warps once to your highest owned zone",
                        Callback = fn290
                    }
                    local Settings6 = onUnit.Settings
                    Settings6.Button(Settings6, jJ_12)
                    local jJ_13 = {
                        Title = "Purchase Next Zone",
                        Description = "Attempts to buy the next locked zone once",
                        Callback = function()
                            iH()
                        end
                    }
                    local Settings5 = onUnit.Settings
                    Settings5.Button(Settings5, jJ_13)
                    local jJ_14 = {
                        Title = "Force Equip Best",
                        Description = "Runs Equip Best once",
                        Callback = function()
                            iF()
                            iY("Force Equip Best executed")
                        end
                    }
                    local Settings4 = onUnit.Settings
                    Settings4.Button(Settings4, jJ_14)
                    local jJ_15 = {
                        Title = "Force Claim All",
                        Description = "Runs reward, daily, and index claim once",
                        Callback = function()
                            ix()
                            jr()
                            jm()
                            iY("Force Claim All executed")
                        end
                    }
                    local Settings3 = onUnit.Settings
                    Settings3.Button(Settings3, jJ_15)
                    local jJ_16 = {
                        Title = "Unload Script",
                        Description = "Stops all loops and unloads the UI",
                        Callback = function()
                            local lJ = getgenv().AnimeBattleRNG_Auto and getgenv().AnimeBattleRNG_Auto.Stop
                            if lJ then
                                getgenv().AnimeBattleRNG_Auto.Stop()
                            end
                            if iT.Destroy then
                                iT.Destroy(iT)
                            end
                        end
                    }
                    local Settings2 = onUnit.Settings
                    Settings2.Button(Settings2, jJ_16)
                    local Settings = onUnit.Settings
                    jH = Settings:Section("Interface")
                end
                jz = (jz + 48) % 104
            end
        else
            local jJ_17 = {
                "fqaaris",
                "nwvfgzempjcs",
                "faj",
                "yxnwhungg",
                "jatnvxkqaa",
                "ttmneuw",
                "sshwxdjaisgq",
                "cehtfm",
                "jgfoptwsaabo",
                "yemmb",
                "uxsta",
                "krgng",
                "zbxdzif",
                "gbrnf"
            }
            if jJ_17[(jz * 74 + 75) % 14 + 1] <= jJ_17[(jz * 74 + 75) % 14 + 1] then
                jE = jH:Dropdown("Theme", { Title = "Theme", Values = iT.Themes, Default = iT.Theme })
            else
                iT = jE:Dropdown(jH.Theme, "Theme")
            end
            jz = (jz + 61) % 104
        end
    elseif jI <= 12 then
        if jI <= 11 then
            jI = { "xnp", "dryp", "rznttdia", "dysbkzzb", "feuaz", "tbbobbfn", "aivr", "bhcxnwz" }
            if jI[(jz * 90 + 106) % 8 + 1] <= jI[(jz * 90 + 106) % 8 + 1] then
                jE.OnChanged(jE, fn617)
                jB = jH:Toggle("Transparency", { Title = "Transparency", Default = iT.Transparency })
            else
                jH.OnChanged(jH, fn617)
                iT = jE:Toggle(jH, "Title")
            end
            jz = (jz + 35) % 104
        else
            jI = { "alrdl", "qljjkadp", "cqvxtzqf", "mkgwnuhztm", "coqrcmsp", "lynv", "gvsxcrlxqut", "djppphnw" }
            local jJ_18 = jI[jz % 8 + 1]
            jI = jJ_18:len()
            local jK_24 = (jJ_18:gsub("(.)", "%1%1", jz % 3 % 2 + 1))
            if jI >= jK_24:len() then
                jB.OnChanged(jB, jB)
            else
                jB.OnChanged(jB, function(cg)
                    iT.ToggleTransparency(iT, iV("Transparency", cg))
                end)
            end
            jz = (jz + 48) % 104
        end
    else
        jI = {
            "kaeuppghsr",
            "fgnjnloncso",
            "vypgjnnnfrk",
            "odwtes",
            "gbczohyto",
            "obzxotroa",
            "jsp",
            "lmjcwajh",
            "asbucbsra",
            "tqzrvuf",
            "pcgrzkgdsldh",
            "nkkck",
            "izyyqrn"
        }
        if jI[(jz * 5 + 73) % 13 + 1] <= jI[(jz * 5 + 73) % 13 + 1] then
            local jJ_19 = { Title = "Unit", Values = onStatus, Multi = false, Default = 1 }
            local Traits = onUnit.Traits
            iy = Traits:Dropdown("AutoTraitUnit", jJ_19)
        else
            local Traits = iy.Traits
            onStatus = Traits:Dropdown("Unit", onUnit)
        end
        jz = (jz + 100) % 104
    end
until fn797((jz * 31 + 10) % 104, 2188860495)
onUnit = "MenuKeybind"
onStatus = "Title"
local jw_13 = "Minimize Bind"
jx = "Default"
jy = iT.MinimizeKey or Enum.KeyCode.RightShift
onStatus = jH:Keybind(onUnit, {
    [onStatus] = jw_13,
    [jx] = jy,
    ChangedCallback = function(ci)
        iT.MinimizeKey = ci
    end
})
iT.MinimizeKeybind = onStatus
getgenv().AnimeBattleRNG_Auto = {
    Config = jp,
    Stop = function()
        ja[1] = false
    end
}
js.SelectTab(js, 1)
iP("Anime Battle RNG", "Fluent Renewed UI loaded.", 6)
i0 = function(cl, cm, cn)
    local lM_1
    if not cl then
        return nil
    end
    local lL = cl:FindFirstChild(cm)
    local lL_2
    if lL then
        return lL
    end
    cn = cn or 0.05
    if cn <= 0 then
        return nil
    end
    lL_2, lM_1 = pcall(function()
        return cl:WaitForChild(cm, cn)
    end)
    if lL_2 then
        return lM_1
    end
    return nil
end
js = function(ct, cu, cv)
    local lO = ct
    for i, v in ipairs(cu) do
        lO = i0(lO, v, cv)
        if not lO then
            return nil
        end
    end
    return lO
end
onUnit = js(ReplicatedStorage, { "Packages", "_Index", "sleitnick_knit@1.7.0", "knit", "Services" }, 0.05)
onStatus = {
    [1] = js(onUnit, { "RollService", "RF" }, 0.05),
    [2] = js(onUnit, { "StatsService", "RF" }, 0.05),
    [3] = js(onUnit, { "DailyRewardsService", "RF" }, 0.05),
    [4] = js(onUnit, { "GroupRewardService", "RF" }, 0.05),
    [5] = js(onUnit, { "ZoneService", "RF" }, 0.05),
    [6] = js(onUnit, { "WarpService", "RF" }, 0.05),
    [7] = js(onUnit, { "EquipService", "RF" }, 0.05),
    [8] = js(onUnit, { "CombatService", "RF" }, 0.05),
    [9] = js(onUnit, { "IndexService", "RF" }, 0.05),
    [10] = js(onUnit, { "PlaytimeRewardsService", "RF" }, 0.05),
    [11] = js(onUnit, { "WorldUpgradeService", "RF" }, 0.05),
    [12] = js(onUnit, { "QuestService", "RF" }, 0.05),
    [13] = js(onUnit, { "TraitsService", "RF" }, 0.05)
}
jh = {
    RollBatch = i0(onStatus[1], "RollBatch", 0.05),
    SetAutoRoll = i0(onStatus[1], "SetAutoRoll", 0.05),
    UpgradeStat = i0(onStatus[2], "UpgradeStat", 0.05),
    ClaimDaily = i0(onStatus[3], "Claim", 0.05),
    ClaimGroup = i0(onStatus[4], "Claim", 0.05),
    PurchaseWall = i0(onStatus[5], "PurchaseWall", 0.05),
    WarpToZone = i0(onStatus[6], "WarpToZone", 0.05),
    EquipBest = i0(onStatus[7], "EquipBest", 0.05),
    ClaimKill = i0(onStatus[8], "ClaimKill", 0.05),
    ClaimMilestone = i0(onStatus[9], "ClaimMilestone", 0.05),
    ClaimPlaytime = i0(onStatus[10], "Claim", 0.05),
    SetAutoClaim = i0(onStatus[10], "SetAutoClaim", 0.05),
    PurchaseWorldUpgrade = i0(onStatus[11], "Purchase", 0.05),
    PlayChance = i0(onStatus[12], "PlayChance", 0.05),
    RollTrait = i0(onStatus[13], "RollTrait", 0.05),
    SetSkipAnim = i0(onStatus[13], "SetSkipAnim", 0.05)
}
jo = function(cC, cD, cE)
    local lW = not cC or not cD or not cC:IsA("BasePart") or not cD:IsA("BasePart")
    if lW then
        return false
    end
    local Position = cC.Position
    local CFrame = cD.CFrame
    local lY = CFrame:PointToObjectSpace(Position)
    local lW_2 = cD.Size / 2
    local lX_1 = cE or 0
    local lX_2 = math.abs(lY.X) <= lW_2.X + lX_1 and math.abs(lY.Y) <= lW_2.Y + lX_1 and math.abs(lY.Z) <= lW_2.Z + lX_1
    return lX_2
end
iD = function(cM)
    if not cM then
        return nil
    end
    for i, v in ipairs(CollectionService:GetTagged("Zone")) do
        local l0 = v:IsA("BasePart") and jo(cM, v, 0)
        if l0 then
            return v
        end
    end
    return nil
end
i_ = function(cR)
    local l8 = iD(cR)
    if not l8 then
        return nil, nil
    end
    local Parent = l8.Parent
    local ma = Parent and Parent:IsA("Folder")
    if ma then
        return Parent.Name, l8
    end
    return nil, l8
end
iz = {}
task.spawn(function()
    local mc
    local GameInfo = ReplicatedStorage:FindFirstChild("GameInfo")
    local md_1
    local me = GameInfo and GameInfo:FindFirstChild("IndexMilestones")
    local me_1
    mc = me
    if not mc then
        return
    end
    md_1, me_1 = pcall(function()
        return require(mc)
    end)
    local mf = md_1 and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_51 = bit32.bxor(hb, he)
            hb = bit32.band(hb_51 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_52 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_52 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(me_1), 5, 248602996) and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_49 = bit32.bxor(hb, he)
            hb = bit32.band(hb_49 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_50 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_50 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(me_1.Order), 5, 248602996)
    if mf then
        iz = me_1.Order
    end
end)
iI = {}
iN = nil
task.spawn(function()
    local mh
    local GameInfo = ReplicatedStorage:FindFirstChild("GameInfo")
    local mi_1
    local mj = GameInfo and GameInfo:FindFirstChild("EnemiesData")
    local mj_1
    mh = mj
    if not mh then
        return
    end
    mi_1, mj_1 = pcall(function()
        return require(mh)
    end)
    local mk = mi_1 and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_61 = bit32.bxor(hb, he)
            hb = bit32.band(hb_61 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_62 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_62 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(mj_1), 5, 248602996)
    if mk then
        iN = mj_1
        if (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_59 = bit32.bxor(hb, he)
                hb = bit32.band(hb_59 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_60 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_60 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(iN.ByZone), 5, 248602996) then
            for k, v in pairs(iN.ByZone) do
                if (function(g8, g9, ha)
                    if type(g8) ~= "string" then
                        return false
                    end
                    if #g8 ~= g9 then
                        return false
                    end
                    local hb = 5381
                    local hc = buffer.fromstring(g8)
                    local hd = 0
                    while hd <= g9 - 4 do
                        local he = buffer.readu32(hc, hd)
                        local hb_57 = bit32.bxor(hb, he)
                        hb = bit32.band(hb_57 * 33, 4294967295)
                        hd = hd + 4
                    end
                    while hd < g9 do
                        local hf = buffer.readu8(hc, hd)
                        local hb_58 = bit32.bxor(hb, hf)
                        hb = bit32.band(hb_58 * 33, 4294967295)
                        hd = hd + 1
                    end
                    return hb == ha
                end)(type(v), 5, 248602996) then
                    iI[k] = {}
                    for i, v in ipairs(v) do
                        local mi_2 = (function(g8, g9, ha)
                            if type(g8) ~= "string" then
                                return false
                            end
                            if #g8 ~= g9 then
                                return false
                            end
                            local hb = 5381
                            local hc = buffer.fromstring(g8)
                            local hd = 0
                            while hd <= g9 - 4 do
                                local he = buffer.readu32(hc, hd)
                                local hb_55 = bit32.bxor(hb, he)
                                hb = bit32.band(hb_55 * 33, 4294967295)
                                hd = hd + 4
                            end
                            while hd < g9 do
                                local hf = buffer.readu8(hc, hd)
                                local hb_56 = bit32.bxor(hb, hf)
                                hb = bit32.band(hb_56 * 33, 4294967295)
                                hd = hd + 1
                            end
                            return hb == ha
                        end)(type(v), 5, 248602996) and (function(g8, g9, ha)
                            if type(g8) ~= "string" then
                                return false
                            end
                            if #g8 ~= g9 then
                                return false
                            end
                            local hb = 5381
                            local hc = buffer.fromstring(g8)
                            local hd = 0
                            while hd <= g9 - 4 do
                                local he = buffer.readu32(hc, hd)
                                local hb_53 = bit32.bxor(hb, he)
                                hb = bit32.band(hb_53 * 33, 4294967295)
                                hd = hd + 4
                            end
                            while hd < g9 do
                                local hf = buffer.readu8(hc, hd)
                                local hb_54 = bit32.bxor(hb, hf)
                                hb = bit32.band(hb_54 * 33, 4294967295)
                                hd = hd + 1
                            end
                            return hb == ha
                        end)(type(v.Id), 6, 2175009567)
                        if mi_2 then
                            iI[k][v.Id] = true
                        end
                    end
                end
            end
        end
    end
end)
ji = {}
jq = nil
task.spawn(function()
    local mB
    local GameInfo = ReplicatedStorage:FindFirstChild("GameInfo")
    local mC_1
    local mD = GameInfo and GameInfo:FindFirstChild("ZonesData")
    local mD_1
    mB = mD
    if not mB then
        return
    end
    mC_1, mD_1 = pcall(function()
        return require(mB)
    end)
    local mE = mC_1 and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_69 = bit32.bxor(hb, he)
            hb = bit32.band(hb_69 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_70 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_70 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(mD_1), 5, 248602996)
    if mE then
        jq = mD_1
        if (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_67 = bit32.bxor(hb, he)
                hb = bit32.band(hb_67 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_68 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_68 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(jq.Catalog), 5, 248602996) then
            for i, v in ipairs(jq.Catalog) do
                local mC_2 = (function(g8, g9, ha)
                    if type(g8) ~= "string" then
                        return false
                    end
                    if #g8 ~= g9 then
                        return false
                    end
                    local hb = 5381
                    local hc = buffer.fromstring(g8)
                    local hd = 0
                    while hd <= g9 - 4 do
                        local he = buffer.readu32(hc, hd)
                        local hb_65 = bit32.bxor(hb, he)
                        hb = bit32.band(hb_65 * 33, 4294967295)
                        hd = hd + 4
                    end
                    while hd < g9 do
                        local hf = buffer.readu8(hc, hd)
                        local hb_66 = bit32.bxor(hb, hf)
                        hb = bit32.band(hb_66 * 33, 4294967295)
                        hd = hd + 1
                    end
                    return hb == ha
                end)(type(v), 5, 248602996) and (function(g8, g9, ha)
                    if type(g8) ~= "string" then
                        return false
                    end
                    if #g8 ~= g9 then
                        return false
                    end
                    local hb = 5381
                    local hc = buffer.fromstring(g8)
                    local hd = 0
                    while hd <= g9 - 4 do
                        local he = buffer.readu32(hc, hd)
                        local hb_63 = bit32.bxor(hb, he)
                        hb = bit32.band(hb_63 * 33, 4294967295)
                        hd = hd + 4
                    end
                    while hd < g9 do
                        local hf = buffer.readu8(hc, hd)
                        local hb_64 = bit32.bxor(hb, hf)
                        hb = bit32.band(hb_64 * 33, 4294967295)
                        hd = hd + 1
                    end
                    return hb == ha
                end)(type(v.Id), 6, 2175009567)
                if mC_2 then
                    ji[#ji + 1] = v
                end
            end
            table.sort(ji, function(dq, dr)
                return (dq.Order or 0) < (dr.Order or 0)
            end)
        end
    end
end)
iU = nil
task.spawn(function()
    local mM
    local GameInfo = ReplicatedStorage:FindFirstChild("GameInfo")
    local mN_1
    local mO = GameInfo and GameInfo:FindFirstChild("TraitsConfig")
    local mO_1
    mM = mO
    if not mM then
        return
    end
    mN_1, mO_1 = pcall(function()
        return require(mM)
    end)
    local mP = mN_1 and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_73 = bit32.bxor(hb, he)
            hb = bit32.band(hb_73 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_74 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_74 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(mO_1), 5, 248602996)
    if mP then
        iU = mO_1
        if (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_71 = bit32.bxor(hb, he)
                hb = bit32.band(hb_71 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_72 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_72 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(iU.ByName), 5, 248602996) then
            for k in pairs(iU.ByName) do
                table.insert(i6, k)
            end
            table.sort(i6)
        end
    end
end)
iW = nil
task.spawn(function()
    local mV
    local GameInfo = ReplicatedStorage:FindFirstChild("GameInfo")
    local mW_1
    local mX = GameInfo and GameInfo:FindFirstChild("UnitsData")
    local mX_1
    mV = mX
    if not mV then
        return
    end
    mW_1, mX_1 = pcall(function()
        return require(mV)
    end)
    local mY = mW_1 and (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_81 = bit32.bxor(hb, he)
            hb = bit32.band(hb_81 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_82 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_82 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(mX_1), 5, 248602996)
    if mY then
        iW = mX_1
        if (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_79 = bit32.bxor(hb, he)
                hb = bit32.band(hb_79 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_80 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_80 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(iW.Catalog), 5, 248602996) then
            for i, v in ipairs(iW.Catalog) do
                local mW_2 = (function(g8, g9, ha)
                    if type(g8) ~= "string" then
                        return false
                    end
                    if #g8 ~= g9 then
                        return false
                    end
                    local hb = 5381
                    local hc = buffer.fromstring(g8)
                    local hd = 0
                    while hd <= g9 - 4 do
                        local he = buffer.readu32(hc, hd)
                        local hb_77 = bit32.bxor(hb, he)
                        hb = bit32.band(hb_77 * 33, 4294967295)
                        hd = hd + 4
                    end
                    while hd < g9 do
                        local hf = buffer.readu8(hc, hd)
                        local hb_78 = bit32.bxor(hb, hf)
                        hb = bit32.band(hb_78 * 33, 4294967295)
                        hd = hd + 1
                    end
                    return hb == ha
                end)(type(v), 5, 248602996) and (function(g8, g9, ha)
                    if type(g8) ~= "string" then
                        return false
                    end
                    if #g8 ~= g9 then
                        return false
                    end
                    local hb = 5381
                    local hc = buffer.fromstring(g8)
                    local hd = 0
                    while hd <= g9 - 4 do
                        local he = buffer.readu32(hc, hd)
                        local hb_75 = bit32.bxor(hb, he)
                        hb = bit32.band(hb_75 * 33, 4294967295)
                        hd = hd + 4
                    end
                    while hd < g9 do
                        local hf = buffer.readu8(hc, hd)
                        local hb_76 = bit32.bxor(hb, hf)
                        hb = bit32.band(hb_76 * 33, 4294967295)
                        hd = hd + 1
                    end
                    return hb == ha
                end)(type(v.Id), 6, 2175009567)
                if mW_2 then
                    table.insert(i3, v)
                end
            end
        end
    end
end)
iQ = {
    "Luck",
    "WalkSpeed",
    "AttackSpeed",
    "EnemyRate",
    "EnemyCap",
    "EquipSlots",
    "CoinMul",
    "RollSpeed"
}
iY = function(dN)
    iB.SetValue(iB, dN)
end
iE = function(dP)
    iv.SetValue(iv, dP)
end
iV = function(dQ, dR)
    local m5 = iT.Options and iT.Options[dQ]
    local m6 = m5
    if m5 then
        m5 = m6.Value ~= nil
    end
    if m5 then
        return m6.Value
    end
    return dR
end
iR = function(dV, ...)
    local m9_1
    local m8 = not dV or not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_83 = bit32.bxor(hb, he)
            hb = bit32.band(hb_83 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_84 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_84 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(typeof(dV), 8, 1471340621) or not dV:IsA("RemoteFunction")
    local m8_1
    if m8 then
        return false, "RemoteFunction unavailable"
    end
    m8_1, m9_1 = pcall(dV.InvokeServer, dV, ...)
    return m8_1, m9_1
end
iC = function()
    local nb = LocalPlayer.Character
    if not nb then
        local CharacterAdded = LocalPlayer.CharacterAdded
        nb = CharacterAdded:Wait()
    end
    return nb
end
jg = function()
    local ne = iC()
    local nf = ne and ne:FindFirstChild("HumanoidRootPart")
    return nf
end
iZ = function(d4, d5)
    local nh = not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_87 = bit32.bxor(hb, he)
            hb = bit32.band(hb_87 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_88 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_88 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(d4), 6, 2175009567) or not (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_85 = bit32.bxor(hb, he)
            hb = bit32.band(hb_85 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_86 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_86 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(d5), 6, 2175009567)
    if nh then
        return false
    end
    local nh_1 = iI[d5]
    if not nh_1 then
        return false
    end
    for k in pairs(nh_1) do
        local nh_2 = d4 == k or string.sub(d4, 1, #k + 1) == k .. "_"
        if nh_2 then
            return true
        end
    end
    return false
end
jl = function(eb, ec, ed)
    local nn = not eb:IsA("Model") or eb == iC()
    if nn then
        return false
    end
    local LocalEnemies = Workspace:FindFirstChild("LocalEnemies")
    if not LocalEnemies or eb.Parent ~= LocalEnemies then
        return false
    end
    local nn_2 = ec and not iZ(eb.Name, ec)
    if nn_2 then
        return false
    end
    local nn_3 = eb:FindFirstChild("MainPart") or eb:FindFirstChild("HumanoidRootPart") or eb.PrimaryPart
    local nn_4 = not nn_3 or not nn_3:IsA("BasePart")
    if nn_4 then
        return false
    end
    local attr2 = eb:GetAttribute("State")
    if (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_91 = bit32.bxor(hb, he)
            hb = bit32.band(hb_91 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_92 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_92 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(attr2, 5, 2926933190) then
        return false
    end
    local attr = eb:GetAttribute("Health")
    local np = (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_89 = bit32.bxor(hb, he)
            hb = bit32.band(hb_89 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_90 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_90 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(type(attr), 6, 472614556) and attr <= 0
    if np then
        return false
    end
    local nn_7 = ed and not jo(nn_3, ed, 8)
    if nn_7 then
        return false
    end
    return true
end
iS = function()
    local nw_1
    local nu_1
    local nt_1
    local nr = jg()
    if not nr then
        return nil
    end
    local LocalEnemies = Workspace:FindFirstChild("LocalEnemies")
    if not LocalEnemies then
        return nil
    end
    nu_1, nt_1 = i_(nr)
    local nv = not nu_1 or not nt_1
    local nv_1
    if nv then
        return nil
    end
    nw_1, nv_1 = nil, nil
    for i, child in ipairs(LocalEnemies:GetChildren()) do
        if jl(child, nu_1, nt_1) then
            local ns_1 = child:FindFirstChild("MainPart") or child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart
            local nx = ns_1
            if ns_1 then
                ns_1 = nx:IsA("BasePart")
            end
            if ns_1 then
                local Magnitude = (nx.Position - nr.Position).Magnitude
                if not nv_1 or Magnitude < nv_1 then
                    nw_1 = child
                    nv_1 = Magnitude
                end
            end
        end
    end
    return nw_1
end
js = function()
    local nF = {}
    local Upgrades = Workspace:FindFirstChild("Upgrades")
    if not Upgrades then
        return {}
    end
    for i, descendant in ipairs(Upgrades:GetDescendants()) do
        local attr = descendant:GetAttribute("UpgradeId")
        local nH = (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_95 = bit32.bxor(hb, he)
                hb = bit32.band(hb_95 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_96 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_96 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(type(attr), 6, 2175009567) and not (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_93 = bit32.bxor(hb, he)
                hb = bit32.band(hb_93 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_94 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_94 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(attr, 0, 5381)
        if nH then
            nF[attr] = true
        end
    end
    local nG_2 = {}
    for k in pairs(nF) do
        nG_2[#nG_2 + 1] = k
    end
    table.sort(nG_2)
    return nG_2
end
iA = js()
iu = function()
    return Workspace:FindFirstChild("Zones")
end
jf = function()
    local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not PlayerGui then
        return nil
    end
    local Areas = PlayerGui:FindFirstChild("Areas")
    if not Areas then
        return nil
    end
    local Main2 = Areas:FindFirstChild("Main")
    if not Main2 then
        return nil
    end
    local Frame = Main2:FindFirstChild("Frame")
    if not Frame then
        return nil
    end
    local Main = Frame:FindFirstChild("Main")
    if not Main then
        return nil
    end
    return Main:FindFirstChild("Areas")
end
iO = function()
    local nW = { Z1 = true }
    local nX = jf()
    if not nX then
        return nW, false
    end
    for i, child in ipairs(nX:GetChildren()) do
        local nX_1 = child:IsA("ImageButton") and (function(g8, g9, ha)
            if type(g8) ~= "string" then
                return false
            end
            if #g8 ~= g9 then
                return false
            end
            local hb = 5381
            local hc = buffer.fromstring(g8)
            local hd = 0
            while hd <= g9 - 4 do
                local he = buffer.readu32(hc, hd)
                local hb_99 = bit32.bxor(hb, he)
                hb = bit32.band(hb_99 * 33, 4294967295)
                hd = hd + 4
            end
            while hd < g9 do
                local hf = buffer.readu8(hc, hd)
                local hb_100 = bit32.bxor(hb, hf)
                hb = bit32.band(hb_100 * 33, 4294967295)
                hd = hd + 1
            end
            return hb == ha
        end)(child.Name, 12, 219405692)
        if nX_1 then
            local nY = ji[child.LayoutOrder + 1]
            if nY then
                local TextButton = child:FindFirstChild("TextButton")
                local nZ = TextButton and TextButton:FindFirstChild("Frame")
                if nZ then
                    local Frame = TextButton.Frame
                    nZ = Frame:FindFirstChild("TextLabel")
                end
                local n_ = nZ
                if nZ then
                    nZ = n_:IsA("TextLabel")
                end
                if nZ then
                    nZ = string.upper(n_.Text)
                end
                local n__1 = nZ or ""
                local n__2 = ((function(g8, g9, ha)
                    if type(g8) ~= "string" then
                        return false
                    end
                    if #g8 ~= g9 then
                        return false
                    end
                    local hb = 5381
                    local hc = buffer.fromstring(g8)
                    local hd = 0
                    while hd <= g9 - 4 do
                        local he = buffer.readu32(hc, hd)
                        local hb_97 = bit32.bxor(hb, he)
                        hb = bit32.band(hb_97 * 33, 4294967295)
                        hd = hd + 4
                    end
                    while hd < g9 do
                        local hf = buffer.readu8(hc, hd)
                        local hb_98 = bit32.bxor(hb, hf)
                        hb = bit32.band(hb_98 * 33, 4294967295)
                        hd = hd + 1
                    end
                    return hb == ha
                end)(n__1, 8, 184990017))
                if not n__2 then
                    n__2 = TextButton and TextButton.Active
                end
                if n__2 then
                    nW[nY.Id] = true
                end
            end
        end
    end
    return nW, true
end
jj = function(fb)
    local n9_1
    local n8_1
    if (function(g8, g9, ha)
        if type(g8) ~= "string" then
            return false
        end
        if #g8 ~= g9 then
            return false
        end
        local hb = 5381
        local hc = buffer.fromstring(g8)
        local hd = 0
        while hd <= g9 - 4 do
            local he = buffer.readu32(hc, hd)
            local hb_101 = bit32.bxor(hb, he)
            hb = bit32.band(hb_101 * 33, 4294967295)
            hd = hd + 4
        end
        while hd < g9 do
            local hf = buffer.readu8(hc, hd)
            local hb_102 = bit32.bxor(hb, hf)
            hb = bit32.band(hb_102 * 33, 4294967295)
            hd = hd + 1
        end
        return hb == ha
    end)(fb, 2, 5956302) then
        return true
    end
    n9_1, n8_1 = iO()
    if n8_1 then
        return n9_1[fb] == true
    end
    local n8_2 = iu()
    if not n8_2 then
        return false
    end
    local n9_2 = n8_2:FindFirstChild(fb)
    if not n9_2 then
        return false
    end
    local Buy_Wall = n9_2:FindFirstChild("Buy_Wall")
    local n9_3 = not Buy_Wall or not Buy_Wall:IsA("BasePart")
    if n9_3 then
        return false
    end
    local SurfaceGui = Buy_Wall:FindFirstChildOfClass("SurfaceGui")
    if Buy_Wall.Transparency >= 1 and Buy_Wall.CanCollide == false and Buy_Wall.CanQuery == false then
        return true
    end
    if SurfaceGui and SurfaceGui.Enabled == false then
        return true
    end
    return false
end
je = function()
    local od_1
    local oc_1
    local oe
    od_1, oc_1 = iO()
    for i, v in ipairs(ji) do
        local of = oc_1 and od_1[v.Id] == true
        local og = of or jj(v.Id)
        if og then
            oe = v
        end
    end
    return oe
end
jk = function()
    local oq_1
    local op_1
    oq_1, op_1 = iO()
    for i, v in ipairs(ji) do
        local os = op_1 and oq_1[v.Id] == true
        local ot = os or jj(v.Id)
        if not ot then
            return v
        end
    end
    return nil
end
iH = function()
    local oB = jk()
    if not oB then
        iY("Auto Purchase Next Zone: all owned")
        return
    end
    iR(jh.PurchaseWall, oB.Id)
    iY("Auto Purchase Next Zone: " .. oB.Id)
end
i2 = function(fF)
    local Warps = Workspace:FindFirstChild("Warps")
    local oE = jg()
    if not Warps or not oE then
        return false
    end
    local oF_1 = Warps:FindFirstChild(fF)
    local oD_1 = oF_1 and oF_1:IsA("BasePart")
    if oD_1 then
        oE.CFrame = oF_1.CFrame + Vector3.new(0, 4, 0)
        return true
    end
    return false
end
iM = function()
    local oH = je()
    if not oH then
        iY("Auto Go To Best Zone: no owned zone found")
        return
    end
    local oI = iR(jh.WarpToZone, oH.Id)
    if not oI then
        i2(oH.Id)
    end
    iY("Auto Go To Best Zone: " .. oH.Id)
end
js = function()
    local oK = je()
    local oL = jk()
    local oM = oK
    if oM then
        oM = oK.Id .. " - " .. (oK.Name or oK.Id)
    end
    local oK_1 = oM or "Unknown"
    local oM_1 = oL
    if oM_1 then
        oM_1 = oL.Id .. " - " .. (oL.Name or oL.Id)
    end
    local oK_3 = oM_1 or "All unlocked"
    iE("Best Owned: " .. oK_1 .. "\nNext Locked: " .. oK_3)
end
iK = function()
    local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not PlayerGui then
        return
    end
    local Playtime = PlayerGui:FindFirstChild("Playtime", true)
    if not Playtime then
        return
    end
    local AutoClaimButton = Playtime:FindFirstChild("AutoClaimButton", true)
    local oS_1 = AutoClaimButton and AutoClaimButton:IsA("GuiButton")
    if oS_1 then
        pcall(function()
            AutoClaimButton.Activate(AutoClaimButton)
        end)
    end
end
onUnit = function()
    iR(jh.SetAutoRoll, true)
    iR(jh.RollBatch)
end
onStatus = function()
    for i, v in ipairs(iQ) do
        iR(jh.UpgradeStat, v)
    end
    for i, v in ipairs(iA) do
        iR(jh.PurchaseWorldUpgrade, v)
    end
end
ix = function()
    iR(jh.ClaimGroup)
    iR(jh.SetAutoClaim, true)
    iK()
    local pc = 1
    local pa = 20
    while pc <= pa do
        local pd = pc
        iR(jh.ClaimPlaytime, pd)
        pc += 1
    end
end
jr = function()
    local pk = 1
    local pi = 7
    while pk <= pi do
        local pm = pk
        iR(jh.ClaimDaily, pm)
        pk += 1
    end
end
jm = function()
    if #iz > 0 then
        for i, v in ipairs(iz) do
            iR(jh.ClaimMilestone, v)
        end
        return
    end
    local pz = 1
    local px = 250
    while pz <= px do
        local pA = pz
        iR(jh.ClaimMilestone, tostring(pA))
        pz += 1
    end
end
iF = function()
    iR(jh.EquipBest)
end
local function jw_14()
    iR(jh.PlayChance, "Gambler")
end
iL = function()
    local pC = iS()
    if pC then
        iR(jh.ClaimKill, pC)
        iR(jh.ClaimKill, pC.Name)
    end
end
jx = function()
    local pE = jg()
    local pF = iS()
    if not pE or not pF then
        iY("Auto Walk To Mobs: waiting for local enemy")
        return
    end
    local pG_1 = pF:FindFirstChild("HumanoidRootPart") or pF.PrimaryPart
    local pH = pG_1
    if not pH then
        local pG_2 = pF:FindFirstChild("MainPart") or pF.PrimaryPart
        pH = pG_2
    end
    local pG_3 = pH and pH:IsA("BasePart")
    if pG_3 then
        pE.CFrame = pH.CFrame * CFrame.new(0, 0, jp.WalkOffset)
        iY("Auto Walk To Mobs: " .. pF.Name)
    end
end
jy = function(gp, gq, gr, gs)
    ja[2][gp] = task.spawn(function()
        local pL_1, pL_2
        local pK_1, pK_2, pK_3
        while ja[1] do
            local pJ = false
            local pJ_1
            pK_1, pL_1 = pcall(gq)
            if pK_1 then
                pJ = pL_1
            end
            if pJ then
                pJ_1, pK_2 = pcall(gs)
                if not pJ_1 then
                    warn(("[AnimeBattleRNG] %s: %s").format("[AnimeBattleRNG] %s: %s", gp, tostring(pK_2)))
                end
            end
            local pJ_2 = 1
            pK_3, pL_2 = pcall(gr)
            local pM = pK_3 and (function(g8, g9, ha)
                if type(g8) ~= "string" then
                    return false
                end
                if #g8 ~= g9 then
                    return false
                end
                local hb = 5381
                local hc = buffer.fromstring(g8)
                local hd = 0
                while hd <= g9 - 4 do
                    local he = buffer.readu32(hc, hd)
                    local hb_103 = bit32.bxor(hb, he)
                    hb = bit32.band(hb_103 * 33, 4294967295)
                    hd = hd + 4
                end
                while hd < g9 do
                    local hf = buffer.readu8(hc, hd)
                    local hb_104 = bit32.bxor(hb, hf)
                    hb = bit32.band(hb_104 * 33, 4294967295)
                    hd = hd + 1
                end
                return hb == ha
            end)(type(pL_2), 6, 472614556)
            if pM then
                pJ_2 = pL_2
            end
            task.wait(pJ_2)
        end
    end)
end
jy("AutoSpin", function()
    return jp.AutoSpin
end, function()
    return jp.SpinInterval
end, onUnit)
jy("AutoPurchaseAvailableUpgrades", function()
    return jp.AutoPurchaseAvailableUpgrades
end, function()
    return jp.UpgradeInterval
end, onStatus)
jy("AutoClaimRewards", function()
    return jp.AutoClaimRewards
end, function()
    return jp.RewardInterval
end, function()
    ix()
    iL()
end)
jy("AutoClaimDaily", function()
    return jp.AutoClaimDaily
end, function()
    return jp.DailyInterval
end, jr)
jy("AutoWalkToMobs", function()
    return jp.AutoWalkToMobs
end, function()
    return jp.WalkInterval
end, jx)
jy("AutoClaimIndex", function()
    return jp.AutoClaimIndex
end, function()
    return jp.IndexInterval
end, jm)
jy("AutoEquipBestUnit", function()
    return jp.AutoEquipBestUnit
end, function()
    return jp.EquipInterval
end, iF)
jy("AutoPurchaseNextZone", function()
    return jp.AutoPurchaseNextZone
end, function()
    return jp.ZonePurchaseInterval
end, iH)
jy("AutoGoToBestZone", function()
    return jp.AutoGoToBestZone
end, function()
    return jp.BestZoneInterval
end, iM)
jy("AutoHakari", function()
    return jp.AutoHakari
end, function()
    return jp.HakariInterval
end, jw_14)
jy("AutoRollTraitLoop", function()
    return jp.AutoRollTrait
end, function()
    return jp.TraitRollInterval
end, ju)
jy("ZoneInfo", function()
    return true
end, function()
    return 1
end, js)
