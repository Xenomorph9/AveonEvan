local fns = {}
local zP_6, zP_12, zP_15, zP_16, FarmGroup, zP_20, MovementGroup, zP_27, zP_28, JuiceGroup, zP_35, zP_36, zP_40, zP_45, zP_50
local p0
local qI
local pI
local qp
local pp
local p6
local qO
local o6
local pO
local UserInputService
local pv
local qc
local pc
local pU
local HttpService
local pB
local qi
local pi
local p_
local qH
local Options
local qo
local po
local Label
local qN
local pN
local qu
local pu
local PlayerGui
local pb
local pT
local qA
local pA
local CoreGui
local ph
local pZ
local qG
local pG
local qn
local Library
local p4
local qM
local pM
local qt
local pt
local qa
local pa
local pS
local qz
local pz
local qg
local pg
local qF
local pF
local qm
local pm
local p3
local ReplicatedStorage
local Toggles
local VirtualUser
local ps
local p9
local o9
local pR
local qy
local py
local qf
local ShopConfig
local pX
local qE
local pE
local connection
local p2
local qK
local pK
local qr
local pr
local p8
local connection2
local pQ
local qx
local px
local LocalPlayer
local pe
local pW
local qD
local pD
local qk
local pk
local qJ
local CurrentCamera
local qq
local pq
local p7
local qP
local o7
local SaveManager
local qw
local pw
local qd
local pd
local pV
local qC
local pC
local qj
local pj
function fns.fn19()
    local yk = {}
    for k, v in { Toggles, Options } do
        for k, v in pairs(v) do
            local yl = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if yl then
                local yl_1 = ps(k, v)
                if yl_1 then
                    yk[#yk + 1] = yl_1
                end
            end
        end
    end
    table.sort(yk, function(ju, jv)
        if ju.type ~= jv.type then
            return ju.type < jv.type
        end
        return ju.idx < jv.idx
    end)
    return { objects = yk }
end
function fns.fn38(fm, fn)
    local vS = qD(fm)
    local vT = vS and vS:FindFirstChild(fn)
    local vT_1 = qm(vT, "PullPrompt")
    return pg(vT_1)
end
function fns.onCopySolanaAddress()
    pD(p7, "Copied Solana address")
end
function fns.fn76(c0)
    local tV = pi(c0) and pI(c0) > 0
    return tV
end
function fns.fn77(i8, i9)
    local x7_1 = (i8 == "Toggle" and Toggles or Options)[i9]
    local x6_2 = type(x7_1) == "table" and x7_1.Type == i8
    return x6_2 and x7_1 or nil
end
function fns.fn102(bh)
    local st = Options[bh]
    local su = st and st.Value
    local su_1 = type(su) == "table" and su
    local st_2 = {}
    local sv = su_1
    local sz = if sv then 1 else 0
    local sx = 3215 * sz + 2491 * (1 - sz)
    local sy = 85 * sz + 2551 * (1 - sz)
    if not ((sx * 3336 + sy * 3751 + sx * sy) % 16777213 == 11317350) then
        sv = st_2
    end
    return sv
end
function fns.fn106(eu)
    local vm_1
    local vl_1
    vl_1, vm_1 = nil, nil
    local vn = eu and eu:FindFirstChild("RollInfo")
    local vo = vn
    if vn then
        vn = vo:FindFirstChild("MultRow")
    end
    local vo_1 = vn
    if vo_1 then
        local vn_1 = {}
        for i, child in vo_1:GetChildren() do
            local vo_2 = child:IsA("TextLabel") or child:IsA("TextButton")
            if vo_2 then
                vn_1[#vn_1 + 1] = child
            end
        end
        table.sort(vn_1, function(eF, eG)
            return eF.LayoutOrder < eG.LayoutOrder
        end)
        for k, v in vn_1 do
            local Text = v.Text
            local vo_3 = string.lower(Text)
            local vp_1 = pS(Text)
            if vp_1 then
                if string.find(vo_3, "juice", 1, true) then
                    vm_1 = vp_1
                elseif vl_1 == nil then
                    vl_1 = vp_1
                end
            end
        end
    end
    local vn_3 = eu and eu:FindFirstChild("BuyPrompt")
    local vo_4 = vn_3
    if vn_3 then
        vn_3 = vo_4.ObjectText
    end
    local vo_5 = vn_3
    if type(vo_5) == "string" then
        local vn_4 = tonumber(string.match(vo_5, "[$%s]*x([%d%.]+)"))
        local vp_2 = tonumber(string.match(vo_5, "[Jj]uice%s*x([%d%.]+)"))
        if vn_4 and vl_1 == nil then
            vl_1 = vn_4
        end
        if vp_2 then
            vm_1 = vp_2
        end
    end
    return vl_1 or 1, vm_1
end
function fns.fn124(dp, dq)
    local ud = os.clock() + dq
    while true do
        local ue = dp and dp.Parent and os.clock() < ud and not Library.Unloaded
        if not ue then
            local ue_1 = dp and pI(dp) > 0
            return ue_1
        end
        if pI(dp) > 0 then
            break
        end
        task.wait(0.1)
    end
    return true
end
function fns.fn142()
    p2(Toggles.AntiGameplayPause.Value)
end
function fns.fn150()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local sH = leaderstats and leaderstats:FindFirstChild("Coins")
    local sG_1 = sH
    if sH then
        sH = tonumber(sG_1.Value)
    end
    return sH or 0
end
function fns.fn155()
    local Character = LocalPlayer.Character
    local sE = Character and Character:FindFirstChild("HumanoidRootPart")
    return sE
end
function fns.onUnload()
    Library:Unload()
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local xc_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if xc_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.worker2()
    local w8_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local w7 = math.floor(os.clock() - pv)
        if w7 < 60 then
            w8_1 = w7 .. "s"
        elseif w7 < 3600 then
            w8_1 = string.format("%dm %ds", w7 // 60, w7 % 60)
        else
            w8_1 = string.format("%dh %dm", w7 // 3600, w7 % 3600 // 60)
        end
        Label:SetText(pq("Session time", w8_1, qM))
    end
end
function fns.onInputBegan()
    qa = tick()
end
function fns.fn252(c5)
    local t_ = pi(c5) and pI(c5) <= 0
    return t_
end
function fns.fn255(eh)
    local u3 = eh and eh:FindFirstChild("Roll Slots")
    return u3
end
function fns.fn262(at, au)
    if setclipboard then
        setclipboard(at)
    elseif toclipboard then
        toclipboard(at)
    end
    Library:Notify(au)
end
function fns.worker4()
    while not Library.Unloaded do
        local yZ = qz("FarmDelay", 0.35)
        local y_ = pW()
        if y_ then
            local y0 = pa("AutoCollect") or pa("AutoHarvest") or pa("AutoHarvestMutation")
            if y0 then
                local y0_1 = {}
                if pa("AutoCollect") then
                    for k, v in qA(y_, "Collect") do
                        y0_1[#y0_1 + 1] = v
                    end
                end
                if pa("AutoHarvest") then
                    for k, v in qA(y_, "Harvest") do
                        y0_1[#y0_1 + 1] = v
                    end
                end
                if pa("AutoHarvestMutation") then
                    for k, v in pN(y_, "Collect") do
                        y0_1[#y0_1 + 1] = v
                    end
                    for k, v in pN(y_, "Harvest") do
                        y0_1[#y0_1 + 1] = v
                    end
                end
                local y1_1 = {}
                for k, v in y0_1 do
                    local y0_2 = Library.Unloaded
                    if not y0_2 then
                        local y2_1 = pa("AutoCollect") or pa("AutoHarvest") or pa("AutoHarvestMutation")
                        y0_2 = not y2_1
                    end
                    if y0_2 then
                        break
                    elseif not y1_1[v] then
                        y1_1[v] = true
                        local BasePart = v:FindFirstChildWhichIsA("BasePart", true)
                        if BasePart then
                            o6(BasePart.Position)
                        end
                        pc(o7, v)
                        task.wait(yZ)
                    end
                end
            end
            if pa("AutoBuySeeds") then
                qF()
            end
            if pa("AutoPlant") then
                local y0_4 = pM()
                local y1_2 = not y0_4
                if y1_2 ~= false then
                    y1_2 = pa("AutoBuySeeds")
                end
                if y1_2 then
                    qF()
                    task.wait(yZ)
                    y0_4 = pM()
                end
                if y0_4 then
                    pz(y0_4)
                    local y1_3 = (pQ(y0_4))
                    local zy = if y1_3 then 1 else 0
                    local zw = 2274 * zy + 2066 * (1 - zy)
                    local zx = 3067 * zy + 1883 * (1 - zy)
                    if not ((zw * 1614 + zx * 1097 + zw * zx) % 16777213 == 14009093) then
                        y1_3 = qk()[1]
                    end
                    local y0_5 = y1_3 or "BlueBerry"
                    for k, v in pk() do
                        local y0_6 = Library.Unloaded or not pa("AutoPlant")
                        if y0_6 then
                            break
                        elseif not pM() then
                            break
                        elseif not qq(y_, v) then
                            o6(v)
                            pc(qN, v, y0_5)
                            task.wait(yZ)
                        end
                    end
                end
            end
            if pa("AutoBlend") then
                local y0_7 = pu(qg)
                if y0_7 then
                    local y1_5 = pe(y_, "InsertPrompt")
                    local y2_2 = qx(y0_7)
                    if y1_5 and y2_2 then
                        pz(y0_7)
                        o6(y1_5.Position)
                        pc(qw, y1_5, y2_2)
                        task.wait(yZ)
                    end
                    pc(qE)
                end
            end
            if pa("AutoFillCup") then
                if p0(y_) > 0 then
                    local y0_8 = pu(qp)
                    local y1_6 = not y0_8
                    if y1_6 ~= false then
                        y1_6 = pa("AutoBuyCup")
                    end
                    if y1_6 then
                        pc(pC, "Cup1")
                        task.wait(yZ)
                        y0_8 = pu(qp)
                    end
                    if y0_8 then
                        local y1_7 = pe(y_, "FillPrompt")
                        local y2_3 = qx(y0_8)
                        if y1_7 and y2_3 then
                            pz(y0_8)
                            o6(y1_7.Position)
                            pc(qu, y1_7, y2_3)
                            o9(y0_8, math.max(1.2, yZ * 4))
                        end
                    end
                end
            end
            if pa("AutoPlaceCup") then
                local y0_9 = pu(qP)
                local y1_8 = qx(y0_9)
                local y2_4 = y0_9 and y1_8 and pI(y0_9) > 0
                if y2_4 then
                    pz(y0_9)
                    local Stand = y_:FindFirstChild("Stand")
                    local y__1 = Stand and Stand:FindFirstChild("Ledge")
                    if y__1 then
                        o6(y__1.Position)
                    end
                    pc(qn, y1_8)
                    task.wait(yZ)
                end
            end
        elseif pa("AutoBuySeeds") then
            qF()
        end
        task.wait(yZ)
    end
end
function fns.fn267()
    local function r_(aa)
        local rV = not aa
        local rZ = if rV then 1 else 0
        local rX = 496 * rZ + 833 * (1 - rZ)
        local rY = 216 * rZ + 3796 * (1 - rZ)
        if not ((rX * 1463 + rY * 3796 + rX * rY) % 16777213 == 1652720) then
            rV = not aa:IsA("ScreenGui")
        end
        if rV then
            return
        end
        aa.ResetOnSpawn = false
        aa.IgnoreGuiInset = true
        aa.DisplayOrder = math.max(aa.DisplayOrder, 1000)
        if aa.Parent ~= CoreGui then
            aa.Parent = CoreGui
        end
    end
    r_(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        r_(Library.ActiveLoading.ScreenGui)
    end
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local r0_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if r0_1 then
            r_(r0_1)
        end
    end
end
function fns.fn269()
    if not Toggles.Fly.Value then
        local xw = pd()
        if xw then
            xw.PlatformStand = false
        end
    end
end
function fns.worker7()
    while not Library.Unloaded do
        if pa("AutoBuyEgg") then
            local zH_1 = p9("EggId", "Common")
            if qH("Pets", zH_1) > 0 then
                local zI_1 = qt("Pets", zH_1)
                local zJ_1 = zI_1 and tonumber(zI_1.price)
                local zI_2 = zJ_1 or 0
                if qr() >= zI_2 then
                    pc(pK, zH_1)
                end
            end
        end
        if pa("AutoBuyGear") then
            local zH_2 = p9("GearId", "SprinklerCommon")
            if qH("Gear", zH_2) > 0 then
                local zI_3 = qt("Gear", zH_2)
                local zJ_3 = zI_3 and tonumber(zI_3.price)
                local zI_4 = zJ_3 or 0
                if qr() >= zI_4 then
                    pc(pG, zH_2)
                end
            end
        end
        task.wait(3)
    end
end
function fns.fn305(cL)
    local tG_1
    local tF_1
    if type(cL) ~= "string" then
        return 0
    end
    tF_1, tG_1 = string.match(string.lower(cL), "([%d,.]+)%s*([kmb]?)ml")
    if not tF_1 then
        return 0
    end
    local tH = tonumber((string.gsub(tF_1, ",", ""))) or 0
    local tF_2 = tH
    if tG_1 == "k" then
        tF_2 *= 1000
    elseif tG_1 == "m" then
        tF_2 *= 1000000
    elseif tG_1 == "b" then
        tF_2 *= 1000000000
    end
    return tF_2
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            p2(true)
        end
    end
end
function fns.fn309(a4, a5)
    local sj = Options[a4]
    local sk = sj and tonumber(sj.Value)
    return sk or a5
end
function fns.fn321()
    local v4 = pp()
    if not v4 then
        return {}
    end
    local v5 = {}
    local Size = v4.Size
    local CFrame = v4.CFrame
    local v4_1 = 6
    local v8 = math.max(3, Size.X / 2 - 3)
    local v9 = math.max(3, Size.Z / 2 - 3)
    local we = -v8
    local wd = 6
    while true and we <= v8 or false and we >= v8 do
        local wf = we
        local wj = -v9
        while true and wj <= v9 or false and wj >= v9 do
            local wk = wj
            v5[#v5 + 1] = CFrame:PointToWorldSpace(Vector3.new(wf, Size.Y / 2 + 0.15, wk))
            wj += v4_1
        end
        we += wd
    end
    return v5
end
function fns.fn324()
    local wY_1
    local wX_1
    if identifyexecutor then
        wY_1, wX_1 = identifyexecutor()
        local wZ = wY_1 ~= ""
        local w_ = type(wY_1) == "string" and wZ
        if w_ then
            local wZ_1 = type(wX_1) == "string" and wX_1 ~= "" and wY_1 .. " " .. wX_1
            qC = wZ_1 or wY_1
        end
    end
end
function fns.onCopyLitecoinAddress()
    pD(qo, "Copied Litecoin address")
end
function fns.onCopyUSDTAddress()
    pD(qd, "Copied USDT address")
end
function fns.fn359(dB)
    if not dB then
        return false
    elseif dB:GetAttribute("SeedId") then
        return true
    else
        return string.find(dB.Name, "Seed", 1, true) ~= nil
    end
end
function fns.fn370(aU)
    local DiscordGroup = aU:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = po })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = po })
end
function fns.fn377(bP)
    local sW = qJ()
    local sX = sW and typeof(bP) == "Vector3"
    if sX then
        sW.CFrame = CFrame.new(bP + Vector3.new(0, 4, 0))
    end
end
function fns.onImportConfigFromClipboardTex()
    local yN_1
    local yL = Options.SaveManager_ImportSource.Value or ""
    local yL_1
    local yM = tostring(yL):match("^%s*(.-)%s*$")
    if yM == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    yL_1, yN_1 = pcall(HttpService.JSONDecode, HttpService, yM)
    local yM_1 = not yL_1 or type(yN_1) ~= "table" or type(yN_1.objects) ~= "table"
    if yM_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local yL_2 = 0
    for k, v in yN_1.objects do
        if pV(v) then
            yL_2 += 1
        end
    end
    if yL_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local yN_2 = yL_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(yL_2, yN_2), 6)
end
function fns.fn403(ek, el)
    if not ek then
        return nil
    end
    for i, descendant in ek:GetDescendants() do
        local u5 = descendant:IsA("ProximityPrompt") and descendant.Name == el and descendant.Enabled
        if u5 then
            return descendant
        end
    end
    return nil
end
function fns.worker5()
    while not Library.Unloaded do
        if pa("AutoDaily") then
            pc(pZ)
        end
        if pa("AutoGroup") then
            pc(pT)
        end
        if pa("AutoOffline") then
            pc(pO)
        end
        if pa("AutoBlade") then
            pc(p6)
        end
        if pa("AutoBuyJuice") then
            pc(pw, "Juice", false)
        end
        if pa("AutoBuyUpgrades") then
            pc(pw, "Cup", false)
            pc(pw, "Blade", false)
            pc(pw, "Juice", false)
            pc(pt)
        end
        task.wait(4)
    end
end
function fns.fn440(cg, ch)
    local ShopState = ReplicatedStorage:FindFirstChild("ShopState")
    local te = ShopState and ShopState:FindFirstChild(cg)
    local td_1 = te
    if te then
        te = td_1:FindFirstChild(ch)
    end
    local td_2 = te
    if te then
        te = tonumber(td_2.Value)
    end
    local td_3 = te or 0
    local ShopBought = LocalPlayer:FindFirstChild("ShopBought")
    local tf = ShopBought and ShopBought:FindFirstChild(cg .. ":" .. ch)
    local max = math.max
    local tg = tf and tonumber(tf.Value)
    local td_6 = tg or 0
    return max(0, td_3 - td_6)
end
function fns.fn453(cQ)
    if not cQ then
        return 0
    end
    local tM = p8(cQ.Name)
    if tM > 0 then
        return tM
    end
    local tM_1 = tonumber(cQ:GetAttribute("Mutation"))
    if tM_1 and tM_1 > 0 then
        return tM_1
    end
    local tM_2 = cQ:GetAttribute("SlotLabelSub") or ""
    return p8(tostring(tM_2))
end
function fns.fn470(ba, bb)
    local sm = Options[ba]
    local sn = sm and sm.Value
    local sn_1 = sn ~= ""
    local so = type(sn) == "string" and sn_1
    if so then
        return sn
    end
    return bb
end
function fns.onExportConfigToClipboard()
    local yI_1
    local yH_1
    yH_1, yI_1 = pcall(HttpService.JSONEncode, HttpService, pb())
    if not yH_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local yH_2 = setclipboard or toclipboard
    local yH_3 = type(yH_2) ~= "function" or not pcall(yH_2, yI_1)
    if yH_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.onCopyVenmoLink()
    pD(pU, "Copied Venmo link")
end
function fns.fn532(jg, jh)
    local Type = jh.Type
    if Type == "Toggle" then
        return { idx = jg, type = "Toggle", value = jh.Value == true }
    elseif Type == "Slider" then
        return { idx = jg, type = "Slider", value = tostring(jh.Value) }
    elseif Type == "Dropdown" then
        return { idx = jg, type = "Dropdown", multi = jh.Multi == true, value = jh.Value }
    elseif Type == "Input" then
        local ye = jh.Value or ""
        return { idx = jg, type = "Input", text = tostring(ye) }
    elseif Type == "ColorPicker" then
        return { idx = jg, type = "ColorPicker", value = jh.Value:ToHex(), transparency = jh.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = jg,
            type = "KeyPicker",
            mode = jh.Mode,
            key = jh.Value,
            modifiers = jh.Modifiers,
            toggled = jh.Toggled
        }
    else
        return nil
    end
end
function fns.fn546(bU, bV)
    local s__1
    local sZ_1
    sZ_1, s__1 = pcall(ShopConfig.ItemInfo, bU, bV)
    local s0 = sZ_1 and type(s__1) == "table"
    if s0 then
        return s__1
    end
    return nil
end
function fns.fn558()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    p3 = tick()
end
function fns.fn563(eq)
    if type(eq) ~= "string" then
        return nil
    end
    local vd = string.lower(eq)
    local ve = vd == "|"
    local vf = vd == ""
    local vk = if vf then 1 else 0
    local vi = 1205 * vk + 858 * (1 - vk)
    local vj = 3318 * vk + 3610 * (1 - vk)
    if not ((vi * 3981 + vj * 1545 + vi * vj) % 16777213 == 13921605) then
        vf = ve
    end
    if vf or vd == "label" then
        return nil
    end
    local ve_2 = tonumber(string.match(vd, "([%d%.]+)"))
    return ve_2
end
function fns.onRscripts()
    pD(pm, "Copied Rscripts profile to clipboard")
end
function fns.fn604()
    local sT = pW()
    local sU = sT and sT:FindFirstChild("soil")
    local sT_1 = sU
    if sU then
        sU = sT_1:FindFirstChild("Main")
    end
    return sU
end
function fns.fn613(dy)
    local ug = not dy or dy:GetAttribute("ItemKind") == "Cup"
    if ug then
        return false
    end
    return dy:GetAttribute("FruitId") ~= nil
end
function fns.fn624()
    local xS = if pa("AutoSell") then 1 else 0
    if xS == 1 then
        qK()
    end
end
function fns.fn640(dD)
    local uj = dD and dD:GetAttribute("SeedId")
    local uj_1 = uj ~= ""
    local ul = type(uj) == "string" and uj_1
    if ul then
        return uj
    end
    return nil
end
function fns.fn643(t)
    if cloneref then
        return cloneref(t)
    end
    return t
end
function fns.worker6()
    while not Library.Unloaded do
        local zE = qz("RollDelay", 0.5)
        local zF = pW()
        if zF then
            if pa("AutoBuyRolledCup") then
                qy(zF, "Cup Roll Slot")
            end
            if pa("AutoBuyRolledCart") then
                qy(zF, "Stands Roll slot")
            end
            if pa("AutoRollCup") then
                pj(zF, "Cup Roll Lever")
            end
            if pa("AutoRollCart") then
                pj(zF, "Stand Skins Lever")
            end
        end
        task.wait(zE)
    end
end
function fns.fn670(gu, gv)
    return string.format('<font color="%s">%s</font>', gv, gu)
end
function fns.fn676(gx, gy, gz)
    return string.format("<b>%s</b> %s %s", gx, pA("-", "#5a6070"), pA(gy, gz))
end
function fns.fn677()
    pD(pr, "Copied Discord invite to clipboard")
end
function fns.fn695()
    local PlotNumber = LocalPlayer:FindFirstChild("PlotNumber")
    if not PlotNumber or PlotNumber.Value == 0 then
        return nil
    end
    local Map = workspace:FindFirstChild("Map")
    local sL = Map and Map:FindFirstChild("Plots")
    local sK_2 = sL
    if sL then
        sL = sK_2:FindFirstChild(tostring(PlotNumber.Value))
    end
    return sL
end
function fns.fn700()
    return CoreGui
end
function fns.fn737(dN, dO)
    if not dN then
        return nil
    end
    for i, descendant in dN:GetDescendants() do
        local ut = descendant:IsA("ProximityPrompt") and descendant.Name == dO
        if ut then
            return descendant.Parent
        end
    end
    return nil
end
function fns.onCopyBitcoinAddress()
    pD(qj, "Copied Bitcoin address")
end
function fns.onInputChanged(iT)
    local UserInputType = iT.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        qa = tick()
    end
end
function fns.fn791(e5, e6)
    local vN_1
    local vK = qD(e5)
    local vL = vK and vK:FindFirstChild(e6)
    local vL_2
    local vK_1 = vL
    if vL then
        vL = vK_1:FindFirstChild("Main")
    end
    local vK_2 = vL
    if vL then
        vL = vK_2:FindFirstChild("BuyPrompt")
    end
    local vM = vL
    if not vM or not vM.Enabled then
        return false
    end
    vN_1, vL_2 = pB(vK_2)
    local vR = if not px(vN_1, vL_2) then 1 else 0
    if vR == 1 then
        return false
    end
    return pg(vM)
end
function fns.fn824(cW)
    local tP = cW
    if tP then
        local tQ = cW:GetAttribute("ItemKind") == "Cup"
        local tU = if tQ then 1 else 0
        local tS = 802 * tU + 1001 * (1 - tU)
        local tT = 74 * tU + 3026 * (1 - tU)
        if not ((tS * 3465 + tT * 2727 + tS * tT) % 16777213 == 3040076) then
            tQ = cW:GetAttribute("ItemType") == "Cup"
        end
        tP = tQ
    end
    return tP
end
function fns.fn825()
    if not Toggles.WalkSpeedEnabled.Value then
        local xy = pd()
        if xy then
            xy.WalkSpeed = 16
        end
    end
end
function fns.onCopyEthereumAddress()
    pD(qf, "Copied Ethereum address")
end
function fns.fn884()
    local Character = LocalPlayer.Character
    local sB = Character and Character:FindFirstChildOfClass("Humanoid")
    return sB
end
function fns.fn885(aH, aI)
    return (qI[aH] or 0) < (qI[aI] or 0)
end
function fns.fn887(cF)
    if not cF then
        return nil
    end
    local tt = (cF:GetAttribute("Uid"))
    local ty = if tt then 1 else 0
    local tw = 518 * ty + 2945 * (1 - ty)
    local tx = 1602 * ty + 3608 * (1 - ty)
    if not ((tw * 1914 + tx * 723 + tw * tx) % 16777213 == 2979534) then
        tt = cF:GetAttribute("Uid")
    end
    if not tt then
        tt = cF:GetAttribute("UID")
    end
    local tu = tt
    if tu ~= nil then
        return tu
    end
    for k, v in cF:GetAttributes() do
        if string.lower(k) == "uid" then
            return v
        end
    end
    return nil
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local xk_1 = pd()
        if xk_1 then
            xk_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn935(da)
    local t1 = da
    if t1 then
        local t2_1 = (da:FindFirstChild("PitRig"))
        local t6 = if t2_1 then 1 else 0
        local t4 = 2936 * t6 + 1444 * (1 - t6)
        local t5 = 2038 * t6 + 2227 * (1 - t6)
        if not ((t4 * 2680 + t5 * 3307 + t4 * t5) % 16777213 == 3814501) then
            t2_1 = da:FindFirstChild("Pit")
        end
        t1 = t2_1
    end
    local t2_2 = t1
    if t1 then
        t1 = t2_2:FindFirstChild("Tank")
    end
    local t2_3 = t1
    if not t2_3 then
        return 0
    end
    local t1_1 = 0
    for i, descendant in t2_3:GetDescendants() do
        local t2_4 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if t2_4 then
            local t2_5 = p8(descendant.Text)
            if t2_5 > t1_1 then
                t1_1 = t2_5
            end
        end
    end
    return t1_1
end
local function onCopyPayPalLink()
    pD(p_, "Copied PayPal link")
end
local function fn971(d2, d3)
    local uM = {}
    for k, v in qA(d2, d3) do
        local attr = v:GetAttribute("Mutation")
        local uO = attr ~= ""
        local uP = type(attr) == "string" and uO
        if uP then
            uM[#uM + 1] = v
        end
    end
    return uM
end
local function fn983()
    local xO = if pa("AutoSell") then 1 else 0
    if xO == 1 then
        pc(qc, p9("AutoSellRarity", "Common"))
    else
        pc(qc, "Off")
    end
end
local function fn984()
    local wM = qr()
    for k, v in qk() do
        if pR(v) > 0 then
            local wO = qI[v] or 0
            local wN_1 = qt("Seeds", v)
            local wP = wN_1 and tonumber(wN_1.price)
            if wP then
                wO = tonumber(wN_1.price)
            end
            if wM >= wO then
                pc(qG, v)
                return true
            end
        end
    end
    return false
end
local function fn997()
    local wm = py("PlantSeeds")
    local wn = {}
    for k, v in qO do
        if wm[v] then
            wn[#wn + 1] = v
        end
    end
    if #wn == 0 then
        wn[1] = "BlueBerry"
    end
    return wn
end
local function worker3()
    while not Library.Unloaded do
        task.wait(2)
        if pa("AntiAfk") then
            local yV = tick() - qa
            local yW = tick() - p3
            if yV >= 300 and yW >= 60 then
                pcall(pE)
            else
                if yV < 300 and yW >= 300 then
                    pcall(pE)
                end
            end
        end
    end
end
local function fn1022(fw, fx)
    for i, descendant in fw:GetDescendants() do
        local vV = (descendant:IsA("ProximityPrompt"))
        if vV then
            vV = descendant.ActionText == "Collect" or descendant.ActionText == "Harvest"
        end
        if vV then
            local Parent = descendant.Parent
            local vW_2 = nil
            if Parent then
                if Parent:IsA("BasePart") then
                    vW_2 = Parent
                else
                    local vX = Parent:FindFirstAncestorWhichIsA("BasePart") or Parent:FindFirstChildWhichIsA("BasePart")
                    vW_2 = vX
                end
            end
            if vW_2 and (vW_2.Position - fx).Magnitude < 4.5 then
                return true
            end
        end
        local vV_3 = descendant:IsA("Model") and descendant.Parent and descendant.Parent.Name == "Planting"
        if vV_3 then
            local BasePart = descendant:FindFirstChildWhichIsA("BasePart", true)
            if BasePart and (BasePart.Position - fx).Magnitude < 4.5 then
                return true
            end
        end
    end
    return false
end
local function worker()
    while Library and not Library.Unloaded do
        ph()
        task.wait(1)
    end
end
local function fn1076()
    connection:Disconnect()
    connection2:Disconnect()
    p2(false)
    pc(qc, "Off")
    local x4 = pd()
    if x4 then
        x4.PlatformStand = false
        x4.WalkSpeed = 16
    end
    pF.__Ouroboros_BlendFruitAndSellJuice = nil
end
local function fn1116(dT, dU)
    local uB = {}
    local uC = {}
    for i, descendant in dT:GetDescendants() do
        local uD = descendant:IsA("ProximityPrompt") and descendant.ActionText == dU and descendant.Enabled
        if uD then
            local Model = descendant:FindFirstAncestorOfClass("Model")
            if Model and Model ~= dT and not uC[Model] then
                uC[Model] = true
                uB[#uB + 1] = Model
            end
        end
    end
    return uB
end
local function onOnClientEvent(hJ, hK, hL)
    if Library.Unloaded then
        return
    end
    local xa = pa("AutoAcceptOffers") and hL
    if xa then
        pc(qi, hL, true)
    end
end
local function onRenderStepped(hX)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local xp_1 = pd()
        if xp_1 then
            xp_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local xp_3 = qJ()
        local xq = pd()
        if xp_3 and xq then
            xq.PlatformStand = true
            local xq_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                xq_1 += CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                xq_1 -= CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                xq_1 -= CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                xq_1 += CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                xq_1 += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                xq_1 -= Vector3.new(0, 1, 0)
            end
            xp_3.AssemblyLinearVelocity = Vector3.zero
            if xq_1.Magnitude > 0 then
                xp_3.CFrame = xp_3.CFrame + xq_1.Unit * Options.FlySpeed.Value * hX
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local gR = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, pX)
    pD(gR, "Copied join script to clipboard")
end
local function fn1150()
    gethui = p4
end
local function fn1177(b0)
    local ShopState = ReplicatedStorage:FindFirstChild("ShopState")
    local s3 = ShopState and ShopState:FindFirstChild("Seeds")
    local s2_1 = s3
    if s3 then
        s3 = s2_1:FindFirstChild(b0)
    end
    local s2_2 = s3
    if s3 then
        s3 = tonumber(s2_2.Value)
    end
    local s2_3 = s3 or 0
    local ShopBought = LocalPlayer:FindFirstChild("ShopBought")
    local s4 = ShopBought and ShopBought:FindFirstChild("Seeds:" .. b0)
    local max = math.max
    local s5 = s4 and tonumber(s4.Value)
    local s2_6 = s5 or 0
    return max(0, s2_3 - s2_6)
end
local function fn1186(ea)
    if not ea or not ea.Enabled then
        return false
    end
    local Parent = ea.Parent
    local uY
    if Parent then
        if Parent:IsA("BasePart") then
            uY = Parent
        else
            local uZ = (Parent:FindFirstAncestorWhichIsA("BasePart"))
            local u2 = if uZ then 1 else 0
            local u0 = 2494 * u2 + 1358 * (1 - u2)
            local u1 = 2126 * u2 + 1094 * (1 - u2)
            if not ((u0 * 2710 + u1 * 329 + u0 * u1) % 16777213 == 12760438) then
                uZ = Parent:FindFirstChildWhichIsA("BasePart", true)
            end
            uY = uZ
        end
    end
    if uY then
        o6(uY.Position)
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, ea)
        return true
    end
    return false
end
local function fn1192(a_)
    local sg = Toggles[a_]
    return sg ~= nil and sg.Value == true
end
o6 = nil
o7 = nil
connection2 = nil
o9 = nil
pa = nil
pb = nil
pc = nil
pd = nil
pe = nil
ShopConfig = nil
pg = nil
ph = nil
pi = nil
pj = nil
pk = nil
connection = nil
pm = nil
Library = nil
po = nil
pp = nil
pq = nil
pr = nil
ps = nil
pt = nil
pu = nil
pv = nil
pw = nil
px = nil
py = nil
pz = nil
pA = nil
pB = nil
pC = nil
pD = nil
pE = nil
pF = nil
pG = nil
Options = nil
pI = nil
CurrentCamera = nil
pK = nil
Toggles = nil
pM = nil
pN = nil
pO = nil
SaveManager = nil
pQ = nil
pR = nil
pS = nil
pT = nil
pU = nil
pV = nil
pW = nil
pX = nil
pZ = nil
p_ = nil
p0 = nil
p2 = nil
p3 = nil
p4 = nil
Label = nil
p6 = nil
p7 = nil
p8 = nil
p9 = nil
qa = nil
PlayerGui = nil
qc = nil
qd = nil
LocalPlayer = nil
qf = nil
qg = nil
CoreGui = nil
qi = nil
qj = nil
qk = nil
qm = nil
qn = nil
qo = nil
qp = nil
qq = nil
qr = nil
VirtualUser = nil
qt = nil
qu = nil
UserInputService = nil
qw = nil
qx = nil
qy = nil
qz = nil
qA = nil
HttpService = nil
qC = nil
qD = nil
qE = nil
qF = nil
qG = nil
local pY, p1, GuiService
qH = nil
qI = nil
qJ = nil
qK = nil
ReplicatedStorage = nil
qM = nil
qN = nil
qO = nil
qP = nil
ReplicatedStorage, HttpService, UserInputService, VirtualUser, GuiService, CoreGui, LocalPlayer, PlayerGui, p4 = nil, nil, nil, nil, nil, nil, nil, nil, nil
local zP_26 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
HttpService = game:GetService("HttpService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
LocalPlayer = zP_26.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
p4 = fns.fn700
if getgenv then
    getgenv().gethui = p4
end
local zP_8
zP_26 = 0
repeat
    zP_28 = { "gounln", "mkim", "ldzdjwsbejf", "zgp", "dbapx", "qwbbjl", "mqo", "vhnputxa" }
    if zP_28[(zP_26 * 45 + 89) % 8 + 1] < zP_28[(zP_26 * 45 + 89) % 8 + 1] then
        pcall(fn1150)
        zP_8 = getgenv
    else
        pcall(fn1150)
        zP_8 = getgenv
    end
    zP_26 = (zP_26 + 1) % 4
until (zP_26 * 3 + 2) % 4 == 1
if zP_8 then
    zP_8 = getgenv()
end
zP_26 = zP_8
local rA = if zP_26 then 1 else 0
local zP_10 = 1163 * rA + 917 * (1 - rA)
local rz = 2536 * rA + 1064 * (1 - rA)
if not ((zP_10 * 1494 + rz * 3636 + zP_10 * rz) % 16777213 == 13907786) then
    zP_26 = _G
end
pF = zP_26
if pF.__Ouroboros_BlendFruitAndSellJuice then
    return
end
pr, pm, ShopConfig, o7, qN, qG, qE, qw, qu, qn, qi, qc, p6, pZ, pT, pO, pK, pG, pC, pw, pt, Library, SaveManager, Toggles, Options, qO, qI, ph, pD, po, pc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pF.__Ouroboros_BlendFruitAndSellJuice = true
local zP_11 = fns.fn643
local zP_13 = "Blend Fruit and Sell Juice"
pr = "https://discord.gg/ehKVq7pf7v"
pm = "https://rscripts.net/@Ouroboros"
local zP_46 = require(ReplicatedStorage:WaitForChild("SeedConfig"))
ShopConfig = require(ReplicatedStorage:WaitForChild("ShopConfig"))
local zP_30 = require(ReplicatedStorage:WaitForChild("JuiceConfig"))
zP_26 = ReplicatedStorage:WaitForChild("Remotes")
o7 = zP_11(zP_26:WaitForChild("CollectBerry"))
qN = zP_11(zP_26:WaitForChild("PlantSeed"))
qG = zP_11(zP_26:WaitForChild("BuySeed"))
qE = zP_11(zP_26:WaitForChild("PitAddAll"))
qw = zP_11(zP_26:WaitForChild("BlenderInsert"))
qu = zP_11(zP_26:WaitForChild("BlenderFill"))
qn = zP_11(zP_26:WaitForChild("StandPlaceCup"))
qi = zP_11(zP_26:WaitForChild("OfferRespond"))
local zP_32 = zP_11(zP_26:WaitForChild("CustomerOffer"))
qc = zP_11(zP_26:WaitForChild("SetAutoSell"))
p6 = zP_11(zP_26:WaitForChild("UpgradeBlade"))
pZ = zP_11(zP_26:WaitForChild("DailyClaim"))
pT = zP_11(zP_26:WaitForChild("GroupReward"))
pO = zP_11(zP_26:WaitForChild("ManagerClaimOffline"))
pK = zP_11(zP_26:WaitForChild("BuyEgg"))
pG = zP_11(zP_26:WaitForChild("BuyGear"))
if (pO and pr and (not qE and false) and (not ph and not pO and (false and not ph)) or (pO and not ph and (qu or not qu) or (not pO or false or (pc or not qu)))) and not (pO and pr and (not qE and false) and (not ph and not pO and (false and not ph)) or (pO and not ph and (qu or not qu) or (not pO or false or (pc or not qu)))) then
    pw = pt(pC:WaitForChild("BuyCup"))
    pt(pC:WaitForChild("UpgradeLuck"))
    pt(pC:WaitForChild("UpgradeGarden"))
else
    pC = zP_11(zP_26:WaitForChild("BuyCup"))
    pw = zP_11(zP_26:WaitForChild("UpgradeLuck"))
    pt = zP_11(zP_26:WaitForChild("UpgradeGarden"))
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ph = fns.fn267
ph()
task.spawn(worker)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
pD = fns.fn262
po = fns.fn677
pc = function(aA, ...)
    if aA then
        pcall(function(...)
            aA:FireServer(...)
        end, ...)
    end
end
qO = {}
qI = {}
for k, v in zP_46.Seeds do
    zP_26 = type(k) == "string" and type(v) == "table"
    if zP_26 then
        zP_26 = tonumber(v.price) or 0
        qI[k] = zP_26
        qO[#qO + 1] = k
    end
end
zP_46, zP_11, zP_28, zP_8 = nil, nil, nil, nil
zP_26 = 1
repeat
    zP_16 = (zP_26 * 2 + 1) % 3 + 1
    if zP_16 <= 2 then
        if zP_16 <= 1 then
            zP_16 = {
                "hvnxiutga",
                "fzeujxdsij",
                "ufyqadab",
                "tjvfth",
                "xxrhajiwulhx",
                "twyhxfjiamqy",
                "lrblrsqxmrst",
                "sixmqtjwosg",
                "fdb"
            }
            if zP_16[(zP_26 * 12 + 36) % 9 + 1] <= zP_16[(zP_26 * 12 + 36) % 9 + 1] then
                table.sort(qO, fns.fn885)
                zP_46 = { "Common", "Spotted", "Sunburst", "Onyx" }
                zP_11 = {
                    "Trowel",
                    "SprinklerCommon",
                    "SprinklerUncommon",
                    "SprinklerRare",
                    "SprinklerLegendary",
                    "SprinklerExotic"
                }
            else
                table.sort(zP_46, fns.fn885)
                zP_11 = { "Sunburst", "Onyx", "Common", "Spotted" }
                qO = {
                    "SprinklerExotic",
                    "SprinklerLegendary",
                    "SprinklerCommon",
                    "SprinklerUncommon",
                    "SprinklerRare",
                    "Trowel"
                }
            end
            zP_26 = (zP_26 + 14) % 24
        else
            zP_16 = (vector.create((zP_26 * 1 + 6) % 11 + 1, (zP_26 * 5 + 2) % 13 + 1, (zP_26 * 7 + 3) % 17 + 1))
            zP_50 = (vector.create((zP_26 * 2 + 4) % 11 + 1, (zP_26 * 3 + 10) % 13 + 1, (zP_26 * 2 + 1) % 17 + 1))
            zP_35 = (vector.create((zP_26 * 7 + 9) % 11 + 1, (zP_26 * 2 + 11) % 13 + 1, (zP_26 * 2 + 15) % 17 + 1))
            if vector.dot(vector.cross(zP_16, zP_50), zP_35) == vector.dot(vector.cross(zP_50, zP_35), zP_16) + 4 then
                zP_8 = { "Off" }
            else
                zP_28 = { "Off" }
            end
            zP_26 = (zP_26 + 20) % 24
        end
    else
        local Bh = bit32.rrotate(bit32.bxor(bit32.lrotate(zP_26, 20), string.byte(tostring(zP_28))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Bh, 2318217995), 30), 3800779970) == bit32.lrotate(Bh, 30) then
            zP_8 = zP_30.Customers
        else
            zP_30 = zP_8.Customers
        end
        zP_26 = (zP_26 + 2) % 24
    end
until (zP_26 * 13 + 5) % 24 == 6
if zP_8 then
    zP_26 = 2
    repeat
        local Bk = bit32.rrotate(bit32.bxor(bit32.lrotate(zP_26, 7), string.byte(tostring(zP_26))), 11)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Bk, 4292148676), 20), 3696229711) ~= bit32.lrotate(Bk, 20) then
            zP_30 = type(zP_8.Customers.rarities) == "table"
        else
            zP_8 = type(zP_30.Customers.rarities) == "table"
        end
        zP_26 = (zP_26 + 1) % 8
    until (zP_26 * 5 + 4) % 8 == 3
end
if zP_8 then
    for i, v in ipairs(zP_30.Customers.rarities) do
        zP_26 = type(v) == "table" and type(v.name) == "string"
        if zP_26 then
            zP_28[#zP_28 + 1] = v.name
        end
    end
end
if #zP_28 == 1 then
    zP_26 = 1
    repeat
        zP_8 = (vector.create((zP_26 * 4 + 6) % 11 + 1, (zP_26 * 6 + 13) % 13 + 1, (zP_26 * 7 + 10) % 17 + 1))
        zP_30 = (vector.create((zP_26 * 1 + 5) % 11 + 1, (zP_26 * 5 + 9) % 13 + 1, (zP_26 * 12 + 10) % 17 + 1))
        zP_16 = (vector.create((zP_26 * 5 + 8) % 11 + 1, (zP_26 * 3 + 8) % 13 + 1, (zP_26 * 10 + 17) % 17 + 1))
        zP_50 = (vector.create((zP_26 * 6 + 9) % 11 + 1, (zP_26 * 5 + 2) % 13 + 1, (zP_26 * 8 + 1) % 17 + 1))
        if vector.dot(vector.cross(zP_8, zP_30), (vector.cross(zP_16, zP_50))) == vector.dot(zP_8, zP_16) * vector.dot(zP_30, zP_50) - vector.dot(zP_8, zP_50) * vector.dot(zP_30, zP_16) + 3 then
            zP_28 = { "Epic", "Rare", "Common", "Uncommon", "Mythical", "Secret", "Legendary", "Off" }
        else
            zP_28 = { "Off", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Secret" }
        end
        zP_26 = (zP_26 + 0) % 4
    until (zP_26 * 3 + 2) % 4 == 1
end
zP_8 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pr, Copyable = true }, "|", zP_13 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
zP_50 = {
    Info = zP_8:AddTab("Info", "info"),
    Main = zP_8:AddTab("Main", "gamepad-2"),
    Rolls = zP_8:AddTab("Rolls", "dices"),
    Shop = zP_8:AddTab("Shop", "shopping-bag"),
    Player = zP_8:AddTab("Player", "person-standing"),
    Settings = zP_8:AddTab("Settings", "settings")
}
zP_16 = fns.fn370
for k, v in zP_50 do
    zP_16(v)
end
qM, qC, Label, pX, pa, qz, p9, py, pd, qJ, qr, pW, pp, o6, qt, pR, qH, pu, qx, p8, pI, pi, qP, qp, p0, o9, qg, p1, pQ, pz, pe, qA, pN, pg, qD, qm, pS, pB, px, qy, pj, qq, pk, qk, pM, qF, pA, pq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pa = fn1192
qz = fns.fn309
p9 = fns.fn470
py = fns.fn102
pd = fns.fn884
qJ = fns.fn155
qr = fns.fn150
pW = fns.fn695
pp = fns.fn604
o6 = fns.fn377
qt = fns.fn546
pR = fn1177
qH = fns.fn440
pu = function(cv)
    local cw
    cw = nil
    local function cx(cy)
        if not cy then
            return
        end
        for i, child in cy:GetChildren() do
            local tl = not cw and child:IsA("Tool") and cv(child)
            if tl then
                cw = child
            end
        end
    end
    cx(LocalPlayer:FindFirstChild("Backpack"))
    cx(LocalPlayer.Character)
    return cw
end
qx = fns.fn887
p8 = fns.fn305
pI = fns.fn453
pi = fns.fn824
qP = fns.fn76
qp = fns.fn252
p0 = fn935
o9 = fns.fn124
qg = fns.fn613
p1 = fns.fn359
pQ = fns.fn640
pz = function(dH)
    local uq = pd()
    if uq and dH then
        pcall(function()
            uq:EquipTool(dH)
        end)
    end
end
pe = fns.fn737
qA = fn1116
pN = fn971
pg = fn1186
qD = fns.fn255
qm = fns.fn403
pS = fns.fn563
pB = fns.fn106
px = function(eU, eV)
    local vF
    vF = nil
    vF = p9("RollBuyMode", "Higher")
    local vG = qz("RollGoldMult", 2)
    local vH = qz("RollJuiceMult", 2)
    local function vI(e1, e2)
        if vF == "Lower" then
            return e1 <= e2
        end
        return e1 >= e2
    end
    if not vI(eU, vG) then
        return false
    elseif eV == nil then
        return true
    else
        return vI(eV, vH)
    end
end
if (not o6 or not p0 or not p0 and p0) and ((p0 or not p0) and (not o6 or not o6)) or not ((not o6 or not p0 or not p0 and p0) and ((p0 or not p0) and (not o6 or not o6))) then
    qy = fns.fn791
else
    qC = fns.fn791
end
pj = fns.fn38
qq = fn1022
pk = fns.fn321
qk = fn997
pM = function()
    local wE
    wE = {}
    for k, v in qk() do
        wE[v] = true
    end
    return pu(function(f7)
        local wD = if not p1(f7) then 1 else 0
        if wD == 1 then
            return false
        end
        local wy = pQ(f7)
        return wy == nil or wE[wy] == true
    end)
end
qF = fn984
pA = fns.fn670
pq = fns.fn676
local zP_18 = "#7fd47f"
zP_35 = "#6ec1ff"
qM = "#e8a34d"
local zP_37 = "#8b93a3"
qC = "Unknown"
pcall(fns.fn324)
zP_26 = zP_50.Info:AddLeftGroupbox("Account", "circle-user")
zP_26:AddLabel(pq("User", LocalPlayer.Name, zP_18), true)
zP_26:AddLabel(pq("Status", "Keyless", zP_18), true)
zP_26:AddLabel(pq("Executor", qC, zP_18), true)
local GameInfoGroup = zP_50.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(pA(zP_13 .. " [" .. tostring(game.PlaceId) .. "]", zP_35), true)
GameInfoGroup:AddLabel(pq("Place ID", tostring(game.PlaceId), zP_35), true)
Label = GameInfoGroup:AddLabel(pq("Session time", "0s", qM), true)
if not qH and not qH or not p9 and o9 or (not o9 or not p9) and (not o9 and p9) or p9 and not qH and (p9 and o9) and (not qH or not qH or o9 and not o9) or (not qH or not qH or not o9 and not o9) and (qH and qH and (o9 or not qH)) and (qH and qH or (not qH or not qH) or (not o9 and not qH or (not p9 or p9))) or not (not qH and not qH or not p9 and o9 or (not o9 or not p9) and (not o9 and p9) or p9 and not qH and (p9 and o9) and (not qH or not qH or o9 and not o9) or (not qH or not qH or not o9 and not o9) and (qH and qH and (o9 or not qH)) and (qH and qH or (not qH or not qH) or (not o9 and not qH or (not p9 or p9)))) then
    pX = tostring(game.JobId)
else
    p0 = tostring(game.JobId)
end
zP_30 = #pX > 18
if zP_30 then
    zP_26 = 0
    repeat
        local AS = bit32.rrotate(bit32.bxor(bit32.lrotate(zP_26, 15), string.byte(tostring(zP_26))), 7)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(AS, 3687354545), 1540468418), (bit32.bxor(bit32.band(AS, 607612750), 2465945876))), 1540468418), 2465945876) ~= AS then
            pX = string.sub(zP_30, 1, 18) .. "..."
        else
            zP_30 = string.sub(pX, 1, 18) .. "..."
        end
        zP_26 = (zP_26 + 1) % 4
    until (zP_26 * 3 + 3) % 4 == 2
end
zP_26 = zP_30 or pX
pv, qo, qj, qf, qd, p7, p_, pU, FarmGroup, JuiceGroup, MovementGroup, CurrentCamera, qa, p3, connection, connection2, zP_36, p2, qK, pE, pY, ps, pb, pV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zP_31 = zP_26
GameInfoGroup:AddLabel(pq("Server", zP_31, zP_37), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
pv = os.clock()
task.spawn(fns.worker2)
zP_8 = zP_50.Info:AddRightGroupbox("Scripts", "package")
zP_8:AddLabel(pA("Included in this hub", zP_37), true)
zP_8:AddLabel(pA(zP_13, zP_35), true)
local FeaturesGroup = zP_50.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(pA("Auto Farm", zP_35), true)
FeaturesGroup:AddLabel(pA("Auto Juice", qM), true)
FeaturesGroup:AddLabel(pA("Auto Rolls", zP_18), true)
FeaturesGroup:AddLabel(pA("Auto Shop", zP_37), true)
local SocialsGroup = zP_50.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = po })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = zP_50.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = po })
qo = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
qj = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
qf = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
if (not zP_36 and not CurrentCamera and (not zP_36 and false) or (not zP_36 or not JuiceGroup)) and (not JuiceGroup and zP_36 or (connection2 or (not JuiceGroup or 67))) or JuiceGroup and not CurrentCamera and (JuiceGroup or JuiceGroup) and (connection2 and 67 and (not zP_36)) and ((not CurrentCamera and not CurrentCamera or (connection2 or false)) and (not JuiceGroup and not CurrentCamera and false)) or not ((not zP_36 and not CurrentCamera and (not zP_36 and false) or (not zP_36 or not JuiceGroup)) and (not JuiceGroup and zP_36 or (connection2 or (not JuiceGroup or 67))) or JuiceGroup and not CurrentCamera and (JuiceGroup or JuiceGroup) and (connection2 and 67 and (not zP_36)) and ((not CurrentCamera and not CurrentCamera or (connection2 or false)) and (not JuiceGroup and not CurrentCamera and false))) then
    qd = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    p7 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
else
    p7 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    qd = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
end
p_ = "https://paypal.me/TheTruckerGOD"
pU = "https://venmo.com/u/miserablemusic"
zP_15, zP_12, zP_45, zP_27, zP_6, zP_40, zP_20 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
zP_30 = zP_50.Info:AddRightGroupbox("Donations", "heart")
zP_30:AddLabel(pA("All donations are optional but appreciated.", qM), true)
zP_30:AddLabel(pA("If you donate you get a special role, just PING after you donate.", zP_18), true)
zP_30:AddDivider()
zP_30:AddLabel(pA("LTC / Litecoin", zP_15), true)
zP_30:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
zP_30:AddLabel(pA("BTC / Bitcoin", zP_12), true)
zP_30:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
zP_30:AddLabel(pA("ETH / Ethereum", zP_45), true)
zP_30:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
zP_30:AddLabel(pA("USDT", zP_27), true)
zP_30:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
zP_30:AddLabel(pA("Solana", zP_6), true)
zP_30:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
zP_30:AddLabel(pA("PayPal", zP_40), true)
zP_30:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
zP_30:AddLabel(pA("Venmo", zP_20), true)
zP_30:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
zP_30:AddDivider()
zP_30:AddLabel(pA("Don't have any of the listed currencies but still wanna donate?", zP_37), true)
zP_30:AddLabel(pA("DM me and we'll work something out.", zP_35), true)
local FaqGroup = zP_50.Info:AddRightGroupbox("FAQ", "circle-help")
if (not MovementGroup and not MovementGroup and (MovementGroup and p3) or MovementGroup and not p3 and (MovementGroup or p3) or (not MovementGroup and not p3 or p3 and not MovementGroup) and (not MovementGroup or not MovementGroup or (not MovementGroup or not p3))) and ((not MovementGroup or not p3 or p3 and p3) and (p3 or MovementGroup or (not p3 or not p3)) or (not p3 and MovementGroup and (not MovementGroup and MovementGroup) or (MovementGroup or p3 or MovementGroup and MovementGroup))) or not ((not MovementGroup and not MovementGroup and (MovementGroup and p3) or MovementGroup and not p3 and (MovementGroup or p3) or (not MovementGroup and not p3 or p3 and not MovementGroup) and (not MovementGroup or not MovementGroup or (not MovementGroup or not p3))) and ((not MovementGroup or not p3 or p3 and p3) and (p3 or MovementGroup or (not p3 or not p3)) or (not p3 and MovementGroup and (not MovementGroup and MovementGroup) or (MovementGroup or p3 or MovementGroup and MovementGroup)))) then
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
    FarmGroup = zP_50.Main:AddLeftGroupbox("Farm", "leaf")
else
    FarmGroup:AddLabel("Where do I get a good config?", true)
    FarmGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    FarmGroup:AddLabel("How do I import / export configs?", true)
    FarmGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    FarmGroup:AddLabel("How do I report bugs?", true)
    FarmGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
    FarmGroup:AddLabel("How do I make suggestions?", true)
    FarmGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    FarmGroup:AddLabel("How do I get help or updates?", true)
    FarmGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
    zP_50 = FaqGroup.Main:AddLeftGroupbox("Farm", "leaf")
end
FarmGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
FarmGroup:AddToggle("AutoHarvest", { Text = "Auto Harvest", Default = false })
FarmGroup:AddToggle("AutoHarvestMutation", { Text = "Auto Harvest Mutation", Default = false })
FarmGroup:AddToggle("AutoPlant", { Text = "Auto Plant", Default = false })
FarmGroup:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false })
FarmGroup:AddDropdown("PlantSeeds", { Values = qO, Default = { BlueBerry = true }, Multi = true, Text = "Seeds" })
FarmGroup:AddSlider("FarmDelay", { Text = "Farm Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
JuiceGroup = zP_50.Main:AddRightGroupbox("Juice", "cup-soda")
JuiceGroup:AddToggle("AutoBlend", { Text = "Auto Blend Juice", Default = false })
JuiceGroup:AddToggle("AutoFillCup", { Text = "Auto Fill Up Cup", Default = false })
JuiceGroup:AddToggle("AutoPlaceCup", { Text = "Auto Place Cup", Default = false })
JuiceGroup:AddToggle("AutoBuyCup", { Text = "Auto Buy Cup", Default = false })
JuiceGroup:AddToggle("AutoBuyJuice", { Text = "Auto Buy Juice", Default = false })
JuiceGroup:AddToggle("AutoAcceptOffers", { Text = "Auto Accept Offers", Default = false })
JuiceGroup:AddToggle("AutoSell", { Text = "Auto Sell Juice", Default = false })
JuiceGroup:AddDropdown("AutoSellRarity", { Values = zP_28, Default = "Common", Text = "Auto Sell Cup Rarity" })
local ClaimsGroup = zP_50.Main:AddLeftGroupbox("Claims", "gift")
ClaimsGroup:AddToggle("AutoDaily", { Text = "Auto Daily Claim", Default = false })
ClaimsGroup:AddToggle("AutoGroup", { Text = "Auto Group Reward", Default = false })
ClaimsGroup:AddToggle("AutoOffline", { Text = "Auto Offline Claim", Default = false })
ClaimsGroup:AddToggle("AutoBlade", { Text = "Auto Upgrade Blade", Default = false })
zP_16(zP_50.Rolls)
local RollsGroup = zP_50.Rolls:AddLeftGroupbox("Rolls", "dices")
RollsGroup:AddToggle("AutoRollCup", { Text = "Auto Roll Cup", Default = false })
RollsGroup:AddToggle("AutoRollCart", { Text = "Auto Roll Cart", Default = false })
RollsGroup:AddToggle("AutoBuyRolledCup", { Text = "Auto Buy Cup", Default = false })
RollsGroup:AddToggle("AutoBuyRolledCart", { Text = "Auto Buy Cart", Default = false })
RollsGroup:AddDropdown("RollBuyMode", { Values = { "Higher", "Lower" }, Default = "Higher", Text = "Buy If" })
RollsGroup:AddSlider("RollGoldMult", { Text = "Gold Mult", Default = 2, Min = 1, Max = 10, Rounding = 2 })
RollsGroup:AddSlider("RollJuiceMult", { Text = "Juice Mult", Default = 2, Min = 1, Max = 10, Rounding = 2 })
RollsGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.5, Min = 0.2, Max = 3, Rounding = 2 })
local EggsGroup = zP_50.Shop:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoBuyEgg", { Text = "Auto Buy Egg", Default = false })
EggsGroup:AddDropdown("EggId", { Values = zP_46, Default = "Common", Text = "Egg" })
local GearGroup = zP_50.Shop:AddRightGroupbox("Gear", "wrench")
GearGroup:AddToggle("AutoBuyGear", { Text = "Auto Buy Gear", Default = false })
GearGroup:AddDropdown("GearId", { Values = zP_11, Default = "SprinklerCommon", Text = "Gear" })
local UpgradesGroup = zP_50.Shop:AddLeftGroupbox("Upgrades", "arrow-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
MovementGroup = zP_50.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = zP_50.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
zP_32.OnClientEvent:Connect(onOnClientEvent)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn269)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn825)
p2 = function(ij)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not ij)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ij
        end
    end)
    if not ij then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn142)
task.spawn(fns.antiGameplayPauseLoop)
qK = fn983
Toggles.AutoSell:OnChanged(qK)
Options.AutoSellRarity:OnChanged(fns.fn624)
local MenuGroup = zP_50.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
qa = tick()
p3 = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local xZ = v
        pcall(function()
            xZ:Disable()
        end)
    end
end)
pE = fns.fn558
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn1076)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BlendFruitAndSellJuice")
zP_36 = SaveManager:BuildConfigSection(zP_50.Settings)
ThemeManager:ApplyToTab(zP_50.Settings)
ThemeManager:LoadDefault()
pY = fns.fn77
ps = fns.fn532
pb = fns.fn19
pV = function(jx)
    local yE
    yE = nil
    local yF = type(jx) ~= "table" or type(jx.idx) ~= "string" or type(jx.type) ~= "string" or SaveManager.Ignore[jx.idx]
    if yF then
        return false
    end
    yE = pY(jx.type, jx.idx)
    if not yE then
        return false
    end
    local yF_1 = pcall(function()
        if jx.type == "Input" then
            if type(jx.text) ~= "string" then
                return
            end
            yE:SetValue(jx.text)
        elseif jx.type == "ColorPicker" then
            yE:SetValueRGB(Color3.fromHex(jx.value), jx.transparency)
        elseif jx.type == "KeyPicker" then
            yE:SetValue({ jx.key, jx.mode, jx.modifiers })
            if jx.mode == "Toggle" and jx.toggled ~= nil then
                yE.Toggled = jx.toggled
                yE:Update()
            end
        else
            yE:SetValue(jx.value)
        end
    end)
    return yF_1
end
zP_36:AddDivider()
zP_36:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
zP_36:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
zP_36:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
