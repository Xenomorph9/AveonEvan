local fns = {}
local wy_25, RunService, wy_30, wy_42, wy_44, wy_47
local oC
local pj
local og
local o0
local nY
local oI
local pp
local om
local o6
local n3
local connection2
local nL
local ov
local pc
local n9
local oU
local nR
local oB
local pi
local of
local ClaimIndex
local oH
local ol
local n2
local oN
local ou
local pb
local n8
local oT
local oA
local ph
local oe
local oZ
local nW
local Toggles
local pn
local ok
local o4
local n1
local oM
local pt
local nJ
local InfiniteMath
local ot
local n7
local oS
local nP
local oz
local pg
local od
local oY
local nV
local oF
local pm
local oj
local CurrentCamera
local n0
local oL
local PlrData
local oq
local HttpService
local n6
local LocalPlayer
local TeleportToWorld
local Click
local FishData
local oc
local oX
local ToggleBoat
local oE
local pl
local oi
local o2
local n_
local SaveManager
local pr
local MainModule
local op
local o8
local n5
local oQ
local nN
local ox
local VirtualUser
local ob
local Label
local nT
local oD
local pk
local oh
local o1
local nZ
local oJ
local pq
local oo
local o7
local n4
local oP
local nM
local ow
local pd
local oa
local Workspace
local nS
function fns.fn9(gm, gn)
    return string.format('<font color="%s">%s</font>', gn, gm)
end
function fns.fn14(bD, bE)
    local rn = {}
    local ro = {}
    for k, v in bD do
        local rp_1 = type(v) == "table" and v.Pass == nil and v.Name
        if rp_1 then
            rn[#rn + 1] = k
        end
    end
    table.sort(rn, function(bK, bL)
        local rk_1
        local rj_1
        rj_1, rk_1 = tonumber(bK), tonumber(bL)
        if rj_1 and rk_1 then
            return rj_1 < rk_1
        elseif rj_1 then
            return true
        elseif rk_1 then
            return false
        else
            return tostring(bK) < tostring(bL)
        end
    end)
    local rp_2 = {}
    for k, v in rn do
        local Name = bD[v].Name
        local rr_1 = rp_2[Name] or 0
        rp_2[Name] = rr_1 + 1
    end
    local rq_2 = {}
    local rr_2 = {}
    for k, v in rn do
        local rn_1 = bD[v]
        local rs = rn_1.Name
        if rp_2[rs] > 1 then
            rs = rs .. " [" .. tostring(v) .. "]"
        end
        local rt = tostring(v)
        local ru = rn_1.Price or 0
        local rv = tonumber(rn_1[bE]) or 0
        local rn_2 = { Id = rt, Name = rs, Price = ru, Power = rv }
        ro[#ro + 1] = rn_2
        rr_2[#rr_2 + 1] = rs
        rq_2[rs] = rn_2
    end
    return ro, rr_2, rq_2
end
function fns.onInputChanged(i_)
    local UserInputType = i_.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        n7 = tick()
    end
end
function fns.fn30(bo)
    local data = PlrData.data
    local q6 = data and data.rods
    local q6_1 = type(q6) == "table" and q6[tostring(bo)] ~= nil
    return q6_1
end
function fns.worker()
    local uC_1
    while true do
        task.wait(1)
        if o0.Unloaded then
            break
        end
        local uB = math.floor(os.clock() - ov)
        if uB < 60 then
            uC_1 = uB .. "s"
        elseif uB < 3600 then
            uC_1 = string.format("%dm %ds", uB // 60, uB % 60)
        else
            uC_1 = string.format("%dh %dm", uB // 3600, uB % 3600 // 60)
        end
        Label:SetText(of("Session time", uC_1, nN))
    end
end
function fns.fn41(dN)
    local sF = dN and dN.Model
    if not sF then
        return nil
    end
    local sF_1 = sF:FindFirstChild("spawn") or sF.PrimaryPart or sF:FindFirstChild("wall")
    local sK = if sF_1 then 1 else 0
    local sI = 1949 * sK + 509 * (1 - sK)
    local sJ = 1859 * sK + 2734 * (1 - sK)
    if not ((sI * 191 + sJ * 786 + sI * sJ) % 16777213 == 5456624) then
        sF_1 = sF:FindFirstChildWhichIsA("BasePart")
    end
    return sF_1
end
function fns.fn50()
    local qu = oN()
    local qv = qu and qu:FindFirstChild("HumanoidRootPart")
    return qv
end
function fns.fn67()
    local ux_1
    local uw_1
    if identifyexecutor then
        ux_1, uw_1 = identifyexecutor()
        local uy = ux_1 ~= ""
        local uz = type(ux_1) == "string" and uy
        if uz then
            local uy_1 = type(uw_1) == "string" and uw_1 ~= "" and ux_1 .. " " .. uw_1
            pr = uy_1 or ux_1
        end
    end
end
function fns.fn73(b7)
    local rQ = tostring(b7):match("%d+")
    local rR = rQ and "World " .. rQ
    local rQ_1 = rR or tostring(b7)
    return rQ_1
end
function fns.fn104(eA)
    local tk = not eA
    local tq = if tk then 1 else 0
    local to = 2961 * tq + 992 * (1 - tq)
    local tp = 532 * tq + 114 * (1 - tq)
    if not ((to * 2969 + tp * 3043 + to * tp) % 16777213 == 11985337) then
        tk = not eA.Parent
    end
    if tk then
        return false
    end
    local tk_1 = oo()
    if tk_1 and (tk_1.Position - eA.Position).Magnitude > 12 then
        nR(eA.CFrame + Vector3.new(0, 4, 0))
        task.wait(0.15)
    end
    local tk_2 = oZ()
    nS(oq, eA)
    local tl_1 = os.clock()
    while true do
        local tm = oZ() <= tk_2 and os.clock() - tl_1 < 2
        if tm then
            local tm_1 = o0.Unloaded or not n3("AutoCollect")
            if tm_1 then
                return false
            end
            task.wait(0.05)
            continue
        end
        break
    end
    return oZ() > tk_2
end
function fns.fn105()
    local data = PlrData.data
    local tN = not data
    local tS = if tN then 1 else 0
    local tQ = 1988 * tS + 2632 * (1 - tS)
    local tR = 3310 * tS + 1856 * (1 - tS)
    if not ((tQ * 269 + tR * 1423 + tQ * tR) % 16777213 == 11825182) then
        tN = not data.stats
    end
    if tN then
        return
    end
    local tN_1 = tonumber(data.stats.rebirths) or 0
    local tN_2 = tonumber(data.stats.lvl) or 0
    local tN_3 = MainModule.GetRebirthReq(tN_1)
    if typeof(tN_3) == "table" then
        local tO_1 = (tonumber(tostring(tN_3)))
        local tS_1 = if tO_1 then 1 else 0
        local tQ_1 = 2895 * tS_1 + 3901 * (1 - tS_1)
        local tR_1 = 621 * tS_1 + 573 * (1 - tS_1)
        if not ((tQ_1 * 2884 + tR_1 * 1474 + tQ_1 * tR_1) % 16777213 == 11062329) then
            tO_1 = 0
        end
        tN_3 = tO_1
    end
    local tO_2 = (tonumber(tN_3))
    local tS_2 = if tO_2 then 1 else 0
    local tQ_2 = 4075 * tS_2 + 1610 * (1 - tS_2)
    local tR_2 = 2149 * tS_2 + 3392 * (1 - tS_2)
    if not ((tQ_2 * 3350 + tR_2 * 2863 + tQ_2 * tR_2) % 16777213 == 11783799) then
        tO_2 = 0
    end
    if tN_2 >= tO_2 then
        nS(ol)
        task.wait(0.4)
    end
end
function fns.fn112(gp, gq, gr)
    return string.format("<b>%s</b> %s %s", gp, ox("-", "#5a6070"), ox(gq, gr))
end
function fns.fn120()
    if ow() then
        local tw = if n3("AutoSell") then 1 else 0
        if tw == 1 then
            ok()
        end
        return
    end
    for k, v in pm() do
        local tr_1 = o0.Unloaded or not n3("AutoCollect")
        if tr_1 then
            return
        end
        if ow() then
            break
        elseif oE(v.World) then
            local tr_2 = pq(v)
            if tr_2 then
                nR(tr_2)
                local tr_3 = os.clock()
                while true do
                    local ts = #oa(v) == 0 and os.clock() - tr_3 < 2
                    if ts then
                        local ts_1 = o0.Unloaded or not n3("AutoCollect")
                        if ts_1 then
                            return
                        end
                        task.wait(0.15)
                        continue
                    end
                    break
                end
            end
            for k, v in oa(v) do
                local tr_4 = o0.Unloaded or not n3("AutoCollect")
                if tr_4 then
                    return
                end
                if ow() then
                    break
                end
                nY(v)
                task.wait(0.1)
            end
        end
    end
    local tr_5 = ow() and n3("AutoSell")
    if tr_5 then
        ok()
    end
end
function fns.worker6()
    while not o0.Unloaded do
        task.wait(0.7)
        if n3("AutoBuyRod") then
            pcall(nT)
        end
    end
end
function fns.onCopyLitecoinAddress()
    nP(pg, "Copied Litecoin address")
end
function fns.fn150()
    if not Toggles.Fly.Value then
        local u2 = oI()
        if u2 then
            u2.PlatformStand = false
        end
    end
end
function fns.fn155(aF)
    for k in aF do
        return true
    end
    return false
end
function fns.fn161(cz)
    local sd = FishData[cz]
    return sd and sd.Rarity or nil
end
function fns.fn162()
    local data = PlrData.data
    local qR = data and data.tripBackpack
    local qR_1 = type(qR) == "table" and qR
    return qR_1 or {}
end
function fns.onCopyPayPalLink()
    nP(oT, "Copied PayPal link")
end
function fns.fn170()
    local ug = nL(oD.AutoBuyUpgradeTarget)
    if not ph(ug) then
        return
    end
    local data2 = PlrData.data
    local uj = data2 and data2.stats
    if type(uj) ~= "table" then
        return
    end
    for k, v in n2 do
        if ug[v] then
            local ui_1 = nZ[v]
            local uk = tonumber(uj[ui_1]) or 0
            local uk_1 = MainModule.GetUpgradePrice(ui_1, uk)
            local ul_1 = uk_1 ~= nil and oP(uk_1)
            if ul_1 then
                nS(n0, ui_1)
                task.wait(0.25)
                local data = PlrData.data
                uj = data and data.stats or uj
            end
        end
    end
end
function fns.fn188(jj, jk)
    local vv_1 = (jj == "Toggle" and Toggles or oD)[jk]
    local vu_2 = type(vv_1) == "table" and vv_1.Type == jj
    return vu_2 and vv_1 or nil
end
function fns.fn197(jr, js)
    local Type = js.Type
    if Type == "Toggle" then
        return { idx = jr, type = "Toggle", value = js.Value == true }
    elseif Type == "Slider" then
        return { idx = jr, type = "Slider", value = tostring(js.Value) }
    elseif Type == "Dropdown" then
        return { idx = jr, type = "Dropdown", multi = js.Multi == true, value = js.Value }
    elseif Type == "Input" then
        local vz = js.Value or ""
        return { idx = jr, type = "Input", text = tostring(vz) }
    elseif Type == "ColorPicker" then
        return { idx = jr, type = "ColorPicker", value = js.Value:ToHex(), transparency = js.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = jr,
            type = "KeyPicker",
            mode = js.Mode,
            key = js.Value,
            modifiers = js.Modifiers,
            toggled = js.Toggled
        }
    else
        return nil
    end
end
function fns.onExportConfigToClipboard()
    local v8_1
    local v7_1
    v7_1, v8_1 = pcall(HttpService.JSONEncode, HttpService, oJ())
    if not v7_1 then
        o0:Notify("Failed to encode the config")
        return
    end
    local v7_2 = setclipboard or toclipboard
    local v7_3 = type(v7_2) ~= "function" or not pcall(v7_2, v8_1)
    if v7_3 then
        o0:Notify("Your executor does not support copying to the clipboard")
        return
    end
    o0:Notify("Config copied to clipboard", 6)
end
function fns.fn260(aI)
    if typeof(aI) == "table" then
        return aI
    end
    local new = InfiniteMath.new
    local qJ = tonumber(aI) or 0
    return new(qJ)
end
function fns.fn284()
    return LocalPlayer.Character
end
function fns.onJumpRequest()
    if o0.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local uU_1 = oI()
        if uU_1 then
            uU_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onCopyBitcoinAddress()
    nP(pc, "Copied Bitcoin address")
end
function fns.fn313(cE)
    if not n3("AutoSell") then
        return true
    end
    if (oD.AutoSellMode and oD.AutoSellMode.Value or om) ~= oi then
        return true
    end
    local sg_2 = nL(oD.AutoSellRarities)
    if not ph(sg_2) then
        return true
    end
    return cE ~= nil and sg_2[cE] == true
end
function fns.fn322()
    return #pk()
end
function fns.fn323(aB)
    local qA = aB and aB.Value
    if typeof(qA) ~= "table" then
        return {}
    end
    return qA
end
function fns.onStepped()
    if o0.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local uM_1 = oN()
        if uM_1 then
            for i, descendant in uM_1:GetDescendants() do
                local uM_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uM_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn372()
    pl(Toggles.AntiGameplayPause.Value)
end
function fns.worker4()
    while not o0.Unloaded do
        task.wait(0.5)
        if n3("AutoRebirth") then
            pcall(oU)
        end
    end
end
function fns.worker2()
    while not o0.Unloaded do
        if n3("AutoClick") then
            nS(Click)
        end
        task.wait(0.05)
    end
end
function fns.fn393(cZ)
    oj(cZ)
    n4()
end
function fns.fn402(aS)
    local qO = oN()
    if not qO then
        return
    end
    if qO.PrimaryPart then
        qO:PivotTo(aS)
    else
        local qO_1 = oo()
        if qO_1 then
            qO_1.CFrame = aS
        end
    end
end
function fns.fn419(d8)
    local sZ = d8 and d8.Model
    if not sZ then
        return {}
    end
    local sZ_1 = {}
    for i, child in sZ:GetChildren() do
        local s__1 = child:HasTag("FishPoint") and child:IsA("BasePart") and oB(child)
        if s__1 then
            sZ_1[#sZ_1 + 1] = child
        end
    end
    return sZ_1
end
function fns.fn431()
    n9(ot, oh, "AutoBuyRodMax", nM, og, oL)
end
function fns.onCopyUSDTAddress()
    nP(o1, "Copied USDT address")
end
function fns.onRenderStepped(ia)
    if o0.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local uW_1 = oI()
        if uW_1 then
            uW_1.WalkSpeed = oD.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local uW_3 = oo()
        local uX = oI()
        if uW_3 and uX then
            uX.PlatformStand = true
            local uX_1 = Vector3.zero
            if pi:IsKeyDown(Enum.KeyCode.W) then
                uX_1 = uX_1 + CurrentCamera.CFrame.LookVector
            end
            if pi:IsKeyDown(Enum.KeyCode.S) then
                uX_1 = uX_1 - CurrentCamera.CFrame.LookVector
            end
            if pi:IsKeyDown(Enum.KeyCode.A) then
                uX_1 = uX_1 - CurrentCamera.CFrame.RightVector
            end
            if pi:IsKeyDown(Enum.KeyCode.D) then
                uX_1 = uX_1 + CurrentCamera.CFrame.RightVector
            end
            if pi:IsKeyDown(Enum.KeyCode.Space) then
                uX_1 = uX_1 + Vector3.new(0, 1, 0)
            end
            local u1 = if pi:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if u1 == 1 then
                uX_1 = uX_1 - Vector3.new(0, 1, 0)
            end
            uW_3.Velocity = Vector3.zero
            if uX_1.Magnitude > 0 then
                uW_3.CFrame = uW_3.CFrame + uX_1.Unit * oD.FlySpeed.Value * ia
            end
        end
    end
end
function fns.fn489()
    local data = PlrData.data
    local rd = data and data.stats
    if rd then
        local re = data.stats.rod or ""
        rd = tostring(re)
    end
    return rd
end
function fns.onRscripts()
    nP(ou, "Copied Rscripts profile to clipboard")
end
function fns.fn497()
    table.clear(oc)
    table.clear(n6)
    local Zones = Workspace:FindFirstChild("Zones")
    if not Zones then
        oc[1] = "World 1 - 1"
        return
    end
    local children = Zones:GetChildren()
    table.sort(children, function(ci, cj)
        return ci.Name < cj.Name
    end)
    for k, v in children do
        local rT_1 = {}
        for i, child in v:GetChildren() do
            local rU_1 = tonumber(child.Name)
            if rU_1 then
                rT_1[#rT_1 + 1] = rU_1
            end
        end
        table.sort(rT_1)
        for k, v2 in rT_1 do
            local rT_2 = n1(v.Name) .. " - " .. tostring(v2)
            oc[#oc + 1] = rT_2
            n6[rT_2] = { World = v.Name, Zone = v2, Model = v:FindFirstChild(tostring(v2)) }
        end
    end
    if #oc == 0 then
        oc[1] = "World 1 - 1"
    end
    local CollectZones = oD.CollectZones
    if CollectZones then
        CollectZones:SetValues(oc)
    end
end
function fns.fn501(cQ)
    return pn(nV(cQ.Name))
end
function fns.onCopyJoinScript_JobID()
    local gJ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oS)
    nP(gJ, "Copied join script to clipboard")
end
function fns.onUnload()
    o0:Unload()
end
function fns.antiAfkLoop()
    while not o0.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local vq = tick() - n7
            local vr = tick() - n_
            if vq >= 300 and vr >= 60 then
                pcall(nJ)
            else
                if vq < 300 and vr >= 300 then
                    pcall(nJ)
                end
            end
        end
    end
end
function fns.antiGameplayPauseLoop()
    while not o0.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            pl(true)
        end
    end
end
function fns.fn543()
    local sq = n8
    local sv = if sq then 1 else 0
    local st = 3363 * sv + 1276 * (1 - sv)
    local su = 654 * sv + 1564 * (1 - sv)
    if not ((st * 262 + su * 3684 + st * su) % 16777213 == 5489844) then
        sq = oZ() <= 0
    end
    if sq then
        return
    end
    n8 = true
    o7()
    pcall(function()
        n5:FireServer("all")
    end)
    local sq_1 = os.clock()
    while true do
        local sr = oZ() > 0 and os.clock() - sq_1 < 3
        if sr then
            if o0.Unloaded then
                break
            end
            task.wait(0.1)
            continue
        end
        break
    end
    n8 = false
end
function fns.fn562(ab, ac)
    if setclipboard then
        setclipboard(ab)
    elseif toclipboard then
        toclipboard(ab)
    end
    o0:Notify(ac)
end
function fns.fn588()
    pb:Disconnect()
    connection2:Disconnect()
    pl(false)
    print("Unloaded!")
end
function fns.fn596(aL)
    local data = PlrData.data
    local qL_1 = data and data.stats and data.stats.cash or 0
    return o2(qL_1) >= o2(aL)
end
local function fn626()
    local qr = oN()
    local qs = qr and qr:FindFirstChildOfClass("Humanoid")
    return qs
end
local function fn631()
    local data = PlrData.data
    local qY = data and data.stats and data.stats.slots
    local qY_1 = (tonumber(qY))
    local q1 = if qY_1 then 1 else 0
    local q_ = 964 * q1 + 1749 * (1 - q1)
    local q0 = 2930 * q1 + 149 * (1 - q1)
    if not ((q_ * 1069 + q0 * 3087 + q_ * q0) % 16777213 == 12899946) then
        qY_1 = 3
    end
    return qY_1
end
local function worker5()
    while not o0.Unloaded do
        task.wait(0.7)
        if n3("AutoBuyBoat") then
            pcall(op)
        end
    end
end
local function worker9()
    while not o0.Unloaded do
        task.wait(0.5)
        if n3("AutoSell") then
            pcall(ok)
        end
    end
end
local function fn670()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    n_ = tick()
end
local function onInputBegan()
    n7 = tick()
end
local function fn707(dE)
    if pp() == dE then
        return true
    elseif not o8(dE) then
        return false
    else
        nS(TeleportToWorld, dE)
        local sC = os.clock()
        while true do
            local sD = pp() ~= dE and os.clock() - sC < 8
            if sD then
                if o0.Unloaded then
                    return false
                end
                task.wait(0.2)
                continue
            end
            break
        end
        return pp() == dE
    end
end
local function onCopyVenmoLink()
    nP(oM, "Copied Venmo link")
end
local function onCopySolanaAddress()
    nP(oX, "Copied Solana address")
end
local function onImportConfigFromClipboardTex()
    local wg_1
    local we = oD.SaveManager_ImportSource.Value or ""
    local we_1
    local wf = tostring(we):match("^%s*(.-)%s*$")
    if wf == "" then
        o0:Notify("Paste an exported config into the box first")
        return
    end
    we_1, wg_1 = pcall(HttpService.JSONDecode, HttpService, wf)
    local wf_1 = not we_1
    local wk = if wf_1 then 1 else 0
    local wi = 344 * wk + 2326 * (1 - wk)
    local wj = 473 * wk + 3941 * (1 - wk)
    if not ((wi * 2350 + wj * 2901 + wi * wj) % 16777213 == 2343285) then
        wf_1 = type(wg_1) ~= "table"
    end
    if not wf_1 then
        wf_1 = type(wg_1.objects) ~= "table"
    end
    if wf_1 then
        o0:Notify("That is not a valid exported config")
        return
    end
    local we_2 = 0
    for k, v in wg_1.objects do
        if pt(v) then
            we_2 += 1
        end
    end
    if we_2 == 0 then
        o0:Notify("No settings in that config matched this script")
        return
    end
    oD.SaveManager_ImportSource:SetValue("")
    local wg_2 = we_2 == 1 and "" or "s"
    o0:Notify(("Imported %d setting%s"):format(we_2, wg_2), 6)
end
local function fn737(dx)
    local data = PlrData.data
    local sA = data and data.worlds
    local sA_1 = type(sA) == "table" and sA[dx] ~= nil
    return sA_1
end
local function fn740()
    local data = PlrData.data
    local t7_1 = data and data.index
    if type(t7_1) ~= "table" then
        return
    end
    for k, v in t7_1 do
        if v == 0 then
            nS(ClaimIndex, k)
            task.wait(0.15)
        end
    end
end
local function fn741()
    return oZ() >= oQ()
end
local function fn755(ai)
    local DiscordGroup = ai:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pj })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pj })
end
local function fn765()
    nP(oA, "Copied Discord invite to clipboard")
end
local function fn782()
    if not Toggles.WalkSpeedEnabled.Value then
        local u7 = oI()
        if u7 then
            u7.WalkSpeed = 16
        end
    end
end
local function fn809(dS)
    local sL = nW(dS)
    if sL then
        return sL.CFrame + Vector3.new(0, 4, 0)
    end
    local sL_1 = Workspace:FindFirstChild("Zones") and Workspace.Zones:FindFirstChild(dS.World)
    if not sL_1 then
        return nil
    end
    local sL_2 = {}
    for i, child in sL_1:GetChildren() do
        local sM_1 = tonumber(child.Name)
        local sN_1 = child:FindFirstChild("spawn") or child.PrimaryPart
        if sM_1 and sN_1 then
            sL_2[#sL_2 + 1] = { n = sM_1, pos = sN_1.Position }
        end
    end
    if #sL_2 == 0 then
        return nil
    end
    table.sort(sL_2, function(d3, d4)
        return d3.n < d4.n
    end)
    local sM_2 = sL_2[1]
    local sN_3 = Vector3.new(0, 0, -117.213)
    if #sL_2 >= 2 then
        sN_3 = (sL_2[2].pos - sL_2[1].pos) / (sL_2[2].n - sL_2[1].n)
    end
    return CFrame.new(sM_2.pos + sN_3 * (dS.Zone - sM_2.n) + Vector3.new(0, 4, 0))
end
local function fn810()
    nS(ToggleBoat, true)
end
local function fn829()
    local s7 = nL(oD.CollectZones)
    local s8 = {}
    if ph(s7) then
        for k in s7 do
            local s7_1 = n6[k]
            if s7_1 then
                s8[#s8 + 1] = s7_1
            end
        end
    end
    if #s8 == 0 then
        local data = PlrData.data
        local ta = data and data.world
        local tj = if ta then 1 else 0
        local th = 4028 * tj + 3791 * (1 - tj)
        local ti = 3668 * tj + 1163 * (1 - tj)
        if not ((th * 2036 + ti * 3116 + th * ti) % 16777213 == 850774) then
            ta = "world1"
        end
        local s9_1 = data
        local tb = ta
        if s9_1 then
            s9_1 = data.zone
        end
        local s9_2 = s9_1 or 1
        local s7_4 = n1(tb) .. " - " .. tostring(s9_2)
        local s9_3 = n6[s7_4] or n6[oc[1]]
        s8[1] = s9_3
    end
    return s8
end
local function fn831(aw)
    local qx = Toggles[aw]
    return qx ~= nil and qx.Value == true
end
local function worker3()
    while not o0.Unloaded do
        if n3("AutoCollect") then
            pcall(oH)
        end
        task.wait(0.2)
    end
end
local function fn871()
    local sj = oo()
    if not sj then
        return false
    end
    return (sj.Position - od.Position).Magnitude < 100
end
local function fn884()
    local vF = {}
    for k, v in { Toggles, oD } do
        for k, v in v do
            local vG = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if vG then
                local vG_1 = oY(k, v)
                if vG_1 then
                    vF[#vF + 1] = vG_1
                end
            end
        end
    end
    table.sort(vF, function(jE, jF)
        if jE.type ~= jF.type then
            return jE.type < jF.type
        end
        return jE.idx < jF.idx
    end)
    return { objects = vF }
end
local function fn888(bh)
    local data = PlrData.data
    local q3 = data and data.boats
    local q3_1 = type(q3) == "table" and q3[tostring(bh)] ~= nil
    return q3_1
end
local function fn943()
    n9(oF, oz, "AutoBuyBoatMax", oe, ob, o4)
end
local function fn983()
    local data = PlrData.data
    local q9 = data and data.stats
    if q9 then
        local ra = data.stats.boat or ""
        q9 = tostring(ra)
    end
    return q9
end
local function fn994()
    local data = PlrData.data
    return data and data.world or "world1"
end
local function worker8()
    while not o0.Unloaded do
        task.wait(0.7)
        if n3("AutoBuyUpgrades") then
            pcall(oC)
        end
    end
end
local function worker7()
    while not o0.Unloaded do
        task.wait(1)
        if n3("AutoClaimIndex") then
            pcall(pd)
        end
    end
end
local function fn1038()
    o0.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function onCopyEthereumAddress()
    nP(o6, "Copied Ethereum address")
end
local function fn1051(fg, fh, fi, fj, fk, fl)
    local tW_1 = fh[oD[fi] and oD[fi].Value] or fg[#fg]
    local tX_1 = tonumber(tW_1.Id) or 0
    local tY
    local tX_2 = nil
    for k, v in fg do
        local tZ = tonumber(v.Id) or 0
        if tZ <= tX_1 then
            if fj(v.Id) then
                if not tY or v.Power > tY.Power then
                    tY = v
                end
            elseif oP(v.Price) then
                if not tX_2 or v.Power > tX_2.Power then
                    tX_2 = v
                end
            end
        end
    end
    if tX_2 then
        nS(fk, tX_2.Id)
        task.wait(0.25)
        return
    end
    local tW_3 = tY and fl() ~= tY.Id
    if tW_3 then
        nS(fk, tY.Id)
        task.wait(0.25)
    end
end
MainModule = nil
local nI
nJ = nil
nL = nil
nM = nil
nN = nil
TeleportToWorld = nil
nP = nil
nR = nil
nS = nil
nT = nil
ToggleBoat = nil
nV = nil
nW = nil
ClaimIndex = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
n4 = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ok = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
ov = nil
ow = nil
local nK, ReturnTo
ox = nil
Click = nil
oz = nil
oA = nil
oB = nil
oC = nil
oD = nil
oE = nil
oF = nil
Toggles = nil
oH = nil
oI = nil
oJ = nil
SaveManager = nil
oL = nil
oM = nil
oN = nil
connection2 = nil
oP = nil
oQ = nil
LocalPlayer = nil
oS = nil
oT = nil
oU = nil
Workspace = nil
Label = nil
oX = nil
oY = nil
oZ = nil
o0 = nil
o1 = nil
o2 = nil
CurrentCamera = nil
o4 = nil
o6 = nil
o7 = nil
o8 = nil
HttpService = nil
InfiniteMath = nil
pb = nil
pc = nil
pd = nil
VirtualUser = nil
FishData = nil
pg = nil
ph = nil
pi = nil
pj = nil
local o_, o5
pk = nil
pl = nil
pm = nil
pn = nil
pp = nil
pq = nil
pr = nil
PlrData = nil
pt = nil
local po
po = nil
wy_25, wy_42, RunService, pi, VirtualUser, HttpService, o5, o_, Workspace, LocalPlayer = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((not o_) and (o_ or Workspace) or (Workspace or not LocalPlayer) and (wy_42 or not o_)) and (wy_42 and (Workspace or RunService) and (not wy_42 or 39 or not wy_42)) and (not o_ or o_ or Workspace and o_ or (wy_42 or RunService) and (LocalPlayer and wy_42) or (not Workspace and RunService or not wy_42 and o_) and (not Workspace or not Workspace or (o_ or not LocalPlayer))) or not (((not o_) and (o_ or Workspace) or (Workspace or not LocalPlayer) and (wy_42 or not o_)) and (wy_42 and (Workspace or RunService) and (not wy_42 or 39 or not wy_42)) and (not o_ or o_ or Workspace and o_ or (wy_42 or RunService) and (LocalPlayer and wy_42) or (not Workspace and RunService or not wy_42 and o_) and (not Workspace or not Workspace or (o_ or not LocalPlayer)))) then
    wy_25 = game:GetService("Players")
else
    o5 = game:GetService("Players")
end
wy_42 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
pi = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
if ((not RunService and RunService and false or 7) and ((not RunService or RunService) and false or (not RunService and 7 or RunService and 7)) or ((not RunService or false) and false or (RunService or not RunService)) and ((RunService or 7) and 7 or (RunService or 7) and (not RunService or RunService))) and not ((not RunService and RunService and false or 7) and ((not RunService or RunService) and false or (not RunService and 7 or RunService and 7)) or ((not RunService or false) and false or (RunService or not RunService)) and ((RunService or 7) and 7 or (RunService or 7) and (not RunService or RunService))) then
    o_ = game:GetService("GuiService")
    o5 = game:GetService("CoreGui")
else
    o5 = game:GetService("GuiService")
    o_ = game:GetService("CoreGui")
end
Workspace = game:GetService("Workspace")
LocalPlayer = wy_25.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
Click, oq, ol, og, ob, n5, n0, ClaimIndex, ToggleBoat, ReturnTo, TeleportToWorld, MainModule, PlrData, wy_47, FishData, InfiniteMath, o0, SaveManager, Toggles, oD, oA, ou, om, oi, wy_30, n2, nZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wy_32 = "+1 Fish Per Click"
local wy_12 = wy_42:WaitForChild("Events")
local wy_10 = wy_42:WaitForChild("Modules")
if (not o0 or o0) and (not og or wy_47) and ((not Click or not o0) and (Click or ol)) and not ((not o0 or o0) and (not og or wy_47) and ((not Click or not o0) and (Click or ol))) then
    ol = Click:WaitForChild("Click")
    wy_12 = Click:WaitForChild("CatchFish")
    og = Click:WaitForChild("Rebirth")
    oq = Click:WaitForChild("EquipRod")
else
    Click = wy_12:WaitForChild("Click")
    oq = wy_12:WaitForChild("CatchFish")
    ol = wy_12:WaitForChild("Rebirth")
    og = wy_12:WaitForChild("EquipRod")
end
if ("https://rscripts.net/@Ouroboros" or (not wy_30 or not wy_47)) and (not wy_47 or not wy_30 or (not wy_30 or not wy_47)) or (wy_47 or false) and (wy_30 or false) and (false and (false and wy_47)) or not (("https://rscripts.net/@Ouroboros" or (not wy_30 or not wy_47)) and (not wy_47 or not wy_30 or (not wy_30 or not wy_47)) or (wy_47 or false) and (wy_30 or false) and (false and (false and wy_47))) then
    ob = wy_12:WaitForChild("EquipBoat")
    n5 = wy_12:WaitForChild("Sell")
    n0 = wy_12:WaitForChild("UpgradeStat")
    ClaimIndex = wy_12:WaitForChild("ClaimIndex")
else
    n0 = ClaimIndex:WaitForChild("EquipBoat")
    wy_12 = ClaimIndex:WaitForChild("Sell")
    ob = ClaimIndex:WaitForChild("UpgradeStat")
    n5 = ClaimIndex:WaitForChild("ClaimIndex")
end
ToggleBoat = wy_12:WaitForChild("ToggleBoat")
ReturnTo = wy_12:WaitForChild("ReturnTo")
TeleportToWorld = wy_12:WaitForChild("TeleportToWorld")
MainModule = require(wy_42:WaitForChild("MainModule"))
PlrData = require(wy_10:WaitForChild("PlrData"))
wy_47 = require(wy_10:WaitForChild("BoatData"))
local wy_14 = require(wy_10:WaitForChild("RodData"))
FishData = require(wy_10:WaitForChild("FishData"))
InfiniteMath = require(wy_10:WaitForChild("InfiniteMath"))
o0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn1038)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = o0.Toggles
oD = o0.Options
oA = "https://discord.gg/ehKVq7pf7v"
ou = "https://rscripts.net/@Ouroboros"
om = "All"
oi = "Filtered"
local wy_17 = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Artifact",
    "Secret",
    "Cosmic",
    "Stellar",
    "Mythical",
    "Ascended"
}
if ((og or wy_30 or wy_30 and wy_30) and ((not ThemeManager or wy_30) and (ThemeManager and wy_30)) and (ThemeManager and ThemeManager and (ThemeManager or not wy_30) and ((wy_30 or ThemeManager) and (not wy_30 or wy_30))) or (ThemeManager or wy_30) and (ThemeManager or og) and ((wy_30 or not og) and (og or og)) and (not wy_30 and ThemeManager or (ThemeManager or ThemeManager) or wy_30 and og and (wy_30 or not ThemeManager))) and not ((og or wy_30 or wy_30 and wy_30) and ((not ThemeManager or wy_30) and (ThemeManager and wy_30)) and (ThemeManager and ThemeManager and (ThemeManager or not wy_30) and ((wy_30 or ThemeManager) and (not wy_30 or wy_30))) or (ThemeManager or wy_30) and (ThemeManager or og) and ((wy_30 or not og) and (og or og)) and (not wy_30 and ThemeManager or (ThemeManager or ThemeManager) or wy_30 and og and (wy_30 or not ThemeManager))) then
    og = {
        { Id = "boatSpeed", Name = "Boat Speed" },
        { Id = "slots", Name = "Backpack" },
        { Id = "critRate", Name = "Critical Chance" }
    }
else
    wy_30 = {
        { Id = "slots", Name = "Backpack" },
        { Id = "boatSpeed", Name = "Boat Speed" },
        { Id = "critRate", Name = "Critical Chance" }
    }
end
n2 = {}
nZ = {}
for k, v in wy_30 do
    n2[#n2 + 1] = v.Name
    nZ[v.Name] = v.Id
end
oF, oz, ot, oh, nP, pj, oN, oI, oo, n3, nL, ph, o2, oP, oj, nS, pk, oZ, oQ, ow, oe, nM, o4, oL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nP = fns.fn562
pj = fn765
wy_42 = fn755
oN = fns.fn284
oI = fn626
oo = fns.fn50
n3 = fn831
nL = fns.fn323
ph = fns.fn155
o2 = fns.fn260
oP = fns.fn596
oj = fns.fn402
nS = function(aY, ...)
    local aZ
    aZ = { ... }
    pcall(function()
        aY:FireServer(table.unpack(aZ))
    end)
end
pk = fns.fn162
oZ = fns.fn322
oQ = fn631
ow = fn741
oe = fn888
nM = fns.fn30
o4 = fn983
oL = fns.fn489
wy_10 = fns.fn14
oF, wy_44, oz = wy_10(wy_47, "Click")
ot, wy_12, oh = wy_10(wy_14, "Mult")
if #wy_44 == 0 then
    wy_44[1] = "Dinghy"
end
if #wy_12 == 0 then
    wy_12[1] = "Fishing Pole"
end
oc, n6, n1, nI = nil, nil, nil, nil
wy_25 = 0
repeat
    wy_10 = (vector.create((wy_25 * 5 + 3) % 11 + 1, (wy_25 * 11 + 7) % 13 + 1, (wy_25 * 10 + 2) % 17 + 1))
    local xX = vector.floor(wy_10) + vector.ceil(wy_10 * -1)
    if vector.dot(xX, xX) == 0 then
        oc = {}
        n6 = {}
        n1 = fns.fn73
        nI = fns.fn497
    else
        n6 = {}
        nI = {}
        oc = fns.fn73
        n1 = fns.fn497
    end
    wy_25 = (wy_25 + 0) % 4
until (wy_25 * 1 + 0) % 4 == 0
if not Workspace:GetAttribute("ZonesLoaded") then
    wy_25 = os.clock()
    while true do
        wy_10 = not Workspace:GetAttribute("ZonesLoaded") and os.clock() - wy_25 < 10
        if wy_10 then
            task.wait(0.1)
            continue
        end
        break
    end
end
od, n8, wy_30, wy_14, nV, pn, oB, n4, nR, po, o7, ok, pp, o8, oE, nW, pq, oa, pm, nY, oH, oU, n9, op, nT, pd, oC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nI()
nV = fns.fn161
pn = fns.fn313
oB = fns.fn501
od = CFrame.new(190.139, 19.291, -106.412)
n8 = false
n4 = fn810
nR = fns.fn393
po = fn871
o7 = function()
    local sl
    sl = nil
    if po() then
        return true
    end
    sl = false
    local connection = ReturnTo.OnClientEvent:Connect(function()
        sl = true
    end)
    nS(ReturnTo, "lobby")
    local sn = os.clock()
    while true do
        local so = not sl and os.clock() - sn < 6
        if so then
            if o0.Unloaded then
                break
            end
            task.wait(0.05)
            continue
        end
        break
    end
    connection:Disconnect()
    task.wait(1)
    local sm_1 = sl or po()
    return sm_1
end
ok = fns.fn543
pp = fn994
o8 = fn737
oE = fn707
nW = fns.fn41
pq = fn809
oa = fns.fn419
pm = fn829
nY = fns.fn104
oH = fns.fn120
oU = fns.fn105
if (not pp and pn or not wy_14 and not wy_14 or pn and pn and (pp and pp) or (not n4 and pp and (not n9 and nT) or (n9 or wy_14) and (wy_14 and pn))) and ((n4 or not pp) and (pn or not n4) and ((n9 or not nT) and (wy_14 and not pn)) or (pp and not nT or (n9 or pn) or (pn or not n9 or not nT and pp))) or not ((not pp and pn or not wy_14 and not wy_14 or pn and pn and (pp and pp) or (not n4 and pp and (not n9 and nT) or (n9 or wy_14) and (wy_14 and pn))) and ((n4 or not pp) and (pn or not n4) and ((n9 or not nT) and (wy_14 and not pn)) or (pp and not nT or (n9 or pn) or (pn or not n9 or not nT and pp)))) then
    n9 = fn1051
    op = fn943
    nT = fns.fn431
    pd = fn740
else
    op = fn1051
    pd = fn943
    n9 = fns.fn431
    nT = fn740
end
oC = fns.fn170
if (oa and oa or (not oa or not oa)) and ((not oa or oE) and (oE and oa)) or not ((oa and oa or (not oa or not oa)) and ((not oa or oE) and (oE and oa))) then
    wy_30 = o0:CreateWindow({
        Title = "Ouroboros Hub",
        Footer = { { Text = oA, Copyable = true }, "|", wy_32 },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0
    })
else
    wy_32 = oA:CreateWindow({
        Footer = { "|", { Text = o0, Copyable = true }, wy_30 },
        CornerRadius = 0,
        ShowCustomCursor = false,
        Title = "Ouroboros Hub",
        Icon = 78539693571783,
        NotifySide = "Right"
    })
end
wy_14 = {
    Info = wy_30:AddTab("Info", "info"),
    Main = wy_30:AddTab("Main", "fish"),
    Player = wy_30:AddTab("Player", "person-standing"),
    Settings = wy_30:AddTab("Settings", "settings")
}
for k, v in { wy_14.Main, wy_14.Player, wy_14.Settings } do
    wy_42(v)
end
nN, pr, Label, oS, ox, of = nil, nil, nil, nil, nil, nil
ox = fns.fn9
of = fns.fn112
local wy_19 = "#7fd47f"
local wy_34 = "#6ec1ff"
nN = "#e8a34d"
wy_47 = "#8b93a3"
pr = "Unknown"
pcall(fns.fn67)
wy_25 = wy_14.Info:AddLeftGroupbox("Account", "circle-user")
wy_25:AddLabel(of("User", LocalPlayer.Name, wy_19), true)
wy_25:AddLabel(of("Status", "Keyless", wy_19), true)
wy_25:AddLabel(of("Executor", pr, wy_19), true)
local GameInfoGroup = wy_14.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(ox(wy_32 .. " [" .. tostring(game.PlaceId) .. "]", wy_34), true)
GameInfoGroup:AddLabel(of("Place ID", tostring(game.PlaceId), wy_34), true)
Label = GameInfoGroup:AddLabel(of("Session time", "0s", nN), true)
oS = tostring(game.JobId)
wy_30 = #oS > 18
if wy_30 then
    wy_25 = 6
    repeat
        if wy_25 * 96779221 + 10 + 2 <= wy_25 * 96779221 + 10 + 2 + 1 then
            wy_30 = string.sub(oS, 1, 18) .. "..."
        else
            oS = string.sub(wy_30, 1, 18) .. "..."
        end
        wy_25 = (wy_25 + 3) % 8
    until (wy_25 * 5 + 7) % 8 == 4
end
wy_25 = wy_30 or oS
ov, pg, pc, o6, o1, oX, oT, oM = nil, nil, nil, nil, nil, nil, nil, nil
local wy_11 = wy_25
GameInfoGroup:AddLabel(of("Server", wy_11, wy_47), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
ov = os.clock()
task.spawn(fns.worker)
wy_30 = wy_14.Info:AddRightGroupbox("Scripts", "package")
wy_30:AddLabel(ox("Included in this hub", wy_47), true)
wy_30:AddLabel(ox(wy_32, wy_34), true)
wy_42 = wy_14.Info:AddRightGroupbox("Features", "list")
wy_42:AddLabel(ox("Auto Farm", wy_34), true)
wy_42:AddLabel(ox("Auto Collect", nN), true)
wy_42:AddLabel(ox("Auto Shop", wy_19), true)
wy_42:AddLabel(ox("Auto Sell", wy_47), true)
wy_10 = wy_14.Info:AddRightGroupbox("Socials", "link")
wy_10:AddButton({ Text = "Discord", Func = pj })
wy_10:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = wy_14.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = pj })
pg = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
pc = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
o6 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o1 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oX = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
oT = "https://paypal.me/TheTruckerGOD"
oM = "https://venmo.com/u/miserablemusic"
local wy_43 = "#345d9d"
local wy_26 = "#f7931a"
local wy_40 = "#627eea"
local wy_9 = "#26a17b"
local wy_23 = "#14f195"
local wy_38 = "#0070ba"
local wy_6 = "#008cff"
local DonationsGroup = wy_14.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(ox("All donations are optional but appreciated.", nN), true)
DonationsGroup:AddLabel(ox("If you donate you get a special role, just PING after you donate.", wy_19), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(ox("LTC / Litecoin", wy_43), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(ox("BTC / Bitcoin", wy_26), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(ox("ETH / Ethereum", wy_40), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(ox("USDT", wy_9), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(ox("Solana", wy_23), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(ox("PayPal", wy_38), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(ox("Venmo", wy_6), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(ox("Don't have any of the listed currencies but still wanna donate?", wy_47), true)
DonationsGroup:AddLabel(ox("DM me and we'll work something out.", wy_34), true)
local FaqGroup = wy_14.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FishingGroup = wy_14.Main:AddLeftGroupbox("Fishing", "fish")
FishingGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
FishingGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
FishingGroup:AddDropdown("CollectZones", {
    Text = "Zones",
    Values = oc,
    Default = { oc[1] },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true,
    MaxVisibleDropdownItems = 24
})
wy_25 = Workspace:FindFirstChild("Zones")
if wy_25 then
    wy_25.ChildAdded:Connect(function()
        task.defer(nI)
    end)
    for i, child in wy_25:GetChildren() do
        child.ChildAdded:Connect(function()
            task.defer(nI)
        end)
    end
end
nI()
CurrentCamera, n7, n_, pb, connection2, pl, nJ, nK, oY, oJ, pt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
FishingGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
FishingGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
wy_32 = wy_14.Main:AddLeftGroupbox("Shop", "shopping-cart")
wy_32:AddToggle("AutoBuyBoat", { Text = "Auto Buy Boat", Default = false })
wy_32:AddDropdown("AutoBuyBoatMax", { Text = "Max Boat", Values = wy_44, Default = wy_44[#wy_44] })
wy_32:AddToggle("AutoBuyRod", { Text = "Auto Buy Rod", Default = false })
wy_32:AddDropdown("AutoBuyRodMax", { Text = "Max Rod", Values = wy_12, Default = wy_12[#wy_12] })
wy_32:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
wy_32:AddDropdown("AutoBuyUpgradeTarget", { Text = "Upgrades", Values = n2, Default = n2, Multi = true, SelectAllButtons = true })
wy_47 = wy_14.Main:AddRightGroupbox("Selling", "tag")
wy_47:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
wy_47:AddDropdown("AutoSellMode", { Text = "Sell Mode", Values = { om, oi }, Default = om })
wy_47:AddDropdown("AutoSellRarities", {
    Text = "Rarities",
    Values = wy_17,
    Default = { "Common", "Uncommon", "Rare" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
task.spawn(fns.worker2)
task.spawn(worker3)
task.spawn(fns.worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
wy_30 = wy_14.Player:AddLeftGroupbox("Movement", "footprints")
wy_30:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
wy_30:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
wy_30:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
wy_30:AddToggle("NoClip", { Text = "NoClip", Default = false })
wy_30:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
wy_42 = wy_14.Player:AddRightGroupbox("Fly", "feather")
wy_42:AddToggle("Fly", { Text = "Fly", Default = false })
wy_42:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(fns.onStepped)
pi.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fns.fn150)
Toggles.WalkSpeedEnabled:OnChanged(fn782)
pl = function(iy)
    pcall(function()
        o5:SetGameplayPausedNotificationEnabled(not iy)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = o_:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not iy
        end
    end)
    if not iy then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn372)
task.spawn(fns.antiGameplayPauseLoop)
wy_10 = wy_14.Settings:AddLeftGroupbox("Menu", "menu")
if wy_32 and not nK or (oY or oY) or not oY and not nK and (wy_32 or not wy_32) or not (wy_32 and not nK or (oY or oY) or not oY and not nK and (wy_32 or not wy_32)) then
    wy_10:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    o0.ToggleKeybind = oD.MenuKeybind
    n7 = tick()
    n_ = tick()
    pcall(function()
        for k, v in getconnections(LocalPlayer.Idled) do
            local vk = v
            pcall(function()
                vk:Disable()
            end)
        end
    end)
    nJ = fn670
    pb = pi.InputBegan:Connect(onInputBegan)
    connection2 = pi.InputChanged:Connect(fns.onInputChanged)
else
    connection2:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Text = "Menu keybind", Default = "RightShift" })
    wy_10.ToggleKeybind = n_.MenuKeybind
    o0 = tick()
    oD = tick()
    pcall(function()
        for k, v in getconnections(LocalPlayer.Idled) do
            local vk = v
            pcall(function()
                vk:Disable()
            end)
        end
    end)
    n7 = fn670
    pi = nJ.InputBegan:Connect(onInputBegan)
    pb = nJ.InputChanged:Connect(fns.onInputChanged)
end
wy_10:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
wy_10:AddButton("Unload", fns.onUnload)
task.spawn(fns.antiAfkLoop)
o0:OnUnload(fns.fn588)
ThemeManager:SetLibrary(o0)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(wy_14.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(o0)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/Plus1FishPerClick")
wy_25 = SaveManager:BuildConfigSection(wy_14.Settings)
nK = fns.fn188
oY = fns.fn197
oJ = fn884
pt = function(jH)
    local v1
    v1 = nil
    local v2 = type(jH) ~= "table" or type(jH.idx) ~= "string" or type(jH.type) ~= "string" or SaveManager.Ignore[jH.idx]
    if v2 then
        return false
    end
    v1 = nK(jH.type, jH.idx)
    if not v1 then
        return false
    end
    local v2_1 = pcall(function()
        if jH.type == "Input" then
            if type(jH.text) ~= "string" then
                return
            end
            v1:SetValue(jH.text)
        elseif jH.type == "ColorPicker" then
            v1:SetValueRGB(Color3.fromHex(jH.value), jH.transparency)
        elseif jH.type == "KeyPicker" then
            v1:SetValue({ jH.key, jH.mode, jH.modifiers })
            if jH.mode == "Toggle" and jH.toggled ~= nil then
                v1.Toggled = jH.toggled
                v1:Update()
            end
        else
            v1:SetValue(jH.value)
        end
    end)
    return v2_1
end
if (n7 or pb) and (n7 and wy_42) and (not oJ or not wy_42 or not n7 and not n7) and not ((n7 or pb) and (n7 and wy_42) and (not oJ or not wy_42 or not n7 and not n7)) then
    SaveManager:AddDivider()
    SaveManager:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", AllowEmpty = true, Finished = true })
    SaveManager:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    SaveManager:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    wy_25:LoadAutoloadConfig()
else
    wy_25:AddDivider()
    wy_25:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    wy_25:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    wy_25:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    SaveManager:LoadAutoloadConfig()
end
