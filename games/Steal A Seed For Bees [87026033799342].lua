local fns = {}
local Hf_13, Hf_17
local Rarities
local u8
local t8
local ve
local ue
local vD
local vk
local uk
local u1
local uJ
local vq
local uq
local uP
local vw
local uw
local ud
local uV
local vC
local uC
local vj
local u0
local vI
local uI
local vp
local u6
local vv
local Plants
local vc
local uc
local uU
local vB
local uB
local vi
local u_
local vH
local Library
local vo
local Options
local u5
local uN
local vu
local uu
local vb
local uT
local Seeds
local vh
local uh
local uG
local vn
local un
local u4
local uM
local vt
local va
local uS
local vz
local uz
local State
local uY
local Order
local vm
local um
local u3
local uL
local vs
local Toggles
local u9
local t9
local uR
local vy
local vf
local uf
local uX
local vE
local uE
local vl
local ul
local u2
local uK
local vr
function fns.fn31(a6)
    local w3 = a6 == ""
    local w4 = type(a6) ~= "string"
    local w8 = if w4 then 1 else 0
    local w6 = 2869 * w8 + 3507 * (1 - w8)
    local w7 = 3465 * w8 + 3325 * (1 - w8)
    if not ((w6 * 2298 + w7 * 2293 + w6 * w7) % 16777213 == 7702079) then
        w4 = w3
    end
    if w4 then
        return nil
    end
    local w3_1 = Plants.SeedRarity and Plants.SeedRarity[a6]
    if type(w3_1) == "string" then
        return w3_1
    end
    local w3_2 = Seeds[a6]
    local w4_2 = type(w3_2) == "table" and type(w3_2.Rarity) == "string"
    if w4_2 then
        return w3_2.Rarity
    end
    return nil
end
function fns.fn48()
    local Character = vD.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local ya_1 = child:IsA("Tool") and child:GetAttribute("EggTool")
            if ya_1 then
                return child
            end
        end
    end
    for i, child in ipairs(vD.Backpack:GetChildren()) do
        local ya_2 = child:IsA("Tool") and child:GetAttribute("EggTool")
        if ya_2 then
            return child
        end
    end
    return nil
end
function fns.fn52(bp)
    if type(bp) ~= "table" then
        return false
    end
    for k, v in pairs(bp) do
        if v then
            return true
        end
    end
    return false
end
function fns.fn75()
    local attr = vD:GetAttribute("Carrying")
    local x4 = attr ~= ""
    local x5 = type(attr) == "string" and x4
    return x5
end
function fns.fn87(jr)
    State.EspRarityFilter = vq(jr)
    if State.Enabled.SeedEsp then
        uk()
    end
end
function fns.fn92()
    local Character = vD.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local wN_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if wN_1 then
        return HumanoidRootPart
    end
    return nil
end
function fns.fn110(eP)
    local z7 = vr[eP]
    if not z7 then
        return false
    end
    uN(z7)
    return u2(CFrame.new(z7 + Vector3.new(0, 4, 0)))
end
function fns.fn116(bH, bI)
    local xD = vi(bH)
    local xE = not xD or not u8(xD)
    if xE then
        return false
    end
    local xD_1 = bI ~= ""
    local xE_1 = type(bI) == "string" and xD_1
    if xE_1 then
        return uT(bI)
    end
    return true
end
function fns.fn136(iX)
    local Enabled = State.Enabled
    local Dh = iX and true or false
    Enabled.Steal = Dh
    if State.Enabled.Steal then
        uU("Steal", 0.2, uM)
    else
        local Gens = State.Gens
        Gens.Steal = Gens.Steal + 1
    end
end
function fns.fn246(jj)
    local Enabled = State.Enabled
    local DQ = jj and true or false
    Enabled.SpawnBee = DQ
    if State.Enabled.SpawnBee then
        uU("SpawnBee", 0.7, u_)
    else
        local Gens = State.Gens
        Gens.SpawnBee = Gens.SpawnBee + 1
    end
end
function fns.fn253(e0)
    local Ah = os.clock()
    local Aj = Ah + (e0 or 0.75)
    while true do
        local Ah_1 = uY() and not uc() and os.clock() < Aj
        if Ah_1 then
            task.wait()
            continue
        end
        break
    end
    return uc()
end
function fns.fn259(b2)
    if b2.PrimaryPart then
        return b2.PrimaryPart.Position
    end
    local BasePart = b2:FindFirstChildWhichIsA("BasePart", true)
    if BasePart then
        return BasePart.Position
    end
    local Attachment = b2:FindFirstChildWhichIsA("Attachment", true)
    if Attachment then
        return Attachment.WorldPosition
    end
    local xY_2 = vc(b2)
    if xY_2 then
        local Parent = xY_2.Parent
        local xY_3 = Parent and Parent:IsA("Attachment")
        if xY_3 then
            return Parent.WorldPosition
        end
        local xY_4 = Parent and Parent:IsA("BasePart")
        if xY_4 then
            return Parent.Position
        end
        return nil
    end
    return nil
end
function fns.fn282(aN)
    local wS = vt()
    if not wS then
        return false
    end
    wS.AssemblyLinearVelocity = Vector3.zero
    wS.AssemblyAngularVelocity = Vector3.zero
    wS.CFrame = aN
    return true
end
function fns.fn291(d7)
    local zH = d7 and uI(d7)
    if not zH then
        return false
    end
    local zP = if not uX(d7.pos) then 1 else 0
    if zP == 1 then
        return false
    end
    task.wait(0.05)
    local zH_1 = not uY() or not State.Enabled.Steal
    if zH_1 then
        return false
    end
    local zH_2 = os.clock() + 1.4
    local zI = 0
    repeat
        local zJ = uY() and State.Enabled.Steal and not uc() and os.clock() < zH_2
        if not zJ then
            if uc() then
                return true
            end
            if d7.kind == "meadow" then
                State.MeadowGeneration = nil
            end
            return false
        end
        local zP_1 = if not uI(d7) then 1 else 0
        if zP_1 == 1 then
            if uc() then
                return true
            end
            if d7.kind == "meadow" then
                State.MeadowGeneration = nil
            end
            return false
        end
        local zJ_1 = vt()
        if not zJ_1 then
            return false
        end
        if (zJ_1.Position - d7.pos).Magnitude > 8 then
            uX(d7.pos)
        end
        if os.clock() - zI >= 0.12 then
            if d7.kind == "meadow" then
                local zJ_2 = vf()
                local zK = tonumber(d7.slotIndex)
                local zL = type(zJ_2) == "number" and type(zK) == "number"
                if zL then
                    uB("GrabMeadowSeed", zJ_2, zK)
                end
            end
            if d7.prompt then
                vC(d7.prompt)
            end
            zI = os.clock()
        end
        task.wait()
    until not uY()
    return false
end
function fns.fn316()
    vh()
end
function fns.fn319()
    local z9 = {}
    for i, v in ipairs(vB) do
        if uT(v) then
            table.insert(z9, v)
        end
    end
    if #z9 == 0 then
        return nil
    end
    State.StealZoneCursor = State.StealZoneCursor % #z9 + 1
    return z9[State.StealZoneCursor]
end
function fns.fn330(be)
    local w9 = Seeds[be]
    local xa = type(w9) == "table" and type(w9.DisplayName) == "string"
    if xa then
        return w9.DisplayName
    end
    return be
end
function fns.fn348()
    local yv_2
    local yu = vE()
    if yu then
        u6(yu)
        if State.BasePosition then
            return State.BasePosition
        elseif State.BasePlotName then
            local yu_1 = vk[State.BasePlotName] or vo[State.BasePlotName]
            if yv_2 then
                State.BasePosition = yu_1
                return yu_1
            elseif State.BasePosition then
                return State.BasePosition
            else
                return nil
            end
        elseif State.BasePosition then
            return State.BasePosition
        else
            return nil
        end
    elseif State.BasePlotName then
        yv_2 = vk[State.BasePlotName] or vo[State.BasePlotName]
        if yv_2 then
            State.BasePosition = yv_2
            return yv_2
        elseif State.BasePosition then
            return State.BasePosition
        else
            return nil
        end
    elseif State.BasePosition then
        return State.BasePosition
    else
        return nil
    end
end
local function fn378(fV)
    local Functionals = fV:FindFirstChild("Functionals")
    local A2 = Functionals and Functionals:FindFirstChild("PlantZones")
    if not A2 then
        return {}
    end
    local A2_1 = {}
    for i, child in ipairs(A2:GetChildren()) do
        local A1_2 = child:IsA("Model") and child:GetAttribute("Locked") ~= true
        if A1_2 then
            table.insert(A2_1, child)
        end
    end
    table.sort(A2_1, function(f1, f2)
        local AZ = tonumber(f1.Name) or 0
        local A_ = tonumber(f2.Name) or 0
        return AZ < A_
    end)
    return A2_1
end
local function fn385(j_)
    return (tostring(j_):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn397(bD)
    if not vI(State.ZoneFilter) then
        return true
    end
    return State.ZoneFilter[bD] == true
end
local function fn407()
    local BK = tonumber(vD:GetAttribute("Honey")) or 0
    if BK <= 0 then
        return "No honey"
    end
    uB("SellHoney")
    return "Sold"
end
local function fn421()
    local BN = {}
    local attr = vD:GetAttribute("EquippedTrail")
    local BO_1
    local BP = attr ~= ""
    local BP_1
    local BQ = type(attr) == "string" and BP
    if BQ then
        BN[attr] = true
    end
    BO_1, BP_1 = pcall(function()
        return require(vD.PlayerScripts.Client.Lib.ClientRegistry)
    end)
    local BQ_1 = BO_1 and BP_1 and u5(BP_1.TryGet)
    if BQ_1 then
        local BO_2 = BP_1.TryGet("DataController")
        local BP_2 = BO_2 and type(BO_2.trails) == "table"
        if BP_2 then
            for k, v in pairs(BO_2.trails) do
                if v then
                    BN[tostring(k)] = true
                end
            end
        end
    end
    return BN
end
local function fn460(co)
    local yo = co and co:IsA("Model")
    if not yo then
        return
    end
    State.BasePlotName = co.Name
    local yo_1 = vk[co.Name]
    if yo_1 then
        State.BasePosition = yo_1
        return
    end
    local PlotAnchor = co:FindFirstChild("PlotAnchor")
    local yp = PlotAnchor and PlotAnchor:IsA("BasePart")
    if yp then
        State.BasePosition = PlotAnchor.Position
        return
    end
    if vo[co.Name] then
        State.BasePosition = vo[co.Name]
    end
end
local function fn465(er)
    local zQ = os.clock()
    local zS = zQ + (er or 1.1)
    local zQ_1 = uK()
    while true do
        local zR_1 = uY() and State.Enabled.Steal and #zQ_1 == 0 and os.clock() < zS
        if not zR_1 then
            return zQ_1
        end
        task.wait(0.12)
        if not uY() then
            break
        end
        zQ_1 = uK()
    end
    return {}
end
local function fn469(jc)
    local Enabled = State.Enabled
    local DA = jc and true or false
    Enabled.GoTreadmill = DA
    if State.Enabled.GoTreadmill then
        uU("GoTreadmill", 0.4, vs)
    else
        local Gens = State.Gens
        Gens.GoTreadmill = Gens.GoTreadmill + 1
    end
end
local function fn508(bX)
    local xP
    for i, descendant in ipairs(bX:GetDescendants()) do
        local xQ = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if xQ then
            if descendant.ActionText == "Grab" then
                return descendant
            end
            if xP == nil then
                xP = descendant
            end
        end
    end
    return xP
end
local function fn513()
    local B3 = tonumber(vD:GetAttribute("Cash")) or 0
    local B4 = B3
    local B3_1 = uG()
    local B5 = 0
    local B7 = ul.List or {}
    for i, v in ipairs(B7) do
        local key = v.key
        local B7_1 = tonumber(v.Price) or 0
        local B7_2 = type(key) == "string" and not B3_1[key] and B4 >= B7_1
        if B7_2 then
            uB("BuyTrail", key)
            B3_1[key] = true
            B4 -= B7_1
            B5 += 1
            task.wait(0.2)
            local B6_2 = not uY() or not State.Enabled.BuyTrails
            if B6_2 then
                break
            end
        end
    end
    if B5 > 0 then
        return "Bought " .. tostring(B5)
    end
    return "Nothing to buy"
end
local function fn521(jW)
    local DiscordGroup = jW:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = u3,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn535()
    local FUNCTIONALS = uL:FindFirstChild("__FUNCTIONALS")
    local xH = FUNCTIONALS and FUNCTIONALS:FindFirstChild("PlayerPlots")
    if not xH then
        return nil
    end
    for i, child in ipairs(xH:GetChildren()) do
        local xG_2 = child:IsA("Model") and child:GetAttribute("Owner") == vD.UserId
        if xG_2 then
            return child
        end
    end
    return nil
end
local function fn576(i0)
    local Enabled = State.Enabled
    local Do = i0 and true or false
    Enabled.Plant = Do
    if State.Enabled.Plant then
        uU("Plant", 0.45, u0)
    else
        local Gens = State.Gens
        Gens.Plant = Gens.Plant + 1
    end
end
local function fn581()
    local zy_1
    local zx_1
    if type(State.MeadowGeneration) == "number" then
        return State.MeadowGeneration
    end
    zx_1, zy_1 = ud("GetMeadowStock")
    local zz = zx_1 and type(zy_1) == "table" and type(zy_1.generation) == "number"
    if zz then
        State.MeadowGeneration = zy_1.generation
        return zy_1.generation
    end
    return nil
end
local function fn613()
    local yx = uw()
    if not yx then
        return nil
    end
    return CFrame.new(yx + Vector3.new(0, 6, 0))
end
local function fn621()
    local Bl_1
    local Position
    local Bj_1
    local Bi = vE()
    if not Bi then
        return "No plot"
    end
    Bl_1, Bj_1, Position = nil, nil, nil
    for i, descendant in ipairs(Bi:GetDescendants()) do
        local Bi_1 = descendant:IsA("ProximityPrompt") and descendant.Name == "CollectCombPrompt" and descendant.Enabled
        if Bi_1 then
            local Parent = descendant.Parent
            local Bm = Parent and Parent:IsA("BasePart")
            if Bm then
                local Bm_1 = tonumber(Parent:GetAttribute("HoneyStored")) or 0
                local Bm_2 = tonumber(Parent:GetAttribute("HoneyCap")) or 0
                if Bm_1 > 0 then
                    local Bo_1 = Bm_2 > 0 and Bm_1 / Bm_2 or Bm_1
                    local Bm_4 = not Bj_1
                    if not Bm_4 then
                        Bm_4 = Bo_1 > Bj_1
                    end
                    if Bm_4 then
                        Bj_1 = Bo_1
                        Bl_1 = descendant
                        Position = Parent.Position
                    end
                end
            end
        end
    end
    if not Bl_1 then
        return "No honey"
    end
    u2(CFrame.new(Position + Vector3.new(0, 3, 0)))
    task.wait(0.12)
    local Bi_3 = not uY() or not State.Enabled.CollectHoney
    if Bi_3 then
        return "Stopped"
    elseif vC(Bl_1) then
        return "Collected"
    else
        return "Prompt failed"
    end
end
local function fn631(a1)
    local wZ = not a1 or not a1:IsA("ProximityPrompt") or not a1.Enabled
    if wZ then
        return false
    elseif not u5(fireproximityprompt) then
        return false
    else
        local wZ_1 = pcall(fireproximityprompt, a1)
        return wZ_1
    end
end
local function fn634()
    local yz = vu()
    if not yz then
        return false
    end
    local yA = u2(yz)
    local yB = os.clock()
    if yB - State.LastBankWarpAt >= 1.25 then
        State.LastBankWarpAt = yB
        uB("WarpTo", "Beehive")
    end
    uN(yz.Position)
    return yA
end
local function fn695()
    if State.EspFolder and State.EspFolder.Parent then
        State.EspFolder:Destroy()
    end
    State.EspFolder = nil
end
local function fn705(jR, jS)
    local D7 = false
    if u5(setclipboard) then
        D7 = pcall(setclipboard, jR)
    elseif u5(toclipboard) then
        D7 = pcall(toclipboard, jR)
    end
    if D7 and jS then
        Library:Notify(jS, 3)
    elseif not D7 then
        Library:Notify("Clipboard unavailable", 3)
    end
    return D7
end
local function fn712()
    if not State.Enabled.SeedEsp then
        return
    end
    local CX = vn()
    if not CX or not CX.Parent then
        return
    end
    for i, child in ipairs(CX:GetChildren()) do
        child:Destroy()
    end
    local CY_1 = vp()
    for i, v in ipairs(CY_1) do
        local CY_2 = uz(v.rarity)
        local highlight = Instance.new("Highlight")
        highlight.Name = "SeedHighlight"
        highlight.Adornee = v.part
        highlight.FillTransparency = 0.45
        highlight.OutlineTransparency = 0
        highlight.FillColor = CY_2
        highlight.OutlineColor = CY_2
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Parent = CX
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "SeedLabel"
        billboardGui.Adornee = v.part
        billboardGui.Size = UDim2.fromOffset(170, 40)
        billboardGui.StudsOffset = Vector3.new(0, 3.5, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.MaxDistance = 2000
        billboardGui.Parent = CX
        local textLabel = Instance.new("TextLabel")
        textLabel.BackgroundTransparency = 1
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 14
        textLabel.TextColor3 = CY_2
        textLabel.TextStrokeTransparency = 0.35
        textLabel.Text = string.format("%s\n%s | %s", uS(v.eggKey), tostring(v.rarity), tostring(v.nestId))
        textLabel.Parent = billboardGui
    end
end
local function fn730()
    if uc() then
        return "Holding seed"
    elseif os.clock() - State.LastSpawnBeeAt < 0.6 then
        return "Cooldown"
    else
        local AP = uC()
        if #AP == 0 then
            return "No ready seeds"
        end
        local AQ
        for i, v in ipairs(AP) do
            if v.incId ~= State.LastSpawnBeeId then
                AQ = v
                break
            end
        end
        local AQ_1 = AQ or AP[1]
        if AQ_1.pos then
            uN(AQ_1.pos)
            u2(CFrame.new(AQ_1.pos + Vector3.new(0, 3, 0)))
            task.wait(0.12)
        end
        local AP_1 = not uY() or not State.Enabled.SpawnBee
        if AP_1 then
            return "Stopped"
        end
        uB("RollBee", AQ_1.incId)
        if AQ_1.prompt then
            vC(AQ_1.prompt)
        end
        State.LastSpawnBeeAt = os.clock()
        State.LastSpawnBeeId = AQ_1.incId
        return "Spawned " .. tostring(AQ_1.incId)
    end
end
local function fn738(O)
    return type(O) == "function"
end
local function fn774()
    local yT = {}
    local Eggs = uL:FindFirstChild("_Eggs")
    if Eggs then
        for i, child in ipairs(Eggs:GetChildren()) do
            if child:IsA("Model") then
                local attr2 = child:GetAttribute("EggKey")
                local attr = child:GetAttribute("NestId")
                local yW_1 = attr ~= "Zone-1" and uE(attr2, attr)
                if yW_1 then
                    local yW_2 = vc(child)
                    local yX_1 = uR(child)
                    if yW_2 and yX_1 then
                        table.insert(yT, {
                            kind = "nest",
                            egg = child,
                            prompt = yW_2,
                            pos = yX_1,
                            eggKey = attr2,
                            nestId = attr,
                            rarity = vi(attr2)
                        })
                    end
                end
            end
        end
    end
    if uT("Meadow") then
        local MeadowStock = uL:FindFirstChild("_MeadowStock")
        if MeadowStock then
            for i, child in ipairs(MeadowStock:GetChildren()) do
                local yU_3 = child:IsA("Model") and child:GetAttribute("Available") ~= false
                if yU_3 then
                    local attr = child:GetAttribute("EggKey")
                    if uE(attr, "Meadow") then
                        local yV_2 = vc(child)
                        local yW_3 = uR(child)
                        local yX_2 = tonumber(child:GetAttribute("SlotIndex"))
                        if yW_3 and (yV_2 or yX_2) then
                            table.insert(yT, {
                                kind = "meadow",
                                egg = child,
                                prompt = yV_2,
                                pos = yW_3,
                                slotIndex = yX_2,
                                eggKey = attr,
                                nestId = "Meadow",
                                rarity = vi(attr)
                            })
                        end
                    end
                end
            end
        end
    end
    return yT
end
local function fn779()
    local Character = vD.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChildOfClass("Humanoid")
end
local function fn783()
    return t8.CoreGui
end
local function fn878()
    local yS = if not uc() then 1 else 0
    if yS == 1 then
        return true, "Already banked"
    end
    local yK = vu()
    if not yK then
        return false, "No base"
    end
    u2(yK)
    local yL = os.clock()
    if yL - State.LastBankWarpAt >= 1.25 then
        State.LastBankWarpAt = yL
        uB("WarpTo", "Beehive")
    end
    local yL_1 = os.clock() + 6
    local yM = 0
    while true do
        local yN = uY() and uc() and os.clock() < yL_1
        if not yN then
            if uc() then
                if yK then
                    u2(yK)
                end
                return false, "Bank timeout"
            end
            return true, "Banked"
        end
        if not State.Enabled.Steal and not State.Enabled.Plant then
            break
        end
        local yN_2 = vu() or yK
        yK = yN_2
        local yN_3 = vt()
        local yO = yK and os.clock() - yM >= 0.12
        if yO then
            u2(yK)
            yM = os.clock()
        else
            if yK and yN_3 and (yN_3.Position - yK.Position).Magnitude > u1 then
                u2(yK)
                yM = os.clock()
            end
        end
        task.wait()
        if not uY() then
            return false, "Stopped"
        end
    end
    return false, "Stopped"
end
local function fn881()
    local Incubators = uL:FindFirstChild("_Incubators")
    local Au = Incubators and Incubators:FindFirstChild(tostring(vD.UserId))
    if not Au then
        return {}
    end
    local Au_1 = {}
    for i, child in ipairs(Au:GetChildren()) do
        local At_2 = child:IsA("Model") and child:GetAttribute("Ready") == true
        if At_2 then
            local attr2 = child:GetAttribute("BeeModelName")
            local Av = attr2 ~= ""
            local Aw = type(attr2) == "string" and Av
            if not Aw then
                local attr = child:GetAttribute("IncId")
                local Av_1 = attr ~= ""
                local Aw_1 = type(attr) == "string" and Av_1
                if Aw_1 then
                    local Av_2 = nil
                    for i, descendant in ipairs(child:GetDescendants()) do
                        local Aw_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "SpawnBeePrompt" and descendant.Enabled
                        if Aw_2 then
                            Av_2 = descendant
                            break
                        end
                    end
                    local Aw_3 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                    local insert = table.insert
                    local Ay = Aw_3 and Aw_3.Position
                    insert(Au_1, {
                        incId = attr,
                        prompt = Av_2,
                        pos = Ay,
                        eggKey = child:GetAttribute("EggKey"),
                        zone = child:GetAttribute("Zone")
                    })
                end
            end
        end
    end
    return Au_1
end
local function fn884(i4)
    local Enabled = State.Enabled
    local Ds = i4 and true or false
    Enabled.CollectHoney = Ds
    if State.Enabled.CollectHoney then
        uU("CollectHoney", 0.55, uq)
    else
        local Gens = State.Gens
        Gens.CollectHoney = Gens.CollectHoney + 1
    end
end
local function fn888(j1, j2)
    return string.format('<font color="%s">%s</font>', j2, vb(j1))
end
local function fn963(dA)
    local ze_1
    local zd_1
    local zc = vt()
    if not zc then
        return dA[1]
    end
    ze_1, zd_1 = nil, nil
    for i, v in ipairs(dA) do
        local Magnitude = (v.pos - zc.Position).Magnitude
        if not zd_1 or Magnitude < zd_1 then
            ze_1 = v
            zd_1 = Magnitude
        end
    end
    return ze_1
end
local function fn965(ji)
    local Enabled = State.Enabled
    local DM = ji and true or false
    Enabled.ClaimIndex = DM
    if State.Enabled.ClaimIndex then
        uU("ClaimIndex", 3, un)
    else
        local Gens = State.Gens
        Gens.ClaimIndex = Gens.ClaimIndex + 1
    end
end
local function fn985(d_)
    if not (d_ and d_.egg and d_.egg.Parent) then
        return false
    end
    local zF_1 = uR(d_.egg) or d_.pos
    d_.pos = zF_1
    local zF_2 = vc(d_.egg)
    if zF_2 then
        d_.prompt = zF_2
    end
    if d_.kind == "meadow" then
        local zF_3 = tonumber(d_.egg:GetAttribute("SlotIndex")) or d_.slotIndex
        d_.slotIndex = zF_3
    end
    return d_.pos ~= nil
end
local function fn990(jo)
    State.ZoneFilter = vq(jo)
end
local function fn992()
    for k in pairs(State.Gens) do
        State.Gens[k] += 1
        State.Enabled[k] = false
    end
    vy()
end
local function fn1015(jh)
    local Enabled = State.Enabled
    local DI = jh and true or false
    Enabled.BuyTrails = DI
    if State.Enabled.BuyTrails then
        uU("BuyTrails", 2, vl)
    else
        local Gens = State.Gens
        Gens.BuyTrails = Gens.BuyTrails + 1
    end
end
local function fn1023(bt)
    local xs = {}
    if type(bt) == "table" then
        for k, v in pairs(bt) do
            local xt = v == true and type(k) == "string"
            if xt then
                xs[k] = true
            elseif type(v) == "string" then
                xs[v] = true
            end
        end
    end
    return xs
end
local function fn1029(bj)
    local xf = Rarities.Info and Rarities.Info[bj]
    local xf_1 = type(xf) == "table" and typeof(xf.Color) == "Color3"
    if xf_1 then
        return xf.Color
    end
    return Color3.fromRGB(200, 200, 200)
end
local function fn1034(dW)
    if typeof(dW) ~= "Vector3" then
        return false
    end
    uN(dW)
    return u2(CFrame.new(dW + Vector3.new(0, 3, 0)))
end
local function fn1047(j5, j6, j7)
    return string.format("<b>%s</b> %s %s", j5, u4("-", "#5a6070"), u4(j6, j7))
end
local function fn1048()
    local Bz = vD:GetAttribute("TreadmillOwned") == true
    if not Bz then
        uB("BuyTreadmill")
        return "Buy treadmill"
    end
    local Bz_1 = tonumber(vD:GetAttribute("TrainingTier")) or 0
    local Bz_2 = uh.MaxTier and uh.MaxTier()
    if Bz_1 >= (Bz_2 or 10) then
        return "Max tier"
    end
    local Bz_4 = tonumber(vD:GetAttribute("Cash")) or 0
    local Bz_5 = uh.CostFor and uh.CostFor(Bz_1)
    local BA_1 = Bz_5 or 0
    local BA_2 = type(BA_1) == "number" and Bz_4 < BA_1
    if BA_2 then
        return "Need cash"
    end
    uB("BuyTrainingTier")
    return "Upgrade tier"
end
local function fn1088()
    vm(uf.Main)
    local StealGroup = uf.Main:AddLeftGroupbox("Steal", "//")
    StealGroup:AddToggle("AutoStealSeed", { Text = "Auto Steal Seed", Default = false })
    StealGroup:AddDropdown("StealRarityFilter", {
        Text = "Rarity Filter",
        Values = Order,
        Default = table.clone(Order),
        Multi = true,
        AllowNull = true
    })
    StealGroup:AddDropdown("StealZoneFilter", { Text = "Zone Filter", Values = vB, Default = table.clone(vB), Multi = true, AllowNull = true })
    local FarmGroup = uf.Main:AddLeftGroupbox("Farm", "sprout")
    FarmGroup:AddToggle("AutoPlantSeed", { Text = "Auto Plant Seed", Default = false })
    FarmGroup:AddToggle("AutoSpawnBee", { Text = "Auto Spawn Bee", Default = false })
    FarmGroup:AddToggle("AutoCollectHoney", { Text = "Auto Collect Honey", Default = false })
    FarmGroup:AddToggle("AutoSellHoney", { Text = "Auto Sell Honey", Default = false })
    local TreadmillGroup = uf.Main:AddRightGroupbox("Treadmill", "gauge")
    TreadmillGroup:AddToggle("AutoUpgradeTreadmill", { Text = "Auto Upgrade Treadmill", Default = false })
    TreadmillGroup:AddToggle("AutoGoTreadmill", { Text = "Auto Go on Treadmill", Default = false })
    local ShopGroup = uf.Main:AddRightGroupbox("Shop", "shopping-bag")
    ShopGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    ShopGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
    local UtilityGroup = uf.Main:AddRightGroupbox("Utility", "map-pin")
    UtilityGroup:AddButton({
        Text = "Teleport to Garden",
        Func = function()
            vj.TeleportToGarden()
        end
    })
    UtilityGroup:AddToggle("SeedEsp", { Text = "Seed ESP", Default = false })
    UtilityGroup:AddDropdown("EspRarityFilter", {
        Text = "ESP Rarity Filter",
        Values = Order,
        Default = table.clone(Order),
        Multi = true,
        AllowNull = true
    })
    Toggles.AutoStealSeed:OnChanged(function(nn)
        vj.SetSteal(nn)
    end)
    Options.StealRarityFilter:OnChanged(function(nq)
        vj.SetRarityFilter(nq)
    end)
    Options.StealZoneFilter:OnChanged(function(ns)
        vj.SetZoneFilter(ns)
    end)
    Toggles.AutoPlantSeed:OnChanged(function(nu)
        vj.SetPlant(nu)
    end)
    Toggles.AutoSpawnBee:OnChanged(function(nw)
        vj.SetSpawnBee(nw)
    end)
    Toggles.AutoCollectHoney:OnChanged(function(ny)
        vj.SetCollectHoney(ny)
    end)
    Toggles.AutoSellHoney:OnChanged(function(nA)
        vj.SetSellHoney(nA)
    end)
    Toggles.AutoUpgradeTreadmill:OnChanged(function(nC)
        vj.SetUpgradeTreadmill(nC)
    end)
    Toggles.AutoGoTreadmill:OnChanged(function(nE)
        vj.SetGoTreadmill(nE)
    end)
    Toggles.AutoBuyTrails:OnChanged(function(nG)
        vj.SetBuyTrails(nG)
    end)
    Toggles.AutoClaimIndex:OnChanged(function(nI)
        vj.SetClaimIndex(nI)
    end)
    Toggles.SeedEsp:OnChanged(function(nK)
        vj.SetSeedEsp(nK)
    end)
    Options.EspRarityFilter:OnChanged(function(nM)
        vj.SetEspRarityFilter(nM)
    end)
    vj.SetRarityFilter(Options.StealRarityFilter.Value)
    vj.SetZoneFilter(Options.StealZoneFilter.Value)
    vj.SetEspRarityFilter(Options.EspRarityFilter.Value)
end
local function fn1103(dJ, dK)
    local zo = dK ~= ""
    local zp = type(dK) == "string" and zo
    if zp then
        local zo_1 = {}
        for i, v in ipairs(dJ) do
            if v.nestId == dK then
                table.insert(zo_1, v)
            end
        end
        if #zo_1 > 0 then
            return uP(zo_1)
        end
        return uP(dJ)
    end
    return uP(dJ)
end
local function fn1130(i8)
    local Enabled = State.Enabled
    local Dw = i8 and true or false
    Enabled.UpgradeTreadmill = Dw
    if State.Enabled.UpgradeTreadmill then
        uU("UpgradeTreadmill", 1.25, uJ)
    else
        local Gens = State.Gens
        Gens.UpgradeTreadmill = Gens.UpgradeTreadmill + 1
    end
end
local function fn1148()
    local BD = vE()
    if not BD then
        return "No plot"
    elseif vD:GetAttribute("TreadmillOwned") ~= true then
        return "No treadmill"
    else
        local RunPart = BD:FindFirstChild("RunPart", true)
        local BD_1 = RunPart and RunPart:IsA("BasePart")
        if not BD_1 then
            return "No RunPart"
        end
        local BJ = if vD:GetAttribute("TrainingMounted") == true then 1 else 0
        if BJ == 1 then
            local BD_2 = vt()
            if BD_2 then
                local BF = Vector3.new(BD_2.Position.X - RunPart.Position.X, 0, BD_2.Position.Z - RunPart.Position.Z)
                if BF.Magnitude > 4 then
                    u2(RunPart.CFrame * CFrame.new(0, 3, 0))
                end
            end
            return "Mounted"
        end
        u2(RunPart.CFrame * CFrame.new(0, 3, 0))
        return "Mounting"
    end
end
local function fn1187(bz)
    if not vI(State.RarityFilter) then
        return true
    end
    return State.RarityFilter[bz] == true
end
local function fn1195()
    gethui = vz
end
local function fn1201()
    local Cj = ud("ClaimAllIndexRewards")
    if Cj then
        return "Claimed"
    end
    return "Claim failed"
end
local function fn1208(L)
    local wL = typeof(cloneref) == "function" and typeof(L) == "Instance"
    if wL then
        return cloneref(L)
    end
    return L
end
local function fn1221()
    if uc() then
        return false
    end
    local zU = vt()
    if not zU then
        return false
    end
    for i, player in ipairs(t8.Players:GetPlayers()) do
        if player ~= vD then
            local attr = player:GetAttribute("Carrying")
            local zW = attr ~= ""
            local zX = type(attr) == "string" and zW
            if zX then
                local Character = player.Character
                local zX_1 = Character and Character:FindFirstChild("HumanoidRootPart")
                local zW_2 = zX_1
                if zX_1 then
                    zX_1 = (zW_2.Position - zU.Position).Magnitude <= ve + 2
                end
                if zX_1 then
                    local zW_3 = vi(attr)
                    local zV_1 = not zW_3 or u8(zW_3)
                    if zV_1 then
                        uB("StealAttempt")
                        return true
                    end
                end
            end
        end
    end
    return false
end
local function fn1274()
    vm(uf.Player)
    local MovementGroup = uf.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = uf.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(mV)
        vj.SetWalkSpeedEnabled(mV)
    end)
    Options.WalkSpeed:OnChanged(function(mZ)
        vj.SetWalkSpeedValue(mZ)
    end)
    Toggles.InfJump:OnChanged(function(m0)
        vj.SetInfJump(m0)
    end)
    Toggles.NoClip:OnChanged(function(m2)
        vj.SetNoClip(m2)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(m4)
        vj.SetInstantProximityPrompt(m4)
    end)
    Toggles.Fly:OnChanged(function(m6)
        vj.SetFly(m6)
    end)
    Options.FlySpeed:OnChanged(function(m8)
        vj.SetFlySpeed(m8)
    end)
end
local function fn1329()
    return not vj.Unloaded
end
local function fn1375(jg)
    local Enabled = State.Enabled
    local DE = jg and true or false
    Enabled.SellHoney = DE
    if State.Enabled.SellHoney then
        uU("SellHoney", 1, uV)
    else
        local Gens = State.Gens
        Gens.SellHoney = Gens.SellHoney + 1
    end
end
local function fn1423()
    local Ao_2
    local An_6, An_8
    local Am_1, Am_2, Am_5, Am_6, Am_7, Am_8, Am_11, Am_12, Am_13, Am_14
    local Al_1, Al_3, Al_7, Al_9, Al_11, Al_13, Al_15, Al_16, Al_17, Al_19, Al_21, Al_23
    if uc() then
        Al_1, Am_1 = ue()
        local Al_2 = Al_1 and "Banked"
        local As_1 = if Al_2 then 1 else 0
        local Aq = 1347 * As_1 + 1557 * (1 - As_1)
        local Ar = 1548 * As_1 + 1065 * (1 - As_1)
        if not ((Aq * 2241 + Ar * 511 + Aq * Ar) % 16777213 == 5894811) then
            Al_2 = "Bank failed"
        end
        return Am_1 or Al_2
    elseif os.clock() - State.LastStealAt < u9 then
        return "Cooldown"
    elseif vv() then
        local As_2 = if va(1) then 1 else 0
        if As_2 == 1 then
            State.LastStealAt = os.clock()
            Al_3, Am_2 = ue()
            return Am_2 or "Banked"
        end
        local Al_5 = uK()
        local Am_3 = nil
        if #Al_15 == 0 then
            local An_3 = vw()
            if not An_6 then
                return "No zones"
            elseif not um(An_6) then
                return "No character"
            else
                local Ao_1 = not uY() or not State.Enabled.Steal
                if Ao_2 then
                    return "Stopped"
                end
                local Al_6 = uu(1.15)
                if #Al_16 == 0 then
                    return "Streaming " .. An_3
                end
                local An_4 = vH(Al_6, An_3)
                if not An_8 then
                    return "No target"
                elseif not t9(An_8) then
                    if uc() then
                        State.LastStealAt = os.clock()
                        Al_7, Am_5 = ue()
                        return Am_5 or "Banked"
                    end
                    return "Grab failed"
                else
                    State.LastStealAt = os.clock()
                    Al_9, Am_6 = ue()
                    local Al_10 = Am_6 or "Banked " .. tostring(An_4.eggKey)
                    return Al_10
                end
            end
        else
            local An_5 = vH(Al_5, Am_3)
            if not An_8 then
                return "No target"
            elseif not t9(An_8) then
                if uc() then
                    State.LastStealAt = os.clock()
                    Al_11, Am_7 = ue()
                    return Am_7 or "Banked"
                end
                return "Grab failed"
            else
                State.LastStealAt = os.clock()
                Al_13, Am_8 = ue()
                local Al_14 = Am_8 or "Banked " .. tostring(An_5.eggKey)
                return Al_14
            end
        end
    else
        Al_15 = uK()
        local Am_9 = nil
        if #Al_15 == 0 then
            An_6 = vw()
            if not An_6 then
                return "No zones"
            elseif not um(An_6) then
                return "No character"
            else
                Ao_2 = not uY() or not State.Enabled.Steal
                if Ao_2 then
                    return "Stopped"
                end
                Al_16 = uu(1.15)
                if #Al_16 == 0 then
                    return "Streaming " .. An_6
                end
                local An_7 = vH(Al_16, An_6)
                if not An_8 then
                    return "No target"
                elseif not t9(An_8) then
                    if uc() then
                        State.LastStealAt = os.clock()
                        Al_17, Am_11 = ue()
                        return Am_11 or "Banked"
                    end
                    return "Grab failed"
                else
                    State.LastStealAt = os.clock()
                    Al_19, Am_12 = ue()
                    local Al_20 = Am_12 or "Banked " .. tostring(An_7.eggKey)
                    return Al_20
                end
            end
        else
            An_8 = vH(Al_15, Am_9)
            if not An_8 then
                return "No target"
            elseif not t9(An_8) then
                if uc() then
                    State.LastStealAt = os.clock()
                    Al_21, Am_13 = ue()
                    return Am_13 or "Banked"
                end
                return "Grab failed"
            else
                State.LastStealAt = os.clock()
                Al_23, Am_14 = ue()
                local Al_24 = Am_14 or "Banked " .. tostring(An_8.eggKey)
                return Al_24
            end
        end
    end
end
local function fn1450(jk)
    local Enabled = State.Enabled
    local DX = jk and true
    local D0 = if DX then 1 else 0
    local DZ = 3611 * D0 + 1539 * (1 - D0)
    local D_ = 1910 * D0 + 2562 * (1 - D0)
    if not ((DZ * 2061 + D_ * 321 + DZ * D_) % 16777213 == 14952391) then
        DX = false
    end
    Enabled.SeedEsp = DX
    if State.Enabled.SeedEsp then
        uU("SeedEsp", 0.75, uk)
    else
        local Gens = State.Gens
        Gens.SeedEsp = Gens.SeedEsp + 1
        vy()
    end
end
local function fn1468(hH)
    if not vI(State.EspRarityFilter) then
        return true
    end
    return State.EspRarityFilter[hH] == true
end
local function fn1477(jl)
    State.RarityFilter = vq(jl)
end
t8 = nil
t9 = nil
uc = nil
ud = nil
ue = nil
uf = nil
uh = nil
uk = nil
ul = nil
um = nil
un = nil
Options = nil
uq = nil
Rarities = nil
Toggles = nil
uu = nil
Plants = nil
uw = nil
uz = nil
Seeds = nil
uB = nil
uC = nil
uE = nil
uG = nil
Library = nil
uI = nil
uJ = nil
uK = nil
uL = nil
uM = nil
uN = nil
uP = nil
uR = nil
uS = nil
uT = nil
uU = nil
uV = nil
local PlantPlacement, ub, ug, ui, uj, up, ut, ux, SaveManager, ThemeManager, Net, uO, uQ
uX = nil
uY = nil
u_ = nil
u0 = nil
u1 = nil
u2 = nil
u3 = nil
u4 = nil
u5 = nil
u6 = nil
u8 = nil
u9 = nil
va = nil
vb = nil
vc = nil
ve = nil
vf = nil
State = nil
vh = nil
vi = nil
vj = nil
vk = nil
vl = nil
vm = nil
vn = nil
vo = nil
vp = nil
vq = nil
vr = nil
vs = nil
vt = nil
vu = nil
vv = nil
vw = nil
vy = nil
vz = nil
vB = nil
vC = nil
vD = nil
vE = nil
Order = nil
vH = nil
vI = nil
local uW, uZ, u7, vd, vx, vA, vG
if not game:IsLoaded() then
    game.Loaded:Wait()
end
t8, vD, vz = nil, nil, nil
t8 = {}
t8.Players = game:GetService("Players")
t8.ReplicatedStorage = game:GetService("ReplicatedStorage")
t8.RunService = game:GetService("RunService")
t8.UserInputService = game:GetService("UserInputService")
t8.VirtualUser = game:GetService("VirtualUser")
t8.HttpService = game:GetService("HttpService")
t8.TeleportService = game:GetService("TeleportService")
t8.Workspace = game:GetService("Workspace")
t8.Lighting = game:GetService("Lighting")
t8.Stats = game:GetService("Stats")
t8.CoreGui = game:GetService("CoreGui")
t8.ProximityPromptService = game:GetService("ProximityPromptService")
vD = t8.Players.LocalPlayer
if not vD and 6 and (not t8 or vD) and (not vz or vD or false) and not (not vD and 6 and (not t8 or vD) and (not vz or vD or false)) then
    vD = fn783
else
    vz = fn783
end
if getgenv then
    getgenv().gethui = vz
end
vj, State, uL, Net, Seeds, Plants, Rarities, ul, uh, PlantPlacement, Order, vB, Hf_13, u5, uY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1195)
local function Hf_20(j)
    local wC
    local wE
    local wD
    wC = nil
    wD = nil
    wE = nil
    local wF = j ~= ""
    local wG = type(j) == "string" and wF
    assert(wG, "Atypical is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    wC = getgenv()
    assert(type(wC) == "table", "getgenv did not return a table")
    local wF_1 = wC[j]
    if wF_1 ~= nil then
        local wG_1 = type(wF_1) == "table" and type(wF_1.Unload) == "function"
        assert(wG_1, "Namespace is occupied")
        wF_1.Unload()
        assert(wC[j] == nil, "Previous instance did not release its namespace")
    end
    wD = {}
    wE = { State = {}, Unloaded = false }
    wE.Track = function(p)
        assert(type(p) == "function", "Cleanup must be callable")
        if wE.Unloaded then
            p()
        else
            table.insert(wD, p)
        end
        return p
    end
    wE.Unload = function()
        local ws_1
        local wr_1
        if wE.Unloaded then
            return
        end
        wE.Unloaded = true
        local wp = {}
        local wz = #wD
        local wy = -1
        while false and wz <= 1 or true and wz >= 1 do
            local wA = wz
            local wq_1 = table.remove(wD, wA)
            wr_1, ws_1 = pcall(wq_1)
            if not wr_1 then
                table.insert(wp, tostring(ws_1))
            end
            wz += wy
        end
        table.clear(wE.State)
        if #wp > 0 then
            error("Cleanup incomplete: " .. table.concat(wp, "; "), 0)
        end
        if wC[j] == wE then
            wC[j] = nil
        end
    end
    wC[j] = wE
    return wE
end
local function Hf_15(C, D)
    local wJ = type(C) == "table" and type(C.Track) == "function"
    assert(wJ, "FeatureAPI required")
    local wJ_1 = type(D) == "table" and type(D.OnUnload) == "function"
    assert(wJ_1, "UI library required")
    assert(type(D.Unload) == "function", "UI unload required")
    C.Track(function()
        if not D.Unloaded then
            D:Unload()
        end
    end)
    D:OnUnload(function()
        C.Unload()
    end)
end
vj = Hf_20("OuroborosStealASeedForBees")
State = vj.State
if uh and uh and (uh and not State) and ((State or not State) and (not uh or uh)) and ((not uh and State or (not State or State)) and (uh or State or not State and not uh)) or not (uh and uh and (uh and not State) and ((State or not State) and (not uh or uh)) and ((not uh and State or (not State or State)) and (uh or State or not State and not uh))) then
    Hf_13 = fn1208
else
    uh = fn1208
end
u5 = fn738
uY = fn1329
local Hf_18 = Hf_13(t8.ReplicatedStorage)
uL = Hf_13(t8.Workspace)
local Hf_11 = Hf_18:WaitForChild("Shared", 30)
assert(Hf_11, "Shared missing")
Net = require(Hf_11:WaitForChild("Net"))
Seeds = require(Hf_11.Configs.Seeds)
Plants = require(Hf_11.Configs.Plants)
Rarities = require(Hf_11.Configs.Rarities)
if ((not State or Plants) and (uL and State) or not State and Plants and (vB or uL)) and not ((not State or Plants) and (uL and State) or not State and Plants and (vB or uL)) then
    Hf_11 = require(uh.Configs.Trails)
    ul = require(uh.Configs.Training)
else
    ul = require(Hf_11.Configs.Trails)
    uh = require(Hf_11.Configs.Training)
end
local Hf_7 = require(Hf_11.Configs.Game)
PlantPlacement = require(Hf_11.Lib.PlantPlacement)
Order = Rarities.Order
vB = {}
local v2 = 1
while v2 <= 8 do
    local v3 = v2
    table.insert(vB, "Zone-" .. tostring(v3))
    v2 += 1
end
vr, vo, vk = nil, nil, nil
table.insert(vB, "Meadow")
vr = {
    ["Zone-1"] = Vector3.new(-70.8, 8, 410),
    ["Zone-2"] = Vector3.new(-227.05, 9, 577.04),
    ["Zone-3"] = Vector3.new(-443.46, 9, 412.68),
    ["Zone-4"] = Vector3.new(-766.39, 9, 582.67),
    ["Zone-5"] = Vector3.new(-1155.45, 9, 412.66),
    ["Zone-6"] = Vector3.new(-1632.87, 9, 582.66),
    ["Zone-7"] = Vector3.new(-2083.28, 9, 412.66),
    ["Zone-8"] = Vector3.new(-2517.11, 9, 582.66),
    Meadow = Vector3.new(-71.25, 9.23, 409.15)
}
vo = {
    ["Plot-1"] = Vector3.new(88.600875854492, 6.3648567199707, 290.64050292969),
    ["Plot-2"] = Vector3.new(88.600875854492, 6.3648567199707, 398.17266845703),
    ["Plot-3"] = Vector3.new(88.600875854492, 6.3648567199707, 505.70483398438),
    ["Plot-4"] = Vector3.new(88.600875854492, 6.3648567199707, 613.23699951172),
    ["Plot-5"] = Vector3.new(88.600875854492, 6.3648567199707, 720.76916503906)
}
vk = {
    ["Plot-1"] = Vector3.new(150.77114868164, 2.405499458313, 290.91735839844),
    ["Plot-2"] = Vector3.new(150.77114868164, 2.405499458313, 398.44952392578),
    ["Plot-3"] = Vector3.new(150.77114868164, 2.405499458313, 505.98168945312),
    ["Plot-4"] = Vector3.new(150.77114868164, 2.405499458313, 613.51385498047),
    ["Plot-5"] = Vector3.new(150.77114868164, 2.405499458313, 721.04602050781)
}
Hf_18 = Hf_7.Carry and Hf_7.Carry.StealRange
Hf_11 = Hf_18 or 8
ve = nil
ve = Hf_11
local Hf_6 = Hf_7.Carry and Hf_7.Carry.StealCooldown
Hf_11 = Hf_6 or 1.5
u9 = nil
u9 = Hf_11
Hf_6 = Hf_7.Base and Hf_7.Base.SafeRadius
Hf_11 = Hf_6 or 22
u1 = nil
u1 = Hf_11
State.Enabled = {
    Steal = false,
    Plant = false,
    CollectHoney = false,
    UpgradeTreadmill = false,
    GoTreadmill = false,
    SellHoney = false,
    BuyTrails = false,
    ClaimIndex = false,
    SpawnBee = false,
    SeedEsp = false
}
State.RarityFilter = {}
State.ZoneFilter = {}
for i, v in ipairs(Order) do
    State.RarityFilter[v] = true
end
for i, v in ipairs(vB) do
    State.ZoneFilter[v] = true
end
State.EspRarityFilter = {}
for i, v in ipairs(Order) do
    State.EspRarityFilter[v] = true
end
uB, ud, vt, vd, u2, uN, vC, vi, uS, uz, vI, vq, u8, uT, uE, vE, vc, uR, uc, vA, u6, uw, vu, vh, ue, uK, uP, vH, vf, uX, uI, t9, uu, vv, um, vw, va, uM, uC, u_, vx, u0, uq, uJ, vs, uV, uG, vl, un, vG, vp, vy, vn, uk, uU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
State.Gens = {
    Steal = 0,
    Plant = 0,
    CollectHoney = 0,
    UpgradeTreadmill = 0,
    GoTreadmill = 0,
    SellHoney = 0,
    BuyTrails = 0,
    ClaimIndex = 0,
    SpawnBee = 0,
    SeedEsp = 0
}
State.EspFolder = nil
State.LastStealAt = 0
State.StealZoneCursor = 0
State.LastSpawnBeeAt = 0
State.LastSpawnBeeId = nil
State.BasePosition = nil
State.BasePlotName = nil
State.MeadowGeneration = nil
State.LastBankWarpAt = 0
uB = function(av, ...)
    return pcall(function(...)
        Net:FireServer(av, ...)
    end, ...)
end
ud = function(aA, ...)
    return pcall(function(...)
        return Net:InvokeServer(aA, ...)
    end, ...)
end
vt = fns.fn92
vd = fn779
u2 = fns.fn282
uN = function(aR)
    if typeof(aR) ~= "Vector3" then
        return
    end
    pcall(function()
        if u5(vD.RequestStreamAroundAsync) then
            task.defer(function()
                pcall(function()
                    vD:RequestStreamAroundAsync(aR)
                end)
            end)
        end
    end)
end
vC = fn631
if (not vf and not vq or (not vf or not vq)) and ((vf or not vq) and (not vf or not vq)) and not ((not vf and not vq or (not vf or not vq)) and ((vf or not vq) and (not vf or not vq))) then
    vy = fns.fn31
else
    vi = fns.fn31
end
uS = fns.fn330
uz = fn1029
vI = fns.fn52
vq = fn1023
u8 = fn1187
uT = fn397
uE = fns.fn116
vE = fn535
vc = fn508
uR = fns.fn259
uc = fns.fn75
vA = fns.fn48
u6 = fn460
uw = fns.fn348
vu = fn613
vh = fn634
ue = fn878
uK = fn774
uP = fn963
vH = fn1103
vf = fn581
uX = fn1034
uI = fn985
t9 = fns.fn291
uu = fn465
vv = fn1221
um = fns.fn110
vw = fns.fn319
va = fns.fn253
uM = fn1423
uC = fn881
u_ = fn730
vx = fn378
u0 = function()
    local Ba
    local Bb
    local Bf_2, Bf_4
    local Bc_1, attr
    local Be_3, Be_5, Be_6, Be_7, Be_8
    local Bd_1, Bd_8, Bd_9, Bd_11, Bd_13
    if uc() then
        Bc_1, Bd_1 = ue()
        if not Bc_1 then
            return Bd_1 or "Bank failed"
        end
        Ba = vA()
        if not Ba then
            return "No banked seed"
        end
        local attr2 = Ba:GetAttribute("EggId")
        if attr == nil then
            return "Missing EggId"
        end
        Bb = vd()
        if Bd_8 then
            pcall(function()
                Bb:EquipTool(Ba)
            end)
            task.wait(0.1)
        end
        local Bd_3 = vE()
        if not Bd_9 then
            return "No plot"
        end
        local Be_1 = vx(Bd_3)
        if #Be_5 == 0 then
            return "No unlocked zones"
        end
        local Bd_4 = Be_1[1]
        local Be_2 = PlantPlacement.Dirt(Bd_4)
        if not Be_6 then
            return "No dirt"
        end
        local Bf_1 = Vector3.new((math.random() - 0.5) * 6, 0, (math.random() - 0.5) * 6)
        local Bg_1 = Be_2.Position + Bf_1
        if PlantPlacement.Constrain then
            Be_3, Bf_2 = pcall(PlantPlacement.Constrain, Bd_4, Bg_1)
            if Bd_11 then
                Bg_1 = Bf_2
            end
        end
        vt()
        if Be_8 then
            u2(CFrame.new(Bg_1 + Vector3.new(0, 4, 0)))
            task.wait(0.15)
        end
        local Bd_7 = not uY() or not State.Enabled.Plant
        if Bd_13 then
            return "Stopped"
        end
        uB("PlaceEgg", attr2, Bg_1)
        return "Planted"
    end
    Ba = vA()
    if not Ba then
        return "No banked seed"
    end
    attr = Ba:GetAttribute("EggId")
    if attr == nil then
        return "Missing EggId"
    end
    Bb = vd()
    Bd_8 = Bb and Ba.Parent == vD.Backpack
    if Bd_8 then
        pcall(function()
            Bb:EquipTool(Ba)
        end)
        task.wait(0.1)
    end
    Bd_9 = vE()
    if not Bd_9 then
        return "No plot"
    end
    Be_5 = vx(Bd_9)
    if #Be_5 == 0 then
        return "No unlocked zones"
    end
    local Bd_10 = Be_5[1]
    Be_6 = PlantPlacement.Dirt(Bd_10)
    if not Be_6 then
        return "No dirt"
    end
    local Bf_3 = Vector3.new((math.random() - 0.5) * 6, 0, (math.random() - 0.5) * 6)
    local Bg_2 = Be_6.Position + Bf_3
    if PlantPlacement.Constrain then
        Be_7, Bf_4 = pcall(PlantPlacement.Constrain, Bd_10, Bg_2)
        Bd_11 = Be_7 and typeof(Bf_4) == "Vector3"
        if Bd_11 then
            Bg_2 = Bf_4
        end
    end
    local Bd_12 = vt()
    Be_8 = Bd_12 and (Bd_12.Position - Bg_2).Magnitude > 70
    if Be_8 then
        u2(CFrame.new(Bg_2 + Vector3.new(0, 4, 0)))
        task.wait(0.15)
    end
    Bd_13 = not uY() or not State.Enabled.Plant
    if Bd_13 then
        return "Stopped"
    end
    uB("PlaceEgg", attr, Bg_2)
    return "Planted"
end
uq = fn621
uJ = fn1048
vs = fn1148
uV = fn407
uG = fn421
vl = fn513
un = fn1201
vj.TeleportToGarden = fns.fn316
uw()
vG = fn1468
vp = function()
    local Cv
    Cv = {}
    local function Cw(hN, hO)
        if not hN:IsA("Model") then
            return
        end
        local attr = hN:GetAttribute("EggKey")
        local Cn = vi(attr)
        local Co = not Cn or not vG(Cn)
        if Co then
            return
        end
        local Co_1 = hN.PrimaryPart or hN:FindFirstChildWhichIsA("BasePart", true)
        if not Co_1 then
            return
        end
        local insert = table.insert
        local Cq = hO or hN:GetAttribute("NestId") or hN.Name
        insert(Cv, { egg = hN, part = Co_1, eggKey = attr, nestId = Cq, rarity = Cn })
    end
    local Eggs = uL:FindFirstChild("_Eggs")
    if Eggs then
        for i, child in ipairs(Eggs:GetChildren()) do
            Cw(child, child:GetAttribute("NestId"))
        end
    end
    local MeadowStock = uL:FindFirstChild("_MeadowStock")
    if MeadowStock then
        for i, child in ipairs(MeadowStock:GetChildren()) do
            if child:GetAttribute("Available") ~= false then
                Cw(child, "Meadow")
            end
        end
    end
    return Cv
end
vy = fn695
vn = function()
    local screenGui
    if State.EspFolder and State.EspFolder.Parent then
        return State.EspFolder
    end
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosSeedESP"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 50
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local CR_1 = pcall(function()
        local CN = vD:FindFirstChild("PlayerGui") or t8.CoreGui
        screenGui.Parent = CN
    end)
    if not CR_1 or not screenGui.Parent then
        pcall(function()
            screenGui.Parent = t8.CoreGui
        end)
    end
    State.EspFolder = screenGui
    vj.Track(function()
        if screenGui.Parent then
            screenGui:Destroy()
        end
        if State.EspFolder == screenGui then
            State.EspFolder = nil
        end
    end)
    return screenGui
end
uk = fn712
uU = function(iK, iL, iM)
    State.Gens[iK] += 1
    local iO = State.Gens[iK]
    task.spawn(function()
        while true do
            local Dd = uY() and State.Enabled[iK] and State.Gens[iK] == iO
            if Dd then
                pcall(iM)
                task.wait(iL)
                continue
            end
            break
        end
    end)
end
vj.SetSteal = fns.fn136
vj.SetPlant = fn576
vj.SetCollectHoney = fn884
vj.SetUpgradeTreadmill = fn1130
vj.SetGoTreadmill = fn469
vj.SetSellHoney = fn1375
vj.SetBuyTrails = fn1015
vj.SetClaimIndex = fn965
vj.SetSpawnBee = fns.fn246
vj.SetSeedEsp = fn1450
vj.SetRarityFilter = fn1477
vj.SetZoneFilter = fn990
vj.SetEspRarityFilter = fns.fn87
vj.Track(fn992)
Hf_11 = u5(fireproximityprompt)
Hf_18 = u5(setclipboard) or u5(toclipboard)
Hf_13 = { fireproximityprompt = Hf_11, setclipboard = Hf_18, identifyexecutor = u5(identifyexecutor) }
Hf_20 = {}
if not Hf_13.fireproximityprompt then
    Hf_11 = 5
    repeat
        if Hf_11 * 123269727 + 12 + 7 >= Hf_11 * 123269727 + 12 + 7 + 5 then
            table.insert(Hf_20, "fireproximityprompt")
        else
            table.insert(Hf_20, "fireproximityprompt")
        end
        Hf_11 = (Hf_11 + 3) % 8
    until (Hf_11 * 1 + 6) % 8 == 6
end
Hf_11 = #Hf_20 == 0 and "(ready)"
Hf_18 = Hf_11
if not Hf_18 then
    Hf_11 = 0
    repeat
        local IJ = bit32.rrotate(bit32.bxor(bit32.lrotate(Hf_11, 2), string.byte(tostring(Hf_11))), 6)
        if bit32.bxor(bit32.lrotate(bit32.bxor(IJ, 417004877), 10), 1811231843) == bit32.lrotate(IJ, 10) then
            Hf_18 = "(missing " .. table.concat(Hf_20, ", ") .. ")"
        else
            Hf_20 = "(missing " .. table.concat(Hf_18, ", ") .. ")"
        end
        Hf_11 = (Hf_11 + 1) % 4
    until (Hf_11 * 3 + 3) % 4 == 2
end
u7, u3, uZ, uW, uO, Library, ThemeManager, SaveManager, Toggles, Options, uf, ut, up, uj, ug, ux, ui, ub, vm, vb, u4, uQ, Hf_6, Hf_17 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not Hf_17 and not Hf_17 and (not Hf_6 or not Hf_6) and (not Hf_6 or not Hf_6 or (not Hf_6 or Hf_17)) or (not Hf_6 and not Hf_6 and (Hf_17 and not Hf_17) or (not Hf_6 or not Hf_17) and (Hf_17 and not Hf_6))) and ((Hf_6 or Hf_6) and (Hf_6 or not Hf_6) or (not Hf_17 or not Hf_6 or Hf_6 and Hf_17) or (not Hf_6 and not Hf_6 and (Hf_17 or not Hf_17) or (Hf_6 or Hf_17) and (Hf_6 or Hf_17))) and not ((not Hf_17 and not Hf_17 and (not Hf_6 or not Hf_6) and (not Hf_6 or not Hf_6 or (not Hf_6 or Hf_17)) or (not Hf_6 and not Hf_6 and (Hf_17 and not Hf_17) or (not Hf_6 or not Hf_17) and (Hf_17 and not Hf_6))) and ((Hf_6 or Hf_6) and (Hf_6 or not Hf_6) or (not Hf_17 or not Hf_6 or Hf_6 and Hf_17) or (not Hf_6 and not Hf_6 and (Hf_17 or not Hf_17) or (Hf_6 or Hf_17) and (Hf_6 or Hf_17)))) then
else
    u7 = Hf_18
end
if false and (not vb or up) or SaveManager and vb and (vb and SaveManager) or not (false and (not vb or up) or SaveManager and vb and (vb and SaveManager)) then
    u3 = "https://discord.gg/synapsex"
end
uZ = "https://rscripts.net/@Ouroboros"
uW = "https://ouroboros-hub-rbx.web.app/"
local vW = "v0.7"
uO = "Steal A Seed For Bees"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
Hf_15(vj, Library)
Hf_7 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = u3, Copyable = true }, "|", uO, "|", vW },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
uf = {}
uf.Info = Hf_7:AddTab("Info", "info")
uf.Main = Hf_7:AddTab("Main", "gamepad-2")
uf.Player = Hf_7:AddTab("Player", "person-standing")
uf.Settings = Hf_7:AddTab("Settings", "settings")
ub = fn705
vm = fn521
vb = fn385
u4 = fn888
uQ = fn1047
ut = "#7fd47f"
up = "#6ec1ff"
uj = "#e8a34d"
ug = "#8b93a3"
Hf_6 = function()
    local El
    local En
    El = nil
    En = nil
    local Label, Label2, Ep, Label3, Er, Es
    Es = "Unknown"
    pcall(function()
        local Eb_1
        local Ea_1
        if u5(identifyexecutor) then
            Eb_1, Ea_1 = identifyexecutor()
            local Ec = Eb_1 ~= ""
            local Ed = type(Eb_1) == "string" and Ec
            if Ed then
                local Ec_1 = type(Ea_1) == "string" and Ea_1 ~= "" and Eb_1 .. " " .. Ea_1
                Es = Ec_1 or Eb_1
            end
        end
    end)
    En = os.clock()
    Er = function()
        local Ef = math.floor(os.clock() - En)
        if Ef < 60 then
            return Ef .. "s"
        elseif Ef < 3600 then
            return string.format("%dm %ds", Ef // 60, Ef % 60)
        else
            return string.format("%dh %dm", Ef // 3600, Ef % 3600 // 60)
        end
    end
    local UserGroup = uf.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = vD, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(uQ("User", vD.DisplayName .. " @" .. vD.Name, ut), true)
    UserGroup:AddLabel(uQ("UserId", tostring(vD.UserId), up), true)
    UserGroup:AddLabel(uQ("Executor", Es .. "  " .. u7, ut), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(uQ("Session", Er(), uj), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            ub(vD.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            ub("https://www.roblox.com/users/" .. tostring(vD.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = uf.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = u3,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = uf.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(uQ("Game", uO, up), true)
    Label2 = SessionGroup:AddLabel(uQ("Players", "0/0", ut), true)
    Ep = tostring(game.JobId)
    local Eu = #Ep > 18 and string.sub(Ep, 1, 18) .. "..."
    local Eu_1 = Eu or Ep
    SessionGroup:AddLabel(uQ("Job", Eu_1, ug), true)
    Label = SessionGroup:AddLabel(uQ("Ping", "0 ms", uj), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            t8.TeleportService:Teleport(game.PlaceId, vD)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            ub(Ep, "Copied Job ID")
        end
    })
    El = task.spawn(function()
        local Ei_1
        while true do
            local Eh = uY() and not Library.Unloaded
            local Eh_2
            if Eh then
                task.wait(1)
                local Eh_1 = Library.Unloaded or not uY()
                if Eh_1 then
                    break
                end
                Label3:SetText(uQ("Session", Er(), uj))
                Label2:SetText(uQ("Players", #t8.Players:GetPlayers() .. "/" .. tostring(t8.Players.MaxPlayers), ut))
                Eh_2, Ei_1 = pcall(function()
                    return math.floor(t8.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Eh_3 = Eh_2 and Ei_1 .. " ms" or "n/a"
                Label:SetText(uQ("Ping", Eh_3, uj))
                continue
            end
            break
        end
    end)
    vj.Track(function()
        pcall(task.cancel, El)
    end)
    local SocialsGroup = uf.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Discord",
        Func = function()
            ub(u3, "Copied Discord invite")
        end
    })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            ub(uZ, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            ub(uW, "Copied website")
        end
    })
end
ux = {
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    InfJump = false,
    NoClip = false,
    Fly = false,
    FlySpeed = 60,
    InstantPP = false,
    WalkSnapshots = {},
    NoClipSnapshots = {},
    FlyPlatformStand = nil,
    InfJumpConn = nil,
    NoClipConn = nil,
    FlyConn = nil,
    InstantConn = nil,
    InstantSnapshots = {}
}
local function Hf_3()
    local function lo(lp)
        if not lp then
            return
        end
        if ux.WalkSnapshots[lp] == nil then
            ux.WalkSnapshots[lp] = lp.WalkSpeed
        end
        if ux.WalkSpeedEnabled then
            lp.WalkSpeed = ux.WalkSpeed
        end
    end
    vj.SetWalkSpeedEnabled = function(ls)
        local Ez = ls and true or false
        ux.WalkSpeedEnabled = Ez
        local Ey_1 = vd()
        if not Ey_1 then
            return
        end
        if ux.WalkSpeedEnabled then
            lo(Ey_1)
        elseif ux.WalkSnapshots[Ey_1] ~= nil then
            Ey_1.WalkSpeed = ux.WalkSnapshots[Ey_1]
        end
    end
    vj.SetWalkSpeedValue = function(lz)
        ux.WalkSpeed = lz
        if ux.WalkSpeedEnabled then
            local EB = vd()
            if EB then
                EB.WalkSpeed = lz
            end
        end
    end
    vj.SetInfJump = function(lD)
        local EN = lD and true or false
        ux.InfJump = EN
        if ux.InfJumpConn then
            ux.InfJumpConn:Disconnect()
            ux.InfJumpConn = nil
        end
        if not ux.InfJump then
            return
        end
        ux.InfJumpConn = t8.UserInputService.JumpRequest:Connect(function()
            local EG = not uY() or not ux.InfJump
            if EG then
                return
            end
            local EG_1 = vd()
            if EG_1 then
                EG_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
        vj.Track(function()
            if ux.InfJumpConn then
                ux.InfJumpConn:Disconnect()
                ux.InfJumpConn = nil
            end
        end)
    end
    vj.SetNoClip = function(lR)
        local E_ = lR and true or false
        ux.NoClip = E_
        if ux.NoClipConn then
            ux.NoClipConn:Disconnect()
            ux.NoClipConn = nil
        end
        local Character = vD.Character
        if not ux.NoClip then
            for k, v in pairs(ux.NoClipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(ux.NoClipSnapshots)
            return
        end
        local function EY(l_)
            local EP = l_:IsA("BasePart") and ux.NoClipSnapshots[l_] == nil
            if EP then
                ux.NoClipSnapshots[l_] = l_.CanCollide
                l_.CanCollide = false
            end
        end
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                EY(descendant)
            end
            ux.NoClipConn = Character.DescendantAdded:Connect(function(l4)
                if ux.NoClip then
                    EY(l4)
                end
            end)
        end
    end
    vj.SetFly = function(l7)
        local Fo = l7 and true or false
        ux.Fly = Fo
        if ux.FlyConn then
            ux.FlyConn:Disconnect()
            ux.FlyConn = nil
        end
        local Fn_1 = vd()
        vt()
        if not ux.Fly then
            if Fn_1 and ux.FlyPlatformStand ~= nil then
                Fn_1.PlatformStand = ux.FlyPlatformStand
            end
            ux.FlyPlatformStand = nil
            return
        end
        if Fn_1 then
            ux.FlyPlatformStand = Fn_1.PlatformStand
            Fn_1.PlatformStand = true
        end
        ux.FlyConn = t8.RunService.RenderStepped:Connect(function()
            local Fd = not uY() or not ux.Fly
            if Fd then
                return
            end
            if t8.UserInputService:GetFocusedTextBox() then
                return
            end
            local Fd_1 = vt()
            local CurrentCamera = uL.CurrentCamera
            if not (Fd_1 and CurrentCamera) then
                return
            end
            local Ff_1 = Vector3.zero
            if t8.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                Ff_1 += CurrentCamera.CFrame.LookVector
            end
            if t8.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                Ff_1 -= CurrentCamera.CFrame.LookVector
            end
            if t8.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                Ff_1 -= CurrentCamera.CFrame.RightVector
            end
            if t8.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                Ff_1 += CurrentCamera.CFrame.RightVector
            end
            local Fj = if t8.UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if Fj == 1 then
                Ff_1 += Vector3.yAxis
            end
            local Fj_1 = if t8.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if Fj_1 == 1 then
                Ff_1 -= Vector3.yAxis
            end
            if Ff_1.Magnitude > 0 then
                Fd_1.AssemblyLinearVelocity = Ff_1.Unit * ux.FlySpeed
            else
                Fd_1.AssemblyLinearVelocity = Vector3.zero
            end
        end)
    end
    vj.SetFlySpeed = function(mt)
        ux.FlySpeed = mt
    end
    vj.SetInstantProximityPrompt = function(mv)
        local FA
        local FC = mv and true or false
        ux.InstantPP = FC
        if ux.InstantConn then
            ux.InstantConn:Disconnect()
            ux.InstantConn = nil
        end
        local function FB_1()
            for k, v in pairs(ux.InstantSnapshots) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(ux.InstantSnapshots)
        end
        if not ux.InstantPP then
            FB_1()
            return
        end
        FA = function(mD)
            if not mD:IsA("ProximityPrompt") then
                return
            end
            if ux.InstantSnapshots[mD] == nil then
                ux.InstantSnapshots[mD] = {
                    HoldDuration = mD.HoldDuration,
                    MaxActivationDistance = mD.MaxActivationDistance,
                    RequiresLineOfSight = mD.RequiresLineOfSight
                }
            end
            mD.HoldDuration = 0
            mD.MaxActivationDistance = 50
            mD.RequiresLineOfSight = false
        end
        for i, descendant in ipairs(uL:GetDescendants()) do
            FA(descendant)
        end
        ux.InstantConn = uL.DescendantAdded:Connect(function(mI)
            if ux.InstantPP then
                FA(mI)
            end
        end)
    end
    vj.Track(function()
        vj.SetWalkSpeedEnabled(false)
        vj.SetInfJump(false)
        vj.SetNoClip(false)
        vj.SetFly(false)
        vj.SetInstantProximityPrompt(false)
    end)
    vD.CharacterAdded:Connect(function()
        task.wait(0.2)
        if not uY() then
            return
        end
        if ux.WalkSpeedEnabled then
            vj.SetWalkSpeedEnabled(true)
        end
        if ux.NoClip then
            vj.SetNoClip(true)
        end
        if ux.Fly then
            vj.SetFly(true)
        end
    end)
end
Hf_17 = fn1274
ui = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    AfkCount = 0,
    PausedConn = nil,
    ReconnectConns = {},
    RenderWas = nil,
    FpsSnapshots = {},
    FpsConn = nil
}
Hf_13 = function()
    local function nQ()
        if not uL.CurrentCamera then
            return false
        end
        local FR_1 = not u5(t8.VirtualUser.CaptureController) or not u5(t8.VirtualUser.ClickButton2)
        if FR_1 then
            return false
        end
        local FR_2 = pcall(function()
            t8.VirtualUser:CaptureController()
            t8.VirtualUser:ClickButton2(Vector2.new())
        end)
        if FR_2 then
            ui.AfkCount = ui.AfkCount + 1
        end
        return FR_2
    end
    vj.SetAntiAfk = function(n2)
        local FZ = n2 and true or false
        ui.AntiAfk = FZ
        if ui.AfkConn then
            ui.AfkConn:Disconnect()
            ui.AfkConn = nil
        end
        if ui.AfkTask then
            pcall(task.cancel, ui.AfkTask)
            ui.AfkTask = nil
        end
        if not ui.AntiAfk then
            return
        end
        ui.AfkConn = vD.Idled:Connect(function()
            local FT = uY() and ui.AntiAfk
            if FT then
                nQ()
            end
        end)
        ui.AfkTask = task.spawn(function()
            local FV = os.clock()
            while true do
                local FW = uY() and ui.AntiAfk
                if FW then
                    task.wait(1)
                    local FW_1 = not uY() or not ui.AntiAfk
                    if FW_1 then
                        break
                    end
                    if os.clock() - FV >= 60 then
                        FV = os.clock()
                        nQ()
                    end
                    continue
                end
                break
            end
        end)
    end
    vj.SetNoGameplayPaused = function(ol)
        local F1 = ol and true or false
        ui.NoGameplayPaused = F1
    end
    vj.SetAutoReconnect = function(on)
        local F9
        local Gb = on and true or false
        ui.AutoReconnect = Gb
        for i, v in ipairs(ui.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(ui.ReconnectConns)
        if not ui.AutoReconnect then
            return
        end
        F9 = function()
            local F3 = not uY() or not ui.AutoReconnect
            if F3 then
                return
            end
            task.wait(1)
            local F3_1 = not uY()
            local F7 = if F3_1 then 1 else 0
            local F5 = 5 * F7 + 2537 * (1 - F7)
            local F6 = 1710 * F7 + 2117 * (1 - F7)
            if not ((F5 * 44 + F6 * 3163 + F5 * F6) % 16777213 == 5417500) then
                F3_1 = not ui.AutoReconnect
            end
            if F3_1 then
                return
            end
            pcall(function()
                t8.TeleportService:Teleport(game.PlaceId, vD)
            end)
        end
        table.insert(ui.ReconnectConns, t8.TeleportService.TeleportInitFailed:Connect(function()
            if ui.AutoReconnect then
                F9()
            end
        end))
    end
    vj.SetDisable3D = function(oH)
        local Gn = oH and true or false
        ui.Disable3D = Gn
        pcall(function()
            t8.RunService:Set3dRenderingEnabled(not ui.Disable3D)
        end)
    end
    vj.SetFpsBoost = function(oM)
        local GJ
        local GL = oM and true or false
        ui.FpsBoost = GL
        if ui.FpsConn then
            ui.FpsConn:Disconnect()
            ui.FpsConn = nil
        end
        local function GK_1()
            for k, v in pairs(ui.FpsSnapshots) do
                local Gu = k
                if Gu and Gu.Parent then
                    for k, v in pairs(v) do
                        local GA = k
                        local GC = v
                        pcall(function()
                            Gu[GA] = GC
                        end)
                    end
                end
            end
            table.clear(ui.FpsSnapshots)
        end
        if not ui.FpsBoost then
            GK_1()
            return
        end
        GJ = function(oZ)
            if ui.FpsSnapshots[oZ] then
                return
            end
            local GD = oZ:IsA("ParticleEmitter") or oZ:IsA("Trail")
            local GH = if GD then 1 else 0
            local GF = 41 * GH + 1613 * (1 - GH)
            local GG = 2346 * GH + 3914 * (1 - GH)
            if not ((GF * 445 + GG * 3700 + GF * GG) % 16777213 == 8794631) then
                GD = oZ:IsA("Beam")
            end
            if not GD then
                GD = oZ:IsA("Fire")
            end
            local GH_1 = if GD then 1 else 0
            local GF_1 = 122 * GH_1 + 3683 * (1 - GH_1)
            local GG_1 = 3088 * GH_1 + 944 * (1 - GH_1)
            if not ((GF_1 * 937 + GG_1 * 118 + GF_1 * GG_1) % 16777213 == 855434) then
                GD = oZ:IsA("Smoke")
            end
            if not GD then
                GD = oZ:IsA("Sparkles")
            end
            if GD then
                ui.FpsSnapshots[oZ] = { Enabled = oZ.Enabled }
                oZ.Enabled = false
            elseif oZ:IsA("Explosion") then
                ui.FpsSnapshots[oZ] = { Visible = oZ.Visible }
                oZ.Visible = false
            end
        end
        for i, descendant in ipairs(uL:GetDescendants()) do
            GJ(descendant)
        end
        if ui.FpsSnapshots[t8.Lighting] == nil then
            ui.FpsSnapshots[t8.Lighting] = { GlobalShadows = t8.Lighting.GlobalShadows, FogEnd = t8.Lighting.FogEnd }
            t8.Lighting.GlobalShadows = false
        end
        ui.FpsConn = uL.DescendantAdded:Connect(function(o5)
            if ui.FpsBoost then
                GJ(o5)
            end
        end)
    end
    vj.Track(function()
        vj.SetAntiAfk(false)
        vj.SetAutoReconnect(false)
        vj.SetDisable3D(false)
        vj.SetFpsBoost(false)
    end)
end
local function vV()
    vm(uf.Settings)
    local MenuGroup = uf.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = uf.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(pi)
        vj.SetAntiAfk(pi)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(pl)
        vj.SetNoGameplayPaused(pl)
    end)
    Toggles.AutoReconnect:OnChanged(function(pn)
        vj.SetAutoReconnect(pn)
    end)
    Toggles.Disable3DRendering:OnChanged(function(pp)
        vj.SetDisable3D(pp)
    end)
    Toggles.FPSBoost:OnChanged(function(pr)
        vj.SetFpsBoost(pr)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(uf.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/StealASeedForBees")
    local G8_2 = SaveManager:BuildConfigSection(uf.Settings)
    if G8_2 then
        G8_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
        G8_2:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local GV_1
                local GU_1
                GU_1, GV_1 = pcall(function()
                    if u5(SaveManager.ExportConfig) then
                        return SaveManager:ExportConfig()
                    end
                    error("ExportConfig unavailable")
                end)
                local GW = GU_1 and type(GV_1) == "string"
                if GW then
                    ub(GV_1, "Copied config")
                else
                    Library:Notify("Export unavailable", 3)
                end
            end
        })
        G8_2:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local G4
                local G5 = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value
                local G5_1
                local G6 = G5 or ""
                local G6_1
                G4 = G6
                if G4 == "" then
                    Library:Notify("Paste a config first", 3)
                    return
                end
                G6_1, G5_1 = pcall(function()
                    local G3 = if u5(SaveManager.ImportConfig) then 1 else 0
                    if G3 == 1 then
                        SaveManager:ImportConfig(G4)
                    elseif u5(SaveManager.LoadConfigFromJSON) then
                        SaveManager:LoadConfigFromJSON(G4)
                    else
                        error("Import unavailable")
                    end
                end)
                if G6_1 then
                    Options.SaveManager_ImportSource:SetValue("")
                    Library:Notify("Imported config", 3)
                else
                    Library:Notify("Import failed", 3)
                end
            end
        })
    end
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
end
Hf_3()
Hf_13()
Hf_6()
fn1088()
Hf_17()
vV()
vj.SetAntiAfk(Toggles.AntiAfk.Value)
vj.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
if Toggles.HideUIOnStart.Value then
    pcall(function()
        Library:Toggle(false)
    end)
end
Hf_11 = 6
repeat
    local IN = bit32.rrotate(bit32.bxor(bit32.lrotate(Hf_11, 26), string.byte(tostring(Hf_11))), 13)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(IN, 2385465997), 3218747605), (bit32.bxor(bit32.band(IN, 1909501298), 435081974))), 3218747605), 435081974) == IN then
        Library:Notify("Steal A Seed For Bees v0.7 loaded", 4)
    else
        vW:Notify("Steal A Seed For Bees " .. Library .. " loaded", 4)
    end
    Hf_11 = (Hf_11 + 6) % 8
until (Hf_11 * 7 + 4) % 8 == 0
