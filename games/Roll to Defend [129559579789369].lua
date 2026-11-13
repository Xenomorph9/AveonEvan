local en
local EquipBest
local et
local ew
local IndexRewards
local eg
local ej
local Options
local ep
local d6
local es
local ev
local d9
local ec
local ey
local ZoneInfo
local ei
local PurchaseZone
local Toggles
local er
local d8
local eb
local ee
local GameSettingsState2
local eh
local ek
local function fn23()
    return 5
end
local function fn69()
    EquipBest.FireServer(EquipBest)
end
local function fn102(c3, c4)
    if type(c3) ~= "number" then
        return false
    end
    if c3 % 1 ~= 0 then
        return false
    end
    local c5_1 = bit32.bxor(c3, 1540483477)
    local c5_2 = bit32.band(c5_1 * 403 + bit32.lshift(c5_1, 24), 4294967295)
    local c5_3 = bit32.bxor(c5_2, bit32.rshift(c5_2, 13))
    return c5_3 == c4
end
local function fn117()
    local f3_2
    local f0 = ek:Get("Index")
    for k, v in pairs(IndexRewards) do
        local f1 = ew.Unloaded or not Toggles.AutoClaimIndex.Value
        local f1_2
        if f1 then
            return
        end
        local f1_1 = ek:Get("IndexRewards." .. k)
        local f2
        for i, v in ipairs(v) do
            local f3_1 = ((function(cV, cW, cX)
                if type(cV) ~= "string" then
                    return false
                end
                if #cV ~= cW then
                    return false
                end
                local cY = 5381
                local cZ = buffer.fromstring(cV)
                local c_ = 0
                while c_ <= cW - 4 do
                    local c0 = buffer.readu32(cZ, c_)
                    local cY_3 = bit32.bxor(cY, c0)
                    cY = bit32.band(cY_3 * 33, 4294967295)
                    c_ = c_ + 4
                end
                while c_ < cW do
                    local c1 = buffer.readu8(cZ, c_)
                    local cY_4 = bit32.bxor(cY, c1)
                    cY = bit32.band(cY_4 * 33, 4294967295)
                    c_ = c_ + 1
                end
                return cY == cX
            end)(type(f1_1), 5, 248602996))
            if f3_1 then
                local f4_1 = f1_1[i] == true or f1_1[tostring(i)] == true
                f3_1 = f4_1
            end
            if not f3_1 then
                f2 = v
                break
            end
        end
        if f2 then
            f1_2, f3_2 = pcall(d9.GetUnitsForMutation, k)
            local f4_3 = f1_2 and (function(cV, cW, cX)
                if type(cV) ~= "string" then
                    return false
                end
                if #cV ~= cW then
                    return false
                end
                local cY = 5381
                local cZ = buffer.fromstring(cV)
                local c_ = 0
                while c_ <= cW - 4 do
                    local c0 = buffer.readu32(cZ, c_)
                    local cY_1 = bit32.bxor(cY, c0)
                    cY = bit32.band(cY_1 * 33, 4294967295)
                    c_ = c_ + 4
                end
                while c_ < cW do
                    local c1 = buffer.readu8(cZ, c_)
                    local cY_2 = bit32.bxor(cY, c1)
                    cY = bit32.band(cY_2 * 33, 4294967295)
                    c_ = c_ + 1
                end
                return cY == cX
            end)(type(f3_2), 5, 248602996)
            if f4_3 then
                local f1_3 = 0
                for i, v in ipairs(f3_2) do
                    if er(f0, v.unitId, v.mutationId) then
                        f1_3 += 1
                    end
                end
                if f1_3 >= f2.req then
                    eg.FireServer(eg, k)
                    task.wait(1.1)
                end
            end
        end
    end
end
local function fn121(L)
    if L then
        if not es and getconnections then
            es = {}
            for i, v in ipairs({ ev, et }) do
                for i, v in ipairs(getconnections(v.OnClientEvent)) do
                    if pcall(v.Disable, v) then
                        table.insert(es, v)
                    end
                end
            end
        end
    elseif es then
        for i, v in ipairs(es) do
            pcall(v.Enable, v)
        end
        es = nil
    end
end
local function fn125(Y, Z, aa)
    if Z.startUnlocked then
        return true
    elseif (function(cV, cW, cX)
        if type(cV) ~= "string" then
            return false
        end
        if #cV ~= cW then
            return false
        end
        local cY = 5381
        local cZ = buffer.fromstring(cV)
        local c_ = 0
        while c_ <= cW - 4 do
            local c0 = buffer.readu32(cZ, c_)
            local cY_9 = bit32.bxor(cY, c0)
            cY = bit32.band(cY_9 * 33, 4294967295)
            c_ = c_ + 4
        end
        while c_ < cW do
            local c1 = buffer.readu8(cZ, c_)
            local cY_10 = bit32.bxor(cY, c1)
            cY = bit32.band(cY_10 * 33, 4294967295)
            c_ = c_ + 1
        end
        return cY == cX
    end)(Y, 9, 2601596923) then
        local fp_1 = ek:Get("Stats.Rolls") or 0
        return fp_1 >= 3
    else
        local requires = Z.requires
        if (function(cV, cW, cX)
            if type(cV) ~= "string" then
                return false
            end
            if #cV ~= cW then
                return false
            end
            local cY = 5381
            local cZ = buffer.fromstring(cV)
            local c_ = 0
            while c_ <= cW - 4 do
                local c0 = buffer.readu32(cZ, c_)
                local cY_7 = bit32.bxor(cY, c0)
                cY = bit32.band(cY_7 * 33, 4294967295)
                c_ = c_ + 4
            end
            while c_ < cW do
                local c1 = buffer.readu8(cZ, c_)
                local cY_8 = bit32.bxor(cY, c1)
                cY = bit32.band(cY_8 * 33, 4294967295)
                c_ = c_ + 1
            end
            return cY == cX
        end)(type(requires), 6, 2175009567) then
            return (aa[requires] or 0) > 0
        end
        if (function(cV, cW, cX)
            if type(cV) ~= "string" then
                return false
            end
            if #cV ~= cW then
                return false
            end
            local cY = 5381
            local cZ = buffer.fromstring(cV)
            local c_ = 0
            while c_ <= cW - 4 do
                local c0 = buffer.readu32(cZ, c_)
                local cY_5 = bit32.bxor(cY, c0)
                cY = bit32.band(cY_5 * 33, 4294967295)
                c_ = c_ + 4
            end
            while c_ < cW do
                local c1 = buffer.readu8(cZ, c_)
                local cY_6 = bit32.bxor(cY, c1)
                cY = bit32.band(cY_6 * 33, 4294967295)
                c_ = c_ + 1
            end
            return cY == cX
        end)(type(requires), 5, 248602996) then
            for i, v in ipairs(requires) do
                if (aa[v] or 0) <= 0 then
                    return false
                end
            end
        end
        return true
    end
end
local function fn137(aN, aO, aP)
    local fW = (function(cV, cW, cX)
        if type(cV) ~= "string" then
            return false
        end
        if #cV ~= cW then
            return false
        end
        local cY = 5381
        local cZ = buffer.fromstring(cV)
        local c_ = 0
        while c_ <= cW - 4 do
            local c0 = buffer.readu32(cZ, c_)
            local cY_21 = bit32.bxor(cY, c0)
            cY = bit32.band(cY_21 * 33, 4294967295)
            c_ = c_ + 4
        end
        while c_ < cW do
            local c1 = buffer.readu8(cZ, c_)
            local cY_22 = bit32.bxor(cY, c1)
            cY = bit32.band(cY_22 * 33, 4294967295)
            c_ = c_ + 1
        end
        return cY == cX
    end)(type(aN), 5, 248602996) and aN[aO]
    local fX = fW or nil
    if (function(cV, cW, cX)
        if type(cV) ~= "string" then
            return false
        end
        if #cV ~= cW then
            return false
        end
        local cY = 5381
        local cZ = buffer.fromstring(cV)
        local c_ = 0
        while c_ <= cW - 4 do
            local c0 = buffer.readu32(cZ, c_)
            local cY_19 = bit32.bxor(cY, c0)
            cY = bit32.band(cY_19 * 33, 4294967295)
            c_ = c_ + 4
        end
        while c_ < cW do
            local c1 = buffer.readu8(cZ, c_)
            local cY_20 = bit32.bxor(cY, c1)
            cY = bit32.band(cY_20 * 33, 4294967295)
            c_ = c_ + 1
        end
        return cY == cX
    end)(type(aP), 6, 2175009567) then
        local fX_1 = (function(cV, cW, cX)
            if type(cV) ~= "string" then
                return false
            end
            if #cV ~= cW then
                return false
            end
            local cY = 5381
            local cZ = buffer.fromstring(cV)
            local c_ = 0
            while c_ <= cW - 4 do
                local c0 = buffer.readu32(cZ, c_)
                local cY_17 = bit32.bxor(cY, c0)
                cY = bit32.band(cY_17 * 33, 4294967295)
                c_ = c_ + 4
            end
            while c_ < cW do
                local c1 = buffer.readu8(cZ, c_)
                local cY_18 = bit32.bxor(cY, c1)
                cY = bit32.band(cY_18 * 33, 4294967295)
                c_ = c_ + 1
            end
            return cY == cX
        end)(type(fX), 5, 248602996) and (function(cV, cW, cX)
            if type(cV) ~= "string" then
                return false
            end
            if #cV ~= cW then
                return false
            end
            local cY = 5381
            local cZ = buffer.fromstring(cV)
            local c_ = 0
            while c_ <= cW - 4 do
                local c0 = buffer.readu32(cZ, c_)
                local cY_15 = bit32.bxor(cY, c0)
                cY = bit32.band(cY_15 * 33, 4294967295)
                c_ = c_ + 4
            end
            while c_ < cW do
                local c1 = buffer.readu8(cZ, c_)
                local cY_16 = bit32.bxor(cY, c1)
                cY = bit32.band(cY_16 * 33, 4294967295)
                c_ = c_ + 1
            end
            return cY == cX
        end)(type(fX.Mutations), 5, 248602996) and fX.Mutations[aP]
        local fX_2 = fX_1 or nil
        local fY_2 = fX_2 == true
        if not fY_2 then
            local fZ = (function(cV, cW, cX)
                if type(cV) ~= "string" then
                    return false
                end
                if #cV ~= cW then
                    return false
                end
                local cY = 5381
                local cZ = buffer.fromstring(cV)
                local c_ = 0
                while c_ <= cW - 4 do
                    local c0 = buffer.readu32(cZ, c_)
                    local cY_13 = bit32.bxor(cY, c0)
                    cY = bit32.band(cY_13 * 33, 4294967295)
                    c_ = c_ + 4
                end
                while c_ < cW do
                    local c1 = buffer.readu8(cZ, c_)
                    local cY_14 = bit32.bxor(cY, c1)
                    cY = bit32.band(cY_14 * 33, 4294967295)
                    c_ = c_ + 1
                end
                return cY == cX
            end)(type(fX_2), 5, 248602996) and fX_2.Unlocked == true
            fY_2 = fZ
        end
        return fY_2
    end
    local fX_3 = fX == true
    if not fX_3 then
        local fY_3 = (function(cV, cW, cX)
            if type(cV) ~= "string" then
                return false
            end
            if #cV ~= cW then
                return false
            end
            local cY = 5381
            local cZ = buffer.fromstring(cV)
            local c_ = 0
            while c_ <= cW - 4 do
                local c0 = buffer.readu32(cZ, c_)
                local cY_11 = bit32.bxor(cY, c0)
                cY = bit32.band(cY_11 * 33, 4294967295)
                c_ = c_ + 4
            end
            while c_ < cW do
                local c1 = buffer.readu8(cZ, c_)
                local cY_12 = bit32.bxor(cY, c1)
                cY = bit32.band(cY_12 * 33, 4294967295)
                c_ = c_ + 1
            end
            return cY == cX
        end)(type(fX), 5, 248602996) and fX.Unlocked == true
        fX_3 = fY_3
    end
    return fX_3
end
local function fn183()
    return 5
end
local function fn213(br)
    ep(br)
end
local function fn222(G)
    local e3 = ee[G]
    if not e3 then
        return 0
    end
    local e4 = ek:Get(e3) or 0
    return e4
end
local function fn250(bl)
    local OuroborosGroup = bl:AddLeftGroupbox("Ouroboros", "message-circle")
    local Button = OuroborosGroup:AddButton({
        Text = "Join Discord for a Dupe",
        Func = function()
            if setclipboard then
                setclipboard(ei)
            end
            ew.Notify(ew, "Discord link copied", 3)
        end
    })
    if Button and Button.Base then
        if ew.Registry[Button.Base] then
            ew.Registry[Button.Base].TextColor3 = nil
        end
        Button.Base.TextColor3 = Color3.fromRGB(85, 255, 127)
    end
end
local function fn322()
    local U = GameSettingsState2.GetLuckSetting()
    ey.FireServer(ey, false, {}, U.Enabled, U.Value)
end
local function fn381()
    local fy = ek:Get("UpgradeLevels") or {}
    local fy_1 = os.clock()
    for k, v in pairs(eh.Upgrades) do
        local fA = ew.Unloaded or not Toggles.AutoUpgrades.Value
        local fA_4
        if fA then
            return
        end
        local fB = (fy[k] or 0) <= 0
        local fB_2
        if fB then
            fB = (ec[k] or 0) <= fy_1
        end
        if fB then
            fB = d8(k, v, fy)
        end
        if fB then
            local price = v.price
            local fB_1 = true
            if (function(cV, cW, cX)
                if type(cV) ~= "string" then
                    return false
                end
                if #cV ~= cW then
                    return false
                end
                local cY = 5381
                local cZ = buffer.fromstring(cV)
                local c_ = 0
                while c_ <= cW - 4 do
                    local c0 = buffer.readu32(cZ, c_)
                    local cY_25 = bit32.bxor(cY, c0)
                    cY = bit32.band(cY_25 * 33, 4294967295)
                    c_ = c_ + 4
                end
                while c_ < cW do
                    local c1 = buffer.readu8(cZ, c_)
                    local cY_26 = bit32.bxor(cY, c1)
                    cY = bit32.band(cY_26 * 33, 4294967295)
                    c_ = c_ + 1
                end
                return cY == cX
            end)(type(price), 5, 248602996) then
                local fC_1 = eb(price.currency)
                fB_1 = fC_1 >= (price.amount or 0)
            end
            if fB_1 then
                fA_4, fB_2 = pcall(en.InvokeServer, en, k)
                local fC_2 = fA_4 and (function(cV, cW, cX)
                    if type(cV) ~= "string" then
                        return false
                    end
                    if #cV ~= cW then
                        return false
                    end
                    local cY = 5381
                    local cZ = buffer.fromstring(cV)
                    local c_ = 0
                    while c_ <= cW - 4 do
                        local c0 = buffer.readu32(cZ, c_)
                        local cY_23 = bit32.bxor(cY, c0)
                        cY = bit32.band(cY_23 * 33, 4294967295)
                        c_ = c_ + 4
                    end
                    while c_ < cW do
                        local c1 = buffer.readu8(cZ, c_)
                        local cY_24 = bit32.bxor(cY, c1)
                        cY = bit32.band(cY_24 * 33, 4294967295)
                        c_ = c_ + 1
                    end
                    return cY == cX
                end)(type(fB_2), 5, 248602996) and fB_2.success == false
                if fC_2 then
                    ec[k] = fy_1 + 30
                end
                task.wait(0.3)
            end
        end
    end
end
local function fn390()
    return 3
end
local function fn420()
    return Options.RollDelay.Value
end
local function fn550()
    local fS = ek:Get("Stats.Rebirths") or 0
    local fS_1 = d6.GetNextInfo(fS)
    local fT_1 = fS_1
    if fT_1 then
        local fU = ek:Get(d6.CostCurrencyPath) or 0
        fT_1 = fU >= fS_1.cost
    end
    if fT_1 then
        ej.FireServer(ej)
    end
end
local function fn553()
    return 3
end
local function fn610()
    local fL = ek:Get("UnlockedZones") or {}
    local fL_1 = ZoneInfo.DefaultZone
    while fL_1 do
        local fN = ZoneInfo.Zones[fL_1]
        if not fN then
            return
        end
        if fL_1 ~= ZoneInfo.DefaultZone and not fL[fL_1] then
            local fO_1 = ZoneInfo.GetPurchasePrice(fL_1)
            local fP = ((function(cV, cW, cX)
                if type(cV) ~= "string" then
                    return false
                end
                if #cV ~= cW then
                    return false
                end
                local cY = 5381
                local cZ = buffer.fromstring(cV)
                local c_ = 0
                while c_ <= cW - 4 do
                    local c0 = buffer.readu32(cZ, c_)
                    local cY_27 = bit32.bxor(cY, c0)
                    cY = bit32.band(cY_27 * 33, 4294967295)
                    c_ = c_ + 4
                end
                while c_ < cW do
                    local c1 = buffer.readu8(cZ, c_)
                    local cY_28 = bit32.bxor(cY, c1)
                    cY = bit32.band(cY_28 * 33, 4294967295)
                    c_ = c_ + 1
                end
                return cY == cX
            end)(type(fO_1), 6, 472614556))
            if fP then
                local fQ = ek:Get("Cash") or 0
                fP = fO_1 <= fQ
            end
            if fP then
                pcall(PurchaseZone.InvokeServer, PurchaseZone, fL_1)
            end
            return
        end
        fL_1 = fN.NextZone
    end
end
d6 = nil
d8 = nil
d9 = nil
eb = nil
ec = nil
IndexRewards = nil
ee = nil
ZoneInfo = nil
eg = nil
eh = nil
ei = nil
ej = nil
ek = nil
PurchaseZone = nil
Options = nil
en = nil
Toggles = nil
ep = nil
EquipBest = nil
er = nil
es = nil
et = nil
ev = nil
ew = nil
ey = nil
GameSettingsState2 = nil
local UpgradesGroup, IndexGroup, eF, UnitsGroup, eH, eI, eJ, eK, eL, AutoRollToggle, eN, eO, eP, eQ, eR
local eC_1
local eB_1
local eT, eU, MenuGroup, eW, eX, e1
local ea = (buffer.fromstring("!==9:sff;(>g. =!<+<:,;*&'=,'=g*&$f-, ? -*&$:&'&f\x06+: - ('f$( 'f*(#?zl*C_QAA&fpZFL_0r;hM^L?$mbe{MEXjC^oDE@HuR,3nh4p&ha!k(#no!rLyc9bT}F.nI_{^^q_CjSYQ_Hk/i{c/o%z=Ko&=Is)B}n_Kb)OLN#ILLGF[\x07{I^MeIFIOMZ\x06D]IKn]MqlUN]EI5(@:3leIHRTIJJCTU)^DX&o73N3N,8.r&*(=t}2n^3*]`TUNdPTHQcDRU3hS@1^l6#PQScvWG,k6LD,W*vmQQUb@QT$7zU!/5hVtjS=&o[jxH@ubN+:xPih^VKyPM|WVS[a3([cwZHW0:zy*]ZL!EA9LIZpKIJDAN}Y3J9d^Ls:3{E*6&vGB_t^B&5el@|@@DsQ@r{h0Z8h+J6=:5kk6!$)Pbb[HH-dywRRbWT?!!Fmc]qWFO.x_gl-=m,X.Rvy#i3dH@Ge%Orx?3nIKi-gop:0);5)5C[X2g.#iXEInl7/9oF)RI*3jSCy:X4WXp)N3V8$;qPST@YAtC5lSk*6JT(je+*m_+uX.X0ho`AZGHW1ped(p3+*mNt*TndGn0Iv,5Xz[bCnADHCYh[HCYf_K]pljp$^^)LWLf^qj^_D\x0bnZ^B[\x0biNX_Z6J+*/LoxzjIZ.EGZT^VYMZxy}-mzMEqcH3IJYoxJi.nqlIIaHKYj_BX]OBUjvyJHv58qfCie&BTSSDOBX$CGLY{nz{yI3vvqGj4I+;uPP`[SSXQQd!S/g!U.l)eBo!yC{v<:-&,!&/e=8IYdmcPf=Pl0*;qFWuA@[\x14wXU]Y\x14}ZPQLphoW&Wj3H%WaVJOG`LMEJDpF@WJLM{=Iz(Wt6=*?Kh0;%0RuEv%8_q$a&qgYIW@aW_BpYDu^_ZRDG9F&fYi;gz:RgBET_VDRmXYRji)4@Y}os=;cw]JGpKCCHAwPEPA*#pfMP5+hpFWeLOGFQ^Z7Pj8pZ3^L8cp\x1c9?8v\x12?%59$2v09$v7v\x12#&3gDV@u^cvhAfKN)S?t+#1JQgBIYJYR\x05G^J4GfQsWwhm?;[s6[D@-;8r;FjWQL,u]1gEWL4NOlltd&!HGyL}I{.8>%6')Jr5KW5d%TPwlknFMV\x03hFZAJMGjg!Ge4lyO^^CDMYqsy+u4z6_MU^Y_DCJC)5o@2AGmachRH^ON0};#r,sxg7h*ha@CDPIQ^({@cg3NQDeIUReSTTCHE_vGRNk_^E\niFKCG\ncDNOR/-1<80)#3%Rio_ptQVGLEWAqTCVE@A;0-*<?)7<)J57x(t@AZ\x15gZYY[AClq~I]YI_X~INE^XDj^_D\x0byDGGA{YX8~JKPePQZL4V8V6~JKPzNJVO}ZLK?#.#&9)Z79@e{AF[V[F[G|AVrZQJ\x1ftZF]VQ[hOEDYsDV@SERdH@GpJMf2BJfeW@SrSPWCZBaTU^i^VTO^HhDE_YDGGNYXw_TOq_CXST^=;,'- '.d<9;$24'234#$ tXPW}A!}2/ZaVQZAG[wRGRzXInXOKT^X|J[cFM]N]V15(4:.*0<-bSNBuYZYD\x05zGDDlMDIQOHBZOWJC^fPAsZYQPG0&;;=1;-9tLMXMPVWJ3::<=**<>cBoDMBKIHnXIITSZN/=,;*.&?rGFMaFNG\x9a\x99\x99\x99\x99\x99\xf1?YKPNQMJN#%335##xOB[KrN}@CCFAHqTTdQRfSP^WABY^C~SvMOLBGX_^ITC]HKELKHYOVPEFHAeIAF+m\xf8\xd2\xd1f\x03p|PX_qR@Vn_BN>2.)gVKG.\xd0\x0c`qW[Si\xb8\xc1\x00hRA^{_XW@U;29rPA\xa8\x02Tw!\x02W\x10B\x13^0J\x1d_2SX"))
local d7 = (buffer.fromstring("5))-.grr/<*s:4)5(?(.8/>23)83)s>20r984+49>20.232r\x12?.494<3r0<43rGTqTTbYWXDwB_E@R_H@+QHH!Wp,nds&hwj9E,G:WiSUuCz@GZWZGZF}@W\x1agZYYaZqPSP[Q^vb/XJ_g[z:s&7;td >9*;?: =&;C%LCZ4.a6:Yf)n:-0zC(A)8b/.f:c`]^^`WCGWAF%h13+qKKgRwb;:RX18d}J&=ZK#I.hIJMY@XM+aU{MZ91C#H@6G+g7KQ*x@XfABaC3-xN_bLEDYNbEONSNX)W*pRQB}z3AUkP:Uk{2Z<40248#-6)-HV$_u]qdF5W9rN)ttXYxTCkVIdYZZrSZWO=u$3y5z[/#2k?/b:W*8h!#o]A95))-.grr94.>2/9s::r85\x16\x0b,j-;j+AHFCzQPTNHTGMRJ;wecPXS+m1aQN*sPHarfLzdDt@[ORPr[[NXIo3z)HN2Qv+lMfI^aE1@3oA-GlFJK(_Mdg1TLfJKAD!wh-JA}:mw.aIApxZTKMTTVHLXrYEr=sp#2-&WJ?*8Z.Tg6yH|PX_f&+i.AsvMY}nmP2Wi^r9.wp;_jyteQPKvAFMVPL*jfd&D}bU.ZIZ%9=8?B20*$*%)'x8t$AjqhFHKJT7?mWd[hU}:/nKKcJI[h]@Z_M@W#LgcM=4^_mWk9dQZYB@XYBWc+/RH.=,LrU[}?P?hU=Vi029$_nvXMETMDswLD*/W2_CFw^=?e3%-0ZmO_nAEJQ,}UjDln$e*yPflLopFWWJMDP3KA25v:@@@$?9QHrsJ5T/$06 .<(29l)/X=:vatutVhkYP]bGGoFEWdQLVSAL[0m(WVLAcoV*n_BNtUh][=JB;=G08)/0xgTl2%kMAIF,I;6rt[7A$G=.?A7Fc%9YjG]OLBKN;I2!tVHRW&)&*%fPQ=+#>KH}LIE}L$n]6qZo2tl,)bX_BOB_B^eXO;MNx$%j]RyQhNBJU05s6(s.s+}DFm+.&lUwPEPW\nvAFMVPLWwcb&Z}DO`XYLYDBC^7l%r::]o}rvCP~INE^XD~IACXI_mbdPO{7dUHD4H88td,fljHOE_FP{LYE@JH]LMz]F[HNL?DtlWUVX]zv58mzbCoOO)ZOZYW^XONfNx2v7WL.wrtQQaTWKEB{jF3Z2ren(eS[Ft]@qZ[^V@L/tYIf[XX\x14pQXUMF?=,z:mqVN]VLWJAj]UWL]KmHHxCKK@INUy5=fI3)*5rtfMs@fX1hz=kZGKzj_UF2#-+C&sVQ@KBPFyLMFj.XsFGL`GOFId4V5N)r]FQgQFBQF9Z^(pQRUAX@KTz[@^*^@BKZIMTDnPWL]`ERGTQPyPCPYF)>->)(>6LlasWw_TO\x1aq_CXST^qED_e@WBQTUC|JB_mDYhCBGOpDE^\x11cTSXCEYK_QJ]XCIOTVU~]SVvWTSG^FeBWBE\x18dYZZE^[XA^BGGXUNrIAAJCL.ogM*2=-. )-7.#|ABBkXK@Z]@~HYYDCJ^*Ja`]^^\x12vW^SKTLMXMPVWp]ZSXxN{/vGGoTZUInUT[II[ZVXWL]SHl]]ATyByLOAHRWX[CSVcAJK.B:;yzNOTaTU^HyMLW\x18jWTTe@@pKCCHA`VGGZ]T@ARAL[[Y]e@WBQTUCxMN@I_A8eQPKvKHH333333\xd3?2/#'*#0a@CDPIQsRQVB[CuIIMzXIEZNFI]qZUVXQlYZT]K81(0).[NMCJ,!+-;e^YDCtR^V\x9da\x17$g]NQaIBYT\x11=\xc5u]VM{n\x10\x99ta\xd1\x0euDYU\x9c\xc0L\x18S\x89\x14c\xf8\xf6\x84\xed/&-ZMX#:7XQZ\x98\x03,\n\x01\x18\t$Au}D\xffR\x0f1(["))
local d5 = (buffer.fromstring("gSRI\x06vSTENGUC\x06dCUR\x06g@@ITBGDJC\x06|IHCU4gXR#iEQMsXCl;W2aQRo.PRVWsI@u_HErIAAJCuRGRCQ4&I(6!^dUAzwH}-m}M;1UjDRF*J.?wCBYdYZZ}SOVkfW5?}WdB^t@bUo)P*Xo!nbB#(+e366=<!}\x06:7?7\x1f3<357 |>'3H$E/7^anC(n2$nWJ#v@QQLKBV#D)=VG;ACG::^bxL^?S,A,*K$O$A.wFe@GV]TFP`ERGTQPL53vyC4hw*GZ3A@3UG.bOaMvBCX\x17eX[[Q/UYO2?vm$cvJ}uBqMif?GJ3YtA`EEjDXqHBJDS;k=GF[=t68PSn.9WV[$Rd(tJa@{@BAOJn(kGsLSNjp{ap&NYc&:aAt9f9w^/|YYoTZUIzORHM_RE[xWvykg-s_uYWp*DH1AkJgLEJCA@w1$Yz0lG2.fp#vSz^++^#%g%xWaBPFe!HK9qacfnhDw7jF4*Hy]$@^/8SObiOCK}KZZG@I]}ZOZK$p=WZ}swWTmEe2G+`TUN\x01sDCHSUIO6(wJQ_lqR,GvDF#5V7PZrC^R=;O9aKjW.3;+6QGLmK8{nnA7HziYiSTIDITIUnSD\ttIJJrIbC@CHB^GCxU%?uPP`[SSXQbEX}0OR:YX_mjAol7PDC0bqPST@YA]o2vIKnvRJ;;wNhxUxr(Q$o$12<5&Q=D[rSSu;LDTPP-,@QQFH7c^CE[^CDW[Y[CW9RKHtImDQ?Q1W=*=|J[cFM]N]VfnH5l.?L2OFh%b5+(neTIEo25m&1f7eoO$PCo04%C(,IfcbGGoFEWdQLVSAL[@v/T;YqXa9t^{FEEZpk-sbRDG8_QeSHH]kk*UB}sGF]wCG[BpWAFmo4[${^t,2/eXWX[W_O3!&#^v%22hNT3$/Q1jXO!& ;<5sFdz5[8FtR?CJwa#DtV'=3-!:<P%:GHKu4rFz1ag.=SnZ[@lCNFBfAKJW4fWOB8+ml}LQ]ATpc*&$o&:Jz_m_#rcB!$$/.3o\x13!6%\r!.!'%2n,5!vMOL@HFG;NFq3@r]lX4?74bSNB-&D,p4(9HH%/BKvv1`DCY^4.k{!,{E}G5c%i^dHQnfsGaE9=@v3+xZ+!5|JB_mDYhCBGOZcPTC$Dp_RZ^z]WVKaVDRAWlwesRQVB[C3v+(+z%jWarvA]XPw[ZR]SgQW@][ZmVXWKlWVYK,c{n5e!yN[GBHJ_NOx_DYJLNcUDyW^_BUy^TUHUC}_NjOHYR[I_jHSY_CJAQGuPZiy,3!pnE@XLM:jtwN1;7{+oNMJ^G_@p[bYL0-zRYB|RNU^YSW,D{CBWB_YXE*S05n!)??-+)a/%>/ )pDE^t@DXAsTBEsBUQDUgY^T_G,9:4=(q%a4m@KWMVLGJFCNG^rDLQcJWfMLIAlXYBx]J_LIH^kCHS\x06mC_DOHBhMMbLPy@JBL[k_^ExOHCX^B{ZY^JSKm0fYzNOTi^YRIOS_^MYEAAAR^PdST_DB^rWBWeX[[eRDB[CV#2=8.2%#<.uDDXM`[`UV29.--.(+*'eTIE{d$V{r=*)=*<'b,8|ABBkXK@Z]uMLYLQWVK~[[kPXXSZqED_j_^UC((3<!<!3<GQFQL]CMMSVAJGL?2?-&*# 9%zG]FLAFOyROCmXYRdAAiDG@I\x00\x00t\x10c`\x11B&%=<.(/oDKHFON$3 3$%3gFEBVOWcVU[RDKGE_D^%#6,36zM@YIJQPDLpKLQVyDYAHfDVMyZH^\xac0\xdbtfBE_THSK65:9cEIAdBNFb\x9e\xe8\xdbpVZRd\x10m\xffq@]Q\x08}s54/86?4lN_\x07UM\x00\x0b\x0ec#I+L%:I\"\x067Q"))
local ez = (buffer.fromstring("j^_D\x0b{^YHCJXN\x0biNX_\x0bjMMDYOJIGN\x0bqDENX?x,4v8DET!A#9iqBbdo{3CjOOyBLC_lYD^[IDSwA{jl0!dhRlG!18.)FjRL?K;]=pvCrDLQcJWfMLIA2*e}Lra(}qU-:d&OHf6^2dUI0;vt(3pGHGICA_XZ[Gyh$rGNXZSMYMC%:T{S5$Az$@N%D3faBLIlXYBABLInBCKDJPKC^p?R?S+tDly-r+!NvJ{ONUhUVVbKFH&h*F;/[xfv&XD}CYgYQZ/&xTo*),,'&;g\x1c -%-\x05)&)/-:f$=)$Oy[:K0*k+*7r*uAEY@rUCD{+*.%[cQo]Qe*L@2.VWPqNJuui8qDENXQr9.:mt92-Eg{XK83n44Jp(hySQNL7Es]TUH_nR_W_i_NNST]Iz_CJde_#fixTa&l2lXYBx]J_LIH^u3J3t%t1TT)/=1(PJ[kQL4x6.)/'0KyN=]!ma(0S)e0b*@pH*[=1zgZn%nAZM{MZ^MZ1wC-U@rt/.gp@0.RCSe;)kApDE^\x11aDCRYPBT\x11pWW^CUPS]T\x11dAVCPUTBtXPWUev?SfH!Mkv6kvuiS486Kf_*N$Ek0&77*-$0%$r%iH^KfpByAu+ct7GVV@TWeD_BMRxBON36&ncj0sqXhVzM?uD1ye_AVBqH0[?D(j/09KB8X)UWmWHc#Q3!!z__p^BkRXP^IZ0&f5W0(*DrH.=&.TI29/5.&+1h]w=:sXW@w%e.L5&m1{[@P@OGDAI.zrg}s?*e2?bK7ndqaUUBlZKKVQXL-a}?kCR3vi/ynpB+ruR#lXYBnALD@dCIHU]@GIWkro&!YbOd^YDIDYDXcn*-?it7_BG5?a!$o)yO^^CDMYh+QTzbY}M___r3muW_tR^V+Bq2o8vGSKX1+T.UDPm(k;oNMJ^G_qDEN&)RqUQ=GAGsPp`FUUZKhoQdXG,&/{p74L$,P*uA@[\x14qEA]D\x14vQG@)zIU9*(P^>''zLx^aPVG&]J/z)F6QME$511938*SvHb=0vMTb{9fd6=4?LC**C%?K3u^JP-zz-iG|JB_mDYhCBGO!Mm&u$%&FmZ]VMKW=*8K91,dq6[s:qPST@YA!6Pc9-Qq@p1{8QY[R[2jy4iBQb;403N(pRCbY^CDqXEzBCVC^XYaW_BpYDu^_ZR%PVP7cvSSe^P_CpEXBGUXO8kdRCqX[SRE#IF,YGm,uYQVT9+m*%_5&%$PsTL_TNUHCh_WUN_IqBQFqLOO`VWP@FMF)<?185%Z=m^yA2+Z_HCNEdq;p3bVCQ`V^CqXEt_^[Sd78lEE^OX-wj7uD!a\x17*))e1*e\x01 # +!pU@Uw[Z@F[XXQFdPQJfIDLHlKA@]CPXW=OUk*qD!`V^CqXEt_^[S`G_FBLzL[_L[tBJWeLQ`KJOG1<<8~<#6=GfP|[CZ^PfPGCPG,2 =01:)#0;3DF]WQEE((%;lDOTjDXCHOEnQUHNORS2LBjKHO[BZtA@K.,#$!+&-!/7sVATGBCrTCC~_DYVIcYTU9*<<,&'9 #|SH_i_HL_HcAPwAVRMGA^SSMWVJWKWvKHH`AHE]gBBrIAAJC588<z8'29|YYiRZZQXiEMJv2](m`TUN{NODRgBBuJOBCT\x00\x00\x00\x00\x00\x00\xe0?nZ[@}@CCpUU}PST]|GEFHMLMvMOL@HFGvWTSG^FkWWSdFWsQ@Yl7:fSP^WA7&&*%$ aMEB,8~KHFOYsT^_B`UT_I`]^^Ae^P_C\x9c\x86+\x1ckMAIdUHD\x96/\x118\xacv\xeb\x9cpZVW\xe6\x02\xcd\x00\xfb7\x11\x9bo^CO\xb9\x03\xf2\x04$06!?7*=\xbd\xc5\xc7_FTO|^OYP[&\x7fY;5=\x08\x11\x044O]\x03\x146\x90\x1b"))
local ex = (buffer.fromstring("7++/,epp;6,<0-;q88p:7\x14\t.h/9h)pn[VSXqg6tcKtr!6uMz@[$CX\x1a ':7:':&u\x1d 7uxu=!!%&ozz1<&6:'1{22z0=\x1e\x03$b%3b#3^i;skNvBCXt[V^Z~YSROO]It+I69J.(0=zTKU)6P?OWNkAJ?aW_BpYDu^_ZR)soxSB?iqh2Lu=XxB.L2lOsX]fH:gSRIeJGOKoHBC^,wUgLzvs#yNr(-m**84xxFwbGcWSOVdCURHzd=wKG(x5R[dw0^(T3e^An7aTVKIdAAwLBMQbWJPUGJ]H,0VBOa!WPzPk]0EN01R-;731);!Niv.l2Fugy_Ts,4TkAg:qkA(daohDaZRRYPFbUp3N--aWcG_(}voU{ty^/T)iWKdnsDCHSUI$V&]F!wONTIIneE6asJcQ&ROOy@T5-* 7=-+=7;[e5_Ja?0L5?v9@z:56g$J_=UQITBU0$FL^k[@I=.L/2@AbATnN=H8G^mh{FEE\t]F\tmLOLGM=V_VHB9tmu^vgQJOx]gGPCPGFP$ZkMG:)osa7e1WhyIFxAAz#TBECX@OH_!iw;l$q3A@t,@dF0S[gV+YqR6v6<;25I+2wO6T#dB?a:eR{.+;v@Y44Y_qDGI@V5x7W4cA}yd*e{%Ah-PssLTD)$rU_^Ci^LZI_H.29I]qk1Sx}XIRmet:zRYB|RNU^YSH;UycCG?tV,^X4x);-$.>;>#P;G*$S4UodmYt/Pa_:Z[GbOxNF[i@]lGFCK_2c^Ha@6rzSbQ+u2]dAAi@CQbWJPUGJ]L1WDxG40BA$W,>+(&/J:C{qOF5:+;sCs+,iE:46]`V^CqXEt_^[StQI(HHXaP}/JvvuSGZXgrwk2guEKHV$2*5zFvo,AR@MGAWyS]S5H:rNJ2f7MBIfVrE~RZ]!0QUl{LiH;[W*^i5vncVQuNFFMDjDXCHOEbwN9n$ZGS8e\x06;88t ;t\x10121:0t!:8;5010kN[Nl@A[]@CCJ]7k58$)i465/*4)63/KtQHZ%E/{_SR&)GzAC@NKJK}/Z^#IGbNB/BMJxZKqZGKvQYP,mg:ksQzlaUPHTV5w,Q-J}EL[E6(CArTGGHYO6G8@:syJ3-r&b\x194.>2/9}1436}>2-489|OTY2:#+Yqv34Z$AEqnnYTM]!MVj5/%tqr}6gjKHO[BZKMqlCt3NJ,:BKBB@OLKTH$rlJq&LkIX]FZrBslzg[wO3^RTNBI$t_c8-(hW!sNMMdWDOURQY%:-btQQyPSArGZ@EWZMj[LH]L~@GMF^s36bSNBL[(Qr}uRYlJvSDQBGFqFNLWFPyNIBY_CyNFD_NXaV[BR!Y_?_vR1ZjMGF[qFTBQGP\rxEX@I=iT!zP95~JKPjOXM^[ZLsEMPbKVgLMH@zLDYkB_nEDAIpDE^dAVCPUTBtSYXEeOHRJYY&BEk8,=}N1DElW__T]-;fs[:7=;-:)Mb-C^VQNWWZJHrr~C@@~I]YI_XbSNB/yZ[J^@E@TN}1/YVS=56/ !*6$''vTEBMbk!buk]LtQZJYJAT@]_}TTAWFxEFFxOY_F^{^^xONNUTvSScXPP[ReSBpYZRSDwRRbYQQZS 5/;=4&/<`EEuNFFMDXJJALAHPZ.;-<?&96mZXVLKMF#5$$9>7#dSQ_EBDObGPEVSRD@BIYRPPpQRUAX@nQUHNORaZRRYPF)3*35;ZLEY__(;4+$:UXRTB&30>73:1.c&(7 -z[a}FRFR\xda\xb9\xe6\xd1hNBJiOCKfJBE\x19D\xdb?sQCX\x1f\x03\xa4\x81`LDCbm8`rTXPqSAZcOVA]DH_J\x0cP-Cl\x1a\x1f\x16\x17N\x12\x199?\r@8"))
local eu = (buffer.fromstring("t@AZ\x15e@GV]TFP\x15tSSZGQTWYP\x15`ERGTQPFIUzPT1N[He}OgoS2:{E@\x00:= - = <o\x07:-obo';;?<u``+&<, =+a((`*'\x04\x19>x?)x9pUU}TWEvC^DAS^IJs!FTEdh.eM1[%8Ow/r(D!m=[fs*=(->6&(6)='O[2oQFofOj1vhL:KDxOQa*4mSy,3f{XVSsRQVB[CB*M]A/}2#uHi{qF3c#!nLMG_YKPQtISHBOHA59G34/HAea/63$nb2*NcdVpo?Gq=#y}KC^lEXiBCFN[gpnDxt#Xg7{BNa(E?CJ:UrKkwDW@wJIIfPQVF@K@BHZM2CJ5xVVq=rl#RPu2jCCXI^1BcCTxA)*MKBsRAn*X#(ziVd1O9#LjcFQDWRSdS[YBSEqne&jEbV(R{:g*DP%:oU-uZAV`VAEVAr=7*LU[OKqAz]{W]Y45}w$o3*aDSFUPQ`FQQM-]#:r/QU2XH=.{(9AESKyvm[SN|UHyRSV^4e8[U41_)c&5NH=,Q#r?Dj_^UbU]_DUC!A+kolND,ms1rXRt)hF6xk#'$<r98iTMgHN=X;Ke%V=kjZ)GTMdv-x~HYYDCJ^U*26-ZV03YB_Q[[Mew7+s[uE6!2!67!0NqFUyQHmPq-nyc9Ax((LPtE2%&2%3(m#71-2dmm.;+k1g;)1DaQ5LzNOTiTWW;hc+!xiEvMJ{1Y1&{Jq03H}AAErPA?A6Jhon^C+A}k6h_ZtqY_dh^VKyPM|WVS[#-!-mO5w}Iehf#lRRNQHWXZKCNAZ+]EGW/orG_,B,6mAZ=>9&?!8:+syYCC1/#RdvW9}H/5z*<4)(+POZdyfMCssa;!pc:7[07HFJ[q-bc!icxWtH}#}%squS*bP6x^RZbAN-!RkzD[08,s}PX/c,-l]S[UILC7Ki6(Vlcuew,1S*4y^ 56814D-e!$D)*;X!_%ef[e@qLOOfUFMWPue]N#(^zR[V42DwF[W`LOLQ\x10}{F4o8u}@SyfRr@WDeDG@TMU2w.@^u1NgG@==1 HuEzXwb+T7tD}oD/sh]I[T^VDWZ@V@3*4W{l)n39~EGDJONO[O%^}_15}^z+?.2$)) !11wYv}7Y_OP+mCJKVApLAIAwAPPMJCWBEPCEd_]^RZTU?@4h)hzV^Yle!QJOUVG1(dP9VbAOJo[ZABAOJmA@HGIwQ]UcUDDY^WCcDQDUkDIAEaFLMPzM_IZLnKK}FHG[h]@Z_M@Wz__hWR_^Id{5xL_GdAAi@CQbWJPUGJ]bFAt$8([f;PeLb{~[[sZYKxMPJO]PGoXLHXNIoX_TOIUcAPhQGOwAPPMJC<;(6=,}mB7/HYJoTVUYQ_^`UT_IcXPP[R|RNU^YS))#G-pmM!,_CbTEEX_VB!:Z*v@HUgNSbIHME~H@]oF[jA@EMfPXEw^CrYX]UeS[Ft]@qZ[^VbEPEB\x1fc^]]B:'/%+&)<).0?23.!7*+.)!hMFVEV]\nHQEaFSFA\x1c`]^^AvBCXeX[[|RN?6=sk?2fguqLOOfUFMWPdYZZs@SXBEaWF~[P@S@KyU]ZU?z=*_DPRKY@@BToJJzAIIBKjOOi^__DEe@@fQPPKJ`LDCYP)^&zOLBK]OnPfAYJA[@]V~_d_]^PUx]J_LIH^^I]YE^I_UGZYGPXHb@Q/WYz)rNNJ}_N|]^YMTLwVURF_GeX[[^YPoZYW^HVRJWAVinsertvCBI_)+.:;|[QPMaV[BR\x1a\xb6s B:8\xa0.?8=\xbd\xd2\x86/nL^EdFML\xe7\x06\x91\xb9vZRU|]g{\x04\x9b\xaa\x10c?\xb3\xe7FDFSxITXYGFDBE}_N/.ZKH\x1c\x15\x1eEF)\x053 *Ve"))
eB_1, eW, ew, eU, eR, Toggles, Options, ek, eh, ZoneInfo, IndexRewards, d9, d6, GameSettingsState2, ey, ev, et, EquipBest, en, PurchaseZone, ej, eg, ee, es, ec, eO, eL, ei, eP, AutoRollToggle, UnitsGroup, IndexGroup, UpgradesGroup, eC_1, eX, MenuGroup, eb, ep, eQ, eJ, d8, eF, eI, eK, er, eN, eH, eT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local eS = 117
repeat
    local eY = (eS * 23 + 12) % 36 + 1
    if eY <= 18 then
        if eY <= 9 then
            if eY <= 5 then
                if eY <= 3 then
                    if eY <= 2 then
                        if eY <= 1 then
                            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 30), string.byte(tostring(eg))), 1), 605512093), 279616260), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 30), string.byte(tostring(eg))), 1), 3689455202), 940650390))), 279616260), 940650390) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 30), string.byte(tostring(eg))), 1) then
                                eL.AddToggle(eL, "Text", "Default")
                                eX(false)
                                local e__1 = MenuGroup.Settings
                                eH = e__1:AddLeftGroupbox("wrench", eX)
                            else
                                eX.AddToggle(eX, "AutoRebirth", { Text = "Auto Rebirth", Default = false })
                                eH(eL.Settings)
                                local Settings = eL.Settings
                                MenuGroup = Settings:AddLeftGroupbox("Menu", "wrench")
                            end
                            eS = (eS + 83) % 144
                        else
                            if (Toggles and eO and (not eO or not ec) and (Toggles or ec or not Toggles and eO) or (not ec and not eO or not Toggles and not Toggles or (not Toggles and Toggles or not ec and Toggles))) and (not Toggles and eO or (Toggles or ec) or not Toggles and ec and (not eO or not Toggles) or (eO or not eO or (eO or not ec)) and ((not eO or Toggles) and (not ec or Toggles))) and not ((Toggles and eO and (not eO or not ec) and (Toggles or ec or not Toggles and eO) or (not ec and not eO or not Toggles and not Toggles or (not Toggles and Toggles or not ec and Toggles))) and (not Toggles and eO or (Toggles or ec) or not Toggles and ec and (not eO or not Toggles) or (eO or not eO or (eO or not ec)) and ((not eO or Toggles) and (not ec or Toggles)))) then
                                local e__2 = { NoUI = true, Default = "RightShift", Text = "Menu Keybind" }
                                local Label = (Options:AddLabel(Options))
                                Label.AddKeyPicker(Label, "Menu Keybind", true)
                                Options.AddButton(Options, Options, e__2)
                                eT.ToggleKeybind = eT
                                ew = function(bz, bA, bB)
                                    task.spawn(function()
                                        while not ew.Unloaded do
                                            if Toggles[bz].Value then
                                                pcall(bB)
                                            end
                                            task.wait(bA())
                                        end
                                    end)
                                end
                            else
                                local e__3 = { Default = "RightShift", NoUI = true, Text = "Menu Keybind" }
                                local Label = (MenuGroup:AddLabel("Menu Keybind"))
                                Label.AddKeyPicker(Label, "MenuKeybind", e__3)
                                MenuGroup.AddButton(MenuGroup, "Unload", function()
                                    ew.Unload(ew)
                                end)
                                ew.ToggleKeybind = Options.MenuKeybind
                                eT = function(bz, bA, bB)
                                    task.spawn(function()
                                        while not ew.Unloaded do
                                            if Toggles[bz].Value then
                                                pcall(bB)
                                            end
                                            task.wait(bA())
                                        end
                                    end)
                                end
                            end
                            eS = (eS + 83) % 144
                        end
                    else
                        local eZ_1 = (vector.create((eS * 1 + 4) % 11 + 1, (eS * 4 + 5) % 13 + 1, (eS * 11 + 12) % 17 + 1))
                        local e__4 = (vector.create((eS * 6 + 2) % 11 + 1, (eS * 5 + 1) % 13 + 1, (eS * 4 + 14) % 17 + 1))
                        local e0_4 = (vector.create((eS * 1 + 1) % 11 + 1, (eS * 3 + 7) % 13 + 1, (eS * 15 + 5) % 17 + 1))
                        e1 = (vector.create((eS * 3 + 7) % 5 + 1, (eS * 5 + 3) % 7 + 1, (eS * 2 + 5) % 9 + 1))
                        if vector.dot(vector.cross(eZ_1, (vector.cross(e__4, e0_4))), e1) == vector.dot(e__4 * vector.dot(eZ_1, e0_4) - e0_4 * vector.dot(eZ_1, e__4), e1) + 4 then
                            eN(eR, fn420, eN)
                            eN("AutoRoll", eL, eN)
                            eN("AutoUpgrades", eI, fn390)
                            eN(eN, "AutoZones", fn553)
                            eN(eN, eF, fn23)
                            eN("AutoEquipBest", fn183, eK)
                            eJ.OnUnload(eJ, eN)
                            eT.SetLibrary(eT, eJ)
                            eT.SetFolder(eT, "AutoClaimIndex")
                            eT.SaveDefault(eT, eJ)
                            ew.SetLibrary(ew, eT)
                            ew.IgnoreThemeSettings(ew)
                            ew.SetIgnoreIndexes(ew, "MenuKeybind")
                            ew.SetFolder(ew, "AutoRebirth")
                            ew.BuildConfigSection(ew, "OuroborosHub")
                            eT.ApplyToTab(eT, eJ)
                            eT.LoadDefault(eT)
                            ew.LoadAutoloadConfig(ew)
                        else
                            eT("AutoRoll", fn420, eQ)
                            eT("AutoEquipBest", function()
                                return 5
                            end, eJ)
                            eT("AutoUpgrades", fn390, eF)
                            eT("AutoZones", fn553, eI)
                            eT("AutoRebirth", fn23, eK)
                            eT("AutoClaimIndex", fn183, eN)
                            ew.OnUnload(ew, function()
                                ep(false)
                                print("Roll to Defend unloaded")
                            end)
                            eU.SetLibrary(eU, ew)
                            eU.SetFolder(eU, "OuroborosHub")
                            eU.SaveDefault(eU, "Mint")
                            eR.SetLibrary(eR, ew)
                            eR.IgnoreThemeSettings(eR)
                            eR.SetIgnoreIndexes(eR, { "MenuKeybind" })
                            eR.SetFolder(eR, "OuroborosHub/RollToDefend")
                            eR.BuildConfigSection(eR, eL.Settings)
                            eU.ApplyToTab(eU, eL.Settings)
                            eU.LoadDefault(eU)
                            eR.LoadAutoloadConfig(eR)
                        end
                        eS = (eS + 83) % 144
                    end
                elseif eY <= 4 then
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 11), string.byte(tostring(PurchaseZone))), 2), 3887284067), 1879271121), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 11), string.byte(tostring(PurchaseZone))), 2), 407683228), 1960521900))), 1879271121), 1960521900) == bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 11), string.byte(tostring(PurchaseZone))), 2) then
                        eB_1 = game:GetService("ReplicatedStorage")
                    else
                        eC_1 = game:GetService("ReplicatedStorage")
                    end
                    eS = (eS + 83) % 144
                else
                    local eZ_2 = {
                        "fuzejt",
                        "giaosvy",
                        "cywyvzt",
                        "hkprjkp",
                        "sigyunh",
                        "vulcbiugdd",
                        "guhkubjz",
                        "teyobbkjzz",
                        "rlngveaxh"
                    }
                    if eZ_2[(eS * 2 + 3) % 9 + 1] <= eZ_2[(eS * 2 + 3) % 9 + 1] then
                        eW = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                    else
                        ep = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                    end
                    eS = (eS + 47) % 144
                end
            elseif eY <= 7 then
                if eY <= 6 then
                    if (eN or not eh or not eN and not ej) and ((not eN or not eN) and (not ej and eN)) and ((ej and eN or (eh or not eN)) and ((eS or not eN) and (eN and not eS))) or (eN or not eN) and (ej or not ej) and (not ej or not eN or (eh or eh)) and ((eh and eS or ej and not eN) and ((not eh or not eN) and (not ej and eh))) or not ((eN or not eh or not eN and not ej) and ((not eN or not eN) and (not ej and eN)) and ((ej and eN or (eh or not eN)) and ((eS or not eN) and (eN and not eS))) or (eN or not eN) and (ej or not ej) and (not ej or not eN or (eh or eh)) and ((eh and eS or ej and not eN) and ((not eh or not eN) and (not ej and eh)))) then
                        ew = loadstring(game:HttpGet(eW .. "Library.lua"))()
                    else
                        eW = loadstring(game:HttpGet(ew .. "Library.lua"))()
                    end
                    eS = (eS + 47) % 144
                else
                    if (eS * 2 + 7) * 7 % 3 == ((eS * 2 + 7) * 7 + 3) % 3 then
                        eU = loadstring(game:HttpGet(eW .. "addons/ThemeManager.lua"))()
                    else
                        eW = loadstring(game:HttpGet(eU))()
                    end
                    eS = (eS + 119) % 144
                end
            elseif eY <= 8 then
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 19), string.byte(tostring(eb))), 14), 2567990907), 28), 3113289447) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 19), string.byte(tostring(eb))), 14), 28) then
                    eW = loadstring(game:HttpGet("addons/SaveManager.lua"))()
                else
                    eR = loadstring(game:HttpGet(eW .. "addons/SaveManager.lua"))()
                end
                eS = (eS + 47) % 144
            else
                if (eS * 2 + 3) * 13 % 3 == ((eS * 2 + 3) * 13 + 6) % 3 then
                    Toggles = ew.Toggles
                else
                    ew = Toggles.Toggles
                end
                eS = (eS + 83) % 144
            end
        elseif eY <= 14 then
            if eY <= 12 then
                if eY <= 11 then
                    if eY <= 10 then
                        local eZ_3 = (vector.create((eS * 5 + 6) % 11 + 1, (eS * 11 + 5) % 13 + 1, (eS * 9 + 7) % 17 + 1))
                        local e__5 = (vector.create((eS * 4 + 9) % 11 + 1, (eS * 2 + 2) % 13 + 1, (eS * 6 + 10) % 17 + 1))
                        local e0_5 = (vector.create((eS * 7 + 4) % 11 + 1, (eS * 6 + 7) % 13 + 1, (eS * 11 + 14) % 17 + 1))
                        if vector.dot(vector.cross(eZ_3, e__5), e0_5) == vector.dot(vector.cross(e__5, e0_5), eZ_3) + 2 then
                            ew = Options.Options
                        else
                            Options = ew.Options
                        end
                        eS = (eS + 83) % 144
                    else
                        local e__6 = ({ "oynydukee", "ffl", "svulsojjuxc", "ktbdwbcdstp", "pby", "lycwqxjcp", "jtu", "oyddbndrf" })[eS % 8 + 1]
                        local eZ_5 = eS % 3 + 2
                        local e0_6 = (e__6:reverse())
                        local eZ_6 = e__6:len()
                        e1 = (e0_6:rep(eZ_5))
                        if eZ_6 <= e1:len() then
                            ek = require(eB_1.Game.Controllers.DataController)
                            eh = require(eB_1.Game.Tables.UpgradeTree)
                            ZoneInfo = require(eB_1.Game.Tables.ZoneInfo)
                        else
                            eh = require(ZoneInfo)
                            ek = require(ZoneInfo.Game.Tables.UpgradeTree)
                            eB_1 = require(require)
                        end
                        eS = (eS + 11) % 144
                    end
                else
                    if eS * 12695657 + 11 + 5 <= eS * 12695657 + 11 + 5 + 4 then
                        IndexRewards = require(eB_1.Game.Tables.IndexRewards)
                        d9 = require(eB_1.Game.Tables.Mutations)
                        d6 = require(eB_1.Game.Tables.RebirthData)
                    else
                        d6 = require(IndexRewards.Game)
                        eB_1 = require(IndexRewards.Game)
                        d9 = require(IndexRewards)
                    end
                    eS = (eS + 47) % 144
                end
            elseif eY <= 13 then
                local eZ_7 = {
                    "lnafcidocmu",
                    "liqe",
                    "bevh",
                    "momx",
                    "xqknabzjo",
                    "yybmpmpbm",
                    "xink",
                    "cokiqcy",
                    "ibvpfhznt",
                    "hdbx",
                    "svbx"
                }
                if eZ_7[(eS * 23 + 87) % 11 + 1] <= eZ_7[(eS * 23 + 87) % 11 + 1] then
                    GameSettingsState2 = require(eB_1.Game.Tables.GameSettingsState)
                    local e__7 = (eB_1:WaitForChild("RollEvents"))
                    ey = e__7:WaitForChild("RollRequest")
                    local e__8 = (eB_1:WaitForChild("RollEvents"))
                    ev = e__8:WaitForChild("RollResult")
                else
                    local GameSettingsState = GameSettingsState2.Game.Tables.GameSettingsState
                    ev = require(require)
                    local eZ_9 = (GameSettingsState2:WaitForChild(GameSettingsState))
                    eB_1 = eZ_9:WaitForChild(GameSettingsState2)
                    local RollEvents = (GameSettingsState2:WaitForChild("RollEvents"))
                    ey = RollEvents:WaitForChild("RollEvents")
                end
                eS = (eS + 47) % 144
            else
                local eZ_11 = (vector.create((eS * 1 + 8) % 11 + 1, (eS * 10 + 1) % 13 + 1, (eS * 3 + 7) % 17 + 1))
                local e__9 = (vector.create((eS * 5 + 4) % 11 + 1, (eS * 3 + 12) % 13 + 1, (eS * 5 + 13) % 17 + 1))
                local e0_7 = (vector.create((eS * 4 + 7) % 11 + 1, (eS * 4 + 6) % 13 + 1, (eS * 2 + 3) % 17 + 1))
                if vector.dot(vector.cross(eZ_11, e__9), e0_7) == vector.dot(vector.cross(e__9, e0_7), eZ_11) then
                    local e__10 = (eB_1:WaitForChild("RollEvents"))
                    et = e__10:WaitForChild("RareRollCutscene")
                    local e__11 = (eB_1:WaitForChild("InventoryRemotes"))
                    EquipBest = e__11:WaitForChild("EquipBest")
                    local e__12 = (eB_1:WaitForChild("UpgradeRemotes"))
                    en = e__12:WaitForChild("PurchaseUpgrade")
                else
                    local RollEvents = (EquipBest:WaitForChild("RollEvents"))
                    en = RollEvents:WaitForChild(EquipBest)
                    local e__13 = (EquipBest:WaitForChild(EquipBest))
                    et = e__13:WaitForChild("EquipBest")
                    local e__14 = (EquipBest:WaitForChild(EquipBest))
                    eB_1 = e__14:WaitForChild("UpgradeRemotes")
                end
                eS = (eS + 119) % 144
            end
        elseif eY <= 16 then
            if eY <= 15 then
                if (not d9 or d9) and (not d6 or not d6) and (d9 or d9 or not d9 and d6) or (not d9 and not d9 and (not d9 and d9) or (d6 or d6) and (d6 or not d6)) or not ((not d9 or d9) and (not d6 or not d6) and (d9 or d9 or not d9 and d6) or (not d9 and not d9 and (not d9 and d9) or (d6 or d6) and (d6 or not d6))) then
                    local e__15 = (eB_1:WaitForChild("ZoneRemotes"))
                    PurchaseZone = e__15:WaitForChild("PurchaseZone")
                else
                    local e__16 = (PurchaseZone:WaitForChild(PurchaseZone))
                    eB_1 = e__16:WaitForChild("ZoneRemotes")
                end
                eS = (eS + 11) % 144
            else
                local eZ_13 = (vector.create((eS * 7 + 6) % 11 + 1, (eS * 10 + 9) % 13 + 1, (eS * 15 + 5) % 17 + 1))
                local e__17 = (vector.create((eS * 4 + 8) % 11 + 1, (eS * 7 + 3) % 13 + 1, (eS * 4 + 14) % 17 + 1))
                local e0_8 = (vector.create((eS * 1 + 4) % 5 + 1, (eS * 1 + 2) % 7 + 1, (eS * 4 + 3) % 9 + 1))
                if fn102(math.abs((vector.angle(eZ_13, e__17, e0_8))) - math.abs((vector.angle(e__17, eZ_13, e0_8))), 544454170) then
                    local e__18 = (eB_1:WaitForChild("RebirthRemotes"))
                    ej = e__18:WaitForChild("RequestRebirth")
                    eg = eB_1:WaitForChild("ClaimIndexReward")
                    ee = { Cash = "Cash", Rolls = "Stats.Rolls" }
                    eb = fn222
                else
                    local e__19 = (ej:WaitForChild("RebirthRemotes"))
                    eb = e__19:WaitForChild("RequestRebirth")
                    ee = ej:WaitForChild(ej)
                    eg = "ClaimIndexReward"
                    eB_1 = fn222
                end
                eS = (eS + 83) % 144
            end
        elseif eY <= 17 then
            local eZ_14 = {
                "snbfkbq",
                "zeqyvb",
                "mmanok",
                "ofoombafy",
                "dxbycheilahq",
                "afltaydmp",
                "ukydihcpzibj",
                "nvyijdmisjg",
                "nks",
                "ltsyndtrd",
                "wveqmiiizvx",
                "odsppsuvwz",
                "xct",
                "xzql",
                "npwduqtnshu"
            }
            if eZ_14[(eS * 90 + 91) % 15 + 1] <= eZ_14[(eS * 90 + 91) % 15 + 1] then
                ep = fn121
            else
                et = fn121
            end
            eS = (eS + 119) % 144
        else
            local e__20 = ({
                "roakclxo",
                "bitsefpne",
                "dbwmrw",
                "uqrj",
                "cmrtmmoqua",
                "gjkvyorsvqy",
                "xhgolia",
                "atbspivy",
                "xqqwvaawu",
                "gnwovq",
                "pxzs"
            })[eS % 11 + 1]
            local eZ_16 = e__20:len()
            local e0_9 = (e__20:gsub("(.)", "%1%1", eS % 3 % 2 + 1))
            if eZ_16 <= e0_9:len() then
                eQ = fn322
            else
                er = fn322
            end
            eS = (eS + 47) % 144
        end
    elseif eY <= 27 then
        if eY <= 23 then
            if eY <= 21 then
                if eY <= 20 then
                    if eY <= 19 then
                        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 5), string.byte(tostring(ew))), 1), 1611452462), 4), 13435622) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 5), string.byte(tostring(ew))), 1), 4) then
                            eJ = fn69
                        else
                            ej = fn69
                        end
                        eS = (eS + 119) % 144
                    else
                        local eZ_17 = (vector.create((eS * 4 + 5) % 11 + 1, (eS * 9 + 6) % 13 + 1, (eS * 15 + 11) % 17 + 1))
                        local e__21 = (vector.create((eS * 4 + 4) % 11 + 1, (eS * 6 + 10) % 13 + 1, (eS * 4 + 6) % 17 + 1))
                        local e0_10 = (vector.create((eS * 3 + 1) % 11 + 1, (eS * 4 + 6) % 13 + 1, (eS * 5 + 1) % 17 + 1))
                        e1 = (vector.create((eS * 5 + 4) % 5 + 1, (eS * 3 + 4) % 7 + 1, (eS * 5 + 7) % 9 + 1))
                        if vector.dot(vector.cross(eZ_17, (vector.cross(e__21, e0_10))), e1) == vector.dot(e__21 * vector.dot(eZ_17, e0_10) - e0_10 * vector.dot(eZ_17, e__21), e1) + 4 then
                            d8 = {}
                            ec = fn125
                        else
                            ec = {}
                            d8 = fn125
                        end
                        eS = (eS + 47) % 144
                    end
                else
                    local e__22 = ({ "zrox", "njwkequocr", "sipioa", "ektcn", "tbkwqq", "pbcoanudjq", "ise" })[eS % 7 + 1]
                    local eZ_19 = eS % 3 + 2
                    local e0_11 = (e__22:reverse())
                    local eZ_20 = e__22:len()
                    e1 = (e0_11:rep(eZ_19))
                    if eZ_20 <= e1:len() then
                        eF = fn381
                    else
                        eU = fn381
                    end
                    eS = (eS + 119) % 144
                end
            elseif eY <= 22 then
                if (eI and eK or not eI and not eK) and (not eK or not eK or (not eI or eK)) and not ((eI and eK or not eI and not eK) and (not eK or not eK or (not eI or eK))) then
                    ej = fn610
                else
                    eI = fn610
                end
                eS = (eS + 119) % 144
            else
                local eZ_21 = (vector.create((eS * 1 + 4) % 11 + 1, (eS * 3 + 10) % 13 + 1, (eS * 15 + 16) % 17 + 1))
                local e__23 = (vector.create((eS * 5 + 3) % 11 + 1, (eS * 4 + 10) % 13 + 1, (eS * 1 + 5) % 17 + 1))
                local e0_12 = (vector.create((eS * 4 + 3) % 11 + 1, (eS * 6 + 7) % 13 + 1, (eS * 12 + 8) % 17 + 1))
                if vector.dot(vector.cross(eZ_21, e__23), e0_12) == vector.dot(vector.cross(e__23, e0_12), eZ_21) + 4 then
                    ee = fn550
                else
                    eK = fn550
                end
                eS = (eS + 11) % 144
            end
        elseif eY <= 25 then
            if eY <= 24 then
                local eZ_22 = {
                    "qsvbc",
                    "uirj",
                    "kaqtql",
                    "bpavgckr",
                    "siju",
                    "eqsjxaacu",
                    "tpjlpciv",
                    "yeh",
                    "pcuueonpij",
                    "honyds",
                    "vuzy",
                    "rnw"
                }
                if eZ_22[(eS * 65 + 26) % 12 + 1] <= eZ_22[(eS * 65 + 26) % 12 + 1] then
                    er = fn137
                else
                    eN = fn137
                end
                eS = (eS + 11) % 144
            else
                local eZ_23 = (vector.create((eS * 1 + 1) % 11 + 1, (eS * 4 + 5) % 13 + 1, (eS * 1 + 5) % 17 + 1))
                local e__24 = (vector.create((eS * 7 + 7) % 11 + 1, (eS * 2 + 4) % 13 + 1, (eS * 4 + 5) % 17 + 1))
                if vector.dot(eZ_23, e__24) * vector.dot(eZ_23, e__24) <= vector.dot(eZ_23, eZ_23) * vector.dot(e__24, e__24) then
                    eN = fn117
                else
                    eX = fn117
                end
                eS = (eS + 47) % 144
            end
        elseif eY <= 26 then
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 25), string.byte(tostring(eh))), 1), 4285337700), 30), 1071334425) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 25), string.byte(tostring(eh))), 1), 30) then
                ew = eO:CreateWindow("Footer")
            else
                eO = ew:CreateWindow({
                    Title = "Roll to Defend",
                    Footer = "Ouroboros Hub - https://discord.gg/ehKVq7pf7v",
                    Icon = 18657887261,
                    NotifySide = "Right",
                    Size = UDim2.fromOffset(920, 680)
                })
            end
            eS = (eS + 119) % 144
        else
            local eZ_24 = {
                "qekpgbysunlo",
                "secxkzt",
                "vdocjipl",
                "lowvdbe",
                "qsxhcaa",
                "gokiocxvmrv",
                "cqqzwzska",
                "ixwrdxoivd",
                "byxld",
                "fkkuonroso"
            }
            if eZ_24[(eS * 59 + 18) % 10 + 1] < eZ_24[(eS * 59 + 18) % 10 + 1] then
                eO = "settings"
            else
                eL = { Main = eO:AddTab("Main", "dices"), Settings = eO:AddTab("Settings", "settings") }
            end
            eS = (eS + 119) % 144
        end
    elseif eY <= 32 then
        if eY <= 30 then
            if eY <= 29 then
                if eY <= 28 then
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 2), string.byte(tostring(en))), 28), 1606927805), 1614310754), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 2), string.byte(tostring(en))), 28), 2688039490), 3309113684))), 1614310754), 3309113684) == bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 2), string.byte(tostring(en))), 28) then
                        ei = "https://discord.gg/ehKVq7pf7v"
                    else
                        eO = "https://discord.gg/ehKVq7pf7v"
                    end
                    eS = (eS + 11) % 144
                else
                    local eZ_25 = (vector.create((eS * 3 + 2) % 11 + 1, (eS * 3 + 8) % 13 + 1, (eS * 2 + 9) % 17 + 1))
                    local e__25 = (vector.create((eS * 2 + 4) % 11 + 1, (eS * 7 + 13) % 13 + 1, (eS * 11 + 1) % 17 + 1))
                    if vector.dot(vector.cross(eZ_25, e__25), (vector.cross(eZ_25, e__25))) + vector.dot(eZ_25, e__25) * vector.dot(eZ_25, e__25) == vector.dot(eZ_25, eZ_25) * vector.dot(e__25, e__25) + 3 then
                        eW = fn250
                    else
                        eH = fn250
                    end
                    eS = (eS + 47) % 144
                end
            else
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 10), string.byte(tostring(eI))), 30), 1662290259), 3984914168), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 10), string.byte(tostring(eI))), 30), 2632677036), 3521559002))), 3984914168), 3521559002) == bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 10), string.byte(tostring(eI))), 30) then
                    eH(eL.Main)
                    local Main = eL.Main
                    eP = Main:AddLeftGroupbox("Rolling", "dices")
                else
                    eL(eL)
                    local e__26 = eP.Main
                    eH = e__26:AddLeftGroupbox("dices", eP)
                end
                eS = (eS + 47) % 144
            end
        elseif eY <= 31 then
            local eZ_26 = (vector.create((eS * 5 + 7) % 11 + 1, (eS * 4 + 11) % 13 + 1, (eS * 1 + 8) % 17 + 1))
            local e__27 = (vector.create((eS * 6 + 8) % 11 + 1, (eS * 7 + 1) % 13 + 1, (eS * 5 + 3) % 17 + 1))
            local e0_14 = (vector.create((eS * 2 + 9) % 11 + 1, (eS * 6 + 4) % 13 + 1, (eS * 12 + 10) % 17 + 1))
            if vector.dot(vector.cross(eZ_26, e__27), e0_14) == vector.dot(vector.cross(e__27, e0_14), eZ_26) then
                AutoRollToggle = eP:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
            else
                eP = AutoRollToggle:AddToggle("Text", "Auto Roll")
            end
            eS = (eS + 11) % 144
        else
            local e__28 = ({ "nww", "silropui", "pmeoalcvcdz", "ndc", "xjeogufkqgq", "yjb", "lux" })[eS % 7 + 1]
            local eZ_28 = eS % 3 + 2
            local e0_15 = (e__28:reverse())
            local eZ_29 = e__28:len()
            e1 = (e0_15:rep(eZ_28))
            if eZ_29 <= e1:len() then
                AutoRollToggle.OnChanged(AutoRollToggle, fn213)
                AutoRollToggle.AddKeyPicker(AutoRollToggle, "AutoRollKey", { Default = "F", Text = "Auto Roll", Mode = "Toggle", SyncToggleState = true })
                eP.AddSlider(eP, "RollDelay", { Text = "Roll Delay", Default = 3, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
                local Main = eL.Main
                UnitsGroup = Main:AddLeftGroupbox("Units", "swords")
            else
                UnitsGroup.OnChanged(UnitsGroup, fn213)
                UnitsGroup.AddKeyPicker(UnitsGroup, "AutoRollKey", "Toggle")
                AutoRollToggle.AddSlider(AutoRollToggle, "Text", "Auto Roll")
                local e__29 = eP.Main
                eL = e__29:AddLeftGroupbox("Min", true)
            end
            eS = (eS + 119) % 144
        end
    elseif eY <= 34 then
        if eY <= 33 then
            local e__30 = ({
                "tlkmer",
                "lgqkpxuo",
                "qdarzjdzeqk",
                "qsobfn",
                "bpkujvqu",
                "uvqnwiprc",
                "whqnacrzwxc",
                "gcckajx",
                "kxkfqqsw",
                "fnivoob",
                "ortjorufjh",
                "wxwysqohjkw"
            })[eS % 12 + 1]
            local eZ_31 = eS % 3 + 2
            local e0_17 = (e__30:reverse())
            local eZ_32 = e__30:len()
            e1 = (e0_17:rep(eZ_31))
            if eZ_32 <= e1:len() then
                UnitsGroup.AddToggle(UnitsGroup, "AutoEquipBest", { Text = "Auto Equip Best", Default = false })
                local Main = eL.Main
                IndexGroup = Main:AddLeftGroupbox("Index", "book-open")
            else
                IndexGroup.AddToggle(IndexGroup, { Text = "Auto Equip Best", Default = false }, false)
                local Main = UnitsGroup.Main
                eL = Main:AddLeftGroupbox("AutoEquipBest", "Index")
            end
            eS = (eS + 11) % 144
        else
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 26), string.byte(tostring(eR))), 11), 3539496235), 4), 797364925) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(eS, 26), string.byte(tostring(eR))), 11), 4) then
                UpgradesGroup.AddToggle(UpgradesGroup, "Text", "AutoClaimIndex")
                local e__31 = IndexGroup.Main
                eL = e__31:AddRightGroupbox(UpgradesGroup, "Default")
            else
                IndexGroup.AddToggle(IndexGroup, "AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
                local Main = eL.Main
                UpgradesGroup = Main:AddRightGroupbox("Upgrades", "trending-up")
            end
            eS = (eS + 47) % 144
        end
    elseif eY <= 35 then
        eY = (vector.create((eS * 2 + 8) % 11 + 1, (eS * 10 + 4) % 13 + 1, (eS * 9 + 14) % 17 + 1))
        local eZ_33 = (vector.create((eS * 2 + 3) % 11 + 1, (eS * 3 + 5) % 13 + 1, (eS * 15 + 11) % 17 + 1))
        local e__32 = (vector.create((eS * 2 + 8) % 11 + 1, (eS * 6 + 3) % 13 + 1, (eS * 2 + 15) % 17 + 1))
        if vector.dot(vector.cross(eY, eZ_33), e__32) == vector.dot(vector.cross(eZ_33, e__32), eY) then
            UpgradesGroup.AddToggle(UpgradesGroup, "AutoUpgrades", { Text = "Auto Purchase Affordable Upgrades", Default = false })
            local e__33 = eL.Main
            eC_1 = e__33:AddRightGroupbox("Zones", "map")
        else
            eC_1.AddToggle(eC_1, "Text", "Auto Purchase Affordable Upgrades")
            local Main = UpgradesGroup.Main
            eL = Main:AddRightGroupbox(eC_1, "map")
        end
        eS = (eS + 119) % 144
    else
        if eS * 82969529 + 13 + 7 <= eS * 82969529 + 13 + 7 + 3 then
            eC_1.AddToggle(eC_1, "AutoZones", { Text = "Auto Purchase Best Affordable Zones", Default = false })
            local e__34 = eL.Main
            eX = e__34:AddRightGroupbox("Rebirth", "refresh-cw")
        else
            eL.AddToggle(eL, "AutoZones", "Default")
            local e__35 = eX.Main
            eC_1 = e__35:AddRightGroupbox("Text", "Rebirth")
        end
        eS = (eS + 47) % 144
    end
until fn102((eS * 59 + 36) % 144, 896761096)
