local jW
local Options
local CurrentCamera
local jh
local jG
local jJ
local jn
local jq
local connection
local jt
local jP
local jw
local jS
local jz
local SaveManager
local jj
local Library
local jm
local LocalPlayer
local jp
local HttpService
local jO
local jR
local jv
local Toggles
local jf
local jB
local ji
local connection2
local jl
local jH
local jK
local jr
local VirtualUser
local ju
local UserInputService
local i8
local jx
local jb
local je
local function onRscripts()
    if setclipboard then
        setclipboard(ju)
    elseif toclipboard then
        toclipboard(ju)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn50(ab)
    for i, v in ipairs(jO) do
        if v == ab then
            return i
        end
    end
    return 0
end
local function fn59(fv, fw)
    local Type = fw.Type
    if Type == "Toggle" then
        return { idx = fv, type = "Toggle", value = fw.Value == true }
    elseif Type == "Slider" then
        return { idx = fv, type = "Slider", value = tostring(fw.Value) }
    elseif Type == "Dropdown" then
        return { idx = fv, type = "Dropdown", multi = fw.Multi == true, value = fw.Value }
    elseif Type == "Input" then
        local n_ = fw.Value
        local n3 = if n_ then 1 else 0
        local n1 = 2881 * n3 + 2754 * (1 - n3)
        local n2 = 1098 * n3 + 221 * (1 - n3)
        if not ((n1 * 1326 + n2 * 3426 + n1 * n2) % 16777213 == 10745292) then
            n_ = ""
        end
        return { idx = fv, type = "Input", text = tostring(n_) }
    elseif Type == "ColorPicker" then
        return { idx = fv, type = "ColorPicker", value = fw.Value:ToHex(), transparency = fw.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = fv,
            type = "KeyPicker",
            mode = fw.Mode,
            key = fw.Value,
            modifiers = fw.Modifiers,
            toggled = fw.Toggled
        }
    else
        return nil
    end
end
local function fn100()
    local lc = jx()
    local ld = lc and lc:FindFirstChild("HumanoidRootPart")
    return ld
end
local function fn114(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function fn170()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    jl = tick()
end
local function onRenderStepped(el)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local nj_1 = jt()
        if nj_1 then
            nj_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local nj_3 = jm()
        local nk = jt()
        if nj_3 and nk then
            nk.PlatformStand = true
            local nk_1 = Vector3.zero
            local np = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if np == 1 then
                nk_1 = nk_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                nk_1 = nk_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                nk_1 = nk_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                nk_1 = nk_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                nk_1 = nk_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                nk_1 = nk_1 - Vector3.new(0, 1, 0)
            end
            nj_3.Velocity = Vector3.zero
            if nk_1.Magnitude > 0 then
                nj_3.CFrame = nj_3.CFrame + nk_1.Unit * Options.FlySpeed.Value * el
            end
        end
    end
end
local function onInputChanged(e3)
    local UserInputType = e3.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        jp = tick()
    end
end
local function fn196(T, U)
    return T.price > U.price
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local nh_1 = jt()
        if nh_1 then
            nh_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn278()
    return LocalPlayer.Character
end
local function onCopyEthereumAddress()
    jR(jn, "Copied Ethereum address")
end
local function fn325()
    if not Toggles.WalkSpeedEnabled.Value then
        local ns = jt()
        if ns then
            ns.WalkSpeed = 16
        end
    end
end
local function onCopyBitcoinAddress()
    jR(jq, "Copied Bitcoin address")
end
local function fn331()
    local lg_1
    local lf_1
    if identifyexecutor then
        lg_1, lf_1 = identifyexecutor()
        local lh = lg_1 ~= ""
        local li = type(lg_1) == "string" and lh
        if li then
            local lh_1 = type(lf_1) == "string" and lf_1 ~= "" and lg_1 .. " " .. lf_1
            local lf_2 = lh_1
            local lm = if lf_2 then 1 else 0
            local lk = 1513 * lm + 3076 * (1 - lm)
            local ll = 693 * lm + 2517 * (1 - lm)
            if not ((lk * 1273 + ll * 2479 + lk * ll) % 16777213 == 4692505) then
                lf_2 = lg_1
            end
            jv = lf_2
        end
    end
end
local function fn398(aF, aG)
    return string.format('<font color="%s">%s</font>', aG, aF)
end
local function onCopyUSDTAddress()
    jR(jj, "Copied USDT address")
end
local function fn423()
    jJ(Toggles.AntiGameplayPause.Value)
end
local function worker()
    local lq_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local lp = math.floor(os.clock() - jP)
        if lp < 60 then
            lq_1 = lp .. "s"
        elseif lp < 3600 then
            lq_1 = string.format("%dm %ds", lp // 60, lp % 60)
        else
            lq_1 = string.format("%dh %dm", lp // 3600, lp % 3600 // 60)
        end
        jh:SetText(jK("Session time", lq_1, jz))
    end
end
local function onExportConfigToClipboard()
    local oz_1
    local oy_1
    oy_1, oz_1 = pcall(HttpService.JSONEncode, HttpService, jB())
    if not oy_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local oy_2 = setclipboard or toclipboard
    local oy_3 = type(oy_2) ~= "function" or not pcall(oy_2, oz_1)
    if oy_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local nR = tick() - jp
            local nS = tick() - jl
            if nR >= 300 and nS >= 60 then
                pcall(i8)
            else
                if nR < 300 and nS >= 300 then
                    pcall(i8)
                end
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local oH_1
    local oF = Options.SaveManager_ImportSource.Value or ""
    local oF_1
    local oG = tostring(oF):match("^%s*(.-)%s*$")
    if oG == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    oF_1, oH_1 = pcall(HttpService.JSONDecode, HttpService, oG)
    local oG_1 = not oF_1 or type(oH_1) ~= "table" or type(oH_1.objects) ~= "table"
    if oG_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local oF_2 = 0
    for i, v in ipairs(oH_1.objects) do
        if jW(v) then
            oF_2 += 1
        end
    end
    if oF_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local oH_2 = oF_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(oF_2, oH_2), 6)
end
local function fn510()
    local k6 = jx()
    local k7 = k6 and k6:FindFirstChildOfClass("Humanoid")
    return k7
end
local function onCopyLitecoinAddress()
    jR(jr, "Copied Litecoin address")
end
local function onInputBegan()
    jp = tick()
end
local function onCopySolanaAddress()
    jR(ji, "Copied Solana address")
end
local function fn551(an)
    local DiscordGroup = an:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = jH })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = jH })
end
local function onUnload()
    Library:Unload()
end
local function fn579()
    if not Toggles.Fly.Value then
        local nq = jt()
        if nq then
            nq.PlatformStand = false
        end
    end
end
local function fn653()
    connection:Disconnect()
    connection2:Disconnect()
    jJ(false)
    print("Unloaded!")
end
local function onCopyJoinScript_JobID()
    local ln = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, je)
    if setclipboard then
        setclipboard(ln)
    elseif toclipboard then
        toclipboard(ln)
    end
    Library:Notify("Copied join script to clipboard")
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            jJ(true)
        end
    end
end
local function fn675()
    jR(jw, "Copied Discord invite to clipboard")
end
local function fn719()
    local n8 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local n9 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if n9 then
                local n9_1 = jG(k, v)
                if n9_1 then
                    n8[#n8 + 1] = n9_1
                end
            end
        end
    end
    table.sort(n8, function(fI, fJ)
        if fI.type ~= fJ.type then
            return fI.type < fJ.type
        end
        return fI.idx < fJ.idx
    end)
    return { objects = n8 }
end
local function fn725(aI, aJ, aK)
    return string.format("<b>%s</b> %s %s", aI, jS("-", "#5a6070"), jS(aJ, aK))
end
local function onCopyPayPalLink()
    jR(jf, "Copied PayPal link")
end
local function fn791(fn, fo)
    local nW_1 = (fn == "Toggle" and Toggles or Options)[fo]
    local nV_2 = type(nW_1) == "table" and nW_1.Type == fn
    return nV_2 and nW_1 or nil
end
local function onCopyVenmoLink()
    jR(jb, "Copied Venmo link")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local m6_1 = jx()
        if m6_1 then
            for i, descendant in ipairs(m6_1:GetDescendants()) do
                local m6_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if m6_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
i8 = nil
jb = nil
je = nil
jf = nil
jh = nil
ji = nil
jj = nil
jl = nil
jm = nil
jn = nil
jp = nil
jq = nil
jr = nil
jt = nil
ju = nil
jv = nil
jw = nil
jx = nil
Toggles = nil
jz = nil
Options = nil
jB = nil
SaveManager = nil
CurrentCamera = nil
connection2 = nil
Library = nil
jG = nil
jH = nil
LocalPlayer = nil
jJ = nil
jK = nil
HttpService = nil
connection = nil
VirtualUser = nil
jO = nil
jP = nil
UserInputService = nil
jR = nil
jS = nil
local ToggleBankTransfer, i9, Upgrade, Sell, jd, OpenCase, Upgrader, jo, Items, UpdateRewards, ReplicatedStorage
jW = nil
local ClaimCategoryIndex, j8, MenuGroup, ks
local j2_1, j2_2
local j9_7
ReplicatedStorage, UserInputService, VirtualUser, HttpService, LocalPlayer, Library, SaveManager, Options, Toggles, jw, ju, Items, Upgrader, OpenCase, Sell, Upgrade, ToggleBankTransfer, ClaimCategoryIndex, UpdateRewards, j2_1, jO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local j6 = "Case Paradise"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
jw = "https://discord.gg/ehKVq7pf7v"
ju = "https://rscripts.net/@Ouroboros"
local Modules = ReplicatedStorage:WaitForChild("Modules")
local jZ_4
Items = require(Modules:WaitForChild("Items"))
local j4 = require(Modules:WaitForChild("Cases"))
local Rarities = require(Modules:WaitForChild("Rarities"))
local j1_2
Upgrader = require(Modules:WaitForChild("Upgrader"))
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local AccountGroup
OpenCase = Remotes:WaitForChild("OpenCase")
Sell = Remotes:WaitForChild("Sell")
Upgrade = Remotes:WaitForChild("Upgrade")
ToggleBankTransfer = Remotes:WaitForChild("ToggleBankTransfer")
ClaimCategoryIndex = Remotes:WaitForChild("ClaimCategoryIndex")
UpdateRewards = Remotes:WaitForChild("UpdateRewards")
if (OpenCase or jO) and (jO and jO) and (not OpenCase and OpenCase and (jO or OpenCase)) or (OpenCase and jO or jO and jO or (OpenCase or not jO) and (not jO and jO)) or not ((OpenCase or jO) and (jO and jO) and (not OpenCase and OpenCase and (jO or OpenCase)) or (OpenCase and jO or jO and jO or (OpenCase or not jO) and (not jO and jO))) then
    j2_1 = {
        "Consumer Grade",
        "Industrial Grade",
        "Mil-Spec",
        "Restricted",
        "Classified",
        "Covert",
        "Extraordinary",
        "Contraband",
        "Special",
        "Money",
        "Machinegun"
    }
else
    jw = {
        "Covert",
        "Money",
        "Special",
        "Industrial Grade",
        "Consumer Grade",
        "Classified",
        "Machinegun",
        "Contraband",
        "Mil-Spec",
        "Extraordinary",
        "Restricted"
    }
end
jO = {}
local j3 = {}
for k in pairs(Rarities) do
    j3[k] = true
end
for i, v in ipairs(j2_1) do
    if j3[v] then
        table.insert(jO, v)
        j3[v] = nil
    end
end
for k in pairs(j3) do
    table.insert(jO, k)
end
if #jO == 0 then
    local jX_1 = 3
    repeat
        local jY_1 = {
            "tpsavjzzy",
            "nahjhztpckn",
            "pqywuqq",
            "qwb",
            "ujigx",
            "jskfzon",
            "dibzh",
            "icwvstn",
            "dyfvd",
            "lbh",
            "kimip"
        }
        local pY = jX_1
        local jZ_1 = jY_1[pY % 11 + 1]
        if jZ_1:len() <= jZ_1:gsub("(.)", "%1%1", pY % 3 % 2 + 1):len() then
            jO = {
                "Consumer Grade",
                "Industrial Grade",
                "Mil-Spec",
                "Restricted",
                "Classified",
                "Covert",
                "Extraordinary",
                "Contraband",
                "Special"
            }
        else
            jO = {
                "Mil-Spec",
                "Consumer Grade",
                "Covert",
                "Restricted",
                "Special",
                "Industrial Grade",
                "Contraband",
                "Classified",
                "Extraordinary"
            }
        end
        jX_1 = (jX_1 + 2) % 4
    until (jX_1 * 3 + 0) % 4 == 3
end
local jY_2 = {}
for k, v in pairs(j4) do
    local jZ_2 = v.Price or v.Cost or 0
    local insert = table.insert
    local j__1 = v.Name or "Case " .. tostring(k)
    insert(jY_2, { id = k, name = j__1, price = jZ_2 })
end
jo = nil
local j0 = 0
repeat
    local jX_4 = {
        "irnqf",
        "ayx",
        "oyehxlehd",
        "zcebuqcroyum",
        "xbsclhkuv",
        "pyk",
        "fkmncvj",
        "jgakbweuvzvk",
        "bpgntec",
        "qwtxlfxblba"
    }
    if jX_4[(j0 * 43 + 112) % 10 + 1] < jX_4[(j0 * 43 + 112) % 10 + 1] then
        table.sort(jo, fn196)
        jY_2 = {}
        j1_2 = {}
    else
        table.sort(jY_2, fn196)
        j1_2 = {}
        jo = {}
    end
    j0 = (j0 + 7) % 8
until (j0 * 7 + 5) % 8 == 6
for i, v in ipairs(jY_2) do
    local jX_5 = v.name .. " ($" .. tostring(v.price) .. ")"
    table.insert(j1_2, jX_5)
    jo[jX_5] = v.id
end
jd, jR, jH, jx, jt, jm = nil, nil, nil, nil, nil, nil
jd = fn50
jR = fn114
jH = fn675
jx = fn278
jt = fn510
jm = fn100
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = jw, Copyable = true }, "|", j6 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
j0 = {
    Info = Window:AddTab("Info", "info"),
    Farming = Window:AddTab("Farming", "download"),
    Inventory = Window:AddTab("Inventory", "package"),
    Upgrader = Window:AddTab("Upgrader", "arrow-up-circle"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
j0.Roll = j0.Farming:AddSubTab("Case Rolling", "repeat")
j0.Quests = j0.Farming:AddSubTab("Daily Quests", "gift")
j0.Sell = j0.Inventory:AddSubTab("Sell", "trash-2")
j0.Bank = j0.Inventory:AddSubTab("Bank", "archive")
for i, v in ipairs({ j0.Roll, j0.Quests, j0.Sell, j0.Bank, j0.Upgrader, j0.Player, j0.Settings }) do
    fn551(v)
end
j8, j4, jz, j3, jv, AccountGroup, j2_2, jh, je, jZ_4, jS, jK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jX_6 = 2
repeat
    local j__3 = (jX_6 * 1 + 3) % 8 + 1
    if j__3 <= 4 then
        if j__3 <= 2 then
            if j__3 <= 1 then
                local ph = bit32.rrotate(bit32.bxor(bit32.lrotate(jX_6, 20), string.byte(tostring(AccountGroup))), 29)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ph, 2902059182), 18), 2730144743) ~= bit32.lrotate(ph, 18) then
                    jS = "#6ec1ff"
                else
                    j4 = "#6ec1ff"
                end
                jX_6 = (jX_6 + 17) % 32
            else
                local j9_1 = {
                    "dkwupuyjkg",
                    "uywrggwatvsq",
                    "wfh",
                    "zpyawy",
                    "rcfxqsrkcp",
                    "nzjewmaszm",
                    "xrxdrbbzl",
                    "avhyehozu",
                    "xxixwji",
                    "tbophhij"
                }
                if j9_1[(jX_6 * 39 + 6) % 10 + 1] <= j9_1[(jX_6 * 39 + 6) % 10 + 1] then
                    jz = "#e8a34d"
                else
                    jh = "#e8a34d"
                end
                jX_6 = (jX_6 + 9) % 32
            end
        elseif j__3 <= 3 then
            local qa = bit32.rrotate(bit32.bxor(bit32.lrotate(jX_6, 24), string.byte(tostring(jh))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(qa, 2511381910), 20), 1500076810) ~= bit32.lrotate(qa, 20) then
                jK = "#8b93a3"
                j8 = "Unknown"
                pcall(fn331)
                j0 = LocalPlayer.Info:AddLeftGroupbox("Account", "circle-user")
                j0:AddLabel(j3("User", jh.Name, j2_2), true)
                j0:AddLabel(j3("Status", "Keyless", j2_2), true)
                j0:AddLabel(j3("Executor", "Unknown", j2_2), true)
                j6 = LocalPlayer.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                j6:AddLabel(AccountGroup(jv .. " [" .. tostring(game.PlaceId) .. "]", jz), true)
                j6:AddLabel(j3("Place ID", tostring(game.PlaceId), jz), true)
                j4 = j6:AddLabel(j3("Session time", "0s", jS), true)
            else
                j3 = "#8b93a3"
                jv = "Unknown"
                pcall(fn331)
                AccountGroup = j0.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(jK("User", LocalPlayer.Name, j8), true)
                AccountGroup:AddLabel(jK("Status", "Keyless", j8), true)
                AccountGroup:AddLabel(jK("Executor", jv, j8), true)
                j2_2 = j0.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                j2_2:AddLabel(jS(j6 .. " [" .. tostring(game.PlaceId) .. "]", j4), true)
                j2_2:AddLabel(jK("Place ID", tostring(game.PlaceId), j4), true)
                jh = j2_2:AddLabel(jK("Session time", "0s", jz), true)
            end
            jX_6 = (jX_6 + 9) % 32
        else
            if jX_6 * 74973081 + 7 + 5 <= jX_6 * 74973081 + 7 + 5 + 5 then
                je = tostring(game.JobId)
            else
                j2_2 = tostring(game.JobId)
            end
            jX_6 = (jX_6 + 25) % 32
        end
    elseif j__3 <= 6 then
        if j__3 <= 5 then
            local j9_2 = (vector.create((jX_6 * 1 + 6) % 11 + 1, (jX_6 * 11 + 7) % 13 + 1, (jX_6 * 8 + 6) % 17 + 1))
            local ka_1 = (vector.create((jX_6 * 1 + 2) % 11 + 1, (jX_6 * 11 + 2) % 13 + 1, (jX_6 * 2 + 12) % 17 + 1))
            local qi = vector.cross(j9_2, ka_1)
            local qj = vector.dot(j9_2, ka_1)
            if vector.dot(qi, qi) + qj * qj == vector.dot(j9_2, j9_2) * vector.dot(ka_1, ka_1) + 4 then
                je = #jZ_4 > 18
            else
                jZ_4 = #je > 18
            end
            jX_6 = (jX_6 + 1) % 32
        else
            local j9_3 = {
                "hpncvqsxr",
                "vedscfoxkiw",
                "qbjtgavkekda",
                "qkdn",
                "yljb",
                "bdqyamfqtcj",
                "sqjfxefnnksh",
                "mcjoommnsct",
                "aymvz",
                "gdsmtbuzm",
                "cwaudqhkz",
                "ydvkemge",
                "kqxv"
            }
            if j9_3[(jX_6 * 1 + 77) % 13 + 1] < j9_3[(jX_6 * 1 + 77) % 13 + 1] then
                j3 = fn398
            else
                jS = fn398
            end
            jX_6 = (jX_6 + 25) % 32
        end
    elseif j__3 <= 7 then
        local j__4 = (vector.create((jX_6 * 4 + 2) % 11 + 1, (jX_6 * 1 + 10) % 13 + 1, (jX_6 * 14 + 9) % 17 + 1))
        local j9_4 = (vector.create((jX_6 * 2 + 8) % 11 + 1, (jX_6 * 2 + 9) % 13 + 1, (jX_6 * 2 + 14) % 17 + 1))
        local ka_2 = (vector.create((jX_6 * 5 + 1) % 11 + 1, (jX_6 * 1 + 5) % 13 + 1, (jX_6 * 10 + 3) % 17 + 1))
        local kb_1 = (vector.create((jX_6 * 1 + 2) % 5 + 1, (jX_6 * 1 + 2) % 7 + 1, (jX_6 * 1 + 6) % 9 + 1))
        if vector.dot(vector.cross(j__4, (vector.cross(j9_4, ka_2))), kb_1) == vector.dot(j9_4 * vector.dot(j__4, ka_2) - ka_2 * vector.dot(j__4, j9_4), kb_1) then
            jK = fn725
        else
            jv = fn725
        end
        jX_6 = (jX_6 + 25) % 32
    else
        local j__5 = (vector.create((jX_6 * 6 + 2) % 11 + 1, (jX_6 * 9 + 9) % 13 + 1, (jX_6 * 1 + 10) % 17 + 1))
        local j9_5 = (vector.create((jX_6 * 7 + 3) % 11 + 1, (jX_6 * 8 + 13) % 13 + 1, (jX_6 * 7 + 1) % 17 + 1))
        local ka_3 = (vector.create((jX_6 * 5 + 9) % 11 + 1, (jX_6 * 5 + 1) % 13 + 1, (jX_6 * 8 + 15) % 17 + 1))
        local kb_2 = (vector.create((jX_6 * 2 + 7) % 5 + 1, (jX_6 * 3 + 1) % 7 + 1, (jX_6 * 3 + 3) % 9 + 1))
        if vector.dot(vector.cross(j__5, (vector.cross(j9_5, ka_3))), kb_2) == vector.dot(j9_5 * vector.dot(j__5, ka_3) - ka_3 * vector.dot(j__5, j9_5), kb_2) + 1 then
            jS = "#7fd47f"
        else
            j8 = "#7fd47f"
        end
        jX_6 = (jX_6 + 9) % 32
    end
until (jX_6 * 19 + 1) % 32 == 15
if jZ_4 then
    local jX_7 = 4
    repeat
        local jY_5 = (vector.create((jX_7 * 7 + 4) % 11 + 1, (jX_7 * 5 + 2) % 13 + 1, (jX_7 * 14 + 5) % 17 + 1))
        local j__6 = (vector.create((jX_7 * 6 + 8) % 11 + 1, (jX_7 * 3 + 3) % 13 + 1, (jX_7 * 13 + 4) % 17 + 1))
        local j9_6 = (vector.create((jX_7 * 7 + 8) % 11 + 1, (jX_7 * 3 + 9) % 13 + 1, (jX_7 * 13 + 9) % 17 + 1))
        local ka_4 = (vector.create((jX_7 * 2 + 7) % 5 + 1, (jX_7 * 4 + 5) % 7 + 1, (jX_7 * 2 + 4) % 9 + 1))
        if vector.dot(vector.cross(jY_5, (vector.cross(j__6, j9_6))), ka_4) == vector.dot(j__6 * vector.dot(jY_5, j9_6) - j9_6 * vector.dot(jY_5, j__6), ka_4) + 2 then
            je = string.sub(jZ_4, 1, 18) .. "..."
        else
            jZ_4 = string.sub(je, 1, 18) .. "..."
        end
        jX_7 = (jX_7 + 6) % 8
    until (jX_7 * 5 + 4) % 8 == 6
end
local jX_8 = jZ_4 or je
jP, jr, jq, jn, jj, ji, jf, jb, ks, j9_7, CurrentCamera, MenuGroup, jp, jl, connection, connection2, jJ, i8, i9, jG, jB, jW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
j2_2:AddLabel(jK("Server", jX_8, j3), true)
j2_2:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
jP = os.clock()
task.spawn(worker)
local ScriptsGroup = j0.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jS("Included in this hub", j3), true)
ScriptsGroup:AddLabel(jS(j6, j4), true)
local FeaturesGroup = j0.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(jS("Auto Roll Cases", j4), true)
FeaturesGroup:AddLabel(jS("Daily Quests", j8), true)
FeaturesGroup:AddLabel(jS("Auto Sell & Bank", jz), true)
FeaturesGroup:AddLabel(jS("Auto Upgrade", j3), true)
local SocialsGroup = j0.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = jH })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = j0.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = jH })
jr = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
jq = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
jn = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
jj = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ji = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
jf = "https://paypal.me/TheTruckerGOD"
jb = "https://venmo.com/u/miserablemusic"
local jZ_5 = "#345d9d"
local kt = "#f7931a"
if ((false or not j9_7) and (j9_7 or not j9_7) and (not j9_7 and jn and false) or (jn or not j9_7 or false) and (not j9_7 or j9_7 or false)) and (j9_7 and jn and (j9_7 or jn) and (not j9_7 and false or (jn or j9_7)) and ((false and j9_7 or "0xaE95A405D007a6F858E5d35714111B075fEFb40a") and (j9_7 and j9_7 or (not j9_7 or not j9_7)))) or not (((false or not j9_7) and (j9_7 or not j9_7) and (not j9_7 and jn and false) or (jn or not j9_7 or false) and (not j9_7 or j9_7 or false)) and (j9_7 and jn and (j9_7 or jn) and (not j9_7 and false or (jn or j9_7)) and ((false and j9_7 or "0xaE95A405D007a6F858E5d35714111B075fEFb40a") and (j9_7 and j9_7 or (not j9_7 or not j9_7))))) then
    ks = "#627eea"
else
    kt = "#627eea"
end
local kr = "#26a17b"
local kq = "#14f195"
local ko = "#0070ba"
local kn = "#008cff"
local DonationsGroup = j0.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(jS("All donations are optional but appreciated.", jz), true)
DonationsGroup:AddLabel(jS("If you donate you get a special role, just PING after you donate.", j8), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jS("LTC / Litecoin", jZ_5), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(jS("BTC / Bitcoin", kt), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(jS("ETH / Ethereum", ks), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(jS("USDT", kr), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(jS("Solana", kq), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(jS("PayPal", ko), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(jS("Venmo", kn), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jS("Don't have any of the listed currencies but still wanna donate?", j3), true)
DonationsGroup:AddLabel(jS("DM me and we'll work something out.", j4), true)
local FaqGroup = j0.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoRollCasesGroup = j0.Roll:AddLeftGroupbox("Auto Roll Cases", "repeat")
AutoRollCasesGroup:AddToggle("AutoRoll", { Text = "Auto Roll Cases", Default = false })
AutoRollCasesGroup:AddDropdown("SelectedCases", {
    Values = j1_2,
    Default = 1,
    Text = "Select Cases",
    Multi = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2,
    SelectAllButtons = true
})
AutoRollCasesGroup:AddSlider("RollInterval", { Text = "Roll Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
AutoRollCasesGroup:AddSlider("RollQuantity", { Text = "Cases Per Roll", Default = 1, Min = 1, Max = 5, Rounding = 0, Suffix = "x" })
Toggles.AutoRoll:OnChanged(function()
    if not Toggles.AutoRoll.Value then
        return
    end
    task.spawn(function()
        while true do
            if Toggles.AutoRoll.Value and not Library.Unloaded then
                local Value = Options.SelectedCases.Value
                local lu = {}
                for k, v in pairs(Value) do
                    if v then
                        local lt_2 = jo[k]
                        if lt_2 then
                            table.insert(lu, lt_2)
                        end
                    end
                end
                if #lu == 0 then
                    task.wait(1)
                else
                    for i, v in ipairs(lu) do
                        local lH = v
                        if not Toggles.AutoRoll.Value or Library.Unloaded then
                            break
                        end
                        pcall(function()
                            OpenCase:InvokeServer(lH, Options.RollQuantity.Value, true, nil)
                        end)
                        task.wait(Options.RollInterval.Value)
                    end
                end
                continue
            end
            break
        end
    end)
end)
local ClaimRewardsGroup = j0.Quests:AddLeftGroupbox("Claim Rewards", "gift")
ClaimRewardsGroup:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
ClaimRewardsGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
task.spawn(function()
    while not Library.Unloaded do
        task.wait(10)
        if Toggles.AutoClaimRewards.Value then
            pcall(function()
                local Gifts = ReplicatedStorage:WaitForChild("Gifts")
                local result = UpdateRewards:InvokeServer()
                local ClaimedGifts = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Windows"):WaitForChild("Rewards"):FindFirstChild("ClaimedGifts")
                for i, child in ipairs(Gifts:GetChildren()) do
                    local lU = child
                    if lU.Value - result <= 0 then
                        local lJ_2 = false
                        if ClaimedGifts then
                            local lM_1 = ClaimedGifts:FindFirstChild(lU.Name)
                            if lM_1 and lM_1.Value == true then
                                lJ_2 = true
                            end
                        end
                        if not lJ_2 then
                            local lJ_3 = pcall(function()
                                return UpdateRewards:InvokeServer(lU.Name)
                            end)
                            if lJ_3 and ClaimedGifts then
                                local lJ_4 = ClaimedGifts:FindFirstChild(lU.Name)
                                if lJ_4 then
                                    lJ_4.Value = true
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(10)
        if Toggles.AutoClaimIndex.Value then
            pcall(function()
                local PlayerData = LocalPlayer:FindFirstChild("PlayerData")
                if PlayerData then
                    local Index = PlayerData:FindFirstChild("Index")
                    if Index then
                        for i, child in ipairs(Index:GetChildren()) do
                            local l3 = child
                            pcall(function()
                                ClaimCategoryIndex:FireServer(l3.Name)
                            end)
                        end
                    end
                end
            end)
        end
    end
end)
local AutoSellGroup = j0.Sell:AddLeftGroupbox("Auto Sell", "trash-2")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell Weapons", Default = false })
AutoSellGroup:AddDropdown("SellRarity", { Values = jO, Default = 1, Text = "Sell Below Rarity", Multi = false, Searchable = true })
AutoSellGroup:AddSlider("SellInterval", { Text = "Sell Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
Toggles.AutoSell:OnChanged(function()
    if not Toggles.AutoSell.Value then
        return
    end
    task.spawn(function()
        while true do
            if Toggles.AutoSell.Value and not Library.Unloaded then
                local Inventory = LocalPlayer:WaitForChild("PlayerData"):WaitForChild("Inventory")
                local l7 = jd(Options.SellRarity.Value)
                local l8 = {}
                for i, child in ipairs(Inventory:GetChildren()) do
                    local l6_2 = tostring(child)
                    local l9 = Items[l6_2]
                    if l9 then
                        local attr2 = child:GetAttribute("Locked")
                        local mb = not attr2
                        if mb ~= false then
                            mb = jd(l9.Rarity) <= l7
                        end
                        if mb then
                            local attr = child:GetAttribute("UUID")
                            if attr then
                                local insert = table.insert
                                local mb_1 = child:GetAttribute("Wear") or "FN"
                                local mc = child:GetAttribute("Stattrak") or false
                                local md = child:GetAttribute("TimeObtained") or 0
                                insert(l8, { Name = l6_2, Wear = mb_1, Stattrak = mc, Age = md, UUID = attr })
                            end
                        end
                    end
                end
                if #l8 > 0 then
                    local l6_3 = #l8
                    for i = 1, l6_3, 50 do
                        local l5
                        l5 = {}
                        local l6_4 = math.min(i + 49, #l8)
                        local mr = i
                        while mr <= l6_4 do
                            local ms = mr
                            table.insert(l5, l8[ms])
                            mr += 1
                        end
                        pcall(function()
                            Sell:InvokeServer(l5)
                        end)
                        task.wait(0.2)
                    end
                end
                task.wait(Options.SellInterval.Value)
                continue
            end
            break
        end
    end)
end)
local AutoBankGroup = j0.Bank:AddLeftGroupbox("Auto Bank", "archive")
AutoBankGroup:AddToggle("AutoBank", { Text = "Auto Bank Items", Default = false })
AutoBankGroup:AddDropdown("BankRarity", { Values = jO, Default = 5, Text = "Bank Above Rarity", Multi = false, Searchable = true })
AutoBankGroup:AddSlider("BankInterval", { Text = "Bank Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
Toggles.AutoBank:OnChanged(function()
    if not Toggles.AutoBank.Value then
        return
    end
    task.spawn(function()
        local mC = false
        repeat
            if Toggles.AutoBank.Value and not Library.Unloaded then
                local Inventory = LocalPlayer:WaitForChild("PlayerData"):WaitForChild("Inventory")
                local mx = jd(Options.BankRarity.Value)
                local mv = {}
                for i, child in ipairs(Inventory:GetChildren()) do
                    local mw_2 = tostring(child)
                    local my = Items[mw_2]
                    if my then
                        local attr2 = child:GetAttribute("Locked")
                        local mz = not attr2
                        if mz ~= false then
                            mz = jd(my.Rarity) >= mx
                        end
                        if mz then
                            local attr = child:GetAttribute("UUID")
                            if attr then
                                table.insert(mv, attr)
                            end
                        end
                    end
                end
                if #mv > 0 then
                    pcall(function()
                        ToggleBankTransfer:FireServer(mv)
                    end)
                end
                task.wait(Options.BankInterval.Value)
            else
                mC = true
            end
        until mC
    end)
end)
local AutoUpgradeGroup = j0.Upgrader:AddLeftGroupbox("Auto Upgrade", "arrow-up-circle")
AutoUpgradeGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade Items", Default = false })
AutoUpgradeGroup:AddSlider("UpgradeMinMultiplier", { Text = "Min Multiplier", Default = 2, Min = 1, Max = 10, Rounding = 1, Suffix = "x" })
AutoUpgradeGroup:AddSlider("UpgradeMaxCost", { Text = "Max Cost", Default = 1000, Min = 100, Max = 100000, Rounding = 0, Suffix = "$" })
AutoUpgradeGroup:AddSlider("UpgradeInterval", { Text = "Upgrade Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
Toggles.AutoUpgrade:OnChanged(function()
    if not Toggles.AutoUpgrade.Value then
        return
    end
    task.spawn(function()
        local mZ = false
        repeat
            if Toggles.AutoUpgrade.Value and not Library.Unloaded then
                local Inventory = LocalPlayer:WaitForChild("PlayerData"):WaitForChild("Inventory")
                local Value2 = Options.UpgradeMinMultiplier.Value
                local Value = Options.UpgradeMaxCost.Value
                local mS = {}
                for i, child in ipairs(Inventory:GetChildren()) do
                    local mP_2 = tostring(child)
                    if Items[mP_2] and Upgrader[mP_2] then
                        local attr = child:GetAttribute("UUID")
                        if attr then
                            local mV = child:GetAttribute("Wear") or "FN"
                            local mW = child:GetAttribute("Stattrak") or false
                            table.insert(mS, { Id = mP_2, UUID = attr, Wear = mV, Stattrak = mW })
                        end
                    end
                end
                if #mS > 0 then
                    local mN = mS[1]
                    local mO = Upgrader[mN.Id]
                    if mO then
                        if (mO.Cost or 0) <= Value and (mO.Multiplier or 1) >= Value2 then
                            pcall(function()
                                local mK = { mN }
                                local mL = mO.Choice or 1
                                Upgrade:FireServer(mK, mL)
                            end)
                        end
                    end
                end
                task.wait(Options.UpgradeInterval.Value)
            else
                mZ = true
            end
        until mZ
    end)
end)
local MovementGroup = j0.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = j0.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn579)
Toggles.WalkSpeedEnabled:OnChanged(fn325)
jJ = function(eG)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not eG)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not eG
        end
    end)
    if not eG then
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
if ((jr or not jG or jG and jG) and (jG and jr and "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99") or (not CurrentCamera and jq or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or (jG or not CurrentCamera) and (false and OuroborosHubGroup))) and ("LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" and (false or jG) and (OuroborosHubGroup or jq or (OuroborosHubGroup or false)) or (false and (jq and CurrentCamera) or (not jG or not jG) and (OuroborosHubGroup or jG))) or not (((jr or not jG or jG and jG) and (jG and jr and "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99") or (not CurrentCamera and jq or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or (jG or not CurrentCamera) and (false and OuroborosHubGroup))) and ("LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" and (false or jG) and (OuroborosHubGroup or jq or (OuroborosHubGroup or false)) or (false and (jq and CurrentCamera) or (not jG or not jG) and (OuroborosHubGroup or jG)))) then
    Toggles.AntiGameplayPause:OnChanged(fn423)
    task.spawn(antiGameplayPauseLoop)
    MenuGroup = j0.Settings:AddLeftGroupbox("Menu", "menu")
else
    MenuGroup.AntiGameplayPause:OnChanged(fn423)
    task.spawn(antiGameplayPauseLoop)
    j0 = Toggles.Settings:AddLeftGroupbox("Menu", "menu")
end
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
jp = tick()
jl = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local nL = v
        pcall(function()
            nL:Disable()
        end)
    end
end)
i8 = fn170
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn653)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(j0.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/CaseParadise")
local j__7 = SaveManager:BuildConfigSection(j0.Settings)
i9 = fn791
jG = fn59
jB = fn719
jW = function(fL)
    local ov
    ov = nil
    local ow = type(fL) ~= "table" or type(fL.idx) ~= "string" or type(fL.type) ~= "string" or SaveManager.Ignore[fL.idx]
    if ow then
        return false
    end
    ov = i9(fL.type, fL.idx)
    if not ov then
        return false
    end
    local ow_1 = pcall(function()
        if fL.type == "Input" then
            if type(fL.text) ~= "string" then
                return
            end
            ov:SetValue(fL.text)
        elseif fL.type == "ColorPicker" then
            ov:SetValueRGB(Color3.fromHex(fL.value), fL.transparency)
        elseif fL.type == "KeyPicker" then
            ov:SetValue({ fL.key, fL.mode, fL.modifiers })
            if fL.mode == "Toggle" and fL.toggled ~= nil then
                ov.Toggled = fL.toggled
                ov:Update()
            end
        else
            ov:SetValue(fL.value)
        end
    end)
    return ow_1
end
j__7:AddDivider()
j__7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
j__7:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
j__7:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
