local Options
local ik
local SaveManager
local Toggles
local ir
local i8
local EggRoll
local CurrentCamera
local je
local AnimShop
local HttpService
local i1
local iJ
local iq
local i7
local iP
local iw
local jd
local iV
local Raft
local VirtualUser
local ip
local i6
local iO
local iv
local jc
local iU
local connection2
local i_
local iH
local io
local Trail
local UserInputService
local iu
local jb
local iT
local iA
local iZ
local iG
local im
local i4
local iM
local LocalPlayer
local Library
local iS
local iz
local connection
local iF
local il
local i3
local WorldHelper
local is
local i9
local iR
local iy
local iX
local function fn42(aB, aC, aD)
    return string.format("<b>%s</b> %s %s", aB, is("-", "#5a6070"), is(aC, aD))
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local mh_1 = jc()
        if mh_1 then
            mh_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function autoEquipPetsLoop()
    while not Library.Unloaded do
        task.wait(2)
        local lr = io()
        if lr then
            if Toggles.AutoEquipPets.Value then
                i3("Pet", "EquipBest")
            end
            if Toggles.AutoEquipTrail.Value then
                ir(lr)
            end
            if Toggles.AutoEquipRaft.Value then
                iJ(lr)
            end
            if Toggles.AutoEquipDance.Value then
                i1(lr)
            end
        end
    end
end
local function fn73()
    local nk = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local nl = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if nl then
                local nl_1 = i_(k, v)
                if nl_1 then
                    nk[#nk + 1] = nl_1
                end
            end
        end
    end
    table.sort(nk, function(fg, fh)
        if fg.type ~= fh.type then
            return fg.type < fh.type
        end
        return fg.idx < fh.idx
    end)
    return { objects = nk }
end
local function onRscripts()
    if setclipboard then
        setclipboard(je)
    elseif toclipboard then
        toclipboard(je)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function onCopySolanaAddress()
    iu(iZ, "Copied Solana address")
end
local function onCopyLitecoinAddress()
    iu(ik, "Copied Litecoin address")
end
local function fn143()
    iP(Toggles.AutoFarm.Value)
end
local function fn146(ay, az)
    return string.format('<font color="%s">%s</font>', az, ay)
end
local function fn190(e1, e2)
    local Type = e2.Type
    if Type == "Toggle" then
        return { idx = e1, type = "Toggle", value = e2.Value == true }
    elseif Type == "Slider" then
        return { idx = e1, type = "Slider", value = tostring(e2.Value) }
    elseif Type == "Dropdown" then
        return { idx = e1, type = "Dropdown", multi = e2.Multi == true, value = e2.Value }
    elseif Type == "Input" then
        local ne = e2.Value or ""
        return { idx = e1, type = "Input", text = tostring(ne) }
    elseif Type == "ColorPicker" then
        return { idx = e1, type = "ColorPicker", value = e2.Value:ToHex(), transparency = e2.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = e1,
            type = "KeyPicker",
            mode = e2.Mode,
            key = e2.Value,
            modifiers = e2.Modifiers,
            toggled = e2.Toggled
        }
    else
        return nil
    end
end
local function fn199()
    local kw_1
    local kv_1
    if identifyexecutor then
        kw_1, kv_1 = identifyexecutor()
        local kx = kw_1 ~= ""
        local ky = type(kw_1) == "string" and kx
        if ky then
            local kx_1 = type(kv_1) == "string" and kv_1 ~= "" and kw_1 .. " " .. kv_1
            iv = kx_1 or kw_1
        end
    end
end
local function fn201(ci)
    local raftData = ci.raftData
    if not raftData then
        return
    end
    local le = im(Raft.GetTable(), raftData.ownedRaftIds, function(cm)
        local la = tonumber(cm.Speed) or 0
        local lb = tonumber(cm.Stamina) or 0
        return la + lb
    end)
    if le and le ~= raftData.equipRaftId then
        i3("Raft", "EquipRaft", le)
    end
end
local function onRenderStepped(dV)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local mm_1 = jc()
        if mm_1 then
            mm_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local mm_3 = iV()
        local mn = jc()
        if mm_3 and mn then
            mn.PlatformStand = true
            local mn_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                mn_1 = mn_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                mn_1 = mn_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                mn_1 = mn_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                mn_1 = mn_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                mn_1 = mn_1 + Vector3.new(0, 1, 0)
            end
            local mv = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if mv == 1 then
                mn_1 = mn_1 - Vector3.new(0, 1, 0)
            end
            mm_3.Velocity = Vector3.zero
            if mn_1.Magnitude > 0 then
                mm_3.CFrame = mm_3.CFrame + mn_1.Unit * Options.FlySpeed.Value * dV
            end
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn228(bZ, b_, b0)
    local Id
    local kT_1
    Id, kT_1 = nil, nil
    for k, v in pairs(bZ) do
        if i8(b_, v.Id) then
            local kV = b0(v)
            if not kT_1 or kV > kT_1 then
                kT_1 = kV
                Id = v.Id
            end
        end
    end
    return Id
end
local function fn231()
    if not Toggles.Fly.Value then
        local mw = jc()
        if mw then
            mw.PlatformStand = false
        end
    end
end
local function fn233()
    iP(false)
    iT(false)
    connection:Disconnect()
    connection2:Disconnect()
    print("Unloaded!")
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local m2 = tick() - iR
            local m3 = tick() - iM
            if m2 >= 300 and m3 >= 60 then
                pcall(ip)
            else
                if m2 < 300 and m3 >= 300 then
                    pcall(ip)
                end
            end
        end
    end
end
local function onCopyBitcoinAddress()
    iu(jb, "Copied Bitcoin address")
end
local function onCopyPayPalLink()
    iu(iU, "Copied PayPal link")
end
local function fn291(F, ...)
    local j9 = iG()
    if not (j9 and j9.RE) then
        return
    end
    local ka_1 = j9.RE:Get(F)
    if ka_1 then
        ka_1:FireServer(...)
    end
end
local function fn326()
    local j6 = iG()
    if j6 and j6.PlayerData and j6.PlayerData.Get then
        return j6.PlayerData.Get()
    end
    return nil
end
local function fn332(cJ, cK, cL, cM)
    local lt = io()
    if not lt then
        return
    end
    for k, v in pairs(cJ) do
        local lu = not i8(cK, v.Id) and iw(v.WorldId, lt)
        if lu then
            local LastId = v.LastId
            local lv = LastId == nil or i8(cK, LastId)
            if lv then
                iz(cL, cM, v.Id)
            end
        end
    end
end
local function fn358(as)
    local DiscordGroup = as:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = i9 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = i9 })
end
local function fn371(ad, ae)
    local kr = type(ad) == "table" and table.find(ad, ae) ~= nil
    return kr
end
local function fn394()
    if not Toggles.WalkSpeedEnabled.Value then
        local mB = jc()
        if mB then
            mB.WalkSpeed = 16
        end
    end
end
local function fn407()
    local j3_1
    local j2_1
    j2_1, j3_1 = pcall(getrenv)
    local j4 = j2_1 and type(j3_1) == "table"
    if j4 then
        return j3_1.shared
    end
    return shared
end
local function autoBuyEggsLoop()
    while not Library.Unloaded do
        task.wait(1.5)
        if Toggles.AutoBuyEggs.Value then
            local lG = io()
            if lG then
                local lH = tonumber(lG.cash) or 0
                local lJ
                for k, v in pairs(EggRoll.GetTable()) do
                    local lH_1 = iw(v.WorldId, lG) and i6(v.Price) <= lH
                    if lH_1 then
                        local lH_2 = not lJ
                        if not lH_2 then
                            local lK = tonumber(v.Id) or 0
                            local lL = tonumber(lJ.Id) or 0
                            lH_2 = lK > lL
                        end
                        if lH_2 then
                            lJ = v
                        end
                    end
                end
                if lJ then
                    i3("Pet", "RollEggOnce", lJ.Id, 1, false)
                end
            end
        end
    end
end
local function onInputBegan()
    iR = tick()
end
local function fn431(Y, Z)
    local ko = tonumber(Y) or 1
    if ko <= 1 then
        return true
    end
    local ko_1 = Z and Z.unlockWorlds
    if type(ko_1) ~= "table" then
        return false
    end
    return table.find(ko_1, Y) ~= nil
end
local function autoBuyWorldsLoop()
    while not Library.Unloaded do
        task.wait(3)
        if Toggles.AutoBuyWorlds.Value then
            local lT = io()
            if lT then
                local lU = tonumber(lT.token) or 0
                local lW = WorldHelper.UnlockCostByWorld or {}
                local lW_1 = #WorldHelper.World
                local l0 = 2
                while l0 <= lW_1 do
                    local l1 = l0
                    if not iw(l1, lT) then
                        local lW_2 = tonumber(lW[l1])
                        if lW_2 and lU >= lW_2 then
                            i3("World", "RequestTeleportWorld", l1)
                            break
                        end
                        l0 += 1
                        continue
                    end
                    l0 += 1
                end
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local kD = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, iS)
    if setclipboard then
        setclipboard(kD)
    elseif toclipboard then
        toclipboard(kD)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onCopyUSDTAddress()
    iu(i4, "Copied USDT address")
end
local function onInputChanged(eD)
    local UserInputType = eD.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        iR = tick()
    end
end
local function fn500()
    local Character = LocalPlayer.Character
    local l4 = Character and Character:FindFirstChildOfClass("Humanoid")
    return l4
end
local function fn502()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iM = tick()
end
local function fn573()
    local Character = LocalPlayer.Character
    local l7 = Character and Character:FindFirstChild("HumanoidRootPart")
    return l7
end
local function fn611()
    iT(Toggles.AntiGameplayPause.Value)
end
local function fn620(eU, eV)
    local m7_1 = (eU == "Toggle" and Toggles or Options)[eV]
    local m6_2 = type(m7_1) == "table" and m7_1.Type == eU
    return m6_2 and m7_1 or nil
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            iT(true)
        end
    end
end
local function fn646(b9)
    local trailData = b9.trailData
    if not trailData then
        return
    end
    local k7 = im(Trail.GetTable(), trailData.owned, function(cd)
        local k3 = tonumber(cd.Speed) or 0
        local k4 = tonumber(cd.Stamina) or 0
        return k3 + k4
    end)
    if k7 and k7 ~= trailData.current then
        i3("Trail", "EquipTrail", k7)
    end
end
local function fn649(cr)
    local danceData = cr.danceData
    if not danceData then
        return
    end
    local ll = im(AnimShop.GetTable(), danceData.ownedAnimIds, function(cv)
        local lh = tonumber(cv.Speed) or 0
        local li = tonumber(cv.Luck) or 0
        return lh + li
    end)
    if ll and ll ~= danceData.equipAnimId then
        i3("Anim", "EquipAnim", ll)
    end
end
local function fn663(L, ...)
    local kc = iG()
    if not (kc and kc.RE) then
        return nil
    end
    local kd_1 = kc.RE:Get(L, true)
    if kd_1 then
        return kd_1:InvokeServer(...)
    end
    return nil
end
local function worker()
    local kG_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local kF = math.floor(os.clock() - iq)
        if kF < 60 then
            kG_1 = kF .. "s"
        elseif kF < 3600 then
            kG_1 = string.format("%dm %ds", kF // 60, kF % 60)
        else
            kG_1 = string.format("%dh %dm", kF // 3600, kF % 3600 // 60)
        end
        iX:SetText(jd("Session time", kG_1, iF))
    end
end
local function fn742(R)
    local kg_1
    local kh_1
    if type(R) == "number" then
        return R
    end
    local kf = tostring(R):gsub("%s", "")
    kh_1, kg_1 = kf:match("^([%d%.]+)([kmbtKMBT]?)$")
    local ki = tonumber(kh_1) or tonumber(kf)
    local kh_2 = ki or 0
    local kf_2 = { k = 1000, m = 1000000, b = 1000000000, t = 1000000000000 }
    if kg_1 and kg_1 ~= "" then
        local ki_2 = kf_2[kg_1:lower()] or 1
        kh_2 = kh_2 * ki_2
    end
    return kh_2
end
local function autoSpinLoop()
    while not Library.Unloaded do
        task.wait(1.5)
        if Toggles.AutoSpin.Value then
            local kQ = io()
            local kR = kQ and kQ.spinData
            if kR then
                local kR_1 = tonumber(kR.opSpinCount) or 0
                if kR_1 > 0 then
                    i3("Spin", "PlayerOpSpin")
                else
                    local kR_2 = tonumber(kR.spinCount) or 0
                    if kR_2 > 0 then
                        i3("Spin", "PlayerSpin")
                    end
                end
            end
        end
    end
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local l9_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if l9_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyEthereumAddress()
    iu(i7, "Copied Ethereum address")
end
local function onImportConfigFromClipboardTex()
    local nQ_1
    local nO = Options.SaveManager_ImportSource.Value or ""
    local nO_1
    local nP = tostring(nO):match("^%s*(.-)%s*$")
    if nP == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    nO_1, nQ_1 = pcall(HttpService.JSONDecode, HttpService, nP)
    local nP_1 = not nO_1 or type(nQ_1) ~= "table" or type(nQ_1.objects) ~= "table"
    if nP_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local nO_2 = 0
    for i, v in ipairs(nQ_1.objects) do
        if iy(v) then
            nO_2 += 1
        end
    end
    if nO_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local nQ_2 = nO_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(nO_2, nQ_2), 6)
end
local function onExportConfigToClipboard()
    local nL_1
    local nK_1
    nK_1, nL_1 = pcall(HttpService.JSONEncode, HttpService, iH())
    if not nK_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local nK_2 = setclipboard or toclipboard
    local nK_3 = type(nK_2) ~= "function" or not pcall(nK_2, nL_1)
    if nK_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function autoFarmLoop()
    while not Library.Unloaded do
        task.wait(3)
        if Toggles.AutoFarm.Value then
            iP(true)
        end
    end
end
local function autoBuyTrailLoop()
    while not Library.Unloaded do
        task.wait(2)
        local lD = io()
        if lD then
            if Toggles.AutoBuyTrail.Value and lD.trailData then
                iA(Trail.GetTable(), lD.trailData.owned, "TrailF", "BuyTrail")
            end
            if Toggles.AutoBuyRaft.Value and lD.raftData then
                iA(Raft.GetTable(), lD.raftData.ownedRaftIds, "RaftF", "BuyRaft")
            end
            if Toggles.AutoBuyDance.Value and lD.danceData then
                iA(AnimShop.GetTable(), lD.danceData.ownedAnimIds, "AnimF", "BuyAnim")
            end
        end
    end
end
local function onCopyVenmoLink()
    iu(iO, "Copied Venmo link")
end
local function fn844(al, am)
    if setclipboard then
        setclipboard(al)
    elseif toclipboard then
        toclipboard(al)
    end
    Library:Notify(am)
end
local function fn871(bG)
    local kM = iG()
    if kM and kM.Ctrl and kM.Ctrl.AutoSlide and kM.Ctrl.AutoSlide.SetEnabled then
        kM.Ctrl.AutoSlide.SetEnabled(bG)
    end
end
local function fn878()
    iu(il, "Copied Discord invite to clipboard")
end
ik = nil
il = nil
im = nil
io = nil
ip = nil
iq = nil
ir = nil
is = nil
LocalPlayer = nil
iu = nil
iv = nil
iw = nil
CurrentCamera = nil
iy = nil
iz = nil
iA = nil
connection2 = nil
HttpService = nil
Options = nil
iF = nil
iG = nil
iH = nil
VirtualUser = nil
iJ = nil
Toggles = nil
WorldHelper = nil
iM = nil
UserInputService = nil
iO = nil
iP = nil
EggRoll = nil
iR = nil
iS = nil
iT = nil
iU = nil
iV = nil
AnimShop = nil
iX = nil
connection = nil
iZ = nil
i_ = nil
Raft = nil
i1 = nil
SaveManager = nil
i3 = nil
i4 = nil
Trail = nil
i6 = nil
i7 = nil
local iC
i8 = nil
i9 = nil
Library = nil
jb = nil
jc = nil
jd = nil
je = nil
local ScriptsGroup, FarmGroup, MenuGroup
local jD_1
local jC_1
local jq_1
local jr_7
Library, SaveManager, UserInputService, VirtualUser, HttpService, LocalPlayer, il, je, Trail, Raft, AnimShop, EggRoll, WorldHelper, Toggles, Options, iG, io, i3, iz, i6, iw, i8, iu, i9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
local jj = game:GetService("Players")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
local jh = game:GetService("ReplicatedStorage")
LocalPlayer = jj.LocalPlayer
local jm = "Climb Waterslide and Slide"
il = "https://discord.gg/ehKVq7pf7v"
je = "https://rscripts.net/@Ouroboros"
local jk = jh:WaitForChild("ConfigData")
Trail = require(jk.Trail)
Raft = require(jk.Raft)
AnimShop = require(jk.AnimShop)
EggRoll = require(jk.EggRoll)
WorldHelper = require(jk.WorldHelper)
iG = fn407
io = fn326
i3 = fn291
iz = fn663
i6 = fn742
iw = fn431
i8 = fn371
local ji = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = il, Copyable = true }, "|", jm },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
Toggles = Library.Toggles
Options = Library.Options
local jn = {
    Info = ji:AddTab("Info", "info"),
    Main = ji:AddTab("Main", "gamepad-2"),
    Shop = ji:AddTab("Shop", "shopping-cart"),
    Player = ji:AddTab("Player", "person-standing"),
    Settings = ji:AddTab("Settings", "settings")
}
iu = fn844
i9 = fn878
local jl_2
for k, v in pairs(jn) do
    if v ~= jn.Info then
        fn358(v)
    end
end
jk, jj, iF, ji, iv, jq_1, iX, iS, jh, is, jd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jf = 4
repeat
    local jl_1 = (jf * 4 + 1) % 9 + 1
    if jl_1 <= 5 then
        if jl_1 <= 3 then
            if jl_1 <= 2 then
                if jl_1 <= 1 then
                    local jr_1 = {
                        "yatwe",
                        "skgtxmhc",
                        "vpav",
                        "genmga",
                        "kibgwtsoju",
                        "gdn",
                        "usk",
                        "fnnrpos",
                        "iwqdgoqivqj",
                        "gifczifw"
                    }
                    local oR = jf
                    local js_1 = jr_1[oR % 10 + 1]
                    if js_1:len() >= js_1:gsub("(.)", "%1%1", oR % 3 % 2 + 1):len() then
                        jk = fn42
                    else
                        jd = fn42
                    end
                    jf = (jf + 34) % 36
                else
                    local jr_2 = (vector.create((jf * 2 + 9) % 11 + 1, (jf * 2 + 12) % 13 + 1, (jf * 14 + 3) % 17 + 1))
                    local js_2 = (vector.create((jf * 1 + 6) % 11 + 1, (jf * 10 + 4) % 13 + 1, (jf * 6 + 5) % 17 + 1))
                    local jt_1 = (vector.create((jf * 2 + 6) % 11 + 1, (jf * 4 + 9) % 13 + 1, (jf * 4 + 12) % 17 + 1))
                    local ju_1 = (vector.create((jf * 5 + 6) % 5 + 1, (jf * 1 + 2) % 7 + 1, (jf * 4 + 6) % 9 + 1))
                    if vector.dot(vector.cross(jr_2, (vector.cross(js_2, jt_1))), ju_1) == vector.dot(js_2 * vector.dot(jr_2, jt_1) - jt_1 * vector.dot(jr_2, js_2), ju_1) + 5 then
                    else
                        jk = "#7fd47f"
                    end
                    jf = (jf + 25) % 36
                end
            else
                local jr_3 = { "kdcmkx", "gpcddq", "epvlnalfir", "grwmdiw", "qpufhdoxi", "hpyidenv", "mpne", "awpj" }
                if jr_3[(jf * 15 + 18) % 8 + 1] <= jr_3[(jf * 15 + 18) % 8 + 1] then
                    jj = "#6ec1ff"
                else
                    jq_1 = "#6ec1ff"
                end
                jf = (jf + 16) % 36
            end
        elseif jl_1 <= 4 then
            local jr_4 = {
                "bbxrnhrdyny",
                "tqoac",
                "hilzh",
                "pwoi",
                "zajcdp",
                "xhd",
                "bczfpuy",
                "nopvzzmxp",
                "mhymeyf",
                "benjkkrub",
                "oldhnjfhdgbr",
                "zgmrhy",
                "zhb",
                "iyqqx",
                "kdvmz"
            }
            if jr_4[(jf * 45 + 29) % 15 + 1] <= jr_4[(jf * 45 + 29) % 15 + 1] then
                iF = "#e8a34d"
            else
                iX = "#e8a34d"
            end
            jf = (jf + 7) % 36
        else
            local jr_5 = {
                "wuljicl",
                "vakghkbv",
                "jashz",
                "uxkgg",
                "lyrioe",
                "phopqjbqvuhm",
                "ioylyvx",
                "zjzamgs",
                "rhjfbxplfk",
                "bws",
                "nziinj",
                "mdyf",
                "hulqn",
                "tiybodititpt",
                "rnij",
                "tiskkwxnv"
            }
            if jr_5[(jf * 81 + 24) % 16 + 1] <= jr_5[(jf * 81 + 24) % 16 + 1] then
                ji = "#8b93a3"
            else
                jk = "#8b93a3"
            end
            jf = (jf + 25) % 36
        end
    elseif jl_1 <= 7 then
        if jl_1 <= 6 then
            local jr_6 = { "fvv", "djso", "wlcsfbwks", "bqvtqzh", "vyoybkytsv", "rbch", "tsdmmvvwe", "esmcjodysth" }
            if jr_6[(jf * 72 + 69) % 8 + 1] < jr_6[(jf * 72 + 69) % 8 + 1] then
                pcall(fn199)
                jn = jd.Info:AddLeftGroupbox("Account", "circle-user")
                jn:AddLabel(LocalPlayer("User", nil, iX), true)
                jn:AddLabel(LocalPlayer("Status", "Keyless", iX), true)
                jn:AddLabel(LocalPlayer("Executor", "Unknown", iX), true)
                jk = jd.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                jk:AddLabel(iv(is .. " [" .. tostring(game.PlaceId) .. "]", jq_1), true)
                jk:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), jq_1), true)
                iF = jk:AddLabel(LocalPlayer("Session time", "0s", jj), true)
            else
                iv = "Unknown"
                pcall(fn199)
                local AccountGroup = jn.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(jd("User", LocalPlayer.Name, jk), true)
                AccountGroup:AddLabel(jd("Status", "Keyless", jk), true)
                AccountGroup:AddLabel(jd("Executor", iv, jk), true)
                jq_1 = jn.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                jq_1:AddLabel(is(jm .. " [" .. tostring(game.PlaceId) .. "]", jj), true)
                jq_1:AddLabel(jd("Place ID", tostring(game.PlaceId), jj), true)
                iX = jq_1:AddLabel(jd("Session time", "0s", iF), true)
            end
            jf = (jf + 7) % 36
        else
            if (jf * 3 + 7) * 17 % 4 == ((jf * 3 + 7) * 17 + 4) % 4 then
                iS = tostring(game.JobId)
            end
            jf = (jf + 25) % 36
        end
    elseif jl_1 <= 8 then
        if jf * 131092273 + 5 + 2 <= jf * 131092273 + 5 + 2 + 5 then
            jh = #iS > 18
        else
            iS = #jh > 18
        end
        jf = (jf + 34) % 36
    else
        if jf * 35648567 + 5 + 2 >= jf * 35648567 + 5 + 2 + 3 then
            jq_1 = fn146
        else
            is = fn146
        end
        jf = (jf + 34) % 36
    end
until (jf * 17 + 6) % 36 == 29
if jh then
    jf = 1
    repeat
        local jg_2 = { "tcb", "hgyqlo", "bsffdvdsjh", "lcnj", "eshjvl", "okppaeuk", "gepyjuwajnol", "pcaa", "nckzz" }
        if jg_2[(jf * 54 + 53) % 9 + 1] < jg_2[(jf * 54 + 53) % 9 + 1] then
            iS = string.sub(jh, 1, 18) .. "..."
        else
            jh = string.sub(iS, 1, 18) .. "..."
        end
        jf = (jf + 5) % 8
    until (jf * 7 + 0) % 8 == 2
end
jf = jh or iS
jC_1, iq, ScriptsGroup, jl_2, ik, jb, i7, i4, iZ, iU, iO, jD_1, FarmGroup, jr_7, CurrentCamera, MenuGroup, iR, iM, connection, connection2, iP, im, ir, iJ, i1, iA, jc, iV, iT, ip, iC, i_, iH, iy = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not jl_2 and false and (not ScriptsGroup and not connection) and ((not FarmGroup or ScriptsGroup) and (not FarmGroup and connection)) or (not iq and not ScriptsGroup or not jl_2 and FarmGroup or (not iq or iq) and (iq and not connection))) and ((iT or ScriptsGroup) and (not ScriptsGroup and jl_2) and ((connection or not iq) and (ScriptsGroup or ScriptsGroup)) or (jl_2 and jl_2 and (FarmGroup or iT) or (not jl_2 or not iq or (not jl_2 or not FarmGroup)))) or not ((not jl_2 and false and (not ScriptsGroup and not connection) and ((not FarmGroup or ScriptsGroup) and (not FarmGroup and connection)) or (not iq and not ScriptsGroup or not jl_2 and FarmGroup or (not iq or iq) and (iq and not connection))) and ((iT or ScriptsGroup) and (not ScriptsGroup and jl_2) and ((connection or not iq) and (ScriptsGroup or ScriptsGroup)) or (jl_2 and jl_2 and (FarmGroup or iT) or (not jl_2 or not iq or (not jl_2 or not FarmGroup))))) then
    local jC_2 = jf
    jq_1:AddLabel(jd("Server", jC_2, ji), true)
    jq_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    iq = os.clock()
else
    jd:AddLabel(iq("Server", jC_1, jf), true)
    jd:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    ji = os.clock()
end
task.spawn(worker)
ScriptsGroup = jn.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(is("Included in this hub", ji), true)
ScriptsGroup:AddLabel(is(jm, jj), true)
local FeaturesGroup = jn.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(is("Auto Climb / Slide / Wins", jj), true)
FeaturesGroup:AddLabel(is("Auto Buy Best Gear", iF), true)
FeaturesGroup:AddLabel(is("Auto Equip Best", jk), true)
FeaturesGroup:AddLabel(is("Auto Spin & Buy Worlds", ji), true)
local SocialsGroup = jn.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = i9 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jn.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = i9 })
ik = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
jb = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
i7 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
i4 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
iZ = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
iU = "https://paypal.me/TheTruckerGOD"
iO = "https://venmo.com/u/miserablemusic"
if not jr_7 and MenuGroup and (MenuGroup and not iP) and (not FeaturesGroup or false or (not jr_7 or iU)) and not (not jr_7 and MenuGroup and (MenuGroup and not iP) and (not FeaturesGroup or false or (not jr_7 or iU))) then
else
    jD_1 = "#345d9d"
end
local jy = "#f7931a"
local jw = "#627eea"
local jv = "#26a17b"
local ju_2 = "#14f195"
jh = "#0070ba"
local DonationsGroup = jn.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(is("All donations are optional but appreciated.", iF), true)
DonationsGroup:AddLabel(is("If you donate you get a special role, just PING after you donate.", jk), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(is("LTC / Litecoin", jD_1), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(is("BTC / Bitcoin", jy), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(is("ETH / Ethereum", jw), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(is("USDT", jv), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(is("Solana", ju_2), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(is("PayPal", jh), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(is("Venmo", "#008cff"), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(is("Don't have any of the listed currencies but still wanna donate?", ji), true)
DonationsGroup:AddLabel(is("DM me and we'll work something out.", jj), true)
local FaqGroup = jn.Info:AddRightGroupbox("FAQ", "circle-help")
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
FarmGroup = jn.Main:AddLeftGroupbox("Farm", "gauge")
FarmGroup:AddToggle("AutoFarm", { Text = "Auto Climb + Slide + Win", Default = false })
iP = fn871
Toggles.AutoFarm:OnChanged(fn143)
task.spawn(autoFarmLoop)
local SpinGroup = jn.Main:AddRightGroupbox("Spin", "dices")
SpinGroup:AddToggle("AutoSpin", { Text = "Auto Spin Wheel", Default = false })
task.spawn(autoSpinLoop)
local AutoEquipBestGroup = jn.Main:AddLeftGroupbox("Auto Equip Best", "shirt")
AutoEquipBestGroup:AddToggle("AutoEquipPets", { Text = "Auto Equip Best Pets", Default = false })
AutoEquipBestGroup:AddToggle("AutoEquipTrail", { Text = "Auto Equip Best Trail", Default = false })
AutoEquipBestGroup:AddToggle("AutoEquipRaft", { Text = "Auto Equip Best Raft", Default = false })
AutoEquipBestGroup:AddToggle("AutoEquipDance", { Text = "Auto Equip Best Dance", Default = false })
im = fn228
ir = fn646
if (connection or false) and (connection and connection) and (connection or 134 or (not connection)) or not ((connection or false) and (connection and connection) and (connection or 134 or (not connection))) then
    iJ = fn201
else
    i_ = fn201
end
i1 = fn649
task.spawn(autoEquipPetsLoop)
local AutoBuyBestGroup = jn.Shop:AddLeftGroupbox("Auto Buy Best", "badge-dollar-sign")
AutoBuyBestGroup:AddToggle("AutoBuyTrail", { Text = "Auto Buy Best Trails", Default = false })
AutoBuyBestGroup:AddToggle("AutoBuyRaft", { Text = "Auto Buy Best Rafts", Default = false })
AutoBuyBestGroup:AddToggle("AutoBuyDance", { Text = "Auto Buy Best Dances", Default = false })
AutoBuyBestGroup:AddToggle("AutoBuyEggs", { Text = "Auto Buy Best Eggs", Default = false })
iA = fn332
task.spawn(autoBuyTrailLoop)
task.spawn(autoBuyEggsLoop)
local WorldsGroup = jn.Shop:AddRightGroupbox("Worlds", "globe")
WorldsGroup:AddToggle("AutoBuyWorlds", { Text = "Auto Buy Worlds", Default = false })
task.spawn(autoBuyWorldsLoop)
jn.Player = jn.Player
local MovementGroup = jn.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = jn.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
jc = fn500
iV = fn573
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn231)
Toggles.WalkSpeedEnabled:OnChanged(fn394)
iT = function(ef)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ef)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ef
        end
    end)
    if not ef then
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
Toggles.AntiGameplayPause:OnChanged(fn611)
task.spawn(antiGameplayPauseLoop)
MenuGroup = jn.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
iR = tick()
iM = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local mU = v
        pcall(function()
            mU:Disable()
        end)
    end
end)
ip = fn502
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/ClimbWaterslideAndSlide")
ThemeManager:ApplyToTab(jn.Settings)
local jB = SaveManager:BuildConfigSection(jn.Settings)
iC = fn620
i_ = fn190
iH = fn73
iy = function(fj)
    local nE
    nE = nil
    local nF = type(fj) ~= "table" or type(fj.idx) ~= "string"
    local nJ = if nF then 1 else 0
    local nH = 2021 * nJ + 61 * (1 - nJ)
    local nI = 861 * nJ + 2477 * (1 - nJ)
    if not ((nH * 4077 + nI * 2798 + nH * nI) % 16777213 == 12388776) then
        nF = type(fj.type) ~= "string"
    end
    if not nF then
        nF = SaveManager.Ignore[fj.idx]
    end
    if nF then
        return false
    end
    nE = iC(fj.type, fj.idx)
    if not nE then
        return false
    end
    local nF_1 = pcall(function()
        if fj.type == "Input" then
            if type(fj.text) ~= "string" then
                return
            end
            nE:SetValue(fj.text)
        elseif fj.type == "ColorPicker" then
            nE:SetValueRGB(Color3.fromHex(fj.value), fj.transparency)
        elseif fj.type == "KeyPicker" then
            nE:SetValue({ fj.key, fj.mode, fj.modifiers })
            if fj.mode == "Toggle" and fj.toggled ~= nil then
                nE.Toggled = fj.toggled
                nE:Update()
            end
        else
            nE:SetValue(fj.value)
        end
    end)
    return nF_1
end
jB:AddDivider()
jB:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
jB:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
jB:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
ThemeManager:LoadDefault()
Library:OnUnload(fn233)
