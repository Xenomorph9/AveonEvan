local fns = {}
local vn
local v4
local vM
local uM
local vt
local vS
local uS
local vz
local vg
local vY
local uY
local vF
local v3
local u3
local vL
local uL
local u9
local vR
local vf
local vX
local vE
local vl
local v2
local u2
local vK
local uK
local vr
local u8
local vQ
local uQ
local vx
local ve
local vW
local LocalPlayer
local vk
local v1
local vJ
local vq
local u7
local vP
local uP
local vw
local vd
local vV
local uV
local vC
local CoreGui
local v0
local u0
local vp
local u6
local uO
local vv
local vU
local uU
local vB
local vi
local v_
local vH
local vo
local u5
local vN
local uN
local vb
local uT
local vA
local vh
local uZ
local vG
function fns.fn7()
    gethui = vX
end
function fns.fn15(bB, bC)
    local xP = type(bC) == "string" and vw(bC) == bB
    if xP then
        return bC
    end
    local xP_1 = vC()
    local xQ = not xP_1 or type(bB) ~= "string"
    if xQ then
        return nil
    end
    for i, child in ipairs(xP_1:GetChildren()) do
        local xP_2 = (child:IsA("GuiObject")) and child.Name ~= "UIGridLayout" and child.Name ~= "Template"
        if xP_2 then
            if vw(child.Name) == bB then
                return child.Name
            end
        end
    end
    return nil
end
function fns.fn18()
    if vx.Macro and #vx.Macro > 0 then
        return vx.Macro
    end
    return vx.Steps
end
function fns.fn27(Y)
    return type(Y) == "function"
end
function fns.fn38(fm)
    if vx.Mode == "Money" then
        local Ac = fm.s or 0
        return "$" .. tostring(math.floor(Ac)) .. " used"
    end
    return vp(fm.t)
end
local function fn45()
    local xh_1
    local xg_1
    if not u3 then
        return false
    end
    xg_1, xh_1 = pcall(function()
        return u3.root.roundStats.gameStarted
    end)
    return xg_1 and xh_1 == true
end
local function fn58()
    if vn then
        return
    end
    vn = true
    if vx.Recording then
        vk("Round over, saving the recording")
        vv.SetRecording(false)
    end
end
local function fn77(dP, dQ, dR)
    if typeof(dQ) ~= "Instance" then
        return
    end
    local zA = uK(dQ)
    if not zA then
        return
    end
    local zB = { act = dP, cls = dQ:GetAttribute("ClassId"), x = zA.X, y = zA.Y, z = zA.Z }
    if type(dR) == "table" then
        for k, v in pairs(dR) do
            zB[k] = v
        end
    end
    vU(zB)
end
local function fn78()
    return uL()
end
local function fn95(aE)
    local wW = (u7(aE)) and aE
    vM = wW or nil
end
local function fn98(hA)
    local Bp = hA == true
    if Bp == vx.Playing then
        return
    end
    if Bp then
        if not vJ then
            vk("Join a match before playing a macro", 6)
            return
        end
        vx.Playing = true
        vE()
        u5()
        local Bp_1 = uQ()
        local Bq_1 = type(Bp_1) == "table" and #Bp_1
        local Bp_2 = Bq_1 or 0
        if Bp_2 == 0 then
            vk("Play Macro is on but there is nothing to play, record or load a macro", 6)
        else
            vk(string.format("Playing %s, %d actions on the %s mode", vx.MacroLabel, Bp_2, vx.Mode), 6)
        end
    else
        vx.Playing = false
        local Bp_3 = uQ()
        local Bq_3 = type(Bp_3) == "table" and #Bp_3
        local Bp_4 = Bq_3 or 0
        vk(string.format("Playback stopped at step %d/%d", math.min(vx.Cursor, Bp_4), Bp_4))
    end
end
local function fn107(hf)
    if type(hf) ~= "string" then
        return
    end
    for i, v in ipairs(vK) do
        if v == hf then
            local Bb = vx.Mode ~= hf
            vx.Mode = hf
            vE()
            if Bb then
                vk("Record mode set to " .. hf .. ", playback restarted at step 1")
            end
            return
        end
    end
end
local function fn111(hO)
    local Bv = type(hO) == "string" and hO
    vx.MacroName = Bv or ""
end
local function fn120()
    local w3_1
    local w2_1
    if not u3 then
        return 0
    end
    w2_1, w3_1 = pcall(function()
        return u3.data.cash
    end)
    local w4 = w2_1 and tonumber(w3_1)
    return w4 or 0
end
local function fn139()
    if not uZ() then
        return false
    end
    local BK = pcall(function()
        for i, v in ipairs({ "OuroborosHub", vW, vQ }) do
            if not isfolder(v) then
                makefolder(v)
            end
        end
    end)
    local BL = BK and isfolder(vQ)
    return BL
end
local function fn149(b5)
    local yj = (tonumber(b5)) or 0
    local yk = math.max(0, math.floor(yj))
    return string.format("%02d:%02d", yk // 60, yk % 60)
end
local function fn156(c0)
    if not vx.Recording then
        return
    end
    c0.t = math.floor(vG() * 100) / 100
    c0.w = ve()
    c0.s = math.floor(vx.Spent)
    table.insert(vx.Steps, c0)
end
local function fn196(aA)
    local wT = (u7(aA)) and aA
    vr = wT or nil
end
local function fn197(av, aw)
    local wP = (u7(vr)) and type(av) == "string"
    if wP and av ~= "" then
        local wP_1 = aw or 5
        pcall(vr, av, wP_1)
    end
end
local function fn206(dI, dJ)
    local zw = vo(dI)
    if not zw then
        return
    end
    local zx = dJ ~= nil and vo(dJ)
    local zy = zx or nil
    vU({ act = "Ability", ref = zw, tref = zy, untargeted = dJ == nil })
end
local function fn215(c5)
    if not c5 then
        return "done"
    end
    local act = c5.act
    if act == "Place" then
        local yW_1 = c5.ph and "Queue " or "Place "
        local yV_2 = c5.cls or "unit"
        return yW_1 .. tostring(yV_2)
    elseif act == "Upgrade" then
        local yV_3 = tostring(c5.ref)
        local yW_2 = c5.path and " path " .. tostring(c5.path)
        local yX = yW_2
        local y0 = if yX then 1 else 0
        local yZ = 2764 * y0 + 2028 * (1 - y0)
        local y_ = 658 * y0 + 3349 * (1 - y0)
        if not ((yZ * 2101 + y_ * 2269 + yZ * y_) % 16777213 == 9118878) then
            yX = ""
        end
        return "Upgrade unit " .. yV_3 .. yX
    elseif act == "Sell" then
        return "Sell unit " .. tostring(c5.ref)
    elseif act == "Target" then
        return "Target " .. tostring(c5.mode) .. " on unit " .. tostring(c5.ref)
    elseif act == "Ability" then
        return "Ability on unit " .. tostring(c5.ref)
    elseif act == "PhantomPath" then
        return "Phantom path " .. tostring(c5.path)
    elseif act == "PhantomMove" then
        return "Move phantom"
    elseif act == "PhantomCancel" then
        return "Cancel phantom"
    else
        return tostring(act)
    end
end
local function fn230(fi)
    if vx.Mode == "Money" then
        return vx.Spent >= (fi.s or 0)
    end
    local z5_2 = vG()
    return z5_2 >= (fi.t or 0)
end
local function fn240()
    local z0 = vV()
    if z0 < uU - 0.001 then
        vx.Spent = vx.Spent + (uU - z0)
    end
    uU = z0
end
local function fn264(cg)
    local yt = vx.RefToModel[cg]
    if not yt then
        return nil
    end
    local yu = uS()
    local yv = yu and yu:FindFirstChild(yt)
    return yv or nil
end
local function fn286()
    return vx.MacroLabel
end
local function fn305(dw)
    local zr = vo(dw)
    if not zr then
        return
    end
    vU({ act = "Sell", ref = zr, cls = vx.RefClass[zr] })
end
local function fn325()
    if u3.FireNetwork == vS then
        u3.FireNetwork = v_
    end
end
local function fn330()
    if not vJ then
        return "No match on this server"
    end
    local A8 = uS()
    local A9 = A8 and #A8:GetChildren()
    local A8_1 = A9 or 0
    return string.format("Wave %d - $%d cash - %d units - %s", ve(), math.floor(vV()), A8_1, vp(vG()))
end
local function fn352(ge)
    local AK_2
    local act = ge.act
    if act == "Place" then
        local ref = ge.ref
        if vx.RefToModel[ref] then
            return true
        end
        local AH_1 = v4(ge.cls, ge.slot)
        if not AH_1 then
            return false, "unit is not in the loadout"
        end
        local AI_1 = Vector3.new(ge.x, ge.y, ge.z)
        local AJ_1 = ge.rot or 0
        if not vA("PlayerPlaceTower", AH_1, AI_1, AJ_1) then
            return false, "placement refused"
        end
        vx.RefClass[ref] = ge.cls
        uN(ref, AI_1, ge.cls)
        local AH_2 = os.clock() + vt
        while true do
            local AI_2 = (uT()) and os.clock() < AH_2
            if not AI_2 then
                return false, "no unit appeared"
            end
            if vx.RefToModel[ref] or vx.PhantomPending[ref] then
                break
            end
            task.wait(0.1)
        end
        return true
    elseif act == "Upgrade" then
        local AG_2 = vB(ge.ref)
        if not AG_2 then
            return false, "unit is gone"
        end
        local AI_4 = ge.cls or vx.RefClass[ge.ref]
        local AH_5 = vx.RefLevel[ge.ref] or ge.lvl or 1
        local AJ_3 = vd(AI_4)
        if AJ_3 and AH_5 >= AJ_3 then
            return true
        end
        local AJ_4 = uY({ act = "Upgrade", cls = AI_4, lvl = AH_5 })
        if ge.path then
            AK_2 = vA("PlayerUpgradeTower", AG_2.Name, ge.path)
        else
            AK_2 = vA("PlayerUpgradeTower", AG_2.Name)
        end
        if not AK_2 then
            return false, "upgrade refused"
        elseif AJ_4 <= 0 then
            vx.RefLevel[ge.ref] = AH_5 + 1
            return true
        elseif u9(AJ_4, 2.5) then
            vx.RefLevel[ge.ref] = AH_5 + 1
            return true
        else
            return false, "upgrade did not go through"
        end
    elseif act == "Sell" then
        local AG_3 = vB(ge.ref)
        if not AG_3 then
            return true
        end
        local Name = AG_3.Name
        if not vA("PlayerSellTower", Name) then
            return false, "sell refused"
        end
        local AI_5 = os.clock() + 2.5
        while true do
            local AJ_5 = (uT()) and os.clock() < AI_5
            if not AJ_5 then
                return false, "unit did not sell"
            end
            if not AG_3.Parent then
                break
            end
            task.wait(0.1)
        end
        vx.ModelToRef[Name] = nil
        vx.RefToModel[ge.ref] = nil
        return true
    elseif act == "Target" then
        local AG_4 = vB(ge.ref)
        if not AG_4 then
            return false, "unit is gone"
        elseif vz("PlayerSetTowerTargetMode", AG_4.Name, ge.mode) then
            return true
        else
            return false, "target refused"
        end
    elseif act == "Ability" then
        local AG_5 = vB(ge.ref)
        if not AG_5 then
            return false, "unit is gone"
        elseif ge.untargeted then
            if vz("PlayerActivateTowerAbility", AG_5.Name) then
                return true
            end
            return false, "ability refused"
        else
            local AH_7 = ge.tref and vB(ge.tref)
            if not AH_7 then
                return true
            elseif vz("PlayerActivateTowerAbility", AG_5.Name, AH_7.Name) then
                return true
            else
                return false, "ability refused"
            end
        end
    elseif act == "PhantomPath" then
        local AG_6 = vL(ge)
        if not AG_6 then
            return false, "no pending phantom"
        elseif not vA("PlayerSelectPhantomPath", AG_6, ge.path) then
            return false, "path refused"
        else
            local AH_8 = os.clock() + 2.5
            while true do
                local AI_7 = (uT()) and os.clock() < AH_8
                if AI_7 then
                    local AI_8 = AG_6:GetAttribute("SelectedPath") ~= nil or not AG_6.Parent
                    if AI_8 then
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                break
            end
            return false, "path did not apply"
        end
    elseif act == "PhantomMove" then
        local AG_7 = vL(ge)
        if not AG_7 then
            return false, "no pending phantom"
        end
        local new = Vector3.new
        local AI_9 = ge.tx or ge.x
        local AJ_6 = ge.ty or ge.y
        local AK_3 = ge.tz or ge.z
        local AL = new(AI_9, AJ_6, AK_3)
        local AH_10 = ge.rot or 0
        local AS = if vA("PlayerMovePhantomTower", AG_7, AL, AH_10) then 1 else 0
        if AS == 1 then
            return true
        end
        return false, "move refused"
    elseif act == "PhantomCancel" then
        local AF_1 = vL(ge)
        if not AF_1 then
            return true
        elseif vA("PlayerCancelPhantomTower", AF_1) then
            return true
        else
            return false, "cancel refused"
        end
    else
        return true
    end
end
local function fn377()
    local C6 = if coroutine.status(vf) ~= "dead" then 1 else 0
    if C6 == 1 then
        task.cancel(vf)
    end
end
local function fn379()
    local xd_1
    local xc_1
    if not u3 then
        return 0
    end
    xc_1, xd_1 = pcall(function()
        return u3.root.wave.index
    end)
    local xe = xc_1 and tonumber(xd_1)
    return xe or 0
end
local function fn398(b8, b9)
    return (Vector2.new(b8.X, b8.Z) - Vector2.new(b9.X, b9.Z)).Magnitude
end
local function fn465(cP)
    return vx.PhantomPending[cP] == true and vx.RefToModel[cP] == nil
end
local function fn471()
    return u3 and u3.Network or nil
end
local function fn497(dB, dC)
    local zt = vo(dB)
    local zu = not zt or type(dC) ~= "string"
    if zu then
        return
    end
    vU({ act = "Target", ref = zt, mode = dC })
end
local function fn505()
    if coroutine.status(uP) ~= "dead" then
        task.cancel(uP)
    end
end
local function fn506()
    return CoreGui
end
local function fn516(hn)
    local Bk_1
    local Bj = hn == true
    local Bj_1
    if Bj == vx.Recording then
        return
    end
    if Bj then
        if not vJ then
            vk("Join a match before recording", 6)
            return
        end
        if not u2 then
            vk("Recording is unavailable, the match remotes did not resolve", 6)
            return
        end
        vx.Recording = true
        table.clear(vx.Steps)
        vx.Macro = nil
        vx.MacroLabel = "recording buffer"
        u5()
        vx.Spent = 0
        uU = vV()
        vx.RoundStart = os.clock()
        vk("Recording started, play the round normally")
    else
        vx.Recording = false
        if #vx.Steps == 0 then
            vk("Recording stopped with nothing to save")
            return
        end
        Bk_1, Bj_1 = vv.SaveMacro()
        vk(Bj_1, 6)
        if Bk_1 then
            vi(vx.MacroLabel)
        end
    end
end
local function fn533(h6)
    local BN = h6 or ""
    local BO = tostring(BN):gsub("[^%w%s%-_]", ""):gsub("^%s+", ""):gsub("%s+$", "")
    return BO
end
local function fn568(aI)
    if u7(vM) then
        pcall(vM, aI)
    end
end
local function fn608(eA, ...)
    if not vY then
        if eA == "PlayerSetTowerTargetMode" then
            pcall(vN, ...)
        elseif eA == "PlayerActivateTowerAbility" then
            pcall(u0, ...)
        end
    end
    return v_(eA, ...)
end
local function fn625()
    local By = (u7(writefile)) and u7(readfile) and u7(listfiles) and u7(isfolder) and u7(makefolder)
    return By
end
local function fn630(dZ, d_)
    vF("PhantomPath", dZ, { path = tonumber(d_) })
end
local function fn636()
    vx.Cursor = 1
    vx.Attempts = 0
    vx.StepStartedAt = 0
    vx.Finished = false
end
local function fn639(d7)
    vF("PhantomCancel", d7)
end
local function fn653()
    return not vv.Unloaded
end
local function fn666()
    vn = false
    vx.RoundStart = os.clock()
    vx.Spent = 0
    uU = vV()
    u5()
    vE()
    if vx.Recording then
        table.clear(vx.Steps)
        vk("New round started, recording from scratch")
    elseif vx.Playing then
        vk("New round started, macro reset to step 1")
    end
end
local function fn673(de, df, dg)
    if typeof(df) ~= "Vector3" then
        return
    end
    local zb = vw(de)
    local NextRef = vx.NextRef
    vx.NextRef = vx.NextRef + 1
    local zd = tostring(de)
    local ze = (tonumber(dg)) or 0
    local zf = { act = "Place", ref = NextRef, slot = zd, cls = zb, rot = ze, x = df.X, y = df.Y, z = df.Z }
    uN(NextRef, df, zb, zf)
    vU(zf)
end
local function worker()
    while uT() do
        pcall(uM)
        local CW = vJ and vq()
        if CW then
            pcall(vh)
        end
        task.wait(0.1)
    end
end
local function fn718(cT)
    return vx.ModelToRef[tostring(cT)]
end
local function fn729(d2, d3, d4)
    if typeof(d3) ~= "Vector3" then
        return
    end
    local zJ = d3.X
    local zK = d3.Y
    local zL = d3.Z
    local zM = (tonumber(d4)) or 0
    vF("PhantomMove", d2, { tx = zJ, ty = zK, tz = zL, rot = zM })
end
local function fn741()
    local AT = uQ()
    local AU = type(AT) ~= "table" or #AT == 0
    if AU then
        vx.Status = "Play Macro on, no macro to play"
        return 0.4
    elseif not vJ then
        vx.Status = "Not in a match"
        return 1
    elseif vq() then
        vx.Status = "Round is over"
        return 0.6
    else
        local AU_1 = AT[vx.Cursor]
        if not AU_1 then
            vx.Status = string.format("Macro finished (%d/%d)", #AT, #AT)
            if not vx.Finished then
                vx.Finished = true
                vk(string.format("Macro finished, all %d actions played", #AT))
            end
            return 0.5
        elseif not u8(AU_1) then
            vx.Status = string.format("Step %d/%d %s - waiting for %s", vx.Cursor, #AT, vl(AU_1), v2(AU_1))
            return 0.2
        else
            local AV = AU_1.act ~= "Place" and vR(AU_1.ref)
            local AV_2
            if AV then
                vx.Status = string.format("Step %d/%d %s - waiting for the phantom to build", vx.Cursor, #AT, vl(AU_1))
                return 0.4
            end
            local AV_1 = uY(AU_1)
            local AW = AV_1 > 0 and not AU_1.ph and vV() < AV_1
            local AW_1
            if AW then
                vx.Status = string.format("Step %d/%d %s - need $%d", vx.Cursor, #AT, vl(AU_1), math.floor(AV_1))
                return 0.3
            end
            if vx.StepStartedAt == 0 then
                vx.StepStartedAt = os.clock()
            end
            vx.Status = string.format("Step %d/%d %s", vx.Cursor, #AT, vl(AU_1))
            AV_2, AW_1 = vH(AU_1)
            if AV_2 then
                vx.Cursor = vx.Cursor + 1
                vx.Attempts = 0
                vx.StepStartedAt = 0
                return 0.1
            end
            vx.Attempts = vx.Attempts + 1
            local AV_3 = os.clock() - vx.StepStartedAt > vg
            if vx.Attempts >= vb and AV_3 then
                vx.Status = string.format("Skipped step %d/%d %s", vx.Cursor, #AT, vl(AU_1))
                local format = string.format
                local Cursor = vx.Cursor
                local AY = #AT
                local AZ = vl(AU_1)
                local A_ = AW_1
                local A3 = if A_ then 1 else 0
                local A1 = 2205 * A3 + 1379 * (1 - A3)
                local A2 = 859 * A3 + 868 * (1 - A3)
                if not ((A1 * 1758 + A2 * 3137 + A1 * A2) % 16777213 == 8465168) then
                    A_ = "no reason"
                end
                vk(format("Skipped step %d/%d, %s (%s)", Cursor, AY, AZ, tostring(A_)), 6)
                vx.Cursor = vx.Cursor + 1
                vx.Attempts = 0
                vx.StepStartedAt = 0
                return 0.3
            end
            return 0.4
        end
    end
end
local function fn748()
    local xm_1
    local xl_1
    if not u3 then
        return false
    end
    xl_1, xm_1 = pcall(function()
        return u3.gameover
    end)
    return xl_1 and xm_1 == true
end
local function worker2()
    local C0_1
    local C__1
    while uT() do
        local CZ = 0.3
        if vx.Playing then
            C0_1, C__1 = pcall(v0)
            local C1 = C0_1 and tonumber(C__1)
            CZ = C1 or 0.5
            if not C0_1 then
                vx.Status = "Playback error, retrying"
            end
        end
        task.wait(CZ)
    end
end
local function fn788()
    return math.max(0, os.clock() - vx.RoundStart)
end
local function fn799()
    local BS_1
    local BR_1
    local BQ = {}
    local BX = if not v1() then 1 else 0
    if BX == 1 then
        return BQ
    end
    BR_1, BS_1 = pcall(listfiles, vQ)
    local BT = not BR_1 or type(BS_1) ~= "table"
    if BT then
        return BQ
    end
    for i, v in ipairs(BS_1) do
        local BR_2 = tostring(v):match("([^/\\]+)%.json$")
        if BR_2 then
            table.insert(BQ, BR_2)
        end
    end
    table.sort(BQ)
    return BQ
end
local function fn801()
    local xx_1
    local xw_1
    if not u3 then
        return nil
    end
    xw_1, xx_1 = pcall(function()
        return u3.mainGui.HUD.Toolbox:FindFirstChild("Hotbar")
    end)
    return xw_1 and xx_1 or nil
end
local function fn836()
    if u7(getrenv) then
        local wM = getrenv()
        local wN = type(wM) == "table" and type(wM._G) == "table"
        if wN then
            u3 = wM._G
        end
    end
end
local function fn870()
    if not vJ then
        return "Not in a match, join a round to record or play"
    elseif vx.Playing then
        return vx.Status
    elseif vx.Recording then
        local format = string.format
        local A6 = vx.MacroName ~= "" and vx.MacroName or "unsaved"
        return format("Recording %s - %d actions - wave %d - %s - $%d used", A6, #vx.Steps, ve(), vp(vG()), math.floor(vx.Spent))
    else
        local A4_2 = uQ()
        local A5_2 = type(A4_2) == "table" and #A4_2
        local A4_3 = A5_2 or 0
        return string.format("Idle - %s (%d actions) - wave %d - $%d used", vx.MacroLabel, A4_3, ve(), math.floor(vx.Spent))
    end
end
local function fn968()
    local EntityModels = v3:FindFirstChild("EntityModels")
    local xr = EntityModels and EntityModels:FindFirstChild("Towers")
    return xr or nil
end
local function fn973(fP)
    local As_1
    local Ar_1
    local Ap = vP()
    if not Ap then
        return nil
    end
    local Aq = Vector3.new(fP.x, fP.y, fP.z)
    As_1, Ar_1 = nil, 16
    for i, child in ipairs(Ap:GetChildren()) do
        local Ap_1 = (fP.cls == nil or child:GetAttribute("ClassId") == fP.cls) and child:GetAttribute("OwnerId") == LocalPlayer.UserId
        if Ap_1 then
            local Ap_2 = uK(child)
            if Ap_2 then
                local At = u6(Ap_2, Aq)
                if At <= Ar_1 then
                    As_1, Ar_1 = child, At
                end
            end
        end
    end
    return As_1
end
local function fn979(V)
    local wK = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if wK then
        return cloneref(V)
    end
    return V
end
local function fn986()
    local B6 = {}
    for i, v in ipairs(vv.ListMacros()) do
        B6[v] = true
    end
    local B7 = 1
    while B6["Macro " .. B7] do
        B7 += 1
    end
    return "Macro " .. B7
end
local function fn1018(f6, f7)
    local AB = vV()
    local AC = os.clock() + f7
    while true do
        local AD = (uT()) and os.clock() < AC
        if not AD then
            return false
        end
        if AB - vV() >= f6 * 0.9 then
            break
        end
        task.wait(0.1)
    end
    return true
end
local function fn1074()
    return v3:FindFirstChild("PhantomTowers")
end
local function fn1120(c9)
    if not c9 then
        return 0
    end
    local y1 = uO(c9.cls)
    if not y1 then
        return 0
    elseif c9.act == "Place" then
        local y2_1 = (tonumber(y1[1]))
        local za = if y2_1 then 1 else 0
        local y8 = 3401 * za + 4075 * (1 - za)
        local y9 = 2802 * za + 3813 * (1 - za)
        if not ((y8 * 3923 + y9 * 1581 + y8 * y9) % 16777213 == 10524474) then
            y2_1 = 0
        end
        return y2_1
    elseif c9.act == "Upgrade" then
        local y2_2 = c9.lvl or 1
        local y2_3 = (tonumber(y1[y2_2 + 1])) or 0
        return y2_3
    else
        return 0
    end
end
local function fn1149()
    table.clear(vx.Steps)
    vx.Macro = nil
    vx.MacroLabel = "recording buffer"
    vE()
end
local function fn1179()
    table.clear(vx.RefToModel)
    table.clear(vx.ModelToRef)
    table.clear(vx.RefLevel)
    table.clear(vx.RefClass)
    table.clear(vx.PhantomPending)
    vx.NextRef = 1
end
local function fn1187(i8)
    local CT = uV(i8)
    if CT == "" then
        return false, "Pick a macro first"
    elseif not u7(delfile) then
        return false, "Your executor cannot delete files"
    else
        local CU = pcall(delfile, vQ .. "/" .. CT .. ".json")
        if not CU then
            return false, "Failed to delete that macro"
        end
        if vx.MacroLabel == CT then
            vx.Macro = nil
            vx.MacroLabel = "recording buffer"
        end
        return true, "Deleted " .. CT
    end
end
local function fn1208(dq, dr)
    local zk = vo(dq)
    if not zk then
        return
    end
    local zl = vx.RefLevel[zk]
    local zq = if zl then 1 else 0
    local zo = 1298 * zq + 3630 * (1 - zq)
    local zp = 2177 * zq + 1808 * (1 - zq)
    if not ((zo * 2206 + zp * 728 + zo * zp) % 16777213 == 7273990) then
        zl = 1
    end
    local zm = zl
    vU({ act = "Upgrade", ref = zk, cls = vx.RefClass[zk], lvl = zm, path = tonumber(dr) })
    vx.RefLevel[zk] = zm + 1
end
uK = nil
uL = nil
uM = nil
uN = nil
uO = nil
uP = nil
uQ = nil
uS = nil
uT = nil
uU = nil
uV = nil
LocalPlayer = nil
uY = nil
uZ = nil
u0 = nil
u2 = nil
u3 = nil
u5 = nil
u6 = nil
u7 = nil
u8 = nil
u9 = nil
vb = nil
vd = nil
ve = nil
vf = nil
vg = nil
vh = nil
vi = nil
CoreGui = nil
vk = nil
vl = nil
vn = nil
vo = nil
vp = nil
vq = nil
vr = nil
vt = nil
local Players, uJ, uR, uX, u_, u1, u4, Lighting, TeleportService, vm, GuiService, vu
vv = nil
vw = nil
vx = nil
vz = nil
vA = nil
vB = nil
vC = nil
local vD
vE = nil
vF = nil
vG = nil
vH = nil
vJ = nil
vK = nil
vL = nil
vM = nil
vN = nil
vP = nil
vQ = nil
vR = nil
vS = nil
vU = nil
vV = nil
vW = nil
vX = nil
vY = nil
v_ = nil
v0 = nil
v1 = nil
v2 = nil
v3 = nil
v4 = nil
local HttpService, VirtualUser, UserInputService, RunService, vZ
local wf_6
local we_1
local wd_1
local wc_4
local wb_5
local wa_4
local v9_1, v9_2
local v7_1, v7_4
local v6_12
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, u1, LocalPlayer, vX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
u1 = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
LocalPlayer:WaitForChild("PlayerGui")
local v8 = "OuroborosUltimateTowerDefense"
local v8_1
vX = fn506
if getgenv then
    getgenv().gethui = vX
end
vv, v3, vW, vQ, vK, vD, vt, vm, vg, vb, u3, v9_1, v7_1, uX, u7, uT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local v5 = 20
repeat
    local wa_1 = (v5 * 1 + 4) % 7 + 1
    if wa_1 <= 4 then
        if wa_1 <= 2 then
            if wa_1 <= 1 then
                local wb_1 = (vector.create((v5 * 5 + 2) % 11 + 1, (v5 * 11 + 5) % 13 + 1, (v5 * 13 + 6) % 17 + 1))
                local wc_1 = (vector.create((v5 * 2 + 7) % 11 + 1, (v5 * 7 + 1) % 13 + 1, (v5 * 9 + 8) % 17 + 1))
                local Jn = vector.cross(wb_1, wc_1)
                local Jo = vector.dot(wb_1, wc_1)
                if vector.dot(Jn, Jn) + Jo * Jo == vector.dot(wb_1, wb_1) * vector.dot(wc_1, wc_1) then
                    vt = 5
                    vm = 150
                    vg = 8
                    vb = 3
                else
                    vg = 5
                    vb = 150
                    vm = 8
                    vt = 3
                end
                v5 = (v5 + 43) % 56
            else
                local Jy = bit32.rrotate(bit32.bxor(bit32.lrotate(v5, 28), string.byte(tostring(u7))), 16)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Jy, 2055709629), 8), 2275655034) == bit32.lrotate(Jy, 8) then
                    u3 = nil
                else
                    vb = nil
                end
                v5 = (v5 + 15) % 56
            end
        elseif wa_1 <= 3 then
            local wb_2 = { "dgxbsgvygo", "ssw", "ywfkaov", "xaqlit", "fdigq", "hxkpihyel", "ytfscp" }
            local Jz = v5
            local wc_2 = wb_2[Jz % 7 + 1]
            if wc_2:len() >= wc_2:gsub("(.)", "%1%1", Jz % 3 % 2 + 1):len() then
                pcall(fn836)
                u3 = type(v9_1) ~= "table"
            else
                pcall(fn836)
                v9_1 = type(u3) ~= "table"
            end
            v5 = (v5 + 50) % 56
        else
            local wb_3 = {
                "bvetywfiey",
                "zflbrd",
                "csvfsyyao",
                "uurx",
                "bzcfjqemmf",
                "vcb",
                "ktitddquar",
                "ltxgspfiowa",
                "cogoan"
            }
            local JE = v5
            local wc_3 = wb_3[JE % 9 + 1]
            if wc_3:len() >= wc_3:gsub("(.)", "%1%1", JE % 3 % 2 + 1):len() then
                pcall(fns.fn7)
                vv = function(u)
                    local wC
                    local wD
                    local wB
                    wB = nil
                    wC = nil
                    wD = nil
                    local wE = u ~= ""
                    local wF = type(u) == "string" and wE
                    assert(wF, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    wC = getgenv()
                    assert(type(wC) == "table", "getgenv did not return a table")
                    local wE_2 = wC[u]
                    if wE_2 ~= nil then
                        local wF_2 = type(wE_2) == "table" and type(wE_2.Unload) == "function"
                        assert(wF_2, "Namespace is occupied")
                        wE_2.Unload()
                        assert(wC[u] == nil, "Previous instance did not release its namespace")
                    end
                    wD = {}
                    wB = { State = {}, Unloaded = false }
                    wB.Track = function(A)
                        assert(type(A) == "function", "Cleanup must be callable")
                        if wB.Unloaded then
                            A()
                        else
                            table.insert(wD, A)
                        end
                        return A
                    end
                    wB.Unload = function()
                        local wu_2
                        local wt_2
                        if wB.Unloaded then
                            return
                        end
                        wB.Unloaded = true
                        local wr = {}
                        local wy = #wD
                        local wx = -1
                        while false and wy <= 1 or true and wy >= 1 do
                            local wz = wy
                            local ws_2 = table.remove(wD, wz)
                            wt_2, wu_2 = pcall(ws_2)
                            if not wt_2 then
                                table.insert(wr, tostring(wu_2))
                            end
                            wy += wx
                        end
                        table.clear(wB.State)
                        if #wr > 0 then
                            error("Cleanup incomplete: " .. table.concat(wr, "; "), 0)
                        end
                        if wC[u] == wB then
                            wC[u] = nil
                        end
                    end
                    wC[u] = wB
                    return wB
                end
                v8 = function(N, O)
                    local wI = type(N) == "table" and type(N.Track) == "function"
                    assert(wI, "FeatureAPI required")
                    local wI_2 = type(O) == "table" and type(O.OnUnload) == "function"
                    assert(wI_2, "UI library required")
                    assert(type(O.Unload) == "function", "UI unload required")
                    N.Track(function()
                        if not O.Unloaded then
                            O:Unload()
                        end
                    end)
                    O:OnUnload(function()
                        N.Unload()
                    end)
                end
                uX = vv(v7_1)
            else
                pcall(fns.fn7)
                v7_1 = function(u)
                    local wC
                    local wD
                    local wB
                    wB = nil
                    wC = nil
                    wD = nil
                    local wE = u ~= ""
                    local wF = type(u) == "string" and wE
                    assert(wF, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    wC = getgenv()
                    assert(type(wC) == "table", "getgenv did not return a table")
                    local wE_1 = wC[u]
                    if wE_1 ~= nil then
                        local wF_1 = type(wE_1) == "table" and type(wE_1.Unload) == "function"
                        assert(wF_1, "Namespace is occupied")
                        wE_1.Unload()
                        assert(wC[u] == nil, "Previous instance did not release its namespace")
                    end
                    wD = {}
                    wB = { State = {}, Unloaded = false }
                    wB.Track = function(A)
                        assert(type(A) == "function", "Cleanup must be callable")
                        if wB.Unloaded then
                            A()
                        else
                            table.insert(wD, A)
                        end
                        return A
                    end
                    wB.Unload = function()
                        local wu_1
                        local wt_1
                        if wB.Unloaded then
                            return
                        end
                        wB.Unloaded = true
                        local wr = {}
                        local wy = #wD
                        local wx = -1
                        while false and wy <= 1 or true and wy >= 1 do
                            local wz = wy
                            local ws_1 = table.remove(wD, wz)
                            wt_1, wu_1 = pcall(ws_1)
                            if not wt_1 then
                                table.insert(wr, tostring(wu_1))
                            end
                            wy += wx
                        end
                        table.clear(wB.State)
                        if #wr > 0 then
                            error("Cleanup incomplete: " .. table.concat(wr, "; "), 0)
                        end
                        if wC[u] == wB then
                            wC[u] = nil
                        end
                    end
                    wC[u] = wB
                    return wB
                end
                uX = function(N, O)
                    local wI = type(N) == "table" and type(N.Track) == "function"
                    assert(wI, "FeatureAPI required")
                    local wI_1 = type(O) == "table" and type(O.OnUnload) == "function"
                    assert(wI_1, "UI library required")
                    assert(type(O.Unload) == "function", "UI unload required")
                    N.Track(function()
                        if not O.Unloaded then
                            O:Unload()
                        end
                    end)
                    O:OnUnload(function()
                        N.Unload()
                    end)
                end
                vv = v7_1(v8)
            end
            v5 = (v5 + 1) % 56
        end
    elseif wa_1 <= 6 then
        if wa_1 <= 5 then
            local wa_2 = (vector.create((v5 * 2 + 6) % 11 + 1, (v5 * 5 + 6) % 13 + 1, (v5 * 15 + 5) % 17 + 1))
            local wb_4 = (vector.create((v5 * 2 + 4) % 11 + 1, (v5 * 7 + 5) % 13 + 1, (v5 * 8 + 3) % 17 + 1))
            local JB = vector.cross(wa_2, wb_4)
            local JC = vector.dot(wa_2, wb_4)
            if vector.dot(JB, JB) + JC * JC == vector.dot(wa_2, wa_2) * vector.dot(wb_4, wb_4) then
                u7 = fns.fn27
                uT = fn653
                v3 = fn979(u1)
            else
                v3 = fn979
                u1 = fn653
                u7 = v3(uT)
            end
            v5 = (v5 + 1) % 56
        else
            if v5 * 16765981 + 9 + 1 <= v5 * 16765981 + 9 + 1 + 2 then
                vW = "OuroborosHub/UltimateTowerDefense"
                vQ = vW .. "/Macros"
                vK = { "Time", "Money" }
            else
                vK = "OuroborosHub/UltimateTowerDefense"
                vW = vK .. "/Macros"
                vQ = { "Time", "Money" }
            end
            v5 = (v5 + 22) % 56
        end
    else
        local wa_3 = (vector.create((v5 * 1 + 1) % 11 + 1, (v5 * 6 + 3) % 13 + 1, (v5 * 4 + 10) % 17 + 1))
        local JN = vector.floor(wa_3) + vector.ceil(wa_3 * -1)
        if vector.dot(JN, JN) == 5 then
            vt = 8
        else
            vD = 8
        end
        v5 = (v5 + 8) % 56
    end
until (v5 * 19 + 29) % 56 == 45
if not v9_1 then
    local v5_1 = 0
    repeat
        local v6_2 = (vector.create((v5_1 * 3 + 6) % 11 + 1, (v5_1 * 8 + 13) % 13 + 1, (v5_1 * 15 + 15) % 17 + 1))
        local v7_2 = (vector.create((v5_1 * 2 + 8) % 11 + 1, (v5_1 * 9 + 10) % 13 + 1, (v5_1 * 14 + 17) % 17 + 1))
        local JJ = vector.dot(v6_2, v7_2)
        if JJ * JJ >= vector.dot(v6_2, v6_2) * vector.dot(v7_2, v7_2) + 1 then
            u3 = type(rawget(v9_1, "Network")) ~= "table"
        else
            v9_1 = type(rawget(u3, "Network")) ~= "table"
        end
        v5_1 = (v5_1 + 5) % 8
    until (v5_1 * 7 + 6) % 8 == 1
end
if v9_1 then
    u3 = nil
end
local v5_2 = u3 ~= nil
if v5_2 then
    local v6_3 = 0
    repeat
        if (v6_3 * 1 + 4) * 13 % 4 == ((v6_3 * 1 + 4) * 13 + 9) % 4 then
            u3 = v5_2.serverType == "Match"
        else
            v5_2 = u3.serverType == "Match"
        end
        v6_3 = (v6_3 + 1) % 4
    until (v6_3 * 3 + 3) % 4 == 2
end
vJ, vx, vr, vM, vY, u2, vk, vi, uR, vV, ve, vZ, vq, uS, vP, vC, u4, vw, v4, uO, vd, vG, vp, u6, uK, vB, uN, vR, vo, u5, uQ, vU, vl, uY, wb_5, we_1, v9_2, vN, u0, vF, wd_1, wa_4, v8_1, wc_4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local v7_3 = 5
repeat
    local v6_4 = (v7_3 * 13 + 4) % 15 + 1
    if v6_4 <= 8 then
        if v6_4 <= 4 then
            if v6_4 <= 2 then
                if v6_4 <= 1 then
                    if v7_3 * 121599251 + 11 + 6 >= v7_3 * 121599251 + 11 + 6 + 4 then
                        vx = fn398
                    else
                        u6 = fn398
                    end
                    v7_3 = (v7_3 + 22) % 60
                else
                    local JD = bit32.rrotate(bit32.bxor(bit32.lrotate(v7_3, 1), string.byte(tostring(vl))), 23)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(JD, 2205862723), 12), 2897492023) == bit32.lrotate(JD, 12) then
                        uK = function(cb)
                            local yn_2
                            local ym_2
                            ym_2, yn_2 = pcall(function()
                                return cb:GetPivot()
                            end)
                            if ym_2 and yn_2 then
                                return yn_2.Position
                            end
                            return nil
                        end
                    else
                        u2 = function(cb)
                            local yn_1
                            local ym_1
                            ym_1, yn_1 = pcall(function()
                                return cb:GetPivot()
                            end)
                            if ym_1 and yn_1 then
                                return yn_1.Position
                            end
                            return nil
                        end
                    end
                    v7_3 = (v7_3 + 37) % 60
                end
            elseif v6_4 <= 3 then
                local JI = bit32.rrotate(bit32.bxor(bit32.lrotate(v7_3, 27), string.byte(tostring(vB))), 8)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(JI, 2104244289), 716407238), (bit32.bxor(bit32.band(JI, 2190723006), 2939391011))), 716407238), 2939391011) ~= JI then
                    vU = fn264
                else
                    vB = fn264
                end
                v7_3 = (v7_3 + 37) % 60
            else
                if (v7_3 * 2 + 2) * 16 % 3 == ((v7_3 * 2 + 2) * 16 + 3) % 3 then
                    uN = function(cn, co, cp, cq)
                        vx.PhantomPending[cn] = nil
                        task.spawn(function()
                            local yx = os.clock() + vt
                            local yy
                            while true do
                                local yz = (uT())
                                if yz then
                                    local yA_4 = os.clock()
                                    yz = yA_4 < (yy or yx)
                                end
                                if yz then
                                    local yz_6 = uS()
                                    if yz_6 then
                                        for i, child in ipairs(yz_6:GetChildren()) do
                                            local yz_7 = (child:IsA("Model")) and not vx.ModelToRef[child.Name]
                                            if yz_7 then
                                                local yz_8 = uK(child)
                                                local yA_5 = yz_8 and u6(yz_8, co) <= vD
                                                if yA_5 then
                                                    vx.RefToModel[cn] = child.Name
                                                    vx.ModelToRef[child.Name] = cn
                                                    vx.RefLevel[cn] = 1
                                                    vx.RefClass[cn] = cp
                                                    vx.PhantomPending[cn] = nil
                                                    return
                                                end
                                            end
                                        end
                                    end
                                    if not yy then
                                        local yz_9 = vP()
                                        if yz_9 then
                                            for i, child in ipairs(yz_9:GetChildren()) do
                                                local yz_10 = uK(child)
                                                local yA_6 = yz_10 and u6(yz_10, co) <= vD
                                                if yA_6 then
                                                    yy = os.clock() + vm
                                                    vx.PhantomPending[cn] = true
                                                    if type(cq) == "table" then
                                                        cq.ph = true
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    end
                                    task.wait(0.15)
                                    continue
                                end
                                break
                            end
                            vx.PhantomPending[cn] = nil
                        end)
                    end
                    vR = fn465
                else
                    vR = function(cn, co, cp, cq)
                        vx.PhantomPending[cn] = nil
                        task.spawn(function()
                            local yx = os.clock() + vt
                            local yy
                            while true do
                                local yz = (uT())
                                if yz then
                                    local yA_1 = os.clock()
                                    yz = yA_1 < (yy or yx)
                                end
                                if yz then
                                    local yz_1 = uS()
                                    if yz_1 then
                                        for i, child in ipairs(yz_1:GetChildren()) do
                                            local yz_2 = (child:IsA("Model")) and not vx.ModelToRef[child.Name]
                                            if yz_2 then
                                                local yz_3 = uK(child)
                                                local yA_2 = yz_3 and u6(yz_3, co) <= vD
                                                if yA_2 then
                                                    vx.RefToModel[cn] = child.Name
                                                    vx.ModelToRef[child.Name] = cn
                                                    vx.RefLevel[cn] = 1
                                                    vx.RefClass[cn] = cp
                                                    vx.PhantomPending[cn] = nil
                                                    return
                                                end
                                            end
                                        end
                                    end
                                    if not yy then
                                        local yz_4 = vP()
                                        if yz_4 then
                                            for i, child in ipairs(yz_4:GetChildren()) do
                                                local yz_5 = uK(child)
                                                local yA_3 = yz_5 and u6(yz_5, co) <= vD
                                                if yA_3 then
                                                    yy = os.clock() + vm
                                                    vx.PhantomPending[cn] = true
                                                    if type(cq) == "table" then
                                                        cq.ph = true
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    end
                                    task.wait(0.15)
                                    continue
                                end
                                break
                            end
                            vx.PhantomPending[cn] = nil
                        end)
                    end
                    uN = fn465
                end
                v7_3 = (v7_3 + 7) % 60
            end
        elseif v6_4 <= 6 then
            if v6_4 <= 5 then
                if (not vx or not uO) and (not uO or not vP) and (not vP and not vr or u6 and not vN) and (uO or not vr or not u6 and u6 or (not uO or uO or (uO or not u6))) and not ((not vx or not uO) and (not uO or not vP) and (not vP and not vr or u6 and not vN) and (uO or not vr or not u6 and u6 or (not uO or uO or (uO or not u6)))) then
                    vl = fn718
                    uQ = fn1179
                    u5 = fns.fn18
                    vo = fn156
                    vU = fn215
                else
                    vo = fn718
                    u5 = fn1179
                    uQ = fns.fn18
                    vU = fn156
                    vl = fn215
                end
                v7_3 = (v7_3 + 37) % 60
            else
                local wf_1 = {
                    "dnnq",
                    "vhftbrkad",
                    "pbbfsyogyw",
                    "sexqdrekh",
                    "tsdlppxv",
                    "sobqd",
                    "jcrqleka",
                    "dvhobhyby",
                    "tvvlkllmi",
                    "soc",
                    "chvro",
                    "udyjsj",
                    "zeru",
                    "qeugh"
                }
                if wf_1[(v7_3 * 32 + 50) % 14 + 1] < wf_1[(v7_3 * 32 + 50) % 14 + 1] then
                    v9_2 = fn1120
                    we_1 = fn673
                    uY = fn1208
                    wb_5 = fn305
                else
                    uY = fn1120
                    wb_5 = fn673
                    we_1 = fn1208
                    v9_2 = fn305
                end
                v7_3 = (v7_3 + 37) % 60
            end
        elseif v6_4 <= 7 then
            local wf_2 = (vector.create((v7_3 * 5 + 4) % 11 + 1, (v7_3 * 6 + 6) % 13 + 1, (v7_3 * 13 + 12) % 17 + 1))
            local wg_1 = (vector.create((v7_3 * 6 + 4) % 11 + 1, (v7_3 * 9 + 2) % 13 + 1, (v7_3 * 10 + 10) % 17 + 1))
            local Js = vector.dot(wf_2, wg_1)
            if Js * Js >= vector.dot(wf_2, wf_2) * vector.dot(wg_1, wg_1) + 1 then
                vP = fn497
            else
                vN = fn497
            end
            v7_3 = (v7_3 + 7) % 60
        else
            local JM = bit32.rrotate(bit32.bxor(bit32.lrotate(v7_3, 14), string.byte(tostring(vY))), 2)
            if bit32.bxor(bit32.lrotate(bit32.bxor(JM, 2775963159), 26), 1586878296) ~= bit32.lrotate(JM, 26) then
                wd_1 = fn206
                v8_1 = fn77
                u0 = fn630
                vF = fn729
                wa_4 = fn639
            else
                u0 = fn206
                vF = fn77
                wd_1 = fn630
                wa_4 = fn729
                v8_1 = fn639
            end
            v7_3 = (v7_3 + 52) % 60
        end
    elseif v6_4 <= 12 then
        if v6_4 <= 10 then
            if v6_4 <= 9 then
                local wf_3 = (vector.create((v7_3 * 1 + 8) % 11 + 1, (v7_3 * 10 + 2) % 13 + 1, (v7_3 * 2 + 11) % 17 + 1))
                local wg_2 = (vector.create((v7_3 * 7 + 7) % 11 + 1, (v7_3 * 3 + 11) % 13 + 1, (v7_3 * 6 + 7) % 17 + 1))
                local Kv = vector.dot(wf_3, wg_2)
                if Kv * Kv >= vector.dot(wf_3, wf_3) * vector.dot(wg_2, wg_2) + 1 then
                    u2 = false
                    vY = function(eb, ec)
                        local Fire
                        local zS
                        local zR
                        Fire = nil
                        zR = nil
                        zS = nil
                        local zT = uR()
                        zS = zT and zT[eb]
                        local zT_2 = type(zS) ~= "table" or not u7(zS.Fire)
                        if zT_2 then
                            return false
                        end
                        Fire = zS.Fire
                        zR = nil
                        zR = function(el, ...)
                            if not vY then
                                pcall(ec, ...)
                            end
                            return Fire(el, ...)
                        end
                        zS.Fire = zR
                        vv.Track(function()
                            if zS.Fire == zR then
                                zS.Fire = Fire
                            end
                        end)
                        return true
                    end
                    wc_4 = false
                else
                    vY = false
                    wc_4 = function(eb, ec)
                        local Fire
                        local zS
                        local zR
                        Fire = nil
                        zR = nil
                        zS = nil
                        local zT = uR()
                        zS = zT and zT[eb]
                        local zT_1 = type(zS) ~= "table" or not u7(zS.Fire)
                        if zT_1 then
                            return false
                        end
                        Fire = zS.Fire
                        zR = nil
                        zR = function(el, ...)
                            if not vY then
                                pcall(ec, ...)
                            end
                            return Fire(el, ...)
                        end
                        zS.Fire = zR
                        vv.Track(function()
                            if zS.Fire == zR then
                                zS.Fire = Fire
                            end
                        end)
                        return true
                    end
                    u2 = false
                end
                v7_3 = (v7_3 + 22) % 60
            else
                if (v7_3 * 1 + 1) * 9 % 4 == ((v7_3 * 1 + 1) * 9 + 4) % 4 then
                    vJ = v5_2
                else
                    v5_2 = vJ
                end
                v7_3 = (v7_3 + 22) % 60
            end
        elseif v6_4 <= 11 then
            local wf_4 = (vector.create((v7_3 * 4 + 8) % 11 + 1, (v7_3 * 7 + 13) % 13 + 1, (v7_3 * 7 + 2) % 17 + 1))
            local wg_3 = (vector.create((v7_3 * 7 + 5) % 11 + 1, (v7_3 * 5 + 2) % 13 + 1, (v7_3 * 6 + 10) % 17 + 1))
            local wh_1 = (vector.create((v7_3 * 1 + 4) % 11 + 1, (v7_3 * 3 + 3) % 13 + 1, (v7_3 * 7 + 9) % 17 + 1))
            local wi = (vector.create((v7_3 * 5 + 2) % 5 + 1, (v7_3 * 4 + 3) % 7 + 1, (v7_3 * 2 + 5) % 9 + 1))
            if vector.dot(vector.cross(wf_4, (vector.cross(wg_3, wh_1))), wi) == vector.dot(wg_3 * vector.dot(wf_4, wh_1) - wh_1 * vector.dot(wf_4, wg_3), wi) + 5 then
                vk = vi.State
                vk.Recording = false
                vk.Playing = false
                vk.Mode = "Time"
                vk.MacroName = ""
                vk.Steps = {}
                vk.Macro = nil
                vk.MacroLabel = "recording buffer"
                vk.Cursor = 1
                vk.Attempts = 0
                vk.StepStartedAt = 0
                vk.Status = "Idle"
                vk.Finished = false
                vk.Spent = 0
                vk.RoundStart = os.clock()
                vk.NextRef = 1
                vk.RefToModel = {}
                vk.ModelToRef = {}
                vk.RefLevel = {}
                vk.RefClass = {}
                vk.PhantomPending = {}
                vx = nil
                vM = fn197
                vi.SetNotifier = fn196
                vv = nil
                vi.SetMacroListChanged = fn95
                vr = fn568
            else
                vx = vv.State
                vx.Recording = false
                vx.Playing = false
                vx.Mode = "Time"
                vx.MacroName = ""
                vx.Steps = {}
                vx.Macro = nil
                vx.MacroLabel = "recording buffer"
                vx.Cursor = 1
                vx.Attempts = 0
                vx.StepStartedAt = 0
                vx.Status = "Idle"
                vx.Finished = false
                vx.Spent = 0
                vx.RoundStart = os.clock()
                vx.NextRef = 1
                vx.RefToModel = {}
                vx.ModelToRef = {}
                vx.RefLevel = {}
                vx.RefClass = {}
                vx.PhantomPending = {}
                vr = nil
                vk = fn197
                vv.SetNotifier = fn196
                vM = nil
                vv.SetMacroListChanged = fn95
                vi = fn568
            end
            v7_3 = (v7_3 + 7) % 60
        else
            local wf_5 = (vector.create((v7_3 * 6 + 8) % 11 + 1, (v7_3 * 4 + 10) % 13 + 1, (v7_3 * 8 + 6) % 17 + 1))
            local wg_4 = (vector.create((v7_3 * 6 + 7) % 11 + 1, (v7_3 * 5 + 5) % 13 + 1, (v7_3 * 7 + 1) % 17 + 1))
            local wh_2 = (vector.create((v7_3 * 3 + 6) % 11 + 1, (v7_3 * 6 + 1) % 13 + 1, (v7_3 * 5 + 9) % 17 + 1))
            if vector.dot(vector.cross(wf_5, wg_4), wh_2) == vector.dot(vector.cross(wg_4, wh_2), wf_5) + 4 then
                vV = fn471
                uR = fn120
                vZ = fn379
                ve = fn45
            else
                uR = fn471
                vV = fn120
                ve = fn379
                vZ = fn45
            end
            v7_3 = (v7_3 + 22) % 60
        end
    elseif v6_4 <= 14 then
        if v6_4 <= 13 then
            if v7_3 * 17950187 + 13 + 6 >= v7_3 * 17950187 + 13 + 6 + 6 then
                uS = fn748
                u4 = fn968
                vC = fn1074
                vP = fn801
                vq = function(bl)
                    local xA = not u3 or type(bl) ~= "string"
                    local xA_3
                    local xB = bl == ""
                    local xB_2
                    if xA or xB then
                        return nil
                    end
                    xA_3, xB_2 = pcall(function()
                        return u3.data:GetLoadoutTower(bl)
                    end)
                    return xA_3 and xB_2 or nil
                end
            else
                vq = fn748
                uS = fn968
                vP = fn1074
                vC = fn801
                u4 = function(bl)
                    local xA = not u3 or type(bl) ~= "string"
                    local xA_1
                    local xB = bl == ""
                    local xB_1
                    if xA or xB then
                        return nil
                    end
                    xA_1, xB_1 = pcall(function()
                        return u3.data:GetLoadoutTower(bl)
                    end)
                    return xA_1 and xB_1 or nil
                end
            end
            v7_3 = (v7_3 + 52) % 60
        else
            if (v7_3 * 3 + 2) * 5 % 4 == ((v7_3 * 3 + 2) * 5 + 15) % 4 then
                v9_2 = function(bt)
                    local xH
                    xH = nil
                    local xJ_3
                    local xI_3
                    xH = u4(bt)
                    if not xH then
                        return nil
                    end
                    xI_3, xJ_3 = pcall(function()
                        return xH.classId
                    end)
                    local xK = xI_3 and type(xJ_3) == "string"
                    local xJ_4 = xK and xJ_3
                    local xO = if xJ_4 then 1 else 0
                    local xM = 3328 * xO + 2244 * (1 - xO)
                    local xN = 678 * xO + 1638 * (1 - xO)
                    if not ((xM * 101 + xN * 2846 + xM * xN) % 16777213 == 4522100) then
                        xJ_4 = nil
                    end
                    return xJ_4
                end
            else
                vw = function(bt)
                    local xH
                    xH = nil
                    local xJ_1
                    local xI_1
                    xH = u4(bt)
                    if not xH then
                        return nil
                    end
                    xI_1, xJ_1 = pcall(function()
                        return xH.classId
                    end)
                    local xK = xI_1 and type(xJ_1) == "string"
                    local xJ_2 = xK and xJ_1
                    local xO = if xJ_2 then 1 else 0
                    local xM = 3328 * xO + 2244 * (1 - xO)
                    local xN = 678 * xO + 1638 * (1 - xO)
                    if not ((xM * 101 + xN * 2846 + xM * xN) % 16777213 == 4522100) then
                        xJ_2 = nil
                    end
                    return xJ_2
                end
            end
            v7_3 = (v7_3 + 52) % 60
        end
    else
        local v6_5 = {
            "jpih",
            "oqbhcvypp",
            "glnyyi",
            "xoirfjr",
            "qby",
            "tlckynwmkk",
            "qrq",
            "bskrcm",
            "hklfw",
            "hsstkxp"
        }
        if v6_5[(v7_3 * 19 + 59) % 10 + 1] <= v6_5[(v7_3 * 19 + 59) % 10 + 1] then
            v4 = fns.fn15
            uO = function(bM)
                local x1_2
                local x0 = not u3
                local x0_2
                local x6 = if x0 then 1 else 0
                local x4 = 903 * x6 + 2946 * (1 - x6)
                local x5 = 1204 * x6 + 1920 * (1 - x6)
                if not ((x4 * 2553 + x5 * 865 + x4 * x5) % 16777213 == 4434031) then
                    x0 = type(bM) ~= "string"
                end
                if x0 then
                    return nil
                end
                x0_2, x1_2 = pcall(function()
                    return u3.Item:FromId(bM):GetCashCosts()
                end)
                local x2 = x0_2 and type(x1_2) == "table"
                if x2 then
                    return x1_2
                end
                return nil
            end
            vd = function(bV)
                local x8_2
                local x7 = not u3
                local x7_3
                local yd = if x7 then 1 else 0
                local yb = 1272 * yd + 1684 * (1 - yd)
                local yc = 1963 * yd + 2866 * (1 - yd)
                if not ((yb * 1322 + yc * 296 + yb * yc) % 16777213 == 4759568) then
                    x7 = type(bV) ~= "string"
                end
                if x7 then
                    return nil
                end
                x7_3, x8_2 = pcall(function()
                    return u3.Item:FromId(bV):GetMaxLevel()
                end)
                local x9 = x7_3 and tonumber(x8_2)
                return x9 or nil
            end
            vG = fn788
            vp = fn149
        else
            vp = fns.fn15
            vG = function(bM)
                local x1_1
                local x0 = not u3
                local x0_1
                local x6 = if x0 then 1 else 0
                local x4 = 903 * x6 + 2946 * (1 - x6)
                local x5 = 1204 * x6 + 1920 * (1 - x6)
                if not ((x4 * 2553 + x5 * 865 + x4 * x5) % 16777213 == 4434031) then
                    x0 = type(bM) ~= "string"
                end
                if x0 then
                    return nil
                end
                x0_1, x1_1 = pcall(function()
                    return u3.Item:FromId(bM):GetCashCosts()
                end)
                local x2 = x0_1 and type(x1_1) == "table"
                if x2 then
                    return x1_1
                end
                return nil
            end
            v4 = function(bV)
                local x8_1
                local x7 = not u3
                local x7_1
                local yd = if x7 then 1 else 0
                local yb = 1272 * yd + 1684 * (1 - yd)
                local yc = 1963 * yd + 2866 * (1 - yd)
                if not ((yb * 1322 + yc * 296 + yb * yc) % 16777213 == 4759568) then
                    x7 = type(bV) ~= "string"
                end
                if x7 then
                    return nil
                end
                x7_1, x8_1 = pcall(function()
                    return u3.Item:FromId(bV):GetMaxLevel()
                end)
                local x9 = x7_1 and tonumber(x8_1)
                return x9 or nil
            end
            vd = fn788
            uO = fn149
        end
        v7_3 = (v7_3 + 22) % 60
    end
until (v7_3 * 59 + 25) % 60 == 5
if vJ then
    v7_4, wf_6 = nil, nil
    local v6_6 = wc_4("PlayerPlaceTower", wb_5)
    if (v6_6 or v6_6 or not v6_6 and v7_4) and (not v7_4 or v7_4 or (not v7_4 or not v7_4)) or not ((v6_6 or v6_6 or not v6_6 and v7_4) and (not v7_4 or v7_4 or (not v7_4 or not v7_4))) then
        v7_4 = wc_4("PlayerUpgradeTower", we_1)
    else
        v7_4("PlayerUpgradeTower", wc_4)
    end
    if not v6_6 and v6_6 and (v6_6 or wf_6) and (not wf_6 and v7_4 and (not v7_4 and 9)) or v6_6 or (not wf_6 and wf_6 and false and ((not v7_4 or v6_6) and (v6_6 and not v7_4)) or (not wf_6 and not v7_4 and (not v6_6 and v7_4) or (not v7_4 or not v7_4) and 9)) or not (not v6_6 and v6_6 and (v6_6 or wf_6) and (not wf_6 and v7_4 and (not v7_4 and 9)) or v6_6 or (not wf_6 and wf_6 and false and ((not v7_4 or v6_6) and (v6_6 and not v7_4)) or (not wf_6 and not v7_4 and (not v6_6 and v7_4) or (not v7_4 or not v7_4) and 9))) then
        wf_6 = wc_4("PlayerSellTower", v9_2)
    else
        wf_6("PlayerSellTower", wc_4)
    end
    wc_4("PlayerSelectPhantomPath", wd_1)
    wc_4("PlayerMovePhantomTower", wa_4)
    wc_4("PlayerCancelPhantomTower", v8_1)
    u2 = v6_6 and v7_4 and wf_6
    if u7(u3.FireNetwork) then
        v_, vS = nil, nil
        local v5_4 = 9
        repeat
            local v6_8 = (v5_4 * 1 + 0) % 3 + 1
            if v6_8 <= 2 then
                if v6_8 <= 1 then
                    local v6_9 = (vector.create((v5_4 * 2 + 3) % 11 + 1, (v5_4 * 6 + 10) % 13 + 1, (v5_4 * 15 + 14) % 17 + 1))
                    local v7_5 = (vector.create((v5_4 * 6 + 4) % 11 + 1, (v5_4 * 3 + 10) % 13 + 1, (v5_4 * 2 + 16) % 17 + 1))
                    local v8_2 = (vector.create((v5_4 * 2 + 1) % 5 + 1, (v5_4 * 2 + 4) % 7 + 1, (v5_4 * 5 + 1) % 9 + 1))
                    if math.abs((vector.angle(v6_9, v7_5, v8_2))) - math.abs((vector.angle(v7_5, v6_9, v8_2))) == 3 then
                        u3 = v_.FireNetwork
                    else
                        v_ = u3.FireNetwork
                    end
                    v5_4 = (v5_4 + 10) % 12
                else
                    if (not v5_4 or v_ or not v_ and not v5_4) and (v5_4 and not v_ or (v5_4 or v_)) or not vS and not v_ and (v_ and v_) and ((not vS or v_) and (not v5_4 or v_)) or not ((not v5_4 or v_ or not v_ and not v5_4) and (v5_4 and not v_ or (v5_4 or v_)) or not vS and not v_ and (v_ and v_) and ((not vS or v_) and (not v5_4 or v_))) then
                        vS = fn608
                    else
                        v_ = fn608
                    end
                    v5_4 = (v5_4 + 1) % 12
                end
            else
                if (v5_4 * 1 + 7) * 21 % 4 == ((v5_4 * 1 + 7) * 21 + 6) % 4 then
                    vv.FireNetwork = u3
                    vS.Track(fn325)
                else
                    u3.FireNetwork = vS
                    vv.Track(fn325)
                end
                v5_4 = (v5_4 + 10) % 12
            end
        until (v5_4 * 5 + 3) % 12 == 9
    end
end
uU, vn, uM, vE, vh, uJ = nil, nil, nil, nil, nil, nil
local v6_10 = 2
repeat
    if (v6_10 * 1 + 0) % 2 + 1 <= 1 then
        local v5_6 = {
            "glyewok",
            "gqvbmjhyajf",
            "oupwbdoat",
            "vluhqbhiantb",
            "luf",
            "cxwxwnjzbiyj",
            "ihevu",
            "wuzicj",
            "kelyevy",
            "ohlxp",
            "vwtq",
            "zvvpldnakdcc",
            "gyzcthedkdqo",
            "kotvluul"
        }
        if v5_6[(v6_10 * 62 + 60) % 14 + 1] < v5_6[(v6_10 * 62 + 60) % 14 + 1] then
            vV = vn()
            vE = fn240
            uM = fn636
            uU = false
        else
            uU = vV()
            uM = fn240
            vE = fn636
            vn = false
        end
        v6_10 = (v6_10 + 3) % 16
    else
        local v5_7 = (vector.create((v6_10 * 4 + 8) % 11 + 1, (v6_10 * 10 + 3) % 13 + 1, (v6_10 * 9 + 3) % 17 + 1))
        local v7_6 = (vector.create((v6_10 * 6 + 5) % 11 + 1, (v6_10 * 8 + 4) % 13 + 1, (v6_10 * 1 + 6) % 17 + 1))
        local v8_3 = (vector.create((v6_10 * 6 + 1) % 11 + 1, (v6_10 * 4 + 1) % 13 + 1, (v6_10 * 11 + 15) % 17 + 1))
        local v9_3 = (vector.create((v6_10 * 1 + 7) % 5 + 1, (v6_10 * 5 + 7) % 7 + 1, (v6_10 * 3 + 7) % 9 + 1))
        if vector.dot(vector.cross(v5_7, (vector.cross(v7_6, v8_3))), v9_3) == vector.dot(v7_6 * vector.dot(v5_7, v8_3) - v8_3 * vector.dot(v5_7, v7_6), v9_3) + 2 then
            uJ = fn58
            vh = fn666
        else
            vh = fn58
            uJ = fn666
        end
        v6_10 = (v6_10 + 7) % 16
    end
until (v6_10 * 3 + 10) % 16 == 14
if vJ then
    local v5_8 = 7
    repeat
        local v6_11 = {
            "ukmjknllvv",
            "lapkx",
            "mjldl",
            "dkmidvoiyo",
            "lfftngl",
            "lbydadxxmbis",
            "cvapqwypvhwn",
            "kmfa",
            "yvyrgembj",
            "glibmfyvks",
            "vxzxe",
            "sjcwyjztmph",
            "mczjbjgmo"
        }
        if v6_11[(v5_8 * 39 + 38) % 13 + 1] <= v6_11[(v5_8 * 39 + 38) % 13 + 1] then
            pcall(function()
                local connection
                connection = u3.root.roundStats:GetPropertyChangedSignal("gameStarted"):Connect(function()
                    if vZ() then
                        uJ()
                    end
                end)
                vv.Track(function()
                    connection:Disconnect()
                end)
            end)
            pcall(function()
                local connection
                local remoteEvent = u3.Network.Gameover.remoteEvent
                connection = remoteEvent.OnClientEvent:Connect(vh)
                vv.Track(function()
                    connection:Disconnect()
                end)
            end)
            vn = vq()
        else
            pcall(function()
                local connection
                connection = u3.root.roundStats:GetPropertyChangedSignal("gameStarted"):Connect(function()
                    if vZ() then
                        uJ()
                    end
                end)
                vv.Track(function()
                    connection:Disconnect()
                end)
            end)
            pcall(function()
                local connection
                local remoteEvent = u3.Network.Gameover.remoteEvent
                connection = remoteEvent.OnClientEvent:Connect(vh)
                vv.Track(function()
                    connection:Disconnect()
                end)
            end)
            vq = vn()
        end
        v5_8 = (v5_8 + 6) % 8
    until (v5_8 * 5 + 7) % 8 == 0
end
vu, uP, vf, u8, v2, vA, vz, vL, u9, vH, v0, uL, uZ, v1, uV, u_, v6_12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
u8 = fn230
v2 = fns.fn38
vA = function(fr, ...)
    local Af
    local Ae
    Ae = nil
    Af = nil
    local Ag = uR()
    Af = Ag and Ag[fr]
    local Ag_1 = type(Af) ~= "table" or not u7(Af.Fire)
    if Ag_1 then
        return false
    end
    Ae = table.pack(...)
    vY = true
    local Ag_2 = pcall(function()
        Af.Fire(Af, table.unpack(Ae, 1, Ae.n))
    end)
    vY = false
    return Ag_2
end
vz = function(fE, ...)
    local Am
    local An = not u3 or not u7(u3.FireNetwork)
    if An then
        return false
    end
    Am = table.pack(...)
    vY = true
    local An_1 = pcall(function()
        u3.FireNetwork(fE, table.unpack(Am, 1, Am.n))
    end)
    vY = false
    return An_1
end
vL = fn973
u9 = fn1018
vH = fn352
v0 = fn741
uL = fn870
vv.GetStatus = fn78
vv.MatchText = fn330
vv.SetMode = fn107
vv.SetRecording = fn516
vv.SetPlaying = fn98
vv.SetMacroName = fn111
vv.ClearRecording = fn1149
vv.CurrentMacro = fn286
uZ = fn625
v1 = fn139
uV = fn533
vv.ListMacros = fn799
u_ = fn986
vv.SaveMacro = function()
    local json
    if #vx.Steps == 0 then
        return false, "Record something first"
    end
    local Cg = uV(vx.MacroName)
    if Cg == "" then
        Cg = u_()
    end
    if not v1() then
        return false, "Your executor cannot write files"
    end
    json = nil
    local Ch = pcall(function()
        json = HttpService:JSONEncode(vx.Steps)
    end)
    if not Ch or not json then
        return false, "Failed to encode the macro"
    end
    local Ch_1 = pcall(writefile, vQ .. "/" .. Cg .. ".json", json)
    if not Ch_1 then
        return false, "Failed to save the macro"
    end
    vx.MacroName = Cg
    vx.MacroLabel = Cg
    vx.Macro = table.clone(vx.Steps)
    vE()
    local format = string.format
    local Ci_1 = #vx.Steps
    local Ck = #vx.Steps == 1 and "" or "s"
    return true, format("Saved %s with %d action%s", Cg, Ci_1, Ck)
end
vu = {
    Place = true,
    Upgrade = true,
    Sell = true,
    Target = true,
    Ability = true,
    PhantomPath = true,
    PhantomMove = true,
    PhantomCancel = true
}
vv.LoadMacro = function(iF)
    local Cn
    local Co
    local data
    local Cp = uV(iF)
    if Cp == "" then
        return false, "Pick a macro first"
    elseif not v1() then
        return false, "Your executor cannot read files"
    else
        Cn = vQ .. "/" .. Cp .. ".json"
        local Cq = (u7(isfile)) and not isfile(Cn)
        if Cq then
            return false, "That macro is gone"
        end
        Co = nil
        local Cq_1 = pcall(function()
            Co = readfile(Cn)
        end)
        local Cr = not Cq_1
        local CM = if Cr then 1 else 0
        local CK = 349 * CM + 1999 * (1 - CM)
        local CL = 2603 * CM + 1316 * (1 - CM)
        if not ((CK * 134 + CL * 3102 + CK * CL) % 16777213 == 9029719) then
            Cr = type(Co) ~= "string"
        end
        if Cr then
            return false, "Failed to read the macro"
        end
        data = nil
        local Cq_2 = pcall(function()
            data = HttpService:JSONDecode(Co)
        end)
        local Cr_1 = not Cq_2 or type(data) ~= "table"
        if Cr_1 then
            return false, "That file is not a macro"
        end
        local Cq_3 = {}
        for i, v in ipairs(data) do
            local Cr_2 = type(v) == "table" and vu[v.act]
            if Cr_2 then
                local insert = table.insert
                local act = v.act
                local Ct = tonumber(v.ref)
                local Cu = tonumber(v.tref)
                local Cv = type(v.slot) == "string" and v.slot
                local Cw = Cv or nil
                local Cv_1 = type(v.cls) == "string" and v.cls
                local Cx = Cv_1 or nil
                local Cv_2 = type(v.mode) == "string" and v.mode
                local Cy = Cv_2 or nil
                local Cv_3 = v.untargeted == true
                local Cz = v.ph == true
                local CA = tonumber(v.lvl)
                local CB = tonumber(v.path)
                local CC = (tonumber(v.rot)) or 0
                local CD = (tonumber(v.t)) or 0
                local CE = (tonumber(v.w)) or 0
                local CF = (tonumber(v.s)) or 0
                local CG = (tonumber(v.x)) or 0
                local CH = (tonumber(v.y)) or 0
                local CI = (tonumber(v.z)) or 0
                insert(Cq_3, {
                    act = act,
                    ref = Ct,
                    tref = Cu,
                    slot = Cw,
                    cls = Cx,
                    mode = Cy,
                    untargeted = Cv_3,
                    ph = Cz,
                    lvl = CA,
                    path = CB,
                    rot = CC,
                    t = CD,
                    w = CE,
                    s = CF,
                    x = CG,
                    y = CH,
                    z = CI,
                    tx = tonumber(v.tx),
                    ty = tonumber(v.ty),
                    tz = tonumber(v.tz)
                })
            end
        end
        if #Cq_3 == 0 then
            return false, "That macro has no usable actions"
        end
        vx.Macro = Cq_3
        vx.MacroLabel = Cp
        vE()
        return true, string.format("Loaded %s (%d actions)", Cp, #Cq_3)
    end
end
vv.DeleteMacro = fn1187
uP = task.spawn(worker)
vv.Track(fn505)
vf = task.spawn(worker2)
if not uL and false and (not vL or vH) or v6_12 and not v6_12 and (false and vL) or not (not uL and false and (not vL or vH) or v6_12 and not v6_12 and (false and vL)) then
    vv.Track(fn377)
    v6_12 = function()
        local HW
        local HV
        local onDiscord
        onDiscord = nil
        HV = nil
        HW = nil
        local HM, HN, Library, Toggles, HR, HS, ThemeManager, Options, SaveManager
        HN = "https://rscripts.net/@Ouroboros"
        HV = "https://discord.gg/synapsex"
        HM = "Ultimate Tower Defense"
        HR = "https://ouroboros-hub-rbx.web.app/"
        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
        Toggles = Library.Toggles
        Options = Library.Options
        uX(vv, Library)
        HW = function(jL, jM)
            local C7 = (u7(setclipboard)) and setclipboard
            local C8 = C7
            if not C8 then
                local C7_3 = (u7(toclipboard)) and toclipboard
                C8 = C7_3 or nil
            end
            local C7_4 = C8
            if not C7_4 then
                Library:Notify("Clipboard is unavailable")
                return
            end
            local C8_2 = pcall(C7_4, jL)
            if C8_2 then
                Library:Notify(jM)
            else
                Library:Notify("Failed to copy")
            end
        end
        onDiscord = function()
            HW(HV, "Copied Discord invite to clipboard")
        end
        local Window = Library:CreateWindow({
            Title = "Ouroboros",
            Font = Enum.Font.BuilderSans,
            Footer = { { Text = HV, Copyable = true }, "|", HM, "|", "v0.2" },
            Icon = 78539693571783,
            NotifySide = "Right",
            ShowCustomCursor = false,
            CornerRadius = 0,
            SidebarCompacted = true,
            TabSwipeFrom = "bottom",
            Animations = { TabSwitch = true }
        })
        Window:SetGlow(false)
        HS = {
            Info = Window:AddTab("Info", "info"),
            Main = Window:AddTab("Main", "gamepad-2"),
            Player = Window:AddTab("Player", "person-standing"),
            Settings = Window:AddTab("Settings", "settings")
        }
        local function HY_6(j0)
            local DiscordGroup = j0:AddLeftGroupbox("Discord")
            DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
            DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
        end
        for k, v in HS do
            if k ~= "Info" then
                HY_6(v)
            end
        end
        local function HZ()
            local k6
            vv.SetNotifier(function(j7, j8)
                if not Library.Unloaded then
                    Library:Notify(j7, j8)
                end
            end)
            vv.Track(function()
                vv.SetNotifier(nil)
            end)
            local MacroGroup = HS.Main:AddLeftGroupbox("Macro", "list-video")
            local Label2 = MacroGroup:AddLabel(vv.GetStatus(), true)
            MacroGroup:AddDivider()
            MacroGroup:AddInput("MacroName", {
                Text = "Macro Name",
                Default = "",
                Finished = true,
                AllowEmpty = true,
                Callback = function(kf)
                    vv.SetMacroName(kf)
                end
            })
            local SavedMacroDropdown
            local function ki(kj, kk)
                local Df = vv.ListMacros()
                if #Df == 0 then
                    Df = { "None" }
                end
                SavedMacroDropdown:SetValues(Df)
                local Dg = type(kk) == "string" and table.find(Df, kk)
                if Dg then
                    pcall(function()
                        SavedMacroDropdown:SetValue(kk)
                    end)
                end
                if kj then
                    Library:Notify("Refreshed saved macros")
                end
            end
            SavedMacroDropdown = MacroGroup:AddDropdown("SavedMacro", {
                Text = "Saved Macros",
                Values = { "None" },
                Default = 1,
                AllowNull = true,
                Callback = function(ks)
                    local Di = ks == ""
                    local Di_5
                    local Dj = type(ks) ~= "string" or Di
                    local Dj_2
                    if Dj or ks == "None" then
                        return
                    end
                    if ks == vv.CurrentMacro() then
                        return
                    end
                    Di_5, Dj_2 = vv.LoadMacro(ks)
                    local Di_6 = Di_5 and 5 or 6
                    Library:Notify(Dj_2, Di_6)
                end
            })
            MacroGroup:AddButton({
                Text = "Refresh Saved Macros",
                Func = function()
                    ki(true)
                end
            })
            MacroGroup:AddToggle("RecordMacro", {
                Text = "Record Macro",
                Default = false,
                Tooltip = "Saves on stop, or when the round ends.",
                Callback = function(kz)
                    vv.SetRecording(kz)
                end
            })
            MacroGroup:AddButton({
                Text = "Delete Macro",
                Func = function()
                    local Dq_2
                    local Dp_2
                    Dq_2, Dp_2 = vv.DeleteMacro(Options.SavedMacro.Value)
                    local Ds = Dq_2 and 5 or 6
                    Library:Notify(Dp_2, Ds)
                    if Dq_2 then
                        ki(false)
                    end
                end
            })
            MacroGroup:AddButton({
                Text = "Clear Recording",
                Func = function()
                    vv.ClearRecording()
                    Library:Notify("Cleared the recording buffer")
                end
            })
            MacroGroup:AddDivider("Playback")
            MacroGroup:AddDropdown("RecordMode", {
                Text = "Record Mode",
                Values = vK,
                Default = 1,
                Tooltip = "Time: replay by round clock. Money: replay by cash used.",
                Callback = function(kM)
                    vv.SetMode(kM)
                end
            })
            MacroGroup:AddToggle("PlayMacro", {
                Text = "Play Macro",
                Default = false,
                Tooltip = "Runs the loaded macro.",
                Callback = function(kO)
                    vv.SetPlaying(kO)
                end
            })
            local MatchGroup = HS.Main:AddRightGroupbox("Match", "swords")
            local Label = MatchGroup:AddLabel(vv.MatchText(), true)
            vv.SetMacroListChanged(function(kS)
                if Library.Unloaded then
                    return
                end
                ki(false, kS)
                local Du = type(kS) == "string" and Options.MacroName
                if Du then
                    pcall(function()
                        Options.MacroName:SetValue(kS)
                    end)
                end
            end)
            vv.Track(function()
                vv.SetMacroListChanged(nil)
            end)
            ki(false)
            k6 = task.spawn(function()
                while not Library.Unloaded do
                    pcall(function()
                        Label2:SetText(vv.GetStatus())
                        Label:SetText(vv.MatchText())
                    end)
                    task.wait(0.25)
                end
            end)
            vv.Track(function()
                if coroutine.status(k6) ~= "dead" then
                    task.cancel(k6)
                end
            end)
        end
        HZ()
        local function HY_7()
            local D7
            local D3
            local D_
            local DY
            DY = nil
            D_ = nil
            D3 = nil
            D7 = nil
            local Label2, Label3, DZ, D0, D1, Label, D4, D5, D6
            D_ = function(la)
                return (tostring(la):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
            end
            D7 = function(lc, ld)
                return string.format('<font color="%s">%s</font>', ld, D_(lc))
            end
            D0 = function(lg, lh, li)
                return string.format("<b>%s</b> %s %s", lg, D7("-", "#5a6070"), D7(lh, li))
            end
            DZ = "#7fd47f"
            D6 = "#e8a34d"
            local D8 = {}
            local D9 = "#8b93a3"
            local Ea = "#6ec1ff"
            if not u3 then
                table.insert(D8, "game framework")
            elseif not vJ then
                table.insert(D8, "match server")
            elseif not u2 then
                table.insert(D8, "action recording")
            end
            if not uZ() then
                table.insert(D8, "macro files")
            end
            local Eb = #D8 == 0 and "ready"
            local Ec = Eb or "limited: " .. table.concat(D8, ", ")
            D4 = "Unknown"
            pcall(function()
                local DC_2
                local DB_3
                if u7(identifyexecutor) then
                    DC_2, DB_3 = identifyexecutor()
                    local DD = DC_2 ~= ""
                    local DE = type(DC_2) == "string" and DD
                    if DE then
                        local DD_2 = type(DB_3) == "string" and DB_3 ~= "" and DC_2 .. " " .. DB_3
                        local DB_4 = DD_2
                        local DL = if DB_4 then 1 else 0
                        local DJ = 2445 * DL + 2356 * (1 - DL)
                        local DK = 1675 * DL + 1185 * (1 - DL)
                        if not ((DJ * 3449 + DK * 960 + DJ * DK) % 16777213 == 14136180) then
                            DB_4 = DC_2
                        end
                        D4 = DB_4
                    end
                end
            end)
            DY = os.clock()
            D5 = function()
                local DM = math.floor(os.clock() - DY)
                if DM < 60 then
                    return DM .. "s"
                elseif DM < 3600 then
                    return string.format("%dm %ds", DM // 60, DM % 60)
                else
                    return string.format("%dh %dm", DM // 3600, DM % 3600 // 60)
                end
            end
            local UserGroup = HS.Info:AddLeftGroupbox("User", "circle-user")
            UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
            UserGroup:AddLabel(D0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, DZ), true)
            UserGroup:AddLabel(D0("UserId", tostring(LocalPlayer.UserId), Ea), true)
            UserGroup:AddLabel(D0("Executor", D4 .. "  " .. Ec, DZ), true)
            UserGroup:AddDivider()
            Label3 = UserGroup:AddLabel(D0("Session", D5(), D6), true)
            UserGroup:AddDivider()
            UserGroup:AddButton({
                Text = "Copy Username",
                Func = function()
                    HW(LocalPlayer.Name, "Copied username")
                end
            })
            UserGroup:AddButton({
                Text = "Copy Profile Link",
                Func = function()
                    HW("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                end
            })
            local SessionGroup = HS.Info:AddRightGroupbox("Session", "signal")
            SessionGroup:AddLabel(D0("Game", HM, Ea), true)
            Label2 = SessionGroup:AddLabel(D0("Players", "0/0", DZ), true)
            D1 = tostring(game.JobId)
            local Ea_3 = #D1 > 18 and string.sub(D1, 1, 18) .. "..."
            local Eb_4 = Ea_3 or D1
            SessionGroup:AddLabel(D0("Job", Eb_4, D9), true)
            Label = SessionGroup:AddLabel(D0("Ping", "0 ms", D6), true)
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
                    HW(D1, "Copied Job ID")
                end
            })
            D3 = task.spawn(function()
                local DS_2
                local DR_3
                while true do
                    task.wait(1)
                    if Library.Unloaded then
                        break
                    end
                    Label3:SetText(D0("Session", D5(), D6))
                    Label2:SetText(D0("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), DZ))
                    DR_3, DS_2 = pcall(function()
                        return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                    end)
                    local DR_4 = DR_3 and DS_2 .. " ms" or "n/a"
                    Label:SetText(D0("Ping", DR_4, D6))
                end
            end)
            vv.Track(function()
                if coroutine.status(D3) ~= "dead" then
                    task.cancel(D3)
                end
            end)
            local SocialsGroup = HS.Info:AddRightGroupbox("Socials", "link")
            SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
            SocialsGroup:AddButton({
                Text = "Rscripts",
                Func = function()
                    HW(HN, "Copied Rscripts profile")
                end
            })
            SocialsGroup:AddButton({
                Text = "Website",
                Func = function()
                    HW(HR, "Copied website link")
                end
            })
        end
        HY_7()
        local function HY_8()
            local mC
            local mA
            local mB
            local mD
            local MovementGroup = HS.Player:AddLeftGroupbox("Movement", "footprints")
            MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
            MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
            MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
            MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
            MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
            local FlyGroup = HS.Player:AddRightGroupbox("Fly", "feather")
            FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
            FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
            mA = {}
            mD = {}
            mC = {}
            mB = {}
            local mz = {}
            local function mE()
                for k, v in mA do
                    if k.Parent then
                        k.CanCollide = v
                    end
                end
                table.clear(mA)
            end
            local function mI()
                for k, v in mB do
                    if k.Parent then
                        k.WalkSpeed = v
                    end
                end
                table.clear(mB)
            end
            local function mM()
                for k, v in mC do
                    if k.Parent then
                        k.PlatformStand = v
                    end
                end
                table.clear(mC)
            end
            local function mQ(mR)
                if not mR:IsA("ProximityPrompt") then
                    return
                end
                if mD[mR] == nil then
                    mD[mR] = {
                        HoldDuration = mR.HoldDuration,
                        MaxActivationDistance = mR.MaxActivationDistance,
                        RequiresLineOfSight = mR.RequiresLineOfSight
                    }
                end
                mR.HoldDuration = 0
                mR.MaxActivationDistance = 50
                mR.RequiresLineOfSight = false
            end
            local function mT()
                for k, v in mD do
                    if k.Parent then
                        k.HoldDuration = v.HoldDuration
                        k.MaxActivationDistance = v.MaxActivationDistance
                        k.RequiresLineOfSight = v.RequiresLineOfSight
                    end
                end
                table.clear(mD)
            end
            Toggles.Fly:OnChanged(function()
                if not Toggles.Fly.Value then
                    mM()
                end
            end)
            Toggles.WalkSpeedEnabled:OnChanged(function()
                if not Toggles.WalkSpeedEnabled.Value then
                    mI()
                end
            end)
            Toggles.NoClip:OnChanged(function()
                if not Toggles.NoClip.Value then
                    mE()
                end
            end)
            Toggles.InstantProximityPrompt:OnChanged(function()
                if Toggles.InstantProximityPrompt.Value then
                    for i, descendant in u1:GetDescendants() do
                        pcall(mQ, descendant)
                    end
                else
                    mT()
                end
            end)
            table.insert(mz, u1.DescendantAdded:Connect(function(nb)
                if Toggles.InstantProximityPrompt.Value then
                    mQ(nb)
                end
            end))
            table.insert(mz, RunService.Stepped:Connect(function()
                if Library.Unloaded then
                    return
                end
                local Character = LocalPlayer.Character
                if Toggles.NoClip.Value and Character then
                    for i, descendant in Character:GetDescendants() do
                        if descendant:IsA("BasePart") then
                            if mA[descendant] == nil then
                                mA[descendant] = descendant.CanCollide
                            end
                            descendant.CanCollide = false
                        end
                    end
                end
            end))
            table.insert(mz, UserInputService.JumpRequest:Connect(function()
                if Library.Unloaded then
                    return
                end
                local Character = LocalPlayer.Character
                local E1 = Character and Character:FindFirstChildOfClass("Humanoid")
                if Toggles.InfJump.Value and E1 then
                    E1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end))
            table.insert(mz, RunService.RenderStepped:Connect(function(nx)
                if Library.Unloaded then
                    return
                end
                local Character = LocalPlayer.Character
                local E4 = Character and Character:FindFirstChildOfClass("Humanoid")
                local E5 = Character
                if E5 then
                    E5 = Character:FindFirstChild("HumanoidRootPart")
                end
                local E3_2 = E5
                local CurrentCamera = u1.CurrentCamera
                if Toggles.WalkSpeedEnabled.Value and E4 then
                    if mB[E4] == nil then
                        mB[E4] = E4.WalkSpeed
                    end
                    E4.WalkSpeed = Options.WalkSpeed.Value
                end
                if Toggles.Fly.Value and E3_2 and E4 and CurrentCamera then
                    if mC[E4] == nil then
                        mC[E4] = E4.PlatformStand
                    end
                    E4.PlatformStand = true
                    local E5_8 = Vector3.zero
                    if not UserInputService:GetFocusedTextBox() then
                        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                            E5_8 += CurrentCamera.CFrame.LookVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                            E5_8 -= CurrentCamera.CFrame.LookVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                            E5_8 -= CurrentCamera.CFrame.RightVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                            E5_8 += CurrentCamera.CFrame.RightVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                            E5_8 += Vector3.new(0, 1, 0)
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                            E5_8 -= Vector3.new(0, 1, 0)
                        end
                    end
                    E3_2.AssemblyLinearVelocity = Vector3.zero
                    if E5_8.Magnitude > 0 then
                        E3_2.CFrame = E3_2.CFrame + E5_8.Unit * Options.FlySpeed.Value * nx
                    end
                end
            end))
            vv.Track(function()
                for k, v in mz do
                    v:Disconnect()
                end
                mE()
                mI()
                mM()
                mT()
            end)
        end
        HY_8()
        local function HY_9()
            local Gu, Gv, Gw, Gx, Gy, Gz, GA, GB, GC, GD, GE, GF, GH, Label
            Gu = {}
            GC = {}
            Gz = nil
            GA = 0
            Gw = 0
            GE = false
            GF = os.clock()
            local MenuGroup = HS.Settings:AddLeftGroupbox("Menu", "logs")
            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
            Label = MenuGroup:AddLabel("AFK triggers: 0")
            Gx = function()
                local CurrentCamera
                CurrentCamera = u1.CurrentCamera
                local Fk = not CurrentCamera or not u7(VirtualUser.CaptureController) or not u7(VirtualUser.ClickButton2)
                if Fk then
                    return false
                end
                local Fk_2 = pcall(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                end)
                if not Fk_2 then
                    return false
                end
                GA += 1
                GF = os.clock()
                pcall(function()
                    Label:SetText("AFK triggers: " .. GA)
                end)
                return true
            end
            GH = function(og)
                pcall(function()
                    GuiService:SetGameplayPausedNotificationEnabled(not og)
                end)
                pcall(function()
                    local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                    if RobloxNetworkPauseNotificati then
                        RobloxNetworkPauseNotificati.Enabled = not og
                    end
                end)
                if not og then
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
            GD = function(oA)
                local ClassName = oA.ClassName
                local Fu = ClassName == "Trail"
                local Fv = ClassName == "ParticleEmitter"
                local FA = if Fv then 1 else 0
                local Fy = 2593 * FA + 2019 * (1 - FA)
                local Fz = 3483 * FA + 353 * (1 - FA)
                if not ((Fy * 867 + Fz * 508 + Fy * Fz) % 16777213 == 13048914) then
                    Fv = Fu
                end
                if Fv or ClassName == "Smoke" or ClassName == "Fire" or ClassName == "Sparkles" or ClassName == "Explosion" or ClassName == "Beam" then
                    if Gu[oA] == nil then
                        Gu[oA] = oA.Enabled
                    end
                    pcall(function()
                        oA.Enabled = false
                    end)
                end
            end
            GB = function()
                for k, v in Gu do
                    local FF = k
                    local FH = v
                    if FF.Parent then
                        pcall(function()
                            FF.Enabled = FH
                        end)
                    end
                end
                table.clear(Gu)
                if Gz then
                    pcall(function()
                        settings().Rendering.QualityLevel = Gz.Quality
                    end)
                    Lighting.GlobalShadows = Gz.Shadows
                    Lighting.FogEnd = Gz.Fog
                    Gz = nil
                end
            end
            MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
            MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
            MenuGroup:AddToggle("Disable3D", {
                Text = "Disable 3D Rendering",
                Default = false,
                Callback = function(oP)
                    pcall(function()
                        RunService:Set3dRenderingEnabled(not oP)
                    end)
                end
            })
            MenuGroup:AddToggle("FpsBoost", {
                Text = "FPS Boost",
                Default = false,
                Callback = function(oU)
                    if oU then
                        if not Gz then
                            Gz = {
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
                        for i, descendant in u1:GetDescendants() do
                            pcall(GD, descendant)
                        end
                    else
                        GB()
                    end
                end
            })
            MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
            Library.ToggleKeybind = Options.MenuKeybind
            GH(true)
            local ScriptGroup = HS.Settings:AddLeftGroupbox("Script", "terminal")
            ScriptGroup:AddButton({
                Text = "Unload Script",
                Func = function()
                    Library:Unload()
                end
            })
            Toggles.AntiGameplayPause:OnChanged(function()
                GH(Toggles.AntiGameplayPause.Value)
            end)
            if Toggles.AntiGameplayPause.Value then
                GH(true)
            end
            table.insert(GC, LocalPlayer.Idled:Connect(function()
                if Toggles.AntiAfk.Value and not Library.Unloaded then
                    Gx()
                end
            end))
            table.insert(GC, u1.DescendantAdded:Connect(function(pc)
                if Toggles.FpsBoost.Value then
                    GD(pc)
                end
            end))
            Gy = function(pg)
                local F0 = GE or Library.Unloaded
                local F5 = if F0 then 1 else 0
                local F3 = 732 * F5 + 3867 * (1 - F5)
                local F4 = 1531 * F5 + 2481 * (1 - F5)
                if not ((F3 * 2335 + F4 * 3058 + F3 * F4) % 16777213 == 7511710) then
                    F0 = not Toggles.AutoReconnect.Value
                end
                if F0 then
                    return
                end
                GE = true
                local F_ = Gw
                local F0_3 = pcall(function()
                    if pg then
                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                    else
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                    end
                end)
                if not F0_3 then
                    GE = false
                    if not pg and F_ == Gw then
                        task.delay(1.5, function()
                            if F_ == Gw then
                                Gy(true)
                            end
                        end)
                    end
                end
            end
            table.insert(GC, TeleportService.TeleportInitFailed:Connect(function(py)
                local Ga
                if py == LocalPlayer and GE then
                    GE = false
                    Ga = Gw
                    task.delay(3, function()
                        if Ga == Gw then
                            Gy(true)
                        end
                    end)
                end
            end))
            task.spawn(function()
                local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                local Gf = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                local Gf_2 = not Gf
                local Gg = Library.Unloaded
                local Gk = if Gg then 1 else 0
                local Gi = 2414 * Gk + 1718 * (1 - Gk)
                local Gj = 621 * Gk + 153 * (1 - Gk)
                if not ((Gi * 1604 + Gj * 2699 + Gi * Gj) % 16777213 == 7047229) then
                    Gg = Gf_2
                end
                if Gg then
                    return
                end
                table.insert(GC, Gf.ChildAdded:Connect(function(pN)
                    if pN.Name == "ErrorPrompt" then
                        Gy(false)
                    end
                end))
            end)
            Gv = task.spawn(function()
                while not Library.Unloaded do
                    if Toggles.AntiGameplayPause.Value then
                        GH(true)
                    end
                    local Gl = Toggles.AntiAfk.Value and os.clock() - GF >= 60
                    if Gl then
                        Gx()
                    end
                    task.wait(1)
                end
            end)
            vv.Track(function()
                Gw += 1
                for k, v in GC do
                    v:Disconnect()
                end
                pcall(task.cancel, Gv)
                GH(false)
                GB()
                pcall(function()
                    RunService:Set3dRenderingEnabled(true)
                end)
            end)
        end
        HY_9()
        local function HY_10()
            local HD, HE, HF, HG
            ThemeManager:SetLibrary(Library)
            ThemeManager:SetFolder("OuroborosHub")
            ThemeManager:SaveDefault("Evil Hello Kitty")
            ThemeManager:ApplyToTab(HS.Settings)
            SaveManager:SetLibrary(Library)
            SaveManager:IgnoreThemeSettings()
            SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
            SaveManager:SetFolder(vW)
            local HH = SaveManager:BuildConfigSection(HS.Settings)
            HG = function(qf, qg)
                local GM_2 = (qf == "Toggle" and Toggles or Options)[qg]
                local GL_5 = type(GM_2) == "table" and GM_2.Type == qf
                return GL_5 and GM_2 or nil
            end
            HE = function(qp, qq)
                local Type = qq.Type
                if Type == "Toggle" then
                    return { idx = qp, type = "Toggle", value = qq.Value == true }
                elseif Type == "Slider" then
                    return { idx = qp, type = "Slider", value = tostring(qq.Value) }
                elseif Type == "Dropdown" then
                    return { idx = qp, type = "Dropdown", multi = qq.Multi == true, value = qq.Value }
                elseif Type == "Input" then
                    local GQ = qq.Value or ""
                    return { idx = qp, type = "Input", text = tostring(GQ) }
                elseif Type == "ColorPicker" then
                    return { idx = qp, type = "ColorPicker", value = qq.Value:ToHex(), transparency = qq.Transparency }
                elseif Type == "KeyPicker" then
                    return {
                        idx = qp,
                        type = "KeyPicker",
                        mode = qq.Mode,
                        key = qq.Value,
                        modifiers = qq.Modifiers,
                        toggled = qq.Toggled
                    }
                else
                    return nil
                end
            end
            HD = function()
                local GW = {}
                for i, v in ipairs({ Toggles, Options }) do
                    for k, v in pairs(v) do
                        local GX = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                        if GX then
                            local GX_2 = HE(k, v)
                            if GX_2 then
                                GW[#GW + 1] = GX_2
                            end
                        end
                    end
                end
                table.sort(GW, function(qA, qB)
                    if qA.type ~= qB.type then
                        return qA.type < qB.type
                    end
                    return qA.idx < qB.idx
                end)
                return { objects = GW }
            end
            HF = function(qD)
                local Hc
                Hc = nil
                local Hd = type(qD) ~= "table" or type(qD.idx) ~= "string" or type(qD.type) ~= "string" or SaveManager.Ignore[qD.idx]
                if Hd then
                    return false
                end
                Hc = HG(qD.type, qD.idx)
                if not Hc then
                    return false
                end
                local Hd_2 = pcall(function()
                    if qD.type == "Input" then
                        if type(qD.text) ~= "string" then
                            return
                        end
                        Hc:SetValue(qD.text)
                    elseif qD.type == "ColorPicker" then
                        Hc:SetValueRGB(Color3.fromHex(qD.value), qD.transparency)
                    elseif qD.type == "KeyPicker" then
                        Hc:SetValue({ qD.key, qD.mode, qD.modifiers })
                        if qD.mode == "Toggle" and qD.toggled ~= nil then
                            Hc.Toggled = qD.toggled
                            Hc:Update()
                        end
                    else
                        Hc:SetValue(qD.value)
                    end
                end)
                return Hd_2
            end
            HH:AddDivider()
            HH:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
            HH:AddButton("Export Config to Clipboard", function()
                local Hj_2
                local Hi_5
                Hi_5, Hj_2 = pcall(HttpService.JSONEncode, HttpService, HD())
                if Hi_5 then
                    local Hi_6 = (u7(setclipboard)) and setclipboard
                    local Hk = Hi_6
                    if not Hk then
                        local Hi_7 = (u7(toclipboard)) and toclipboard
                        Hk = Hi_7 or nil
                    end
                    local Hi_8 = Hk
                    local Hk_2 = type(Hi_8) == "function" and pcall(Hi_8, Hj_2)
                    if Hk_2 then
                        Library:Notify("Config copied to clipboard", 6)
                        return
                    end
                    Library:Notify("Your executor does not support copying to the clipboard")
                    return
                end
                Library:Notify("Failed to encode the config")
            end)
            HH:AddButton("Import Config from Clipboard Text", function()
                local Hs_3
                local Hq = Options.SaveManager_ImportSource.Value or ""
                local Hq_3
                local Hr = tostring(Hq):match("^%s*(.-)%s*$")
                if Hr == "" then
                    Library:Notify("Paste an exported config into the box first")
                    return
                end
                if #Hr > 262144 then
                    Library:Notify("That config is too large")
                    return
                end
                Hq_3, Hs_3 = pcall(HttpService.JSONDecode, HttpService, Hr)
                local Hr_3 = not Hq_3 or type(Hs_3) ~= "table" or type(Hs_3.objects) ~= "table"
                if Hr_3 then
                    Library:Notify("That is not a valid exported config")
                    return
                end
                if #Hs_3.objects > 2048 then
                    Library:Notify("That config has too many records")
                    return
                end
                local Hq_4 = 0
                for i, v in ipairs(Hs_3.objects) do
                    if HF(v) then
                        Hq_4 += 1
                    end
                end
                if Hq_4 == 0 then
                    Library:Notify("No settings in that config matched this script")
                    return
                end
                Options.SaveManager_ImportSource:SetValue("")
                local Hs_4 = Hq_4 == 1 and "" or "s"
                Library:Notify(("Imported %d setting%s"):format(Hq_4, Hs_4), 6)
            end)
            ThemeManager:LoadDefault()
            SaveManager:LoadAutoloadConfig()
            if Options.RecordMode then
                vv.SetMode(Options.RecordMode.Value)
            end
            if Options.MacroName then
                vv.SetMacroName(Options.MacroName.Value)
            end
            if Toggles.RecordMacro then
                vv.SetRecording(Toggles.RecordMacro.Value)
            end
            if Toggles.PlayMacro then
                vv.SetPlaying(Toggles.PlayMacro.Value)
            end
            if Toggles.HideUiOnStart.Value then
                Library:Toggle(false)
            end
        end
        HY_10()
    end
else
    v6_12.Track(fn377)
    vv = function()
        local HW
        local HV
        local onDiscord
        onDiscord = nil
        HV = nil
        HW = nil
        local HM, HN, Library, Toggles, HR, HS, ThemeManager, Options, SaveManager
        HN = "https://rscripts.net/@Ouroboros"
        HV = "https://discord.gg/synapsex"
        HM = "Ultimate Tower Defense"
        HR = "https://ouroboros-hub-rbx.web.app/"
        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
        Toggles = Library.Toggles
        Options = Library.Options
        uX(vv, Library)
        HW = function(jL, jM)
            local C7 = (u7(setclipboard)) and setclipboard
            local C8 = C7
            if not C8 then
                local C7_1 = (u7(toclipboard)) and toclipboard
                C8 = C7_1 or nil
            end
            local C7_2 = C8
            if not C7_2 then
                Library:Notify("Clipboard is unavailable")
                return
            end
            local C8_1 = pcall(C7_2, jL)
            if C8_1 then
                Library:Notify(jM)
            else
                Library:Notify("Failed to copy")
            end
        end
        onDiscord = function()
            HW(HV, "Copied Discord invite to clipboard")
        end
        local Window = Library:CreateWindow({
            Title = "Ouroboros",
            Font = Enum.Font.BuilderSans,
            Footer = { { Text = HV, Copyable = true }, "|", HM, "|", "v0.2" },
            Icon = 78539693571783,
            NotifySide = "Right",
            ShowCustomCursor = false,
            CornerRadius = 0,
            SidebarCompacted = true,
            TabSwipeFrom = "bottom",
            Animations = { TabSwitch = true }
        })
        Window:SetGlow(false)
        HS = {
            Info = Window:AddTab("Info", "info"),
            Main = Window:AddTab("Main", "gamepad-2"),
            Player = Window:AddTab("Player", "person-standing"),
            Settings = Window:AddTab("Settings", "settings")
        }
        local function HY_1(j0)
            local DiscordGroup = j0:AddLeftGroupbox("Discord")
            DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
            DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
        end
        for k, v in HS do
            if k ~= "Info" then
                HY_1(v)
            end
        end
        local function HZ()
            local k6
            vv.SetNotifier(function(j7, j8)
                if not Library.Unloaded then
                    Library:Notify(j7, j8)
                end
            end)
            vv.Track(function()
                vv.SetNotifier(nil)
            end)
            local MacroGroup = HS.Main:AddLeftGroupbox("Macro", "list-video")
            local Label2 = MacroGroup:AddLabel(vv.GetStatus(), true)
            MacroGroup:AddDivider()
            MacroGroup:AddInput("MacroName", {
                Text = "Macro Name",
                Default = "",
                Finished = true,
                AllowEmpty = true,
                Callback = function(kf)
                    vv.SetMacroName(kf)
                end
            })
            local SavedMacroDropdown
            local function ki(kj, kk)
                local Df = vv.ListMacros()
                if #Df == 0 then
                    Df = { "None" }
                end
                SavedMacroDropdown:SetValues(Df)
                local Dg = type(kk) == "string" and table.find(Df, kk)
                if Dg then
                    pcall(function()
                        SavedMacroDropdown:SetValue(kk)
                    end)
                end
                if kj then
                    Library:Notify("Refreshed saved macros")
                end
            end
            SavedMacroDropdown = MacroGroup:AddDropdown("SavedMacro", {
                Text = "Saved Macros",
                Values = { "None" },
                Default = 1,
                AllowNull = true,
                Callback = function(ks)
                    local Di = ks == ""
                    local Di_2
                    local Dj = type(ks) ~= "string" or Di
                    local Dj_1
                    if Dj or ks == "None" then
                        return
                    end
                    if ks == vv.CurrentMacro() then
                        return
                    end
                    Di_2, Dj_1 = vv.LoadMacro(ks)
                    local Di_3 = Di_2 and 5 or 6
                    Library:Notify(Dj_1, Di_3)
                end
            })
            MacroGroup:AddButton({
                Text = "Refresh Saved Macros",
                Func = function()
                    ki(true)
                end
            })
            MacroGroup:AddToggle("RecordMacro", {
                Text = "Record Macro",
                Default = false,
                Tooltip = "Saves on stop, or when the round ends.",
                Callback = function(kz)
                    vv.SetRecording(kz)
                end
            })
            MacroGroup:AddButton({
                Text = "Delete Macro",
                Func = function()
                    local Dq_1
                    local Dp_1
                    Dq_1, Dp_1 = vv.DeleteMacro(Options.SavedMacro.Value)
                    local Ds = Dq_1 and 5 or 6
                    Library:Notify(Dp_1, Ds)
                    if Dq_1 then
                        ki(false)
                    end
                end
            })
            MacroGroup:AddButton({
                Text = "Clear Recording",
                Func = function()
                    vv.ClearRecording()
                    Library:Notify("Cleared the recording buffer")
                end
            })
            MacroGroup:AddDivider("Playback")
            MacroGroup:AddDropdown("RecordMode", {
                Text = "Record Mode",
                Values = vK,
                Default = 1,
                Tooltip = "Time: replay by round clock. Money: replay by cash used.",
                Callback = function(kM)
                    vv.SetMode(kM)
                end
            })
            MacroGroup:AddToggle("PlayMacro", {
                Text = "Play Macro",
                Default = false,
                Tooltip = "Runs the loaded macro.",
                Callback = function(kO)
                    vv.SetPlaying(kO)
                end
            })
            local MatchGroup = HS.Main:AddRightGroupbox("Match", "swords")
            local Label = MatchGroup:AddLabel(vv.MatchText(), true)
            vv.SetMacroListChanged(function(kS)
                if Library.Unloaded then
                    return
                end
                ki(false, kS)
                local Du = type(kS) == "string" and Options.MacroName
                if Du then
                    pcall(function()
                        Options.MacroName:SetValue(kS)
                    end)
                end
            end)
            vv.Track(function()
                vv.SetMacroListChanged(nil)
            end)
            ki(false)
            k6 = task.spawn(function()
                while not Library.Unloaded do
                    pcall(function()
                        Label2:SetText(vv.GetStatus())
                        Label:SetText(vv.MatchText())
                    end)
                    task.wait(0.25)
                end
            end)
            vv.Track(function()
                if coroutine.status(k6) ~= "dead" then
                    task.cancel(k6)
                end
            end)
        end
        HZ()
        local function HY_2()
            local D7
            local D3
            local D_
            local DY
            DY = nil
            D_ = nil
            D3 = nil
            D7 = nil
            local Label2, Label3, DZ, D0, D1, Label, D4, D5, D6
            D_ = function(la)
                return (tostring(la):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
            end
            D7 = function(lc, ld)
                return string.format('<font color="%s">%s</font>', ld, D_(lc))
            end
            D0 = function(lg, lh, li)
                return string.format("<b>%s</b> %s %s", lg, D7("-", "#5a6070"), D7(lh, li))
            end
            DZ = "#7fd47f"
            D6 = "#e8a34d"
            local D8 = {}
            local D9 = "#8b93a3"
            local Ea = "#6ec1ff"
            if not u3 then
                table.insert(D8, "game framework")
            elseif not vJ then
                table.insert(D8, "match server")
            elseif not u2 then
                table.insert(D8, "action recording")
            end
            if not uZ() then
                table.insert(D8, "macro files")
            end
            local Eb = #D8 == 0 and "ready"
            local Ec = Eb or "limited: " .. table.concat(D8, ", ")
            D4 = "Unknown"
            pcall(function()
                local DC_1
                local DB_1
                if u7(identifyexecutor) then
                    DC_1, DB_1 = identifyexecutor()
                    local DD = DC_1 ~= ""
                    local DE = type(DC_1) == "string" and DD
                    if DE then
                        local DD_1 = type(DB_1) == "string" and DB_1 ~= "" and DC_1 .. " " .. DB_1
                        local DB_2 = DD_1
                        local DL = if DB_2 then 1 else 0
                        local DJ = 2445 * DL + 2356 * (1 - DL)
                        local DK = 1675 * DL + 1185 * (1 - DL)
                        if not ((DJ * 3449 + DK * 960 + DJ * DK) % 16777213 == 14136180) then
                            DB_2 = DC_1
                        end
                        D4 = DB_2
                    end
                end
            end)
            DY = os.clock()
            D5 = function()
                local DM = math.floor(os.clock() - DY)
                if DM < 60 then
                    return DM .. "s"
                elseif DM < 3600 then
                    return string.format("%dm %ds", DM // 60, DM % 60)
                else
                    return string.format("%dh %dm", DM // 3600, DM % 3600 // 60)
                end
            end
            local UserGroup = HS.Info:AddLeftGroupbox("User", "circle-user")
            UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
            UserGroup:AddLabel(D0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, DZ), true)
            UserGroup:AddLabel(D0("UserId", tostring(LocalPlayer.UserId), Ea), true)
            UserGroup:AddLabel(D0("Executor", D4 .. "  " .. Ec, DZ), true)
            UserGroup:AddDivider()
            Label3 = UserGroup:AddLabel(D0("Session", D5(), D6), true)
            UserGroup:AddDivider()
            UserGroup:AddButton({
                Text = "Copy Username",
                Func = function()
                    HW(LocalPlayer.Name, "Copied username")
                end
            })
            UserGroup:AddButton({
                Text = "Copy Profile Link",
                Func = function()
                    HW("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                end
            })
            local SessionGroup = HS.Info:AddRightGroupbox("Session", "signal")
            SessionGroup:AddLabel(D0("Game", HM, Ea), true)
            Label2 = SessionGroup:AddLabel(D0("Players", "0/0", DZ), true)
            D1 = tostring(game.JobId)
            local Ea_1 = #D1 > 18 and string.sub(D1, 1, 18) .. "..."
            local Eb_2 = Ea_1 or D1
            SessionGroup:AddLabel(D0("Job", Eb_2, D9), true)
            Label = SessionGroup:AddLabel(D0("Ping", "0 ms", D6), true)
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
                    HW(D1, "Copied Job ID")
                end
            })
            D3 = task.spawn(function()
                local DS_1
                local DR_1
                while true do
                    task.wait(1)
                    if Library.Unloaded then
                        break
                    end
                    Label3:SetText(D0("Session", D5(), D6))
                    Label2:SetText(D0("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), DZ))
                    DR_1, DS_1 = pcall(function()
                        return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                    end)
                    local DR_2 = DR_1 and DS_1 .. " ms" or "n/a"
                    Label:SetText(D0("Ping", DR_2, D6))
                end
            end)
            vv.Track(function()
                if coroutine.status(D3) ~= "dead" then
                    task.cancel(D3)
                end
            end)
            local SocialsGroup = HS.Info:AddRightGroupbox("Socials", "link")
            SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
            SocialsGroup:AddButton({
                Text = "Rscripts",
                Func = function()
                    HW(HN, "Copied Rscripts profile")
                end
            })
            SocialsGroup:AddButton({
                Text = "Website",
                Func = function()
                    HW(HR, "Copied website link")
                end
            })
        end
        HY_2()
        local function HY_3()
            local mC
            local mA
            local mB
            local mD
            local MovementGroup = HS.Player:AddLeftGroupbox("Movement", "footprints")
            MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
            MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
            MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
            MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
            MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
            local FlyGroup = HS.Player:AddRightGroupbox("Fly", "feather")
            FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
            FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
            mA = {}
            mD = {}
            mC = {}
            mB = {}
            local mz = {}
            local function mE()
                for k, v in mA do
                    if k.Parent then
                        k.CanCollide = v
                    end
                end
                table.clear(mA)
            end
            local function mI()
                for k, v in mB do
                    if k.Parent then
                        k.WalkSpeed = v
                    end
                end
                table.clear(mB)
            end
            local function mM()
                for k, v in mC do
                    if k.Parent then
                        k.PlatformStand = v
                    end
                end
                table.clear(mC)
            end
            local function mQ(mR)
                if not mR:IsA("ProximityPrompt") then
                    return
                end
                if mD[mR] == nil then
                    mD[mR] = {
                        HoldDuration = mR.HoldDuration,
                        MaxActivationDistance = mR.MaxActivationDistance,
                        RequiresLineOfSight = mR.RequiresLineOfSight
                    }
                end
                mR.HoldDuration = 0
                mR.MaxActivationDistance = 50
                mR.RequiresLineOfSight = false
            end
            local function mT()
                for k, v in mD do
                    if k.Parent then
                        k.HoldDuration = v.HoldDuration
                        k.MaxActivationDistance = v.MaxActivationDistance
                        k.RequiresLineOfSight = v.RequiresLineOfSight
                    end
                end
                table.clear(mD)
            end
            Toggles.Fly:OnChanged(function()
                if not Toggles.Fly.Value then
                    mM()
                end
            end)
            Toggles.WalkSpeedEnabled:OnChanged(function()
                if not Toggles.WalkSpeedEnabled.Value then
                    mI()
                end
            end)
            Toggles.NoClip:OnChanged(function()
                if not Toggles.NoClip.Value then
                    mE()
                end
            end)
            Toggles.InstantProximityPrompt:OnChanged(function()
                if Toggles.InstantProximityPrompt.Value then
                    for i, descendant in u1:GetDescendants() do
                        pcall(mQ, descendant)
                    end
                else
                    mT()
                end
            end)
            table.insert(mz, u1.DescendantAdded:Connect(function(nb)
                if Toggles.InstantProximityPrompt.Value then
                    mQ(nb)
                end
            end))
            table.insert(mz, RunService.Stepped:Connect(function()
                if Library.Unloaded then
                    return
                end
                local Character = LocalPlayer.Character
                if Toggles.NoClip.Value and Character then
                    for i, descendant in Character:GetDescendants() do
                        if descendant:IsA("BasePart") then
                            if mA[descendant] == nil then
                                mA[descendant] = descendant.CanCollide
                            end
                            descendant.CanCollide = false
                        end
                    end
                end
            end))
            table.insert(mz, UserInputService.JumpRequest:Connect(function()
                if Library.Unloaded then
                    return
                end
                local Character = LocalPlayer.Character
                local E1 = Character and Character:FindFirstChildOfClass("Humanoid")
                if Toggles.InfJump.Value and E1 then
                    E1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end))
            table.insert(mz, RunService.RenderStepped:Connect(function(nx)
                if Library.Unloaded then
                    return
                end
                local Character = LocalPlayer.Character
                local E4 = Character and Character:FindFirstChildOfClass("Humanoid")
                local E5 = Character
                if E5 then
                    E5 = Character:FindFirstChild("HumanoidRootPart")
                end
                local E3_1 = E5
                local CurrentCamera = u1.CurrentCamera
                if Toggles.WalkSpeedEnabled.Value and E4 then
                    if mB[E4] == nil then
                        mB[E4] = E4.WalkSpeed
                    end
                    E4.WalkSpeed = Options.WalkSpeed.Value
                end
                if Toggles.Fly.Value and E3_1 and E4 and CurrentCamera then
                    if mC[E4] == nil then
                        mC[E4] = E4.PlatformStand
                    end
                    E4.PlatformStand = true
                    local E5_4 = Vector3.zero
                    if not UserInputService:GetFocusedTextBox() then
                        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                            E5_4 += CurrentCamera.CFrame.LookVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                            E5_4 -= CurrentCamera.CFrame.LookVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                            E5_4 -= CurrentCamera.CFrame.RightVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                            E5_4 += CurrentCamera.CFrame.RightVector
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                            E5_4 += Vector3.new(0, 1, 0)
                        end
                        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                            E5_4 -= Vector3.new(0, 1, 0)
                        end
                    end
                    E3_1.AssemblyLinearVelocity = Vector3.zero
                    if E5_4.Magnitude > 0 then
                        E3_1.CFrame = E3_1.CFrame + E5_4.Unit * Options.FlySpeed.Value * nx
                    end
                end
            end))
            vv.Track(function()
                for k, v in mz do
                    v:Disconnect()
                end
                mE()
                mI()
                mM()
                mT()
            end)
        end
        HY_3()
        local function HY_4()
            local Gu, Gv, Gw, Gx, Gy, Gz, GA, GB, GC, GD, GE, GF, GH, Label
            Gu = {}
            GC = {}
            Gz = nil
            GA = 0
            Gw = 0
            GE = false
            GF = os.clock()
            local MenuGroup = HS.Settings:AddLeftGroupbox("Menu", "logs")
            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
            Label = MenuGroup:AddLabel("AFK triggers: 0")
            Gx = function()
                local CurrentCamera
                CurrentCamera = u1.CurrentCamera
                local Fk = not CurrentCamera or not u7(VirtualUser.CaptureController) or not u7(VirtualUser.ClickButton2)
                if Fk then
                    return false
                end
                local Fk_1 = pcall(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                end)
                if not Fk_1 then
                    return false
                end
                GA += 1
                GF = os.clock()
                pcall(function()
                    Label:SetText("AFK triggers: " .. GA)
                end)
                return true
            end
            GH = function(og)
                pcall(function()
                    GuiService:SetGameplayPausedNotificationEnabled(not og)
                end)
                pcall(function()
                    local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                    if RobloxNetworkPauseNotificati then
                        RobloxNetworkPauseNotificati.Enabled = not og
                    end
                end)
                if not og then
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
            GD = function(oA)
                local ClassName = oA.ClassName
                local Fu = ClassName == "Trail"
                local Fv = ClassName == "ParticleEmitter"
                local FA = if Fv then 1 else 0
                local Fy = 2593 * FA + 2019 * (1 - FA)
                local Fz = 3483 * FA + 353 * (1 - FA)
                if not ((Fy * 867 + Fz * 508 + Fy * Fz) % 16777213 == 13048914) then
                    Fv = Fu
                end
                if Fv or ClassName == "Smoke" or ClassName == "Fire" or ClassName == "Sparkles" or ClassName == "Explosion" or ClassName == "Beam" then
                    if Gu[oA] == nil then
                        Gu[oA] = oA.Enabled
                    end
                    pcall(function()
                        oA.Enabled = false
                    end)
                end
            end
            GB = function()
                for k, v in Gu do
                    local FF = k
                    local FH = v
                    if FF.Parent then
                        pcall(function()
                            FF.Enabled = FH
                        end)
                    end
                end
                table.clear(Gu)
                if Gz then
                    pcall(function()
                        settings().Rendering.QualityLevel = Gz.Quality
                    end)
                    Lighting.GlobalShadows = Gz.Shadows
                    Lighting.FogEnd = Gz.Fog
                    Gz = nil
                end
            end
            MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
            MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
            MenuGroup:AddToggle("Disable3D", {
                Text = "Disable 3D Rendering",
                Default = false,
                Callback = function(oP)
                    pcall(function()
                        RunService:Set3dRenderingEnabled(not oP)
                    end)
                end
            })
            MenuGroup:AddToggle("FpsBoost", {
                Text = "FPS Boost",
                Default = false,
                Callback = function(oU)
                    if oU then
                        if not Gz then
                            Gz = {
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
                        for i, descendant in u1:GetDescendants() do
                            pcall(GD, descendant)
                        end
                    else
                        GB()
                    end
                end
            })
            MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
            Library.ToggleKeybind = Options.MenuKeybind
            GH(true)
            local ScriptGroup = HS.Settings:AddLeftGroupbox("Script", "terminal")
            ScriptGroup:AddButton({
                Text = "Unload Script",
                Func = function()
                    Library:Unload()
                end
            })
            Toggles.AntiGameplayPause:OnChanged(function()
                GH(Toggles.AntiGameplayPause.Value)
            end)
            if Toggles.AntiGameplayPause.Value then
                GH(true)
            end
            table.insert(GC, LocalPlayer.Idled:Connect(function()
                if Toggles.AntiAfk.Value and not Library.Unloaded then
                    Gx()
                end
            end))
            table.insert(GC, u1.DescendantAdded:Connect(function(pc)
                if Toggles.FpsBoost.Value then
                    GD(pc)
                end
            end))
            Gy = function(pg)
                local F0 = GE or Library.Unloaded
                local F5 = if F0 then 1 else 0
                local F3 = 732 * F5 + 3867 * (1 - F5)
                local F4 = 1531 * F5 + 2481 * (1 - F5)
                if not ((F3 * 2335 + F4 * 3058 + F3 * F4) % 16777213 == 7511710) then
                    F0 = not Toggles.AutoReconnect.Value
                end
                if F0 then
                    return
                end
                GE = true
                local F_ = Gw
                local F0_1 = pcall(function()
                    if pg then
                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                    else
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                    end
                end)
                if not F0_1 then
                    GE = false
                    if not pg and F_ == Gw then
                        task.delay(1.5, function()
                            if F_ == Gw then
                                Gy(true)
                            end
                        end)
                    end
                end
            end
            table.insert(GC, TeleportService.TeleportInitFailed:Connect(function(py)
                local Ga
                if py == LocalPlayer and GE then
                    GE = false
                    Ga = Gw
                    task.delay(3, function()
                        if Ga == Gw then
                            Gy(true)
                        end
                    end)
                end
            end))
            task.spawn(function()
                local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                local Gf = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                local Gf_1 = not Gf
                local Gg = Library.Unloaded
                local Gk = if Gg then 1 else 0
                local Gi = 2414 * Gk + 1718 * (1 - Gk)
                local Gj = 621 * Gk + 153 * (1 - Gk)
                if not ((Gi * 1604 + Gj * 2699 + Gi * Gj) % 16777213 == 7047229) then
                    Gg = Gf_1
                end
                if Gg then
                    return
                end
                table.insert(GC, Gf.ChildAdded:Connect(function(pN)
                    if pN.Name == "ErrorPrompt" then
                        Gy(false)
                    end
                end))
            end)
            Gv = task.spawn(function()
                while not Library.Unloaded do
                    if Toggles.AntiGameplayPause.Value then
                        GH(true)
                    end
                    local Gl = Toggles.AntiAfk.Value and os.clock() - GF >= 60
                    if Gl then
                        Gx()
                    end
                    task.wait(1)
                end
            end)
            vv.Track(function()
                Gw += 1
                for k, v in GC do
                    v:Disconnect()
                end
                pcall(task.cancel, Gv)
                GH(false)
                GB()
                pcall(function()
                    RunService:Set3dRenderingEnabled(true)
                end)
            end)
        end
        HY_4()
        local function HY_5()
            local HD, HE, HF, HG
            ThemeManager:SetLibrary(Library)
            ThemeManager:SetFolder("OuroborosHub")
            ThemeManager:SaveDefault("Evil Hello Kitty")
            ThemeManager:ApplyToTab(HS.Settings)
            SaveManager:SetLibrary(Library)
            SaveManager:IgnoreThemeSettings()
            SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
            SaveManager:SetFolder(vW)
            local HH = SaveManager:BuildConfigSection(HS.Settings)
            HG = function(qf, qg)
                local GM_1 = (qf == "Toggle" and Toggles or Options)[qg]
                local GL_2 = type(GM_1) == "table" and GM_1.Type == qf
                return GL_2 and GM_1 or nil
            end
            HE = function(qp, qq)
                local Type = qq.Type
                if Type == "Toggle" then
                    return { idx = qp, type = "Toggle", value = qq.Value == true }
                elseif Type == "Slider" then
                    return { idx = qp, type = "Slider", value = tostring(qq.Value) }
                elseif Type == "Dropdown" then
                    return { idx = qp, type = "Dropdown", multi = qq.Multi == true, value = qq.Value }
                elseif Type == "Input" then
                    local GQ = qq.Value or ""
                    return { idx = qp, type = "Input", text = tostring(GQ) }
                elseif Type == "ColorPicker" then
                    return { idx = qp, type = "ColorPicker", value = qq.Value:ToHex(), transparency = qq.Transparency }
                elseif Type == "KeyPicker" then
                    return {
                        idx = qp,
                        type = "KeyPicker",
                        mode = qq.Mode,
                        key = qq.Value,
                        modifiers = qq.Modifiers,
                        toggled = qq.Toggled
                    }
                else
                    return nil
                end
            end
            HD = function()
                local GW = {}
                for i, v in ipairs({ Toggles, Options }) do
                    for k, v in pairs(v) do
                        local GX = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                        if GX then
                            local GX_1 = HE(k, v)
                            if GX_1 then
                                GW[#GW + 1] = GX_1
                            end
                        end
                    end
                end
                table.sort(GW, function(qA, qB)
                    if qA.type ~= qB.type then
                        return qA.type < qB.type
                    end
                    return qA.idx < qB.idx
                end)
                return { objects = GW }
            end
            HF = function(qD)
                local Hc
                Hc = nil
                local Hd = type(qD) ~= "table" or type(qD.idx) ~= "string" or type(qD.type) ~= "string" or SaveManager.Ignore[qD.idx]
                if Hd then
                    return false
                end
                Hc = HG(qD.type, qD.idx)
                if not Hc then
                    return false
                end
                local Hd_1 = pcall(function()
                    if qD.type == "Input" then
                        if type(qD.text) ~= "string" then
                            return
                        end
                        Hc:SetValue(qD.text)
                    elseif qD.type == "ColorPicker" then
                        Hc:SetValueRGB(Color3.fromHex(qD.value), qD.transparency)
                    elseif qD.type == "KeyPicker" then
                        Hc:SetValue({ qD.key, qD.mode, qD.modifiers })
                        if qD.mode == "Toggle" and qD.toggled ~= nil then
                            Hc.Toggled = qD.toggled
                            Hc:Update()
                        end
                    else
                        Hc:SetValue(qD.value)
                    end
                end)
                return Hd_1
            end
            HH:AddDivider()
            HH:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
            HH:AddButton("Export Config to Clipboard", function()
                local Hj_1
                local Hi_1
                Hi_1, Hj_1 = pcall(HttpService.JSONEncode, HttpService, HD())
                if Hi_1 then
                    local Hi_2 = (u7(setclipboard)) and setclipboard
                    local Hk = Hi_2
                    if not Hk then
                        local Hi_3 = (u7(toclipboard)) and toclipboard
                        Hk = Hi_3 or nil
                    end
                    local Hi_4 = Hk
                    local Hk_1 = type(Hi_4) == "function" and pcall(Hi_4, Hj_1)
                    if Hk_1 then
                        Library:Notify("Config copied to clipboard", 6)
                        return
                    end
                    Library:Notify("Your executor does not support copying to the clipboard")
                    return
                end
                Library:Notify("Failed to encode the config")
            end)
            HH:AddButton("Import Config from Clipboard Text", function()
                local Hs_1
                local Hq = Options.SaveManager_ImportSource.Value or ""
                local Hq_1
                local Hr = tostring(Hq):match("^%s*(.-)%s*$")
                if Hr == "" then
                    Library:Notify("Paste an exported config into the box first")
                    return
                end
                if #Hr > 262144 then
                    Library:Notify("That config is too large")
                    return
                end
                Hq_1, Hs_1 = pcall(HttpService.JSONDecode, HttpService, Hr)
                local Hr_1 = not Hq_1 or type(Hs_1) ~= "table" or type(Hs_1.objects) ~= "table"
                if Hr_1 then
                    Library:Notify("That is not a valid exported config")
                    return
                end
                if #Hs_1.objects > 2048 then
                    Library:Notify("That config has too many records")
                    return
                end
                local Hq_2 = 0
                for i, v in ipairs(Hs_1.objects) do
                    if HF(v) then
                        Hq_2 += 1
                    end
                end
                if Hq_2 == 0 then
                    Library:Notify("No settings in that config matched this script")
                    return
                end
                Options.SaveManager_ImportSource:SetValue("")
                local Hs_2 = Hq_2 == 1 and "" or "s"
                Library:Notify(("Imported %d setting%s"):format(Hq_2, Hs_2), 6)
            end)
            ThemeManager:LoadDefault()
            SaveManager:LoadAutoloadConfig()
            if Options.RecordMode then
                vv.SetMode(Options.RecordMode.Value)
            end
            if Options.MacroName then
                vv.SetMacroName(Options.MacroName.Value)
            end
            if Toggles.RecordMacro then
                vv.SetRecording(Toggles.RecordMacro.Value)
            end
            if Toggles.PlayMacro then
                vv.SetPlaying(Toggles.PlayMacro.Value)
            end
            if Toggles.HideUiOnStart.Value then
                Library:Toggle(false)
            end
        end
        HY_5()
    end
end
v6_12()
