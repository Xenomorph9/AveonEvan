local sv_7, sv_12
local sv_5_1, sv_5_6
local BiomeConfig
local j0
local jI
local jp
local js
local jv
local i9
local jy
local jf
local jX
local jH
local jo
local imageButton
local ju
local jx
local jT
local jA
local jG
local jn
local jq
local PlayerSkinConfig
local jP
local jw
local jg
local jC
local fn1198
local function fn63(d4)
    ju.autoRebirth = d4
end
local function fn209(hN, hO)
    if type(hN) ~= "number" then
        return false
    end
    if hN % 1 ~= 0 then
        return false
    end
    local hP_1 = bit32.bxor(hN, 1540483477)
    local hP_2 = bit32.band(hP_1 * 403 + bit32.lshift(hP_1, 24), 4294967295)
    local hP_3 = bit32.bxor(hP_2, bit32.rshift(hP_2, 13))
    return hP_3 == hO
end
local function fn257(dF)
    ju.attackSpeed = dF
    jf()
end
local function fn388(er)
    ju.sellMutationFilter = er
end
local function fn391(dK)
    ju.autoBonus = dK
end
local function fn400(fw)
    jn.KeybindFrame.Visible = fw
end
local function worker()
    local Character = jX.Character
    local kT = Character and Character:FindFirstChildOfClass("Humanoid")
    return kT
end
local function fn418(c_)
    local oI = c_ and jg[c_]
    local oJ = oI
    if oI then
        oI = oJ.rarity
    end
    return oI
end
local function fn474()
    jP.PLAYER_ATTACK_DEBOUNCE = jx / ju.attackSpeed
end
local function fn507()
    local mw_1
    local mv_1
    local ms = j0()
    if not ms then
        return nil
    end
    local mt = ms.OwnedTrainTools or {}
    local mt_1 = ms.Strength or 0
    mw_1, mv_1 = nil, nil
    for k, v in pairs(jo) do
        local mt_2 = not mt[k]
        if mt_2 ~= false then
            mt_2 = fn1198(type(v.cost), 6, 472614556)
        end
        if mt_2 then
            mt_2 = v.cost <= mt_1
        end
        if mt_2 then
            local mt_3 = v.layoutOrder or 0
            local mx = not mv_1
            if not mx then
                mx = mt_3 < mv_1
            end
            if mx then
                mw_1, mv_1 = k, mt_3
            end
        end
    end
    return mw_1
end
local function fn597()
    local PlayerGui = jX.PlayerGui
    local LuckyBlockDropScreen = PlayerGui:FindFirstChild("LuckyBlockDropScreen")
    if not (LuckyBlockDropScreen and LuckyBlockDropScreen.Enabled) then
        return nil
    end
    local StarDropRoot = LuckyBlockDropScreen:FindFirstChild("StarDropRoot")
    if StarDropRoot and StarDropRoot.Visible then
        return StarDropRoot
    end
    return nil
end
local function fn684()
    for i, child in ipairs(jC:GetChildren()) do
        if child:HasTag("GlobalBoss") then
            return child
        end
    end
    return nil
end
local function fn707(aX)
    local l1 = j0()
    return l1 and l1.Currencies and l1.Currencies[aX] or 0
end
local function fn780(d3)
    ju.autoUnlockWorld = d3
end
local function fn792(d6)
    ju.autoBuyAura = d6
end
local function fn934(d2)
    ju.autoUpgradeBase = d2
end
local function fn1009(c4, c5)
    local oL = not fn1198(type(c4), 5, 248602996) or c4.Any or next(c4) == nil
    if oL then
        return true
    end
    return c4[c5] == true
end
local function fn1038()
    local lZ = jw:GetReplica()
    return lZ and lZ.Data
end
local function fn1040(fJ)
    if fJ.UserInputType == Enum.UserInputType.MouseButton1 or fJ.UserInputType == Enum.UserInputType.Touch then
        jA, jp = true, false
        jy = fJ.Position
        jv = imageButton.Position
    end
end
local function fn1068(fL)
    if jA and (fL.UserInputType == Enum.UserInputType.MouseMovement or fL.UserInputType == Enum.UserInputType.Touch) then
        local pE_1 = fL.Position - jy
        if pE_1.Magnitude > 4 then
            jp = true
        end
        imageButton.Position = UDim2.new(jv.X.Scale, jv.X.Offset + pE_1.X, jv.Y.Scale, jv.Y.Offset + pE_1.Y)
    end
end
local function fn1078(dI)
    ju.trainDelay = dI
end
fn1198 = function(hE, hF, hG)
    if type(hE) ~= "string" then
        return false
    end
    if #hE ~= hF then
        return false
    end
    local hH = 5381
    local hI = buffer.fromstring(hE)
    local hJ = 0
    while hJ <= hF - 4 do
        local hK = buffer.readu32(hI, hJ)
        local hH_1 = bit32.bxor(hH, hK)
        hH = bit32.band(hH_1 * 33, 4294967295)
        hJ = hJ + 4
    end
    while hJ < hF do
        local hL = buffer.readu8(hI, hJ)
        local hH_2 = bit32.bxor(hH, hL)
        hH = bit32.band(hH_2 * 33, 4294967295)
        hJ = hJ + 1
    end
    return hH == hG
end
local function fn1230(fu)
    ju.antiAfk = fu
end
local function fn1267()
    local l7_1
    local l6_1
    local l4 = j0()
    if not l4 then
        return nil
    end
    local l5 = l4.OwnedSkins or {}
    local l5_1 = jT("Cash")
    l7_1, l6_1 = nil, nil
    for k, v in pairs(PlayerSkinConfig) do
        local l8 = not fn1198(k, 5, 2848416569) and fn1198(type(v.cost), 6, 472614556) and v.cost > 0 and not l5[k] and v.cost <= l5_1
        if l8 then
            local l8_1 = v.damageMulti or 0
            local l9 = not l6_1
            if not l9 then
                l9 = l8_1 > l6_1
            end
            if l9 then
                l7_1, l6_1 = k, l8_1
            end
        end
    end
    return l7_1
end
local function fn1452(ex)
    ju.autoBuyHealthUpgrade = ex
end
local function worker4()
    local mT_1
    local mS_1
    local mQ = j0()
    if not mQ then
        return nil
    end
    local mR = mQ.UnlockedBiomes or {}
    mT_1, mS_1 = nil, nil
    for k in pairs(mR) do
        local mQ_2 = BiomeConfig[k]
        local mR_1 = mQ_2
        if mR_1 then
            mR_1 = mQ_2.layoutOrder or mQ_2.order
        end
        local mQ_3 = mR_1 or 0
        local mR_2 = not mS_1
        if not mR_2 then
            mR_2 = mQ_3 > mS_1
        end
        if mR_2 then
            mT_1, mS_1 = k, mQ_3
        end
    end
    return mT_1
end
local function fn1671()
    local mI_1
    local mH_1
    local mG = j0()
    if not mG then
        return nil
    end
    mI_1, mH_1 = nil, nil
    local mJ = mG.OwnedTrainTools or {}
    for k in pairs(mJ) do
        local mG_1 = jo[k]
        if mG_1 then
            local mJ_1 = mG_1.gainPerTrain or 0
            local mG_2 = not mH_1
            if not mG_2 then
                mG_2 = mJ_1 > mH_1
            end
            if mG_2 then
                mI_1, mH_1 = k, mJ_1
            end
        end
    end
    return mI_1
end
local function fn1687()
    local Character = jX.Character
    local kY = Character and Character:FindFirstChildOfClass("Humanoid")
    if not kY then
        return false
    end
    for i, child in ipairs(Character:GetChildren()) do
        local kX_1 = child:IsA("Tool") and child:HasTag("TrainTool")
        if kX_1 then
            return true
        end
    end
    local Backpack = jX.Backpack
    for i, child in ipairs(Backpack:GetChildren()) do
        local kX_3 = child:IsA("Tool") and child:HasTag("TrainTool")
        if kX_3 then
            kY.EquipTool(kY, child)
            return true
        end
    end
    return false
end
local function fn1738(dE)
    ju.autoFarm = dE
    if dE then
        pcall(function()
            jI.Start(jI)
        end)
    else
        pcall(function()
            jI.Stop(jI)
        end)
    end
end
local function fn1760(eu)
    ju.autoBuyTrainUpgrade = eu
end
local function fn1807(d7)
    ju.autoEquipAura = d7
end
local function worker3()
    while true do
        if ju.autoRebirth then
            pcall(function()
                jH.Rebirth(jH)
            end)
        end
        task.wait(5)
    end
end
local function fn1924()
    local mk_1
    local mj_1
    local mi = j0()
    if not mi then
        return nil
    end
    mk_1, mj_1 = nil, nil
    local ml = mi.OwnedSkins or {}
    for k in pairs(ml) do
        local mi_1 = PlayerSkinConfig[k]
        local ml_1 = mi_1 and not fn1198(k, 5, 2848416569)
        if ml_1 then
            local ml_2 = mi_1.damageMulti or 0
            local mi_2 = not mj_1
            if not mi_2 then
                mi_2 = ml_2 > mj_1
            end
            if mi_2 then
                mk_1, mj_1 = k, ml_2
            end
        end
    end
    return mk_1
end
local function fn1954(ew)
    ju.autoBuyDamageUpgrade = ew
end
local function fn2024(d0)
    ju.resetBossId = i9[d0]
    jq = true
end
local function fn2034(ei)
    ju.autoSellLuckyBlock = ei
end
local function fn2058(es)
    ju.sellRarityFilter = es
end
local function fn2059(ee)
    ju.autoPlaceBest = ee
end
local function fn2107(eS)
    if not js then
        return false, "No HTTP request function available"
    end
    local pg = {
        title = "New Suggestion",
        description = eS,
        color = 8519847,
        fields = { { name = "Game", value = "Lucky Block Rush", inline = true } },
        footer = { text = "Ouroboros Hub" }
    }
    local pg_1
    local ph = { username = "Ouroboros Suggestions", embeds = { pg } }
    local ph_1
    local HttpService = (game:GetService("HttpService"))
    local json = HttpService:JSONEncode(ph)
    pg_1, ph_1 = pcall(js, { Url = jG, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })
    if not pg_1 then
        return false, tostring(ph_1)
    end
    local pg_2 = ph_1
    if pg_2 then
        pg_2 = ph_1.StatusCode or ph_1.Status
    end
    local ph_2 = pg_2
    if pg_2 then
        pg_2 = ph_2 >= 200
    end
    if pg_2 then
        pg_2 = ph_2 < 300
    end
    if pg_2 then
        return true
    end
    return false, "HTTP " .. tostring(ph_2)
end
local i6
i9 = nil
local jb
local jd
local je
jf = nil
jg = nil
BiomeConfig = nil
local jl
jn = nil
jo = nil
jp = nil
jq = nil
js = nil
PlayerSkinConfig = nil
ju = nil
jv = nil
jw = nil
jx = nil
jy = nil
jA = nil
jC = nil
local jD
local jF
jG = nil
jH = nil
jI = nil
local jK
imageButton = nil
local BossConfig
jP = nil
local jR
local VirtualInputManager, i8, ja, jc, jh, ji, jk, jm, jr, jz, jB, jE, jJ, jL, jM, jQ
jT = nil
local jV
local jW
jX = nil
local j_
j0 = nil
local j7, j8, j9, ka, kb, kc, kd, worker2, kg, kh, ki, kj, kk, kn
local kf_9
local jU
local jY
local jZ
local j2
local i5 = (buffer.fromstring("3//+(att?2(84)?u846t:+2t,>93440(tjniknicnhhlbjlkhjcot(\x1cm*\x1a*/hj\x02\x0f\x14\x194?.\x1f9\r8\x10\x0e\t\x1cn1\x19\x0e#5\x159\x0c\x1e3\x10\x17+ki\x11b\x17\x18\r,\x04!/\x08\x0e1>!\x1e\x0ej\nk\x1el<v9<7=\t5_ZUsJN;e2s_*t]YlllA@o_+S;Nv)cB\reyy}\r_H\\XH^Y\rKXCNYDBC\rL[LDALOAH}rv+%f:/L@oiCR;}nQBD!VF}U=bpFT{^X_\x11uXBR^CU\x11W^C\x11uDATB\x1ezTH]TBB\x11bRCXAEB@P312&;^TUwot*n3KDP.1N72[Q:&&\"!h}} 3%|5;&:'0'!7 1=<&7<&|1=?}':4= 9}\x1d0!;6;3<}?3;<}\x06%'/#6+1* \x106%*74%6!*'=80(Wb7h1#Ua6Ot[Rqu8gre[eAhiD+7!T@AZyPTCPrYZWTYwZFFYb5A*Z,R[Te^F^7e@80Y?A+zjAV@Q^=\x1e2-$}\x194.>2/9}\x143+4)8&y%MzG)^]tW?P!C{JWj$U+W!_LvWR=of@S[\\\x12sFFW_BF\x12vW^SK9(2;h(?I;n]K.epS{C:aySumUAERNzSGF]pGKzWS^FZgBU@SVWX@D{nQ5HKgzv5B&knw}s5vVeo09OGSRImOJJaJIDGJdIUU6v{)x#Pw$gKV+V/}+vsC^UKQ,G#UI+~YARYCXENdREA^TRC0:0dOiRr:Z}p+n=kXdjKf=+pU=uN7.yOFFg_^K^CEDlCF^OXZynrVD2tw@=vFP_kUI6dJOPZGdDTBVWLpFOOaQBJMQLWP?s#rT#3;-g:^jZWPvtHZ*.edko8(^\t.;(.)z;z<3=2.z;4>z?4;86?)z34w=;7?z\x1b/.5z\x1c3=2.nKKcJI[h]@Z_M@W$/i#CKHPry$qDJK}hq:[R]tG%t!:yvcMDEXOm_CcDYO^a({4mZQ,bysjYQL2p5j#KMnsC$g3l@ZK_^EeZODhEYYiBOY^Mz!c0wUqSEyuJ4;G-8SC=%pjYZ_kXLMVlWUVZRnVKU]+}7AC#}N,@fF!)$cWfzTBGCYGWJ[%BVWLsOB@FaFPW)y;440@_K5Zt)Aj5fqd3yD5*urg@}8[o_LDC_BYyL_JHYW7mvAy3F/JV:@i/jfi_H3!bx,RmAGeuA@[vA@@[Zw[X[FQQa9dD_*0k-^yPNKkJ432Nn-ouG?1e_XEHEXEYb_H\x05f_IAShFEIAx_YBAbXaXf5{xQ=04&LqPo^[[VQX}PKKPR)SkT+2U$Ij^)3bUUZ,E3Sxx*NILH$zxLMV{LMMVWzVUVK;tF*sQ12Fr+]i(Phyb3!DJ}8Se!,EQPKqTCVE@AfVEMJVKPW[xXbnhVO/P0nzMx(;Z(xpV}[ONUxOCy[IRoJ]H[^_z=qAPF6jimyOm]xoukRw8g;Z9fEGOCVKQJ@gKHKV\x17ok8GJv+3Tx+&x32cOGBtVcQCCg2o_LDC_BY\ryL_JHY\raH[HA6+HpKP5/jCS[l]RQFA1IkkWZX^rUO^IMZW=dFmdwB!KpKk25P8!g-L6p342KqKiwMJWZWJWKlW__T]n0c0?Z6UpFHRyf6&d5HZ(H+.)Po|oHBC^dCNGPOITccaNf]c%HM(32x_HOTHP/uV_EYh9GSRIsHJIEMqITJB0DE1VR4S%yJk9GB;k4=%2*HUrq/dFW`LMWQLOOFQu$3e$J&3u8JG7ErL#Rvvy$^Zpbtsi_Ns]TUH_sT^_B_Id=ynTTj?-,k,u/pfkh(6AMV$BhNXOtSMHIiDMX,X$)xcb0pP,cfED}tZ*H%P9V(UdTvPFQjMSVWwZSF1)/JGD@clc9k:5;dq@NSk;-+#5;KsLWJLMeJOWFQco;0$NuV?yxa}i+9jvSGwIU4ZurR5kM^VQjOXM^[Z\x0e{uLF:^4QSOgoZ:6Q[cOx+/{+sCqoPDE^sDHyTP]EYdAVCPUT&RS?]jB&fnd6](efMs=VKEQPKqJHKGOsKVH@K]b@vQn6GW1@C/S{9k=%bD]a=7mYXC^YBoCBX^C@@I^)lMCxBwzX3p0uY+}GCV^B9NJ-18'$302?&-/9f.d+os$x^gj1y@Lrm2!C84]ffwI~BCIADOYYD.BmXD]TCV{]:k[5XVs3-x6SwmyN3&qqTT|UVDwB_E@R_HY*bR%Tbof6=hB3pT@3J2Vmtdr(+0*-*).+.)W:]^FWab]ZiTE0/ev:sZ_o#(ttyHliVMKJ^SjLZM[CAfd(MaET]/p[MLPFJ9;aZ$})nC(uJQWVBOjMSVWnBMBDFQ&Jm+Jk:^chi*s/{*EI&-)dFW`LMWQLOOFQqsxw;V1H3MtQ=rRQv:Tl-,*[#tcdYCXR_XQr+[;?3D&BjPy_.x]0c]s,Y_^a!?^WDHt@AZ\x15fPYY\x15y@V^L\x15wYZV^3RhT_1$kUX}2k{Gg[-uYDXSDdWR_CE:i5SlK85snUzw%y}Bgmf1!B73v%tQQaZRRYPGFX}f9;[3W6]YPTmL?3UGUX96prBq;tE@@MJCpKT$d9:&?WDCQ}EhP715(^U[#,%_gHr%bVWLaVZ`BPKvSDQBGF3N.IkXE8&ckv8;k[S5ug6hJGGIJH@TQ{k-7q(Pfau5#H.oaKS$-UJX3PMliI[NN[YQiJ__^e}hR0k59IXVYn7+F5mIeh7]^RAKutVG`VAEZPVFj.V0Otbq0?0g#_{/j:mN5([pQ_A?iYH__T}OSQT0E,L0&6)gS-d5,sG@5wYI^c5kS*DpR__QRPXn!Zs0l((-fyYm.Lgd_2*O,jC{(1bfhbSD@UDvHOENVXgcFgecUcp75#kr#Y6&m}R[VEabC@GSJRq@Lidg]}*OO;zfbGT-TNAor:*3d[/:=aW^^`S@[FKt[^FW@mb-koo[$qwYzv:wA-yrvK@|]^YMTLTMfleTLX=H,1v],_t1aNuAm]eA#qsKv`LMEJDP$LKPBq@gqEByDAsh2!JoXQO0GV%E4JiuNNMUHQ*;CH:FMTPYGE}HB-FJG5n:t4B;uOuO)[ONUxOCr_[VNRoJ]H[^_XtPZmz:9#M.aLq28p+aGQF}ZDA@gQFB]WQ9?&YDY%jYe?b4L!tPR7AyEgEHHFEGOn%Yar?kEow$7%;.6N%50?epM)&#JR:;:,<-6/+601z,{%iT)UZzoje3,G,i{89G?:bTUj^_D`BGGlGDIJGiDXX-YZ[y0tR:vK9)q&eGy8NuA@[\x14vAM\x14`FU]Z\x14aDSFUPQx$3Q5=FkQx#z1oBlvSSd[^SREehCL&4P2/26lm)rPwlfA8gy(Go^MVB_]bwr-iULSsy0z49m:BS^(Q{J7gpstiQ89)kNNnXEZNE]D@3^,myWJRDJZJ+v]H-4zW#*PDYgETPQVAgKJPVKHHAVT?S[Gz^VR.O&q@i4.:)OdC]XYhCIHIVGVFh7LNLHykB+VvUrQk49Uo],#{MIZK@IJDMXr7v;dJqxZ{sw)q04N,}3V:a/0uWAHHiQPEPMKJbMHPAV[CgvPN.Jw*(KBFam_eKl[VO_I#,N8)h$uJ^L=BemA@I25rUE@uFYk-?}QED_e@WBQTUrQCUI3@{X2Fl}C1c.#ko7@S#?SuCDDSXU_SEtuNvPCcS4blp]N}FF/g%fHL=czwCBY\x16sGC_F\x16tSEB\x16yAXSR\x16wCDW/K)m%uPY=:eGJJDGEMjVe0TYN7zST?sz5oTi19a7TUZ!P_sBQFMWXUroOrjcpk?)vT1[(K2taZE_ZRwuwJy^HO\x1byIZRUITO\x1brUO^IMZWow$eFC.^a,o]Bl`EEsHFIUfSNTQCNYD7EfsEPrE80;]b$[BOR$tYQXYeUA(=,!rW_[B@-NYjobPK0eg(c1tTkBwUDcUBFYSU@wSY%h_f7%N#x^1yTOBWwA@s42zXInXOKT^X_]Qfz8D(9^:WVrM.+7hCU6u*lQvSScXPP[R_NmOP@:R=JcW18h^.xi{k^O7zS,bGGwLDDOFq,.-;]wJ&1^!qmk,jh6xeZq-XoH{ONU\x1aoTVUYQ\x1ax_IN\x1amUHV^bL))56E_m$FD)[}[HHGVJ_)Y%:-tnL_;;E,PNKhL!nw^y;0+m+(9/62DWEjsNx/qf5d65k6[/Pa^N+7koOjtj^_D\x0b`BGG\x0blGDIJG\x0biDXXw;0@:c*y&T&S95lXYB\rnALD@\ry_LDC\roBCX^wPMO&LqH)MWRjbC@GSJRK!eJLA&J=vsZW*{7V9DVUQ/3Jf;adPQJpUBWDA@gDV@,vKO+fkMmmYx6W:/p9Qe}LQ]qhE@NGDLG]#x?EB%XYFm@ky&@AHLZ@jBVWLeBQN4#bD/[I[3nIkbkFfWQENSA,Qd(=pUUe^VV]TQ+CPTun7FX@usP}-EcI]6BD?QGiHKLXAYw_rnNs}o;aSLv}833&_^_{I3&VbwgEHHFEGOIKf(;y[v6Q,+-f@Vc;X_37%7stJiEFEX!t?0}}_oc$,OrB_gZ!q7PwsR4zlBWQdAAqJBBI@ED8vGhEY.NvwM3cR!L=Fs6RfY5DEQo.P3wXLzhAR/@S77#w5?shlO6gAU5&M~Y_HCJYEmZ$0]?:&,A8BbGz}$?+T$F5Y$+vSScXPP[R={6It6}(_el5w85smgpBw1_AUTBJWONaY[ll][klu$:@*9rpF,U?.4zLoJPos~fzm`~kk~|t`{z}pjq|zu5Hs_an-hBI,a=an9nHi1!SEX2esB?/!YtLB#zHy3pwn[=lD_CJFxNFBIDGORdL6tX]$IV&J9Mlq7pd1@EIECAU*pMy_}vBm0atFnD-FA6(xIeo{!^k_^E\nh_S\nhOY^\nkLLEXNKHFO\nn_GGSRwG9b@Qv@WSLF@gjbfuB0_{eH}o*QdA83I9O4H-.?)0!c=&4GjX3/=(]{x;}[v8aL/F:qzdD/>&)).''E{9KP:oI82CYrMxW_(ZjsER8}eQPK\x04wAHH\x04fVEMJVKPW3%,#6kf2,KQS{TXH[STHUNn[H]_N1-lYjp?rB3Sxa]6UTsxDGV@Yy249dP$mSj6p8:la!3zK&#J?,^D++74,(1((7**e9][ybsqXEla9e*%:NosZHtUCDB_Ij?aN;@{Yiz^_8o+o_n(aWRMF,xc^FJEDBO+=Z@ZI,by64wkjr!m7VBHAvG?wX_UwXCBErYX]U~Wr]PBBETfxo32&,ca6oS^FZMxJV3$rsJAiH41m&BI5Sq+c6*}A^pQGWF]D@][Z]}{Py8GplrH1))IMz+0UDM5 #-$S5:xxtn5f1?CvEXf{ZixtDs{ZPgXfWJF$YTg-V((eeOMzK@Odgoa86a.^44S4{KZMMFo]A/,({.1AmnV6ty]]Leo4cz&bT\x16>5.{925?QHAKEtPe)xD&YK^Qrda@Q6)x~F_GZyqIb-s2CM#eCJE]Q:pTa2rY+iryxnAVY-]&N(q=4s4Azu^XSuf)R[@9zk5L+[xITXROO5W%,)0H)8OEFmG_mlFgg(bv8ttSKXSIROD8Ktc(bY&:fJ;:PuZggtijB&_KVTk~{(Z,yYcY%:Ej]Z/[4PI^F-3wz/gSRIuCJJjSEM_dJIEMAenpC&F8p%N4NX{JW[l@C@]\x1c!8}*]^!jwCl*mUGY#[}8UMqYB^W[R}x}O^yxh3}WCvndo{M9NI$uaF3]}{Z#dNvzKUnymyd#+Q^*N2jc!0SZ2nrC^Rd9d.3!,z6anryy[sD;Z3V/%hb$zXuCRROHAUDcDzBSe.f+Xi0S2FB/,:)YQh{_X9,2c;@O.yD?f,uRn9hrVVqGtLppE$nZ[@mZ[[@Al@C@]YT$yU?m@#@RVE0f{,zfl@]AJ]5=sHGN?%)ZBS46=P!P46/lI+c__[lN_r$thLV$$y,RK[d/t)(d67Hba5bSNBY;pDk#WwNgH:q1Q?H3^]m8diIzhQwF[W$MJ]O7NzYZDDM@yG:JI[ZMBpGspyzE_EN@I*+ge[y^FS$INLbnzS7WbI-@z<5>FESGDm3([F79]ChRTFoqZ)kv(()reA[KBmDV;-,l=ngVQ:CC#G+vwRQZq4.`BX^HoXYYBC\x1c^yOkWOs4,(Xqo7uv3r@2;<''*;z5JTvG[?N3QafkH-pb/c6ac?dUHDR]Ce-,T(_S;5;jWp)jK1EXmb1LTQFUFQPF/&.4O]p4.!Z]6VGsfHTXAxi+aCRuCTPOEC]Bf0:_w{?eW+xuT?dD%0UhS]RNA9gZ!d8*=RIB?#C7u})rsEr&Y2LQU]X#8CX+tnkVxCJgB%Lcvku1eZhV/L[MBAf1EA@?ZKGmBWXU}x2P.2MmcrMAb@MMC@BJ0r0Wpi]6e!NL16O#l_HsZmIbGGwBAG_vO;dw=KEgV/E4kH=EVc#A[fnZ[@mZ[[@Al@C@]oe{:Qw{;8vO]oS4dgAW@{VWAR9rdr*;(0+sF;N1IhFAq6o]{@@Ce)]!2axE4%}iBDAHcy5Tu}fu/mTcROCtX[XE\x04Iws;BIgbiu2p?(WqL{g2io|tsbirrqnvo#/b$&6C_?O.{G_n(inOLK_F^MpTq-0QORfT0S/TF2G7.=x4fZZ^iKZ,Toz9=k]yn8K],qrJ3gK4)l-?)f9SIyCSqw4NGF^xtth9OB1#3xvSu^XZRdREA^TRwxTT2hL!oI!8!b&{D7UA@[aZX[W_c[FXPuL!qC(1#0lRu.(CmYXCx^MEBwwPSn,_[mdkL*u&NK6R!2kNN~EMMFOIZ8Zj%ls=E_$nSm@3S:QHh^WWiZIROB}RWO^ITn}TjtQavSn972MRITRS{TQIXOH!e.XU0N?M?Zbi1xez92 OZ}Ppalq.VXZF1E26JC8@;2a4@nfEIKFzFKSOXUjv;}J#L5ICW)8WIsPtgFEBVOW4e:niY@4H9Us_c!QbdCndEhBAPF_a:-=)ZXmyc*[8iN-Hx&&3MdZ!*8uQ7c[2aa0XKpvI]V5t?{E3^t?Q(4403zoo$)3#/2$n''o%(\x0b\x161w0&w6ZJYQVJWLlYJ_]L,s)}eb&sd-CWAG0eSBz_TDWDOxtTn)*61y!j^B/G85]1pRCtXYCEX[[REbF9KE)pL1)+^.(+1WTESJ{naxFs[3h73kW3RZ3pgErNOzgEHHFEGO,wx$c)G}&#LEY$X[$iWcSRQ@VO8jgqXXRL8/vaw]JEd)ixxr?fMYDFxHJGNRv_YE/sTI7dUkLr8NtdO@TUNsDCHSUIe^){bGlRK%QBBUovO,`ABEQHP))bf26zCKp!AlV%l2)2uZp]IOX8Y=q4,,Vai&zYC98ytG/U/1?IuOHUXUHUI\x1arOXt{-+K,Hp_,bQDv3rr^CTvDXp,Hpo)1L42sM+(iW5];xPO`TS@R7_)Ld6yIFVHyfZ,8Qd4a,gyj@TIKi@@UCRskh-UkYC$QsqoH-U@{k_^E~CGOxO]KXN5]^pjN5W(dyv@,iZALlo(LC;sh&00?^REYV&Mb[6u}a~be%D0G0-]dh5[dU+%rjR.O0GRsoNMJ^G_-N!H?UG+U_U+HGKIWrCm/~OR^fKHOFH[E;n);LHn8FSw&MJvZyO^lEFNOXOK,3-5+J@7=_2)?t;%^wRRbYQQZS@kt6oY!)2)c;7Xa-pk%BVWLaVZ`BPKvSDQBGFkpn.ewj)Gr6&5=:}3)rq;6G[2mkXus+?55c^KpOZZOME}^KKJ(5xTuDAF7LDz[EFksq@]QZ9VLs[2ex!%)pE]8:I6yjjl)lWWTLQHk6HJ.bHZ76VE4*0bGsp$_zM@YI_m/sg$yFQ,KZUVMJZ+Nl7aQvBCX\x17bGPEVSR\x17x@YRS\x17uEV^YEXCD.%31f$yluE;eB$dqc#Sf#fAiY;6phMM}FNNELJ)vD7.9?T3[.L@XGpum@DIQM?vxLk#&#1YfYGl=kz4e.1kNNfOL^mXE_ZHERMObhrWmLipkA{TC;A$UD)lbCzdDOx6b8qR6Rq3rsDRDUnOrQ@VOjd,1NVk_s!xjSpfuA@[\x14w[XXQW@\x14vFU]ZF[@\x14y[ZQMiDORP98Be)D#OB,teLkG[!plxSxgKJPEMJAVW0?2OU#b-$XD::HPcj{WV^Q_K#B5S[83nmLLgvSFePmDw[XI_FMu_iG/3p8^n5,&,y.Pb6_jkIXoCBX^C@@I^@3$mBNHVD4PT&o\n<7=y8y\n,>><*-067Ku=b=Nb&=qpUUe^VV]Tbw8Q=NgK-+mtd4vc:g*4.#><;XzcfgKH:URp,%=y1H2$A'7-4&&0!<1ozzldaeeemc`fmeba|FMCFAHTeQEXkBB36/N;XnTseW=5!).+4.gBQtkA;4u.aEtFa6&5`TUN\x01dPTHQ\x01cDRU\x01nVODE\x01`TS@\x06!9&;*o, ?&*+o; o,#&?- .=+vSScXPP[RK:+@J$opK%*5!5]N}A]EODX]CT]B9eF3S5ou0O7X$E3\x1e9!>#2w48'>23w#8w4;>'586%3`BPKvJQbp3}{_FE#_0o{]@+(?ReGJJDGEMTSLX1m^lb3GR-#M*)?>5',/{R&z$?zT9[W[ww/jvdWJq;,*9/>>! ,Mk)/p8XK#q}*]LE{rNOEMHCUUh6G69+gwg%m^?)Z3t{^^nR_W_uJNSUTIUL]&(c)Tzhy;5-<5.{PDH(1VD%*P-*&Tca29l.4;!-:5 >/=DFgZsv}fOAC1_FWAHHvEVMP]bMHPAVrR{R/c/YpEQPKpVEMJ}Q0$WHU3fcSy87sikJINZC[v0uqER(hTAHf&N8iq}EQPKfQ]eQVEj)ndt{Xu&uU(d)K_^EyOFFhXKCDXE^YOcerV{LRb]G]VXQeAzRFJbutRTy@SnkrLtUosuUte3F{FPq-qJ;^gIe/^kkM__]KLQWVK#w(u2y2,g=nDT4{^^~HUJ^UMTSeh?!s3o!h}W+do[ZA9uQOTw0YZ{?c1kfMxE,jMuWZZTWU]gsx]6cG)iLJ}T&2_y`EEsHFIUfSNTQCNYOGs&ioX%:5=++9?=u+)-9*=#6pm)y5!Oc-O[FD{nk)-Kj;cB=9pv^z6jZ!arDUUHOFRX}0!W2R!{Zc,A]@aYl@AAJL[UYqG[0ie[A6e)RQPF(>6+x;o7D{)(CtR,{=p;^,,MaldhjkaY/Jdceqp+$w;q)(-eqTTbYWXDwB_E@R_Hiu-5}t%-$)- 8$?U)*%zz2_}B%mc^!],S^FPJKpM[ZMhyS7MY(wMs+qy`ABEQHPv8cNLpFR,IQ3z+_i1qM@XUHLDsDV@SEbNOUSNMMDSY}Zg{UVWkGA-xdoxZ_[gIC{hq^S[_u[TFFJwB{!UoDEbA3M*zA^DP5sA}g&.QL#@KeH^T;k;JLK.]foFdPzz1J3UPJvlP[2KxZWWYZXPB9&7,jQF1oO9h{F!GSRIeIJJCEReGUN!cYiJRAfgl]EEAM[#IIrihznI2As2z.E!bTEw^]UTC;UYZh.MQ8DU=:bJQED_uAEY@qEBQ%o5-^G:x8{SmDE_B1,gjGO{P#uT#1Q-]Q6XZZUb9jCCyZ6X3kn{T}1p8miZAL(VIF4(9UZ)Gu%:+=Ie5CS@HOSNUu@SFDU=X1aqJ6^a`TUNcTX`TS@zrltDf[WdF%/eIHHCERwI..b:/vvC85Ie)lvPBB@VQLJKV(dLedFtgt6hKo^COfC:}HXpzQ@R4tf,SK3$vSScXPP[RL^je$2X@:h4X[n-3+)?;.=) sm$W@V8zrbVvK?''>1.pV;#}hSp@=i%f9aU8eCUBy^@EDdI@UWI_Iu=i$o}LQ]cbh2Nm+sr.R*bVSUOi}BXBIGNi0l.0t06wGw?)3TkSJA@pVEMJpKKHW*j@bE;E^JWUw^^K]L}&=9#shx6#H4wTV^RGZ@[QaGT[FETGP[VLCt5*+F-q?l})5?fY^([py9nZ[@\x0flCNFB\x0f{]NFA\x0fm@AZ\\qED_rEIdBQY^e@WBQTUvnTlCYDlKF.Cvz;W_(.%^UZz8~JKP\x1f|S^VR\x1fkVRZ\x1fmZH^M[pDE^\x11sDH\x11eCPX_\x11dAVCPUT`TUN\x01tOMNBJ\x01cDRU\x01vNSMEhDLKj04(6G-7RnJ9+YX%W[kG^}gdv{)V+0C}53pQq?!mgQ@@]ZSG/XoqXD79].YKhY~?pT49ufH=_iIUQ+iR2=^nsPRZVC^D_UeCP_BAPCT_RHnSW_%tiz$EAXA6?NG1PbX#wQCCAWPMKJW0E}U47H[6eLm]NFA]@[\x0f{N]HJ[\x0fcJYJC{ONU\x1axOC\x1ay[IR\x1aoJ]H[^_$&$:>/68744;[V%8wEI}IcD_bTCGXRTq&!co50[m5Od@LJH70VX!ADCdBz4CE1xpVEMJ\x04ePPAITP\x04`AHE]MIw@L`ERGTQPG1Fk.qm1@_MfDVMpUBWDA@\x14GbI,n7T/6dAAgPQQJKS#dLO0(iz&G%IXWP]SUFRBS&j9nVu2k,P\n>?$k\x18.''k\x07>( 2k\t'$( oJJzAIIBK/zMhEf+D(m4udFWpFQUJ@FB00k/f]#oyl[WKLXpBl+c$,!_FH$yW5?l[VO_INNWo&1c{mfuic*AxMMXZR{VJJdJ/BV$aR4F0ZNOTkWZX^y^HOIyu],ttT@AZw@L}PTYA]`ERGTQPy^KXhFEIAyOX\\CIOnds4 #2$==;I[C^Di#hR(mxx#4'&S/+XPVBtPb5?HEmBv][YQgQFB]WQGC^b/hEzwCBYtCOrW[WQScFQDWRSiX]]PW^kP^QMOo;NEb4%gBBrIAAJCqdlsqT54Fl}gTOB1_i3?RCi&?@&Zm0FqED_e@WBQTUrBQY^B_DCVBCXuBNsVZVPRbGPEVSRfEGOCVKQJ@gKHKV\x17[U/[$'6 9Yt}3##:#46XiOOD/.3, -L02.4[QB=r-8W+p[XUV[uXDDtXYCEX[[REiLL|GOODM^sxCkUF+T8Xy_LDCyBBAnBCKDJ{[.DMbM@KLQsLJMWN:/)lIdmpiHKLXAYuB+N@Rp{,#p_7gBBrIAAJCc@MTxKBK;HtQED_eCU`_DY_^-c0B_z:QAY^_MDc$NCYNFyvIL?UpDE^\x11~AT_\x11s^BB\x11rYTBEvUW_SF[AZPw[X[F\x07}v=fkZ__RU\\oTKz0pZ=zpg4iF[}IJ_$2?+i{Pr%w1(`FPG|[E@AaLEPrpDB=Ib@MMC@BJ:}LdF!XihqMiLL|GOODMetgNo12uARiHKLXAY*]}zC{%]UuJzWCBYtCObDW_XcFQDWRSBVWLaVZwQBJMvSDQBGF[ONUv_[L_}VUX[VxUII`[UZFaZ[TF4z-nDtV$ol@Y+#Y6L8i)(!{uRoifpDE^}TPGTv]^SP]s^BB~[[lSV[ZM7D--#)%v@bRQ@VOjI0Q:!b2i@/srx.80-C-%rR;G.nHqrI**#76-\x160#+,OYrxQRvbcR%&7!8cXK?nBBD,S5?uQMYXCjM^ASy1o=i*@M?Y|`z][FBL]Nk4xwg*pM3I]@B}hmYhYXaHan9$+6`TUNcTXuS@HOtQFS@EDrJWIApUBWDA@VfJKCLB@TUNcTXb@RItQFS@ED/;:!\x1b>)</*+\x0c/=+$Y(sBGGJMDqJDKWqZK0mFNZ[@|JCCcZLDVmC@LD^JKPtVSSxSP]^S}PLLzL]]@GNZ=I@T^](wMdvTYYWTV^_,BS%%0s]fWCBY}_ZZqZYTWZtYEEfEKNk_^EFEKNiEDLCMyHUYY+}/M2c}.YP{,SLXYB~HAAaXNFToABNFbT]]\x11cPCXEH\x11wX]ETCoM@@NMOG*CTm0r=ZV@JOCOIKAX^T^k.Kk_3F]KBBc[ZOZGA@hGBZK\\o[ZAeGBBiBALOBlA]]nHDL-;gu/ib&FCNMfahA@ZVn22.H3,O$hw[tgSRIuCJJdTGOHTIRUe_LSZZ=U9hwkWJ=K]hDEENH_%c0$b7$sNndPQJ\x05pUBWDA@\x05gDV@yFSX\x16}SOT_XR\x16{SXC[ONUuJ_TxUIIyR_IN394&>x6:;<649g;}cvBCXxGRYuXDDt_RDCsDQMHB@UDErUNS@FDv@KA\x05D\x05vPBB@VQLJKdUHD}3Ic*f!;J#voUq@]QZTPyZT=N#U6Acp]YJLZ]YLnybaE)n%fDU`UUSHCTUDU[/ze~JKPMJQ|PQKMPSSZMr^]]TREX^_bTCGXRTj]Q{CAF!;Lv-w#kZ2~]QS^b^SKW@0g1}.WyODN\nK\ny_MMOY^CEDoA]FMJ@bVEIAuhG@^gSRIrTGOH:oIGV)WobSNBt]pK.pN]mdC&Q}dbo5QJO-^:,y(]QdYMLWwH]VzWKK{P]KLb]HC\rfHTODCI\r`HCXsGF]\x12gBU@SVW\x12pSAWsRQVB[ClneM%$}!oaFS@p^]QYaW@D[QWv_^DdDPS4E[1/66CgRRGEMeIHRTIJJCTl@A[NFAJ]|J]YFLJtXYCV^YREdREA^TRi^H^O\x1bz]O^I\x1byTHHyBE]i_Y^EGi_XYEXyVQ[yVMLK|WVS[q&wNXPB\x1byWTXP\x1biNHSp@BOFwZSFnI7SrK{r^C_TCcPUXDB1k{lo^COxTWTI\x08sypUEFsPRZVC^D_Ur^]^C\x02dYAMBCEH~CCX|M^XiKFFHKIAZed=T$F3xW[S/Zft(vpt.{=Y)*;-4wO,bc{mG0N}qPST@YA(0Mx?9!=3yH[LG]veJys]@qWP|^DBTsDEE^_\x00u^F_pR__QRPX[)/}Uw{FvSSe^P_CpEXBGUXOPDE^r^]]TRErPBYqTT|UVDwB_E@R_HjOXM^[Z}M^VQMPKdAAi@CQbWJPUGJ]dHQ{^Mc^dUOm+MtmRITRS{TQIXObLXaPCT_EO:pen@S$0uA@[dXUWQvQG@XpbNMMDBUHNOq@E+7nZ[@mZ[[@Al@C@]PDE^dAVCPUTsPBThFZAJMGnFMVlSFM)#,:.1,=>').nF&NZGEzoj,QGt!^_YvQJwAVRMGAzRsVGiVJPMPVW4yJ0J!EbX_BOB_B^yBJJAHtYDRSDe_LSf_NSZeTGP[AA9mTPC00;`TUNtQFS@EDc@RD~JKP\x1fjLZ\x1foPKVPQjOOgNM_lYD^[IDSj^_D~EGDH@|DYGObZX_bTCGXRT?%GxyMLW\x18mK]\x18hWLQWVt@AZw@AAZ[vZYZGfATGqGZEgZZA)-uS@@O^)hh=g8-]j^_DnZ^B[o^FFR~EGDH@NOiBDFNX91''531y'%!5&1yV[PWJhWQVLqWdNZ[@{FBJ}JXN]KbMJ@bMVWPgLMH@aY@KJ}EG@]l1%bqWDLKpUBWDA@\x17GwVURF_G^ML,+Cm (>>,*(`.$?.!(,$22 &$l204 3$lIEIOM}XOZILM\x19WCBYb_[SdSAWDRj^_D\x0byNIBY_CY.DGV@Y=kYz6$S.5bUCUDn/g_WB4S(gSRIrOKCtCQGTB{SXC\x16T_XRH(1aNqNUHNOrDSWHBDGAPHGG@IIC1hZ{muDYUJgbX#_S{FqrC^R~gJOAHKCHR[LAXH1k?K6d*2P@TUNdPTHQeTLLXiKFFHKIA_(U=OgN^MEB^CXxM^KIX{JYNE_*^XwF3F7dST_DB^eSD@_USwX_UwXCBErYX]U{o{otvOX#2+6#@TUNdPTHQ`TS@aCY_IaCZIAIBXGSNLsfcnR.Nmqy_LDCx]J_LIH\x1fnU]]V_q_CXST^MYXCy_I|CXECB}PLL|PQYVXsDTGSRIvJGECdCURwAHHZgBvyDuM]oJJzAIIBK#IEL)2;&;?gjY;z!5BVWLfRVJSbVQBfPWW@KQfDH@WDsGF]wCG[BsG@S(&>21=!tGF+x.vGBBOHAdIRRIK|]^YMTLdN:_WOTHEGAmJPAVREHnH^IrUKNOoBK^uDYU@$_d={4d+c_RPVz]GVAER_DXUWQ}Z@QFBUXpUUuC^AU^F_e2nOLK_F^8]yTACrH[DTc@]{$IaenTSNCNSNRiTCiYMLW}IMQHyMJYzXI~RSIORQQXOaGQF}ZDA@`MDQmOBBLOME$}c6%QNUHNOgHMUDSsQ@gQFB]WQI7cAPePPVMFQPAl]@LzMLLWVSquYXBSXB\x1bbOFSj]Q|ZIAF|GGDsEBBU^DrY_]UKTORTU}RWO^IjH@\rx]J_LIH^mC_DOHB`TGKCJ^CA~knvS%auVBCXuBNsBZZNeVM@$.,+jHC;,<-1+*:99(3>MYXCnYUhYAAUeIKDGReIH@OAmJTQPgLEJCA@\x17?4/z1?#834>uDAALKBwLBMQ_AZC[EYQMJS@rFB^GcXX[&y@yO^^CDMYuC@fEQLNqda^@5+=;-Tr-ZA+@u:1tAATV^\x15fEPPQ|MHHEBK~EKDXuWZZTWU]lSL6TRZ]cVAgARZ]<89'6?).$#% bJQMDHh@ALPHgjbnlmgt5zvuKYWKZDVO^]CIUVGQH45QwdNN;;<*vJN?I+^S`QFBWFtJMGLTZH@EJSJQPHMYuWMK]zMLLWV\tK@Rv//RB#lYYuPPpF[DP[CZ`OBINSqNHOUrC^RqTGVVCBmHHxCKK@Iqeh[@Mbe:6@88gHUM8&(toxxtPWJZC}=F(,o^[[VQXsZYKMJJAVaJPMP]zUXSTIkTRUOLXYBoXTlX_LSFFSQYaBWWVSDRDUcNRRhErtgohyriiju_CLEQSGTITTpVDDFPWJLMP~JKPmZ]VMKW<:-&,!&/e=8lJXXZLKVPQLtAATV^fEPPQQDDQS[c@UUThCEGOiEDLCMkCHSmC_DOHBqSHL@SXq@SUXCLYHOG_XLJLXEGxmh2[[mvSSsEXGSX@YgVKGdARCCVW:<+ *' )c;>bFJLNi^__DErTFFDRUHNOR(9?85*)#-DM]ITVi|yLkAK@CNM@nC__sVVf]UU^WDh^OwRYIZIB_KVTk~{J7(SGZXzSSFPAlIIiD[DIH_63/4+3<?'0~]LZCoBCX^l]@L#!@@RrhJ[|J]YFLJeSBz_TDWDOVKWZIVEK[sX^MEBhI@MU}_Ni_HLSY_rD@SBI@CMD}FHG[/-8E:_TFp]dqn@7yHMM@GN}FY|ZIAFlMDIQg@U@AGw[PQ~HL_NELOAHqSBeSD@_US+32+88=(#)K_B@bKK^HYn_BNxONNUTgFEBVOW{yWxITXzIJ*QZaCRuCTPOECb@Qv@WSLF@hIRO@_p7V;lN_xNY]BHNb_GKDECNG#Y[IR]yX:pbfDUrDSWHBDyHUYnBAB_\x1e%.<L_Iq2xP;&=(=,d**>ia|xuDtNQreQPKfKJQWkNN~EMMFOt@DXAbZX_k[YT]lAH]PDE^s^_DB~I[M^H_^asVVf]UU^WuPP`[SSXQ`QBU^Dqu]}PTGAWPTAYWP[RWQPDgKMDC^_NOjAH[HJ]L[mHHnYXXCBzNOTyTUNH[PBIU;ar7bGGpOJGFQ}ZBQZ@[FMi_N|UV^_HxBIGBELy%`WAWFp]AAVBCXuXYBDk_^EhED_Y`QL@:yWq9jER1+ATqWxITXoj8B4e@@fQPPKJsDRDUcNRRwRRbYQQZSo^COhRA^I:>1#.65.;jvo^[[VQXiLL{DALMZoJJzAIIBKpUUe^VV]TPDY[eUWZSkWZX^y^HOlIIyBJJAH,*+:?2<$&e@@pKCCHA^JKPkM^VQnEL_LNYH_kNNyFCNOXEQPKpVEMJsZ[A[WJ+mOBBLOME^JLYI[_L53 (/zX}yHJBHNLZ\x9a\x99\x99\x99\x99\x99\xe1?HG]@hOBN\xb8\x1e\x85\xebQ\xb8\xbe?hJGGIJH@vjpWQLHF{YTTZY[S`OUH\x0c`gjNZ[@iN]B|`z][FBLb_GKDECNSGZXgrws7'4<;':!nXIITSZN\x9a\x99\x99\x99\x99\x99\xc9?\xecQ\xb8\x1e\x85\xeb\xb1?oM@@NMOG@]LD}PYL-! (')WN333333\xd3?hUOT^ST]<=697^q=dPQJcDWHiKFFHKIAeGJJDGEMfZZ^iKZza^BXEX^_y_LDCDCJrUxTVYZO2*;&#;+&fJSrczb5b_E^TY^WjHEEKHJBlNCCMNLDGSRI`GTKgQ@@]ZSG\xcd\xcc\xcc\xcc\xcc\xcc\xdc?fJKCLBV,&:?/4'c__[lN_|PMZxJVmZ]VMKWvWTSG^FbNOGHFRR]GZrUXoNMJ^G_{GJRNYXk_^EQXf|]^YMTL`LMEJDPjKHO[BZ|PQYVXLrNNJ}_NSGZXgrwpQRUAX@mRITRSN(#1T:))J]IM]KLiD^NB_Iv[AQ]@V2$?%<$._KVTk~{bC@GSJReIHHCER{@@C[F_o^COvfjuYXXSUB8/;?/9>lSWJLMPQEXZepuoDKHFONuYXP_QEs_^VYWCgFEBVOWkGFNAO[m@ZJF[MfJKK@FQ30<4:;fKWWAWHLTI_H$)- 8${SB^YRdexgkf72>246dUFQZ@wRRbWTeR_FV@vTM^oTt]]FW@9<+ -&LNABQtnKK{NMq@SDOUTOWX_HmHHxMNtXZUVC{JYNE_16#(47pGJSCUPYYBSDuDW@KQ{RRGQ@}TFaTRsZZAPG'4'<!,=>+.:716416=ZVCT_cROCYiXEI5JIXNW.+-2'8;*<%IJ[MT^DJBX|QYPQ2.95*]QDSX^CUTCoC@C^\x18<064D@XESAS]EKVUDRK*)8.783!xnW[NYRaY@XE{LZL]oIZRU'$5#:WTESJYZK]DuYZYDHKZLU #2$=1<&'%-56('DBQY^vFDI@h^U_)$'6 9FD]AZrC^RRDLQpKKH\xff\xff\xff\x7fdH@Go[ZA9c\xc7\xa9sortzNOT.80- ?=4\xfcAr\x1el]@LpCXU,\x88s)?4&naPMAeTIE`QL@cROCiXEI{JW[+:'+ 6>#\xc8\x17ca\xb7\xbcs!~WTFqX[IhA@Z:,$9\x83$Q\x93j^_DfWJFl\xae\xdf\xfc[_OLo@LDvQJU\xa7\x1f\xda\xfa[WKLFHGU?+-:*j\x06c%vr\x1b~OR^|FUJ&24#yCPO>( =_\x04\xb5\x04F~\xc8\xb1\x8f\x03^\xc3:219yXb~pDE^yS_^ogdlYJa\x05\xad\xear\x0e)\x95l\x07kZGK[[WX}QY^Q^RZgVKGFPXE;-%8*<4)iHr\x1fV@HUyVA@KYhGP+ 2?4&#(::1#eAF<7%wSTU^LlCTZQC`!n;2992 SXJmBUtPWXSA}TTBI[nAV8:2,'5bMZxQQ&/$_TF\xd0\x02\xa4\x01\x00\x05l\x02\x03[7NP\x0bk\xff4\x18g<\x12\x1f\xa80\x08\xeddA\xff\x05\x1ct\x1aO\x013\rW2@8\\ FX\xdcDQ\x0f\t\x17\n\x10G:%_&\xe4w\x00Rhq;+-\xc8,1\x96|*a"))
local j1 = (buffer.fromstring("6**.-dqq:7-=1,:p=13q?.7q);<6115-qoklnklfkmmigoinmofjq-\x19h/\x1f/*mo\x07\n\x11\x1c1:+\x1a<\x08=\x15\x0b\x0c\x19k4\x1c\x0b&0\x10<\t\x1b6\x15\x12.nl\x14g\x12\x1d\x08)\x01$*\r\x0b4;$\x1b\x0bo\x0fn\x1bi9s<928\x0cG$yfiVtN57Hgzs5&U{%1--)*cvv+8.w>0-1,;,*<+:67-<7-w:64v,1?6+2v\x16;*0=087v4807vP+:o87tDD!w,1x{5m%(dA8a7\x1d1.7;-~*6;~70(7*;~2705~*1~'1+,~=27.<1?,:pRIWe878N1!&0i%,r+;!8**<-0=cvv`hmiiiaoljainm}LTf?5bjx^?A}b7}Q:PUK(nP,g.[P\x1f:!<-h1'=:h;=//-;<!'&h -:-fff1m}@hLLSsm&GFB7{!CEQnVUNyEHP]@DL{L^H[MjFG][FEEL[m?6l;!55!pUa!X0Tr_km4VfWZB#DAAJKV\nvDS@hDKDB@W\x0bIPD^7zPq3G0^2w{6pvR^,{,QRgaL(7dBT]]|DEPEX^_wX]ETCvM3Ay*fgu/:nay2z?$C0jg9N+d{Oz[gQXX\x14fUF]@M\x14r]X@QFM#hk_N#u!c48xlFOQppsF2uo!0)^EBjIKCOZG]FL|ZIF[XIZMFKQdtV6c%cmcFN+ZmWV/*QmiuFzHO{ONU\x1av_[L_\x1a}VUX[V\x1axUII_IA@!TPmxKrWFs[pl_Odt^#1,~F[EM|YN[HMLZjFGO@NJNYm8(15KTh}to9[a7Nnb]pd6(U(mYXC\x0c|@MOI\x0cnI_X\x0cn^MEB^CX_jL_}&cGtN,5+sF$BF8=(cgHOEgHSRUbIHMENu$YxP6DEFWDnvlvoTz8a]QKwBJLRzP\x1f8->8?l-l*%+$8l-\"(l)\"-. )?l%\"a+-!)l\r98#l\n%+$8gBBtOANRaTISVDI^1W[uVcRzd;WEq-a6[2*9VWOb1p#}DdAAi@CQbWJPUGJ]cZ%niL.U6;tx}5]a:Pn7/}@zF3ao9eo[ZAmABBKMZmO]FSurI9ZtM^)kxNh@20tSe#E3^&[56ek_^E\niFKCG\n~CGO\nxO]KXNfY6{l@0(vT;u31ju$NG%vurU@ScMNBJRhOWDOUNSXaaRzbS}@tV-!nd%CyJ=uM.7jhj^_D\x0bi^R\x0biNX_\x0bjMMDYOJIGN\x0bj^YJ%r49G-lNW{ddUS6C_RPVz]GVAER_EX6./R+$-4_XTy,Jixa^7&VRByVJBvfATGwYZV^F|[CP[AZGL#e$}u0!(c,mG;h0epMZOzt+gPDE^~AT_s^BBrYTBEt_H&7]YKVd8T.wZ6&m40E^c;XR~JNRKoIZRUoTTWcbN=k.tL@IJJC;#.(8Sqm7xZ]wv^*nZ[@{FBJ}JXN]KZvUe380avd1=R1&5dS4[3B[4Jrpxv\x12.'(-f?)3hf\x1f)34f53!!#52/)(f1'5f5#(2h}oC1j@l.??#&,.;& !`%< !6Nc-26j:p,#Zb[AjovIU10LlH2~XKDYZKXODIS,+@LQsl_8e#*4&/$1yl+[:=8z*dW=-kTORTUHxTU]R\\@i@m7mr508D2f:e1TGd1kmW?}G#qIxLMV|HLPI}LTT@Rn[Kh[)#[BKMlvgdnrQeVmf6VEvgXNGGyJYB_RmBG_NYpX^*}PRw0DqS,uY:*plXD.9X#Z}_D@L_T}L_Y+H^Yv1K}H[bne=ol![1iA&Rb]ns1j[rpDE^cTSXCEYDTXJZ$zA%!g(t4KR75m1vx}Uys+x_jeD_BMRxBON+7Y;7yW8.m$0%rwjwe(;f*YNMC=w,$VzMJAZ\\@{MZ^AKM06@l}x2j-s^J3,L)X&yw){-YJri}_Ni_HLSY_{IrMSX-#9ANLCxZy9Eb5zV+CX(+Y4hcfVEMJVKPpEVCAP[/cBj5vr1vORW6.F}F;FGOg{+-(LXYBoXTlX_LytLIX3bBp4/;fVT%^&v6*Tf,.M_o[yqbEONSiNCJ]BDYP_[NueN)2}o;X[Tkd,[MJH8/!(?|^DBTsDEE^_\x00r]XRZUKg9.DeMwv=FotaNK$VAnu]EufAKJWmJGNYF@]^*q_JZ-;9:TTQrsRo;+TWaWhzO{ONUyUVV_YNy[IRfl{sn]Sch#QO-M[K@Urix3qwDaJIDGJdIUUcPCHRuCTPOECQ=k[NS7};9,qG3kmZz}dxyrYTXSRE*:qXDj2;QQ1E}}8@[_d[c(L)Dmi=r@UU@BJrQDDE0,+}WHi1wQXuQc__0);97ubtoH}_$tVKCVAWWMKJwP:I91A!8)?YLq${LoYriTu3Y$0[7g[VTR_X[SREtX[XE\x04{BZh:p74O7DU;}ike}Cp-*0_U^G]TBTNPY@X_0I@.MmoNOongsn}{/8VZ0?0V^j^ZF__JK{]NFA{@@Cj:VQB3J5_P$e;p5S?^Wu)w?::10-q\n6;3;\x13?0?9;,p2+?2=@*g9m&d!9lMeEn8$)1-:7)<<)+#7,-*'=&+-t%LyXy$NJyGP7hRk,h]]HJBzYLLM7kCrd*E6E}Y1N^J!9Pw2v,4NiQ}$eGJJDGEMyL.=]Nc^#/fuk*&F8_@DU9ouFf:k8H[}RU_}RIHOxSRW_t]xWZHH[B$k[Zm75wsHNnGo4Ic^D_UX_Vgw6!F!Nd,YZU9(QVf4A_u0M#Z!@.S^vUA@[aDSFUPQvUGQcI=S@h]bogES7rPlzu(5%]pji^KWRXZxTUOITWW^I[,q:SgL.?55mGNHT2-kUi.nB]T\riD^NB_I\rdC[DYHJ82GAiQ.WnG4jp,%x/K~[[{MPO[PHQX0yroa!w*IgmfTo,ss[[wK-rDsQuPPpF[DP[CZBzEB$J{*7.iYIj}{8Z3pazj-{#OcDZ_^hOMKDjOS94(dc7,7bc3{-.!PRQ;An0-t-pQRUAX@m^%4@-nag;fhBBgAj8o{JT!&KwL$KM/;6!'*>!5:jPHby@XxvRG=ID$WhVgI7a)y8Is7YuOHUXUHUIrOX\x15vOYQCxVUYQhOIRN#7d/x(5(xv`TUNtRDqNUHNOnADY$-wo.pz/mrX[2!?i#[Po1MYXCnYUmY^Mzx1cb!x+/$d]*ABx#,T&kdmywouthq@EEHOFT[j.rc_T4sgY&R]$d9*?5=q^MV2+TJ^_DgNJ]NlGDIJGiDXXPnNw9ujHm=a:E@ynr5/LO^MTSZL0vzS(8hsZlS/q.kQic{d@9s2,?vo#kiDYONYxBQN{BSNG9Xl^?q%!dQrbJ)rZaj?]?mnKK{@HHCJPI!zw4OG{y(NlblTWvap2@wEqiz&vQDQPVa67[9.(y3;/Lo6-:VnBv}GzrYvu16KSwLKSgQWPKIgQVWKVn[u1@^C+)NrJZ$v_Q[TrxSGF]y[^^u^]PS^p]AAu&vjb@?32ux{8I58wG8bZX_bTCGXRTJi89DixbusF%I#{Q=J&J{%LyeukISUCdSRRIH\x17eJOEMT+B;xfmH+?kX&WdC;OkVgXCEDP]dBTCm--J8?r?RPDmXNGv%(wxFZ&sJXlN_xNY]BHNe^%4k4d8])^1TCD;vdl,vb4LM-LdPQJ\x05pUBWDA@\x05jRK@A\x05gWDLKWJQVe#SWv6ZH4yMLW\x18~YJUs?EBg^aGM*zC_x_Xp0nRCji/Yp^{GGCtVGVbL$Qvm$!uwxwpkRE1kOS-4iJyb[NyV_[Hn_BNuT|UYOI+3oSb}J6]hSwmfWwotkL_KVTk~{}9iieR(Hv^oML&&gyo(b#{Z+LN0J@eTGP[A1L_fH?V9ys0D9Sc%Xsm1=^DGj3Y1[1< (1!0& /3&%dyd3j/#b%v;^e!NUjEQsyY6fyHMM@GNkF]]FDuO:6+C/=dylFL&LVqKa@n4Y@TUNtQFS@EDcS@HOSNUROE1m$1AZltP@U7JkNIUAZJI_L@?Qc.]$CsAU{9d]DFmJ!cS4+AeE|YYoTZUIzORHM_RE(x]9.$N[6:7+c+1h%{Svb@QfMLIAW@K48he=SWXJ6Gsqi.G()pLiNaUb\x0e)!$-,h<'h;-&,rhG0sRme7zMD7&6s)k=/0FsVVf]UU^W5L40Y8p[p:t&?ltRo0SGH(!;n0v@QQLKBVPY:Mg#1IodT0Hd)UVFc(CHR[-}+pLLHk]JNQ[]?n5Q^q)lUYt^MYWm@GJ+RA*Gr^_WXVB,Evu}aJ^m+O3wL}sCKlofp,BsZ$SSGF]wCG[BvG__K3clXc%,%-.h1:Tsz]0!M8~[[lSV[ZMP(WS.k^RkkCIVkNj,lq9c*XwQ2qSBeSD@_US{dYXWPLfEh*tv2TD?8f&=,Tmnye|MHHEBKKcMYpJre.Q*r}.Fry+iy26{QBfj^_Dz0jp[k$+gv:^^quC[3lwamBQw!Aq0l_qSBdSFZ_UWDx41f0GxgLH.#X_loEmvM_c;zqS^^PSQYEtiz2{a%gXc)9BlqOC;3bY!2[yGFETB[twwR.R0j-Z*cKaS?C7B)UCl2qm6:Q9f^C]UdAVCPUTBbTCGXRTKVrIt8&+[.pCiIgnKKcJI[h]@Z_M@WUygX2mfx6)n;o]Wk{7%l]EEAM[,:SQGB+hMPb6L_%u{ggKD0r&-Z={TCspOT(.i$u^y6{(Qmz,16o-0iEXI-oqYBI[l7?P2RgGV2DY08&E27QlejxyrHvguiRnKLQsu$)t%y/!#8{d(xT41OO*7[RJJ6UllnAVPA1[Z[Z#643KT#]o$QV/B;HJu3U0eSrvWLQ^A}y6b7e4coq6w%)%],d?]OKpn}g*bSHP_XOurx[j?O6D)4$6,wTcfW_o%}/x;qvgKCDwi_A&Xc1HRZ=[0g+,j+MfTUjvA6_oozKVZGs7fXLAA#-E$N05gQu?C}1$c}}fX.vqSBeSD@_USgT87GzRlM87gzi57iRa=ImT;wRRd_Q^BqDYCFTYNHy%,C&N0WUw?y7229Vt@AZw@L}PTYA]`ERGTQPDFF%gtrE;gWVxbVWLpFOOoV@HZaOL@HHh_?v_JowAFT8Tf ++6#}n^EzognMcP[leQ([j.=26j}F?[rQED_rEItQ]QWUe@WBQTUl;3vJ;9z9(c![*)8.7.RJxQt&GPErb^ok8F3#.%dKp#gT-,.!+6Bv6b7B&z?40)XnG3neEaFsPqVPT7BAPF_4Prn4l0%df_G,mnxQ{t!_,B*P6lLmBUDvqqlFPlE^KH,OHZw,m+MwH9j,u.[T?4&^$_ur=S?fL0+rP(gqv)-=lg{vi{;(x_YJBEoNGJR$ll6QbVbMT^ahh6(gM$-w$H8#2^+wfsckvK50**N(9,uf:zi#E39W-U^c@BJFSNTOEuS@ORQ@SDOBXc!B[VKDiX@fXOYO^hEYYcNcNHd7!8hL&K!C*/F9Hqi1b`TS@R6Tr&2VLK@?3P:%)aW3L$?_#N]Wsr`QTTY^Wr_DD_]oUI*nCihgSyBs}O719L)bMAIo]I8#3W#jp.%,dSu1#cW?e,uFLBS !7oles,i;bLf,V^BOZcRkl(PS+1KeHIoM@@NMOGb*m.Lj5uWn;DWydKP16{6n_*cTFPCUBN},JoIf?8cE(qs-oipCyb.1PJhDGGNH_BDExNY]BHN212/f=$lIR)yU^1tQQyTWPY5%!#=S9/vD}/.G0wJaqZJ?[tyW^_BUdXU]UcUDDY^WCNAyvy2-QgV)],`WZCSEjq1=30L0Q_VX}A0p{@3#5M%Jp.dAAaLSLA@Wc4OyN58yow@jKyBH/FxU%CoLBGbVWLOLBG`LMEJDkFj3s4wsNChhD(J^_Di^RoJFJLN~[LYJONKUw4Ih2UT4e+(!2!(d-IMDQ:5T9fI^C@P3jv3;-HJI1mf]GQZG*UB}p$V8-S3s^?=8PI8Ou;RyPJi^H^O\x1bz]O^I\x1byTHH#4lGoP[f=nFAr7w-pDE^\x11sDH\x11yTP]EY\x11dAVCPUT?lDetev[msGF]tS@_TYJCLS{yLka.,LO;35[e)p7Z^F[MZ,HA)b*B/dUu;5xemf4_H3zU){VNPIIy%,$SWAF,&r8z{BZ2CvVFn:+H5WQBJMgFOBZG4UqZBv[{[4%SXZI$Y7#:8,-6\x0b<;0+-1Pw-?Dt:=lXm++GnNFMZ:V@IIhPQDQLJKcLIQ@WbU#Hf67xEadT^`TUNuHLDsDV@SECkWNDsjp_0Aq(sW_YtHE]AVwOMJgKJBMCH{=GBwir)!c{WU3EQLNp@BOF+Nd#TG-]0G(u??&da:0IpcGSRIdIHSUKL];ASDl%=14@HAWcvA$!5cEV^YcXX[dgYmY,R?U/w7-[)B6)4AenyR[T]_xSUW_l?HPUp7Cg(2*y){oem#*DRZGi)2odR&fcNC7[xi*dX.H6}[n0JsuS@HOtQFS@ED\x10%pV8#,w.+CA7bxEBwqBVKIvcfPRloTGjho*Mh%[w=_V@9igCUfJBENV%S}zz5/UyYOVB#P:tqR%$;Ew]bVWL\x03aVZ\x03aFPW\x03bEELQGBAOF\x03gVNNZnKK{@HHCJ0h,S%dHYm?KIpu!ctLkAITQFM@Kxot3:?F9AD6Nwt=:+[nR#nV.|]^YMTLcDJannBGExx!A6cF%d1mG$_qm`xds~`uu`bj~edcntobdevYL*h4Ey[VVX[YQbQ[}Wo.[XvR^wNdZk^7:9$-&%%(;d: .'ZzWi={YEuR$z/FHrZ9-rSPWCZBNgjxJUi4^K$Ffo,YSyQci^DoM@@NMOG01om^PClo@k9*;m=Ia=5S[nKK}FHG[h]@Z_M@Wlj=(#yYK1SHI.TjOOgNM_lYD^[IDScm^yrhUDtx%cn[(|M^IBX&V*Y:9?w6IFOK[L(aznW^P3z+(9/6T,[Hd(W}DoY#.W{aEa+-kOdSstC_ZRuYXP_QeSUB_YXIyW1:)GnUPClXYB\roXT\roH^Y\rlKKB_ILOAH\rlX_L02 ;=P@*}+G,]6[fdzf:ec.NK)!W:gKJBMCWM*B3Ssd$%Vrpd4rV^OLMOD\x02>73!7r% ;&7r!=?7&:;<5r4; !&|<6;)1w95439;6_.tk)voAg)o!E4(VlNYD[H}BYDBC^a-3RAf7A3lZFrQjJ;3%%713{%'#7$3EIu*1ws(;DuS8])pFMGnLVPFaVWWLMfUFMW6$V6h{s6DxZGOZM[[AGFh{v=8Qv0qA10_.N#+&&/$-%Qa5g/Ga=xTIBT2)Gj9,c#@]VbX_BOB_B^~XJJH^YDBCcnfWQJ]5%zpFWeLOGFQ.wo9fm(nwz72e&?xD8r?oCANMXoCBJEKaESBszDFuuslmZYrLoJJl[ZZA@?U=^_f68%#Ffs$?n]g6fo^COyNOOTU}Qipz?HXD[9;3o}[K(0%(*6+9m%*:ipk!QHWdB9[rwlwd.jKdS_sVATGBCP^G},Tp%mPxyoMpZ?Y_j^_DKB+[G5E%)u=+:t&fl^(YLb/PrC^R}3g)ITAsWfHu3it;K$VZngh^SGF]f[_W`WES@VSRb(Up*g]d&?w^\x1b*7;n=0Yw4585[lF3][hTA.U{q]^yUTN[ST_HIP-{$EMM:)vG=+TWUbwjHYyLJJHIHB^B?XPH?{}RS%#v=(j.8))43:.?trik07;^se?Bm6mv4Dl]#3hY+Ny)5!-w,]i%Xrqe_(1/zeNb_[SYj9NSZIo2Z8e5_xX8bYRDn.dWEVXJC]I[3:hdD0Q2)q6^n}gC/uslN_xNY]BHNtz5apTi_U,Pb/ypPcAl]@LIfHFX71d&[@[]}gDEvs],)C5iXEIHRN;+G8*jX.5YD-R:HxxzX7?fL@A4@en5%4)f]oN&!rg9wfxpC*XEFWAXpZ/Q#BqT6OwCR1fJCbIf1lk_^E\no[_CZ\nhOY^\ne]DON\nn_GGSsUCToHVSRuCTPOECZ[-,C3-:(XcgXC^XY~YARYCXEN%uL*bjY])s(v`HCXfHTODCIpw72T=BkQdl*B7j0mYXC\x0coC@@IOX\x0cn^MEB^CX\x0caCBIUkWZB^IHX/WC&:0nC#;Rc@AUu-9tmVXWKlWVYK+@Vz0)n,voQF(E,8:6 00=:&#}h[uZdHC[8g+qIzWjrolXYB\rh\\XD]\roH^Y\rbZCHI\riX@@TDBE@rnC-t4g,.)6,*1B@4]qjxK,74%3*MB.z_G;cy2{yeqHw0I3r0G&7/  '..9vTYGB(r![AH1PSE1TmsGC_FFSRfZWOSDe]_Xz#So9Xng(hJGGIJH@NZ8js=zrD%,7f^-%;NsLZRO6m(FH7E=M#(1)seuHX#cW.i:&+1Unxym?zEWyd%5t&8pFpUSm5~JKP^&CGeAB(ueg^c=N)uK%UqNlIIyBJJAHvkP19FqlR{atZD0SDoZZOMEsRZAeQW{zRhv=AwBsbK@?<$88';8<?BauqST4@Z3rRtSKG\x0c$/4a*$8#(/%q^y&!_ymoCJT]%uDW@KQ=c*[YpR-%(B&C3Vlj{90uPP`[SSXQ8*ejf-9fW(Du_5bY!3,7*,-\x05*/7&1%B/*?E!5E]1=&$kGOHoVGX-#=fdO2AollyXdsAE2!<!90xdUR}vmQ**OlT@7T7Hb}gxBQN&5fDuSdwTFz+[?TmH4]n(Uv@KAhJPV@gPQQJK`S@KQxHSpcdWCBYtCObDW_XcFQDWRS},@AHkkyOFF\ng_^K^CED\nlCF^OX(V*;kzKVZ}GTK.woWbJ}nkaMEQjn+}{KIDM|QXMYu!aq(v]s5]z)Z+4LXYBx^H}BYDBC.[m{.K!L}OM-+3-44p=vEE:LfXm*IoTZEX8gztWU]QDYCXRuYZYD\x05R%khq@v}qpR__QRPXN4&rWWb[x3;h%RQDDjOOgNM_lYD^[IDSZ#Wj!F/V4,ZYH^G%!Wot,-_zRyevh5HkRC$|HIRhNXmRITRSnM.+=A/ML6@YpDE^\x11a]PRT\x11sTBE\x11sCPX_C^EBn/`dweh+,-=TdBU#[wzk:PQ-dr^VQ{uCavx@qT/Cdw}YFepsO7d[G]@][ZP@X/qohGb#TVN%f&q@TUNcTXb@RItQFS@EDNnroS^dT@]_}TTAWF_IGB.n=}6bW(!40aMEBw3EOiA:;3*5oz2/!:cHBkx_UTIsTYPGX^Ce+gSTQ#ugco^CO+48w(hB+)-jAwzUxS9C+sVV`[UZFu@]GBP]J[3ENc??BJBPH]XOPEsrI29uG;)Et!8]&EQPKvAFMVPLy=E6Z}D8^R34zvBCX\x17{RVAR\x17p[XUV[\x17uXDDRDj^_DmJYFK5zgas!Y5=dzPc$0LXEGeLLYO^a^#=LUN$sN0mS/~JKPTTQ?nZZDejYynTby#c6+eR_FV@[Sj;0C+*BNQFNN8z.@pKIJDA}H{1[/ZPBsBGJ$e,1-lZSS}M^VQMPKLQ!VmcwMjYqn4;5=!(5 :!YDMHbtU/3]+twcjFGO@NZQ]&]NvR[y/]CLVd/M@S@[FKh26_uR$/yT=Q.u?RGbSOB@FjMWFQUBOH0V/c#xDmMLJYQVgQujYgFNS]Zk0A3!%{qTT|UVDwB_E@R_H##Y+cn0+cROC5!yP7^n79jk9=$N12iVxOZFCIK^ONy^EXKMOlpjugtq@]Qc35#k{b&j7kM6v8CcjuwCBY\x16tCO\x16~SWZB^\x16cFQDWRSjMdOLABOaLPPtLQOG#j)H2ziHKLXAY/^)a0Yc6-95=WP=v@EENOR\x0euIDLDl@O@FDS\x0fMT@}_Ni_HLSY_@YcJmZ]!{Nh&MhL@FDcTUUNO2pA:L7SUUyfxgSRI\x06dS_\x06bGKGAC\x06sVATGBCvXD_TSYpXSHrMXSi%?_SR!VFU]Z.5}QQJ(..F^0lvpdF\x04#52f\x044'/(4)2f\x0f(2#40'*(--&':f\x1a(?,\x04('(.,;g%<(BVWLaLMVPYK9zk[Bf:U8R=0'2=ZXvBW8kkCY+L(3Bp4:mBNF!;,BP/dRWHdmK&xrB.lNYD[H}BYDBC^#:+vGS2xmq^I@u#6ycmKB^Xfh$+4naSlZRO}TIxSRW_?q7LrGp66(lGDIJGiDXXn]NE_xNY]BHNn^MEB^CX_oCBJEK$fr%kb6fY]@FGZFV}rz9(Q0]*[*/)zFKS^CGOxO]KXNiEDLCMZqHMAMKIaY@XEElC=Y7%3GCqANBJfSv?#25B}-p;{@?0R{ ;1!=)#GUu!tkGCU4NFXy319$ -[WFJ-c(C*Z38#%rEY}@ZAKFAH8j+b3YjaDz@e*lXYB\roXT\rnL^E\rx]J_LIHpRCdREA^TRSY]{dkVf6nBjHEEKHJB+ohGNB}u(.QdlpRCdREA^TR5IT%NrS)]?1lCDNlCXY^iBCFNeLiFKYYMYDFdMMXN_aO#^=VFcHxo)'8,,(%3&m*a!m;BBGj7&{WVLYQV]JZnJ:b;*k#o2;CPBYNF;RhT_Ofy_e%&Ib.j^_D\x0b`BGG\x0blGDIJG\x0biDXX}VUX[V\x1axUII_I?gx7z1g[|^OxSRW_I^Ud]I{@=kPu_~DC^S^C^B\x11bDVVTBEX^_B255'$:7,-(?(FY4ej}NrokNNh_^^ED3{r9x,C@BSPZdFWpFQUJ@F,BrrN8Riam&aCRuCTPOEC(gs*v(4iD}~OR^Z2y-dXcJ(}cqM2yoXOYO^hEYYcNPmrARf47U-.?)0G3)WE.]8!uhTKoisGF]pGKvS_SUWgBU@SVWp_XRp_DEBu^_ZR}5A#G)nZ[@mZVgJNC[Gz_H]NKJUA@[aDSFUPQvFU]ZF[@Gk_^E\neZOD\nhEYY\niBOY^a^EX^_x_GT_E^CHCDtSqpDE^dAVCPUTsCPX_C^EBnAV-fF^_FFvL$p+!(y88g^H@RiGDH@oYD[xHYNNEe]@^VgBU@SVWAaW@D[QWuCJJ\x06kSRGROIH\x06`OJRCTeMF]2ohjynRM,Hsn,el^(*%/2kYat_$)%h[?jm-}nEFKHEkFZZjFG][FEEL[rC^RRw(#&ZVs[a]+_miJuTWPD]EYN%q1)oqpME;toM\\{MZ^AKM;KEB1dFWD=:./4\x0e+<):?>\x19):25)4/(qPST@YAq)84lJ!UgDc!OeQPKfQ]eQVE;Q&;D$hi&@T[s;@;+]$rJvEHH:j2yvJG_ROKCtCQGTBeIH@OAd^YDIDYDXx^LLNX_BDERDLQg)R7dD+vX[%+YnL9:+=$T?xgC0u,P#9$(;hJQUYJAhYJLYPaMu%Bh1:(KVFJ@T;,=W-Qiv-BnXIITSZN!8dhrz7Y$@7j^_DgNJ]NlGDIJGiDXX{ONU\x1ai_VV\x1axH[STHUNIk_^EzFKIOhOY^DUp}&(O[ZAbKOXKiBALOBlA]]iAJQoA]FMJ@PcjP;,@Vc[BI^eHiXzVHCSe1%x:oAHITCrNCKCuCRROHAUxITX,_PXaF%GL$NvpxE%)52W{nvo_EJ*=zfs#msLWQPDIlKUPQhDKDB@WPDY[eUWZSZbBnGe,Mqu!-7-*=8.TL9SC:-7p7Jn}ZPQLvQ\\UB][FHd!WJQUBwCJv+u!FRBg_XMHPrSPWCZBSQBf/eg/;3kfWJF~SPW^7TT_$2SQizB[C^[!P2HN/N^gP2vjU@KlQsy9+NEjusc@+kVLW]PW^D9=(*KY/@-qVN]VLWJAtzrsis,/-|SIT|[V+Rn*}9m8D!:^I_IXnC__eH[XZ%fN#h^WWvNOZORTU}RWO^IgPLIAfJKCLBv@FQLJKj^_Di^RhJXC~[LYJONZNOTh^WWwNXPByWTXP`ABEQHPr[sPMv/NML34$+:75;9(QSVZbM13$@TIKtadzF=xRv&DcsWjV[Y_RUV^_Hn_BN;]:eCP_BAPCT_RH&$Bx5&|SIT|[VZ#-XM/SZ)(]SGF]q]^^WQFqSAZnE.kISUCdSRRIH\x17eJOEMg[ZPX]V@@O=36Ug[@GRNFQLX:p5W=2gJE.9,/!(Zn3FyK[}MdpwiKQWAfQPPKJ\x15gHMGOlKbIJGDIgJVVrJWIAjRK@AvNLKV25@V)qpvWTSG^F?{151/%amtBVWLsOB@FaFPWlhqw8#.-+!: ?4;i.;#,5}LQ]R6V,N;r70=Q5TgSRIiVCHdIUUeNCURf@VAz]CFGgJCVJEh5{LYE@JHjFG][FEEL[VBCXdR[[uEV^YEXCDnH^IrUKNOoBK^p55HuXDDtXYQ^P}7+Bv+@wUOI_xONNUT\x0byVSYQvTYYWTV^df8J{#q;Q`BX^HoXYYBC\x1cnADNFBI[!r?XV.,*B-G.s=`LMMF@WI&Xzlt21u*#:<1,iefpnCl35fP]k_^EyOFFhXKCDXE^Y\x0b->61\x0b003\x1c01968DtkJINZC[A2LTy[=UroGSRIuCJJdTGOHTIRU)/<++6PxKV_FM,wNBT]]cPCXEHwX]ETCr^_WXVBz&mWb%ehUtM[SA\x18zTW[S\x18jMKPpUUcXVYEvC^DAS^IfEGOCVKQJ@gKHKV\x17}LQ]soj,K7BSyvASnSKGHIOBtIIRvGTRoJJzOL28X#DSTzwsf_IAS\nhFEIA\nx_YBZLEE{H[@]Po@E]L[/nPJsuE1OWPJ.zStqTTbYWXDwB_E@R_H`LMEJDPnq2YMsR{NcROCzNMc=)-s!8Z]zL]`NGF[L`GMLQLZt@AZ`[YZV^bZGYQ!h]]HJBjFG][FEEL[dAAwLBMQbWJPUGJ]a]PHTCbZX_r^_WXVjOOyBLC_lYD^[IDShOWDOUNSXrDSWHBDuS@HOeDM@Xhakjrs_^^USDMjB[HmEZy[VVX[YQ_4@aatuuOHUXUHUI\x1arOX*r@KYD1qq8t$9K,w$k[H@G[F]ZjFGO@NuSAACUROIHU2ILJvSS{RQCpEXBGUXO{UIRY^TvBQ]UCZJGSRIeIJJCEReGUN%.-- 3l2(&/E&/AkNNfOL^mXE_ZHERz__w^]O|ITNKYTCnBCKDJ^I1Mn?(kozNOT(e)fhe{*p?krTGOHOHAuCTPOEC/E(Hyo2TP%zTtw3K^^KIAyZOONHs#jsVV~WTFu@]GBP]Jk]ZZMFKAM[w+){uuZW_[tYXCEw$l%8|YYqX[IzORHM_REwRRb^S[SyFB_YXEc[BIHx^MEBxCC@_bDW_X_XQeSD@_USkJINZC[h7BlH,hn)71,A1vnm^,G[ztVG`VAEZPV2#5NjEBHjE^_XoDE@HxQQDRC+!nlzWD=1<85-1jYmF;ux7zVOnlJ*Xt#}B;3bNOGHFR}in.eiKeHLAYEx]J_LIH\x1c`BOOAB@H5.g-DxdxbEC^ZTdNoadpy^@EDsXQ^WUTRC%3;&?bTm?r?qEDcROCnv[^PYZRYCkDCIkD_^YnEDAIdBTCx_ADEeHATamRITRSN\x1diR\x1dhNXyF]@FGZ\t}F\t|ZLBVWLfRVJSgVNNZVBCXc^ZReR@VES|^Oh^HHRTUoRV^WCBYsGC_FrC[[Ol]@L`yTQ_VU]VLiD@MUItQFS@ED\x10{JW[wnCFHABJA[mBEOmBYX_hCBGOsQCXe@WBQTU\x01GaiL@LJHx]J_LIH\x1cbSNBnwZ_QX[SXB`sT^_Bx_R[LSUHdO]\ny_MMOY^CED~HAAaXNFToABNFdBTCx_ADEeHATC@QG^s@NMXWO4iMJOg)X@8(TH&oC@@IOXECB(_l`XAYD&h;?T_JdaCReIHRTIJJCTtQxSgrnu3Uv}ZiH^Y_BTGPiRW&cY^CNC^C_\x0cdYNuCRjODTGT_OH#pRCtXYCEX[[REpFBQ@KBAOF:ZgqSBuYXBDYZZSDvBCXrFB^GvBEVuJQLJKv@WSLF@eCUBy^@EDdI@U~EMMFOaOSHCDNtVG`VAEZPV:qWjHYnBCY_BAAH_v]^SP]\x11s^BBTB>( =/*G6av5o+xZK~KKMV]JKZZbVWL\x03qFAJQWKQcYmCL^iFKCGON}_NyUTNHUVV_H9?((ro^.?z6qCZNOTnH^kTORTUwUXXVUW_MSn3Xf@VAz]CFGgJCV90:1, U_V[Uab|CXECB_oCBJEKES[FC0-ga,w2gAR]@CRAV]PJvGTCHRvr}+eXs^DG[VNxESRE~XKDYZKXODISgHMGOfQPPKJ\x16U[L@]L_^@MLBwHDVQNSUrH[DRYIVQQ@MLWZJtV^\x13fCTARWV@yPQK*FLB#RaYkNNaOSzCIAOXYIZRUITOoBK^oCBBIOX)Iki+UYEB}5aU=$HA[ONUxOC~OWWCkIXmXX^ENYXIjHYlYY_DOXYHvBCXuBNsBZZNyPQK)#*-%oOlXH[STHUNnCJ_4++6/1$3:67$oNMJ^G_=N2m{295($;469)-'pEEPRZ\x11bATTUfA_Z[jAKJKkZqTT{UI`YS[UB80)4%+1/4/01TDVSFE@LQ]@CzLDYkB_nEDAIIQPEPMKJGpLLqFPFWlMpSBTMi^H^OtUhKZLUxLMV{L@}LTT@)#8!*0-#922#dBQ^C@QBU^SIcY^CNC^C_dYN@TUNcTXeTLLXRLRE^XHXGLShYJ]VLlXok$\x150;+8+ w5,8OJFJLNf^G_BlGACKmA@HGIhni7(DK?^^ieMF]cMQJAFL&9&1<1/1/V8bSNBgs&vYwb}B^DYDBC.;7aCReNOJBTCHpRCt_^[SERYg@mACLOZJgV2':6(9()05(~_IYHSJNSUT}[IIK]ZGA@]<1'0%2/1046BVWLqFAJQWK|MHHEBK`IJXiBKXKI^OXchQFPFWaLPPjGWZBTNOtI_^IwVURF_G(kp265$2+Wn/6F7}LIIDCJaHKYVY@JYADCHJI~OR^n/_eW%zjKHO[BZjCR,oJAQBQZ\rOVBGURNO_PSUD]IBS@X^SCNGKd]KCQjDGKCyZK]DhED_YeDG@TMUvw.jAH[HJ]L[_eTIEQTR*349$?*?.f((<{WVV][LvU,FH^WAWIXJDHXMNBBYCSV)%14%$(?$8[]QHTZBXHCK_K_0/2=lwuWFaW@D[QWBI[4,z8}viqYB^W[tYZRpRCdREA^TR\x04293>90yyyiX]]PW^mVIpfdGXsQb:r}KZZG@I]+W~JKP\x1fkM^VQ|]F[TKa[VWdXYS[^UCC}oDN_;F3,1SeCPX_e^^]&hOQTUcDF@OQZYTWZtYEEECPX_uT]PHxITXoC@C^\x1fzXInXOKT^XjABOLAoB^^aPMAvZYZG\x06`TUN\x01uS@HO?%>/>&%*4-yAX@]BWNpFiXEI~RQRO\x0eGZHPKBPSUWuDYUbNMNS\x12~RSSX^I=*BHZBUGHBUZWuTWPD]ETt|YYiRZZQXxHYNNEl^BPEOSESJJ[zJHEL}PYLiLL|GOODM~[[kPXXSZxNGGqwsI4dPQJ\x05cDWHCRDT^VDZL!!=*?3 <&NZGEzojCTsovGBBOHAvSScXPP[R`EEuNFFMD)(5*&+r5cz__hWR_^I'21?6VSazYR@UW7p5}dBTa^EX^_<0,+Vk&s*GEXZ@C^BEEQLNp@BOFGSGSAxQ.WhMM}FNNELnKK|CFKJ]pHQITqTSXrBQY^B_DCzJYQVJWLK38*?PI}tYnOLK_F^R#OPH[@[GPY{^^nU]]V_kNNh_^^EDbYCU^lIuA<  $Tj08!tSKXSIRODtQQaZRRYPvBCXcEV^YgBBrIAAJCyMLWzWVMKHA^RBSBEKSXJkjb*NsyEDNFCH^^kJINZC[qSy[VVX[YQV(r+hZ9GrP]]SPRZtISHBOHAzXUU[XZRUA@[rUFYlXYBkL_@qNRHUHNOvTYYWTV^{\x14\xaeG\xe1z\xa4?}LQ]z@SLK_^ElKXGnKKcNMJCkIXnC__J333333\xf3?kIDDJIKCnLAAOLNFv@QQLKBVCUDDY^WCqS^^PSQYiVJPMPVWhWKQLQWVkDSaX}+OzG]FLAFO`BOOAB@HoLNF]LNFeCPX_X_Vb~tXEYREbSQYSUWA71'0,#/'xZWWYZXP<-5::=44\x80\xd61l/\xc8\xd4B\x9a\x99\x99\x99\x99\x99\xb9?gEHHFEGO\x00\x00\x00\x00\x00\x00\xe0?HKZIPW^HzUOR\x16z}pXW[PHHJRfYE_B_YXkJINZC[~_INHUC~F_GZyUtG9$n)^gSRIaeZ_TFoY&yiEDDOI^rTGGHYB38*uARy{ZY^JSKuTWPD]EyCHFCDMnQKQZT]ODVUb(*sRQVB[C}\\_XLUMhI_X^CUkSJRO=/xTUU^XOoCBBIOX`ABEQHPd[@][ZGa@CDPIQWXB_wP]tXYYRTCOL@HFGjZUORz]P|SIT|[VjFGO@NZwXOVixks_BUwEYwVURF_GNZGEzojnOLK_F^gKJJAGPlAE@AVWKFI[^TYo^CO+P7yHUYoBU`EEu@C|GEFHMYSCAWQiDXXNXzM@YI_+8+0- gVERYCsBQFMWeL^yLJ.555?&uPP`UVcEVVYH|PR]^K{R@gRT>->%85eCPP_N8*<9/8nU]]V_nLCNHA?,?$94?0<5=*GOJNL^QR^VXY;?':,KHO]LMQ%>&).9#!><?5kZI^UO?78?>) !#,?7vz{s|rvMOLBG:1#aLoROW^56'1(c^C[R/,9$(=3:<<eUWZS&30>7yM^RZZGEMDiQHPMWRJQToTNXS|PSPMLO^HQ?>*=#lXKGO!(Xy#xTWTI=>/9 I^@@Nb_BZSp_RZ^#?-.8XVYK+KHYOV 5681sGTXP9:+=$]GK]Qz@SLo-.?)0uRGTRGKHKVq@]Q \xabs\"\xf3\xc4\xa8\x0b\xc9\xec\xa9\x966,$!z@SLiF]JA@CFxLMVt[W_iEMJ~V]F\xf9\x9d\xbc\x8e\xa9\xa8\x19\x8cg]oYl_DIY[IR\xc5\x8d\xba\x06eIAF\xac\xbc\xa5:\x9c\x86+\x1cr\xac\x91\x1fn_BNbXKTM[SNzKVZk_^EOYQLE\xc3qZ\x06bCq:93=%17 xITXr[Z@~DWH}LQ]\x0e+o\xa9q^I1[MEX[TXPc\xe4{\x026\x13Vi>,/#U]VMx\r?\x0e)&4!ta\xd1\x0exBQNwF[WsGF]o{o{dUHD\xa7\x00\x82\x00l@HOwSIYQ\xecH\x036?4@o^CO\x1a\xb6s mH]HuDYU\x8aA\xac-K\xd1\xc1\x07{ONU\xe6\xfa\xcd\xcfhABPbG@]\xb8\xb2a1vBCXZNH__V]eIP=6$MFT!(#AJ-m{h3(94=6x~ykG^/2-YP[cDZaEBDO]0;)AJX^UG%.<!*8K@RvZCbXj~Z]=(7@IB5>,IKC/-*\x18\x01b4,\x01Sb\x025\x0c?]\x06$B\xee\x8cZTH\x1b\xe1\xb4(#\x14\x1d\x0en!I\x82\x929x\x13\x157\xbe\xd2Ni=K~\x07^}<J\x19\xfeE6M\x04\x16oV\x1e/UL\x11uCY.\xe9)l"))
sv_5_1, j7, sv_12, jX, jW, sv_7, jP, BossConfig, jM, jK, jI, jF, jB, jx, ju, jq, jC, VirtualInputManager, jl, jf, jV, i6, jR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sv_1 = 37
repeat
    j8 = (sv_1 * 2 + 9) % 13 + 1
    if j8 <= 7 then
        if j8 <= 4 then
            if j8 <= 2 then
                if j8 <= 1 then
                    j9 = {
                        "euzkfdjhy",
                        "chyjrtyidma",
                        "ssoxmarnt",
                        "wzxdyk",
                        "xdmrqfegjsxz",
                        "wiqseatgsz",
                        "uwp",
                        "cqg",
                        "ewyetjxapsmg",
                        "aqcfspuydhuv",
                        "zbsnkscn",
                        "fipziqtsxzy",
                        "hfymmidrg"
                    }
                    if j9[(sv_1 * 1 + 1) % 13 + 1] < j9[(sv_1 * 1 + 1) % 13 + 1] then
                        j9 = jB.GetController
                        sv_7 = j9(jB)
                        jI = jB.GetController(j9)
                        jF = jB.GetController("AttackController")
                    else
                        jI = sv_7.GetController("AutorunController")
                        jF = sv_7.GetController("AttackController")
                        jB = sv_7.GetController("PlaytimeRewardController")
                    end
                    sv_1 = (sv_1 + 20) % 104
                else
                    j9 = {
                        "mdcxxud",
                        "keszlzdugi",
                        "stajvu",
                        "ngxtdudcm",
                        "keljj",
                        "vgqakcqoy",
                        "sfzrex",
                        "lphbiupnypo",
                        "shgrcdltsga"
                    }
                    ka = j9[sv_1 % 9 + 1]
                    j9 = ka:len()
                    kb = (ka:gsub("(.)", "%1%1", sv_1 % 3 % 2 + 1))
                    if j9 >= kb:len() then
                        jP = ju.PLAYER_ATTACK_DEBOUNCE
                        jx = "autoUsePotion"
                    else
                        jx = jP.PLAYER_ATTACK_DEBOUNCE
                        ju = {
                            autoFarm = false,
                            attackSpeed = 1,
                            autoTrain = false,
                            trainDelay = 0.3,
                            autoBonus = false,
                            autoTimeReward = false,
                            resetBossId = nil,
                            antiAfk = false,
                            autoUpgradeBase = false,
                            autoUnlockWorld = false,
                            autoRebirth = false,
                            autoBuyAura = false,
                            autoEquipAura = false,
                            autoBuyDummy = false,
                            autoEquipDummy = false,
                            autoUpgradeBrainrots = false,
                            brainrotTarget = 0,
                            autoPlaceBest = false,
                            placeInterval = 30,
                            autoSellBrainrots = false,
                            autoSellLuckyBlock = false,
                            sellMutationFilter = { Any = true },
                            sellRarityFilter = { Any = true },
                            autoKillGlobalBoss = false,
                            autoOpenBossChest = false,
                            autoLeaveGlobalBoss = false,
                            autoBuyTrainUpgrade = false,
                            autoBuyCashUpgrade = false,
                            autoBuyDamageUpgrade = false,
                            autoBuyHealthUpgrade = false,
                            autoUsePotion = false,
                            potionFilter = "Any",
                            autoCollectCash = false
                        }
                    end
                    sv_1 = (sv_1 + 59) % 104
                end
            elseif j8 <= 3 then
                j9 = {
                    "bwh",
                    "dkemqxepjq",
                    "yewtb",
                    "xnuovnd",
                    "ecpggz",
                    "vtikqrost",
                    "rbwtxxcyil",
                    "pbltz",
                    "yejcwuarorr"
                }
                ka = j9[sv_1 % 9 + 1]
                j9 = ka:len()
                kb = (ka:gsub("(.)", "%1%1", sv_1 % 3 % 2 + 1))
                if j9 <= kb:len() then
                    jq = true
                    jl = worker
                    jf = fn474
                    task.spawn(function()
                        while true do
                            local kV = ju.autoFarm and jX:GetAttribute("InCombat") and ju.attackSpeed > 1
                            if kV then
                                pcall(function()
                                    jF.Attack(jF)
                                end)
                            end
                            task.wait(jx / ju.attackSpeed)
                        end
                    end)
                    jV = fn1687
                    task.spawn(function()
                        while true do
                            local ld = ju.autoTrain and not jX:GetAttribute("InCombat")
                            if ld then
                                if jV() then
                                    pcall(function()
                                        jK.Train(jK)
                                    end)
                                end
                            end
                            task.wait(ju.trainDelay)
                        end
                    end)
                    j9 = function(Q)
                        if ju.autoBonus and Q then
                            pcall(function()
                                jK.ClaimBonus(jK, Q)
                            end)
                        end
                    end
                    ka = jK.SpawnBonus
                    ka.Connect(ka, j9)
                    task.spawn(function()
                        while true do
                            if ju.autoTimeReward then
                                local lh = jB:GetSessionTime()
                                for k, v in pairs(jM) do
                                    local ln = k
                                    local li = lh >= v.time and not jB:IsGiftClaimed(ln)
                                    if li then
                                        pcall(function()
                                            jB.ClaimGift(jB, ln)
                                        end)
                                    end
                                end
                            end
                            task.wait(2)
                        end
                    end)
                    jC = workspace:WaitForChild("Bosses")
                else
                    jl = true
                    jf = worker
                    jK = fn474
                    j9 = task.spawn
                    j9(fn474)
                    jC = fn1687
                    task.spawn(worker)
                    ka = jV.SpawnBonus
                    ka.Connect(ka, j9)
                    task.spawn(jV)
                    jq = workspace:WaitForChild(workspace)
                end
                sv_1 = (sv_1 + 33) % 104
            else
                if sv_1 * 41673827 + 13 + 4 <= sv_1 * 41673827 + 13 + 4 + 2 then
                    j9 = function()
                        if not (ju.autoFarm and ju.resetBossId) then
                            jq = true
                            return
                        end
                        local lq_1 = false
                        for i, child in ipairs(jC:GetChildren()) do
                            local lr = child.Name == ju.resetBossId and not BossConfig.GetBoss(child.Name).globalBoss
                            if lr then
                                lq_1 = true
                                break
                            end
                        end
                        if lq_1 then
                            if jq then
                                jq = false
                                local lq_2 = jl()
                                if lq_2 then
                                    lq_2.Health = 0
                                end
                            end
                        else
                            jq = true
                        end
                    end
                    ka = sv_12.Heartbeat
                    ka.Connect(ka, j9)
                    VirtualInputManager = game:GetService("VirtualInputManager")
                    i6 = fn597
                    jR = function(ak)
                        local lK, lL
                        local CurrentCamera = workspace.CurrentCamera
                        local lN = CurrentCamera and CurrentCamera.ViewportSize
                        local lM_4 = lN or Vector2.new(1280, 720)
                        lL, lK = lM_4.X / 2, lM_4.Y * 0.45
                        pcall(function()
                            VirtualInputManager.SendMouseButtonEvent(VirtualInputManager, lL, lK, 0, true, game, 0)
                            VirtualInputManager.SendMouseButtonEvent(VirtualInputManager, lL, lK, 0, false, game, 0)
                        end)
                        if getconnections then
                            local Frame = ak:FindFirstChild("Frame")
                            local lN_4 = Frame and Frame:FindFirstChild("TextButton")
                            if lN_4 then
                                for i, v in ipairs({ lN_4.MouseButton1Click, lN_4.MouseButton1Down }) do
                                    local lU = v
                                    pcall(function()
                                        for i, v in ipairs(getconnections(lU)) do
                                            v.Fire(v)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                else
                    j9 = VirtualInputManager.Heartbeat
                    ka = j9
                    ka.Connect(ka, j9)
                    jR = game:GetService(game)
                    sv_12 = fn597
                    i6 = function(ak)
                        local lK, lL
                        local CurrentCamera = workspace.CurrentCamera
                        local lN = CurrentCamera and CurrentCamera.ViewportSize
                        local lM_1 = lN or Vector2.new(1280, 720)
                        lL, lK = lM_1.X / 2, lM_1.Y * 0.45
                        pcall(function()
                            VirtualInputManager.SendMouseButtonEvent(VirtualInputManager, lL, lK, 0, true, game, 0)
                            VirtualInputManager.SendMouseButtonEvent(VirtualInputManager, lL, lK, 0, false, game, 0)
                        end)
                        if getconnections then
                            local Frame = ak:FindFirstChild("Frame")
                            local lN_2 = Frame and Frame:FindFirstChild("TextButton")
                            if lN_2 then
                                for i, v in ipairs({ lN_2.MouseButton1Click, lN_2.MouseButton1Down }) do
                                    local lU = v
                                    pcall(function()
                                        for i, v in ipairs(getconnections(lU)) do
                                            v.Fire(v)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
                sv_1 = (sv_1 + 85) % 104
            end
        elseif j8 <= 6 then
            if j8 <= 5 then
                if (jl or jX) and (jX or not jl) and (jl or not jX or (not jX or not jM)) and ((jX and not jl or (not jV or not jl)) and (BossConfig and not jV or not jX and not BossConfig)) or (jM or BossConfig) and (jV and jX) and (not jV and not jV and (BossConfig and jX)) and ((jl and jM or (not BossConfig or jV)) and (jl and not jV and (jX or BossConfig))) or not ((jl or jX) and (jX or not jl) and (jl or not jX or (not jX or not jM)) and ((jX and not jl or (not jV or not jl)) and (BossConfig and not jV or not jX and not BossConfig)) or (jM or BossConfig) and (jV and jX) and (not jV and not jV and (BossConfig and jX)) and ((jl and jM or (not BossConfig or jV)) and (jl and not jV and (jX or BossConfig)))) then
                    task.spawn(function()
                        while true do
                            local lV = ju.autoFarm and i6()
                            if lV then
                                jR(lV)
                                task.wait(0.07)
                            else
                                task.wait(0.2)
                            end
                        end
                    end)
                else
                    task.spawn(task.spawn)
                end
                sv_1 = (sv_1 + 7) % 104
            else
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_1, 1), string.byte(tostring(jM))), 22), 1661364778), 2), 2350491817) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_1, 1), string.byte(tostring(jM))), 22), 2) then
                    jF = game:GetService("Players")
                else
                    sv_5_1 = game:GetService("Players")
                end
                sv_1 = (sv_1 + 59) % 104
            end
        else
            if (not jq and not sv_12 or (jf or jf)) and (jM or not jf or not jq and jq) and not ((not jq and not sv_12 or (jf or jf)) and (jM or not jf or not jq and jq)) then
                jW = game:GetService(game)
            else
                j7 = game:GetService("ReplicatedStorage")
            end
            sv_1 = (sv_1 + 72) % 104
        end
    elseif j8 <= 10 then
        if j8 <= 9 then
            if j8 <= 8 then
                j9 = (vector.create((sv_1 * 2 + 4) % 11 + 1, (sv_1 * 1 + 1) % 13 + 1, (sv_1 * 12 + 6) % 17 + 1))
                ka = (vector.create((sv_1 * 6 + 3) % 11 + 1, (sv_1 * 6 + 5) % 13 + 1, (sv_1 * 9 + 16) % 17 + 1))
                kb = (vector.create((sv_1 * 5 + 5) % 5 + 1, (sv_1 * 4 + 4) % 7 + 1, (sv_1 * 5 + 3) % 9 + 1))
                if fn209(math.abs((vector.angle(j9, ka, kb))) - math.abs((vector.angle(ka, j9, kb))), 544454170) then
                    sv_12 = game:GetService("RunService")
                else
                    ju = game:GetService(game)
                end
                sv_1 = (sv_1 + 46) % 104
            else
                j9 = (vector.create((sv_1 * 4 + 9) % 11 + 1, (sv_1 * 1 + 13) % 13 + 1, (sv_1 * 11 + 11) % 17 + 1))
                ka = (vector.create((sv_1 * 6 + 9) % 11 + 1, (sv_1 * 6 + 1) % 13 + 1, (sv_1 * 8 + 3) % 17 + 1))
                kb = (vector.create((sv_1 * 7 + 8) % 11 + 1, (sv_1 * 8 + 6) % 13 + 1, (sv_1 * 1 + 10) % 17 + 1))
                kc = (vector.create((sv_1 * 6 + 8) % 11 + 1, (sv_1 * 6 + 8) % 13 + 1, (sv_1 * 13 + 5) % 17 + 1))
                if vector.dot(vector.cross(j9, ka), (vector.cross(kb, kc))) == vector.dot(j9, kb) * vector.dot(ka, kc) - vector.dot(j9, kc) * vector.dot(ka, kb) + 4 then
                    sv_5_1 = jW
                    jX = "https://discord.gg/ehKVq7pf7v"
                else
                    jX = sv_5_1.LocalPlayer
                    jW = "https://discord.gg/ehKVq7pf7v"
                end
                sv_1 = (sv_1 + 20) % 104
            end
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_1, 18), string.byte(tostring(VirtualInputManager))), 3), 2527718601), 4208598951), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_1, 18), string.byte(tostring(VirtualInputManager))), 3), 1767248694), 1633884104))), 4208598951), 1633884104) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(sv_1, 18), string.byte(tostring(VirtualInputManager))), 3) then
                j7 = require(require)
            else
                sv_7 = require(j7.Packages.Knit)
            end
            sv_1 = (sv_1 + 72) % 104
        end
    elseif j8 <= 12 then
        if j8 <= 11 then
            j8 = (vector.create((sv_1 * 4 + 3) % 11 + 1, (sv_1 * 5 + 2) % 13 + 1, (sv_1 * 15 + 4) % 17 + 1))
            j9 = (vector.create((sv_1 * 1 + 5) % 11 + 1, (sv_1 * 7 + 4) % 13 + 1, (sv_1 * 3 + 11) % 17 + 1))
            ka = (vector.create((sv_1 * 2 + 8) % 11 + 1, (sv_1 * 3 + 12) % 13 + 1, (sv_1 * 7 + 10) % 17 + 1))
            if vector.dot(vector.cross(j8, j9), ka) == vector.dot(vector.cross(j9, ka), j8) + 3 then
                j7 = require(jP)
            else
                jP = require(j7.Configs.CombatConfig)
            end
            sv_1 = (sv_1 + 46) % 104
        else
            if sv_1 * 124556585 + 10 + 1 >= sv_1 * 124556585 + 10 + 1 + 4 then
                jM = require(BossConfig.Configs.BossConfig)
                j7 = require(require)
            else
                BossConfig = require(j7.Configs.BossConfig)
                jM = require(j7.Configs.PlaytimeRewardConfig)
            end
            sv_1 = (sv_1 + 20) % 104
        end
    else
        j8 = (vector.create((sv_1 * 7 + 5) % 11 + 1, (sv_1 * 4 + 5) % 13 + 1, (sv_1 * 5 + 8) % 17 + 1))
        j9 = (vector.create((sv_1 * 1 + 9) % 11 + 1, (sv_1 * 10 + 3) % 13 + 1, (sv_1 * 6 + 8) % 17 + 1))
        ka = (vector.create((sv_1 * 5 + 2) % 11 + 1, (sv_1 * 3 + 9) % 13 + 1, (sv_1 * 13 + 5) % 17 + 1))
        kb = (vector.create((sv_1 * 4 + 3) % 5 + 1, (sv_1 * 2 + 3) % 7 + 1, (sv_1 * 1 + 7) % 9 + 1))
        if vector.dot(vector.cross(j8, (vector.cross(j9, ka))), kb) == vector.dot(j9 * vector.dot(j8, ka) - ka * vector.dot(j8, j9), kb) then
            jK = sv_7.GetService("TrainingService")
        else
            local GetService = jK.GetService
            sv_7 = GetService(GetService)
        end
        sv_1 = (sv_1 + 7) % 104
    end
until fn209((sv_1 * 41 + 3) % 104, 1517404997)
local jS
j8 = 13
repeat
    if (j8 * 1 + 0) % 2 + 1 <= 1 then
        local sv_5_3 = (vector.create((j8 * 3 + 1) % 11 + 1, (j8 * 3 + 1) % 13 + 1, (j8 * 12 + 11) % 17 + 1))
        sv_1 = (vector.create((j8 * 7 + 2) % 11 + 1, (j8 * 4 + 10) % 13 + 1, (j8 * 4 + 13) % 17 + 1))
        if vector.dot(sv_5_3, sv_1) * vector.dot(sv_5_3, sv_1) >= vector.dot(sv_5_3, sv_5_3) * vector.dot(sv_1, sv_1) + 1 then
            local sv_5_4 = jX.Idled
            sv_1 = sv_5_4
            sv_1.Connect(sv_1, sv_5_4)
        else
            local function sv_5_5()
                if ju.antiAfk then
                    jS.CaptureController(jS)
                    jS.ClickButton2(jS, Vector2.new())
                end
            end
            sv_1 = jX.Idled
            sv_1.Connect(sv_1, sv_5_5)
        end
        j8 = (j8 + 5) % 16
    else
        if j8 * 78971999 + 1 + 2 >= j8 * 78971999 + 1 + 2 + 1 then
            jS = game:GetService("VirtualUser")
        else
            jS = game:GetService("VirtualUser")
        end
        j8 = (j8 + 13) % 16
    end
until fn209((j8 * 3 + 5) % 16, 578005792)
jL, jJ, jH, jD, jz, jw, PlayerSkinConfig, jo, jk, BiomeConfig, jh, jg, jd, jb, ja, i8, j9, j2, jU, sv_1, jn, kc, kb, sv_5_6, ka, j0, jT, jE, jY, jr, jQ, ji, je, jc, jZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sv_12 = 7
repeat
    j8 = (sv_12 * 8 + 7) % 15 + 1
    if j8 <= 8 then
        if j8 <= 4 then
            if j8 <= 2 then
                if j8 <= 1 then
                    kd = (vector.create((sv_12 * 2 + 4) % 11 + 1, (sv_12 * 1 + 2) % 13 + 1, (sv_12 * 12 + 4) % 17 + 1))
                    worker2 = (vector.create((sv_12 * 5 + 2) % 11 + 1, (sv_12 * 4 + 2) % 13 + 1, (sv_12 * 7 + 14) % 17 + 1))
                    local kf_1 = (vector.create((sv_12 * 4 + 5) % 11 + 1, (sv_12 * 1 + 5) % 13 + 1, (sv_12 * 11 + 2) % 17 + 1))
                    kg = (vector.create((sv_12 * 7 + 7) % 11 + 1, (sv_12 * 6 + 4) % 13 + 1, (sv_12 * 14 + 1) % 17 + 1))
                    if vector.dot(vector.cross(kd, worker2), (vector.cross(kf_1, kg))) == vector.dot(kd, kf_1) * vector.dot(worker2, kg) - vector.dot(kd, kg) * vector.dot(worker2, kf_1) + 5 then
                        sv_1 = loadstring(game:HttpGet(game))()
                        kc = loadstring(game:HttpGet(game))()
                    else
                        kc = loadstring(game:HttpGet(sv_1 .. "addons/ThemeManager.lua"))()
                        kb = loadstring(game:HttpGet(sv_1 .. "addons/SaveManager.lua"))()
                    end
                    sv_12 = (sv_12 + 17) % 60
                else
                    kd = {
                        "cdxlwgdram",
                        "xzuve",
                        "wulpk",
                        "tua",
                        "ioczfhpjzq",
                        "jaqniixutobr",
                        "nsl",
                        "cwqdtfbq",
                        "slng",
                        "ncyxz",
                        "akpibxekqzzk",
                        "wmckq",
                        "rfi"
                    }
                    if kd[(sv_12 * 13 + 48) % 13 + 1] < kd[(sv_12 * 13 + 48) % 13 + 1] then
                        local s2 = sv_5_6
                        jn = s2:CreateWindow("ShowCustomCursor")
                    else
                        sv_5_6 = jn:CreateWindow({
                            Title = "Lucky Block Rush",
                            Footer = "Ouroboros Hub",
                            Icon = 91400086538074,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            Size = UDim2.fromOffset(720, 620)
                        })
                    end
                    sv_12 = (sv_12 + 2) % 60
                end
            elseif j8 <= 3 then
                if (sv_12 * 3 + 9) * 21 % 4 == ((sv_12 * 3 + 9) * 21 + 10) % 4 then
                    jW = "Settings"
                else
                    ka = {
                        Main = sv_5_6:AddTab("Main", "swords", jW),
                        Auto = sv_5_6:AddTab("Auto", "zap", jW),
                        Suggestions = sv_5_6:AddTab("Suggestions", "message-square", jW),
                        Settings = sv_5_6:AddTab("Settings", "settings", jW)
                    }
                end
                sv_12 = (sv_12 + 2) % 60
            else
                kd = (vector.create((sv_12 * 5 + 9) % 11 + 1, (sv_12 * 5 + 7) % 13 + 1, (sv_12 * 7 + 12) % 17 + 1))
                worker2 = (vector.create((sv_12 * 4 + 3) % 11 + 1, (sv_12 * 6 + 1) % 13 + 1, (sv_12 * 4 + 15) % 17 + 1))
                if vector.dot(kd, worker2) * vector.dot(kd, worker2) <= vector.dot(kd, kd) * vector.dot(worker2, worker2) then
                    jL = sv_7.GetService("SkinService")
                    jJ = sv_7.GetService("WorldUpgradesService")
                    jH = sv_7.GetService("RebirthService")
                    jD = sv_7.GetService("ContainerService")
                    jz = sv_7.GetService("BiomeService")
                else
                    kd = jJ.GetService
                    jH = kd("SkinService")
                    worker2 = jJ.GetService
                    jz = worker2(kd)
                    kd = jJ.GetService
                    jD = kd(worker2)
                    jL = jJ.GetService("RebirthService")
                    sv_7 = jJ.GetService(kd)
                end
                sv_12 = (sv_12 + 2) % 60
            end
        elseif j8 <= 6 then
            if j8 <= 5 then
                kd = {
                    "bukke",
                    "uuyv",
                    "bhtqazi",
                    "xyo",
                    "yemtducejvc",
                    "knrivnabzm",
                    "fcezo",
                    "batqeh",
                    "dxuo",
                    "dkyl",
                    "fnzrupou"
                }
                worker2 = kd[sv_12 % 11 + 1]
                kd = worker2:len()
                local kf_2 = (worker2:gsub("(.)", "%1%1", sv_12 % 3 % 2 + 1))
                if kd >= kf_2:len() then
                    j7 = PlayerSkinConfig:GetController()
                    jk = require("ReplicaController")
                    kd = require(sv_7).TRAIN_TOOLS
                    jw = require
                    jo = require(kd)
                else
                    jw = sv_7.GetController("ReplicaController")
                    PlayerSkinConfig = require(j7.Configs.PlayerSkinConfig)
                    jo = require(j7.Configs.TrainToolConfig).TRAIN_TOOLS
                    jk = require(j7.Configs.WorldUpgradesConfig)
                end
                sv_12 = (sv_12 + 17) % 60
            else
                kd = (vector.create((sv_12 * 7 + 7) % 11 + 1, (sv_12 * 6 + 11) % 13 + 1, (sv_12 * 14 + 10) % 17 + 1))
                worker2 = (vector.create((sv_12 * 1 + 9) % 11 + 1, (sv_12 * 5 + 2) % 13 + 1, (sv_12 * 4 + 6) % 17 + 1))
                local kf_3 = (vector.create((sv_12 * 5 + 4) % 11 + 1, (sv_12 * 5 + 4) % 13 + 1, (sv_12 * 5 + 7) % 17 + 1))
                if vector.dot(vector.cross(kd, worker2), kf_3) == vector.dot(vector.cross(worker2, kf_3), kd) then
                    BiomeConfig = require(j7.Configs.BiomeConfig)
                else
                    j7 = require(BiomeConfig.Configs.BiomeConfig)
                end
                sv_12 = (sv_12 + 17) % 60
            end
        elseif j8 <= 7 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_12, 23), string.byte(tostring(je))), 1), 2982706758), 14), 529640562) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_12, 23), string.byte(tostring(je))), 1), 14) then
                jh = sv_7.GetService("InventoryService")
                jg = require(j7.Configs.BrainrotsConfig)
                jd = sv_7.GetService("GlobalBossEventService")
                jb = sv_7.GetController("GlobalBossController")
                ja = sv_7.GetService("StarBlockService")
            else
                local GetService = jh.GetService
                jg = GetService(GetService)
                ja = require(jh)
                worker2 = jh.GetService
                j7 = worker2(jb)
                sv_7 = jh.GetController(worker2)
                jd = jh.GetService("InventoryService")
            end
            sv_12 = (sv_12 + 32) % 60
        else
            kd = {
                "govkztnpkpon",
                "tjqhpnrzfaxk",
                "tvvy",
                "ptukzsebhoil",
                "mxeiwfwvojw",
                "ppwa",
                "rqiuujvuqr",
                "xifalbdwcsb",
                "vhn",
                "ozplzluud",
                "tobagmvlsx",
                "uvmwpwtsvst",
                "vlcyubmxfwe",
                "fyarirnyp",
                "wyapyb"
            }
            if kd[(sv_12 * 30 + 108) % 15 + 1] <= kd[(sv_12 * 30 + 108) % 15 + 1] then
                i8 = sv_7.GetService("PotionService")
            else
                local GetService = i8.GetService
                sv_7 = GetService(GetService)
            end
            sv_12 = (sv_12 + 17) % 60
        end
    elseif j8 <= 12 then
        if j8 <= 10 then
            if j8 <= 9 then
                if (sv_12 * 2 + 6) * 7 % 3 == ((sv_12 * 2 + 6) * 7 + 6) % 3 then
                    j9 = require(j7.Configs.PotionsConfig)
                else
                    j7 = require(require)
                end
                sv_12 = (sv_12 + 2) % 60
            else
                if (sv_12 * 2 + 3) * 16 % 3 == ((sv_12 * 2 + 3) * 16 + 3) % 3 then
                    j2 = {
                        train = { "TrainUpgrade1", "TrainUpgrade2" },
                        cash = { "CashUpgrade1" },
                        damage = { "DamageUpgrade1" },
                        health = { "HealthUpgrade1" }
                    }
                    j0 = fn1038
                    jT = fn707
                    jE = fn1267
                else
                    jE = "cash"
                    jT = fn1038
                    j0 = fn707
                    j2 = fn1267
                end
                sv_12 = (sv_12 + 2) % 60
            end
        elseif j8 <= 11 then
            if (sv_12 * 2 + 5) * 10 % 3 == ((sv_12 * 2 + 5) * 10 + 4) % 3 then
                jQ = fn1924
                jY = fn507
                jr = fn1671
            else
                jY = fn1924
                jr = fn507
                jQ = fn1671
            end
            sv_12 = (sv_12 + 17) % 60
        else
            if (sv_12 * 2 + 3) * 13 % 3 == ((sv_12 * 2 + 3) * 13 + 3) % 3 then
                ji = worker4
                task.spawn(function()
                    while true do
                        if ju.autoUpgradeBase then
                            for k in pairs(jk) do
                                local m3 = k
                                pcall(function()
                                    jJ.BuyUpgrade(jJ, m3)
                                end)
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoUnlockWorld then
                            local m4 = ji()
                            local m5 = j0()
                            if m4 and m5 and m5.CurrentBiome ~= m4 then
                                pcall(function()
                                    jz.ChangeBiome(jz, m4)
                                end)
                            end
                        end
                        task.wait(8)
                    end
                end)
                task.spawn(worker3)
                task.spawn(function()
                    while true do
                        if ju.autoBuyAura then
                            local nb = jE()
                            if nb then
                                pcall(function()
                                    jL.BuySkin(jL, nb)
                                end)
                            end
                        end
                        task.wait(2)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoEquipAura then
                            local ng = j0()
                            local nf = jY()
                            if nf and ng and ng.EquippedPlayerSkin ~= nf then
                                pcall(function()
                                    jL.EquipSkin(jL, nf)
                                end)
                            end
                        end
                        task.wait(3)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoBuyDummy then
                            local nl = jr()
                            if nl then
                                pcall(function()
                                    jK.BuyTrainTool(jK, nl)
                                end)
                            end
                        end
                        task.wait(2)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoEquipDummy then
                            local nq = j0()
                            local np = jQ()
                            if np and nq and nq.EquippedTrainTool ~= np then
                                pcall(function()
                                    jK.EquipTrainTool(jK, np)
                                end)
                            end
                        end
                        task.wait(3)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoUpgradeBrainrots then
                            local nv = j0()
                            if nv and nv.Containers then
                                for k, v in pairs(nv.Containers) do
                                    local nC = k
                                    local brainrot = v.brainrot
                                    if brainrot and (brainrot.level or 0) < ju.brainrotTarget then
                                        pcall(function()
                                            jD.UpgradeBrainrot(jD, nC)
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoPlaceBest then
                            pcall(function()
                                jD.PlaceBest(jD)
                            end)
                        end
                        task.wait(ju.placeInterval)
                    end
                end)
                task.spawn(function()
                    while true do
                        local nG = {}
                        if ju.autoBuyTrainUpgrade then
                            nG[1] = "train"
                        end
                        if ju.autoBuyCashUpgrade then
                            nG[#nG + 1] = "cash"
                        end
                        if ju.autoBuyDamageUpgrade then
                            nG[#nG + 1] = "damage"
                        end
                        if ju.autoBuyHealthUpgrade then
                            nG[#nG + 1] = "health"
                        end
                        for i, v in ipairs(nG) do
                            for i, v in ipairs(j2[v]) do
                                local nT = v
                                pcall(function()
                                    jJ.BuyUpgrade(jJ, nT)
                                end)
                            end
                        end
                        task.wait(1)
                    end
                end)
                jU = game:GetService("CollectionService")
                task.spawn(function()
                    while true do
                        if ju.autoCollectCash and firetouchinterest then
                            local Character = jX.Character
                            local nX = Character and Character:FindFirstChild("HumanoidRootPart")
                            local nV = nX
                            if nV then
                                for i, v in ipairs(jU:GetTagged("Container")) do
                                    if v:GetAttribute("OwnerId") == jX.UserId then
                                        local Collection = v:FindFirstChild("Collection")
                                        local nX_2 = Collection and Collection:FindFirstChild("CollectionPad")
                                        local nU = nX_2
                                        if nU then
                                            pcall(function()
                                                firetouchinterest(nV, nU, 0)
                                                firetouchinterest(nV, nU, 1)
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                je = fn684
                task.spawn(function()
                    while true do
                        local od = ju.autoKillGlobalBoss and jX:GetAttribute("InGlobalBossWorld")
                        if od then
                            local od_1 = je()
                            local Character = jX.Character
                            local of = Character and Character:FindFirstChildOfClass("Humanoid")
                            local og = Character
                            if og then
                                og = Character:FindFirstChild("HumanoidRootPart")
                            end
                            local oe_1 = od_1
                            local of_1 = og
                            if oe_1 then
                                oe_1 = od_1.PrimaryPart
                            end
                            if oe_1 then
                                oe_1 = of
                            end
                            if oe_1 then
                                oe_1 = of_1
                            end
                            if oe_1 then
                                of.MoveTo(of, od_1.PrimaryPart.Position, od_1.PrimaryPart)
                                pcall(function()
                                    jb.AttackBoss(jb)
                                end)
                            end
                        end
                        task.wait(0.12)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoOpenBossChest then
                            pcall(function()
                                jd.Claim(jd)
                            end)
                            local oj = j0()
                            if oj and oj.StarBlocksInventory then
                                for k, v in pairs(oj.StarBlocksInventory) do
                                    local oq = k
                                    if (v or 0) > 0 then
                                        pcall(function()
                                            ja.Open(ja, oq)
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(2)
                    end
                end)
                task.spawn(function()
                    while true do
                        local ou = ju.autoLeaveGlobalBoss and jX:GetAttribute("InGlobalBossWorld")
                        if ou then
                            pcall(function()
                                jd.End(jd)
                            end)
                        end
                        task.wait(3)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoUsePotion then
                            local ow = j0()
                            if ow and ow.PotionInventory then
                                for k, v in pairs(ow.PotionInventory) do
                                    local oF = k
                                    local ox_1 = fn1198(type(v), 6, 472614556) and v > 0
                                    local oy = ox_1 or v == true
                                    local oy_1 = fn1198(ju.potionFilter, 3, 195609843) or oF == ju.potionFilter
                                    local oy_2 = ow.ActivePotions and ow.ActivePotions[oF]
                                    local oA = oy
                                    if oA then
                                        oA = oy_1
                                    end
                                    if oA then
                                        oA = not oy_2
                                    end
                                    if oA then
                                        pcall(function()
                                            i8.UsePotion(i8, oF)
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(2)
                    end
                end)
                jc = fn418
            else
                jc = worker4
                task.spawn(worker4)
                task.spawn(function()
                    while true do
                        if ju.autoUpgradeBase then
                            for k in pairs(jk) do
                                local m3 = k
                                pcall(function()
                                    jJ.BuyUpgrade(jJ, m3)
                                end)
                            end
                        end
                        task.wait(1)
                    end
                end)
                kd = task.spawn
                kd(task[nil])
                task.spawn(worker3)
                task.spawn(task[nil])
                worker2 = function()
                    while true do
                        if ju.autoBuyDummy then
                            local nl = jr()
                            if nl then
                                pcall(function()
                                    jK.BuyTrainTool(jK, nl)
                                end)
                            end
                        end
                        task.wait(2)
                    end
                end
                task.spawn(function()
                    while true do
                        if ju.autoBuyAura then
                            local nb = jE()
                            if nb then
                                pcall(function()
                                    jL.BuySkin(jL, nb)
                                end)
                            end
                        end
                        task.wait(2)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoUnlockWorld then
                            local m4 = ji()
                            local m5 = j0()
                            if m4 and m5 and m5.CurrentBiome ~= m4 then
                                pcall(function()
                                    jz.ChangeBiome(jz, m4)
                                end)
                            end
                        end
                        task.wait(8)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoUpgradeBrainrots then
                            local nv = j0()
                            if nv and nv.Containers then
                                for k, v in pairs(nv.Containers) do
                                    local nC = k
                                    local brainrot = v.brainrot
                                    if brainrot and (brainrot.level or 0) < ju.brainrotTarget then
                                        pcall(function()
                                            jD.UpgradeBrainrot(jD, nC)
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(task[nil])
                task.spawn(task[nil])
                ji = game:GetService(task[nil])
                task.spawn(worker2)
                jU = fn684
                task.spawn(function()
                    while true do
                        if ju.autoCollectCash and firetouchinterest then
                            local Character = jX.Character
                            local nX = Character and Character:FindFirstChild("HumanoidRootPart")
                            local nV = nX
                            if nV then
                                for i, v in ipairs(jU:GetTagged("Container")) do
                                    if v:GetAttribute("OwnerId") == jX.UserId then
                                        local Collection = v:FindFirstChild("Collection")
                                        local nX_1 = Collection and Collection:FindFirstChild("CollectionPad")
                                        local nU = nX_1
                                        if nU then
                                            pcall(function()
                                                firetouchinterest(nV, nU, 0)
                                                firetouchinterest(nV, nU, 1)
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                        task.wait(1)
                    end
                end)
                task.spawn(task)
                task.spawn(kd)
                task.spawn(task)
                je = fn418
            end
            sv_12 = (sv_12 + 2) % 60
        end
    elseif j8 <= 14 then
        if j8 <= 13 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_12, 16), string.byte(tostring(jT))), 27), 2394725881), 2471568515), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_12, 16), string.byte(tostring(jT))), 27), 1900241414), 766263690))), 2471568515), 766263690) == bit32.rrotate(bit32.bxor(bit32.lrotate(sv_12, 16), string.byte(tostring(jT))), 27) then
                jZ = fn1009
            else
                sv_5_6 = fn1009
            end
            sv_12 = (sv_12 + 32) % 60
        else
            j8 = (vector.create((sv_12 * 2 + 7) % 11 + 1, (sv_12 * 9 + 2) % 13 + 1, (sv_12 * 13 + 1) % 17 + 1))
            kd = (vector.create((sv_12 * 4 + 7) % 11 + 1, (sv_12 * 2 + 10) % 13 + 1, (sv_12 * 14 + 6) % 17 + 1))
            if vector.dot(j8, kd) * vector.dot(j8, kd) <= vector.dot(j8, j8) * vector.dot(kd, kd) then
                task.spawn(function()
                    while true do
                        if ju.autoSellBrainrots then
                            local oO = j0()
                            if oO and oO.Inventory then
                                local oN = {}
                                for k, v in pairs(oO.Inventory) do
                                    local oP_3 = v.innerEntity or v
                                    local oO_8 = v.locked
                                    if not oO_8 then
                                        local oQ_5 = fn1198(type(oP_3), 5, 248602996) and oP_3.locked
                                        oO_8 = oQ_5
                                    end
                                    local oQ_6 = oO_8
                                    local oO_9 = fn1198(type(oP_3), 5, 248602996) and oP_3.brainrotType and not oQ_6
                                    if oO_9 then
                                        local oO_10 = oP_3.mutation or "NORMAL"
                                        local oO_11 = jc(oP_3.brainrotType)
                                        local oP_4 = jZ(ju.sellMutationFilter, oO_10)
                                        local oQ_8 = jZ(ju.sellRarityFilter, oO_11)
                                        if oP_4 and oQ_8 then
                                            oN[#oN + 1] = k
                                        end
                                    end
                                end
                                if #oN > 0 then
                                    pcall(function()
                                        jh.SellBrainrots(jh, oN)
                                    end)
                                end
                            end
                        end
                        task.wait(2)
                    end
                end)
                task.spawn(function()
                    while true do
                        if ju.autoSellLuckyBlock then
                            local o_ = j0()
                            if o_ and o_.Inventory then
                                for k, v in pairs(o_.Inventory) do
                                    local o5 = k
                                    local o__1 = fn1198(v.itemType, 10, 828486328) and not v.locked
                                    if o__1 then
                                        pcall(function()
                                            jh.SellLuckyBlock(jh, o5)
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(3)
                    end
                end)
                sv_1 = "https://raw.githubusercontent.com/uhfork/Obsidian/main/"
            else
                task.spawn(function()
                    while true do
                        if ju.autoSellBrainrots then
                            local oO = j0()
                            if oO and oO.Inventory then
                                local oN = {}
                                for k, v in pairs(oO.Inventory) do
                                    local oP_1 = v.innerEntity or v
                                    local oO_2 = v.locked
                                    if not oO_2 then
                                        local oQ_1 = fn1198(type(oP_1), 5, 248602996) and oP_1.locked
                                        oO_2 = oQ_1
                                    end
                                    local oQ_2 = oO_2
                                    local oO_3 = fn1198(type(oP_1), 5, 248602996) and oP_1.brainrotType and not oQ_2
                                    if oO_3 then
                                        local oO_4 = oP_1.mutation or "NORMAL"
                                        local oO_5 = jc(oP_1.brainrotType)
                                        local oP_2 = jZ(ju.sellMutationFilter, oO_4)
                                        local oQ_4 = jZ(ju.sellRarityFilter, oO_5)
                                        if oP_2 and oQ_4 then
                                            oN[#oN + 1] = k
                                        end
                                    end
                                end
                                if #oN > 0 then
                                    pcall(function()
                                        jh.SellBrainrots(jh, oN)
                                    end)
                                end
                            end
                        end
                        task.wait(2)
                    end
                end)
                task.spawn(task)
                j9 = task
            end
            sv_12 = (sv_12 + 2) % 60
        end
    else
        if (sv_12 * 3 + 7) * 5 % 4 == ((sv_12 * 3 + 7) * 5 + 13) % 4 then
            sv_1 = loadstring(game:HttpGet(jn .. "Library.lua"))()
        else
            jn = loadstring(game:HttpGet(sv_1 .. "Library.lua"))()
        end
        sv_12 = (sv_12 + 32) % 60
    end
until fn209((sv_12 * 49 + 24) % 60, 242412205)
for k, v in pairs(ka) do
    local sv_5_7 = v:AddLeftGroupbox("Discord", "message-circle")
    sv_5_7.AddButton(sv_5_7, {
        Text = "Join Discord for Dupes/Keyless Scripts",
        Tooltip = "Copies the invite link to your clipboard.",
        Func = function()
            if setclipboard then
                setclipboard(jW)
            end
            jn.Notify(jn, { Title = "Discord", Description = "Invite copied to clipboard", Time = 4 })
        end
    })
end
j7, kd, j8, i9 = nil, nil, nil, nil
sv_7 = 12
repeat
    if (sv_7 * 1 + 0) % 2 + 1 <= 1 then
        local sv_5_9 = (vector.create((sv_7 * 6 + 7) % 11 + 1, (sv_7 * 9 + 3) % 13 + 1, (sv_7 * 15 + 2) % 17 + 1))
        worker2 = (vector.create((sv_7 * 1 + 7) % 11 + 1, (sv_7 * 3 + 7) % 13 + 1, (sv_7 * 1 + 17) % 17 + 1))
        if vector.dot(vector.cross(sv_5_9, worker2), (vector.cross(sv_5_9, worker2))) + vector.dot(sv_5_9, worker2) * vector.dot(sv_5_9, worker2) == vector.dot(sv_5_9, sv_5_9) * vector.dot(worker2, worker2) then
            local Main4 = ka.Main
            j7 = Main4:AddLeftGroupbox("Combat", "sword")
            j7.AddToggle(j7, "AutoFarm", {
                Text = "Auto Farm",
                Default = false,
                Tooltip = "Starts a fight and enables in-game Auto Fight",
                Callback = fn1738
            })
            j7.AddSlider(j7, "AttackSpeed", {
                Text = "Attack Speed",
                Default = 1,
                Min = 1,
                Max = 2,
                Rounding = 2,
                Suffix = "x",
                Callback = fn257
            })
            local Main3 = ka.Main
            sv_12 = Main3:AddLeftGroupbox("Training", "dumbbell")
            local tL = sv_12
            tL.AddToggle(tL, "AutoTrain", {
                Text = "Auto Train",
                Default = false,
                Callback = function(dH)
                    ju.autoTrain = dH
                end
            })
            local tM = sv_12
            tM.AddSlider(tM, "TrainDelay", {
                Text = "Train Attempt Delay",
                Default = 0.3,
                Min = 0.1,
                Max = 1,
                Rounding = 2,
                Suffix = "s",
                Callback = fn1078
            })
            local Main2 = ka.Main
            sv_1 = Main2:AddRightGroupbox("Rewards", "gift")
            local tN = sv_1
            tN.AddToggle(tN, "AutoBonus", { Text = "Auto Claim Train Bonus", Default = false, Callback = fn391 })
            local tO = sv_1
            tO.AddToggle(tO, "AutoTimeReward", {
                Text = "Auto Claim Time Reward",
                Default = false,
                Callback = function(dL)
                    ju.autoTimeReward = dL
                end
            })
            local tP = sv_1
            tP.AddToggle(tP, "AutoCollectCash", {
                Text = "Auto Collect Brainrot Money",
                Default = false,
                Callback = function(dM)
                    ju.autoCollectCash = dM
                end
            })
            local Main = ka.Main
            kd = Main:AddRightGroupbox("Reset", "rotate-ccw")
        else
            local sv_5_10 = j7.Main
            sv_1 = sv_5_10:AddLeftGroupbox("Combat", sv_5_10)
            kg = fn1738
            buffer.readu8(i5, 16423)
            local sM = sv_1
            sM.AddToggle(sM, "Auto Farm", {
                Tooltip = "Starts a fight and enables in-game Auto Fight",
                Default = false,
                Callback = kg,
                Text = "Auto Farm"
            })
            local sN = sv_1
            sN.AddSlider(sN, 1, {
                Max = 2,
                Default = 1,
                Rounding = 2,
                Suffix = "x",
                Min = 1,
                Callback = fn257,
                Text = "Attack Speed"
            })
            kk = j7.Main
            kd = kk:AddLeftGroupbox("x", "AutoFarm")
            kd.AddToggle(kd, "Max", "Callback")
            kd.AddSlider(kd, "Training", "Default")
            kj = j7.Main
            ka = kj:AddRightGroupbox(2, "gift")
            kj = fn391
            ka.AddToggle(ka, kg, fn1078)
            ka.AddToggle(ka, "Rewards", "Starts a fight and enables in-game Auto Fight")
            ka.AddToggle(ka, "Auto Claim Train Bonus", "Callback")
            local sv_5_12 = j7.Main
            sv_5_12.AddRightGroupbox(sv_5_12, "Default", kj)
        end
        sv_7 = (sv_7 + 15) % 16
    else
        if sv_7 * 55110737 + 7 + 6 >= sv_7 * 55110737 + 7 + 6 + 2 then
            i9 = { "Off" }
            j8 = "Off"
        else
            j8 = { "Off" }
            i9 = {}
        end
        sv_7 = (sv_7 + 3) % 16
    end
until fn209((sv_7 * 7 + 1) % 16, 561233079)
local sv_5_13 = {}
for k, v in pairs(BossConfig.CONFIG) do
    if not v.globalBoss then
        sv_5_13[#sv_5_13 + 1] = k
    end
end
sv_1 = 3
repeat
    if (not sv_1 or not sv_1 or (sv_1 or sv_1) or sv_1 and not sv_1 and (not sv_1 and not sv_1)) and ((sv_1 or sv_1) and (sv_1 or sv_1) and (sv_1 and sv_1 and (sv_1 or not sv_1))) and not ((not sv_1 or not sv_1 or (sv_1 or sv_1) or sv_1 and not sv_1 and (not sv_1 and not sv_1)) and ((sv_1 or sv_1) and (sv_1 or sv_1) and (sv_1 and sv_1 and (sv_1 or not sv_1)))) then
        table.sort(sv_5_13, table.sort)
    else
        table.sort(sv_5_13, function(dT, dU)
            local pa = tonumber(dT:match("%d+")) or 0
            local pb = tonumber(dU:match("%d+")) or 0
            return pa < pb
        end)
    end
    sv_1 = (sv_1 + 2) % 4
until fn209((sv_1 * 3 + 0) % 4, 561233079)
for i, v in ipairs(sv_5_13) do
    local sv_5_14 = tonumber(v:match("%d+"))
    sv_1 = sv_5_14 .. " | " .. tostring(BossConfig.CONFIG[v].name)
    j8[#j8 + 1] = sv_1
    i9[sv_1] = v
end
sv_12, worker2, sv_7, kh, kg, kf_9 = nil, nil, nil, nil, nil, nil
j7 = 10
repeat
    sv_1 = (j7 * 1 + 2) % 3 + 1
    if sv_1 <= 2 then
        if sv_1 <= 1 then
            sv_1 = {
                "khbl",
                "rtudalbzx",
                "wdvmz",
                "cghzwolwb",
                "yuadutxoth",
                "smwzgeb",
                "hbipjcucygn",
                "nqnytygyg",
                "pxjrgbuj",
                "dvuy",
                "iqqhgx"
            }
            ki = sv_1[j7 % 11 + 1]
            kj = (ki:reverse())
            sv_1 = ki:len()
            kk = (kj:rep(sv_1))
            if sv_1 >= kk:len() then
                buffer.readu8(i5, 16436)
                j8.AddDropdown(j8, {
                    Default = 1,
                    Searchable = true,
                    Callback = fn2024,
                    Values = ka,
                    Multi = false,
                    Text = "Reset After Boss"
                }, "Callback")
                ki = sv_12.Auto
                kd = ki:AddLeftGroupbox("Searchable", false)
            else
                kd.AddDropdown(kd, "ResetBoss", {
                    Text = "Reset After Boss",
                    Values = j8,
                    Default = 1,
                    Multi = false,
                    Searchable = true,
                    Callback = fn2024
                })
                kj = ka.Auto
                sv_12 = kj:AddLeftGroupbox("Progression", "trending-up")
            end
            j7 = (j7 + 1) % 12
        else
            if ((kg or kf_9) and (kg and not kh) and ((worker2 or not worker2) and (not kg or worker2)) or ((not worker2 or not kg) and (worker2 or not kf_9) or kf_9 and kf_9 and (not kg and kf_9))) and ((not kh or not kf_9 or (worker2 or not kh)) and (worker2 and not worker2 or not kh and not kf_9) or (not kg or kg or worker2 and kg or (kh or not kg) and (kf_9 and not worker2))) or not (((kg or kf_9) and (kg and not kh) and ((worker2 or not worker2) and (not kg or worker2)) or ((not worker2 or not kg) and (worker2 or not kf_9) or kf_9 and kf_9 and (not kg and kf_9))) and ((not kh or not kf_9 or (worker2 or not kh)) and (worker2 and not worker2 or not kh and not kf_9) or (not kg or kg or worker2 and kg or (kh or not kg) and (kf_9 and not worker2)))) then
                local tY = sv_12
                tY.AddToggle(tY, "AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false, Callback = fn934 })
                local tZ = sv_12
                tZ.AddToggle(tZ, "AutoUnlockWorld", { Text = "Auto Unlock Best World", Default = false, Callback = fn780 })
                local t_ = sv_12
                t_.AddToggle(t_, "AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = fn63 })
                kj = ka.Auto
                local sv_5_15 = kj:AddLeftGroupbox("Auras", "sparkles")
                sv_5_15.AddToggle(sv_5_15, "AutoBuyAura", { Text = "Auto Buy Best Affordable Aura", Default = false, Callback = fn792 })
                sv_5_15.AddToggle(sv_5_15, "AutoEquipAura", { Text = "Auto Equip Best Owned Aura", Default = false, Callback = fn1807 })
                kj = ka.Auto
                worker2 = kj:AddRightGroupbox("Dummies", "dumbbell")
                worker2.AddToggle(worker2, "AutoBuyDummy", {
                    Text = "Auto Buy Best Affordable Dummy",
                    Default = false,
                    Callback = function(d9)
                        ju.autoBuyDummy = d9
                    end
                })
                worker2.AddToggle(worker2, "AutoEquipDummy", {
                    Text = "Auto Equip Best Owned Dummy",
                    Default = false,
                    Callback = function(ea)
                        ju.autoEquipDummy = ea
                    end
                })
                kj = ka.Auto
                sv_7 = kj:AddRightGroupbox("Brainrots", "brain")
                local t2 = sv_7
                t2.AddToggle(t2, "AutoUpgradeBrainrots", {
                    Text = "Auto Upgrade Owned Brainrots",
                    Default = false,
                    Callback = function(ec)
                        ju.autoUpgradeBrainrots = ec
                    end
                })
                local t3 = sv_7
                t3.AddSlider(t3, "BrainrotTarget", {
                    Text = "Brainrot Target Level",
                    Default = 0,
                    Min = 0,
                    Max = 50,
                    Rounding = 0,
                    Callback = function(ed)
                        ju.brainrotTarget = ed
                    end
                })
                local t4 = sv_7
                t4.AddToggle(t4, "AutoPlaceBest", { Text = "Auto Place Best Brainrots", Default = false, Callback = fn2059 })
                local t5 = sv_7
                t5.AddSlider(t5, "PlaceInterval", {
                    Text = "Best Brainrot Interval",
                    Default = 30,
                    Min = 1,
                    Max = 120,
                    Rounding = 0,
                    Suffix = "s",
                    Callback = function(ef)
                        ju.placeInterval = ef
                    end
                })
                kj = ka.Auto
                kh = kj:AddLeftGroupbox("Sell", "dollar-sign")
                kh.AddToggle(kh, "AutoSellBrainrots", {
                    Text = "Auto Sell Brainrots",
                    Default = false,
                    Callback = function(eh)
                        ju.autoSellBrainrots = eh
                    end
                })
                kh.AddToggle(kh, "AutoSellLuckyBlock", { Text = "Auto Sell Lucky Block", Default = false, Callback = fn2034 })
                kg = { "Any", "NORMAL", "GOLD", "DIAMOND", "CANDY", "VOID" }
            else
                local tx = sv_7
                tx.AddToggle(tx, { Default = false, Text = "Auto Upgrade Base", Callback = fn934 }, tx)
                kk = fn780
                local ty = sv_7
                ty.AddToggle(ty, "Callback", "Text")
                local tz = sv_7
                tz.AddToggle(tz, "Auto Unlock Best World", fn63)
                local kr = sv_12.Auto
                worker2 = kr:AddLeftGroupbox("Callback", kk)
                worker2.AddToggle(worker2, fn792, "Default")
                kn = fn1807
                worker2.AddToggle(worker2, "AutoEquipAura", "Auto Rebirth")
                kr = sv_12.Auto
                kh = kr:AddRightGroupbox("dumbbell", "Text")
                kh.AddToggle(kh, "sparkles", kn)
                kh.AddToggle(kh, "Callback", "Auras")
                ki = sv_12.Auto
                ka = ki:AddRightGroupbox("AutoUpgradeBase", "AutoEquipDummy")
                ka.AddToggle(ka, "AutoRebirth", false)
                ka.AddSlider(ka, false, "Callback")
                local kl = { Callback = fn2059, Default = false, Text = "Auto Place Best Brainrots" }
                ka.AddToggle(ka, "Default", ka)
                ka.AddSlider(ka, fn2059, 0)
                kj = sv_12.Auto
                kg = kj:AddLeftGroupbox("Callback", "Max")
                kg.AddToggle(kg, "Auto Buy Best Affordable Dummy", kl)
                kg.AddToggle(kg, fn2034, false)
            end
            j7 = (j7 + 1) % 12
        end
    else
        sv_1 = { "sryvx", "yckn", "kaqsec", "tree", "idsuxlsg", "bhgqezgvulb", "xeytgxkeu", "shbrnz", "zrwsqc" }
        if sv_1[(j7 * 20 + 63) % 9 + 1] <= sv_1[(j7 * 20 + 63) % 9 + 1] then
            kf_9 = { "Any" }
        end
        j7 = (j7 + 1) % 12
    end
until fn209((j7 * 5 + 9) % 12, 578005792)
sv_1 = {}
for k, v in pairs(jg) do
    local sv_5_16 = fn1198(type(v), 5, 248602996) and v.rarity and not sv_1[v.rarity]
    if sv_5_16 then
        sv_1[v.rarity] = true
        kf_9[#kf_9 + 1] = v.rarity
    end
end
local sv_5_17 = 0
repeat
    if sv_5_17 * 90262105 + 6 + 4 <= sv_5_17 * 90262105 + 6 + 4 + 3 then
        table.sort(kf_9, function(ep, eq)
            if fn1198(ep, 3, 195609843) then
                return true
            elseif fn1198(eq, 3, 195609843) then
                return false
            else
                return ep < eq
            end
        end)
    else
        table.sort(kf_9, table)
    end
    sv_5_17 = (sv_5_17 + 1) % 4
until fn209((sv_5_17 * 1 + 2) % 4, 561233079)
sv_7, j7, j8, j_ = nil, nil, nil, nil
sv_1 = 6
repeat
    if (sv_1 * 1 + 0) % 2 + 1 <= 1 then
        local sv_5_19 = (vector.create((sv_1 * 4 + 2) % 11 + 1, (sv_1 * 4 + 12) % 13 + 1, (sv_1 * 13 + 5) % 17 + 1))
        kd = (vector.create((sv_1 * 4 + 2) % 11 + 1, (sv_1 * 6 + 5) % 13 + 1, (sv_1 * 9 + 8) % 17 + 1))
        worker2 = (vector.create((sv_1 * 2 + 3) % 11 + 1, (sv_1 * 10 + 9) % 13 + 1, (sv_1 * 3 + 10) % 17 + 1))
        ki = (vector.create((sv_1 * 1 + 7) % 5 + 1, (sv_1 * 1 + 4) % 7 + 1, (sv_1 * 5 + 1) % 9 + 1))
        if vector.dot(vector.cross(sv_5_19, (vector.cross(kd, worker2))), ki) == vector.dot(kd * vector.dot(sv_5_19, worker2) - worker2 * vector.dot(sv_5_19, kd), ki) then
            kh.AddDropdown(kh, "SellMutationFilter", { Text = "Sell Mutation Filter", Values = kg, Default = { "Any" }, Multi = true, Callback = fn388 })
            kh.AddDropdown(kh, "SellRarityFilter", {
                Text = "Sell Rarity Filter",
                Values = kf_9,
                Default = { "Any" },
                Multi = true,
                Searchable = true,
                Callback = fn2058
            })
            worker2 = ka.Auto
            sv_7 = worker2:AddLeftGroupbox("Gem Upgrades", "gem")
            local sx = sv_7
            sx.AddToggle(sx, "AutoBuyTrainUpgrade", { Text = "Auto Buy Train Upgrade", Default = false, Callback = fn1760 })
            local sy = sv_7
            sy.AddToggle(sy, "AutoBuyCashUpgrade", {
                Text = "Auto Buy Cash Upgrade",
                Default = false,
                Callback = function(ev)
                    ju.autoBuyCashUpgrade = ev
                end
            })
            local sz = sv_7
            sz.AddToggle(sz, "AutoBuyDamageUpgrade", { Text = "Auto Buy Damage Upgrade", Default = false, Callback = fn1954 })
            local sA = sv_7
            sA.AddToggle(sA, "AutoBuyHealthUpgrade", { Text = "Auto Buy Health Upgrade", Default = false, Callback = fn1452 })
            worker2 = ka.Auto
            sv_12 = worker2:AddRightGroupbox("Global Bosses", "skull")
            local sB = sv_12
            sB.AddToggle(sB, "AutoKillGlobalBoss", {
                Text = "Auto Kill Global Boss",
                Default = false,
                Callback = function(ez)
                    ju.autoKillGlobalBoss = ez
                end
            })
            local sC = sv_12
            sC.AddToggle(sC, "AutoOpenBossChest", {
                Text = "Auto Open Boss Chest",
                Default = false,
                Callback = function(eA)
                    ju.autoOpenBossChest = eA
                end
            })
            local sD = sv_12
            sD.AddToggle(sD, "AutoLeaveGlobalBoss", {
                Text = "Auto Leave Global Bosses",
                Default = false,
                Callback = function(eB)
                    ju.autoLeaveGlobalBoss = eB
                end
            })
            worker2 = ka.Auto
            j7 = worker2:AddRightGroupbox("Potions", "flask-conical")
            j7.AddToggle(j7, "AutoUsePotion", {
                Text = "Auto Use Potion",
                Default = false,
                Callback = function(eD)
                    ju.autoUsePotion = eD
                end
            })
            j8 = { "Any" }
        else
            local sv_5_20 = { "Any" }
            kd = fn388
            kg.AddDropdown(kg, "Multi", "Callback")
            ki = { "Any" }
            kk = {
                Text = "Sell Rarity Filter",
                Searchable = true,
                Values = sv_7,
                Default = ki,
                Callback = fn2058,
                Multi = true
            }
            kg.AddDropdown(kg, fn2058, true)
            local Auto = j8.Auto
            ka = Auto:AddLeftGroupbox("Values", kd)
            ka.AddToggle(ka, "Default", "gem")
            ka.AddToggle(ka, j8, fn1760)
            buffer.readu8(i5, 16425)
            ka.AddToggle(ka, { Callback = fn1954, Text = "Auto Buy Damage Upgrade", Default = false }, "Auto Buy Damage Upgrade")
            kn = { Default = false, Text = "Auto Buy Health Upgrade", Callback = fn1452 }
            ka.AddToggle(ka, "AutoBuyHealthUpgrade", kk)
            kk = j8.Auto
            kh = kk:AddRightGroupbox(ka, "Auto Buy Health Upgrade")
            kh.AddToggle(kh, "Text", sv_5_20)
            kh.AddToggle(kh, "Default", true)
            kh.AddToggle(kh, kh, "Callback")
            worker2 = j8.Auto
            sv_12 = worker2:AddRightGroupbox(kn, "AutoOpenBossChest")
            local tf = sv_12
            tf.AddToggle(tf, "Multi", "flask-conical")
            j7 = ki
        end
        sv_1 = (sv_1 + 1) % 8
    else
        if sv_1 * 112889285 + 13 + 2 >= sv_1 * 112889285 + 13 + 2 + 1 then
        else
            j_ = {}
        end
        sv_1 = (sv_1 + 5) % 8
    end
until fn209((sv_1 * 1 + 2) % 8, 510804476)
for k, v in pairs(j9) do
    if fn1198(type(v), 5, 248602996) then
        local sv_5_21 = v.name or k
        sv_1 = tostring(sv_5_21)
        j8[#j8 + 1] = sv_1
        j_[sv_1] = k
    end
end
jG, sv_12 = nil, nil
local sv_5_22 = 13
repeat
    sv_1 = (sv_5_22 * 1 + 0) % 2 + 1
    if sv_1 <= 1 then
        sv_1 = (vector.create((sv_5_22 * 4 + 5) % 11 + 1, (sv_5_22 * 5 + 9) % 13 + 1, (sv_5_22 * 3 + 16) % 17 + 1))
        if fn209(vector.dot(vector.floor(sv_1) + vector.ceil(sv_1 * -1), vector.floor(sv_1) + vector.ceil(sv_1 * -1)), 544454170) then
            sv_12 = http_request
        else
            jG = http_request
        end
        sv_5_22 = (sv_5_22 + 5) % 16
    else
        sv_1 = {
            "gpcb",
            "vdrwav",
            "vkyazsabdf",
            "odhuyfikdtpz",
            "eudxbcsppazw",
            "juuhqozmdhiz",
            "aoxtixkjtyxv",
            "xbyhyabmsj",
            "djmfojlmy",
            "lnqspz",
            "lpskovoopmm",
            "anbiqqsk",
            "zwxjoeh",
            "sailczcxyadp"
        }
        if sv_1[(sv_5_22 * 13 + 93) % 14 + 1] < sv_1[(sv_5_22 * 13 + 93) % 14 + 1] then
            j8.AddDropdown(j8, j8, false)
            j7 = "https://discord.com/api/webhooks/1520528533791703184/sG6qAqt31YTOBoduDbVcKURG5jBUxnNbWEhKLp02J9LCVw_ztSUjezEU1Q0E7g-bglfR"
        else
            j7.AddDropdown(j7, "PotionFilter", {
                Text = "Potions To Use",
                Values = j8,
                Default = 1,
                Multi = false,
                Callback = function(eK)
                    local pe = j_[eK] or "Any"
                    ju.potionFilter = pe
                end
            })
            jG = "https://discord.com/api/webhooks/1520528533791703184/sG6qAqt31YTOBoduDbVcKURG5jBUxnNbWEhKLp02J9LCVw_ztSUjezEU1Q0E7g-bglfR"
        end
        sv_5_22 = (sv_5_22 + 13) % 16
    end
until fn209((sv_5_22 * 11 + 13) % 16, 578005792)
if not sv_12 then
    sv_12 = request
end
if not sv_12 then
    sv_12 = syn and syn.request
end
if not sv_12 then
    sv_12 = fluxus and fluxus.request
end
js, sv_7, sv_1, j9, jm, j8 = nil, nil, nil, nil, nil, nil
j7 = 2
repeat
    local sv_5_25 = (j7 * 5 + 4) % 7 + 1
    if sv_5_25 <= 4 then
        if sv_5_25 <= 2 then
            if sv_5_25 <= 1 then
                kd = {
                    "ayzdk",
                    "mdnext",
                    "zwavctiwvrp",
                    "mfpr",
                    "ohhzygjqpub",
                    "pqrw",
                    "ajjwb",
                    "drbboh",
                    "fepma",
                    "cmuyz",
                    "gvpwzeflb",
                    "stfwvj",
                    "xfxotrbrmfy",
                    "recpfwwhi",
                    "bypmpt"
                }
                if kd[(j7 * 21 + 64) % 15 + 1] < kd[(j7 * 21 + 64) % 15 + 1] then
                    sv_12 = js
                else
                    js = sv_12
                end
                j7 = (j7 + 24) % 28
            else
                kd = { "iubnq", "tuwxkc", "ykxvdmsgu", "nbxberwa", "yksdvysdkf", "uhjbk", "gpfij", "bpwkjzuvpax" }
                worker2 = kd[j7 % 8 + 1]
                kd = worker2:len()
                local kf_10 = (worker2:gsub("(.)", "%1%1", j7 % 3 % 2 + 1))
                if kd >= kf_10:len() then
                    js = fn2107
                else
                    jm = fn2107
                end
                j7 = (j7 + 3) % 28
            end
        elseif sv_5_25 <= 3 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(j7, 4), string.byte(tostring(js))), 11), 4242517612), 28), 3486382822) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(j7, 4), string.byte(tostring(js))), 11), 28) then
                j8 = function()
                    local textLabel, frame2, pt, screenGui, textBox
                    local pw = gethui and gethui()
                    local px = pw or game:GetService("CoreGui")
                    local OuroborosSuggestion = px:FindFirstChild("OuroborosSuggestion")
                    if OuroborosSuggestion then
                        OuroborosSuggestion.Destroy(OuroborosSuggestion)
                    end
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosSuggestion"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local pw_6 = gethui and gethui()
                    local px_10 = pw_6 or game:GetService("CoreGui")
                    screenGui.Parent = px_10
                    local textButton2 = Instance.new("TextButton")
                    textButton2.Size = UDim2.fromScale(1, 1)
                    textButton2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    textButton2.BackgroundTransparency = 0.5
                    textButton2.AutoButtonColor = false
                    textButton2.Text = ""
                    textButton2.Parent = screenGui
                    frame2 = Instance.new("Frame")
                    frame2.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame2.Position = UDim2.fromScale(0.5, 0.5)
                    frame2.Size = UDim2.fromOffset(420, 280)
                    frame2.BackgroundColor3 = Color3.fromRGB(18, 16, 24)
                    frame2.BorderSizePixel = 0
                    frame2.Parent = screenGui
                    local uIStroke3 = Instance.new("UIStroke")
                    uIStroke3.Color = Color3.fromRGB(124, 77, 255)
                    uIStroke3.Thickness = 1
                    uIStroke3.Transparency = 0.45
                    uIStroke3.Parent = frame2
                    local uIPadding2 = Instance.new("UIPadding")
                    uIPadding2.PaddingTop = UDim.new(0, 16)
                    uIPadding2.PaddingBottom = UDim.new(0, 16)
                    uIPadding2.PaddingLeft = UDim.new(0, 16)
                    uIPadding2.PaddingRight = UDim.new(0, 16)
                    uIPadding2.Parent = frame2
                    local textLabel2 = Instance.new("TextLabel")
                    textLabel2.Size = UDim2.new(1, 0, 0, 24)
                    textLabel2.BackgroundTransparency = 1
                    textLabel2.Font = Enum.Font.GothamBold
                    textLabel2.Text = "Send a Suggestion"
                    textLabel2.TextSize = 18
                    textLabel2.TextColor3 = Color3.fromRGB(237, 233, 254)
                    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel2.Parent = frame2
                    local frame = Instance.new("Frame")
                    frame.Position = UDim2.fromOffset(0, 36)
                    frame.Size = UDim2.new(1, 0, 1, -92)
                    frame.BackgroundColor3 = Color3.fromRGB(12, 11, 16)
                    frame.BorderSizePixel = 0
                    frame.Parent = frame2
                    local uIStroke2 = Instance.new("UIStroke")
                    uIStroke2.Color = Color3.fromRGB(56, 50, 74)
                    uIStroke2.Thickness = 1
                    uIStroke2.Transparency = 0.3
                    uIStroke2.Parent = frame
                    local uIPadding = Instance.new("UIPadding")
                    uIPadding.PaddingTop = UDim.new(0, 10)
                    uIPadding.PaddingBottom = UDim.new(0, 10)
                    uIPadding.PaddingLeft = UDim.new(0, 10)
                    uIPadding.PaddingRight = UDim.new(0, 10)
                    uIPadding.Parent = frame
                    textBox = Instance.new("TextBox")
                    textBox.Size = UDim2.fromScale(1, 1)
                    textBox.BackgroundTransparency = 1
                    textBox.Font = Enum.Font.Gotham
                    textBox.Text = ""
                    textBox.PlaceholderText = "Write your suggestion here..."
                    textBox.PlaceholderColor3 = Color3.fromRGB(108, 104, 126)
                    textBox.TextColor3 = Color3.fromRGB(228, 225, 238)
                    textBox.TextSize = 14
                    textBox.TextXAlignment = Enum.TextXAlignment.Left
                    textBox.TextYAlignment = Enum.TextYAlignment.Top
                    textBox.TextWrapped = true
                    textBox.ClearTextOnFocus = false
                    textBox.MultiLine = true
                    textBox.Parent = frame
                    textLabel = Instance.new("TextLabel")
                    textLabel.Position = UDim2.new(0, 0, 1, -40)
                    textLabel.Size = UDim2.new(1, -210, 0, 32)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.GothamMedium
                    textLabel.Text = ""
                    textLabel.TextSize = 12
                    textLabel.TextColor3 = Color3.fromRGB(150, 146, 168)
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextWrapped = true
                    textLabel.Parent = frame2
                    local function px_15(fi, fj, fk)
                        local textButton = Instance.new("TextButton")
                        textButton.AnchorPoint = Vector2.new(1, 1)
                        textButton.Position = UDim2.new(1, fj, 1, 0)
                        textButton.Size = UDim2.fromOffset(95, 32)
                        textButton.BackgroundColor3 = fk
                        textButton.Font = Enum.Font.GothamSemibold
                        textButton.Text = fi
                        textButton.TextSize = 14
                        textButton.TextColor3 = Color3.fromRGB(237, 233, 254)
                        textButton.AutoButtonColor = true
                        textButton.Parent = frame2
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(124, 77, 255)
                        uIStroke.Thickness = 1
                        uIStroke.Transparency = 0.55
                        uIStroke.Parent = textButton
                        return textButton
                    end
                    local py_5 = px_15("Cancel", -105, Color3.fromRGB(30, 27, 38))
                    pt = px_15("Send", 0, Color3.fromRGB(124, 77, 255))
                    local function px_16()
                        screenGui.Destroy(screenGui)
                    end
                    local MouseButton1Click3 = py_5.MouseButton1Click
                    MouseButton1Click3.Connect(MouseButton1Click3, px_16)
                    local function px_17()
                        screenGui.Destroy(screenGui)
                    end
                    local MouseButton1Click2 = textButton2.MouseButton1Click
                    MouseButton1Click2.Connect(MouseButton1Click2, px_17)
                    local function pw_8()
                        local Text
                        Text = textBox.Text
                        if fn209(#Text:gsub("%s", ""), 544454170) then
                            textLabel.Text = "Please write something first."
                            textLabel.TextColor3 = Color3.fromRGB(220, 120, 120)
                            return
                        end
                        pt.AutoButtonColor = false
                        textLabel.Text = "Sending..."
                        textLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
                        task.spawn(function()
                            local pn_2
                            local pm_2
                            pm_2, pn_2 = jm(Text)
                            if pm_2 then
                                textLabel.Text = "Thank you. Your suggestion was sent."
                                textLabel.TextColor3 = Color3.fromRGB(130, 200, 140)
                                task.wait(1.2)
                                screenGui.Destroy(screenGui)
                            else
                                textLabel.Text = "Failed to send: " .. tostring(pn_2)
                                textLabel.TextColor3 = Color3.fromRGB(220, 120, 120)
                                pt.AutoButtonColor = true
                            end
                        end)
                    end
                    local MouseButton1Click = pt.MouseButton1Click
                    MouseButton1Click.Connect(MouseButton1Click, pw_8)
                end
            else
                js = function()
                    local textLabel, frame2, pt, screenGui, textBox
                    local pw = gethui and gethui()
                    local px = pw or game:GetService("CoreGui")
                    local OuroborosSuggestion = px:FindFirstChild("OuroborosSuggestion")
                    if OuroborosSuggestion then
                        OuroborosSuggestion.Destroy(OuroborosSuggestion)
                    end
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosSuggestion"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local pw_2 = gethui and gethui()
                    local px_1 = pw_2 or game:GetService("CoreGui")
                    screenGui.Parent = px_1
                    local textButton2 = Instance.new("TextButton")
                    textButton2.Size = UDim2.fromScale(1, 1)
                    textButton2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    textButton2.BackgroundTransparency = 0.5
                    textButton2.AutoButtonColor = false
                    textButton2.Text = ""
                    textButton2.Parent = screenGui
                    frame2 = Instance.new("Frame")
                    frame2.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame2.Position = UDim2.fromScale(0.5, 0.5)
                    frame2.Size = UDim2.fromOffset(420, 280)
                    frame2.BackgroundColor3 = Color3.fromRGB(18, 16, 24)
                    frame2.BorderSizePixel = 0
                    frame2.Parent = screenGui
                    local uIStroke3 = Instance.new("UIStroke")
                    uIStroke3.Color = Color3.fromRGB(124, 77, 255)
                    uIStroke3.Thickness = 1
                    uIStroke3.Transparency = 0.45
                    uIStroke3.Parent = frame2
                    local uIPadding2 = Instance.new("UIPadding")
                    uIPadding2.PaddingTop = UDim.new(0, 16)
                    uIPadding2.PaddingBottom = UDim.new(0, 16)
                    uIPadding2.PaddingLeft = UDim.new(0, 16)
                    uIPadding2.PaddingRight = UDim.new(0, 16)
                    uIPadding2.Parent = frame2
                    local textLabel2 = Instance.new("TextLabel")
                    textLabel2.Size = UDim2.new(1, 0, 0, 24)
                    textLabel2.BackgroundTransparency = 1
                    textLabel2.Font = Enum.Font.GothamBold
                    textLabel2.Text = "Send a Suggestion"
                    textLabel2.TextSize = 18
                    textLabel2.TextColor3 = Color3.fromRGB(237, 233, 254)
                    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel2.Parent = frame2
                    local frame = Instance.new("Frame")
                    frame.Position = UDim2.fromOffset(0, 36)
                    frame.Size = UDim2.new(1, 0, 1, -92)
                    frame.BackgroundColor3 = Color3.fromRGB(12, 11, 16)
                    frame.BorderSizePixel = 0
                    frame.Parent = frame2
                    local uIStroke2 = Instance.new("UIStroke")
                    uIStroke2.Color = Color3.fromRGB(56, 50, 74)
                    uIStroke2.Thickness = 1
                    uIStroke2.Transparency = 0.3
                    uIStroke2.Parent = frame
                    local uIPadding = Instance.new("UIPadding")
                    uIPadding.PaddingTop = UDim.new(0, 10)
                    uIPadding.PaddingBottom = UDim.new(0, 10)
                    uIPadding.PaddingLeft = UDim.new(0, 10)
                    uIPadding.PaddingRight = UDim.new(0, 10)
                    uIPadding.Parent = frame
                    textBox = Instance.new("TextBox")
                    textBox.Size = UDim2.fromScale(1, 1)
                    textBox.BackgroundTransparency = 1
                    textBox.Font = Enum.Font.Gotham
                    textBox.Text = ""
                    textBox.PlaceholderText = "Write your suggestion here..."
                    textBox.PlaceholderColor3 = Color3.fromRGB(108, 104, 126)
                    textBox.TextColor3 = Color3.fromRGB(228, 225, 238)
                    textBox.TextSize = 14
                    textBox.TextXAlignment = Enum.TextXAlignment.Left
                    textBox.TextYAlignment = Enum.TextYAlignment.Top
                    textBox.TextWrapped = true
                    textBox.ClearTextOnFocus = false
                    textBox.MultiLine = true
                    textBox.Parent = frame
                    textLabel = Instance.new("TextLabel")
                    textLabel.Position = UDim2.new(0, 0, 1, -40)
                    textLabel.Size = UDim2.new(1, -210, 0, 32)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.GothamMedium
                    textLabel.Text = ""
                    textLabel.TextSize = 12
                    textLabel.TextColor3 = Color3.fromRGB(150, 146, 168)
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextWrapped = true
                    textLabel.Parent = frame2
                    local function px_6(fi, fj, fk)
                        local textButton = Instance.new("TextButton")
                        textButton.AnchorPoint = Vector2.new(1, 1)
                        textButton.Position = UDim2.new(1, fj, 1, 0)
                        textButton.Size = UDim2.fromOffset(95, 32)
                        textButton.BackgroundColor3 = fk
                        textButton.Font = Enum.Font.GothamSemibold
                        textButton.Text = fi
                        textButton.TextSize = 14
                        textButton.TextColor3 = Color3.fromRGB(237, 233, 254)
                        textButton.AutoButtonColor = true
                        textButton.Parent = frame2
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(124, 77, 255)
                        uIStroke.Thickness = 1
                        uIStroke.Transparency = 0.55
                        uIStroke.Parent = textButton
                        return textButton
                    end
                    local py_2 = px_6("Cancel", -105, Color3.fromRGB(30, 27, 38))
                    pt = px_6("Send", 0, Color3.fromRGB(124, 77, 255))
                    local function px_7()
                        screenGui.Destroy(screenGui)
                    end
                    local MouseButton1Click3 = py_2.MouseButton1Click
                    MouseButton1Click3.Connect(MouseButton1Click3, px_7)
                    local function px_8()
                        screenGui.Destroy(screenGui)
                    end
                    local MouseButton1Click2 = textButton2.MouseButton1Click
                    MouseButton1Click2.Connect(MouseButton1Click2, px_8)
                    local function pw_4()
                        local Text
                        Text = textBox.Text
                        if fn209(#Text:gsub("%s", ""), 544454170) then
                            textLabel.Text = "Please write something first."
                            textLabel.TextColor3 = Color3.fromRGB(220, 120, 120)
                            return
                        end
                        pt.AutoButtonColor = false
                        textLabel.Text = "Sending..."
                        textLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
                        task.spawn(function()
                            local pn_1
                            local pm_1
                            pm_1, pn_1 = jm(Text)
                            if pm_1 then
                                textLabel.Text = "Thank you. Your suggestion was sent."
                                textLabel.TextColor3 = Color3.fromRGB(130, 200, 140)
                                task.wait(1.2)
                                screenGui.Destroy(screenGui)
                            else
                                textLabel.Text = "Failed to send: " .. tostring(pn_1)
                                textLabel.TextColor3 = Color3.fromRGB(220, 120, 120)
                                pt.AutoButtonColor = true
                            end
                        end)
                    end
                    local MouseButton1Click = pt.MouseButton1Click
                    MouseButton1Click.Connect(MouseButton1Click, pw_4)
                end
            end
            j7 = (j7 + 17) % 28
        else
            if (j9 or j8 or (sv_1 or j9)) and (j7 or sv_1 or j8 and j9) or (j8 and not j8 and (not j7 or not j7) or (not j9 or j8 or (j8 or j7))) or not ((j9 or j8 or (sv_1 or j9)) and (j7 or sv_1 or j8 and j9) or (j8 and not j8 and (not j7 or not j7) or (not j9 or j8 or (j8 or j7)))) then
                local Suggestions = ka.Suggestions
                sv_7 = Suggestions:AddLeftGroupbox("Suggestions", "message-square")
            else
                kd = sv_7.Suggestions
                worker2 = kd
                ka = worker2:AddLeftGroupbox(sv_7, kd)
            end
            j7 = (j7 + 10) % 28
        end
    elseif sv_5_25 <= 6 then
        if sv_5_25 <= 5 then
            if j7 * 130142539 + 4 + 2 >= j7 * 130142539 + 4 + 2 + 4 then
                local sU = sv_1
                sU.AddButton(sU, "Func")
                kd = sv_7.Settings
                j8 = kd:AddLeftGroupbox(sU, "Send a Suggestion")
            else
                local sV = sv_7
                sV.AddButton(sV, { Text = "Send a Suggestion", Func = j8 })
                worker2 = ka.Settings
                sv_1 = worker2:AddLeftGroupbox("Misc", "wrench")
            end
            j7 = (j7 + 10) % 28
        else
            local sv_5_26 = (vector.create((j7 * 3 + 1) % 11 + 1, (j7 * 7 + 13) % 13 + 1, (j7 * 10 + 10) % 17 + 1))
            kd = (vector.create((j7 * 1 + 3) % 11 + 1, (j7 * 2 + 7) % 13 + 1, (j7 * 6 + 3) % 17 + 1))
            worker2 = (vector.create((j7 * 4 + 8) % 11 + 1, (j7 * 3 + 11) % 13 + 1, (j7 * 11 + 12) % 17 + 1))
            if vector.dot(vector.cross(sv_5_26, kd), worker2) == vector.dot(vector.cross(kd, worker2), sv_5_26) then
                local th = sv_1
                th.AddToggle(th, "AntiAfk", { Text = "Anti-AFK", Default = false, Callback = fn1230 })
                local ti = sv_1
                ti.AddButton(ti, {
                    Text = "Copy Discord Invite",
                    Func = function()
                        if setclipboard then
                            setclipboard(jW)
                        end
                        jn.Notify(jn, { Title = "Discord", Description = "Invite copied to clipboard", Time = 4 })
                    end
                })
                worker2 = ka.Settings
                j9 = worker2:AddRightGroupbox("Menu", "menu")
            else
                j9.AddToggle(j9, "Default", fn1230)
                j9.AddButton(j9, "AntiAfk")
                local sv_5_27 = sv_1.Settings
                ka = sv_5_27:AddRightGroupbox(j9, sv_1)
            end
            j7 = (j7 + 24) % 28
        end
    else
        if (j7 * 2 + 8) * 10 % 3 == ((j7 * 2 + 8) * 10 + 5) % 3 then
            worker2 = fn400
            local kf_12 = { Callback = worker2, Default = kc.KeybindFrame.Visible, Text = "Open Keybind Menu" }
            jn.AddToggle(jn, nil, jn)
            jn.AddDivider(jn)
            kh = jn:AddLabel("KeybindMenuOpen")
            kj = kh
            kj.AddKeyPicker(kj, jn, "Default")
            jn.AddButton(jn, "Text")
            kc.ToggleKeybind = kc
            jf.SetLibrary(jf, kf_12)
            j9.SetLibrary(j9, "Text")
            j9.IgnoreThemeSettings(j9)
            j9.SetIgnoreIndexes(j9, worker2)
            jf.SetFolder(jf, true)
            j9.SetFolder(j9, kh)
            j9.BuildConfigSection(j9, "Menu bind")
            jf.AddThemeOptions(jf, kc)
            j9.LoadAutoloadConfig(j9)
            ka()
        else
            j9.AddToggle(j9, "KeybindMenuOpen", { Text = "Open Keybind Menu", Default = jn.KeybindFrame.Visible, Callback = fn400 })
            j9.AddDivider(j9)
            kd = { Default = "RightShift", NoUI = true, Text = "Menu keybind" }
            worker2 = (j9:AddLabel("Menu bind"))
            worker2.AddKeyPicker(worker2, "MenuKeybind", kd)
            j9.AddButton(j9, {
                Text = "Unload",
                Func = function()
                    jn.Unload(jn)
                end
            })
            jn.ToggleKeybind = jn.Options.MenuKeybind
            kc.SetLibrary(kc, jn)
            kb.SetLibrary(kb, jn)
            kb.IgnoreThemeSettings(kb)
            kb.SetIgnoreIndexes(kb, { "AutoFarm", "AutoTrain", "AutoBonus", "AutoTimeReward", "AntiAfk" })
            kc.SetFolder(kc, "OuroborosHub")
            kb.SetFolder(kb, "OuroborosHub/LuckyBlockRush")
            kb.BuildConfigSection(kb, ka.Settings)
            kc.AddThemeOptions(kc, ka.Settings)
            kb.LoadAutoloadConfig(kb)
            jf()
        end
        j7 = (j7 + 3) % 28
    end
until fn209((j7 * 23 + 18) % 28, 527583337)
worker2, kd = nil, nil
local sv_5_28 = 8
repeat
    sv_1 = (sv_5_28 * 2 + 0) % 3 + 1
    if sv_1 <= 2 then
        if sv_1 <= 1 then
            if (sv_5_28 * 2 + 6) * 7 % 3 == ((sv_5_28 * 2 + 6) * 7 + 5) % 3 then
                kd.Name = "OuroborosToggle"
                kd.ResetOnSpawn = kd
                kd.ZIndexBehavior = false
            else
                kd.Name = "OuroborosToggle"
                kd.ResetOnSpawn = false
                kd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            end
            sv_5_28 = (sv_5_28 + 11) % 12
        else
            sv_1 = { "dtlkjxq", "kox", "jhjtpaxvyzzu", "vrba", "vskpu", "cxxxrk", "rjkraadqzp", "edpgy", "xbnxt" }
            if sv_1[(sv_5_28 * 37 + 100) % 9 + 1] < sv_1[(sv_5_28 * 37 + 100) % 9 + 1] then
                kd = game:GetService("UserInputService")
            else
                worker2 = game:GetService("UserInputService")
            end
            sv_5_28 = (sv_5_28 + 8) % 12
        end
    else
        sv_1 = (vector.create((sv_5_28 * 3 + 6) % 11 + 1, (sv_5_28 * 5 + 9) % 13 + 1, (sv_5_28 * 8 + 7) % 17 + 1))
        if fn209(vector.dot(vector.floor(sv_1) + vector.ceil(sv_1 * -1), vector.floor(sv_1) + vector.ceil(sv_1 * -1)), 544454170) then
            kd = Instance.new("ScreenGui")
        else
            worker2 = Instance.new(Instance.new)
        end
        sv_5_28 = (sv_5_28 + 5) % 12
    end
until fn209((sv_5_28 * 5 + 1) % 12, 460486181)
local sv_5_29 = gethui and gethui()
sv_1 = sv_5_29 or game:GetService("CoreGui")
imageButton, sv_12, jA, jy, jv, jp = nil, nil, nil, nil, nil, nil
local sv_5_30 = 17
repeat
    j8 = (sv_5_30 * 1 + 1) % 3 + 1
    if j8 <= 2 then
        if j8 <= 1 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_5_30, 27), string.byte(tostring(jv))), 24), 983940268), 6), 2842635022) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_5_30, 27), string.byte(tostring(jv))), 24), 6) then
                kd.Parent = imageButton
                sv_1 = Instance.new(Instance.new)
            else
                kd.Parent = sv_1
                imageButton = Instance.new("ImageButton")
            end
            sv_5_30 = (sv_5_30 + 1) % 24
        else
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_5_30, 14), string.byte(tostring(sv_12))), 6), 239013240), 14), 3277718415) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(sv_5_30, 14), string.byte(tostring(sv_12))), 6), 14) then
                local sW = sv_12
                sW.Size = UDim2.fromOffset(sW, 52)
                j8 = UDim2.fromScale
                local sX = sv_12
                sX.Position = j8(sX, 0.04)
                local sY = sv_12
                sY.AnchorPoint = Vector2.new(sY, 0.5)
                sv_12.BackgroundColor3 = Color3.fromRGB(UDim2, 25, Color3.fromRGB)
                sv_12.BackgroundTransparency = sv_12
                sv_12.Image = 0
                ka = Enum.ScaleType
                sv_12.ScaleType = 52
                sv_12.AutoButtonColor = ka
                sv_12.Parent = "rbxassetid://91400086538074"
                j9 = Instance.new
                sv_7 = j9(sv_12)
                kb = UDim.new
                sv_7.CornerRadius = kb(j8, Enum)
                sv_7.Parent = imageButton
                j7 = Instance.new(UDim2)
                j7.Color = Color3.fromRGB(Color3.fromRGB, 0.1, Color3)
                j7.Thickness = "UICorner"
                j7.Transparency = kb
                j7.Parent = Instance
                jp = Instance.new(sv_12)
                jp.PaddingTop = UDim.new(j9, 30)
                jp.PaddingBottom = UDim.new(jp, j7)
                j8 = UDim.new
                jp.PaddingLeft = j8(jp, sv_12)
                jp.PaddingRight = UDim.new(UDim.new, Instance)
                jp.Parent = UDim
                jy, kd, jv, jA = j8, sv_7, UDim, sv_12
            else
                imageButton.Size = UDim2.fromOffset(52, 52)
                imageButton.Position = UDim2.fromScale(0.5, 0.04)
                imageButton.AnchorPoint = Vector2.new(0.5, 0)
                imageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                imageButton.BackgroundTransparency = 0.1
                imageButton.Image = "rbxassetid://91400086538074"
                imageButton.ScaleType = Enum.ScaleType.Fit
                imageButton.AutoButtonColor = true
                imageButton.Parent = kd
                j7 = Instance.new("UICorner")
                j7.CornerRadius = UDim.new(0, 12)
                j7.Parent = imageButton
                sv_7 = Instance.new("UIStroke")
                sv_7.Color = Color3.fromRGB(80, 80, 95)
                sv_7.Thickness = 1
                sv_7.Transparency = 0.3
                sv_7.Parent = imageButton
                sv_12 = Instance.new("UIPadding")
                sv_12.PaddingTop = UDim.new(0, 6)
                sv_12.PaddingBottom = UDim.new(0, 6)
                sv_12.PaddingLeft = UDim.new(0, 6)
                sv_12.PaddingRight = UDim.new(0, 6)
                sv_12.Parent = imageButton
                jA, jy, jv, jp = false, nil, nil, false
            end
            sv_5_30 = (sv_5_30 + 10) % 24
        end
    else
        j8 = (vector.create((sv_5_30 * 2 + 7) % 11 + 1, (sv_5_30 * 4 + 7) % 13 + 1, (sv_5_30 * 12 + 6) % 17 + 1))
        j9 = (vector.create((sv_5_30 * 6 + 7) % 11 + 1, (sv_5_30 * 10 + 7) % 13 + 1, (sv_5_30 * 15 + 3) % 17 + 1))
        ka = (vector.create((sv_5_30 * 5 + 4) % 5 + 1, (sv_5_30 * 5 + 1) % 7 + 1, (sv_5_30 * 5 + 6) % 9 + 1))
        if math.abs((vector.angle(j8, j9, ka))) - math.abs((vector.angle(j9, j8, ka))) == 1 then
            j8 = fn1040
            j9 = worker2.InputBegan
            j9.Connect(j9, j8)
            j8 = fn1068
            j9 = imageButton.InputChanged
            j9.Connect(j9, imageButton)
            j9 = imageButton.InputEnded
            j9.Connect(j9, j8)
            j8 = worker2.MouseButton1Click
            j8.Connect(j8, worker2)
        else
            j8 = fn1040
            j9 = imageButton.InputBegan
            j9.Connect(j9, j8)
            j8 = fn1068
            j9 = worker2.InputChanged
            j9.Connect(j9, j8)
            j8 = function(fP)
                if fP.UserInputType == Enum.UserInputType.MouseButton1 or fP.UserInputType == Enum.UserInputType.Touch then
                    jA = false
                end
            end
            j9 = worker2.InputEnded
            j9.Connect(j9, j8)
            j8 = function()
                if jp then
                    return
                end
                jn.Toggle(jn)
            end
            j9 = imageButton.MouseButton1Click
            j9.Connect(j9, j8)
        end
        sv_5_30 = (sv_5_30 + 7) % 24
    end
until fn209((sv_5_30 * 5 + 4) % 24, 695437356)
