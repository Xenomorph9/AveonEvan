local l4
local Bridge
local l7
local lP
local mw
local lS
local mz
local lV
local mC
local lY
local mj
local l0
local l3
local mp
local mL
local mO
local lO
local l9
local mR
local lR
local mc
local DifficultyData
local Options
local mE
local mH
local mo
local Toggles
local lQ
local mA
local mh
local lW
local mk
local mG
local l1
local Library
local function fn32(dC)
    local Lobby = l0:FindFirstChild("Lobby")
    local pH = Lobby and Lobby:FindFirstChild("Pads")
    local pG_1 = pH
    if pH then
        pH = pG_1:FindFirstChild("Pad" .. tostring(dC))
    end
    local pG_2 = pH
    if not pG_2 then
        return nil
    end
    local Fill = pG_2:FindFirstChild("Fill")
    local pI = Fill and Fill:IsA("BasePart")
    if pI then
        return Fill.Position, Fill
    elseif pG_2:IsA("Model") then
        return pG_2:GetPivot().Position, nil
    else
        return nil
    end
end
local function onRenderStepped()
    if Library.Unloaded then
        return
    end
    pcall(lR)
end
local function fn118(ai, aj, ak)
    return string.format("<b>%s</b> %s %s", ai, mC("-", "#5a6070"), mC(aj, ak))
end
local function fn121()
    local ny = tonumber(lW:GetAttribute("HayCapacity")) or 5
    return ny
end
local function fn161()
    l3(mh, "Copied Discord invite to clipboard")
end
local function fn212()
    local nw = tonumber(lW:GetAttribute("HayCarried")) or 0
    return nw
end
local function fn242()
    local pt = Options.LobbyDifficulty and Options.LobbyDifficulty.Value
    local pt_1 = pt ~= ""
    local pv = type(pt) == "string" and pt_1
    if pv then
        return pt
    end
    return DifficultyData.Default or "Easy"
end
local function fn292(ec)
    local DiscordGroup = ec:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mR })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mR })
end
local function fn309()
    if not Toggles.NeedleEsp.Value then
        lV()
    end
end
local function fn359(aU)
    local nA = Options[aU]
    if not nA then
        return {}
    end
    local Value = nA.Value
    if type(Value) == "table" then
        return Value
    end
    local nA_1 = Value ~= ""
    local nC = type(Value) == "string" and nA_1
    if nC then
        return { [Value] = true }
    end
    return {}
end
local function fn367()
    local nS_1
    local nR = not l7.highlight or not l7.highlight.Parent
    local nR_3
    if nR then
        local highlight = Instance.new("Highlight")
        highlight.Name = "OuroborosNeedleEsp"
        highlight.FillColor = Color3.fromRGB(255, 105, 180)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.4
        highlight.OutlineTransparency = 0
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Adornee = nil
        highlight.Parent = mj
        l7.highlight = highlight
    end
    local nR_2 = not l7.text and typeof(Drawing) == "table" and type(Drawing.new) == "function"
    if nR_2 then
        nR_3, nS_1 = pcall(Drawing.new, "Text")
        if nR_3 and nS_1 then
            nS_1.Size = 16
            nS_1.Center = true
            nS_1.Outline = true
            nS_1.OutlineColor = Color3.fromRGB(0, 0, 0)
            nS_1.Color = Color3.fromRGB(255, 105, 180)
            if Drawing.Fonts and Drawing.Fonts.UI then
                nS_1.Font = Drawing.Fonts.UI
            end
            nS_1.Visible = false
            l7.text = nS_1
        end
    end
end
local function fn418()
    local Main = l0:FindFirstChild("Main")
    local nL = Main and Main:FindFirstChild("Needle")
    local nK_1 = nL
    if nL then
        nL = nK_1:IsA("BasePart")
    end
    if nL then
        nL = nK_1.Parent
    end
    if nL then
        return nK_1
    end
    return nil
end
local function fn429(aB)
    local np_1
    local no_1
    no_1, np_1 = pcall(Bridge.GetBridge, aB)
    if no_1 then
        return np_1
    end
    return nil
end
local function fn432()
    return lO() >= mL()
end
local function fn481(Y, Z)
    if setclipboard then
        setclipboard(Y)
    elseif toclipboard then
        toclipboard(Y)
    end
    Library:Notify(Z)
end
local function fn491(an)
    if Library.Unloaded then
        return false
    end
    local nf = Toggles[an]
    return nf ~= nil and nf.Value == true
end
local function fn573()
    local n1_1
    local n0_1
    if not lS("NeedleEsp") then
        if l7.highlight or l7.text then
            lV()
        end
        return
    end
    mG()
    local nY_2 = mp()
    local highlight = l7.highlight
    local text = l7.text
    if not nY_2 then
        if highlight then
            highlight.Adornee = nil
        end
        if text then
            text.Visible = false
        end
        return
    end
    if highlight then
        highlight.Adornee = nY_2
    end
    if not text then
        return
    end
    local CurrentCamera = l0.CurrentCamera
    if not CurrentCamera then
        text.Visible = false
        return
    end
    n1_1, n0_1 = CurrentCamera:WorldToViewportPoint(nY_2.Position)
    if n0_1 and n1_1.Z > 0 then
        local n0_2 = CurrentCamera.CFrame.Position
        local nZ_2 = l4()
        if nZ_2 then
            n0_2 = nZ_2.Position
        end
        local nZ_3 = math.floor((nY_2.Position - n0_2).Magnitude + 0.5)
        text.Text = "Needle [" .. nZ_3 .. "m]"
        text.Position = Vector2.new(n1_1.X, n1_1.Y - 18)
        text.Visible = true
    else
        text.Visible = false
    end
end
local function fn622(a1)
    local nF = not a1
    local nJ = if nF then 1 else 0
    local nH = 1892 * nJ + 1318 * (1 - nJ)
    local nI = 957 * nJ + 427 * (1 - nJ)
    if not ((nH * 3462 + nI * 507 + nH * nI) % 16777213 == 8845947) then
        nF = not fireclickdetector
    end
    if nF then
        return
    end
    pcall(fireclickdetector, a1)
end
local function fn628()
    local PlayerGui = lW:FindFirstChild("PlayerGui")
    local po = PlayerGui and PlayerGui:FindFirstChild("LobbyUIs")
    local pn_1 = po
    if po then
        po = pn_1:FindFirstChild("QueueUI")
    end
    local pn_2 = po
    if po then
        po = pn_2:FindFirstChild("PartyBar")
    end
    local pn_3 = po
    return pn_3 ~= nil and pn_3.Visible == true
end
local function worker2()
    while not Library.Unloaded do
        task.wait(1.5)
        if lS("AutoUpgrade") then
            pcall(mz)
        end
        if lS("AutoBuyBomb") then
            pcall(mO)
        end
    end
end
local function fn680(bJ)
    local oj = mp()
    if not oj then
        return false
    end
    local ol = os.clock()
    if ol - mc.lastNeedle < 0.35 then
        return true
    end
    mc.lastNeedle = ol
    if not bJ then
        mo(oj.Position + Vector3.new(0, 3, 0))
    end
    lQ(oj:FindFirstChild("NeedlePrompt"))
    mH(oj:FindFirstChild("ClickDetector"))
    return true
end
local function fn684()
    local Character = lW.Character
    local nj = Character and Character:FindFirstChildOfClass("Humanoid")
    return nj
end
local function fn693(aG)
    local nr = l4()
    local ns = not nr or typeof(aG) ~= "Vector3"
    if ns then
        return false
    end
    nr.CFrame = CFrame.new(aG)
    nr.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function worker()
    while not Library.Unloaded do
        local p0 = (lS("AutoPickHay"))
        if not p0 then
            local p1_1 = lS("AutoSellHay") and lO() > 0
            p0 = p1_1
        end
        local p1_2 = p0
        if lS("AutoFindNeedle") then
            pcall(l1, p1_2)
        end
        local p0_1 = lS("AutoSellHay") and lO() > 0
        if p0_1 then
            local p1_3 = mA() or not lS("AutoPickHay")
            p0_1 = p1_3
        end
        if p0_1 then
            pcall(mk)
        elseif lS("AutoPickHay") then
            pcall(mE)
        end
        task.wait(0.08)
    end
end
local function fn774()
    local Main = l0:FindFirstChild("Main")
    local oe = Main and Main:FindFirstChild("SellStand")
    return oe
end
local function worker3()
    while not Library.Unloaded do
        if lS("AutoCreateGame") then
            pcall(lY)
        end
        if lS("AutoStart") then
            pcall(mw)
        end
        task.wait(0.4)
    end
end
local function fn797()
    local Character = lW.Character
    local nm = Character and Character:FindFirstChild("HumanoidRootPart")
    return nm
end
local function fn810()
    local pA = Options.PlayerLimit and Options.PlayerLimit.Value
    local pA_1 = tonumber(pA)
    if pA_1 and pA_1 >= 1 and pA_1 <= 4 then
        return math.floor(pA_1)
    end
    return 1
end
local function fn838()
    lV()
end
local function fn859()
    local nu = tonumber(lW:GetAttribute("Diamonds")) or 0
    return nu
end
local function fn882()
    return mj
end
local function fn892()
    if l7.highlight then
        pcall(function()
            l7.highlight:Destroy()
        end)
        l7.highlight = nil
    end
    if l7.text then
        pcall(function()
            l7.text:Remove()
        end)
        l7.text = nil
    end
end
local function fn895(af, ag)
    return string.format('<font color="%s">%s</font>', ag, af)
end
lO = nil
lP = nil
lQ = nil
lR = nil
lS = nil
lV = nil
lW = nil
lY = nil
l0 = nil
l1 = nil
l3 = nil
l4 = nil
l7 = nil
l9 = nil
mc = nil
DifficultyData = nil
mh = nil
Options = nil
mj = nil
mk = nil
mo = nil
mp = nil
Toggles = nil
mw = nil
local lM, lN, lT, lU, lZ, l_, l2, l5, l6, l8, ma, mb, md, me, mg, HayConfig, mm, mn, mq, ms, mt, mu, BombData, SaveManager, my
mz = nil
mA = nil
mC = nil
mE = nil
mG = nil
mH = nil
Library = nil
mL = nil
Bridge = nil
local mN
mO = nil
mR = nil
local UpgradeData, ThemeManager, mF, mI, mK, mP, mQ, mS
local mU_1
local mV_3
local m4 = if not game:IsLoaded() then 1 else 0
if m4 == 1 then
    game.Loaded:Wait()
end
lM, mU_1, mK, mF, my, mt, mj, md, l8, l5, l0, lW, lP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mT = 8
repeat
    local mV_1 = (mT * 4 + 1) % 5 + 1
    if mV_1 <= 3 then
        if mV_1 <= 2 then
            if mV_1 <= 1 then
                local mW_1 = {
                    "xaaydphkm",
                    "tycvaakzvia",
                    "dcywuxneoyc",
                    "kjmtsjh",
                    "cclbh",
                    "mwcijoywog",
                    "cdfwhxbxkrs",
                    "flf",
                    "dsnpm",
                    "nxfywzw",
                    "cnne"
                }
                local ue = mT
                local mX_1 = mW_1[ue % 11 + 1]
                if mX_1:len() >= mX_1:gsub("(.)", "%1%1", ue % 3 % 2 + 1):len() then
                    mt = game:GetService("UserInputService")
                    mF = game:GetService("VirtualUser")
                    my = game:GetService("HttpService")
                else
                    mF = game:GetService("UserInputService")
                    my = game:GetService("VirtualUser")
                    mt = game:GetService("HttpService")
                end
                mT = (mT + 9) % 40
            else
                local mW_2 = { "yyfxfvxv", "sjmczcbcgtk", "oxubgscdu", "mhnbxfai", "ayrwdftxv", "ryikignolf", "ayhafv" }
                local uc = mT
                local mX_2 = mW_2[uc % 7 + 1]
                if mX_2:len() >= mX_2:reverse():rep(uc % 3 + 2):len() then
                    l8 = game:GetService("CoreGui")
                    mj = game:GetService("GuiService")
                    md = game:GetService("TeleportService")
                else
                    mj = game:GetService("CoreGui")
                    md = game:GetService("GuiService")
                    l8 = game:GetService("TeleportService")
                end
                mT = (mT + 24) % 40
            end
        else
            local uh = bit32.rrotate(bit32.bxor(bit32.lrotate(mT, 12), string.byte(tostring(lP))), 8)
            if bit32.bxor(bit32.lrotate(bit32.bxor(uh, 2984514464), 10), 2421064391) ~= bit32.lrotate(uh, 10) then
                l0 = game:GetService("Lighting")
                lW = game:GetService("Workspace")
                lM = lP.LocalPlayer
                l5 = fn882
            else
                l5 = game:GetService("Lighting")
                l0 = game:GetService("Workspace")
                lW = lM.LocalPlayer
                lP = fn882
            end
            mT = (mT + 29) % 40
        end
    elseif mV_1 <= 4 then
        if (mT * 3 + 7) * 5 % 4 == ((mT * 3 + 7) * 5 + 15) % 4 then
            mj = game:GetService("Players")
        else
            lM = game:GetService("Players")
        end
        mT = (mT + 19) % 40
    else
        local mV_2 = {
            "ekgwslbaeo",
            "gtmlrgq",
            "jxlbkcvh",
            "ahengrssxuo",
            "wgndwmfaezs",
            "tezp",
            "ornwbgufxo",
            "mog",
            "clygehoyc",
            "caahkqvlwp"
        }
        local t0 = mT
        local mW_3 = mV_2[t0 % 10 + 1]
        if mW_3:len() <= mW_3:gsub("(.)", "%1%1", t0 % 3 % 2 + 1):len() then
            mU_1 = game:GetService("ReplicatedStorage")
            mK = game:GetService("RunService")
        else
            mK = game:GetService("ReplicatedStorage")
            mU_1 = game:GetService("RunService")
        end
        mT = (mT + 39) % 40
    end
until (mT * 37 + 13) % 40 == 29
if getgenv then
    mN, mV_3 = nil, nil
    local mT_1 = 2
    repeat
        if (mT_1 * 1 + 0) % 2 + 1 <= 1 then
            local tZ = bit32.rrotate(bit32.bxor(bit32.lrotate(mT_1, 17), string.byte(tostring(mN))), 17)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tZ, 1339852362), 12), 3362039037) == bit32.lrotate(tZ, 12) then
                getgenv().gethui = lP
                mN = getgenv().__OuroborosFindTheNeedleLib
            else
                getgenv().gethui = mN
                lP = getgenv().__OuroborosFindTheNeedleLib
            end
            mT_1 = (mT_1 + 7) % 8
        else
            local mW_5 = {
                "zruoufenypve",
                "yiflkuxa",
                "yalsprzmwf",
                "qtqqruxl",
                "ybcafkrqts",
                "edb",
                "uakqzgaejuu",
                "slkp",
                "uedjvt",
                "fjbaxnpv",
                "lhqivo"
            }
            if mW_5[(mT_1 * 33 + 35) % 11 + 1] < mW_5[(mT_1 * 33 + 35) % 11 + 1] then
                mN = mV_3
            else
                mV_3 = mN
            end
            mT_1 = (mT_1 + 3) % 8
        end
    until (mT_1 * 5 + 0) % 8 == 4
    if mV_3 then
        mV_3 = mN.Unload
    end
    if mV_3 then
        pcall(function()
            mN:Unload()
        end)
    end
end
pcall(function()
    gethui = lP
end)
if setthreadidentity then
    setthreadidentity(8)
end
mn, mh, ma, l6, l2, lZ, lU, lN, mP, Bridge, UpgradeData, BombData, HayConfig, DifficultyData, l9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mn = "Find the Needle"
mh = "https://discord.gg/ehKVq7pf7v"
ma = "https://rscripts.net/@Ouroboros"
l6 = "https://ouroboros-hub-rbx.web.app/"
l2 = "#7fd47f"
lZ = "#6ec1ff"
lU = "#e8a34d"
lN = "#8b93a3"
mP = "#e05a5a"
Bridge = require(mU_1:WaitForChild("Packages"):WaitForChild("Bridge"))
local GameSettings = require(mU_1:WaitForChild("GameSettings"))
UpgradeData = GameSettings.UpgradeData
BombData = GameSettings.BombData
HayConfig = GameSettings.HayConfig
DifficultyData = GameSettings.DifficultyData
local ClientServices = mU_1:FindFirstChild("ClientServices")
local mY = ClientServices and ClientServices:FindFirstChild("HayClient")
local lX = mY
if lX then
    pcall(function()
        l9 = require(lX)
    end)
end
Library, ThemeManager, SaveManager = nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosFindTheNeedleLib = Library
end
Toggles, Options, mc, l7, lT, l3, mR, mC, mg, lS, ms, l4, mS, mo, l_, lO, mL, mA, me, lQ, mH, mp, lV, mG, lR, mm, l1, mk, mq, mE, mz, mO, mu, mI, mb, mQ, lY, mw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
mc = { lastDig = 0, lastSell = 0, lastNeedle = 0, lastSync = 0, lastCreate = 0, lastStart = 0 }
l7 = { highlight = nil, text = nil }
l3 = fn481
mR = fn161
mC = fn895
mg = fn118
lS = fn491
ms = fn684
l4 = fn797
mS = fn429
mo = fn693
l_ = fn859
lO = fn212
mL = fn121
mA = fn432
me = fn359
lQ = function(aZ)
    if not aZ then
        return
    end
    pcall(function()
        aZ.HoldDuration = 0
        aZ.RequiresLineOfSight = false
        aZ.MaxActivationDistance = 1000
    end)
    if fireproximityprompt then
        pcall(fireproximityprompt, aZ)
    end
end
mH = fn622
mp = fn418
lV = fn892
mG = fn367
lR = fn573
mm = fn774
l1 = fn680
mk = function()
    local oq
    oq = nil
    oq = mS("HayBridge")
    if not oq then
        return false
    end
    local ot = mm()
    local ou = l4()
    if ot and ou then
        local Position = ot:GetPivot().Position
        if (ou.Position - Position).Magnitude > 20 then
            mo(Position + Vector3.new(0, 4, 0))
        end
    end
    local ot_1 = os.clock()
    if ot_1 - mc.lastSell < 0.4 then
        return true
    end
    mc.lastSell = ot_1
    pcall(function()
        oq:FireServer("sell")
    end)
    return true
end
mq = function(b3, b4)
    local oE_1
    local oD_1
    local oC_1
    local oB_1
    local oA_1
    if not l9 then
        return nil
    end
    local Renderer = l9.Renderer
    local oz = type(Renderer) ~= "table" or type(Renderer.PartToPiece) ~= "table"
    local oz_1
    if oz then
        return nil
    end
    oB_1, oz_1, oA_1 = nil, nil, nil
    oE_1, oC_1, oD_1 = nil, nil, nil
    for k, v in Renderer.PartToPiece do
        local oy
        local oO = v
        local oF = typeof(k) == "Instance" and k.Parent and type(oO) == "number"
        if oF then
            oy = false
            pcall(function()
                oy = Renderer:IsExposed(oO) == true
            end)
            if oy then
                local Position = k.Position
                local Magnitude = (Position - b3).Magnitude
                if Magnitude <= b4 then
                    if not oz_1 or Magnitude < oz_1 then
                        oB_1 = oO
                        oz_1 = Magnitude
                        oA_1 = Position
                    end
                else
                    if not oC_1 or Magnitude < oC_1 then
                        oE_1 = oO
                        oC_1 = Magnitude
                        oD_1 = Position
                    end
                end
            end
        end
    end
    if oB_1 then
        return oB_1, oA_1, false
    end
    return oE_1, oD_1, true
end
mE = function()
    local oP
    local oV_1
    if not l9 then
        return false
    elseif lW:GetAttribute("HayReady") ~= true then
        local oS_1 = os.clock()
        if oS_1 - mc.lastSync > 2 then
            mc.lastSync = oS_1
            local oQ = mS("HayBridge")
            if oQ then
                pcall(function()
                    oQ:FireServer("sync")
                end)
            end
        end
        return false
    elseif mA() then
        return false
    else
        local oS_2 = l4()
        if not oS_2 then
            return false
        end
        local oT = tonumber(HayConfig.MaxReach) or 45
        local oT_1
        oP, oV_1, oT_1 = mq(oS_2.Position, oT)
        if not oP then
            local Field = l9.Field
            if Field and Field.Center then
                mo(Field.Center + Vector3.new(0, 8, 0))
            end
            return false
        end
        if oT_1 and oV_1 then
            mo(oV_1 + Vector3.new(0, 4, 0))
        end
        local oS_5 = tonumber(HayConfig.AbsoluteMaxDigsPerSecond) or 15
        local oS_6 = 1 / math.max(oS_5, 1)
        local oT_3 = os.clock()
        if oT_3 - mc.lastDig < oS_6 then
            return true
        end
        mc.lastDig = oT_3
        local oR = mS("HayBridge")
        if oR then
            pcall(function()
                oR:FireServer(oP)
            end)
        end
        return true
    end
end
mz = function()
    local o0 = me("UpgradeTypes")
    local o_ = mS("UpgradeBridge")
    if not o_ then
        return
    end
    for k, v in UpgradeData.Order do
        local o7 = v
        if o0[o7] == true then
            pcall(function()
                o_:FireServer(o7)
            end)
        end
    end
end
mO = function()
    local o9 = me("BombTypes")
    local o8 = mS("BombBridge")
    if not o8 then
        return
    end
    local pa = l_()
    for k, v in BombData.ShopOrder do
        local pm = v
        if o9[pm] == true then
            local pb = BombData.Get(pm)
            if pb and pb.Currency == "Diamonds" then
                if pa >= (pb.Price or 0) then
                    pcall(function()
                        o8:FireServer("buy", pm)
                    end)
                end
            else
                pcall(function()
                    o8:FireServer("buy", pm)
                end)
            end
        end
    end
end
mu = fn628
mI = fn242
mb = fn810
mQ = fn32
lY = function()
    local pK
    local pL
    local pO_1
    local pM = mS("QueueBridge")
    if not pM then
        return false
    elseif mu() then
        return true
    else
        local pN = os.clock()
        local pN_1
        if pN - mc.lastCreate < 2 then
            return true
        end
        mc.lastCreate = pN
        pL = mb()
        pK = mI()
        pN_1, pO_1 = mQ(pL)
        local pP = l4()
        if pN_1 then
            mo(pN_1 + Vector3.new(0, 3, 0))
        end
        if firetouchinterest and pO_1 and pP then
            pcall(firetouchinterest, pP, pO_1, 0)
            pcall(firetouchinterest, pP, pO_1, 1)
        end
        pcall(function()
            pM:FireServer("size", pL, pK)
        end)
        return true
    end
end
mw = function()
    local pS
    pS = nil
    pS = mS("QueueBridge")
    if not pS then
        return false
    end
    local pT = os.clock()
    if pT - mc.lastStart < 1 then
        return true
    end
    mc.lastStart = pT
    pcall(function()
        pS:FireServer("start")
    end)
    return true
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mh, Copyable = true }, "|", mn },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Window:SetGlow(true, { Color = Color3.fromRGB(255, 105, 180), Radius = 24, Transparency = 0.55 })
lT = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Lobby = Window:AddTab("Lobby", "door-open"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in lT do
    if k ~= "Info" then
        fn292(v)
    end
end
local AutomationGroup = lT.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoFindNeedle", { Text = "Auto Find Needle", Default = false })
AutomationGroup:AddToggle("AutoPickHay", { Text = "Auto Pick Hay", Default = false })
AutomationGroup:AddToggle("AutoSellHay", { Text = "Auto Sell Hay", Default = false })
AutomationGroup:AddDivider("Upgrades")
AutomationGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
AutomationGroup:AddDropdown("UpgradeTypes", {
    Values = UpgradeData.Order,
    Default = { Backpack = true, Cooldown = true, Grab = true },
    Multi = true,
    AllowNull = true,
    Text = "Upgrades"
})
AutomationGroup:AddDivider("Bombs")
AutomationGroup:AddToggle("AutoBuyBomb", { Text = "Auto Buy Bomb", Default = false })
AutomationGroup:AddDropdown("BombTypes", {
    Values = BombData.ShopOrder,
    Default = { Regular = true },
    Multi = true,
    AllowNull = true,
    Text = "Bombs"
})
local VisualsGroup = lT.Main:AddRightGroupbox("Visuals", "eye")
VisualsGroup:AddToggle("NeedleEsp", { Text = "Needle ESP", Default = false })
local LobbyGroup = lT.Lobby:AddLeftGroupbox("Lobby", "users")
if (LobbyGroup and 3) or (LobbyGroup or 3) and (not LobbyGroup) or not ((LobbyGroup and 3) or (LobbyGroup or 3) and (not LobbyGroup)) then
    LobbyGroup:AddToggle("AutoCreateGame", { Text = "Auto Create Game", Default = false })
    LobbyGroup:AddDropdown("LobbyDifficulty", { Values = DifficultyData.Order, Default = "Easy", Multi = false, Text = "Difficulty" })
    LobbyGroup:AddDropdown("PlayerLimit", { Values = { "1", "2", "3", "4" }, Default = "1", Multi = false, Text = "Player Limit" })
    LobbyGroup:AddToggle("AutoStart", { Text = "Auto Start", Default = false })
else
    DifficultyData:AddToggle("AutoCreateGame", { Text = "Auto Create Game", Default = false })
    DifficultyData:AddDropdown("LobbyDifficulty", { Multi = false, Text = "Difficulty", Default = "Easy", Values = LobbyGroup.Order })
    DifficultyData:AddDropdown("PlayerLimit", { Multi = false, Text = "Player Limit", Default = "1", Values = { "3", "1", "4", "2" } })
    DifficultyData:AddToggle("AutoStart", { Text = "Auto Start", Default = false })
end
task.spawn(worker)
mK.RenderStepped:Connect(onRenderStepped)
Toggles.NeedleEsp:OnChanged(fn309)
Library:OnUnload(fn838)
task.spawn(worker2)
task.spawn(worker3)
local function mT_5()
    local q7
    local q6
    q6 = nil
    q7 = nil
    local Label2, Label3, q4, q5, Label
    local function q9()
        local qa = hookfunction ~= nil
        local qb = hookmetamethod ~= nil
        local qc = getrawmetatable ~= nil
        local qd = setrawmetatable ~= nil
        local qe = getgc ~= nil
        local qf = getgenv ~= nil
        local qg = getreg ~= nil
        local qh = getconnections ~= nil
        local qi = firesignal ~= nil
        local qj = getcallbackvalue ~= nil
        local qk = setclipboard ~= nil
        local ql = getcustomasset ~= nil
        local qm = getnamecallmethod ~= nil
        local qn = isexecutorclosure ~= nil
        local qo = fireproximityprompt ~= nil
        local qp = firetouchinterest ~= nil
        local qq = WebSocket ~= nil
        local qr = readfile ~= nil
        local qs = writefile ~= nil
        local qu = (request or http_request) ~= nil
        local qw = (debug and debug.getupvalues) ~= nil
        local qy = (debug and debug.setupvalue) ~= nil
        local qz = 0
        local qA = { qa, qb, qc, qd, qe, qf, qg, qh, qi, qj, qk, ql, qm, qn, qo, qp, qq, qr, qs, qu, qw, qy }
        for i, v in ipairs(qA) do
            if v then
                qz += 1
            end
        end
        local qa_1 = qz / #qA
        if qa_1 >= 0.9 then
            return mC("Full Support", l2)
        elseif qa_1 >= 0.6 then
            return mC("Half Support", lU)
        else
            return mC("Low Support", mP)
        end
    end
    q6 = "Unknown"
    pcall(function()
        local qJ_1
        local qI_1
        if identifyexecutor then
            qJ_1, qI_1 = identifyexecutor()
            local qK = qJ_1 ~= ""
            local qL = type(qJ_1) == "string" and qK
            if qL then
                local qK_1 = type(qI_1) == "string" and qI_1 ~= "" and qJ_1 .. " " .. qI_1
                q6 = qK_1 or qJ_1
            end
        end
    end)
    local ra = q9()
    q7 = os.clock()
    q4 = function()
        local qT = math.floor(os.clock() - q7)
        if qT < 60 then
            return qT .. "s"
        elseif qT < 3600 then
            return string.format("%dm %ds", qT // 60, qT % 60)
        else
            return string.format("%dh %dm", qT // 3600, qT % 3600 // 60)
        end
    end
    local UserGroup = lT.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = lW, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(mg("User", lW.DisplayName .. " @" .. lW.Name, l2), true)
    UserGroup:AddLabel(mg("UserId", tostring(lW.UserId), lZ), true)
    UserGroup:AddLabel(mg("Executor", q6 .. "  " .. ra, l2), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(mg("Session", q4(), lU), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            l3(lW.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            l3("https://www.roblox.com/users/" .. tostring(lW.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = lT.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(mg("Game", mn, lZ), true)
    Label2 = SessionGroup:AddLabel(mg("Players", "0/0", l2), true)
    q5 = tostring(game.JobId)
    local ra_1 = #q5 > 18 and string.sub(q5, 1, 18) .. "..."
    local rb = ra_1
    local rf = if rb then 1 else 0
    local rd = 529 * rf + 492 * (1 - rf)
    local re = 2927 * rf + 3547 * (1 - rf)
    if not ((rd * 1416 + re * 972 + rd * re) % 16777213 == 5142491) then
        rb = q5
    end
    local ra_2 = rb
    SessionGroup:AddLabel(mg("Job", ra_2, lN), true)
    Label = SessionGroup:AddLabel(mg("Ping", "0 ms", lU), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            l8:Teleport(game.PlaceId, lW)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            l3(q5, "Copied Job ID")
        end
    })
    task.spawn(function()
        local qZ_1
        local qY_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(mg("Session", q4(), lU))
            Label2:SetText(mg("Players", #lM:GetPlayers() .. "/" .. tostring(lM.MaxPlayers), l2))
            qY_1, qZ_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local qY_2 = qY_1 and qZ_1 .. " ms" or "n/a"
            Label:SetText(mg("Ping", qY_2, lU))
        end
    end)
    local SocialsGroup = lT.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = mR })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(ma)
            elseif toclipboard then
                toclipboard(ma)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            l3(l6, "Copied website link")
        end
    })
end
local function mU_3()
    local connection
    local MovementGroup = lT.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = lT.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function f_(f0)
        local rj = if not f0:IsA("ProximityPrompt") then 1 else 0
        if rj == 1 then
            return
        end
        f0.HoldDuration = 0
        f0.MaxActivationDistance = 50
        f0.RequiresLineOfSight = false
    end
    connection = nil
    mK.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = lW.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local rk_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if rk_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    mF.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local rs_1 = ms()
            if rs_1 then
                rs_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = l0.CurrentCamera
    mK.RenderStepped:Connect(function(gn)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local rx_1 = ms()
            if rx_1 then
                rx_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local rx_3 = l4()
            local ry = ms()
            if rx_3 and ry then
                ry.PlatformStand = true
                local ry_1 = Vector3.zero
                local rD = if mF:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if rD == 1 then
                    ry_1 = ry_1 + CurrentCamera.CFrame.LookVector
                end
                if mF:IsKeyDown(Enum.KeyCode.S) then
                    ry_1 = ry_1 - CurrentCamera.CFrame.LookVector
                end
                if mF:IsKeyDown(Enum.KeyCode.A) then
                    ry_1 = ry_1 - CurrentCamera.CFrame.RightVector
                end
                if mF:IsKeyDown(Enum.KeyCode.D) then
                    ry_1 = ry_1 + CurrentCamera.CFrame.RightVector
                end
                if mF:IsKeyDown(Enum.KeyCode.Space) then
                    ry_1 = ry_1 + Vector3.new(0, 1, 0)
                end
                if mF:IsKeyDown(Enum.KeyCode.LeftControl) then
                    ry_1 = ry_1 - Vector3.new(0, 1, 0)
                end
                rx_3.Velocity = Vector3.zero
                if ry_1.Magnitude > 0 then
                    rx_3.CFrame = rx_3.CFrame + ry_1.Unit * Options.FlySpeed.Value * gn
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local rE = ms()
            if rE then
                rE.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local rG = ms()
            if rG then
                rG.WalkSpeed = 16
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(l0:GetDescendants()) do
                pcall(f_, descendant)
            end
            connection = l0.DescendantAdded:Connect(function(gP)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(f_, gP)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
local function mY_1()
    local MenuGroup = lT.Settings:AddLeftGroupbox("Menu", "logs")
    local gW = 0
    local gX = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function gZ()
        local CurrentCamera = l0.CurrentCamera
        if not CurrentCamera then
            return
        end
        my:CaptureController()
        my:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        gW = gW + 1
        gX = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. gW)
        end)
    end
    local connection2 = lW.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(gZ)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local rU = Toggles.AntiAfk.Value and tick() - gX >= 60
            if rU then
                pcall(gZ)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = lT.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    local function hn(ho)
        pcall(function()
            md:SetGameplayPausedNotificationEnabled(not ho)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = mj:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not ho
            end
        end)
        if not ho then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(lW, "GameplayPaused", false)
            else
                lW.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        hn(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hn(true)
            end
        end
    end)
    local hF = false
    local function hG()
        local JobId, PlaceId
        if hF then
            return
        end
        hF = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local r2 = pcall(function()
            l8:TeleportToPlaceInstance(PlaceId, JobId, lW)
        end)
        if not r2 then
            pcall(function()
                l8:Teleport(PlaceId, lW)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = mj:WaitForChild("RobloxPromptGui", 30)
        local r7 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not r7 then
            return
        end
        r7.ChildAdded:Connect(function(hY)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and hY.Name == "ErrorPrompt" then
                hG()
            end
        end)
    end)
    l8.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            hF = false
            hG()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            mK:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local id = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function ie(ig)
        if id[ig.ClassName] then
            pcall(function()
                ig.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                l5.GlobalShadows = false
            end)
            pcall(function()
                l5.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(l0:GetDescendants()) do
                pcall(ie, descendant)
            end
            connection = l0.DescendantAdded:Connect(function(iw)
                if Toggles.FpsBoost.Value then
                    pcall(ie, iw)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                l5.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        hn(false)
        pcall(function()
            mK:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        if getgenv then
            getgenv().__OuroborosFindTheNeedleLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(lT.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/FindTheNeedle")
    local iG = SaveManager:BuildConfigSection(lT.Settings)
    local function iH(iI, iJ)
        local sl_1 = (iI == "Toggle" and Toggles or Options)[iJ]
        local sk_2 = type(sl_1) == "table" and sl_1.Type == iI
        return sk_2 and sl_1 or nil
    end
    local function iP(iQ, iR)
        local Type = iR.Type
        if Type == "Toggle" then
            return { idx = iQ, type = "Toggle", value = iR.Value == true }
        elseif Type == "Slider" then
            return { idx = iQ, type = "Slider", value = tostring(iR.Value) }
        elseif Type == "Dropdown" then
            return { idx = iQ, type = "Dropdown", multi = iR.Multi == true, value = iR.Value }
        elseif Type == "Input" then
            local sp = iR.Value
            local st = if sp then 1 else 0
            local sr = 1848 * st + 2706 * (1 - st)
            local ss = 2579 * st + 3366 * (1 - st)
            if not ((sr * 920 + ss * 1087 + sr * ss) % 16777213 == 9269525) then
                sp = ""
            end
            return { idx = iQ, type = "Input", text = tostring(sp) }
        elseif Type == "ColorPicker" then
            return { idx = iQ, type = "ColorPicker", value = iR.Value:ToHex(), transparency = iR.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = iQ,
                type = "KeyPicker",
                mode = iR.Mode,
                key = iR.Value,
                modifiers = iR.Modifiers,
                toggled = iR.Toggled
            }
        else
            return nil
        end
    end
    local function iT()
        local sy = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local sz = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if sz then
                    local sz_1 = iP(k, v)
                    if sz_1 then
                        sy[#sy + 1] = sz_1
                    end
                end
            end
        end
        table.sort(sy, function(i0, i1)
            if i0.type ~= i1.type then
                return i0.type < i1.type
            end
            return i0.idx < i1.idx
        end)
        return { objects = sy }
    end
    local function i2(i3)
        local sP
        sP = nil
        local sQ = type(i3) ~= "table" or type(i3.idx) ~= "string" or type(i3.type) ~= "string"
        local sU = if sQ then 1 else 0
        local sS = 1071 * sU + 2383 * (1 - sU)
        local sT = 3911 * sU + 69 * (1 - sU)
        if not ((sS * 2536 + sT * 2504 + sS * sT) % 16777213 == 16697881) then
            sQ = SaveManager.Ignore[i3.idx]
        end
        if sQ then
            return false
        end
        sP = iH(i3.type, i3.idx)
        if not sP then
            return false
        end
        local sQ_1 = pcall(function()
            if i3.type == "Input" then
                if type(i3.text) ~= "string" then
                    return
                end
                sP:SetValue(i3.text)
            elseif i3.type == "ColorPicker" then
                sP:SetValueRGB(Color3.fromHex(i3.value), i3.transparency)
            elseif i3.type == "KeyPicker" then
                sP:SetValue({ i3.key, i3.mode, i3.modifiers })
                if i3.mode == "Toggle" and i3.toggled ~= nil then
                    sP.Toggled = i3.toggled
                    sP:Update()
                end
            else
                sP:SetValue(i3.value)
            end
        end)
        return sQ_1
    end
    iG:AddDivider()
    iG:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    iG:AddButton("Export Config to Clipboard", function()
        local sW_1
        local sV_1
        sV_1, sW_1 = pcall(mt.JSONEncode, mt, iT())
        if not sV_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local sV_2 = setclipboard or toclipboard
        local sV_3 = type(sV_2) ~= "function" or not pcall(sV_2, sW_1)
        if sV_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    iG:AddButton("Import Config from Clipboard Text", function()
        local s3_1
        local s1 = Options.SaveManager_ImportSource.Value or ""
        local s1_1
        local s2 = tostring(s1):match("^%s*(.-)%s*$")
        if s2 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        s1_1, s3_1 = pcall(mt.JSONDecode, mt, s2)
        local s2_1 = not s1_1 or type(s3_1) ~= "table" or type(s3_1.objects) ~= "table"
        if s2_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local s1_2 = 0
        for i, v in ipairs(s3_1.objects) do
            if i2(v) then
                s1_2 += 1
            end
        end
        if s1_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local s3_2 = s1_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(s1_2, s3_2), 6)
    end)
    SaveManager:LoadAutoloadConfig()
end
mT_5()
mU_3()
mY_1()
if Toggles.HideUiOnStart.Value then
    Library:Toggle(false)
end
