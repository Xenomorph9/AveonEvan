local fns = {}
local DonationsGroup, J0_71, J0_94
fns.J0_2 = nil
J0_94 = nil
fns.J0_4 = nil
fns.Toggles = nil
fns.HackEvent = nil
fns.J0_10 = nil
fns.J0_11 = nil
fns.J0_16 = nil
fns.J0_17 = nil
fns.J0_22 = nil
fns.J0_23 = nil
fns.J0_25 = nil
fns.J0_28 = nil
fns.J0_29 = nil
fns.J0_31 = nil
fns.J0_36 = nil
fns.connection = nil
fns.J0_42 = nil
local wJ
local vJ
local wq
local w7
local Remotes
local wP
local xw
local ww
local VirtualUser
local vw
local wV
local vC
local wj
local vj
local wI
local xp
local wp
local w6
local Label
local v6
local LocalPlayer
local vO
local wv
local SetSkillAuto
local SellTokens
local wc
local Workspace
local vU
local wB
local xi
local vB
local wi
local Players
local wH
local vH
local xu
local vN
local vu
local wb
local xb
local wT
local CurrentCamera2
local SaveManager
local xh
local wh
local wZ
local wG
local xn
local vG
local w4
local v4
local wM
local wt
local GetIntel
local vt
local wa
local wS
local vS
local wz
local xg
local wY
local vY
local vF
local wm
local HackDefend
local w3
local v3
local Library
local vL
local xs
local ws
local HttpService
local vs
local vm
local xy
local v9
local connection2
local vy
local wf
local wX
local vX
local wE
local UserInputService
local vE
local Options
local w2
local v2
function fns.fn5()
    local Cw = fns.J0_42()
    local Cx = Cw == ""
    local Cy = typeof(Cw) ~= "string" or Cx
    if Cy then
        return false
    end
    local Cx_1 = xn()
    if not Cx_1 then
        return false
    end
    local Cy_1 = math.floor(wS("PlaceRotation", 0) + 0.5)
    for i, v in ipairs(wP(Cx_1)) do
        if ws(Cw) <= 0 then
            Cw = fns.J0_42()
            if not Cw then
                break
            elseif wV(Cw, v.tx, v.tz, Cy_1) then
                task.wait(0.05)
                return true
            end
        elseif wV(Cw, v.tx, v.tz, Cy_1) then
            task.wait(0.05)
            return true
        end
    end
    return false
end
function fns.fn38(cN)
    local z7 = {}
    local Expansion = cN:FindFirstChild("Expansion")
    if not Expansion then
        return z7
    end
    for i, child in ipairs(Expansion:GetChildren()) do
        local attr2 = child:GetAttribute("MinTileX")
        local attr = child:GetAttribute("MinTileZ")
        local Aa = child:GetAttribute("PackTiles") or 2
        local Aa_1 = typeof(attr2) == "number" and typeof(attr) == "number"
        if Aa_1 then
            local Aa_2 = attr2 + Aa - 1
            local Al = attr2
            while Al <= Aa_2 do
                local Am = Al
                local z8_2 = attr + Aa - 1
                local Aq = attr
                while Aq <= z8_2 do
                    local Ar = Aq
                    z7[Am .. "," .. Ar] = true
                    Aq += 1
                end
                Al += 1
            end
        end
    end
    return z7
end
function fns.onExpandOnce()
    wI()
end
function fns.fn62(co)
    local Inventory = LocalPlayer:FindFirstChild("Inventory")
    local zL = Inventory and Inventory:FindFirstChild(co)
    local zK_1 = zL
    if zL then
        zL = tonumber(zK_1.Value)
    end
    local zK_2 = zL
    local zP = if zK_2 then 1 else 0
    local zN = 774 * zP + 379 * (1 - zP)
    local zO = 1425 * zP + 989 * (1 - zP)
    if not ((zN * 3155 + zO * 255 + zN * zO) % 16777213 == 3908295) then
        zK_2 = 0
    end
    return zK_2
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if fns.Toggles.NoClip and fns.Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local HB_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if HB_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn91(bs)
    if Library.Unloaded then
        return false
    end
    local y1 = fns.Toggles[bs]
    return y1 ~= nil and y1.Value == true
end
function fns.fn117()
    local Map = Workspace:FindFirstChild("Map")
    local Bf = Map and Map:FindFirstChild("TokenExchange")
    local Be_1 = Bf
    if Bf then
        Bf = Be_1:FindFirstChild("SellPad")
    end
    return Bf
end
function fns.fn131(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
function fns.fn141()
    local Ix = {}
    for i, v in ipairs({ fns.Toggles, Options }) do
        for k, v in pairs(v) do
            local Iy = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if Iy then
                local Iy_1 = vU(k, v)
                if Iy_1 then
                    Ix[#Ix + 1] = Iy_1
                end
            end
        end
    end
    table.sort(Ix, function(pc, pd)
        if pc.type ~= pd.type then
            return pc.type < pd.type
        end
        return pc.idx < pd.idx
    end)
    return { objects = Ix }
end
function fns.fn159()
    local EF_1
    local EE_1
    EE_1, EF_1 = pcall(function()
        return GetIntel:InvokeServer()
    end)
    local EG = not EE_1 or typeof(EF_1) ~= "table"
    if EG then
        return nil
    end
    table.clear(wi)
    local EE_2 = {}
    for i, v in ipairs(EF_1) do
        local EG_1 = typeof(v) == "table" and typeof(v.name) == "string" and v.name ~= ""
        if EG_1 then
            wi[v.name] = v
            EE_2[#EE_2 + 1] = v.name
        end
    end
    table.sort(EE_2)
    return EF_1, EE_2
end
function fns.fn163()
    local EP_1
    local EO_1
    EO_1, EP_1 = vF()
    if not EP_1 or not Options.HackTargets or not Options.HackTargets.SetValues then
        return
    end
    Options.HackTargets:SetValues(EP_1)
end
function fns.fn188()
    if not fns.Toggles.Fly.Value then
        local HY = vj()
        if HY then
            HY.PlatformStand = false
        end
    end
end
function fns.fn204()
    local B9 = wp("PlaceItem")
    local Ca = {}
    for k in pairs(B9) do
        if ws(k) > 0 then
            Ca[#Ca + 1] = k
        end
    end
    if #Ca == 0 then
        return nil
    elseif wS("PlacePriority", "Random") == "Highest Rarity" then
        table.sort(Ca, function(e_, e0)
            return xs(e_) > xs(e0)
        end)
        return Ca[1]
    else
        return Ca[math.random(1, #Ca)]
    end
end
function fns.fn210(jE, jF)
    local FE = tonumber(jF) or 45
    wH = math.max(wH, tick() + FE)
    local FE_1 = tonumber(jE)
    if FE_1 and FE_1 > 0 then
        fns.J0_28 = FE_1
    end
end
function fns.worker6()
    while not Library.Unloaded do
        if xp("AutoBuyHardware") then
            for k in pairs(wp("HardwareItems")) do
                wT("Hardware", k)
                task.wait(0.05)
            end
        end
        if xp("AutoBuyData") then
            for k in pairs(wp("DataItems")) do
                wT("DataMarket", k)
                task.wait(0.05)
            end
        end
        if xp("AutoBuyDatasets") then
            for k in pairs(wp("DatasetItems")) do
                wT("DataMarket", k)
                task.wait(0.05)
            end
        end
        if xp("AutoBuyGear") then
            for k in pairs(wp("GearItems")) do
                vH(k)
                task.wait(0.05)
            end
        end
        local JB = if xp("AutoBlackMarket") then 1 else 0
        if JB == 1 then
            wq()
            fns.J0_16()
        end
        task.wait(0.55)
    end
end
function fns.fn233()
    vt(fns.Toggles.AntiGameplayPause.Value)
end
function fns.fn257()
    local Ba = xn()
    if not Ba then
        return false
    end
    local CollectPad = Ba:FindFirstChild("CollectPad")
    local Ba_1 = CollectPad
    if Ba_1 then
        local Bc = CollectPad:FindFirstChild("Pad") or CollectPad:FindFirstChildWhichIsA("BasePart", true)
        Ba_1 = Bc
    end
    local Bb_1 = Ba_1
    if not Bb_1 then
        return false
    end
    return xb(Bb_1.Position)
end
function fns.onCopyBitcoinAddress()
    wh(fns.J0_10, "Copied Bitcoin address")
end
function fns.onCopyEthereumAddress()
    wh(v2, "Copied Ethereum address")
end
function fns.worker8()
    while not Library.Unloaded do
        task.wait(2)
        if xp("AntiAfk") then
            local JP = tick() - wb
            local JQ = tick() - v4
            if JP >= 300 and JQ >= 60 then
                pcall(fns.J0_22)
            else
                if JP < 300 and JQ >= 300 then
                    pcall(fns.J0_22)
                end
            end
        end
    end
end
function fns.fn297()
    local Hr_1
    local Hq_1
    if identifyexecutor then
        Hr_1, Hq_1 = identifyexecutor()
        local Hs = Hr_1 ~= ""
        local Ht = type(Hr_1) == "string" and Hs
        if Ht then
            local Hs_1 = type(Hq_1) == "string" and Hq_1 ~= "" and Hr_1 .. " " .. Hq_1
            v6 = Hs_1 or Hr_1
        end
    end
end
function fns.fn324()
    local Bk = vN()
    local Bl = not Bk
    local Bp = if Bl then 1 else 0
    local Bn = 1844 * Bp + 3814 * (1 - Bp)
    local Bo = 1694 * Bp + 786 * (1 - Bp)
    if not ((Bn * 3415 + Bo * 1787 + Bn * Bo) % 16777213 == 12448174) then
        Bl = not Bk:IsA("BasePart")
    end
    if Bl then
        return false
    end
    local Bs = if not xb(Bk.Position) then 1 else 0
    if Bs == 1 then
        return false
    end
    task.wait(0.2)
    pcall(function()
        SellTokens:FireServer()
    end)
    return true
end
function fns.onPickUpAll()
    Library:Notify("Picked up " .. tostring(fns.J0_36()) .. " items")
end
function fns.fn331()
    local zo = tonumber(LocalPlayer:GetAttribute("Tokens")) or 0
    return zo
end
function fns.fn332()
    local Character = LocalPlayer.Character
    local Ed = Character and Character:FindFirstChild("Tablet")
    if Ed then
        return true
    end
    local Tablet = LocalPlayer.Backpack:FindFirstChild("Tablet")
    local Ee = vj()
    if not Tablet or not Ee then
        return false
    end
    Ee:EquipTool(Tablet)
    task.wait(0.15)
    local Ed_2 = Character and Character:FindFirstChild("Tablet") ~= nil
    local Ec_1 = Ed_2
    if not Ec_1 then
        local Ed_3 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Tablet") ~= nil
        Ec_1 = Ed_3
    end
    return Ec_1
end
function fns.fn333()
    local Character2 = LocalPlayer.Character
    local Gl = Character2 and Character2:FindFirstChild("Wrench")
    if Gl then
        return Character2:FindFirstChild("Wrench")
    end
    local Wrench = LocalPlayer.Backpack:FindFirstChild("Wrench")
    local Gm = vj()
    if not Wrench or not Gm then
        return nil
    end
    Gm:EquipTool(Wrench)
    task.wait(0.12)
    local Character = LocalPlayer.Character
    local Gl_2 = Character and Character:FindFirstChild("Wrench")
    return Gl_2
end
function fns.fn390()
    if not fns.Toggles.WalkSpeedEnabled.Value then
        local H2 = vj()
        if H2 then
            H2.WalkSpeed = 16
        end
    end
end
function fns.fn400(ld)
    if not ld then
        return false
    end
    local Character = ld.Character
    local Gu = Character and Character:FindFirstChild("HumanoidRootPart")
    local Gu_1 = vG()
    if not Gu or not Gu_1 then
        return false
    end
    local Gv_1 = Gu.Position - Gu.CFrame.LookVector * 4 + Vector3.new(0, 1.5, 0)
    Gu_1.CFrame = CFrame.lookAt(Gv_1, Gu.Position)
    return true
end
function fns.fn403()
    if tick() < wH then
        return true
    end
    local HackUI = LocalPlayer.PlayerGui:FindFirstChild("HackUI")
    if not HackUI then
        return false
    end
    local FirewallDefense = HackUI:FindFirstChild("FirewallDefense")
    if FirewallDefense and FirewallDefense.Visible then
        return true
    end
    local BannerDock = HackUI:FindFirstChild("BannerDock", true)
    if BannerDock then
        for i, descendant in ipairs(BannerDock:GetDescendants()) do
            if descendant:IsA("TextLabel") then
                local upper = string.upper
                local FL_2 = descendant.Text or ""
                local FM_1 = upper(FL_2)
                local FK_2 = string.find(FM_1, "HACKING YOU", 1, true) or string.find(FM_1, "FIREWALL", 1, true)
                if FK_2 then
                    return true
                end
            end
        end
    end
    return false
end
function fns.fn431(T, U)
    if setclipboard then
        setclipboard(T)
    elseif toclipboard then
        toclipboard(T)
    end
    Library:Notify(U)
end
function fns.onCopyPayPalLink()
    wh(fns.J0_4, "Copied PayPal link")
end
function fns.fn448()
    local zB = tonumber(LocalPlayer:GetAttribute("Hacks")) or 0
    return zB
end
function fns.fn449(lJ)
    if typeof(lJ) == "table" then
        local userId = lJ.userId
        local GV = lJ.secs or lJ.phaseSeconds
        wm(userId, GV)
    else
        wm(nil, 45)
    end
    local GU_2 = xp("AutoDefend") or xp("AutoFirewallTap")
    if GU_2 then
        wB()
        vL()
        vs()
    end
    if xp("AutoDefend") then
        vO()
    end
end
function fns.worker3()
    while not Library.Unloaded do
        local Ji = xp("AutoSell") and wJ() > 0 and fns.J0_31() >= wS("MinTokenPrice", 12)
        if Ji then
            pcall(xu)
        end
        task.wait(0.5)
    end
end
function fns.onCopyVenmoLink()
    wh(vE, "Copied Venmo link")
end
function fns.worker()
    local Hz_1
    while not Library.Unloaded do
        task.wait(1)
        local Hy = math.floor(os.clock() - w7)
        if Hy < 60 then
            Hz_1 = Hy .. "s"
        elseif Hy < 3600 then
            Hz_1 = string.format("%dm %ds", Hy // 60, Hy % 60)
        else
            Hz_1 = string.format("%dh %dm", Hy // 3600, Hy % 3600 // 60)
        end
        Label:SetText(vm("Session time", Hz_1, w2))
    end
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if fns.Toggles.InfJump and fns.Toggles.InfJump.Value then
        local HM_1 = vj()
        if HM_1 then
            HM_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn538()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    v4 = tick()
end
function fns.onRscripts()
    wh(fns.J0_17, "Copied Rscripts profile to clipboard")
end
function fns.fn549()
    local OpenBlackMarket = Remotes:FindFirstChild("OpenBlackMarket")
    local Hk = OpenBlackMarket and OpenBlackMarket:IsA("RemoteEvent")
    if Hk then
        OpenBlackMarket.OnClientEvent:Connect(function(mw)
            if typeof(mw) == "table" then
                w4 = mw
            end
        end)
    end
end
function fns.fn554()
    local HackUI = LocalPlayer.PlayerGui:FindFirstChild("HackUI")
    local F2 = HackUI and HackUI:FindFirstChild("FirewallDefense")
    if not F2 or not F2.Visible then
        return false
    end
    local F2_2 = false
    for i, descendant in ipairs(F2:GetDescendants()) do
        local F1_2 = descendant:IsA("GuiButton") and descendant.Visible and descendant.AbsoluteSize.X > 0
        if F1_2 then
            wX(descendant)
            F2_2 = true
        end
    end
    return F2_2
end
function fns.fn589(cF)
    local zV = vG()
    local zW = not zV
    local z_ = if zW then 1 else 0
    local zY = 1668 * z_ + 1225 * (1 - z_)
    local zZ = 2806 * z_ + 2532 * (1 - z_)
    if not ((zY * 767 + zZ * 2427 + zY * zZ) % 16777213 == 12769926) then
        zW = typeof(cF) ~= "Vector3"
    end
    if zW then
        return false
    end
    zV.CFrame = CFrame.new(cF + Vector3.new(0, 3, 0))
    return true
end
function fns.fn594(cC)
    return wa[cC] or 0
end
function fns.onInputBegan()
    wb = tick()
end
function fns.fn616(hq)
    local D7 = tick()
    if D7 - wc < 8 then
        return
    end
    wc = D7
    Library:Notify(hq, 6)
end
function fns.onInputChanged(oJ)
    local UserInputType = oJ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        wb = tick()
    end
end
function fns.fn646()
    return tonumber(LocalPlayer:GetAttribute("PlotId"))
end
function fns.fn654(cv)
    local ShopStock = LocalPlayer:FindFirstChild("ShopStock")
    local zR = ShopStock and ShopStock:FindFirstChild(cv)
    local zQ_1 = zR
    if zR then
        zR = tonumber(zQ_1.Value)
    end
    return zR or 0
end
function fns.fn696()
    local C9 = xn()
    if not C9 then
        return false
    end
    local Expansion = C9:FindFirstChild("Expansion")
    if not Expansion then
        return false
    end
    local C9_1 = {}
    for i, child in ipairs(Expansion:GetChildren()) do
        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
        if ProximityPrompt then
            local Db = ProximityPrompt.Parent
            if Db:IsA("Attachment") then
                Db = Db.Parent
            end
            local Dc = Db and Db:IsA("BasePart") and Db.Position
            local Dd = Dc
            local Dc_1 = not Dd
            if Dc_1 ~= false then
                Dc_1 = Db
            end
            if Dc_1 then
                Dc_1 = Db:IsA("Model")
            end
            if Dc_1 then
                Dd = Db:GetPivot().Position
            end
            if Dd then
                C9_1[#C9_1 + 1] = { prompt = ProximityPrompt, position = Dd }
            end
        end
    end
    table.sort(C9_1, function(f8, f9)
        local C7 = vG()
        if not C7 then
            return false
        end
        return (f8.position - C7.Position).Magnitude < (f9.position - C7.Position).Magnitude
    end)
    for i, v in ipairs(C9_1) do
        xb(v.position)
        task.wait(0.15)
        wM(v.prompt)
        task.wait(0.2)
        return true
    end
    return false
end
function fns.fn711()
    fns.HackEvent.OnClientEvent:Connect(function(ma)
        local G9 = Library.Unloaded or typeof(ma) ~= "table"
        if G9 then
            return
        end
        local G9_1 = ma.kind or ""
        local Ha = tostring(G9_1)
        local G9_2 = ma.role or ""
        local Hb = tostring(G9_2)
        local G9_3 = Hb == "defender" or Ha == "defend"
        local Hh = if G9_3 then 1 else 0
        local Hf = 2904 * Hh + 3907 * (1 - Hh)
        local Hg = 569 * Hh + 1566 * (1 - Hh)
        if not ((Hf * 1217 + Hg * 1188 + Hf * Hg) % 16777213 == 5862516) then
            G9_3 = Ha == "siphonVictim"
        end
        if not G9_3 then
            G9_3 = Ha == "phase" and Hb ~= "attacker"
        end
        if not G9_3 then
            G9_3 = string.find(Ha, "defend", 1, true) ~= nil
        end
        if G9_3 then
            local Hc_2 = xp("AutoDefend") or xp("AutoFirewallTap")
            G9_3 = Hc_2
        end
        if G9_3 then
            vX(ma)
        end
        local G9_4 = (xp("AutoHackPlayers"))
        if G9_4 then
            G9_4 = Hb == "attacker" or ma.walkUp == true or Ha == "denied" or Ha == "promptSuper"
        end
        if G9_4 then
            xh(ma)
        end
    end)
end
function fns.onCollectOnce()
    wE()
end
function fns.fn734(hL)
    local Ei = tonumber(hL)
    if not Ei then
        return nil
    end
    for i, player in ipairs(Players:GetPlayers()) do
        if player.UserId == Ei then
            local Ej = tonumber(player:GetAttribute("PlotId"))
            if not Ej then
                return nil
            end
            local Map = Workspace:FindFirstChild("Map")
            local El = Map and Map:FindFirstChild("Generated")
            local Ek_1 = El
            if El then
                El = Ek_1:FindFirstChild("Plots")
            end
            local Ek_2 = El
            if El then
                El = Ek_2:FindFirstChild("Plot" .. tostring(Ej))
            end
            return El
        end
    end
    return nil
end
function fns.fn745()
    local Character = LocalPlayer.Character
    local zj = Character and Character:FindFirstChildOfClass("Humanoid")
    return zj
end
function fns.fn770()
    local BZ = xn()
    if not BZ then
        return 0
    end
    local B_ = 0
    local Units = BZ:FindFirstChild("Units")
    if not Units then
        return 0
    end
    for i, child in ipairs(Units:GetChildren()) do
        local attr2 = child:GetAttribute("TileX")
        local attr = child:GetAttribute("TileZ")
        local B1 = typeof(attr2) == "number" and typeof(attr) == "number"
        if B1 then
            if vB(attr2, attr) then
                B_ += 1
                task.wait(0.05)
            end
        end
    end
    return B_
end
function fns.fn808(hZ)
    local Ew = vw(hZ)
    if not Ew then
        return false
    end
    local CollectPad = Ew:FindFirstChild("CollectPad")
    local Ey = CollectPad
    if Ey then
        local Ez = CollectPad:FindFirstChild("Pad") or CollectPad:FindFirstChildWhichIsA("BasePart", true)
        Ey = Ez
    end
    local Ex_1 = Ey or Ew:FindFirstChildWhichIsA("BasePart", true)
    if not Ex_1 then
        return false
    end
    return xb(Ex_1.Position)
end
function fns.fn814()
    local Cg = wp("PlaceItem")
    local Ch = {}
    if next(Cg) ~= nil then
        for k in pairs(Cg) do
            if ws(k) > 0 then
                Ch[#Ch + 1] = k
            end
        end
    else
        for i, v in ipairs(wf) do
            if ws(v) > 0 then
                Ch[#Ch + 1] = v
            end
        end
    end
    table.sort(Ch, function(fc, fd)
        return xs(fc) > xs(fd)
    end)
    return Ch
end
function fns.worker5()
    while not Library.Unloaded do
        if xp("AutoPlace") then
            pcall(v9)
        end
        if xp("AutoReplace") then
            pcall(xi)
        end
        if xp("AutoExpand") then
            pcall(wI)
        end
        task.wait(0.4)
    end
end
function fns.fn844()
    local zs = tonumber(Workspace:GetAttribute("TokenPrice")) or tonumber(wj.Tokens.basePrice)
    return zs or 10
end
function fns.onExportConfigToClipboard()
    local IY_1
    local IX_1
    IX_1, IY_1 = pcall(HttpService.JSONEncode, HttpService, vu())
    if not IX_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local IX_2 = setclipboard or toclipboard
    local IX_3 = type(IX_2) ~= "function" or not pcall(IX_2, IY_1)
    if IX_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.onCopyLitecoinAddress()
    wh(fns.J0_23, "Copied Litecoin address")
end
function fns.fn877(mN)
    local DiscordGroup = mN:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = fns.J0_25 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = fns.J0_25 })
end
function fns.fn881()
    local GM = xn()
    if not GM then
        return false
    end
    for i, descendant in ipairs(GM:GetDescendants()) do
        local GM_1 = descendant:IsA("ProximityPrompt") and descendant.Name == "DefendPrompt" and descendant.Enabled
        if GM_1 then
            wM(descendant)
            return true
        end
    end
    return false
end
function fns.fn882(oZ, o_)
    local Type = o_.Type
    if Type == "Toggle" then
        return { idx = oZ, type = "Toggle", value = o_.Value == true }
    elseif Type == "Slider" then
        return { idx = oZ, type = "Slider", value = tostring(o_.Value) }
    elseif Type == "Dropdown" then
        return { idx = oZ, type = "Dropdown", multi = o_.Multi == true, value = o_.Value }
    elseif Type == "Input" then
        local Io = o_.Value or ""
        return { idx = oZ, type = "Input", text = tostring(Io) }
    elseif Type == "ColorPicker" then
        return { idx = oZ, type = "ColorPicker", value = o_.Value:ToHex(), transparency = o_.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = oZ,
            type = "KeyPicker",
            mode = o_.Mode,
            key = o_.Value,
            modifiers = o_.Modifiers,
            toggled = o_.Toggled
        }
    else
        return nil
    end
end
function fns.fn893()
    if wY then
        vs()
        return
    end
    wY = true
    task.spawn(function()
        w3()
        v3(true)
        pcall(function()
            HackDefend:FireServer("start")
        end)
        vs()
        local Gf = tick() + 12
        while true do
            local Gg = not Library.Unloaded and tick() < Gf
            if Gg then
                local Gh = xp("AutoDefend") or xp("AutoFirewallTap")
                Gg = Gh
            end
            if Gg then
                local Gg_1 = not fns.J0_29() and tick() > wH
                if Gg_1 then
                    break
                end
                local Gg_2 = tick()
                if Gg_2 - wv >= vy then
                    wv = Gg_2
                    wt()
                    pcall(function()
                        HackDefend:FireServer("hit")
                    end)
                end
                task.wait(0.05)
                continue
            end
            break
        end
        pcall(function()
            HackDefend:FireServer("done")
        end)
        wY = false
    end)
end
function fns.fn894()
    local zz = tonumber(LocalPlayer:GetAttribute("AILevel")) or 0
    return zz
end
function fns.fn902()
    vt(false)
    if fns.connection then
        fns.connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    local JW = vj()
    if JW then
        JW.PlatformStand = false
        JW.WalkSpeed = 16
    end
    print("Unloaded!")
end
function fns.fn919()
    wh(wG, "Copied Discord invite to clipboard")
end
function fns.fn920(is)
    local ER = wp("HackTargets")
    local ES = next(ER)
    local ET = {}
    local EU = ES ~= nil
    for i, v in ipairs(is) do
        local ES_1 = typeof(v) == "table" and typeof(v.key) == "string"
        if ES_1 then
            local ES_2 = not EU
            if not ES_2 then
                local EV = typeof(v.name) == "string" and ER[v.name] == true
                ES_2 = EV
            end
            if ES_2 then
                ET[#ET + 1] = v
            end
        end
    end
    return ET
end
function fns.fn952()
    local zx = tonumber(LocalPlayer:GetAttribute("Version")) or 1
    return zx
end
function fns.fn974()
    local zv = tonumber(LocalPlayer:GetAttribute("SkillPoints")) or 0
    return zv
end
function fns.fn988()
    local CJ = xg()
    if #CJ == 0 then
        return false
    end
    local CK = xn()
    if not CK then
        return false
    end
    local Units = CK:FindFirstChild("Units")
    if not Units then
        return false
    end
    local CK_1 = {}
    for i, child in ipairs(Units:GetChildren()) do
        local CL_1 = child:GetAttribute("ItemName") or child.Name
        local attr2 = child:GetAttribute("TileX")
        local attr = child:GetAttribute("TileZ")
        local CO_1 = typeof(attr2) == "number" and typeof(attr) == "number"
        if CO_1 then
            CK_1[#CK_1 + 1] = { name = CL_1, cost = xs(CL_1), tx = attr2, tz = attr }
        end
    end
    table.sort(CK_1, function(fG, fH)
        return fG.cost < fH.cost
    end)
    local CL_3 = math.floor(wS("PlaceRotation", 0) + 0.5)
    local CM_2 = wS("PlacePriority", "Random") == "Random"
    for i, v in ipairs(CK_1) do
        local CK_2 = {}
        for i, v2 in ipairs(CJ) do
            local CN_2 = v2 ~= v.name and xs(v2) > v.cost and ws(v2) > 0
            if CN_2 then
                CK_2[#CK_2 + 1] = v2
            end
        end
        if #CK_2 > 0 then
            local CN_3 = CM_2 and CK_2[math.random(1, #CK_2)]
            local CO_2 = CN_3 or CK_2[1]
            if vB(v.tx, v.tz) then
                task.wait(0.05)
                if wV(CO_2, v.tx, v.tz, CL_3) then
                    task.wait(0.05)
                    return true
                end
            end
        end
    end
    return false
end
function fns.fn997()
    local zD = xw()
    if not zD then
        return nil
    end
    local Map = Workspace:FindFirstChild("Map")
    local zF = Map and Map:FindFirstChild("Generated")
    local zE_1 = zF
    if zF then
        zF = zE_1:FindFirstChild("Plots")
    end
    local zE_2 = zF
    if zF then
        zF = zE_2:FindFirstChild("Plot" .. tostring(zD))
    end
    return zF
end
function fns.fn1013()
    if fns.J0_11 then
        return
    end
    local Gd = xp("AutoFirewallTap") or xp("AutoDefend")
    if not Gd then
        return
    end
    if not fns.J0_29() then
        return
    end
    fns.J0_11 = true
    task.spawn(function()
        while true do
            local Ga = not Library.Unloaded
            if Ga then
                local Gb = xp("AutoFirewallTap") or xp("AutoDefend")
                Ga = Gb
            end
            if Ga then
                Ga = fns.J0_29()
            end
            if Ga then
                local Ga_1 = tick()
                if Ga_1 - wv >= vy then
                    wv = Ga_1
                    wt()
                    pcall(function()
                        HackDefend:FireServer("hit")
                    end)
                end
                task.wait(0.05)
                continue
            end
            break
        end
        fns.J0_11 = false
    end)
end
function fns.fn1053()
    pcall(function()
        SetSkillAuto:FireServer(fns.Toggles.AutoSkillAuto.Value == true)
    end)
end
function fns.fn1072(aA)
    local yP = {}
    for k, v in pairs(aA) do
        local yQ = type(v) == "table" and type(v.name) == "string"
        if yQ then
            local yQ_1 = #yP + 1
            local yR = tonumber(k) or 0
            local name = v.name
            local yT = tonumber(v.cost) or tonumber(v.price)
            local yU = yT or 0
            yP[yQ_1] = { id = yR, name = name, cost = yU, key = v.key }
        end
    end
    table.sort(yP, function(aG, aH)
        return aG.id < aH.id
    end)
    return yP
end
function fns.onImportConfigFromClipboardTex()
    local I2_1
    local I0 = Options.SaveManager_ImportSource.Value
    local I0_1
    local I6 = if I0 then 1 else 0
    local I4 = 3092 * I6 + 1710 * (1 - I6)
    local I5 = 4029 * I6 + 443 * (1 - I6)
    if not ((I4 * 3927 + I5 * 3406 + I4 * I5) % 16777213 == 4768300) then
        I0 = ""
    end
    local I1 = tostring(I0):match("^%s*(.-)%s*$")
    if I1 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    I0_1, I2_1 = pcall(HttpService.JSONDecode, HttpService, I1)
    local I1_1 = not I0_1 or type(I2_1) ~= "table" or type(I2_1.objects) ~= "table"
    if I1_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local I0_2 = 0
    for i, v in ipairs(I2_1.objects) do
        if ww(v) then
            I0_2 += 1
        end
    end
    if I0_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local I2_2 = I0_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(I0_2, I2_2), 6)
end
function fns.fn1080(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, vC("-", "#5a6070"), vC(ae, af))
end
function fns.fn1096()
    local Character = LocalPlayer.Character
    local zg = Character and Character:FindFirstChild("HumanoidRootPart")
    return zg
end
function fns.fn1097(oR, oS)
    local Ih_1 = (oR == "Toggle" and fns.Toggles or Options)[oS]
    local Ig_2 = type(Ih_1) == "table" and Ih_1.Type == oR
    return Ig_2 and Ih_1 or nil
end
function fns.fn1106()
    local zq = tonumber(LocalPlayer:GetAttribute("PendingTokens")) or 0
    return zq
end
function fns.fn1117(bw, bx)
    local y4 = Options[bw]
    if y4 == nil then
        return bx
    end
    return y4.Value
end
function fns.worker7()
    while not Library.Unloaded do
        if xp("AutoHackPlayers") then
            pcall(xy)
        elseif Options.HackTargets then
            pcall(wZ)
        end
        if xp("AutoUsbHack") then
            pcall(fns.J0_2)
        end
        local JC = xp("AutoDefend") or xp("AutoFirewallTap")
        if JC then
            if wB() then
                wm(fns.J0_28, 45)
                vL()
            end
            if fns.J0_29() then
                vs()
                if xp("AutoDefend") then
                    vO()
                end
            end
        end
        task.wait(0.35)
    end
end
function fns.onUnload()
    Library:Unload()
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if fns.Toggles.AntiGameplayPause.Value then
            vt(true)
        end
    end
end
function fns.onCopyUSDTAddress()
    wh(vY, "Copied USDT address")
end
function fns.worker4()
    while not Library.Unloaded do
        if xp("AutoRebirth") then
            pcall(vJ)
        end
        if xp("AutoUpgradeAI") then
            pcall(w6)
        end
        task.wait(0.5)
    end
end
function fns.onCopyJoinScript_JobID()
    local m3 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, J0_94)
    wh(m3, "Copied join script to clipboard")
end
function fns.onRefreshHackPlayers()
    wZ()
    Library:Notify("Hack player list refreshed")
end
function fns.onRenderStepped(n7)
    if Library.Unloaded then
        return
    end
    if fns.Toggles.WalkSpeedEnabled and fns.Toggles.WalkSpeedEnabled.Value then
        local HR_1 = vj()
        if HR_1 then
            HR_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if fns.Toggles.Fly and fns.Toggles.Fly.Value then
        local HR_3 = vG()
        local HS = vj()
        if HR_3 and HS then
            HS.PlatformStand = true
            local HS_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                HS_1 += CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                HS_1 -= CurrentCamera2.CFrame.LookVector
            end
            local HX = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if HX == 1 then
                HS_1 -= CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                HS_1 += CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                HS_1 += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                HS_1 -= Vector3.new(0, 1, 0)
            end
            HR_3.AssemblyLinearVelocity = Vector3.zero
            if HS_1.Magnitude > 0 then
                HR_3.CFrame = HR_3.CFrame + HS_1.Unit * Options.FlySpeed.Value * n7
            end
        end
    end
end
function fns.fn1269()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local zm = leaderstats and leaderstats:FindFirstChild("Money")
    local zl_1 = zm
    if zm then
        zm = tonumber(zl_1.Value)
    end
    return zm or 0
end
function fns.onCopySolanaAddress()
    wh(vS, "Copied Solana address")
end
function fns.fn1303(cZ)
    local At = {}
    local Units = cZ:FindFirstChild("Units")
    if not Units then
        return At
    end
    for i, child in ipairs(Units:GetChildren()) do
        local attr2 = child:GetAttribute("TileX")
        local attr = child:GetAttribute("TileZ")
        local Aw = typeof(attr2) == "number" and typeof(attr) == "number"
        if Aw then
            At[attr2 .. "," .. attr] = child
        end
    end
    return At
end
function fns.worker2()
    while not Library.Unloaded do
        local Jg = xp("AutoCollect") and wz() > 0
        if Jg then
            pcall(wE)
        end
        task.wait(0.35)
    end
end
function fns.fn1349(bB)
    local y6 = wS(bB, {})
    if typeof(y6) ~= "table" then
        return {}
    end
    local y7 = {}
    for k, v in pairs(y6) do
        if v == true then
            y7[k] = true
        else
            local y6_1 = typeof(k) == "number" and typeof(v) == "string"
            if y6_1 then
                y7[v] = true
            end
        end
    end
    return y7
end
Players = nil
vj = nil
J0_94 = nil
vm = nil
Label = nil
vs = nil
vt = nil
vu = nil
SellTokens = nil
vw = nil
fns.J0_22 = nil
vy = nil
vB = nil
vC = nil
fns.J0_29 = nil
vE = nil
vF = nil
vG = nil
vH = nil
vJ = nil
fns.J0_4 = nil
vL = nil
vN = nil
vO = nil
vS = nil
CurrentCamera2 = nil
vU = nil
fns.J0_25 = nil
vX = nil
vY = nil
fns.J0_42 = nil
v2 = nil
v3 = nil
v4 = nil
local SpendSkillPoints, vn, vo, Rebirth, vr, BlackMarketBuy, vA, BuyGear, vM, BuyItem, vQ, vR, PickupItem, vZ, PlaceItem, v0
v6 = nil
Remotes = nil
fns.J0_10 = nil
v9 = nil
wa = nil
wb = nil
wc = nil
fns.J0_23 = nil
wf = nil
wh = nil
wi = nil
wj = nil
fns.J0_31 = nil
Options = nil
wm = nil
wp = nil
wq = nil
fns.Toggles = nil
ws = nil
wt = nil
wv = nil
ww = nil
fns.J0_17 = nil
wz = nil
SaveManager = nil
wB = nil
fns.J0_28 = nil
wE = nil
wG = nil
wH = nil
wI = nil
wJ = nil
fns.J0_2 = nil
Library = nil
wM = nil
LocalPlayer = nil
wP = nil
fns.J0_11 = nil
connection2 = nil
wS = nil
local v5, SkillMath, wg, wn, wo, wu, wy, wC, wF, wN
wT = nil
Workspace = nil
wV = nil
wX = nil
wY = nil
wZ = nil
fns.J0_36 = nil
w2 = nil
w3 = nil
w4 = nil
w6 = nil
w7 = nil
fns.HackEvent = nil
HttpService = nil
GetIntel = nil
xb = nil
VirtualUser = nil
xg = nil
xh = nil
xi = nil
fns.connection = nil
UserInputService = nil
HackDefend = nil
xn = nil
xp = nil
xs = nil
xu = nil
SetSkillAuto = nil
xw = nil
fns.J0_16 = nil
xy = nil
local MeleeHit, CoreGui, SetTabletHeld, GuiService, xc, xe, UsbHackStart, xj, HackAttempt, xr, xt
MeleeHit = nil
CoreGui = nil
SetTabletHeld = nil
GuiService = nil
xc = nil
xe = nil
UsbHackStart = nil
xj = nil
local xo
HackAttempt = nil
xr = nil
xt = nil
Players, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, wG, fns.J0_17, wj, SkillMath, Remotes, PlaceItem, PickupItem, BuyItem, BuyGear, BlackMarketBuy, SellTokens, Rebirth, SpendSkillPoints, SetSkillAuto, HackAttempt, HackDefend, UsbHackStart, GetIntel, fns.HackEvent, SetTabletHeld, MeleeHit, Library, SaveManager, fns.Toggles, Options, w2, fns.J0_23, fns.J0_10, v2, vY, vS, fns.J0_4, vE, wh, fns.J0_25, vC, vm = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local J0_14 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local J0_45 = "Build an AI"
wG = "https://discord.gg/ehKVq7pf7v"
fns.J0_17 = "https://rscripts.net/@Ouroboros"
local J0_63 = J0_14:WaitForChild("Shared")
wj = require(J0_63:WaitForChild("Config"))
require(J0_63:WaitForChild("Grid"))
SkillMath = require(J0_63:WaitForChild("SkillMath"))
Remotes = J0_14:WaitForChild("Remotes")
PlaceItem = Remotes:WaitForChild("PlaceItem")
PickupItem = Remotes:WaitForChild("PickupItem")
BuyItem = Remotes:WaitForChild("BuyItem")
BuyGear = Remotes:WaitForChild("BuyGear")
BlackMarketBuy = Remotes:WaitForChild("BlackMarketBuy")
SellTokens = Remotes:WaitForChild("SellTokens")
Rebirth = Remotes:WaitForChild("Rebirth")
SpendSkillPoints = Remotes:WaitForChild("SpendSkillPoints")
SetSkillAuto = Remotes:WaitForChild("SetSkillAuto")
HackAttempt = Remotes:WaitForChild("HackAttempt")
HackDefend = Remotes:WaitForChild("HackDefend")
UsbHackStart = Remotes:WaitForChild("UsbHackStart")
GetIntel = Remotes:WaitForChild("GetIntel")
fns.HackEvent = Remotes:WaitForChild("HackEvent")
SetTabletHeld = Remotes:WaitForChild("SetTabletHeld")
MeleeHit = Remotes:WaitForChild("MeleeHit")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
fns.Toggles = Library.Toggles
Options = Library.Options
wh = fns.fn431
fns.J0_25 = fns.fn919
vC = fns.fn131
vm = fns.fn1080
local J0_61 = "#7fd47f"
local J0_72 = "#6ec1ff"
w2 = "#e8a34d"
local J0_85 = "#8b93a3"
local J0_6 = "#345d9d"
local J0_26 = "#f7931a"
local J0_58 = "#627eea"
local J0_82 = "#26a17b"
local J0_95 = "#14f195"
local J0_20 = "#0070ba"
local J0_40 = "#008cff"
fns.J0_23 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
fns.J0_10 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
v2 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
vY = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
vS = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
fns.J0_4 = "https://paypal.me/TheTruckerGOD"
vE = "https://venmo.com/u/miserablemusic"
local J0_90 = fns.fn1072
local J0_78 = J0_90(wj.Hardware)
local J0_67 = J0_90(wj.DataSources)
local J0_54 = J0_90(wj.Datasets)
local J0_74 = wj.Gear.items or wj.Gear
wf, wa, v5 = nil, nil, nil
local J0_50 = J0_90(J0_74)
local J0_12 = {}
local J0_32 = {}
J0_14 = {}
local J0_34 = {}
wf = {}
wa = {}
v5 = {}
for i, v in ipairs(J0_78) do
    J0_12[#J0_12 + 1] = v.name
    wf[#wf + 1] = v.name
    wa[v.name] = v.cost
end
for i, v in ipairs(J0_67) do
    J0_32[#J0_32 + 1] = v.name
    wf[#wf + 1] = v.name
    wa[v.name] = v.cost
end
for i, v in ipairs(J0_54) do
    J0_14[#J0_14 + 1] = v.name
    wa[v.name] = v.cost
end
for i, v in ipairs(J0_50) do
    if v.key then
        J0_34[#J0_34 + 1] = v.name
        v5[v.name] = v.key
        wa[v.name] = v.cost
    end
end
J0_63, xo = nil, nil
J0_74 = 4
repeat
    J0_50 = {
        "vhejarglit",
        "xapsapvlnwt",
        "gtokvjusn",
        "ampntahx",
        "ojcyv",
        "xwsxmzytxrge",
        "ujmngjr",
        "bhzj",
        "isw",
        "cyyucxgx",
        "ltypyxwkw"
    }
    if J0_50[(J0_74 * 33 + 41) % 11 + 1] < J0_50[(J0_74 * 33 + 41) % 11 + 1] then
        xo = { "Reinforced Crate", "Hacker Crate", "Wooden Crate" }
        J0_63 = {
            ["Hacker Crate"] = "hackerCrate",
            ["Reinforced Crate"] = "ironCrate",
            ["Wooden Crate"] = "woodCrate"
        }
    else
        J0_63 = { "Wooden Crate", "Reinforced Crate", "Hacker Crate" }
        xo = {
            ["Wooden Crate"] = "woodCrate",
            ["Reinforced Crate"] = "ironCrate",
            ["Hacker Crate"] = "hackerCrate"
        }
    end
    J0_74 = (J0_74 + 3) % 8
until (J0_74 * 5 + 4) % 8 == 7
J0_74 = { "Money", "Hacking", "Security" }
J0_50 = wj.Skills.tracks
local J0_79 = if J0_50 then 1 else 0
local J0_15 = 3334 * J0_79 + 1757 * (1 - J0_79)
local J0_91 = 2908 * J0_79 + 816 * (1 - J0_79)
if not ((J0_15 * 1562 + J0_91 * 1146 + J0_15 * J0_91) % 16777213 == 1458335) then
    J0_50 = J0_74
end
xj = J0_50
J0_74 = tonumber(wj.Tokens.priceMin) or 5
J0_50 = J0_74
J0_74 = (tonumber(wj.Tokens.priceMax))
J0_79 = if J0_74 then 1 else 0
J0_15 = 3651 * J0_79 + 577 * (1 - J0_79)
J0_91 = 1563 * J0_79 + 3801 * (1 - J0_79)
if not ((J0_15 * 1582 + J0_91 * 2327 + J0_15 * J0_91) % 16777213 == 15119496) then
    J0_74 = 15
end
w4, wY, fns.J0_11, wN, wH, fns.J0_28, wv, wn, wi, wg, wc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
J0_78 = J0_74
w4 = nil
wY = false
if (fns.J0_28 or wY or (wY or wY)) and (not wn and not wY and (not wY or wn)) and ((fns.J0_28 or wY) and (not fns.J0_28 or wY) or fns.J0_28 and not wn and (not wn or wY)) and ((fns.J0_28 or not wY or wY and not wY or (wY or fns.J0_28 or not wY and not wY)) and (wY or not fns.J0_28 or not wn and not wY or (not fns.J0_28 or not wn) and (not fns.J0_28 and fns.J0_28))) or not ((fns.J0_28 or wY or (wY or wY)) and (not wn and not wY and (not wY or wn)) and ((fns.J0_28 or wY) and (not fns.J0_28 or wY) or fns.J0_28 and not wn and (not wn or wY)) and ((fns.J0_28 or not wY or wY and not wY or (wY or fns.J0_28 or not wY and not wY)) and (wY or not fns.J0_28 or not wn and not wY or (not fns.J0_28 or not wn) and (not fns.J0_28 and fns.J0_28)))) then
    fns.J0_11 = false
else
    wn = false
end
wN = false
wH = 0
fns.J0_28 = nil
wv = 0
wn = 0
wi = {}
wg = {}
wc = 0
J0_74 = wj.Hacking and wj.Hacking.tabletMinVersion
J0_90 = (tonumber(J0_74))
J0_79 = if J0_90 then 1 else 0
J0_15 = 2974 * J0_79 + 869 * (1 - J0_79)
J0_91 = 3663 * J0_79 + 1372 * (1 - J0_79)
if not ((J0_15 * 37 + J0_91 * 200 + J0_15 * J0_91) % 16777213 == 11736400) then
    J0_90 = 5
end
vZ = J0_90
J0_74 = wj.Hacking and wj.Hacking.remoteCooldown
J0_90 = tonumber(J0_74) or 60
vM = J0_90
J0_74 = wj.Hacking and wj.Hacking.defense
if J0_74 then
    J0_90 = 2
    repeat
        if (not J0_90 and not J0_90 or J0_90 and not J0_90) and (not J0_90 and not J0_90 or (J0_90 or not J0_90)) and ((not J0_90 and not J0_90 or (not J0_90 or J0_90)) and ((J0_90 or J0_90) and (J0_90 or J0_90))) or (J0_90 or not J0_90 or (not J0_90 or J0_90)) and (J0_90 and J0_90 or not J0_90 and not J0_90) and ((not J0_90 and J0_90 or (not J0_90 or not J0_90)) and ((not J0_90 or J0_90) and (not J0_90 or J0_90))) or not ((not J0_90 and not J0_90 or J0_90 and not J0_90) and (not J0_90 and not J0_90 or (J0_90 or not J0_90)) and ((not J0_90 and not J0_90 or (not J0_90 or J0_90)) and ((J0_90 or J0_90) and (J0_90 or J0_90))) or (J0_90 or not J0_90 or (not J0_90 or J0_90)) and (J0_90 and J0_90 or not J0_90 and not J0_90) and ((not J0_90 and J0_90 or (not J0_90 or not J0_90)) and ((not J0_90 or J0_90) and (not J0_90 or J0_90)))) then
            J0_74 = wj.Hacking.defense.hitMinInterval
        else
            wj = J0_74.Hacking.defense.hitMinInterval
        end
        J0_90 = (J0_90 + 3) % 4
    until (J0_90 * 3 + 2) % 4 == 1
end
J0_90 = tonumber(J0_74) or 0.35
vy = J0_90
J0_74 = wj.Melee and wj.Melee.swingCooldownSeconds
J0_90 = tonumber(J0_74) or 0.35
vo = J0_90
J0_74 = wj.Melee and wj.Melee.hitRangeStuds
J0_90 = tonumber(J0_74) or 11.5
xt, xp, wS, wp, vG, vj, xe, wJ, wz, fns.J0_31, v0, vQ, vA, vr, xw, xn, ws, vR, xs, xb, wM, wu, vn, wP, wE, vN, xu, wT, vH, wV, vB, fns.J0_36, fns.J0_42, xg, v9, xi, wI, w6, vJ, wq, fns.J0_16, xr, w3, v3, vw, wC, vF, wZ, wo, xy, fns.J0_2, wm, fns.J0_29, wX, wt, vs, vL, xc, wy, vO, wB, vX, xh, vt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xt = J0_90
xp = fns.fn91
wS = fns.fn1117
wp = fns.fn1349
vG = fns.fn1096
vj = fns.fn745
xe = fns.fn1269
wJ = fns.fn331
wz = fns.fn1106
fns.J0_31 = fns.fn844
v0 = fns.fn974
vQ = fns.fn952
vA = fns.fn894
vr = fns.fn448
xw = fns.fn646
xn = fns.fn997
ws = fns.fn62
vR = fns.fn654
xs = fns.fn594
xb = fns.fn589
wM = function(cK)
    if not cK then
        return
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, cK)
        return
    end
    pcall(function()
        cK:InputHoldBegin()
        local z1 = cK.HoldDuration or 0
        task.wait(z1 + 0.05)
        cK:InputHoldEnd()
    end)
end
wu = fns.fn38
vn = fns.fn1303
wP = function(c7)
    local AN
    local AL
    local AO
    local AM
    AL = nil
    AM = nil
    AN = nil
    AO = nil
    AM = wu(c7)
    AO = vn(c7)
    AL = {}
    AN = {}
    local function AP(df, dg)
        local AE = df .. "," .. dg
        if AL[AE] or AM[AE] or AO[AE] then
            return
        end
        AL[AE] = true
        AN[#AN + 1] = { tx = df, tz = dg }
    end
    for k, v in pairs(AO) do
        local attr2 = v:GetAttribute("TileX")
        local attr = v:GetAttribute("TileZ")
        AP(attr2 + 1, attr)
        AP(attr2 - 1, attr)
        AP(attr2, attr + 1)
        AP(attr2, attr - 1)
    end
    local attr2 = c7:GetAttribute("StartTileX")
    local attr = c7:GetAttribute("StartTileZ")
    local AS = typeof(attr2) == "number" and typeof(attr) == "number"
    if AS then
        local AS_1 = attr2 - 2
        local AT = attr2 + 4
        local A2 = AS_1
        while A2 <= AT do
            local A3 = A2
            local AQ_3 = attr - 2
            local AS_2 = attr + 4
            local A7 = AQ_3
            while A7 <= AS_2 do
                local A8 = A7
                AP(A3, A8)
                A7 += 1
            end
            A2 += 1
        end
    end
    table.sort(AN, function(dy, dz)
        if dy.tz == dz.tz then
            return dy.tx < dz.tx
        end
        return dy.tz < dz.tz
    end)
    return AN
end
wE = fns.fn257
vN = fns.fn117
xu = fns.fn324
wT = function(dX, dY)
    local Bu_1
    local Bt_1
    if vR(dY) <= 0 then
        return false
    elseif xe() < xs(dY) then
        return false
    else
        Bt_1, Bu_1 = pcall(function()
            return BuyItem:InvokeServer(dX, dY)
        end)
        local Bv = Bt_1 and typeof(Bu_1) == "table" and Bu_1.ok == true
        return Bv
    end
end
vH = function(d9)
    local Bz_1
    local By_1
    local Bx = v5[d9]
    if not Bx then
        return false
    elseif xe() < xs(d9) then
        return false
    else
        By_1, Bz_1 = pcall(function()
            return BuyGear:InvokeServer(Bx)
        end)
        if By_1 and Bz_1 == true then
            return true
        end
        local BA_1 = By_1 and typeof(Bz_1) == "table" and Bz_1.ok == true
        return BA_1
    end
end
wV = function(el, em, en, eo)
    local BM_1
    local BL_1
    BL_1, BM_1 = pcall(function()
        local BG = eo
        local BK = if BG then 1 else 0
        local BI = 3343 * BK + 4008 * (1 - BK)
        local BJ = 2896 * BK + 1741 * (1 - BK)
        if not ((BI * 2220 + BJ * 3489 + BI * BJ) % 16777213 == 10429719) then
            BG = 0
        end
        return PlaceItem:InvokeServer(el, em, en, BG)
    end)
    local BN = BL_1 and typeof(BM_1) == "table" and BM_1.ok == true
    return BN
end
vB = function(ez, eA)
    local BW_1
    local BV_1
    BV_1, BW_1 = pcall(function()
        return PickupItem:InvokeServer(ez, eA)
    end)
    local BX = BV_1 and typeof(BW_1) == "table" and BW_1.ok == true
    return BX
end
fns.J0_36 = fns.fn770
fns.J0_42 = fns.fn204
xg = fns.fn814
v9 = fns.fn5
xi = fns.fn988
wI = fns.fn696
w6 = function()
    if v0() <= 0 then
        return false
    end
    local Ds = wp("SkillTracks")
    local Dr = math.floor(wS("SkillSpendAmount", 1) + 0.5)
    local Dt = false
    for i, v in ipairs(xj) do
        local DB = v
        local Du = Ds[DB] and v0() > 0
        if Du then
            pcall(function()
                SpendSkillPoints:FireServer(DB, Dr)
            end)
            Dt = true
            task.wait(0.05)
        end
    end
    return Dt
end
vJ = function()
    local DC
    local DD = vQ()
    local DE = SkillMath.rebirthMoneyCost(DD)
    local DF = SkillMath.rebirthLevelReq(DD)
    local DG = SkillMath.rebirthHackReq(DD)
    local DD_1 = vA() < DF or xe() < DE or vr() < DG
    if DD_1 then
        return false
    end
    DC = wS("RebirthName", "")
    local DD_2 = DC == ""
    local DE_1 = typeof(DC) ~= "string" or DD_2
    if DE_1 then
        DC = LocalPlayer.DisplayName .. "AI"
    end
    pcall(function()
        Rebirth:FireServer(DC)
    end)
    return true
end
if (not wo and wo or (xw or false) or (wo or wo or xg and false)) and (xg and wo or v3 and xg or (not xw and xw or (fns.J0_2 or not xw))) or not ((not wo and wo or (xw or false) or (wo or wo or xg and false)) and (xg and wo or v3 and xg or (not xw and xw or (fns.J0_2 or not xw)))) then
    wq = function()
        local DL_2
        local DJ = wp("BlackMarketCrates")
        local DJ_2
        local DK = false
        for k in pairs(DJ) do
            local DI = xo[k]
            if DI then
                DJ_2, DL_2 = pcall(function()
                    return BlackMarketBuy:InvokeServer("crate", DI)
                end)
                local DM = DJ_2 and typeof(DL_2) == "table" and DL_2.ok == true
                if DM then
                    DK = true
                    task.wait(0.1)
                end
            end
        end
        return DK
    end
    fns.J0_16 = function()
        local DT = wS("BlackMarketMinScaler", 100)
        local DU = w4
        local DU_12
        if typeof(DU) ~= "table" then
            return false
        end
        local DW = DU.stock or DU.items
        local DW_6
        local D0 = if DW then 1 else 0
        local DZ = 3617 * D0 + 2847 * (1 - D0)
        local D_ = 1209 * D0 + 676 * (1 - D0)
        if not ((DZ * 1517 + D_ * 987 + DZ * D_) % 16777213 == 11053225) then
            DW = DU
        end
        local DU_7 = DW
        if typeof(DU_7) ~= "table" then
            return false
        end
        local DV_2 = false
        for k, v in pairs(DU_7) do
            local DU_8 = typeof(v) == "table"
            if DU_8 then
                DU_8 = v.kind == "Bootleg" or v.scalerPct or v.pct
            end
            if DU_8 then
                local DU_9 = tonumber(v.scalerPct) or tonumber(v.pct)
                if (DU_9 or 0) >= DT then
                    local DS = v.id or v.key
                    if DS then
                        DU_12, DW_6 = pcall(function()
                            return BlackMarketBuy:InvokeServer(DS)
                        end)
                        local DX = DU_12 and typeof(DW_6) == "table" and DW_6.ok == true
                        if not DX then
                            DU_12, DW_6 = pcall(function()
                                return BlackMarketBuy:InvokeServer("item", DS)
                            end)
                        end
                        local DX_2 = DU_12 and typeof(DW_6) == "table" and DW_6.ok == true
                        if DX_2 then
                            DV_2 = true
                            task.wait(0.1)
                        end
                    end
                end
            end
        end
        return DV_2
    end
else
    fns.J0_16 = function()
        local DL_1
        local DJ = wp("BlackMarketCrates")
        local DJ_1
        local DK = false
        for k in pairs(DJ) do
            local DI = xo[k]
            if DI then
                DJ_1, DL_1 = pcall(function()
                    return BlackMarketBuy:InvokeServer("crate", DI)
                end)
                local DM = DJ_1 and typeof(DL_1) == "table" and DL_1.ok == true
                if DM then
                    DK = true
                    task.wait(0.1)
                end
            end
        end
        return DK
    end
    wq = function()
        local DT = wS("BlackMarketMinScaler", 100)
        local DU = w4
        local DU_6
        if typeof(DU) ~= "table" then
            return false
        end
        local DW = DU.stock or DU.items
        local DW_3
        local D0 = if DW then 1 else 0
        local DZ = 3617 * D0 + 2847 * (1 - D0)
        local D_ = 1209 * D0 + 676 * (1 - D0)
        if not ((DZ * 1517 + D_ * 987 + DZ * D_) % 16777213 == 11053225) then
            DW = DU
        end
        local DU_1 = DW
        if typeof(DU_1) ~= "table" then
            return false
        end
        local DV_1 = false
        for k, v in pairs(DU_1) do
            local DU_2 = typeof(v) == "table"
            if DU_2 then
                DU_2 = v.kind == "Bootleg" or v.scalerPct or v.pct
            end
            if DU_2 then
                local DU_3 = tonumber(v.scalerPct) or tonumber(v.pct)
                if (DU_3 or 0) >= DT then
                    local DS = v.id or v.key
                    if DS then
                        DU_6, DW_3 = pcall(function()
                            return BlackMarketBuy:InvokeServer(DS)
                        end)
                        local DX = DU_6 and typeof(DW_3) == "table" and DW_3.ok == true
                        if not DX then
                            DU_6, DW_3 = pcall(function()
                                return BlackMarketBuy:InvokeServer("item", DS)
                            end)
                        end
                        local DX_1 = DU_6 and typeof(DW_3) == "table" and DW_3.ok == true
                        if DX_1 then
                            DV_1 = true
                            task.wait(0.1)
                        end
                    end
                end
            end
        end
        return DV_1
    end
end
xr = fns.fn616
w3 = fns.fn332
v3 = function(hG)
    pcall(function()
        SetTabletHeld:FireServer(hG == true)
    end)
end
vw = fns.fn734
wC = fns.fn808
vF = fns.fn159
wZ = fns.fn163
wo = fns.fn920
xy = function()
    local E3 = vF()
    if not E3 then
        return false
    end
    if Options.HackTargets and Options.HackTargets.SetValues then
        local E4_1 = {}
        for k in pairs(wi) do
            E4_1[#E4_1 + 1] = k
        end
        table.sort(E4_1)
        Options.HackTargets:SetValues(E4_1)
    end
    local E2 = wS("HackMode", "remote")
    local E4_2 = E2 == ""
    local E5 = typeof(E2) ~= "string" or E4_2
    if E5 then
        E2 = "remote"
    end
    local E4_3 = E2 == "remote" and vQ() < vZ
    if E4_3 then
        xr(("Remote hack needs rebirth Version %d+ (you are %d)"):format(vZ, vQ()))
        return false
    elseif not w3() then
        xr("Equip your Tablet to hack")
        return false
    else
        v3(true)
        local E4_4 = tick()
        local E5_1 = 0
        local E6 = false
        for i, v in ipairs(wo(E3)) do
            local Fi = v
            if not xp("AutoHackPlayers") then
                break
            else
                if (E2 == "super" and Fi.superState or Fi.hackState) == "ok" then
                    local E3_3 = wg[Fi.key] or 0
                    if E4_4 - E3_3 >= math.min(vM, 8) then
                        wg[Fi.key] = E4_4
                        pcall(function()
                            HackAttempt:FireServer(Fi.key, E2)
                        end)
                        E6 = true
                        if typeof(Fi.userId) == "number" then
                            wC(Fi.userId)
                        end
                        task.wait(0.35)
                    end
                else
                    E5_1 += 1
                end
            end
        end
        local E3_4 = not E6
        if E3_4 ~= false then
            E3_4 = E5_1 > 0
        end
        if E3_4 then
            xr("No hackable targets right now (shielded / locked / busy)")
        end
        return E6
    end
end
fns.J0_2 = function()
    local Fj = vG()
    if not Fj then
        return false
    end
    local Fk = wS("UsbHackRange", 20)
    local Fl = wp("HackTargets")
    local Fm = next(Fl)
    local Fn = false
    local Fo = Fm ~= nil
    for i, player in ipairs(Players:GetPlayers()) do
        local Fx = player
        if Fx ~= LocalPlayer then
            local Fm_1 = nil
            for k, v in pairs(wi) do
                if v.userId == Fx.UserId then
                    Fm_1 = k
                    break
                end
            end
            if not Fo or Fm_1 and Fl[Fm_1] or Fl[Fx.Name] or Fl[Fx.DisplayName] then
                local Character = Fx.Character
                local Fp_1 = Character and Character:FindFirstChild("HumanoidRootPart")
                local Fm_4 = Fp_1
                if Fp_1 then
                    Fp_1 = (Fm_4.Position - Fj.Position).Magnitude <= Fk
                end
                if Fp_1 then
                    pcall(function()
                        UsbHackStart:FireServer(Fx.UserId, "prox")
                    end)
                    task.wait(0.05)
                    pcall(function()
                        UsbHackStart:FireServer(Fx.UserId, "arm")
                    end)
                    Fn = true
                end
            end
        end
    end
    return Fn
end
wm = fns.fn210
fns.J0_29 = fns.fn403
wX = function(jX)
    if not jX then
        return
    end
    pcall(function()
        if typeof(firesignal) == "function" then
            firesignal(jX.MouseButton1Click)
            return
        end
        if typeof(getconnections) == "function" then
            for i, v in ipairs(getconnections(jX.MouseButton1Click)) do
                if v.Function then
                    v.Function()
                end
            end
            return
        end
        jX:Activate()
    end)
end
wt = fns.fn554
vs = fns.fn1013
vL = fns.fn893
xc = fns.fn333
wy = fns.fn400
vO = function()
    local GJ = wN or not xp("AutoDefend")
    if GJ then
        return
    end
    if not fns.J0_29() then
        return
    end
    local GJ_1 = fns.J0_28 and Players:GetPlayerByUserId(fns.J0_28)
    if not GJ_1 then
        return
    end
    wN = true
    task.spawn(function()
        local GI = false
        repeat
            local GC = not Library.Unloaded and xp("AutoDefend") and fns.J0_29()
            if GC then
                local GC_1 = fns.J0_28 and Players:GetPlayerByUserId(fns.J0_28)
                local GB = GC_1
                if not GB then
                    GI = true
                else
                    wy(GB)
                    if not xc() then
                        xr("No Wrench in inventory")
                        GI = true
                    else
                        local GC_2 = tick()
                        if GC_2 - wn >= vo then
                            wn = GC_2
                            local GC_3 = vG()
                            local GD = GB.Character and GB.Character:FindFirstChild("HumanoidRootPart")
                            if GC_3 and GD and (GC_3.Position - GD.Position).Magnitude <= xt + 2 then
                                GC_3.CFrame = CFrame.lookAt(GC_3.Position, GD.Position)
                                pcall(function()
                                    MeleeHit:FireServer(GB)
                                end)
                            end
                        end
                        task.wait(0.05)
                    end
                end
            else
                GI = true
            end
        until GI
        wN = false
    end)
end
wB = fns.fn881
vX = fns.fn449
xh = function(lT)
    local G0 = lT.kind or ""
    local G1 = tostring(G0)
    local G0_1 = lT.role or ""
    local G2 = tostring(G0_1)
    if G1 == "denied" then
        local G0_2 = lT.reason or "blocked"
        local G3_1 = tostring(G0_2)
        if G3_1 == "rebirth" then
            xr(("Remote hack locked until rebirth Version %d+"):format(vZ))
        else
            xr("Hack denied: " .. G3_1)
        end
        return
    end
    if G1 == "promptSuper" then
        if wS("HackMode", "remote") ~= "super" then
            return
        end
        local G_ = tonumber(lT.productId)
        if G_ then
            pcall(function()
                game:GetService("MarketplaceService"):PromptProductPurchase(LocalPlayer, G_)
            end)
        end
        return
    end
    local G0_3 = G2 == "attacker"
    if not G0_3 then
        G0_3 = G1 == "phase" and G2 == "attacker"
    end
    if not G0_3 then
        G0_3 = lT.walkUp == true
    end
    if G0_3 then
        if G2 == "attacker" or lT.walkUp == true then
            w3()
            v3(true)
            local G0_5 = tonumber(lT.userId)
            if G0_5 then
                wC(G0_5)
            end
        end
    end
end
pcall(fns.fn711)
pcall(fns.fn549)
vt = function(mA)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not mA)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not mA
        end
    end)
    if not mA then
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
J0_67 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = wG, Copyable = true }, "|", J0_45 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local J0_88 = {
    Info = J0_67:AddTab("Info", "info"),
    Main = J0_67:AddTab("Main", "gamepad-2"),
    Player = J0_67:AddTab("Player", "person-standing"),
    Settings = J0_67:AddTab("Settings", "settings")
}
J0_88.Farm = J0_88.Main:AddSubTab("Farm", "coins")
J0_88.Plot = J0_88.Main:AddSubTab("Plot", "map-pin")
J0_88.Shop = J0_88.Main:AddSubTab("Shop", "shopping-cart")
J0_88.Combat = J0_88.Main:AddSubTab("Combat", "swords")
J0_54 = fns.fn877
for k, v in J0_88 do
    if v ~= J0_88.Main then
        J0_54(v)
    end
end
v6, Label, J0_94 = nil, nil, nil
v6 = "Unknown"
pcall(fns.fn297)
J0_74 = J0_88.Info:AddLeftGroupbox("Account", "circle-user")
J0_74:AddLabel(vm("User", LocalPlayer.Name, J0_61), true)
J0_74:AddLabel(vm("Status", "Keyless", J0_61), true)
J0_74:AddLabel(vm("Executor", v6, J0_61), true)
local GameInfoGroup = J0_88.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(vC(J0_45 .. " [" .. tostring(game.PlaceId) .. "]", J0_72), true)
GameInfoGroup:AddLabel(vm("Place ID", tostring(game.PlaceId), J0_72), true)
Label = GameInfoGroup:AddLabel(vm("Session time", "0s", w2), true)
J0_94 = tostring(game.JobId)
J0_67 = #J0_94 > 18
if J0_67 then
    J0_74 = 2
    repeat
        local Mg = bit32.rrotate(bit32.bxor(bit32.lrotate(J0_74, 24), string.byte(tostring(J0_74))), 18)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Mg, 487189105), 22), 2621915770) ~= bit32.lrotate(Mg, 22) then
            J0_94 = string.sub(J0_67, 1, 18) .. "..."
        else
            J0_67 = string.sub(J0_94, 1, 18) .. "..."
        end
        J0_74 = (J0_74 + 7) % 8
    until (J0_74 * 3 + 2) % 8 == 5
end
J0_74 = J0_67 or J0_94
w7, DonationsGroup, fns.ShopsGroup, J0_54, CurrentCamera2, wb, v4, fns.connection, connection2, J0_71, fns.J0_22, wF, vU, vu, ww = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local J0_30 = J0_74
GameInfoGroup:AddLabel(vm("Server", J0_30, J0_85), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
w7 = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = J0_88.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(vC("Included in this hub", J0_85), true)
ScriptsGroup:AddLabel(vC(J0_45, J0_72), true)
local FeaturesGroup = J0_88.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(vC("Auto Farm", J0_72), true)
FeaturesGroup:AddLabel(vC("Auto Plot", w2), true)
FeaturesGroup:AddLabel(vC("Auto Shop", J0_61), true)
FeaturesGroup:AddLabel(vC("Auto Combat", J0_85), true)
local SocialsGroup = J0_88.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = fns.J0_25 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = J0_88.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if (not fns.ShopsGroup or fns.ShopsGroup or (J0_71 or not wb)) and ((fns.ShopsGroup or wb) and (J0_71 and not vu)) and (wb and not J0_71 or (J0_71 or fns.ShopsGroup) or vu and fns.ShopsGroup and (not wb and J0_54)) and (fns.connection and not fns.connection and (vu and J0_71) or (not J0_54 and J0_54 or vu and fns.connection) or (not wb and J0_54 or (not J0_71 or fns.connection) or fns.connection and not wb and (wb or vu))) or not ((not fns.ShopsGroup or fns.ShopsGroup or (J0_71 or not wb)) and ((fns.ShopsGroup or wb) and (J0_71 and not vu)) and (wb and not J0_71 or (J0_71 or fns.ShopsGroup) or vu and fns.ShopsGroup and (not wb and J0_54)) and (fns.connection and not fns.connection and (vu and J0_71) or (not J0_54 and J0_54 or vu and fns.connection) or (not wb and J0_54 or (not J0_71 or fns.connection) or fns.connection and not wb and (wb or vu)))) then
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = fns.J0_25 })
    DonationsGroup = J0_88.Info:AddRightGroupbox("Donations", "heart")
else
    DonationsGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    DonationsGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    DonationsGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    DonationsGroup:AddButton({ Text = "Copy Discord Invite", Func = J0_88 })
    fns.J0_25 = OuroborosHubGroup.Info:AddRightGroupbox("Donations", "heart")
end
DonationsGroup:AddLabel(vC("All donations are optional but appreciated.", w2), true)
DonationsGroup:AddLabel(vC("If you donate you get a special role, just PING after you donate.", J0_61), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(vC("LTC / Litecoin", J0_6), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(vC("BTC / Bitcoin", J0_26), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(vC("ETH / Ethereum", J0_58), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel(vC("USDT", J0_82), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(vC("Solana", J0_95), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(vC("PayPal", J0_20), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(vC("Venmo", J0_40), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(vC("Don't have any of the listed currencies but still wanna donate?", J0_85), true)
DonationsGroup:AddLabel(vC("DM me and we'll work something out.", J0_72), true)
local FaqGroup = J0_88.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = J0_88.Farm:AddLeftGroupbox("Farm", "coins")
FarmGroup:AddToggle("AutoCollect", { Text = "Auto Collect Cash", Default = false })
FarmGroup:AddToggle("AutoSell", { Text = "Auto Sell Tokens", Default = false })
FarmGroup:AddSlider("MinTokenPrice", { Text = "Minimum Token Price", Default = 12, Min = J0_50, Max = J0_78, Rounding = 0 })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
FarmGroup:AddInput("RebirthName", { Text = "Rebirth AI Name", Default = LocalPlayer.DisplayName .. "AI", Finished = true })
local AiUpgradesGroup = J0_88.Farm:AddRightGroupbox("AI Upgrades", "brain")
AiUpgradesGroup:AddToggle("AutoUpgradeAI", { Text = "Auto Upgrade AI", Default = false })
AiUpgradesGroup:AddDropdown("SkillTracks", { Text = "Skill Tracks", Values = xj, Default = xj, Multi = true, AllowNull = true })
AiUpgradesGroup:AddSlider("SkillSpendAmount", { Text = "Points Per Spend", Default = 1, Min = 1, Max = 100, Rounding = 0 })
AiUpgradesGroup:AddToggle("AutoSkillAuto", { Text = "Enable Game Auto Spend", Default = false })
local PlotGroup = J0_88.Plot:AddLeftGroupbox("Plot", "map-pin")
PlotGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
PlotGroup:AddDropdown("PlaceItem", {
    Text = "Place Item",
    Values = wf,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
PlotGroup:AddDropdown("PlacePriority", { Text = "Place Priority", Values = { "Random", "Highest Rarity" }, Default = "Random" })
PlotGroup:AddSlider("PlaceRotation", { Text = "Place Rotation", Default = 0, Min = 0, Max = 3, Rounding = 0 })
PlotGroup:AddToggle("AutoReplace", { Text = "Auto Replace", Default = false })
PlotGroup:AddToggle("AutoExpand", { Text = "Auto Expand", Default = false })
local ActionsGroup = J0_88.Plot:AddRightGroupbox("Actions", "mouse-pointer-click")
ActionsGroup:AddButton({ Text = "Pick Up All", Func = fns.onPickUpAll })
ActionsGroup:AddButton({ Text = "Collect Once", Func = fns.onCollectOnce })
ActionsGroup:AddButton({ Text = "Expand Once", Func = fns.onExpandOnce })
fns.ShopsGroup = J0_88.Shop:AddLeftGroupbox("Shops", "shopping-cart")
fns.ShopsGroup:AddToggle("AutoBuyHardware", { Text = "Auto Buy Hardware", Default = false })
fns.ShopsGroup:AddDropdown("HardwareItems", { Text = "Hardware", Values = J0_12, Default = { J0_12[1] }, Multi = true, AllowNull = true })
fns.ShopsGroup:AddToggle("AutoBuyData", { Text = "Auto Buy Data", Default = false })
fns.ShopsGroup:AddDropdown("DataItems", { Text = "Data", Values = J0_32, Default = { J0_32[1] }, Multi = true, AllowNull = true })
fns.ShopsGroup:AddToggle("AutoBuyDatasets", { Text = "Auto Buy Datasets", Default = false })
fns.ShopsGroup:AddDropdown("DatasetItems", { Text = "Datasets", Values = J0_14, Default = {}, Multi = true, AllowNull = true })
local Gear_MarketGroup = J0_88.Shop:AddRightGroupbox("Gear & Market", "wrench")
Gear_MarketGroup:AddToggle("AutoBuyGear", { Text = "Auto Buy Gear", Default = false })
Gear_MarketGroup:AddDropdown("GearItems", { Text = "Gear", Values = J0_34, Default = {}, Multi = true, AllowNull = true })
Gear_MarketGroup:AddToggle("AutoBlackMarket", { Text = "Black Market Auto Buy", Default = false })
Gear_MarketGroup:AddDropdown("BlackMarketCrates", { Text = "Crates", Values = J0_63, Default = { J0_63[1] }, Multi = true, AllowNull = true })
Gear_MarketGroup:AddSlider("BlackMarketMinScaler", { Text = "Min Bootleg Scaler %", Default = 100, Min = 85, Max = 150, Rounding = 0 })
J0_54 = J0_88.Combat:AddLeftGroupbox("Combat", "swords")
J0_54:AddToggle("AutoDefend", { Text = "Auto Fend Off Hackers", Default = false })
J0_54:AddToggle("AutoFirewallTap", { Text = "Auto Firewall Tap", Default = true })
J0_54:AddToggle("AutoHackPlayers", { Text = "Auto Hack Players", Default = false })
J0_54:AddDropdown("HackTargets", {
    Text = "Hack Players",
    Values = {},
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
J0_54:AddDropdown("HackMode", { Text = "Hack Mode", Values = { "remote", "super" }, Default = "remote" })
J0_54:AddButton({ Text = "Refresh Hack Players", Func = fns.onRefreshHackPlayers })
J0_54:AddToggle("AutoUsbHack", { Text = "Auto USB Hack Nearby", Default = false })
J0_54:AddSlider("UsbHackRange", { Text = "USB Hack Range", Default = 20, Min = 8, Max = 60, Rounding = 0 })
task.defer(wZ)
J0_67 = J0_88.Player:AddLeftGroupbox("Movement", "footprints")
J0_67:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
J0_67:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
J0_67:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
J0_67:AddToggle("NoClip", { Text = "NoClip", Default = false })
J0_67:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
J0_90 = J0_88.Player:AddRightGroupbox("Fly", "feather")
J0_90:AddToggle("Fly", { Text = "Fly", Default = false })
J0_90:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
fns.Toggles.AntiGameplayPause:OnChanged(fns.fn233)
fns.Toggles.AutoSkillAuto:OnChanged(fns.fn1053)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
fns.Toggles.Fly:OnChanged(fns.fn188)
fns.Toggles.WalkSpeedEnabled:OnChanged(fns.fn390)
local MenuGroup = J0_88.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
wb = tick()
v4 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local Ia = v
        pcall(function()
            Ia:Disable()
        end)
    end
end)
fns.J0_22 = fns.fn538
fns.connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = fns.onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/build-an-ai")
J0_71 = SaveManager:BuildConfigSection(J0_88.Settings)
wF = fns.fn1097
vU = fns.fn882
vu = fns.fn141
ww = function(pf)
    local IR
    IR = nil
    local IS = type(pf) ~= "table" or type(pf.idx) ~= "string" or type(pf.type) ~= "string" or SaveManager.Ignore[pf.idx]
    if IS then
        return false
    end
    IR = wF(pf.type, pf.idx)
    if not IR then
        return false
    end
    local IS_1 = pcall(function()
        if pf.type == "Input" then
            if type(pf.text) ~= "string" then
                return
            end
            IR:SetValue(pf.text)
        elseif pf.type == "ColorPicker" then
            IR:SetValueRGB(Color3.fromHex(pf.value), pf.transparency)
        elseif pf.type == "KeyPicker" then
            IR:SetValue({ pf.key, pf.mode, pf.modifiers })
            if pf.mode == "Toggle" and pf.toggled ~= nil then
                IR.Toggled = pf.toggled
                IR:Update()
            end
        else
            IR:SetValue(pf.value)
        end
    end)
    return IS_1
end
J0_71:AddDivider()
J0_71:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
J0_71:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
J0_71:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
ThemeManager:ApplyToTab(J0_88.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(function()
    local JI
    local JN = false
    repeat
        if not Library.Unloaded then
            local HackUI = LocalPlayer.PlayerGui:FindFirstChild("HackUI")
            local JK = HackUI and HackUI:FindFirstChild("FirewallDefense")
            local JH = JK
            if JH and JH ~= JI then
                JI = JH
                JH:GetPropertyChangedSignal("Visible"):Connect(function()
                    local JE = JH.Visible
                    if JE then
                        local JF = xp("AutoFirewallTap") or xp("AutoDefend")
                        JE = JF
                    end
                    if JE then
                        wm(fns.J0_28, 20)
                        vs()
                        if xp("AutoDefend") then
                            vO()
                        end
                    end
                end)
            end
            task.wait(1)
        else
            JN = true
        end
    until JN
end)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(fns.worker8)
Library:OnUnload(fns.fn902)
