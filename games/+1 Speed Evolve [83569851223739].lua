local fns = {}
local ug_2, ug_22, ScriptsGroup, ug_32, ug_35
local mS
local nz
local mz
local ng
local nY
local mY
local VirtualUser
local Label
local nm
local TrailRemoteEvent
local m3
local nL
local TrailData
local ns
local ms
local m9
local nR
local UpgradesData
local my
local nf
local nX
local Toggles
local nE
local mE
local nl
local ml
local m2
local nK
local mK
local nr
local WinsData
local m8
local nQ
local mQ
local nx
local mx
local connection2
local CurrentCamera2
local mW
local nD
local mD
local nk
local AuraRemoteEvent
local SaveManager
local RebirthRemoteEvent
local mJ
local Workspace
local mq
local m7
local EvolutionRemoteEvent
local mP
local connection
local mw
local nd
local nV
local TreadmillData
local nC
local mC
local nj
local Helper
local UserInputService
local mI
local np
local mp
local m6
local nO
local mO
local mv
local nc
local nU
local mU
local HttpService
local mB
local ni
local m_
local WorldsRemoteEvent
local mH
local no
local mo
local m5
local nN
local mN
local nu
local mu
local nb
local nT
local Options
local nA
local mA
local nh
local mZ
local nG
local ItemData
local LocalPlayer
local mn
local nM
local mM
local nt
local mt
local Library
local ItemRemoteEvent
function fns.onCopySolanaAddress()
    mM(mY, "Copied Solana address")
end
function fns.fn58()
    local sp_1
    local so_1
    if identifyexecutor then
        sp_1, so_1 = identifyexecutor()
        local sq = sp_1 ~= ""
        local sr = type(sp_1) == "string" and sq
        if sr then
            local sq_1 = type(so_1) == "string" and so_1 ~= "" and sp_1 .. " " .. so_1
            m8 = sq_1 or sp_1
        end
    end
end
function fns.fn67()
    local oW = nA()
    local oX = oW and oW:FindFirstChildOfClass("Humanoid")
    return oX
end
function fns.onCopyBitcoinAddress()
    mM(nb, "Copied Bitcoin address")
end
function fns.fn85()
    local sd = nQ()
    local se = nt()
    local sf
    for i, v in ipairs(mq()) do
        if sd >= v.RebirthsRequired and se >= v.UpgradeRequired then
            if v.PlaceId ~= game.PlaceId then
                sf = v
            end
        end
    end
    if sf then
        WorldsRemoteEvent:FireServer(sf.Name)
    end
end
function fns.onCopyPayPalLink()
    mM(mU, "Copied PayPal link")
end
function fns.fn103()
    local rF_1
    local rE_1
    local rD = nN(mK)
    rF_1, rE_1 = nk(rD, mp(), no)
    if not rF_1 then
        return
    end
    if not rE_1 then
        AuraRemoteEvent:FireServer({ Action = "Buy", AuraName = rF_1.Name })
        return
    end
    if nY() ~= rF_1.Name then
        AuraRemoteEvent:FireServer({ Action = "Equip", AuraName = rF_1.Name })
    end
end
function fns.fn145()
    local rO = Options.ItemShopItems and Options.ItemShopItems.Value
    if type(rO) ~= "table" then
        return
    end
    local rO_1 = mp()
    for k, v in pairs(rO) do
        local rP_1 = v and ItemData[k] and not m5(k)
        if rP_1 then
            local rP_2 = tonumber(ItemData[k].WinsCost) or 0
            if rO_1 >= rP_2 then
                ItemRemoteEvent:FireServer({ Action = "Buy", ItemName = k })
            end
        end
    end
end
function fns.fn146(bV)
    local pr = mz("AurasOwned", bV) or nc(bV .. " Aura") or nc(bV)
    return pr
end
function fns.fn171(dK)
    local qS = nj()
    local Order = mA.Order
    if type(Order) == "table" then
        local qX = 1
        while qX <= qS do
            if Order[qX] == dK then
                return true
            end
            qX += 1
        end
    end
    if nc(dK) then
        return true
    end
    local DailyLoginEvolutions = LocalPlayer:FindFirstChild("DailyLoginEvolutions")
    local qT_1 = DailyLoginEvolutions and DailyLoginEvolutions:FindFirstChild(dK)
    if qT_1 then
        return true
    end
    return false
end
function fns.onRscripts()
    mM(nd, "Copied Rscripts profile to clipboard")
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(1.25)
        if nU("AutoBuySpeedUpgrade") then
            pcall(mD)
        end
        if nU("AutoBuyBestTrail") then
            pcall(mn)
        end
        if nU("AutoBuyBestAura") then
            pcall(nl)
        end
        if nU("AutoBuyItemShop") then
            pcall(ni)
        end
        if nU("AutoUseItems") then
            pcall(mo)
        end
    end
end
function fns.onExportConfigToClipboard()
    local tW_1
    local tV_1
    tV_1, tW_1 = pcall(HttpService.JSONEncode, HttpService, nR())
    if not tV_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local tV_2 = setclipboard or toclipboard
    local tV_3 = type(tV_2) ~= "function" or not pcall(tV_2, tW_1)
    if tV_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn205(ix, iy)
    local Type = iy.Type
    if Type == "Toggle" then
        return { idx = ix, type = "Toggle", value = iy.Value == true }
    elseif Type == "Slider" then
        return { idx = ix, type = "Slider", value = tostring(iy.Value) }
    elseif Type == "Dropdown" then
        return { idx = ix, type = "Dropdown", multi = iy.Multi == true, value = iy.Value }
    elseif Type == "Input" then
        local ts = iy.Value or ""
        return { idx = ix, type = "Input", text = tostring(ts) }
    elseif Type == "ColorPicker" then
        return { idx = ix, type = "ColorPicker", value = iy.Value:ToHex(), transparency = iy.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ix,
            type = "KeyPicker",
            mode = iy.Mode,
            key = iy.Value,
            modifiers = iy.Modifiers,
            toggled = iy.Toggled
        }
    else
        return nil
    end
end
function fns.fn207(gF)
    local DiscordGroup = gF:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mv })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mv })
end
function fns.fn215()
    local r1 = m7()
    if r1 == "" then
        return
    end
    local r2 = mA.GetNextEvolution(r1)
    local r1_1 = r2 == ""
    local r3 = type(r2) ~= "string" or r1_1
    if r3 then
        return
    end
    local r1_2 = mA.Evolutions[r2]
    if type(r1_2) ~= "table" then
        return
    end
    local r2_1 = tonumber(r1_2.WinsCost) or 0
    local r2_2 = tonumber(r1_2.Level) or 0
    local r2_3 = mp() >= r2_1 and nE() >= r2_2
    if r2_3 then
        EvolutionRemoteEvent:FireServer({ Action = "Evolve" })
    end
end
function fns.fn220()
    local rB_1
    local rA_1
    local rz = nN(TrailData)
    rB_1, rA_1 = nk(rz, mp(), nG)
    if not rB_1 then
        return
    end
    if not rA_1 then
        TrailRemoteEvent:FireServer({ Action = "Buy", TrailName = rB_1.Name })
        return
    end
    if mJ() ~= rB_1.Name then
        TrailRemoteEvent:FireServer({ Action = "Equip", TrailName = rB_1.Name })
    end
end
function fns.onInputChanged(g3)
    local UserInputType = g3.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mH = tick()
    end
end
function fns.fn237(dz, dA, dB)
    local qH
    local qI
    for i, v in ipairs(dz) do
        if dB(v.Name) then
            qH = v
        elseif dA >= v.Cost then
            qI = v
        end
    end
    if qI and (not qH or qI.Multiplier > qH.Multiplier) then
        return qI, false
    end
    return qH, true
end
function fns.onCopyLitecoinAddress()
    mM(nf, "Copied Litecoin address")
end
function fns.fn246()
    if not Toggles.Fly.Value then
        local tg = ns()
        if tg then
            tg.PlatformStand = false
        end
    end
end
function fns.fn259()
    local ty = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local tz = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if tz then
                local tz_1 = ms(k, v)
                if tz_1 then
                    ty[#ty + 1] = tz_1
                end
            end
        end
    end
    table.sort(ty, function(iI, iJ)
        if iI.type ~= iJ.type then
            return iI.type < iJ.type
        end
        return iI.idx < iJ.idx
    end)
    return { objects = ty }
end
function fns.fn277(cR)
    local p4 = nD()
    if #p4 == 0 then
        return nil
    elseif cR == "Worst" then
        table.sort(p4, function(cW, cX)
            if cW.Reward == cX.Reward then
                return cW.Stage < cX.Stage
            end
            return cW.Reward < cX.Reward
        end)
        return p4[1]
    elseif cR == "Nearest" then
        table.sort(p4, function(cU, cV)
            return cU.Distance < cV.Distance
        end)
        return p4[1]
    elseif cR == "Random" then
        return p4[math.random(1, #p4)]
    else
        table.sort(p4, function(cY, cZ)
            if cY.Reward == cZ.Reward then
                return cY.Stage > cZ.Stage
            end
            return cY.Reward > cZ.Reward
        end)
        return p4[1]
    end
end
function fns.worker()
    local su_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local st = math.floor(os.clock() - nO)
        if st < 60 then
            su_1 = st .. "s"
        elseif st < 3600 then
            su_1 = string.format("%dm %ds", st // 60, st % 60)
        else
            su_1 = string.format("%dh %dm", st // 3600, st % 3600 // 60)
        end
        Label:SetText(nL("Session time", su_1, nm))
    end
end
function fns.fn306()
    local rv = m3()
    if not rv then
        return
    end
    if nx() then
        local rw = ng()
        if rw and (rw.Position - rv.Position).Magnitude > 12 then
            nK(rv)
        end
        return
    end
    nK(rv)
end
function fns.fn335()
    local q_
    local q0 = -1
    local Evolutions = mA.Evolutions
    if type(Evolutions) ~= "table" then
        return nil
    end
    for k, v in pairs(Evolutions) do
        local q1_1 = type(v) == "table" and v.SpeedMultiplier and mx(k)
        if q1_1 then
            local q1_2 = tonumber(v.SpeedMultiplier) or 0
            if q1_2 > q0 then
                q0 = q1_2
                q_ = k
            end
        end
    end
    return q_, q0
end
function fns.fn338(b2)
    local pt = ng()
    local pu = not b2
    local pv = not pt
    local pz = if pv then 1 else 0
    local px = 3711 * pz + 3798 * (1 - pz)
    local py = 2084 * pz + 1797 * (1 - pz)
    if not ((px * 234 + py * 231 + px * py) % 16777213 == 9083502) then
        pv = pu
    end
    if pv then
        return false
    elseif typeof(b2) == "Instance" then
        if b2:IsA("Model") then
            b2 = b2:GetPivot().Position
            pt.CFrame = CFrame.new(b2 + Vector3.new(0, 3, 0))
            return true
        elseif b2:IsA("BasePart") then
            b2 = b2.Position
            pt.CFrame = CFrame.new(b2 + Vector3.new(0, 3, 0))
            return true
        else
            return false
        end
    else
        pt.CFrame = CFrame.new(b2 + Vector3.new(0, 3, 0))
        return true
    end
end
function fns.fn361()
    ItemRemoteEvent:FireServer({ Action = "EquipBest" })
end
function fns.fn395()
    local r8 = nu()
    if not r8 then
        return
    end
    local sc = if m7() == r8 then 1 else 0
    if sc == 1 then
        return
    end
    EvolutionRemoteEvent:FireServer({ Action = "Select", EvolutionName = r8 })
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mw(true)
        end
    end
end
function fns.fn411()
    local rg = {}
    for k, v in pairs(mt) do
        local rh = type(v) == "table" and v.PlaceId
        if rh then
            local rh_1 = #rg + 1
            local ri = tonumber(v.PlaceId) or 0
            local rj = tonumber(v.RebirthsRequired) or 0
            local rk = tonumber(v.UpgradeRequired) or 0
            rg[rh_1] = { Name = k, PlaceId = ri, RebirthsRequired = rj, UpgradeRequired = rk }
        end
    end
    table.sort(rg, function(ef, eg)
        return ef.RebirthsRequired < eg.RebirthsRequired
    end)
    return rg
end
function fns.fn440()
    local pQ = {}
    local pR = ng()
    local pS = pR and pR.Position
    for k, v in pairs(nC) do
        local pS_1 = nr(k)
        local pT = #pQ + 1
        local pV = pS and (pS - v).Magnitude or math.huge
        pQ[pT] = { Stage = k, Position = v, Reward = pS_1, Distance = pV }
    end
    return pQ
end
function fns.fn441()
    local rt = Options.AutoWinMode and Options.AutoWinMode.Value or "Best"
    local rt_1 = mO(rt)
    if not rt_1 then
        return
    end
    local rs_2 = mu(rt_1.Stage)
    if rs_2 then
        nK(rs_2)
        return
    end
    mS(rt_1.Position)
end
function fns.fn446()
    return mI(mP(), "Wins")
end
function fns.fn464(dq)
    local qs = {}
    for k, v in pairs(dq) do
        local qt = type(v) == "table" and v.SpeedMultiplier
        if qt then
            local qt_1 = #qs + 1
            local qu = tonumber(v.SpeedMultiplier) or 0
            local qv = (tonumber(v.WinsCost))
            local qG = if qv then 1 else 0
            local qE = 2888 * qG + 3744 * (1 - qG)
            local qF = 1698 * qG + 3021 * (1 - qG)
            if not ((qE * 3075 + qF * 405 + qE * qF) % 16777213 == 14472114) then
                qv = 0
            end
            local qw = tonumber(v.LayoutOrder) or 0
            qs[qt_1] = { Name = k, Multiplier = qu, Cost = qv, Order = qw }
        end
    end
    table.sort(qs, function(dw, dx)
        if dw.Multiplier == dx.Multiplier then
            return dw.Order < dx.Order
        end
        return dw.Multiplier < dx.Multiplier
    end)
    return qs
end
function fns.fn479(b_)
    return mz("ItemsOwned", b_)
end
function fns.fn483()
    return LocalPlayer:FindFirstChild("PlayerStats")
end
function fns.fn488(ip, iq)
    local to_1 = (ip == "Toggle" and Toggles or Options)[iq]
    local tn_2 = type(to_1) == "table" and to_1.Type == ip
    return tn_2 and to_1 or nil
end
function fns.fn499()
    local pa = mZ()
    local pb = pa and pa:FindFirstChild("AuraEquipped")
    local pa_1 = pb
    if pb then
        pb = tostring(pa_1.Value)
    end
    return pb or "None"
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local sU_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if sU_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn525(cd)
    local pC = ng()
    local pD = not pC or not cd or not cd:IsA("BasePart")
    if pD then
        return false
    end
    pC.CFrame = cd.CFrame + Vector3.new(0, 3, 0)
    if firetouchinterest then
        pcall(firetouchinterest, pC, cd, 0)
        task.wait()
        pcall(firetouchinterest, pC, cd, 1)
    end
    return true
end
function fns.onImportConfigFromClipboardTex()
    local t0_1
    local tZ = Options.SaveManager_ImportSource.Value or ""
    local tZ_1
    local t_ = tostring(tZ):match("^%s*(.-)%s*$")
    if t_ == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    tZ_1, t0_1 = pcall(HttpService.JSONDecode, HttpService, t_)
    local t__1 = not tZ_1 or type(t0_1) ~= "table" or type(t0_1.objects) ~= "table"
    if t__1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local tZ_2 = 0
    for i, v in ipairs(t0_1.objects) do
        local ua = if m_(v) then 1 else 0
        if ua == 1 then
            tZ_2 += 1
        end
    end
    if tZ_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local t0_2 = tZ_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(tZ_2, t0_2), 6)
end
function fns.onCopyVenmoLink()
    mM(mN, "Copied Venmo link")
end
function fns.fn533()
    local rK = mQ()
    if not rK then
        return
    end
    local rL = UpgradesData[rK] or UpgradesData[tostring(rK)]
    if not rL then
        return
    end
    local rL_1 = tonumber(rL.Cost) or 0
    if mp() < rL_1 then
        return
    end
    local UpgradeButtons = Workspace:FindFirstChild("UpgradeButtons")
    local rM_2 = UpgradeButtons and UpgradeButtons:FindFirstChild(tostring(rK))
    local rL_3 = rM_2 and rM_2:FindFirstChild("Touch")
    if rL_3 then
        nK(rL_3)
    end
end
local function fn549(ci)
    local pF = WinsData[ci]
    local pK = if pF then 1 else 0
    local pI = 2025 * pK + 2392 * (1 - pK)
    local pJ = 1812 * pK + 1256 * (1 - pK)
    if not ((pI * 1574 + pJ * 3747 + pI * pJ) % 16777213 == 13646214) then
        pF = WinsData[tostring(ci)]
    end
    local pG = pF
    local pF_1 = tonumber(pG) or 0
    return pF_1
end
local function fn557()
    local oZ = nA()
    local o_ = oZ and oZ:FindFirstChild("HumanoidRootPart")
    return o_
end
local function fn560()
    local o4 = mZ()
    local o5 = o4 and o4:FindFirstChild("EvolutionSelected")
    local o4_1 = o5
    if o5 then
        o5 = tostring(o4_1.Value)
    end
    return o5 or ""
end
local function fn598(c0, c1, c2)
    if type(c1) ~= "table" then
        return false
    end
    local Treadmills = Workspace:FindFirstChild("Treadmills")
    local p7 = Treadmills and Treadmills:FindFirstChild(c0)
    local p7_1 = not p7 or not p7:FindFirstChild("TouchPart")
    if p7_1 then
        return false
    end
    local p6_2 = tonumber(c1.RebirthsRequired) or 0
    if c2 < p6_2 then
        return false
    end
    local p6_3 = c1.GamepassName and not nc(c1.GamepassName)
    if p6_3 then
        return false
    end
    return true
end
local function fn601(cn)
    local Wins = Workspace:FindFirstChild("Wins")
    local pM = Wins and Wins:FindFirstChild(tostring(cn))
    local pL_1 = pM
    if pM then
        pM = pL_1:FindFirstChild("Touch")
    end
    local pL_2 = pM
    if pM then
        pM = pL_2:IsA("BasePart")
    end
    if pM then
        return pL_2
    end
    return nil
end
local function fn612()
    return mI(mZ(), "Level")
end
local function fn617(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, ml("-", "#5a6070"), ml(ae, af))
end
local function onCopyJoinScript_JobID()
    local f8 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, my)
    mM(f8, "Copied join script to clipboard")
end
local function fn643()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    mw(false)
    local ub = ns()
    if ub then
        ub.PlatformStand = false
        ub.WalkSpeed = 16
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(0.75)
        if nU("AutoWin") then
            pcall(nz)
        elseif nU("AutoTrain") then
            pcall(mW)
        end
    end
end
local function fn658()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    mC = tick()
end
local function onInputBegan()
    mH = tick()
end
local function fn668()
    local rY = nQ()
    local rZ = Helper.GetRebirthLevelRequired(rY)
    local rY_1 = nE()
    local r_ = tonumber(rZ) or math.huge
    if rY_1 >= r_ then
        RebirthRemoteEvent:FireServer()
    end
end
local function fn676(bI, bJ)
    local pm = LocalPlayer:FindFirstChild(bI)
    if not pm then
        return false
    end
    local pn = pm:FindFirstChild(bJ)
    if not pn then
        return false
    elseif pn:IsA("BoolValue") then
        return pn.Value == true
    else
        local Owned = pn:FindFirstChild("Owned")
        local pn_1 = Owned and Owned:IsA("BoolValue")
        if pn_1 then
            return Owned.Value == true
        end
        return true
    end
end
local function fn697(aA)
    local oT = Toggles[aA]
    return oT ~= nil and oT.Value == true
end
local function fn702()
    local o7 = mZ()
    local o8 = o7 and o7:FindFirstChild("TrailEquipped")
    local o7_1 = o8
    if o8 then
        o8 = tostring(o7_1.Value)
    end
    return o8 or "None"
end
local function fn714(K, L)
    return (ItemData[K].LayoutOrder or 0) < (ItemData[L].LayoutOrder or 0)
end
local function fn725(T, U)
    if setclipboard then
        setclipboard(T)
    elseif toclipboard then
        toclipboard(T)
    end
    Library:Notify(U)
end
local function fn727()
    if not Toggles.WalkSpeedEnabled.Value then
        local ti = ns()
        if ti then
            ti.WalkSpeed = 16
        end
    end
end
local function fn733()
    local pd = mZ()
    local pe = pd and pd:FindFirstChild("OnTreadmill")
    local pd_1 = pe
    if pe then
        pe = pd_1.Value == true
    end
    return pe
end
local function onUnload()
    Library:Unload()
end
local function fn751(cw)
    local pO = m9(cw)
    if pO then
        return pO
    end
    local pO_1 = nC[cw]
    if not pO_1 then
        return nil
    end
    mB(pO_1, 8)
    mS(pO_1)
    task.wait(0.35)
    return m9(cw)
end
local function fn759()
    return mI(mZ(), "EvolutionProgress")
end
local function fn773()
    return mI(mZ(), "UpgradesOwned")
end
local function onCopyUSDTAddress()
    mM(m2, "Copied USDT address")
end
local function fn810()
    return mI(mP(), "Rebirths")
end
local function fn813()
    return LocalPlayer.Character
end
local function fn814(bz)
    local Gamepasses = LocalPlayer:FindFirstChild("Gamepasses")
    local ph = Gamepasses and Gamepasses:FindFirstChild(bz)
    local pg_1 = ph
    if ph then
        ph = pg_1:FindFirstChild("Owned")
    end
    local pg_2 = ph
    if ph then
        ph = pg_2.Value == true
    end
    return ph
end
local function fn827()
    return LocalPlayer:FindFirstChild("leaderstats")
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local sI = tick() - mH
            local sJ = tick() - mC
            if sI >= 300 and sJ >= 60 then
                pcall(nT)
            else
                if sI < 300 and sJ >= 300 then
                    pcall(nT)
                end
            end
        end
    end
end
local function fn872(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
local function fn874()
    local rd = nt()
    local re = rd + 1
    local rd_1 = UpgradesData[re] or UpgradesData[tostring(re)]
    if rd_1 then
        return re
    end
    return nil
end
local function onRenderStepped(hL)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local s6_1 = ns()
        if s6_1 then
            s6_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local s6_3 = ng()
        local s7 = ns()
        if s6_3 and s7 then
            s7.PlatformStand = true
            local s7_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                s7_1 = s7_1 + CurrentCamera2.CFrame.LookVector
            end
            local tc = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if tc == 1 then
                s7_1 = s7_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                s7_1 = s7_1 - CurrentCamera2.CFrame.RightVector
            end
            local tc_1 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if tc_1 == 1 then
                s7_1 = s7_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                s7_1 = s7_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                s7_1 = s7_1 - Vector3.new(0, 1, 0)
            end
            s6_3.AssemblyLinearVelocity = Vector3.zero
            if s7_1.Magnitude > 0 then
                s6_3.CFrame = s6_3.CFrame + s7_1.Unit * Options.FlySpeed.Value * hL
            end
        end
    end
end
local function fn880()
    mw(Toggles.AntiGameplayPause.Value)
end
local function worker4()
    while not Library.Unloaded do
        task.wait(2)
        if nU("AutoRebirth") then
            pcall(nV)
        end
        if nU("AutoEvolve") then
            pcall(np)
        end
        if nU("AutoSelectBestCreature") then
            pcall(mE)
        end
        if nU("AutoBuyWorlds") then
            pcall(nX)
        end
    end
end
local function fn897(aT, aU)
    if not aT then
        return 0
    end
    local o1 = aT:FindFirstChild(aU)
    if not o1 then
        return 0
    end
    local o2 = tonumber(o1.Value) or 0
    return o2
end
local function fn902()
    local qc = nQ()
    local qd
    local qe = -1
    for k, v in pairs(TreadmillData) do
        if nM(k, v, qc) then
            local qf_1 = tonumber(v.Multiplier) or 0
            if qf_1 > qe then
                qe = qf_1
                qd = k
            end
        end
    end
    if not qd then
        return nil
    end
    local qc_1 = Workspace.Treadmills:FindFirstChild(qd)
    local qf_2 = qc_1 and qc_1:FindFirstChild("TouchPart")
    return qf_2, qd, qe
end
local function fn947()
    mM(nh, "Copied Discord invite to clipboard")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local s4_1 = ns()
        if s4_1 then
            s4_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn960(bQ)
    local pp = mz("TrailsOwned", bQ) or nc(bQ .. " Trail") or nc(bQ)
    return pp
end
local function onCopyEthereumAddress()
    mM(m6, "Copied Ethereum address")
end
AuraRemoteEvent = nil
ml = nil
TrailRemoteEvent = nil
mn = nil
mo = nil
mp = nil
mq = nil
WinsData = nil
ms = nil
mt = nil
mu = nil
mv = nil
mw = nil
mx = nil
my = nil
mz = nil
mA = nil
mB = nil
mC = nil
mD = nil
mE = nil
Label = nil
ItemData = nil
mH = nil
mI = nil
mJ = nil
mK = nil
TrailData = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
UpgradesData = nil
mS = nil
Options = nil
mU = nil
TreadmillData = nil
mW = nil
Toggles = nil
mY = nil
mZ = nil
m_ = nil
Helper = nil
SaveManager = nil
m2 = nil
m3 = nil
m5 = nil
m6 = nil
local m4
m7 = nil
m8 = nil
m9 = nil
Library = nil
nb = nil
nc = nil
nd = nil
connection2 = nil
nf = nil
ng = nil
nh = nil
ni = nil
nj = nil
nk = nil
nl = nil
nm = nil
LocalPlayer = nil
no = nil
np = nil
Workspace = nil
nr = nil
ns = nil
nt = nil
nu = nil
connection = nil
nx = nil
nz = nil
nA = nil
HttpService = nil
nC = nil
nD = nil
nE = nil
VirtualUser = nil
nG = nil
WorldsRemoteEvent = nil
UserInputService = nil
RebirthRemoteEvent = nil
nK = nil
nL = nil
nM = nil
nN = nil
nO = nil
EvolutionRemoteEvent = nil
nQ = nil
nR = nil
ItemRemoteEvent = nil
nT = nil
nU = nil
local CoreGui, GuiService
nV = nil
CurrentCamera2 = nil
nX = nil
nY = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, nh, nd, Helper, TreadmillData, UpgradesData, TrailData, mK, ItemData, mA, mt, WinsData, TrailRemoteEvent, AuraRemoteEvent, ItemRemoteEvent, EvolutionRemoteEvent, RebirthRemoteEvent, WorldsRemoteEvent, nC, ug_32 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ug_27 = game:GetService("Players")
local ug_17 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = ug_27.LocalPlayer
local ug_6 = "+1 Speed Evolve"
nh = "https://discord.gg/ehKVq7pf7v"
nd = "https://rscripts.net/@Ouroboros"
local ug_30 = ug_17:WaitForChild("Modules"):WaitForChild("Shared")
local ug_4 = ug_30:WaitForChild("RemoteEventService")
Helper = require(ug_30:WaitForChild("Helper"))
TreadmillData = require(ug_30:WaitForChild("TreadmillData"))
UpgradesData = require(ug_30:WaitForChild("UpgradesData"))
TrailData = require(ug_30:WaitForChild("TrailData"))
if (not ug_32 and not ug_32 and (not TrailData and ug_32) or (TrailData or ItemRemoteEvent or (ItemRemoteEvent or ug_32))) and not (not ug_32 and not ug_32 and (not TrailData and ug_32) or (TrailData or ItemRemoteEvent or (ItemRemoteEvent or ug_32))) then
    ug_30 = require(ItemData:WaitForChild("AuraData"))
    mA = require(ItemData:WaitForChild("ItemData"))
    mt = require(ItemData:WaitForChild("EvolutionData"))
    mK = require(ItemData:WaitForChild("WorldsData"))
else
    mK = require(ug_30:WaitForChild("AuraData"))
    ItemData = require(ug_30:WaitForChild("ItemData"))
    mA = require(ug_30:WaitForChild("EvolutionData"))
    mt = require(ug_30:WaitForChild("WorldsData"))
end
WinsData = require(ug_30:WaitForChild("WinsData"))
TrailRemoteEvent = ug_4:WaitForChild("TrailRemoteEvent")
AuraRemoteEvent = ug_4:WaitForChild("AuraRemoteEvent")
ItemRemoteEvent = ug_4:WaitForChild("ItemRemoteEvent")
EvolutionRemoteEvent = ug_4:WaitForChild("EvolutionRemoteEvent")
RebirthRemoteEvent = ug_4:WaitForChild("RebirthRemoteEvent")
WorldsRemoteEvent = ug_4:WaitForChild("WorldsRemoteEvent")
nC = {
    [1] = Vector3.new(425.99993896484, 10.5, 39.999996185303),
    [2] = Vector3.new(705.99993896484, 10.5, 39.999996185303),
    [3] = Vector3.new(1246, 92.5, 43.999996185303),
    [4] = Vector3.new(1846, 92.5, 37.999996185303),
    [5] = Vector3.new(2476, 92.5, 39.999996185303),
    [6] = Vector3.new(3334, 92.5, 39.999996185303),
    [7] = Vector3.new(4244, 92.500053405762, 40.000072479248),
    [8] = Vector3.new(4770, 92.5, 39.999996185303),
    [9] = Vector3.new(6210, 92.5, 39.999996185303),
    [10] = Vector3.new(7354, 92.5, 39.999996185303)
}
ug_32 = {}
for k in pairs(ItemData) do
    ug_27 = type(ItemData[k]) == "table" and ItemData[k].SpeedMultiplier
    if ug_27 then
        ug_32[#ug_32 + 1] = k
    end
end
table.sort(ug_32, fn714)
Library, SaveManager, Toggles, Options, ug_2, nm, nf, nb, m6, m2, mY, mU, mN, ug_17, m8, Label, my, mM, mv, ml, nL, nU, nA, ns, ng, mZ, mP, mI, mp, nQ, nE, nt, nj, m7, mJ, nY, nx, nc, mz, nG, no, m5, mS, mB, nK, nr, m9, mu, nD, mO, nM, m3, nN, nk, mx, nu, mQ, mq, nz, mW, mn, nl, mD, ni, mo, nV, np, mE, nX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
mM = fn725
mv = fn947
ml = fn872
nL = fn617
local ug_26 = "#7fd47f"
if ((not nL or m3 or nE and not ug_17) and ((nL or not m3) and (not ug_17 or nE)) or nL and m3 and (ug_17 or m3) and ((nE or not nL) and (ug_17 or ug_17))) and (ug_17 and m3 and (not nL and ug_17) or (ug_17 or not ug_17) and (not nE and nE) or nE and nE and (not ug_17 or nE) and (nL and not m3 or (not nE or not nE))) or not (((not nL or m3 or nE and not ug_17) and ((nL or not m3) and (not ug_17 or nE)) or nL and m3 and (ug_17 or m3) and ((nE or not nL) and (ug_17 or ug_17))) and (ug_17 and m3 and (not nL and ug_17) or (ug_17 or not ug_17) and (not nE and nE) or nE and nE and (not ug_17 or nE) and (nL and not m3 or (not nE or not nE)))) then
    ug_2 = "#6ec1ff"
end
nm = "#e8a34d"
local ug_13 = "#8b93a3"
nf = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nb = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
m6 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
m2 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mY = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mU = "https://paypal.me/TheTruckerGOD"
mN = "https://venmo.com/u/miserablemusic"
local ug_25 = "#345d9d"
local ug_12 = "#f7931a"
local ug_24 = "#627eea"
local ug_36 = "#26a17b"
local ug_10 = "#14f195"
if (not mu or not nz) and (ns and not nz) and (mu and ns and (not nk and ns)) or not ns and mE and (nt and nt) and ((nk or not nt) and (nk and not mu)) or not ((not mu or not nz) and (ns and not nz) and (mu and ns and (not nk and ns)) or not ns and mE and (nt and nt) and ((nk or not nt) and (nk and not mu))) then
    ug_22 = "#0070ba"
    ug_35 = "#008cff"
    nU = fn697
else
    nU = "#0070ba"
    ug_22 = "#008cff"
    ug_35 = fn697
end
nA = fn813
ns = fns.fn67
ng = fn557
mZ = fns.fn483
mP = fn827
mI = fn897
mp = fns.fn446
nQ = fn810
nE = fn612
nt = fn773
nj = fn759
m7 = fn560
mJ = fn702
nY = fns.fn499
nx = fn733
nc = fn814
mz = fn676
nG = fn960
no = fns.fn146
m5 = fns.fn479
mS = fns.fn338
mB = function(b6, b7)
    pcall(function()
        local pA = b7 or 5
        LocalPlayer:RequestStreamAroundAsync(b6, pA)
    end)
end
nK = fns.fn525
nr = fn549
m9 = fn601
mu = fn751
nD = fns.fn440
mO = fns.fn277
nM = fn598
m3 = fn902
nN = fns.fn464
nk = fns.fn237
mx = fns.fn171
nu = fns.fn335
mQ = fn874
if (nM or not nj or (not mM or not mp) or (not ng and not ng or mp and nj) or (not mp or not nj) and (not mM and not mp) and (not mM or not nM or nM and nM)) and ((nM or not ng) and (not mp and not nM) and ((not nj or not mM) and (not nj and not nM)) or (mp and mp or not ng and nM or (nM or nM) and (nj or not nM))) and not ((nM or not nj or (not mM or not mp) or (not ng and not ng or mp and nj) or (not mp or not nj) and (not mM and not mp) and (not mM or not nM or nM and nM)) and ((nM or not ng) and (not mp and not nM) and ((not nj or not mM) and (not nj and not nM)) or (mp and mp or not ng and nM or (nM or nM) and (nj or not nM)))) then
    mW = fns.fn411
    mq = fns.fn441
    nz = fns.fn306
else
    mq = fns.fn411
    nz = fns.fn441
    mW = fns.fn306
end
mn = fns.fn220
nl = fns.fn103
mD = fns.fn533
ni = fns.fn145
mo = fns.fn361
nV = fn668
np = fns.fn215
mE = fns.fn395
nX = fns.fn85
ug_17 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = nh, Copyable = true }, "|", ug_6 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local ug_3 = {
    Info = ug_17:AddTab("Info", "info"),
    Main = ug_17:AddTab("Main", "gauge"),
    Player = ug_17:AddTab("Player", "person-standing"),
    Settings = ug_17:AddTab("Settings", "settings")
}
m8 = "Unknown"
pcall(fns.fn58)
local ug_15 = ug_3.Info:AddLeftGroupbox("Account", "circle-user")
ug_15:AddLabel(nL("User", LocalPlayer.Name, ug_26), true)
ug_15:AddLabel(nL("Status", "Keyless", ug_26), true)
ug_15:AddLabel(nL("Executor", m8, ug_26), true)
local GameInfoGroup = ug_3.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(ml(ug_6 .. " [" .. tostring(game.PlaceId) .. "]", ug_2), true)
GameInfoGroup:AddLabel(nL("Place ID", tostring(game.PlaceId), ug_2), true)
Label = GameInfoGroup:AddLabel(nL("Session time", "0s", nm), true)
my = tostring(game.JobId)
local ug_8 = #my > 18
if ug_8 then
    ug_27 = 5
    repeat
        ug_15 = (vector.create((ug_27 * 1 + 4) % 11 + 1, (ug_27 * 2 + 11) % 13 + 1, (ug_27 * 11 + 9) % 17 + 1))
        local uM = vector.floor(ug_15) + vector.ceil(ug_15 * -1)
        if vector.dot(uM, uM) == 0 then
            ug_8 = string.sub(my, 1, 18) .. "..."
        else
            my = string.sub(ug_8, 1, 18) .. "..."
        end
        ug_27 = (ug_27 + 3) % 8
    until (ug_27 * 7 + 3) % 8 == 3
end
ug_27 = ug_8 or my
nO, ScriptsGroup = nil, nil
ug_15 = ug_27
GameInfoGroup:AddLabel(nL("Server", ug_15, ug_13), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nO = os.clock()
if (not nO and false) or (not ug_15 and not nO) or not ((not nO and false) or (not ug_15 and not nO)) then
    task.spawn(fns.worker)
    ScriptsGroup = ug_3.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(fns.worker)
    ug_3 = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(ml("Included in this hub", ug_13), true)
ScriptsGroup:AddLabel(ml(ug_6, ug_2), true)
ug_8 = ug_3.Info:AddRightGroupbox("Features", "list")
ug_8:AddLabel(ml("Auto Train", ug_2), true)
ug_8:AddLabel(ml("Auto Win", nm), true)
ug_8:AddLabel(ml("Auto Shop", ug_26), true)
ug_8:AddLabel(ml("Auto Progress", ug_2), true)
ug_8:AddLabel(ml("Player Utilities", ug_13), true)
ug_17 = ug_3.Info:AddRightGroupbox("Socials", "link")
ug_17:AddButton({ Text = "Discord", Func = mv })
ug_17:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
ug_30 = ug_3.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
ug_30:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
ug_30:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
ug_30:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
ug_30:AddButton({ Text = "Copy Discord Invite", Func = mv })
ug_4 = ug_3.Info:AddRightGroupbox("Donations", "heart")
ug_4:AddLabel(ml("All donations are optional but appreciated.", nm), true)
ug_4:AddLabel(ml("If you donate you get a special role, just PING after you donate.", ug_26), true)
ug_4:AddDivider()
ug_4:AddLabel(ml("LTC / Litecoin", ug_25), true)
ug_4:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
ug_4:AddLabel(ml("BTC / Bitcoin", ug_12), true)
ug_4:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
ug_4:AddLabel(ml("ETH / Ethereum", ug_24), true)
ug_4:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
ug_4:AddLabel(ml("USDT", ug_36), true)
ug_4:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
ug_4:AddLabel(ml("Solana", ug_10), true)
ug_4:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
ug_4:AddLabel(ml("PayPal", ug_22), true)
ug_4:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
ug_4:AddLabel(ml("Venmo", ug_35), true)
ug_4:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
ug_4:AddDivider()
ug_4:AddLabel(ml("Don't have any of the listed currencies but still wanna donate?", ug_13), true)
ug_4:AddLabel(ml("DM me and we'll work something out.", ug_2), true)
local FaqGroup = ug_3.Info:AddRightGroupbox("FAQ", "circle-help")
FaqGroup:AddLabel("Where do I get a good config?", true)
FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
FaqGroup:AddLabel("How do I import / export configs?", true)
FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
FaqGroup:AddLabel("How do I report bugs?", true)
FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
FaqGroup:AddLabel("How do I make suggestions?", true)
FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
FaqGroup:AddLabel("How do I get help or updates?", true)
FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
for k, v in pairs(ug_3) do
    if v ~= ug_3.Info then
        fns.fn207(v)
    end
end
mH, mC, connection, connection2, CurrentCamera2, nT, mw, m4, ms, nR, m_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ug_8 = ug_3.Main:AddLeftGroupbox("Farm", "bot")
ug_8:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
ug_8:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
ug_8:AddDropdown("AutoWinMode", { Text = "Win Mode", Values = { "Best", "Worst", "Nearest", "Random" }, Default = "Best" })
ug_17 = ug_3.Main:AddLeftGroupbox("Progress", "sprout")
ug_17:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ug_17:AddToggle("AutoEvolve", { Text = "Auto Evolve", Default = false })
ug_17:AddToggle("AutoSelectBestCreature", { Text = "Auto Select Best Creature", Default = false })
ug_17:AddToggle("AutoBuyWorlds", { Text = "Auto Buy Worlds", Default = false })
ug_30 = ug_3.Main:AddRightGroupbox("Shop", "shopping-bag")
ug_30:AddToggle("AutoBuyBestTrail", { Text = "Auto Buy Best Trail", Default = false })
ug_30:AddToggle("AutoBuyBestAura", { Text = "Auto Buy Best Aura", Default = false })
ug_30:AddToggle("AutoBuySpeedUpgrade", { Text = "Auto Buy Speed Upgrade", Default = false })
ug_30:AddToggle("AutoBuyItemShop", { Text = "Auto Buy Item Shop", Default = false })
ug_30:AddDropdown("ItemShopItems", { Text = "Item Shop", Values = ug_32, Default = {}, Multi = true })
ug_30:AddToggle("AutoUseItems", { Text = "Auto Use Items", Default = false })
ug_4 = ug_3.Player:AddLeftGroupbox("Movement", "footprints")
ug_4:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
ug_4:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
ug_4:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
ug_4:AddToggle("NoClip", { Text = "NoClip", Default = false })
ug_4:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
ug_15 = ug_3.Player:AddRightGroupbox("Fly", "feather")
ug_15:AddToggle("Fly", { Text = "Fly", Default = false })
ug_15:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ug_27 = ug_3.Settings:AddLeftGroupbox("Menu")
ug_27:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ug_27:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ug_27:AddButton({ Text = "Unload", Func = onUnload })
mH = tick()
mC = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local sC = v
        pcall(function()
            sC:Disable()
        end)
    end
end)
nT = fn658
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
task.spawn(antiAfkLoop)
mw = function(hi)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not hi)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hi
        end
    end)
    if not hi then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(LocalPlayer, "GameplayPaused", false)
        else
            LocalPlayer.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn880)
task.spawn(fns.antiGameplayPauseLoop)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn246)
Toggles.WalkSpeedEnabled:OnChanged(fn727)
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(worker4)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(ug_3.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/SpeedEvolve")
ug_6 = SaveManager:BuildConfigSection(ug_3.Settings)
m4 = fns.fn488
ms = fns.fn205
nR = fns.fn259
m_ = function(iL)
    local tP
    tP = nil
    local tQ = type(iL) ~= "table" or type(iL.idx) ~= "string" or type(iL.type) ~= "string" or SaveManager.Ignore[iL.idx]
    if tQ then
        return false
    end
    tP = m4(iL.type, iL.idx)
    if not tP then
        return false
    end
    local tQ_1 = pcall(function()
        if iL.type == "Input" then
            if type(iL.text) ~= "string" then
                return
            end
            tP:SetValue(iL.text)
        elseif iL.type == "ColorPicker" then
            tP:SetValueRGB(Color3.fromHex(iL.value), iL.transparency)
        elseif iL.type == "KeyPicker" then
            tP:SetValue({ iL.key, iL.mode, iL.modifiers })
            if iL.mode == "Toggle" and iL.toggled ~= nil then
                tP.Toggled = iL.toggled
                tP:Update()
            end
        else
            tP:SetValue(iL.value)
        end
    end)
    return tQ_1
end
ug_6:AddDivider()
ug_6:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
ug_6:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
ug_6:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn643)
