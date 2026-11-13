local fns = {}
local Ko_37, Ko_39, Ko_40, Ko_42, Ko_43, Ko_45, Ko_47, connection4, Ko_52, Ko_53, Ko_55, UserInputService, Ko_58, ShowFish, Ko_61, Ko_63, PlayerData, Ko_66, CfgFind, Ko_71, billboardGui, Ko_74, HttpService, Ko_77, Ko_79, Mouse, Ko_82, Ko_85, Ko_87, RemoteEvent, Ko_90, Ko_91, Ko_93, Ko_94, Ko_97
fns.Ko_5 = nil
fns.Ko_6 = nil
fns.RemoteFunction = nil
fns.Ko_10 = nil
fns.Ko_13 = nil
fns.Ko_15 = nil
fns.Ko_16 = nil
fns.connection3 = nil
fns.Ko_19 = nil
fns.TranslationHelper = nil
fns.connection = nil
fns.Ko_24 = nil
fns.Ko_27 = nil
fns.Ko_28 = nil
fns.bodyVelocity = nil
fns.Ko_32 = nil
fns.Ko_34 = nil
fns.Ko_36 = nil
Ko_37 = nil
Ko_39 = nil
Ko_40 = nil
Ko_42 = nil
Ko_43 = nil
Ko_45 = nil
Ko_47 = nil
connection4 = nil
Ko_52 = nil
Ko_53 = nil
Ko_55 = nil
UserInputService = nil
Ko_58 = nil
ShowFish = nil
Ko_61 = nil
Ko_63 = nil
PlayerData = nil
Ko_66 = nil
CfgFind = nil
Ko_71 = nil
billboardGui = nil
Ko_74 = nil
HttpService = nil
Ko_77 = nil
Ko_79 = nil
Mouse = nil
Ko_82 = nil
Ko_85 = nil
Ko_87 = nil
RemoteEvent = nil
Ko_90 = nil
Ko_91 = nil
Ko_93 = nil
Ko_94 = nil
Ko_97 = nil
local VirtualUser
local xR
local wR
local yE
local wE
local y2
local yQ
local EnumMgr
local wQ
local ye
local connection2
local xD
local y1
local wD
local w1
local xq
local wq
local xP
local yd
local xd
local yC
local y0
local wC
local x0
local w0
local LocalPlayer
local Players
local yO
local zc
local ItemType
local xc
local yB
local y_
local ConfigInstance
local w_
local yo
local bodyGyro
local wo
local xN
local wN
local zb
local yb
local xb
local TeleportService
local xA
local RunService
local wA
local xZ
local wZ
local xn
local yM
local xM
local wM
local Window
local ya
local yz
local ModelFind
local yY
local xY
local wY
local xm
local yL
local xL
local wL
local y9
local w9
local xy
local wy
function fns.fn11(eM)
    local B2 = PlayerData.GetPlrData(LocalPlayer)
    local B2_1 = B2 and B2.Bag
    if not B2_1 then
        return false
    end
    for k, v in pairs(B2_1) do
        local B2_2 = wD(v) and eM(v)
        if B2_2 then
            return true
        end
    end
    return false
end
function fns.fn13(p4)
    wY = p4
end
function fns.fn16(eh)
    local BO = type(eh) == "table" and eh.tp == ItemType.Fish
    return BO
end
function fns.fn17()
    return workspace:FindFirstChild(fns.Ko_15)
end
function fns.fn29()
    return fns.Ko_6("宠物活动区域")
end
function fns.fn30()
    local Dr_1
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local Dq = leaderstats and leaderstats:FindFirstChild("Cash")
    local Dq_1
    if not Dq then
        return 0
    elseif type(Dq.Value) == "number" then
        return Dq.Value
    else
        Dr_1, Dq_1 = tostring(Dq.Value):match("([%d%.]+)%s*(%a?)")
        local Dp_2 = tonumber(Dr_1) or 0
        local Dp_3 = ({ K = 1000, M = 1000000, B = 1000000000, T = 1000000000000, Q = 1000000000000000 })[Dq_1:upper()]
        local Dv = if Dp_3 then 1 else 0
        local Dt = 3520 * Dv + 1627 * (1 - Dv)
        local Du = 640 * Dv + 3762 * (1 - Dv)
        if not ((Dt * 3045 + Du * 1198 + Dt * Du) % 16777213 == 13737920) then
            Dp_3 = 1
        end
        return Dp_2 * Dp_3
    end
end
function fns.fn75()
    return fns.Ko_6(ya)
end
function fns.fn99()
    local JX = fns.Ko_34()
    if JX then
        fns.Ko_32(JX)
    else
        y1("No vortex spawn point found.")
    end
end
function fns.fn115()
    pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end
function fns.fn117(ql)
    wE = ql
end
function fns.fn138()
    local Jm = yB[fns.Ko_19]
    local Jn = Jm and Jm()
    if Jn then
        fns.Ko_32(Jn)
    else
        y1("Destination is not available right now.")
    end
end
function fns.fn139()
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    local Character = LocalPlayer.Character
    for i, v in ipairs({ Character, Backpack }) do
        local EY_1 = v and v:GetChildren()
        local E_ = EY_1 or {}
        for i, v in ipairs(E_) do
            local EY_2 = v:IsA("Tool") and tonumber(v:GetAttribute("Tp")) == ItemType.PetEgg
            if EY_2 then
                local EZ_2 = tonumber(v:GetAttribute("Count")) or 0
                EY_2 = EZ_2 >= 1
            end
            if EY_2 then
                return v
            end
        end
    end
    return nil
end
function fns.fn149(rq)
    Ko_74 = rq
end
function fns.onCharacterAdded()
    task.wait(0.3)
    yM()
end
function fns.fn177()
    local GN = workspace:FindFirstChild(Ko_37)
    local GO = GN and GN:FindFirstChild(yz)
    if not GO then
        return false
    end
    local Value = GO.Value
    return Value == EnumMgr.WeatherId.Aurora or Value == EnumMgr.WeatherId.Thunder or Value == EnumMgr.WeatherId.Meteor
end
function fns.fn187()
    return Ko_66(function(e2)
        local Ce = tostring(xb(e2, "isScrape")) == "0" and tostring(xb(e2, "lock")) == "0"
        return Ce
    end)
end
function fns.fn190(q0)
    Ko_43 = q0
end
function fns.fn192()
    yd = true
    xd = false
    Ko_63 = false
    wY = false
    wR = false
    wL = false
    x0 = false
    Ko_74 = false
    if w1 then
        w1:Disconnect()
        w1 = nil
    end
    if connection4 then
        connection4:Disconnect()
        connection4 = nil
    end
    if fns.connection3 then
        fns.connection3:Disconnect()
        fns.connection3 = nil
    end
    if fns.connection then
        fns.connection:Disconnect()
        fns.connection = nil
    end
    fns.Ko_28()
    Ko_77()
    Ko_91(false)
    local Character = LocalPlayer.Character
    local Ki = Character and Character:FindFirstChild("HumanoidRootPart")
    if Ki then
        Ki.Anchored = false
    end
    Window:Unload()
end
function fns.fn208(pS)
    fns.Ko_36 = pS
end
function fns.fn211(r5)
    if r5 then
        local Character = LocalPlayer.Character
        if Character then
            xn(Character)
        end
        if not fns.connection then
            fns.connection = LocalPlayer.CharacterAdded:Connect(function(sa)
                sa:WaitForChild("Humanoid")
                task.wait(0.5)
                xn(sa)
            end)
        end
    elseif fns.connection then
        fns.connection:Disconnect()
        fns.connection = nil
    end
end
function fns.fn212(pI)
    pI:CreateButton({
        name = "Join Discord for Dupes/Keyless Scripts",
        callback = function()
            if setclipboard then
                setclipboard(Ko_53)
            end
            y1("Discord invite copied to clipboard!")
        end
    })
end
function fns.fn222(gm)
    local CT = {}
    for i, v in ipairs(gm) do
        CT[#CT + 1] = v.name
    end
    return CT
end
function fns.fn245(qL)
    Ko_87 = qL
end
function fns.fn246(rO)
    fns.Ko_10 = rO
    if not rO then
        local Character = LocalPlayer.Character
        local J3 = Character and Character:FindFirstChildOfClass("Humanoid")
        if J3 then
            J3.Sit = false
        end
    end
end
function fns.fn252(qJ)
    yo = qJ
end
function fns.fn268(pQ)
    Ko_91(pQ)
end
function fns.fn270()
    xA()
end
function fns.worker9()
    while not yd do
        local I1 = xM and #Players:GetPlayers() > 1
        if I1 then
            Ko_40()
            task.wait(10)
        end
        task.wait(3)
    end
end
function fns.fn280()
    return Ko_66(function(eY)
        return tostring(xb(eY, "isScrape")) == "1"
    end)
end
function fns.fn289()
    zc = false
    if connection2 then
        connection2:Disconnect()
        connection2 = nil
    end
    if fns.bodyVelocity then
        fns.bodyVelocity:Destroy()
        fns.bodyVelocity = nil
    end
    if bodyGyro then
        bodyGyro:Destroy()
        bodyGyro = nil
    end
end
function fns.fn294(pU)
    Ko_63 = pU
end
function fns.fn308()
    local F_ = yC()
    if not F_ then
        return nil
    end
    local F0 = tonumber(F_:GetAttribute("MagicID")) or tonumber(xL("NowRodMagic"))
    if not F0 then
        return nil
    end
    for i, v in ipairs(yE) do
        if v.id == F0 then
            return v.name
        end
    end
    return nil
end
function fns.fn311(qr)
    y9 = {}
    for i, v in ipairs(qr) do
        y9[v] = true
    end
end
function fns.fn321(d5)
    if d5 <= 0 then
        return 1
    end
    local BI = CfgFind.GetCfgByNameAndID("magic_treasureConf", d5)
    local BJ = BI and tonumber(BI.ScalesRate)
    if not BJ or BJ <= 0 then
        return 1
    end
    return BJ
end
function fns.fn334()
    local Cp = workspace:FindFirstChild(Ko_90)
    local Cq = Cp and Cp:FindFirstChild(tostring(LocalPlayer.UserId))
    if not Cq then
        return nil
    end
    for i, descendant in ipairs(Cq:GetDescendants()) do
        if descendant.Name == "HumanoidRootPart" then
            local attr = descendant:GetAttribute("NPCID")
            if attr then
                return descendant.Parent, attr
            end
        end
    end
    return nil
end
function fns.fn351()
    local Character = LocalPlayer.Character
    local AB = Character and Character:GetChildren()
    local AC = AB or {}
    for i, v in ipairs(AC) do
        if v:GetAttribute("FishingTool") then
            return v, true
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:GetAttribute("FishingTool") then
            return child, false
        end
    end
    return nil, false
end
function fns.fn376()
    local ScreenGui = LocalPlayer.PlayerGui:FindFirstChild("ScreenGui")
    local AX = ScreenGui and ScreenGui:FindFirstChild("ShowFish")
    local AW_1 = AX
    if AX then
        AX = AW_1:FindFirstChild("FishInfo")
    end
    local AW_2 = AX
    return AW_2 ~= nil and AW_2.Position.Y.Scale < 1
end
function fns.fn385()
    local Cy = Ko_94()
    local Cz = Cy and Cy:FindFirstChild(wo)
    local Cy_1 = Cz
    if Cz then
        Cz = Cy_1:FindFirstChild(yY)
    end
    local Cy_2 = Cz
    if Cz then
        Cz = Cy_2:FindFirstChild(yQ)
    end
    local Cy_3 = Cz
    if not Cy_3 then
        return nil
    end
    local Cz_1 = Cy_3:GetAttribute("NPCID")
    if not Cz_1 then
        local HumanoidRootPart = Cy_3:FindFirstChild("HumanoidRootPart", true)
        local CB = HumanoidRootPart and HumanoidRootPart:GetAttribute("NPCID")
        Cz_1 = CB
    end
    return Cy_3, Cz_1 or 2
end
function fns.fn405()
    if ShowFish then
        pcall(function()
            ShowFish:closeUi()
        end)
    end
end
function fns.fn411(o4)
    for i, descendant in ipairs(o4:GetDescendants()) do
        local IJ = descendant:IsA("Accessory") or descendant:IsA("CharacterMesh")
        if IJ then
            descendant:Destroy()
        elseif descendant:IsA("BasePart") then
            if descendant:IsA("MeshPart") then
                descendant.MeshId = ""
                descendant.TextureID = ""
            end
            local SpecialMesh = descendant:FindFirstChildOfClass("SpecialMesh")
            if SpecialMesh then
                SpecialMesh:Destroy()
            end
            descendant.Color = Color3.new(1, 1, 1)
            descendant.Material = Enum.Material.Plastic
            descendant.Transparency = 0
        else
            local IJ_2 = descendant:IsA("Decal") or descendant:IsA("Texture")
            if IJ_2 then
                descendant.Transparency = 1
            elseif descendant:IsA("Shirt") then
                descendant.ShirtTemplate = ""
            elseif descendant:IsA("Pants") then
                descendant.PantsTemplate = ""
            elseif descendant:IsA("ShirtGraphic") then
                descendant.Graphic = ""
            end
        end
    end
end
function fns.fn416(ic, ie)
    return ic.sort < ie.sort
end
function fns.fn427(qn)
    wy = qn
end
function fns.fn457(p_)
    Ko_79 = {}
    for i, v in ipairs(p_) do
        Ko_79[v] = true
    end
end
function fns.fn466(qy)
    wA = {}
    for i, v in ipairs(qy) do
        wA[v] = true
    end
end
function fns.fn480(gr, gs)
    local C0 = {}
    for i, v in ipairs(gr) do
        if tonumber(v.itemType) == gs then
            C0[#C0 + 1] = v
        end
    end
    return C0
end
function fns.fn490(ec, ed)
    local BL = ec[ed]
    local BM = BL == nil and type(ec.Data) == "table"
    if BM then
        BL = ec.Data[ed]
    end
    return BL
end
function fns.worker()
    while not yd do
        if Ko_63 then
            y_()
        end
        task.wait(3.5)
    end
end
function fns.fn510()
    local Df = {}
    local Dg = PlayerData.GetPlrData(LocalPlayer)
    if Dg and Dg.Bag then
        for k, v in pairs(Dg.Bag) do
            local Dg_1 = type(v) == "table" and v.id
            if Dg_1 then
                Df[tostring(v.id)] = true
            end
        end
    end
    return Df
end
function fns.fn517(rM)
    Ko_93 = rM
end
function fns.fn526(qp)
    wq = qp
end
function fns.fn527(dR)
    local Bt = Ko_52[dR]
    if Bt then
        return Bt
    end
    local Bt_1 = CfgFind.FindCfgByID(dR, ItemType.Fish)
    local Bu = Bt_1 and ModelFind.GetModelCloneByModelName(Bt_1.Model, ItemType.Fish, true)
    local Bt_2 = Bu
    local Bv = 0
    if Bu then
        Bu = Bt_2:FindFirstChild("Scales")
    end
    local Bw = Bu
    if Bw then
        for i, descendant in ipairs(Bw:GetDescendants()) do
            if descendant:IsA("BasePart") then
                Bv = Bv + 1
            end
        end
    end
    if Bt_2 then
        Bt_2:Destroy()
    end
    Ko_52[dR] = Bv
    return Bv
end
function fns.fn572(p8)
    wL = p8
end
function fns.fn598(kR, kS)
    if kR.xyd ~= kS.xyd then
        return kR.xyd < kS.xyd
    end
    return kR.id < kS.id
end
function fns.fn599()
    local Character = LocalPlayer.Character
    local Hm = Character and Character:FindFirstChild("HumanoidRootPart")
    if not Hm then
        return
    end
    fns.Ko_28()
    zc = true
    fns.bodyVelocity = Instance.new("BodyVelocity")
    fns.bodyVelocity.Velocity = Vector3.zero
    fns.bodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
    fns.bodyVelocity.P = 90000
    fns.bodyVelocity.Parent = Hm
    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
    bodyGyro.P = 90000
    bodyGyro.CFrame = Hm.CFrame
    bodyGyro.Parent = Hm
    connection2 = RunService.RenderStepped:Connect(function()
        if not zc or not fns.bodyVelocity or not bodyGyro then
            return
        end
        local CurrentCamera = workspace.CurrentCamera
        local Hf_1 = Vector3.zero
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            Hf_1 = Hf_1 + CurrentCamera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            Hf_1 = Hf_1 - CurrentCamera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            Hf_1 = Hf_1 - CurrentCamera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            Hf_1 = Hf_1 + CurrentCamera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            Hf_1 = Hf_1 + Vector3.new(0, 1, 0)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            Hf_1 = Hf_1 - Vector3.new(0, 1, 0)
        end
        bodyGyro.CFrame = CurrentCamera.CFrame
        if Hf_1.Magnitude > 0 then
            fns.bodyVelocity.Velocity = Hf_1.Unit * Ko_93
        else
            fns.bodyVelocity.Velocity = Vector3.zero
        end
    end)
end
function fns.fn615(ou)
    local Humanoid = ou:FindFirstChildOfClass("Humanoid")
    local Head = ou:FindFirstChild("Head")
    if Humanoid then
        Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
    end
    for i, descendant in ipairs(ou:GetDescendants()) do
        local H9_1 = descendant:IsA("BillboardGui") or descendant:IsA("SurfaceGui")
        if H9_1 and descendant.Name ~= "OuroborosNameTag" and descendant.Enabled then
            descendant.Enabled = false
            xN[#xN + 1] = descendant
        end
    end
    if not Head then
        return
    end
    if billboardGui then
        billboardGui:Destroy()
    end
    billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "OuroborosNameTag"
    billboardGui.Adornee = Head
    billboardGui.Size = UDim2.fromOffset(200, 40)
    billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.Parent = Head
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Label"
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = "Ouroboros Hub"
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 15
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Parent = billboardGui
end
function fns.fn621()
    local Character = LocalPlayer.Character
    local Hx = Character and Character:FindFirstChild("HumanoidRootPart")
    local Hw_1 = Hx
    if Hx then
        Hx = Mouse.Target
    end
    if Hx then
        Hw_1.CFrame = CFrame.new(Mouse.Hit.Position + Vector3.new(0, 3, 0))
    end
end
function fns.fn626(qG)
    Ko_58 = qG
end
function fns.worker2()
    while not yd do
        local CE = wL and Ko_97()
        local CE_2, CE_4, CE_5
        local CF = wY
        local CF_1, CF_2, CF_3
        if CF then
            CF = xy()
        end
        if CF and not CE then
            CE_2, CF_1 = xY()
            Ko_61(Ko_71, CE_2, CF_1)
        end
        local CE_3 = wR and fns.Ko_27()
        if CE_3 then
            CE_4, CF_2 = xY()
            Ko_61(fns.Ko_16, CE_4, CF_2)
        end
        if CE then
            CE_5, CF_3 = w0()
            Ko_61(yO, CE_5, CF_3)
        end
        task.wait(2)
    end
end
function fns.worker3()
    while not yd do
        for k, v in pairs(y0) do
            if v then
                local D7_1 = xc(xm, k)
                if D7_1 then
                    xP(D7_1, fns.Ko_5)
                end
            end
        end
        for k, v in pairs(Ko_79) do
            if v then
                local D7_2 = xc(Ko_55, k)
                if D7_2 then
                    xP(D7_2, wC)
                end
            end
        end
        task.wait(2)
    end
end
function fns.worker5()
    local GQ = false
    while not yd do
        local Character = LocalPlayer.Character
        local GS = Character and Character:FindFirstChild("HumanoidRootPart")
        if Ko_74 and GS then
            if Ko_45() then
                local GS_2 = fns.Ko_34()
                if GS_2 and not GQ then
                    GS.CFrame = CFrame.new(GS_2 + Vector3.new(0, 6, 0))
                    GS.Anchored = true
                    GQ = true
                end
            elseif GQ then
                GS.Anchored = false
                GQ = false
            end
        else
            if GQ and GS then
                GS.Anchored = false
                GQ = false
            end
        end
        task.wait(1)
    end
end
function fns.fn657()
    local Fx = PlayerData.GetPlrData(LocalPlayer)
    local Fy = Fx and Fx.Bag
    local Fx_1 = {}
    if Fy then
        for k, v in pairs(Fy) do
            local Fy_1 = type(v) == "table" and v.tp == ItemType.Pet
            if Fy_1 then
                Fx_1[#Fx_1 + 1] = v
            end
        end
    end
    table.sort(Fx_1, function(km, kn)
        local Fv_1
        local Fu_1
        local Fs = tonumber(km.level) or 0
        local Ft = tonumber(kn.level) or 0
        Fu_1, Fv_1 = Fs, Ft
        if Fu_1 ~= Fv_1 then
            return Fu_1 > Fv_1
        end
        local Fs_1 = tonumber(km.id) or 0
        local Ft_1 = tonumber(kn.id) or 0
        return Fs_1 > Ft_1
    end)
    return Fx_1
end
function fns.fn659(se)
    xM = se
end
function fns.fn666(rH)
    if rH then
        xZ()
    else
        fns.Ko_28()
    end
end
function fns.fn677(rF)
    y2 = rF
end
function fns.fn681(rx)
    zb = rx
    if rx then
        yM()
    else
        if connection4 then
            connection4:Disconnect()
            connection4 = nil
        end
        local Character = LocalPlayer.Character
        local J_ = Character and Character:FindFirstChildOfClass("Humanoid")
        if J_ then
            J_.WalkSpeed = 16
        end
    end
end
function fns.fn690()
    Ko_40()
end
function fns.fn718(q2)
    wZ = q2
end
function fns.worker4()
    while not yd do
        if yo or Ko_87 then
            local EV_1 = PlayerData.GetPlrData(LocalPlayer)
            local EV_2 = EV_1 and EV_1.Season
            if type(EV_2) == "table" then
                if Ko_87 then
                    xq(EV_2)
                end
                if yo then
                    pcall(function()
                        fns.RemoteFunction:InvokeServer(Ko_39)
                    end)
                end
            end
        end
        task.wait(5)
    end
end
function fns.fn734(pW)
    y0 = {}
    for i, v in ipairs(pW) do
        y0[v] = true
    end
end
function fns.fn741()
    return Ko_66(function(e8)
        local Cl = if tostring(xb(e8, "isScrape")) ~= "1" then 1 else 0
        if Cl == 1 then
            return false
        elseif tostring(xb(e8, "lock")) == "1" then
            return false
        else
            local Cg = CfgFind.FindCfgByID(e8.id, ItemType.Fish)
            local Ch = Cg ~= nil and tonumber(Cg.ActiveType) == 2
            return Ch
        end
    end)
end
function fns.fn745()
    pcall(function()
        RemoteEvent:FireServer(wQ)
    end)
end
function fns.fn746(rg)
    x0 = rg
    local JV = rg and not next(Ko_82)
    if JV then
        y1("Pick at least one target enchant first.")
        x0 = false
    end
end
function fns.onStepped()
    if yd then
        return
    end
    if fns.Ko_10 then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local Ho_1 = descendant:IsA("BasePart") and descendant.CanCollide
                if Ho_1 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.worker6()
    while not yd do
        if zb then
            local Character = LocalPlayer.Character
            local G8 = Character and Character:FindFirstChildOfClass("Humanoid")
            local G7_1 = G8
            if G8 then
                G8 = G7_1.WalkSpeed ~= y2
            end
            if G8 then
                G7_1.WalkSpeed = y2
            end
        end
        RunService.Heartbeat:Wait()
    end
end
function fns.fn787()
    return fns.Ko_6("商店")
end
function fns.fn788()
    ShowFish = require(game.ReplicatedStorage.ClientSideCode.ModuleScript.ShowFish)
end
function fns.fn789()
    for i, descendant in ipairs(LocalPlayer.PlayerGui:GetDescendants()) do
        local H1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if H1 then
            if fns.Ko_13(descendant.Text) then
                descendant.Text = xD
            end
        end
    end
end
function fns.fn795()
    return fns.Ko_6("群组宝箱")
end
function fns.fn817(b5)
    local Ax = LocalPlayer:FindFirstChild(b5)
    return Ax and Ax.Value
end
function fns.fn835(q4)
    Ko_85 = q4
end
function fns.fn838(pO)
    xd = pO
end
function fns.fn839(qC)
    Ko_47 = qC
end
function fns.fn852()
    Ko_42()
end
function fns.fn870()
    local Character = LocalPlayer.Character
    local In = Character and Character:FindFirstChildOfClass("Humanoid")
    if In then
        In.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
    end
    for i, v in ipairs(xN) do
        if v and v.Parent then
            v.Enabled = true
        end
    end
    xN = {}
    if billboardGui then
        billboardGui:Destroy()
        billboardGui = nil
    end
end
function fns.fn874()
    return fns.Ko_6("付费孵化器")
end
function fns.fn878()
    local IT_1
    local IS_1
    local IR = {}
    IS_1, IT_1 = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    end)
    if IS_1 and IT_1 and IT_1.data then
        for i, v in ipairs(IT_1.data) do
            local IS_2 = type(v) == "table" and v.playing and v.maxPlayers and v.playing < v.maxPlayers and v.id ~= game.JobId
            if IS_2 then
                IR[#IR + 1] = v.id
            end
        end
    end
    if #IR > 0 then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, IR[math.random(1, #IR)], LocalPlayer)
    else
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end
end
function fns.fn881(pF)
    Window:Notify({ title = "Ouroboros Hub", content = pF, duration = 4 })
end
function fns.worker10()
    while not yd do
        if w9 then
            w_()
        end
        task.wait(60)
    end
end
function fns.fn909()
    local Gi = Ko_94()
    local Gj = Gi and Gi:FindFirstChild(wo)
    local Gj_1 = { workspace, Gj }
    for i, v in ipairs(Gj_1) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local Gi_2 = child:IsA("Model") and child.Name:find("漩涡", 1, true)
                if Gi_2 then
                    return child
                end
            end
        end
    end
    return nil
end
function fns.fn922()
    return fns.Ko_34()
end
function fns.fn941(qE)
    xR = qE
end
function fns.worker8()
    while not yd do
        if yb then
            pcall(wN)
        end
        task.wait(0.5)
    end
end
function fns.fn1014(p6)
    wR = p6
end
function fns.fn1041()
    ye:Set(not ye.value)
end
function fns.fn1049(rV)
    yb = rV
    if rV then
        local Character = LocalPlayer.Character
        if Character then
            yL(Character)
        end
        if not fns.connection3 then
            fns.connection3 = LocalPlayer.CharacterAdded:Connect(function(r1)
                r1:WaitForChild("Head")
                if yb then
                    yL(r1)
                end
            end)
        end
    else
        Ko_77()
        if fns.connection3 then
            fns.connection3:Disconnect()
            fns.connection3 = nil
        end
    end
end
function fns.fn1058()
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end
function fns.fn1060(oc)
    if oc == xD then
        return false
    end
    local HX = oc:gsub("%s+$", ""):gsub("%.%.%.$", "")
    if #HX < 3 then
        return false
    end
    if HX:sub(1, 1) == "@" then
        HX = HX:sub(2)
    end
    local Name = LocalPlayer.Name
    local DisplayName = LocalPlayer.DisplayName
    local H_ = Name:sub(1, #HX) == HX or DisplayName:sub(1, #HX) == HX
    return H_
end
function fns.fn1061(rc)
    Ko_82 = {}
    for i, v in ipairs(rc) do
        Ko_82[v] = true
    end
end
function fns.worker7()
    local Iy = 0
    while not yd do
        if yb then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local Iz_1 = descendant:IsA("BillboardGui") or descendant:IsA("SurfaceGui")
                    if Iz_1 and descendant.Name ~= "OuroborosNameTag" and descendant.Enabled then
                        descendant.Enabled = false
                        xN[#xN + 1] = descendant
                    end
                end
            end
            if billboardGui then
                local Label = billboardGui:FindFirstChild("Label")
                if Label then
                    Iy = (Iy + 0.01) % 1
                    Label.TextColor3 = Color3.fromHSV(Iy, 1, 1)
                end
            end
        end
        RunService.Heartbeat:Wait()
    end
end
function fns.fn1091(gz, gA)
    for i, v in ipairs(gz) do
        if v.name == gA then
            return v.id
        end
    end
    return nil
end
function fns.fn1101(q6)
    wM = q6
end
function fns.fn1107()
    return fns.Ko_6("旅行商人刷新点")
end
function fns.fn1110(nv)
    local Character = LocalPlayer.Character
    local HA = Character and Character:FindFirstChild("HumanoidRootPart")
    if nv and HA then
        HA.CFrame = CFrame.new(nv + Vector3.new(0, 3, 0))
    end
end
function fns.fn1114(qa)
    local Jj = type(qa) == "table" and qa[1]
    fns.Ko_19 = Jj or qa
end
function fns.fn1124(ga, gb)
    local CJ = {}
    local CL = ConfigInstance[ga] or {}
    for k, v in pairs(CL) do
        if type(v) == "table" then
            local CK_1 = #CJ + 1
            local CL_1 = tonumber(v[gb]) or 0
            CJ[CK_1] = {
                id = k,
                cost = CL_1,
                name = fns.TranslationHelper.translateByKey(v.ZhName),
                itemType = v.ItemType
            }
        end
    end
    table.sort(CJ, function(gf, gg)
        return gf.cost < gg.cost
    end)
    return CJ
end
function fns.fn1125(sj)
    w9 = sj
    if sj then
        if not w1 then
            w1 = LocalPlayer.Idled:Connect(w_)
        end
    elseif w1 then
        w1:Disconnect()
        w1 = nil
    end
end
wo = nil
Players = nil
wq = nil
Ko_97 = nil
Mouse = nil
Ko_47 = nil
fns.Ko_15 = nil
wy = nil
wA = nil
wC = nil
wD = nil
wE = nil
ShowFish = nil
Ko_40 = nil
fns.Ko_5 = nil
wL = nil
wM = nil
wN = nil
ItemType = nil
wQ = nil
wR = nil
Ko_85 = nil
Ko_52 = nil
fns.Ko_32 = nil
wY = nil
wZ = nil
w_ = nil
w0 = nil
w1 = nil
Ko_74 = nil
Ko_63 = nil
Ko_43 = nil
fns.Ko_27 = nil
fns.RemoteFunction = nil
w9 = nil
local wr, wu, ww, wz, wB, wF, wG, wJ, wP, FishingState, wW, wX, TalkFunc, w3, xa
xb = nil
xc = nil
xd = nil
RemoteEvent = nil
Ko_55 = nil
fns.Ko_36 = nil
fns.TranslationHelper = nil
xm = nil
xn = nil
xq = nil
Ko_77 = nil
PlayerData = nil
fns.Ko_13 = nil
xy = nil
ModelFind = nil
xA = nil
xD = nil
Ko_91 = nil
CfgFind = nil
Ko_58 = nil
Ko_39 = nil
xL = nil
xM = nil
xN = nil
xP = nil
EnumMgr = nil
xR = nil
Ko_82 = nil
fns.connection3 = nil
xY = nil
local xe, xf, xh, xl, HumanModule, xp, xr, xs, xv, xw, xB, xC, xE, xJ, xK, StartPlayFishAni, xT, xU, xV, xX
xZ = nil
ConfigInstance = nil
x0 = nil
Ko_94 = nil
billboardGui = nil
Ko_61 = nil
Ko_42 = nil
ya = nil
yb = nil
yd = nil
ye = nil
Ko_87 = nil
Ko_53 = nil
fns.Ko_34 = nil
fns.Ko_19 = nil
yo = nil
LocalPlayer = nil
HttpService = nil
Ko_45 = nil
fns.Ko_28 = nil
fns.Ko_10 = nil
yz = nil
TeleportService = nil
yB = nil
yC = nil
connection2 = nil
yE = nil
Ko_90 = nil
UserInputService = nil
Ko_37 = nil
fns.connection = nil
yL = nil
local x1, x2, x7, x8, x9, yc, yf, yh, yl, ym, yn, yq, yr, ys, yu, yy, yG, yK
yM = nil
bodyGyro = nil
yO = nil
yQ = nil
VirtualUser = nil
Ko_79 = nil
Ko_66 = nil
connection4 = nil
fns.bodyVelocity = nil
fns.Ko_16 = nil
yY = nil
RunService = nil
y_ = nil
y0 = nil
y1 = nil
y2 = nil
Ko_93 = nil
Ko_71 = nil
fns.Ko_24 = nil
fns.Ko_6 = nil
y9 = nil
Window = nil
zb = nil
zc = nil
local yP, yX, y5, TweenService, zd
yP = nil
yX = nil
y5 = nil
TweenService = nil
zd = nil
Players, TweenService, RunService, VirtualUser, UserInputService, TeleportService, HttpService, LocalPlayer, Ko_53, x9, x2, xV, xK, xC, xw, xr, ym, yd, ConfigInstance, EnumMgr, CfgFind, ModelFind, PlayerData, HumanModule, fns.TranslationHelper, RemoteEvent, fns.RemoteFunction, TalkFunc, FishingState, ItemType, wJ, wB, ww, zd, Ko_71, fns.Ko_16, yO, Ko_90, yy, ys, yn, yf, x7, x1, xT, Ko_39, xB, xv, xp, xl, xh, xa, w3, wW, wQ, fns.Ko_5, wC, fns.Ko_15, wo, fns.Ko_24, yY, yQ, Ko_37, yz, yu, yq, yh, ya, fns.Ko_36, xd, Ko_63, wY, wR, wL, wE, wy, wq, y9, y0, Ko_79, yK, ShowFish, xX, StartPlayFishAni, Ko_52, y5, yX, yP, yG, xm, Ko_55, xf, Ko_94, xL, yC, xE, wr, yl, Ko_91, wP, xU, xb, wD, y_, Ko_66, xy, fns.Ko_27, Ko_97, xY, w0, Ko_61, fns.Ko_11, xc, wF, yr, xs, xP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
TweenService = game:GetService("TweenService")
RunService = game:GetService("RunService")
VirtualUser = game:GetService("VirtualUser")
UserInputService = game:GetService("UserInputService")
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
Ko_53 = "https://discord.gg/ehKVq7pf7v"
x9 = "https://rocheats.com?ref=ouroboros"
x2 = 1
xV = Color3.fromRGB(143, 165, 240)
xK = Color3.fromRGB(15, 16, 20)
xC = Color3.fromRGB(22, 24, 30)
xw = Color3.fromRGB(230, 235, 245)
xr = Color3.fromRGB(36, 39, 48)
function fns.Ko_99()
    local frame4
    local screenGui
    screenGui = nil
    frame4 = nil
    local Ab, Ac, Ad, Ae, Af, frame3, Ah, frame2, Aj
    local Ak = gethui and gethui()
    local Al = Ak
    local Aq = if Al then 1 else 0
    local Ao = 1504 * Aq + 416 * (1 - Aq)
    local Ap = 3846 * Aq + 2092 * (1 - Aq)
    if not ((Ao * 2247 + Ap * 348 + Ao * Ap) % 16777213 == 10502280) then
        Al = game:GetService("CoreGui")
    end
    local Ak_1 = Al or LocalPlayer:WaitForChild("PlayerGui")
    local OuroborosLoadingScreen = Ak_1:FindFirstChild("OuroborosLoadingScreen")
    if OuroborosLoadingScreen then
        OuroborosLoadingScreen:Destroy()
    end
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosLoadingScreen"
    screenGui.ResetOnSpawn = false
    screenGui.DisplayOrder = 99999
    screenGui.IgnoreGuiInset = true
    screenGui.Parent = Ak_1
    local frame5 = Instance.new("Frame")
    frame5.Size = UDim2.fromScale(1, 1)
    frame5.BackgroundColor3 = xK
    frame5.BackgroundTransparency = 1
    frame5.BorderSizePixel = 0
    frame5.Parent = screenGui
    frame4 = Instance.new("Frame")
    frame4.Size = UDim2.fromOffset(380, 250)
    frame4.Position = UDim2.new(0.5, -190, 0.5, -110)
    frame4.BackgroundColor3 = xC
    frame4.BackgroundTransparency = 1
    frame4.BorderColor3 = xr
    frame4.Parent = frame5
    Ae = function(K, L, M, N, O, P, Q)
        local R = Instance.new(K)
        R.Position = L
        R.Size = M
        R.BackgroundTransparency = 1
        R.Text = N
        R.Font = O
        R.TextSize = P
        R.TextColor3 = Q
        R.TextTransparency = 1
        R.Parent = frame4
        return R
    end
    Ac = Ae("TextLabel", UDim2.new(0, 0, 0, 30), UDim2.new(1, 0, 0, 25), "Ouroboros Marketplace & MM", Enum.Font.GothamMedium, 17, xw)
    Aj = Ae("TextLabel", UDim2.new(0, 0, 0, 58), UDim2.new(1, 0, 0, 20), "Ouroboros Bypassing", Enum.Font.Gotham, 12, xV)
    local function Al_2(Y, Z)
        local ac = Ae("TextButton", UDim2.new(0, 40, 0, Y), UDim2.new(1, -80, 0, 36), Z, Enum.Font.Gotham, 12, xw)
        ac.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
        ac.BorderColor3 = xr
        ac.AutoButtonColor = false
        ac.Active = false
        return ac
    end
    Ah = Al_2(95, "Discord Link Here (Click to Copy)")
    Ab = Al_2(138, "Get PC Executor Here (Click to Copy)")
    frame3 = Instance.new("Frame")
    frame3.Position = UDim2.new(0, 40, 0, 195)
    frame3.Size = UDim2.new(1, -80, 0, 2)
    frame3.BackgroundColor3 = Color3.fromRGB(32, 35, 45)
    frame3.BackgroundTransparency = 1
    frame3.BorderSizePixel = 0
    frame3.Parent = frame4
    frame2 = Instance.new("Frame")
    frame2.Size = UDim2.new(0, 0, 1, 0)
    frame2.BackgroundColor3 = xV
    frame2.BackgroundTransparency = 1
    frame2.BorderSizePixel = 0
    frame2.Parent = frame3
    Ad = function(aj)
        local frame, textLabel
        local Toast = screenGui:FindFirstChild("Toast")
        if Toast then
            Toast:Destroy()
        end
        frame = Instance.new("Frame")
        frame.Name = "Toast"
        frame.Size = UDim2.fromOffset(220, 45)
        frame.Position = UDim2.new(1, 20, 1, -65)
        frame.BackgroundColor3 = xC
        frame.BorderColor3 = xV
        frame.ZIndex = 100000
        frame.Parent = screenGui
        textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = aj
        textLabel.Font = Enum.Font.Gotham
        textLabel.TextSize = 11
        textLabel.TextColor3 = xw
        textLabel.ZIndex = 100001
        textLabel.Parent = frame
        TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -240, 1, -65) }):Play()
        task.delay(2.2, function()
            if not frame.Parent then
                return
            end
            local z_ = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 1, -65) })
            TweenService:Create(textLabel, TweenInfo.new(0.3), { TextTransparency = 1 }):Play()
            z_:Play()
            z_.Completed:Connect(function()
                frame:Destroy()
            end)
        end)
    end
    local function Al_3(az, aA, aB)
        az.MouseEnter:Connect(function()
            if az.Active then
                TweenService:Create(az, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(34, 37, 47), BorderColor3 = xV, TextColor3 = xV }):Play()
            end
        end)
        az.MouseLeave:Connect(function()
            if az.Active then
                TweenService:Create(az, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(28, 30, 38), BorderColor3 = xr, TextColor3 = xw }):Play()
            end
        end)
        az.MouseButton1Click:Connect(function()
            if not az.Active then
                return
            end
            local z7 = setclipboard and pcall(setclipboard, aA)
            if z7 then
                Ad(aB)
            else
                Ad("Clipboard action not supported.")
            end
        end)
    end
    Al_3(Ah, Ko_53, "Discord invite copied to clipboard!")
    Al_3(Ab, x9, "PC Executor link copied to clipboard!")
    Af = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
    TweenService:Create(frame5, TweenInfo.new(0.4), { BackgroundTransparency = 0 }):Play()
    TweenService:Create(frame4, Af, { Position = UDim2.new(0.5, -190, 0.5, -130), BackgroundTransparency = 0 }):Play()
    task.delay(0.1, function()
        TweenService:Create(Ac, Af, { TextTransparency = 0 }):Play()
        TweenService:Create(Aj, Af, { TextTransparency = 0 }):Play()
        TweenService:Create(Ah, Af, { TextTransparency = 0, BackgroundTransparency = 0 }):Play()
        TweenService:Create(Ab, Af, { TextTransparency = 0, BackgroundTransparency = 0 }):Play()
        TweenService:Create(frame3, Af, { BackgroundTransparency = 0 }):Play()
        TweenService:Create(frame2, Af, { BackgroundTransparency = 0 }):Play()
    end)
    task.wait(0.6)
    Ah.Active = true
    Ab.Active = true
    TweenService:Create(frame2, TweenInfo.new(x2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromScale(1, 1) }):Play()
    task.wait(1.8)
    local Al_4 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    for i, descendant in ipairs(frame4:GetDescendants()) do
        local Am_1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if Am_1 then
            TweenService:Create(descendant, Al_4, { TextTransparency = 1, BackgroundTransparency = 1 }):Play()
        elseif descendant:IsA("Frame") then
            TweenService:Create(descendant, Al_4, { BackgroundTransparency = 1 }):Play()
        end
    end
    TweenService:Create(frame4, Al_4, { BackgroundTransparency = 1 }):Play()
    local Am_2 = TweenService:Create(frame5, Al_4, { BackgroundTransparency = 1 })
    Am_2:Play()
    Am_2.Completed:Connect(function()
        screenGui:Destroy()
    end)
    task.wait(0.5)
end
fns.Ko_99()
ym = loadstring(game:HttpGet("https://sirius.menu/gen2"))()
yd = false
local Ko_67 = require(game.ReplicatedFirst.AllSideCode.UtilsSystem)
ConfigInstance = require(game.ReplicatedFirst.AllSideCode.ToolBasic.ConfigInstance)
EnumMgr = Ko_67.EnumMgr
CfgFind = Ko_67.CfgFind
ModelFind = Ko_67.ModelFind
PlayerData = Ko_67.PlayerData
HumanModule = Ko_67.HumanModule
fns.TranslationHelper = Ko_67.TranslationHelper
RemoteEvent = Ko_67.RemoteEvent.RemoteEvent
fns.RemoteFunction = Ko_67.RemoteFunction.RemoteFunction
TalkFunc = Ko_67.RemoteFunction.TalkFunc
FishingState = EnumMgr.FishingState
ItemType = EnumMgr.ItemType
wJ = "钓鱼充能"
wB = "抛竿"
ww = "结束钓鱼"
zd = "自动刮鱼鳞批量完成"
Ko_71 = "卖掉全部刮完鱼鳞的鱼"
fns.Ko_16 = "卖掉没刮完鱼鳞的鱼"
yO = "卖掉背包所有活动鱼"
Ko_90 = "玩家的商店"
yy = "购买鱼竿"
ys = "购买浮漂"
yn = "购买药水"
yf = "购买图腾"
x7 = "购买刮鳞刀"
x1 = "购买商店物品"
xT = "购买商人商品"
Ko_39 = "领取全部季票等级奖励"
xB = "完成季票任务"
xv = "开始孵蛋"
xp = "领取孵蛋"
xl = "解锁孵蛋槽2"
xh = "装备宠物"
xa = "升级宠物"
w3 = "放置鱼竿附魔"
wW = "给鱼竿附魔"
wQ = "取出鱼竿附魔"
fns.Ko_5 = "使用药水"
wC = "使用图腾"
fns.Ko_15 = "场景"
wo = "天气活动"
fns.Ko_24 = "漩涡创建点"
yY = "活动NPC"
yQ = "暹罗猫"
Ko_37 = "天气系统"
yz = "当前天气"
yu = "宠物活动系统"
yq = "商人SessionId"
yh = "商人进行中"
ya = "鱼竿附魔台"
Ko_94 = fns.fn17
xL = fns.fn817
fns.Ko_36 = 1
xd = false
Ko_63 = false
wY = false
wR = false
wL = false
wE = false
wy = false
wq = false
y9 = {}
y0 = {}
Ko_79 = {}
yK = false
yC = fns.fn351
xE = function()
    local AQ
    local AS_1
    AQ, AS_1 = yC()
    if AQ and not AS_1 then
        local Character = LocalPlayer.Character
        local AT_1 = Character and Character:FindFirstChildOfClass("Humanoid")
        local AR = AT_1
        if AR then
            pcall(function()
                AR:EquipTool(AQ)
            end)
            task.wait(0.3)
        end
    end
    return select(2, yC())
end
pcall(fns.fn788)
wr = fns.fn376
yl = fns.fn405
xX = false
Ko_91 = function(cU)
    xX = cU
    task.spawn(function()
        local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
        local Manager = PlayerScripts:WaitForChild("Manager")
        local NetWorkManager = Manager:WaitForChild("NetWorkManager")
        local FishAni = require(NetWorkManager:WaitForChild("FishAni"))
        if not StartPlayFishAni then
            StartPlayFishAni = FishAni.StartPlayFishAni
        end
        if cU then
            FishAni.StartPlayFishAni = function(c4)
                if type(c4) == "table" then
                    c4.isWater = true
                    if not c4.endPos then
                        local Character = LocalPlayer.Character
                        local A3 = Character and Character:FindFirstChild("HumanoidRootPart")
                        if A3 then
                            c4.endPos = A3.Position + A3.CFrame.LookVector * 15 - Vector3.new(0, 5, 0)
                        else
                            c4.endPos = Vector3.zero
                        end
                    end
                end
                return StartPlayFishAni(c4)
            end
        elseif StartPlayFishAni then
            FishAni.StartPlayFishAni = StartPlayFishAni
        end
    end)
end
task.spawn(function()
    local Bj
    local Bl = 0
    Bj = false
    local function Bm()
        if Bj then
            pcall(function()
                RemoteEvent:FireServer(wJ, false)
            end)
            Bj = false
        end
    end
    local function Bn()
        if not Bj then
            pcall(function()
                RemoteEvent:FireServer(wJ, true)
            end)
            Bj = true
        end
    end
    local Bs = false
    repeat
        if yd then
            Bs = true
        else
            if xd then
                if wr() then
                    Bm()
                    yl()
                    task.wait(0.5)
                else
                    local Bo = xL("FishingState")
                    if Bo == FishingState.Idle then
                        Bm()
                        local Bp = not yK and os.clock() - Bl > 1 and xE()
                        if Bp then
                            local Bk = HumanModule.GetCharCF(LocalPlayer)
                            if Bk then
                                pcall(function()
                                    fns.RemoteFunction:InvokeServer(wB, { Bk.LookVector, 0.5 + fns.Ko_36 })
                                end)
                                Bl = os.clock()
                            end
                        end
                    elseif Bo == FishingState.Fishing then
                        Bn()
                    elseif Bo == FishingState.ThrowEnd then
                        Bm()
                        pcall(function()
                            fns.RemoteFunction:InvokeServer(ww)
                        end)
                        task.wait(0.2)
                    else
                        Bm()
                    end
                end
            else
                Bm()
            end
            RunService.Heartbeat:Wait()
        end
    until Bs
end)
Ko_52 = {}
wP = fns.fn527
xU = fns.fn321
xb = fns.fn490
wD = fns.fn16
y_ = function()
    local BQ, BR
    local BS = PlayerData.GetPlrData(LocalPlayer)
    local BT = BS and BS.Bag
    if not BT then
        return
    end
    BQ = 0
    BR = {}
    for k, v in pairs(BT) do
        local BS_2 = wD(v) and tostring(xb(v, "isScrape")) == "0" and tostring(xb(v, "lock")) == "0"
        if BS_2 then
            local BS_3 = wP(v.id)
            if BS_3 > 0 then
                local BT_1 = tonumber(xb(v, "magic")) or 0
                BQ = BQ + math.floor(BS_3 * xU(BT_1))
                BR[#BR + 1] = { injuredScrape = 0, onlyID = v.onlyID, perfectScrape = BS_3, magic = BT_1 }
            end
        end
    end
    if #BR == 0 then
        return
    end
    pcall(function()
        fns.RemoteFunction:InvokeServer(zd, { entries = BR, totalScales = BQ, requireAutoUnlock = false })
    end)
end
task.spawn(fns.worker)
Ko_66 = fns.fn11
xy = fns.fn280
fns.Ko_27 = fns.fn187
Ko_97 = fns.fn741
if (CfgFind and CfgFind or false and not fns.Ko_11) and (xf and xf or (not fns.Ko_11 or not fns.Ko_11)) or not ((CfgFind and CfgFind or false and not fns.Ko_11) and (xf and xf or (not fns.Ko_11 or not fns.Ko_11))) then
    xY = fns.fn334
else
    yu = fns.fn334
end
w0 = fns.fn385
Ko_61 = function(fH, fI, fJ)
    if not fI then
        return
    end
    pcall(function()
        TalkFunc:InvokeServer(fH, { npcModel = fI, npcId = fJ })
    end)
end
if ((not yX or ModelFind) and (Ko_52 or ModelFind) and (Ko_52 and not ModelFind or yX and ModelFind) or (Ko_52 and xs and (not ModelFind or false) or (xs and not ModelFind or xl and not yX))) and not ((not yX or ModelFind) and (Ko_52 or ModelFind) and (Ko_52 and not ModelFind or yX and ModelFind) or (Ko_52 and xs and (not ModelFind or false) or (xs and not ModelFind or xl and not yX))) then
    task.spawn(fns.worker2)
    xP = fns.fn1124
else
    task.spawn(fns.worker2)
    fns.Ko_11 = fns.fn1124
end
y5 = fns.Ko_11("fishingrodConf", "Cost")
yX = fns.Ko_11("knifeConf", "price")
yP = fns.Ko_11("fishingbuoyConf", "Cost")
yG = fns.Ko_11("magicpotionConf", "Cost")
local Ko_17 = fns.fn222
local Ko_83 = fns.fn480
xm = Ko_83(yG, 1)
Ko_55 = Ko_83(yG, 2)
xc = fns.fn1091
wF = fns.fn510
yr = fns.fn30
xs = function(gV, gW)
    local Dx = wF()
    local Dy = yr()
    local Dw
    for i, v in ipairs(gV) do
        local Dz = v.cost > 0 and v.cost <= Dy and not Dx[tostring(v.id)]
        if Dz then
            Dw = v
        end
    end
    if Dw then
        pcall(function()
            fns.RemoteFunction:InvokeServer(gW, Dw.id)
        end)
    end
end
task.spawn(function()
    while not yd do
        if wE then
            xs(y5, yy)
        end
        if wy then
            xs(yX, x7)
        end
        if wq then
            xs(yP, ys)
        end
        if next(y9) then
            for i, v in ipairs(yG) do
                local DH
                local DQ = v
                if y9[DQ.name] then
                    local DI = tonumber(DQ.itemType) == 2 and yf
                    DH = DI or yn
                    pcall(function()
                        fns.RemoteFunction:InvokeServer(DH, DQ.id)
                    end)
                    task.wait(0.2)
                end
            end
        end
        task.wait(2)
    end
end)
xP = function(hF, hG)
    local DZ = PlayerData.GetPlrData(LocalPlayer)
    if not DZ or not DZ.Bag then
        return false
    end
    for k, v in pairs(DZ.Bag) do
        local DZ_1 = type(v) == "table" and v.id == hF and v.onlyID
        if DZ_1 then
            yK = true
            local DZ_2 = pcall(function()
                RemoteEvent:FireServer(hG, hF)
            end)
            task.wait(0.4)
            yK = false
            return DZ_2
        end
    end
    return false
end
task.spawn(fns.worker3)
xf = {}
fns.Ko_11 = {}
fns.Ko_99 = CfgFind.GetCfgByName("weatheractiveshopConf") or fns.Ko_11
fns.Ko_11 = fns.Ko_99
for k, v in pairs(fns.Ko_11) do
    if type(v) == "table" then
        fns.Ko_11 = #xf + 1
        fns.Ko_99 = fns.TranslationHelper.translateByKey(v.ZhName)
        Ko_83 = tonumber(v.sort) or 0
        xf[fns.Ko_11] = { index = k, name = fns.Ko_99, sort = Ko_83 }
    end
end
table.sort(xf, fns.fn416)
wA, Ko_47, xR, Ko_58, yo, Ko_87, x8 = nil, nil, nil, nil, nil, nil, nil
wA = {}
Ko_47 = false
task.spawn(function()
    while not yd do
        if Ko_47 then
            for i, v in ipairs(xf) do
                local Er = v
                if wA[Er.name] then
                    pcall(function()
                        fns.RemoteFunction:InvokeServer(x1, { "ActiveShopShop", "1", Er.index })
                    end)
                    task.wait(0.3)
                end
            end
        end
        task.wait(2)
    end
end)
xR = false
Ko_58 = 1
if not Ko_87 or not Ko_87 or Ko_87 and not yo or yo and not yo and (not Ko_87 and not xR) or not (not Ko_87 or not Ko_87 or Ko_87 and not yo or yo and not yo and (not Ko_87 and not xR)) then
    task.spawn(function()
        local Ez = false
        repeat
            if yd then
                Ez = true
            else
                if xR then
                    local Et = workspace:FindFirstChild(yu)
                    local Eu = Et and Et:FindFirstChild(yh)
                    local Ev = Et and Et:FindFirstChild(yq)
                    local Et_2 = Eu
                    local Es = Ev
                    if Et_2 then
                        Et_2 = Eu.Value
                    end
                    if Et_2 then
                        Et_2 = Es
                    end
                    if Et_2 then
                        Et_2 = Es.Value ~= ""
                    end
                    if Et_2 then
                        for i = 1, Ko_58 do
                            local ED = i
                            pcall(function()
                                fns.RemoteFunction:InvokeServer(xT, { sessionId = Es.Value, slotIndex = ED })
                            end)
                            task.wait(0.3)
                        end
                    end
                end
                task.wait(3)
            end
        until Ez
    end)
    yo = false
    Ko_87 = false
    x8 = {}
else
    task.spawn(function()
        local Ez = false
        repeat
            if yd then
                Ez = true
            else
                if xR then
                    local Et = workspace:FindFirstChild(yu)
                    local Eu = Et and Et:FindFirstChild(yh)
                    local Ev = Et and Et:FindFirstChild(yq)
                    local Et_1 = Eu
                    local Es = Ev
                    if Et_1 then
                        Et_1 = Eu.Value
                    end
                    if Et_1 then
                        Et_1 = Es
                    end
                    if Et_1 then
                        Et_1 = Es.Value ~= ""
                    end
                    if Et_1 then
                        for i = 1, Ko_58 do
                            local ED = i
                            pcall(function()
                                fns.RemoteFunction:InvokeServer(xT, { sessionId = Es.Value, slotIndex = ED })
                            end)
                            task.wait(0.3)
                        end
                    end
                end
                task.wait(3)
            end
        until Ez
    end)
    Ko_87 = false
    x8 = false
    yo = {}
end
fns.Ko_11 = {}
fns.Ko_99 = CfgFind.GetCfgByName("seasontaskConf") or fns.Ko_11
fns.Ko_11 = fns.Ko_99
for k, v in pairs(fns.Ko_11) do
    fns.Ko_11 = type(v) == "table" and v.OnlyTag
    if fns.Ko_11 then
        fns.Ko_11 = v.OnlyTag
        fns.Ko_99 = tonumber(v.target) or tonumber(v[5])
        Ko_83 = fns.Ko_99 or 0
        x8[fns.Ko_11] = Ko_83
    end
end
Ko_43, wZ, Ko_85, wM, yE, xq, wG, yc, xe = nil, nil, nil, nil, nil, nil, nil, nil, nil
xq = function(iY)
    for i, v in ipairs({ iY.hourlyTasks, iY.dailyTasks }) do
        if type(v) == "table" then
            for k, v in pairs(v) do
                local ES = k
                local EE = type(v) == "table"
                if EE then
                    local EF_1 = v.claimed or 0
                    EE = tonumber(EF_1) == 0
                end
                if EE then
                    local EE_1 = x8[ES]
                    local EF_2 = tonumber(v.progress) or 0
                    local EG = EE_1
                    if EG then
                        EG = EE_1 > 0
                    end
                    if EG then
                        EG = EF_2 >= EE_1
                    end
                    if EG then
                        pcall(function()
                            fns.RemoteFunction:InvokeServer(xB, ES)
                        end)
                        task.wait(0.3)
                    end
                end
            end
        end
    end
end
task.spawn(fns.worker4)
Ko_43 = false
wZ = false
Ko_85 = false
wM = false
wG = fns.fn139
yc = function()
    local Ff = PlayerData.GetPlrData(LocalPlayer)
    local Fg = Ff and Ff.PetIncubator
    if type(Fg) ~= "table" then
        return
    end
    local Fg_1 = wZ
    if Fg_1 then
        local Fh_1 = Fg.slot2Unlocked or 0
        Fg_1 = tonumber(Fh_1) ~= 1
    end
    if Fg_1 then
        pcall(function()
            fns.RemoteFunction:InvokeServer(xl)
        end)
        task.wait(0.5)
        return
    end
    local Fg_2 = Fg.slot2Unlocked or 0
    local Fh_2 = tonumber(Fg_2) == 1 and 2
    local Fg_3 = Fh_2 or 1
    for i = 1, Fg_3 do
        local Fr = i
        local Fg_4 = Fg.slots and Fg.slots[Fr]
        local Fh_4 = Fg_4
        if Fg_4 then
            Fg_4 = tonumber(Fh_4.eggId)
        end
        local Fi = Fg_4 or 0
        local Fg_5 = Fh_4 and tonumber(Fh_4.finishTime)
        local Fh_5 = Fg_5 or 0
        if Fi > 0 then
            if Fh_5 <= workspace:GetServerTimeNow() then
                pcall(function()
                    fns.RemoteFunction:InvokeServer(xp, Fr)
                end)
                task.wait(0.5)
            end
        else
            local Fd = wG()
            if Fd then
                local Fg_7 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                local Fe = Fg_7
                if Fe then
                    pcall(function()
                        Fe:EquipTool(Fd)
                    end)
                    task.wait(0.3)
                    pcall(function()
                        fns.RemoteFunction:InvokeServer(xv, Fr)
                    end)
                    task.wait(0.5)
                end
            end
        end
    end
end
xe = fns.fn657
task.spawn(function()
    while not yd do
        if Ko_43 then
            pcall(yc)
        end
        if Ko_85 or wM then
            local FI_1 = xe()
            if Ko_85 then
                for i = 1, 2 do
                    local FP = i
                    local FH = FI_1[FP]
                    local FJ = FH
                    if FJ then
                        local FK = FH.using or 0
                        FJ = tonumber(FK) ~= FP
                    end
                    if FJ then
                        pcall(function()
                            fns.RemoteFunction:InvokeServer(xh, { FH.onlyID, FP })
                        end)
                        task.wait(0.3)
                    end
                end
            end
            if wM then
                for i, v in ipairs(FI_1) do
                    local FV = v
                    local FI_2 = FV.using
                    local FY = if FI_2 then 1 else 0
                    local FW = 843 * FY + 1929 * (1 - FY)
                    local FX = 3801 * FY + 1145 * (1 - FY)
                    if not ((FW * 3368 + FX * 1783 + FW * FX) % 16777213 == 12820650) then
                        FI_2 = 0
                    end
                    if tonumber(FI_2) > 0 then
                        pcall(function()
                            fns.RemoteFunction:InvokeServer(xa, FV.onlyID)
                        end)
                        task.wait(0.3)
                    end
                end
            end
        end
        task.wait(4)
    end
end)
yE = {}
fns.Ko_11 = {}
fns.Ko_99 = (CfgFind.GetCfgByName("enchantConf"))
local Ko_75 = if fns.Ko_99 then 1 else 0
local Ko_4 = 3475 * Ko_75 + 1629 * (1 - Ko_75)
local Ko_95 = 1793 * Ko_75 + 1504 * (1 - Ko_75)
if not ((Ko_4 * 757 + Ko_95 * 193 + Ko_4 * Ko_95) % 16777213 == 9207299) then
    fns.Ko_99 = fns.Ko_11
end
fns.Ko_11 = fns.Ko_99
for k, v in pairs(fns.Ko_11) do
    if type(v) == "table" then
        fns.Ko_11 = #yE + 1
        fns.Ko_99 = fns.TranslationHelper.translateByKey(v.ZhName)
        Ko_83 = tonumber(v.xyd) or 0
        yE[fns.Ko_11] = { id = k, name = fns.Ko_99, xyd = Ko_83 }
    end
end
table.sort(yE, fns.fn598)
x0, Ko_82, Ko_74, Mouse, zb, y2, connection4, zc, Ko_93, fns.bodyVelocity, bodyGyro, connection2, fns.Ko_10, yB, xJ, wX, fns.Ko_34, Ko_45, yM, fns.Ko_28, xZ, xA, fns.Ko_32, fns.Ko_6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
x0 = false
Ko_82 = {}
xJ = fns.fn308
task.spawn(function()
    local Ge = false
    repeat
        if yd then
            Ge = true
        else
            local Ga = x0 and next(Ko_82)
            if Ga then
                local Ga_1 = tonumber(xL("NowRodPlaced")) or 0
                local F9 = Ga_1
                local Ga_2 = (tonumber(xL("RodID")))
                local Gh = if Ga_2 then 1 else 0
                local Gf = 1908 * Gh + 440 * (1 - Gh)
                local Gg = 402 * Gh + 501 * (1 - Gh)
                if not ((Gf * 968 + Gg * 1512 + Gf * Gg) % 16777213 == 3221784) then
                    Ga_2 = 0
                end
                local F8 = Ga_2
                if F9 == 0 then
                    if F8 > 0 then
                        pcall(function()
                            RemoteEvent:FireServer(w3, F8)
                        end)
                        task.wait(0.6)
                    end
                else
                    local Ga_3 = xJ()
                    if Ga_3 and Ko_82[Ga_3] then
                        pcall(function()
                            RemoteEvent:FireServer(wQ)
                        end)
                        x0 = false
                        ym.Window:Notify({ title = "Ouroboros Hub", content = "Hit target enchant: " .. Ga_3, duration = 5 })
                    else
                        pcall(function()
                            RemoteEvent:FireServer(wW, F9)
                        end)
                        task.wait(0.6)
                    end
                end
            end
            task.wait(0.4)
        end
    until Ge
end)
Ko_74 = false
wX = fns.fn909
fns.Ko_34 = function()
    local GC_2
    local Position2, Position
    local Gz_1, Gz_3, Gz_4, Gz_5
    local Gy_1, Gy_8
    local Gx = wX()
    if Gx then
        Gy_1, Gz_1 = pcall(function()
            return Gx:GetPivot().Position
        end)
        if Gy_1 then
            return Gz_1
        end
        local Gy_2 = Ko_94()
        local Gz_2 = Gy_2 and Gy_2:FindFirstChild(wo)
        local Gy_3 = Gz_2
        if Gz_4 then
            Gz_2 = Gy_3:FindFirstChild(fns.Ko_24)
        end
        local Gy_4 = Gz_2
        if not Gy_8 then
            return nil
        end
        Position2, Gz_3 = nil, nil
        local GB_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not GC_2 then
            return nil
        end
        for i, child in ipairs(Gy_4:GetChildren()) do
            if child:IsA("BasePart") then
                local Magnitude = (child.Position - GB_1.Position).Magnitude
                if not Gz_3 or Magnitude < Gz_3 then
                    Position2, Gz_3 = child.Position, Magnitude
                end
            end
        end
        return Position2
    end
    local Gy_6 = Ko_94()
    Gz_4 = Gy_6 and Gy_6:FindFirstChild(wo)
    local Gy_7 = Gz_4
    if Gz_4 then
        Gz_4 = Gy_7:FindFirstChild(fns.Ko_24)
    end
    Gy_8 = Gz_4
    if not Gy_8 then
        return nil
    end
    Position, Gz_5 = nil, nil
    local GB_3 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    GC_2 = GB_3
    if not GC_2 then
        return nil
    end
    for i, child in ipairs(Gy_8:GetChildren()) do
        if child:IsA("BasePart") then
            local Magnitude = (child.Position - GC_2.Position).Magnitude
            if not Gz_5 or Magnitude < Gz_5 then
                Position, Gz_5 = child.Position, Magnitude
            end
        end
    end
    return Position
end
Ko_45 = fns.fn177
task.spawn(fns.worker5)
Mouse = LocalPlayer:GetMouse()
zb = false
y2 = 16
yM = function()
    local G0
    local Character = LocalPlayer.Character
    local G2 = Character and Character:FindFirstChildOfClass("Humanoid")
    G0 = G2
    if not G0 then
        return
    end
    if connection4 then
        connection4:Disconnect()
    end
    connection4 = G0:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if zb and G0.WalkSpeed ~= y2 then
            G0.WalkSpeed = y2
        end
    end)
    if zb then
        G0.WalkSpeed = y2
    end
end
LocalPlayer.CharacterAdded:Connect(fns.onCharacterAdded)
task.spawn(fns.worker6)
zc = false
Ko_93 = 60
fns.Ko_28 = fns.fn289
xZ = fns.fn599
fns.Ko_10 = false
RunService.Stepped:Connect(fns.onStepped)
xA = fns.fn621
fns.Ko_32 = fns.fn1110
fns.Ko_6 = function(nB)
    local HF
    HF = nil
    local HG = Ko_94()
    local HG_1
    local HH = HG and HG:FindFirstChild(nB)
    local HH_1
    HF = HH
    if not HF then
        return nil
    end
    HG_1, HH_1 = pcall(function()
        local HC = HF:IsA("BasePart") and HF.Position
        local HD = HC or HF:GetPivot().Position
        return HD
    end)
    return HG_1 and HH_1 or nil
end
yB = {
    ["Sell NPC"] = function()
        local HN
        HN = nil
        local HP_1
        local HO_1
        HN = xY()
        if not HN then
            return nil
        end
        HO_1, HP_1 = pcall(function()
            return HN:GetPivot().Position
        end)
        return HO_1 and HP_1 or nil
    end,
    Shop = fns.fn787,
    ["Rod Enchant Table"] = fns.fn75,
    Incubator = fns.fn874,
    ["Pet Event Region"] = fns.fn29,
    ["Travelling Merchant"] = fns.fn1107,
    ["Group Chest"] = fns.fn795,
    ["Event NPC"] = function()
        local HS
        HS = nil
        local HU_1
        local HT_1
        HS = w0()
        if not HS then
            return nil
        end
        HT_1, HU_1 = pcall(function()
            return HS:GetPivot().Position
        end)
        return HT_1 and HU_1 or nil
    end,
    Vortex = fns.fn922
}
Ko_83 = {}
for k in pairs(yB) do
    Ko_83[#Ko_83 + 1] = k
end
fns.Ko_19, yb, billboardGui, fns.connection3, xN, xD, xM, w9, w1, Window, fns.Ko_13, wN, yL, Ko_77, xn, Ko_40, Ko_42, w_, y1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(Ko_83)
fns.Ko_19 = Ko_83[1]
yb = false
xN = {}
xD = "Ouroboros Hub"
fns.Ko_13 = fns.fn1060
wN = fns.fn789
yL = fns.fn615
Ko_77 = fns.fn870
task.spawn(fns.worker7)
task.spawn(fns.worker8)
xn = fns.fn411
Ko_40 = fns.fn878
Ko_42 = fns.fn1058
xM = false
task.spawn(fns.worker9)
w9 = true
if (xD and xD or (xD or not xn)) and (not xn and not billboardGui and (not xD or xD)) and (xD or not w1 or not w1 and not xD or (not w1 or not xD) and (billboardGui or billboardGui)) and (not w1 and not xn and (xn and not xD) or xn and w1 and (not w1 and w1) or (not xD and billboardGui and (not w1 and xn) or (not w1 or billboardGui) and (xD or xn))) or not ((xD and xD or (xD or not xn)) and (not xn and not billboardGui and (not xD or xD)) and (xD or not w1 or not w1 and not xD or (not w1 or not xD) and (billboardGui or billboardGui)) and (not w1 and not xn and (xn and not xD) or xn and w1 and (not w1 and w1) or (not xD and billboardGui and (not w1 and xn) or (not w1 or billboardGui) and (xD or xn)))) then
    w_ = fns.fn115
else
    xD = fns.fn115
end
task.spawn(fns.worker10)
Window = ym:CreateWindow({
    name = "Scale Slimy Fish",
    subtitle = "Ouroboros Hub",
    theme = { AccentColor = xV, AccentStroke = Color3.fromRGB(178, 195, 255) },
    configuration = { autoSave = true, autoLoad = true, fileName = "ScaleSlimyFish", customFolder = "OuroborosHub" }
})
ym.Window = Window
y1 = fns.fn881
fns.Ko_11 = Window:CreateTab({ name = "Fishing" })
fns.Ko_11:CreateSection({ name = "Fishing" })
fns.Ko_11:CreateToggle({ name = "Auto Fish", flag = "AutoFish", value = false, callback = fns.fn838 })
fns.Ko_11:CreateToggle({ name = "Fish Anywhere", flag = "FishAnywhere", value = true, callback = fns.fn268 })
fns.Ko_11:CreateSlider({
    name = "Cast Power",
    flag = "CastPower",
    range = { 0, 1 },
    increment = 0.01,
    value = 1,
    callback = fns.fn208
})
fns.Ko_11:CreateSection({ name = "Scaling" })
fns.Ko_11:CreateToggle({ name = "Auto Scrape All Fish", flag = "AutoScrape", value = false, callback = fns.fn294 })
fns.Ko_11:CreateSection({ name = "Consumables" })
fns.Ko_11:CreateDropdown({
    name = "Auto Use Potions",
    flag = "AutoUsePotions",
    options = Ko_17(xm),
    multiSelect = true,
    value = {},
    callback = fns.fn734
})
fns.Ko_11:CreateDropdown({
    name = "Auto Use Totems",
    flag = "AutoUseTotems",
    options = Ko_17(Ko_55),
    multiSelect = true,
    value = {},
    callback = fns.fn457
})
Ko_67 = Window:CreateTab({ name = "Selling" })
Ko_67:CreateSection({ name = "Auto Sell" })
Ko_67:CreateToggle({ name = "Auto Sell Scraped Fish", flag = "AutoSellScraped", value = false, callback = fns.fn13 })
Ko_67:CreateToggle({
    name = "Auto Sell Unscraped Fish",
    flag = "AutoSellUnscraped",
    value = false,
    callback = fns.fn1014
})
Ko_67:CreateToggle({ name = "Auto Sell Event Fish", flag = "AutoSellEvent", value = false, callback = fns.fn572 })
Ko_67:CreateSection({ name = "Teleport" })
Ko_67:CreateDropdown({
    name = "Destination",
    flag = "TeleportTarget",
    options = Ko_83,
    value = fns.Ko_19,
    callback = fns.fn1114
})
Ko_67:CreateButton({ name = "Teleport", callback = fns.fn138 })
fns.fn212(Ko_67)
local Ko_50 = Window:CreateTab({ name = "Shop" })
Ko_50:CreateSection({ name = "Auto Buy" })
Ko_50:CreateToggle({ name = "Auto Buy Best Affordable Rod", flag = "AutoBuyRod", value = false, callback = fns.fn117 })
Ko_50:CreateToggle({
    name = "Auto Buy Best Affordable Knife",
    flag = "AutoBuyKnife",
    value = false,
    callback = fns.fn427
})
Ko_50:CreateToggle({
    name = "Auto Buy Best Affordable Bait",
    flag = "AutoBuyBait",
    value = false,
    callback = fns.fn526
})
Ko_50:CreateDropdown({
    name = "Auto Buy Potions & Totems",
    flag = "AutoBuyPotions",
    options = Ko_17(yG),
    multiSelect = true,
    value = {},
    callback = fns.fn311
})
Ko_50:CreateSection({ name = "Starlight Shop" })
local Ko_33 = {}
for i, v in ipairs(xf) do
    Ko_33[#Ko_33 + 1] = v.name
end
wz, wu = nil, nil
Ko_50:CreateDropdown({
    name = "Starlight Items",
    flag = "StarlightItems",
    options = Ko_33,
    multiSelect = true,
    value = {},
    callback = fns.fn466
})
Ko_50:CreateToggle({
    name = "Auto Buy Starlight Items",
    flag = "AutoBuyStarlight",
    value = false,
    callback = fns.fn839
})
Ko_50:CreateSection({ name = "Travelling Merchant" })
Ko_50:CreateToggle({ name = "Auto Buy Merchant Stock", flag = "AutoBuyMerchant", value = false, callback = fns.fn941 })
Ko_50:CreateSlider({
    name = "Merchant Slots",
    flag = "MerchantSlots",
    range = { 1, 6 },
    increment = 1,
    value = 1,
    callback = fns.fn626
})
fns.Ko_11 = Window:CreateTab({ name = "Season" })
fns.Ko_11:CreateSection({ name = "Battle Pass" })
fns.Ko_11:CreateToggle({
    name = "Auto Claim Level Rewards",
    flag = "AutoClaimSeasonLevels",
    value = false,
    callback = fns.fn252
})
fns.Ko_11:CreateToggle({
    name = "Auto Claim Finished Tasks",
    flag = "AutoClaimSeasonTasks",
    value = false,
    callback = fns.fn245
})
wz = fns.Ko_11:CreateStat({ name = "Season Level", value = 0 })
wu = fns.Ko_11:CreateStat({ name = "Season EXP", value = 0 })
task.spawn(function()
    local JN = false
    repeat
        if yd then
            JN = true
        else
            local JJ = PlayerData.GetPlrData(LocalPlayer)
            local JI = JJ and JJ.Season
            if type(JI) == "table" then
                pcall(function()
                    local JG = tonumber(JI.level) or 0
                    wz:Set(JG)
                    local JG_1 = tonumber(JI.exp) or 0
                    wu:Set(JG_1)
                end)
            end
            task.wait(5)
        end
    until JN
end)
fns.Ko_99 = Window:CreateTab({ name = "Pets" })
fns.Ko_99:CreateSection({ name = "Incubator" })
fns.Ko_99:CreateToggle({ name = "Auto Hatch Eggs", flag = "AutoHatch", value = false, callback = fns.fn190 })
fns.Ko_99:CreateToggle({ name = "Auto Unlock Second Slot", flag = "AutoUnlockSlot2", value = false, callback = fns.fn718 })
fns.Ko_99:CreateSection({ name = "Pets" })
fns.Ko_99:CreateToggle({ name = "Auto Equip Best Pets", flag = "AutoEquipPets", value = false, callback = fns.fn835 })
fns.Ko_99:CreateToggle({
    name = "Auto Upgrade Equipped Pets",
    flag = "AutoUpgradePets",
    value = false,
    callback = fns.fn1101
})
Ko_17 = Window:CreateTab({ name = "Enchant" })
Ko_17:CreateSection({ name = "Rod Enchanting" })
Ko_67 = {}
for i, v in ipairs(yE) do
    Ko_67[#Ko_67 + 1] = v.name
end
ye, fns.connection = nil, nil
Ko_17:CreateDropdown({
    name = "Target Enchants",
    flag = "TargetEnchants",
    options = Ko_67,
    multiSelect = true,
    value = {},
    callback = fns.fn1061
})
Ko_17:CreateToggle({ name = "Auto Enchant Until Target", flag = "AutoEnchant", value = false, callback = fns.fn746 })
Ko_17:CreateButton({ name = "Take Rod Off Table", callback = fns.fn745 })
Ko_83 = Window:CreateTab({ name = "Weather" })
Ko_83:CreateSection({ name = "Vortex Event" })
Ko_83:CreateToggle({ name = "Auto Vortex", flag = "AutoVortex", value = false, callback = fns.fn149 })
Ko_83:CreateButton({ name = "Teleport to Vortex", callback = fns.fn99 })
fns.Ko_11 = Window:CreateTab({ name = "Player" })
fns.Ko_11:CreateSection({ name = "Movement" })
fns.Ko_11:CreateToggle({ name = "Walk Speed", flag = "WalkSpeedToggle", value = false, callback = fns.fn681 })
fns.Ko_11:CreateSlider({
    name = "Walk Speed Amount",
    flag = "WalkSpeedValue",
    range = { 16, 250 },
    increment = 1,
    value = 16,
    callback = fns.fn677
})
ye = fns.Ko_11:CreateToggle({ name = "Fly", flag = "FlyToggle", value = false, callback = fns.fn666 })
fns.Ko_11:CreateKeybind({ name = "Fly Keybind", flag = "FlyKey", value = Enum.KeyCode.F, callback = fns.fn1041 })
fns.Ko_11:CreateSlider({
    name = "Fly Speed",
    flag = "FlySpeed",
    range = { 10, 400 },
    increment = 1,
    value = 60,
    callback = fns.fn517
})
fns.Ko_11:CreateToggle({ name = "Noclip", flag = "NoclipToggle", value = false, callback = fns.fn246 })
fns.Ko_11:CreateKeybind({ name = "Click Teleport", flag = "ClickTeleportKey", value = Enum.KeyCode.T, callback = fns.fn270 })
fns.Ko_11:CreateSection({ name = "Disguise" })
fns.Ko_11:CreateToggle({ name = "Hide Name", flag = "HideNameToggle", value = false, callback = fns.fn1049 })
fns.Ko_11:CreateToggle({ name = "Hide Avatar", flag = "HideAvatarToggle", value = false, callback = fns.fn211 })
fns.Ko_11:CreateSection({ name = "Server" })
fns.Ko_11:CreateButton({ name = "Server Hop", callback = fns.fn690 })
fns.Ko_11:CreateButton({ name = "Rejoin", callback = fns.fn852 })
fns.Ko_11:CreateToggle({
    name = "Leave if Server isn't Empty",
    flag = "LeaveIfNotEmpty",
    value = false,
    callback = fns.fn659
})
fns.fn212(fns.Ko_11)
fns.Ko_99 = Window:CreateTab({ name = "Misc" })
fns.Ko_99:CreateSection({ name = "Misc" })
fns.Ko_99:CreateToggle({ name = "Anti-AFK", flag = "AntiAfk", value = true, callback = fns.fn1125 })
fns.Ko_99:CreateButton({ name = "Unload", callback = fns.fn192 })
fns.fn212(fns.Ko_99)
w1 = LocalPlayer.Idled:Connect(w_)
Ko_91(true)
