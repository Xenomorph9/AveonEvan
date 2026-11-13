local uh
local uZ
local uG
local un
local u4
local ut
local va
local uS
local uz
local ug
local State
local um
local u3
local uL
local us
local u9
local t9
local uy
local uf
local uX
local u2
local ur
local u8
local t8
local uQ
local ux
local ue
local uW
local uD
local uJ
local uq
local u7
local t7
local uP
local uw
local vd
local LocalPlayer
local uV
local uC
local u0
local uI
local u6
local t6
local uO
local uv
local vc
local uc
local uB
local ui
local uH
local uo
local CollectionService
local uN
local vb
local ub
local uT
local CoreGui
local function fn48(cT)
    local xZ = os.clock()
    local x0 = xZ + (cT or 20)
    while true do
        local xZ_1 = uh() and uW() and os.clock() < x0
        if xZ_1 then
            task.wait(0.15)
            continue
        end
        break
    end
    return not uW()
end
local function fn52()
    local zK_1
    local zG = uf("PlotConfigurations")
    local zG_4
    local zH = uX()
    if not zH then
        return
    end
    local zI = zG and tonumber(zG.MaxSlots)
    local zI_2
    local zJ = zI
    local zJ_2
    if zI then
        zI = zH >= zJ
    end
    if zI then
        return
    end
    local zI_1 = nil
    local zJ_1 = zG and ut(zG.GetUpgradePrice)
    if zJ_1 then
        zJ_2, zK_1 = pcall(zG.GetUpgradePrice, zH + 1)
        local zL = zJ_2 and tonumber(zK_1)
        local zJ_3 = zL
        local zP_1 = if zJ_3 then 1 else 0
        local zN_1 = 3880 * zP_1 + 75 * (1 - zP_1)
        local zO_1 = 32 * zP_1 + 2717 * (1 - zP_1)
        if not ((zN_1 * 2416 + zO_1 * 1327 + zN_1 * zO_1) % 16777213 == 9540704) then
            zJ_3 = nil
        end
        zI_1 = zJ_3
    end
    local zJ_4 = not zI_1
    if zJ_4 ~= false then
        zJ_4 = zG
    end
    if zJ_4 then
        zJ_4 = type(zG.Upgrades) == "table"
    end
    if zJ_4 then
        local zJ_5 = zG.Upgrades[zH + 1]
        local zP_2 = if zJ_5 then 1 else 0
        local zN_2 = 3974 * zP_2 + 1124 * (1 - zP_2)
        local zO_2 = 3094 * zP_2 + 3116 * (1 - zP_2)
        if not ((zN_2 * 1781 + zO_2 * 3175 + zN_2 * zO_2) % 16777213 == 12419487) then
            zJ_5 = zG.Upgrades[tostring(zH + 1)]
        end
        local zG_1 = zJ_5
        if zJ_5 then
            zJ_5 = tonumber(zG_1.Price)
        end
        zI_1 = zJ_5 or nil
    end
    local zG_3 = zI_1 and uy() < zI_1
    if zG_3 then
        return
    end
    zG_4, zI_2 = t6("RequestPlotUpgrade")
    local zJ_6 = zG_4 and type(zI_2) == "table" and zI_2.Success
    if zJ_6 then
        uB("Unlocked pet slot " .. tostring(zH + 1))
    end
end
local function fn53(h3)
    local BO = tonumber(h3) or 30
    uw.interval = math.max(5, BO)
end
local function fn80(eY)
    if eY then
        us(vc, vc.Step)
    else
        uo(vc)
    end
end
local function fn85(jg)
    if jg then
        if not uD.lookup then
            task.spawn(function()
                local jh, ji = vb()
                uD.lookup = jh
                uD.colors = ji
            end)
        end
        us(uD, uD.Step)
    else
        uo(uD)
        u8()
    end
end
local function fn105(ez)
    local y5_1
    local y4_1
    local yZ = tonumber(ez:GetAttribute("HatchTimeOverride"))
    local y_ = uf("EggSizeSystem")
    local y__3
    local y0 = uf("EggConfigurations")
    local y0_5
    local y1 = uf("GlobalEvents")
    if not yZ then
        local attr = ez:GetAttribute("OriginalName")
        local y3 = y0 and type(y0.EggSettings) == "table" and y0.EggSettings[attr]
        local y2_1 = y3 and tonumber(y3.HatchTime)
        local y0_2 = y2_1
        local y9 = if y0_2 then 1 else 0
        local y7 = 1312 * y9 + 932 * (1 - y9)
        local y8 = 3527 * y9 + 1299 * (1 - y9)
        if not ((y7 * 2887 + y8 * 3045 + y7 * y8) % 16777213 == 2377670) then
            y0_2 = 5
        end
        local y2_2 = y_
        local y3_1 = y0_2
        if y2_2 then
            y2_2 = ut(y_.GetHatchTime)
        end
        if y2_2 then
            local GetHatchTime = y_.GetHatchTime
            local y2_3 = ez:GetAttribute("EggSize") or "Normal"
            y4_1, y5_1 = pcall(GetHatchTime, y3_1, y2_3)
            local y__1 = y4_1 and tonumber(y5_1)
            yZ = y__1 or y3_1
        else
            yZ = y3_1
        end
    end
    local y__2 = y1 and ut(y1.GetHatchMultiplier)
    if y__2 then
        y__3, y0_5 = pcall(y1.GetHatchMultiplier)
        if y__3 then
            local y0_6 = tonumber(y0_5)
            if y0_6 and y0_6 > 0 then
                yZ = yZ / y0_6
            end
        end
    end
    return yZ
end
local function fn170()
    local wC = u9()
    local wD = wC and wC:FindFirstChild("EggHatch")
    local wC_1 = wD
    if wD then
        wD = wC_1:IsA("BasePart")
    end
    if wD then
        return wC_1
    end
    return nil
end
local function fn172()
    uH("EquipBestPets")
end
local function fn190(gn)
    if gn then
        us(uN, uN.Step)
    else
        uo(uN)
    end
end
local function fn208()
    local yi_1
    local yh_1
    local yn = if uW() then 1 else 0
    if yn == 1 then
        if ub.returnHome then
            ug()
        end
        ue(12)
        return
    end
    yh_1, yi_1 = ur()
    if not yi_1 then
        uB("Waiting for character")
        return
    end
    local yh_2 = uO()
    if #yh_2 == 0 then
        uB("No egg matches the filters")
        return
    end
    local yi_2 = yh_2[1]
    if not u6(yi_2.Anchor.Position, 4) then
        uB("Could not reach the egg")
        return
    end
    task.wait(0.55)
    if not yi_2.Anchor.Parent then
        return
    end
    if not uq(yi_2.Prompt) then
        uB("Prompt firing is unavailable")
        return
    end
    local yh_3 = os.clock() + 3
    while true do
        local yj = uh() and not uW() and os.clock() < yh_3
        if yj then
            task.wait(0.1)
            continue
        end
        break
    end
    if not uW() then
        uB("Missed " .. tostring(yi_2.Name))
        return
    end
    uB("Stealing " .. tostring(yi_2.Name))
    if ub.returnHome then
        task.wait(0.15)
        ug()
    end
    ue(12)
end
local function fn236()
    local za = 0
    for i, v in ipairs(um()) do
        if v:GetAttribute("IsEgg") == true then
            local zb_1 = tonumber(v:GetAttribute("HatchStartTime"))
            local zc_1 = zb_1 and va:GetServerTimeNow() - zb_1 >= uS(v)
            if zc_1 then
                if uH("RequestHatch", v) then
                    za += 1
                    task.wait(0.35)
                end
            end
        end
    end
    if za > 0 then
        local zc_2 = za == 1 and "" or "s"
        uB(("Hatched %d egg%s"):format(za, zc_2))
    end
end
local function fn242()
    uo(ub)
    uo(t9)
    uo(vc)
    uo(u4)
    uo(u0)
    uo(uV)
    uo(uN)
    uo(uG)
    uo(uw)
    uo(uD)
end
local function fn258(dE)
    ub.zones = dE
end
local function fn265(cd)
    local Parent = cd.Parent
    local xz = Parent and Parent:IsA("BasePart")
    if xz then
        return Parent
    end
    local xz_1 = Parent and Parent:IsA("Model")
    if xz_1 then
        local xz_2 = Parent.PrimaryPart or Parent:FindFirstChildWhichIsA("BasePart", true)
        return xz_2
    end
    return nil
end
local function fn280(ai)
    State.Status = tostring(ai)
end
local function fn303(h_)
    uw.keep = h_
end
local function fn319()
    local wI = uT()
    if not wI then
        return {}
    end
    local wJ = {}
    for i, child in ipairs(wI:GetChildren()) do
        if child:IsA("Model") then
            table.insert(wJ, child)
        end
    end
    return wJ
end
local function fn333()
    local BR_1
    local BQ_1
    if ut(gethui) then
        BQ_1, BR_1 = pcall(gethui)
        local BS = BQ_1 and typeof(BR_1) == "Instance"
        if BS then
            return BR_1
        end
        return CoreGui
    end
    return CoreGui
end
local function fn388()
    for k, v in pairs(uD.entries) do
        if v.Gui then
            v.Gui:Destroy()
        end
        if v.Highlight then
            v.Highlight:Destroy()
        end
        uD.entries[k] = nil
    end
    if uD.Folder then
        uD.Folder:Destroy()
        uD.Folder = nil
    end
end
local function fn407()
    local AX_1
    local AW_1
    local AV_1
    local AU_1
    local AT = u2()
    if #AT == 0 then
        return
    end
    AU_1, AV_1 = uZ(uG.trails)
    AW_1, AX_1 = uI()
    for i, v in ipairs(AT) do
        local AY_1 = not AW_1[v.ID]
        if AY_1 ~= false then
            AY_1 = AV_1 == 0 or AU_1[v.Name] or AU_1[v.ID]
        end
        if AY_1 then
            if uy() >= v.Price then
                uH("TrailAction", "BuyMoney", v.ID)
                uB("Bought " .. v.Name)
                task.wait(0.6)
                AW_1, AX_1 = uI()
            end
        end
    end
    local AY_2 = nil
    for i, v in ipairs(AT) do
        local AT_1 = AW_1[v.ID]
        if AT_1 then
            AT_1 = not AY_2 or v.SpeedBoost > AY_2.SpeedBoost
        end
        if AT_1 then
            AY_2 = v
        end
    end
    if AY_2 and AX_1 and AX_1.Value ~= AY_2.ID then
        uH("TrailAction", "Equip", AY_2.ID)
    end
end
local function fn426()
    local BU = uf("AnimalConfigurations")
    local BV = uf("RarityConfigurations")
    local BW = {}
    local BX = {}
    local BY = BU and type(BU.Animals) == "table"
    if BY then
        for k, v in pairs(BU.Animals) do
            local BU_1 = v.Rarity or "None"
            BX[k] = BU_1
            local BU_2 = k .. " Egg"
            local BY_1 = v.Rarity or "None"
            BX[BU_2] = BY_1
        end
    end
    if type(BV) == "table" then
        for k, v in pairs(BV) do
            if type(v) == "table" then
                local GradientColor = v.GradientColor
                local BV_1 = typeof(GradientColor) == "ColorSequence" and #GradientColor.Keypoints > 0
                if BV_1 then
                    BW[k] = GradientColor.Keypoints[1].Value
                elseif typeof(v.TextColor) == "Color3" then
                    BW[k] = v.TextColor
                end
            end
        end
    end
    return BX, BW
end
local function fn475()
    local wS_1
    local wR_1
    wR_1, wS_1 = t6("GetPlotCapacity")
    if wR_1 then
        local wR_2 = tonumber(wS_1)
        if wR_2 then
            return wR_2
        elseif type(wS_1) == "table" then
            local wR_3 = tonumber(wS_1.Capacity) or tonumber(wS_1.Slots)
            if wR_3 then
                return wR_3
            end
            return nil
        else
            return nil
        end
    else
        return nil
    end
end
local function fn498(h5)
    uw.teleport = h5 == true
end
local function fn508(eu)
    t9.rarities = eu
end
local function fn522(by)
    local wU = by or ""
    return (tostring(wU):gsub(" Egg$", ""))
end
local function fn524(dI)
    ub.returnHome = dI == true
end
local function fn552(hf)
    uG.trails = hf
end
local function fn579(bI)
    local w1 = uf("AnimalConfigurations")
    local w2 = w1 and type(w1.Animals) == "table" and w1.Animals[ui(bI)]
    local w1_1 = w2
    if w2 then
        w2 = tonumber(w1_1.Income)
    end
    local w1_2 = w2
    local w6 = if w1_2 then 1 else 0
    local w4 = 1347 * w6 + 1373 * (1 - w6)
    local w5 = 3206 * w6 + 255 * (1 - w6)
    if not ((w4 * 1726 + w5 * 2183 + w4 * w5) % 16777213 == 13642102) then
        w1_2 = 0
    end
    return w1_2
end
local function fn587(eq)
    if eq then
        us(t9, t9.Step)
    else
        uo(t9)
    end
end
local function fn602()
    local stats = LocalPlayer:FindFirstChild("stats")
    local wx = stats and stats:FindFirstChild("Money")
    local ww_1 = wx
    if wx then
        wx = tonumber(ww_1.Value)
    end
    local ww_2 = wx
    local wB = if ww_2 then 1 else 0
    local wz = 952 * wB + 2889 * (1 - wB)
    local wA = 2066 * wB + 3539 * (1 - wB)
    if not ((wz * 1760 + wA * 2656 + wz * wA) % 16777213 == 9129648) then
        ww_2 = 0
    end
    return ww_2
end
local function fn603()
    local xF = {}
    for i, v in ipairs(CollectionService:GetTagged("EggLootPrompt")) do
        local xG = u3(v)
        local Model = v:FindFirstAncestorOfClass("Model")
        if xG and Model then
            local insert = table.insert
            local xJ = Model:GetAttribute("EggName") or Model:GetAttribute("OriginalName") or Model.Name
            insert(xF, { Prompt = v, Anchor = xG, Name = xJ, Zone = uv(v), Source = "Wild Eggs" })
        end
    end
    return xF
end
local function fn611(bQ)
    local w7 = 0
    local w8 = {}
    if type(bQ) == "table" then
        for k, v in pairs(bQ) do
            if v == true then
                w8[k] = true
                w7 += 1
            elseif type(v) == "string" then
                w8[v] = true
                w7 += 1
            end
        end
    end
    return w8, w7
end
local function fn613()
    local zp_1, zp_3
    local zo_1, zo_2
    zo_1, zp_1 = t6("GetIndexData")
    local zq = not zo_1 or type(zp_1) ~= "table"
    local zq_1
    if zq then
        return
    end
    zo_2, zq_1 = t6("IndexRewardAction", "GetClaims")
    local zr = not zo_2 or type(zq_1) ~= "table"
    if zr then
        zq_1 = {}
    end
    local zo_3 = uf("AnimalConfigurations")
    local zr_1 = zo_3 and type(zo_3.Animals) == "table" and zo_3.Animals
    local zs = zr_1 or {}
    local zs_1
    local zo_5 = 0
    for k, v in pairs(zp_1) do
        if v == true and zq_1[k] ~= true and zs[k] then
            zp_3, zs_1 = t6("IndexRewardAction", "Claim", k)
            local zt = zp_3 and type(zs_1) == "table" and zs_1.Success
            if zt then
                zo_5 += 1
                task.wait(0.3)
            end
        end
    end
    if zo_5 > 0 then
        local zq_2 = zo_5 == 1 and "" or "s"
        uB(("Claimed %d index reward%s"):format(zo_5, zq_2))
    end
end
local function fn623()
    local x8_1
    local x6_1
    local x5_1
    local x4_1
    local x3_1
    local x7_1
    local x2 = u7()
    x4_1, x3_1 = uZ(ub.zones)
    x6_1, x5_1 = uZ(ub.rarities)
    x7_1, x8_1 = ur()
    if not x8_1 then
        return {}
    end
    local x7_2 = {}
    for i, v in ipairs(x2) do
        local x2_1 = v.Anchor ~= nil and v.Anchor.Parent ~= nil
        local x9 = x2_1
        if x2_1 then
            x2_1 = x3_1 > 0
        end
        if x2_1 then
            x2_1 = v.Zone ~= nil
        end
        if x2_1 then
            x2_1 = not x4_1[v.Zone]
        end
        if x2_1 then
            x9 = false
        end
        local x2_2 = x9 and x5_1 > 0 and not x6_1[t8(v.Name)]
        if x2_2 then
            x9 = false
        end
        if x9 then
            v.Distance = (v.Anchor.Position - x8_1.Position).Magnitude
            table.insert(x7_2, v)
        end
    end
    table.sort(x7_2, function(dg, dh)
        return dg.Distance < dh.Distance
    end)
    return x7_2
end
local function fn692()
    local Ay = {}
    for i, v in ipairs(u2()) do
        table.insert(Ay, v.Name)
    end
    return Ay
end
local function fn721(am)
    local v__1
    local vY = un[am]
    if vY ~= nil then
        if vY == false then
            return nil
        end
        return vY
    end
    local Modules = t7:FindFirstChild("Modules")
    local vZ = Modules and Modules:FindFirstChild(am)
    local vZ_2
    local vZ_1 = not vZ or not vZ:IsA("ModuleScript")
    if vZ_1 then
        un[am] = false
        return nil
    end
    vZ_2, v__1 = pcall(require, vZ)
    local vY_3 = not vZ_2 or type(v__1) ~= "table"
    if vY_3 then
        un[am] = false
        return nil
    end
    un[am] = v__1
    return v__1
end
local function fn777(ay, az)
    local Events = t7:FindFirstChild("Events")
    local v8 = Events and Events:FindFirstChild(ay)
    local v7_1 = v8
    if v8 then
        v8 = v7_1:IsA(az)
    end
    if v8 then
        return v7_1
    end
    return nil
end
local function fn778()
    return va:FindFirstChild("Plot_" .. LocalPlayer.Name)
end
local function fn779()
    return not uP.Unloaded
end
local function fn790(U)
    local vW = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if vW then
        return cloneref(U)
    end
    return U
end
local function fn792(fq)
    if fq then
        us(u0, u0.Step)
    else
        uo(u0)
    end
end
local function fn821()
    local Al = uf("TrailConfigurations")
    local Am = Al
    local An = {}
    if Am then
        Am = type(Al.Trails) == "table"
    end
    if Am then
        for k, v in pairs(Al.Trails) do
            local Al_1 = type(v) == "table" and v.ID
            if Al_1 then
                local insert = table.insert
                local ID = v.ID
                local Ao = v.Name or v.ID
                local Ap = tonumber(v.Price) or 0
                local Aq = tonumber(v.SpeedBoost) or 0
                insert(An, { ID = ID, Name = Ao, Price = Ap, SpeedBoost = Aq })
            end
        end
    end
    table.sort(An, function(gA, gB)
        return gA.Price < gB.Price
    end)
    return An
end
local function fn831()
    local zR = uf("TreadmillConfigurations")
    local zS = zR
    local zT = {}
    if zS then
        zS = type(zR.Treadmills) == "table"
    end
    if zS then
        for k, v in pairs(zR.Treadmills) do
            local insert = table.insert
            local zS_1 = tonumber(v.Price) or 0
            insert(zT, { Name = k, Price = zS_1 })
        end
    end
    table.sort(zT, function(f1, f2)
        return f1.Price < f2.Price
    end)
    return zT
end
local function fn867(jl)
    uD.rarities = jl
end
local function fn868()
    local Folder = uD.Folder
    if Folder and Folder.Parent then
        return Folder
    end
    local folder = Instance.new("Folder")
    folder.Name = "OuroborosStealAGiantEggEsp"
    folder.Parent = uz()
    uD.Folder = folder
    return folder
end
local function fn923()
    local xw = uT()
    if not xw then
        return false
    end
    return u6(xw.Position, 6)
end
local function fn925(hb)
    if hb then
        us(uG, uG.Step)
    else
        uo(uG)
    end
end
local function fn985()
    local Character = LocalPlayer.Character
    if not Character or not Character.Parent then
        return nil, nil, nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if not HumanoidRootPart or not Humanoid or Humanoid.Health <= 0 then
        return nil, nil, nil
    end
    return Character, HumanoidRootPart, Humanoid
end
local function fn995(iD, iE)
    local iG = uJ()
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "EggEsp"
    billboardGui.AlwaysOnTop = true
    billboardGui.LightInfluence = 0
    billboardGui.Size = UDim2.fromOffset(220, 46)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
    billboardGui.MaxDistance = math.huge
    billboardGui.Adornee = iE
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Text"
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.BackgroundTransparency = 1
    textLabel.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold)
    textLabel.TextScaled = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Text = ""
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Thickness = 2
    uIStroke.Color = Color3.new(0, 0, 0)
    uIStroke.Parent = textLabel
    textLabel.Parent = billboardGui
    local highlight = Instance.new("Highlight")
    highlight.Name = "EggHighlight"
    highlight.FillTransparency = 0.6
    highlight.OutlineTransparency = 0
    highlight.Adornee = iD
    highlight.Parent = iG
    billboardGui.Parent = iG
    return { Gui = billboardGui, Label = textLabel, Highlight = highlight, Anchor = iE }
end
local function fn1004()
    local Trails = LocalPlayer:FindFirstChild("Trails")
    local AH = {}
    local AI
    if Trails then
        for i, child in ipairs(Trails:GetChildren()) do
            if child.Name == "Equipped" then
                AI = child
            else
                AH[child.Name] = true
            end
        end
    end
    return AH, AI
end
local function fn1016(X)
    return type(X) == "function"
end
local function fn1017()
    local Bk_1
    local Bj_1
    Bk_1, Bj_1 = uZ(uw.keep)
    if Bj_1 == 0 then
        return nil
    end
    for i, v in ipairs(uQ()) do
        local attr = v:GetAttribute("OriginalName")
        local Bl = t8(attr)
        if Bk_1[Bl] then
            return attr, Bl
        end
    end
    return nil
end
local function fn1048()
    local Ct_1
    local Cr_1
    local Cs_1
    local Co = {}
    local Cp = uD.lookup
    local CG = if Cp then 1 else 0
    local CE = 3658 * CG + 3699 * (1 - CG)
    local CF = 943 * CG + 1254 * (1 - CG)
    if not ((CE * 4010 + CF * 3194 + CE * CF) % 16777213 == 4352803) then
        Cp = Co
    end
    local Co_1 = Cp
    local Cq = uD.colors or {}
    local Cq_1
    Cr_1, Cq_1 = uZ(uD.rarities)
    Cs_1, Ct_1 = ur()
    local Eggs = va:FindFirstChild("Eggs")
    local Cu = {}
    if Eggs and Ct_1 then
        for i, child in ipairs(Eggs:GetChildren()) do
            for i, child in ipairs(child:GetChildren()) do
                local SpawnedEgg = child:FindFirstChild("SpawnedEgg")
                local Cv_1 = SpawnedEgg
                if Cv_1 then
                    local Cw_1 = SpawnedEgg.PrimaryPart or SpawnedEgg:FindFirstChildWhichIsA("BasePart", true)
                    Cv_1 = Cw_1
                end
                local Cw_2 = Cv_1
                if SpawnedEgg and Cw_2 then
                    local Cv_3 = SpawnedEgg:GetAttribute("EggName") or SpawnedEgg.Name
                    local Cv_4 = Co_1[Cv_3] or "None"
                    if Cq_1 == 0 or Cr_1[Cv_4] then
                        Cu[SpawnedEgg] = true
                        local Cv_6 = uD.entries[SpawnedEgg]
                        if not Cv_6 or not Cv_6.Gui.Parent then
                            Cv_6 = uc(SpawnedEgg, Cw_2)
                            uD.entries[SpawnedEgg] = Cv_6
                        end
                        local Cz_1 = Cq[Cv_4] or Color3.new(1, 1, 1)
                        local Magnitude = (Cw_2.Position - Ct_1.Position).Magnitude
                        Cv_6.Label.TextColor3 = Cz_1
                        Cv_6.Highlight.FillColor = Cz_1
                        Cv_6.Highlight.OutlineColor = Cz_1
                        local Label = Cv_6.Label
                        local CA_1 = tostring(Cv_3)
                        local CB = tostring(Cv_4)
                        local CC = SpawnedEgg:GetAttribute("EggSize") or "Normal"
                        Label.Text = ("%s\n%s | %s | %d studs"):format(CA_1, CB, tostring(CC), math.floor(Magnitude))
                    end
                end
            end
        end
    end
    for k, v in pairs(uD.entries) do
        if not Cu[k] then
            v.Gui:Destroy()
            v.Highlight:Destroy()
            uD.entries[k] = nil
        end
    end
end
local function fn1072()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if not Backpack then
        return {}
    end
    local yw = {}
    for i, child in ipairs(Backpack:GetChildren()) do
        local yv_1 = child:IsA("Tool") and child:GetAttribute("OriginalName")
        if yv_1 then
            table.insert(yw, child)
        end
    end
    table.sort(yw, function(dT, dU)
        return ux(dT:GetAttribute("OriginalName")) > ux(dU:GetAttribute("OriginalName"))
    end)
    return yw
end
local function fn1086()
    local z1_1, z1_3
    local z0_1, z0_6
    z0_1, z1_1 = t6("GetEquippedTreadmill")
    if not z0_1 then
        return
    end
    local z0_2 = type(z1_1) == "table" and z1_1.Name
    local z2 = z0_2 or z1_1
    local z1_2 = uC()
    local Price = nil
    for i, v in ipairs(z1_2) do
        if v.Name == z2 then
            Price = v.Price
        end
    end
    local z3
    for i, v in ipairs(z1_2) do
        if Price == nil or v.Price > Price then
            z3 = v
            break
        end
    end
    local z0_5 = not z3 or uy() < z3.Price
    if z0_5 then
        return
    end
    z0_6, z1_3 = t6("RequestTreadmillUpgrade")
    local z2_2 = z0_6 and type(z1_3) == "table" and z1_3.Success
    if z2_2 then
        uB("Upgraded to " .. tostring(z3.Name))
    end
end
local function fn1125(cR)
    cR.stopped = true
    local xX = cR.generation or 0
    cR.generation = xX + 1
end
local function fn1152(fR)
    if fR then
        us(uV, uV.Step)
    else
        uo(uV)
    end
end
local function fn1158(fk)
    if fk then
        us(u4, u4.Step)
    else
        uo(u4)
    end
end
local function fn1165(dA)
    if dA then
        us(ub, ub.Step)
    else
        uo(ub)
    end
end
local function fn1209(h1)
    local BL = tonumber(h1) or 1
    uw.minimum = math.max(1, math.floor(BL))
end
local function fn1230(bA)
    local wW = uf("AnimalConfigurations")
    local wX = wW and type(wW.Animals) == "table" and wW.Animals[ui(bA)]
    local wW_1 = wX
    if wX then
        wX = wW_1.Rarity
    end
    local wW_2 = wX
    local w0 = if wW_2 then 1 else 0
    local wZ = 853 * w0 + 3385 * (1 - w0)
    local w_ = 2470 * w0 + 2679 * (1 - w0)
    if not ((wZ * 1989 + w_ * 1768 + wZ * w_) % 16777213 == 8170487) then
        wW_2 = "None"
    end
    return wW_2
end
local function fn1246(ew)
    local yX = tonumber(ew) or 1
    t9.interval = math.max(0.3, yX)
end
local function fn1255()
    return CoreGui
end
local function fn1283(cj)
    local Eggs = va:FindFirstChild("Eggs")
    if not Eggs then
        return nil
    end
    local xC = cj
    while true do
        if not (xC and xC.Parent) then
            return nil
        end
        if xC.Parent == Eggs then
            break
        end
        xC = xC.Parent
    end
    return xC.Name
end
local function fn1292(dG)
    ub.rarities = dG
end
local function fn1295()
    gethui = vd
end
local function fn1308(hT)
    if hT then
        us(uw, uw.Step)
    else
        uo(uw)
    end
end
local function fn1325()
    local Character = LocalPlayer.Character
    local wu = Character ~= nil and Character:GetAttribute("CarryingEgg") == true
    return wu
end
local function fn1338(hX)
    if table.find(uL, hX) then
        uw.mode = hX
    end
end
local function fn1363(dK)
    local yt = tonumber(dK) or 0.4
    ub.interval = math.max(0.1, yt)
end
t6 = nil
t7 = nil
t8 = nil
t9 = nil
ub = nil
uc = nil
LocalPlayer = nil
ue = nil
uf = nil
ug = nil
uh = nil
ui = nil
um = nil
un = nil
uo = nil
uq = nil
ur = nil
us = nil
ut = nil
uv = nil
uw = nil
ux = nil
uy = nil
uz = nil
CoreGui = nil
uB = nil
uC = nil
uD = nil
State = nil
uG = nil
uH = nil
uI = nil
uJ = nil
uL = nil
uN = nil
uO = nil
uP = nil
uQ = nil
uS = nil
local Players, uj, Workspace, ul, Lighting, TeleportService, GuiService, HttpService, uM, uR
uT = nil
uV = nil
uW = nil
uX = nil
uZ = nil
u0 = nil
u2 = nil
u3 = nil
u4 = nil
CollectionService = nil
u6 = nil
u7 = nil
u8 = nil
u9 = nil
va = nil
vb = nil
vc = nil
vd = nil
local uU, UserInputService, u_, RunService, ve
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, uR, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, vd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
if not uR and not LocalPlayer and (LocalPlayer and not ReplicatedStorage) or (not vd or ReplicatedStorage) and (not ReplicatedStorage or uR) or not (not uR and not LocalPlayer and (LocalPlayer and not ReplicatedStorage) or (not vd or ReplicatedStorage) and (not ReplicatedStorage or uR)) then
    RunService = game:GetService("RunService")
else
    uR = game:GetService("RunService")
end
UserInputService = game:GetService("UserInputService")
uR = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local ua = "OuroborosStealAGiantEgg"
vd = fn1255
if getgenv then
    getgenv().gethui = vd
end
uP, t7, va, CollectionService, u_, uU, uL, State, un, ub, t9, vc, u4, u0, uV, uN, uG, uD, uw, ul, ut, uh, uB, uf, uj, uH, t6, ur, uW, uy, u9, uT, um, uX, ui, t8, ux, uZ, uq, u6, ug, u3, uv, u7, us, uo, ue, uO, uQ, uS, uC, u2, ve, uI, uM, uz, vb, u8, uJ, uc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1295)
local function vi(t)
    local vH
    local vJ
    local vI
    vH = nil
    vI = nil
    vJ = nil
    local vK = t ~= ""
    local vL = type(t) == "string" and vK
    assert(vL, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    vH = getgenv()
    assert(type(vH) == "table", "getgenv did not return a table")
    local vK_1 = vH[t]
    if vK_1 ~= nil then
        local vL_1 = type(vK_1) == "table" and type(vK_1.Unload) == "function"
        assert(vL_1, "Namespace is occupied")
        vK_1.Unload()
        assert(vH[t] == nil, "Previous instance did not release its namespace")
    end
    vI = {}
    vJ = { State = {}, Unloaded = false }
    vJ.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if vJ.Unloaded then
            z()
        else
            table.insert(vI, z)
        end
        return z
    end
    vJ.Unload = function()
        local vx_1
        local vw_1
        if vJ.Unloaded then
            return
        end
        vJ.Unloaded = true
        local vu = {}
        local vB = #vI
        local vA = -1
        while false and vB <= 1 or true and vB >= 1 do
            local vC = vB
            local vv_1 = table.remove(vI, vC)
            vw_1, vx_1 = pcall(vv_1)
            if not vw_1 then
                table.insert(vu, tostring(vx_1))
            end
            vB += vA
        end
        table.clear(vJ.State)
        if #vu > 0 then
            error("Cleanup incomplete: " .. table.concat(vu, "; "), 0)
        end
        if vH[t] == vJ then
            vH[t] = nil
        end
    end
    vH[t] = vJ
    return vJ
end
ul = function(M, N)
    local vR = type(M) == "table" and type(M.Track) == "function"
    assert(vR, "FeatureAPI required")
    local vR_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(vR_1, "UI library required")
    assert(type(N.Unload) == "function", "UI unload required")
    M.Track(function()
        if not N.Unloaded then
            N:Unload()
        end
    end)
    N:OnUnload(function()
        M.Unload()
    end)
end
uP = vi(ua)
ut = fn1016
uh = fn779
t7 = fn790(ReplicatedStorage)
va = fn790(Workspace)
CollectionService = game:GetService("CollectionService")
u_ = { "Zone1", "Zone2", "Zone3", "Zone4", "Zone5", "Zone6", "Zone7", "Zone8", "Zone9" }
uU = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Secret",
    "Divine",
    "Cosmic",
    "Eternal",
    "Hacker"
}
uL = { "Inventory", "Equipped", "Both" }
State = uP.State
State.Status = "Idle"
uB = fn280
un = {}
uf = fn721
uj = fn777
uH = function(aG, ...)
    local wb
    local wa
    wa = nil
    wb = nil
    wb = uj(aG, "RemoteEvent")
    if not wb then
        return false
    end
    wa = table.pack(...)
    return (pcall(function()
        wb:FireServer(table.unpack(wa, 1, wa.n))
    end))
end
t6 = function(aN, ...)
    local wd
    local we
    wd = nil
    we = nil
    local wg_1
    local wf_1
    we = uj(aN, "RemoteFunction")
    if not we then
        return false
    end
    wd = table.pack(...)
    wf_1, wg_1 = pcall(function()
        return we:InvokeServer(table.unpack(wd, 1, wd.n))
    end)
    if not wf_1 then
        return false
    end
    return true, wg_1
end
ur = fn985
uW = fn1325
uy = fn602
u9 = fn778
uT = fn170
um = fn319
uX = fn475
ui = fn522
t8 = fn1230
ux = fn579
uZ = fn611
uq = function(bW)
    local xg = not bW or not bW:IsA("ProximityPrompt")
    if xg then
        return false
    elseif not ut(fireproximityprompt) then
        return false
    else
        if not bW.Enabled then
            pcall(function()
                bW.Enabled = true
            end)
        end
        return (pcall(fireproximityprompt, bW))
    end
end
u6 = function(b0, b1)
    local xp
    xp = nil
    local xq_1
    xq_1, xp = ur()
    if not xp or not b0 then
        return false
    end
    return (pcall(function()
        local xn = b1 or 5
        xp.CFrame = CFrame.new(b0 + Vector3.new(0, xn, 0))
    end))
end
ug = fn923
u3 = fn265
uv = fn1283
u7 = fn603
ub = { interval = 0.4, zones = {}, rarities = {}, returnHome = true }
t9 = { interval = 1, rarities = {} }
vc = { interval = 2 }
u4 = { interval = 15 }
u0 = { interval = 10 }
uV = { interval = 6 }
uN = { interval = 6 }
uG = { interval = 8, trails = {} }
uD = { interval = 0.25, rarities = {}, entries = {}, lookup = nil, colors = nil }
uw = { interval = 30, mode = "Inventory", keep = {}, minimum = 1, teleport = true }
us = function(cJ, cK)
    local generation
    local xV = cJ.generation or 0
    cJ.generation = xV + 1
    cJ.stopped = false
    generation = cJ.generation
    task.spawn(function()
        local xS_1
        while true do
            local xR = uh() and not cJ.stopped and cJ.generation == generation
            local xR_1
            if xR then
                xR_1, xS_1 = pcall(cK)
                if not xR_1 then
                    warn("[Ouroboros] loop error: " .. tostring(xS_1))
                end
                local xR_2 = not uh() or cJ.stopped or cJ.generation ~= generation
                if xR_2 then
                    break
                end
                task.wait(cJ.interval)
                continue
            end
            break
        end
    end)
end
uo = fn1125
if ((uV or uQ) and (not uU or not uV) or (not uU or uc) and (uV and not uV)) and (uU and not uV or (uU or uQ) or (uQ and uV or uU and uU)) or not (((uV or uQ) and (not uU or not uV) or (not uU or uc) and (uV and not uV)) and (uU and not uV or (uU or uQ) or (uQ and uV or uU and uU))) then
    ue = fn48
    uO = fn623
    ub.Step = fn208
    ub.SetEnabled = fn1165
    ub.SetZones = fn258
    ub.SetRarities = fn1292
    ub.SetReturnHome = fn524
    ub.SetDelay = fn1363
    uQ = fn1072
    t9.Step = function()
        local yE
        local yH_4
        local yI_6, yI_8
        if uW() then
            return
        end
        local yG = uQ()
        yI_6, yH_4 = uZ(t9.rarities)
        if yH_4 > 0 then
            local yH_5 = {}
            for i, v in ipairs(yG) do
                local yU_3 = if yI_6[t8(v:GetAttribute("OriginalName"))] then 1 else 0
                if yU_3 == 1 then
                    table.insert(yH_5, v)
                end
            end
            yG = yH_5
        end
        if #yG == 0 then
            uB("Nothing to place")
            return
        end
        local yH_6 = uT()
        if not yH_6 then
            uB("Plot is not loaded")
            return
        end
        local yI_7 = uX()
        local yJ = yI_7 and #um() >= yI_7
        local yJ_3
        if yJ then
            uB("Plot is full")
            return
        end
        yI_8, yJ_3, yE = ur()
        if not yJ_3 or not yE then
            return
        end
        if (yJ_3.Position - yH_6.Position).Magnitude > 25 then
            if not u6(yH_6.Position, 6) then
                return
            end
            task.wait(0.8)
        end
        local yF = yG[1]
        if yF.Parent ~= LocalPlayer.Character then
            pcall(function()
                yE:EquipTool(yF)
            end)
            task.wait(0.4)
        end
        local yG_2 = #um()
        local yI_10 = yH_6.Size * 0.35
        local yJ_4 = yH_6.Position + Vector3.new((math.random() - 0.5) * 2 * yI_10.X, yH_6.Size.Y / 2, (math.random() - 0.5) * 2 * yI_10.Z)
        uH("PlaceItemAtCursor", yJ_4)
        task.wait(0.8)
        local yU_4 = if #um() > yG_2 then 1 else 0
        if yU_4 == 1 then
            uB("Placed " .. tostring(yF:GetAttribute("OriginalName")))
        else
            uB("Placement was rejected")
        end
    end
    t9.SetEnabled = fn587
    t9.SetRarities = fn508
    t9.SetDelay = fn1246
    uS = fn105
else
    uQ = fn48
    ub = fn623
    uS.Step = fn208
    uS.SetEnabled = fn1165
    uS.SetZones = fn258
    uS.SetRarities = fn1292
    uS.SetReturnHome = fn524
    uS.SetDelay = fn1363
    ue = fn1072
    uO.Step = function()
        local yE
        local yH_1
        local yI_1, yI_3
        if uW() then
            return
        end
        local yG = uQ()
        yI_1, yH_1 = uZ(t9.rarities)
        if yH_1 > 0 then
            local yH_2 = {}
            for i, v in ipairs(yG) do
                local yU_1 = if yI_1[t8(v:GetAttribute("OriginalName"))] then 1 else 0
                if yU_1 == 1 then
                    table.insert(yH_2, v)
                end
            end
            yG = yH_2
        end
        if #yG == 0 then
            uB("Nothing to place")
            return
        end
        local yH_3 = uT()
        if not yH_3 then
            uB("Plot is not loaded")
            return
        end
        local yI_2 = uX()
        local yJ = yI_2 and #um() >= yI_2
        local yJ_1
        if yJ then
            uB("Plot is full")
            return
        end
        yI_3, yJ_1, yE = ur()
        if not yJ_1 or not yE then
            return
        end
        if (yJ_1.Position - yH_3.Position).Magnitude > 25 then
            if not u6(yH_3.Position, 6) then
                return
            end
            task.wait(0.8)
        end
        local yF = yG[1]
        if yF.Parent ~= LocalPlayer.Character then
            pcall(function()
                yE:EquipTool(yF)
            end)
            task.wait(0.4)
        end
        local yG_1 = #um()
        local yI_5 = yH_3.Size * 0.35
        local yJ_2 = yH_3.Position + Vector3.new((math.random() - 0.5) * 2 * yI_5.X, yH_3.Size.Y / 2, (math.random() - 0.5) * 2 * yI_5.Z)
        uH("PlaceItemAtCursor", yJ_2)
        task.wait(0.8)
        local yU_2 = if #um() > yG_1 then 1 else 0
        if yU_2 == 1 then
            uB("Placed " .. tostring(yF:GetAttribute("OriginalName")))
        else
            uB("Placement was rejected")
        end
    end
    uO.SetEnabled = fn587
    uO.SetRarities = fn508
    uO.SetDelay = fn1246
    t9 = fn105
end
vc.Step = fn236
vc.SetEnabled = fn80
u4.Step = fn613
u4.SetEnabled = fn1158
u0.Step = fn172
u0.SetEnabled = fn792
uV.Step = fn52
uV.SetEnabled = fn1152
uC = fn831
uN.Step = fn1086
uN.SetEnabled = fn190
u2 = fn821
ve = fn692
uI = fn1004
uG.Step = fn407
uG.SetEnabled = fn925
uG.SetTrails = fn552
uM = fn1017
uw.Step = function()
    local Bu
    if uW() then
        return
    end
    local mode = uw.mode
    local Bv_2, Bv_4, Bv_8
    local Bw = mode == "Both"
    local Bx = mode == "Inventory"
    local BD = if Bx then 1 else 0
    local BB = 3146 * BD + 2496 * (1 - BD)
    local BC = 1558 * BD + 1600 * (1 - BD)
    if not ((BB * 1682 + BC * 3270 + BB * BC) % 16777213 == 15287700) then
        Bx = Bw
    end
    local Bw_1 = Bx
    local By = mode == "Equipped" or mode == "Both"
    local By_1, By_3
    local Bv_1 = Bw_1
    if Bv_1 then
        Bv_1 = #uQ() < math.max(1, uw.minimum)
    end
    if Bv_1 then
        Bw_1 = false
    end
    if Bw_1 then
        Bv_2, By_1 = uM()
        if Bv_2 then
            uB(("Keeping %s (%s), inventory sell skipped"):format(tostring(Bv_2), tostring(By_1)))
            Bw_1 = false
        end
    end
    local Bv_3 = not By
    local By_2 = not Bw_1
    if By_2 ~= false then
        By_2 = Bv_3
    end
    if By_2 then
        return
    end
    local CFrame
    Bv_4, By_3 = ur()
    if uw.teleport and By_3 then
        local SellNPC = va:FindFirstChild("SellNPC")
        local Bz = SellNPC and SellNPC:FindFirstChild("ProxPart")
        local Bv_7 = Bz
        if Bz then
            Bz = Bv_7:IsA("BasePart")
        end
        if Bz then
            CFrame = By_3.CFrame
            if u6(Bv_7.Position, 4) then
                task.wait(0.6)
            else
                CFrame = nil
            end
        end
    end
    if Bw_1 then
        uH("RequestSell", "Inventory")
        task.wait(0.5)
    end
    if By then
        uH("RequestSell", "Equipped")
        task.wait(0.5)
    end
    uB("Sold pets")
    if CFrame then
        Bv_8, Bu = ur()
        local Bv_9 = Bu and not uW()
        if Bv_9 then
            pcall(function()
                Bu.CFrame = CFrame
            end)
        end
    end
end
uw.SetEnabled = fn1308
uw.SetMode = fn1338
uw.SetKeep = fn303
uw.SetMinimum = fn1209
uw.SetInterval = fn53
uw.SetTeleport = fn498
uz = fn333
vb = fn426
u8 = fn388
uJ = fn868
uc = fn995
uD.Step = fn1048
uD.SetEnabled = fn85
uD.SetRarities = fn867
uP.Track(u8)
uP.Track(fn242)
local function vj()
    local onDiscord
    local Hv
    local Hu
    onDiscord = nil
    Hu = nil
    Hv = nil
    local Hl, Hm, Library, Toggles, Hq, ThemeManager, Hs, Options, SaveManager
    Hl = "Steal a Giant Egg"
    Hu = "https://discord.gg/synapsex"
    Hq = "https://ouroboros-hub-rbx.web.app/"
    Hm = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    ul(uP, Library)
    Hv = function(jL, jM)
        local CY = ut(setclipboard) and setclipboard
        local CZ = CY
        local C3 = if CZ then 1 else 0
        local C1 = 1557 * C3 + 2822 * (1 - C3)
        local C2 = 1215 * C3 + 858 * (1 - C3)
        if not ((C1 * 3560 + C2 * 953 + C1 * C2) % 16777213 == 8592570) then
            local CY_1 = ut(toclipboard) and toclipboard
            CZ = CY_1 or nil
        end
        local CY_2 = CZ
        if not CY_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local CZ_1 = pcall(CY_2, jL)
        if CZ_1 then
            Library:Notify(jM)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Hv(Hu, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Hu, Copyable = true }, "|", Hl, "|", "v0.2" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Hs = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Hx_1(jZ)
        local DiscordGroup = jZ:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Hs do
        if k ~= "Info" then
            Hx_1(v)
        end
    end
    local function Hy()
        local lx
        local StealingGroup = Hs.Main:AddLeftGroupbox("Stealing", "hand-coins")
        StealingGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal",
            Default = false,
            Callback = function(j6)
                ub.SetEnabled(j6)
            end
        })
        StealingGroup:AddDropdown("StealZones", {
            Text = "Zones",
            Values = u_,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(kc)
                ub.SetZones(kc)
            end
        })
        StealingGroup:AddDropdown("StealRarities", {
            Text = "Rarities",
            Values = uU,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(kg)
                ub.SetRarities(kg)
            end
        })
        StealingGroup:AddSlider("StealDelay", {
            Text = "Steal Delay",
            Default = 0.4,
            Min = 0.1,
            Max = 5,
            Rounding = 1,
            Suffix = "s",
            Callback = function(ki)
                ub.SetDelay(ki)
            end
        })
        StealingGroup:AddToggle("ReturnHome", {
            Text = "Teleport Home To Bank Egg",
            Default = true,
            Callback = function(kk)
                ub.SetReturnHome(kk)
            end
        })
        local EggsGroup = Hs.Main:AddLeftGroupbox("Eggs", "egg")
        EggsGroup:AddToggle("AutoPlaceEggs", {
            Text = "Auto Place Eggs",
            Default = false,
            Callback = function(kn)
                t9.SetEnabled(kn)
            end
        })
        EggsGroup:AddDropdown("PlaceRarities", {
            Text = "Place Rarities",
            Values = uU,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(kr)
                t9.SetRarities(kr)
            end
        })
        EggsGroup:AddSlider("PlaceDelay", {
            Text = "Place Delay",
            Default = 1,
            Min = 0.3,
            Max = 5,
            Rounding = 1,
            Suffix = "s",
            Callback = function(kt)
                t9.SetDelay(kt)
            end
        })
        EggsGroup:AddToggle("AutoHatchEggs", {
            Text = "Auto Hatch Eggs",
            Default = false,
            Callback = function(kw)
                vc.SetEnabled(kw)
            end
        })
        local VisualsGroup = Hs.Main:AddLeftGroupbox("Visuals", "eye")
        VisualsGroup:AddToggle("EggEsp", {
            Text = "Egg ESP",
            Default = false,
            Callback = function(kB)
                uD.SetEnabled(kB)
            end
        })
        VisualsGroup:AddDropdown("EspRarities", {
            Text = "ESP Rarities",
            Values = uU,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(kF)
                uD.SetRarities(kF)
            end
        })
        local ProgressionGroup = Hs.Main:AddRightGroupbox("Progression", "trending-up")
        ProgressionGroup:AddToggle("AutoClaimIndex", {
            Text = "Auto Claim Index",
            Default = false,
            Callback = function(kI)
                u4.SetEnabled(kI)
            end
        })
        ProgressionGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Callback = function(kM)
                u0.SetEnabled(kM)
            end
        })
        ProgressionGroup:AddToggle("AutoBuySlots", {
            Text = "Auto Buy Pet Slots",
            Default = false,
            Callback = function(kQ)
                uV.SetEnabled(kQ)
            end
        })
        ProgressionGroup:AddToggle("AutoTreadmill", {
            Text = "Auto Upgrade Treadmill",
            Default = false,
            Callback = function(kU)
                uN.SetEnabled(kU)
            end
        })
        ProgressionGroup:AddToggle("AutoBuyTrails", {
            Text = "Auto Buy Trails",
            Default = false,
            Callback = function(kY)
                uG.SetEnabled(kY)
            end
        })
        ProgressionGroup:AddDropdown("TrailTargets", {
            Text = "Trails",
            Values = ve(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(k3)
                uG.SetTrails(k3)
            end
        })
        local SellingGroup = Hs.Main:AddRightGroupbox("Selling", "banknote")
        SellingGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Callback = function(k6)
                uw.SetEnabled(k6)
            end
        })
        SellingGroup:AddDropdown("SellMode", {
            Text = "Sell Mode",
            Values = uL,
            Default = 1,
            Multi = false,
            Callback = function(lc)
                uw.SetMode(lc)
            end
        })
        SellingGroup:AddDropdown("SellKeepRarities", {
            Text = "Never Sell Rarities",
            Values = uU,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(le)
                uw.SetKeep(le)
            end
        })
        SellingGroup:AddSlider("SellMinimum", {
            Text = "Minimum Inventory Eggs",
            Default = 1,
            Min = 1,
            Max = 50,
            Rounding = 0,
            Callback = function(lg)
                uw.SetMinimum(lg)
            end
        })
        SellingGroup:AddSlider("SellInterval", {
            Text = "Sell Interval",
            Default = 30,
            Min = 5,
            Max = 300,
            Rounding = 0,
            Suffix = "s",
            Callback = function(li)
                uw.SetInterval(li)
            end
        })
        SellingGroup:AddToggle("SellTeleport", {
            Text = "Teleport To Seller",
            Default = true,
            Callback = function(lk)
                uw.SetTeleport(lk)
            end
        })
        local StatusGroup = Hs.Main:AddRightGroupbox("Status", "activity")
        local Label = StatusGroup:AddLabel("Idle", true)
        lx = task.spawn(function()
            while uh() do
                pcall(function()
                    Label:SetText(tostring(State.Status))
                end)
                task.wait(0.5)
            end
        end)
        uP.Track(function()
            pcall(task.cancel, lx)
        end)
    end
    Hy()
    local function Hx_2()
        local Dr
        local Dn
        local Dv
        local Dk
        Dk = nil
        Dn = nil
        Dr = nil
        Dv = nil
        local Dl, Dm, Do, Dp, Label3, Label2, Dt, Du, Label
        Dn = function(lC)
            return (tostring(lC):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Dv = function(lE, lF)
            return string.format('<font color="%s">%s</font>', lF, Dn(lE))
        end
        Do = function(lI, lJ, lK)
            return string.format("<b>%s</b> %s %s", lI, Dv("-", "#5a6070"), Dv(lJ, lK))
        end
        local Dx = "#6ec1ff"
        Dm = "#7fd47f"
        Dt = "#e8a34d"
        local Dy = {}
        local Dz = "#8b93a3"
        if not ut(fireproximityprompt) then
            table.insert(Dy, "stealing")
        end
        local DF = if not uj("PlaceItemAtCursor", "RemoteEvent") then 1 else 0
        if DF == 1 then
            table.insert(Dy, "egg placement")
        end
        if not uj("RequestHatch", "RemoteEvent") then
            table.insert(Dy, "hatching")
        end
        if not uj("IndexRewardAction", "RemoteFunction") then
            table.insert(Dy, "index rewards")
        end
        local DF_1 = if not uT() then 1 else 0
        if DF_1 == 1 then
            table.insert(Dy, "plot lookup")
        end
        local DA = #Dy == 0 and "ready"
        local DB = DA or "limited: " .. table.concat(Dy, ", ")
        Dp = "Unknown"
        pcall(function()
            local C6_1
            local C5_1
            local Dc = if ut(identifyexecutor) then 1 else 0
            if Dc == 1 then
                C6_1, C5_1 = identifyexecutor()
                local C7 = C6_1 ~= ""
                local C8 = type(C6_1) == "string" and C7
                if C8 then
                    local C7_1 = type(C5_1) == "string" and C5_1 ~= "" and C6_1 .. " " .. C5_1
                    Dp = C7_1 or C6_1
                end
            end
        end)
        Dr = os.clock()
        Dl = function()
            local Dd = math.floor(os.clock() - Dr)
            if Dd < 60 then
                return Dd .. "s"
            elseif Dd < 3600 then
                return string.format("%dm %ds", Dd // 60, Dd % 60)
            else
                return string.format("%dh %dm", Dd // 3600, Dd % 3600 // 60)
            end
        end
        local UserGroup = Hs.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Do("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Dm), true)
        UserGroup:AddLabel(Do("UserId", tostring(LocalPlayer.UserId), Dx), true)
        UserGroup:AddLabel(Do("Executor", Dp .. "  " .. DB, Dm), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Do("Session", Dl(), Dt), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Hv(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Hv("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Hs.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Do("Game", Hl, Dx), true)
        Label2 = SessionGroup:AddLabel(Do("Players", "0/0", Dm), true)
        Du = tostring(game.JobId)
        local Dx_1 = #Du > 18 and string.sub(Du, 1, 18) .. "..."
        local DA_2 = Dx_1 or Du
        SessionGroup:AddLabel(Do("Job", DA_2, Dz), true)
        Label = SessionGroup:AddLabel(Do("Ping", "0 ms", Dt), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                Hv(Du, "Copied Job ID")
            end
        })
        Dk = task.spawn(function()
            local Dg_1
            local Df_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Do("Session", Dl(), Dt))
                Label2:SetText(Do("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Dm))
                Df_1, Dg_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Df_2 = Df_1 and Dg_1 .. " ms" or "n/a"
                Label:SetText(Do("Ping", Df_2, Dt))
            end
        end)
        uP.Track(function()
            if coroutine.status(Dk) ~= "dead" then
                task.cancel(Dk)
            end
        end)
        local SocialsGroup = Hs.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Hv(Hm, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Hv(Hq, "Copied website link")
            end
        })
    end
    Hx_2()
    local function Hx_3()
        local m0
        local mZ
        local m1
        local m_
        local MovementGroup = Hs.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Hs.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local mY = {}
        mZ = {}
        m1 = {}
        m0 = {}
        m_ = {}
        local function m2()
            for k, v in mZ do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(mZ)
        end
        local function m6()
            for k, v in m_ do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(m_)
        end
        local function na()
            for k, v in m0 do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(m0)
        end
        local function ne(nf)
            if not nf:IsA("ProximityPrompt") then
                return
            end
            if m1[nf] == nil then
                m1[nf] = {
                    HoldDuration = nf.HoldDuration,
                    MaxActivationDistance = nf.MaxActivationDistance,
                    RequiresLineOfSight = nf.RequiresLineOfSight
                }
            end
            nf.HoldDuration = 0
            nf.MaxActivationDistance = 50
            nf.RequiresLineOfSight = false
        end
        local function nh()
            for k, v in m1 do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(m1)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                na()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                m6()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                m2()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(ne, v)
                end
            else
                nh()
            end
        end)
        table.insert(mY, Workspace.DescendantAdded:Connect(function(nA)
            if Toggles.InstantProximityPrompt.Value then
                ne(nA)
            end
        end))
        table.insert(mY, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if mZ[v] == nil then
                        mZ[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(mY, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Et = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Et then
                Et:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(mY, RunService.RenderStepped:Connect(function(nW)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Ez = Character and Character:FindFirstChildOfClass("Humanoid")
            local EA = Character
            if EA then
                EA = Character:FindFirstChild("HumanoidRootPart")
            end
            local Ey_1 = EA
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Ez then
                if m_[Ez] == nil then
                    m_[Ez] = Ez.WalkSpeed
                end
                Ez.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Ey_1 and Ez and CurrentCamera then
                if m0[Ez] == nil then
                    m0[Ez] = Ez.PlatformStand
                end
                Ez.PlatformStand = true
                local EA_4 = Vector3.zero
                local EM = if not UserInputService:GetFocusedTextBox() then 1 else 0
                if EM == 1 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        EA_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        EA_4 -= CurrentCamera.CFrame.LookVector
                    end
                    local EJ = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                    if EJ == 1 then
                        EA_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        EA_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        EA_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        EA_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Ey_1.AssemblyLinearVelocity = Vector3.zero
                if EA_4.Magnitude > 0 then
                    Ey_1.CFrame = Ey_1.CFrame + EA_4.Unit * Options.FlySpeed.Value * nW
                end
            end
        end))
        uP.Track(function()
            for k, v in mY do
                v:Disconnect()
            end
            m2()
            m6()
            na()
            nh()
        end)
    end
    Hx_3()
    local function Hx_4()
        local F1, F2, F3, F4, F5, Label, F7, F8, F9, Ga, Gb, Gc, Gd, Ge
        F7 = {}
        F1 = {}
        Gc = nil
        F3 = false
        Gd = 0
        F9 = 0
        F4 = os.clock()
        local MenuGroup = Hs.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Ga = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local EV = not CurrentCamera or not ut(uR.CaptureController)
            local EZ = if EV then 1 else 0
            local EX = 3057 * EZ + 3719 * (1 - EZ)
            local EY = 1548 * EZ + 2455 * (1 - EZ)
            if not ((EX * 2926 + EY * 1532 + EX * EY) % 16777213 == 16048554) then
                EV = not ut(uR.ClickButton2)
            end
            if EV then
                return false
            end
            local EV_1 = pcall(function()
                uR:CaptureController()
                uR:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not EV_1 then
                return false
            end
            Gd += 1
            F4 = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Gd)
            end)
            return true
        end
        F5 = function(oI)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not oI)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not oI
                end
            end)
            if not oI then
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
        F2 = function(oY)
            local E6 = oY.ClassName == "ParticleEmitter" or oY.ClassName == "Trail" or oY.ClassName == "Smoke" or oY.ClassName == "Fire"
            local Fa = if E6 then 1 else 0
            local E8 = 1726 * Fa + 3899 * (1 - Fa)
            local E9 = 2282 * Fa + 1790 * (1 - Fa)
            if not ((E8 * 1550 + E9 * 616 + E8 * E9) % 16777213 == 8019744) then
                E6 = oY.ClassName == "Sparkles"
            end
            if not E6 then
                E6 = oY.ClassName == "Explosion"
            end
            if not E6 then
                E6 = oY.ClassName == "Beam"
            end
            if E6 then
                if F7[oY] == nil then
                    F7[oY] = oY.Enabled
                end
                pcall(function()
                    oY.Enabled = false
                end)
            end
        end
        Ge = function()
            for k, v in F7 do
                local Ff = k
                local Fh = v
                if Ff.Parent then
                    pcall(function()
                        Ff.Enabled = Fh
                    end)
                end
            end
            table.clear(F7)
            if Gc then
                pcall(function()
                    settings().Rendering.QualityLevel = Gc.Quality
                end)
                Lighting.GlobalShadows = Gc.Shadows
                Lighting.FogEnd = Gc.Fog
                Gc = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(pc)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not pc)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(ph)
                if ph then
                    if not Gc then
                        Gc = {
                            Quality = settings().Rendering.QualityLevel,
                            Shadows = Lighting.GlobalShadows,
                            Fog = Lighting.FogEnd
                        }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9000000000
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(F2, v)
                    end
                else
                    Ge()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        F5(true)
        local ScriptGroup = Hs.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            F5(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            F5(true)
        end
        table.insert(F1, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Ga()
            end
        end))
        table.insert(F1, Workspace.DescendantAdded:Connect(function(pA)
            if Toggles.FpsBoost.Value then
                F2(pA)
            end
        end))
        Gb = function(pE)
            if F3 or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            F3 = true
            local Fx = F9
            local Fy_1 = pcall(function()
                if pE then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Fy_1 then
                F3 = false
                if not pE and Fx == F9 then
                    task.delay(1.5, function()
                        if Fx == F9 then
                            Gb(true)
                        end
                    end)
                end
            end
        end
        table.insert(F1, TeleportService.TeleportInitFailed:Connect(function(pW)
            local FI
            if pW == LocalPlayer and F3 then
                F3 = false
                FI = F9
                task.delay(3, function()
                    if FI == F9 then
                        Gb(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local FN = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local FN_1 = not FN
            local FO = Library.Unloaded
            local FS = if FO then 1 else 0
            local FQ = 1439 * FS + 1125 * (1 - FS)
            local FR = 1095 * FS + 1341 * (1 - FS)
            if not ((FQ * 2264 + FR * 701 + FQ * FR) % 16777213 == 5601196) then
                FO = FN_1
            end
            if FO then
                return
            end
            table.insert(F1, FN.ChildAdded:Connect(function(qa)
                if qa.Name == "ErrorPrompt" then
                    Gb(false)
                end
            end))
        end)
        F8 = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    F5(true)
                end
                local FT = Toggles.AntiAfk.Value and os.clock() - F4 >= 60
                if FT then
                    Ga()
                end
                task.wait(1)
            end
        end)
        uP.Track(function()
            F9 += 1
            for k, v in F1 do
                v:Disconnect()
            end
            pcall(task.cancel, F8)
            F5(false)
            Ge()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Hx_4()
    local function Hx_5()
        local G9, Ha, Hb, Hc
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Hs.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StealAGiantEgg")
        local Hd = SaveManager:BuildConfigSection(Hs.Settings)
        Hc = function(qB, qC)
            local Gi_1 = (qB == "Toggle" and Toggles or Options)[qC]
            local Gh_2 = type(Gi_1) == "table" and Gi_1.Type == qB
            return Gh_2 and Gi_1 or nil
        end
        Ha = function(qL, qM)
            local Type = qM.Type
            if Type == "Toggle" then
                return { idx = qL, type = "Toggle", value = qM.Value == true }
            elseif Type == "Slider" then
                return { idx = qL, type = "Slider", value = tostring(qM.Value) }
            elseif Type == "Dropdown" then
                return { idx = qL, type = "Dropdown", multi = qM.Multi == true, value = qM.Value }
            elseif Type == "Input" then
                local Gp = qM.Value
                local Gt = if Gp then 1 else 0
                local Gr = 2197 * Gt + 2047 * (1 - Gt)
                local Gs = 2181 * Gt + 37 * (1 - Gt)
                if not ((Gr * 1525 + Gs * 1520 + Gr * Gs) % 16777213 == 11457202) then
                    Gp = ""
                end
                return { idx = qL, type = "Input", text = tostring(Gp) }
            elseif Type == "ColorPicker" then
                return { idx = qL, type = "ColorPicker", value = qM.Value:ToHex(), transparency = qM.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = qL,
                    type = "KeyPicker",
                    mode = qM.Mode,
                    key = qM.Value,
                    modifiers = qM.Modifiers,
                    toggled = qM.Toggled
                }
            else
                return nil
            end
        end
        G9 = function()
            local Gv = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Gw = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Gw then
                        local Gw_1 = Ha(k, v)
                        if Gw_1 then
                            Gv[#Gv + 1] = Gw_1
                        end
                    end
                end
            end
            table.sort(Gv, function(qW, qX)
                if qW.type ~= qX.type then
                    return qW.type < qX.type
                end
                return qW.idx < qX.idx
            end)
            return { objects = Gv }
        end
        Hb = function(qZ)
            local GP
            GP = nil
            local GQ = type(qZ) ~= "table" or type(qZ.idx) ~= "string" or type(qZ.type) ~= "string" or SaveManager.Ignore[qZ.idx]
            if GQ then
                return false
            end
            GP = Hc(qZ.type, qZ.idx)
            if not GP then
                return false
            end
            local GQ_1 = pcall(function()
                if qZ.type == "Input" then
                    if type(qZ.text) ~= "string" then
                        return
                    end
                    GP:SetValue(qZ.text)
                elseif qZ.type == "ColorPicker" then
                    GP:SetValueRGB(Color3.fromHex(qZ.value), qZ.transparency)
                elseif qZ.type == "KeyPicker" then
                    GP:SetValue({ qZ.key, qZ.mode, qZ.modifiers })
                    if qZ.mode == "Toggle" and qZ.toggled ~= nil then
                        GP.Toggled = qZ.toggled
                        GP:Update()
                    end
                else
                    GP:SetValue(qZ.value)
                end
            end)
            return GQ_1
        end
        Hd:AddDivider()
        Hd:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Hd:AddButton("Export Config to Clipboard", function()
            local GT_1
            local GS_1
            GS_1, GT_1 = pcall(HttpService.JSONEncode, HttpService, G9())
            if GS_1 then
                local GS_2 = ut(setclipboard) and setclipboard
                local GU = GS_2
                if not GU then
                    local GS_3 = ut(toclipboard) and toclipboard
                    GU = GS_3 or nil
                end
                local GS_4 = GU
                local GU_1 = type(GS_4) == "function" and pcall(GS_4, GT_1)
                if GU_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Hd:AddButton("Import Config from Clipboard Text", function()
            local GZ_1
            local GX = Options.SaveManager_ImportSource.Value or ""
            local GX_1
            local GY = tostring(GX):match("^%s*(.-)%s*$")
            if GY == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #GY > 262144 then
                Library:Notify("That config is too large")
                return
            end
            GX_1, GZ_1 = pcall(HttpService.JSONDecode, HttpService, GY)
            local GY_1 = not GX_1 or type(GZ_1) ~= "table" or type(GZ_1.objects) ~= "table"
            if GY_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #GZ_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local GX_2 = 0
            for i, v in ipairs(GZ_1.objects) do
                if Hb(v) then
                    GX_2 += 1
                end
            end
            if GX_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local GZ_2 = GX_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(GX_2, GZ_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.StealZones then
            ub.SetZones(Options.StealZones.Value)
        end
        if Options.StealRarities then
            ub.SetRarities(Options.StealRarities.Value)
        end
        if Options.StealDelay then
            ub.SetDelay(Options.StealDelay.Value)
        end
        if Toggles.ReturnHome then
            ub.SetReturnHome(Toggles.ReturnHome.Value)
        end
        if Options.PlaceRarities then
            t9.SetRarities(Options.PlaceRarities.Value)
        end
        if Options.PlaceDelay then
            t9.SetDelay(Options.PlaceDelay.Value)
        end
        if Options.TrailTargets then
            uG.SetTrails(Options.TrailTargets.Value)
        end
        if Options.SellMode then
            uw.SetMode(Options.SellMode.Value)
        end
        if Options.SellKeepRarities then
            uw.SetKeep(Options.SellKeepRarities.Value)
        end
        if Options.SellMinimum then
            uw.SetMinimum(Options.SellMinimum.Value)
        end
        if Options.SellInterval then
            uw.SetInterval(Options.SellInterval.Value)
        end
        if Toggles.SellTeleport then
            uw.SetTeleport(Toggles.SellTeleport.Value)
        end
        if Options.EspRarities then
            uD.SetRarities(Options.EspRarities.Value)
        end
        if Toggles.EggEsp then
            uD.SetEnabled(Toggles.EggEsp.Value)
        end
        if Toggles.AutoSteal then
            ub.SetEnabled(Toggles.AutoSteal.Value)
        end
        if Toggles.AutoPlaceEggs then
            t9.SetEnabled(Toggles.AutoPlaceEggs.Value)
        end
        if Toggles.AutoHatchEggs then
            vc.SetEnabled(Toggles.AutoHatchEggs.Value)
        end
        if Toggles.AutoClaimIndex then
            u4.SetEnabled(Toggles.AutoClaimIndex.Value)
        end
        if Toggles.AutoEquipBest then
            u0.SetEnabled(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoBuySlots then
            uV.SetEnabled(Toggles.AutoBuySlots.Value)
        end
        if Toggles.AutoTreadmill then
            uN.SetEnabled(Toggles.AutoTreadmill.Value)
        end
        if Toggles.AutoBuyTrails then
            uG.SetEnabled(Toggles.AutoBuyTrails.Value)
        end
        if Toggles.AutoSell then
            uw.SetEnabled(Toggles.AutoSell.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Hx_5()
end
vj()
