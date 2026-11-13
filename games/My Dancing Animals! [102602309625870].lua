local fns = {}
local Dw_11, ConveyorGroup, Dw_19, Dw_31, Dw_34, Dw_43, Dw_47, Dw_54, Dw_57, Dw_62
local so
local s5
local r5
local sN
local rN
local su
local tb
local ru
local sb
local rT
local sA
local rA
local sh
local sZ
local sn
local s4
local r4
local sM
local Toggles
local ta
local sa
local VirtualUser
local rS
local sz
local rz
local sY
local connection2
local sF
local Options
local s3
local r3
local sL
local rL
local ss
local s9
local r9
local sR
local sf
local sX
local Rebirth
local sE
local rE
local sl
local s2
local r2
local sK
local rK
local sr
local sQ
local rQ
local sx
local rx
local se
local sW
local sD
local rD
local sk
local r1
local sJ
local rJ
local sq
local s7
local r7
local VirtualInputManager
local rP
local rw
local sd
local UserInputService
local rV
local Workspace
local sj
local s0
local sI
local rI
local sp
local s6
local r6
local sO
local sv
local rv
local connection
local SetNotifySide
local rU
local sB
local CurrentCamera2
local si
local s_
local FloorUpgrades
local HttpService
function fns.fn8()
    local AZ = so()
    local A_ = AZ and tonumber(AZ.UpgradeLevel)
    local AZ_2 = FloorUpgrades[A_ or 0]
    local A__2 = type(AZ_2) == "table" and type(AZ_2.Cost) == "table"
    if A__2 then
        return tonumber(AZ_2.Cost.Amount)
    end
    return nil
end
function fns.fn45(fE, fF)
    local xY = sf[fE]
    if not xY then
        local xZ_1 = sz[fE]
        if not xZ_1 then
            return nil
        end
        return {
            petId = nil,
            eggId = fE,
            name = xZ_1.Name,
            rarity = xZ_1.Rarity,
            rank = xZ_1.Rank,
            earnings = xZ_1.Cost,
            sellValue = xZ_1.Cost,
            level = 0
        }
    end
    local xZ_2 = sl(xY, 0, fF)
    if xZ_2 then
        xZ_2.eggId = fE
    end
    return xZ_2
end
function fns.fn63()
    local vV = tonumber(sp:GetAttribute("SkillTreeSkipCooldown")) or 1
    return math.clamp(vV, 0.1, 1)
end
function fns.fn85()
    local BW = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local BX = type(v) == "table" and type(v.Type) == "string" and not s_.Ignore[k]
            if BX then
                local BX_1 = sZ(k, v)
                if BX_1 then
                    BW[#BW + 1] = BX_1
                end
            end
        end
    end
    table.sort(BW, function(lz, lA)
        if lz.type ~= lA.type then
            return lz.type < lA.type
        end
        return lz.idx < lA.idx
    end)
    return { objects = BW }
end
function fns.worker3()
    while not rz.Unloaded do
        task.wait(1)
        if sQ("AntiGameplayPause") then
            rV(true)
        end
    end
end
function fns.fn128(fh)
    if type(fh) == "table" then
        return fh
    end
    local xA = fh ~= ""
    local xA_1
    local xB = type(fh) == "string" and xA
    local xB_1
    if xB then
        xA_1, xB_1 = pcall(HttpService.JSONDecode, HttpService, fh)
        local xC = xA_1 and type(xB_1) == "table"
        if xC then
            return xB_1
        end
        return {}
    end
    return {}
end
function fns.fn158(d8)
    if not d8 then
        return 0
    end
    local attr = d8:GetAttribute("Id")
    local wT = type(attr) == "string" and sz[attr]
    local wS_1 = wT or sD[d8.Name]
    if wS_1 then
        return wS_1.Rank or sX[wS_1.Rarity] or 0
    end
    return 0
end
function fns.fn159(a3)
    if rz.Unloaded then
        return false
    end
    local uE = Toggles[a3]
    return uE ~= nil and uE.Value == true
end
function fns.fn183(ld, le)
    local BJ_1 = (ld == "Toggle" and Toggles or Options)[le]
    local BI_2 = type(BJ_1) == "table" and BJ_1.Type == ld
    local BI_3 = BI_2 and BJ_1
    local BO = if BI_3 then 1 else 0
    local BM = 1209 * BO + 1910 * (1 - BO)
    local BN = 3407 * BO + 2202 * (1 - BO)
    if not ((BM * 2480 + BN * 2516 + BM * BN) % 16777213 == 15689395) then
        BI_3 = nil
    end
    return BI_3
end
function fns.onCopyBitcoinAddress()
    sh(sR, "Copied Bitcoin address")
end
function fns.fn226(ce)
    local vB = ce.KeyboardKeyCode or Enum.KeyCode.E
    local max = math.max
    local vD = (tonumber(ce.HoldDuration))
    local vH = if vD then 1 else 0
    local vF = 623 * vH + 1859 * (1 - vH)
    local vG = 2343 * vH + 296 * (1 - vH)
    if not ((vF * 4047 + vG * 2906 + vF * vG) % 16777213 == 10789728) then
        vD = 0
    end
    local vB_2 = max(vD, 0.5) + 0.1
    VirtualInputManager:SendKeyEvent(true, vB, false, game)
    task.wait(vB_2)
    VirtualInputManager:SendKeyEvent(false, vB, false, game)
end
function fns.fn243()
    rz.ScreenGui.Parent = sp:WaitForChild("PlayerGui")
end
function fns.fn252(X, Y)
    if X.Cost ~= Y.Cost then
        return X.Cost < Y.Cost
    end
    return X.Name < Y.Name
end
function fns.fn296(fR, fS)
    if fR == "Rarity" then
        return fS.rank
    elseif fR == "Sell Value" then
        return fS.sellValue
    else
        return fS.earnings
    end
end
function fns.fn309()
    local A1 = rS()
    if type(A1) ~= "number" then
        return
    end
    local A7 = if r5() < A1 then 1 else 0
    if A7 == 1 then
        return
    end
    local A1_1 = rK()
    if not A1_1 then
        return
    end
    local Components = A1_1:FindFirstChild("Components")
    local A1_2 = Components and Components:FindFirstChild("UpgradeButton")
    local A2_1 = A1_2
    if A1_2 then
        A1_2 = A2_1:FindFirstChild("TriggerBox", true)
    end
    local A2_2 = A1_2
    if A1_2 then
        A1_2 = A2_2:IsA("BasePart")
    end
    if not A1_2 then
        return
    end
    sI(false)
    ru(A2_2.CFrame + Vector3.new(0, 3, 0))
    task.wait(0.1)
    local A1_3 = sM()
    if A1_3 and firetouchinterest then
        pcall(firetouchinterest, A1_3, A2_2, 0)
        task.wait(0.2)
        pcall(firetouchinterest, A1_3, A2_2, 1)
    end
    task.wait(0.35)
end
function fns.onCopyLitecoinAddress()
    sh(sW, "Copied Litecoin address")
end
function fns.fn315()
    local wQ
    local wL = sd()
    local wP = 1
    while true do
        if not (wP <= wL) then
            return nil
        end
        wQ = wP
        local wL_1 = rE(wQ) and sj(wQ) == nil
        if wL_1 then
            break
        end
        wP += 1
    end
    return wQ
end
function fns.onRenderStepped(mR)
    if rz.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local De_1 = s3()
        if De_1 then
            De_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local De_3 = sM()
        local Df = s3()
        if De_3 and Df then
            Df.PlatformStand = true
            local Df_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                Df_1 = Df_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                Df_1 = Df_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                Df_1 = Df_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                Df_1 = Df_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                Df_1 = Df_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                Df_1 = Df_1 - Vector3.new(0, 1, 0)
            end
            De_3.Velocity = Vector3.zero
            if Df_1.Magnitude > 0 then
                De_3.CFrame = De_3.CFrame + Df_1.Unit * Options.FlySpeed.Value * mR
            end
        end
    end
end
function fns.fn333(fn)
    local xE = 1
    if type(fn) ~= "table" then
        return xE
    end
    for k, v in pairs(fn) do
        local xF
        local xG = type(k) == "number" and type(v) == "string"
        if xG then
            xF = v
        else
            local xG_1 = v == true
            local xH = type(k) == "string" and xG_1
            if xH then
                xF = k
            elseif type(v) == "string" then
                xF = v
            end
        end
        if xF and sb[xF] then
            xE *= sb[xF]
        end
    end
    return xE
end
function fns.fn384(aV, aW, aX)
    return string.format("<b>%s</b> %s %s", aV, rU("-", "#5a6070"), rU(aW, aX))
end
function fns.fn414(cP)
    local v5 = sz[cP]
    if not v5 then
        return false
    end
    local v6 = r1("BuyEggNames")
    local v7 = rA("BuyEggNames") and not v6[v5.Name]
    if v7 then
        return false
    end
    local v6_1 = r1("BuyEggRarities")
    local v7_1 = rA("BuyEggRarities") and not v6_1[v5.Rarity]
    if v7_1 then
        return false
    end
    local v6_2 = tonumber(si("BuyEggMaxPrice", 0)) or 0
    if v6_2 > 0 and v5.Cost > v6_2 then
        return false
    end
    local v6_4 = tonumber(si("BuyEggCashBuffer", 0)) or 0
    if r5() - v5.Cost < v6_4 then
        return false
    end
    return true
end
function fns.fn428(fw, fx, fy)
    local xP = sk[fw]
    if not xP then
        return nil
    end
    local xQ = s7(fy)
    local Earnings = xP.Earnings
    local IncreasePerLevel = xP.IncreasePerLevel
    local xT = tonumber(fx) or 0
    local xR_1 = (Earnings + IncreasePerLevel * xT) * xQ
    local Name = xP.Name
    local Rarity = xP.Rarity
    local Rank = xP.Rank
    local xV = xP.SellValue * xQ
    local xW = tonumber(fx) or 0
    return {
        petId = fw,
        name = Name,
        rarity = Rarity,
        rank = Rank,
        earnings = xR_1,
        sellValue = xV,
        level = xW
    }
end
function fns.fn431(aL, aM)
    if setclipboard then
        setclipboard(aL)
    elseif toclipboard then
        toclipboard(aL)
    end
    rz:Notify(aM)
end
function fns.worker4()
    while not rz.Unloaded do
        local Dn = sQ("AutoRoll") or sQ("AutoSkipUnaffordable") or sQ("AutoBuyEggs")
        if Dn then
            pcall(sK)
        end
        task.wait(0.35)
    end
end
function fns.fn452()
    local va_1
    local u9_1
    u9_1, va_1 = pcall(function()
        return s4:GetContainer()
    end)
    if u9_1 then
        return va_1
    end
    return nil
end
function fns.worker6()
    while not rz.Unloaded do
        local Dt = if sQ("AutoCollectCrates") then 1 else 0
        if Dt == 1 then
            pcall(r2)
        end
        if sQ("AutoSellCrates") then
            pcall(sF)
        end
        if sQ("AutoSellEggsPets") then
            pcall(s2)
        end
        if sQ("AutoUpgradeBase") then
            pcall(s6)
        end
        if sQ("AutoRebirth") then
            pcall(r7)
        end
        task.wait(0.75)
    end
end
function fns.worker5()
    while not rz.Unloaded do
        if sQ("AutoReplaceBetter") then
            pcall(sr)
        end
        if sQ("AutoPlaceEggs") then
            pcall(sx)
        end
        if sQ("AutoHatchEggs") then
            pcall(r6)
        end
        if sQ("AutoUpgradePets") then
            pcall(s5)
        end
        task.wait(0.45)
    end
end
function fns.fn526(ck, cl)
    local vI = sa(ck)
    if not vI or vI.Enabled == false then
        return false
    end
    local vJ_1 = rP(vI)
    if not vJ_1 then
        return false
    end
    local vK = sM()
    if not vK then
        return false
    end
    sI(false)
    local vL = Vector3.new(0, 2.5, 0)
    local vN = tonumber(cl) or 3
    local vO = math.max(vN, 1)
    local vS = 1
    while vS <= vO do
        if rz.Unloaded then
            return false
        end
        vK.CFrame = vJ_1 + vL
        task.wait(0.05)
        sY(vI)
        task.wait(0.2)
        vS += 1
    end
    return true
end
function fns.fn538()
    rV(Toggles.AntiGameplayPause.Value)
end
function fns.fn585(be)
    local uJ = si(be, {})
    if typeof(uJ) ~= "table" then
        return {}
    end
    local uK = {}
    for k, v in pairs(uJ) do
        if v == true then
            uK[k] = true
        else
            local uJ_1 = typeof(k) == "number" and typeof(v) == "string"
            if uJ_1 then
                uK[v] = true
            end
        end
    end
    return uK
end
function fns.fn590()
    local vY = os.clock()
    local v1 = if vY - rw < s9() then 1 else 0
    if v1 == 1 then
        return false
    end
    rw = vY
    local vY_1 = pcall(function()
        rL:RequestEgg()
    end)
    return vY_1
end
function fns.onStepped()
    if rz.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = sp.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local C1_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if C1_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.onCopyUSDTAddress()
    sh(sJ, "Copied USDT address")
end
function fns.onCopyJoinScript_JobID()
    local BC = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, su)
    if setclipboard then
        setclipboard(BC)
    elseif toclipboard then
        toclipboard(BC)
    end
    rz:Notify("Copied join script to clipboard")
end
function fns.fn648()
    local Character = sp.Character
    local uT = Character and Character:FindFirstChildOfClass("Humanoid")
    return uT
end
function fns.fn656()
    local Character = sp.Character
    local uZ = Character and Character:FindFirstChild("HumanoidRootPart")
    return uZ
end
function fns.fn700()
    local u4_1
    local u3_1
    u3_1, u4_1 = pcall(function()
        return rv:GetProfile()
    end)
    if u3_1 then
        return u4_1
    end
    return nil
end
function fns.onExportConfigToClipboard()
    local Cm_1
    local Cl_1
    Cl_1, Cm_1 = pcall(HttpService.JSONEncode, HttpService, sE())
    if not Cl_1 then
        rz:Notify("Failed to encode the config")
        return
    end
    local Cl_2 = setclipboard or toclipboard
    local Cl_3 = type(Cl_2) ~= "function"
    local Cr = if Cl_3 then 1 else 0
    local Cp = 1541 * Cr + 2128 * (1 - Cr)
    local Cq = 2242 * Cr + 10 * (1 - Cr)
    if not ((Cp * 2489 + Cq * 2881 + Cp * Cq) % 16777213 == 13749673) then
        Cl_3 = not pcall(Cl_2, Cm_1)
    end
    if Cl_3 then
        rz:Notify("Your executor does not support copying to the clipboard")
        return
    end
    rz:Notify("Config copied to clipboard", 6)
end
function fns.fn753(iy)
    local As = type(iy) ~= "table" or type(iy.UUID) ~= "string" or type(iy.Id) ~= "string"
    if As then
        return false
    end
    local As_1 = sz[iy.Id]
    if not As_1 then
        return false
    end
    local At = iy.Mutations
    local Ay = if At then 1 else 0
    local Aw = 449 * Ay + 3276 * (1 - Ay)
    local Ax = 3858 * Ay + 3881 * (1 - Ay)
    if not ((Aw * 1153 + Ax * 3327 + Aw * Ax) % 16777213 == 15085505) then
        At = iy.Mutation
    end
    if sN(At) then
        return false
    end
    local At_1 = tostring(si("SellMaxRarity", "Common"))
    if (As_1.Rank or 0) > (sX[At_1] or 1) then
        return false
    end
    local At_3 = r1("SellKeepRarities")
    local Au_2 = rA("SellKeepRarities") and At_3[As_1.Rarity]
    if Au_2 then
        return false
    end
    local At_4 = r1("SellEggNames")
    local Au_3 = rA("SellEggNames") and not At_4[As_1.Name]
    if Au_3 then
        return false
    end
    return true
end
function fns.onCopyVenmoLink()
    sh(sq, "Copied Venmo link")
end
function fns.fn796()
    if not Toggles.Fly.Value then
        local CV = s3()
        if CV then
            CV.PlatformStand = false
        end
    end
end
function fns.fn800(ll, lm)
    local Type = lm.Type
    if Type == "Toggle" then
        return { idx = ll, type = "Toggle", value = lm.Value == true }
    elseif Type == "Slider" then
        return { idx = ll, type = "Slider", value = tostring(lm.Value) }
    elseif Type == "Dropdown" then
        return { idx = ll, type = "Dropdown", multi = lm.Multi == true, value = lm.Value }
    elseif Type == "Input" then
        local BQ = lm.Value or ""
        return { idx = ll, type = "Input", text = tostring(BQ) }
    elseif Type == "ColorPicker" then
        return { idx = ll, type = "ColorPicker", value = lm.Value:ToHex(), transparency = lm.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ll,
            type = "KeyPicker",
            mode = lm.Mode,
            key = lm.Value,
            modifiers = lm.Modifiers,
            toggled = lm.Toggled
        }
    else
        return nil
    end
end
function fns.fn819()
    if not rT() then
        return
    end
    pcall(function()
        rD.PromptTrigger:Fire()
    end)
end
function fns.fn890(jZ)
    local DiscordGroup = jZ:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = r3 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = r3 })
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(r9)
    elseif toclipboard then
        toclipboard(r9)
    end
    rz:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn898(iO)
    local Az = type(iO) ~= "table"
    local AF = if Az then 1 else 0
    local AD = 3871 * AF + 1060 * (1 - AF)
    local AE = 2646 * AF + 3114 * (1 - AF)
    if not ((AD * 3004 + AE * 166 + AD * AE) % 16777213 == 5533173) then
        Az = type(iO.UUID) ~= "string"
    end
    if not Az then
        Az = type(iO.Id) ~= "string"
    end
    if Az then
        return false
    end
    local Az_1 = sk[iO.Id]
    if not Az_1 then
        return false
    end
    local AA = iO.Mutations or iO.Mutation
    if sN(AA) then
        return false
    end
    local AA_1 = tostring(si("SellMaxRarity", "Common"))
    if (Az_1.Rank or 0) > (sX[AA_1] or 1) then
        return false
    end
    local AA_3 = r1("SellKeepRarities")
    local AB_2 = rA("SellKeepRarities") and AA_3[Az_1.Rarity]
    if AB_2 then
        return false
    end
    local AA_4 = r1("SellPetNames")
    local AB_3 = rA("SellPetNames") and not AA_4[Az_1.Name]
    if AB_3 then
        return false
    end
    local Az_2 = tonumber(si("SellPetMaxLevel", 100)) or 100
    local Az_3 = tonumber(iO.Level) or 0
    if Az_3 > Az_2 then
        return false
    end
    return true
end
function fns.fn911()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    tb = tick()
end
function fns.fn933(aS, aT)
    return string.format('<font color="%s">%s</font>', aT, aS)
end
function fns.fn947(dW)
    local wI = so()
    local wJ = wI and wI.PlacedObjects
    if type(wJ) ~= "table" then
        return nil
    end
    local wJ_1 = wJ[dW] or wJ[tostring(dW)]
    return wJ_1
end
function fns.onCopyEthereumAddress()
    sh(sO, "Copied Ethereum address")
end
function fns.fn967(aE, aF)
    rz.NotifySide = aF
    pcall(SetNotifySide, aE, aF)
end
function fns.worker2()
    while not rz.Unloaded do
        task.wait(2)
        if sQ("AntiAfk") then
            local Di = tick() - rx
            local Dj = tick() - tb
            if Di >= 300 and Dj >= 60 then
                pcall(sL)
            else
                if Di < 300 and Dj >= 300 then
                    pcall(sL)
                end
            end
        end
    end
end
function fns.onJumpRequest()
    if rz.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local Dc_1 = s3()
        if Dc_1 then
            Dc_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn1005(ak, al)
    if ak.Earnings ~= al.Earnings then
        return ak.Earnings < al.Earnings
    end
    return ak.Name < al.Name
end
local function onInputBegan()
    rx = tick()
end
local function fn1051(bm)
    return next(r1(bm)) ~= nil
end
local function fn1069(fU, fV)
    local x9 = tostring(si("ReplaceCompareBy", "Earnings"))
    local ya = sn(x9, fU)
    local yb = sn(x9, fV)
    if ya <= yb then
        return false
    end
    local x9_1 = tonumber(si("ReplaceMinPercent", 0)) or 0
    if x9_1 <= 0 then
        return true
    elseif yb <= 0 then
        return true
    else
        return ya >= yb * (1 + x9_1 / 100)
    end
end
local function fn1070()
    local A8 = so()
    if not A8 then
        return false
    end
    local A9 = (tonumber(A8.RebirthLevel))
    local Bg = if A9 then 1 else 0
    local Be = 1632 * Bg + 2071 * (1 - Bg)
    local Bf = 1367 * Bg + 3641 * (1 - Bg)
    if not ((Be * 1052 + Bf * 879 + Be * Bf) % 16777213 == 5149401) then
        A9 = 0
    end
    local Ba = A9
    local A9_1 = tonumber(Rebirth.MAX_REBIRTH) or 5
    if Ba >= A9_1 then
        return false
    end
    local A9_2 = Rebirth[Ba + 1]
    local Ba_1 = type(A9_2) ~= "table"
    local Bg_1 = if Ba_1 then 1 else 0
    local Be_1 = 2573 * Bg_1 + 2134 * (1 - Bg_1)
    local Bf_1 = 1426 * Bg_1 + 1355 * (1 - Bg_1)
    if not ((Be_1 * 970 + Bf_1 * 2018 + Be_1 * Bf_1) % 16777213 == 9042576) then
        Ba_1 = type(A9_2.Requirements) ~= "table"
    end
    if Ba_1 then
        return false
    end
    local Requirements = A9_2.Requirements
    local A9_3 = Requirements.Currency and tonumber(Requirements.Currency.Cash)
    local Bb_1 = A9_3
    local Bg_2 = if Bb_1 then 1 else 0
    local Be_2 = 1491 * Bg_2 + 4063 * (1 - Bg_2)
    local Bf_2 = 1309 * Bg_2 + 488 * (1 - Bg_2)
    if not ((Be_2 * 869 + Bf_2 * 567 + Be_2 * Bf_2) % 16777213 == 3989601) then
        Bb_1 = 0
    end
    local A9_4 = Bb_1
    if r5() < A9_4 then
        return false
    end
    local Animals = Requirements.Animals
    if type(Animals) == "table" then
        local Ba_3 = {}
        local Bc = A8.PlacedObjects or {}
        for k, v in pairs(Bc) do
            local A8_1 = type(v) == "table" and v.Type == "Pet" and type(v.Id) == "string"
            if A8_1 then
                local Id = v.Id
                local Bb_3 = Ba_3[v.Id] or 0
                Ba_3[Id] = Bb_3 + 1
            end
        end
        for k, v in pairs(Animals) do
            local A8_3 = type(v) == "table" and type(v.Id) == "string"
            if A8_3 then
                if (Ba_3[v.Id] or 0) < 1 then
                    return false
                end
                Ba_3[v.Id] -= 1
            end
        end
    end
    return true
end
local function worker()
    local BF_1
    while true do
        task.wait(1)
        if rz.Unloaded then
            break
        end
        local BE = math.floor(os.clock() - r4)
        if BE < 60 then
            BF_1 = BE .. "s"
        elseif BE < 3600 then
            BF_1 = string.format("%dm %ds", BE // 60, BE % 60)
        else
            BF_1 = string.format("%dh %dm", BE // 3600, BE % 3600 // 60)
        end
        sA:SetText(rJ("Session time", BF_1, s0))
    end
end
local function fn1076(fK)
    local x0 = type(fK) ~= "table" or type(fK.Id) ~= "string"
    if x0 then
        return nil
    end
    local x0_1 = rN(fK.Mutations)
    if fK.Type == "Pet" then
        return sl(fK.Id, fK.Level, x0_1)
    elseif fK.Type == "Egg" then
        return rQ(fK.Id, x0_1)
    else
        return nil
    end
end
local function fn1081()
    connection:Disconnect()
    connection2:Disconnect()
    rV(false)
end
local function onImportConfigFromClipboardTex()
    local Cu_1
    local Cs = Options.SaveManager_ImportSource.Value or ""
    local Cs_1
    local Ct = tostring(Cs):match("^%s*(.-)%s*$")
    if Ct == "" then
        rz:Notify("Paste an exported config into the box first")
        return
    end
    Cs_1, Cu_1 = pcall(HttpService.JSONDecode, HttpService, Ct)
    local Ct_1 = not Cs_1
    local Cy = if Ct_1 then 1 else 0
    local Cw = 196 * Cy + 2992 * (1 - Cy)
    local Cx = 3383 * Cy + 3848 * (1 - Cy)
    if not ((Cw * 3892 + Cx * 945 + Cw * Cx) % 16777213 == 4622835) then
        Ct_1 = type(Cu_1) ~= "table"
    end
    if not Ct_1 then
        Ct_1 = type(Cu_1.objects) ~= "table"
    end
    if Ct_1 then
        rz:Notify("That is not a valid exported config")
        return
    end
    local Cs_2 = 0
    for i, v in ipairs(Cu_1.objects) do
        if rI(v) then
            Cs_2 += 1
        end
    end
    if Cs_2 == 0 then
        rz:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local Cu_2 = Cs_2 == 1 and "" or "s"
    rz:Notify(("Imported %d setting%s"):format(Cs_2, Cu_2), 6)
end
local function onCopySolanaAddress()
    sh(sB, "Copied Solana address")
end
local function fn1139(im)
    local Ah = r1("SellKeepMutations")
    if not rA("SellKeepMutations") then
        return false
    end
    im = rN(im)
    for k, v in pairs(im) do
        local Ai
        local Aj = type(k) == "number" and type(v) == "string"
        if Aj then
            Ai = v
        else
            local Aj_1 = v == true
            local Ak = type(k) == "string" and Aj_1
            if Ak then
                Ai = k
            elseif type(v) == "string" then
                Ai = v
            end
        end
        if Ai and Ah[Ai] then
            return true
        end
    end
    return false
end
local function fn1141(bT)
    local Character = sp.Character
    if not Character then
        return
    end
    for i, descendant in ipairs(Character:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.CanCollide = bT
        end
    end
end
local function fn1142(bN)
    local Character = sp.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(bN)
    else
        local vc_1 = sM()
        if vc_1 then
            vc_1.CFrame = bN
        end
    end
end
local function fn1156(bZ)
    for i, descendant in ipairs(Workspace:GetDescendants()) do
        local vm = descendant:IsA("ProximityPrompt") and descendant:GetAttribute("OwnerUserId") == sp.UserId and bZ(descendant)
        if vm then
            return descendant
        end
    end
    return nil
end
local function onCopyPayPalLink()
    sh(sv, "Copied PayPal link")
end
local function fn1168()
    local u6 = so()
    local u7 = u6 and u6.Currency
    local u6_1 = u7
    if u7 then
        u7 = tonumber(u6_1.Cash)
    end
    return u7 or 0
end
local function fn1185()
    local v3_1
    local v2_1
    v2_1, v3_1 = pcall(function()
        return rL:GetCurrentEgg()
    end)
    if v2_1 then
        return v3_1
    end
    return nil
end
local function fn1194(a9, ba)
    local uH = Options[a9]
    if uH == nil then
        return ba
    end
    return uH.Value
end
local function fn1199()
    sh(se, "Copied Discord invite to clipboard")
end
local function onInputChanged(mg)
    local UserInputType = mg.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        rx = tick()
    end
end
local function fn1206()
    local zF = so()
    local zG = zF and zF.Crates
    local zH = zG
    if zG then
        zG = tonumber(zH.FullCratesCount)
    end
    local zI = zG or 0
    local zG_1 = zH
    if zG_1 then
        zG_1 = tonumber(zH.StoredValue)
    end
    local zI_1 = zG_1
    local zO = if zI_1 then 1 else 0
    local zM = 2512 * zO + 379 * (1 - zO)
    local zN = 1500 * zO + 3901 * (1 - zO)
    if not ((zM * 2490 + zN * 202 + zM * zN) % 16777213 == 10325880) then
        zI_1 = 0
    end
    local zG_2 = zH
    local zK = zI_1
    if zG_2 then
        zG_2 = zH.TopContent
    end
    local zH_1 = zG_2
    local zG_3 = type(zH_1) == "table" and next(zH_1) ~= nil
    if zI <= 0 and zK <= 0 and not zG_3 then
        return
    end
    local zG_5 = type(zF.InventoryCrates) == "table" and next(zF.InventoryCrates) ~= nil
    if zG_5 then
        return
    end
    ss(function(hV)
        return hV.Name == "CollectPrompt"
    end)
end
local function fn1248()
    local Bv_1
    local Bu_1
    if identifyexecutor then
        Bv_1, Bu_1 = identifyexecutor()
        local Bw = Bv_1 ~= ""
        local Bx = type(Bv_1) == "string" and Bw
        if Bx then
            local Bw_1 = type(Bu_1) == "string" and Bu_1 ~= "" and Bv_1 .. " " .. Bu_1
            local Bu_2 = Bw_1
            local BB = if Bu_2 then 1 else 0
            local Bz = 51 * BB + 2395 * (1 - BB)
            local BA = 812 * BB + 2811 * (1 - BB)
            if not ((Bz * 2016 + BA * 431 + Bz * BA) % 16777213 == 494200) then
                Bu_2 = Bv_1
            end
            ta = Bu_2
        end
    end
end
local function onUnload()
    rz:Unload()
end
local function fn1286()
    if not Toggles.WalkSpeedEnabled.Value then
        local CX = s3()
        if CX then
            CX.WalkSpeed = 16
        end
    end
end
ru = nil
rv = nil
rw = nil
rx = nil
rz = nil
rA = nil
CurrentCamera2 = nil
rD = nil
rE = nil
rI = nil
rJ = nil
rK = nil
rL = nil
rN = nil
rP = nil
rQ = nil
rS = nil
rT = nil
rU = nil
rV = nil
Rebirth = nil
connection2 = nil
FloorUpgrades = nil
r1 = nil
r2 = nil
r3 = nil
r4 = nil
r5 = nil
r6 = nil
r7 = nil
r9 = nil
sa = nil
sb = nil
connection = nil
sd = nil
se = nil
sf = nil
local ry, rC, rF, rG, rH, rM, LevelPriceCalculator, RebirthHelper, rW, rZ, r0, r8, sg
sh = nil
si = nil
sj = nil
sk = nil
sl = nil
Options = nil
sn = nil
so = nil
sp = nil
sq = nil
sr = nil
ss = nil
Toggles = nil
su = nil
sv = nil
sx = nil
sz = nil
sA = nil
sB = nil
Workspace = nil
sD = nil
sE = nil
sF = nil
HttpService = nil
sI = nil
sJ = nil
sK = nil
sL = nil
sM = nil
sN = nil
sO = nil
VirtualInputManager = nil
sQ = nil
sR = nil
VirtualUser = nil
SetNotifySide = nil
UserInputService = nil
sW = nil
sX = nil
sY = nil
sZ = nil
s_ = nil
s0 = nil
s2 = nil
s3 = nil
local CollectionService, sy, sG, sT, s1
s4 = nil
s5 = nil
s6 = nil
s7 = nil
s9 = nil
ta = nil
tb = nil
local s8
s8 = nil
UserInputService, VirtualUser, VirtualInputManager, HttpService, Workspace, CollectionService, sp, se, r9, FloorUpgrades, Rebirth, RebirthHelper, LevelPriceCalculator, rL, rH, rF, rD, ry, rv, s4, sX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Dw_58 = game:GetService("Players")
local Dw_8 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
VirtualInputManager = game:GetService("VirtualInputManager")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
sp = Dw_58.LocalPlayer
local Dw_60 = "My Dancing Animals!"
se = "https://discord.gg/ehKVq7pf7v"
r9 = "https://rscripts.net/@Ouroboros"
local Dw_38 = require(Dw_8:WaitForChild("Knit"))
local Dw_27 = require(Dw_8:WaitForChild("Data"):WaitForChild("Eggs"))
local Dw_17 = require(Dw_8.Data:WaitForChild("Pets"))
FloorUpgrades = require(Dw_8.Data:WaitForChild("FloorUpgrades"))
Rebirth = require(Dw_8.Data:WaitForChild("Rebirth"))
RebirthHelper = require(Dw_8.Shared.Modules:WaitForChild("RebirthHelper"))
LevelPriceCalculator = require(Dw_8.Shared.Modules:WaitForChild("LevelPriceCalculator"))
rL = Dw_38.GetService("EggConveyorService")
rH = Dw_38.GetService("PlacementService")
rF = Dw_38.GetService("PetService")
rD = Dw_38.GetService("RebirthService")
ry = Dw_38.GetService("SellService")
rv = Dw_38.GetController("ProfileController")
s4 = Dw_38.GetController("PlotController")
local Dw_41 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Exotic" }
sX = {}
for i, v in ipairs(Dw_41) do
    sX[v] = i
end
Dw_38, sD, sz, Dw_47, sk, sf, sb = nil, nil, nil, nil, nil, nil, nil
Dw_58 = 3
repeat
    Dw_31 = (Dw_58 * 5 + 5) % 6 + 1
    if Dw_31 <= 3 then
        if Dw_31 <= 2 then
            if Dw_31 <= 1 then
                Dw_19 = {
                    "avatrauei",
                    "jdfmtdigkq",
                    "hcbwhwpmjy",
                    "iftikoinkfh",
                    "tpckrzscxz",
                    "eizasz",
                    "iltyqe",
                    "jozsxc",
                    "arhxr",
                    "buvyc",
                    "uewcpvvt"
                }
                local Ei = Dw_58
                Dw_11 = Dw_19[Ei % 11 + 1]
                if Dw_11:len() <= Dw_11:gsub("(.)", "%1%1", Ei % 3 % 2 + 1):len() then
                    sf = {}
                else
                    sb = {}
                end
                Dw_58 = (Dw_58 + 11) % 48
            else
                Dw_19 = {
                    "lepbt",
                    "egphwur",
                    "qslydybx",
                    "ospa",
                    "qicqaadl",
                    "cfpcyge",
                    "htewd",
                    "mabzymkebiw",
                    "kfqrruna"
                }
                if Dw_19[(Dw_58 * 59 + 106) % 9 + 1] <= Dw_19[(Dw_58 * 59 + 106) % 9 + 1] then
                    sb = {}
                else
                    sD = {}
                end
                Dw_58 = (Dw_58 + 17) % 48
            end
        else
            if Dw_58 * 50163869 + 6 + 2 <= Dw_58 * 50163869 + 6 + 2 + 5 then
                Dw_38 = {}
                sD = {}
            else
                sD = {}
                Dw_38 = {}
            end
            Dw_58 = (Dw_58 + 41) % 48
        end
    elseif Dw_31 <= 5 then
        if Dw_31 <= 4 then
            Dw_31 = {
                "koujlglg",
                "yqtcjlfpadaj",
                "twtupt",
                "oquhy",
                "qex",
                "cdyfcca",
                "meqspx",
                "xbqtwmjsqep",
                "lpyh",
                "agvpvnawlnp",
                "lzhovd",
                "xqzxhd"
            }
            if Dw_31[(Dw_58 * 19 + 44) % 12 + 1] < Dw_31[(Dw_58 * 19 + 44) % 12 + 1] then
                Dw_47 = {}
            else
                sz = {}
            end
            Dw_58 = (Dw_58 + 35) % 48
        else
            local D5 = bit32.rrotate(bit32.bxor(bit32.lrotate(Dw_58, 16), string.byte(tostring(Dw_47))), 8)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(D5, 4081951539), 2257326719), (bit32.bxor(bit32.band(D5, 213015756), 2483102995))), 2257326719), 2483102995) ~= D5 then
                sk = {}
            else
                Dw_47 = {}
            end
            Dw_58 = (Dw_58 + 35) % 48
        end
    else
        Dw_31 = (vector.create((Dw_58 * 5 + 2) % 11 + 1, (Dw_58 * 2 + 8) % 13 + 1, (Dw_58 * 11 + 15) % 17 + 1))
        Dw_19 = (vector.create((Dw_58 * 4 + 6) % 11 + 1, (Dw_58 * 1 + 13) % 13 + 1, (Dw_58 * 15 + 2) % 17 + 1))
        Dw_11 = (vector.create((Dw_58 * 2 + 4) % 11 + 1, (Dw_58 * 3 + 6) % 13 + 1, (Dw_58 * 10 + 12) % 17 + 1))
        Dw_62 = (vector.create((Dw_58 * 5 + 4) % 5 + 1, (Dw_58 * 1 + 4) % 7 + 1, (Dw_58 * 5 + 1) % 9 + 1))
        if vector.dot(vector.cross(Dw_31, (vector.cross(Dw_19, Dw_11))), Dw_62) == vector.dot(Dw_19 * vector.dot(Dw_31, Dw_11) - Dw_11 * vector.dot(Dw_31, Dw_19), Dw_62) + 3 then
            sf = {}
        else
            sk = {}
        end
        Dw_58 = (Dw_58 + 35) % 48
    end
until (Dw_58 * 25 + 16) % 48 == 25
Dw_31 = {}
for k, v in pairs(Dw_27) do
    Dw_58 = type(v) == "table" and type(v.Name) == "string"
    if Dw_58 then
        Dw_27 = v.Weight or 0
        Dw_58 = Dw_27 > 0
    end
    if Dw_58 then
        Dw_58 = v.Rarity and v.Rarity.Name
        Dw_27 = Dw_58 or "Common"
        Dw_58 = Dw_27
        Dw_27 = #Dw_31 + 1
        Dw_19 = v.Name
        Dw_11 = v.Cost and tonumber(v.Cost.Amount)
        Dw_62 = Dw_11 or 0
        Dw_11 = tonumber(v.SellValue) or 0
        Dw_54 = v.Rarity and tonumber(v.Rarity.Rank)
        Dw_43 = Dw_54 or sX[Dw_58]
        Dw_54 = Dw_43 or 0
        Dw_31[Dw_27] = { Id = k, Name = Dw_19, Cost = Dw_62, SellValue = Dw_11, Rarity = Dw_58, Rank = Dw_54 }
    end
end
Dw_19 = 4
repeat
    Dw_58 = (vector.create((Dw_19 * 2 + 6) % 11 + 1, (Dw_19 * 5 + 4) % 13 + 1, (Dw_19 * 9 + 12) % 17 + 1))
    Dw_27 = (vector.create((Dw_19 * 7 + 8) % 11 + 1, (Dw_19 * 1 + 5) % 13 + 1, (Dw_19 * 3 + 6) % 17 + 1))
    Dw_11 = (vector.create((Dw_19 * 1 + 4) % 5 + 1, (Dw_19 * 1 + 3) % 7 + 1, (Dw_19 * 2 + 2) % 9 + 1))
    if math.abs((vector.angle(Dw_58, Dw_27, Dw_11))) - math.abs((vector.angle(Dw_27, Dw_58, Dw_11))) == 0 then
        table.sort(Dw_31, fns.fn252)
    else
        table.sort(Dw_31, fns.fn252)
    end
    Dw_19 = (Dw_19 + 3) % 8
until (Dw_19 * 3 + 1) % 8 == 6
for i, v in ipairs(Dw_31) do
    Dw_38[#Dw_38 + 1] = v.Name
    sD[v.Name] = v
    sz[v.Id] = v
end
Dw_58 = {}
for k, v in pairs(Dw_17) do
    Dw_27 = type(v) == "table" and type(v.Name) == "string"
    if Dw_27 then
        Dw_27 = v.Rarity and v.Rarity.Name
        Dw_17 = Dw_27 or "Common"
        Dw_27 = Dw_17
        Dw_17 = tostring(k)
        Dw_31 = v.Name
        Dw_19 = tonumber(v.Earnings) or 0
        Dw_11 = tonumber(v.IncreasePerLevel) or 0
        Dw_62 = tonumber(v.SellValue) or 0
        Dw_54 = v.Rarity and tonumber(v.Rarity.Rank)
        Dw_43 = Dw_54 or sX[Dw_27]
        Dw_54 = Dw_43 or 0
        Dw_43 = {
            Id = Dw_17,
            Name = Dw_31,
            Earnings = Dw_19,
            IncreasePerLevel = Dw_11,
            SellValue = Dw_62,
            Rarity = Dw_27,
            Rank = Dw_54,
            EggId = v.DisplayEggID
        }
        sk[Dw_43.Id] = Dw_43
        Dw_58[#Dw_58 + 1] = Dw_43
        if type(Dw_43.EggId) == "string" then
            sf[Dw_43.EggId] = Dw_43.Id
        end
    end
end
Dw_27 = 6
repeat
    if Dw_27 * 68121477 + 2 + 2 >= Dw_27 * 68121477 + 2 + 2 + 3 then
        table.sort(Dw_58, fns.fn1005)
    else
        table.sort(Dw_58, fns.fn1005)
    end
    Dw_27 = (Dw_27 + 1) % 8
until (Dw_27 * 1 + 2) % 8 == 1
for i, v in ipairs(Dw_58) do
    Dw_47[#Dw_47 + 1] = v.Name
end
Dw_58 = Dw_8.Data:FindFirstChild("Mutations")
if Dw_58 then
    for i, child in ipairs(Dw_58:GetChildren()) do
        if child:IsA("ModuleScript") then
            Dw_58, Dw_27 = pcall(require, child)
            Dw_17 = Dw_58 and type(Dw_27) == "table"
            if Dw_17 then
                Dw_58 = child.Name
                Dw_17 = tonumber(Dw_27.EarningsBoost) or 1
                sb[Dw_58] = Dw_17
                if type(Dw_27.Id) == "string" then
                    Dw_58 = Dw_27.Id
                    Dw_17 = tonumber(Dw_27.EarningsBoost) or 1
                    sb[Dw_58] = Dw_17
                end
            end
        end
    end
end
Dw_58 = {}
Dw_27 = {}
for k in pairs(sb) do
    if not Dw_27[k] then
        Dw_27[k] = true
        Dw_58[#Dw_58 + 1] = k
    end
end
table.sort(Dw_58)
rz, Dw_8, s_ = nil, nil, nil
Dw_17 = 3
repeat
    Dw_31 = {
        "ejzxin",
        "ptgfxwap",
        "fshvv",
        "hloqdgjcu",
        "oxs",
        "rxflrb",
        "ity",
        "duanlb",
        "rcjqdpzewcs",
        "eqr",
        "rnqm",
        "aopwujedsz"
    }
    local Ey = Dw_17
    Dw_19 = Dw_31[Ey % 12 + 1]
    if Dw_19:len() <= Dw_19:gsub("(.)", "%1%1", Ey % 3 % 2 + 1):len() then
        rz = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        pcall(fns.fn243)
        Dw_8 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        s_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    else
        s_ = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        Dw_8 = loadstring(game:HttpGet(s_ .. "Library.lua"))()
        pcall(fns.fn243)
        rz = loadstring(game:HttpGet(s_ .. "addons/ThemeManager.lua"))()
        loadstring(game:HttpGet(s_ .. "addons/SaveManager.lua"))()
    end
    Dw_17 = (Dw_17 + 3) % 4
until (Dw_17 * 1 + 1) % 4 == 3
SetNotifySide = nil
SetNotifySide = rz.SetNotifySide
rz.SetNotifySide = fns.fn967
Toggles, Options, s0, rw, sh, r3, rU, rJ, sQ, si, r1, rA, s3, sM, so, r5, rK, ru, sI, sa, rP, sY, ss, s9, sT, sg, r0, sK, s8, sd, rE, sj, rW, rC, sx, r6, s5, rN, s7, sl, rQ, s1, sn, r8, rG, sG, sr, r2, sF, sN, rZ, sy, s2, rS, s6, rT, r7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = rz.Toggles
Options = rz.Options
sh = fns.fn431
r3 = fn1199
rU = fns.fn933
rJ = fns.fn384
Dw_43 = "#7fd47f"
Dw_54 = "#6ec1ff"
s0 = "#e8a34d"
Dw_62 = "#8b93a3"
sQ = fns.fn159
si = fn1194
r1 = fns.fn585
rA = fn1051
s3 = fns.fn648
sM = fns.fn656
so = fns.fn700
r5 = fn1168
rK = fns.fn452
ru = fn1142
sI = fn1141
sa = fn1156
rP = function(b5)
    local vw_1
    local vv = b5 and b5.Parent
    local vv_3
    local vu = vv
    local vv_1 = vu and vu:IsA("BasePart")
    if vv_1 then
        return vu.CFrame
    end
    local vv_2 = vu and vu:IsA("Model")
    if vv_2 then
        vv_3, vw_1 = pcall(function()
            return vu:GetPivot()
        end)
        if vv_3 then
            return vw_1
        end
        return nil
    end
    return nil
end
sY = fns.fn226
ss = fns.fn526
rw = 0
s9 = fns.fn63
sT = fns.fn590
sg = fn1185
r0 = fns.fn414
sK = function()
    local wc = sg()
    local wd = type(wc) ~= "table" or type(wc.UUID) ~= "string"
    if wd then
        local wd_1 = sQ("AutoRoll") or sQ("AutoSkipUnaffordable")
        if wd_1 then
            sT()
        end
        return
    end
    local wd_2 = sz[wc.Id]
    local wd_3 = wd_2 and wd_2.Cost
    local wk = if wd_3 then 1 else 0
    local wi = 3297 * wk + 3219 * (1 - wk)
    local wj = 673 * wk + 1282 * (1 - wk)
    if not ((wi * 2953 + wj * 1209 + wi * wj) % 16777213 == 12768579) then
        wd_3 = math.huge
    end
    local we_1 = wd_3
    local wd_4 = r5() >= we_1
    local we_2 = sQ("AutoBuyEggs") and r0(wc.Id)
    local wf = we_2
    if we_2 then
        we_2 = wd_4
    end
    if we_2 then
        pcall(function()
            rL.PurchaseEgg:Fire(wc.UUID)
        end)
        task.wait(0.2)
        return
    end
    local we_3 = not wd_4
    local wg = sQ("AutoSkipUnaffordable") and we_3
    if wg then
        sT()
        return
    end
    local wd_5 = not wf
    local we_4 = sQ("AutoRoll") and wd_5
    if we_4 then
        sT()
    end
end
s8 = function()
    local dl = {}
    local function dm(dn)
        if not dn then
            return
        end
        for i, child in ipairs(dn:GetChildren()) do
            local wo = child:IsA("Tool") and CollectionService:HasTag(child, "Egg")
            if wo then
                dl[#dl + 1] = child
            end
        end
    end
    dm(sp:FindFirstChild("Backpack"))
    dm(sp.Character)
    return dl
end
sd = function()
    local ww
    local wx = so()
    local wx_2
    local wy = wx and tonumber(wx.RebirthLevel)
    local wy_1
    ww = wy or 0
    wx_2, wy_1 = pcall(function()
        return RebirthHelper.CalculateMaxSlotForRebirth(ww)
    end)
    local wz = wx_2 and type(wy_1) == "number"
    if wz then
        return wy_1
    end
    return 10
end
rE = function(dJ)
    local wB
    local wC = so()
    local wC_2
    local wD = wC and tonumber(wC.RebirthLevel)
    local wD_1
    wB = wD or 0
    wC_2, wD_1 = pcall(function()
        return RebirthHelper.IsSlotUnlocked(dJ, wB)
    end)
    if wC_2 then
        return wD_1 == true
    end
    return dJ <= sd()
end
sj = fns.fn947
rW = fns.fn315
rC = fns.fn158
sx = function()
    local w2 = s8()
    if #w2 == 0 then
        return
    end
    local w3 = tostring(si("PlaceMinRarity", "Common"))
    local w4 = sX[w3] or 1
    local w3_1 = {}
    for i, v in ipairs(w2) do
        local w2_1 = rC(v)
        if w2_1 >= w4 then
            w3_1[#w3_1 + 1] = { tool = v, rank = w2_1 }
        end
    end
    table.sort(w3_1, function(et, eu)
        if et.rank ~= eu.rank then
            return et.rank > eu.rank
        end
        return tostring(et.tool.Name) < tostring(eu.tool.Name)
    end)
    for i, v in ipairs(w3_1) do
        local w1
        local tool = v.tool
        local attr = tool:GetAttribute("UUID")
        if type(attr) == "string" then
            w1 = rW()
            if not w1 then
                return
            end
            local wZ = s3()
            if wZ and tool.Parent ~= sp.Character then
                pcall(function()
                    wZ:EquipTool(tool)
                end)
                task.wait(0.1)
            end
            pcall(function()
                rH:PlaceItem(w1, attr)
            end)
            task.wait(0.25)
        end
    end
end
r6 = function()
    local xj = sd()
    for i = 1, xj do
        local xp = i
        local xj_1 = sj(xp)
        local xk = type(xj_1) == "table" and xj_1.Type == "Egg"
        if xk then
            local xk_1 = xj_1.IsReady == true or tonumber(xj_1.HatchProgress) == 1
            if xk_1 then
                pcall(function()
                    rH:HatchEgg(xp)
                end)
                pcall(function()
                    rH:RequestSkip(xp)
                end)
                task.wait(0.2)
            end
        end
    end
end
s5 = function()
    local xs = tonumber(si("PetUpgradeMaxLevel", 100)) or 100
    local xs_1 = sd()
    for i = 1, xs_1 do
        local xr
        local xz = i
        local xs_2 = sj(xz)
        local xu = type(xs_2) == "table" and xs_2.Type == "Pet"
        if xu then
            local xu_1 = tonumber(xs_2.Level) or 0
            local xq = xu_1
            if xq < xs then
                xr = nil
                pcall(function()
                    xr = LevelPriceCalculator.CalculateUpgradePrice(xq)
                end)
                local xs_3 = type(xr) ~= "number" or r5() >= xr
                if xs_3 then
                    pcall(function()
                        rF:UpgradePet(xz)
                    end)
                    task.wait(0.15)
                end
            end
        end
    end
end
rN = fns.fn128
s7 = fns.fn333
sl = fns.fn428
rQ = fns.fn45
s1 = fn1076
sn = fns.fn296
r8 = fn1069
rG = function(f2)
    local function yp(f4)
        if not f4 then
            return nil
        end
        for i, child in ipairs(f4:GetChildren()) do
            local ye = child:IsA("Tool") and child:GetAttribute("UUID") == f2
            if ye then
                return child
            end
        end
        return nil
    end
    local yq = (yp(sp.Character))
    local yu = if yq then 1 else 0
    local ys = 2590 * yu + 1416 * (1 - yu)
    local yt = 2827 * yu + 1591 * (1 - yu)
    if not ((ys * 4028 + yt * 557 + ys * yt) % 16777213 == 2551876) then
        yq = yp(sp:FindFirstChild("Backpack"))
    end
    return yq
end
sG = function(gc)
    local yP, yQ, yR
    yQ = {}
    yR = {}
    yP = function(gg, gh, gi, gj, gk, gl)
        local yv = type(gi) ~= "string" or yQ[gi]
        local yv_1
        if yv then
            return
        end
        if gg == "Pet" then
            yv_1 = sl(gh, gj, gk)
        else
            yv_1 = rQ(gh, gk)
        end
        if not yv_1 then
            return
        end
        yQ[gi] = true
        yR[#yR + 1] = { kind = gg, id = gh, uuid = gi, tool = gl, score = yv_1 }
    end
    local function yS(gv)
        if not gv then
            return
        end
        for i, child in ipairs(gv:GetChildren()) do
            if child:IsA("Tool") then
                local attr = child:GetAttribute("UUID")
                local yB = rN(child:GetAttribute("Mutations"))
                if CollectionService:HasTag(child, "Pet") then
                    local yC_1 = child:GetAttribute("Id") or child.Name
                    local yC_2 = tonumber(child:GetAttribute("Level")) or 0
                    yP("Pet", yC_1, attr, yC_2, yB, child)
                else
                    local yC_3 = gc and CollectionService:HasTag(child, "Egg")
                    if yC_3 then
                        local yC_4 = sD[child.Name]
                        local yD_2 = (child:GetAttribute("Id"))
                        if not yD_2 then
                            yD_2 = yC_4 and yC_4.Id
                        end
                        local yC_5 = yD_2
                        if type(yC_5) == "string" then
                            yP("Egg", yC_5, attr, 0, yB, child)
                        end
                    end
                end
            end
        end
    end
    yS(sp:FindFirstChild("Backpack"))
    yS(sp.Character)
    local yS_1 = so()
    local yT = gc and yS_1 and type(yS_1.Eggs) == "table"
    if yT then
        for k, v in pairs(yS_1.Eggs) do
            if type(v) == "table" then
                yP("Egg", v.Id, v.UUID, 0, rN(v.Mutations), rG(v.UUID))
            end
        end
    end
    local yT_1 = yS_1 and type(yS_1.InventoryPets) == "table"
    if yT_1 then
        for k, v in pairs(yS_1.InventoryPets) do
            if type(v) == "table" then
                local yS_2 = v.Id or v.ID
                local yT_2 = v.UUID or k
                local Level = v.Level
                local yV = rN(v.Mutations)
                local yW = v.UUID or k
                yP("Pet", yS_2, yT_2, Level, yV, rG(yW))
            end
        end
    end
    return yR
end
sr = function()
    local zc, zf
    local zj_1
    local zg = sQ("ReplaceIncludeEggs")
    local zg_3
    local zh = r1("ReplaceProtectRarities")
    local zh_4
    local zi = rA("ReplaceProtectRarities")
    zf, zj_1 = nil, nil
    local zk = tostring(si("ReplaceCompareBy", "Earnings"))
    local zl = sd()
    local zt = 1
    while zt <= zl do
        local zu = zt
        if rE(zu) then
            local zl_1 = sj(zu)
            local zm = type(zl_1) == "table"
            if zm then
                zm = zl_1.Type == "Pet" or zl_1.Type == "Egg"
            end
            if zm then
                if not (zl_1.Type == "Egg" and not zg) then
                    local zm_2 = s1(zl_1)
                    local zl_2 = zm_2
                    if zl_2 then
                        zl_2 = not (zi and zh[zm_2.rarity])
                    end
                    if zl_2 then
                        local zl_3 = false
                        if not zj_1 then
                            zl_3 = true
                        else
                            local zn_4 = sn(zk, zm_2)
                            local zo = sn(zk, zj_1)
                            if zn_4 < zo then
                                zl_3 = true
                            elseif zn_4 == zo and zm_2.earnings < zj_1.earnings then
                                zl_3 = true
                            end
                        end
                        if zl_3 then
                            zf = zu
                            zj_1 = zm_2
                        end
                    end
                end
            end
        end
        zt += 1
    end
    if not zf or not zj_1 then
        return
    end
    local zh_2 = sG(zg)
    zc = nil
    for i, v in ipairs(zh_2) do
        if r8(v.score, zj_1) then
            if not zc then
                zc = v
            else
                local zg_1 = sn(zk, zc.score)
                local zh_3 = sn(zk, v.score)
                if zh_3 > zg_1 then
                    zc = v
                else
                    if zh_3 == zg_1 and v.score.earnings > zc.score.earnings then
                        zc = v
                    end
                end
            end
        end
    end
    if not zc then
        return
    end
    local zg_2 = zc.tool or rG(zc.uuid)
    local zd = zg_2
    if not zd then
        return
    end
    zg_3, zh_4 = pcall(function()
        return rH:PickupItem(zf)
    end)
    if not zg_3 or zh_4 == false then
        return
    end
    task.wait(0.2)
    local zg_4 = zc.tool or rG(zc.uuid)
    zd = zg_4
    if not zd then
        return
    end
    local ze = s3()
    if ze and zd.Parent ~= sp.Character then
        pcall(function()
            ze:EquipTool(zd)
        end)
        task.wait(0.1)
    end
    pcall(function()
        rH:PlaceItem(zf, zc.uuid)
    end)
    task.wait(0.25)
end
r2 = fn1206
sF = function()
    local zV = so()
    local zW = zV and zV.InventoryCrates
    local zW_1 = type(zW) == "table" and next(zW) ~= nil
    local zV_2 = false
    local Character = sp.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local zW_3 = child:IsA("Tool") and child.Name == "Crates"
            if zW_3 then
                zV_2 = true
                break
            end
        end
    end
    local zW_4 = not zV_2
    local zY = not zW_1
    if zY ~= false then
        zY = zW_4
    end
    if zY then
        local Backpack = sp:FindFirstChild("Backpack")
        if Backpack then
            for i, child in ipairs(Backpack:GetChildren()) do
                local Ag = child
                local zW_6 = Ag:IsA("Tool") and Ag.Name == "Crates"
                if zW_6 then
                    local zU = s3()
                    if zU then
                        pcall(function()
                            zU:EquipTool(Ag)
                        end)
                        zV_2 = true
                        task.wait(0.1)
                    end
                    break
                end
            end
        end
    end
    local zW_7 = not zV_2
    local zY_1 = not zW_1
    if zY_1 ~= false then
        zY_1 = zW_7
    end
    if zY_1 then
        return
    end
    ss(function(ij)
        return ij.ActionText == "Sell" and ij.ObjectText == "Crates"
    end)
end
sN = fn1139
rZ = fns.fn753
sy = fns.fn898
s2 = function()
    local AJ
    local AK = so()
    if not AK then
        return
    end
    AJ = {}
    local AL = sQ("SellEggsEnabled") and type(AK.Eggs) == "table"
    if AL then
        for i, v in ipairs(AK.Eggs) do
            if rZ(v) then
                AJ[#AJ + 1] = v.UUID
            end
        end
    end
    local AL_1 = sQ("SellPetsEnabled") and type(AK.Pets) == "table"
    if AL_1 then
        for i, v in ipairs(AK.Pets) do
            if sy(v) then
                AJ[#AJ + 1] = v.UUID
            end
        end
    end
    if #AJ == 0 then
        return
    end
    pcall(function()
        ry.Sell:Fire(AJ)
    end)
    task.wait(0.35)
end
rS = fns.fn8
s6 = fns.fn309
rT = fn1070
r7 = fns.fn819
Dw_27 = rz:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = se, Copyable = true }, "|", Dw_60 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
Dw_11 = {
    Info = Dw_27:AddTab("Info", "info"),
    Main = Dw_27:AddTab("Main", "paw-print"),
    Player = Dw_27:AddTab("Player", "person-standing"),
    Settings = Dw_27:AddTab("Settings", "settings")
}
Dw_11.Eggs = Dw_11.Main:AddSubTab("Eggs", "egg")
Dw_11.Ranch = Dw_11.Main:AddSubTab("Ranch", "house")
Dw_11.Crates = Dw_11.Main:AddSubTab("Crates", "package")
Dw_19 = fns.fn890
for k, v in Dw_11 do
    Dw_27 = v ~= Dw_11.Main and v ~= Dw_11.Info
    if Dw_27 then
        Dw_19(v)
    end
end
ta, Dw_27, Dw_34, sA, su, Dw_31 = nil, nil, nil, nil, nil, nil
Dw_17 = 17
repeat
    Dw_19 = (Dw_17 * 2 + 2) % 3 + 1
    if Dw_19 <= 2 then
        if Dw_19 <= 1 then
            local E3 = bit32.rrotate(bit32.bxor(bit32.lrotate(Dw_17, 6), string.byte(tostring(ta))), 9)
            if bit32.bxor(bit32.lrotate(bit32.bxor(E3, 4181986745), 8), 1141750265) == bit32.lrotate(E3, 8) then
                ta = "Unknown"
                pcall(fn1248)
                Dw_27 = Dw_11.Info:AddLeftGroupbox("Account", "circle-user")
                Dw_27:AddLabel(rJ("User", sp.Name, Dw_43), true)
                Dw_27:AddLabel(rJ("Status", "Keyless", Dw_43), true)
                Dw_27:AddLabel(rJ("Executor", ta, Dw_43), true)
                Dw_34 = Dw_11.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                Dw_34:AddLabel(rU(Dw_60 .. " [" .. tostring(game.PlaceId) .. "]", Dw_54), true)
                Dw_34:AddLabel(rJ("Place ID", tostring(game.PlaceId), Dw_54), true)
                sA = Dw_34:AddLabel(rJ("Session time", "0s", s0), true)
            else
                sA = "Unknown"
                pcall(fn1248)
                Dw_11 = Dw_27.Info:AddLeftGroupbox("Account", "circle-user")
                Dw_11:AddLabel(Dw_34("User", rJ.Name, Dw_54), true)
                Dw_11:AddLabel(Dw_34("Status", "Keyless", Dw_54), true)
                Dw_11:AddLabel(Dw_34("Executor", sA, Dw_54), true)
                s0 = Dw_27.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                s0:AddLabel(Dw_60(rU .. " [" .. tostring(game.PlaceId) .. "]", ta), true)
                s0:AddLabel(Dw_34("Place ID", tostring(game.PlaceId), ta), true)
                sp = s0:AddLabel(Dw_34("Session time", "0s", Dw_43), true)
            end
            Dw_17 = (Dw_17 + 5) % 24
        else
            Dw_19 = (vector.create((Dw_17 * 7 + 2) % 11 + 1, (Dw_17 * 2 + 3) % 13 + 1, (Dw_17 * 8 + 6) % 17 + 1))
            local ED = vector.floor(Dw_19) + vector.ceil(Dw_19 * -1)
            if vector.dot(ED, ED) == 0 then
                su = tostring(game.JobId)
            else
                Dw_34 = tostring(game.JobId)
            end
            Dw_17 = (Dw_17 + 5) % 24
        end
    else
        local Eq = bit32.rrotate(bit32.bxor(bit32.lrotate(Dw_17, 22), string.byte(tostring(ta))), 28)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Eq, 1989019347), 1631453798), (bit32.bxor(bit32.band(Eq, 2305947948), 790349256))), 1631453798), 790349256) ~= Eq then
            su = #Dw_31 > 18
        else
            Dw_31 = #su > 18
        end
        Dw_17 = (Dw_17 + 8) % 24
    end
until (Dw_17 * 17 + 17) % 24 == 12
if Dw_31 then
    Dw_27 = 2
    repeat
        Dw_17 = {
            "kvf",
            "ogz",
            "qppkgp",
            "olf",
            "pvvv",
            "wujubqinkeeq",
            "qmmmipm",
            "rkemwjxutjtt",
            "xljccjmd",
            "qbuwyrf",
            "xcun",
            "kxmb"
        }
        if Dw_17[(Dw_27 * 9 + 86) % 12 + 1] <= Dw_17[(Dw_27 * 9 + 86) % 12 + 1] then
            Dw_31 = string.sub(su, 1, 18) .. "..."
        else
            su = string.sub(Dw_31, 1, 18) .. "..."
        end
        Dw_27 = (Dw_27 + 3) % 8
    until (Dw_27 * 3 + 4) % 8 == 3
end
Dw_27 = Dw_31 or su
r4, sW, sR, sO, sJ, sB, sv, sq, Dw_57, ConveyorGroup, rx, tb, connection, connection2, CurrentCamera2, rM, sZ, sE, rI, sL, rV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Dw_52 = Dw_27
Dw_34:AddLabel(rJ("Server", Dw_52, Dw_62), true)
Dw_34:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
r4 = os.clock()
task.spawn(worker)
Dw_19 = Dw_11.Info:AddRightGroupbox("Scripts", "package")
Dw_19:AddLabel(rU("Included in this hub", Dw_62), true)
Dw_19:AddLabel(rU(Dw_60, Dw_54), true)
Dw_31 = Dw_11.Info:AddRightGroupbox("Features", "list")
Dw_31:AddLabel(rU("Egg Automation", Dw_54), true)
Dw_31:AddLabel(rU("Ranch Automation", s0), true)
Dw_31:AddLabel(rU("Crate Automation", Dw_43), true)
Dw_31:AddLabel(rU("Progression", Dw_62), true)
Dw_17 = Dw_11.Info:AddRightGroupbox("Socials", "link")
Dw_17:AddButton({ Text = "Discord", Func = r3 })
Dw_17:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = Dw_11.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = r3 })
sW = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
sR = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
sO = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
sJ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
sB = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
sv = "https://paypal.me/TheTruckerGOD"
sq = "https://venmo.com/u/miserablemusic"
local Dw_42 = "#345d9d"
local Dw_9 = "#f7931a"
local Dw_29 = "#627eea"
local Dw_49 = "#26a17b"
local Dw_16 = "#14f195"
local Dw_37 = "#0070ba"
if ConveyorGroup or ConveyorGroup or false or false and (false or rI) or not (ConveyorGroup or ConveyorGroup or false or false and (false or rI)) then
    Dw_57 = "#008cff"
end
local DonationsGroup = Dw_11.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(rU("All donations are optional but appreciated.", s0), true)
DonationsGroup:AddLabel(rU("If you donate you get a special role, just PING after you donate.", Dw_43), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(rU("LTC / Litecoin", Dw_42), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(rU("BTC / Bitcoin", Dw_9), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(rU("ETH / Ethereum", Dw_29), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel(rU("USDT", Dw_49), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(rU("Solana", Dw_16), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(rU("PayPal", Dw_37), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(rU("Venmo", Dw_57), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(rU("Don't have any of the listed currencies but still wanna donate?", Dw_62), true)
DonationsGroup:AddLabel(rU("DM me and we'll work something out.", Dw_54), true)
local FaqGroup = Dw_11.Info:AddRightGroupbox("FAQ", "circle-help")
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
ConveyorGroup = Dw_11.Eggs:AddLeftGroupbox("Conveyor", "ferris-wheel")
ConveyorGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
ConveyorGroup:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip Unaffordable", Default = false })
ConveyorGroup:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
local BuyConfigGroup = Dw_11.Eggs:AddRightGroupbox("Buy Config", "shopping-cart")
BuyConfigGroup:AddDropdown("BuyEggNames", { Text = "Eggs", Values = Dw_38, Default = {}, Multi = true, AllowNull = true })
BuyConfigGroup:AddDropdown("BuyEggRarities", { Text = "Rarities", Values = Dw_41, Default = {}, Multi = true, AllowNull = true })
BuyConfigGroup:AddSlider("BuyEggMaxPrice", {
    Text = "Max Price (0 = any)",
    Default = 0,
    Min = 0,
    Max = 100000000000000,
    Rounding = 0,
    Compact = true
})
BuyConfigGroup:AddSlider("BuyEggCashBuffer", { Text = "Cash Buffer", Default = 0, Min = 0, Max = 1000000000, Rounding = 0, Compact = true })
local EggsGroup = Dw_11.Ranch:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
EggsGroup:AddDropdown("PlaceMinRarity", { Text = "Min Rarity Priority", Values = Dw_41, Default = "Common" })
EggsGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
local PetsGroup = Dw_11.Ranch:AddRightGroupbox("Pets", "dog")
PetsGroup:AddToggle("AutoUpgradePets", { Text = "Auto Upgrade Placed Pets", Default = false })
PetsGroup:AddSlider("PetUpgradeMaxLevel", { Text = "Max Pet Level", Default = 100, Min = 0, Max = 500, Rounding = 0 })
PetsGroup:AddToggle("AutoReplaceBetter", { Text = "Auto Replace Pets with Better", Default = false })
PetsGroup:AddToggle("ReplaceIncludeEggs", { Text = "Include Eggs", Default = true })
PetsGroup:AddDropdown("ReplaceCompareBy", { Text = "Compare By", Values = { "Earnings", "Rarity", "Sell Value" }, Default = "Earnings" })
PetsGroup:AddSlider("ReplaceMinPercent", { Text = "Min Better %", Default = 0, Min = 0, Max = 100, Rounding = 0 })
PetsGroup:AddDropdown("ReplaceProtectRarities", { Text = "Never Replace", Values = Dw_41, Default = {}, Multi = true, AllowNull = true })
local ProgressionGroup = Dw_11.Ranch:AddLeftGroupbox("Progression", "trending-up")
ProgressionGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local CratesGroup = Dw_11.Crates:AddLeftGroupbox("Crates", "package")
CratesGroup:AddToggle("AutoCollectCrates", { Text = "Auto Collect Crates", Default = false })
CratesGroup:AddToggle("AutoSellCrates", { Text = "Auto Sell Crates", Default = false })
local Eggs_PetsGroup = Dw_11.Crates:AddRightGroupbox("Eggs / Pets", "shopping-bag")
Eggs_PetsGroup:AddToggle("AutoSellEggsPets", { Text = "Auto Sell Eggs/Pets", Default = false })
Eggs_PetsGroup:AddToggle("SellEggsEnabled", { Text = "Sell Eggs", Default = true })
Eggs_PetsGroup:AddToggle("SellPetsEnabled", { Text = "Sell Pets", Default = true })
Eggs_PetsGroup:AddDropdown("SellMaxRarity", { Text = "Max Rarity", Values = Dw_41, Default = "Common" })
Eggs_PetsGroup:AddDropdown("SellKeepRarities", { Text = "Keep Rarities", Values = Dw_41, Default = {}, Multi = true, AllowNull = true })
Eggs_PetsGroup:AddDropdown("SellEggNames", { Text = "Eggs", Values = Dw_38, Default = {}, Multi = true, AllowNull = true })
Eggs_PetsGroup:AddDropdown("SellPetNames", { Text = "Pets", Values = Dw_47, Default = {}, Multi = true, AllowNull = true })
Eggs_PetsGroup:AddDropdown("SellKeepMutations", { Text = "Keep Mutations", Values = Dw_58, Default = {}, Multi = true, AllowNull = true })
Eggs_PetsGroup:AddSlider("SellPetMaxLevel", { Text = "Max Pet Level", Default = 100, Min = 0, Max = 500, Rounding = 0 })
local MovementGroup = Dw_11.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = Dw_11.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
local MenuGroup = Dw_11.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
rz.ToggleKeybind = Options.MenuKeybind
Dw_8:SetLibrary(rz)
Dw_8:SetFolder("OuroborosHub")
Dw_8:SaveDefault("Monochrome")
Dw_8:ApplyToTab(Dw_11.Settings)
Dw_8:LoadDefault()
s_:SetLibrary(rz)
s_:IgnoreThemeSettings()
s_:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
s_:SetFolder("OuroborosHub/MyDancingAnimals")
local Dw_22 = s_:BuildConfigSection(Dw_11.Settings)
rM = fns.fn183
sZ = fns.fn800
sE = fns.fn85
rI = function(lC)
    local Cc
    Cc = nil
    local Cd = type(lC) ~= "table" or type(lC.idx) ~= "string"
    local Ch = if Cd then 1 else 0
    local Cf = 1158 * Ch + 3404 * (1 - Ch)
    local Cg = 3555 * Ch + 3113 * (1 - Ch)
    if not ((Cf * 3011 + Cg * 1470 + Cf * Cg) % 16777213 == 12829278) then
        Cd = type(lC.type) ~= "string"
    end
    local Ck = if Cd then 1 else 0
    local Ci = 2439 * Ck + 784 * (1 - Ck)
    local Cj = 1924 * Ck + 2847 * (1 - Ck)
    if not ((Ci * 1543 + Cj * 923 + Ci * Cj) % 16777213 == 10231865) then
        Cd = s_.Ignore[lC.idx]
    end
    if Cd then
        return false
    end
    Cc = rM(lC.type, lC.idx)
    if not Cc then
        return false
    end
    local Cd_1 = pcall(function()
        if lC.type == "Input" then
            if type(lC.text) ~= "string" then
                return
            end
            Cc:SetValue(lC.text)
        elseif lC.type == "ColorPicker" then
            Cc:SetValueRGB(Color3.fromHex(lC.value), lC.transparency)
        elseif lC.type == "KeyPicker" then
            Cc:SetValue({ lC.key, lC.mode, lC.modifiers })
            if lC.mode == "Toggle" and lC.toggled ~= nil then
                Cc.Toggled = lC.toggled
                Cc:Update()
            end
        else
            Cc:SetValue(lC.value)
        end
    end)
    return Cd_1
end
Dw_22:AddDivider()
Dw_22:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
Dw_22:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
Dw_22:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
s_:LoadAutoloadConfig()
rx = tick()
tb = tick()
pcall(function()
    for i, v in ipairs(getconnections(sp.Idled)) do
        local CL = v
        pcall(function()
            CL:Disable()
        end)
    end
end)
sL = fns.fn911
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
rV = function(mm)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not mm)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not mm
        end
    end)
    if not mm then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(sp, "GameplayPaused", false)
        else
            sp.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fns.fn538)
Toggles.Fly:OnChanged(fns.fn796)
Toggles.WalkSpeedEnabled:OnChanged(fn1286)
rz:OnUnload(fn1081)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
