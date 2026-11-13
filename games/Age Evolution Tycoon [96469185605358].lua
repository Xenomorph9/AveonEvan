local ii
local hW
local CurrentCamera
local il
local h1
local hJ
local h4
local is
local h7
local iv
local hM
local connection3
local BuyRebirth
local ia
local id
local hS
local VirtualUser
local hV
local hY
local UserInputService
local h0
local io
local Options
local hL
local h6
local connection
local hO
local HttpService
local ix
local connection4
local hU
local ig
local hX
local ij
local h_
local Library
local connection2
local iq
local LocalPlayer
local hK
local it
local Toggles
local RebirthConfig
local iw
local hQ
local iz
local ib
local SaveManager
local connection5
local function fn3()
    local j7 = hX()
    local j8 = iw()
    local j9 = {}
    for i, v in ipairs(j7) do
        local j7_1 = not v.bought
        if j7_1 ~= false then
            j7_1 = hM(v.dep)
        end
        if j7_1 then
            j7_1 = j8.money >= v.price
        end
        if j7_1 then
            table.insert(j9, v)
        end
    end
    table.sort(j9, function(bM, bN)
        return bM.price < bN.price
    end)
    return j9[1]
end
local function onImportConfigFromClipboardTex()
    local mD_1
    local mB = Options.SaveManager_ImportSource.Value or ""
    local mB_1
    local mC = tostring(mB):match("^%s*(.-)%s*$")
    if mC == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    mB_1, mD_1 = pcall(HttpService.JSONDecode, HttpService, mC)
    local mC_1 = not mB_1 or type(mD_1) ~= "table"
    local mH = if mC_1 then 1 else 0
    local mF = 3820 * mH + 1831 * (1 - mH)
    local mG = 2212 * mH + 2579 * (1 - mH)
    if not ((mF * 3049 + mG * 3408 + mF * mG) % 16777213 == 10858303) then
        mC_1 = type(mD_1.objects) ~= "table"
    end
    if mC_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local mB_2 = 0
    for i, v in ipairs(mD_1.objects) do
        if io(v) then
            mB_2 += 1
        end
    end
    if mB_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local mD_2 = mB_2 == 1 and ""
    local mQ = if mD_2 then 1 else 0
    local mO = 628 * mQ + 318 * (1 - mQ)
    local mP = 2430 * mQ + 746 * (1 - mQ)
    if not ((mO * 3895 + mP * 2338 + mO * mP) % 16777213 == 9653440) then
        mD_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(mB_2, mD_2), 6)
end
local function fn30()
    h_(hY, "Copied Discord invite to clipboard")
end
local function onCopyBitcoinAddress()
    h_(ix, "Copied Bitcoin address")
end
local function fn75(ex, ey)
    local Type = ey.Type
    if Type == "Toggle" then
        return { idx = ex, type = "Toggle", value = ey.Value == true }
    elseif Type == "Slider" then
        return { idx = ex, type = "Slider", value = tostring(ey.Value) }
    elseif Type == "Dropdown" then
        return { idx = ex, type = "Dropdown", multi = ey.Multi == true, value = ey.Value }
    elseif Type == "Input" then
        local l1 = ey.Value or ""
        return { idx = ex, type = "Input", text = tostring(l1) }
    elseif Type == "ColorPicker" then
        return { idx = ex, type = "ColorPicker", value = ey.Value:ToHex(), transparency = ey.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ex,
            type = "KeyPicker",
            mode = ey.Mode,
            key = ey.Value,
            modifiers = ey.Modifiers,
            toggled = ey.Toggled
        }
    else
        return nil
    end
end
local function autoCollectIncomeLoop()
    while not Library.Unloaded do
        if Toggles.AutoCollectIncome.Value then
            local Character = LocalPlayer.Character
            local kQ = Character and Character:FindFirstChild("HumanoidRootPart")
            if kQ then
                local kQ_1 = h6()
                if kQ_1 then
                    kQ.CFrame = CFrame.new(kQ_1.Position + Vector3.new(0, 3, 0))
                end
            end
        end
        task.wait(Options.CollectInterval.Value)
    end
end
local function onUnload()
    Library:Unload()
end
local function onCopyLitecoinAddress()
    h_(hK, "Copied Litecoin address")
end
local function onRscripts()
    if setclipboard then
        setclipboard(hW)
    elseif toclipboard then
        toclipboard(hW)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function onCopyEthereumAddress()
    h_(iq, "Copied Ethereum address")
end
local function fn185(G)
    local DiscordGroup = G:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = hL })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = hL })
end
local function fn213()
    ib(false)
end
local function onRebirthNow()
    local kG = iw()
    local kH = RebirthConfig and RebirthConfig.Levels and RebirthConfig.Levels[kG.rebirth + 1]
    local kH_1 = it() and kH
    if kH_1 then
        local money = kG.money
        local kK = kH.requiredMoney
        local kO = if kK then 1 else 0
        local kM = 3338 * kO + 297 * (1 - kO)
        local kN = 3848 * kO + 1337 * (1 - kO)
        if not ((kM * 2941 + kN * 3880 + kM * kN) % 16777213 == 4037496) then
            kK = 0
        end
        kH_1 = money >= kK
    end
    if kH_1 then
        pcall(function()
            BuyRebirth:FireServer()
        end)
        Library:Notify("Rebirth triggered")
    else
        Library:Notify("Not ready to rebirth")
    end
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            local kY = iw()
            local kZ = kY.rebirth + 1
            if kZ <= (RebirthConfig and RebirthConfig.MaxLevel or 1000) then
                local k__2 = RebirthConfig and RebirthConfig.Levels and RebirthConfig.Levels[kZ]
                local kZ_1 = k__2
                if k__2 then
                    k__2 = kY.money >= (kZ_1.requiredMoney or 0)
                end
                if k__2 then
                    k__2 = it()
                end
                if k__2 then
                    pcall(function()
                        BuyRebirth:FireServer()
                    end)
                    task.wait(2)
                end
            end
        end
        task.wait(Options.RebirthInterval.Value)
    end
end
local function fn290(ep, eq)
    local lY_1 = (ep == "Toggle" and Toggles or Options)[eq]
    local lX_2 = type(lY_1) == "table" and lY_1.Type == ep
    return lX_2 and lY_1 or nil
end
local function onInputBegan()
    h4 = tick()
end
local function fn324()
    local Character = LocalPlayer.Character
    local k4 = Character and Character:FindFirstChildOfClass("Humanoid")
    return k4
end
local function onJumpRequest()
    if Library.Unloaded or not Toggles then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local li_2 = hQ()
        if li_2 then
            li_2:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn365()
    if not Toggles.Fly.Value then
        local ls = hQ()
        if ls then
            ls.PlatformStand = false
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
                local k9_3 = descendant:IsA("BasePart") and descendant.CanCollide
                if k9_3 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn402()
    connection4:Disconnect()
    connection5:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
end
local function onCopyPayPalLink()
    h_(id, "Copied PayPal link")
end
local function fn522()
    ib(Toggles.AntiGameplayPause.Value)
end
local function onExportConfigToClipboard()
    local my_1
    local mx_1
    mx_1, my_1 = pcall(HttpService.JSONEncode, HttpService, iv())
    if not mx_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local mx_2 = setclipboard or toclipboard
    local mx_3 = type(mx_2) ~= "function" or not pcall(mx_2, my_1)
    if mx_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn545()
    if not Toggles.WalkSpeedEnabled.Value then
        local lx = hQ()
        if lx then
            lx.WalkSpeed = 16
        end
    end
end
local function fn555()
    local Character = LocalPlayer.Character
    local k7 = Character and Character:FindFirstChild("HumanoidRootPart")
    return k7
end
local function onCopyUSDTAddress()
    h_(il, "Copied USDT address")
end
local function worker()
    local jB_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local jA = math.floor(os.clock() - hO)
        if jA < 60 then
            jB_1 = jA .. "s"
        elseif jA < 3600 then
            jB_1 = string.format("%dm %ds", jA // 60, jA % 60)
        else
            jB_1 = string.format("%dh %dm", jA // 3600, jA % 3600 // 60)
        end
        ii:SetText(iz("Session time", jB_1, h0))
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            ib(true)
        end
    end
end
local function fn619(bA)
    if bA == 0 then
        return true
    end
    return ig("Button" .. bA) == true
end
local function fn646()
    local jr_1
    local jq_1
    if identifyexecutor then
        jr_1, jq_1 = identifyexecutor()
        local js = jr_1 ~= ""
        local jt = type(jr_1) == "string" and js
        if jt then
            local js_1 = type(jq_1) == "string" and jq_1 ~= "" and jr_1 .. " " .. jq_1
            hV = js_1 or jr_1
        end
    end
end
local function onInputChanged(d3)
    local UserInputType = d3.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        h4 = tick()
    end
end
local function fn671(P, Q, R)
    return string.format("<b>%s</b> %s %s", P, hS("-", "#5a6070"), hS(Q, R))
end
local function fn678()
    local ma = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local mb = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if mb then
                local mb_1 = hU(k, v)
                if mb_1 then
                    ma[#ma + 1] = mb_1
                end
            end
        end
    end
    table.sort(ma, function(eK, eL)
        if eK.type ~= eL.type then
            return eK.type < eL.type
        end
        return eK.idx < eL.idx
    end)
    return { objects = ma }
end
local function onCopyVenmoLink()
    h_(h7, "Copied Venmo link")
end
local function fn683(x, y)
    if setclipboard then
        setclipboard(x)
    elseif toclipboard then
        toclipboard(x)
    end
    Library:Notify(y)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local lT = tick() - h4
            local lU = tick() - h1
            if lT >= 300 and lU >= 60 then
                pcall(hJ)
            else
                if lT < 300 and lU >= 300 then
                    pcall(hJ)
                end
            end
        end
    end
end
local function fn710(M, N)
    return string.format('<font color="%s">%s</font>', N, M)
end
local function fn714()
    local kh = hX()
    for i, v in ipairs(kh) do
        if not v.bought then
            return false
        end
    end
    return #kh > 0
end
local function onCopyJoinScript_JobID()
    local jy = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ia)
    if setclipboard then
        setclipboard(jy)
    elseif toclipboard then
        toclipboard(jy)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onCopySolanaAddress()
    h_(ij, "Copied Solana address")
end
local function onRenderStepped(dl)
    if Library.Unloaded or not Toggles or not Options then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local ll_3 = hQ()
        if ll_3 then
            ll_3.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local ll_5 = is()
        local lm_1 = hQ()
        if ll_5 and lm_1 then
            lm_1.PlatformStand = true
            local lm_2 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                lm_2 = lm_2 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                lm_2 = lm_2 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                lm_2 = lm_2 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                lm_2 = lm_2 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                lm_2 = lm_2 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                lm_2 = lm_2 - Vector3.new(0, 1, 0)
            end
            ll_5.Velocity = Vector3.zero
            if lm_2.Magnitude > 0 then
                ll_5.CFrame = ll_5.CFrame + lm_2.Unit * Options.FlySpeed.Value * dl
            end
        end
    end
end
local function fn733()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    h1 = tick()
end
hJ = nil
hK = nil
hL = nil
hM = nil
RebirthConfig = nil
hO = nil
connection3 = nil
hQ = nil
hS = nil
connection5 = nil
hU = nil
hV = nil
hW = nil
hX = nil
hY = nil
CurrentCamera = nil
h_ = nil
h0 = nil
h1 = nil
connection2 = nil
Options = nil
h4 = nil
LocalPlayer = nil
h6 = nil
h7 = nil
Toggles = nil
HttpService = nil
ia = nil
ib = nil
connection4 = nil
id = nil
SaveManager = nil
ig = nil
VirtualUser = nil
ii = nil
ij = nil
UserInputService = nil
il = nil
Library = nil
io = nil
iq = nil
is = nil
it = nil
connection = nil
iv = nil
iw = nil
ix = nil
local Stat, ip, ir
BuyRebirth = nil
iz = nil
local FaqGroup
local MenuGroup
local iL_1
local iE_1
local i1_1
local iC_1, iC_2
UserInputService, VirtualUser, HttpService, LocalPlayer, hY, hW, Stat, RebirthConfig, BuyRebirth, Library, SaveManager, Toggles, Options, h_, hL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local iF_1
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local iH = "Age Evolution Tycoon"
hY = "https://discord.gg/ehKVq7pf7v"
hW = "https://rscripts.net/@Ouroboros"
Stat = require(ReplicatedStorage:WaitForChild("Stat"))
RebirthConfig = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Secondary"):WaitForChild("RebirthConfig"))
local RemoteEvents = ReplicatedStorage:WaitForChild("RemoteEvents")
local AccountGroup, iB_3
BuyRebirth = RemoteEvents:WaitForChild("BuyRebirth")
setthreadidentity(8)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
h_ = fn683
hL = fn30
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = hY, Copyable = true }, "|", iH },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local iD_1
local iJ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gavel"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in iJ do
    fn185(v)
end
iF_1, iE_1, h0, iD_1, hV, AccountGroup, iL_1, ii, ia, iC_1, hS, iz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local iA_1 = 62
repeat
    local iG_1 = (iA_1 * 3 + 3) % 8 + 1
    if iG_1 <= 4 then
        if iG_1 <= 2 then
            if iG_1 <= 1 then
                local iM_1 = {
                    "xmwzvyw",
                    "opiwowdt",
                    "gznoaptmdsx",
                    "ayq",
                    "yyndl",
                    "cszamzxxmfb",
                    "zyzgqpyzsvx",
                    "jrkcrnmnwqz",
                    "qgib",
                    "kkaabuwnmw",
                    "apzi"
                }
                local ns = iA_1
                local iN_1 = iM_1[ns % 11 + 1]
                if iN_1:len() >= iN_1:gsub("(.)", "%1%1", ns % 3 % 2 + 1):len() then
                    iL_1 = "#6ec1ff"
                else
                    iE_1 = "#6ec1ff"
                end
                iA_1 = (iA_1 + 51) % 64
            else
                local iM_2 = { "azz", "apqbpz", "qsjkgc", "rhqtmgsy", "vregyrth", "ltzcfqz", "kkjcfiuqbf", "invj" }
                local np = iA_1
                local iN_2 = iM_2[np % 8 + 1]
                if iN_2:len() <= iN_2:gsub("(.)", "%1%1", np % 3 % 2 + 1):len() then
                    h0 = "#e8a34d"
                else
                    hV = "#e8a34d"
                end
                iA_1 = (iA_1 + 3) % 64
            end
        elseif iG_1 <= 3 then
            local iM_3 = (vector.create((iA_1 * 5 + 4) % 11 + 1, (iA_1 * 1 + 1) % 13 + 1, (iA_1 * 1 + 2) % 17 + 1))
            local iN_3 = (vector.create((iA_1 * 2 + 7) % 11 + 1, (iA_1 * 5 + 10) % 13 + 1, (iA_1 * 10 + 13) % 17 + 1))
            local nx = vector.cross(iM_3, iN_3)
            local ny = vector.dot(iM_3, iN_3)
            if vector.dot(nx, nx) + ny * ny == vector.dot(iM_3, iM_3) * vector.dot(iN_3, iN_3) then
                iD_1 = "#8b93a3"
                hV = "Unknown"
                pcall(fn646)
                AccountGroup = iJ.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(iz("User", LocalPlayer.Name, iF_1), true)
                AccountGroup:AddLabel(iz("Status", "Keyless", iF_1), true)
                AccountGroup:AddLabel(iz("Executor", hV, iF_1), true)
                iL_1 = iJ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                iL_1:AddLabel(hS(iH .. " [" .. tostring(game.PlaceId) .. "]", iE_1), true)
                iL_1:AddLabel(iz("Place ID", tostring(game.PlaceId), iE_1), true)
                ii = iL_1:AddLabel(iz("Session time", "0s", h0), true)
            else
                iz = "#8b93a3"
                iE_1 = "Unknown"
                pcall(fn646)
                ii = iD_1.Info:AddLeftGroupbox("Account", "circle-user")
                ii:AddLabel(iF_1("User", hS.Name, LocalPlayer), true)
                ii:AddLabel(iF_1("Status", "Keyless", LocalPlayer), true)
                ii:AddLabel(iF_1("Executor", "Unknown", LocalPlayer), true)
                hV = iD_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                hV:AddLabel(iL_1(iJ .. " [" .. tostring(game.PlaceId) .. "]", AccountGroup), true)
                hV:AddLabel(iF_1("Place ID", tostring(game.PlaceId), AccountGroup), true)
                h0 = hV:AddLabel(iF_1("Session time", "0s", iH), true)
            end
            iA_1 = (iA_1 + 59) % 64
        else
            local iM_4 = {
                "gmkoq",
                "csavqgz",
                "bdnewaoji",
                "hphnprcdwj",
                "qmclhd",
                "sftbdczhyb",
                "ruwgkqhej",
                "kfdwjnwla",
                "zhhy",
                "vxfxervlau"
            }
            local nT = iA_1
            local iN_4 = iM_4[nT % 10 + 1]
            if iN_4:len() >= iN_4:reverse():rep(nT % 3 + 2):len() then
                iF_1 = tostring(game.JobId)
            else
                ia = tostring(game.JobId)
            end
            iA_1 = (iA_1 + 59) % 64
        end
    elseif iG_1 <= 6 then
        if iG_1 <= 5 then
            if (iA_1 * 3 + 5) * 17 % 4 == ((iA_1 * 3 + 5) * 17 + 9) % 4 then
                ia = #iC_1 > 18
            else
                iC_1 = #ia > 18
            end
            iA_1 = (iA_1 + 27) % 64
        else
            local iM_5 = { "zglp", "skuku", "jlawfdro", "wghsvfgxr", "geg", "dbaf", "vbvzytdhzvh", "jruruoyew", "jutoazvo" }
            local nY = iA_1
            local iN_5 = iM_5[nY % 9 + 1]
            if iN_5:len() <= iN_5:gsub("(.)", "%1%1", nY % 3 % 2 + 1):len() then
                hS = fn710
            else
                iz = fn710
            end
            iA_1 = (iA_1 + 51) % 64
        end
    elseif iG_1 <= 7 then
        if (iA_1 * 2 + 1) * 16 % 3 == ((iA_1 * 2 + 1) * 16 + 3) % 3 then
            iz = fn671
        else
            hV = fn671
        end
        iA_1 = (iA_1 + 43) % 64
    else
        local nz = bit32.rrotate(bit32.bxor(bit32.lrotate(iA_1, 31), string.byte(tostring(iC_1))), 23)
        if bit32.bxor(bit32.lrotate(bit32.bxor(nz, 1578596006), 26), 2574802394) ~= bit32.lrotate(nz, 26) then
            hV = "#7fd47f"
        else
            iF_1 = "#7fd47f"
        end
        iA_1 = (iA_1 + 35) % 64
    end
until (iA_1 * 53 + 7) % 64 == 5
if iC_1 then
    local iA_2 = 7
    repeat
        local iB_2 = {
            "najykh",
            "mndclmn",
            "iczgl",
            "jqbhzqspdlxp",
            "nox",
            "hwehbueqmz",
            "gqmvccw",
            "fvumfapcapqb",
            "flivfcatonu",
            "zsslo",
            "uwsxlxqg",
            "fmqyh"
        }
        if iB_2[(iA_2 * 62 + 55) % 12 + 1] <= iB_2[(iA_2 * 62 + 55) % 12 + 1] then
            iC_1 = string.sub(ia, 1, 18) .. "..."
        else
            ia = string.sub(iC_1, 1, 18) .. "..."
        end
        iA_2 = (iA_2 + 4) % 8
    until (iA_2 * 7 + 4) % 8 == 1
end
local iA_3 = iC_1
local ji = if iA_3 then 1 else 0
local jg = 1869 * ji + 1853 * (1 - ji)
local jh = 1977 * ji + 2932 * (1 - ji)
if not ((jg * 1090 + jh * 3367 + jg * jh) % 16777213 == 12388782) then
    iA_3 = ia
end
hO, hK, ix, iq, il, ij, id, h7, iC_2, iB_3, i1_1, FaqGroup, connection, connection2, CurrentCamera, connection3, MenuGroup, h4, h1, connection4, connection5, ig, iw, hX, hM, ip, it, h6, hQ, is, ib, hJ, ir, hU, iv, io = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local iV = iA_3
iL_1:AddLabel(iz("Server", iV, iD_1), true)
iL_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
hO = os.clock()
task.spawn(worker)
local ScriptsGroup = iJ.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(hS("Included in this hub", iD_1), true)
ScriptsGroup:AddLabel(hS(iH, iE_1), true)
local FeaturesGroup = iJ.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(hS("Auto Collect Income", iE_1), true)
FeaturesGroup:AddLabel(hS("Auto Buy Buttons", h0), true)
FeaturesGroup:AddLabel(hS("Auto Rebirth", iF_1), true)
FeaturesGroup:AddLabel(hS("Player Movement", iD_1), true)
local SocialsGroup = iJ.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = hL })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = iJ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = hL })
hK = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
ix = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
iq = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
il = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ij = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
id = "https://paypal.me/TheTruckerGOD"
h7 = "https://venmo.com/u/miserablemusic"
local iW = "#345d9d"
local iT = "#f7931a"
local iP = "#627eea"
local iN_6 = "#26a17b"
local iM_6 = "#14f195"
if ((not hU or ij) and (ij and not hU) or "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" and (not hU or not hU)) and not ((not hU or ij) and (ij and not hU) or "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" and (not hU or not hU)) then
    iJ = FaqGroup.Info:AddRightGroupbox("Donations", "heart")
    iJ:AddLabel(iD_1("All donations are optional but appreciated.", iC_2), true)
    iJ:AddLabel(iD_1("If you donate you get a special role, just PING after you donate.", iT), true)
    iJ:AddDivider()
    iJ:AddLabel(iD_1("LTC / Litecoin", h0), true)
    iJ:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    iJ:AddLabel(iD_1("BTC / Bitcoin", iB_3), true)
    iJ:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    iJ:AddLabel(iD_1("ETH / Ethereum", iM_6), true)
    iJ:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
    iJ:AddLabel(iD_1("USDT", hS), true)
    iJ:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    iJ:AddLabel(iD_1("Solana", iP), true)
    iJ:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    iJ:AddLabel(iD_1("PayPal", "#0070ba"), true)
    iJ:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    iJ:AddLabel(iD_1("Venmo", "#008cff"), true)
    iJ:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    iJ:AddDivider()
    iJ:AddLabel(iD_1("Don't have any of the listed currencies but still wanna donate?", ig), true)
    iJ:AddLabel(iD_1("DM me and we'll work something out.", i1_1), true)
    local FaqGroup = FaqGroup.Info:AddRightGroupbox("FAQ", "circle-help")
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
else
    local DonationsGroup = iJ.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(hS("All donations are optional but appreciated.", h0), true)
    DonationsGroup:AddLabel(hS("If you donate you get a special role, just PING after you donate.", iF_1), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(hS("LTC / Litecoin", iW), true)
    DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    DonationsGroup:AddLabel(hS("BTC / Bitcoin", iT), true)
    DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    DonationsGroup:AddLabel(hS("ETH / Ethereum", iP), true)
    DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
    DonationsGroup:AddLabel(hS("USDT", iN_6), true)
    DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    DonationsGroup:AddLabel(hS("Solana", iM_6), true)
    DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    DonationsGroup:AddLabel(hS("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    DonationsGroup:AddLabel(hS("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(hS("Don't have any of the listed currencies but still wanna donate?", iD_1), true)
    DonationsGroup:AddLabel(hS("DM me and we'll work something out.", iE_1), true)
    FaqGroup = iJ.Info:AddRightGroupbox("FAQ", "circle-help")
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
    ig = function(a3)
        local jF_1
        local jE_1
        jE_1, jF_1 = pcall(function()
            return Stat.Get(LocalPlayer, a3)
        end)
        if jE_1 and jF_1 then
            return jF_1.Value
        end
        return nil
    end
end
iw = function()
    local Value
    local jM = ig("Money") or 0
    local jM_1 = ig("Rebirth") or 0
    Value = nil
    pcall(function()
        Value = LocalPlayer.TempValues.Plot.Value
    end)
    return { money = jM, rebirth = jM_1, plotNum = Value }
end
hX = function()
    local jQ
    jQ = nil
    local jS_1
    local jR_1
    jQ = iw()
    if not jQ.plotNum then
        return {}
    end
    jR_1, jS_1 = pcall(function()
        return workspace:WaitForChild("Plots"):FindFirstChild(tostring(jQ.plotNum))
    end)
    if not jR_1 or not jS_1 then
        return {}
    end
    local Buttons = jS_1:FindFirstChild("Buttons")
    if not Buttons then
        return {}
    end
    local jS_2 = {}
    for i, child in ipairs(Buttons:GetChildren()) do
        if child:IsA("BasePart") then
            local Price = child:FindFirstChild("Price")
            local UnlockedByButton = child:FindFirstChild("UnlockedByButton")
            local insert = table.insert
            local jV = tonumber(child.Name) or 0
            local jR_4 = Price and Price.Value or 0
            local jT_2 = UnlockedByButton and UnlockedByButton.Value or 0
            insert(jS_2, {
                id = jV,
                part = child,
                price = jR_4,
                dep = jT_2,
                bought = ig("Button" .. child.Name) == true,
                position = child.Position
            })
        end
    end
    return jS_2
end
hM = fn619
ip = fn3
it = fn714
h6 = function()
    local kp
    kp = nil
    local kr_1
    local kq_1
    kp = iw()
    if not kp.plotNum then
        return nil
    end
    kq_1, kr_1 = pcall(function()
        return workspace:WaitForChild("Plots"):FindFirstChild(tostring(kp.plotNum))
    end)
    if not kq_1 or not kr_1 then
        return nil
    end
    local CollectorParts = kr_1:FindFirstChild("CollectorParts")
    if not CollectorParts then
        return nil
    end
    for i, child in ipairs(CollectorParts:GetChildren()) do
        local kq_3 = child:IsA("BasePart") and child.Name == "Collector" and child.Position.Y < 5
        if kq_3 then
            return child
        end
    end
    return nil
end
local IncomeCollectionGroup = iJ.Main:AddLeftGroupbox("Income Collection", "coins")
IncomeCollectionGroup:AddToggle("AutoCollectIncome", { Text = "Auto Collect Income", Default = false })
IncomeCollectionGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 1, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
local ButtonPurchasingGroup = iJ.Main:AddRightGroupbox("Button Purchasing", "shopping-cart")
ButtonPurchasingGroup:AddToggle("AutoBuy", { Text = "Auto Buy Buttons", Default = false })
ButtonPurchasingGroup:AddSlider("BuyInterval", { Text = "Buy Interval", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
ButtonPurchasingGroup:AddButton({
    Text = "Buy Next Button Now",
    Func = function()
        local kD = ip()
        if kD then
            local kE = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local kC = kE
            if kC then
                kC.CFrame = CFrame.new(kD.position + Vector3.new(0, 3, 0))
                task.wait(0.15)
                pcall(function()
                    firetouchinterest(kC, kD.part, 0)
                    task.wait(0.05)
                    firetouchinterest(kC, kD.part, 1)
                end)
                Library:Notify("Bought button " .. kD.id)
            end
        else
            Library:Notify("No buyable buttons")
        end
    end
})
local RebirthGroup = iJ.Main:AddLeftGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthInterval", { Text = "Rebirth Check Interval", Default = 3, Min = 1, Max = 10, Rounding = 1, Suffix = "s" })
RebirthGroup:AddButton({ Text = "Rebirth Now", DoubleClick = true, Func = onRebirthNow })
task.spawn(autoCollectIncomeLoop)
task.spawn(function()
    local kX = false
    repeat
        if not Library.Unloaded then
            if Toggles.AutoBuy.Value then
                local kS = ip()
                if kS then
                    local kU = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local kT = kU
                    if kT then
                        kT.CFrame = CFrame.new(kS.position + Vector3.new(0, 3, 0))
                        task.wait(0.15)
                        pcall(function()
                            firetouchinterest(kT, kS.part, 0)
                            task.wait(0.05)
                            firetouchinterest(kT, kS.part, 1)
                        end)
                        task.wait(0.3)
                    end
                end
            end
            task.wait(Options.BuyInterval.Value)
        else
            kX = true
        end
    until kX
end)
task.spawn(autoRebirthLoop)
local MovementGroup = iJ.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = iJ.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
hQ = fn324
is = fn555
connection = RunService.Stepped:Connect(onStepped)
connection2 = UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
connection3 = RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn365)
Toggles.WalkSpeedEnabled:OnChanged(fn545)
ib = function(dF)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not dF)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not dF
        end
    end)
    if not dF then
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
if (false and (iw or not connection5) or (false or (false or not FaqGroup))) and (false and connection5 or (false or iw) or FaqGroup and FaqGroup and false) and not ((false and (iw or not connection5) or (false or (false or not FaqGroup))) and (false and connection5 or (false or iw) or FaqGroup and FaqGroup and false)) then
    Library.AntiGameplayPause:OnChanged(fn522)
    task.spawn(antiGameplayPauseLoop)
    MenuGroup:OnUnload(fn213)
    iJ = Toggles.Settings:AddLeftGroupbox("Menu")
else
    Toggles.AntiGameplayPause:OnChanged(fn522)
    task.spawn(antiGameplayPauseLoop)
    Library:OnUnload(fn213)
    MenuGroup = iJ.Settings:AddLeftGroupbox("Menu")
end
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
h4 = tick()
h1 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local lK = v
        pcall(function()
            lK:Disable()
        end)
    end
end)
hJ = fn733
connection4 = UserInputService.InputBegan:Connect(onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn402)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(iJ.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/AgeEvolutionTycoon")
local i3 = SaveManager:BuildConfigSection(iJ.Settings)
SaveManager:LoadAutoloadConfig()
ir = fn290
hU = fn75
iv = fn678
io = function(eN)
    local mu
    mu = nil
    local mv = type(eN) ~= "table" or type(eN.idx) ~= "string" or type(eN.type) ~= "string" or SaveManager.Ignore[eN.idx]
    if mv then
        return false
    end
    mu = ir(eN.type, eN.idx)
    if not mu then
        return false
    end
    local mv_1 = pcall(function()
        if eN.type == "Input" then
            if type(eN.text) ~= "string" then
                return
            end
            mu:SetValue(eN.text)
        elseif eN.type == "ColorPicker" then
            mu:SetValueRGB(Color3.fromHex(eN.value), eN.transparency)
        elseif eN.type == "KeyPicker" then
            mu:SetValue({ eN.key, eN.mode, eN.modifiers })
            if eN.mode == "Toggle" and eN.toggled ~= nil then
                mu.Toggled = eN.toggled
                mu:Update()
            end
        else
            mu:SetValue(eN.value)
        end
    end)
    return mv_1
end
if (FeaturesGroup or not FeaturesGroup or (not FeaturesGroup or MovementGroup)) and (FeaturesGroup and not MovementGroup or FeaturesGroup and MovementGroup) and not ((FeaturesGroup or not FeaturesGroup or (not FeaturesGroup or MovementGroup)) and (FeaturesGroup and not MovementGroup or FeaturesGroup and MovementGroup)) then
    i3:AddDivider()
    i3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    i3:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    i3:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
else
    i3:AddDivider()
    i3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    i3:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    i3:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
end
