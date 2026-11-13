local Dr_2, Dr_3, Dr_4, Dr_6, Dr_8, Dr_11, Dr_12, Dr_13, Dr_15
local tj
local s0
local sI
local tp
local sp
local s6
local sO
local Options
local tc
local sU
local tB
local sB
local CollectZone
local s5
local sN
local tu
local su
local sT
local tA
local sA
local connection
local tG
local tn
local sn
local State
local sM
local st
local ta
local Toggles
local sY
local sF
local s3
local sL
local ss
local s9
local sR
local sy
local tf
local sX
local tE
local tl
local sK
local sr
local LocalPlayer
local sQ
local tx
local sx
local te
local sW
local tD
local sD
local tk
local tJ
local sJ
local tq
local sq
local s7
local td
local sV
local function fn33(bt)
    local vp = tostring(bt)
    local vq = tG()
    if vq[vp] == true then
        return true
    end
    for k, v in vq do
        if v == vp or v == bt then
            return true
        end
    end
    return false
end
local function fn96()
    local wg = if not sn() then 1 else 0
    if wg == 1 then
        return
    end
    if CollectZone and CollectZone.Parent then
        tn(CollectZone, 6)
    end
    s0("KickCollect")
end
local function fn136()
    local vT_1
    local vS_1
    vS_1, vT_1 = sD()
    local vS_2 = tl("EntityTool", vT_1) or tl("EntityTool", LocalPlayer.Backpack)
    if not vS_2 then
        return nil
    end
    local vS_3 = vS_2:GetAttribute("ID")
    local vU = vS_3 == ""
    local vV = type(vS_3) ~= "string" or vU
    if vV then
        vS_3 = vS_2.Name
    end
    local vU_1 = vS_2:GetAttribute("Level") or 1
    return vS_2, vS_3, vU_1
end
local function fn152()
    local x6 = if sn() then 1 else 0
    if x6 == 1 then
        return
    end
    local x0 = tonumber(sO.AddedSlots) or 0
    local x0_1 = tonumber(sO.MAX_SLOTS) or 20
    if x0 >= x0_1 then
        return
    end
    local x0_2 = td:GetPrice(x0 + 1)
    if sU(x0_2) then
        s0("bs_upgrade")
    end
end
local function fn175()
    return tk
end
local function fn227(f8)
    if f8 then
        tx("Weights", 0.55, function()
            if not sx() then
                return
            end
            tq()
        end)
    else
        st("Weights")
    end
end
local function fn228()
    gethui = sV
end
local function fn234()
    local Owned = sW.Owned
    if type(Owned) ~= "table" then
        return nil
    end
    local Name
    local wj = -1
    for k, v in tA do
        local wk = table.find(Owned, v.Name) and v.PPS >= wj
        if wk then
            wj = v.PPS
            Name = v.Name
        end
    end
    return Name
end
local function fn236()
    if sI.InGame == true then
        return true
    elseif LocalPlayer:GetAttribute("LocalKickBusy") == true then
        return true
    else
        local Status = sI.Status
        return Status == "Tsunami" or Status == "Kick"
    end
end
local function fn295(go)
    if type(go) == "table" then
        State.PlaceSlots = go
    end
end
local function onPlaceSlots(jA)
    sL.SetPlaceSlots(jA)
    if sJ("AutoPlace") then
        sL.SetAutoPlace(true, jA)
    end
    local zM = if sJ("AutoReplace") then 1 else 0
    if zM == 1 then
        sL.SetAutoReplace(true, jA)
    end
end
local function onAutoEscape(jn)
    sL.SetAutoEscape(jn == true)
end
local function fn360(gq)
    if gq then
        tx("Collect", 0.4, function()
            if not sx() then
                return
            end
            sK()
        end)
    else
        st("Collect")
    end
end
local function fn362(W)
    local uR = typeof(cloneref) == "function" and typeof(W) == "Instance"
    if uR then
        return cloneref(W)
    end
    return W
end
local function onAuto2xBonus(js)
    sL.SetAuto2x(js == true)
end
local function onAutoRebirth(jN)
    sL.SetAutoRebirth(jN == true)
end
local function fn420(fS)
    State.Auto2x = fS == true
    if fS then
        tx("Bonus", 0.15, function()
            local yj = not sx() or not State.Auto2x
            if yj then
                return
            end
            tB()
        end)
    else
        st("Bonus")
    end
end
local function fn422()
    local ww_1
    local wv_1
    wv_1, ww_1 = sD()
    local wv_2 = tl("SquatTool", ww_1) or tl("SquatTool", LocalPlayer.Backpack)
    return wv_2
end
local function fn423(fL)
    if fL then
        tx("Train", 0.35, function()
            local yh = if not sx() then 1 else 0
            if yh == 1 then
                return
            end
            ta()
        end)
    else
        st("Train")
    end
end
local function fn446()
    local xm = sY()
    local xn = xm and xm:FindFirstChild("Slots")
    if not xn then
        return
    end
    for i, child in xn:GetChildren() do
        local xm_2 = ss(child)
        local xn_1 = sA(child)
        if xm_2 and xn_1 then
            local xo_1 = xn_1:GetAttribute("Coins") or 0
            if s7(xo_1) > 0 then
                s0("B_Collect", xm_2)
            end
        end
    end
end
local function fn461(gf, gg)
    if type(gg) == "table" then
        State.PlaceSlots = gg
    end
    if gf then
        tx("Place", 0.35, function()
            if not sx() then
                return
            end
            sN()
        end)
    else
        st("Place")
    end
end
local function fn490()
    sR = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end
local function onAutoBuyRunUpgrades(jv)
    sL.SetAutoSpeed(jv == true)
end
local function fn494()
    local PlaceSlots = State.PlaceSlots
    if type(PlaceSlots) ~= "table" then
        return te
    end
    return PlaceSlots
end
local function fn528()
    local Character = LocalPlayer.Character
    local uZ = Character and Character:FindFirstChildOfClass("Humanoid")
    local u_ = Character
    if u_ then
        local uZ_1 = Character:FindFirstChild("HumanoidRootPart") or Character.PrimaryPart
        u_ = uZ_1
    end
    local uZ_2 = u_
    if u_ then
        u_ = uZ
    end
    if u_ then
        u_ = uZ.Health > 0
    end
    if u_ then
        return uZ_2, Character, uZ
    end
end
local function worker()
    while true do
        local yS = sx() and sB and not sB.Unloaded
        if yS then
            sy()
            task.wait(1)
            continue
        end
        break
    end
end
local function fn559(hW)
    local y0 = Toggles[hW]
    return y0 ~= nil and y0.Value == true
end
local function fn648(f1)
    if f1 then
        tx("Speed", 0.45, function()
            if not sx() then
                return
            end
            tJ()
        end)
    else
        st("Speed")
    end
end
local function fn706(hH, hI)
    local yW_1
    local yV_1
    if type(setclipboard) == "function" then
        yV_1 = setclipboard
    else
        if type(toclipboard) == "function" then
            yW_1 = toclipboard
        else
            yW_1 = nil
        end
        yV_1 = yW_1
    end
    local yW_2 = yV_1
    if type(yW_2) ~= "function" then
        sB:Notify("Clipboard is unavailable")
        return
    end
    local yV_2 = pcall(yW_2, hH)
    if yV_2 then
        sB:Notify(hI)
    else
        sB:Notify("Failed to copy")
    end
end
local function onAutoBuySlots(jP)
    sL.SetAutoSlots(jP == true)
end
local function fn761(bn)
    if not bn then
        return nil
    end
    return tonumber((bn.Name:gsub("Slot", "")))
end
local function onAutoReplace(jJ)
    sL.SetAutoReplace(jJ == true, sr(Options.PlaceSlots))
end
local function fn860(hS)
    local DiscordGroup = hS:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = s5 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = s5 })
end
local function fn869(fv)
    if fv then
        tx("Kick", 0.2, function()
            local ya = if not sx() then 1 else 0
            if ya == 1 then
                return
            end
            if sn() then
                return
            end
            tD()
        end)
    else
        st("Kick")
    end
end
local function fn877(gx, gy)
    if type(gy) == "table" then
        State.PlaceSlots = gy
    end
    if gx then
        tx("Replace", 0.4, function()
            if not sx() then
                return
            end
            tj()
        end)
    else
        st("Replace")
    end
end
local function onAutoPlace(jD)
    sL.SetAutoPlace(jD == true, sr(Options.PlaceSlots))
end
local function fn904(h0)
    local y3 = h0 and h0.Value
    if type(y3) ~= "table" then
        return {}
    end
    return y3
end
local function fn944(cz)
    State.Tokens[cz] += 1
end
local function fn949()
    if coroutine.status(sT) ~= "dead" then
        pcall(task.cancel, sT)
    end
end
local function onAutoTrain(jq)
    sL.SetAutoTrain(jq == true)
end
local function fn962(gG)
    if gG then
        tx("Rebirth", 1, function()
            if not sx() then
                return
            end
            sp()
        end)
    else
        st("Rebirth")
    end
end
local function fn1005(a5, a6)
    local u3_1
    local u2_1
    u2_1, u3_1 = sD()
    if not (u2_1 and u3_1 and a5 and a5.Parent) then
        return false
    end
    local u2_2 = a6 or 4
    u3_1:PivotTo(CFrame.new(a5.Position + Vector3.new(0, u2_2, 0)))
    return true
end
local function fn1008()
    if sn() then
        return
    end
    local w_ = s6()
    if w_ > 0 then
        s0("SPEED_UPGRADE", w_)
    end
end
local function onAutoCollect(jH)
    sL.SetAutoCollect(jH == true)
end
local function onAutoPerfectKick(jl)
    sL.SetAutoKick(jl == true)
end
local function fn1118()
    local xX = if sn() then 1 else 0
    if xX == 1 then
        return
    end
    local xR = tonumber(sQ.RebirthLevel) or 0
    local xR_1 = (tonumber(tc.MAX_REBIRTH))
    local xX_1 = if xR_1 then 1 else 0
    local xV = 315 * xX_1 + 1877 * (1 - xX_1)
    local xW = 3313 * xX_1 + 2466 * (1 - xX_1)
    if not ((xV * 847 + xW * 1646 + xV * xW) % 16777213 == 6763598) then
        xR_1 = 10
    end
    if xR >= xR_1 then
        return
    end
    local xR_2 = tc:GetKickRequirement(xR + 1)
    local xS_1 = tonumber(s3.Level) or 0
    if xS_1 >= s7(xR_2) then
        s0("RebirthRequest")
    end
end
local function fn1137(gN)
    if gN then
        tx("Slots", 0.6, function()
            if not sx() then
                return
            end
            tf()
        end)
    else
        st("Slots")
    end
end
local function fn1151(aG, aH)
    return aG.PPS < aH.PPS
end
local function fn1167(bL, bM)
    local vF = bL == ""
    local vG = type(bL) ~= "string" or vF
    if vG then
        return 0, 0
    end
    local vF_1 = s9.Brainrots[bL]
    if type(vF_1) ~= "table" then
        return 0, 0
    end
    local vG_1 = tonumber(vF_1.CPS) or 0
    local vG_2 = tE[vF_1.Rarity] or 0
    local vG_3 = tonumber(bM) or 1
    return vG_1 * math.max(vG_3, 1), vG_2
end
local function fn1195()
    local Model = sM.Model
    if Model and Model.Parent then
        local attr = Model:GetAttribute("OwnerUserId")
        local vb = attr == nil
        local vf = if vb then 1 else 0
        local vd = 933 * vf + 3350 * (1 - vf)
        local ve = 3923 * vf + 1329 * (1 - vf)
        if not ((vd * 3390 + ve * 1221 + vd * ve) % 16777213 == 11613012) then
            vb = attr == LocalPlayer.UserId
        end
        if vb then
            return Model
        end
    end
    for i, child in su:GetChildren() do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            return child
        end
    end
end
local function fn1198()
    if sn() then
        return
    end
    local Owned = sW.Owned
    if type(Owned) ~= "table" then
        return
    end
    for k, v in tA do
        local w2_1 = v.Product == nil and not table.find(Owned, v.Name) and sU(v.Cost)
        if w2_1 then
            s0("Shop_Buy", "WeightShop", v.Name)
            return
        end
    end
    local w2_2 = sF()
    local w1_1 = type(w2_2) == "string" and sW.Equipped ~= w2_2
    if w1_1 then
        s0("WeightEquip", w2_2)
    end
end
local function fn1204(bU, bV)
    if not bV then
        return nil
    end
    for i, child in bV:GetChildren() do
        local vK = child:IsA("Tool") and child:HasTag(bU)
        if vK then
            return child
        end
    end
end
local function fn1213(b8)
    local vX = b8 and b8:FindFirstChild("PlacedPart")
    return vX
end
local function onAutoBuyWeights(jx)
    sL.SetAutoWeights(jx == true)
end
local function fn1242()
    return not sL.Unloaded
end
local function fn1265()
    tu(sq, "Copied Discord invite to clipboard")
end
local function fn1271(bA)
    if type(bA) == "number" then
        return bA
    end
    local vz = tonumber(tostring(bA))
    return vz or 0
end
local function fn1275()
    connection:Disconnect()
end
local function fn1278()
    local yE = not sx() or not State.Auto2x
    if yE then
        return
    end
    if os.clock() - State.LastBonus < 0.05 then
        return
    end
    State.LastBonus = os.clock()
    s0("TaviMishkal")
end
local function fn1279(fE)
    if fE then
        tx("Escape", 0.12, function()
            if not sx() then
                return
            end
            sX()
        end)
    else
        st("Escape")
    end
end
local function fn1301()
    return tp.OnClientEvent("TaviMishkal")
end
sn = nil
sp = nil
sq = nil
sr = nil
ss = nil
st = nil
su = nil
Options = nil
sx = nil
sy = nil
Toggles = nil
sA = nil
sB = nil
sD = nil
sF = nil
sI = nil
sJ = nil
sK = nil
sL = nil
sM = nil
sN = nil
sO = nil
local sP
sQ = nil
sR = nil
sT = nil
sU = nil
sV = nil
sW = nil
sX = nil
sY = nil
connection = nil
s0 = nil
s3 = nil
State = nil
s5 = nil
s6 = nil
s7 = nil
LocalPlayer = nil
local Players, so, sw, sC, sE, sG, sH, sS, s_, PlayerGui, s2
s9 = nil
ta = nil
tc = nil
td = nil
te = nil
tf = nil
tj = nil
tk = nil
tl = nil
tn = nil
tp = nil
tq = nil
tu = nil
tx = nil
tA = nil
tB = nil
tD = nil
tE = nil
tG = nil
CollectZone = nil
tJ = nil
local tb, Lighting, TeleportService, GuiService, HttpService, tv, VirtualUser, UserInputService, RunService, tF, tI, tW
tb = nil
Lighting = nil
local th
TeleportService = nil
local tm
GuiService = nil
local tr
HttpService = nil
local tt
tv = nil
VirtualUser = nil
UserInputService = nil
RunService = nil
tF = nil
tI = nil
local tX, tY, t_, t0, t1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, tk, TeleportService, Lighting, tb, LocalPlayer, PlayerGui, sV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Dr_16 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
tk = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
game:GetService("CollectionService")
tb = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Dr_9 = "OuroborosKickAnUma"
if (Lighting and not Lighting and (Lighting or not Lighting) or (sV and not sV or sV and Lighting) or (not sV or Lighting or Lighting and not VirtualUser) and ((not Lighting or VirtualUser) and (VirtualUser and Lighting))) and ((not sV and not VirtualUser and (not sV or not VirtualUser) or (VirtualUser or not Lighting or (sV or Lighting))) and (not sV and VirtualUser or not Lighting and VirtualUser or (not sV or not sV) and (not sV and VirtualUser))) and not ((Lighting and not Lighting and (Lighting or not Lighting) or (sV and not sV or sV and Lighting) or (not sV or Lighting or Lighting and not VirtualUser) and ((not Lighting or VirtualUser) and (VirtualUser and Lighting))) and ((not sV and not VirtualUser and (not sV or not VirtualUser) or (VirtualUser or not Lighting or (sV or Lighting))) and (not sV and VirtualUser or not Lighting and VirtualUser or (not sV or not sV) and (not sV and VirtualUser)))) then
    tk = fn175
else
    sV = fn175
end
if getgenv then
    getgenv().gethui = sV
end
sL, Dr_13, tW, Dr_15, Dr_8, Dr_3, Dr_12, tp, tm, tX, th, td, tc, s9, s3, s_, sW, sS, sQ, sO, sM, sI, sE, Dr_4, su, so, CollectZone, tE, tA, Dr_2, tY, Dr_11, sx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Dr_7 = 13
repeat
    local tZ = (Dr_7 * 9 + 17) % 19 + 1
    if tZ <= 10 then
        if tZ <= 5 then
            if tZ <= 3 then
                if tZ <= 2 then
                    if tZ <= 1 then
                        t_ = (vector.create((Dr_7 * 5 + 4) % 11 + 1, (Dr_7 * 6 + 4) % 13 + 1, (Dr_7 * 2 + 9) % 17 + 1))
                        t0 = (vector.create((Dr_7 * 5 + 2) % 11 + 1, (Dr_7 * 11 + 3) % 13 + 1, (Dr_7 * 15 + 17) % 17 + 1))
                        t1 = (vector.create((Dr_7 * 3 + 5) % 11 + 1, (Dr_7 * 4 + 1) % 13 + 1, (Dr_7 * 15 + 6) % 17 + 1))
                        if vector.dot(vector.cross(t_, t0), t1) == vector.dot(vector.cross(t0, t1), t_) then
                            tE = {
                                Common = 1,
                                Rare = 2,
                                Epic = 3,
                                Legendary = 4,
                                Mythic = 5,
                                Godly = 6,
                                Secret = 7,
                                Divine = 8,
                                Exclusive = 9,
                                Rainbow = 10,
                                Hacked = 11,
                                OG = 12,
                                Celestial = 13,
                                Demon = 14
                            }
                            tA = {}
                        else
                            tA = {
                                Legendary = 4,
                                Secret = 7,
                                Divine = 8,
                                Mythic = 5,
                                Demon = 14,
                                Rainbow = 10,
                                Epic = 3,
                                Celestial = 13,
                                Godly = 6,
                                Hacked = 11,
                                Rare = 2,
                                Common = 1,
                                Exclusive = 9,
                                OG = 12
                            }
                            tE = {}
                        end
                        Dr_7 = (Dr_7 + 36) % 76
                    else
                        if (not tX and tX and (not tX and tX) or (not tX or not Dr_4) and (Dr_4 and Dr_4)) and (sI and tX or (sI or tX) or (not sI or Dr_4 or not Dr_4 and not sI)) and not ((not tX and tX and (not tX and tX) or (not tX or not Dr_4) and (Dr_4 and Dr_4)) and (sI and tX or (sI or tX) or (not sI or Dr_4 or not Dr_4 and not sI))) then
                            pcall(fn228)
                            tY = function(v)
                                local uI
                                local uK
                                local uJ
                                uI = nil
                                uJ = nil
                                uK = nil
                                local uL = v ~= ""
                                local uM = type(v) == "string" and uL
                                assert(uM, "A namespace is required")
                                assert(type(getgenv) == "function", "getgenv is unavailable")
                                uI = getgenv()
                                assert(type(uI) == "table", "getgenv did not return a table")
                                local uL_2 = uI[v]
                                if uL_2 ~= nil then
                                    local uM_2 = type(uL_2) == "table" and type(uL_2.Unload) == "function"
                                    assert(uM_2, "Namespace is occupied")
                                    uL_2.Unload()
                                    assert(uI[v] == nil, "Previous instance did not release its namespace")
                                end
                                uJ = {}
                                uK = { State = {}, Unloaded = false }
                                uK.Track = function(B)
                                    assert(type(B) == "function", "Cleanup must be callable")
                                    if uK.Unloaded then
                                        B()
                                    else
                                        table.insert(uJ, B)
                                    end
                                    return B
                                end
                                uK.Unload = function()
                                    local uy_2
                                    local ux_2
                                    if uK.Unloaded then
                                        return
                                    end
                                    uK.Unloaded = true
                                    local uv = {}
                                    local uC = #uJ
                                    local uB = -1
                                    while false and uC <= 1 or true and uC >= 1 do
                                        local uD = uC
                                        local uw_2 = table.remove(uJ, uD)
                                        ux_2, uy_2 = pcall(uw_2)
                                        if not ux_2 then
                                            table.insert(uv, tostring(uy_2))
                                        end
                                        uC += uB
                                    end
                                    table.clear(uK.State)
                                    if #uv > 0 then
                                        error("Cleanup incomplete: " .. table.concat(uv, "; "), 0)
                                    end
                                    if uI[v] == uK then
                                        uI[v] = nil
                                    end
                                end
                                uI[v] = uK
                                return uK
                            end
                            sL = function(O, P)
                                local uP = type(O) == "table" and type(O.Track) == "function"
                                assert(uP, "FeatureAPI required")
                                local uP_2 = type(P) == "table" and type(P.OnUnload) == "function"
                                assert(uP_2, "UI library required")
                                assert(type(P.Unload) == "function", "UI unload required")
                                O.Track(function()
                                    if not P.Unloaded then
                                        P:Unload()
                                    end
                                end)
                                P:OnUnload(function()
                                    O.Unload()
                                end)
                            end
                            Dr_9 = tY(Dr_2)
                        else
                            pcall(fn228)
                            Dr_2 = function(v)
                                local uI
                                local uK
                                local uJ
                                uI = nil
                                uJ = nil
                                uK = nil
                                local uL = v ~= ""
                                local uM = type(v) == "string" and uL
                                assert(uM, "A namespace is required")
                                assert(type(getgenv) == "function", "getgenv is unavailable")
                                uI = getgenv()
                                assert(type(uI) == "table", "getgenv did not return a table")
                                local uL_1 = uI[v]
                                if uL_1 ~= nil then
                                    local uM_1 = type(uL_1) == "table" and type(uL_1.Unload) == "function"
                                    assert(uM_1, "Namespace is occupied")
                                    uL_1.Unload()
                                    assert(uI[v] == nil, "Previous instance did not release its namespace")
                                end
                                uJ = {}
                                uK = { State = {}, Unloaded = false }
                                uK.Track = function(B)
                                    assert(type(B) == "function", "Cleanup must be callable")
                                    if uK.Unloaded then
                                        B()
                                    else
                                        table.insert(uJ, B)
                                    end
                                    return B
                                end
                                uK.Unload = function()
                                    local uy_1
                                    local ux_1
                                    if uK.Unloaded then
                                        return
                                    end
                                    uK.Unloaded = true
                                    local uv = {}
                                    local uC = #uJ
                                    local uB = -1
                                    while false and uC <= 1 or true and uC >= 1 do
                                        local uD = uC
                                        local uw_1 = table.remove(uJ, uD)
                                        ux_1, uy_1 = pcall(uw_1)
                                        if not ux_1 then
                                            table.insert(uv, tostring(uy_1))
                                        end
                                        uC += uB
                                    end
                                    table.clear(uK.State)
                                    if #uv > 0 then
                                        error("Cleanup incomplete: " .. table.concat(uv, "; "), 0)
                                    end
                                    if uI[v] == uK then
                                        uI[v] = nil
                                    end
                                end
                                uI[v] = uK
                                return uK
                            end
                            tY = function(O, P)
                                local uP = type(O) == "table" and type(O.Track) == "function"
                                assert(uP, "FeatureAPI required")
                                local uP_1 = type(P) == "table" and type(P.OnUnload) == "function"
                                assert(uP_1, "UI library required")
                                assert(type(P.Unload) == "function", "UI unload required")
                                O.Track(function()
                                    if not P.Unloaded then
                                        P:Unload()
                                    end
                                end)
                                P:OnUnload(function()
                                    O.Unload()
                                end)
                            end
                            sL = Dr_2(Dr_9)
                        end
                        Dr_7 = (Dr_7 + 17) % 76
                    end
                else
                    local DE = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_7, 15), string.byte(tostring(s3))), 31)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(DE, 2588556094), 10), 686619241) == bit32.lrotate(DE, 10) then
                        Dr_11 = fn362
                    else
                        tA = fn362
                    end
                    Dr_7 = (Dr_7 + 74) % 76
                end
            elseif tZ <= 4 then
                local Eo = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_7, 28), string.byte(tostring(sO))), 29)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Eo, 1733718569), 3867883329), (bit32.bxor(bit32.band(Eo, 2561248726), 3954332226))), 3867883329), 3954332226) == Eo then
                    sx = fn1242
                else
                    Dr_3 = fn1242
                end
                Dr_7 = (Dr_7 + 55) % 76
            else
                t_ = {
                    "wjdkv",
                    "tnlp",
                    "yag",
                    "vchurigvssh",
                    "widvpha",
                    "kfa",
                    "ckpkdtnacchh",
                    "rea",
                    "cgqekbwroy",
                    "spwynchhyk",
                    "yuznzpm",
                    "ufbxnpfxz",
                    "bxj"
                }
                if t_[(Dr_7 * 69 + 109) % 13 + 1] <= t_[(Dr_7 * 69 + 109) % 13 + 1] then
                    Dr_13 = Dr_11(Dr_16)
                else
                    Dr_16 = Dr_13(Dr_11)
                end
                Dr_7 = (Dr_7 + 17) % 76
            end
        elseif tZ <= 8 then
            if tZ <= 7 then
                if tZ <= 6 then
                    if ((sO or Dr_12) and (not Dr_12 and Dr_12) or (not Dr_12 or not Dr_12 or Dr_12 and not Dr_12) or (sO or not sO) and (not Dr_12 and not sO) and ((not sO or sO) and (not sO and not Dr_12))) and ((sO or Dr_12) and (not sO or not Dr_12) and (not Dr_12 and not Dr_12 or (not Dr_12 or Dr_12)) and (not Dr_12 and not Dr_12 or Dr_12 and Dr_12 or (not Dr_12 and not sO or not sO and sO))) and not (((sO or Dr_12) and (not Dr_12 and Dr_12) or (not Dr_12 or not Dr_12 or Dr_12 and not Dr_12) or (sO or not sO) and (not Dr_12 and not sO) and ((not sO or sO) and (not sO and not Dr_12))) and ((sO or Dr_12) and (not sO or not Dr_12) and (not Dr_12 and not Dr_12 or (not Dr_12 or Dr_12)) and (not Dr_12 and not Dr_12 or Dr_12 and Dr_12 or (not Dr_12 and not sO or not sO and sO)))) then
                        tb = tW(Dr_11)
                    else
                        tW = Dr_11(tb)
                    end
                    Dr_7 = (Dr_7 + 55) % 76
                else
                    t_ = {
                        "vlg",
                        "sdbouqjssf",
                        "vzy",
                        "mnwmlp",
                        "gnbrlnyosih",
                        "tzoghhf",
                        "pdzggxehaw",
                        "egxe",
                        "aiagfdyirf",
                        "igqzkqintsnv",
                        "qzpxcpme",
                        "bcofpns"
                    }
                    if t_[(Dr_7 * 28 + 99) % 12 + 1] <= t_[(Dr_7 * 28 + 99) % 12 + 1] then
                        Dr_15 = Dr_11(Dr_13:WaitForChild("Shared"))
                    else
                        Dr_13 = Dr_15(Dr_11:WaitForChild("Shared"))
                    end
                    Dr_7 = (Dr_7 + 17) % 76
                end
            else
                t_ = {
                    "trixivevz",
                    "zum",
                    "pyxnsremknv",
                    "cooiuwnqx",
                    "aiknziyzyr",
                    "edfvrrvjx",
                    "hkqmsuwuit",
                    "lcgyijkk",
                    "pdx"
                }
                local DU = Dr_7
                t0 = t_[DU % 9 + 1]
                local t9 = if t0:len() <= t0:reverse():rep(DU % 3 + 2):len() then 1 else 0
                if t9 == 1 then
                    Dr_8 = Dr_11(Dr_15:WaitForChild("Packages"))
                else
                    Dr_15 = Dr_8(Dr_11:WaitForChild("Packages"))
                end
                Dr_7 = (Dr_7 + 17) % 76
            end
        elseif tZ <= 9 then
            t_ = (vector.create((Dr_7 * 2 + 3) % 11 + 1, (Dr_7 * 2 + 10) % 13 + 1, (Dr_7 * 12 + 16) % 17 + 1))
            t0 = (vector.create((Dr_7 * 2 + 7) % 11 + 1, (Dr_7 * 10 + 6) % 13 + 1, (Dr_7 * 7 + 7) % 17 + 1))
            t1 = (vector.create((Dr_7 * 7 + 2) % 11 + 1, (Dr_7 * 8 + 9) % 13 + 1, (Dr_7 * 10 + 17) % 17 + 1))
            local t2 = (vector.create((Dr_7 * 2 + 7) % 11 + 1, (Dr_7 * 9 + 1) % 13 + 1, (Dr_7 * 14 + 11) % 17 + 1))
            if vector.dot(vector.cross(t_, t0), (vector.cross(t1, t2))) == vector.dot(t_, t1) * vector.dot(t0, t2) - vector.dot(t_, t2) * vector.dot(t0, t1) + 1 then
                Dr_15 = Dr_3(Dr_11:WaitForChild("Data"))
            else
                Dr_3 = Dr_11(Dr_15:WaitForChild("Data"))
            end
            Dr_7 = (Dr_7 + 17) % 76
        else
            t_ = {
                "nxczotgoya",
                "qhjsxn",
                "aadtukem",
                "gxfamnhg",
                "rydcbpcrmv",
                "crgcarw",
                "alxanbqnk",
                "jigsbdfjtld",
                "msuyvsps",
                "mlxmylyw",
                "bjoxnge",
                "qwrkgeif"
            }
            if t_[(Dr_7 * 59 + 3) % 12 + 1] < t_[(Dr_7 * 59 + 3) % 12 + 1] then
                Dr_13 = Dr_12(Dr_11:WaitForChild("Modules"))
            else
                Dr_12 = Dr_11(Dr_13:WaitForChild("Modules"))
            end
            Dr_7 = (Dr_7 + 74) % 76
        end
    elseif tZ <= 15 then
        if tZ <= 13 then
            if tZ <= 12 then
                if tZ <= 11 then
                    if (Dr_7 * 2 + 3) * 10 % 3 == ((Dr_7 * 2 + 3) * 10 + 8) % 3 then
                        Dr_3 = require(th(Dr_11:WaitForChild("Network")))
                        Dr_15 = require(th(Dr_8:WaitForChild("Utility"):WaitForChild("InfiniteMath")))
                        tm = require(th(tX:WaitForChild("WeightsData")))
                        tp = require(th(tX:WaitForChild("SpeedData")))
                    else
                        tp = require(Dr_11(Dr_8:WaitForChild("Network")))
                        tm = require(Dr_11(Dr_15:WaitForChild("Utility"):WaitForChild("InfiniteMath")))
                        tX = require(Dr_11(Dr_3:WaitForChild("WeightsData")))
                        th = require(Dr_11(Dr_3:WaitForChild("SpeedData")))
                    end
                    Dr_7 = (Dr_7 + 55) % 76
                else
                    if (Dr_7 * 2 + 5) * 10 % 3 == ((Dr_7 * 2 + 5) * 10 + 5) % 3 then
                        Dr_3 = require(s9(Dr_11:WaitForChild("SlotUpgradesData")))
                        td = require(s9(Dr_11:WaitForChild("RebirthData")))
                        tc = require(s9(Dr_11:WaitForChild("EntitiesData")))
                    else
                        td = require(Dr_11(Dr_3:WaitForChild("SlotUpgradesData")))
                        tc = require(Dr_11(Dr_3:WaitForChild("RebirthData")))
                        s9 = require(Dr_11(Dr_3:WaitForChild("EntitiesData")))
                    end
                    Dr_7 = (Dr_7 + 55) % 76
                end
            else
                local Ev = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_7, 14), string.byte(tostring(sS))), 7)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Ev, 3536135904), 24), 3771909414) == bit32.lrotate(Ev, 24) then
                    s3 = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("KickServiceClient")))
                    s_ = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("SpeedServiceClient")))
                else
                    Dr_12 = require(s_(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("KickServiceClient")))
                    s3 = require(s_(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("SpeedServiceClient")))
                end
                Dr_7 = (Dr_7 + 74) % 76
            end
        elseif tZ <= 14 then
            if (s_ or Dr_4) and (Dr_4 and not Dr_4) and (Dr_4 or not s_ or (not Dr_4 or not sE)) or (Dr_4 and Dr_4 and (not s_ and not s_) or not sE and not sE and (s_ or Dr_4)) or ((not s_ or Dr_4) and (sE or not Dr_4) and ((not s_ or not Dr_4) and (sE or s_)) or (s_ or sE) and (not s_ or Dr_4) and (not Dr_4 and s_ and (not sE and not Dr_4))) or not ((s_ or Dr_4) and (Dr_4 and not Dr_4) and (Dr_4 or not s_ or (not Dr_4 or not sE)) or (Dr_4 and Dr_4 and (not s_ and not s_) or not sE and not sE and (s_ or Dr_4)) or ((not s_ or Dr_4) and (sE or not Dr_4) and ((not s_ or not Dr_4) and (sE or s_)) or (s_ or sE) and (not s_ or Dr_4) and (not Dr_4 and s_ and (not sE and not Dr_4)))) then
                sW = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("WeightServiceClient")))
                sS = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("ClientBalanceService")))
            else
                sS = require(sW(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("WeightServiceClient")))
                Dr_12 = require(sW(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("ClientBalanceService")))
            end
            Dr_7 = (Dr_7 + 36) % 76
        else
            t_ = (vector.create((Dr_7 * 5 + 7) % 11 + 1, (Dr_7 * 6 + 2) % 13 + 1, (Dr_7 * 11 + 14) % 17 + 1))
            t0 = (vector.create((Dr_7 * 3 + 5) % 11 + 1, (Dr_7 * 9 + 5) % 13 + 1, (Dr_7 * 6 + 17) % 17 + 1))
            local Em = vector.cross(t_, t0)
            local En = vector.dot(t_, t0)
            if vector.dot(Em, Em) + En * En == vector.dot(t_, t_) * vector.dot(t0, t0) + 1 then
                Dr_12 = require(sQ(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("RebirthServiceClient")))
            else
                sQ = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("RebirthServiceClient")))
            end
            Dr_7 = (Dr_7 + 55) % 76
        end
    elseif tZ <= 17 then
        if tZ <= 16 then
            if Dr_7 * 49381407 + 8 + 5 <= Dr_7 * 49381407 + 8 + 5 + 5 then
                sO = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("BaseUpgradesServiceClient")))
                sM = require(Dr_11(Dr_12:WaitForChild("ServicesLoader"):WaitForChild("ClientPlotService")))
            else
                Dr_12 = require(sM(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("BaseUpgradesServiceClient")))
                sO = require(sM(Dr_11:WaitForChild("ServicesLoader"):WaitForChild("ClientPlotService")))
            end
            Dr_7 = (Dr_7 + 36) % 76
        else
            t_ = (vector.create((Dr_7 * 7 + 1) % 11 + 1, (Dr_7 * 2 + 7) % 13 + 1, (Dr_7 * 14 + 10) % 17 + 1))
            t0 = (vector.create((Dr_7 * 2 + 1) % 11 + 1, (Dr_7 * 3 + 8) % 13 + 1, (Dr_7 * 10 + 15) % 17 + 1))
            local DS = vector.dot(t_, t0)
            if DS * DS >= vector.dot(t_, t_) * vector.dot(t0, t0) + 1 then
                Dr_12 = require(sI(Dr_11:WaitForChild("HandlerLoader"):WaitForChild("GameHandler")))
            else
                sI = require(Dr_11(Dr_12:WaitForChild("HandlerLoader"):WaitForChild("GameHandler")))
            end
            Dr_7 = (Dr_7 + 17) % 76
        end
    elseif tZ <= 18 then
        if tp and sS and (Dr_7 and th) and (tp or tp or (th or not Dr_7)) and not (tp and sS and (Dr_7 and th) and (tp or tp or (th or not Dr_7))) then
            Dr_12 = require(sE(Dr_11:WaitForChild("ControllerLoader"):WaitForChild("ZoneController")))
        else
            sE = require(Dr_11(Dr_12:WaitForChild("ControllerLoader"):WaitForChild("ZoneController")))
        end
        Dr_7 = (Dr_7 + 36) % 76
    else
        local Ei = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_7, 15), string.byte(tostring(Dr_15))), 13)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Ei, 3322245867), 28), 3160430382) == bit32.lrotate(Ei, 28) then
            Dr_6 = tW:WaitForChild("Areas")
            Dr_4 = tW:WaitForChild("Zones")
            su = tW:WaitForChild("Plots")
            so = Dr_6:FindFirstChild("KickReady")
            CollectZone = Dr_4:FindFirstChild("CollectZone")
        else
            tW = CollectZone:WaitForChild("Areas")
            Dr_6 = CollectZone:WaitForChild("Zones")
            so = CollectZone:WaitForChild("Plots")
            su = tW:FindFirstChild("KickReady")
            Dr_4 = Dr_6:FindFirstChild("CollectZone")
        end
        Dr_7 = (Dr_7 + 55) % 76
    end
until (Dr_7 * 11 + 72) % 76 == 25
for k, v in tX.Weights do
    Dr_13 = type(k) == "string" and type(v) == "table"
    if Dr_13 then
        Dr_13 = #tA + 1
        Dr_4 = tonumber(v.PPS) or 0
        tA[Dr_13] = { Name = k, PPS = Dr_4, Cost = v.Cost, Product = v.Product }
    end
end
table.sort(tA, fn1151)
te = {}
Dr_13 = {}
local ul = 1
while ul <= 30 do
    local um = ul
    Dr_4 = tostring(um)
    Dr_13[um] = Dr_4
    if um <= 10 then
        te[#te + 1] = Dr_4
    end
    ul += 1
end
State, s0, sD, tn, sY, ss, tG, tr, s7, sU, sw, tl, s2, sA, sn, tx, st, tD, sX, sF, tt, ta, tB, s6, tJ, tq, sN, sK, tj, sp, tf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Dr_9 = 94
repeat
    Dr_4 = (Dr_9 * 6 + 10) % 13 + 1
    if Dr_4 <= 7 then
        if Dr_4 <= 4 then
            if Dr_4 <= 2 then
                if Dr_4 <= 1 then
                    Dr_16 = {
                        "wdxu",
                        "kovijudwqq",
                        "xpzsu",
                        "qkdjoobwdnp",
                        "ymktwehisn",
                        "vduljyjmwho",
                        "lljbcpops",
                        "pgnuzcm",
                        "dbavuoxb",
                        "trizssotc",
                        "paadxegkup"
                    }
                    local D1 = Dr_9
                    Dr_6 = Dr_16[D1 % 11 + 1]
                    if Dr_6:len() >= Dr_6:gsub("(.)", "%1%1", D1 % 3 % 2 + 1):len() then
                        tx = fn152
                    else
                        tf = fn152
                    end
                    Dr_9 = (Dr_9 + 50) % 104
                else
                    Dr_16 = {
                        "kqiny",
                        "wblvvmvmtkvf",
                        "xwwkumlbwuch",
                        "dfqxp",
                        "pjcv",
                        "qamiqusg",
                        "dnjivmy",
                        "hdpxbgqx",
                        "ynzevlxqxxnt",
                        "roktwauoczh",
                        "rofwj",
                        "jdslw",
                        "bvtcr",
                        "tacx"
                    }
                    if Dr_16[(Dr_9 * 33 + 11) % 14 + 1] < Dr_16[(Dr_9 * 33 + 11) % 14 + 1] then
                        sL.SetAutoKick = fn869
                        sL.SetAutoEscape = fn1279
                        sL.SetAutoTrain = fn423
                        sL.SetAuto2x = fn420
                        sL.SetAutoSpeed = fn648
                        sL.SetAutoWeights = fn227
                        sL.SetAutoPlace = fn461
                        sL.SetPlaceSlots = fn295
                        sL.SetAutoCollect = fn360
                        sL.SetAutoReplace = fn877
                        sL.SetAutoRebirth = fn962
                        sL.SetAutoSlots = fn1137
                    else
                        sL.SetAutoKick = fn869
                        sL.SetAutoEscape = fn1279
                        sL.SetAutoTrain = fn423
                        sL.SetAuto2x = fn420
                        sL.SetAutoSpeed = fn648
                        sL.SetAutoWeights = fn227
                        sL.SetAutoPlace = fn461
                        sL.SetPlaceSlots = fn295
                        sL.SetAutoCollect = fn360
                        sL.SetAutoReplace = fn877
                        sL.SetAutoRebirth = fn962
                        sL.SetAutoSlots = fn1137
                    end
                    Dr_9 = (Dr_9 + 63) % 104
                end
            elseif Dr_4 <= 3 then
                Dr_16 = {
                    "khfcbjcp",
                    "zupottkc",
                    "yjzygn",
                    "qipmrfg",
                    "mriunxarvu",
                    "oxftua",
                    "nykm",
                    "kvcbgf",
                    "buql",
                    "xyizmsva"
                }
                local Eq = Dr_9
                Dr_6 = Dr_16[Eq % 10 + 1]
                if Dr_6:len() >= Dr_6:reverse():rep(Eq % 3 + 2):len() then
                    sL = s0.State
                    sL.Tokens = {
                        Train = 0,
                        Collect = 0,
                        Bonus = 0,
                        Rebirth = 0,
                        Replace = 0,
                        Kick = 0,
                        Weights = 0,
                        Slots = 0,
                        Place = 0,
                        Speed = 0,
                        Escape = 0
                    }
                    sL.Auto2x = false
                    sL.PlaceSlots = State
                    sL.LastKick = 0
                    sL.LastBonus = 0
                    te = function(aO, ...)
                        local uW = not sx() or type(tp.FireServer) ~= "function"
                        if uW then
                            return false
                        end
                        local uW_2 = pcall(function(...)
                            tp.FireServer(aO, ...)
                        end, ...)
                        return uW_2 == true
                    end
                else
                    State = sL.State
                    State.Tokens = {
                        Kick = 0,
                        Escape = 0,
                        Train = 0,
                        Bonus = 0,
                        Speed = 0,
                        Weights = 0,
                        Place = 0,
                        Collect = 0,
                        Replace = 0,
                        Rebirth = 0,
                        Slots = 0
                    }
                    State.Auto2x = false
                    State.PlaceSlots = te
                    State.LastKick = 0
                    State.LastBonus = 0
                    s0 = function(aO, ...)
                        local uW = not sx() or type(tp.FireServer) ~= "function"
                        if uW then
                            return false
                        end
                        local uW_1 = pcall(function(...)
                            tp.FireServer(aO, ...)
                        end, ...)
                        return uW_1 == true
                    end
                end
                Dr_9 = (Dr_9 + 37) % 104
            else
                local EA = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_9, 31), string.byte(tostring(sX))), 6)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(EA, 70231291), 1716864142), (bit32.bxor(bit32.band(EA, 4224736004), 2944482869))), 1716864142), 2944482869) ~= EA then
                    sY = fn528
                    sD = fn1005
                    tn = fn1195
                else
                    sD = fn528
                    tn = fn1005
                    sY = fn1195
                end
                Dr_9 = (Dr_9 + 102) % 104
            end
        elseif Dr_4 <= 6 then
            if Dr_4 <= 5 then
                if ((sU and not sU or (sN or false)) and (false or sU and false) or (not sU and false or (not sU or not st)) and (false and (s0 or sU)) or (false or (st or not st) or (false or (s0 or sN))) and ((sU or sN) and (not sU and sN) and ((not sU or not sU) and (st or sN)))) and not ((sU and not sU or (sN or false)) and (false or sU and false) or (not sU and false or (not sU or not st)) and (false and (s0 or sU)) or (false or (st or not st) or (false or (s0 or sN))) and ((sU or sN) and (not sU and sN) and ((not sU or not sU) and (st or sN)))) then
                    sU = fn761
                    tr = fn494
                    s7 = fn33
                    tG = fn1271
                    ss = function(bD)
                        local vD_2
                        local vC_2
                        if bD == nil then
                            return false
                        end
                        vC_2, vD_2 = pcall(function()
                            return bD <= sS.Balance
                        end)
                        if vC_2 then
                            return vD_2 == true
                        end
                        return s7(bD) <= s7(sS.Balance)
                    end
                else
                    ss = fn761
                    tG = fn494
                    tr = fn33
                    s7 = fn1271
                    sU = function(bD)
                        local vD_1
                        local vC_1
                        if bD == nil then
                            return false
                        end
                        vC_1, vD_1 = pcall(function()
                            return bD <= sS.Balance
                        end)
                        if vC_1 then
                            return vD_1 == true
                        end
                        return s7(bD) <= s7(sS.Balance)
                    end
                end
                Dr_9 = (Dr_9 + 89) % 104
            else
                if Dr_9 * 105826413 + 11 + 7 <= Dr_9 * 105826413 + 11 + 7 + 1 then
                    sw = fn1167
                    tl = fn1204
                    s2 = fn136
                else
                    s2 = fn1167
                    sw = fn1204
                    tl = fn136
                end
                Dr_9 = (Dr_9 + 63) % 104
            end
        else
            Dr_16 = (vector.create((Dr_9 * 6 + 4) % 11 + 1, (Dr_9 * 6 + 8) % 13 + 1, (Dr_9 * 6 + 4) % 17 + 1))
            Dr_6 = (vector.create((Dr_9 * 4 + 5) % 11 + 1, (Dr_9 * 3 + 9) % 13 + 1, (Dr_9 * 10 + 1) % 17 + 1))
            Dr_11 = (vector.create((Dr_9 * 6 + 7) % 11 + 1, (Dr_9 * 11 + 13) % 13 + 1, (Dr_9 * 14 + 17) % 17 + 1))
            if vector.dot(vector.cross(Dr_16, Dr_6), Dr_11) == vector.dot(vector.cross(Dr_6, Dr_11), Dr_16) then
                sA = fn1213
            else
                tB = fn1213
            end
            Dr_9 = (Dr_9 + 63) % 104
        end
    elseif Dr_4 <= 10 then
        if Dr_4 <= 9 then
            if Dr_4 <= 8 then
                local El = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_9, 21), string.byte(tostring(tr))), 15)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(El, 1776530391), 1374737840), (bit32.bxor(bit32.band(El, 2518436904), 1876015905))), 1374737840), 1876015905) ~= El then
                    tD = fn236
                    sn = function(cf, cg, ch)
                        State.Tokens[cf] += 1
                        local cj = State.Tokens[cf]
                        local ct = task.spawn(function()
                            while true do
                                local v2 = sx() and State.Tokens[cf] == cj
                                if v2 then
                                    if not sx() then
                                        break
                                    end
                                    pcall(ch)
                                    local v2_2 = not sx() or State.Tokens[cf] ~= cj
                                    if v2_2 then
                                        break
                                    end
                                    task.wait(cg)
                                    continue
                                end
                                break
                            end
                        end)
                        sL.Track(function()
                            State.Tokens[cf] += 1
                            if coroutine.status(ct) ~= "dead" then
                                pcall(task.cancel, ct)
                            end
                        end)
                    end
                    tx = fn944
                    st = function()
                        local v5
                        v5 = nil
                        local v7_2
                        local wb = if sn() then 1 else 0
                        if wb == 1 then
                            return
                        end
                        if os.clock() - State.LastKick < 1.25 then
                            return
                        end
                        local v6 = not so or not so.Parent
                        local v6_2
                        if v6 then
                            return
                        end
                        v7_2, v6_2, v5 = sD()
                        if not v7_2 then
                            return
                        end
                        if sE.Zone ~= "KickReady" then
                            tn(so, 5)
                            return
                        end
                        pcall(function()
                            v5:UnequipTools()
                        end)
                        State.LastKick = os.clock()
                        s0("KickEvent", 1)
                    end
                else
                    sn = fn236
                    tx = function(cf, cg, ch)
                        State.Tokens[cf] += 1
                        local cj = State.Tokens[cf]
                        local ct = task.spawn(function()
                            while true do
                                local v2 = sx() and State.Tokens[cf] == cj
                                if v2 then
                                    if not sx() then
                                        break
                                    end
                                    pcall(ch)
                                    local v2_1 = not sx() or State.Tokens[cf] ~= cj
                                    if v2_1 then
                                        break
                                    end
                                    task.wait(cg)
                                    continue
                                end
                                break
                            end
                        end)
                        sL.Track(function()
                            State.Tokens[cf] += 1
                            if coroutine.status(ct) ~= "dead" then
                                pcall(task.cancel, ct)
                            end
                        end)
                    end
                    st = fn944
                    tD = function()
                        local v5
                        v5 = nil
                        local v7_1
                        local wb = if sn() then 1 else 0
                        if wb == 1 then
                            return
                        end
                        if os.clock() - State.LastKick < 1.25 then
                            return
                        end
                        local v6 = not so or not so.Parent
                        local v6_1
                        if v6 then
                            return
                        end
                        v7_1, v6_1, v5 = sD()
                        if not v7_1 then
                            return
                        end
                        if sE.Zone ~= "KickReady" then
                            tn(so, 5)
                            return
                        end
                        pcall(function()
                            v5:UnequipTools()
                        end)
                        State.LastKick = os.clock()
                        s0("KickEvent", 1)
                    end
                end
                Dr_9 = (Dr_9 + 50) % 104
            else
                if Dr_9 * 47818983 + 13 + 5 <= Dr_9 * 47818983 + 13 + 5 + 1 then
                    sX = fn96
                    sF = fn234
                else
                    sF = fn96
                    sX = fn234
                end
                Dr_9 = (Dr_9 + 89) % 104
            end
        else
            Dr_16 = (vector.create((Dr_9 * 6 + 6) % 11 + 1, (Dr_9 * 11 + 12) % 13 + 1, (Dr_9 * 11 + 11) % 17 + 1))
            Dr_6 = (vector.create((Dr_9 * 1 + 3) % 11 + 1, (Dr_9 * 2 + 12) % 13 + 1, (Dr_9 * 14 + 6) % 17 + 1))
            local EE = vector.cross(Dr_16, Dr_6)
            local EF = vector.dot(Dr_16, Dr_6)
            if vector.dot(EE, EE) + EF * EF == vector.dot(Dr_16, Dr_16) * vector.dot(Dr_6, Dr_6) + 5 then
                tB = fn422
                tt = function()
                    local wy
                    if sn() then
                        return
                    end
                    local wA = sF()
                    local wA_3
                    local wB = type(wA) == "string" and sW.Equipped ~= wA
                    local wB_2
                    if wB then
                        s0("WeightEquip", wA)
                    end
                    local wz = tt()
                    wA_3, wB_2, wy = sD()
                    if wz and wy and wz.Parent ~= wB_2 then
                        pcall(function()
                            wy:EquipTool(wz)
                        end)
                    end
                end
                ta = function()
                    local KickUpgrades = PlayerGui:FindFirstChild("KickUpgrades")
                    if not KickUpgrades then
                        return
                    end
                    local Bonus = KickUpgrades:FindFirstChild("Bonus")
                    for i, descendant in KickUpgrades:GetDescendants() do
                        local wQ = descendant
                        local wG_2 = wQ:IsA("GuiButton") and wQ.Name == "Bonus" and wQ.Visible
                        if wG_2 and wQ ~= Bonus then
                            s0("TaviMishkal")
                            pcall(function()
                                wQ:Destroy()
                            end)
                            State.LastBonus = os.clock()
                        end
                    end
                end
            else
                tt = fn422
                ta = function()
                    local wy
                    if sn() then
                        return
                    end
                    local wA = sF()
                    local wA_1
                    local wB = type(wA) == "string" and sW.Equipped ~= wA
                    local wB_1
                    if wB then
                        s0("WeightEquip", wA)
                    end
                    local wz = tt()
                    wA_1, wB_1, wy = sD()
                    if wz and wy and wz.Parent ~= wB_1 then
                        pcall(function()
                            wy:EquipTool(wz)
                        end)
                    end
                end
                tB = function()
                    local KickUpgrades = PlayerGui:FindFirstChild("KickUpgrades")
                    if not KickUpgrades then
                        return
                    end
                    local Bonus = KickUpgrades:FindFirstChild("Bonus")
                    for i, descendant in KickUpgrades:GetDescendants() do
                        local wQ = descendant
                        local wG_1 = wQ:IsA("GuiButton") and wQ.Name == "Bonus" and wQ.Visible
                        if wG_1 and wQ ~= Bonus then
                            s0("TaviMishkal")
                            pcall(function()
                                wQ:Destroy()
                            end)
                            State.LastBonus = os.clock()
                        end
                    end
                end
            end
            Dr_9 = (Dr_9 + 76) % 104
        end
    elseif Dr_4 <= 12 then
        if Dr_4 <= 11 then
            local Fn = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_9, 31), string.byte(tostring(tr))), 14)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Fn, 3636822957), 1746669730), (bit32.bxor(bit32.band(Fn, 658144338), 101437017))), 1746669730), 101437017) == Fn then
                s6 = function()
                    local wW_2
                    local wT = tonumber(s_.Level) or 0
                    local wT_2
                    local wU = 0
                    local wR = tm.new(0)
                    local wZ = false
                    repeat
                        local wS
                        if wU < 250 then
                            wS = th:GetCostForLevel(wT + wU + 1)
                            wT_2, wW_2 = pcall(function()
                                return wR + wS
                            end)
                            if not wT_2 then
                                wZ = true
                            elseif not sU(wW_2) then
                                wZ = true
                            else
                                wU += 1
                                wR = wW_2
                            end
                        else
                            wZ = true
                        end
                    until wZ
                    return wU
                end
                tJ = fn1008
                tq = fn1198
            else
                tq = function()
                    local wW_1
                    local wT = tonumber(s_.Level) or 0
                    local wT_1
                    local wU = 0
                    local wR = tm.new(0)
                    local wZ = false
                    repeat
                        local wS
                        if wU < 250 then
                            wS = th:GetCostForLevel(wT + wU + 1)
                            wT_1, wW_1 = pcall(function()
                                return wR + wS
                            end)
                            if not wT_1 then
                                wZ = true
                            elseif not sU(wW_1) then
                                wZ = true
                            else
                                wU += 1
                                wR = wW_1
                            end
                        else
                            wZ = true
                        end
                    until wZ
                    return wU
                end
                s6 = fn1008
                tJ = fn1198
            end
            Dr_9 = (Dr_9 + 11) % 104
        else
            if (Dr_9 * 2 + 2) * 10 % 3 == ((Dr_9 * 2 + 2) * 10 + 3) % 3 then
                sN = function()
                    local xa
                    local xb
                    local xe_2
                    local xc_5
                    if sn() then
                        return
                    end
                    xa, xc_5 = s2()
                    local xd = not xa or type(xc_5) ~= "string"
                    local xd_6
                    if xd then
                        return
                    end
                    local xc_6 = sY()
                    local xd_5 = xc_6 and xc_6:FindFirstChild("Slots")
                    if not xd_5 then
                        return
                    end
                    xe_2, xd_6, xb = sD()
                    if xb and xa.Parent ~= LocalPlayer.Character then
                        pcall(function()
                            xb:EquipTool(xa)
                        end)
                    end
                    for i, child in xd_5:GetChildren() do
                        local xc_8 = ss(child)
                        local xd_8 = xc_8 and tr(xc_8) and not sA(child)
                        if xd_8 then
                            s0("S_Interact", xc_8)
                            return
                        end
                    end
                end
            else
                sA = function()
                    local xa
                    local xb
                    local xe_1
                    local xc_1
                    if sn() then
                        return
                    end
                    xa, xc_1 = s2()
                    local xd = not xa or type(xc_1) ~= "string"
                    local xd_2
                    if xd then
                        return
                    end
                    local xc_2 = sY()
                    local xd_1 = xc_2 and xc_2:FindFirstChild("Slots")
                    if not xd_1 then
                        return
                    end
                    xe_1, xd_2, xb = sD()
                    if xb and xa.Parent ~= LocalPlayer.Character then
                        pcall(function()
                            xb:EquipTool(xa)
                        end)
                    end
                    for i, child in xd_1:GetChildren() do
                        local xc_4 = ss(child)
                        local xd_4 = xc_4 and tr(xc_4) and not sA(child)
                        if xd_4 then
                            s0("S_Interact", xc_4)
                            return
                        end
                    end
                end
            end
            Dr_9 = (Dr_9 + 102) % 104
        end
    else
        Dr_4 = (vector.create((Dr_9 * 4 + 2) % 11 + 1, (Dr_9 * 7 + 4) % 13 + 1, (Dr_9 * 12 + 14) % 17 + 1))
        local Ft = vector.floor(Dr_4) + vector.ceil(Dr_4 * -1)
        if vector.dot(Ft, Ft) == 0 then
            sK = fn446
            tj = function()
                local xw
                local xx
                local xG_2
                local xB_2
                local xC_3
                local xz_6, xz_8
                local xy_6
                if sn() then
                    return
                end
                xw, xy_6, xz_6 = s2()
                local xA = not xw or type(xy_6) ~= "string"
                local xA_2
                if xA then
                    return
                end
                xB_2, xA_2 = sw(xy_6, xz_6)
                if xB_2 <= 0 and xA_2 <= 0 then
                    return
                end
                local xy_8 = sY()
                local xz_7 = xy_8 and xy_8:FindFirstChild("Slots")
                if not xz_7 then
                    return
                end
                xC_3, xz_8, xx = sD()
                if xx and xw.Parent ~= LocalPlayer.Character then
                    pcall(function()
                        xx:EquipTool(xw)
                    end)
                end
                local xz_10 = nil
                local xC_4 = 0
                for i, child in xz_7:GetChildren() do
                    local xy_10 = ss(child)
                    local xD = sA(child)
                    local xE = xy_10 and tr(xy_10)
                    local xF = xE and xD
                    local xF_2
                    if xF then
                        local attr = xD:GetAttribute("ID")
                        xF_2, xG_2 = sw(attr, xD:GetAttribute("Level"))
                        local xD_3 = xB_2 > xF_2
                        if not xD_3 then
                            xD_3 = xB_2 == xF_2 and xA_2 > xG_2
                        end
                        if xD_3 then
                            local xD_4 = xB_2 - xF_2 + (xA_2 - xG_2) * 0.01
                            if xD_4 > xC_4 then
                                xC_4 = xD_4
                                xz_10 = xy_10
                            end
                        end
                    end
                end
                if xz_10 then
                    s0("S_Interact", xz_10)
                end
            end
            sp = fn1118
        else
            sp = fn446
            sK = function()
                local xw
                local xx
                local xG_1
                local xB_1
                local xC_1
                local xz_1, xz_3
                local xy_1
                if sn() then
                    return
                end
                xw, xy_1, xz_1 = s2()
                local xA = not xw or type(xy_1) ~= "string"
                local xA_1
                if xA then
                    return
                end
                xB_1, xA_1 = sw(xy_1, xz_1)
                if xB_1 <= 0 and xA_1 <= 0 then
                    return
                end
                local xy_3 = sY()
                local xz_2 = xy_3 and xy_3:FindFirstChild("Slots")
                if not xz_2 then
                    return
                end
                xC_1, xz_3, xx = sD()
                if xx and xw.Parent ~= LocalPlayer.Character then
                    pcall(function()
                        xx:EquipTool(xw)
                    end)
                end
                local xz_5 = nil
                local xC_2 = 0
                for i, child in xz_2:GetChildren() do
                    local xy_5 = ss(child)
                    local xD = sA(child)
                    local xE = xy_5 and tr(xy_5)
                    local xF = xE and xD
                    local xF_1
                    if xF then
                        local attr = xD:GetAttribute("ID")
                        xF_1, xG_1 = sw(attr, xD:GetAttribute("Level"))
                        local xD_1 = xB_1 > xF_1
                        if not xD_1 then
                            xD_1 = xB_1 == xF_1 and xA_1 > xG_1
                        end
                        if xD_1 then
                            local xD_2 = xB_1 - xF_1 + (xA_1 - xG_1) * 0.01
                            if xD_2 > xC_2 then
                                xC_2 = xD_2
                                xz_5 = xy_5
                            end
                        end
                    end
                end
                if xz_5 then
                    s0("S_Interact", xz_5)
                end
            end
            tj = fn1118
        end
        Dr_9 = (Dr_9 + 63) % 104
    end
until (Dr_9 * 75 + 16) % 104 == 72
Dr_4, Dr_11, Dr_6 = nil, nil, nil
Dr_16 = 4
repeat
    Dr_9 = (Dr_16 * 1 + 0) % 2 + 1
    if Dr_9 <= 1 then
        if ((not Dr_16 and not Dr_4 or (Dr_4 or Dr_4)) and (Dr_4 and not Dr_16 and (Dr_11 and not Dr_11)) or (not Dr_11 and not Dr_11 and (not Dr_6 or not Dr_4) or Dr_16 and not Dr_4 and (Dr_16 and not Dr_16)) or (Dr_11 or Dr_11 or (not Dr_11 or Dr_6)) and (Dr_4 or Dr_11 or (not Dr_11 or Dr_16)) and (Dr_11 and not Dr_6 and (Dr_4 or not Dr_16) or (Dr_4 or not Dr_6 or not Dr_6 and Dr_16))) and not ((not Dr_16 and not Dr_4 or (Dr_4 or Dr_4)) and (Dr_4 and not Dr_16 and (Dr_11 and not Dr_11)) or (not Dr_11 and not Dr_11 and (not Dr_6 or not Dr_4) or Dr_16 and not Dr_4 and (Dr_16 and not Dr_16)) or (Dr_11 or Dr_11 or (not Dr_11 or Dr_6)) and (Dr_4 or Dr_11 or (not Dr_11 or Dr_16)) and (Dr_11 and not Dr_6 and (Dr_4 or not Dr_16) or (Dr_4 or not Dr_6 or not Dr_6 and Dr_16))) then
            Dr_11, Dr_4 = pcall(fn1301)
        else
            Dr_4, Dr_11 = pcall(fn1301)
        end
        Dr_16 = (Dr_16 + 9) % 16
    else
        Dr_9 = (vector.create((Dr_16 * 2 + 4) % 11 + 1, (Dr_16 * 11 + 6) % 13 + 1, (Dr_16 * 1 + 15) % 17 + 1))
        Dr_2 = (vector.create((Dr_16 * 1 + 7) % 11 + 1, (Dr_16 * 3 + 4) % 13 + 1, (Dr_16 * 8 + 13) % 17 + 1))
        Dr_7 = (vector.create((Dr_16 * 1 + 3) % 11 + 1, (Dr_16 * 6 + 3) % 13 + 1, (Dr_16 * 10 + 6) % 17 + 1))
        if vector.dot(vector.cross(Dr_9, Dr_2), Dr_7) == vector.dot(vector.cross(Dr_2, Dr_7), Dr_9) + 1 then
            Dr_4 = Dr_6
        else
            Dr_6 = Dr_4
        end
        Dr_16 = (Dr_16 + 9) % 16
    end
until (Dr_16 * 5 + 9) % 16 == 7
if Dr_6 then
    Dr_6 = Dr_11
end
if Dr_6 then
    Dr_4 = 2
    repeat
        local Ez = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_4, 28), string.byte(tostring(Dr_4))), 18)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Ez, 2631854086), 0), 2631854086) ~= bit32.lrotate(Ez, 0) then
            Dr_11 = type(Dr_6.Connect) == "function"
        else
            Dr_6 = type(Dr_11.Connect) == "function"
        end
        Dr_4 = (Dr_4 + 1) % 4
    until (Dr_4 * 3 + 2) % 4 == 3
end
if Dr_6 then
    connection = nil
    Dr_4 = 10
    repeat
        Dr_9 = (Dr_4 * 1 + 1) % 2 + 1
        if Dr_9 <= 1 then
            Dr_9 = (vector.create((Dr_4 * 5 + 2) % 11 + 1, (Dr_4 * 8 + 5) % 13 + 1, (Dr_4 * 8 + 16) % 17 + 1))
            Dr_16 = (vector.create((Dr_4 * 4 + 5) % 11 + 1, (Dr_4 * 2 + 8) % 13 + 1, (Dr_4 * 9 + 6) % 17 + 1))
            local Ej = vector.dot(Dr_9, Dr_16)
            if Ej * Ej <= vector.dot(Dr_9, Dr_9) * vector.dot(Dr_16, Dr_16) then
                sL.Track(fn1275)
            else
                sL.Track(fn1275)
            end
            Dr_4 = (Dr_4 + 9) % 16
        else
            if Dr_4 * 101490601 + 8 + 3 >= Dr_4 * 101490601 + 8 + 3 + 1 then
                Dr_11 = connection:Connect(fn1278)
            else
                connection = Dr_11:Connect(fn1278)
            end
            Dr_4 = (Dr_4 + 3) % 16
        end
    until (Dr_4 * 11 + 6) % 16 == 8
end
sR, Dr_16 = nil, nil
Dr_9 = 2
repeat
    Dr_4 = (Dr_9 * 1 + 0) % 2 + 1
    if Dr_4 <= 1 then
        local DT = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_9, 25), string.byte(tostring(Dr_16))), 20)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(DT, 903672475), 61077504), (bit32.bxor(bit32.band(DT, 3391294820), 2079016418))), 61077504), 2079016418) == DT then
            sR = "Kick an Uma"
        else
            Dr_16 = "Kick an Uma"
        end
        Dr_9 = (Dr_9 + 3) % 8
    else
        Dr_4 = {
            "hatl",
            "ymsux",
            "rpgexugzk",
            "timasrugyh",
            "tzsewlvdryi",
            "nal",
            "qtmlhsnw",
            "ctouzsbimxv",
            "veypuu",
            "pnpty",
            "xbplu"
        }
        local Fu = Dr_9
        Dr_6 = Dr_4[Fu % 11 + 1]
        if Dr_6:len() <= Dr_6:reverse():rep(Fu % 3 + 2):len() then
            pcall(fn490)
            Dr_16 = {}
        else
            pcall(fn490)
            sR = {}
        end
        Dr_9 = (Dr_9 + 1) % 8
    end
until (Dr_9 * 3 + 2) % 8 == 4
if type(getgenv) ~= "function" then
    Dr_4 = 3
    repeat
        Dr_9 = {
            "cojnc",
            "yca",
            "kumzcsfuy",
            "wtea",
            "lzopvw",
            "tebcjurepo",
            "aoa",
            "bsffharqgr",
            "jxgjmabmhm",
            "mghtlibyxrsf",
            "krkjuahbvolf",
            "mmqqmijrncd"
        }
        if Dr_9[(Dr_4 * 67 + 103) % 12 + 1] <= Dr_9[(Dr_4 * 67 + 103) % 12 + 1] then
            Dr_16[#Dr_16 + 1] = "getgenv"
        else
            Dr_16[#Dr_16 + 1] = "getgenv"
        end
        Dr_4 = (Dr_4 + 4) % 8
    until (Dr_4 * 5 + 1) % 8 == 4
end
if type(loadstring) ~= "function" then
    Dr_4 = 1
    repeat
        if (Dr_4 * 2 + 8) * 7 % 3 == ((Dr_4 * 2 + 8) * 7 + 8) % 3 then
            Dr_16[#Dr_16 + 1] = "loadstring"
        else
            Dr_16[#Dr_16 + 1] = "loadstring"
        end
        Dr_4 = (Dr_4 + 2) % 8
    until (Dr_4 * 7 + 7) % 8 == 4
end
if typeof(game.HttpGet) ~= "function" then
    Dr_4 = 1
    repeat
        Dr_9 = (vector.create((Dr_4 * 6 + 7) % 11 + 1, (Dr_4 * 11 + 4) % 13 + 1, (Dr_4 * 14 + 4) % 17 + 1))
        Dr_6 = (vector.create((Dr_4 * 3 + 6) % 11 + 1, (Dr_4 * 4 + 6) % 13 + 1, (Dr_4 * 15 + 6) % 17 + 1))
        Dr_11 = (vector.create((Dr_4 * 6 + 4) % 11 + 1, (Dr_4 * 6 + 7) % 13 + 1, (Dr_4 * 13 + 2) % 17 + 1))
        if vector.dot(vector.cross(Dr_9, Dr_6), Dr_11) == vector.dot(vector.cross(Dr_6, Dr_11), Dr_9) + 4 then
            Dr_16[#Dr_16 + 1] = "HttpGet"
        else
            Dr_16[#Dr_16 + 1] = "HttpGet"
        end
        Dr_4 = (Dr_4 + 4) % 8
    until (Dr_4 * 5 + 5) % 8 == 6
end
Dr_4 = #Dr_16 == 0 and "available"
Dr_9 = Dr_4
if not Dr_9 then
    Dr_4 = 1
    repeat
        Dr_6 = {
            "pnv",
            "jrfek",
            "ihdpapbntxw",
            "aorri",
            "cjonwhflano",
            "piifhyyim",
            "pgejjbimxlz",
            "mfmduoef",
            "dcjrmri",
            "rnbodbegrjsy",
            "lydcs",
            "ftoj",
            "qbi",
            "wxfsw",
            "owbylbto"
        }
        if Dr_6[(Dr_4 * 5 + 82) % 15 + 1] < Dr_6[(Dr_4 * 5 + 82) % 15 + 1] then
            Dr_16 = "missing " .. table.concat(Dr_9, ", ")
        else
            Dr_9 = "missing " .. table.concat(Dr_16, ", ")
        end
        Dr_4 = (Dr_4 + 0) % 4
    until (Dr_4 * 1 + 3) % 4 == 0
end
sH, Dr_11, sB = nil, nil, nil
Dr_6 = 22
repeat
    Dr_4 = (Dr_6 * 1 + 1) % 4 + 1
    if Dr_4 <= 2 then
        if Dr_4 <= 1 then
            if (Dr_6 * 3 + 7) * 21 % 4 == ((Dr_6 * 3 + 7) * 21 + 8) % 4 then
                Dr_11 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                sB = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            Dr_6 = (Dr_6 + 29) % 32
        else
            if (Dr_6 * 3 + 2) * 5 % 4 == ((Dr_6 * 3 + 2) * 5 + 12) % 4 then
                sB = loadstring(game:HttpGet(Dr_11 .. "Library.lua"))()
            else
                Dr_11 = loadstring(game:HttpGet(sB .. "Library.lua"))()
            end
            Dr_6 = (Dr_6 + 25) % 32
        end
    elseif Dr_4 <= 3 then
        if Dr_6 * 14469007 + 7 + 2 <= Dr_6 * 14469007 + 7 + 2 + 1 then
            assert(type(sB) == "table", "UI library failed to load")
            tY(sL, sB)
        else
            assert(type(sL) == "table", "UI library failed to load")
            sB(tY, sL)
        end
        Dr_6 = (Dr_6 + 13) % 32
    else
        Dr_4 = (vector.create((Dr_6 * 3 + 8) % 11 + 1, (Dr_6 * 5 + 4) % 13 + 1, (Dr_6 * 11 + 1) % 17 + 1))
        Dr_16 = (vector.create((Dr_6 * 6 + 6) % 11 + 1, (Dr_6 * 11 + 12) % 13 + 1, (Dr_6 * 15 + 5) % 17 + 1))
        local E2 = vector.dot(Dr_4, Dr_16)
        if E2 * E2 <= vector.dot(Dr_4, Dr_4) * vector.dot(Dr_16, Dr_16) then
            sH = Dr_9
        else
            Dr_9 = sH
        end
        Dr_6 = (Dr_6 + 29) % 32
    end
until (Dr_6 * 29 + 29) % 32 == 27
if type(setthreadidentity) == "function" then
    pcall(setthreadidentity, 8)
end
sT, sy = nil, nil
Dr_4 = 5
repeat
    Dr_9 = (Dr_4 * 1 + 0) % 2 + 1
    if Dr_9 <= 1 then
        local DV = bit32.rrotate(bit32.bxor(bit32.lrotate(Dr_4, 27), string.byte(tostring(sT))), 3)
        if bit32.bxor(bit32.lrotate(bit32.bxor(DV, 3780835835), 18), 3891234155) == bit32.lrotate(DV, 18) then
            sL.Track(fn949)
        else
            sL.Track(fn949)
        end
        Dr_4 = (Dr_4 + 1) % 8
    else
        Dr_9 = (vector.create((Dr_4 * 4 + 7) % 11 + 1, (Dr_4 * 6 + 8) % 13 + 1, (Dr_4 * 11 + 3) % 17 + 1))
        local Ex = vector.floor(Dr_9) + vector.ceil(Dr_9 * -1)
        if vector.dot(Ex, Ex) == 0 then
            sy = function()
                local function yI(hc)
                    local yG = not hc or not hc:IsA("ScreenGui")
                    if yG then
                        return
                    end
                    hc.ResetOnSpawn = false
                    hc.IgnoreGuiInset = true
                    hc.ClipToDeviceSafeArea = false
                    hc.DisplayOrder = math.max(hc.DisplayOrder, 1000)
                    pcall(function()
                        hc.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if hc.Parent ~= tk then
                        hc.Parent = tk
                    end
                end
                yI(sB.ScreenGui)
                if sB.ActiveLoading and sB.ActiveLoading.ScreenGui then
                    yI(sB.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local yJ_2 = tk:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                    if yJ_2 then
                        yI(yJ_2)
                    end
                end
            end
            sy()
            sT = task.spawn(worker)
        else
            sT = function()
                local function yI(hc)
                    local yG = not hc or not hc:IsA("ScreenGui")
                    if yG then
                        return
                    end
                    hc.ResetOnSpawn = false
                    hc.IgnoreGuiInset = true
                    hc.ClipToDeviceSafeArea = false
                    hc.DisplayOrder = math.max(hc.DisplayOrder, 1000)
                    pcall(function()
                        hc.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if hc.Parent ~= tk then
                        hc.Parent = tk
                    end
                end
                yI(sB.ScreenGui)
                if sB.ActiveLoading and sB.ActiveLoading.ScreenGui then
                    yI(sB.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local yJ_1 = tk:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                    if yJ_1 then
                        yI(yJ_1)
                    end
                end
            end
            sT()
            sy = task.spawn(worker)
        end
        Dr_4 = (Dr_4 + 5) % 8
    end
until (Dr_4 * 3 + 1) % 8 == 2
if getgenv then
    sP, Dr_9 = nil, nil
    Dr_4 = 2
    repeat
        Dr_16 = (Dr_4 * 1 + 0) % 2 + 1
        if Dr_16 <= 1 then
            Dr_16 = (vector.create((Dr_4 * 4 + 3) % 11 + 1, (Dr_4 * 7 + 5) % 13 + 1, (Dr_4 * 12 + 7) % 17 + 1))
            Dr_6 = (vector.create((Dr_4 * 2 + 4) % 11 + 1, (Dr_4 * 8 + 3) % 13 + 1, (Dr_4 * 12 + 4) % 17 + 1))
            Dr_2 = (vector.create((Dr_4 * 2 + 1) % 5 + 1, (Dr_4 * 3 + 6) % 7 + 1, (Dr_4 * 4 + 2) % 9 + 1))
            if math.abs((vector.angle(Dr_16, Dr_6, Dr_2))) - math.abs((vector.angle(Dr_6, Dr_16, Dr_2))) == 0 then
                sP = getgenv().__ouroboros_lib
            else
                Dr_9 = getgenv().__ouroboros_lib
            end
            Dr_4 = (Dr_4 + 7) % 8
        else
            Dr_16 = {
                "tofzzjumzx",
                "vvgpd",
                "stfvzqzjorh",
                "vrzsno",
                "plkmfwnjr",
                "xrlp",
                "qlrspscjvr",
                "hufkqxjfqim",
                "vsqrita"
            }
            local EC = Dr_4
            Dr_6 = Dr_16[EC % 9 + 1]
            if Dr_6:len() >= Dr_6:gsub("(.)", "%1%1", EC % 3 % 2 + 1):len() then
                sP = Dr_9
            else
                Dr_9 = sP
            end
            Dr_4 = (Dr_4 + 5) % 8
        end
    until (Dr_4 * 3 + 2) % 8 == 4
    if Dr_9 then
        Dr_4 = 0
        repeat
            Dr_16 = { "bzrbkotn", "oja", "wmuswlcfa", "xeih", "ctvwq", "jxu", "naguw", "vlcpmraugs", "odjsjz" }
            local Fe = Dr_4
            Dr_6 = Dr_16[Fe % 9 + 1]
            if Dr_6:len() >= Dr_6:reverse():rep(Fe % 3 + 2):len() then
                sP = Dr_9.Unloaded == false
            else
                Dr_9 = sP.Unloaded == false
            end
            Dr_4 = (Dr_4 + 7) % 8
        until (Dr_4 * 5 + 3) % 8 == 6
    end
    Dr_4 = sP ~= sB
    Dr_16 = Dr_9 and Dr_4
    if Dr_16 then
        pcall(function()
            sP:Unload()
        end)
    end
    getgenv().__ouroboros_lib = sB
end
sG, sC, Toggles, Options, sq, tI, tF, tv, Dr_2, Dr_16, tu, s5, sJ, sr, Dr_3, Dr_9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sG = loadstring(game:HttpGet(Dr_11 .. "addons/ThemeManager.lua"))()
sC = loadstring(game:HttpGet(Dr_11 .. "addons/SaveManager.lua"))()
Toggles = sB.Toggles
Options = sB.Options
sq = "https://discord.gg/ehKVq7pf7v"
tI = "https://rscripts.net/@Ouroboros"
tF = "https://ouroboros-hub-rbx.web.app/"
tX = "v0.2"
if (not Dr_3 and Dr_16 and (not Options and not Dr_16) or (not Options or not Options) and (Options or Dr_9) or (Options and not Dr_3 or not Options and Options) and (Dr_3 and not Dr_9 or not Dr_9 and Dr_16)) and not (not Dr_3 and Dr_16 and (not Options and not Dr_16) or (not Options or not Options) and (Options or Dr_9) or (Options and not Dr_3 or not Options and Options) and (Dr_3 and not Dr_9 or not Dr_9 and Dr_16)) then
    s5 = fn706
    tu = fn1265
else
    tu = fn706
    s5 = fn1265
end
Dr_6 = fn860
sJ = fn559
sr = fn904
tW = sB:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = sq, Copyable = true }, "|", sR, "|", tX },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
if (false and tu or (tI or not tu)) and (false or (false or not tu)) or (tI or tu or (not tu or not tu)) and ((false or not tu) and (tI or tu)) or (false and (tI and not tu) or (not tu or not tu) and (not tu or tI)) and ((not tu or tu) and (tu or not tu) and (tu and tI or not tu and false)) or not ((false and tu or (tI or not tu)) and (false or (false or not tu)) or (tI or tu or (not tu or not tu)) and ((false or not tu) and (tI or tu)) or (false and (tI and not tu) or (not tu or not tu) and (not tu or tI)) and ((not tu or tu) and (tu or not tu) and (tu and tI or not tu and false))) then
    tv = {}
end
tv.Info = tW:AddTab("Info", "info")
tv.Main = tW:AddTab("Main", "gamepad-2")
tv.Player = tW:AddTab("Player", "person-standing")
tv.Settings = tW:AddTab("Settings", "settings")
Dr_6(tv.Main)
Dr_6(tv.Player)
Dr_6(tv.Settings)
Dr_3 = function()
    local zx
    local zt
    local zr
    local zy
    local zD
    zr = nil
    zt = nil
    zx = nil
    zy = nil
    zD = nil
    local zs, Label2, Label3, zw, zz, Label, zB, zC
    zt = function(h7)
        return (tostring(h7):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    zD = function(h9, ia)
        return string.format('<font color="%s">%s</font>', ia, zt(h9))
    end
    zw = function(ie, ig, ih)
        return string.format("<b>%s</b> %s %s", ie, zD("-", "#5a6070"), zD(ig, ih))
    end
    zs = "#7fd47f"
    zC = "#e8a34d"
    zy = "Unknown"
    local zF = "#8b93a3"
    pcall(function()
        local y7_1
        local y6_1
        if type(identifyexecutor) == "function" then
            y7_1, y6_1 = identifyexecutor()
            local y8 = y7_1 ~= ""
            local y9 = type(y7_1) == "string" and y8
            if y9 then
                local y8_1 = type(y6_1) == "string" and y6_1 ~= "" and y7_1 .. " " .. y6_1
                zy = y8_1 or y7_1
            end
        end
    end)
    zx = os.clock()
    zB = function()
        local ze = math.floor(os.clock() - zx)
        if ze < 60 then
            return ze .. "s"
        elseif ze < 3600 then
            return string.format("%dm %ds", ze // 60, ze % 60)
        else
            return string.format("%dh %dm", ze // 3600, ze % 3600 // 60)
        end
    end
    local UserGroup = tv.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(zw("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, zs), true)
    UserGroup:AddLabel(zw("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(zw("Executor", zy .. "  " .. sH, zs), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(zw("Session", zB(), zC), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            tu(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            tu("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = tv.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(zw("Game", sR, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(zw("Players", "0/0", zs), true)
    zz = tostring(game.JobId)
    local zE = #zz > 18 and string.sub(zz, 1, 18) .. "..."
    local zE_1 = zE or zz
    SessionGroup:AddLabel(zw("Job", zE_1, zF), true)
    Label = SessionGroup:AddLabel(zw("Ping", "0 ms", zC), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            tu(zz, "Copied Job ID")
        end
    })
    zr = task.spawn(function()
        local zk_1
        while true do
            task.wait(1)
            local zj = sB.Unloaded or not sx()
            local zj_1
            if zj then
                break
            end
            Label3:SetText(zw("Session", zB(), zC))
            Label2:SetText(zw("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), zs))
            zj_1, zk_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local zj_2 = zj_1 and zk_1 .. " ms" or "n/a"
            Label:SetText(zw("Ping", zj_2, zC))
        end
    end)
    sL.Track(function()
        if coroutine.status(zr) ~= "dead" then
            pcall(task.cancel, zr)
        end
    end)
    local SocialsGroup = tv.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = s5 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            tu(tI, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            tu(tF, "Copied website link")
        end
    })
end
Dr_3()
Dr_8 = tv.Main:AddLeftGroupbox("Kick", "target")
Dr_8:AddToggle("AutoPerfectKick", { Text = "Auto Perfect Kick", Default = false, Callback = onAutoPerfectKick })
Dr_8:AddToggle("AutoEscape", { Text = "Auto Escape", Default = false, Callback = onAutoEscape })
Dr_12 = tv.Main:AddLeftGroupbox("Train", "activity")
if (false or Options or Options and Options) and (Options or Options or (not Options or sq)) or (Options and sq or false or false) or not ((false or Options or Options and Options) and (Options or Options or (not Options or sq)) or (Options and sq or false or false)) then
    Dr_12:AddToggle("AutoTrain", { Text = "Auto Train", Default = false, Callback = onAutoTrain })
    Dr_12:AddToggle("Auto2xBonus", { Text = "Auto 2x Bonus", Default = false, Callback = onAuto2xBonus })
    Dr_2 = tv.Main:AddLeftGroupbox("Shop", "store")
else
    tv:AddToggle("AutoTrain", { Default = false, Callback = onAutoTrain, Text = "Auto Train" })
    tv:AddToggle("Auto2xBonus", { Text = "Auto 2x Bonus", Callback = onAuto2xBonus, Default = false })
    Dr_2.Main:AddLeftGroupbox("Shop", "store")
end
Dr_2:AddToggle("AutoBuyRunUpgrades", { Text = "Auto Buy Run Upgrades", Default = false, Callback = onAutoBuyRunUpgrades })
Dr_2:AddToggle("AutoBuyWeights", { Text = "Auto Buy Weights", Default = false, Callback = onAutoBuyWeights })
Dr_16 = tv.Main:AddRightGroupbox("Plot", "house")
Dr_16:AddDropdown("PlaceSlots", {
    Text = "Place Slots",
    Values = Dr_13,
    Default = te,
    Multi = true,
    SelectAllButtons = true,
    Callback = onPlaceSlots
})
Dr_16:AddToggle("AutoPlace", { Text = "Auto Place", Default = false, Callback = onAutoPlace })
Dr_16:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false, Callback = onAutoCollect })
Dr_16:AddToggle("AutoReplace", { Text = "Auto Replace With Better", Default = false, Callback = onAutoReplace })
Dr_16:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = onAutoRebirth })
Dr_16:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false, Callback = onAutoBuySlots })
Dr_7 = function()
    local jV
    local jU
    local jS
    local jT
    local jW = {}
    jU = {}
    jS = {}
    jV = {}
    jT = {}
    local function jX()
        for k, v in jS do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(jS)
    end
    local function j0()
        for k, v in jT do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(jT)
    end
    local function j4()
        for k, v in jU do
            if k.Parent then
                k.PlatformStand = v
            end
        end
        table.clear(jU)
    end
    local function j8()
        for k, v in jV do
            if k.Parent then
                k.HoldDuration = v[1]
                k.MaxActivationDistance = v[2]
                k.RequiresLineOfSight = v[3]
            end
        end
        table.clear(jV)
    end
    local function kc(kd)
        if not kd:IsA("ProximityPrompt") then
            return
        end
        if not jV[kd] then
            jV[kd] = { kd.HoldDuration, kd.MaxActivationDistance, kd.RequiresLineOfSight }
        end
        kd.HoldDuration = 0
        kd.MaxActivationDistance = 50
        kd.RequiresLineOfSight = false
    end
    local function kf()
        local Character = LocalPlayer.Character
        local Ag = Character and Character:FindFirstChildOfClass("Humanoid")
        return Ag
    end
    local function kk()
        local Character = LocalPlayer.Character
        local Aj = Character and Character:FindFirstChild("HumanoidRootPart")
        return Aj
    end
    local MovementGroup = tv.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", {
        Text = "WalkSpeed",
        Default = false,
        Callback = function(kq)
            if not kq then
                j0()
            end
        end
    })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", {
        Text = "NoClip",
        Default = false,
        Callback = function(ks)
            if not ks then
                jX()
            end
        end
    })
    MovementGroup:AddToggle("InstantProximityPrompt", {
        Text = "Instant ProximityPrompt",
        Default = false,
        Callback = function(kv)
            if kv then
                for i, descendant in tb:GetDescendants() do
                    pcall(kc, descendant)
                end
            else
                j8()
            end
        end
    })
    local FlyGroup = tv.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", {
        Text = "Fly",
        Default = false,
        Callback = function(kD)
            if not kD then
                j4()
            end
        end
    })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    table.insert(jW, tb.DescendantAdded:Connect(function(kF)
        if Toggles.InstantProximityPrompt.Value then
            pcall(kc, kF)
        end
    end))
    table.insert(jW, RunService.Stepped:Connect(function()
        local Character = LocalPlayer.Character
        if Toggles.NoClip.Value and Character then
            for i, descendant in Character:GetDescendants() do
                if descendant:IsA("BasePart") then
                    if jS[descendant] == nil then
                        jS[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end
    end))
    table.insert(jW, UserInputService.JumpRequest:Connect(function()
        local AI = kf()
        if Toggles.InfJump.Value and AI then
            AI:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(jW, RunService.RenderStepped:Connect(function(kU)
        local AL = kf()
        local AM = kk()
        local CurrentCamera = tb.CurrentCamera
        if Toggles.WalkSpeedEnabled.Value and AL then
            if jT[AL] == nil then
                jT[AL] = AL.WalkSpeed
            end
            AL.WalkSpeed = Options.WalkSpeed.Value
        end
        if Toggles.Fly.Value and AM and AL and CurrentCamera then
            if jU[AL] == nil then
                jU[AL] = AL.PlatformStand
            end
            AL.PlatformStand = true
            local AL_1 = Vector3.zero
            if not UserInputService:GetFocusedTextBox() then
                local AT = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if AT == 1 then
                    AL_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    AL_1 -= CurrentCamera.CFrame.LookVector
                end
                local AT_1 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if AT_1 == 1 then
                    AL_1 -= CurrentCamera.CFrame.RightVector
                end
                local AT_2 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if AT_2 == 1 then
                    AL_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    AL_1 += Vector3.new(0, 1, 0)
                end
                local AT_3 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if AT_3 == 1 then
                    AL_1 -= Vector3.new(0, 1, 0)
                end
            end
            AM.AssemblyLinearVelocity = Vector3.zero
            if AL_1.Magnitude > 0 then
                AM.CFrame = AM.CFrame + AL_1.Unit * Options.FlySpeed.Value * kU
            end
        end
    end))
    sL.Track(function()
        for k, v in jW do
            v:Disconnect()
        end
        jX()
        j0()
        j4()
        j8()
    end)
end
Dr_7()
Dr_9 = function()
    local B6
    B6 = nil
    local B3, B4, B5, B7, B8, B9, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Ch, Ci, Cj, Label
    Cb = {}
    B3 = {}
    Ce = nil
    Cc = 0
    B5 = false
    Ch = os.clock()
    local MenuGroup = tv.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    Ca = function()
        local CurrentCamera
        CurrentCamera = tb.CurrentCamera
        local A1 = not CurrentCamera
        local A5 = if A1 then 1 else 0
        local A3 = 3251 * A5 + 3320 * (1 - A5)
        local A4 = 3677 * A5 + 2740 * (1 - A5)
        if not ((A3 * 4032 + A4 * 1905 + A3 * A4) % 16777213 == 15289431) then
            A1 = type(VirtualUser.CaptureController) ~= "function"
        end
        if not A1 then
            A1 = type(VirtualUser.ClickButton2) ~= "function"
        end
        if A1 then
            return false
        end
        local A1_1 = pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        end)
        if not A1_1 then
            return false
        end
        Cc += 1
        Ch = os.clock()
        pcall(function()
            Label:SetText("AFK triggers: " .. Cc)
        end)
        return true
    end
    Cg = function(lA)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not lA)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = tk:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not lA
            end
        end)
        if not lA then
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
    Ci = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    B9 = function(lP)
        if Ci[lP.ClassName] then
            if Cb[lP] == nil then
                Cb[lP] = lP.Enabled
            end
            pcall(function()
                lP.Enabled = false
            end)
        end
    end
    B4 = function()
        for k, v in Cb do
            local Bf = k
            local Bh = v
            if Bf.Parent then
                pcall(function()
                    Bf.Enabled = Bh
                end)
            end
        end
        table.clear(Cb)
        if Ce then
            pcall(function()
                settings().Rendering.QualityLevel = Ce.Quality
            end)
            Lighting.GlobalShadows = Ce.Shadows
            Lighting.FogEnd = Ce.Fog
            Ce = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(l2)
            pcall(function()
                RunService:Set3dRenderingEnabled(not l2)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(l7)
            if l7 then
                if not Ce then
                    Ce = {
                        Quality = settings().Rendering.QualityLevel,
                        Shadows = Lighting.GlobalShadows,
                        Fog = Lighting.FogEnd
                    }
                end
                pcall(function()
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                end)
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 9000000000
                for i, descendant in tb:GetDescendants() do
                    pcall(B9, descendant)
                end
            else
                B4()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    sB.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = tv.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            sB:Unload()
        end
    })
    Toggles.AntiGameplayPause:OnChanged(function()
        Cg(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        Cg(true)
    end
    table.insert(B3, LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(Ca)
        end
    end))
    table.insert(B3, tb.DescendantAdded:Connect(function(mo)
        if Toggles.FpsBoost.Value then
            pcall(B9, mo)
        end
    end))
    Cj = function()
        local PlaceId, JobId
        if B5 then
            return
        end
        B5 = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local Bt = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not Bt then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    B6 = task.spawn(function()
        local RobloxPromptGui = tk:WaitForChild("RobloxPromptGui", 30)
        local BE = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not BE then
            return
        end
        table.insert(B3, BE.ChildAdded:Connect(function(mK)
            local By = not sx() or sB.Unloaded
            if By then
                return
            end
            if Toggles.AutoReconnect.Value and mK.Name == "ErrorPrompt" then
                Cj()
            end
        end))
    end)
    sL.Track(function()
        local BJ = if coroutine.status(B6) ~= "dead" then 1 else 0
        if BJ == 1 then
            pcall(task.cancel, B6)
        end
    end)
    table.insert(B3, TeleportService.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            B5 = false
            Cj()
        end
    end))
    local Cl_2 = typeof(queue_on_teleport) == "function" and queue_on_teleport
    local Cm = Cl_2
    if not Cm then
        local Cl_3 = typeof(queueonteleport) == "function" and queueonteleport
        Cm = Cl_3
    end
    B7 = false
    Cf = Cm
    Cd = function()
        if type(Cf) ~= "function" then
            return false
        elseif B7 then
            return true
        else
            B7 = pcall(Cf, 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/Kick%20an%20Uma.luau"))()')
            return B7
        end
    end
    Toggles.AutoExecute:OnChanged(function()
        if not sJ("AutoExecute") then
            return
        end
        if not Cd() then
            sB:Notify("queue_on_teleport is not supported by your executor")
        end
    end)
    table.insert(B3, LocalPlayer.OnTeleport:Connect(function(ng)
        if ng ~= Enum.TeleportState.Started then
            return
        end
        local BQ = not sx() or sB.Unloaded or not sJ("AutoExecute")
        if BQ then
            return
        end
        Cd()
    end))
    B8 = task.spawn(function()
        while true do
            local BV = sx() and not sB.Unloaded
            if BV then
                task.wait(1)
                local BV_1 = not sx() or sB.Unloaded
                if BV_1 then
                    break
                end
                if Toggles.AntiGameplayPause.Value then
                    Cg(true)
                end
                local BV_2 = Toggles.AntiAfk.Value and os.clock() - Ch >= 60
                if BV_2 then
                    pcall(Ca)
                end
                continue
            end
            break
        end
    end)
    sL.Track(function()
        if coroutine.status(B8) ~= "dead" then
            pcall(task.cancel, B8)
        end
        for k, v in B3 do
            v:Disconnect()
        end
        Cg(false)
        B4()
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
    end)
end
Dr_9()
Dr_15 = function()
    local Dk
    Dk = nil
    local Dh, Di, Dj
    sG:SetLibrary(sB)
    sG:SetFolder("MyScriptHub")
    sG:SaveDefault("Evil Hello Kitty")
    sG:ApplyToTab(tv.Settings)
    sC:SetLibrary(sB)
    sC:IgnoreThemeSettings()
    sC:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    sC:SetFolder("OuroborosHub/KickAnUma")
    local Dl = sC:BuildConfigSection(tv.Settings)
    Dk = function(nL, nM)
        local Cp_1 = (nL == "Toggle" and Toggles or Options)[nM]
        local Co_2 = type(Cp_1) == "table" and Cp_1.Type == nL
        return Co_2 and Cp_1 or nil
    end
    Dj = function(nV, nW)
        local Type = nW.Type
        if Type == "Toggle" then
            return { idx = nV, type = "Toggle", value = nW.Value == true }
        end
        if Type == "Slider" then
            return { idx = nV, type = "Slider", value = tostring(nW.Value) }
        end
        if Type == "Dropdown" then
            return { idx = nV, type = "Dropdown", multi = nW.Multi == true, value = nW.Value }
        end
        if Type == "Input" then
            local Cw = nW.Value or ""
            return { idx = nV, type = "Input", text = tostring(Cw) }
        end
        if Type == "ColorPicker" then
            return { idx = nV, type = "ColorPicker", value = nW.Value:ToHex(), transparency = nW.Transparency }
        end
        if Type == "KeyPicker" then
            return { idx = nV, type = "KeyPicker", key = nW.Value, mode = nW.Mode }
        end
    end
    Di = function()
        local CE = {}
        local CF = {}
        local CG = { MenuKeybind = true, SaveManager_ImportSource = true }
        for k, v in Toggles do
            local CH_1 = not CG[k]
            if CH_1 ~= false then
                CH_1 = not CE[k]
            end
            if CH_1 then
                CE[k] = true
                CF[#CF + 1] = Dj(k, v)
            end
        end
        for k, v in Options do
            local CH_2 = not CG[k]
            if CH_2 ~= false then
                CH_2 = not CE[k]
            end
            if CH_2 then
                CE[k] = true
                CF[#CF + 1] = Dj(k, v)
            end
        end
        table.sort(CF, function(n7, n8)
            return tostring(n7.idx) < tostring(n8.idx)
        end)
        return { objects = CF }
    end
    Dh = function(oa)
        local CV = type(oa) ~= "table" or type(oa.idx) ~= "string" or type(oa.type) ~= "string"
        if CV then
            return false
        end
        local CV_1 = Dk(oa.type, oa.idx)
        if not CV_1 then
            return false
        end
        local CW = oa.type == "Toggle" and type(oa.value) == "boolean"
        if CW then
            CV_1:SetValue(oa.value)
            return true
        elseif oa.type == "Slider" then
            local CW_1 = tonumber(oa.value)
            if CW_1 then
                CV_1:SetValue(CW_1)
                return true
            end
            return false
        elseif oa.type == "Dropdown" then
            CV_1:SetValue(oa.value)
            return true
        elseif oa.type == "Input" then
            local CW_2 = oa.text
            local C0 = if CW_2 then 1 else 0
            local CZ = 2991 * C0 + 2762 * (1 - C0)
            local C_ = 3471 * C0 + 645 * (1 - C0)
            if not ((CZ * 1764 + C_ * 357 + CZ * C_) % 16777213 == 119819) then
                CW_2 = oa.value
            end
            local CX = CW_2 or ""
            CV_1:SetValue(tostring(CX))
            return true
        else
            local CW_3 = oa.type == "ColorPicker" and type(oa.value) == "string"
            if CW_3 then
                CV_1:SetValueRGB(Color3.fromHex(oa.value), oa.transparency)
                return true
            elseif oa.type == "KeyPicker" then
                CV_1:SetValue({ oa.key, oa.mode })
                return true
            else
                return false
            end
        end
    end
    Dl:AddInput("SaveManager_ImportSource", {
        Text = "Paste exported config here",
        Default = "",
        Finished = true,
        AllowEmpty = true,
        Placeholder = ""
    })
    Dl:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local C2_1
            local C1_1
            C1_1, C2_1 = pcall(HttpService.JSONEncode, HttpService, Di())
            if not C1_1 then
                sB:Notify("Failed to encode config")
                return
            end
            tu(C2_1, "Copied config")
        end
    })
    Dl:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local C6_1
            local C5 = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
            local C5_1
            if C5 == "" then
                sB:Notify("Paste an exported config into the box first")
                return
            end
            if #C5 > 262144 then
                sB:Notify("Config is too large")
                return
            end
            C5_1, C6_1 = pcall(HttpService.JSONDecode, HttpService, C5)
            local C4_2 = not C5_1 or type(C6_1) ~= "table" or type(C6_1.objects) ~= "table"
            if C4_2 then
                sB:Notify("That is not a valid exported config")
                return
            end
            if #C6_1.objects > 2048 then
                sB:Notify("Config has too many records")
                return
            end
            local C4_3 = 0
            for k, v in C6_1.objects do
                if Dh(v) then
                    C4_3 += 1
                end
            end
            if C4_3 == 0 then
                sB:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local C6_2 = C4_3 == 1 and "" or "s"
            sB:Notify(("Imported %d setting%s"):format(C4_3, C6_2), 6)
        end
    })
    sG:LoadDefault()
    sC:LoadAutoloadConfig()
    if Toggles.HideUiOnStart.Value then
        sB:Toggle(false)
    end
end
Dr_15()
