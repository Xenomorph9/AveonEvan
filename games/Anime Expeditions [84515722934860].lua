local fns = {}
local bCU_31, bCU_32, TraitData, bCU_37, bCU_38, bCU_39, bCU_40, bCU_42, bCU_43, Window, Actions2, bCU_47, connection, bCU_50, bCU_52, bCU_53, bCU_54, bCU_56, bCU_57, Options, HttpService, Units, bCU_63, bCU_64, Lighting, bCU_67, bCU_69, bCU_70, bCU_72, bCU_73, bCU_74, bCU_75, bCU_77, bCU_78, bCU_79, Toggles, bCU_82, bCU_83, bCU_84, bCU_86, bCU_87, bCU_89, bCU_91, bCU_92, bCU_94, bCU_95, bCU_96, bCU_101, bCU_108, bCU_115
fns.VirtualUser = nil
fns.bCU_3 = nil
fns.bCU_4 = nil
fns.bCU_5 = nil
fns.bCU_8 = nil
fns.bCU_9 = nil
fns.bCU_11 = nil
fns.bCU_12 = nil
fns.bCU_14 = nil
fns.bCU_15 = nil
fns.bCU_16 = nil
fns.bCU_17 = nil
fns.bCU_18 = nil
fns.bCU_19 = nil
fns.bCU_21 = nil
fns.bCU_22 = nil
fns.bCU_25 = nil
fns.worker = nil
fns.bCU_28 = nil
fns.bCU_29 = nil
bCU_31 = nil
bCU_32 = nil
TraitData = nil
bCU_37 = nil
bCU_39 = nil
bCU_40 = nil
bCU_42 = nil
bCU_43 = nil
Window = nil
Actions2 = nil
bCU_47 = nil
connection = nil
bCU_50 = nil
bCU_52 = nil
bCU_53 = nil
bCU_54 = nil
bCU_57 = nil
Options = nil
HttpService = nil
Units = nil
bCU_63 = nil
bCU_64 = nil
Lighting = nil
bCU_67 = nil
bCU_69 = nil
bCU_70 = nil
bCU_72 = nil
bCU_74 = nil
bCU_75 = nil
bCU_77 = nil
bCU_78 = nil
bCU_79 = nil
Toggles = nil
bCU_82 = nil
bCU_83 = nil
bCU_84 = nil
bCU_86 = nil
bCU_87 = nil
bCU_89 = nil
bCU_91 = nil
bCU_94 = nil
bCU_95 = nil
bCU_96 = nil
local aGB
local aEc
local aFB
local Information
local aD_
local aGo
local aFb
local aEb
local aGA
local aFA
local aFZ
local onJoinDiscordForKeylessScripts
local aDZ
local aGn
local aFn
local aEn
local aEM
local Skins
local aEa
local aEz
local aFY
local aDY
local aGm
local aEm
local aF9
local aE9
local aD9
local CollectionService
local aEy
local aEX
local aFl
local aEl
local aFK
local aF8
local aD8
local aGx
local aFx
local aEx
local aEW
local aDW
local aEk
local aFJ
local aEJ
local aF7
local aE7
local aD7
local aGw
local aFw
local aEw
local Fusion
local aEV
local aDV
local aGj
local aFj
local aEj
local aEI
local aGv
local aD6
local aFv
local aEU
local aGi
local aFi
local aGH
local aFH
local aEH
function fns.fn19(sL, sM, sN)
    local aWy = sN and tostring(sN.CooldownType) == "Global"
    local aWz = aWy and sM
    local aWy_1 = aWz or tostring(sL.Id) .. "|" .. sM
    local aWy_2 = bCU_74.AbilityNext[aWy_1]
    local aWA = aWy_2 and os.clock() < aWy_2
    if aWA then
        return false, aWy_1
    end
    return true, aWy_1
end
function fns.fn38(i0, i1, i2)
    local aO3 = 0
    for k, v in i0 do
        local aO4 = Vector3.new(v.X - i1.X, 0, v.Z - i1.Z)
        if aO4.Magnitude <= i2 then
            aO3 += 1
        end
    end
    return aO3
end
function fns.fn68(ag_)
    for k, v in fns.bCU_21.EXPEDITION_CARDS do
        ag_:AddSlider("ExpCard" .. tostring(v), {
            Text = bCU_95(tostring(v)),
            Default = 0,
            Min = 0,
            Max = 10,
            Rounding = 0,
            Tooltip = "Priority for " .. bCU_95(tostring(v)) .. "."
        })
    end
end
function fns.worker2()
    local bvj_1
    while true do
        task.wait(1)
        if aDV.Unloaded then
            break
        end
        local bvh = fns.bCU_21.GameSessionSeconds() or 0
        local bvi = math.floor(bvh)
        if bvi < 60 then
            bvj_1 = bvi .. "s"
        elseif bvi < 3600 then
            bvj_1 = string.format("%dm %ds", bvi // 60, bvi % 60)
        else
            bvj_1 = string.format("%dh %dm", bvi // 3600, bvi % 3600 // 60)
        end
        bCU_89.SessionLabel:SetText(aFB("Session time", bvj_1, aEU))
    end
end
function fns.onPlanRouteNow()
    local bw6 = Options.ExpWantedResource and Options.ExpWantedResource.Value
    local bxa = if bw6 then 1 else 0
    local bw8 = 593 * bxa + 1173 * (1 - bxa)
    local bw9 = 2084 * bxa + 952 * (1 - bxa)
    if not ((bw8 * 3941 + bw9 * 3315 + bw8 * bw9) % 16777213 == 10481285) then
        bw6 = "Any"
    end
    local bw5_1 = bw6
    local bw6_1 = bCU_70(bw5_1)
    local bw5_2 = bw6_1 and aD8("SetNodeQueue", bw6_1)
    if bw5_2 then
        aDV:Notify("Route set through " .. #bw6_1 .. " nodes")
    else
        aDV:Notify("Could not plan a route")
    end
end
function fns.onQueueSummoning()
    task.defer(fns.bCU_21.SaveQueueSummonSettings)
end
function fns.onRefreshList6()
    fns.bCU_21.RefreshLobbyAutomationLists(true)
end
function fns.fn294()
    Units = require(Information.Units)
end
function fns.fn299(g9, ha)
    local aNo = bCU_64(g9, ha.X, ha.Z, ha.Y)
    local aNp = aNo and aFb(g9, aNo)
    if aNp then
        return aNo
    end
    local aNt = 2
    while aNt <= 24 do
        local aNu = aNt
        local aNy = 0
        while aNy <= 23 do
            local aNz = aNy
            local aNo_1 = math.rad(aNz * 15)
            local aNp_1 = bCU_64(g9, ha.X + math.cos(aNo_1) * aNu, ha.Z + math.sin(aNo_1) * aNu, ha.Y)
            local aNo_2 = aNp_1 and aFb(g9, aNp_1)
            if aNo_2 then
                return aNp_1
            end
            aNy += 1
        end
        aNt += 1.5
    end
    return nil
end
function fns.fn365(ue)
    local aXq = tonumber(ue) or 0
    ue = math.floor(aXq)
    return string.format("%02d:%02d:%02d", ue // 3600, ue // 60 % 60, ue % 60)
end
function fns.fn372()
    fns.bCU_21.ExpeditionInfo = require(Information.Expeditions)
end
function fns.fn383(B7, B8)
    for k, v in B7.GridNodes do
        if v == B8 or v.X == B8.X and v.Y == B8.Y then
            return k
        end
    end
    return nil
end
function fns.fn389(aiP)
    if not aiP then
        return 99
    end
    local byq = Options["UpgradeOrder" .. aiP]
    local byr = byq and byq.Value
    local byq_1 = tonumber(byr) or aiP
    return byq_1
end
function fns.fn405()
    local aPN = Options.SmartPlaceMode and Options.SmartPlaceMode.Value
    local aPN_1 = type(aPN) == "string" and aPN
    local aPO_1 = aPN_1
    local aPS = if aPO_1 then 1 else 0
    local aPQ = 1712 * aPS + 3816 * (1 - aPS)
    local aPR = 324 * aPS + 973 * (1 - aPS)
    if not ((aPQ * 2008 + aPR * 2910 + aPQ * aPR) % 16777213 == 4935224) then
        aPO_1 = fns.bCU_21.SMART.Path
    end
    return aPO_1
end
function fns.fn412(ua)
    local floor = math.floor
    local aXm = tonumber(ua) or 0
    local aXn = floor(aXm)
    local aXl_1 = tostring(aXn):reverse():gsub("(%d%d%d)", "%1,"):reverse()
    return (aXl_1:gsub("^,", ""))
end
function fns.fn446(dU)
    local aK4
    for k, v in fns.bCU_21.WaveFormationWaves() do
        if v <= dU then
            aK4 = v
        else
            break
        end
    end
    return aK4
end
function fns.fn496(cj, ck)
    local aJP = bCU_53()
    if not aJP then
        return nil
    end
    local aJQ = bCU_74.Positions[aJP]
    local aJP_1 = aJQ and aJQ[tostring(cj)]
    if fns.bCU_21.IsStoredPosition(aJP_1) then
        local aJP_2 = tonumber(ck) == nil or tonumber(ck) == 1
        if aJP_2 then
            return Vector3.new(aJP_1[1], aJP_1[2], aJP_1[3])
        end
        return nil
    end
    local aJP_3 = type(aJP_1) == "table"
    if aJP_3 then
        local aJR_1 = ck or 1
        local aJS = aJP_1[tostring(aJR_1)]
        if not aJS then
            aJS = aJP_1[ck or 1]
        end
        aJP_3 = aJS
    end
    local aJR_3 = aJP_3 or nil
    if not fns.bCU_21.IsStoredPosition(aJR_3) then
        return nil
    end
    return Vector3.new(aJR_3[1], aJR_3[2], aJR_3[3])
end
function fns.fn532(wa)
    if bCU_74.Reported or not bCU_74.Run and wa ~= "Restart" then
        return false
    end
    bCU_74.Reported = true
    bCU_74.LastSummary = bCU_94(wa)
    if Toggles.WebhookEnabled.Value then
        task.spawn(fns.worker, bCU_74.LastSummary)
    end
    return true
end
function fns.fn565(aiD)
    local byh = Options["PlaceLimit" .. aiD]
    local byi = byh and byh.Value
    local byh_1 = tonumber(byi) or 0
    return byh_1
end
function fns.fn571(tU, tV)
    local aXb = not aDZ
    local aXb_1
    local aXc = tU == "" or aXb
    local aXc_1
    if aXc then
        return false
    end
    local aXi = 1
    while aXi <= 4 do
        local aXj = aXi
        aXb_1, aXc_1 = pcall(aDZ, { Url = tU, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = tV })
        if not aXb_1 then
            return false
        end
        local aXb_2 = aXc_1
        if aXb_2 then
            aXb_2 = aXc_1.StatusCode or aXc_1.status_code
        end
        local aXd_2 = tonumber(aXb_2) or 0
        if aXd_2 >= 200 and aXd_2 < 300 then
            return true
        end
        if aXd_2 ~= 429 and aXd_2 < 500 then
            return false
        end
        local aXd_5 = 2 ^ aXj
        if aXd_2 == 429 then
            local aXc_2 = aXc_1 and aXc_1.Body
            local aXb_5 = type(aXc_2) == "string" and aXc_2:match('"retry_after"%s*:%s*([%d%.]+)')
            local min = math.min
            local aXe = tonumber(aXb_5) or aXd_5
            aXd_5 = min(aXe, 30)
        end
        task.wait(aXd_5)
        aXi += 1
    end
    return false
end
function fns.fn583(aiX, aiY)
    local byw = Options["AbilityWave" .. aiX .. "_" .. aiY]
    local byx = byw and byw.Value
    local byw_1 = tonumber(byx) or 0
    return byw_1
end
function fns.fn688()
    local SmartPlacementCondition = Options.SmartPlacementCondition
    local aPL = SmartPlacementCondition and tostring(SmartPlacementCondition.Value)
    return aPL or "Left to Right on Hotbar"
end
function fns.fn704()
    local Enemies = workspace:FindFirstChild("Enemies")
    if not Enemies then
        return false
    end
    local aTU = fns.bCU_25()
    for i, child in Enemies:GetChildren() do
        local attr = child:GetAttribute("EnemyID")
        local aTV = fns.bCU_21.VILLAIN_HUNT_BOSSES[child.Name] and attr and aEy(aTU[tostring(attr)])
        if aTV then
            return true
        end
    end
    return false
end
function fns.onRscripts()
    fns.bCU_3(aEk)
    aDV:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn732(gk, gl, gm)
    local aMX = bCU_53()
    local aMY = gk.Asset == gl.Asset
    if aMY then
        local aMZ = gk.UnitId == gl.Id
        if not aMZ then
            local aM_ = aMX and aMX:match("^Expedition|")
            aMZ = aM_
        end
        aMY = aMZ
    end
    if aMY then
        return true
    end
    if gm and gk.UnitId == gl.Id and gk.UnitId ~= nil and gk.UnitId ~= "" then
        return true
    end
    return false
end
function fns.onQueueSummonUnit()
    task.defer(fns.bCU_21.SaveQueueSummonSettings)
end
function fns.fn772()
    table.clear(bCU_74.SlotFails)
    table.clear(bCU_74.PriorityDone)
    table.clear(bCU_74.AbilityNext)
    table.clear(bCU_74.SmartUsed)
    if bCU_74.DarkMagePriorityAt then
        table.clear(bCU_74.DarkMagePriorityAt)
    end
    bCU_74.Run = nil
    bCU_74.ChaseAnchor = nil
    bCU_74.ActiveWaveFormation = nil
    bCU_74.NextChase = 0
    bCU_74.ExpRestartSignature = nil
    bCU_74.ExpRestartSeenAt = nil
    bCU_74.ExpRestartRequested = nil
    bCU_74.NextWaveRestart = 0
    bCU_74.CardResponse = nil
    fns.bCU_21.LiveCardPrompt = nil
end
function fns.fn784()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        aE9:Disconnect()
    end)
    pcall(function()
        bCU_89.ToggleMoved:Disconnect()
    end)
    pcall(function()
        bCU_89.ToggleEnded:Disconnect()
    end)
    pcall(function()
        bCU_89.ToggleViewport:Disconnect()
    end)
    pcall(function()
        bCU_89.ToggleGui:Destroy()
    end)
    aD9()
    if aEw[2] then
        pcall(bCU_83, false)
    end
    bCU_77()
    fns.bCU_21.SaveWavePositions()
    aD_.OuroborosAeAutoPlayUnload = nil
    aD_.OuroborosAeCardPrompt = nil
    aDV.Unloaded = true
end
function fns.onAntiAfk(ahH)
    if ahH and bCU_37 then
        bCU_37()
    end
end
function fns.fn869()
    local a2V_1
    local a2U_1
    local a2T = aEM()
    a2U_1, a2V_1 = {}, table.clone(fns.bCU_21.EXPEDITION_REWARDS)
    for k, v in a2V_1 do
        a2U_1[v] = true
    end
    local a2W = not a2T or type(a2T.GridNodes) ~= "table"
    if a2W then
        return a2V_1
    end
    for k, v in a2T.GridNodes do
        local a2T_1 = type(v) == "table" and type(v.Rewards) == "table"
        if a2T_1 then
            for k, v in v.Rewards do
                local a2T_2 = v and v.Asset and tostring(v.Asset)
                local a2W_1 = a2T_2
                if a2W_1 == "ExpeditionMaterial1" then
                    a2W_1 = "Timber"
                end
                if a2W_1 and not a2U_1[a2W_1] then
                    a2U_1[a2W_1] = true
                    table.insert(a2V_1, a2W_1)
                end
            end
        end
    end
    table.sort(a2V_1)
    return a2V_1
end
function fns.fn870(kd, ke, kf)
    local aQt = fns.bCU_11()
    if not aQt then
        return nil
    end
    local part = Instance.new("Part")
    local aQv = kd .. ":" .. ke
    part.Name = string.format("PlacementSigil%d_%d", kd, ke)
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = false
    part.CanTouch = false
    part.CastShadow = false
    part.Locked = true
    part.Transparency = 1
    part.Size = Vector3.new(kf, 0.05, kf)
    part.Parent = aQt
    local texture = Instance.new("Texture")
    texture.Name = "Sigil"
    texture.Face = Enum.NormalId.Top
    texture.Texture = fns.bCU_21.VFX_IMAGE
    texture.StudsPerTileU = kf
    texture.StudsPerTileV = kf
    texture.Transparency = 0.3
    texture.Color3 = fns.bCU_21.VFX_COLOR
    texture.Parent = part
    local aQw = { Part = part, Sigil = texture, Size = kf, Ground = nil }
    bCU_47.Markers[aQv] = aQw
    return aQw
end
function fns.onResetPositionsForThisMap()
    if aGB() then
        return
    end
    local bwG = bCU_53()
    if not bwG or not bCU_74.Positions[bwG] then
        aDV:Notify("Nothing saved for this map")
        return
    end
    bCU_74.Positions[bwG] = nil
    bCU_77()
    aDV:Notify("Cleared every position for this map")
end
function fns.fn893()
    if bCU_47.Folder and bCU_47.Folder.Parent then
        return bCU_47.Folder
    end
    local CurrentCamera = workspace.CurrentCamera
    if not CurrentCamera then
        return nil
    end
    local folder = Instance.new("Folder")
    folder.Name = "OuroborosPlacementVfx"
    folder.Parent = CurrentCamera
    bCU_47.Folder = folder
    return folder
end
function fns.fn965()
    local aKk = not aE7 or not isfile(aEb.WavePositionsFile)
    if aKk then
        return
    end
    pcall(function()
        local data = HttpService:JSONDecode(readfile(aEb.WavePositionsFile))
        if type(data) == "table" then
            bCU_74.WavePositions = data
        end
    end)
end
function fns.fn976()
    fns.bCU_21.UnitCache.At = 0
end
function fns.fn1053(fT)
    if #bCU_74.NewUnits < 32 then
        table.insert(bCU_74.NewUnits, fT)
    end
end
function fns.fn1059()
    if not aE7 then
        return
    end
    pcall(function()
        writefile(aEb.WavePositionsFile, HttpService:JSONEncode(bCU_74.WavePositions))
    end)
end
function fns.fn1082(wS)
    local aZS = wS and Options["ExpAnvil" .. tostring(wS)]
    local aZT = aZS
    if aZS then
        aZS = aZT.Value
    end
    local aZT_1 = tonumber(aZS) or 0
    return aZT_1
end
function fns.onRefreshResources()
    local bw3 = aFn()
    Options.ExpWantedResource:SetValues(bw3)
    if Options.ExpRestartResource then
        Options.ExpRestartResource:SetValues(bw3)
    end
    aDV:Notify("Found " .. #bw3 - 1 .. " reward types")
end
function fns.fn1187(bw)
    local aJg = bw == ""
    local aJh = type(bw) ~= "string" or aJg
    if aJh then
        return "Unknown"
    end
    local aJg_1 = bw:gsub("(%l)(%u)", "%1 %2"):gsub("(%u)(%u%l)", "%1 %2")
    return aJg_1
end
function fns.fn1209()
    aD6 = debug.getupvalue(bCU_43.FromId, 1)
end
function fns.fn1225()
    if not aE7 then
        return
    end
    pcall(function()
        if not isfolder("OuroborosHub") then
            makefolder("OuroborosHub")
        end
        if not isfolder(aEb.Folder) then
            makefolder(aEb.Folder)
        end
    end)
end
function fns.fn1233(i8, i9, ja, jb, jc)
    local aPg_1
    local aPf_1
    local aPc = fns.bCU_4(ja)
    local aPd_1 = jb and { 14, 20, 26, 32 }
    local aPn = if aPd_1 then 1 else 0
    local aPl = 989 * aPn + 3451 * (1 - aPn)
    local aPm = 3865 * aPn + 758 * (1 - aPn)
    if not ((aPl * 1646 + aPm * 667 + aPl * aPm) % 16777213 == 8028334) then
        aPd_1 = { aPc * 0.45, aPc * 0.65, aPc * 0.85 }
    end
    local aPe_1 = aPd_1
    aPg_1, aPf_1 = nil, nil
    local From = i9.From
    local To = i9.To
    local aPq = From
    while aPq <= To do
        local aPd_3 = i8[aPq]
        for k, v in aPe_1 do
            local aPB = 0
            while aPB <= 330 do
                local aPC = aPB
                local aPh_1 = math.rad(aPC)
                local aPi = aPd_3.X + math.cos(aPh_1) * v
                local aPj = aPd_3.Z + math.sin(aPh_1) * v
                local aPj_1
                local aPh_2 = aFJ(ja, aPi, aPj, aPd_3.Y)
                if aPh_2 then
                    local aPi_1 = true
                    for k, v in jc do
                        if Vector3.new(v.X - aPh_2.X, 0, v.Z - aPh_2.Z).Magnitude < 8 then
                            aPi_1 = false
                            break
                        end
                    end
                    if aPi_1 then
                        if jb then
                            aPj_1 = v
                        else
                            aPj_1 = bCU_79(i8, aPh_2, aPc)
                        end
                        if not aPf_1 or aPj_1 > aPf_1 then
                            aPf_1, aPg_1 = aPj_1, aPh_2
                        end
                    end
                end
                aPB += 30
            end
        end
        aPq += 2
    end
    return aPg_1
end
function fns.onInputEnded(aij)
    if not bCU_89.Drag.Input or aij.UserInputType ~= bCU_89.Drag.Input.UserInputType then
        return
    end
    bCU_89.Drag.Input = nil
    if bCU_89.Drag.Moved then
        aFH(true)
    else
        aDV:Toggle()
        aF8()
    end
end
function fns.fn1282()
    local aJN = not aE7 or not isfile(aEb.PositionsFile)
    if aJN then
        return
    end
    pcall(function()
        local data = HttpService:JSONDecode(readfile(aEb.PositionsFile))
        if type(data) == "table" then
            bCU_74.Positions = data
            local aJz_1 = false
            for k, v in bCU_74.Positions do
                if type(v) == "table" then
                    for k, v2 in v do
                        if fns.bCU_21.IsStoredPosition(v2) then
                            v[k] = { ["1"] = v2 }
                            aJz_1 = true
                        end
                    end
                end
            end
            if aJz_1 then
                bCU_77()
            end
        end
    end)
end
function fns.fn1307(lw)
    local aQ9_2
    local aQ8 = Toggles.ExpSmartPlace and Toggles.ExpSmartPlace.Value and fns.bCU_21.ExpeditionAnchor
    local aQ8_3
    if aQ8 then
        local aQ8_1 = fns.bCU_21.ExpeditionAnchor(lw)
        if aQ8_1 then
            table.insert(bCU_74.SmartUsed, aQ8_1)
            return aQ8_1
        elseif fns.bCU_5() == fns.bCU_21.SMART.Near then
            return bCU_84()
        else
            local aQ8_2 = bCU_54()
            if #aQ8_3 == 0 then
                return nil
            end
            local aQ9_1 = aEc(aQ8_2, bCU_96(#aQ8_2), lw.Asset, lw.IsFarm, bCU_74.SmartUsed)
            if aQ9_2 then
                table.insert(bCU_74.SmartUsed, aQ9_1)
            end
            return aQ9_1
        end
    elseif fns.bCU_5() == fns.bCU_21.SMART.Near then
        return bCU_84()
    else
        aQ8_3 = bCU_54()
        if #aQ8_3 == 0 then
            return nil
        end
        aQ9_2 = aEc(aQ8_3, bCU_96(#aQ8_3), lw.Asset, lw.IsFarm, bCU_74.SmartUsed)
        if aQ9_2 then
            table.insert(bCU_74.SmartUsed, aQ9_2)
        end
        return aQ9_2
    end
end
function fns.fn1319(gy, gz)
    local aM4 = 0
    for k, v in gy do
        if aEa(v, gz, false) then
            aM4 += 1
        end
    end
    if aEz() then
        aM4 += bCU_78(gz)
    end
    return aM4
end
function fns.fn1321()
    bCU_74.Run = {
        Start = os.clock(),
        Placements = 0,
        Upgrades = 0,
        YenSpent = 0,
        PeakWave = 0,
        MaxWave = nil,
        Snapshot = nil,
        Result = nil
    }
    bCU_74.Reported = false
end
function fns.fn1337(cK, cL)
    local aJ7 = bCU_53()
    local aJ8 = aJ7 and bCU_74.Positions[aJ7]
    if not aJ8 then
        return false
    end
    local aJ8_1 = aJ8[tostring(cK)]
    if cL == nil then
        if aJ8_1 == nil then
            return false
        end
        aJ8[tostring(cK)] = nil
        bCU_77()
        return true
    elseif fns.bCU_21.IsStoredPosition(aJ8_1) then
        if tonumber(cL) ~= 1 then
            return false
        end
        aJ8[tostring(cK)] = nil
        bCU_77()
        return true
    elseif type(aJ8_1) == "table" then
        local max = math.max
        local aKb = tonumber(cL) or 1
        local aKc = tostring(max(1, math.floor(aKb)))
        local aJ9_1 = aJ8_1[aKc] == nil and aJ8_1[tonumber(aKc)] == nil
        if aJ9_1 then
            return false
        end
        aJ8_1[aKc], aJ8_1[tonumber(aKc)] = nil, nil
        if next(aJ8_1) == nil then
            aJ8[tostring(cK)] = nil
        end
        bCU_77()
        return true
    else
        return false
    end
end
function fns.fn1362()
    local ToggleButton = bCU_89.ToggleButton
    local bxO = aDV.Toggled and 0 or 0.45
    ToggleButton.ImageTransparency = bxO
end
function fns.fn1370()
    Skins = require(Information.Skins)
end
function fns.fn1401(ir)
    local aOO = bCU_63()
    local aOP = aEI(ir)
    return aOP and aOO[aOP] or nil
end
function fns.onResetSlotPosition(afY)
    local bwD_1
    local bwC_1
    if not afY then
        return
    end
    if aGB() then
        task.defer(function()
            Options.ResetSlotPosition:SetValue(nil)
        end)
        return
    end
    bwD_1, bwC_1 = fns.bCU_21.ParsePositionChoice(afY)
    local bwE = bwD_1 and bwC_1 and aFx(bwD_1, bwC_1)
    if bwE then
        aDV:Notify(string.format("Cleared slot %d placement %d", bwD_1, bwC_1))
    else
        aDV:Notify("Nothing saved for this map")
    end
    task.defer(function()
        Options.ResetSlotPosition:SetValue(nil)
    end)
end
function fns.onRefreshList()
    fns.bCU_21.RefreshLobbyLists(true)
end
function fns.fn1452(ai0)
    local byz = Options["Priority" .. ai0]
    local byA = byz and byz.Value
    local byA_1 = type(byA) == "string" and byA
    local byz_2 = byA_1
    local byE = if byz_2 then 1 else 0
    local byC = 852 * byE + 3852 * (1 - byE)
    local byD = 230 * byE + 1609 * (1 - byE)
    if not ((byC * 2436 + byD * 2818 + byC * byD) % 16777213 == 2919572) then
        byz_2 = fns.bCU_21.PRIORITY_DEFAULT
    end
    return byz_2
end
function fns.fn1512(aiH)
    local byk = Options["UpgradeLimit" .. aiH]
    local byl = byk and byk.Value
    local byk_1 = tonumber(byl) or 0
    return byk_1
end
function fns.fn1536(bm)
    local aJa = bm and bm.Wave
    local aJb = tonumber(aJa) or 0
    return aJb
end
function fns.onUnload()
    aDV:Unload()
end
function fns.fn1583(Dr)
    local a4I = type(Dr) == "table" and Dr.Responses
    if type(a4I) ~= "table" then
        return false
    end
    local a4I_1 = a4I[aFK] ~= nil or a4I[aFK.UserId] ~= nil or a4I[tostring(aFK.UserId)] ~= nil or a4I[aFK.Name] ~= nil
    if a4I_1 then
        return true
    end
    for k, v in a4I do
        local a4I_2 = v ~= nil
        if a4I_2 then
            local a4J_1 = k == aFK
            if not a4J_1 then
                local a4K = typeof(k) == "Instance" and k:IsA("Player") and k.UserId == aFK.UserId
                a4J_1 = a4K
            end
            a4I_2 = a4J_1
        end
        if a4I_2 then
            return true
        end
    end
    return false
end
function fns.fn1616(tw, tx, ty)
    local aWY = Options.YenReserve and Options.YenReserve.Value
    local aWZ = tonumber(aWY) or 0
    if not (Toggles.ReserveForPlacement and Toggles.ReserveForPlacement.Value) then
        return aWZ
    end
    local Cost = nil
    local aW8 = 1
    local aW6 = fns.bCU_22
    while aW8 <= aW6 do
        local aW9 = aW8
        local aW__1 = tw[aW9]
        local aW0 = aW__1 and not aW__1.Locked and not bCU_50(aW__1)
        if aW0 then
            local aW0_1 = aFl(aW__1)
            local aW1 = aFv(tx, aW__1) < aW0_1 and ty < aGw(aW9)
            if aW1 then
                if not Cost or aW__1.Cost < Cost then
                    Cost = aW__1.Cost
                end
            end
        end
        aW8 += 1
    end
    return aWZ + (Cost or 0)
end
function fns.fn1647()
    local aOc = bCU_53()
    if fns.bCU_21.PathCache.Key == aOc and fns.bCU_21.PathCache.Points then
        return fns.bCU_21.PathCache.Points, fns.bCU_21.PathCache.Remaining, fns.bCU_21.PathCache.Total
    end
    local aOd_1 = bCU_54()
    local aOe = 0
    local aOf = {}
    local aOo = #aOd_1
    local aOn = -1
    while false and aOo <= 1 or true and aOo >= 1 do
        local aOp = aOo
        aOf[aOp] = aOe
        if aOp > 1 then
            aOe += (aOd_1[aOp] - aOd_1[aOp - 1]).Magnitude
        end
        aOo += aOn
    end
    fns.bCU_21.PathCache.Key, fns.bCU_21.PathCache.Points, fns.bCU_21.PathCache.Remaining, fns.bCU_21.PathCache.Total = aOc, aOd_1, aOf, aOe
    return aOd_1, aOf, aOe
end
function fns.fn1653()
    local aMt = fns.bCU_21.UnitCache.Value and os.clock() - fns.bCU_21.UnitCache.At < 0.1
    if aMt then
        return fns.bCU_21.UnitCache.Value
    end
    fns.bCU_21.UnitCache.Value = aGv()
    fns.bCU_21.UnitCache.At = os.clock()
    return fns.bCU_21.UnitCache.Value
end
function fns.onRefreshLists()
    fns.bCU_21.RefreshExpeditionLists(true)
end
function fns.autoPlayLoop()
    while not aDV.Unloaded do
        task.wait(0.5)
        pcall(function()
            local bAs_9, bAs_10
            local bAr_13, bAr_14
            bCU_89.StatusLabel:SetText(aFB("Status", bCU_74.Status, fns.bCU_18))
            bCU_89.YenLabel:SetText(aFB("Yen", tostring(math.floor(aFZ())), aEU))
            local bAp = bCU_69()
            local bAq = bAp
            if bAq then
                local bAr_1 = tostring(bCU_91(bAp))
                local bAs_1 = bAp.MaxWave or "?"
                bAq = bAr_1 .. "/" .. tostring(bAs_1)
            end
            local bAp_1 = bAq
            local bAC = if bAp_1 then 1 else 0
            local bAA = 77 * bAC + 1183 * (1 - bAC)
            local bAB = 399 * bAC + 1627 * (1 - bAC)
            if not ((bAA * 3612 + bAB * 3975 + bAA * bAB) % 16777213 == 1894872) then
                bAp_1 = "-"
            end
            local bAq_1 = bAp_1
            bCU_89.WaveLabel:SetText(aFB("Wave", bAq_1, bCU_87))
            bCU_89.MapLabelUi:SetText(aFB("Current Map", bCU_40(), bCU_87))
            local bAp_2 = aEM()
            if bAp_2 then
                local bAq_3 = bAp_2.CurrentNode or {}
                local ExpStatus = bCU_89.ExpStatus
                local bAs_2 = bAp_2.Status or "-"
                ExpStatus:SetText(aFB("Status", tostring(bAs_2), fns.bCU_19))
                local ExpNode = bCU_89.ExpNode
                local format2 = string.format
                local bAt_1 = bAq_3.Node or "-"
                local bAq_4 = tostring(bAt_1)
                local bAu_1 = {}
                local bAv_1 = bAp_2.NodeHistory
                local bAC_1 = if bAv_1 then 1 else 0
                local bAA_1 = 3638 * bAC_1 + 2470 * (1 - bAC_1)
                local bAB_1 = 1124 * bAC_1 + 2952 * (1 - bAC_1)
                if not ((bAA_1 * 3346 + bAB_1 * 2376 + bAA_1 * bAB_1) % 16777213 == 2155271) then
                    bAv_1 = bAu_1
                end
                local bAu_2 = #bAv_1
                local bAw_1 = tonumber(bAp_2.TotalNodes) or 0
                ExpNode:SetText(aFB("Node", format2("%s  (%d/%d, bosses %d)", bAq_4, bAu_2, bAw_1, fns.bCU_14(bAp_2)), bCU_87))
                local ExpPayload = bCU_89.ExpPayload
                local format = string.format
                local bAs_4 = bAp_2.BaseHealth or 0
                local bAt_2 = aEW(bAs_4)
                local bAu_3 = bAp_2.BaseMaxHealth
                local bAC_2 = if bAu_3 then 1 else 0
                local bAA_2 = 2797 * bAC_2 + 2963 * (1 - bAC_2)
                local bAB_2 = 3772 * bAC_2 + 907 * (1 - bAC_2)
                if not ((bAA_2 * 2088 + bAB_2 * 2830 + bAA_2 * bAB_2) % 16777213 == 10287967) then
                    bAu_3 = 0
                end
                ExpPayload:SetText(aFB("Payload", format("%s / %s", bAt_2, aEW(bAu_3)), aEU))
            else
                bCU_89.ExpStatus:SetText(aFB("Status", "Not in an expedition", fns.bCU_18))
                bCU_89.ExpNode:SetText(aFB("Node", "-", fns.bCU_18))
                bCU_89.ExpPayload:SetText(aFB("Payload", "-", fns.bCU_18))
            end
            local PositionWarning = bCU_89.PositionWarning
            local bAq_6 = Toggles.AutoPlay.Value and aFY("<b>Positions are locked while Auto Play is on.</b> Turn it off to edit them.", "#e8a34d")
            local bAr_6 = bAq_6 or aFY("Positions are saved per gamemode and map, at wherever you are standing.", fns.bCU_18)
            PositionWarning:SetText(bAr_6)
            local bAp_4 = aGo()
            local bAq_7 = fns.bCU_21.PositionChoices(bAp_4)
            local bAr_7 = table.concat(bAq_7, "\x00")
            if bAr_7 ~= fns.bCU_21.PositionChoiceSignature then
                fns.bCU_21.PositionChoiceSignature = bAr_7
                Options.SetSlotPosition:SetValues(bAq_7)
                Options.ResetSlotPosition:SetValues(bAq_7)
                Options.SetWaveSlotPosition:SetValues(bAq_7)
                Options.ResetWaveSlotPosition:SetValues(bAq_7)
            end
            local bAq_8 = fns.bCU_21.WaveFormationWaves()
            local bAr_8 = {}
            for k, v in bAq_8 do
                table.insert(bAr_8, tostring(v))
            end
            local bAq_9 = #bAr_8 > 0 and table.concat(bAr_8, ", ")
            local bAr_9 = bAq_9 or "none"
            bCU_89.WavePositionStatus:SetText("Saved waves: " .. bAr_9)
            local bAL = 1
            local bAJ = fns.bCU_22
            while bAL <= bAJ do
                local bAM = bAL
                local max = math.max
                local floor = math.floor
                local bAs_5 = bAp_4[bAM] and bAp_4[bAM].Limit
                local bAt_3 = tonumber(bAs_5) or 1
                local bAs_6 = max(1, floor(bAt_3))
                local bAq_12 = 0
                local bAQ_1 = 1
                while bAQ_1 <= bAs_6 do
                    local bAR = bAQ_1
                    if fns.bCU_28(bAM, bAR) then
                        bAq_12 += 1
                    end
                    bAQ_1 += 1
                end
                local bAr_11 = bAq_12 > 0 and string.format("%d/%d placements set", bAq_12, bAs_6)
                local bAs_7 = bAr_11 or "not set"
                local bAs_8 = bCU_89.SlotLabels[bAM]
                local bAt_4 = "Slot " .. bAM
                local bAq_13 = bAq_12 > 0 and fns.bCU_19 or fns.bCU_18
                bAs_8:SetText(aFB(bAt_4, bAs_7, bAq_13))
                bAL += 1
            end
            local bAQ_2 = 1
            local bAO_2 = fns.bCU_22
            while bAQ_2 <= bAO_2 do
                local bAT = bAQ_2
                local bAq_14 = bAp_4[bAT]
                bAs_9, bAr_13 = "empty", fns.bCU_18
                if bAq_14 then
                    if bAq_14.Locked then
                        bAs_9 = bAq_14.Display .. " - needs level " .. bAq_14.RequiredLevel
                        bAr_13 = aEU
                    else
                        local format = string.format
                        local Display = bAq_14.Display
                        local Limit = bAq_14.Limit
                        local bAx_1 = bAq_14.Trait and " - " .. bAq_14.Trait or ""
                        bAs_9 = format("%s - max %d%s", Display, Limit, bAx_1)
                        bAr_13 = bAq_14.IsFarm and aEU or fns.bCU_19
                    end
                end
                bCU_89.RosterLabels[bAT]:SetText(aFB("Slot " .. bAT, bAs_9, bAr_13))
                bAs_10, bAr_14 = "empty", fns.bCU_18
                if bAq_14 then
                    local bAt_7 = aEX(bAq_14.Asset)
                    if #bAt_7 == 0 then
                        bAs_10, bAr_14 = bAq_14.Display .. " - no abilities", fns.bCU_18
                    else
                        local bAu_7 = {}
                        for k, v in bAt_7 do
                            local bAt_8 = aFi(v)
                            local insert = table.insert
                            local format = string.format
                            local bAy = bAt_8 and bAt_8.DisplayName or v
                            local bAt_9 = bAt_8 and bAt_8.Upgrade or "?"
                            insert(bAu_7, format("%s (lv %s)", bAy, tostring(bAt_9)))
                        end
                        bAs_10, bAr_14 = bAq_14.Display .. " - " .. table.concat(bAu_7, ", "), fns.bCU_19
                    end
                end
                bCU_89.AbilityLabels[bAT]:SetText(aFB("Slot " .. bAT, bAs_10, bAr_14))
                bAQ_2 += 1
            end
            local bAq_15 = ""
            local bAQ_3 = 1
            local bAO_3 = fns.bCU_22
            while bAQ_3 <= bAO_3 do
                local bA0 = bAQ_3
                local bAs_11 = bAp_4[bA0] and bAp_4[bA0].Asset or "-"
                bAq_15 ..= bAs_11 .. "|"
                bAQ_3 += 1
            end
            if bAq_15 ~= bCU_74.AbilitySignature then
                bCU_74.AbilitySignature = bAq_15
                bCU_52(bAp_4)
            end
        end)
    end
end
function fns.fn1851(Dn, Do)
    if type(Dn) ~= "table" then
        return 0
    elseif Do then
        if not Dn.Stat then
            return 0
        end
        return fns.bCU_21.AnvilPriority(Dn.Stat)
    elseif not Dn.Upgrade then
        return 0
    else
        local a4C = Options["ExpCard" .. tostring(Dn.Upgrade)]
        local a4D = a4C and a4C.Value
        local a4C_1 = tonumber(a4D) or 0
        return a4C_1
    end
end
function fns.fn1886(D3)
    fns.bCU_21.LiveCardPrompt = D3
    bCU_74.CardResponse = nil
end
function fns.fn1919(uC)
    if not uC then
        return false
    end
    local aXI = tostring(uC.CurrentGameState)
    return aXI ~= "InProgress" and aXI ~= "nil"
end
function fns.onSetWaveSlotPosition(afa)
    local bvZ_1
    local bvY_1
    if not afa then
        return
    end
    if aGB() then
        task.defer(function()
            Options.SetWaveSlotPosition:SetValue(nil)
        end)
        return
    end
    bvZ_1, bvY_1 = fns.bCU_21.ParsePositionChoice(afa)
    local bv_ = bCU_84()
    local Value = Options.WavePositionWave.Value
    if not bvZ_1 or not bvY_1 or not bv_ then
        aDV:Notify("Could not read your position")
    elseif fns.bCU_21.SetWavePosition(Value, bvZ_1, bvY_1, bv_) then
        aDV:Notify(string.format("Wave %d slot %d placement %d saved", Value, bvZ_1, bvY_1))
    else
        aDV:Notify("Join a stage first")
    end
    task.defer(function()
        Options.SetWaveSlotPosition:SetValue(nil)
    end)
end
function fns.fn1950()
    local aPT = fns.bCU_5()
    if aPT == fns.bCU_21.SMART.Start then
        return 0.08
    elseif aPT == fns.bCU_21.SMART.Middle then
        return 0.5
    elseif aPT == fns.bCU_21.SMART.Finish then
        return 0.92
    else
        local clamp = math.clamp
        local aPU = Options.SmartPathDistance and Options.SmartPathDistance.Value
        local aPV = tonumber(aPU) or 50
        return clamp(aPV / 100, 0, 1)
    end
end
function fns.fn1953()
    bCU_43.OnNew("CardSelectionPrompt", function(D7)
        local OuroborosAeCardPrompt = aD_.OuroborosAeCardPrompt
        if OuroborosAeCardPrompt then
            OuroborosAeCardPrompt(D7)
        end
    end)
end
function fns.fn1975()
    for k, v in fns.bCU_21.ExpeditionAnvilStats() do
        if fns.bCU_21.AnvilPriority(v) > 0 then
            return true
        end
    end
    return false
end
function fns.fn2001()
    fns.bCU_21.AbilityCatalog = require(Information.Abilities).Abilities
end
function fns.onRefreshNow()
    fns.bCU_21.RefreshBountyUi(true)
end
function fns.fn2019(sb)
    local aV5_1
    local aV4 = fns.bCU_21.AbilityNameCache[sb]
    local aV4_1
    if aV4 then
        return aV4
    end
    aV5_1, aV4_1 = {}, {}
    local aV6 = Units and Units[sb]
    local aV7 = aV6
    if aV6 then
        aV6 = aV7.UpgradeInfo
    end
    local aV7_1 = aV6
    if type(aV7_1) ~= "table" then
        fns.bCU_21.AbilityNameCache[sb] = aV5_1
        return aV5_1
    end
    for k, v in aV7_1 do
        local aV6_1 = type(v) == "table" and type(v.Abilities) == "table"
        if aV6_1 then
            for k, v in v.Abilities do
                local aV6_2 = tostring(v)
                if not aV4_1[aV6_2] then
                    aV4_1[aV6_2] = true
                    table.insert(aV5_1, aV6_2)
                end
            end
        end
    end
    table.sort(aV5_1)
    fns.bCU_21.AbilityNameCache[sb] = aV5_1
    return aV5_1
end
function fns.fn2122(ux)
    local aXF = fns.bCU_17()
    local aXG = aXF and type(aXF.Victory) == "boolean"
    if aXG then
        return aXF.Victory == true and "Victory" or "Defeat"
    end
    local aXF_2 = ux and tostring(ux.CurrentGameState) == "Lose"
    if aXF_2 then
        return "Defeat"
    end
    return nil
end
function fns.fn2166()
    local aZ4 = {}
    local aZ7 = fns.bCU_21.ExpeditionInfo and fns.bCU_21.ExpeditionInfo.Helpers and fns.bCU_21.ExpeditionInfo.Helpers.List or {}
    for k in aZ7 do
        table.insert(aZ4, fns.bCU_21.ExpeditionHelperLabel(k))
    end
    table.sort(aZ4)
    return aZ4
end
function fns.fn2227(ai5)
    local IgnoreUnits = Options.IgnoreUnits
    local byG = IgnoreUnits and IgnoreUnits.Value
    if type(byG) ~= "table" then
        return false
    end
    local byG_1 = byG[ai5.Display] == true
    local byK = if byG_1 then 1 else 0
    local byI = 2795 * byK + 4076 * (1 - byK)
    local byJ = 1395 * byK + 257 * (1 - byK)
    if not ((byI * 3362 + byJ * 3648 + byI * byJ) % 16777213 == 1607562) then
        byG_1 = byG[ai5.Asset] == true
    end
    return byG_1
end
function fns.fn2247()
    pcall(function()
        aDV:Unload()
    end)
end
function fns.onRefreshUnits2()
    bCU_74.QueueSummonChoices = fns.bCU_21.QueueSummonChoices()
    Options.QueueSummonUnit:SetValues(bCU_74.QueueSummonChoices)
    aDV:Notify("Queue Summoning units refreshed")
end
function fns.fn2283(dy, dz, dA)
    local aKD = bCU_53()
    local aKE = aKD and bCU_74.WavePositions[aKD]
    local max2 = math.max
    local floor = math.floor
    local aKH = tonumber(dy) or 1
    local aKI = tostring(max2(1, floor(aKH)))
    local aKE_2 = aKE and aKE[aKI]
    local aKE_3 = tostring(dz)
    local aKH_1 = aKE_2 and aKE_2[aKE_3]
    local max = math.max
    local aKL = tonumber(dA) or 1
    local aKM = tostring(max(1, math.floor(aKL)))
    local aKH_3 = type(aKH_1) ~= "table" or aKH_1[aKM] == nil
    if aKH_3 then
        return false
    end
    aKH_1[aKM] = nil
    if next(aKH_1) == nil then
        aKE_2[aKE_3] = nil
    end
    if next(aKE_2) == nil then
        aKE[aKI] = nil
    end
    if next(aKE) == nil then
        bCU_74.WavePositions[aKD] = nil
    end
    fns.bCU_21.SaveWavePositions()
    return true
end
function fns.fn2292(n1, n2)
    if n2 == "Randomize" then
        local aSV = #n1
        local aSU = -1
        while false and aSV <= 2 or true and aSV >= 2 do
            local aSW = aSV
            local aSQ_1 = math.random(aSW)
            n1[aSW], n1[aSQ_1] = n1[aSQ_1], n1[aSW]
            aSV += aSU
        end
        return
    end
    if n2 == "Lowest Level (Spread Upgrade)" then
        table.sort(n1, function(n5, n6)
            if n5.Level ~= n6.Level then
                return n5.Level < n6.Level
            end
            local aSE = tonumber(n5.Id) or 0
            local aSF = tonumber(n6.Id) or 0
            return aSE < aSF
        end)
        return
    end
    if n2 == "Customize upgrade order (Set below)" then
        table.sort(n1, function(n7, n8)
            local aSI_1
            local aSH_1
            aSH_1, aSI_1 = aF9(n7.SlotNumber), aF9(n8.SlotNumber)
            if aSH_1 ~= aSI_1 then
                return aSH_1 < aSI_1
            elseif n7.SlotNumber ~= n8.SlotNumber then
                return (n7.SlotNumber or 99) < (n8.SlotNumber or 99)
            else
                local aSH_3 = tonumber(n7.Id) or 0
                local aSI_3 = (tonumber(n8.Id))
                local aSM = if aSI_3 then 1 else 0
                local aSK = 3957 * aSM + 1798 * (1 - aSM)
                local aSL = 3395 * aSM + 2265 * (1 - aSM)
                if not ((aSK * 3191 + aSL * 1777 + aSK * aSL) % 16777213 == 15316504) then
                    aSI_3 = 0
                end
                return aSH_3 < aSI_3
            end
        end)
        return
    end
    table.sort(n1, function(ob, oc)
        if ob.SlotNumber ~= oc.SlotNumber then
            return ob.SlotNumber < oc.SlotNumber
        end
        local aSN = tonumber(ob.Id) or 0
        local aSO = tonumber(oc.Id) or 0
        return aSN < aSO
    end)
end
function fns.fn2308()
    local Character = aFK.Character
    local aJV = Character and Character:FindFirstChild("HumanoidRootPart")
    local aJU_1 = aJV
    if aJV then
        aJV = aJU_1.Position
    end
    local aJU_2 = aJV
    local aJZ = if aJU_2 then 1 else 0
    local aJX = 3709 * aJZ + 956 * (1 - aJZ)
    local aJY = 3798 * aJZ + 3354 * (1 - aJZ)
    if not ((aJX * 1708 + aJY * 3115 + aJX * aJY) % 16777213 == 15475311) then
        aJU_2 = nil
    end
    return aJU_2
end
function fns.onResetMatchCount()
    fns.bCU_21.SetMatchCount(0)
    aDV:Notify("Match count reset")
end
function fns.fn2381(e8)
    local aLZ_1
    local aLY_1
    local aLX = e8
    local aL2 = if aLX then 1 else 0
    local aL0 = 3308 * aL2 + 3985 * (1 - aL2)
    local aL1 = 3473 * aL2 + 1829 * (1 - aL2)
    if not ((aL0 * 1507 + aL1 * 2326 + aL0 * aL1) % 16777213 == 7774825) then
        aLX = ""
    end
    aLY_1, aLZ_1 = tostring(aLX):match("Slot%s+(%d+).-|%s+Placement%s+(%d+)")
    return tonumber(aLY_1), tonumber(aLZ_1)
end
function fns.onCompactSidebar(ahJ)
    Window:SetCompact(ahJ)
end
function fns.onSetSlotPosition(aeL)
    local bvx_1
    local bvw_1
    if not aeL then
        return
    end
    if aGB() then
        task.defer(function()
            Options.SetSlotPosition:SetValue(nil)
        end)
        return
    end
    bvx_1, bvw_1 = fns.bCU_21.ParsePositionChoice(aeL)
    local bvy = bCU_84()
    if not bvx_1 or not bvw_1 or not bvy then
        aDV:Notify("Could not read your position")
    elseif aDW(bvx_1, bvy, bvw_1) then
        aDV:Notify(string.format("Slot %d placement %d set to your current location", bvx_1, bvw_1))
    else
        aDV:Notify("Join a stage first")
    end
    task.defer(function()
        Options.SetSlotPosition:SetValue(nil)
    end)
end
function fns.onResetPositionsForEveryMap()
    if aGB() then
        return
    end
    table.clear(bCU_74.Positions)
    bCU_77()
    aDV:Notify("Cleared every saved position")
end
function fns.fn2504()
    return Toggles and Toggles.UsePhantomPlacements and Toggles.UsePhantomPlacements.Value == true
end
function fns.fn2506()
    fns.bCU_21.ResultScope = Fusion:scoped(require(aGn.FusionPackage.State))
end
function fns.fn2525(AS)
    local a2b_1
    local a2a_2
    local a18_1
    local ExpeditionSections = workspace:FindFirstChild("ExpeditionSections")
    local PayloadModel = workspace:FindFirstChild("PayloadModel", true)
    local a17 = not ExpeditionSections or not PayloadModel
    local a17_1
    if a17 then
        return nil
    end
    local Position = PayloadModel:GetPivot().Position
    a18_1, a17_1 = nil, nil
    for i, descendant in ExpeditionSections:GetDescendants() do
        local a19_1 = descendant:IsA("BasePart") and descendant.Name == "GroundPlacement"
        if a19_1 then
            local Magnitude = (descendant.Position - Position).Magnitude
            if not a17_1 or Magnitude < a17_1 then
                a18_1, a17_1 = descendant, Magnitude
            end
        end
    end
    a2b_1, a2a_2 = nil, nil
    for k, v in CollectionService:GetTagged("GroundPlacement") do
        local a17_2 = v:IsA("BasePart") and v:IsDescendantOf(workspace)
        if a17_2 then
            local a19_3 = v:IsDescendantOf(ExpeditionSections) or v:IsDescendantOf(PayloadModel)
            a17_2 = a19_3
        end
        if a17_2 then
            local Magnitude = (v.Position - Position).Magnitude
            if not a2a_2 or Magnitude < a2a_2 then
                a2b_1, a2a_2 = v, Magnitude
            end
        end
    end
    if not a2b_1 or not a18_1 then
        return nil
    end
    if bCU_74.ExpeditionGround ~= a2b_1 then
        bCU_74.ExpeditionGround = a2b_1
        table.clear(bCU_74.SmartUsed)
    end
    local a14_2 = a2b_1.CFrame:PointToObjectSpace(Position)
    local a15_2 = Vector3.new(Position.X - a18_1.Position.X, 0, Position.Z - a18_1.Position.Z)
    local a16_2 = a2b_1.CFrame:VectorToObjectSpace(a15_2)
    local a15_3 = Vector3.new(a16_2.X, 0, a16_2.Z)
    local a17_4 = a15_3.Magnitude > 0 and a15_3.Unit
    local a2r = if a17_4 then 1 else 0
    local a2p = 3177 * a2r + 2851 * (1 - a2r)
    local a2q = 3375 * a2r + 98 * (1 - a2r)
    if not ((a2p * 912 + a2q * 690 + a2p * a2q) % 16777213 == 15948549) then
        a17_4 = Vector3.zAxis
    end
    local a15_4 = a17_4
    local a16_4 = 1 / math.max(math.abs(a15_4.X) / math.max(a2b_1.Size.X * 0.5, 0.01), math.abs(a15_4.Z) / math.max(a2b_1.Size.Z * 0.5, 0.01)) - 2
    local clamp = math.clamp
    local a18_2 = tonumber(Options.ExpPathPosition.Value) or 50
    local a19_5 = clamp(a18_2, 1, 99)
    local a17_6 = Vector3.new(math.clamp(a14_2.X, -a2b_1.Size.X * 0.5 + 1, a2b_1.Size.X * 0.5 - 1), 0, math.clamp(a14_2.Z, -a2b_1.Size.Z * 0.5 + 1, a2b_1.Size.Z * 0.5 - 1))
    local a14_3 = (-a15_4 * a16_4):Lerp(a17_6, (a19_5 - 1) / 98)
    local a16_5 = (tonumber(Options.ExpPlaceSpacing.Value))
    local a2r_1 = if a16_5 then 1 else 0
    local a2p_1 = 3464 * a2r_1 + 1700 * (1 - a2r_1)
    local a2q_1 = 1210 * a2r_1 + 2789 * (1 - a2r_1)
    if not ((a2p_1 * 1019 + a2q_1 * 1743 + a2p_1 * a2q_1) % 16777213 == 9830286) then
        a16_5 = 8
    end
    local a17_7 = a16_5
    local a16_6 = Vector3.new(-a15_4.Z, 0, a15_4.X)
    local a15_5 = {}
    local a2u = 0
    while a2u <= 12 do
        local a2v = a2u
        local insert = table.insert
        local a19_6 = AS and AS.IsFarm
        if a19_6 then
            a19_6 = 12 - a2v
        end
        local a2a_3 = a19_6 or a2v
        insert(a15_5, a2a_3)
        a2u += 1
    end
    for k, v in a15_5 do
        local a18_4 = v == 0 and 0
        if not a18_4 then
            local a15_7 = math.ceil(v / 2) * a17_7
            a18_4 = a15_7 * (v % 2 == 0 and -1 or 1)
        end
        local a15_8 = a18_4
        local a18_5 = a14_3 + a16_6 * a15_8 + Vector3.new(0, a2b_1.Size.Y * 0.5, 0)
        local a15_9 = math.abs(a18_5.X) <= a2b_1.Size.X * 0.5 - 1 and math.abs(a18_5.Z) <= a2b_1.Size.Z * 0.5 - 1
        if a15_9 then
            local a15_10 = a2b_1.CFrame:PointToWorldSpace(a18_5)
            local a18_6 = true
            for k, v in bCU_74.SmartUsed do
                if Vector3.new(v.X - a15_10.X, 0, v.Z - a15_10.Z).Magnitude < a17_7 then
                    a18_6 = false
                    break
                end
            end
            if a18_6 then
                local a18_7 = AS and bCU_64(AS.Asset, a15_10.X, a15_10.Z, a15_10.Y)
                local a19_8 = not AS
                local a2a_5 = a18_7
                if not a19_8 then
                    if a18_7 then
                        a18_7 = aFb(AS.Asset, a2a_5)
                    end
                    a19_8 = a18_7
                end
                if a19_8 then
                    return a15_10
                end
            end
        end
    end
    return nil
end
function fns.onSendTestSummary()
    if not bCU_74.Run then
        aEj()
    end
    local bxz = fns.worker(bCU_94("Victory"))
    local bxz_1 = bxz and "Test summary sent" or "Webhook failed, check the URL and your executor's HTTP support"
    aDV:Notify(bxz_1)
end
function fns.fn2616(jP)
    local aP9_1
    local aP8_1
    local aP5 = bCU_54()
    if #aP5 == 0 then
        return 0, "No enemy path found for this map"
    end
    local aP6 = aGo()
    if not next(aP6) then
        return 0, "No units equipped"
    end
    local aP7 = bCU_96(#aP5)
    aP8_1, aP9_1 = {}, 0
    for k, v in { false, true } do
        local aQm = 1
        local aQk = fns.bCU_22
        while aQm <= aQk do
            local aQo = aQm
            local aQa = aP6[aQo]
            local aQb = aQa and aQa.IsFarm == v
            if aQb then
                local aQc = jP or not fns.bCU_28(aQo)
                aQb = aQc
            end
            if aQb then
                local aQb_1 = aEc(aP5, aP7, aQa.Asset, aQa.IsFarm, aP8_1)
                if aQb_1 then
                    table.insert(aP8_1, aQb_1)
                    aDW(aQo, aQb_1)
                    aP9_1 += 1
                end
            end
            aQm += 1
        end
    end
    return aP9_1
end
function fns.onRefreshEquipmentList()
    fns.bCU_21.RefreshLobbyLists(true)
end
function fns.fn2625(BK, BL)
    BL = fns.bCU_21.EXPEDITION_RESOURCE_KEYS[BL] or BL
    local a2H_1 = 0
    local a2I = type(BK) ~= "table" or type(BK.Rewards) ~= "table"
    if a2I then
        return 0
    end
    for k, v in BK.Rewards do
        local a2I_1 = type(v) == "table" and v.Asset
        if a2I_1 then
            local a2I_2 = BL == "Any"
            local a2S = if a2I_2 then 1 else 0
            local a2Q = 3163 * a2S + 966 * (1 - a2S)
            local a2R = 3685 * a2S + 2237 * (1 - a2S)
            if not ((a2Q * 938 + a2R * 1202 + a2Q * a2R) % 16777213 == 2274706) then
                a2I_2 = tostring(v.Asset) == BL
            end
            if a2I_2 then
                local a2I_3 = tonumber(v.Amount) or 0
                a2H_1 += a2I_3
            end
        end
    end
    return a2H_1
end
function fns.fn2634(pe, pf)
    if pf == fns.bCU_21.CHASE_ANY then
        return true
    end
    local aT2 = aEy(pe)
    if pf == fns.bCU_21.CHASE_BOSS then
        return aT2
    end
    return not aT2
end
function fns.fn2656(C7)
    if not Toggles.ExpAutoRestart.Value then
        return nil
    end
    if not (#(C7.NodeHistory or {}) <= 1) then
        return nil
    end
    local a4t_2 = fns.bCU_21.ExpeditionRouteSignature(C7)
    if not a4t_2 then
        return nil
    elseif bCU_74.ExpRestartSignature ~= a4t_2 then
        bCU_74.ExpRestartSignature = a4t_2
        bCU_74.ExpRestartSeenAt = os.clock()
        bCU_74.ExpRestartRequested = nil
        return nil
    else
        local a4u_1 = os.clock()
        local a4v = bCU_74.ExpRestartSeenAt
        local a4B = if a4v then 1 else 0
        local a4z = 3315 * a4B + 1789 * (1 - a4B)
        local a4A = 666 * a4B + 1055 * (1 - a4B)
        if not ((a4z * 2837 + a4A * 2152 + a4z * a4A) % 16777213 == 13045677) then
            a4v = os.clock()
        end
        local a4u_2 = a4u_1 - a4v < 2
        local a4B_1 = if a4u_2 then 1 else 0
        local a4z_1 = 3795 * a4B_1 + 599 * (1 - a4B_1)
        local a4A_1 = 2997 * a4B_1 + 970 * (1 - a4B_1)
        if not ((a4z_1 * 782 + a4A_1 * 3223 + a4z_1 * a4A_1) % 16777213 == 7223423) then
            a4u_2 = bCU_74.ExpRestartRequested == a4t_2
        end
        if a4u_2 then
            return nil
        end
        local a4u_3 = Options.ExpRestartResource.Value or "Any"
        local a4t_4 = fns.bCU_21.AnalyzeExpeditionRoute(C7, a4u_3)
        local a4w = a4t_4.Route[1] and C7.GridNodes[a4t_4.Route[1]] or C7.CurrentNode
        local a4x = Options.ExpRestartStageTypes.Value or {}
        local a4x_1 = Toggles.ExpRestartFirstStage.Value and a4w and type(a4x) == "table" and a4x[tostring(a4w.Node)] == true
        if a4x_1 then
            return "first stage is " .. bCU_95(tostring(a4w.Node))
        end
        local a4v_3 = tonumber(Options.ExpRestartSlowOver.Value) or 0
        if a4v_3 > 0 and a4t_4.Slow > a4v_3 then
            return string.format("route has %d slow stages", a4t_4.Slow)
        end
        local a4v_5 = tonumber(Options.ExpRestartUntilAmount.Value) or 0
        if a4v_5 > 0 and a4t_4.Reward < a4v_5 then
            return string.format("best route has %s %s", aEW(a4t_4.Reward), bCU_95(tostring(a4u_3)))
        end
        return nil
    end
end
function fns.onCopyJoinScript_JobID()
    fns.bCU_3(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, aDY))
    aDV:Notify("Copied join script to clipboard")
end
function fns.fn2764(o2)
    local aTR = o2 or ""
    return string.find(string.lower(tostring(aTR)), "boss", 1, true) ~= nil
end
function fns.fn2797(ag4)
    for k, v in fns.bCU_21.ExpeditionAnvilStats() do
        local bxi = "ExpAnvil" .. tostring(v)
        local bxj = bCU_95(tostring(v))
        local bxl = v == "BonusMatchRewards" and 10 or 0
        ag4:AddSlider(bxi, {
            Text = bxj,
            Default = bxl,
            Min = 0,
            Max = 10,
            Rounding = 0,
            Tooltip = "Priority for " .. bCU_95(tostring(v)) .. "."
        })
    end
end
function fns.fn2826(eY)
    local aLG = eY or aGo()
    eY = aLG
    local aLG_1 = {}
    local aLP = 1
    local aLN = fns.bCU_22
    while aLP <= aLN do
        local aLQ = aLP
        local aLH = eY[aLQ]
        local max = math.max
        local floor = math.floor
        local aLK = aLH and aLH.Limit
        local aLL = tonumber(aLK) or 1
        local aLK_1 = max(1, floor(aLL))
        local aLU = 1
        while aLU <= aLK_1 do
            local aLV = aLU
            local insert = table.insert
            local format = string.format
            local aLL_1 = aLH and aLH.Display or "Empty"
            insert(aLG_1, format("Slot %d - %s | Placement %d", aLQ, aLL_1, aLV))
            aLU += 1
        end
        aLP += 1
    end
    return aLG_1
end
function fns.fn2898(jI)
    local aPX = bCU_75()
    local aPY = math.clamp(aPX - fns.bCU_21.SMART_WINDOW / 2, 0, 1)
    local aPZ = math.clamp(aPX + fns.bCU_21.SMART_WINDOW / 2, 0, 1)
    local aP0 = aEI(aPY) or 1
    local aPY_1 = math.clamp(aP0, 1, jI)
    local aP0_1 = (aEI(aPZ))
    local aP4 = if aP0_1 then 1 else 0
    local aP2 = 4007 * aP4 + 1087 * (1 - aP4)
    local aP3 = 952 * aP4 + 2113 * (1 - aP4)
    if not ((aP2 * 227 + aP3 * 1335 + aP2 * aP3) % 16777213 == 5995173) then
        aP0_1 = jI
    end
    local aPZ_1 = math.clamp(aP0_1, 1, jI)
    if aPZ_1 < aPY_1 then
        aPY_1, aPZ_1 = aPZ_1, aPY_1
    end
    return { From = aPY_1, To = aPZ_1, Centre = aPX }
end
function fns.fn2919(h4)
    local aOu_1
    local aOs_1
    local aOr_1
    aOr_1, aOs_1 = bCU_63()
    local aOt = not aOr_1 or #aOr_1 == 0
    local aOt_1
    if aOt then
        return nil
    end
    aOu_1, aOt_1 = nil, nil
    for k, v in aOr_1 do
        local Magnitude = Vector3.new(v.X - h4.X, 0, v.Z - h4.Z).Magnitude
        if not aOt_1 or Magnitude < aOt_1 then
            aOu_1, aOt_1 = k, Magnitude
        end
    end
    return aOs_1[aOu_1]
end
function fns.fn2961(r7)
    return fns.bCU_21.AbilityCatalog and fns.bCU_21.AbilityCatalog[r7] or nil
end
function fns.onRefreshList2()
    fns.bCU_21.RefreshLobbyAutomationLists(true)
end
function fns.onQueueSummonRequirePity()
    task.defer(fns.bCU_21.SaveQueueSummonSettings)
end
function fns.onRefreshUnits()
    fns.bCU_21.RefreshLobbyLists(true)
end
function fns.fn3039()
    if os.clock() < fns.bCU_21.RayParamsNext then
        return
    end
    fns.bCU_21.RayParamsNext = os.clock() + 0.5
    pcall(function()
        fns.bCU_8.ExcludeInstances = aF7:GetRaycastIgnoreList()
    end)
end
function fns.fn3049(bj)
    local aI8 = bj ~= nil and tostring(bj.Active) == "true"
    return aI8
end
function fns.fn3050(nF, nG)
    local aSk = aGj(nF)
    if aSk <= -2 then
        return 0, false
    elseif aSk == -1 then
        return nG.Max, true
    elseif aSk == 0 then
        return nG.Max, false
    else
        return math.min(aSk, nG.Max), false
    end
end
function fns.fn3094()
    local aJl_1
    local aJk_1
    local aJj = bCU_53()
    if not aJj then
        return "Not in a stage"
    end
    aJk_1, aJl_1 = aJj:match("^([^|]*)|(.*)$")
    return bCU_95(aJl_1) .. " (" .. bCU_95(aJk_1) .. ")"
end
function fns.fn3112(adZ, ad_)
    return string.format('<font color="%s">%s</font>', ad_, adZ)
end
function fns.fn3222()
    local aZJ = {}
    local aZM = fns.bCU_21.ExpeditionInfo and fns.bCU_21.ExpeditionInfo.StatAnvils and fns.bCU_21.ExpeditionInfo.StatAnvils.Stats or {}
    for k in aZM do
        table.insert(aZJ, tostring(k))
    end
    table.sort(aZJ)
    return aZJ
end
function fns.fn3229()
    local aKR = bCU_53()
    local aKS = aKR and bCU_74.WavePositions[aKR]
    local aKR_1 = {}
    local aKS_1 = {}
    local aKU = aKS
    local aKY = if aKU then 1 else 0
    local aKW = 2489 * aKY + 2291 * (1 - aKY)
    local aKX = 4011 * aKY + 594 * (1 - aKY)
    if not ((aKW * 250 + aKX * 3825 + aKW * aKX) % 16777213 == 9170491) then
        aKU = aKS_1
    end
    for k, v in aKU do
        local aKS_2 = tonumber(k)
        local aKT_1 = aKS_2 and aKS_2 >= 1 and type(v) == "table" and next(v)
        if aKT_1 then
            table.insert(aKR_1, math.floor(aKS_2))
        end
    end
    table.sort(aKR_1)
    return aKR_1
end
function fns.fn3276(y5)
    local a03 = os.clock()
    local a03_1
    local a04 = bCU_74.NextShop or 0
    local a04_1
    if a03 < a04 then
        return
    end
    bCU_74.NextShop = os.clock() + 0.75
    a04_1, a03_1 = fns.bCU_21.ExpeditionShopItems()
    if not a04_1 or not a03_1 then
        return
    end
    local a05_1 = tonumber(y5.BaseHealth) or 0
    local a05_2 = tonumber(y5.BaseMaxHealth) or 0
    local a05_3 = Options.ExpRepairBelow and Options.ExpRepairBelow.Value
    local a08 = tonumber(a05_3) or 50
    local a08_1 = Options.ExpBuyItems and Options.ExpBuyItems.Value
    local a09 = {}
    local a1a = a08_1
    local a1n = if a1a then 1 else 0
    local a1l = 2088 * a1n + 715 * (1 - a1n)
    local a1m = 1837 * a1n + 1209 * (1 - a1n)
    if not ((a1l * 3556 + a1m * 150 + a1l * a1m) % 16777213 == 11536134) then
        a1a = a09
    end
    local a08_2 = a1a
    local a1b = Options.ExpTomeTraits and Options.ExpTomeTraits.Value or {}
    local a1c = Options.ExpHireUnits and Options.ExpHireUnits.Value or {}
    local a1b_2 = Toggles.ExpAutoHire.Value and type(a1c) == "table" and type(y5) == "table" and type(y5.Helpers) == "table"
    if a1b_2 then
        for k, v in y5.Helpers do
            local a1b_3 = type(v) == "table"
            if a1b_3 then
                a1b_3 = v.Asset or v.Id
            end
            local a1c_2 = a1b_3 or v
            local a1b_4 = tostring(a1c_2)
            local a1c_3 = a1c[a1b_4] == true or a1c[fns.bCU_21.ExpeditionHelperLabel(a1b_4)] == true
            local a1c_4 = type(v) == "table" and v.Price
            local a1e_1 = tonumber(a1c_4) or 0
            local a1c_5 = a1e_1 <= aFZ()
            if a1c_3 and a1c_5 then
                local concat = table.concat
                local a1d_2 = bCU_74.CheckpointNode or "?"
                local a1e_3 = concat({ tostring(a1d_2), "Hire", tostring(k), tostring(aFZ()) }, ":")
                if bCU_74.ShopAttemptKey ~= a1e_3 then
                    bCU_74.ShopAttemptKey = a1e_3
                    if aD8("HireUnit", k) then
                        bCU_74.Status = "Hiring " .. bCU_95(a1b_4)
                    end
                    return true
                end
            end
        end
    end
    for k, v in a03_1 do
        local a1a_4 = v.Name or v.Asset or ""
        local a03_3 = tostring(a1a_4)
        local a1a_5 = string.lower(a03_3)
        local a1b_5 = type(v.Data) == "table" and v.Data
        local a1d_3 = a1b_5 or {}
        local a1c_8 = a1d_3.Trait and tostring(a1d_3.Trait)
        local a1c_9 = v.Stock == nil or tonumber(v.Stock) == nil or tonumber(v.Stock) > 0
        local a1c_10 = tonumber(v.Price) or 0
        local a1f = a1c_10 <= aFZ()
        local a1c_11 = Toggles.ExpAutoBuy.Value and type(a08_2) == "table" and a08_2[a03_3] == true
        if not a1c_11 then
            local a1h_1 = Toggles.ExpAutoApplyTomes.Value and a1a_5 == "expeditiontome"
            if a1h_1 then
                local a1i_1 = not a1c_8
                if not a1i_1 then
                    local a1j = type(a1b) == "table" and a1b[a1c_8] == true
                    a1i_1 = a1j
                end
                a1h_1 = a1i_1
            end
            a1c_11 = a1h_1
        end
        if not a1c_11 then
            local a1d_5 = Toggles.ExpAutoStatAnvil.Value and a1a_5:find("anvil", 1, true) ~= nil
            if a1d_5 then
                local a1h_2 = not a1d_3.Stat
                if a1h_2 ~= false then
                    a1h_2 = fns.bCU_21.HasAnvilPriority()
                end
                local a1i_2 = a1h_2 or fns.bCU_21.AnvilPriority(a1d_3.Stat) > 0
                a1d_5 = a1i_2
            end
            a1c_11 = a1d_5
        end
        if not a1c_11 then
            local a1d_6 = Toggles.ExpAutoRepair.Value and a05_2 > 0 and a05_1 / a05_2 * 100 <= a08
            if a1d_6 then
                local a1h_3 = a1a_5:find("repair", 1, true) ~= nil or a1d_3.Repair == true
                a1d_6 = a1h_3
            end
            a1c_11 = a1d_6
        end
        if a1c_11 and a1c_9 and a1f then
            local concat = table.concat
            local a1b_8 = bCU_74.CheckpointNode or "?"
            local a1c_12 = concat({ tostring(a1b_8), tostring(k), tostring(v.Stock), tostring(aFZ()) }, ":")
            if bCU_74.ShopAttemptKey == a1c_12 then
                return false
            end
            bCU_74.ShopAttemptKey = a1c_12
            if fns.bCU_21.BuyCheckpointItem(a04_1, k) then
                bCU_74.Status = "Buying " .. bCU_95(a03_3)
            end
            return true
        end
    end
    return false
end
function fns.onRenderStepped(anr)
    if aDV.Unloaded then
        return
    end
    pcall(aEV, anr)
    pcall(fns.bCU_15)
end
function fns.fn3319()
    local bvc_1
    local bvb_1
    if identifyexecutor then
        bvc_1, bvb_1 = identifyexecutor()
        local bvd = bvc_1 ~= ""
        local bve = type(bvc_1) == "string" and bvd
        if bve then
            local bvd_1 = bvb_1 ~= ""
            local bve_1 = type(bvb_1) == "string" and bvd_1
            aEx = bve_1 and bvc_1 .. " " .. bvb_1 or bvc_1
        end
    end
end
function fns.fn3333()
    local Character = aFK.Character
    local aI6 = Character and Character:GetAttribute("InMap")
    if aI6 then
        return true
    end
    return workspace:FindFirstChild("Map") ~= nil
end
function fns.fn3346(iM, iN)
    local aOW = Units and Units[iM]
    local aOX = aOW
    if aOW then
        aOW = aOX.UpgradeInfo
    end
    local aOX_1 = aOW
    if aOW then
        local aOY_1 = tonumber(iN) or 0
        aOW = aOX_1[aOY_1]
    end
    local aOY_2 = aOX_1
    local aOZ = aOW
    if aOY_2 then
        aOY_2 = aOX_1[0]
    end
    local aOX_2 = aOY_2
    if aOW then
        aOW = aOZ.Range
    end
    local aOY_3 = (tonumber(aOW))
    if not aOY_3 then
        local aOW_1 = aOX_2 and aOX_2.Range
        aOY_3 = tonumber(aOW_1)
    end
    local aOW_2 = aOY_3
    local aO2 = if aOW_2 then 1 else 0
    local aO0 = 1959 * aO2 + 1747 * (1 - aO2)
    local aO1 = 2587 * aO2 + 1370 * (1 - aO2)
    if not ((aO0 * 3249 + aO1 * 3733 + aO0 * aO1) % 16777213 == 4312782) then
        aOW_2 = 12
    end
    return aOW_2
end
function fns.worker6()
    while not aDV.Unloaded do
        task.wait(300)
        pcall(function()
            local Character = aFK.Character
            local by5 = Character and Character:FindFirstChildOfClass("Humanoid")
            if by5 then
                by5:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
end
function fns.fn3451()
    local a_g = {}
    local a_h = {}
    local a_i = fns.bCU_21.ItemInfo
    if not a_i then
        local a_j_1 = type(Information) == "table" and type(Information.Items) == "table" and require(Information.Items)
        local a_k = {}
        local a_l = a_j_1
        local a_p = if a_l then 1 else 0
        local a_n = 1467 * a_p + 912 * (1 - a_p)
        local a_o = 729 * a_p + 3898 * (1 - a_p)
        if not ((a_n * 305 + a_o * 2110 + a_n * a_o) % 16777213 == 3055068) then
            a_l = a_k
        end
        a_i = a_l
    end
    for k, v in a_i do
        local a_i_1 = type(v) == "table" and v.Name
        local a_i_2 = a_i_1 or k or ""
        local a_j_3 = tostring(a_i_2)
        local a_i_3 = a_j_3 ~= "" and string.find(string.lower(a_j_3), "expedition") and not a_g[a_j_3]
        if a_i_3 then
            a_g[a_j_3] = true
            table.insert(a_h, a_j_3)
        end
    end
    table.sort(a_h)
    return a_h
end
function fns.onMassSetFormationPositions()
    local bwg = if aGB() then 1 else 0
    if bwg == 1 then
        return
    end
    local bv5 = bCU_84()
    if not bv5 then
        aDV:Notify("Could not read your position")
        return
    end
    local Value = Options.WavePositionWave.Value
    local bv7 = 0
    local bv8 = aGo()
    local bwj = 1
    local bwh = fns.bCU_22
    while bwj <= bwh do
        local bwk = bwj
        local bwb = bv8[bwk] and bv8[bwk].Limit
        local bwc = tonumber(bwb) or 1
        local bwb_1 = math.max(1, math.floor(bwc))
        local bwo = 1
        while bwo <= bwb_1 do
            local bwp = bwo
            if fns.bCU_21.SetWavePosition(Value, bwk, bwp, bv5) then
                bv7 += 1
            end
            bwo += 1
        end
        bwj += 1
    end
    local bv5_1 = bv7 > 0 and string.format("Saved %d positions for wave %d", bv7, Value)
    local bv6_1 = bv5_1 or "Join a stage first"
    aDV:Notify(bv6_1)
end
function fns.fn3505(CV)
    local a31 = aEM()
    local a32 = not a31 or type(a31.GridNodes) ~= "table" or not a31.CurrentNode
    if a32 then
        return nil
    end
    local a32_1 = fns.bCU_21.AnalyzeExpeditionRoute(a31, CV)
    return a32_1 and #a32_1.Route > 0 and a32_1.Route or nil
end
function fns.fn3537()
    TraitData = require(Information.Traits).TraitData
end
function fns.fn3550(ais)
    local byb = Options["PlaceOrder" .. ais]
    local byc = byb and byb.Value
    local byb_1 = tonumber(byc) or ais
    return byb_1
end
function fns.worker5()
    local bzZ_1
    local bzY_1
    while not aDV.Unloaded do
        if bCU_74.Busy then
            task.wait(0.1)
        else
            bCU_74.Busy = true
            bzY_1, bzZ_1 = pcall(aEn)
            bCU_74.Busy = false
            if not bzY_1 then
                bCU_74.Status = "Error: " .. tostring(bzZ_1)
            end
            task.wait(0.15)
        end
    end
end
function fns.fn3590()
    if fns.bCU_9.Pin then
        pcall(function()
            fns.bCU_9.Pin:Destroy()
        end)
    end
    fns.bCU_9.Pin = nil
    fns.bCU_9.Percent, fns.bCU_9.Key = nil, nil
end
function fns.onRefreshList4()
    fns.bCU_21.RefreshLobbyAutomationLists(true)
end
function fns.fn3614(C_)
    local a37 = type(C_.GridNodes) ~= "table" or type(C_.NodeQueue) ~= "table" or #C_.NodeQueue == 0 or not C_.CurrentNode
    if a37 then
        return nil
    end
    local a37_1 = {}
    for k, v in C_.GridNodes do
        local a38 = {}
        local a4a = v.Rewards or {}
        for k, v in a4a do
            table.insert(a38, tostring(v.Asset) .. ":" .. tostring(v.Amount))
        end
        table.sort(a38)
        local insert = table.insert
        local concat = table.concat
        local a4b = tostring(k)
        local a4c = tostring(v.Node)
        local a4d = table.concat(a38, ",")
        local a4f = v.Targets or {}
        insert(a37_1, concat({ a4b, a4c, a4d, tostring(#a4f) }, ":"))
    end
    table.sort(a37_1)
    return tostring(C_.NodeQueue[1]) .. "|" .. table.concat(a37_1, "|")
end
function fns.fn3628()
    local aSp = 1
    local aSn = fns.bCU_22
    while true do
        if not (aSp <= aSn) then
            return false
        end
        local aSq = aSp
        if aGj(aSq) ~= 0 then
            break
        end
        aSp += 1
    end
    return true
end
function fns.fn3640(c9, da, db)
    local aKm = bCU_53()
    local aKn = aKm and bCU_74.WavePositions[aKm]
    local aKm_1 = aKn
    if aKn then
        local max = math.max
        local floor = math.floor
        local aKq = tonumber(c9) or 1
        aKn = aKm_1[tostring(max(1, floor(aKq)))]
    end
    local aKm_2 = aKn
    if aKn then
        aKn = aKm_2[tostring(da)]
    end
    local aKm_3 = aKn
    local aKn_1 = type(aKm_3) == "table"
    if aKn_1 then
        local aKo_2 = db or 1
        local aKp_2 = aKm_3[tostring(aKo_2)]
        if not aKp_2 then
            aKp_2 = aKm_3[db or 1]
        end
        aKn_1 = aKp_2
    end
    local aKm_4 = aKn_1 or nil
    local aKu = if not fns.bCU_21.IsStoredPosition(aKm_4) then 1 else 0
    if aKu == 1 then
        return nil
    end
    return Vector3.new(aKm_4[1], aKm_4[2], aKm_4[3])
end
function fns.fn3645(uS)
    local aXR = uS.Name or uS.Asset or "Unknown"
    local aXQ_1 = bCU_31(aXR)
    local aXS = tonumber(uS.Price) or 0
    return aXQ_1 .. " | " .. aEW(aXS)
end
function fns.fn3650()
    fns.bCU_21.ItemCatalog = require(Information.Items)
end
function fns.fn3662(iy, iz, iA, iB)
    aEl()
    local aOS = workspace:Raycast(Vector3.new(iz, iB + 30, iA), Vector3.new(0, -500, 0), fns.bCU_8)
    if not aOS then
        return nil
    end
    local aOT = Units and Units[iy]
    local aOU = aOT
    if aOT then
        aOT = tostring(aOU.PlacementType) == "Hill"
    end
    local aOT_1 = aOT and "HillPlacement" or "GroundPlacement"
    if not CollectionService:HasTag(aOS.Instance, aOT_1) then
        return nil
    end
    return aOS.Position
end
function fns.fn3675()
    if not aE7 then
        return
    end
    pcall(function()
        writefile(aEb.PositionsFile, HttpService:JSONEncode(bCU_74.Positions))
    end)
end
function fns.fn3765(xu)
    local a_Q_1
    local a_P_1
    local a_K_1
    local a_O_1
    local a_L_1
    local a_J = aEM()
    a_K_1, a_L_1 = fns.bCU_21.ExpeditionShopItems()
    local a_K_2 = fns.bCU_21.AllExpeditionShopItems()
    local a_M = fns.bCU_21.AllExpeditionTraits()
    local a_N = {}
    a_P_1, a_O_1, a_Q_1 = {}, {}, {}
    for k, v in a_K_2 do
        a_P_1[v] = true
    end
    for k, v in a_M do
        a_O_1[v] = true
    end
    local a_S = a_L_1 or {}
    for k, v in a_S do
        local a_R_1 = v.Name or v.Asset or "Unknown"
        local a_L_3 = tostring(a_R_1)
        if not a_P_1[a_L_3] then
            a_P_1[a_L_3] = true
            table.insert(a_K_2, a_L_3)
        end
        local a_L_4 = v.Data and v.Data.Trait
        local a_R_2 = a_L_4
        if a_L_4 then
            a_L_4 = not a_O_1[tostring(a_R_2)]
        end
        if a_L_4 then
            a_O_1[tostring(a_R_2)] = true
            table.insert(a_M, tostring(a_R_2))
        end
    end
    local a_O_2 = a_J and a_J.Helpers or {}
    for k, v in a_O_2 do
        local a_J_2 = v.Asset and tostring(v.Asset)
        local a_L_6 = a_J_2
        if a_J_2 then
            a_J_2 = not a_Q_1[a_L_6]
        end
        if a_J_2 then
            a_Q_1[a_L_6] = true
            table.insert(a_N, fns.bCU_21.ExpeditionHelperLabel(a_L_6))
        end
    end
    local a_O_3 = fns.bCU_21.ExpeditionInfo and fns.bCU_21.ExpeditionInfo.Helpers and fns.bCU_21.ExpeditionInfo.Helpers.List or {}
    for k in a_O_3 do
        local a0h_1 = tostring(k)
        if not a_Q_1[a0h_1] then
            a_Q_1[a0h_1] = true
            table.insert(a_N, fns.bCU_21.ExpeditionHelperLabel(a0h_1))
        end
    end
    table.sort(a_K_2)
    table.sort(a_M)
    table.sort(a_N)
    if Options.ExpBuyItems then
        Options.ExpBuyItems:SetValues(a_K_2)
    end
    if Options.ExpTomeTraits then
        Options.ExpTomeTraits:SetValues(a_M)
    end
    if Options.ExpHireUnits then
        Options.ExpHireUnits:SetValues(a_N)
    end
    if xu then
        aDV:Notify(string.format("Found %d shop items and %d helpers", #a_K_2, #a_N))
    end
    return a_K_2, a_M, a_N
end
function fns.onRefreshList5()
    fns.bCU_21.RefreshLobbyAutomationLists(true)
end
function fns.fn3807()
    aFH(false)
end
function fns.fn3832(agw)
    local bwW = 1
    local bwU = fns.bCU_22
    while bwW <= bwU do
        local bwX = bwW
        local bwK = agw[bwX]
        local bwL = bwK and aEX(bwK.Asset)
        local bwM = bwL or {}
        local MAX_ABILITIES = fns.bCU_21.MAX_ABILITIES
        local bw0 = 1
        while bw0 <= MAX_ABILITIES do
            local bw2 = bw0
            local bwL_2 = bwM[bw2]
            local bwM_1 = Options["Ability" .. bwX .. "_" .. bw2]
            local bwN = Options["AbilityWave" .. bwX .. "_" .. bw2]
            if bwM_1 and bwN then
                local bwO_1 = bwL_2 and aFi(bwL_2)
                local bwP = bwL_2
                if bwP then
                    local format = string.format
                    local bwS = bwO_1 and bwO_1.DisplayName or bwL_2
                    local bwQ_1 = bwO_1 and bwO_1.Upgrade or "?"
                    bwP = format("Slot %d - %s (lv %s)", bwX, bwS, tostring(bwQ_1))
                end
                local bwO_3 = bwP or nil
                bwM_1:SetVisible(bwL_2 ~= nil)
                bwN:SetVisible(bwL_2 ~= nil)
                if bwO_3 then
                    bwM_1:SetText(bwO_3)
                    bwN:SetText(bwO_3 .. " wave")
                end
            end
            bw0 += 1
        end
        bwW += 1
    end
end
function fns.fn3882(nx, ny)
    local aSc, aSi
    local aSh = 1
    local aSf = fns.bCU_22
    while true do
        if not (aSh <= aSf) then
            return nil, nil
        end
        aSi = aSh
        aSc = nx[aSi]
        local aSd = aSc and aEa(ny, aSc, true)
        if aSd then
            break
        end
        aSh += 1
    end
    return aSi, aSc
end
function fns.fn3909(nN, nO, nP)
    local aSt_1
    local aSw_1
    local aSs_1
    aSs_1, aSt_1 = {}, {}
    for k, v in nO do
        local aSu_1 = bCU_82(nN, v)
        local aSv = aSu_1 and nP >= aFA(aSu_1)
        local aSv_1
        if aSv then
            aSv_1, aSw_1 = fns.bCU_12(aSu_1, v)
            if v.Level < aSv_1 then
                v.SlotNumber = aSu_1
                local insert = table.insert
                local aSw_2 = aSw_1 and aSt_1 or aSs_1
                insert(aSw_2, v)
            end
        end
    end
    return #aSs_1 > 0 and aSs_1 or aSt_1
end
function fns.fn3911(dr, ds, dt, du)
    local aKv = bCU_53()
    if not aKv or not du then
        return false
    end
    local max = math.max
    local floor = math.floor
    local aKy = tonumber(dr) or 1
    dr = tostring(max(1, floor(aKy)))
    local aKy_1 = tonumber(dt) or 1
    dt = tostring(max(1, floor(aKy_1)))
    local WavePositions = bCU_74.WavePositions
    local aKy_2 = bCU_74.WavePositions[aKv] or {}
    WavePositions[aKv] = aKy_2
    local aKw_3 = bCU_74.WavePositions[aKv]
    local aKy_3 = bCU_74.WavePositions[aKv][dr] or {}
    aKw_3[dr] = aKy_3
    local aKw_4 = bCU_74.WavePositions[aKv][dr]
    local aKv_1 = tostring(ds)
    local aKx_4 = {}
    local aKy_4 = aKw_4[tostring(ds)] or aKx_4
    aKw_4[aKv_1] = aKy_4
    aKw_4[tostring(ds)][dt] = { du.X, du.Y, du.Z }
    fns.bCU_21.SaveWavePositions()
    return true
end
function fns.onUseRecommendedAmount()
    local bxu = fns.bCU_21.EXPEDITION_RESTART_DEFAULTS[Options.ExpRestartResource.Value]
    if bxu then
        Options.ExpRestartUntilAmount:SetValue(bxu)
        aDV:Notify("Recommended amount set to " .. bxu)
    else
        aDV:Notify("No restart amount is recommended for this resource")
    end
end
function fns.fn3953()
    for i, v in ipairs(getconnections(game:GetService("ScriptContext").Error)) do
        v:Disable()
    end
end
function fns.fn3968()
    local a_w = TraitData
    local a_x = {}
    local a_y = {}
    if not a_w then
        local a_z = type(Information) == "table" and type(Information.Traits) == "table" and require(Information.Traits).TraitData
        a_w = a_z or {}
    end
    for k, v in a_w do
        local a_w_1 = k or ""
        local a_G_1 = tostring(a_w_1)
        if a_G_1 ~= "" and not a_y[a_G_1] then
            a_y[a_G_1] = true
            table.insert(a_x, a_G_1)
        end
    end
    table.sort(a_x)
    return a_x
end
function fns.fn3977(aln)
    local bz0 = tonumber(Options.StopSkipAtWave.Value) or 0
    if bz0 <= 0 then
        return false
    end
    local Value = Options.SkipStageTypes.Value
    local bz2 = type(Value) == "table" and next(Value)
    if bz2 then
        local bz2_1 = aGH()
        if not bz2_1 or not Value[bz2_1] then
            return false
        end
        return bCU_91(aln) >= bz0
    end
    return bCU_91(aln) >= bz0
end
function fns.fn3991(ih)
    local aOM
    local aOF_1
    local aOE_1
    local aOD_1
    aOF_1, aOE_1, aOD_1 = bCU_63()
    if not aOF_1 or #aOF_1 == 0 or aOD_1 <= 0 then
        return nil
    end
    local aOG_1 = aOD_1 * math.clamp(ih, 0, 1)
    local aOH = #aOF_1
    local aOL = 1
    while true do
        if not (aOL <= aOH) then
            return #aOF_1
        end
        aOM = aOL
        if aOD_1 - aOE_1[aOM] >= aOG_1 then
            break
        end
        aOL += 1
    end
    return aOM
end
function fns.fn3997()
    fns.bCU_21.EquipmentInfo = require(Information.Equipment)
    fns.bCU_21.CraftingInfo = require(Information.Crafting)
    fns.bCU_21.ItemInfo = require(Information.Items)
end
function fns.onInputChanged(aif)
    if not bCU_89.Drag.Input then
        return
    end
    if aif.UserInputType ~= Enum.UserInputType.MouseMovement and aif.UserInputType ~= Enum.UserInputType.Touch then
        return
    end
    local bx4_1 = aif.Position - bCU_89.Drag.Start
    if bx4_1.Magnitude > 4 then
        bCU_89.Drag.Moved = true
    end
    if bCU_89.Drag.Moved then
        bCU_89.ToggleButton.Position = UDim2.fromOffset(bCU_89.Drag.Origin.X.Offset + bx4_1.X, bCU_89.Drag.Origin.Y.Offset + bx4_1.Y)
    end
end
function fns.fn4043()
    if bCU_57 then
        return
    end
    bCU_57 = true
    pcall(function()
        if getconnections then
            for k, v in pairs(getconnections(aFK.Idled)) do
                if v.Disable then
                    v.Disable(v)
                elseif v.Disconnect then
                    v.Disconnect(v)
                end
            end
        else
            connection = aFK.Idled:Connect(function()
                fns.VirtualUser:CaptureController()
                fns.VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    end)
end
function fns.fn4051(vK)
    local aYK = Options.WebhookUrl and Options.WebhookUrl.Value or ""
    if aYK == "" or not aDZ then
        return false
    end
    local aYK_2 = vK.Result == "Victory"
    local aYL_1 = vK.Result == "Restart"
    local aYM_1 = aYK_2 and "VICTORY" or aYL_1 and "RESTART" or "DEFEAT"
    local aYN_1 = {}
    for k, v in vK.Gained do
        table.insert(aYN_1, "**" .. aEW(v.Delta) .. "x** " .. v.Key)
    end
    if #aYN_1 == 0 then
        aYN_1 = { "-" }
    end
    local aYM_2 = {}
    for k, v in vK.Units do
        table.insert(aYM_2, string.format("[%d] **%s**: %s takedowns", v.Level, v.Name, aEW(v.Takedowns)))
        if #aYM_2 >= 10 then
            break
        end
    end
    if #aYM_2 == 0 then
        aYM_2 = { "-" }
    end
    local concat = table.concat
    local aYQ = "**Placed:** " .. aEW(vK.Placements)
    local aYR = "**Upgrades:** " .. aEW(vK.Upgrades)
    local aYS = vK.YenEarned or 0
    local aYT = "**Yen earned:** " .. aEW(aYS)
    local aYU = vK.Kills or 0
    local aYQ_1 = concat({ aYQ, aYR, aYT, "**Kills:** " .. aEW(aYU) }, "\n")
    local aYP_1 = aEm(vK.Duration)
    local aYR_1 = vK.Wave or "?"
    local aYS_1 = tostring(aYR_1)
    local aYT_1 = vK.MaxWave or "?"
    local aYU_1 = tostring(aYT_1)
    local aYS_2 = aYP_1 .. " | Wave " .. aYS_1 .. "/" .. aYU_1 .. "\n**[" .. (vK.Difficulty or "?") .. "]** " .. (vK.Map or "?") .. " " .. (vK.Act or "") .. " | **[" .. aYM_1 .. "]**"
    local aYP_2 = nil
    local aYR_2 = Options.WebhookPingId and Options.WebhookPingId.Value or ""
    local aYO_3 = tostring(aYR_2):gsub("%D", "")
    if Toggles.WebhookPing and Toggles.WebhookPing.Value and aYO_3 ~= "" then
        aYP_2 = "<@" .. aYO_3 .. ">"
    end
    local aYO_4 = { name = "Run", value = aYQ_1, inline = true }
    local aYR_4 = table.concat(aYM_2, "\n")
    local aYT_3 = ""
    local aYR_5 = {
        aYO_4,
        { name = "Units", value = aYR_4, inline = false },
        { name = "Match", value = aYS_2, inline = false }
    }
    for k, v in aYN_1 do
        local aYN_2 = aYT_3 == "" and v or aYT_3 .. "\n" .. v
        if #aYN_2 > 1000 then
            local insert = table.insert
            local aYQ_2 = #aYR_5 == 3 and "Rewards" or "Rewards continued"
            insert(aYR_5, { name = aYQ_2, value = aYT_3, inline = true })
            aYT_3 = v
        else
            aYT_3 = aYN_2
        end
    end
    if aYT_3 ~= "" then
        local insert = table.insert
        local aYO_6 = #aYR_5 == 3 and "Rewards" or "Rewards continued"
        insert(aYR_5, { name = aYO_6, value = aYT_3, inline = true })
    end
    local aYN_5 = aYL_1 and "Auto Play run restarted" or "Auto Play run finished"
    local aYM_7 = "**[USER]** ||" .. aFK.Name .. "||"
    local aYK_4 = aYK_2 and 5763719 or aYL_1 and 15105570 or 15548997
    local json = HttpService:JSONEncode({
        username = "Ouroboros Hub | Anime Expeditions",
        content = aYP_2,
        embeds = {
            {
                title = aYN_5,
                description = aYM_7,
                color = aYK_4,
                fields = aYR_5,
                footer = { text = tostring(os.time()) }
            }
        }
    })
    return fns.bCU_21.PostWebhook(aYK, json)
end
function fns.fn4079(oe, of, og, oh, oi)
    local aS0 = oi
    local aS0_3
    local aS9 = if aS0 then 1 else 0
    local aS7 = 3119 * aS9 + 3058 * (1 - aS9)
    local aS8 = 1900 * aS9 + 1540 * (1 - aS9)
    if not ((aS7 * 1459 + aS8 * 1413 + aS7 * aS8) % 16777213 == 13161421) then
        aS0 = 0
    end
    local aS1 = aFj(oe, of, aS0)
    if #aS1 == 0 then
        return nil
    end
    local aS0_1 = og == "Customize upgrade order (Set below)"
    local aS2 = not aS0_1
    local aS2_3
    if aS2 ~= false then
        aS2 = Toggles.UpgradeSlot2WhenCheaperThanRamen.Value
    end
    if aS2 then
        local aS2_1 = math.huge
        local aS3
        for k, v in aS1 do
            local aS4_1 = oe[v.SlotNumber]
            local aS5 = aS4_1 and string.lower(aS4_1.Display) == "ramen guy"
            if aS5 then
                aS2_1 = math.min(aS2_1, v.Cost)
            end
            local aS4_2 = v.SlotNumber == 2
            if aS4_2 then
                aS4_2 = not aS3 or v.Cost < aS3.Cost
            end
            if aS4_2 then
                aS3 = v
            end
        end
        if aS3 and aS2_1 < math.huge and aS2_1 > aS3.Cost then
            return aS3
        end
        if aS2_3 then
            local aS0_2 = {}
            for k, v in aS1 do
                if v.IsFarm then
                    table.insert(aS0_2, v)
                end
            end
            if #aS0_3 > 0 then
                aS1 = aS0_2
            end
        end
        aGx(aS1, og)
        return aS1[1]
    end
    aS2_3 = not aS0_1
    if aS2_3 ~= false then
        aS2_3 = oh
    end
    if aS2_3 then
        aS0_3 = {}
        for k, v in aS1 do
            if v.IsFarm then
                table.insert(aS0_3, v)
            end
        end
        if #aS0_3 > 0 then
            aS1 = aS0_3
        end
    end
    aGx(aS1, og)
    return aS1[1]
end
function fns.fn4103()
    if not (Toggles.AutoPlay and Toggles.AutoPlay.Value) then
        return false
    end
    aDV:Notify("Turn Auto Play off before changing positions", 4)
    return true
end
function fns.worker3()
    task.wait(1)
    pcall(function()
        local bA6_1
        local bA5_1
        bA6_1, bA5_1 = {}, {}
        for k, v in aGo() do
            if not bA5_1[v.Display] then
                bA5_1[v.Display] = true
                table.insert(bA6_1, v.Display)
            end
        end
        if #bA6_1 > 0 then
            Options.IgnoreUnits:SetValues(bA6_1)
        end
        local bA5_2 = aFn()
        Options.ExpWantedResource:SetValues(bA5_2)
        Options.ExpRestartResource:SetValues(bA5_2)
        fns.bCU_21.RefreshLobbyLists(false)
    end)
end
function fns.onResetSelectedWaveFormation()
    if aGB() then
        return
    end
    local bww = bCU_53()
    local bwx = bww and bCU_74.WavePositions[bww]
    local floor = math.floor
    local bwz = tonumber(Options.WavePositionWave.Value) or 1
    local bwA = tostring(floor(bwz))
    if not bwx or not bwx[bwA] then
        aDV:Notify("No formation saved for that wave")
        return
    end
    bwx[bwA] = nil
    if next(bwx) == nil then
        bCU_74.WavePositions[bww] = nil
    end
    fns.bCU_21.SaveWavePositions()
    aDV:Notify("Cleared the wave " .. bwA .. " formation")
end
function fns.fn4173(w_)
    local aZ1 = w_ or ""
    w_ = tostring(aZ1)
    local aZ1_1 = Units and Units[w_]
    local aZ2 = aZ1_1
    if aZ1_1 then
        aZ1_1 = aZ2.DisplayName
    end
    local aZ2_1 = aZ1_1 or bCU_95(w_)
    return tostring(aZ2_1) .. " [" .. w_ .. "]"
end
function fns.fn4180(cD, cE, cF)
    local aJ_ = bCU_53()
    local aJ0 = not cE
    local aJ1 = not aJ_
    local aJ6 = if aJ1 then 1 else 0
    local aJ4 = 3329 * aJ6 + 3504 * (1 - aJ6)
    local aJ5 = 2198 * aJ6 + 1940 * (1 - aJ6)
    if not ((aJ4 * 381 + aJ5 * 2840 + aJ4 * aJ5) % 16777213 == 14827811) then
        aJ1 = aJ0
    end
    if aJ1 then
        return false
    end
    local max = math.max
    local floor = math.floor
    local aJ2 = tonumber(cF) or 1
    cF = max(1, floor(aJ2))
    local Positions = bCU_74.Positions
    local aJ2_1 = bCU_74.Positions[aJ_] or {}
    Positions[aJ_] = aJ2_1
    local aJ0_3 = bCU_74.Positions[aJ_]
    local aJ__1 = aJ0_3[tostring(cD)]
    if fns.bCU_21.IsStoredPosition(aJ__1) then
        aJ__1 = { ["1"] = aJ__1 }
    elseif type(aJ__1) ~= "table" then
        aJ__1 = {}
    end
    aJ__1[tostring(cF)] = { cE.X, cE.Y, cE.Z }
    aJ0_3[tostring(cD)] = aJ__1
    bCU_77()
    return true
end
function fns.onRaidMap()
    fns.bCU_21.RefreshJoinMode("Raid", "Raid")
end
function fns.fn4239(dY, dZ, d_)
    local aLc
    for k, v in fns.bCU_21.WaveFormationWaves() do
        if v > dY then
            break
        else
            local aLd = fns.bCU_21.WavePosition(v, dZ, d_) or aLc
            aLc = aLd
        end
    end
    return aLc
end
function fns.fn4241(aiS, aiT)
    local byt = Options["Ability" .. aiS .. "_" .. aiT]
    local byu = byt and byt.Value
    local byu_1 = type(byu) == "string" and byu
    return byu_1 or bCU_86
end
function fns.onRefreshList3()
    fns.bCU_21.RefreshLobbyAutomationLists(true)
end
function fns.onQueueSummonOwnedAmount()
    task.defer(fns.bCU_21.SaveQueueSummonSettings)
end
function fns.onResetWaveSlotPosition(afC)
    local bws_1
    local bwr_1
    if not afC then
        return
    end
    if aGB() then
        task.defer(function()
            Options.ResetWaveSlotPosition:SetValue(nil)
        end)
        return
    end
    bws_1, bwr_1 = fns.bCU_21.ParsePositionChoice(afC)
    local Value = Options.WavePositionWave.Value
    local bwu = bws_1 and bwr_1 and fns.bCU_21.ClearWavePosition(Value, bws_1, bwr_1)
    if bwu then
        aDV:Notify(string.format("Cleared wave %d slot %d placement %d", Value, bws_1, bwr_1))
    else
        aDV:Notify("No formation position saved there")
    end
    task.defer(function()
        Options.ResetWaveSlotPosition:SetValue(nil)
    end)
end
function fns.onMassSetSlotPositions()
    if aGB() then
        return
    end
    local bvD = bCU_84()
    if not bvD then
        aDV:Notify("Could not read your position")
        return
    end
    local bvE = 0
    local bvF = aGo()
    local bvN = 1
    local bvL = fns.bCU_22
    while bvN <= bvL do
        local bvO = bvN
        local bvI = bvF[bvO] and bvF[bvO].Limit
        local bvJ = tonumber(bvI) or 1
        local bvI_1 = math.max(1, math.floor(bvJ))
        local bvS = 1
        while bvS <= bvI_1 do
            local bvT = bvS
            if aDW(bvO, bvD, bvT) then
                bvE += 1
            end
            bvS += 1
        end
        bvN += 1
    end
    local bvE_1 = bvE > 0 and "Set all " .. bvE .. " placement positions to your current location"
    local bvX = if bvE_1 then 1 else 0
    local bvV = 2088 * bvX + 629 * (1 - bvX)
    local bvW = 444 * bvX + 2547 * (1 - bvX)
    if not ((bvV * 75 + bvW * 1131 + bvV * bvW) % 16777213 == 1585836) then
        bvE_1 = "Join a stage first"
    end
    aDV:Notify(bvE_1)
end
function fns.fn4395()
    aFw = require(aGn.Nodes)
end
function fns.fn4420(lV)
    local aRb = fns.bCU_16(lV.Slot)
    if aRb <= -1 then
        return 0
    elseif aRb == 0 then
        return lV.Limit
    else
        return math.min(aRb, lV.Limit)
    end
end
function fns.fn4426()
    if bCU_47.Folder then
        pcall(function()
            bCU_47.Folder:Destroy()
        end)
    end
    bCU_47.Folder = nil
    table.clear(bCU_47.Markers)
end
function fns.onRefreshEquippedUnits()
    local bvm_1
    local bvl_1
    bvm_1, bvl_1 = {}, {}
    for k, v in aGo() do
        if not bvl_1[v.Display] then
            bvl_1[v.Display] = true
            table.insert(bvm_1, v.Display)
        end
    end
    Options.IgnoreUnits:SetValues(bvm_1)
    aDV:Notify("Loaded " .. #bvm_1 .. " equipped units")
end
function fns.onStoryAct()
    fns.bCU_21.RefreshStoryJoin()
end
function fns.fn4574()
    local aQz = Toggles and Toggles.ShowPathDistance and Toggles.ShowPathDistance.Value
    local aQz_1 = not aQz or not fns.bCU_29()
    if aQz_1 then
        if fns.bCU_9.Pin then
            aEJ()
        end
        return
    end
    if not (fns.bCU_9.Pin and fns.bCU_9.Pin.Parent) then
        aEJ()
        local aQz_3 = fns.bCU_11()
        if not aQz_3 then
            return
        end
        local part = Instance.new("Part")
        part.Name = "PathDistancePin"
        part.Anchored = true
        part.CanCollide = false
        part.CanQuery = false
        part.CanTouch = false
        part.CastShadow = false
        part.Locked = true
        part.Material = Enum.Material.Neon
        part.Color = fns.bCU_21.VFX_COLOR
        part.Transparency = 0.35
        part.Size = Vector3.new(0.35, 14, 0.35)
        part.Parent = aQz_3
        fns.bCU_9.Pin = part
    end
    if fns.bCU_5() == fns.bCU_21.SMART.Near then
        fns.bCU_9.Pin.Transparency = 1
        return
    end
    fns.bCU_9.Pin.Transparency = 0.35
    local aQz_4 = bCU_75()
    local aQA_2 = bCU_53()
    if fns.bCU_9.Percent == aQz_4 and fns.bCU_9.Key == aQA_2 then
        return
    end
    fns.bCU_9.Percent, fns.bCU_9.Key = aQz_4, aQA_2
    local aQA_3 = aGA(aQz_4)
    if aQA_3 then
        fns.bCU_9.Pin.CFrame = CFrame.new(aQA_3 + Vector3.new(0, 7, 0))
    end
end
function fns.worker4()
    while not aDV.Unloaded do
        task.wait(1)
        pcall(aGm)
        pcall(aEH)
        pcall(fns.bCU_21.BuildingStep)
        pcall(fns.bCU_21.EquipmentStep)
        pcall(fns.bCU_21.LobbyAutomationStep)
        pcall(fns.bCU_21.QueueSummonStep)
        pcall(fns.bCU_21.BountyStep)
        pcall(fns.bCU_21.AutoJoinStep)
    end
end
function fns.fn4608(uH)
    local aXM = fns.bCU_21.ItemCatalog and fns.bCU_21.ItemCatalog[uH]
    local aXN = aXM
    if aXM then
        aXM = aXN.DisplayName or aXN.Name
    end
    local aXN_1 = aXM
    if aXM then
        aXM = tostring(aXN_1)
    end
    local aXN_2 = aXM or tostring(uH)
    return aXN_2
end
function fns.fn4610(aiw)
    if Toggles.GlobalPlaceWave and Toggles.GlobalPlaceWave.Value then
        local bye_1 = Options.GlobalPlaceWaveValue and Options.GlobalPlaceWaveValue.Value
        local byf_1 = tonumber(bye_1) or 0
        return byf_1
    end
    local bye_2 = Options["PlaceWave" .. aiw]
    local byf_2 = bye_2 and bye_2.Value
    local bye_3 = tonumber(byf_2) or 0
    return bye_3
end
function fns.onInputBegan(aic)
    if aic.UserInputType ~= Enum.UserInputType.MouseButton1 and aic.UserInputType ~= Enum.UserInputType.Touch then
        return
    end
    bCU_89.Drag.Input = aic
    bCU_89.Drag.Moved = false
    bCU_89.Drag.Start = aic.Position
    bCU_89.Drag.Origin = bCU_89.ToggleButton.Position
end
function fns.fn4675()
    if not bCU_72() then
        return nil
    end
    local aZu = bCU_67("GameState")
    return aZu and aZu.Data or nil
end
function fns.fn4680(bY)
    local aJx = type(bY) == "table" and tonumber(bY[1]) ~= nil and tonumber(bY[2]) ~= nil and tonumber(bY[3]) ~= nil
    return aJx
end
function fns.fn4688(ad1, ad2, ad3)
    return string.format("<b>%s</b> %s %s", ad1, aFY("-", "#5a6070"), aFY(ad2, ad3))
end
function fns.fn4708(aiL)
    local byn = Options["UpgradeWave" .. aiL]
    local byo = byn and byn.Value
    local byn_1 = tonumber(byo) or 0
    return byn_1
end
function fns.onStoryMap()
    fns.bCU_21.RefreshStoryJoin()
end
bCU_77 = nil
Options = nil
fns.bCU_11 = nil
aDV = nil
aDW = nil
aDY = nil
aDZ = nil
aD_ = nil
bCU_69 = nil
bCU_53 = nil
fns.bCU_22 = nil
fns.bCU_4 = nil
aD6 = nil
aD7 = nil
aD8 = nil
aD9 = nil
aEa = nil
aEb = nil
aEc = nil
bCU_82 = nil
bCU_63 = nil
bCU_47 = nil
bCU_32 = nil
fns.bCU_15 = nil
aEj = nil
aEk = nil
aEl = nil
aEm = nil
aEn = nil
bCU_91 = nil
bCU_74 = nil
bCU_57 = nil
bCU_39 = nil
fns.bCU_8 = nil
aEw = nil
aEx = nil
aEy = nil
aEz = nil
local aDR, aDS, aDU, aDX, aD0, aD3, aEi, aEo, aEt, aEv, aEA, aEB
bCU_84 = nil
Lighting = nil
connection = nil
fns.bCU_18 = nil
aEH = nil
aEI = nil
aEJ = nil
aEM = nil
bCU_94 = nil
bCU_42 = nil
fns.worker = nil
fns.bCU_9 = nil
aEU = nil
aEV = nil
aEW = nil
aEX = nil
onJoinDiscordForKeylessScripts = nil
bCU_87 = nil
bCU_52 = nil
TraitData = nil
fns.bCU_19 = nil
fns.bCU_3 = nil
aE7 = nil
aE9 = nil
Skins = nil
aFb = nil
bCU_96 = nil
bCU_79 = nil
Units = nil
Window = nil
fns.bCU_29 = nil
fns.bCU_14 = nil
aFi = nil
aFj = nil
aFl = nil
aFn = nil
local aEF, aEK, aEN, aEP, aEQ, aEY, aE_, aE1, aE6, aFk, aFm
bCU_72 = nil
bCU_54 = nil
bCU_37 = nil
aFv = nil
aFw = nil
aFx = nil
CollectionService = nil
aFA = nil
aFB = nil
bCU_83 = nil
fns.bCU_17 = nil
aFH = nil
aFJ = nil
aFK = nil
bCU_75 = nil
bCU_40 = nil
fns.bCU_25 = nil
Fusion = nil
aFY = nil
aFZ = nil
Information = nil
bCU_86 = nil
bCU_67 = nil
bCU_50 = nil
fns.VirtualUser = nil
aF7 = nil
aF8 = nil
aF9 = nil
local aFp, aFz, aFD, aFE, aFF, aFI, aFL, aFM, aFN, aFO, aFQ, aFT, aFW, aFX, aF4, aF6, aGa, aGb
bCU_95 = nil
bCU_78 = nil
HttpService = nil
bCU_43 = nil
fns.bCU_28 = nil
fns.bCU_12 = nil
aGi = nil
aGj = nil
aGm = nil
aGn = nil
aGo = nil
bCU_89 = nil
bCU_70 = nil
fns.bCU_21 = nil
fns.bCU_5 = nil
aGv = nil
aGw = nil
aGx = nil
aGA = nil
aGB = nil
Toggles = nil
bCU_64 = nil
Actions2 = nil
bCU_31 = nil
fns.bCU_16 = nil
aGH = nil
local aGr, aGy
local aGk
local aGl
aGr = nil
local Players
aGy = nil
local aGz
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, aGn, HttpService, fns.VirtualUser, aFT, aFK = nil, nil, nil, nil, nil, nil
pcall(fns.fn3953)
Players = game:GetService("Players")
aGn = game:GetService("ReplicatedStorage")
HttpService = game:GetService("HttpService")
fns.VirtualUser = game:GetService("VirtualUser")
local bCU_122 = game:GetService("UserInputService")
aFT = game:GetService("RunService")
aFK = Players.LocalPlayer
while not aFK do
    Players.PlayerAdded:Wait()
    aFK = Players.LocalPlayer
end
aFD = function()
    local aId_1
    local aIc_1
    aIc_1, aId_1 = pcall(function()
        local aH6 = gethui and gethui()
        local aH7 = aH6 or game:GetService("CoreGui")
        return aH7
    end)
    if aIc_1 and aId_1 then
        return aId_1
    end
    local aIc_2 = (aFK:FindFirstChild("PlayerGui"))
    local aIi = if aIc_2 then 1 else 0
    local aIg = 3294 * aIi + 2182 * (1 - aIi)
    local aIh = 3100 * aIi + 1827 * (1 - aIi)
    if not ((aIg * 1223 + aIh * 299 + aIg * aIh) % 16777213 == 15166862) then
        aIc_2 = aFK:WaitForChild("PlayerGui", 5)
    end
    local aId_2 = aIc_2
    if aId_2 then
        return aId_2
    end
    return game:GetService("CoreGui")
end
if getgenv then
    getgenv().gethui = aFD
end
aEB, bCU_39, aEk, aEb, fns.bCU_22, aD_ = nil, nil, nil, nil, nil, nil
_G.gethui = aFD
local aEL = "Anime Expeditions"
aEB = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/animeexpeditions.lua"
bCU_39 = "https://discord.gg/ehKVq7pf7v"
aEk = "https://rscripts.net/@Ouroboros"
aEb = {
    Folder = "OuroborosHub/AnimeExpeditions",
    PositionsFile = "OuroborosHub/AnimeExpeditions/positions.json",
    WavePositionsFile = "OuroborosHub/AnimeExpeditions/wave_positions.json",
    MatchCountFile = "OuroborosHub/AnimeExpeditions/match_count.txt",
    ChallengeTypeFile = "OuroborosHub/AnimeExpeditions/challenge_type.txt",
    QueueSummonFile = "OuroborosHub/AnimeExpeditions/queue_summon.json",
    QueueSummonFlag = "OuroborosHub/AnimeExpeditions/queue_summon.flag"
}
fns.bCU_22 = 6
aD_ = getgenv()
if aD_.OuroborosAeAutoPlayUnload then
    pcall(aD_.OuroborosAeAutoPlayUnload)
end
aDV, Options, Toggles, fns.bCU_21, bCU_89, bCU_43, aF7, Information, Fusion, aFL, aFE, aFw, Units, Skins, TraitData, aD6, bCU_115, aDR, bCU_67, aEN, bCU_69, aGi, aFz, aFZ, fns.bCU_29, bCU_42, bCU_91, bCU_53, bCU_95, bCU_40 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local bCU_129 = 47
repeat
    bCU_108 = (bCU_129 * 7 + 7) % 8 + 1
    if bCU_108 <= 4 then
        if bCU_108 <= 2 then
            if bCU_108 <= 1 then
                if ((Toggles or Units) and (not Toggles or aGi) or (not aGi and not bCU_69 or (not Toggles or not Toggles))) and ((bCU_69 or Toggles) and (not bCU_69 and Units) or (Toggles and not bCU_69 or (Toggles or aGi))) and not (((Toggles or Units) and (not Toggles or aGi) or (not aGi and not bCU_69 or (not Toggles or not Toggles))) and ((bCU_69 or Toggles) and (not bCU_69 and Units) or (Toggles and not bCU_69 or (Toggles or aGi)))) then
                    aDV = {}
                else
                    fns.bCU_21 = {}
                end
                bCU_129 = (bCU_129 + 23) % 64
            else
                local bHY = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_129, 28), string.byte(tostring(bCU_53))), 15)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bHY, 3726079885), 3099618928), (bit32.bxor(bit32.band(bHY, 568887410), 1448026772))), 3099618928), 1448026772) == bHY then
                    bCU_89 = {}
                else
                    aFw = {}
                end
                bCU_129 = (bCU_129 + 23) % 64
            end
        elseif bCU_108 <= 3 then
            bCU_101 = {
                "vgdqqpps",
                "yuy",
                "kgbkjv",
                "vjkfipz",
                "qhqc",
                "rsukggtmmt",
                "rvfrv",
                "mgu",
                "zgeafrufrr",
                "kftud",
                "fbdlixmecbh",
                "rltn"
            }
            local bIl = bCU_129
            bCU_92 = bCU_101[bIl % 12 + 1]
            if bCU_92:len() >= bCU_92:reverse():rep(bIl % 3 + 2):len() then
                aF7 = require(Information.Shared.ReplicaClient)
                aGn = require(Information.Shared.UnitUtils)
                bCU_43 = Information.Shared.Information
            else
                bCU_43 = require(aGn.Shared.ReplicaClient)
                aF7 = require(aGn.Shared.UnitUtils)
                Information = aGn.Shared.Information
            end
            bCU_129 = (bCU_129 + 47) % 64
        else
            bCU_101 = {
                "ekuegerdy",
                "dsgoqki",
                "fwpjgvhjsf",
                "avdpcwykvt",
                "ppxnhnxjniqo",
                "dfibutulxih",
                "xhf",
                "bkwb",
                "uqtqnyegy",
                "nxcv",
                "jdv",
                "adxoqymis",
                "kbr",
                "pzvelcbfga",
                "wxurpxhdks"
            }
            if bCU_101[(bCU_129 * 91 + 18) % 15 + 1] < bCU_101[(bCU_129 * 91 + 18) % 15 + 1] then
                aFE = require(aDR.FusionPackage.Fusion)
                aGn = require(aDR.FusionPackage.Dependencies)
                aFL = aFE.peek
                pcall(fns.fn4395)
                pcall(fns.fn294)
                pcall(fns.fn1370)
                pcall(fns.fn3537)
                pcall(fns.fn1209)
                Fusion.TokenCache = {}
                fns.bCU_21 = function(af)
                    local aIm_2
                    local aIl_3
                    aIl_3, aIm_2 = pcall(function()
                        local aIj = af.Token or af.Class
                        return tostring(aIj)
                    end)
                    return aIl_3 and aIm_2 or nil
                end
            else
                Fusion = require(aGn.FusionPackage.Fusion)
                aFL = require(aGn.FusionPackage.Dependencies)
                aFE = Fusion.peek
                pcall(fns.fn4395)
                pcall(fns.fn294)
                pcall(fns.fn1370)
                pcall(fns.fn3537)
                pcall(fns.fn1209)
                fns.bCU_21.TokenCache = {}
                aDR = function(af)
                    local aIm_1
                    local aIl_1
                    aIl_1, aIm_1 = pcall(function()
                        local aIj = af.Token or af.Class
                        return tostring(aIj)
                    end)
                    return aIl_1 and aIm_1 or nil
                end
            end
            bCU_129 = (bCU_129 + 39) % 64
        end
    elseif bCU_108 <= 6 then
        if bCU_108 <= 5 then
            local bHa = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_129, 20), string.byte(tostring(bCU_115))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bHa, 1051080767), 3031513184), (bit32.bxor(bit32.band(bHa, 3243886528), 3944607087))), 3031513184), 3944607087) == bHa then
                bCU_67 = function(al)
                    local aIr_2
                    local aIq_2
                    if type(aD6) ~= "table" then
                        return nil
                    end
                    local aIp = fns.bCU_21.TokenCache[al]
                    if aIp then
                        aIq_2, aIr_2 = pcall(function()
                            return aIp.Data
                        end)
                        if aIq_2 and aIr_2 ~= nil then
                            return aIp
                        end
                        fns.bCU_21.TokenCache[al] = nil
                        for k, v in aD6 do
                            if aDR(v) == al then
                                fns.bCU_21.TokenCache[al] = v
                                return v
                            end
                        end
                        return nil
                    end
                    for k, v in aD6 do
                        if aDR(v) == al then
                            fns.bCU_21.TokenCache[al] = v
                            return v
                        end
                    end
                    return nil
                end
                aEN = function()
                    local aIB
                    if aFw then
                        pcall(function()
                            aIB = aFw.GET_GAME_PLAYER_REPLICA:InvokeSelf()
                        end)
                    end
                    if aIB then
                        return aIB
                    end
                    return bCU_67("GamePlayerData")
                end
                bCU_69 = function()
                    local Data
                    local aID
                    aID = nil
                    Data = nil
                    aID = bCU_67("GameState")
                    if not aID then
                        return nil
                    end
                    Data = nil
                    pcall(function()
                        Data = aID.Data
                    end)
                    return Data
                end
                aGi = function()
                    local Data
                    local aJ
                    aJ = bCU_67("PlayerData")
                    Data = nil
                    pcall(function()
                        Data = aJ.Data
                    end)
                    return Data
                end
            else
                bCU_69 = function(al)
                    local aIr_1
                    local aIq_1
                    if type(aD6) ~= "table" then
                        return nil
                    end
                    local aIp = fns.bCU_21.TokenCache[al]
                    if aIp then
                        aIq_1, aIr_1 = pcall(function()
                            return aIp.Data
                        end)
                        if aIq_1 and aIr_1 ~= nil then
                            return aIp
                        end
                        fns.bCU_21.TokenCache[al] = nil
                        for k, v in aD6 do
                            if aDR(v) == al then
                                fns.bCU_21.TokenCache[al] = v
                                return v
                            end
                        end
                        return nil
                    end
                    for k, v in aD6 do
                        if aDR(v) == al then
                            fns.bCU_21.TokenCache[al] = v
                            return v
                        end
                    end
                    return nil
                end
                bCU_67 = function()
                    local aIB
                    if aFw then
                        pcall(function()
                            aIB = aFw.GET_GAME_PLAYER_REPLICA:InvokeSelf()
                        end)
                    end
                    if aIB then
                        return aIB
                    end
                    return bCU_67("GamePlayerData")
                end
                aGi = function()
                    local Data
                    local aID
                    aID = nil
                    Data = nil
                    aID = bCU_67("GameState")
                    if not aID then
                        return nil
                    end
                    Data = nil
                    pcall(function()
                        Data = aID.Data
                    end)
                    return Data
                end
                aEN = function()
                    local Data
                    local aJ
                    aJ = bCU_67("PlayerData")
                    Data = nil
                    pcall(function()
                        Data = aJ.Data
                    end)
                    return Data
                end
            end
            bCU_129 = (bCU_129 + 47) % 64
        else
            local bMP = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_129, 5), string.byte(tostring(bCU_115))), 28)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bMP, 2619314489), 3158773152), (bit32.bxor(bit32.band(bMP, 1675652806), 447355155))), 3158773152), 447355155) ~= bMP then
                aFZ = function()
                    local aIQ
                    aIQ = nil
                    pcall(function()
                        aIQ = aFE(aFL.HotbarState)
                    end)
                    local aIT = type(aIQ) == "table" and type(aIQ.Slots) == "table" and next(aIQ.Slots) ~= nil
                    if aIT then
                        return aIQ
                    end
                    local aIS = 0
                    local aIR = aIQ
                    if type(aD6) == "table" then
                        for k, v in aD6 do
                            local aI2 = v
                            if aDR(aI2) == "HotbarData" then
                                pcall(function()
                                    local Data = aI2.Data
                                    local aIH = type(Data) == "table" and type(Data.Slots) == "table"
                                    if aIH then
                                        local aIH_2 = 0
                                        for k in Data.Slots do
                                            aIH_2 += 1
                                        end
                                        if aIH_2 > aIS then
                                            aIR = Data
                                            aIS = aIH_2
                                        end
                                    end
                                end)
                            end
                        end
                    end
                    local aIT_2 = type(aIR) == "table" and type(aIR.Slots) == "table"
                    if aIT_2 then
                        return aIR
                    end
                    return nil
                end
                aFz = function()
                    local bb
                    local ba
                    ba = aEN()
                    bb = 0
                    pcall(function()
                        local aI3 = tonumber(ba.Data.Yen) or 0
                        bb = aI3
                    end)
                    return bb
                end
                bCU_91 = fns.fn3333
                fns.bCU_29 = fns.fn3049
                bCU_42 = fns.fn1536
            else
                aFz = function()
                    local aIQ
                    aIQ = nil
                    pcall(function()
                        aIQ = aFE(aFL.HotbarState)
                    end)
                    local aIT = type(aIQ) == "table" and type(aIQ.Slots) == "table" and next(aIQ.Slots) ~= nil
                    if aIT then
                        return aIQ
                    end
                    local aIS = 0
                    local aIR = aIQ
                    if type(aD6) == "table" then
                        for k, v in aD6 do
                            local aI2 = v
                            if aDR(aI2) == "HotbarData" then
                                pcall(function()
                                    local Data = aI2.Data
                                    local aIH = type(Data) == "table" and type(Data.Slots) == "table"
                                    if aIH then
                                        local aIH_1 = 0
                                        for k in Data.Slots do
                                            aIH_1 += 1
                                        end
                                        if aIH_1 > aIS then
                                            aIR = Data
                                            aIS = aIH_1
                                        end
                                    end
                                end)
                            end
                        end
                    end
                    local aIT_1 = type(aIR) == "table" and type(aIR.Slots) == "table"
                    if aIT_1 then
                        return aIR
                    end
                    return nil
                end
                aFZ = function()
                    local bb
                    local ba
                    ba = aEN()
                    bb = 0
                    pcall(function()
                        local aI3 = tonumber(ba.Data.Yen) or 0
                        bb = aI3
                    end)
                    return bb
                end
                fns.bCU_29 = fns.fn3333
                bCU_42 = fns.fn3049
                bCU_91 = fns.fn1536
            end
            bCU_129 = (bCU_129 + 23) % 64
        end
    elseif bCU_108 <= 7 then
        bCU_108 = {
            "qio",
            "mphdvmsc",
            "wjbarwewajan",
            "vlcla",
            "jcikitsj",
            "yhjuligqexl",
            "flkznlgii",
            "xwsjabah",
            "rcqswrz",
            "weoz",
            "fnlsgzgqtc",
            "ptlqmryin",
            "rqnoa",
            "bsu"
        }
        if bCU_108[(bCU_129 * 38 + 97) % 14 + 1] < bCU_108[(bCU_129 * 38 + 97) % 14 + 1] then
            bCU_40 = function()
                local bq
                local br
                bq = bCU_67("MapData")
                br = nil
                pcall(function()
                    local Parameters = bq.Data.Parameters
                    br = tostring(Parameters.Gamemode) .. "|" .. tostring(Parameters.MapName)
                end)
                return br
            end
            bCU_53 = fns.fn1187
            bCU_95 = fns.fn3094
        else
            bCU_53 = function()
                local bq
                local br
                bq = bCU_67("MapData")
                br = nil
                pcall(function()
                    local Parameters = bq.Data.Parameters
                    br = tostring(Parameters.Gamemode) .. "|" .. tostring(Parameters.MapName)
                end)
                return br
            end
            bCU_95 = fns.fn1187
            bCU_40 = fns.fn3094
        end
        bCU_129 = (bCU_129 + 15) % 64
    else
        bCU_108 = (vector.create((bCU_129 * 5 + 8) % 11 + 1, (bCU_129 * 10 + 7) % 13 + 1, (bCU_129 * 11 + 3) % 17 + 1))
        bCU_101 = (vector.create((bCU_129 * 7 + 4) % 11 + 1, (bCU_129 * 9 + 13) % 13 + 1, (bCU_129 * 12 + 10) % 17 + 1))
        local bNf = vector.dot(bCU_108, bCU_101)
        if bNf * bNf >= vector.dot(bCU_108, bCU_108) * vector.dot(bCU_101, bCU_101) + 1 then
            aEN = typeof(writefile) == "function"
        else
            bCU_115 = typeof(writefile) == "function"
        end
        bCU_129 = (bCU_129 + 31) % 64
    end
until (bCU_129 * 21 + 28) % 64 == 15
if bCU_115 then
    bCU_129 = 7
    repeat
        if bCU_129 * 124828183 + 7 + 5 >= bCU_129 * 124828183 + 7 + 5 + 1 then
            bCU_115 = typeof(readfile) == "function"
        else
            bCU_115 = typeof(readfile) == "function"
        end
        bCU_129 = (bCU_129 + 3) % 8
    until (bCU_129 * 1 + 5) % 8 == 7
end
if bCU_115 then
    bCU_129 = 2
    repeat
        bCU_108 = (vector.create((bCU_129 * 1 + 4) % 11 + 1, (bCU_129 * 1 + 10) % 13 + 1, (bCU_129 * 4 + 11) % 17 + 1))
        bCU_101 = (vector.create((bCU_129 * 1 + 9) % 11 + 1, (bCU_129 * 4 + 5) % 13 + 1, (bCU_129 * 10 + 8) % 17 + 1))
        local bKs = vector.dot(bCU_108, bCU_101)
        if bKs * bKs >= vector.dot(bCU_108, bCU_108) * vector.dot(bCU_101, bCU_101) + 1 then
            bCU_115 = typeof(isfile) == "function"
        else
            bCU_115 = typeof(isfile) == "function"
        end
        bCU_129 = (bCU_129 + 2) % 4
    until (bCU_129 * 3 + 1) % 4 == 1
end
aE7, bCU_74, aEj, aD3, bCU_77, fns.bCU_28, bCU_84, aDW, aFx, aGo, aDS, aGv, aE1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
aE7 = bCU_115
bCU_101 = fns.fn1225
bCU_74 = {
    Positions = {},
    WavePositions = {},
    SlotFails = {},
    Status = "Idle",
    Busy = false,
    LastMapKey = nil,
    NewUnits = {},
    AbilityNext = {},
    PriorityDone = {},
    Run = nil,
    Reported = false,
    SmartUsed = {},
    GamePaused = false,
    ChaseAnchor = nil,
    NextChase = 0,
    NextCheckpointLeave = 0,
    ShopAttemptKey = nil,
    Announced = false
}
aEj = fns.fn1321
aD3 = fns.fn772
bCU_77 = fns.fn3675
fns.bCU_21.IsStoredPosition = fns.fn4680
bCU_92 = fns.fn1282
fns.bCU_28 = fns.fn496
bCU_84 = fns.fn2308
aDW = fns.fn4180
aFx = fns.fn1337
fns.bCU_21.SaveWavePositions = fns.fn1059
fns.bCU_21.LoadWavePositions = fns.fn965
fns.bCU_21.WavePosition = fns.fn3640
fns.bCU_21.SetWavePosition = fns.fn3911
fns.bCU_21.ClearWavePosition = fns.fn2283
fns.bCU_21.WaveFormationWaves = fns.fn3229
fns.bCU_21.ActiveWaveFormation = fns.fn446
fns.bCU_21.ActiveWavePosition = fns.fn4239
aGo = function()
    local aLn = {}
    local aLo = aFz()
    if not aLo then
        return aLn
    end
    local aLp = aGi()
    local aLq = aLp and aLp.UnitData
    local aLr = aLp
    if aLr then
        aLr = aLp.Level
    end
    local aLp_1 = tonumber(aLr) or 0
    local min = math.min
    local aLr_1 = tonumber(aLo.MaxSlots) or fns.bCU_22
    local aLt = min(aLr_1, fns.bCU_22)
    local aLp_3 = type(aLo.SlotLevels) == "table" and aLo.SlotLevels
    local aLu = aLp_3 or {}
    for i = 1, aLt do
        local aLm
        local aLr_3 = aLo.Slots[tostring(i)] or aLo.Slots[i]
        local aLr_4 = type(aLr_3) == "table" and aLr_3.ID
        local aLu_1 = aLr_4 or nil
        local aLr_5 = aLu_1
        if aLu_1 then
            aLu_1 = aLq
        end
        if aLu_1 then
            aLu_1 = aLq[aLr_5]
        end
        local aLu_2 = aLu_1 or nil
        local aLv_1 = type(aLr_3) == "table" and type(aLr_3.Data) == "table"
        if aLv_1 then
            aLu_2 = aLu_2 or aLr_3.Data
        end
        local aLv_3 = aLu_2 and tostring(aLu_2.Asset)
        local aLl = aLv_3 or nil
        local aLv_4 = type(aLr_3) == "table"
        if aLv_4 then
            local aLw_1 = aLr_3.AssetType
            if not aLw_1 then
                aLw_1 = aLu_2 and aLu_2.AssetType
            end
            local aLx_2 = aLw_1 or "Unit"
            aLv_4 = tostring(aLx_2)
        end
        if aLl and (aLv_4 or "Unit") == "Unit" then
            local aLv_6 = aLu[tostring(i)] or aLu[i]
            local aLw_4 = tonumber(aLv_6) or 0
            local aLv_7 = Units
            if aLv_7 then
                aLv_7 = Units[aLl]
            end
            local aLw_5 = aLv_7
            local aLv_8 = (tonumber(aLr_3.PlacementLimit))
            if not aLv_8 then
                local aLy_1 = aLw_5 and aLw_5.PlacementLimit
                aLv_8 = tonumber(aLy_1)
            end
            local aLv_9 = aLv_8 or 1
            local aLy_3 = aLu_2.Trait and TraitData and TraitData[tostring(aLu_2.Trait)]
            local aLz = aLy_3
            if aLy_3 then
                aLy_3 = aLz.PlacementLimit
            end
            local aLz_1 = tonumber(aLy_3)
            if aLz_1 then
                aLv_9 = aLz_1
            end
            local aLy_4 = (tonumber(aLr_3.PlacementCost))
            if not aLy_4 then
                local aLt_2 = aLw_5 and aLw_5.UpgradeInfo and aLw_5.UpgradeInfo[0] and aLw_5.UpgradeInfo[0].Cost
                aLy_4 = tonumber(aLt_2)
            end
            local aLt_3 = aLy_4 or 0
            aLm = false
            pcall(function()
                aLm = aF7:IsUnitNameFarm(aLl) == true
            end)
            local aLw_6 = aLw_5 and aLw_5.DisplayName or aLl
            local aLt_5 = tostring(aLw_6)
            local aLz_2 = math.max(aLv_9, 1)
            local aLA = aLu_2.Trait and tostring(aLu_2.Trait)
            local aLu_3 = aLA or nil
            aLn[i] = {
                Slot = i,
                Id = aLr_5,
                Asset = aLl,
                Display = aLt_5,
                Limit = aLz_2,
                Trait = aLu_3,
                Cost = aLt_3,
                IsFarm = aLm,
                Locked = aLp_1 < aLw_4,
                RequiredLevel = aLw_4
            }
        end
    end
    return aLn
end
fns.bCU_21.PositionChoices = fns.fn2826
fns.bCU_21.ParsePositionChoice = fns.fn2381
fns.bCU_21.UnitCache = { At = 0, Value = nil }
aDS = fns.fn976
aGv = function()
    local ID2
    local aMj
    aMj = nil
    ID2 = nil
    local aMl = {}
    if type(aD6) ~= "table" then
        return aMl
    end
    aMj = aEN()
    ID2 = nil
    pcall(function()
        ID2 = aMj.Data.ID
    end)
    for k, v in aD6 do
        local aMs = v
        if aDR(aMs) == "GameUnit" then
            pcall(function()
                local Data = aMs.Data
                local aL4 = tonumber(Data.MaxUpgrade) or 0
                local aL5 = aL4
                local aL6 = Data.UnitData and Data.UnitData.Asset or ""
                local aL4_2 = tostring(aL6)
                if aL5 == 0 and aL4_2 ~= "" then
                    local aL6_2 = Units and Units[aL4_2]
                    if aL6_2 then
                        local aL6_3 = (tonumber(aL6_2.MaxUpgrade))
                        local aMf = if aL6_3 then 1 else 0
                        local aMd = 53 * aMf + 3856 * (1 - aMf)
                        local aMe = 470 * aMf + 3133 * (1 - aMf)
                        if not ((aMd * 1376 + aMe * 3972 + aMd * aMe) % 16777213 == 1964678) then
                            local aL7_1 = type(aL6_2.UpgradeInfo) == "table" and #aL6_2.UpgradeInfo
                            aL6_3 = aL7_1
                        end
                        aL5 = aL6_3 or 0
                    end
                end
                local aL4_5 = ID2 ~= nil and Data.GamePlayerID == ID2
                local aL6_4 = aL4_5 or tostring(Data.Owner) == aFK.Name
                local aL4_6 = aL6_4
                local aL6_5 = not aL4_6
                if aL6_5 ~= false then
                    aL6_5 = IsExpedition()
                end
                if aL6_5 then
                    local aL6_6 = Data.IsHelper == true or Data.HelperKey ~= nil or Data.Helper ~= nil or Data.IsHired == true
                    if not aL6_6 then
                        local aL7_2 = Data.Owner ~= nil and tostring(Data.Owner) ~= ""
                        aL6_6 = aL7_2
                    end
                    aL4_6 = aL6_6
                end
                if aL4_6 and aL5 > 0 then
                    local insert = table.insert
                    local ID = Data.ID
                    local aL7_3 = tostring(Data.UnitID)
                    local aL8 = tostring(Data.UnitData.Asset)
                    local aL9 = tonumber(Data.Upgrade) or 0
                    local aMa = Data.NextStats and Data.NextStats.Cost
                    local aMb = tonumber(aMa) or math.huge
                    insert(aMl, {
                        Replica = aMs,
                        Id = ID,
                        UnitId = aL7_3,
                        Asset = aL8,
                        Level = aL9,
                        Max = aL5,
                        Cost = aMb,
                        IsFarm = Data.IsFarm == true
                    })
                end
            end)
        end
    end
    table.sort(aMl, function(fN, fO)
        local aMg = tonumber(fN.Id) or 0
        local aMh = tonumber(fO.Id) or 0
        return aMg < aMh
    end)
    return aMl
end
aE1 = fns.fn1653
aD_.OuroborosAeUnitLanded = fns.fn1053
if not aD_.OuroborosAeUnitHook then
    aD_.OuroborosAeUnitHook = true
    for k, v in { "GameUnit", "GamePhantom" } do
        local aG4 = v
        pcall(function()
            bCU_43.OnNew(aG4, function(fZ)
                local OuroborosAeUnitLanded = aD_.OuroborosAeUnitLanded
                if OuroborosAeUnitLanded then
                    OuroborosAeUnitLanded(fZ)
                end
            end)
        end)
    end
end
fns.bCU_8, CollectionService, bCU_47, fns.bCU_9, fns.bCU_16, aGw, aGr, aGj, aF9, bCU_50, aFX, aFQ, aFI, aFA, bCU_37, bCU_86, aFW, aFM, aFF, bCU_78, aEz, aEa, aFv, aEl, bCU_64, aFb, aD0, bCU_54, bCU_63, aF4, aEI, aGA, aFJ, fns.bCU_4, bCU_79, aEc, fns.bCU_5, bCU_75, bCU_96, aDX, aD9, fns.bCU_11, aGb, aEJ, fns.bCU_15, aEV, aFl, aE_, aE6, bCU_82, fns.bCU_12, aFj, aGx, aEP, aEQ, fns.bCU_25, aEy, aEi, aF6, aFp, aEv, aEA, aFi, aEX, aFN, aGy, aFm, aDU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
bCU_78 = function(f3)
    if type(aD6) ~= "table" then
        return 0
    end
    local aMH = 0
    for k, v in aD6 do
        local aMR = v
        if aDR(aMR) == "GamePhantom" then
            pcall(function()
                local Data = aMR.Data
                local aMC = tostring(Data.Owner) == aFK.Name and tostring(Data.UnitID) == f3.Id and tostring(Data.UnitData.Asset) == f3.Asset
                if aMC then
                    aMH += 1
                end
            end)
        end
    end
    return aMH
end
aEz = fns.fn2504
aEa = fns.fn732
aFv = fns.fn1319
fns.bCU_8 = RaycastParams.new()
fns.bCU_21.RayParamsNext = 0
aEl = fns.fn3039
bCU_64 = function(gO, gP, gQ, gR)
    local aNd
    aEl()
    local aNe = workspace:Raycast(Vector3.new(gP, gR + 25, gQ), Vector3.new(0, -400, 0), fns.bCU_8)
    if not aNe then
        return nil
    end
    aNd = nil
    pcall(function()
        aNd = aF7:GetUnitBoundingBoxSize(gO)
    end)
    if not aNd then
        return nil
    end
    return CFrame.new(aNe.Position) * CFrame.new(0, aNd.Y / 2, 0)
end
aFb = function(g0, g1)
    local aNh_1
    local aNg_1
    aNg_1, aNh_1 = pcall(function()
        return aF7:IsPlacementAllowed(g0, g1)
    end)
    return aNg_1 and aNh_1 == true
end
aD0 = fns.fn299
CollectionService = game:GetService("CollectionService")
bCU_54 = function()
    local hn
    local ho
    hn = bCU_67("MapData")
    ho = {}
    pcall(function()
        local aNM_4
        local Data = hn.Data
        local aNJ = type(Data.DisabledPaths) == "table" and Data.DisabledPaths
        local aNL = aNJ or {}
        local aNL_5
        local aNJ_1 = {}
        local aNL_1 = Data.SpawnPartName
        if not aNL_1 then
            aNL_1 = Data.Parameters and Data.Parameters.ActName
        end
        local aNM_2 = aNL_1 or ""
        local aNL_2 = tostring(aNM_2)
        local aNM_3 = tonumber(aNL_2:match("%d+"))
        local aNN
        for k in Data.Paths do
            local aNO_1 = tostring(k) == aNL_2
            if not aNO_1 then
                local aNP = aNM_3 and tonumber(k) == aNM_3
                aNO_1 = aNP
            end
            if aNO_1 then
                aNN = k
                break
            end
        end
        if aNN ~= nil then
            table.insert(aNJ_1, aNN)
        else
            for k in Data.Paths do
                table.insert(aNJ_1, k)
            end
        end
        table.sort(aNJ_1, function(hF, hG)
            local aNF_1
            local aNE_1
            aNE_1, aNF_1 = tonumber(hF), tonumber(hG)
            if aNE_1 and aNF_1 then
                return aNE_1 < aNF_1
            end
            return tostring(hF) < tostring(hG)
        end)
        for k, v in aNJ_1 do
            local aNJ_2 = Data.Paths[v]
            local aNL_3 = not aNL[v]
            if aNL_3 ~= false then
                aNL_3 = type(aNJ_2) == "table"
            end
            if aNL_3 then
                local aNL_4 = #aNJ_2 - 1
                local aN4 = 1
                while aN4 <= aNL_4 do
                    local aN5 = aN4
                    aNM_4, aNL_5 = aNJ_2[aN5], aNJ_2[aN5 + 1]
                    local Magnitude = (aNL_5 - aNM_4).Magnitude
                    if Magnitude > 0 then
                        local Unit = (aNL_5 - aNM_4).Unit
                        local aN9 = 0
                        while aN9 <= Magnitude do
                            local aOa = aN9
                            table.insert(ho, aNM_4 + Unit * aOa)
                            aN9 += 6
                        end
                    end
                    aN4 += 1
                end
            end
        end
    end)
    return ho
end
fns.bCU_21.PathCache = { Key = nil, Points = nil, Remaining = nil, Total = 0 }
bCU_63 = fns.fn1647
aF4 = fns.fn2919
aEI = fns.fn3991
aGA = fns.fn1401
aFJ = fns.fn3662
fns.bCU_4 = fns.fn3346
bCU_79 = fns.fn38
aEc = fns.fn1233
fns.bCU_21.SMART_WINDOW = 0.3
fns.bCU_21.SMART = {
    Path = "Path Distance (slider)",
    Start = "Start of Map",
    Middle = "Middle of Map",
    Finish = "End of Map",
    Near = "Near Player Character"
}
fns.bCU_21.SMART_MODES = {
    fns.bCU_21.SMART.Path,
    fns.bCU_21.SMART.Start,
    fns.bCU_21.SMART.Middle,
    fns.bCU_21.SMART.Finish,
    fns.bCU_21.SMART.Near
}
fns.bCU_21.SMART_CONDITIONS = {
    "Prioritize Placing Farms",
    "Left to Right on Hotbar",
    "Randomize",
    "Cheapest First",
    "Most Expensive First",
    "Respect Place Order Limit"
}
fns.bCU_21.SmartPlacementCondition = fns.fn688
fns.bCU_5 = fns.fn405
bCU_75 = fns.fn1950
bCU_96 = fns.fn2898
aDX = fns.fn2616
fns.bCU_21.VFX_IMAGE = "rbxassetid://18657887261"
fns.bCU_21.VFX_COLOR = Color3.fromRGB(126, 214, 160)
bCU_47 = { Folder = nil, Markers = {}, Spin = 0 }
aD9 = fns.fn4426
fns.bCU_11 = fns.fn893
aGb = fns.fn870
if (aFF and not aFl or (false or not aFl) or (aFl or not aD0 or not aGA and not aFl)) and ((false or (aFF or aGA)) and (false and aFl or false and not aD0)) or not ((aFF and not aFl or (false or not aFl) or (aFl or not aD0 or not aGA and not aFl)) and ((false or (aFF or aGA)) and (false and aFl or false and not aD0))) then
    fns.bCU_9 = { Pin = nil }
    aEJ = fns.fn3590
    fns.bCU_15 = fns.fn4574
    aEV = function(kP)
        local aQE = Toggles and Toggles.ShowPlacementVfx and Toggles.ShowPlacementVfx.Value
        local aQE_7 = not aQE or not fns.bCU_29()
        if aQE_7 then
            if bCU_47.Folder then
                aD9()
            end
            return
        end
        local Spin = bCU_47.Spin
        local aQF_6 = kP or 0
        bCU_47.Spin = (Spin + aQF_6 * 0.35) % (math.pi * 2)
        local aQE_9 = os.clock()
        if not (aQE_9 >= (bCU_47.NextClamp or 0)) then
            for k, v in bCU_47.Markers do
                if v.Ground and v.Part.Parent then
                    v.Part.CFrame = CFrame.new(v.Ground) * CFrame.Angles(0, bCU_47.Spin, 0)
                end
            end
            return
        end
        bCU_47.NextClamp = aQE_9 + 0.25
        local max2 = math.max
        local aQF_9 = Options.PlacementVfxSize and Options.PlacementVfxSize.Value
        local aQG_4 = tonumber(aQF_9) or 12
        local aQF_10 = max2(2, aQG_4)
        local clamp = math.clamp
        local aQG_5 = Options.PlacementVfxOpacity and Options.PlacementVfxOpacity.Value
        local aQH = tonumber(aQG_5) or 70
        local aQE_12 = 1 - clamp(aQH / 100, 0, 1)
        aEl()
        local aQG_6 = {}
        local aQH_2 = aGo()
        local aQY = 1
        local aQW = fns.bCU_22
        while aQY <= aQW do
            local aQZ = aQY
            local max = math.max
            local floor = math.floor
            local aQK = aQH_2[aQZ] and aQH_2[aQZ].Limit
            local aQL = tonumber(aQK) or 1
            local aQK_6 = max(1, floor(aQL))
            for i = 1, aQK_6 do
                local aQI_5 = aQZ .. ":" .. i
                local aQJ_3 = nil
                if Toggles.PreviewWavePositions and Toggles.PreviewWavePositions.Value then
                    aQJ_3 = fns.bCU_21.WavePosition(Options.WavePositionWave.Value, aQZ, i)
                end
                local aQK_8 = aQJ_3 or fns.bCU_28(aQZ, i)
                local aQD = bCU_47.Markers[aQI_5]
                if aQK_8 then
                    aQG_6[aQI_5] = true
                    local aQK_9 = aQD
                    if aQK_9 then
                        aQK_9 = aQD.Size ~= aQF_10 or not aQD.Part.Parent
                    end
                    if aQK_9 then
                        pcall(function()
                            aQD.Part:Destroy()
                        end)
                        bCU_47.Markers[aQI_5] = nil
                        aQD = nil
                    end
                    if not aQD then
                        aQD = aGb(aQZ, i, aQF_10)
                    end
                    if aQD and aQD.Part.Parent then
                        local aQI_7 = workspace:Raycast(Vector3.new(aQK_8.X, aQK_8.Y + 25, aQK_8.Z), Vector3.new(0, -400, 0), fns.bCU_8)
                        local aQI_8 = aQI_7 and aQI_7.Position or aQK_8
                        aQD.Ground = aQI_8 + Vector3.new(0, 0.06, 0)
                        aQD.Part.CFrame = CFrame.new(aQD.Ground) * CFrame.Angles(0, bCU_47.Spin, 0)
                        aQD.Sigil.Transparency = aQE_12
                    end
                end
            end
            aQY += 1
        end
        for k, v in bCU_47.Markers do
            local aQ7 = v
            if not aQG_6[k] then
                pcall(function()
                    aQ7.Part:Destroy()
                end)
                bCU_47.Markers[k] = nil
            end
        end
    end
    SmartAnchor = fns.fn1307
    aFl = fns.fn4420
else
    aEV = { Pin = nil }
    fns.bCU_9 = fns.fn3590
    aFl = fns.fn4574
    aEJ = function(kP)
        local aQE = Toggles and Toggles.ShowPlacementVfx and Toggles.ShowPlacementVfx.Value
        local aQE_1 = not aQE or not fns.bCU_29()
        if aQE_1 then
            if bCU_47.Folder then
                aD9()
            end
            return
        end
        local Spin = bCU_47.Spin
        local aQF_1 = kP or 0
        bCU_47.Spin = (Spin + aQF_1 * 0.35) % (math.pi * 2)
        local aQE_3 = os.clock()
        if not (aQE_3 >= (bCU_47.NextClamp or 0)) then
            for k, v in bCU_47.Markers do
                if v.Ground and v.Part.Parent then
                    v.Part.CFrame = CFrame.new(v.Ground) * CFrame.Angles(0, bCU_47.Spin, 0)
                end
            end
            return
        end
        bCU_47.NextClamp = aQE_3 + 0.25
        local max2 = math.max
        local aQF_4 = Options.PlacementVfxSize and Options.PlacementVfxSize.Value
        local aQG_1 = tonumber(aQF_4) or 12
        local aQF_5 = max2(2, aQG_1)
        local clamp = math.clamp
        local aQG_2 = Options.PlacementVfxOpacity and Options.PlacementVfxOpacity.Value
        local aQH = tonumber(aQG_2) or 70
        local aQE_6 = 1 - clamp(aQH / 100, 0, 1)
        aEl()
        local aQG_3 = {}
        local aQH_1 = aGo()
        local aQY = 1
        local aQW = fns.bCU_22
        while aQY <= aQW do
            local aQZ = aQY
            local max = math.max
            local floor = math.floor
            local aQK = aQH_1[aQZ] and aQH_1[aQZ].Limit
            local aQL = tonumber(aQK) or 1
            local aQK_1 = max(1, floor(aQL))
            for i = 1, aQK_1 do
                local aQI_1 = aQZ .. ":" .. i
                local aQJ_1 = nil
                if Toggles.PreviewWavePositions and Toggles.PreviewWavePositions.Value then
                    aQJ_1 = fns.bCU_21.WavePosition(Options.WavePositionWave.Value, aQZ, i)
                end
                local aQK_3 = aQJ_1 or fns.bCU_28(aQZ, i)
                local aQD = bCU_47.Markers[aQI_1]
                if aQK_3 then
                    aQG_3[aQI_1] = true
                    local aQK_4 = aQD
                    if aQK_4 then
                        aQK_4 = aQD.Size ~= aQF_5 or not aQD.Part.Parent
                    end
                    if aQK_4 then
                        pcall(function()
                            aQD.Part:Destroy()
                        end)
                        bCU_47.Markers[aQI_1] = nil
                        aQD = nil
                    end
                    if not aQD then
                        aQD = aGb(aQZ, i, aQF_5)
                    end
                    if aQD and aQD.Part.Parent then
                        local aQI_3 = workspace:Raycast(Vector3.new(aQK_3.X, aQK_3.Y + 25, aQK_3.Z), Vector3.new(0, -400, 0), fns.bCU_8)
                        local aQI_4 = aQI_3 and aQI_3.Position or aQK_3
                        aQD.Ground = aQI_4 + Vector3.new(0, 0.06, 0)
                        aQD.Part.CFrame = CFrame.new(aQD.Ground) * CFrame.Angles(0, bCU_47.Spin, 0)
                        aQD.Sigil.Transparency = aQE_6
                    end
                end
            end
            aQY += 1
        end
        for k, v in bCU_47.Markers do
            local aQ7 = v
            if not aQG_3[k] then
                pcall(function()
                    aQ7.Part:Destroy()
                end)
                bCU_47.Markers[k] = nil
            end
        end
    end
    SmartAnchor = fns.fn1307
    fns.bCU_15 = fns.fn4420
end
aE_ = function(lZ, l_, l0)
    local aRi
    local aRg
    local aRh
    aRg = nil
    aRh = nil
    aRi = nil
    local aRk = aFv(l_, lZ)
    local min = math.min
    local aRl_5
    local aRm = aRk + 1
    local aRm_7
    local max = math.max
    local floor = math.floor
    local aRp = tonumber(lZ.Limit) or 1
    local aRq = min(aRm, max(1, floor(aRp)))
    local aRl_1 = l0
    local aRm_1 = not aRl_1
    if aRm_1 ~= false then
        aRm_1 = bCU_74.ActiveWaveFormation
    end
    if aRm_1 then
        local aRm_2 = fns.bCU_21.ActiveWavePosition(bCU_74.ActiveWaveFormation, lZ.Slot, aRq) or fns.bCU_21.ActiveWavePosition(bCU_74.ActiveWaveFormation, lZ.Slot, 1)
        aRl_1 = aRm_2
    end
    local aRm_3 = not aRl_1
    if aRm_3 ~= false then
        local aRo_1 = Toggles.SmartAutoPlace and Toggles.SmartAutoPlace.Value
        if not aRo_1 then
            aRo_1 = Toggles.ExpSmartPlace and Toggles.ExpSmartPlace.Value
        end
        aRm_3 = aRo_1
    end
    if aRm_3 then
        aRl_1 = SmartAnchor(lZ)
    end
    local aRm_4 = aRl_1 or fns.bCU_28(lZ.Slot, aRq)
    local aRx = if aRm_4 then 1 else 0
    local aRv = 385 * aRx + 1301 * (1 - aRx)
    local aRw = 601 * aRx + 3325 * (1 - aRx)
    if not ((aRv * 3544 + aRw * 3152 + aRv * aRw) % 16777213 == 3490177) then
        aRm_4 = fns.bCU_28(lZ.Slot, 1)
    end
    if not aRm_4 then
        aRm_4 = bCU_84()
    end
    local aRl_2 = aRm_4
    if not aRl_2 then
        bCU_74.Status = "No position set for slot " .. lZ.Slot
        return false
    end
    aRi = aD0(lZ.Asset, aRl_2)
    if not aRi then
        bCU_74.Status = "No free ground near slot " .. lZ.Slot .. " position"
        local SlotFails = bCU_74.SlotFails
        local Slot = lZ.Slot
        local aRn_3 = bCU_74.SlotFails[lZ.Slot] or 0
        SlotFails[Slot] = aRn_3 + 1
        return false
    end
    aRg = aEN()
    if not aRg then
        return false
    end
    bCU_74.Status = string.format("Placing %s (slot %d, placement %d)", lZ.Display, lZ.Slot, aRq)
    bCU_74.Placing = true
    table.clear(bCU_74.NewUnits)
    local aRf = bCU_67("HotbarData")
    if aRf then
        pcall(function()
            aRf:FireServer("SelectSlot", lZ.Slot)
        end)
    end
    local aRl_4 = aEz() and "PlaceGamePhantom"
    aRh = aRl_4 or "PlaceGameUnit"
    pcall(function()
        aRg:FireServer(aRh, lZ.Slot, aRi)
    end)
    for i = 1, 120 do
        task.wait()
        local aRj = table.remove(bCU_74.NewUnits)
        if aRj then
            aRl_5, aRm_7 = pcall(function()
                local aRd = tostring(aRj.Data.UnitID) == lZ.Id and tostring(aRj.Data.UnitData.Asset) == lZ.Asset
                return aRd
            end)
            if aRl_5 and aRm_7 then
                bCU_74.Placing = false
                bCU_74.SlotFails[lZ.Slot] = nil
                aDS()
                return true
            end
        end
    end
    bCU_74.Placing = false
    aDS()
    if aFv(aE1(), lZ) > aRk then
        bCU_74.SlotFails[lZ.Slot] = nil
        return true
    end
    local aRk_1 = bCU_74.SlotFails[lZ.Slot]
    local aRx_1 = if aRk_1 then 1 else 0
    local aRv_1 = 672 * aRx_1 + 1684 * (1 - aRx_1)
    local aRw_1 = 2991 * aRx_1 + 1098 * (1 - aRx_1)
    if not ((aRv_1 * 3554 + aRw_1 * 3451 + aRv_1 * aRw_1) % 16777213 == 14720181) then
        aRk_1 = 0
    end
    local aRl_6 = aRk_1 + 1
    bCU_74.SlotFails[lZ.Slot] = aRl_6
    bCU_74.Status = "Placement refused for slot " .. lZ.Slot .. ", retrying"
    return false
end
aE6 = function(mH, mI, mJ, mK)
    local aRK_1
    local aRJ_1
    aRK_1, aRJ_1 = nil, nil
    if Toggles.SmartAutoPlace and Toggles.SmartAutoPlace.Value then
        local aRL_1 = {}
        local aRT = 1
        local aRR = fns.bCU_22
        while aRT <= aRR do
            local aRU = aRT
            local aRM_1 = mH[aRU]
            local aRN_1 = aRM_1 and not aRM_1.Locked and not bCU_50(aRM_1)
            if aRN_1 then
                local aRN_2 = aFl(aRM_1)
                local aRO_1 = aFv(mI, aRM_1)
                local aRP = aRO_1 < aRN_2 and mJ >= aGw(aRU)
                if aRP then
                    table.insert(aRL_1, aRM_1)
                end
            end
            aRT += 1
        end
        local aRI = fns.bCU_21.SmartPlacementCondition()
        if aRI == "Randomize" and #aRL_1 > 0 then
            aRK_1 = aRL_1[math.random(#aRL_1)]
        else
            table.sort(aRL_1, function(m9, na)
                if aRI == "Prioritize Placing Farms" and m9.IsFarm ~= na.IsFarm then
                    return m9.IsFarm == true
                elseif aRI == "Respect Place Order Limit" then
                    local aRC_1 = aGr(m9.Slot)
                    local aRD_1 = aGr(na.Slot)
                    if aRC_1 ~= aRD_1 then
                        return aRC_1 < aRD_1
                    end
                    local aRC_2 = tonumber(m9.Slot) or 0
                    local aRD_2 = tonumber(na.Slot) or 0
                    return aRC_2 < aRD_2
                else
                    if aRI == "Cheapest First" and m9.Cost ~= na.Cost then
                        return m9.Cost < na.Cost
                    end
                    if aRI == "Most Expensive First" and m9.Cost ~= na.Cost then
                        return m9.Cost > na.Cost
                    end
                    local aRC_5 = tonumber(m9.Slot) or 0
                    local aRD_3 = tonumber(na.Slot) or 0
                    return aRC_5 < aRD_3
                end
            end)
            aRK_1 = aRL_1[1]
        end
    else
        local aRY = 1
        local aRW = fns.bCU_22
        while aRY <= aRW do
            local aRZ = aRY
            local aRL_2 = mH[aRZ]
            local aRM_3 = aRL_2 and not aRL_2.Locked and not bCU_50(aRL_2)
            if aRM_3 then
                local aRM_4 = aFl(aRL_2)
                local aRN_3 = aFv(mI, aRL_2)
                local aRO_2 = aRN_3 < aRM_4 and mJ >= aGw(aRZ)
                if aRO_2 then
                    local aRM_5 = aGr(aRZ)
                    if not aRJ_1 or aRM_5 < aRJ_1 then
                        aRK_1, aRJ_1 = aRL_2, aRM_5
                    end
                end
            end
            aRY += 1
        end
    end
    if not aRK_1 then
        return nil, false
    end
    local aR2 = if aEz() then 1 else 0
    if aR2 == 1 then
        return aRK_1, true
    end
    return aRK_1, mK >= aRK_1.Cost
end
bCU_82 = fns.fn3882
fns.bCU_12 = fns.fn3050
fns.bCU_21.LimitsConstrainUpgrades = fns.fn3628
aFj = fns.fn3909
aGx = fns.fn2292
aEP = fns.fn4079
aEQ = function(oE)
    local aTp
    aTp = nil
    aTp = aEN()
    local aTq = not aTp or oE.Cost > aFZ()
    if aTq then
        return false
    end
    bCU_74.Status = "Upgrading " .. oE.Asset .. " (" .. oE.Level .. "/" .. oE.Max .. ")"
    pcall(function()
        aTp:FireServer("UpgradeGameUnit", oE.Id)
    end)
    for i = 1, 120 do
        local aTo
        task.wait()
        aTo = oE.Level
        local aTq_1 = pcall(function()
            local aTm = tonumber(oE.Replica.Data.Upgrade) or aTo
            aTo = aTm
        end)
        if not aTq_1 or aTo > oE.Level then
            aDS()
            return aTo > oE.Level
        end
    end
    return false
end
fns.bCU_21.CHASE_NORMAL = "Normal Stage Enemies"
fns.bCU_21.CHASE_BOSS = "Only Bosses"
fns.bCU_21.CHASE_ANY = "Any"
fns.bCU_25 = function()
    local aTC_1
    local aTB_1
    local aTA = {}
    if type(aD6) ~= "table" then
        return aTA
    end
    for k, v in aD6 do
        local aTO = v
        aTB_1, aTC_1 = pcall(function()
            local aTx = aTO.Token or aTO.Class
            return tostring(aTx)
        end)
        if aTB_1 and aTC_1 == "GameSpawnedEnemy" then
            pcall(function()
                if aTO.Data.Finished ~= true then
                    aTA[tostring(aTO.Id)] = tostring(aTO.Data.Type)
                end
            end)
        end
    end
    return aTA
end
aEy = fns.fn2764
fns.bCU_21.VILLAIN_HUNT_BOSSES = {
    ["Crow (Boss)"] = true,
    ["Cursed Immortal (Boss)"] = true,
    ["Dark Mage (Boss)"] = true,
    ["Razorjaw (Boss)"] = true
}
aEi = fns.fn704
aF6 = fns.fn2634
aFp = function(pk, pl)
    local aT9_1
    local aT8_2
    local Enemies = workspace:FindFirstChild("Enemies")
    local aT5_3
    if not Enemies or #pk == 0 then
        return nil
    end
    local aT6_1 = nil
    for k, v in pk do
        local Position
        local aUh = v
        Position = nil
        pcall(function()
            Position = aUh.Replica.Data.CFrame.Position
        end)
        if Position then
            local aT7_1 = aF4(Position)
            if aT7_1 then
                local aT8_1 = aT7_1 - fns.bCU_4(aUh.Asset)
                if not aT6_1 or aT8_1 < aT6_1 then
                    aT6_1 = aT8_1
                end
            end
        end
    end
    if not aT6_1 then
        return nil
    end
    local aT7_3 = fns.bCU_25()
    aT9_1, aT8_2 = nil, nil
    for i, child in Enemies:GetChildren() do
        local aUn = child
        local attr = aUn:GetAttribute("EnemyID")
        local aUa = attr and aT7_3[tostring(attr)]
        local aUa_1
        local aT5_2 = aUa
        if aUa then
            aUa = aF6(aT5_2, pl)
        end
        if aUa then
            aT5_3, aUa_1 = pcall(function()
                return aUn:GetPivot().Position
            end)
            if aT5_3 then
                local aT5_4 = aF4(aUa_1)
                if aT5_4 and aT5_4 < aT6_1 then
                    if not aT8_2 or aT5_4 < aT8_2 then
                        aT9_1, aT8_2 = aUn, aT5_4
                    end
                end
            end
        end
    end
    return aT9_1
end
aEv = function(pR)
    local aUp = aEN()
    if not aUp then
        return 0
    end
    local aUq = 0
    for k, v in pR do
        local aUo
        local aUA = v
        aUo = false
        pcall(function()
            aUo = aUA.Replica.Data.Unsellable == true
        end)
        if not aUo then
            pcall(function()
                aUp:FireServer("SellGameUnit", aUA.Id)
            end)
            aDS()
            aUq += 1
            task.wait(0.05)
        end
    end
    return aUq
end
fns.bCU_21.SellWaveFormationUnits = function(p2, p3, p4)
    local aUD = bCU_53()
    local aUE = aUD and bCU_74.WavePositions[aUD]
    local aUD_1 = aUE
    if aUE then
        aUE = aUD_1[tostring(p4)]
    end
    local aUD_2 = aUE
    local aUB = aEN()
    local aUE_1 = not aUB
    local aUF = type(aUD_2) ~= "table" or aUE_1
    if aUF then
        return 0
    end
    local aUE_2 = 0
    for k, v in p3 do
        local aUC
        local aUR = v
        local aUF_1 = bCU_82(p2, aUR)
        aUC = false
        pcall(function()
            aUC = aUR.Replica.Data.Unsellable == true
        end)
        local aUG = aUF_1 and aUD_2[tostring(aUF_1)]
        if aUG and not aUC then
            pcall(function()
                aUB:FireServer("SellGameUnit", aUR.Id)
            end)
            aDS()
            aUE_2 += 1
            task.wait(0.05)
        end
    end
    return aUE_2
end
fns.bCU_21.ExpeditionEmergencyReposition = function(qq, qr)
    local PayloadModel
    local Position2
    PayloadModel = nil
    Position2 = nil
    local aVc_1
    local aVb_1
    local aVa_1
    PayloadModel = workspace:FindFirstChild("PayloadModel", true)
    local Enemies = workspace:FindFirstChild("Enemies")
    local aU7 = not PayloadModel or not Enemies
    local aVh = if aU7 then 1 else 0
    local aVf = 2118 * aVh + 71 * (1 - aVh)
    local aVg = 3473 * aVh + 120 * (1 - aVh)
    if not ((aVf * 3835 + aVg * 607 + aVf * aVg) % 16777213 == 809242) then
        aU7 = #qq == 0
    end
    if aU7 then
        return nil, 0
    end
    Position2 = nil
    pcall(function()
        Position2 = PayloadModel:GetPivot().Position
    end)
    if not Position2 then
        return nil, 0
    end
    local aU5 = {}
    local aU8 = aD6 or {}
    for k, v in aU8 do
        local aVn = v
        pcall(function()
            local aUS = aVn.Token or aVn.Class
            local aUT = tostring(aUS) == "GameSpawnedEnemy" and aVn.Data.Finished ~= true
            if aUT then
                local Data = aVn.Data
                local aUT_1 = tostring(aVn.Id)
                local aUU = Data.Type or "Normal"
                local aUV = tostring(aUU)
                local aUW = Data.Health or Data.CurrentHealth or Data.HP
                local aUX = tonumber(aUW)
                local aUY = Data.MaxHealth or Data.MaximumHealth or Data.MaxHP
                aU5[aUT_1] = { Kind = aUV, Health = aUX, MaxHealth = tonumber(aUY) }
            end
        end)
    end
    local aU7_2 = Options.ExpEmergencyDistance and Options.ExpEmergencyDistance.Value
    local aU8_1 = tonumber(aU7_2) or 55
    local aU8_2 = Options.ExpEmergencyHealth and Options.ExpEmergencyHealth.Value
    local aU9 = tonumber(aU8_2) or 35
    aVc_1, aVb_1, aVa_1 = nil, nil, nil
    for i, child in Enemies:GetChildren() do
        local Position
        local aVt = child
        local attr = aVt:GetAttribute("EnemyID")
        local aU9_1 = attr and aU5[tostring(attr)]
        local aU6_2 = aU9_1
        if aU9_1 then
            aU9_1 = aF6(aU6_2.Kind, qr)
        end
        if aU9_1 then
            Position = nil
            pcall(function()
                Position = aVt:GetPivot().Position
            end)
            if Position then
                local Magnitude = (Position - Position2).Magnitude
                local aU6_4 = Magnitude <= aU8_1 and (aU6_2.Health and aU6_2.MaxHealth and aU6_2.MaxHealth > 0 and aU6_2.Health / aU6_2.MaxHealth * 100 or 100) >= aU9
                if aU6_4 then
                    aU6_4 = not aVa_1 or Magnitude < aVa_1
                end
                if aU6_4 then
                    aVc_1, aVb_1, aVa_1 = aVt, Position, Magnitude
                end
            end
        end
    end
    if not aVc_1 then
        return nil, 0
    end
    local aU0 = aEN()
    if not aU0 then
        return nil, 0
    end
    local aU6_5 = 0
    for k, v in qq do
        local Position, aU4
        local aVx = v
        Position, aU4 = nil, nil
        pcall(function()
            Position = aVx.Replica.Data.CFrame.Position
            aU4 = aVx.Replica.Data.Unsellable == true
        end)
        if Position and not aVx.IsFarm and not aU4 then
            local Magnitude2 = (Position - Position2).Magnitude
            local Magnitude = (Position - aVb_1).Magnitude
            local aU9_4 = math.max(fns.bCU_4(aVx.Asset), 1)
            if Magnitude2 > aVa_1 and Magnitude > aU9_4 * 0.9 then
                pcall(function()
                    aU0:FireServer("SellGameUnit", aVx.Id)
                end)
                aU6_5 += 1
                task.wait(0.05)
            end
        end
    end
    if aU6_5 > 0 then
        aDS()
        bCU_74.ChaseAnchor = aVb_1:Lerp(Position2, 0.55)
    end
    return aVc_1, aU6_5
end
fns.bCU_21.PRIORITY_DEFAULT = "Default"
fns.bCU_21.PRIORITY_VALUES = {
    fns.bCU_21.PRIORITY_DEFAULT,
    "First",
    "Last",
    "Closest",
    "Strongest",
    "Weakest",
    "Fastest",
    "Shielded",
    "Boss",
    "None"
}
aEA = function(rq, rr)
    local aVC = aEN()
    if not aVC then
        return
    end
    for k, v in rr do
        local aVB
        local aVM = v
        if not aVM.IsFarm then
            local aVE = bCU_82(rq, aVM)
            local aVF = aVE and aFX(aVE)
            local aVD = aVF
            if aVD and aVD ~= fns.bCU_21.PRIORITY_DEFAULT then
                aVB = nil
                pcall(function()
                    aVB = tostring(aVM.Replica.Data.TargetPriority)
                end)
                if aVB ~= aVD and bCU_74.PriorityDone[aVM.Id] ~= aVD then
                    bCU_74.PriorityDone[aVM.Id] = aVD
                    pcall(function()
                        aVC:FireServer("ChangeGameUnitPriority", aVM.Id, aVD)
                    end)
                elseif aVB == aVD then
                    bCU_74.PriorityDone[aVM.Id] = aVD
                end
            end
        end
    end
end
fns.bCU_21.DarkMagePriorityStep = function()
    local aVP = not Toggles.DarkMageNoneTargeting.Value or not fns.bCU_29()
    if aVP then
        return
    end
    local aVO = aEN()
    if not aVO then
        return
    end
    local aVQ = bCU_74.DarkMagePriorityAt or {}
    bCU_74.DarkMagePriorityAt = aVQ
    for k, v in aE1() do
        local aVN
        local aV0 = v
        if aV0.Asset == "Judar" or aV0.Asset == "JudarEVO" then
            aVN = nil
            pcall(function()
                aVN = tostring(aV0.Replica.Data.TargetPriority)
            end)
            local aVP_3 = aVN ~= "None"
            if aVP_3 then
                local aVQ_1 = os.clock()
                aVP_3 = aVQ_1 >= (bCU_74.DarkMagePriorityAt[aV0.Id] or 0)
            end
            if aVP_3 then
                bCU_74.DarkMagePriorityAt[aV0.Id] = os.clock() + 1
                pcall(function()
                    aVO:FireServer("ChangeGameUnitPriority", aV0.Id, "None")
                end)
            end
        end
    end
end
bCU_86 = "Off"
aFW = "Use Ability when Boss In Range"
aFM = "Use Ability at Wave X"
aFF = "Use Ability Anytime"
fns.bCU_21.ABILITY_MODES = { bCU_86, aFW, aFM, aFF }
pcall(fns.fn2001)
aFi = fns.fn2961
fns.bCU_21.AbilityNameCache = {}
aEX = fns.fn2019
aFN = function(ss)
    local Position
    Position = nil
    local Enemies = workspace:FindFirstChild("Enemies")
    local aWm_2
    if not Enemies then
        return false
    end
    Position = nil
    pcall(function()
        Position = ss.Replica.Data.CFrame.Position
    end)
    if not Position then
        return false
    end
    local aWn = fns.bCU_4(ss.Asset, ss.Level)
    local aWo = fns.bCU_25()
    for i, child in Enemies:GetChildren() do
        local aWx = child
        local attr = aWx:GetAttribute("EnemyID")
        local aWp = attr and aEy(aWo[tostring(attr)])
        local aWp_1
        if aWp then
            aWm_2, aWp_1 = pcall(function()
                return aWx:GetPivot().Position
            end)
            local aWq = aWm_2 and Vector3.new(aWp_1.X - Position.X, 0, aWp_1.Z - Position.Z).Magnitude <= aWn
            if aWq then
                return true
            end
        end
    end
    return false
end
aGy = fns.fn19
aFm = function(sV, sW, sX)
    local aWF_1
    local aWE_1, aWE_4
    local aWC = aEN()
    if not aWC then
        return
    end
    for k, v in sW do
        local Abilities
        local aWR = v
        aWF_1, aWE_1 = bCU_82(sV, aWR)
        if aWF_1 then
            Abilities = nil
            pcall(function()
                Abilities = aWR.Replica.Data.Abilities
            end)
            if type(Abilities) == "table" then
                local aWG = aEX(aWE_1.Asset)
                for k, v in aWG do
                    local aWX = v
                    local aWE_2 = aFQ(aWF_1, k)
                    local aWG_1 = aFi(aWX)
                    local aWH = false
                    local aWH_1
                    if aWE_2 == aFF then
                        aWH = true
                    elseif aWE_2 == aFM then
                        aWH = sX >= aFI(aWF_1, k)
                    elseif aWE_2 == aFW then
                        aWH = aFN(aWR)
                    end
                    if aWH and Abilities[aWX] ~= nil then
                        aWE_4, aWH_1 = aGy(aWR, aWX, aWG_1)
                        if aWE_4 then
                            local AbilityNext = bCU_74.AbilityNext
                            local aWI = os.clock()
                            local aWJ = aWG_1 and aWG_1.Cooldown
                            local aWK = tonumber(aWJ) or 30
                            AbilityNext[aWH_1] = aWI + aWK
                            local aWG_2 = aWG_1 and aWG_1.DisplayName or aWX
                            bCU_74.Status = "Ability " .. aWG_2
                            pcall(function()
                                aWC:FireServer("ActivateUnitAbility", aWR.Id, aWX)
                            end)
                        end
                    end
                end
            end
        end
    end
end
aDU = fns.fn1616
bCU_108 = syn and syn.request
bCU_129 = bCU_108
if not bCU_129 then
    bCU_115 = http and http.request
    bCU_129 = bCU_115
end
if not bCU_129 then
    bCU_129 = http_request
end
if not bCU_129 then
    bCU_129 = request
end
aDZ, aEW, aEm, aD7, fns.bCU_17, aEY, bCU_31, aFk, bCU_94, fns.worker = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
bCU_115 = 14
repeat
    bCU_108 = (bCU_115 * 4 + 1) % 5 + 1
    if bCU_108 <= 3 then
        if bCU_108 <= 2 then
            if bCU_108 <= 1 then
                if (bCU_115 * 2 + 1) * 7 % 3 == ((bCU_115 * 2 + 1) * 7 + 2) % 3 then
                    fns.worker = function(uX)
                        local aX8
                        local aYa = bCU_74.Run or {}
                        local aYa_7 = fns.bCU_17()
                        local aYb = {}
                        local aYc = os.clock()
                        local aYd = aYa.Start or os.clock()
                        local aYe = aYc - aYd
                        local aYc_12 = aYa.Placements or 0
                        local aYf = aYa.Upgrades or 0
                        local aYg = aYa.YenSpent
                        local aYk = if aYg then 1 else 0
                        local aYi = 889 * aYk + 3863 * (1 - aYk)
                        local aYj = 1015 * aYk + 823 * (1 - aYk)
                        if not ((aYi * 2858 + aYj * 2168 + aYi * aYj) % 16777213 == 5643617) then
                            aYg = 0
                        end
                        aX8 = {
                            Result = uX,
                            Duration = aYe,
                            Placements = aYc_12,
                            Upgrades = aYf,
                            YenSpent = aYg,
                            Map = bCU_40(),
                            Units = {},
                            Gained = {}
                        }
                        if aYa_7 then
                            local aYc_13 = tonumber(aYa_7.TotalTime) or aX8.Duration
                            aX8.Duration = aYc_13
                            local aYc_14 = tonumber(aYa_7.TotalKills) or 0
                            aX8.Kills = aYc_14
                            local aYc_15 = tonumber(aYa_7.TotalDamage) or 0
                            aX8.Damage = aYc_15
                            local aYc_16 = tonumber(aYa_7.TotalYen) or 0
                            aX8.YenEarned = aYc_16
                            local aYc_17 = aYa_7.Difficulty and tostring(aYa_7.Difficulty)
                            local aYd_7 = aYc_17
                            local aYk_3 = if aYd_7 then 1 else 0
                            local aYi_3 = 3266 * aYk_3 + 2361 * (1 - aYk_3)
                            local aYj_3 = 1891 * aYk_3 + 3030 * (1 - aYk_3)
                            if not ((aYi_3 * 2119 + aYj_3 * 2685 + aYi_3 * aYj_3) % 16777213 == 1396782) then
                                aYd_7 = nil
                            end
                            aX8.Difficulty = aYd_7
                            local aYc_18 = aYa_7.ActName and tostring(aYa_7.ActName)
                            local aYd_8 = aYc_18
                            local aYk_4 = if aYd_8 then 1 else 0
                            local aYi_4 = 2872 * aYk_4 + 3965 * (1 - aYk_4)
                            local aYj_4 = 3889 * aYk_4 + 2579 * (1 - aYk_4)
                            if not ((aYi_4 * 2944 + aYj_4 * 3705 + aYi_4 * aYj_4) % 16777213 == 478695) then
                                aYd_8 = nil
                            end
                            aX8.Act = aYd_8
                            local aYc_19 = aYa_7.MapName
                            if aYc_19 then
                                local aYd_9 = bCU_95(tostring(aYa_7.MapName))
                                local aYe_2 = aYa_7.Gamemode or "?"
                                aYc_19 = aYd_9 .. " (" .. tostring(aYe_2) .. ")"
                            end
                            local aYd_10 = aYc_19 or aX8.Map
                            aX8.Map = aYd_10
                            if type(aYa_7.Rewards) == "table" then
                                for k, v in aYa_7.Rewards do
                                    local aYa_8 = type(v) == "table" and v.Asset
                                    if aYa_8 then
                                        local aYa_9 = tostring(v.Asset)
                                        local aYc_20 = aYb[aYa_9] or 0
                                        local aYd_11 = tonumber(v.Amount) or 1
                                        aYb[aYa_9] = aYc_20 + aYd_11
                                    end
                                end
                            end
                        else
                            pcall(function()
                                local u7 = aEN()
                                aX8.Kills = u7.Data.TotalKills
                                aX8.Damage = u7.Data.TotalDamage
                            end)
                        end
                        if type(aYa.Snapshot) == "table" then
                            for k, v in aD7() do
                                local aYa_10 = tonumber(v) or 0
                                local aYc_21 = tonumber(aYa.Snapshot[k]) or 0
                                local aYd_12 = aYa_10 - aYc_21
                                if aYd_12 > 0 then
                                    local max = math.max
                                    local aYc_22 = aYb[k] or 0
                                    aYb[k] = max(aYc_22, aYd_12)
                                end
                            end
                        end
                        for k, v in aYb do
                            table.insert(aX8.Gained, { Key = bCU_31(k), Delta = v })
                        end
                        table.sort(aX8.Gained, function(vq, vr)
                            return vq.Key < vr.Key
                        end)
                        aX8.Wave = aYa.PeakWave
                        aX8.MaxWave = aYa.MaxWave
                        pcall(function()
                            local aXU = bCU_69()
                            local max = math.max
                            local aXW = tonumber(aX8.Wave) or 0
                            local aXX = (tonumber(aXU.Wave))
                            local aX0 = if aXX then 1 else 0
                            local aXZ = 2610 * aX0 + 2092 * (1 - aX0)
                            local aX_ = 2720 * aX0 + 3990 * (1 - aX0)
                            if not ((aXZ * 3264 + aX_ * 2360 + aXZ * aX_) % 16777213 == 5260227) then
                                aXX = 0
                            end
                            aX8.Wave = max(aXW, aXX)
                            local aXV_2 = aX8.MaxWave or aXU.MaxWave
                            aX8.MaxWave = aXV_2
                        end)
                        local aYa_12 = aE1()
                        if #aYa_12 > 0 then
                            for k, v in aYa_12 do
                                local aX7
                                local aYE = v
                                aX7 = 0
                                pcall(function()
                                    local aX1 = tonumber(aYE.Replica.Data.Takedowns) or tonumber(aYE.Replica.Data.Kills)
                                    aX7 = aX1 or 0
                                end)
                                table.insert(aX8.Units, { Name = aYE.Asset, Level = aYE.Level, Takedowns = aX7 })
                            end
                        elseif type(aYa.Board) == "table" then
                            for k, v in aYa.Board do
                                table.insert(aX8.Units, v)
                            end
                        end
                        table.sort(aX8.Units, function(vH, vI)
                            return (vH.Takedowns or 0) > (vI.Takedowns or 0)
                        end)
                        return aX8
                    end
                    bCU_94 = fns.fn4051
                else
                    bCU_94 = function(uX)
                        local aX8
                        local aYa = bCU_74.Run or {}
                        local aYa_1 = fns.bCU_17()
                        local aYb = {}
                        local aYc = os.clock()
                        local aYd = aYa.Start or os.clock()
                        local aYe = aYc - aYd
                        local aYc_1 = aYa.Placements or 0
                        local aYf = aYa.Upgrades or 0
                        local aYg = aYa.YenSpent
                        local aYk = if aYg then 1 else 0
                        local aYi = 889 * aYk + 3863 * (1 - aYk)
                        local aYj = 1015 * aYk + 823 * (1 - aYk)
                        if not ((aYi * 2858 + aYj * 2168 + aYi * aYj) % 16777213 == 5643617) then
                            aYg = 0
                        end
                        aX8 = {
                            Result = uX,
                            Duration = aYe,
                            Placements = aYc_1,
                            Upgrades = aYf,
                            YenSpent = aYg,
                            Map = bCU_40(),
                            Units = {},
                            Gained = {}
                        }
                        if aYa_1 then
                            local aYc_2 = tonumber(aYa_1.TotalTime) or aX8.Duration
                            aX8.Duration = aYc_2
                            local aYc_3 = tonumber(aYa_1.TotalKills) or 0
                            aX8.Kills = aYc_3
                            local aYc_4 = tonumber(aYa_1.TotalDamage) or 0
                            aX8.Damage = aYc_4
                            local aYc_5 = tonumber(aYa_1.TotalYen) or 0
                            aX8.YenEarned = aYc_5
                            local aYc_6 = aYa_1.Difficulty and tostring(aYa_1.Difficulty)
                            local aYd_1 = aYc_6
                            local aYk_1 = if aYd_1 then 1 else 0
                            local aYi_1 = 3266 * aYk_1 + 2361 * (1 - aYk_1)
                            local aYj_1 = 1891 * aYk_1 + 3030 * (1 - aYk_1)
                            if not ((aYi_1 * 2119 + aYj_1 * 2685 + aYi_1 * aYj_1) % 16777213 == 1396782) then
                                aYd_1 = nil
                            end
                            aX8.Difficulty = aYd_1
                            local aYc_7 = aYa_1.ActName and tostring(aYa_1.ActName)
                            local aYd_2 = aYc_7
                            local aYk_2 = if aYd_2 then 1 else 0
                            local aYi_2 = 2872 * aYk_2 + 3965 * (1 - aYk_2)
                            local aYj_2 = 3889 * aYk_2 + 2579 * (1 - aYk_2)
                            if not ((aYi_2 * 2944 + aYj_2 * 3705 + aYi_2 * aYj_2) % 16777213 == 478695) then
                                aYd_2 = nil
                            end
                            aX8.Act = aYd_2
                            local aYc_8 = aYa_1.MapName
                            if aYc_8 then
                                local aYd_3 = bCU_95(tostring(aYa_1.MapName))
                                local aYe_1 = aYa_1.Gamemode or "?"
                                aYc_8 = aYd_3 .. " (" .. tostring(aYe_1) .. ")"
                            end
                            local aYd_4 = aYc_8 or aX8.Map
                            aX8.Map = aYd_4
                            if type(aYa_1.Rewards) == "table" then
                                for k, v in aYa_1.Rewards do
                                    local aYa_2 = type(v) == "table" and v.Asset
                                    if aYa_2 then
                                        local aYa_3 = tostring(v.Asset)
                                        local aYc_9 = aYb[aYa_3] or 0
                                        local aYd_5 = tonumber(v.Amount) or 1
                                        aYb[aYa_3] = aYc_9 + aYd_5
                                    end
                                end
                            end
                        else
                            pcall(function()
                                local u7 = aEN()
                                aX8.Kills = u7.Data.TotalKills
                                aX8.Damage = u7.Data.TotalDamage
                            end)
                        end
                        if type(aYa.Snapshot) == "table" then
                            for k, v in aD7() do
                                local aYa_4 = tonumber(v) or 0
                                local aYc_10 = tonumber(aYa.Snapshot[k]) or 0
                                local aYd_6 = aYa_4 - aYc_10
                                if aYd_6 > 0 then
                                    local max = math.max
                                    local aYc_11 = aYb[k] or 0
                                    aYb[k] = max(aYc_11, aYd_6)
                                end
                            end
                        end
                        for k, v in aYb do
                            table.insert(aX8.Gained, { Key = bCU_31(k), Delta = v })
                        end
                        table.sort(aX8.Gained, function(vq, vr)
                            return vq.Key < vr.Key
                        end)
                        aX8.Wave = aYa.PeakWave
                        aX8.MaxWave = aYa.MaxWave
                        pcall(function()
                            local aXU = bCU_69()
                            local max = math.max
                            local aXW = tonumber(aX8.Wave) or 0
                            local aXX = (tonumber(aXU.Wave))
                            local aX0 = if aXX then 1 else 0
                            local aXZ = 2610 * aX0 + 2092 * (1 - aX0)
                            local aX_ = 2720 * aX0 + 3990 * (1 - aX0)
                            if not ((aXZ * 3264 + aX_ * 2360 + aXZ * aX_) % 16777213 == 5260227) then
                                aXX = 0
                            end
                            aX8.Wave = max(aXW, aXX)
                            local aXV_1 = aX8.MaxWave or aXU.MaxWave
                            aX8.MaxWave = aXV_1
                        end)
                        local aYa_6 = aE1()
                        if #aYa_6 > 0 then
                            for k, v in aYa_6 do
                                local aX7
                                local aYE = v
                                aX7 = 0
                                pcall(function()
                                    local aX1 = tonumber(aYE.Replica.Data.Takedowns) or tonumber(aYE.Replica.Data.Kills)
                                    aX7 = aX1 or 0
                                end)
                                table.insert(aX8.Units, { Name = aYE.Asset, Level = aYE.Level, Takedowns = aX7 })
                            end
                        elseif type(aYa.Board) == "table" then
                            for k, v in aYa.Board do
                                table.insert(aX8.Units, v)
                            end
                        end
                        table.sort(aX8.Units, function(vH, vI)
                            return (vH.Takedowns or 0) > (vI.Takedowns or 0)
                        end)
                        return aX8
                    end
                    fns.worker = fns.fn4051
                end
                bCU_115 = (bCU_115 + 24) % 40
            else
                bCU_73 = (vector.create((bCU_115 * 1 + 1) % 11 + 1, (bCU_115 * 1 + 12) % 13 + 1, (bCU_115 * 5 + 8) % 17 + 1))
                bCU_56 = (vector.create((bCU_115 * 7 + 7) % 11 + 1, (bCU_115 * 7 + 4) % 13 + 1, (bCU_115 * 7 + 9) % 17 + 1))
                bCU_38 = (vector.create((bCU_115 * 4 + 7) % 11 + 1, (bCU_115 * 8 + 10) % 13 + 1, (bCU_115 * 15 + 9) % 17 + 1))
                fns.bCU_24 = (vector.create((bCU_115 * 6 + 4) % 11 + 1, (bCU_115 * 4 + 6) % 13 + 1, (bCU_115 * 8 + 11) % 17 + 1))
                if vector.dot(vector.cross(bCU_73, bCU_56), (vector.cross(bCU_38, fns.bCU_24))) == vector.dot(bCU_73, bCU_38) * vector.dot(bCU_56, fns.bCU_24) - vector.dot(bCU_73, fns.bCU_24) * vector.dot(bCU_56, bCU_38) then
                    fns.bCU_21.ReportFinishedRun = fns.fn532
                    fns.bCU_21.CARD_SETS = { "Buff", "DOT", "Economy", "Elemental", "FollowUp", "Payload", "Summon" }
                    pcall(fns.fn372)
                    pcall(fns.fn3997)
                else
                    fns.bCU_21.ReportFinishedRun = fns.fn532
                    fns.bCU_21.CARD_SETS = { "Economy", "Elemental", "FollowUp", "Buff", "Summon", "DOT", "Payload" }
                    pcall(fns.fn372)
                    pcall(fns.fn3997)
                end
                bCU_115 = (bCU_115 + 29) % 40
            end
        else
            bCU_73 = (vector.create((bCU_115 * 2 + 7) % 11 + 1, (bCU_115 * 2 + 8) % 13 + 1, (bCU_115 * 7 + 15) % 17 + 1))
            bCU_56 = (vector.create((bCU_115 * 3 + 4) % 11 + 1, (bCU_115 * 3 + 6) % 13 + 1, (bCU_115 * 12 + 17) % 17 + 1))
            local bIL = vector.dot(bCU_73, bCU_56)
            if bIL * bIL >= vector.dot(bCU_73, bCU_73) * vector.dot(bCU_56, bCU_56) + 1 then
                fns.bCU_21 = aEW
                aDZ.PostWebhook = fns.fn571
                bCU_129 = fns.fn412
            else
                aDZ = bCU_129
                fns.bCU_21.PostWebhook = fns.fn571
                aEW = fns.fn412
            end
            bCU_115 = (bCU_115 + 29) % 40
        end
    elseif bCU_108 <= 4 then
        bCU_108 = (vector.create((bCU_115 * 3 + 3) % 11 + 1, (bCU_115 * 5 + 12) % 13 + 1, (bCU_115 * 7 + 9) % 17 + 1))
        bCU_73 = (vector.create((bCU_115 * 4 + 1) % 11 + 1, (bCU_115 * 7 + 5) % 13 + 1, (bCU_115 * 2 + 13) % 17 + 1))
        local bHW = vector.cross(bCU_108, bCU_73)
        local bHX = vector.dot(bCU_108, bCU_73)
        if vector.dot(bHW, bHW) + bHX * bHX == vector.dot(bCU_108, bCU_108) * vector.dot(bCU_73, bCU_73) then
            aEm = fns.fn365
            aD7 = function()
                local uh
                local ug
                ug = {}
                uh = aGi()
                pcall(function()
                    for k, v in uh.ItemData do
                        local aXs = type(v) == "table" and v.Amount
                        if aXs then
                            local aXs_2 = tostring(k)
                            local aXt = tonumber(v.Amount) or 0
                            ug[aXs_2] = aXt
                        end
                    end
                end)
                return ug
            end
            pcall(fns.fn2506)
            fns.bCU_17 = function()
                local aXB
                if not fns.bCU_21.ResultScope then
                    return nil
                end
                aXB = nil
                pcall(function()
                    aXB = aFE(fns.bCU_21.ResultScope:GetState("ResultData"))
                end)
                local aXC = type(aXB) == "table" and aXB
                return aXC or nil
            end
            aEY = fns.fn2122
            fns.bCU_21.RoundConcluded = fns.fn1919
            pcall(fns.fn3650)
            bCU_31 = fns.fn4608
        else
            aD7 = fns.fn365
            bCU_31 = function()
                local uh
                local ug
                ug = {}
                uh = aGi()
                pcall(function()
                    for k, v in uh.ItemData do
                        local aXs = type(v) == "table" and v.Amount
                        if aXs then
                            local aXs_1 = tostring(k)
                            local aXt = tonumber(v.Amount) or 0
                            ug[aXs_1] = aXt
                        end
                    end
                end)
                return ug
            end
            pcall(fns.fn2506)
            aEY = function()
                local aXB
                if not fns.bCU_21.ResultScope then
                    return nil
                end
                aXB = nil
                pcall(function()
                    aXB = aFE(fns.bCU_21.ResultScope:GetState("ResultData"))
                end)
                local aXC = type(aXB) == "table" and aXB
                return aXC or nil
            end
            fns.bCU_17 = fns.fn2122
            aEm.RoundConcluded = fns.fn1919
            pcall(fns.fn3650)
            fns.bCU_21 = fns.fn4608
        end
        bCU_115 = (bCU_115 + 29) % 40
    else
        if (not bCU_31 or not bCU_115 or (bCU_31 or fns.worker) or (not bCU_31 or not fns.worker) and (fns.worker or not bCU_31)) and (fns.worker and not bCU_115 and (fns.bCU_17 and not fns.bCU_17) or (bCU_115 or bCU_115 or fns.bCU_17 and bCU_115)) or not ((not bCU_31 or not bCU_115 or (bCU_31 or fns.worker) or (not bCU_31 or not fns.worker) and (fns.worker or not bCU_31)) and (fns.worker and not bCU_115 and (fns.bCU_17 and not fns.bCU_17) or (bCU_115 or bCU_115 or fns.bCU_17 and bCU_115))) then
            aFk = fns.fn3645
        else
            aD7 = fns.fn3645
        end
        bCU_115 = (bCU_115 + 39) % 40
    end
until (bCU_115 * 3 + 8) % 40 == 20
bCU_129 = fns.bCU_21.ExpeditionInfo and fns.bCU_21.ExpeditionInfo.GameUpgrades
if bCU_129 then
    bCU_115 = 7
    repeat
        if (((not bCU_115 or bCU_115) and (not bCU_115 or not bCU_115) or (not bCU_115 or not bCU_115) and (bCU_115 or not bCU_115)) and ((bCU_115 or not bCU_115) and (bCU_115 and not bCU_115) and ((bCU_115 or not bCU_115) and (bCU_115 or bCU_115))) or (not bCU_115 and bCU_115 or bCU_115 and bCU_115 or (not bCU_115 or bCU_115) and (bCU_115 and not bCU_115)) and ((bCU_115 or bCU_115) and (not bCU_115 or bCU_115) or not bCU_115 and not bCU_115 and (bCU_115 and bCU_115))) and not (((not bCU_115 or bCU_115) and (not bCU_115 or not bCU_115) or (not bCU_115 or not bCU_115) and (bCU_115 or not bCU_115)) and ((bCU_115 or not bCU_115) and (bCU_115 and not bCU_115) and ((bCU_115 or not bCU_115) and (bCU_115 or bCU_115))) or (not bCU_115 and bCU_115 or bCU_115 and bCU_115 or (not bCU_115 or bCU_115) and (bCU_115 and not bCU_115)) and ((bCU_115 or bCU_115) and (not bCU_115 or bCU_115) or not bCU_115 and not bCU_115 and (bCU_115 and bCU_115))) then
            fns.bCU_21 = bCU_129.ExpeditionInfo.GameUpgrades.AllowedCards
        else
            bCU_129 = fns.bCU_21.ExpeditionInfo.GameUpgrades.AllowedCards
        end
        bCU_115 = (bCU_115 + 1) % 8
    until (bCU_115 * 1 + 7) % 8 == 7
end
bCU_108 = {}
bCU_115 = bCU_129 or bCU_108
bCU_72, aEM, aD8, aGz, aFn, aGl, bCU_70 = nil, nil, nil, nil, nil, nil, nil
bCU_129 = 5
repeat
    bCU_108 = (bCU_129 * 4 + 1) % 5 + 1
    if bCU_108 <= 3 then
        if bCU_108 <= 2 then
            if bCU_108 <= 1 then
                bCU_73 = (vector.create((bCU_129 * 1 + 7) % 11 + 1, (bCU_129 * 1 + 7) % 13 + 1, (bCU_129 * 8 + 5) % 17 + 1))
                bCU_56 = (vector.create((bCU_129 * 6 + 6) % 11 + 1, (bCU_129 * 8 + 11) % 13 + 1, (bCU_129 * 7 + 9) % 17 + 1))
                local bHw = vector.cross(bCU_73, bCU_56)
                local bHx = vector.dot(bCU_73, bCU_56)
                if vector.dot(bHw, bHw) + bHx * bHx == vector.dot(bCU_73, bCU_73) * vector.dot(bCU_56, bCU_56) then
                    fns.bCU_21.ExpeditionRouteSignature = fns.fn3614
                    fns.bCU_21.ExpeditionRestartReason = fns.fn2656
                    fns.bCU_21.ScoreCard = fns.fn1851
                    fns.bCU_21.HasCardResponse = fns.fn1583
                    fns.bCU_21.CardPrompt = function()
                        local a41_4, a41_5, a41_6
                        local a40_4, a40_5, a40_6
                        local a4__4, a4__5, a4__6
                        local function a4Z(DF)
                            local a4T_2
                            local a4S_4
                            a4S_4, a4T_2 = pcall(function()
                                return DF.Data
                            end)
                            local a4U = not a4S_4 or type(a4T_2) ~= "table"
                            if a4U then
                                return nil
                            end
                            local a4S_5 = type(a4T_2.Parameters) == "table" and a4T_2.Parameters
                            local a4V = a4S_5 or {}
                            local a4U_5 = type(a4V.Cards) == "table" and a4V.Cards
                            local a4V_3 = a4U_5 or a4T_2.Cards
                            local a4V_4 = type(a4V_3) ~= "table" or #a4V_3 == 0 or a4T_2.Result ~= nil or fns.bCU_21.HasCardResponse(a4T_2)
                            if not a4V_4 then
                                local a4W = a4V.EndTime
                                if a4W then
                                    local a4X = tonumber(a4V.EndTime) or 0
                                    a4W = a4X <= workspace:GetServerTimeNow()
                                end
                                a4V_4 = a4W
                            end
                            if a4V_4 then
                                return nil
                            end
                            return a4V_3, a4V, a4T_2
                        end
                        if fns.bCU_21.LiveCardPrompt then
                            a40_4, a4__4, a41_4 = a4Z(fns.bCU_21.LiveCardPrompt)
                            if a40_4 then
                                return fns.bCU_21.LiveCardPrompt, a40_4, a4__4, a41_4
                            end
                            fns.bCU_21.LiveCardPrompt = nil
                            if type(aD6) ~= "table" then
                                return nil
                            end
                            for k, v in aD6 do
                                if aDR(v) == "CardSelectionPrompt" then
                                    a40_5, a4__5, a41_5 = a4Z(v)
                                    if a40_5 then
                                        fns.bCU_21.LiveCardPrompt = v
                                        return v, a40_5, a4__5, a41_5
                                    end
                                end
                            end
                            return nil
                        elseif type(aD6) ~= "table" then
                            return nil
                        else
                            for k, v in aD6 do
                                if aDR(v) == "CardSelectionPrompt" then
                                    a40_6, a4__6, a41_6 = a4Z(v)
                                    if a40_6 then
                                        fns.bCU_21.LiveCardPrompt = v
                                        return v, a40_6, a4__6, a41_6
                                    end
                                end
                            end
                            return nil
                        end
                    end
                    aD_.OuroborosAeCardPrompt = fns.fn1886
                else
                    aD_.ExpeditionRouteSignature = fns.fn3614
                    aD_.ExpeditionRestartReason = fns.fn2656
                    aD_.ScoreCard = fns.fn1851
                    aD_.HasCardResponse = fns.fn1583
                    aD_.CardPrompt = function()
                        local a41_1, a41_2, a41_3
                        local a40_1, a40_2, a40_3
                        local a4__1, a4__2, a4__3
                        local function a4Z(DF)
                            local a4T_1
                            local a4S_1
                            a4S_1, a4T_1 = pcall(function()
                                return DF.Data
                            end)
                            local a4U = not a4S_1 or type(a4T_1) ~= "table"
                            if a4U then
                                return nil
                            end
                            local a4S_2 = type(a4T_1.Parameters) == "table" and a4T_1.Parameters
                            local a4V = a4S_2 or {}
                            local a4U_2 = type(a4V.Cards) == "table" and a4V.Cards
                            local a4V_1 = a4U_2 or a4T_1.Cards
                            local a4V_2 = type(a4V_1) ~= "table" or #a4V_1 == 0 or a4T_1.Result ~= nil or fns.bCU_21.HasCardResponse(a4T_1)
                            if not a4V_2 then
                                local a4W = a4V.EndTime
                                if a4W then
                                    local a4X = tonumber(a4V.EndTime) or 0
                                    a4W = a4X <= workspace:GetServerTimeNow()
                                end
                                a4V_2 = a4W
                            end
                            if a4V_2 then
                                return nil
                            end
                            return a4V_1, a4V, a4T_1
                        end
                        if fns.bCU_21.LiveCardPrompt then
                            a40_1, a4__1, a41_1 = a4Z(fns.bCU_21.LiveCardPrompt)
                            if a40_1 then
                                return fns.bCU_21.LiveCardPrompt, a40_1, a4__1, a41_1
                            end
                            fns.bCU_21.LiveCardPrompt = nil
                            if type(aD6) ~= "table" then
                                return nil
                            end
                            for k, v in aD6 do
                                if aDR(v) == "CardSelectionPrompt" then
                                    a40_2, a4__2, a41_2 = a4Z(v)
                                    if a40_2 then
                                        fns.bCU_21.LiveCardPrompt = v
                                        return v, a40_2, a4__2, a41_2
                                    end
                                end
                            end
                            return nil
                        elseif type(aD6) ~= "table" then
                            return nil
                        else
                            for k, v in aD6 do
                                if aDR(v) == "CardSelectionPrompt" then
                                    a40_3, a4__3, a41_3 = a4Z(v)
                                    if a40_3 then
                                        fns.bCU_21.LiveCardPrompt = v
                                        return v, a40_3, a4__3, a41_3
                                    end
                                end
                            end
                            return nil
                        end
                    end
                    fns.bCU_21.OuroborosAeCardPrompt = fns.fn1886
                end
                bCU_129 = (bCU_129 + 9) % 20
            else
                bCU_73 = {
                    "kxbucwk",
                    "bavou",
                    "hdele",
                    "ryfvq",
                    "kdaxzsre",
                    "bzd",
                    "lvdwatf",
                    "gdthzihwz",
                    "cld",
                    "ygpe",
                    "ydcj"
                }
                local bMb = bCU_129
                bCU_56 = bCU_73[bMb % 11 + 1]
                if bCU_56:len() >= bCU_56:reverse():rep(bMb % 3 + 2):len() then
                    fns.bCU_21.EXPEDITION_CARDS = bCU_72
                    bCU_115.EXPEDITION_RESOURCE_KEYS = { Timber = "ExpeditionMaterial1" }
                    bCU_115.EXPEDITION_RESTART_DEFAULTS = { EquipmentLock = 1, EquipmentReroll = 3, Timber = 30 }
                    bCU_115.EXPEDITION_REWARDS = {
                        "EquipmentLock",
                        "EquipmentReroll",
                        "PlayerEXP",
                        "EquipmentScrap",
                        "Any",
                        "ExpeditionFuel",
                        "Timber",
                        "ExpeditionCoin",
                        "ExpeditionTome",
                        "Yen"
                    }
                    fns.bCU_21 = function()
                        local wn
                        local wm
                        wm = bCU_67("MapData")
                        wn = nil
                        pcall(function()
                            wn = tostring(wm.Data.Parameters.Gamemode)
                        end)
                        return wn == "Expedition"
                    end
                else
                    fns.bCU_21.EXPEDITION_CARDS = bCU_115
                    fns.bCU_21.EXPEDITION_RESOURCE_KEYS = { Timber = "ExpeditionMaterial1" }
                    fns.bCU_21.EXPEDITION_RESTART_DEFAULTS = { EquipmentLock = 1, EquipmentReroll = 3, Timber = 30 }
                    fns.bCU_21.EXPEDITION_REWARDS = {
                        "Any",
                        "EquipmentLock",
                        "EquipmentReroll",
                        "EquipmentScrap",
                        "ExpeditionCoin",
                        "ExpeditionFuel",
                        "ExpeditionTome",
                        "PlayerEXP",
                        "Timber",
                        "Yen"
                    }
                    bCU_72 = function()
                        local wn
                        local wm
                        wm = bCU_67("MapData")
                        wn = nil
                        pcall(function()
                            wn = tostring(wm.Data.Parameters.Gamemode)
                        end)
                        return wn == "Expedition"
                    end
                end
                bCU_129 = (bCU_129 + 14) % 20
            end
        else
            if (bCU_129 * 3 + 2) * 21 % 4 == ((bCU_129 * 3 + 2) * 21 + 13) % 4 then
                aD8 = fns.fn4675
                aEM = function(ww, ...)
                    local aZB
                    local aZA
                    aZA = nil
                    aZB = nil
                    aZB = bCU_67("GameState")
                    local aZC = not aZB or not bCU_72()
                    if aZC then
                        return false
                    end
                    aZA = table.pack(...)
                    return (pcall(function()
                        aZB:FireServer(ww, table.unpack(aZA, 1, aZA.n))
                    end))
                end
            else
                aEM = fns.fn4675
                aD8 = function(ww, ...)
                    local aZB
                    local aZA
                    aZA = nil
                    aZB = nil
                    aZB = bCU_67("GameState")
                    local aZC = not aZB or not bCU_72()
                    if aZC then
                        return false
                    end
                    aZA = table.pack(...)
                    return (pcall(function()
                        aZB:FireServer(ww, table.unpack(aZA, 1, aZA.n))
                    end))
                end
            end
            bCU_129 = (bCU_129 + 14) % 20
        end
    elseif bCU_108 <= 4 then
        bCU_108 = (vector.create((bCU_129 * 3 + 1) % 11 + 1, (bCU_129 * 9 + 8) % 13 + 1, (bCU_129 * 12 + 4) % 17 + 1))
        local bIm = vector.floor(bCU_108) + vector.ceil(bCU_108 * -1)
        if vector.dot(bIm, bIm) == 0 then
            fns.bCU_21.ExpeditionShopReplica = function()
                local wF
                pcall(function()
                    wF = aFw.GET_SHOP_REPLICA:InvokeSelf("CheckpointShop")
                end)
                return wF
            end
            fns.bCU_21.ExpeditionShopItems = function()
                local aZE
                local Items
                aZE = nil
                Items = nil
                aZE = fns.bCU_21.ExpeditionShopReplica()
                Items = nil
                pcall(function()
                    Items = aZE.Data.Shops.Payload.Items
                end)
                local aZG = type(Items) == "table" and Items
                return aZE, aZG or nil
            end
            fns.bCU_21.ExpeditionAnvilStats = fns.fn3222
            fns.bCU_21.AnvilPriority = fns.fn1082
            fns.bCU_21.HasAnvilPriority = fns.fn1975
            fns.bCU_21.ExpeditionHelperLabel = fns.fn4173
            fns.bCU_21.ExpeditionHelperAssets = fns.fn2166
            fns.bCU_21.AllExpeditionShopItems = fns.fn3451
            fns.bCU_21.AllExpeditionTraits = fns.fn3968
            fns.bCU_21.RefreshExpeditionLists = fns.fn3765
            fns.bCU_21.BuyCheckpointItem = function(xX, xY)
                local FusionActions
                FusionActions = nil
                FusionActions = fns.bCU_21.FusionActions
                local a0j = not FusionActions or type(FusionActions.ShopPurchaseItem) ~= "function"
                if a0j then
                    return false
                end
                return pcall(function()
                    FusionActions.ShopPurchaseItem("CheckpointShop", "Payload", xY)
                end)
            end
            fns.bCU_21.UseExpeditionHotbarItem = function()
                local a0M = os.clock()
                local a0N = bCU_74.NextExpItemUse
                local a0X = if a0N then 1 else 0
                local a0V = 2276 * a0X + 3471 * (1 - a0X)
                local a0W = 2600 * a0X + 644 * (1 - a0X)
                if not ((a0V * 1281 + a0W * 942 + a0V * a0W) % 16777213 == 11282356) then
                    a0N = 0
                end
                if a0M < a0N then
                    return false
                end
                local a0M_5 = aFz()
                local a0N_4 = not a0M_5 or type(a0M_5.Slots) ~= "table"
                if a0N_4 then
                    return false
                end
                local a0P = Options.ExpTomeTraits and Options.ExpTomeTraits.Value or {}
                for k, v in a0M_5.Slots do
                    local a00 = k
                    local a0M_6 = type(v) == "table" and type(v.Data) == "table" and v.Data
                    local a0P_5 = a0M_6 or {}
                    local a0P_6 = v.Asset or a0P_5.Asset or v.Name or ""
                    local a0O_6 = tostring(a0P_6)
                    local a0P_7 = string.lower(a0O_6)
                    local a0Q = a0P_5.Trait and tostring(a0P_5.Trait)
                    local a0Q_3 = a0P_5.Stat and tostring(a0P_5.Stat)
                    local a0Q_4 = Toggles.ExpAutoApplyTomes.Value and a0P_7:find("tome", 1, true) ~= nil
                    if a0Q_4 then
                        local a0S_3 = not a0Q
                        if not a0S_3 then
                            local a0T_3 = type(a0P) == "table" and a0P[a0Q] == true
                            a0S_3 = a0T_3
                        end
                        a0Q_4 = a0S_3
                    end
                    if not a0Q_4 then
                        local a0S_4 = Toggles.ExpAutoStatAnvil.Value and a0P_7:find("anvil", 1, true) ~= nil
                        if a0S_4 then
                            local a0P_8 = not a0Q_3
                            if a0P_8 ~= false then
                                a0P_8 = fns.bCU_21.HasAnvilPriority()
                            end
                            local a0T_4 = a0P_8 or fns.bCU_21.AnvilPriority(a0Q_3) > 0
                            a0S_4 = a0T_4
                        end
                        a0Q_4 = a0S_4
                    end
                    if a0Q_4 then
                        bCU_74.NextExpItemUse = os.clock() + 0.75
                        bCU_74.Status = "Using " .. bCU_95(a0O_6)
                        pcall(function()
                            local SELECT_HOTBAR_SLOT = aFw.SELECT_HOTBAR_SLOT
                            local a0m = tonumber(a00) or a00
                            SELECT_HOTBAR_SLOT:FireSelf(a0m)
                        end)
                        task.spawn(function()
                            task.wait(0.05)
                            pcall(function()
                                local a0A = aE1()
                                local a0x
                                for k, v in a0A do
                                    if not v.IsFarm then
                                        a0x = v
                                        break
                                    end
                                end
                                a0x = a0x or a0A[1]
                                if a0x then
                                    if a0x.Id then
                                        pcall(function()
                                            aFw.SELECT_SLOT_FROM_UNIT_ID:FireSelf(a0x.Id)
                                        end)
                                    end
                                    if a0x.Replica and a0x.Replica.Data then
                                        local a0A_4 = a0x.Replica.Data.Model
                                        local a0L = if a0A_4 then 1 else 0
                                        local a0J = 2552 * a0L + 399 * (1 - a0L)
                                        local a0K = 3658 * a0L + 4082 * (1 - a0L)
                                        if not ((a0J * 1001 + a0K * 1382 + a0J * a0K) % 16777213 == 167911) then
                                            a0A_4 = a0x.Replica.Data.UnitModel
                                        end
                                        local a0y = a0A_4
                                        if a0y then
                                            pcall(function()
                                                aFw.SELECTED_INSTANCE:Set(a0y)
                                                aFw.INSTANCE_CLICKED:FireSelf(a0y)
                                            end)
                                        end
                                    end
                                    local a0z = aEN()
                                    if a0z then
                                        pcall(function()
                                            local a0o = tonumber(a00) or a00
                                            a0z:FireServer("UseItem", a0o, a0x.Id)
                                        end)
                                        pcall(function()
                                            local a0q = tonumber(a00) or a00
                                            a0z:FireServer("UseGameItem", a0q, a0x.Id)
                                        end)
                                        pcall(function()
                                            local a0s = (tonumber(a00))
                                            local a0w = if a0s then 1 else 0
                                            local a0u = 2421 * a0w + 1947 * (1 - a0w)
                                            local a0v = 1624 * a0w + 3534 * (1 - a0w)
                                            if not ((a0u * 1922 + a0v * 3923 + a0u * a0v) % 16777213 == 14955818) then
                                                a0s = a00
                                            end
                                            a0z:FireServer("ApplyItem", a0s, a0x.Id)
                                        end)
                                    end
                                end
                            end)
                        end)
                        return true
                    end
                end
                return false
            end
            fns.bCU_21.CheckpointStep = fns.fn3276
            fns.bCU_21.LeaveExpeditionCheckpoint = function(Ai, Aj)
                local Actions
                local a1B = os.clock()
                local a1B_10
                if a1B < (bCU_74.NextCheckpointLeave or 0) then
                    return false
                end
                bCU_74.NextCheckpointLeave = os.clock() + 1.5
                Actions = nil
                pcall(function()
                    Actions = require(aGn.FusionPackage.Actions)
                end)
                local a1B_6 = Actions and type(Actions.Expedition_CloseCheckpointShop) == "function"
                if a1B_6 then
                    pcall(Actions.Expedition_CloseCheckpointShop)
                end
                local a1B_7 = type(Ai.NodeQueue) ~= "table" or #Ai.NodeQueue == 0
                if a1B_7 then
                    if Aj then
                        local a1C_2 = Actions and type(Actions.Expedition_SetNodeQueue) == "function"
                        if a1C_2 then
                            pcall(Actions.Expedition_SetNodeQueue, Aj)
                        else
                            aD8("SetNodeQueue", Aj)
                        end
                        bCU_74.Status = "Selecting next expedition node"
                        return true
                    end
                    bCU_74.Status = "Leaving checkpoint"
                    if a1B_10 then
                        return pcall(Actions.Expedition_Continue)
                    end
                    return aD8("Continue")
                end
                bCU_74.Status = "Leaving checkpoint"
                a1B_10 = Actions and type(Actions.Expedition_Continue) == "function"
                if a1B_10 then
                    return pcall(Actions.Expedition_Continue)
                end
                return aD8("Continue")
            end
            fns.bCU_21.CollectNearestOrb = function(Au)
                local a1M, CFrame2, a1O, a1P
                local a1Q = bCU_74.Placing or bCU_74.OrbCollecting or type(Au.RewardPickups) ~= "table"
                local a1Q_5
                if a1Q then
                    return
                end
                local Character = aFK.Character
                local a1R = Character and Character:FindFirstChild("HumanoidRootPart")
                a1M = a1R
                if not a1M then
                    return
                end
                a1O, a1Q_5 = nil, nil
                for k, v in Au.RewardPickups do
                    local a1R_5 = v and v.Position
                    local a1S = v
                    if a1S then
                        a1S = v.Duration
                    end
                    local a1R_6 = tonumber(a1S)
                    local a1S_3 = typeof(a1R_5) == "Vector3" and (not a1R_6 or a1R_6 > 0)
                    if a1S_3 then
                        local Magnitude = (a1M.Position - a1R_5).Magnitude
                        if not a1Q_5 or Magnitude < a1Q_5 then
                            a1O, a1Q_5 = v, Magnitude
                        end
                    end
                end
                if not a1O then
                    return
                end
                CFrame2 = a1M.CFrame
                local max = math.max
                local a1R_8 = (tonumber(a1O.Range))
                local a13 = if a1R_8 then 1 else 0
                local a11 = 180 * a13 + 3137 * (1 - a13)
                local a12 = 2128 * a13 + 2334 * (1 - a13)
                if not ((a11 * 1955 + a12 * 1100 + a11 * a12) % 16777213 == 3075740) then
                    a1R_8 = 9
                end
                a1P = max(a1R_8, 1)
                bCU_74.OrbCollecting = true
                pcall(function()
                    a1M.CFrame = CFrame.new(a1O.Position + Vector3.new(0, math.min(a1P * 0.25, 2), 0))
                    task.wait(0.2)
                    if a1M.Parent and not bCU_74.Placing then
                        a1M.CFrame = CFrame2
                    end
                end)
                bCU_74.OrbCollecting = false
            end
            fns.bCU_21.ExpeditionAnchor = fns.fn2525
            aGz = fns.fn2625
            aFn = fns.fn869
        else
            aFn.ExpeditionShopReplica = function()
                local wF
                pcall(function()
                    wF = aFw.GET_SHOP_REPLICA:InvokeSelf("CheckpointShop")
                end)
                return wF
            end
            aFn.ExpeditionShopItems = function()
                local aZE
                local Items
                aZE = nil
                Items = nil
                aZE = fns.bCU_21.ExpeditionShopReplica()
                Items = nil
                pcall(function()
                    Items = aZE.Data.Shops.Payload.Items
                end)
                local aZG = type(Items) == "table" and Items
                return aZE, aZG or nil
            end
            aFn.ExpeditionAnvilStats = fns.fn3222
            aFn.AnvilPriority = fns.fn1082
            aFn.HasAnvilPriority = fns.fn1975
            aFn.ExpeditionHelperLabel = fns.fn4173
            aFn.ExpeditionHelperAssets = fns.fn2166
            aFn.AllExpeditionShopItems = fns.fn3451
            aFn.AllExpeditionTraits = fns.fn3968
            aFn.RefreshExpeditionLists = fns.fn3765
            aFn.BuyCheckpointItem = function(xX, xY)
                local FusionActions
                FusionActions = nil
                FusionActions = fns.bCU_21.FusionActions
                local a0j = not FusionActions or type(FusionActions.ShopPurchaseItem) ~= "function"
                if a0j then
                    return false
                end
                return pcall(function()
                    FusionActions.ShopPurchaseItem("CheckpointShop", "Payload", xY)
                end)
            end
            aFn.UseExpeditionHotbarItem = function()
                local a0M = os.clock()
                local a0N = bCU_74.NextExpItemUse
                local a0X = if a0N then 1 else 0
                local a0V = 2276 * a0X + 3471 * (1 - a0X)
                local a0W = 2600 * a0X + 644 * (1 - a0X)
                if not ((a0V * 1281 + a0W * 942 + a0V * a0W) % 16777213 == 11282356) then
                    a0N = 0
                end
                if a0M < a0N then
                    return false
                end
                local a0M_1 = aFz()
                local a0N_1 = not a0M_1 or type(a0M_1.Slots) ~= "table"
                if a0N_1 then
                    return false
                end
                local a0P = Options.ExpTomeTraits and Options.ExpTomeTraits.Value or {}
                for k, v in a0M_1.Slots do
                    local a00 = k
                    local a0M_2 = type(v) == "table" and type(v.Data) == "table" and v.Data
                    local a0P_1 = a0M_2 or {}
                    local a0P_2 = v.Asset or a0P_1.Asset or v.Name or ""
                    local a0O_3 = tostring(a0P_2)
                    local a0P_3 = string.lower(a0O_3)
                    local a0Q = a0P_1.Trait and tostring(a0P_1.Trait)
                    local a0Q_1 = a0P_1.Stat and tostring(a0P_1.Stat)
                    local a0Q_2 = Toggles.ExpAutoApplyTomes.Value and a0P_3:find("tome", 1, true) ~= nil
                    if a0Q_2 then
                        local a0S_1 = not a0Q
                        if not a0S_1 then
                            local a0T_1 = type(a0P) == "table" and a0P[a0Q] == true
                            a0S_1 = a0T_1
                        end
                        a0Q_2 = a0S_1
                    end
                    if not a0Q_2 then
                        local a0S_2 = Toggles.ExpAutoStatAnvil.Value and a0P_3:find("anvil", 1, true) ~= nil
                        if a0S_2 then
                            local a0P_4 = not a0Q_1
                            if a0P_4 ~= false then
                                a0P_4 = fns.bCU_21.HasAnvilPriority()
                            end
                            local a0T_2 = a0P_4 or fns.bCU_21.AnvilPriority(a0Q_1) > 0
                            a0S_2 = a0T_2
                        end
                        a0Q_2 = a0S_2
                    end
                    if a0Q_2 then
                        bCU_74.NextExpItemUse = os.clock() + 0.75
                        bCU_74.Status = "Using " .. bCU_95(a0O_3)
                        pcall(function()
                            local SELECT_HOTBAR_SLOT = aFw.SELECT_HOTBAR_SLOT
                            local a0m = tonumber(a00) or a00
                            SELECT_HOTBAR_SLOT:FireSelf(a0m)
                        end)
                        task.spawn(function()
                            task.wait(0.05)
                            pcall(function()
                                local a0A = aE1()
                                local a0x
                                for k, v in a0A do
                                    if not v.IsFarm then
                                        a0x = v
                                        break
                                    end
                                end
                                a0x = a0x or a0A[1]
                                if a0x then
                                    if a0x.Id then
                                        pcall(function()
                                            aFw.SELECT_SLOT_FROM_UNIT_ID:FireSelf(a0x.Id)
                                        end)
                                    end
                                    if a0x.Replica and a0x.Replica.Data then
                                        local a0A_2 = a0x.Replica.Data.Model
                                        local a0L = if a0A_2 then 1 else 0
                                        local a0J = 2552 * a0L + 399 * (1 - a0L)
                                        local a0K = 3658 * a0L + 4082 * (1 - a0L)
                                        if not ((a0J * 1001 + a0K * 1382 + a0J * a0K) % 16777213 == 167911) then
                                            a0A_2 = a0x.Replica.Data.UnitModel
                                        end
                                        local a0y = a0A_2
                                        if a0y then
                                            pcall(function()
                                                aFw.SELECTED_INSTANCE:Set(a0y)
                                                aFw.INSTANCE_CLICKED:FireSelf(a0y)
                                            end)
                                        end
                                    end
                                    local a0z = aEN()
                                    if a0z then
                                        pcall(function()
                                            local a0o = tonumber(a00) or a00
                                            a0z:FireServer("UseItem", a0o, a0x.Id)
                                        end)
                                        pcall(function()
                                            local a0q = tonumber(a00) or a00
                                            a0z:FireServer("UseGameItem", a0q, a0x.Id)
                                        end)
                                        pcall(function()
                                            local a0s = (tonumber(a00))
                                            local a0w = if a0s then 1 else 0
                                            local a0u = 2421 * a0w + 1947 * (1 - a0w)
                                            local a0v = 1624 * a0w + 3534 * (1 - a0w)
                                            if not ((a0u * 1922 + a0v * 3923 + a0u * a0v) % 16777213 == 14955818) then
                                                a0s = a00
                                            end
                                            a0z:FireServer("ApplyItem", a0s, a0x.Id)
                                        end)
                                    end
                                end
                            end)
                        end)
                        return true
                    end
                end
                return false
            end
            aFn.CheckpointStep = fns.fn3276
            aFn.LeaveExpeditionCheckpoint = function(Ai, Aj)
                local Actions
                local a1B = os.clock()
                local a1B_5
                if a1B < (bCU_74.NextCheckpointLeave or 0) then
                    return false
                end
                bCU_74.NextCheckpointLeave = os.clock() + 1.5
                Actions = nil
                pcall(function()
                    Actions = require(aGn.FusionPackage.Actions)
                end)
                local a1B_1 = Actions and type(Actions.Expedition_CloseCheckpointShop) == "function"
                if a1B_1 then
                    pcall(Actions.Expedition_CloseCheckpointShop)
                end
                local a1B_2 = type(Ai.NodeQueue) ~= "table" or #Ai.NodeQueue == 0
                if a1B_2 then
                    if Aj then
                        local a1C_1 = Actions and type(Actions.Expedition_SetNodeQueue) == "function"
                        if a1C_1 then
                            pcall(Actions.Expedition_SetNodeQueue, Aj)
                        else
                            aD8("SetNodeQueue", Aj)
                        end
                        bCU_74.Status = "Selecting next expedition node"
                        return true
                    end
                    bCU_74.Status = "Leaving checkpoint"
                    if a1B_5 then
                        return pcall(Actions.Expedition_Continue)
                    end
                    return aD8("Continue")
                end
                bCU_74.Status = "Leaving checkpoint"
                a1B_5 = Actions and type(Actions.Expedition_Continue) == "function"
                if a1B_5 then
                    return pcall(Actions.Expedition_Continue)
                end
                return aD8("Continue")
            end
            aFn.CollectNearestOrb = function(Au)
                local a1M, CFrame2, a1O, a1P
                local a1Q = bCU_74.Placing or bCU_74.OrbCollecting or type(Au.RewardPickups) ~= "table"
                local a1Q_2
                if a1Q then
                    return
                end
                local Character = aFK.Character
                local a1R = Character and Character:FindFirstChild("HumanoidRootPart")
                a1M = a1R
                if not a1M then
                    return
                end
                a1O, a1Q_2 = nil, nil
                for k, v in Au.RewardPickups do
                    local a1R_1 = v and v.Position
                    local a1S = v
                    if a1S then
                        a1S = v.Duration
                    end
                    local a1R_2 = tonumber(a1S)
                    local a1S_1 = typeof(a1R_1) == "Vector3" and (not a1R_2 or a1R_2 > 0)
                    if a1S_1 then
                        local Magnitude = (a1M.Position - a1R_1).Magnitude
                        if not a1Q_2 or Magnitude < a1Q_2 then
                            a1O, a1Q_2 = v, Magnitude
                        end
                    end
                end
                if not a1O then
                    return
                end
                CFrame2 = a1M.CFrame
                local max = math.max
                local a1R_4 = (tonumber(a1O.Range))
                local a13 = if a1R_4 then 1 else 0
                local a11 = 180 * a13 + 3137 * (1 - a13)
                local a12 = 2128 * a13 + 2334 * (1 - a13)
                if not ((a11 * 1955 + a12 * 1100 + a11 * a12) % 16777213 == 3075740) then
                    a1R_4 = 9
                end
                a1P = max(a1R_4, 1)
                bCU_74.OrbCollecting = true
                pcall(function()
                    a1M.CFrame = CFrame.new(a1O.Position + Vector3.new(0, math.min(a1P * 0.25, 2), 0))
                    task.wait(0.2)
                    if a1M.Parent and not bCU_74.Placing then
                        a1M.CFrame = CFrame2
                    end
                end)
                bCU_74.OrbCollecting = false
            end
            aFn.ExpeditionAnchor = fns.fn2525
            fns.bCU_21 = fns.fn2625
            aGz = fns.fn869
        end
        bCU_129 = (bCU_129 + 9) % 20
    else
        if (bCU_129 * 3 + 9) * 21 % 4 == ((bCU_129 * 3 + 9) * 21 + 9) % 4 then
            bCU_70 = fns.fn383
            aGl.AnalyzeExpeditionRoute = function(Ce, Cf)
                local a3M, a3N
                a3M = Options.ExpRestartStageTypes and Options.ExpRestartStageTypes.Value or {}
                a3N = function(Ck, Cl)
                    if not Ck or Cl > 64 then
                        return { Route = {}, Reward = 0, Slow = 0 }
                    end
                    local a3r_5 = aGl(Ce, Ck)
                    local a3t = a3r_5 and { a3r_5 }
                    local a3r_6 = {}
                    local a3s_5 = a3t
                    local a3z = if a3s_5 then 1 else 0
                    local a3x = 3070 * a3z + 444 * (1 - a3z)
                    local a3y = 2190 * a3z + 2528 * (1 - a3z)
                    if not ((a3x * 4013 + a3y * 3723 + a3x * a3y) % 16777213 == 10419367) then
                        a3s_5 = a3r_6
                    end
                    local a3r_7 = aGz(Ck, Cf)
                    local a3t_6 = type(a3M) == "table" and a3M[tostring(Ck.Node)] == true
                    local a3u_2 = { Route = a3s_5, Reward = a3r_7, Slow = a3t_6 and 1 or 0 }
                    local a3r_8 = nil
                    local a3t_8 = Ck.Targets or {}
                    for k, v in a3t_8 do
                        local a3s_7 = type(v) == "table" and v
                        local a3t_9 = a3s_7 or Ce.GridNodes[v]
                        local a3s_8 = a3N(a3t_9, Cl + 1)
                        if not a3r_8 or a3s_8.Reward > a3r_8.Reward or a3s_8.Reward == a3r_8.Reward and a3s_8.Slow < a3r_8.Slow then
                            a3r_8 = a3s_8
                        end
                    end
                    if a3r_8 then
                        for k, v in a3r_8.Route do
                            table.insert(a3u_2.Route, v)
                        end
                        a3u_2.Reward = a3u_2.Reward + a3r_8.Reward
                        a3u_2.Slow = a3u_2.Slow + a3r_8.Slow
                    end
                    return a3u_2
                end
                local a3O_4 = type(Ce.NodeQueue) == "table" and Ce.NodeQueue[1]
                local a3P_5 = a3O_4
                local a3V = if a3P_5 then 1 else 0
                local a3T = 287 * a3V + 1950 * (1 - a3V)
                local a3U = 1192 * a3V + 2054 * (1 - a3V)
                if not ((a3T * 1174 + a3U * 2408 + a3T * a3U) % 16777213 == 3549378) then
                    a3P_5 = nil
                end
                local a3O_5 = a3P_5
                if a3P_5 then
                    a3P_5 = Ce.GridNodes[a3O_5]
                end
                if a3P_5 then
                    return a3N(Ce.GridNodes[a3O_5], 0)
                end
                local a3O_6 = { Route = {}, Reward = 0, Slow = 0 }
                local a3P_6 = Ce.CurrentNode and Ce.CurrentNode.Targets
                local a3Q_4 = {}
                local a3R = a3P_6
                local a3V_2 = if a3R then 1 else 0
                local a3T_2 = 3579 * a3V_2 + 2781 * (1 - a3V_2)
                local a3U_2 = 3803 * a3V_2 + 1647 * (1 - a3V_2)
                if not ((a3T_2 * 212 + a3U_2 * 2016 + a3T_2 * a3U_2) % 16777213 == 5259320) then
                    a3R = a3Q_4
                end
                for k, v in a3R do
                    local a3P_7 = type(v) == "table" and v
                    local a3Q_5 = a3P_7 or Ce.GridNodes[v]
                    local a3P_8 = a3N(a3Q_5, 0)
                    local a3Q_6 = #a3O_6.Route == 0 or a3P_8.Reward > a3O_6.Reward
                    if not a3Q_6 then
                        a3Q_6 = a3P_8.Reward == a3O_6.Reward and a3P_8.Slow < a3O_6.Slow
                    end
                    if a3Q_6 then
                        a3O_6 = a3P_8
                    end
                end
                return a3O_6
            end
            fns.bCU_21 = fns.fn3505
        else
            aGl = fns.fn383
            fns.bCU_21.AnalyzeExpeditionRoute = function(Ce, Cf)
                local a3M, a3N
                a3M = Options.ExpRestartStageTypes and Options.ExpRestartStageTypes.Value or {}
                a3N = function(Ck, Cl)
                    if not Ck or Cl > 64 then
                        return { Route = {}, Reward = 0, Slow = 0 }
                    end
                    local a3r_1 = aGl(Ce, Ck)
                    local a3t = a3r_1 and { a3r_1 }
                    local a3r_2 = {}
                    local a3s_1 = a3t
                    local a3z = if a3s_1 then 1 else 0
                    local a3x = 3070 * a3z + 444 * (1 - a3z)
                    local a3y = 2190 * a3z + 2528 * (1 - a3z)
                    if not ((a3x * 4013 + a3y * 3723 + a3x * a3y) % 16777213 == 10419367) then
                        a3s_1 = a3r_2
                    end
                    local a3r_3 = aGz(Ck, Cf)
                    local a3t_1 = type(a3M) == "table" and a3M[tostring(Ck.Node)] == true
                    local a3u_1 = { Route = a3s_1, Reward = a3r_3, Slow = a3t_1 and 1 or 0 }
                    local a3r_4 = nil
                    local a3t_3 = Ck.Targets or {}
                    for k, v in a3t_3 do
                        local a3s_3 = type(v) == "table" and v
                        local a3t_4 = a3s_3 or Ce.GridNodes[v]
                        local a3s_4 = a3N(a3t_4, Cl + 1)
                        if not a3r_4 or a3s_4.Reward > a3r_4.Reward or a3s_4.Reward == a3r_4.Reward and a3s_4.Slow < a3r_4.Slow then
                            a3r_4 = a3s_4
                        end
                    end
                    if a3r_4 then
                        for k, v in a3r_4.Route do
                            table.insert(a3u_1.Route, v)
                        end
                        a3u_1.Reward = a3u_1.Reward + a3r_4.Reward
                        a3u_1.Slow = a3u_1.Slow + a3r_4.Slow
                    end
                    return a3u_1
                end
                local a3O_1 = type(Ce.NodeQueue) == "table" and Ce.NodeQueue[1]
                local a3P_1 = a3O_1
                local a3V = if a3P_1 then 1 else 0
                local a3T = 287 * a3V + 1950 * (1 - a3V)
                local a3U = 1192 * a3V + 2054 * (1 - a3V)
                if not ((a3T * 1174 + a3U * 2408 + a3T * a3U) % 16777213 == 3549378) then
                    a3P_1 = nil
                end
                local a3O_2 = a3P_1
                if a3P_1 then
                    a3P_1 = Ce.GridNodes[a3O_2]
                end
                if a3P_1 then
                    return a3N(Ce.GridNodes[a3O_2], 0)
                end
                local a3O_3 = { Route = {}, Reward = 0, Slow = 0 }
                local a3P_2 = Ce.CurrentNode and Ce.CurrentNode.Targets
                local a3Q_1 = {}
                local a3R = a3P_2
                local a3V_1 = if a3R then 1 else 0
                local a3T_1 = 3579 * a3V_1 + 2781 * (1 - a3V_1)
                local a3U_1 = 3803 * a3V_1 + 1647 * (1 - a3V_1)
                if not ((a3T_1 * 212 + a3U_1 * 2016 + a3T_1 * a3U_1) % 16777213 == 5259320) then
                    a3R = a3Q_1
                end
                for k, v in a3R do
                    local a3P_3 = type(v) == "table" and v
                    local a3Q_2 = a3P_3 or Ce.GridNodes[v]
                    local a3P_4 = a3N(a3Q_2, 0)
                    local a3Q_3 = #a3O_3.Route == 0 or a3P_4.Reward > a3O_3.Reward
                    if not a3Q_3 then
                        a3Q_3 = a3P_4.Reward == a3O_3.Reward and a3P_4.Slow < a3O_3.Slow
                    end
                    if a3Q_3 then
                        a3O_3 = a3P_4
                    end
                end
                return a3O_3
            end
            bCU_70 = fns.fn3505
        end
        bCU_129 = (bCU_129 + 19) % 20
    end
until (bCU_129 * 3 + 18) % 20 == 8
if not aD_.OuroborosAeCardPromptHook then
    bCU_129 = 2
    repeat
        local bLM = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_129, 22), string.byte(tostring(bCU_129))), 29)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bLM, 2927500705), 3295709594), (bit32.bxor(bit32.band(bLM, 1367466590), 2808459522))), 3295709594), 2808459522) == bLM then
            aD_.OuroborosAeCardPromptHook = true
            pcall(fns.fn1953)
        else
            aD_.OuroborosAeCardPromptHook = true
            pcall(fns.fn1953)
        end
        bCU_129 = (bCU_129 + 2) % 8
    until (bCU_129 * 7 + 5) % 8 == 1
end
fns.bCU_21.IsAnvilCardPrompt = function(Eb, Ec)
    local lower = string.lower
    local a5d = Ec and Ec.Title
    local a5h = if a5d then 1 else 0
    local a5f = 3813 * a5h + 369 * (1 - a5h)
    local a5g = 1594 * a5h + 1428 * (1 - a5h)
    if not ((a5f * 65 + a5g * 3836 + a5f * a5g) % 16777213 == 12440351) then
        a5d = ""
    end
    local a5c_1 = lower(tostring(a5d))
    if string.find(a5c_1, "anvil", 1, true) then
        return true
    end
    for i, v in ipairs(Eb) do
        local a5b_1 = type(v) == "table" and tostring(v.CardStyle) == "Anvil"
        if a5b_1 then
            return true
        end
    end
    return false
end
fns.bCU_21.AutoCardsStep = function()
    local a5t
    local a5s
    a5s = nil
    a5t = nil
    local a5w_1
    local a5v_1
    local a5u_1
    a5t, a5w_1, a5v_1, a5u_1 = fns.bCU_21.CardPrompt()
    if not a5t then
        bCU_74.CardResponse = nil
        return
    end
    local a5u_2 = fns.bCU_21.IsAnvilCardPrompt(a5w_1, a5v_1)
    local a5y = a5u_2 and not Toggles.ExpAutoStatAnvil.Value
    if not a5y then
        local a5x_1 = not a5u_2
        if a5x_1 ~= false then
            a5x_1 = not Toggles.ExpAutoCards.Value
        end
        a5y = a5x_1
    end
    if a5y then
        return
    end
    local a5x_2 = { tostring(a5t), tostring(#a5w_1) }
    for i, v in ipairs(a5w_1) do
        table.insert(a5x_2, tostring(i) .. ":" .. tostring(v.Upgrade) .. ":" .. tostring(v.Stat))
    end
    local a5y_1 = table.concat(a5x_2, "|")
    local CardResponse = bCU_74.CardResponse
    local a5z = CardResponse and CardResponse.Signature == a5y_1
    if a5z then
        local a5A_1 = os.clock()
        local a5B = CardResponse.NextAttempt
        local a5L_1 = if a5B then 1 else 0
        local a5J_1 = 3564 * a5L_1 + 2848 * (1 - a5L_1)
        local a5K_1 = 3985 * a5L_1 + 3129 * (1 - a5L_1)
        if not ((a5J_1 * 1424 + a5K_1 * 3266 + a5J_1 * a5K_1) % 16777213 == 15515473) then
            a5B = 0
        end
        a5z = a5A_1 < a5B
    end
    if a5z then
        return
    end
    local a5z_1 = {}
    for i, v in ipairs(a5w_1) do
        table.insert(a5z_1, { Index = i, Score = fns.bCU_21.ScoreCard(v, a5u_2) })
    end
    table.sort(a5z_1, function(ED, EE)
        local a5p_1
        local a5o_1
        if ED.Score == EE.Score then
            a5p_1, a5o_1 = tonumber(ED.Index), tonumber(EE.Index)
            if a5p_1 and a5o_1 then
                return a5p_1 < a5o_1
            end
            return tostring(ED.Index) < tostring(EE.Index)
        end
        return ED.Score > EE.Score
    end)
    local clamp = math.clamp
    local a5A_2 = a5v_1 and a5v_1.SelectionAmount
    local a5v_2 = tonumber(a5A_2) or 1
    local a5A_3 = clamp(a5v_2, 1, #a5w_1)
    local a5u_4 = not a5z_1[1]
    local a5L_2 = if a5u_4 then 1 else 0
    local a5J_2 = 1948 * a5L_2 + 3627 * (1 - a5L_2)
    local a5K_2 = 1643 * a5L_2 + 1175 * (1 - a5L_2)
    if not ((a5J_2 * 1635 + a5K_2 * 3453 + a5J_2 * a5K_2) % 16777213 == 12058823) then
        a5u_4 = a5z_1[1].Score <= 0
    end
    if a5u_4 then
        return
    end
    a5s = {}
    local a5U = 1
    while a5U <= a5A_3 do
        local a5V = a5U
        table.insert(a5s, a5z_1[a5V].Index)
        a5U += 1
    end
    local a5u_5 = CardResponse and CardResponse.Signature == a5y_1
    if a5u_5 then
        a5u_5 = (CardResponse.Attempts or 0) + 1
    end
    local a5v_4 = a5u_5 or 1
    bCU_74.CardResponse = { Signature = a5y_1, Selected = a5s, Attempts = a5v_4, NextAttempt = os.clock() + 0.75 }
    local a5u_7 = a5w_1[a5s[1]].Name or a5w_1[a5s[1]].Upgrade or a5w_1[a5s[1]].Stat or a5s[1]
    bCU_74.Status = "Picking " .. tostring(a5u_7)
    local a5u_8 = pcall(function()
        a5t:FireServer("Response", a5s)
    end)
    if not a5u_8 then
        bCU_74.CardResponse.NextAttempt = os.clock() + 0.25
    end
end
fns.bCU_14 = function(ET)
    local a5X = 0
    if type(ET.NodeHistory) ~= "table" then
        return 0
    end
    for k, v in ET.NodeHistory do
        local a5Y = type(v) == "table" and tostring(v.Node) == "Boss"
        if a5Y then
            a5X += 1
        end
    end
    return a5X
end
aEH = function()
    local a58, a6a
    local a59 = aEM()
    if not a59 then
        return
    end
    if Toggles.ExpAutoCards.Value or Toggles.ExpAutoStatAnvil.Value then
        pcall(fns.bCU_21.AutoCardsStep)
    end
    if not Toggles.ExpAuto.Value then
        return
    end
    local a6b_1 = tostring(a59.Status)
    local a6c = os.clock()
    if a6c >= (bCU_74.NextExpRestart or 0) then
        local a6c_1 = fns.bCU_21.ExpeditionRestartReason(a59)
        if a6c_1 and fns.bCU_21.RestartAction then
            bCU_74.NextExpRestart = os.clock() + 10
            bCU_74.ExpRestartRequested = bCU_74.ExpRestartSignature
            bCU_74.Status = "Restarting: " .. a6c_1
            fns.bCU_21.RestartAction()
            return
        end
    end
    if Toggles.ExpAutoOrbs.Value then
        pcall(fns.bCU_21.CollectNearestOrb, a59)
    end
    a58 = false
    pcall(function()
        a58 = fns.bCU_21.UseExpeditionHotbarItem()
    end)
    if a58 then
        return
    end
    if Toggles.ExpAutoExtract.Value then
        local a6c_2 = tonumber(Options.ExpExtractAfterBoss.Value) or 1
        local a6c_3 = a6c_2 > 0 and fns.bCU_14(a59) >= a6c_2
        if a6c_3 then
            bCU_74.Status = "Extracting"
            aD8("Extract")
            return
        end
    end
    local a6c_4 = Toggles.ExpAutoPath.Value
    if a6c_4 then
        local a6d_3 = os.clock()
        local a6e = bCU_74.NextRoute
        local a6i = if a6e then 1 else 0
        local a6g = 3720 * a6i + 3088 * (1 - a6i)
        local a6h = 2865 * a6i + 3316 * (1 - a6i)
        if not ((a6g * 594 + a6h * 1362 + a6g * a6h) % 16777213 == 16769610) then
            a6e = 0
        end
        a6c_4 = a6d_3 >= a6e
    end
    if a6c_4 then
        bCU_74.NextRoute = os.clock() + 5
        local a6d_4 = Options.ExpWantedResource and Options.ExpWantedResource.Value or "Any"
        local a6d_5 = bCU_70(a6d_4)
        if a6d_5 then
            aD8("SetNodeQueue", a6d_5)
        end
    end
    if a6b_1 == "Checkpoint" then
        local a6d_6 = a59.CurrentNode or {}
        local a6d_7 = tostring(a6d_6.X) .. ":" .. tostring(a6d_6.Y)
        if bCU_74.CheckpointNode ~= a6d_7 then
            bCU_74.CheckpointNode = a6d_7
            bCU_74.ShopAttemptKey = nil
            bCU_74.NextCheckpointLeave = 0
            pcall(fns.bCU_21.RefreshExpeditionLists, false)
        end
        a6a = false
        pcall(function()
            a6a = fns.bCU_21.CheckpointStep(a59) == true
        end)
        if a6a then
            return
        end
    end
    if Toggles.ExpAutoLeave.Value and a6b_1 == "Checkpoint" then
        local a6b_2 = nil
        local a6c_10 = type(a59.NodeQueue) ~= "table" or #a59.NodeQueue == 0
        if a6c_10 then
            local a6d_9 = Options.ExpWantedResource and Options.ExpWantedResource.Value or "Any"
            a6b_2 = bCU_70(a6d_9)
        end
        fns.bCU_21.LeaveExpeditionCheckpoint(a59, a6b_2)
    end
end
Actions2 = nil
pcall(function()
    Actions2 = require(aGn.FusionPackage.Actions)
    fns.bCU_21.FusionActions = Actions2
end)
aGa = function(Fz)
    local FA
    pcall(function()
        FA = Actions2.GetSettingValue(Fz)
    end)
    return FA
end
function fns.aFo(FG, FH)
    local a6p = if aGa(FG) == FH then 1 else 0
    if a6p == 1 then
        return false
    end
    pcall(function()
        Actions2.ChangeSetting(FG, FH)
    end)
    return true
end
bCU_129 = function()
    local a6q = Information
    local a6r = {}
    if a6q then
        a6q = Information:FindFirstChild("Maps")
    end
    local a6s = a6q
    if not a6s then
        return a6r
    end
    for i, child in a6s:GetChildren() do
        if #child:GetChildren() > 0 then
            table.insert(a6r, child.Name)
        end
    end
    table.sort(a6r)
    return a6r
end
aGH = function()
    local FX
    local FW
    FW = bCU_67("MapData")
    FX = nil
    pcall(function()
        FX = tostring(FW.Data.Parameters.Gamemode)
    end)
    return FX
end
function fns.aFU()
    pcall(function()
        Actions2.GameNext()
    end)
end
function fns.aFt()
    local a6D = not bCU_42(bCU_69()) and fns.bCU_17()
    local a6E = a6D or nil
    local a6D_1 = a6E
    if a6E then
        a6E = type(a6D_1.Victory) == "boolean"
    end
    if a6E then
        local ReportFinishedRun = fns.bCU_21.ReportFinishedRun
        local a6D_2 = a6D_1.Victory == true and "Victory" or "Defeat"
        ReportFinishedRun(a6D_2)
    else
        fns.bCU_21.ReportFinishedRun("Restart")
    end
    pcall(function()
        Actions2.GameRestart(true)
    end)
end
fns.bCU_21.RestartAction = fns.aFt
bCU_32 = function()
    local a6K = bCU_67("GameState")
    if a6K then
        pcall(function()
            a6K:FireServer("Lobby")
        end)
        return
    end
    pcall(Actions2.GameReturnLobby)
end
fns.bCU_21.GetMatchCount = function()
    if bCU_74.CompletedMatches ~= nil then
        return bCU_74.CompletedMatches
    end
    bCU_74.CompletedMatches = 0
    local a6O = aE7 and isfile(aEb.MatchCountFile)
    if a6O then
        pcall(function()
            local a6M = tonumber(readfile(aEb.MatchCountFile)) or 0
            bCU_74.CompletedMatches = a6M
        end)
    end
    return bCU_74.CompletedMatches
end
fns.bCU_21.SetMatchCount = function(Gn)
    local a6V = tonumber(Gn) or 0
    bCU_74.CompletedMatches = math.max(0, math.floor(a6V))
    if aE7 then
        pcall(function()
            writefile(aEb.MatchCountFile, tostring(bCU_74.CompletedMatches))
        end)
    end
    return bCU_74.CompletedMatches
end
fns.bCU_21.GameSessionSeconds = function()
    local a6X = bCU_69()
    if type(a6X) ~= "table" then
        return nil
    end
    local a6Y = tonumber(a6X.SessionTime)
    local a6X_1 = a6Y and math.max(0, a6Y)
    return a6X_1 or nil
end
fns.bCU_21.BuildingData = function(Gx)
    local a62 = aGi()
    return a62.ExpeditionData and a62.ExpeditionData.Buildings and a62.ExpeditionData.Buildings[Gx] or nil
end
fns.bCU_21.BuildingUpgrade = function(GB, GC)
    local a65 = fns.bCU_21.ExpeditionInfo and fns.bCU_21.ExpeditionInfo.BuildingUpgrades
    local a66 = a65
    if a65 then
        a65 = a66[GB]
    end
    if a65 then
        local a67 = a66[GB]
        local a68 = GC and GC.Upgrade
        local a69 = tonumber(a68) or 0
        a65 = a67[a69]
    end
    return a65 or nil
end
fns.bCU_21.UnitChoices = function()
    local a7h = {}
    local a7i = {}
    local a7j = aGi().UnitData or a7i
    for k, v in a7j do
        if type(v) == "table" then
            table.insert(a7h, tostring(k))
        end
    end
    table.sort(a7h)
    return a7h
end
fns.bCU_21.TrainingUnitChoices = function(GN)
    local a7C = Options.TrainingRarities and Options.TrainingRarities.Value or {}
    local a7A_1 = { Common = 1, Rare = 2, Epic = 3, Legendary = 4, Mythic = 5, Secret = 6, Exclusive = 7 }
    local a7B_1 = {}
    local a7C_1 = {}
    local a7E = aGi().UnitData or a7C_1
    for k, v in a7E do
        local a7C_2 = Units and Units[v.Asset]
        local a7C_3 = v.Rarity
        if not a7C_3 then
            a7C_3 = a7C_2 and a7C_2.Rarity
        end
        local a7E_2 = a7C_3 or ""
        local a7C_4 = tostring(a7E_2)
        if a7C[a7C_4] and not GN[k] then
            local insert = table.insert
            local a7F_2 = a7A_1[a7C_4] or 0
            insert(a7B_1, { Id = k, Rank = a7F_2 })
        end
    end
    table.sort(a7B_1, function(G0, G1)
        local a7r = G0.Rank == G1.Rank and tostring(G0.Id) < tostring(G1.Id)
        local a7s = a7r
        local a7z = if a7s then 1 else 0
        local a7x = 1525 * a7z + 1922 * (1 - a7z)
        local a7y = 2110 * a7z + 1682 * (1 - a7z)
        if not ((a7x * 2806 + a7y * 2177 + a7x * a7y) % 16777213 == 12090370) then
            a7s = G0.Rank > G1.Rank
        end
        return a7s
    end)
    return a7B_1
end
fns.bCU_21.EquipmentChoices = function()
    local a7Q = {}
    local a7R = {}
    local a7S = aGi().EquipmentData or a7R
    for k in a7S do
        table.insert(a7Q, tostring(k))
    end
    table.sort(a7Q)
    return a7Q
end
fns.bCU_21.ForgeRecipes = function()
    local a7Y = {}
    local a7Z = fns.bCU_21.CraftingInfo and fns.bCU_21.CraftingInfo.Recipes
    local a7_ = a7Z
    if a7Z then
        a7Z = a7_["Armory Forge"]
    end
    local a70 = a7Z or {}
    for k in a70 do
        table.insert(a7Y, tostring(k))
    end
    table.sort(a7Y)
    return a7Y
end
fns.bCU_21.RefreshLobbyLists = function(Hd)
    local a8a
    local Items
    Items = nil
    a8a = nil
    if Options.TrainingSlot1 then
        Options.TrainingSlot1:SetValues(fns.bCU_21.UnitChoices())
    end
    if Options.TrainingSlot2 then
        Options.TrainingSlot2:SetValues(fns.bCU_21.UnitChoices())
    end
    if Options.ForgeRecipes then
        Options.ForgeRecipes:SetValues(fns.bCU_21.ForgeRecipes())
    end
    if Options.EquipRerollTarget then
        Options.EquipRerollTarget:SetValues(fns.bCU_21.EquipmentChoices())
    end
    a8a = nil
    pcall(function()
        a8a = aFw.GET_SHOP_REPLICA:InvokeSelf("ExpeditionShop")
    end)
    Items = nil
    pcall(function()
        Items = a8a.Data.Shops.Shop.Items
    end)
    local a8b = {}
    local a8c = type(Items) == "table" and Items
    local a8e = a8c or {}
    for k, v in a8e do
        local insert = table.insert
        local a8e_1 = v.Name or v.Asset or "Unknown"
        insert(a8b, tostring(a8e_1))
    end
    table.sort(a8b)
    if Options.LobbyShopItems then
        Options.LobbyShopItems:SetValues(a8b)
    end
    if Hd then
        aDV:Notify(string.format("Found %d units, %d equipment, and %d shop items", #fns.bCU_21.UnitChoices(), #fns.bCU_21.EquipmentChoices(), #a8b))
    end
end
fns.bCU_21.EquipmentMeetsTargets = function(Hs, Ht)
    local a8r_1
    local a8q_1
    if type(Hs) ~= "table" then
        return false, {}
    end
    local a8p = { Rare = 1, Epic = 2, Legendary = 3, Mythic = 4 }
    a8r_1, a8q_1 = { Stats = {}, Passives = {}, Abilities = {} }, 0
    local a8s = true
    local a8B = 1
    while a8B <= 3 do
        local a8D = a8B
        local a8u = Options[Ht .. "Slot" .. a8D] and Options[Ht .. "Slot" .. a8D].Value or "Any"
        if a8u ~= "Any" and a8u ~= "---" then
            a8q_1 += 1
            local a8u_2 = Hs.Stats and Hs.Stats[a8D]
            local a8v_1 = a8u_2
            if a8u_2 then
                local EquipmentInfo = fns.bCU_21.EquipmentInfo
                local a8x = tonumber(a8v_1.Value) or 0
                a8u_2 = EquipmentInfo:GetStatRarity(a8x)
            end
            local a8v_2 = a8u_2
            local a8u_3 = not a8v_2
            if not a8u_3 then
                a8u_3 = (a8p[a8v_2] or 0) < (a8p[a8u] or math.huge)
            end
            if a8u_3 then
                a8s = false
            else
                a8r_1.Stats[tostring(a8D)] = true
            end
        end
        a8B += 1
    end
    return a8q_1 > 0 and a8s, a8r_1, a8q_1 > 0
end
fns.bCU_21.SendEquipWebhook = function(HK)
    local a8I = Options.WebhookUrl and Options.WebhookUrl.Value or ""
    if a8I == "" or not aDZ then
        return
    end
    fns.bCU_21.PostWebhook(a8I, HttpService:JSONEncode({ username = "Ouroboros Hub | Anime Expeditions", content = HK }))
end
fns.bCU_21.BuildingStep = function()
    local Items
    local a8O
    a8O = nil
    Items = nil
    local a8Q = os.clock()
    local a8R = bCU_74.NextBuildingStep
    local a81 = if a8R then 1 else 0
    local a8_ = 1799 * a81 + 1910 * (1 - a81)
    local a80 = 3595 * a81 + 2235 * (1 - a81)
    if not ((a8_ * 2647 + a80 * 1865 + a8_ * a80) % 16777213 == 1156820) then
        a8R = 0
    end
    if a8Q < a8R then
        return
    end
    bCU_74.NextBuildingStep = os.clock() + 1
    local a8Q_1 = aD7()
    local a8R_1 = tonumber(a8Q_1.ExpeditionFuel) or 0
    local a8S = 0
    local a8T = a8R_1
    for k, v in { "ResourceDrill", "GoldMine" } do
        local a8U_1 = v == "ResourceDrill" and "Drill" or "Mine"
        local a8U_2 = fns.bCU_21.BuildingData(v)
        local a8V = Options[a8U_1 .. "MaintainFuel"] and Options[a8U_1 .. "MaintainFuel"].Value
        local a8W = tonumber(a8V) or 0
        local a8W_1 = Options[a8U_1 .. "LobbyFuelBelow"] and Options[a8U_1 .. "LobbyFuelBelow"].Value
        local a8X = tonumber(a8W_1) or 0
        a8S = math.max(a8S, a8X)
        local a8W_3 = a8U_2 and Toggles[a8U_1 .. "AutoFuel"].Value and a8T > 0
        if a8W_3 then
            local a8X_1 = tonumber(a8U_2.Fuel) or 0
            a8W_3 = a8X_1 < a8W
        end
        if a8W_3 then
            local min = math.min
            local a8X_2 = tonumber(a8U_2.Fuel) or 0
            local a8Y = min(a8W - a8X_2, a8T)
            pcall(Actions2.ExpeditionBuilding_AddFuel, v, a8Y)
            a8T -= a8Y
        end
        local a8V_2 = a8U_2 and Toggles[a8U_1 .. "AutoClaim"].Value and type(a8U_2.Rewards) == "table" and next(a8U_2.Rewards)
        if a8V_2 then
            pcall(Actions2.ExpeditionBuilding_ClaimRewards, v)
        end
    end
    local a8R_4 = fns.bCU_29() and a8S > 0 and a8T <= a8S
    if a8R_4 then
        bCU_74.Status = "Returning for expedition fuel"
        bCU_32()
        return
    end
    local a8R_5 = Toggles.DrillAutoOpenGeode.Value
    if a8R_5 then
        local a8S_1 = tonumber(a8Q_1.ExpeditionGeode) or 0
        a8R_5 = a8S_1 > 0
    end
    if a8R_5 then
        pcall(Actions2.UseItem, "ExpeditionGeode")
    end
    local a8Q_2 = fns.bCU_21.BuildingData("TrainingGrounds")
    if a8Q_2 and Toggles.TrainingLobbyWhenMax.Value then
        local a8R_7 = tonumber(fns.bCU_21.ExpeditionInfo.Buildings.TrainingGrounds.MaxTime) or 86400
        local a8T_1 = a8Q_2.Units or {}
        for k, v in a8T_1 do
            local a8R_9 = os.time()
            local a8T_2 = tonumber(v) or os.time()
            local a8R_10 = a8R_9 - a8T_2 >= a8R_7 and fns.bCU_29()
            if a8R_10 then
                bCU_74.Status = "Returning for completed training"
                bCU_32()
                return
            end
        end
    end
    if a8Q_2 and Toggles.AutoTrainingGround.Value then
        local a8R_12 = {}
        local a8S_3 = a8Q_2.Units
        local a81_1 = if a8S_3 then 1 else 0
        local a8__1 = 2899 * a81_1 + 336 * (1 - a81_1)
        local a80_1 = 1728 * a81_1 + 317 * (1 - a81_1)
        if not ((a8__1 * 2518 + a80_1 * 2497 + a8__1 * a80_1) % 16777213 == 16623970) then
            a8S_3 = a8R_12
        end
        local a8Q_3 = a8S_3
        local TrainingGrounds = fns.bCU_21.ExpeditionInfo.Buildings.TrainingGrounds
        for k, v in a8Q_3 do
            local a8S_4 = os.time()
            local a8T_3 = tonumber(v) or os.time()
            local a8U_3 = a8S_4 - a8T_3
            local a8S_5 = tonumber(TrainingGrounds.MaxTime) or 86400
            if a8U_3 >= a8S_5 then
                pcall(Actions2.ExpeditionBuilding_RemoveUnit, k)
            end
        end
        if Toggles.TrainingAutoRarity.Value then
            local a8R_14 = fns.bCU_21.TrainingUnitChoices(a8Q_3)
            local a8S_6 = 0
            for k in a8Q_3 do
                a8S_6 += 1
            end
            local a8T_4 = math.max(0, 2 - a8S_6)
            local a8S_7 = math.min(a8T_4, #a8R_14)
            local a9p = 1
            while a9p <= a8S_7 do
                local a9q = a9p
                pcall(Actions2.ExpeditionBuilding_SendUnit, a8R_14[a9q].Id)
                a9p += 1
            end
        else
            local a9u = 1
            while a9u <= 2 do
                local Value = Options["TrainingSlot" .. a9u].Value
                if Value and Value ~= "" and not a8Q_3[Value] then
                    pcall(Actions2.ExpeditionBuilding_SendUnit, Value)
                end
                a9u += 1
            end
        end
    end
    a8O = nil
    pcall(function()
        a8O = aFw.GET_SHOP_REPLICA:InvokeSelf("ExpeditionShop")
    end)
    Items = nil
    pcall(function()
        Items = a8O.Data.Shops.Shop.Items
    end)
    local a8S_9 = Options.LobbyShopItems and Options.LobbyShopItems.Value or {}
    local a8R_17 = Toggles.LobbyShopAutoBuy.Value and type(Items) == "table"
    if a8R_17 then
        for k, v in Items do
            local a8S_10 = v.Name or v.Asset or ""
            local a8R_19 = tostring(a8S_10)
            local a8S_11 = a8S_9[a8R_19]
            if a8S_11 then
                local a8R_20 = v.Stock == nil
                if not a8R_20 then
                    local a8T_5 = tonumber(v.Stock) or 0
                    a8R_20 = a8T_5 > 0
                end
                a8S_11 = a8R_20
            end
            if a8S_11 then
                pcall(Actions2.ExpeditionShopPurchaseItem, "Shop", k, 1)
                break
            end
        end
    end
end
fns.bCU_21.EquipmentStep = function()
    local a9G_1
    local a9F_1
    local a9D_2
    local a9B = os.clock()
    if a9B < (bCU_74.NextEquipmentStep or 0) then
        return
    end
    bCU_74.NextEquipmentStep = os.clock() + 1
    local a9B_1 = {}
    local a9C_1 = aGi().EquipmentData or a9B_1
    if Toggles.AutoRerollEquipment.Value then
        local Value = Options.EquipRerollTarget.Value
        local a9D_1 = Value and a9C_1[Value]
        a9F_1, a9G_1, a9D_2 = fns.bCU_21.EquipmentMeetsTargets(a9D_1, "EquipReroll")
        if a9D_1 and a9D_2 and not a9F_1 then
            if not Toggles.EquipRerollUseLock.Value then
                a9G_1 = { Stats = {}, Passives = {}, Abilities = {} }
            end
            pcall(Actions2.ExpeditionBuilding_RerollEquipment, Value, a9G_1, false)
        end
    end
    if Toggles.AutoForgeEquipment.Value then
        local a9C_3 = {}
        local a9D_4 = bCU_74.ForgeMatched
        local a9L = if a9D_4 then 1 else 0
        local a9J = 1689 * a9L + 1863 * (1 - a9L)
        local a9K = 201 * a9L + 1179 * (1 - a9L)
        if not ((a9J * 1321 + a9K * 2403 + a9J * a9K) % 16777213 == 3053661) then
            a9D_4 = a9C_3
        end
        bCU_74.ForgeMatched = a9D_4
        local a9C_4 = {}
        local a9D_5 = Options.ForgeRecipes.Value
        local a9L_1 = if a9D_5 then 1 else 0
        local a9J_1 = 1317 * a9L_1 + 3667 * (1 - a9L_1)
        local a9K_1 = 1629 * a9L_1 + 2881 * (1 - a9L_1)
        if not ((a9J_1 * 2483 + a9K_1 * 3846 + a9J_1 * a9K_1) % 16777213 == 11680638) then
            a9D_5 = a9C_4
        end
        local a9C_5 = a9D_5
        local a9D_6 = (tonumber(Options.ForgePerCycle.Value))
        local a9O = if a9D_6 then 1 else 0
        local a9M = 3722 * a9O + 211 * (1 - a9O)
        local a9N = 2394 * a9O + 3198 * (1 - a9O)
        if not ((a9M * 3168 + a9N * 1879 + a9M * a9N) % 16777213 == 8422877) then
            a9D_6 = 1
        end
        local a9E_3 = a9D_6
        for k, v in a9C_5 do
            if v then
                local a9C_6 = nil
                for k2, v in a9C_1 do
                    local a9D_7 = v.Asset == k and fns.bCU_21.EquipmentMeetsTargets(v, "Forge")
                    if a9D_7 then
                        a9C_6 = true
                        break
                    end
                end
                if a9C_6 then
                    if not bCU_74.ForgeMatched[k] and Toggles.ForgeWebhook.Value then
                        bCU_74.ForgeMatched[k] = true
                        task.spawn(fns.bCU_21.SendEquipWebhook, "Forge target reached: **" .. bCU_95(k) .. "**")
                    end
                else
                    local a92 = 1
                    while a92 <= a9E_3 do
                        pcall(Actions2.ExpeditionBuilding_ForgeEquipment, k)
                        a92 += 1
                    end
                end
                break
            end
        end
    end
end
fns.bCU_21.ResolveShop = function(I0)
    local a98 = {}
    local a99 = aD6
    local bad = if a99 then 1 else 0
    local bab = 830 * bad + 2895 * (1 - bad)
    local bac = 2048 * bad + 1102 * (1 - bad)
    if not ((bab * 2831 + bac * 79 + bab * bac) % 16777213 == 4211362) then
        a99 = a98
    end
    for k, v in a99 do
        local a97
        local baj = v
        a97 = false
        pcall(function()
            local a95 = aDR(baj) == "ShopData" and tostring(baj.Data.DataKey) == I0
            a97 = a95
        end)
        if a97 then
            return baj
        end
    end
    return nil
end
fns.bCU_21.CraftChoices = function()
    local bak = {}
    fns.bCU_21.CraftKeys = {}
    local ban = fns.bCU_21.CraftingInfo and fns.bCU_21.CraftingInfo.Recipes and fns.bCU_21.CraftingInfo.Recipes.Crafting or {}
    for k in ban do
        local bal_1 = bCU_31(k)
        fns.bCU_21.CraftKeys[bal_1] = k
        table.insert(bak, bal_1)
    end
    table.sort(bak)
    return bak
end
fns.bCU_21.SpriteSourceChoices = function()
    local baw = {}
    fns.bCU_21.SpriteSourceKeys = {}
    local baz = fns.bCU_21.CraftingInfo and fns.bCU_21.CraftingInfo.Recipes and fns.bCU_21.CraftingInfo.Recipes.Crafting and fns.bCU_21.CraftingInfo.Recipes.Crafting.SpriteGrey or {}
    for k, v in baz do
        local bax_2 = v.Requirements and v.Requirements[1]
        local bay_1 = bax_2
        if bax_2 then
            bax_2 = tostring(bay_1.Asset)
        end
        local bay_2 = bax_2
        if bay_2 and bay_2 ~= "SpriteGrey" then
            local bax_4 = bCU_31(bay_2)
            if not fns.bCU_21.SpriteSourceKeys[bax_4] then
                fns.bCU_21.SpriteSourceKeys[bax_4] = bay_2
                table.insert(baw, bax_4)
            end
        end
    end
    table.sort(baw)
    return baw
end
fns.bCU_21.ShopChoices = function(Jp)
    local baM
    local Shops
    Shops = nil
    baM = nil
    local WanderingTrader
    local baN = {}
    local baP = fns.bCU_21.ShopKeys or {}
    fns.bCU_21.ShopKeys = baP
    fns.bCU_21.ShopKeys[Jp] = {}
    baM = fns.bCU_21.ResolveShop(Jp)
    Shops = nil
    pcall(function()
        Shops = baM.Data.Shops
    end)
    local baO_1 = type(Shops) == "table" and Shops
    local baQ = baO_1 or {}
    for k, v in baQ do
        local baP_2 = v.Items or {}
        for k2, v in baP_2 do
            local baO_3 = aFk(v)
            fns.bCU_21.ShopKeys[Jp][baO_3] = { Shop = k, Index = k2, Name = v.Name }
            table.insert(baN, baO_3)
        end
    end
    if Jp == "WanderingTrader" and #baN == 0 then
        WanderingTrader = nil
        pcall(function()
            WanderingTrader = require(Information.Events.WanderingTrader)
        end)
        local baO_5 = WanderingTrader and WanderingTrader.ItemPool
        local baP_3 = {}
        local baQ_1 = baO_5
        local ba5 = if baQ_1 then 1 else 0
        local ba3 = 185 * ba5 + 14 * (1 - ba5)
        local ba4 = 3106 * ba5 + 1654 * (1 - ba5)
        if not ((ba3 * 1127 + ba4 * 3295 + ba3 * ba4) % 16777213 == 11017375) then
            baQ_1 = baP_3
        end
        for k, v in baQ_1 do
            local baO_6 = aFk(v)
            fns.bCU_21.ShopKeys[Jp][baO_6] = { Shop = "WanderingTrader", Index = k, Name = v.Name }
            table.insert(baN, baO_6)
        end
    end
    table.sort(baN)
    return baN
end
fns.bCU_21.OtherShopChoices = function()
    local bbu = {}
    local bbv = {}
    local bbx = aD6 or {}
    for k, v in bbx do
        local bbE = v
        pcall(function()
            if aDR(bbE) == "ShopData" then
                local bba = tostring(bbE.Data.DataKey)
                if bba and bba ~= "GoldShop" and bba ~= "WanderingTrader" then
                    local Shops = bbE.Data.Shops
                    local bbb_2 = type(Shops) == "table" and Shops
                    local bbc_1 = bbb_2 or {}
                    for k, v in bbc_1 do
                        if type(v) == "table" then
                            local bba_3 = type(v.Items) == "table" and v.Items
                            local bbc_2 = bba_3 or {}
                            for k, v in bbc_2 do
                                if type(v) == "table" then
                                    local bba_4 = aFk(v)
                                    if not bbu[bba_4] then
                                        bbu[bba_4] = true
                                        table.insert(bbv, bba_4)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
    table.sort(bbv)
    return bbv
end
fns.bCU_21.ExpeditionShopChoices = function()
    local Items
    local bbG
    Items = nil
    bbG = nil
    local bbH = {}
    local bbI = {}
    bbG = nil
    pcall(function()
        bbG = aFw.GET_SHOP_REPLICA:InvokeSelf("ExpeditionShop")
    end)
    Items = nil
    pcall(function()
        Items = bbG.Data.Shops.Shop.Items
    end)
    local bbJ = type(Items) == "table" and Items
    local bbL = bbJ or {}
    for k, v in bbL do
        if type(v) == "table" then
            local bbJ_1 = aFk(v)
            if not bbH[bbJ_1] then
                bbH[bbJ_1] = true
                table.insert(bbI, bbJ_1)
            end
        end
    end
    table.sort(bbI)
    return bbI
end
fns.bCU_21.RefreshLobbyAutomationLists = function(Kf)
    if Options.LobbyCraftItems then
        Options.LobbyCraftItems:SetValues(fns.bCU_21.CraftChoices())
    end
    if Options.LobbySpriteSources then
        Options.LobbySpriteSources:SetValues(fns.bCU_21.SpriteSourceChoices())
    end
    if Options.LobbyGoldItems then
        Options.LobbyGoldItems:SetValues(fns.bCU_21.ShopChoices("GoldShop"))
    end
    if Options.LobbyTraderItems then
        Options.LobbyTraderItems:SetValues(fns.bCU_21.ShopChoices("WanderingTrader"))
    end
    if Options.LobbyEventItems then
        Options.LobbyEventItems:SetValues(fns.bCU_21.OtherShopChoices())
    end
    if Options.LobbyExpeditionItems then
        Options.LobbyExpeditionItems:SetValues(fns.bCU_21.ExpeditionShopChoices())
    end
    bCU_74.ShopAttemptKeys = {}
    if Kf then
        aDV:Notify("Lobby shop lists refreshed")
    end
end
fns.bCU_21.CraftAffordable = function(Kk, Kl)
    local bb1 = Kk and Kk.Requirements or {}
    for k, v in bb1 do
        local bb__1 = tonumber(Kl[tostring(v.Asset)]) or 0
        local bb0_1 = tonumber(v.Amount) or 0
        if bb__1 < bb0_1 then
            return false
        end
    end
    return true
end
fns.bCU_21.CraftHasOutputSpace = function(Kp, Kq, Kr)
    local bb9 = fns.bCU_21.ItemInfo and fns.bCU_21.ItemInfo[tostring(Kp)]
    local bca = bb9
    if bb9 then
        bb9 = bca.InventoryLimit
    end
    local bca_1 = tonumber(bb9)
    if not bca_1 then
        return true
    end
    local bb9_1 = Kq
    local bcb = 0
    if bb9_1 then
        bb9_1 = Kq.Requirements
    end
    local bcd = bb9_1 or {}
    for k, v in bcd do
        if tostring(v.Asset) == tostring(Kp) then
            local bb9_2 = tonumber(v.Amount) or 0
            bcb += bb9_2
        end
    end
    local bb9_3 = tonumber(Kr[tostring(Kp)]) or 0
    local bb9_4 = bb9_3 - bcb
    local bcd_1 = Kq and Kq.Amount
    local bce = tonumber(bcd_1) or 1
    return bb9_4 + bce <= bca_1
end
fns.bCU_21.CraftAttemptBlocked = function(KD)
    return bCU_74.CraftBlockedAttempts and bCU_74.CraftBlockedAttempts[KD] == true
end
fns.bCU_21.AutoCraftPending = function()
    local bco = aD7()
    if Toggles.LobbyAutoCraft.Value then
        local bcq_1 = Options.LobbyCraftItems.Value or {}
        for k, v in bcq_1 do
            local bcp_2 = v and fns.bCU_21.CraftKeys and fns.bCU_21.CraftKeys[k]
            local bcq_2 = bcp_2
            if bcp_2 then
                bcp_2 = fns.bCU_21.CraftingInfo.Recipes.Crafting[bcq_2]
            end
            local bcs_1 = bcp_2 or {}
            for k, v in bcs_1 do
                local bcp_4 = fns.bCU_21.CraftAttemptKey(bcq_2, k, v, bco)
                local bcr_2 = fns.bCU_21.CraftAffordable(v, bco) and fns.bCU_21.CraftHasOutputSpace(bcq_2, v, bco) and not fns.bCU_21.CraftAttemptBlocked(bcp_4)
                if bcr_2 then
                    return true
                end
            end
        end
    end
    if Toggles.LobbyAutoCraftSprite.Value then
        local bcq_3 = fns.bCU_21.CraftingInfo and fns.bCU_21.CraftingInfo.Recipes and fns.bCU_21.CraftingInfo.Recipes.Crafting and fns.bCU_21.CraftingInfo.Recipes.Crafting.SpriteGrey
        local bcr_3 = Options.LobbySpriteSources.Value or {}
        local bcs_2 = bcq_3 or {}
        for k, v in bcs_2 do
            local bcq_4 = v.Requirements and v.Requirements[1]
            local bcr_5 = bcq_4
            if bcq_4 then
                bcq_4 = bCU_31(bcr_5.Asset)
            end
            local bcr_6 = false
            local bcs_3 = bcq_4
            local bct = v.Requirements or {}
            for k, v in bct do
                if v.Asset == "SpriteRainbow" then
                    bcr_6 = true
                end
            end
            local bcq_6 = bcs_3 and bcr_3[bcs_3] == true
            if bcq_6 then
                bcq_6 = not (bcr_6 and Toggles.LobbyKeepRainbowSprites.Value)
            end
            if bcq_6 then
                bcq_6 = fns.bCU_21.CraftAffordable(v, bco)
            end
            if bcq_6 then
                bcq_6 = fns.bCU_21.CraftHasOutputSpace("SpriteGrey", v, bco)
            end
            if bcq_6 then
                bcq_6 = not fns.bCU_21.CraftAttemptBlocked(fns.bCU_21.CraftAttemptKey("SpriteGrey", k, v, bco))
            end
            if bcq_6 then
                return true
            end
        end
    end
    return false
end
fns.bCU_21.NotifyAutoCraft = function(K8)
    if bCU_89.LobbyCraftStatus then
        bCU_89.LobbyCraftStatus:SetText("Last craft: " .. K8)
    end
    local bcV = bCU_74.AutoCraftBatch or { Order = {}, Counts = {} }
    bCU_74.AutoCraftBatch = bcV
    if not bCU_74.AutoCraftBatch.Counts[K8] then
        table.insert(bCU_74.AutoCraftBatch.Order, K8)
    end
    local Counts = bCU_74.AutoCraftBatch.Counts
    local bcV_1 = bCU_74.AutoCraftBatch.Counts[K8]
    local bcZ = if bcV_1 then 1 else 0
    local bcX = 3953 * bcZ + 2999 * (1 - bcZ)
    local bcY = 2541 * bcZ + 3964 * (1 - bcZ)
    if not ((bcX * 1433 + bcY * 3312 + bcX * bcY) % 16777213 == 7347801) then
        bcV_1 = 0
    end
    Counts[K8] = bcV_1 + 1
end
fns.bCU_21.FinishAutoCraftBatch = function()
    local AutoCraftBatch = bCU_74.AutoCraftBatch
    if not AutoCraftBatch then
        return
    end
    local bc0 = {}
    for k, v in AutoCraftBatch.Order do
        table.insert(bc0, v .. " x" .. tostring(AutoCraftBatch.Counts[v]))
    end
    bCU_74.AutoCraftBatch = nil
    aDV:Notify("Auto Craft complete: " .. table.concat(bc0, ", "), 6)
end
fns.bCU_21.CraftAttemptKey = function(Le, Lf, Lg, Lh)
    local bc8 = { tostring(Le), tostring(Lf) }
    local bdb = Lg and Lg.Requirements or {}
    for k, v in bdb do
        local insert = table.insert
        local bda_1 = tostring(v.Asset)
        local bdb_1 = Lh[tostring(v.Asset)] or 0
        insert(bc8, bda_1 .. "=" .. tostring(bdb_1))
    end
    return table.concat(bc8, "|")
end
fns.bCU_21.UpdateCraftProgress = function()
    local PendingCraft = bCU_74.PendingCraft
    if not PendingCraft then
        return
    end
    local bdk = aD7()
    for k, v in PendingCraft.Materials do
        local bdl_1 = tonumber(bdk[k]) or 0
        if bdl_1 < v then
            bCU_74.PendingCraft = nil
            if bCU_74.CraftAttemptCounts then
                bCU_74.CraftAttemptCounts[PendingCraft.Key] = nil
            end
            fns.bCU_21.NotifyAutoCraft(PendingCraft.Text)
            return
        end
    end
    local bdl_2 = PendingCraft.OutputAsset
    if bdl_2 then
        local bdm = tonumber(bdk[PendingCraft.OutputAsset]) or 0
        bdl_2 = bdm > PendingCraft.OutputBefore
    end
    if bdl_2 then
        bCU_74.PendingCraft = nil
        if bCU_74.CraftAttemptCounts then
            bCU_74.CraftAttemptCounts[PendingCraft.Key] = nil
        end
        fns.bCU_21.NotifyAutoCraft(PendingCraft.Text)
    end
end
fns.bCU_21.BeginCraftAttempt = function(Lu, Lv, Lw, Lx, Ly)
    local bdv = bCU_74.CraftAttemptCounts or {}
    bCU_74.CraftAttemptCounts = bdv
    local bdv_1 = bCU_74.CraftBlockedAttempts or {}
    bCU_74.CraftBlockedAttempts = bdv_1
    local bdu_2 = bCU_74.CraftAttemptCounts[Lu]
    local bdC = if bdu_2 then 1 else 0
    local bdA = 2875 * bdC + 2914 * (1 - bdC)
    local bdB = 3724 * bdC + 1921 * (1 - bdC)
    if not ((bdA * 1111 + bdB * 3983 + bdA * bdB) % 16777213 == 11956104) then
        bdu_2 = 0
    end
    local bdv_2 = bdu_2
    if bdv_2 >= 3 then
        bCU_74.CraftBlockedAttempts[Lu] = true
        bCU_74.PendingCraft = nil
        bCU_74.CraftAttemptKey = nil
        if bCU_89.LobbyCraftStatus then
            bCU_89.LobbyCraftStatus:SetText("Last craft: Skipped stalled recipe: " .. Lv)
        end
        aDV:Notify("Auto Craft skipped a stalled recipe: " .. Lv, 6)
        return false
    end
    local bdu_3 = Lw
    local bdw = {}
    if bdu_3 then
        bdu_3 = Lw.Requirements
    end
    local bdy = bdu_3 or {}
    for k, v in bdy do
        local bdu_4 = tostring(v.Asset)
        local bdx_1 = tonumber(Lx[bdu_4]) or 0
        bdw[bdu_4] = bdx_1
    end
    bCU_74.CraftAttemptCounts[Lu] = bdv_2 + 1
    local bdu_5 = (tonumber(Lx[Ly]))
    local bdC_1 = if bdu_5 then 1 else 0
    local bdA_1 = 1847 * bdC_1 + 1311 * (1 - bdC_1)
    local bdB_1 = 3602 * bdC_1 + 1784 * (1 - bdC_1)
    if not ((bdA_1 * 1298 + bdB_1 * 1725 + bdA_1 * bdB_1) % 16777213 == 15263750) then
        bdu_5 = 0
    end
    bCU_74.PendingCraft = { Key = Lu, Text = Lv, Materials = bdw, OutputAsset = Ly, OutputBefore = bdu_5 }
    return true
end
fns.bCU_21.ResetAutoCraftAttempts = function()
    bCU_74.CraftAttemptKey = nil
    bCU_74.PendingCraft = nil
    bCU_74.CraftAttemptCounts = {}
    bCU_74.CraftBlockedAttempts = {}
end
fns.bCU_21.TryCraftSelected = function()
    local bdK = Options.LobbyCraftItems.Value or {}
    local bdK_1 = aD7()
    for k, v in bdK do
        local bdJ_2 = v and fns.bCU_21.CraftKeys and fns.bCU_21.CraftKeys[k]
        local bdL = bdJ_2
        if bdJ_2 then
            bdJ_2 = fns.bCU_21.CraftingInfo.Recipes.Crafting[bdL]
        end
        local bdN = bdJ_2 or {}
        for k2, v in bdN do
            local bdJ_4 = fns.bCU_21.CraftAffordable(v, bdK_1) and fns.bCU_21.CraftHasOutputSpace(bdL, v, bdK_1)
            if bdJ_4 then
                local bdJ_5 = fns.bCU_21.CraftAttemptKey(bdL, k2, v, bdK_1)
                if not fns.bCU_21.CraftAttemptBlocked(bdJ_5) then
                    local bdM_1 = bCU_74.CraftAttemptKey == bdJ_5
                    if bdM_1 then
                        local bdN_1 = os.clock()
                        bdM_1 = bdN_1 < (bCU_74.NextCraftAttempt or 0)
                    end
                    if not bdM_1 then
                        if not not fns.bCU_21.BeginCraftAttempt(bdJ_5, k, v, bdK_1, bdL) then
                            bCU_74.CraftAttemptKey = bdJ_5
                            bCU_74.NextCraftAttempt = os.clock() + 3
                            pcall(Actions2.CraftRecipe, bdL, k2, 1)
                            return true
                        end
                    end
                end
            end
        end
    end
    return false
end
fns.bCU_21.TryCraftSprite = function()
    local bd1 = fns.bCU_21.CraftingInfo and fns.bCU_21.CraftingInfo.Recipes and fns.bCU_21.CraftingInfo.Recipes.Crafting and fns.bCU_21.CraftingInfo.Recipes.Crafting.SpriteGrey
    local bd1_1 = Options.LobbySpriteSources and Options.LobbySpriteSources.Value
    local bd3 = {}
    local bd4 = bd1_1
    local beb = if bd4 then 1 else 0
    local bd9 = 3452 * beb + 3475 * (1 - beb)
    local bea = 967 * beb + 3763 * (1 - beb)
    if not ((bd9 * 3557 + bea * 2911 + bd9 * bea) % 16777213 == 1654572) then
        bd4 = bd3
    end
    local bd1_2 = bd4
    local bd3_1 = aD7()
    local bd5 = bd1 or {}
    for k, v in bd5 do
        local bd2_1 = false
        local bd4_2 = v.Requirements and v.Requirements[1]
        local bd5_1 = bd4_2
        if bd4_2 then
            bd4_2 = tostring(bd5_1.Asset)
        end
        local bd6 = bd4_2
        if bd4_2 then
            bd4_2 = bCU_31(bd6)
        end
        local bd6_1 = bd4_2
        local bd7 = v.Requirements or {}
        for k, v in bd7 do
            if v.Asset == "SpriteRainbow" then
                bd2_1 = true
            end
        end
        local bd4_4 = bd6_1 and bd1_2[bd6_1] == true
        if bd4_4 then
            bd4_4 = not (bd2_1 and Toggles.LobbyKeepRainbowSprites.Value)
        end
        if bd4_4 then
            bd4_4 = fns.bCU_21.CraftAffordable(v, bd3_1)
        end
        if bd4_4 then
            bd4_4 = fns.bCU_21.CraftHasOutputSpace("SpriteGrey", v, bd3_1)
        end
        if bd4_4 then
            local bd2_2 = fns.bCU_21.CraftAttemptKey("SpriteGrey", k, v, bd3_1)
            if not fns.bCU_21.CraftAttemptBlocked(bd2_2) then
                local bd4_5 = bCU_74.CraftAttemptKey == bd2_2
                if bd4_5 then
                    local bd6_3 = os.clock()
                    bd4_5 = bd6_3 < (bCU_74.NextCraftAttempt or 0)
                end
                if not bd4_5 then
                    local bd4_6 = bd5_1 and bCU_31(bd5_1.Asset)
                    local bd5_2 = bd4_6 or "Sprite"
                    local format = string.format
                    local bd6_4 = tonumber(v.Amount) or 1
                    local bd7_2 = format("%s -> %d Grey Sprites", bd5_2, bd6_4)
                    if not not fns.bCU_21.BeginCraftAttempt(bd2_2, bd7_2, v, bd3_1, "SpriteGrey") then
                        bCU_74.CraftAttemptKey = bd2_2
                        bCU_74.NextCraftAttempt = os.clock() + 3
                        pcall(Actions2.CraftRecipe, "SpriteGrey", k, 1)
                        return true
                    end
                end
            end
        end
    end
    return false
end
fns.bCU_21.TryBuyShop = function(Mn, Mo)
    local Shops
    local bep
    Shops = nil
    bep = nil
    local beq = Options[Mo] and Options[Mo].Value
    local ber = {}
    local bes = beq
    local beE = if bes then 1 else 0
    local beC = 3827 * beE + 2379 * (1 - beE)
    local beD = 3223 * beE + 1503 * (1 - beE)
    if not ((beC * 4065 + beD * 1515 + beC * beD) % 16777213 == 15996808) then
        bes = ber
    end
    local beq_1 = bes
    bep = fns.bCU_21.ResolveShop(Mn)
    if not bep then
        return false
    end
    Shops = nil
    pcall(function()
        Shops = bep.Data.Shops
    end)
    local ber_1 = {}
    local bes_1 = aGi() or ber_1
    local beu = bes_1.ShopData and bes_1.ShopData.PurchaseHistory and bes_1.ShopData.PurchaseHistory[Mn] or {}
    local beu_1 = bes_1.ShopData and bes_1.ShopData.ResetKeys and bes_1.ShopData.ResetKeys[Mn] or {}
    local beu_2 = bep.Data.ResetKeys or {}
    local beu_3 = aD7()
    local bew = bCU_74.ShopAttemptKeys or {}
    bCU_74.ShopAttemptKeys = bew
    local bev_1 = type(Shops) == "table" and Shops
    local bex = bev_1 or {}
    for k, v in bex do
        local bew_2 = v.Items or {}
        for k2, v2 in bew_2 do
            local bev_3 = aFk(v2)
            if beq_1[bev_3] then
                local bew_3 = v2.Currency or v.Currency or ""
                local bev_5 = tostring(bew_3)
                local max2 = math.max
                local bex_1 = tonumber(v2.Price) or 0
                local bey = tonumber(v2.Discount) or 0
                local bez = max2(bex_1 - bey, 0)
                local bew_5 = type(beu[k]) == "table" and beu[k]
                local bey_1 = bew_5 or {}
                local bex_3 = v2.Name or v2.Asset
                local bey_2 = tonumber(bey_1[tostring(bex_3)]) or 0
                local bew_7 = bey_2
                if v2.Restocks and beu_1[k] ~= beu_2[k] then
                    bew_7 = 0
                end
                local bey_3 = v2.Stock == nil and math.huge
                if not bey_3 then
                    local max = math.max
                    local beA = tonumber(v2.Stock) or 0
                    bey_3 = max(beA - bew_7, 0)
                end
                local bex_7 = bey_3
                local bey_4 = tonumber(beu_3[bev_5]) or 0
                local bey_5 = table.concat({ Mn, tostring(k), tostring(k2), tostring(bew_7), tostring(bey_4) }, "|")
                local bew_8 = bex_7 > 0 and bey_4 >= bez
                if bew_8 then
                    local bev_7 = os.clock()
                    bew_8 = bev_7 >= (bCU_74.ShopAttemptKeys[bey_5] or 0)
                end
                if bew_8 then
                    bCU_74.ShopAttemptKeys[bey_5] = os.clock() + 5
                    local bev_8 = pcall(Actions2.ShopPurchaseItem, Mn, k, k2, 1)
                    if bev_8 then
                        return true
                    end
                end
            end
        end
    end
    return false
end
fns.bCU_21.ShopPurchasePending = function(M_, M0)
    local beR
    local Shops
    beR = nil
    Shops = nil
    local beV = Options[M0] and Options[M0].Value or {}
    beR = fns.bCU_21.ResolveShop(M_)
    if not beR then
        return false
    end
    Shops = nil
    pcall(function()
        Shops = beR.Data.Shops
    end)
    local beU_1 = {}
    local beV_1 = aGi() or beU_1
    local beX = beV_1.ShopData and beV_1.ShopData.PurchaseHistory and beV_1.ShopData.PurchaseHistory[M_] or {}
    local beX_1 = beV_1.ShopData and beV_1.ShopData.ResetKeys and beV_1.ShopData.ResetKeys[M_] or {}
    local beW_2 = {}
    local beX_2 = beR.Data.ResetKeys
    local be6 = if beX_2 then 1 else 0
    local be4 = 1222 * be6 + 3757 * (1 - be6)
    local be5 = 1348 * be6 + 1455 * (1 - be6)
    if not ((be4 * 1888 + be5 * 2460 + be4 * be5) % 16777213 == 7270472) then
        beX_2 = beW_2
    end
    local beW_3 = beX_2
    local beX_3 = aD7()
    local beY = type(Shops) == "table" and Shops
    local be_ = beY or {}
    for k, v in be_ do
        local beZ_1 = v.Items or {}
        for k2, v2 in beZ_1 do
            local beY_2 = aFk(v2)
            if beV[beY_2] then
                local beZ_2 = v2.Currency or v.Currency or ""
                local beY_4 = tostring(beZ_2)
                local max = math.max
                local be__1 = tonumber(v2.Price) or 0
                local be0 = (tonumber(v2.Discount))
                local be6_1 = if be0 then 1 else 0
                local be4_1 = 3030 * be6_1 + 803 * (1 - be6_1)
                local be5_1 = 864 * be6_1 + 1444 * (1 - be6_1)
                if not ((be4_1 * 2297 + be5_1 * 149 + be4_1 * be5_1) % 16777213 == 9706566) then
                    be0 = 0
                end
                local be1 = max(be__1 - be0, 0)
                local beZ_4 = type(beX[k]) == "table" and beX[k]
                local be0_1 = beZ_4 or {}
                local be__3 = v2.Name or v2.Asset
                local be0_2 = tonumber(be0_1[tostring(be__3)]) or 0
                local beZ_6 = be0_2
                if v2.Restocks and beX_1[k] ~= beW_3[k] then
                    beZ_6 = 0
                end
                local be0_3 = v2.Stock == nil and math.huge
                if not be0_3 then
                    local be__6 = math.max
                    local be2 = tonumber(v2.Stock) or 0
                    be0_3 = be__6(be2 - beZ_6, 0)
                end
                local be__7 = be0_3 > 0
                if be__7 then
                    local beZ_8 = tonumber(beX_3[beY_4]) or 0
                    be__7 = beZ_8 >= be1
                end
                if be__7 then
                    return true
                end
            end
        end
    end
    return false
end
fns.bCU_21.LobbyShopPurchasePending = function()
    local Shop
    local bfk
    Shop = nil
    bfk = nil
    if not Toggles.LobbyShopAutoBuy.Value then
        return false
    end
    bfk = nil
    pcall(function()
        bfk = aFw.GET_SHOP_REPLICA:InvokeSelf("ExpeditionShop")
    end)
    Shop = nil
    pcall(function()
        Shop = bfk.Data.Shops.Shop
    end)
    local bfm = Options.LobbyShopItems.Value or {}
    local bfm_1 = aD7()
    local bfn = type(Shop) == "table" and Shop.Items
    local bfo = {}
    local bfp = bfn
    local bfw = if bfp then 1 else 0
    local bfu = 1719 * bfw + 1321 * (1 - bfw)
    local bfv = 2160 * bfw + 2090 * (1 - bfw)
    if not ((bfu * 2240 + bfv * 718 + bfu * bfv) % 16777213 == 9114480) then
        bfp = bfo
    end
    for k, v in bfp do
        local bfo_1 = v.Name or v.Asset or ""
        local bfn_2 = tostring(bfo_1)
        local bfp_1 = v.Currency or Shop.Currency or ""
        local bfo_3 = tostring(bfp_1)
        local max = math.max
        local bfq = tonumber(v.Price) or 0
        local bfr = tonumber(v.Discount) or 0
        local bfs = max(bfq - bfr, 0)
        local bfp_3 = bfm[bfn_2]
        if bfp_3 then
            local bfn_3 = v.Stock == nil
            if not bfn_3 then
                local bfq_1 = tonumber(v.Stock) or 0
                bfn_3 = bfq_1 > 0
            end
            bfp_3 = bfn_3
        end
        if bfp_3 then
            local bfn_4 = tonumber(bfm_1[bfo_3]) or 0
            bfp_3 = bfn_4 >= bfs
        end
        if bfp_3 then
            return true
        end
    end
    return false
end
fns.bCU_21.OtherShopsPurchasePending = function(NT)
    if not (Toggles.LobbyAutoBuyEvent and Toggles.LobbyAutoBuyEvent.Value) then
        return false
    end
    local bfN = aD6 or {}
    for k, v in bfN do
        local bfK, bfL
        local bfU = v
        bfK = nil
        bfL = false
        pcall(function()
            if aDR(bfU) == "ShopData" then
                bfK = tostring(bfU.Data.DataKey)
                if bfK and bfK ~= "GoldShop" and bfK ~= "WanderingTrader" then
                    bfL = true
                end
            end
        end)
        if bfL and bfK then
            if fns.bCU_21.ShopPurchasePending(bfK, NT) then
                return true
            end
        end
    end
    return false
end
fns.bCU_21.ExpeditionShopPurchasePending = function(N0)
    local Shop
    local bfW
    Shop = nil
    bfW = nil
    if not (Toggles.LobbyAutoBuyExpedition and Toggles.LobbyAutoBuyExpedition.Value) then
        return false
    end
    local bfZ = Options[N0] and Options[N0].Value or {}
    bfW = nil
    pcall(function()
        bfW = aFw.GET_SHOP_REPLICA:InvokeSelf("ExpeditionShop")
    end)
    Shop = nil
    pcall(function()
        Shop = bfW.Data.Shops.Shop
    end)
    local bfY_1 = type(Shop) ~= "table" or type(Shop.Items) ~= "table"
    if bfY_1 then
        return false
    end
    local bfY_2 = aD7()
    for k, v in Shop.Items do
        if type(v) == "table" then
            local bfZ_1 = v.Name
            local bgc = if bfZ_1 then 1 else 0
            local bga = 1287 * bgc + 3610 * (1 - bgc)
            local bgb = 1260 * bgc + 281 * (1 - bgc)
            if not ((bga * 846 + bgb * 2871 + bga * bgb) % 16777213 == 6327882) then
                bfZ_1 = v.Asset
            end
            local bf_ = bfZ_1 or ""
            local bfZ_2 = tostring(bf_)
            local bf__1 = aFk(v)
            if bfZ[bfZ_2] or bfZ[bf__1] then
                local bf__2 = v.Currency or Shop.Currency or ""
                local bfZ_4 = tostring(bf__2)
                local bf__3 = math.max
                local bf0_1 = tonumber(v.Price) or 0
                local bf1 = tonumber(v.Discount) or 0
                local bf2 = bf__3(bf0_1 - bf1, 0)
                local bf__4 = v.Stock == nil
                if not bf__4 then
                    local bf0_2 = tonumber(v.Stock) or 0
                    bf__4 = bf0_2 > 0
                end
                local bf0_3 = bf__4
                if bf0_3 then
                    local bf__5 = tonumber(bfY_2[bfZ_4]) or 0
                    bf0_3 = bf__5 >= bf2
                end
                if bf0_3 then
                    return true
                end
            end
        end
    end
    return false
end
fns.bCU_21.TryBuyAllOtherShops = function(Os)
    local bgn = aD6 or {}
    for k, v in bgn do
        local bgl, bgk
        local bgu = v
        bgl = nil
        bgk = false
        pcall(function()
            if aDR(bgu) == "ShopData" then
                bgl = tostring(bgu.Data.DataKey)
                if bgl and bgl ~= "GoldShop" and bgl ~= "WanderingTrader" then
                    bgk = true
                end
            end
        end)
        if bgk and bgl then
            if fns.bCU_21.TryBuyShop(bgl, Os) then
                return true
            end
        end
    end
    return false
end
fns.bCU_21.TryBuyExpeditionShop = function(Oz)
    local bgw
    local Shop
    Shop = nil
    bgw = nil
    local bgx = Options[Oz] and Options[Oz].Value
    local bgy = {}
    local bgz = bgx
    local bgH = if bgz then 1 else 0
    local bgF = 2181 * bgH + 2944 * (1 - bgH)
    local bgG = 3682 * bgH + 2547 * (1 - bgH)
    if not ((bgF * 83 + bgG * 1741 + bgF * bgG) % 16777213 == 14621827) then
        bgz = bgy
    end
    local bgx_1 = bgz
    bgw = nil
    pcall(function()
        bgw = aFw.GET_SHOP_REPLICA:InvokeSelf("ExpeditionShop")
    end)
    Shop = nil
    pcall(function()
        Shop = bgw.Data.Shops.Shop
    end)
    local bgy_1 = type(Shop) ~= "table" or type(Shop.Items) ~= "table"
    if bgy_1 then
        return false
    end
    local bgy_2 = aD7()
    local bgA = bCU_74.ShopAttemptKeys or {}
    bCU_74.ShopAttemptKeys = bgA
    for k, v in Shop.Items do
        if type(v) == "table" then
            local bgA_1 = v.Name or v.Asset or ""
            local bgz_3 = tostring(bgA_1)
            local bgA_2 = aFk(v)
            if bgx_1[bgz_3] or bgx_1[bgA_2] then
                local bgA_3 = v.Currency or Shop.Currency or ""
                local bgz_5 = tostring(bgA_3)
                local max = math.max
                local bgB_1 = tonumber(v.Price) or 0
                local bgC = tonumber(v.Discount) or 0
                local bgD = max(bgB_1 - bgC, 0)
                local bgA_5 = v.Stock == nil
                if not bgA_5 then
                    local bgB_2 = tonumber(v.Stock) or 0
                    bgA_5 = bgB_2 > 0
                end
                local bgB_3 = bgA_5
                if bgB_3 then
                    local bgA_6 = tonumber(bgy_2[bgz_5]) or 0
                    bgB_3 = bgA_6 >= bgD
                end
                if bgB_3 then
                    local bgz_6 = "ExpeditionShop|" .. tostring(k) .. "|" .. tostring(v.Stock)
                    local bgA_7 = os.clock()
                    if bgA_7 >= (bCU_74.ShopAttemptKeys[bgz_6] or 0) then
                        bCU_74.ShopAttemptKeys[bgz_6] = os.clock() + 5
                        local bgz_7 = pcall(Actions2.ExpeditionShopPurchaseItem, "Shop", k, 1)
                        if bgz_7 then
                            return true
                        end
                    end
                end
            end
        end
    end
    return false
end
fns.bCU_21.AutoBuyPending = function()
    local bgO = (fns.bCU_21.LobbyShopPurchasePending())
    if not bgO then
        local bgP_1 = Toggles.LobbyAutoBuyGold.Value and fns.bCU_21.ShopPurchasePending("GoldShop", "LobbyGoldItems")
        bgO = bgP_1
    end
    if not bgO then
        local bgP_2 = Toggles.LobbyAutoBuyTrader.Value and fns.bCU_21.ShopPurchasePending("WanderingTrader", "LobbyTraderItems")
        bgO = bgP_2
    end
    if not bgO then
        local bgP_3 = Toggles.LobbyAutoBuyEvent and Toggles.LobbyAutoBuyEvent.Value and fns.bCU_21.OtherShopsPurchasePending("LobbyEventItems")
        bgO = bgP_3
    end
    if not bgO then
        local bgP_4 = Toggles.LobbyAutoBuyExpedition and Toggles.LobbyAutoBuyExpedition.Value and fns.bCU_21.ExpeditionShopPurchasePending("LobbyExpeditionItems")
        bgO = bgP_4
    end
    return bgO
end
fns.bCU_21.JoinBlockReason = function()
    local bgR = bCU_74.PendingCraft or fns.bCU_21.AutoCraftPending()
    if bgR then
        return "Auto Craft"
    elseif fns.bCU_21.AutoBuyPending() then
        return "Auto Buy"
    else
        return nil
    end
end
fns.bCU_21.LobbyAutomationStep = function()
    local bgT = (fns.bCU_29())
    if not bgT then
        local bgU_1 = os.clock()
        bgT = bgU_1 < (bCU_74.NextLobbyAutomation or 0)
    end
    if bgT then
        return
    end
    bCU_74.NextLobbyAutomation = os.clock() + 1
    fns.bCU_21.UpdateCraftProgress()
    local bgT_1 = bCU_74.PendingCraft
    if bgT_1 then
        local bgU_2 = os.clock()
        local bgV_2 = bCU_74.NextCraftAttempt
        local bgZ = if bgV_2 then 1 else 0
        local bgX = 1706 * bgZ + 335 * (1 - bgZ)
        local bgY = 78 * bgZ + 1304 * (1 - bgZ)
        if not ((bgX * 1186 + bgY * 3277 + bgX * bgY) % 16777213 == 2411990) then
            bgV_2 = 0
        end
        bgT_1 = bgU_2 < bgV_2
    end
    if bgT_1 then
        return
    end
    local bgT_2 = Toggles.LobbyAutoCraft.Value and fns.bCU_21.TryCraftSelected()
    if bgT_2 then
        return
    end
    local bgT_3 = Toggles.LobbyAutoCraftSprite.Value and fns.bCU_21.TryCraftSprite()
    if bgT_3 then
        return
    end
    local bg1 = if not fns.bCU_21.AutoCraftPending() then 1 else 0
    if bg1 == 1 then
        fns.bCU_21.FinishAutoCraftBatch()
    end
    local bgT_4 = Toggles.LobbyAutoBuyGold.Value and fns.bCU_21.TryBuyShop("GoldShop", "LobbyGoldItems")
    if bgT_4 then
        return
    end
    local bgT_5 = Toggles.LobbyAutoBuyTrader.Value and fns.bCU_21.TryBuyShop("WanderingTrader", "LobbyTraderItems")
    if bgT_5 then
        return
    end
    local bgT_6 = Toggles.LobbyAutoBuyEvent and Toggles.LobbyAutoBuyEvent.Value and fns.bCU_21.TryBuyAllOtherShops("LobbyEventItems")
    if bgT_6 then
        return
    end
    local bgT_7 = Toggles.LobbyAutoBuyExpedition and Toggles.LobbyAutoBuyExpedition.Value and fns.bCU_21.TryBuyExpeditionShop("LobbyExpeditionItems")
    if bgT_7 then
        return
    end
end
fns.bCU_21.QueueSummonBanner = function(Po)
    local bg6 = aD6 or {}
    for k, v in bg6 do
        local bg4
        local bhd = v
        bg4 = false
        pcall(function()
            local bg2 = aDR(bhd) == "BannerData" and tostring(bhd.Data.BannerID) == tostring(Po)
            bg4 = bg2
        end)
        if bg4 then
            return bhd
        end
    end
    return nil
end
fns.bCU_21.QueueSummonChoices = function()
    local bhE, bhH
    bhE, bhH = {}, {}
    fns.bCU_21.QueueSummonAssets = {}
    local function bhF(PD)
        local bhe = PD or ""
        PD = tostring(bhe)
        if PD == "" or bhH[PD] then
            return
        end
        local bhf = Units and Units[PD]
        if not bhf then
            bhf = Skins and Skins[PD]
        end
        local bhe_4 = bhf
        if not bhe_4 then
            return
        end
        bhH[PD] = true
        local bhf_1 = bhe_4.DisplayName or bCU_95(PD)
        local bhe_5 = tostring(bhf_1) .. " [" .. PD .. "]"
        fns.bCU_21.QueueSummonAssets[bhe_5] = PD
        table.insert(bhE, bhe_5)
    end
    for k, v in { "Mini", "Standard", "VillainInvasion" } do
        local bhG
        local bhR = v
        bhG = fns.bCU_21.QueueSummonBanner(bhR)
        pcall(function()
            if bhR == "VillainInvasion" then
                local bhi_1 = bhG.Data.CurrentPool or {}
                for k, v in bhi_1 do
                    local bhi_2 = v or {}
                    for k, v in bhi_2 do
                        bhF(v.Asset)
                    end
                end
            else
                local bhi_3 = bhG.Data.CurrentPool.Mythic or {}
                for k, v in bhi_3 do
                    bhF(v.Asset)
                end
                local bhi_4 = bhG.Data.CurrentPool.Secret or {}
                for k, v in bhi_4 do
                    bhF(v.Asset)
                end
            end
        end)
    end
    local bhJ = Units or {}
    for k, v in bhJ do
        local bhI_1 = tostring(v.Rarity)
        local bhK = bhI_1 == "Mythic" or bhI_1 == "Secret"
        local bhI_2 = bhK and v.Limited ~= true and not tostring(k):match("EVO$") and not tostring(k):find("Spirit", 1, true)
        if bhI_2 then
            bhF(k)
        end
    end
    local bhI_3 = {}
    local bhJ_2 = Skins
    local bh_ = if bhJ_2 then 1 else 0
    local bhY = 25 * bh_ + 3359 * (1 - bh_)
    local bhZ = 3754 * bh_ + 1656 * (1 - bh_)
    if not ((bhY * 3361 + bhZ * 1625 + bhY * bhZ) % 16777213 == 6278125) then
        bhJ_2 = bhI_3
    end
    for k, v in bhJ_2 do
        local bhI_4 = tostring(v.Rarity) == "Secret" or tostring(k):lower():find("villain")
        if bhI_4 then
            bhF(k)
        end
    end
    table.sort(bhE)
    return bhE
end
fns.bCU_21.QueueSummonOwned = function(Qc)
    local bh6
    local bh7 = 0
    bh6 = aGi()
    pcall(function()
        local bh4 = aFE(aFL.PlayerData)
        if type(bh4) == "table" then
            bh6 = bh4
        end
    end)
    local bh8 = bh6 and bh6.UnitData
    local bh9 = {}
    local bia = bh8
    local bie = if bia then 1 else 0
    local bic = 1523 * bie + 3824 * (1 - bie)
    local bid = 1451 * bie + 2992 * (1 - bie)
    if not ((bic * 3328 + bid * 3085 + bic * bid) % 16777213 == 11754752) then
        bia = bh9
    end
    for k, v in bia do
        if tostring(v.Asset) == tostring(Qc) then
            bh7 += 1
        end
    end
    local bia_1 = bh6 and bh6.SkinData or {}
    for k, v in bia_1 do
        if tostring(v.Asset) == tostring(Qc) then
            bh7 += 1
        end
    end
    return bh7
end
fns.bCU_21.QueueSummonCurrency = function(Qn)
    local Qo
    local Qq
    Qo = 0
    Qq = aGi()
    pcall(function()
        local bir = aFE(aFL.PlayerData)
        if type(bir) == "table" then
            Qq = bir
        end
    end)
    pcall(function()
        local bit = Qq[Qn]
        if not bit then
            bit = Qq.ItemData and Qq.ItemData[Qn]
        end
        local biu_2 = bit
        local bit_1 = type(biu_2) == "table" and biu_2.Amount
        local biv = bit_1 or biu_2
        local bit_2 = (tonumber(biv))
        local biz = if bit_2 then 1 else 0
        local bix = 2517 * biz + 393 * (1 - biz)
        local biy = 1762 * biz + 2122 * (1 - biz)
        if not ((bix * 677 + biy * 2331 + bix * biy) % 16777213 == 10246185) then
            bit_2 = 0
        end
        Qo = bit_2
    end)
    return Qo
end
fns.bCU_21.LoadQueueSummonSettings = function()
    if bCU_74.QueueSummonSaved then
        return bCU_74.QueueSummonSaved
    end
    bCU_74.QueueSummonSaved = { Enabled = false, Targets = {}, Amount = 1, RequirePity = false }
    local biC = aE7 and isfile(aEb.QueueSummonFile)
    if biC then
        pcall(function()
            local data = HttpService:JSONDecode(readfile(aEb.QueueSummonFile))
            if type(data) == "table" then
                bCU_74.QueueSummonSaved = data
            end
        end)
    end
    if type(bCU_74.QueueSummonSaved.Targets) ~= "table" then
        bCU_74.QueueSummonSaved.Targets = {}
        local biC_1 = type(bCU_74.QueueSummonSaved.Target) == "string" and bCU_74.QueueSummonSaved.Target ~= ""
        if biC_1 then
            bCU_74.QueueSummonSaved.Targets[bCU_74.QueueSummonSaved.Target] = true
        end
    end
    if bCU_74.QueueSummonSaved.RequirePity == nil then
        bCU_74.QueueSummonSaved.RequirePity = false
    end
    return bCU_74.QueueSummonSaved
end
fns.bCU_21.SaveQueueSummonSettings = function()
    if not aE7 then
        return
    end
    pcall(function()
        local biH = Toggles.QueueSummoning.Value == true
        local Value = Options.QueueSummonUnit.Value
        local biJ = tonumber(Options.QueueSummonOwnedAmount.Value) or 1
        local biK = {
            Enabled = biH,
            Targets = Value,
            Amount = biJ,
            RequirePity = Toggles.QueueSummonRequirePity.Value == true
        }
        bCU_74.QueueSummonSaved = biK
        writefile(aEb.QueueSummonFile, HttpService:JSONEncode(biK))
        if biK.Enabled then
            writefile(aEb.QueueSummonFlag, "1")
        elseif isfile(aEb.QueueSummonFlag) then
            delfile(aEb.QueueSummonFlag)
        end
    end)
end
fns.bCU_21.SetQueueSummonStatus = function(Q0)
    if bCU_89.QueueSummonStatus then
        bCU_89.QueueSummonStatus:SetText("Status: " .. Q0)
    end
end
fns.bCU_21.QueueSummonPendingTargets = function()
    local biS = Options.QueueSummonUnit.Value or {}
    local biS_2
    local biR_1 = biS
    if type(biR_1) == "string" then
        biR_1 = { [biR_1] = true }
    end
    local max = math.max
    local biT = (tonumber(Options.QueueSummonOwnedAmount.Value))
    local biT_1
    local bi_ = if biT then 1 else 0
    local biY = 2789 * bi_ + 1506 * (1 - bi_)
    local biZ = 3799 * bi_ + 680 * (1 - bi_)
    if not ((biY * 2103 + biZ * 3220 + biY * biZ) % 16777213 == 11916245) then
        biT = 1
    end
    local biU = max(1, biT)
    biT_1, biS_2 = {}, 0
    local biV = type(biR_1) == "table" and biR_1
    local biW = biV or {}
    for k, v in biW do
        local biR_3 = v and fns.bCU_21.QueueSummonAssets and fns.bCU_21.QueueSummonAssets[k]
        if biR_3 then
            biS_2 += 1
            local biR_4 = fns.bCU_21.QueueSummonOwned(biR_3)
            if biR_4 < biU then
                table.insert(biT_1, { Label = k, Asset = biR_3, Owned = biR_4, Wanted = biU })
            end
        end
    end
    table.sort(biT_1, function(Rd, Re)
        return Rd.Label < Re.Label
    end)
    return biT_1, biS_2
end
fns.bCU_21.QueueSummonBannerTarget = function(Rf, Rg)
    local bjf
    bjf = nil
    bjf = {}
    pcall(function()
        local bi7 = Rf.Data.CurrentPool or {}
        for k, v in bi7 do
            table.insert(bjf, v)
        end
    end)
    for k, v in bjf do
        local bjg = type(v) == "table" and v
        local bji = bjg or {}
        for k, v in bji do
            for k, v2 in Rg do
                if tostring(v.Asset) == v2.Asset then
                    return v2
                end
            end
        end
    end
    return nil
end
fns.bCU_21.QueueSummonPityState = function(Rs, Rt, Ru)
    local bjP, bjR
    local bjU = Rt and Rt.Data and Rt.Data.BannerInfo or {}
    local bjT_1 = tonumber(bjU.Cost) or 0
    local bjQ = bjT_1
    if bjU.Discount == true then
        pcall(function()
            local bjC = aFE(aFL.SessionData)
            local bjD = tonumber(bjC.SessionBoosts.BannerDiscount.Total) or 0
            bjQ = math.round(bjQ * (1 - bjD))
        end)
    end
    local bjT_2 = bjU.Currency or "Gem"
    local bjU_1 = tostring(bjT_2)
    bjR = "Mythic"
    pcall(function()
        if Ru and Ru.Asset then
            local bjG = Units and Units[Ru.Asset]
            if not bjG then
                bjG = Skins and Skins[Ru.Asset]
            end
            local bjF_3 = bjG
            if bjG then
                bjG = bjF_3.Rarity
            end
            if bjG then
                bjR = tostring(bjF_3.Rarity)
            end
        end
    end)
    local bjT_3 = bjU.Pity
    if bjT_3 then
        bjT_3 = bjU.Pity[bjR] or bjU.Pity.Mythic
    end
    local bjS_2 = tonumber(bjT_3) or 0
    bjP = 0
    pcall(function()
        local bjI = aGi().BannerData[Rs]
        local bjJ = bjI and bjI.Pity and (bjI.Pity[bjR] or bjI.Pity.Mythic)
        local bjI_1 = tonumber(bjJ) or 0
        bjP = bjI_1
    end)
    local bjS_3 = bjS_2 > 0 and math.max(0, bjS_2 - bjP)
    local bjV_2 = bjS_3 or 0
    return bjQ, bjU_1, bjP, bjS_2, math.max(bjQ, bjV_2 * bjQ), bjR
end
fns.bCU_21.QueueSummonStep = function()
    local bj8_1
    local bj7_1
    local bj6_1
    local bj2_1
    local bj1_1
    local bj5_2
    local bj4_2
    local bj__1, bj__2
    local bj0_1, bj0_7
    bCU_74.QueueSummonBlocking = false
    if not Toggles.QueueSummoning.Value then
        fns.bCU_21.SetQueueSummonStatus("Disabled")
        return
    end
    bj0_1, bj__1 = fns.bCU_21.QueueSummonPendingTargets()
    if bj__1 == 0 then
        fns.bCU_21.SetQueueSummonStatus("Select one or more units")
        return
    end
    if #bj0_1 == 0 then
        fns.bCU_21.SetQueueSummonStatus("All targets acquired, resuming automation")
        return
    end
    bj2_1, bj__2, bj1_1 = nil, nil, nil
    for k, v in { "Mini", "Standard", "VillainInvasion" } do
        local bj3_1 = fns.bCU_21.QueueSummonBanner(v)
        local bj4_1 = bj3_1 and fns.bCU_21.QueueSummonBannerTarget(bj3_1, bj0_1)
        if bj4_1 then
            bj2_1, bj__2, bj1_1 = v, bj3_1, bj4_1
            break
        end
    end
    local bj0_2 = not bj1_1
    local bj3_2 = not bj__2
    local bke = if bj3_2 then 1 else 0
    local bkc = 784 * bke + 2453 * (1 - bke)
    local bkd = 3170 * bke + 882 * (1 - bke)
    if not ((bkc * 2690 + bkd * 3846 + bkc * bkd) % 16777213 == 8847) then
        bj3_2 = bj0_2
    end
    if bj3_2 then
        if bCU_89.QueueSummonBanner then
            bCU_89.QueueSummonBanner:SetText("Matching Banner: None")
        end
        fns.bCU_21.SetQueueSummonStatus("Waiting for a selected unit to enter a banner")
        return
    end
    local bj3_3 = Units and Units[bj1_1.Asset]
    local bke_1 = if bj3_3 then 1 else 0
    local bkc_1 = 3154 * bke_1 + 3568 * (1 - bke_1)
    local bkd_1 = 3092 * bke_1 + 249 * (1 - bke_1)
    if not ((bkc_1 * 959 + bkd_1 * 2274 + bkc_1 * bkd_1) % 16777213 == 3030849) then
        bj3_3 = Skins and Skins[bj1_1.Asset]
    end
    local bj0_5 = bj3_3
    if bj3_3 then
        bj3_3 = bj0_5.DisplayName
    end
    local bj0_6 = bj3_3 or bCU_95(bj1_1.Asset)
    local bj3_4 = tostring(bj0_6)
    if bCU_89.QueueSummonBanner then
        bCU_89.QueueSummonBanner:SetText("Matching Banner: " .. bj2_1 .. " - " .. bj3_4)
    end
    bj0_7, bj8_1, bj6_1, bj5_2, bj4_2, bj7_1 = fns.bCU_21.QueueSummonPityState(bj2_1, bj__2, bj1_1)
    local bj__3 = fns.bCU_21.QueueSummonCurrency(bj8_1)
    local bj9 = 50
    local bka = bj0_7 * 50
    if Toggles.QueueSummonRequirePity.Value and bj__3 < bj4_2 then
        fns.bCU_21.SetQueueSummonStatus(string.format("Saving for %s %s pity: %s/%s %s (%d/%d)", bj2_1, bj7_1, aEW(bj__3), aEW(bj4_2), bCU_95(bj8_1), bj6_1, bj5_2))
        return
    end
    if bj__3 < bka then
        fns.bCU_21.SetQueueSummonStatus(string.format("Not enough %s for a %dx summon: %s/%s", bCU_95(bj8_1), bj9, aEW(bj__3), aEW(bka)))
        return
    end
    bCU_74.QueueSummonBlocking = true
    local bj__4 = bCU_74.AutoJoinSerial or 0
    bCU_74.AutoJoinSerial = bj__4 + 1
    local bj__5 = bCU_74.BountyJoinSerial or 0
    bCU_74.BountyJoinSerial = bj__5 + 1
    bCU_74.AutoJoinPending = false
    bCU_74.BountyJoinPending = false
    if fns.bCU_29() then
        if bCU_74.Placing then
            fns.bCU_21.SetQueueSummonStatus("Waiting for placement to finish")
            return
        end
        local bj__6 = os.clock()
        if bj__6 >= (bCU_74.QueueSummonReturnAt or 0) then
            bCU_74.QueueSummonReturnAt = os.clock() + 10
            fns.bCU_21.SetQueueSummonStatus("Returning to lobby to summon")
            bCU_32()
        end
        return
    end
    local bj__7 = os.clock()
    if bj__7 < (bCU_74.NextQueueSummon or 0) then
        return
    end
    bCU_74.NextQueueSummon = os.clock() + 1
    fns.bCU_21.SetQueueSummonStatus(string.format("%dx %s summon for %s, owned %d/%d", bj9, bj2_1, bj3_4, bj1_1.Owned, bj1_1.Wanted))
    pcall(Actions2.Summon, bj2_1, bj9)
end
fns.bCU_21.JOIN_FALLBACK = { "Story", "Raid", "Challenge", "Expedition", "Event", "Bounty" }
fns.bCU_21.JOIN_PRIORITY_MODES = { "Story", "Raid", "Expedition", "Challenge", "Event", "Bounty" }
fns.bCU_21.JoinModeEnabled = function(Sy)
    if Sy == "Story" then
        return Toggles.JoinStory.Value
    elseif Sy == "Raid" then
        return Toggles.JoinRaid.Value
    elseif Sy == "Expedition" then
        return Toggles.JoinExpedition.Value
    elseif Sy == "Challenge" then
        return Toggles.JoinChallenge.Value
    elseif Sy == "Event" then
        return Toggles.JoinEvent.Value
    elseif Sy == "Bounty" then
        return Toggles.BountyAutoJoin.Value or Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
    else
        return false
    end
end
fns.bCU_21.PreferredJoinMode = function()
    local bkp_1
    local bko_1
    bkp_1, bko_1 = nil, nil
    for k, v in fns.bCU_21.JOIN_FALLBACK do
        local bkq = (fns.bCU_21.JoinModeEnabled(v))
        if bkq then
            local bkr_1 = os.clock()
            bkq = bkr_1 >= (bCU_74["PrioritySkip" .. v] or 0)
        end
        if bkq then
            if not Toggles.AutoJoinPriority.Value then
                return v
            end
            local bkq_1 = tonumber(Options[v .. "JoinPriority"].Value) or 0
            if bko_1 == nil or bkq_1 > bko_1 then
                bkp_1, bko_1 = v, bkq_1
            end
        end
    end
    return bkp_1
end
fns.bCU_21.BountyBoard = function()
    local bkA = aGi()
    return bkA.QuestData and bkA.QuestData.BountyBoard or nil
end
fns.bCU_21.BountyInfo = function(SQ)
    local bkD
    if not fns.bCU_21.QuestInformation then
        pcall(function()
            fns.bCU_21.QuestInformation = require(Information.Quests)
        end)
    end
    bkD = nil
    pcall(function()
        bkD = fns.bCU_21.QuestInformation:GetQuestInfo("BountyBoard", SQ)
    end)
    return bkD
end
fns.bCU_21.BountyObjectiveType = function(SZ)
    local bkH = SZ and SZ.Conditions or {}
    for k, v in bkH do
        if v.ValueName == "Gamemode" then
            return tostring(v.Value)
        end
    end
    return SZ and SZ.Type == "Summon" and "Summon" or "Other"
end
fns.bCU_21.ResolveBountyChallengeQueue = function(S3)
    local bk6, bk8
    if not S3 or S3.Gamemode ~= "Challenge" then
        return S3
    end
    local Data
    local bla = aD6 or {}
    for k, v in bla do
        local blm = v
        if aDR(blm) == "ChallengeData" then
            pcall(function()
                Data = blm.Data
            end)
            break
        end
    end
    if type(Data) ~= "table" then
        return nil
    end
    if not fns.bCU_21.ChallengeInfo then
        pcall(function()
            fns.bCU_21.ChallengeInfo = require(Information.ChallengeInfo)
        end)
    end
    local bk9_2 = {}
    local bla_1 = aGi() or bk9_2
    local blb = bla_1.ChallengeData or {}
    local bla_3 = {}
    local blb_1 = blb.ClearHistory
    local blp = if blb_1 then 1 else 0
    local bln = 3647 * blp + 1757 * (1 - blp)
    local blo = 3989 * blp + 3198 * (1 - blp)
    if not ((bln * 886 + blo * 2181 + bln * blo) % 16777213 == 9701921) then
        blb_1 = bla_3
    end
    bk8 = blb_1
    bk6 = blb.DailyClearHistory or {}
    local function bk9_5(Tm, Tn)
        local bkV_1
        local bkU_1
        bkU_1, bkV_1 = pcall(function()
            local ChallengeInfo = fns.bCU_21.ChallengeInfo
            local bkR = bk8[Tm] or {}
            local bkS = bk6[Tm] or {}
            return ChallengeInfo:IsChallengeAvailable(bkR, bkS, Tm, Tn, os.time())
        end)
        return bkU_1 and bkV_1 == true
    end
    local function bla_5(TA, TB, TC)
        S3.ChallengeType = TA
        local bkZ = (tonumber(TB))
        local bk2 = if bkZ then 1 else 0
        local bk0 = 3826 * bk2 + 3694 * (1 - bk2)
        local bk1 = 814 * bk2 + 3811 * (1 - bk2)
        if not ((bk0 * 2082 + bk1 * 2635 + bk0 * bk1) % 16777213 == 13224986) then
            bkZ = TB
        end
        S3.ChallengeIndex = bkZ
        local bkZ_1 = S3.MapName or TC.MapName
        S3.MapName = bkZ_1
        local bkZ_2 = S3.ActName or TC.ActName
        S3.ActName = bkZ_2
        local bkZ_3 = S3.Difficulty or TC.Difficulty
        S3.Difficulty = bkZ_3
        return S3
    end
    local blb_3 = S3.ChallengeType and { tostring(S3.ChallengeType) }
    local bld = blb_3 or { "Regular", "Weekly", "Daily" }
    for k, v in bld do
        local blb_5 = Data[v]
        if type(blb_5) == "table" then
            if S3.ChallengeIndex then
                local ChallengeIndex = S3.ChallengeIndex
                local bld_1 = blb_5[tostring(ChallengeIndex)] or blb_5[ChallengeIndex]
                local ble = bld_1
                if bld_1 then
                    bld_1 = bk9_5(v, ChallengeIndex)
                end
                if bld_1 then
                    local blf = not S3.FilterDrops or fns.bCU_21.ChallengeDropsMatch(v, ChallengeIndex)
                    bld_1 = blf
                end
                if bld_1 then
                    return bla_5(v, ChallengeIndex, ble)
                end
            else
                local blc_2 = {}
                for k in blb_5 do
                    table.insert(blc_2, k)
                end
                table.sort(blc_2, function(TN, TO)
                    local bk3 = tonumber(TN) or 0
                    local bk4 = tonumber(TO) or 0
                    return bk3 < bk4
                end)
                for k, v2 in blc_2 do
                    local blc_3 = (bk9_5(v, v2))
                    if blc_3 then
                        local bld_2 = not S3.FilterDrops or fns.bCU_21.ChallengeDropsMatch(v, v2)
                        blc_3 = bld_2
                    end
                    if blc_3 then
                        return bla_5(v, v2, blb_5[v2])
                    end
                end
            end
        end
    end
    return nil
end
fns.bCU_21.BountyObjectiveQueue = function(T_)
    local blE = T_
    local blF = {}
    if blE then
        blE = T_.Conditions
    end
    local blH = blE or {}
    for k, v in blH do
        local blE_1 = v.CheckType == "Equals" and table.find({ "Gamemode", "MapName", "Difficulty", "ActName", "ChallengeType", "ChallengeIndex" }, v.ValueName)
        if blE_1 then
            blF[v.ValueName] = v.Value
        end
    end
    if blF.Gamemode == "Story" and not blF.ActName then
        blF.ActName = "Act 1"
    end
    if not blF.Gamemode or blF.Gamemode == "Summon" then
        return nil
    end
    return fns.bCU_21.ResolveBountyChallengeQueue(blF)
end
fns.bCU_21.BountyFingerprint = function(T7, T8, T9)
    local Ua = tostring(T7)
    pcall(function()
        local blR = T9 and T9.Objectives or {}
        local json = HttpService:JSONEncode(blR)
        local blT = T8 and T8.ObjectiveProgress or {}
        Ua ..= "|" .. json .. "|" .. HttpService:JSONEncode(blT)
    end)
    return Ua
end
fns.bCU_21.BountyIsBlocked = function(Ud, Ue, Uf)
    local blY = bCU_74.BountyBlocked and bCU_74.BountyBlocked[Ud] == fns.bCU_21.BountyFingerprint(Ud, Ue, Uf)
    return blY
end
fns.bCU_21.ExitInvalidBountyParty = function()
    local bl4, bl5
    local bl6 = (fns.bCU_29())
    local bmd = if bl6 then 1 else 0
    local bmb = 112 * bmd + 816 * (1 - bmd)
    local bmc = 500 * bmd + 1758 * (1 - bmd)
    if not ((bmb * 1707 + bmc * 533 + bmb * bmc) % 16777213 == 513684) then
        local bl7_1 = Toggles.BountyAutoJoin.Value
        if not bl7_1 then
            bl7_1 = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
        end
        bl6 = not bl7_1
    end
    if bl6 then
        return false
    end
    bl5, bl4 = nil, nil
    pcall(function()
        bl5 = aFw.GET_PARTY_DATA_REPLICA:InvokeSelf()
        bl4 = bl5 and bl5.Data and bl5.Data.QueueData
    end)
    local bl6_1 = not bl5 or type(bl4) ~= "table" or bl4.Gamemode ~= "Challenge" or bl4.ChallengeIndex ~= nil
    if bl6_1 then
        return false
    end
    local bl6_2 = os.clock()
    local bl7_2 = bCU_74.NextInvalidBountyExit
    local bmd_1 = if bl7_2 then 1 else 0
    local bmb_1 = 3485 * bmd_1 + 4073 * (1 - bmd_1)
    local bmc_1 = 701 * bmd_1 + 2780 * (1 - bmd_1)
    if not ((bmb_1 * 1490 + bmc_1 * 2008 + bmb_1 * bmc_1) % 16777213 == 9043243) then
        bl7_2 = 0
    end
    if bl6_2 < bl7_2 then
        return true
    end
    bCU_74.NextInvalidBountyExit = os.clock() + 10
    bCU_74.PrioritySkipBounty = os.clock() + 30
    if bCU_74.BountyQuest then
        local bl6_3 = fns.bCU_21.BountyBoard()
        local bl7_3 = bl6_3 and bl6_3.Quests and bl6_3.Quests[bCU_74.BountyQuest]
        local bl7_4 = fns.bCU_21.BountyInfo(bCU_74.BountyQuest)
        local bl8_2 = {}
        local bl9 = bCU_74.BountyBlocked
        local bmd_2 = if bl9 then 1 else 0
        local bmb_2 = 3816 * bmd_2 + 3649 * (1 - bmd_2)
        local bmc_2 = 3729 * bmd_2 + 3259 * (1 - bmd_2)
        if not ((bmb_2 * 1652 + bmc_2 * 2657 + bmb_2 * bmc_2) % 16777213 == 13664636) then
            bl9 = bl8_2
        end
        bCU_74.BountyBlocked = bl9
        bCU_74.BountyBlocked[bCU_74.BountyQuest] = fns.bCU_21.BountyFingerprint(bCU_74.BountyQuest, bl7_3, bl7_4)
    end
    fns.bCU_21.SetBountyStatus("Invalid challenge, leaving party")
    pcall(Actions2.PartyDisband)
    task.delay(0.5, function()
        pcall(Actions2.PartyLeave)
    end)
    return true
end
fns.bCU_21.BountyKinds = function(UJ)
    local bme = UJ
    local bmf = {}
    if bme then
        bme = UJ.Objectives
    end
    local bmh = bme or {}
    for k, v in bmh do
        bmf[fns.bCU_21.BountyObjectiveType(v)] = true
    end
    return bmf
end
fns.bCU_21.BountySignature = function(UP)
    local bmp = fns.bCU_21.BountyObjectiveQueue(UP)
    if not bmp then
        return nil
    end
    local bmq = tostring(bmp.Gamemode)
    local bms = bmp.MapName or bmp.ChallengeType or "Any"
    return bmq .. "|" .. tostring(bms)
end
fns.bCU_21.BountyStackTarget = function(UT)
    local bmz_1
    local bmy_2
    if not Toggles.BountyStack.Value then
        return nil
    end
    local bmu = {}
    local bmw = UT.QuestOrder or {}
    for k, v in bmw do
        local bmv_1 = {}
        local bmw_1 = fns.bCU_21.BountyInfo(v)
        local bmy_1 = bmw_1 and bmw_1.Objectives or {}
        for k, v in bmy_1 do
            local bmw_3 = fns.bCU_21.BountySignature(v)
            if bmw_3 and not bmv_1[bmw_3] then
                bmv_1[bmw_3] = true
                local bmx_2 = bmu[bmw_3] or 0
                bmu[bmw_3] = bmx_2 + 1
            end
        end
    end
    bmz_1, bmy_2 = nil, nil
    for k, v in bmu do
        local bmu_1 = not bmy_2 or v > bmy_2
        if not bmu_1 then
            bmu_1 = v == bmy_2 and k < bmz_1
        end
        if bmu_1 then
            bmz_1, bmy_2 = k, v
        end
    end
    return bmz_1, bmy_2 or 0
end
fns.bCU_21.BountyQuestHasSignature = function(Vc, Vd)
    local bmT = Vc and Vc.Objectives or {}
    for k, v in bmT do
        if fns.bCU_21.BountySignature(v) == Vd then
            return true
        end
    end
    return false
end
fns.bCU_21.BountyObjectiveDone = function(Vh, Vi, Vj)
    local bm3 = Vh and Vh.ObjectiveProgress and Vh.ObjectiveProgress[Vi]
    local bm4 = tonumber(bm3) or 0
    local bm3_1 = Vj and Vj.Goal
    local bm5 = tonumber(bm3_1) or 1
    return bm4 >= bm5
end
fns.bCU_21.RefreshBountyUi = function(Vm)
    local bm7 = fns.bCU_21.BountyBoard()
    if not bm7 then
        if bCU_89.BountyBoardLabel then
            bCU_89.BountyBoardLabel:SetText("Bounty board is unavailable.")
        end
        return
    end
    local bm8 = bm7.ClaimedAmount or 0
    local bm9 = { "Claims used today: " .. tostring(bm8) .. "/10" }
    local bna = bm7.QuestOrder or {}
    for k, v in bna do
        local bm8_2 = bm7.Quests and bm7.Quests[v]
        local bm8_3 = fns.bCU_21.BountyInfo(v)
        local bnb_1 = bm8_2 and bm8_2.Claimed and "[x]"
        if not bnb_1 then
            bnb_1 = bm8_2 and bm8_2.Completed and "[!]" or "[ ]"
        end
        local bnc_3 = bnb_1
        local bnb_2 = bm8_3
        local bnd_2 = {}
        if bnb_2 then
            bnb_2 = bm8_3.Objectives
        end
        local bnf = bnb_2 or {}
        for k, v in bnf do
            local bnb_3 = bm8_2 and bm8_2.ObjectiveProgress and bm8_2.ObjectiveProgress[k]
            local bne_1 = tonumber(bnb_3) or 0
            local insert = table.insert
            local bnf_1 = fns.bCU_21.BountyObjectiveType(v)
            local bng = tostring(bne_1)
            local bnh = v.Goal or 1
            insert(bnd_2, bnf_1 .. " " .. bng .. "/" .. tostring(bnh))
        end
        table.sort(bnd_2)
        local insert = table.insert
        local bm8_4 = bm8_3 and bm8_3.Rarity or v
        insert(bm9, bnc_3 .. " " .. tostring(bm8_4) .. " | " .. table.concat(bnd_2, ", "))
    end
    if bCU_89.BountyBoardLabel then
        bCU_89.BountyBoardLabel:SetText(table.concat(bm9, "\n"))
    end
    if Vm then
        aDV:Notify("Bounty board refreshed")
    end
end
fns.bCU_21.SetBountyStatus = function(VG)
    if bCU_89.BountyStatus then
        bCU_89.BountyStatus:SetText("Status: " .. VG)
    end
    if (Toggles.BountyAutoClaim.Value or Toggles.BountyAutoReroll.Value or Toggles.BountyAutoJoin.Value or Toggles.BountyAutoLeave.Value or Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value or bCU_74.BountyNotification ~= nil) and bCU_74.BountyNotification ~= VG then
        bCU_74.BountyNotification = VG
        aDV:Notify("Bounty: " .. VG, 5)
    end
end
fns.bCU_21.TryBountySummonStep = function(VM)
    local bny = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
    local bnz = not bny or fns.bCU_29()
    if bnz then
        return false
    end
    local bny_1 = {}
    local bnz_1 = VM.QuestOrder
    local bnF = if bnz_1 then 1 else 0
    local bnD = 488 * bnF + 2588 * (1 - bnF)
    local bnE = 3620 * bnF + 1867 * (1 - bnF)
    if not ((bnD * 3901 + bnE * 3837 + bnD * bnE) % 16777213 == 782975) then
        bnz_1 = bny_1
    end
    for k, v in bnz_1 do
        local bny_2 = VM.Quests[v]
        local bnz_2 = fns.bCU_21.BountyInfo(v)
        local bnA = bny_2 and not bny_2.Completed and not bny_2.Claimed and not fns.bCU_21.BountyIsBlocked(v, bny_2, bnz_2)
        if bnA then
            local bnB = bnz_2 and bnz_2.Objectives or {}
            for k, v2 in bnB do
                local bnz_4 = fns.bCU_21.BountyObjectiveType(v2) == "Summon" and not fns.bCU_21.BountyObjectiveDone(bny_2, k, v2)
                if bnz_4 then
                    local bnA_2 = Options.BountySummonBanner and Options.BountySummonBanner.Value or "Mini"
                    fns.bCU_21.SetBountyStatus("Summoning for " .. v)
                    pcall(Actions2.Summon, bnA_2, 50)
                    bCU_74.NextBountyStep = os.clock() + 2
                    return true
                end
            end
        end
    end
    return false
end
fns.bCU_21.BountyStep = function()
    local bob, boc, BountyJoinSerial, boe, bof
    local bop_1
    local boo_1
    local bog = os.clock()
    local bog_13, bog_14
    local boh = bCU_74.NextBountyStep or 0
    local boh_12
    if bog < boh then
        return
    end
    bCU_74.NextBountyStep = os.clock() + 1
    boe = fns.bCU_21.BountyBoard()
    local bog_1 = not boe or type(boe.Quests) ~= "table"
    if bog_1 then
        fns.bCU_21.SetBountyStatus("Board unavailable")
        return
    end
    if fns.bCU_21.ExitInvalidBountyParty() then
        return
    end
    fns.bCU_21.RefreshBountyUi(false)
    local bog_2 = Toggles.BountyAutoClaim.Value
    if not bog_2 then
        bog_2 = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
    end
    if bog_2 then
        local bog_3 = {}
        local boh_2 = boe.QuestOrder
        local bou_1 = if boh_2 then 1 else 0
        local bos_1 = 1748 * bou_1 + 1013 * (1 - bou_1)
        local bot_1 = 3169 * bou_1 + 3736 * (1 - bou_1)
        if not ((bos_1 * 3074 + bot_1 * 1141 + bos_1 * bot_1) % 16777213 == 14528593) then
            boh_2 = bog_3
        end
        for k, v in boh_2 do
            local bog_4 = boe.Quests[v]
            if bog_4 and bog_4.Completed and not bog_4.Claimed then
                fns.bCU_21.SetBountyStatus("Claiming " .. v)
                pcall(Actions2.ClaimQuest, "BountyBoard", v)
                return
            end
        end
    end
    if Toggles.BountyAutoReroll.Value then
        local boh_4 = Options.BountyKeepRarities.Value or {}
        local boi_1 = Options.BountyKeepTypes.Value or {}
        local boj_1 = Options.BountyAvoidTypes.Value or {}
        local boj_2 = fns.bCU_21.BountyStackTarget(boe)
        local bol_1 = boe.QuestOrder or {}
        for k, v in bol_1 do
            local bok_2 = boe.Quests[v]
            local bol_2 = fns.bCU_21.BountyInfo(v)
            local bom_1 = fns.bCU_21.BountyIsBlocked(v, bok_2, bol_2)
            local bon_1 = fns.bCU_21.BountyKinds(bol_2)
            boo_1, bop_1 = nil, nil
            for k in bon_1 do
                boo_1 = boo_1 or boj_1[k]
                bop_1 = bop_1 or boi_1[k]
            end
            local bon_4 = boj_2 and fns.bCU_21.BountyQuestHasSignature(bol_2, boj_2)
            local boq = not bom_1
            if boq then
                boq = not boo_1
            end
            if boq then
                boq = boh_4[bol_2 and bol_2.Rarity] or bop_1 or bon_4
            end
            local bol_4 = bok_2
            local bom_3 = boq
            if bol_4 then
                bol_4 = not bok_2.Completed
            end
            if bol_4 then
                bol_4 = not bok_2.Claimed
            end
            if bol_4 and not bom_3 then
                fns.bCU_21.SetBountyStatus("Rerolling " .. v)
                pcall(Actions2.BountyBoard_RerollQuest, v, true)
                bCU_74.NextBountyStep = os.clock() + 2
                return
            end
        end
    end
    if fns.bCU_29() then
        local bog_7 = Toggles.BountyAutoLeave.Value
        if not bog_7 then
            bog_7 = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
        end
        if bog_7 and bCU_74.BountyQuest then
            local bog_8 = boe.Quests[bCU_74.BountyQuest]
            if bog_8 and bog_8.Completed then
                fns.bCU_21.SetBountyStatus("Bounty complete, leaving")
                bCU_32()
            end
        end
        return
    end
    if bCU_74.QueueSummonBlocking then
        return
    end
    if fns.bCU_21.TryBountySummonStep(boe) then
        return
    end
    if fns.bCU_21.PreferredJoinMode() ~= "Bounty" then
        return
    end
    local bog_9 = fns.bCU_21.JoinBlockReason()
    if bog_9 then
        fns.bCU_21.SetBountyStatus("Waiting for " .. bog_9)
        return
    end
    local bog_10 = fns.bCU_21.IsMatchmaking and fns.bCU_21.IsMatchmaking()
    if bog_10 then
        fns.bCU_21.SetBountyStatus("Matchmaking")
        return
    end
    local bog_11 = Toggles.BountyAutoJoin.Value
    if not bog_11 then
        bog_11 = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
    end
    local boh_11 = not bog_11 or bCU_74.BountyJoinPending or bCU_74.AutoJoinPending
    if not boh_11 then
        local bog_12 = os.clock()
        boh_11 = bog_12 < (bCU_74.NextBountyJoin or 0)
    end
    if boh_11 then
        return
    end
    boh_12, bog_13 = fns.bCU_21.BountyStackTarget(boe)
    local boi_5 = Toggles.BountyStack.Value
    if boi_5 then
        local boj_3 = (tonumber(Options.BountyStackAmount.Value))
        local bou_2 = if boj_3 then 1 else 0
        local bos_2 = 1443 * bou_2 + 2561 * (1 - bou_2)
        local bot_2 = 3534 * bou_2 + 71 * (1 - bou_2)
        if not ((bos_2 * 3507 + bot_2 * 3637 + bos_2 * bot_2) % 16777213 == 6236108) then
            boj_3 = 3
        end
        boi_5 = bog_13 < boj_3
    end
    if boi_5 then
        bCU_74.PrioritySkipBounty = os.clock() + 2
        fns.bCU_21.SetBountyStatus("Stacking " .. tostring(bog_13) .. "/" .. tostring(Options.BountyStackAmount.Value))
        return
    end
    boc, bob, bog_14 = nil, nil, nil
    local boi_6 = {}
    local boj_4 = boe.QuestOrder
    local boN = if boj_4 then 1 else 0
    local boL = 3878 * boN + 71 * (1 - boN)
    local boM = 1330 * boN + 254 * (1 - boN)
    if not ((boL * 626 + boM * 1878 + boL * boM) % 16777213 == 10083108) then
        boj_4 = boi_6
    end
    for k, v in boj_4 do
        local boi_7 = boe.Quests[v]
        local boj_5 = fns.bCU_21.BountyInfo(v)
        local bok_4 = boi_7 and not boi_7.Completed and not boi_7.Claimed and not fns.bCU_21.BountyIsBlocked(v, boi_7, boj_5)
        if bok_4 then
            local bol_5 = boj_5 and boj_5.Objectives or {}
            for k, v2 in bol_5 do
                local boj_7 = fns.bCU_21.BountyObjectiveQueue(v2)
                local bok_6 = fns.bCU_21.BountySignature(v2)
                local bol_6 = boj_7 and not fns.bCU_21.BountyObjectiveDone(boi_7, k, v2)
                if bol_6 and (not boh_12 or bok_6 == boh_12) then
                    boc, bob, bog_14 = v, boj_7, v2.Goal
                    break
                end
            end
        end
        if bob then
            break
        end
    end
    if not bob and boh_12 then
        local boi_9 = boe.QuestOrder or {}
        for k, v in boi_9 do
            local boh_14 = boe.Quests[v]
            local boi_10 = fns.bCU_21.BountyInfo(v)
            local boj_8 = boh_14 and not boh_14.Completed and not boh_14.Claimed and not fns.bCU_21.BountyIsBlocked(v, boh_14, boi_10)
            if boj_8 then
                local bok_8 = boi_10 and boi_10.Objectives or {}
                for k, v2 in bok_8 do
                    local boi_12 = fns.bCU_21.BountyObjectiveQueue(v2)
                    local boj_10 = boi_12 and not fns.bCU_21.BountyObjectiveDone(boh_14, k, v2)
                    if boj_10 then
                        boc, bob, bog_14 = v, boi_12, v2.Goal
                        break
                    end
                end
            end
            if bob then
                break
            end
        end
    end
    if not bob then
        bCU_74.PrioritySkipBounty = os.clock() + 2
        fns.bCU_21.SetBountyStatus("No runnable bounty")
        return
    end
    bCU_74.BountyQuest = boc
    bCU_74.BountyQueue = bob
    bCU_74.BountyGoal = bog_14
    local max = math.max
    local boh_15 = (tonumber(Options.BountyJoinDelay.Value))
    local bo5 = if boh_15 then 1 else 0
    local bo3 = 3055 * bo5 + 555 * (1 - bo5)
    local bo4 = 2686 * bo5 + 3857 * (1 - bo5)
    if not ((bo3 * 2882 + bo4 * 2524 + bo3 * bo4) % 16777213 == 7012491) then
        boh_15 = 1
    end
    bof = max(1, boh_15)
    bCU_74.BountyJoinPending = true
    local bog_16 = bCU_74.BountyJoinSerial or 0
    bCU_74.BountyJoinSerial = bog_16 + 1
    fns.bCU_21.SetBountyStatus("Starting in " .. tostring(bof) .. "s")
    BountyJoinSerial = bCU_74.BountyJoinSerial
    task.spawn(function()
        local BountyAttemptSerial, bn2
        local bn3 = bof
        while true do
            local bn4_1 = fns.bCU_21.JoinBlockReason()
            if bn3 <= 0 and not bn4_1 then
                break
            end
            local bn5_2 = Toggles.BountyAutoJoin.Value
            if not bn5_2 then
                bn5_2 = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
            end
            local bn6_2 = not bn5_2 or fns.bCU_29() or bCU_74.BountyJoinSerial ~= BountyJoinSerial
            if bn6_2 then
                bCU_74.BountyJoinPending = false
                fns.bCU_21.SetBountyStatus("Join cancelled")
                return
            end
            if bn4_1 then
                fns.bCU_21.SetBountyStatus("Waiting for " .. bn4_1)
            elseif bCU_89.BountyStatus then
                bCU_89.BountyStatus:SetText("Status: " .. tostring(bn3))
            end
            if not bn4_1 then
                bn3 -= 1
            end
            task.wait(1)
        end
        local bn3_1 = Toggles.BountyAutoJoin.Value
        if not bn3_1 then
            bn3_1 = Toggles.BountyAutoComplete and Toggles.BountyAutoComplete.Value
        end
        local bn4_3 = not bn3_1 or fns.bCU_29() or bCU_74.BountyJoinSerial ~= BountyJoinSerial
        if bn4_3 then
            bCU_74.BountyJoinPending = false
            fns.bCU_21.SetBountyStatus("Join cancelled")
            return
        end
        bCU_74.BountyJoinPending = false
        bCU_74.NextBountyJoin = os.clock() + 1
        fns.bCU_21.SetBountyStatus("Joining")
        local Value = Toggles.BountyUseMatchmaking.Value
        if Value then
            pcall(Actions2.StartMatchmaking, bob)
        else
            pcall(Actions2.PartyStartGame, bob)
        end
        if bob.Gamemode == "Challenge" then
            local bn3_2 = bCU_74.BountyAttemptSerial or 0
            bCU_74.BountyAttemptSerial = bn3_2 + 1
            BountyAttemptSerial = bCU_74.BountyAttemptSerial
            bn2 = fns.bCU_21.BountyFingerprint(boc, boe.Quests[boc], fns.bCU_21.BountyInfo(boc))
            local delay = task.delay
            local bn5_3 = Value and 60 or 15
            delay(bn5_3, function()
                local bnS = aDV.Unloaded or fns.bCU_29() or bCU_74.BountyAttemptSerial ~= BountyAttemptSerial
                if bnS then
                    return
                end
                local bnS_1 = Value and fns.bCU_21.IsMatchmaking()
                if bnS_1 then
                    return
                end
                local bnS_2 = fns.bCU_21.BountyBoard()
                local bnT = bnS_2 and bnS_2.Quests and bnS_2.Quests[boc]
                local bnT_1 = not bnT
                local bn_ = if bnT_1 then 1 else 0
                local bnY = 2617 * bn_ + 655 * (1 - bn_)
                local bnZ = 3658 * bn_ + 30 * (1 - bn_)
                if not ((bnY * 3099 + bnZ * 3094 + bnY * bnZ) % 16777213 == 12223708) then
                    bnT_1 = fns.bCU_21.BountyFingerprint(boc, bnT, fns.bCU_21.BountyInfo(boc)) ~= bn2
                end
                if bnT_1 then
                    return
                end
                local bnT_2 = bCU_74.BountyBlocked or {}
                bCU_74.BountyBlocked = bnT_2
                bCU_74.BountyBlocked[boc] = bn2
                bCU_74.PrioritySkipBounty = os.clock() + 30
                bCU_74.NextBountyJoin = os.clock() + 30
                fns.bCU_21.SetBountyStatus("Challenge unavailable, leaving party")
                if Value then
                    pcall(Actions2.CancelMatchmaking)
                else
                    pcall(Actions2.PartyDisband)
                    task.wait(0.5)
                    pcall(Actions2.PartyLeave)
                end
            end)
        end
    end)
end
fns.bCU_21.JoinMaps = function(Xz)
    local bo6 = Information
    local bo7 = {}
    if bo6 then
        bo6 = Information:FindFirstChild("Maps")
    end
    local bo8 = bo6
    if bo6 then
        bo6 = bo8:FindFirstChild(Xz)
    end
    local bo8_1 = bo6
    if bo6 then
        bo6 = bo8_1:GetChildren()
    end
    local bo8_2 = {}
    local bo9 = bo6
    local bpd = if bo9 then 1 else 0
    local bpb = 1564 * bpd + 1471 * (1 - bpd)
    local bpc = 178 * bpd + 3973 * (1 - bpd)
    if not ((bpb * 48 + bpc * 1363 + bpb * bpc) % 16777213 == 596078) then
        bo9 = bo8_2
    end
    for k, v in bo9 do
        table.insert(bo7, v.Name)
    end
    table.sort(bo7)
    return bo7
end
fns.bCU_21.JoinMapData = function(XI, XJ)
    local bpk
    local bpl
    bpk = nil
    bpl = nil
    local bpm = Information and Information:FindFirstChild("Maps")
    local bpn = bpm
    if bpm then
        bpm = bpn:FindFirstChild(XI)
    end
    local bpn_1 = bpm
    if bpm then
        local bpo = XJ or ""
        bpm = bpn_1:FindFirstChild(bpo)
    end
    bpl = bpm
    bpk = nil
    pcall(function()
        bpk = require(bpl)
    end)
    return bpk
end
fns.bCU_21.JoinActs = function(XT, XU)
    local bpt = {}
    local bpu = fns.bCU_21.JoinMapData(XT, XU)
    local bpv = bpu and bpu.ActProgression
    if type(bpv) == "table" then
        for k, v in bpu.ActProgression do
            table.insert(bpt, tostring(v))
        end
    else
        local bpv_1 = bpu and bpu.Acts
        if type(bpv_1) == "table" then
            for k in bpu.Acts do
                table.insert(bpt, tostring(k))
            end
            table.sort(bpt)
        end
    end
    if #bpt == 0 then
        table.insert(bpt, "Act 1")
    end
    return bpt
end
fns.bCU_21.JoinDifficulties = function(X2, X3)
    local bpQ = {}
    local bpR = fns.bCU_21.JoinMapData(X2, X3)
    local bpS = bpR and bpR.Difficulties
    if type(bpS) == "table" then
        local bpS_1 = {}
        for k in bpR.Difficulties do
            table.insert(bpS_1, k)
        end
        table.sort(bpS_1, function(Ya, Yb)
            local bpK = (tonumber(Ya))
            local bpP = if bpK then 1 else 0
            local bpN = 2788 * bpP + 2528 * (1 - bpP)
            local bpO = 3166 * bpP + 1454 * (1 - bpP)
            if not ((bpN * 2718 + bpO * 3919 + bpN * bpO) % 16777213 == 12034933) then
                bpK = 0
            end
            local bpL = tonumber(Yb) or 0
            return bpK < bpL
        end)
        for k, v in bpS_1 do
            table.insert(bpQ, tostring(bpR.Difficulties[v]))
        end
    end
    if #bpQ == 0 then
        table.insert(bpQ, "Normal")
    end
    return bpQ
end
fns.bCU_21.JoinDropChoices = function()
    local StageDrops
    local bp4 = {}
    fns.bCU_21.JoinDropKeys = {}
    StageDrops = nil
    pcall(function()
        StageDrops = require(Information.StageDrops)
    end)
    local bp5 = StageDrops
    local bp6 = {}
    if bp5 then
        bp5 = StageDrops.Entries
    end
    local bp7 = {}
    local bp8 = bp5
    local bqg = if bp8 then 1 else 0
    local bqe = 483 * bqg + 2414 * (1 - bqg)
    local bqf = 2010 * bqg + 3566 * (1 - bqg)
    if not ((bqe * 297 + bqf * 1179 + bqe * bqf) % 16777213 == 3484071) then
        bp8 = bp7
    end
    for k, v in bp8 do
        local bp5_1 = type(v) == "table" and tostring(v.Gamemode) == "Challenge" and v.Asset
        if bp5_1 then
            local bp5_2 = tostring(v.Asset)
            if not bp6[bp5_2] then
                bp6[bp5_2] = true
                local bp8_1 = fns.bCU_21.ItemCatalog and fns.bCU_21.ItemCatalog[bp5_2]
                local bp7_2 = type(bp8_1) == "table" and (bp8_1.DisplayName or bp8_1.Name)
                local bp8_2 = bp7_2 or bCU_95(bp5_2)
                local bp7_3 = tostring(bp8_2)
                fns.bCU_21.JoinDropKeys[bp7_3] = bp5_2
                table.insert(bp4, bp7_3)
            end
        end
    end
    if #bp4 == 0 then
        local bp6_1 = fns.bCU_21.ItemCatalog or {}
        for k, v in bp6_1 do
            local bp5_4 = type(v) == "table"
            if bp5_4 then
                bp5_4 = v.DisplayName or v.Name
            end
            local bp6_3 = bp5_4 or bCU_95(k)
            local bp5_5 = tostring(bp6_3)
            fns.bCU_21.JoinDropKeys[bp5_5] = tostring(k)
            table.insert(bp4, bp5_5)
        end
    end
    table.sort(bp4)
    return bp4
end
fns.bCU_21.ChallengeDropsMatch = function(YF, YG)
    local StageDrops
    local bqv = Options.ChallengeDrops.Value or {}
    if not next(bqv) then
        return true
    end
    local bqv_1 = {}
    for k, v in bqv do
        if v then
            local bqu_2 = fns.bCU_21.JoinDropKeys[k] or k
            bqv_1[bqu_2] = true
        end
    end
    StageDrops = nil
    pcall(function()
        StageDrops = require(Information.StageDrops)
    end)
    local bqu_3 = not StageDrops or type(StageDrops.Entries) ~= "table"
    if bqu_3 then
        return true
    end
    for k, v in StageDrops.Entries do
        local bqu_4 = type(v) == "table" and tostring(v.Gamemode) == "Challenge"
        if bqu_4 then
            local bqw = v.ChallengeType or v.TournamentId or "All"
            local bqu_6 = tostring(bqw)
            local bqw_1 = v.ChallengeIndex or "All"
            local bqx = tostring(bqw_1)
            local bqw_2 = bqu_6 == "All" or bqu_6 == tostring(YF)
            local bqu_7 = bqw_2
            if bqu_7 then
                local bqw_3 = bqx == "All" or bqx == tostring(YG)
                bqu_7 = bqw_3
            end
            if bqu_7 then
                if bqv_1[tostring(v.Asset)] then
                    return true
                end
            end
        end
    end
    return false
end
fns.bCU_21.ChallengeHasSelectedDrop = function()
    local bqM = Options.ChallengeDrops.Value or {}
    if not next(bqM) then
        return true
    end
    local bqL_2 = fns.bCU_21.SelectedChallengeTypes()
    local bqM_1 = Options.JoinChallengeNumber and Options.JoinChallengeNumber.Value
    for k, v in bqL_2 do
        if bqM_1 and bqM_1 ~= "Any" and bqM_1 ~= "" then
            if fns.bCU_21.ChallengeDropsMatch(v, bqM_1) then
                return true
            end
        else
            local bqY = 1
            while bqY <= 5 do
                local bqZ = bqY
                if fns.bCU_21.ChallengeDropsMatch(v, bqZ) then
                    return true
                end
                bqY += 1
            end
        end
    end
    return false
end
fns.bCU_21.CHALLENGE_TYPE_ORDER = { "Regular", "Weekly", "Daily" }
fns.bCU_21.SelectedChallengeTypes = function()
    local Value = Options.JoinChallengeType.Value
    local bq1 = type(Value) == "table" and Value
    local bq2 = bq1
    if not bq2 then
        local bq1_1 = Value or "Regular"
        bq2 = { [tostring(bq1_1)] = true }
    end
    local bq0_1 = {}
    local bq1_2 = bq2
    for k, v in fns.bCU_21.CHALLENGE_TYPE_ORDER do
        if bq1_2[v] then
            table.insert(bq0_1, v)
        end
    end
    if #bq0_1 == 0 then
        table.insert(bq0_1, "Regular")
    end
    return bq0_1
end
fns.bCU_21.ChallengeTypeIndex = function(Zf)
    local brd = tonumber(bCU_74.ChallengeTypeIndex)
    local bre = not brd and aE7 and isfile(aEb.ChallengeTypeFile)
    if bre then
        pcall(function()
            brd = tonumber(readfile(aEb.ChallengeTypeFile))
        end)
    end
    local clamp = math.clamp
    local brf = brd or 1
    brd = clamp(brf, 1, math.max(1, Zf))
    bCU_74.ChallengeTypeIndex = brd
    return brd
end
fns.bCU_21.SelectedChallengeType = function()
    local Zm = fns.bCU_21.SelectedChallengeTypes()
    return Zm[fns.bCU_21.ChallengeTypeIndex(#Zm)]
end
fns.bCU_21.AdvanceChallengeType = function()
    local brh = fns.bCU_21.SelectedChallengeTypes()
    bCU_74.ChallengeTypeIndex = fns.bCU_21.ChallengeTypeIndex(#brh) % #brh + 1
    if aE7 then
        pcall(function()
            writefile(aEb.ChallengeTypeFile, tostring(bCU_74.ChallengeTypeIndex))
        end)
    end
end
fns.bCU_21.ChallengeRotationKey = function()
    local brl = {}
    local brm = {}
    local brn = aD6
    local brr = if brn then 1 else 0
    local brp = 146 * brr + 2715 * (1 - brr)
    local brq = 1516 * brr + 2747 * (1 - brr)
    if not ((brp * 3349 + brq * 2945 + brp * brq) % 16777213 == 5174910) then
        brn = brm
    end
    for k, v in brn do
        local Data, json
        local brx = v
        local brm_1 = aDR(brx)
        local brn_1 = brm_1 and string.find(string.lower(brm_1), "challenge", 1, true)
        if brn_1 then
            Data = nil
            pcall(function()
                Data = brx.Data
            end)
            if type(Data) == "table" then
                json = nil
                pcall(function()
                    json = HttpService:JSONEncode(Data)
                end)
                if json then
                    table.insert(brl, brm_1 .. "=" .. json)
                end
            end
        end
    end
    table.sort(brl)
    return table.concat(brl, "|")
end
fns.bCU_21.CrowRelicAmount = function()
    local bry = aD7()
    local brA = fns.bCU_21.ItemCatalog or {}
    for k, v in brA do
        local lower = string.lower
        local brA_1 = type(v) == "table"
        if brA_1 then
            brA_1 = v.DisplayName or v.Name
        end
        local brB_2 = brA_1 or k
        local brA_2 = lower(tostring(brB_2))
        local brz_2 = string.find(brA_2, "crow", 1, true) and string.find(brA_2, "relic", 1, true)
        if brz_2 then
            local brz_3 = tonumber(bry[tostring(k)]) or 0
            return brz_3
        end
    end
    for k, v in bry do
        local bry_1 = string.lower(tostring(k))
        local brz_4 = string.find(bry_1, "crow", 1, true) and string.find(bry_1, "relic", 1, true)
        if brz_4 then
            local bry_2 = tonumber(v) or 0
            return bry_2
        end
    end
    return 0
end
fns.bCU_21.EventQueueData = function()
    local brQ = Information and Information:FindFirstChild("Events")
    local brR = brQ
    if brQ then
        brQ = brR:GetChildren()
    end
    local brS = brQ or {}
    for k, v in brS do
        local brP
        local br1 = v
        brP = nil
        pcall(function()
            brP = require(br1)
        end)
        local brQ_1 = brP and brP.QueueData
        local brR_2 = type(brQ_1) == "table" and brP.QueueData.Type == "Event"
        if brR_2 then
            return table.clone(brP.QueueData)
        end
    end
    return nil
end
fns.bCU_21.EventJoinActs = function()
    local br2 = fns.bCU_21.EventQueueData()
    local br3 = br2 and fns.bCU_21.JoinActs(br2.Gamemode, br2.MapName)
    return br3 or { "Act 1" }
end
fns.bCU_21.EventJoinAct = function()
    local Value = Options.EventAct.Value
    local br7 = tonumber(Options.EventCrowRelics.Value) or 0
    if br7 <= 0 then
        return Value
    end
    local br7_1 = fns.bCU_21.CrowRelicAmount()
    if br7_1 >= br7 then
        bCU_74.EventUseActZero = true
    end
    if br7_1 <= 0 then
        bCU_74.EventUseActZero = false
    end
    return bCU_74.EventUseActZero and "Crow" or Value
end
fns.bCU_21.RefreshJoinMode = function(aag, aah)
    local bsa = fns.bCU_21.JoinMaps(aah)
    local bsb = Options[aag .. "Map"]
    local bsd = bsb and bsb.Value
    if bsb then
        bsb:SetValues(bsa)
    end
    if not table.find(bsa, bsd) then
        bsd = bsa[1]
        if bsb and bsd then
            bsb:SetValue(bsd)
        end
    end
    local bsa_2 = fns.bCU_21.JoinActs(aah, bsd)
    local bsb_1 = Options[aag .. "Act"]
    if bsb_1 then
        bsb_1:SetValues(bsa_2)
        if not table.find(bsa_2, bsb_1.Value) then
            bsb_1:SetValue(bsa_2[1])
        end
    end
    local bsa_3 = fns.bCU_21.JoinDifficulties(aah, bsd)
    local bsb_2 = Options[aag .. "Difficulty"]
    if bsb_2 then
        bsb_2:SetValues(bsa_3)
        if not table.find(bsa_3, bsb_2.Value) then
            bsb_2:SetValue(bsa_3[1])
        end
    end
end
fns.bCU_21.StoryJoinGamemode = function()
    local bsi = Options.StoryAct and tostring(Options.StoryAct.Value)
    local bsj = bsi or "Act 1"
    return (bsj == "Infinite" or bsj == "Mastery") and bsj or "Story"
end
fns.bCU_21.StoryJoinStages = function(aau)
    local bsm = fns.bCU_21.JoinActs("Story", aau)
    for k, v in { "Infinite", "Mastery" } do
        if fns.bCU_21.JoinMapData(v, aau) then
            table.insert(bsm, v)
        end
    end
    return bsm
end
fns.bCU_21.RefreshStoryJoin = function()
    if bCU_74.RefreshingStoryJoin then
        return
    end
    bCU_74.RefreshingStoryJoin = true
    pcall(function()
        local bsu = fns.bCU_21.StoryJoinGamemode()
        local bsv = fns.bCU_21.JoinMaps(bsu)
        local bsx = Options.StoryMap and Options.StoryMap.Value
        if Options.StoryMap then
            Options.StoryMap:SetValues(bsv)
        end
        if not table.find(bsv, bsx) then
            bsx = bsv[1]
            if Options.StoryMap and bsx then
                Options.StoryMap:SetValue(bsx)
            end
        end
        local bsv_2 = fns.bCU_21.StoryJoinStages(bsx)
        local bsy = Options.StoryAct and Options.StoryAct.Value
        if Options.StoryAct then
            Options.StoryAct:SetValues(bsv_2)
        end
        if not table.find(bsv_2, bsy) then
            bsy = bsv_2[1]
            if Options.StoryAct and bsy then
                Options.StoryAct:SetValue(bsy)
            end
        end
        local bsw_3 = (bsy == "Infinite" or bsy == "Mastery") and bsy or "Story"
        local bsv_6 = fns.bCU_21.JoinDifficulties(bsw_3, bsx)
        if Options.StoryDifficulty then
            Options.StoryDifficulty:SetValues(bsv_6)
            if not table.find(bsv_6, Options.StoryDifficulty.Value) then
                Options.StoryDifficulty:SetValue(bsv_6[1])
            end
        end
    end)
    bCU_74.RefreshingStoryJoin = false
end
fns.bCU_21.SetJoinStatus = function(aaL, aaM)
    local bsK = bCU_89[aaL .. "JoinStatus"]
    if bsK then
        bsK:SetText("Status: " .. aaM)
    end
    local bsL = bCU_74.JoinNotifications or {}
    bCU_74.JoinNotifications = bsL
    local bsK_2 = tonumber(aaM) == nil and bCU_74.JoinNotifications[aaL] ~= aaM
    if bsK_2 then
        bCU_74.JoinNotifications[aaL] = aaM
        aDV:Notify(aaL .. " Auto Join: " .. aaM, 5)
    end
end
fns.bCU_21.IsMatchmaking = function()
    local bsQ
    bsQ = nil
    pcall(function()
        bsQ = aFE(aFL.SessionData)
    end)
    local bsR = type(bsQ) == "table"
    if bsR then
        bsR = bsQ.Matchmaking or bsQ.MatchmakingFound
    end
    local bsR_1 = bsR and true
    local bsW = if bsR_1 then 1 else 0
    local bsU = 1920 * bsW + 1616 * (1 - bsW)
    local bsV = 1578 * bsW + 418 * (1 - bsW)
    if not ((bsU * 1907 + bsV * 1244 + bsU * bsV) % 16777213 == 8654232) then
        bsR_1 = false
    end
    return bsR_1
end
fns.bCU_21.MatchmakingWatchdog = function(aa0)
    if not fns.bCU_21.IsMatchmaking() then
        bCU_74.MatchmakingStartedAt = nil
        bCU_74.MatchmakingPrefix = nil
        bCU_74.MatchmakingQueue = nil
        bCU_74.NextMatchmakingCancel = nil
        return false
    end
    fns.bCU_21.SetJoinStatus(aa0, "Matchmaking")
    local bsX = bCU_74.MatchmakingStartedAt and os.clock() - bCU_74.MatchmakingStartedAt >= 120
    if bsX then
        local bsY = os.clock()
        bsX = bsY >= (bCU_74.NextMatchmakingCancel or 0)
    end
    if bsX then
        pcall(Actions2.CancelMatchmaking)
        bCU_74.NextMatchmakingCancel = os.clock() + 3
        bCU_74.NextAutoJoin = os.clock() + 3
        fns.bCU_21.SetJoinStatus(aa0, "Matchmaking timed out, retrying")
    end
    return true
end
fns.bCU_21.PrivateQueueMatches = function(aa5, aa6)
    local bs0 = type(aa5) ~= "table" or type(aa6) ~= "table"
    if bs0 then
        return false
    end
    for k, v in aa6 do
        local bs0_1 = type(v)
        if bs0_1 == "number" then
            if tonumber(aa5[k]) ~= v then
                return false
            end
        elseif bs0_1 == "string" or bs0_1 == "boolean" then
            if aa5[k] ~= v then
                return false
            end
        end
    end
    return true
end
fns.bCU_21.StartPrivateGame = function(abb)
    local btf
    btf = nil
    local QueueData
    btf = nil
    pcall(function()
        local bta = aFw and aFw.GET_PARTY_DATA_REPLICA:InvokeSelf()
        btf = bta
    end)
    if btf then
        local bti = pcall(Actions2.PartySetQueueData, abb)
        if not bti then
            return false
        end
        local bti_1 = os.clock() + 5
        local btl = false
        repeat
            local QueueData
            QueueData = nil
            pcall(function()
                QueueData = btf.Data.QueueData
            end)
            if fns.bCU_21.PrivateQueueMatches(QueueData, abb) then
                btl = true
            else
                task.wait(0.1)
                if os.clock() >= bti_1 then
                    btl = true
                end
            end
        until btl
        QueueData = nil
        pcall(function()
            QueueData = btf.Data.QueueData
        end)
        if not fns.bCU_21.PrivateQueueMatches(QueueData, abb) then
            return false
        end
        return pcall(Actions2.PartyStartGame, abb)
    end
    return pcall(Actions2.PartyStartGame, abb)
end
fns.bCU_21.BeginAutoJoin = function(abr, abs, abt, abu, abv)
    local bty, AutoJoinSerial
    local btA = bCU_74.AutoJoinPending
    local btF = if btA then 1 else 0
    local btD = 2616 * btF + 696 * (1 - btF)
    local btE = 585 * btF + 378 * (1 - btF)
    if not ((btD * 393 + btE * 2760 + btD * btE) % 16777213 == 4173048) then
        btA = not abt
    end
    if not btA then
        btA = not abt.Gamemode
    end
    if btA then
        return
    end
    local btA_1 = abu and fns.bCU_21.IsMatchmaking()
    if btA_1 then
        fns.bCU_21.SetJoinStatus(abr, "Matchmaking")
        return
    end
    if abt.Gamemode ~= "Challenge" and not abt.MapName then
        fns.bCU_21.SetJoinStatus(abr, "Map unavailable")
        bCU_74["PrioritySkip" .. abr] = os.clock() + 2
        return
    end
    bCU_74.AutoJoinPending = true
    local btA_3 = bCU_74.AutoJoinSerial or 0
    bCU_74.AutoJoinSerial = btA_3 + 1
    AutoJoinSerial = bCU_74.AutoJoinSerial
    local max = math.max
    local btB = tonumber(abv) or 1
    bty = max(1, btB)
    fns.bCU_21.SetJoinStatus(abr, "Starting in " .. tostring(bty) .. "s")
    task.spawn(function()
        local btm = bty
        while true do
            local btn = fns.bCU_21.JoinBlockReason()
            if btm <= 0 and not btn then
                local btm_1 = not Toggles[abs].Value or fns.bCU_29() or bCU_74.AutoJoinSerial ~= AutoJoinSerial
                if btm_1 then
                    bCU_74.AutoJoinPending = false
                    fns.bCU_21.SetJoinStatus(abr, "Join cancelled")
                    return
                end
                bCU_74.AutoJoinPending = false
                bCU_74.NextAutoJoin = os.clock() + 1
                fns.bCU_21.SetJoinStatus(abr, "Joining")
                if abr == "Challenge" then
                    if aE7 then
                        pcall(function()
                            writefile(aEb.Folder .. "/challenge_rotation.txt", fns.bCU_21.ChallengeRotationKey())
                        end)
                    end
                    fns.bCU_21.AdvanceChallengeType()
                end
                if abu then
                    local btm_2 = pcall(Actions2.StartMatchmaking, abt)
                    if btm_2 then
                        bCU_74.MatchmakingStartedAt = os.clock()
                        bCU_74.MatchmakingPrefix = abr
                        bCU_74.MatchmakingQueue = table.clone(abt)
                    end
                else
                    local btm_3 = fns.bCU_21.StartPrivateGame(abt)
                    if not btm_3 then
                        fns.bCU_21.SetJoinStatus(abr, "Party queue failed to update")
                        bCU_74["PrioritySkip" .. abr] = os.clock() + 5
                    end
                end
                return
            end
            local bto_1 = not Toggles[abs].Value or fns.bCU_29() or bCU_74.AutoJoinSerial ~= AutoJoinSerial
            if bto_1 then
                break
            end
            local SetJoinStatus = fns.bCU_21.SetJoinStatus
            local btp_1 = btn and "Waiting for " .. btn
            local btq = btp_1 or tostring(btm)
            SetJoinStatus(abr, btq)
            if not btn then
                btm -= 1
            end
            task.wait(1)
        end
        bCU_74.AutoJoinPending = false
        fns.bCU_21.SetJoinStatus(abr, "Join cancelled")
        return
    end)
end
fns.bCU_21.AutoJoinStep = function()
    local btG
    if bCU_74.QueueSummonBlocking then
        return
    end
    if fns.bCU_29() then
        local btH_1 = Toggles.ChallengeLobbyOnRefresh.Value and aE7 and isfile(aEb.Folder .. "/challenge_rotation.txt")
        if btH_1 then
            btG = nil
            pcall(function()
                btG = readfile(aEb.Folder .. "/challenge_rotation.txt")
            end)
            local btI_1 = fns.bCU_21.ChallengeRotationKey()
            if btG and btI_1 ~= "" and btG ~= btI_1 then
                fns.bCU_21.SetJoinStatus("Challenge", "Rotation refreshed")
                bCU_32()
            end
        end
        return
    end
    local btH_4 = bCU_74.AutoJoinPending or bCU_74.BountyJoinPending
    if not btH_4 then
        local btI_2 = os.clock()
        btH_4 = btI_2 < (bCU_74.NextAutoJoin or 0)
    end
    if btH_4 then
        return
    end
    local btH_5 = fns.bCU_21.PreferredJoinMode()
    if btH_5 == "Bounty" or not btH_5 then
        return
    end
    local btI_4 = fns.bCU_21.JoinBlockReason()
    if btI_4 then
        fns.bCU_21.SetJoinStatus(btH_5, "Waiting for " .. btI_4)
        return
    end
    local btQ = if fns.bCU_21.MatchmakingWatchdog(btH_5) then 1 else 0
    if btQ == 1 then
        return
    end
    if btH_5 == "Story" then
        local btI_5 = fns.bCU_21.StoryJoinGamemode()
        local btL_1 = {
            Gamemode = btI_5,
            MapName = Options.StoryMap.Value,
            Difficulty = Options.StoryDifficulty.Value,
            ActName = btI_5 == "Story" and Options.StoryAct.Value or "Act 1"
        }
        fns.bCU_21.BeginAutoJoin("Story", "JoinStory", btL_1, Toggles.StoryMatchmaking.Value, Options.StoryJoinDelay.Value)
        return
    end
    if btH_5 == "Raid" then
        fns.bCU_21.BeginAutoJoin("Raid", "JoinRaid", {
            Gamemode = "Raid",
            MapName = Options.RaidMap.Value,
            ActName = Options.RaidAct.Value,
            Difficulty = Options.RaidDifficulty.Value
        }, Toggles.RaidMatchmaking.Value, Options.RaidJoinDelay.Value)
        return
    end
    if btH_5 == "Expedition" then
        local BeginAutoJoin = fns.bCU_21.BeginAutoJoin
        local Value = Options.ExpeditionJoinMap.Value
        local btK_3 = tonumber(Options.ExpeditionJoinDifficulty.Value) or 1
        BeginAutoJoin("Expedition", "JoinExpedition", { Gamemode = "Expedition", MapName = Value, DifficultyLevel = btK_3 }, Toggles.ExpeditionMatchmaking.Value, Options.ExpeditionJoinDelay.Value)
        return
    end
    if btH_5 == "Event" then
        local btI_7 = fns.bCU_21.EventQueueData()
        if not btI_7 then
            fns.bCU_21.SetJoinStatus("Event", "Event unavailable")
            bCU_74.PrioritySkipEvent = os.clock() + 5
            return
        end
        btI_7.ActName = fns.bCU_21.EventJoinAct()
        btI_7.Factions = {}
        fns.bCU_21.BeginAutoJoin("Event", "JoinEvent", btI_7, Toggles.EventMatchmaking.Value, Options.EventJoinDelay.Value)
        return
    end
    if btH_5 == "Challenge" then
        if not fns.bCU_21.ChallengeHasSelectedDrop() then
            fns.bCU_21.SetJoinStatus("Challenge", "Waiting for selected drop")
            bCU_74.PrioritySkipChallenge = os.clock() + 2
            return
        end
        local btH_6 = fns.bCU_21.SelectedChallengeType()
        local btI_8 = { Gamemode = "Challenge", ChallengeType = btH_6, FilterDrops = true }
        if btH_6 == "Regular" and Options.JoinChallengeNumber.Value and Options.JoinChallengeNumber.Value ~= "Any" then
            local btH_7 = tonumber(Options.JoinChallengeNumber.Value) or Options.JoinChallengeNumber.Value
            btI_8.ChallengeIndex = btH_7
        end
        local btI_9 = fns.bCU_21.ResolveBountyChallengeQueue(btI_8)
        if not btI_9 then
            fns.bCU_21.SetJoinStatus("Challenge", "No available challenge")
            fns.bCU_21.AdvanceChallengeType()
            bCU_74.PrioritySkipChallenge = os.clock() + 5
            return
        end
        fns.bCU_21.BeginAutoJoin("Challenge", "JoinChallenge", btI_9, Toggles.ChallengeMatchmaking.Value, Options.ChallengeJoinDelay.Value)
        return
    end
end
function fns.aFu()
    local btR = fns.bCU_17()
    local btS = btR ~= nil and type(btR.Victory) == "boolean"
    return btS
end
fns.bCU_21.PERF_KEEP = { Ground = true, Paths = true, PathMesh = true, SpawnPart = true, Entrance = true, Tower = true }
fns.bCU_21.StrippedMap = nil
function fns.aE8()
    local Map = workspace:FindFirstChild("Map")
    if not Map or fns.bCU_21.StrippedMap == Map then
        return 0
    end
    fns.bCU_21.StrippedMap = Map
    local btV_1 = 0
    for i, child in Map:GetChildren() do
        local bt3 = child
        if not fns.bCU_21.PERF_KEEP[bt3.Name] then
            local btU_1 = false
            local btW = bt3:IsA("BasePart") or bt3:IsA("Model") or bt3:IsA("Folder")
            if btW then
                local btW_1 = { bt3 }
                local btX = bt3:IsA("BasePart") and btW_1
                local btW_2 = btX or bt3:GetDescendants()
                for k, v in btW_2 do
                    local btW_3 = CollectionService:HasTag(v, "GroundPlacement") or CollectionService:HasTag(v, "HillPlacement") or CollectionService:HasTag(v, "Path")
                    if btW_3 then
                        btU_1 = true
                        break
                    end
                end
            end
            local btW_4 = not btU_1
            if btW_4 ~= false then
                btW_4 = not bt3:IsA("Configuration")
            end
            if btW_4 then
                pcall(function()
                    bt3:Destroy()
                end)
                btV_1 += 1
            end
        end
    end
    return btV_1
end
fns.bCU_21.HiddenEnemies = setmetatable({}, { __mode = "k" })
function fns.aF3()
    local Enemies = workspace:FindFirstChild("Enemies")
    if not Enemies then
        return 0
    end
    local buk = 0
    for i, child in Enemies:GetChildren() do
        local bur = child
        if not fns.bCU_21.HiddenEnemies[bur] then
            fns.bCU_21.HiddenEnemies[bur] = true
            pcall(function()
                for i, descendant in bur:GetDescendants() do
                    local bua = descendant:IsA("BasePart") or descendant:IsA("Decal") or descendant:IsA("Texture")
                    if bua then
                        descendant.Transparency = 1
                    else
                        local bua_1 = descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Beam")
                        if bua_1 then
                            descendant.Enabled = false
                        else
                            local bua_2 = descendant:IsA("BillboardGui") or descendant:IsA("SurfaceGui")
                            if bua_2 then
                                descendant.Enabled = false
                            end
                        end
                    end
                end
            end)
            buk += 1
        end
    end
    return buk
end
aEw = { [1] = false, [2] = false, [3] = nil, [4] = nil }
Lighting = game:GetService("Lighting")
aEo = function()
    local frame
    frame = nil
    if aEw[4] and aEw[4].Parent then
        return
    end
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosBlackScreen"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 100
    if syn and syn.protect_gui then
        syn.protect_gui(screenGui)
    end
    screenGui.Parent = aFD()
    frame = Instance.new("Frame")
    frame.Size = UDim2.fromScale(1, 1)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui
    local uIListLayout = Instance.new("UIListLayout")
    uIListLayout.Padding = UDim.new(0, 8)
    uIListLayout.FillDirection = Enum.FillDirection.Vertical
    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    uIListLayout.Parent = frame
    local function buu_2(ac7, ac8, ac9, ada)
        local textLabel = Instance.new("TextLabel")
        textLabel.BackgroundTransparency = 1
        textLabel.Size = UDim2.new(1, -40, 0, ac8 + 8)
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = ac8
        textLabel.TextColor3 = ac9
        textLabel.Text = ac7
        textLabel.LayoutOrder = ada
        textLabel.Parent = frame
    end
    buu_2("OUROBOROS HUB", 13, Color3.fromRGB(96, 102, 112), 1)
    buu_2("join discord https://discord.gg/f3dJhDgyTq", 26, Color3.fromRGB(126, 214, 160), 2)
    buu_2("report bugs and give me feedback :P", 16, Color3.fromRGB(196, 199, 206), 3)
    aEw[4] = screenGui
end
bCU_83 = function(ade)
    pcall(function()
        aFT:Set3dRenderingEnabled(not ade)
    end)
    local PlayerGui = aFK:FindFirstChild("PlayerGui")
    if ade then
        local buE = aEw[3] or {}
        aEw[3] = buE
        if PlayerGui then
            for i, child in PlayerGui:GetChildren() do
                local buC_1 = child:IsA("ScreenGui") and child.Enabled
                if buC_1 then
                    child.Enabled = false
                    table.insert(aEw[3], child)
                end
            end
        end
        aEo()
    else
        local buD_2 = aEw[3] or {}
        for k, v in buD_2 do
            local buR = v
            pcall(function()
                buR.Enabled = true
            end)
        end
        aEw[3] = nil
        if aEw[4] then
            pcall(function()
                aEw[4]:Destroy()
            end)
            aEw[4] = nil
        end
    end
end
function fns.aGI()
    if aEw[1] then
        return
    end
    aEw[1] = true
    pcall(function()
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    end)
    pcall(function()
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 1000000
        for i, child in Lighting:GetChildren() do
            if child:IsA("PostEffect") then
                child.Enabled = false
            end
        end
    end)
    pcall(function()
        for i, descendant in workspace:GetDescendants() do
            if descendant:IsA("BasePart") then
                descendant.Material = Enum.Material.SmoothPlastic
                descendant.Reflectance = 0
            else
                local buZ = descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Smoke") or descendant:IsA("Fire") or descendant:IsA("Sparkles")
                if buZ then
                    descendant.Enabled = false
                elseif descendant:IsA("MeshPart") then
                    descendant.RenderFidelity = Enum.RenderFidelity.Performance
                end
            end
        end
    end)
end
bCU_101()
bCU_92()
fns.bCU_21.LoadWavePositions()
aDV = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
bCU_108 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
bCU_101 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = aDV.Options
Toggles = aDV.Toggles
aDV.ShowToggleFrameInKeybinds = false
Window = aDV:CreateWindow({
    Title = "Ouroboros Hub [Alpha]",
    Footer = { { Text = bCU_39, Copyable = true }, "|", aEL },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    ShowMobileButtons = false,
    Center = true,
    AutoShow = true,
    Resizable = true,
    Size = UDim2.fromOffset(940, 740),
    CornerRadius = 10,
    EnableCompacting = true,
    EnableSidebarResize = false,
    SidebarCompacted = false
})
bCU_89.InfoTab = Window:AddTab({ Name = "Info", Icon = "info", Description = "Hub information and useful links" })
bCU_89.JoinTab = Window:AddTab({ Name = "Join", Icon = "swords", Description = "Choose and enter game modes automatically" })
bCU_89.MacroTab = Window:AddTab({
    Name = "Autoplay",
    Icon = "clapperboard",
    Description = "Placement, upgrades, and unit abilities"
})
bCU_89.GameTab = Window:AddTab({ Name = "Game", Icon = "gamepad-2", Description = "Match flow and performance automation" })
bCU_89.ExpeditionTab = Window:AddTab({
    Name = "Expedition",
    Icon = "compass",
    Description = "Expedition routing, cards, and progression"
})
bCU_89.WebhookTab = Window:AddTab({ Name = "Webhook", Icon = "webhook", Description = "Match summaries and Discord notifications" })
bCU_89.MiscTab = Window:AddTab({ Name = "Misc", Icon = "gift", Description = "Lobby, crafting, shops, and bounties" })
bCU_89.PriorityTab = Window:AddTab({
    Name = "Priority",
    Icon = "list-ordered",
    Description = "Resolve conflicts between enabled automations"
})
bCU_89.SettingsTab = Window:AddTab({ Name = "Settings", Icon = "settings", Description = "Themes, configuration, and menu controls" })
bCU_89.JoinTab:SetSubTabAlignment("Center")
bCU_89.MacroTab:SetSubTabAlignment("Center")
bCU_89.GameTab:SetSubTabAlignment("Center")
bCU_89.ExpeditionTab:SetSubTabAlignment("Center")
bCU_89.WebhookTab:SetSubTabAlignment("Center")
bCU_89.MiscTab:SetSubTabAlignment("Center")
bCU_115 = {
    Info = bCU_89.InfoTab,
    Join = bCU_89.JoinTab:AddSubTab("Auto Join", "log-in"),
    Play = bCU_89.MacroTab:AddSubTab("Automation", "play"),
    Position = bCU_89.MacroTab:AddSubTab("Positions", "map-pin"),
    Upgrade = bCU_89.MacroTab:AddSubTab("Upgrade", "arrow-big-up-dash"),
    Ability = bCU_89.MacroTab:AddSubTab("Abilities", "sparkles"),
    Game = bCU_89.GameTab:AddSubTab("Automation", "gamepad-2"),
    Expedition = bCU_89.ExpeditionTab:AddSubTab("Automation", "play"),
    Cards = bCU_89.ExpeditionTab:AddSubTab("Cards", "layers"),
    Buildings = bCU_89.ExpeditionTab:AddSubTab("Buildings", "building-2"),
    Equip = bCU_89.ExpeditionTab:AddSubTab("Equip", "shield"),
    Webhook = bCU_89.WebhookTab:AddSubTab("Match End", "flag"),
    Lobby = bCU_89.MiscTab:AddSubTab("Lobby", "store"),
    Bounty = bCU_89.MiscTab:AddSubTab("Bounty", "target"),
    Priority = bCU_89.PriorityTab,
    Settings = bCU_89.SettingsTab
}
fns.bCU_3 = function(adI)
    if setclipboard then
        setclipboard(adI)
    elseif toclipboard then
        toclipboard(adI)
    end
end
onJoinDiscordForKeylessScripts = function()
    fns.bCU_3(bCU_39)
    aDV:Notify("Copied Discord invite to clipboard")
end
bCU_92 = function(adO)
    local DiscordGroup = adO:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onJoinDiscordForKeylessScripts })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onJoinDiscordForKeylessScripts })
end
for k, v in bCU_115 do
    bCU_92(v)
end
bCU_89.StoryJoin = bCU_115.Join:AddLeftGroupbox("Story", "book-open")
bCU_89.StoryJoinStatus = bCU_89.StoryJoin:AddLabel("Status: Idle", true)
bCU_89.StoryJoin:AddDropdown("StoryMap", {
    Values = fns.bCU_21.JoinMaps("Story"),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = nil,
    AllowNull = true,
    Text = "Map",
    Tooltip = "Story, Infinite, or Mastery map to join.",
    Callback = fns.onStoryMap
})
bCU_89.StoryJoin:AddDropdown("StoryAct", {
    Values = { "Act 1", "Infinite", "Mastery" },
    Default = "Act 1",
    Text = "Stage",
    Tooltip = "Story act, Infinite, or Mastery stage to join.",
    Callback = fns.onStoryAct
})
bCU_89.StoryJoin:AddDropdown("StoryDifficulty", {
    Values = { "Normal" },
    Default = "Normal",
    Text = "Difficulty",
    Tooltip = "Story difficulty to join."
})
bCU_89.StoryJoin:AddToggle("JoinStory", { Text = "Auto Join", Default = false, Tooltip = "Automatically joins the selected story stage." })
bCU_89.StoryJoin:AddToggle("StoryMatchmaking", { Text = "Use Matchmaking", Default = false, Tooltip = "Uses public matchmaking for story stages." })
bCU_89.StoryJoin:AddSlider("StoryJoinDelay", {
    Text = "Auto Join Delay (s)",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Tooltip = "Seconds to wait before joining a story stage."
})
bCU_89.EventJoin = bCU_115.Join:AddRightGroupbox("Event", "swords")
bCU_89.EventJoinStatus = bCU_89.EventJoin:AddLabel("Status: Idle", true)
bCU_89.EventJoin:AddDropdown("EventAct", {
    Values = fns.bCU_21.EventJoinActs(),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = fns.bCU_21.EventJoinActs()[1],
    Text = "Act",
    Tooltip = "Event act to join."
})
bCU_89.EventJoin:AddToggle("JoinEvent", { Text = "Auto Join", Default = false, Tooltip = "Automatically joins the selected event act." })
bCU_89.EventJoin:AddSlider("EventCrowRelics", {
    Text = "Farm Crow at Relics (0=off)",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Tooltip = "Crow relic target before running the Crow stage."
})
bCU_89.EventJoin:AddLabel("Farms the selected act to the relic target, runs Crow, then returns to the selected act.", true)
bCU_89.EventJoin:AddToggle("EventMatchmaking", { Text = "Use Matchmaking", Default = false, Tooltip = "Uses public matchmaking for event stages." })
bCU_89.EventJoin:AddSlider("EventJoinDelay", {
    Text = "Auto Join Delay (s)",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Tooltip = "Seconds to wait before joining an event stage."
})
bCU_89.ChallengeJoin = bCU_115.Join:AddLeftGroupbox("Challenge", "flame")
bCU_89.ChallengeJoinStatus = bCU_89.ChallengeJoin:AddLabel("Status: Idle", true)
bCU_89.ChallengeJoin:AddDropdown("JoinChallengeType", {
    Values = fns.bCU_21.CHALLENGE_TYPE_ORDER,
    Default = { "Regular", "Weekly", "Daily" },
    Multi = true,
    AllowNull = true,
    Text = "Challenge Type",
    Tooltip = "Challenge rotations to join in Regular, Weekly, Daily order."
})
bCU_89.ChallengeJoin:AddDropdown("JoinChallengeNumber", {
    Values = { "1", "2", "3", "4", "5" },
    Default = nil,
    AllowNull = true,
    Text = "Regular Challenge # (blank = all)",
    Tooltip = "Specific regular challenge slot. Any joins all slots."
})
bCU_89.ChallengeJoin:AddDropdown("ChallengeDrops", {
    Values = fns.bCU_21.JoinDropChoices(),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Only Join If It Drops",
    Tooltip = "Only joins rotations containing a selected reward."
})
bCU_89.ChallengeJoin:AddToggle("ChallengeLobbyOnRefresh", {
    Text = "Back to Lobby on Refresh",
    Default = false,
    Tooltip = "Returns when the challenge rotation changes."
})
bCU_89.ChallengeJoin:AddToggle("JoinChallenge", {
    Text = "Auto Join",
    Default = false,
    Tooltip = "Automatically joins the selected challenge rotation."
})
bCU_89.ChallengeJoin:AddToggle("ChallengeMatchmaking", { Text = "Use Matchmaking", Default = false, Tooltip = "Uses public matchmaking for challenges." })
bCU_89.ChallengeJoin:AddSlider("ChallengeJoinDelay", {
    Text = "Auto Join Delay (s)",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Tooltip = "Seconds to wait before joining a challenge."
})
bCU_89.RaidJoin = bCU_115.Join:AddRightGroupbox("Raid", "skull")
bCU_89.RaidJoinStatus = bCU_89.RaidJoin:AddLabel("Status: Idle", true)
bCU_89.RaidJoin:AddDropdown("RaidMap", {
    Values = fns.bCU_21.JoinMaps("Raid"),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = nil,
    AllowNull = true,
    Text = "Map",
    Tooltip = "Raid map to join.",
    Callback = fns.onRaidMap
})
bCU_89.RaidJoin:AddDropdown("RaidAct", { Values = { "Act 1" }, Default = "Act 1", Text = "Act", Tooltip = "Raid act to join." })
bCU_89.RaidJoin:AddDropdown("RaidDifficulty", {
    Values = { "Normal" },
    Default = "Normal",
    Text = "Difficulty",
    Tooltip = "Raid difficulty to join."
})
bCU_89.RaidJoin:AddToggle("JoinRaid", { Text = "Auto Join", Default = false, Tooltip = "Automatically joins the selected raid stage." })
bCU_89.RaidJoin:AddToggle("RaidMatchmaking", { Text = "Use Matchmaking", Default = false, Tooltip = "Uses public matchmaking for raids." })
bCU_89.RaidJoin:AddSlider("RaidJoinDelay", {
    Text = "Auto Join Delay (s)",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Tooltip = "Seconds to wait before joining a raid."
})
fns.bCU_21.RefreshStoryJoin()
fns.bCU_21.RefreshJoinMode("Raid", "Raid")
bCU_89.JoinPriority = bCU_115.Priority:AddLeftGroupbox("Join Priority", "list-ordered")
bCU_89.JoinPriority:AddLabel("How it works", true)
bCU_89.JoinPriority:AddLabel("Enable priority and set each mode's number. The highest enabled number is tried first.", true)
bCU_89.JoinPriority:AddToggle("AutoJoinPriority", {
    Text = "Auto Join Priority",
    Default = false,
    Tooltip = "Uses the configured priorities instead of the fallback order."
})
for k, v in fns.bCU_21.JOIN_PRIORITY_MODES do
    bCU_89.JoinPriority:AddSlider(v .. "JoinPriority", {
        Text = v .. " Priority",
        Default = 0,
        Min = 0,
        Max = 10,
        Rounding = 0,
        Tooltip = "Join priority for " .. v .. "."
    })
end
fns.bCU_19, bCU_87, aEU, fns.bCU_18, aEx, aDY, bCU_73, aFY, aFB = nil, nil, nil, nil, nil, nil, nil, nil, nil
bCU_92 = 18
repeat
    bCU_56 = (bCU_92 * 5 + 4) % 6 + 1
    if bCU_56 <= 3 then
        if bCU_56 <= 2 then
            if bCU_56 <= 1 then
                bCU_38 = (vector.create((bCU_92 * 7 + 9) % 11 + 1, (bCU_92 * 5 + 5) % 13 + 1, (bCU_92 * 7 + 5) % 17 + 1))
                fns.bCU_24 = (vector.create((bCU_92 * 6 + 6) % 11 + 1, (bCU_92 * 10 + 12) % 13 + 1, (bCU_92 * 10 + 7) % 17 + 1))
                fns.bCU_7 = (vector.create((bCU_92 * 1 + 1) % 11 + 1, (bCU_92 * 1 + 3) % 13 + 1, (bCU_92 * 4 + 17) % 17 + 1))
                local bCU_139 = (vector.create((bCU_92 * 3 + 2) % 5 + 1, (bCU_92 * 1 + 4) % 7 + 1, (bCU_92 * 2 + 5) % 9 + 1))
                if vector.dot(vector.cross(bCU_38, (vector.cross(fns.bCU_24, fns.bCU_7))), bCU_139) == vector.dot(fns.bCU_24 * vector.dot(bCU_38, fns.bCU_7) - fns.bCU_7 * vector.dot(bCU_38, fns.bCU_24), bCU_139) + 3 then
                    bCU_87, fns.bCU_19, fns.bCU_18, aEU = "#e8a34d", "#6ec1ff", "#7fd47f", "#8b93a3"
                else
                    fns.bCU_19, bCU_87, aEU, fns.bCU_18 = "#7fd47f", "#6ec1ff", "#e8a34d", "#8b93a3"
                end
                bCU_92 = (bCU_92 + 29) % 48
            else
                bCU_38 = (vector.create((bCU_92 * 1 + 3) % 11 + 1, (bCU_92 * 10 + 3) % 13 + 1, (bCU_92 * 3 + 1) % 17 + 1))
                fns.bCU_24 = (vector.create((bCU_92 * 7 + 2) % 11 + 1, (bCU_92 * 11 + 4) % 13 + 1, (bCU_92 * 14 + 14) % 17 + 1))
                fns.bCU_7 = (vector.create((bCU_92 * 1 + 4) % 11 + 1, (bCU_92 * 11 + 1) % 13 + 1, (bCU_92 * 10 + 2) % 17 + 1))
                if vector.dot(vector.cross(bCU_38, fns.bCU_24), fns.bCU_7) == vector.dot(vector.cross(fns.bCU_24, fns.bCU_7), bCU_38) + 2 then
                    fns.bCU_19 = "Unknown"
                else
                    aEx = "Unknown"
                end
                bCU_92 = (bCU_92 + 41) % 48
            end
        else
            local bKw = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_92, 13), string.byte(tostring(aFY))), 29)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bKw, 2922335541), 2347714449), (bit32.bxor(bit32.band(bKw, 1372631754), 3600377809))), 2347714449), 3600377809) == bKw then
                pcall(fns.fn3319)
                bCU_89.AccountGroup = bCU_115.Info:AddLeftGroupbox("Account", "circle-user")
                bCU_89.AccountGroup:AddLabel(aFB("User", "ouroboros", fns.bCU_19), true)
                bCU_89.AccountGroup:AddLabel(aFB("Status", "Keyless", fns.bCU_19), true)
                bCU_89.AccountGroup:AddLabel(aFB("Executor", aEx, fns.bCU_19), true)
                bCU_89.GameGroup = bCU_115.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                bCU_89.GameGroup:AddLabel(aFY(aEL .. " [" .. tostring(game.PlaceId) .. "]", bCU_87), true)
                bCU_89.GameGroup:AddLabel(aFB("Place ID", tostring(game.PlaceId), bCU_87), true)
                bCU_89.SessionLabel = bCU_89.GameGroup:AddLabel(aFB("Session time", "0s", aEU), true)
                aDY = tostring(game.JobId)
            else
                pcall(fns.fn3319)
                fns.bCU_19.AccountGroup = aEx.Info:AddLeftGroupbox("Account", "circle-user")
                fns.bCU_19.AccountGroup:AddLabel(bCU_89("User", "ouroboros", bCU_115), true)
                fns.bCU_19.AccountGroup:AddLabel(bCU_89("Status", "Keyless", bCU_115), true)
                fns.bCU_19.AccountGroup:AddLabel(bCU_89("Executor", aEL, bCU_115), true)
                fns.bCU_19.GameGroup = aEx.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                fns.bCU_19.GameGroup:AddLabel(aEU(bCU_87 .. " [" .. tostring(game.PlaceId) .. "]", aDY), true)
                fns.bCU_19.GameGroup:AddLabel(bCU_89("Place ID", tostring(game.PlaceId), aDY), true)
                fns.bCU_19.SessionLabel = fns.bCU_19.GameGroup:AddLabel(bCU_89("Session time", "0s", aFB), true)
                aFY = tostring(game.JobId)
            end
            bCU_92 = (bCU_92 + 29) % 48
        end
    elseif bCU_56 <= 5 then
        if bCU_56 <= 4 then
            if bCU_92 * 108948241 + 9 + 1 >= bCU_92 * 108948241 + 9 + 1 + 4 then
                aDY = #bCU_73 > 18
            else
                bCU_73 = #aDY > 18
            end
            bCU_92 = (bCU_92 + 23) % 48
        else
            if bCU_92 * 40439733 + 11 + 6 <= bCU_92 * 40439733 + 11 + 6 + 6 then
                bCU_89.JoinPriority:AddLabel("Fallback starts with Story, Raid, then Challenge.", true)
                aFY = fns.fn3112
            else
                aFY.JoinPriority:AddLabel("Fallback starts with Story, Raid, then Challenge.", true)
                bCU_89 = fns.fn3112
            end
            bCU_92 = (bCU_92 + 11) % 48
        end
    else
        bCU_56 = {
            "cqyrysnt",
            "fpbdvwmt",
            "nvxayxlxqc",
            "ogofbctqej",
            "zflausn",
            "ulotkyb",
            "pjcjr",
            "zeqk",
            "qcfga",
            "isyxuhqz",
            "yrlzx",
            "yarxaamjlqlo"
        }
        if bCU_56[(bCU_92 * 62 + 92) % 12 + 1] < bCU_56[(bCU_92 * 62 + 92) % 12 + 1] then
            aDY = fns.fn4688
        else
            aFB = fns.fn4688
        end
        bCU_92 = (bCU_92 + 17) % 48
    end
until (bCU_92 * 29 + 45) % 48 == 21
if bCU_73 then
    bCU_92 = 1
    repeat
        bCU_56 = (vector.create((bCU_92 * 1 + 5) % 11 + 1, (bCU_92 * 5 + 6) % 13 + 1, (bCU_92 * 3 + 8) % 17 + 1))
        bCU_38 = (vector.create((bCU_92 * 7 + 7) % 11 + 1, (bCU_92 * 8 + 9) % 13 + 1, (bCU_92 * 15 + 15) % 17 + 1))
        fns.bCU_24 = (vector.create((bCU_92 * 1 + 3) % 11 + 1, (bCU_92 * 6 + 12) % 13 + 1, (bCU_92 * 11 + 15) % 17 + 1))
        fns.bCU_7 = (vector.create((bCU_92 * 1 + 8) % 11 + 1, (bCU_92 * 6 + 13) % 13 + 1, (bCU_92 * 1 + 8) % 17 + 1))
        if vector.dot(vector.cross(bCU_56, bCU_38), (vector.cross(fns.bCU_24, fns.bCU_7))) == vector.dot(bCU_56, fns.bCU_24) * vector.dot(bCU_38, fns.bCU_7) - vector.dot(bCU_56, fns.bCU_7) * vector.dot(bCU_38, fns.bCU_24) + 2 then
            aDY = string.sub(bCU_73, 1, 18) .. "..."
        else
            bCU_73 = string.sub(aDY, 1, 18) .. "..."
        end
        bCU_92 = (bCU_92 + 3) % 4
    until (bCU_92 * 1 + 0) % 4 == 0
end
bCU_92 = bCU_73 or aDY
bCU_56 = nil
bCU_73 = 2
repeat
    bCU_38 = (bCU_73 * 1 + 0) % 2 + 1
    if bCU_38 <= 1 then
        if bCU_73 * 102883213 + 11 + 4 >= bCU_73 * 102883213 + 11 + 4 + 2 then
            bCU_92 = bCU_56
        else
            bCU_56 = bCU_92
        end
        bCU_73 = (bCU_73 + 11) % 16
    else
        bCU_38 = { "qkwrwyitcc", "uicxwkysf", "mlozrfcbe", "bgdrqgyd", "mgpk", "dgyzmgalfe", "jehdjangy" }
        local bLA = bCU_73
        fns.bCU_24 = bCU_38[bLA % 7 + 1]
        if fns.bCU_24:len() >= fns.bCU_24:reverse():rep(bLA % 3 + 2):len() then
            onJoinDiscordForKeylessScripts.GameGroup:AddLabel(bCU_87("Server", bCU_115, aFY), true)
            onJoinDiscordForKeylessScripts.GameGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
            task.spawn(fns.worker2)
            onJoinDiscordForKeylessScripts.AdGroup = bCU_89.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
            onJoinDiscordForKeylessScripts.AdGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
            onJoinDiscordForKeylessScripts.AdGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
            onJoinDiscordForKeylessScripts.AdGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
            onJoinDiscordForKeylessScripts.AdGroup:AddButton({ Text = "Copy Discord Invite", Func = aEL })
            onJoinDiscordForKeylessScripts.ScriptsGroup = bCU_89.Info:AddRightGroupbox("Scripts", "package")
            onJoinDiscordForKeylessScripts.ScriptsGroup:AddLabel(aEU("Included in this hub", aFY), true)
            onJoinDiscordForKeylessScripts.ScriptsGroup:AddLabel(aEU(fns.bCU_18, aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup = bCU_89.Info:AddRightGroupbox("Features", "list")
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Auto Play", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Placement Manage", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Placement Positions", bCU_56), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Phantom Placements", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Smart Auto Place", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Smart Auto Position", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Placement Sigil VFX", bCU_56), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Smart Auto Ability", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Chase Mode", aFB), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Target Priority", bCU_56), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Yen Reserve", aFY), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Game Settings + Auto Next", aFY), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Performance", aFY), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Discord Webhook", aFY), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Auto Upgrade", bCU_56), true)
            onJoinDiscordForKeylessScripts.FeaturesGroup:AddLabel(aEU("Upgrade Manage", aFY), true)
            onJoinDiscordForKeylessScripts.SocialsGroup = bCU_89.Info:AddRightGroupbox("Socials", "link")
            onJoinDiscordForKeylessScripts.SocialsGroup:AddButton({ Text = "Discord", Func = aEL })
            onJoinDiscordForKeylessScripts.SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
            onJoinDiscordForKeylessScripts.FaqGroup = bCU_89.Info:AddRightGroupbox("FAQ", "circle-help")
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("Where do I get a good config?", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("How do I import / export configs?", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("How do I report bugs?", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("How do I make suggestions?", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("How do I get help or updates?", true)
            onJoinDiscordForKeylessScripts.FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
            onJoinDiscordForKeylessScripts.PlayGroup = bCU_89.Play:AddLeftGroupbox("Auto Play", "play")
            onJoinDiscordForKeylessScripts.PlayGroup:AddToggle("AutoPlay", {
                Default = false,
                Tooltip = "Places your equipped units around the saved positions once the round starts.",
                Text = "Auto Play"
            })
            onJoinDiscordForKeylessScripts.PlayGroup:AddToggle("SmartAutoPlace", {
                Default = false,
                Text = "Smart Auto Place",
                Tooltip = "Builds off the enemy path instead of saved positions. Solves them on join."
            })
            onJoinDiscordForKeylessScripts.PlayGroup:AddToggle("AutoStart", { Tooltip = "Votes to start the round automatically.", Text = "Auto Start Round", Default = true })
            onJoinDiscordForKeylessScripts.PlayGroup:AddToggle("UsePhantomPlacements", {
                Text = "Use Phantom Placements",
                Tooltip = "Queues the whole board for free; the game buys each unit when it can afford it.",
                Default = false
            })
            onJoinDiscordForKeylessScripts.PlayGroup:AddToggle("PauseGameAutoUpgrade", {
                Default = true,
                Text = "Pause game Auto Upgrade while placing",
                Tooltip = "Stops the game upgrading while a placement is waiting on yen. Any slot with an Upgrade Limit set keeps it paused all round regardless, since the game ignores those limits."
            })
            onJoinDiscordForKeylessScripts.StatusLabel = onJoinDiscordForKeylessScripts.PlayGroup:AddLabel(bCU_87("Status", "Idle", aFY), true)
            onJoinDiscordForKeylessScripts.YenLabel = onJoinDiscordForKeylessScripts.PlayGroup:AddLabel(bCU_87("Yen", "0", bCU_56), true)
            onJoinDiscordForKeylessScripts.WaveLabel = onJoinDiscordForKeylessScripts.PlayGroup:AddLabel(bCU_87("Wave", "-", aFB), true)
            onJoinDiscordForKeylessScripts.SlotTabs = bCU_89.Play:AddRightTabbox("Slot Setup")
            onJoinDiscordForKeylessScripts.OrderGroup = onJoinDiscordForKeylessScripts.SlotTabs:AddTab("Order", "list-ordered")
            onJoinDiscordForKeylessScripts.LimitGroup = onJoinDiscordForKeylessScripts.SlotTabs:AddTab("Limit", "hash")
            onJoinDiscordForKeylessScripts.WaveGroup = onJoinDiscordForKeylessScripts.SlotTabs:AddTab("Wave", "clock-3")
            onJoinDiscordForKeylessScripts.PriorityGroup = onJoinDiscordForKeylessScripts.SlotTabs:AddTab("Target", "crosshair")
            onJoinDiscordForKeylessScripts.OrderGroup:AddLabel("Lowest number is placed first. Do not set duplicates.", true)
        else
            bCU_89.GameGroup:AddLabel(aFB("Server", bCU_56, fns.bCU_18), true)
            bCU_89.GameGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
            task.spawn(fns.worker2)
            bCU_89.AdGroup = bCU_115.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
            bCU_89.AdGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
            bCU_89.AdGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
            bCU_89.AdGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
            bCU_89.AdGroup:AddButton({ Text = "Copy Discord Invite", Func = onJoinDiscordForKeylessScripts })
            bCU_89.ScriptsGroup = bCU_115.Info:AddRightGroupbox("Scripts", "package")
            bCU_89.ScriptsGroup:AddLabel(aFY("Included in this hub", fns.bCU_18), true)
            bCU_89.ScriptsGroup:AddLabel(aFY(aEL, bCU_87), true)
            bCU_89.FeaturesGroup = bCU_115.Info:AddRightGroupbox("Features", "list")
            bCU_89.FeaturesGroup:AddLabel(aFY("Auto Play", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Placement Manage", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Placement Positions", aEU), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Phantom Placements", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Smart Auto Place", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Smart Auto Position", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Placement Sigil VFX", aEU), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Smart Auto Ability", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Chase Mode", bCU_87), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Target Priority", aEU), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Yen Reserve", fns.bCU_18), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Game Settings + Auto Next", fns.bCU_18), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Performance", fns.bCU_18), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Discord Webhook", fns.bCU_18), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Auto Upgrade", aEU), true)
            bCU_89.FeaturesGroup:AddLabel(aFY("Upgrade Manage", fns.bCU_18), true)
            bCU_89.SocialsGroup = bCU_115.Info:AddRightGroupbox("Socials", "link")
            bCU_89.SocialsGroup:AddButton({ Text = "Discord", Func = onJoinDiscordForKeylessScripts })
            bCU_89.SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
            bCU_89.FaqGroup = bCU_115.Info:AddRightGroupbox("FAQ", "circle-help")
            bCU_89.FaqGroup:AddLabel("Where do I get a good config?", true)
            bCU_89.FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
            bCU_89.FaqGroup:AddLabel("How do I import / export configs?", true)
            bCU_89.FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
            bCU_89.FaqGroup:AddLabel("How do I report bugs?", true)
            bCU_89.FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
            bCU_89.FaqGroup:AddLabel("How do I make suggestions?", true)
            bCU_89.FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
            bCU_89.FaqGroup:AddLabel("How do I get help or updates?", true)
            bCU_89.FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
            bCU_89.PlayGroup = bCU_115.Play:AddLeftGroupbox("Auto Play", "play")
            bCU_89.PlayGroup:AddToggle("AutoPlay", {
                Text = "Auto Play",
                Default = false,
                Tooltip = "Places your equipped units around the saved positions once the round starts."
            })
            bCU_89.PlayGroup:AddToggle("SmartAutoPlace", {
                Text = "Smart Auto Place",
                Default = false,
                Tooltip = "Builds off the enemy path instead of saved positions. Solves them on join."
            })
            bCU_89.PlayGroup:AddToggle("AutoStart", { Text = "Auto Start Round", Default = true, Tooltip = "Votes to start the round automatically." })
            bCU_89.PlayGroup:AddToggle("UsePhantomPlacements", {
                Text = "Use Phantom Placements",
                Default = false,
                Tooltip = "Queues the whole board for free; the game buys each unit when it can afford it."
            })
            bCU_89.PlayGroup:AddToggle("PauseGameAutoUpgrade", {
                Text = "Pause game Auto Upgrade while placing",
                Default = true,
                Tooltip = "Stops the game upgrading while a placement is waiting on yen. Any slot with an Upgrade Limit set keeps it paused all round regardless, since the game ignores those limits."
            })
            bCU_89.StatusLabel = bCU_89.PlayGroup:AddLabel(aFB("Status", "Idle", fns.bCU_18), true)
            bCU_89.YenLabel = bCU_89.PlayGroup:AddLabel(aFB("Yen", "0", aEU), true)
            bCU_89.WaveLabel = bCU_89.PlayGroup:AddLabel(aFB("Wave", "-", bCU_87), true)
            bCU_89.SlotTabs = bCU_115.Play:AddRightTabbox("Slot Setup")
            bCU_89.OrderGroup = bCU_89.SlotTabs:AddTab("Order", "list-ordered")
            bCU_89.LimitGroup = bCU_89.SlotTabs:AddTab("Limit", "hash")
            bCU_89.WaveGroup = bCU_89.SlotTabs:AddTab("Wave", "clock-3")
            bCU_89.PriorityGroup = bCU_89.SlotTabs:AddTab("Target", "crosshair")
            bCU_89.OrderGroup:AddLabel("Lowest number is placed first. Do not set duplicates.", true)
        end
        bCU_73 = (bCU_73 + 15) % 16
    end
until (bCU_73 * 13 + 12) % 16 == 8
local bCU_10 = 1
local bCU_41 = fns.bCU_22
while bCU_10 <= bCU_41 do
    local bCU_140 = bCU_10
    bCU_89.OrderGroup:AddSlider("PlaceOrder" .. bCU_140, {
        Text = "Place Order for Slot " .. bCU_140,
        Default = bCU_140,
        Min = 1,
        Max = fns.bCU_22,
        Rounding = 0,
        Tooltip = "Lowest number is placed first. No duplicates."
    })
    bCU_10 += 1
end
bCU_92 = 1
repeat
    bCU_73 = {
        "jrcdtx",
        "vcljfmuvc",
        "vhlsx",
        "bdfmefrq",
        "lfuidkj",
        "qqiou",
        "voguamljqa",
        "znlsyuz",
        "cynszsmgngyp",
        "muswsovsdy",
        "ldozupuxijpf",
        "rzgr",
        "hef",
        "tcfuh"
    }
    if bCU_73[(bCU_92 * 95 + 49) % 14 + 1] < bCU_73[(bCU_92 * 95 + 49) % 14 + 1] then
        bCU_89.WaveGroup:AddLabel("Only start placing after the set wave. 0 always places.", true)
        bCU_89.WaveGroup:AddToggle("GlobalPlaceWave", {
            Text = "Use one wave for every slot",
            Default = false,
            Tooltip = "Use one wave for every slot instead of the sliders below."
        })
        bCU_89.WaveGroup:AddSlider("GlobalPlaceWaveValue", {
            Text = "Place every slot at wave",
            Rounding = 0,
            Max = 60,
            Default = 0,
            Min = 0,
            Tooltip = "Wave every slot waits for. 0 places immediately."
        })
    else
        bCU_89.WaveGroup:AddLabel("Only start placing after the set wave. 0 always places.", true)
        bCU_89.WaveGroup:AddToggle("GlobalPlaceWave", {
            Text = "Use one wave for every slot",
            Default = false,
            Tooltip = "Use one wave for every slot instead of the sliders below."
        })
        bCU_89.WaveGroup:AddSlider("GlobalPlaceWaveValue", {
            Text = "Place every slot at wave",
            Default = 0,
            Min = 0,
            Max = 60,
            Rounding = 0,
            Tooltip = "Wave every slot waits for. 0 places immediately."
        })
    end
    bCU_92 = (bCU_92 + 1) % 8
until (bCU_92 * 5 + 1) % 8 == 3
local bCU_113 = 1
local bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_106 = bCU_113
    bCU_89.WaveGroup:AddSlider("PlaceWave" .. bCU_106, {
        Text = "Place Wave for Slot " .. bCU_106,
        Default = 0,
        Min = 0,
        Max = 60,
        Rounding = 0,
        Tooltip = "Hold this slot until the set wave. 0 places immediately."
    })
    bCU_113 += 1
end
bCU_89.LimitGroup:AddLabel("1 or higher places that many. 0 places up to the trait aware limit. -1 never places.", true)
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_88 = bCU_113
    bCU_89.LimitGroup:AddSlider("PlaceLimit" .. bCU_88, {
        Text = "Place Limit for Slot " .. bCU_88,
        Default = 0,
        Min = -1,
        Max = 20,
        Rounding = 0,
        Tooltip = "Copies to place. 0 uses the unit trait aware limit, -1 skips the slot."
    })
    bCU_113 += 1
end
bCU_89.UnitGroup = bCU_115.Play:AddLeftGroupbox("Units", "users")
bCU_89.UnitGroup:AddDropdown("IgnoreUnits", {
    Values = {},
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Ignore Units",
    Tooltip = "Ticked units are never placed."
})
bCU_89.UnitGroup:AddButton({
    Text = "Refresh equipped units",
    Tooltip = "Reload the list after swapping units.",
    Func = fns.onRefreshEquippedUnits
})
bCU_89.ChaseGroup = bCU_115.Play:AddLeftGroupbox("Chase Mode", "crosshair")
bCU_89.ChaseGroup:AddToggle("ChaseMode", {
    Text = "Chase Mode",
    Default = false,
    Tooltip = "Sells the board and rebuilds on an enemy that got past it. Costs yen."
})
bCU_89.ChaseGroup:AddDropdown("ChaseTarget", {
    Values = { fns.bCU_21.CHASE_NORMAL, fns.bCU_21.CHASE_BOSS, fns.bCU_21.CHASE_ANY },
    Default = fns.bCU_21.CHASE_ANY,
    Text = "Target Enemy",
    Tooltip = "Which leaked enemies are worth rebuilding for."
})
bCU_89.ChaseGroup:AddSlider("ChaseCooldown", {
    Text = "Chase cooldown",
    Default = 10,
    Min = 3,
    Max = 60,
    Rounding = 0,
    Suffix = "s",
    Tooltip = "Minimum gap between chases."
})
bCU_89.PriorityGroup:AddLabel("Applied to each unit as it lands. Farm units ignore targeting.", true)
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_51 = bCU_113
    bCU_89.PriorityGroup:AddDropdown("Priority" .. bCU_51, {
        Values = fns.bCU_21.PRIORITY_VALUES,
        Default = fns.bCU_21.PRIORITY_DEFAULT,
        Text = "Target Priority for Slot " .. bCU_51,
        Tooltip = "What this slot targets. Default leaves it alone. Farms ignore this."
    })
    bCU_113 += 1
end
bCU_92 = 3
repeat
    bCU_73 = {
        "hsjqfvb",
        "tus",
        "ypzyj",
        "cgkyci",
        "fdqsbvieaw",
        "dkawo",
        "haaaxx",
        "ratzukv",
        "ybgwvfbzcv",
        "sqqm",
        "wvjmwwoqrux"
    }
    local bHG = bCU_92
    bCU_56 = bCU_73[bHG % 11 + 1]
    if bCU_56:len() >= bCU_56:reverse():rep(bHG % 3 + 2):len() then
        bCU_89.UnitGroup:AddLabel("Equipped Units", true)
        bCU_89.RosterLabels = {}
    else
        bCU_89.UnitGroup:AddLabel("Equipped Units", true)
        bCU_89.RosterLabels = {}
    end
    bCU_92 = (bCU_92 + 0) % 8
until (bCU_92 * 7 + 0) % 8 == 5
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_20 = bCU_113
    bCU_89.RosterLabels[bCU_20] = bCU_89.UnitGroup:AddLabel(aFB("Slot " .. bCU_20, "empty", fns.bCU_18), true)
    bCU_113 += 1
end
aGB = nil
aGB = fns.fn4103
bCU_89.PositionGroup = bCU_115.Position:AddLeftGroupbox("Placement Position", "map-pin")
bCU_89.PositionWarning = bCU_89.PositionGroup:AddLabel("", true)
bCU_89.MapLabelUi = bCU_89.PositionGroup:AddLabel(aFB("Current Map", "Not in a stage", bCU_87), true)
bCU_89.SlotLabels = {}
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_117 = bCU_113
    bCU_89.SlotLabels[bCU_117] = bCU_89.PositionGroup:AddLabel(aFB("Slot " .. bCU_117, "not set", fns.bCU_18), true)
    bCU_113 += 1
end
aGk, bCU_73 = nil, nil
bCU_89.SlotValues = fns.bCU_21.PositionChoices()
bCU_89.PositionGroup:AddDropdown("SetSlotPosition", {
    Values = bCU_89.SlotValues,
    Default = nil,
    AllowNull = true,
    Text = "Set Placement Position",
    Tooltip = "Choose the exact copy of a hotbar unit to save at your current position.",
    Callback = fns.onSetSlotPosition
})
bCU_89.PositionGroup:AddButton({
    Text = "Mass Set Slot Positions",
    Tooltip = "Saves every placement of every hotbar slot at your current position.",
    Func = fns.onMassSetSlotPositions
})
bCU_89.SmartGroup = bCU_115.Position:AddLeftGroupbox("Smart Auto Position", "route")
bCU_89.SmartGroup:AddLabel("Reads the map's own enemy path and solves a spot for every slot.", true)
bCU_89.SmartGroup:AddDropdown("SmartPlaceMode", {
    Values = fns.bCU_21.SMART_MODES,
    Default = fns.bCU_21.SMART.Path,
    Text = "Build location",
    Tooltip = "Where on the map to build."
})
bCU_89.SmartGroup:AddDropdown("SmartPlacementCondition", {
    Values = fns.bCU_21.SMART_CONDITIONS,
    Default = "Left to Right on Hotbar",
    Text = "Conditions",
    Tooltip = "Controls which eligible hotbar unit Smart Auto Place builds next."
})
bCU_89.SmartGroup:AddSlider("SmartPathDistance", {
    Text = "Distance along path",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "How far along the path to build. 0% is spawn, 100% is your base."
})
bCU_89.SmartGroup:AddToggle("ShowPathDistance", { Text = "Show path marker", Default = false, Tooltip = "Marks the build point on the path." })
bCU_89.WavePositionGroup = bCU_115.Position:AddRightGroupbox("Wave Reposition", "shuffle")
bCU_89.WavePositionStatus = bCU_89.WavePositionGroup:AddLabel("Saved waves: none", true)
bCU_89.WavePositionGroup:AddToggle("WaveReposition", {
    Text = "Auto Reposition at Saved Waves",
    Default = false,
    Tooltip = "Sells changed slots and rebuilds them when a saved formation wave is reached."
})
bCU_89.WavePositionGroup:AddSlider("WavePositionWave", {
    Text = "Formation Wave",
    Default = 10,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Tooltip = "Wave assigned to the positions edited below."
})
bCU_89.WavePositionGroup:AddToggle("PreviewWavePositions", {
    Text = "Preview Selected Formation",
    Default = false,
    Tooltip = "Shows the selected wave's positions with placement sigils."
})
bCU_89.WavePositionGroup:AddDropdown("SetWaveSlotPosition", {
    Values = bCU_89.SlotValues,
    Default = nil,
    AllowNull = true,
    Text = "Set Formation Position",
    Tooltip = "Saves one placement at your current location for the selected wave.",
    Callback = fns.onSetWaveSlotPosition
})
bCU_89.WavePositionGroup:AddButton({
    Text = "Mass Set Formation Positions",
    Tooltip = "Saves every placement at your current location for the selected wave.",
    Func = fns.onMassSetFormationPositions
})
bCU_89.WavePositionGroup:AddDropdown("ResetWaveSlotPosition", {
    Values = bCU_89.SlotValues,
    Default = nil,
    AllowNull = true,
    Text = "Reset Formation Position",
    Tooltip = "Clears one placement from the selected wave formation.",
    Callback = fns.onResetWaveSlotPosition
})
bCU_89.WavePositionGroup:AddButton({
    Text = "Reset Selected Wave Formation",
    Tooltip = "Clears every saved position for the selected formation wave.",
    Risky = true,
    Func = fns.onResetSelectedWaveFormation
})
bCU_89.ResetGroup = bCU_115.Position:AddRightGroupbox("Position Manage", "eraser")
bCU_89.ResetGroup:AddDropdown("ResetSlotPosition", {
    Values = bCU_89.SlotValues,
    Default = nil,
    AllowNull = true,
    Text = "Reset Placement Position",
    Tooltip = "Clears one specific placement position on this map.",
    Callback = fns.onResetSlotPosition
})
bCU_89.ResetGroup:AddButton({
    Text = "Reset Positions For This Map",
    Tooltip = "Clears all slots on this map.",
    Risky = true,
    Func = fns.onResetPositionsForThisMap
})
bCU_89.ResetGroup:AddButton({
    Text = "Reset Positions For Every Map",
    Tooltip = "Clears every saved position. No undo.",
    Risky = true,
    DoubleClick = true,
    Func = fns.onResetPositionsForEveryMap
})
bCU_89.VfxGroup = bCU_115.Position:AddRightGroupbox("Placement Sigil", "circle-dashed")
bCU_89.VfxGroup:AddToggle("ShowPlacementVfx", {
    Text = "Show Placement Sigil",
    Default = true,
    Tooltip = "Marks each saved slot position on the ground."
})
bCU_89.VfxGroup:AddSlider("PlacementVfxSize", {
    Text = "Sigil size",
    Default = 12,
    Min = 4,
    Max = 40,
    Rounding = 0,
    Suffix = " studs",
    Tooltip = "Sigil size."
})
bCU_89.VfxGroup:AddSlider("PlacementVfxOpacity", {
    Text = "Sigil opacity",
    Default = 70,
    Min = 5,
    Max = 100,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Sigil opacity."
})
aGk = "Hotbar left to right (until Max)"
bCU_38 = "Randomize"
bCU_56 = "Lowest Level (Spread Upgrade)"
if (aGk and aGk and (bCU_73 or not bCU_73) and ((not aGk or not aGk) and (not aGk or aGk)) or (bCU_73 and aGk or (bCU_73 or aGk)) and (not aGk and bCU_73 or (not bCU_73 or bCU_73))) and not (aGk and aGk and (bCU_73 or not bCU_73) and ((not aGk or not aGk) and (not aGk or aGk)) or (bCU_73 and aGk or (bCU_73 or aGk)) and (not aGk and bCU_73 or (not bCU_73 or bCU_73))) then
    aGk = "Customize upgrade order (Set below)"
else
    bCU_73 = "Customize upgrade order (Set below)"
end
bCU_89.UpgradeGroup = bCU_115.Upgrade:AddLeftGroupbox("Auto Upgrade", "arrow-big-up-dash")
bCU_89.UpgradeGroup:AddToggle("AutoUpgrade", {
    Text = "Auto Upgrade",
    Default = false,
    Tooltip = "Upgrades the units Auto Play placed. Needs Auto Play on."
})
bCU_89.UpgradeManageGroup = bCU_115.Upgrade:AddLeftGroupbox("Upgrade Manage", "sliders-horizontal")
bCU_89.UpgradeManageGroup:AddToggle("UpgradeAndPlace", {
    Text = "Upgrade and Place",
    Default = false,
    Tooltip = "On: upgrade between placements. Off: finish placing first."
})
bCU_89.UpgradeManageGroup:AddToggle("FocusOnFarm", { Text = "Focus on Farm", Default = true, Tooltip = "Upgrade farms first." })
bCU_89.UpgradeManageGroup:AddDropdown("UpgradeMethod", {
    Values = { aGk, bCU_38, bCU_56, bCU_73 },
    Default = aGk,
    Text = "Upgrade Method",
    Tooltip = "How upgrades are shared out once farms are done."
})
bCU_89.UpgradeConfig = bCU_115.Upgrade:AddRightTabbox("Upgrade Settings")
bCU_89.UpgradeLimitGroup = bCU_89.UpgradeConfig:AddTab("UL", "hash")
bCU_89.UpgradeLimitGroup:AddLabel("1 or higher stops at that level. 0 upgrades to max. -1 waits until everything else is done. -2 never upgrades.", true)
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_103 = bCU_113
    bCU_89.UpgradeLimitGroup:AddSlider("UpgradeLimit" .. bCU_103, {
        Text = "Upgrade Limit for Slot " .. bCU_103,
        Default = 0,
        Min = -2,
        Max = 20,
        Rounding = 0,
        Tooltip = "Level cap. 0 is max, -1 waits until last, -2 never."
    })
    bCU_113 += 1
end
bCU_89.UpgradeOrderGroup = bCU_89.UpgradeConfig:AddTab("UO", "list-ordered")
bCU_89.UpgradeOrderGroup:AddLabel("Used by the Customize upgrade order method. Lowest number is upgraded first. Do not set duplicates.", true)
bCU_73 = {}
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_30 = bCU_113
    table.insert(bCU_73, bCU_30)
    bCU_113 += 1
end
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_141 = bCU_113
    bCU_89.UpgradeOrderGroup:AddDropdown("UpgradeOrder" .. bCU_141, {
        Values = bCU_73,
        Default = bCU_141,
        Text = "Upgrade Order for Slot " .. bCU_141,
        Tooltip = "Used by the Customize method. Lowest is upgraded first."
    })
    bCU_113 += 1
end
bCU_92 = 7
repeat
    local bH5 = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_92, 7), string.byte(tostring(bCU_92))), 4)
    if bit32.bxor(bit32.lrotate(bit32.bxor(bH5, 1232238015), 22), 1876057245) == bit32.lrotate(bH5, 22) then
        bCU_89.UpgradeWaveGroup = bCU_89.UpgradeConfig:AddTab("UW", "clock-3")
        bCU_89.UpgradeWaveGroup:AddLabel("Hold a slot back from upgrading until the set wave. 0 upgrades from the start.", true)
    else
        bCU_89.UpgradeWaveGroup = bCU_89.UpgradeConfig:AddTab("UW", "clock-3")
        bCU_89.UpgradeWaveGroup:AddLabel("Hold a slot back from upgrading until the set wave. 0 upgrades from the start.", true)
    end
    bCU_92 = (bCU_92 + 5) % 8
until (bCU_92 * 3 + 4) % 8 == 0
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_128 = bCU_113
    bCU_89.UpgradeWaveGroup:AddSlider("UpgradeWave" .. bCU_128, {
        Text = "Upgrade Wave for Slot " .. bCU_128,
        Default = 0,
        Min = 0,
        Max = 60,
        Rounding = 0,
        Tooltip = "Wave this slot starts upgrading at. 0 upgrades immediately."
    })
    bCU_113 += 1
end
bCU_89.ReserveGroup = bCU_115.Upgrade:AddLeftGroupbox("Yen Reserve", "piggy-bank")
bCU_89.ReserveGroup:AddSlider("YenReserve", {
    Text = "Keep yen in reserve",
    Default = 0,
    Min = 0,
    Max = 100000,
    Rounding = 0,
    Prefix = "¥",
    Tooltip = "Auto Upgrade never spends below this."
})
bCU_89.ReserveGroup:AddToggle("ReserveForPlacement", {
    Text = "Reserve for wave gated units",
    Default = true,
    Tooltip = "Holds back yen for units still waiting on their wave."
})
bCU_89.OddlySpecificUpgrade = bCU_115.Upgrade:AddRightGroupbox("Oddly Specific", "puzzle")
bCU_89.OddlySpecificUpgrade:AddToggle("UpgradeSlot2WhenCheaperThanRamen", {
    Text = "Upgrade Slot 2 When Cheaper Than Ramen Guy",
    Default = false,
    Tooltip = "Prioritizes Slot 2 when its next upgrade costs less than Ramen Guy's next upgrade."
})
bCU_89.AbilityGroup = bCU_115.Ability:AddLeftGroupbox("Smart Auto Ability", "sparkles")
bCU_89.AbilityLabels = {}
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_114 = bCU_113
    bCU_89.AbilityLabels[bCU_114] = bCU_89.AbilityGroup:AddLabel(aFB("Slot " .. bCU_114, "empty", fns.bCU_18), true)
    bCU_113 += 1
end
bCU_92 = 7
repeat
    local bMY = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_92, 25), string.byte(tostring(bCU_92))), 27)
    if bit32.bxor(bit32.lrotate(bit32.bxor(bMY, 1116477177), 18), 1541737008) ~= bit32.lrotate(bMY, 18) then
        bCU_115.MAX_ABILITIES = 3
        fns.bCU_21.AbilityConfig = bCU_89.Ability:AddRightGroupbox("Ability Trigger", "zap")
    else
        fns.bCU_21.MAX_ABILITIES = 3
        bCU_89.AbilityConfig = bCU_115.Ability:AddRightGroupbox("Ability Trigger", "zap")
    end
    bCU_92 = (bCU_92 + 6) % 8
until (bCU_92 * 5 + 5) % 8 == 6
bCU_113 = 1
bCU_127 = fns.bCU_22
while bCU_113 <= bCU_127 do
    local bCU_100 = bCU_113
    bCU_92 = fns.bCU_21.MAX_ABILITIES
    local bCU_36 = 1
    local bCU_71 = bCU_92
    while bCU_36 <= bCU_71 do
        local bCU_23 = bCU_36
        bCU_89.AbilityConfig:AddDropdown("Ability" .. bCU_100 .. "_" .. bCU_23, {
            Values = fns.bCU_21.ABILITY_MODES,
            Default = bCU_86,
            Text = "Slot " .. bCU_100 .. " ability " .. bCU_23,
            Visible = false,
            Tooltip = "When this ability fires."
        })
        bCU_89.AbilityConfig:AddSlider("AbilityWave" .. bCU_100 .. "_" .. bCU_23, {
            Text = "Slot " .. bCU_100 .. " ability " .. bCU_23 .. " wave",
            Default = 0,
            Min = 0,
            Max = 60,
            Rounding = 0,
            Visible = false,
            Tooltip = "Wave to start firing, for the Wave X mode."
        })
        bCU_36 += 1
    end
    bCU_113 += 1
end
bCU_52 = nil
bCU_52 = fns.fn3832
bCU_89.ExpGroup = bCU_115.Expedition:AddLeftGroupbox("Expedition", "compass")
bCU_89.ExpGroup:AddToggle("ExpAuto", {
    Text = "Auto Expedition",
    Default = false,
    Tooltip = "Runs the expedition: route, cards, checkpoints and extract."
})
bCU_89.ExpStatus = bCU_89.ExpGroup:AddLabel(aFB("Status", "Not in an expedition", fns.bCU_18), true)
bCU_89.ExpNode = bCU_89.ExpGroup:AddLabel(aFB("Node", "-", bCU_87), true)
bCU_89.ExpPayload = bCU_89.ExpGroup:AddLabel(aFB("Payload", "-", aEU), true)
bCU_89.ExpJoin = bCU_115.Expedition:AddLeftGroupbox("Auto Join", "swords")
bCU_89.ExpeditionJoinStatus = bCU_89.ExpJoin:AddLabel("Status: Idle", true)
bCU_89.ExpJoin:AddDropdown("ExpeditionJoinMap", {
    Values = fns.bCU_21.JoinMaps("Expedition"),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = fns.bCU_21.JoinMaps("Expedition")[1],
    Text = "Map",
    Tooltip = "Expedition map to join."
})
bCU_89.ExpJoin:AddSlider("ExpeditionJoinDifficulty", {
    Text = "Difficulty",
    Default = 1,
    Min = 1,
    Max = 3,
    Rounding = 0,
    Tooltip = "Expedition difficulty level."
})
bCU_89.ExpJoin:AddToggle("JoinExpedition", {
    Text = "Auto Join Expedition",
    Default = false,
    Tooltip = "Automatically joins the selected Expedition map."
})
bCU_89.ExpJoin:AddSlider("ExpeditionJoinDelay", {
    Text = "Auto Join Delay (s)",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Tooltip = "Seconds to wait before joining an Expedition."
})
bCU_89.ExpJoin:AddToggle("ExpeditionMatchmaking", { Text = "Use Matchmaking", Default = false, Tooltip = "Uses public matchmaking for Expeditions." })
bCU_89.ExpBox = bCU_115.Expedition:AddRightTabbox("Expedition Setup")
bCU_89.ExpRun = bCU_89.ExpBox:AddTab("Run", "play")
bCU_89.ExpRun:AddToggle("ExpAutoLeave", {
    Text = "Auto Leave Checkpoint",
    Default = true,
    Tooltip = "Continues the payload once a checkpoint is done."
})
bCU_89.ExpRun:AddToggle("ExpAutoExtract", {
    Text = "Auto Extract",
    Default = false,
    Tooltip = "Extracts once the boss count below is cleared."
})
bCU_89.ExpRun:AddSlider("ExpExtractAfterBoss", {
    Text = "Extract after boss #",
    Default = 1,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Tooltip = "Bosses to clear before extracting."
})
bCU_89.ExpRun:AddToggle("ExpAutoOrbs", { Text = "Auto Collect Orbs", Default = true, Tooltip = "Picks up dropped orbs." })
bCU_89.ExpRoute = bCU_89.ExpBox:AddTab("Route", "route")
bCU_89.ExpRoute:AddToggle("ExpAutoPath", {
    Text = "Auto Path",
    Default = false,
    Tooltip = "Picks the route that pays the most of the resource below."
})
bCU_89.ExpRoute:AddDropdown("ExpWantedResource", {
    Values = fns.bCU_21.EXPEDITION_REWARDS,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = "Any",
    Text = "Collect most of",
    Tooltip = "Resource the route is chosen for."
})
bCU_89.ExpRoute:AddButton({
    Text = "Refresh Resources",
    Tooltip = "Reload the list from the current map.",
    Func = fns.onRefreshResources
})
bCU_89.ExpRoute:AddButton({
    Text = "Plan Route Now",
    Tooltip = "Sets the route once without enabling Auto Path.",
    Func = fns.onPlanRouteNow
})
bCU_89.ExpCards = bCU_115.Cards:AddLeftGroupbox("Cards", "layers")
bCU_89.ExpCards:AddToggle("ExpAutoCards", {
    Text = "Auto Cards",
    Default = false,
    Tooltip = "Takes the offered card with the highest priority."
})
bCU_89.ExpCards:AddLabel("0 never, 10 highest.", true)
fns.bCU_21.BuildExpeditionCardUi = fns.fn68
fns.bCU_21.BuildExpeditionCardUi(bCU_89.ExpCards)
bCU_89.ExpAnvils = bCU_89.ExpBox:AddTab("Anvils", "hammer")
bCU_89.ExpAnvils:AddToggle("ExpAutoStatAnvil", {
    Text = "Auto Use Stat Anvil",
    Default = false,
    Tooltip = "Uses anvils and selects the highest-priority offered stat."
})
bCU_89.ExpAnvils:AddLabel("0 never, 10 highest.", true)
fns.bCU_21.BuildExpeditionAnvilUi = fns.fn2797
fns.bCU_21.BuildExpeditionAnvilUi(bCU_89.ExpAnvils)
bCU_89.ExpMerchant = bCU_115.Expedition:AddLeftGroupbox("Checkpoint Merchant", "shopping-cart")
bCU_89.ExpMerchant:AddToggle("ExpAutoBuy", { Text = "Auto Buy", Default = false, Tooltip = "Buys the selected checkpoint offers." })
bCU_89.ExpMerchant:AddDropdown("ExpBuyItems", {
    Values = fns.bCU_21.AllExpeditionShopItems(),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Buy Items",
    Tooltip = "Checkpoint offers to buy."
})
bCU_89.ExpMerchant:AddDropdown("ExpTomeTraits", {
    Values = fns.bCU_21.AllExpeditionTraits(),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Buy Tome Traits",
    Tooltip = "Tome traits to accept."
})
bCU_89.ExpMerchant:AddToggle("ExpAutoHire", { Text = "Auto Hire", Default = false, Tooltip = "Hires the selected helper units." })
bCU_89.ExpMerchant:AddDropdown("ExpHireUnits", {
    Values = fns.bCU_21.ExpeditionHelperAssets(),
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Hire Units",
    Tooltip = "Helper units to hire."
})
bCU_89.ExpMerchant:AddToggle("ExpAutoRepair", {
    Text = "Auto Repair Payload",
    Default = false,
    Tooltip = "Buys repairs below the selected health."
})
bCU_89.ExpMerchant:AddSlider("ExpRepairBelow", {
    Text = "Repair below HP",
    Default = 50,
    Min = 1,
    Max = 99,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Payload health that triggers repairs."
})
bCU_89.ExpMerchant:AddToggle("ExpAutoApplyTomes", { Text = "Auto Apply Tomes", Default = false, Tooltip = "Uses matching tomes from the hotbar." })
bCU_89.ExpMerchant:AddButton({
    Text = "Refresh Lists",
    Tooltip = "Reload checkpoint offers and helpers.",
    Func = fns.onRefreshLists
})
bCU_89.ExpAutomation = bCU_115.Expedition:AddRightTabbox("Expedition Automation")
bCU_89.ExpPlacement = bCU_89.ExpAutomation:AddTab("EAP", "map-pin")
bCU_89.ExpUpgrade = bCU_89.ExpAutomation:AddTab("EAU", "arrow-big-up-dash")
bCU_89.ExpPlacement:AddToggle("ExpSmartPlace", {
    Text = "Expedition Smart Auto Place",
    Default = false,
    Tooltip = "Places on the ground beside the payload."
})
bCU_89.ExpPlacement:AddSlider("ExpPathPosition", {
    Text = "Path Position",
    Default = 70,
    Min = 1,
    Max = 99,
    Rounding = 0,
    Tooltip = "99 is closest to the payload, 1 is closest to the enemy spawn."
})
bCU_89.ExpPlacement:AddSlider("ExpPlaceSpacing", {
    Text = "Spacing",
    Default = 8,
    Min = 2,
    Max = 24,
    Rounding = 0,
    Suffix = " studs",
    Tooltip = "Minimum space between placed units."
})
bCU_89.ExpPlacement:AddToggle("ExpEmergencyReposition", {
    Text = "Emergency Backline Reposition",
    Default = true,
    Tooltip = "Moves only front damage units that can no longer reach a healthy enemy near the payload."
})
bCU_89.ExpPlacement:AddSlider("ExpEmergencyHealth", {
    Text = "Enemy health trigger",
    Default = 35,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Minimum remaining enemy health required before repositioning units."
})
bCU_89.ExpPlacement:AddSlider("ExpEmergencyDistance", {
    Text = "Near payload distance",
    Default = 55,
    Min = 15,
    Max = 120,
    Rounding = 0,
    Suffix = " studs",
    Tooltip = "How close an enemy must be to the payload before emergency repositioning."
})
bCU_89.ExpPlacement:AddSlider("ExpEmergencyCooldown", {
    Text = "Reposition cooldown",
    Default = 10,
    Min = 3,
    Max = 60,
    Rounding = 0,
    Suffix = "s",
    Tooltip = "Minimum delay between expedition emergency moves."
})
bCU_89.ExpUpgrade:AddToggle("ExpAutoUpgrade", {
    Text = "Expedition Auto Upgrade",
    Default = false,
    Tooltip = "Upgrades Expedition units independently from normal Auto Upgrade."
})
bCU_89.ExpUpgrade:AddToggle("ExpUpgradeFarmFirst", {
    Text = "Upgrade Farm First",
    Default = true,
    Tooltip = "Prioritizes hired farm units in Expeditions."
})
bCU_89.ExpRestart = bCU_115.Expedition:AddRightGroupbox("Restart Rules", "rotate-ccw")
bCU_89.ExpRestart:AddToggle("ExpAutoRestart", {
    Text = "Auto Restart Expedition",
    Default = false,
    Tooltip = "Restarts early maps that fail these rules."
})
bCU_89.ExpRestart:AddDropdown("ExpRestartStageTypes", {
    Values = { "Defense", "Assault", "Checkpoint" },
    Default = { "Defense" },
    Multi = true,
    AllowNull = true,
    Text = "Slow Stage Types",
    Tooltip = "Stage types counted as slow."
})
bCU_89.ExpRestart:AddToggle("ExpRestartFirstStage", {
    Text = "Restart if First Stage is Slow",
    Default = true,
    Tooltip = "Avoids a selected slow opening stage."
})
bCU_89.ExpRestart:AddSlider("ExpRestartSlowOver", {
    Text = "Restart if Slow Stages Over",
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Tooltip = "Maximum slow stages. 0 disables this rule."
})
bCU_89.ExpRestart:AddDropdown("ExpRestartResource", {
    Values = fns.bCU_21.EXPEDITION_REWARDS,
    Default = "Any",
    Text = "Required Resource",
    Tooltip = "Resource checked across the best route."
})
bCU_89.ExpRestart:AddSlider("ExpRestartUntilAmount", {
    Text = "Restart Until Amount",
    Default = 0,
    Min = 0,
    Max = 50,
    Rounding = 0,
    Tooltip = "Minimum reward on the best reachable route."
})
bCU_89.ExpRestart:AddLabel("Recommended: Equipment Lock 1, Equipment Reroll 3, Timber 30.", true)
bCU_89.ExpRestart:AddButton({
    Text = "Use Recommended Amount",
    Tooltip = "Loads the recommended amount for this resource.",
    Func = fns.onUseRecommendedAmount
})
bCU_89.BuildingTabs = bCU_115.Buildings:AddLeftTabbox("Buildings")
bCU_89.EquipmentTabs = bCU_115.Equip:AddLeftTabbox("Equipment & Shop")
bCU_89.Drill = bCU_89.BuildingTabs:AddTab("Drill", "pickaxe")
bCU_89.Drill:AddToggle("DrillAutoFuel", {
    Text = "Auto Put Fuel Cell",
    Default = false,
    Tooltip = "Adds fuel until the maintain amount is reached."
})
bCU_89.Drill:AddSlider("DrillMaintainFuel", {
    Text = "Maintain Fuel",
    Default = 40,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Tooltip = "Fuel kept in the Resource Drill."
})
bCU_89.Drill:AddToggle("DrillAutoClaim", { Text = "Auto Claim Geode", Default = false, Tooltip = "Claims completed Resource Drill rewards." })
bCU_89.Drill:AddToggle("DrillAutoOpenGeode", { Text = "Auto Open Geode", Default = false, Tooltip = "Opens claimed geodes automatically." })
bCU_89.Drill:AddSlider("DrillLobbyFuelBelow", {
    Text = "Lobby if Fuel Below",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Tooltip = "Returns when owned fuel reaches this amount. 0 disables it."
})
bCU_89.Mine = bCU_89.BuildingTabs:AddTab("Mine", "coins")
bCU_89.Mine:AddToggle("MineAutoFuel", {
    Text = "Auto Put Fuel Cell",
    Default = false,
    Tooltip = "Adds fuel until the maintain amount is reached."
})
bCU_89.Mine:AddSlider("MineMaintainFuel", {
    Text = "Maintain Fuel",
    Default = 40,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Tooltip = "Fuel kept in the Gold Mine."
})
bCU_89.Mine:AddToggle("MineAutoClaim", { Text = "Auto Claim Gold", Default = false, Tooltip = "Claims completed Gold Mine rewards." })
bCU_89.Mine:AddSlider("MineLobbyFuelBelow", {
    Text = "Lobby if Fuel Below",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Tooltip = "Returns when owned fuel reaches this amount. 0 disables it."
})
bCU_89.LobbyShop = bCU_89.EquipmentTabs:AddTab("Shop", "shopping-cart")
bCU_89.LobbyShop:AddToggle("LobbyShopAutoBuy", { Text = "Auto Buy", Default = false, Tooltip = "Buys the selected Expedition Shop items." })
bCU_89.LobbyShop:AddDropdown("LobbyShopItems", {
    Values = {},
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Buy These",
    Tooltip = "Expedition Shop items to buy."
})
bCU_89.LobbyShop:AddButton({ Text = "Refresh List", Tooltip = "Reloads the Expedition Shop list.", Func = fns.onRefreshList })
bCU_89.Training = bCU_89.BuildingTabs:AddTab("Training", "graduation-cap")
bCU_89.Training:AddToggle("AutoTrainingGround", {
    Text = "Auto Training Ground",
    Default = false,
    Tooltip = "Assigns the selected units to open training slots."
})
bCU_89.Training:AddToggle("TrainingAutoRarity", {
    Text = "Auto Select by Rarity",
    Default = false,
    Tooltip = "Automatically fills open slots with matching character rarities."
})
bCU_89.Training:AddDropdown("TrainingRarities", {
    Values = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Exclusive" },
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Character Rarities",
    Tooltip = "Character rarities eligible for automatic training."
})
bCU_113 = 1
while bCU_113 <= 2 do
    local bCU_138 = bCU_113
    bCU_89.Training:AddDropdown("TrainingSlot" .. bCU_138, {
        Values = fns.bCU_21.UnitChoices(),
        Searchable = true,
        Expandable = true,
        ExpandColumns = 3,
        Default = nil,
        AllowNull = true,
        Text = "Slot " .. bCU_138,
        Tooltip = "Unit assigned to training slot " .. bCU_138 .. "."
    })
    bCU_113 += 1
end
bCU_92 = 2
repeat
    bCU_73 = {
        "ocyoxlx",
        "zmnnocvvg",
        "vvakqq",
        "jjlzbc",
        "akww",
        "alf",
        "znsnuolyfxh",
        "sfabuvxglcms",
        "fgc",
        "ebzjuotzqdd",
        "hchvttsyaqp",
        "sdevog",
        "rikkuxlvtaxl"
    }
    if bCU_73[(bCU_92 * 30 + 101) % 13 + 1] <= bCU_73[(bCU_92 * 30 + 101) % 13 + 1] then
        bCU_89.Training:AddButton({ Text = "Refresh Units", Tooltip = "Reloads the available unit list.", Func = fns.onRefreshUnits })
        bCU_89.Training:AddToggle("TrainingLobbyWhenMax", {
            Text = "Auto Lobby When Max",
            Default = false,
            Tooltip = "Returns when a training unit reaches maximum training time."
        })
        bCU_89.LobbyCraft = bCU_115.Lobby:AddLeftGroupbox("Auto Craft", "hammer")
        bCU_89.LobbyCraftStatus = bCU_89.LobbyCraft:AddLabel("Last craft: None", true)
        bCU_89.LobbyCraft:AddToggle("LobbyAutoCraft", {
            Text = "Auto Craft",
            Default = false,
            Tooltip = "Crafts the selected recipes when their materials are available.",
            Callback = fns.bCU_21.ResetAutoCraftAttempts
        })
        bCU_89.LobbyCraft:AddDropdown("LobbyCraftItems", {
            Values = fns.bCU_21.CraftChoices(),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Craft These",
            Tooltip = "Recipes to craft automatically.",
            Callback = fns.bCU_21.ResetAutoCraftAttempts
        })
        bCU_89.LobbyCraft:AddButton({ Text = "Refresh List", Tooltip = "Reloads crafting recipes.", Func = fns.onRefreshList6 })
        bCU_89.LobbyCraft:AddToggle("LobbyAutoCraftSprite", {
            Text = "Auto Craft Sprite",
            Default = false,
            Tooltip = "Converts only the selected colored sprites below into Grey Sprites.",
            Callback = fns.bCU_21.ResetAutoCraftAttempts
        })
        bCU_89.LobbyCraft:AddDropdown("LobbySpriteSources", {
            Values = fns.bCU_21.SpriteSourceChoices(),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 2,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Convert These Sprites",
            Tooltip = "Only selected colors may be consumed to make Grey Sprites.",
            Callback = fns.bCU_21.ResetAutoCraftAttempts
        })
        bCU_89.LobbyCraft:AddToggle("LobbyKeepRainbowSprites", {
            Text = "Keep Rainbow Sprites",
            Default = true,
            Tooltip = "Never converts Rainbow Sprites into Grey Sprites."
        })
        bCU_89.LobbyGold = bCU_115.Lobby:AddRightGroupbox("Gold Shop", "coins")
        bCU_89.LobbyGold:AddToggle("LobbyAutoBuyGold", {
            Text = "Auto Buy Gold Shop",
            Default = false,
            Tooltip = "Buys selected Gold Shop items while they are stocked."
        })
        bCU_89.LobbyGold:AddDropdown("LobbyGoldItems", {
            Values = fns.bCU_21.ShopChoices("GoldShop"),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Buy These",
            Tooltip = "Gold Shop items to buy automatically."
        })
        bCU_89.LobbyGold:AddButton({ Text = "Refresh List", Tooltip = "Reloads the Gold Shop inventory.", Func = fns.onRefreshList5 })
        bCU_89.LobbyTrader = bCU_115.Lobby:AddLeftGroupbox("Wandering Trader", "sparkles")
        bCU_89.LobbyTrader:AddToggle("LobbyAutoBuyTrader", {
            Text = "Auto Buy",
            Default = false,
            Tooltip = "Buys selected Wandering Trader items when the trader appears."
        })
        bCU_89.LobbyTrader:AddDropdown("LobbyTraderItems", {
            Values = fns.bCU_21.ShopChoices("WanderingTrader"),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Buy These",
            Tooltip = "Wandering Trader items to buy automatically."
        })
        bCU_89.LobbyTrader:AddButton({
            Text = "Refresh List",
            Tooltip = "Reloads the Wandering Trader inventory.",
            Func = fns.onRefreshList4
        })
        bCU_89.LobbyExpeditionShop = bCU_115.Lobby:AddRightGroupbox("Expedition Shop", "shopping-cart")
        bCU_89.LobbyExpeditionShop:AddToggle("LobbyAutoBuyExpedition", {
            Text = "Auto Buy Expedition Shop",
            Default = false,
            Tooltip = "Buys selected Expedition Shop items."
        })
        bCU_89.LobbyExpeditionShop:AddDropdown("LobbyExpeditionItems", {
            Values = fns.bCU_21.ExpeditionShopChoices(),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Buy These",
            Tooltip = "Expedition Shop items to buy automatically."
        })
        bCU_89.LobbyExpeditionShop:AddButton({
            Text = "Refresh List",
            Tooltip = "Reloads the Expedition Shop inventory.",
            Func = fns.onRefreshList3
        })
        bCU_89.LobbyEventShop = bCU_115.Lobby:AddLeftGroupbox("Event & Special Shops", "gift")
        bCU_89.LobbyEventShop:AddToggle("LobbyAutoBuyEvent", {
            Text = "Auto Buy Event Shops",
            Default = false,
            Tooltip = "Buys selected items from Event, Villain, Raid, and other special markets."
        })
        bCU_89.LobbyEventShop:AddDropdown("LobbyEventItems", {
            Values = fns.bCU_21.OtherShopChoices(),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Buy These",
            Tooltip = "Event/Special Shop items to buy automatically."
        })
        bCU_89.LobbyEventShop:AddButton({
            Text = "Refresh List",
            Tooltip = "Reloads all Event and Special shop inventories.",
            Func = fns.onRefreshList2
        })
        bCU_74.QueueSummonChoices = fns.bCU_21.QueueSummonChoices()
        bCU_74.QueueSummonSaved = fns.bCU_21.LoadQueueSummonSettings()
        bCU_89.QueueSummon = bCU_115.Lobby:AddRightGroupbox("Queue Summoning", "sparkles")
        bCU_89.QueueSummonBanner = bCU_89.QueueSummon:AddLabel("Matching Banner: None", true)
        bCU_89.QueueSummonStatus = bCU_89.QueueSummon:AddLabel("Status: Idle", true)
        bCU_89.QueueSummon:AddDropdown("QueueSummonUnit", {
            Values = bCU_74.QueueSummonChoices,
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = bCU_74.QueueSummonSaved.Targets,
            Multi = true,
            AllowNull = true,
            Text = "Target Units",
            Tooltip = "Units to summon from Mini, Standard, or Villain when they enter the banner pool.",
            Callback = fns.onQueueSummonUnit
        })
    else
        bCU_115.Training:AddButton({ Text = "Refresh Units", Tooltip = "Reloads the available unit list.", Func = fns.onRefreshUnits })
        bCU_115.Training:AddToggle("TrainingLobbyWhenMax", {
            Text = "Auto Lobby When Max",
            Tooltip = "Returns when a training unit reaches maximum training time.",
            Default = false
        })
        bCU_115.LobbyCraft = bCU_89.Lobby:AddLeftGroupbox("Auto Craft", "hammer")
        bCU_115.LobbyCraftStatus = bCU_115.LobbyCraft:AddLabel("Last craft: None", true)
        bCU_115.LobbyCraft:AddToggle("LobbyAutoCraft", {
            Callback = bCU_74.ResetAutoCraftAttempts,
            Text = "Auto Craft",
            Tooltip = "Crafts the selected recipes when their materials are available.",
            Default = false
        })
        bCU_115.LobbyCraft:AddDropdown("LobbyCraftItems", {
            Searchable = true,
            Values = bCU_74.CraftChoices(),
            Default = {},
            Expandable = true,
            Multi = true,
            Tooltip = "Recipes to craft automatically.",
            Callback = bCU_74.ResetAutoCraftAttempts,
            ExpandColumns = 3,
            AllowNull = true,
            Text = "Craft These"
        })
        bCU_115.LobbyCraft:AddButton({ Text = "Refresh List", Func = fns.onRefreshList6, Tooltip = "Reloads crafting recipes." })
        bCU_115.LobbyCraft:AddToggle("LobbyAutoCraftSprite", {
            Default = false,
            Tooltip = "Converts only the selected colored sprites below into Grey Sprites.",
            Text = "Auto Craft Sprite",
            Callback = bCU_74.ResetAutoCraftAttempts
        })
        bCU_115.LobbyCraft:AddDropdown("LobbySpriteSources", {
            Values = bCU_74.SpriteSourceChoices(),
            AllowNull = true,
            Multi = true,
            Default = {},
            ExpandColumns = 2,
            Tooltip = "Only selected colors may be consumed to make Grey Sprites.",
            Searchable = true,
            Expandable = true,
            Text = "Convert These Sprites",
            Callback = bCU_74.ResetAutoCraftAttempts
        })
        bCU_115.LobbyCraft:AddToggle("LobbyKeepRainbowSprites", {
            Default = true,
            Tooltip = "Never converts Rainbow Sprites into Grey Sprites.",
            Text = "Keep Rainbow Sprites"
        })
        bCU_115.LobbyGold = bCU_89.Lobby:AddRightGroupbox("Gold Shop", "coins")
        bCU_115.LobbyGold:AddToggle("LobbyAutoBuyGold", {
            Tooltip = "Buys selected Gold Shop items while they are stocked.",
            Default = false,
            Text = "Auto Buy Gold Shop"
        })
        bCU_115.LobbyGold:AddDropdown("LobbyGoldItems", {
            Searchable = true,
            Default = {},
            Expandable = true,
            AllowNull = true,
            Multi = true,
            Tooltip = "Gold Shop items to buy automatically.",
            Text = "Buy These",
            Values = bCU_74.ShopChoices("GoldShop"),
            ExpandColumns = 3
        })
        bCU_115.LobbyGold:AddButton({ Tooltip = "Reloads the Gold Shop inventory.", Text = "Refresh List", Func = fns.onRefreshList5 })
        bCU_115.LobbyTrader = bCU_89.Lobby:AddLeftGroupbox("Wandering Trader", "sparkles")
        bCU_115.LobbyTrader:AddToggle("LobbyAutoBuyTrader", {
            Text = "Auto Buy",
            Default = false,
            Tooltip = "Buys selected Wandering Trader items when the trader appears."
        })
        bCU_115.LobbyTrader:AddDropdown("LobbyTraderItems", {
            Searchable = true,
            Multi = true,
            Expandable = true,
            AllowNull = true,
            Default = {},
            ExpandColumns = 3,
            Tooltip = "Wandering Trader items to buy automatically.",
            Text = "Buy These",
            Values = bCU_74.ShopChoices("WanderingTrader")
        })
        bCU_115.LobbyTrader:AddButton({
            Text = "Refresh List",
            Tooltip = "Reloads the Wandering Trader inventory.",
            Func = fns.onRefreshList4
        })
        bCU_115.LobbyExpeditionShop = bCU_89.Lobby:AddRightGroupbox("Expedition Shop", "shopping-cart")
        bCU_115.LobbyExpeditionShop:AddToggle("LobbyAutoBuyExpedition", {
            Tooltip = "Buys selected Expedition Shop items.",
            Default = false,
            Text = "Auto Buy Expedition Shop"
        })
        bCU_115.LobbyExpeditionShop:AddDropdown("LobbyExpeditionItems", {
            ExpandColumns = 3,
            Tooltip = "Expedition Shop items to buy automatically.",
            Searchable = true,
            Text = "Buy These",
            Values = bCU_74.ExpeditionShopChoices(),
            Default = {},
            AllowNull = true,
            Multi = true,
            Expandable = true
        })
        bCU_115.LobbyExpeditionShop:AddButton({
            Func = fns.onRefreshList3,
            Text = "Refresh List",
            Tooltip = "Reloads the Expedition Shop inventory."
        })
        bCU_115.LobbyEventShop = bCU_89.Lobby:AddLeftGroupbox("Event & Special Shops", "gift")
        bCU_115.LobbyEventShop:AddToggle("LobbyAutoBuyEvent", {
            Default = false,
            Tooltip = "Buys selected items from Event, Villain, Raid, and other special markets.",
            Text = "Auto Buy Event Shops"
        })
        bCU_115.LobbyEventShop:AddDropdown("LobbyEventItems", {
            Text = "Buy These",
            AllowNull = true,
            Multi = true,
            Tooltip = "Event/Special Shop items to buy automatically.",
            Expandable = true,
            Default = {},
            ExpandColumns = 3,
            Searchable = true,
            Values = bCU_74.OtherShopChoices()
        })
        bCU_115.LobbyEventShop:AddButton({
            Func = fns.onRefreshList2,
            Text = "Refresh List",
            Tooltip = "Reloads all Event and Special shop inventories."
        })
        fns.bCU_21.QueueSummonChoices = bCU_74.QueueSummonChoices()
        fns.bCU_21.QueueSummonSaved = bCU_74.LoadQueueSummonSettings()
        bCU_115.QueueSummon = bCU_89.Lobby:AddRightGroupbox("Queue Summoning", "sparkles")
        bCU_115.QueueSummonBanner = bCU_115.QueueSummon:AddLabel("Matching Banner: None", true)
        bCU_115.QueueSummonStatus = bCU_115.QueueSummon:AddLabel("Status: Idle", true)
        bCU_115.QueueSummon:AddDropdown("QueueSummonUnit", {
            Default = fns.bCU_21.QueueSummonSaved.Targets,
            Tooltip = "Units to summon from Mini, Standard, or Villain when they enter the banner pool.",
            AllowNull = true,
            Text = "Target Units",
            Expandable = true,
            Callback = fns.onQueueSummonUnit,
            ExpandColumns = 3,
            Searchable = true,
            Values = fns.bCU_21.QueueSummonChoices,
            Multi = true
        })
    end
    bCU_92 = (bCU_92 + 0) % 8
until (bCU_92 * 5 + 3) % 8 == 5
bCU_73 = bCU_89.QueueSummon
bCU_92 = tonumber(bCU_74.QueueSummonSaved.Amount) or 1
bCU_56 = 4
repeat
    if bCU_56 and not bCU_56 and (not bCU_56 or bCU_56) and (not bCU_56 and not bCU_56 and (not bCU_56 or not bCU_56)) or (not bCU_56 and bCU_56 or (not bCU_56 or not bCU_56)) and (bCU_56 and not bCU_56 or (not bCU_56 or bCU_56)) or not (bCU_56 and not bCU_56 and (not bCU_56 or bCU_56) and (not bCU_56 and not bCU_56 and (not bCU_56 or not bCU_56)) or (not bCU_56 and bCU_56 or (not bCU_56 or not bCU_56)) and (bCU_56 and not bCU_56 or (not bCU_56 or bCU_56))) then
        bCU_73:AddSlider("QueueSummonOwnedAmount", {
            Text = "Stop at Owned Amount",
            Default = bCU_92,
            Min = 1,
            Max = 10,
            Rounding = 0,
            Tooltip = "Stops summoning once this many copies are owned.",
            Callback = fns.onQueueSummonOwnedAmount
        })
        bCU_89.QueueSummon:AddToggle("QueueSummonRequirePity", {
            Text = "Require Full Pity",
            Default = false,
            Tooltip = "Only starts 50x summons when you can afford every remaining summon to pity.",
            Callback = fns.onQueueSummonRequirePity
        })
        bCU_89.QueueSummon:AddToggle("QueueSummoning", {
            Text = "Queue Summoning",
            Default = bCU_74.QueueSummonSaved.Enabled == true,
            Tooltip = "Interrupts automation when a selected target is in Mini, Standard, or Villain and pity reserve is met.",
            Callback = fns.onQueueSummoning
        })
        bCU_89.QueueSummon:AddButton({
            Text = "Refresh Units",
            Tooltip = "Reloads Mini, Standard, and Villain banner choices.",
            Func = fns.onRefreshUnits2
        })
        task.defer(fns.bCU_21.SaveQueueSummonSettings)
        bCU_89.Forge = bCU_89.EquipmentTabs:AddTab("Forge", "hammer")
        bCU_89.Forge:AddDropdown("ForgeRecipes", {
            Values = fns.bCU_21.ForgeRecipes(),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Forge Recipes",
            Tooltip = "Equipment recipes to forge."
        })
    else
        bCU_73:AddSlider("QueueSummonOwnedAmount", {
            Default = bCU_74,
            Rounding = 0,
            Tooltip = "Stops summoning once this many copies are owned.",
            Min = 1,
            Max = 10,
            Callback = fns.onQueueSummonOwnedAmount,
            Text = "Stop at Owned Amount"
        })
        fns.bCU_21.QueueSummon:AddToggle("QueueSummonRequirePity", {
            Callback = fns.onQueueSummonRequirePity,
            Tooltip = "Only starts 50x summons when you can afford every remaining summon to pity.",
            Text = "Require Full Pity",
            Default = false
        })
        fns.bCU_21.QueueSummon:AddToggle("QueueSummoning", {
            Tooltip = "Interrupts automation when a selected target is in Mini, Standard, or Villain and pity reserve is met.",
            Default = bCU_92.QueueSummonSaved.Enabled == true,
            Text = "Queue Summoning",
            Callback = fns.onQueueSummoning
        })
        fns.bCU_21.QueueSummon:AddButton({
            Tooltip = "Reloads Mini, Standard, and Villain banner choices.",
            Text = "Refresh Units",
            Func = fns.onRefreshUnits2
        })
        task.defer(bCU_89.SaveQueueSummonSettings)
        fns.bCU_21.Forge = fns.bCU_21.EquipmentTabs:AddTab("Forge", "hammer")
        fns.bCU_21.Forge:AddDropdown("ForgeRecipes", {
            AllowNull = true,
            Multi = true,
            Expandable = true,
            Values = bCU_89.ForgeRecipes(),
            Text = "Forge Recipes",
            ExpandColumns = 3,
            Tooltip = "Equipment recipes to forge.",
            Default = {},
            Searchable = true
        })
    end
    bCU_56 = (bCU_56 + 3) % 8
until (bCU_56 * 5 + 1) % 8 == 4
bCU_113 = 1
while bCU_113 <= 3 do
    local bCU_125 = bCU_113
    bCU_92 = bCU_89.Forge
    bCU_73 = "ForgeSlot" .. bCU_125
    bCU_56 = { "Any", "Rare", "Epic", "Legendary", "Mythic" }
    bCU_38 = bCU_125 == 3 and " (rare 3rd stat)"
    fns.bCU_24 = bCU_38 or ""
    bCU_92:AddDropdown(bCU_73, {
        Values = bCU_56,
        Default = "Any",
        Text = "Slot " .. bCU_125 .. " Target" .. fns.bCU_24,
        Tooltip = "Minimum rarity for stat slot " .. bCU_125 .. "."
    })
    bCU_113 += 1
end
bCU_56 = 3
repeat
    bCU_92 = (vector.create((bCU_56 * 2 + 6) % 11 + 1, (bCU_56 * 9 + 7) % 13 + 1, (bCU_56 * 1 + 15) % 17 + 1))
    bCU_73 = (vector.create((bCU_56 * 2 + 1) % 11 + 1, (bCU_56 * 3 + 2) % 13 + 1, (bCU_56 * 11 + 15) % 17 + 1))
    bCU_38 = (vector.create((bCU_56 * 4 + 7) % 11 + 1, (bCU_56 * 6 + 9) % 13 + 1, (bCU_56 * 13 + 16) % 17 + 1))
    fns.bCU_24 = (vector.create((bCU_56 * 4 + 4) % 5 + 1, (bCU_56 * 3 + 5) % 7 + 1, (bCU_56 * 2 + 1) % 9 + 1))
    if vector.dot(vector.cross(bCU_92, (vector.cross(bCU_73, bCU_38))), fns.bCU_24) == vector.dot(bCU_73 * vector.dot(bCU_92, bCU_38) - bCU_38 * vector.dot(bCU_92, bCU_73), fns.bCU_24) + 5 then
        fns.bCU_21.Forge:AddSlider("ForgePerCycle", {
            Min = 1,
            Max = 10,
            Rounding = 0,
            Default = 1,
            Tooltip = "Craft attempts made each cycle.",
            Text = "Forge Per Cycle"
        })
        fns.bCU_21.Forge:AddToggle("AutoForgeEquipment", {
            Text = "Auto Forge",
            Tooltip = "Forges until an item meets every configured target.",
            Default = false
        })
        fns.bCU_21.Forge:AddToggle("ForgeWebhook", {
            Tooltip = "Posts when a forged item reaches its targets.",
            Text = "Send Notification to Webhook",
            Default = false
        })
        fns.bCU_21.EquipReroll = fns.bCU_21.EquipmentTabs:AddTab("Reroll", "refresh-cw")
        fns.bCU_21.EquipReroll:AddDropdown("EquipRerollTarget", {
            Text = "Equipment to Reroll",
            Tooltip = "Equipment item to reroll.",
            Searchable = true,
            Values = bCU_89.EquipmentChoices(),
            AllowNull = true,
            ExpandColumns = 3,
            Expandable = true,
            Default = nil
        })
        fns.bCU_21.EquipReroll:AddButton({
            Func = fns.onRefreshEquipmentList,
            Text = "Refresh Equipment List",
            Tooltip = "Reloads owned equipment."
        })
    else
        bCU_89.Forge:AddSlider("ForgePerCycle", {
            Text = "Forge Per Cycle",
            Default = 1,
            Min = 1,
            Max = 10,
            Rounding = 0,
            Tooltip = "Craft attempts made each cycle."
        })
        bCU_89.Forge:AddToggle("AutoForgeEquipment", {
            Text = "Auto Forge",
            Default = false,
            Tooltip = "Forges until an item meets every configured target."
        })
        bCU_89.Forge:AddToggle("ForgeWebhook", {
            Text = "Send Notification to Webhook",
            Default = false,
            Tooltip = "Posts when a forged item reaches its targets."
        })
        bCU_89.EquipReroll = bCU_89.EquipmentTabs:AddTab("Reroll", "refresh-cw")
        bCU_89.EquipReroll:AddDropdown("EquipRerollTarget", {
            Values = fns.bCU_21.EquipmentChoices(),
            Searchable = true,
            Expandable = true,
            ExpandColumns = 3,
            Default = nil,
            AllowNull = true,
            Text = "Equipment to Reroll",
            Tooltip = "Equipment item to reroll."
        })
        bCU_89.EquipReroll:AddButton({
            Text = "Refresh Equipment List",
            Tooltip = "Reloads owned equipment.",
            Func = fns.onRefreshEquipmentList
        })
    end
    bCU_56 = (bCU_56 + 1) % 4
until (bCU_56 * 3 + 3) % 4 == 3
bCU_113 = 1
while bCU_113 <= 3 do
    local bCU_111 = bCU_113
    bCU_89.EquipReroll:AddDropdown("EquipRerollSlot" .. bCU_111, {
        Values = { "Any", "Rare", "Epic", "Legendary", "Mythic" },
        Default = "Any",
        Text = "Slot " .. bCU_111 .. " Target",
        Tooltip = "Minimum rarity for stat slot " .. bCU_111 .. "."
    })
    bCU_113 += 1
end
bCU_89.EquipReroll:AddToggle("EquipRerollUseLock", { Text = "Use Lock", Default = true, Tooltip = "Locks stat slots that already meet their targets." })
bCU_89.EquipReroll:AddToggle("AutoRerollEquipment", {
    Text = "Auto Reroll Equipment",
    Default = false,
    Tooltip = "Rerolls until every configured target is met."
})
bCU_89.BountyReroll = bCU_115.Bounty:AddLeftGroupbox("Auto Reroll Bounty", "refresh-cw")
bCU_89.BountyStatus = bCU_89.BountyReroll:AddLabel("Status: Idle", true)
bCU_89.BountyReroll:AddToggle("BountyAutoReroll", {
    Text = "Auto Reroll Bounty",
    Default = false,
    Tooltip = "Rerolls bounties until they match the configured rules."
})
bCU_89.BountyReroll:AddDropdown("BountyKeepRarities", {
    Values = { "Rare", "Epic", "Legendary", "Mythic" },
    Default = { "Legendary", "Mythic" },
    Multi = true,
    AllowNull = true,
    Text = "Keep Rarities",
    Tooltip = "Rarities that will never be rerolled."
})
bCU_89.BountyReroll:AddDropdown("BountyKeepTypes", {
    Values = { "Story", "Infinite", "Challenge", "Raid", "Summon" },
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Keep Types",
    Tooltip = "Bounty types that will never be rerolled."
})
bCU_89.BountyReroll:AddDropdown("BountyAvoidTypes", {
    Values = { "Story", "Infinite", "Challenge", "Raid", "Summon" },
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Avoid Types",
    Tooltip = "Bounty types to reroll even when their rarity is kept."
})
bCU_89.BountyReroll:AddToggle("BountyStack", {
    Text = "Stack Bounties on One Map",
    Default = false,
    Tooltip = "Keeps bounties that share the same map and mode."
})
bCU_89.BountyReroll:AddSlider("BountyStackAmount", {
    Text = "Bounties to Stack",
    Default = 3,
    Min = 2,
    Max = 5,
    Rounding = 0,
    Tooltip = "Number of matching bounties required before joining."
})
bCU_89.BountyReroll:AddToggle("BountyAutoClaim", { Text = "Auto Claim Bounty", Default = false, Tooltip = "Claims completed bounty quests." })
bCU_89.BountyJoin = bCU_115.Bounty:AddRightGroupbox("Auto Complete & Join", "map-pin")
bCU_89.BountyJoin:AddToggle("BountyAutoComplete", {
    Text = "Auto Complete Bounty Quests",
    Default = false,
    Tooltip = "Automatically completes all bounty objectives (including summoning for summon tasks and joining required maps)."
})
bCU_89.BountyJoin:AddDropdown("BountySummonBanner", {
    Values = { "Mini", "Standard", "VillainInvasion" },
    Default = 1,
    Multi = false,
    AllowNull = false,
    Text = "Bounty Summon Banner",
    Tooltip = "Banner to use when completing 'Summon X times' bounty objectives."
})
bCU_89.BountyJoin:AddToggle("BountyAutoJoin", {
    Text = "Auto Join Bounty Map",
    Default = false,
    Tooltip = "Joins a map required by an active bounty."
})
bCU_89.BountyJoin:AddToggle("BountyAutoLeave", {
    Text = "Auto Leave Bounty Map",
    Default = false,
    Tooltip = "Returns to the lobby after the selected bounty completes."
})
bCU_89.BountyJoin:AddToggle("BountyUseMatchmaking", {
    Text = "Use Matchmaking",
    Default = false,
    Tooltip = "Uses public matchmaking instead of starting a private party."
})
bCU_89.BountyJoin:AddSlider("BountyJoinDelay", {
    Text = "Auto Join Delay (s)",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Tooltip = "Seconds to wait before joining a bounty map."
})
bCU_89.BountyInfo = bCU_115.Bounty:AddRightGroupbox("Bounty Quests", "list-ordered")
bCU_89.BountyBoardLabel = bCU_89.BountyInfo:AddLabel("Bounty board is loading.", true)
bCU_89.BountyInfo:AddButton({ Text = "Refresh Now", Tooltip = "Reloads the live bounty board.", Func = fns.onRefreshNow })
bCU_89.GameplayGroup = bCU_115.Game:AddLeftGroupbox("Play", "gamepad-2")
bCU_89.GameplayGroup:AddToggle("AutoVoteStart", {
    Text = "Auto Vote Start",
    Default = false,
    Tooltip = "Forces the game Auto Vote Start setting on."
})
bCU_89.GameplayGroup:AddToggle("AutoLeaveAfkChamber", {
    Text = "Auto Leave AFK Chamber",
    Default = false,
    Tooltip = "Returns to the lobby after entering the AFK Chamber."
})
bCU_89.GameplayGroup:AddToggle("StopAfkChamber", {
    Text = "Stop AFK Chamber",
    Default = true,
    Tooltip = "Prevents idle farming from sending you to the AFK Chamber."
})
bCU_89.GameplayGroup:AddToggle("DarkMageNoneTargeting", {
    Text = "Dark Mage None Targeting",
    Default = false,
    Tooltip = "Keeps Dark Mage and Dark Mage Sovereign targeting set to None."
})
bCU_89.SkipGroup = bCU_115.Game:AddRightGroupbox("Skip Waves", "fast-forward")
bCU_89.SkipGroup:AddToggle("AutoSkipWave", { Text = "Auto Skip Wave", Default = false, Tooltip = "Turns on the game Auto Skip Waves setting." })
bCU_89.SkipGroup:AddSlider("StopSkipAtWave", {
    Text = "Stop skipping at wave",
    Default = 0,
    Min = 0,
    Max = 60,
    Rounding = 0,
    Tooltip = "Stop skipping at this wave. 0 never stops."
})
bCU_89.SkipGroup:AddDropdown("SkipStageTypes", {
    Values = bCU_129(),
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Stop skipping only on these stage types",
    Tooltip = "Stage types the wave limit applies to. Empty means all."
})
bCU_89.FinishGroup = bCU_115.Game:AddLeftGroupbox("End of Match", "flag")
bCU_89.FinishGroup:AddToggle("AutoNext", { Text = "Auto Next Stage", Default = false, Tooltip = "Presses Next Stage on the result screen." })
bCU_89.FinishGroup:AddToggle("AutoReplay", {
    Text = "Auto Replay",
    Default = false,
    Tooltip = "Presses Repeat Stage. Ignored while Auto Next is on."
})
bCU_89.FinishGroup:AddToggle("AutoRestartAtWave", {
    Text = "Restart Game at Wave X",
    Default = false,
    Tooltip = "Restarts the current game when the selected wave is reached."
})
bCU_89.FinishGroup:AddSlider("RestartAtWave", {
    Text = "Restart at Wave",
    Default = 70,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Tooltip = "Wave that triggers an immediate game restart."
})
bCU_89.FinishGroup:AddToggle("WaitForVillainBossBeforeRestart", {
    Text = "Wait for Villain Boss Before Restart",
    Default = false,
    Tooltip = "Delays a wave restart until a spawned Villain Hunt boss dies."
})
bCU_89.FinishGroup:AddToggle("AutoReturnLobby", { Text = "Auto Leave", Default = false, Tooltip = "Returns to the lobby after every match." })
bCU_89.FinishGroup:AddToggle("AutoLeaveAtWave", {
    Text = "Auto Leave at Wave X",
    Default = false,
    Tooltip = "Returns to the lobby when the selected wave is reached."
})
bCU_89.FinishGroup:AddSlider("LeaveAtWave", {
    Text = "Leave at Wave",
    Default = 15,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Tooltip = "Wave that triggers the lobby return."
})
bCU_89.FinishGroup:AddSlider("LeaveAfterMatches", {
    Text = "Leave After X Matches (0=off)",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Tooltip = "Returns after this many completed matches."
})
bCU_89.FinishGroup:AddButton({
    Text = "Reset Match Count",
    Tooltip = "Resets the completed match counter.",
    Func = fns.onResetMatchCount
})
bCU_89.FinishGroup:AddToggle("ReturnLobbyOnLoss", { Text = "Auto Lobby on Loss", Default = false, Tooltip = "Returns to the lobby on a loss." })
bCU_89.FinishGroup:AddToggle("ReturnLobbyAfterTime", {
    Text = "Return to Lobby After Time",
    Default = false,
    Tooltip = "Returns after the configured runtime."
})
bCU_89.FinishGroup:AddSlider("ReturnLobbyAfterHours", {
    Text = "After (hours)",
    Default = 1,
    Min = 1,
    Max = 168,
    Rounding = 0,
    Tooltip = "Runtime in hours before returning to the lobby."
})
bCU_89.FinishGroup:AddToggle("ReturnLobbyFailsafe", {
    Text = "Return Lobby Failsafe",
    Default = false,
    Tooltip = "Force a lobby return if the result screen sticks for 2 minutes."
})
bCU_89.FinishGroup:AddToggle("ReturnLobbyUnderPlayers", {
    Text = "Return Lobby if under Player count",
    Default = false,
    Tooltip = "Returns to the lobby when the server empties out."
})
bCU_89.FinishGroup:AddSlider("LobbyPlayerCount", {
    Text = "Player count",
    Default = 1,
    Min = 1,
    Max = 12,
    Rounding = 0,
    Tooltip = "Player count that triggers the return."
})
bCU_89.PerfGroup = bCU_115.Game:AddRightGroupbox("Performance", "gauge")
bCU_89.PerfGroup:AddToggle("DeleteMap", {
    Text = "Delete Map",
    Default = false,
    Tooltip = "Removes scenery. Ground and paths are kept, so placing still works."
})
bCU_89.PerfGroup:AddToggle("DeleteEnemies", {
    Text = "Delete Enemies",
    Default = false,
    Tooltip = "Hides enemies locally. They still take damage."
})
bCU_89.PerfGroup:AddToggle("BoostFps", { Text = "Boost FPS", Default = false, Tooltip = "Lowers graphics. Needs a rejoin to undo." })
bCU_89.PerfGroup:AddToggle("BlackScreen", { Text = "Black Screen", Default = false, Tooltip = "Stops rendering the world. Biggest FPS gain." })
bCU_89.WebhookGroup = bCU_115.Webhook:AddRightGroupbox("Discord Webhook", "webhook")
bCU_89.WebhookGroup:AddToggle("WebhookEnabled", {
    Text = "Send run summary",
    Default = false,
    Tooltip = "Posts a summary to Discord after every match and in-game restart."
})
bCU_89.WebhookGroup:AddInput("WebhookUrl", {
    Default = "",
    Text = "Webhook URL",
    Placeholder = "https://discord.com/api/webhooks/...",
    Tooltip = "Your Discord webhook URL. Keep it private."
})
bCU_89.WebhookGroup:AddToggle("WebhookPing", { Text = "Ping me", Default = false, Tooltip = "Mention you in the summary." })
bCU_89.WebhookGroup:AddInput("WebhookPingId", {
    Default = "",
    Text = "Discord user ID",
    Placeholder = "123456789012345678",
    Tooltip = "Your numeric Discord user ID, not your username."
})
bCU_89.WebhookGroup:AddButton({ Text = "Send Test Summary", Tooltip = "Send a test summary now.", Func = fns.onSendTestSummary })
bCU_89.MenuGroup = bCU_115.Settings:AddLeftGroupbox("Menu", "menu")
bCU_89.MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = fns.onAntiAfk })
bCU_89.MenuGroup:AddToggle("CompactSidebar", {
    Text = "Compact Sidebar",
    Default = false,
    Tooltip = "Collapses the sidebar to icons only.",
    Callback = fns.onCompactSidebar
})
bCU_89.MenuGroup:AddToggle("AutoExecute", {
    Text = "Auto Execute",
    Default = false,
    Tooltip = "Reloads the script after the game teleports you between stages.",
    Callback = function(ahL)
        if not aE7 then
            return
        end
        pcall(function()
            if ahL then
                writefile(aEb.Folder .. "/autoexec.flag", "1")
            else
                local bxK = if isfile(aEb.Folder .. "/autoexec.flag") then 1 else 0
                if bxK == 1 then
                    delfile(aEb.Folder .. "/autoexec.flag")
                end
            end
        end)
    end
})
bCU_89.MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
bCU_89.MenuGroup:AddButton("Unload", fns.onUnload)
aDV.ToggleKeybind = Options.MenuKeybind
bCU_89.ToggleGui = Instance.new("ScreenGui")
bCU_89.ToggleGui.Name = "OuroborosToggle"
bCU_89.ToggleGui.ResetOnSpawn = false
bCU_89.ToggleGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
bCU_89.ToggleGui.DisplayOrder = 999
bCU_73 = syn and syn.protect_gui
if bCU_73 then
    bCU_129 = 3
    repeat
        local bLj = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_129, 9), string.byte(tostring(bCU_129))), 3)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bLj, 3834515651), 443045665), (bit32.bxor(bit32.band(bLj, 460451644), 3698603628))), 443045665), 3698603628) ~= bLj then
            syn.protect_gui(bCU_89.ToggleGui)
        else
            syn.protect_gui(bCU_89.ToggleGui)
        end
        bCU_129 = (bCU_129 + 4) % 8
    until (bCU_129 * 5 + 5) % 8 == 0
end
aFO, aF8, aFH = nil, nil, nil
bCU_89.ToggleGui.Parent = aFD()
bCU_89.ToggleButton = Instance.new("ImageButton")
bCU_89.ToggleButton.Name = "Toggle"
bCU_89.ToggleButton.Size = UDim2.fromOffset(72, 72)
bCU_89.ToggleButton.Position = UDim2.fromOffset(20, 120)
bCU_89.ToggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
bCU_89.ToggleButton.BorderSizePixel = 0
bCU_89.ToggleButton.AutoButtonColor = false
bCU_89.ToggleButton.Image = "rbxthumb://type=Asset&id=774125543&w=150&h=150"
bCU_89.ToggleButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
bCU_89.ToggleButton.ScaleType = Enum.ScaleType.Fit
bCU_89.ToggleButton.Parent = bCU_89.ToggleGui
bCU_89.TogglePadding = Instance.new("UIPadding")
bCU_89.TogglePadding.PaddingTop = UDim.new(0, 10)
bCU_89.TogglePadding.PaddingBottom = UDim.new(0, 10)
bCU_89.TogglePadding.PaddingLeft = UDim.new(0, 10)
bCU_89.TogglePadding.PaddingRight = UDim.new(0, 10)
bCU_89.TogglePadding.Parent = bCU_89.ToggleButton
bCU_89.ToggleStroke = Instance.new("UIStroke")
bCU_89.ToggleStroke.Color = Color3.fromRGB(60, 60, 60)
bCU_89.ToggleStroke.Thickness = 1
bCU_89.ToggleStroke.Parent = bCU_89.ToggleButton
bCU_89.Drag = { Input = nil, Moved = false, Start = nil, Origin = nil }
aF8 = fns.fn1362
aFO = 12
aFH = function(ahX)
    local bxT
    local bxU = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize
    if not bxU then
        return
    end
    local bxU_1 = bCU_89.ToggleButton.AbsoluteSize.X
    local bxW = bCU_89.ToggleButton.AbsoluteSize.Y
    local Offset2 = bCU_89.ToggleButton.Position.X.Offset
    local Offset = bCU_89.ToggleButton.Position.Y.Offset
    local bxU_2 = Offset2 + bxU_1 / 2 < bxU.X / 2 and aFO or bxU.X - bxU_1 - aFO
    local bxU_3 = math.clamp(Offset, aFO, math.max(aFO, bxU.Y - bxW - aFO))
    bxT = UDim2.fromOffset(bxU_2, bxU_3)
    if not ahX then
        bCU_89.ToggleButton.Position = bxT
        return
    end
    pcall(function()
        game:GetService("TweenService"):Create(bCU_89.ToggleButton, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = bxT }):Play()
    end)
end
bCU_89.ToggleButton.InputBegan:Connect(fns.onInputBegan)
bCU_89.ToggleMoved = bCU_122.InputChanged:Connect(fns.onInputChanged)
bCU_89.ToggleEnded = bCU_122.InputEnded:Connect(fns.onInputEnded)
aF8()
aFH(false)
bCU_129 = workspace.CurrentCamera
if bCU_129 then
    bCU_122 = 6
    repeat
        local bHK = bit32.rrotate(bit32.bxor(bit32.lrotate(bCU_122, 23), string.byte(tostring(bCU_122))), 15)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bHK, 3933491273), 3115937515), (bit32.bxor(bit32.band(bHK, 361476022), 502611280))), 3115937515), 502611280) ~= bHK then
            bCU_129 = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fns.fn3807)
        else
            bCU_129 = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fns.fn3807)
        end
        bCU_122 = (bCU_122 + 1) % 8
    until (bCU_122 * 3 + 6) % 8 == 3
end
connection, bCU_57 = nil, nil
bCU_89.ToggleViewport = bCU_129
aGr = fns.fn3550
aGw = fns.fn4610
fns.bCU_16 = fns.fn565
aGj = fns.fn1512
aFA = fns.fn4708
aF9 = fns.fn389
aFQ = fns.fn4241
aFI = fns.fn583
aFX = fns.fn1452
bCU_50 = fns.fn2227
bCU_57 = false
bCU_37 = fns.fn4043
if Toggles.AntiAfk.Value then
    bCU_37()
end
aEK, aEF, aE9, aEn, aEt, aGm, bCU_129, bCU_92 = nil, nil, nil, nil, nil, nil, nil, nil
bCU_122 = 18
repeat
    bCU_73 = (bCU_122 * 5 + 1) % 6 + 1
    if bCU_73 <= 3 then
        if bCU_73 <= 2 then
            if bCU_73 <= 1 then
                bCU_122 = (bCU_122 + 17) % 24
            else
                bCU_56 = {
                    "viibui",
                    "pjaawjjiih",
                    "vuzolc",
                    "wjspbiqa",
                    "dktzsfvnkebz",
                    "altjulgewkpw",
                    "yvslcmflwwyy",
                    "ggvgxvkhiw",
                    "dcoez",
                    "nepn",
                    "kxuycrrn",
                    "hax",
                    "kkahcpxnmux"
                }
                if bCU_56[(bCU_122 * 31 + 104) % 13 + 1] < bCU_56[(bCU_122 * 31 + 104) % 13 + 1] then
                    aEn.RefreshAfkChamberTimer = function()
                        local by1
                        local by0
                        by0 = nil
                        by1 = nil
                        if not getgc or not islclosure or not debug or not debug.info or not debug.getupvalue or not debug.setupvalue then
                            return false
                        end
                        by1 = false
                        by0 = os.clock()
                        pcall(function()
                            for k, v in getgc(true) do
                                local byT = type(v) == "function" and islclosure(v) and tostring(debug.info(v, "s")):find("ClientAFKHandler", 1, true)
                                if byT then
                                    local byT_2 = debug.getupvalue(v, 1)
                                    if type(byT_2) == "number" then
                                        debug.setupvalue(v, 1, by0)
                                        by1 = true
                                    end
                                end
                            end
                        end)
                        return by1
                    end
                    task.spawn(fns.worker6)
                    fns.bCU_21 = function()
                        local bzz_4
                        local bzw_12
                        local bzv_16, bzv_18
                        local bzu_26, bzu_32
                        if bCU_74.OrbCollecting then
                            return
                        end
                        local bzo = bCU_72()
                        local bzp = bzo and Toggles.ExpAuto.Value
                        if bzp then
                            bzp = Toggles.ExpSmartPlace.Value or Toggles.ExpAutoUpgrade.Value
                        end
                        local bzp_11 = bzo and not bzp
                        if not bzp_11 then
                            local bzq_12 = not bzo
                            if bzq_12 ~= false then
                                bzq_12 = not Toggles.AutoPlay.Value
                            end
                            bzp_11 = bzq_12
                        end
                        if bzp_11 then
                            bCU_74.Status = "Idle"
                            return
                        end
                        if not fns.bCU_29() then
                            bCU_74.Status = "Waiting for a stage"
                            aD3()
                            return
                        end
                        local bzp_12 = bCU_53()
                        if bzp_12 ~= bCU_74.LastMapKey then
                            bCU_74.LastMapKey = bzp_12
                            aD3()
                        end
                        local bzq_13 = bCU_69()
                        local bzr_9 = bCU_72() and bzq_13
                        if bzr_9 then
                            local bzr_11 = #(bzq_13.NodeHistory or {})
                            local bzs_8 = tonumber(bzq_13.GameTime) or 0
                            local bzs_9 = bCU_74.LastExpHistory
                            if bzs_9 then
                                local bzu_17 = bzr_11 < bCU_74.LastExpHistory
                                if not bzu_17 then
                                    bzu_17 = bzs_8 + 1 < (bCU_74.LastExpGameTime or 0)
                                end
                                bzs_9 = bzu_17
                            end
                            if bzs_9 then
                                aD3()
                                aDS()
                            end
                            bCU_74.LastExpHistory = bzr_11
                            bCU_74.LastExpGameTime = bzs_8
                        end
                        local bzr_12 = bCU_72() and not bCU_74.Run and not fns.bCU_17()
                        if bzr_12 then
                            aEj()
                            bCU_74.Run.Snapshot = aD7()
                            bCU_74.Announced = false
                        end
                        if not bCU_42(bzq_13) then
                            if Toggles.SmartAutoPlace.Value and bzp_12 and bzp_12 ~= bCU_74.SolvedMapKey then
                                bCU_74.SolvedMapKey = bzp_12
                                local bzp_13 = aDX(false)
                                if bzp_13 > 0 then
                                    aDV:Notify("Solved " .. bzp_13 .. " slot positions from the enemy path")
                                end
                            end
                            if not bCU_74.Announced then
                                bCU_74.Announced = true
                                aDV:Notify("Autoplay Has Stopped, Waiting Until Next Round", 5)
                            end
                            if Toggles.AutoStart.Value then
                                local bzl = bCU_67("VotePrompt")
                                if bzl then
                                    bCU_74.Status = "Starting the round"
                                    pcall(function()
                                        bzl:FireServer("Response", true)
                                    end)
                                end
                            end
                            bCU_74.Status = "Waiting for the round to start"
                            local bzp_14 = bCU_72() and not aEY(bzq_13)
                            if bzp_14 then
                                return
                            end
                            if bCU_74.Run and not bCU_74.Reported then
                                local bzp_16 = aEY(bzq_13)
                                local bzr_14 = not bzp_16
                                if bzr_14 ~= false then
                                    local bzs_10 = os.clock()
                                    local bzt_5 = bCU_74.Run.EndedAt or os.clock()
                                    bzr_14 = bzs_10 - bzt_5 < 12
                                end
                                if bzr_14 then
                                    local Run = bCU_74.Run
                                    local bzs_11 = bCU_74.Run.EndedAt or os.clock()
                                    Run.EndedAt = bzs_11
                                    return
                                elseif bzp_16 then
                                    fns.bCU_21.ReportFinishedRun(bzp_16)
                                    aD3()
                                    return
                                elseif fns.bCU_21.RoundConcluded(bzq_13) then
                                    return
                                else
                                    aD3()
                                    return
                                end
                            else
                                aD3()
                                return
                            end
                        end
                        local bzp_17 = aGo()
                        if not next(bzp_17) then
                            bCU_74.Status = "No units equipped"
                            return
                        end
                        if not bCU_74.Run then
                            aEj()
                            bCU_74.Run.Snapshot = aD7()
                            bCU_74.Announced = false
                        end
                        local bzr_16 = aE1()
                        local bzs_12 = bCU_91(bzq_13)
                        local bzt_6 = aFZ()
                        bCU_74.Run.PeakWave = math.max(bCU_74.Run.PeakWave, bzs_12)
                        local Run3 = bCU_74.Run
                        local bzv_13 = tonumber(bzq_13.MaxWave) or bCU_74.Run.MaxWave
                        Run3.MaxWave = bzv_13
                        local bzq_14 = Toggles.WaveReposition.Value and fns.bCU_21.ActiveWaveFormation(bzs_12)
                        local bzu_19 = bzq_14 or nil
                        if bzu_19 ~= bCU_74.ActiveWaveFormation then
                            bCU_74.ActiveWaveFormation = bzu_19
                            if bzu_19 then
                                local bzu_20 = fns.bCU_21.SellWaveFormationUnits(bzp_17, bzr_16, bzu_19)
                                table.clear(bCU_74.SlotFails)
                                table.clear(bCU_74.PriorityDone)
                                bCU_74.Status = "Switching to wave " .. tostring(bzu_19) .. " formation"
                                local format = string.format
                                local bzx_8 = bzu_20 == 1 and "" or "s"
                                aDV:Notify(format("Wave %d formation active, repositioning %d unit%s", bzu_19, bzu_20, bzx_8), 4)
                                if bzu_20 > 0 then
                                    return
                                end
                            end
                        end
                        if #bzr_16 > 0 then
                            local bzq_16 = {}
                            for k, v in bzr_16 do
                                local bzk
                                local bzO = v
                                bzk = 0
                                pcall(function()
                                    local bze = (tonumber(bzO.Replica.Data.Takedowns))
                                    local bzj = if bze then 1 else 0
                                    local bzh = 4034 * bzj + 1631 * (1 - bzj)
                                    local bzi = 2347 * bzj + 1040 * (1 - bzj)
                                    if not ((bzh * 1140 + bzi * 1753 + bzh * bzi) % 16777213 == 1403636) then
                                        bze = tonumber(bzO.Replica.Data.Kills)
                                    end
                                    bzk = bze or 0
                                end)
                                table.insert(bzq_16, { Name = bzO.Asset, Level = bzO.Level, Takedowns = bzk })
                            end
                            bCU_74.Run.Board = bzq_16
                        end
                        aEA(bzp_17, bzr_16)
                        pcall(aFm, bzp_17, bzr_16, bzs_12)
                        local bzq_17 = aDU(bzp_17, bzr_16, bzs_12)
                        local bzu_21 = bzo and Toggles.ExpSmartPlace.Value and Toggles.ExpEmergencyReposition and Toggles.ExpEmergencyReposition.Value
                        local bzu_22 = Toggles.ChaseMode.Value or bzu_21
                        local bzw_10 = bzu_22 and #bzr_16 > 0 and os.clock() >= bCU_74.NextChase
                        if bzw_10 then
                            local bzu_23 = os.clock()
                            bzw_10 = bzu_23 >= (bCU_74.NextLeakScan or 0)
                        end
                        if bzw_10 then
                            bCU_74.NextLeakScan = os.clock() + 0.5
                            local bzw_11 = Options.ChaseTarget and Options.ChaseTarget.Value or fns.bCU_21.CHASE_ANY
                            if bzu_21 then
                                bzv_16, bzw_12 = fns.bCU_21.ExpeditionEmergencyReposition(bzr_16, bzw_11)
                                if bzv_16 and bzw_12 > 0 then
                                    local bzx_11 = os.clock()
                                    local bzy_5 = Options.ExpEmergencyCooldown and Options.ExpEmergencyCooldown.Value
                                    local bzz_3 = tonumber(bzy_5) or 10
                                    bCU_74.NextChase = bzx_11 + bzz_3
                                    bCU_74.Status = "Repositioning behind " .. bzv_16.Name
                                    local format = string.format
                                    local bzy_6 = bzw_12 == 1 and ""
                                    local bzI_3 = if bzy_6 then 1 else 0
                                    local bzG_3 = 381 * bzI_3 + 867 * (1 - bzI_3)
                                    local bzH_3 = 386 * bzI_3 + 343 * (1 - bzI_3)
                                    if not ((bzG_3 * 2740 + bzH_3 * 2180 + bzG_3 * bzH_3) % 16777213 == 2032486) then
                                        bzy_6 = "s"
                                    end
                                    aDV:Notify(format("Threat near payload: moving %d front unit%s to the back", bzw_12, bzy_6), 4)
                                    table.clear(bCU_74.SlotFails)
                                    table.clear(bCU_74.PriorityDone)
                                    return
                                end
                            else
                                local bzn = aFp(bzr_16, bzw_11)
                                if bzn then
                                    bzu_26, bzv_18 = pcall(function()
                                        return bzn:GetPivot().Position
                                    end)
                                    if bzu_26 then
                                        local bzu_27 = os.clock()
                                        local bzw_13 = Options.ChaseCooldown and Options.ChaseCooldown.Value
                                        local bzx_13 = tonumber(bzw_13) or 10
                                        bCU_74.NextChase = bzu_27 + bzx_13
                                        bCU_74.ChaseAnchor = bzv_18
                                        bCU_74.Status = "Chasing " .. bzn.Name
                                        aDV:Notify("Enemy leaked, rebuilding on " .. bzn.Name, 4)
                                        aEv(bzr_16)
                                        table.clear(bCU_74.SlotFails)
                                        table.clear(bCU_74.PriorityDone)
                                        return
                                    end
                                end
                            end
                        end
                        local bzv_19 = Options.UpgradeMethod and Options.UpgradeMethod.Value or aGk
                        local bzu_29 = bzo
                        if bzu_29 then
                            bzu_29 = Toggles.ExpAutoUpgrade.Value
                        end
                        local bzv_20 = bzu_29 or Toggles.AutoUpgrade.Value
                        local bzu_30 = bzo
                        if not bzu_30 then
                            bzu_30 = Toggles.UpgradeAndPlace.Value
                        end
                        local bzv_21 = bzo
                        local bzy_7 = bzu_30
                        if bzv_21 then
                            bzv_21 = Toggles.ExpUpgradeFarmFirst.Value
                        end
                        local bzu_31 = bzv_21 or Toggles.FocusOnFarm.Value
                        bzz_4, bzu_32 = nil, nil
                        if not bzo or Toggles.ExpSmartPlace.Value then
                            bzz_4, bzu_32 = aE6(bzp_17, bzr_16, bzs_12, bzt_6)
                        end
                        local bzB = Toggles.PauseGameAutoUpgrade.Value and bzz_4 ~= nil
                        local bzA_7 = bzB or fns.bCU_21.LimitsConstrainUpgrades()
                        local bzB_4 = bzA_7
                        local bzI_4 = if bzB_4 then 1 else 0
                        local bzG_4 = 1868 * bzI_4 + 294 * (1 - bzI_4)
                        local bzH_4 = 3522 * bzI_4 + 1547 * (1 - bzI_4)
                        if not ((bzG_4 * 1035 + bzH_4 * 1587 + bzG_4 * bzH_4) % 16777213 == 14101890) then
                            bzB_4 = bzv_20
                        end
                        local bzm = bzB_4
                        if bzm ~= bCU_74.GamePaused then
                            bCU_74.GamePaused = bzm
                            pcall(function()
                                Actions2.UnitManager_PauseAutoUpgrade(bzm)
                            end)
                        end
                        if bzz_4 and bzv_20 and bzy_7 then
                            local bzy_8 = aEP(bzp_17, bzr_16, bzv_19, bzu_31, bzs_12)
                            local bzo_4 = bzo and 0 or bzz_4.Cost
                            local bzA_10 = bzy_8
                            if bzA_10 then
                                bzA_10 = aFZ() - bzy_8.Cost >= math.max(bzq_17, bzo_4)
                            end
                            if bzA_10 then
                                if aEQ(bzy_8) then
                                    local Run2 = bCU_74.Run
                                    Run2.Upgrades = Run2.Upgrades + 1
                                    local Run = bCU_74.Run
                                    Run.YenSpent = Run.YenSpent + bzy_8.Cost
                                end
                                bzr_16 = aE1()
                                bzz_4, bzu_32 = aE6(bzp_17, bzr_16, bzs_12, aFZ())
                            end
                        end
                        if bzz_4 and bzu_32 then
                            if aE_(bzz_4, bzr_16, bCU_74.ChaseAnchor) then
                                local Run2 = bCU_74.Run
                                Run2.Placements = Run2.Placements + 1
                                if not aEz() then
                                    local Run = bCU_74.Run
                                    Run.YenSpent = Run.YenSpent + bzz_4.Cost
                                end
                            end
                            return
                        end
                        if bzz_4 then
                            bCU_74.Status = string.format("Saving ¥%s for %s (slot %d)", aEW(bzz_4.Cost), bzz_4.Display, bzz_4.Slot)
                            return
                        end
                        bCU_74.ChaseAnchor = nil
                        if not bzv_20 then
                            bCU_74.Status = "All placements done"
                            return
                        end
                        local bzo_6 = aEP(bzp_17, bzr_16, bzv_19, bzu_31, bzs_12)
                        if not bzo_6 then
                            bCU_74.Status = "Everything is at its limit"
                            return
                        end
                        if bzt_6 - bzo_6.Cost < bzq_17 then
                            local bzp_18 = bzq_17 > 0 and "Holding ¥" .. aEW(bzq_17) .. " in reserve"
                            local bzq_18 = bzp_18 or "Saving to upgrade " .. bzo_6.Asset
                            bCU_74.Status = bzq_18
                            return
                        end
                        if aEQ(bzo_6) then
                            local Run2 = bCU_74.Run
                            Run2.Upgrades = Run2.Upgrades + 1
                            local Run = bCU_74.Run
                            Run.YenSpent = Run.YenSpent + bzo_6.Cost
                        end
                    end
                    task.spawn(fns.worker5)
                    aEF = nil
                    aEK = false
                else
                    fns.bCU_21.RefreshAfkChamberTimer = function()
                        local by1
                        local by0
                        by0 = nil
                        by1 = nil
                        if not getgc or not islclosure or not debug or not debug.info or not debug.getupvalue or not debug.setupvalue then
                            return false
                        end
                        by1 = false
                        by0 = os.clock()
                        pcall(function()
                            for k, v in getgc(true) do
                                local byT = type(v) == "function" and islclosure(v) and tostring(debug.info(v, "s")):find("ClientAFKHandler", 1, true)
                                if byT then
                                    local byT_1 = debug.getupvalue(v, 1)
                                    if type(byT_1) == "number" then
                                        debug.setupvalue(v, 1, by0)
                                        by1 = true
                                    end
                                end
                            end
                        end)
                        return by1
                    end
                    task.spawn(fns.worker6)
                    aEn = function()
                        local bzz_2
                        local bzw_5
                        local bzv_5, bzv_7
                        local bzu_10, bzu_16
                        if bCU_74.OrbCollecting then
                            return
                        end
                        local bzo = bCU_72()
                        local bzp = bzo and Toggles.ExpAuto.Value
                        if bzp then
                            bzp = Toggles.ExpSmartPlace.Value or Toggles.ExpAutoUpgrade.Value
                        end
                        local bzp_2 = bzo and not bzp
                        if not bzp_2 then
                            local bzq_3 = not bzo
                            if bzq_3 ~= false then
                                bzq_3 = not Toggles.AutoPlay.Value
                            end
                            bzp_2 = bzq_3
                        end
                        if bzp_2 then
                            bCU_74.Status = "Idle"
                            return
                        end
                        if not fns.bCU_29() then
                            bCU_74.Status = "Waiting for a stage"
                            aD3()
                            return
                        end
                        local bzp_3 = bCU_53()
                        if bzp_3 ~= bCU_74.LastMapKey then
                            bCU_74.LastMapKey = bzp_3
                            aD3()
                        end
                        local bzq_4 = bCU_69()
                        local bzr_1 = bCU_72() and bzq_4
                        if bzr_1 then
                            local bzr_3 = #(bzq_4.NodeHistory or {})
                            local bzs_2 = tonumber(bzq_4.GameTime) or 0
                            local bzs_3 = bCU_74.LastExpHistory
                            if bzs_3 then
                                local bzu_1 = bzr_3 < bCU_74.LastExpHistory
                                if not bzu_1 then
                                    bzu_1 = bzs_2 + 1 < (bCU_74.LastExpGameTime or 0)
                                end
                                bzs_3 = bzu_1
                            end
                            if bzs_3 then
                                aD3()
                                aDS()
                            end
                            bCU_74.LastExpHistory = bzr_3
                            bCU_74.LastExpGameTime = bzs_2
                        end
                        local bzr_4 = bCU_72() and not bCU_74.Run and not fns.bCU_17()
                        if bzr_4 then
                            aEj()
                            bCU_74.Run.Snapshot = aD7()
                            bCU_74.Announced = false
                        end
                        if not bCU_42(bzq_4) then
                            if Toggles.SmartAutoPlace.Value and bzp_3 and bzp_3 ~= bCU_74.SolvedMapKey then
                                bCU_74.SolvedMapKey = bzp_3
                                local bzp_4 = aDX(false)
                                if bzp_4 > 0 then
                                    aDV:Notify("Solved " .. bzp_4 .. " slot positions from the enemy path")
                                end
                            end
                            if not bCU_74.Announced then
                                bCU_74.Announced = true
                                aDV:Notify("Autoplay Has Stopped, Waiting Until Next Round", 5)
                            end
                            if Toggles.AutoStart.Value then
                                local bzl = bCU_67("VotePrompt")
                                if bzl then
                                    bCU_74.Status = "Starting the round"
                                    pcall(function()
                                        bzl:FireServer("Response", true)
                                    end)
                                end
                            end
                            bCU_74.Status = "Waiting for the round to start"
                            local bzp_5 = bCU_72() and not aEY(bzq_4)
                            if bzp_5 then
                                return
                            end
                            if bCU_74.Run and not bCU_74.Reported then
                                local bzp_7 = aEY(bzq_4)
                                local bzr_6 = not bzp_7
                                if bzr_6 ~= false then
                                    local bzs_4 = os.clock()
                                    local bzt_2 = bCU_74.Run.EndedAt or os.clock()
                                    bzr_6 = bzs_4 - bzt_2 < 12
                                end
                                if bzr_6 then
                                    local Run = bCU_74.Run
                                    local bzs_5 = bCU_74.Run.EndedAt or os.clock()
                                    Run.EndedAt = bzs_5
                                    return
                                elseif bzp_7 then
                                    fns.bCU_21.ReportFinishedRun(bzp_7)
                                    aD3()
                                    return
                                elseif fns.bCU_21.RoundConcluded(bzq_4) then
                                    return
                                else
                                    aD3()
                                    return
                                end
                            else
                                aD3()
                                return
                            end
                        end
                        local bzp_8 = aGo()
                        if not next(bzp_8) then
                            bCU_74.Status = "No units equipped"
                            return
                        end
                        if not bCU_74.Run then
                            aEj()
                            bCU_74.Run.Snapshot = aD7()
                            bCU_74.Announced = false
                        end
                        local bzr_8 = aE1()
                        local bzs_6 = bCU_91(bzq_4)
                        local bzt_3 = aFZ()
                        bCU_74.Run.PeakWave = math.max(bCU_74.Run.PeakWave, bzs_6)
                        local Run3 = bCU_74.Run
                        local bzv_2 = tonumber(bzq_4.MaxWave) or bCU_74.Run.MaxWave
                        Run3.MaxWave = bzv_2
                        local bzq_5 = Toggles.WaveReposition.Value and fns.bCU_21.ActiveWaveFormation(bzs_6)
                        local bzu_3 = bzq_5 or nil
                        if bzu_3 ~= bCU_74.ActiveWaveFormation then
                            bCU_74.ActiveWaveFormation = bzu_3
                            if bzu_3 then
                                local bzu_4 = fns.bCU_21.SellWaveFormationUnits(bzp_8, bzr_8, bzu_3)
                                table.clear(bCU_74.SlotFails)
                                table.clear(bCU_74.PriorityDone)
                                bCU_74.Status = "Switching to wave " .. tostring(bzu_3) .. " formation"
                                local format = string.format
                                local bzx_1 = bzu_4 == 1 and "" or "s"
                                aDV:Notify(format("Wave %d formation active, repositioning %d unit%s", bzu_3, bzu_4, bzx_1), 4)
                                if bzu_4 > 0 then
                                    return
                                end
                            end
                        end
                        if #bzr_8 > 0 then
                            local bzq_7 = {}
                            for k, v in bzr_8 do
                                local bzk
                                local bzO = v
                                bzk = 0
                                pcall(function()
                                    local bze = (tonumber(bzO.Replica.Data.Takedowns))
                                    local bzj = if bze then 1 else 0
                                    local bzh = 4034 * bzj + 1631 * (1 - bzj)
                                    local bzi = 2347 * bzj + 1040 * (1 - bzj)
                                    if not ((bzh * 1140 + bzi * 1753 + bzh * bzi) % 16777213 == 1403636) then
                                        bze = tonumber(bzO.Replica.Data.Kills)
                                    end
                                    bzk = bze or 0
                                end)
                                table.insert(bzq_7, { Name = bzO.Asset, Level = bzO.Level, Takedowns = bzk })
                            end
                            bCU_74.Run.Board = bzq_7
                        end
                        aEA(bzp_8, bzr_8)
                        pcall(aFm, bzp_8, bzr_8, bzs_6)
                        local bzq_8 = aDU(bzp_8, bzr_8, bzs_6)
                        local bzu_5 = bzo and Toggles.ExpSmartPlace.Value and Toggles.ExpEmergencyReposition and Toggles.ExpEmergencyReposition.Value
                        local bzu_6 = Toggles.ChaseMode.Value or bzu_5
                        local bzw_3 = bzu_6 and #bzr_8 > 0 and os.clock() >= bCU_74.NextChase
                        if bzw_3 then
                            local bzu_7 = os.clock()
                            bzw_3 = bzu_7 >= (bCU_74.NextLeakScan or 0)
                        end
                        if bzw_3 then
                            bCU_74.NextLeakScan = os.clock() + 0.5
                            local bzw_4 = Options.ChaseTarget and Options.ChaseTarget.Value or fns.bCU_21.CHASE_ANY
                            if bzu_5 then
                                bzv_5, bzw_5 = fns.bCU_21.ExpeditionEmergencyReposition(bzr_8, bzw_4)
                                if bzv_5 and bzw_5 > 0 then
                                    local bzx_4 = os.clock()
                                    local bzy_1 = Options.ExpEmergencyCooldown and Options.ExpEmergencyCooldown.Value
                                    local bzz_1 = tonumber(bzy_1) or 10
                                    bCU_74.NextChase = bzx_4 + bzz_1
                                    bCU_74.Status = "Repositioning behind " .. bzv_5.Name
                                    local format = string.format
                                    local bzy_2 = bzw_5 == 1 and ""
                                    local bzI_1 = if bzy_2 then 1 else 0
                                    local bzG_1 = 381 * bzI_1 + 867 * (1 - bzI_1)
                                    local bzH_1 = 386 * bzI_1 + 343 * (1 - bzI_1)
                                    if not ((bzG_1 * 2740 + bzH_1 * 2180 + bzG_1 * bzH_1) % 16777213 == 2032486) then
                                        bzy_2 = "s"
                                    end
                                    aDV:Notify(format("Threat near payload: moving %d front unit%s to the back", bzw_5, bzy_2), 4)
                                    table.clear(bCU_74.SlotFails)
                                    table.clear(bCU_74.PriorityDone)
                                    return
                                end
                            else
                                local bzn = aFp(bzr_8, bzw_4)
                                if bzn then
                                    bzu_10, bzv_7 = pcall(function()
                                        return bzn:GetPivot().Position
                                    end)
                                    if bzu_10 then
                                        local bzu_11 = os.clock()
                                        local bzw_6 = Options.ChaseCooldown and Options.ChaseCooldown.Value
                                        local bzx_6 = tonumber(bzw_6) or 10
                                        bCU_74.NextChase = bzu_11 + bzx_6
                                        bCU_74.ChaseAnchor = bzv_7
                                        bCU_74.Status = "Chasing " .. bzn.Name
                                        aDV:Notify("Enemy leaked, rebuilding on " .. bzn.Name, 4)
                                        aEv(bzr_8)
                                        table.clear(bCU_74.SlotFails)
                                        table.clear(bCU_74.PriorityDone)
                                        return
                                    end
                                end
                            end
                        end
                        local bzv_8 = Options.UpgradeMethod and Options.UpgradeMethod.Value or aGk
                        local bzu_13 = bzo
                        if bzu_13 then
                            bzu_13 = Toggles.ExpAutoUpgrade.Value
                        end
                        local bzv_9 = bzu_13 or Toggles.AutoUpgrade.Value
                        local bzu_14 = bzo
                        if not bzu_14 then
                            bzu_14 = Toggles.UpgradeAndPlace.Value
                        end
                        local bzv_10 = bzo
                        local bzy_3 = bzu_14
                        if bzv_10 then
                            bzv_10 = Toggles.ExpUpgradeFarmFirst.Value
                        end
                        local bzu_15 = bzv_10 or Toggles.FocusOnFarm.Value
                        bzz_2, bzu_16 = nil, nil
                        if not bzo or Toggles.ExpSmartPlace.Value then
                            bzz_2, bzu_16 = aE6(bzp_8, bzr_8, bzs_6, bzt_3)
                        end
                        local bzB = Toggles.PauseGameAutoUpgrade.Value and bzz_2 ~= nil
                        local bzA_2 = bzB or fns.bCU_21.LimitsConstrainUpgrades()
                        local bzB_1 = bzA_2
                        local bzI_2 = if bzB_1 then 1 else 0
                        local bzG_2 = 1868 * bzI_2 + 294 * (1 - bzI_2)
                        local bzH_2 = 3522 * bzI_2 + 1547 * (1 - bzI_2)
                        if not ((bzG_2 * 1035 + bzH_2 * 1587 + bzG_2 * bzH_2) % 16777213 == 14101890) then
                            bzB_1 = bzv_9
                        end
                        local bzm = bzB_1
                        if bzm ~= bCU_74.GamePaused then
                            bCU_74.GamePaused = bzm
                            pcall(function()
                                Actions2.UnitManager_PauseAutoUpgrade(bzm)
                            end)
                        end
                        if bzz_2 and bzv_9 and bzy_3 then
                            local bzy_4 = aEP(bzp_8, bzr_8, bzv_8, bzu_15, bzs_6)
                            local bzo_1 = bzo and 0 or bzz_2.Cost
                            local bzA_5 = bzy_4
                            if bzA_5 then
                                bzA_5 = aFZ() - bzy_4.Cost >= math.max(bzq_8, bzo_1)
                            end
                            if bzA_5 then
                                if aEQ(bzy_4) then
                                    local Run2 = bCU_74.Run
                                    Run2.Upgrades = Run2.Upgrades + 1
                                    local Run = bCU_74.Run
                                    Run.YenSpent = Run.YenSpent + bzy_4.Cost
                                end
                                bzr_8 = aE1()
                                bzz_2, bzu_16 = aE6(bzp_8, bzr_8, bzs_6, aFZ())
                            end
                        end
                        if bzz_2 and bzu_16 then
                            if aE_(bzz_2, bzr_8, bCU_74.ChaseAnchor) then
                                local Run2 = bCU_74.Run
                                Run2.Placements = Run2.Placements + 1
                                if not aEz() then
                                    local Run = bCU_74.Run
                                    Run.YenSpent = Run.YenSpent + bzz_2.Cost
                                end
                            end
                            return
                        end
                        if bzz_2 then
                            bCU_74.Status = string.format("Saving ¥%s for %s (slot %d)", aEW(bzz_2.Cost), bzz_2.Display, bzz_2.Slot)
                            return
                        end
                        bCU_74.ChaseAnchor = nil
                        if not bzv_9 then
                            bCU_74.Status = "All placements done"
                            return
                        end
                        local bzo_3 = aEP(bzp_8, bzr_8, bzv_8, bzu_15, bzs_6)
                        if not bzo_3 then
                            bCU_74.Status = "Everything is at its limit"
                            return
                        end
                        if bzt_3 - bzo_3.Cost < bzq_8 then
                            local bzp_9 = bzq_8 > 0 and "Holding ¥" .. aEW(bzq_8) .. " in reserve"
                            local bzq_9 = bzp_9 or "Saving to upgrade " .. bzo_3.Asset
                            bCU_74.Status = bzq_9
                            return
                        end
                        if aEQ(bzo_3) then
                            local Run2 = bCU_74.Run
                            Run2.Upgrades = Run2.Upgrades + 1
                            local Run = bCU_74.Run
                            Run.YenSpent = Run.YenSpent + bzo_3.Cost
                        end
                    end
                    task.spawn(fns.worker5)
                    aEK = nil
                    aEF = false
                end
                bCU_122 = (bCU_122 + 23) % 24
            end
        else
            if false or (false or aEt) or (aEF or aEt or (aEn or not aE9)) or not (false or (false or aEt) or (aEF or aEt or (aEn or not aE9))) then
                aEt = fns.fn3977
            else
                aEF = fns.fn3977
            end
            bCU_122 = (bCU_122 + 5) % 24
        end
    elseif bCU_73 <= 5 then
        if bCU_73 <= 4 then
            if (bCU_122 * 2 + 3) * 10 % 3 == ((bCU_122 * 2 + 3) * 10 + 4) % 3 then
                aE9 = function()
                    local bz6
                    pcall(function()
                        fns.aFo("AutoVoteStart", Toggles.AutoVoteStart.Value == true)
                        if Toggles.AutoSkipWave.Value then
                            fns.aFo("AutoSkipWaves", not aEt(bCU_69()))
                        end
                        if Toggles.UsePhantomPlacements.Value then
                            fns.aFo("AutoPlacePhantoms", true)
                        end
                    end)
                    pcall(fns.bCU_21.DarkMagePriorityStep)
                    local bz7 = Toggles.StopAfkChamber.Value
                    if bz7 then
                        local bz8_13 = os.clock()
                        bz7 = bz8_13 >= (bCU_74.NextAfkChamberRefresh or 0)
                    end
                    if bz7 then
                        bCU_74.NextAfkChamberRefresh = os.clock() + 60
                        pcall(fns.bCU_21.RefreshAfkChamberTimer)
                    end
                    local bz7_18 = Toggles.AutoLeaveAfkChamber.Value
                    if bz7_18 then
                        local bz8_14 = os.clock()
                        bz7_18 = bz8_14 >= (bCU_74.NextAfkLeave or 0)
                    end
                    if bz7_18 then
                        bz6 = false
                        pcall(function()
                            bz6 = aFw.CLIENT_IS_IN_AFK_CHAMBER:InvokeSelf() == true
                        end)
                        if bz6 then
                            bCU_74.NextAfkLeave = os.clock() + 5
                            bCU_74.Status = "Leaving AFK Chamber"
                            pcall(Actions2.AFKChamber_ReturnToLobby)
                        end
                    end
                    if Toggles.BlackScreen.Value ~= aEw[2] then
                        aEw[2] = Toggles.BlackScreen.Value
                        pcall(bCU_83, aEw[2])
                    elseif aEw[2] then
                        pcall(bCU_83, true)
                    end
                    if Toggles.BoostFps.Value then
                        pcall(fns.aGI)
                    end
                    if fns.bCU_29() then
                        if Toggles.DeleteMap.Value then
                            pcall(fns.aE8)
                        end
                        if Toggles.DeleteEnemies.Value then
                            pcall(fns.aF3)
                        end
                    end
                    if Toggles.ReturnLobbyAfterTime.Value then
                        local bz7_19 = (tonumber(Options.ReturnLobbyAfterHours.Value))
                        local bAk_3 = if bz7_19 then 1 else 0
                        local bAi_3 = 306 * bAk_3 + 1244 * (1 - bAk_3)
                        local bAj_3 = 3714 * bAk_3 + 3760 * (1 - bAk_3)
                        if not ((bAi_3 * 200 + bAj_3 * 540 + bAi_3 * bAj_3) % 16777213 == 3203244) then
                            bz7_19 = 1
                        end
                        local bz8_15 = bz7_19
                        local bz7_20 = fns.bCU_21.GameSessionSeconds()
                        local bz9_17 = fns.bCU_29() and bz7_20 and bz7_20 >= bz8_15 * 3600
                        if bz9_17 then
                            bCU_74.Status = "Runtime limit reached"
                            bCU_32()
                            return
                        end
                    end
                    local bz7_21 = Toggles.AutoRestartAtWave.Value and fns.bCU_29()
                    if bz7_21 then
                        local max = math.max
                        local bz8_16 = tonumber(Options.RestartAtWave.Value) or 70
                        local bz9_18 = max(1, bz8_16)
                        local bz7_23 = bCU_91(bCU_69())
                        if bz7_23 < bz9_18 then
                            bCU_74.NextWaveRestart = 0
                        else
                            local bz7_24 = Toggles.WaitForVillainBossBeforeRestart.Value and aEi()
                            if bz7_24 then
                                bCU_74.NextWaveRestart = 0
                                bCU_74.Status = "Villain Boss alive, waiting to restart"
                            else
                                local bz7_25 = os.clock()
                                local bz8_17 = bCU_74.NextWaveRestart
                                local bAk_4 = if bz8_17 then 1 else 0
                                local bAi_4 = 714 * bAk_4 + 637 * (1 - bAk_4)
                                local bAj_4 = 3175 * bAk_4 + 1506 * (1 - bAk_4)
                                if not ((bAi_4 * 3807 + bAj_4 * 3889 + bAi_4 * bAj_4) % 16777213 == 555510) then
                                    bz8_17 = 0
                                end
                                if bz7_25 >= bz8_17 then
                                    bCU_74.NextWaveRestart = os.clock() + 10
                                    bCU_74.Status = "Wave " .. tostring(bz9_18) .. " reached, restarting game"
                                    fns.aFt()
                                    return
                                end
                            end
                        end
                    else
                        bCU_74.NextWaveRestart = 0
                    end
                    local bz7_26 = Toggles.AutoLeaveAtWave.Value and fns.bCU_29()
                    if bz7_26 then
                        local max = math.max
                        local bz8_18 = tonumber(Options.LeaveAtWave.Value) or 15
                        local bz9_19 = max(1, bz8_18)
                        local bz7_28 = bCU_91(bCU_69()) >= bz9_19
                        if bz7_28 then
                            local bz8_19 = os.clock()
                            bz7_28 = bz8_19 >= (bCU_74.NextWaveLeave or 0)
                        end
                        if bz7_28 then
                            bCU_74.NextWaveLeave = os.clock() + 10
                            bCU_74.Status = "Wave " .. tostring(bz9_19) .. " reached, returning to lobby"
                            bCU_32()
                            return
                        end
                    end
                    if not fns.aFu() then
                        aEK = nil
                        aEF = false
                        bCU_74.MatchCounted = false
                        return
                    end
                    local bz7_29 = aEK or os.clock()
                    aEK = bz7_29
                    local bz7_30 = fns.bCU_17()
                    local bz8_20 = bz7_30 and type(bz7_30.Victory) == "boolean"
                    if bz8_20 then
                        local ReportFinishedRun = fns.bCU_21.ReportFinishedRun
                        local bAb_5 = bz7_30.Victory == true and "Victory" or "Defeat"
                        ReportFinishedRun(bAb_5)
                        if not bCU_74.MatchCounted then
                            bCU_74.MatchCounted = true
                            fns.bCU_21.SetMatchCount(fns.bCU_21.GetMatchCount() + 1)
                        end
                    end
                    local bz8_22 = Toggles.ReturnLobbyFailsafe.Value and os.clock() - aEK > 120
                    if bz8_22 then
                        aDV:Notify("Result screen stuck, returning to the lobby", 5)
                        bCU_32()
                        return
                    end
                    if not bz8_20 then
                        return
                    end
                    if aEF then
                        return
                    end
                    local bz7_31 = bz7_30.Victory == false
                    local bz9_21 = Toggles.ReturnLobbyUnderPlayers.Value
                    if bz9_21 then
                        local bAa_7 = #Players:GetPlayers()
                        local bAb_6 = tonumber(Options.LobbyPlayerCount.Value) or 1
                        bz9_21 = bAa_7 <= bAb_6
                    end
                    local bAa_8 = bz9_21
                    local bz9_22 = tonumber(Options.LeaveAfterMatches.Value) or 0
                    local bz9_23 = bz9_22 > 0 and fns.bCU_21.GetMatchCount() >= bz9_22
                    local bz9_24 = bz7_30 == nil or bz7_30.HasNextStage == true
                    local bz9_25 = bz7_30 == nil or bz7_30.RestartDisabled ~= true
                    if Toggles.AutoReturnLobby.Value or Toggles.ReturnLobbyOnLoss.Value and bz7_31 or bz9_23 or bAa_8 then
                        aEF = true
                        bCU_32()
                    else
                        if Toggles.AutoNext.Value and bz9_24 then
                            aEF = true
                            fns.aFU()
                        else
                            if (Toggles.AutoReplay.Value or Toggles.AutoNext.Value) and bz9_25 then
                                aEF = true
                                fns.aFt()
                            end
                        end
                    end
                end
            else
                aGm = function()
                    local bz6
                    pcall(function()
                        fns.aFo("AutoVoteStart", Toggles.AutoVoteStart.Value == true)
                        if Toggles.AutoSkipWave.Value then
                            fns.aFo("AutoSkipWaves", not aEt(bCU_69()))
                        end
                        if Toggles.UsePhantomPlacements.Value then
                            fns.aFo("AutoPlacePhantoms", true)
                        end
                    end)
                    pcall(fns.bCU_21.DarkMagePriorityStep)
                    local bz7 = Toggles.StopAfkChamber.Value
                    if bz7 then
                        local bz8_1 = os.clock()
                        bz7 = bz8_1 >= (bCU_74.NextAfkChamberRefresh or 0)
                    end
                    if bz7 then
                        bCU_74.NextAfkChamberRefresh = os.clock() + 60
                        pcall(fns.bCU_21.RefreshAfkChamberTimer)
                    end
                    local bz7_1 = Toggles.AutoLeaveAfkChamber.Value
                    if bz7_1 then
                        local bz8_2 = os.clock()
                        bz7_1 = bz8_2 >= (bCU_74.NextAfkLeave or 0)
                    end
                    if bz7_1 then
                        bz6 = false
                        pcall(function()
                            bz6 = aFw.CLIENT_IS_IN_AFK_CHAMBER:InvokeSelf() == true
                        end)
                        if bz6 then
                            bCU_74.NextAfkLeave = os.clock() + 5
                            bCU_74.Status = "Leaving AFK Chamber"
                            pcall(Actions2.AFKChamber_ReturnToLobby)
                        end
                    end
                    if Toggles.BlackScreen.Value ~= aEw[2] then
                        aEw[2] = Toggles.BlackScreen.Value
                        pcall(bCU_83, aEw[2])
                    elseif aEw[2] then
                        pcall(bCU_83, true)
                    end
                    if Toggles.BoostFps.Value then
                        pcall(fns.aGI)
                    end
                    if fns.bCU_29() then
                        if Toggles.DeleteMap.Value then
                            pcall(fns.aE8)
                        end
                        if Toggles.DeleteEnemies.Value then
                            pcall(fns.aF3)
                        end
                    end
                    if Toggles.ReturnLobbyAfterTime.Value then
                        local bz7_2 = (tonumber(Options.ReturnLobbyAfterHours.Value))
                        local bAk_1 = if bz7_2 then 1 else 0
                        local bAi_1 = 306 * bAk_1 + 1244 * (1 - bAk_1)
                        local bAj_1 = 3714 * bAk_1 + 3760 * (1 - bAk_1)
                        if not ((bAi_1 * 200 + bAj_1 * 540 + bAi_1 * bAj_1) % 16777213 == 3203244) then
                            bz7_2 = 1
                        end
                        local bz8_3 = bz7_2
                        local bz7_3 = fns.bCU_21.GameSessionSeconds()
                        local bz9_3 = fns.bCU_29() and bz7_3 and bz7_3 >= bz8_3 * 3600
                        if bz9_3 then
                            bCU_74.Status = "Runtime limit reached"
                            bCU_32()
                            return
                        end
                    end
                    local bz7_4 = Toggles.AutoRestartAtWave.Value and fns.bCU_29()
                    if bz7_4 then
                        local max = math.max
                        local bz8_4 = tonumber(Options.RestartAtWave.Value) or 70
                        local bz9_4 = max(1, bz8_4)
                        local bz7_6 = bCU_91(bCU_69())
                        if bz7_6 < bz9_4 then
                            bCU_74.NextWaveRestart = 0
                        else
                            local bz7_7 = Toggles.WaitForVillainBossBeforeRestart.Value and aEi()
                            if bz7_7 then
                                bCU_74.NextWaveRestart = 0
                                bCU_74.Status = "Villain Boss alive, waiting to restart"
                            else
                                local bz7_8 = os.clock()
                                local bz8_5 = bCU_74.NextWaveRestart
                                local bAk_2 = if bz8_5 then 1 else 0
                                local bAi_2 = 714 * bAk_2 + 637 * (1 - bAk_2)
                                local bAj_2 = 3175 * bAk_2 + 1506 * (1 - bAk_2)
                                if not ((bAi_2 * 3807 + bAj_2 * 3889 + bAi_2 * bAj_2) % 16777213 == 555510) then
                                    bz8_5 = 0
                                end
                                if bz7_8 >= bz8_5 then
                                    bCU_74.NextWaveRestart = os.clock() + 10
                                    bCU_74.Status = "Wave " .. tostring(bz9_4) .. " reached, restarting game"
                                    fns.aFt()
                                    return
                                end
                            end
                        end
                    else
                        bCU_74.NextWaveRestart = 0
                    end
                    local bz7_9 = Toggles.AutoLeaveAtWave.Value and fns.bCU_29()
                    if bz7_9 then
                        local max = math.max
                        local bz8_6 = tonumber(Options.LeaveAtWave.Value) or 15
                        local bz9_5 = max(1, bz8_6)
                        local bz7_11 = bCU_91(bCU_69()) >= bz9_5
                        if bz7_11 then
                            local bz8_7 = os.clock()
                            bz7_11 = bz8_7 >= (bCU_74.NextWaveLeave or 0)
                        end
                        if bz7_11 then
                            bCU_74.NextWaveLeave = os.clock() + 10
                            bCU_74.Status = "Wave " .. tostring(bz9_5) .. " reached, returning to lobby"
                            bCU_32()
                            return
                        end
                    end
                    if not fns.aFu() then
                        aEK = nil
                        aEF = false
                        bCU_74.MatchCounted = false
                        return
                    end
                    local bz7_12 = aEK or os.clock()
                    aEK = bz7_12
                    local bz7_13 = fns.bCU_17()
                    local bz8_8 = bz7_13 and type(bz7_13.Victory) == "boolean"
                    if bz8_8 then
                        local ReportFinishedRun = fns.bCU_21.ReportFinishedRun
                        local bAb_1 = bz7_13.Victory == true and "Victory" or "Defeat"
                        ReportFinishedRun(bAb_1)
                        if not bCU_74.MatchCounted then
                            bCU_74.MatchCounted = true
                            fns.bCU_21.SetMatchCount(fns.bCU_21.GetMatchCount() + 1)
                        end
                    end
                    local bz8_10 = Toggles.ReturnLobbyFailsafe.Value and os.clock() - aEK > 120
                    if bz8_10 then
                        aDV:Notify("Result screen stuck, returning to the lobby", 5)
                        bCU_32()
                        return
                    end
                    if not bz8_8 then
                        return
                    end
                    if aEF then
                        return
                    end
                    local bz7_14 = bz7_13.Victory == false
                    local bz9_7 = Toggles.ReturnLobbyUnderPlayers.Value
                    if bz9_7 then
                        local bAa_3 = #Players:GetPlayers()
                        local bAb_2 = tonumber(Options.LobbyPlayerCount.Value) or 1
                        bz9_7 = bAa_3 <= bAb_2
                    end
                    local bAa_4 = bz9_7
                    local bz9_8 = tonumber(Options.LeaveAfterMatches.Value) or 0
                    local bz9_9 = bz9_8 > 0 and fns.bCU_21.GetMatchCount() >= bz9_8
                    local bz9_10 = bz7_13 == nil or bz7_13.HasNextStage == true
                    local bz9_11 = bz7_13 == nil or bz7_13.RestartDisabled ~= true
                    if Toggles.AutoReturnLobby.Value or Toggles.ReturnLobbyOnLoss.Value and bz7_14 or bz9_9 or bAa_4 then
                        aEF = true
                        bCU_32()
                    else
                        if Toggles.AutoNext.Value and bz9_10 then
                            aEF = true
                            fns.aFU()
                        else
                            if (Toggles.AutoReplay.Value or Toggles.AutoNext.Value) and bz9_11 then
                                aEF = true
                                fns.aFt()
                            end
                        end
                    end
                end
            end
            bCU_122 = (bCU_122 + 17) % 24
        else
            if (bCU_122 * 2 + 5) * 13 % 3 == ((bCU_122 * 2 + 5) * 13 + 2) % 3 then
                task.spawn(fns.worker4)
                task.spawn(fns.autoPlayLoop)
                aFT = aE9.RenderStepped:Connect(fns.onRenderStepped)
            else
                task.spawn(fns.worker4)
                task.spawn(fns.autoPlayLoop)
                aE9 = aFT.RenderStepped:Connect(fns.onRenderStepped)
            end
            bCU_122 = (bCU_122 + 5) % 24
        end
    else
        bCU_73 = {
            "qckpl",
            "dehc",
            "zdwebybpseov",
            "bawztc",
            "lxuykfuqi",
            "czg",
            "mdgcjsvimdi",
            "imdb",
            "ijut",
            "wygsoovrxgul",
            "yasherhadze",
            "cvmqouorz",
            "kftkmkzng"
        }
        if bCU_73[(bCU_122 * 94 + 47) % 13 + 1] < bCU_73[(bCU_122 * 94 + 47) % 13 + 1] then
            aDV:SetLibrary(bCU_129)
            aDV:SetFolder("OuroborosHub")
            aDV:SaveDefault("Monochrome")
            bCU_92:SetLibrary(bCU_129)
            bCU_92:IgnoreThemeSettings()
            bCU_92:SetIgnoreIndexes({
                "ResetWaveSlotPosition",
                "ResetSlotPosition",
                "MenuKeybind",
                "SetSlotPosition",
                "SetWaveSlotPosition"
            })
            bCU_92:SetFolder("OuroborosHub/AnimeExpeditions")
            bCU_92:BuildConfigSection(aD_.Settings)
            aDV:ApplyToTab(aD_.Settings)
            bCU_92:LoadAutoloadConfig()
            aDV:LoadDefault()
            bCU_129:OnUnload(fns.fn784)
            bCU_101.OuroborosAeAutoPlayUnload = fns.fn2247
            task.spawn(fns.worker3)
            bCU_115 = function()
                local bBu
                local bBz
                local screenGui
                local scrollingFrame
                local bBt
                local uIStroke
                local textButton
                bBt = nil
                bBu = nil
                scrollingFrame = nil
                textButton = nil
                screenGui = nil
                bBz = nil
                uIStroke = nil
                local bBy
                bBy = aEb.Folder .. "/accepted.txt"
                local bBB = aE7 and isfile(bBy)
                if bBB then
                    return
                end
                local bBB_3 = {
                    {
                        Country = "United States",
                        Language = "English",
                        Text = "This script is currently in Alpha/Beta status. It has not been fully tested and will be improved. If you encounter bugs, join the Discord server and report them to the owner."
                    },
                    {
                        Country = "Philippines",
                        Language = "Filipino",
                        Text = "Ang script na ito ay nasa Alpha/Beta status pa. Hindi pa ito lubusang nasusubukan at patuloy pang pagagandahin. Kung makakita ka ng bugs, sumali sa Discord server at i-report ito sa may-ari."
                    },
                    {
                        Country = "Indonesia",
                        Language = "Bahasa Indonesia",
                        Text = "Skrip ini masih dalam status Alpha/Beta. Skrip ini belum sepenuhnya diuji dan akan terus ditingkatkan. Jika Anda menemukan bug, bergabunglah dengan server Discord dan laporkan kepada pemiliknya."
                    },
                    {
                        Country = "Russia",
                        Language = "Русский",
                        Text = "Этот скрипт находится в статусе Alpha/Beta. Он ещё не полностью протестирован и будет улучшаться. Если вы столкнётесь с ошибками, зайдите на Discord-сервер и сообщите о них владельцу."
                    },
                    {
                        Country = "Thailand",
                        Language = "ไทย",
                        Text = "สคริปต์นี้อยู่ในสถานะ Alpha/Beta ยังไม่ได้รับการทดสอบอย่างสมบูรณ์และจะได้รับการปรับปรุงต่อไป หากคุณพบข้อผิดพลาด กรุณาเข้าร่วมเซิร์ฟเวอร์ Discord และแจ้งให้เจ้าของทราบ"
                    },
                    {
                        Country = "Brazil",
                        Language = "Português",
                        Text = "Este script está atualmente em status Alpha/Beta. Ele ainda não foi totalmente testado e será aprimorado. Se você encontrar bugs, entre no servidor do Discord e reporte-os ao proprietário."
                    },
                    {
                        Country = "Vietnam",
                        Language = "Tiếng Việt",
                        Text = "Script này hiện đang ở trạng thái Alpha/Beta. Nó chưa được kiểm tra đầy đủ và sẽ được cải thiện. Nếu bạn gặp lỗi, hãy tham gia máy chủ Discord và báo cáo cho chủ sở hữu."
                    }
                }
                bBt = Color3.fromRGB(126, 214, 160)
                screenGui = Instance.new("ScreenGui")
                screenGui.Name = "OuroborosDisclaimer"
                screenGui.ResetOnSpawn = false
                screenGui.IgnoreGuiInset = true
                screenGui.DisplayOrder = 1000
                screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                if syn and syn.protect_gui then
                    syn.protect_gui(screenGui)
                end
                screenGui.Parent = aFD()
                local textButton2 = Instance.new("TextButton")
                textButton2.Size = UDim2.fromScale(1, 1)
                textButton2.BackgroundColor3 = Color3.fromRGB(11, 12, 14)
                textButton2.BackgroundTransparency = 0
                textButton2.BorderSizePixel = 0
                textButton2.AutoButtonColor = false
                textButton2.Modal = true
                textButton2.Text = ""
                textButton2.Parent = screenGui
                local frame2 = Instance.new("Frame")
                frame2.Size = UDim2.new(1, 0, 0, 2)
                frame2.BackgroundColor3 = bBt
                frame2.BorderSizePixel = 0
                frame2.Parent = textButton2
                scrollingFrame = Instance.new("ScrollingFrame")
                scrollingFrame.AnchorPoint = Vector2.new(0.5, 0)
                scrollingFrame.Position = UDim2.fromScale(0.5, 0)
                scrollingFrame.Size = UDim2.new(1, -64, 1, 0)
                scrollingFrame.BackgroundTransparency = 1
                scrollingFrame.BorderSizePixel = 0
                scrollingFrame.ScrollBarThickness = 2
                scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(70, 74, 82)
                scrollingFrame.ScrollBarImageTransparency = 0.4
                scrollingFrame.CanvasSize = UDim2.new()
                scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
                scrollingFrame.Parent = textButton2
                local uISizeConstraint = Instance.new("UISizeConstraint")
                uISizeConstraint.MaxSize = Vector2.new(680, math.huge)
                uISizeConstraint.Parent = scrollingFrame
                local uIListLayout2 = Instance.new("UIListLayout")
                uIListLayout2.Padding = UDim.new(0, 0)
                uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout2.Parent = scrollingFrame
                local uIPadding2 = Instance.new("UIPadding")
                uIPadding2.PaddingTop = UDim.new(0, 72)
                uIPadding2.PaddingBottom = UDim.new(0, 56)
                uIPadding2.Parent = scrollingFrame
                bBz = 0
                local function bBD_8(aoe, aof)
                    bBz += 1
                    local frame = Instance.new("Frame")
                    frame.BackgroundTransparency = 1
                    frame.BorderSizePixel = 0
                    local new = UDim2.new
                    local bBg = aoe or 0
                    frame.Size = new(1, 0, 0, bBg)
                    local bBg_2 = aoe and Enum.AutomaticSize.None or Enum.AutomaticSize.Y
                    frame.AutomaticSize = bBg_2
                    frame.LayoutOrder = bBz
                    frame.Parent = scrollingFrame
                    if aof then
                        local uIPadding = Instance.new("UIPadding")
                        uIPadding.PaddingBottom = UDim.new(0, aof)
                        uIPadding.Parent = frame
                    end
                    return frame
                end
                local function bBE(aom, aon, aoo, aop, aoq, aor)
                    local textLabel = Instance.new("TextLabel")
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.new(1, 0, 0, 0)
                    textLabel.AutomaticSize = Enum.AutomaticSize.Y
                    textLabel.Text = aon
                    textLabel.Font = aoo
                    textLabel.TextSize = aop
                    textLabel.TextColor3 = aoq
                    textLabel.TextWrapped = true
                    textLabel.RichText = false
                    local bBj = aor or 1
                    textLabel.LineHeight = bBj
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.Parent = aom
                    return textLabel
                end
                local bBF = bBD_8(nil, 10)
                bBE(bBF, "OUROBOROS HUB", Enum.Font.GothamBold, 12, Color3.fromRGB(96, 102, 112))
                local bBF_6 = bBD_8(nil, 14)
                bBE(bBF_6, "Alpha / Beta", Enum.Font.GothamBold, 40, Color3.fromRGB(240, 241, 243))
                local bBF_7 = bBD_8(nil, 40)
                bBE(bBF_7, "Anime Expeditions  ·  https://discord.gg/ehKVq7pf7v", Enum.Font.Gotham, 14, bBt)
                for k, v in bBB_3 do
                    local bBB_4 = bBD_8(nil, 28)
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.Padding = UDim.new(0, 7)
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Parent = bBB_4
                    local bBF_9 = bBE(bBB_4, string.upper(v.Country), Enum.Font.GothamBold, 11, Color3.fromRGB(96, 102, 112))
                    bBF_9.LayoutOrder = 1
                    local bBF_10 = bBE(bBB_4, v.Text, Enum.Font.Gotham, 15, Color3.fromRGB(196, 199, 206), 1.35)
                    bBF_10.LayoutOrder = 2
                end
                textButton = Instance.new("TextButton")
                textButton.AnchorPoint = Vector2.new(0.5, 1)
                textButton.Position = UDim2.new(0.5, 0, 1, -36)
                textButton.Size = UDim2.fromOffset(280, 46)
                textButton.BackgroundTransparency = 1
                textButton.BorderSizePixel = 0
                textButton.AutoButtonColor = false
                textButton.Font = Enum.Font.GothamBold
                textButton.TextSize = 14
                textButton.TextColor3 = Color3.fromRGB(96, 102, 112)
                textButton.Text = "READ THE NOTICE   10"
                textButton.Parent = textButton2
                Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 4)
                uIStroke = Instance.new("UIStroke")
                uIStroke.Color = Color3.fromRGB(58, 62, 70)
                uIStroke.Thickness = 1
                uIStroke.Parent = textButton
                bBu = false
                task.spawn(function()
                    local bBp = 10
                    local bBo = -1
                    while false and bBp <= 1 or true and bBp >= 1 do
                        local bBq = bBp
                        if not screenGui.Parent then
                            return
                        end
                        textButton.Text = "READ THE NOTICE   " .. bBq
                        task.wait(1)
                        bBp += bBo
                    end
                    if not screenGui.Parent then
                        return
                    end
                    bBu = true
                    textButton.Text = "CONFIRM"
                    textButton.TextColor3 = Color3.fromRGB(11, 12, 14)
                    textButton.BackgroundTransparency = 0
                    textButton.BackgroundColor3 = bBt
                    textButton.AutoButtonColor = true
                    uIStroke.Color = bBt
                end)
                textButton.Activated:Connect(function()
                    if not bBu then
                        return
                    end
                    if aE7 then
                        pcall(function()
                            writefile(bBy, tostring(os.time()))
                        end)
                    end
                    screenGui:Destroy()
                end)
                aDV:OnUnload(function()
                    pcall(function()
                        screenGui:Destroy()
                    end)
                end)
            end
            pcall(bCU_115)
            bCU_108 = function()
                local bBQ
                bBQ = syn and syn.queue_on_teleport or queue_on_teleport
                local bBR_2 = false
                local bBS_2 = not bBQ
                local bBW = if bBS_2 then 1 else 0
                local bBU = 1190 * bBW + 2935 * (1 - bBW)
                local bBV = 803 * bBW + 618 * (1 - bBW)
                if not ((bBU * 3299 + bBV * 1190 + bBU * bBV) % 16777213 == 5836950) then
                    bBS_2 = bBR_2
                end
                if bBS_2 then
                    return
                end
                pcall(function()
                    bBQ(('\t\t\tif not getgenv().OuroborosAeQueued and (isfile("%s/autoexec.flag") or isfile("%s/queue_summon.flag")) then\n\t\t\t\tgetgenv().OuroborosAeQueued = true\n\t\t\t\ttask.wait(4)\n\t\t\t\tlocal Ok, Err = pcall(function()\n\t\t\t\t\tloadstring(game:HttpGet("%s"))()\n\t\t\t\tend)\n\t\t\t\tif not Ok then\n\t\t\t\t\twarn("Ouroboros Hub re-inject failed: " .. tostring(Err))\n\t\t\t\tend\n\t\t\t\tgetgenv().OuroborosAeQueued = nil\n\t\t\tend\n\t\t'):format(aEb.Folder, aEb.Folder, aEB))
                end)
            end
        else
            bCU_108:SetLibrary(aDV)
            bCU_108:SetFolder("OuroborosHub")
            bCU_108:SaveDefault("Monochrome")
            bCU_101:SetLibrary(aDV)
            bCU_101:IgnoreThemeSettings()
            bCU_101:SetIgnoreIndexes({
                "MenuKeybind",
                "SetSlotPosition",
                "ResetSlotPosition",
                "SetWaveSlotPosition",
                "ResetWaveSlotPosition"
            })
            bCU_101:SetFolder("OuroborosHub/AnimeExpeditions")
            bCU_101:BuildConfigSection(bCU_115.Settings)
            bCU_108:ApplyToTab(bCU_115.Settings)
            bCU_101:LoadAutoloadConfig()
            bCU_108:LoadDefault()
            aDV:OnUnload(fns.fn784)
            aD_.OuroborosAeAutoPlayUnload = fns.fn2247
            task.spawn(fns.worker3)
            bCU_129 = function()
                local bBu
                local bBz
                local screenGui
                local scrollingFrame
                local bBt
                local uIStroke
                local textButton
                bBt = nil
                bBu = nil
                scrollingFrame = nil
                textButton = nil
                screenGui = nil
                bBz = nil
                uIStroke = nil
                local bBy
                bBy = aEb.Folder .. "/accepted.txt"
                local bBB = aE7 and isfile(bBy)
                if bBB then
                    return
                end
                local bBB_1 = {
                    {
                        Country = "United States",
                        Language = "English",
                        Text = "This script is currently in Alpha/Beta status. It has not been fully tested and will be improved. If you encounter bugs, join the Discord server and report them to the owner."
                    },
                    {
                        Country = "Philippines",
                        Language = "Filipino",
                        Text = "Ang script na ito ay nasa Alpha/Beta status pa. Hindi pa ito lubusang nasusubukan at patuloy pang pagagandahin. Kung makakita ka ng bugs, sumali sa Discord server at i-report ito sa may-ari."
                    },
                    {
                        Country = "Indonesia",
                        Language = "Bahasa Indonesia",
                        Text = "Skrip ini masih dalam status Alpha/Beta. Skrip ini belum sepenuhnya diuji dan akan terus ditingkatkan. Jika Anda menemukan bug, bergabunglah dengan server Discord dan laporkan kepada pemiliknya."
                    },
                    {
                        Country = "Russia",
                        Language = "Русский",
                        Text = "Этот скрипт находится в статусе Alpha/Beta. Он ещё не полностью протестирован и будет улучшаться. Если вы столкнётесь с ошибками, зайдите на Discord-сервер и сообщите о них владельцу."
                    },
                    {
                        Country = "Thailand",
                        Language = "ไทย",
                        Text = "สคริปต์นี้อยู่ในสถานะ Alpha/Beta ยังไม่ได้รับการทดสอบอย่างสมบูรณ์และจะได้รับการปรับปรุงต่อไป หากคุณพบข้อผิดพลาด กรุณาเข้าร่วมเซิร์ฟเวอร์ Discord และแจ้งให้เจ้าของทราบ"
                    },
                    {
                        Country = "Brazil",
                        Language = "Português",
                        Text = "Este script está atualmente em status Alpha/Beta. Ele ainda não foi totalmente testado e será aprimorado. Se você encontrar bugs, entre no servidor do Discord e reporte-os ao proprietário."
                    },
                    {
                        Country = "Vietnam",
                        Language = "Tiếng Việt",
                        Text = "Script này hiện đang ở trạng thái Alpha/Beta. Nó chưa được kiểm tra đầy đủ và sẽ được cải thiện. Nếu bạn gặp lỗi, hãy tham gia máy chủ Discord và báo cáo cho chủ sở hữu."
                    }
                }
                bBt = Color3.fromRGB(126, 214, 160)
                screenGui = Instance.new("ScreenGui")
                screenGui.Name = "OuroborosDisclaimer"
                screenGui.ResetOnSpawn = false
                screenGui.IgnoreGuiInset = true
                screenGui.DisplayOrder = 1000
                screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                if syn and syn.protect_gui then
                    syn.protect_gui(screenGui)
                end
                screenGui.Parent = aFD()
                local textButton2 = Instance.new("TextButton")
                textButton2.Size = UDim2.fromScale(1, 1)
                textButton2.BackgroundColor3 = Color3.fromRGB(11, 12, 14)
                textButton2.BackgroundTransparency = 0
                textButton2.BorderSizePixel = 0
                textButton2.AutoButtonColor = false
                textButton2.Modal = true
                textButton2.Text = ""
                textButton2.Parent = screenGui
                local frame2 = Instance.new("Frame")
                frame2.Size = UDim2.new(1, 0, 0, 2)
                frame2.BackgroundColor3 = bBt
                frame2.BorderSizePixel = 0
                frame2.Parent = textButton2
                scrollingFrame = Instance.new("ScrollingFrame")
                scrollingFrame.AnchorPoint = Vector2.new(0.5, 0)
                scrollingFrame.Position = UDim2.fromScale(0.5, 0)
                scrollingFrame.Size = UDim2.new(1, -64, 1, 0)
                scrollingFrame.BackgroundTransparency = 1
                scrollingFrame.BorderSizePixel = 0
                scrollingFrame.ScrollBarThickness = 2
                scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(70, 74, 82)
                scrollingFrame.ScrollBarImageTransparency = 0.4
                scrollingFrame.CanvasSize = UDim2.new()
                scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
                scrollingFrame.Parent = textButton2
                local uISizeConstraint = Instance.new("UISizeConstraint")
                uISizeConstraint.MaxSize = Vector2.new(680, math.huge)
                uISizeConstraint.Parent = scrollingFrame
                local uIListLayout2 = Instance.new("UIListLayout")
                uIListLayout2.Padding = UDim.new(0, 0)
                uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout2.Parent = scrollingFrame
                local uIPadding2 = Instance.new("UIPadding")
                uIPadding2.PaddingTop = UDim.new(0, 72)
                uIPadding2.PaddingBottom = UDim.new(0, 56)
                uIPadding2.Parent = scrollingFrame
                bBz = 0
                local function bBD_4(aoe, aof)
                    bBz += 1
                    local frame = Instance.new("Frame")
                    frame.BackgroundTransparency = 1
                    frame.BorderSizePixel = 0
                    local new = UDim2.new
                    local bBg = aoe or 0
                    frame.Size = new(1, 0, 0, bBg)
                    local bBg_1 = aoe and Enum.AutomaticSize.None or Enum.AutomaticSize.Y
                    frame.AutomaticSize = bBg_1
                    frame.LayoutOrder = bBz
                    frame.Parent = scrollingFrame
                    if aof then
                        local uIPadding = Instance.new("UIPadding")
                        uIPadding.PaddingBottom = UDim.new(0, aof)
                        uIPadding.Parent = frame
                    end
                    return frame
                end
                local function bBE(aom, aon, aoo, aop, aoq, aor)
                    local textLabel = Instance.new("TextLabel")
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.new(1, 0, 0, 0)
                    textLabel.AutomaticSize = Enum.AutomaticSize.Y
                    textLabel.Text = aon
                    textLabel.Font = aoo
                    textLabel.TextSize = aop
                    textLabel.TextColor3 = aoq
                    textLabel.TextWrapped = true
                    textLabel.RichText = false
                    local bBj = aor or 1
                    textLabel.LineHeight = bBj
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.Parent = aom
                    return textLabel
                end
                local bBF = bBD_4(nil, 10)
                bBE(bBF, "OUROBOROS HUB", Enum.Font.GothamBold, 12, Color3.fromRGB(96, 102, 112))
                local bBF_1 = bBD_4(nil, 14)
                bBE(bBF_1, "Alpha / Beta", Enum.Font.GothamBold, 40, Color3.fromRGB(240, 241, 243))
                local bBF_2 = bBD_4(nil, 40)
                bBE(bBF_2, "Anime Expeditions  ·  https://discord.gg/ehKVq7pf7v", Enum.Font.Gotham, 14, bBt)
                for k, v in bBB_1 do
                    local bBB_2 = bBD_4(nil, 28)
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.Padding = UDim.new(0, 7)
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Parent = bBB_2
                    local bBF_4 = bBE(bBB_2, string.upper(v.Country), Enum.Font.GothamBold, 11, Color3.fromRGB(96, 102, 112))
                    bBF_4.LayoutOrder = 1
                    local bBF_5 = bBE(bBB_2, v.Text, Enum.Font.Gotham, 15, Color3.fromRGB(196, 199, 206), 1.35)
                    bBF_5.LayoutOrder = 2
                end
                textButton = Instance.new("TextButton")
                textButton.AnchorPoint = Vector2.new(0.5, 1)
                textButton.Position = UDim2.new(0.5, 0, 1, -36)
                textButton.Size = UDim2.fromOffset(280, 46)
                textButton.BackgroundTransparency = 1
                textButton.BorderSizePixel = 0
                textButton.AutoButtonColor = false
                textButton.Font = Enum.Font.GothamBold
                textButton.TextSize = 14
                textButton.TextColor3 = Color3.fromRGB(96, 102, 112)
                textButton.Text = "READ THE NOTICE   10"
                textButton.Parent = textButton2
                Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 4)
                uIStroke = Instance.new("UIStroke")
                uIStroke.Color = Color3.fromRGB(58, 62, 70)
                uIStroke.Thickness = 1
                uIStroke.Parent = textButton
                bBu = false
                task.spawn(function()
                    local bBp = 10
                    local bBo = -1
                    while false and bBp <= 1 or true and bBp >= 1 do
                        local bBq = bBp
                        if not screenGui.Parent then
                            return
                        end
                        textButton.Text = "READ THE NOTICE   " .. bBq
                        task.wait(1)
                        bBp += bBo
                    end
                    if not screenGui.Parent then
                        return
                    end
                    bBu = true
                    textButton.Text = "CONFIRM"
                    textButton.TextColor3 = Color3.fromRGB(11, 12, 14)
                    textButton.BackgroundTransparency = 0
                    textButton.BackgroundColor3 = bBt
                    textButton.AutoButtonColor = true
                    uIStroke.Color = bBt
                end)
                textButton.Activated:Connect(function()
                    if not bBu then
                        return
                    end
                    if aE7 then
                        pcall(function()
                            writefile(bBy, tostring(os.time()))
                        end)
                    end
                    screenGui:Destroy()
                end)
                aDV:OnUnload(function()
                    pcall(function()
                        screenGui:Destroy()
                    end)
                end)
            end
            pcall(bCU_129)
            bCU_92 = function()
                local bBQ
                bBQ = syn and syn.queue_on_teleport or queue_on_teleport
                local bBR_1 = false
                local bBS_1 = not bBQ
                local bBW = if bBS_1 then 1 else 0
                local bBU = 1190 * bBW + 2935 * (1 - bBW)
                local bBV = 803 * bBW + 618 * (1 - bBW)
                if not ((bBU * 3299 + bBV * 1190 + bBU * bBV) % 16777213 == 5836950) then
                    bBS_1 = bBR_1
                end
                if bBS_1 then
                    return
                end
                pcall(function()
                    bBQ(('\t\t\tif not getgenv().OuroborosAeQueued and (isfile("%s/autoexec.flag") or isfile("%s/queue_summon.flag")) then\n\t\t\t\tgetgenv().OuroborosAeQueued = true\n\t\t\t\ttask.wait(4)\n\t\t\t\tlocal Ok, Err = pcall(function()\n\t\t\t\t\tloadstring(game:HttpGet("%s"))()\n\t\t\t\tend)\n\t\t\t\tif not Ok then\n\t\t\t\t\twarn("Ouroboros Hub re-inject failed: " .. tostring(Err))\n\t\t\t\tend\n\t\t\t\tgetgenv().OuroborosAeQueued = nil\n\t\t\tend\n\t\t'):format(aEb.Folder, aEb.Folder, aEB))
                end)
            end
        end
        bCU_122 = (bCU_122 + 11) % 24
    end
until (bCU_122 * 23 + 22) % 24 == 22
if aE7 then
    pcall(function()
        if Toggles.AutoExecute.Value then
            writefile(aEb.Folder .. "/autoexec.flag", "1")
        elseif isfile(aEb.Folder .. "/autoexec.flag") then
            delfile(aEb.Folder .. "/autoexec.flag")
        end
    end)
end
bCU_129 = 6
repeat
    bCU_122 = {
        "idihap",
        "gksvxwrkktyn",
        "iolpo",
        "mlozsrjbi",
        "nuvackv",
        "xozs",
        "mtaiuhdsjain",
        "odozucvthuc",
        "jkgwb",
        "vdggg"
    }
    if bCU_122[(bCU_129 * 64 + 83) % 10 + 1] < bCU_122[(bCU_129 * 64 + 83) % 10 + 1] then
        aEL()
        bCU_92:Notify("Ouroboros Hub | " .. aDV .. " loaded")
    else
        bCU_92()
        aDV:Notify("Ouroboros Hub | Anime Expeditions loaded")
    end
    bCU_129 = (bCU_129 + 0) % 8
until (bCU_129 * 1 + 7) % 8 == 5
