local h5
local iQ
local Library
local ib
local iW
local iD
local ResEgg
local i1
local connection
local iq
local iP
local iw
local Options
local iV
local iC
local connection2
local VirtualUser
local Asset
local ip
local h3
local iO
local PetRE
local ResPetFood
local Time
local CharacterRE
local ih
local i_
local iH
local io
local h2
local iN
local iu
local ReplicatedStorage
local iT
local iA
local ig
local iZ
local iG
local Label2
local h1
local iM
local it
local h7
local iS
local Pets2
local Toggles
local iY
local iF
local il
local iL
local is
local h6
local Label
local iy
local Label3
local iX
local Egg
local ik
local iK
local ir
local function fn21()
    local jR_1
    local jQ_1
    if identifyexecutor then
        jR_1, jQ_1 = identifyexecutor()
        local jS = jR_1 ~= ""
        local jT = type(jR_1) == "string" and jS
        if jT then
            local jS_1 = type(jQ_1) == "string" and jQ_1 ~= "" and jR_1 .. " " .. jQ_1
            ir = jS_1 or jR_1
        end
    end
end
local function fn36(R)
    local DiscordGroup = R:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ih })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ih })
end
local function autoSellPetsLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AutoSellPets.Value then
            pcall(iL)
        end
        if Toggles.AutoSellEggs.Value then
            pcall(iD)
        end
    end
end
local function fn92()
    iu(iP)
    Library:Notify("Copied Discord invite to clipboard")
end
local function onInputChanged(fI)
    local UserInputType = fI.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        iC = tick()
    end
end
local function fn103()
    local mC = {}
    for i, child in Pets2:GetChildren() do
        local mD = not child:GetAttribute("D") and not child:GetAttribute("BPV")
        if mD then
            table.insert(mC, child)
        end
    end
    return mC
end
local function fn107()
    ik(function()
        local no = i1()
        if not no then
            return
        end
        CharacterRE:FireServer("Focus", no)
        task.wait(0.2)
        for k, v in h2() do
            local np = Asset:GetAttribute(no) or 0
            if np <= 0 then
                return
            end
            PetRE:FireServer("Feed", v.model.Name)
            task.wait(0.15)
        end
    end)
end
local function fn122(a7)
    local j5_1
    local j4_1
    if is then
        return false
    end
    is = true
    j4_1, j5_1 = pcall(a7)
    is = false
    if not j4_1 then
        error(j5_1, 0)
    end
    return true
end
local function fn127()
    ik(function()
        local Value = Options.ReplaceStat.Value
        local mM
        local mN
        for k, v in h2() do
            local mO_1 = it(v.entry, Value)
            if mN == nil or mO_1 < mN then
                mM = v
                mN = mO_1
            end
        end
        local mP_2 = nil
        local mO_2 = nil
        for k, v in ib() do
            local mQ_1 = it(v, Value)
            if mO_2 == nil or mQ_1 > mO_2 then
                mP_2 = v
                mO_2 = mQ_1
            end
        end
        local mL_1 = not mP_2
        local mQ_2 = not mM
        local m6 = if mQ_2 then 1 else 0
        local m4 = 3011 * m6 + 359 * (1 - m6)
        local m5 = 3135 * m6 + 2087 * (1 - m6)
        if not ((m4 * 284 + m5 * 1905 + m4 * m5) % 16777213 == 16266784) then
            mQ_2 = mL_1
        end
        if mQ_2 then
            return
        end
        if mO_2 <= mN * (1 + Options.ReplaceImprovement.Value / 100) then
            return
        end
        local Position = mM.model.Position
        local attr = Time:GetAttribute("s")
        local mO_3 = not attr
        local m9 = if mO_3 then 1 else 0
        local m7 = 2032 * m9 + 2862 * (1 - m9)
        local m8 = 1371 * m9 + 3989 * (1 - m9)
        if not ((m7 * 1798 + m8 * 784 + m7 * m8) % 16777213 == 7514272) then
            mO_3 = Time.Value <= 0
        end
        if mO_3 then
            return
        end
        CharacterRE:FireServer("Del", mM.model.Name, bit32.bxor(iS.UserId, attr, Time.Value))
        local mN_2 = os.clock()
        while true do
            local mO_4 = mM.model.Parent and os.clock() - mN_2 < 3
            if mO_4 then
                task.wait(0.1)
                continue
            end
            break
        end
        if mM.model.Parent then
            return
        end
        CharacterRE:FireServer("Focus", mP_2.Name)
        task.wait(0.2)
        CharacterRE:FireServer("Place", { DST = Position, ID = mP_2.Name })
    end)
end
local function fn129(ds, dt)
    local mp = ds:GetAttributes()
    if dt == "Weight" then
        local mq_1 = tonumber(iX:GetWeight(mp.T, mp.V, mp.Elite)) or 0
        return mq_1
    end
    local mq_2 = tonumber(iX:GetPetProduce(mp, 1)) or 0
    return mq_2
end
local function fn133()
    local attr = iS:GetAttribute("AssignedIslandName")
    if not attr then
        return nil
    end
    local j8 = workspace:FindFirstChild("Art") and workspace.Art:FindFirstChild(attr)
    return j8, attr
end
local function fn143()
    local nA = iY()
    if not nA then
        return 0
    end
    local nB = iQ(nA)
    local nC = h5()
    local nD = 0
    for i, child in nA:GetChildren() do
        local nA_1 = child:IsA("BasePart") and string.match(child.Name, "^Farm_split")
        if nA_1 then
            local Position = child.Position
            local nE = false
            for k, v in nB do
                local nF_1 = math.abs(Position.X - v.position.X) <= v.size.X * 0.5 and math.abs(Position.Z - v.position.Z) <= v.size.Z * 0.5
                if nF_1 then
                    nE = true
                    break
                end
            end
            if not nE then
                for k, v in nC do
                    local nF_2 = math.abs(v.X - Position.X) < 4 and math.abs(v.Z - Position.Z) < 4
                    if nF_2 then
                        nE = true
                        break
                    end
                end
            end
            if not nE then
                nD = nD + 1
            end
        end
    end
    return nD
end
local function fn151(bg)
    for k in bg do
        return true
    end
    return false
end
local function fn152(aa, ab, ac)
    return string.format("<b>%s</b> %s %s", aa, il("-", "#5a6070"), il(ab, ac))
end
local function autoReplacePetsLoop()
    while not Library.Unloaded do
        task.wait(Options.ReplaceDelay.Value)
        if Toggles.AutoReplacePets.Value then
            pcall(iM)
        end
    end
end
local function fn173(a3, a4)
    if a3 == "Any" then
        return true
    elseif a4 == "Any" then
        return false
    else
        return a3 < a4
    end
end
local function fn201(X, Y)
    return string.format('<font color="%s">%s</font>', Y, X)
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        local n1 = Asset:GetAttribute("Coin") or 0
        Label2:SetText(h7("Coins", tostring(n1), iA))
        Label3:SetText(h7("Free tiles", tostring(iZ()), iG))
    end
end
local function autoFeedPetsLoop()
    while not Library.Unloaded do
        task.wait(Options.FeedDelay.Value)
        if Toggles.AutoFeedPets.Value then
            pcall(iV)
        end
    end
end
local function fn281()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iw = tick()
end
local function fn293(bY)
    local kT = {}
    for k, v in iy(bY) do
        table.insert(kT, { position = v.Position, size = v.Size })
    end
    return kT
end
local function fn295(bP)
    local kJ = {}
    local ENV = bP:FindFirstChild("ENV")
    local kL = ENV and ENV:FindFirstChild("Locks")
    if not kL then
        return kJ
    end
    for i, child in kL:GetChildren() do
        local Farm = child:FindFirstChild("Farm")
        local kL_1 = Farm and Farm:GetAttribute("Unlock") == false
        if kL_1 then
            table.insert(kJ, Farm)
        end
    end
    return kJ
end
local function fn297()
    local k4_1
    local k3_1
    local k0 = iY()
    if not k0 then
        return
    end
    local k1 = Asset:GetAttribute("Coin") or 0
    k4_1, k3_1 = nil, nil
    for k, v in iy(k0) do
        local attr = v:GetAttribute("LockCost")
        if attr and (not k3_1 or attr < k3_1) then
            k4_1 = v
            k3_1 = attr
        end
    end
    if k4_1 and k3_1 <= k1 then
        CharacterRE:FireServer("Unlock", k4_1)
    end
end
local function autoBuyEggLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoBuyEgg.Value then
            pcall(h3)
        end
    end
end
local function fn315()
    local ms = {}
    local Pets = workspace:FindFirstChild("Pets")
    if not Pets then
        return ms
    end
    for i, child in Pets:GetChildren() do
        local mt_1 = child:GetAttribute("UserId") == iS.UserId and child:HasTag("IdlePet")
        if mt_1 then
            local mt_2 = Pets2:FindFirstChild(child.Name)
            local mu = mt_2 and not mt_2:GetAttribute("BPV")
            if mu then
                table.insert(ms, { entry = mt_2, model = child })
            end
        end
    end
    return ms
end
local function fn323(bj, bk)
    local kf = ResEgg[bj]
    local Value2
    if not kf then
        return false
    end
    local Value4 = Options.EggRarities.Value
    local kg_4, kg_6
    if iF(Value4) then
        local kh_1 = false
        for k in Value4 do
            if iT[k] == kf.Rarity then
                kh_1 = true
                break
            end
        end
        if not kh_1 then
            return false
        end
        local Value3 = Options.EggTypes.Value
        if iF(Value2) then
            for k in Value3 do
                if iO[k] == bj then
                    break
                end
            end
            if not kg_4 then
                return false
            end
            local Value = Options.EggMutations.Value
            local kg_2 = (iF(Value))
            if kg_6 then
                return false
            end
            return true
        end
        local Value = Options.EggMutations.Value
        local kg_3 = (iF(Value))
        if kg_6 then
            return false
        end
        return true
    end
    Value2 = Options.EggTypes.Value
    if iF(Value2) then
        kg_4 = false
        for k in Value2 do
            if iO[k] == bj then
                kg_4 = true
                break
            end
        end
        if not kg_4 then
            return false
        end
        local Value = Options.EggMutations.Value
        local kg_5 = (iF(Value))
        if kg_6 then
            return false
        end
        return true
    end
    local Value = Options.EggMutations.Value
    kg_6 = (iF(Value))
    if kg_6 then
        kg_6 = not Value[bk or "Base"]
    end
    if kg_6 then
        return false
    end
    return true
end
local function worker()
    local jZ_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local jY = math.floor(os.clock() - ig)
        if jY < 60 then
            jZ_1 = jY .. "s"
        elseif jY < 3600 then
            jZ_1 = string.format("%dm %ds", jY // 60, jY % 60)
        else
            jZ_1 = string.format("%dh %dm", jY // 3600, jY % 3600 // 60)
        end
        Label:SetText(h7("Session time", jZ_1, iA))
    end
end
local function onUnload()
    Library:Unload()
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local oo = tick() - iC
            local op = tick() - iw
            if oo >= 300 and op >= 60 then
                pcall(h6)
            else
                if oo < 300 and op >= 300 then
                    pcall(h6)
                end
            end
        end
    end
end
local function fn345()
    local lt = iY()
    if not lt then
        return nil
    end
    local lu = iQ(lt)
    local lv = h5()
    for i, child in lt:GetChildren() do
        local lt_1 = child:IsA("BasePart") and string.match(child.Name, "^Farm_split")
        if lt_1 then
            local Position = child.Position
            local lw = false
            for k, v in lu do
                local lx_1 = math.abs(Position.X - v.position.X) <= v.size.X * 0.5 and math.abs(Position.Z - v.position.Z) <= v.size.Z * 0.5
                if lx_1 then
                    lw = true
                    break
                end
            end
            if not lw then
                for k, v in lv do
                    local lx_2 = math.abs(v.X - Position.X) < 4 and math.abs(v.Z - Position.Z) < 4
                    if lx_2 then
                        lw = true
                        break
                    end
                end
            end
            if not lw then
                return child
            end
        end
    end
    return nil
end
local function fn357(J)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
end
local function fn375()
    ik(function()
        for i, child in Egg:GetChildren() do
            if not child:GetAttribute("D") then
                local lR = ip()
                if not lR then
                    return
                end
                CharacterRE:FireServer("Focus", child.Name)
                task.wait(0.2)
                CharacterRE:FireServer("Place", { DST = lR.Position + Vector3.new(0, lR.Size.Y * 0.5, 0), ID = child.Name })
                task.wait(0.6)
            end
        end
    end)
end
local function fn395()
    PetRE:FireServer("SellAll", "All", "Pet")
end
local function autoHatchEggLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoHatchEgg.Value then
            pcall(i_)
        end
    end
end
local function fn409()
    PetRE:FireServer("SellAll", "All", "Egg")
end
local function fn478()
    local Value = Options.FeedFood.Value
    local nb = Value ~= "Any"
    if nb then
        local nc_1 = (Asset:GetAttribute(Value))
        local nh = if nc_1 then 1 else 0
        local nf = 3670 * nh + 2983 * (1 - nh)
        local ng = 3809 * nh + 1307 * (1 - nh)
        if not ((nf * 1436 + ng * 3201 + nf * ng) % 16777213 == 14664546) then
            nc_1 = 0
        end
        nb = nc_1 > 0
    end
    if nb then
        return Value
    end
    local nb_1 = nil
    local na_1 = nil
    for k, v in ResPetFood.__index do
        local nc_2 = Asset:GetAttribute(v) or 0
        if nc_2 > 0 then
            local nc_3 = ResPetFood[v]
            local nd_1 = nc_3 and nc_3.FeedValue or 0
            if na_1 == nil or nd_1 > na_1 then
                nb_1 = v
                na_1 = nd_1
            end
        end
    end
    return nb_1
end
local function onCopyJoinScript_JobID()
    iu(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, iN))
    Library:Notify("Copied join script to clipboard")
end
local function onRscripts()
    iu(iK)
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn510()
    local kz_1
    local ky_1
    ky_1, kz_1 = iY()
    if not kz_1 then
        return
    end
    local Eggs = ReplicatedStorage:FindFirstChild("Eggs")
    local kA = Eggs and Eggs:FindFirstChild(kz_1)
    if not kA then
        return
    end
    local kz_2 = Asset:GetAttribute("Coin") or 0
    local kA_1 = kz_2
    for i, child in kA:GetChildren() do
        local attr2 = child:GetAttribute("T")
        local attr = child:GetAttribute("M")
        local kB = attr2 and iq(attr2, attr)
        if kB then
            local kB_1 = h1:GetPrice({ T = attr2, M = attr })
            if kB_1 and kA_1 >= kB_1 then
                CharacterRE:FireServer("BuyEgg", child.Name, true)
                kA_1 = kA_1 - kB_1
                task.wait(0.15)
            end
        end
    end
end
local function autoBuyTileLoop()
    while not Library.Unloaded do
        task.wait(3)
        if Toggles.AutoBuyTile.Value then
            pcall(io)
        end
    end
end
local function autoPlaceEggLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoPlaceEgg.Value then
            pcall(iW)
        end
    end
end
local function onInputBegan()
    iC = tick()
end
local function autoClaimCoinLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoClaimCoin.Value then
            pcall(iH)
        end
    end
end
local function fn613()
    connection:Disconnect()
    connection2:Disconnect()
end
h1 = nil
h2 = nil
h3 = nil
h5 = nil
h6 = nil
h7 = nil
ReplicatedStorage = nil
ResPetFood = nil
Options = nil
ib = nil
Label3 = nil
Toggles = nil
ig = nil
ih = nil
connection2 = nil
ResEgg = nil
ik = nil
il = nil
Label2 = nil
io = nil
ip = nil
iq = nil
ir = nil
is = nil
it = nil
iu = nil
PetRE = nil
iw = nil
Library = nil
iy = nil
Pets2 = nil
iA = nil
CharacterRE = nil
iC = nil
iD = nil
Egg = nil
iF = nil
iG = nil
iH = nil
Asset = nil
connection = nil
iK = nil
iL = nil
iM = nil
iN = nil
iO = nil
iP = nil
iQ = nil
Label = nil
local h4
iS = nil
iT = nil
Time = nil
iV = nil
iW = nil
iX = nil
iY = nil
iZ = nil
i_ = nil
VirtualUser = nil
i1 = nil
local jh, ji, jj, jk, jl, jm
local i6_1
local i5_1, SocialsGroup
local Players = game:GetService("Players")
local i3_2, FaqGroup
local i4 = Players.LocalPlayer or Players.PlayerAdded:Wait()
local AccountGroup
iS = i4
local function i2()
    return iS:WaitForChild("PlayerGui")
end
if getgenv then
    getgenv().gethui = i2
end
Library, Toggles, Options, ReplicatedStorage, VirtualUser, iP, iK, CharacterRE, PetRE, ResEgg, ResPetFood, h1, iX, Time, Asset, Egg, Pets2, iu, ih = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
_G.gethui = i2
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
local jb = "Build a Zoo"
iP = "https://discord.gg/ehKVq7pf7v"
iK = "https://rscripts.net/@Ouroboros"
local i7 = ReplicatedStorage:WaitForChild("Remote")
CharacterRE = i7:WaitForChild("CharacterRE")
PetRE = i7:WaitForChild("PetRE")
local Config = ReplicatedStorage:WaitForChild("Config")
ResEgg = require(Config:WaitForChild("ResEgg"))
local ResMutate = require(Config:WaitForChild("ResMutate"))
ResPetFood = require(Config:WaitForChild("ResPetFood"))
local Shared = require(ReplicatedStorage:WaitForChild("Shared"))
h1 = Shared("ItemUtil")
iX = Shared("Pet")
Time = ReplicatedStorage:WaitForChild("Time")
local Data = iS:WaitForChild("PlayerGui"):WaitForChild("Data")
local FeaturesGroup
Asset = Data:WaitForChild("Asset")
Egg = Data:WaitForChild("Egg")
Pets2 = Data:WaitForChild("Pets")
iu = fn357
ih = fn92
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = iP, Copyable = true }, "|", jb },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local ScriptsGroup
local jg = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "egg"),
    Settings = Window:AddTab("Settings", "settings")
}
jg.Eggs = jg.Main:AddSubTab("Eggs", "shopping-cart")
jg.Farm = jg.Main:AddSubTab("Farm", "trees")
jg.Pets = jg.Main:AddSubTab("Pets", "paw-print")
local ja_2, MenuGroup
for k, v in jg do
    if v ~= jg.Main then
        fn36(v)
    end
end
i3_2, iG, iA, i6_1, ir, AccountGroup, i7, Label, iN, i5_1, il, h7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local i2_1 = 40
repeat
    local i8_1 = (i2_1 * 5 + 5) % 8 + 1
    if i8_1 <= 4 then
        if i8_1 <= 2 then
            if i8_1 <= 1 then
                local i9_1 = {
                    "etrk",
                    "lneypptll",
                    "wmtoujchoim",
                    "twvfhkmftwp",
                    "mjxwxdjbk",
                    "kas",
                    "vgu",
                    "rvmrlzsoz",
                    "kcdwnpac",
                    "dssfs"
                }
                local o9 = i2_1
                local ja_1 = i9_1[o9 % 10 + 1]
                if ja_1:len() <= ja_1:gsub("(.)", "%1%1", o9 % 3 % 2 + 1):len() then
                    iG = "#6ec1ff"
                else
                    iA = "#6ec1ff"
                end
                i2_1 = (i2_1 + 13) % 64
            else
                local pG = bit32.rrotate(bit32.bxor(bit32.lrotate(i2_1, 2), string.byte(tostring(i7))), 11)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(pG, 3074170847), 2558512703), (bit32.bxor(bit32.band(pG, 1220796448), 2304529283))), 2558512703), 2304529283) == pG then
                    iA = "#e8a34d"
                else
                    iG = "#e8a34d"
                end
                i2_1 = (i2_1 + 5) % 64
            end
        elseif i8_1 <= 3 then
            if i2_1 * 24528721 + 8 + 7 <= i2_1 * 24528721 + 8 + 7 + 2 then
                i6_1 = "#8b93a3"
                ir = "Unknown"
                pcall(fn21)
                AccountGroup = jg.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(h7("User", iS.Name, i3_2), true)
                AccountGroup:AddLabel(h7("Status", "Keyless", i3_2), true)
                AccountGroup:AddLabel(h7("Executor", ir, i3_2), true)
                i7 = jg.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                i7:AddLabel(il(jb .. " [" .. tostring(game.PlaceId) .. "]", iG), true)
                i7:AddLabel(h7("Place ID", tostring(game.PlaceId), iG), true)
                Label = i7:AddLabel(h7("Session time", "0s", iA), true)
            else
                i3_2 = "#8b93a3"
                il = "Unknown"
                pcall(fn21)
                jg = i7.Info:AddLeftGroupbox("Account", "circle-user")
                jg:AddLabel(jb("User", h7.Name, iG), true)
                jg:AddLabel(jb("Status", "Keyless", iG), true)
                jg:AddLabel(jb("Executor", il, iG), true)
                i6_1 = i7.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                i6_1:AddLabel(iS(AccountGroup .. " [" .. tostring(game.PlaceId) .. "]", ir), true)
                i6_1:AddLabel(jb("Place ID", tostring(game.PlaceId), ir), true)
                iA = i6_1:AddLabel(jb("Session time", "0s", Label), true)
            end
            i2_1 = (i2_1 + 13) % 64
        else
            if i2_1 * 5259291 + 1 + 7 >= i2_1 * 5259291 + 1 + 7 + 6 then
                i3_2 = tostring(game.JobId)
            else
                iN = tostring(game.JobId)
            end
            i2_1 = (i2_1 + 61) % 64
        end
    elseif i8_1 <= 6 then
        if i8_1 <= 5 then
            local i9_2 = { "pkokx", "rclvf", "iqpocpklqmod", "lial", "bfgycvk", "etbwbrkjjs", "dxucilkqd", "msvrcobjf" }
            if i9_2[(i2_1 * 78 + 103) % 8 + 1] <= i9_2[(i2_1 * 78 + 103) % 8 + 1] then
                i5_1 = #iN > 18
            else
                iN = #i5_1 > 18
            end
            i2_1 = (i2_1 + 45) % 64
        else
            local i9_3 = {
                "klyytldby",
                "wmbtjdpmcgg",
                "agh",
                "kraezijqrkfy",
                "skwhrftusq",
                "uuffbn",
                "uknfk",
                "ykqxix",
                "ofmlylnjhgg",
                "kxvrfuaxuay",
                "jokxzbijkc",
                "xrh"
            }
            if i9_3[(i2_1 * 88 + 15) % 12 + 1] <= i9_3[(i2_1 * 88 + 15) % 12 + 1] then
                il = fn201
            else
                i5_1 = fn201
            end
            i2_1 = (i2_1 + 21) % 64
        end
    elseif i8_1 <= 7 then
        local i8_2 = (vector.create((i2_1 * 7 + 6) % 11 + 1, (i2_1 * 1 + 10) % 13 + 1, (i2_1 * 9 + 15) % 17 + 1))
        local i9_4 = (vector.create((i2_1 * 5 + 1) % 11 + 1, (i2_1 * 1 + 13) % 13 + 1, (i2_1 * 6 + 6) % 17 + 1))
        local pv = vector.cross(i8_2, i9_4)
        local pw = vector.dot(i8_2, i9_4)
        if vector.dot(pv, pv) + pw * pw == vector.dot(i8_2, i8_2) * vector.dot(i9_4, i9_4) then
            h7 = fn152
        else
            iA = fn152
        end
        i2_1 = (i2_1 + 53) % 64
    else
        if (i2_1 * 1 + 5) * 5 % 4 == ((i2_1 * 1 + 5) * 5 + 13) % 4 then
            i7 = "#7fd47f"
        else
            i3_2 = "#7fd47f"
        end
        i2_1 = (i2_1 + 29) % 64
    end
until (i2_1 * 19 + 30) % 64 == 38
if i5_1 then
    local i2_2 = 2
    repeat
        if (i2_2 * 2 + 1) * 7 % 3 == ((i2_2 * 2 + 1) * 7 + 0) % 3 then
            i5_1 = string.sub(iN, 1, 18) .. "..."
        else
            iN = string.sub(i5_1, 1, 18) .. "..."
        end
        i2_2 = (i2_2 + 0) % 4
    until (i2_2 * 3 + 2) % 4 == 0
end
local i2_3 = i5_1
local jx = if i2_3 then 1 else 0
local jv = 1445 * jx + 3790 * (1 - jx)
local jw = 2746 * jx + 3274 * (1 - jx)
if not ((jv * 3645 + jw * 3713 + jv * jw) % 16777213 == 2653680) then
    i2_3 = iN
end
ja_2, ig, jh, ScriptsGroup, FeaturesGroup, SocialsGroup, FaqGroup, ji, jk, iT, iO, jj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local i4_3 = 5
repeat
    jl = (i4_3 * 4 + 4) % 5 + 1
    if jl <= 3 then
        if jl <= 2 then
            if jl <= 1 then
                jm = (vector.create((i4_3 * 3 + 9) % 11 + 1, (i4_3 * 3 + 5) % 13 + 1, (i4_3 * 3 + 17) % 17 + 1))
                local jn = (vector.create((i4_3 * 4 + 1) % 11 + 1, (i4_3 * 8 + 12) % 13 + 1, (i4_3 * 9 + 14) % 17 + 1))
                local pa = vector.dot(jm, jn)
                if pa * pa <= vector.dot(jm, jm) * vector.dot(jn, jn) then
                    task.spawn(worker)
                    jh = jg.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
                else
                    task.spawn(worker)
                    jg = jh.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
                end
                i4_3 = (i4_3 + 14) % 20
            else
                jm = {
                    "wqgqahfnbmbs",
                    "gqzhsxn",
                    "wzyinohheksp",
                    "bxlzoyk",
                    "gtyvpi",
                    "ikprdwuvxvaa",
                    "dlwo",
                    "szkvtsyfklox",
                    "znyokmmsdx",
                    "kyfyeib",
                    "hyqgqhpwvr",
                    "ryprzmzihqy"
                }
                if jm[(i4_3 * 60 + 73) % 12 + 1] <= jm[(i4_3 * 60 + 73) % 12 + 1] then
                    jh:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
                    jh:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
                    jh:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
                    jh:AddButton({ Text = "Copy Discord Invite", Func = ih })
                    ScriptsGroup = jg.Info:AddRightGroupbox("Scripts", "package")
                    ScriptsGroup:AddLabel(il("Included in this hub", i6_1), true)
                    ScriptsGroup:AddLabel(il(jb, iG), true)
                    FeaturesGroup = jg.Info:AddRightGroupbox("Features", "list")
                    FeaturesGroup:AddLabel(il("Auto Buy Eggs", iG), true)
                    FeaturesGroup:AddLabel(il("Auto Place Eggs", iG), true)
                    FeaturesGroup:AddLabel(il("Auto Hatch Eggs", iA), true)
                    FeaturesGroup:AddLabel(il("Auto Claim Coins", iA), true)
                    FeaturesGroup:AddLabel(il("Auto Buy Tiles", iA), true)
                    FeaturesGroup:AddLabel(il("Misc Utilities", i6_1), true)
                    SocialsGroup = jg.Info:AddRightGroupbox("Socials", "link")
                    SocialsGroup:AddButton({ Text = "Discord", Func = ih })
                    SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
                    FaqGroup = jg.Info:AddRightGroupbox("FAQ", "circle-help")
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
                    ji = {
                        [1] = "Basic",
                        [2] = "Rare",
                        [3] = "Legend",
                        [4] = "Hyper",
                        [5] = "Void",
                        [6] = "Ultra",
                        [7] = "Limited",
                        [8] = "Admin"
                    }
                else
                    FaqGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
                    FaqGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
                    FaqGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
                    FaqGroup:AddButton({ Text = "Copy Discord Invite", Func = jg })
                    jh = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
                    jh:AddLabel(SocialsGroup("Included in this hub", iA), true)
                    jh:AddLabel(SocialsGroup(iG, jb), true)
                    il = ScriptsGroup.Info:AddRightGroupbox("Features", "list")
                    il:AddLabel(SocialsGroup("Auto Buy Eggs", jb), true)
                    il:AddLabel(SocialsGroup("Auto Place Eggs", jb), true)
                    il:AddLabel(SocialsGroup("Auto Hatch Eggs", FeaturesGroup), true)
                    il:AddLabel(SocialsGroup("Auto Claim Coins", FeaturesGroup), true)
                    il:AddLabel(SocialsGroup("Auto Buy Tiles", FeaturesGroup), true)
                    il:AddLabel(SocialsGroup("Misc Utilities", iA), true)
                    i6_1 = ScriptsGroup.Info:AddRightGroupbox("Socials", "link")
                    i6_1:AddButton({ Text = "Discord", Func = jg })
                    i6_1:AddButton({ Text = "Rscripts", Func = onRscripts })
                    ji = ScriptsGroup.Info:AddRightGroupbox("FAQ", "circle-help")
                    ji:AddLabel("Where do I get a good config?", true)
                    ji:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
                    ji:AddLabel("How do I import / export configs?", true)
                    ji:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
                    ji:AddLabel("How do I report bugs?", true)
                    ji:AddLabel("Join the Discord and post it in the bugs channel.", true)
                    ji:AddLabel("How do I make suggestions?", true)
                    ji:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
                    ji:AddLabel("How do I get help or updates?", true)
                    ji:AddLabel("Join the Discord, updates and support are posted there first.", true)
                    ih = {
                        [1] = "Basic",
                        [6] = "Ultra",
                        [8] = "Admin",
                        [5] = "Void",
                        [7] = "Limited",
                        [4] = "Hyper",
                        [2] = "Rare",
                        [3] = "Legend"
                    }
                end
                i4_3 = (i4_3 + 19) % 20
            end
        else
            if (i4_3 * 1 + 5) * 9 % 4 == ((i4_3 * 1 + 5) * 9 + 12) % 4 then
                jk = {}
            else
                jh = {}
            end
            i4_3 = (i4_3 + 4) % 20
        end
    elseif jl <= 4 then
        if i4_3 * 49423053 + 11 + 6 <= i4_3 * 49423053 + 11 + 6 + 1 then
            iT = {}
            iO = {}
            jj = {}
        else
            jj = {}
            iT = {}
            iO = {}
        end
        i4_3 = (i4_3 + 14) % 20
    else
        if i4_3 * 18029419 + 12 + 1 <= i4_3 * 18029419 + 12 + 1 + 2 then
            ja_2 = i2_3
            i7:AddLabel(h7("Server", ja_2, i6_1), true)
            i7:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
            ig = os.clock()
        else
            i7 = i6_1
            ig:AddLabel(ja_2("Server", i7, i2_3), true)
            ig:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
            h7 = os.clock()
        end
        i4_3 = (i4_3 + 9) % 20
    end
until (i4_3 * 13 + 0) % 20 == 5
jl = {}
for k, v in ResEgg.__index do
    local i2_4 = ResEgg[v]
    if i2_4 then
        local Rarity = i2_4.Rarity
        if not jl[Rarity] then
            jl[Rarity] = true
            local format = string.format
            local i5_3 = ji[Rarity] or "Unknown"
            local i6_2 = format("%d - %s", Rarity, i5_3)
            iT[i6_2] = Rarity
            table.insert(jk, i6_2)
        end
        local i3_5 = i2_4.SearchName or v
        if not iO[i3_5] then
            iO[i3_5] = v
            table.insert(jj, i3_5)
        end
    end
end
table.sort(jk)
table.sort(jj)
local i2_6 = { "Base" }
for k, v in ResMutate.__index do
    table.insert(i2_6, v)
end
local i3_6 = { "Any" }
for k, v in ResPetFood.__index do
    table.insert(i3_6, v)
end
is, h4, Label2, Label3, MenuGroup, iC, iw, connection, connection2, ik, iY, iF, iq, h3, iy, iQ, io, h5, ip, iW, i_, iH, iL, iD, it, h2, ib, iM, i1, iV, iZ, h6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(i3_6, fn173)
is = false
ik = fn122
iY = fn133
iF = fn151
iq = fn323
h3 = fn510
iy = fn295
iQ = fn293
io = fn297
h5 = function()
    local lf_1
    local le_1
    local ld = {}
    for k, v in { workspace:FindFirstChild("Pets"), workspace:FindFirstChild("PlayerBuiltBlocks") } do
        if v then
            for i, child in v:GetChildren() do
                local ls = child
                le_1, lf_1 = pcall(function()
                    return ls:GetPivot().Position
                end)
                if le_1 then
                    table.insert(ld, lf_1)
                end
            end
        end
    end
    return ld
end
ip = fn345
iW = fn375
h4 = {}
i_ = function()
    local PlayerBuiltBlocks = workspace:FindFirstChild("PlayerBuiltBlocks")
    if not PlayerBuiltBlocks then
        return
    end
    local l0 = workspace:GetServerTimeNow()
    for i, child in Egg:GetChildren() do
        local l9 = child
        local attr = l9:GetAttribute("ET")
        local l2 = l9:GetAttribute("D") and attr and l0 >= attr and not h4[l9.Name]
        if l2 then
            local l1_1 = PlayerBuiltBlocks:FindFirstChild(l9.Name)
            local l2_1 = l1_1 and l1_1:FindFirstChild("RF", true)
            local lZ = l2_1
            if lZ then
                h4[l9.Name] = true
                task.spawn(function()
                    pcall(function()
                        lZ:InvokeServer("Hatch")
                    end)
                    h4[l9.Name] = nil
                end)
            end
        end
    end
end
iH = function()
    local Pets = workspace:FindFirstChild("Pets")
    local Character = iS.Character
    local me = Character and Character:FindFirstChild("HumanoidRootPart")
    local md_1 = not Pets
    local mb = me
    local mi = if md_1 then 1 else 0
    local mg = 670 * mi + 2482 * (1 - mi)
    local mh = 2521 * mi + 105 * (1 - mi)
    if not ((mg * 125 + mh * 3213 + mg * mh) % 16777213 == 9872793) then
        md_1 = not mb
    end
    if not md_1 then
        md_1 = not firetouchinterest
    end
    if md_1 then
        return
    end
    for i, child in Pets:GetChildren() do
        if child:GetAttribute("UserId") == iS.UserId then
            local TrgIdle = child:FindFirstChild("TrgIdle")
            if TrgIdle then
                pcall(function()
                    firetouchinterest(mb, TrgIdle, 0)
                    firetouchinterest(mb, TrgIdle, 1)
                end)
            end
        end
    end
end
iL = fn395
iD = fn409
it = fn129
h2 = fn315
ib = fn103
iM = fn127
i1 = fn478
iV = fn107
jb = jg.Eggs:AddLeftGroupbox("Auto Buy", "shopping-cart")
jb:AddToggle("AutoBuyEgg", { Text = "Auto Buy Egg", Default = false })
jb:AddDropdown("EggRarities", { Values = jk, Default = {}, Multi = true, Text = "Rarities" })
jb:AddDropdown("EggMutations", { Values = i2_6, Default = {}, Multi = true, Text = "Mutations" })
local EggTypesGroup = jg.Eggs:AddRightGroupbox("Egg Types", "list")
EggTypesGroup:AddDropdown("EggTypes", { Values = jj, Default = {}, Multi = true, Searchable = true, Text = "Egg Types" })
local AutomationGroup = jg.Farm:AddLeftGroupbox("Automation", "trees")
AutomationGroup:AddToggle("AutoPlaceEgg", { Text = "Auto Place Egg", Default = false })
AutomationGroup:AddToggle("AutoHatchEgg", { Text = "Auto Hatch Egg", Default = false })
AutomationGroup:AddToggle("AutoClaimCoin", { Text = "Auto Claim Coins", Default = false })
AutomationGroup:AddToggle("AutoBuyTile", { Text = "Auto Buy Tiles", Default = false })
i7 = jg.Farm:AddRightGroupbox("Farm", "chart-column")
Label2 = i7:AddLabel(h7("Coins", "0", iA), true)
Label3 = i7:AddLabel(h7("Free tiles", "0", iG), true)
local AutoSellGroup = jg.Pets:AddLeftGroupbox("Auto Sell", "badge-dollar-sign")
AutoSellGroup:AddToggle("AutoSellPets", { Text = "Auto Sell Pets", Default = false })
AutoSellGroup:AddToggle("AutoSellEggs", { Text = "Auto Sell Eggs", Default = false })
local AutoFeedGroup = jg.Pets:AddLeftGroupbox("Auto Feed", "apple")
AutoFeedGroup:AddDropdown("FeedFood", { Values = i3_6, Default = "Any", Searchable = true, Text = "Food" })
AutoFeedGroup:AddSlider("FeedDelay", { Text = "Feed Delay", Default = 5, Min = 1, Max = 30, Rounding = 0 })
AutoFeedGroup:AddToggle("AutoFeedPets", { Text = "Auto Feed Pets", Default = false })
local AutoReplaceGroup = jg.Pets:AddRightGroupbox("Auto Replace", "refresh-cw")
AutoReplaceGroup:AddDropdown("ReplaceStat", { Values = { "Income", "Weight" }, Default = "Income", Text = "Replace By" })
AutoReplaceGroup:AddSlider("ReplaceImprovement", { Text = "Minimum Improvement %", Default = 0, Min = 0, Max = 100, Rounding = 0 })
AutoReplaceGroup:AddSlider("ReplaceDelay", { Text = "Replace Delay", Default = 5, Min = 2, Max = 30, Rounding = 0 })
AutoReplaceGroup:AddToggle("AutoReplacePets", { Text = "Auto Replace Pets", Default = false })
iZ = fn143
if (io and iV or iV and not iV or (iV or iV) and (io or not io)) and ((io or not io or iV and io) and (iV and io or (not io or iV))) and not ((io and iV or iV and not iV or (iV or iV) and (io or not io)) and ((io or not io or iV and io) and (iV and io or (not io or iV)))) then
    task.spawn(worker2)
    task.spawn(autoBuyEggLoop)
    task.spawn(autoPlaceEggLoop)
    task.spawn(autoHatchEggLoop)
    task.spawn(autoClaimCoinLoop)
    task.spawn(autoBuyTileLoop)
    task.spawn(autoSellPetsLoop)
    task.spawn(autoFeedPetsLoop)
    task.spawn(autoReplacePetsLoop)
    jg = MenuGroup.Settings:AddLeftGroupbox("Menu", "sliders-horizontal")
else
    task.spawn(worker2)
    task.spawn(autoBuyEggLoop)
    task.spawn(autoPlaceEggLoop)
    task.spawn(autoHatchEggLoop)
    task.spawn(autoClaimCoinLoop)
    task.spawn(autoBuyTileLoop)
    task.spawn(autoSellPetsLoop)
    task.spawn(autoFeedPetsLoop)
    task.spawn(autoReplacePetsLoop)
    MenuGroup = jg.Settings:AddLeftGroupbox("Menu", "sliders-horizontal")
end
iC = tick()
iw = tick()
pcall(function()
    for i, v in ipairs(getconnections(iS.Idled)) do
        local oh = v
        pcall(function()
            oh:Disable()
        end)
    end
end)
h6 = fn281
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn613)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(jg.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/build-a-zoo")
SaveManager:BuildConfigSection(jg.Settings)
SaveManager:LoadAutoloadConfig()
