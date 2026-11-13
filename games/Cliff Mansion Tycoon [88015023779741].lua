local HttpService
local hJ
local hq
local g4
local VirtualUser
local connection3
local SaveManager
local connection5
local hd
local UserInputService
local hg
local hC
local connection
local hj
local hF
local gY
local hm
local hI
local g0
local hp
local g3
local hs
local g6
local hv
local g9
local hc
local connection4
local hf
local hB
local gX
local hi
local hE
local g_
local ReplicatedStorage
local connection2
local Utils
local ho
local hK
local g5
local Toggles
local g8
local hu
local hb
local hx
local CurrentCamera
local hA
local LocalPlayer
local gW
local hD
local Options
local Library
local gZ
local g1
local function onRenderStepped(cE)
    if Library.Unloaded or not Toggles or not Options then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local ka_3 = g8()
        if ka_3 then
            ka_3.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local ka_5 = hK()
        local kb_1 = g8()
        if ka_5 and kb_1 then
            kb_1.PlatformStand = true
            local kb_2 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                kb_2 = kb_2 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                kb_2 = kb_2 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                kb_2 = kb_2 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                kb_2 = kb_2 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                kb_2 = kb_2 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                kb_2 = kb_2 - Vector3.new(0, 1, 0)
            end
            ka_5.Velocity = Vector3.zero
            if kb_2.Magnitude > 0 then
                ka_5.CFrame = ka_5.CFrame + kb_2.Unit * Options.FlySpeed.Value * cE
            end
        end
    end
end
local function onInputBegan()
    hp = tick()
end
local function fn41()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    hj = tick()
end
local function onCopyLitecoinAddress()
    hf(g_, "Copied Litecoin address")
end
local function onRscripts()
    if setclipboard then
        setclipboard(g5)
    elseif toclipboard then
        toclipboard(g5)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn140(dH, dI)
    local kR_1 = (dH == "Toggle" and Toggles or Options)[dI]
    local kQ_2 = type(kR_1) == "table" and kR_1.Type == dH
    return kQ_2 and kR_1 or nil
end
local function fn144()
    if not hs then
        return false
    end
    local jw = if gZ() < 1 then 1 else 0
    if jw == 1 then
        return false
    end
    local jl = hm() or 0
    local jl_1 = gZ()
    hs:FireServer("CollectMoney")
    task.wait(0.4)
    local jn = hm() or 0
    local jn_1 = gZ()
    if jn > jl or jn_1 < jl_1 then
        hE = 0
        return true
    end
    hE = hE + 1
    if hE >= 2 then
        local jl_2 = ho()
        local jm_1 = hD(jl_2)
        if jm_1 and jm_1.CanTouch then
            hb(jm_1)
            task.wait(0.4)
            hs:FireServer("CollectMoney")
        end
        hE = 0
    end
    return false
end
local function fn146(br)
    if not br then
        return nil
    end
    local i6 = br:FindFirstChild("Base") and br.Base:FindFirstChild("Production")
    if i6 then
        local TouchArea = i6:FindFirstChild("TouchArea")
        local i7_1 = TouchArea and TouchArea:IsA("BasePart")
        if i7_1 then
            return TouchArea
        end
        return nil
    end
    return nil
end
local function onInputChanged(dj)
    local UserInputType = dj.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        hp = tick()
    end
end
local function onCopyPayPalLink()
    hf(hv, "Copied PayPal link")
end
local function onCopySolanaAddress()
    hf(hC, "Copied Solana address")
end
local function worker()
    local iD_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local iC = math.floor(os.clock() - g4)
        if iC < 60 then
            iD_1 = iC .. "s"
        elseif iC < 3600 then
            iD_1 = string.format("%dm %ds", iC // 60, iC % 60)
        else
            iD_1 = string.format("%dh %dm", iC // 3600, iC % 3600 // 60)
        end
        hA:SetText(gY("Session time", iD_1, hg))
    end
end
local function fn213()
    local iH_1
    local iG_1
    if not hs then
        return nil
    end
    iG_1, iH_1 = pcall(function()
        return hs:InvokeFunction("GetValue", "Coins")
    end)
    local iI = iG_1 and type(iH_1) == "table"
    if iI then
        return iH_1.Main or 0
    end
    return nil
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            hx(true)
        end
    end
end
local function fn225(L, M)
    return string.format('<font color="%s">%s</font>', M, L)
end
local function onUnload()
    Library:Unload()
end
local function onImportConfigFromClipboardTex()
    local lz_1
    local lx = Options.SaveManager_ImportSource.Value
    local lx_1
    local lD = if lx then 1 else 0
    local lB = 2633 * lD + 229 * (1 - lD)
    local lC = 3584 * lD + 3499 * (1 - lD)
    if not ((lB * 87 + lC * 3620 + lB * lC) % 16777213 == 5862610) then
        lx = ""
    end
    local ly = tostring(lx):match("^%s*(.-)%s*$")
    if ly == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    lx_1, lz_1 = pcall(HttpService.JSONDecode, HttpService, ly)
    local ly_1 = not lx_1 or type(lz_1) ~= "table" or type(lz_1.objects) ~= "table"
    if ly_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local lx_2 = 0
    for i, v in ipairs(lz_1.objects) do
        if hI(v) then
            lx_2 += 1
        end
    end
    if lx_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local lz_2 = lx_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(lx_2, lz_2), 6)
end
local function onCopyUSDTAddress()
    hf(hF, "Copied USDT address")
end
local function onCopyBitcoinAddress()
    hf(gW, "Copied Bitcoin address")
end
local function onCopyJoinScript_JobID()
    local iA = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hu)
    if setclipboard then
        setclipboard(iA)
    elseif toclipboard then
        toclipboard(iA)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn311()
    connection4:Disconnect()
    connection5:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
end
local function onCopyVenmoLink()
    hf(hq, "Copied Venmo link")
end
local function onJumpRequest()
    if Library.Unloaded or not Toggles then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local j4_2 = g8()
        if j4_2 then
            j4_2:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn428()
    local Character = LocalPlayer.Character
    local jL = Character and Character:FindFirstChildOfClass("Humanoid")
    return jL
end
local function fn439()
    hf(hc, "Copied Discord invite to clipboard")
end
local function fn473()
    hx(false)
end
local function fn480(bm)
    if not bm then
        return nil
    end
    for i, descendant in bm:GetDescendants() do
        local iW = descendant:IsA("Folder") and descendant.Name == "Buttons" and #descendant:GetChildren() > 0
        if iW then
            return descendant
        end
    end
    return nil
end
local function fn484()
    for i, child in workspace:GetChildren() do
        local iO = child:IsA("Model") and child.Name:match("^Mansion_1_" .. LocalPlayer.Name .. "$")
        if iO then
            return child
        end
    end
    return nil
end
local function fn515(O, P, Q)
    return string.format("<b>%s</b> %s %s", O, g6("-", "#5a6070"), g6(P, Q))
end
local function fn530()
    hx(Toggles.AntiGameplayPause.Value)
end
local function fn534()
    local jx = ho()
    local jy = g3(jx)
    if not jy then
        return false
    end
    local jx_1 = false
    for i, child in jy:GetChildren() do
        if Library.Unloaded then
            break
        elseif not (child:GetAttribute("ActorClass") ~= "GeneratorPointActor") then
            local Button = child:FindFirstChild("Button")
            local jz = not Button or not Button:IsA("BasePart") or not Button.CanTouch
            if not jz then
                local jz_1 = Utils and Utils:GetActorIface(child)
                if jz_1 then
                    jz_1:FireServer("GeneratorResponse", LocalPlayer)
                    jx_1 = true
                else
                    hb(Button)
                    task.wait(0.3)
                    jx_1 = true
                end
                task.wait(0.35)
            end
        end
    end
    return jx_1
end
local function fn541()
    local iL_1
    local iK_1
    if not hs then
        return 0
    end
    iK_1, iL_1 = pcall(function()
        return hs:InvokeFunction("GetValue", "ProducedMoney")
    end)
    local iM = iK_1 and type(iL_1) == "number"
    if iM then
        return iL_1
    end
    return 0
end
local function fn547()
    local k3 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local k4 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if k4 then
                local k4_1 = hd(k, v)
                if k4_1 then
                    k3[#k3 + 1] = k4_1
                end
            end
        end
    end
    table.sort(k3, function(d1, d2)
        if d1.type ~= d2.type then
            return d1.type < d2.type
        end
        return d1.idx < d2.idx
    end)
    return { objects = k3 }
end
local function fn561(dP, dQ)
    local Type = dQ.Type
    if Type == "Toggle" then
        return { idx = dP, type = "Toggle", value = dQ.Value == true }
    elseif Type == "Slider" then
        return { idx = dP, type = "Slider", value = tostring(dQ.Value) }
    elseif Type == "Dropdown" then
        return { idx = dP, type = "Dropdown", multi = dQ.Multi == true, value = dQ.Value }
    elseif Type == "Input" then
        local kY = dQ.Value or ""
        return { idx = dP, type = "Input", text = tostring(kY) }
    elseif Type == "ColorPicker" then
        return { idx = dP, type = "ColorPicker", value = dQ.Value:ToHex(), transparency = dQ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = dP,
            type = "KeyPicker",
            mode = dQ.Mode,
            key = dQ.Value,
            modifiers = dQ.Modifiers,
            toggled = dQ.Toggled
        }
    else
        return nil
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local kM = tick() - hp
            local kN = tick() - hj
            if kM >= 300 and kN >= 60 then
                pcall(g0)
            else
                if kM < 300 and kN >= 300 then
                    pcall(g0)
                end
            end
        end
    end
end
local function onStepped()
    if Library.Unloaded or not Toggles then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local jT_3 = descendant:IsA("BasePart") and descendant.CanCollide
                if jT_3 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn629(w, x)
    if setclipboard then
        setclipboard(w)
    elseif toclipboard then
        toclipboard(w)
    end
    Library:Notify(x)
end
local function onCopyEthereumAddress()
    hf(hJ, "Copied Ethereum address")
end
local function fn648(bx)
    local Character = LocalPlayer.Character
    if not Character then
        return false
    end
    local Humanoid = Character:FindFirstChild("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not Humanoid or not HumanoidRootPart then
        return false
    end
    Humanoid.PlatformStand = true
    HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    Character:PivotTo(bx.CFrame * CFrame.new(0, 1.4, 0))
    task.wait(0.25)
    HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    Humanoid.PlatformStand = false
    return true
end
local function fn650()
    if not Toggles.WalkSpeedEnabled.Value then
        local kp = g8()
        if kp then
            kp.WalkSpeed = 16
        end
    end
end
local function fn665()
    Utils = require(ReplicatedStorage.Scripts.Core.Utils.Utils)
end
local function fn685()
    local it_1
    local is_1
    if identifyexecutor then
        it_1, is_1 = identifyexecutor()
        local iu = it_1 ~= ""
        local iv = type(it_1) == "string" and iu
        if iv then
            local iu_1 = type(is_1) == "string" and is_1 ~= "" and it_1 .. " " .. is_1
            g9 = iu_1 or it_1
        end
    end
end
local function fn733()
    if not Toggles.Fly.Value then
        local kk = g8()
        if kk then
            kk.PlatformStand = false
        end
    end
end
local function autoBuyLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuy.Value then
            pcall(hi)
        end
        task.wait(Options.BuyInterval.Value)
    end
end
local function onExportConfigToClipboard()
    local lu_1
    local lt_1
    lt_1, lu_1 = pcall(HttpService.JSONEncode, HttpService, gX())
    if not lt_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local lt_2 = setclipboard or toclipboard
    local lt_3 = type(lt_2) ~= "function" or not pcall(lt_2, lu_1)
    if lt_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn813(F)
    local DiscordGroup = F:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = g1 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = g1 })
end
local function autoCollectLoop()
    while not Library.Unloaded do
        if Toggles.AutoCollect.Value then
            pcall(hB)
        end
        task.wait(Options.CollectInterval.Value)
    end
end
local function fn822()
    local Character = LocalPlayer.Character
    local jR = Character and Character:FindFirstChild("HumanoidRootPart")
    return jR
end
connection = nil
gW = nil
gX = nil
gY = nil
gZ = nil
g_ = nil
g0 = nil
g1 = nil
Utils = nil
g3 = nil
g4 = nil
g5 = nil
g6 = nil
connection3 = nil
g8 = nil
g9 = nil
connection5 = nil
hb = nil
hc = nil
hd = nil
CurrentCamera = nil
hf = nil
hg = nil
LocalPlayer = nil
hi = nil
hj = nil
Options = nil
connection2 = nil
hm = nil
HttpService = nil
ho = nil
hp = nil
hq = nil
Toggles = nil
hs = nil
VirtualUser = nil
hu = nil
hv = nil
SaveManager = nil
hx = nil
connection4 = nil
UserInputService = nil
hA = nil
hB = nil
hC = nil
hD = nil
hE = nil
hF = nil
Library = nil
ReplicatedStorage = nil
hI = nil
hJ = nil
hK = nil
local hL
local GameInfoGroup
local hW_1
local hU_1
local hV_1
local hP_1
local hN_1, hN_4
local hQ_1
ReplicatedStorage, UserInputService, VirtualUser, HttpService, LocalPlayer, hc, g5, Utils, Library, SaveManager, Toggles, Options, hU_1, hf, g1, hQ_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local hR = "Cliff Mansion Tycoon"
hc = "https://discord.gg/ehKVq7pf7v"
g5 = "https://rscripts.net/@Ouroboros"
pcall(fn665)
setthreadidentity(8)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
hf = fn629
g1 = fn439
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = hc, Copyable = true }, "|", hR },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local hO_2
if (hQ_1 and not LocalPlayer or (Options or LocalPlayer)) and (ThemeManager and ThemeManager or (ThemeManager or Options)) and (hQ_1 or LocalPlayer or g1 and hQ_1 or hf and not ThemeManager and (not hf and not hf)) and (((not g1 or hf) and (not hQ_1 or hf) or (not ThemeManager or Options or (Options or not hQ_1))) and ((not ThemeManager or hf) and (not LocalPlayer or not g1) or (Options or not hQ_1) and (not hQ_1 or not hQ_1))) and not ((hQ_1 and not LocalPlayer or (Options or LocalPlayer)) and (ThemeManager and ThemeManager or (ThemeManager or Options)) and (hQ_1 or LocalPlayer or g1 and hQ_1 or hf and not ThemeManager and (not hf and not hf)) and (((not g1 or hf) and (not hQ_1 or hf) or (not ThemeManager or Options or (Options or not hQ_1))) and ((not ThemeManager or hf) and (not LocalPlayer or not g1) or (Options or not hQ_1) and (not hQ_1 or not hQ_1)))) then
    local hO_1 = {
        Player = hU_1:AddTab("Player", "person-standing"),
        Settings = hU_1:AddTab("Settings", "settings"),
        Main = hU_1:AddTab("Main", "gavel"),
        Info = hU_1:AddTab("Info", "info")
    }
else
    hU_1 = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gavel"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
end
for k, v in hU_1 do
    fn813(v)
end
hW_1, hV_1, hg, hP_1, g9, hN_1, GameInfoGroup, hA, hu, hO_2, g6, gY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local hM_1 = 58
repeat
    local hQ_3 = (hM_1 * 1 + 0) % 8 + 1
    if hQ_3 <= 4 then
        if hQ_3 <= 2 then
            if hQ_3 <= 1 then
                local hY_1 = (vector.create((hM_1 * 1 + 2) % 11 + 1, (hM_1 * 1 + 2) % 13 + 1, (hM_1 * 13 + 4) % 17 + 1))
                local hZ_1 = (vector.create((hM_1 * 2 + 5) % 11 + 1, (hM_1 * 11 + 3) % 13 + 1, (hM_1 * 7 + 4) % 17 + 1))
                local mi = vector.dot(hY_1, hZ_1)
                if mi * mi >= vector.dot(hY_1, hY_1) * vector.dot(hZ_1, hZ_1) + 1 then
                    hP_1 = tostring(game.JobId)
                else
                    hu = tostring(game.JobId)
                end
                hM_1 = (hM_1 + 1) % 64
            else
                local mx = bit32.rrotate(bit32.bxor(bit32.lrotate(hM_1, 6), string.byte(tostring(hA))), 8)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(mx, 1055223997), 3479992763), (bit32.bxor(bit32.band(mx, 3239743298), 250330579))), 3479992763), 250330579) == mx then
                    hO_2 = #hu > 18
                else
                    hu = #hO_2 > 18
                end
                hM_1 = (hM_1 + 17) % 64
            end
        elseif hQ_3 <= 3 then
            local hY_2 = (vector.create((hM_1 * 7 + 9) % 11 + 1, (hM_1 * 4 + 7) % 13 + 1, (hM_1 * 5 + 15) % 17 + 1))
            local mj = vector.floor(hY_2) + vector.ceil(hY_2 * -1)
            if vector.dot(mj, mj) == 3 then
                gY = fn225
            else
                g6 = fn225
            end
            hM_1 = (hM_1 + 9) % 64
        else
            local hY_3 = (vector.create((hM_1 * 5 + 2) % 11 + 1, (hM_1 * 4 + 12) % 13 + 1, (hM_1 * 5 + 1) % 17 + 1))
            local hZ_2 = (vector.create((hM_1 * 2 + 7) % 11 + 1, (hM_1 * 7 + 9) % 13 + 1, (hM_1 * 5 + 7) % 17 + 1))
            local mB = vector.cross(hY_3, hZ_2)
            local mC = vector.dot(hY_3, hZ_2)
            if vector.dot(mB, mB) + mC * mC == vector.dot(hY_3, hY_3) * vector.dot(hZ_2, hZ_2) + 5 then
                hA = fn515
            else
                gY = fn515
            end
            hM_1 = (hM_1 + 41) % 64
        end
    elseif hQ_3 <= 6 then
        if hQ_3 <= 5 then
            if hM_1 * 27443243 + 9 + 3 >= hM_1 * 27443243 + 9 + 3 + 1 then
                hO_2 = "#7fd47f"
            else
                hW_1 = "#7fd47f"
            end
            hM_1 = (hM_1 + 25) % 64
        else
            if (hN_1 or not hN_1 or not hN_1 and hM_1) and ((hN_1 or hN_1) and (hM_1 and hN_1)) or (hM_1 or not hM_1) and (hM_1 or not hN_1) and (not hM_1 or hN_1 or not hM_1 and hM_1) or ((hN_1 or false) and (not hN_1 or false) or (hW_1 or hN_1) and (hW_1 and not hN_1)) and (false or (hW_1 or not hM_1) and (hW_1 and hM_1)) or not ((hN_1 or not hN_1 or not hN_1 and hM_1) and ((hN_1 or hN_1) and (hM_1 and hN_1)) or (hM_1 or not hM_1) and (hM_1 or not hN_1) and (not hM_1 or hN_1 or not hM_1 and hM_1) or ((hN_1 or false) and (not hN_1 or false) or (hW_1 or hN_1) and (hW_1 and not hN_1)) and (false or (hW_1 or not hM_1) and (hW_1 and hM_1))) then
                hV_1 = "#6ec1ff"
            else
                gY = "#6ec1ff"
            end
            hM_1 = (hM_1 + 25) % 64
        end
    elseif hQ_3 <= 7 then
        local hQ_4 = (vector.create((hM_1 * 6 + 8) % 11 + 1, (hM_1 * 4 + 6) % 13 + 1, (hM_1 * 11 + 6) % 17 + 1))
        local hY_4 = (vector.create((hM_1 * 2 + 4) % 11 + 1, (hM_1 * 8 + 4) % 13 + 1, (hM_1 * 13 + 7) % 17 + 1))
        local mc = vector.dot(hQ_4, hY_4)
        if mc * mc <= vector.dot(hQ_4, hQ_4) * vector.dot(hY_4, hY_4) then
            hg = "#e8a34d"
        else
            hA = "#e8a34d"
        end
        hM_1 = (hM_1 + 57) % 64
    else
        local hQ_5 = {
            "qqb",
            "kldtcosbh",
            "mtsqphcbcacg",
            "cynrwlbsz",
            "hmixjmcpdlip",
            "pxsjgx",
            "xngcdaf",
            "sajqdjoidbr",
            "toxy",
            "cvsuktuoqc",
            "lfdug",
            "rkeqpse",
            "oniol",
            "zuocnnhpqv",
            "qktqdujpbus",
            "gwqiqbcgqq"
        }
        if hQ_5[(hM_1 * 85 + 111) % 16 + 1] <= hQ_5[(hM_1 * 85 + 111) % 16 + 1] then
            hP_1 = "#8b93a3"
            g9 = "Unknown"
            pcall(fn685)
            hN_1 = hU_1.Info:AddLeftGroupbox("Account", "circle-user")
            hN_1:AddLabel(gY("User", LocalPlayer.Name, hW_1), true)
            hN_1:AddLabel(gY("Status", "Keyless", hW_1), true)
            hN_1:AddLabel(gY("Executor", g9, hW_1), true)
            GameInfoGroup = hU_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(g6(hR .. " [" .. tostring(game.PlaceId) .. "]", hV_1), true)
            GameInfoGroup:AddLabel(gY("Place ID", tostring(game.PlaceId), hV_1), true)
            hA = GameInfoGroup:AddLabel(gY("Session time", "0s", hg), true)
        else
            hA = "#8b93a3"
            hN_1 = "Unknown"
            pcall(fn685)
            hU_1 = hP_1.Info:AddLeftGroupbox("Account", "circle-user")
            hU_1:AddLabel(hR("User", gY.Name, GameInfoGroup), true)
            hU_1:AddLabel(hR("Status", "Keyless", GameInfoGroup), true)
            hU_1:AddLabel(hR("Executor", "Unknown", GameInfoGroup), true)
            hV_1 = hP_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            hV_1:AddLabel(LocalPlayer(hW_1 .. " [" .. tostring(game.PlaceId) .. "]", g6), true)
            hV_1:AddLabel(hR("Place ID", tostring(game.PlaceId), g6), true)
            hg = hV_1:AddLabel(hR("Session time", "0s", g9), true)
        end
        hM_1 = (hM_1 + 41) % 64
    end
until (hM_1 * 47 + 39) % 64 == 53
if hO_2 then
    local hM_2 = 3
    repeat
        local hN_2 = (vector.create((hM_2 * 3 + 5) % 11 + 1, (hM_2 * 4 + 9) % 13 + 1, (hM_2 * 2 + 10) % 17 + 1))
        local hQ_6 = (vector.create((hM_2 * 6 + 7) % 11 + 1, (hM_2 * 7 + 1) % 13 + 1, (hM_2 * 10 + 1) % 17 + 1))
        local mz = vector.dot(hN_2, hQ_6)
        if mz * mz >= vector.dot(hN_2, hN_2) * vector.dot(hQ_6, hQ_6) + 1 then
            hu = string.sub(hO_2, 1, 18) .. "..."
        else
            hO_2 = string.sub(hu, 1, 18) .. "..."
        end
        hM_2 = (hM_2 + 4) % 8
    until (hM_2 * 3 + 7) % 8 == 4
end
local hM_3 = hO_2 or hu
g4, g_, gW, hJ, hF, hC, hv, hq = nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(gY("Server", hM_3, hP_1), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
g4 = os.clock()
task.spawn(worker)
local ScriptsGroup = hU_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(g6("Included in this hub", hP_1), true)
ScriptsGroup:AddLabel(g6(hR, hV_1), true)
local FeaturesGroup = hU_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(g6("Auto Collect Income", hV_1), true)
FeaturesGroup:AddLabel(g6("Auto Buy All Buttons", hg), true)
FeaturesGroup:AddLabel(g6("Player Movement", hP_1), true)
local SocialsGroup = hU_1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = g1 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hU_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = g1 })
g_ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
gW = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
hJ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
hF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
hC = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
hv = "https://paypal.me/TheTruckerGOD"
hq = "https://venmo.com/u/miserablemusic"
local h6 = "#345d9d"
local h3 = "#f7931a"
local h1 = "#627eea"
local h0 = "#26a17b"
local h_ = "#14f195"
local hY_5 = "#0070ba"
local hO_3 = "#008cff"
local DonationsGroup = hU_1.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(g6("All donations are optional but appreciated.", hg), true)
DonationsGroup:AddLabel(g6("If you donate you get a special role, just PING after you donate.", hW_1), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(g6("LTC / Litecoin", h6), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(g6("BTC / Bitcoin", h3), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(g6("ETH / Ethereum", h1), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(g6("USDT", h0), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(g6("Solana", h_), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(g6("PayPal", hY_5), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(g6("Venmo", hO_3), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(g6("Don't have any of the listed currencies but still wanna donate?", hP_1), true)
DonationsGroup:AddLabel(g6("DM me and we'll work something out.", hV_1), true)
local FaqGroup = hU_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local h9 = Utils and Utils:GetActorIface(LocalPlayer)
hs, hE, hN_4, connection, connection2, CurrentCamera, connection3, hp, hj, connection4, connection5, hm, gZ, ho, g3, hD, hb, hB, hi, g8, hK, hx, g0, hL, hd, gX, hI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
hs = h9
hm = fn213
gZ = fn541
if (not gX or gX or g3 and g3) and (not gX or not hN_4 or gX and gX) and (not hN_4 and not g3 and (g3 and g3) or not g3 and not g3 and (not hN_4 or not g3)) and ((not hN_4 or hN_4) and (hN_4 or not g3) or (not hN_4 and gX or not hN_4 and not g3) or (not gX or gX) and (not gX and gX) and ((not gX or not hN_4) and (gX or hN_4))) or not ((not gX or gX or g3 and g3) and (not gX or not hN_4 or gX and gX) and (not hN_4 and not g3 and (g3 and g3) or not g3 and not g3 and (not hN_4 or not g3)) and ((not hN_4 or hN_4) and (hN_4 or not g3) or (not hN_4 and gX or not hN_4 and not g3) or (not gX or gX) and (not gX and gX) and ((not gX or not hN_4) and (gX or hN_4)))) then
    ho = fn484
    g3 = fn480
else
    g3 = fn484
    ho = fn480
end
hD = fn146
hb = fn648
hE = 0
hB = fn144
hi = fn534
local MailboxGroup = hU_1.Main:AddLeftGroupbox("Mailbox", "banknote")
MailboxGroup:AddToggle("AutoCollect", { Text = "Auto Collect Income", Default = false })
MailboxGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local PurchasesGroup = hU_1.Main:AddRightGroupbox("Purchases", "shopping-cart")
PurchasesGroup:AddToggle("AutoBuy", { Text = "Auto Buy All Buttons", Default = false })
PurchasesGroup:AddSlider("BuyInterval", { Text = "Buy Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
task.spawn(autoCollectLoop)
task.spawn(autoBuyLoop)
local MovementGroup = hU_1.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = hU_1.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
g8 = fn428
hK = fn822
connection = RunService.Stepped:Connect(onStepped)
connection2 = UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
connection3 = RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn733)
Toggles.WalkSpeedEnabled:OnChanged(fn650)
hx = function(cV)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not cV)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not cV
        end
    end)
    if not cV then
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
Toggles.AntiGameplayPause:OnChanged(fn530)
task.spawn(antiGameplayPauseLoop)
Library:OnUnload(fn473)
local MenuGroup = hU_1.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
hp = tick()
hj = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local kD = v
        pcall(function()
            kD:Disable()
        end)
    end
end)
g0 = fn41
connection4 = UserInputService.InputBegan:Connect(onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn311)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(hU_1.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/CliffMansionTycoon")
local hM_4 = SaveManager:BuildConfigSection(hU_1.Settings)
SaveManager:LoadAutoloadConfig()
hL = fn140
hd = fn561
gX = fn547
hI = function(d4)
    local ln
    ln = nil
    local lo = type(d4) ~= "table" or type(d4.idx) ~= "string"
    local ls = if lo then 1 else 0
    local lq = 2977 * ls + 2623 * (1 - ls)
    local lr = 255 * ls + 2089 * (1 - ls)
    if not ((lq * 3625 + lr * 3644 + lq * lr) % 16777213 == 12479980) then
        lo = type(d4.type) ~= "string"
    end
    if not lo then
        lo = SaveManager.Ignore[d4.idx]
    end
    if lo then
        return false
    end
    ln = hL(d4.type, d4.idx)
    if not ln then
        return false
    end
    local lo_1 = pcall(function()
        if d4.type == "Input" then
            if type(d4.text) ~= "string" then
                return
            end
            ln:SetValue(d4.text)
        elseif d4.type == "ColorPicker" then
            ln:SetValueRGB(Color3.fromHex(d4.value), d4.transparency)
        elseif d4.type == "KeyPicker" then
            ln:SetValue({ d4.key, d4.mode, d4.modifiers })
            if d4.mode == "Toggle" and d4.toggled ~= nil then
                ln.Toggled = d4.toggled
                ln:Update()
            end
        else
            ln:SetValue(d4.value)
        end
    end)
    return lo_1
end
hM_4:AddDivider()
hM_4:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
hM_4:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
hM_4:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
