local hk
local hG
local hn
local Options
local g1
local World
local Toggles
local g4
local ht
local ha
local Tags
local hd
local hz
local hg
local hC
local OuroborosTRT
local hF
local hj
local g0
local hI
local HttpService
local hL
local g3
local hs
local g6
local g9
local hv
local hy
local hc
local Data2
local hB
local gX
local hE
local connection
local g_
local hl
local hH
local g2
local ho
local hK
local g5
local hr
local hN
local Library
local VirtualUser
local hb
local hx
local he
local hA
local hD
local SaveManager
local function autoBuyLoop()
    setthreadidentity(8)
    local kU = {}
    while g6() do
        local Value2 = Toggles.AutoBuy.Value
        local Value = Options.BuyInterval.Value
        if Value2 and hk then
            local kV_1 = hr.Context():Get(Data2)
            if kV_1 then
                for k in World:Query(Tags.Buttonlike) do
                    if not g6() then
                        break
                    else
                        local kX_1 = World:Get(k, hn)
                        local kY = kX_1 and kV_1.Objects[kX_1]
                        local kX_2 = kY
                        if kY then
                            kY = kX_2.Data
                        end
                        if kY then
                            kY = not kU[kX_2.Name]
                        end
                        if kY then
                            local Data = kX_2.Data
                            local kZ = kV_1.ButtonMap[kX_2.Name]
                            local kZ_3
                            local k_ = kZ and kZ.Data
                            local k__4
                            local k__1 = type(Data.ProductId) == "number" and Data.ProductId > 0
                            local k0 = k__1
                            if not k0 then
                                local k__2 = k_ ~= nil and type(k_.ProductId) == "number" and k_.ProductId > 0
                                k0 = k__2
                            end
                            local k__3 = k0
                            local k0_1 = Data.NotPurchasable == true
                            if not k0_1 then
                                k0_1 = k_ ~= nil and k_.NotPurchasable == true
                            end
                            if k__3 or k0_1 then
                                kU[kX_2.Name] = true
                            else
                                local kY_4 = hC.PurchaseButton(ha, kX_2.Name)
                                if kY_4 == "OK" then
                                    kZ_3, k__4 = pcall(hk.PerformAction.Call, { Kind = "PurchaseButton", ButtonName = kX_2.Name })
                                    if not (kZ_3 and k__4 == "OK") then
                                        if kZ_3 and k__4 == "AlreadyPurchased" or kZ_3 and k__4 == "NotPurchasable" then
                                            kU[kX_2.Name] = true
                                            hC.UnpurchaseButton(ha, kX_2.Name)
                                        else
                                            if kZ_3 and k__4 == "NotEnoughCurrency" then
                                                hC.UnpurchaseButton(ha, kX_2.Name)
                                            else
                                                hC.UnpurchaseButton(ha, kX_2.Name)
                                                g0(k)
                                            end
                                        end
                                    end
                                else
                                    if kY_4 == "AlreadyPurchased" or kY_4 == "NotPurchasable" or kY_4 == "InvalidButton" or kY_4 == "UnknownError" then
                                        kU[kX_2.Name] = true
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        task.wait(Value)
        if not g6() then
            break
        end
    end
end
local function fn11()
    local j9 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local ka = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if ka then
                local ka_1 = ho(k, v)
                if ka_1 then
                    j9[#j9 + 1] = ka_1
                end
            end
        end
    end
    table.sort(j9, function(dm, dn)
        if dm.type ~= dn.type then
            return dm.type < dn.type
        end
        return dm.idx < dn.idx
    end)
    return { objects = j9 }
end
local function onCopyUSDTAddress()
    hs(hK, "Copied USDT address")
end
local function fn16(ah, ai, aj)
    return string.format("<b>%s</b> %s %s", ah, g1("-", "#5a6070"), g1(ai, aj))
end
local function worker()
    local jf_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local je = math.floor(os.clock() - hg)
        if je < 60 then
            jf_1 = je .. "s"
        elseif je < 3600 then
            jf_1 = string.format("%dm %ds", je // 60, je % 60)
        else
            jf_1 = string.format("%dh %dm", je // 3600, je % 3600 // 60)
        end
        hL:SetText(hI("Session time", jf_1, hb))
    end
end
local function fn86(c8, c9)
    local Type = c9.Type
    if Type == "Toggle" then
        return { idx = c8, type = "Toggle", value = c9.Value == true }
    elseif Type == "Slider" then
        return { idx = c8, type = "Slider", value = tostring(c9.Value) }
    elseif Type == "Dropdown" then
        return { idx = c8, type = "Dropdown", multi = c9.Multi == true, value = c9.Value }
    elseif Type == "Input" then
        local j6 = c9.Value or ""
        return { idx = c8, type = "Input", text = tostring(j6) }
    elseif Type == "ColorPicker" then
        return { idx = c8, type = "ColorPicker", value = c9.Value:ToHex(), transparency = c9.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = c8,
            type = "KeyPicker",
            mode = c9.Mode,
            key = c9.Value,
            modifiers = c9.Modifiers,
            toggled = c9.Toggled
        }
    else
        return nil
    end
end
local function onCopyEthereumAddress()
    hs(hN, "Copied Ethereum address")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = ha.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local js_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if js_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local kJ_1
    local kH = Options.SaveManager_ImportSource.Value
    local kH_1
    local kN = if kH then 1 else 0
    local kL = 3133 * kN + 2223 * (1 - kN)
    local kM = 2447 * kN + 4031 * (1 - kN)
    if not ((kL * 2443 + kM * 383 + kL * kM) % 16777213 == 16257571) then
        kH = ""
    end
    local kI = tostring(kH):match("^%s*(.-)%s*$")
    if kI == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    kH_1, kJ_1 = pcall(HttpService.JSONDecode, HttpService, kI)
    local kI_1 = not kH_1 or type(kJ_1) ~= "table" or type(kJ_1.objects) ~= "table"
    if kI_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local kH_2 = 0
    for i, v in ipairs(kJ_1.objects) do
        if g3(v) then
            kH_2 += 1
        end
    end
    if kH_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local kJ_2 = kH_2 == 1 and ""
    local kN_1 = if kJ_2 then 1 else 0
    local kL_1 = 1134 * kN_1 + 2721 * (1 - kN_1)
    local kM_1 = 1124 * kN_1 + 2677 * (1 - kN_1)
    if not ((kL_1 * 2494 + kM_1 * 435 + kL_1 * kM_1) % 16777213 == 4591752) then
        kJ_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(kH_2, kJ_2), 6)
end
local function fn177()
    if not Toggles.Fly.Value then
        local jl = gX()
        if jl then
            jl.PlatformStand = false
        end
    end
end
local function fn192()
    local i7_1
    local i6_1
    if identifyexecutor then
        i7_1, i6_1 = identifyexecutor()
        local i8 = i7_1 ~= ""
        local i9 = type(i7_1) == "string" and i8
        if i9 then
            local i8_1 = type(i6_1) == "string" and i6_1 ~= "" and i7_1 .. " " .. i6_1
            hl = i8_1 or i7_1
        end
    end
end
local function onCopyBitcoinAddress()
    hs(g_, "Copied Bitcoin address")
end
local function fn212()
    hv(Toggles.AntiGameplayPause.Value)
end
local function onInputChanged(cT)
    local UserInputType = cT.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        hD = tick()
    end
end
local function antiGameplayPauseLoop()
    while g6() do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            hv(true)
        end
    end
end
local function onExportConfigToClipboard()
    local kB_1
    local kA_1
    kA_1, kB_1 = pcall(HttpService.JSONEncode, HttpService, g9())
    if not kA_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local kA_2 = setclipboard or toclipboard
    local kA_3 = type(kA_2) ~= "function" or not pcall(kA_2, kB_1)
    if kA_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn266()
    local Character = ha.Character
    local iR = Character and Character:FindFirstChildOfClass("Humanoid")
    return iR
end
local function fn269()
    return not Library.Unloaded and g2.OuroborosTRT == OuroborosTRT
end
local function fn270()
    local MainFrame = Library.MainFrame
    if MainFrame and MainFrame.Parent then
        MainFrame.Parent:SetAttribute("OuroborosTRT", true)
    end
end
local function fn295()
    if not Toggles.WalkSpeedEnabled.Value then
        local jn = gX()
        if jn then
            jn.WalkSpeed = 16
        end
    end
end
local function onCopyJoinScript_JobID()
    local bk = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hH)
    hs(bk, "Copied join script to clipboard")
end
local function fn343()
    local CurrentCamera = he.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    hx = tick()
end
local function antiAfkLoop()
    while g6() do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local lm = tick() - hD
            local ln = tick() - hx
            if lm >= 300 and ln >= 60 then
                pcall(hc)
            else
                if lm < 300 and ln >= 300 then
                    pcall(hc)
                end
            end
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local jA_1 = gX()
        if jA_1 then
            jA_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onCopySolanaAddress()
    hs(hF, "Copied Solana address")
end
local function fn507(X, Y)
    if setclipboard then
        setclipboard(X)
    elseif toclipboard then
        toclipboard(X)
    end
    Library:Notify(Y)
end
local function fn513(ae, af)
    return string.format('<font color="%s">%s</font>', af, ae)
end
local function fn545(a3)
    local DiscordGroup = a3:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = hd })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = hd })
end
local function fn564(aQ)
    local iX = World:Get(aQ, hj)
    local iY = hy()
    if not (iX and iY) then
        return
    end
    local CFrame2 = iY.CFrame
    iY.CFrame = CFrame.new(iX)
    task.wait(1.2)
    if g6() then
        iY.CFrame = CFrame2
    end
end
local function onCopyLitecoinAddress()
    hs(g5, "Copied Litecoin address")
end
local function onInputBegan()
    hD = tick()
end
local function fn584(c0, c1)
    local j_ = c0 == "Toggle" and Toggles
    local j4 = if j_ then 1 else 0
    local j2 = 457 * j4 + 1552 * (1 - j4)
    local j3 = 858 * j4 + 3770 * (1 - j4)
    if not ((j2 * 2479 + j3 * 1362 + j2 * j3) % 16777213 == 2693605) then
        j_ = Options
    end
    local j__1 = j_[c1]
    local jZ_2 = type(j__1) == "table" and j__1.Type == c0
    return jZ_2 and j__1 or nil
end
local function onCopyVenmoLink()
    hs(ht, "Copied Venmo link")
end
local function fn604()
    local Character = ha.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChild("HumanoidRootPart")
end
local function fn608()
    hs(hE, "Copied Discord invite to clipboard")
end
local function fn620()
    g2.OuroborosTRT = g2.OuroborosTRT + 1
    hG:Disconnect()
    connection:Disconnect()
    hv(false)
    local lr = gX()
    if lr then
        lr.PlatformStand = false
        lr.WalkSpeed = 16
    end
end
local function onRenderStepped(cq)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local jC_1 = gX()
        if jC_1 then
            jC_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local jC_3 = hy()
        local jD = gX()
        local jE = he.CurrentCamera
        local jJ = if jE then 1 else 0
        local jH = 1317 * jJ + 761 * (1 - jJ)
        local jI = 1916 * jJ + 245 * (1 - jJ)
        if not ((jH * 3173 + jI * 927 + jH * jI) % 16777213 == 8478345) then
            jE = g4
        end
        g4 = jE
        if jC_3 and jD and g4 then
            jD.PlatformStand = true
            local jD_1 = Vector3.zero
            if hB:IsKeyDown(Enum.KeyCode.W) then
                jD_1 = jD_1 + g4.CFrame.LookVector
            end
            if hB:IsKeyDown(Enum.KeyCode.S) then
                jD_1 = jD_1 - g4.CFrame.LookVector
            end
            if hB:IsKeyDown(Enum.KeyCode.A) then
                jD_1 = jD_1 - g4.CFrame.RightVector
            end
            if hB:IsKeyDown(Enum.KeyCode.D) then
                jD_1 = jD_1 + g4.CFrame.RightVector
            end
            local jM = if hB:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if jM == 1 then
                jD_1 = jD_1 + Vector3.new(0, 1, 0)
            end
            if hB:IsKeyDown(Enum.KeyCode.LeftControl) then
                jD_1 = jD_1 - Vector3.new(0, 1, 0)
            end
            jC_3.Velocity = Vector3.zero
            if jD_1.Magnitude > 0 then
                jC_3.CFrame = jC_3.CFrame + jD_1.Unit * Options.FlySpeed.Value * cq
            end
        end
    end
end
local function fn653()
    for i, child in ipairs(gethui():GetChildren()) do
        local iH = child:IsA("ScreenGui") and child:GetAttribute("OuroborosTRT")
        if iH then
            child:Destroy()
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function onCopyPayPalLink()
    hs(hA, "Copied PayPal link")
end
local function onRscripts()
    hs(hz, "Copied Rscripts profile to clipboard")
end
local function autoCollectLoop()
    local lc_1
    setthreadidentity(8)
    while g6() do
        local Value2 = Toggles.AutoCollect.Value
        local Value = Options.CollectInterval.Value
        if Value2 and hk then
            local k8_1 = hr.Context():Get(Data2)
            if k8_1 then
                for k in World:Query(Tags.ATM) do
                    if not g6() then
                        break
                    else
                        local la_1 = World:Get(k, hn)
                        local lb = la_1 and k8_1.Objects[la_1]
                        local lb_1
                        local la_2 = lb
                        if lb then
                            lb = la_2.Data.Currency
                        end
                        local la_3 = lb
                        lb_1, lc_1 = hC.CollectPendingCurrency(ha, la_3)
                        if lb_1 == "OK" and lc_1 and lc_1 > 0 then
                            pcall(hk.PerformAction.Call, { Kind = "CollectPending", CurrencyName = la_3 })
                        end
                    end
                end
            end
        end
        task.wait(Value)
        local ll = if not g6() then 1 else 0
        if ll == 1 then
            break
        end
    end
end
gX = nil
OuroborosTRT = nil
SaveManager = nil
g_ = nil
g0 = nil
g1 = nil
g2 = nil
g3 = nil
g4 = nil
g5 = nil
g6 = nil
Library = nil
g9 = nil
ha = nil
hb = nil
hc = nil
hd = nil
he = nil
Data2 = nil
hg = nil
connection = nil
hj = nil
hk = nil
hl = nil
hn = nil
ho = nil
HttpService = nil
World = nil
hr = nil
hs = nil
ht = nil
VirtualUser = nil
hv = nil
Tags = nil
hx = nil
hy = nil
hz = nil
hA = nil
hB = nil
hC = nil
hD = nil
hE = nil
hF = nil
hG = nil
hH = nil
hI = nil
Options = nil
local g7, CoreGui, GuiService
hK = nil
hL = nil
Toggles = nil
hN = nil
local GameInfoGroup
local h6_1
local h4_1
local hU_2
local CORE
hB, VirtualUser, HttpService, GuiService, CoreGui, he, ha, g2 = nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local AccountGroup
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local hQ_1
local RunService = game:GetService("RunService")
hB = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
he = game:GetService("Workspace")
ha = Players.LocalPlayer
local hS = "Tropical Resort Tycoon 2"
g2 = getgenv()
local hO_1 = g2.OuroborosTRT or 0
OuroborosTRT, hr, CORE, hk = nil, nil, nil, nil
local hP = 3
local hP_2
repeat
    local hV_1 = {
        "ahvcruw",
        "yoxnwkcyo",
        "tivf",
        "hho",
        "cchedzgtku",
        "stjcbvqt",
        "roc",
        "affd",
        "rfi",
        "bpue",
        "ricx"
    }
    local l_ = hP
    local hW_1 = hV_1[l_ % 11 + 1]
    if hW_1:len() <= hW_1:reverse():rep(l_ % 3 + 2):len() then
        g2.OuroborosTRT = hO_1 + 1
        OuroborosTRT = g2.OuroborosTRT
        pcall(fn653)
        hU_2 = require(ReplicatedStorage.Packages.TYCOON)
        hr = require(ReplicatedStorage.Packages.ECS)
        CORE = require(ReplicatedStorage.Packages.CORE)
    else
        g2.OuroborosTRT = CORE + 1
        hU_2 = ReplicatedStorage.OuroborosTRT
        pcall(fn653)
        g2 = require(OuroborosTRT.Packages.TYCOON)
        hO_1 = require(OuroborosTRT.Packages.ECS)
        hr = require(OuroborosTRT.Packages.CORE)
    end
    hP = (hP + 5) % 8
until (hP * 7 + 3) % 8 == 3
local Index = ReplicatedStorage.Packages:FindFirstChild("_Index")
if Index then
    for i, child in ipairs(Index:GetChildren()) do
        if child.Name:match("^packages_tycoon@") then
            local tycoon = child:FindFirstChild("tycoon")
            local hP_1 = tycoon and tycoon:FindFirstChild("Zap")
            local hO_4 = hP_1
            if hP_1 then
                hP_1 = hO_4:FindFirstChild("ZapClient")
            end
            local hO_5 = hP_1
            if hO_5 then
                hk = require(hO_5)
                break
            end
        end
    end
end
hC, Tags, World, hn, hj, Data2, Library, hQ_1, SaveManager = nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((hn or SaveManager or (World or Library)) and ((not hQ_1 or Library) and (hQ_1 and SaveManager)) or (hQ_1 and Library or SaveManager and not World or (hQ_1 or not World) and (Library or hQ_1))) and not ((hn or SaveManager or (World or Library)) and ((not hQ_1 or Library) and (hQ_1 and SaveManager)) or (hQ_1 and Library or SaveManager and not World or (hQ_1 or not World) and (Library or hQ_1))) then
    hr = World.Actions
    hn = World.Components.Tags
    hj = Tags.World
    hC = World.Components.ObjectId
else
    hC = hU_2.Actions
    Tags = hU_2.Components.Tags
    World = hr.World
    hn = hU_2.Components.ObjectId
    hj = CORE.Components.Position
end
Data2 = hU_2.Components.Data
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if setthreadidentity then
    setthreadidentity(8)
end
Toggles, Options, hE, hz, hb, g5, g_, hN, hK, hF, hA, ht, g6, hP_2, hs, hd, g1, hI, gX, hy, g0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
hE = "https://discord.gg/ehKVq7pf7v"
hz = "https://rscripts.net/@Ouroboros"
hs = fn507
hd = fn608
g1 = fn513
hI = fn16
local h1 = "#7fd47f"
local h_ = "#6ec1ff"
hb = "#e8a34d"
local hX = "#8b93a3"
g5 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
g_ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
hN = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
hK = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
hF = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
hA = "https://paypal.me/TheTruckerGOD"
ht = "https://venmo.com/u/miserablemusic"
local h3 = "#345d9d"
local h2 = "#f7931a"
local h0 = "#627eea"
local hZ = "#26a17b"
local hY = "#14f195"
local hW_2 = "#0070ba"
local hV_2 = "#008cff"
gX = fn266
hy = fn604
if ("0xaE95A405D007a6F858E5d35714111B075fEFb40a" or (false or hy) or false and (hy and false)) and false or (hP_2 or hK or false or hP_2 and false and (hP_2 or false) or (hy or hK) and (false or hy) and (not hy and hK or false and hP_2)) or not (("0xaE95A405D007a6F858E5d35714111B075fEFb40a" or (false or hy) or false and (hy and false)) and false or (hP_2 or hK or false or hP_2 and false and (hP_2 or false) or (hy or hK) and (false or hy) and (not hy and hK or false and hP_2))) then
    g6 = fn269
    g0 = fn564
else
    g0 = fn269
    g6 = fn564
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = hE, Copyable = true }, "|", hS },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
pcall(fn270)
local hU_3 = {
    Info = Window:AddTab("Info", "info"),
    Farming = Window:AddTab("Farming", "coins"),
    Inventory = Window:AddTab("Inventory", "package"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in hU_3 do
    fn545(v)
end
hl, AccountGroup, GameInfoGroup, hL, hH, h4_1 = nil, nil, nil, nil, nil, nil
local hP_4 = 7
repeat
    local hT_3 = (hP_4 * 1 + 2) % 3 + 1
    if hT_3 <= 2 then
        if hT_3 <= 1 then
            if hP_4 * 37408897 + 7 + 4 <= hP_4 * 37408897 + 7 + 4 + 3 then
                hl = "Unknown"
                pcall(fn192)
                AccountGroup = hU_3.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(hI("User", ha.Name, h1), true)
                AccountGroup:AddLabel(hI("Status", "Keyless", h1), true)
                AccountGroup:AddLabel(hI("Executor", hl, h1), true)
                GameInfoGroup = hU_3.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(g1(hS .. " [" .. tostring(game.PlaceId) .. "]", h_), true)
                GameInfoGroup:AddLabel(hI("Place ID", tostring(game.PlaceId), h_), true)
                hL = GameInfoGroup:AddLabel(hI("Session time", "0s", hb), true)
            else
                hU_3 = "Unknown"
                pcall(fn192)
                hl = (nil):AddLeftGroupbox("Account", "circle-user")
                hl:AddLabel(GameInfoGroup("User", hL.Name, hI), true)
                hl:AddLabel(GameInfoGroup("Status", "Keyless", hI), true)
                hl:AddLabel(GameInfoGroup("Executor", "Unknown", hI), true)
                g1 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                g1:AddLabel(hS(AccountGroup .. " [" .. tostring(game.PlaceId) .. "]", h1), true)
                g1:AddLabel(GameInfoGroup("Place ID", tostring(game.PlaceId), h1), true)
                ha = g1:AddLabel(GameInfoGroup("Session time", "0s", h_), true)
            end
            hP_4 = (hP_4 + 4) % 12
        else
            local l8 = bit32.rrotate(bit32.bxor(bit32.lrotate(hP_4, 25), string.byte(tostring(hL))), 18)
            if bit32.bxor(bit32.lrotate(bit32.bxor(l8, 1211285470), 24), 3729273535) == bit32.lrotate(l8, 24) then
                hH = tostring(game.JobId)
            else
                hL = tostring(game.JobId)
            end
            hP_4 = (hP_4 + 1) % 12
        end
    else
        if (hP_4 * 2 + 2) * 4 % 3 == ((hP_4 * 2 + 2) * 4 + 4) % 3 then
            hH = #h4_1 > 18
        else
            h4_1 = #hH > 18
        end
        hP_4 = (hP_4 + 7) % 12
    end
until (hP_4 * 7 + 7) % 12 == 8
if h4_1 then
    local hO_7 = 6
    repeat
        local hP_5 = (vector.create((hO_7 * 1 + 6) % 11 + 1, (hO_7 * 9 + 5) % 13 + 1, (hO_7 * 9 + 13) % 17 + 1))
        local hT_4 = (vector.create((hO_7 * 6 + 7) % 11 + 1, (hO_7 * 10 + 3) % 13 + 1, (hO_7 * 10 + 6) % 17 + 1))
        local l0 = vector.cross(hP_5, hT_4)
        local l1 = vector.dot(hP_5, hT_4)
        if vector.dot(l0, l0) + l1 * l1 == vector.dot(hP_5, hP_5) * vector.dot(hT_4, hT_4) + 4 then
            hH = string.sub(h4_1, 1, 18) .. "..."
        else
            h4_1 = string.sub(hH, 1, 18) .. "..."
        end
        hO_7 = (hO_7 + 2) % 8
    until (hO_7 * 3 + 4) % 8 == 4
end
local hO_8 = h4_1 or hH
hg, g4, hD, hx, hG, connection, h6_1, hv, hc, g7, ho, g9, g3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(hI("Server", hO_8, hX), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
hg = os.clock()
task.spawn(worker)
local ScriptsGroup = hU_3.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(g1("Included in this hub", hX), true)
ScriptsGroup:AddLabel(g1(hS, h_), true)
local FeaturesGroup = hU_3.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(g1("Auto Collect Money", h_), true)
FeaturesGroup:AddLabel(g1("Auto Buy Buttons", hb), true)
FeaturesGroup:AddLabel(g1("Misc Utilities", hX), true)
local SocialsGroup = hU_3.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = hd })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hU_3.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = hd })
local DonationsGroup = hU_3.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(g1("All donations are optional but appreciated.", hb), true)
DonationsGroup:AddLabel(g1("If you donate you get a special role, just PING after you donate.", h1), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(g1("LTC / Litecoin", h3), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(g1("BTC / Bitcoin", h2), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(g1("ETH / Ethereum", h0), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(g1("USDT", hZ), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(g1("Solana", hY), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(g1("PayPal", hW_2), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(g1("Venmo", hV_2), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(g1("Don't have any of the listed currencies but still wanna donate?", hX), true)
DonationsGroup:AddLabel(g1("DM me and we'll work something out.", h_), true)
local FaqGroup = hU_3.Info:AddRightGroupbox("FAQ", "circle-help")
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
local MoneyGroup = hU_3.Farming:AddLeftGroupbox("Money", "coins")
MoneyGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = true })
MoneyGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local PurchasesGroup = hU_3.Inventory:AddLeftGroupbox("Purchases", "package")
PurchasesGroup:AddToggle("AutoBuy", { Text = "Auto Buy All Buttons", Default = false })
PurchasesGroup:AddSlider("BuyInterval", { Text = "Buy Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local MovementGroup = hU_3.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = hU_3.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
hv = function(bV)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not bV)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not bV
        end
    end)
    if not bV then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(ha, "GameplayPaused", false)
        else
            ha.GameplayPaused = false
        end
    end)
end
if (g7 and ScriptsGroup or (SocialsGroup or not h6_1)) and (not g7 and not SocialsGroup and (ScriptsGroup or not hg)) and (hg or not hg or (g7 or ScriptsGroup) or (SocialsGroup or g7) and (h6_1 and PurchasesGroup)) and not ((g7 and ScriptsGroup or (SocialsGroup or not h6_1)) and (not g7 and not SocialsGroup and (ScriptsGroup or not hg)) and (hg or not hg or (g7 or ScriptsGroup) or (SocialsGroup or g7) and (h6_1 and PurchasesGroup))) then
    g4.AntiGameplayPause:OnChanged(fn212)
    g4.Fly:OnChanged(fn177)
    g4.WalkSpeedEnabled:OnChanged(fn295)
    Toggles.Stepped:Connect(onStepped)
    RunService.JumpRequest:Connect(onJumpRequest)
    he = hB.CurrentCamera
else
    Toggles.AntiGameplayPause:OnChanged(fn212)
    Toggles.Fly:OnChanged(fn177)
    Toggles.WalkSpeedEnabled:OnChanged(fn295)
    RunService.Stepped:Connect(onStepped)
    hB.JumpRequest:Connect(onJumpRequest)
    g4 = he.CurrentCamera
end
RunService.RenderStepped:Connect(onRenderStepped)
local MenuGroup = hU_3.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
hD = tick()
if MoneyGroup and MoneyGroup and (hG or not connection) and (not MoneyGroup or not MenuGroup or connection and not PurchasesGroup) or not (MoneyGroup and MoneyGroup and (hG or not connection) and (not MoneyGroup or not MenuGroup or connection and not PurchasesGroup)) then
    hx = tick()
    pcall(function()
        for i, v in ipairs(getconnections(ha.Idled)) do
            local jT = v
            pcall(function()
                jT:Disable()
            end)
        end
    end)
    hc = fn343
    hG = hB.InputBegan:Connect(onInputBegan)
else
    hG = tick()
    pcall(function()
        for i, v in ipairs(getconnections(ha.Idled)) do
            local jT = v
            pcall(function()
                jT:Disable()
            end)
        end
    end)
    hB = fn343
    hc = hx.InputBegan:Connect(onInputBegan)
end
connection = hB.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(hU_3.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/TropicalResortTycoon2")
local h6_2 = SaveManager:BuildConfigSection(hU_3.Settings)
g7 = fn584
ho = fn86
g9 = fn11
g3 = function(dq)
    local kq
    kq = nil
    local kr = type(dq) ~= "table" or type(dq.idx) ~= "string" or type(dq.type) ~= "string" or SaveManager.Ignore[dq.idx]
    if kr then
        return false
    end
    kq = g7(dq.type, dq.idx)
    if not kq then
        return false
    end
    local kr_1 = pcall(function()
        if dq.type == "Input" then
            if type(dq.text) ~= "string" then
                return
            end
            kq:SetValue(dq.text)
        elseif dq.type == "ColorPicker" then
            kq:SetValueRGB(Color3.fromHex(dq.value), dq.transparency)
        elseif dq.type == "KeyPicker" then
            kq:SetValue({ dq.key, dq.mode, dq.modifiers })
            if dq.mode == "Toggle" and dq.toggled ~= nil then
                kq.Toggled = dq.toggled
                kq:Update()
            end
        else
            kq:SetValue(dq.value)
        end
    end)
    return kr_1
end
do
    h6_2:AddDivider()
    h6_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    h6_2:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    h6_2:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    SaveManager:LoadAutoloadConfig()
    task.spawn(autoBuyLoop)
    task.spawn(autoCollectLoop)
    task.spawn(antiAfkLoop)
    task.spawn(antiGameplayPauseLoop)
    Library:OnUnload(fn620)
end
if _G.STATE then
    _G.STATE.onCleanup(function()
        g2.OuroborosTRT = g2.OuroborosTRT + 1
        pcall(function()
            Library:Unload()
        end)
    end)
end
Library:Notify("Tropical Resort Tycoon 2 loaded")
