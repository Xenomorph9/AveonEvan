local mN
local mu
local LocalPlayer
local SaveManager
local nA
local Workspace
local mh
local mZ
local UPGRADE_PRICES
local nn
local mn
local Label
local Toggles
local VirtualUser
local Label3
local na
local nz
local mz
local ng
local mg
local nF
local mF
local nm
local m3
local mL
local ns
local ms
local mR
local my
local nf
local mf
local mX
local nE
local mE
local CoreGui
local bodyVelocity
local m2
local mK
local nr
local mr
local m8
local mQ
local nx
local mx
local TeleportService
local me
local mW
local nD
local mD
local nk
local mk
local m1
local mJ
local nq
local mq
local m7
local nw
local mw
local nd
local Players
local nC
local mC
local Label4
local mj
local m0
local Label2
local HttpService
local mp
local m6
local mO
local nv
local Library
local nc
local mU
local nB
local ni
local mi
local m_
local Options
local no
local mo
local m5
local function fn14(iv, iw)
    local Type = iw.Type
    if Type == "Toggle" then
        return { idx = iv, type = "Toggle", value = iw.Value == true }
    elseif Type == "Slider" then
        return { idx = iv, type = "Slider", value = tostring(iw.Value) }
    elseif Type == "Dropdown" then
        return { idx = iv, type = "Dropdown", multi = iw.Multi == true, value = iw.Value }
    elseif Type == "Input" then
        local ud = iw.Value or ""
        return { idx = iv, type = "Input", text = tostring(ud) }
    elseif Type == "ColorPicker" then
        return { idx = iv, type = "ColorPicker", value = iw.Value:ToHex(), transparency = iw.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iv,
            type = "KeyPicker",
            mode = iw.Mode,
            key = iw.Value,
            modifiers = iw.Modifiers,
            toggled = iw.Toggled
        }
    else
        return nil
    end
end
local function fn29()
    local sd = if mO() < mL then 1 else 0
    if sd == 1 then
        return
    end
    pcall(function()
        mz.StartBlueprintRoll:FireServer()
    end)
    task.wait(0.8)
end
local function fn30()
    local ta = nC()
    local tb = mo()
    if not ta or not tb then
        return
    end
    me()
    mq = true
    tb.PlatformStand = true
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = ta
end
local function fn49()
    local r7 = mE()
    local r8 = UPGRADE_PRICES[r7 + 1]
    local r7_1 = not r8 or m8() < r8
    if r7_1 then
        return
    end
    pcall(function()
        mz.RequestUpgradeAnvil:FireServer()
    end)
    task.wait(0.35)
end
local function onRejoinServer()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end
local function fn58()
    me()
    nc = nil
    nf = false
    na = 0
    m6 = nil
end
local function onCharacterAdded()
    task.wait(0.5)
    if m_("Fly") then
        nq()
    end
end
local function onImportConfigFromClipboardFie()
    local uU_1
    local uS = Options.SaveManager_ImportSource.Value or ""
    local uS_1
    local uT = tostring(uS):match("^%s*(.-)%s*$")
    if uT == "" then
        Library:Notify("Paste a config first")
        return
    end
    uS_1, uU_1 = pcall(HttpService.JSONDecode, HttpService, uT)
    local uT_1 = not uS_1 or type(uU_1) ~= "table" or type(uU_1.objects) ~= "table"
    if uT_1 then
        Library:Notify("Invalid config payload")
        return
    end
    local uS_2 = 0
    for i, v in ipairs(uU_1.objects) do
        if mJ(v) then
            uS_2 += 1
        end
    end
    Options.SaveManager_ImportSource:SetValue("")
    Library:Notify("Imported " .. tostring(uS_2) .. " settings")
end
local function onRscripts()
    ni(mQ, "Copied Rscripts profile to clipboard")
end
local function worker2()
    local s__1
    local sZ_1
    while not Library.Unloaded do
        task.wait(1)
        Label:SetText(nB("Session", ng(), mw))
        Label2:SetText(nB("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), mC))
        sZ_1, s__1 = pcall(function()
            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
        end)
        local sZ_2 = sZ_1 and s__1 .. " ms"
        local s4 = if sZ_2 then 1 else 0
        local s2 = 2261 * s4 + 1039 * (1 - s4)
        local s3 = 863 * s4 + 175 * (1 - s4)
        if not ((s2 * 3796 + s3 * 3078 + s2 * s3) % 16777213 == 13190313) then
            sZ_2 = "n/a"
        end
        Label3:SetText(nB("Ping", sZ_2, mw))
    end
end
local function fn149()
    return CoreGui
end
local function fn151(bR)
    local pK = mo()
    local pL = not pK or not bR or not bR:IsA("Tool")
    if pL then
        return false
    elseif bR.Parent == my() then
        return true
    else
        pK:EquipTool(bR)
        task.wait(0.12)
        return bR.Parent == my()
    end
end
local function fn155(cp)
    if not cp then
        return false
    end
    local qr = mD("SmeltRarities")
    local qs = mD("SmeltMetals")
    local function qt(cu, cv)
        if not mg(cu) then
            return true
        elseif cu[cv] == true then
            return true
        else
            for k, v in cu do
                if v == cv then
                    return true
                end
            end
            return false
        end
    end
    local qu = qt(qr, cp.Rarity) and qt(qs, cp.DisplayName)
    return qu
end
local function onOnClientEvent(c6, c7, c8, c9)
    nc = { Token = c6, Anvil = c7, MetalId = c8, WeaponType = c9 }
end
local function fn185(b3)
    local pT = my()
    if pT then
        for i, child in ipairs(pT:GetChildren()) do
            local pT_1 = child:IsA("Tool") and child:GetAttribute("InventoryItemId") == b3
            if pT_1 then
                return child
            end
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        local pT_2 = child:IsA("Tool") and child:GetAttribute("InventoryItemId") == b3
        if pT_2 then
            return child
        end
    end
    return nil
end
local function fn204(aO)
    local oE = Toggles[aO]
    return oE ~= nil and oE.Value == true
end
local function onWebsite()
    ni(mK, "Copied website link")
end
local function onCopyJobID()
    ni(mF, "Copied Job ID")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if m_("InfJump") then
        local th = mo()
        if th then
            th:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn299()
    local se = hookfunction ~= nil
    local sf = hookmetamethod ~= nil
    local sg = getrawmetatable ~= nil
    local sh = setrawmetatable ~= nil
    local si = getgc ~= nil
    local sj = getgenv ~= nil
    local sk = getreg ~= nil
    local sl = getconnections ~= nil
    local sm = firesignal ~= nil
    local sn = getcallbackvalue ~= nil
    local so = setclipboard ~= nil
    local sp = getcustomasset ~= nil
    local sq = getnamecallmethod ~= nil
    local sr = isexecutorclosure ~= nil
    local ss = fireproximityprompt ~= nil
    local st = firetouchinterest ~= nil
    local su = WebSocket ~= nil
    local sv = readfile ~= nil
    local sw = writefile ~= nil
    local sy = (request or http_request) ~= nil
    local sA = (debug and debug.getupvalues) ~= nil
    local sC = (debug and debug.setupvalue) ~= nil
    local sD = 0
    local sE = { se, sf, sg, sh, si, sj, sk, sl, sm, sn, so, sp, sq, sr, ss, st, su, sv, sw, sy, sA, sC }
    for i, v in ipairs(sE) do
        if v then
            sD += 1
        end
    end
    local se_1 = sD / #sE
    if se_1 >= 0.9 then
        return mk("Full Support", mC)
    elseif se_1 >= 0.6 then
        return mk("Half Support", mw)
    else
        return mk("Low Support", mn)
    end
end
local function fn319()
    mq = false
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    local s5 = mo()
    if s5 then
        s5.PlatformStand = false
    end
end
local function fn332(dC)
    local Forges = dC:FindFirstChild("Forges")
    if not Forges then
        return false
    end
    for i, child in ipairs(Forges:GetChildren()) do
        local q9_1 = mu(child) and child:GetAttribute("ForgeState") == "Ready"
        if q9_1 then
            local q9_2 = mi(child, "ForgePrompt")
            if q9_2 then
                m0(q9_2)
                task.wait(0.3)
                return true
            end
        end
    end
    return false
end
local function fn343()
    local o7 = my()
    local o8 = o7 and o7:FindFirstChildOfClass("Humanoid")
    return o8
end
local function fn345()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local o1 = leaderstats and leaderstats:FindFirstChild("Coins")
    local o0_1 = o1
    if o1 then
        o1 = tonumber(o0_1.Value)
    end
    return o1 or 0
end
local function fn346(bH)
    if not bH then
        return false
    elseif bH:GetAttribute("ForgeUnlocked") == true then
        return true
    else
        local attr = bH:GetAttribute("ForgeState")
        return attr == "Idle" or attr == "Ready" or attr == "Smelting"
    end
end
local function onCopyUsername()
    ni(LocalPlayer.Name, "Copied username")
end
local function fn380(bX)
    local Inventory = LocalPlayer:FindFirstChild("Inventory")
    local pO = Inventory and Inventory:FindFirstChild(bX)
    local pN_1 = pO
    if pO then
        pO = tonumber(pN_1.Value)
    end
    local pN_2 = pO
    local pS = if pN_2 then 1 else 0
    local pQ = 3014 * pS + 1141 * (1 - pS)
    local pR = 1400 * pS + 2721 * (1 - pS)
    if not ((pQ * 1008 + pR * 1105 + pQ * pR) % 16777213 == 8804712) then
        pN_2 = 0
    end
    return pN_2
end
local function fn394()
    local sU = math.floor(os.clock() - nk)
    if sU < 60 then
        return sU .. "s"
    elseif sU < 3600 then
        return string.format("%dm %ds", sU // 60, sU % 60)
    else
        return string.format("%dh %dm", sU // 3600, sU % 3600 // 60)
    end
end
local function fn405()
    local cD = nw("BuyMetal", "Copper")
    return nz[cD]
end
local function onExportConfigToClipboard()
    local uN_1
    local uM_1
    uM_1, uN_1 = pcall(HttpService.JSONEncode, HttpService, nx())
    if not uM_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    if setclipboard then
        setclipboard(uN_1)
    elseif toclipboard then
        toclipboard(uN_1)
    end
    Library:Notify("Exported config to clipboard")
end
local function onCopyProfileLink()
    ni("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
end
local function fn418()
    local o3 = tonumber(LocalPlayer:GetAttribute("BlueprintTokens")) or 0
    return o3
end
local function fn431(ce)
    local p6 = my()
    if p6 then
        for i, child in ipairs(p6:GetChildren()) do
            local p6_1 = child:IsA("Tool") and child:GetAttribute("ItemType") == ce
            if p6_1 then
                return child
            end
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        local p6_2 = child:IsA("Tool") and child:GetAttribute("ItemType") == ce
        if p6_2 then
            return child
        end
    end
    return nil
end
local function fn456()
    local qD = nf or os.clock() < na
    return qD
end
local function fn479(eB)
    local rO = nr("Weapon")
    local rP = not rO or not nm(rO)
    if rP then
        return false
    end
    local SellStands = eB:FindFirstChild("SellStands")
    local rP_1 = SellStands and SellStands:FindFirstChild("SellStand1")
    local rO_2 = rP_1
    if rP_1 then
        rP_1 = mi(rO_2, "SellStandPrompt")
    end
    local rO_3 = rP_1
    if not rO_3 then
        return false
    end
    m0(rO_3)
    task.wait(0.35)
    return true
end
local function fn490(im, io)
    local t9_1 = (im == "Toggle" and Toggles or Options)[io]
    local t8_2 = type(t9_1) == "table" and t9_1.Type == im
    return t8_2 and t9_1 or nil
end
local function fn562()
    return LocalPlayer.Character
end
local function fn567(aZ)
    for k, v in aZ do
        if v == true then
            return true
        end
        local oL = v ~= ""
        local oM = type(v) == "string" and oL
        if oM then
            return true
        end
        local oL_1 = v ~= nil
        local oM_1 = type(k) == "number" and oL_1
        if oM_1 then
            return true
        end
    end
    return false
end
local function fn611(cT)
    if not m_("AutoSmeltMetal") then
        return false
    end
    local Forges = cT:FindFirstChild("Forges")
    if not Forges then
        return false
    end
    local qG = false
    for i, v in ipairs(nD) do
        local qH_1 = mR(v) and m1(v.Id) > 0
        if qH_1 then
            qG = true
            break
        end
    end
    for i, child in ipairs(Forges:GetChildren()) do
        if mu(child) then
            local attr = child:GetAttribute("ForgeState")
            if attr == "Ready" or attr == "Smelting" then
                return true
            end
            if attr == "Idle" and qG then
                return true
            end
        end
    end
    return false
end
local function fn619(a2, a3)
    local oU = Options[a2]
    local oV = oU and oU.Value
    local oV_1 = oV ~= ""
    local oW = type(oV) == "string" and oV_1
    if oW then
        return oV
    end
    return a3
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if m_("NoClip") then
        local tj_1 = my()
        if tj_1 then
            for i, descendant in ipairs(tj_1:GetDescendants()) do
                local tj_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if tj_2 then
                    mj[descendant] = true
                    descendant.CanCollide = false
                end
            end
        end
    else
        for k in pairs(mj) do
            if k and k.Parent then
                k.CanCollide = true
            end
            mj[k] = nil
        end
    end
end
local function fn648(cK, cL)
    m6 = cL
    local qx = os.clock()
    local qy = cK
    local qC = if qy then 1 else 0
    local qA = 1553 * qC + 2234 * (1 - qC)
    local qB = 1554 * qC + 2184 * (1 - qC)
    if not ((qA * 120 + qB * 2069 + qA * qB) % 16777213 == 5814948) then
        qy = 0.8
    end
    na = math.max(na, qx + qy)
end
local function fn660(az, aA)
    return string.format('<font color="%s">%s</font>', aA, az)
end
local function fn683()
    local o5 = tonumber(LocalPlayer:GetAttribute("AnvilUpgradeLevel")) or 0
    return o5
end
local function fn685(ft)
    local DiscordGroup = ft:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = m7 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = m7 })
end
local function fn698(aC, aD, aE)
    return string.format("<b>%s</b> %s %s", aC, mk("-", "#5a6070"), mk(aD, aE))
end
local function fn714(gL)
    if gL then
        nq()
    else
        me()
    end
end
local function fn734()
    local pa = my()
    local pb = pa and pa:FindFirstChild("HumanoidRootPart")
    return pb
end
local function fn742()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    local UserId = LocalPlayer.UserId
    for i, child in ipairs(Plots:GetChildren()) do
        local pd_1 = child:GetAttribute("OwnerUserId") == UserId or child:GetAttribute("OwnerUserId") == UserId
        if pd_1 then
            return child
        end
    end
    return nil
end
local function fn744()
    ni(mX, "Copied Discord invite to clipboard")
end
local function fn757()
    local sQ_1
    local sP_1
    if identifyexecutor then
        sQ_1, sP_1 = identifyexecutor()
        local sR = sQ_1 ~= ""
        local sS = type(sQ_1) == "string" and sR
        if sS then
            local sR_1 = type(sP_1) == "string" and sP_1 ~= "" and sQ_1 .. " " .. sP_1
            nE = sR_1 or sQ_1
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        local tM = no()
        local tN = false
        if tM then
            if m_("AutoBuyMetal") then
                nd()
            end
            local tS = if mN() then 1 else 0
            if tS == 1 then
                tN = true
            else
                local tO_1 = m_("AutoSmeltMetal") and mW(tM)
                if tO_1 then
                    m2(0.85, "smelt")
                    tN = true
                else
                    local tO_2 = m_("AutoSmeltMetal") and nF(tM)
                    if tO_2 then
                        m2(1, "smelt")
                        tN = true
                    else
                        local tO_3 = m_("AutoSmithMetal") and mp(tM)
                        if tO_3 then
                            m2(1, "smith")
                            tN = true
                        else
                            local tO_4 = m_("AutoDepositWeapon") and not mx(tM) and nA(tM)
                            if tO_4 then
                                m2(0.9, "deposit")
                                tN = true
                            else
                                local tO_5 = m_("AutoCollectCash") and not mx(tM) and mZ(tM)
                                if tO_5 then
                                    m2(0.75, "money")
                                    tN = true
                                end
                            end
                        end
                    end
                end
            end
            local tO_6 = not tN
            if tO_6 ~= false then
                tO_6 = not mN()
            end
            if tO_6 then
                if m_("AutoUnlockForges") then
                    ms(tM)
                end
                if m_("AutoBuySmithingTime") then
                    mU()
                end
                if m_("AutoBuyBlueprintChest") then
                    mf()
                end
            end
        end
        local wait = task.wait
        local tN_1 = tN and 0.45 or 0.25
        wait(tN_1)
    end
end
local function fn816()
    local um = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local un = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if un then
                local un_1 = mh(k, v)
                if un_1 then
                    um[#um + 1] = un_1
                end
            end
        end
    end
    table.sort(um, function(iI, iJ)
        if iI.type ~= iJ.type then
            return iI.type < iJ.type
        end
        return iI.idx < iJ.idx
    end)
    return { objects = um }
end
local function fn823(aT)
    local oH = Options[aT]
    local oI = oH and oH.Value
    local oI_1 = type(oI) == "table" and oI
    return oI_1 or {}
end
local function worker()
    while Library and not Library.Unloaded do
        mr()
        task.wait(1)
    end
end
local function fn852(bK, bL)
    if not bK then
        return nil
    elseif bL then
        local py = bK:FindFirstChild(bL, true)
        local pz = py and py:IsA("ProximityPrompt")
        if pz then
            return py
        end
        for i, descendant in ipairs(bK:GetDescendants()) do
            if descendant:IsA("ProximityPrompt") then
                return descendant
            end
        end
        return nil
    else
        for i, descendant in ipairs(bK:GetDescendants()) do
            if descendant:IsA("ProximityPrompt") then
                return descendant
            end
        end
        return nil
    end
end
local function fn853(aH, aI)
    if setclipboard then
        setclipboard(aH)
    elseif toclipboard then
        toclipboard(aH)
    end
    Library:Notify(aI)
end
Players = nil
me = nil
mf = nil
mg = nil
mh = nil
mi = nil
mj = nil
mk = nil
bodyVelocity = nil
mn = nil
mo = nil
mp = nil
mq = nil
mr = nil
ms = nil
Label3 = nil
mu = nil
Library = nil
mw = nil
mx = nil
my = nil
mz = nil
mC = nil
mD = nil
mE = nil
mF = nil
UPGRADE_PRICES = nil
Options = nil
Label2 = nil
mJ = nil
mK = nil
mL = nil
Toggles = nil
mN = nil
mO = nil
mQ = nil
mR = nil
SaveManager = nil
mU = nil
mW = nil
mX = nil
mZ = nil
m_ = nil
local ForgeConfig, mA, UNLOCK_PRICES, mP, mS, mV, mY
m0 = nil
m1 = nil
m2 = nil
m3 = nil
Label = nil
m5 = nil
m6 = nil
m7 = nil
m8 = nil
na = nil
LocalPlayer = nil
nc = nil
nd = nil
TeleportService = nil
nf = nil
ng = nil
Workspace = nil
ni = nil
Label4 = nil
nk = nil
CoreGui = nil
nm = nil
nn = nil
no = nil
HttpService = nil
nq = nil
nr = nil
ns = nil
VirtualUser = nil
nv = nil
nw = nil
nx = nil
nz = nil
nA = nil
nB = nil
nC = nil
nD = nil
nE = nil
nF = nil
local PlayerGui, nu, UserInputService, nJ, nK, nL, nM, nN
PlayerGui = nil
nu = nil
UserInputService = nil
local nO, nP, nR, nS, nT, nU
local nQ_1
Players, UserInputService, VirtualUser, HttpService, CoreGui, Workspace, TeleportService, LocalPlayer, PlayerGui, m5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local u3_7 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
TeleportService = game:GetService("TeleportService")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
m5 = fn149
if getgenv then
    getgenv().gethui = m5
end
pcall(function()
    gethui = m5
end)
if setthreadidentity then
    setthreadidentity(8)
end
nQ_1, mX, mQ, mK, nK, nJ, mz, nL, nP, ForgeConfig, nO, nN, nD, nM, nz, nS, nR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local u3_11 = 22
repeat
    nT = (u3_11 * 1 + 1) % 11 + 1
    if nT <= 6 then
        if nT <= 3 then
            if nT <= 2 then
                if nT <= 1 then
                    local vJ = bit32.rrotate(bit32.bxor(bit32.lrotate(u3_11, 2), string.byte(tostring(nS))), 6)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(vJ, 2441083871), 1583009957), (bit32.bxor(bit32.band(vJ, 1853883424), 486563219))), 1583009957), 486563219) == vJ then
                        nR = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Divine", "Celestial", "Abyssal" }
                    else
                        nQ_1 = { "Mythic", "Rare", "Legendary", "Common", "Abyssal", "Epic", "Celestial", "Divine", "Uncommon" }
                    end
                    u3_11 = (u3_11 + 1) % 44
                else
                    if (u3_11 * 1 + 6) * 21 % 4 == ((u3_11 * 1 + 6) * 21 + 13) % 4 then
                        mQ = "Forge and Sell"
                        mK = "https://discord.gg/ehKVq7pf7v"
                        mX = "https://rscripts.net/@Ouroboros"
                        nQ_1 = "https://ouroboros-hub.vercel.app"
                    else
                        nQ_1 = "Forge and Sell"
                        mX = "https://discord.gg/ehKVq7pf7v"
                        mQ = "https://rscripts.net/@Ouroboros"
                        mK = "https://ouroboros-hub.vercel.app"
                    end
                    u3_11 = (u3_11 + 12) % 44
                end
            else
                if (u3_11 * 2 + 6) * 10 % 3 == ((u3_11 * 2 + 6) * 10 + 4) % 3 then
                    u3_7 = nK:WaitForChild("Remotes")
                else
                    nK = u3_7:WaitForChild("Remotes")
                end
                u3_11 = (u3_11 + 23) % 44
            end
        elseif nT <= 5 then
            if nT <= 4 then
                nU = (vector.create((u3_11 * 3 + 1) % 11 + 1, (u3_11 * 6 + 12) % 13 + 1, (u3_11 * 15 + 12) % 17 + 1))
                local vu = vector.floor(nU) + vector.ceil(nU * -1)
                if vector.dot(vu, vu) == 0 then
                    nJ = u3_7:WaitForChild("Shared")
                else
                    u3_7 = nJ:WaitForChild("Shared")
                end
                u3_11 = (u3_11 + 23) % 44
            else
                if ((mX or mX) and (nS and not mX) or (nS or mX or (not nS or mX))) and (not nS and mX or not nS and not mX or not mX and not nS and (not nS or not mX)) and not (((mX or mX) and (nS and not mX) or (nS or mX or (not nS or mX))) and (not nS and mX or not nS and not mX or not mX and not nS and (not nS or not mX))) then
                    nK = {
                        RequestUnlockForge = mz.Forges:WaitForChild("RequestUnlockForge"),
                        StartBlueprintRoll = mz.Blueprints:WaitForChild("StartBlueprintRoll"),
                        PurchaseMetal = mz.Shops:WaitForChild("PurchaseMetal"),
                        RequestUpgradeAnvil = mz.AnvilUpgrades:WaitForChild("RequestUpgradeAnvil"),
                        SubmitTap = mz.Smithing:WaitForChild("SubmitTap"),
                        StartSmithing = mz.Smithing:WaitForChild("StartSmithing")
                    }
                else
                    mz = {
                        PurchaseMetal = nK.Shops:WaitForChild("PurchaseMetal"),
                        StartSmithing = nK.Smithing:WaitForChild("StartSmithing"),
                        SubmitTap = nK.Smithing:WaitForChild("SubmitTap"),
                        RequestUnlockForge = nK.Forges:WaitForChild("RequestUnlockForge"),
                        RequestUpgradeAnvil = nK.AnvilUpgrades:WaitForChild("RequestUpgradeAnvil"),
                        StartBlueprintRoll = nK.Blueprints:WaitForChild("StartBlueprintRoll")
                    }
                end
                u3_11 = (u3_11 + 12) % 44
            end
        else
            if u3_11 * 4504041 + 1 + 3 <= u3_11 * 4504041 + 1 + 3 + 5 then
                nL = require(nJ.Shops.ShopConfig)
            else
                nJ = require(nL.Shops.ShopConfig)
            end
            u3_11 = (u3_11 + 1) % 44
        end
    elseif nT <= 9 then
        if nT <= 8 then
            if nT <= 7 then
                nU = {
                    "qtwloxbdsig",
                    "vtmbvusvjjr",
                    "yzbdp",
                    "wcrydyk",
                    "dnqysbusim",
                    "ynmrd",
                    "aala",
                    "snhjnxewf",
                    "fksr",
                    "fynlzin"
                }
                if nU[(u3_11 * 44 + 12) % 10 + 1] <= nU[(u3_11 * 44 + 12) % 10 + 1] then
                    nP = require(nJ.AnvilUpgrades.AnvilUpgradeConfig)
                    ForgeConfig = require(nJ.Forges.ForgeConfig)
                else
                    nJ = require(ForgeConfig.AnvilUpgrades.AnvilUpgradeConfig)
                    nP = require(ForgeConfig.Forges.ForgeConfig)
                end
                u3_11 = (u3_11 + 23) % 44
            else
                nU = (vector.create((u3_11 * 6 + 9) % 11 + 1, (u3_11 * 5 + 10) % 13 + 1, (u3_11 * 13 + 8) % 17 + 1))
                local nV = (vector.create((u3_11 * 5 + 5) % 11 + 1, (u3_11 * 7 + 11) % 13 + 1, (u3_11 * 4 + 14) % 17 + 1))
                local nW = (vector.create((u3_11 * 4 + 9) % 11 + 1, (u3_11 * 1 + 9) % 13 + 1, (u3_11 * 15 + 11) % 17 + 1))
                local nX = (vector.create((u3_11 * 4 + 2) % 11 + 1, (u3_11 * 1 + 13) % 13 + 1, (u3_11 * 9 + 17) % 17 + 1))
                if vector.dot(vector.cross(nU, nV), (vector.cross(nW, nX))) == vector.dot(nU, nW) * vector.dot(nV, nX) - vector.dot(nU, nX) * vector.dot(nV, nW) + 2 then
                    nJ = require(nO.Blueprints.BlueprintConfig)
                else
                    nO = require(nJ.Blueprints.BlueprintConfig)
                end
                u3_11 = (u3_11 + 23) % 44
            end
        else
            if (u3_11 * 2 + 6) * 4 % 3 == ((u3_11 * 2 + 6) * 4 + 3) % 3 then
                nN = require(nJ.Smithing.SmithingConfig)
            else
                nJ = require(nN.Smithing.SmithingConfig)
            end
            u3_11 = (u3_11 + 12) % 44
        end
    elseif nT <= 10 then
        nT = { "kwaybo", "jiztyc", "iamacyyksc", "scovalysn", "nthfiuci", "pqn", "fymjued", "usbjtwwq", "raifg" }
        local wb = u3_11
        nU = nT[wb % 9 + 1]
        if nU:len() <= nU:reverse():rep(wb % 3 + 2):len() then
            nD = {}
            nM = {}
            nz = {}
        else
            nz = {}
            nD = {}
            nM = {}
        end
        u3_11 = (u3_11 + 12) % 44
    else
        if ((nJ and not nJ or not nQ_1 and not nO) and (nQ_1 or not nO or (nJ or not nO)) or not nO and nQ_1 and (not nJ or nJ) and (nQ_1 and not nQ_1 or (nJ or nQ_1)) or ((nJ or nQ_1) and (not nO or not nJ) and (not nQ_1 or not nJ or nO and nQ_1) or nJ and nO and (not nJ and nO) and (nO and nO and (not nJ or nO)))) and not ((nJ and not nJ or not nQ_1 and not nO) and (nQ_1 or not nO or (nJ or not nO)) or not nO and nQ_1 and (not nJ or nJ) and (nQ_1 and not nQ_1 or (nJ or nQ_1)) or ((nJ or nQ_1) and (not nO or not nJ) and (not nQ_1 or not nJ or nO and nQ_1) or nJ and nO and (not nJ and nO) and (nO and nO and (not nJ or nO)))) then
            nJ = {}
        else
            nS = {}
        end
        u3_11 = (u3_11 + 12) % 44
    end
until (u3_11 * 3 + 11) % 44 == 11
for i, v in ipairs(nL.MetalShop.Metals) do
    u3_11 = {
        Id = v.Id,
        DisplayName = v.DisplayName,
        Rarity = v.Rarity,
        CoinPrice = v.CoinPrice,
        MoltenItemId = v.MoltenItemId
    }
    nD[#nD + 1] = u3_11
    nM[u3_11.Id] = u3_11
    nz[u3_11.DisplayName] = u3_11
    nS[#nS + 1] = u3_11.DisplayName
end
u3_11 = {}
for i, v in ipairs(nR) do
    u3_11[v] = true
end
u3_7 = {}
for i, v in ipairs(nS) do
    u3_7[v] = true
end
u3_11 = nN.MAX_STARS or 10
u3_7 = nN.CLICKS_PER_STAR or 3
mY = u3_11 * u3_7
u3_11 = math.max
u3_7 = nN.MIN_TAP_INTERVAL_SECONDS or 0.08
mS = u3_11(0.09, u3_7 + 0.01)
u3_11 = nO.TIER_1_COST or 100
mL, UPGRADE_PRICES, UNLOCK_PRICES, Library, SaveManager, Toggles, Options, mC, mw, mn, nf, nc, na, m6, nK, nT, mr, mk, nB, ni, m7, m_, mD, mg, nw, m8, mO, mE, my, mo, nC, no, m0, mu, mi, nm, m1, mA, nr, mR, nu, m2, mN, mx, mV, nd, mW, nF, mp, nA, mZ, ms, mU, mf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mL = u3_11
UPGRADE_PRICES = nP.UPGRADE_PRICES
UNLOCK_PRICES = ForgeConfig.UNLOCK_PRICES
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
mr = function()
    local function op(Z)
        local on = not Z or not Z:IsA("ScreenGui")
        if on then
            return
        end
        Z.ResetOnSpawn = false
        Z.IgnoreGuiInset = true
        Z.DisplayOrder = math.max(Z.DisplayOrder, 1000)
        pcall(function()
            Z.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            Z.ScreenInsets = Enum.ScreenInsets.None
        end)
        if Z.Parent ~= CoreGui then
            Z.Parent = CoreGui
        end
    end
    op(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        op(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local oq_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if oq_1 then
            op(oq_1)
        end
    end
end
mr()
task.spawn(worker)
nO = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
mC = "#7fd47f"
nM = "#6ec1ff"
mw = "#e8a34d"
nN = "#8b93a3"
mn = "#e05a5a"
mk = fn660
nB = fn698
ni = fn853
m7 = fn744
m_ = fn204
mD = fn823
mg = fn567
nw = fn619
m8 = fn345
mO = fn418
mE = fn683
my = fn562
mo = fn343
nC = fn734
no = fn742
m0 = function(bz)
    local pp = not bz or not bz:IsA("ProximityPrompt")
    if pp then
        return false
    end
    local pp_1 = nC()
    local Parent = bz.Parent
    local pr = pp_1 and Parent and Parent:IsA("BasePart")
    if pr then
        pp_1.CFrame = Parent.CFrame * CFrame.new(0, 3, -4)
        task.wait(0.12)
    end
    pcall(function()
        bz.Enabled = true
        bz.HoldDuration = 0
        bz.MaxActivationDistance = math.max(bz.MaxActivationDistance, 20)
    end)
    if fireproximityprompt then
        fireproximityprompt(bz)
        return true
    end
    return false
end
mu = fn346
if not mN and nK and (mN or nK) or (not nK or mN) and (not mN and not nK) or not mN and not mN and (mN and nK) and ((mN or not nK) and (nK and not mN)) or not (not mN and nK and (mN or nK) or (not nK or mN) and (not mN and not nK) or not mN and not mN and (mN and nK) and ((mN or not nK) and (nK and not mN))) then
    mi = fn852
    nm = fn151
else
    nm = fn852
    mi = fn151
end
m1 = fn380
mA = fn185
nr = fn431
mR = fn155
nu = fn405
nf = false
nc = nil
na = 0
m6 = nil
m2 = fn648
mN = fn456
mx = fn611
mz.StartSmithing.OnClientEvent:Connect(onOnClientEvent)
mV = function(dc)
    local Token
    if nf or not dc or not dc.Token then
        return false
    end
    nf = true
    Token = dc.Token
    pcall(function()
        mz.SubmitTap:InvokeServer(Token, "Start")
        local q_ = 1
        while q_ <= mY do
            local qW = Library.Unloaded or not m_("AutoSmithMetal")
            if qW then
                break
            end
            mz.SubmitTap:InvokeServer(Token, "Tap")
            task.wait(mS)
            q_ += 1
        end
        mz.SubmitTap:InvokeServer(Token, "Finish")
    end)
    task.wait(0.35)
    nf = false
    return true
end
nd = function()
    local q5
    q5 = nu()
    if not q5 then
        return false
    end
    local q6 = m8()
    if q6 < (q5.CoinPrice or 0) then
        return false
    end
    pcall(function()
        mz.PurchaseMetal:FireServer(q5.Id)
    end)
    task.wait(0.25)
    return true
end
mW = fn332
nF = function(dM)
    local Forges = dM:FindFirstChild("Forges")
    if not Forges then
        return false
    end
    local rj
    for i, v in ipairs(nD) do
        local rk_1 = mR(v) and m1(v.Id) > 0
        if rk_1 then
            rj = v
            break
        end
    end
    if not rj then
        return false
    end
    local rk_2 = mA(rj.Id)
    local rj_1 = not rk_2 or not nm(rk_2)
    if rj_1 then
        return false
    end
    for i, child in ipairs(Forges:GetChildren()) do
        local ri_1 = mu(child) and child:GetAttribute("ForgeState") == "Idle"
        if ri_1 then
            local rh = mi(child, "ForgePrompt")
            if rh then
                pcall(function()
                    rh.Enabled = true
                end)
                m0(rh)
                task.wait(0.35)
                return true
            end
        end
    end
    return false
end
mp = function(d7)
    local rB
    if nf then
        return true
    elseif nc then
        local rC_1 = nc
        nc = nil
        mV(rC_1)
        return true
    else
        local rC_2 = nil
        for i, v in ipairs(nD) do
            if mR(v) then
                local rD_1 = mA(v.MoltenItemId)
                if rD_1 then
                    rC_2 = rD_1
                    break
                end
            end
        end
        if not rC_2 then
            rC_2 = nr("MoltenMetal")
        end
        local rD_2 = not rC_2
        local rH = if rD_2 then 1 else 0
        local rF = 804 * rH + 1821 * (1 - rH)
        local rG = 2310 * rH + 1775 * (1 - rH)
        if not ((rF * 1886 + rG * 659 + rF * rG) % 16777213 == 4895874) then
            rD_2 = not nm(rC_2)
        end
        if rD_2 then
            return false
        end
        local Anvils = d7:FindFirstChild("Anvils")
        local rD_3 = Anvils and Anvils:FindFirstChild("Anvil1")
        local rC_4 = rD_3
        if rD_3 then
            rD_3 = mi(rC_4, "AnvilPrompt")
        end
        rB = rD_3
        if not rB then
            return false
        end
        nc = nil
        pcall(function()
            rB.Enabled = true
        end)
        m0(rB)
        local rC_5 = os.clock()
        while true do
            local rD_4 = not nc and os.clock() - rC_5 < 3
            if not rD_4 then
                if nc then
                    local rC_6 = nc
                    nc = nil
                    mV(rC_6)
                end
                return true
            end
            local rD_5 = Library.Unloaded or not m_("AutoSmithMetal")
            if rD_5 then
                break
            end
            task.wait(0.05)
        end
        return true
    end
end
if ((not mi or not nw) and (mi or not mi) and ((nw or not mi) and (not mi or nw)) or (not nw and not nw and (not mi and not mi) or mi and not nw and (not mi and not nw))) and (not mi and nw or (not nw or not nw) or (not mi or nw or (nw or not nw)) or ((mi or mi) and (not nw or not mi) or (not mi and not mi or (mi or nw)))) and not (((not mi or not nw) and (mi or not mi) and ((nw or not mi) and (not mi or nw)) or (not nw and not nw and (not mi and not mi) or mi and not nw and (not mi and not nw))) and (not mi and nw or (not nw or not nw) or (not mi or nw or (nw or not nw)) or ((mi or mi) and (not nw or not mi) or (not mi and not mi or (mi or nw))))) then
    mZ = fn479
    nA = function(eO)
        local rR
        rR = nil
        local MoneyArea = eO:FindFirstChild("MoneyArea")
        local rT = MoneyArea or eO
        rR = mi(rT, "CollectCash")
        if not rR then
            return false
        end
        pcall(function()
            rR.Enabled = true
        end)
        m0(rR)
        task.wait(0.25)
        return true
    end
else
    nA = fn479
    mZ = function(eO)
        local rR
        rR = nil
        local MoneyArea = eO:FindFirstChild("MoneyArea")
        local rT = MoneyArea or eO
        rR = mi(rT, "CollectCash")
        if not rR then
            return false
        end
        pcall(function()
            rR.Enabled = true
        end)
        m0(rR)
        task.wait(0.25)
        return true
    end
end
ms = function(eV)
    local rZ = eV or no()
    eV = rZ
    if not eV then
        return
    end
    local Forges = eV:FindFirstChild("Forges")
    if not Forges then
        return
    end
    local r_ = m8()
    local r0 = ForgeConfig.MAX_FORGES or 6
    for i = 2, r0 do
        local rY = Forges:FindFirstChild("Forge" .. tostring(i))
        local r0_1 = rY and not mu(rY)
        if r0_1 then
            local r0_2 = UNLOCK_PRICES[i] or tonumber(rY:GetAttribute("UnlockPrice"))
            local r1 = r0_2
            if r0_2 then
                r0_2 = r_ >= r1
            end
            if r0_2 then
                pcall(function()
                    mz.RequestUnlockForge:FireServer(rY)
                end)
                task.wait(0.35)
            end
            return
        end
    end
end
mU = fn49
mf = fn29
nK = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mX, Copyable = true }, "|", nQ_1 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
if (false and (not mE and not mE) or (mC or not mf or mE and mC)) and (not mE and mC and (mE or mC) or not mf and mE and (mf and not mE)) and ((mE or mf) and (not mE or false) and ((mE or mC) and (false and mE)) or (not mf or mC or mE and mE) and (mf or mf or mE and mf)) or not ((false and (not mE and not mE) or (mC or not mf or mE and mC)) and (not mE and mC and (mE or mC) or not mf and mE and (mf and not mE)) and ((mE or mf) and (not mE or false) and ((mE or mC) and (false and mE)) or (not mf or mC or mE and mE) and (mf or mf or mE and mf))) then
    nT = {
        Info = nK:AddTab("Info", "info"),
        Main = nK:AddTab("Main", "hammer"),
        Player = nK:AddTab("Player", "person-standing"),
        Settings = nK:AddTab("Settings", "settings")
    }
else
    nK = {
        Settings = nT:AddTab("Settings", "settings"),
        Info = nT:AddTab("Info", "info"),
        Player = nT:AddTab("Player", "person-standing"),
        Main = nT:AddTab("Main", "hammer")
    }
end
nL = fn685
for k, v in pairs(nT) do
    if k ~= "Info" then
        nL(v)
    end
end
nE, nk, ng = nil, nil, nil
u3_7 = fn299
nE = "Unknown"
pcall(fn757)
nJ = u3_7()
nk = os.clock()
ng = fn394
Label, Label2, mF = nil, nil, nil
nK = nT.Info:AddLeftGroupbox("User", "circle-user")
nK:AddLabel(nB("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, mC), true)
nK:AddLabel(nB("UserId", tostring(LocalPlayer.UserId), nM), true)
nK:AddLabel(nB("Executor", nE .. "  " .. nJ, mC), true)
nK:AddDivider()
Label = nK:AddLabel(nB("Session", ng(), mw), true)
nK:AddDivider()
nK:AddButton({ Text = "Copy Username", Func = onCopyUsername })
nK:AddButton({ Text = "Copy Profile Link", Func = onCopyProfileLink })
nU = nT.Info:AddRightGroupbox("Session", "signal")
nU:AddDivider("Server")
nU:AddLabel(nB("Game", nQ_1, nM), true)
Label2 = nU:AddLabel(nB("Players", "0/0", mC), true)
mF = tostring(game.JobId)
nP = #mF > 18
if nP then
    u3_11 = 3
    repeat
        u3_7 = (vector.create((u3_11 * 1 + 1) % 11 + 1, (u3_11 * 6 + 8) % 13 + 1, (u3_11 * 10 + 11) % 17 + 1))
        nJ = (vector.create((u3_11 * 7 + 6) % 11 + 1, (u3_11 * 7 + 4) % 13 + 1, (u3_11 * 11 + 4) % 17 + 1))
        nK = (vector.create((u3_11 * 2 + 3) % 5 + 1, (u3_11 * 2 + 1) % 7 + 1, (u3_11 * 2 + 2) % 9 + 1))
        if math.abs((vector.angle(u3_7, nJ, nK))) - math.abs((vector.angle(nJ, u3_7, nK))) == 0 then
            nP = string.sub(mF, 1, 18) .. "..."
        else
            mF = string.sub(nP, 1, 18) .. "..."
        end
        u3_11 = (u3_11 + 0) % 4
    until (u3_11 * 1 + 0) % 4 == 3
end
u3_11 = nP or mF
Label3 = nil
u3_7 = u3_11
nU:AddLabel(nB("Job", u3_7, nN), true)
Label3 = nU:AddLabel(nB("Ping", "0 ms", mw), true)
nU:AddDivider()
nU:AddButton({ Text = "Rejoin Server", Func = onRejoinServer })
nU:AddButton({ Text = "Copy Job ID", Func = onCopyJobID })
task.spawn(worker2)
nJ = nT.Info:AddRightGroupbox("Socials", "link")
nJ:AddButton({ Text = "Discord", Func = m7 })
nJ:AddButton({ Text = "Rscripts", Func = onRscripts })
nJ:AddButton({ Text = "Website", Func = onWebsite })
nM = nT.Main:AddLeftGroupbox("Automation", "bot")
nM:AddToggle("AutoBuyMetal", { Text = "Auto Buy Metal", Default = false })
nM:AddDropdown("BuyMetal", { Text = "Metal", Values = nS, Default = "Copper" })
nM:AddDivider("Smelt")
nM:AddToggle("AutoSmeltMetal", { Text = "Auto Smelt Metal", Default = false })
nM:AddDropdown("SmeltRarities", { Text = "Rarity", Values = nR, Default = nR, Multi = true })
nM:AddDropdown("SmeltMetals", { Text = "Metal Type", Values = nS, Default = nS, Multi = true })
nM:AddToggle("AutoSmithMetal", { Text = "Auto Smith Metal", Default = false })
nM:AddToggle("AutoDepositWeapon", { Text = "Auto Deposit Weapon", Default = false })
nM:AddToggle("AutoCollectCash", { Text = "Auto Collect Money", Default = false })
nL = nT.Main:AddRightGroupbox("Upgrades", "arrow-up")
nL:AddToggle("AutoUnlockForges", { Text = "Auto Unlock Forges", Default = false })
nL:AddToggle("AutoBuySmithingTime", { Text = "Auto Buy Smithing Time Upgrade", Default = false })
nL:AddToggle("AutoBuyBlueprintChest", { Text = "Auto Buy Blueprint Chest", Default = false })
u3_7 = nil
nJ = nT.Player:AddLeftGroupbox("Movement", "footprints")
if (not nJ) and (u3_7 or nJ) and (nJ and false) and (nJ or 3 or nJ and false or (not nJ or not nJ) and (not nJ or false)) and ((not nJ or false) and u3_7 or (nJ or nil) or (true or not nJ or true) and (nil or nJ)) and not ((not nJ) and (u3_7 or nJ) and (nJ and false) and (nJ or 3 or nJ and false or (not nJ or not nJ) and (not nJ or false)) and ((not nJ or false) and u3_7 or (nJ or nil) or (true or not nJ or true) and (nil or nJ))) then
    u3_7:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    u3_7:AddSlider("WalkSpeed", { Default = 32, Rounding = 0, Text = "WalkSpeed Amount", Min = 16, Max = 250 })
    u3_7:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    u3_7:AddToggle("NoClip", { Text = "NoClip", Default = false })
    u3_7:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    u3_7:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = true })
    nT = nJ.Player:AddRightGroupbox("Fly", "feather")
else
    nJ:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    nJ:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    nJ:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    nJ:AddToggle("NoClip", { Text = "NoClip", Default = false })
    nJ:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    nJ:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = true })
    u3_7 = nT.Player:AddRightGroupbox("Fly", "feather")
end
u3_7:AddToggle("Fly", { Text = "Fly", Default = false })
u3_7:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
mq, bodyVelocity, mj, me, nq = nil, nil, nil, nil, nil
mq = false
bodyVelocity = nil
mj = {}
me = fn319
nq = fn30
Toggles.Fly:OnChanged(fn714)
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
UserInputService.JumpRequest:Connect(onJumpRequest)
RunService.Stepped:Connect(onStepped)
RunService.RenderStepped:Connect(function()
    if Library.Unloaded then
        return
    end
    if m_("WalkSpeedEnabled") then
        local tw_1 = mo()
        if tw_1 then
            tw_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    local tw_2 = m_("Fly") and mq
    if tw_2 and bodyVelocity then
        local tw_3 = nC()
        local CurrentCamera = Workspace.CurrentCamera
        if tw_3 and CurrentCamera then
            local tw_4 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                tw_4 += CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                tw_4 -= CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                tw_4 -= CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                tw_4 += CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                tw_4 += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                tw_4 -= Vector3.new(0, 1, 0)
            end
            if tw_4.Magnitude > 0 then
                bodyVelocity.Velocity = tw_4.Unit * Options.FlySpeed.Value
            else
                bodyVelocity.Velocity = Vector3.zero
            end
        end
    end
    if m_("AntiGameplayPause") then
        pcall(function()
            LocalPlayer:SetAttribute("GameplayPaused", false)
        end)
        local tv = my()
        if tv then
            pcall(function()
                tv:SetAttribute("GameplayPaused", false)
            end)
        end
    end
    if m_("InstantProximityPrompt") then
        local tw_5 = no()
        if tw_5 then
            for i, descendant in ipairs(tw_5:GetDescendants()) do
                local tw_6 = descendant:IsA("ProximityPrompt") and descendant.HoldDuration ~= 0
                if tw_6 then
                    descendant.HoldDuration = 0
                end
            end
        end
    end
end)
task.spawn(worker3)
u3_11 = nT.Settings:AddLeftGroupbox("Menu")
u3_11:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
nv = tick()
ns = tick()
nn = 0
Label4 = nil
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local tZ = v
        pcall(function()
            tZ:Disable()
        end)
    end
end)
m3 = function()
    if not Workspace.CurrentCamera then
        return
    end
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    ns = tick()
    nn += 1
    if Label4 then
        pcall(function()
            Label4:SetText("AFK triggers: " .. nn)
        end)
    end
end
UserInputService.InputBegan:Connect(function()
    nv = tick()
end)
UserInputService.InputChanged:Connect(function(h0)
    local UserInputType = h0.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nv = tick()
    end
end)
u3_11:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
Label4 = u3_11:AddLabel("AFK triggers: 0")
u3_11:AddButton({
    Text = "Unload UI",
    Func = function()
        Library:Unload()
    end
})
task.spawn(function()
    while not Library.Unloaded do
        task.wait(2)
        if m_("AntiAfk") then
            local t4 = tick() - nv
            local t5 = tick() - ns
            if t4 >= 300 and t5 >= 60 then
                pcall(m3)
            else
                if t4 < 300 and t5 >= 300 then
                    pcall(m3)
                end
            end
        end
    end
end)
mP, mh, nx, mJ = nil, nil, nil, nil
Library:OnUnload(fn58)
nO:SetLibrary(Library)
nO:SetFolder("OuroborosHub")
nO:SaveDefault("Evil Hello Kitty")
nO:ApplyToTab(nT.Settings)
nO:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/ForgeAndSell")
u3_11 = SaveManager:BuildConfigSection(nT.Settings)
mP = fn490
mh = fn14
nx = fn816
mJ = function(iL)
    local uG
    uG = nil
    local uH = type(iL) ~= "table" or type(iL.idx) ~= "string" or type(iL.type) ~= "string" or SaveManager.Ignore[iL.idx]
    if uH then
        return false
    end
    uG = mP(iL.type, iL.idx)
    if not uG then
        return false
    end
    local uH_1 = pcall(function()
        if iL.type == "Input" then
            if type(iL.text) ~= "string" then
                return
            end
            uG:SetValue(iL.text)
        elseif iL.type == "ColorPicker" then
            uG:SetValueRGB(Color3.fromHex(iL.value), iL.transparency)
        elseif iL.type == "KeyPicker" then
            uG:SetValue({ iL.key, iL.mode, iL.modifiers })
            if iL.mode == "Toggle" and iL.toggled ~= nil then
                uG.Toggled = iL.toggled
                uG:Update()
            end
        else
            uG:SetValue(iL.value)
        end
    end)
    return uH_1
end
u3_11:AddDivider()
u3_11:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
u3_11:AddButton({ Text = "Export Config to Clipboard", Func = onExportConfigToClipboard })
u3_11:AddButton({ Text = "Import Config from Clipboard Field", Func = onImportConfigFromClipboardFie })
SaveManager:LoadAutoloadConfig()
