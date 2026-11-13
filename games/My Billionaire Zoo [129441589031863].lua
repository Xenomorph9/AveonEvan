local fns = {}
local sW_1, sW_3, GameInfoGroup, sW_14, sW_15, sW_20
local lY
local lF
local lm
local l3
local Data
local PlacePet
local ls
local HttpService
local k9
local lR
local DoRebirth
local UserInputService
local lf
local lX
local lE
local CurrentCamera
local PetConfig
local Options
local lK
local lr
local SaveManager
local k8
local BuyPet
local lx
local me
local PetTiers
local lW
local lD
local mk
local lk
local l1
local lJ
local BuyPerk
local l7
local k7
local lP
local lw
local VirtualUser
local ld
local lV
local CollectPetMoney
local Library
local lj
local l0
local lI
local lp
local l6
local k6
local lO
local lv
local mc
local lc
local lU
local mi
local connection
local l_
local PickupPet
local lo
local l5
local k5
local Label
local lu
local mb
local PetCages
local RollPet
local lA
local mh
local RebirthConfig
local lZ
local lG
local ln
local Toggles
local connection2
local lM
local MaxRebirth
local ma
local la
local lS
local lz
local mg
local lg
function fns.fn21(a1)
    local nV = PetConfig[a1]
    return nV and nV.Rarity or "Common"
end
function fns.fn33(er, es, et)
    return string.format("<b>%s</b> %s %s", er, lo("-", "#5a6070"), lo(es, et))
end
function fns.fn51()
    local op = lw(Options.RebirthUpgrades)
    if not lk(op) then
        return
    end
    local oq = l1("RebirthPoints")
    for k, v in lu do
        if op[v] then
            local ot = ls[v]
            if ot then
                local ou = l1(ot.Id .. "Level")
                local ov = (tonumber(ot.MaxLevel))
                local oG = if ov then 1 else 0
                local oE = 1032 * oG + 3129 * (1 - oG)
                local oF = 1506 * oG + 2840 * (1 - oG)
                if not ((oE * 2200 + oF * 2649 + oE * oF) % 16777213 == 7813986) then
                    ov = 0
                end
                if ou < ov then
                    local ov_1 = RebirthConfig.GetPerkCost(ot, ou)
                    local ou_1 = type(ov_1) == "number" and ov_1 <= oq
                    if ou_1 then
                        if k5(BuyPerk, ot.Id) then
                            oq -= ov_1
                        end
                    end
                end
            end
        end
    end
end
function fns.onExportConfigToClipboard()
    local sA_1
    local sz_1
    sz_1, sA_1 = pcall(HttpService.JSONEncode, HttpService, mk())
    if not sz_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local sz_2 = setclipboard or toclipboard
    local sz_3 = type(sz_2) ~= "function" or not pcall(sz_2, sA_1)
    if sz_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn71(ae, af)
    if setclipboard then
        setclipboard(ae)
    elseif toclipboard then
        toclipboard(ae)
    end
    Library:Notify(af)
end
function fns.fn72()
    if not Toggles.Fly.Value then
        local rx = lO()
        if rx then
            rx.PlatformStand = false
        end
    end
end
function fns.fn79(cC, cD, cE)
    local pa_1
    local o9_1
    for i, child in workspace:GetChildren() do
        local o8 = child:IsA("Model") and string.sub(child.Name, 1, 10) == "PlacedPet_"
        if o8 then
            local Floor = child:FindFirstChild("Floor")
            if Floor then
                o9_1, pa_1 = k7(Floor)
                local pb = math.abs(Floor.Position.X - cC.X) < (cD + o9_1) / 2 - 1 and math.abs(Floor.Position.Z - cC.Z) < (cE + pa_1) / 2 - 1 and math.abs(Floor.Position.Y - cC.Y) < 5
                if pb then
                    return true
                end
            end
        end
    end
    return false
end
function fns.onInputBegan()
    lZ = tick()
end
function fns.fn104()
    if _G.IsButtonRolling then
        return
    end
    local od = k5(RollPet)
    if type(od) ~= "table" then
        return
    end
    _G.LastRollResults = od
    if lj("AutoBuyRoll") then
        me(od)
    end
end
function fns.fn107()
    ld(Toggles.AntiGameplayPause.Value)
end
local function onPickUpAllPlacedPets()
    local qn = tostring(l7.UserId)
    local qo = "PlacedPet_" .. qn .. "_"
    local qn_1 = {}
    for i, child in workspace:GetChildren() do
        local qp = child:IsA("Model") and string.sub(child.Name, 1, #qo) == qo
        if qp then
            local attr = child:GetAttribute("PlacedIndex")
            if attr then
                qn_1[#qn_1 + 1] = attr
            end
        end
    end
    for k, v in qn_1 do
        if Library.Unloaded then
            return
        end
        k5(PickupPet, v)
        task.wait(0.1)
    end
end
local function fn133()
    local attr = l7:GetAttribute("PlotIndex")
    if not attr then
        return {}
    end
    local oP = k6:FindFirstChild("Plot" .. attr)
    if not oP then
        return {}
    end
    local Floors = oP:FindFirstChild("Floors")
    if not Floors then
        return {}
    end
    local oP_1 = lM()
    local oQ = {}
    for i, child in Floors:GetChildren() do
        if child:IsA("Folder") then
            local oO_2 = tonumber(child.Name:match("^Floor(%d+)$"))
            if oO_2 and oP_1[oO_2] then
                local Placement = child:FindFirstChild("Placement")
                local oR_1 = Placement and Placement:IsA("BasePart")
                if oR_1 then
                    oQ[#oQ + 1] = Placement
                end
            end
        end
    end
    return oQ
end
local function fn184(eo, ep)
    return string.format('<font color="%s">%s</font>', ep, eo)
end
local function onImportConfigFromClipboardTex()
    local sF_1
    local sD = Options.SaveManager_ImportSource.Value or ""
    local sD_1
    local sE = tostring(sD):match("^%s*(.-)%s*$")
    if sE == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    sD_1, sF_1 = pcall(HttpService.JSONDecode, HttpService, sE)
    local sE_1 = not sD_1 or type(sF_1) ~= "table" or type(sF_1.objects) ~= "table"
    if sE_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local sD_2 = 0
    for k, v in sF_1.objects do
        if lx(v) then
            sD_2 += 1
        end
    end
    if sD_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local sF_2 = sD_2 == 1 and ""
    local sP = if sF_2 then 1 else 0
    local sN = 3123 * sP + 3161 * (1 - sP)
    local sO = 1808 * sP + 275 * (1 - sP)
    if not ((sN * 127 + sO * 2477 + sN * sO) % 16777213 == 10521421) then
        sF_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(sD_2, sF_2), 6)
end
local function fn213(hg, hh)
    local Type = hh.Type
    if Type == "Toggle" then
        return { idx = hg, type = "Toggle", value = hh.Value == true }
    elseif Type == "Slider" then
        return { idx = hg, type = "Slider", value = tostring(hh.Value) }
    elseif Type == "Dropdown" then
        return { idx = hg, type = "Dropdown", multi = hh.Multi == true, value = hh.Value }
    elseif Type == "Input" then
        local r3 = hh.Value or ""
        return { idx = hg, type = "Input", text = tostring(r3) }
    elseif Type == "ColorPicker" then
        return { idx = hg, type = "ColorPicker", value = hh.Value:ToHex(), transparency = hh.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = hg,
            type = "KeyPicker",
            mode = hh.Mode,
            key = hh.Value,
            modifiers = hh.Modifiers,
            toggled = hh.Toggled
        }
    else
        return nil
    end
end
local function fn224()
    Library.ScreenGui.Parent = l7:WaitForChild("PlayerGui")
end
local function fn232(g8, g9)
    local r__1 = (g8 == "Toggle" and Toggles or Options)[g9]
    local rZ_2 = type(r__1) == "table" and r__1.Type == g8
    return rZ_2 and r__1 or nil
end
local function fn253()
    local qG = tostring(l7.UserId)
    local qH = "PlacedPet_" .. qG .. "_"
    for i, child in workspace:GetChildren() do
        local qG_1 = child:IsA("Model") and string.sub(child.Name, 1, #qH) == qH
        if qG_1 then
            local attr = child:GetAttribute("PlacedIndex")
            local qI = tonumber(child:GetAttribute("AccumulatedMoney")) or 0
            if attr and qI > 0 then
                k5(CollectPetMoney, attr)
            end
        end
    end
end
local function onRscripts()
    k8(lV, "Copied Rscripts profile to clipboard")
end
local function fn265(cP, cQ)
    for k, v in lr() do
        local Size = v.Size
        local CFrame = v.CFrame
        local pl = 5
        local pm = -Size.X / 2 + cP / 2
        local pn = Size.X / 2 - cP / 2
        local po = -Size.Z / 2 + cQ / 2
        local pp = Size.Z / 2 - cQ / 2
        local pz = pm
        local py = 5
        while true and pz <= pn or false and pz >= pn do
            local pA = pz
            local pE = po
            while true and pE <= pp or false and pE >= pp do
                local pF = pE
                local pm_1 = CFrame:PointToWorldSpace(Vector3.new(pA, Size.Y / 2, pF))
                if not mb(pm_1, cP, cQ) then
                    return pm_1
                end
                pE += pl
            end
            pz += py
        end
    end
    return nil
end
local function onCopyJoinScript_JobID()
    local qX = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lJ)
    if setclipboard then
        setclipboard(qX)
    elseif toclipboard then
        toclipboard(qX)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local q7_1 = lW()
        if q7_1 then
            for i, descendant in q7_1:GetDescendants() do
                local q7_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if q7_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn322()
    k8(l_, "Copied Discord invite to clipboard")
end
local function fn335()
    local nt = lW()
    local nu = nt and nt:FindFirstChild("HumanoidRootPart")
    return nu
end
local function onCopyUSDTAddress()
    k8(lR, "Copied USDT address")
end
local function onInputChanged(gP)
    local UserInputType = gP.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lZ = tick()
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(1)
        if lj("AutoCollectMoney") then
            pcall(mi)
        end
    end
end
local function fn381(az)
    local nw = Toggles[az]
    return nw ~= nil and nw.Value == true
end
local function fn382()
    local r9 = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local sa = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if sa then
                local sa_1 = lc(k, v)
                if sa_1 then
                    r9[#r9 + 1] = sa_1
                end
            end
        end
    end
    table.sort(r9, function(ht, hu)
        if ht.type ~= hu.type then
            return ht.type < hu.type
        end
        return ht.idx < hu.idx
    end)
    return { objects = r9 }
end
local function onCopyLitecoinAddress()
    k8(l3, "Copied Litecoin address")
end
local function onCopyEthereumAddress()
    k8(lX, "Copied Ethereum address")
end
local function fn411()
    if not Toggles.WalkSpeedEnabled.Value then
        local rz = lO()
        if rz then
            rz.WalkSpeed = 16
        end
    end
end
local function fn433(al)
    local DiscordGroup = al:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mh })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mh })
end
local function onUnload()
    Library:Unload()
end
local function fn450()
    local qT_1
    local qS_1
    if identifyexecutor then
        qT_1, qS_1 = identifyexecutor()
        local qU = qT_1 ~= ""
        local qV = type(qT_1) == "string" and qU
        if qV then
            local qU_1 = type(qS_1) == "string" and qS_1 ~= "" and qT_1 .. " " .. qS_1
            ma = qU_1 or qT_1
        end
    end
end
local function fn502()
    local qb_1
    local qg = if not l6() then 1 else 0
    if qg == 1 then
        return
    end
    local p8_1 = (Options.PlaceMode and Options.PlaceMode.Value or lI) == lD
    local p7_2 = lw(Options.PlaceRarities)
    local p9 = p8_1 and not lk(p7_2)
    if p9 then
        return
    end
    local p9_1 = l5()
    for k, v in lY() do
        if not l6() then
            return
        end
        local qa = not p8_1 or p7_2[k9(v.Name)]
        local qa_1
        if qa then
            qb_1, qa_1 = lE(v.Name)
            local qc = lp(qb_1, qa_1)
            if not qc then
                return
            end
            local qa_2 = PetTiers.Normalize(v:GetAttribute("Tier")) or "Normal"
            k5(PlacePet, v.Name, qc.X, qc.Y, qc.Z, p9_1, qa_2)
            task.wait(0.25)
        end
    end
end
local function fn511(aU)
    local nL = aU and aU.Value
    if typeof(nL) ~= "table" then
        return {}
    end
    return nL
end
local function fn516(cm)
    local o4 = PetConfig[cm]
    local o5_1 = o4 and o4.CageSize or "Large"
    local o4_2 = PetCages:FindFirstChild(o5_1)
    local o5_2 = o4_2 and o4_2:FindFirstChild("Floor")
    if o5_2 then
        return o5_2.Size.X, o5_2.Size.Z
    end
    return 10, 10
end
local function worker()
    local q__1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qZ = math.floor(os.clock() - lm)
        if qZ < 60 then
            q__1 = qZ .. "s"
        elseif qZ < 3600 then
            q__1 = string.format("%dm %ds", qZ // 60, qZ % 60)
        else
            q__1 = string.format("%dh %dm", qZ // 3600, qZ % 3600 // 60)
        end
        Label:SetText(lf("Session time", q__1, mg))
    end
end
local function fn545(a6)
    if type(a6) ~= "table" then
        return
    end
    local nY = lw(Options.BuyRarities)
    if not lk(nY) then
        return
    end
    local nZ = lG()
    local n_ = lj("AutoSkipRoll")
    for k, v in a6 do
        if Library.Unloaded then
            return
        end
        if type(v) == "string" then
            local n0 = PetConfig[v]
            local n1 = n0
            if n1 then
                n1 = nY[n0.Rarity or "Common"]
            end
            if n1 then
                local n1_1 = tonumber(n0.Price) or 0
                local n0_1 = n_
                if n0_1 then
                    n0_1 = n1_1 > nZ
                end
                if not n0_1 then
                    if k5(BuyPet, k) then
                        nZ -= n1_1
                    end
                    task.wait(0.2)
                end
            end
        end
    end
end
local function onCopyPayPalLink()
    k8(lK, "Copied PayPal link")
end
local function fn556(aN)
    local nF = Data:FindFirstChild(aN)
    local nG = nF and tonumber(nF.Value)
    local nF_1 = nG
    local nK = if nF_1 then 1 else 0
    local nI = 3294 * nK + 2262 * (1 - nK)
    local nJ = 2588 * nK + 3675 * (1 - nK)
    if not ((nI * 1529 + nJ * 1243 + nI * nJ) % 16777213 == 1069) then
        nF_1 = 0
    end
    return nF_1
end
local function fn577(aY)
    for k, v in aY do
        if v then
            return true
        end
    end
    return false
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local ri_1 = lO()
        if ri_1 then
            ri_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn617()
    local nn = lW()
    local no = nn and nn:FindFirstChildOfClass("Humanoid")
    return no
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local rV = tick() - lZ
            local rW = tick() - lU
            if rV >= 300 and rW >= 60 then
                pcall(lz)
            else
                if rV < 300 and rW >= 300 then
                    pcall(lz)
                end
            end
        end
    end
end
local function fn713(cw)
    local RightVector = cw.CFrame.RightVector
    local cy = -cw.CFrame.LookVector
    local cz = math.abs(cw.Size.X * RightVector.X) + math.abs(cw.Size.Z * cy.X)
    local cA = math.abs(cw.Size.X * RightVector.Z) + math.abs(cw.Size.Z * cy.Z)
    return math.max(5, math.round(cz / 5) * 5), math.max(5, math.round(cA / 5) * 5)
end
local function worker4()
    while not Library.Unloaded do
        task.wait(1)
        if lj("AutoRebirth") then
            pcall(mc)
        end
        if lj("AutoBuyRebirthUpgrades") then
            pcall(ln)
        end
    end
end
local function fn753()
    return l1("Cash")
end
local function onCopySolanaAddress()
    k8(lP, "Copied Solana address")
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1.5)
        if lj("AutoPlacePets") then
            pcall(lS)
        end
    end
end
local function fn796()
    local attr = l7:GetAttribute("PlotIndex")
    local o_ = attr and k6:FindFirstChild("Plot" .. attr)
    local oZ_1 = o_
    if o_ then
        o_ = oZ_1:GetAttribute("Rotated")
    end
    if o_ then
        return 90
    end
    return -90
end
local function onRenderStepped(f6)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rn_1 = lO()
        if rn_1 then
            rn_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rn_3 = lv()
        local ro = lO()
        if rn_3 and ro then
            ro.PlatformStand = true
            local ro_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                ro_1 = ro_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                ro_1 = ro_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                ro_1 = ro_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                ro_1 = ro_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                ro_1 = ro_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                ro_1 = ro_1 - Vector3.new(0, 1, 0)
            end
            rn_3.Velocity = Vector3.zero
            if ro_1.Magnitude > 0 then
                rn_3.CFrame = rn_3.CFrame + ro_1.Unit * Options.FlySpeed.Value * f6
            end
        end
    end
end
local function fn830()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lU = tick()
end
local function rollDelayLoop()
    while not Library.Unloaded do
        local q1_1 = Options.RollDelay and Options.RollDelay.Value or 0.5
        if lj("AutoRoll") then
            pcall(la)
        elseif lj("AutoBuyRoll") then
            pcall(me, _G.LastRollResults)
        end
        task.wait(q1_1)
    end
end
local function fn834()
    connection:Disconnect()
    connection2:Disconnect()
    ld(false)
    print("Unloaded!")
end
local function fn835()
    local of = Options.RebirthAmount and Options.RebirthAmount.Value
    if of == lA then
        k5(MaxRebirth)
        return
    end
    local of_1 = lg[of]
    if not of_1 then
        return
    end
    local og_1 = RebirthConfig.REBIRTH_OPTIONS[of_1]
    if not og_1 then
        return
    end
    local oh = l1("RebirthButtonsLevel")
    if oh < (og_1.UnlockLevel or 0) then
        return
    end
    k5(DoRebirth, of_1)
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            ld(true)
        end
    end
end
local function onCopyVenmoLink()
    k8(lF, "Copied Venmo link")
end
local function fn899()
    local attr = l7:GetAttribute("FloorsOwned")
    if not attr then
        return { [1] = true }
    end
    local oI = {}
    for k in tostring(attr):gmatch("%d+") do
        oI[tonumber(k)] = true
    end
    return oI
end
local function fn928()
    local p5 = lj("AutoPlacePets") and not Library.Unloaded
    return p5
end
local function onCopyBitcoinAddress()
    k8(l0, "Copied Bitcoin address")
end
local function fn979()
    return l7.Character
end
Data = nil
connection2 = nil
k5 = nil
k6 = nil
k7 = nil
k8 = nil
k9 = nil
la = nil
PetCages = nil
lc = nil
ld = nil
PetTiers = nil
lf = nil
lg = nil
RebirthConfig = nil
connection = nil
lj = nil
lk = nil
PetConfig = nil
lm = nil
ln = nil
lo = nil
lp = nil
BuyPerk = nil
lr = nil
ls = nil
MaxRebirth = nil
lu = nil
lv = nil
lw = nil
lx = nil
DoRebirth = nil
lz = nil
lA = nil
CollectPetMoney = nil
lD = nil
lE = nil
lF = nil
lG = nil
PickupPet = nil
lI = nil
lJ = nil
lK = nil
PlacePet = nil
lM = nil
Label = nil
lO = nil
lP = nil
BuyPet = nil
local lB
lR = nil
lS = nil
RollPet = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
Options = nil
l3 = nil
Toggles = nil
l5 = nil
l6 = nil
l7 = nil
SaveManager = nil
HttpService = nil
ma = nil
mb = nil
mc = nil
VirtualUser = nil
me = nil
UserInputService = nil
mg = nil
mh = nil
mi = nil
Library = nil
mk = nil
CurrentCamera = nil
local mD
local mE, mG, mN, BuyingGroup, RollingGroup, FlyGroup
sW_3, UserInputService, VirtualUser, HttpService, l7 = nil, nil, nil, nil, nil
if ((VirtualUser or not VirtualUser) and (not UserInputService or VirtualUser) or (UserInputService and UserInputService or (not l7 or VirtualUser)) or (not HttpService and VirtualUser or (not l7 or l7)) and (not UserInputService or not HttpService or HttpService and not UserInputService)) and ((not HttpService and sW_3 or UserInputService and sW_3) and (sW_3 or not UserInputService or (sW_3 or UserInputService)) or (UserInputService and UserInputService or (UserInputService or not l7)) and (not sW_3 or sW_3 or not VirtualUser and not UserInputService)) or not (((VirtualUser or not VirtualUser) and (not UserInputService or VirtualUser) or (UserInputService and UserInputService or (not l7 or VirtualUser)) or (not HttpService and VirtualUser or (not l7 or l7)) and (not UserInputService or not HttpService or HttpService and not UserInputService)) and ((not HttpService and sW_3 or UserInputService and sW_3) and (sW_3 or not UserInputService or (sW_3 or UserInputService)) or (UserInputService and UserInputService or (UserInputService or not l7)) and (not sW_3 or sW_3 or not VirtualUser and not UserInputService))) then
    sW_3 = game:GetService("Players")
else
    game:GetService("Players")
end
local sW_19 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
l7 = sW_3.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return l7:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
RollPet, BuyPet, PlacePet, PickupPet, CollectPetMoney, DoRebirth, MaxRebirth, BuyPerk, sW_14, PetConfig, RebirthConfig, PetTiers, PetCages, k6, Data, Library, SaveManager, Toggles, Options, l_, lV, sW_1, lI, lD, lA, lu, ls = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sW_10 = "My Billionaire Zoo"
local sW_21 = sW_19:WaitForChild("Remotes")
RollPet = sW_21:WaitForChild("RollPet")
BuyPet = sW_21:WaitForChild("BuyPet")
PlacePet = sW_21:WaitForChild("PlacePet")
PickupPet = sW_21:WaitForChild("PickupPet")
CollectPetMoney = sW_21:WaitForChild("CollectPetMoney")
DoRebirth = sW_21:WaitForChild("DoRebirth")
MaxRebirth = sW_21:WaitForChild("MaxRebirth")
if ((not BuyPerk and not Data or PickupPet and not sW_1) and ((not Data or 67) and 67) or not BuyPerk and BuyPerk and (sW_1 or PetCages) and false) and (PickupPet or not BuyPerk or (PetCages or PetCages) or (not Data and not PetCages or 67) or (PetCages or not BuyPerk or 67 or (PetCages and 67 or 67))) and not (((not BuyPerk and not Data or PickupPet and not sW_1) and ((not Data or 67) and 67) or not BuyPerk and BuyPerk and (sW_1 or PetCages) and false) and (PickupPet or not BuyPerk or (PetCages or PetCages) or (not Data and not PetCages or 67) or (PetCages or not BuyPerk or 67 or (PetCages and 67 or 67)))) then
    BuyPerk:WaitForChild("BuyPerk")
else
    BuyPerk = sW_21:WaitForChild("BuyPerk")
end
if false or not BuyPerk and not sW_1 or (BuyPerk or not sW_1) and "My Billionaire Zoo" or not (false or not BuyPerk and not sW_1 or (BuyPerk or not sW_1) and "My Billionaire Zoo") then
    sW_14 = sW_19:WaitForChild("Configs")
else
    sW_19 = sW_14:WaitForChild("Configs")
end
PetConfig = require(sW_14:WaitForChild("PetConfig"))
RebirthConfig = require(sW_14:WaitForChild("RebirthConfig"))
PetTiers = require(sW_14:WaitForChild("PetTiers"))
sW_3 = sW_19:WaitForChild("Assets")
PetCages = sW_3:WaitForChild("PetCages")
if 28 and (not BuyPet and false) and (BuyPet and false or 28) and (false or (false or BuyPet) or (not BuyPet and false or (BuyPet or not sW_14))) or (not sW_14 and 28 and false or false) and (not sW_14 and not sW_14 and (not sW_14 or BuyPet) and (not sW_14 or false)) or not (28 and (not BuyPet and false) and (BuyPet and false or 28) and (false or (false or BuyPet) or (not BuyPet and false or (BuyPet or not sW_14))) or (not sW_14 and 28 and false or false) and (not sW_14 and not sW_14 and (not sW_14 or BuyPet) and (not sW_14 or false))) then
    k6 = workspace:WaitForChild("Map"):WaitForChild("Plots")
    Data = l7:WaitForChild("Data")
else
    l7 = workspace:WaitForChild("Map"):WaitForChild("Plots")
    k6 = Data:WaitForChild("Data")
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn224)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
l_ = "https://discord.gg/ehKVq7pf7v"
lV = "https://rscripts.net/@Ouroboros"
sW_1 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Divine", "Secret", "Exclusive" }
local sW_16 = { "Legendary", "Mythical", "Divine", "Secret", "Exclusive" }
lI = "Best"
lD = "Selected Rarities"
lA = "Max"
lu = {}
ls = {}
for k, v in RebirthConfig.PERKS do
    lu[#lu + 1] = v.Name
    ls[v.Name] = v
end
lg = nil
local sW_11 = { lA }
lg = {}
for k, v in RebirthConfig.REBIRTH_OPTIONS do
    sW_11[#sW_11 + 1] = v.Label
    lg[v.Label] = k
end
k8, mh, lW, lO, lv, lj, k5, l1, lG, lw, lk, k9, me, la, mc, ln, lM, lr, l5, lE, k7, mb, lp, lY, l6, lS, mi = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
k8 = fns.fn71
mh = fn322
sW_14 = fn433
lW = fn979
lO = fn617
lv = fn335
lj = fn381
k5 = function(aE, ...)
    local nz
    nz = nil
    local nD_1
    local nC_1
    local nB_1
    local nA_1
    nz = { ... }
    nA_1, nB_1, nC_1, nD_1 = pcall(function()
        return aE:InvokeServer(table.unpack(nz))
    end)
    if not nA_1 then
        return nil
    end
    return nB_1, nC_1, nD_1
end
l1 = fn556
lG = fn753
lw = fn511
lk = fn577
k9 = fns.fn21
me = fn545
la = fns.fn104
mc = fn835
ln = fns.fn51
lM = fn899
lr = fn133
l5 = fn796
lE = fn516
k7 = fn713
mb = fns.fn79
lp = fn265
lY = function()
    local pQ
    pQ = {}
    local function pR(c7)
        local pH = c7:IsA("Tool") and PetConfig[c7.Name]
        if pH then
            pQ[#pQ + 1] = c7
        end
    end
    for i, child in l7.Backpack:GetChildren() do
        pR(child)
    end
    local pS = lW()
    if pS then
        for i, child in pS:GetChildren() do
            pR(child)
        end
    end
    table.sort(pQ, function(dj, dk)
        local pJ = PetConfig[dj.Name]
        local pK = PetConfig[dk.Name]
        return (pJ and pJ.MoneyPerSecond or 0) > (pK and pK.MoneyPerSecond or 0)
    end)
    return pQ
end
l6 = fn928
lS = fn502
if (not k8 or lY) and (lE and false) or not k8 and k8 and (k8 or lO) or not ((not k8 or lY) and (lE and false) or not k8 and k8 and (k8 or lO)) then
    mi = fn253
else
    lO = fn253
end
sW_19 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = l_, Copyable = true }, "|", sW_10 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
sW_21 = {
    Info = sW_19:AddTab("Info", "info"),
    Main = sW_19:AddTab("Main", "paw-print"),
    Player = sW_19:AddTab("Player", "person-standing"),
    Settings = sW_19:AddTab("Settings", "settings")
}
sW_21.Roll = sW_21.Main:AddSubTab("Roll", "dices")
sW_21.Zoo = sW_21.Main:AddSubTab("Zoo", "paw-print")
sW_21.Rebirth = sW_21.Main:AddSubTab("Rebirth", "rotate-cw")
for k, v in { sW_21.Roll, sW_21.Zoo, sW_21.Rebirth, sW_21.Player, sW_21.Settings } do
    sW_14(v)
end
sW_15, mg, sW_20, ma, GameInfoGroup, Label, lJ, lo, lf = nil, nil, nil, nil, nil, nil, nil, nil, nil
lo = fn184
if (not sW_15 or sW_15) and (lf or lJ) and (not lJ and not lJ or (not sW_15 or lf)) or (sW_15 or sW_15 or (not sW_15 or lJ)) and (lJ and not lf or sW_15 and not lf) or not ((not sW_15 or sW_15) and (lf or lJ) and (not lJ and not lJ or (not sW_15 or lf)) or (sW_15 or sW_15 or (not sW_15 or lJ)) and (lJ and not lf or sW_15 and not lf)) then
    lf = fns.fn33
else
    lo = fns.fn33
end
sW_15 = "#7fd47f"
local sW_7 = "#6ec1ff"
if (lJ and false and (lo and lo) or (not lo and false or (lo or lJ))) and ((not lJ or lJ) and (lJ and lo) and (false or not lo or false and lo)) and (((lo or lJ) and (lo and sW_7) or (lJ or not lo or not lo and not lo)) and (sW_7 or lJ or "#6ec1ff" or (lJ or false or (not lJ or lJ)))) or not ((lJ and false and (lo and lo) or (not lo and false or (lo or lJ))) and ((not lJ or lJ) and (lJ and lo) and (false or not lo or false and lo)) and (((lo or lJ) and (lo and sW_7) or (lJ or not lo or not lo and not lo)) and (sW_7 or lJ or "#6ec1ff" or (lJ or false or (not lJ or lJ))))) then
    mg = "#e8a34d"
else
    sW_20 = "#e8a34d"
end
if ((lJ or false) and (lJ and not ma) or (not ma or not lJ or (lJ or not lJ)) and 29 or ((not lJ or not ma) and (not lJ or lJ) or (lJ and not ma or false)) and ((ma or lJ) and (not ma or ma))) and not ((lJ or false) and (lJ and not ma) or (not ma or not lJ or (lJ or not lJ)) and 29 or ((not lJ or not ma) and (not lJ or lJ) or (lJ and not ma or false)) and ((ma or lJ) and (not ma or ma))) then
    sW_15 = "#8b93a3"
    lo = "Unknown"
    pcall(fn450)
    sW_10 = ma.Info:AddLeftGroupbox("Account", "circle-user")
    sW_10:AddLabel(sW_21("User", sW_20.Name, l7), true)
    sW_10:AddLabel(sW_21("Status", "Keyless", l7), true)
    sW_10:AddLabel(sW_21("Executor", lo, l7), true)
    sW_7 = ma.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    sW_7:AddLabel(GameInfoGroup(mg .. " [" .. tostring(game.PlaceId) .. "]", lf), true)
    sW_7:AddLabel(sW_21("Place ID", tostring(game.PlaceId), lf), true)
    sW_7:AddLabel(sW_21("Session time", "0s", Label), true)
else
    sW_20 = "#8b93a3"
    ma = "Unknown"
    pcall(fn450)
    sW_3 = sW_21.Info:AddLeftGroupbox("Account", "circle-user")
    sW_3:AddLabel(lf("User", l7.Name, sW_15), true)
    sW_3:AddLabel(lf("Status", "Keyless", sW_15), true)
    sW_3:AddLabel(lf("Executor", ma, sW_15), true)
    GameInfoGroup = sW_21.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(lo(sW_10 .. " [" .. tostring(game.PlaceId) .. "]", sW_7), true)
    GameInfoGroup:AddLabel(lf("Place ID", tostring(game.PlaceId), sW_7), true)
    Label = GameInfoGroup:AddLabel(lf("Session time", "0s", mg), true)
end
lJ = tostring(game.JobId)
local sW_4 = #lJ > 18
if sW_4 then
    sW_3 = 2
    repeat
        if (sW_3 * 2 + 7) * 4 % 3 == ((sW_3 * 2 + 7) * 4 + 3) % 3 then
            sW_4 = string.sub(lJ, 1, 18) .. "..."
        else
            lJ = string.sub(sW_4, 1, 18) .. "..."
        end
        sW_3 = (sW_3 + 6) % 8
    until (sW_3 * 1 + 2) % 8 == 2
end
sW_3 = sW_4 or lJ
lm, l3, l0, lX, lR, lP, lK, lF, mG, mE, mD, RollingGroup, BuyingGroup, CurrentCamera, lZ, lU, connection, connection2, mN, ld, lz, lB, lc, mk, lx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mK = sW_3
GameInfoGroup:AddLabel(lf("Server", mK, sW_20), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lm = os.clock()
task.spawn(worker)
local ScriptsGroup = sW_21.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(lo("Included in this hub", sW_20), true)
ScriptsGroup:AddLabel(lo(sW_10, sW_7), true)
local FeaturesGroup = sW_21.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(lo("Auto Roll", sW_7), true)
FeaturesGroup:AddLabel(lo("Auto Rebirth", mg), true)
FeaturesGroup:AddLabel(lo("Auto Place", sW_15), true)
FeaturesGroup:AddLabel(lo("Auto Collect", sW_20), true)
local SocialsGroup = sW_21.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = mh })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = sW_21.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mh })
l3 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
l0 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
lX = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
if ((not RollingGroup or false) and (false or CurrentCamera) and false and (RollingGroup or not BuyingGroup or (BuyingGroup or not CurrentCamera) or (false or not CurrentCamera and false)) or ((not BuyingGroup or not CurrentCamera) and (mD and not CurrentCamera) and (CurrentCamera and false or (not CurrentCamera or RollingGroup)) or (RollingGroup or false) and (RollingGroup or false) and ((not RollingGroup or RollingGroup) and (mD or not CurrentCamera)))) and not ((not RollingGroup or false) and (false or CurrentCamera) and false and (RollingGroup or not BuyingGroup or (BuyingGroup or not CurrentCamera) or (false or not CurrentCamera and false)) or ((not BuyingGroup or not CurrentCamera) and (mD and not CurrentCamera) and (CurrentCamera and false or (not CurrentCamera or RollingGroup)) or (RollingGroup or false) and (RollingGroup or false) and ((not RollingGroup or RollingGroup) and (mD or not CurrentCamera)))) then
    lF = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    lP = "https://paypal.me/TheTruckerGOD"
    lK = "https://venmo.com/u/miserablemusic"
else
    lP = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    lK = "https://paypal.me/TheTruckerGOD"
    lF = "https://venmo.com/u/miserablemusic"
end
local mL = "#345d9d"
local mI = "#f7931a"
if not OuroborosHubGroup and not lc and (l3 or not OuroborosHubGroup) and ((OuroborosHubGroup or l3) and (not OuroborosHubGroup or RollingGroup)) or (l3 or not lP) and (lc and not lP) and (not lc or lP or false and OuroborosHubGroup) or (not RollingGroup and mE and "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or (lP and false or (not OuroborosHubGroup or RollingGroup)) or ((lc or not lc) and (RollingGroup or l3) or (not OuroborosHubGroup or RollingGroup) and (not OuroborosHubGroup or false))) or not (not OuroborosHubGroup and not lc and (l3 or not OuroborosHubGroup) and ((OuroborosHubGroup or l3) and (not OuroborosHubGroup or RollingGroup)) or (l3 or not lP) and (lc and not lP) and (not lc or lP or false and OuroborosHubGroup) or (not RollingGroup and mE and "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or (lP and false or (not OuroborosHubGroup or RollingGroup)) or ((lc or not lc) and (RollingGroup or l3) or (not OuroborosHubGroup or RollingGroup) and (not OuroborosHubGroup or false)))) then
    mG = "#627eea"
else
    lF = "#627eea"
end
mE = "#26a17b"
mD = "#14f195"
local sW_22 = "#0070ba"
sW_14 = "#008cff"
sW_19 = sW_21.Info:AddRightGroupbox("Donations", "heart")
sW_19:AddLabel(lo("All donations are optional but appreciated.", mg), true)
sW_19:AddLabel(lo("If you donate you get a special role, just PING after you donate.", sW_15), true)
sW_19:AddDivider()
sW_19:AddLabel(lo("LTC / Litecoin", mL), true)
sW_19:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
sW_19:AddLabel(lo("BTC / Bitcoin", mI), true)
sW_19:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
sW_19:AddLabel(lo("ETH / Ethereum", mG), true)
sW_19:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
sW_19:AddLabel(lo("USDT", mE), true)
sW_19:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
sW_19:AddLabel(lo("Solana", mD), true)
sW_19:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
sW_19:AddLabel(lo("PayPal", sW_22), true)
sW_19:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
sW_19:AddLabel(lo("Venmo", sW_14), true)
sW_19:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
sW_19:AddDivider()
sW_19:AddLabel(lo("Don't have any of the listed currencies but still wanna donate?", sW_20), true)
sW_19:AddLabel(lo("DM me and we'll work something out.", sW_7), true)
local FaqGroup = sW_21.Info:AddRightGroupbox("FAQ", "circle-help")
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
RollingGroup = sW_21.Roll:AddLeftGroupbox("Rolling", "dices")
RollingGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
RollingGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.5, Min = 0.2, Max = 5, Rounding = 1 })
BuyingGroup = sW_21.Roll:AddRightGroupbox("Buying", "shopping-cart")
BuyingGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
BuyingGroup:AddDropdown("BuyRarities", {
    Text = "Rarities",
    Values = sW_1,
    Default = sW_16,
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
BuyingGroup:AddToggle("AutoSkipRoll", { Text = "Auto Skip if Can't Afford", Default = true })
local ZooGroup = sW_21.Zoo:AddLeftGroupbox("Zoo", "paw-print")
ZooGroup:AddToggle("AutoPlacePets", { Text = "Auto Place Pets", Default = false })
ZooGroup:AddDropdown("PlaceMode", { Text = "Place Mode", Values = { lI, lD }, Default = lI })
ZooGroup:AddDropdown("PlaceRarities", {
    Text = "Rarities",
    Values = sW_1,
    Default = sW_1,
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
ZooGroup:AddButton({ Text = "Pick Up All Placed Pets", Func = onPickUpAllPlacedPets })
local CollectingGroup = sW_21.Zoo:AddRightGroupbox("Collecting", "coins")
do
    CollectingGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
    local RebirthGroup = sW_21.Rebirth:AddLeftGroupbox("Rebirth", "rotate-cw")
    RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    RebirthGroup:AddDropdown("RebirthAmount", { Text = "Rebirth Amount", Values = sW_11, Default = "+1 Rebirths" })
    local UpgradesGroup = sW_21.Rebirth:AddRightGroupbox("Upgrades", "sparkles")
    UpgradesGroup:AddToggle("AutoBuyRebirthUpgrades", { Text = "Auto Buy Rebirth Upgrades", Default = false })
    UpgradesGroup:AddDropdown("RebirthUpgrades", { Text = "Upgrades", Values = lu, Default = lu, Multi = true, SelectAllButtons = true })
    task.spawn(rollDelayLoop)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    local MovementGroup = sW_21.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    FlyGroup = sW_21.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    RunService.Stepped:Connect(onStepped)
    UserInputService.JumpRequest:Connect(onJumpRequest)
    CurrentCamera = workspace.CurrentCamera
end
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn72)
Toggles.WalkSpeedEnabled:OnChanged(fn411)
ld = function(gr)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not gr)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not gr
        end
    end)
    if not gr then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(l7, "GameplayPaused", false)
        else
            l7.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fns.fn107)
task.spawn(antiGameplayPauseLoop)
local mT = sW_21.Settings:AddLeftGroupbox("Menu", "menu")
if (false and FlyGroup or mN and not mN or (mN or lm) and (not lm and not FlyGroup)) and (ScriptsGroup or lR or (FlyGroup or not mN) or (ScriptsGroup or false or not FlyGroup and not lm)) or not ((false and FlyGroup or mN and not mN or (mN or lm) and (not lm and not FlyGroup)) and (ScriptsGroup or lR or (FlyGroup or not mN) or (ScriptsGroup or false or not FlyGroup and not lm))) then
    mT:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    lZ = tick()
    lU = tick()
    pcall(function()
        for k, v in getconnections(l7.Idled) do
            local rM = v
            pcall(function()
                rM:Disable()
            end)
        end
    end)
    lz = fn830
else
    lZ:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Text = "Menu keybind", Default = "RightShift" })
    Options.ToggleKeybind = Library.MenuKeybind
    lU = tick()
    lz = tick()
    pcall(function()
        for k, v in getconnections(l7.Idled) do
            local rM = v
            pcall(function()
                rM:Disable()
            end)
        end
    end)
    mT = fn830
end
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
mT:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
mT:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn834)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(sW_21.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MyBillionaireZoo")
mN = SaveManager:BuildConfigSection(sW_21.Settings)
lB = fn232
lc = fn213
mk = fn382
lx = function(hw)
    local st
    st = nil
    local su = type(hw) ~= "table" or type(hw.idx) ~= "string" or type(hw.type) ~= "string"
    local sy = if su then 1 else 0
    local sw = 370 * sy + 2057 * (1 - sy)
    local sx = 3010 * sy + 214 * (1 - sy)
    if not ((sw * 350 + sx * 1711 + sw * sx) % 16777213 == 6393310) then
        su = SaveManager.Ignore[hw.idx]
    end
    if su then
        return false
    end
    st = lB(hw.type, hw.idx)
    if not st then
        return false
    end
    local su_1 = pcall(function()
        if hw.type == "Input" then
            if type(hw.text) ~= "string" then
                return
            end
            st:SetValue(hw.text)
        elseif hw.type == "ColorPicker" then
            st:SetValueRGB(Color3.fromHex(hw.value), hw.transparency)
        elseif hw.type == "KeyPicker" then
            st:SetValue({ hw.key, hw.mode, hw.modifiers })
            if hw.mode == "Toggle" and hw.toggled ~= nil then
                st.Toggled = hw.toggled
                st:Update()
            end
        else
            st:SetValue(hw.value)
        end
    end)
    return su_1
end
mN:AddDivider()
mN:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
mN:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
mN:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
