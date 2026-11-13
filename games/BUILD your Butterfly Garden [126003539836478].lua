local fns = {}
local wv_8
local n_
local VirtualUser
local nH
local op
local n5
local oQ
local nN
local ox
local ob
local InventoryLimit
local connection2
local oD
local RequestClaimEvent
local CFrame2
local nG
local oo
local Toggles
local PlotModule
local nM
local ow
local nS
local oC
local og
local nY
local Weather
local nF
local HttpService
local Label
local n9
local BuildPlacer
local Label3
local oB
local nX
local oH
local nE
local om
local oN
local nK
local ou
local n8
local oT
local oe
local connection3
local SellItemEvent
local oG
local nD
local ol
local n1
local oM
local PondData
local oS
local nP
local oY
local SellBatchEvent
local Shop
local GoldenButterflies
local oj
local Options
local nI
local oq
local connection
local Label2
local oy
local oX
local oE
local nB
local Library
function fns.fn4(bf, bg)
    return (bf.Id or 0) < (bg.Id or 0)
end
function fns.fn15()
    nX(oC, "Copied Discord invite to clipboard")
end
function fns.worker2()
    local su_1, su_2
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local st = math.floor(os.clock() - n9)
        local st_1
        if st < 60 then
            su_1 = st .. "s"
        elseif st < 3600 then
            su_1 = string.format("%dm %ds", st // 60, st % 60)
        else
            su_1 = string.format("%dh %dm", st // 3600, st % 3600 // 60)
        end
        Label3:SetText(oQ("Session time", su_1, oo))
        Label2:SetText(oQ("Money", string.format("%d", math.floor(nS())), oD))
        Label:SetText(oQ("Weather", nI(), oo))
        st_1, su_2 = pcall(InventoryLimit.Count, oH)
        local sv = st_1 and type(su_2) == "number"
        local su_3 = sv and su_2 or 0
        nH:SetText(oQ("Inventory", su_3 .. " / " .. InventoryLimit.MAX, ox))
    end
end
function fns.worker()
    while not Library.Unloaded do
        task.wait(2)
        if og("AntiAfk") then
            local sp = tick() - oq
            local sq = tick() - om
            if sp >= 300 and sq >= 60 then
                pcall(n5)
            else
                if sp < 300 and sq >= 300 then
                    pcall(n5)
                end
            end
        end
    end
end
local function fn71()
    local qO_1
    local qN_1
    qN_1, qO_1 = pcall(PlotModule.getPlayerPlot)
    return qN_1 and qO_1 or nil
end
local function fn102()
    local rn = {}
    local Backpack = oH:FindFirstChild("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            if child:IsA("Tool") then
                table.insert(rn, child)
            end
        end
    end
    local Character = oH.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            if child:IsA("Tool") then
                table.insert(rn, child)
            end
        end
    end
    return rn
end
local function onCopyJoinScript_JobID()
    local c_ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nE)
    nX(c_, "Copied join script to clipboard")
end
local function onSellAllEggs()
    SellBatchEvent:FireServer({ mode = "all", kind = "egg" })
    Library:Notify("Requested sell all eggs")
end
local function fn135(iN)
    local vu = nM[iN] or ""
    local vv = Shop:FindFirstChild(vu)
    local vu_1 = vv and vv:FindFirstChild("Asset")
    if not vu_1 then
        return nil, nil
    end
    for i, child in ipairs(vu_1:GetChildren()) do
        local vu_2 = child:IsA("Model") and child:GetAttribute("ShopItemId") ~= nil
        if vu_2 then
            return child, child:FindFirstChild("ShopBuyPrompt", true)
        end
    end
    return nil, nil
end
local function fn148(bD, bE)
    local q6 = bD.Price
    local rb = if q6 then 1 else 0
    local q9 = 1774 * rb + 3159 * (1 - rb)
    local ra = 3172 * rb + 2135 * (1 - rb)
    if not ((q9 * 932 + ra * 369 + q9 * ra) % 16777213 == 8450964) then
        q6 = 0
    end
    return q6 < (bE.Price or 0)
end
local function fn152(au, av)
    local qk = Options[au]
    local ql = qk and tonumber(qk.Value)
    return ql or av
end
local function fn170(cG)
    local DiscordGroup = cG:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nN })
end
local function fn180(fj)
    return fj:GetAttribute("EggId") ~= nil
end
local function fn190()
    local attr = Weather:GetAttribute("Weather")
    local rd = attr == ""
    local re = type(attr) ~= "string" or rd
    if re then
        return "Clear"
    end
    return attr
end
local function fn231(a4)
    local qR = a4 == ""
    local qR_1
    local qS = type(a4) ~= "string" or qR
    local qS_1
    if qS then
        return {}
    end
    qR_1, qS_1 = pcall(HttpService.JSONDecode, HttpService, a4)
    local qT = qR_1 and type(qS_1) == "table"
    if qT then
        return qS_1
    end
    return {}
end
local function worker6()
    local v9_1
    local v8_1
    while not Library.Unloaded do
        if og("AutoSell") then
            v8_1, v9_1 = pcall(InventoryLimit.Count, oH)
            local wa = v8_1 and type(v9_1) == "number"
            local v8_2 = wa and v9_1
            local v9_2 = v8_2 or #oB()
            if v9_2 >= n1("SellStartAt", 0) then
                local v8_4 = {}
                for i, v in ipairs(oB()) do
                    if n8(v) then
                        table.insert(v8_4, v)
                    end
                end
                if #v8_4 > 0 then
                    local v9_3 = false
                    if og("SellHop") then
                        local SellShop = Shop:FindFirstChild("SellShop")
                        local wb = SellShop and SellShop:FindFirstChild("SellProximity")
                        local wa_2 = wb
                        if wb then
                            wb = wa_2:IsA("BasePart")
                        end
                        if wb then
                            oG(wa_2.Position)
                            v9_3 = true
                            task.wait(0.3)
                        end
                    end
                    for i, v in ipairs(v8_4) do
                        local v8_5 = Library.Unloaded or not og("AutoSell")
                        if v8_5 then
                            break
                        end
                        local v8_6 = v.Parent and n_(v)
                        if v8_6 then
                            pcall(function()
                                SellItemEvent:FireServer()
                            end)
                            task.wait(0.25)
                        end
                    end
                    oX()
                    if v9_3 then
                        oj()
                    end
                end
            end
        end
        task.wait(n1("SellDelay", 2))
    end
end
local function fn250(br, bs)
    local q0 = br.EggId
    local q5 = if q0 then 1 else 0
    local q3 = 1857 * q5 + 354 * (1 - q5)
    local q4 = 3122 * q5 + 965 * (1 - q5)
    if not ((q3 * 2936 + q4 * 2669 + q3 * q4) % 16777213 == 2805111) then
        q0 = 0
    end
    return q0 < (bs.EggId or 0)
end
local function fn285(aA)
    local qn = Options[aA]
    return qn and qn.Value or {}
end
local function fn310(ad, ae)
    return string.format('<font color="%s">%s</font>', ae, ad)
end
local function onSellAllButBest()
    SellBatchEvent:FireServer({ mode = "keepBest", keep = math.floor(n1("KeepBestCount", 60)) })
    Library:Notify("Requested keep-best sell")
end
local function onOnClientEvent(cx)
    local rY = type(cx) == "string" and string.find(string.lower(cx), "limit", 1, true)
    if rY then
        nG = os.clock() + 15
    end
end
local function fn361(hE)
    local FishList = hE:FindFirstChild("FishList")
    local Stats = hE:FindFirstChild("Stats")
    local uN = Stats and Stats:FindFirstChild("FishLimit")
    local uM_1 = uN
    if not FishList then
        return 0
    end
    if uN then
        uN = uM_1.Value
    end
    local uN_1 = uN or 0
    if uN_1 <= 0 then
        local uM_3 = PondData.GetById(hE:GetAttribute("Id"))
        uN_1 = uM_3 and uM_3.DefaultFishSlots or 0
    end
    return uN_1 - #FishList:GetChildren()
end
local function fn364()
    return os.clock() < nG
end
local function worker3()
    while not Library.Unloaded do
        local tj = og("AutoBuyEggs") and not oM()
        if tj then
            local tj_1 = oS("BuyEggWeather", "Any")
            local tk = tj_1 == "Any" or tj_1 == nI()
            if tk then
                local tj_2 = nF()
                local tk_1 = tj_2 and tj_2:FindFirstChild("RiverFishes")
                if tk_1 then
                    local tk_2 = nK("BuyEggTypes")
                    local tl = nK("BuyEggMutations")
                    local tm = n1("BuyEggReserve", 0)
                    for i, child in ipairs(tk_1:GetChildren()) do
                        local tj_4 = Library.Unloaded or not og("AutoBuyEggs") or oM()
                        if tj_4 then
                            break
                        else
                            local tj_5 = nP[child:GetAttribute("EggId")]
                            if tj_5 and tk_2[tj_5.Name] then
                                local tn_1 = oE(child)
                                local to = #tn_1 > 0
                                local tp = og("BuyEggAnyMutation")
                                if not tp then
                                    for i, v in ipairs(tn_1) do
                                        if tl[v] then
                                            tp = true
                                            break
                                        end
                                    end
                                end
                                local tn_2 = not to
                                local tq = og("BuyEggMutatedOnly") and tn_2
                                if tq then
                                    tp = false
                                end
                                local tn_3 = tp
                                if tn_3 then
                                    local to_1 = nS()
                                    tn_3 = to_1 - (tj_5.Price or 0) >= tm
                                end
                                if tn_3 then
                                    tn_3 = not nY()
                                end
                                if tn_3 then
                                    ol(child, "BuyEggHop")
                                end
                            end
                        end
                    end
                    oj()
                end
            end
        end
        task.wait(n1("BuyEggDelay", 1))
    end
end
local function onRscripts()
    nX(ow, "Copied Rscripts profile to clipboard")
end
local function fn401()
    connection2:Disconnect()
    connection3:Disconnect()
    connection:Disconnect()
    print("Build Your Butterfly Garden unloaded")
end
local function fn408(gw, gx)
    local t6, t7, t8, t9, ua, ub, uc, ud
    local uf = 6
    while true do
        local uf_1 = 5496 - uf
        do
            if uf_1 < 5488 then
                if uf_1 < 5484 then
                    if uf_1 < 5481 then
                        if uf_1 < 5480 then
                            if uf_1 < 5477 then
                                break
                            elseif uf_1 < 5478 then
                                uc = uc + 4
                                uf = 18
                            elseif uf_1 < 5479 then
                                if uf_1 == 5478 then
                                    uf = 1
                                else
                                    uf = 5481
                                    continue
                                end
                            elseif uf_1 == 5479 then
                                return ub, t6
                            else
                                uf = 5485
                                continue
                            end
                        else
                            local ue = math.floor(uc / 4 + 0.5) .. "|" .. math.floor(ud / 4 + 0.5)
                            uf = if not t7[ue] then 9 else 5
                        end
                    elseif uf_1 < 5482 then
                        if uf_1 == 5481 then
                            return {}, nil
                        end
                        uf = 5486
                        continue
                    elseif uf_1 < 5483 then
                        return ub, t6
                    elseif uf_1 == 5483 then
                        uf = 3
                    else
                        uf = 4077
                        continue
                    end
                elseif uf_1 < 5487 then
                    if uf_1 < 5485 then
                        if uf_1 == 5484 then
                            uf = 5
                        else
                            uf = 5493
                            continue
                        end
                    elseif uf_1 < 5486 then
                        t7 = nB(gw)
                        t8 = t6.Position.Y + t6.Size.Y / 2
                        t9 = t6.Size.X / 2 - 8
                        ua = t6.Size.Z / 2 - 8
                        ub = {}
                        uc = t6.Position.X - t9
                        uf = 1
                    else
                        ud = t6.Position.Z - ua
                        uf = 3
                    end
                elseif uf_1 == 5487 then
                    table.insert(ub, Vector3.new(uc, t8, ud))
                    uf = if #ub >= gx then 17 else 12
                else
                    uf = 5491
                    continue
                end
            elseif uf_1 < 5493 then
                if uf_1 < 5490 then
                    if uf_1 < 5489 then
                        uf = if uc <= t6.Position.X + t9 then 10 else 4
                    else
                        uf = if ud <= t6.Position.Z + ua then 16 else 0
                    end
                elseif uf_1 < 5492 then
                    if uf_1 < 5491 then
                        if uf_1 == 5490 then
                            t6 = BuildPlacer.GetGroundPart(gw)
                            uf = if not t6 then 15 else 11
                        else
                            uf = 5482
                            continue
                        end
                    else
                        ud = ud + 4
                        uf = 13
                    end
                elseif uf_1 == 5492 then
                    uf = 14
                else
                    uf = 5493
                    continue
                end
            elseif uf_1 < 5496 then
                if uf_1 < 5494 then
                    uf = 7
                elseif uf_1 < 5495 then
                    break
                else
                    uf = 8
                end
            elseif uf_1 < 5534 then
                if uf_1 == 5496 then
                    uf = 19
                else
                    break
                end
            else
                break
            end
        end
    end
end
local function fn421()
    local Character = oH.Character
    local qI = Character and Character:FindFirstChildOfClass("Humanoid")
    return qI
end
local function fn438(fl)
    local s9 = nP[fl:GetAttribute("EggId")]
    return s9 and s9.Price or 0
end
local function fn443()
    local r3_1
    local r2_1
    if identifyexecutor then
        r3_1, r2_1 = identifyexecutor()
        local r4 = r3_1 ~= ""
        local r5 = type(r3_1) == "string" and r4
        if r5 then
            local r4_1 = type(r2_1) == "string" and r2_1 ~= "" and r3_1 .. " " .. r2_1
            local r2_2 = r4_1
            local r9 = if r2_2 then 1 else 0
            local r7 = 3244 * r9 + 2694 * (1 - r9)
            local r8 = 25 * r9 + 2191 * (1 - r9)
            if not ((r7 * 136 + r8 * 592 + r7 * r8) % 16777213 == 537084) then
                r2_2 = r3_1
            end
            ob = r2_2
        end
    end
end
local function fn476(hP)
    local attr = hP:GetAttribute("Id")
    if not ou(attr, "PondAnySpecies", "PondSpecies", "PondRarities") then
        return false
    end
    local uT_1 = tonumber(hP:GetAttribute("Income")) or 0
    if uT_1 < n1("PondMinIncome", 0) then
        return false
    end
    local u4 = if not og("PondAnyMutation") then 1 else 0
    if u4 == 1 then
        local uT_2 = nK("PondMutations")
        local uU = oN(hP:GetAttribute("Attributes"))
        local uV = false
        for i, v in ipairs(uU) do
            if uT_2[v] then
                uV = true
                break
            end
        end
        if not uV then
            return false
        end
        return true
    end
    return true
end
local function fn479()
    local MoneyRaw = oH:FindFirstChild("MoneyRaw")
    local qL = MoneyRaw and tonumber(MoneyRaw.Value)
    return qL or 0
end
local function fn520(ej, ek, el, em)
    local sx = op[ej]
    if not sx then
        return false
    end
    local sy = nK(em)
    local sz = oy(sy) and not sy[sx.Rarity]
    if sz then
        return false
    elseif og(ek) then
        return true
    else
        local sy_1 = nK(el)
        return sy_1[sx.Name] == true
    end
end
local function fn572()
    Library.ScreenGui.Parent = oH:WaitForChild("PlayerGui")
end
local function fn590()
    local Character = oH.Character
    local qF = Character and Character:FindFirstChild("HumanoidRootPart")
    return qF
end
local function worker4()
    while not Library.Unloaded do
        local tH = og("AutoRiver") and not oM()
        if tH then
            local tH_1 = nF()
            local tI = tH_1 and tH_1:FindFirstChild("RiverFishes")
            if tI then
                local tI_1 = n1("RiverReserve", 0)
                for i, child in ipairs(tI:GetChildren()) do
                    local tH_3 = Library.Unloaded or not og("AutoRiver") or oM()
                    if tH_3 then
                        break
                    end
                    local tH_4 = oY(child) and nS() - oT(child) >= tI_1 and not nY()
                    if tH_4 then
                        ol(child, "RiverHop")
                    end
                end
                oj()
            end
        end
        task.wait(n1("RiverDelay", 0.8))
    end
end
local function worker5()
    while not Library.Unloaded do
        if og("AutoClaimOffline") then
            pcall(function()
                RequestClaimEvent:FireServer()
            end)
        end
        task.wait(n1("ClaimDelay", 30))
    end
end
local function fn621(fq)
    return oN(fq:GetAttribute("Attributes"))
end
local function onInputBegan()
    oq = tick()
end
local function fn628()
    local attr = oH:GetAttribute("shopStock")
    local rh = attr == ""
    local rh_1
    local ri = type(attr) ~= "string"
    local ri_1
    local rm = if ri then 1 else 0
    local rk = 1093 * rm + 2563 * (1 - rm)
    local rl = 921 * rm + 2946 * (1 - rm)
    if not ((rk * 3406 + rl * 2859 + rk * rl) % 16777213 == 7362550) then
        ri = rh
    end
    if ri then
        return nil
    end
    rh_1, ri_1 = pcall(HttpService.JSONDecode, HttpService, attr)
    local rg_1 = rh_1 and type(ri_1) == "table" and type(ri_1.counts) == "table"
    if rg_1 then
        return ri_1.counts
    end
    return nil
end
local function fn675()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    om = tick()
end
local function fn678(jx)
    if not jx:GetAttribute("IsFish") then
        return false
    end
    local v_ = (og("KeepGolden"))
    if v_ then
        local v0_1 = jx:GetAttribute("Golden") == true or GoldenButterflies.HasGolden(jx:GetAttribute("Attributes"))
        v_ = v0_1
    end
    if v_ then
        return false
    end
    local v__1 = oN(jx:GetAttribute("Attributes"))
    local v0_2 = og("KeepMutated") and #v__1 > 0
    if v0_2 then
        return false
    end
    local v__2 = op[jx:GetAttribute("Id")]
    local v0_3 = (jx:GetAttribute("Rarity"))
    if not v0_3 then
        v0_3 = v__2 and v__2.Rarity
    end
    local v1_2 = v0_3
    local v0_4 = v1_2 == "SHINY"
    local v2 = og("KeepShiny") and v0_4
    if v2 then
        return false
    end
    local v0_5 = n1("SellMaxIncome", 0)
    local v2_1 = v0_5 > 0
    if v2_1 then
        local v3 = tonumber(jx:GetAttribute("Income")) or 0
        v2_1 = v3 > v0_5
    end
    if v2_1 then
        return false
    end
    local v0_6 = nK("SellRarities")
    local v2_2 = oy(v0_6) and not v0_6[v1_2]
    if v2_2 then
        return false
    elseif og("SellAnySpecies") then
        return true
    else
        local v0_7 = nK("SellSpecies")
        return v__2 ~= nil and v0_7[v__2.Name] == true
    end
end
local function fn695(aL)
    for k, v in pairs(aL) do
        if v then
            return true
        end
    end
    return false
end
local function onUnload()
    Library:Unload()
end
local function fn757(W, X)
    if setclipboard then
        setclipboard(W)
    elseif toclipboard then
        toclipboard(W)
    end
    Library:Notify(X)
end
local function onSellAllButterflies()
    SellBatchEvent:FireServer({ mode = "all", kind = "fish" })
    Library:Notify("Requested sell all butterflies")
end
local function fn796()
    local rP = oe()
    if rP then
        rP.CFrame = rP.CFrame * CFrame.new(0, 0, -0.1)
    end
end
local function fn804()
    local rS_1
    local rR_1
    rR_1, rS_1 = pcall(InventoryLimit.Count, oH)
    local rT = not rR_1
    local rX = if rT then 1 else 0
    local rV = 3375 * rX + 678 * (1 - rX)
    local rW = 2476 * rX + 2486 * (1 - rX)
    if not ((rV * 1445 + rW * 3605 + rV * rW) % 16777213 == 5382142) then
        rT = type(rS_1) ~= "number"
    end
    if rT then
        return false
    end
    return rS_1 >= InventoryLimit.MAX
end
local function fn808(aF, aG)
    local qr = Options[aF]
    local qr_1 = qr and qr.Value
    local qw = if qr_1 then 1 else 0
    local qu = 2429 * qw + 1844 * (1 - qw)
    local qv = 929 * qw + 2162 * (1 - qw)
    if not ((qu * 1702 + qv * 3280 + qu * qv) % 16777213 == 9437819) then
        qr_1 = aG
    end
    return qr_1
end
local function onSellAllDecorations()
    SellBatchEvent:FireServer({ mode = "all", kind = "deco" })
    Library:Notify("Requested sell all decorations")
end
local function fn840(ap)
    local qh = Toggles[ap]
    return qh ~= nil and qh.Value == true
end
local function fn848(ag, ah, ai)
    return string.format("<b>%s</b> %s %s", ag, nD("-", "#5a6070"), nD(ah, ai))
end
local function fn921(cf)
    local rI = oe()
    if not rI or not cf then
        return false
    end
    if not CFrame2 then
        CFrame2 = rI.CFrame
    end
    rI.CFrame = CFrame.new(cf + Vector3.new(0, 4, 0))
    return true
end
local function onInputChanged(dH)
    local UserInputType = dH.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oq = tick()
    end
end
local function fn924()
    local rM = oe()
    if rM and CFrame2 then
        rM.CFrame = CFrame2
    end
    CFrame2 = nil
end
nB = nil
GoldenButterflies = nil
nD = nil
nE = nil
nF = nil
nG = nil
nH = nil
nI = nil
PondData = nil
nK = nil
Label = nil
nM = nil
nN = nil
Label2 = nil
nP = nil
Label3 = nil
nS = nil
connection2 = nil
SellBatchEvent = nil
SellItemEvent = nil
nX = nil
nY = nil
RequestClaimEvent = nil
n_ = nil
Options = nil
n1 = nil
Toggles = nil
n5 = nil
n8 = nil
n9 = nil
ob = nil
oe = nil
og = nil
Library = nil
oj = nil
ol = nil
om = nil
oo = nil
local nQ, nU, n2, RequestPondMoney, AddFishInPond, n7, EggHatchEvent, EggPlaceEvent, od, EggPickup, RainbowCollect, CollectFirefly
op = nil
oq = nil
ou = nil
ow = nil
ox = nil
oy = nil
oB = nil
oC = nil
oD = nil
oE = nil
Shop = nil
oG = nil
oH = nil
Weather = nil
CFrame2 = nil
VirtualUser = nil
oM = nil
oN = nil
HttpService = nil
PlotModule = nil
oQ = nil
connection = nil
oS = nil
oT = nil
BuildPlacer = nil
InventoryLimit = nil
oX = nil
oY = nil
connection3 = nil
local ov, oz, oA, oV
local CatchButterfly
ov = nil
oz = nil
oA = nil
local Activities
oV = nil
local pi, pj
HttpService, VirtualUser, oH = nil, nil, nil
local wv_33 = game:GetService("Players")
local wv_10 = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
HttpService = game:GetService("HttpService")
VirtualUser = game:GetService("VirtualUser")
oH = wv_33.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return oH:WaitForChild("PlayerGui")
    end
end
CatchButterfly, CollectFirefly, RainbowCollect, EggPickup, EggPlaceEvent, EggHatchEvent, AddFishInPond, RequestPondMoney, RequestClaimEvent, SellItemEvent, SellBatchEvent, PondData, GoldenButterflies, InventoryLimit, BuildPlacer, PlotModule, Activities, Weather, Shop, oC, ow, Library, Toggles, Options, oD, ox, oo, op, nX, nN, nD, oQ, og, n1, nK, oS, oy, oe, n2, nS, nF, oN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wv_23 = wv_10:WaitForChild("Remotes"):WaitForChild("Events")
local wv_21 = wv_10:WaitForChild("SharedModules")
CatchButterfly = wv_23:WaitForChild("CatchButterfly")
CollectFirefly = wv_23:WaitForChild("CollectFirefly")
RainbowCollect = wv_23:WaitForChild("RainbowCollect")
EggPickup = wv_23:WaitForChild("EggPickup")
EggPlaceEvent = wv_23:WaitForChild("EggPlaceEvent")
EggHatchEvent = wv_23:WaitForChild("EggHatchEvent")
AddFishInPond = wv_23:WaitForChild("AddFishInPond")
RequestPondMoney = wv_23:WaitForChild("RequestPondMoney")
RequestClaimEvent = wv_23:WaitForChild("RequestClaimEvent")
SellItemEvent = wv_23:WaitForChild("SellItemEvent")
SellBatchEvent = wv_23:WaitForChild("SellBatchEvent")
local wv_3 = wv_23:WaitForChild("MessageEvent")
local wv_2 = require(wv_21:WaitForChild("FishData"))
local wv_24 = require(wv_21:WaitForChild("EggData"))
PondData = require(wv_21:WaitForChild("PondData"))
local wv_14 = require(wv_21:WaitForChild("DecorationData"))
GoldenButterflies = require(wv_21:WaitForChild("GoldenButterflies"))
InventoryLimit = require(wv_21:WaitForChild("InventoryLimit"))
BuildPlacer = require(wv_21:WaitForChild("Utils"):WaitForChild("BuildPlacer"))
PlotModule = require(wv_21:WaitForChild("Client"):WaitForChild("PlotModule"))
Activities = workspace:WaitForChild("Activities")
Weather = workspace:WaitForChild("Map"):WaitForChild("Weather")
Shop = workspace:WaitForChild("Shop")
local wv_6 = "BUILD your Butterfly Garden"
oC = "https://discord.gg/ehKVq7pf7v"
ow = "https://rscripts.net/@Ouroboros"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn572)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
if ((not ox or not SellItemEvent or (SellItemEvent or not ox)) and (SellItemEvent and not ox or ox and not ox) or (not ox and SellItemEvent or (not SellItemEvent or not SellItemEvent)) and (not SellItemEvent and not ox and (SellItemEvent and SellItemEvent))) and not ((not ox or not SellItemEvent or (SellItemEvent or not ox)) and (SellItemEvent and not ox or ox and not ox) or (not ox and SellItemEvent or (not SellItemEvent or not SellItemEvent)) and (not SellItemEvent and not ox and (SellItemEvent and SellItemEvent))) then
    nN = fn757
    nD = fns.fn15
    nX = fn310
else
    nX = fn757
    nN = fns.fn15
    nD = fn310
end
oQ = fn848
oD = "#7fd47f"
ox = "#6ec1ff"
oo = "#e8a34d"
local wv_28 = "#8b93a3"
og = fn840
n1 = fn152
nK = fn285
oS = fn808
oy = fn695
oe = fn590
n2 = fn421
nS = fn479
nF = fn71
oN = fn231
op = {}
local wv_18 = {}
local wv_5 = {}
local wv_31 = {}
for k, v in pairs(wv_2.List) do
    table.insert(wv_31, v)
end
wv_21 = nil
wv_33 = 1
repeat
    if (wv_33 * 2 + 4) * 13 % 3 == ((wv_33 * 2 + 4) * 13 + 3) % 3 then
        table.sort(wv_31, fns.fn4)
        wv_21 = {}
    else
        table.sort(wv_21, fns.fn4)
        wv_31 = {}
    end
    wv_33 = (wv_33 + 0) % 4
until (wv_33 * 3 + 3) % 4 == 2
for i, v in ipairs(wv_31) do
    op[v.Id] = v
    table.insert(wv_18, v.Name)
    wv_33 = v.Rarity and not wv_21[v.Rarity]
    if wv_33 then
        wv_21[v.Rarity] = true
        table.insert(wv_5, v.Rarity)
    end
end
nP = nil
nP = {}
wv_23 = {}
wv_10 = {}
wv_21 = {}
for k, v in pairs(wv_24.Eggs) do
    table.insert(wv_21, v)
end
table.sort(wv_21, fn250)
for i, v in ipairs(wv_21) do
    nP[v.EggId] = v
    wv_10[v.Name] = v.EggId
    table.insert(wv_23, v.Name)
end
wv_33 = {}
for k in pairs(wv_24.AttributeStyles) do
    table.insert(wv_33, k)
end
table.sort(wv_33)
oA = nil
oA = {}
local wv_11 = {}
wv_10 = {}
wv_2 = {}
for k, v in pairs(wv_14.List) do
    table.insert(wv_2, v)
end
wv_14, wv_24 = nil, nil
wv_21 = 0
repeat
    wv_31 = {
        "vcw",
        "mafqcmaiymk",
        "fvpx",
        "mjwbtei",
        "eqwnp",
        "aqjxcaa",
        "xqlxkhxo",
        "jqyband",
        "zuyhf",
        "bqsybqaf",
        "nnjlyxmae",
        "wxz",
        "edmoapuwf",
        "qokcw",
        "kjtm"
    }
    if wv_31[(wv_21 * 79 + 52) % 15 + 1] < wv_31[(wv_21 * 79 + 52) % 15 + 1] then
        table.sort(wv_14, fn148)
        wv_24 = {}
        wv_2 = {}
    else
        table.sort(wv_2, fn148)
        wv_14 = {}
        wv_24 = {}
    end
    wv_21 = (wv_21 + 3) % 4
until (wv_21 * 3 + 0) % 4 == 1
for i, v in ipairs(wv_2) do
    oA[v.Id] = v
    if not wv_14[v.Name] then
        wv_14[v.Name] = true
        table.insert(wv_11, v.Name)
    end
    wv_21 = v.RarityLabel and not wv_24[v.RarityLabel]
    if wv_21 then
        wv_24[v.RarityLabel] = true
        table.insert(wv_10, v.RarityLabel)
    end
end
nQ, nM, CFrame2, nG, connection, nI, oV, oB, n_, oX, oG, oj, n7, nY, oM, wv_31 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nQ = { "Spot 1", "Spot 2", "Spot 3", "Spot 4", "Flowerbed" }
nM = {
    ["Spot 1"] = "Display1",
    ["Spot 2"] = "Display2",
    ["Spot 3"] = "Display3",
    ["Spot 4"] = "Display4",
    Flowerbed = "FlowerbedDisplay"
}
nI = fn190
oV = fn628
oB = fn102
n_ = function(b1)
    local rC = n2()
    if not rC or not b1 then
        return false
    elseif b1.Parent == oH.Character then
        return true
    else
        local rD_1 = pcall(function()
            rC:EquipTool(b1)
        end)
        return rD_1 and b1.Parent == oH.Character
    end
end
oX = function()
    local rG = n2()
    if rG then
        pcall(function()
            rG:UnequipTools()
        end)
    end
end
CFrame2 = nil
oG = fn921
oj = fn924
n7 = fn796
nY = fn804
nG = 0
connection = wv_3.OnClientEvent:Connect(onOnClientEvent)
oM = fn364
wv_2 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | BUILD your Butterfly Garden",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local wv_19 = {
    Info = wv_2:AddTab("Info", "info"),
    Catch = wv_2:AddTab("Catch", "bug"),
    Eggs = wv_2:AddTab("Eggs", "egg"),
    Garden = wv_2:AddTab("Garden", "flower-2"),
    Shop = wv_2:AddTab("Shop", "shopping-bag"),
    Sell = wv_2:AddTab("Sell", "coins"),
    Settings = wv_2:AddTab("Settings", "settings")
}
if ((not nY or not oG or not oV and wv_19) and (oV or not wv_19 or oG and not oG) and (wv_19 and nY and (not oV and not wv_19) or (oV or wv_19 or not oV and nY)) or (oG or oG or (nG or not nG) or wv_19 and nG and (oV and nY)) and (not wv_19 and not nY and (not oG and not nG) and (nY and not nG or not oV and wv_19))) and not ((not nY or not oG or not oV and wv_19) and (oV or not wv_19 or oG and not oG) and (wv_19 and nY and (not oV and not wv_19) or (oV or wv_19 or not oV and nY)) or (oG or oG or (nG or not nG) or wv_19 and nG and (oV and nY)) and (not wv_19 and not nY and (not oG and not nG) and (nY and not nG or not oV and wv_19))) then
    oj = fn170
else
    wv_31 = fn170
end
for k, v in wv_19 do
    wv_31(v)
end
ob, wv_21, wv_14, Label3, Label2, Label, nH, nE, wv_24 = nil, nil, nil, nil, nil, nil, nil, nil, nil
wv_2 = 19
repeat
    wv_3 = (wv_2 * 4 + 0) % 5 + 1
    if wv_3 <= 3 then
        if wv_3 <= 2 then
            if wv_3 <= 1 then
                if wv_2 * 122592575 + 5 + 1 <= wv_2 * 122592575 + 5 + 1 + 1 then
                    wv_24 = #nE > 18
                else
                    nE = #wv_24 > 18
                end
                wv_2 = (wv_2 + 19) % 20
            else
                wv_31 = (vector.create((wv_2 * 1 + 4) % 11 + 1, (wv_2 * 1 + 4) % 13 + 1, (wv_2 * 14 + 2) % 17 + 1))
                local xv = vector.floor(wv_31) + vector.ceil(wv_31 * -1)
                if vector.dot(xv, xv) == 0 then
                    ob = "Unknown"
                else
                    wv_24 = "Unknown"
                end
                wv_2 = (wv_2 + 19) % 20
            end
        else
            wv_31 = (vector.create((wv_2 * 3 + 8) % 11 + 1, (wv_2 * 3 + 13) % 13 + 1, (wv_2 * 6 + 7) % 17 + 1))
            wv_8 = (vector.create((wv_2 * 6 + 9) % 11 + 1, (wv_2 * 8 + 3) % 13 + 1, (wv_2 * 9 + 14) % 17 + 1))
            pi = (vector.create((wv_2 * 2 + 7) % 11 + 1, (wv_2 * 9 + 8) % 13 + 1, (wv_2 * 4 + 4) % 17 + 1))
            pj = (vector.create((wv_2 * 5 + 2) % 11 + 1, (wv_2 * 1 + 8) % 13 + 1, (wv_2 * 15 + 17) % 17 + 1))
            if vector.dot(vector.cross(wv_31, wv_8), (vector.cross(pi, pj))) == vector.dot(wv_31, pi) * vector.dot(wv_8, pj) - vector.dot(wv_31, pj) * vector.dot(wv_8, pi) + 1 then
                pcall(fn443)
                wv_19 = wv_21.Info:AddLeftGroupbox("Account", "circle-user")
            else
                pcall(fn443)
                wv_21 = wv_19.Info:AddLeftGroupbox("Account", "circle-user")
            end
            wv_2 = (wv_2 + 9) % 20
        end
    elseif wv_3 <= 4 then
        wv_3 = {
            "nyc",
            "pbqrasilg",
            "qnawrxvwafqh",
            "jjj",
            "ouaosp",
            "nkbl",
            "atrbs",
            "cfejtku",
            "bvcibb",
            "dqqypclp",
            "qcmzgokjtviv",
            "axqcfedk",
            "csotxyvjk",
            "jtxlctfozacu",
            "ormcfqyal"
        }
        if wv_3[(wv_2 * 40 + 32) % 15 + 1] < wv_3[(wv_2 * 40 + 32) % 15 + 1] then
            Label2:AddLabel(wv_21("User", nD.Name, ob), true)
            Label2:AddLabel(wv_21("Status", "Keyless", ob), true)
            Label2:AddLabel(wv_21("Executor", wv_14, ob), true)
            wv_19 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            wv_19:AddLabel(oQ(Label .. " [" .. tostring(game.PlaceId) .. "]", Label3), true)
            wv_19:AddLabel(wv_21("Place ID", tostring(game.PlaceId), Label3), true)
            oo = wv_19:AddLabel(wv_21("Session time", "0s", oD), true)
            ox = wv_19:AddLabel(wv_21("Money", "0", ob), true)
            nH = wv_19:AddLabel(wv_21("Weather", "Clear", oD), true)
            oH = wv_19:AddLabel(wv_21("Inventory", "0", Label3), true)
        else
            wv_21:AddLabel(oQ("User", oH.Name, oD), true)
            wv_21:AddLabel(oQ("Status", "Keyless", oD), true)
            wv_21:AddLabel(oQ("Executor", ob, oD), true)
            wv_14 = wv_19.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            wv_14:AddLabel(nD(wv_6 .. " [" .. tostring(game.PlaceId) .. "]", ox), true)
            wv_14:AddLabel(oQ("Place ID", tostring(game.PlaceId), ox), true)
            Label3 = wv_14:AddLabel(oQ("Session time", "0s", oo), true)
            Label2 = wv_14:AddLabel(oQ("Money", "0", oD), true)
            Label = wv_14:AddLabel(oQ("Weather", "Clear", oo), true)
            nH = wv_14:AddLabel(oQ("Inventory", "0", ox), true)
        end
        wv_2 = (wv_2 + 9) % 20
    else
        if wv_2 * 29897737 + 2 + 1 >= wv_2 * 29897737 + 2 + 1 + 2 then
            wv_24 = tostring(game.JobId)
        else
            nE = tostring(game.JobId)
        end
        wv_2 = (wv_2 + 4) % 20
    end
until (wv_2 * 9 + 14) % 20 == 5
if wv_24 then
    wv_21 = 2
    repeat
        wv_2 = (vector.create((wv_21 * 4 + 1) % 11 + 1, (wv_21 * 10 + 7) % 13 + 1, (wv_21 * 6 + 7) % 17 + 1))
        wv_3 = (vector.create((wv_21 * 5 + 6) % 11 + 1, (wv_21 * 7 + 8) % 13 + 1, (wv_21 * 15 + 8) % 17 + 1))
        wv_31 = (vector.create((wv_21 * 3 + 2) % 11 + 1, (wv_21 * 8 + 6) % 13 + 1, (wv_21 * 15 + 14) % 17 + 1))
        wv_8 = (vector.create((wv_21 * 1 + 2) % 11 + 1, (wv_21 * 10 + 12) % 13 + 1, (wv_21 * 2 + 10) % 17 + 1))
        if vector.dot(vector.cross(wv_2, wv_3), (vector.cross(wv_31, wv_8))) == vector.dot(wv_2, wv_31) * vector.dot(wv_3, wv_8) - vector.dot(wv_2, wv_8) * vector.dot(wv_3, wv_31) + 3 then
            nE = string.sub(wv_24, 1, 18) .. "..."
        else
            wv_24 = string.sub(nE, 1, 18) .. "..."
        end
        wv_21 = (wv_21 + 0) % 4
    until (wv_21 * 1 + 2) % 4 == 0
end
wv_21 = wv_24 or nE
wv_2, oq, om, connection2, connection3, n9, n5, ou, oY, oT, oE, ol, nB, od, oz, nU, ov, n8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pw = wv_21
wv_14:AddLabel(oQ("Server", pw, wv_28), true)
wv_14:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
local ScriptsGroup = wv_19.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nD("Included in this hub", wv_28), true)
ScriptsGroup:AddLabel(nD(wv_6, ox), true)
local FeaturesGroup = wv_19.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nD("Auto Catch Butterflies + Fireflies", ox), true)
FeaturesGroup:AddLabel(nD("Auto Buy + Collect Eggs", ox), true)
FeaturesGroup:AddLabel(nD("Full Egg Chain (Place, Hatch, Pond)", oD), true)
FeaturesGroup:AddLabel(nD("Auto Nectar + Offline Income", oD), true)
FeaturesGroup:AddLabel(nD("Auto Buy Decorations", oo), true)
FeaturesGroup:AddLabel(nD("Smart Filtered Sell", oo), true)
FeaturesGroup:AddLabel(nD("Misc Utilities", wv_28), true)
local SocialsGroup = wv_19.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nN })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = wv_19.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nN })
local FaqGroup = wv_19.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoCatchButterfliesGroup = wv_19.Catch:AddLeftGroupbox("Auto Catch Butterflies", "bug")
AutoCatchButterfliesGroup:AddToggle("AutoCatch", { Text = "Auto Catch Butterflies", Default = false })
AutoCatchButterfliesGroup:AddToggle("CatchAnySpecies", { Text = "Catch Any Species", Default = true })
AutoCatchButterfliesGroup:AddDropdown("CatchSpecies", { Text = "Species", Values = wv_18, Default = {}, Multi = true })
AutoCatchButterfliesGroup:AddDropdown("CatchRarities", { Text = "Rarity Lock", Values = wv_5, Default = {}, Multi = true })
AutoCatchButterfliesGroup:AddToggle("CatchHop", { Text = "Teleport To Butterfly", Default = true })
AutoCatchButterfliesGroup:AddToggle("CatchStopWhenFull", { Text = "Stop When Inventory Full", Default = true })
AutoCatchButterfliesGroup:AddSlider("CatchDelay", { Text = "Loop Delay", Default = 0.6, Min = 0.1, Max = 10, Rounding = 1 })
local AutoCatchFirefliesGroup = wv_19.Catch:AddRightGroupbox("Auto Catch Fireflies", "sparkle")
AutoCatchFirefliesGroup:AddToggle("AutoFireflies", { Text = "Auto Catch Fireflies", Default = false })
AutoCatchFirefliesGroup:AddToggle("FireflyHop", { Text = "Teleport To Firefly", Default = true })
AutoCatchFirefliesGroup:AddSlider("FireflyDelay", { Text = "Loop Delay", Default = 0.6, Min = 0.1, Max = 10, Rounding = 1 })
local AutoCollectRainbowEggsGroup = wv_19.Catch:AddRightGroupbox("Auto Collect Rainbow Eggs", "rainbow")
AutoCollectRainbowEggsGroup:AddToggle("AutoRainbow", { Text = "Auto Collect Rainbow Eggs", Default = false })
AutoCollectRainbowEggsGroup:AddToggle("RainbowHop", { Text = "Teleport To Rainbow Egg", Default = true })
AutoCollectRainbowEggsGroup:AddSlider("RainbowDelay", { Text = "Loop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
local AutoBuyEggsGroup = wv_19.Eggs:AddLeftGroupbox("Auto Buy Eggs", "shopping-cart")
AutoBuyEggsGroup:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
AutoBuyEggsGroup:AddDropdown("BuyEggTypes", { Text = "Egg Types", Values = wv_23, Default = {}, Multi = true })
AutoBuyEggsGroup:AddDropdown("BuyEggMutations", { Text = "Mutations", Values = wv_33, Default = {}, Multi = true })
AutoBuyEggsGroup:AddToggle("BuyEggAnyMutation", { Text = "Accept Any Mutation", Default = true })
AutoBuyEggsGroup:AddToggle("BuyEggMutatedOnly", { Text = "Mutated Eggs Only", Default = false })
AutoBuyEggsGroup:AddDropdown("BuyEggWeather", {
    Text = "Only During Weather",
    Values = { "Any", "Clear", "Rainy", "Eclipse", "Astral", "Magma", "Rainbow" },
    Default = "Any",
    Multi = false
})
AutoBuyEggsGroup:AddToggle("BuyEggHop", { Text = "Teleport To Egg", Default = true })
AutoBuyEggsGroup:AddInput("BuyEggReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
AutoBuyEggsGroup:AddSlider("BuyEggDelay", { Text = "Loop Delay", Default = 1, Min = 0.2, Max = 15, Rounding = 1 })
local AutoCollectRiverEggsGroup = wv_19.Eggs:AddLeftGroupbox("Auto Collect River Eggs", "waves")
AutoCollectRiverEggsGroup:AddToggle("AutoRiver", { Text = "Auto Collect River Eggs", Default = false })
AutoCollectRiverEggsGroup:AddToggle("RiverHop", { Text = "Teleport To River Egg", Default = true })
AutoCollectRiverEggsGroup:AddInput("RiverReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
AutoCollectRiverEggsGroup:AddSlider("RiverDelay", { Text = "Loop Delay", Default = 0.8, Min = 0.2, Max = 10, Rounding = 1 })
pj = wv_19.Eggs:AddRightGroupbox("Full Egg Chain", "workflow")
pj:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs From Backpack", Default = false })
pj:AddDropdown("PlaceEggTypes", { Text = "Egg Types", Values = wv_23, Default = {}, Multi = true })
pj:AddToggle("PlaceAnyEgg", { Text = "Place Any Egg", Default = true })
pj:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
pj:AddToggle("HatchHop", { Text = "Teleport To Egg When Ready", Default = true })
pj:AddSlider("ChainDelay", { Text = "Loop Delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1 })
pi = wv_19.Garden:AddLeftGroupbox("Auto Place Butterflies In Ponds", "flower-2")
pi:AddToggle("AutoPond", { Text = "Auto Place Butterflies In Ponds", Default = false })
pi:AddToggle("PondAnySpecies", { Text = "Place Any Species", Default = true })
pi:AddDropdown("PondSpecies", { Text = "Species", Values = wv_18, Default = {}, Multi = true })
pi:AddDropdown("PondRarities", { Text = "Rarity", Values = wv_5, Default = {}, Multi = true })
pi:AddDropdown("PondMutations", { Text = "Mutations", Values = wv_33, Default = {}, Multi = true })
pi:AddToggle("PondAnyMutation", { Text = "Accept Any Mutation", Default = true })
pi:AddInput("PondMinIncome", { Text = "Min Income", Default = "0", Numeric = true, Finished = true })
pi:AddSlider("PondDelay", { Text = "Loop Delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1 })
wv_8 = wv_19.Garden:AddRightGroupbox("Income", "banknote")
wv_8:AddToggle("AutoNectar", { Text = "Auto Collect Pond Nectar", Default = false })
wv_8:AddToggle("NectarHop", { Text = "Teleport To Pond", Default = false })
wv_8:AddSlider("NectarDelay", { Text = "Nectar Loop Delay", Default = 1, Min = 0.5, Max = 15, Rounding = 1 })
wv_8:AddToggle("AutoClaimOffline", { Text = "Auto Claim Offline Income", Default = false })
wv_8:AddSlider("ClaimDelay", { Text = "Claim Loop Delay", Default = 30, Min = 5, Max = 300, Rounding = 0 })
wv_31 = wv_19.Shop:AddLeftGroupbox("Auto Buy Decorations", "store")
wv_31:AddToggle("AutoBuyDeco", { Text = "Auto Buy Decorations", Default = false })
wv_31:AddDropdown("DecoSpots", {
    Text = "Spots",
    Values = nQ,
    Default = { "Spot 1", "Spot 2", "Spot 3", "Spot 4", "Flowerbed" },
    Multi = true
})
wv_31:AddToggle("DecoAnyItem", { Text = "Buy Any Decoration", Default = false })
wv_31:AddDropdown("DecoItems", { Text = "Catalogue", Values = wv_11, Default = {}, Multi = true, Searchable = true })
wv_31:AddDropdown("DecoRarities", { Text = "Rarity", Values = wv_10, Default = {}, Multi = true })
wv_31:AddInput("DecoMaxPrice", { Text = "Max Price (0 = any)", Default = "0", Numeric = true, Finished = true })
wv_31:AddInput("DecoReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
wv_31:AddToggle("DecoHop", { Text = "Teleport To Shop", Default = true })
wv_31:AddSlider("DecoDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
wv_3 = wv_19.Sell:AddLeftGroupbox("Smart Filtered Sell", "coins")
wv_3:AddToggle("AutoSell", { Text = "Auto Sell Butterflies", Default = false })
wv_3:AddToggle("SellAnySpecies", { Text = "Sell Any Species", Default = false })
wv_3:AddDropdown("SellSpecies", { Text = "Species", Values = wv_18, Default = {}, Multi = true })
wv_3:AddDropdown("SellRarities", { Text = "Rarity", Values = wv_5, Default = {}, Multi = true })
wv_3:AddInput("SellMaxIncome", { Text = "Never Sell Income Above (0 = off)", Default = "0", Numeric = true, Finished = true })
wv_3:AddSlider("SellStartAt", { Text = "Only Sell When Inventory Above", Default = 0, Min = 0, Max = 2500, Rounding = 0 })
wv_3:AddToggle("SellHop", { Text = "Teleport To Sell NPC", Default = true })
wv_3:AddSlider("SellDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
wv_24 = wv_19.Sell:AddRightGroupbox("Never Sell", "shield")
if (false and FaqGroup and (connection3 or n5) or false and not FaqGroup and (not connection3 and not wv_24) or ((FaqGroup or not n5) and (false or not connection3) or wv_24 and n5 and (false or not n5))) and not (false and FaqGroup and (connection3 or n5) or false and not FaqGroup and (not connection3 and not wv_24) or ((FaqGroup or not n5) and (false or not connection3) or wv_24 and n5 and (false or not n5))) then
    wv_2:AddToggle("KeepGolden", { Text = "Never Sell Golden", Default = true })
    wv_2:AddToggle("KeepMutated", { Text = "Never Sell Mutated", Default = true })
    wv_2:AddToggle("KeepShiny", { Text = "Never Sell Shiny Rarity", Default = true })
    wv_19 = wv_24.Sell:AddRightGroupbox("Bulk Sell", "package-open")
else
    wv_24:AddToggle("KeepGolden", { Text = "Never Sell Golden", Default = true })
    wv_24:AddToggle("KeepMutated", { Text = "Never Sell Mutated", Default = true })
    wv_24:AddToggle("KeepShiny", { Text = "Never Sell Shiny Rarity", Default = true })
    wv_2 = wv_19.Sell:AddRightGroupbox("Bulk Sell", "package-open")
end
wv_2:AddSlider("KeepBestCount", { Text = "Keep Best Butterflies", Default = 60, Min = 0, Max = 1000, Rounding = 0 })
wv_2:AddButton({ Text = "Sell All But Best", Func = onSellAllButBest })
wv_2:AddButton({ Text = "Sell All Butterflies", Func = onSellAllButterflies })
wv_2:AddButton({ Text = "Sell All Eggs", Func = onSellAllEggs })
wv_2:AddButton({ Text = "Sell All Decorations", Func = onSellAllDecorations })
local MenuGroup = wv_19.Settings:AddLeftGroupbox("Menu", "settings")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
oq = tick()
om = tick()
pcall(function()
    for i, v in ipairs(getconnections(oH.Idled)) do
        local sg = v
        pcall(function()
            sg:Disable()
        end)
    end
end)
n5 = fn675
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn401)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/BuildYourButterflyGarden")
SaveManager:BuildConfigSection(wv_19.Settings)
ThemeManager:ApplyToTab(wv_19.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(fns.worker)
n9 = os.clock()
if (AutoCollectRiverEggsGroup or not AutoCollectRainbowEggsGroup or false and not AutoCollectRainbowEggsGroup) and (not oY and AutoCollectRiverEggsGroup and (ol or false)) and ((AutoCollectRainbowEggsGroup or oY) and (AutoCollectRiverEggsGroup or ol) or (oY or not AutoCollectRiverEggsGroup) and (false and AutoCollectRainbowEggsGroup)) or (not AutoCollectRainbowEggsGroup and ol and (not AutoCollectRiverEggsGroup and not AutoCollectRainbowEggsGroup) and ((not oY or AutoCollectRiverEggsGroup) and (not AutoCollectRainbowEggsGroup or false)) or (not AutoCollectRiverEggsGroup or not AutoCollectRainbowEggsGroup) and (not AutoCollectRiverEggsGroup and not oY) and (AutoCollectRainbowEggsGroup and AutoCollectRainbowEggsGroup and (AutoCollectRiverEggsGroup or not AutoCollectRiverEggsGroup))) or not ((AutoCollectRiverEggsGroup or not AutoCollectRainbowEggsGroup or false and not AutoCollectRainbowEggsGroup) and (not oY and AutoCollectRiverEggsGroup and (ol or false)) and ((AutoCollectRainbowEggsGroup or oY) and (AutoCollectRiverEggsGroup or ol) or (oY or not AutoCollectRiverEggsGroup) and (false and AutoCollectRainbowEggsGroup)) or (not AutoCollectRainbowEggsGroup and ol and (not AutoCollectRiverEggsGroup and not AutoCollectRainbowEggsGroup) and ((not oY or AutoCollectRiverEggsGroup) and (not AutoCollectRainbowEggsGroup or false)) or (not AutoCollectRiverEggsGroup or not AutoCollectRainbowEggsGroup) and (not AutoCollectRiverEggsGroup and not oY) and (AutoCollectRainbowEggsGroup and AutoCollectRainbowEggsGroup and (AutoCollectRiverEggsGroup or not AutoCollectRiverEggsGroup)))) then
    task.spawn(fns.worker2)
    ou = fn520
    task.spawn(function()
        while not Library.Unloaded do
            local sF = (og("AutoCatch"))
            if sF then
                local sG_3 = og("CatchStopWhenFull") and nY()
                sF = not sG_3
            end
            if sF then
                local Butterflies = Activities:FindFirstChild("Butterflies")
                if Butterflies then
                    for i, child in ipairs(Butterflies:GetChildren()) do
                        local sF_6 = Library.Unloaded or not og("AutoCatch")
                        if sF_6 then
                            break
                        else
                            local attr2 = child:GetAttribute("Uuid")
                            local attr = child:GetAttribute("FishId")
                            local sG_4 = attr2 and attr and ou(attr, "CatchAnySpecies", "CatchSpecies", "CatchRarities")
                            if sG_4 then
                                local sF_8 = og("CatchHop") and child:IsA("BasePart")
                                if sF_8 then
                                    oG(child.Position)
                                    task.wait(0.35)
                                end
                                pcall(function()
                                    CatchButterfly:FireServer(attr2)
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    oj()
                end
            end
            task.wait(n1("CatchDelay", 0.6))
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if og("AutoFireflies") then
                local Fireflies = Activities:FindFirstChild("Fireflies")
                if Fireflies then
                    for i, child in ipairs(Fireflies:GetChildren()) do
                        local sP_3 = Library.Unloaded or not og("AutoFireflies")
                        if sP_3 then
                            break
                        else
                            local attr = child:GetAttribute("Uuid")
                            if attr then
                                local sP_4 = og("FireflyHop") and child:IsA("BasePart")
                                if sP_4 then
                                    oG(child.Position)
                                    task.wait(0.35)
                                end
                                pcall(function()
                                    CollectFirefly:FireServer(attr)
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    oj()
                end
            end
            task.wait(n1("FireflyDelay", 0.6))
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if og("AutoRainbow") then
                local RainbowEggsClient = workspace:FindFirstChild("RainbowEggsClient")
                if RainbowEggsClient then
                    for i, child in ipairs(RainbowEggsClient:GetChildren()) do
                        local sY_4 = Library.Unloaded or not og("AutoRainbow")
                        if sY_4 then
                            break
                        else
                            local sX = tonumber(string.match(child.Name, "^RainbowEgg_(%d+)$"))
                            if sX then
                                local sY_5 = (child:IsA("Model"))
                                if sY_5 then
                                    local sZ_4 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                                    sY_5 = sZ_4
                                end
                                local sY_6 = sY_5 or nil
                                local sZ_6 = og("RainbowHop") and sY_6
                                if sZ_6 then
                                    oG(sY_6.Position)
                                    task.wait(0.35)
                                end
                                pcall(function()
                                    RainbowCollect:FireServer(sX)
                                end)
                                task.wait(0.2)
                            end
                        end
                    end
                    oj()
                end
            end
            task.wait(n1("RainbowDelay", 1))
        end
    end)
    oY = fn180
else
    task.spawn(fns.worker2)
    oY = fn520
    task.spawn(function()
        while not Library.Unloaded do
            local sF = (og("AutoCatch"))
            if sF then
                local sG_1 = og("CatchStopWhenFull") and nY()
                sF = not sG_1
            end
            if sF then
                local Butterflies = Activities:FindFirstChild("Butterflies")
                if Butterflies then
                    for i, child in ipairs(Butterflies:GetChildren()) do
                        local sF_2 = Library.Unloaded or not og("AutoCatch")
                        if sF_2 then
                            break
                        else
                            local attr2 = child:GetAttribute("Uuid")
                            local attr = child:GetAttribute("FishId")
                            local sG_2 = attr2 and attr and ou(attr, "CatchAnySpecies", "CatchSpecies", "CatchRarities")
                            if sG_2 then
                                local sF_4 = og("CatchHop") and child:IsA("BasePart")
                                if sF_4 then
                                    oG(child.Position)
                                    task.wait(0.35)
                                end
                                pcall(function()
                                    CatchButterfly:FireServer(attr2)
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    oj()
                end
            end
            task.wait(n1("CatchDelay", 0.6))
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if og("AutoFireflies") then
                local Fireflies = Activities:FindFirstChild("Fireflies")
                if Fireflies then
                    for i, child in ipairs(Fireflies:GetChildren()) do
                        local sP_1 = Library.Unloaded or not og("AutoFireflies")
                        if sP_1 then
                            break
                        else
                            local attr = child:GetAttribute("Uuid")
                            if attr then
                                local sP_2 = og("FireflyHop") and child:IsA("BasePart")
                                if sP_2 then
                                    oG(child.Position)
                                    task.wait(0.35)
                                end
                                pcall(function()
                                    CollectFirefly:FireServer(attr)
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    oj()
                end
            end
            task.wait(n1("FireflyDelay", 0.6))
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if og("AutoRainbow") then
                local RainbowEggsClient = workspace:FindFirstChild("RainbowEggsClient")
                if RainbowEggsClient then
                    for i, child in ipairs(RainbowEggsClient:GetChildren()) do
                        local sY_1 = Library.Unloaded or not og("AutoRainbow")
                        if sY_1 then
                            break
                        else
                            local sX = tonumber(string.match(child.Name, "^RainbowEgg_(%d+)$"))
                            if sX then
                                local sY_2 = (child:IsA("Model"))
                                if sY_2 then
                                    local sZ_1 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                                    sY_2 = sZ_1
                                end
                                local sY_3 = sY_2 or nil
                                local sZ_3 = og("RainbowHop") and sY_3
                                if sZ_3 then
                                    oG(sY_3.Position)
                                    task.wait(0.35)
                                end
                                pcall(function()
                                    RainbowCollect:FireServer(sX)
                                end)
                                task.wait(0.2)
                            end
                        end
                    end
                    oj()
                end
            end
            task.wait(n1("RainbowDelay", 1))
        end
    end)
    ou = fn180
end
oT = fn438
oE = fn621
ol = function(ft, fu)
    local td_1
    local tc_1
    tc_1, td_1 = pcall(function()
        return ft:GetPivot()
    end)
    local te = og(fu) and tc_1
    if te then
        oG(td_1.Position)
        task.wait(0.35)
    end
    pcall(function()
        EggPickup:FireServer(ft.Name)
    end)
    task.wait(0.25)
end
task.spawn(worker3)
task.spawn(worker4)
nB = function(gj)
    local tS_1
    local tQ = {}
    local Builds = gj:FindFirstChild("Builds")
    local tR_1
    if not Builds then
        return tQ
    end
    for i, child in ipairs(Builds:GetChildren()) do
        for i, child in ipairs(child:GetChildren()) do
            local t5 = child
            if t5:IsA("Model") then
                tR_1, tS_1 = pcall(function()
                    return t5:GetPivot()
                end)
                if tR_1 then
                    local tR_2 = math.floor(tS_1.Position.X / 4 + 0.5)
                    local tT = math.floor(tS_1.Position.Z / 4 + 0.5)
                    tQ[tR_2 .. "|" .. tT] = true
                end
            end
        end
    end
    return tQ
end
od = fn408
task.spawn(function()
    while not Library.Unloaded do
        if og("AutoPlaceEggs") then
            local ui = nF()
            local uj = ui and ui:FindFirstChild("Builds") and ui.Builds:FindFirstChild("Eggs")
            if ui and uj then
                local uj_2 = nK("PlaceEggTypes")
                local ul = og("PlaceAnyEgg")
                for i, v in ipairs(oB()) do
                    local uh
                    local um = Library.Unloaded or not og("AutoPlaceEggs")
                    local um_3
                    if um then
                        break
                    else
                        local attr = v:GetAttribute("EggId")
                        local um_1 = attr and nP[attr]
                        local um_2 = v:GetAttribute("IsEgg") and um_1 and (ul or uj_2[um_1.Name])
                        if um_2 then
                            um_3, uh = od(ui, 40)
                            local un_1 = uh and n_(v)
                            if un_1 then
                                local un_2 = #uj:GetChildren()
                                for i, v2 in ipairs(um_3) do
                                    local uB = v2
                                    pcall(function()
                                        EggPlaceEvent:FireServer(attr, CFrame.new(uB), uh)
                                    end)
                                    task.wait(0.25)
                                    local um_4 = #uj:GetChildren() > un_2 or v.Parent == nil
                                    if um_4 then
                                        break
                                    end
                                end
                                oX()
                            end
                        end
                    end
                end
            end
        end
        task.wait(n1("ChainDelay", 1))
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if og("AutoHatchEggs") then
            local uC = nF()
            local uC_4
            local uD = uC and uC:FindFirstChild("Builds") and uC.Builds:FindFirstChild("Eggs")
            local uD_2
            if uD then
                for i, child in ipairs(uD:GetChildren()) do
                    local uK = child
                    local uC_2 = Library.Unloaded or not og("AutoHatchEggs")
                    if uC_2 then
                        break
                    end
                    local ValidTime = uK:FindFirstChild("ValidTime")
                    local uD_1 = uK:GetAttribute("OwnerUserId") == oH.UserId and ValidTime and ValidTime.Value <= workspace:GetServerTimeNow()
                    if uD_1 then
                        if og("HatchHop") then
                            uC_4, uD_2 = pcall(function()
                                return uK:GetPivot()
                            end)
                            if uC_4 then
                                oG(uD_2.Position)
                                task.wait(0.35)
                            end
                        end
                        pcall(function()
                            EggHatchEvent:FireServer(uK, "Hatch")
                        end)
                        task.wait(0.3)
                    end
                end
                oj()
            end
        end
        task.wait(n1("ChainDelay", 1))
    end
end)
oz = fn361
nU = fn476
task.spawn(function()
    while not Library.Unloaded do
        if og("AutoPond") then
            local u5 = nF()
            local u6 = u5 and u5:FindFirstChild("Builds") and u5.Builds:FindFirstChild("Ponds")
            if u6 then
                for i, child in ipairs(u6:GetChildren()) do
                    local vd = child
                    local u5_2 = Library.Unloaded or not og("AutoPond")
                    if u5_2 then
                        break
                    end
                    local u5_3 = oz(vd)
                    if u5_3 > 0 then
                        for i, v in ipairs(oB()) do
                            local vj = v
                            local u6_1 = u5_3 <= 0 or Library.Unloaded or not og("AutoPond")
                            if u6_1 then
                                break
                            end
                            local u6_2 = vj:GetAttribute("IsFish") and nU(vj) and n_(vj)
                            if u6_2 then
                                pcall(function()
                                    AddFishInPond:FireServer(vd, vj)
                                end)
                                task.wait(0.25)
                                u5_3 = oz(vd)
                            end
                        end
                        oX()
                    end
                end
            end
        end
        task.wait(n1("PondDelay", 1))
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if og("AutoNectar") then
            local vk = nF()
            local vk_5
            local vl = vk and vk:FindFirstChild("Builds") and vk.Builds:FindFirstChild("Ponds")
            local vl_2
            if vl then
                for i, child in ipairs(vl:GetChildren()) do
                    local vs = child
                    local vk_2 = Library.Unloaded or not og("AutoNectar")
                    if vk_2 then
                        break
                    end
                    local Stats = vs:FindFirstChild("Stats")
                    local vl_1 = Stats and Stats:FindFirstChild("Money")
                    local vk_4 = vl_1
                    if vl_1 then
                        vl_1 = vk_4.Value > 0
                    end
                    if vl_1 then
                        if og("NectarHop") then
                            vk_5, vl_2 = pcall(function()
                                return vs:GetPivot()
                            end)
                            if vk_5 then
                                oG(vl_2.Position)
                            end
                        end
                        n7()
                        pcall(function()
                            RequestPondMoney:FireServer(vs)
                        end)
                        task.wait(0.85)
                    end
                end
                oj()
            end
        end
        task.wait(n1("NectarDelay", 1))
    end
end)
task.spawn(worker5)
ov = fn135
task.spawn(function()
    while not Library.Unloaded do
        if og("AutoBuyDeco") then
            local vE = nK("DecoSpots")
            local vF = nK("DecoItems")
            local vG = nK("DecoRarities")
            local vH = og("DecoAnyItem")
            local vI = n1("DecoMaxPrice", 0)
            local vJ = n1("DecoReserve", 0)
            local vK = oV()
            local vL = false
            for i, v in ipairs(nQ) do
                local vD
                local vM = Library.Unloaded or not og("AutoBuyDeco")
                local vM_1
                if vM then
                    break
                elseif vE[v] then
                    vM_1, vD = ov(v)
                    local vN = vM_1 and vD and vD:IsA("ProximityPrompt")
                    if vN then
                        local attr = vM_1:GetAttribute("ShopItemId")
                        local vM_2 = oA[attr]
                        local vO = vK
                        if vO then
                            local vP_1 = tonumber(vK[tostring(attr)]) or 0
                            vO = vP_1
                        end
                        local vN_2 = vO or 1
                        local vO_1 = vM_2
                        if vO_1 then
                            vO_1 = vM_2.Price
                        end
                        local vN_3 = vO_1 or 0
                        local vO_2 = vH
                        if not vO_2 then
                            vO_2 = vM_2 and vF[vM_2.Name] == true
                        end
                        local vN_5 = vO_2
                        local vO_3 = not oy(vG)
                        if not vO_3 then
                            vO_3 = vM_2 and vG[vM_2.RarityLabel] == true
                        end
                        local vR_2 = vO_3
                        local vO_4 = vI <= 0 or vN_3 <= vI
                        local vS = vM_2
                        if vS then
                            vS = vN_5
                        end
                        if vS then
                            vS = vR_2
                        end
                        if vS then
                            vS = vO_4
                        end
                        if vS then
                            vS = vN_2 > 0
                        end
                        if vS then
                            vS = nS() - vN_3 >= vJ
                        end
                        if vS then
                            local vM_4 = not vL
                            local vN_6 = og("DecoHop") and vM_4
                            if vN_6 then
                                local ShopPart = Shop:FindFirstChild("ShopPart")
                                if ShopPart then
                                    oG(ShopPart.Position)
                                    vL = true
                                    task.wait(0.3)
                                end
                            end
                            pcall(function()
                                fireproximityprompt(vD)
                            end)
                            task.wait(0.4)
                        end
                    end
                end
            end
            if vL then
                oj()
            end
        end
        task.wait(n1("DecoDelay", 2))
    end
end)
n8 = fn678
task.spawn(worker6)
