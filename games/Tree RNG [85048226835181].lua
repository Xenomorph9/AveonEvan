local jQ
local jW
local i1
local PurchaseItem
local jw
local jV
local jC
local jj
local j0
local i0
local i6
local jO
local jv
local jc
local jU
local jB
local ji
local i_
local TweenService
local j5
local i5
local jb
local jT
local jA
local jG
local jn
local jM
local ClaimIndexSet
local jS
local jY
local jF
local jm
local IndexCategories
local uIStroke2
local SellFish
local j9
local i9
local jR
local jy
local Position
local jX
local j2
local screenGui2
local HUD
local i8
local function fn5(ax)
    ax.CreateButton(ax, {
        Name = "Join Discord for Dupes/Keyless Scripts",
        Callback = function()
            if setclipboard then
                setclipboard(jU)
            end
            jY.Notify(jY, { Title = "Ouroboros Hub", Content = "Discord invite copied to clipboard.", Duration = 4 })
        end
    })
end
local function worker3()
    while true do
        task.wait(0.4)
        if i6 then
            pcall(function()
                local PlayerGui = jX.PlayerGui
                local IndexUI = PlayerGui:FindFirstChild("IndexUI")
                local mp = IndexUI and IndexUI:FindFirstChild("IndexFrame")
                local mq_1 = mp
                if mp then
                    mp = mq_1:FindFirstChild("ScrollingIndex")
                end
                local mq_2 = mp
                if not mq_2 then
                    return
                end
                for i, v in ipairs(IndexCategories.Sets) do
                    if not i6 then
                        break
                    end
                    local mp_1 = mq_2:FindFirstChild("Set_" .. v.Name)
                    local mr_1 = mp_1 and mp_1:FindFirstChild("HeaderBar")
                    local mp_2 = mr_1
                    if mr_1 then
                        mr_1 = mp_2:FindFirstChild("ClaimButton")
                    end
                    local mp_3 = mr_1
                    if mr_1 then
                        mr_1 = mp_3.Active
                    end
                    if mr_1 then
                        ClaimIndexSet.FireServer(ClaimIndexSet, i)
                    end
                end
            end)
        end
    end
end
local function fn164(dl)
    jb = dl
end
local function fn165()
    local m3 = jW and not (function(gT, gU, gV)
        if type(gT) ~= "string" then
            return false
        end
        if #gT ~= gU then
            return false
        end
        local gW = 5381
        local gX = buffer.fromstring(gT)
        local gY = 0
        while gY <= gU - 4 do
            local gZ = buffer.readu32(gX, gY)
            local gW_1 = bit32.bxor(gW, gZ)
            gW = bit32.band(gW_1 * 33, 4294967295)
            gY = gY + 4
        end
        while gY < gU do
            local g_ = buffer.readu8(gX, gY)
            local gW_2 = bit32.bxor(gW, g_)
            gW = bit32.band(gW_2 * 33, 4294967295)
            gY = gY + 1
        end
        return gW == gV
    end)(jW, 0, 5381) and jW ~= jX.Name
    if m3 then
        local PlayerIslands = workspace:FindFirstChild("PlayerIslands")
        local m4 = PlayerIslands and PlayerIslands:FindFirstChild(jW .. "_Island")
        if m4 then
            return m4
        end
        return jO()
    end
    return jO()
end
local function fn224()
    local iB = (TweenService:Create(jV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(25, 25, 30) }))
    iB.Play(iB)
    local iC = (TweenService:Create(uIStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(80, 80, 95) }))
    iC.Play(iC)
    local iD = (TweenService:Create(jw, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(190, 190, 190) }))
    iD.Play(iD)
end
local function worker8()
    local k2 = 0
    while true do
        task.wait(0.2)
        if jG then
            local k3 = HUD:GetAttribute("RollCooldown") or 0
            local k5 = k3 <= 0 and HUD:GetAttribute("RollPending") ~= true
            if k5 then
                HUD.SetAttribute(HUD, "RollPending", true)
                HUD.SetAttribute(HUD, "LastRollFireClock", os.clock())
                k2 = os.clock()
                jM.FireServer(jM)
            else
                local k3_1 = HUD:GetAttribute("RollPending") == true and os.clock() - k2 > 8
                if k3_1 then
                    HUD.SetAttribute(HUD, "RollPending", false)
                end
            end
        end
    end
end
local function fn329()
    ji.Refresh(ji, jR())
end
local function fn372()
    local od = gethui and gethui()
    local oe = od or game:GetService("CoreGui")
    local Rayfield = oe:FindFirstChild("Rayfield")
    if not Rayfield then
        return nil
    end
    local Main = Rayfield:FindFirstChild("Main")
    local oe_2 = Main and Main:IsA("GuiObject")
    if oe_2 then
        return Main
    end
    return nil
end
local function fn449(bO)
    local lX = {}
    local lY = jO()
    if not lY then
        return lX
    end
    for i, descendant in ipairs(lY:GetDescendants()) do
        local lY_1 = descendant:IsA("Model") and descendant:GetAttribute("DecorType") == bO
        if lY_1 then
            lX[#lX + 1] = descendant
        end
    end
    return lX
end
local function fn488()
    if j9 then
        j0.CaptureController(j0)
        j0.ClickButton2(j0, Vector2.new())
    end
end
local function fn645(dm)
    i9 = dm
end
local function worker6()
    while true do
        task.wait(0.5)
        if i1 then
            pcall(function()
                local mP = jX:GetAttribute("Rebirths") or 0
                local mP_1 = jX:GetAttribute("Leaves") or 0
                local mP_2 = i0.GetLeavesNeeded(mP)
                if mP_2 and mP_1 >= mP_2 then
                    jA.FireServer(jA)
                end
            end)
        end
    end
end
local function fn811(g1, g2)
    if type(g1) ~= "number" then
        return false
    end
    if g1 % 1 ~= 0 then
        return false
    end
    local g3_1 = bit32.bxor(g1, 1540483477)
    local g3_2 = bit32.band(g3_1 * 403 + bit32.lshift(g3_1, 24), 4294967295)
    local g3_3 = bit32.bxor(g3_2, bit32.rshift(g3_2, 13))
    return g3_3 == g2
end
local function fn923()
    local nE = { "My Island" }
    for i, player in ipairs(i_:GetPlayers()) do
        if player ~= jX then
            table.insert(nE, player.Name)
        end
    end
    return nE
end
local function worker4()
    while true do
        task.wait(jS)
        if jT then
            pcall(function()
                SellFish.InvokeServer(SellFish, "all")
            end)
        end
    end
end
local function fn1052()
    if jc then
        return
    end
    jv = not jv
    pcall(function()
        local n1 = gethui and gethui()
        local n2 = n1 or game:GetService("CoreGui")
        local Rayfield = n2:FindFirstChild("Rayfield")
        local n1_2 = Rayfield and Rayfield:FindFirstChild("Main")
        if n1_2 then
            n1_2.Visible = not jv
        end
    end)
end
local function fn1056(bs)
    local StockBadge = bs:FindFirstChild("StockBadge", true)
    local lB
    if StockBadge then
        if StockBadge:IsA("TextLabel") then
            lB = StockBadge.Text
        else
            local TextLabel = StockBadge:FindFirstChildWhichIsA("TextLabel")
            lB = TextLabel and TextLabel.Text
        end
    end
    local lA_2 = lB or ""
    local lB_1 = tonumber(lA_2:match("%d+")) or 0
    return lB_1
end
local function fn1103()
    local PlayerGui = jX.PlayerGui
    local MerchantUI = PlayerGui:FindFirstChild("MerchantUI")
    if not MerchantUI then
        return
    end
    local lE
    for i, descendant in ipairs(MerchantUI:GetDescendants()) do
        if (function(gT, gU, gV)
            if type(gT) ~= "string" then
                return false
            end
            if #gT ~= gU then
                return false
            end
            local gW = 5381
            local gX = buffer.fromstring(gT)
            local gY = 0
            while gY <= gU - 4 do
                local gZ = buffer.readu32(gX, gY)
                local gW_3 = bit32.bxor(gW, gZ)
                gW = bit32.band(gW_3 * 33, 4294967295)
                gY = gY + 4
            end
            while gY < gU do
                local g_ = buffer.readu8(gX, gY)
                local gW_4 = bit32.bxor(gW, g_)
                gW = bit32.band(gW_4 * 33, 4294967295)
                gY = gY + 1
            end
            return gW == gV
        end)(descendant.Name, 5, 1311977733) then
            lE = descendant
            break
        end
    end
    if not lE then
        return
    end
    for i, child in ipairs(lE:GetChildren()) do
        if not i8 then
            return
        end
        local lE_1 = child:IsA("Frame") and child:GetAttribute("Cost") ~= nil
        if lE_1 then
            local lE_2 = child:GetAttribute("Cost") or 0
            while true do
                local lE_3 = i8 and jQ(child) > 0
                if lE_3 then
                    local lG_1 = jX:GetAttribute("Money") or 0
                    lE_3 = lG_1 >= lE_2
                end
                if lE_3 then
                    PurchaseItem.FireServer(PurchaseItem, child.Name)
                    task.wait(0.2)
                    continue
                end
                break
            end
        end
    end
end
local function worker5()
    while true do
        task.wait(60)
        if j9 and getconnections then
            pcall(function()
                for i, v in ipairs(getconnections(jX.Idled)) do
                    if v.Disable then
                        v.Disable(v)
                    end
                end
            end)
        end
    end
end
local function fn1183()
    local lc = i5.Decode(jX:GetAttribute("OwnedUpgrades"))
    for i, v in ipairs(i5.Branches) do
        for i, v in ipairs(v.Upgrades) do
            if not jb then
                return
            end
            local ld = (function(gT, gU, gV)
                if type(gT) ~= "string" then
                    return false
                end
                if #gT ~= gU then
                    return false
                end
                local gW = 5381
                local gX = buffer.fromstring(gT)
                local gY = 0
                while gY <= gU - 4 do
                    local gZ = buffer.readu32(gX, gY)
                    local gW_9 = bit32.bxor(gW, gZ)
                    gW = bit32.band(gW_9 * 33, 4294967295)
                    gY = gY + 4
                end
                while gY < gU do
                    local g_ = buffer.readu8(gX, gY)
                    local gW_10 = bit32.bxor(gW, g_)
                    gW = bit32.band(gW_10 * 33, 4294967295)
                    gY = gY + 1
                end
                return gW == gV
            end)(v.Currency, 9, 1691671027) and "FishCoins"
            local le = ld or "Money"
            local le_1 = jX:GetAttribute(le) or 0
            if not v.Prereq or lc[v.Prereq] then
                if v.Leveled then
                    local le_3 = 0
                    local lf_1 = #v.Steps
                    local lw = 1
                    while true do
                        if lw <= lf_1 then
                            local lx = lw
                            if lc[v.Id .. lx] then
                                le_3 = lx
                                lw += 1
                                continue
                            end
                            break
                        end
                        break
                    end
                    if #v.Steps > le_3 then
                        if (v.Steps[le_3 + 1][2] or 0) <= le_1 then
                            local result = jF:InvokeServer("buy", v.Id .. le_3 + 1)
                            local le_4 = (function(gT, gU, gV)
                                if type(gT) ~= "string" then
                                    return false
                                end
                                if #gT ~= gU then
                                    return false
                                end
                                local gW = 5381
                                local gX = buffer.fromstring(gT)
                                local gY = 0
                                while gY <= gU - 4 do
                                    local gZ = buffer.readu32(gX, gY)
                                    local gW_7 = bit32.bxor(gW, gZ)
                                    gW = bit32.band(gW_7 * 33, 4294967295)
                                    gY = gY + 4
                                end
                                while gY < gU do
                                    local g_ = buffer.readu8(gX, gY)
                                    local gW_8 = bit32.bxor(gW, g_)
                                    gW = bit32.band(gW_8 * 33, 4294967295)
                                    gY = gY + 1
                                end
                                return gW == gV
                            end)(typeof(result), 5, 248602996) and result.owned
                            if le_4 then
                                lc = i5.Decode(result.owned)
                            end
                            task.wait(0.15)
                        end
                    end
                elseif not lc[v.Id] then
                    if (v.Cost or 0) <= le_1 then
                        local result = jF:InvokeServer("buy", v.Id)
                        local le_6 = (function(gT, gU, gV)
                            if type(gT) ~= "string" then
                                return false
                            end
                            if #gT ~= gU then
                                return false
                            end
                            local gW = 5381
                            local gX = buffer.fromstring(gT)
                            local gY = 0
                            while gY <= gU - 4 do
                                local gZ = buffer.readu32(gX, gY)
                                local gW_5 = bit32.bxor(gW, gZ)
                                gW = bit32.band(gW_5 * 33, 4294967295)
                                gY = gY + 4
                            end
                            while gY < gU do
                                local g_ = buffer.readu8(gX, gY)
                                local gW_6 = bit32.bxor(gW, g_)
                                gW = bit32.band(gW_6 * 33, 4294967295)
                                gY = gY + 1
                            end
                            return gW == gV
                        end)(typeof(result), 5, 248602996) and result.owned
                        if le_6 then
                            lc = i5.Decode(result.owned)
                        end
                        task.wait(0.15)
                    end
                end
            end
        end
    end
end
local function fn1209()
    local m6 = j5()
    local m7 = m6 and m6:FindFirstChild("BackOffshoot")
    if not m7 then
        return nil
    end
    for i, child in ipairs(m7:GetChildren()) do
        local m6_2 = (child:IsA("BasePart"))
        if m6_2 then
            local Name = child.Name
            m6_2 = (function(gT, gU, gV)
                if type(gT) ~= "string" then
                    return false
                end
                if #gT ~= gU then
                    return false
                end
                local gW = 5381
                local gX = buffer.fromstring(gT)
                local gY = 0
                while gY <= gU - 4 do
                    local gZ = buffer.readu32(gX, gY)
                    local gW_11 = bit32.bxor(gW, gZ)
                    gW = bit32.band(gW_11 * 33, 4294967295)
                    gY = gY + 4
                end
                while gY < gU do
                    local g_ = buffer.readu8(gX, gY)
                    local gW_12 = bit32.bxor(gW, g_)
                    gW = bit32.band(gW_12 * 33, 4294967295)
                    gY = gY + 1
                end
                return gW == gV
            end)(Name:sub(1, 11), 11, 3559820833)
        end
        if m6_2 then
            return child
        end
    end
    return nil
end
local function fn1357(dd)
    jB = dd
    HUD.SetAttribute(HUD, "HideRollEffects", dd)
end
local function fn1422(dU)
    if dU.UserInputType == Enum.UserInputType.MouseButton1 or dU.UserInputType == Enum.UserInputType.Touch then
        jm, jc = true, false
        jj = dU.Position
        Position = jC.Position
    end
end
local function fn1540()
    local PlayerIslands = workspace:FindFirstChild("PlayerIslands")
    if not PlayerIslands then
        return nil
    end
    return PlayerIslands:FindFirstChild(jX.Name .. "_Island")
end
local function fn1601()
    local mA = jO()
    if not mA then
        return nil
    end
    for i, descendant in ipairs(mA:GetDescendants()) do
        local mA_1 = descendant:IsA("Model") and (function(gT, gU, gV)
            if type(gT) ~= "string" then
                return false
            end
            if #gT ~= gU then
                return false
            end
            local gW = 5381
            local gX = buffer.fromstring(gT)
            local gY = 0
            while gY <= gU - 4 do
                local gZ = buffer.readu32(gX, gY)
                local gW_13 = bit32.bxor(gW, gZ)
                gW = bit32.band(gW_13 * 33, 4294967295)
                gY = gY + 4
            end
            while gY < gU do
                local g_ = buffer.readu8(gX, gY)
                local gW_14 = bit32.bxor(gW, g_)
                gW = bit32.band(gW_14 * 33, 4294967295)
                gY = gY + 1
            end
            return gW == gV
        end)(descendant.Name, 14, 2776289899)
        if mA_1 then
            return descendant:FindFirstChildWhichIsA("ProximityPrompt", true)
        end
    end
    return nil
end
local function fn1646(de)
    jy = de
end
local function worker7()
    while true do
        task.wait(1)
        if i8 then
            pcall(jn)
        end
    end
end
i_ = nil
i0 = nil
i1 = nil
screenGui2 = nil
IndexCategories = nil
local i4
i5 = nil
i6 = nil
PurchaseItem = nil
i8 = nil
i9 = nil
ClaimIndexSet = nil
jb = nil
jc = nil
local je
Position = nil
local jh
ji = nil
jj = nil
local jl
jm = nil
jn = nil
TweenService = nil
local jp
local jq
SellFish = nil
local jt
jv = nil
jw = nil
local jx
jy = nil
jA = nil
jB = nil
jC = nil
jF = nil
jG = nil
local imageLabel2
local jI
local jK
uIStroke2 = nil
jM = nil
local jd, jg, CollectLeafGen, jE, jJ
local jN
jO = nil
local jP
jQ = nil
jR = nil
jS = nil
jT = nil
jU = nil
jV = nil
jW = nil
jX = nil
jY = nil
local jZ
local j_
j0 = nil
local j1
j2 = nil
local j3
local j4
j5 = nil
local j7
HUD = nil
j9 = nil
local j6, kb, kc, kd, worker, kg, worker2, ki, kj, kk, km, kn, kp, kq, kr
local kl_1
local ke_1, RunService
local jD = (buffer.fromstring("\r%>j9:+8/j#>/'9j:#&#$-j?:uj\x1e?8$j3%?8j-8#$.j#$>%j+)>?+&j:8%,#>d@@\t&#)!j>%j %#$j>\"/j(#--/9>j>8+.#$-j)%''?$#>3j+8%?$.k/?%<..8)49grrdlimmmekhnemjiE!C1Axc93uAPK(4R$o;YB({X(_lDESjIKCOZG]FL|ZIF[XIZMFKQO?F9pOdXN,dA[K?@TWI4%:kohQdGVJIPQ@uJVLQLJK!2+Y-.e]I^g3_BKE+po0&Cl*}p)o9Jx[YQ]HUOT^nH[TIJ[H_TYCHQco/%,s$j&]?TT8;-?eAfvwX_UwXCBErYX]UltIp][6B6lt/3uXG%I.ZqH8d],:Myc.qSNYHLHUXqSNLQUe1FA1M)sbVn4Qi%]}HRB[K1@kF{{?dC[BFH~H_[H_PqWjH&YJ@e?8d{aB_-^Zc{!rrOt,^W!yMLW}IMQHqVL]JNYT}n(8W[MqrU=Boqv?0E=#xJ,rO4gSRI\x06cWSOV\x06dCURj?3C!.[lGRVE{;_-h0U?Xy+$p0C3mN_C@YXI|C_EXECBUF22aZUYrA&O=J6C{?[@ve8&QpFnOBCtIJJc@@CERUFvO=%&X*l&DE/@[9ss7U)/LmF_6n_BNb{VS]TW_TNf^XlEcY4)_F#k@%hji$J6xdaC-%[{H_YDNLAlADJC@HCY8V^-e[15XG[vWiAMr:zXXxhk;nLVPFaVWWLM\x12`OJ@Ho=/r9ayuVu/b^vb)8vK$0Ey2EtWU]QDYCXRbDWXEFWDSXUOdFqv?fq.V=i*.+t$7PycAPwAVRMGAH[sU^dB0)%XF^#[N12w{{_nwxf:Xzt@lXYB\roXT\r`H_NELCY\r~YBNFc2qu%SmnRa.y@xVMScLKAcLWVQfMLIAjTzm/j&B?=5@(/Is?R61;Y/]W,h_T^_HiN_JJ_^9929pHNZ9l}Bt(r9,t}J8rgzKGG5))-.grr94.>2/9s::r;n9\x175\x19:$\t,NkbN:vL;ZNrVD^YPdCN[Rm5*&:d@^vAyrnp8(N*G.^Ga^wGP%vjsBGGJMDF#p1WLqr27dsJxz!4]hR.#S0wbf_5)}LQ]z@SL9;^_4rQ/cZrAZOVhkR^E{dN:p-@+HYOI_[YUFU_[U98k$hXVv51.n{yno^]*]7E[Y[GRkISUCcHRCT,I+HJ6!u.Hks6ZmLOuLlSCy9Wr6u}RI^h^IM^It5iME$^W^S@FOt,?-[T.gC#)4fjRRF[Y{RRGQ@;Vq^H3VNyGqk4qq-8b!e3$qqr#DlPQ[SV]KK:wF^1FC/TCw;]:Rru]rt(!}#0F7&sEMPbKVgLMH@ZIPI_qPF:9;Q6d=W1VE.5W;%og]ZGJGZG[\x08`]J%XI1yxY#57],XQ7%QQz6RUiieXSvTC^XYhX!U+tmU?]=Eu/qQLbwY?{7xCI-jt@AZw@AAZ[vZYZG{wK!RvmuzP7Gx35m&VUiuarC^RjGDCJ[*e*B77qiqWiGU=p=:ld):.e$4k{F[CJq,pdxUO;x$Aeh*2D1t!&T^tq@d3B0wDvGTCHR85mlZcq1.yAy!w/bV!UWP!?VFVeZrurUMTP^h^IM^IZ.UPXk,yxE7$aD;btQmNd!xL41;58)3)513HiD6@zGjMMPnLs1Jv6lAEM4j-oC@@IOXm]YM^EYA@cAP^y-yi7,BHBcxSoO.^cIDB9]z^FRA#xck*(X;#:LLY{[7}&6Iw4L&RQ@VO,7Yu-e}CYv*QghXSl4r/wwV)0eHWi9\x1d0*:6+=y07/0-<y:6)0<=y-6y:50);68+=w,/>(1.5J%=w:LAN8JV,V8dSif!6*Votk@)isBQFMWGC8.DCALr?fCrm/@;1wv%r_DI-C(V}_N{NNHSXON_wky9[znM;y5-*-uyds&Y,Q3`GTKtsG-?9lZ=yQeSQ/1=-Va%0#n[zaQ,8^nBCCHNYd;SZQS_=+P0vH=a+}6@GjN!bRdjrC^RrTGHUVGTCHE_(=#RE$hTi162A{SvVIyVLWVQXtR1Pitf_Jqw)%UWNXF=jd)gP6R@N]DDQIJ{#)BvX&ewfX0,BzhDS4;g@m[yC(EVFFGC@UXWSZCK$n=)&xZwMP%BMbA8SRsW13(%!GPD6:/e0U&3wqDHeKPE3x@&J43iy*cDIXOGOD^+,?[TW3*jJy-svK:DIv]E]1w/vBCX\x17gBET_VDR\x17vQQXESVU[R\x17bGPEVSRDYZK]D?pc#kZODC6N=S2^c%R*2$[([Xf3_~HYYDCJ^P(GIzFb1-s/bcc{y3?IT^8H$oyBEZ^ss3Lj9/y064K-e[Cdo.uAp8-Jnj_ODVF;opcCSczJSlb!XS$uSO%r,C=/{F.{TUN@RteBG46K;6z)n/YCKrIH9Ya]9z.3upcDNORhOBK\\CEXT5QFa):SOR&2MTXDSZ1kZI^UOKWR)u/W5CK(jm88@F,yZG*Is6ulkO]G@I}ZWBKByC{O.ytXW;R=fa)YwsnQ.|@MU-t&VWiagVVv(x67v!]5/W6xio;E3tc_RJVAz@_R]W@h613y=ry}nG1IOj{!I}bTSSDOUw@MTDgP%V2gTR/AAXq0hIJbzg|S_WMM4zAYYTVkM%:0{hZzTM]H6Ynx!6l]@LzMLLWV{Gh!zMB/,/?kgVSL.Nwg]7iRUJ27Uv3hlmVm5_.ls4fKUB{2P46?a6_RMWVJTS^W{5PR]ul1cf!z5R69EmU:gwCBY\x7fXRSNgvsX57yMrkKAPV!X{YG*?$hJ[n[[]FMZ[Ju5gKvww5uceF8bdh]:Sq^YSq^EDCt_^[S`_^T_~Dv]cnLMjq8ZXZLUWWAEF-4.K}!YlTejWEt5j$A6IYHlVW}IKt$W}To1@W76B{3j;evS[D.WdeQSLNFCR]XT_y+YO_zGAN&^sk6uE$Cc$rDCCT_EgP]DTqRU8nc5%*pM?h&Cs@#@fWDSXBk:}t*$2o:v3lmGHFo;w{5Im9IJ[MT*V/Up5haq_=Ak:[q1@T]mcy(=kQB],U%Y-EM3}l]{:G?,s+AoYuUjK:cAPwAVRMGA-_mblHHEw9r-nbXjR/2OuRCVUyzOv2cX?Kg1D([=XM8Eb@Sd)PhL@FDc^X%1!QT.0*T_oet6=oSa3v03//+(att?2(84)?u<<t\x15\x1d\x1c\x11:\x1di=\x1f-&:$6+4:QT^wN(t/^P0Agwrn,uj8jrxBCr!el;$dB2aJYrYw!A+vo#Wo-nEo^CO;=Dm}%m+rWY(iW(ZWE7O:%2jpMYDFxHJGNF6l[5p,vpbF+).+gaQM&\x1b/.5z\x1c3)2zqz\x19;).zr\t/*?(z\x1c;).so@GMo@[Z]jA@EM(zsjllf]?adtRLvBCX\x17q^[[\x17{RVQycko0buR}[6-BMlXYB\r~]DCwBd_KvuQjTCbGyoG8U)pDE^\x11bT]]\x11fYT_\x11sPRZAPRZ\x11wD]]#5= p]zgSUg+$=XGLt#,,odAS8rc{TXPxx+[9VA{d;d]*7@WtkJX:LIErQS[WB_E^TdBQ^C@QBU^SIW4hC=7eOBDG{uhNbvQ2,3{-Mq%LuytF,)E5>,;vL#Xcp1o@eUFz*MZ]fChn-feJFN(+4i5YcrB?H[?@(##6_trlogCWRd!ee^w*[#z]q:GyE7cVJlm]gSRI\x06cWSOV\x06dCURb&I+S*=7Vjd0iJH@LYD^EOhDGDY\x18S1;,27/2.+xsYTR!A{pGf)fMgQp=2A;ft3tKBryH[LG]0#,P1EeUgP2,G*HVtH]$$aWFsFF@[PGFWcHtOD7{)c#u0m8zT_MRPvU-Vqi@x[E],4}%CI1aJ%jDRX^_NQ%q%F?dyf{t-eN$r-*H5h^YYNE_}JG^Nl,2;(:-}#s,(pEwdCIHUoHEL[DB_b#77U6PQ4YqBtBJWeLQ`KJOG:(&obKL(-GpwJ/n_BNyUVUH\t$fh$e%8M$&:Zb!.NmBODC^|CEBXv??MK@jEuzmE,/gl]@LkQB]W[*jGQKxUjT$D2Bg5KeGVRSTCeIHRTIJJCTX5$PZGC^q^RZX@ZzZv=0Lar;JE,xHZv8Z`QFBWFgQLSGLTMimKA{DQ=3o2mBXCBELF0w^=Z_tW4z6QVM6kjwC\x1asIV[T^k&5Wf.CHCpFR{y6y~I]YI_Xn@COG.=YqIaFsP3H3p^UGgw2cgmT!}(kAk_h_{;A9(z~OR^fKHOFTZCQA{WG&Dv1LT)r{J]YL]lW__T],buV:CC+:;gpN\x07+((!'0F-T3g4sm(mf{_OI(t`TUN\x01dPTHQ\x01cDRU\x01hOUDSW@M8.&;2ysJz8%v8}@WTbA;3Z/L^VYT]__PK_WAv;5i$+rY;io^EQLNqda)48ixjd^U-K5{)h,TeTIEmI*Wv$TmjbC&*YAl+XUSFM_@mA+2uxl)@2Bix69tPh=H{LYE@JH]LMz]F[HNLU_RrCY#BGXOR_^EM-MA0_Pu@P_5zF-rYVU[RST@9Cyfppi@SHmu9i`BOOAB@HCD_@C3?eK0fBojdpVEJWTEVAJG]Kd:K,mfyX;oBI[C^j+MY7O*qNO/nDrJsXiiJH@LYD^EO\x7fYJEX[JYNEHRhy^FYDUxqP2uVyCNqHF15_kqRPXTA\\F]WgAR]@CRAV]PJe_^o^ASbUP9yq^]NYq!JL=qG@@W\\FdS^GW(Z8[uRpE7,`LOOF@WoFBEdFM{O^Di7@FpZWQ2o7c([eLz6kg@z%DAYdGEMATISHBrTGHUVGTCHE_zY[S_JWMV\\lJYVKHYJ]V[AwTV^RGZ@[QaGT[FETGP[VLjC@R:hbFAYms15EhYu_f+aR]TVg.C[d3_^SsK.y/BdlXYBdCIHUP{H:x6qq=6VSnHCYH_U^^*Ec9Bx(y^L0?|S_Won8*OG.u1U0M9sv3%kIXmXX^ENYXI)3IaV2HL{\x19-,7x\x1b744=;,x\x19)-9*1-5{XZRv__JQVVMu.5*HwZx|LfhJ5D=M1!WJI==oQ,&aCRgRRTODSRCe^7weLqBNGORCC:}69v!*.Dzu(GX+ 2QqVRL,a,9pSz+*$3#rDLQcJWfMLIA1$lB0+!q=1*9$1(d(H{Q)A{#@R;$oCBBIOX-$YN@@_7O(+)Xj]ZQJLPj]IM]KL*p)s+vvGPTAPaZRRYP@(FDN&vPbCNO\nyZCD\nkDCGK^CED>!!%aRgU4OoLs%4C?PxmOBBLOMEQ?kxOb[yFY*`IHRm,EKp-Yw5w?_PF{s_BUwEY?V}]M6BO*p5caNBJVb5q]M}sS/[}[^dbSNBtCBBYX;0O08z?uQrP]]SPRZlCm(&Tw*=q(t[FBDboHnXE6(O&9v]vL_@3pRc^E.02Eq#j[&#<7,15^D@bQW4U}OQn_BNnH[TIJ[H_TYC0V{A@eqpw^65TmX,l_z=m[SN|UHyRSV^gk_p4Hg[VNiG$d6mohRGq_sCtHE]AVcQMkwlFPk+FaBBY`LJCHYhCLOAHIfEGOCVKQJ@gKHKV\x17_fPXEw^CrYX]URW7iTk]LyLLJQZML]Vvqkgj^_D\x0bmBGG\x0bgNJM/*JjzjC}i=B;_wfsZ)4G<7%lg^^TGW2nQB_n8<7-Qc/d[lpKB@).,6=/Vwo=qM%fZNuhFgVAEPApKCCHAMSB?jIKCOZG]FLkGDGZ\x1byS^XcIt2H_9R_6T[lVQLALQLP\x03nBQHFW[PB$QEE]aO;;QecYAY_,:%*WP(w4TG1lgVKGmC6qKw-kH5c]jQVI^9P#(89!a^cRsPRZVC^D_Ur^]^C\x02wTV^RGZ@[QvZYZG\x06zYWR_XQb_BZS0:GpoKYCDMnCXOI^CEDgNOU&8ZJ}(_)U#IqZUVXQP$CB+m.&j|S_Wo1}=eyZsUkb.%7DaJgN@%J-eXVpDE^sDEE^_r^]^CIOHVeR#26MA#PA-jIGBOHAuSDRORJCiDYONYxBQN{BSNGwF[WAZGsZp2meI/$6)hQGoVp-NWVarU_^Cy^SZMRTIQEXZepuGC2)hx{fDUeDRBDOE@OURcAPePPVMFQPA-SvSDQBGFqFRVFPWzKVZvoBGI@CK@ZgHRIfD@S`BUHNOwX_UwXCBErYX]UuDYUx`MHFOLDOUd[G]@][ZyZBA-0`QL@luX]SZYQZ@q@]Q}dILBKH@KQiXEIe|QTZSPXSIdFWgFP@FMGBMWP}RU_}RIHOxSRW_`VQQFMWlSWJLM+ 27#8t(;4A!%U@CMDaVu$U}n;7>:=<>5>):/4)nVODEtQFS@EDRdBTCx_ADEeHAT}LIIDCJoBYYB@i_XXOD^|KF_O3]S@X?CaO2ZZ}vYPSVWKUQ@@Q(azKNNCDMhE^^EG~HOOXSIrMITRSh_W_WX_HpUSTI8=*-!4W!gHUFjbSD@UDuNFFMD][F_K@Y@QQ@BeTCGRCrGDq*!HHLI^MYCXW]XbNSODSs@EHTRyOHH_TNl[VO_zYWR_XQb_BZSpDE^dAVCPUTB{WVV][L5mc./`VQQFMWuBOVF`LOOF@WcNmTGh^YYNE_}JG^Nnk_L@HLe5-s,tXPWr}l*v/EL`V^CqXEt_^[SsEMPbKVgLMH@bVWLvSDQBGFPyH_[N_xONNUTtERVCRcXPP[RwMJWZWJWKpMZe@GV]TFP|APX5>5?7.  20,!i^H^OtUhKZLUtBEERYCaV[BRj[LH]L}FNNELhJ[n[[]FMZ[Js_B^UBbQTYECqGOR`ITeNOJBvEJCAt_/o.DmIECAfQPPKJq@]QrWDUU@AdKFMJWuJLKQfBPJMDpWZOFq^D_^YPdGXC`MUCYXc^HI^qW@@\x05wkbidhFDA[PXc&HD,o@LD7q@-u@[QEXZepuY-5VaPMAbGTEEPQ>(>%+&-)4-/BVKIkBBWAPjMSVWaFDBM\x14%84\x03/,/2saCY_IiBXI^SGZXzSSFPA{TOXnXOKXObJQMDHgJIA{JW[l@C@]\x1cHTK^I_WVT_yCBH1A4Hpt~VMQXT{VU]o^COxTWTI\x08}ZDA@qZPQPGSNLnGGRDUwPKv@WSLF@xITXnYXXCBn_BNyUVUH\t1--%?$)/)HNKXNTCW]uDSWBSbWT,);1265'2o^IMXIxMNnA[@kGAF[tZFlFLKZRrNSUnSEDStUS_BdI@UcSBUU^wEYYZK]D;/EEl@A[JA[u-fVTYPaLEPvFW@@KbPLhZF`MEJL[xDIQMZo]Ao^COhRA^\x9a\x99\x99\x99\x99\x99\xd9?{DXB_BDEEQOCGKJT\x00\x00\x00\x00\x00\x00\xd0?gEHHFEGO~QKV\x12~yt}B^DYDBCffffff\xd6?333333\xd3?zKVZ}GTKxLMVjIPWhGKCymnguWZZTWU]eJFNK&gw\x9a\x99\x99\x99\x99\x99\xe1?uJVLQLJK\x9a\x99\x99\x99\x99\x99\xc9?oI^^\x1biu|\x00\x00\x00\x00\x00\x00\xe0?iHEDrQHOnX__HCNTtKWMPMKJyCBKPA// 7$7 !7w@RDWAVfJII@FQd^U[^YP^GYNEWZeYTLS{=s_^^USD{L^H[MZyCHFCDM~A[AJDMkTNT_QX]SXQDX@`PR_VZ$%.<KF=i`MWEFHAx_UTIdx}AAErPAbMAIX1uiVLV]SZq^D_^YPkWZB!r&l@AAJL[&!+>;**9;-5>2hAERAWsBQFMW/#6!*zo^IMXIcEVVYHgVERYC!:<;80eTGP[AiXOK^OjLG]L[AJXQ9S'=>-&)nL[FYJYZK]Dd_ESX-.?)0'$5#:30!7.%&7!8q]^]@WLXFNsGTXPRQ@VOYWTSHuHUMD=%<76OYQLX{KIDMtX[XEj^MAI{TXP0~DWHgHDLnIZEXNF[oFG]$8!%kBCY\x1a\xb6s LZRO.\x8a\xfe\n\x8d:r\x13\xbf=\xd8?iST_jEIA^JL[\xfcTON\xff\xff\xff\x7fgM@FjQVI\x14\x82C\rFQQXlV\x81~7\x1c.\x84 \xabs\"\x7fy<\xae&08%cDWHaEQT{RSIiCNH\xedD\xfd\x00)?7*@\xc2'\xc015 (`OCK\x03\xab\xb0\xb1\xa2|\x8f\xbe`DPU1'/2}ZIVf]ZEo^COo@LDiS@_\xd7\xf8\x88\x01lFKM\xe4\x1d\x94OrfrfHCQk(v<7%==>JCH3#;UNSYR@k*eSXJZQCjlk,'5rep&&.%):kDYV]O\xb8\x0b\xcc\x01hE\xff\x13S\x0e\x1c\x00\x12$\xf0\x079\x1a\x18NRC[\x01&\x100\x05d\x85\"m?W&"))
local jz = (buffer.fromstring("\x12:!u&%4'0u<!08&u%<9<;2u %ju\x01 ';u,: 'u2'<;1u<;!:u46! 49u%':3<!{__\x169<6>u!:u?:<;u!=0u7<220&!u!'41<;2u6:88 ;<!,u4': ;1tx[YQ]HUOT^nH[TIJ[H_TYC=r:z9xV(muW_y!?a$([nX44,H9(R-p\x153 %$oa\x12$--oa\x113.'(5oSdaEZ6e5CZ3$T,{,i1r[yKU17iDLdfEGOCVKQJ@pVEJWTEVAJG]n#XvxZ.bq.g[VU1b$2TOtVfQvBCX\x17bGPEVSR\x17~YCREAV[:Br#x#jB3&:C=up{#F!N)ap8z[VW`]^^wTTWQFAxViBoABAmmrxz/yFC[flYDXgr0KlH:pUST\x1auOHUXUHUI0ayUJC\x1a~SIYUH^gz;x_xh=gtPjk}jO{AF[V[F[G\x14vMDUGG]ZS!]66;?B=EZs.Etnq$ctnJ(%]MnH^IrUKNOoBK^[S^(,_Od0Fgh1R7Ws^ONBdCQUDVF(@iXOK^O~EMMFOr/4t/qQ;mc6moL*li5IdkH0Zl3W$G(6bSD@UDuNFFMD*z0;ywG_S869baVt-GavO)4^Hc$7N0EoJBGRgDD_hCNX_c?(&:0UM^r/6qj;f?.RUPI10&E:hs_^VYWEBQDY_^cQFY^Wtj[FB@3Gna7+&hyP5FDgwC5lXYB~HAAkXAAi5]qh1c!Z32amdvyQQ}aP.J4:h@)-4`TUNrDMMgHRI9MHiEbs%-%dJ1+g8)+/BclRotxK(Ai`CCBjCG@aCHkIHC_vsh#Ob3[K4)JJTc4eyA)YYQPZo@GMo@[Z]jA@EMTWaMRtMVc6XIFgQ++Pwkmc2?0lAuWF~WSDWA|WWVWVm]nXM8NptN7t2,tj$M9.83oZXTiQHPMTHAkTPMKJWhw&@^+wan%/:}Fv04)I(K8uW}kIXmXX^ENYXIb!XvEowW25i19Fa+ss)N(&.NRNcXfHT~T^YH@y9%=S1rPcD=XTQ2%t/rU,a$c0S{B#uSdGEMATISHBeIJIT\x15D*7XdnmES1!Oc*K*nle2wm9sPRZVC^D_UeCP_BAPCT_RHAZ]wB]L[-(s{82OSpjIGBOHAuSDRORJCZ^..qtIRZ^)-S=_fQ!][%6V?bDRE~YGBCcNGRq:v5S9&{Y[NH+.2eyhKHZW1*SmOBBLOME#sFkg?3Rtg[Vu(5Xe7lTG6Yp1H0!mt{YTTZY[SJkv[;U!3/ExFRK}.QGfDlmq46i-&vNy[AGQvA@@[Z\x05wX]W_a(zHAp;!LVIrj:oHt$&An_HLYHyBJJAHD(;NXvPoO}lu{1-v7DhdWo5FKtCHBCTuRCVVCBwww=fN80x1Yqwa2:]269A(M5~JKPyVLW7K8LQF7^eRx=9NrHbnp_;VIF+ZchzxBIGBELe$MsC0{2FIJZ!O981wlGYUzH?dEI8QeTIEsDEE^__WTK@fK!]MjgI;tpAs)j1zQYrP;uDW@KQ2_R?X4;Ik2O0lw3+SGOIRe%DZg%EN}bSNBe_LS,nVksS&u_s7#;xDh(_W/VQPb=&%Vy^ExNY]BHNOz@;FnPbm5(g:)fL,AklP$qky.bVWL\x03aVZ\x03aBJWfl*J3M88O_@V:[x.uPp30:%dPQJv@IIlKQ@WSDIe=^#s53SggL+h-KNqJ{Ct@AZfPYY|[APGCTYbQu#M-DcUk:Q#P68v}JBwFQU@QvA@@[Zp4vwJ&5We&gmf04QCN0{7RI2;54*+*+;' ;D6!+@WDN/LJrvVOQ4uh3?/u`QL@g]NQr_*ry3Qm51ybK^*ljeHV=T]JY%5eTIEhp]XV_\\T_EnXRq1;PXGHAn]ZP^TF5CytERVCRcXPP[Rl+zx:g6k/zeIbQZNt7QO!h@{TXP+)@2KPqp)/fn#hb@$MXp%e;$&8+3wr6q^RZF4f%E-^cBq6ETi1kqKiilTm4%Bg-QE_iSTIDITIU\x06d_VGUUOHAE;*44w+EOL6tmvJmDE_sC}(K]K#[MGEPQRT;)ILbzli^5$x_+{JOOBELgNM_;!fklMa4ihRv@]e1Rt.guxvlNCCMNLD&#lMY{L.4?d:F9-,gG;=J-:03@z]LYZ]7pxee:T&BX)TeV3%BO3diE:?2ony7<._8z-^DEZmoc&ptT+u#f%;?0S2l;vv-:-;3.cqp$3N61MQB5jJnEXw9^DK:QI:aG7!K@RV-^B{t)YmcX#MBT_T0QJfbvzh1f6[YiAZFOCbBV%+{/K0KqHFp+pcZRHgY51*tPXNF[d(Hi)pOGt-!{%9X-mZ]yxr@Odc9!]UVGQH4EO.*C$xwN{hTh0D}Afn]NCak(FPFJVGXKMYUB3Xa#QY(n[LLy}/sp$eym4tWtXYYRTCcSF(l2Dq7uYwhhPt^TP^=/aZR9w@GLWQMw@TP@VQ_vBJ_j74EO_:7hTMnYKf@VAz]CFG`VAEZPVIqkk,{[$F*5MuSKQK~NLAHyT]H.eMwm1s,lIW/R&wg-UGLnWt[-&4/r@/g2qM6l].sZm0q8d5@HNwE%OzC#gQVVAJPrEHQA5smZ:EA&{k}Ab1?Gei8(sWE_XQeBOZSfXc*13u;;wqPrA/lUh[sE<  $'n{{0='7;&0z33{2g0\x1e<\x103-\x00%Q?(:6 q/FgZVGS6%,5cit1ON%_EE?8VW,/$t[W_ELQ8@&.Y6b#=soj?ykdnQJWobpOkFM_0/C)PSuPTs8TEasVOK$K+%dKwqf4zVUVKk)?iNe&gHOO54=s3L&iw*VQ@&*YMPRmx}x=8$dd#*}d[UQ,(/gc[@yeQn{ARMRS4F,R^ULsBxtovrLIQkdETWh].tRDShOQTUuXQDC_:.gvAMN][(#wmfa:wKVPkV@AVm[Wsah}?Dv.1^^OLyo(E$-gSRI\x06eJGOK\x06oHBC^\x06uCRU4R17-5hYZobXj,*]H2SpuRPcrF}gT{uhn?F:-xIsgKVJAVvE@MQWA610CL$BKj!%g/M@X$pDE^bT]]wXBY%jW%[A4F^K;G/&oi=]yH[LG]J(r#EnUS1n154v!Q$@3PidE.pc9rlld/ %/'l8#l/#<5eL0Yw0sLpu{TXP^;U/TUgUSsSn,}?r1W2}gJ/ORoa@FJA@@V;ke.xI%,5!F(Db2v8W+ON6EZSB0XHq@&:0$I)a$]_aS?A3X*0jP2..*)`uu>3)95(>t==u\x14\x1c\x1d\x10;\x1ch<\x1e,{RSI#}*-,J&u7U0-3.pkNFWgwk{V/cL@HYJ:moHm}@hY#qGzXI33AcZp{prC^RjGDCJ.2R#dwr7#w1XszK9qd@M|^Oh^IMRX^hNmc;i2O{Ox{NO*@(H-tqEVZR8Jd1@4jtH0,ji?o;t4-oTeLJM&hnrSPM,zRLSkdL7}P3J8Rl8[)5512{nn2(3(42o,$/4n3 8'($-%fIEM)!7pwU%E-:h+%X)Gx%iK:pRsaH[HAHItY3=d:)KKjxlm2OlHdxMd$=!=hzG=+mi;H2Z#DNhT+y$3i@}OJ^CAcJJ_IX&{2n){mYZPMvMLwq?1mIECAhEFAH4?J@ySd5bTgJB^zgTu,<&?--;*7:dqqgojnnnfhkmfnijE@EKWKX8a&}Po^2Vml-;wPzvGQg>.4-??)8%(vccu}x|||tzy\x7ft|{xzNOT\x1bxWZRV\x1bw^Z]iUYHZ_2FJYesjE_DEBK+wN#T)hE5GctSSHZeT8k,</6t^bxm:6wyEN-uct7HRkpO9^Q@Q#/f3[dz1_c%*]2}Q!kJ@?Ga5`QFBWFwLDDOFHZ=9?o6ALS]j,{L{TNS\x17{|qvs=FB/E9t1(kzk5,wvoPLVKVPQ5OF&!PtJ*ei:ac22VqiN_JI)U*xKU6W4nSDul=hmLWBI(#1@;U;rEtqE[MC2EJ+@J6d#zRSXJz$SqF.=:=7#AstK)mFNor!#uZV^FaM(Ul67NOV@7Xx#(Jk.q1rDLQcJWfMLIA(n;mN2.SCRYeLEYCL1%kUSaQTR{jcFxr^{s0CR#keRDRCxYdGV@YWjuj6.f?.!wAJrQCU`QBDe?){^$CS&Fa01PDEQxNII^UOmZWN^hh!tSa?lFS*nQyFZ@]@FG)0WrP,Yp#6{(S7[zI`TUN\x01rDMM\x01gHRIv/Xy?K6DPUIGSNLnGGRDU7Fzr1[oZGFY:Y{[@BPW6^oo05A?DzO8bl]l_Z2wUlNCCMNLD5=m=zEVN=9wPHoltNxI^ZO^hWR_^Ict3]7[#N.!+x8wX_UwXCBErYX]U$_NLs&.xQ3o%&7!84W5Y#HUUui}1;CUSwXt7<.KLZ:U^_e[VtUrmNi1&ENRjKMA\\}BAZq(-ka}D&DNWzgOprQQPxQURsQZy[ZQMgwg/O/d+pJYF?3dAd$,z_(EtIgdg:Z[lvPCCL]LLsHl/A.8eslONqjh@{WKLM9UPD}QV3[EP^^3rP^q+`QFBWFwLDDOF.jWHR]g&V)*q]@WuG[h5gXp*sS9hP^S]sniEFFOI^fSy[a&4dVq$!!A-!kL_@OarJ@UnY9o-Q0/{WHWC.*1;YU}0{P5?e6($,fI.EKD09%6%L@Yx^xEIfjw,FGRJc|MZ^KZkPXXSZlq4&f(+Hvd!!008-!.!G3eUodtj/2%)GrQS[WB_E^TdBQ^C@QBU^SItPBX_VuXCTREX^_J%B8Kwa~JKP\x1f|S^VR\x1fsZ^Y^(3:+VooEHN1bflh-Blo!8z]&5dm3xEFFzODNCDM}.7}xxwlKIub~tXEYREUmWv,pQn}*JfGOhRA^I.aaumFjTr{7OMGR1Ab@WJUBWFGa+@:=/EY([4*@EG[Sp:rf[8hprU2YKnTbpOUODJC,GsTd*Xpi8k(X9i^JN^HOyWTXP18dw4BZ0!lXYB\rx]J_LIH\rdCYH_[LAuA@[w[XXQW@uEAUF]AYDcbEVI38XbIOE9_Mxo5Y,?};'':#2'$76TD+qD&+%:E*bUCUD\x7f^c@QG^#()Y?#KCyO^^CDMYeeH=l,3gqz8ZjPbDQ34fytntpd4lp$/WcLKAcLWVQfMLIAeILI%b}XU)J]q2B2^{xx.]/FGk!6%6! 6zW]C8maTL%*&JBVKIvcfDesm-SkVBB86/cUDqDDBYREDUB@{@:o6K=/,)2/(2<2CeDtCszhy[JMUSM_T^!nlQy)93c^1xNF[i@]lGFCK^JODP@RuWFaW@D[QW9{ac)B)F6|]PQ\x14gD]Z\x14uZ]YU@][Z-&4eiF0WWQuMi{gN#{0j[H_TNZ#MOUr1lC)]_!vMJU3x=@(#2?EckzNAj{YTTZY[S?YGRf1JZiuR:56:2]ZR}pB}rnX!]&~WVLR3YenvR5a7Gn$6pR__QRPX)kcuN0RZB9}LIIDCJyB]7h(5_h#TO[FDzJHEL=zwp;wm/JFIUB@HSVIWJSoe{lUsfDU`UUSHCTUDjU5rD[c@@[bNHAJ[jANMCJKa[HW-qf[-gbjVI$-LeHZ]{FEEo@[LjEFJB`TUNlDSBI@OU}O4(xrDCCT_EgP]DTU.WpN~Q]U3S]t(/(R]2t0_hBOI;7$%*TY(n($lQ,;.Ql7f]_OrtYzM7aNZGEzojh}RM[kpjupDE^r^]]TREr^X_BgHRIu@SFDUhRM@OEkVNBMLJGqLLWsBQWoJBGRhCNX_eNS_j_q@SDOUOCQ=lLOGEcLXEGxmhvk2TE9E$yiXEIe|QTZSPXSI}ReLLYO^VZXt5c_V3n4GVU(#9p1GI2tVlRwXBYePCVTExB]P_UMFTVIeiRPMeMsAH0*)8.7fUnGjr.Yp;6=/FQ&NuJM/:1SV(#1H(cxt*k.ND3PeR@VESDw_.Z_w8CJAS(g@ra}]286Vm}KBBhG]Fp?VDps#l]]AT~Y_BFH`BIH$/=^D:#Cd]H=,:ot@AZw@AAZ[vZYZGl]JN[JxFAK@XkvmuXBR^CU//mOQo+!oC@C^SamCdsZv)_BA@[JYE_@UGtNzUYQv-md+gINLdxITXum@EKBAIBXcROCov[^PYZRYCmBEOmBYX_hCBGO92 +6l){C,:}),veBHITnIDMZEC^m~YSROuR_VA^XEwXBY\x11~_\x11xB]P_UcLKAcLWVQfMLIAcX_@#=!iKu)xpT0A(V2iELg1YfvakD^E\rbC\rd^ALCI~RSSX^I9U)[yWZgHOEgHSRUbIHMEn_BNHEqQ;X2dpsOBZFQjPOBMGPcLIIaLW@FQLJK4:<?4QKk=NLFAyV[SWsT^_Bi_NjPWJGJWJV\x05mPGgM@F$gsLWX]pynH^IrUKNOoBK^bMWLMJC_BLB)KcTSXCEYr^_WXV\\HUWiY[V_{,+KwAHH\x04eHH\x04bMWL'19$hj8:[{%tw4=9>?=6=*9,7*sGF]aW^^tG^^iX]]PW^kP^QMbSNBzWTSZlN1lKUPQfMDKB@ApXC_VZzRS^BZeQPK\x04vAFMVPLJIYON]XRJG]JhYNJ_Ni^__DEeCP_BAPCT_RHwQBMPSBQFM@ZaF^GCM{MZ^MZtBJWeLQ`KJOGfDIIGDFN]W+Wv@HUgNSbIHMEh^OzOOIRYNO^fDU`UUSHCTUDiKQWAaJEFHA@wFQU@QvA@@[ZrDCCT_EgP]DT{WVV][Lp).aM|PV_XEDUT%b1{MJJ]VLnYTM]wAPePPVMFQPAgPFPAz[fETB[{XIUVON_iS@_lKSJN@v@WS@W{MEXjC^oDE@H~QKPQV_kLYL]hUVVj_T^ST]&6?,813&,?5aBNLA}ALTH_hJ[lGFCK]JAlN_xNY]BHN.BVKIkBBWAP&gJRD^_dYONYcGUOHAuR_JCi^LZI_H&O#/jOXM^[Z{^K^lHZ@GNz]PEL612(5/-+;2/,-$)1nf:{50q@]QfJIJW\x16b@Qv@WSLF@bMVAwAVRAVQEXZxQQDRC{ARM{0)^f7cJIA@WkDH@dFWpFQUJ@FtVG`VAEZPV*]8Jmw[d0fLXEGeLLYO^EQLNlEEPFWaPMAvZYZG\x06;47;3,mP(q8;*<%x&^9fhDE_NS_^JG)#,)+ 72 %sQ@gQFB]WQgS\ncYFKDNC@QG^d5!sxENkI^CED|LNCJ{V_Jp@QFFMdVJpAVRGVgRQfOL^gr41iyUSZ]@APQ5-6+%!<)4~BCIADOYY`PAVV]tFZgWFQQZsA]^H@]8.x9nrCTPETePSqMLFNK@VVyIXOODm_CuZV^p$@CpAVRGVvQ333333\xeb?vAFMVPLWk]LLQV_KkIDDJIKC\x9a\x99\x99\x99\x99\x99\xb9?o@LDQ0Ze/?;/<';#\xcd\xcc\xcc\xcc\xcc\xcc\xdc?`QVEPMKJqS^^PSQY~bhDYENY\x00\x00\x00\x00\x00\x00\xe8?eGJJDGEM\x9a\x99\x99\x99\x99\x99\xa9?lNCCMNLD\x00\x00\x00\x00\x00\x00\xf8?zEYC^CED\n\xd7\xa3p=\n\xe7?rP]]SPRZ{YTTZY[Sa^BXEX^_hJGGIJH@nBCCHNYLXEGxmh]ITVi|y~SI[XV_w[FQsA]QEXZepuO[FD{nkmA@@KMZq]@WuG[~AEX^_BXNQDUBQz@KE@GNIO^ZHARvZYYPVAyVLWVQXgHRIHOFoCBBIOXp_E^_XQgQ@GP1fBVKIvcfhDEENH_rSEBDYOi@@UCRoj^MAIsvBQ]UqPKVYF{JYNE_`FUUZKEBJO6DEY^EFFdBQQ^OjEIA]YeSBiP)puAR^VqVNQL]eGPGPDfWDSXBwFQU@Q /, (<.''!pRSXDgNOU?KBYGKZYH^GXMN@I83!57}LQ]v46#4?zIFOM^UGnQE]DON 5681LYZT]jGOFGcGKMO\xc3l\xf8\xf9 \xa5\xdd\xffk\xd2z\xa5yVZRnTGX7<.ReYTL%vr\x1bd^MRw]PVsYTR\xd1u\x01\xf5fBVS~WTFsZ[AiRUJd_XG\x15\x03\xa5B\xfbz\xccKeOBD\x0e2?'ZQNB9/':}R^V3\t\x87\x04_LZST]V/\xfdd\xe4\x01cIDBwF[WoEHN\x0513NGQZRz^JO\xf6\xc2pFES[FvYU]I]I]'19$bHECZ`\xe5\xf5\xc8\xe3\xd1{nDIO\xd9\xdb\x1a\xe1`ZIVD\x8d5?W\x7f\x13\xf9ta\xd1\x0e}SO7<.0;)o&m>7<{VoK@R]VDf]B(#1ZFC#*!?4&/$6PGKsI{|FtjPb,\x01\xa4\x01\x08=T,\x0b_I]7\x15\nQ5\x0fb\x034G\x1dx\x17;VUs*\ra\x96F'"))
local ju = (buffer.fromstring("\x08-+,b$-0b\x0672'1b#,&b\t';.'11b\x11!0+261lb\x0672'1b5+..b#.5#;1b 'b#,,-7,!'&b#,&b,'4'0b%#6')'26b+,b\r70- -0-1l\x13?:;~\x11+,1<1,1-~\x13?,5;*.2?=;~xx~\x13\x13/,9a]Kv&Ip2CVCSvKe5^W4,rnBxk1zddl'(-'/d0+d'+4=mEinPcVR^6KWR@F}[rg@TtDhI1Z?T{:*0);;-<!,rggqy|xxxp~}{px\x7f|Su$KnN]_$LqfubO%c{JE\x148+2<-)58:<y\x1d0*:6+=y:6)0<=y-6y:50);68+=xQoNvzzWJ\\]JkQB]hQ@]ThmN%BL3.CObynM]2T%&?abqnf97Mh%{AF[V[F[G`[SSXQ*S7#xQ==njqMPndY4THzjF;yQ4UFp\x12(/2?2/2.}\x194.>2/9}>2-489})2}>14-?2</9|!GhBk-mO^k^^XCH_^Ok;sG[n%mE%k{ixm^,=f(^]*M&1Qi^VSZPYWABF@GVYZ^/$mw4KJJopzT2=j:[QUfW+D1(([R;?hYNJ_NxGBONYsOuAYvY#hR*nHL(lB)os23dsS+/+:S8}RU_}RIHOxSRW_lSRXSrHz928T(bLEbN4%Wob!B#*vyjMGF[aFKBUJLQC8ccG6L)S^J0LX-:0up&H#npOhf-lXYB\r~HAA\rdCYH_[LAlnqi^p4jPX=%09XjzE@7c51)zXI~UTQYOXS&@{HhiPm(WB&h7&deiUXB#I(IkGI]E_zKVZvoBGI@CK@Za3N8uc@r]LR[^;Y:qx&gEU[Kd.zzWOYCByDRSDzUyH%NWy{tT*gr2C%:j2U)3X1hv$hRbIX[C^GEBK7kS]U60XG^{J2.}WA8({=qiFI3bC;%sjMGF[eQBNF7](!2[rqw:x(%ToYSm6sc[79cfkz&rxNF[i@]lGFCK1)9_LzK)Px@[@:xS826b]AtrKdO_mO^nOYIODNKD^Yzf]d$-hyVDf)W)y1/GD%?YYm@,sPPKr^XQZK=!DqbZDLpnC[pG]Eg5yQx+[X2$).Ij[LH]L}FNNELa4-RZKju*$cDGkCV{oH9{Cu7e#B~XKDYZKXODISVD@5Bg,rO*f.qJg+E+$z_3vb0/wfBPJMDgJQF@WJLMPIm?{hXfChC99QgAHj+2Nv5dPQJw@GLWQM1?CBKa_m?4iV)!_=smmSC;rUT8QlCDNlCXY^iBCFN=I;Hy=65LyaI]7cu#xrIF3ry|Y_X\x16r_EUYDR\x16PYD\x16rCFSE\x19}SOZSEE\x16eUD_FBE\x1f+*1~\x1d122;=*~\x1a?72'~\x12+=5~v\x1a?72'~\x1d6;-*w\x0732)f\x05)**#%2f\x02'/*?f\n3%-fn\x02'/*?f\x05.#52oyH[LG]QSLSr5xL+lk,Gi-{KzcVadJUnGq;5VJbSD@UDuNFFMDnlD$MjxEltH}RlBd$Ltdrm}@&+:97$7)60yGrI-sHO,vRk[jO,7Td&w+,V+kG%wXU]YvA@@[Z6y&b.db.*mk4Eq^2^}IbQqmockQVKFKVKWpKCCHA3=0X&)w?GZSDHA.g/3$)!yOHH_TNl[VO_r2d}yF/LW.67[/a/XYK+BPn(jE@IbMAI(sZQWAq^E^w)](3--SDj8VeD2#MvuDW@KQ,33w*&b7*ju,G{bNRuDj$J9=Ow548DuDSWBSeZ_RSD/=iL!mb0senln*Lx*.28hXDagVERYC=rHos1hEmoz8Z}@*id[Hoa]F$p+2?}YKQV_kLAT]2{;VJLTp&8[ptHN4AT:cKR1F/0/:;*:GM/eKVd-]/A2gSk9]@:V,lb[k%aQtERVCRcXPP[Ry=$q;BWO;O}?Dgh^euG-{[!jvo^[[VQX}^pj*3091oj=,(yTs23XD6YM&^vJG_CTaSOJ0@v6zXIr7Ni;R_dxt;RO%DLHZ`BOOAB@HH-!HQZvdZQyfx++YbbeC9E70fOrYMPRmx}-RMg91+JM}}4AfeW/]mvuSAn4ypPDY[dqt*Ggg+yw4/mN=(6!iY7v1pBnsv33}GF-#}].km.1B5mC+yr}}[pwSZo^J4N7v:NZNZ&H,kpFh+-@I]Ui_S[@qZfu)AHIf-).sUCToHVSRuCTPOEC9ZM+q3c7/4AZFtAmt9pRCdREA^TRzo-m.TAY+2iZ*h,EF-Zp.dO-,<&?--;*7:dqqgojnnnfhkmfnij$7I*m*brB@MDuXQDT1G}BNTCSM+}2huc{,)Saybu6dRCvCCE^UBCR7HF#-&X%Y/KP(z:uWnIDHeOBDyF3Fv}2fqZ4h4#GK?@M^mB3#f@oq3h@[GNBbJKFZBB50?5Ak9ohDPX?#1tcOqsoLNFJ_BXCIy_LC^]L_HCNTC&c,3-nvt8mbHEC/6I^6]1JDJ1h[GBqkZ%@yY%dNX0k{|M^IBXcdmWZr:()QlZVK28fWiG8Y.geKBQEXZepu6$}J5Y}ZWh0IX,]L1.-=plKlPVhBOIdxU;r*[3d,w@43hj/$Vy5e94ATuGljFEELJ][O*m_(&HN(L_l,pbGk76Hz5E+RgXD^C^XYVAp^0.CGgz0qza%segH?${)$&$)+<!088WTt2?h/JK;Tl{oJ)Zn1C*EDhL^DCJiD_HNYDBC.r#F6)@9_1eE47HwO^RAU_AZ!AIs9{IcowZ0[l+k},uT.NQBQplvQWJN@9P*Q*&IUZRkxM%98%:&v%}(@.#*<3((3/5q,o=n-9l%4JWz4^&=ki71pLMGOJAWWF_.im24?mvih]uP{42,8v_U^LolhT-C5h2V)nNYid$o7R6uEtIvImGZFCJUVI]UUoIJa71GPcg_]%?vCW7k0\x13/,$`!,,`&)3(noII,tQ@X!0G+RpcnRoC^BI^~MHEY_Je]U.eK8N[TlZe,0sG+GL^CtK3Pzdg7tr1UYk2}a0FY5hCs!8N`FPG|[E@AaLEPY+PC}ES,N0$)zHvV37}GTKS8no:kK*Z.vlypxY*3vZ7aG(sn{XJJA|J]YFLJ*9=lMYlMGo[M17rrm-uDW@KQoJ3A=@9mkuu(Oe1]r;LK#5Zr]VDs12oOn&WyD_[^;SOGmA$/CB1D-CuVDDOrDSWHBDB7s3w!qScOQQ8@g4feWQERAMIWCI_LE^25^w4wvSDTD8EAi]xZWWYZXPvL]pM{&s3,Gr5cWuXqx76rCDWB_YXqRw4Z&?w8T^2:1V;GDw8==)/,4:01[Q)Wy0]Kl$}+cP9;C.40RFM__4d4imiCV;HxXG-buj)+yMwo}i\x17588657?7^2KliRosoM2Z&?uSW:5DdUHDh,Sh4D;=}{a]J,u0.lcAj^S)xeLMW6q01W/;nBCJ9$Y4-UeN^aGY1nL]yEHPL[Z540Yrp1ju9vs[aWbv.IHMNIRCGODPPIy*OX6A*B?.tdtS(a^D^U[RbpMC,{K&sfAO:YPJd7va/!,,G%rOoMBEdQCd:85)s$Xk$gvrak]LyLLJQZML]Ew]1C6}0$RFstyjg:3*=/.w.oh)]ZfBE47v3:[r^yI6WnA[@AFOP,eT+FT9Q;1mgOiy0PJnLvUDX[BCRd^MR9K_d(]h:nmEOvBCx_bE^RZ2yA_rdk28L/fAX57NI8stPBX_VbEH]TDm%=Rr$*hIX5Trt(mJRKOAwAVRAV{i^CO-grdzPRjSJnZ[@l@CCJL[cJNIj:(?vo31/Wr%cAPePPVMFQPAkR8%4k9Db$t{kZ)D@@CS_Ru-VfLo,PtFWH#=0_@tS_vGTCHR,.Tdy[P7gU]]3NS6j:KUY^PE){)6#E_B3&gD8M5fQE#D+EOeRF[YgWUXQim?:U*DeGy%{Z@g5N\x11'..b$#+.'&lTn&-z?Gvu[*,_=mNNUl@FODU,w}Tk!Z#U2cmXZEOoKYCDMy^SFOorpk7[eYhwCy%8faPMA8*ZkgAm[L@9/ITS2:$%s;khIOCHIQ-rp3bIP}.PxOvgdWuTCo@ZA@GN[FWiVhy3]v^%9K-}^pjvZYYPVAyPTSrP[$OlHSdX=EueDoPLVKVPQDK==5DtK+gHk2;m7iaPCT_EZ{n[ijaeh[Ii/EJ&6.]i^kTet_7[,hhXQF$8:2}.qbs9cPHWXT]U94VQ:YnTbcUk)5e;LoY^^IBXzM@YIX*_Le:CaAh{y0o[ZA\x0emBOGC\x0eg@JKV\x0e}KZ]0ep5pDE^a]PRTsTBE0hsLw*dg$K}CeRDRCxYdGV@YE3uF*g9,1gh*A+ 2w$IL)2ryVum&E6h-_++B(r\x1d,?(#9f/A]Nc_WhWM*8FWPe8-&4Pz,AM/Ui3N@8F(4.Y$#z2d_XGA=SKvWpoikv#/!UR#axIdPQJ\x05w@GLWQM4SIa+NXd[OR,9: <2;2$2?&U*5LlJ6q177%-dL[JAHG]|`Oi7[A4H&]hh2fpk_^Eo[_CZ]-%s5Mfx60719g@`TUNbIDRUX&SDkUfMt5*84923$%#ymW5tB%EZ8ikKNdDgp]^OY@cy28S2panMM6(NCw,ojMULHFpFQUFQ+Y?0bQ-bbOy(#9?y&unMP&vg(mqS7EXb:-tXYYRTCIQ]YJhcIVDebi0VclC^_dALd7g)z!o{K?M/A^1rXUSf{H}T&r!CLz1x54(5Q}LIIDCJyB]hV)),Q#n*4*9~WVL4DRNEkM$gC6+9X+5&.fEGOCVKQJ@pVEJWTEVAJG]CU]@NbT7Eu:bmA;ZsE($zmtEVAJP2BhW91sj]7-0%i04tWU]QDYCXRbDWXEFWDSXUO;-8/$$%'[M^/&Z*2V6TE3-`GJ[LDLG]F&{Sf{le907#raFLMPjM@I^AGZ/lg*+Q.oY^^IBXzM@YIR//Zv[&?+?6=)r]#?,x;qv0L8o@zf9cTWCTBY+?{Z#x*Q2hioU1nLVPFaVWWLM\x12`OJ@H1KX6}_Ni_HLSY_}]/gTw?K}7PhR`L;9[Xv}w{y06!@*%*lgM@Fqt,o;:n4mzq0h-7NwAFFQZ@bUXAQWT#%#P}[t@AZ`ERGTQP|[APGCTYtzXUU[XZRHOcT3zWuH+Nhw@RDWAVn/RHEOz=v1a@=fQCUFPGh.dzA$#5ilUOnoHVSReNGHACB9+7Dup3UcRAV]GL5Sn2ZH]?CWT.-*#(XvR+t$K-P-enYB_s?KH]W/}lRb[&;:rvQfPn2yFZ@]@FGCWS5w7m{v^E<1<-!:6VZj;6D(r5/GlhIOCHI(ksjRkZ?MCKAL~IJ^I_D\x0ce_@MBH\x0c`E_XnZ[@l@CCJL[n^ZN]FZBl@AIFHZ]N[F@A|NYFAHaF[@SFG]HEhE@NGDLG]4?-5$VEakS-nEQ8f?#&dBTCx_ADEeHATrzn4/}[HGZYH[LGJPdR-v6rc_RJVA@xv890)N8CPBpDE^\x11r^]]TRE\x11r^X_BsDV@SERj/x0&_:Q)s,aPMAld79rI!#J/+8c0d^MRqpodI(TzBIR5bvTNH^yNOOTU\nxWRXPXg.Y1n&v$kxOHj3X&~OR^iEFEX\x19*@skME.hBOI{AfxNSvyg3;CAwrFUYQrlY(qHwi[C=z]PAV^V]G0MW*!;6N|TOSZV!@XH/@;i6MfgDFNBWJPKAfJIJW\x16uDYUy`MHFOLDOUrVjBYEL@`HIDX@1Un:wXCTbTCGTC^b]S2]zNOTi^YRIOSexOfnwCBYuYZZSUBuY_XEc^FJEDBOyDD_{JY_aIRNGKDm&iUCZyO?iEDDOI^i[4t,c4)5?4&8IIcgDQZLa/(G_KVTk~{%w=!?)ZYeBNAZ_@V@^_#nUvW{a@ML{FEElOOLJ]ZC@QG^@nhqKUAGwm~DC^S^C^B}^PUTC`QQMXrUSNJDlNEDfJWK@WwDALPVb*pg@JKVmOZKIA\\GK]dw-fxxp;7(1=<yqpVEJWTEVAJG]o4[nZ[@mZ[[@Al@C@]`LOOF@WbRVBQJVNiXOK^O~EMMFO[vgqTCVE@AvAUQAWPeJMGeJQPW`KJOGxL\x15|FYT[Q,BdD^kGZMo]AQ)=n@lfo@[LzL[_L[FN2.}LQ]qhE@NGDLG]@CRD]6,1.?yM);iYH__T}OS618U;kx_UTIsTYPGX^CkDCIkD_^YnEDAIo@ZAnLH[hJ]@FGjOXM^[Z{^K^lV0`KBQB@WFQbGGFGqZS@SQFW@sVVWVlCDNlCXY^iBCFNgVKGkr_ZT]^V]GwCBYsGC_FFD4fzXInXOKT^X&*!tHE]AVWCymlqGvBCXg[VTRuRDCqFNFNAFQiLJMPv]TGTVAPGNV5pYZOZYIGOFZpiHzGDDxMFLAFO4Mo[ZACOZGM}GTKmA@@KMZ#}!nBEbMHH`MVAGPMKJeJGOKoHBC^uCR`DHNLeHKLEUbZm[SN|UHyRSV^SGZXgrwo]o,-rDLQcJWfMLIA~H@]oF[jA@EMiEFFOI^A%5iW`G_FBLzL[_L[`QFBWFtJMGLT`WES@VA9@lq_pRCvCCE^UBCRbTSSDOUw@MTD/3!,.;)=#3<5zKVZ}GTK(Mz=dRZGu\\Ap[Z_Wd_ESXu^QR\\UTw[FZQFfUP]AGxNII^UOmZWN^yEDNFCH^^J?xgHMGOfQPPKJ\x16|JB_mDYhCBGOxNF[i@]lGFCKlTZyGFkQf5h[tE@@MJChABP7vQIPTZlZMIZM(>6+*3F&4S!$lZ]]JA[yNCZJ&-?AcR^yY^C+dFWbWWQJAVWFs^DG[VNxESRE`QFBWFwLDDOFeQPKbMHHhAEB(9>,(-8JGhe[]PZKOA@MNutCWSCURUdmzvGPTAP^4+YrmNB@MqM@XDS#-809??0=!=mGJLYZjR9!Qu]J[PYVL^C{v[CUONuH^_HeTCGRCrGDpitNOM^AiaS3_eAMKI`MNI@XAIZPn@Rv,PDY[yPPESBYMPRpYYLZKCWJHjCCV@QwXCTbTCGTCrC^ReIJIT\x15YUYTZZ[BUEp[TWYPQ_q1fDUrDSWHBDzXBDR{RVARjHY~H_[DNH*!3shDvr_)nLVPFoFBUFFRTC@V&7bD|YN[HMLZA:6.-,:6!)!%}RI^h^IM^I~UDG_B[Y^W`PR_VgJCVgHRIbNHORsBUQDUdQRrB@MDuXQD?894%52?6k[YT]lAH]}MOBKzW^KbSNBzWTSZQABEHC[B]xSZIZXO^I[NQDLOSQ[GSNLrB@MDqED_\x10c@Y^{KIDM|QXMxN__BELXfWDSXBzYb@MMC@BJk]TT~QKPzfl@]AJ]|`jF[GL[%.<U.g.1gQ@@]ZSG}FA^.cxfy[VVX[YQd[G]@][ZfDIIGDFNo_LCNEH^~JKP}^VK{ZWV`CZ]mq{WJV]JtERVCRpEk_^EhKC^`QBU^D0nzL]]@GNZ{\x14\xaeG\xe1z\xa4?AJ_YI[MZxd~Y_BFHoM@@NMOG`SKT[W^VxZWWYZXPMYDFylixBIGBELAJ^^JVHzFFBuWFLZU^JJZuYXXSUB2'#1*! GSNLsfcjE_DEBK{WVV][L|]KLJWAJAS6Vf_vLGILKBkTPMKJWl@HOuv:xTUU^XOkD^EDCJt_PS]TUiEDDOI^uDAALKB~RQQX^IvGTCHRdUFQZ@l]JN[J8-:%/4}L_HCY>0,%99[TW[Sis@SXBE|M^IBXinserttERVCRvTCTCW~E_IBaVUDRK*hYJ]VLjL__PA`LOLQgS@LDvYU]J165=&nYYDYcAJKBLDSD?DGV@YF^GLM   *&=>/9 G_FMLrP[ZS|O@IKxCYODsW[]_(>6+|FUJ{JW[~Q]UMFTdiHr\x1f5#+6`JGAeLMWFw\xaeaD\x16r\x16b^SKyCqukQB]\x0e+c\x12e_LSa[HWvL_@hRA^\xc3\x00\x98\xf9\x16B\xac\x14xDIQkALJeJFNq[VPmBNFxBQNOYQL~EB]=+#>\x97\np\x04\xdf\xe0\xd7\x085?D\x8dyS^XiN]BpZWQlVEZfZWO!\x8e.\xd4yPQK-%2=\x1d\x94O\xe4AV^KqVEZ\xdb\x03!\xd8bXKT\xf8\x12\xae\xf3rC^R 6>#JAS@I]]JFMFT%.<*!3_TF[PBXSA-&41:(:1#4=6~cr+/7NH_5>,@KYFM_\x05\x15!XlB\x11M\xdc\x0c#\xa0f\x8cR(PZ\xe6DKLFOq^\x19\x16\t\x1f/Y\xc8"))
local jr = (buffer.fromstring("kNHO\x01nTSNCNSNR+gSDD\x01jDXMDRR\x01\x07\x01eTQD\x01rBSHQUR+zbMHBJ\x01UN\x01bNQX\x01eHRBNSE|gSRI\x06vSTENGUC\x06g@@ITBGDJC\x06sVATGBCU@@K54w;3SDo0;]7p^5.ciex[P@2#*6621xmm1+0+71l/',7m0#;$+'.&[O1g&$JNgzW!ZAg#EgOKnKXfEGOCVKQJ@pVEJWTEVAJG]&909t0NQg/8lP2tf=]HBduWN-vBCXbGPEVSR~YCREAV[D#IJmpV3H$8weMb4yJBTH.u*^F7~IJ^I_D\x0ce_@MBH\x0c`E_Xn4ssl9lV=1a#N0jYVajVTCYI-2hL^DCJiD_HNYDBCe]$Emm.SRg5[I56^sd&:I^KHVURCYyCDYTYDYE\x16{WD]SB]OkX31S}5(?Cp4a=]b%Chj3(k1lLuCDDSXB`WZCSrtHo*pjxCzzX6sotaEE?TCd%V{Qp3!q{J]YL]lW__T].eJUzRw!8)!=4bUNCwH?=gH6bv;RA%R\x03%69$'6%294.ktLrHlEuT*H+=oPRj),JKVaZAH9&VMzoTNXS~UZYW^_]Qb2VQ22qZN][p@T,RxiXnv2hAs0pY?gQVVAJPrEHQAvA(b.I)rl5pz5Jt{hs+(uSo}AJ=.&(x_G^ZTbTCGTCAO}jpa)Xl^&ya!UdmS45#!-m]][rY}xITXtm@EKBAIBXx}&5R+G$DJ1@GYQ$43q,AIA[N{]BbVWL\x03pFOO\x03jMWFQUBOcY1D8K}GJm3=ED4nG(ett-Sc@BJFSNTOEbNMNS\x12Oe7CDvo5!B6A2]&RS8L[q5*WtgQVVAJPrEHQA(X&g{c(I!:(i/erMj;[wj$fvRl_FysEMPbKVgLMH@s:MthYQT?NR%,It}ZfBHY9raj?B!qSBeSD@_US_AQv)%IJEdeK0f^2i5tTfVYUqdlgl1kCXDMAaIHEYA/QMCx%mv4xBZ?^qY5nel0s6FMN8dpOTRSGJsUCT_vRdnGV?(AUU;+!95J]AgJq5Vw5yrC^RqTGVVCB/.S(4u{CAeU!aIA&oRC*]$Qhhml_cAP`AWGAJ@EJPW^,vve/u[PyYY(Z#&bOBEFBtL=mE^BKGhEFNpmqi4Q)^.sPbkzje,8bWMfOPg9+(yVQ[yVMLK|WVS[t-dtdvnWE_ef5VIqI9elRS7U5.6: ..(,:+IXDwlN[R7BXkt}ud3-5CuVwr+c${hOEDYcDI@WHNS%(([j?Trl^7}UjTKR9a[UX}+pRCdREA^TR?p+9M#&jkSkU1;2#mM2r$m%dhJc8%-5//!()g0zgmHc*k1EIP^bosgS]bl&Bpa$j{JW[cNMJCsCDs8r%FkS.FJ{J8])N6QlilVc%;FXWCMCXQ4CW!)?EI-DQ$5Zm(uX/kunMefBh&dbX_BOB_B^eXO#k;z%uAanQ,y=9jZa}G-;NK,-uYZZSUB#-g*s3m:s#yOUE,zjZTzO{*pFtK6^_`AGKVwHKPB-!UXq-9.w2:ABi!#vKEi{Q7[.a0:$'.&2>I0j,,OdLLg+4P,6YH0DajA2G(9%;`V^CqXEt_^[SkNnooQx;zzB*I*j*C^-TSG9iJ^CAcJJ_IX]_UD{5JFMS=TL#S2et/Kcq[cg]j[H_TNJWjAbMPl@oqFzh%v9=ITxtf?;dKj-:gVERYC%Fz=JinXKlCs{*u=MXtW&5jOFeC{$l]JN[J{@HHCJc(JE%yYlHydsq.]2#&G6zn4jHEEKHJB,Kd;^Ch:m#LT?Sj*p^xA0YkE9H?J[GKNZ[AWBn@2l&;v_#NiZRVt7/fM5k:i=qn_BNc{VS]TW_TNK$d;!^9zgKo6?[MqK^8k0{YTTZY[SkVW5c#&q,syZnLjgKy1i7N-,.whjGOFGYbedK=IZ1.%Uu/oS8L,hJtCC,InTLabX_BOB_B^}_B@BHdkUmY1a^Y07Xg=k52B8b^SKW@uG[()jkAkbKk}#tp[Ic5)-7Yc*KqM[SN&MmnJ[JEfeQuC@AMEF#2NEykykaRKB}^^E|PV_TE}&UF^D(lf2KQH7#-6$1+p+;qh_I_NuTiJ[MTt9LHwf2,uW:jke(h5AxrycoL]AB[ZK~A]GZGA@6.11R%T:9#YsEY,bKdWLRBCG^FFG#;gMp&}98wd[V9a-GN4I33-,tKWMPMKJ_tAIjl%W19q45rvZa6]tG+jsYC_TXMYPWdC{3_MQ^p&7G(bsee!UEggxM(/q^YSq^EDCt_^[S!o)xtP[e-4_SviUN:W!hDBEXaC*AkK9t/b+:3_/jexZQ%I(YPv7t|HIRnMTS69JV*AmhkXb0T2bL1q2}=5Ai+sGF]qZWAF%Gdy:AMx_0DK(2v@fX1X6+BZeJOFmBNF9gLVR]On;CwfAXo1r4M_C+xgwBVKIvcf)^+mkvMD2;-b20XH@1KDz8%4&Xm[SN|UHyRSV^LpA(Ga0/3FFW+YRWi8).-EQLNlEEPFWp0xfuC9u)_uM3(L*+tAey..mA@@KMZ4W+5?:BSbE(!=34!5avQv3Gd#GIOG@PMIIRqfXX8Rf[Rpwt$PAV9txYg+eycDB_[U@OJR1/YLiRZLrkTtJ]@LA^#llNTRDmD@WDd3[I8YrOdoKu:=m^^JN4aOmBXCBELx_J_NF+wP!XLSWql/1E4Ed%po|MZ^KZlSV[ZM;$2fvR9}Mu?Bke-,CJvGo^COwZY^WIWsnn*Rgz&IiaW,jg/k-+9pAVRGV1ZVYX?Vyh2{B(T(EkQB61V#)NhL^DCJiD_HNYDBCv;9KN6-:ZH%l?JV#x[YQ]HUOT^nH[TIJ[H_TYCt?WHaB_4?vTYYWTV^S6^Prd:_E7Rcf]LIagVCG?Si_XXOD^|KF_O5#*/{:.2ud;xGLI;:GahKE@gKJBMCQVEPMKJ:Inflto!G{gacdSXJMO4Fdi7f^.yoI1xq3DjfE-b^Va[w^]OnCf;ouyev:6ZO%)^#Z3],#Kw]g}ZB[_QgQFBQFE?BeHK+zrk(=lbLuD!yAX@]DXQ{D@][ZGHhkOVrsrn7U{e(m\x1d9531\x16!  ;:;eY9?@a;D;Sf=TETKRciNUh^IMRX^Zjja,^EQD-1@nk+$ty&rRF[Y{RRGQ@otYFANoqHxdi;B,vx?tezXInXOKT^XR;mIff?V@W*j}2+Tg&@|O@IK2v-Tjxz:T%I1q-A!94ki5CO(LXEGeLLYO^}^XGDa%c*lt+DMs7_5*BK@%U5Uph=@aC-^,%E+T9}(80a;/+\t=<'h\x0e!; hch\x0b);<h`\x1b=8-:h\x0e);<ak_^E\nyOFF\n}BOD\nhKIAZKIA\nl_FFzLDYkB_nEDAIBEHW2D:q0RAHm![1nA[Fnid%v$ywzi*A*NcAL=]kO]4bXDRCAPQ[BOOdNf?*2+9pV(njd5CX)*;-4ngyIVJTVQ9DIN+;i8EcC/RGhA@Z#9qF@M8%&:3OHP[9Hq*f1*7KhL^DCJiD_HNYDBCf)&?CBQ&ru_[(92 ^Mld)6xVWY%9bu8aFcX-js-(3~YJUqf&*e&+{K3J$YSSBxqG58{xHqED_\x10rEI\x10rQYDIx?TgYdfSOij@/m~YSROuR_VA^XELGj0Yv6h}k4bhnTGX_1HL!HO,9zS^OZLF;j$su#2{YCEStCBBYX\x07TjlAo1f+i$[f.JKwCBYuYZZSUBzSWPy(s92J*q-}r7}RO+#$Ydom@j=y-hU}LI;b]iFWx.##uuUBH?Dxkj?3T@aED8S6hFa#|JB_mDYhCBGO#tm^t(8ZuV-hwUsj^_D\x0bhDGGNH_\x0bjZ^JYB^FudLC14= $,DGhl&=f?,#P-#m!I}5D/w0rPJLZrPIZRZQKw/dr4u?Rc,V6WoY^^IBXzM@YIs{)PFc(4#z*^ZuxZWWYZXP-8XYt@FZ0qc8s5WO.&xTHO?W*S:mCrh:(M&?)&WI-ZE&ZQC!abKbjqw+?AcQOf#[/xTiT}CWJHwbgQJbA/@B,Y&GC6vD*RQ.MYDFyli6&Biy8?v:HHvDf]:uN`OCKoH$ai(^vwqj(knHS15al.|^OzOOIRYNO^^}b=85Y}ilYy]vYU]HM!tgT;&bz^Vh$r:W7=MYB@ZAi?h(AulsYsg]r$,Wq?zja)$1iQ@KHbqX+x^woUl93wI[jKj^_DmBGGgNJM@U.QaBQI}+&4&mBNFF)+X}q:Rmu)B3lB+C2iT@[XI_FGlO*WMX;VyfK&H?1eDi1^_HZN@DSOdus)?[1Qt35z81z:;*j__-n.-X?2aG3uvaEq&gw~JYU]r*fgqXm:c%CrvJnS6D4j]K]LwVkHYOV6W7zg53A*u/mcROCtX[XE\x04r%z54Kd3[{-ayHv@HUgNSbIHME.34pOfvo,(5npDE^\x11t@DXA\x11sTBE\x11x_ETCGP]nLAAOLNFm5Nus6ArGF1)[7TO#5= o;{%Oym9AQYla,xI_D?hGJAF[yF@G]Tz3q6ds1+%FHqED_\x10rEI\x10}UBSXQ^D\x10cD_S[vGPTAPaZRRYP4&;Bm3t6c2=zKVZD5ez#AIXB)-eNBELxVa{hOEDYcDI@WHNSD8w^@giGYdO@CMDEMtK2WJBdjhqm-t4sPRZVC^D_UeCP_BAPCT_RH30!7.L})7.tM#ZM%f?GyRsPD]NMk-!v_ROAZ48B};&yc1+0$&?<'rh@1${N,)p.rDpw^]OrqBg_oB}nV[-3EZSu*aB@HDQLVMGwQBMPSBQFM@ZNZGEzojm-[de}={16Ozqz!~OR^iEFEX\x19@5[!EIYr^E4#|SN*kzx!(b#c2P${w0TebbNRU^$w]7Ir{:{U.4&+@xbVWLeJPK)Q-6dIe0[+hWSnZ\x03jPOBMG;5v(Lj(LHKaquTR^Cb]^Efdip69Y&2Ka(# 1'>0*T7v%s:w!kbQg:[bn)v^SX?N5:jJA4?Si4*J6&6:)4,1h$(yrfjquRb*\x1c:),-fh\x1b-$$fh\x18:'.!<ftIJJvCHBOHA9&Yv[a96vzNOT~JNRKrUO^IMZWIXRwMJWZWJWKuYJS]LHTY[]hJPV@`KQ@WdKi,7H;F;FkQVKFKVKWiEVOAPTHEGAlXYB\rnBAAHNY\rnBDC^H&rC^RdSRRIH(Y!zqv%6jIq@]QiDG@I+x+Jrn&meWFzXUU[XZR9-R8s.SWbl*lKVM^KJPEHeHMCJIAJPdBTCx_ADEeHATD.QFzhs`GMLQkLAH_@F[+kl_ilZRO}TIxSRW_V)2zf[?oM@@NMOG{h0Wg}=Li{ES@YYz$B}ohvN)lOz@T^i@CKJ]aNBJeXP/bV=-fiHeJOCHRcPCHR#h}5?fJW@bPL/PRsQ#90_O){ONUW[NSYiS@_lbN0VyW^_BUwEYy^CUD&),3vLGILKB_PtP_uT4PLVlCYBCDMU;:;@y$HM9JbKHZ%q9k}*[7nfg@[GaW_BpYDu^_ZRZ]l&DhKE@gKJBMCQVEPMKJkx_UTIsTYPGX^CU0fLXEGeLLYO^?yMd[d:fWDSXBJwb(q?*,Y%KzXBDRuBCCXY\x06t[^T\\|OX^CIKFkFCMDGOD^vATHMGEPA@wPKVECAVBDSZA9TVjV-qN6-Q.:.91-6%/pRpK8}gbDSS\x16dxq.+1euLC=;>:>9*5=*P:EXLg?IQ[R[2=5RpIey;jM<7%qE$k?jUmJFY[muWZZTWU]4d,yqQo@xG]GLBKo]1X*GZ/FPGKuWS@Z11n2)-yflAu(@A2(O@e*1e-UhKIAMXE_DNiEFEX\x19BEEJRXFRLIEE8T$-y[VVX[YQ.N,mVDeiCNHV{r3L+U:m_,6%*2<<$70.2*eK.dFWbWWQJAVWFA=JbEONShJ_NLDYBNXgHDL0mcogB?&cv{YMPRmx}f43JiIu9nJXBELoBYNH_BDEo^COxTWTI\x086f&d6`QBU^D(qqQMIE?IsWE_XQr_DSUB_YXbSD@UDeSNQENVO{TSY{TONI~UTQY`QFBWFwLDDOF:bkTHRORTU{JBl[X|L]@CCFAHfAKJWfPXEw^CrYX]UREsGF]\x12aW^^\x12t[AZlO]]Vk]JNQ[]c_pJMP]PMPLoMPRPuZ]WuZA@Gp[Z_WqYB^W[eS[_TYZRtERVCRcXPP[RVIevQ[ZG}ZW^IVPM|C_EXECBv7)mr#rC^R~gJOAHKCHR}KC^lEXiBCFNTuxOHCX^BiEDLCMvYU]-#{zJb2ktnBCCHNY8-b:QjmYJFNLjURY7%&}G@]P]@]A\x12zGPeCUBy^@EDdI@UpQ|SVZQKzIZQKI[8sr9:XF%FxohNXOtSMHIiDMXi_VV\x1a{VV\x1a|SIR:9 5vp=v#^NEo~RSSX^IzD)_C5nTSNCNSNR\x01iTCosvSINv[CUONrCTPETsDEE^_vGPTAPaZRRYP|J[n[[]FMZ[Jh^VKyPM|WVS[kWZB_:D7hAd!PVXBQQNTSOBGuDSWBSeZ_RSDxW[S@p)xTZxLa}w[FZQF{x0IlN_j__YBI^_NeQPKiAVGLEJPv@GGP[AcTY@P|MZ^KZlSV[ZMtSKRVXnXOKXO|MHHEBK~EKDXoRQQ~RRQYRJSiCNHk$F&rwxA|MZ^KZkPXXSZuDSWBSbYQQZSyH_[N_nU]]V_kNIXSZH^rO^V}KC^lEXiBCFNuWFaW@D[QWG6lZRO}TIxSRW_iKQWAfQPPKJ\x15uCDDSXB`WZCSr^C_TCcPUXDB|_MMF{MZ^AKMcAPePPVMFQPAMYDFyliQbw=\x1a%>89- \x19?)>MW[doi13fQm//!<: .:*>>fW@DQ@j)c1%hL^DCJ~YTAHyFZ@]@FG[o^{TNUTSZg)qLxWZQVKiVPWM|S^UROmRTSIEPMWNAQRAKCbE^RZsPUVT`QL@g]NQ?RfA_Z[jAKJKmJTQPfACEJvQJwAVRMGA}_Ni_HLSY_ODVwTb36Sv^Aeb4&Z{_aK_B@bKK^HYtZCDsPPSUByHUYnBAB_\x1e8.3*632<;*fJII@FQXmBB@QppqI)xD6)'7.9 <!#'>+195+)/($3>,,92;27aPCT_E&,Y?{J]YL]lYZ|@MUJ@:*B +92*tIFNmBNFbz8*JkFBGFQaBQgWUXQ`MDQn_BNv[X_VeTCGRCrGD|MZ^KZk^]3,86)-<:=[PB)WLe5b~YTERZRYCq@]QiDG@IrUXI^V^UOz]PAV^V]GCWJHvFDI@`QL@g]NQdxbEC^ZTu]J[PYVLG_EPMKZ_fEWAtEVP`WCGWAFA`SDB_UWZosiNHUQ_333333\xc3?{WTWJh(gdxr^C_TC~XOO\nxdm\x00\x004&\xf5k\x0cCkTHRORTUqFTBQGP?zXUU[XZR|YWXDY^W:38AcyRe\xcd\xcc\xcc\xcc\xcc\xcc\xec?`BOOAB@HdUFQZ@v9\xaeG\xe1z\x14\xae\xef?mDE_0BWHbYSXdUHDnLAAOLNF`ZIV4bDbDSSdxq579.99)gPBTGQFdrHWZU_yUTT_YNYMPRmx}~SIYUH^tbXGJEONZGEzojvYCXY^WxO]KXNYeIHRCHRbNOODBUq^DYqv{CWJHwbghDGGNH_bMWLMJCr^]]TREeJPKJMDI]@B}hmoPxQrwgVAEPAuFU^DCbCXEJU+3/>(/~MBKIpWHNPX^WZCE@NcRAV]Gx^MMBS]KC^Kk1,</9&{J]YL]QGWUDQyH[LG]MBAME$=-4<GDUCZuYZYDnQRIN~JYU]KHYOVi]NBJ9()$-;8)?&z^RTV.-<*3aEIOMmPAIWfKCJK[XI_FU^L;LzXYRNdUHD&=.0\x93\xa9~\x81hGKCxW[S}GTKyEHP\xb1\x81s(q^RZ 77>\x95\xfe/Pj@MKw[G@X\xe8\xf2\x1bnTSXdKGOjfu\x97|XLIvQB]w^_E+)->pYXBbFRWkZGK;-'?rUFY{_KN\xb9\x88Q\x9e\xf3\xd9\xd4deBQNzSPBcYJU\x1b\xdc<QfDCI.80-fIEM\xb7\xea\xdb\xe7\xc5\xb6\xa3\x00\x84gok\x84g0(hA@Z-.&0lED^D\xf1[\x97\x08\xf6\xf6@kDH@\x95\xb2[\x06a]PHDIISZQOXM38*^UG=6$U^LT_Md-fw>u +983!6=/}GF!*8yCBkPOxet',>`M.J\xbe\x993\x02\x1bq-\xaa261@%YHc<\x1ekE)\x14\x04\x06+8A:"))
i_, ki, j6, kn, jX, jU, km, j0, jY, worker, ke_1, kd, kb, jM, jI, jF, jA, jx, SellFish, jp, CollectLeafGen, jg, jd, ClaimIndexSet, kk, PurchaseItem, i5, IndexCategories, i0, HUD, kl_1, kj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ka = 37
repeat
    local ko = (ka * 17 + 2) % 20 + 1
    if ko <= 10 then
        if ko <= 5 then
            if ko <= 3 then
                if ko <= 2 then
                    if ko <= 1 then
                        kp = (vector.create((ka * 3 + 4) % 11 + 1, (ka * 9 + 4) % 13 + 1, (ka * 3 + 7) % 17 + 1))
                        kq = (vector.create((ka * 6 + 5) % 11 + 1, (ka * 8 + 7) % 13 + 1, (ka * 14 + 15) % 17 + 1))
                        kr = (vector.create((ka * 2 + 4) % 11 + 1, (ka * 7 + 11) % 13 + 1, (ka * 6 + 9) % 17 + 1))
                        local ks = (vector.create((ka * 5 + 4) % 11 + 1, (ka * 5 + 4) % 13 + 1, (ka * 15 + 13) % 17 + 1))
                        if vector.dot(vector.cross(kp, kq), (vector.cross(kr, ks))) == vector.dot(kp, kr) * vector.dot(kq, ks) - vector.dot(kp, ks) * vector.dot(kq, kr) + 3 then
                            worker = ke_1:WaitForChild(ke_1)
                        else
                            ke_1 = worker:WaitForChild("Requests")
                        end
                        ka = (ka + 133) % 160
                    else
                        kp = (vector.create((ka * 1 + 5) % 11 + 1, (ka * 5 + 12) % 13 + 1, (ka * 4 + 16) % 17 + 1))
                        kq = (vector.create((ka * 1 + 4) % 11 + 1, (ka * 5 + 7) % 13 + 1, (ka * 13 + 11) % 17 + 1))
                        if vector.dot(kp, kq) * vector.dot(kp, kq) <= vector.dot(kp, kp) * vector.dot(kq, kq) then
                            kd = worker:WaitForChild("Events")
                        else
                            worker = kd:WaitForChild(kd)
                        end
                        ka = (ka + 33) % 160
                    end
                else
                    if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 22), string.byte(tostring(jY))), 31), 1089926664), 18), 3626042331) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 22), string.byte(tostring(jY))), 31), 18) then
                        kb = worker:WaitForChild("Merchant")
                    else
                        worker = kb:WaitForChild(kb)
                    end
                    ka = (ka + 113) % 160
                end
            elseif ko <= 4 then
                kp = {
                    "ffbgpcwmvysv",
                    "kkc",
                    "tquqvezr",
                    "bvpskeon",
                    "yoecbs",
                    "fjymgyb",
                    "bba",
                    "tnuaczyb",
                    "wrwyeyj",
                    "prwmfn",
                    "typfirriuo",
                    "kwr"
                }
                if kp[(ka * 51 + 76) % 12 + 1] < kp[(ka * 51 + 76) % 12 + 1] then
                    ke_1 = jM:WaitForChild(jM)
                else
                    jM = ke_1:WaitForChild("RequestBlock")
                end
                ka = (ka + 13) % 160
            else
                kp = {
                    "gcx",
                    "nufx",
                    "fhnfaqlhhs",
                    "qwycppourncf",
                    "mrmxyh",
                    "ufvvwspehgc",
                    "keypll",
                    "jisoahawalu",
                    "lqrshyjvlsft"
                }
                if kp[(ka * 88 + 37) % 9 + 1] <= kp[(ka * 88 + 37) % 9 + 1] then
                    jI = ke_1:WaitForChild("AutoPlaceBest")
                    jF = ke_1:WaitForChild("UpgradeRequest")
                    jA = ke_1:WaitForChild("RebirthRequest")
                else
                    ke_1 = jA:WaitForChild("AutoPlaceBest")
                    jI = jA:WaitForChild("UpgradeRequest")
                    jF = jA:WaitForChild("RebirthRequest")
                end
                ka = (ka + 113) % 160
            end
        elseif ko <= 8 then
            if ko <= 7 then
                if ko <= 6 then
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 31), string.byte(tostring(worker))), 11), 4110513617), 4292715808), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 31), string.byte(tostring(worker))), 11), 184453678), 1362943003))), 4292715808), 1362943003) == bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 31), string.byte(tostring(worker))), 11) then
                        jx = ke_1:WaitForChild("RodAction")
                        SellFish = ke_1:WaitForChild("SellFish")
                    else
                        ke_1 = SellFish:WaitForChild("RodAction")
                        jx = SellFish:WaitForChild(SellFish)
                    end
                    ka = (ka + 153) % 160
                else
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 6), string.byte(tostring(SellFish))), 6), 1071136191), 1345322645), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 6), string.byte(tostring(SellFish))), 6), 3223831104), 2539385156))), 1345322645), 2539385156) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 6), string.byte(tostring(SellFish))), 6) then
                        kd = CollectLeafGen:WaitForChild(CollectLeafGen)
                        jp = ke_1:WaitForChild("CollectLeafGen")
                    else
                        jp = ke_1:WaitForChild("FishGearAction")
                        CollectLeafGen = kd:WaitForChild("CollectLeafGen")
                    end
                    ka = (ka + 53) % 160
                end
            else
                kp = (vector.create((ka * 1 + 7) % 11 + 1, (ka * 11 + 5) % 13 + 1, (ka * 10 + 16) % 17 + 1))
                kq = (vector.create((ka * 2 + 2) % 11 + 1, (ka * 8 + 9) % 13 + 1, (ka * 12 + 14) % 17 + 1))
                kr = (vector.create((ka * 3 + 6) % 5 + 1, (ka * 3 + 2) % 7 + 1, (ka * 3 + 5) % 9 + 1))
                if fn811(math.abs((vector.angle(kp, kq, kr))) - math.abs((vector.angle(kq, kp, kr))), 544454170) then
                    jg = kd:WaitForChild("FeedLeafGenMoney")
                    jd = kd:WaitForChild("CollectAquarium")
                    ClaimIndexSet = kd:WaitForChild("ClaimIndexSet")
                else
                    kd = ClaimIndexSet:WaitForChild("FeedLeafGenMoney")
                    jg = ClaimIndexSet:WaitForChild(ClaimIndexSet)
                    jd = ClaimIndexSet:WaitForChild("ClaimIndexSet")
                end
                ka = (ka + 53) % 160
            end
        elseif ko <= 9 then
            if (ka * 2 + 1) * 7 % 3 == ((ka * 2 + 1) * 7 + 4) % 3 then
                kd = kk:WaitForChild("FishingState")
                kb = PurchaseItem:WaitForChild("PurchaseItem")
            else
                kk = kd:WaitForChild("FishingState")
                PurchaseItem = kb:WaitForChild("PurchaseItem")
            end
            ka = (ka + 53) % 160
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 20), string.byte(tostring(kd))), 7), 2656143545), 4125450330), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 20), string.byte(tostring(kd))), 7), 1638823750), 674260868))), 4125450330), 674260868) == bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 20), string.byte(tostring(kd))), 7) then
                i5 = require(ki:WaitForChild("UpgradeData"))
                IndexCategories = require(ki:WaitForChild("IndexCategories"))
                i0 = require(ki:WaitForChild("RebirthConfig"))
            else
                i0 = require(IndexCategories:WaitForChild(require))
                i5 = require(IndexCategories:WaitForChild("IndexCategories"))
                ki = require(IndexCategories:WaitForChild("RebirthConfig"))
            end
            ka = (ka + 53) % 160
        end
    elseif ko <= 15 then
        if ko <= 13 then
            if ko <= 12 then
                if ko <= 11 then
                    kp = (vector.create((ka * 7 + 8) % 11 + 1, (ka * 9 + 7) % 13 + 1, (ka * 6 + 6) % 17 + 1))
                    kq = (vector.create((ka * 5 + 9) % 11 + 1, (ka * 5 + 4) % 13 + 1, (ka * 12 + 9) % 17 + 1))
                    kr = (vector.create((ka * 2 + 6) % 11 + 1, (ka * 4 + 11) % 13 + 1, (ka * 9 + 13) % 17 + 1))
                    if vector.dot(vector.cross(kp, kq), kr) == vector.dot(vector.cross(kq, kr), kp) + 1 then
                        kq = kj.PlayerGui
                        jX = kq:WaitForChild("HUD")
                        jY = HUD:CreateWindow(nil)
                        worker2 = (jY:CreateTab(false))
                        kl_1 = fn5
                    else
                        kq = jX.PlayerGui
                        HUD = kq:WaitForChild("HUD")
                        worker2 = jY:CreateWindow({
                            Name = "Tree RNG",
                            LoadingTitle = "Tree RNG",
                            LoadingSubtitle = "Ouroboros Hub",
                            ConfigurationSaving = { Enabled = true, FolderName = "OuroborosHub", FileName = "TreeRNG" },
                            Discord = { Enabled = false, Invite = "", RememberJoins = true },
                            KeySystem = false
                        })
                        kl_1 = {
                            Farm = worker2:CreateTab("Farm"),
                            Collect = worker2:CreateTab("Collect"),
                            Fishing = worker2:CreateTab("Fishing"),
                            Shop = worker2:CreateTab("Shop"),
                            Rewards = worker2:CreateTab("Rewards"),
                            Settings = worker2:CreateTab("Settings")
                        }
                        kj = fn5
                    end
                    ka = (ka + 33) % 160
                else
                    kp = (vector.create((ka * 7 + 4) % 11 + 1, (ka * 2 + 13) % 13 + 1, (ka * 13 + 4) % 17 + 1))
                    kq = (vector.create((ka * 2 + 6) % 11 + 1, (ka * 4 + 10) % 13 + 1, (ka * 11 + 10) % 17 + 1))
                    kr = (vector.create((ka * 3 + 4) % 5 + 1, (ka * 5 + 1) % 7 + 1, (ka * 1 + 1) % 9 + 1))
                    if math.abs((vector.angle(kp, kq, kr))) - math.abs((vector.angle(kq, kp, kr))) == 4 then
                        kj = game:GetService(game)
                    else
                        i_ = game:GetService("Players")
                    end
                    ka = (ka + 73) % 160
                end
            else
                kp = { "cxe", "sxb", "iav", "bblqwmcwgss", "lvz", "ilfhetnthln", "lhp", "ecfucynzp", "kxng" }
                if kp[(ka * 4 + 21) % 9 + 1] <= kp[(ka * 4 + 21) % 9 + 1] then
                    ki = game:GetService("ReplicatedStorage")
                else
                    jM = game:GetService(game)
                end
                ka = (ka + 33) % 160
            end
        elseif ko <= 14 then
            kp = (vector.create((ka * 1 + 4) % 11 + 1, (ka * 8 + 10) % 13 + 1, (ka * 1 + 16) % 17 + 1))
            kq = (vector.create((ka * 3 + 9) % 11 + 1, (ka * 4 + 11) % 13 + 1, (ka * 1 + 7) % 17 + 1))
            if vector.dot(vector.cross(kp, kq), (vector.cross(kp, kq))) + vector.dot(kp, kq) * vector.dot(kp, kq) == vector.dot(kp, kp) * vector.dot(kq, kq) + 2 then
                kn = game:GetService("TweenService")
                j6 = game:GetService(game)
            else
                j6 = game:GetService("TweenService")
                kn = game:GetService("UserInputService")
            end
            ka = (ka + 113) % 160
        else
            if ka * 16598253 + 4 + 3 >= ka * 16598253 + 4 + 3 + 5 then
                km = game:GetService("RunService")
            else
                game.GetService(game, "RunService")
            end
            ka = (ka + 53) % 160
        end
    elseif ko <= 18 then
        if ko <= 17 then
            if ko <= 16 then
                kp = { "zwb", "oag", "pqjd", "iplp", "uvcvuekcjv", "fslyqrnlf", "zwnhmc", "oysk", "znwd", "mxopza" }
                kq = kp[ka % 10 + 1]
                kp = kq:len()
                kr = (kq:gsub("(.)", "%1%1", ka % 3 % 2 + 1))
                if kp >= kr:len() then
                    i_ = jX
                else
                    jX = i_.LocalPlayer
                end
                ka = (ka + 53) % 160
            else
                kp = {
                    "zrej",
                    "szctfg",
                    "lbqi",
                    "fyp",
                    "ehetxco",
                    "ndmcuvrtsbmn",
                    "nby",
                    "dmqbq",
                    "axhqy",
                    "ispchg",
                    "pgjxxmfofc",
                    "sdly"
                }
                if kp[(ka * 16 + 39) % 12 + 1] < kp[(ka * 16 + 39) % 12 + 1] then
                    jx = "https://discord.gg/f3dJhDgyTq"
                else
                    jU = "https://discord.gg/f3dJhDgyTq"
                end
                ka = (ka + 93) % 160
            end
        else
            if (not j6 and not j6 and (j6 and jM) or (not j6 or jM) and (jM and j6)) and not (not j6 and not j6 and (j6 and jM) or (not j6 or jM) and (jM and j6)) then
                j0 = function()
                    local textButton, kF, frame3, kH, kI
                    local screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosLoader"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local kK = gethui and gethui()
                    local kL = kK or game:GetService("CoreGui")
                    screenGui.Parent = kL
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
                    kI = function(y)
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(0, 0, 0)
                        uIStroke.Thickness = 2
                        uIStroke.Transparency = 0.1
                        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                        uIStroke.Parent = y
                        return uIStroke
                    end
                    local function kL_15(B, C, D, E, F)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.BackgroundTransparency = 1
                        textLabel.Size = UDim2.fromOffset(460, C + 6)
                        textLabel.Font = D
                        textLabel.Text = B
                        textLabel.TextSize = C
                        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        textLabel.TextTransparency = E
                        textLabel.LayoutOrder = F
                        kI(textLabel)
                        textLabel.Parent = frame3
                        return textLabel
                    end
                    kL_15("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                    textButton = Instance.new("TextButton")
                    textButton.BackgroundTransparency = 1
                    textButton.AutoButtonColor = false
                    textButton.Size = UDim2.fromOffset(460, 24)
                    textButton.Font = Enum.Font.GothamSemibold
                    textButton.RichText = true
                    textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (click to copy)"
                    textButton.TextSize = 16
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    textButton.LayoutOrder = 2
                    kI(textButton)
                    textButton.Parent = frame3
                    local function kM()
                        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                    end
                    local MouseEnter = textButton.MouseEnter
                    MouseEnter.Connect(MouseEnter, kM)
                    local function kM_11()
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    end
                    local MouseLeave = textButton.MouseLeave
                    MouseLeave.Connect(MouseLeave, kM_11)
                    local function kM_12()
                        if setclipboard then
                            setclipboard(jU)
                        end
                        textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (copied!)"
                        task.delay(1.5, function()
                            textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (click to copy)"
                        end)
                    end
                    local Activated = textButton.Activated
                    Activated.Connect(Activated, kM_12)
                    local kM_13 = kL_15("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                    kM_13.TextWrapped = true
                    kM_13.Size = UDim2.fromOffset(420, 34)
                    kF = kL_15("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                    kF.Size = UDim2.fromOffset(460, 18)
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
                    kH = true
                    task.spawn(function()
                        local kC = 0
                        while kH do
                            kC = kC % 3 + 1
                            kF.Text = "Ouroboros Bypassing" .. string.rep(".", kC)
                            task.wait(0.35)
                        end
                    end)
                    local kN_18 = (j6:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                    kN_18.Play(kN_18)
                    local kN_19 = { 0.35, 0.55, 0.72, 0.9, 1 }
                    for i, v in ipairs(kN_19) do
                        local kN_20 = (j6:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                        kN_20.Play(kN_20)
                        task.wait(0.55)
                    end
                    kH = false
                    task.wait(0.25)
                    local kN_21 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                    for i, descendant in ipairs(frame3:GetDescendants()) do
                        local kO_9 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                        if kO_9 then
                            local kO_10 = (j6:Create(descendant, kN_21, { TextTransparency = 1 }))
                            kO_10.Play(kO_10)
                        elseif descendant:IsA("UIStroke") then
                            local kO_11 = (j6:Create(descendant, kN_21, { Transparency = 1 }))
                            kO_11.Play(kO_11)
                        end
                    end
                    local kO_12 = (j6:Create(frame2, kN_21, { BackgroundTransparency = 1 }))
                    kO_12.Play(kO_12)
                    local kL_17 = (j6:Create(frame, kN_21, { BackgroundTransparency = 1 }))
                    kL_17.Play(kL_17)
                    local kL_18 = (j6:Create(blurEffect, kN_21, { Size = 0 }))
                    kL_18.Play(kL_18)
                    task.wait(0.45)
                    blurEffect.Destroy(blurEffect)
                    screenGui.Destroy(screenGui)
                end
                j0()
                km = game:GetService(function()
                    local textButton, kF, frame3, kH, kI
                    local screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosLoader"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local kK = gethui and gethui()
                    local kL = kK or game:GetService("CoreGui")
                    screenGui.Parent = kL
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
                    kI = function(y)
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(0, 0, 0)
                        uIStroke.Thickness = 2
                        uIStroke.Transparency = 0.1
                        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                        uIStroke.Parent = y
                        return uIStroke
                    end
                    local function kL_9(B, C, D, E, F)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.BackgroundTransparency = 1
                        textLabel.Size = UDim2.fromOffset(460, C + 6)
                        textLabel.Font = D
                        textLabel.Text = B
                        textLabel.TextSize = C
                        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        textLabel.TextTransparency = E
                        textLabel.LayoutOrder = F
                        kI(textLabel)
                        textLabel.Parent = frame3
                        return textLabel
                    end
                    kL_9("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                    textButton = Instance.new("TextButton")
                    textButton.BackgroundTransparency = 1
                    textButton.AutoButtonColor = false
                    textButton.Size = UDim2.fromOffset(460, 24)
                    textButton.Font = Enum.Font.GothamSemibold
                    textButton.RichText = true
                    textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (click to copy)"
                    textButton.TextSize = 16
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    textButton.LayoutOrder = 2
                    kI(textButton)
                    textButton.Parent = frame3
                    local function kM()
                        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                    end
                    local MouseEnter = textButton.MouseEnter
                    MouseEnter.Connect(MouseEnter, kM)
                    local function kM_6()
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    end
                    local MouseLeave = textButton.MouseLeave
                    MouseLeave.Connect(MouseLeave, kM_6)
                    local function kM_7()
                        if setclipboard then
                            setclipboard(jU)
                        end
                        textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (copied!)"
                        task.delay(1.5, function()
                            textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (click to copy)"
                        end)
                    end
                    local Activated = textButton.Activated
                    Activated.Connect(Activated, kM_7)
                    local kM_8 = kL_9("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                    kM_8.TextWrapped = true
                    kM_8.Size = UDim2.fromOffset(420, 34)
                    kF = kL_9("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                    kF.Size = UDim2.fromOffset(460, 18)
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
                    kH = true
                    task.spawn(function()
                        local kC = 0
                        while kH do
                            kC = kC % 3 + 1
                            kF.Text = "Ouroboros Bypassing" .. string.rep(".", kC)
                            task.wait(0.35)
                        end
                    end)
                    local kN_11 = (j6:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                    kN_11.Play(kN_11)
                    local kN_12 = { 0.35, 0.55, 0.72, 0.9, 1 }
                    for i, v in ipairs(kN_12) do
                        local kN_13 = (j6:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                        kN_13.Play(kN_13)
                        task.wait(0.55)
                    end
                    kH = false
                    task.wait(0.25)
                    local kN_14 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                    for i, descendant in ipairs(frame3:GetDescendants()) do
                        local kO_5 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                        if kO_5 then
                            local kO_6 = (j6:Create(descendant, kN_14, { TextTransparency = 1 }))
                            kO_6.Play(kO_6)
                        elseif descendant:IsA("UIStroke") then
                            local kO_7 = (j6:Create(descendant, kN_14, { Transparency = 1 }))
                            kO_7.Play(kO_7)
                        end
                    end
                    local kO_8 = (j6:Create(frame2, kN_14, { BackgroundTransparency = 1 }))
                    kO_8.Play(kO_8)
                    local kL_11 = (j6:Create(frame, kN_14, { BackgroundTransparency = 1 }))
                    kL_11.Play(kL_11)
                    local kL_12 = (j6:Create(blurEffect, kN_14, { Size = 0 }))
                    kL_12.Play(kL_12)
                    task.wait(0.45)
                    blurEffect.Destroy(blurEffect)
                    screenGui.Destroy(screenGui)
                end)
            else
                km = "rbxassetid://91400086538074"
                kc = function()
                    local textButton, kF, frame3, kH, kI
                    local screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosLoader"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local kK = gethui and gethui()
                    local kL = kK or game:GetService("CoreGui")
                    screenGui.Parent = kL
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
                    kI = function(y)
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(0, 0, 0)
                        uIStroke.Thickness = 2
                        uIStroke.Transparency = 0.1
                        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                        uIStroke.Parent = y
                        return uIStroke
                    end
                    local function kL_3(B, C, D, E, F)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.BackgroundTransparency = 1
                        textLabel.Size = UDim2.fromOffset(460, C + 6)
                        textLabel.Font = D
                        textLabel.Text = B
                        textLabel.TextSize = C
                        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        textLabel.TextTransparency = E
                        textLabel.LayoutOrder = F
                        kI(textLabel)
                        textLabel.Parent = frame3
                        return textLabel
                    end
                    kL_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                    textButton = Instance.new("TextButton")
                    textButton.BackgroundTransparency = 1
                    textButton.AutoButtonColor = false
                    textButton.Size = UDim2.fromOffset(460, 24)
                    textButton.Font = Enum.Font.GothamSemibold
                    textButton.RichText = true
                    textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (click to copy)"
                    textButton.TextSize = 16
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    textButton.LayoutOrder = 2
                    kI(textButton)
                    textButton.Parent = frame3
                    local function kM()
                        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                    end
                    local MouseEnter = textButton.MouseEnter
                    MouseEnter.Connect(MouseEnter, kM)
                    local function kM_1()
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    end
                    local MouseLeave = textButton.MouseLeave
                    MouseLeave.Connect(MouseLeave, kM_1)
                    local function kM_2()
                        if setclipboard then
                            setclipboard(jU)
                        end
                        textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (copied!)"
                        task.delay(1.5, function()
                            textButton.Text = "<u>https://discord.gg/f3dJhDgyTq</u>  (click to copy)"
                        end)
                    end
                    local Activated = textButton.Activated
                    Activated.Connect(Activated, kM_2)
                    local kM_3 = kL_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                    kM_3.TextWrapped = true
                    kM_3.Size = UDim2.fromOffset(420, 34)
                    kF = kL_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                    kF.Size = UDim2.fromOffset(460, 18)
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
                    kH = true
                    task.spawn(function()
                        local kC = 0
                        while kH do
                            kC = kC % 3 + 1
                            kF.Text = "Ouroboros Bypassing" .. string.rep(".", kC)
                            task.wait(0.35)
                        end
                    end)
                    local kN_4 = (j6:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                    kN_4.Play(kN_4)
                    local kN_5 = { 0.35, 0.55, 0.72, 0.9, 1 }
                    for i, v in ipairs(kN_5) do
                        local kN_6 = (j6:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                        kN_6.Play(kN_6)
                        task.wait(0.55)
                    end
                    kH = false
                    task.wait(0.25)
                    local kN_7 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                    for i, descendant in ipairs(frame3:GetDescendants()) do
                        local kO_1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                        if kO_1 then
                            local kO_2 = (j6:Create(descendant, kN_7, { TextTransparency = 1 }))
                            kO_2.Play(kO_2)
                        elseif descendant:IsA("UIStroke") then
                            local kO_3 = (j6:Create(descendant, kN_7, { Transparency = 1 }))
                            kO_3.Play(kO_3)
                        end
                    end
                    local kO_4 = (j6:Create(frame2, kN_7, { BackgroundTransparency = 1 }))
                    kO_4.Play(kO_4)
                    local kL_5 = (j6:Create(frame, kN_7, { BackgroundTransparency = 1 }))
                    kL_5.Play(kL_5)
                    local kL_6 = (j6:Create(blurEffect, kN_7, { Size = 0 }))
                    kL_6.Play(kL_6)
                    task.wait(0.45)
                    blurEffect.Destroy(blurEffect)
                    screenGui.Destroy(screenGui)
                end
                kc()
                j0 = game:GetService("VirtualUser")
            end
            ka = (ka + 113) % 160
        end
    elseif ko <= 19 then
        ko = {
            "oitmyrkrccrp",
            "ayetbe",
            "eum",
            "shvfgczbbc",
            "tubpdjnye",
            "klouhrpvfor",
            "vjxuwbpdzjel",
            "kengrnv",
            "nbmvslzlrs",
            "xharfomxrak",
            "ghtcairwhvkr"
        }
        if ko[(ka * 89 + 46) % 11 + 1] <= ko[(ka * 89 + 46) % 11 + 1] then
            jY = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
        else
            jA = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
        end
        ka = (ka + 93) % 160
    else
        ko = {
            "embofddkpdlz",
            "vsqme",
            "bra",
            "cvkqhgwtgme",
            "cddksygsmhdd",
            "ohbwrcc",
            "uwzxorckk",
            "bdrvtxkxrvx",
            "hkcu",
            "wkkcyboio",
            "pcltzzbqvhtl",
            "ypxett",
            "qiroaexmp",
            "zfazyy",
            "yfhxavosnl"
        }
        if ko[(ka * 61 + 6) % 15 + 1] < ko[(ka * 61 + 6) % 15 + 1] then
            ki = worker:WaitForChild("Networking")
        else
            worker = ki:WaitForChild("Networking")
        end
        ka = (ka + 153) % 160
    end
until fn811((ka * 53 + 52) % 160, 2541053546)
for i, v in ipairs({ "Farm", "Collect", "Fishing", "Shop", "Rewards", "Settings" }) do
    kj(kl_1[v])
end
jG, jB, jy, jt, jq, jl, jh, je, jb, i9, i8, i6, i4, i1, j9, j7, j3, j1, j_, jW, jT, jS, jP, jN, ji, kb, j4, jQ, jn, jO, jE, jJ, j5, jK, jR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ka = 51
repeat
    kc = (ka * 7 + 1) % 13 + 1
    if kc <= 7 then
        if kc <= 4 then
            if kc <= 2 then
                if kc <= 1 then
                    kd = {
                        "qio",
                        "ethdautnxm",
                        "zgowmmcj",
                        "mdp",
                        "pfpkehcgzca",
                        "qhvajxu",
                        "wphnpbi",
                        "sxgk",
                        "wajb",
                        "vsdco"
                    }
                    local ke_2 = kd[ka % 10 + 1]
                    kd = ke_2:len()
                    worker = (ke_2:gsub("(.)", "%1%1", ka % 3 % 2 + 1))
                    if kd <= worker:len() then
                        j7 = false
                        j3 = false
                        j1 = false
                        j_ = 0
                        jW = nil
                    else
                        jW = false
                        j1 = false
                        j3 = false
                        j7 = 0
                        j_ = nil
                    end
                    ka = (ka + 41) % 52
                else
                    kd = (vector.create((ka * 4 + 7) % 11 + 1, (ka * 2 + 13) % 13 + 1, (ka * 10 + 11) % 17 + 1))
                    local ke_3 = (vector.create((ka * 6 + 8) % 11 + 1, (ka * 3 + 11) % 13 + 1, (ka * 14 + 13) % 17 + 1))
                    if vector.dot(vector.cross(kd, ke_3), (vector.cross(kd, ke_3))) + vector.dot(kd, ke_3) * vector.dot(kd, ke_3) == vector.dot(kd, kd) * vector.dot(ke_3, ke_3) then
                        jT = false
                        jS = 5
                        jP = false
                        jN = false
                        task.spawn(worker8)
                        task.spawn(function()
                            while true do
                                task.wait(0.5)
                                local k7 = jB and HUD:GetAttribute("HideRollEffects") ~= true
                                if k7 then
                                    HUD.SetAttribute(HUD, "HideRollEffects", true)
                                end
                            end
                        end)
                        task.spawn(function()
                            while true do
                                task.wait(jt)
                                if jy then
                                    pcall(function()
                                        jI.InvokeServer(jI)
                                    end)
                                end
                            end
                        end)
                        task.spawn(function()
                            while true do
                                task.wait(0.25)
                                local la = jq and jX:GetAttribute("LootMagnet") ~= true
                                if la then
                                    jX.SetAttribute(jX, "LootMagnet", true)
                                    jX.SetAttribute(jX, "LootMagnetEnabled", true)
                                end
                            end
                        end)
                        j4 = fn1183
                    else
                        jP = false
                        j4 = 5
                        jS = false
                        jT = false
                        task.spawn(task)
                        task.spawn(worker8)
                        task.spawn(task.spawn)
                        task.spawn(task)
                        jN = fn1183
                    end
                    ka = (ka + 28) % 52
                end
            elseif kc <= 3 then
                kd = {
                    "tvlw",
                    "ahknosmixxi",
                    "uwlae",
                    "nrrovgrqbc",
                    "wyldmkkdiui",
                    "xdzhujd",
                    "bisu",
                    "nlzcaawsp",
                    "ibwqaser",
                    "zcvldhvtru",
                    "jfzktgauyn",
                    "kgt"
                }
                local ke_4 = kd[ka % 12 + 1]
                kd = ke_4:len()
                worker = (ke_4:gsub("(.)", "%1%1", ka % 3 % 2 + 1))
                if kd >= worker:len() then
                    task.spawn(task.spawn)
                    jn = fn1056
                    jQ = fn1103
                else
                    task.spawn(function()
                        while true do
                            task.wait(i9)
                            if jb then
                                pcall(j4)
                            end
                        end
                    end)
                    jQ = fn1056
                    jn = fn1103
                end
                ka = (ka + 15) % 52
            else
                kd = (vector.create((ka * 2 + 3) % 11 + 1, (ka * 7 + 7) % 13 + 1, (ka * 10 + 1) % 17 + 1))
                local ke_5 = (vector.create((ka * 6 + 8) % 11 + 1, (ka * 7 + 1) % 13 + 1, (ka * 13 + 9) % 17 + 1))
                worker = (vector.create((ka * 4 + 6) % 11 + 1, (ka * 5 + 3) % 13 + 1, (ka * 9 + 16) % 17 + 1))
                kg = (vector.create((ka * 4 + 3) % 11 + 1, (ka * 7 + 4) % 13 + 1, (ka * 11 + 7) % 17 + 1))
                if vector.dot(vector.cross(kd, ke_5), (vector.cross(worker, kg))) == vector.dot(kd, worker) * vector.dot(ke_5, kg) - vector.dot(kd, kg) * vector.dot(ke_5, worker) then
                    task.spawn(worker7)
                    jO = fn1540
                    jE = fn449
                else
                    task.spawn(worker7)
                    jE = fn1540
                    jO = fn449
                end
                ka = (ka + 15) % 52
            end
        elseif kc <= 6 then
            if kc <= 5 then
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 17), string.byte(tostring(jR))), 30), 2217614391), 3889949367), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 17), string.byte(tostring(jR))), 30), 2077352904), 4088271608))), 3889949367), 4088271608) == bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 17), string.byte(tostring(jR))), 30) then
                    task.spawn(function()
                        while true do
                            task.wait(1)
                            if jl then
                                for i, v in ipairs(jE("leafgenerator")) do
                                    local mb = v
                                    if not jl then
                                        break
                                    end
                                    pcall(function()
                                        CollectLeafGen.FireServer(CollectLeafGen, mb:GetAttribute("DecorSlot"))
                                    end)
                                end
                            end
                            if jh then
                                for i, v in ipairs(jE("leafgenerator")) do
                                    local mh = v
                                    if not jh then
                                        break
                                    end
                                    pcall(function()
                                        jg.FireServer(jg, mh:GetAttribute("DecorSlot"), 1000000000000000)
                                    end)
                                end
                            end
                        end
                    end)
                    task.spawn(function()
                        while true do
                            task.wait(1)
                            if je then
                                for i, v in ipairs(jE("aquarium")) do
                                    local mo = v
                                    if not je then
                                        break
                                    end
                                    pcall(function()
                                        jd.FireServer(jd, mo:GetAttribute("DecorSlot"))
                                    end)
                                end
                            end
                        end
                    end)
                    task.spawn(worker3)
                    jJ = fn1601
                    task.spawn(function()
                        while true do
                            task.wait(1)
                            if i4 and fireproximityprompt then
                                local mJ_5 = jX:GetAttribute("DailyChestNextAt") or 0
                                if os.time() >= mJ_5 then
                                    local mI = jJ()
                                    if mI and mI.Enabled then
                                        local Character = jX.Character
                                        local mK_3 = Character and Character:FindFirstChild("HumanoidRootPart")
                                        local Parent = mI.Parent
                                        local mL = mK_3 and Parent and Parent:IsA("BasePart")
                                        if mL then
                                            local CFrame = mK_3.CFrame
                                            mK_3.CFrame = Parent.CFrame + Vector3.new(0, 3, 0)
                                            task.wait(0.3)
                                            pcall(function()
                                                fireproximityprompt(mI)
                                            end)
                                            task.wait(0.2)
                                            mK_3.CFrame = CFrame
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    task.spawn(worker6)
                    kd = fn488
                    local Idled = jX.Idled
                    Idled.Connect(Idled, kd)
                    task.spawn(worker5)
                    j5 = fn165
                    jK = fn1209
                    kd = function(cO)
                        local nf = (function(gT, gU, gV)
                            if type(gT) ~= "string" then
                                return false
                            end
                            if #gT ~= gU then
                                return false
                            end
                            local gW = 5381
                            local gX = buffer.fromstring(gT)
                            local gY = 0
                            while gY <= gU - 4 do
                                local gZ = buffer.readu32(gX, gY)
                                local gW_33 = bit32.bxor(gW, gZ)
                                gW = bit32.band(gW_33 * 33, 4294967295)
                                gY = gY + 4
                            end
                            while gY < gU do
                                local g_ = buffer.readu8(gX, gY)
                                local gW_34 = bit32.bxor(gW, g_)
                                gW = bit32.band(gW_34 * 33, 4294967295)
                                gY = gY + 1
                            end
                            return gW == gV
                        end)(cO, 4, 4193807555) and jP
                        if nf then
                            pcall(function()
                                SellFish.InvokeServer(SellFish, "all")
                            end)
                        end
                        if not j7 then
                            return
                        end
                        if (function(gT, gU, gV)
                            if type(gT) ~= "string" then
                                return false
                            end
                            if #gT ~= gU then
                                return false
                            end
                            local gW = 5381
                            local gX = buffer.fromstring(gT)
                            local gY = 0
                            while gY <= gU - 4 do
                                local gZ = buffer.readu32(gX, gY)
                                local gW_31 = bit32.bxor(gW, gZ)
                                gW = bit32.band(gW_31 * 33, 4294967295)
                                gY = gY + 4
                            end
                            while gY < gU do
                                local g_ = buffer.readu8(gX, gY)
                                local gW_32 = bit32.bxor(gW, g_)
                                gW = bit32.band(gW_32 * 33, 4294967295)
                                gY = gY + 1
                            end
                            return gW == gV
                        end)(cO, 4, 4178804567) then
                            pcall(function()
                                jx.InvokeServer(jx, "reel")
                            end)
                        else
                            local nf_1 = (function(gT, gU, gV)
                                if type(gT) ~= "string" then
                                    return false
                                end
                                if #gT ~= gU then
                                    return false
                                end
                                local gW = 5381
                                local gX = buffer.fromstring(gT)
                                local gY = 0
                                while gY <= gU - 4 do
                                    local gZ = buffer.readu32(gX, gY)
                                    local gW_29 = bit32.bxor(gW, gZ)
                                    gW = bit32.band(gW_29 * 33, 4294967295)
                                    gY = gY + 4
                                end
                                while gY < gU do
                                    local g_ = buffer.readu8(gX, gY)
                                    local gW_30 = bit32.bxor(gW, g_)
                                    gW = bit32.band(gW_30 * 33, 4294967295)
                                    gY = gY + 1
                                end
                                return gW == gV
                            end)(cO, 5, 308488974) or (function(gT, gU, gV)
                                if type(gT) ~= "string" then
                                    return false
                                end
                                if #gT ~= gU then
                                    return false
                                end
                                local gW = 5381
                                local gX = buffer.fromstring(gT)
                                local gY = 0
                                while gY <= gU - 4 do
                                    local gZ = buffer.readu32(gX, gY)
                                    local gW_27 = bit32.bxor(gW, gZ)
                                    gW = bit32.band(gW_27 * 33, 4294967295)
                                    gY = gY + 4
                                end
                                while gY < gU do
                                    local g_ = buffer.readu8(gX, gY)
                                    local gW_28 = bit32.bxor(gW, g_)
                                    gW = bit32.band(gW_28 * 33, 4294967295)
                                    gY = gY + 1
                                end
                                return gW == gV
                            end)(cO, 4, 4187488451) or (function(gT, gU, gV)
                                if type(gT) ~= "string" then
                                    return false
                                end
                                if #gT ~= gU then
                                    return false
                                end
                                local gW = 5381
                                local gX = buffer.fromstring(gT)
                                local gY = 0
                                while gY <= gU - 4 do
                                    local gZ = buffer.readu32(gX, gY)
                                    local gW_25 = bit32.bxor(gW, gZ)
                                    gW = bit32.band(gW_25 * 33, 4294967295)
                                    gY = gY + 4
                                end
                                while gY < gU do
                                    local g_ = buffer.readu8(gX, gY)
                                    local gW_26 = bit32.bxor(gW, g_)
                                    gW = bit32.band(gW_26 * 33, 4294967295)
                                    gY = gY + 1
                                end
                                return gW == gV
                            end)(cO, 6, 1118110485) or (function(gT, gU, gV)
                                if type(gT) ~= "string" then
                                    return false
                                end
                                if #gT ~= gU then
                                    return false
                                end
                                local gW = 5381
                                local gX = buffer.fromstring(gT)
                                local gY = 0
                                while gY <= gU - 4 do
                                    local gZ = buffer.readu32(gX, gY)
                                    local gW_23 = bit32.bxor(gW, gZ)
                                    gW = bit32.band(gW_23 * 33, 4294967295)
                                    gY = gY + 4
                                end
                                while gY < gU do
                                    local g_ = buffer.readu8(gX, gY)
                                    local gW_24 = bit32.bxor(gW, g_)
                                    gW = bit32.band(gW_24 * 33, 4294967295)
                                    gY = gY + 1
                                end
                                return gW == gV
                            end)(cO, 4, 4193807555)
                            if nf_1 then
                                j1 = false
                            end
                        end
                    end
                    local OnClientEvent = kk.OnClientEvent
                    OnClientEvent.Connect(OnClientEvent, kd)
                    kd = function()
                        j3 = false
                        j1 = false
                    end
                    local CharacterAdded = jX.CharacterAdded
                    CharacterAdded.Connect(CharacterAdded, kd)
                    task.spawn(function()
                        while true do
                            task.wait(0.3)
                            if j7 then
                                local nh = jK()
                                local nh_1
                                local Character = jX.Character
                                local ni_2
                                local nj = Character and Character:FindFirstChild("HumanoidRootPart")
                                local ni_1 = nh
                                if ni_1 then
                                    ni_1 = nj
                                end
                                if ni_1 then
                                    if (nj.Position - nh.Position).Magnitude > 5 then
                                        nj.CFrame = nh.CFrame + Vector3.new(0, 3, 0)
                                        task.wait(0.3)
                                    end
                                    if not j3 then
                                        pcall(function()
                                            jx.InvokeServer(jx, "hold")
                                        end)
                                        j3 = true
                                        task.wait(0.3)
                                    end
                                    if not j1 then
                                        nh_1, ni_2 = pcall(function()
                                            return jx:InvokeServer("cast", 0.99)
                                        end)
                                        if nh_1 and ni_2 then
                                            j1 = true
                                            j_ = os.clock()
                                        end
                                    elseif os.clock() - j_ > 15 then
                                        j1 = false
                                    end
                                end
                            end
                        end
                    end)
                    task.spawn(worker4)
                    task.spawn(function()
                        while true do
                            task.wait(3)
                            if jN then
                                pcall(function()
                                    local nn = jp:InvokeServer("get")
                                    if not (function(gT, gU, gV)
                                        if type(gT) ~= "string" then
                                            return false
                                        end
                                        if #gT ~= gU then
                                            return false
                                        end
                                        local gW = 5381
                                        local gX = buffer.fromstring(gT)
                                        local gY = 0
                                        while gY <= gU - 4 do
                                            local gZ = buffer.readu32(gX, gY)
                                            local gW_21 = bit32.bxor(gW, gZ)
                                            gW = bit32.band(gW_21 * 33, 4294967295)
                                            gY = gY + 4
                                        end
                                        while gY < gU do
                                            local g_ = buffer.readu8(gX, gY)
                                            local gW_22 = bit32.bxor(gW, g_)
                                            gW = bit32.band(gW_22 * 33, 4294967295)
                                            gY = gY + 1
                                        end
                                        return gW == gV
                                    end)(type(nn), 5, 248602996) then
                                        return
                                    end
                                    local no = true
                                    while true do
                                        if jN and no then
                                            no = false
                                            local np_1 = nn.Items or {}
                                            for i, v in ipairs(np_1) do
                                                if not jN then
                                                    return
                                                end
                                                if (function(gT, gU, gV)
                                                    if type(gT) ~= "string" then
                                                        return false
                                                    end
                                                    if #gT ~= gU then
                                                        return false
                                                    end
                                                    local gW = 5381
                                                    local gX = buffer.fromstring(gT)
                                                    local gY = 0
                                                    while gY <= gU - 4 do
                                                        local gZ = buffer.readu32(gX, gY)
                                                        local gW_19 = bit32.bxor(gW, gZ)
                                                        gW = bit32.band(gW_19 * 33, 4294967295)
                                                        gY = gY + 4
                                                    end
                                                    while gY < gU do
                                                        local g_ = buffer.readu8(gX, gY)
                                                        local gW_20 = bit32.bxor(gW, g_)
                                                        gW = bit32.band(gW_20 * 33, 4294967295)
                                                        gY = gY + 1
                                                    end
                                                    return gW == gV
                                                end)(v.Kind, 4, 3197074594) then
                                                    local np_2 = v.InStock
                                                    if not np_2 then
                                                        np_2 = (v.Qty or 0) > 0
                                                    end
                                                    if np_2 then
                                                        np_2 = (nn.Coins or 0) >= (v.Cost or 0)
                                                    end
                                                    if np_2 then
                                                        local result = jp:InvokeServer("buyGear", v.Key)
                                                        local nq_3 = (function(gT, gU, gV)
                                                            if type(gT) ~= "string" then
                                                                return false
                                                            end
                                                            if #gT ~= gU then
                                                                return false
                                                            end
                                                            local gW = 5381
                                                            local gX = buffer.fromstring(gT)
                                                            local gY = 0
                                                            while gY <= gU - 4 do
                                                                local gZ = buffer.readu32(gX, gY)
                                                                local gW_17 = bit32.bxor(gW, gZ)
                                                                gW = bit32.band(gW_17 * 33, 4294967295)
                                                                gY = gY + 4
                                                            end
                                                            while gY < gU do
                                                                local g_ = buffer.readu8(gX, gY)
                                                                local gW_18 = bit32.bxor(gW, g_)
                                                                gW = bit32.band(gW_18 * 33, 4294967295)
                                                                gY = gY + 1
                                                            end
                                                            return gW == gV
                                                        end)(type(result), 5, 248602996) and not result.Error
                                                        if nq_3 then
                                                            nn = result
                                                            no = true
                                                            task.wait(0.15)
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            continue
                                        end
                                        break
                                    end
                                end)
                            end
                        end
                    end)
                    kd = {
                        Name = "Auto Spin",
                        CurrentValue = false,
                        Flag = "AutoSpin",
                        Callback = function(dc)
                            jG = dc
                        end
                    }
                    local Farm4 = kl_1.Farm
                    Farm4.CreateToggle(Farm4, kd)
                    kd = { Name = "Hide Spin Animation", CurrentValue = false, Flag = "HideSpin", Callback = fn1357 }
                    local Farm3 = kl_1.Farm
                    Farm3.CreateToggle(Farm3, kd)
                    kd = { Name = "Auto Equip Best", CurrentValue = false, Flag = "AutoEquip", Callback = fn1646 }
                    local Farm2 = kl_1.Farm
                    Farm2.CreateToggle(Farm2, kd)
                    kd = {
                        Name = "Auto Equip Best Interval",
                        Range = { 1, 60 },
                        Increment = 1,
                        Suffix = "s",
                        CurrentValue = 5,
                        Flag = "AutoEquipInterval",
                        Callback = function(df)
                            jt = df
                        end
                    }
                    local Farm = kl_1.Farm
                    Farm.CreateSlider(Farm, kd)
                    kd = {
                        Name = "Auto Collect Coins",
                        CurrentValue = false,
                        Flag = "AutoCollectCoins",
                        Callback = function(dg)
                            jq = dg
                            local nA = "LootMagnet"
                            local nB = dg or false
                            jX.SetAttribute(jX, nA, nB)
                            if dg then
                                jX.SetAttribute(jX, "LootMagnetEnabled", true)
                            end
                        end
                    }
                    local Collect4 = kl_1.Collect
                    Collect4.CreateToggle(Collect4, kd)
                    kd = {
                        Name = "Auto Claim Leaf",
                        CurrentValue = false,
                        Flag = "AutoCollectLeaf",
                        Callback = function(di)
                            jl = di
                        end
                    }
                    local Collect3 = kl_1.Collect
                    Collect3.CreateToggle(Collect3, kd)
                    kd = {
                        Name = "Auto Fill Leaf",
                        CurrentValue = false,
                        Flag = "AutoFillLeaf",
                        Callback = function(dj)
                            jh = dj
                        end
                    }
                    local Collect2 = kl_1.Collect
                    Collect2.CreateToggle(Collect2, kd)
                    kd = {
                        Name = "Auto Collect Aquarium",
                        CurrentValue = false,
                        Flag = "AutoCollectAquarium",
                        Callback = function(dk)
                            je = dk
                        end
                    }
                    local Collect = kl_1.Collect
                    Collect.CreateToggle(Collect, kd)
                    kd = {
                        Name = "Auto Purchase Affordable Upgrades",
                        CurrentValue = false,
                        Flag = "AutoUpgrades",
                        Callback = fn164
                    }
                    local Shop3 = kl_1.Shop
                    Shop3.CreateToggle(Shop3, kd)
                    kd = {
                        Name = "Auto Upgrade Interval",
                        Range = { 1, 60 },
                        Increment = 1,
                        Suffix = "s",
                        CurrentValue = 5,
                        Flag = "AutoUpgradeInterval",
                        Callback = fn645
                    }
                    local Shop2 = kl_1.Shop
                    Shop2.CreateSlider(Shop2, kd)
                    kd = {
                        Name = "Auto Buy Merchant Stock",
                        CurrentValue = false,
                        Flag = "AutoMerchant",
                        Callback = function(dn)
                            i8 = dn
                        end
                    }
                    local Shop = kl_1.Shop
                    Shop.CreateToggle(Shop, kd)
                    kd = {
                        Name = "Auto Claim Index Sets",
                        CurrentValue = false,
                        Flag = "AutoIndex",
                        Callback = function(dp)
                            i6 = dp
                        end
                    }
                    local Rewards3 = kl_1.Rewards
                    Rewards3.CreateToggle(Rewards3, kd)
                    kd = {
                        Name = "Auto Collect Daily Luck (Daily Chest)",
                        CurrentValue = false,
                        Flag = "AutoChest",
                        Callback = function(dq)
                            i4 = dq
                        end
                    }
                    local Rewards2 = kl_1.Rewards
                    Rewards2.CreateToggle(Rewards2, kd)
                    kd = {
                        Name = "Auto Rebirth",
                        CurrentValue = false,
                        Flag = "AutoRebirth",
                        Callback = function(dr)
                            i1 = dr
                        end
                    }
                    local Rewards = kl_1.Rewards
                    Rewards.CreateToggle(Rewards, kd)
                    kd = {
                        Name = "Anti-AFK",
                        CurrentValue = false,
                        Flag = "AntiAFK",
                        Callback = function(ds)
                            j9 = ds
                        end
                    }
                    local Settings = kl_1.Settings
                    Settings.CreateToggle(Settings, kd)
                    kd = {
                        Name = "Auto Fish + Cast (Super Fast)",
                        CurrentValue = false,
                        Flag = "AutoFish",
                        Callback = function(dt)
                            j7 = dt
                            if not dt then
                                j3 = false
                                j1 = false
                                pcall(function()
                                    jx.InvokeServer(jx, "unhold")
                                end)
                            end
                        end
                    }
                    local Fishing2 = kl_1.Fishing
                    Fishing2.CreateToggle(Fishing2, kd)
                    jR = fn923
                    kd = {
                        Name = "Fish On Island",
                        Options = jR(),
                        CurrentOption = { "My Island" },
                        MultipleOptions = false,
                        Flag = "FishTargetIsland",
                        Callback = function(dy)
                            local nM = dy[1]
                            local nN = nM == nil or (function(gT, gU, gV)
                                if type(gT) ~= "string" then
                                    return false
                                end
                                if #gT ~= gU then
                                    return false
                                end
                                local gW = 5381
                                local gX = buffer.fromstring(gT)
                                local gY = 0
                                while gY <= gU - 4 do
                                    local gZ = buffer.readu32(gX, gY)
                                    local gW_15 = bit32.bxor(gW, gZ)
                                    gW = bit32.band(gW_15 * 33, 4294967295)
                                    gY = gY + 4
                                end
                                while gY < gU do
                                    local g_ = buffer.readu8(gX, gY)
                                    local gW_16 = bit32.bxor(gW, g_)
                                    gW = bit32.band(gW_16 * 33, 4294967295)
                                    gY = gY + 1
                                end
                                return gW == gV
                            end)(nM, 9, 148365535)
                            if nN then
                                jW = nil
                            else
                                jW = nM
                            end
                        end
                    }
                    local Fishing = kl_1.Fishing
                    ji = Fishing:CreateDropdown(kd)
                else
                    task.spawn(function()
                        while true do
                            task.wait(1)
                            if jl then
                                for i, v in ipairs(jE("leafgenerator")) do
                                    local mb = v
                                    if not jl then
                                        break
                                    end
                                    pcall(function()
                                        CollectLeafGen.FireServer(CollectLeafGen, mb:GetAttribute("DecorSlot"))
                                    end)
                                end
                            end
                            if jh then
                                for i, v in ipairs(jE("leafgenerator")) do
                                    local mh = v
                                    if not jh then
                                        break
                                    end
                                    pcall(function()
                                        jg.FireServer(jg, mh:GetAttribute("DecorSlot"), 1000000000000000)
                                    end)
                                end
                            end
                        end
                    end)
                    kd = function()
                        while true do
                            task.wait(1)
                            if je then
                                for i, v in ipairs(jE("aquarium")) do
                                    local mo = v
                                    if not je then
                                        break
                                    end
                                    pcall(function()
                                        jd.FireServer(jd, mo:GetAttribute("DecorSlot"))
                                    end)
                                end
                            end
                        end
                    end
                    task.spawn(task)
                    task.spawn(task.spawn)
                    jR = fn1601
                    local spawn = task.spawn
                    worker = function()
                        while true do
                            task.wait(1)
                            if i4 and fireproximityprompt then
                                local mJ_1 = jX:GetAttribute("DailyChestNextAt") or 0
                                if os.time() >= mJ_1 then
                                    local mI = jJ()
                                    if mI and mI.Enabled then
                                        local Character = jX.Character
                                        local mK_1 = Character and Character:FindFirstChild("HumanoidRootPart")
                                        local Parent = mI.Parent
                                        local mL = mK_1 and Parent and Parent:IsA("BasePart")
                                        if mL then
                                            local CFrame = mK_1.CFrame
                                            mK_1.CFrame = Parent.CFrame + Vector3.new(0, 3, 0)
                                            task.wait(0.3)
                                            pcall(function()
                                                fireproximityprompt(mI)
                                            end)
                                            task.wait(0.2)
                                            mK_1.CFrame = CFrame
                                        end
                                    end
                                end
                            end
                        end
                    end
                    spawn(worker3)
                    kg = worker6
                    task.spawn(task)
                    worker2 = fn488
                    ki = j5.Idled
                    ki.Connect(ki, worker)
                    worker = worker5
                    task.spawn(worker2)
                    ki = fn165
                    jJ = ki
                    kk = fn1209
                    worker2 = kl_1.OnClientEvent
                    worker2.Connect(worker2, kd)
                    kd = j5.CharacterAdded
                    worker2 = kd
                    worker2.Connect(worker2, ki)
                    task.spawn(spawn)
                    task.spawn(worker)
                    task.spawn(task[nil])
                    worker = jK.Farm
                    ki = worker
                    ki.CreateToggle(ki, "AutoSpin")
                    worker2 = { Callback = fn1357, Name = "Hide Spin Animation", CurrentValue = false, Flag = "HideSpin" }
                    ki = jK.Farm
                    ki.CreateToggle(ki, worker4)
                    local ke_28 = { Flag = "AutoEquip", Name = "Auto Equip Best", CurrentValue = false, Callback = fn1646 }
                    ki = jK.Farm
                    ki.CreateToggle(ki, kd)
                    kj = jK.Farm
                    kj.CreateSlider(kj, worker2)
                    kj = jK.Collect
                    kj.CreateToggle(kj, kg)
                    kg = jK.Collect
                    kg.CreateToggle(kg, "Range")
                    kd = jK.Collect
                    kd.CreateToggle(kd, worker)
                    kd = jK.Collect
                    kd.CreateToggle(kd, "AutoEquipInterval")
                    worker = {
                        Callback = fn164,
                        Flag = "AutoUpgrades",
                        CurrentValue = false,
                        Name = "Auto Purchase Affordable Upgrades"
                    }
                    kg = jK.Shop
                    kg.CreateToggle(kg, "CurrentValue")
                    worker2 = {
                        CurrentValue = 5,
                        Name = "Auto Upgrade Interval",
                        Increment = 1,
                        Callback = fn645,
                        Range = { 1, 60 },
                        Flag = "AutoUpgradeInterval",
                        Suffix = "s"
                    }
                    ki = jK.Shop
                    ki.CreateSlider(ki, "Callback")
                    kd = jK.Shop
                    kd.CreateToggle(kd, task)
                    kd = jK.Rewards
                    kd.CreateToggle(kd, worker)
                    worker = jK.Rewards
                    worker.CreateToggle(worker, "Auto Upgrade Interval")
                    kg = jK.Rewards
                    kg.CreateToggle(kg, "AutoRebirth")
                    worker = jK.Settings
                    worker.CreateToggle(worker, worker2)
                    worker = jK.Fishing
                    worker.CreateToggle(worker, ke_28)
                    ji = fn923
                    local Fishing = jK.Fishing
                    jX = Fishing:CreateDropdown("AutoChest")
                end
                ka = (ka + 15) % 52
            else
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 3), string.byte(tostring(jn))), 18), 1802463108), 22), 3776633817) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 3), string.byte(tostring(jn))), 18), 22) then
                    kd = kb.Fishing
                    worker = fn329
                    kg = kd
                    kg.CreateButton(kg, "Name")
                    kg = kb.Fishing
                    kg.CreateToggle(kg, kb)
                    worker2 = kb.Fishing
                    worker2.CreateSlider(worker2, worker)
                    worker = kb.Fishing
                    worker.CreateToggle(worker, "Auto Sell Fish")
                    local Fishing = kb.Fishing
                    Fishing.CreateButton(Fishing, false)
                    local Shop = kb.Shop
                    Shop.CreateToggle(Shop, "Auto Sell Interval")
                    kl_1.LoadConfiguration(kl_1)
                    jY = Instance.new(kd)
                else
                    kd = { Name = "Refresh Island List", Callback = fn329 }
                    local Fishing5 = kl_1.Fishing
                    Fishing5.CreateButton(Fishing5, kd)
                    kd = {
                        Name = "Auto Sell Fish",
                        CurrentValue = false,
                        Flag = "AutoSellFish",
                        Callback = function(dC)
                            jT = dC
                        end
                    }
                    local Fishing4 = kl_1.Fishing
                    Fishing4.CreateToggle(Fishing4, kd)
                    kd = {
                        Name = "Auto Sell Interval",
                        Range = { 1, 60 },
                        Increment = 1,
                        Suffix = "s",
                        CurrentValue = 5,
                        Flag = "AutoSellInterval",
                        Callback = function(dD)
                            jS = dD
                        end
                    }
                    local Fishing3 = kl_1.Fishing
                    Fishing3.CreateSlider(Fishing3, kd)
                    kd = {
                        Name = "Auto Sell When Backpack Full",
                        CurrentValue = false,
                        Flag = "AutoSellFull",
                        Callback = function(dE)
                            jP = dE
                        end
                    }
                    local Fishing2 = kl_1.Fishing
                    Fishing2.CreateToggle(Fishing2, kd)
                    kd = {
                        Name = "Sell All Fish",
                        Callback = function()
                            local nP = pcall(function()
                                SellFish.InvokeServer(SellFish, "all")
                            end)
                            local nQ = "Title"
                            local nR = "Ouroboros Hub"
                            local nS = "Content"
                            local nP_1 = nP and "Sold all fish." or "Sell failed."
                            jY.Notify(jY, { [nQ] = nR, [nS] = nP_1, Duration = 3 })
                        end
                    }
                    local Fishing = kl_1.Fishing
                    Fishing.CreateButton(Fishing, kd)
                    kd = {
                        Name = "Auto Buy Bait",
                        CurrentValue = false,
                        Flag = "AutoBait",
                        Callback = function(dI)
                            jN = dI
                        end
                    }
                    local Shop = kl_1.Shop
                    Shop.CreateToggle(Shop, kd)
                    jY.LoadConfiguration(jY)
                    kb = Instance.new("ScreenGui")
                end
                ka = (ka + 2) % 52
            end
        else
            kd = (vector.create((ka * 6 + 2) % 11 + 1, (ka * 8 + 8) % 13 + 1, (ka * 15 + 17) % 17 + 1))
            local ke_38 = (vector.create((ka * 4 + 4) % 11 + 1, (ka * 5 + 7) % 13 + 1, (ka * 10 + 8) % 17 + 1))
            worker = (vector.create((ka * 4 + 4) % 11 + 1, (ka * 5 + 7) % 13 + 1, (ka * 15 + 9) % 17 + 1))
            kg = (vector.create((ka * 1 + 6) % 5 + 1, (ka * 1 + 6) % 7 + 1, (ka * 4 + 5) % 9 + 1))
            if vector.dot(vector.cross(kd, (vector.cross(ke_38, worker))), kg) == vector.dot(ke_38 * vector.dot(kd, worker) - worker * vector.dot(kd, ke_38), kg) then
                kb.Name = "OuroborosToggle"
                kb.ResetOnSpawn = false
                kb.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            else
                kb.Name = "OuroborosToggle"
                kb.ResetOnSpawn = kb
                kb.ZIndexBehavior = kb
            end
            ka = (ka + 15) % 52
        end
    elseif kc <= 10 then
        if kc <= 9 then
            if kc <= 8 then
                kd = { "iyievksn", "zgwdrm", "mymzrnufl", "yuc", "hyh", "gqluilmcdu", "zxgemhyvs" }
                local ke_39 = kd[ka % 7 + 1]
                kd = ka % 3 + 2
                worker = (ke_39:reverse())
                local ry = kd
                kd = ke_39:len()
                kg = (worker:rep(ry))
                if kd >= kg:len() then
                    jQ = false
                else
                    jG = false
                end
                ka = (ka + 28) % 52
            else
                if ka * 31745277 + 7 + 7 <= ka * 31745277 + 7 + 7 + 2 then
                    jB = false
                    jy = false
                else
                    jy = false
                    jB = false
                end
                ka = (ka + 2) % 52
            end
        else
            kd = {
                "hhhbn",
                "ugnnh",
                "tiupyfeznf",
                "bwsazqp",
                "jip",
                "fotjf",
                "qwfbpyj",
                "cfyrit",
                "hsgyq",
                "uyuxvvwnyi",
                "xbm",
                "tzo",
                "neqqeyg",
                "qwctgkoqeoy"
            }
            if kd[(ka * 41 + 87) % 14 + 1] <= kd[(ka * 41 + 87) % 14 + 1] then
                jt = 5
                jq = false
                jl = false
                jh = false
            else
                jh = 5
                jt = false
                jq = false
                jl = false
            end
            ka = (ka + 2) % 52
        end
    elseif kc <= 12 then
        if kc <= 11 then
            kc = (vector.create((ka * 7 + 6) % 11 + 1, (ka * 9 + 2) % 13 + 1, (ka * 10 + 3) % 17 + 1))
            kd = (vector.create((ka * 6 + 8) % 11 + 1, (ka * 5 + 12) % 13 + 1, (ka * 8 + 5) % 17 + 1))
            if vector.dot(kc, kd) * vector.dot(kc, kd) >= vector.dot(kc, kc) * vector.dot(kd, kd) + 1 then
                jb = false
                i9 = false
                je = 5
            else
                je = false
                jb = false
                i9 = 5
            end
            ka = (ka + 2) % 52
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 14), string.byte(tostring(je))), 4), 2981145347), 1271692027), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 14), string.byte(tostring(je))), 4), 1313821948), 2923198847))), 1271692027), 2923198847) == bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 14), string.byte(tostring(je))), 4) then
                i8 = false
                i6 = false
            else
                i6 = false
                i8 = false
            end
            ka = (ka + 28) % 52
        end
    else
        kc = {
            "ojxrquvdq",
            "vmuycmm",
            "cuzqeeu",
            "acumfj",
            "aukgconp",
            "honcrbeha",
            "nxmzqqpr",
            "uvfpqbgmuxbu",
            "enbwcj",
            "hvymcmv",
            "ehwmlpnidm",
            "yopetcp",
            "fwpbfcv",
            "nrduwfgmtyy",
            "nqqu",
            "nvlydbsv"
        }
        if kc[(ka * 66 + 85) % 16 + 1] < kc[(ka * 66 + 85) % 16 + 1] then
            j9 = false
            i4 = false
            i1 = false
        else
            i4 = false
            i1 = false
            j9 = false
        end
        ka = (ka + 2) % 52
    end
until fn811((ka * 35 + 16) % 52, 1181795062)
ka = gethui and gethui()
kc = ka or game:GetService("CoreGui")
jC, worker, kd, jm, jj, Position, jc, jv, screenGui2 = nil, nil, nil, nil, nil, nil, nil, nil, nil
ka = 5
repeat
    kg = (ka * 3 + 4) % 5 + 1
    if kg <= 3 then
        if kg <= 2 then
            if kg <= 1 then
                if ka * 10729157 + 7 + 2 <= ka * 10729157 + 7 + 2 + 1 then
                    jC.Size = UDim2.fromOffset(52, 52)
                    jC.Position = UDim2.fromScale(0.5, 0.04)
                    jC.AnchorPoint = Vector2.new(0.5, 0)
                    jC.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                    jC.BackgroundTransparency = 0.1
                    jC.Image = km
                    jC.ScaleType = Enum.ScaleType.Fit
                    jC.AutoButtonColor = true
                    jC.Parent = kb
                    worker = Instance.new("UICorner")
                    worker.CornerRadius = UDim.new(0, 12)
                    worker.Parent = jC
                    local uIStroke = Instance.new("UIStroke")
                    uIStroke.Color = Color3.fromRGB(80, 80, 95)
                    uIStroke.Thickness = 1
                    uIStroke.Transparency = 0.3
                    uIStroke.Parent = jC
                    kd = Instance.new("UIPadding")
                    kd.PaddingTop = UDim.new(0, 6)
                    kd.PaddingBottom = UDim.new(0, 6)
                    kd.PaddingLeft = UDim.new(0, 6)
                    kd.PaddingRight = UDim.new(0, 6)
                    kd.Parent = jC
                    jm, jj, Position, jc = false, nil, nil, false
                else
                    worker2 = UDim2.fromOffset
                    Position.Size = worker2(UDim2, Position)
                    ki = UDim2.fromScale
                    Position.Position = ki(52, 52)
                    Position.AnchorPoint = Vector2.new(Position, 0.5)
                    Position.BackgroundColor3 = Color3.fromRGB(Position, Color3.fromRGB, 25)
                    Position.BackgroundTransparency = 0.1
                    Position.Image = Vector2
                    kj = Enum.ScaleType
                    kk = kj.Fit
                    Position.ScaleType = 30
                    Position.AutoButtonColor = kk
                    Position.Parent = worker2
                    kb = Instance.new(ki)
                    kb.CornerRadius = UDim.new(0, Position)
                    kb.Parent = 25
                    km = Instance.new(kb)
                    km.Color = Color3.fromRGB(Position, "UIStroke", Position)
                    km.Thickness = Position
                    km.Transparency = worker
                    km.Parent = Color3
                    worker2 = Instance.new
                    jC = worker2(Enum)
                    ki = UDim.new
                    jC.PaddingTop = ki(Color3, 95)
                    jC.PaddingBottom = UDim.new(Position, 1)
                    jC.PaddingLeft = UDim.new(kj, jC)
                    jC.PaddingRight = UDim.new(true, km)
                    jC.Parent = 6
                    jj, kd, jc = ki, false, worker2
                end
                ka = (ka + 7) % 40
            else
                if ((screenGui2 or kd) and (screenGui2 and not screenGui2) or (not kd and not kd or not screenGui2 and kd)) and (not screenGui2 and screenGui2 or (not screenGui2 or not screenGui2) or (kd or not kd) and (not screenGui2 and screenGui2)) or not (((screenGui2 or kd) and (screenGui2 and not screenGui2) or (not kd and not kd or not screenGui2 and kd)) and (not screenGui2 and screenGui2 or (not screenGui2 or not screenGui2) or (kd or not kd) and (not screenGui2 and screenGui2))) then
                    worker2 = fn1422
                    ki = jC.InputBegan
                    ki.Connect(ki, worker2)
                    worker2 = function(dW)
                        if jm and (dW.UserInputType == Enum.UserInputType.MouseMovement or dW.UserInputType == Enum.UserInputType.Touch) then
                            local nX_1 = dW.Position - jj
                            if nX_1.Magnitude > 4 then
                                jc = true
                            end
                            jC.Position = UDim2.new(Position.X.Scale, Position.X.Offset + nX_1.X, Position.Y.Scale, Position.Y.Offset + nX_1.Y)
                        end
                    end
                    ki = kn.InputChanged
                    ki.Connect(ki, worker2)
                    worker2 = function(d_)
                        if d_.UserInputType == Enum.UserInputType.MouseButton1 or d_.UserInputType == Enum.UserInputType.Touch then
                            jm = false
                        end
                    end
                    ki = kn.InputEnded
                    ki.Connect(ki, worker2)
                    jv = false
                else
                    worker2 = kn.InputBegan
                    ki = fn1422
                    kj = worker2
                    kj.Connect(kj, worker2)
                    worker2 = jv.InputChanged
                    kj = worker2
                    kj.Connect(kj, worker2)
                    worker2 = jv.InputEnded
                    worker2.Connect(worker2, ki)
                    jC = false
                end
                ka = (ka + 2) % 40
            end
        else
            worker2 = (vector.create((ka * 5 + 7) % 11 + 1, (ka * 6 + 9) % 13 + 1, (ka * 5 + 4) % 17 + 1))
            ki = (vector.create((ka * 7 + 6) % 11 + 1, (ka * 5 + 8) % 13 + 1, (ka * 13 + 9) % 17 + 1))
            kj = (vector.create((ka * 6 + 6) % 11 + 1, (ka * 2 + 11) % 13 + 1, (ka * 14 + 9) % 17 + 1))
            kk = (vector.create((ka * 6 + 9) % 11 + 1, (ka * 9 + 6) % 13 + 1, (ka * 6 + 3) % 17 + 1))
            if vector.dot(vector.cross(worker2, ki), (vector.cross(kj, kk))) == vector.dot(worker2, kj) * vector.dot(ki, kk) - vector.dot(worker2, kk) * vector.dot(ki, kj) then
                worker2 = fn1052
                ki = jC.MouseButton1Click
                ki.Connect(ki, worker2)
                screenGui2 = Instance.new("ScreenGui")
            else
                worker2 = screenGui2.MouseButton1Click
                ki = fn1052
                kj = worker2
                kj.Connect(kj, ki)
                jC = Instance.new(worker2)
            end
            ka = (ka + 7) % 40
        end
    elseif kg <= 4 then
        if (ka * 3 + 9) * 17 % 4 == ((ka * 3 + 9) * 17 + 8) % 4 then
            screenGui2.Name = "OuroborosPromo"
            screenGui2.ResetOnSpawn = false
            screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        else
            screenGui2.Name = screenGui2
            screenGui2.ResetOnSpawn = false
            screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        ka = (ka + 17) % 40
    else
        if (ka * 2 + 2) * 10 % 3 == ((ka * 2 + 2) * 10 + 5) % 3 then
            kb.Parent = jC
            kc = Instance:new()
        else
            kb.Parent = kc
            jC = Instance.new("ImageButton")
        end
        ka = (ka + 37) % 40
    end
until fn811((ka * 23 + 24) % 40, 326253197)
ka = gethui and gethui()
kb = ka or game:GetService("CoreGui")
kc = nil
ka = 3
repeat
    kd = {
        "aolkp",
        "yxi",
        "hmrexut",
        "phbkb",
        "yabcuynfnj",
        "plsfqgonlg",
        "cbgdcximen",
        "vtzmzzj",
        "gvw",
        "rtysbfhidg",
        "rvvueid"
    }
    local ke_41 = kd[ka % 11 + 1]
    kd = ka % 3 + 2
    worker = (ke_41:reverse())
    local qG = kd
    kd = ke_41:len()
    kg = (worker:rep(qG))
    if kd >= kg:len() then
        screenGui2.Parent = kc
        kn = kb.TouchEnabled
    else
        screenGui2.Parent = kb
        kc = kn.TouchEnabled
    end
    ka = (ka + 3) % 4
until fn811((ka * 1 + 0) % 4, 578005792)
if kc then
    kc = not kn.MouseEnabled
end
j2 = kc
ka = function(ee, ef)
    local textButton = Instance.new("TextButton")
    local n7 = j2 and UDim2.fromOffset(150, 40)
    local n8 = n7 or UDim2.fromOffset(240, 60)
    textButton.Size = n8
    textButton.Position = ee
    textButton.AnchorPoint = ef
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
    local n8_1 = j2 and 24 or 36
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.fromOffset(n8_1, n8_1)
    local new = UDim2.new
    local oa = j2 and 8 or 12
    imageLabel.Position = new(0, oa, 0.5, 0)
    imageLabel.AnchorPoint = Vector2.new(0, 0.5)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = "rbxassetid://91400086538074"
    imageLabel.ScaleType = Enum.ScaleType.Fit
    imageLabel.Parent = textButton
    local n8_3 = j2 and 40 or 60
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -n8_3, 1, 0)
    textLabel.Position = UDim2.new(0, n8_3, 0, 0)
    textLabel.BackgroundTransparency = 1
    local n9_1 = j2 and "Join Ouroboros\n[Copy Discord]" or "Join Ouroboros\nFree Keyless & Dupe Scripts\n[Click to Copy Discord]"
    textLabel.Text = n9_1
    textLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    local n9_2 = j2 and 10 or 12
    textLabel.TextSize = n9_2
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = textButton
    local function n7_10()
        pcall(function()
            setclipboard("https://discord.gg/NFGJaF2fDv")
        end)
        if notify then
            notify("Ouroboros Discord copied to clipboard!")
        end
    end
    local MouseButton1Click = textButton.MouseButton1Click
    MouseButton1Click.Connect(MouseButton1Click, n7_10)
end
if j2 then
    kb = 1
    repeat
        if (kb and kb or (not kb or not kb)) and (kb and not kb or (kb or kb)) or not ((kb and kb or (not kb or not kb)) and (kb and not kb or (kb or kb))) then
            ka(UDim2.new(0, 12, 0.5, 0), Vector2.new(0, 0.5))
        else
            ka(Vector2, Vector2.new(0.5, 12))
        end
        kb = (kb + 1) % 4
    until fn811((kb * 1 + 0) % 4, 578005792)
else
    kc = 0
    repeat
        if kc * 106672789 + 13 + 2 <= kc * 106672789 + 13 + 2 + 1 then
            ka(UDim2.new(0, 20, 0.75, 0), Vector2.new(0, 0.5))
            ka(UDim2.new(1, -20, 0.75, 0), Vector2.new(1, 0.5))
        else
            ka(Vector2.new, Vector2.new(ka, 0.5))
            ka(UDim2.new(0, 0.75, 0, UDim2.new), Vector2.new(ka, 20))
        end
        kc = (kc + 1) % 8
    until fn811((kc * 7 + 1) % 8, 544454170)
end
kd = nil
kb = 14
repeat
    ka = (kb * 1 + 0) % 2 + 1
    if ka <= 1 then
        if (kb * 3 + 8) * 17 % 4 == ((kb * 3 + 8) * 17 + 4) % 4 then
            kd = Instance.new("ScreenGui")
        else
            kd = Instance.new("ScreenGui")
        end
        kb = (kb + 7) % 16
    else
        ka = (vector.create((kb * 2 + 5) % 11 + 1, (kb * 5 + 9) % 13 + 1, (kb * 2 + 10) % 17 + 1))
        kc = (vector.create((kb * 1 + 4) % 11 + 1, (kb * 11 + 3) % 13 + 1, (kb * 15 + 15) % 17 + 1))
        local ke_42 = (vector.create((kb * 6 + 8) % 11 + 1, (kb * 4 + 11) % 13 + 1, (kb * 13 + 3) % 17 + 1))
        worker = (vector.create((kb * 7 + 4) % 11 + 1, (kb * 5 + 10) % 13 + 1, (kb * 3 + 5) % 17 + 1))
        if vector.dot(vector.cross(ka, kc), (vector.cross(ke_42, worker))) == vector.dot(ka, ke_42) * vector.dot(kc, worker) - vector.dot(ka, worker) * vector.dot(kc, ke_42) then
            kd.Name = "OuroborosMarketplace"
            kd.ResetOnSpawn = false
            kd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        else
            kd.Name = "OuroborosMarketplace"
            kd.ResetOnSpawn = kd
            kd.ZIndexBehavior = Enum.ZIndexBehavior
        end
        kb = (kb + 15) % 16
    end
until fn811((kb * 13 + 4) % 16, 678658481)
ka = gethui and gethui()
kb = ka or game:GetService("CoreGui")
jV = nil
ka = 0
repeat
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 8), string.byte(tostring(jV))), 10), 2172561811), 222528020), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 8), string.byte(tostring(jV))), 10), 2122405484), 346833430))), 222528020), 346833430) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 8), string.byte(tostring(jV))), 10) then
        kd.Parent = jV
        kb = Instance.new(Instance.new)
    else
        kd.Parent = kb
        jV = Instance.new("Frame")
    end
    ka = (ka + 6) % 8
until fn811((ka * 1 + 7) % 8, 460486181)
ka = j2
if ka then
    kb = 0
    repeat
        if kb * 74451607 + 6 + 5 <= kb * 74451607 + 6 + 5 + 1 then
            ka = UDim2.fromOffset(170, 100)
        else
            ka = UDim2.fromOffset(UDim2.fromOffset, 100)
        end
        kb = (kb + 3) % 4
    until fn811((kb * 3 + 0) % 4, 527583337)
end
kc = ka
if not kc then
    ka = 1
    repeat
        if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 1), string.byte(tostring(ka))), 24), 1335107044), 24), 3830420509) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(ka, 1), string.byte(tostring(ka))), 24), 24) then
            kc = UDim2.fromOffset(UDim2.fromOffset, UDim2)
        else
            kc = UDim2.fromOffset(240, 140)
        end
        ka = (ka + 1) % 4
    until fn811((ka * 3 + 3) % 4, 527583337)
end
ki, uIStroke2, imageLabel2, worker2, kg, jw, worker, TweenService, RunService, jZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kb = 22
repeat
    ka = (kb * 5 + 3) % 11 + 1
    if ka <= 6 then
        if ka <= 3 then
            if ka <= 2 then
                if ka <= 1 then
                    if (kb * 2 + 6) * 4 % 3 == ((kb * 2 + 6) * 4 + 3) % 3 then
                        RunService = game:GetService("RunService")
                    else
                        jZ = game:GetService("RunService")
                    end
                    kb = (kb + 42) % 44
                else
                    if (kb * 1 + 4) * 13 % 4 == ((kb * 1 + 4) * 13 + 8) % 4 then
                        kj = function()
                            local iy = (TweenService:Create(jV, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(30, 30, 35) }))
                            iy.Play(iy)
                            local iz = (TweenService:Create(uIStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 100, 115) }))
                            iz.Play(iz)
                            local iA = (TweenService:Create(jw, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(230, 230, 230) }))
                            iA.Play(iA)
                        end
                        kk = worker.MouseEnter
                        kk.Connect(kk, kj)
                        kj = fn224
                        kk = worker.MouseLeave
                        kk.Connect(kk, kj)
                        kj = function()
                            task.spawn(function()
                                local iE = (TweenService:Create(imageLabel2, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(34, 34), Position = UDim2.new(0, 18, 0, 18) }))
                                iE.Play(iE)
                                task.wait(0.1)
                                local iF = (TweenService:Create(imageLabel2, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(40, 40), Position = UDim2.new(0, 15, 0, 15) }))
                                iF.Play(iF)
                            end)
                            pcall(function()
                                setclipboard("https://discord.gg/NFGJaF2fDv")
                            end)
                            if notify then
                                notify("Marketplace Discord copied to clipboard!")
                            end
                        end
                        kk = worker.MouseButton1Click
                        kk.Connect(kk, kj)
                        jZ = fn372
                    else
                        kj = jZ.MouseEnter
                        kk = kj
                        kk.Connect(kk, kj)
                        kj = jZ.MouseLeave
                        kk = fn224
                        local kl_2 = kj
                        kl_2.Connect(kl_2, kj)
                        kj = jZ.MouseButton1Click
                        kj.Connect(kj, kk)
                        worker = fn372
                    end
                    kb = (kb + 20) % 44
                end
            else
                kj = {
                    "vjsw",
                    "hwqoga",
                    "cspwzqipo",
                    "swbj",
                    "kankibupbg",
                    "efsy",
                    "gmspyqei",
                    "udgiziwhn",
                    "qxvwihihxdcx",
                    "kkzzrgkdk",
                    "bpsvmpwmc",
                    "mrfhwsbdc",
                    "chciaxvvdfzw"
                }
                if kj[(kb * 85 + 70) % 13 + 1] <= kj[(kb * 85 + 70) % 13 + 1] then
                    kj = function()
                        local og = jZ()
                        if og and og.Visible and og.AbsoluteSize.Y > 50 and og.AbsolutePosition.Y > -3000 then
                            jV.Visible = true
                            jV.Position = UDim2.fromOffset(og.AbsolutePosition.X + og.AbsoluteSize.X + 15, og.AbsolutePosition.Y)
                        else
                            jV.Visible = false
                        end
                    end
                    kk = RunService.RenderStepped
                    kk.Connect(kk, kj)
                else
                    kj = RunService.RenderStepped
                    kj.Connect(kj, RunService)
                end
                kb = (kb + 20) % 44
            end
        elseif ka <= 5 then
            if ka <= 4 then
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(kb, 25), string.byte(tostring(worker2))), 7), 1060474180), 16), 2370060085) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(kb, 25), string.byte(tostring(worker2))), 7), 16) then
                    jV.Size = kc
                    jV.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                    jV.BackgroundTransparency = 0
                    jV.Visible = false
                    jV.Parent = kd
                    ki = Instance.new("UICorner")
                else
                    jV.Size = jV
                    kd.BackgroundColor3 = Color3.fromRGB(25, Color3.fromRGB, kd)
                    kd.BackgroundTransparency = 30
                    kd.Visible = 0
                    kd.Parent = kd
                    kc = Instance:new()
                end
                kb = (kb + 42) % 44
            else
                kj = (vector.create((kb * 1 + 4) % 11 + 1, (kb * 4 + 1) % 13 + 1, (kb * 2 + 12) % 17 + 1))
                kk = (vector.create((kb * 7 + 9) % 11 + 1, (kb * 10 + 1) % 13 + 1, (kb * 14 + 12) % 17 + 1))
                local kl_3 = (vector.create((kb * 5 + 2) % 5 + 1, (kb * 5 + 2) % 7 + 1, (kb * 4 + 1) % 9 + 1))
                if fn811(math.abs((vector.angle(kj, kk, kl_3))) - math.abs((vector.angle(kk, kj, kl_3))), 544454170) then
                    ki.CornerRadius = UDim.new(0, 8)
                    ki.Parent = jV
                    uIStroke2 = Instance.new("UIStroke")
                else
                    uIStroke2.CornerRadius = UDim.new(uIStroke2, UDim.new)
                    uIStroke2.Parent = uIStroke2
                    jV = Instance.new(0)
                end
                kb = (kb + 42) % 44
            end
        else
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(kb, 2), string.byte(tostring(ki))), 4), 468904024), 0), 468904024) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(kb, 2), string.byte(tostring(ki))), 4), 0) then
                uIStroke2.Color = Color3.fromRGB(80, 80, 95)
                uIStroke2.Thickness = 1
                uIStroke2.Transparency = 0.3
                uIStroke2.Parent = jV
                imageLabel2 = Instance.new("ImageLabel")
            else
                imageLabel2.Color = Color3.fromRGB(95, 80, imageLabel2)
                imageLabel2.Thickness = Color3
                imageLabel2.Transparency = imageLabel2
                imageLabel2.Parent = uIStroke2
                jV = Instance.new(1)
            end
            kb = (kb + 9) % 44
        end
    elseif ka <= 9 then
        if ka <= 8 then
            if ka <= 7 then
                if ((not kb and uIStroke2 or (not worker2 or not RunService)) and (not imageLabel2 or not worker2 or not uIStroke2 and uIStroke2) and ((ki or not worker2 or not worker2 and kb) and ((imageLabel2 or not uIStroke2) and (not worker2 or not ki))) or (not imageLabel2 and not RunService and (kb or worker2) or (not imageLabel2 and not RunService or (RunService or not ki))) and (worker2 or not uIStroke2 or (kb or ki) or (uIStroke2 or imageLabel2) and (not ki and not kb))) and not ((not kb and uIStroke2 or (not worker2 or not RunService)) and (not imageLabel2 or not worker2 or not uIStroke2 and uIStroke2) and ((ki or not worker2 or not worker2 and kb) and ((imageLabel2 or not uIStroke2) and (not worker2 or not ki))) or (not imageLabel2 and not RunService and (kb or worker2) or (not imageLabel2 and not RunService or (RunService or not ki))) and (worker2 or not uIStroke2 or (kb or ki) or (uIStroke2 or imageLabel2) and (not ki and not kb))) then
                    worker2.Size = UDim2.fromOffset(UDim2.fromOffset, 40)
                    worker2.Position = UDim2:new(40, 15, UDim2.new)
                    worker2.BackgroundTransparency = 0
                    worker2.Image = 15
                    worker2.ScaleType = worker2
                    worker2.Parent = worker2
                    jV = Instance.new(worker2)
                else
                    imageLabel2.Size = UDim2.fromOffset(40, 40)
                    imageLabel2.Position = UDim2.new(0, 15, 0, 15)
                    imageLabel2.BackgroundTransparency = 1
                    imageLabel2.Image = "rbxassetid://91400086538074"
                    imageLabel2.ScaleType = Enum.ScaleType.Fit
                    imageLabel2.Parent = jV
                    worker2 = Instance.new("TextLabel")
                end
                kb = (kb + 42) % 44
            else
                kj = (vector.create((kb * 2 + 2) % 11 + 1, (kb * 10 + 11) % 13 + 1, (kb * 12 + 2) % 17 + 1))
                kk = (vector.create((kb * 2 + 7) % 11 + 1, (kb * 8 + 3) % 13 + 1, (kb * 7 + 11) % 17 + 1))
                if vector.dot(vector.cross(kj, kk), (vector.cross(kj, kk))) + vector.dot(kj, kk) * vector.dot(kj, kk) == vector.dot(kj, kj) * vector.dot(kk, kk) + 2 then
                    kg.Size = UDim2.new(20, UDim2, UDim2.new, -70)
                    kj = UDim2.new
                    kg.Position = kj(UDim2, kg, kg, 0)
                    kg.BackgroundTransparency = 15
                    kg.Text = kg
                    kg.TextColor3 = Color3.fromRGB(70, kg, 1)
                    kg.TextSize = "Ouroboros Market"
                    kg.Font = kj
                    kg.TextXAlignment = Color3
                    kg.Parent = kg
                    jV = Instance.new(240)
                else
                    worker2.Size = UDim2.new(1, -70, 0, 20)
                    worker2.Position = UDim2.new(0, 65, 0, 15)
                    worker2.BackgroundTransparency = 1
                    worker2.Text = "Ouroboros Market"
                    worker2.TextColor3 = Color3.fromRGB(240, 240, 240)
                    worker2.TextSize = 14
                    worker2.Font = Enum.Font.GothamBold
                    worker2.TextXAlignment = Enum.TextXAlignment.Left
                    worker2.Parent = jV
                    kg = Instance.new("TextLabel")
                end
                kb = (kb + 20) % 44
            end
        else
            kj = (vector.create((kb * 3 + 9) % 11 + 1, (kb * 11 + 8) % 13 + 1, (kb * 11 + 3) % 17 + 1))
            kk = (vector.create((kb * 6 + 1) % 11 + 1, (kb * 10 + 9) % 13 + 1, (kb * 8 + 7) % 17 + 1))
            local kl_4 = (vector.create((kb * 3 + 6) % 5 + 1, (kb * 3 + 1) % 7 + 1, (kb * 3 + 4) % 9 + 1))
            if math.abs((vector.angle(kj, kk, kl_4))) - math.abs((vector.angle(kk, kj, kl_4))) == 1 then
                kj = UDim2.new
                jw.Size = kj(jw, UDim2, 0, 15)
                kk = UDim2.new
                jw.Position = kk(0, 65, kj, 70)
                jw.BackgroundTransparency = UDim2
                jw.Text = "Trade. Sell. Profit."
                jw.TextColor3 = Color3.fromRGB(kk, Color3.fromRGB, jw)
                jw.TextSize = jw
                jw.Font = 0
                kj = Enum.TextXAlignment
                jw.TextXAlignment = jw
                jw.Parent = kj
                jV = Instance.new(1)
            else
                kg.Size = UDim2.new(1, -70, 0, 15)
                kg.Position = UDim2.new(0, 65, 0, 35)
                kg.BackgroundTransparency = 1
                kg.Text = "Trade. Sell. Profit."
                kg.TextColor3 = Color3.fromRGB(150, 150, 150)
                kg.TextSize = 11
                kg.Font = Enum.Font.GothamMedium
                kg.TextXAlignment = Enum.TextXAlignment.Left
                kg.Parent = jV
                jw = Instance.new("TextLabel")
            end
            kb = (kb + 9) % 44
        end
    elseif ka <= 10 then
        if kb * 75958579 + 7 + 5 <= kb * 75958579 + 7 + 5 + 1 then
            jw.Size = UDim2.new(1, -30, 0, 60)
            jw.Position = UDim2.new(0, 15, 0, 65)
            jw.BackgroundTransparency = 1
            jw.Text = "Got spare items piling up? Turn your grind into actual profit.\n\nClick to join the biggest trading community around!"
            jw.TextColor3 = Color3.fromRGB(190, 190, 190)
            jw.TextSize = 11
            jw.Font = Enum.Font.Gotham
            jw.TextXAlignment = Enum.TextXAlignment.Left
            jw.TextYAlignment = Enum.TextYAlignment.Top
            jw.TextWrapped = true
            jw.Parent = jV
            worker = Instance.new("TextButton")
        else
            ka = UDim2.new
            jV.Size = ka(60, 1, jV, 30)
            kk = UDim2.new
            jV.Position = kk(UDim2, 0, 0, -30)
            jV.BackgroundTransparency = jV
            jV.Text = jV
            jV.TextColor3 = Color3.fromRGB(0, 1, 190)
            jV.TextSize = ka
            ka = Enum.Font
            jV.Font = Color3
            jV.TextXAlignment = kk
            jV.TextYAlignment = ka
            jV.TextWrapped = 15
            jV.Parent = jV
            jw = Instance.new(65)
        end
        kb = (kb + 31) % 44
    else
        if kb * 25753815 + 6 + 4 >= kb * 25753815 + 6 + 4 + 2 then
            jV.Size = UDim2.new(0, 0, 1, UDim2.new)
            jV.BackgroundTransparency = 1
            jV.Text = 1
            jV.Parent = UDim2
            worker = game:GetService(game)
        else
            worker.Size = UDim2.new(1, 0, 1, 0)
            worker.BackgroundTransparency = 1
            worker.Text = ""
            worker.Parent = jV
            TweenService = game:GetService("TweenService")
        end
        kb = (kb + 9) % 44
    end
until fn811((kb * 21 + 30) % 44, 376575556)
