local f7
local gS
local gw
local Balancing
local gC
local gj
local gI
local Stats
local gL
local VirtualUser
local f9
local gE
local f8
local gQ
local gx
local gT
local gb
local gA
local gW
local connection
local gG
local gn
local fn46
local function fn10(et, eu)
    if type(et) ~= "number" then
        return false
    end
    if et % 1 ~= 0 then
        return false
    end
    local ev_1 = bit32.bxor(et, 1540483477)
    local ev_2 = bit32.band(ev_1 * 403 + bit32.lshift(ev_1, 24), 4294967295)
    local ev_3 = bit32.bxor(ev_2, bit32.rshift(ev_2, 13))
    return ev_3 == eu
end
fn46 = function(ej, ek, em)
    if type(ej) ~= "string" then
        return false
    end
    if #ej ~= ek then
        return false
    end
    local en = 5381
    local eo = buffer.fromstring(ej)
    local ep = 0
    while ep <= ek - 4 do
        local eq = buffer.readu32(eo, ep)
        local en_1 = bit32.bxor(en, eq)
        en = bit32.band(en_1 * 33, 4294967295)
        ep = ep + 4
    end
    while ep < ek do
        local er = buffer.readu8(eo, ep)
        local en_2 = bit32.bxor(en, er)
        en = bit32.band(en_2 * 33, 4294967295)
        ep = ep + 1
    end
    return en == em
end
local function fn200(cl)
    cl.AddButton(cl, {
        Title = "Join Discord for Dupes/Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = function()
            setclipboard(gE)
        end
    })
end
local function worker()
    while true do
        if gw then
            pcall(function()
                f9.FireServer(f9, "EquipBest")
            end)
        end
        task.wait(2)
    end
end
local function fn287(cV)
    if gQ and (cV.UserInputType == Enum.UserInputType.MouseMovement or cV.UserInputType == Enum.UserInputType.Touch) then
        local jS_1 = cV.Position - gL
        if jS_1.Magnitude > 4 then
            gA = true
        end
        f8.Position = UDim2.new(gG.X.Scale, gG.X.Offset + jS_1.X, gG.Y.Scale, gG.Y.Offset + jS_1.Y)
    end
end
local function fn325(cp)
    gw = cp
end
local function fn363(br)
    local iC = { [1] = true, [2] = true, [3] = true }
    local iD = br.OwnedRebirthButtons or {}
    for k, v in pairs(iD) do
        local iD_1 = fn46(type(k), 6, 472614556) and k
        local iE = iD_1 or tonumber(k)
        local iD_2 = iE
        if iE then
            iE = iD_2 == math.floor(iD_2)
        end
        if iE then
            iE = iD_2 >= 4
        end
        if iE then
            iE = v == true
        end
        if iE then
            iE = gj.Rebirths[iD_2]
        end
        if iE then
            iC[iD_2] = true
        end
    end
    return iC
end
local function fn372(aq)
    local ie_1, ie_2
    local ic_1
    for i, v in ipairs(aq) do
        ic_1, ie_1 = pcall(game.HttpGet, game, v)
        local ig = ic_1 and fn46(type(ie_1), 6, 2175009567) and #ie_1 > 200
        local ig_1
        if ig then
            local ic_2 = loadstring(ie_1)
            if ic_2 then
                ie_2, ig_1 = pcall(ic_2)
                local ic_3 = ie_2 and fn46(type(ig_1), 5, 248602996)
                if ic_3 then
                    return ig_1
                end
            end
        end
    end
    return nil
end
local function worker2()
    while true do
        if gT then
            pcall(function()
                gx.FireServer(gx, "Click", true)
            end)
        end
        task.wait(0.1)
    end
end
local function fn557(cH)
    gn = cH
    if cH then
        if not connection then
            local Idled = gI.Idled
            connection = Idled:Connect(gb)
        end
    elseif connection then
        connection.Disconnect(connection)
        connection = nil
    end
end
local function fn583(co)
    gT = co
end
local function fn589(cs)
    local jE = tonumber(cs) or 1
    f7 = jE
end
local function fn794()
    local iR_1
    local iM = Stats.Local()
    local iM_1
    if not iM then
        return nil
    end
    local iO = iM.Currency and iM.Currency.Clicks or 0
    local iP = iM.Currency and iM.Currency.Rebirths or 0
    local iP_1 = gS.GetPower(iM, "RebirthCostMultiplier")
    local iQ = gC(iM)
    iR_1, iM_1 = nil, -1
    for k in pairs(iQ) do
        local iQ_1 = gj.Rebirths[k]
        local iS = iQ_1
        if iS then
            iS = iQ_1.Amount or 1
        end
        local iQ_2 = iS or 0
        if iQ_2 > 0 then
            local iQ_3 = math.max(1, math.floor(Balancing.GetRebirthCost(iQ_2, iP) * iP_1 + 0.5))
            if iO >= iQ_3 and iQ_2 > iM_1 then
                iR_1, iM_1 = k, iQ_2
            end
        end
    end
    return iR_1
end
local function fn862()
    local ip = Stats.Local()
    if not ip then
        return nil
    end
    local iq = ip.EquippedPets or {}
    for k, v in pairs(iq) do
        if fn46(type(v), 5, 248602996) then
            return v.GUID or v.guid
        end
        if fn46(type(v), 6, 2175009567) then
            return v
        end
        if fn46(type(k), 6, 2175009567) then
            return k
        end
    end
    local iq_2 = ip.Pets or {}
    for k in pairs(iq_2) do
        if fn46(type(k), 6, 2175009567) then
            return k
        end
    end
    return nil
end
local function fn873(cy)
    local jK = tonumber(cy) or 0
    gW = math.floor(jK)
    if gW < 0 then
        gW = 0
    end
end
local function fn888()
    pcall(function()
        VirtualUser.CaptureController(VirtualUser)
        VirtualUser.ClickButton2(VirtualUser, Vector2.new())
    end)
end
f7 = nil
f8 = nil
f9 = nil
gb = nil
Balancing = nil
local ge
connection = nil
gj = nil
gn = nil
local gs
local gu
gw = nil
gx = nil
local gz
gA = nil
local gB
gC = nil
local Open
gE = nil
local gF
gG = nil
local gH
gI = nil
local gJ
gL = nil
local gN
VirtualUser = nil
local gP
gQ = nil
gS = nil
gT = nil
local f6, ga, gf, gg, gk, gl, gm, Directory, gq, gr, gv, gy, gK
gW = nil
local g_
Stats = nil
local gV, gY, TweenService, g0, g1, g5, g6, g7, g8, ha, hc, hd, he, hg, hh, hi, hj
local g9_1
local hb_8
local gt = (buffer.fromstring("7++/,epp->(q86+7*=*,:-<01+:1+q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p2>,+:-p\x1e;;01,p\x0c>):\x12>1>8:-q3*>#KjU9y$0gE+D9ov=0_?:dh[aTCP(4)9#:((>/2?attbjokkkcmnhcklo&-%CMvrm;uqk3ov.xm_T*H?Qx_aB@HDQLVMGwQBMPSBQFM@ZV?r#WRG/zB)3lJ3D?=5bcJ^Q]gCSEBpDYXBSXR$Oj((9F4DIc{qs&piMk3*k2DA(+Pu1eQPKaUQMTfAWP,RiueVPdWR,PT!V5^x0gw%}PiUoIjPWJGJWJVmPG\nfILFN@WvLHPIDQJW:r]F1R.WVw?HLXIZZKTJTNIS3C*B/.3GdfZTFGwlZW))oQy)Sb~DC^S^C^ByDSlVJ)iwDYIDm:gHGe3e4JW=m+Y[eYY]jHYMopVS$h=bi2V06j,uCX0H!/cp0VG1tlJ]kVKSZk=Mv8u;0_E%xT/J9vWr(jD*2Y!aS,kDCIkD_^YnEDAItonoYhE6)mvw-#br_ooip=OXSP;i3fUQ8aZO{Z64v#qQI..n6orcvtT$NbSNBtCBBYXKlcyLm:Xf_9kBa8CL40Z^x*nU}W[Z4ROm%nCn;![JN:xGLw1mo{WrpJ=0O?1'#? 04sUS8fVIhL[XonhHq=mpBLk+:E@yS_^?iA2o%+XWxm=foaQ_bzS$,#uOvDlJsVVfSPY2z75meB4R[O%tiIn-YHA.u%v6PP[DBK@K&z3HX@K{V)3@VxZCutaG/i1G%5/6$$2#>3mxxnfcgggoabdog`cfao6sOBZFQPT*qx*8U0eB(+b3H%x*5k[8,pqTTtB_@T_G^.w.;Gsrb3hQ83L^%s7Es_^^USDf%mUVkaBZTNEC7@Nngj)Xlpj^_Dz^NX_X4yaNAdOlRlS?ZQlA6?*sWE_XQeBOZSo/FTa@g2*A.v7Xc69vs^V_^l;-w3r-GMJ8Gh8Jc[ZW5x_MRoA]gK@A6b]P[qpZi^Avwrd)dFD;$|XTRPvPpICghcre_+m=NP[QwDa+6nKK{@HHCJng=5gD^;Fe?cDv[1?]hJA@L_LDLG]ZWv4y%zC&K]/3LlYU^LlMa_Q0G{6SsyDp^D8m5sRp3oLNFJ_BXCIy_LC^]L_HCNTj-}mymyh,NDYQZNV0frGN-V/rt_FA_LU;:Uko+__JH1Ngqk8DMV)7oJJl[ZZA@Y*3k#Z1j#MV:prnc(,4)'<$y{REKww(g+1SG1FU5gSRI\x06iVCH\x06cAAm}DtXMsgl]hhJJ~HAHNYssvQYvEe063k-*KCHZui_:OlfDO:F^XG-:K[2eeDG@TMUIJ.=^hmCztdc%d9L|M^IBX-5oD0]$1!vuheRzTfQMH@gKJBMCwAGPMKJni#NjIKCOZG]FL|ZIF[XIZMFKQ$08%,<3wXJmH#&yQBV0Q9#R^NA][UZY[J;R:J@E)MdtyDYAHYT,lOh4@Ve{SLP^wqPST@YAjOgsJ[Qs:(L;iyHAH]B_YyHDG@MvYCH*wa[HWnP+rvyLnJ[]28iSWTESJ#oLe6&HALG^&X#yHUYy_LC^]L_HCNT!%`OCKgvIogvy;(%o+).lIIyBJJAHfUk98e1iW +97bO0[xoqGB,nSh}J_CFLN[JK|[@]NHJnOYIXCZ^CEDB-D8&eSBB_XQE6o(cGZu?eXE]TY+^YG)iJf@+eJeC{3o3P:-_7LY5>,A.Q0G#hb+XwlgXD^C^XYri#j@NveBHITnIDMZEC^qSBfYASD?wezKw`FPG|[E@AaLEPN[XV_yp7veb_cfPXEw^CrYX]U^sEMPbKVgLMH@qGOR`ITeNOJBoYQL~WJ{PQT\\~SIJV[CuH^_HkF[ML[jFEF[\x1a\t4)18n?P3WobxZWWYZXPtxnd@RHOFrUXMD=#8>8>-2:?MfDUrDSWHBD.*6,->#);5`QTTY^Wd_@^]KXKDQV_YKSJIURQX[Y[XI_FA5RYQhE^IOXC^UgQXQW@`UV}JMF][G_gkQZTQV_Q[gFPWQLZ.sDIP@VF/pR__QRPXNSZNGDJM333333\xd3?..0#;7:-sEBBU^SIvIUOROIHtHE]AVWxLMV|^^iHKLXAYwVURF_GJZUKQ^KMC^STSGa@CDPIQqTTdQRw^^K]L=:<' )sQF[DWkZI^UOlIIyLO`OBJNoKGACxZZN.yM^RZmNB@MYB]SA-8;5<zA[MFnMOG&#\xe5\xce~BOWkWZB~RZ]3%-064>9\xfcAr\x1ebHDE`BBVpYXBT]V*=(7<.T_M3;.YR@\"D[Lcp\xfaAv$yCF&s"))
local go = (buffer.fromstring(",0047~kk6%3j#-0,1&17!6'+*0!*0j'+)k\x05'01%(\t%70!6\x0b+#3%=k\x02(1!*0i\x16!*!3! k)%70!6k\x05  +*7k\x17%2!\t%*%#!6j(1%1LIHpWr;2v&G1a#??;8qdd9$(#.*?8e($&t9.-v$>9$)$9$8W.GtYCG{g;9]V7mZ7R6#x[YQ]HUOT^nH[TIJ[H_TYCvye/uWx?+x3:%n1u}a:s=LKh&AvAFMVPLeIKQJP[T$(m!QmIC4F6fcj_XQ?iY^6q[KLe!Egw18%w52$#w6118%365;2W&+0is[WO=(q0;-#+{-HmsGF]\x12wCG[B\x12pWAF\x12bWF&m5xUnJl:[#*!f)EmVfRhtDSW]WTZSEp!%%lzm?A-00H@+0N%YaU%p+vyrRXrQS[WB_E^TdBQ^C@QBU^SI^aj6yUw-?l;96})#uP[KXK@OU;GyKz=C6zX*pTtm/2JP}vEWvoOqd{xZK@UPZ_KfZ;v*@iTuK3Ax}of2TdH8f2)_W)rg]ZGJGZG[`]J^^ws_F&ensF]by9S=F9g43w)cRAV]G%wMt-7qyM2$uf1Vke6d#zWLz_^5i3xWZQVKiVPWMZ{gqb8uojdez3Wcd,**GB&@9lg{z}t`.PcFS?;hzi^_LA;w+q*I#)8]WsIwUUAEP-3[yvGI+p%SMgGMB.vvk-&?h5P.suZAV`VAEVA%i4((4qs:P=r7CvZ2,gc)}1xTWTIu=q07MPmsyepyiWHZk*/M!+1{:L{bI@OODMS=+lKf(5GcV&d)RGRYD:7ku{ItPDALc:4(4&i8o}pH/Y=Dt&!DpE9+adZYUD9+^^}Mzz5sehuWDzD8BCr8o:2e!tgEHHFEGO49Ok0%]WqT8RG)*qL:NiFQqLQI@A}r?o/_Hi-oVO6i0jxr;E0]%wr_EWTZS~WBU^wX_[RV2&lO*@?.5/VtNITYTITHsNY\x14xWRXP^IhRVNWZOTIw@GLWQM:/oT4]Y%T-kxTd-7+y-YQe;:3>&OCE:m^8Y*2)Ef0oNa8DBlfg|JB_mDYhCBGOY:[pG.8T]I_sGfs9lN_xNY]BHNb_Mosn:Z.#WT}rh.LlSFMfDDTjn$ZgaW:!ultH=TB1Yp!*8_arks.C8)M!Rh7t@zbe=HH0 (</)+&: 6(w[zUeg&!Uv7ZL6[fEGOCVKQJ@gKHKV\x17t*_tvX599nQDO}*4mccm:NQV]8$d[!lHI/jV[Y_RUV^_H8@AiyKo1Jf&Q=xkJINZC[!&A9vdLeAu?bf)lao^Y_DCJ.]_LZS[d9NaC*1)j:=9%!!0+6#81D**UJZ40+vY,Z8DO].st9+Ox.gg51NxJkiA[WfDIIGDFN?{0w3WcgLxb^n,U183=rO}k&umOXWK55=CkM:7dUHDdBQ^C@QBU^SIcxTKCx}@]EL03MeY4$snRHh*L/?H1:(qIONZhCH}{m-juotVon?':./.dD#q]#8u}H72ZS@w[YDXQ@QPp^00JFbM*oW{aMEBaLMofqLeh*VU.Zp&`sT^_Bx_R[LSUH&Xnu?^{ZY^JSKI9zxoK_t.9MFYrORJC^H!zmkp=qd00Wxd@RHOFrUXMD?+h9+O.znKKmZ[[@AB=jMIn-lp{PYVV]TlRV-:XhZa?BwX]W_QF\x14g]YAXU@[FuA@[\x14wXU]Y\x14eAQG@GkDAKCax6t7}MHkVhrVD^YPdCN[RkNUjv '!:=4vE_TwKaUN^eGJJDGEM)cBypG,e_XEHEXEY~EMMFOcYFKDNYlXED^ODN}YMH=b7W@&k8+zqJDVQI9RO$eRxW'5)$gW^K{)22RaW_BpYDu^_ZRsaGQF}ZDA@`MDQjHEEKHJB=]_c@`G_FBLzL[_L[BI[fXDL@[ONSgPFPAz[fETB[b@KJFUFNFMWPkNN~EMMFOn6&D[IX@@WX]M]aEBEAEVIgIU106(.$/!!%)yPSAvZ[AGZYaPUUX_Ve^AaPMAvZYZG\x06|^Oh^IMRX^x_ADEsTVP_eGJJDGEMmVAUM^SR_QYpUUe^VV]TdAAqJBBI@tUCDB_I1ZyHUYd%d1qDGrLAQM\x00\x00\x00\x00\x00\x00\xe0?|+zJpvDgfDIIGDFN\x9a\x99\x99\x99\x99\x99\xe9?u^OLTIP_w@GLWQMVvWAF@]KjAHGGLEbI@OODMoC^IkYExOHCX^Bk@IFFMDs_^^USDvGTCHR{AFMKmsOBZqK`QFBWFtERVCRnL[FYJmBGMEFSP^Wc_RZRuZ_U]gZG_Vd^MR9 !$;$<:?+2gBQH)?7*\x1bf\x81\x03IG_DPDG]qSSGiHr\x1fCU]@\x1a\xb6s cAAUgKCDSXJY__:1#;;7}GFXSAO2\x13s\x19Iwk3UV4\x1f\x08\x0b"))
local gi = (buffer.fromstring("1--)*cvv+8.w>0-1,;,*<+:67-<7-w:64v\x18:-,85\x148*-<+\x166>.8 v\x1f5,<7-t\x0b<7<.<=v48*-<+v\x18==67*v\x107-<+?8:<\x14878><+w5,8,0/*=eviSTIDITIU\x06kGTMCRVJGEC\x06\x00\x06kkcN[02O*-@iwN%fw;gwg8S0PzVkjleDe_XEHEXEYfEKNCDMyIXOODW{C9_m1-$-BMSY!rXmrIR^#3Z7c@BJFSNTOEuS@ORQ@SDOBX3,xC.s6Va%M*vJq9!:?c,(jIKCOZG]FLkGDGZ\x1bm]:oGFdL80Ys6qJEzT:xG}j[rCeS[Ft]@qZ[^Vr}mFgc/3KYC*5V1FXfDd^!)#DP=;dBQ^C@QBU^SI2M=fLG%^+.J4GJ+w9{H-]W?{51p-0+>+:r<<(e7LzR{#r::,R)Ed/QTWiUJb,%nUseDG@TMUsRk]ryM5?!mmvKrv0%u{o^i]++!X@KnAFLnAZ[\\k@ADL;Af%9[CSj;Rk;Oh3lL+^Riv\x1e<-y\t\x1ay\x1c!<:,-6+y\x11<+<yq\x1a50:2y-6y\x1a6) p{XJJA|J]YFLJ$8X{ALfcke)Deutb(gw={56CMMIPJZXCP[E=6jl+o)SuEs1sIil}.h$K.0|^KZXPMF:%7S2q@^3=&j5ZF;arphRx}U-;FYV]C[ZHZD76uW,XH-b)WvFqbQ.C=++PMbRTF$=^S(1XD}$3j_#pIM/R/pJ+u?x6;e{sBQFMWlQ}s^0p8UCS{p*+O2k;a{vz!J14zNOTyNOOTUxTWTIjjTK5jTocteyOU(Wk`VGu\\_WVAgtEHO3fqm}TVbQg^21l?o}4/<&2$xO.7_;b&:lT$jE?xn/[:.bJM2_?4&kWu/TWmYuhcr.i3/uHvv;d8t_2yiLLlZGXLG_FR30ed/1%XCsE3IA-W3nfA_Z[lGNAHJK[p0;S-}h7?m@%C{WppLXEGxmh}ZWLctqq.&W/$__!v2_k4)d^MRxDw(FGy*Y7ynm3BcdN-I(OfmxthbNSODS3jW6Y)_dg@C8Iwq{tqDYnALD@,hz)MQresHZmyX*/)H[CfBlrSPWCZBv@X(WW5!%f94*[-_4f){8(2+99/>#.pees{~zzzr|\x7fyrz}~`OHB`OTUReNOJBck1QwqkLUeiVhJ[_^YNhDE_YDGGNYrgl4[M!p($-&yGQKM7P+)%2&d:kEAsK9Tpb^SK7xT7{aJ5_1:R#+psQs+{U81:HZTME&HQ$r)W;$4$1d90ubdRVET_VU[R$cp#}2&p]eo!MfeRG[^TVCRSdCXEVPRY7A8V24bIX[C^GIzN%7vRMxs66tH&WdgVSS^YP{RQC1(lYGalBQF#@l]JN[Jiwp}e&H-EtY:o5j=U{MEXjC^oDE@HgDZo]@tmik/&-?f=@0D@R8.J+6dVCO)5#dUFQZ@2_/oY2doH^J,O7azhKIAMXE_DN~XKDYZKXODISdPQJ\x05fIDLH\x05dII\x05fM@VQVoX_TOIUS2=._fjF@BV=It`ZIVEjp-@K}Z@X#CG@qTqmgKVJAV{we=5+]?1O)qjHCBN]NFNE_XmYDE_NEOhWKQLQWV1[;bCnrrY^cr_EWTZSR(HKPVkuviz.-<*3V]xkuR}K)t}v%yFZ@]@FGRdU&{oA.%RyV[PWJhWQVLzf?c&giQHPM0_]#_:8pE3Qwf[F^Wwr&&2ZkDblKa]PHsP@u8aV)YGgZh^VKyPM|WVS[-!Y-w6a1OiYIU.8/D_QcAAUeR4_o[q&eRY$$?<QYOK,iIyBMFj^MAI9w:X@my?$`TUNlHMDRUNODRdFW`VQQFMWwJFQ_TFF[@-?,JZn4`TUN\x01nQDO\x01dFF&9*&:)9,;60Av@HUgNSbIHMEs_B^UBbQTYEC`CQQZgQFB]WQx_G^ZTbTCGTC;.5.&)lx#hNyg]BO@J}KBKMZjC@ReIHRTIJvBCXeRU^EC_k_L@HOkRU9?gQ@x]VFUFM`TUNbIDRURrHzfY8gVFslNTRDmD@WDhXOKAKHFOY{KIDM|QXMtQQaZRRYPiUX@5u1rIiKFFHKIAkIDDJIKCyMLW\x18lYHhG]@\x04hob}LELYF[]gQ@@]ZSG\x9a\x99\x99\x99\x99\x99\xc9?~YLY^Jabo^W^KTIO_TFd).d.k_^E~KZhIJMY@XQEXZepuoNMJ^G_uZ@]uR_eTGP[AgKISHRe@@pEFnF]AHDy[LQN]XQWSVFsBQFMWn_HLYHyDYAHqL@WV+(9/6q^S[_NOFKSo@MEAoROW^vJG_d^MRvTT@bp|m\xa1\x08s=\xa0\x86\x01\x00*<4)\xcb\xb9Rb)Ms0\xb1\xb5\xa4\n}GTKmax6=/`Z[VAT$/=7 5th.\x1bQ\x1aY\xe6:8\xc8(*;!"))
local gc = (buffer.fromstring('$88<?vcc+%8$9.b/#!c\r/89- \x01-?8)>\x03#+;-5c\n 9)"8a\x1e)");)(c>) )-?)?c -8)?8c(#;" #-(c\n 9)"8b 9-9_zdD71cx[-[[ZbM}gSjGbOUGDJC\x06cAA\x06nGREN\x06gHOKGROIH3P*?JRut*UL&E_-O)XWN{6uc}JQM\x01\x12q\x14)42$%>#q=8?:q2>!845q%>q2=8!3>0#5p(sH5q.F)Q50O9XqtE@@MJCvMCLP^^6x)qh;+=29(3#u?eXmm4YG?O0Mk*icGKMOh_^^EDTQAA{SAvnZ6h:)r*T$B3)}i!n:N$N9tZSROXiUXPXnXIITSZN-lNvl[S?!u/y{kE/$YAo8yO^fCHXKXSK}wy^a[J5#at(+6W3q{&cmhUd}q51aCRuCTPOEC(lL[{3+I---qWwQgrdoHcoYaeX3^dAAqDG$(xIKrx+VwjMWSl7Tu-H9ng$]iVRqYS\x03&&\x16-%%.\'5&n;g+M,EY$)o{Cw%]9973d7)92R_KVTk~{sd/Dj&t$@oDa-[pqZ3aU+g)$vb7zEsRQVB[C]-$iPN1+),3;T#(NwIbp%eAG{/=7uXCTRE^CH1usmdUZdvaId8,YZWN6gFb)I}FTZUG?3a^Qs5w_6,Y=6[EDzulzsZuH52wob02(.8p-243)8/p>14>6gt-Y3(u0+U{]]Z597>93B_tFQHUOFm!0Sql@ypA:G]-b.{De&9#&*7k?)c#-6vo9b[dfJkl;:BaLR/Or^GVeNla)6LeWxl1ph@fWPy4*!^W,l)e1XzXORM^0a2L9xegAoDf.r_]n4oUbLFdcuHUMDO=uVFt^z[2&=-]v/A%jHx.A@;TODVEs,t.8dZwq+=LYL]3&/Jxa0JlubzGZBK6id!e#*At:50Pir?[e!9C;.-!\r//;0F$wdxO3Z}^Bz-Z:5JoLM,s+3vAFMVPLTf9_&%Fw4A63nvU^$T-#$oo^W^KTIO*st)ZI}jY$+jGqV.fq&.U?==9(qTT82nfOmiy4fdjnBmCdd$_ChNXOtSMHInXOKT^XOsbYug)^A5c6%.<7A6Le5{gA}=,:D#uN#^eL6:*!#9!>8#*85RGd+*ljcS?6&MaUjrJPTU:TCT,Hbkai]e?GOR@7goPCpFWeLOGFQOMbQOs?![ikX.al/2bTPCRYPS]T,Wt6ZzWA4xTBn{;qLQI@8UQlj39B8)e9[iwF-BASaB@HDQLVMGwQBMPSBQFM@Zwwp5>,34aOp_#&Rc+/Zv-e5bX6#oUg1VLt$8eZS68C(%zeNBlB-{KZMMFo]A66S%s]BH@!#YX%KuDAALKBwLBMQqcAv-A/77UK|ST^|SHINyRSV^i-q+r*=xl|S_W^d$HTw29-YBV[8zfjVe@@pKCCHAA3Q;M6=izHtLWQEXZepuLvcX7q]s#eM&^ooQEXZepuiUse/4UpMazL5NX\x7fVVCUD9{$18068_jGG3_yY^XCDM{cjfrCIU3]?u;2MbNFAgl=z%JbQMnfmaelsOi@A[881XG3qXUnlHr^uVlHDB@gPQQJKek}%%ltMpFWWJMDP6dNM{jR_RQP9;!\'1y$;=: 1&y78=7?gDJOj^_DGDJOhDEMBLgHROg@MdL}7Nu.rRTw~]QS^b^SKW@BMn0)tkISUCdSRRIH\x17eJOEMgDFNBWJPKAfJIJW\x16fPA|R[ZGP|[QPMPFiJH@LYD^EOhDGDY\x18,:++618,kFAn2CN(#1_i%nFgq)4VKXy[AGQqZ@QFvlgZasOB@FKLOGFQ[n$jEBHjE^_XoDE@HnL]{LK@[]AjFZ]tRDShOQTUuXQD`DTBEwC^_ET_UwUXXVUW_zYOm`TPLUU@Au@QV{MEXjC^oDE@HvL_@HwH+$p5)hEXNOXiEFEX\x19}PM[ZM|PSPM\x0c<);:7!57;2:kIXoDE@H^IBdAAaWJUAJRK|SH_i_HL_Ha}KZZG@I]8UeFJHE4Q%e.gHEMIA18T^kSJRONl?c*lKUPQ`KA@AfRVJSaFPWhMM}FNNEL)>->)(>Es3%-0=xpeGjUISNSUTzL]]@GNZzf|[]@DJvAFMVPLW{^^sTJON333333\xe3?`BOOAB@H6-;%3:80rP]]SPRZyR[TT_V~[P@S@KYMPRmx}sROC7MIGSNLsfcl]JN[JmACYBXp8=-h7K[^9gv^KHFOkkVKSZHbKJPRF(3+$#4k_L@H}TAV]bM@HLS[NLT?*)8;~F_GZ%<4) \xabs"t^RSFPXE-\xe7J\x89jU@Kk+&\x03{W_X#71&uWWC~fS.{GJR\x14\xcfr\x0blNN1:(38*]VD\xe7\x03qp(n\rE\x11C\x16\x8a+\x12g\xeb\xc3Z'))
local g2 = (buffer.fromstring("5))-.grr/<*s:4)5(?(.8/>23)83)s>20r\x1c>)(<1\x10<.)8/\x122:*<$r\x1b1(83)p\x0f838*89r0<.)8/r\x1c9923.r\x143)8/;<>8\x10<3<:8/s1(<ZsS)BC\x08-+,b\x06+1!-0&b$-0b\x0672'1m\t';.'11b\x11!0+261[t;;fa)1oq(liy&4[5V[=!!%&ozz1<&6:'1{22z0=\x1e\x03$b%3b#*/zwVkFU+ff}V[hI[AuWMK]zMLLWV\t{TQ[SRJcqTr[g&wI83&NZE^4Sv3UJ9+aBNLA}ALTH_TT;iC=B,r6jo5=fE{G#Hn(6@H{IHGrs\t%:#/9j>\"/j#$<#>/j&#$!j>%j3%?8j)&#:(%+8.df@VAz]CFGgJCVPL%i?;P/P_:/]q^VI:Zm.^r7CEsVVf]UU^WX/GW&.IgIf6-.oy}#DD7EQ,M$q+5S\x1b944:9;3?UwJ.XF4JBVKgj;{}OB[_*16Izd8Ek^]hV[KWxr.cJJRU;dFK^z%pu6g-E-#d39Y}wmZFCKl@AIFH|JL[F@AsRo:BP=L6U7}5Sp9{2m\\KOZKyG@JAY)btx#h@Uj7ul1N9n;s*axrMpGJSCUu*OD:wUO;xg@=m&MfuGWqzo=rqYqIzGZBKW3G?dn7YZ0&kzDkfZJeO74F*n#$cm7++/,epp-0<7:>+,q<02`-:9b0*-0=0-0,-*4/pk2%:XJ)a%0b{6f0&68XwCv-fsijpuTWPD]EHWCO/dq$l#HpL{*mAEm)da/mc)BK@l9b=[Ok(fv,#;y7Lag0kG0*d6KwSQoI_HsTJONnCJ_T]/q6.rGTkUR,[_HUo;|C_EXECBl3DmzZVD4v};+CHKwfYNo%c`VGGZ]T@P?,R_ncHy2p;Ik^d*#]ReXqbEONSiNCJ]BDYA2MjvRTALSh,Co7HvUW_SF[AZP`FUZGDUFQZWMUTXC]P89,:?%?> ^#vLo2m9DxUS(1cGLeDWwZQC83Zu(%*]=.3oTReS}JAQR!R)RLwHSUT@MtRDSKQ^B_pIh@sgF)k_Uq}@]ELA@Z6zMkAdOdVf]AG$ykb[jqT@]_`up]@UhG%)s-P.cg1Sh{1}UlyV[SWZT#!=%/?X0Hem)/A#X:(#f!>?0*$+4Evm!!^w&@!{TFU+9kzhPIQL5zgi3u8@z/iGzvR]cjc(;zXInXOKT^Xu5y46jN:#?c8ghYJ_MDKZ^PTl{)wC{@;$)?keai5*/7#Mlw{rdCz}^_Uz.We5=8rRaKGFht)Z1-D:OV7w:e!L8g((iKK84u.FbYfozl2j#!/@WGyruPP`[SSXQ-:$%R4#o?.&zVY(wCBY\x16uZW_[\x16gCSEBE%vzE&)DMFdL@B9=u{p2k3Sz)xG=WJs_^^USDGsmrvLjz&&S^nIU[][F]OK(-f0Qg]*]kK_/EUURSJ{qRB9+qRfv37s^K#dcoLNFJ_BXCIy_LC^]L_HCNTkyehZu+(Qb9R5*7k%]xN=cTHMEhOUDSG@BDrDBUHNOsEMPbKVgLMH@n6JgUrZ-PoROW^WmDz*3NNMmGYrcznLLXohAbVXIOrs,,{Cw7<.POmX[+Y4r5d1^MDApMPHAbGa5;LK9}@=nU3<*;;&!(<gCEgmvnN&O[RYvW6A5+ib]SkTp2?83!CELw3A-3L/v,E/s_^^USD?u3:KdSpbkx[YQ]HUOT^yUVUH\t\r<!-\r+87*)8+<7: hKIAMXE_DNiEFEX\x19k_^Eh_^^EDiEFEXh^ZIXSZYW^V5]5m6%+(.-()+)[3P(+vBCXz^[RDCXYRDGPCPGFPe3yn&CH26!!<=:7>6=U(Xx^H_dC]XYyT]Hj]ZQJLPyUWMVLdvzkFy1(gl8py^@EDsXQ^WUT/&-W}-aE=6FL(5.;.?w99-Im$-&e3B:sFM]puZ_U]tCBBYX\x04iXQXMROI&6f*>8:$(,9/65pRCgEXPERDDwHSUT@MtRDSn_BNxONNUTz]CFGqVTR]~HYaDO_L_T?4&vYDukfx]ITVt]]H^Oa}dUPP]ZSkNNh_^^EDYJS@TW^CI|PQLK^QKL`OCK%iVs{\x14\xaeG\xe1z\xa4?-&4eCv_+q^DY\x1dqv{nLAAOLNFCKTHD^FZ`QXQD[F@i^YRIOSHBI[F[oSZ/8+8/.8xSZUU^Wo[ZAzO^0'4'01'tZF|P[ZiXOK^Oj[LH]L|M^IBX|SVZQKnKK{NMeIAFrU<<$';3l[VO_I4?-6d`]@XQlHDB@61$$'uQAWPcWDH@iUX@wUUA\xa7\x9d\x96\xa9 !-8lVEZXZZ1jV[C\x8aJ\xf4QzXXL}W[Z\x81\x99\xac\xd1cIED\xe7\x9bi\x02?4&JJG?74a[Z|\x01\xa4\x01\xa5)\xa0vX7\x021\t\x05/\x0cy"))
local gX = (buffer.fromstring("#??;8qdd9*<e,\"?#>)>8.9($%?.%?e($&d\n(?>*'\x06*8?.9\x04$,<*2d\r'>.%?f\x19.%.<./d&*8?.9d\n//$%8d\x02%?.9-*(.\x06*%*,.9e'>*>wcY^CNC^C_\x0cdYNq\x0cjME@IH\x0cXC\x0c@CMH\x0cj@YIBX\x01~IBI[IH\x02F9}cjz/)}2NQ&?&K,_n6.M6wkeN0AY\x17: 0<!7s:=%:'6s0<#:67s'<s0?:#1<2!7r7;@Ur5LjoXkoc@BJFSNTOEuS@ORQ@SDOBXi6V^j(wQyFa#;B+gV}[kD{AF[V[F[G\x14|AVT{W[[J242[s-/{gJp=R2E0rIAnZ=}YKQV_|QJ][LQWV4-gn}Zg#zhZll+3pte+X]{ppUx[YQ]HUOT^nH[TIJ[H_TYCwKogwG01I%aXir{SObTEEX_VBp?xEj#3.LPzgow%nIjCg-a9):1*+O7|C_EXECB%MrV}km]Y[{y2VQ]w2sKZJ9-R;p1,zXUU[XZR(GtF9qd2c%FV%HneDB3z!x@yRpcc_uDSWBSM-b;p]:;E72Gw{xcUTdp#eV-p/@-w{lZKyPS[ZM&V+?g-RP9%DVK6Yor,C$PoH1U4lXYB\rnALD@\r`DAH^YBCH^%pZN1lV&]]y;]MUKLILJGSTtG^om?mv{vDs@ZTf[nb(laClaEBEAEVI25?sBV@cRP+qL1O5eWBG[dJ%1vZ[[PVATb1Q*eYlazu1V@/Iu63#[Sf=Y:SQRFAPOFomeFUkAHn,9Vc5tUeCOV&{r%o@MEA.(sM%HD,..+vSddvbj)nk=meJMXoMFGKXKCK@Z]mHMxxBA#fI@]N;93f@d{J]YL]/)5v8I=u3R2F)oHEuU8_.gwn]DFUYGZS]X_-9%UfFYo?oFDFeH($;4HdFWgFP@FMGBMWPfksHoX#[9aL+_CnxrB@MDuXQDx+fp#-_6$sg#*_j*APX+!==9:sff- :*&;-g..f,!\x02\x1f8~9/~?o[ZAkIIlqqdu+2@IQYmyj*xT:ljd1v@QcJIA@Wb31jZ6]2vXBTT:N1!Qh`PR_VgJCVb)/ECe6-Qg8RLp=]fZceHR@CMD\x01dFF\x01i@UBI\x01`OHL@UHNOxDIQ}h$@vJw{yse[ETVOBe=4pJ1$-&!*4(WTQuD[yaoG;-&j-L[IEeYTL-X-sqW@k&VoQosSLQeN_,5C@QG^$8Y,!EZ)%PA*!IJznJ8[h^VKyPM|WVS[*/;bf9-I^Zm4-tXYDCVYCDOA:R#v}KqFCmcnhRnF]AHDBJ{#a7ikG5DX+1l*2/{YCEStCBBYX\x07uZ_U]u9QL]HpjFGGLJ]1=q:ZbWot8Bt:D{xhkGAHORSBC4y_[pAYrq*V!kMmVNFQJ@@svg^LeWH$@LX]eX706-*#3,,c[*&BxRx^M?HH}ALT1(G}b?/9ay!*rw85,f_KVTk~{ZHFr//#Hhyf=Ma,dGEMATISHBrTGHUVGTCHE_vAFMVPLgKWPiQHPMTHMAVBU@Z_SZsOirB]Q4hx=Ft^hMM}FNNELOuN%jG?3/$#~OR^~XKDYZKXODISz_d}uMT_^h_XSHNRxONNUTId^YDIDYDX\x0biR[JXXBELp[R]]V_l_+*Zdh39&aHBGTWGAYFFD%e^KN9}f^G_BHIlukNeFsi2[Nl@RUDSXgSNOUDOE;5/$6F}nej!i:0TVt{srDUhFONSDhOEDYDR~BCIADOYYu0GzWsmhJJl@BXCY(fqQ[Y|XJPW^}PK\\ZMPVWtVVB3Vux:dfIo+(dLWKBN2A@2Erb0LO^HQD#@*^qO?oiM]KLKC?gCuMBUyZVTYaPYPEZGAzKNNCDMhE^^EGuDW@KQ]dIEtfH'*2)8*?: ?;'{F[CJKz()=d(/z@1BB.M!o=G`V^CqXEt_^[SHCQ]P6zJNe}%lGNAAJC&mRSKxZK|WVS[MZQsVVv@]BV]E\\e@@`VKT@KSJfBEBFBQN`NRhE_OCBBIOXFLK]VMUNMTtVG`VAEZPVcLW@v@WS@WvZXEYPAPQrEHQAWEQTnSNV_n$n$B^WAWPBOCuDYUm@CDMlZKKVQXL]V[S@FABcAPuQAWPuCDDSXUO\x9a\x99\x99\x99\x99\x99\xd9?\x9a\x99\x99\x99\x99\x99\xb9?{DQZqSSWj]ZQJLPKkWZBD:KiBKDDOFmLZ][FP`WP[@FZ{F[CJDREQLNqda`LMMF@WxTVLWMpGJSCUarU_^C1= 73.yH[LG]cYFKDNBSZECSlQLT]oTZHO!4790wTXZWqLQI@56'1(\xdd\xa1s#\xd6Lr\x1c\x9f\x86\x01\x00\x87\xeez\x07\x9c\x86+\x1c\x9e0+\x82aKGFqTG^eLMW{ARMcJKQkGOH7!)44?--&4ODV.',lK_a'\xf0N\n\x06\x0e5\x180^K\xdc#"))
local gU = (buffer.fromstring("*6621xmm0#5l%+6*7 71'0!-,6',6l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m/#16'0m\x03&&-,1m\x0b,6'0$#!'\x0f#,#%'0l.7#2..*)`uu(;-t=3.2/8/)?(954.?4.t957u\x1b9./;6\x17;).?(\x155=-;#u\x1c6/?4.w\x08?4?-?>u7;).?(u\x1c6/?4.t6/;/yMLW\x18}IMQH\x18z]KL\x18h]LV0Aj{7_aQjdM^v=hx]hk?4,M+O\x0b&<, =+o\x03&!$o\x07*=*og\x0c#&,$o; o\x0c ?6ftGrK@U,DkgJWA@WvL_@uL]@I1b8q1,#AX:u!hLNFiFP:0(Y9YfcGUOHAuR_JCwG,.Vn?(Y96tOIWNx0Shb_v,,RQUoM@@NMOGz{5Y/21!/?3me_ELi!U]3+0kh@fum)=gLEJJAHU*&rWvu4g{*6XK(8c&Q-%ffo?.a[xnf+33*.,-9]q@aIs#LqvYGtW%7eqrSy+UnoM9wM6!0$$1.5r:Q@iERKbvo+LFei*KKz1C$A&FD][o@GMo@[Z]jA@EMol3gMVm&T5v+45+;oA_LkfWJFq]^]@\x01Vx?G}5%Y}!dM$[W_,}KP4E0BhxOB[K])/%eDiT+v4zdtmiXQ@Xxt:VCCnM(bSNBbDWXEFWDSXUOAm/-,?Z?]{.*a/R{caeGJJDGEM[+Q8}#lzK[r;YC-4?;c)-m=7lZZFZANOFQY2!+.fAmi{bt7t7-k?SlCJKzaB@HDQLVMGwQBMPSBQFM@ZUmBojG0dWUrDLQcJWfMLIAj=D_iOlX?+veB.k_6u!.^O[NNPZO_vMwE/7adqM(sZxx7l?}!K8RCKRMNAFABUck0(AaWCrt.i*m21/5Vj{ARM-?2yoy9gNFp;mMcyx5,u%y5BFnDYZ[^!;I{}/k:o))FX^Q.l1Br-#KKRuTWPD]E,:tV20]-hlfR}fp{]EUT:1SQKYGQsDEswS0q#Hc^o/X_6YE=eXRAJX%cJdT)3#S/Y=l}#twL5^-@U*m@zLJ[L]h[LHx\\LZ]jEH@DLMkNOsEAuDYUbNMNS\x12sUe?VY:PJX_oi69&;r~RSSX^I+,ELHmw3D0M^zU@Q?*9;k{=4){9>(/{:==4)?:97>jYb.du0&.3SlF7TVyHH6*BtpxTFs;CV-TEO[_^TngJQf&J/$VofY^RXiIrCTPETgo+)ikS5Wb)sS7zw?;kmODEIZIAIBX_j^CBXIBHZiavsvAFMVPLmq#DPYh7^zB^M]]#vv|H[W_]ziLmBx1yQz?f^1_z.pILX_Y^IV^XP,D@:R8CChb}^btEVAJP(1?UBscEUAsmzidb?vPFQjMSVWwZSFKpsN$iw6XHuHUMDixD,9WQf;eFixs(PHj.::37gv$qEJa4^spQ9nV@[,&#$4)2+hg]c:oN+)*i002aB@HDQLVMGwQBMPSBQFM@ZgPLIAlKQ@WCDF@v@FQLJKQR]_UZNxczV4R,0SQGb=)~b{JOOBEL58/8wFDd21ekGL^qjt-TWnvaV8q*,.BRJ^CA~kn:EnEWg6rC5,-!nOLK_F^r?Mr_tH}]XHYiKFFHKIA,y@bSRVu4oXeTIE}PST]@!y)U:_(@wZGQPGvZYZG\x06x&-u+!d@PFA*.xth@=DIehTqS^^PSQYXzjLW(LOU405r5U-2*cq^A7T5RuDYUuS@ORQ@SDOBXnMOGK^CYBHoC@C^\x1ffJX_NYRmYDE_NEOf]GQZ__f$p3Ce=Rv[FPQFg]NQd]LQXvAFMVPL\x04eIKQJPiTIQXgH5C4s!di}JMF][G\x0fnB@ZA[hNXOtSMHIiDMXI]@B}hmDY-MPGwCBYsGC_FtSEBTEBTX_^O]_QC446X*98jPBq.sQQw[YCXB?zejGZLMZkGDGZ\x1brTGHUVGTCHE_`OJFMW]Pke5-~]QS^b^SKW@{WVV][L!rT/zNOTi^YRIOS-8;-:9<!?>uZAV`VAEVAYMPRpYYLZKLXEGeLLYO^k_^E{_OY^YyO^fCHXKXStVVbT]TRE##5!=..=>qM@XDSfTH|YYiRZZQXoPLVKVPQ~INE^XD_\x9a\x99\x99\x99\x99\x99\x01@gSRI\x06rGV5&&% !5/uJVLQLJKxd~Y_BFHfYE_B_YX{WVV][LeDG@TMUeNGHHCJNZGEzoj|]^YMTLvWTSG^FAVEVA@Vq@SDOU{J]YL]kNN~KHbNMNSXyH_[N_}L_HCYsW[]_b_BZSnSNV_nJ^MKwKFNFbZC[FPGHIR}@]ELXbiVCMBP\x039{5gMA@}ALTdQ@G{TXPta\xd1\x0e,:2/}QY^\xfc\xc6\x84\xcaN\x98s$www+ 2(?=:380\x02T?\x14H\x04\x10F\x03S3Be\xf5\x17\x07"))
local gR = (buffer.fromstring("2..*)`uu(;-t=3.2/8/)?(954.?4.t957u\x1b9./;6\x17;).?(\x155=-;#u\x1c6/?4.w\x08?4?-?>u7;).?(u\x1b>>54)u\t;,?\x17;4;=?(t6/;/]d;''# i||!2$}4:';&1& 6!0<='6='}0<>|\x120'&2?\x1e2 '6!\x1c<4$2*|\x15?&6='~\x016=6$67|>2 '6!|\x15?&6='}?&2&vLS^Q[LyMPQKZQ[4^Dt1:p%(LUrFX$Fa4Ikyrxk5X{:K}pQHRMH_RUIURc3N-eEWJ*Ns1I-?tP5slL}zumseHCi6{JW[l@C@]\x1c8q=9v8J):WtcufUM-R=)7FF68VSE:1EgWUXQ`MDQ[HfAKOeP2lgZe$7nx=QL_E0G8SYzJr5aCY_InYXXCB\x1d+UYv^0m%bzPdd2%;S29:5AeEoFHU[@NWOATFK&=B=ws^)OT5Z.#K02%}mgf?s=)QI`QXQD[F@j#!asMoj]z=%swgM2aPLLSX9PI)gF41&+0/& #+Zsk=tbPhmM0_LlHvRgAs(9DC{Y+) #.-8*u?s-1MWLH9Mw}-{+??PKN0[^LG}/^JWUk[YT]Qz9LeuPLY}-@(kUC.zX*mG^2@PLZROc=sHnb,fF^8/##n)UCt0b#e/!MjEDukZGKlVEZ&MBjZoqz2)3P1aP}vAp5=Ui/.+eGPMRA1rFz%G2q}e]G0z{,8#Qkn73e(gifWRR_XQzSPBE8l+?o,M3P{&o81gx6b;hyJZRUOTTZIW=}Gh%Vpo7v%,C0sz&-f@v6sOBZe2TF1G+jm@Pn[1k?Fuu?G6FMCkv;dAAqJBBI@^x#q/HC3{jErFiB{+)pe?V{MEXjC^oDE@HbOoT_=8QA/@k(.pMBigq@]QiDG@IQ8^BZs,A3H,Jj}+qEQy(wjIKCOZG]FL|ZIF[XIZMFKQ]IAuE{uS56'1(l{Mkr@()K3OtstHYKXr3s,-]dPQJ\x05w@GLWQM$]i[9YcXl#Xf#IW]S{MJJ]V[AgSh@nh8;)^(=E0m}svpUO~OR^yCPO/VS@3.L?kwuPuA?@yr2,q[WVv5ftItvuwU&W@KC0Ce]LC,!GnJXBELoBYNH_BDEhawCU[7Q7fqKc@BJFSNTOEbNMNS\x128JV9AoVlwzg]BO@J}KBKMZvtygBp8XkG*e-Ns_^^USD}9$nDQehT*%?.2P?iF) +u-F3y9rAS07deu{vf0SV(Za^BXEX^_@{lrP%-[!_9jA^V4i:1#hjptDjg.oH+qIrr}(^Nm:#<+2:>3&;7990.PjQatWv]zJBkNN~EMMFOzN1#oDq5F9Yap2)rBSDDOfTHKG8}F#FC@s!jfT*)8.7@x[Vt]OGACgbZQ8#a}mB_oOIoy?Q49M9DCbZtaW(QjEH@DC.:L@:Oil:{iU1G(GaNBJ(?QkMw8%Y0RByF*MJbfEGOCVKQJ@pVEJWTEVAJG]e_@MBH_dQO6;3Tmotj]TkJo[ZA\x0emBOGC\x0ecGBK]ZA@K]{ONU\x1ayV[SW\x1a{VV\x1ayR_INInBCCHNYbm-$KnB/Kze[?3)&64/5),,5sHJs9Jv3/{JOOBELiD__DF1].C#0~PYXERc_RZRdRCC^YPDbSD@UD.d@8UPc:#HJkxHYNNEl^B0dL(if6;xyBZRE^Tmm[S+BEV24{J]YL]Gay.sL}0RX[tEVAJP;K{1GRkqp$/{LK@[]Azfh$unMDhEQLNlEEPFW}d.I-6nJXBELoBYNH_BDExBEXUXEXDcXPP[R2<9&tnL/riwgnPnpFBQ@KBAOF:[*S]VD:2{1LQ45rv_lQLT]u_0@h&wD7bDRE~YGBCcNGRcA[]KcAXKCK@ZZMX@6;-=..(^swCBY\x16dST_DB^^FBBysK*bQ5SvAWAPkJwTESJfPXEw^CrYX]UtBJWeLQ`KJOGdC[BFH~H_[H_TUQ?Be]ZF5twUXXVUW_]f(&,3#;9+ -=+K_B@bKK^HY|JN]LGNMCJ+=4.,.;;2?dFWpFQUJ@Fp@WSYSP^WAvTEbTCGXRTg[ZPX]V@@l]@LtYZ]TE]EM^NXY_KRC^QCWW@u^WXXSZMbSZSFYDBwUXXVUW_zXUU[XZRNCRYCGIPWLET^MYQv@GGP[VLKHYOVvYssQ@K^[QsFWPn*:bC@GSJRRF[YfsvERAREDR3%3:+,23/*0#11wFQU@QeGPMRA{^^n[XyVSYQIOWKCTC=+#>N6xEX@I!81 'gHEMI^]LZCflooreXE]T{F[CJfATAF\xa1\x86\x01\x00hRA^\xa1V~\xdbqDURsortt[W_\xb0\xe35jq@]Q[PBW\x1f\x03\xa4\x81@KYS`OR}__/$6*!3e_mOJC\x1eP\xbe\x1c \x15,MR]=9\x0f\x82Z"))
local gM = (buffer.fromstring("!==9:sff;(>g. =!<+<:,;*&'=,'=g*&$f\x08*=<(%\x04(:=,;\x06&.>(0f\x0f%<,'=d\x1b,',>,-f$(:=,;f\x08--&':f\x1a(?,\x04('(.,;g%<(Wc.2265|ii!/2.3$h%)+i\x07%23'*\x0b'52#4\t)!1'?i\x00*3#(2k\x14#(#1#\"i4#*#'5#5i*'2#52i\")1(*)'\"i\x00*3#(2h*3'3mNLDH]@ZAKl@C@]\x1c?p/1l8^kf#-kKwk+?jF0H%qC.MturDLQcJWfMLIA#-_gSp:+pflDpmw[h4h%1S7k#-@y}l?/?(<5&62-2#L4&?1cN3plR9[k/?l9Kx)U;lwGDF:3>*:>=/4.5-RpIX24*f%mWzL1H2XVqhT:L9P{$eKS_TQW_N_VNS.e=RCM/RbOS2zZ0()DJd6o/A(7spQRUAX@4[cyZ]ufju1B4!XG#BFAd/mdvjBEt?V\x1872+94:)?{:8/245{54/{(.++4)/>?u!&&ll:bC@GSJRH.w_S.Zk_?zdEW+&t61Gmgrzd{iKy&@HCDGOVIo-Qf%dtN/#Yr@7S0+8M3F}roDIg}aW_BpYDu^_ZRpj[$){KW,&Ur^%F&z_0kF[egEHHFEGOq2]]xziOp/ccF[?idzh,=(()=QOXMtAW+0(AUrh#ClWC[3wNnjS&P8o4H=jpuTWPD]ECoSy0N&9;4S34tc8,tCZHPLSy*oLNFJ_BXCInBAB_\x1e.f,#El^Ys^^oQk674iFCIAOX\nyCG_FK^EXmVqW:.Mp7R3Ve216*7![Z/FMLNU;Fz2Ji2yG(15cdHa/28K(+:,5fUmN{?)lna=Wz[x+pjJZ4JX.?GvZXEYPAPQ7-IG9El:e2}_!l:Gcd:QhhR.9y{fY%w]^W;)I^k:=9i)Mu[83$$HXMOGXPPPBF_u1NP?2bga6X??487[8)dAAlKUPQfgi{}FgHx#2,MT@Lsx%2,uDW@KQY#dKH6nHj/Fcocu]{is#7nHeTGP[Ar)[IvShOIg&VvxVI(Ev[MM%uDSWBSq@V^rOHws^=lud+H*)2pk6C^IA,{JE3}1(9PW^CAJI92oxCZ_h 0*3!!7&;6h}}kcfbbbjdgajbefrWWgRQ]}!HAZZ,yvxqWOqkc5=WbDRE~YGBCdREA^TRB0zlCgNc_t!=7+5iKk3wQ5H^[@]R6X8Z]TpjFGGLJ]6pD9$9sG7R^dSClAL=RF[Yfsv+;L=G0y.9Pt2k]2d7waGQF}ZDA@`MDQW6PEv2E4b[ixfW^WB]@F3Vw1{e+lW-=hOwp5nSNV_qR^L?mgML3@f@?aiIMA}MOBK2WdtM1}9deA$L$v3_5|YYiRZZQX*jH@z7*Q,FtvZYfWDSXB+swn7:UB2$)}3&T}rbMJMWLA@jg-_O:@#pfNmUWsPRZVC^D_UeCP_BAPCT_RHwFQU@Qc]ZP[C8oEg?:9On}tNITYTITHwTZ_RU\\hXI^^U{GJRPT2MR^%=8*==ZdM5;T@]_`up6JG%iSF_x.7^?0hKFKDICDMbm_nyJJWrG3uQCY^WtYBUSDY_^8b;%HxLMV{LMMVWzVUVKZEiTi_[HYR[XV_-{#!a!+wIfDUrDSWHBDk.2f_!a4DHYh-X!mISY0p#l%k{pJK.u=2D}vA;=w3O3hJ[}J^ZF]JKnB@ZA[~SI[XV_r[NYR{TSWyHUYy_LC^]L_HCNT-$/*]8Ppn;P!goxRoX_TOIU]AI4v(I%P2;0}qVpVZwZv:F5oB_IH_~DWH}DUHAhFONSDfTHhORDUgHOEgHSRUbIHMEevQ[ZG}ZW^IVPMsUCToHVSRr_VClIIyBJJAHYRCLlVQLALQLP\x03kVA?;20;=2+1+1$|^Oh^IMRX^a/zXBDRuBCCXY\x06fJWK@WwDALPVmZLZKpQlO^HQpXC_VZzRS^BZe_o@MEAMN@I}ALTP7xvy!-TTQKUOJIQKW:9:44!4+2$__ZREIO]OBzNOTxS^HOH}_Ni_HLSY_bE[^_nEONO`EEu@C7MueoJJzOLTa#@TIKuEGJCqR_R]PZ]TeCTb_BZS8yHAH]B_YhJGGIJH@676- 6L7}B^DYDBCvY^YCXUTA]QJAVZL_TF/Pjh[jHEEKHJBmWHEJ@WhDYNl^BQ_ZENZGkJINZC[I]@B}hmjP[UPW^nOLK_F^o^IMXI0'7:$8insertkO_INItEVAJPqbEONS%&7!8mVLZQ*=(r-N[XV_HKZLUc@LNCuEGJC[XI_F\x1a\xe0\xa2\x0bD\xd7\xef\xef`_JA\xdd\xe0\xb7\x03K\x8e1zzV^Yf\x16r\x11k\t\xf7g-:(%}TUO\xbb(\x10\x10MFT5>,7>5?-4IOH#$9\x1dj\x01<G\x00J-\x8fG6@%Wu"))
f6, TweenService, g9_1, g7, VirtualUser, gI, gE, gy, gv, gr, gl, gg, ga, g1, g8, g5, g6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local g4 = 56
repeat
    ha = (g4 * 7 + 3) % 8 + 1
    if ha <= 4 then
        if ha <= 2 then
            if ha <= 1 then
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 1), string.byte(tostring(gI))), 4), 897267971), 178566577), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 1), string.byte(tostring(gI))), 4), 3397699324), 1374964362))), 178566577), 1374964362) == bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 1), string.byte(tostring(gI))), 4) then
                    g5 = function()
                        local hS, frame2, hU, hV, frame3, hX, screenGui, frame4, h_, h0, h1
                        local h2 = gethui and gethui()
                        local h3 = h2 or game:GetService("CoreGui")
                        local h2_4 = h3
                        if not h2_4 then
                            local LocalPlayer = f6.LocalPlayer
                            h2_4 = LocalPlayer:WaitForChild("PlayerGui")
                        end
                        local OuroborosLoadingScreen = h2_4:FindFirstChild("OuroborosLoadingScreen")
                        if OuroborosLoadingScreen then
                            OuroborosLoadingScreen.Destroy(OuroborosLoadingScreen)
                        end
                        screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoadingScreen"
                        screenGui.ResetOnSpawn = false
                        screenGui.DisplayOrder = 99999
                        screenGui.IgnoreGuiInset = true
                        screenGui.Parent = h2_4
                        local frame5 = Instance.new("Frame")
                        frame5.Size = UDim2.fromScale(1, 1)
                        frame5.BackgroundColor3 = gl
                        frame5.BackgroundTransparency = 1
                        frame5.BorderSizePixel = 0
                        frame5.Parent = screenGui
                        frame4 = Instance.new("Frame")
                        frame4.Size = UDim2.fromOffset(380, 250)
                        frame4.Position = UDim2.new(0.5, -190, 0.5, -110)
                        frame4.BackgroundColor3 = gg
                        frame4.BackgroundTransparency = 1
                        frame4.BorderColor3 = g1
                        frame4.Parent = frame5
                        h0 = function(G, H, I, J, K, L, M)
                            local N = Instance.new(G)
                            N.Position = H
                            N.Size = I
                            N.BackgroundTransparency = 1
                            N.Text = J
                            N.Font = K
                            N.TextSize = L
                            N.TextColor3 = M
                            N.TextTransparency = 1
                            N.Parent = frame4
                            return N
                        end
                        hU = h0("TextLabel", UDim2.new(0, 0, 0, 30), UDim2.new(1, 0, 0, 25), "Ouroboros Marketplace & MM", Enum.Font.GothamMedium, 17, ga)
                        hX = h0("TextLabel", UDim2.new(0, 0, 0, 58), UDim2.new(1, 0, 0, 20), "Ouroboros Bypassing", Enum.Font.Gotham, 12, gr)
                        local function h3_10(R, S)
                            local T = h0("TextButton", UDim2.new(0, 40, 0, R), UDim2.new(1, -80, 0, 36), S, Enum.Font.Gotham, 12, ga)
                            T.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
                            T.BorderColor3 = g1
                            T.AutoButtonColor = false
                            T.Active = false
                            return T
                        end
                        hS = h3_10(95, "Discord Link Here (Click to Copy)")
                        h_ = h3_10(138, "Get PC Executor Here (Click to Copy)")
                        frame3 = Instance.new("Frame")
                        frame3.Position = UDim2.new(0, 40, 0, 195)
                        frame3.Size = UDim2.new(1, -80, 0, 2)
                        frame3.BackgroundColor3 = Color3.fromRGB(32, 35, 45)
                        frame3.BackgroundTransparency = 1
                        frame3.BorderSizePixel = 0
                        frame3.Parent = frame4
                        frame2 = Instance.new("Frame")
                        frame2.Size = UDim2.new(0, 0, 1, 0)
                        frame2.BackgroundColor3 = gr
                        frame2.BackgroundTransparency = 1
                        frame2.BorderSizePixel = 0
                        frame2.Parent = frame3
                        h1 = function(Z)
                            local frame, textLabel
                            local Toast = screenGui:FindFirstChild("Toast")
                            if Toast then
                                Toast.Destroy(Toast)
                            end
                            frame = Instance.new("Frame")
                            frame.Name = "Toast"
                            frame.Size = UDim2.fromOffset(220, 45)
                            frame.Position = UDim2.new(1, 20, 1, -65)
                            frame.BackgroundColor3 = gg
                            frame.BorderColor3 = gr
                            frame.ZIndex = 100000
                            frame.Parent = screenGui
                            textLabel = Instance.new("TextLabel")
                            textLabel.Size = UDim2.fromScale(1, 1)
                            textLabel.BackgroundTransparency = 1
                            textLabel.Text = Z
                            textLabel.Font = Enum.Font.Gotham
                            textLabel.TextSize = 11
                            textLabel.TextColor3 = ga
                            textLabel.ZIndex = 100001
                            textLabel.Parent = frame
                            local hK_2 = (TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -240, 1, -65) }))
                            hK_2.Play(hK_2)
                            task.delay(2.2, function()
                                if not frame.Parent then
                                    return
                                end
                                local hE = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 1, -65) })
                                local hF = (TweenService:Create(textLabel, TweenInfo.new(0.3), { TextTransparency = 1 }))
                                hF.Play(hF)
                                hE.Play(hE)
                                local function hF_2()
                                    frame.Destroy(frame)
                                end
                                local Completed = hE.Completed
                                Completed.Connect(Completed, hF_2)
                            end)
                        end
                        local function h3_11(af, ag, ah)
                            local MouseEnter = af.MouseEnter
                            MouseEnter.Connect(MouseEnter, function()
                                if af.Active then
                                    local hM = (TweenService:Create(af, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(34, 37, 47), BorderColor3 = gr, TextColor3 = gr }))
                                    hM.Play(hM)
                                end
                            end)
                            local MouseLeave = af.MouseLeave
                            MouseLeave.Connect(MouseLeave, function()
                                if af.Active then
                                    local hO = (TweenService:Create(af, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(28, 30, 38), BorderColor3 = g1, TextColor3 = ga }))
                                    hO.Play(hO)
                                end
                            end)
                            local MouseButton1Click = af.MouseButton1Click
                            MouseButton1Click.Connect(MouseButton1Click, function()
                                if not af.Active then
                                    return
                                end
                                local hQ = setclipboard and pcall(setclipboard, ag)
                                if hQ then
                                    h1(ah)
                                else
                                    h1("Clipboard action not supported.")
                                end
                            end)
                        end
                        h3_11(hS, gE, "Discord invite copied to clipboard!")
                        h3_11(h_, gy, "PC Executor link copied to clipboard!")
                        hV = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                        local h3_12 = (TweenService:Create(frame5, TweenInfo.new(0.4), { BackgroundTransparency = 0 }))
                        h3_12.Play(h3_12)
                        local h3_13 = (TweenService:Create(frame4, hV, { Position = UDim2.new(0.5, -190, 0.5, -130), BackgroundTransparency = 0 }))
                        h3_13.Play(h3_13)
                        task.delay(0.1, function()
                            local ft = (TweenService:Create(hU, hV, { TextTransparency = 0 }))
                            ft.Play(ft)
                            local fu = (TweenService:Create(hX, hV, { TextTransparency = 0 }))
                            fu.Play(fu)
                            local fv = (TweenService:Create(hS, hV, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            fv.Play(fv)
                            local fw = (TweenService:Create(h_, hV, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            fw.Play(fw)
                            local fx = (TweenService:Create(frame3, hV, { BackgroundTransparency = 0 }))
                            fx.Play(fx)
                            local fy = (TweenService:Create(frame2, hV, { BackgroundTransparency = 0 }))
                            fy.Play(fy)
                        end)
                        task.wait(0.6)
                        hS.Active = true
                        h_.Active = true
                        local h3_14 = (TweenService:Create(frame2, TweenInfo.new(gv, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromScale(1, 1) }))
                        h3_14.Play(h3_14)
                        task.wait(gv + 0.8)
                        local h3_15 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        for i, descendant in ipairs(frame4:GetDescendants()) do
                            local h4_8 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                            if h4_8 then
                                local h4_9 = (TweenService:Create(descendant, h3_15, { TextTransparency = 1, BackgroundTransparency = 1 }))
                                h4_9.Play(h4_9)
                            elseif descendant:IsA("Frame") then
                                local h4_10 = (TweenService:Create(descendant, h3_15, { BackgroundTransparency = 1 }))
                                h4_10.Play(h4_10)
                            end
                        end
                        local h4_11 = (TweenService:Create(frame4, h3_15, { BackgroundTransparency = 1 }))
                        h4_11.Play(h4_11)
                        local h4_12 = TweenService:Create(frame5, h3_15, { BackgroundTransparency = 1 })
                        h4_12.Play(h4_12)
                        local function h2_6()
                            screenGui.Destroy(screenGui)
                        end
                        local Completed = h4_12.Completed
                        Completed.Connect(Completed, h2_6)
                        task.wait(0.5)
                    end
                else
                    g9_1 = function()
                        local hS, frame2, hU, hV, frame3, hX, screenGui, frame4, h_, h0, h1
                        local h2 = gethui and gethui()
                        local h3 = h2 or game:GetService("CoreGui")
                        local h2_1 = h3
                        if not h2_1 then
                            local LocalPlayer = f6.LocalPlayer
                            h2_1 = LocalPlayer:WaitForChild("PlayerGui")
                        end
                        local OuroborosLoadingScreen = h2_1:FindFirstChild("OuroborosLoadingScreen")
                        if OuroborosLoadingScreen then
                            OuroborosLoadingScreen.Destroy(OuroborosLoadingScreen)
                        end
                        screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoadingScreen"
                        screenGui.ResetOnSpawn = false
                        screenGui.DisplayOrder = 99999
                        screenGui.IgnoreGuiInset = true
                        screenGui.Parent = h2_1
                        local frame5 = Instance.new("Frame")
                        frame5.Size = UDim2.fromScale(1, 1)
                        frame5.BackgroundColor3 = gl
                        frame5.BackgroundTransparency = 1
                        frame5.BorderSizePixel = 0
                        frame5.Parent = screenGui
                        frame4 = Instance.new("Frame")
                        frame4.Size = UDim2.fromOffset(380, 250)
                        frame4.Position = UDim2.new(0.5, -190, 0.5, -110)
                        frame4.BackgroundColor3 = gg
                        frame4.BackgroundTransparency = 1
                        frame4.BorderColor3 = g1
                        frame4.Parent = frame5
                        h0 = function(G, H, I, J, K, L, M)
                            local N = Instance.new(G)
                            N.Position = H
                            N.Size = I
                            N.BackgroundTransparency = 1
                            N.Text = J
                            N.Font = K
                            N.TextSize = L
                            N.TextColor3 = M
                            N.TextTransparency = 1
                            N.Parent = frame4
                            return N
                        end
                        hU = h0("TextLabel", UDim2.new(0, 0, 0, 30), UDim2.new(1, 0, 0, 25), "Ouroboros Marketplace & MM", Enum.Font.GothamMedium, 17, ga)
                        hX = h0("TextLabel", UDim2.new(0, 0, 0, 58), UDim2.new(1, 0, 0, 20), "Ouroboros Bypassing", Enum.Font.Gotham, 12, gr)
                        local function h3_2(R, S)
                            local T = h0("TextButton", UDim2.new(0, 40, 0, R), UDim2.new(1, -80, 0, 36), S, Enum.Font.Gotham, 12, ga)
                            T.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
                            T.BorderColor3 = g1
                            T.AutoButtonColor = false
                            T.Active = false
                            return T
                        end
                        hS = h3_2(95, "Discord Link Here (Click to Copy)")
                        h_ = h3_2(138, "Get PC Executor Here (Click to Copy)")
                        frame3 = Instance.new("Frame")
                        frame3.Position = UDim2.new(0, 40, 0, 195)
                        frame3.Size = UDim2.new(1, -80, 0, 2)
                        frame3.BackgroundColor3 = Color3.fromRGB(32, 35, 45)
                        frame3.BackgroundTransparency = 1
                        frame3.BorderSizePixel = 0
                        frame3.Parent = frame4
                        frame2 = Instance.new("Frame")
                        frame2.Size = UDim2.new(0, 0, 1, 0)
                        frame2.BackgroundColor3 = gr
                        frame2.BackgroundTransparency = 1
                        frame2.BorderSizePixel = 0
                        frame2.Parent = frame3
                        h1 = function(Z)
                            local frame, textLabel
                            local Toast = screenGui:FindFirstChild("Toast")
                            if Toast then
                                Toast.Destroy(Toast)
                            end
                            frame = Instance.new("Frame")
                            frame.Name = "Toast"
                            frame.Size = UDim2.fromOffset(220, 45)
                            frame.Position = UDim2.new(1, 20, 1, -65)
                            frame.BackgroundColor3 = gg
                            frame.BorderColor3 = gr
                            frame.ZIndex = 100000
                            frame.Parent = screenGui
                            textLabel = Instance.new("TextLabel")
                            textLabel.Size = UDim2.fromScale(1, 1)
                            textLabel.BackgroundTransparency = 1
                            textLabel.Text = Z
                            textLabel.Font = Enum.Font.Gotham
                            textLabel.TextSize = 11
                            textLabel.TextColor3 = ga
                            textLabel.ZIndex = 100001
                            textLabel.Parent = frame
                            local hK_1 = (TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -240, 1, -65) }))
                            hK_1.Play(hK_1)
                            task.delay(2.2, function()
                                if not frame.Parent then
                                    return
                                end
                                local hE = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 1, -65) })
                                local hF = (TweenService:Create(textLabel, TweenInfo.new(0.3), { TextTransparency = 1 }))
                                hF.Play(hF)
                                hE.Play(hE)
                                local function hF_1()
                                    frame.Destroy(frame)
                                end
                                local Completed = hE.Completed
                                Completed.Connect(Completed, hF_1)
                            end)
                        end
                        local function h3_3(af, ag, ah)
                            local MouseEnter = af.MouseEnter
                            MouseEnter.Connect(MouseEnter, function()
                                if af.Active then
                                    local hM = (TweenService:Create(af, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(34, 37, 47), BorderColor3 = gr, TextColor3 = gr }))
                                    hM.Play(hM)
                                end
                            end)
                            local MouseLeave = af.MouseLeave
                            MouseLeave.Connect(MouseLeave, function()
                                if af.Active then
                                    local hO = (TweenService:Create(af, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(28, 30, 38), BorderColor3 = g1, TextColor3 = ga }))
                                    hO.Play(hO)
                                end
                            end)
                            local MouseButton1Click = af.MouseButton1Click
                            MouseButton1Click.Connect(MouseButton1Click, function()
                                if not af.Active then
                                    return
                                end
                                local hQ = setclipboard and pcall(setclipboard, ag)
                                if hQ then
                                    h1(ah)
                                else
                                    h1("Clipboard action not supported.")
                                end
                            end)
                        end
                        h3_3(hS, gE, "Discord invite copied to clipboard!")
                        h3_3(h_, gy, "PC Executor link copied to clipboard!")
                        hV = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                        local h3_4 = (TweenService:Create(frame5, TweenInfo.new(0.4), { BackgroundTransparency = 0 }))
                        h3_4.Play(h3_4)
                        local h3_5 = (TweenService:Create(frame4, hV, { Position = UDim2.new(0.5, -190, 0.5, -130), BackgroundTransparency = 0 }))
                        h3_5.Play(h3_5)
                        task.delay(0.1, function()
                            local ft = (TweenService:Create(hU, hV, { TextTransparency = 0 }))
                            ft.Play(ft)
                            local fu = (TweenService:Create(hX, hV, { TextTransparency = 0 }))
                            fu.Play(fu)
                            local fv = (TweenService:Create(hS, hV, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            fv.Play(fv)
                            local fw = (TweenService:Create(h_, hV, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            fw.Play(fw)
                            local fx = (TweenService:Create(frame3, hV, { BackgroundTransparency = 0 }))
                            fx.Play(fx)
                            local fy = (TweenService:Create(frame2, hV, { BackgroundTransparency = 0 }))
                            fy.Play(fy)
                        end)
                        task.wait(0.6)
                        hS.Active = true
                        h_.Active = true
                        local h3_6 = (TweenService:Create(frame2, TweenInfo.new(gv, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromScale(1, 1) }))
                        h3_6.Play(h3_6)
                        task.wait(gv + 0.8)
                        local h3_7 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        for i, descendant in ipairs(frame4:GetDescendants()) do
                            local h4_2 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                            if h4_2 then
                                local h4_3 = (TweenService:Create(descendant, h3_7, { TextTransparency = 1, BackgroundTransparency = 1 }))
                                h4_3.Play(h4_3)
                            elseif descendant:IsA("Frame") then
                                local h4_4 = (TweenService:Create(descendant, h3_7, { BackgroundTransparency = 1 }))
                                h4_4.Play(h4_4)
                            end
                        end
                        local h4_5 = (TweenService:Create(frame4, h3_7, { BackgroundTransparency = 1 }))
                        h4_5.Play(h4_5)
                        local h4_6 = TweenService:Create(frame5, h3_7, { BackgroundTransparency = 1 })
                        h4_6.Play(h4_6)
                        local function h2_3()
                            screenGui.Destroy(screenGui)
                        end
                        local Completed = h4_6.Completed
                        Completed.Connect(Completed, h2_3)
                        task.wait(0.5)
                    end
                end
                g4 = (g4 + 15) % 64
            else
                if (g6 and not g6 or (g6 or ga)) and ((not g6 or ga) and (g6 and g4)) or not ((g6 and not g6 or (g6 or ga)) and ((not g6 or ga) and (g6 and g4))) then
                    g5()
                    g6 = fn372
                else
                    g6()
                    g5 = fn372
                end
                g4 = (g4 + 31) % 64
            end
        elseif ha <= 3 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 21), string.byte(tostring(g6))), 12), 1649588683), 2), 2303387437) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 21), string.byte(tostring(g6))), 12), 2) then
                g8 = g6({
                    "https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Fluent.luau"
                })
            else
                g6 = g8("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
            end
            g4 = (g4 + 55) % 64
        else
            local hb_1 = {
                "skkrvtua",
                "bypakxld",
                "rfnszje",
                "ijegmb",
                "tplvwdysao",
                "uit",
                "ywot",
                "jof",
                "xxz",
                "quapccrmsmwp",
                "zxru",
                "agg",
                "eknq",
                "pubotkbdgo",
                "obzapbwrhwso"
            }
            if hb_1[(g4 * 64 + 15) % 15 + 1] <= hb_1[(g4 * 64 + 15) % 15 + 1] then
                f6 = game:GetService("Players")
            else
                gE = game:GetService("Players")
            end
            g4 = (g4 + 55) % 64
        end
    elseif ha <= 6 then
        if ha <= 5 then
            if g4 * 52833131 + 6 + 6 <= g4 * 52833131 + 6 + 6 + 5 then
                TweenService = game:GetService("TweenService")
            else
                g8 = game:GetService("TweenService")
            end
            g4 = (g4 + 31) % 64
        else
            hc = ({
                "pglo",
                "vrjwybz",
                "cew",
                "yyeybmler",
                "rjrziyonh",
                "mmhrlvsphrn",
                "lecgbr",
                "sshk",
                "rpjxfp",
                "cvuctwroqp",
                "jmsh",
                "thb"
            })[g4 % 12 + 1]
            local hb_3 = g4 % 3 + 2
            hd = (hc:reverse())
            local hb_4 = hc:len()
            he = (hd:rep(hb_3))
            if hb_4 <= he:len() then
                g9_1 = game:GetService("UserInputService")
                g7 = game:GetService("ReplicatedStorage")
                VirtualUser = game:GetService("VirtualUser")
                gI = f6.LocalPlayer
                gE = "https://discord.gg/ehKVq7pf7v"
            else
                gE = game:GetService(game)
                g9_1 = game:GetService("ReplicatedStorage")
                gI = game:GetService("VirtualUser")
                g7 = VirtualUser
                f6 = game
            end
            g4 = (g4 + 15) % 64
        end
    elseif ha <= 7 then
        ha = {
            "nlvnqwlew",
            "cxnpfome",
            "ivwxblc",
            "cchwqxsx",
            "uldy",
            "ttbvjyyji",
            "aydpqp",
            "vekhnmhik",
            "ymufkjgia",
            "epbcnxlnbkc",
            "ivliex",
            "jugvnnyvscs"
        }
        local hb_5 = ha[g4 % 12 + 1]
        ha = g4 % 3 + 2
        hc = (hb_5:reverse())
        local lE = ha
        ha = hb_5:len()
        hd = (hc:rep(lE))
        if ha >= hd:len() then
            gv = "https://rocheats.com?ref=ouroboros"
            gy = 3
        else
            gy = "https://rocheats.com?ref=ouroboros"
            gv = 3
        end
        g4 = (g4 + 31) % 64
    else
        if (g4 * 2 + 8) * 10 % 3 == ((g4 * 2 + 8) * 10 + 0) % 3 then
            gr = Color3.fromRGB(143, 165, 240)
            gl = Color3.fromRGB(15, 16, 20)
            gg = Color3.fromRGB(22, 24, 30)
            ga = Color3.fromRGB(230, 235, 245)
            g1 = Color3.fromRGB(36, 39, 48)
        else
            ha = Color3.fromRGB
            gl = ha(240, 143, 165)
            gg = Color3.fromRGB(20, ha, Color3.fromRGB)
            ga = Color3:fromRGB(Color3.fromRGB, Color3)
            g1 = Color3.fromRGB(Color3.fromRGB, 22, 16)
            gr = Color3.fromRGB(15, Color3, 245)
        end
        g4 = (g4 + 23) % 64
    end
until fn10((g4 * 47 + 40) % 64, 812862761)
if not g8 then
    warn("[Ouroboros Hub] Failed to load Fluent-Renewed.")
    return
end
he, hd, ha, g5, g4, Directory, gj, Balancing, Stats, gY, gV, gS, gN, gH, Open, gx, gu, gq, gk, gf, f9, g0, hc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local hb_6 = 21
repeat
    local hf_1 = (hb_6 * 7 + 1) % 11 + 1
    if hf_1 <= 6 then
        if hf_1 <= 3 then
            if hf_1 <= 2 then
                if hf_1 <= 1 then
                    hg = {
                        "wddgbcwm",
                        "yzywwbwhqg",
                        "nvhojoidpw",
                        "zfjqzmaw",
                        "dqcjetp",
                        "ixqnhx",
                        "pesvlvwi",
                        "rolmh",
                        "kjfs"
                    }
                    if hg[(hb_6 * 54 + 71) % 9 + 1] < hg[(hb_6 * 54 + 71) % 9 + 1] then
                        gY = require(Balancing:WaitForChild("Constants"))
                        ha = require(Balancing:WaitForChild(Balancing))
                        gj = require(Stats:WaitForChild(Stats))
                        g5 = require(Stats:WaitForChild(Balancing))
                    else
                        gj = require(ha:WaitForChild("Constants"))
                        Balancing = require(ha:WaitForChild("Balancing"))
                        Stats = require(g5:WaitForChild("Stats"))
                        gY = require(g5:WaitForChild("QuestFrontend"))
                    end
                    hb_6 = (hb_6 + 74) % 88
                else
                    hg = {
                        "bhoyriqjip",
                        "budppez",
                        "oezjrpbidtb",
                        "imzzgfale",
                        "tupop",
                        "xicwsrx",
                        "loyjyvcdmk",
                        "btplscg",
                        "gbvqwpgxpv",
                        "wqwjqc",
                        "ukpvpvezrw",
                        "gkvaex"
                    }
                    hh = hg[hb_6 % 12 + 1]
                    hg = hb_6 % 3 + 2
                    hi = (hh:reverse())
                    local lD = hg
                    hg = hh:len()
                    hj = (hi:rep(lD))
                    if hg >= hj:len() then
                        gS = require(Open:WaitForChild("AchievementsFrontend"))
                        g5 = require(Open:WaitForChild(Open))
                        gH = require(Open:WaitForChild(require))
                        gN = require(Open:WaitForChild("IslandsFrontend"))
                        gV = Open
                    else
                        gV = require(g5:WaitForChild("AchievementsFrontend"))
                        gS = require(g5:WaitForChild("MasteryFrontend"))
                        gN = require(g5:WaitForChild("IslandsFrontend"))
                        gH = require(g5:WaitForChild("OpenEgg"))
                        Open = gH.Open
                    end
                    hb_6 = (hb_6 + 52) % 88
                end
            else
                hg = {
                    "nit",
                    "kexurua",
                    "ndafvkp",
                    "qkdtvmwk",
                    "vgovijebefq",
                    "fkzqkoax",
                    "xgtxdwgrehn",
                    "djcdn",
                    "dscnpl"
                }
                if hg[(hb_6 * 63 + 47) % 9 + 1] <= hg[(hb_6 * 63 + 47) % 9 + 1] then
                    gx = g4.Channel("Click")
                    gu = g4.Channel("Egg")
                    gq = g4.Channel("Quest")
                    gk = g4.Channel("Achievements")
                else
                    gq = gk.Channel("Click")
                    gx = gk:Channel()
                    g4 = gk:Channel()
                    gu = gk.Channel("Achievements")
                end
                hb_6 = (hb_6 + 63) % 88
            end
        elseif hf_1 <= 5 then
            if hf_1 <= 4 then
                hg = {
                    "aelnecluouoz",
                    "dqjqyv",
                    "fqs",
                    "sngszywp",
                    "ibogtruv",
                    "tclmv",
                    "keeaxbrpkxsm",
                    "exo",
                    "xps",
                    "cmvxaywb",
                    "yil"
                }
                if hg[(hb_6 * 28 + 27) % 11 + 1] <= hg[(hb_6 * 28 + 27) % 11 + 1] then
                    gf = g4.Channel("Rebirths")
                    f9 = g4.Channel("Pets")
                    g0 = g4.Channel("Breakables")
                else
                    g4 = g0.Channel("Rebirths")
                    gf = g0:Channel()
                    local Channel = g0.Channel
                    f9 = Channel(Channel)
                end
                hb_6 = (hb_6 + 63) % 88
            else
                if hb_6 * 125496967 + 11 + 6 >= hb_6 * 125496967 + 11 + 6 + 3 then
                    hd = {}
                else
                    hc = {}
                end
                hb_6 = (hb_6 + 85) % 88
            end
        else
            if hb_6 * 58811931 + 9 + 2 >= hb_6 * 58811931 + 9 + 2 + 1 then
                g6 = he(he)
            else
                he = g6({
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.lua"
                })
            end
            hb_6 = (hb_6 + 63) % 88
        end
    elseif hf_1 <= 9 then
        if hf_1 <= 8 then
            if hf_1 <= 7 then
                if hb_6 * 40475623 + 5 + 6 <= hb_6 * 40475623 + 5 + 6 + 1 then
                    hd = g6({
                        "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau",
                        "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.lua"
                    })
                else
                    g6 = hd("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau")
                end
                hb_6 = (hb_6 + 8) % 88
            else
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(hb_6, 6), string.byte(tostring(gq))), 2), 3517749633), 2183868574), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(hb_6, 6), string.byte(tostring(gq))), 2), 777217662), 1744243051))), 2183868574), 1744243051) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(hb_6, 6), string.byte(tostring(gq))), 2) then
                    g7 = ha:WaitForChild(999, ha)
                else
                    ha = g7:WaitForChild("Library", 999)
                end
                hb_6 = (hb_6 + 85) % 88
            end
        else
            if hb_6 * 62382301 + 12 + 4 >= hb_6 * 62382301 + 12 + 4 + 5 then
                ha = g5:WaitForChild("Client")
            else
                g5 = ha:WaitForChild("Client")
            end
            hb_6 = (hb_6 + 41) % 88
        end
    elseif hf_1 <= 10 then
        local hf_2 = {
            "cpiznmdys",
            "hwxsmut",
            "uejtnat",
            "ebwwt",
            "cahkfepb",
            "flizyiowhhj",
            "ucjprpeela",
            "cde",
            "apwamjkzhjdv",
            "zjzmypcswhwf",
            "yxybo"
        }
        if hf_2[(hb_6 * 91 + 73) % 11 + 1] <= hf_2[(hb_6 * 91 + 73) % 11 + 1] then
            g4 = require(g5:WaitForChild("Network"))
        else
            g5 = require(g4:WaitForChild("Network"))
        end
        hb_6 = (hb_6 + 52) % 88
    else
        if (ha and gq or not gN and gN) and ((gq or gY) and (ha or not gN)) and not ((ha and gq or not gN and gN) and ((gq or gY) and (ha or not gN))) then
            ha = require(Directory:WaitForChild(Directory))
        else
            Directory = require(ha:WaitForChild("Directory"))
        end
        hb_6 = (hb_6 + 8) % 88
    end
until fn10((hb_6 * 3 + 42) % 88, 1030949025)
for k, v in pairs(Directory.Eggs) do
    if fn46(type(v), 5, 248602996) then
        table.insert(hc, k)
    end
end
g6, g5 = nil, nil
g4 = 5
repeat
    g7 = { "rgemrzzzhlu", "ldqsk", "bbzyem", "rkzghznny", "frqk", "iyqvlwwyjt", "nfyeiskw", "zfcyjxx" }
    ha = g7[g4 % 8 + 1]
    g7 = g4 % 3 + 2
    local hb_7 = (ha:reverse())
    local lB = g7
    g7 = ha:len()
    local hf_3 = (hb_7:rep(lB))
    if g7 <= hf_3:len() then
        table.sort(hc)
        g6 = { "1", "2", "3", "5", "8", "10" }
        g5 = {}
    else
        table.sort(table.sort)
        hc = "1"
        g6 = table
    end
    g4 = (g4 + 4) % 8
until fn10((g4 * 5 + 5) % 8, 578005792)
ha, hb_8 = nil, nil
g7 = 0
repeat
    g4 = (g7 * 1 + 1) % 2 + 1
    if g4 <= 1 then
        g4 = (vector.create((g7 * 1 + 2) % 11 + 1, (g7 * 8 + 13) % 13 + 1, (g7 * 14 + 3) % 17 + 1))
        local hf_4 = (vector.create((g7 * 5 + 8) % 11 + 1, (g7 * 8 + 3) % 13 + 1, (g7 * 14 + 12) % 17 + 1))
        if vector.dot(vector.cross(g4, hf_4), (vector.cross(g4, hf_4))) + vector.dot(g4, hf_4) * vector.dot(g4, hf_4) == vector.dot(g4, g4) * vector.dot(hf_4, hf_4) + 1 then
            ha = hb_8
        else
            hb_8 = ha
        end
        g7 = (g7 + 13) % 16
    else
        g4 = (vector.create((g7 * 2 + 9) % 11 + 1, (g7 * 6 + 7) % 13 + 1, (g7 * 5 + 9) % 17 + 1))
        local hf_5 = (vector.create((g7 * 7 + 4) % 11 + 1, (g7 * 5 + 13) % 13 + 1, (g7 * 8 + 5) % 17 + 1))
        hg = (vector.create((g7 * 4 + 8) % 11 + 1, (g7 * 1 + 3) % 13 + 1, (g7 * 6 + 12) % 17 + 1))
        if vector.dot(vector.cross(g4, hf_5), hg) == vector.dot(vector.cross(hf_5, hg), g4) then
            ha = workspace:FindFirstChild("_MAP")
        else
            hb_8 = workspace:FindFirstChild("_MAP")
        end
        g7 = (g7 + 5) % 16
    end
until fn10((g7 * 15 + 15) % 16, 594780637)
if hb_8 then
    hb_8 = ha:FindFirstChild("Islands")
end
g4 = hb_8
if g4 then
    for i, child in ipairs(g4:GetChildren()) do
        table.insert(g5, child.Name)
    end
    table.sort(g5)
end
ge, f7, g_, gW, gT, gP, gJ, gF, gz, gw, gs, gB, ha, gm, gC, gK, g7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
g4 = 53
repeat
    local hb_9 = (g4 * 5 + 1) % 7 + 1
    if hb_9 <= 4 then
        if hb_9 <= 2 then
            if hb_9 <= 1 then
                if (g4 * 3 + 5) * 9 % 4 == ((g4 * 3 + 5) * 9 + 4) % 4 then
                    ge = hc[1]
                    f7 = 1
                    g_ = g5[1]
                    gW = 0
                    gT = false
                else
                    g5 = gT[1]
                    gW = 1
                    local hf_6 = hc[1]
                    f7 = 1
                    g_ = hf_6
                    ge = false
                end
                g4 = (g4 + 38) % 56
            else
                if (not gC and not g4 or (g4 or not g4) or gs and gs and (not g4 and gs)) and ((not gs or not gC) and (not gC or gC) and ((not gC or not g4) and (not gs or g4))) or not ((not gC and not g4 or (g4 or not g4) or gs and gs and (not g4 and gs)) and ((not gs or not gC) and (not gC or gC) and ((not gC or not g4) and (not gs or g4)))) then
                    gP = false
                else
                    ha = false
                end
                g4 = (g4 + 17) % 56
            end
        elseif hb_9 <= 3 then
            hg = ({ "tqi", "swr", "sggnj", "ulets", "hqktqfklplk", "phll", "wwz", "lvrs" })[g4 % 8 + 1]
            local hf_8 = hg:len()
            hh = (hg:gsub("(.)", "%1%1", g4 % 3 % 2 + 1))
            if hf_8 <= hh:len() then
                gJ = false
                gF = false
                gz = false
                gw = false
            else
                gz = false
                gJ = false
                gw = false
                gF = false
            end
            g4 = (g4 + 10) % 56
        else
            local hf_9 = (vector.create((g4 * 5 + 2) % 11 + 1, (g4 * 1 + 8) % 13 + 1, (g4 * 7 + 11) % 17 + 1))
            hg = (vector.create((g4 * 2 + 1) % 11 + 1, (g4 * 1 + 3) % 13 + 1, (g4 * 9 + 8) % 17 + 1))
            hh = (vector.create((g4 * 5 + 1) % 11 + 1, (g4 * 4 + 4) % 13 + 1, (g4 * 12 + 2) % 17 + 1))
            hi = (vector.create((g4 * 5 + 7) % 5 + 1, (g4 * 5 + 1) % 7 + 1, (g4 * 2 + 5) % 9 + 1))
            if vector.dot(vector.cross(hf_9, (vector.cross(hg, hh))), hi) == vector.dot(hg * vector.dot(hf_9, hh) - hh * vector.dot(hf_9, hg), hi) then
                gs = false
                gm = fn862
                gC = fn363
                gK = fn794
            else
                gC = false
                gs = fn862
                gK = fn363
                gm = fn794
            end
            g4 = (g4 + 24) % 56
        end
    elseif hb_9 <= 6 then
        if hb_9 <= 5 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 3), string.byte(tostring(gC))), 8), 269494459), 3471123238), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 3), string.byte(tostring(gC))), 8), 4025472836), 3682490017))), 3471123238), 3682490017) == bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 3), string.byte(tostring(gC))), 8) then
                task.spawn(worker2)
                task.spawn(function()
                    while true do
                        if gP and ge then
                            pcall(function()
                                gu.InvokeServer(gu, "Hatch", ge, f7)
                            end)
                        end
                        task.wait(0.2)
                    end
                end)
                task.spawn(function()
                    while true do
                        if gJ then
                            local i1
                            if fn10(gW, 544454170) then
                                i1 = gK()
                            else
                                local i2 = Stats.Local()
                                local i3 = i2 and gC(i2)[gW]
                                if i3 then
                                    i1 = gW
                                end
                            end
                            if i1 then
                                pcall(function()
                                    gf.FireServer(gf, "Rebirth", i1)
                                end)
                            end
                        end
                        task.wait(0.5)
                    end
                end)
                task.spawn(function()
                    while true do
                        if gF then
                            local i8 = Stats.Local()
                            if i8 and i8.Quests then
                                for k, v in pairs(i8.Quests) do
                                    local i7
                                    local jg = k
                                    local i9_1 = fn46(type(v), 5, 248602996) and v.Completed ~= true
                                    if i9_1 then
                                        local i9_2 = gY.GetQuest(jg)
                                        local ja = i9_2 and not i9_2.Disabled and fn46(type(i9_2.Tiers), 5, 248602996)
                                        if ja then
                                            local jb_1 = not fn46(i9_2.Category, 3, 195223578) or i8.SecretAreaQuestClaimed == true
                                            ja = jb_1
                                        end
                                        if ja then
                                            local i9_3 = gY.GetRequiredAmount(jg)
                                            local ja_1 = gY.GetProgress(jg)
                                            if i9_3 > 0 and ja_1 >= i9_3 then
                                                i7 = gY.GetCurrentTier(jg)
                                                pcall(function()
                                                    gq.InvokeServer(gq, "Claim", jg, i7)
                                                end)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(function()
                    while true do
                        if gz then
                            for k, v in pairs(Directory.Achievements) do
                                local jo = k
                                local jj = fn46(type(jo), 6, 2175009567) and fn46(type(v), 5, 248602996) and gV.IsClaimable(jo)
                                if jj then
                                    pcall(function()
                                        gk.FireServer(gk, "Claim", jo)
                                    end)
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(worker)
                task.spawn(function()
                    while true do
                        if gs then
                            local THINGS = workspace:FindFirstChild("_THINGS")
                            local ju = THINGS and THINGS:FindFirstChild("Breakables")
                            if ju then
                                local js = gm()
                                if js then
                                    for i, child in ipairs(ju:GetChildren()) do
                                        local jD = child
                                        pcall(function()
                                            g0.InvokeServer(g0, "Hit", jD.Name, js)
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(0.5)
                    end
                end)
                gB = g8:CreateWindow({
                    Title = "Clicker Simulator",
                    SubTitle = "Ouroboros Hub",
                    TabWidth = 160,
                    Size = UDim2.fromOffset(560, 420),
                    Acrylic = false,
                    Theme = "Dark",
                    Image = "rbxassetid://91400086538074",
                    MinimizeKey = Enum.KeyCode.LeftControl
                })
            else
                task.spawn(worker2)
                task.spawn(task.spawn)
                task.spawn(task)
                task.spawn(task[nil])
                task.spawn(task.spawn)
                task.spawn(function()
                    while true do
                        if gz then
                            for k, v in pairs(Directory.Achievements) do
                                local jo = k
                                local jj = fn46(type(jo), 6, 2175009567) and fn46(type(v), 5, 248602996) and gV.IsClaimable(jo)
                                if jj then
                                    pcall(function()
                                        gk.FireServer(gk, "Claim", jo)
                                    end)
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(worker)
                g8 = gB:CreateWindow(task[nil])
            end
            g4 = (g4 + 17) % 56
        else
            if ((not g_ or not g4) and (not gP or g_) or (not g_ or not g4 or (g4 or gs))) and ((gP and not g7 or (g4 or not g7)) and ((not g_ or not g7) and (not g_ or not g_))) or not (((not g_ or not g4) and (not gP or g_) or (not g_ or not g4 or (g4 or gs))) and ((gP and not g7 or (g4 or not g7)) and ((not g_ or not g7) and (not g_ or not g_)))) then
                ha = {
                    Main = gB:AddTab({ Title = "Main", Icon = "mouse-pointer-click" }),
                    Eggs = gB:AddTab({ Title = "Eggs", Icon = "egg" }),
                    Rebirth = gB:AddTab({ Title = "Rebirth", Icon = "rotate-ccw" }),
                    Claim = gB:AddTab({ Title = "Claim", Icon = "gift" }),
                    Teleport = gB:AddTab({ Title = "Teleport", Icon = "map" }),
                    Settings = gB:AddTab({ Title = "Settings", Icon = "settings" })
                }
            else
                gB = { Title = "Main", Icon = "mouse-pointer-click" }
            end
            g4 = (g4 + 3) % 56
        end
    else
        local hb_10 = (vector.create((g4 * 4 + 8) % 11 + 1, (g4 * 6 + 13) % 13 + 1, (g4 * 12 + 12) % 17 + 1))
        local hf_10 = (vector.create((g4 * 1 + 5) % 11 + 1, (g4 * 6 + 8) % 13 + 1, (g4 * 14 + 16) % 17 + 1))
        hg = (vector.create((g4 * 1 + 9) % 11 + 1, (g4 * 9 + 7) % 13 + 1, (g4 * 8 + 17) % 17 + 1))
        hh = (vector.create((g4 * 1 + 1) % 5 + 1, (g4 * 2 + 6) % 7 + 1, (g4 * 1 + 1) % 9 + 1))
        if vector.dot(vector.cross(hb_10, (vector.cross(hf_10, hg))), hh) == vector.dot(hf_10 * vector.dot(hb_10, hg) - hg * vector.dot(hb_10, hf_10), hh) + 5 then
            gm = fn200
        else
            g7 = fn200
        end
        g4 = (g4 + 24) % 56
    end
until fn10((g4 * 15 + 29) % 56, 292689510)
for k, v in pairs(ha) do
    g7(v)
end
gn, connection, gb = nil, nil, nil
g4 = 7
repeat
    g7 = (g4 * 1 + 0) % 2 + 1
    if g7 <= 1 then
        g7 = { "pefwt", "wwrzmagugj", "xvslgsn", "wcegyuqdrkh", "tluvjmngdf", "rewz", "wwizbnct" }
        local hb_11 = g7[g4 % 7 + 1]
        g7 = g4 % 3 + 2
        local hf_11 = (hb_11:reverse())
        local l1 = g7
        g7 = hb_11:len()
        hg = (hf_11:rep(l1))
        if g7 >= hg:len() then
            task.spawn(task)
            g7 = { Callback = fn557, Title = "Anti-AFK", Default = true }
            local Settings = ha.Settings
            Settings.AddToggle(Settings, g7, ha)
        else
            task.spawn(function()
                while true do
                    if gn then
                        gb()
                    end
                    task.wait(60)
                end
            end)
            local hb_13 = { Title = "Anti-AFK", Default = true, Callback = fn557 }
            local Settings = ha.Settings
            Settings.AddToggle(Settings, "AntiAfk", hb_13)
        end
        g4 = (g4 + 11) % 16
    else
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 4), string.byte(tostring(connection))), 8), 2845220263), 2050068043), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 4), string.byte(tostring(connection))), 8), 1449747032), 1781916592))), 2050068043), 1781916592) == bit32.rrotate(bit32.bxor(bit32.lrotate(g4, 4), string.byte(tostring(connection))), 8) then
            local hb_14 = { Title = "Auto Tap", Default = false, Callback = fn583 }
            local Main3 = ha.Main
            Main3.AddToggle(Main3, "AutoTap", hb_14)
            local hb_15 = { Title = "Auto Equip Best Pet", Default = false, Callback = fn325 }
            local Main2 = ha.Main
            Main2.AddToggle(Main2, "AutoEquipBest", hb_15)
            local hb_16 = {
                Title = "Auto Claim All Chests",
                Default = false,
                Callback = function(cq)
                    gs = cq
                end
            }
            local Main = ha.Main
            Main.AddToggle(Main, "AutoChests", hb_16)
            local hb_17 = {
                Title = "Egg",
                Values = hc,
                Multi = false,
                Searchable = true,
                Default = ge,
                Callback = function(cr)
                    ge = cr
                end
            }
            local Eggs4 = ha.Eggs
            Eggs4.AddDropdown(Eggs4, "EggSelect", hb_17)
            local hb_18 = { Title = "Amount", Values = g6, Multi = false, Searchable = true, Default = "1", Callback = fn589 }
            local Eggs3 = ha.Eggs
            Eggs3.AddDropdown(Eggs3, "EggAmount", hb_18)
            local hb_19 = {
                Title = "Auto Open Egg",
                Default = false,
                Callback = function(cu)
                    gP = cu
                end
            }
            local Eggs2 = ha.Eggs
            Eggs2.AddToggle(Eggs2, "AutoEgg", hb_19)
            local hb_20 = {
                Title = "Disable Egg Hatch Animation",
                Default = false,
                Callback = function(cv)
                    local jG = cv and (function() end)
                    local jH = jG or Open
                    gH.Open = jH
                end
            }
            local Eggs = ha.Eggs
            Eggs.AddToggle(Eggs, "DisableHatchAnim", hb_20)
            local hb_21 = {
                Title = "Rebirth Amount",
                Default = "0",
                Placeholder = "0 for best affordable",
                Numeric = true,
                Finished = true,
                Callback = fn873
            }
            local Rebirth2 = ha.Rebirth
            Rebirth2.AddInput(Rebirth2, "RebirthAmount", hb_21)
            local hb_22 = {
                Title = "Auto Rebirth",
                Default = false,
                Callback = function(cA)
                    gJ = cA
                end
            }
            local Rebirth = ha.Rebirth
            Rebirth.AddToggle(Rebirth, "AutoRebirth", hb_22)
            local hb_23 = {
                Title = "Auto Claim Quests",
                Default = false,
                Callback = function(cB)
                    gF = cB
                end
            }
            local Claim2 = ha.Claim
            Claim2.AddToggle(Claim2, "AutoQuests", hb_23)
            local hb_24 = {
                Title = "Auto Claim Milestones",
                Default = false,
                Callback = function(cC)
                    gz = cC
                end
            }
            local Claim = ha.Claim
            Claim.AddToggle(Claim, "AutoMilestones", hb_24)
            local hb_25 = {
                Title = "Island",
                Values = g5,
                Multi = false,
                Searchable = true,
                Default = g_,
                Callback = function(cD)
                    g_ = cD
                end
            }
            local Teleport2 = ha.Teleport
            Teleport2.AddDropdown(Teleport2, "IslandSelect", hb_25)
            g7 = {
                Title = "Teleport",
                Callback = function()
                    if g_ then
                        pcall(function()
                            gN.LocalTeleport(g_)
                        end)
                    end
                end
            }
            local Teleport = ha.Teleport
            Teleport.AddButton(Teleport, g7)
            gn = false
            gb = fn888
        else
            g7 = g6.Main
            hh = fn583
            hi = g7
            hi.AddToggle(hi, hh, "AutoTap")
            local Main = g6.Main
            local hl = { Title = "Auto Equip Best Pet", Default = false, Callback = fn325 }
            local hm = Main
            hm.AddToggle(hm, hl, "Auto Tap")
            hm = g6.Main
            hm.AddToggle(hm, g6, g7)
            hm = g6.Eggs
            hm.AddDropdown(hm, "Default", "Title")
            hl = { Multi = false, Default = "1", Title = "Amount", Callback = fn589, Searchable = true, Values = hc }
            hm = g6.Eggs
            hm.AddDropdown(hm, hl, "Default")
            hg = g6.Eggs
            hg.AddToggle(hg, "Callback", "Egg")
            hg = g6.Eggs
            hg.AddToggle(hg, "Default", true)
            hi = fn873
            hj = g6.Rebirth
            hj.AddInput(hj, fn325, "0")
            hg = g6.Rebirth
            hg.AddToggle(hg, "AutoChests", g6)
            local Claim2 = g6.Claim
            Claim2.AddToggle(Claim2, "Disable Egg Hatch Animation", Main)
            local Claim = g6.Claim
            Claim.AddToggle(Claim, "Auto Equip Best Pet", false)
            local Teleport2 = g6.Teleport
            Teleport2.AddDropdown(Teleport2, false, hi)
            local Teleport = g6.Teleport
            Teleport.AddButton(Teleport, false)
            gb = "AutoMilestones"
            gn = fn888
        end
        g4 = (g4 + 9) % 16
    end
until fn10((g4 * 11 + 3) % 16, 611555406)
if he then
    g4 = 7
    repeat
        g5 = (vector.create((g4 * 2 + 9) % 11 + 1, (g4 * 3 + 7) % 13 + 1, (g4 * 7 + 2) % 17 + 1))
        g6 = (vector.create((g4 * 2 + 7) % 11 + 1, (g4 * 6 + 6) % 13 + 1, (g4 * 15 + 12) % 17 + 1))
        if vector.dot(vector.cross(g5, g6), (vector.cross(g5, g6))) + vector.dot(g5, g6) * vector.dot(g5, g6) == vector.dot(g5, g5) * vector.dot(g6, g6) + 5 then
            g8.SetLibrary(g8, ha)
            g8.IgnoreThemeSettings(g8)
            g8.SetIgnoreIndexes(g8, g8)
            g8.SetFolder(g8, {})
            g8.BuildConfigSection(g8, g8)
        else
            he.SetLibrary(he, g8)
            he.IgnoreThemeSettings(he)
            he.SetIgnoreIndexes(he, {})
            he.SetFolder(he, "OuroborosHub/ClickerSimulator")
            he.BuildConfigSection(he, ha.Settings)
        end
        g4 = (g4 + 5) % 8
    until fn10((g4 * 3 + 2) % 8, 510804476)
end
if hd then
    g4 = 7
    repeat
        g5 = (vector.create((g4 * 5 + 5) % 11 + 1, (g4 * 9 + 1) % 13 + 1, (g4 * 1 + 15) % 17 + 1))
        g6 = (vector.create((g4 * 7 + 7) % 11 + 1, (g4 * 2 + 1) % 13 + 1, (g4 * 12 + 7) % 17 + 1))
        if vector.dot(g5, g6) * vector.dot(g5, g6) <= vector.dot(g5, g5) * vector.dot(g6, g6) then
            hd.SetLibrary(hd, g8)
            hd.SetFolder(hd, "OuroborosHub")
            hd.BuildInterfaceSection(hd, ha.Settings)
        else
            g8.SetLibrary(g8, g8)
            g8.SetFolder(g8, ha)
            g8.BuildInterfaceSection(g8, hd.Settings)
        end
        g4 = (g4 + 3) % 8
    until fn10((g4 * 5 + 7) % 8, 527583337)
end
gB.SelectTab(gB, 1)
if he then
    he.LoadAutoloadConfig(he)
end
g5 = nil
g4 = 1
repeat
    g6 = (g4 * 1 + 0) % 2 + 1
    if g6 <= 1 then
        if (g4 * 3 + 5) * 17 % 4 == ((g4 * 3 + 5) * 17 + 4) % 4 then
            g5.Name = "OuroborosToggle"
            g5.ResetOnSpawn = false
            g5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        else
            g5.Name = g5
            g5.ResetOnSpawn = g5
            g5.ZIndexBehavior = "OuroborosToggle"
        end
        g4 = (g4 + 1) % 8
    else
        if (g4 * 3 + 9) * 9 % 4 == ((g4 * 3 + 9) * 9 + 14) % 4 then
            g5 = Instance.new(Instance.new)
        else
            g5 = Instance.new("ScreenGui")
        end
        g4 = (g4 + 5) % 8
    end
until fn10((g4 * 7 + 3) % 8, 477252822)
g4 = gethui and gethui()
g6 = g4 or game:GetService("CoreGui")
f8, g8, gQ, gL, gG, gA = nil, nil, nil, nil, nil, nil
g4 = 20
repeat
    local hb_31 = (g4 * 2 + 0) % 3 + 1
    if hb_31 <= 2 then
        if hb_31 <= 1 then
            hc = ({
                "qgqxinp",
                "yelzlkytx",
                "wuvbetkb",
                "qyl",
                "agbvo",
                "ffj",
                "ykr",
                "ayemzm",
                "nfragehtnxf",
                "jfvyecmbacr"
            })[g4 % 10 + 1]
            local hb_33 = g4 % 3 + 2
            hd = (hc:reverse())
            local hb_34 = hc:len()
            he = (hd:rep(hb_33))
            if hb_34 >= he:len() then
                local InputBegan = g9_1.InputBegan
                hc = InputBegan
                hc.Connect(hc, InputBegan)
                hc = f8.InputChanged
                hc.Connect(hc, f8)
                hc = f8.InputEnded
                hc.Connect(hc, fn287)
                local MouseButton1Click = g9_1.MouseButton1Click
                MouseButton1Click.Connect(MouseButton1Click, g9_1)
            else
                local function hb_38(cT)
                    if cT.UserInputType == Enum.UserInputType.MouseButton1 or cT.UserInputType == Enum.UserInputType.Touch then
                        gQ, gA = true, false
                        gL = cT.Position
                        gG = f8.Position
                    end
                end
                hc = f8.InputBegan
                hc.Connect(hc, hb_38)
                hc = g9_1.InputChanged
                hc.Connect(hc, fn287)
                local function hb_40(cZ)
                    if cZ.UserInputType == Enum.UserInputType.MouseButton1 or cZ.UserInputType == Enum.UserInputType.Touch then
                        gQ = false
                    end
                end
                hc = g9_1.InputEnded
                hc.Connect(hc, hb_40)
                local function hb_41()
                    if gA then
                        return
                    end
                    gB.Minimize(gB)
                end
                hc = f8.MouseButton1Click
                hc.Connect(hc, hb_41)
            end
            g4 = (g4 + 2) % 24
        else
            local hb_42 = (vector.create((g4 * 5 + 7) % 11 + 1, (g4 * 9 + 9) % 13 + 1, (g4 * 4 + 6) % 17 + 1))
            hc = (vector.create((g4 * 1 + 9) % 11 + 1, (g4 * 5 + 2) % 13 + 1, (g4 * 11 + 6) % 17 + 1))
            hd = (vector.create((g4 * 7 + 1) % 11 + 1, (g4 * 4 + 3) % 13 + 1, (g4 * 8 + 14) % 17 + 1))
            he = (vector.create((g4 * 3 + 8) % 11 + 1, (g4 * 8 + 2) % 13 + 1, (g4 * 5 + 10) % 17 + 1))
            if vector.dot(vector.cross(hb_42, hc), (vector.cross(hd, he))) == vector.dot(hb_42, hd) * vector.dot(hc, he) - vector.dot(hb_42, he) * vector.dot(hc, hd) then
                g5.Parent = g6
                f8 = Instance.new("ImageButton")
            else
                g5.Parent = f8
                g6 = Instance.new("ImageButton")
            end
            g4 = (g4 + 11) % 24
        end
    else
        hc = ({
            "vnbiljbsbks",
            "qbxlz",
            "aibefnw",
            "heqaeftoun",
            "ctmealydhf",
            "htppazgri",
            "tveiwjcmho",
            "kpoas",
            "srtjlfmccgk",
            "fwcvv"
        })[g4 % 10 + 1]
        local hb_44 = g4 % 3 + 2
        hd = (hc:reverse())
        local hb_45 = hc:len()
        he = (hd:rep(hb_44))
        if hb_45 >= he:len() then
            g5.Size = UDim2.fromOffset(UDim2.fromOffset, 52)
            g5.Position = UDim2.fromScale(UDim2.fromScale, g5)
            local new = Vector2.new
            g5.AnchorPoint = new(Vector2, 0.5)
            g5.BackgroundColor3 = Color3.fromRGB(0, Color3, UDim2)
            g5.BackgroundTransparency = 30
            g5.Image = 0.1
            hd = Enum.ScaleType.Fit
            g5.ScaleType = g5
            g5.AutoButtonColor = g5
            g5.Parent = UDim2
            he = Instance.new
            gL = he(25)
            gL.CornerRadius = UDim.new(hd, 0.5)
            gL.Parent = g5
            hd = Instance.new
            gA = hd(25)
            gA.Color = Color3.fromRGB(true, Color3, Color3.fromRGB)
            gA.Thickness = gL
            gA.Transparency = g5
            gA.Parent = gA
            hg = Instance.new
            gG = hg(hd)
            hd = UDim.new
            gG.PaddingTop = hd(he, 0.3)
            gG.PaddingBottom = UDim.new(0, g5)
            gG.PaddingLeft = UDim.new("UIStroke", new)
            gG.PaddingRight = UDim.new(6, hg)
            gG.Parent = hd
            f8, gQ = g8, 6
        else
            f8.Size = UDim2.fromOffset(52, 52)
            f8.Position = UDim2.fromScale(0.5, 0.04)
            f8.AnchorPoint = Vector2.new(0.5, 0)
            f8.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
            f8.BackgroundTransparency = 0.1
            f8.Image = "rbxassetid://91400086538074"
            f8.ScaleType = Enum.ScaleType.Fit
            f8.AutoButtonColor = true
            f8.Parent = g5
            ha = Instance.new("UICorner")
            ha.CornerRadius = UDim.new(0, 12)
            ha.Parent = f8
            g8 = Instance.new("UIStroke")
            g8.Color = Color3.fromRGB(80, 80, 95)
            g8.Thickness = 1
            g8.Transparency = 0.3
            g8.Parent = f8
            g7 = Instance.new("UIPadding")
            g7.PaddingTop = UDim.new(0, 6)
            g7.PaddingBottom = UDim.new(0, 6)
            g7.PaddingLeft = UDim.new(0, 6)
            g7.PaddingRight = UDim.new(0, 6)
            g7.Parent = f8
            gQ, gL, gG, gA = false, nil, nil, false
        end
        g4 = (g4 + 5) % 24
    end
until fn10((g4 * 7 + 19) % 24, 192073492)
