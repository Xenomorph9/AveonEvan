local fns = {}
local wd_2, GameInfoGroup, wd_7, wd_9, wd_11, wd_13, wd_15, wd_26, wd_29, wd_32, wd_34, wd_44, wd_47
local ol
local o4
local n1
local connection
local nJ
local ot
local n7
local LocalPlayer
local nw
local od
local RebirthConfig
local nV
local Workspace
local Label
local oj
local o3
local n0
local CoreGui
local nI
local oq
local n6
local oR
local nO
local oy
local oc
local oX
local nU
local oE
local nB
local oi
local UserInputService
local n_
local oK
local nH
local op
local o8
local RequestTrain
local oQ
local nN
local ox
local ob
local oW
local nT
local CollectionService
local nA
local o1
local nZ
local oJ
local nG
local oo
local o7
local n4
local oP
local nM
local ow
local oa
local oV
local nS
local oC
local nz
local connection3
local nY
local oI
local connection2
local o6
local n3
local ov
local n9
local oU
local nR
local oB
local ny
local connection4
local o_
local connection5
local oH
local nE
local Options
local o5
local n2
local Id
local nK
local ou
local n8
local oT
local nQ
local oA
local oe
local oZ
local RequestAttack
function fns.fn22(dE)
    local sF = dE and dE.Wins
    local sG = op(sF)
    local sF_1 = nil
    for i, v in ipairs(oQ) do
        local sH = not nS(dE, v.Id) and v.UnlockCost > 0 and sG >= v.UnlockCost
        if sH then
            if not sF_1 or v.Id < sF_1.Id then
                sF_1 = v
            end
        end
    end
    return sF_1
end
function fns.fn34()
    local s8 = oV("HatchEggSelect") or oA[1]
    local s9 = tostring(s8)
    return ou[s9]
end
function fns.onCopyEthereumAddress()
    n7(ot, "Copied Ethereum address")
end
function fns.antiAfkLoop()
    while not oU.Unloaded do
        task.wait(2)
        if oq.AntiAfk.Value then
            local vj = tick() - o4
            local vk = tick() - o1
            if vj >= 300 and vk >= 60 then
                pcall(oE)
            else
                if vj < 300 and vk >= 300 then
                    pcall(oE)
                end
            end
        end
    end
end
function fns.worker7()
    while not oU.Unloaded do
        if nE("AutoHatchEggs") then
            pcall(oe)
            task.wait(oC("HatchDelay", 0.5))
        else
            if Id then
                oK(Id, false)
                Id = nil
            end
            task.wait(0.25)
        end
    end
end
function fns.fn113(ez)
    local th_1
    local tg_1
    th_1, tg_1 = oI(ez)
    if not th_1 then
        return
    end
    if tg_1 then
        n1(tg_1)
        task.wait(0.08)
    end
    n1(th_1)
end
function fns.onStepped()
    if oU.Unloaded then
        return
    end
    if oq.NoClip and oq.NoClip.Value then
        local uy_1 = n9()
        if uy_1 then
            for i, descendant in ipairs(uy_1:GetDescendants()) do
                local uy_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uy_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn137(aq, ar)
    local qt = ou[aq]
    local qu = ou[ar]
    return (qt and qt.Cost or 0) < (qu and qu.Cost or 0)
end
function fns.fn157()
    pcall(function()
        RequestAttack:FireServer()
    end)
    pcall(function()
        n_:FireServer()
    end)
end
function fns.worker4()
    while not oU.Unloaded do
        local uo = nE("AutoTrain") and not nE("AutoWin")
        if uo then
            pcall(nB)
            task.wait(oC("TrainDelay", 0.05))
        else
            task.wait(0.2)
        end
    end
end
function fns.onImportConfigFromClipboardTex()
    local vZ_1
    local vX = Options.SaveManager_ImportSource.Value
    local vX_1
    local v2 = if vX then 1 else 0
    local v0 = 323 * v2 + 2968 * (1 - v2)
    local v1 = 186 * v2 + 620 * (1 - v2)
    if not ((v0 * 281 + v1 * 3584 + v0 * v1) % 16777213 == 817465) then
        vX = ""
    end
    local vY = tostring(vX):match("^%s*(.-)%s*$")
    if vY == "" then
        oU:Notify("Paste an exported config into the box first")
        return
    end
    vX_1, vZ_1 = pcall(oR.JSONDecode, oR, vY)
    local vY_1 = not vX_1 or type(vZ_1) ~= "table" or type(vZ_1.objects) ~= "table"
    if vY_1 then
        oU:Notify("That config could not be read")
        return
    end
    local vX_2 = 0
    for i, v in ipairs(vZ_1.objects) do
        if oa(v) then
            vX_2 += 1
        end
    end
    if vX_2 == 0 then
        oU:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local vZ_2 = vX_2 == 1 and "" or "s"
    oU:Notify(("Imported %d setting%s"):format(vX_2, vZ_2), 6)
end
function fns.fn193()
    local vz = {}
    for i, v in ipairs({ oq, Options }) do
        for k, v in pairs(v) do
            local vA = type(v) == "table" and type(v.Type) == "string" and not ow.Ignore[k]
            if vA then
                local vA_1 = nM(k, v)
                if vA_1 then
                    vz[#vz + 1] = vA_1
                end
            end
        end
    end
    table.sort(vz, function(jB, jC)
        if jB.type ~= jC.type then
            return jB.type < jC.type
        end
        return jB.idx < jC.idx
    end)
    return { objects = vz }
end
function fns.antiGameplayPauseLoop()
    while not oU.Unloaded do
        task.wait(1)
        if oq.AntiGameplayPause.Value then
            oy(true)
        end
    end
end
function fns.fn230(df)
    local si = tonumber(df)
    local sj
    local Map = Workspace:FindFirstChild("Map")
    for i, v in ipairs(CollectionService:GetTagged("ItemStand")) do
        if tonumber(v:GetAttribute("ItemId")) == si then
            local sl = Map and v:IsDescendantOf(Map)
            if sl then
                return v
            end
            sj = sj or v
        end
    end
    return sj
end
function fns.onJumpRequest()
    if oU.Unloaded then
        return
    end
    if oq.InfJump and oq.InfJump.Value then
        local uG_1 = n3()
        if uG_1 then
            uG_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn237(jp, jq)
    local Type = jq.Type
    if Type == "Toggle" then
        return { idx = jp, type = "Toggle", value = jq.Value == true }
    elseif Type == "Slider" then
        return { idx = jp, type = "Slider", value = tostring(jq.Value) }
    elseif Type == "Dropdown" then
        return { idx = jp, type = "Dropdown", multi = jq.Multi == true, value = jq.Value }
    elseif Type == "Input" then
        local vw = jq.Value or ""
        return { idx = jp, type = "Input", text = tostring(vw) }
    elseif Type == "ColorPicker" then
        return { idx = jp, type = "ColorPicker", value = jq.Value:ToHex(), transparency = jq.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = jp,
            type = "KeyPicker",
            mode = jq.Mode,
            key = jq.Value,
            modifiers = jq.Modifiers,
            toggled = jq.Toggled
        }
    else
        return nil
    end
end
function fns.onCopyUSDTAddress()
    n7(oo, "Copied USDT address")
end
function fns.onCopyVenmoLink()
    n7(n8, "Copied Venmo link")
end
function fns.fn257(aO, aP)
    if setclipboard then
        setclipboard(aO)
    elseif toclipboard then
        toclipboard(aO)
    end
    oU:Notify(aP)
end
function fns.fn275(jh, ji)
    local vp_1 = (jh == "Toggle" and oq or Options)[ji]
    local vo_2 = type(vp_1) == "table" and vp_1.Type == jh
    return vo_2 and vp_1 or nil
end
function fns.fn278()
    local qU = n9()
    local qV = qU and qU:FindFirstChildOfClass("Humanoid")
    return qV
end
function fns.worker3()
    while not oU.Unloaded do
        if nE("AutoClick") then
            pcall(nU)
            task.wait(oC("ClickDelay", 0.05))
        else
            task.wait(0.2)
        end
    end
end
function fns.onCopyPayPalLink()
    n7(od, "Copied PayPal link")
end
function fns.worker5()
    while not oU.Unloaded do
        if nE("AutoBuyHeroes") then
            pcall(oc)
            task.wait(oC("BuyHeroDelay", 0.5))
        else
            task.wait(0.25)
        end
    end
end
function fns.fn306(c_)
    local rZ = oV("TrainZone") or "Best Available"
    local r_ = tostring(rZ)
    if r_ ~= "Best Available" then
        return nT[r_] or 1
    end
    local rZ_2 = c_ and c_.Rebirths
    local r__1 = (tonumber(rZ_2))
    local r5 = if r__1 then 1 else 0
    local r3 = 2879 * r5 + 2024 * (1 - r5)
    local r4 = 3456 * r5 + 1058 * (1 - r5)
    if not ((r3 * 2186 + r4 * 1695 + r3 * r4) % 16777213 == 5324025) then
        r__1 = 0
    end
    local rZ_3 = -1
    local r0 = 1
    local r1 = r__1
    for i, v in ipairs(nQ) do
        if v.RebirthRequirement > 0 and v.RebirthRequirement <= r1 and v.Multiplier >= rZ_3 then
            rZ_3 = v.Multiplier
            r0 = v.Id
        end
    end
    if rZ_3 < 0 then
        for i, v in ipairs(nQ) do
            if v.RebirthRequirement == 0 and v.Multiplier >= rZ_3 and v.Multiplier <= 1 then
                rZ_3 = v.Multiplier
                r0 = v.Id
            end
        end
    end
    return r0
end
function fns.fn312()
    if not oq.WalkSpeedEnabled.Value then
        local uY = n3()
        if uY then
            uY.WalkSpeed = 16
        end
    end
end
function fns.fn316(cQ)
    local rN = nO()
    if not rN or not cQ then
        return false
    end
    rN.AssemblyLinearVelocity = Vector3.zero
    rN.AssemblyAngularVelocity = Vector3.zero
    rN.CFrame = cQ.CFrame + Vector3.new(0, 3, 0)
    return true
end
function fns.onCopyJoinScript_JobID()
    local gE = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nz)
    n7(gE, "Copied join script to clipboard")
end
function fns.fn335()
    local tR = o5(true)
    if not tR then
        return
    end
    local tS = nZ(tR)
    if not tS then
        return
    end
    local tR_1 = nY(tS.Id)
    if not tR_1 then
        return
    end
    o_(tR_1)
    o5(true)
end
function fns.fn339(ce, cf, cg)
    local rj = not ce
    local ro = if rj then 1 else 0
    local rm = 2831 * ro + 672 * (1 - ro)
    local rn = 771 * ro + 3212 * (1 - ro)
    if not ((rm * 137 + rn * 1305 + rm * rn) % 16777213 == 3576703) then
        rj = type(ce.CompletedStages) ~= "table"
    end
    if rj then
        return false
    end
    local rj_1 = ce.CompletedStages[cf] or ce.CompletedStages[tostring(cf)]
    if type(rj_1) ~= "table" then
        return false
    end
    local rj_2 = rj_1[cg] == true or rj_1[tostring(cg)] == true
    return rj_2
end
function fns.fn346()
    if not oq.AutoHatchEggs.Value and Id then
        oK(Id, false)
        Id = nil
    end
end
function fns.worker()
    local uk_1
    while true do
        task.wait(1)
        if oU.Unloaded then
            break
        end
        local uj = math.floor(os.clock() - oP)
        if uj < 60 then
            uk_1 = uj .. "s"
        elseif uj < 3600 then
            uk_1 = string.format("%dm %ds", uj // 60, uj % 60)
        else
            uk_1 = string.format("%dh %dm", uj // 3600, uj % 3600 // 60)
        end
        Label:SetText(o8("Session time", uk_1, oJ))
    end
end
function fns.fn371(bv, bw)
    local qO = Options[bv]
    if qO and qO.Value ~= nil then
        local qP_1 = tonumber(qO.Value) or bw
        return qP_1
    end
    return bw
end
function fns.fn396()
    local rp = oV("WinStage") or nH[1]
    local rq = tostring(rp)
    local rp_1 = tonumber(string.match(rq, "Stage (%d+)")) or 1
    return rp_1
end
function fns.fn397()
    local uc_1
    local ub_1
    if identifyexecutor then
        uc_1, ub_1 = identifyexecutor()
        local ud = uc_1 ~= ""
        local ue = type(uc_1) == "string" and ud
        if ue then
            local ud_1 = type(ub_1) == "string" and ub_1 ~= "" and uc_1 .. " " .. ub_1
            local ub_2 = ud_1
            local ui = if ub_2 then 1 else 0
            local ug = 57 * ui + 1959 * (1 - ui)
            local uh = 2642 * ui + 1199 * (1 - ui)
            if not ((ug * 3969 + uh * 3375 + ug * uh) % 16777213 == 9293577) then
                ub_2 = uc_1
            end
            n4 = ub_2
        end
    end
end
function fns.fn408(bN)
    local q3_1
    local q2 = not bN
    local q2_1
    if q2 ~= false then
        q2 = nw
    end
    if q2 then
        q2 = os.clock() - o6 < 0.35
    end
    if q2 then
        return nw
    end
    q2_1, q3_1 = pcall(function()
        return n6:InvokeServer()
    end)
    local q4 = q2_1 and type(q3_1) == "table"
    if q4 then
        nw = q3_1
        o6 = os.clock()
        return q3_1
    end
    return nw
end
function fns.fn421(b9)
    for i, v in ipairs(CollectionService:GetTagged("Stage")) do
        if tonumber(v:GetAttribute("Stage")) == b9 then
            return v
        end
    end
    return nil
end
function fns.fn449()
    if not oq.Fly.Value then
        local uW = n3()
        if uW then
            uW.PlatformStand = false
        end
    end
end
function fns.fn452(gn)
    local DiscordGroup = gn:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nV })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nV })
end
function fns.worker6()
    while not oU.Unloaded do
        if nE("AutoRebirth") then
            pcall(nJ)
            task.wait(oC("RebirthDelay", 1))
        else
            task.wait(0.25)
        end
    end
end
function fns.onUnload()
    oU:Unload()
end
local function fn507(O, P)
    return O.Id < P.Id
end
local function fn514()
    local qy_1
    local qx_1
    if typeof(gethui) == "function" then
        qx_1, qy_1 = pcall(gethui)
        if qx_1 and qy_1 then
            return qy_1
        end
        return CoreGui
    end
    return CoreGui
end
local function fn518()
    if Id then
        oK(Id, false)
        Id = nil
    end
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    oy(false)
    print("Unloaded!")
end
local function fn528(cr, cs)
    local rs = {}
    for i, v in ipairs(CollectionService:GetTagged("Stage")) do
        local rt = tonumber(v:GetAttribute("Stage"))
        local ru = tonumber(v:GetAttribute("World"))
        if rt and ru and rt <= cs then
            table.insert(rs, { Folder = v, Stage = rt, World = ru })
        end
    end
    table.sort(rs, function(cA, cB)
        return cA.Stage < cB.Stage
    end)
    for i, v in ipairs(rs) do
        if not oT(cr, v.World, v.Stage) then
            return v
        end
    end
    return nil
end
local function fn529()
    local qB = nA()
    if syn and syn.protect_gui then
        syn.protect_gui(oU.ScreenGui)
    elseif protect_gui then
        protect_gui(oU.ScreenGui)
    end
    oU.ScreenGui.Parent = qB
end
local function fn561(Q, R)
    local qi = (tonumber(string.match(Q, "^(%d+)")))
    local qo = if qi then 1 else 0
    local qm = 12 * qo + 2767 * (1 - qo)
    local qn = 1896 * qo + 353 * (1 - qo)
    if not ((qm * 2883 + qn * 2359 + qm * qn) % 16777213 == 4530012) then
        qi = 0
    end
    local qj = qi
    local qi_1 = tonumber(string.match(R, "^(%d+)")) or 0
    return qj < qi_1
end
local function fn573(ag, ah)
    if ag == "Best Available" then
        return true
    elseif ah == "Best Available" then
        return false
    else
        local qp = tonumber(string.match(ag, "Zone (%d+)")) or 0
        local qp_1 = tonumber(string.match(ah, "Zone (%d+)")) or 0
        return qp < qp_1
    end
end
local function onExportConfigToClipboard()
    local vU_1
    local vT_1
    vT_1, vU_1 = pcall(oR.JSONEncode, oR, o7())
    if not vT_1 then
        oU:Notify("Failed to encode the config")
        return
    end
    local vT_2 = setclipboard or toclipboard
    local vT_3 = type(vT_2) ~= "function" or not pcall(vT_2, vU_1)
    if vT_3 then
        oU:Notify("Your executor does not support copying to the clipboard")
        return
    end
    oU:Notify("Config copied to clipboard", 6)
end
local function fn595()
    return LocalPlayer.Character
end
local function fn621()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    oX:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    oX:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    o1 = tick()
end
local function onCopyLitecoinAddress()
    n7(oB, "Copied Litecoin address")
end
local function onCopySolanaAddress()
    n7(oj, "Copied Solana address")
end
local function fn693()
    n7(oi, "Copied Discord invite to clipboard")
end
local function fn697()
    local q_ = n9()
    local q0 = q_ and q_:FindFirstChild("HumanoidRootPart")
    return q0
end
local function fn698(d3)
    local s_ = oV("BuyHeroMode") or "Next Affordable"
    local s0 = tostring(s_)
    if s0 == "Best Affordable" then
        return oW(d3)
    elseif s0 == "Selected Hero" then
        local s__1 = oV("BuyHeroSelect") or ""
        local s0_1 = tostring(s__1)
        local s__2 = oH[s0_1]
        if not s__2 then
            return nil
        end
        for i, v in ipairs(oQ) do
            if v.Id == s__2 then
                if nS(d3, v.Id) then
                    return nil
                end
                local s0_2 = d3 and d3.Wins
                if op(s0_2) >= v.UnlockCost then
                    return v
                end
                return nil
            end
        end
        return nil
    else
        return n2(d3)
    end
end
local function fn700()
    local tI = o5()
    if not tI then
        return
    end
    local tJ = o3(tI)
    local tI_1 = nN(tJ) or nN(1)
    if not tI_1 then
        return
    end
    local Hitbox = tI_1:FindFirstChild("Hitbox")
    if Hitbox then
        n1(Hitbox)
    else
        local BasePart = tI_1:FindFirstChildWhichIsA("BasePart", true)
        if BasePart then
            n1(BasePart)
        end
    end
    pcall(function()
        RequestTrain:FireServer()
    end)
    pcall(function()
        n_:FireServer()
    end)
end
local function onCopyBitcoinAddress()
    n7(ox, "Copied Bitcoin address")
end
local function fn719(aY, aZ, a_)
    return string.format("<b>%s</b> %s %s", aY, nK("-", "#5a6070"), nK(aZ, a_))
end
local function fn722(bk)
    if oU.Unloaded then
        return false
    end
    local qF = oq[bk]
    return qF ~= nil and qF.Value == true
end
local function onInputBegan()
    o4 = tick()
end
local function fn733()
    local tE = o5(true)
    if not tE then
        return
    end
    local tF = ol()
    local tG = n0(tE, tF)
    if tG then
        oZ(tG)
        return
    end
    nG(tF)
end
local function fn748()
    local tU = o5(true)
    if not tU then
        return
    end
    local tV = tonumber(tU.Rebirths) or 0
    local tV_1 = RebirthConfig.getThreshold(tV)
    local tW_1 = tonumber(tU.Level) or 0
    if tW_1 < tV_1 then
        return
    end
    pcall(function()
        nR:InvokeServer()
    end)
    o5(true)
end
local function fn753(bq)
    local qL = Options[bq]
    return qL and qL.Value or nil
end
local function fn764(cU)
    local rR = tostring(cU)
    for i, v in ipairs(CollectionService:GetTagged("TrainingZone")) do
        if tostring(v:GetAttribute("ZoneId")) == rR then
            return v
        end
    end
    return nil
end
local function onRenderStepped(hZ)
    if oU.Unloaded then
        return
    end
    nI = Workspace.CurrentCamera
    if oq.WalkSpeedEnabled and oq.WalkSpeedEnabled.Value then
        local uL_1 = n3()
        if uL_1 then
            uL_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if oq.Fly and oq.Fly.Value then
        local uL_3 = nO()
        local uM = n3()
        if uL_3 and uM and nI then
            uM.PlatformStand = true
            local uM_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                uM_1 += nI.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                uM_1 -= nI.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                uM_1 -= nI.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                uM_1 += nI.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                uM_1 += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                uM_1 -= Vector3.new(0, 1, 0)
            end
            uL_3.AssemblyLinearVelocity = Vector3.zero
            if uM_1.Magnitude > 0 then
                uL_3.CFrame = uL_3.CFrame + uM_1.Unit * Options.FlySpeed.Value * hZ
            end
        end
    end
end
local function onRscripts()
    n7(ob, "Copied Rscripts profile to clipboard")
end
local function onInputChanged(iT)
    local UserInputType = iT.UserInputType
    local ve = UserInputType == Enum.UserInputType.MouseMovement
    local vi = if ve then 1 else 0
    local vg = 1261 * vi + 2782 * (1 - vi)
    local vh = 44 * vi + 3319 * (1 - vi)
    if not ((vg * 776 + vh * 3272 + vg * vh) % 16777213 == 1177988) then
        ve = UserInputType == Enum.UserInputType.Gamepad1
    end
    if ve then
        o4 = tick()
    end
end
local function fn799(b4, b5)
    if not b4 or not b4.UnlockedItems then
        return false
    end
    local ra_1 = b4.UnlockedItems[tostring(b5)] == true or b4.UnlockedItems[b5] == true
    return ra_1
end
local function fn810()
    oy(oq.AntiGameplayPause.Value)
end
local function fn812(aV, aW)
    return string.format('<font color="%s">%s</font>', aW, aV)
end
local function worker2()
    while not oU.Unloaded do
        if nE("AutoWin") then
            pcall(ov)
            task.wait(oC("WinDelay", 0.35))
        else
            task.wait(0.2)
        end
    end
end
local function fn858(dQ)
    local sP = dQ and dQ.Wins
    local sQ = op(sP)
    local sP_1 = nil
    for i, v in ipairs(oQ) do
        local sR = not nS(dQ, v.Id) and v.UnlockCost > 0 and sQ >= v.UnlockCost
        if sR then
            if not sP_1 or v.Gain > sP_1.Gain or v.Gain == sP_1.Gain and v.Id > sP_1.Id then
                sP_1 = v
            end
        end
    end
    return sP_1
end
local function fn969(ae, af)
    return ae.Id < af.Id
end
local function fn987(cG)
    local rJ = ny(cG)
    if not rJ then
        return nil, nil
    end
    local Pad = rJ:FindFirstChild("Pad")
    local rL = Pad and Pad:FindFirstChild("Free")
    local rK_1 = rL
    if rL then
        rL = rK_1:FindFirstChild("Pad")
    end
    local rK_2 = rL
    local Spawn = rJ:FindFirstChild("Spawn")
    return rK_2, Spawn
end
nw = nil
ny = nil
nz = nil
nA = nil
nB = nil
Label = nil
nE = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
nM = nil
nN = nil
nO = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
nV = nil
RequestAttack = nil
connection5 = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
n4 = nil
RequestTrain = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
connection4 = nil
oi = nil
local AlyaNum, AutoHatch, HatchEgg, nL, nP, og, oh
oj = nil
ol = nil
Options = nil
connection2 = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
ov = nil
ow = nil
ox = nil
oy = nil
LocalPlayer = nil
oA = nil
oB = nil
oC = nil
CollectionService = nil
oE = nil
Workspace = nil
oH = nil
oI = nil
oJ = nil
oK = nil
CoreGui = nil
connection = nil
Id = nil
oP = nil
oQ = nil
oR = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
RebirthConfig = nil
oZ = nil
o_ = nil
connection3 = nil
o1 = nil
UserInputService = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
o8 = nil
local oG, GuiService, oS
UserInputService, oX, oR, GuiService, CoreGui, Workspace, CollectionService, LocalPlayer = nil, nil, nil, nil, nil, nil, nil, nil
local wd_21 = game:GetService("Players")
local wd_39 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if (not Workspace or not CoreGui or (wd_39 or CoreGui)) and ((wd_39 or Workspace) and (not wd_39 or not wd_39)) and not ((not Workspace or not CoreGui or (wd_39 or CoreGui)) and ((wd_39 or Workspace) and (not wd_39 or not wd_39))) then
    oR = game:GetService("VirtualUser")
    oX = game:GetService("HttpService")
else
    oX = game:GetService("VirtualUser")
    oR = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = wd_21.LocalPlayer
if setthreadidentity then
    setthreadidentity(8)
end
wd_13, wd_26, wd_9, wd_7, wd_21, n6, RequestTrain, n_, RequestAttack, nR, nP, nL, HatchEgg, AutoHatch, AlyaNum, wd_11, wd_44, wd_29, RebirthConfig, oS, oQ, wd_47, oH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wd_41 = 6
repeat
    wd_32 = (wd_41 * 11 + 5) % 14 + 1
    if wd_32 <= 7 then
        if wd_32 <= 4 then
            if wd_32 <= 2 then
                if wd_32 <= 1 then
                    if (wd_41 * 2 + 1) * 4 % 3 == ((wd_41 * 2 + 1) * 4 + 2) % 3 then
                        wd_47 = require(oH:WaitForChild("Client"):WaitForChild("EnemyRenderController"))
                        oS = {}
                        wd_39 = {}
                        oQ = {}
                    else
                        oS = require(wd_39:WaitForChild("Client"):WaitForChild("EnemyRenderController"))
                        oQ = {}
                        wd_47 = {}
                        oH = {}
                    end
                    wd_41 = (wd_41 + 23) % 112
                else
                    wd_15 = (vector.create((wd_41 * 1 + 6) % 11 + 1, (wd_41 * 4 + 9) % 13 + 1, (wd_41 * 8 + 16) % 17 + 1))
                    wd_2 = (vector.create((wd_41 * 4 + 3) % 11 + 1, (wd_41 * 5 + 1) % 13 + 1, (wd_41 * 2 + 10) % 17 + 1))
                    wd_34 = (vector.create((wd_41 * 2 + 3) % 5 + 1, (wd_41 * 3 + 5) % 7 + 1, (wd_41 * 5 + 4) % 9 + 1))
                    if math.abs((vector.angle(wd_15, wd_2, wd_34))) - math.abs((vector.angle(wd_2, wd_15, wd_34))) == 0 then
                        wd_13 = "+1 Superhero Evolution"
                    else
                        nR = "+1 Superhero Evolution"
                    end
                    wd_41 = (wd_41 + 93) % 112
                end
            elseif wd_32 <= 3 then
                local xF = bit32.rrotate(bit32.bxor(bit32.lrotate(wd_41, 19), string.byte(tostring(wd_11))), 6)
                if bit32.bxor(bit32.lrotate(bit32.bxor(xF, 3728454767), 26), 3212373713) == bit32.lrotate(xF, 26) then
                    wd_26 = wd_39:WaitForChild("Shared")
                else
                    wd_39 = wd_26:WaitForChild("Shared")
                end
                wd_41 = (wd_41 + 51) % 112
            else
                if (wd_41 * 3 + 3) * 9 % 4 == ((wd_41 * 3 + 3) * 9 + 8) % 4 then
                    wd_9 = wd_26:WaitForChild("Remotes")
                else
                    wd_26 = wd_9:WaitForChild("Remotes")
                end
                wd_41 = (wd_41 + 37) % 112
            end
        elseif wd_32 <= 6 then
            if wd_32 <= 5 then
                wd_15 = {
                    "daxsmhcxg",
                    "meltmvoo",
                    "kazrryxxi",
                    "bsxz",
                    "koujz",
                    "ekzpcl",
                    "raazv",
                    "azpnhpf",
                    "nxokjpv",
                    "ceq",
                    "nmf"
                }
                local w0 = wd_41
                wd_2 = wd_15[w0 % 11 + 1]
                if wd_2:len() <= wd_2:gsub("(.)", "%1%1", w0 % 3 % 2 + 1):len() then
                    wd_7 = wd_26:WaitForChild("Config")
                else
                    wd_26 = wd_7:WaitForChild("Config")
                end
                wd_41 = (wd_41 + 51) % 112
            else
                wd_15 = (vector.create((wd_41 * 7 + 7) % 11 + 1, (wd_41 * 9 + 6) % 13 + 1, (wd_41 * 4 + 3) % 17 + 1))
                wd_2 = (vector.create((wd_41 * 2 + 1) % 11 + 1, (wd_41 * 8 + 10) % 13 + 1, (wd_41 * 12 + 8) % 17 + 1))
                wd_34 = (vector.create((wd_41 * 4 + 1) % 5 + 1, (wd_41 * 5 + 3) % 7 + 1, (wd_41 * 3 + 6) % 9 + 1))
                if math.abs((vector.angle(wd_15, wd_2, wd_34))) - math.abs((vector.angle(wd_2, wd_15, wd_34))) == 4 then
                    wd_39 = wd_21:WaitForChild("Packages")
                else
                    wd_21 = wd_39:WaitForChild("Packages")
                end
                wd_41 = (wd_41 + 65) % 112
            end
        else
            if wd_41 * 48259305 + 12 + 3 <= wd_41 * 48259305 + 12 + 3 + 1 then
                n6 = wd_9:WaitForChild("GetData")
                RequestTrain = wd_9:WaitForChild("RequestTrain")
            else
                wd_9 = RequestTrain:WaitForChild("GetData")
                n6 = RequestTrain:WaitForChild("RequestTrain")
            end
            wd_41 = (wd_41 + 51) % 112
        end
    elseif wd_32 <= 11 then
        if wd_32 <= 9 then
            if wd_32 <= 8 then
                local wP = bit32.rrotate(bit32.bxor(bit32.lrotate(wd_41, 24), string.byte(tostring(nR))), 5)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wP, 3792898837), 484600770), (bit32.bxor(bit32.band(wP, 502068458), 4183923698))), 484600770), 4183923698) == wP then
                    n_ = wd_9:WaitForChild("PlayerClick")
                    RequestAttack = wd_9:WaitForChild("RequestAttack")
                else
                    wd_9 = RequestAttack:WaitForChild("PlayerClick")
                    n_ = RequestAttack:WaitForChild("RequestAttack")
                end
                wd_41 = (wd_41 + 107) % 112
            else
                if (not oH and wd_44 and (wd_44 or wd_44) and ((not AutoHatch or not wd_9) and (not oH or AutoHatch)) or (not wd_44 or wd_44 or (wd_44 or wd_26)) and (not AutoHatch and AutoHatch and (not nL and oH)) or (wd_26 and not wd_9 or (wd_26 or not wd_44) or (not oH or not wd_26 or nL and not wd_44)) and (not nL or wd_26 or wd_9 and not wd_44 or wd_9 and not oH and (wd_26 and AutoHatch))) and not (not oH and wd_44 and (wd_44 or wd_44) and ((not AutoHatch or not wd_9) and (not oH or AutoHatch)) or (not wd_44 or wd_44 or (wd_44 or wd_26)) and (not AutoHatch and AutoHatch and (not nL and oH)) or (wd_26 and not wd_9 or (wd_26 or not wd_44) or (not oH or not wd_26 or nL and not wd_44)) and (not nL or wd_26 or wd_9 and not wd_44 or wd_9 and not oH and (wd_26 and AutoHatch))) then
                    nL = HatchEgg:WaitForChild("RequestRebirth")
                    nR = HatchEgg:WaitForChild("RequestWorldChange")
                    wd_9 = HatchEgg:WaitForChild("TryPurchaseEgg")
                    nP = HatchEgg:WaitForChild("HatchEgg")
                else
                    nR = wd_9:WaitForChild("RequestRebirth")
                    nP = wd_9:WaitForChild("RequestWorldChange")
                    nL = wd_9:WaitForChild("TryPurchaseEgg")
                    HatchEgg = wd_9:WaitForChild("HatchEgg")
                end
                wd_41 = (wd_41 + 23) % 112
            end
        elseif wd_32 <= 10 then
            if (wd_41 * 2 + 7) * 13 % 3 == ((wd_41 * 2 + 7) * 13 + 8) % 3 then
                wd_9 = AlyaNum:WaitForChild("AutoHatch")
                wd_21 = require(AutoHatch:WaitForChild("AlyaNum"))
            else
                AutoHatch = wd_9:WaitForChild("AutoHatch")
                AlyaNum = require(wd_21:WaitForChild("AlyaNum"))
            end
            wd_41 = (wd_41 + 37) % 112
        else
            local xv = bit32.rrotate(bit32.bxor(bit32.lrotate(wd_41, 6), string.byte(tostring(wd_44))), 5)
            if bit32.bxor(bit32.lrotate(bit32.bxor(xv, 3905732465), 26), 3349361405) == bit32.lrotate(xv, 26) then
                wd_11 = require(wd_7:WaitForChild("ItemConfig"))
            else
                wd_7 = require(wd_11:WaitForChild("ItemConfig"))
            end
            wd_41 = (wd_41 + 79) % 112
        end
    elseif wd_32 <= 13 then
        if wd_32 <= 12 then
            wd_32 = {
                "ysozo",
                "fuo",
                "lpqecrgmet",
                "pzknb",
                "ewqhunxok",
                "oiqojd",
                "nvcdmelhd",
                "ylngc",
                "oksirjzc",
                "dbuqoyeoi",
                "tojgwtgnk",
                "rblkozcipah",
                "cpqbomjqegpw",
                "mgaafomvc",
                "xvh",
                "frkwz"
            }
            if wd_32[(wd_41 * 61 + 76) % 16 + 1] < wd_32[(wd_41 * 61 + 76) % 16 + 1] then
                wd_7 = require(wd_44:WaitForChild("ZoneConfig"))
            else
                wd_44 = require(wd_7:WaitForChild("ZoneConfig"))
            end
            wd_41 = (wd_41 + 37) % 112
        else
            wd_32 = {
                "bvhulpbtu",
                "tuocnpakicb",
                "fdtznyf",
                "yxkkyy",
                "buakbw",
                "mbpa",
                "ojktowuzlx",
                "xpfn",
                "sztpgtfwfno"
            }
            local xG = wd_41
            wd_15 = wd_32[xG % 9 + 1]
            if wd_15:len() >= wd_15:reverse():rep(xG % 3 + 2):len() then
                wd_7 = require(wd_29:WaitForChild("EggsConfig"))
            else
                wd_29 = require(wd_7:WaitForChild("EggsConfig"))
            end
            wd_41 = (wd_41 + 107) % 112
        end
    else
        if (wd_41 * 2 + 5) * 4 % 3 == ((wd_41 * 2 + 5) * 4 + 8) % 3 then
            wd_7 = require(RebirthConfig:WaitForChild("RebirthConfig"))
        else
            RebirthConfig = require(wd_7:WaitForChild("RebirthConfig"))
        end
        wd_41 = (wd_41 + 23) % 112
    end
until (wd_41 * 95 + 29) % 112 == 39
for k, v in pairs(wd_11) do
    wd_21 = type(k) == "number" and k < 100 and type(v) == "table" and not v.ProductId and not v.LimitedStockId
    if wd_21 then
        wd_21 = string.format
        wd_7 = tostring(v.Name)
        wd_39 = v.UnlockCost or 0
        wd_9 = wd_21("%d. %s (%s)", k, wd_7, tostring(wd_39))
        wd_21 = table.insert
        wd_7 = v.Name
        wd_39 = tonumber(v.UnlockCost) or 0
        wd_41 = tonumber(v.Gain) or 0
        wd_21(oQ, { Id = k, Name = wd_7, UnlockCost = wd_39, Gain = wd_41, Label = wd_9 })
        table.insert(wd_47, wd_9)
        oH[wd_9] = k
    end
end
wd_7, nT, nQ = nil, nil, nil
wd_21 = 0
repeat
    if wd_21 * 16605379 + 8 + 3 >= wd_21 * 16605379 + 8 + 3 + 1 then
        table.sort(nT, fn507)
        table.sort(wd_7, fn561)
        oQ = { "Best Available" }
        nQ = {}
        wd_47 = {}
    else
        table.sort(oQ, fn507)
        table.sort(wd_47, fn561)
        wd_7 = { "Best Available" }
        nT = {}
        nQ = {}
    end
    wd_21 = (wd_21 + 3) % 4
until (wd_21 * 1 + 3) % 4 == 2
for k, v in pairs(wd_44) do
    wd_21 = tonumber(k)
    wd_39 = wd_21 and type(v) == "table"
    if wd_39 then
        wd_39 = tonumber(v.Multiplier) or 1
        wd_9 = wd_39
        wd_39 = tonumber(v.RebirthRequirement) or 0
        wd_41 = wd_39
        wd_39 = string.format("Zone %d (%sx)", wd_21, tostring(wd_9))
        table.insert(nQ, { Id = wd_21, Multiplier = wd_9, RebirthRequirement = wd_41, Label = wd_39 })
        table.insert(wd_7, wd_39)
        nT[wd_39] = wd_21
    end
end
oA, ou = nil, nil
wd_9 = 0
repeat
    if (not wd_9 and oA or (not ou or not wd_9)) and (ou or not ou or (not wd_9 or wd_9)) and ((oA and not ou or (oA or not oA)) and (not wd_9 or not ou or (wd_9 or not oA))) or not ((not wd_9 and oA or (not ou or not wd_9)) and (ou or not ou or (not wd_9 or wd_9)) and ((oA and not ou or (oA or not oA)) and (not wd_9 or not ou or (wd_9 or not oA)))) then
        table.sort(nQ, fn969)
        table.sort(wd_7, fn573)
        oA = {}
        ou = {}
    else
        table.sort(ou, fn969)
        table.sort(nQ, fn573)
        wd_7 = {}
        oA = {}
    end
    wd_9 = (wd_9 + 0) % 4
until (wd_9 * 1 + 0) % 4 == 0
for k, v in pairs(wd_29) do
    wd_21 = type(v) == "table" and v.Currency == "Wins" and v.Cost
    if wd_21 then
        wd_21 = string.format("%s (%s Wins)", tostring(v.Name), tostring(v.Cost))
        table.insert(oA, wd_21)
        wd_39 = tonumber(v.Cost) or 0
        ou[wd_21] = { Id = k, Cost = wd_39, Name = v.Name }
    end
end
nH = nil
table.sort(oA, fns.fn137)
nH = {}
local p8 = 1
while p8 <= 45 do
    local p9 = p8
    table.insert(nH, "Stage " .. tostring(p9))
    p8 += 1
end
wd_9, oU, ow, oq, Options, oi, ob, oJ, oB, ox, ot, oo, oj, od, n8, nw, o6, Id, nA, n7, nV, nK, o8, nE, oV, oC, n9, n3, nO, o5, op, nS, ny, oT, ol, n0, oI, n1, nN, o3, nY, o_, n2, oW, nZ, oG, og, nG, oZ, ov, nU, nB, oc, nJ, oK, oe = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nA = fn514
if (ob or oG or false and Options or (false and oG or (oG or not oU))) and (not Options and not oG or (Id or not Options) or (not oU or not oG or not Options and Options)) and ((ob and oU or oG and ob) and ((not oU or oU) and (Id and oi)) or (false or not Options or false or (oU or oG) and "https://rscripts.net/@Ouroboros")) or not ((ob or oG or false and Options or (false and oG or (oG or not oU))) and (not Options and not oG or (Id or not Options) or (not oU or not oG or not Options and Options)) and ((ob and oU or oG and ob) and ((not oU or oU) and (Id and oi)) or (false or not Options or false or (oU or oG) and "https://rscripts.net/@Ouroboros"))) then
    wd_9 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    n7 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
oU = loadstring(game:HttpGet(wd_9 .. "Library.lua"))()
pcall(fn529)
local wd_18 = loadstring(game:HttpGet(wd_9 .. "addons/ThemeManager.lua"))()
ow = loadstring(game:HttpGet(wd_9 .. "addons/SaveManager.lua"))()
oq = oU.Toggles
Options = oU.Options
oi = "https://discord.gg/ehKVq7pf7v"
ob = "https://rscripts.net/@Ouroboros"
n7 = fns.fn257
if (ot or not oT or not oT and oT) and (false and oT or not Options and not oT) and not ((ot or not oT or not oT and oT) and (false and oT or not Options and not oT)) then
    nK = fn693
    nV = fn812
else
    nV = fn693
    nK = fn812
end
o8 = fn719
local wd_20 = "#7fd47f"
local wd_37 = "#6ec1ff"
oJ = "#e8a34d"
local wd_4 = "#8b93a3"
oB = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
ox = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ot = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oo = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oj = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
od = "https://paypal.me/TheTruckerGOD"
n8 = "https://venmo.com/u/miserablemusic"
wd_2 = "#345d9d"
wd_15 = "#f7931a"
wd_32 = "#627eea"
wd_29 = "#26a17b"
wd_44 = "#14f195"
wd_11 = "#0070ba"
wd_26 = "#008cff"
nE = fn722
oV = fn753
oC = fns.fn371
n9 = fn595
n3 = fns.fn278
nO = fn697
nw = nil
o6 = 0
o5 = fns.fn408
op = function(bX)
    local q7_1
    local q6_1
    if bX == nil then
        return 0
    elseif type(bX) == "number" then
        return bX
    else
        q6_1, q7_1 = pcall(function()
            return AlyaNum.new(bX):toNumber()
        end)
        local q8 = q6_1 and type(q7_1) == "number"
        if q8 then
            return q7_1
        end
        return 0
    end
end
nS = fn799
ny = fns.fn421
oT = fns.fn339
ol = fns.fn396
n0 = fn528
oI = fn987
n1 = fns.fn316
nN = fn764
o3 = fns.fn306
nY = fns.fn230
o_ = function(dq)
    if not dq then
        return false
    end
    local ProximityPrompt = dq:FindFirstChildWhichIsA("ProximityPrompt", true)
    if not ProximityPrompt then
        return false
    end
    local sw = dq:FindFirstChild("Anchor") or dq:FindFirstChildWhichIsA("BasePart", true)
    if sw then
        n1(sw)
        task.wait(0.15)
    end
    if fireproximityprompt then
        local sw_1 = pcall(fireproximityprompt, ProximityPrompt)
        return sw_1
    elseif getconnections then
        local su = false
        for i, v in ipairs(getconnections(ProximityPrompt.Triggered)) do
            local sE = v
            pcall(function()
                if sE.Fire then
                    sE:Fire(LocalPlayer)
                    su = true
                elseif sE.Function then
                    sE.Function(LocalPlayer)
                    su = true
                end
            end)
        end
        return su
    else
        return false
    end
end
n2 = fns.fn22
oW = fn858
nZ = fn698
oG = fns.fn34
og = function(eq, er)
    local tb = eq and eq.CurrentWorld
    if tonumber(tb) == er then
        return true
    end
    local tb_1 = pcall(function()
        nP:InvokeServer(er)
    end)
    if tb_1 then
        task.wait(0.35)
        o5(true)
    end
    return tb_1
end
nG = fns.fn113
oZ = function(eF)
    og(o5(true), eF.World)
    local Barrier = eF.Folder:FindFirstChild("Barrier")
    local to = Barrier and Barrier:IsA("BasePart")
    if to then
        Barrier.CanCollide = false
    end
    local EnemySpawns = eF.Folder:FindFirstChild("EnemySpawns")
    local Spawn = eF.Folder:FindFirstChild("Spawn")
    if EnemySpawns then
        local tp_1 = (EnemySpawns:FindFirstChildWhichIsA("BasePart"))
        local ty = if tp_1 then 1 else 0
        local tw = 3825 * ty + 3068 * (1 - ty)
        local tx = 2861 * ty + 3296 * (1 - ty)
        if not ((tw * 3668 + tx * 2205 + tw * tx) % 16777213 == 14504717) then
            tp_1 = EnemySpawns:GetChildren()[1]
        end
        local tq_1 = tp_1
        if tq_1 then
            n1(tq_1)
        elseif Spawn then
            n1(Spawn)
        end
    elseif Spawn then
        n1(Spawn)
    end
    task.wait(0.25)
    local to_2 = os.clock() + 90
    local tD = false
    repeat
        local tm
        local tp_2 = os.clock() < to_2 and not oU.Unloaded and nE("AutoWin")
        if tp_2 then
            local tp_3 = o5(true)
            local tq_2 = tp_3 and oT(tp_3, eF.World, eF.Stage)
            if tq_2 then
                tD = true
            else
                tm = {}
                pcall(function()
                    local tj = {}
                    local tk = oS.getAliveEnemyRoots() or tj
                    tm = tk
                end)
                local tp_4 = nO()
                local tq_3 = tp_4 and type(tm) == "table" and #tm > 0
                if tq_3 then
                    local tq_4 = tm[1]
                    local tr = tq_4 and tq_4:IsA("BasePart")
                    if tr then
                        tp_4.AssemblyLinearVelocity = Vector3.zero
                        tp_4.AssemblyAngularVelocity = Vector3.zero
                        tp_4.CFrame = CFrame.new(tq_4.Position + Vector3.new(0, 3, 0))
                    end
                elseif EnemySpawns then
                    local tp_5 = EnemySpawns:FindFirstChildWhichIsA("BasePart") or EnemySpawns:GetChildren()[1]
                    if tp_5 then
                        n1(tp_5)
                    end
                end
                pcall(function()
                    RequestAttack:FireServer()
                end)
                task.wait(oC("WinAttackDelay", 0.06))
            end
        else
            tD = true
        end
    until tD
end
ov = fn733
nU = fns.fn157
nB = fn700
oc = fns.fn335
nJ = fn748
Id = nil
oK = function(fV, fW)
    pcall(function()
        AutoHatch:FireServer(fV, fW == true)
    end)
end
oe = function()
    local t0, t1
    t0 = oG()
    if not t0 then
        return
    end
    local t2 = o5(true)
    if not t2 then
        return
    end
    local t3 = op(t2.Wins)
    if t3 < t0.Cost then
        return
    end
    t1 = 1
    local t3_1 = t2.Eggs and tonumber(t2.Eggs.MultiHatch)
    if t3_1 then
        t1 = tonumber(t2.Eggs.MultiHatch)
    end
    local t2_1 = oV("HatchMode") or "Purchase"
    local t3_2 = tostring(t2_1)
    if t3_2 == "Game Auto Hatch" then
        if Id ~= t0.Id then
            if Id then
                oK(Id, false)
            end
            Id = t0.Id
            oK(t0.Id, true)
        end
        return
    end
    pcall(function()
        nL:FireServer(t0.Id, t1)
    end)
    task.wait(0.1)
    pcall(function()
        HatchEgg:FireServer(t0.Id)
    end)
    o5(true)
end
wd_39 = oU:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = oi, Copyable = true }, "|", wd_13 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
wd_34 = {
    Info = wd_39:AddTab("Info", "info"),
    Main = wd_39:AddTab("Main", "gamepad-2"),
    Player = wd_39:AddTab("Player", "person-standing"),
    Settings = wd_39:AddTab("Settings", "settings")
}
wd_41 = fns.fn452
for k, v in pairs(wd_34) do
    wd_41(v)
end
n4, Label, nz = nil, nil, nil
do
    n4 = "Unknown"
    pcall(fns.fn397)
    wd_21 = wd_34.Info:AddLeftGroupbox("Account", "circle-user")
    wd_21:AddLabel(o8("User", LocalPlayer.Name, wd_20), true)
    wd_21:AddLabel(o8("Status", "Keyless", wd_20), true)
    wd_21:AddLabel(o8("Executor", n4, wd_20), true)
    GameInfoGroup = wd_34.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(nK(wd_13 .. " [" .. tostring(game.PlaceId) .. "]", wd_37), true)
    GameInfoGroup:AddLabel(o8("Place ID", tostring(game.PlaceId), wd_37), true)
    Label = GameInfoGroup:AddLabel(o8("Session time", "0s", oJ), true)
end
nz = tostring(game.JobId)
wd_9 = #nz > 18
if wd_9 then
    wd_21 = 2
    repeat
        if wd_21 * 104436237 + 4 + 2 <= wd_21 * 104436237 + 4 + 2 + 1 then
            wd_9 = string.sub(nz, 1, 18) .. "..."
        else
            nz = string.sub(wd_9, 1, 18) .. "..."
        end
        wd_21 = (wd_21 + 7) % 8
    until (wd_21 * 7 + 5) % 8 == 4
end
wd_21 = wd_9 or nz
oP, nI, connection, connection2, connection3, o4, o1, connection4, connection5, oy, oE, oh, nM, o7, oa = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wd_14 = wd_21
GameInfoGroup:AddLabel(o8("Server", wd_14, wd_4), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
oP = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = wd_34.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nK("Included in this hub", wd_4), true)
ScriptsGroup:AddLabel(nK(wd_13, wd_37), true)
local FeaturesGroup = wd_34.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nK("Automation", wd_37), true)
FeaturesGroup:AddLabel(nK("Player Utilities", oJ), true)
FeaturesGroup:AddLabel(nK("Misc Utilities", wd_4), true)
local SocialsGroup = wd_34.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nV })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = wd_34.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nV })
wd_41 = wd_34.Info:AddRightGroupbox("Donations", "heart")
wd_41:AddLabel(nK("All donations are optional but appreciated.", oJ), true)
wd_41:AddLabel(nK("If you donate you get a special role, just PING after you donate.", wd_20), true)
wd_41:AddDivider()
wd_41:AddLabel(nK("LTC / Litecoin", wd_2), true)
wd_41:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
wd_41:AddLabel(nK("BTC / Bitcoin", wd_15), true)
wd_41:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
wd_41:AddLabel(nK("ETH / Ethereum", wd_32), true)
wd_41:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
wd_41:AddLabel(nK("USDT", wd_29), true)
wd_41:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
wd_41:AddLabel(nK("Solana", wd_44), true)
wd_41:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
wd_41:AddLabel(nK("PayPal", wd_11), true)
wd_41:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
wd_41:AddLabel(nK("Venmo", wd_26), true)
wd_41:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
wd_41:AddDivider()
wd_41:AddLabel(nK("Don't have any of the listed currencies but still wanna donate?", wd_4), true)
wd_41:AddLabel(nK("DM me and we'll work something out.", wd_37), true)
local FaqGroup = wd_34.Info:AddRightGroupbox("FAQ", "circle-help")
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
local WinGroup = wd_34.Main:AddLeftGroupbox("Win", "trophy")
WinGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
WinGroup:AddDropdown("WinStage", { Text = "Stage", Values = nH, Default = nH[1] })
WinGroup:AddSlider("WinAttackDelay", { Text = "Attack Delay", Default = 0.06, Min = 0.03, Max = 0.5, Rounding = 2 })
WinGroup:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2 })
local TrainGroup = wd_34.Main:AddLeftGroupbox("Train", "dumbbell")
TrainGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
TrainGroup:AddSlider("ClickDelay", { Text = "Click Delay", Default = 0.05, Min = 0.01, Max = 1, Rounding = 2 })
TrainGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
TrainGroup:AddDropdown("TrainZone", { Text = "Zone", Values = wd_7, Default = wd_7[1] })
TrainGroup:AddSlider("TrainDelay", { Text = "Train Delay", Default = 0.05, Min = 0.01, Max = 1, Rounding = 2 })
local HeroesGroup = wd_34.Main:AddRightGroupbox("Heroes", "shield")
HeroesGroup:AddToggle("AutoBuyHeroes", { Text = "Auto Buy Heroes", Default = false })
HeroesGroup:AddDropdown("BuyHeroMode", {
    Text = "Buy Mode",
    Values = { "Next Affordable", "Best Affordable", "Selected Hero" },
    Default = "Next Affordable"
})
HeroesGroup:AddDropdown("BuyHeroSelect", { Text = "Hero", Values = wd_47, Default = wd_47[math.min(3, #wd_47)] })
HeroesGroup:AddSlider("BuyHeroDelay", { Text = "Buy Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2 })
local RebirthGroup = wd_34.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthDelay", { Text = "Rebirth Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
local HatchGroup = wd_34.Main:AddRightGroupbox("Hatch", "egg")
HatchGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch", Default = false })
HatchGroup:AddDropdown("HatchEggSelect", { Text = "Egg", Values = oA, Default = oA[1] })
HatchGroup:AddDropdown("HatchMode", { Text = "Hatch Mode", Values = { "Purchase", "Game Auto Hatch" }, Default = "Purchase" })
HatchGroup:AddSlider("HatchDelay", { Text = "Hatch Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2 })
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
oq.AutoHatchEggs:OnChanged(fns.fn346)
wd_9 = wd_34.Player:AddLeftGroupbox("Movement", "footprints")
wd_9:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
wd_9:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
wd_9:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
wd_9:AddToggle("NoClip", { Text = "NoClip", Default = false })
wd_9:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
wd_39 = wd_34.Player:AddRightGroupbox("Fly", "feather")
wd_39:AddToggle("Fly", { Text = "Fly", Default = false })
wd_39:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
nI = Workspace.CurrentCamera
connection = RunService.Stepped:Connect(fns.onStepped)
connection2 = UserInputService.JumpRequest:Connect(fns.onJumpRequest)
connection3 = RunService.RenderStepped:Connect(onRenderStepped)
if (oa and connection3 and (connection3 and oE) or SocialsGroup and not connection3 and (oa or wd_39)) and (not connection3 or SocialsGroup or not connection3 and not wd_39 or (not connection3 or connection3) and (not wd_39 or connection3)) or not ((oa and connection3 and (connection3 and oE) or SocialsGroup and not connection3 and (oa or wd_39)) and (not connection3 or SocialsGroup or not connection3 and not wd_39 or (not connection3 or connection3) and (not wd_39 or connection3))) then
    oq.Fly:OnChanged(fns.fn449)
    oq.WalkSpeedEnabled:OnChanged(fns.fn312)
    oy = function(iq)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not iq)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not iq
            end
        end)
        if not iq then
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
else
    oy.Fly:OnChanged(fns.fn449)
    oy.WalkSpeedEnabled:OnChanged(fns.fn312)
    oq = function(iq)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not iq)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not iq
            end
        end)
        if not iq then
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
end
oq.AntiGameplayPause:OnChanged(fn810)
task.spawn(fns.antiGameplayPauseLoop)
oy(true)
local MenuGroup = wd_34.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
oU.ToggleKeybind = Options.MenuKeybind
o4 = tick()
o1 = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local va = v
        pcall(function()
            va:Disable()
        end)
    end
end)
oE = fn621
connection4 = UserInputService.InputBegan:Connect(onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
task.spawn(fns.antiAfkLoop)
oU:OnUnload(fn518)
wd_18:SetLibrary(oU)
wd_18:SetFolder("OuroborosHub")
wd_18:SaveDefault("Evil Hello Kitty")
wd_18:ApplyToTab(wd_34.Settings)
wd_18:LoadDefault()
ow:SetLibrary(oU)
ow:IgnoreThemeSettings()
ow:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
ow:SetFolder("OuroborosHub/Plus1SuperheroEvolution")
local wd_45 = ow:BuildConfigSection(wd_34.Settings)
oh = fns.fn275
nM = fns.fn237
o7 = fns.fn193
oa = function(jE)
    local vQ
    vQ = nil
    local vR = type(jE) ~= "table" or type(jE.idx) ~= "string" or type(jE.type) ~= "string" or ow.Ignore[jE.idx]
    if vR then
        return false
    end
    vQ = oh(jE.type, jE.idx)
    if not vQ then
        return false
    end
    local vR_1 = pcall(function()
        if jE.type == "Input" then
            if type(jE.text) ~= "string" then
                return
            end
            vQ:SetValue(jE.text)
        elseif jE.type == "ColorPicker" then
            vQ:SetValueRGB(Color3.fromHex(jE.value), jE.transparency)
        elseif jE.type == "KeyPicker" then
            vQ:SetValue({ jE.key, jE.mode, jE.modifiers })
            if jE.mode == "Toggle" and jE.toggled ~= nil then
                vQ.Toggled = jE.toggled
                vQ:Update()
            end
        else
            vQ:SetValue(jE.value)
        end
    end)
    return vR_1
end
wd_45:AddDivider()
wd_45:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
wd_45:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
wd_45:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
ow:LoadAutoloadConfig()
oU:Notify("+1 Superhero Evolution loaded")
