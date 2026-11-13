local fns = {}
local ME_27, ME_29, ME_30, ME_31, ME_32, ME_33, ME_35, ME_36, ME_38, ME_41, ME_47, ME_50, ME_54, ME_59, ME_62, ME_65, ME_67, ME_70, BuyFoodGroup, ME_73, ScriptsGroup, ME_76, ME_78, ME_82, ME_85, ME_88, ME_90
fns.ME_1 = nil
fns.ME_6 = nil
fns.ME_7 = nil
fns.ME_9 = nil
fns.ME_12 = nil
fns.ME_13 = nil
fns.ME_15 = nil
fns.ME_18 = nil
fns.ME_21 = nil
fns.ME_24 = nil
ME_27 = nil
ME_29 = nil
ME_30 = nil
ME_32 = nil
ME_33 = nil
ME_35 = nil
ME_38 = nil
local x6
local yO
local w6
local xO
local yv
local xv
local yc
local yU
local xc
local xU
local yB
local folder
local Settings
local x_
local yH
local w_
local xH
local yo
local collectAllPetCash
local x5
local yN
local w5
local xN
local yu
local connection2
local CurrentCamera2
local y_
local xb
local xT
local yA
local wT
local xA
local yZ
local xh
local xZ
local wZ
local yG
local connection3
local yM
local yt
local ya
local UserInputService
local xS
local wS
local Workspace
local xg
local yY
local wY
local ym
local xm
local Label
local getPenRootCFrame
local Mutations
local x9
local xR
local wR
local Pets2
local yf
local yX
local xf
local xX
local HttpService
local wX
local yl
local xl
local x2
local VirtualUser
local w2
local xK
local yr
local xr
local yQ
local w8
local wQ
local yx
local ye
local yW
local xx
local xW
local yD
local wW
local Options
local y1
local xk
local xe
local w1
local CoreGui
local xq
local x7
function fns.onFavoriteNow()
    pcall(wX)
end
function fns.onInputChanged(p0)
    local UserInputType = p0.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        yG = tick()
    end
end
function fns.fn17()
    return ME_32("GalaxyIslandPets")
end
function fns.worker10()
    while not yM.Unloaded do
        if fns.ME_9("AutoBuyFood") then
            pcall(wZ)
        end
        task.wait(1.5)
    end
end
function fns.onRscripts()
    x9(fns.ME_15, "Copied Rscripts profile to clipboard")
end
function fns.fn61()
    local FrostIslandZone = Workspace:FindFirstChild("FrostIslandZone")
    if FrostIslandZone then
        return xT(FrostIslandZone)
    end
    local EnterZones = Workspace:FindFirstChild("EnterZones")
    local DF = EnterZones and EnterZones:FindFirstChild("- Ice Island -")
    return xT(DF)
end
function fns.worker8()
    while not yM.Unloaded do
        if fns.ME_9("AutoSell") then
            pcall(xH)
        end
        task.wait(2)
    end
end
function fns.worker14()
    while not yM.Unloaded do
        pcall(xZ)
        task.wait(0.35)
    end
end
function fns.onCopySolanaAddress()
    x9(yv, "Copied Solana address")
end
function fns.onCopyVenmoLink()
    x9(ya, "Copied Venmo link")
end
function fns.fn112(aQ)
    local Au = yt[aQ]
    return Au ~= nil and Au.Value == true
end
function fns.onStepped()
    if yM.Unloaded then
        return
    end
    if fns.ME_9("NoClip") then
        local Character = x7.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local LU_1 = descendant:IsA("BasePart") and descendant.CanCollide
                if LU_1 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn144()
    local Bu = {}
    local Bv = { "None" }
    for k, v in pairs(Mutations) do
        if type(v) == "table" then
            Bu[#Bu + 1] = k
        end
    end
    table.sort(Bu)
    for i, v in ipairs(Bu) do
        Bv[#Bv + 1] = v
    end
    return Bv
end
function fns.worker2()
    while not yM.Unloaded do
        task.wait(2)
        if fns.ME_9("AntiAfk") then
            local LL = tick() - yG
            local LM = tick() - yA
            if LL >= 300 and LM >= 60 then
                pcall(x2)
            else
                if LL < 300 and LM >= 300 then
                    pcall(x2)
                end
            end
        end
    end
end
function fns.fn149()
    local Character = x7.Character
    if not Character then
        return false
    end
    for i, child in ipairs(Character:GetChildren()) do
        local Fl_1 = child:IsA("Tool") and child:FindFirstChild("petID")
        if Fl_1 then
            return true
        end
    end
    return false
end
function fns.fn160()
    local DT = xT(Workspace:FindFirstChild("Volcano Island")) or ME_32("VolcanoIslandPets")
    return DT
end
function fns.fn162(m1, m2)
    local JO = type(m2) ~= "table" or m2.type ~= "Pets"
    if JO then
        return false
    end
    local JU = if xO(m1) then 1 else 0
    if JU == 1 then
        return false
    elseif not w1(m2, yc(w5("FavoriteAnimals")), yc(w5("FavoriteRarities")), yc(w5("FavoriteMutations"))) then
        return false
    else
        local JO_1 = tonumber(m2.revPerSec) or tonumber(m2.baseRevPerSec)
        local JP = JO_1 or 0
        if JP < yY("FavoriteMinRps", 50) then
            return false
        end
        local JO_3 = w5("FavoriteMinRarity") or "Epic"
        local JQ = wQ[m2.rarity or "Common"]
        local JX = if JQ then 1 else 0
        local JV = 175 * JX + 4024 * (1 - JX)
        local JW = 2903 * JX + 1737 * (1 - JX)
        if not ((JV * 2036 + JW * 2299 + JV * JW) % 16777213 == 7538322) then
            JQ = 1
        end
        if JQ < (wQ[JO_3] or 1) then
            return false
        end
        return true
    end
end
function fns.fn166()
    local AV_1
    local AU_1
    AU_1, AV_1 = pcall(function()
        return xK.GetController("LassoController")
    end)
    if AU_1 then
        return AV_1
    end
    return nil
end
function fns.fn167()
    local BJ = {}
    for k, v in pairs(Pets2) do
        local BK_1 = type(v) == "table" and v.Rarity
        if BK_1 then
            BJ[v.Rarity] = true
        end
    end
    local BK_2 = {}
    for i, v in ipairs(wS) do
        if BJ[v] then
            BK_2[#BK_2 + 1] = v
            BJ[v] = nil
        end
    end
    for k in pairs(BJ) do
        BK_2[#BK_2 + 1] = k
    end
    return BK_2
end
function fns.fn193()
    local Gy_1
    local Gt = xg()
    if not Gt then
        return nil
    end
    local Gu = w5("CatchTargetMode") or "Nearest"
    local Gw
    local Gu_1 = nil
    for i, v in ipairs(xR()) do
        local Gx = v.Parent and xe(v)
        if Gx then
            local Gx_1 = xc(v)
            if Gx_1 then
                if Gu == "Best RPS" then
                    local Gz_1 = tonumber(v:GetAttribute("RPS")) or 0
                    Gy_1 = Gz_1
                elseif Gu == "Best Strength" then
                    local Gz_2 = tonumber(v:GetAttribute("Strength")) or 0
                    Gy_1 = Gz_2
                else
                    Gy_1 = -(Gx_1.Position - Gt.Position).Magnitude
                end
                if not Gu_1 or Gy_1 > Gu_1 then
                    Gu_1 = Gy_1
                    Gw = v
                end
            end
        end
    end
    return Gw
end
function fns.fn196()
    if not yt.AnimalEsp.Value then
        wT()
    end
end
function fns.fn206(aj, ak)
    if setclipboard then
        setclipboard(aj)
    elseif toclipboard then
        toclipboard(aj)
    end
    yM:Notify(ak)
end
function fns.fn280()
    return ME_32("WaterIslandPets")
end
function fns.fn302(bA, bB)
    local A2 = type(bA) ~= "number"
    local A9 = if A2 then 1 else 0
    local A7 = 606 * A9 + 2811 * (1 - A9)
    local A8 = 2653 * A9 + 726 * (1 - A9)
    if not ((A7 * 2844 + A8 * 3604 + A7 * A8) % 16777213 == 12892594) then
        A2 = bA <= 0
    end
    if not A2 then
        A2 = type(bB) ~= "number"
    end
    if A2 then
        return 3
    end
    local A2_1 = bB / bA
    local max = math.max
    local A5 = A2_1 <= 0 and 1e-06 or A2_1
    local A2_2 = max(0, A5 - 1)
    local A3_1 = math.sqrt(A2_2) * 4 + 1 + 0.5
    return math.clamp(math.floor(A3_1), 1, 10)
end
function fns.fn305()
    local DP = xT(Workspace:FindFirstChild("FarmMiddle")) or xT(Workspace:FindFirstChild("Farm"))
    return DP
end
function fns.fn308()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    yA = tick()
end
function fns.onCopyEthereumAddress()
    x9(ME_30, "Copied Ethereum address")
end
function fns.onCopyBitcoinAddress()
    x9(yO, "Copied Bitcoin address")
end
function fns.fn365(at, au, av)
    return string.format("<b>%s</b> %s %s", at, xA("-", "#5a6070"), xA(au, av))
end
function fns.onCopyUSDTAddress()
    x9(yD, "Copied USDT address")
end
function fns.fn393(bb)
    return next(bb) == nil
end
function fns.worker9()
    while not yM.Unloaded do
        if fns.ME_9("AutoFavorite") then
            pcall(wX)
        end
        task.wait(2)
    end
end
function fns.fn418(lH)
    local DiscordGroup = lH:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = xS })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = xS })
end
function fns.fn423()
    if yt.AutoCatch.Value then
        local Kx_1 = xg()
        local Kx_2 = Kx_1 and Kx_1.CFrame
        local KC = if Kx_2 then 1 else 0
        local KA = 269 * KC + 3685 * (1 - KC)
        local KB = 3092 * KC + 3267 * (1 - KC)
        if not ((KA * 2393 + KB * 2133 + KA * KB) % 16777213 == 8070701) then
            Kx_2 = nil
        end
        xl = Kx_2
    else
        local Kx_3 = fns.ME_9("ReturnOnStop") and xl
        if Kx_3 then
            local Kx_4 = xg()
            if Kx_4 then
                Kx_4.CFrame = xl
            end
        end
    end
end
function fns.fn434()
    local DM = w6()
    return DM and DM.Position or nil
end
function fns.fn439()
    local GK = tostring(x7.UserId)
    local GL = {}
    local GM = ye()
    local PlayerPens = Workspace:FindFirstChild("PlayerPens")
    if not PlayerPens then
        return GL
    end
    for i, child in ipairs(PlayerPens:GetChildren()) do
        local GN_1 = not GM or not GM.PenIndex or child.Name == tostring(GM.PenIndex)
        if GN_1 then
            local Pets = child:FindFirstChild("Pets")
            if Pets then
                for i, child in ipairs(Pets:GetChildren()) do
                    local GN_3 = child:IsA("Model") and child:GetAttribute("Guid") and tostring(child:GetAttribute("OwnerId")) == GK
                    if GN_3 then
                        GL[#GL + 1] = child
                    end
                end
            end
        end
    end
    return GL
end
function fns.fn470(i_)
    local G1_1
    local G0_1
    G0_1, G1_1 = pcall(function()
        return xK.GetController("FoodShopController")
    end)
    local G2 = G0_1 and G1_1 and type(G1_1.Stock) == "table"
    if G2 then
        local G0_2 = tonumber(G1_1.Stock[i_]) or 0
        return G0_2
    end
    return 999
end
function fns.worker11()
    while not yM.Unloaded do
        if fns.ME_9("AutoFeed") then
            pcall(w_)
        end
        task.wait(1)
    end
end
function fns.onCopyPayPalLink()
    x9(ym, "Copied PayPal link")
end
function fns.fn493(kh)
    if not kh or not kh.Parent then
        return false
    end
    local H5_1 = tonumber(Settings.MaxLevel) or 10
    local H5_2 = tonumber(kh:GetAttribute("Level")) or 0
    if H5_2 >= H5_1 then
        return false
    end
    return yH(kh, yc(w5("FeedAnimals")), yc(w5("FeedRarities")), yc(w5("FeedMutations")))
end
function fns.fn500(dq)
    if typeof(dq) ~= "Vector3" then
        return
    end
    yQ(CFrame.new(dq + Vector3.new(0, 5, 0)))
end
function fns.fn511()
    return xT(Workspace:FindFirstChild("CavePortal"))
end
function fns.fn524()
    local Bk = {}
    local Bl = {}
    for k, v in pairs(Pets2) do
        local Bm = type(v) == "table" and not Bk[k]
        if Bm then
            Bk[k] = true
            Bl[#Bl + 1] = k
        end
    end
    table.sort(Bl)
    return Bl
end
function fns.fn535()
    local KT = {}
    for i, v in ipairs({ yt, Options }) do
        for k, v in pairs(v) do
            local KU = type(v) == "table" and type(v.Type) == "string" and not yB.Ignore[k]
            if KU then
                local KU_1 = fns.ME_12(k, v)
                if KU_1 then
                    KT[#KT + 1] = KU_1
                end
            end
        end
    end
    table.sort(KT, function(pj, pk)
        if pj.type ~= pk.type then
            return pj.type < pk.type
        end
        return pj.idx < pk.idx
    end)
    return { objects = KT }
end
function fns.fn567(dj)
    local Character = x7.Character
    if not Character then
        return
    end
    local CS = xg()
    if CS then
        CS.AssemblyLinearVelocity = Vector3.zero
        CS.AssemblyAngularVelocity = Vector3.zero
    end
    if Character.PrimaryPart then
        Character:PivotTo(dj)
    elseif CS then
        CS.CFrame = dj
    end
end
function fns.onReplaceNow()
    pcall(x_)
end
function fns.fn599(d3, d4, d5, d6)
    d3[d5] = d6
    d4[#d4 + 1] = d5
end
function fns.onImportConfigFromClipboardTex()
    local Lo_1
    local Lm = Options.SaveManager_ImportSource.Value or ""
    local Lm_1
    local Ln = tostring(Lm):match("^%s*(.-)%s*$")
    if Ln == "" then
        yM:Notify("Paste an exported config into the box first")
        return
    end
    Lm_1, Lo_1 = pcall(HttpService.JSONDecode, HttpService, Ln)
    local Ln_1 = not Lm_1 or type(Lo_1) ~= "table" or type(Lo_1.objects) ~= "table"
    if Ln_1 then
        yM:Notify("That is not a valid exported config")
        return
    end
    local Lm_2 = 0
    for i, v in ipairs(Lo_1.objects) do
        if y_(v) then
            Lm_2 += 1
        end
    end
    if Lm_2 == 0 then
        yM:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local Lo_2 = Lm_2 == 1 and ""
    local Ly = if Lo_2 then 1 else 0
    local Lw = 2117 * Ly + 2367 * (1 - Ly)
    local Lx = 1616 * Ly + 3868 * (1 - Ly)
    if not ((Lw * 1801 + Lx * 3204 + Lw * Lx) % 16777213 == 12411453) then
        Lo_2 = "s"
    end
    yM:Notify(("Imported %d setting%s"):format(Lm_2, Lo_2), 6)
end
function fns.fn623()
    if connection2 then
        connection2:Disconnect()
    end
    if connection3 then
        connection3:Disconnect()
    end
    wT()
    fns.ME_7(false)
    local Mx = fns.ME_24()
    if Mx then
        Mx.PlatformStand = false
        Mx.WalkSpeed = 16
    end
end
function fns.worker3()
    while not yM.Unloaded do
        task.wait(1)
        if fns.ME_9("AntiGameplayPause") then
            fns.ME_7(true)
        end
    end
end
function fns.fn634()
    local EV = {}
    local Character = x7.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local EW_1 = child:IsA("Tool") and child:FindFirstChild("petID")
            if EW_1 then
                EV[#EV + 1] = child
            end
        end
    end
    local Backpack = x7:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local EW_3 = child:IsA("Tool") and child:FindFirstChild("petID")
            if EW_3 then
                EV[#EV + 1] = child
            end
        end
    end
    return EV
end
function fns.fn643()
    return xT(Workspace:FindFirstChild("SunkenIsland"))
end
function fns.fn652(nV)
    xx()
    local Kn = yx(true)
    if type(Kn) ~= "table" then
        return 0
    end
    local Ko = 0
    for k, v in pairs(Kn) do
        if yM.Unloaded then
            break
        end
        local Kn_1 = not nV
        if Kn_1 ~= false then
            Kn_1 = not fns.ME_9("AutoSell")
        end
        if Kn_1 then
            break
        elseif Ko >= 20 then
            break
        else
            local Kn_2 = type(v) == "table" and v.guid
            local Kp = Kn_2 or k
            local Kp_1 = ME_35(Kp, v) and wR(Kp)
            if Kp_1 then
                Ko += 1
                xf[k] = nil
                local Kn_4 = type(v) == "table" and v.guid
                if Kn_4 then
                    xf[v.guid] = nil
                end
                task.wait(0.2)
            end
        end
    end
    if Ko > 0 then
        xb = 0
    end
    return Ko
end
function fns.fn659(bH)
    local Ba = bH.PrimaryPart or bH:FindFirstChild("Root") or bH:FindFirstChild("HumanoidRootPart")
    return Ba
end
function fns.onJumpRequest()
    if yM.Unloaded then
        return
    end
    if fns.ME_9("InfJump") then
        local L1 = fns.ME_24()
        if L1 then
            L1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn699()
    local CO_1
    local CN_1
    if xr then
        return xr
    end
    CN_1, CO_1 = pcall(function()
        return getPenRootCFrame:InvokeServer()
    end)
    local CP = CN_1 and typeof(CO_1) == "CFrame"
    if CP then
        xr = CO_1
    end
    return xr
end
function fns.worker5()
    while not yM.Unloaded do
        if fns.ME_9("AutoPlace") then
            pcall(yr)
        end
        task.wait(1)
    end
end
function fns.fn710()
    local AY_1
    local AX_1
    AX_1, AY_1 = pcall(function()
        return xK.GetController("CurrencyController")
    end)
    if AX_1 then
        return AY_1
    end
    return nil
end
function fns.fn722()
    return xT(Workspace:FindFirstChild("TeleportAlien"))
end
function fns.fn723(ci, cj)
    if ci.Price == cj.Price then
        return ci.XP > cj.XP
    end
    return ci.Price < cj.Price
end
function fns.fn728()
    local I8_1
    local I7_1
    if identifyexecutor then
        I8_1, I7_1 = identifyexecutor()
        local I9 = I8_1 ~= ""
        local Ja = type(I8_1) == "string" and I9
        if Ja then
            local I9_1 = type(I7_1) == "string" and I7_1 ~= "" and I8_1 .. " " .. I7_1
            yN = I9_1 or I8_1
        end
    end
end
function fns.fn741()
    for k, v in pairs(xv) do
        if v then
            v:Destroy()
        end
        xv[k] = nil
    end
    if folder then
        folder:Destroy()
        folder = nil
    end
end
function fns.fn749()
    pcall(function()
        collectAllPetCash:FireServer()
    end)
end
function fns.fn755(a_, a0)
    local AD = Options[a_]
    local AE = AD and tonumber(AD.Value)
    if AE then
        return AE
    end
    return a0
end
function fns.fn776(c0, c1)
    if c1 == "Rarity" then
        local CB_1 = c0:GetAttribute("Rarity") or "Common"
        local CC = wQ[CB_1]
        local CG_1 = if CC then 1 else 0
        local CE_1 = 3045 * CG_1 + 1967 * (1 - CG_1)
        local CF_1 = 3963 * CG_1 + 574 * (1 - CG_1)
        if not ((CE_1 * 2758 + CF_1 * 1025 + CE_1 * CF_1) % 16777213 == 7750307) then
            CC = 0
        end
        return CC
    elseif c1 == "Strength" then
        local CB_2 = (tonumber(c0:GetAttribute("Strength")))
        local CG_2 = if CB_2 then 1 else 0
        local CE_2 = 621 * CG_2 + 1565 * (1 - CG_2)
        local CF_2 = 4041 * CG_2 + 9 * (1 - CG_2)
        if not ((CE_2 * 1922 + CF_2 * 44 + CE_2 * CF_2) % 16777213 == 3880827) then
            CB_2 = 0
        end
        return CB_2
    elseif c1 == "Weight" then
        local CB_3 = tonumber(c0:GetAttribute("Weight")) or 0
        return CB_3
    else
        local CB_4 = tonumber(c0:GetAttribute("RPS")) or 0
        return CB_4
    end
end
function fns.onBuyBestLasso()
    pcall(yX)
end
function fns.fn796()
    return xT(Workspace:FindFirstChild("TeleportPortal"))
end
function fns.fn801(bK)
    local Bc = bK:GetAttribute("MutationList") or bK:GetAttribute("Mutation")
    local Bc_1 = Bc == ""
    local Be = not Bc
    local Bj = if Be then 1 else 0
    local Bh = 3386 * Bj + 1558 * (1 - Bj)
    local Bi = 3415 * Bj + 676 * (1 - Bj)
    if not ((Bh * 3756 + Bi * 3513 + Bh * Bi) % 16777213 == 2723475) then
        Be = Bc_1
    end
    if Be or Bc == "None" then
        return {}
    end
    return string.split(tostring(Bc), ", ")
end
function fns.fn818()
    return ME_32("SkyIslandPets")
end
function fns.onFeedNow()
    pcall(w_)
end
function fns.onTeleportIsland()
    yl(w5("IslandTeleport"), w8)
end
function fns.fn828(cS)
    local Ct = yY("CatchMinRps", 0)
    local Cu = yY("CatchMinStrength", 0)
    local Cv = yY("CatchMinWeight", 0)
    local Cw = tonumber(cS:GetAttribute("RPS")) or 0
    local Cw_1 = tonumber(cS:GetAttribute("Strength")) or 0
    local Cw_2 = tonumber(cS:GetAttribute("Weight")) or 0
    if Cw < Ct or Cw_1 < Cu or Cw_2 < Cv then
        return false
    end
    return yH(cS, yc(w5("AnimalFilter")), yc(w5("RarityFilter")), yc(w5("MutationFilter")))
end
function fns.fn857()
    if not fns.ME_9("AnimalEsp") then
        wT()
        return
    end
    local Ea = ME_38()
    local Eb = {}
    for i, v in ipairs(yf()) do
        local Ec = v.Parent and fns.ME_6(v)
        if Ec then
            local Ec_1 = xc(v)
            if Ec_1 then
                Eb[v] = true
                local Ed = xv[v]
                if not Ed or not Ed.Parent then
                    Ed = Instance.new("BillboardGui")
                    Ed.Name = "AnimalESP"
                    Ed.AlwaysOnTop = true
                    Ed.Size = UDim2.fromOffset(160, 48)
                    Ed.StudsOffset = Vector3.new(0, 3, 0)
                    Ed.MaxDistance = 2000
                    Ed.Parent = Ea
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "Text"
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.fromScale(1, 1)
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.TextSize = 14
                    textLabel.TextStrokeTransparency = 0.4
                    textLabel.TextWrapped = true
                    textLabel.Parent = Ed
                    xv[v] = Ed
                end
                Ed.Adornee = Ec_1
                Ed.MaxDistance = 2000
                local Text = Ed:FindFirstChild("Text")
                if Text then
                    local Ed_1 = v:GetAttribute("Name") or v.Name
                    local Ed_2 = v:GetAttribute("Rarity") or "Common"
                    local Ed_3 = tonumber(v:GetAttribute("RPS")) or 0
                    local Ed_4 = v:GetAttribute("MutationList") or v:GetAttribute("Mutation")
                    local Ed_5 = Ed_4 or "None"
                    if Ed_5 == "" then
                        Ed_5 = "None"
                    end
                    local Eh_1 = ME_33[Ed_2] or Color3.fromRGB(255, 255, 255)
                    Text.TextColor3 = Eh_1
                    if Ed_5 ~= "None" then
                        Text.Text = string.format("%s\n%s | %s RPS\n%s", Ed_1, Ed_2, tostring(Ed_3), Ed_5)
                    else
                        Text.Text = string.format("%s\n%s | %s RPS", Ed_1, Ed_2, tostring(Ed_3))
                    end
                end
            end
        end
    end
    for k, v in pairs(xv) do
        if not Eb[k] or not k.Parent then
            if v then
                v:Destroy()
            end
            xv[k] = nil
        end
    end
end
function fns.fn865()
    return ME_32("LavaIslandPets")
end
function fns.fn866()
    local Character = x7.Character
    local AP = Character and Character:FindFirstChildOfClass("Humanoid")
    return AP
end
function fns.onExportConfigToClipboard()
    local Lj_1
    local Li_1
    Li_1, Lj_1 = pcall(HttpService.JSONEncode, HttpService, xU())
    if not Li_1 then
        yM:Notify("Failed to encode the config")
        return
    end
    local Li_2 = setclipboard or toclipboard
    local Li_3 = type(Li_2) ~= "function" or not pcall(Li_2, Lj_1)
    if Li_3 then
        yM:Notify("Your executor does not support copying to the clipboard")
        return
    end
    yM:Notify("Config copied to clipboard", 6)
end
function fns.onInputBegan()
    yG = tick()
end
function fns.fn932()
    if not yt.WalkSpeedEnabled.Value then
        local Mi = fns.ME_24()
        if Mi then
            Mi.WalkSpeed = 16
        end
    end
end
function fns.worker6()
    while not yM.Unloaded do
        if fns.ME_9("AutoCollect") then
            pcall(yo)
        end
        task.wait(2)
    end
end
function fns.fn948()
    local B0 = {}
    local B1 = yc(w5("IslandFilter"))
    for i, v in ipairs(wY) do
        local B2 = xN(B1) or B1[v]
        if B2 then
            local B2_1 = Workspace:FindFirstChild(v)
            if B2_1 then
                local B3 = B2_1:FindFirstChild("Pets") or B2_1
                for i, child in ipairs(B3:GetChildren()) do
                    local B2_3 = child:IsA("Model") and child:GetAttribute("Guid") and xc(child)
                    if B2_3 then
                        B0[#B0 + 1] = child
                    end
                end
            end
        end
    end
    return B0
end
function fns.onCopyJoinScript_JobID()
    local lY = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, xX)
    x9(lY, "Copied join script to clipboard")
end
function fns.fn964(o3, o4)
    local Type = o4.Type
    if Type == "Toggle" then
        return { idx = o3, type = "Toggle", value = o4.Value == true }
    elseif Type == "Slider" then
        return { idx = o3, type = "Slider", value = tostring(o4.Value) }
    elseif Type == "Dropdown" then
        return { idx = o3, type = "Dropdown", multi = o4.Multi == true, value = o4.Value }
    elseif Type == "Input" then
        local KQ = o4.Value or ""
        return { idx = o3, type = "Input", text = tostring(KQ) }
    elseif Type == "ColorPicker" then
        return { idx = o3, type = "ColorPicker", value = o4.Value:ToHex(), transparency = o4.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = o3,
            type = "KeyPicker",
            mode = o4.Mode,
            key = o4.Value,
            modifiers = o4.Modifiers,
            toggled = o4.Toggled
        }
    else
        return nil
    end
end
function fns.onTeleportOther()
    yl(w5("OtherTeleport"), wW)
end
function fns.fn1019(aq, ar)
    return string.format('<font color="%s">%s</font>', ar, aq)
end
function fns.onCopyLitecoinAddress()
    x9(fns.ME_13, "Copied Litecoin address")
end
function fns.fn1041()
    if folder and folder.Parent then
        return folder
    end
    local DY_1 = gethui and gethui()
    local DY_2 = DY_1 or CoreGui
    folder = Instance.new("Folder")
    folder.Name = "OuroborosAnimalESP"
    folder.Parent = DY_2
    return folder
end
function fns.fn1042(np, nq)
    local J5 = type(nq) ~= "table" or nq.type ~= "Pets"
    if J5 then
        return false
    elseif xO(np) then
        return false
    elseif not w1(nq, yc(w5("SellAnimals")), yc(w5("SellRarities")), yc(w5("SellMutations"))) then
        return false
    else
        local J5_1 = tonumber(nq.revPerSec) or tonumber(nq.baseRevPerSec)
        local J6 = J5_1
        local Kb = if J6 then 1 else 0
        local J9 = 3943 * Kb + 730 * (1 - Kb)
        local Ka = 1843 * Kb + 3001 * (1 - Kb)
        if not ((J9 * 3517 + Ka * 1651 + J9 * Ka) % 16777213 == 7400060) then
            J6 = 0
        end
        local J5_2 = J6
        if J5_2 > yY("SellMaxRps", 100) then
            return false
        end
        local J5_3 = w5("SellMaxRarity")
        local J6_1 = J5_3 == ""
        local J7 = type(J5_3) ~= "string"
        local Kb_1 = if J7 then 1 else 0
        local J9_1 = 150 * Kb_1 + 1323 * (1 - Kb_1)
        local Ka_1 = 2746 * Kb_1 + 54 * (1 - Kb_1)
        if not ((J9_1 * 254 + Ka_1 * 1625 + J9_1 * Ka_1) % 16777213 == 4912250) then
            J7 = J6_1
        end
        if J7 then
            J5_3 = "Legendary"
        end
        local J7_1 = wQ[nq.rarity or "Common"] or 1
        local J7_2 = wQ[J5_3]
        local Kb_2 = if J7_2 then 1 else 0
        local J9_2 = 850 * Kb_2 + 2651 * (1 - Kb_2)
        local Ka_2 = 1583 * Kb_2 + 1421 * (1 - Kb_2)
        if not ((J9_2 * 2126 + Ka_2 * 2387 + J9_2 * Ka_2) % 16777213 == 6931271) then
            J7_2 = #wS
        end
        if J7_1 > J7_2 then
            return false
        end
        return true
    end
end
function fns.fn1066()
    local DK = ME_32("RoamingPets") or xT(Workspace:FindFirstChild("Spawns")) or xT(Workspace:FindFirstChild("FarmMiddle"))
    return DK
end
function fns.fn1078()
    local JY = yx(true)
    if type(JY) ~= "table" then
        return
    end
    for k, v in pairs(JY) do
        local JY_1 = yM.Unloaded or not fns.ME_9("AutoFavorite")
        if JY_1 then
            break
        elseif ME_27(k, v) then
            fns.ME_1(k)
            task.wait(0.1)
        end
    end
end
function fns.fn1084()
    return xT(Workspace:FindFirstChild("Spawns"))
end
function fns.worker7()
    while not yM.Unloaded do
        if fns.ME_9("AutoBuyLasso") then
            pcall(yX)
        end
        task.wait(1.5)
    end
end
function fns.onRenderStepped(qG)
    if yM.Unloaded then
        return
    end
    local L9 = if fns.ME_9("WalkSpeedEnabled") then 1 else 0
    if L9 == 1 then
        local L3_1 = fns.ME_24()
        if L3_1 then
            L3_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if fns.ME_9("Fly") then
        local L3_2 = xg()
        local L4 = fns.ME_24()
        if L3_2 and L4 then
            L4.PlatformStand = true
            local L4_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                L4_1 = L4_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                L4_1 = L4_1 - CurrentCamera2.CFrame.LookVector
            end
            local Mc = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if Mc == 1 then
                L4_1 = L4_1 - CurrentCamera2.CFrame.RightVector
            end
            local Mf = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if Mf == 1 then
                L4_1 = L4_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                L4_1 = L4_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                L4_1 = L4_1 - Vector3.new(0, 1, 0)
            end
            L3_2.Velocity = Vector3.zero
            if L4_1.Magnitude > 0 then
                L3_2.CFrame = L3_2.CFrame + L4_1.Unit * Options.FlySpeed.Value * qG
            end
        end
    end
end
function fns.fn1161(a6)
    local AG = {}
    if type(a6) == "table" then
        for k, v in pairs(a6) do
            if v == true then
                AG[k] = true
            elseif type(v) == "string" then
                AG[v] = true
            end
        end
    end
    return AG
end
function fns.fn1171()
    x9(ME_29, "Copied Discord invite to clipboard")
end
function fns.fn1185(dE)
    local C7 = Workspace:FindFirstChild(dE)
    if not C7 then
        return nil
    end
    local C8 = C7:FindFirstChild("Pets") or C7
    local C8_1 = Vector3.zero
    local C9 = 0
    for i, child in ipairs(C8:GetChildren()) do
        if child:IsA("Model") then
            local C7_2 = xc(child)
            if C7_2 then
                C8_1 += C7_2.Position
                C9 += 1
            end
        end
    end
    if C9 == 0 then
        return nil
    end
    return C8_1 / C9
end
function fns.fn1201(mu, mv, mw, mx)
    local Jm_4
    local Ji_22, Ji_23
    if type(mu) ~= "table" then
        return false
    elseif not xN(mv) then
        local name = mu.name
        local Jj_1 = not name
        local Jq_1 = if Jj_1 then 1 else 0
        local Jo = 1805 * Jq_1 + 2006 * (1 - Jq_1)
        local Jp = 2018 * Jq_1 + 148 * (1 - Jq_1)
        if not ((Jo * 2055 + Jp * 3348 + Jo * Jp) % 16777213 == 14108029) then
            Jj_1 = not mv[name]
        end
        if Jj_1 then
            return false
        end
        local Jt_1 = if not xN(mw) then 1 else 0
        if Jt_1 == 1 then
            if not mw[mu.rarity or "Common"] then
                return false
            end
            local Jq_2 = if not xN(mx) then 1 else 0
            if Jq_2 == 1 then
                local Ji_3 = mu.mutationList or mu.mutation
                local Jj_3 = {}
                if Jm_4 then
                    Jj_3 = string.split(tostring(Ji_3), ", ")
                end
                if Ji_22 then
                    return true
                end
                for i, v in ipairs(Jj_3) do
                    if mx[v] then
                        break
                    end
                end
                if not Ji_23 then
                    return false
                end
                return true
            end
            return true
        end
        local Jq_3 = if not xN(mx) then 1 else 0
        if Jq_3 == 1 then
            local Ji_8 = mu.mutationList or mu.mutation
            local Jj_4 = {}
            if Jm_4 then
                Jj_4 = string.split(tostring(Ji_8), ", ")
            end
            if Ji_22 then
                return true
            end
            for i, v in ipairs(Jj_4) do
                if mx[v] then
                    break
                end
            end
            if not Ji_23 then
                return false
            end
            return true
        end
        return true
    else
        local Jt_2 = if not xN(mw) then 1 else 0
        if Jt_2 == 1 then
            if not mw[mu.rarity or "Common"] then
                return false
            end
            local Jq_4 = if not xN(mx) then 1 else 0
            if Jq_4 == 1 then
                local Ji_14 = mu.mutationList or mu.mutation
                local Jj_6 = {}
                if Jm_4 then
                    Jj_6 = string.split(tostring(Ji_14), ", ")
                end
                if Ji_22 then
                    return true
                end
                for i, v in ipairs(Jj_6) do
                    if mx[v] then
                        break
                    end
                end
                if not Ji_23 then
                    return false
                end
                return true
            end
            return true
        end
        local Jq_5 = if not xN(mx) then 1 else 0
        if Jq_5 == 1 then
            local Ji_19 = mu.mutationList or mu.mutation
            local Jj_7 = {}
            Jm_4 = Ji_19 and Ji_19 ~= "" and Ji_19 ~= "None"
            if Jm_4 then
                Jj_7 = string.split(tostring(Ji_19), ", ")
            end
            Ji_22 = mx.None and #Jj_7 == 0
            if Ji_22 then
                return true
            end
            Ji_23 = false
            for i, v in ipairs(Jj_7) do
                if mx[v] then
                    Ji_23 = true
                    break
                end
            end
            if not Ji_23 then
                return false
            end
            return true
        end
        return true
    end
end
function fns.worker()
    local Jg_1
    while true do
        task.wait(1)
        if yM.Unloaded then
            break
        end
        local Jf = math.floor(os.clock() - xq)
        if Jf < 60 then
            Jg_1 = Jf .. "s"
        elseif Jf < 3600 then
            Jg_1 = string.format("%dm %ds", Jf // 60, Jf % 60)
        else
            Jg_1 = string.format("%dh %dm", Jf // 3600, Jf % 3600 // 60)
        end
        Label:SetText(xk("Session time", Jg_1, y1))
    end
end
function fns.fn1216()
    return xT(Workspace:FindFirstChild("Dragon_Island"))
end
function fns.fn1220(hD, hE, hF)
    local FW = xg()
    local FX = not FW
    local F1 = if FX then 1 else 0
    local F_ = 1589 * F1 + 2999 * (1 - F1)
    local F0 = 2929 * F1 + 3804 * (1 - F1)
    if not ((F_ * 3993 + F0 * 3234 + F_ * F0) % 16777213 == 3694231) then
        FX = not hD.Parent
    end
    if FX then
        return FW
    end
    local Position = hD.Position
    local FY = Position + Vector3.new(math.cos(hE) * hF, 0, math.sin(hE) * hF)
    FW.CFrame = CFrame.lookAt(FY, Vector3.new(Position.X, FY.Y, Position.Z))
    return FW
end
function fns.fn1233()
    local Dk = {}
    for i, v in ipairs(wY) do
        local Dl = Workspace:FindFirstChild(v)
        if Dl then
            local Dm = Dl:FindFirstChild("Pets") or Dl
            for i, child in ipairs(Dm:GetChildren()) do
                local Dl_2 = child:IsA("Model") and child:GetAttribute("Guid") and xc(child)
                if Dl_2 then
                    Dk[#Dk + 1] = child
                end
            end
        end
    end
    return Dk
end
function fns.fn1237()
    fns.ME_7(yt.AntiGameplayPause.Value)
end
function fns.worker4()
    while not yM.Unloaded do
        if fns.ME_9("AutoCatch") then
            local Mk = xg()
            if Mk then
                yu()
                local Mk_1 = xW()
                local Ml = yW()
                if Ml then
                    x5(Ml, Mk_1)
                    yu()
                end
            end
        end
        task.wait(0.1)
    end
end
function fns.fn1265(eZ, e_)
    local DV = e_[eZ]
    if not DV then
        yM:Notify("Unknown teleport")
        return
    end
    local DW = DV()
    if not DW then
        yM:Notify("Location not available right now")
        return
    end
    x6(DW)
end
function fns.onBuyFoodNow()
    pcall(wZ)
end
function fns.worker13()
    while not yM.Unloaded do
        if fns.ME_9("AutoPickup") then
            pcall(fns.ME_18)
        end
        task.wait(0.5)
    end
end
function fns.fn1299()
    local IX = yc(w5("PickupAnimals"))
    local IY = yc(w5("PickupRarities"))
    local IZ = yc(w5("PickupMutations"))
    for i, v in ipairs(xm()) do
        local I_ = not fns.ME_9("AutoPickup") or yM.Unloaded
        if I_ then
            break
        end
        local I__1 = v.Parent and yH(v, IX, IY, IZ)
        if I__1 then
            xh(v)
            task.wait(0.2)
        end
    end
end
function fns.fn1301()
    if fns.ME_9("AutoPlace") then
        yr()
    elseif w2() then
        yU()
    end
end
function fns.fn1304(oW, oX)
    local KM_1 = (oW == "Toggle" and yt or Options)[oX]
    local KL_2 = type(KM_1) == "table" and KM_1.Type == oW
    return KL_2 and KM_1 or nil
end
function fns.fn1305()
    local A0_1
    local A__1
    A__1, A0_1 = pcall(function()
        return xK.GetController("PenController")
    end)
    if A__1 then
        return A0_1
    end
    return nil
end
function fns.fn1316()
    local Index = yZ.Packages:FindFirstChild("_Index")
    if not Index then
        return nil
    end
    for i, child in ipairs(Index:GetChildren()) do
        if child.Name:find("sleitnick_knit", 1, true) then
            local Ah_1 = child:FindFirstChild("knit") and child.knit:FindFirstChild("Services")
            if Ah_1 then
                return Ah_1
            end
        end
    end
    return nil
end
function fns.fn1333(c3, c4)
    if c4 == "Rarity" then
        return wQ[c3.rarity or "Common"] or 0
    elseif c4 == "Strength" then
        local CH_2 = tonumber(c3.strength) or tonumber(c3.sellPrice)
        return CH_2 or 0
    elseif c4 == "Weight" then
        local CH_3 = (tonumber(c3.weight))
        local CM = if CH_3 then 1 else 0
        local CK = 1549 * CM + 681 * (1 - CM)
        local CL = 3206 * CM + 2051 * (1 - CM)
        if not ((CK * 3866 + CL * 3498 + CK * CL) % 16777213 == 5391903) then
            CH_3 = 0
        end
        return CH_3
    else
        local CH_4 = tonumber(c3.revPerSec) or tonumber(c3.baseRevPerSec)
        return CH_4 or 0
    end
end
function fns.fn1354()
    local Character = x7.Character
    local AS = Character and Character:FindFirstChild("HumanoidRootPart")
    return AS
end
function fns.onUnload()
    yM:Unload()
end
function fns.fn1377(aV)
    local AA = Options[aV]
    return AA and AA.Value or nil
end
function fns.worker12()
    while not yM.Unloaded do
        if fns.ME_9("AutoReplace") then
            pcall(x_)
        end
        task.wait(1.5)
    end
end
function fns.fn1408()
    return ME_32("AbyssIslandPets")
end
function fns.fn1433()
    if not yt.Fly.Value then
        local Mg = fns.ME_24()
        if Mg then
            Mg.PlatformStand = false
        end
    end
end
function fns.fn1439(cF, cG, cH, cI)
    local Ci_7, Ci_10, Ci_11
    if not xN(cG) then
        local Ch_1 = cF:GetAttribute("Name") or cF.Name
        if not cG[Ch_1] then
            return false
        end
        local Cm_1 = if not xN(cH) then 1 else 0
        if Cm_1 == 1 then
            local Ch_2 = cF:GetAttribute("Rarity") or "Common"
            if not cH[Ci_7] then
                return false
            elseif not xN(cI) then
                local Ch_3 = fns.ME_21(cF)
                if Ci_10 then
                    return true
                end
                for i, v in ipairs(Ch_3) do
                    if cI[v] then
                        break
                    end
                end
                if not Ci_11 then
                    return false
                end
                return true
            else
                return true
            end
        elseif not xN(cI) then
            local Ch_4 = fns.ME_21(cF)
            if Ci_10 then
                return true
            end
            for i, v in ipairs(Ch_4) do
                if cI[v] then
                    break
                end
            end
            if not Ci_11 then
                return false
            end
            return true
        else
            return true
        end
    else
        local Cm_2 = if not xN(cH) then 1 else 0
        if Cm_2 == 1 then
            local Ch_5 = cF:GetAttribute("Rarity") or "Common"
            Ci_7 = Ch_5
            if not cH[Ci_7] then
                return false
            elseif not xN(cI) then
                local Ch_6 = fns.ME_21(cF)
                if Ci_10 then
                    return true
                end
                for i, v in ipairs(Ch_6) do
                    if cI[v] then
                        break
                    end
                end
                if not Ci_11 then
                    return false
                end
                return true
            else
                return true
            end
        elseif not xN(cI) then
            local Ch_7 = fns.ME_21(cF)
            Ci_10 = cI.None and #Ch_7 == 0
            if Ci_10 then
                return true
            end
            Ci_11 = false
            for i, v in ipairs(Ch_7) do
                if cI[v] then
                    Ci_11 = true
                    break
                end
            end
            if not Ci_11 then
                return false
            end
            return true
        else
            return true
        end
    end
end
function fns.fn1443()
    local DR = xT(Workspace:FindFirstChild("FishingIsland")) or ME_32("WaterIslandPets")
    return DR
end
function fns.fn1444(fj)
    local fm = yc(w5("EspAnimals"))
    local fo = yc(w5("EspRarities"))
    local fp = yc(w5("EspMutations"))
    return yH(fj, fm, fo, fp)
end
wQ = nil
wR = nil
wS = nil
wT = nil
fns.ME_21 = nil
wW = nil
wX = nil
wY = nil
wZ = nil
w_ = nil
ME_32 = nil
w1 = nil
w2 = nil
connection3 = nil
w5 = nil
w6 = nil
fns.ME_1 = nil
w8 = nil
xb = nil
xc = nil
xe = nil
xf = nil
xg = nil
xh = nil
Settings = nil
xk = nil
xl = nil
xm = nil
collectAllPetCash = nil
ME_38 = nil
xq = nil
xr = nil
Mutations = nil
connection2 = nil
xv = nil
fns.ME_9 = nil
xx = nil
Pets2 = nil
xA = nil
folder = nil
fns.ME_24 = nil
local wU, w3, w9, xa, removeTool, sellPet, Food, pickupRequest, RequestPlacePet
xH = nil
ME_33 = nil
xK = nil
xN = nil
xO = nil
xR = nil
xS = nil
xT = nil
xU = nil
fns.ME_15 = nil
xW = nil
xX = nil
xZ = nil
x_ = nil
ME_29 = nil
x2 = nil
Label = nil
x5 = nil
x6 = nil
x7 = nil
x9 = nil
ya = nil
CurrentCamera2 = nil
yc = nil
fns.ME_12 = nil
ye = nil
yf = nil
Workspace = nil
ME_27 = nil
Options = nil
yl = nil
ym = nil
yo = nil
ME_35 = nil
local xD, Lassos, xF, UpdateProgress, xJ, minigameRequest, xM, xP, ThrowLasso, xY, FeedPet, BuyFood, GetPetInventoryData, AttemptSwapPet, yi, yn
CoreGui = nil
yr = nil
getPenRootCFrame = nil
yt = nil
yu = nil
yv = nil
fns.ME_7 = nil
yx = nil
yA = nil
yB = nil
fns.ME_18 = nil
yD = nil
HttpService = nil
yG = nil
yH = nil
ME_30 = nil
VirtualUser = nil
yM = nil
yN = nil
yO = nil
fns.ME_6 = nil
yQ = nil
UserInputService = nil
yU = nil
fns.ME_13 = nil
yW = nil
yX = nil
yY = nil
yZ = nil
y_ = nil
y1 = nil
local GuiService, BuyLasso, EquipLasso, yJ, yL, yR, yT, y0, y2
GuiService = nil
BuyLasso = nil
EquipLasso = nil
yJ = nil
yL = nil
yR = nil
yT = nil
y0 = nil
y2 = nil
local y3
yZ, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, x7, ME_29, fns.ME_15, fns.ME_19, xK, Lassos, Pets2, Mutations, Food, Settings, ME_67, ME_78 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ME_52 = game:GetService("Players")
yZ = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
x7 = ME_52.LocalPlayer
local ME_55 = "Catch And Tame!"
ME_29 = "https://discord.gg/ehKVq7pf7v"
if (fns.ME_19 and not yZ and (not yZ or yZ) and (not yZ or not fns.ME_19 or yZ and not fns.ME_19) or (not yZ and fns.ME_19 and (yZ and not yZ) or yZ and fns.ME_19 and (not fns.ME_19 or not yZ))) and not (fns.ME_19 and not yZ and (not yZ or yZ) and (not yZ or not fns.ME_19 or yZ and not fns.ME_19) or (not yZ and fns.ME_19 and (yZ and not yZ) or yZ and fns.ME_19 and (not fns.ME_19 or not yZ))) then
    xK = fns.ME_15:WaitForChild("Packages"):WaitForChild("knit")
    yZ = require(xK)
else
    fns.ME_15 = "https://rscripts.net/@Ouroboros"
    fns.ME_19 = yZ:WaitForChild("Packages"):WaitForChild("knit")
    xK = require(fns.ME_19)
end
Lassos = require(yZ.Configs.Lassos)
Pets2 = require(yZ.Configs.Pets)
Mutations = require(yZ.Configs.Pets.Mutations)
Food = require(yZ.Configs.Food)
Settings = require(yZ.Configs.Pets.Settings)
local ME_39 = fns.fn1316
if (5 or (HttpService or HttpService) or false or (HttpService or HttpService or "https://discord.gg/ehKVq7pf7v" or (HttpService or ME_29) and false)) and ((not HttpService or 5 or (not HttpService or ME_29)) and (false or ME_39) and ((HttpService and false) and (false or not HttpService and false))) or not ((5 or (HttpService or HttpService) or false or (HttpService or HttpService or "https://discord.gg/ehKVq7pf7v" or (HttpService or ME_29) and false)) and ((not HttpService or 5 or (not HttpService or ME_29)) and (false or ME_39) and ((HttpService and false) and (false or not HttpService and false)))) then
    ME_67 = ME_39()
else
    ME_67()
end
if (not yZ and not Mutations or not yZ and Workspace) and (Mutations and not GuiService or GuiService and Workspace) and not ((not yZ and not Mutations or not yZ and Workspace) and (Mutations and not GuiService or GuiService and Workspace)) then
    ME_67 = ME_78
else
    ME_78 = ME_67
end
if ME_78 then
    ME_78 = ME_67.LassoService.RE
end
EquipLasso, BuyLasso, getPenRootCFrame, AttemptSwapPet, GetPetInventoryData, BuyFood, FeedPet, ThrowLasso, minigameRequest, UpdateProgress, RequestPlacePet, pickupRequest, collectAllPetCash, sellPet, removeTool, xa, w3, wY, wS, wQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.ME_19 = ME_78
EquipLasso = fns.ME_19:WaitForChild("EquipLasso")
BuyLasso = fns.ME_19:WaitForChild("BuyLasso")
getPenRootCFrame = ME_67.PenService.RF:WaitForChild("getPenRootCFrame")
AttemptSwapPet = ME_67.PetStorageService.RE:WaitForChild("AttemptSwapPet")
GetPetInventoryData = ME_67.PetStorageService.RE:WaitForChild("GetPetInventoryData")
BuyFood = ME_67.FoodService.RE:WaitForChild("BuyFood")
FeedPet = ME_67.FoodService.RF:WaitForChild("FeedPet")
ME_52 = yZ:WaitForChild("Remotes")
ThrowLasso = ME_52:WaitForChild("ThrowLasso")
minigameRequest = ME_52:WaitForChild("minigameRequest")
UpdateProgress = ME_52:WaitForChild("UpdateProgress")
RequestPlacePet = ME_52:WaitForChild("RequestPlacePet")
pickupRequest = ME_52:WaitForChild("pickupRequest")
collectAllPetCash = ME_52:WaitForChild("collectAllPetCash")
sellPet = ME_52:WaitForChild("sellPet")
if (ME_52 and not AttemptSwapPet or not removeTool and ME_52) and (not ThrowLasso or not removeTool or removeTool and AttemptSwapPet) and (UpdateProgress and UpdateProgress or (not wS or not UpdateProgress) or (not removeTool and ThrowLasso or (ME_52 or not ME_52))) or not ((ME_52 and not AttemptSwapPet or not removeTool and ME_52) and (not ThrowLasso or not removeTool or removeTool and AttemptSwapPet) and (UpdateProgress and UpdateProgress or (not wS or not UpdateProgress) or (not removeTool and ThrowLasso or (ME_52 or not ME_52)))) then
    removeTool = ME_52:WaitForChild("removeTool")
    xa = ME_52:WaitForChild("toggleFavorite")
    w3 = {
        [1] = 14,
        [2] = 18,
        [3] = 24,
        [4] = 30,
        [5] = 38,
        [6] = 47,
        [7] = 69,
        [8] = 81,
        [9] = 82,
        [10] = 98
    }
else
    removeTool:WaitForChild("removeTool")
    w3 = removeTool:WaitForChild("toggleFavorite")
    xa = {
        [3] = 24,
        [6] = 47,
        [2] = 18,
        [10] = 98,
        [4] = 30,
        [1] = 14,
        [5] = 38,
        [9] = 82,
        [7] = 69,
        [8] = 81
    }
end
wY = {
    "RoamingPets",
    "IceIslandPets",
    "BeeIslandPets",
    "SkyIslandPets",
    "WaterIslandPets",
    "GalaxyIslandPets",
    "NewEventIslandPets",
    "SafariIslandPets",
    "CaveIslandPets",
    "DeepCavePets",
    "VolcanoIslandPets",
    "LavaIslandPets",
    "AbyssIslandPets",
    "SummerRoamingPets"
}
wS = {
    "Common",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Divine",
    "Godly",
    "Boss",
    "Exclusive",
    "Secret"
}
wQ = {}
for i, v in ipairs(wS) do
    wQ[v] = i
end
ME_39, yM, fns.ME_10, yB, yt, Options, ME_90, fns.ME_19, y1, ME_73, fns.ME_13, yO, ME_30, yD, yv, ym, ya, ME_47, ME_59, ME_70, ME_82, fns.ME_4, fns.ME_25, ME_67, yT, yL, x9, xS, xA, xk, fns.ME_9, w5, yY, yc, xN, fns.ME_24, xg, wU, yR, ye, xP, xc, fns.ME_21, ME_85, ME_31, ME_78 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ME_52 = 116
repeat
    ME_62 = (ME_52 * 17 + 17) % 18 + 1
    if ME_62 <= 9 then
        if ME_62 <= 5 then
            if ME_62 <= 3 then
                if ME_62 <= 2 then
                    if ME_62 <= 1 then
                        ME_50 = { "teswuksvss", "sjykyni", "wivzrxzmj", "utdftfqiq", "gqrezpu", "qtvhx", "koiyre" }
                        local OG = ME_52
                        ME_36 = ME_50[OG % 7 + 1]
                        if ME_36:len() >= ME_36:gsub("(.)", "%1%1", OG % 3 % 2 + 1):len() then
                            ME_73 = fns.fn112
                        else
                            fns.ME_9 = fns.fn112
                        end
                        ME_52 = (ME_52 + 35) % 144
                    else
                        ME_50 = (vector.create((ME_52 * 2 + 3) % 11 + 1, (ME_52 * 3 + 11) % 13 + 1, (ME_52 * 6 + 1) % 17 + 1))
                        ME_36 = (vector.create((ME_52 * 5 + 4) % 11 + 1, (ME_52 * 2 + 7) % 13 + 1, (ME_52 * 2 + 15) % 17 + 1))
                        local N7 = vector.cross(ME_50, ME_36)
                        local N8 = vector.dot(ME_50, ME_36)
                        if vector.dot(N7, N7) + N8 * N8 == vector.dot(ME_50, ME_50) * vector.dot(ME_36, ME_36) then
                            w5 = fns.fn1377
                            yY = fns.fn755
                            yc = fns.fn1161
                            xN = fns.fn393
                            fns.ME_24 = fns.fn866
                        else
                            yY = fns.fn1377
                            yc = fns.fn755
                            w5 = fns.fn1161
                            fns.ME_24 = fns.fn393
                            xN = fns.fn866
                        end
                        ME_52 = (ME_52 + 17) % 144
                    end
                else
                    local Pd = bit32.rrotate(bit32.bxor(bit32.lrotate(ME_52, 26), string.byte(tostring(xS))), 8)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Pd, 3721978286), 18), 2260432739) ~= bit32.lrotate(Pd, 18) then
                        yR = fns.fn1354
                        ye = fns.fn166
                        xg = fns.fn710
                        wU = fns.fn1305
                    else
                        xg = fns.fn1354
                        wU = fns.fn166
                        yR = fns.fn710
                        ye = fns.fn1305
                    end
                    ME_52 = (ME_52 + 89) % 144
                end
            elseif ME_62 <= 4 then
                ME_50 = (vector.create((ME_52 * 4 + 8) % 11 + 1, (ME_52 * 4 + 11) % 13 + 1, (ME_52 * 7 + 9) % 17 + 1))
                ME_36 = (vector.create((ME_52 * 4 + 3) % 11 + 1, (ME_52 * 10 + 1) % 13 + 1, (ME_52 * 7 + 7) % 17 + 1))
                fns.ME_16 = (vector.create((ME_52 * 3 + 3) % 11 + 1, (ME_52 * 9 + 1) % 13 + 1, (ME_52 * 5 + 6) % 17 + 1))
                ME_88 = (vector.create((ME_52 * 2 + 6) % 11 + 1, (ME_52 * 8 + 1) % 13 + 1, (ME_52 * 11 + 11) % 17 + 1))
                if vector.dot(vector.cross(ME_50, ME_36), (vector.cross(fns.ME_16, ME_88))) == vector.dot(ME_50, fns.ME_16) * vector.dot(ME_36, ME_88) - vector.dot(ME_50, ME_88) * vector.dot(ME_36, fns.ME_16) then
                    xP = fns.fn302
                else
                    ye = fns.fn302
                end
                ME_52 = (ME_52 + 17) % 144
            else
                if ME_52 * 118168641 + 7 + 3 >= ME_52 * 118168641 + 7 + 3 + 1 then
                    fns.ME_25 = fns.fn659
                else
                    xc = fns.fn659
                end
                ME_52 = (ME_52 + 53) % 144
            end
        elseif ME_62 <= 7 then
            if ME_62 <= 6 then
                if (ME_52 * 2 + 9) * 13 % 3 == ((ME_52 * 2 + 9) * 13 + 6) % 3 then
                    fns.ME_21 = fns.fn801
                    ME_85 = fns.fn524
                    ME_31 = fns.fn144
                else
                    ME_85 = fns.fn801
                    ME_31 = fns.fn524
                    fns.ME_21 = fns.fn144
                end
                ME_52 = (ME_52 + 125) % 144
            else
                ME_50 = { "nfebcygu", "bqik", "flwbqjpgahob", "kiswsihwh", "euyo", "ybrhncrvnixb", "cikcpjft", "jbkmnuzsr" }
                if ME_50[(ME_52 * 84 + 73) % 8 + 1] <= ME_50[(ME_52 * 84 + 73) % 8 + 1] then
                    ME_78 = fns.fn167
                else
                    w5 = fns.fn167
                end
                ME_52 = (ME_52 + 125) % 144
            end
        elseif ME_62 <= 8 then
            if (ME_52 * 3 + 5) * 17 % 4 == ((ME_52 * 3 + 5) * 17 + 14) % 4 then
                wU = {}
            else
                yT = {}
            end
            ME_52 = (ME_52 + 53) % 144
        else
            local Pj = bit32.rrotate(bit32.bxor(bit32.lrotate(ME_52, 8), string.byte(tostring(ya))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Pj, 3429926200), 14), 558773020) == bit32.lrotate(Pj, 14) then
                yL = {}
            else
                y1 = {}
            end
            ME_52 = (ME_52 + 125) % 144
        end
    elseif ME_62 <= 14 then
        if ME_62 <= 12 then
            if ME_62 <= 11 then
                if ME_62 <= 10 then
                    if ME_52 * 120035993 + 2 + 3 >= ME_52 * 120035993 + 2 + 3 + 4 then
                        ME_73 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        ME_39 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    ME_52 = (ME_52 + 143) % 144
                else
                    ME_50 = { "zwg", "rhxpiz", "yyea", "jdrmwpprq", "bjyt", "pyaej", "haounepqny", "lpxgix", "nyxedwezbov" }
                    local Pg = ME_52
                    ME_36 = ME_50[Pg % 9 + 1]
                    if ME_36:len() <= ME_36:reverse():rep(Pg % 3 + 2):len() then
                        yM = loadstring(game:HttpGet(ME_39 .. "Library.lua"))()
                        fns.ME_10 = loadstring(game:HttpGet(ME_39 .. "addons/ThemeManager.lua"))()
                        yB = loadstring(game:HttpGet(ME_39 .. "addons/SaveManager.lua"))()
                        yt = yM.Toggles
                        Options = yM.Options
                    else
                        fns.ME_10 = loadstring(game:HttpGet(Options .. "Library.lua"))()
                        ME_39 = loadstring(game:HttpGet(Options .. "addons/ThemeManager.lua"))()
                        yM = loadstring(game:HttpGet(Options .. "addons/SaveManager.lua"))()
                        yB = fns.ME_10.Toggles
                        yt = fns.ME_10.Options
                    end
                    ME_52 = (ME_52 + 35) % 144
                end
            else
                local Qe = bit32.rrotate(bit32.bxor(bit32.lrotate(ME_52, 9), string.byte(tostring(xN))), 11)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Qe, 3624902782), 4), 2163869677) == bit32.lrotate(Qe, 4) then
                    x9 = fns.fn206
                    xS = fns.fn1171
                    xA = fns.fn1019
                    xk = fns.fn365
                    ME_90 = "#7fd47f"
                else
                    xk = fns.fn206
                    xA = fns.fn1171
                    xS = fns.fn1019
                    ME_90 = fns.fn365
                    x9 = "#7fd47f"
                end
                ME_52 = (ME_52 + 17) % 144
            end
        elseif ME_62 <= 13 then
            local Ot = bit32.rrotate(bit32.bxor(bit32.lrotate(ME_52, 22), string.byte(tostring(xN))), 30)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ot, 584920875), 2907162922), (bit32.bxor(bit32.band(Ot, 3710046420), 216086976))), 2907162922), 216086976) ~= Ot then
                ME_73 = "#6ec1ff"
                fns.ME_19 = "#e8a34d"
                y1 = "#8b93a3"
            else
                fns.ME_19 = "#6ec1ff"
                y1 = "#e8a34d"
                ME_73 = "#8b93a3"
            end
            ME_52 = (ME_52 + 107) % 144
        else
            if ME_52 * 128958213 + 6 + 3 <= ME_52 * 128958213 + 6 + 3 + 6 then
                fns.ME_13 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
            else
                y1 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
            end
            ME_52 = (ME_52 + 143) % 144
        end
    elseif ME_62 <= 16 then
        if ME_62 <= 15 then
            local O6 = bit32.rrotate(bit32.bxor(bit32.lrotate(ME_52, 30), string.byte(tostring(fns.ME_24))), 12)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(O6, 2093604981), 86564352), (bit32.bxor(bit32.band(O6, 2201362314), 2395205851))), 86564352), 2395205851) == O6 then
                yO = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            else
                wU = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            end
            ME_52 = (ME_52 + 125) % 144
        else
            ME_50 = (vector.create((ME_52 * 5 + 5) % 11 + 1, (ME_52 * 4 + 13) % 13 + 1, (ME_52 * 1 + 15) % 17 + 1))
            local Os = vector.floor(ME_50) + vector.ceil(ME_50 * -1)
            if vector.dot(Os, Os) == 2 then
                yD = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                yv = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                ym = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                ME_30 = "https://paypal.me/TheTruckerGOD"
            else
                ME_30 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                yD = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                yv = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                ym = "https://paypal.me/TheTruckerGOD"
            end
            ME_52 = (ME_52 + 143) % 144
        end
    elseif ME_62 <= 17 then
        if (fns.ME_13 or yY or (not wU or yY)) and (not w5 and not yv or fns.ME_13 and yM) and not ((fns.ME_13 or yY or (not wU or yY)) and (not w5 and not yv or fns.ME_13 and yM)) then
            ME_47 = "https://venmo.com/u/miserablemusic"
            ME_59 = "#345d9d"
            ya = "#f7931a"
        else
            ya = "https://venmo.com/u/miserablemusic"
            ME_47 = "#345d9d"
            ME_59 = "#f7931a"
        end
        ME_52 = (ME_52 + 17) % 144
    else
        if (ME_52 * 2 + 7) * 16 % 3 == ((ME_52 * 2 + 7) * 16 + 3) % 3 then
            ME_70 = "#627eea"
            ME_82 = "#26a17b"
            fns.ME_4 = "#14f195"
            fns.ME_25 = "#0070ba"
            ME_67 = "#008cff"
        else
            ME_82 = "#627eea"
            ME_70 = "#26a17b"
            fns.ME_25 = "#14f195"
            ME_67 = "#0070ba"
            fns.ME_4 = "#008cff"
        end
        ME_52 = (ME_52 + 53) % 144
    end
until (ME_52 * 89 + 52) % 144 == 134
for k, v in pairs(Food) do
    if type(v) == "table" then
        yL[#yL + 1] = k
        ME_52 = type(v.Price) == "number" and v.Price == v.Price and v.Price > 0 and v.Price < 1000000000000
        if ME_52 then
            ME_52 = #yT + 1
            ME_39 = v.Price
            ME_62 = tonumber(v.XP) or 0
            ME_50 = v.Rarity or "Common"
            yT[ME_52] = { Name = k, Price = ME_39, XP = ME_62, Rarity = ME_50 }
        end
    end
end
table.sort(yL)
table.sort(yT, fns.fn723)
ME_36 = {}
for i, v in ipairs(yT) do
    ME_36[#ME_36 + 1] = v.Name
end
xr, xl, xf, xb, ME_39, w8, fns.ME_16, wW, ME_50, xR, yH, xe, yn, xY, w6, yQ, x6, xT, ME_32, yf, ME_62 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ME_52 = 3
repeat
    ME_88 = (ME_52 * 7 + 2) % 9 + 1
    if ME_88 <= 5 then
        if ME_88 <= 3 then
            if ME_88 <= 2 then
                if ME_88 <= 1 then
                    ME_76 = (vector.create((ME_52 * 7 + 7) % 11 + 1, (ME_52 * 6 + 4) % 13 + 1, (ME_52 * 12 + 15) % 17 + 1))
                    ME_65 = (vector.create((ME_52 * 5 + 5) % 11 + 1, (ME_52 * 8 + 5) % 13 + 1, (ME_52 * 10 + 17) % 17 + 1))
                    ME_54 = (vector.create((ME_52 * 4 + 7) % 5 + 1, (ME_52 * 5 + 6) % 7 + 1, (ME_52 * 4 + 4) % 9 + 1))
                    if math.abs((vector.angle(ME_76, ME_65, ME_54))) - math.abs((vector.angle(ME_65, ME_76, ME_54))) == 2 then
                        yQ = fns.fn500
                    else
                        x6 = fns.fn500
                    end
                    ME_52 = (ME_52 + 13) % 36
                else
                    ME_76 = (vector.create((ME_52 * 3 + 8) % 11 + 1, (ME_52 * 11 + 10) % 13 + 1, (ME_52 * 5 + 5) % 17 + 1))
                    ME_65 = (vector.create((ME_52 * 4 + 1) % 11 + 1, (ME_52 * 2 + 12) % 13 + 1, (ME_52 * 3 + 11) % 17 + 1))
                    ME_54 = (vector.create((ME_52 * 5 + 4) % 11 + 1, (ME_52 * 4 + 5) % 13 + 1, (ME_52 * 12 + 16) % 17 + 1))
                    ME_41 = (vector.create((ME_52 * 4 + 5) % 11 + 1, (ME_52 * 3 + 11) % 13 + 1, (ME_52 * 13 + 13) % 17 + 1))
                    if vector.dot(vector.cross(ME_76, ME_65), (vector.cross(ME_54, ME_41))) == vector.dot(ME_76, ME_54) * vector.dot(ME_65, ME_41) - vector.dot(ME_76, ME_41) * vector.dot(ME_65, ME_54) + 5 then
                        yf = function(du)
                            local CZ_5
                            local CY_5
                            if not du then
                                return nil
                            elseif du:IsA("BasePart") then
                                return du.Position
                            elseif du:IsA("Model") then
                                CY_5, CZ_5 = pcall(function()
                                    return du:GetPivot()
                                end)
                                if CY_5 and CZ_5 then
                                    return CZ_5.Position
                                end
                                local CY_6 = du.PrimaryPart or du:FindFirstChildWhichIsA("BasePart", true)
                                local CZ_6 = CY_6
                                if CY_6 then
                                    CY_6 = CZ_6.Position
                                end
                                local CZ_7 = CY_6
                                local C6 = if CZ_7 then 1 else 0
                                local C4 = 1234 * C6 + 2826 * (1 - C6)
                                local C5 = 1378 * C6 + 1910 * (1 - C6)
                                if not ((C4 * 2881 + C5 * 2741 + C4 * C5) % 16777213 == 9032704) then
                                    CZ_7 = nil
                                end
                                return CZ_7
                            else
                                local BasePart = du:FindFirstChildWhichIsA("BasePart", true)
                                return BasePart and BasePart.Position or nil
                            end
                        end
                        xT = fns.fn1185
                        ME_32 = fns.fn1233
                    else
                        xT = function(du)
                            local CZ_1
                            local CY_1
                            if not du then
                                return nil
                            elseif du:IsA("BasePart") then
                                return du.Position
                            elseif du:IsA("Model") then
                                CY_1, CZ_1 = pcall(function()
                                    return du:GetPivot()
                                end)
                                if CY_1 and CZ_1 then
                                    return CZ_1.Position
                                end
                                local CY_2 = du.PrimaryPart or du:FindFirstChildWhichIsA("BasePart", true)
                                local CZ_2 = CY_2
                                if CY_2 then
                                    CY_2 = CZ_2.Position
                                end
                                local CZ_3 = CY_2
                                local C6 = if CZ_3 then 1 else 0
                                local C4 = 1234 * C6 + 2826 * (1 - C6)
                                local C5 = 1378 * C6 + 1910 * (1 - C6)
                                if not ((C4 * 2881 + C5 * 2741 + C4 * C5) % 16777213 == 9032704) then
                                    CZ_3 = nil
                                end
                                return CZ_3
                            else
                                local BasePart = du:FindFirstChildWhichIsA("BasePart", true)
                                return BasePart and BasePart.Position or nil
                            end
                        end
                        ME_32 = fns.fn1185
                        yf = fns.fn1233
                    end
                    ME_52 = (ME_52 + 22) % 36
                end
            else
                ME_76 = {
                    "nuhfgspa",
                    "tkyml",
                    "thxqzzwzxd",
                    "kpd",
                    "ineuqpqfry",
                    "leznftzz",
                    "ugozuqpi",
                    "jczwoyvm",
                    "qghcxgx"
                }
                local OH = ME_52
                ME_65 = ME_76[OH % 9 + 1]
                if ME_65:len() <= ME_65:reverse():rep(OH % 3 + 2):len() then
                    ME_39 = require(yZ.Configs.QuickTravelConfig)
                else
                    yZ = require(ME_39.Configs.QuickTravelConfig)
                end
                ME_52 = (ME_52 + 31) % 36
            end
        elseif ME_88 <= 4 then
            ME_76 = { "brg", "sxaqh", "zetv", "elzsuv", "osbicmpqmup", "tnrxsgk", "zfkznjuyirm", "gmxumc" }
            local OQ = ME_52
            ME_65 = ME_76[OQ % 8 + 1]
            if ME_65:len() >= ME_65:reverse():rep(OQ % 3 + 2):len() then
                fns.ME_16 = {}
                wW = {}
                w8 = {}
            else
                w8 = {}
                fns.ME_16 = {}
                wW = {}
            end
            ME_52 = (ME_52 + 22) % 36
        else
            if ME_52 * 24293357 + 13 + 4 <= ME_52 * 24293357 + 13 + 4 + 6 then
                ME_50 = {}
                ME_62 = fns.fn599
            else
                ME_62 = {}
                ME_50 = fns.fn599
            end
            ME_52 = (ME_52 + 22) % 36
        end
    elseif ME_88 <= 7 then
        if ME_88 <= 6 then
            if ME_52 * 62294851 + 7 + 6 <= ME_52 * 62294851 + 7 + 6 + 6 then
                xR = fns.fn948
                yH = fns.fn1439
            else
                yH = fns.fn948
                xR = fns.fn1439
            end
            ME_52 = (ME_52 + 13) % 36
        else
            ME_76 = (vector.create((ME_52 * 6 + 9) % 11 + 1, (ME_52 * 6 + 3) % 13 + 1, (ME_52 * 11 + 15) % 17 + 1))
            ME_65 = (vector.create((ME_52 * 3 + 4) % 11 + 1, (ME_52 * 7 + 7) % 13 + 1, (ME_52 * 10 + 5) % 17 + 1))
            ME_54 = (vector.create((ME_52 * 3 + 5) % 11 + 1, (ME_52 * 9 + 6) % 13 + 1, (ME_52 * 7 + 3) % 17 + 1))
            ME_41 = (vector.create((ME_52 * 3 + 2) % 11 + 1, (ME_52 * 8 + 7) % 13 + 1, (ME_52 * 15 + 2) % 17 + 1))
            if vector.dot(vector.cross(ME_76, ME_65), (vector.cross(ME_54, ME_41))) == vector.dot(ME_76, ME_54) * vector.dot(ME_65, ME_41) - vector.dot(ME_76, ME_41) * vector.dot(ME_65, ME_54) then
                xe = fns.fn828
                yn = fns.fn776
            else
                yn = fns.fn828
                xe = fns.fn776
            end
            ME_52 = (ME_52 + 13) % 36
        end
    elseif ME_88 <= 8 then
        ME_88 = {
            "vjlpvtao",
            "ulhs",
            "mbltdwtcebhx",
            "dlsrngg",
            "cfhqg",
            "vsixrboch",
            "osrk",
            "qasaqs",
            "rvkaoooj",
            "mlrfccmgw",
            "kgvzl",
            "hqstowacltde",
            "qhqnro",
            "ogrx",
            "dzcwopgr",
            "uhhkqaulkhke"
        }
        if ME_88[(ME_52 * 51 + 58) % 16 + 1] < ME_88[(ME_52 * 51 + 58) % 16 + 1] then
            xf = fns.fn1333
            xb = {}
            w6 = 0
            xY = fns.fn699
        else
            xY = fns.fn1333
            xf = {}
            xb = 0
            w6 = fns.fn699
        end
        ME_52 = (ME_52 + 13) % 36
    else
        ME_88 = (vector.create((ME_52 * 5 + 4) % 11 + 1, (ME_52 * 8 + 7) % 13 + 1, (ME_52 * 3 + 16) % 17 + 1))
        ME_76 = (vector.create((ME_52 * 3 + 4) % 11 + 1, (ME_52 * 7 + 8) % 13 + 1, (ME_52 * 4 + 14) % 17 + 1))
        ME_65 = (vector.create((ME_52 * 4 + 3) % 5 + 1, (ME_52 * 4 + 1) % 7 + 1, (ME_52 * 2 + 4) % 9 + 1))
        if math.abs((vector.angle(ME_88, ME_76, ME_65))) - math.abs((vector.angle(ME_76, ME_88, ME_65))) == 0 then
            yQ = fns.fn567
        else
            xR = fns.fn567
        end
        ME_52 = (ME_52 + 13) % 36
    end
until (ME_52 * 11 + 4) % 36 == 19
for k, v in pairs(ME_39) do
    local Aa = k
    if type(v) == "table" then
        ME_52 = v.Title or tostring(Aa)
        ME_39 = ME_52
        ME_62(w8, fns.ME_16, ME_39, function()
            local QuickTravel = Workspace:FindFirstChild("QuickTravel")
            local DB = QuickTravel and QuickTravel:FindFirstChild(Aa)
            local DA_1 = DB
            if DB then
                DB = DA_1:FindFirstChild("Marker")
            end
            if not DB then
                DB = DA_1
            end
            return xT(DB)
        end)
    end
end
ME_33, folder, xv, xD, yl, ME_38, wT, fns.ME_6, xZ, xx, yx, w9, yr, w2, yU, yu, xW, yX, y2, x5, yW, xm, yi, xF, y0, wZ, xJ, xM, w_, xh, yJ, x_, fns.ME_18 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ME_62(w8, fns.ME_16, "Ice Island", fns.fn61)
ME_62(w8, fns.ME_16, "Sky Island", fns.fn818)
ME_62(w8, fns.ME_16, "Galaxy Island", fns.fn17)
ME_62(w8, fns.ME_16, "Lava Island", fns.fn865)
ME_62(w8, fns.ME_16, "Water Island", fns.fn280)
ME_62(w8, fns.ME_16, "Abyss Island", fns.fn1408)
ME_62(w8, fns.ME_16, "Main Island", fns.fn1066)
table.sort(fns.ME_16)
ME_62(wW, ME_50, "My Pen", fns.fn434)
ME_62(wW, ME_50, "Spawn", fns.fn1084)
ME_62(wW, ME_50, "Farm", fns.fn305)
ME_62(wW, ME_50, "Teleport Portal", fns.fn796)
ME_62(wW, ME_50, "Cave Portal", fns.fn511)
ME_62(wW, ME_50, "Alien Teleport", fns.fn722)
ME_62(wW, ME_50, "Fishing Island", fns.fn1443)
ME_62(wW, ME_50, "Dragon Island Area", fns.fn1216)
ME_62(wW, ME_50, "Volcano Area", fns.fn160)
ME_62(wW, ME_50, "Sunken Area", fns.fn643)
table.sort(ME_50)
yl = fns.fn1265
do
    ME_33 = {
        Common = Color3.fromRGB(200, 200, 200),
        Rare = Color3.fromRGB(80, 160, 255),
        Epic = Color3.fromRGB(180, 90, 255),
        Legendary = Color3.fromRGB(255, 190, 60),
        Mythical = Color3.fromRGB(255, 80, 120),
        Divine = Color3.fromRGB(120, 255, 220),
        Godly = Color3.fromRGB(255, 120, 40),
        Boss = Color3.fromRGB(255, 60, 60),
        Exclusive = Color3.fromRGB(255, 80, 200),
        Secret = Color3.fromRGB(40, 255, 140)
    }
end
xv = {}
ME_38 = fns.fn1041
wT = fns.fn741
fns.ME_6 = fns.fn1444
xZ = fns.fn857
xD = false
xx = function()
    local EA_1
    local Ez = xD or typeof(getconnections) ~= "function"
    local Ez_1
    if Ez then
        return
    end
    Ez_1, EA_1 = pcall(getconnections, GetPetInventoryData.OnClientEvent)
    local EB = not Ez_1 or type(EA_1) ~= "table"
    if EB then
        return
    end
    for i, v in ipairs(EA_1) do
        local Ex
        local EL = v
        local Function = EL.Function
        if typeof(Function) == "function" then
            Ex = ""
            pcall(function()
                local Ev = debug.info(Function, "s") or ""
                Ex = Ev
            end)
            if string.find(Ex, "FarmHouseUI", 1, true) then
                pcall(function()
                    EL:Disable()
                end)
                GetPetInventoryData.OnClientEvent:Connect(function(...)
                    pcall(Function, ...)
                end)
                xD = true
            end
        end
    end
end
yx = function(f7)
    local EN
    EN = nil
    xx()
    local EO = not f7
    if EO ~= false then
        EO = os.clock() - xb < 1.5
    end
    if EO then
        EO = next(xf) ~= nil
    end
    if EO then
        return xf
    end
    EN = nil
    local connection = GetPetInventoryData.OnClientEvent:Connect(function(gf)
        if type(gf) == "table" then
            EN = gf
        end
    end)
    pcall(function()
        GetPetInventoryData:FireServer()
    end)
    local EP = os.clock() + 2
    while true do
        local EQ = not EN and os.clock() < EP and not yM.Unloaded
        if EQ then
            task.wait(0.05)
            continue
        end
        break
    end
    if connection then
        connection:Disconnect()
    end
    if type(EN) == "table" then
        xf = EN
        xb = os.clock()
    end
    return xf
end
w9 = fns.fn634
yr = function()
    local Fa = w6()
    if not Fa then
        return
    end
    for i, v in ipairs(w9()) do
        local E9, Fb
        local Fc = v:FindFirstChild("petID") and v.petID.Value
        E9 = Fc or v.Name
        Fb = Vector3.new(math.random(-3, 3), 0, math.random(-3, 3))
        pcall(function()
            RequestPlacePet:FireServer(E9, Fa.Position + Fb, CFrame.new())
        end)
        task.wait(0.2)
    end
end
w2 = fns.fn149
yU = function()
    local Ft = fns.ME_24()
    if Ft then
        pcall(function()
            Ft:UnequipTools()
        end)
    end
end
yu = fns.fn1301
xW = function()
    local Fx = wU()
    local Fy = not Fx or type(Fx.OwnedLassos) ~= "table"
    if Fy then
        return nil
    end
    local Fw
    local strength = nil
    for k in pairs(Fx.OwnedLassos) do
        local Fz_1 = Lassos[k]
        local FA = type(Fz_1) == "table" and Fz_1.strength
        if FA then
            if not strength or Fz_1.strength > strength then
                strength = Fz_1.strength
                Fw = k
            end
        end
    end
    if Fw and Fx.EquippedLasso ~= Fw then
        pcall(function()
            EquipLasso:FireServer(Fw)
        end)
    end
    return strength
end
yX = function()
    local FH = yR()
    if not FH then
        return
    end
    local Cash = FH.Cash
    local FH_1 = Cash ~= Cash
    local FJ = type(Cash) ~= "number" or FH_1
    if FJ then
        return
    end
    local FH_2 = wU()
    local FJ_1 = FH_2 and type(FH_2.OwnedLassos) == "table"
    local FJ_2 = FJ_1 and FH_2.OwnedLassos or {}
    local FG
    local price = nil
    for k, v in pairs(Lassos) do
        local FK_1 = type(v) == "table" and type(v.price) == "number" and v.price > 0 and v.price < 1000000000000 and not v.Event and not FJ_2[k]
        if FK_1 then
            if v.price <= Cash and (not price or v.price > price) then
                price = v.price
                FG = k
            end
        end
    end
    if FG then
        pcall(function()
            BuyLasso:FireServer(FG)
        end)
        pcall(function()
            EquipLasso:FireServer(FG)
        end)
    end
end
y2 = fns.fn1220
x5 = function(hM, hN)
    local Gc = xc(hM)
    if not Gc then
        return
    end
    local Gd = math.random() * math.pi * 2
    local Ge = yY("OrbitRadius", 6)
    local Gb = false
    for i = 1, 3 do
        local F8, F9
        local Gf_1 = not fns.ME_9("AutoCatch") or not hM.Parent or yM.Unloaded
        if Gf_1 then
            return
        end
        F8 = y2(Gc, Gd, Ge)
        if not F8 then
            return
        end
        Gd = Gd + 0.7
        local wait = task.wait
        local Gh_1 = i == 1 and 0.25 or 0.15
        wait(Gh_1)
        local Gf_3 = Gc.Position - F8.Position
        local Gf_4 = Vector3.new(Gf_3.X, 0, Gf_3.Z)
        local Gg_2 = Gf_4.Magnitude < 0.05 and Vector3.new(0, 0, 1)
        F9 = Gg_2 or Gf_4.Unit
        pcall(function()
            ThrowLasso:FireServer(0.9, F9)
        end)
        pcall(function()
            local F2 = minigameRequest:InvokeServer(hM, F8.CFrame) and true
            local F3 = F2
            local F7 = if F3 then 1 else 0
            local F5 = 845 * F7 + 2505 * (1 - F7)
            local F6 = 2940 * F7 + 3680 * (1 - F7)
            if not ((F5 * 2282 + F6 * 2205 + F5 * F6) % 16777213 == 10895290) then
                F3 = false
            end
            Gb = F3
        end)
        if Gb then
            break
        end
    end
    if not Gb then
        return
    end
    local Gf_5 = tonumber(hM:GetAttribute("Strength"))
    local Gg_3 = xP(hN, Gf_5)
    local Gf_7 = 11 * (100 / (w3[Gg_3] or 98))
    local Gg_5 = 0.25
    local Gh_3 = Gf_7 * 0.25
    local Ga = 0
    local Gi = os.clock() + 100 / Gf_7 + 3
    while true do
        local Gf_8 = fns.ME_9("AutoCatch") and hM.Parent and not yM.Unloaded
        if Gf_8 then
            Ga = math.min(100, Ga + Gh_3)
            pcall(function()
                UpdateProgress:FireServer(Ga)
            end)
            y2(Gc, Gd, Ge)
            Gd = Gd + 0.6
            task.wait(Gg_5)
            if Ga >= 100 then
                local Gq = 1
                while Gq <= 3 do
                    if not hM.Parent then
                        break
                    end
                    pcall(function()
                        UpdateProgress:FireServer(100)
                    end)
                    task.wait(Gg_5)
                    Gq += 1
                end
                break
            elseif os.clock() > Gi then
                break
            else
                continue
            end
        else
            break
        end
    end
end
yW = fns.fn193
xm = fns.fn439
yi = fns.fn470
xF = function(i6)
    local i7
    i7 = 0
    local function i8(i9)
        if not i9 then
            return
        end
        for i, child in ipairs(i9:GetChildren()) do
            if child:IsA("Tool") then
                local attr = child:GetAttribute("Crop")
                if child.Name == i6 or attr == i6 then
                    local G4_1 = tonumber(child:GetAttribute("Amount")) or 1
                    i7 += G4_1
                end
            end
        end
    end
    i8(x7:FindFirstChildOfClass("Backpack"))
    i8(x7.Character)
    return i7
end
y0 = function()
    local Hh
    Hh = nil
    local Hi = yc(w5("BuyFoodChoice"))
    local Hj = (w5("BuyFoodPrefer"))
    local Hq = if Hj then 1 else 0
    local Ho = 713 * Hq + 1353 * (1 - Hq)
    local Hp = 2505 * Hq + 3703 * (1 - Hq)
    if not ((Ho * 2736 + Hp * 34 + Ho * Hp) % 16777213 == 3822003) then
        Hj = "Cheapest"
    end
    Hh = Hj
    local Hj_1 = yR()
    local Hk = Hj_1 and Hj_1.Cash
    if type(Hk) ~= "number" then
        return nil
    end
    local Hk_1 = {}
    for i, v in ipairs(yT) do
        local Hl = xN(Hi) or Hi[v.Name]
        if Hl and v.Price <= Hk then
            if yi(v.Name) > 0 then
                Hk_1[#Hk_1 + 1] = v
            end
        end
    end
    if #Hk_1 == 0 then
        return nil
    end
    table.sort(Hk_1, function(jx, jy)
        if Hh == "Best XP" then
            if jx.XP == jy.XP then
                return jx.Price < jy.Price
            end
            return jx.XP > jy.XP
        elseif Hh == "Best Value" then
            local He = jx.XP / math.max(jx.Price, 1)
            local Hf = jy.XP / math.max(jy.Price, 1)
            if He == Hf then
                return jx.Price < jy.Price
            end
            return He > Hf
        elseif jx.Price == jy.Price then
            return jx.XP > jy.XP
        else
            return jx.Price < jy.Price
        end
    end)
    return Hk_1[1]
end
wZ = function()
    local Hx, Hy
    Hy = y0()
    if not Hy then
        return
    end
    local Hz = yR()
    local HA = Hz and Hz.Cash
    if type(HA) ~= "number" then
        return
    end
    local HA_1 = yi(Hy.Name)
    local HB = w5("BuyFoodAmount") or "1x"
    Hx = 1
    if HB == "Max" then
        Hx = math.max(1, math.min(HA_1, math.floor(HA / Hy.Price)))
    end
    if Hx < 1 or Hy.Price * Hx > HA then
        return
    end
    pcall(function()
        BuyFood:FireServer(Hy.Name, Hx)
    end)
end
xJ = function()
    local HO
    HO = nil
    local HP = yc(w5("FeedFoodChoice"))
    local HQ = (w5("FeedFoodPrefer"))
    local HZ = if HQ then 1 else 0
    local HX = 3915 * HZ + 2494 * (1 - HZ)
    local HY = 889 * HZ + 1954 * (1 - HZ)
    if not ((HX * 1270 + HY * 3351 + HX * HY) % 16777213 == 11431524) then
        HQ = "Best XP"
    end
    local HR = {}
    HO = HQ
    for i, v in ipairs(yL) do
        local HQ_1 = xN(HP) or HP[v]
        if HQ_1 then
            local HQ_2 = xF(v)
            if HQ_2 > 0 then
                local HS = Food[v]
                local HT = #HR + 1
                local HU = type(HS) == "table" and tonumber(HS.XP)
                local HV = HU or 0
                local HU_1 = type(HS) == "table" and tonumber(HS.Price)
                local HS_1 = HU_1 or 0
                HR[HT] = { Name = v, Amount = HQ_2, XP = HV, Price = HS_1 }
            end
        end
    end
    if #HR == 0 then
        return nil
    end
    table.sort(HR, function(j9, ka)
        if HO == "Most Owned" then
            if j9.Amount == ka.Amount then
                return j9.XP > ka.XP
            end
            return j9.Amount > ka.Amount
        elseif HO == "Cheapest" then
            local HI = j9.Price > 0 and j9.Price or 1e+18
            local HI_2 = ka.Price > 0 and ka.Price or 1e+18
            if HI == HI_2 then
                return j9.XP > ka.XP
            end
            return HI < HI_2
        elseif j9.XP == ka.XP then
            return j9.Amount > ka.Amount
        else
            return j9.XP > ka.XP
        end
    end)
    return HR[1]
end
xM = fns.fn493
w_ = function()
    local Id = xJ()
    if not Id then
        return
    end
    local max = math.max
    local min = math.min
    local If_2
    local Amount = Id.Amount
    local Ig_1
    local Ih = tonumber(w5("FeedAmount")) or 1
    local Ic = max(1, min(Amount, Ih))
    local Ie_1 = 0
    for i, v in ipairs(xm()) do
        local Io = v
        local If_1 = yM.Unloaded or not fns.ME_9("AutoFeed")
        if If_1 then
            break
        elseif Ie_1 >= 10 then
            break
        elseif xM(Io) then
            if xF(Id.Name) < Ic then
                break
            end
            If_2, Ig_1 = pcall(function()
                local Name = Id.Name
                local Ia = Io:GetAttribute("Guid") or Io.Name
                return FeedPet:InvokeServer(Name, Ia, Ic)
            end)
            if If_2 and Ig_1 then
                Ie_1 += 1
                task.wait(0.15)
            end
        end
    end
end
xh = function(ky)
    local Ip
    if not ky or not ky.Parent then
        return false
    end
    local Iq_1 = ky:GetAttribute("Guid") or ky.Name
    Ip = Iq_1
    local Iq_2 = pcall(function()
        pickupRequest:InvokeServer("Pet", Ip, ky)
    end)
    return Iq_2
end
yJ = function(kI, kJ)
    pcall(function()
        RequestPlacePet:FireServer(kI, kJ, CFrame.new())
    end)
end
x_ = function()
    local Ix, Iy, Iz
    local IA = w5("ReplaceCompareBy") or "RPS"
    local IA_1 = yY("ReplaceMinImprove", 10)
    local IC = yx(false)
    if type(IC) ~= "table" then
        return
    end
    local ID = xm()
    if #ID == 0 then
        return
    end
    Ix = nil
    local IE
    for i, v in ipairs(ID) do
        local ID_1 = yn(v, IA)
        if not IE or ID_1 < IE then
            IE = ID_1
            Ix = v
        end
    end
    if not Ix then
        return
    end
    Iz = nil
    local ID_2 = nil
    local IF_2 = nil
    for k, v in pairs(IC) do
        local IC_1 = type(v) == "table" and v.type == "Pets"
        if IC_1 then
            local IC_2 = xY(v, IA)
            if not ID_2 or IC_2 > ID_2 then
                ID_2 = IC_2
                Iz = k
                IF_2 = v
            end
        end
    end
    if not Iz or not ID_2 or not IE then
        return
    end
    if ID_2 < IE * (1 + IA_1 / 100) then
        return
    end
    local IA_2 = xc(Ix)
    local IA_3 = IA_2 and IA_2.Position
    if not IA_3 then
        local IB_5 = w6() and w6().Position
        IA_3 = IB_5
    end
    local IB_6 = IA_3
    if not IB_6 then
        return
    end
    Iy = false
    pcall(function()
        local Iv = Ix:GetAttribute("Guid") or Ix.Name
        AttemptSwapPet:FireServer(Iz, Iv)
        Iy = true
    end)
    task.wait(0.35)
    if Ix.Parent ~= nil then
        if xh(Ix) then
            task.wait(0.25)
            yJ(Iz, IB_6)
        end
    end
    xb = 0
    if IF_2 then
        yx(true)
    end
end
fns.ME_18 = fns.fn1299
ME_52 = yM:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = ME_29, Copyable = true }, "|", ME_55 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
ME_65 = {
    Info = ME_52:AddTab("Info", "info"),
    Main = ME_52:AddTab("Main", "lasso"),
    Player = ME_52:AddTab("Player", "person-standing"),
    Settings = ME_52:AddTab("Settings", "settings")
}
ME_65.Catch = ME_65.Main:AddSubTab("Catch", "target")
ME_65.Replace = ME_65.Main:AddSubTab("Replace", "replace")
ME_65.Shop = ME_65.Main:AddSubTab("Shop", "shopping-cart")
ME_65.Food = ME_65.Main:AddSubTab("Food", "utensils")
ME_76 = fns.fn418
for k, v in ME_65 do
    if v ~= ME_65.Main then
        ME_76(v)
    end
end
yN, ME_39, ME_88, Label, xX, ME_62 = nil, nil, nil, nil, nil, nil
ME_52 = 21
repeat
    ME_76 = (ME_52 * 2 + 2) % 3 + 1
    if ME_76 <= 2 then
        if ME_76 <= 1 then
            ME_76 = (vector.create((ME_52 * 6 + 4) % 11 + 1, (ME_52 * 6 + 7) % 13 + 1, (ME_52 * 6 + 3) % 17 + 1))
            ME_54 = (vector.create((ME_52 * 6 + 1) % 11 + 1, (ME_52 * 5 + 13) % 13 + 1, (ME_52 * 10 + 8) % 17 + 1))
            ME_41 = (vector.create((ME_52 * 6 + 3) % 11 + 1, (ME_52 * 2 + 4) % 13 + 1, (ME_52 * 14 + 7) % 17 + 1))
            if vector.dot(vector.cross(ME_76, ME_54), ME_41) == vector.dot(vector.cross(ME_54, ME_41), ME_76) then
                xX = tostring(game.JobId)
            else
                ME_88 = tostring(game.JobId)
            end
            ME_52 = (ME_52 + 14) % 24
        else
            ME_76 = (vector.create((ME_52 * 2 + 9) % 11 + 1, (ME_52 * 3 + 6) % 13 + 1, (ME_52 * 11 + 7) % 17 + 1))
            ME_54 = (vector.create((ME_52 * 1 + 8) % 11 + 1, (ME_52 * 3 + 6) % 13 + 1, (ME_52 * 9 + 8) % 17 + 1))
            ME_41 = (vector.create((ME_52 * 3 + 4) % 5 + 1, (ME_52 * 3 + 7) % 7 + 1, (ME_52 * 4 + 6) % 9 + 1))
            if math.abs((vector.angle(ME_76, ME_54, ME_41))) - math.abs((vector.angle(ME_54, ME_76, ME_41))) == 3 then
                xX = #ME_62 > 18
            else
                ME_62 = #xX > 18
            end
            ME_52 = (ME_52 + 20) % 24
        end
    else
        if ME_52 * 91371357 + 5 + 4 >= ME_52 * 91371357 + 5 + 4 + 1 then
            xk = "Unknown"
            pcall(fns.fn728)
            yN = xA.Info:AddLeftGroupbox("Account", "circle-user")
            yN:AddLabel(Label("User", ME_65.Name, fns.ME_19), true)
            yN:AddLabel(Label("Status", "Keyless", fns.ME_19), true)
            yN:AddLabel(Label("Executor", xk, fns.ME_19), true)
            x7 = xA.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            x7:AddLabel(ME_90(ME_39 .. " [" .. tostring(game.PlaceId) .. "]", y1), true)
            x7:AddLabel(Label("Place ID", tostring(game.PlaceId), y1), true)
            ME_55 = x7:AddLabel(Label("Session time", "0s", ME_88), true)
        else
            yN = "Unknown"
            pcall(fns.fn728)
            ME_39 = ME_65.Info:AddLeftGroupbox("Account", "circle-user")
            ME_39:AddLabel(xk("User", x7.Name, ME_90), true)
            ME_39:AddLabel(xk("Status", "Keyless", ME_90), true)
            ME_39:AddLabel(xk("Executor", yN, ME_90), true)
            ME_88 = ME_65.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            ME_88:AddLabel(xA(ME_55 .. " [" .. tostring(game.PlaceId) .. "]", fns.ME_19), true)
            ME_88:AddLabel(xk("Place ID", tostring(game.PlaceId), fns.ME_19), true)
            Label = ME_88:AddLabel(xk("Session time", "0s", y1), true)
        end
        ME_52 = (ME_52 + 11) % 24
    end
until (ME_52 * 11 + 2) % 24 == 8
if ME_62 then
    ME_52 = 0
    repeat
        if (ME_52 * 3 + 8) * 5 % 4 == ((ME_52 * 3 + 8) * 5 + 1) % 4 then
            xX = string.sub(ME_62, 1, 18) .. "..."
        else
            ME_62 = string.sub(xX, 1, 18) .. "..."
        end
        ME_52 = (ME_52 + 3) % 4
    until (ME_52 * 3 + 1) % 4 == 2
end
ME_52 = ME_62 or xX
xq, ScriptsGroup, BuyFoodGroup, ME_62, yG, yA, connection2, connection3, CurrentCamera2, w1, xO, fns.ME_1, ME_27, wX, ME_35, wR, xH, yo, y3, fns.ME_12, xU, y_, x2, fns.ME_7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ME_80 = ME_52
ME_88:AddLabel(xk("Server", ME_80, ME_73), true)
ME_88:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
xq = os.clock()
if (ME_27 or ME_62) and (ME_27 or not xq) and (ME_27 or not xq or xq and not ME_62) or not ((ME_27 or ME_62) and (ME_27 or not xq) and (ME_27 or not xq or xq and not ME_62)) then
    task.spawn(fns.worker)
    ScriptsGroup = ME_65.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(fns.worker)
    ME_65 = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(xA("Included in this hub", ME_73), true)
ScriptsGroup:AddLabel(xA(ME_55, fns.ME_19), true)
local FeaturesGroup = ME_65.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(xA("Auto Catch", fns.ME_19), true)
FeaturesGroup:AddLabel(xA("Auto Collect", y1), true)
FeaturesGroup:AddLabel(xA("Auto Sell", ME_73), true)
FeaturesGroup:AddLabel(xA("Auto Favorite", ME_90), true)
FeaturesGroup:AddLabel(xA("Auto Replace", fns.ME_19), true)
FeaturesGroup:AddLabel(xA("Auto Food", y1), true)
FeaturesGroup:AddLabel(xA("Shop Automation", ME_73), true)
FeaturesGroup:AddLabel(xA("Teleports", ME_90), true)
FeaturesGroup:AddLabel(xA("ESP", fns.ME_19), true)
FeaturesGroup:AddLabel(xA("Player Utilities", y1), true)
local SocialsGroup = ME_65.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = xS })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = ME_65.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = xS })
local DonationsGroup = ME_65.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(xA("All donations are optional but appreciated.", y1), true)
DonationsGroup:AddLabel(xA("If you donate you get a special role, just PING after you donate.", ME_90), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(xA("LTC / Litecoin", ME_47), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(xA("BTC / Bitcoin", ME_59), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(xA("ETH / Ethereum", ME_70), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel(xA("USDT", ME_82), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(xA("Solana", fns.ME_4), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(xA("PayPal", fns.ME_25), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(xA("Venmo", ME_67), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(xA("Don't have any of the listed currencies but still wanna donate?", ME_73), true)
DonationsGroup:AddLabel(xA("DM me and we'll work something out.", fns.ME_19), true)
ME_54 = ME_65.Info:AddRightGroupbox("FAQ", "circle-help")
ME_54:AddLabel("Where do I get a good config?", true)
ME_54:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
ME_54:AddLabel("How do I import / export configs?", true)
ME_54:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
ME_54:AddLabel("How do I report bugs?", true)
ME_54:AddLabel("Join the Discord and post it in the bugs channel.", true)
ME_54:AddLabel("How do I make suggestions?", true)
ME_54:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
ME_54:AddLabel("How do I get help or updates?", true)
ME_54:AddLabel("Join the Discord, updates and support are posted there first.", true)
w1 = fns.fn1201
xO = function(mK)
    local JE_1
    local JD_1
    JD_1, JE_1 = pcall(function()
        local favoriteLogic = require(x7.PlayerScripts.Controllers.UI.toolbarUI.favoriteLogic)
        return favoriteLogic.isFavorited(mK)
    end)
    return JD_1 and JE_1 == true
end
fns.ME_1 = function(mQ)
    local JL
    local JM = pcall(function()
        local favoriteLogic = require(x7.PlayerScripts.Controllers.UI.toolbarUI.favoriteLogic)
        favoriteLogic.toggleFavorite(mQ)
    end)
    if JM then
        return true
    end
    JL = false
    pcall(function()
        local JI = xa:InvokeServer(mQ) and true
        JL = JI or false
    end)
    return JL
end
ME_27 = fns.fn162
wX = fns.fn1078
ME_35 = fns.fn1042
wR = function(nG)
    local Kf = nG == ""
    local Kf_1
    local Kg = type(nG) ~= "string" or Kf
    local Kg_1
    if Kg then
        return false
    end
    pcall(function()
        local Kc = xK.GetController("walkingPetController")
        if Kc and Kc.fireEquipSatateRequest then
            Kc.fireEquipSatateRequest(nG, false)
        end
    end)
    Kf_1, Kg_1 = pcall(function()
        return sellPet:InvokeServer(nG, false)
    end)
    if not Kf_1 or Kg_1 ~= true then
        return false
    end
    pcall(function()
        removeTool:InvokeServer(nG)
    end)
    return true
end
xH = fns.fn652
yo = fns.fn749
local CatchGroup = ME_65.Catch:AddLeftGroupbox("Catch", "lasso")
CatchGroup:AddDropdown("AnimalFilter", {
    Text = "Animals",
    Values = ME_85(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
CatchGroup:AddDropdown("MutationFilter", {
    Text = "Mutations",
    Values = ME_31(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
CatchGroup:AddDropdown("RarityFilter", {
    Text = "Rarities",
    Values = ME_78(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
CatchGroup:AddDropdown("IslandFilter", { Text = "Islands", Values = wY, Multi = true, Default = {}, Searchable = true, AllowNull = true })
CatchGroup:AddDropdown("CatchTargetMode", { Text = "Target", Values = { "Nearest", "Best RPS", "Best Strength" }, Default = 1 })
CatchGroup:AddSlider("CatchMinRps", { Text = "Min RPS", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
CatchGroup:AddToggle("ReturnOnStop", { Text = "Return", Default = true })
CatchGroup:AddToggle("AutoCatch", { Text = "Auto Catch", Default = false })
CatchGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
CatchGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
yt.AutoCatch:OnChanged(fns.fn423)
local ReplaceGroup = ME_65.Replace:AddLeftGroupbox("Replace", "replace")
ReplaceGroup:AddDropdown("ReplaceCompareBy", { Text = "Compare", Values = { "RPS", "Rarity", "Strength", "Weight" }, Default = 1 })
ReplaceGroup:AddSlider("ReplaceMinImprove", { Text = "Min Improve %", Default = 10, Min = 0, Max = 500, Rounding = 0 })
ReplaceGroup:AddToggle("AutoReplace", { Text = "Auto Replace", Default = false })
ReplaceGroup:AddButton({ Text = "Replace Now", Func = fns.onReplaceNow })
ME_41 = ME_65.Shop:AddLeftGroupbox("Shop", "shopping-bag")
ME_41:AddToggle("AutoBuyLasso", { Text = "Auto Buy Lasso", Default = false })
ME_41:AddButton({ Text = "Buy Best Lasso", Func = fns.onBuyBestLasso })
ME_41:AddDropdown("SellAnimals", {
    Text = "Animals",
    Values = ME_85(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
ME_41:AddDropdown("SellMutations", {
    Text = "Mutations",
    Values = ME_31(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
ME_41:AddDropdown("SellRarities", {
    Text = "Rarities",
    Values = ME_78(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
ME_41:AddDropdown("SellMaxRarity", { Text = "Max Rarity", Values = wS, Default = "Legendary" })
ME_41:AddSlider("SellMaxRps", { Text = "Max RPS", Default = 100, Min = 0, Max = 5000, Rounding = 0 })
ME_41:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
ME_41:AddButton({
    Text = "Sell Now",
    Func = function()
        local KI
        KI = 0
        pcall(function()
            local KG = xH(true) or 0
            KI = KG
        end)
        if KI > 0 then
            yM:Notify("Sold " .. tostring(KI) .. " pets")
        else
            yM:Notify("No pets matched sell filters")
        end
    end
})
local FavoriteGroup = ME_65.Shop:AddRightGroupbox("Favorite", "star")
FavoriteGroup:AddDropdown("FavoriteAnimals", {
    Text = "Animals",
    Values = ME_85(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
FavoriteGroup:AddDropdown("FavoriteMutations", {
    Text = "Mutations",
    Values = ME_31(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
FavoriteGroup:AddDropdown("FavoriteRarities", {
    Text = "Rarities",
    Values = ME_78(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
FavoriteGroup:AddDropdown("FavoriteMinRarity", { Text = "Min Rarity", Values = wS, Default = 3 })
FavoriteGroup:AddSlider("FavoriteMinRps", { Text = "Min RPS", Default = 50, Min = 0, Max = 5000, Rounding = 0 })
FavoriteGroup:AddToggle("AutoFavorite", { Text = "Auto Favorite", Default = false })
FavoriteGroup:AddButton({ Text = "Favorite Now", Func = fns.onFavoriteNow })
local PickupGroup = ME_65.Shop:AddRightGroupbox("Pickup", "package-open")
if (false and not wX or SocialsGroup and not wX or (not yo or not wX) and (false and yo)) and (yo or false or (false or not ME_80) or fns.ME_1 and yo and (not SocialsGroup and yo)) and ((not yo and not SocialsGroup or (yo or false)) and (not SocialsGroup or SocialsGroup or not SocialsGroup and not SocialsGroup) or (false or not SocialsGroup or (not ME_80 or not SocialsGroup) or (yo or SocialsGroup or not wX and SocialsGroup))) or not ((false and not wX or SocialsGroup and not wX or (not yo or not wX) and (false and yo)) and (yo or false or (false or not ME_80) or fns.ME_1 and yo and (not SocialsGroup and yo)) and ((not yo and not SocialsGroup or (yo or false)) and (not SocialsGroup or SocialsGroup or not SocialsGroup and not SocialsGroup) or (false or not SocialsGroup or (not ME_80 or not SocialsGroup) or (yo or SocialsGroup or not wX and SocialsGroup)))) then
    PickupGroup:AddDropdown("PickupAnimals", {
        Text = "Animals",
        Values = ME_85(),
        Multi = true,
        Default = {},
        Searchable = true,
        AllowNull = true
    })
    PickupGroup:AddDropdown("PickupMutations", {
        Text = "Mutations",
        Values = ME_31(),
        Multi = true,
        Default = {},
        Searchable = true,
        AllowNull = true
    })
    PickupGroup:AddDropdown("PickupRarities", {
        Text = "Rarities",
        Values = ME_78(),
        Multi = true,
        Default = {},
        Searchable = true,
        AllowNull = true
    })
    PickupGroup:AddToggle("AutoPickup", { Text = "Auto Pickup", Default = false })
    BuyFoodGroup = ME_65.Food:AddLeftGroupbox("Buy Food", "shopping-basket")
else
    ME_31:AddDropdown("PickupAnimals", {
        Multi = true,
        Searchable = true,
        Text = "Animals",
        AllowNull = true,
        Default = {},
        Values = PickupGroup()
    })
    ME_31:AddDropdown("PickupMutations", {
        Searchable = true,
        Multi = true,
        Default = {},
        Text = "Mutations",
        Values = BuyFoodGroup(),
        AllowNull = true
    })
    ME_31:AddDropdown("PickupRarities", {
        Text = "Rarities",
        Multi = true,
        Default = {},
        Values = ME_65(),
        AllowNull = true,
        Searchable = true
    })
    ME_31:AddToggle("AutoPickup", { Text = "Auto Pickup", Default = false })
    ME_85 = ME_78.Food:AddLeftGroupbox("Buy Food", "shopping-basket")
end
BuyFoodGroup:AddDropdown("BuyFoodChoice", { Text = "Foods", Values = ME_36, Multi = true, Default = {}, Searchable = true, AllowNull = true })
BuyFoodGroup:AddDropdown("BuyFoodPrefer", { Text = "Prefer", Values = { "Cheapest", "Best XP", "Best Value" }, Default = 1 })
BuyFoodGroup:AddDropdown("BuyFoodAmount", { Text = "Amount", Values = { "1x", "Max" }, Default = 1 })
BuyFoodGroup:AddToggle("AutoBuyFood", { Text = "Auto Buy Food", Default = false })
BuyFoodGroup:AddButton({ Text = "Buy Food Now", Func = fns.onBuyFoodNow })
local FeedGroup = ME_65.Food:AddRightGroupbox("Feed", "bone")
FeedGroup:AddDropdown("FeedFoodChoice", { Text = "Foods", Values = yL, Multi = true, Default = {}, Searchable = true, AllowNull = true })
FeedGroup:AddDropdown("FeedFoodPrefer", { Text = "Prefer", Values = { "Best XP", "Most Owned", "Cheapest" }, Default = 1 })
FeedGroup:AddDropdown("FeedAnimals", {
    Text = "Animals",
    Values = ME_85(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
FeedGroup:AddDropdown("FeedMutations", {
    Text = "Mutations",
    Values = ME_31(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
FeedGroup:AddDropdown("FeedRarities", {
    Text = "Rarities",
    Values = ME_78(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
FeedGroup:AddDropdown("FeedAmount", { Text = "Feed Amount", Values = { "1", "5", "10", "25" }, Default = 1 })
FeedGroup:AddToggle("AutoFeed", { Text = "Auto Feed", Default = false })
FeedGroup:AddButton({ Text = "Feed Now", Func = fns.onFeedNow })
local MovementGroup = ME_65.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = ME_65.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
local TeleportGroup = ME_65.Player:AddLeftGroupbox("Teleport", "map-pin")
TeleportGroup:AddDropdown("IslandTeleport", { Text = "Islands", Values = fns.ME_16, Default = 1, Searchable = true })
TeleportGroup:AddButton({ Text = "Teleport Island", Func = fns.onTeleportIsland })
TeleportGroup:AddDropdown("OtherTeleport", { Text = "Other", Values = ME_50, Default = 1, Searchable = true })
TeleportGroup:AddButton({ Text = "Teleport Other", Func = fns.onTeleportOther })
local EspGroup = ME_65.Player:AddRightGroupbox("ESP", "eye")
EspGroup:AddDropdown("EspAnimals", {
    Text = "Animals",
    Values = ME_85(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
EspGroup:AddDropdown("EspMutations", {
    Text = "Mutations",
    Values = ME_31(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
EspGroup:AddDropdown("EspRarities", {
    Text = "Rarities",
    Values = ME_78(),
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
EspGroup:AddToggle("AnimalEsp", { Text = "Animals ESP", Default = false })
yt.AnimalEsp:OnChanged(fns.fn196)
ME_76 = ME_65.Settings:AddLeftGroupbox("Menu")
ME_76:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ME_76:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ME_76:AddButton("Unload", fns.onUnload)
yM.ToggleKeybind = Options.MenuKeybind
fns.ME_10:SetLibrary(yM)
fns.ME_10:SetFolder("OuroborosHub")
fns.ME_10:SaveDefault("Monochrome")
fns.ME_10:ApplyToTab(ME_65.Settings)
fns.ME_10:LoadDefault()
yB:SetLibrary(yM)
yB:IgnoreThemeSettings()
yB:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
yB:SetFolder("OuroborosHub/CatchAndTame")
ME_62 = yB:BuildConfigSection(ME_65.Settings)
y3 = fns.fn1304
fns.ME_12 = fns.fn964
xU = fns.fn535
if (ME_27 or not DonationsGroup) and (DonationsGroup and DonationsGroup) and (ME_27 and y3 or (ME_27 or ME_27)) and (y3 and not DonationsGroup and (y3 or DonationsGroup) or (not DonationsGroup and not DonationsGroup or (ME_27 or not y3))) or not ((ME_27 or not DonationsGroup) and (DonationsGroup and DonationsGroup) and (ME_27 and y3 or (ME_27 or ME_27)) and (y3 and not DonationsGroup and (y3 or DonationsGroup) or (not DonationsGroup and not DonationsGroup or (ME_27 or not y3)))) then
    y_ = function(pm)
        local Lc
        Lc = nil
        local Ld = type(pm) ~= "table"
        local Lh = if Ld then 1 else 0
        local Lf = 2090 * Lh + 3521 * (1 - Lh)
        local Lg = 3829 * Lh + 70 * (1 - Lh)
        if not ((Lf * 2834 + Lg * 765 + Lf * Lg) % 16777213 == 77642) then
            Ld = type(pm.idx) ~= "string"
        end
        if not Ld then
            Ld = type(pm.type) ~= "string"
        end
        if not Ld then
            Ld = yB.Ignore[pm.idx]
        end
        if Ld then
            return false
        end
        Lc = y3(pm.type, pm.idx)
        if not Lc then
            return false
        end
        local Ld_2 = pcall(function()
            if pm.type == "Input" then
                if type(pm.text) ~= "string" then
                    return
                end
                Lc:SetValue(pm.text)
            elseif pm.type == "ColorPicker" then
                Lc:SetValueRGB(Color3.fromHex(pm.value), pm.transparency)
            elseif pm.type == "KeyPicker" then
                Lc:SetValue({ pm.key, pm.mode, pm.modifiers })
                if pm.mode == "Toggle" and pm.toggled ~= nil then
                    Lc.Toggled = pm.toggled
                    Lc:Update()
                end
            else
                Lc:SetValue(pm.value)
            end
        end)
        return Ld_2
    end
    ME_62:AddDivider()
    ME_62:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    ME_62:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    ME_62:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
    yB:LoadAutoloadConfig()
    yG = tick()
    yA = tick()
else
    yG = function(pm)
        local Lc
        Lc = nil
        local Ld = type(pm) ~= "table"
        local Lh = if Ld then 1 else 0
        local Lf = 2090 * Lh + 3521 * (1 - Lh)
        local Lg = 3829 * Lh + 70 * (1 - Lh)
        if not ((Lf * 2834 + Lg * 765 + Lf * Lg) % 16777213 == 77642) then
            Ld = type(pm.idx) ~= "string"
        end
        if not Ld then
            Ld = type(pm.type) ~= "string"
        end
        if not Ld then
            Ld = yB.Ignore[pm.idx]
        end
        if Ld then
            return false
        end
        Lc = y3(pm.type, pm.idx)
        if not Lc then
            return false
        end
        local Ld_1 = pcall(function()
            if pm.type == "Input" then
                if type(pm.text) ~= "string" then
                    return
                end
                Lc:SetValue(pm.text)
            elseif pm.type == "ColorPicker" then
                Lc:SetValueRGB(Color3.fromHex(pm.value), pm.transparency)
            elseif pm.type == "KeyPicker" then
                Lc:SetValue({ pm.key, pm.mode, pm.modifiers })
                if pm.mode == "Toggle" and pm.toggled ~= nil then
                    Lc.Toggled = pm.toggled
                    Lc:Update()
                end
            else
                Lc:SetValue(pm.value)
            end
        end)
        return Ld_1
    end
    yA:AddDivider()
    yA:AddInput("SaveManager_ImportSource", { Finished = true, Text = "Paste exported config here", AllowEmpty = true })
    yA:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    yA:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
    ME_62:LoadAutoloadConfig()
    yB = tick()
    y_ = tick()
end
pcall(function()
    for i, v in ipairs(getconnections(x7.Idled)) do
        local LF = v
        pcall(function()
            LF:Disable()
        end)
    end
end)
x2 = fns.fn308
connection2 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection3 = UserInputService.InputChanged:Connect(fns.onInputChanged)
task.spawn(fns.worker2)
fns.ME_7 = function(qf)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not qf)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not qf
        end
    end)
    if not qf then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(x7, "GameplayPaused", false)
        else
            x7.GameplayPaused = false
        end
    end)
end
yt.AntiGameplayPause:OnChanged(fns.fn1237)
task.spawn(fns.worker3)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
yt.Fly:OnChanged(fns.fn1433)
yt.WalkSpeedEnabled:OnChanged(fns.fn932)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(fns.worker8)
task.spawn(fns.worker9)
task.spawn(fns.worker10)
task.spawn(fns.worker11)
task.spawn(fns.worker12)
task.spawn(fns.worker13)
task.spawn(fns.worker14)
yM:OnUnload(fns.fn623)
