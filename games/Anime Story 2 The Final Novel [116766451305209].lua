local e_
local e2
local eK
local eQ
local eT
local eA
local eD
local e1
local eG
local eP
local eV
local eY
local eF
local e0
local eR
local ey
local eU
local eB
local function fn35(Z)
    local f0 = { "Activated", "MouseButton1Click", "MouseButton1Down", "MouseButton1Up" }
    local f1 = false
    for i, v in ipairs(f0) do
        local f0_1 = Z[v]
        if f0_1 then
            local f2 = pcall(firesignal, f0_1)
            f1 = f2 or f1
        end
    end
    return f1
end
local function fn80(ap, aq)
    local gg_1
    local gf_1
    local ge = {}
    if not ap then
        return ge
    end
    for i, descendant in ipairs(ap:GetDescendants()) do
        gf_1, gg_1 = pcall(aq, descendant)
        if gf_1 and gg_1 then
            ge[#ge + 1] = descendant
        end
    end
    return ge
end
local function fn92()
    local gG = setclipboard
    local gH = "https://discord.gg/f3dJhDgyTq"
    if not gG then
        gG = toclipboard
    end
    if not gG then
        gG = Clipboard and Clipboard.set
    end
    local gI_2 = gG
    if gI_2 then
        pcall(gI_2, gH)
        e1("Discord", "Copied invite to clipboard.")
        return
    end
    e1("Discord", gH)
end
local function fn110()
    local SelectedAmount = e0.SelectedAmount
    local gY = tonumber(SelectedAmount:gsub("x", ""))
    local gV = gY and eK(e0.SelectedBanner) and eY("summon_roll", e0.SelectedBanner, gY)
    if gV then
        return
    end
    if not eF() then
        return
    end
    local gV_1 = eP()
    if gV_1 then
        eR(gV_1)
    end
end
local function fn122(b2)
    e0.AutoSummon = b2
end
local function fn124(ay)
    for i, v in ipairs(ay) do
        if eR(v) then
            return true
        end
    end
    return false
end
local function fn126(aW, aX)
    local gK = e_(aX)
    local gL = gK and eD(gK)
    if gL then
        return gK
    end
    local gL_1 = e_(aW)
    if gL_1 then
        eR(gL_1)
        task.wait(0.2)
    end
    local gK_1 = e_(aX)
    local gL_2 = gK_1 and eD(gK_1)
    if gL_2 then
        return gK_1
    end
    return gK_1
end
local function fn160(V)
    local AbsolutePosition = V.AbsolutePosition
    local AbsoluteSize = V.AbsoluteSize
    return AbsolutePosition.X + AbsoluteSize.X / 2, AbsolutePosition.Y + AbsoluteSize.Y / 2
end
local function fn167(w, ...)
    local fF = not eQ or not (function(cP, cQ, cR)
        if type(cP) ~= "string" then
            return false
        end
        if #cP ~= cQ then
            return false
        end
        local cS = 5381
        local cT = buffer.fromstring(cP)
        local cU = 0
        while cU <= cQ - 4 do
            local cV = buffer.readu32(cT, cU)
            local cS_1 = bit32.bxor(cS, cV)
            cS = bit32.band(cS_1 * 33, 4294967295)
            cU = cU + 4
        end
        while cU < cQ do
            local cW = buffer.readu8(cT, cU)
            local cS_2 = bit32.bxor(cS, cW)
            cS = bit32.band(cS_2 * 33, 4294967295)
            cU = cU + 1
        end
        return cS == cR
    end)(type(eQ.SendServer), 8, 2851454103)
    if fF then
        return false
    end
    local fF_1 = pcall(eQ.SendServer, w, ...)
    return fF_1
end
local function fn196(b5)
    e0.AutoClaimBattlepass = b5
end
local function fn228()
    local SelectedAmount = e0.SelectedAmount
    local gT = SelectedAmount:gsub("x", "")
    local gQ = e_("main.Summon.Bottom.Summon." .. gT)
    local gR = gQ and eD(gQ)
    if gR then
        return gQ
    end
    local gQ_1 = e_("main.Summon.Bottom2.Summon." .. gT)
    local gR_1 = gQ_1 and eD(gQ_1)
    if gR_1 then
        return gQ_1
    end
    return nil
end
local function fn286(cY, cZ)
    if type(cY) ~= "number" then
        return false
    end
    if cY % 1 ~= 0 then
        return false
    end
    local c__1 = bit32.bxor(cY, 1540483477)
    local c__2 = bit32.band(c__1 * 403 + bit32.lshift(c__1, 24), 4294967295)
    local c__3 = bit32.bxor(c__2, bit32.rshift(c__2, 13))
    return c__3 == cZ
end
local function fn289(J)
    local fP = eT
    for i, v in ipairs(eB(J)) do
        local fQ = fP and fP:FindFirstChild(v)
        fP = fQ
        if not fP then
            return nil
        end
    end
    return fP
end
local function fn319(b1)
    e0.SelectedAmount = b1
end
local function fn321()
    if eY("unit_equip_best") then
        return
    end
    local hm = ey("main.Hud.Left.A.Units", "main.Units") or e_("main.Units")
    if not hm then
        return
    end
    local hm_1 = e_("main.Units.Base.Content.Left.Buttons.EquipBest")
    if hm_1 then
        eR(hm_1)
    end
end
local function fn371(aO, aP)
    eA.Notify(eA, { Title = aO, Content = aP, Duration = 4 })
end
local function fn384(C)
    local fH = (function(cP, cQ, cR)
        if type(cP) ~= "string" then
            return false
        end
        if #cP ~= cQ then
            return false
        end
        local cS = 5381
        local cT = buffer.fromstring(cP)
        local cU = 0
        while cU <= cQ - 4 do
            local cV = buffer.readu32(cT, cU)
            local cS_5 = bit32.bxor(cS, cV)
            cS = bit32.band(cS_5 * 33, 4294967295)
            cU = cU + 4
        end
        while cU < cQ do
            local cW = buffer.readu8(cT, cU)
            local cS_6 = bit32.bxor(cS, cW)
            cS = bit32.band(cS_6 * 33, 4294967295)
            cU = cU + 1
        end
        return cS == cR
    end)(C, 8, 1056807858) or (function(cP, cQ, cR)
        if type(cP) ~= "string" then
            return false
        end
        if #cP ~= cQ then
            return false
        end
        local cS = 5381
        local cT = buffer.fromstring(cP)
        local cU = 0
        while cU <= cQ - 4 do
            local cV = buffer.readu32(cT, cU)
            local cS_3 = bit32.bxor(cS, cV)
            cS = bit32.band(cS_3 * 33, 4294967295)
            cU = cU + 4
        end
        while cU < cQ do
            local cW = buffer.readu8(cT, cU)
            local cS_4 = bit32.bxor(cS, cW)
            cS = bit32.band(cS_4 * 33, 4294967295)
            cU = cU + 1
        end
        return cS == cR
    end)(C, 5, 1840067283)
    return fH
end
local function fn396()
    local ho = e_("battle.Hud.Top.Content.Speed")
    local hp = not ho or not eD(ho)
    if hp then
        return
    end
    local SelectedSpeed = e0.SelectedSpeed
    local hs = tonumber(SelectedSpeed:gsub("x", ""))
    local hp_1 = hs and eY("battle_speed", hs)
    if hp_1 then
        return
    end
    eR(ho)
    task.wait(0.05)
    local ho_1 = e_("battle.Hud.Top.Content.Speed.Settings." .. tostring(hs))
    if ho_1 then
        eR(ho_1)
    end
end
local function fn398(P)
    local fY = not P or not P:IsDescendantOf(eT)
    if fY then
        return false
    end
    local fY_1 = P
    while true do
        if not (fY_1 and fY_1 ~= eT) then
            return true
        end
        local fZ_1 = fY_1:IsA("GuiObject") and not fY_1.Visible
        if fZ_1 then
            break
        end
        fY_1 = fY_1.Parent
    end
    return false
end
local function fn403()
    ey("main.Hud.Left.C.Summon", "main.Summon")
end
local function fn407()
    if eY("achievement_claimall") then
        return
    end
    local g_ = ey("main.Hud.Left.Achievements", "main.Achievements")
    if not g_ then
        return
    end
    eG(g_, "ClaimAll")
    task.wait(0.1)
    eG(g_, "Claim")
end
local function fn418(b3)
    e0.AutoClaimAchievements = b3
end
local function fn440(bi)
    local g1 = e_(bi)
    if not g1 then
        return false
    end
    local g2 = false
    for i, child in ipairs(g1:GetChildren()) do
        local Notification = child:FindFirstChild("Notification")
        local Locked = child:FindFirstChild("Locked")
        local g4 = Notification and Notification:IsA("GuiObject") and Notification.Visible
        if g4 then
            local g1_2 = eR(child) or g2
            g2 = g1_2
            task.wait(0.08)
        else
            local g1_3 = Locked and Locked:IsA("GuiObject") and not Locked.Visible
            if g1_3 then
                local g1_4 = eR(child) or g2
                g2 = g1_4
                task.wait(0.08)
            end
        end
    end
    return g2
end
local function fn517()
    local hu = e_("battle.Result")
    local hv = not hu or not eD(hu)
    if hv then
        return
    end
    if e0.AutoNext then
        local hv_1 = e_("battle.Result.Base.Content.Buttons.Next")
        local hw = hv_1 and eR(hv_1)
        if hw then
            return
        end
    end
    if e0.AutoRetry then
        if eY("battle_replay") then
            return
        end
        local hv_2 = eV(hu, "Retry") or eV(hu, "Replay")
        if hv_2 then
            return
        end
        local hu_2 = e_("battle.Result.Base.Content.Buttons.Next")
        local hv_3 = hu_2 and eR(hu_2)
        if hv_3 then
            return
        end
    end
    if e0.AutoReturn then
        if eY("battle_leave") then
            eY("battle_end")
            return
        end
        local hu_3 = e_("battle.Result.Base.Content.Buttons.Return") or e_("battle.Result.Return")
        if hu_3 then
            eR(hu_3)
        end
    end
end
local function fn528(b4)
    e0.AutoClaimQuests = b4
end
local function fn531()
    if eY("battlepass_claimall") then
        return
    end
    local hk = ey("main.Hud.Right.A.Battlepass", "main.Battlepass")
    if not hk then
        return
    end
    eG(hk, "Claim")
end
local function fn537(F)
    local fJ = {}
    for k in string.gmatch(F, "[^%.]+") do
        fJ[#fJ + 1] = k
    end
    return fJ
end
local function fn543()
    local hc = ey("main.Hud.Left.B.Quests", "main.Quests")
    if not hc then
        return
    end
    local hc_1 = { "Daily", "Weekly", "Lost Swords", "GamePass Quest" }
    for i, v in ipairs(hc_1) do
        local hc_2 = e_("main.Quests.Base.Content.Left." .. v)
        if hc_2 then
            eR(hc_2)
            task.wait(0.1)
            eU("main.Quests.Base.Content.Top.Rewards")
        end
    end
    eU("main.Special quests.Base.Content.Top.Rewards")
    eU("main.Special quest menu.Base.Content.Top.Rewards")
end
local function fn544()
    local gN = ey("main.Hud.Left.C.Summon", "main.Summon")
    if not gN then
        return false
    end
    local gN_1 = e_("main.Summon.Top." .. e0.SelectedBanner)
    local gO = gN_1 and eR(gN_1)
    if gO then
        task.wait(0.15)
        return true
    end
    return eV(e_("main.Summon.Top"), e0.SelectedBanner)
end
local ex
ey = nil
eA = nil
eB = nil
eD = nil
eF = nil
eG = nil
local eJ
eK = nil
local eO
eP = nil
eQ = nil
eR = nil
eT = nil
eU = nil
eV = nil
local eX
eY = nil
e_ = nil
e0 = nil
e1 = nil
e2 = nil
local eH, eL, eS, eW, eZ, e4, e5, e8, fa, fb, fc, fg
local e7_1
local eN = (buffer.fromstring(")5512{nn&(5)4#o\".,n\x00\"54 -\x0c 25$3\x0e.&6 8n\x07-4$/5l\x13$/$6$%n3$-$ 2$2n- 5$25n%.6/-. %n\x07-4$/5o-4 4]+X!;Np5sGn!eNd}Xy2A@%5cWAD]#M~DC^S^C^B\x11yDSuknXF!^#wvu1#}t+!P*j_&g/W@;43,aNMXX@I\x02~I_Y@X\x02nM_I\x02oCBXIBX\x02nYXXCB_\x02~IXY^Bt[V^Z\x17rARENC_^YP\x17xYTR8wy;vwbVI9&oRXUJZdoeIKQJP`VKT@KSJvSsQN}?lj2,x4*CZ*T9X!cm)R*)<<$-f\x00=,f\x1c'8f\x0b'&<-&<f\x1b8--,f\x1b-<<!&/;fcDQ^TQBT=}IQjzeYqy}w2BUU3?#e%!jxmh*A2xEX@Iy/t7Sj%yNSlWH*qC0E.sJQSmEX:X*oeQPK\x04aUQMT\x04fAWPGAiaBa5QO+gqYjG6zjWsxy1L;n)O3I!KwbfJw7j2t5]#pQ9}rB@IT^hK^^FOHTie!XwS[To!!d!/e]CA}w!&goo|XBRPnC[Lin6vMJ7;(Mlb7y6Kj,Sj.#DsBUQDUtB_@T_G^ZmxSgPygaJv8M?lufvGPTAPaZRRYPh-=bCe[rv!?PH!O3KS;kJINZC[z{qbtrJCx[E198hi3A]&ae&oS^FZMxJVx;d9!J;(W]_)C;=g6IWK$x^FFDE\x0bjFD^E_)y?%*DOUqNjJz]OItPJZ5.*Pxg4:UdW@GTZ]YnsfK%d@gb*L{3.TZ}Ka{dt1_(zwH4p!Qt*L~Z]Z^ZIVxVJs$,]575FP-Xpj]#uvBCX\x17pVZR\x17dGRRSliDV!-1vaR9hS]RNyUTNHUV?y*Bu5s@p/ex)NJROYNY]MIC18Y(Vwz7YJfFE3wVURF_G1Urg*s1$9)S2@bvT}DBEGx%,n:T.8NMT)Fs*6^&-<?':#Vc3j!Aa0T18]Bz:_JND@AZKj0n9c#!]07%zf}K@JcA[]Kl[ZZA@kXK@ZsEMPbKVgLMH@xdz_-#-tERVCRcXPP[R;o-aL{4k_^EiFKCGhK^^FOZKYYjX%Q!maC+wE$U=*lU(q^S[_s^^az#[8Faboy[AGQvA@@[Z\x05p[CZyMLW}9072szwS(SH($,+k\x07$11) 5$66bC@GSJR[Yw,bg6Vk_^EmKGOyZOON=l]JN[Jk]@_K@XAuA@[gAYY[Z+..RHCQt#Zj7Ro0F0o[ZAk_[G^lK]Z\x10!62'6\x07<44?6bSD@UDuNFFMDh^VKyPM|WVS[nJMJNJYFhFZbVWL\x03pVNNLMgSRIuSKKIHuWFaW@D[QWPULRIH^TLWhJ[|J]YFLJsA]vA@@[Zt@AZ{PMAlpQ|W^QXZ[\x9a\x99\x99\x99\x99\x99\xa9?eXE]TV^K333333\xc3?.80-S+nKyZOOW^ueDG@TMU`ABEQHPpQRUAX@QXSQl5kH]]ELgmatchcG]M)d.L[zf[F^WW\xe0n\x06\xd9qQ\x05yMLWt^RS}W[Z~JKPxLMVCGXtN|}4X\x0fM39#\tA![\x01\xa0"))
local eM = (buffer.fromstring("\x0c*<*y\x0b<-+ v\x0b<)58 y0?y)+<*<7-wy\x1f855*y;8:2y-6y\x17<!-y.1<7y-10*y+<*,5-y\x0c\x10y675 y<!)6*<*y\x17<!-w}xi)./F$kL@HO\x0ftOHUR\x0fc@RD\x0fbNOUDOU\x0fmDGU\x0fcTUUNOR\x0fdPTHQcDRUgVAEPApKCCHAhd+vXCDCD3s;&)M.69@$z]DAx}3TwrYwCBYqW[SeFSSRS1_8dHo};vvNDRy*uHs2dS(xv_NwT[[PGqGZEQZB[9J_1i!LrAH4co:e7b,PM75RT1-b@Qv@WSLF@Px4l,9IJx?*&/_9vzAQp?CAhut6{}ALTH_^=;Sj{uv?xm8+c_#_Ni7qKwvenvI?Ki#/' `\x1f;+=:=`\x0c/=+`\r! :+ :`\x1a!>`\x1c+9/<*=o[ZAmBOGCoMFGKXKCK@Z]$8l;%dArUc),x0dEhCJELNObb3Ytjm&X)JOq)(W4MI8zeNKPAnVOWJ=4u&aT{^eweBx-^TCFkVZ0,=xdJaHrHz3)T9$[;j7&@_];vuwnT+-9CVXo1n6lwJWOFB.zkaU9H!50bCDWN6k+/1Z0rzwNsYUTq%AK{@Bc^Y1D[P%su$g*,Tj}Gn=o[ZA\x0e`KVZvrs/mr!Eb{Me[Yd+271ijzB[C^&ywjZocf:cZ93Z0aO$@MWRfBljHEEKHJBu{tc%QJ-a1$jyqO-[:WGA`TUNsDUSXPU5a):toWMFh}@:[DbIafBXH;e#),WBDrdp-$kfi8U50o?YHxMN{EHXDQL##mp-_X*[mN&m2g%f\x1c6/?4.z;/.57;.354z65;>?>tD4tERVCRuBCCXYl*aRAq-oLRY;}@lFJKb7?+ROu!B.kUn}Y4]6m+D{_Xe_LSOsP?(BTp[.;J3j3eDh#$uMzR$}OJ=}@6EQqBP9_JNBJM\rkVG\roFEW\r`\rpVNNLM{ONUyV[SWkO_INIL)UN=B(|HIRoXIHOStIYzU?/!MFT`TUNL@UHNOT,KtgSU-k+yDYAHp+*63yODthQwSbUVGTMJCU$oX44.S4-[zwAHAGPA@wTAA@5}M+*iVCH\x06gENOCPCKCHRUbDH@vU@@AaWJUAJRKl]JN[J{@HHCJgQ-QxEX@I@#+ux@{IVMnQTPXIjGY2o};l;0<43s\x0e(0023s\t2-y]GWfQbuHMd056o^IMXIh^C\\HC[BQRGG_VlAVC_RJuWZZTWU]^75K1uDSWBSbYQQZSrCTPETsDEE^_`QFBWFwLDDOFbSD@UDcTUUNOuDSWBSbWTkq(>//25<(vibVWLqFWVQMRGWU_Y[WD@b_BZS?Vd$IuHUMD$8*4eQPKvAPV]|MZ^KZk^]z[v]T[RPQjDXbNED$iKFFHKIAdPQJk@]Q\x00\x00\x00\x00\x00\x00\xfc?c__[lN_kJINZC[sRQVB[C}JG^NXw@MTDRuVCC[RvNWORg_F^C~C^FOiHr\x1f\xa9\x1c\xeb\x04/91,\x1e\x04\"=\xe7\x1b\xe4&{ONU\xc2\x11\xad\xb5!*8jPb\x08\x02L\x15@\x0b-H0\x17F\x18&t"))
local eI = (buffer.fromstring("\x0c*<*y\x0b<-+ v\x0b<)58 y0?y)+<*<7-wy\x1f855*y;8:2y-6y\x17<!-y.1<7y-10*y+<*,5-y\x0c\x10y675 y<!)6*<*y\x17<!-w/P#OpwHSUT@MhOQTUl@O@FDSwoI&u2+hxhh]A_?51O8Bu1eD}Fn$o[ZA\x0emBOGC\x0elOZZBK^O]]q^.m&jb:OJc1K3r);y:57}nL]mLZJLGMHG]Zo:I)?qo]_D_)t=v-eG(%Gy*t6AOfW@DQ@gPQQJKcIGB-@3r{!lgCK%($,?_VKAuJ.%$uDSWBSrDYFRYAX=I*x43nuj]zc}AP:h__7&Xm@{`ABEQHPDcBOGaaPSExL4Lv/@=V?1;Q:dWxwErkeTCGRCrIAAJCl#3P&I7Q1d)E:j%FWPxr:+r@xLMV/]30*zKwNHwKcnH0[F0nb*PF3N^PZTG?<->' )?;C%RDG#0tErF/vjI4IVb:;x}R34ZLDYPpdHrv2D*mI;+uDy[Rj/D3-HhF%yi7rCTPETe^VV]T,DLyBP]b:+57#0RhkBT6t\x03& 'i\r :*&;-i/&;i\x02,0%,::ifi\r<9,:eQPK]WPPz!N8?fZ:cz9PKJ{uba[itamc^C[RX9jQc/6SSM=xnpH^VjT9-trQ!.2;+5656)+AS-RCI,Tws(WQ:pvxGtW7>5;u%T?hT1iBxsxGTdn/S?BPw@fz2>61q\x0c*2201q\x1d0++02mq\x0c*2201q;`ABEQHPo&2E]PU^(%/{tdicL?,rTmYXC9ly5;7xFlpnW,KL9;sfmvB5NcTY@PFd}QD_2)nYr6SXMm_CPL$k#)(<>;8;;+$v%;:7c#K.{=]RwtlXYBnALD@oLYYAH]L^^:KE{3hpQ|W^QXZ[@S7^Y)ymzq+^H5QzFKCKo4(XFYhm;(68j]BYfN:,$9/T&hV[Ix$Zi$ykoHPAdPQJfIDLHdFML@S@H@KQVhNVVTU\x1bzVTNUOj[2Th1vfRP[ZVEV^V]GlP_RZ^R__uA@[wXU]YvU@@XQDUGGo^IMXInYXXCBUKg$qyQJ^CAcJJ_IX-u,9T}*fwr:lGL.XN-1@;ZWhYUtCVJOEGRCBuRITGACmH[B0({0,-0Y2J,6vWTSG^Fpvf/T,YraLVFJWAvmm(x^p/gSRI\x06cWSOV\x06dCURrDMDBUDE`LNTOUjEBHjE^_XoDE@Hc@UUMD]bL{XqudPQJbDH@vU@@Ao^IMXInYXXCBy]Zg]NQgUv/caW_BpYDu^_ZR|HIR\x1doXIHOS.,!+=*717'?qS^^PSQY[Suj^_DyN_^YE]FXFXND]XLpDE^\x11cTECHl^Bi^__DEnObI@OFDEuDSWBSbWTOKXXLeBnKqPST@YAI\x9a\x99\x99\x99\x99\x99\xc9?nLAAOLNFvTYYWTV^{ZY^JSKpMPHAi?a@CDPIQgP]DTBdGRRJCrORJCkVKSZxDIAIlMPUJlQLT]\xf0 \xba\xe2FPXEqED_P\x9dq\xa95!`\x00lHRB}Gu`Zh\xcc\x017\x03a)1\x048\x1c:/\x0e\x1a"))
local eE = (buffer.fromstring("*6621xmm%+6*7 l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m0'.'#1'1m.#6'16m&-5,.-#&m\x04.7',6l.7#7FEPPHATEWW{GHEMIEHHzv*nykn@2r9)T29Vjo?[Y3{zIi12Lo[ZAiOCK}^KKJaN8N:&EUw(gMZRzRf3vixIU*yWLaQVQ($,+k\x140 616mNy%Aj0q@gl;,X0V%=DTp;TKH*kmsU`TUNsDUTSO.*VoHxgv}N{F/$tvNj,rn&kejIW!X?VU@@XQ\x1afQGAX@\x1avUGQ\x1aw[Z@QZ@\x1avA@@[ZG\x1azQL@nXQX^IXYnMXXYaai[5E;8VZy(5;gfT8;@!Mh@-fGjAHGNLMtNmtr7;D}*9NruZRc9JMA#x,&7zeZLDYmrzH@g$t0m3}AK6:gJKS^+$kf8A^[{UcQQ_XM}NI0yNRy:u0c*aC7e}[ySRtvwj8ahIJMY@X+NwYT^!nw]un+TGGsS3OZ*x]cTXnZ[@yl(+H1ZvYm9AwB3Jk}WIX?f0jP,!a\x05 &!o\x0b&<, =+o) =o\x04*6#*<<o`o\x0b:?*<kZI^UO*nHXyJa3eF-FgF=FGWD.zkCX$:?DO<J&Zy{P^F^]x*1m8nDN%:GjlKg4yMLW}IMQHz]KLbBv+b(?Orn-=LRB1$2>61q\x17*;q\r687+q\x1eq\x1d>++3:/>,,#[-5%0((/:rmn*c}$-rD[,qj/4GGAbwRZ_JYEx[g4OZaFp(Z7YWwny--SWpDE^t@DXAsTBE{gh;hb!FGt/)dh\x1b7(1=<x16.1,=x,7x;41(:79*<vpFMGpFQUFQ7_IGN}A?amI&Y1gih=cK8l}{TCFxY[W!])1fHR@l%?3;<|\x1a'6|\x1e74&|\x13|\x07<;&!zXh*~JKPmZKJMQwWV.I3hBA{liOYU]Z\x1a|AP\x1axQR@\x1av\x1aeAQG@GO[FDfOOZL]OEaCA:&?JityXN^OTMITRSkM7by/Qff5:9,,4=v\n=+-4,v\n=,-*6~JKP|S^VR}^KKSZO^LL$5,}a*_N8fEjETa*Uo&eQPK\x04wQIIKJv,m7r&)hJ[|J]YFLJ3NANF@t7vBCX\x17t[V^Z\x17fBRDCDmN_C@YXI|C_EXECBOTSNe_KOSJeX_INiVCH\x06dGRRJCVGUUpRCsRDTRYSVYCDwJWOFOt}S$e)I^mBEOmBYX_hCBGOfBXH[NNF!l@6!prCTPETsDEE^_AuDSWBStCBBYXaY@XEm2gToJ%gVAEPApKCCHAzEP[\x15d@PFAFnOYIXCZ^CED~JKP\x1fmZKJMQk_^ExO^_XDwUXXVUW_A)0<43s\x0834).xYt_VYPRSa@mFO@IKJz{3K}W+rgcBoDMBKIHlNCCMNLDiMWG!H(]\x00\x00\x00\x00\x00\x00\xe8?o^YJ_BDERDLQrzM&6:'1;+vTEN[^Tn%9{ktiJ__GNLO^HQd[^ZRxEX@IoROW^kOUEaX^Y\x11\x0cr\x12\xb6Q\xc7\x07d@ZJ\x1dR\x0c\xb0mYXC@V^Ciohs8\x05?\n\x06^+_.G4\x07*"))
local eC = (buffer.fromstring("\x0e+-*d\x00-7'+6 d\"+6d\x0f!=(!77dkd\x0014!74X9wlnClO+6T&LP{nZEBOBwDMv3?70p\r.;=7?2~/+;-*~3;0+p\x1c?-;p\x1d10*;0*p\n1.p\x0c;)?,:-KGOH\x08gENOCPCKCHRU*&#eh%=)Bzw16+WIy3w(:A*)VDimW`AWGAJ@EJPkB1Qg9t@A1@1F]clpo=r)%)9^_AeSu$# 55-$o\x13$24-5o\x03 2$o\x02./5$/5o\x03455./2o\x0f$95OuWMK]zMLLWV\tmHMkHXZ4k3XmEm6MyIBi,owlcZTkJgLEJCA@YUybHwvA=8k[b*?Y-10gIsFf$n-]qNBJM\rpVNNLMNa!]_1rKJnT_zYeq4gg4pwH:iR`TUNf@LDrQDDEN)(8pOym;Z6@Ye%8(R;gH:=J@EI@H^Gq)}(DEad*if9R(KZz7vt]xs_*6G\x06,5%.4`!54/-!4)/.`,/!$%$n)58FC*@;XwCBYxSNB@Ua^-WHyqcsnq5ak[fZ.WAjudrnSNV_#e:A!?;=3.,oW;-dc3Q}A-r)}IXjwX_UwXCBErYX]U:WU_y^dB-?36!a1s!mrDMDBUu@C;gZ/jHYxqAAF({AJi]4$t/jHY~H_[DNHQW&/RC#KC3ja0x*^S&4.%)!&f\x00=,f\x04-.<f\nf\x19=-;<;67UzxGQw>( =C2/,pC01,D+Zozx?!s#uGYDA7{J]YL]lW__T]xw;6sD+QGVP{gyNB`V_VPGVWqR]]VA4^p?HczwNDJN+7k_^Ey_GGED_f4u5(}%#W9qdT,NCqPST@YA4x;,SDdB}MImNwEi.-zq@WSFWf]UU^W!I5m[%GO-F49tY@LDC\x03lNEDH[H@HCY^k9$^[A9N{XTV[g[VNREOe{vLT;BOSPDb@MMC@BJ;gP[y8{gCP,iAv2yZOOW^2:K/SWHG.DnlMK3;j^_D\x0bhGJBF\x0biJ__GN[JXXrJSKVViU,EY^9s9}VB[JwCBYdSBCDX$d8fwg)G*fIDLHEx/VDO5R*P/)wewAHAGPA@fEJJAVx$r&+nZ[@|ZBB@A+D3UTr1CbSD@UDuNFFMD(Yo3my[AGQvA@@[Z\x05wX]W_uZV^?f^&BH=}sBcz`TUNbM@HLpTDRUR~JKP|S^VRnJZLKL`TUNrTLLNOdGh0GlU.N4p,lEcIBej[LH]Lm[FYMF^G}@]EL/?*&7^Ha~JKPx^RZlOZZ[eDiBKDMON*BX7hYNJ_Ni^__DEHK^^FOuYZOONlQLT]xP&(N$iVCH\x06wSCURUeZOD\ny_GGEDuA@[gAYY[Z|HIR\x1doXIODlJFN\x0bx[NNOkJgLEJCA@bCnELCJHIvGPTAPaTWnZ[@,5ci%{\x14\xaeG\xe1z\xb4?333333\xe3?fDIIGDFNcYJUq,#V*4#3?*=0hRSBk=CG_BTCcTY@PF/1/959~]QYWVwJWOFlowerpMPHAvRHXrXTU/;=*BVPGdKGO9-+<tQB[nJP@\xa4\x01`)o&\x08=\x1d7heIU5Vl"))
local ez = (buffer.fromstring("5916v\t-=+,+v\x1a9+=v\x1b76,=6,v\x14=>,v_wmc&WIh=nCXIrS@wxs.D&rneclcdPQJfIDLHdFML@S@H@KQV2L5a%SPjHmbcRA,_Lm1O5mMbE]O6:25u\x08+>82:7{*.>(/(u\x19:(>u\x1845/>5/u\x0f4+u\t>,:)?(\x1f:<;u\x11<&6:'1u3:'u\x1e0,90&&uzu\x11 %0&Yt;.^Xl=X(UzNOTxWZRVjN^HOHIK6v#q}Pc2x?Wya_.c1}^lrv$vTYYWTV^&pLW^I,3CHkBz?p,Vp{MCGo+)*k2zV@`TUNbM@HLc@UUMDQ@RRiR&rw]_0UZ?C)3=H{x?eKWmAJKu!]bcFBdMaxJ^G_Fzf^@HR1=K1}naa\x08-+,b\x06+1!-0&b$-0b\t';.'11bmb\x0672'1b[*TqED_~UHD:Ys?aYXoCQk/lCC/_Jkhdy5l0]4C@UUMD~MD@WDB.Y{&VS+_!H@dBb2.JW:_frDLQcJWfMLIAoemaLH=hnOTj}k/BmnL:2C\x19<:=s\x17: 0<!7s5<!s\x186*?6  s|s\x17&#6 bUCYJUcsZNCf3V4Fljm@:78z=T@je1r:vDX~S[TREfi;{dxFUqGPQUxcnP:^C/aELBE[LE[gi9nbtuWeW^285Gr}XB9BEpQRUAX@KnSPR;dse6*,:*ad;{M/,$drORJCh[HUOA[LL-Qh@aS^X4*QRwIAX[NNV_\x14rO^\x14nUJ\x14yUTN_TN\x14iJ__^sA]{V^QW@}cp7jkj,gRc;Ty6R/M;\x1e\x04+,( e\x161*7<ewe\x0401*($1,*+\x18e^IZI^_INF:(T6q.XLaxF@VNdFr9vGPTAPw@AAZ[-ujOdj#r.fFR1uHUMDOHu5{;;KP$wXq,6MI8/_e^P_CtXYCEX[)TXrDtND-zlliXOK^O}CDNE]TwBNO6IrJ2sRQVB[CIcTm(8RCtkvg-;agZG_V*rhVhfy=?;]o=D.ifW@DQ@qJBBI@sfK@2{3pqQMVJJ0iwd+GF,IaJg.qzM@YI_EyJaD@DP2)G_Ok_^EiFKCG{_OY^Y#YO%uJOKC=mFt}Dgl&QN+4}J_CFLN[JK|[@]NHJuTyR[T]_^s[P-bsulN_hCBGOYNE4$V7Mz]HGMH[MK7LhJ?9;dPQJfIDLHtP@VQVhNYoROW^RlvbD:cYnOYIODNKD^eL}6z.L?@w:CG9O:L@HO\x0fpTDRURg&\x01.)-%`\x134/29`r{AF[V[F[G\x14|AVtERVCR`^YSX@vWLQ^Q[YLQWVnZ[@X-1/LF$ZV^Y\x19dBZZXYoCBXIBXK_Bgt@AZf@XXZ[uCHBuCTPCTb@Qv@WSLF@dEhCJELNOsBUQDUdQRo^IMXIxMN|HIRoXIOD`TUNoDYUxZWWYZXPrTCuHUMD\x00\x00\x00\x00\x00\x00\xf8?oNMJ^G_wUDOZ_UsP__TCdE^CLSc@UUMDsPEE]TiTIQXqLQI@nSNV_\xe1\xfb\xdd\xc2,8.?\xb2\x9b\xfd>\xafb\x8eVeA[K\x9e`\xf8W\x01q\x04\xe1de-2$5f,N$\x12Y\x10\x02\x1eRD9\x14EB"))
local ew = (buffer.fromstring("FJBE\x05c^O\x05gNM_\x05jHCBN]NFNE_XkZ]W,_fmz6fL]QSBRzxYAyS4IM.-Tp(4403zoo$)3#/2$n''o&s$\n(\x04'9\x141IWq-(f;(RnItgs[ga9v%Sh^W^XO^_yZUU^IWaSd}^BsiF[Zqp,vOw@)dh(nh.=MqMwQ]Uc@UUTtB_@T_G^janB/D5s}(:n5{_#*2ttVuTgjfYLG\tkH]]ELYHZZXg_d(&2#ss97jN1oYo(ov=Dg3uA@[fQ@AFZ9BGFgc2)g-%6h%d6dnz$_qYh}2?m-bjKfMDKB@A(P%%pwzopZ{:/32ZV$XFF9ZQ%rd{!sLWQPDIlKUPQhDKDB@W^^3Hq1G?%$[Afy.8p_wT[[PGqGZEQZB[%(I*9c*V-e(r?}i!=Qe7!xi^OIBjKrAAz7Eeh7!FDYAu_Nt#*dJgICl[A\x1f,#m\"#(m ,#8,!m.!,$ b(<8$=m.4.!(cgo[ZAmBOGClOZZBK^O]]Kz9mtmp,-Cb!9:qED_uAEY@rUCDRB/ojTa^/EE2ADk[t)Txa@mFO@IKJrR6!XP_K:,}LRT+@OQm8HZueXE]TT(_K$f$fke63!;5USM!V]dTK-.xNEOfD^XNi^__DEn]NE_;[t%P2c^t+gKISHRbTIVBIQHo4ple@}v3Jx(YTQ-wCBYuZW_[wU^_S@S[SXBE@AINao,{tERVCRsEXGSX@Y8zhR)g5j8bw/CwgFEBVOWR_c9[qg+.Y{X8T,Y5I3NML@HO\x0fc@UUMDQ@RR,XX#n@m?.5Dt|_NRQHIXnTGX:A^W)DeWVPow?C7;34t\t/7754t\x0e5*t@yGiQk4)@Ot@AZgPAGLL9Zu*eC7zB;!!Lyt=)/8.!(F}/Yc+HQcfgEe0dP6?_#qyt6sXclb[DZ2QU9zN5?[Ihub:Cxko,OHW.Qzt%dQi_V_YN_^{WUOTNp,3uL$/RTWJDKTVPScs8LG,BiKj(vBCXt[V^ZuVCC[RGVDDy^KDNKXNSC(*9)w/^HgyHUYH6g_sLjaHfCR}A;gQXQW@QPvUZZQFjr7quJ_T\x1a{YRS_L_W_TNIo^COyNOOTU2OU)Mg~C^FO28R1P*[Lb=cbXj#S4JWyt,wOIFb{YTTZY[SpbV6U/tlZSZ\\KZ[}^QQZMzLELJ]LMkHGGL[gQXQW@QPuY[AZ@zNOT~JNRKy^HObT]TRETUbATTUo[ZAVu5Tsr?xY|MZ^KZ}JKKPQm[SN|UHyRSV^aB^Y\r~ZB_I^zEP[\x15f@XXZ[126$.)8SUw,cG]MLaG2Xr-!).n\x15.)43MN[[CJpJAKfPYPVAaTWb@WJUBWFGq@]QiDG@IyMLWj]LJA?902$$?>fAT[QTGQsGF]|WJFp]GW[FPjKHO[BZnOLK_F^pOUODJCaBWWOFeRG[VNx[TT_HgZG_VzGZBKc^C[RQEQE\xbe\xca\x0b\xc3\xe3f\xc2\xc0\x97\xbc\xf5\xa9I\xae8\xf8M\x12.n\xe91z\x03oUg) +D\x02\x1f(WP\x13Z\x0c,=;K\x19O"))
local e3 = (buffer.fromstring("R^VQ\x11wJ[\x11mVXWK\x11~\x11}^KKSZO^LLHiiX2%Y(PZ9$*q{^0YoAMT-s%ubVWL`OBJNb@KJFUFNFMWPpyp_w&bf6f/x7fSFx7oH/(X2Uq7ojobM@HL\x01dWDSXUIHOF\x01nOBDf;}MDEGsMaH1Lq/u{xx${qQ_{bVWL`OBJNb@KJFUFNFMWPCO%+zfEm5{G*8RWCWAA8uzHTr_WX^I4le7%Qo#SbI@/wcy+_{HvUW]wP]KKR:pVZRgVDD\x17fBRDC8yg*%24a[R)e?N$QYBvq:s^^@j^_DyN_YRU^:+Fe,)eV7,b?q1zKeR=O_CAP5AO\x01.)-%`\x134/29`rbC7lg1QlU7L;&c=[Y_txOTvEdSE_LSuj/*Y&d18$&?Q#O*$mh4jK5u$tkVX8^X@@BCr_BAA3g)9HEo($T(t87I^?O5,82g/#5$$9>7#}bAWsCb:IcaX%oJiUCy$,LxR@)yOFOI^ONyZOON?;}3],y=YH089RA;Ry.fW}KBKMZKJoCA[@ZOV[,!1k{0i0Nr6=s=uI$'22*#h\x14#53*2MdXgi4zRNo+Rq/^L9&@gSRI\x06eJGOK\x06gENOCPCKCHRUIf(w-/e9yMLW\x18v]@LG9]C3TsrDwq:Na[cvV&K-vBCXZVC^XY%P[7B%4&LrD}3{vI$Oy=lM`KBMDFG;v(qp)NU+)!Nc=YE&GA$zNOTVZORTUu5&V{?Si3;sMCGFY(m`QFBWFaVWWLMGY1aFZt@+#9SZb)60<43s\x15(9s\x118;)s\x1c>548+8083).84807w\n,4467w\x1b6--64w\n,4467w\x07:'?6mBJOg??7U=3P{(EtLT%]z~JKP\x1fx^RZ\x1flOZZ[:u63Q&dl2HzGZBKk]8]dSU1PvybQH-eEu{ONU\x1ayV[SW\x1a{YRS_L_W_TNICOG@\x00f[J\x00bKHZ\x00m\x00}[CCA@cYkGq?whpe*?#::d9(a0OzFKSOXm_ChWgapt_U!H8vBCX\x17t[V^Z\x17fBRDCD4Jr  =#;7?avcr0(_e=hJ.mYXC~IX^U.b*.Q2@SDHSXRBYWALRWi!i[D[QJ~JKPzNJVO}ZLKu#hGbT]TRETUsP__TC+%y^KDNKXNd_qLP61!gSRIaGKCuVCCB_mH>)<WuL2byfv4@{rh^W^XO^_zVTNUOzFKSOXYRN]/]T$vTYYWTV^Xmn6c/lOZZBKW*5?5&%a@mFO@IKJUDvbk_^Eo[_CZhOY^yH_[N_nU]]V_sBUQDUrEDD_^--$4 49#(WcjIEGJvJG_CTDGSFLBULMQGzE_EN@IgXcUH^FFBGHJAmKGO\nyZOONqED_~UHDcPDDKF^YIRt@AZgPAGLrP]]SPRZ{YTTZY[SWD_REX^_\x9a\x99\x99\x99\x99\x99\xb9?yLOzDIYEjEH@DE}gXBXS]TfZZ^iKZ?>/'8*nMXX@IhK^^FO}@]EL{F[CJyDYAH\xd32\xadmbVWLwM^AlFJK&\x0c<nlXYB\xb2\xed\xd1\x91FODsr:g.\x16\rS%2Q6]\x1bf\x11T\x00"))
e2, eZ, eT, eQ = nil, nil, nil, nil
local e6 = 2
repeat
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e6, 27), string.byte(tostring(eQ))), 10), 1848513101), 3803848944), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e6, 27), string.byte(tostring(eQ))), 10), 2446454194), 3048018370))), 3803848944), 3048018370) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(e6, 27), string.byte(tostring(eQ))), 10) then
        e2 = game:GetService(game)
        game.GetService(game, "Players")
        eT = game:GetService("VirtualInputManager")
        eZ = game
        eZ.WaitForChild(eZ, "ReplicatedStorage")
    else
        e4 = game:GetService("Players")
        e2 = game:GetService("ReplicatedStorage")
        eZ = game:GetService("VirtualInputManager")
        e5 = e4.LocalPlayer
        eT = e5:WaitForChild("PlayerGui")
    end
    e6 = (e6 + 7) % 8
until fn286((e6 * 1 + 0) % 8, 527583337)
e4, e5 = pcall(function()
    local API = e2:WaitForChild("API")
    local Utils = API:WaitForChild("Utils")
    return require(Utils:WaitForChild("network"))
end)
if e4 then
    eQ = e5
end
eA, e4, fc, e0, eY, eK, eB, e_, eD, eS, eH, eR, eL, eW, eG, eV, e1, e6, ey, eF, eP, fa, ex, eU, eO, eX, eJ, e8, fb, e7_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local e9 = 56
repeat
    e5 = (e9 * 17 + 16) % 20 + 1
    if e5 <= 10 then
        if e5 <= 5 then
            if e5 <= 3 then
                if e5 <= 2 then
                    if e5 <= 1 then
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 8), string.byte(tostring(eU))), 23), 4164464201), 1475895454), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 8), string.byte(tostring(eU))), 23), 130503094), 652483559))), 1475895454), 652483559) == bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 8), string.byte(tostring(eU))), 23) then
                            eU = fn440
                        else
                            e4 = fn440
                        end
                        e9 = (e9 + 13) % 80
                    else
                        if (e9 * 2 + 3) * 10 % 3 == ((e9 * 2 + 3) * 10 + 8) % 3 then
                            e1 = fn543
                        else
                            eO = fn543
                        end
                        e9 = (e9 + 53) % 80
                    end
                else
                    if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 24), string.byte(tostring(eA))), 12), 1849429030), 12), 3233965795) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 24), string.byte(tostring(eA))), 12), 12) then
                        eX = fn531
                    else
                        eR = fn531
                    end
                    e9 = (e9 + 53) % 80
                end
            elseif e5 <= 4 then
                if e9 * 107929687 + 10 + 5 <= e9 * 107929687 + 10 + 5 + 2 then
                    eJ = fn321
                else
                    eL = fn321
                end
                e9 = (e9 + 33) % 80
            else
                local fd_1 = (vector.create((e9 * 5 + 5) % 11 + 1, (e9 * 10 + 9) % 13 + 1, (e9 * 10 + 7) % 17 + 1))
                local fe_1 = (vector.create((e9 * 5 + 5) % 11 + 1, (e9 * 5 + 6) % 13 + 1, (e9 * 1 + 15) % 17 + 1))
                local ff_1 = (vector.create((e9 * 2 + 7) % 11 + 1, (e9 * 9 + 12) % 13 + 1, (e9 * 8 + 11) % 17 + 1))
                fg = (vector.create((e9 * 1 + 7) % 5 + 1, (e9 * 4 + 4) % 7 + 1, (e9 * 4 + 1) % 9 + 1))
                if vector.dot(vector.cross(fd_1, (vector.cross(fe_1, ff_1))), fg) == vector.dot(fe_1 * vector.dot(fd_1, ff_1) - ff_1 * vector.dot(fd_1, fe_1), fg) + 2 then
                    eV = fn396
                else
                    e8 = fn396
                end
                e9 = (e9 + 73) % 80
            end
        elseif e5 <= 8 then
            if e5 <= 7 then
                if e5 <= 6 then
                    local fd_2 = (vector.create((e9 * 4 + 8) % 11 + 1, (e9 * 8 + 8) % 13 + 1, (e9 * 2 + 13) % 17 + 1))
                    local fe_2 = (vector.create((e9 * 6 + 8) % 11 + 1, (e9 * 7 + 2) % 13 + 1, (e9 * 11 + 4) % 17 + 1))
                    local ff_2 = (vector.create((e9 * 4 + 7) % 11 + 1, (e9 * 5 + 3) % 13 + 1, (e9 * 6 + 8) % 17 + 1))
                    fg = (vector.create((e9 * 6 + 4) % 11 + 1, (e9 * 7 + 5) % 13 + 1, (e9 * 13 + 2) % 17 + 1))
                    if vector.dot(vector.cross(fd_2, fe_2), (vector.cross(ff_2, fg))) == vector.dot(fd_2, ff_2) * vector.dot(fe_2, fg) - vector.dot(fd_2, fg) * vector.dot(fe_2, ff_2) + 2 then
                        eW = fn517
                    else
                        fb = fn517
                    end
                    e9 = (e9 + 33) % 80
                else
                    if e9 * 58339817 + 12 + 5 <= e9 * 58339817 + 12 + 5 + 1 then
                        e7_1 = function(bW, bX, bY)
                            task.spawn(function()
                                local hA_2
                                local hz_2
                                while true do
                                    hz_2, hA_2 = pcall(function()
                                        if e0[bW] then
                                            bY()
                                        end
                                    end)
                                    if not hz_2 then
                                        warn("[Anime Story 2 Automation] " .. tostring(hA_2))
                                    end
                                    task.wait(bX)
                                end
                            end)
                        end
                    else
                        eG = function(bW, bX, bY)
                            task.spawn(function()
                                local hA_1
                                local hz_1
                                while true do
                                    hz_1, hA_1 = pcall(function()
                                        if e0[bW] then
                                            bY()
                                        end
                                    end)
                                    if not hz_1 then
                                        warn("[Anime Story 2 Automation] " .. tostring(hA_1))
                                    end
                                    task.wait(bX)
                                end
                            end)
                        end
                    end
                    e9 = (e9 + 13) % 80
                end
            else
                if (e9 * 2 + 7) * 13 % 3 == ((e9 * 2 + 7) * 13 + 4) % 3 then
                    local Auto3 = eX.Auto
                    Auto3.CreateButton(Auto3, "Title")
                    local Auto2 = eX.Auto
                    local fl = { "Standard", "Slime" }
                    local fn = Auto2
                    local fd_4 = (fn:CreateDropdown(fc, Auto3))
                    fd_4.OnChanged(fd_4, Auto2)
                    local fq = { Values = { "50x", "1x", "10x" }, Title = "Summon Amount", Default = 2, Multi = false }
                    local Auto = eX.Auto
                    local fs = Auto:CreateDropdown("AmountDropdown", fl)
                    local ft = fn319
                    fs.OnChanged(fs, "Standard")
                    local fu = { Title = "Auto Summon", Default = false }
                    local fv = eX.Auto
                    local fw = fn122
                    fq = (fv:CreateToggle(ft, fq))
                    fq.OnChanged(fq, "10x")
                    fq = { Title = "Auto Claim Achievements", Default = false }
                    ft = eX.Auto
                    fv = fn418
                    fu = (ft:CreateToggle(fu, fw))
                    fu.OnChanged(fu, eX)
                    fw = { Title = "Auto Claim Quests", Default = false }
                    local fx = eX.Auto
                    fg = (fx:CreateToggle("Callback", eX))
                    fg.OnChanged(fg, "Default")
                    local fm = { Title = "Auto Claim Battlepass", Default = false }
                    fx = eX.Auto
                    local fz = fn196
                    fl = (fx:CreateToggle("Default", fv))
                    fl.OnChanged(fl, "Auto Summon")
                    local fj = eX.Auto
                    fv = { Title = "Auto Equip Best", Default = false }
                    fx = fj
                    fq = (fx:CreateToggle(fz, fq))
                    fq.OnChanged(fq, "AutoSummon")
                    fx = eX.Battle
                    fx.CreateButton(fx, "Auto Claim Battlepass")
                    local fB = { Title = "Game Speed", Default = 3, Values = { "2x", "1x", "3x" }, Multi = false }
                    local Battle = eX.Battle
                    local fD = (Battle:CreateDropdown(false, eX))
                    fD.OnChanged(fD, eX)
                    fD = eX.Battle
                    local fp = (fD:CreateToggle("Default", "Callback"))
                    fp.OnChanged(fp, eX)
                    fq = eX.Battle
                    fn = (fq:CreateToggle("1x", "1x"))
                    fn.OnChanged(fn, fv)
                    fn = eX.Battle
                    fq = fn
                    fj = (fq:CreateToggle("Title", fj))
                    fj.OnChanged(fj, "AutoClaimAchievements")
                    fl = { Title = "Auto Return", Default = false }
                    local fo = eX.Battle
                    fq = (fo:CreateToggle(fB, "Title"))
                    fq.OnChanged(fq, "Values")
                    fo = eX.Misc
                    fv = fo
                    fv.CreateButton(fv, "Values")
                    fx = { Title = "Open Summon", Callback = fn403 }
                    fz = eX.Misc
                    fz.CreateButton(fz, "Description")
                    fp = eX.Misc
                    fp.CreateButton(fp, eX)
                    fp = eX.Misc
                    fp.CreateButton(fp, eX)
                    fp = eX.Misc
                    fp.CreateButton(fp, "Join Discord for Keyless / Dupes")
                    fp = eX.Misc
                    fz = fp
                    fz.CreateButton(fz, "Banner")
                    eJ(fm, fp, "Title")
                    eJ("AutoSummon", fn, "3x")
                    eJ("Join Discord for Keyless / Dupes", "AutoReturn", "Auto Claim Quests")
                    eJ("GameSpeedDropdown", "Title", "Callback")
                    eJ(fl, eX, false)
                    eJ("Slime", fx, e7_1)
                    eJ(fw, eX, "Auto Game Speed")
                    eJ("Claim Everything Once", false, "Title")
                    eJ("Title", fn528, eJ)
                    eO.SelectTab(eO, fo)
                    e4(fs, eJ)
                else
                    local fd_6 = { Title = "Join Discord for Keyless / Dupes", Callback = e6 }
                    local Auto8 = fc.Auto
                    Auto8.CreateButton(Auto8, fd_6)
                    local fe_5 = { Title = "Banner", Values = { "Standard", "Slime" }, Multi = false, Default = 1 }
                    local Auto7 = fc.Auto
                    fg = function(b0)
                        e0.SelectedBanner = b0
                    end
                    local fd_7 = (Auto7:CreateDropdown("BannerDropdown", fe_5))
                    fd_7.OnChanged(fd_7, fg)
                    local fe_6 = { Title = "Summon Amount", Values = { "1x", "10x", "50x" }, Multi = false, Default = 2 }
                    local Auto6 = fc.Auto
                    fg = fn319
                    local fd_8 = (Auto6:CreateDropdown("AmountDropdown", fe_6))
                    fd_8.OnChanged(fd_8, fg)
                    local fe_7 = { Title = "Auto Summon", Default = false }
                    local Auto5 = fc.Auto
                    fg = fn122
                    local fd_9 = (Auto5:CreateToggle("AutoSummon", fe_7))
                    fd_9.OnChanged(fd_9, fg)
                    local fe_8 = { Title = "Auto Claim Achievements", Default = false }
                    local Auto4 = fc.Auto
                    fg = fn418
                    local fd_10 = (Auto4:CreateToggle("AutoClaimAchievements", fe_8))
                    fd_10.OnChanged(fd_10, fg)
                    local fe_9 = { Title = "Auto Claim Quests", Default = false }
                    local Auto3 = fc.Auto
                    fg = fn528
                    local fd_11 = (Auto3:CreateToggle("AutoClaimQuests", fe_9))
                    fd_11.OnChanged(fd_11, fg)
                    local fe_10 = { Title = "Auto Claim Battlepass", Default = false }
                    local Auto2 = fc.Auto
                    fg = fn196
                    local fd_12 = (Auto2:CreateToggle("AutoClaimBattlepass", fe_10))
                    fd_12.OnChanged(fd_12, fg)
                    local fe_11 = { Title = "Auto Equip Best", Default = false }
                    local Auto = fc.Auto
                    fg = function(b6)
                        e0.AutoEquipBest = b6
                    end
                    local fd_13 = (Auto:CreateToggle("AutoEquipBest", fe_11))
                    fd_13.OnChanged(fd_13, fg)
                    local fd_14 = { Title = "Join Discord for Keyless / Dupes", Callback = e6 }
                    local Battle6 = fc.Battle
                    Battle6.CreateButton(Battle6, fd_14)
                    local fe_13 = { Title = "Game Speed", Values = { "1x", "2x", "3x" }, Multi = false, Default = 3 }
                    local Battle5 = fc.Battle
                    fg = function(b7)
                        e0.SelectedSpeed = b7
                    end
                    local fd_15 = (Battle5:CreateDropdown("GameSpeedDropdown", fe_13))
                    fd_15.OnChanged(fd_15, fg)
                    local fe_14 = { Title = "Auto Game Speed", Default = false }
                    local Battle4 = fc.Battle
                    fg = function(b8)
                        e0.AutoGameSpeed = b8
                    end
                    local fd_16 = (Battle4:CreateToggle("AutoGameSpeed", fe_14))
                    fd_16.OnChanged(fd_16, fg)
                    local fe_15 = {
                        Title = "Auto Retry",
                        Description = "Uses Retry/Replay if present. Falls back to Next when this result UI only exposes Next.",
                        Default = false
                    }
                    local Battle3 = fc.Battle
                    fg = function(b9)
                        e0.AutoRetry = b9
                    end
                    local fd_17 = (Battle3:CreateToggle("AutoRetry", fe_15))
                    fd_17.OnChanged(fd_17, fg)
                    local fe_16 = { Title = "Auto Next", Default = false }
                    local Battle2 = fc.Battle
                    fg = function(ca)
                        e0.AutoNext = ca
                    end
                    local fd_18 = (Battle2:CreateToggle("AutoNext", fe_16))
                    fd_18.OnChanged(fd_18, fg)
                    local fe_17 = { Title = "Auto Return", Default = false }
                    local Battle = fc.Battle
                    fg = function(cb)
                        e0.AutoReturn = cb
                    end
                    local fd_19 = (Battle:CreateToggle("AutoReturn", fe_17))
                    fd_19.OnChanged(fd_19, fg)
                    local fd_20 = { Title = "Join Discord for Keyless / Dupes", Callback = e6 }
                    local Misc6 = fc.Misc
                    Misc6.CreateButton(Misc6, fd_20)
                    local fd_21 = { Title = "Open Summon", Callback = fn403 }
                    local Misc5 = fc.Misc
                    Misc5.CreateButton(Misc5, fd_21)
                    local fd_22 = {
                        Title = "Open Quests",
                        Callback = function()
                            ey("main.Hud.Left.B.Quests", "main.Quests")
                        end
                    }
                    local Misc4 = fc.Misc
                    Misc4.CreateButton(Misc4, fd_22)
                    local fd_23 = {
                        Title = "Open Achievements",
                        Callback = function()
                            ey("main.Hud.Left.Achievements", "main.Achievements")
                        end
                    }
                    local Misc3 = fc.Misc
                    Misc3.CreateButton(Misc3, fd_23)
                    local fd_24 = {
                        Title = "Open Battlepass",
                        Callback = function()
                            ey("main.Hud.Right.A.Battlepass", "main.Battlepass")
                        end
                    }
                    local Misc2 = fc.Misc
                    Misc2.CreateButton(Misc2, fd_24)
                    local fd_25 = {
                        Title = "Claim Everything Once",
                        Callback = function()
                            ex()
                            eO()
                            eX()
                            eJ()
                            e1("Automation", "Ran one manual claim/equip cycle.")
                        end
                    }
                    local Misc = fc.Misc
                    Misc.CreateButton(Misc, fd_25)
                    e7_1("AutoSummon", 0.75, fa)
                    e7_1("AutoClaimAchievements", 1.5, ex)
                    e7_1("AutoClaimQuests", 1.75, eO)
                    e7_1("AutoClaimBattlepass", 1.5, eX)
                    e7_1("AutoEquipBest", 2, eJ)
                    e7_1("AutoGameSpeed", 1, e8)
                    e7_1("AutoNext", 0.6, fb)
                    e7_1("AutoRetry", 0.6, fb)
                    e7_1("AutoReturn", 0.6, fb)
                    e4.SelectTab(e4, 1)
                    e1("Anime Story 2", "Fluent automation loaded.")
                end
                e9 = (e9 + 53) % 80
            end
        elseif e5 <= 9 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 22), string.byte(tostring(eX))), 12), 1452171951), 3775164673), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 22), string.byte(tostring(eX))), 12), 2842795344), 82517161))), 3775164673), 82517161) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 22), string.byte(tostring(eX))), 12) then
                ey = loadstring(game:HttpGet(loadstring))()
            else
                eA = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
            end
            e9 = (e9 + 33) % 80
        else
            local fd_26 = {
                "kidnxortrbz",
                "rxymojijjzu",
                "hciyblzwi",
                "vsjtonxrjq",
                "iofdrrih",
                "vjcsmnmnq",
                "foafxofx",
                "vvkuma"
            }
            if fd_26[(e9 * 1 + 87) % 8 + 1] <= fd_26[(e9 * 1 + 87) % 8 + 1] then
                e4 = eA:CreateWindow({
                    Title = "Ouroboros Hub",
                    SubTitle = "Lust",
                    TabWidth = 160,
                    Size = UDim2.fromOffset(580, 460),
                    Resize = true,
                    MinSize = Vector2.new(520, 420),
                    Acrylic = true,
                    Theme = "Dark",
                    MinimizeKey = Enum.KeyCode.RightControl
                })
            else
                eA = e4:CreateWindow(Vector2.new)
            end
            e9 = (e9 + 13) % 80
        end
    elseif e5 <= 15 then
        if e5 <= 13 then
            if e5 <= 12 then
                if e5 <= 11 then
                    if e9 * 89223641 + 11 + 7 >= e9 * 89223641 + 11 + 7 + 3 then
                        e4 = fc
                    else
                        fc = {
                            Auto = e4:CreateTab({ Title = "Automation", Icon = "sparkles" }),
                            Battle = e4:CreateTab({ Title = "Battle", Icon = "swords" }),
                            Misc = e4:CreateTab({ Title = "Misc", Icon = "settings-2" })
                        }
                    end
                    e9 = (e9 + 53) % 80
                else
                    if e9 * 6299957 + 4 + 5 <= e9 * 6299957 + 4 + 5 + 1 then
                        e0 = {
                            AutoClaimAchievements = false,
                            AutoSummon = false,
                            SelectedBanner = "Standard",
                            SelectedAmount = "10x",
                            AutoClaimQuests = false,
                            AutoClaimBattlepass = false,
                            AutoEquipBest = false,
                            AutoRetry = false,
                            AutoNext = false,
                            AutoReturn = false,
                            AutoGameSpeed = false,
                            SelectedSpeed = "3x"
                        }
                        eY = fn167
                        eK = fn384
                        eB = fn537
                    else
                        eY = "AutoSummon"
                        e0 = fn167
                        eB = fn384
                        eK = fn537
                    end
                    e9 = (e9 + 73) % 80
                end
            else
                local fe_24 = ({
                    "kpnpnxrknz",
                    "suvkejuwqr",
                    "wiwama",
                    "iunrr",
                    "dpfw",
                    "kadh",
                    "uqbbv",
                    "quj",
                    "sptflk",
                    "gzlttpuzxs",
                    "dtxesyi"
                })[e9 % 11 + 1]
                local fd_28 = fe_24:len()
                local ff_15 = (fe_24:gsub("(.)", "%1%1", e9 % 3 % 2 + 1))
                if fd_28 >= ff_15:len() then
                    eS = fn289
                    e_ = fn398
                    eD = fn160
                else
                    e_ = fn289
                    eD = fn398
                    eS = fn160
                end
                e9 = (e9 + 33) % 80
            end
        elseif e5 <= 14 then
            if (e9 * 2 + 9) * 16 % 3 == ((e9 * 2 + 9) * 16 + 3) % 3 then
                eH = fn35
                eR = function(ai)
                    local ga, gb
                    local gc = not ai or not ai:IsDescendantOf(eT)
                    local gc_4
                    if gc then
                        return false
                    elseif not eD(ai) then
                        return false
                    else
                        local gc_3 = ai:IsA("GuiButton") and eH(ai)
                        if gc_3 then
                            return true
                        end
                        gc_4, ga, gb = pcall(eS, ai)
                        if not gc_4 then
                            return false
                        end
                        pcall(function()
                            eZ.SendMouseButtonEvent(eZ, ga, gb, 0, true, game, 0)
                            task.wait()
                            eZ.SendMouseButtonEvent(eZ, ga, gb, 0, false, game, 0)
                        end)
                        return true
                    end
                end
                eL = fn80
                eW = fn124
                eG = function(aC, aD)
                    return eW(eL(aC, function(aE)
                        local gw = aE:IsA("GuiButton") and aE.Name == aD
                        return gw
                    end))
                end
            else
                eL = fn35
                eH = function(ai)
                    local ga, gb
                    local gc = not ai or not ai:IsDescendantOf(eT)
                    local gc_2
                    if gc then
                        return false
                    elseif not eD(ai) then
                        return false
                    else
                        local gc_1 = ai:IsA("GuiButton") and eH(ai)
                        if gc_1 then
                            return true
                        end
                        gc_2, ga, gb = pcall(eS, ai)
                        if not gc_2 then
                            return false
                        end
                        pcall(function()
                            eZ.SendMouseButtonEvent(eZ, ga, gb, 0, true, game, 0)
                            task.wait()
                            eZ.SendMouseButtonEvent(eZ, ga, gb, 0, false, game, 0)
                        end)
                        return true
                    end
                end
                eR = fn80
                eG = fn124
                eW = function(aC, aD)
                    return eW(eL(aC, function(aE)
                        local gw = aE:IsA("GuiButton") and aE.Name == aD
                        return gw
                    end))
                end
            end
            e9 = (e9 + 13) % 80
        else
            if ((e9 and not eU or (eS or e9)) and (not eL and e_ and (not e_ and eU)) or ((not e9 or not e9) and (not eU and e_) or (not eL or eU or (not e9 or eS)))) and not ((e9 and not eU or (eS or e9)) and (not eL and e_ and (not e_ and eU)) or ((not e9 or not e9) and (not eU and e_) or (not eL or eU or (not e9 or eS)))) then
                eL = function(aH, aI)
                    return eW(eL(aH, function(aJ)
                        if not aJ:IsA("GuiButton") then
                            return false
                        elseif string.lower(aJ.Name) == string.lower(aI) then
                            return true
                        else
                            for i, descendant in ipairs(aJ:GetDescendants()) do
                                local gy = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                                if gy then
                                    if string.lower(descendant.Text) == string.lower(aI) then
                                        return true
                                    end
                                end
                            end
                            return false
                        end
                    end))
                end
            else
                eV = function(aH, aI)
                    return eW(eL(aH, function(aJ)
                        if not aJ:IsA("GuiButton") then
                            return false
                        elseif string.lower(aJ.Name) == string.lower(aI) then
                            return true
                        else
                            for i, descendant in ipairs(aJ:GetDescendants()) do
                                local gy = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                                if gy then
                                    if string.lower(descendant.Text) == string.lower(aI) then
                                        return true
                                    end
                                end
                            end
                            return false
                        end
                    end))
                end
            end
            e9 = (e9 + 33) % 80
        end
    elseif e5 <= 18 then
        if e5 <= 17 then
            if e5 <= 16 then
                if (e9 * 2 + 7) * 16 % 3 == ((e9 * 2 + 7) * 16 + 4) % 3 then
                    e6 = fn371
                else
                    e1 = fn371
                end
                e9 = (e9 + 73) % 80
            else
                if (e9 * 2 + 2) * 4 % 3 == ((e9 * 2 + 2) * 4 + 6) % 3 then
                    e6 = fn92
                else
                    ex = fn92
                end
                e9 = (e9 + 13) % 80
            end
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 15), string.byte(tostring(eW))), 12), 3269327841), 2953597469), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 15), string.byte(tostring(eW))), 12), 1025639454), 3272329918))), 2953597469), 3272329918) == bit32.rrotate(bit32.bxor(bit32.lrotate(e9, 15), string.byte(tostring(eW))), 12) then
                ey = fn126
                eF = fn544
                eP = fn228
            else
                eP = fn126
                ey = fn544
                eF = fn228
            end
            e9 = (e9 + 33) % 80
        end
    elseif e5 <= 19 then
        e5 = {
            "cwwxumjza",
            "wbflhirc",
            "dqaciomarv",
            "rsbjug",
            "ccjznzwmf",
            "qoxhdqf",
            "psgrxvaxyes",
            "jrbwooh"
        }
        local fd_29 = e5[e9 % 8 + 1]
        e5 = e9 % 3 + 2
        local fe_25 = (fd_29:reverse())
        local iK = e5
        e5 = fd_29:len()
        local ff_16 = (fe_25:rep(iK))
        if e5 >= ff_16:len() then
            eY = fn110
        else
            fa = fn110
        end
        e9 = (e9 + 33) % 80
    else
        e5 = (vector.create((e9 * 1 + 2) % 11 + 1, (e9 * 7 + 6) % 13 + 1, (e9 * 12 + 14) % 17 + 1))
        local fd_30 = (vector.create((e9 * 4 + 8) % 11 + 1, (e9 * 3 + 5) % 13 + 1, (e9 * 4 + 15) % 17 + 1))
        local fe_26 = (vector.create((e9 * 5 + 5) % 11 + 1, (e9 * 11 + 13) % 13 + 1, (e9 * 9 + 7) % 17 + 1))
        local ff_17 = (vector.create((e9 * 2 + 4) % 5 + 1, (e9 * 2 + 4) % 7 + 1, (e9 * 5 + 5) % 9 + 1))
        if vector.dot(vector.cross(e5, (vector.cross(fd_30, fe_26))), ff_17) == vector.dot(fd_30 * vector.dot(e5, fe_26) - fe_26 * vector.dot(e5, fd_30), ff_17) + 1 then
            eH = fn407
        else
            ex = fn407
        end
        e9 = (e9 + 53) % 80
    end
until fn286((e9 * 27 + 6) % 80, 309464081)
