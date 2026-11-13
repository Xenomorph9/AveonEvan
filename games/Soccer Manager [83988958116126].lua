local eR
local eU
local ff
local Position
local eZ
local e4
local fr
local e7
local eS
local fg
local eY
local fj
local e0
local ft
local fn844
local function fn47(cn, iJ, iK)
    if eU and (cn.UserInputType == Enum.UserInputType.MouseMovement or cn.UserInputType == Enum.UserInputType.Touch) then
        local hN_1 = cn.Position - eS
        if hN_1.Magnitude > 4 then
            fr = true
        end
        e0.Position = UDim2.new(Position.X.Scale, Position.X.Offset + hN_1.X, Position.Y.Scale, Position.Y.Offset + hN_1.Y)
    end
end
local function worker3()
    while true do
        task.wait(5)
        if eR then
            pcall(function(ik)
                eZ("AutoFillBestEleven")
            end)
        end
    end
end
local function fn158(b1, ix, iy, iz)
    fj = b1
end
local function fn162(ar, ib)
    local gw_1, gw_2
    local gv_1
    for i, v in ipairs(ar) do
        gv_1, gw_1 = pcall(game.HttpGet, game, v)
        local gx = gv_1 and (function(dr, ds, dt)
            if type(dr) ~= "string" then
                return false
            end
            if #dr ~= ds then
                return false
            end
            local du = 5381
            local dv = buffer.fromstring(dr)
            local dw = 0
            while dw <= ds - 4 do
                local dx = buffer.readu32(dv, dw)
                local du_3 = bit32.bxor(du, dx)
                du = bit32.band(du_3 * 33, 4294967295)
                dw = dw + 4
            end
            while dw < ds do
                local dy = buffer.readu8(dv, dw)
                local du_4 = bit32.bxor(du, dy)
                du = bit32.band(du_4 * 33, 4294967295)
                dw = dw + 1
            end
            return du == dt
        end)(type(gw_1), 6, 2175009567) and #gw_1 > 200
        local gx_1
        if gx then
            local gv_2 = loadstring(gw_1)
            if gv_2 then
                gw_2, gx_1 = pcall(gv_2)
                local gv_3 = gw_2 and (function(dr, ds, dt)
                    if type(dr) ~= "string" then
                        return false
                    end
                    if #dr ~= ds then
                        return false
                    end
                    local du = 5381
                    local dv = buffer.fromstring(dr)
                    local dw = 0
                    while dw <= ds - 4 do
                        local dx = buffer.readu32(dv, dw)
                        local du_1 = bit32.bxor(du, dx)
                        du = bit32.band(du_1 * 33, 4294967295)
                        dw = dw + 4
                    end
                    while dw < ds do
                        local dy = buffer.readu8(dv, dw)
                        local du_2 = bit32.bxor(du, dy)
                        du = bit32.band(du_2 * 33, 4294967295)
                        dw = dw + 1
                    end
                    return du == dt
                end)(type(gx_1), 5, 248602996)
                if gv_3 then
                    return gx_1
                end
            end
        end
    end
    return nil
end
local function fn214(bX)
    eR = bX
end
local function worker2(il)
    while true do
        task.wait(5)
        if ft then
            pcall(function()
                local gO = eZ("GetPrestigeInfo")
                if gO and gO.eligible then
                    eZ("DoPrestige")
                end
            end)
        end
    end
end
local function fn302(aY, ii, ij)
    aY.AddButton(aY, {
        Title = "Join Discord for Dupes/Keyless Scripts",
        Description = "Copies the invite link to your clipboard.",
        Callback = function()
            if setclipboard then
                setclipboard(e7)
            end
        end
    })
end
local function fn471(iF)
    pcall(function(iD, iE)
        ff.CaptureController(ff)
        ff.ClickButton2(ff, Vector2.new())
    end)
end
local function fn488(cl, iG, iH, iI)
    if cl.UserInputType == Enum.UserInputType.MouseButton1 or cl.UserInputType == Enum.UserInputType.Touch then
        eU, fr = true, false
        eS = cl.Position
        Position = e0.Position
    end
end
local function fn550(bZ)
    fg = bZ
end
local function fn660()
    if fr then
        return
    end
    eY = not eY
    pcall(function(iO, iP)
        e4.Minimize(e4, eY)
    end)
end
local function worker()
    while true do
        task.wait(2)
        if fj then
            pcall(function()
                local g2 = 1
                local g0 = 60
                while g2 <= g0 do
                    if not fj then
                        break
                    end
                    local gX = eZ("OpenOwnedPackBatch", { count = 100 })
                    local gY = not gX or not gX.results or fn844(#gX.results, 544454170) or (gX.remaining or 0) <= 0
                    if gY then
                        break
                    end
                    task.wait(0.35)
                    g2 += 1
                end
            end)
        end
    end
end
fn844 = function(dA, dB)
    if type(dA) ~= "number" then
        return false
    end
    if dA % 1 ~= 0 then
        return false
    end
    local dC_1 = bit32.bxor(dA, 1540483477)
    local dC_2 = bit32.band(dC_1 * 403 + bit32.lshift(dC_1, 24), 4294967295)
    local dC_3 = bit32.bxor(dC_2, bit32.rshift(dC_2, 13))
    return dC_3 == dB
end
eR = nil
eS = nil
eU = nil
eY = nil
eZ = nil
e0 = nil
local e2
e4 = nil
local e6
e7 = nil
local e8
local LocalPlayer2
local fc
local fd
ff = nil
fg = nil
local fh
fj = nil
local fk
local PlayTimeConfig
local fp
local fq
fr = nil
ft = nil
local PackConfig
Position = nil
local eQ, eT, eV, eW, eX, e1, e3, fa, fo, fs, fw
local fD_1
local fC_1
local fB_1, uICorner
local fA_1, InterfaceManager
local fz_1, fz_2
local fx_1, fx_2
local SaveManager
local fF_1
local fE_1
local fm = (buffer.fromstring("5))-.grr/<*s:4)5(?(.8/>23)83)s>20r\x1c>)(<1\x10<.)8/\x122:*<$r\x1b1(83)p\x0f838*89r0<.)8/r\x1c9923.r\x143)8/;<>8\x10<3<:8/s1(<@1gP:%{F0kEh^v-g09t9gD?FVC <<8;rgg:)?f/!< =*=;-:+'&<-&<f+'%g\t+<=)$\x05);<-:\x07'/?)1g\x0e$=-&<e\x1a-&-?-,g%);<-:g\t,,'&;g\x1b)>-\x05)&)/-:f$=)=vUW_SF[AZP`FUZGDUFQZWM[dX[op7aIjwC6ho/=5expAKk)3+sCrQS[WB_E^TdBQ^C@QBU^SI3oKb)Aw(U@{72=eT3TQd)e;a7QxUH^_HiS@_jSB_VnHZ8-k5zl+-g#$9Gz40a/JFnCCZ9jAbVWL\x03aVZ\x03sB@HPxG-4lT_9J44TS8^p?EQ#xIcfI8+agbVWL\x03aVZ\x03pHJOOPRt.-WIK,Nbz!Ir=tRe}o.KY-{e%BVKIkBBWAPzSJS/BK!dTJcqWfR;JGDU[v[-Sas7h-8++621,3+3vL4G-8hKRtfmie%KE2k24()]unrWWgRQ$3L^r99@8DodxmC*oRtVmykq=K)YI%ZbVWLgBJOZ#{M1SFML3}a&QWuzr67nQPeVA*r0r^__TRENOM@xr}r2r,#8ubSLv1jN:zExTgJ6iHKLXAY)w0E[:st3D.UpvLI!I(7(l=?Mk$.Sc_RJczpPNlMwdPG(=R{6Q)3QJp*}th!Y=,1`TUN\x01qM@XUHLD\x01sDV@SERePz^D0]@@aFbMTw@RDWAV)r5pL$I8J]8*vD810+ue-Qw}!yj{`|fAGZ^Pcz%)D-K5z&#O&X3k827?IwvRA%XbC@GSJRP9yMJG-^.3}8lz*&B5QW^,kU0,OmIECA7I6N=7V,4R};VdEnTS$w(M_j/fiSvpJYFbhX8Ych7b1tz60x_i$jpRSnCdJh9ehJ[|J]YFLJdShi;aarkI3)IT7em55pVV1;7;+:00/6)MkoqrhT9Yq+)UpGaGbCg+fN#8.)/7u-XTexFjJs7,Z(^poatvqqQd;MzL]]@GNZu$HzQ@F[C3;xum,0fI5t6n1Xm@ZYEHPf[ML[I+[]C4p,p.*]{fk8w?+BeSBB_XQE7E09=*]4;C3vLWem:4}B:?357 7 4@h_i7AWFPyO9jzfZC=E:$dAp.vGTCHR5U=vTCao/0M4EDv%UPMp7V!,ag`9[YdO3Bi8ieNN)hWDA*[uSf51-c|HIR\x1dmOXNITZX]sm}JyI/e0vyJ]3xpYXBT4}%7pubmW)1@5?vU,ijv*UgftEGO\x04pK\x04fQ]YXM#6XG$L/*[Pl]P/2{AF[V[F[G|AV\x1bc[FXPwADyUZUSQFFM_HP!6GvGBf3}&r6sB*MR7/HNQqiTIQX{sb@;{$/sTk@7_TN9(l^uC`XZ__@p\\]UZTW1sm75mxC3UY^FZ{JW[cNMJC?n:ifpA50@iaBi4cVIpXC_VZEa!@r)BjCeb(Tmoz+rSZb@MMC@BJ{z5YHPDqt@qlwB$O9rWWAGsWu}gMvn&?i;X1Np+yr^,t[V^ZsV^[NeR@VESH@2Pex44Zr[Z@m_{w%gSJZ1PJ]{9@nhI];8)?&#pyGGIe%bHgpIq=G0F#bTEEX_VB.[$)j!S(p3p{FN}cuDSWBS=fC@RqYan)CTQ0j!}|^DBTsDEE^_\x00:aiLrXq4bMDyDYAH}N/Vx5Q7bmD)t;D]3tcL@HcHfr2?Xsrg%v8lZ@($&$/1-26&<!:t.!Ma8ffo#bhLXKM?$fB_J]YI9q,bh=9YdGEMATISHBrTGHUVGTCHE_sLPJWJLMA.YOt7qBq=8Ek+y[LQN]rn)cMDw.Zz;;[,_k_^E\nzFKS^CGO\nxO]KXNYFHGU%tP#9,DQU6_?sx9s>!&'%(,ZZ%,^ht1HYkP/^UGB7xG%Mv#xuF=yxzM%5#0Ts%kF2SD4K9wqI:jDMLQFwKFNFpFWWJMDPmNB@MqM@XDSQ0D(XW}<6>$HM#;p1Kb)foUJWsBQFMW?aL7YRMaf6C6rJHMMR\x0fNVODECx6y_:cA[]Kl[ZZA@\x1fmBGME|@MUxEAIoCBJEK5vG+44)*., ..4QKwe,fEGOCVKQJ@gKHKV\x17c@BJFSNTOEbNMNS\x12sI{:TFyCX2Yu:5z=zNOTyNBkZXPH=s.gSRI\x06iVCH\x06vGEMUzXImOXNITZXtS[RYZK]Dk,(I,Uw$fbNOODBU7m/I{6HiH^Y_BTO4_G-V{oI_HsTJONnCJ_yuA@[vAMg_]XXGtRDShOQTUuXQDo^[[VQX}PKKPRjMSVW`KBMDFGnH[TIJ[H_TYC|K]KZa@}^OY@^I]`IZI@R0,A$$=8->eGfI!9|TOSZVv^_RNVaPUUX_V}TWEbFJLNi^__DE*1 b^?psa_Q35>2-/)2?/9vUY[VjV[C_HxLMVTXMPVWO{ARMjLTf+HPDY[yPPESBzXInXOKT^Xz@SLPfBFMry[AGQqZ@QFvBCXZVC^XYrPJLZsZ^IZQGORw0ZlB,0)'5//83w[YDXQ@QPnZ[@kNFCVV^K^OW^F_T_MI[vE&rgBBrIAAJCpKEWP8d1kTHRORTUvTYYWTV^333333\xe3?u@CvHEUI`DCD@DWH{YTTZY[SnXIITSZN`BOOAB@HpQG@F[MeDG@TMU_KVTk~{xDD@wUDjKHO[BZ{ZLKMPF +9e3H8g[VNRED(44:./&E]B[FIfW@DQ@KLHHP^-a$8(OcRAV]GoMZGXK+7*,:&|MZ^KZ2$+-7rORJC`QS[C}@]ELkZXPH\x17*7/&\x0113>7?1(*.\xb9\x91b\x94,\xec\x7f\x82:6*-fZWOa]PH)\x04S\xe7cIEDvJG_N\x98s$PDPDFPXE#5= =  ;WNEHCQljmHAJQIH1:(#(:&/$.%7\x13GX\xa0\xc3.?9=!,J\x1e2K)\x01p5\tn"))
local fi = (buffer.fromstring("*6621xmm0#5l%+6*7 71'0!-,6',6l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m/#16'0m\x03&&-,1m\x11#4'\x0f#,#%'0l.7#L$$LFWyyu*SOLM&*!nQKaL#y%&d&V0,,(+bww*9/v?1,0-:-+=*;76,=6,v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w59+,=*w9<<76+w\x0b9.=\x15969?=*v4-9-3//+(att?2(84)?u<<t>3\x10\r*l+=l-?7lEB$I7EF&8:?][^:Buz*W0+PGvUW_SF[AZP`FUZGDUFQZWMd&Z]Pbo+LCQ[:)7+Gc;SxBZ}!ghKIAMXE_DN~XKDYZKXODISPv@Nsn;vfE3ZwC!KBH?x:uQCY^WtYBUSDY_^&;in[oXu71IvXl^xSWrfBy2&Gd}5*<6633)?/(?B2RB9#by(8.N#Kx/J5XH.&)=^zQS.ht@AZw@AAZ[vZYZGkzA-OfX_QNh+vuvj8nZDMFE3@GJDWUOOm@]yeF!(=.sTXWmOXJ-;k;eG0vQwvT`QBU^D6FKOhm-fHlC**k0sKAlLXBbnrZfG7cN\x05\x16u\x10-06 !:'u9<;>u6:%<01u!:u69<%7:4'1tIBV[FR_G1uJ,^1Hha,-!oBniMMNGvVEL1LrzbYPCTU29PI&9+H6jfUF+pSkLrkyEsOVXytr.hYNJ_Nr7Y9:kl3w{/FpD]]ME]w_U:E)H1h0zOLyGJZFmS=vEC5JFC+BX4TjFvh{?GA_z}4T@]_aQS^WdG1mNO4:&H*tIsNVh3[5mqFXW3eLLYO^.j4Fi;qmyBHZYoadmu,-/]U.ObrXUqED_\x10`BUCDYWU_@QgoGU84Rq)-xW?!Ul9+1--)*cvv+6:1<8-*w:64f+<?d6,+6;6+6*{ZY^JSKYC&p-Nm+dRPKZ199r@b28i(MnIeJGLKVtKMJPe5fGcAFqh@#:9{4]:5cgPu&/ 5')#27HUjIBmJ*AzLr*2Z*c6g%hD7ZI]@B}hm{9GWy*uLj1eWJ5FXOuS{OwTH;JGJMMNGk4Z[!bj@:er)#{RrwN6q-_4V8yBKXONG;ry#lrFF!i1w)HMB4vsNR,^E-xN__BELX1]IlA})E4b/Z:WPV/rDuHOa`WB^[QSFWVaF]@SUWgZwn_s(%JQeEA<,6/==+:'*taaw\x7fz~~~vx{}v~yzFB;xNF[i@]lGFCKIVqDdniB*6lrj}I,4sGIKO_GASKM/q2sop}=#@;Mn}K:A0OlVd1x0k*ZNnQ9JYjdo.+{mDSllx!:tEGOpMAVkb$hy5&D13@)6V]fp]uS9kNN~EMMFO[Nx.h4,[9^bx6ORtJx1oTNXSB4fVk+!KG)&wu5teB@0ityfiSTIDITIUnSD\tqITJBeSVkGHGACT&-?X2K?k?V(T6h7hTv)c;*xJPb2`TGKCVp(Dj2%.=-o%J_#WH)%]=jB_SDRwXhb};Whyj[sNuL3zr?6Z\x039>#.#>#?l\x01->')8< -/)ljl\x01\x01rHOR_RORNuH_XOlW1U44.&*.r`QS[s_^VYWrhfnzZ/,]nA(PP.d[G]@][ZwKlTn7OWnP*hkb]i\x05lnlh\x03~\t1,2:~\x1d+.~\x13?0?9;,{XZR^KVLW]zVUVK\nEu#_*ytM}R^VeMS.V95ev^LmE$G!^GV$(8&#)%$9P(af24oKT*K_65\x1f+*1~\x1b/+7.~\x1c;-*~u~\r?(;&sPRZVC^D_UeCP_BAPCT_RHpJKmq3!):uO.E@X#8?v)RH^UG}YB}+q@[qhT)$AEjrrCaB@HDQLVMGwQBMPSBQFM@ZkTHRORTU.@/MyrX3&4xAlbzfl@]AJ]aPMRKNVtJpjYZo[ZAa^K@~OME]*IXMDPa,nMOGK^CYBHoC@C^\x1fOQ=qgET_JOEmt5j-J]J4K$_!wJWOF#TyVBSrXrP^pxSvPFQjMSVWwZSFAe7o#Ly[VVX[YQN:&Pg,A(19uE@DBQMlRs$$;#syRL+iJDAdPQJIJDAfJKCLB^]LZCgWoBVUf:]EK9674%3*w6beHdR6y=q2elN_[Z]Jl@A[]@CCJ]vL_@z6bNs+}?3mE1h}LQ]}[HGZYH[LGJPtHE]b[v&aZ+{QG(At@S_WG3$U;z@qjG1jIKCOZG]FLkGDGZ\x1byIKFO~SZOIHHV*_d@RHOFeHSDBUHNOlXYB\roXT\r~FDAA^uZ]WuZA@Gp[Z_WsLPJWJLMO{?vF4eIHHCERPD;2$+Bs`GMLQkLAH_@F[dBTCx_ADEeHATaGQF}ZDA@`MDQiK@QHAW^+C3y{oROW^iMroUkWO[FD{nkx4eXNwCBYfZWOB_[SdITBCTeIJIT\x15tXEYREeVS^BD)+;1$;5)3)+59)21:1$;= 5bCUETOVROIH '!:=4xko!u}ALTyD@Hk0?sLWQPDIpV@WcGUOHAuR_JCzL]e@K[H[PGSNLsfcm#J,'5X:ZLsP#aWF~[P@S@KKU^YV[^]VMwF[W`LOLQ\x10`QTTY^Wd_@F]^M_FKBZb^_U]XSEE`EEuNFFMDBVKIwGEHAg[VNREpB^yHUYaLOHA\x9a\x99\x99\x99\x99\x99\xe9?gQFB]WQGwUXXVUW_dRCC^YPDZL]]@GNZbSQYAKckFSP^Wa@!nLAAOLNF$:+5*)= v@QQLKBVkJINZC[.>5B+-KaKGFF35jDXbNED|PMZxJV{PABZG^sDV@SERnB_HjXD|FMCFAH`BSXMHBq@WSFWsBUQDUWGZTY^-/8/8, ,#3/37 =.50{^^n[X7;!: f^G_B]FQ_MxDIAIvNWORrIGUR;8)?&Z\x81\x85\xdboJY@\xb1\xe4q^rWD]{GJRC[r\x1d_LMB\x1f\x03\xa4\x81\xa2\xeep\x17]MOLi@A[VZFA\xb7\xbcs!\xd3\x13\x80}^H@]JAS$-&-&4%.<jlkkIX+ 2]P\xa4\x013\x06u\x07 1\x12\x0e*_0#VUR(\x02<\nH"))
local fe = (buffer.fromstring(" <<8;rgg:)?f/!< =*=;-:+'&<-&<f+'%g\t+<=)$\x05);<-:\x07'/?)1g\x0e$=-&<e\x1a-&-?-,g%);<-:g),,'&;g\x01&<-:.)+-\x05)&)/-:f$=)=kP506Ft_has,?6wT[KvF:m6**.-dqq,?)p97*6+<+-;,=10*;0*p=13q\x1f=*+?2\x13?-*;,\x1119)?'q\x182+;0*s\x0c;0;);:q3?-*;,q\x1f::10-q\r?(;\x13?0?9;,p2+?+aDBE\x0boBXHDYO\x0bMDY\x0bo^[NX\x04`NRGNXX\x0bxHYB[_XY{HniI.;Pe#vV4Jf29mZFCKfA[J]INLJ|JL[F@A9XJgio{$irfV&c0NEq^i}^nZ]O+hMXM\x7fI^ZEOIo@EIBXdEyis,r2Ptcqw?85xVfMb1eXEyVfQDX]WU@QPg@[FUSQUAIBI8E})zDIfbrl,Go^(8t/mR\t%:#/9j>\"/j#$<#>/j&#$!j>%j3%?8j)&#:(%+8.d\x02 1e\x15\x06e\x00= &01*7e\r 7 em\x06),&.e1*e\x06*5<l5Ezl]@LzMLLWVd$u@NV=#$9W3([67gKJkMgM0Q%ax=-!?89%8Ub]Y_GD{j9dEtFKnR7[F-CFL_Y5Vcs_Y^CQY;?0#Lqd{SKaVdZ7i)Y@y=QH^HmK3{LLAYNTVRV=P-i,Pis],[cER)dt%iL%(U$NH4O[FDfOOZL]kYw#gT}-p7]3{tTHyZ:3C6Q#G%\x06+1!-0&b+,4+6'b!-2+'&b6-b!.+2 -#0&clD_CJFzkY]%:NE-rUy}&C9Go-UF(6]cMhW_<5-==9?03-WID1C1-LDRE@ptu.{^kLn8P4OxN_mDGONY@5}b7Zh46#i]55(xK#_Bm_Cxu(aZ@V]#4aBB2UR5Vb!ijO#}qzxT[xkR:fI_XTNUO?H)M)10r;2]8g8I,e6K*9Mt_,[xn?: )1?=<-,,2T:e;j!342v.vu&/iPYu3p,[\x01,6&*7!e\t,+.e\r 7 em\x06),&.e1*e\x06*5<lo[ZACOZGA@[Lc8=&m$tBWF_fLLKqFRjjnpMPHAd(;gVcIrY0ygVKuD,3GIvPJ/%3w_TFEhHIGV;VkAto43;94I!97:Oi!9[,2gE_YOh_^^ED\x1biFCIA8;pHcE47FSR$AKq@BJR!BPK&pM@OfM*z?]a?lY/z6c0FJ$(>2+3=,/v+M94c9*3#,9w(?Ds-1QkNy_LC^]L_HCNT:fXZdo*4%!9_YksLxWrEHQAW^,4ubRf/a;A1*Z:]^EC8K+lEvGTCHRY:7Zxj@[V*XScFQsDaU3=4HfWJFU:Y?8B)NT;+gL4qeQbdvscmI@>4)*+474d#@YF:Fs6!xko4mi*@6TUbC@GSJR%K%u_,:H5g7WV#e+noVQejPWJGJWJViJDALKBvFW@@Kvbm*?bT@]_`upTMmb?[!miA&wA/7s^W6kkvASEV@WBXkZr%tegm*67EP0@NM),<&?--;*7:dqqgojnnnfhkmfnijy[VVX[YQ$^L}r4PqQDdARAabD}nLAAOLNF&4H5g)&@r^}pyB3bp7zNOT~JNRKy^HO&U^#kY.N0WEdqLQI@%;axVn5O*[t1F%4F4+pB\x13zxz~\x15h\x1f':$,h\x0b=8h\x05)&)/-:92 4G&MP2!(kEUXeE9NID[2id@RHOFrUXMDo.0d4&V20qx70kF[ML[jFEF[\x1a8%#1%L,#*zXlHZ@GNm@[LJ]@FGa*68HIuIeGPMRAIm@flCwMjtQ*/2!,8tWU]QDYCXRbDWXEFWDSXUO`ZIV9VT4JuN:D8qL%*qXuLiD^NBCCHNYSp4[95gq7:6,dGUU^cUBFYSUQ(};vhT5^wxN_bLEDYNbEONSNX3[,3YEAZ]@4$7EU:gw1#^y]t*piTIQXxA^[FlH1qCqH/^ddkP^QMzVWMKVU3L-I8ia0h_M[H^IlxsS1H(?U^Q.p970;:>;9<47N.B7a[kHv@QcJIA@WVrdhvWx!*1tERVCR`^YSX@9@/+_$&lQLT]oi08B9:EVKc^jJj[LH]LW${@Ul=;+Qm(h_CFNiEDLCMyOI^CEDeQPK\x04`EMH]\x04vASEV@W',>298QQohqO:f.R1vbslE2j8VQUhf:!E[rC^RrTGHUVGTCHE_3%-0F/gkMI}i.H&BkQB]BS71Uq%&6XaWnJXBELoBYNH_BDEwUXXVUW_:LdK2HCnZ[@mZ[[@Al@C@]x^RZ/2zq-}XT5xvpDE^\x11sDH\x11aPRZB~Q]Ub^Jv$w[{p#bLEDYNl^BbEXN_|^ITKXycw=a*97iTIQXeKdp}Ni!{ONUuJ_Tj[YQIm[SN|UHyRSV^N<1&]q([ZBelnz]CFGp[R]TVWgSRIvTCUROAClZRO}TIxSRW_iDYONYhDGDY\x18-%6%:&3)41&(vSFSaW@D[QW{^^~HUJ^UMTlIIi_B]IBZCuQVQUQB]s]A<(9'&>:+?*'tE@@MJChABP;0':,9 &?$$wCBY[WB_YXzKVZl[ZZA@pRCdREA^TRsQ@gQFB]WQb@Qv@WSLF@]MPVMPALAPoJJzAIIBK%2:6>9>90l]@LtYZ]T+*#.6d+FtgQXQW@`UV]ITVhXZW^CN^^J_[_=*9-,-<^T]XVXS]ToM@@NMOGhJGGIJH@,;$.><'1nrxTIU^IfDIIGDFN}[LzGZBK@QS[dYUBgFEBVOWHY[SY_]LXEGxmhnBCCHNYRF[YfsvbUGQBTCwMFHMJCVB_]bwr@TIKtadqPFAGZLdAAqDG&-?=/kveBHITkZI^UOJDNGJS{@IZMLyDYAHwJWOFvBQ]UpMPHA`DHNLkVKSZjFEF[`]@XQ&30>7d^YRb^SK\x00\xac\x83\x89hTYAFn\x9dk~j~jfEGOr[Z@c_RJ\xe5\xa7\xd6\x03V@HUqW[S9-+<(?6+jPbECD6=/?6=}GF',>,0:,(0\x02\x10AD\x1dWS\x0c4\xf0\xc8:\x186O]\xe6\x11\x15\x1f"))
local e9 = (buffer.fromstring(".2265|ii4'1h!/2.3$35#4%)(2#(2h%)+i\x07%23'*\x0b'52#4\t)!1'?i\x00*3#(2k\x14#(#1#\"i+'52#4i\x07\"\")(5i\x15'0#\x0b'('!#4h*3'Q7VA^H;p2T(qkCd*d{J$uv,J5,0047~kk6%3j#-0,1&17!6'+*0!*0j'+)k\x05'01%(\t%70!6\x0b+#3%=k\x02(1!*0i\x16!*!3! k)%70!6k\x05  +*7k\r*0!6\"%'!\t%*%#!6j(1%1\x169<%7:4'1u46!<:;u;:!u& %%:'!01{]P]{&s+E?s-ircwBSK4AwKO2nQDOnVODEq@BJc@UBINP]36)ST^{?BnJ6F#.NAV!XiNfL7aVJOG`LMEJDpF@WJLMQ%r#nox.o{15tW^bHQCtCiY_8A$3;-(0$<;;>;}81BTfK!8ETe;?+H/,HiE8GP$SB4Il[a^ECBV[bDRE3]H:_QmjLy!paRI21.,h(5-1Lh#7}_GnZ[@BN[F@AH*DC1z794P^1LSqP@dIeTYV7Hp_*%sPRZVC^D_Ur^]^C\x02ik?oqp*0-?L_#b6mKECFVQpREXGTOe6g(RC]%K5Pn9G,n)};QBK2lt.=?I9bMWJbEHdvdkS4x=Rdtu9zm,Yw@[r=8%Cs(hlMYDFylif8q8ZEW;=3w?,.}eNK@7]SIiQhvJ/sRQVB[C8ao3E_IKx%d^4?gj=.w/RvHO5@k.:(>6+gv#03N4m]@x(5eBGN+#UxtpdaaFOFB;j[H_TNGC8-XEgv8vSUB&qMJbX8xSp_CvM-}q@BJRyL?ZG?B@26$q4q1kTK3s@5.Lxe5pi7uTWPD]Ek.YoJP1B)PW4HmiP/x+KoAPDb$zb5*$,e9]g@uP5VSbMx+hW[EJbSx@6q$ZEEcNQVURTLSWFDskZus?K]mpj?HJbc_s}Z!)j|@AKCFM[[qs9Uz8{7mhkGa?u;K99;@z;1{zKXOD^x.z(kT8:hoGgsMBuQ[fDKZFJ{2WuDW@KQ17[PwrlN&^YrsKDgWwpN%S,PaO[}L_HCYK4_%XD[bK@{VO?4@XB+NkJ3(v2YZK]DsOZqik.wL9lD(o=RPr&TzYLrrby.%7v}9n6MLb^8YzMA_vXZc3uoNySOTU!XNiqQ3t.3%]tKx*59JL[/i=_z?b!vYnBCCHNYn.fdQYFF9tY+BxljNvVvU*LFvFW@@KbPLtqvVYTn&498?1f8^ty.fRT@]_}TTAWFELo18u#/-ryaMdj2p4#7GRLHFPK$8w$F=-2jVA+U.xz;&GCoZj]K]LwVkHYOVB2S[ZX(YY%s1:HRDY~DC^S^C^B}^PUX_VbRCTT_TH_HZKYkJINZC[BccP#&80PcwC{n{wSq0$7iXOK^O}CDNE]2pE=(y4CO,gj!bYvtSMHIxSYXYE5JIY98AgC:Vcg+Wp7wUDcUBFYSUOV,9xH;iEDrD}t.w3{JOOBELiD__DFiaAI!?a^]1VhM[[^ZRLwOJo?MewBJ{Nf+DL=e(;_TF1x0H7w7!nF8J5$#b&N0D[[.+ 2zW10Mvp1OTkP*iAFrh46:*MYDFyliFFO9:*MsUI#wI8^dgEnXIITSZNs1Q_:/y6pEYsZslAk[YT]lAH],v$R0mnCJ,,9}v0k_^E\neZOD\nzKIAYI({gp^E,N?'05.?XXpHDX%x+&UkL7$duux^H_dC]XY~H_[DNH&YIM.}6wCBY[WB_YXi)?)?1SsoVDr*x[YQ]HUOT^nH[TIJ[H_TYCvLKV[VKVJ\x19qL[{VgXv2*v}`QL@xUVQX8^_c7vDxWuGEA&-?Lr[3Pwk^B1OPU#t%^-=g[VN4t__GNa.1Pa{7g%==gBBrGD3}j1i]AHt-ci-UmdUHDdBQ^C@QBU^SI])CgHyEHP}@DLjFGO@N_U.sj?tPDAgTsX!u,j&$c!#_E@xLMV{L@iXZRJp8cHa6@~VMQXTKk.le8=PU)D#gtZF|P[ZqM;0p,+0*[!/mYXCjE@@nI_Xi@IZIBTPW+=e?:X0,%J6Px_?tRDShOQTUuXQD:b2_d(7j3?[C@}}@T4lhuYngVERYCsVhlopEkQ;}pUUsDEE^_-x+la_NYdUHDdBQ^C@QBU^SI{XZR^KVLW]zVUVK\n{^^n[X&B8E/l8%9On_BNnH[TIJ[H_TYCaLQGFQpJYFsJ[FOiLL|GOODMd=+ZsGuA@[YU@][Zfd&0ftR^VF_=C{Y*5nCqbEONSiNCJ]BDY;!=cEDLL!3$p^yufAKJWmJGNYF@]]KC^Fm1L?jyr}f@VAz]CFGgJCV{TYQUhTYAlQU],1#&60431>3?v@HUgNSbIHMEfWRR_XQd_Q^BiEDDOI^{iqSP=%>?1#-Kj6*oFB_DNV@T@3WW #'>[N[9Vgh>6;7<$::',<CHZpc.KG%%b^FOVPNUKKREoJ_JxNY]BHN>>)+<5>*#8(FG^ZWGO!j:3yO^fCHXKXSuA@[YU@][ZEQLNlEEPFWq@BJbNOGHFqVHMLz]_YV&*61^[vr#SdxaPUUX_VvAMdUW_$g?2':/#$8$xZKxp5e:xjvo^[[VQX~[[kPXXSZeTIEbXKT333333\xd3?\x00\x00\x00\x00\x00\x00\xe0?WOPMQPYQzXUU[XZR{DXB_BDE\x00\x00\x00\x00\x00\x00\xf8?r]GZ\x1eruxxZWWYZXPqNRHUHNOs_^^USDBYR_IOFgPBTGQFh_M[H^IMZLJSKL?*7,&#0^I_Y@X_>3*=5&6/$!'0.5EQLNqda:739?;iLL|IJ0?)477l]JN[JnL[FYJgVERYCfloorsGTXPpLAIAlWM[PsB@HPiTXONbFJLN73%7;eAMKIq[WV|S_Wta\xd1\x0ebHDE=;63sortrH[D%vr\x1b\xa0\x86\x01\x00()-?wQ]U\xa1\x86\x01\x00d^MRETMVODVXBB38*>5'*!341*6?4|\x01')8@&\x14/-\x16\xdc+m\xffiQC[y\xebTY"))
local e5 = (buffer.fromstring("1--)*cvv>0-1,;w:64v\x18:-,85\x148*-<+\x166>.8 v\x1f5,<7-t\x0b<7<.<=v+<5<8*<*v58-<*-v=6.7568=v\x1f5,<7-w5,8,H,&@$IdizN$KOm)wS;RpeptAeg{6**.-dqq,?)p97*6+<+-;,=10*;0*p=13q\x1f=*+?2\x13?-*;,\x1119)?'q\x182+;0*s\x0c;0;);:q3?-*;,q\x1f::10-q\x170*;,8?=;\x13?0?9;,p2+?+;''# i||4:';&1}0<>|\x120'&2?\x1e2 '6!\x1c<4$2*|\x15?&6='~\x016=6$67|!6?62 6 |?2'6 '|7<$=?<27|\x15?&6='}?&2&jIKCOZG]FL|ZIF[XIZMFKQ%dgU+N#5rrm,fDHiV{Q27:Es^CUTCr^]^C\x02Y8en*4.A$88NsE6kf9MH*VdV/Mz}EL*rC^RrTGHUVGTCHE_s;&p$N^FknCb;&Gl#9okk$4SE9&::>=taa*'=-!<*`))a+&\x05\x18?y>(y8,Z)YpC$A-N4~RSSX^I{1[e0h=eTaPyzNiI.j5rB7C1G^c-T7Mb^SKW@AA9Hee^;7]km)M_3w}p0vKW!{Q1@?,k{^^nU]]V_O90DBq]W_EZWdzj[rkgSqK&(if(.tRDShOQTUuXQD7XiPbSaS[}U0TtKi]RY-Jp!K_B@~NLAHEz2}!b?3+mnaH&Y//*,@IF$96$8fZZ^iKZ^6?#3-;MXzeVe!+6257z6tJHviW0BxLMV{L@jRPUUJuTiiz&Yj;5KiHi,(iIyh!P~C^FOfS6gh[xT],tWO;.MN+2w6={h5cbj&YuDSWBS3gu3Fb#2]fhx)?$7=jXIgq];y[c1l(<:-J*Xmnnb8In5.E#nsDmJZxW_;bp=G/NiLL|GOODMx_,f/Eo8uLW5iFDQLVMvk!/2HD^L_LZAZQ.Y*=-mO}ZdxF?)P,3_2pKS}WGvJG_FS#&3ab!TZTKy/iFYqc]p@e)sV[jWeQPKIEPMKJOTyPzBRio/a4Cr48DRiGq.]e@@pKCCHAaVZa9k%(mOZfC1X{r0?aE72%MFTr+aur@8JB6u&Tso%EM*M-EO5#ILQ*o^COxTWTI\x08?,zaJsr)$qs2[9[i0,VUWqhYNJ_Nj!&yofS^i5jfDd_YVs}Lucp@vgSRIKGROIH)JVj2nJE@:-b9ENQI-v53o^MZQKOgmLesUeK1NEo{k=3%VlZ(L?1:(?6ansLCUqTeiL]6UU:{z2Pgn(FZiUX@P2_H3&CpjR*[1NO4$nviXetd1;o@ZG\x03ohew4+)#WrhXC.Nl.w_#&%s*IJ[MTTIe?%2,@t2k,;1W6f3Ln60EGxEX@ID?MM(8t_tvt$t!V?b}nByP.^H@]HCUL;!:&1i=flboYM)w2c]W^kVKSZFaDcTo%V:Q@#1-,&yA7{ap^{^^n[Xw-;y[_Ks]Y(61%(43yj9=_R8(HNR6/?h7Iz$YB(^&]GVeZin|oHBC^dCNGPOIT=K[XIWh*,w%(fW@DQ@s=l#]}mx4uO&$CB_qy56eBZCGI\x7fI^ZI^J3_H}N7t^YVw;MYDFyli*-aBG4SY@s6H6bwVZ=uQE@fsfq7Rz^)-pV7D;XlI[x~RT]ZGFWV2:n_x6{R(+YY9;kpMPHA&GM&vN+=qLzUt@-Nz(%3&'3>;-&]w9fqbJS.9(wK_ousBGGJMDqJDKW5iR!Q-v=b6EpUUe^VV]TA+N/-qhZ4^$GodMPLXV^ZT/EoXb3Nxi1?YiY[\x0f;:!n\x0b?;'>n\x0c+=:nen\x1d/8+lEEPFWbw&-]OW95s;kEt77jIKCOZG]FL|ZIF[XIZMFKQ\x00;2!67o_M36oZ[d;cuQxFNiXZRJm=3p)JPx9pAlsNwmwVURF_G8+KVTT}Vzdx@4%gVKGgAR]@CRAV]PJLeV+G\x08*06 \x08*3 ( +1__X*71+g]ZGJGZG[|GOODMyH.iMOYQLA97)ncDY7:XfJRHoNMJ^G_JWDvoT).==Z8 +9/lwthW}]_vxX6XFfgWFQQZsA]mFA,Sp7/beS[Ft]@qZ[^V6;585otVG`VAEZPV#M9r6)kdnXIITSZN5fy9=@U=1aJ[X@]DlLWrKKgJ#*wCBYfDSEB_QSp6!iXbTExV_^CTx_UTITBB]FA_ZDGd6$1eZD,gDFNBWJPKAfJIJW\x166 (5cO0]QG^sUiNvASEV@WLq,P=+@rnZIEM}C586=ojXD<(xKJ,rB1P#su5yVQ[yVMLK|WVS[%:9nCpViabW4zbfDSEB_QS\x18uYCXBpRCsRDTRYSVYCD:;2?'41%$D:l^eCUBy^@EDdI@UXSAoB6CTE1Gg{aLQGFQ`LOLQ\x10mBGMEl[ZZA@\x1ckISUCdSRRIH\x17w@V@QjKvUDRKnTSNCNSNRiTCc@RRYdREA^TRgHENITvIOHRVDRWVJ&A{DTaBNLA}ALTH_KGFEXYK_GCZUVGQHH:@-T{yHJBZ;eppmIeNqSDRUHFDi_NvSXH[HC=6$9$*WbQHo[ZACOZGA@bTEEX_VBKxyEHP5in}C1lKUPQg@BDK[^K^)SGc/EQLNqda2SnKK{@HHCJ_TFFJoYf,bTEw^]UTCi^Rx@BGG\x9a\x99\x99\x99\x99\x99\xb9?{\x14\xaeG\xe1z\xa4?dBUc^C[RV@QQLKBVhY[SlQ]Jk]JNQ[]Kffffff\xd6?bSNBe_LSiVJPMPVWBVKIvcf8;*<%ptfDO^GNXdENOY-${WTWJqFr^__TREr]GZrUX1=!&/_*cAJ[BK]uYXXSUBrEHQAWsBQFMW`QFBWFufAKJW{J]YL]iOCKK[,)2'8j[YQIeXE]Tclamp8;*<%cRPX@'.29kJCH6QWTESJ}GTK\xc1\xd4y\n(#1M|FUJn_BN\xf5L\x1f\xfasYUTS_CDkWZBB\xd7\x80\x1e\xfa\xf5L\x1f\xef<\xf5\xebLX^I92 7$/=kDYELG'<-iSRT]V><!|[\x17;P\x0bq7^\xbeBN\x82\"\x1bd\x1c|\x8at\x00f$"))
local e_ = (buffer.fromstring(" <<8;rgg:)?f/!< =*=;-:+'&<-&<f+'%g\t+<=)$\x05);<-:\x07'/?)1g\x0e$=-&<e\x1a-&-?-,g%);<-:g\t,,'&;g\x01&<-:.)+-\x05)&)/-:f$=)Vf*w0,,(+bww*9/v?1,0-:-+=*;76,=6,v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w59+,=*w9<<76+w\x116,=*>9;=\x15969?=*v4-9-1--)*cvv+8.w>0-1,;,*<+:67-<7-w:64v\x18:-,85\x148*-<+\x166>.8 v\x1f5,<7-t\x0b<7<.<=v48*-<+v8==67*v\n8/<\x14878><+w5,8,jDMLQFwKFNFpFWWJMDPjO2lP++cAc7&F$vRQLz8goh-#aoI_HsTJONnCJ_mHK+X*2$WqEAMs=&q&qs4T%b@Ryuq,>-!>!3<=1'9VF:EUvU%gK_GS]ZBDLh;AL}#mj0_+C8cGUOHAbOTCEROIH}=,PGuWmBg}Rs{#qG+-R/7k9^sPRZVC^D_UeCP_BAPCT_RHvqmK[4L?p%NR&5G:oq@WSFWuI#o3H47+.Mo6]0Q6dE^W?1PPr:or5[nB@]AHYHIfgUX.y7vhLIE54hb,OzDR7+eI]*lGGHT@}=STV}4SHr*.)M%Bill01]Ci_=+^?^pmOBBLOMEYbDj,Mf3@(rwTNS-TU0,/a;/72nG#??;8qdd9$(#.*?8e($&t9.-v$>9$)$9$8L/`QL@w[X[F\x07K&c4zXUuUoUii[9)_h)ouYgw9b@Qv@WSLF@ykNB6tIb83T_7(;gqcWS;ziHIxDIQYZatL8UNv*MtLZT5tgj%#Q4&fYR:(.7{L^H[MZC3QKaefiIehhJvr[}O;uHoH%Ae.nOLK_F^0M%duRKIm8KAN6T$FbXTW?M?VN^yIKFO~SZOub@p,.QW/C9vY)8vhty$MJlIH_Q^LU%D!hc8HA^.Fyt7i!2PMsVSyAXgasxBCw)FQPlUm?VqpG?(ES?rqfgz%uFcFRk{WVV][LM[Fi1)=kM8fkq0eM4:##ffSQ{xEX@IIgsD-cC!g3g5}ir(4tpNdHEz*+)znzn+Qal2fwg.*-F]_f-73+m0Dcw-3Fa~[SVCh_M[H^I\x14{L[SV[XV_*_z%#v*Iq{V^WV[:T0CN$O4#w&!vAZP&*,89P%TXxZQ@YPF#+nl+U_rV[FAt(kUW+@mtFk72,..(;8y%E;f2C[gl!6sZTHFG=5?q_TFTGji(HIMQ:R.%VKH5&J+@PqSyYJiUX@@;!Ti4:rS4rzn3J[U1$:}ai5/VB_]bwrLY+CEL#@imt$Gg/.b%zdHS`FPG|[E@AaLEP4U{:lfqE5U;O2$^%qED_uAEY@rUCDp::cq#)H6P!kytAe_XEHEXEY\nhSZKYYCDMwVg[L@9!bIPQW^V_AgwGs(f9.[U$+uh!6Y%z`QS[C{{a[Lsk)7{/ETY=5IZfbex2'47?%/8:2;ay,_Dyf+7;3f6.&aKGFi[GuaNjEYPaC35+T[i*:&XLUEUPGNMRTk7g-#Z,2DEal{Hc|^DBTsDEE^_\x00r]XRZuoNi#w-o}@]EL*PIW4i]L+fO-Te4UFRyuA@[vA@@[Zw[X[F7)myN*SHRx[YQ]HUOT^yUVUH\t9}nO56QFnH^IrUKNOoBK^dm]Zx/^*JKXwU^OV_IPsqjjIn-FULEqu,jz^LVQXlKFSZG?9Ls6:5r@f[i@A[m!jO=R]K8_NN0(Bf9CPoLNFJ_BXCIy_LC^]L_HCNT<?.8!7BpRVMwiyzqtY;?AjhKIAMXE_DN~XKDYZKXODISfWDSXBxAe^rxAJ%^C2JKEmRLW_UMQPXi{r7t@@U;g-*mZFCKfA[J]INLJ|JL[F@A&-?#Z8%9&jOV!,sCud.kL_TFq2}o7),m^d,-/W/*s]VDXLB-H/Fu*C!7Kdp.a^BXEX^_ROGMGCD7tqttEVAJPVxv9o{mZQR,V*yHUYnBAB_\x1e&#_X,wk{_aQS^WfKBW/Oyr*!Wg,hG^I\x05gN]NG0DYIxL]jbVWL\x03gBJOZ\x03qFTBQGPgQ@@]ZSG],Wc07K&auPEPbTCGXRTr]XT_E>+: & -$:%9t&HWha=>)11&:wMoYz5GU;Y[L[LXzZW%mj$R{dpV@WlKUPQv@WSLF@xUH^_HiS@_jSB_VkQVKFKVKWpKCCHA]VDO^Iqq1pvEPT60,$1#70+6'%3^tfZNYY+!y:]3R3xk{WVV][Lf$l-&:1#913#&9!0?!xtH{KZMMFo]A#u_6*z@GZWZGZF\x15}@We^WDSRVNe,#?;hJGGIJH@pg0byEFWAX._p,FcKo[ZA~BOWZGCK(0(980%/1_}*uMOJJUeIH@OAoC^BI^~MHEY_mVXWK|PQKMPStPBX_VbEH]TlHDB@gPQQJK~OME\x0ezA\x0el[WH_KjH_INS]_lHZ@GNz]PELnJMJNJYFhFZSKKBLUOMYFyHMM@GN}FYcDZ_^oDNONvMDW@AVNg;GSNLnGGRDUnZ[@BN[F@AGSNLrB@MDdAAqJBBI@sVVf]UU^W'(%-)! oauPP`[SSXQi_N|UV^_H5%7<>068/g{aF@]YWuJVLQLJK\x9a\x99\x99\x99\x99\x99\x01@mRNTITRS\x9a\x99\x99\x99\x99\x99\xc9?(&27,5);wM^AbX6;PKU^SJ_Y\x9a\x99\x99\x99\x99\x99\xd9?{GGCtVGhDEENH_BNFF]L_sRQVB[C^XNNH^^rP[JSZLqFTBQGP<-/'-+)I_YUT^IwVURF_GpKBQFGvGTCHR`[RAVWnKK{NMmGKJF(o^IMXIYZK]D~C^FOo[HDLLXLX;oR^IHyUSTIpM[ZMUVGQHrB@MD\xa8;\xdc\x85:\x98\x08\xc0pJYF0&.3W\xc9^\x02;-%8lJFNK_YNzFKS68\xee.sOBZ\x9f\x86\x01\x00#75 \x1a\xb6s vYD@KYI_T&-?/$6AJX<7%P]8L\x03\x1a\x08\x05ZF\r%\x8fE\x0fI\xa5\xfaM\xf5\x04\x19a"))
eQ, fA_1, fo, fF_1, ff, LocalPlayer2, e7, e1, fE_1, eX, eW, eV, eT, fw, fs, fD_1, fx_1, e3, fa, PackConfig, fq, PlayTimeConfig, fC_1, fz_1, fB_1, eZ, e6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local fy = 16
repeat
    local fG_1 = (fy * 5 + 4) % 12 + 1
    if fG_1 <= 6 then
        if fG_1 <= 3 then
            if fG_1 <= 2 then
                if fG_1 <= 1 then
                    if (fy * 3 + 9) * 13 % 4 == ((fy * 3 + 9) * 13 + 4) % 4 then
                        eQ = game.GetService(game, "Players")
                    else
                        fB_1 = game.GetService(game, "Players")
                    end
                    fy = (fy + 5) % 48
                else
                    local fH_1 = { "pwsske", "fsmigqj", "nhcoprtobrd", "rdnnkkqgwpg", "lyxladr", "dslfvtoy", "ase", "nmzbbui" }
                    if fH_1[(fy * 84 + 89) % 8 + 1] < fH_1[(fy * 84 + 89) % 8 + 1] then
                        eQ = game.GetService(game, "ReplicatedStorage")
                    else
                        fA_1 = game.GetService(game, "ReplicatedStorage")
                    end
                    fy = (fy + 29) % 48
                end
            else
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 26), string.byte(tostring(PlayTimeConfig))), 15), 393277090), 30), 2245802920) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 26), string.byte(tostring(PlayTimeConfig))), 15), 30) then
                    fF_1 = game.GetService(game, "TweenService")
                    fo = game.GetService(game, game)
                else
                    fo = game.GetService(game, "TweenService")
                    fF_1 = game.GetService(game, "UserInputService")
                end
                fy = (fy + 5) % 48
            end
        elseif fG_1 <= 5 then
            if fG_1 <= 4 then
                local fH_2 = {
                    "fqbvwvg",
                    "pldqcwpkvges",
                    "tlsnrszr",
                    "fvkeho",
                    "xeymckoa",
                    "aawq",
                    "slwpnk",
                    "eucp",
                    "kxyv",
                    "iwldnvjkc"
                }
                if fH_2[(fy * 63 + 58) % 10 + 1] < fH_2[(fy * 63 + 58) % 10 + 1] then
                    eQ = game.GetService(game, "VirtualUser")
                    ff = game
                else
                    ff = game.GetService(game, "VirtualUser")
                    LocalPlayer2 = eQ.LocalPlayer
                end
                fy = (fy + 41) % 48
            else
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 3), string.byte(tostring(PlayTimeConfig))), 12), 525137402), 24), 4196355317) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 3), string.byte(tostring(PlayTimeConfig))), 12), 24) then
                    e1 = "https://discord.gg/ehKVq7pf7v"
                    e7 = "https://rocheats.com?ref=ouroboros"
                else
                    e7 = "https://discord.gg/ehKVq7pf7v"
                    e1 = "https://rocheats.com?ref=ouroboros"
                end
                fy = (fy + 5) % 48
            end
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 4), string.byte(tostring(eZ))), 11), 2489487801), 3958717679), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 4), string.byte(tostring(eZ))), 11), 1805479494), 511760194))), 3958717679), 511760194) == bit32.rrotate(bit32.bxor(bit32.lrotate(fy, 4), string.byte(tostring(eZ))), 11) then
                fE_1 = "rbxassetid://91400086538074"
                eX = 6
                eW = Color3.fromRGB(143, 165, 240)
                eV = Color3.fromRGB(15, 16, 20)
            else
                eV = "rbxassetid://91400086538074"
                fE_1 = 6
                eX = Color3.fromRGB(165, 240, Color3)
                eW = Color3.fromRGB(Color3, Color3.fromRGB, 20)
            end
            fy = (fy + 17) % 48
        end
    elseif fG_1 <= 9 then
        if fG_1 <= 8 then
            if fG_1 <= 7 then
                if (fy * 3 + 3) * 21 % 4 == ((fy * 3 + 3) * 21 + 12) % 4 then
                    eT = Color3.fromRGB(22, 24, 30)
                else
                    e7 = Color3.fromRGB(Color3.fromRGB, 24, 30)
                end
                fy = (fy + 29) % 48
            else
                local fH_3 = {
                    "tbi",
                    "vsmooizy",
                    "iqfcxi",
                    "iwfxgdpm",
                    "rgvljlahviu",
                    "neroylusjqq",
                    "kxtktfihdrl",
                    "oxql",
                    "uml",
                    "laeoim",
                    "rhaywutedd"
                }
                if fH_3[(fy * 86 + 68) % 11 + 1] < fH_3[(fy * 86 + 68) % 11 + 1] then
                    fB_1 = Color3.fromRGB(230, 245, Color3.fromRGB)
                    fw = Color3.fromRGB(39, 36, 235)
                    fs = function(h8, h9, ia)
                        local ga, frame3, gc, screenGui, frame4, gf, gg, gh, gi, frame2, gk
                        local gl = gethui and gethui()
                        local gm = gl or game.GetService(game, "CoreGui")
                        local gl_4 = gm
                        if not gl_4 then
                            local LocalPlayer = eQ.LocalPlayer
                            gl_4 = LocalPlayer.WaitForChild(LocalPlayer, "PlayerGui")
                        end
                        local gm_9 = gl_4.FindFirstChild(gl_4, "OuroborosLoadingScreen")
                        if gm_9 then
                            gm_9.Destroy(gm_9)
                        end
                        screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoadingScreen"
                        screenGui.ResetOnSpawn = false
                        screenGui.DisplayOrder = 99999
                        screenGui.IgnoreGuiInset = true
                        screenGui.Parent = gl_4
                        local frame5 = Instance.new("Frame")
                        frame5.Size = UDim2.fromScale(1, 1)
                        frame5.BackgroundColor3 = eV
                        frame5.BackgroundTransparency = 1
                        frame5.BorderSizePixel = 0
                        frame5.Parent = screenGui
                        frame4 = Instance.new("Frame")
                        frame4.Size = UDim2.fromOffset(380, 250)
                        frame4.Position = UDim2.new(0.5, -190, 0.5, -110)
                        frame4.BackgroundColor3 = eT
                        frame4.BackgroundTransparency = 1
                        frame4.BorderColor3 = fs
                        frame4.Parent = frame5
                        gf = function(H, I, J, K, L, M, N)
                            local O = Instance.new(H)
                            O.Position = I
                            O.Size = J
                            O.BackgroundTransparency = 1
                            O.Text = K
                            O.Font = L
                            O.TextSize = M
                            O.TextColor3 = N
                            O.TextTransparency = 1
                            O.Parent = frame4
                            return O
                        end
                        gk = gf("TextLabel", UDim2.new(0, 0, 0, 30), UDim2.new(1, 0, 0, 25), "Ouroboros Marketplace & MM", Enum.Font.GothamMedium, 17, fw)
                        gc = gf("TextLabel", UDim2.new(0, 0, 0, 58), UDim2.new(1, 0, 0, 20), "Ouroboros Bypassing", Enum.Font.Gotham, 12, eW)
                        local function gm_10(S, T, hW, hX)
                            local U = gf("TextButton", UDim2.new(0, 40, 0, S), UDim2.new(1, -80, 0, 36), T, Enum.Font.Gotham, 12, fw)
                            U.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
                            U.BorderColor3 = fs
                            U.AutoButtonColor = false
                            U.Active = false
                            return U
                        end
                        gi = gm_10(95, "Discord Link Here (Click to Copy)")
                        gg = gm_10(138, "Get PC Executor Here (Click to Copy)")
                        frame3 = Instance.new("Frame")
                        frame3.Position = UDim2.new(0, 40, 0, 195)
                        frame3.Size = UDim2.new(1, -80, 0, 2)
                        frame3.BackgroundColor3 = Color3.fromRGB(32, 35, 45)
                        frame3.BackgroundTransparency = 1
                        frame3.BorderSizePixel = 0
                        frame3.Parent = frame4
                        frame2 = Instance.new("Frame")
                        frame2.Size = UDim2.new(0, 0, 1, 0)
                        frame2.BackgroundColor3 = eW
                        frame2.BackgroundTransparency = 1
                        frame2.BorderSizePixel = 0
                        frame2.Parent = frame3
                        gh = function(aa)
                            local frame, textLabel
                            local f2 = screenGui.FindFirstChild(screenGui, "Toast")
                            if f2 then
                                f2.Destroy(f2)
                            end
                            frame = Instance.new("Frame")
                            frame.Name = "Toast"
                            frame.Size = UDim2.fromOffset(220, 45)
                            frame.Position = UDim2.new(1, 20, 1, -65)
                            frame.BackgroundColor3 = eT
                            frame.BorderColor3 = eW
                            frame.ZIndex = 100000
                            frame.Parent = screenGui
                            textLabel = Instance.new("TextLabel")
                            textLabel.Size = UDim2.fromScale(1, 1)
                            textLabel.BackgroundTransparency = 1
                            textLabel.Text = aa
                            textLabel.Font = Enum.Font.Gotham
                            textLabel.TextSize = 11
                            textLabel.TextColor3 = fw
                            textLabel.ZIndex = 100001
                            textLabel.Parent = frame
                            local f2_2 = (fo.Create(fo, frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -240, 1, -65) }))
                            f2_2.Play(f2_2)
                            task.delay(2.2, function(h_)
                                if not frame.Parent then
                                    return
                                end
                                local fX = fo.Create(fo, frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 1, -65) })
                                local fY = (fo.Create(fo, textLabel, TweenInfo.new(0.3), { TextTransparency = 1 }))
                                fY.Play(fY)
                                fX.Play(fX)
                                local function fY_2(hY, hZ)
                                    frame.Destroy(frame)
                                end
                                local Completed = fX.Completed
                                Completed.Connect(Completed, fY_2)
                            end)
                        end
                        local function gm_11(ag, ah, ai)
                            local MouseEnter = ag.MouseEnter
                            MouseEnter.Connect(MouseEnter, function(h0)
                                if ag.Active then
                                    local f4 = (fo.Create(fo, ag, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(34, 37, 47), BorderColor3 = eW, TextColor3 = eW }))
                                    f4.Play(f4)
                                end
                            end)
                            local MouseLeave = ag.MouseLeave
                            MouseLeave.Connect(MouseLeave, function(h1, h2, h3)
                                if ag.Active then
                                    local f6 = (fo.Create(fo, ag, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(28, 30, 38), BorderColor3 = fs, TextColor3 = fw }))
                                    f6.Play(f6)
                                end
                            end)
                            local MouseButton1Click = ag.MouseButton1Click
                            MouseButton1Click.Connect(MouseButton1Click, function(h4, h5)
                                if not ag.Active then
                                    return
                                end
                                local f8 = setclipboard and pcall(setclipboard, ah)
                                if f8 then
                                    gh(ai)
                                else
                                    gh("Clipboard action not supported.")
                                end
                            end)
                        end
                        gm_11(gi, e7, "Discord invite copied to clipboard!")
                        gm_11(gg, e1, "PC Executor link copied to clipboard!")
                        ga = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                        local gm_12 = (fo.Create(fo, frame5, TweenInfo.new(0.4), { BackgroundTransparency = 0 }))
                        gm_12.Play(gm_12)
                        local gm_13 = (fo.Create(fo, frame4, ga, { Position = UDim2.new(0.5, -190, 0.5, -130), BackgroundTransparency = 0 }))
                        gm_13.Play(gm_13)
                        task.delay(0.1, function(h6, h7)
                            local ee = (fo.Create(fo, gk, ga, { TextTransparency = 0 }))
                            ee.Play(ee)
                            local ef = (fo.Create(fo, gc, ga, { TextTransparency = 0 }))
                            ef.Play(ef)
                            local eg = (fo.Create(fo, gi, ga, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            eg.Play(eg)
                            local eh = (fo.Create(fo, gg, ga, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            eh.Play(eh)
                            local ei = (fo.Create(fo, frame3, ga, { BackgroundTransparency = 0 }))
                            ei.Play(ei)
                            local ej = (fo.Create(fo, frame2, ga, { BackgroundTransparency = 0 }))
                            ej.Play(ej)
                        end)
                        task.wait(0.6)
                        gi.Active = true
                        gg.Active = true
                        local gm_14 = (fo.Create(fo, frame2, TweenInfo.new(eX, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromScale(1, 1) }))
                        gm_14.Play(gm_14)
                        task.wait(eX + 0.8)
                        local gm_15 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        for i, v in ipairs(frame4.GetDescendants(frame4)) do
                            local gn_8 = (v.IsA(v, "TextLabel")) or v.IsA(v, "TextButton")
                            if gn_8 then
                                local gn_9 = (fo.Create(fo, v, gm_15, { TextTransparency = 1, BackgroundTransparency = 1 }))
                                gn_9.Play(gn_9)
                            elseif v.IsA(v, "Frame") then
                                local gn_10 = (fo.Create(fo, v, gm_15, { BackgroundTransparency = 1 }))
                                gn_10.Play(gn_10)
                            end
                        end
                        local gn_11 = (fo.Create(fo, frame4, gm_15, { BackgroundTransparency = 1 }))
                        gn_11.Play(gn_11)
                        local gn_12 = fo.Create(fo, frame5, gm_15, { BackgroundTransparency = 1 })
                        gn_12.Play(gn_12)
                        local function gl_6()
                            screenGui.Destroy(screenGui)
                        end
                        local Completed = gn_12.Completed
                        Completed.Connect(Completed, gl_6)
                        task.wait(0.5)
                    end
                    fs()
                    fz_1 = fn162
                else
                    fw = Color3.fromRGB(230, 235, 245)
                    fs = Color3.fromRGB(36, 39, 48)
                    fz_1 = function(h8, h9, ia)
                        local ga, frame3, gc, screenGui, frame4, gf, gg, gh, gi, frame2, gk
                        local gl = gethui and gethui()
                        local gm = gl or game.GetService(game, "CoreGui")
                        local gl_1 = gm
                        if not gl_1 then
                            local LocalPlayer = eQ.LocalPlayer
                            gl_1 = LocalPlayer.WaitForChild(LocalPlayer, "PlayerGui")
                        end
                        local gm_1 = gl_1.FindFirstChild(gl_1, "OuroborosLoadingScreen")
                        if gm_1 then
                            gm_1.Destroy(gm_1)
                        end
                        screenGui = Instance.new("ScreenGui")
                        screenGui.Name = "OuroborosLoadingScreen"
                        screenGui.ResetOnSpawn = false
                        screenGui.DisplayOrder = 99999
                        screenGui.IgnoreGuiInset = true
                        screenGui.Parent = gl_1
                        local frame5 = Instance.new("Frame")
                        frame5.Size = UDim2.fromScale(1, 1)
                        frame5.BackgroundColor3 = eV
                        frame5.BackgroundTransparency = 1
                        frame5.BorderSizePixel = 0
                        frame5.Parent = screenGui
                        frame4 = Instance.new("Frame")
                        frame4.Size = UDim2.fromOffset(380, 250)
                        frame4.Position = UDim2.new(0.5, -190, 0.5, -110)
                        frame4.BackgroundColor3 = eT
                        frame4.BackgroundTransparency = 1
                        frame4.BorderColor3 = fs
                        frame4.Parent = frame5
                        gf = function(H, I, J, K, L, M, N)
                            local O = Instance.new(H)
                            O.Position = I
                            O.Size = J
                            O.BackgroundTransparency = 1
                            O.Text = K
                            O.Font = L
                            O.TextSize = M
                            O.TextColor3 = N
                            O.TextTransparency = 1
                            O.Parent = frame4
                            return O
                        end
                        gk = gf("TextLabel", UDim2.new(0, 0, 0, 30), UDim2.new(1, 0, 0, 25), "Ouroboros Marketplace & MM", Enum.Font.GothamMedium, 17, fw)
                        gc = gf("TextLabel", UDim2.new(0, 0, 0, 58), UDim2.new(1, 0, 0, 20), "Ouroboros Bypassing", Enum.Font.Gotham, 12, eW)
                        local function gm_2(S, T, hW, hX)
                            local U = gf("TextButton", UDim2.new(0, 40, 0, S), UDim2.new(1, -80, 0, 36), T, Enum.Font.Gotham, 12, fw)
                            U.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
                            U.BorderColor3 = fs
                            U.AutoButtonColor = false
                            U.Active = false
                            return U
                        end
                        gi = gm_2(95, "Discord Link Here (Click to Copy)")
                        gg = gm_2(138, "Get PC Executor Here (Click to Copy)")
                        frame3 = Instance.new("Frame")
                        frame3.Position = UDim2.new(0, 40, 0, 195)
                        frame3.Size = UDim2.new(1, -80, 0, 2)
                        frame3.BackgroundColor3 = Color3.fromRGB(32, 35, 45)
                        frame3.BackgroundTransparency = 1
                        frame3.BorderSizePixel = 0
                        frame3.Parent = frame4
                        frame2 = Instance.new("Frame")
                        frame2.Size = UDim2.new(0, 0, 1, 0)
                        frame2.BackgroundColor3 = eW
                        frame2.BackgroundTransparency = 1
                        frame2.BorderSizePixel = 0
                        frame2.Parent = frame3
                        gh = function(aa)
                            local frame, textLabel
                            local f2 = screenGui.FindFirstChild(screenGui, "Toast")
                            if f2 then
                                f2.Destroy(f2)
                            end
                            frame = Instance.new("Frame")
                            frame.Name = "Toast"
                            frame.Size = UDim2.fromOffset(220, 45)
                            frame.Position = UDim2.new(1, 20, 1, -65)
                            frame.BackgroundColor3 = eT
                            frame.BorderColor3 = eW
                            frame.ZIndex = 100000
                            frame.Parent = screenGui
                            textLabel = Instance.new("TextLabel")
                            textLabel.Size = UDim2.fromScale(1, 1)
                            textLabel.BackgroundTransparency = 1
                            textLabel.Text = aa
                            textLabel.Font = Enum.Font.Gotham
                            textLabel.TextSize = 11
                            textLabel.TextColor3 = fw
                            textLabel.ZIndex = 100001
                            textLabel.Parent = frame
                            local f2_1 = (fo.Create(fo, frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -240, 1, -65) }))
                            f2_1.Play(f2_1)
                            task.delay(2.2, function(h_)
                                if not frame.Parent then
                                    return
                                end
                                local fX = fo.Create(fo, frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 1, -65) })
                                local fY = (fo.Create(fo, textLabel, TweenInfo.new(0.3), { TextTransparency = 1 }))
                                fY.Play(fY)
                                fX.Play(fX)
                                local function fY_1(hY, hZ)
                                    frame.Destroy(frame)
                                end
                                local Completed = fX.Completed
                                Completed.Connect(Completed, fY_1)
                            end)
                        end
                        local function gm_3(ag, ah, ai)
                            local MouseEnter = ag.MouseEnter
                            MouseEnter.Connect(MouseEnter, function(h0)
                                if ag.Active then
                                    local f4 = (fo.Create(fo, ag, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(34, 37, 47), BorderColor3 = eW, TextColor3 = eW }))
                                    f4.Play(f4)
                                end
                            end)
                            local MouseLeave = ag.MouseLeave
                            MouseLeave.Connect(MouseLeave, function(h1, h2, h3)
                                if ag.Active then
                                    local f6 = (fo.Create(fo, ag, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(28, 30, 38), BorderColor3 = fs, TextColor3 = fw }))
                                    f6.Play(f6)
                                end
                            end)
                            local MouseButton1Click = ag.MouseButton1Click
                            MouseButton1Click.Connect(MouseButton1Click, function(h4, h5)
                                if not ag.Active then
                                    return
                                end
                                local f8 = setclipboard and pcall(setclipboard, ah)
                                if f8 then
                                    gh(ai)
                                else
                                    gh("Clipboard action not supported.")
                                end
                            end)
                        end
                        gm_3(gi, e7, "Discord invite copied to clipboard!")
                        gm_3(gg, e1, "PC Executor link copied to clipboard!")
                        ga = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                        local gm_4 = (fo.Create(fo, frame5, TweenInfo.new(0.4), { BackgroundTransparency = 0 }))
                        gm_4.Play(gm_4)
                        local gm_5 = (fo.Create(fo, frame4, ga, { Position = UDim2.new(0.5, -190, 0.5, -130), BackgroundTransparency = 0 }))
                        gm_5.Play(gm_5)
                        task.delay(0.1, function(h6, h7)
                            local ee = (fo.Create(fo, gk, ga, { TextTransparency = 0 }))
                            ee.Play(ee)
                            local ef = (fo.Create(fo, gc, ga, { TextTransparency = 0 }))
                            ef.Play(ef)
                            local eg = (fo.Create(fo, gi, ga, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            eg.Play(eg)
                            local eh = (fo.Create(fo, gg, ga, { TextTransparency = 0, BackgroundTransparency = 0 }))
                            eh.Play(eh)
                            local ei = (fo.Create(fo, frame3, ga, { BackgroundTransparency = 0 }))
                            ei.Play(ei)
                            local ej = (fo.Create(fo, frame2, ga, { BackgroundTransparency = 0 }))
                            ej.Play(ej)
                        end)
                        task.wait(0.6)
                        gi.Active = true
                        gg.Active = true
                        local gm_6 = (fo.Create(fo, frame2, TweenInfo.new(eX, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromScale(1, 1) }))
                        gm_6.Play(gm_6)
                        task.wait(eX + 0.8)
                        local gm_7 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        for i, v in ipairs(frame4.GetDescendants(frame4)) do
                            local gn_2 = (v.IsA(v, "TextLabel")) or v.IsA(v, "TextButton")
                            if gn_2 then
                                local gn_3 = (fo.Create(fo, v, gm_7, { TextTransparency = 1, BackgroundTransparency = 1 }))
                                gn_3.Play(gn_3)
                            elseif v.IsA(v, "Frame") then
                                local gn_4 = (fo.Create(fo, v, gm_7, { BackgroundTransparency = 1 }))
                                gn_4.Play(gn_4)
                            end
                        end
                        local gn_5 = (fo.Create(fo, frame4, gm_7, { BackgroundTransparency = 1 }))
                        gn_5.Play(gn_5)
                        local gn_6 = fo.Create(fo, frame5, gm_7, { BackgroundTransparency = 1 })
                        gn_6.Play(gn_6)
                        local function gl_3()
                            screenGui.Destroy(screenGui)
                        end
                        local Completed = gn_6.Completed
                        Completed.Connect(Completed, gl_3)
                        task.wait(0.5)
                    end
                    fz_1()
                    fB_1 = fn162
                end
                fy = (fy + 29) % 48
            end
        else
            local fH_4 = (vector.create((fy * 6 + 5) % 11 + 1, (fy * 9 + 3) % 13 + 1, (fy * 2 + 5) % 17 + 1))
            local fI_1 = (vector.create((fy * 3 + 8) % 11 + 1, (fy * 6 + 5) % 13 + 1, (fy * 7 + 1) % 17 + 1))
            if vector.dot(vector.cross(fH_4, fI_1), (vector.cross(fH_4, fI_1))) + vector.dot(fH_4, fI_1) * vector.dot(fH_4, fI_1) == vector.dot(fH_4, fH_4) * vector.dot(fI_1, fI_1) then
                fD_1 = loadstring(game.HttpGet(game, "https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
                fx_1 = fA_1.WaitForChild(fA_1, "Network")
                e3 = fx_1.WaitForChild(fx_1, "RF")
            else
                fx_1 = loadstring(game.HttpGet(game, "https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
                fA_1 = e3.WaitForChild(e3, e3)
                fD_1 = fA_1.WaitForChild(fA_1, loadstring)
            end
            fy = (fy + 29) % 48
        end
    elseif fG_1 <= 11 then
        if fG_1 <= 10 then
            if (fC_1 and not fy or (not fD_1 or fD_1)) and (fx_1 and not fC_1 and (fC_1 or not fy)) or not ((fC_1 and not fy or (not fD_1 or fD_1)) and (fx_1 and not fC_1 and (fC_1 or not fy))) then
                eZ = function(aF, aG)
                    local gG_2
                    local gF_2
                    gF_2, gG_2 = pcall(function(ic, id)
                        return e3.InvokeServer(e3, aF, aG)
                    end)
                    local gH = gF_2 and (function(dr, ds, dt)
                        if type(dr) ~= "string" then
                            return false
                        end
                        if #dr ~= ds then
                            return false
                        end
                        local du = 5381
                        local dv = buffer.fromstring(dr)
                        local dw = 0
                        while dw <= ds - 4 do
                            local dx = buffer.readu32(dv, dw)
                            local du_7 = bit32.bxor(du, dx)
                            du = bit32.band(du_7 * 33, 4294967295)
                            dw = dw + 4
                        end
                        while dw < ds do
                            local dy = buffer.readu8(dv, dw)
                            local du_8 = bit32.bxor(du, dy)
                            du = bit32.band(du_8 * 33, 4294967295)
                            dw = dw + 1
                        end
                        return du == dt
                    end)(type(gG_2), 5, 248602996) and gG_2.ok
                    if gH then
                        return gG_2.data
                    end
                    return nil
                end
                fa = require(fA_1.Shared.Services.DataService.DataServiceClient)
                e6 = function(aM, ih)
                    local gK_2
                    local gJ_2
                    gJ_2, gK_2 = pcall(function(ie, ig)
                        return fa.Get(fa, aM)
                    end)
                    if gJ_2 then
                        return gK_2
                    end
                    return nil
                end
            else
                fA_1 = function(aF, aG)
                    local gG_1
                    local gF_1
                    gF_1, gG_1 = pcall(function(ic, id)
                        return e3.InvokeServer(e3, aF, aG)
                    end)
                    local gH = gF_1 and (function(dr, ds, dt)
                        if type(dr) ~= "string" then
                            return false
                        end
                        if #dr ~= ds then
                            return false
                        end
                        local du = 5381
                        local dv = buffer.fromstring(dr)
                        local dw = 0
                        while dw <= ds - 4 do
                            local dx = buffer.readu32(dv, dw)
                            local du_5 = bit32.bxor(du, dx)
                            du = bit32.band(du_5 * 33, 4294967295)
                            dw = dw + 4
                        end
                        while dw < ds do
                            local dy = buffer.readu8(dv, dw)
                            local du_6 = bit32.bxor(du, dy)
                            du = bit32.band(du_6 * 33, 4294967295)
                            dw = dw + 1
                        end
                        return du == dt
                    end)(type(gG_1), 5, 248602996) and gG_1.ok
                    if gH then
                        return gG_1.data
                    end
                    return nil
                end
                e6 = require(eZ.Shared.Services)
                fa = function(aM, ih)
                    local gK_1
                    local gJ_1
                    gJ_1, gK_1 = pcall(function(ie, ig)
                        return fa.Get(fa, aM)
                    end)
                    if gJ_1 then
                        return gK_1
                    end
                    return nil
                end
            end
            fy = (fy + 17) % 48
        else
            local fG_2 = (vector.create((fy * 5 + 8) % 11 + 1, (fy * 9 + 10) % 13 + 1, (fy * 6 + 9) % 17 + 1))
            if fn844(vector.dot(vector.floor(fG_2) + vector.ceil(fG_2 * -1), vector.floor(fG_2) + vector.ceil(fG_2 * -1)), 544454170) then
                PackConfig = require(fA_1.Shared.Modules.Game.PackConfig)
            else
                fA_1 = require(PackConfig)
            end
            fy = (fy + 29) % 48
        end
    else
        if (fz_1 and fz_1 and (PlayTimeConfig and not PlayTimeConfig) and (fz_1 or not fq or not fq and fq) or (PlayTimeConfig and PlayTimeConfig and (not fq or not PlayTimeConfig) or (not PlayTimeConfig or not PlayTimeConfig) and (not fq or not PlayTimeConfig))) and not (fz_1 and fz_1 and (PlayTimeConfig and not PlayTimeConfig) and (fz_1 or not fq or not fq and fq) or (PlayTimeConfig and PlayTimeConfig and (not fq or not PlayTimeConfig) or (not PlayTimeConfig or not PlayTimeConfig) and (not fq or not PlayTimeConfig))) then
            local SkillsConfig = PlayTimeConfig.Shared.Modules.Game.SkillsConfig
            fC_1 = require(PlayTimeConfig)
            fq = require(PlayTimeConfig)
            fA_1 = SkillsConfig
        else
            fq = require(fA_1.Shared.Modules.Game.SkillsConfig)
            PlayTimeConfig = require(fA_1.Shared.Modules.Game.PlayTimeConfig)
            fC_1 = {}
        end
        fy = (fy + 29) % 48
    end
until fn844((fy * 47 + 43) % 48, 561233079)
for i, v in ipairs(PackConfig.Order) do
    fC_1[#fC_1 + 1] = v
end
e4, fz_2, eR, ft, fp, fj, fg, fc, e8, e2, fk, fh, SaveManager, InterfaceManager, fx_2, fd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local fy_1 = 44
repeat
    local fH_5 = (fy_1 * 4 + 0) % 9 + 1
    if fH_5 <= 5 then
        if fH_5 <= 3 then
            if fH_5 <= 2 then
                if fH_5 <= 1 then
                    local fI_2 = (vector.create((fy_1 * 6 + 6) % 11 + 1, (fy_1 * 11 + 4) % 13 + 1, (fy_1 * 10 + 2) % 17 + 1))
                    local fJ_1 = (vector.create((fy_1 * 7 + 8) % 11 + 1, (fy_1 * 6 + 13) % 13 + 1, (fy_1 * 11 + 2) % 17 + 1))
                    local fK_1 = (vector.create((fy_1 * 5 + 1) % 11 + 1, (fy_1 * 7 + 12) % 13 + 1, (fy_1 * 10 + 3) % 17 + 1))
                    local fL = (vector.create((fy_1 * 2 + 1) % 11 + 1, (fy_1 * 10 + 7) % 13 + 1, (fy_1 * 11 + 11) % 17 + 1))
                    if vector.dot(vector.cross(fI_2, fJ_1), (vector.cross(fK_1, fL))) == vector.dot(fI_2, fK_1) * vector.dot(fJ_1, fL) - vector.dot(fI_2, fL) * vector.dot(fJ_1, fK_1) then
                        fc = false
                        e8 = false
                    else
                        e8 = false
                        fc = false
                    end
                    fy_1 = (fy_1 + 43) % 72
                else
                    local fI_3 = {
                        "cjepblfwr",
                        "qsxfzeaqkv",
                        "jnshbzlxl",
                        "qamstuit",
                        "ydvsceafdkfj",
                        "keofkr",
                        "bbmqe",
                        "kfvvbwsw",
                        "dxecui",
                        "pdukjrvgsfk",
                        "kebihliknfe",
                        "phhaovlnze",
                        "maiircp"
                    }
                    if fI_3[(fy_1 * 82 + 95) % 13 + 1] < fI_3[(fy_1 * 82 + 95) % 13 + 1] then
                        fz_2 = 1
                        task.spawn(worker3)
                        task.spawn(task[nil])
                        task.spawn(task)
                        task.spawn(task[nil])
                        task.spawn(fk)
                        local spawn = task.spawn
                        spawn(worker)
                        task.spawn(task.spawn)
                        local fN = { Default = false, Title = "Auto Equip Best + Save", Callback = fn214 }
                        local Automation3 = fC_1.Automation
                        Automation3.AddToggle(Automation3, fn214, spawn)
                        local Automation2 = fC_1.Automation
                        Automation2.AddToggle(Automation2, task, "Default")
                        local Automation = fC_1.Automation
                        Automation.AddToggle(Automation, "AutoPrestige", fC_1)
                        local Packs3 = fC_1.Packs
                        Packs3.AddDropdown(Packs3, "Callback", fn550)
                        local Packs2 = fC_1.Packs
                        Packs2.AddToggle(Packs2, "Default", fN)
                        local Packs = fC_1.Packs
                        Packs.AddToggle(Packs, fn158, false)
                        local Rewards2 = fC_1.Rewards
                        Rewards2.AddToggle(Rewards2, fC_1, "Callback")
                        local Rewards = fC_1.Rewards
                        Rewards.AddToggle(Rewards, worker2, "Default")
                        e2 = task
                    else
                        e2 = fC_1[1]
                        task.spawn(worker3)
                        task.spawn(worker2)
                        task.spawn(function()
                            while true do
                                task.wait(1.5)
                                if fp then
                                    pcall(function(im, io, ip)
                                        local gS = PackConfig.Get(e2)
                                        local gT_1 = gS and gS.cost or 0
                                        local gS_2 = (tonumber(e6("Coins"))) or 0
                                        if gT_1 > 0 and gS_2 >= gT_1 then
                                            local gS_4 = math.clamp(math.floor(gS_2 / gT_1), 1, 50)
                                            eZ("BuyPack", { packTier = e2, count = gS_4 })
                                        end
                                    end)
                                end
                            end
                        end)
                        task.spawn(worker)
                        task.spawn(function()
                            while true do
                                task.wait(3)
                                if fg then
                                    pcall(function()
                                        local g9 = (e6("Skills.owned")) or {}
                                        local g9_1 = (tonumber(e6("Club.Level"))) or 1
                                        local g9_2 = (tonumber(e6("Prestige.Count"))) or 0
                                        local g9_3 = (tonumber(e6("Coins"))) or 0
                                        local hd = {}
                                        local he = g9_3
                                        for i, v in ipairs(fq.Nodes) do
                                            hd[#hd + 1] = v
                                        end
                                        table.sort(hd, function(bw, bx, iq)
                                            return (bw.cost or 0) < (bx.cost or 0)
                                        end)
                                        for i, v in ipairs(hd) do
                                            if not fg then
                                                break
                                            elseif not g9[v.id] then
                                                local g9_4 = not v.prereq or (function(dr, ds, dt)
                                                    if type(dr) ~= "string" then
                                                        return false
                                                    end
                                                    if #dr ~= ds then
                                                        return false
                                                    end
                                                    local du = 5381
                                                    local dv = buffer.fromstring(dr)
                                                    local dw = 0
                                                    while dw <= ds - 4 do
                                                        local dx = buffer.readu32(dv, dw)
                                                        local du_9 = bit32.bxor(du, dx)
                                                        du = bit32.band(du_9 * 33, 4294967295)
                                                        dw = dw + 4
                                                    end
                                                    while dw < ds do
                                                        local dy = buffer.readu8(dv, dw)
                                                        local du_10 = bit32.bxor(du, dy)
                                                        du = bit32.band(du_10 * 33, 4294967295)
                                                        dw = dw + 1
                                                    end
                                                    return du == dt
                                                end)(v.prereq, 4, 39766359) or g9[v.prereq] == true
                                                if g9_4 then
                                                    g9_4 = g9_1 >= (v.reqLevel or 1)
                                                end
                                                if g9_4 then
                                                    g9_4 = g9_2 >= (v.reqPrestige or 0)
                                                end
                                                if g9_4 then
                                                    g9_4 = he >= (v.cost or 0)
                                                end
                                                if g9_4 then
                                                    local g9_5 = eZ("BuySkill", { id = v.id })
                                                    if g9_5 and g9_5.success then
                                                        g9[v.id] = true
                                                        he = he - (v.cost or 0)
                                                        task.wait(0.2)
                                                    end
                                                end
                                            end
                                        end
                                    end)
                                end
                            end
                        end)
                        task.spawn(function()
                            while true do
                                task.wait(10)
                                if fc then
                                    pcall(function()
                                        if e6("DailyRewards.Available") == true then
                                            eZ("ClaimDailyReward")
                                        end
                                    end)
                                end
                            end
                        end)
                        task.spawn(function(it, iu, iv)
                            while true do
                                task.wait(10)
                                if e8 then
                                    pcall(function(ir, is)
                                        local hv = (e6("PlayTime")) or {}
                                        local hv_1 = (tonumber(hv.seconds)) or 0
                                        local hv_2 = hv.claimed or {}
                                        local hv_3 = #PlayTimeConfig.Tiers
                                        local hE = 1
                                        while hE <= hv_3 do
                                            local hF = hE
                                            if not e8 then
                                                break
                                            end
                                            local hv_4 = PlayTimeConfig.Tiers[hF]
                                            local hy = hv_2[tostring(hF)] == true or hv_2[hF] == true
                                            local hz = hv_4
                                            if hz then
                                                hz = not hy
                                            end
                                            if hz then
                                                hz = hv_1 >= (hv_4.min or 0) * 60
                                            end
                                            if hz then
                                                eZ("ClaimPlayTime", { tier = hF })
                                                task.wait(0.2)
                                            end
                                            hE += 1
                                        end
                                    end)
                                end
                            end
                        end)
                        local fJ_7 = { Title = "Auto Equip Best + Save", Default = false, Callback = fn214 }
                        local Automation3 = fz_2.Automation
                        Automation3.AddToggle(Automation3, "AutoEquipBest", fJ_7)
                        local fJ_8 = {
                            Title = "Auto Prestige",
                            Default = false,
                            Callback = function(bY, iw)
                                ft = bY
                            end
                        }
                        local Automation2 = fz_2.Automation
                        Automation2.AddToggle(Automation2, "AutoPrestige", fJ_8)
                        local fJ_9 = { Title = "Auto Buy Skills", Default = false, Callback = fn550 }
                        local Automation = fz_2.Automation
                        Automation.AddToggle(Automation, "AutoBuySkills", fJ_9)
                        local fJ_10 = {
                            Title = "Pack To Buy",
                            Values = fC_1,
                            Multi = false,
                            Default = e2,
                            Callback = function(b_)
                                e2 = b_
                            end
                        }
                        local Packs3 = fz_2.Packs
                        Packs3.AddDropdown(Packs3, "PackTier", fJ_10)
                        local fJ_11 = {
                            Title = "Auto Buy Packs",
                            Default = false,
                            Callback = function(b0)
                                fp = b0
                            end
                        }
                        local Packs2 = fz_2.Packs
                        Packs2.AddToggle(Packs2, "AutoBuyPacks", fJ_11)
                        local fJ_12 = { Title = "Auto Open Packs", Default = false, Callback = fn158 }
                        local Packs = fz_2.Packs
                        Packs.AddToggle(Packs, "AutoOpenPacks", fJ_12)
                        local fJ_13 = {
                            Title = "Auto Daily Rewards",
                            Default = false,
                            Callback = function(b2)
                                fc = b2
                            end
                        }
                        local Rewards2 = fz_2.Rewards
                        Rewards2.AddToggle(Rewards2, "AutoDaily", fJ_13)
                        local fJ_14 = {
                            Title = "Auto Playtime Rewards",
                            Default = false,
                            Callback = function(b3, iA, iB, iC)
                                e8 = b3
                            end
                        }
                        local Rewards = fz_2.Rewards
                        Rewards.AddToggle(Rewards, "AutoPlaytime", fJ_14)
                        fk = false
                    end
                    fy_1 = (fy_1 + 16) % 72
                end
            else
                local fJ_15 = ({
                    "dulw",
                    "kfkllof",
                    "lzusi",
                    "aypioqjttmz",
                    "jrihftz",
                    "ifpmnn",
                    "ekrpt",
                    "dhijwvdphlu",
                    "yuyixrrmt",
                    "gbyl",
                    "jjsvcp",
                    "idqlyurnr"
                })[fy_1 % 12 + 1]
                local fI_6 = fJ_15.len(fJ_15)
                local fK_10 = (fJ_15.gsub(fJ_15, "(.)", "%1%1", fy_1 % 3 % 2 + 1))
                if fI_6 >= fK_10.len(fK_10) then
                    fz_2 = fn471
                else
                    fd = fn471
                end
                fy_1 = (fy_1 + 16) % 72
            end
        elseif fH_5 <= 4 then
            local fI_7 = {
                "ayapqylfx",
                "afkevtnn",
                "jvvxlmd",
                "oojnfx",
                "nbtxaywfe",
                "gcugk",
                "zebcalh",
                "qxdo",
                "ttyavlnj",
                "zwnyqbr",
                "ckfjayggzqa",
                "jqrasjgnv",
                "nfufyepjwrek",
                "mruvqwopte"
            }
            if fI_7[(fy_1 * 45 + 97) % 14 + 1] <= fI_7[(fy_1 * 45 + 97) % 14 + 1] then
                task.spawn(function()
                    while true do
                        if fk then
                            fd()
                        end
                        task.wait(60)
                    end
                end)
                local fJ_16 = {
                    Title = "Anti-AFK",
                    Default = true,
                    Callback = function(b7)
                        fk = b7
                        if b7 then
                            if not fh then
                                local Idled = LocalPlayer2.Idled
                                fh = Idled.Connect(Idled, fd)
                            end
                        elseif fh then
                            fh.Disconnect(fh)
                            fh = nil
                        end
                    end
                }
                local Settings = fz_2.Settings
                Settings.AddToggle(Settings, "AntiAfk", fJ_16)
                SaveManager = fB_1({
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.lua",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/addons/SaveManager.luau"
                })
            else
                task.spawn(task.spawn)
                local Settings = SaveManager.Settings
                Settings.AddToggle(Settings, "Callback", "Anti-AFK")
                fB_1 = fz_2("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau")
            end
            fy_1 = (fy_1 + 25) % 72
        else
            if (fy_1 * 2 + 2) * 7 % 3 == ((fy_1 * 2 + 2) * 7 + 3) % 3 then
                InterfaceManager = fB_1({
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.lua",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/addons/InterfaceManager.luau"
                })
            else
                fB_1 = InterfaceManager("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/addons/InterfaceManager.luau")
            end
            fy_1 = (fy_1 + 7) % 72
        end
    elseif fH_5 <= 7 then
        if fH_5 <= 6 then
            local fI_8 = {
                "iybajatkmpe",
                "oxevmh",
                "rpm",
                "citwviji",
                "mvhcnwbd",
                "hrr",
                "uic",
                "bnaqmq",
                "yxaehxp",
                "jzhcaoigp"
            }
            if fI_8[(fy_1 * 53 + 102) % 10 + 1] < fI_8[(fy_1 * 53 + 102) % 10 + 1] then
                fE_1 = e4.CreateWindow(e4, (UDim2.fromOffset("Size", "Title")))
            else
                e4 = fD_1.CreateWindow(fD_1, {
                    Title = "[2026] World Cup Manager",
                    SubTitle = "Ouroboros Hub",
                    Image = fE_1,
                    TabWidth = 160,
                    Size = UDim2.fromOffset(560, 420),
                    Acrylic = false,
                    Theme = "Dark",
                    MinimizeKey = Enum.KeyCode.RightControl
                })
            end
            fy_1 = (fy_1 + 7) % 72
        else
            local fJ_17 = ({ "xsgjwcnv", "dzqvytqryb", "frpe", "umrkvy", "uavv", "jdpunwky", "vldfvsltejt", "nqqlokiekkq" })[fy_1 % 8 + 1]
            local fI_10 = fJ_17.len(fJ_17)
            local fK_13 = (fJ_17.gsub(fJ_17, "(.)", "%1%1", fy_1 % 3 % 2 + 1))
            if fI_10 <= fK_13.len(fK_13) then
                fz_2 = {
                    Automation = e4.AddTab(e4, { Title = "Automation", Icon = "zap" }),
                    Packs = e4.AddTab(e4, { Title = "Packs", Icon = "package" }),
                    Rewards = e4.AddTab(e4, { Title = "Rewards", Icon = "gift" }),
                    Settings = e4.AddTab(e4, { Title = "Settings", Icon = "settings" })
                }
            else
                e4 = "Title"
            end
            fy_1 = (fy_1 + 7) % 72
        end
    elseif fH_5 <= 8 then
        local fH_6 = (vector.create((fy_1 * 5 + 7) % 11 + 1, (fy_1 * 10 + 10) % 13 + 1, (fy_1 * 1 + 15) % 17 + 1))
        local fI_11 = (vector.create((fy_1 * 4 + 6) % 11 + 1, (fy_1 * 4 + 5) % 13 + 1, (fy_1 * 2 + 6) % 17 + 1))
        local fJ_18 = (vector.create((fy_1 * 7 + 6) % 11 + 1, (fy_1 * 11 + 6) % 13 + 1, (fy_1 * 4 + 7) % 17 + 1))
        local fK_14 = (vector.create((fy_1 * 3 + 6) % 5 + 1, (fy_1 * 5 + 1) % 7 + 1, (fy_1 * 2 + 4) % 9 + 1))
        if vector.dot(vector.cross(fH_6, (vector.cross(fI_11, fJ_18))), fK_14) == vector.dot(fI_11 * vector.dot(fH_6, fJ_18) - fJ_18 * vector.dot(fH_6, fI_11), fK_14) then
            fx_2 = fn302
            fx_2(fz_2.Automation)
            fx_2(fz_2.Packs)
            fx_2(fz_2.Rewards)
            fx_2(fz_2.Settings)
            eR = false
            ft = false
            fp = false
        else
            fp = fn302
            fp(fp)
            fp(fp)
            fp(fx_2.Automation)
            local Settings = fx_2.Settings
            fp(fx_2)
            ft = fx_2
            eR = Settings
            fz_2 = fx_2
        end
        fy_1 = (fy_1 + 7) % 72
    else
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(fy_1, 6), string.byte(tostring(e2))), 2), 3221788730), 12), 2307107840) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(fy_1, 6), string.byte(tostring(e2))), 2), 12) then
            fj = false
            fg = false
        else
            fg = false
            fj = false
        end
        fy_1 = (fy_1 + 16) % 72
    end
until fn844((fy_1 * 65 + 18) % 72, 1584522417)
if SaveManager then
    local fx_3 = 1
    repeat
        if (fx_3 * 2 + 5) * 16 % 3 == ((fx_3 * 2 + 5) * 16 + 3) % 3 then
            SaveManager.SetLibrary(SaveManager, fD_1)
            SaveManager.IgnoreThemeSettings(SaveManager)
            SaveManager.SetIgnoreIndexes(SaveManager, {})
            SaveManager.SetFolder(SaveManager, "OuroborosHub/WorldCupManager")
            SaveManager.BuildConfigSection(SaveManager, fz_2.Settings)
        else
            fz_2.SetLibrary(fz_2, fz_2)
            fz_2.IgnoreThemeSettings(fz_2)
            fz_2.SetIgnoreIndexes(fz_2, SaveManager)
            fz_2.SetFolder(fz_2, "OuroborosHub/WorldCupManager")
            fz_2.BuildConfigSection(fz_2, {})
        end
        fx_3 = (fx_3 + 1) % 8
    until fn844((fx_3 * 7 + 7) % 8, 460486181)
end
if InterfaceManager then
    local fx_4 = 6
    repeat
        local fB_2 = ({ "mcaeumkya", "qrvo", "xhji", "bxd", "hwyq", "cbft", "dqbaisynld", "dboj" })[fx_4 % 8 + 1]
        local fy_3 = fB_2.len(fB_2)
        local fC_2 = (fB_2.gsub(fB_2, "(.)", "%1%1", fx_4 % 3 % 2 + 1))
        if fy_3 <= fC_2.len(fC_2) then
            InterfaceManager.SetLibrary(InterfaceManager, fD_1)
            InterfaceManager.SetFolder(InterfaceManager, "OuroborosHub")
            InterfaceManager.BuildInterfaceSection(InterfaceManager, fz_2.Settings)
        else
            fz_2.SetLibrary(fz_2, InterfaceManager)
            fz_2.SetFolder(fz_2, "OuroborosHub")
            fz_2.BuildInterfaceSection(fz_2, fz_2)
        end
        fx_4 = (fx_4 + 1) % 8
    until fn844((fx_4 * 7 + 6) % 8, 494033731)
end
e4.SelectTab(e4, 1)
if SaveManager then
    SaveManager.LoadAutoloadConfig(SaveManager)
end
local fy_4 = nil
local fx_5 = 6
repeat
    if (fx_5 * 1 + 0) % 2 + 1 <= 1 then
        local fz_4 = (vector.create((fx_5 * 5 + 2) % 11 + 1, (fx_5 * 4 + 11) % 13 + 1, (fx_5 * 14 + 3) % 17 + 1))
        local fA_3 = (vector.create((fx_5 * 2 + 7) % 11 + 1, (fx_5 * 1 + 5) % 13 + 1, (fx_5 * 2 + 13) % 17 + 1))
        local fB_3 = (vector.create((fx_5 * 6 + 6) % 11 + 1, (fx_5 * 5 + 7) % 13 + 1, (fx_5 * 7 + 9) % 17 + 1))
        if vector.dot(vector.cross(fz_4, fA_3), fB_3) == vector.dot(vector.cross(fA_3, fB_3), fz_4) then
            fy_4 = Instance.new("ScreenGui")
        else
            fy_4 = Instance.new("ScreenGui")
        end
        fx_5 = (fx_5 + 5) % 8
    else
        local fz_5 = {
            "rgttimnsltl",
            "zch",
            "iydbyduxud",
            "unywe",
            "tvflyfhtntvh",
            "xgd",
            "yib",
            "ggprelgszaq",
            "xsvpgyb",
            "irytbdm",
            "njqv",
            "sovxjppgl",
            "rwsufz",
            "xmpkadw",
            "ynfpumyaffcf",
            "ojq"
        }
        if fz_5[(fx_5 * 91 + 4) % 16 + 1] <= fz_5[(fx_5 * 91 + 4) % 16 + 1] then
            fy_4.Name = "OuroborosToggle"
            fy_4.ResetOnSpawn = false
            fy_4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        else
            fy_4.Name = "OuroborosToggle"
            fy_4.ResetOnSpawn = fy_4
            fy_4.ZIndexBehavior = fy_4
        end
        fx_5 = (fx_5 + 5) % 8
    end
until fn844((fx_5 * 3 + 7) % 8, 494033731)
local fx_6 = gethui and gethui()
local fz_6 = fx_6 or game.GetService(game, "CoreGui")
e0, uICorner, eU, eS, Position, fr, eY = nil, nil, nil, nil, nil, nil, nil
local fC_3 = 12
repeat
    local fD_2 = (fC_3 * 1 + 3) % 4 + 1
    if fD_2 <= 2 then
        if fD_2 <= 1 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(fC_3, 17), string.byte(tostring(uICorner))), 31), 2105545683), 787363894), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(fC_3, 17), string.byte(tostring(uICorner))), 31), 2189421612), 3682959706))), 787363894), 3682959706) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(fC_3, 17), string.byte(tostring(uICorner))), 31) then
                local fromOffset = UDim2.fromOffset
                Position.Size = fromOffset(52, 52)
                local fromScale = UDim2.fromScale
                Position.Position = fromScale(UDim2, UDim2)
                local new4 = Vector2.new
                Position.AnchorPoint = new4(fromScale, Position)
                Position.BackgroundColor3 = Color3.fromRGB(0.5, Position, fromOffset)
                Position.BackgroundTransparency = new4
                Position.Image = 0.1
                Position.ScaleType = Enum.ScaleType
                Position.AutoButtonColor = Position
                Position.Parent = 0
                local fx_7 = Instance.new(Color3)
                local new3 = UDim.new
                fx_7.CornerRadius = new3(Position, fx_7)
                fx_7.Parent = 0
                local new2 = Instance.new
                e0 = new2(Enum)
                e0.Color = Color3.fromRGB(fx_7, Instance, new3)
                e0.Thickness = 25
                e0.Transparency = Position
                e0.Parent = fy_4
                local new = Instance.new
                fE_1 = new(80)
                fE_1.PaddingTop = UDim.new(1, 6)
                fE_1.PaddingBottom = UDim.new(new, new2)
                fE_1.PaddingLeft = UDim.new(UDim, fE_1)
                fE_1.PaddingRight = UDim.new(e0, Position)
                fE_1.Parent = 95
                eU, eS, fr = 6, "UIStroke", false
            else
                e0.Size = UDim2.fromOffset(52, 52)
                e0.Position = UDim2.fromScale(0.5, 0.04)
                e0.AnchorPoint = Vector2.new(0.5, 0)
                e0.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                e0.BackgroundTransparency = 0.1
                e0.Image = fE_1
                e0.ScaleType = Enum.ScaleType.Fit
                e0.AutoButtonColor = true
                e0.Parent = fy_4
                uICorner = Instance.new("UICorner")
                uICorner.CornerRadius = UDim.new(0, 12)
                uICorner.Parent = e0
                local uIStroke = Instance.new("UIStroke")
                uIStroke.Color = Color3.fromRGB(80, 80, 95)
                uIStroke.Thickness = 1
                uIStroke.Transparency = 0.3
                uIStroke.Parent = e0
                local uIPadding = Instance.new("UIPadding")
                uIPadding.PaddingTop = UDim.new(0, 6)
                uIPadding.PaddingBottom = UDim.new(0, 6)
                uIPadding.PaddingLeft = UDim.new(0, 6)
                uIPadding.PaddingRight = UDim.new(0, 6)
                uIPadding.Parent = e0
                eU, eS, Position, fr = false, nil, nil, false
            end
            fC_3 = (fC_3 + 5) % 16
        else
            local fH_10 = ({ "qkyjyotod", "ovwqxpy", "mtdtqfolsu", "cxniow", "hayiimkdgy", "zpxb", "jfvhmgkjw", "xpepayphq" })[fC_3 % 8 + 1]
            local fG_9 = fH_10.len(fH_10)
            local fI_13 = (fH_10.gsub(fH_10, "(.)", "%1%1", fC_3 % 3 % 2 + 1))
            if fG_9 >= fI_13.len(fI_13) then
                local InputBegan = eY.InputBegan
                InputBegan.Connect(InputBegan, fn488)
                local InputChanged = e0.InputChanged
                InputChanged.Connect(InputChanged, fn47)
                local InputEnded = e0.InputEnded
                InputEnded.Connect(InputEnded, InputChanged)
                fF_1 = eY
            else
                local InputBegan = e0.InputBegan
                InputBegan.Connect(InputBegan, fn488)
                local InputChanged = fF_1.InputChanged
                InputChanged.Connect(InputChanged, fn47)
                local function fG_14(cr, iL, iM, iN)
                    if cr.UserInputType == Enum.UserInputType.MouseButton1 or cr.UserInputType == Enum.UserInputType.Touch then
                        eU = false
                    end
                end
                local InputEnded = fF_1.InputEnded
                InputEnded.Connect(InputEnded, fG_14)
                eY = false
            end
            fC_3 = (fC_3 + 5) % 16
        end
    elseif fD_2 <= 3 then
        if fC_3 * 64399333 + 3 + 1 >= fC_3 * 64399333 + 3 + 1 + 1 then
            local MouseButton1Click = e0.MouseButton1Click
            MouseButton1Click.Connect(MouseButton1Click, fn660)
        else
            local MouseButton1Click = e0.MouseButton1Click
            MouseButton1Click.Connect(MouseButton1Click, fn660)
        end
        fC_3 = (fC_3 + 9) % 16
    else
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(fC_3, 25), string.byte(tostring(uICorner))), 20), 175756481), 10), 3880977449) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(fC_3, 25), string.byte(tostring(uICorner))), 20), 10) then
            fy_4.Parent = fz_6
            e0 = Instance.new("ImageButton")
        else
            fy_4.Parent = e0
            fz_6 = Instance.new(Instance.new)
        end
        fC_3 = (fC_3 + 13) % 16
    end
until fn844((fC_3 * 3 + 8) % 16, 611555406)
