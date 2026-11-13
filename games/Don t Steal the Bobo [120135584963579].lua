local CollectAllCash
local Label
local ih
local iH
local LocalPlayer
local ik
local io
local i5
local UpgradePlotEvent
local Library
local iu
local EquipBestNPCs
local connection2
local ix
local iA
local Toggles
local ig
local iZ
local iD
local ij
local i1
local iG
local iJ
local im
local i4
local iq
local i7
local iM
local iP
local ja
local it
local iw
local iS
local iV
local iY
local ii
local iF
local i0
local il
local Rebirth
local i3
local ip
local VirtualUser
local iL
local is
local SellAllNPCs
local i9
local iv
local iR
local connection
local Options
local iB
local iX
local function fn21(ac)
    if Library.Unloaded then
        return false
    end
    local j6 = Toggles[ac]
    local j7 = type(j6) == "table" and j6.Value == true
    return j7
end
local function fn87(ai, aj)
    local kc = Options[ai]
    if type(kc) ~= "table" then
        return aj
    end
    local kd = tonumber(kc.Value) or aj
    return kd
end
local function fn100(an)
    local kf = Options[an]
    if type(kf) ~= "table" then
        return {}
    end
    return kf.Value or {}
end
local function fn111()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function worker()
    local nh_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local ng = math.floor(os.clock() - iJ)
        if ng < 60 then
            nh_1 = ng .. "s"
        elseif ng < 3600 then
            nh_1 = string.format("%dm %ds", ng // 60, ng % 60)
        else
            nh_1 = string.format("%dh %dm", ng // 3600, ng % 3600 // 60)
        end
        Label:SetText(is("Session time", nh_1, ja))
    end
end
local function worker8()
    while not Library.Unloaded do
        task.wait(2)
        if i7("AutoUpgradePlot") then
            pcall(function()
                UpgradePlotEvent:FireServer()
            end)
        end
    end
end
local function fn175(aP)
    local kv = aP and iP[aP]
    local kw = kv
    if kv then
        kv = tonumber(kw.Income)
    end
    return kv or 0
end
local function fn181(d_)
    local DiscordGroup = d_:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iF })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iF })
end
local function fn224(ar)
    for k, v in pairs(iD(ar)) do
        if v then
            return true
        end
    end
    return false
end
local function fn278()
    local kB = il()
    local kC = kB ~= nil and kB:GetAttribute("Carrying") == true
    return kC
end
local function fn288()
    if not it("GearWanted") then
        return
    end
    local mJ = iH("GearFrame")
    local mK = mJ and mJ:FindFirstChild("ScrollingFrame")
    if not mK then
        return
    end
    local Visible = mJ.Visible
    mJ.Visible = true
    for i, child in mK:GetChildren() do
        local BuyButton = child:FindFirstChild("BuyButton")
        local GearStock = child:FindFirstChild("GearStock")
        local mN = GearStock
        if mN then
            mN = GearStock.Text == "Owned" or GearStock.Text == "Out of Stock"
        end
        local mM_1 = BuyButton
        local mO_2 = mN
        if mM_1 then
            mM_1 = not mO_2
        end
        if mM_1 then
            mM_1 = iD("GearWanted")[child.Name]
        end
        if mM_1 then
            i5(BuyButton)
            task.wait(0.4)
        end
    end
    mJ.Visible = Visible
end
local function onCopyJoinScript_JobID()
    local eg = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, iX)
    iR(eg, "Copied join script to clipboard")
end
local function worker9()
    while not Library.Unloaded do
        task.wait(5)
        if i7("AutoRebirth") then
            pcall(function()
                Rebirth:FireServer("REBIRTH")
            end)
        end
    end
end
local function fn331()
    local m9_1
    local m8_1
    if identifyexecutor then
        m9_1, m8_1 = identifyexecutor()
        local na = m9_1 ~= ""
        local nb = type(m9_1) == "string" and na
        if nb then
            local na_1 = type(m8_1) == "string" and m8_1 ~= "" and m9_1 .. " " .. m8_1
            ij = na_1 or m9_1
        end
    end
end
local function fn351(J, K)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
    Library:Notify(K)
end
local function worker5()
    while not Library.Unloaded do
        task.wait(5)
        if i7("AutoEquipBest") then
            pcall(function()
                EquipBestNPCs:FireServer()
            end)
        end
    end
end
local function fn376()
    local Character = LocalPlayer.Character
    local kz = not Character or not Character:FindFirstChild("HumanoidRootPart")
    if kz then
        return nil
    end
    return Character
end
local function onRscripts()
    iR(ih, "Copied Rscripts profile to clipboard")
end
local function fn397()
    local mc = iH("SellFrame")
    local md = mc and mc:FindFirstChild("ScrollingFrame")
    if not md then
        return
    end
    local Visible = mc.Visible
    mc.Visible = true
    task.wait(0.3)
    for i, child in md:GetChildren() do
        local me_1 = child.Visible and string.find(child.Name, "PoolSlot")
        if me_1 then
            local NPCName = child:FindFirstChild("NPCName")
            local Rarity = child:FindFirstChild("Rarity")
            local Mutation = child:FindFirstChild("Mutation")
            local SellButton = child:FindFirstChild("SellButton")
            if NPCName and Rarity and Mutation and SellButton then
                local mi_2 = ik("SellRarities", Rarity.Text) and ik("SellMutations", Mutation.Text) and iv(NPCName.Text) <= iS("SellMaxIncome", 100)
                if mi_2 then
                    i5(SellButton)
                    task.wait(0.3)
                    i0()
                end
            end
        end
    end
    mc.Visible = Visible
end
local function fn414(bP, bQ)
    local PromptAttachment = bP:FindFirstChild("PromptAttachment")
    local lC = PromptAttachment and PromptAttachment:FindFirstChild(bQ)
    local lB_1 = lC
    if lC then
        lC = lB_1.Enabled
    end
    if lC then
        fireproximityprompt(lB_1)
        return true
    end
    return false
end
local function fn426(bH)
    local lx = il()
    if not lx then
        return false
    end
    lx.HumanoidRootPart.CFrame = CFrame.new(bH)
    return true
end
local function onInputChanged(fs)
    local UserInputType = fs.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        i1 = tick()
    end
end
local function onInputBegan()
    i1 = tick()
end
local function fn471()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iY = tick()
end
local function worker6()
    while not Library.Unloaded do
        task.wait(2)
        if i7("AutoUpgrade") then
            pcall(iV)
        end
    end
end
local function fn474(T, U, V)
    return string.format("<b>%s</b> %s %s", T, iw("-", "#5a6070"), iw(U, V))
end
local function worker7()
    while not Library.Unloaded do
        task.wait(4)
        local nu = not iB
        local nv = i7("AutoSell") and nu
        if nv then
            pcall(iG)
        end
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(0.5)
        if i7("AutoSteal") then
            iB = true
            pcall(ix)
            iB = false
        end
    end
end
local function fn562()
    iR(ii, "Copied Discord invite to clipboard")
end
local function fn573(aw, ax)
    if not it(aw) then
        return true
    end
    return iD(aw)[ax] == true
end
local function worker4()
    while not Library.Unloaded do
        task.wait(1)
        if i7("AutoCollect") then
            pcall(function()
                CollectAllCash:FireServer()
            end)
        end
    end
end
local function fn606(by)
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local ls = PlayerGui and PlayerGui:FindFirstChild("MainUI")
    local lr_1 = ls
    if ls then
        ls = lr_1:FindFirstChild("Menus")
    end
    local lr_2 = ls
    if ls then
        ls = lr_2:FindFirstChild(by)
    end
    return ls
end
local function worker10()
    while not Library.Unloaded do
        task.wait(10)
        if i7("AutoRewards") then
            pcall(iA)
        end
    end
end
local function fn646()
    local l2 = il()
    local l3 = not l2
    local l8 = if l3 then 1 else 0
    local l6 = 2506 * l8 + 3358 * (1 - l8)
    local l7 = 3239 * l8 + 3170 * (1 - l8)
    if not ((l6 * 1610 + l7 * 1467 + l6 * l7) % 16777213 == 125994) then
        l3 = l2:GetAttribute("Ragdolled") == true
    end
    if l3 then
        return
    end
    if i9() then
        ig()
        local l3_1 = os.clock() + 2
        while true do
            local l4 = os.clock() < l3_1 and i9()
            if l4 then
                task.wait(0.1)
                continue
            end
            break
        end
        return
    end
    local l3_2 = i4()
    if not l3_2 then
        return
    end
    l2.HumanoidRootPart.CFrame = CFrame.new(l3_2.HumanoidRootPart.Position + Vector3.new(0, 0, 4))
    task.wait(0.3)
    local Prompts = l3_2:FindFirstChild("Prompts")
    local l3_3 = Prompts and Prompts:FindFirstChild("Pickup")
    local l2_2 = l3_3
    if l3_3 then
        l3_3 = l2_2.Enabled
    end
    if l3_3 then
        fireproximityprompt(l2_2)
        task.wait(0.3)
    end
end
local function worker11()
    while not Library.Unloaded do
        task.wait(8)
        if i7("AutoGearShop") then
            pcall(im)
        end
    end
end
local function fn657(aJ)
    local kr = aJ and iP[aJ]
    local ks = kr
    if kr then
        kr = ks.Rarity
    end
    return kr or "Common"
end
local function fn661()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn670()
    local l9 = iH("SellConfirmFrame")
    local ma = l9 and l9:FindFirstChild("Buttons")
    local l9_1 = ma
    if ma then
        ma = l9_1:FindFirstChild("Yes")
    end
    local l9_2 = ma
    if l9_2 then
        i5(l9_2)
        task.wait(0.3)
    end
end
local function onSellAllNPCs()
    SellAllNPCs:FireServer()
end
local function fn726()
    for k, v in getgc(true) do
        if type(v) == "table" then
            local kL = rawget(v, "Data")
            local kM = type(kL) == "table" and rawget(kL, "NPCs") ~= nil and rawget(kL, "Slots") ~= nil
            if kM then
                return kL
            end
        end
    end
    return nil
end
local function worker12()
    while not Library.Unloaded do
        task.wait(2)
        if i7("AntiAfk") then
            local nQ = tick() - i1
            local nR = tick() - iY
            if nQ >= 300 and nR >= 60 then
                pcall(iM)
            else
                if nQ < 300 and nR >= 300 then
                    pcall(iM)
                end
            end
        end
    end
end
local function fn768(Q, R)
    return string.format('<font color="%s">%s</font>', R, Q)
end
local function onUnload()
    Library:Unload()
end
local function worker3()
    while not Library.Unloaded do
        task.wait(3)
        local nn = not iB
        local no = i7("AutoReturn") and nn
        if no then
            local nn_1 = iZ()
            local no_1 = il()
            if nn_1 and no_1 then
                if (no_1.HumanoidRootPart.Position - nn_1.OwnerSpawnPoint.WorldPosition).Magnitude > 150 then
                    pcall(ig)
                end
            end
        end
    end
end
local function fn801(b1)
    local Prompts = b1:FindFirstChild("Prompts")
    local lK = Prompts and Prompts:FindFirstChild("Pickup")
    if not lK or not lK.Enabled then
        return false
    end
    local attr = b1:GetAttribute("NPCId")
    local lK_2 = not attr or string.find(attr, "Egg")
    if lK_2 then
        return false
    end
    local lK_3 = tonumber(b1:GetAttribute("TimeRemaining")) or 0
    if lK_3 < iS("StealMinTime", 30) then
        return false
    elseif not ik("StealRarities", iL(attr)) then
        return false
    elseif not ik("StealMutations", tostring(b1:GetAttribute("Mutation"))) then
        return false
    elseif not ik("StealVariations", tostring(b1:GetAttribute("Variation"))) then
        return false
    elseif iv(attr) < iS("StealMinIncome", 0) then
        return false
    else
        return true
    end
end
local function fn809()
    for i, child in io:GetChildren() do
        if child:GetAttribute("OwnerName") == LocalPlayer.Name then
            return child
        end
    end
    return nil
end
local function fn837()
    local lQ_1
    local lP_1
    lQ_1, lP_1 = nil, -1
    for i, child in iq:GetChildren() do
        local lR = child:FindFirstChild("HumanoidRootPart") and iu(child)
        if lR then
            local attr = child:GetAttribute("Variation")
            local lS = iv(child:GetAttribute("NPCId"))
            if attr == "Big" then
                lS = lS * 2
            elseif attr == "Huge" then
                lS = lS * 4
            end
            if lS > lP_1 then
                lQ_1, lP_1 = child, lS
            end
        end
    end
    return lQ_1
end
local function fn847()
    local lz = iZ()
    if not lz then
        return false
    end
    return ip(lz.OwnerSpawnPoint.WorldPosition + Vector3.new(0, 3, 0))
end
ig = nil
ih = nil
ii = nil
ij = nil
ik = nil
il = nil
im = nil
io = nil
ip = nil
iq = nil
connection2 = nil
is = nil
it = nil
iu = nil
iv = nil
iw = nil
ix = nil
connection = nil
iA = nil
iB = nil
iD = nil
CollectAllCash = nil
iF = nil
iG = nil
iH = nil
Rebirth = nil
iJ = nil
UpgradePlotEvent = nil
iL = nil
iM = nil
local iN
SellAllNPCs = nil
iP = nil
EquipBestNPCs = nil
iR = nil
iS = nil
Options = nil
iV = nil
Toggles = nil
iX = nil
iY = nil
iZ = nil
Label = nil
i0 = nil
i1 = nil
LocalPlayer = nil
i3 = nil
local Recv, UpgradeNPC
i4 = nil
i5 = nil
VirtualUser = nil
i7 = nil
Library = nil
i9 = nil
ja = nil
local jp_1
local jE_1
local jz_1
local ju_1
local jt_1
local AccountGroup, jf_2
VirtualUser, LocalPlayer = nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
UpgradeNPC, EquipBestNPCs, SellAllNPCs, UpgradePlotEvent, Rebirth, CollectAllCash, Recv, iq, io, ii, ih, Library, Toggles, Options, ja, jt_1, iR, iF, iw, is, i7, iS, iD, it, ik = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local GameInfoGroup
local Plot = Remotes:WaitForChild("Plot")
local jg_1, jg_3
UpgradeNPC = Plot:WaitForChild("UpgradeNPC")
EquipBestNPCs = Plot:WaitForChild("EquipBestNPCs")
SellAllNPCs = Plot:WaitForChild("SellAllNPCs")
UpgradePlotEvent = Remotes:WaitForChild("UpgradePlotEvent")
Rebirth = Remotes:WaitForChild("Rebirth")
CollectAllCash = ReplicatedStorage:WaitForChild("CollectAllCash")
Recv = ReplicatedStorage:WaitForChild("Recv")
local Shared = ReplicatedStorage:WaitForChild("Shared")
local Registry = Shared:WaitForChild("Registry")
local NPC = require(Registry:WaitForChild("NPC"))
local jj = require(Registry:WaitForChild("Rarities"))
local jk = require(Registry:WaitForChild("Mutations"))
local Gear = require(Registry:WaitForChild("Gear"))
local ScriptsGroup
if (not Options or false or not iD and not UpgradeNPC) and ((ja or not UpgradeNPC) and (not iD or jt_1)) and not ((not Options or false or not iD and not UpgradeNPC) and ((ja or not UpgradeNPC) and (not iD or jt_1))) then
    jp_1 = workspace:WaitForChild("Map"):WaitForChild("Zones"):WaitForChild("Field"):WaitForChild("NPC")
    iq = workspace.Map:WaitForChild("Plots")
    io = "Don't Steal the Bobo"
else
    iq = workspace:WaitForChild("Map"):WaitForChild("Zones"):WaitForChild("Field"):WaitForChild("NPC")
    io = workspace.Map:WaitForChild("Plots")
    jp_1 = "Don't Steal the Bobo"
end
ii = "https://discord.gg/ehKVq7pf7v"
ih = "https://rscripts.net/@Ouroboros"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn111)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
iR = fn351
iF = fn562
iw = fn768
is = fn474
local jo = "#7fd47f"
local jn = "#6ec1ff"
ja = "#e8a34d"
local jt_2 = "#8b93a3"
i7 = fn21
if iF and false and "#7fd47f" or ik and jo and "https://rscripts.net/@Ouroboros" or not (iF and false and "#7fd47f" or ik and jo and "https://rscripts.net/@Ouroboros") then
    iS = fn87
    iD = fn100
    it = fn224
else
    iD = fn87
    it = fn100
    iS = fn224
end
ik = fn573
local js = {}
for k in pairs(jj[1]) do
    table.insert(js, k)
end
local jc_1 = nil
local jb_2 = 1
repeat
    local jd_1 = {
        "sywiflgao",
        "cbbqkfoq",
        "bfum",
        "vamj",
        "mlvunzfcvd",
        "dpleuq",
        "amuebqddze",
        "hebnwk",
        "xugbzjyaksxl",
        "hrclxw",
        "vzbmmccsxusx"
    }
    if jd_1[(jb_2 * 10 + 103) % 11 + 1] <= jd_1[(jb_2 * 10 + 103) % 11 + 1] then
        table.sort(js)
        jc_1 = {}
    else
        table.sort(jc_1)
        js = {}
    end
    jb_2 = (jb_2 + 1) % 8
until (jb_2 * 3 + 4) % 8 == 2
for k in pairs(jk[1]) do
    table.insert(jc_1, k)
end
table.sort(jc_1)
local jd_2 = {}
for k in pairs(Gear) do
    table.insert(jd_2, k)
end
iP, iB, jg_1, iL, iv, il, i9, iZ, iN, i5, iH, ip, ig, i3, iu, i4, ix, i0, iG, iV, im, iA = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(jd_2)
jk = { "Base", "Big", "Huge" }
iP = NPC[1]
if (not iL and not jg_1 or i4 and not iv) and (i4 and i4 or (iv or jg_1)) and (not iL and not jg_1 and (iv and iv) and (iL or i4 or i4 and not iL)) and not ((not iL and not jg_1 or i4 and not iv) and (i4 and i4 or (iv or jg_1)) and (not iL and not jg_1 and (iv and iv) and (iL or i4 or i4 and not iL))) then
    iv = fn657
    iL = fn175
else
    iL = fn657
    iv = fn175
end
il = fn376
i9 = fn278
iZ = fn809
iN = fn726
i5 = function(bp)
    local lp = not bp or not bp:IsA("GuiButton")
    if lp then
        return
    end
    pcall(function()
        for i, v in ipairs(getconnections(bp.Activated)) do
            v:Fire()
        end
    end)
    pcall(function()
        for i, v in ipairs(getconnections(bp.MouseButton1Click)) do
            v:Fire()
        end
    end)
end
iH = fn606
ip = fn426
ig = fn847
i3 = fn414
iu = fn801
i4 = fn837
if (i3 and ip or jk and iZ) and (iZ and 6 and (not i3 or not i3)) and not ((i3 and ip or jk and iZ) and (iZ and 6 and (not i3 or not i3))) then
    i0 = false
    iG = fn646
    iV = fn670
    iB = fn397
    ix = function()
        local mw_2
        local mu = iN()
        local mu_4
        if not mu then
            return
        end
        local mv = iS("UpgradesPerCycle", 5)
        for k, v in pairs(mu.NPCs) do
            local mG = k
            if mv <= 0 then
                return
            end
            local mu_3 = v.Location == "PLOT" and ik("UpgradeRarities", iL(v.Type))
            if mu_3 then
                mu_4, mw_2 = pcall(function()
                    return UpgradeNPC:InvokeServer(mG)
                end)
                mv = mv - 1
                if not mu_4 or mw_2 == false then
                    return
                end
                task.wait(0.15)
            end
        end
    end
else
    iB = false
    ix = fn646
    i0 = fn670
    iG = fn397
    iV = function()
        local mw_1
        local mu = iN()
        local mu_2
        if not mu then
            return
        end
        local mv = iS("UpgradesPerCycle", 5)
        for k, v in pairs(mu.NPCs) do
            local mG = k
            if mv <= 0 then
                return
            end
            local mu_1 = v.Location == "PLOT" and ik("UpgradeRarities", iL(v.Type))
            if mu_1 then
                mu_2, mw_1 = pcall(function()
                    return UpgradeNPC:InvokeServer(mG)
                end)
                mv = mv - 1
                if not mu_2 or mw_1 == false then
                    return
                end
                task.wait(0.15)
            end
        end
    end
end
im = fn288
iA = function()
    local mW = iH("DailyFrame")
    local mX = mW and mW:FindFirstChild("RewardList")
    local mW_1 = mX
    if mX then
        mX = mW_1:FindFirstChild("ButtonRow")
    end
    local mW_2 = mX
    if mX then
        mX = mW_2:FindFirstChild("Claim")
    end
    i5(mX)
    local mW_3 = iH("OfflineEarnings")
    local mX_1 = mW_3 and mW_3:FindFirstChild("Buttons")
    local mW_4 = mX_1
    if mX_1 then
        mX_1 = mW_4:FindFirstChild("Claim")
    end
    i5(mX_1)
    for i = 1, 12 do
        local m4 = i
        pcall(function()
            Recv:InvokeServer("TimeGift", m4)
        end)
        task.wait(0.1)
    end
    local mW_5 = iZ()
    local mX_2 = mW_5 and mW_5:FindFirstChild("OutsideStructures")
    local mW_6 = mX_2
    if mX_2 then
        mX_2 = mW_6:FindFirstChild("GroupReward")
    end
    local mW_7 = mX_2
    if mX_2 then
        mX_2 = LocalPlayer:GetAttribute("ClaimedGroupReward") ~= true
    end
    if mX_2 then
        i3(mW_7, "ProximityPrompt")
    end
end
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = ii .. " | " .. jp_1,
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
jj = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Progress = Window:AddTab("Progress", "trending-up"),
    Shop = Window:AddTab("Shop", "shopping-cart"),
    Settings = Window:AddTab("Settings", "settings")
}
jj.Steal = jj.Main:AddSubTab("Steal", "hand-grab")
jj.Base = jj.Main:AddSubTab("Base", "house")
for k, v in jj do
    if v ~= jj.Main then
        fn181(v)
    end
end
ij, AccountGroup, GameInfoGroup, Label, iX, jg_3 = nil, nil, nil, nil, nil, nil
local jb_3 = 0
repeat
    local ji_1 = (jb_3 * 1 + 2) % 3 + 1
    if ji_1 <= 2 then
        if ji_1 <= 1 then
            local ji_2 = {
                "oeiyxbilu",
                "ggvpocxyg",
                "aiovg",
                "ksrsyqhtrzg",
                "fewxs",
                "qlnfrdpq",
                "bmecbzjn",
                "gxkoyztcp",
                "xqqndpz",
                "mfqzyh"
            }
            if ji_2[(jb_3 * 20 + 24) % 10 + 1] < ji_2[(jb_3 * 20 + 24) % 10 + 1] then
                ij = tostring(game.JobId)
            else
                iX = tostring(game.JobId)
            end
            jb_3 = (jb_3 + 16) % 24
        else
            local ji_3 = { "xsxuoz", "fqwcqo", "jywem", "twndml", "ggtobvikj", "ixmgunil", "eumsozgxstf", "irhgukzbt" }
            local pb = jb_3
            local jl_1 = ji_3[pb % 8 + 1]
            if jl_1:len() >= jl_1:gsub("(.)", "%1%1", pb % 3 % 2 + 1):len() then
                iX = #jg_3 > 18
            else
                jg_3 = #iX > 18
            end
            jb_3 = (jb_3 + 22) % 24
        end
    else
        local ji_4 = { "zfmzmh", "zqasw", "esroq", "ferqxjpdir", "axhmvvngtf", "pwbwczachfaw", "ebtifszhxi", "zdbqh" }
        if ji_4[(jb_3 * 82 + 45) % 8 + 1] < ji_4[(jb_3 * 82 + 45) % 8 + 1] then
            iw = "Unknown"
            pcall(fn331)
            jj = ij.Info:AddLeftGroupbox("Account", "circle-user")
            jj:AddLabel(ja("User", is.Name, LocalPlayer), true)
            jj:AddLabel(ja("Status", "Keyless", LocalPlayer), true)
            jj:AddLabel(ja("Executor", iw, LocalPlayer), true)
            jn = ij.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            jn:AddLabel(jp_1(AccountGroup .. " [" .. tostring(game.PlaceId) .. "]", GameInfoGroup), true)
            jn:AddLabel(ja("Place ID", tostring(game.PlaceId), GameInfoGroup), true)
            jo = jn:AddLabel(ja("Session time", "0s", Label), true)
        else
            ij = "Unknown"
            pcall(fn331)
            AccountGroup = jj.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(is("User", LocalPlayer.Name, jo), true)
            AccountGroup:AddLabel(is("Status", "Keyless", jo), true)
            AccountGroup:AddLabel(is("Executor", ij, jo), true)
            GameInfoGroup = jj.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(iw(jp_1 .. " [" .. tostring(game.PlaceId) .. "]", jn), true)
            GameInfoGroup:AddLabel(is("Place ID", tostring(game.PlaceId), jn), true)
            Label = GameInfoGroup:AddLabel(is("Session time", "0s", ja), true)
        end
        jb_3 = (jb_3 + 7) % 24
    end
until (jb_3 * 1 + 22) % 24 == 19
if jg_3 then
    local jb_4 = 1
    repeat
        local oT = bit32.rrotate(bit32.bxor(bit32.lrotate(jb_4, 2), string.byte(tostring(jb_4))), 27)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(oT, 575387891), 1632609777), (bit32.bxor(bit32.band(oT, 3719579404), 1545042216))), 1632609777), 1545042216) == oT then
            jg_3 = string.sub(iX, 1, 18) .. "..."
        else
            iX = string.sub(jg_3, 1, 18) .. "..."
        end
        jb_4 = (jb_4 + 3) % 4
    until (jb_4 * 3 + 0) % 4 == 0
end
local jb_5 = jg_3
local j1 = if jb_5 then 1 else 0
local j_ = 2802 * j1 + 3089 * (1 - j1)
local j0 = 4089 * j1 + 276 * (1 - j1)
if not ((j_ * 3358 + j0 * 2203 + j_ * j0) % 16777213 == 13097348) then
    jb_5 = iX
end
iJ, ScriptsGroup, jf_2, jE_1, jz_1, ju_1, i1, iY, connection, connection2, iM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jx = jb_5
GameInfoGroup:AddLabel(is("Server", jx, jt_2), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
iJ = os.clock()
if (not iM or ju_1 or (not ScriptsGroup or not ScriptsGroup)) and (not jE_1 and not ju_1 and (not jE_1 or jf_2)) or jf_2 and jf_2 and (not jz_1 and not iM) and (jE_1 or not ju_1 or ju_1 and not jz_1) or not ((not iM or ju_1 or (not ScriptsGroup or not ScriptsGroup)) and (not jE_1 and not ju_1 and (not jE_1 or jf_2)) or jf_2 and jf_2 and (not jz_1 and not iM) and (jE_1 or not ju_1 or ju_1 and not jz_1)) then
    task.spawn(worker)
    ScriptsGroup = jj.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(worker)
    jj = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(iw("Included in this hub", jt_2), true)
ScriptsGroup:AddLabel(iw(jp_1, jn), true)
local FeaturesGroup = jj.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(iw("Auto Steal", jn), true)
FeaturesGroup:AddLabel(iw("Base Automation", ja), true)
FeaturesGroup:AddLabel(iw("Progression", jo), true)
FeaturesGroup:AddLabel(iw("Shop and Rewards", jn), true)
FeaturesGroup:AddLabel(iw("Misc Utilities", jt_2), true)
local SocialsGroup = jj.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = iF })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jj.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = iF })
local FaqGroup = jj.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoStealGroup = jj.Steal:AddLeftGroupbox("Auto Steal", "hand-grab")
AutoStealGroup:AddToggle("AutoSteal", { Text = "Auto Steal", Default = false })
AutoStealGroup:AddToggle("AutoReturn", { Text = "Auto Return to Base", Default = false })
AutoStealGroup:AddButton({ Text = "Return to Base", Func = ig })
local StealFiltersGroup = jj.Steal:AddRightGroupbox("Steal Filters", "filter")
StealFiltersGroup:AddDropdown("StealRarities", { Values = js, Multi = true, Searchable = true, AllowNull = true, Text = "Rarities", Default = {} })
StealFiltersGroup:AddDropdown("StealMutations", {
    Values = jc_1,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Text = "Mutations",
    Default = {}
})
StealFiltersGroup:AddDropdown("StealVariations", {
    Values = jk,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Text = "Variations",
    Default = {}
})
StealFiltersGroup:AddSlider("StealMinIncome", { Text = "Min Income", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
StealFiltersGroup:AddSlider("StealMinTime", { Text = "Min Time Left", Default = 30, Min = 5, Max = 110, Rounding = 0 })
local BaseGroup = jj.Base:AddLeftGroupbox("Base", "house")
BaseGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
BaseGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
local AutoUpgradeGroup = jj.Base:AddRightGroupbox("Auto Upgrade", "arrow-big-up")
AutoUpgradeGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
AutoUpgradeGroup:AddDropdown("UpgradeRarities", { Values = js, Multi = true, Searchable = true, AllowNull = true, Text = "Rarities", Default = {} })
AutoUpgradeGroup:AddSlider("UpgradesPerCycle", { Text = "Upgrades Per Cycle", Default = 5, Min = 1, Max = 25, Rounding = 0 })
local AutoSellGroup = jj.Base:AddLeftGroupbox("Auto Sell", "trash-2")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
AutoSellGroup:AddDropdown("SellRarities", { Values = js, Multi = true, Searchable = true, AllowNull = true, Text = "Rarities", Default = {} })
AutoSellGroup:AddDropdown("SellMutations", {
    Values = jc_1,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Text = "Mutations",
    Default = {}
})
AutoSellGroup:AddSlider("SellMaxIncome", { Text = "Max Income", Default = 100, Min = 0, Max = 5000, Rounding = 0 })
AutoSellGroup:AddButton({ Text = "Sell All NPCs", Func = onSellAllNPCs })
local PlotGroup = jj.Progress:AddLeftGroupbox("Plot", "layout-grid")
PlotGroup:AddToggle("AutoUpgradePlot", { Text = "Auto Upgrade Plot", Default = false })
local RebirthGroup = jj.Progress:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local RewardsGroup = jj.Shop:AddLeftGroupbox("Rewards", "gift")
RewardsGroup:AddToggle("AutoRewards", { Text = "Auto Claim Free Rewards", Default = false })
local GearShopGroup = jj.Shop:AddRightGroupbox("Gear Shop", "swords")
GearShopGroup:AddToggle("AutoGearShop", { Text = "Auto Gear Shop", Default = false })
GearShopGroup:AddDropdown("GearWanted", { Values = jd_2, Multi = true, Searchable = true, AllowNull = true, Text = "Gear", Default = {} })
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
task.spawn(worker11)
local MenuGroup = jj.Settings:AddLeftGroupbox("Menu", "menu")
i1 = tick()
iY = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local nK = v
        pcall(function()
            nK:Disable()
        end)
    end
end)
iM = fn471
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(worker12)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn661)
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/dont-steal-the-bobo")
ThemeManager:SaveDefault("Mint")
SaveManager:BuildConfigSection(jj.Settings)
ThemeManager:ApplyToTab(jj.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
