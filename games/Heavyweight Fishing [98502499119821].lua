local fns = {}
local akR_121, akR_131, onCharacterAdded, akR_141
fns.akR_4 = nil
fns.CoreGui = nil
fns.akR_8 = nil
fns.akR_9 = nil
fns.akR_11 = nil
fns.akR_12 = nil
fns.akR_14 = nil
fns.akR_16 = nil
fns.akR_19 = nil
fns.akR_20 = nil
fns.akR_21 = nil
fns.akR_24 = nil
fns.akR_26 = nil
fns.akR_28 = nil
fns.akR_29 = nil
fns.akR_31 = nil
fns.akR_32 = nil
fns.akR_33 = nil
fns.akR_36 = nil
fns.akR_38 = nil
fns.akR_40 = nil
fns.akR_41 = nil
fns.akR_43 = nil
fns.akR_45 = nil
fns.akR_48 = nil
fns.akR_49 = nil
fns.akR_50 = nil
fns.akR_52 = nil
fns.akR_53 = nil
fns.akR_55 = nil
fns.akR_57 = nil
fns.akR_60 = nil
fns.akR_61 = nil
fns.akR_63 = nil
local ML
local N9
local M9
local Oy
local My
local OX
local NX
local Pl
local Label2
local Ol
local Nl
local OK
local NK
local MK
local O8
local N8
local Ocean
local Ox
local Nx
local OW
local Mx
local NW
local MW
local RunService
local Quest2
local Nk
local OJ
local Toggles
local N7
local M7
local Ow
local Nw
local Mw
local MV
local Pj
local Oj
local NI
local O6
local N6
local M6
local Ov
local Label
local NU
local Pi
local MU
local Oi
local Ni
local OH
local NH
local MH
local O5
local N5
local M5
local Ou
local Nu
local Mu
local OT
local Ph
local Oh
local Nh
local OG
local NG
local O4
local MG
local N4
local M4
local Label3
local OS
local Pg
local Og
local OF
local NF
local MF
local O3
local N3
local M3
local Os
local Ns
local Ms
local LocalPlayer
local NR
local MR
local Pf
local Nf
local Label4
local NE
local ME
local N2
local Data
local Or
local Nr
local Mr
local OQ
local NQ
local MQ
local Pe
local Oe
local Ne
local ND
local O1
local MD
local N1
local M1
local Oq
local PlayerGui
local OP
local UserInputService
local MP
local Od
local Nd
local CurrentCamera
local MC
local O0
local N0
local M0
local Op
local OO
local NO
local Pc
function fns.fn3()
    local abk = Nk()
    if not abk then
        return
    end
    local Quest = abk:FindFirstChild("Quest")
    if not Quest then
        return
    end
    local Daily2 = Quest:FindFirstChild("Daily")
    local Daily = Quest2.Daily
    if Daily2 then
        for i, child in ipairs(Daily2:GetChildren()) do
            local Claim = child:FindFirstChild("Claim")
            local abn = Claim and Claim:IsA("BoolValue") and Claim.Value == false
            if abn then
                local Progression = child:FindFirstChild("Progression")
                local abn_1 = Daily
                if abn_1 then
                    local abo_1 = Daily[tonumber(child.Name)] or Daily[child.Name]
                    abn_1 = abo_1
                end
                local abo_2 = abn_1
                if abn_1 then
                    abn_1 = tonumber(abo_2[2])
                end
                local abo_3 = Progression
                local abp = abn_1
                if abo_3 then
                    abo_3 = Progression:IsA("NumberValue")
                end
                if abo_3 then
                    abo_3 = abp
                end
                if abo_3 then
                    abo_3 = Progression.Value >= abp
                end
                if abo_3 then
                    MQ.ClaimQuest:FireServer(child.Name)
                    Nx(child.Name)
                    task.wait(0.2)
                end
            end
        end
    end
    local Main = Quest:FindFirstChild("Main")
    if Main then
        for i, child in ipairs(Main:GetChildren()) do
            local abk_5 = child:IsA("Folder") and ND(child)
            if abk_5 then
                MQ.ClaimQuest:FireServer(child.Name)
                task.wait(0.2)
            end
        end
    end
end
function fns.fn24(bk, bl)
    local R8_1
    local R7_1
    local R6 = bk:FindFirstChild(bl)
    if not R6 then
        return nil
    end
    R7_1, R8_1 = pcall(require, R6)
    local R6_1 = R7_1 and type(R8_1) == "table"
    if R6_1 then
        return R8_1
    end
    return nil
end
function fns.fn34(cQ)
    if not cQ then
        return nil
    end
    local Sr = N9[cQ.Name]
    if Sr then
        return Sr
    end
    local attr = cQ:GetAttribute("Name")
    local Ss = type(attr) == "string" and N9[attr]
    if Ss then
        return N9[attr]
    end
    for i, descendant in ipairs(cQ:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            local Sr_2 = descendant.ObjectText or ""
            local Ss_1 = tostring(Sr_2)
            if N9[Ss_1] then
                return N9[Ss_1]
            end
        end
    end
    local Shirt = cQ:FindFirstChildOfClass("Shirt")
    if Shirt and Mw[Shirt.ShirtTemplate] then
        return Mw[Shirt.ShirtTemplate]
    end
    return nil
end
function fns.fn35()
    if Nf.phase2Heartbeat then
        Nf.phase2Heartbeat:Disconnect()
        Nf.phase2Heartbeat = nil
    end
end
function fns.fn38()
    local Vy = NU()
    if not Vy then
        return false
    elseif Vy.Visible then
        local Character = LocalPlayer.Character
        local VA = select(1, Oh(Vy))
        if VA ~= nil and VA <= 0 then
            NE()
            return false
        end
        local VA_1 = Character and Character:GetAttribute("Minigame") ~= true and Character:GetAttribute("Fishing") ~= true
        if VA_1 then
            NE()
            return false
        end
        return true
    else
        local TrashCan = Vy:FindFirstChild("TrashCan")
        local Vy_1 = TrashCan and #TrashCan:GetChildren() > 0
        if Vy_1 then
            return true
        end
        return false
    end
end
function fns.fn50(q0)
    if type(q0) ~= "table" then
        return nil
    end
    for i, v in ipairs(q0) do
        if type(v) == "table" then
            local ack = v[1] or ""
            local acl = tostring(ack)
            local ack_1 = v[2] or ""
            local acm = tostring(ack_1)
            local ack_2 = string.lower(acl .. " " .. acm)
            local acl_1 = acm ~= "Close"
            if acl_1 then
                local acn = string.find(ack_2, "claim", 1, true) or string.find(ack_2, "complete", 1, true) or string.find(ack_2, "finish", 1, true) or string.find(ack_2, "reward", 1, true) or string.find(ack_2, "done", 1, true)
                acl_1 = acn
            end
            if acl_1 then
                return i, acm
            end
        end
    end
    return nil
end
function fns.fn71(cg)
    return (tostring(cg):gsub("(%a)([%w']*)", function(ci, cj)
        return string.upper(ci) .. string.lower(cj)
    end))
end
function fns.onCopyJoinScript_JobID()
    local aeh = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, N2)
    if setclipboard then
        setclipboard(aeh)
    elseif toclipboard then
        toclipboard(aeh)
    end
    Mr:Notify("Copied join script to clipboard")
end
function fns.fn104()
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    local Ve = MainGui and MainGui:FindFirstChild("Fishing")
    return Ve
end
function fns.fn111(ay)
    local Rt = Toggles[ay]
    return Rt and Rt.Value == true
end
function fns.fn117()
    local Character = LocalPlayer.Character
    local RM = Character and Character:FindFirstChild("HumanoidRootPart")
    return RM
end
function fns.worker12()
    while not Mr.Unloaded do
        if MC("AutoSecretBossHunt") then
            pcall(Mu)
        elseif Nf.eventIsle then
            MU()
            Nf.eventIsle = nil
            Nf.lastSecretBossHunt = nil
        end
        task.wait(2)
    end
end
function fns.fn125(e1)
    local TU = Nk()
    if not TU then
        return false
    end
    local FishingRodInventory = TU:FindFirstChild("FishingRodInventory")
    local TU_1 = FishingRodInventory and FishingRodInventory:FindFirstChild(e1)
    local TV_1 = TU_1
    if TU_1 then
        TU_1 = TV_1:FindFirstChild("Owned")
    end
    local TV_2 = TU_1
    if TU_1 then
        TU_1 = TV_2.Value == true
    end
    return TU_1
end
function fns.worker4()
    while not Mr.Unloaded do
        task.wait(4)
        local agV = MC("WebhookEnabled") and MC("WebhookMerchant")
        if agV then
            for i, v in ipairs({ "Maoshan", "Taoist" }) do
                local agV_1 = O0:FindFirstChild(v, true)
                local agW = agV_1 and agV_1:IsA("Model")
                if agW then
                    if not fns.akR_29[v] then
                        fns.akR_29[v] = true
                        pcall(N1, v)
                    end
                else
                    fns.akR_29[v] = nil
                end
            end
        end
    end
end
function fns.fn154()
    local acJ = OF()
    if acJ then
        if N4(acJ) then
            Pc("claim")
        end
        return
    end
    local acJ_1 = ML() or Pi()
    if acJ_1 then
        return
    end
    local acJ_2 = Nk()
    local acK = acJ_2 and acJ_2:FindFirstChild("Level")
    local acJ_3 = acK
    if acK then
        acK = acJ_3:FindFirstChild("Level")
    end
    local acJ_4 = acK
    if acK then
        acK = acJ_4:IsA("NumberValue")
    end
    if acK then
        acK = acJ_4.Value < 100
    end
    if acK then
        return
    end
    Pc("accept")
end
function fns.fn164()
    for k in pairs(MF) do
        MF[k] = nil
    end
    table.clear(Oi)
    local NPC = O0:FindFirstChild("NPC")
    if not NPC then
        return Oi
    end
    local SJ = { "Function", "BuyBait", "BuyFishingRod", "SellFish", "LearnSkill", "Boss", "God", "Spirit" }
    for i, v in ipairs(SJ) do
        local SJ_1 = NPC:FindFirstChild(v)
        if SJ_1 then
            local SK_1 = v == "Spirit"
            local SL = SJ_1:IsA("Model") and SK_1
            if SL then
                local SK_2 = O5(SJ_1)
                N3("Spirit - Special NPC", SK_2)
            else
                for i, child in ipairs(SJ_1:GetChildren()) do
                    if child:IsA("Model") then
                        local SJ_2 = O5(child)
                        local SK_3 = OH(child)
                        local SL_1 = SK_3 or v .. " - " .. child.Name
                        N3(SL_1, SJ_2)
                    end
                end
            end
        end
    end
    for i, v in ipairs({ "Maoshan", "Taoist" }) do
        local SI_1 = O0:FindFirstChild(v, true)
        local SJ_3 = SI_1 and SI_1:IsA("Model")
        if SJ_3 then
            local SJ_4 = OH(SI_1) or N9[v]
            N3(SJ_4, O5(SI_1))
        end
    end
    table.sort(Oi)
    return Oi
end
function fns.fn184()
    local T5 = N8()
    local T6
    for i, v in ipairs(OW) do
        local Cash = v.Cash
        local T8 = type(Cash) == "number" and Cash > 0 and Cash <= T5 and not NK(v.Name)
        if T8 then
            T6 = v
            break
        end
    end
    return T6
end
function fns.worker5()
    while not Mr.Unloaded do
        if M5() then
            pcall(function()
                NW()
                M0()
            end)
        end
        task.wait(0.5)
    end
end
function fns.fn222()
    local ab_ = Nk()
    local ab0 = ab_ and ab_:FindFirstChild("TicketQuestCooldown")
    if not ab0 then
        return false
    end
    return ab0.Value > os.time()
end
function fns.fn235()
    local abG = MK()
    local abH = abG and abG:FindFirstChild("HumanoidRootPart")
    local abH_1 = fns.akR_16()
    if not abH or not abH_1 then
        return false
    end
    abH_1.CFrame = abH.CFrame * CFrame.new(0, 0, 4)
    return true
end
function fns.onCopyUSDTAddress()
    fns.akR_31(Ms.USDT, "Copied USDT address")
end
function fns.fn247(s3)
    local Spawnpoint = O0:FindFirstChild("Spawnpoint")
    local adA = Spawnpoint and Spawnpoint:FindFirstChild(s3)
    local adA_1 = fns.akR_16()
    local adB = not adA or not adA_1 or not adA:IsA("BasePart")
    if adB then
        return false
    end
    adA_1.CFrame = adA.CFrame + Vector3.new(0, 4, 0)
    return true
end
function fns.fn257()
    return Data:FindFirstChild(tostring(LocalPlayer.UserId))
end
function fns.fn258(r6)
    local acP = tostring(r6):gsub("%s*%d+%s*$", ""):match("^%s*(.-)%s*$")
    if not acP or acP == "" then
        return nil
    end
    local NPC = O0:FindFirstChild("NPC")
    if not NPC then
        return nil
    end
    for i, child in ipairs(NPC:GetChildren()) do
        local acR_1 = child:FindFirstChild(acP)
        local acS = acR_1 and acR_1:IsA("Model")
        if acS then
            return acR_1
        end
    end
    for i, descendant in ipairs(NPC:GetDescendants()) do
        local acQ_2 = descendant:IsA("Model") and descendant.Name == acP
        if acQ_2 then
            return descendant
        end
    end
    return nil
end
function fns.worker17()
    while not Mr.Unloaded do
        if MC("AutoMainQuestTurnIn") then
            pcall(Nf.turnInMainQuests)
        end
        task.wait(4)
    end
end
function fns.onJumpRequest()
    if Mr.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local ahL_1 = fns.akR_4()
        if ahL_1 then
            ahL_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onTeleportPulau()
    local aeG = N6(Od.IslandTeleport.Value, Nh)
    if N0(aeG) then
        Mr:Notify("Teleported to " .. tostring(aeG))
    else
        Mr:Notify("Could not teleport")
    end
end
function fns.fn361()
    local aed_1
    local aec_1
    if identifyexecutor then
        aed_1, aec_1 = identifyexecutor()
        local aee = aed_1 ~= ""
        local aef = type(aed_1) == "string" and aee
        if aef then
            local aee_1 = type(aec_1) == "string" and aec_1 ~= "" and aed_1 .. " " .. aec_1
            Os = aee_1 or aed_1
        end
    end
end
function fns.worker14()
    while not Mr.Unloaded do
        if MC("AutoSkill") then
            pcall(fns.akR_45)
        end
        task.wait(0.5)
    end
end
function fns.fn485()
    local VG = Nk()
    local VH = VG and VG:FindFirstChild("Hotbar")
    if not VH then
        return nil
    end
    for i, child in ipairs(VH:GetChildren()) do
        local ValueName = child:FindFirstChild("ValueName")
        if ValueName and ValueName.Value == "Fishing rod" then
            return tonumber(child.Name)
        end
    end
    return nil
end
function fns.fn487()
    local RR = Nk()
    if not RR then
        return 0
    end
    local RS = 0
    local Hotbar = RR:FindFirstChild("Hotbar")
    if Hotbar then
        for i, child in ipairs(Hotbar:GetChildren()) do
            local Quantity = child:FindFirstChild("Quantity")
            if Quantity then
                RS += Quantity.Value
            end
        end
    end
    return RS
end
function fns.fn494()
    local Ux = N8()
    local Uy
    for i, v in ipairs(Pg) do
        local Uz = v.Price <= Ux and not Ne(v.Name)
        if Uz then
            Uy = v
            break
        end
    end
    return Uy
end
function fns.fn531()
    local Uo = N8()
    local Up
    for i, v in ipairs(M4) do
        if v.Price <= Uo then
            Up = v
            break
        end
    end
    return Up
end
function fns.fn560()
    local UR = Nk()
    local US = UR and UR:FindFirstChild("FishCaught")
    local UR_1 = US
    if US then
        US = UR_1.Value
    end
    return US or 0
end
function fns.fn578(v0)
    local ae__1
    local aeY = v0 or ""
    local aeY_2
    local aeZ = MH:FindFirstChild(tostring(aeY))
    local aeY_1 = not aeZ or not aeZ:IsA("ModuleScript")
    if aeY_1 then
        return nil
    end
    aeY_2, ae__1 = pcall(require, aeZ)
    local aeZ_1 = aeY_2 and type(ae__1) == "table"
    if aeZ_1 then
        return ae__1
    end
    return nil
end
function fns.fn582()
    local NPC = O0:FindFirstChild("NPC")
    local UV = NPC and NPC:FindFirstChild("Boss")
    local UU_1 = UV
    if UV then
        UV = UU_1:FindFirstChild("Enzo")
    end
    local UU_2 = UV
    if UV then
        UV = UU_2:IsA("Model")
    end
    if UV then
        return UU_2
    end
    return nil
end
function fns.onCopyBitcoinAddress()
    fns.akR_31(Ms.BTC, "Copied Bitcoin address")
end
function fns.fn607()
    if Nf.rhythmHeartbeat then
        Nf.rhythmHeartbeat:Disconnect()
        Nf.rhythmHeartbeat = nil
    end
    Nf.rhythmLaneTargets = nil
end
function fns.fn614()
    local Xd = NU()
    local Xe = Xd and Xd:FindFirstChild("Rhythm")
    if not Xe or Xe.Visible ~= true then
        return false
    end
    local Xe_2 = Nf.rhythmLaneTargets
    local Xo = if Xe_2 then 1 else 0
    local Xm = 2258 * Xo + 3832 * (1 - Xo)
    local Xn = 1773 * Xo + 349 * (1 - Xo)
    if not ((Xm * 3508 + Xn * 2927 + Xm * Xn) % 16777213 == 336856) then
        Xe_2 = fns.akR_33()
    end
    local Xf = Xe_2
    if not Xf then
        return true
    end
    for i, v in ipairs(Nd) do
        local Xe_3 = Xe:FindFirstChild("Progression" .. v)
        local Xg = Xe_3 and Xe_3:FindFirstChild("NoteFrame")
        if Xg then
            local Xg_1 = Xf[v] or 0.85
            for i, child in ipairs(Xg:GetChildren()) do
                local Xe_5 = child:IsA("GuiObject") and child.Visible
                if Xe_5 then
                    local Xe_6 = math.abs(child.Position.Y.Scale - Xg_1)
                    if Xe_6 <= 0.18 then
                        MR(Oy[v])
                        break
                    end
                end
            end
        end
    end
    return true
end
function fns.fn640(wT)
    local afw = Mr.Unloaded or not MC("WebhookEnabled")
    if afw then
        return
    end
    local afw_1 = MP(wT)
    if not Nw(wT, afw_1) then
        return
    end
    local afx = afw_1 and tonumber(afw_1.Cash)
    local afy = afx or 0
    local afx_1 = "Fish"
    local afy_1 = O4[wT]
    local afI = if afy_1 then 1 else 0
    local afG = 745 * afI + 1044 * (1 - afI)
    local afH = 1342 * afI + 632 * (1 - afI)
    if not ((afG * 2556 + afH * 655 + afG * afH) % 16777213 == 3783020) then
        afy_1 = afw_1 and afw_1.SpecialBoss
    end
    if afy_1 then
        afx_1 = "Secret Boss"
    else
        if afw_1 and afw_1.Boss then
            afx_1 = "Boss"
        end
    end
    local afy_3 = afw_1 and afw_1.Color
    local afw_2 = M1(afy_3)
    local afA_2 = { name = "Fish", value = tostring(wT), inline = true }
    local afB = { name = "Type", value = afx_1, inline = true }
    local afC = { name = "Cash", value = tostring(afy), inline = true }
    local afD = { name = "Player", value = LocalPlayer.Name, inline = true }
    local afE = O0:GetAttribute("Weather") or "Unknown"
    Pl({
        title = "Fish Caught",
        color = afw_2,
        fields = { afA_2, afB, afC, afD, { name = "Weather", value = tostring(afE), inline = true } },
        footer = { text = "Heavyweight Fishing | Ouroboros Hub" }
    }, afx_1 ~= "Fish")
end
function fns.fn672()
    return fns.akR_48() >= Nl()
end
function fns.fn674(aD)
    local Rw = Od[aD]
    local Rx = Rw and Rw.Value
    if type(Rx) ~= "table" then
        return {}
    end
    local Rx_1 = {}
    for k, v in pairs(Rx) do
        if v == true then
            Rx_1[k] = true
        else
            local Rw_2 = type(k) == "number" and type(v) == "string"
            if Rw_2 then
                Rx_1[v] = true
            end
        end
    end
    return Rx_1
end
function fns.fn675()
    local adq = Nk()
    if not adq then
        return
    end
    local Code = adq:FindFirstChild("Code")
    if not Code then
        return
    end
    for i, child in ipairs(Code:GetChildren()) do
        local adq_1 = child:IsA("BoolValue") and child.Value == false
        if adq_1 then
            MQ.RedeemCode:FireServer(child.Name)
            task.wait(0.2)
        end
    end
end
function fns.worker3()
    while not Mr.Unloaded do
        Label4:SetText(Nr("Status", Nf.getFishingStatus(), fns.akR_40))
        M7:SetText(Nr("Fish caught", tostring(Nf.getFishCaught()), NQ))
        Label3:SetText(Nr("Fish sold", tostring(Nf.fishSold), NQ))
        local aep = Nf.eventIsle or "None"
        Label2:SetText(Nr("Active secret boss", aep, Pf))
        task.wait(1)
    end
end
function fns.onCopyLitecoinAddress()
    fns.akR_31(Ms.LTC, "Copied Litecoin address")
end
function fns.worker()
    while Mr and not Mr.Unloaded do
        fns.akR_38()
        task.wait(1)
    end
end
function fns.worker11()
    while not Mr.Unloaded do
        if MC("AutoUseBait") then
            pcall(fns.akR_52)
        end
        task.wait(1.5)
    end
end
function fns.worker2()
    local aen_1
    while true do
        task.wait(1)
        if Mr.Unloaded then
            break
        end
        local aem = math.floor(os.clock() - NG)
        if aem < 60 then
            aen_1 = aem .. "s"
        elseif aem < 3600 then
            aen_1 = string.format("%dm %ds", aem // 60, aem % 60)
        else
            aen_1 = string.format("%dh %dm", aem // 3600, aem % 3600 // 60)
        end
        Label:SetText(Nr("Session time", aen_1, Pf))
    end
end
function fns.fn765()
    local Ye = Nk()
    local Yf = Ye and Ye:FindFirstChild("Inventory")
    if not Yf then
        return
    end
    for i, child in ipairs(Yf:GetChildren()) do
        local Ye_2 = Ph(child.Name)
        local Yf_1 = O4[Ye_2] and not O3(child.Name)
        if Yf_1 then
            MQ.FavoriteItem:FireServer(child.Name)
            task.wait(0.05)
        end
    end
end
function fns.fn777()
    local abO = fns.akR_53()
    local abP = abO and abO:FindFirstChild(fns.akR_60)
    return abP
end
function fns.worker8()
    while not Mr.Unloaded do
        if MC("AutoFavoriteSecretBoss") then
            pcall(OX)
        end
        if MC("AutoFavoriteByName") then
            pcall(Nf.favoriteFishByName)
        end
        task.wait(1.5)
    end
end
function fns.fn797(fb)
    local TX = Nk()
    if not TX then
        return false
    end
    local Skill = TX:FindFirstChild("Skill")
    local TX_1 = Skill and Skill:FindFirstChild(fb)
    local TY_1 = TX_1
    if TX_1 then
        TX_1 = TY_1:FindFirstChild("Owned")
    end
    local TY_2 = TX_1
    if TX_1 then
        TX_1 = TY_2.Value == true
    end
    return TX_1
end
function fns.fn806(lg)
    return string.find(tostring(lg), "| Favorite", 1, true) ~= nil
end
function fns.worker15()
    while not Mr.Unloaded do
        if MC("AutoQuest") then
            pcall(M6)
        end
        task.wait(2)
    end
end
function fns.fn810(gT)
    local Vq_1
    local Vo = gT and gT:FindFirstChild("ProgressionBar")
    local Vp = Vo
    local Vp_2
    if Vo then
        Vo = Vp:FindFirstChild("HP")
    end
    local Vp_1 = Vo
    local Vo_1 = not Vp_1
    local Vu = if Vo_1 then 1 else 0
    local Vs = 2024 * Vu + 956 * (1 - Vu)
    local Vt = 968 * Vu + 812 * (1 - Vu)
    if not ((Vs * 629 + Vt * 2197 + Vs * Vt) % 16777213 == 5359024) then
        Vo_1 = not Vp_1:IsA("TextLabel")
    end
    if Vo_1 then
        return nil, nil
    end
    local Vo_2 = tostring(Vp_1.Text):gsub("<.->", "")
    Vp_2, Vq_1 = string.match(Vo_2, "(%d+)%s*/%s*(%d+)")
    return tonumber(Vp_2), tonumber(Vq_1)
end
function fns.fn820(j2, j3)
    if j2 then
        Nf.minigameSession = j2
    end
    if j3 then
        Nf.minigameNeed = j3
    end
    if Nf.minigameActive then
        return
    end
    Nf.minigameActive = true
    Nf.lastProgressFire = 0
    Nf.lastCompleteFire = 0
    Nf.lastDamageSeen = -1
    Nf.lastRemainingSeen = -1
    Nf.stuckSince = os.clock()
    Nf.minigameHeartbeat = RunService.Heartbeat:Connect(function()
        local XH_1
        local XE = Mr.Unloaded or not M5()
        local XE_2
        if XE then
            fns.akR_19()
            return
        end
        local Character = LocalPlayer.Character
        local XF = NU()
        if not Character then
            return
        end
        local XG = Character:GetAttribute("Minigame") == true
        XH_1, XE_2 = Oh(XF)
        if XH_1 ~= nil and XH_1 <= 0 then
            if not Nf.skillBusy then
                NI()
                fns.akR_19()
                Nf.castLockUntil = os.clock() + 0.6
            end
            return
        end
        if Nf.skillBusy then
            if XF then
                My(XF)
            end
            return
        end
        local XI_1 = not XG
        if XI_1 ~= false then
            XI_1 = XF
        end
        if XI_1 then
            XI_1 = XF.Visible
        end
        if XI_1 then
            XI_1 = os.clock() - Nf.stuckSince >= 1.25
        end
        if XI_1 then
            NI()
            fns.akR_19()
            Nf.castLockUntil = os.clock() + 0.6
            return
        end
        local XI_2 = not XG
        if XI_2 ~= false then
            XI_2 = not XF or not XF.Visible
        end
        if XI_2 then
            fns.akR_19()
            return
        end
        if XF then
            My(XF)
        end
        local attr = LocalPlayer:GetAttribute("FishID")
        local Fishes = O0:FindFirstChild("Fishes")
        local XJ_1 = Fishes and attr and Fishes:FindFirstChild(attr)
        local XJ_2 = XJ_1 and XJ_1.Value
        local XQ = if XJ_2 then 1 else 0
        local XO = 3779 * XQ + 2001 * (1 - XQ)
        local XP = 3966 * XQ + 1420 * (1 - XQ)
        if not ((XO * 3442 + XP * 482 + XO * XP) % 16777213 == 13129231) then
            XJ_2 = 0
        end
        local XI_5 = XE_2
        local XK = XJ_2
        local XT = if XI_5 then 1 else 0
        local XR = 3479 * XT + 3286 * (1 - XT)
        local XS = 2397 * XT + 396 * (1 - XT)
        if not ((XR * 2010 + XS * 2929 + XR * XS) % 16777213 == 5575553) then
            XI_5 = Nf.minigameNeed
        end
        local XJ_3 = XI_5
        local XE_3 = XH_1 ~= nil and XE_2 ~= nil and XH_1 == XE_2
        local XI_8 = XK ~= Nf.lastDamageSeen
        if not XI_8 then
            XI_8 = XH_1 ~= nil and XH_1 ~= Nf.lastRemainingSeen
        end
        if XI_8 then
            Nf.lastDamageSeen = XK
            if XH_1 ~= nil then
                Nf.lastRemainingSeen = XH_1
            end
            Nf.stuckSince = os.clock()
        end
        local XE_4 = XE_3 and 0.03 or 0.08
        if os.clock() - Nf.lastProgressFire >= XE_4 then
            Nf.lastProgressFire = os.clock()
            pcall(function()
                MQ.UpdateFishProgression:FireServer()
            end)
        end
        local XE_5 = false
        if XH_1 ~= nil and XH_1 <= 0 then
            XE_5 = true
        end
        if XJ_1 and XJ_3 and XK >= XJ_3 then
            XE_5 = true
        end
        local XG_4 = XF and XF.Visible and os.clock() - Nf.stuckSince >= 1.5
        if XG_4 then
            XE_5 = true
        end
        if XE_5 then
            NI()
            if XH_1 ~= nil and XH_1 <= 0 then
                fns.akR_19()
                Nf.castLockUntil = os.clock() + 0.6
            end
        end
    end)
end
function fns.onSendTestMessage()
    local af7 = Od.WebhookUrl
    if af7 then
        local af8_1 = Od.WebhookUrl.Value or ""
        af7 = tostring(af8_1)
    end
    if (af7 or "") == "" then
        Mr:Notify("Set a webhook URL first")
        return
    end
    if Pj({
        username = "Ouroboros Hub",
        content = Oe(),
        embeds = {
            {
                title = "Webhook Connected",
                description = "Heavyweight Fishing webhook is working.",
                color = 5793266,
                fields = {
                    { name = "Player", value = LocalPlayer.Name, inline = true },
                    { name = "Place", value = tostring(game.PlaceId), inline = true }
                },
                footer = { text = "Heavyweight Fishing | Ouroboros Hub" }
            }
        }
    }) then
        Mr:Notify("Webhook test sent")
    else
        Mr:Notify("Webhook test failed")
    end
end
function fns.fn858(sh)
    local ac5 = Nf.getQuestNpcModel(sh)
    local ac6 = ac5 and O5(ac5)
    local ac6_1 = fns.akR_16()
    if not ac6 or not ac6_1 then
        return false
    end
    ac6_1.CFrame = ac6.CFrame * CFrame.new(0, 0, 4)
    return true
end
function fns.onTeleportNPC()
    local aeR = Od.NpcTeleport and Od.NpcTeleport.Value
    local aeR_1 = type(aeR) == "string" and not MF[aeR]
    if aeR_1 then
        NH()
        if Od.NpcTeleport then
            pcall(function()
                Od.NpcTeleport:SetValues(Oi)
            end)
        end
    end
    local aeW = if fns.akR_50(aeR) then 1 else 0
    if aeW == 1 then
        Mr:Notify("Teleported to " .. tostring(aeR))
    else
        Mr:Notify("Could not teleport to NPC")
    end
end
function fns.onOnClientEvent5(zl)
    if Mr.Unloaded then
        return
    end
    pcall(Pe, zl)
end
function fns.fn908(qV, qW)
    if type(qV) ~= "table" then
        return nil
    end
    for i, v in ipairs(qV) do
        local acb = type(v) == "table" and v[2] == qW
        if acb then
            return i, v[2]
        end
    end
    return nil
end
function fns.onOnClientEvent()
    M3()
end
function fns.onCopyEthereumAddress()
    fns.akR_31(Ms.ETH, "Copied Ethereum address")
end
function fns.fn922()
    local Y1 = Od.CraftBaitName and Od.CraftBaitName.Value
    local Y1_1 = type(Y1) ~= "string" or Y1 == "" or not OO[Y1]
    if Y1_1 then
        return
    end
    Nf.unlockCraftIngredients(Y1)
    MQ.CraftBait:FireServer(Y1, 1)
end
function fns.fn945(eI, eJ)
    if eI.level == eJ.level then
        return eI.name < eJ.name
    end
    return eI.level < eJ.level
end
function fns.onRedeemAllCodes()
    Or()
    Mr:Notify("Redeemed available codes")
end
function fns.onOnClientEvent3(yt, yu, yv)
    local agu = Mr.Unloaded or not M5()
    if agu then
        return
    end
    local agu_1 = 5
    if type(yt) == "table" then
        local agv = tonumber(yt.Time) or agu_1
        agu_1 = agv
    end
    Og()
    MD(yv, agu_1)
end
function fns.onSellAllFish()
    MW()
    Mr:Notify("Sold all fish")
end
function fns.worker9()
    while not Mr.Unloaded do
        if MC("AutoDailyReward") then
            pcall(NX)
        end
        task.wait(5)
    end
end
function fns.fn992()
    if not Nf.skillSequenceReady then
        return
    end
    Mr:Notify("Skill sequence set: " .. table.concat(OS(), ", "))
end
function fns.fn996(nu)
    if nu == "Z" then
        return true
    end
    local ZH = Nk()
    local ZI = ZH and ZH:FindFirstChild("SkillSlot")
    local ZH_1 = ZI
    if ZI then
        ZI = ZH_1:FindFirstChild(nu)
    end
    local ZH_2 = ZI
    if ZI then
        ZI = ZH_2:IsA("BoolValue")
    end
    if ZI then
        ZI = ZH_2.Value == true
    end
    return ZI
end
function fns.fn1000(w4)
    local afJ = Mr.Unloaded or not MC("WebhookEnabled") or not MC("WebhookMerchant")
    if afJ then
        return
    end
    local afJ_1 = N9[w4]
    local afO = if afJ_1 then 1 else 0
    local afM = 788 * afO + 4037 * (1 - afO)
    local afN = 3643 * afO + 2546 * (1 - afO)
    if not ((afM * 3232 + afN * 1088 + afM * afN) % 16777213 == 9381084) then
        afJ_1 = w4
    end
    local afK = afJ_1
    Pl({
        title = "Merchant Spawned",
        color = 15844367,
        fields = {
            { name = "Merchant", value = tostring(afK), inline = true },
            { name = "Player", value = LocalPlayer.Name, inline = true }
        },
        footer = { text = "Heavyweight Fishing | Ouroboros Hub" }
    }, true)
end
function fns.onRenderStepped(A4)
    if Mr.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local ahN_1 = fns.akR_4()
        if ahN_1 then
            ahN_1.WalkSpeed = Od.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local ahN_3 = fns.akR_16()
        local ahO = fns.akR_4()
        if ahN_3 and ahO then
            ahO.PlatformStand = true
            local ahO_1 = Vector3.zero
            local ahW = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if ahW == 1 then
                ahO_1 = ahO_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                ahO_1 = ahO_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                ahO_1 = ahO_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                ahO_1 = ahO_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                ahO_1 = ahO_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                ahO_1 = ahO_1 - Vector3.new(0, 1, 0)
            end
            ahN_3.Velocity = Vector3.zero
            if ahO_1.Magnitude > 0 then
                ahN_3.CFrame = ahN_3.CFrame + ahO_1.Unit * Od.FlySpeed.Value * A4
            end
        end
    end
end
function fns.fn1027()
    if Toggles.AutoCast.Value then
        pcall(NW)
    else
        fns.akR_19()
    end
end
function fns.fn1037(ar, as)
    if setclipboard then
        setclipboard(ar)
    elseif toclipboard then
        toclipboard(ar)
    end
    Mr:Notify(as)
end
function fns.fn1054()
    local ab2 = MK()
    if not ab2 then
        return false
    end
    local ab3
    for i, descendant in ipairs(ab2:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            ab3 = descendant
            break
        end
    end
    if not ab3 then
        return false
    end
    if fireproximityprompt then
        fireproximityprompt(ab3)
    else
        ab3:InputHoldBegin()
        task.wait(0.15)
        ab3:InputHoldEnd()
    end
    return true
end
function fns.fn1057(am, an, ao)
    return string.format("<b>%s</b> %s %s", am, O1("-", "#5a6070"), O1(an, ao))
end
function fns.fn1065(bU, bV)
    if bU.Price == bV.Price then
        return bU.Score > bV.Score
    end
    return bU.Price > bV.Price
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(N5)
    elseif toclipboard then
        toclipboard(N5)
    end
    Mr:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn1080(nD)
    local ZK = Nk()
    local ZL = ZK and ZK:FindFirstChild("FishingRod")
    local ZM = ZK
    if ZM then
        ZM = ZK:FindFirstChild("FishingRodInventory")
    end
    local ZK_1 = ZM
    if not ZL or not ZK_1 then
        return nil
    end
    local ZL_2 = ZK_1:FindFirstChild(ZL.Value)
    local ZK_2 = ZL_2 and ZL_2:FindFirstChild("Skill")
    local ZL_3 = ZK_2
    if ZK_2 then
        ZK_2 = ZL_3:FindFirstChild(nD)
    end
    local ZL_4 = ZK_2
    if ZK_2 then
        ZK_2 = ZL_4:IsA("StringValue")
    end
    if ZK_2 then
        local Value = ZL_4.Value
        local ZL_5 = Value ~= ""
        local ZM_2 = type(Value) == "string" and ZL_5
        if ZM_2 then
            return Value
        end
        return nil
    end
    return nil
end
function fns.onChildAdded(Ad)
    if Ad.Name == "Inventory" then
        fns.akR_36(Ad)
    end
end
function fns.fn1084(wC, wD)
    local aft_8
    if not MC("WebhookFishCaught") then
        return false
    end
    local afs = O4[wC] == true
    if not afs then
        afs = wD and wD.SpecialBoss == true
    end
    local aft_2 = afs
    if not afs then
        afs = wD and wD.Boss == true
    end
    if MC("WebhookSecretBossOnly") then
        if not aft_2 then
            return false
        end
        if aft_8 then
            return false
        end
        return true
    end
    if afs then
        afs = not MC("WebhookBossFish")
    end
    if afs then
        return false
    end
    local afs_4 = Od.WebhookMinCash and tonumber(Od.WebhookMinCash.Value)
    local aft_6 = afs_4 or 0
    local afs_5 = wD
    if afs_5 then
        afs_5 = tonumber(wD.Cash)
    end
    aft_8 = aft_6 > 0 and (afs_5 or 0) < aft_6
    if aft_8 then
        return false
    end
    return true
end
function fns.fn1102(lc)
    local Yb = lc or ""
    local Yc = tostring(Yb)
    local Yb_1 = string.split(Yc, "|")[1] or Yc
    local Yb_2 = Yb_1:match("^%s*(.-)%s*$") or Yb_1
    return Yb_2
end
function fns.onCopyPayPalLink()
    fns.akR_31(Ms.PayPal, "Copied PayPal link")
end
function fns.fn1115()
    local Yn = NR("FavoriteFishNames")
    if not next(Yn) then
        return
    end
    local Yo = Nk()
    local Yp = Yo and Yo:FindFirstChild("Inventory")
    if not Yp then
        return
    end
    for i, child in ipairs(Yp:GetChildren()) do
        local Yo_2 = Yn[Ph(child.Name)] and not O3(child.Name)
        if Yo_2 then
            MQ.FavoriteItem:FireServer(child.Name)
            task.wait(0.05)
        end
    end
end
function fns.fn1126(dM)
    local S6 = O0:Raycast(dM + Vector3.new(0, 80, 0), Vector3.new(0, -200, 0), fns.akR_24)
    local S7 = S6 and S6.Instance.Name == "Water" and S6.Instance:IsDescendantOf(Ocean)
    return S7 and S6 or nil
end
function fns.fn1132(h8)
    local Wf = h8 and h8:FindFirstChild("BarFrame")
    local Wg = Wf
    if Wf then
        Wf = Wg:FindFirstChild("Bar")
    end
    local Wg_1 = Wf
    if not Wg_1 then
        return
    end
    local Wf_1 = UDim2.new(0.5, 0, Wg_1.Position.Y.Scale, Wg_1.Position.Y.Offset)
    Wg_1:TweenPosition(Wf_1, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0, true)
    Wg_1.Position = Wf_1
end
function fns.fn1135()
    if not Toggles.Fly.Value then
        local ah_ = fns.akR_4()
        if ah_ then
            ah_.PlatformStand = false
        end
    end
end
function fns.fn1153()
    Nf.minigameActive = false
    Nf.minigameSession = nil
    Nf.lastDamageSeen = -1
    Nf.lastRemainingSeen = -1
    Nf.stuckSince = 0
    if Nf.minigameHeartbeat then
        Nf.minigameHeartbeat:Disconnect()
        Nf.minigameHeartbeat = nil
    end
end
function fns.fn1162()
    fns.akR_31(fns.akR_8, "Copied Discord invite to clipboard")
end
function fns.fn1188()
    return fns.CoreGui
end
function fns.fn1212()
    local Ug
    for i, v in ipairs(OW) do
        if NK(v.Name) then
            Ug = v
            break
        end
    end
    return Ug
end
function fns.fn1213()
    local Wr = NU()
    local Ws = Wr and Wr:FindFirstChild("BossFightBar")
    return Ws
end
function fns.fn1214(tc)
    local adD = tc == ""
    local adE = type(tc) ~= "string"
    local adJ = if adE then 1 else 0
    local adH = 2113 * adJ + 3982 * (1 - adJ)
    local adI = 3170 * adJ + 3566 * (1 - adJ)
    if not ((adH * 2977 + adI * 314 + adH * adI) % 16777213 == 13983991) then
        adE = adD
    end
    if adE then
        return
    end
    local adD_1 = nil
    for i, v in ipairs(OQ) do
        if fns.akR_43[v] == tc or v == tc then
            adD_1 = v
            break
        end
    end
    if not adD_1 then
        adD_1 = Ol(tc)
        fns.akR_43[adD_1] = tc
        fns.akR_43[tc] = tc
    end
    if Od.FishAnywhereZone then
        Od.FishAnywhereZone:SetValue(adD_1)
    end
end
function fns.fn1231(eW, eX)
    local TO = eW == ""
    local TP = type(eW) ~= "string" or TO
    if TP then
        return nil
    elseif eX[eW] then
        return eX[eW]
    else
        local TO_1 = string.match(eW, "^(.-)%s*|")
        if TO_1 then
            local TO_2 = TO_1:match("^%s*(.-)%s*$")
            if eX[TO_2] or fns.akR_9[TO_2] then
                return TO_2
            end
            return eW
        end
        return eW
    end
end
function fns.onSaveFarmPosition()
    local aes = fns.akR_16()
    if not aes then
        Mr:Notify("No character root found")
        return
    end
    local CFrame = aes.CFrame
    Nf.savedFarmCFrame = CFrame
    local Position = CFrame.Position
    Mr:Notify(string.format("Saved farm position\nX: %.1f  Y: %.1f  Z: %.1f", Position.X, Position.Y, Position.Z), 6)
end
function fns.fn1253()
    if Nf.rhythmHeartbeat then
        return
    end
    fns.akR_33()
    Nf.rhythmHeartbeat = RunService.Heartbeat:Connect(function()
        local XB = Mr.Unloaded or not M5()
        if XB then
            M3()
            return
        end
        if not fns.akR_63() then
            M3()
        end
    end)
end
function fns.fn1271(qH)
    return ND(qH)
end
function fns.fn1290()
    local XY = Od.SummonBanner and Od.SummonBanner.Value
    local XY_1 = XY == ""
    local X_ = type(XY) ~= "string" or XY_1
    if X_ then
        return
    end
    local XY_3 = (Od.SummonMode and Od.SummonMode.Value) == "x10 Summon"
    local X__2 = Nk()
    local X0 = X__2 and X__2:FindFirstChild("Crystal")
    if X0 and X0.Value < (XY_3 and 50 or 5) then
        return
    end
    MQ.Gacha:FireServer(XY_3, XY)
end
function fns.fn1321(xb)
    local afX = xb and xb:FindFirstChild("HumanoidRootPart")
    local afY = afX
    if afX then
        afX = afY:FindFirstChild("EquippedTitle")
    end
    local afY_1 = afX
    if afX then
        afX = afY_1:FindFirstChild("PlayerName")
    end
    local afY_2 = afX
    if afX then
        afX = afY_2:IsA("TextLabel")
    end
    if afX then
        return afY_2
    end
    return nil
end
function fns.onCopySolanaAddress()
    fns.akR_31(Ms.SOL, "Copied Solana address")
end
function fns.fn1406()
    local Character = LocalPlayer.Character
    if Character then
        local Vc = if Character:GetAttribute("Phase2") == true then 1 else 0
        if Vc == 1 then
            return "Boss Phase 2"
        elseif Character:GetAttribute("Minigame") == true then
            return "Reeling"
        elseif Character:GetAttribute("Fishing") == true then
            return "Casting"
        elseif M5() then
            return "Waiting"
        else
            return "Idle"
        end
    elseif M5() then
        return "Waiting"
    else
        return "Idle"
    end
end
function fns.fn1430()
    local W_ = NU()
    local W0 = W_ and W_:FindFirstChild("Rhythm")
    if not W0 then
        return nil
    end
    local W0_1 = {}
    for i, v in ipairs(Nd) do
        local W1 = W0:FindFirstChild("Progression" .. v)
        local W2 = W1 and W1:FindFirstChild("BarFrame")
        local W1_1 = W2
        if W2 then
            W2 = W1_1.Position.Y.Scale
        end
        local W1_2 = W2 or 0.85
        W0_1[v] = W1_2
    end
    Nf.rhythmLaneTargets = W0_1
    return W0_1
end
function fns.fn1460()
    local aan = NU()
    local aao = aan and aan:FindFirstChild("Rhythm")
    local aan_1 = aao
    if aao then
        aao = aan_1.Visible == true
    end
    return aao
end
function fns.onOnClientEvent2()
    local agA = Mr.Unloaded or not M5()
    if agA then
        return
    end
    task.defer(function()
        fns.akR_33()
        OT()
    end)
end
function fns.worker18()
    while not Mr.Unloaded do
        if MC("AutoBuyBestRod") then
            pcall(MG)
        end
        if MC("AutoBuyBestBait") then
            pcall(O8)
        end
        if MC("AutoBuyBestSkill") then
            pcall(OK)
        end
        if MC("AutoEquipBestSkill") then
            pcall(Ox)
        end
        if MC("AutoBuySelectedRod") then
            pcall(fns.akR_32)
        end
        if MC("AutoBuySelectedBait") then
            pcall(fns.akR_14)
        end
        task.wait(3)
    end
end
function fns.fn1518()
    local Wu = M9()
    if not Wu or not Wu.Visible then
        return false
    end
    local Bar = Wu:FindFirstChild("Bar")
    local Hitbox = Wu:FindFirstChild("Hitbox")
    local Wu_1 = not Hitbox
    local Wx = not Bar
    local WC = if Wx then 1 else 0
    local WA = 2126 * WC + 636 * (1 - WC)
    local WB = 3552 * WC + 2016 * (1 - WC)
    if not ((WA * 3486 + WB * 2705 + WA * WB) % 16777213 == 7793735) then
        Wx = Wu_1
    end
    if Wx then
        return false
    end
    local Wx_1 = Bar.Position.X.Scale + Bar.Size.X.Scale * (0.5 - Bar.AnchorPoint.X)
    local Scale = Hitbox.Size.X.Scale
    local Wv_2 = Hitbox.Position.X.Scale - Scale * Hitbox.AnchorPoint.X
    local Ww_1 = math.max(Scale * 0.35, 0.02)
    return Wx_1 >= Wv_2 - Ww_1 and Wx_1 <= Wv_2 + Scale + Ww_1
end
function fns.fn1519()
    local U5 = (MC("AutoCast"))
    if not U5 then
        local U6_1 = MC("AutoSecretBossHunt") and Nf.lastSecretBossHunt ~= nil
        U5 = U6_1
    end
    if not U5 then
        local U6_2 = MC("AutoEnzo") and fns.akR_61()
        U5 = U6_2
    end
    return U5
end
function fns.fn1538(vZ)
    if typeof(vZ) ~= "Color3" then
        return 5793266
    end
    return math.floor(vZ.R * 255) * 65536 + math.floor(vZ.G * 255) * 256 + math.floor(vZ.B * 255)
end
function fns.fn1544()
    NW()
    if not fns.akR_12() then
        return
    end
    Nf.castLockUntil = os.clock() + 1.5
    MQ.Fishing:FireServer(Mx())
end
function fns.fn1551(tT)
    local DiscordGroup = tT:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = fns.akR_41 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = fns.akR_41 })
end
function fns.fn1633(br)
    if not br then
        return 0
    end
    local Stats = br.Stats
    local Sb = 1
    local Sc = 0
    if type(Stats) == "table" then
        local Sd_1 = tonumber(Stats.Damage) or 0
        Sc = Sd_1
        local Sd_2 = tonumber(Stats.Duration) or 1
        Sb = Sd_2
    end
    local Sa_1 = tonumber(br.Price) or 0
    return Sa_1 * 1000 + Sc * Sb * 100
end
function fns.fn1652()
    fns.akR_20(Toggles.AntiGameplayPause.Value)
end
function fns.fn1675()
    local afl = if MC("WebhookPingEveryone") then 1 else 0
    if afl == 1 then
        return "@everyone"
    end
    local aff = Od.WebhookPingId
    if aff then
        local afg_1 = Od.WebhookPingId.Value
        local afl_1 = if afg_1 then 1 else 0
        local afi = 2676 * afl_1 + 1562 * (1 - afl_1)
        local afj = 2059 * afl_1 + 3471 * (1 - afl_1)
        if not ((afi * 3759 + afj * 3902 + afi * afj) % 16777213 == 6825973) then
            afg_1 = ""
        end
        aff = tostring(afg_1):gsub("%D", "")
    end
    local afg_2 = aff or ""
    if afg_2 ~= "" then
        return "<@" .. afg_2 .. ">"
    end
    return nil
end
function fns.fn1690(c1, c2)
    local SD = type(c1) ~= "string" or c1 == ""
    local SH = if SD then 1 else 0
    local SF = 2939 * SH + 1964 * (1 - SH)
    local SG = 1466 * SH + 2203 * (1 - SH)
    if not ((SF * 6 + SG * 1564 + SF * SG) % 16777213 == 6619032) then
        SD = not c2
    end
    if not SD then
        SD = not c2:IsA("BasePart")
    end
    if SD then
        return
    end
    if MF[c1] then
        return
    end
    MF[c1] = c2
    Oi[#Oi + 1] = c1
end
function fns.fn1701()
    local Y8 = Od.BuyBaitName and Od.BuyBaitName.Value
    local Y8_1 = Y8 == ""
    local Za = type(Y8) ~= "string" or Y8_1
    if Za then
        return
    end
    local Y8_2 = Od.BuyBaitQuantity
    if Y8_2 then
        local floor = math.floor
        local Zb = tonumber(Od.BuyBaitQuantity.Value) or 1
        Y8_2 = floor(Zb)
    end
    local Za_2 = Y8_2
    local Zf = if Za_2 then 1 else 0
    local Zd = 3063 * Zf + 981 * (1 - Zf)
    local Ze = 3863 * Zf + 1586 * (1 - Zf)
    if not ((Zd * 661 + Ze * 1302 + Zd * Ze) % 16777213 == 2109425) then
        Za_2 = 1
    end
    local Y8_3 = Za_2
    if Y8_3 < 1 then
        Y8_3 = 1
    end
    MQ.BuyBait:FireServer(Y8, Y8_3)
end
function fns.fn1740()
    local V6_8
    local V5_12, V5_15
    if Nf.eventIsle then
        local V5_1 = fns.akR_9[Nf.eventIsle]
        if V5_1 then
            return V5_1
        end
        local V5_2 = MC("LockFarmPosition") and Nf.savedFarmCFrame
        if V5_12 then
            return Nf.savedFarmCFrame
        elseif MC("FishAnywhere") then
            local V5_3 = Od.FishAnywhereZone and Od.FishAnywhereZone.Value
            local V5_4 = N6(V5_3, fns.akR_43)
            local V6_2 = V5_4 and fns.akR_9[V5_4]
            if V5_15 then
                return V6_2
            end
            local Character = LocalPlayer.Character
            local V6_3 = Character and Character:FindFirstChild("HumanoidRootPart")
            local V5_7 = V6_3
            if V6_8 then
                V6_3 = V5_7.CFrame
            end
            return V6_3 or nil
        else
            local Character = LocalPlayer.Character
            local V6_4 = Character and Character:FindFirstChild("HumanoidRootPart")
            local V5_10 = V6_4
            if V6_8 then
                V6_4 = V5_10.CFrame
            end
            return V6_4 or nil
        end
    else
        V5_12 = MC("LockFarmPosition") and Nf.savedFarmCFrame
        if V5_12 then
            return Nf.savedFarmCFrame
        elseif MC("FishAnywhere") then
            local V5_13 = Od.FishAnywhereZone and Od.FishAnywhereZone.Value
            local V5_14 = N6(V5_13, fns.akR_43)
            V5_15 = V5_14 and fns.akR_9[V5_14]
            if V5_15 then
                return V5_15
            end
            local Character = LocalPlayer.Character
            local V6_7 = Character and Character:FindFirstChild("HumanoidRootPart")
            local V5_17 = V6_7
            if V6_8 then
                V6_7 = V5_17.CFrame
            end
            return V6_7 or nil
        else
            local Character = LocalPlayer.Character
            V6_8 = Character and Character:FindFirstChild("HumanoidRootPart")
            local V5_20 = V6_8
            if V6_8 then
                V6_8 = V5_20.CFrame
            end
            return V6_8 or nil
        end
    end
end
function fns.fn1746()
    local aew = {}
    for i, child in ipairs(fns.akR_28:GetChildren()) do
        if child:IsA("ModuleScript") then
            aew[#aew + 1] = child.Name
        end
    end
    table.sort(aew)
    return #aew > 0 and aew or { "Basic Bait" }
end
function fns.fn1788()
    local Character = LocalPlayer.Character
    local RG = Character and Character:FindFirstChildOfClass("Humanoid")
    return RG
end
function fns.fn1789()
    local SkillSequenceOrder = Od.SkillSequenceOrder
    local Z2 = SkillSequenceOrder and SkillSequenceOrder.Value
    local Z1_1 = {}
    local Z3 = Z2
    if type(Z3) == "table" then
        if #Z3 > 0 then
            for i, v in ipairs(Z3) do
                local upper = string.upper
                local Z4 = v or ""
                local Z2_2 = upper(tostring(Z4)):match("[ZXCV]")
                if Z2_2 then
                    Z1_1[#Z1_1 + 1] = Z2_2
                end
            end
        else
            for i, v in ipairs(fns.akR_49) do
                if Z3[v] then
                    Z1_1[#Z1_1 + 1] = v
                end
            end
        end
    else
        if not Z2 then
            Z2 = ""
        end
        local Z3_1 = tostring(Z2)
        for k in string.gmatch(string.upper(Z3_1), "[ZXCV]") do
            Z1_1[#Z1_1 + 1] = k
        end
    end
    if #Z1_1 == 0 then
        Z1_1[1] = "Z"
    end
    return Z1_1
end
function fns.onStepped()
    if Mr.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local ahA_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ahA_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
    local ahA_3 = MC("LockFarmPosition") and Nf.savedFarmCFrame and not Nf.eventIsle
    if ahA_3 then
        local ahA_4 = fns.akR_16()
        if ahA_4 then
            ahA_4.CFrame = Nf.savedFarmCFrame
        end
    end
end
function fns.fn1805()
    local UH = -1
    local UI
    for i, v in ipairs(Pg) do
        local UJ = Ne(v.Name) and v.Score > UH
        if UJ then
            UI = v
            UH = v.Score
        end
    end
    return UI
end
function fns.fn1824()
    local abR = fns.akR_53()
    if not abR then
        return false
    end
    for k in pairs(Op) do
        local abZ = if abR:FindFirstChild(k) then 1 else 0
        if abZ == 1 then
            return true
        end
    end
    return false
end
function fns.fn1828()
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    if not MainGui then
        return
    end
    local Character = LocalPlayer.Character
    local Vi = Character
    if Vi then
        local Vj = Character:GetAttribute("Minigame") == true or Character:GetAttribute("Fishing") == true
        Vi = Vj
    end
    if Vi then
        local Fishing = MainGui:FindFirstChild("Fishing")
        if Fishing then
            Fishing.Visible = true
            local SkillButton = Fishing:FindFirstChild("SkillButton")
            if SkillButton then
                SkillButton.Visible = true
            end
            local TrashCan = Fishing:FindFirstChild("TrashCan")
            if TrashCan then
                TrashCan:ClearAllChildren()
            end
        end
        return
    end
    local Fishing = MainGui:FindFirstChild("Fishing")
    if Fishing then
        Fishing.Visible = false
        local TrashCan = Fishing:FindFirstChild("TrashCan")
        if TrashCan then
            TrashCan:ClearAllChildren()
        end
    end
    local Button = MainGui:FindFirstChild("Button")
    if Button then
        Button.Visible = true
    end
    local Button2 = MainGui:FindFirstChild("Button2")
    if Button2 then
        Button2.Visible = true
    end
end
function fns.fn1884()
    if Ow.hideNameText then
        Ow.hideNameText:Disconnect()
        Ow.hideNameText = nil
    end
    OG = nil
end
function fns.worker19()
    while not Mr.Unloaded do
        if MC("AutoRedeemCodes") then
            pcall(Or)
        end
        task.wait(10)
    end
end
function fns.worker6()
    while not Mr.Unloaded do
        if MC("AutoSummon") then
            pcall(NO)
        end
        task.wait(1.25)
    end
end
function fns.fn1894(dQ)
    local Tc_4
    local Ta
    local Ta_2
    local Tb
    for i, child in ipairs(Ocean:GetChildren()) do
        local Tc_1 = child.Name == "Water" and child:IsA("BasePart")
        if Tc_1 then
            local Magnitude = Vector3.new(child.Position.X - dQ.X, 0, child.Position.Z - dQ.Z).Magnitude
            if not Ta or Magnitude < Ta then
                Ta = Magnitude
                Tb = child
            end
        end
    end
    if not Tb then
        return nil
    end
    local Ta_1 = Vector3.new(Tb.Position.X - dQ.X, 0, Tb.Position.Z - dQ.Z)
    if Ta_1.Magnitude < 1 then
        Ta_2 = Vector3.new(0, 0, -1)
    else
        Ta_2 = Ta_1.Unit
    end
    local Tb_1 = { 0, 45, -45, 90, -90, 135, -135, 180 }
    for i, v in ipairs(Tb_1) do
        local Tb_2 = CFrame.Angles(0, math.rad(v), 0):VectorToWorldSpace(Ta_2)
        local Tc_3 = Vector3.new(Tb_2.X, 0, Tb_2.Z)
        if Tc_3.Magnitude < 0.1 then
            Tc_4 = Ta_2
        else
            Tc_4 = Tc_3.Unit
        end
        local Tu = 50
        while Tu <= 260 do
            local Tb_3 = dQ + Tc_4 * Tu
            local Td_2 = Oj(Tb_3)
            if Td_2 then
                local Te = Vector3.new(Tb_3.X, math.max(Ov + 3, Td_2.Position.Y + 3), Tb_3.Z)
                return CFrame.lookAt(Te, Te + Tc_4 * 20)
            end
            Tu += 10
        end
    end
    return nil
end
function fns.fn1975()
    local Character = LocalPlayer.Character
    if not Character then
        return false
    elseif MV() then
        return false
    elseif Character:GetAttribute("Type") ~= "Fishing Rod" then
        return false
    else
        local V4 = if Character:GetAttribute("Fishing") == true then 1 else 0
        if V4 == 1 then
            return false
        end
        local V4_1 = if Character:GetAttribute("Minigame") == true then 1 else 0
        if V4_1 == 1 then
            return false
        elseif Character:GetAttribute("CDForTheNextThrow") == true then
            return false
        elseif os.clock() < Nf.castLockUntil then
            return false
        elseif NF() then
            return false
        else
            return true
        end
    end
end
function fns.fn1978(nS)
    local ZV = NU()
    local ZW = ZV and ZV:FindFirstChild("SkillButton")
    local ZV_1 = ZW
    if ZW then
        ZW = ZV_1:FindFirstChild("Frame")
    end
    local ZV_2 = ZW
    if ZW then
        ZW = ZV_2:FindFirstChild(nS)
    end
    local ZV_3 = ZW
    if ZW then
        ZW = ZV_3:FindFirstChild("CD")
    end
    local ZV_4 = ZW
    local ZW_1 = not ZV_4 or not ZV_4:IsA("TextLabel")
    if ZW_1 then
        return false
    elseif not ZV_4.Visible then
        return false
    else
        local ZW_2 = ZV_4.Text or ""
        local ZV_5 = tostring(ZW_2):gsub("%s+", "")
        return ZV_5 ~= "" and ZV_5 ~= "0"
    end
end
function fns.fn1998()
    local NPC = O0:FindFirstChild("NPC")
    local abE = NPC and NPC:FindFirstChild("Function")
    local abD_1 = abE
    if abE then
        abE = abD_1:FindFirstChild(Ou)
    end
    return abE
end
function fns.fn2006()
    if not MC("AutoSkill") then
        return
    end
    task.spawn(function()
        local aaQ = 1
        while true do
            if aaQ <= 30 then
                if Mr.Unloaded then
                    break
                end
                local Character = LocalPlayer.Character
                local aaM = Character and Character:GetAttribute("Minigame") == true
                if aaM then
                    pcall(fns.akR_45)
                    return
                end
                task.wait(0.05)
                aaQ += 1
                continue
            end
            return
        end
        return
    end)
end
function fns.fn2007()
    if N7() then
        return true
    end
    local aat = NU()
    local aau = aat and aat:FindFirstChild("TrashCan")
    if not aau then
        return false
    end
    local aau_1 = aau:FindFirstChild("Slam") ~= nil or aau:FindFirstChild("Charge") ~= nil
    return aau_1
end
function fns.worker10()
    while not Mr.Unloaded do
        if MC("AutoCraftBait") then
            pcall(OP)
        end
        if MC("AutoCraftRod") then
            pcall(Oq)
        end
        task.wait(2)
    end
end
function fns.fn2032()
    local abL = Nk()
    local abM = abL and abL:FindFirstChild("Quest")
    local abL_1 = abM
    if abM then
        abM = abL_1:FindFirstChild("Main")
    end
    return abM
end
function fns.fn2043(eR, eS)
    if eR.level == eS.level then
        return eR.name < eS.name
    end
    return eR.level < eS.level
end
function fns.fn2049()
    local Y4 = Od.CraftRodName and Od.CraftRodName.Value
    local Y4_1 = Y4 == ""
    local Y6 = type(Y4) ~= "string" or Y4_1
    if Y6 then
        return
    end
    if NK(Y4) then
        return
    end
    Nf.unlockCraftIngredients(Y4)
    MQ.CraftRod:FireServer(Y4)
end
function fns.antiGameplayPauseLoop()
    while not Mr.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            fns.akR_20(true)
        end
    end
end
function fns.fn2054(eA, eB)
    if eA.level == eB.level then
        return eA.name < eB.name
    end
    return eA.level < eB.level
end
function fns.worker16()
    while not Mr.Unloaded do
        if MC("AutoHardTicketQuest") then
            pcall(fns.akR_55)
        end
        task.wait(4)
    end
end
function fns.worker7()
    while not Mr.Unloaded do
        if MC("AutoSellAll") then
            local ahj = MC("DontSellSecretBoss") or MC("AutoFavoriteSecretBoss")
            if ahj then
                pcall(OX)
            end
            pcall(MW)
        end
        task.wait(2)
    end
end
function fns.fn2101(wx, wy)
    local afr = if not MC("WebhookEnabled") then 1 else 0
    if afr == 1 then
        return false
    end
    local afm = wy and Oe()
    local afn = afm or nil
    return Pj({ username = "Ouroboros Hub", content = afn, embeds = { wx } })
end
function fns.fn2123()
    local YT = Nk()
    local YU = YT and YT:FindFirstChild("DailyReward")
    if not YU then
        return
    end
    local YZ = 1
    while YZ <= 7 do
        local Y_ = YZ
        local YU_1 = YU:FindFirstChild(tostring(Y_))
        local YV = YU_1 and YU_1:IsA("BoolValue") and YU_1.Value == false
        if YV then
            MQ.DailyReward:FireServer(Y_)
            task.wait(0.15)
        end
        YZ += 1
    end
end
function fns.fn2125()
    local X4 = Nk()
    local X5 = X4 and X4:FindFirstChild("Inventory")
    local X4_1 = X5
    if X5 then
        X5 = #X4_1:GetChildren()
    end
    local X6 = X5 or 0
    MQ.SellFish:FireServer("All")
    if X4_1 then
        task.wait(0.25)
        local X6_1 = #X4_1:GetChildren()
        if X6_1 < X6 then
            Nf.fishSold = Nf.fishSold + (X6 - X6_1)
        end
    end
end
function fns.fn2139(bI, bJ)
    if bI.Luck == bJ.Luck then
        return bI.Price < bJ.Price
    end
    return bI.Luck > bJ.Luck
end
function fns.fn2181()
    local U_ = fns.akR_21()
    if not U_ then
        return false
    elseif U_:GetAttribute("OnCooldown") == true then
        return false
    else
        local U0 = U_:GetAttribute("InFight") == true or U_:GetAttribute("Minigame") == true
        return U0
    end
end
function fns.fn2182()
    fns.akR_26(LocalPlayer.Character)
end
function fns.fn2184()
    local R0 = Nk()
    local R1 = R0 and R0:FindFirstChild("InventoryLimit")
    local R0_1 = R1
    if R1 then
        R1 = R0_1.Value
    end
    local R0_2 = R1
    local R5 = if R0_2 then 1 else 0
    local R3 = 371 * R5 + 1114 * (1 - R5)
    local R4 = 1874 * R5 + 1855 * (1 - R5)
    if not ((R3 * 1685 + R4 * 3403 + R3 * R4) % 16777213 == 7697611) then
        R0_2 = 50
    end
    return R0_2
end
function fns.fn2193(w8)
    local afP = Mr.Unloaded
    local afW = if afP then 1 else 0
    local afU = 3075 * afW + 3823 * (1 - afW)
    local afV = 3729 * afW + 3437 * (1 - afW)
    if not ((afU * 2496 + afV * 876 + afU * afV) % 16777213 == 5631266) then
        afP = not MC("WebhookEnabled")
    end
    if not afP then
        afP = not MC("WebhookWeather")
    end
    if afP then
        return
    end
    local afP_1 = w8 or "Unknown"
    local afQ = {
        title = "Weather Changed",
        color = 3447003,
        fields = {
            { name = "Weather", value = tostring(afP_1), inline = true },
            { name = "Player", value = LocalPlayer.Name, inline = true }
        },
        footer = { text = "Heavyweight Fishing | Ouroboros Hub" }
    }
    local afS = w8 ~= nil and w8 ~= "Clear"
    Pl(afQ, afS)
end
function fns.fn2200()
    pcall(Ns, O0:GetAttribute("Weather"))
end
function fns.fn2216()
    if Nf.skillBusy then
        return
    end
    if os.clock() - Nf.lastCompleteFire < 0.35 then
        return
    end
    Nf.lastCompleteFire = os.clock()
    if Nf.minigameSession ~= nil then
        pcall(function()
            MQ.FishingMinigame:FireServer(true, Nf.minigameSession)
        end)
    end
    NE()
end
function fns.fn2218(pC)
    if not pC then
        return false
    end
    local Objective = pC:FindFirstChild("Objective")
    if not Objective then
        return false
    end
    local aba = false
    for i, child in ipairs(Objective:GetChildren()) do
        if child:IsA("StringValue") then
            aba = true
            local aa9_1 = pC:FindFirstChild(child.Name)
            local abb = tonumber((tostring(child.Value):match(",(%d+),")))
            if not abb then
                local abc_1 = string.split(tostring(child.Value), ",")
                abb = tonumber(abc_1[2])
            end
            local abc_2 = not aa9_1 or not aa9_1:IsA("NumberValue") or not abb or aa9_1.Value < abb
            if abc_2 then
                return false
            end
        end
    end
    return aba
end
function fns.fn2223(bB, bC)
    if bB.Power == bC.Power then
        return bB.Luck > bC.Luck
    end
    return bB.Power > bC.Power
end
function fns.fn2287()
    local adQ = fns.akR_16()
    local adR = Nf.savedFarmCFrame or Nf.preHuntCFrame
    local adR_1 = not adR
    local adT = not adQ
    local adX = if adT then 1 else 0
    local adV = 3674 * adX + 1715 * (1 - adX)
    local adW = 3350 * adX + 3539 * (1 - adX)
    if not ((adV * 2267 + adW * 4050 + adV * adW) % 16777213 == 649932) then
        adT = adR_1
    end
    if adT then
        return false
    end
    adQ.CFrame = adR
    Nf.preHuntCFrame = nil
    return true
end
function fns.onOnClientEvent4(zo)
    local agN = Mr.Unloaded or not MC("WebhookEnabled")
    if agN then
        return
    end
    local agN_1 = zo or ""
    local agO = tostring(agN_1)
    if agO == "" then
        return
    end
    local agN_2 = string.lower(agO)
    local agP = (MC("WebhookMerchant"))
    if agP then
        local agQ = string.find(agN_2, "merchant", 1, true) or string.find(agN_2, "maoshan", 1, true) or string.find(agN_2, "taoist", 1, true) or string.find(agN_2, "da shixiong", 1, true) or string.find(agN_2, "xiao daoshi", 1, true)
        agP = agQ
    end
    if agP then
        Pl({
            title = "Merchant Announcement",
            color = 15844367,
            fields = {
                { name = "Message", value = agO, inline = false },
                { name = "Player", value = LocalPlayer.Name, inline = true }
            },
            footer = { text = "Heavyweight Fishing | Ouroboros Hub" }
        }, true)
        return
    end
    if MC("WebhookChatAnnounce") then
        Pl({
            title = "Chat Announcement",
            color = 5793266,
            fields = {
                { name = "Message", value = agO, inline = false },
                { name = "Player", value = LocalPlayer.Name, inline = true }
            },
            footer = { text = "Heavyweight Fishing | Ouroboros Hub" }
        }, false)
    end
end
function fns.onCopyVenmoLink()
    fns.akR_31(Ms.Venmo, "Copied Venmo link")
end
function fns.worker13()
    while not Mr.Unloaded do
        if MC("AutoEnzo") then
            pcall(fns.akR_11)
        end
        task.wait(2)
    end
end
function fns.fn2300(cK)
    local HumanoidRootPart = cK:FindFirstChild("HumanoidRootPart")
    local Sj = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if Sj then
        return HumanoidRootPart
    end
    for i, descendant in ipairs(cK:GetDescendants()) do
        if descendant:IsA("BasePart") then
            return descendant
        end
    end
    return nil
end
function fns.fn2301(mZ)
    local Zt = MF[mZ]
    local Zu = fns.akR_16()
    if not Zt or not Zu then
        return false
    end
    Zu.CFrame = Zt.CFrame + Vector3.new(0, 4, 0)
    return true
end
function fns.fn2333(aj, ak)
    return string.format('<font color="%s">%s</font>', ak, aj)
end
function fns.fn2337()
    if not Toggles.WalkSpeedEnabled.Value then
        local ah1 = fns.akR_4()
        if ah1 then
            ah1.WalkSpeed = 16
        end
    end
end
function fns.fn2350()
    local RO = Nk()
    local RP = RO and RO:FindFirstChild("Cash")
    local RO_1 = RP
    if RP then
        RP = RO_1.Value
    end
    return RP or 0
end
function fns.fn2359()
    local ZD = ME()
    if not ZD then
        return
    end
    MQ.BuySkill:FireServer(ZD.Name)
end
function fns.fn2380()
    if Nf.phase2Heartbeat then
        return
    end
    Nf.phase2Heartbeat = RunService.Heartbeat:Connect(function()
        if Mr.Unloaded then
            Ni()
            return
        end
        local WV = not M5() and not MC("AutoBossPhase2")
        if WV then
            return
        end
        local Character = LocalPlayer.Character
        local WW = not Character or Character:GetAttribute("Phase2") ~= true
        if WW then
            return
        end
        O6()
    end)
end
Mr = nil
Ms = nil
Mu = nil
Label = nil
Mw = nil
Mx = nil
My = nil
fns.akR_52 = nil
fns.akR_33 = nil
fns.akR_8 = nil
MC = nil
MD = nil
ME = nil
MF = nil
MG = nil
MH = nil
Toggles = nil
MK = nil
ML = nil
fns.akR_24 = nil
MP = nil
MQ = nil
MR = nil
MU = nil
MV = nil
MW = nil
Label2 = nil
fns.akR_60 = nil
fns.akR_12 = nil
M0 = nil
M1 = nil
Data = nil
M3 = nil
M4 = nil
M5 = nil
M6 = nil
M7 = nil
Ocean = nil
M9 = nil
fns.akR_50 = nil
fns.akR_29 = nil
Nd = nil
local Mt, MI, MM, MO, MS, MT, MZ
Ne = nil
Nf = nil
Nh = nil
Ni = nil
Nk = nil
Nl = nil
fns.akR_61 = nil
fns.akR_43 = nil
fns.akR_19 = nil
PlayerGui = nil
Nr = nil
Ns = nil
Nu = nil
Nw = nil
Nx = nil
fns.akR_32 = nil
fns.CoreGui = nil
ND = nil
NE = nil
NF = nil
NG = nil
NH = nil
NI = nil
NK = nil
fns.akR_48 = nil
fns.akR_21 = nil
NO = nil
UserInputService = nil
NQ = nil
NR = nil
NU = nil
NW = nil
NX = nil
fns.akR_55 = nil
fns.akR_38 = nil
fns.akR_11 = nil
N0 = nil
local Ng, Nj, Np, Nt, Lighting, Ny, Nz, NC, HttpService, NL, NS, MenuGroup, NV
N1 = nil
N2 = nil
N3 = nil
N4 = nil
N5 = nil
N6 = nil
N7 = nil
N8 = nil
N9 = nil
fns.akR_28 = nil
Od = nil
Oe = nil
Og = nil
Oh = nil
Oi = nil
Oj = nil
Quest2 = nil
Ol = nil
fns.akR_41 = nil
fns.akR_16 = nil
Op = nil
Oq = nil
Or = nil
Os = nil
Label3 = nil
Ou = nil
Ov = nil
Ow = nil
Ox = nil
Oy = nil
fns.akR_31 = nil
fns.akR_4 = nil
CurrentCamera = nil
Label4 = nil
OF = nil
OG = nil
OH = nil
OJ = nil
OK = nil
fns.akR_63 = nil
fns.akR_45 = nil
fns.akR_20 = nil
OO = nil
local Oa, Oc, Of, Om, Oz, OD, OI
OP = nil
OQ = nil
LocalPlayer = nil
OS = nil
OT = nil
OW = nil
OX = nil
fns.akR_53 = nil
fns.akR_36 = nil
fns.akR_9 = nil
O0 = nil
O1 = nil
O3 = nil
O4 = nil
O5 = nil
O6 = nil
O8 = nil
fns.akR_49 = nil
fns.akR_26 = nil
Pc = nil
Pe = nil
Pf = nil
Pg = nil
Ph = nil
Pi = nil
Pj = nil
RunService = nil
Pl = nil
fns.akR_57 = nil
fns.akR_40 = nil
fns.akR_14 = nil
local OU, OV, O2, GuiService, O9, VirtualUser
OU = nil
OV = nil
O2 = nil
GuiService = nil
O9 = nil
VirtualUser = nil
RunService, UserInputService, VirtualUser, HttpService, GuiService, fns.CoreGui, O0, Lighting, LocalPlayer, PlayerGui, OJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local akR_145 = game:GetService("Players")
local akR_125 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
fns.CoreGui = game:GetService("CoreGui")
O0 = game:GetService("Workspace")
Lighting = game:GetService("Lighting")
LocalPlayer = akR_145.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
OJ = fns.fn1188
if getgenv then
    getgenv().gethui = OJ
end
pcall(function()
    gethui = OJ
end)
if setthreadidentity then
    setthreadidentity(8)
end
fns.akR_2, onCharacterAdded, Data, fns.akR_108, MQ, Quest2, MH, fns.akR_28, fns.akR_99, akR_145, Mr, MS, Om, Toggles, Od, fns.akR_8, N5, Ms, fns.akR_72, fns.akR_40, NQ, Pf, fns.akR_81, fns.akR_49, fns.akR_64, OW, fns.akR_38, O1, Nr, fns.akR_31, fns.akR_41, MC, NR, Nk, fns.akR_4, fns.akR_16, N8, fns.akR_48, Nl, MV, Of, fns.akR_90 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local akR_117 = 98
repeat
    fns.akR_44 = (akR_117 * 11 + 3) % 21 + 1
    if fns.akR_44 <= 11 then
        if fns.akR_44 <= 6 then
            if fns.akR_44 <= 3 then
                if fns.akR_44 <= 2 then
                    if fns.akR_44 <= 1 then
                        local aqI = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 5), string.byte(tostring(fns.akR_41))), 8)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aqI, 852768809), 1695629948), (bit32.bxor(bit32.band(aqI, 3442198486), 1411383570))), 1695629948), 1411383570) ~= aqI then
                            Ms = "https://rscripts.net/@Ouroboros"
                            N5 = {
                                BTC = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
                                ETH = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
                                LTC = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
                                Venmo = "https://venmo.com/u/miserablemusic",
                                SOL = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
                                USDT = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
                                PayPal = "https://paypal.me/TheTruckerGOD"
                            }
                        else
                            N5 = "https://rscripts.net/@Ouroboros"
                            Ms = {
                                LTC = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
                                BTC = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
                                ETH = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
                                USDT = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
                                SOL = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
                                PayPal = "https://paypal.me/TheTruckerGOD",
                                Venmo = "https://venmo.com/u/miserablemusic"
                            }
                        end
                        akR_117 = (akR_117 + 149) % 168
                    else
                        local anW = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 22), string.byte(tostring(fns.akR_48))), 3)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(anW, 463998195), 2750365411), (bit32.bxor(bit32.band(anW, 3830969100), 656917544))), 2750365411), 656917544) == anW then
                            fns.akR_72 = {
                                LTC = "#345d9d",
                                BTC = "#f7931a",
                                ETH = "#627eea",
                                USDT = "#26a17b",
                                SOL = "#14f195",
                                PayPal = "#0070ba",
                                Venmo = "#008cff"
                            }
                            fns.akR_40 = "#7fd47f"
                            NQ = "#6ec1ff"
                            Pf = "#e8a34d"
                            fns.akR_81 = "#8b93a3"
                        else
                            NQ = {
                                LTC = "#345d9d",
                                BTC = "#f7931a",
                                Venmo = "#008cff",
                                USDT = "#26a17b",
                                SOL = "#14f195",
                                PayPal = "#0070ba",
                                ETH = "#627eea"
                            }
                            fns.akR_81 = "#7fd47f"
                            fns.akR_72 = "#6ec1ff"
                            fns.akR_40 = "#e8a34d"
                            Pf = "#8b93a3"
                        end
                        akR_117 = (akR_117 + 128) % 168
                    end
                else
                    if (akR_117 * 2 + 2) * 16 % 3 == ((akR_117 * 2 + 2) * 16 + 0) % 3 then
                        fns.akR_49 = { "Z", "X", "C", "V" }
                        fns.akR_64 = { "Normal", "Hard", "Nightmare" }
                    else
                        fns.akR_64 = { "Z", "C", "X", "V" }
                        fns.akR_49 = { "Normal", "Nightmare", "Hard" }
                    end
                    akR_117 = (akR_117 + 44) % 168
                end
            elseif fns.akR_44 <= 5 then
                if fns.akR_44 <= 4 then
                    fns.akR_23 = (vector.create((akR_117 * 1 + 3) % 11 + 1, (akR_117 * 6 + 9) % 13 + 1, (akR_117 * 7 + 17) % 17 + 1))
                    fns.akR_3 = (vector.create((akR_117 * 7 + 5) % 11 + 1, (akR_117 * 5 + 1) % 13 + 1, (akR_117 * 14 + 17) % 17 + 1))
                    local apJ = vector.dot(fns.akR_23, fns.akR_3)
                    if apJ * apJ <= vector.dot(fns.akR_23, fns.akR_23) * vector.dot(fns.akR_3, fns.akR_3) then
                        O1 = fns.fn2333
                        Nr = fns.fn1057
                        fns.akR_31 = fns.fn1037
                        fns.akR_41 = fns.fn1162
                    else
                        Nr = fns.fn2333
                        O1 = fns.fn1057
                        fns.akR_41 = fns.fn1037
                        fns.akR_31 = fns.fn1162
                    end
                    akR_117 = (akR_117 + 128) % 168
                else
                    fns.akR_23 = {
                        "jluroixeede",
                        "xlbzx",
                        "lecpzgeolbpk",
                        "sjpl",
                        "rmolydhuqnoe",
                        "tvbxa",
                        "aaonrbcoldnx",
                        "nbnxmbzz",
                        "lvstoprmm",
                        "zkfowwnrozq",
                        "znjbdxlxayb",
                        "qiynsyhrkhau",
                        "dxl",
                        "vqfpjunlriqm",
                        "arbhcsrhp"
                    }
                    if fns.akR_23[(akR_117 * 48 + 87) % 15 + 1] <= fns.akR_23[(akR_117 * 48 + 87) % 15 + 1] then
                        MC = fns.fn111
                    else
                        fns.akR_64 = fns.fn111
                    end
                    akR_117 = (akR_117 + 107) % 168
                end
            else
                if akR_117 * 118938029 + 6 + 5 >= akR_117 * 118938029 + 6 + 5 + 5 then
                    fns.akR_16 = fns.fn674
                    NR = fns.fn257
                    Nk = fns.fn1788
                    fns.akR_4 = fns.fn117
                else
                    NR = fns.fn674
                    Nk = fns.fn257
                    fns.akR_4 = fns.fn1788
                    fns.akR_16 = fns.fn117
                end
                akR_117 = (akR_117 + 2) % 168
            end
        elseif fns.akR_44 <= 9 then
            if fns.akR_44 <= 8 then
                if fns.akR_44 <= 7 then
                    fns.akR_23 = (vector.create((akR_117 * 3 + 3) % 11 + 1, (akR_117 * 7 + 8) % 13 + 1, (akR_117 * 4 + 6) % 17 + 1))
                    fns.akR_3 = (vector.create((akR_117 * 4 + 4) % 11 + 1, (akR_117 * 1 + 11) % 13 + 1, (akR_117 * 6 + 11) % 17 + 1))
                    akR_141 = (vector.create((akR_117 * 2 + 2) % 11 + 1, (akR_117 * 10 + 1) % 13 + 1, (akR_117 * 8 + 13) % 17 + 1))
                    akR_131 = (vector.create((akR_117 * 4 + 8) % 11 + 1, (akR_117 * 1 + 6) % 13 + 1, (akR_117 * 2 + 11) % 17 + 1))
                    if vector.dot(vector.cross(fns.akR_23, fns.akR_3), (vector.cross(akR_141, akR_131))) == vector.dot(fns.akR_23, akR_141) * vector.dot(fns.akR_3, akR_131) - vector.dot(fns.akR_23, akR_131) * vector.dot(fns.akR_3, akR_141) + 2 then
                        fns.akR_48 = fns.fn2350
                        N8 = fns.fn487
                    else
                        N8 = fns.fn2350
                        fns.akR_48 = fns.fn487
                    end
                    akR_117 = (akR_117 + 44) % 168
                else
                    local am7 = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 7), 72), 6)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(am7, 277317485), 2591859253), (bit32.bxor(bit32.band(am7, 4017649810), 3291194906))), 2591859253), 3291194906) == am7 then
                        Nl = fns.fn2184
                        MV = fns.fn672
                    else
                        MV = fns.fn2184
                        Nl = fns.fn672
                    end
                    akR_117 = (akR_117 + 23) % 168
                end
            else
                if akR_117 * 67590147 + 9 + 6 >= akR_117 * 67590147 + 9 + 6 + 4 then
                    fns.akR_90 = fns.fn24
                    Of = fns.fn1633
                else
                    Of = fns.fn24
                    fns.akR_90 = fns.fn1633
                end
                akR_117 = (akR_117 + 44) % 168
            end
        elseif fns.akR_44 <= 10 then
            local aqy = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 11), string.byte(tostring(MQ))), 1)
            if bit32.bxor(bit32.lrotate(bit32.bxor(aqy, 3610848108), 16), 728553273) ~= bit32.lrotate(aqy, 16) then
                fns.akR_31 = {}
            else
                OW = {}
            end
            akR_117 = (akR_117 + 149) % 168
        else
            local ao8 = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 14), string.byte(tostring(fns.akR_90))), 15)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ao8, 1695142961), 1698515180), (bit32.bxor(bit32.band(ao8, 2599824334), 438466337))), 1698515180), 438466337) == ao8 then
                fns.akR_2 = "Heavyweight Fishing"
            else
                fns.akR_41 = "Heavyweight Fishing"
            end
            akR_117 = (akR_117 + 44) % 168
        end
    elseif fns.akR_44 <= 16 then
        if fns.akR_44 <= 14 then
            if fns.akR_44 <= 13 then
                if fns.akR_44 <= 12 then
                    fns.akR_23 = (vector.create((akR_117 * 6 + 3) % 11 + 1, (akR_117 * 4 + 2) % 13 + 1, (akR_117 * 1 + 4) % 17 + 1))
                    fns.akR_3 = (vector.create((akR_117 * 3 + 8) % 11 + 1, (akR_117 * 7 + 3) % 13 + 1, (akR_117 * 9 + 10) % 17 + 1))
                    akR_141 = (vector.create((akR_117 * 6 + 5) % 11 + 1, (akR_117 * 5 + 4) % 13 + 1, (akR_117 * 5 + 6) % 17 + 1))
                    akR_131 = (vector.create((akR_117 * 4 + 4) % 11 + 1, (akR_117 * 2 + 5) % 13 + 1, (akR_117 * 8 + 15) % 17 + 1))
                    if vector.dot(vector.cross(fns.akR_23, fns.akR_3), (vector.cross(akR_141, akR_131))) == vector.dot(fns.akR_23, akR_141) * vector.dot(fns.akR_3, akR_131) - vector.dot(fns.akR_23, akR_131) * vector.dot(fns.akR_3, akR_141) + 2 then
                        akR_125 = onCharacterAdded:WaitForChild("Events")
                    else
                        onCharacterAdded = akR_125:WaitForChild("Events")
                    end
                    akR_117 = (akR_117 + 86) % 168
                else
                    local aqU = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 10), string.byte(tostring(fns.akR_16))), 29)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(aqU, 2754755113), 22), 2322140302) == bit32.lrotate(aqU, 22) then
                        Data = akR_125:WaitForChild("Data")
                    else
                        akR_125 = Data:WaitForChild("Data")
                    end
                    akR_117 = (akR_117 + 86) % 168
                end
            else
                if akR_117 * 53564527 + 10 + 7 >= akR_117 * 53564527 + 10 + 7 + 1 then
                    akR_125 = fns.akR_108:WaitForChild("Info")
                else
                    fns.akR_108 = akR_125:WaitForChild("Info")
                end
                akR_117 = (akR_117 + 44) % 168
            end
        elseif fns.akR_44 <= 15 then
            local aqB = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 27), string.byte(tostring(Toggles))), 16)
            if bit32.bxor(bit32.lrotate(bit32.bxor(aqB, 2563879466), 10), 1187555939) ~= bit32.lrotate(aqB, 10) then
                fns.akR_108 = {
                    RedeemCode = Quest2:WaitForChild("RedeemCode"),
                    ToggleHotbar = Quest2:WaitForChild("ToggleHotbar"),
                    BuyBait = Quest2:WaitForChild("BuyBait"),
                    BuySkill = Quest2:WaitForChild("BuySkill"),
                    BossPhase2Action = Quest2:WaitForChild("BossPhase2Action"),
                    Slam = Quest2:WaitForChild("Slam"),
                    StartBossFight = Quest2:WaitForChild("StartBossFight"),
                    EquipFishingRod = Quest2:WaitForChild("EquipFishingRod"),
                    Gacha = Quest2:WaitForChild("Gacha"),
                    ClaimQuest = Quest2:WaitForChild("ClaimQuest"),
                    Charge = Quest2:WaitForChild("Charge"),
                    RhythmStop = Quest2:WaitForChild("RhythmStop"),
                    Fishing = Quest2:WaitForChild("Fishing"),
                    DailyReward = Quest2:WaitForChild("DailyReward"),
                    SellFish = Quest2:WaitForChild("SellFish"),
                    RhythmHit = Quest2:WaitForChild("RhythmHit"),
                    UpdateFishProgression = Quest2:WaitForChild("UpdateFishProgression"),
                    ChooseDialogueOption = Quest2:WaitForChild("ChooseDialogueOption"),
                    EquipBait = Quest2:WaitForChild("EquipBait"),
                    FishingMinigame = Quest2:WaitForChild("FishingMinigame"),
                    AFK = Quest2:WaitForChild("AFK"),
                    FavoriteItem = Quest2:WaitForChild("FavoriteItem"),
                    UseSkill = Quest2:WaitForChild("UseSkill"),
                    RhythmStart = Quest2:WaitForChild("RhythmStart"),
                    StartDialogue = Quest2:WaitForChild("StartDialogue"),
                    CancelQuest = Quest2:WaitForChild("CancelQuest"),
                    CraftBait = Quest2:WaitForChild("CraftBait"),
                    NotifyFish = Quest2:WaitForChild("NotifyFish"),
                    EquipSkill = Quest2:WaitForChild("EquipSkill"),
                    CraftRod = Quest2:WaitForChild("CraftRod"),
                    BuyFishingRod = Quest2:WaitForChild("BuyFishingRod"),
                    ChatAnnounce = Quest2:WaitForChild("ChatAnnounce")
                }
                onCharacterAdded = require(MQ:WaitForChild("Quest"))
                fns.akR_28 = MQ:WaitForChild("Inventory")
                fns.akR_99 = MQ:WaitForChild("Bait")
                MH = MQ:WaitForChild("Skill")
            else
                MQ = {
                    Fishing = onCharacterAdded:WaitForChild("Fishing"),
                    SellFish = onCharacterAdded:WaitForChild("SellFish"),
                    BuyFishingRod = onCharacterAdded:WaitForChild("BuyFishingRod"),
                    BuyBait = onCharacterAdded:WaitForChild("BuyBait"),
                    BuySkill = onCharacterAdded:WaitForChild("BuySkill"),
                    EquipFishingRod = onCharacterAdded:WaitForChild("EquipFishingRod"),
                    EquipBait = onCharacterAdded:WaitForChild("EquipBait"),
                    EquipSkill = onCharacterAdded:WaitForChild("EquipSkill"),
                    UseSkill = onCharacterAdded:WaitForChild("UseSkill"),
                    ClaimQuest = onCharacterAdded:WaitForChild("ClaimQuest"),
                    RedeemCode = onCharacterAdded:WaitForChild("RedeemCode"),
                    Charge = onCharacterAdded:WaitForChild("Charge"),
                    Slam = onCharacterAdded:WaitForChild("Slam"),
                    UpdateFishProgression = onCharacterAdded:WaitForChild("UpdateFishProgression"),
                    FishingMinigame = onCharacterAdded:WaitForChild("FishingMinigame"),
                    BossPhase2Action = onCharacterAdded:WaitForChild("BossPhase2Action"),
                    StartBossFight = onCharacterAdded:WaitForChild("StartBossFight"),
                    RhythmStart = onCharacterAdded:WaitForChild("RhythmStart"),
                    RhythmHit = onCharacterAdded:WaitForChild("RhythmHit"),
                    RhythmStop = onCharacterAdded:WaitForChild("RhythmStop"),
                    ToggleHotbar = onCharacterAdded:WaitForChild("ToggleHotbar"),
                    Gacha = onCharacterAdded:WaitForChild("Gacha"),
                    CraftBait = onCharacterAdded:WaitForChild("CraftBait"),
                    CraftRod = onCharacterAdded:WaitForChild("CraftRod"),
                    DailyReward = onCharacterAdded:WaitForChild("DailyReward"),
                    FavoriteItem = onCharacterAdded:WaitForChild("FavoriteItem"),
                    AFK = onCharacterAdded:WaitForChild("AFK"),
                    ChooseDialogueOption = onCharacterAdded:WaitForChild("ChooseDialogueOption"),
                    StartDialogue = onCharacterAdded:WaitForChild("StartDialogue"),
                    CancelQuest = onCharacterAdded:WaitForChild("CancelQuest"),
                    NotifyFish = onCharacterAdded:WaitForChild("NotifyFish"),
                    ChatAnnounce = onCharacterAdded:WaitForChild("ChatAnnounce")
                }
                Quest2 = require(fns.akR_108:WaitForChild("Quest"))
                MH = fns.akR_108:WaitForChild("Inventory")
                fns.akR_28 = fns.akR_108:WaitForChild("Bait")
                fns.akR_99 = fns.akR_108:WaitForChild("Skill")
            end
            akR_117 = (akR_117 + 149) % 168
        else
            local apC = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_117, 2), string.byte(tostring(fns.akR_90))), 31)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(apC, 64757359), 1632905398), (bit32.bxor(bit32.band(apC, 4230209936), 109621325))), 1632905398), 109621325) ~= apC then
                fns.akR_108 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                akR_145 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            akR_117 = (akR_117 + 65) % 168
        end
    elseif fns.akR_44 <= 19 then
        if fns.akR_44 <= 18 then
            if fns.akR_44 <= 17 then
                if (not Data and not N8 or (Nk or not NQ)) and ((not Nk or NQ) and (not N8 and Data)) or (Data or Pf) and (not MV and N8) and (Pf or MV or not N8 and not Nk) or not ((not Data and not N8 or (Nk or not NQ)) and ((not Nk or NQ) and (not N8 and Data)) or (Data or Pf) and (not MV and N8) and (Pf or MV or not N8 and not Nk)) then
                    Mr = loadstring(game:HttpGet(akR_145 .. "Library.lua"))()
                else
                    akR_145 = loadstring(game:HttpGet(Mr .. "Library.lua"))()
                end
                akR_117 = (akR_117 + 65) % 168
            else
                if not fns.akR_72 and not fns.akR_28 or (fns.akR_72 or not fns.akR_28) or (fns.akR_72 or not fns.akR_28) and (fns.akR_28 and fns.akR_28) or not (not fns.akR_72 and not fns.akR_28 or (fns.akR_72 or not fns.akR_28) or (fns.akR_72 or not fns.akR_28) and (fns.akR_28 and fns.akR_28)) then
                    fns.akR_38 = function()
                        local function Rg(E)
                            local Re = not E or not E:IsA("ScreenGui")
                            if Re then
                                return
                            end
                            E.ResetOnSpawn = false
                            E.IgnoreGuiInset = true
                            E.DisplayOrder = math.max(E.DisplayOrder, 1000)
                            pcall(function()
                                E.ClipToDeviceSafeArea = false
                            end)
                            pcall(function()
                                E.ScreenInsets = Enum.ScreenInsets.None
                            end)
                            if E.Parent ~= fns.CoreGui then
                                E.Parent = fns.CoreGui
                            end
                        end
                        Rg(Mr.ScreenGui)
                        if Mr.ActiveLoading and Mr.ActiveLoading.ScreenGui then
                            Rg(Mr.ActiveLoading.ScreenGui)
                        end
                        for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
                            local Rh_2 = fns.CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                            if Rh_2 then
                                Rg(Rh_2)
                            end
                        end
                    end
                    fns.akR_38()
                    task.spawn(fns.worker)
                    MS = loadstring(game:HttpGet(akR_145 .. "addons/ThemeManager.lua"))()
                else
                    MS = function()
                        local function Rg(E)
                            local Re = not E or not E:IsA("ScreenGui")
                            if Re then
                                return
                            end
                            E.ResetOnSpawn = false
                            E.IgnoreGuiInset = true
                            E.DisplayOrder = math.max(E.DisplayOrder, 1000)
                            pcall(function()
                                E.ClipToDeviceSafeArea = false
                            end)
                            pcall(function()
                                E.ScreenInsets = Enum.ScreenInsets.None
                            end)
                            if E.Parent ~= fns.CoreGui then
                                E.Parent = fns.CoreGui
                            end
                        end
                        Rg(Mr.ScreenGui)
                        if Mr.ActiveLoading and Mr.ActiveLoading.ScreenGui then
                            Rg(Mr.ActiveLoading.ScreenGui)
                        end
                        for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
                            local Rh_1 = fns.CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                            if Rh_1 then
                                Rg(Rh_1)
                            end
                        end
                    end
                    MS()
                    task.spawn(fns.worker)
                    akR_145 = loadstring(game:HttpGet(fns.akR_38 .. "addons/ThemeManager.lua"))()
                end
                akR_117 = (akR_117 + 86) % 168
            end
        else
            fns.akR_23 = (vector.create((akR_117 * 3 + 4) % 11 + 1, (akR_117 * 6 + 10) % 13 + 1, (akR_117 * 8 + 13) % 17 + 1))
            fns.akR_3 = (vector.create((akR_117 * 5 + 5) % 11 + 1, (akR_117 * 7 + 2) % 13 + 1, (akR_117 * 5 + 16) % 17 + 1))
            akR_141 = (vector.create((akR_117 * 3 + 8) % 11 + 1, (akR_117 * 2 + 6) % 13 + 1, (akR_117 * 13 + 17) % 17 + 1))
            akR_131 = (vector.create((akR_117 * 6 + 8) % 11 + 1, (akR_117 * 8 + 10) % 13 + 1, (akR_117 * 9 + 14) % 17 + 1))
            if vector.dot(vector.cross(fns.akR_23, fns.akR_3), (vector.cross(akR_141, akR_131))) == vector.dot(fns.akR_23, akR_141) * vector.dot(fns.akR_3, akR_131) - vector.dot(fns.akR_23, akR_131) * vector.dot(fns.akR_3, akR_141) + 5 then
                akR_145 = loadstring(game:HttpGet(Om .. "addons/SaveManager.lua"))()
            else
                Om = loadstring(game:HttpGet(akR_145 .. "addons/SaveManager.lua"))()
            end
            akR_117 = (akR_117 + 128) % 168
        end
    elseif fns.akR_44 <= 20 then
        if (akR_117 * 2 + 5) * 4 % 3 == ((akR_117 * 2 + 5) * 4 + 6) % 3 then
            Toggles = Mr.Toggles
        else
            Mr = Toggles.Toggles
        end
        akR_117 = (akR_117 + 44) % 168
    else
        fns.akR_44 = {
            "wmwdi",
            "pwygpnihp",
            "envahejqsdqr",
            "dxxnl",
            "nwf",
            "wbsck",
            "fjlrourrlyor",
            "fdtcnxoh",
            "acjhg",
            "yrjzxwmmn"
        }
        if fns.akR_44[(akR_117 * 53 + 58) % 10 + 1] <= fns.akR_44[(akR_117 * 53 + 58) % 10 + 1] then
            Od = Mr.Options
            fns.akR_8 = "https://discord.gg/ehKVq7pf7v"
        else
            Mr = nil
            Od = "https://discord.gg/ehKVq7pf7v"
        end
        akR_117 = (akR_117 + 23) % 168
    end
until (akR_117 * 37 + 156) % 168 == 44
for i, child in ipairs(MH:GetChildren()) do
    if child:IsA("ModuleScript") then
        akR_145 = Of(MH, child.Name)
        onCharacterAdded = akR_145 and akR_145.Type == "Fishing Rod"
        if onCharacterAdded then
            onCharacterAdded = #OW + 1
            akR_117 = child.Name
            fns.akR_44 = tonumber(akR_145.Power) or 0
            fns.akR_23 = tonumber(akR_145.Luck) or 0
            OW[onCharacterAdded] = { Name = akR_117, Power = fns.akR_44, Luck = fns.akR_23, Cash = akR_145.Cash }
        end
    end
end
akR_117 = 5
repeat
    akR_145 = {
        "biyeycxlfmif",
        "lwbbnq",
        "qgnvj",
        "ctsdwu",
        "accbmtdwj",
        "cshydwkkn",
        "ccdlvsdiq",
        "aahxqmdc",
        "idli",
        "hohq"
    }
    if akR_145[(akR_117 * 92 + 29) % 10 + 1] < akR_145[(akR_117 * 92 + 29) % 10 + 1] then
        table.sort(OW, fns.fn2223)
    else
        table.sort(OW, fns.fn2223)
    end
    akR_117 = (akR_117 + 7) % 8
until (akR_117 * 7 + 0) % 8 == 4
M4 = {}
for i, child in ipairs(fns.akR_28:GetChildren()) do
    if child:IsA("ModuleScript") then
        akR_145 = Of(fns.akR_28, child.Name)
        if akR_145 then
            onCharacterAdded = tonumber(akR_145.Price) or 0
            akR_117 = onCharacterAdded
            if akR_117 > 0 then
                onCharacterAdded = #M4 + 1
                fns.akR_44 = child.Name
                fns.akR_23 = tonumber(akR_145.Luck) or 0
                M4[onCharacterAdded] = { Name = fns.akR_44, Luck = fns.akR_23, Price = akR_117 }
            end
        end
    end
end
table.sort(M4, fns.fn2139)
onCharacterAdded = {}
akR_145 = fns.akR_108:FindFirstChild("Gacha")
if akR_145 then
    for i, child in ipairs(akR_145:GetChildren()) do
        onCharacterAdded[#onCharacterAdded + 1] = child.Name
    end
    table.sort(onCharacterAdded)
end
if #onCharacterAdded == 0 then
    onCharacterAdded = { "Celestial Banner", "Egoless Banner" }
end
akR_117, Pg = nil, nil
akR_145 = 4
repeat
    if akR_145 * 113993575 + 1 + 4 >= akR_145 * 113993575 + 1 + 4 + 1 then
        Pg = { "Summon", "x10 Summon" }
        akR_117 = {}
    else
        akR_117 = { "Summon", "x10 Summon" }
        Pg = {}
    end
    akR_145 = (akR_145 + 0) % 8
until (akR_145 * 7 + 3) % 8 == 7
for i, child in ipairs(fns.akR_99:GetChildren()) do
    if child:IsA("ModuleScript") then
        akR_145 = Of(fns.akR_99, child.Name)
        if akR_145 then
            fns.akR_108 = tonumber(akR_145.Price) or 0
            fns.akR_44 = fns.akR_108
            if fns.akR_44 > 0 then
                Pg[#Pg + 1] = { Name = child.Name, Price = fns.akR_44, Score = fns.akR_90(akR_145) }
            end
        end
    end
end
fns.akR_108 = 6
repeat
    akR_145 = (vector.create((fns.akR_108 * 1 + 9) % 11 + 1, (fns.akR_108 * 3 + 6) % 13 + 1, (fns.akR_108 * 13 + 5) % 17 + 1))
    fns.akR_99 = (vector.create((fns.akR_108 * 1 + 7) % 11 + 1, (fns.akR_108 * 1 + 7) % 13 + 1, (fns.akR_108 * 8 + 13) % 17 + 1))
    local anT = vector.cross(akR_145, fns.akR_99)
    local anU = vector.dot(akR_145, fns.akR_99)
    if vector.dot(anT, anT) + anU * anU == vector.dot(akR_145, akR_145) * vector.dot(fns.akR_99, fns.akR_99) + 4 then
        table.sort(Pg, fns.fn1065)
    else
        table.sort(Pg, fns.fn1065)
    end
    fns.akR_108 = (fns.akR_108 + 2) % 8
until (fns.akR_108 * 1 + 2) % 8 == 2
OO = {}
akR_145 = {}
for i, child in ipairs(fns.akR_28:GetChildren()) do
    if child:IsA("ModuleScript") then
        fns.akR_108 = Of(fns.akR_28, child.Name)
        fns.akR_99 = fns.akR_108 and type(fns.akR_108.Ingredient) == "table"
        if fns.akR_99 then
            akR_145[#akR_145 + 1] = child.Name
            OO[child.Name] = true
        end
    end
end
table.sort(akR_145)
fns.akR_108 = {}
for i, child in ipairs(MH:GetChildren()) do
    if child:IsA("ModuleScript") then
        fns.akR_99 = Of(MH, child.Name)
        fns.akR_90 = fns.akR_99 and fns.akR_99.Type == "Fishing Rod" and type(fns.akR_99.Ingredient) == "table"
        if fns.akR_90 then
            fns.akR_108[#fns.akR_108 + 1] = child.Name
        end
    end
end
table.sort(fns.akR_108)
fns.akR_99 = {}
for i, v in ipairs(M4) do
    fns.akR_99[#fns.akR_99 + 1] = v.Name
end
fns.akR_90 = {}
for i, v in ipairs(OW) do
    fns.akR_44 = type(v.Cash) == "number" and v.Cash > 0
    if fns.akR_44 then
        fns.akR_90[#fns.akR_90 + 1] = v.Name
    end
end
table.sort(fns.akR_90)
O4, Ny, fns.akR_23 = nil, nil, nil
fns.akR_44 = 7
repeat
    fns.akR_3 = (fns.akR_44 * 1 + 0) % 2 + 1
    if fns.akR_3 <= 1 then
        local an9 = bit32.rrotate(bit32.bxor(bit32.lrotate(fns.akR_44, 13), string.byte(tostring(O4))), 1)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(an9, 3565553625), 2016935362), (bit32.bxor(bit32.band(an9, 729413670), 3905733773))), 2016935362), 3905733773) ~= an9 then
            Ny = {}
            O4 = {}
        else
            O4 = {}
            Ny = {}
        end
        fns.akR_44 = (fns.akR_44 + 13) % 16
    else
        if (fns.akR_44 * 1 + 8) * 9 % 4 == ((fns.akR_44 * 1 + 8) * 9 + 4) % 4 then
            fns.akR_23 = fns.fn71
        else
            O4 = fns.fn71
        end
        fns.akR_44 = (fns.akR_44 + 11) % 16
    end
until (fns.akR_44 * 9 + 5) % 16 == 12
for i, child in ipairs(MH:GetChildren()) do
    if child:IsA("ModuleScript") then
        fns.akR_44 = Of(MH, child.Name)
        fns.akR_3 = fns.akR_44 and fns.akR_44.SpecialBoss
        if fns.akR_3 then
            fns.akR_3 = fns.akR_44.Description or ""
            fns.akR_44 = tostring(fns.akR_3)
            akR_141, fns.akR_3 = string.match(fns.akR_44, "during ([%w%s]+) weather on ([^\n]+)")
            akR_131 = string.match(fns.akR_44, "Use ([^\n]+) to summon")
            fns.akR_44 = fns.akR_3 and fns.akR_23(fns.akR_3:match("^%s*(.-)%s*$"))
            fns.akR_3 = fns.akR_44 or nil
            fns.akR_44 = fns.akR_3
            O4[child.Name] = true
            fns.akR_3 = akR_141 and fns.akR_44
            if fns.akR_3 then
                fns.akR_3 = Ny[fns.akR_44]
                if not fns.akR_3 then
                    Ny[fns.akR_44] = { Weather = akR_141, Bait = akR_131 }
                else
                    fns.akR_44 = akR_131 and not fns.akR_3.Bait
                    if fns.akR_44 then
                        fns.akR_3.Bait = akR_131
                    end
                end
            end
        end
    end
end
Oi, MF, N9, Mw = nil, nil, nil, nil
if (N9 and not N9 or (N9 or not N9)) and (not Mw and N9 or Mw and not Mw) or not ((N9 and not N9 or (N9 or not N9)) and (not Mw and N9 or Mw and not Mw)) then
    Oi = {}
    MF = {}
    N9 = {
        ["Da Shixiong"] = "Special - Da Shixiong (Maoshan Merchant)",
        ["Xiao Daoshi"] = "Special - Xiao Daoshi (Little Taoist)",
        Maoshan = "Special - Da Shixiong (Maoshan Merchant)",
        Taoist = "Special - Xiao Daoshi (Little Taoist)"
    }
else
    MF = {}
    N9 = {}
    Oi = {
        ["Da Shixiong"] = "Special - Da Shixiong (Maoshan Merchant)",
        Maoshan = "Special - Da Shixiong (Maoshan Merchant)",
        ["Xiao Daoshi"] = "Special - Xiao Daoshi (Little Taoist)",
        Taoist = "Special - Xiao Daoshi (Little Taoist)"
    }
end
Mw = {}
fns.akR_44 = akR_125:FindFirstChild("Merchant")
if fns.akR_44 then
    fns.akR_3 = fns.akR_44:FindFirstChild("Maoshan")
    akR_131 = fns.akR_44:FindFirstChild("Taoist")
    akR_141 = fns.akR_3 and fns.akR_3:FindFirstChildOfClass("Shirt")
    fns.akR_44 = akR_131
    fns.akR_23 = akR_141
    if fns.akR_44 then
        fns.akR_44 = akR_131:FindFirstChildOfClass("Shirt")
    end
    fns.akR_3 = fns.akR_44
    if fns.akR_23 then
        fns.akR_44 = 0
        repeat
            akR_141 = (vector.create((fns.akR_44 * 7 + 5) % 11 + 1, (fns.akR_44 * 10 + 6) % 13 + 1, (fns.akR_44 * 15 + 10) % 17 + 1))
            akR_131 = (vector.create((fns.akR_44 * 7 + 8) % 11 + 1, (fns.akR_44 * 7 + 10) % 13 + 1, (fns.akR_44 * 15 + 11) % 17 + 1))
            akR_121 = (vector.create((fns.akR_44 * 5 + 4) % 11 + 1, (fns.akR_44 * 4 + 9) % 13 + 1, (fns.akR_44 * 2 + 6) % 17 + 1))
            fns.akR_113 = (vector.create((fns.akR_44 * 6 + 6) % 11 + 1, (fns.akR_44 * 2 + 10) % 13 + 1, (fns.akR_44 * 8 + 11) % 17 + 1))
            if vector.dot(vector.cross(akR_141, akR_131), (vector.cross(akR_121, fns.akR_113))) == vector.dot(akR_141, akR_121) * vector.dot(akR_131, fns.akR_113) - vector.dot(akR_141, fns.akR_113) * vector.dot(akR_131, akR_121) then
                Mw[fns.akR_23.ShirtTemplate] = N9["Da Shixiong"]
            else
                N9[Mw.ShirtTemplate] = fns.akR_23["Da Shixiong"]
            end
            fns.akR_44 = (fns.akR_44 + 6) % 8
        until (fns.akR_44 * 5 + 1) % 8 == 7
    end
    if fns.akR_3 then
        fns.akR_44 = 0
        repeat
            local aqD = bit32.rrotate(bit32.bxor(bit32.lrotate(fns.akR_44, 21), string.byte(tostring(fns.akR_44))), 31)
            if bit32.bxor(bit32.lrotate(bit32.bxor(aqD, 2585822564), 14), 559490696) == bit32.lrotate(aqD, 14) then
                Mw[fns.akR_3.ShirtTemplate] = N9["Xiao Daoshi"]
            else
                N9[Mw.ShirtTemplate] = fns.akR_3["Xiao Daoshi"]
            end
            fns.akR_44 = (fns.akR_44 + 7) % 8
        until (fns.akR_44 * 5 + 5) % 8 == 0
    end
end
fns.akR_9, Nu, OQ, fns.akR_43, Nh, O5, OH, N3, NH = nil, nil, nil, nil, nil, nil, nil, nil, nil
O5 = fns.fn2300
OH = fns.fn34
N3 = fns.fn1690
NH = fns.fn164
NH()
akR_121 = {}
akR_141 = {}
fns.akR_9 = {}
Nu = {
    ["Beginning Isle"] = 1,
    ["Bamboo Isle"] = 19,
    ["Fallout Isle"] = 32,
    ["Sovereign Isle"] = 39,
    ["Perch Isle"] = 48,
    ["Frost Isle"] = 55,
    ["Coconut Isle"] = 65,
    ["Amber Isle"] = 75,
    ["Battlefield Isle"] = 90,
    ["Mistpeak Isle"] = 100
}
OQ = {}
fns.akR_43 = {}
akR_131 = {}
Nh = {}
fns.akR_104, Ocean, Ov, fns.akR_113, fns.akR_3 = nil, nil, nil, nil, nil
if (fns.akR_3 and fns.akR_3 and (not fns.akR_113 and false) and (not Ov and not Ov and (not Ov and not Ov)) and ((not fns.akR_113 or not fns.akR_113 or (fns.akR_3 or not Ov)) and 12) or (fns.akR_113 or fns.akR_113 or (not fns.akR_3) or fns.akR_113 and not fns.akR_3 and fns.akR_113) and ((fns.akR_113 or 12) and (fns.akR_113 or fns.akR_3))) and not (fns.akR_3 and fns.akR_3 and (not fns.akR_113 and false) and (not Ov and not Ov and (not Ov and not Ov)) and ((not fns.akR_113 or not fns.akR_113 or (fns.akR_3 or not Ov)) and 12) or (fns.akR_113 or fns.akR_113 or (not fns.akR_3) or fns.akR_113 and not fns.akR_3 and fns.akR_113) and ((fns.akR_113 or 12) and (fns.akR_113 or fns.akR_3))) then
    O0 = fns.akR_104:FindFirstChild("Spawnpoint")
else
    fns.akR_104 = O0:FindFirstChild("Spawnpoint")
end
Ocean = O0:FindFirstChild("Ocean")
Ov = 0
fns.akR_113 = akR_125:FindFirstChild("SeaLevel")
fns.akR_3 = fns.akR_113 and fns.akR_113:IsA("NumberValue")
if fns.akR_3 then
    Ov = fns.akR_113.Value
end
fns.akR_24, Oj, fns.akR_44 = nil, nil, nil
akR_125 = 5
repeat
    fns.akR_23 = (vector.create((akR_125 * 5 + 5) % 11 + 1, (akR_125 * 10 + 5) % 13 + 1, (akR_125 * 7 + 5) % 17 + 1))
    fns.akR_3 = (vector.create((akR_125 * 6 + 5) % 11 + 1, (akR_125 * 10 + 5) % 13 + 1, (akR_125 * 13 + 1) % 17 + 1))
    local apr = vector.dot(fns.akR_23, fns.akR_3)
    if apr * apr <= vector.dot(fns.akR_23, fns.akR_23) * vector.dot(fns.akR_3, fns.akR_3) then
        fns.akR_24 = RaycastParams.new()
        fns.akR_24.FilterType = Enum.RaycastFilterType.Exclude
        Oj = fns.fn1126
        fns.akR_44 = fns.fn1894
    else
        fns.akR_44 = RaycastParams.new()
        fns.akR_44.FilterType = Enum.RaycastFilterType.Exclude
        fns.akR_24 = fns.fn1126
        Oj = fns.fn1894
    end
    akR_125 = (akR_125 + 7) % 8
until (akR_125 * 3 + 0) % 8 == 4
if fns.akR_104 then
    for i, child in ipairs(fns.akR_104:GetChildren()) do
        akR_121[#akR_121 + 1] = child.Name
        akR_125 = child:IsA("BasePart") and Ocean
        if akR_125 then
            akR_125 = fns.akR_44(child.Position)
            if akR_125 then
                fns.akR_9[child.Name] = akR_125
                akR_141[#akR_141 + 1] = child.Name
            end
        end
    end
    akR_125 = 1
    repeat
        if akR_125 * 85625193 + 8 + 7 <= akR_125 * 85625193 + 8 + 7 + 1 then
            table.sort(akR_121)
            table.sort(akR_141)
        else
            table.sort(akR_141)
            table.sort(akR_121)
        end
        akR_125 = (akR_125 + 1) % 8
    until (akR_125 * 7 + 6) % 8 == 4
end
fns.akR_44 = 6
repeat
    akR_125 = {
        "yyqfg",
        "clcdhubhxe",
        "kriy",
        "luu",
        "xvlroxotkbj",
        "raig",
        "xpvnf",
        "qbnmpylsdgy",
        "pqpkf",
        "spbdptlzo"
    }
    local aot = fns.akR_44
    fns.akR_23 = akR_125[aot % 10 + 1]
    if fns.akR_23:len() >= fns.akR_23:gsub("(.)", "%1%1", aot % 3 % 2 + 1):len() then
        fns.akR_9["Bamboo Isle"] = CFrame.new(-1185.2945556641, 6.7623362541199, -21.12201499939, 0.10006111115217, 0, -0.99498128890991, 0, 1, 0, 0.99498128890991, 0, 0.10006111115217)
    else
        fns.akR_9["Bamboo Isle"] = CFrame.new(-1185.2945556641, 6.7623362541199, -21.12201499939, 0.10006111115217, 0, -0.99498128890991, 0, 1, 0, 0.99498128890991, 0, 0.10006111115217)
    end
    fns.akR_44 = (fns.akR_44 + 1) % 8
until (fns.akR_44 * 3 + 6) % 8 == 3
if not table.find(akR_141, "Bamboo Isle") then
    akR_125 = 6
    repeat
        fns.akR_44 = (vector.create((akR_125 * 3 + 2) % 11 + 1, (akR_125 * 6 + 4) % 13 + 1, (akR_125 * 8 + 11) % 17 + 1))
        fns.akR_23 = (vector.create((akR_125 * 2 + 3) % 11 + 1, (akR_125 * 1 + 7) % 13 + 1, (akR_125 * 4 + 17) % 17 + 1))
        fns.akR_3 = (vector.create((akR_125 * 4 + 8) % 11 + 1, (akR_125 * 10 + 1) % 13 + 1, (akR_125 * 3 + 1) % 17 + 1))
        if vector.dot(vector.cross(fns.akR_44, fns.akR_23), fns.akR_3) == vector.dot(vector.cross(fns.akR_23, fns.akR_3), fns.akR_44) then
            akR_141[#akR_141 + 1] = "Bamboo Isle"
            table.sort(akR_141)
        else
            akR_141[#akR_141 + 1] = "Bamboo Isle"
            table.sort(akR_141)
        end
        akR_125 = (akR_125 + 1) % 8
    until (akR_125 * 5 + 3) % 8 == 6
end
fns.akR_57 = function(eb)
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    local Ty = MainGui and MainGui:FindFirstChild("Menu")
    local Tx_1 = Ty
    if Ty then
        Ty = Tx_1:FindFirstChild("Compass")
    end
    local Tx_2 = Ty
    if Ty then
        Ty = Tx_2:FindFirstChild("AreaList")
    end
    local Tx_3 = Ty
    if Ty then
        Ty = Tx_3:FindFirstChild(eb)
    end
    local Tx_4 = Ty
    if not Tx_4 then
        return Nu[eb]
    end
    for i, descendant in ipairs(Tx_4:GetDescendants()) do
        local Tx_5 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if Tx_5 and descendant.Name == "Power" then
            local Tx_6 = tonumber(string.match(tostring(descendant.Text), "(%d+)"))
            if Tx_6 then
                Nu[eb] = Tx_6
                return Tx_6
            end
        end
    end
    return Nu[eb]
end
Ol = function(et)
    local TJ = fns.akR_57(et)
    if TJ then
        return string.format("%s | Level %d", et, TJ)
    end
    return string.format("%s | Level ?", et)
end
akR_125 = {}
for i, v in ipairs(akR_141) do
    fns.akR_44 = Ol(v)
    fns.akR_23 = #akR_125 + 1
    fns.akR_3 = Nu[v] or 9999
    akR_125[fns.akR_23] = { name = v, option = fns.akR_44, level = fns.akR_3 }
    fns.akR_43[fns.akR_44] = v
    fns.akR_43[v] = v
end
fns.akR_44 = 3
repeat
    fns.akR_23 = {
        "dgcfl",
        "bszqkv",
        "bjkjjxhb",
        "uisscajir",
        "othd",
        "mgp",
        "ghtcxx",
        "egupyjiuewkw",
        "bajd",
        "srunvzyvjgb",
        "fjrpap",
        "phqvqijfu",
        "yogkump"
    }
    if fns.akR_23[(fns.akR_44 * 20 + 91) % 13 + 1] < fns.akR_23[(fns.akR_44 * 20 + 91) % 13 + 1] then
        table.sort(akR_125, fns.fn2054)
    else
        table.sort(akR_125, fns.fn2054)
    end
    fns.akR_44 = (fns.akR_44 + 1) % 8
until (fns.akR_44 * 7 + 0) % 8 == 4
for i, v in ipairs(akR_125) do
    OQ[#OQ + 1] = v.option
end
akR_125 = {}
for i, v in ipairs(akR_121) do
    fns.akR_44 = Ol(v)
    fns.akR_23 = #akR_125 + 1
    fns.akR_3 = Nu[v] or 9999
    akR_125[fns.akR_23] = { name = v, option = fns.akR_44, level = fns.akR_3 }
    Nh[fns.akR_44] = v
    Nh[v] = v
end
table.sort(akR_125, fns.fn945)
for i, v in ipairs(akR_125) do
    akR_131[#akR_131 + 1] = v.option
end
Oz = {}
akR_125 = {}
fns.akR_44 = {}
for k in pairs(Ny) do
    fns.akR_23 = Ol(k)
    fns.akR_3 = #fns.akR_44 + 1
    fns.akR_113 = Nu[k] or 9999
    fns.akR_44[fns.akR_3] = { name = k, option = fns.akR_23, level = fns.akR_113 }
    Oz[fns.akR_23] = k
    Oz[k] = k
end
fns.akR_23 = 3
repeat
    fns.akR_3 = (vector.create((fns.akR_23 * 7 + 6) % 11 + 1, (fns.akR_23 * 6 + 10) % 13 + 1, (fns.akR_23 * 10 + 8) % 17 + 1))
    fns.akR_113 = (vector.create((fns.akR_23 * 1 + 5) % 11 + 1, (fns.akR_23 * 1 + 5) % 13 + 1, (fns.akR_23 * 14 + 2) % 17 + 1))
    local anL = vector.dot(fns.akR_3, fns.akR_113)
    if anL * anL <= vector.dot(fns.akR_3, fns.akR_3) * vector.dot(fns.akR_113, fns.akR_113) then
        table.sort(fns.akR_44, fns.fn2043)
    else
        table.sort(fns.akR_44, fns.fn2043)
    end
    fns.akR_23 = (fns.akR_23 + 4) % 8
until (fns.akR_23 * 3 + 4) % 8 == 1
for i, v in ipairs(fns.akR_44) do
    akR_125[#akR_125 + 1] = v.option
end
Nf, N6, NK, Ne, Mt, OV, OD, ME, NC = nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.akR_44 = 6
repeat
    fns.akR_23 = (fns.akR_44 * 1 + 0) % 5 + 1
    if fns.akR_23 <= 3 then
        if fns.akR_23 <= 2 then
            if fns.akR_23 <= 1 then
                fns.akR_3 = {
                    "gihtxlbakm",
                    "ldu",
                    "zybkiautbo",
                    "lpntx",
                    "farjhziqsihh",
                    "jhtvu",
                    "xdirbcsy",
                    "ksrpgqgz",
                    "eeopcc",
                    "kzzg",
                    "togabqqgqqlp",
                    "yhbc",
                    "ffvlvzj"
                }
                if fns.akR_3[(fns.akR_44 * 63 + 23) % 13 + 1] <= fns.akR_3[(fns.akR_44 * 63 + 23) % 13 + 1] then
                    Nf.getFishCaught = fns.fn560
                    Nf.CRAFT_INGREDIENTS = {}
                    Nf.FISH_NAMES = {}
                else
                    Nf.getFishCaught = fns.fn560
                    Nf.CRAFT_INGREDIENTS = {}
                    Nf.FISH_NAMES = {}
                end
                fns.akR_44 = (fns.akR_44 + 16) % 20
            else
                if fns.akR_44 * 107541255 + 4 + 7 <= fns.akR_44 * 107541255 + 4 + 7 + 6 then
                    N6 = fns.fn1231
                    NK = fns.fn125
                    Ne = fns.fn797
                    Mt = fns.fn184
                else
                    Mt = fns.fn1231
                    N6 = fns.fn125
                    NK = fns.fn797
                    Ne = fns.fn184
                end
                fns.akR_44 = (fns.akR_44 + 6) % 20
            end
        else
            fns.akR_3 = { "tfdfbtxkzo", "otholt", "ljwdl", "wnrdgcdkn", "ivdrwl", "rqdabonhytm", "cpugrdkkfp" }
            local apB = fns.akR_44
            fns.akR_113 = fns.akR_3[apB % 7 + 1]
            if fns.akR_113:len() >= fns.akR_113:gsub("(.)", "%1%1", apB % 3 % 2 + 1):len() then
                OD = fns.fn1212
                ME = fns.fn531
                OV = fns.fn494
            else
                OV = fns.fn1212
                OD = fns.fn531
                ME = fns.fn494
            end
            fns.akR_44 = (fns.akR_44 + 6) % 20
        end
    elseif fns.akR_23 <= 4 then
        fns.akR_23 = {
            "hdpj",
            "tjpv",
            "qfjkibnnqqi",
            "ybasx",
            "glshgfbmhwn",
            "srgmqrmu",
            "mkk",
            "ktx",
            "chv",
            "tcinsquyju"
        }
        local arg = fns.akR_44
        fns.akR_3 = fns.akR_23[arg % 10 + 1]
        if fns.akR_3:len() >= fns.akR_3:reverse():rep(arg % 3 + 2):len() then
            OV = fns.fn1805
        else
            NC = fns.fn1805
        end
        fns.akR_44 = (fns.akR_44 + 16) % 20
    else
        fns.akR_23 = {
            "bhdvevvvd",
            "jcxbsgrvpz",
            "tquizlzz",
            "hrna",
            "ktwoabyhc",
            "aixwculml",
            "yul",
            "fabtwnzxqmx",
            "zctbjc",
            "uwi",
            "ueahbi",
            "rweepobuxxkf"
        }
        if fns.akR_23[(fns.akR_44 * 52 + 33) % 12 + 1] < fns.akR_23[(fns.akR_44 * 52 + 33) % 12 + 1] then
            N6 = {
                fishSold = 0,
                minigameSession = nil,
                lastEnzoAttempt = 0,
                lastCompleteFire = 0,
                phase2Heartbeat = nil,
                minigameActive = false,
                eventIsle = nil,
                minigameNeed = 5,
                stuckSince = 0,
                rhythmLaneTargets = nil,
                skillSequenceReady = false,
                lastSecretBossTpAt = 0,
                minigameHeartbeat = nil,
                lastRemainingSeen = -1,
                preHuntCFrame = nil,
                lastDamageSeen = -1,
                lastPhase2Click = 0,
                castLockUntil = 0,
                rhythmHeartbeat = nil,
                enzoBusy = false,
                skillBusy = false,
                lastProgressFire = 0,
                savedFarmCFrame = nil,
                hardQuestBusy = false,
                lastSecretBossHunt = nil
            }
        else
            Nf = {
                castLockUntil = 0,
                minigameSession = nil,
                minigameNeed = 5,
                minigameHeartbeat = nil,
                minigameActive = false,
                lastProgressFire = 0,
                lastCompleteFire = 0,
                lastDamageSeen = -1,
                lastRemainingSeen = -1,
                stuckSince = 0,
                lastSecretBossHunt = nil,
                lastSecretBossTpAt = 0,
                eventIsle = nil,
                savedFarmCFrame = nil,
                hardQuestBusy = false,
                skillBusy = false,
                skillSequenceReady = false,
                enzoBusy = false,
                lastEnzoAttempt = 0,
                phase2Heartbeat = nil,
                lastPhase2Click = 0,
                rhythmHeartbeat = nil,
                rhythmLaneTargets = nil,
                preHuntCFrame = nil,
                fishSold = 0
            }
        end
        fns.akR_44 = (fns.akR_44 + 1) % 20
    end
until (fns.akR_44 * 11 + 4) % 20 == 5
for i, child in ipairs(fns.akR_28:GetChildren()) do
    if child:IsA("ModuleScript") then
        fns.akR_44 = Of(fns.akR_28, child.Name)
        fns.akR_23 = fns.akR_44 and type(fns.akR_44.Ingredient) == "table"
        if fns.akR_23 then
            Nf.CRAFT_INGREDIENTS[child.Name] = fns.akR_44.Ingredient
        end
    end
end
for i, child in ipairs(MH:GetChildren()) do
    if child:IsA("ModuleScript") then
        fns.akR_44 = Of(MH, child.Name)
        fns.akR_23 = fns.akR_44 and fns.akR_44.Type == "Fishing Rod" and type(fns.akR_44.Ingredient) == "table"
        if fns.akR_23 then
            Nf.CRAFT_INGREDIENTS[child.Name] = fns.akR_44.Ingredient
        else
            fns.akR_23 = fns.akR_44 and fns.akR_44.Type == "Fish"
            if fns.akR_23 then
                Nf.FISH_NAMES[#Nf.FISH_NAMES + 1] = child.Name
            end
        end
    end
end
table.sort(Nf.FISH_NAMES)
Nd, Oy, O2, Ou, fns.akR_60, Op, fns.akR_23, Nt, fns.akR_21, fns.akR_61, M5, NU, NE, Oh, NF, MZ, NW, fns.akR_12, Mx, M0, My, NI, fns.akR_19, Ni, M9, MO, O6, Oa, M3, MR, fns.akR_33, fns.akR_63, OT, MD, NO, MW, Ph, O3, OX, NX, OP, Oq, fns.akR_14, fns.akR_32, fns.akR_52, fns.akR_50, MG, O8, OK, Ox, Oc, O9, MI, OS, N7, NL, fns.akR_45, Og, Nx, ND, M6, MK, NV, fns.akR_53, OF, ML, N4, Pi, Nz, Ng, MM, Pc, fns.akR_55, fns.akR_11, Or, N0, OU, MU, Mu, fns.akR_113 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.akR_21 = fns.fn582
fns.akR_61 = fns.fn2181
M5 = fns.fn1519
Nf.getFishingStatus = fns.fn1406
NU = fns.fn104
NE = fns.fn1828
Oh = fns.fn810
NF = fns.fn38
MZ = fns.fn485
NW = function()
    local VS
    local Character = LocalPlayer.Character
    if not Character then
        return false
    elseif Character:GetAttribute("Type") == "Fishing Rod" then
        return true
    else
        local VV = Nk()
        local VW = VV and VV:FindFirstChild("FishingRod") and VV.FishingRod.Value
        VS = VW
        local VV_1 = OV()
        if VV_1 then
            VS = VV_1.Name
        end
        local VV_2 = VS == ""
        local VW_1 = type(VS) ~= "string" or VV_2
        if VW_1 then
            VS = "Wooden Rod"
        end
        pcall(function()
            MQ.EquipFishingRod:InvokeServer(VS)
        end)
        local VT = MZ()
        if VT then
            pcall(function()
                MQ.ToggleHotbar:InvokeServer(VT)
            end)
        end
        return Character:GetAttribute("Type") == "Fishing Rod"
    end
end
fns.akR_12 = fns.fn1975
Mx = fns.fn1740
M0 = fns.fn1544
My = fns.fn1132
NI = fns.fn2216
fns.akR_19 = fns.fn1153
Ni = fns.fn35
M9 = fns.fn1213
MO = fns.fn1518
O6 = function()
    local WO
    if os.clock() - Nf.lastPhase2Click < 0.03 then
        return
    end
    if not MO() then
        return
    end
    Nf.lastPhase2Click = os.clock()
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    local WQ = MainGui and MainGui:FindFirstChild("Mobile")
    local WP_1 = WQ
    if WQ then
        WQ = WP_1:FindFirstChild("Fishing")
    end
    local WN = WQ
    if WN then
        WO = false
        pcall(function()
            if firesignal then
                firesignal(WN.MouseButton1Down)
                WO = true
            elseif getconnections then
                for i, v in ipairs(getconnections(WN.MouseButton1Down)) do
                    if v.Fire then
                        v:Fire()
                        WO = true
                    elseif v.Function then
                        v.Function()
                        WO = true
                    end
                end
            end
        end)
        if WO then
            return
        end
    end
    pcall(function()
        MQ.BossPhase2Action:FireServer({ Hit = true })
    end)
end
Oa = fns.fn2380
Nd = { "A", "S", "D" }
Oy = { A = Enum.KeyCode.A, S = Enum.KeyCode.S, D = Enum.KeyCode.D }
M3 = fns.fn607
MR = function(jj)
    pcall(function()
        local VirtualInputManager = game:GetService("VirtualInputManager")
        VirtualInputManager:SendKeyEvent(true, jj, false, game)
        VirtualInputManager:SendKeyEvent(false, jj, false, game)
    end)
end
fns.akR_33 = fns.fn1430
fns.akR_63 = fns.fn614
if OF or NW or OF and not OF or (false or NW) and (N4 or OF) or (OF and N4 or (OF or N4) or (not N4 and OF or OF and false)) or not (OF or NW or OF and not OF or (false or NW) and (N4 or OF) or (OF and N4 or (OF or N4) or (not N4 and OF or OF and false))) then
    OT = fns.fn1253
    MD = fns.fn820
    NO = fns.fn1290
    MW = fns.fn2125
    Ph = fns.fn1102
else
    Ph = fns.fn1253
    NO = fns.fn820
    OT = fns.fn1290
    MD = fns.fn2125
    MW = fns.fn1102
end
O3 = fns.fn806
OX = fns.fn765
Nf.favoriteFishByName = fns.fn1115
Nf.unlockCraftIngredients = function(lG)
    local YA = Nf.CRAFT_INGREDIENTS[lG]
    if type(YA) ~= "table" then
        return
    end
    local YB = {}
    for k, v in pairs(YA) do
        if type(v) == "string" then
            YB[v] = true
        elseif type(k) == "string" then
            YB[k] = true
        end
    end
    if not next(YB) then
        return
    end
    local YA_1 = Nk()
    local YC = YA_1 and YA_1:FindFirstChild("Inventory")
    if not YC then
        return
    end
    for i, child in ipairs(YC:GetChildren()) do
        local YS = child
        local YA_3 = O3(YS.Name) and YB[Ph(YS.Name)]
        if YA_3 then
            pcall(function()
                MQ.FavoriteItem:FireServer(YS.Name)
            end)
            task.wait(0.05)
        end
    end
end
NX = fns.fn2123
OP = fns.fn922
Oq = fns.fn2049
fns.akR_14 = fns.fn1701
fns.akR_32 = function()
    local Zg
    Zg = Od.BuyRodName and Od.BuyRodName.Value
    local Zh_1 = Zg == ""
    local Zi = type(Zg) ~= "string" or Zh_1
    if Zi then
        return
    end
    if NK(Zg) then
        return
    end
    local Zh_2 = N8()
    local Zi_1 = Of(MH, Zg)
    local Zj = Zi_1 and tonumber(Zi_1.Cash)
    local Zi_2 = Zj
    if Zj then
        Zj = Zi_2 > Zh_2
    end
    if Zj then
        return
    end
    MQ.BuyFishingRod:FireServer(Zg)
    task.wait(0.25)
    pcall(function()
        MQ.EquipFishingRod:InvokeServer(Zg)
    end)
end
if not M5 and fns.akR_23 and (MW and M6) or not fns.akR_23 and not M6 and (fns.akR_23 or M6) or not (not M5 and fns.akR_23 and (MW and M6) or not fns.akR_23 and not M6 and (fns.akR_23 or M6)) then
    fns.akR_52 = function()
        local Zl
        Zl = Od.UseBaitName and Od.UseBaitName.Value
        local Zm_5 = Zl == ""
        local Zn = type(Zl) ~= "string" or Zm_5
        if Zn then
            return
        end
        local Zm_6 = Nk()
        local Zn_3 = Zm_6 and Zm_6:FindFirstChild("EquippedBait")
        local Zo = Zn_3
        if Zn_3 then
            Zn_3 = Zo.Value == Zl
        end
        if Zn_3 then
            return
        end
        local Zn_4 = Zm_6 and Zm_6:FindFirstChild("Bait")
        local Zm_7 = Zn_4
        if Zn_4 then
            Zn_4 = Zm_7:FindFirstChild(Zl)
        end
        local Zm_8 = Zn_4
        if Zn_4 then
            Zn_4 = Zm_8:IsA("NumberValue")
        end
        if Zn_4 then
            Zn_4 = Zm_8.Value <= 0
        end
        if Zn_4 then
            return
        end
        pcall(function()
            MQ.EquipBait:InvokeServer(Zl)
        end)
    end
    fns.akR_50 = fns.fn2301
    MG = function()
        local Zy = Mt()
        if Zy then
            MQ.BuyFishingRod:FireServer(Zy.Name)
            task.wait(0.35)
        end
        local Zz = OV()
        if Zz then
            pcall(function()
                MQ.EquipFishingRod:InvokeServer(Zz.Name)
            end)
        elseif Zy then
            pcall(function()
                MQ.EquipFishingRod:InvokeServer(Zy.Name)
            end)
        end
    end
    O8 = function()
        local ZB
        ZB = OD()
        if not ZB then
            return
        end
        MQ.BuyBait:FireServer(ZB.Name, 1)
        task.wait(0.25)
        pcall(function()
            MQ.EquipBait:InvokeServer(ZB.Name)
        end)
    end
    OK = fns.fn2359
else
    fns.akR_50 = function()
        local Zl
        Zl = Od.UseBaitName and Od.UseBaitName.Value
        local Zm_1 = Zl == ""
        local Zn = type(Zl) ~= "string" or Zm_1
        if Zn then
            return
        end
        local Zm_2 = Nk()
        local Zn_1 = Zm_2 and Zm_2:FindFirstChild("EquippedBait")
        local Zo = Zn_1
        if Zn_1 then
            Zn_1 = Zo.Value == Zl
        end
        if Zn_1 then
            return
        end
        local Zn_2 = Zm_2 and Zm_2:FindFirstChild("Bait")
        local Zm_3 = Zn_2
        if Zn_2 then
            Zn_2 = Zm_3:FindFirstChild(Zl)
        end
        local Zm_4 = Zn_2
        if Zn_2 then
            Zn_2 = Zm_4:IsA("NumberValue")
        end
        if Zn_2 then
            Zn_2 = Zm_4.Value <= 0
        end
        if Zn_2 then
            return
        end
        pcall(function()
            MQ.EquipBait:InvokeServer(Zl)
        end)
    end
    fns.akR_52 = fns.fn2301
    O8 = function()
        local Zy = Mt()
        if Zy then
            MQ.BuyFishingRod:FireServer(Zy.Name)
            task.wait(0.35)
        end
        local Zz = OV()
        if Zz then
            pcall(function()
                MQ.EquipFishingRod:InvokeServer(Zz.Name)
            end)
        elseif Zy then
            pcall(function()
                MQ.EquipFishingRod:InvokeServer(Zy.Name)
            end)
        end
    end
    OK = function()
        local ZB
        ZB = OD()
        if not ZB then
            return
        end
        MQ.BuyBait:FireServer(ZB.Name, 1)
        task.wait(0.25)
        pcall(function()
            MQ.EquipBait:InvokeServer(ZB.Name)
        end)
    end
    MG = fns.fn2359
end
Ox = function()
    local ZF
    ZF = NC()
    if not ZF then
        return
    end
    pcall(function()
        MQ.EquipSkill:InvokeServer(ZF.Name)
    end)
end
Oc = fns.fn996
O9 = fns.fn1080
MI = fns.fn1978
OS = fns.fn1789
N7 = fns.fn1460
NL = fns.fn2007
fns.akR_45 = function()
    local aaG, aaH
    if Nf.skillBusy then
        return
    end
    local Character2 = LocalPlayer.Character
    if not Character2 then
        return
    end
    if Character2:GetAttribute("SkillLocked") then
        return
    end
    if Character2:GetAttribute("Confused") == true then
        return
    end
    if Character2:GetAttribute("Phase2") == true then
        return
    end
    if NL() then
        return
    end
    local aaJ = Character2:GetAttribute("Minigame") ~= true and Character2:GetAttribute("Fishing") ~= true
    if aaJ then
        return
    end
    local aaI_1 = NU()
    if aaI_1 then
        aaI_1.Visible = true
        local SkillButton = aaI_1:FindFirstChild("SkillButton")
        if SkillButton then
            SkillButton.Visible = true
        end
    end
    aaG = OS()
    aaH = Od.SkillSequenceDelay and Od.SkillSequenceDelay.Value or 0.2
    Nf.skillBusy = true
    pcall(function()
        for i, v in ipairs(aaG) do
            if Mr.Unloaded then
                break
            else
                local Character = LocalPlayer.Character
                local aax = not Character or Character:GetAttribute("SkillLocked") or Character:GetAttribute("Confused") == true or Character:GetAttribute("Phase2") == true or NL()
                if not aax then
                    local aay = Character:GetAttribute("Minigame") ~= true and Character:GetAttribute("Fishing") ~= true
                    aax = aay
                end
                if aax then
                    break
                end
                local aaw_1 = Oc(v) and O9(v) and not MI(v)
                if aaw_1 then
                    MQ.UseSkill:FireServer(v)
                end
                task.wait(aaH)
            end
        end
    end)
    Nf.skillBusy = false
end
Og = fns.fn2006
O2 = { ["1"] = "Crystal", ["2"] = "EXP", ["3"] = "Trait_Reroll", ["4"] = "Ticket" }
Nx = function(pf)
    local aa0
    local aa1
    aa0 = nil
    aa1 = nil
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    local aa3 = MainGui and MainGui:FindFirstChild("Menu")
    local aa2_1 = aa3
    if aa3 then
        aa3 = aa2_1:FindFirstChild("Quest")
    end
    local aa2_2 = aa3
    if aa3 then
        aa3 = aa2_2:FindFirstChild("Menu")
    end
    if aa3 then
        aa3 = aa2_2.Menu:FindFirstChild("Daily_Quest")
    end
    local aa2_3 = aa3
    local aa3_1 = O2[tostring(pf)]
    local aa4 = aa2_3 and aa3_1 and aa2_3:FindFirstChild(aa3_1)
    local aa3_2 = aa4 and aa4:FindFirstChild("Claim")
    local aa2_5 = aa3_2
    if aa3_2 then
        aa3_2 = aa2_5:FindFirstChild("Button")
    end
    aa0 = aa3_2
    if not aa0 then
        return false
    end
    aa1 = false
    pcall(function()
        if firesignal then
            firesignal(aa0.MouseButton1Click)
            aa1 = true
        elseif getconnections then
            for i, v in ipairs(getconnections(aa0.MouseButton1Click)) do
                if v.Fire then
                    v:Fire()
                    aa1 = true
                elseif v.Function then
                    v.Function()
                    aa1 = true
                end
            end
        end
    end)
    return aa1
end
if (O3 and not ML and (OU and not OU) or (O3 and O3 or (OU or not O3))) and ((O3 or O3) and (O3 or ML) or O3 and not O3 and (not O3 or OU)) and not ((O3 and not ML and (OU and not OU) or (O3 and O3 or (OU or not O3))) and ((O3 or O3) and (O3 or ML) or O3 and not O3 and (not O3 or OU))) then
    fns.akR_60 = fns.fn2218
    ND = fns.fn3
    M6 = "Ticket Quest Giver"
    Ou = "Hard Ticket Quest"
else
    ND = fns.fn2218
    M6 = fns.fn3
    Ou = "Ticket Quest Giver"
    fns.akR_60 = "Hard Ticket Quest"
end
if (Nt or not Nz or (not fns.akR_113 or MI)) and (not MU or Nt or (fns.akR_55 or Nz)) and not ((Nt or not Nz or (not fns.akR_113 or MI)) and (not MU or Nt or (fns.akR_55 or Nz))) then
    MK = { ["Hard Ticket Quest"] = true, ["Ticket Quest"] = true, ["Easy Ticket Quest"] = true }
    Op = fns.fn1998
else
    Op = { ["Hard Ticket Quest"] = true, ["Easy Ticket Quest"] = true, ["Ticket Quest"] = true }
    MK = fns.fn1998
end
NV = fns.fn235
fns.akR_53 = fns.fn2032
OF = fns.fn777
ML = fns.fn1824
N4 = fns.fn1271
Pi = fns.fn222
Nz = fns.fn1054
Ng = fns.fn908
MM = fns.fn50
Pc = function(ra)
    local acC, acD
    if Nf.hardQuestBusy then
        return
    end
    local acE = MK()
    if not acE then
        return
    end
    Nf.hardQuestBusy = true
    local acE_1 = fns.akR_16()
    local acF = acE_1 and acE_1.CFrame
    acC = false
    acD = 0
    local connection = MQ.StartDialogue.OnClientEvent:Connect(function(rm, rn, ro, rp)
        local acv, acw
        local acx = acC or type(ro) ~= "table"
        if acx then
            return
        end
        acD += 1
        local acx_1 = ro[2]
        acw, acv = nil, nil
        if ra == "accept" then
            if acD == 1 then
                acw, acv = Ng(acx_1, "Quest")
            else
                acw, acv = Ng(acx_1, "HardAcceptQuest")
                acC = true
            end
        elseif acD == 1 then
            acw, acv = Ng(acx_1, "Quest")
            if not acw then
                acw, acv = MM(acx_1)
                acC = true
            end
        else
            acw, acv = MM(acx_1)
            if not acw then
                acw, acv = Ng(acx_1, "HardAcceptQuest")
            end
            acC = true
        end
        if acw and acv then
            task.delay(0.25, function()
                pcall(function()
                    MQ.ChooseDialogueOption:FireServer(rm, acw, acv, rp)
                end)
            end)
        else
            acC = true
        end
    end)
    NV()
    task.wait(0.35)
    Nz()
    local acG = os.clock() + 5
    while true do
        local acH = not acC and os.clock() < acG
        if acH then
            task.wait(0.1)
            continue
        end
        break
    end
    if connection then
        connection:Disconnect()
    end
    if ra == "claim" then
        pcall(function()
            MQ.ClaimQuest:FireServer(fns.akR_60)
        end)
    end
    if acF then
        local acF_2 = fns.akR_16()
        if acF_2 then
            acF_2.CFrame = acF
        end
    end
    Nf.hardQuestBusy = false
end
fns.akR_55 = fns.fn154
Nf.getQuestNpcModel = fns.fn258
Nf.teleportToQuestNpc = fns.fn858
Nf.turnInMainQuests = function()
    local ada = fns.akR_53()
    if not ada then
        return
    end
    local adb = fns.akR_16()
    local adc = adb and adb.CFrame
    local adb_1 = false
    for i, child in ipairs(ada:GetChildren()) do
        local adk = child
        local ada_1 = adk:IsA("Folder") and ND(adk)
        if ada_1 then
            if Nf.teleportToQuestNpc(adk.Name) then
                adb_1 = true
                task.wait(0.3)
            end
            pcall(function()
                MQ.ClaimQuest:FireServer(adk.Name)
            end)
            task.wait(0.3)
        end
    end
    if adb_1 and adc then
        local ada_3 = fns.akR_16()
        if ada_3 then
            ada_3.CFrame = adc
        end
    end
end
fns.akR_11 = function()
    local adl
    if Nf.enzoBusy then
        return
    end
    local adm = fns.akR_21()
    if not adm then
        return
    end
    local adn = adm:GetAttribute("OnCooldown") == true or adm:GetAttribute("InFight") == true
    if adn then
        return
    end
    local Character = LocalPlayer.Character
    local ado = Character and Character:GetAttribute("Phase2") == true
    if ado then
        return
    end
    if os.clock() - Nf.lastEnzoAttempt < 8 then
        return
    end
    local adn_2 = fns.akR_16()
    local HumanoidRootPart = adm:FindFirstChild("HumanoidRootPart")
    if adn_2 and HumanoidRootPart then
        adn_2.CFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
    end
    adl = Od.EnzoDifficulty and Od.EnzoDifficulty.Value or "Normal"
    if adl ~= "Hard" and adl ~= "Nightmare" then
        adl = "Normal"
    end
    Nf.enzoBusy = true
    Nf.lastEnzoAttempt = os.clock()
    pcall(function()
        MQ.StartBossFight:FireServer("Enzo", adl)
    end)
    task.wait(1)
    Nf.enzoBusy = false
end
Or = fns.fn675
N0 = fns.fn247
OU = fns.fn1214
MU = fns.fn2287
Mu = function()
    local adZ = NR("SecretBossIslands")
    if not next(adZ) then
        return
    end
    local attr = O0:GetAttribute("Weather")
    local adY
    local ad0
    local ad1 = attr ~= ""
    local ad2 = type(attr) == "string" and ad1
    if ad2 and attr ~= "Clear" then
        for k in pairs(adZ) do
            local adZ_1 = N6(k, Oz) or N6(k, Nh)
            local ad1_2 = adZ_1
            if adZ_1 then
                adZ_1 = Ny[ad1_2]
            end
            local ad2_1 = adZ_1
            if adZ_1 then
                adZ_1 = ad2_1.Weather == attr
            end
            if adZ_1 then
                ad0 = ad1_2
                adY = ad2_1
                break
            end
        end
    end
    if ad0 then
        local adZ_2 = Nf.eventIsle ~= ad0 or os.clock() - Nf.lastSecretBossTpAt > 8
        if adZ_2 then
            if not Nf.eventIsle and not Nf.preHuntCFrame then
                local adZ_4 = fns.akR_16()
                if adZ_4 then
                    Nf.preHuntCFrame = adZ_4.CFrame
                end
            end
            N0(ad0)
            OU(ad0)
            Nf.eventIsle = ad0
            Nf.lastSecretBossHunt = ad0
            Nf.lastSecretBossTpAt = os.clock()
        end
        local adZ_5 = adY.Bait and MC("AutoUseBait")
        if adZ_5 then
            local adZ_6 = Nk()
            local ad__1 = adZ_6 and adZ_6:FindFirstChild("EquippedBait")
            if not ad__1 or ad__1.Value ~= adY.Bait then
                pcall(function()
                    MQ.EquipBait:InvokeServer(adY.Bait)
                end)
            end
        end
        return
    end
    if Nf.eventIsle then
        MU()
        Nf.eventIsle = nil
        Nf.lastSecretBossHunt = nil
    end
end
fns.akR_23 = Mr:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = fns.akR_8, Copyable = true }, "|", fns.akR_2 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
Nt = {
    Info = fns.akR_23:AddTab("Info", "info"),
    Main = fns.akR_23:AddTab("Main", "fish"),
    Player = fns.akR_23:AddTab("Player", "person-standing"),
    Webhook = fns.akR_23:AddTab("Webhook", "webhook"),
    Settings = fns.akR_23:AddTab("Settings", "settings")
}
Nt.Farm = Nt.Main:AddSubTab("Farm", "fish")
Nt.Shop = Nt.Main:AddSubTab("Shop", "shopping-cart")
fns.akR_113 = fns.fn1551
for k, v in Nt do
    if v ~= Nt.Main then
        fns.akR_113(v)
    end
end
Os = nil
Os = "Unknown"
pcall(fns.fn361)
Label, N2 = nil, nil
fns.akR_23 = Nt.Info:AddLeftGroupbox("Account", "circle-user")
fns.akR_23:AddLabel(Nr("User", LocalPlayer.Name, fns.akR_40), true)
fns.akR_23:AddLabel(Nr("Status", "Keyless", fns.akR_40), true)
fns.akR_23:AddLabel(Nr("Executor", Os, fns.akR_40), true)
fns.akR_104 = Nt.Info:AddLeftGroupbox("Game Info", "gamepad-2")
fns.akR_104:AddLabel(O1(fns.akR_2 .. " [" .. tostring(game.PlaceId) .. "]", NQ), true)
fns.akR_104:AddLabel(Nr("Place ID", tostring(game.PlaceId), NQ), true)
Label = fns.akR_104:AddLabel(Nr("Session time", "0s", Pf), true)
N2 = tostring(game.JobId)
fns.akR_113 = #N2 > 18
if fns.akR_113 then
    fns.akR_44 = 2
    repeat
        if (fns.akR_44 * 1 + 1) * 21 % 4 == ((fns.akR_44 * 1 + 1) * 21 + 8) % 4 then
            fns.akR_113 = string.sub(N2, 1, 18) .. "..."
        else
            N2 = string.sub(fns.akR_113, 1, 18) .. "..."
        end
        fns.akR_44 = (fns.akR_44 + 0) % 4
    until (fns.akR_44 * 3 + 2) % 4 == 0
end
fns.akR_44 = fns.akR_113 or N2
NG, fns.akR_23, Label4, M7, Label3, Label2, fns.FeaturesGroup, fns.akR_113, fns.OuroborosHubGroup = nil, nil, nil, nil, nil, nil, nil, nil, nil
local akR_86 = fns.akR_44
fns.akR_104:AddLabel(Nr("Server", akR_86, fns.akR_81), true)
fns.akR_104:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
NG = os.clock()
if (fns.OuroborosHubGroup or not fns.FeaturesGroup or (fns.OuroborosHubGroup or 37)) and (fns.OuroborosHubGroup and (not fns.FeaturesGroup or not fns.OuroborosHubGroup) or not fns.OuroborosHubGroup and 37) or not ((fns.OuroborosHubGroup or not fns.FeaturesGroup or (fns.OuroborosHubGroup or 37)) and (fns.OuroborosHubGroup and (not fns.FeaturesGroup or not fns.OuroborosHubGroup) or not fns.OuroborosHubGroup and 37)) then
    task.spawn(fns.worker2)
    fns.akR_23 = Nt.Info:AddLeftGroupbox("Live Status", "activity")
    Label4 = fns.akR_23:AddLabel(Nr("Status", "Idle", fns.akR_40), true)
    M7 = fns.akR_23:AddLabel(Nr("Fish caught", "0", NQ), true)
    Label3 = fns.akR_23:AddLabel(Nr("Fish sold", "0", NQ), true)
    Label2 = fns.akR_23:AddLabel(Nr("Active secret boss", "None", Pf), true)
else
    task.spawn(fns.worker2)
    Nt = Label2.Info:AddLeftGroupbox("Live Status", "activity")
    fns.akR_40 = Nt:AddLabel(fns.akR_23("Status", "Idle", Label3), true)
    Pf = Nt:AddLabel(fns.akR_23("Fish caught", "0", Label4), true)
    M7 = Nt:AddLabel(fns.akR_23("Fish sold", "0", Label4), true)
    NQ = Nt:AddLabel(fns.akR_23("Active secret boss", "None", Nr), true)
end
task.spawn(fns.worker3)
local ScriptsGroup = Nt.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(O1("Included in this hub", fns.akR_81), true)
ScriptsGroup:AddLabel(O1(fns.akR_2, NQ), true)
fns.FeaturesGroup = Nt.Info:AddRightGroupbox("Features", "list")
if (Label4 or M7) and (M7 or not akR_86) and (not M7 or not Label2 or Label2 and not Label4) or (not akR_86 and Label4 or (M7 or Label4) or (not akR_86 and not akR_86 or M7 and Label2)) or not ((Label4 or M7) and (M7 or not akR_86) and (not M7 or not Label2 or Label2 and not Label4) or (not akR_86 and Label4 or (M7 or Label4) or (not akR_86 and not akR_86 or M7 and Label2))) then
    fns.FeaturesGroup:AddLabel(O1("Auto Farm", NQ), true)
    fns.FeaturesGroup:AddLabel(O1("Fish Anywhere", NQ), true)
    fns.FeaturesGroup:AddLabel(O1("Skill Sequence", NQ), true)
    fns.FeaturesGroup:AddLabel(O1("Boss Phase 2", NQ), true)
    fns.FeaturesGroup:AddLabel(O1("Enzo", NQ), true)
    fns.FeaturesGroup:AddLabel(O1("Secret Boss", Pf), true)
    fns.FeaturesGroup:AddLabel(O1("Special NPC", Pf), true)
    fns.FeaturesGroup:AddLabel(O1("Craft", Pf), true)
    fns.FeaturesGroup:AddLabel(O1("Auto Shop", Pf), true)
    fns.FeaturesGroup:AddLabel(O1("Teleport", fns.akR_81), true)
    fns.FeaturesGroup:AddLabel(O1("Webhook", NQ), true)
    fns.FeaturesGroup:AddLabel(O1("Performance", fns.akR_81), true)
    fns.FeaturesGroup:AddLabel(O1("Misc Utilities", fns.akR_81), true)
    fns.akR_113 = Nt.Info:AddRightGroupbox("Socials", "link")
else
    fns.akR_113:AddLabel(Pf("Auto Farm", O1), true)
    fns.akR_113:AddLabel(Pf("Fish Anywhere", O1), true)
    fns.akR_113:AddLabel(Pf("Skill Sequence", O1), true)
    fns.akR_113:AddLabel(Pf("Boss Phase 2", O1), true)
    fns.akR_113:AddLabel(Pf("Enzo", O1), true)
    fns.akR_113:AddLabel(Pf("Secret Boss", NQ), true)
    fns.akR_113:AddLabel(Pf("Special NPC", NQ), true)
    fns.akR_113:AddLabel(Pf("Craft", NQ), true)
    fns.akR_113:AddLabel(Pf("Auto Shop", NQ), true)
    fns.akR_113:AddLabel(Pf("Teleport", fns.FeaturesGroup), true)
    fns.akR_113:AddLabel(Pf("Webhook", O1), true)
    fns.akR_113:AddLabel(Pf("Performance", fns.FeaturesGroup), true)
    fns.akR_113:AddLabel(Pf("Misc Utilities", fns.FeaturesGroup), true)
    Nt = fns.akR_81.Info:AddRightGroupbox("Socials", "link")
end
fns.akR_113:AddButton({ Text = "Discord", Func = fns.akR_41 })
fns.akR_113:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
fns.OuroborosHubGroup = Nt.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
fns.OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
fns.OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
fns.OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
fns.OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = fns.akR_41 })
fns.akR_3 = Nt.Info:AddRightGroupbox("Donations", "heart")
fns.akR_3:AddLabel(O1("All donations are optional but appreciated.", Pf), true)
fns.akR_3:AddLabel(O1("If you donate you get a special role, just PING after you donate.", fns.akR_40), true)
fns.akR_3:AddDivider()
fns.akR_3:AddLabel(O1("LTC / Litecoin", fns.akR_72.LTC), true)
fns.akR_3:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
fns.akR_3:AddLabel(O1("BTC / Bitcoin", fns.akR_72.BTC), true)
fns.akR_3:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
fns.akR_3:AddLabel(O1("ETH / Ethereum", fns.akR_72.ETH), true)
fns.akR_3:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
fns.akR_3:AddLabel(O1("USDT", fns.akR_72.USDT), true)
fns.akR_3:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
fns.akR_3:AddLabel(O1("Solana", fns.akR_72.SOL), true)
fns.akR_3:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
fns.akR_3:AddLabel(O1("PayPal", fns.akR_72.PayPal), true)
fns.akR_3:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
fns.akR_3:AddLabel(O1("Venmo", fns.akR_72.Venmo), true)
fns.akR_3:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
fns.akR_3:AddDivider()
fns.akR_3:AddLabel(O1("Don't have any of the listed currencies but still wanna donate?", fns.akR_81), true)
fns.akR_3:AddLabel(O1("DM me and we'll work something out.", NQ), true)
local FaqGroup = Nt.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = Nt.Farm:AddLeftGroupbox("Farm", "fish")
FarmGroup:AddToggle("AutoCast", { Text = "Auto Cast", Default = false })
FarmGroup:AddToggle("FishAnywhere", {
    Text = "[Beta]Fish Anywhere",
    Default = false,
    Tooltip = "Pick a Fish Zone, then enable Auto Cast. Casts at that isle's water from anywhere."
})
fns.akR_81 = #OQ > 0 and OQ
fns.akR_72 = fns.akR_81
local akR_80 = if fns.akR_72 then 1 else 0
local akR_98 = 3761 * akR_80 + 2855 * (1 - akR_80)
local akR_89 = 2778 * akR_80 + 215 * (1 - akR_80)
if not ((akR_98 * 2384 + akR_89 * 995 + akR_98 * akR_89) % 16777213 == 5401179) then
    fns.akR_72 = akR_141
end
fns.akR_81 = OQ[1] or akR_141[1]
fns.akR_44 = fns.akR_81 or "Beginning Isle | Level 1"
fns.akR_81 = 1
repeat
    fns.akR_23 = {
        "ugwcamg",
        "syqxlmjxy",
        "unctkdnajhi",
        "unefcbowo",
        "jbxmr",
        "bqhbgq",
        "wdwx",
        "jzwmgdd",
        "wwqlusbxyfn",
        "wosdrdtuirs",
        "ydn",
        "gbpoouvk"
    }
    local anu = fns.akR_81
    fns.akR_3 = fns.akR_23[anu % 12 + 1]
    if fns.akR_3:len() >= fns.akR_3:gsub("(.)", "%1%1", anu % 3 % 2 + 1):len() then
        FarmGroup:AddDropdown("FishAnywhereZone", { Values = fns.akR_72, Default = FarmGroup, Text = "Fish Zone" })
        fns.akR_44:AddButton({
            Func = fns.onSaveFarmPosition,
            Text = "Save Farm Position",
            Tooltip = "Stand where you want to fish and click. Used by Lock Farm Position and as the spot you return to after a secret boss weather event."
        })
        fns.akR_44:AddToggle("LockFarmPosition", {
            Tooltip = "Keeps you on the saved spot. Skills that move you get corrected. During secret boss weather you leave this spot, then come back when Clear.",
            Default = false,
            Text = "Lock Farm Position"
        })
        fns.akR_44:AddToggle("AutoSellAll", { Text = "Auto Sell All Fish", Default = false })
        fns.akR_44:AddToggle("DontSellSecretBoss", { Text = "Don't Sell Secret Boss Fish", Default = true })
        fns.akR_44:AddToggle("AutoFavoriteSecretBoss", { Text = "Auto Favorite Secret Boss", Default = true })
        fns.akR_44:AddToggle("AutoFavoriteByName", { Text = "Auto Favorite Fish By Name", Default = false })
    else
        FarmGroup:AddDropdown("FishAnywhereZone", { Text = "Fish Zone", Values = fns.akR_72, Default = fns.akR_44 })
        FarmGroup:AddButton({
            Text = "Save Farm Position",
            Func = fns.onSaveFarmPosition,
            Tooltip = "Stand where you want to fish and click. Used by Lock Farm Position and as the spot you return to after a secret boss weather event."
        })
        FarmGroup:AddToggle("LockFarmPosition", {
            Text = "Lock Farm Position",
            Default = false,
            Tooltip = "Keeps you on the saved spot. Skills that move you get corrected. During secret boss weather you leave this spot, then come back when Clear."
        })
        FarmGroup:AddToggle("AutoSellAll", { Text = "Auto Sell All Fish", Default = false })
        FarmGroup:AddToggle("DontSellSecretBoss", { Text = "Don't Sell Secret Boss Fish", Default = true })
        FarmGroup:AddToggle("AutoFavoriteSecretBoss", { Text = "Auto Favorite Secret Boss", Default = true })
        FarmGroup:AddToggle("AutoFavoriteByName", { Text = "Auto Favorite Fish By Name", Default = false })
    end
    fns.akR_81 = (fns.akR_81 + 3) % 4
until (fns.akR_81 * 3 + 0) % 4 == 0
fns.akR_81 = #Nf.FISH_NAMES > 0 and Nf.FISH_NAMES
fns.akR_72 = { "Catfish" }
fns.akR_44 = fns.akR_81 or fns.akR_72
FarmGroup:AddDropdown("FavoriteFishNames", { Text = "Favorite Fish", Values = fns.akR_44, Multi = true, Default = {} })
FarmGroup:AddToggle("AutoSkill", {
    Text = "Skill Sequence",
    Default = false,
    Tooltip = "Uses equipped unlocked skills in order during Auto Cast bites."
})
FarmGroup:AddInput("SkillSequenceOrder", {
    Text = "Skill Order",
    Default = "Z, C, Z, V",
    Placeholder = "Z, C, Z, V",
    Finished = true,
    AllowEmpty = true
})
Od.SkillSequenceOrder:OnChanged(fns.fn992)
FarmGroup:AddSlider("SkillSequenceDelay", {
    Text = "Skill Delay",
    Default = 0.35,
    Min = 0.05,
    Max = 1.5,
    Rounding = 2,
    Tooltip = "Wait time between each skill in the sequence."
})
FarmGroup:AddToggle("AutoBossPhase2", {
    Text = "Auto Boss Phase 2",
    Default = true,
    Tooltip = "Auto hits Phase 2 for bosses like Enzo and Nameless Octoparasite."
})
FarmGroup:AddToggle("AutoEnzo", {
    Text = "Auto Enzo",
    Default = false,
    Tooltip = "Starts Enzo when ready, then auto-perfects slam/charge/rhythm minigames."
})
FarmGroup:AddDropdown("EnzoDifficulty", { Text = "Enzo Difficulty", Values = fns.akR_64, Default = "Normal" })
FarmGroup:AddToggle("AutoQuest", { Text = "Auto Quest", Default = false })
FarmGroup:AddToggle("AutoHardTicketQuest", { Text = "Auto Hard Ticket Quest", Default = false })
FarmGroup:AddToggle("AutoMainQuestTurnIn", {
    Text = "Auto Turn In Main Quest",
    Default = false,
    Tooltip = "When a main quest is complete, teleport to its NPC and claim it."
})
FarmGroup:AddToggle("AutoDailyReward", { Text = "Auto Claim Daily Reward", Default = false })
fns.akR_23 = Nt.Farm:AddLeftGroupbox("Secret Boss", "skull")
fns.akR_23:AddToggle("AutoSecretBossHunt", {
    Text = "Auto Hunt Secret Boss",
    Default = false,
    Tooltip = "When weather matches a selected island, farm that island. When weather is Clear, return to your saved farm position."
})
fns.akR_81 = #akR_125 > 0 and akR_125
akR_125 = fns.akR_81 or akR_131
fns.akR_23:AddDropdown("SecretBossIslands", { Text = "Secret Boss Islands", Values = akR_125, Multi = true, Default = {} })
fns.akR_72 = Nt.Farm:AddLeftGroupbox("Craft", "hammer")
if (not fns.akR_72 or not fns.akR_72) and (not fns.akR_72 or fns.akR_72) or false or not ((not fns.akR_72 or not fns.akR_72) and (not fns.akR_72 or fns.akR_72) or false) then
    fns.akR_72:AddToggle("AutoCraftBait", { Text = "Auto Craft Bait", Default = false })
else
    fns.akR_72:AddToggle("AutoCraftBait", { Text = "Auto Craft Bait", Default = false })
end
akR_125 = #akR_145 > 0 and akR_145
fns.akR_81 = { "Rainbow Bait", "Frost Bait" }
fns.akR_64 = akR_125 or fns.akR_81
akR_125 = akR_145[1] or "Rainbow Bait"
fns.akR_72:AddDropdown("CraftBaitName", { Text = "Craft Bait", Values = fns.akR_64, Default = akR_125 })
fns.akR_72:AddToggle("AutoCraftRod", { Text = "Auto Craft Rod", Default = false })
akR_145 = #fns.akR_108 > 0 and fns.akR_108
akR_125 = { "Heavenpiercer Rod" }
fns.akR_81 = akR_145 or akR_125
akR_145 = fns.akR_108[1] or "Heavenpiercer Rod"
fns.akR_72:AddDropdown("CraftRodName", { Text = "Craft Rod", Values = fns.akR_81, Default = akR_145 })
fns.akR_108 = Nt.Farm:AddLeftGroupbox("Auto Summon", "sparkles")
fns.akR_108:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
akR_145 = onCharacterAdded[1] or "Egoless Banner"
fns.akR_108:AddDropdown("SummonBanner", { Text = "Banner", Values = onCharacterAdded, Default = akR_145 })
fns.akR_108:AddDropdown("SummonMode", { Text = "Summon Mode", Values = akR_117, Default = "Summon" })
fns.akR_81 = Nt.Shop:AddLeftGroupbox("Shop", "shopping-cart")
fns.akR_81:AddToggle("AutoBuyBestRod", { Text = "Auto Buy Best Rod", Default = false })
fns.akR_81:AddToggle("AutoBuyBestBait", { Text = "Auto Buy Best Bait", Default = false })
fns.akR_81:AddToggle("AutoBuyBestSkill", { Text = "Auto Buy Best Skill", Default = false })
fns.akR_81:AddToggle("AutoEquipBestSkill", { Text = "Auto Equip Best Skill", Default = false })
fns.akR_81:AddToggle("AutoBuySelectedRod", { Text = "Auto Buy Rod", Default = false })
akR_145 = #fns.akR_90 > 0 and fns.akR_90
onCharacterAdded = { "Wooden Rod" }
akR_125 = akR_145 or onCharacterAdded
akR_145 = fns.akR_90[1] or "Wooden Rod"
onCharacterAdded = 4
repeat
    akR_117 = {
        "zdrz",
        "vhuqzadx",
        "ogkzilwe",
        "cwu",
        "fdxlmlijl",
        "rnvlvl",
        "wadx",
        "vrjzcht",
        "ljefiudgcly",
        "jvdi",
        "yrne"
    }
    local aqL = onCharacterAdded
    fns.akR_108 = akR_117[aqL % 11 + 1]
    if fns.akR_108:len() >= fns.akR_108:reverse():rep(aqL % 3 + 2):len() then
        fns.akR_81:AddDropdown("BuyRodName", { Default = fns.akR_81, Values = akR_125, Text = "Buy Rod" })
        akR_145:AddToggle("AutoBuySelectedBait", { Text = "Auto Buy Bait", Default = false })
    else
        fns.akR_81:AddDropdown("BuyRodName", { Text = "Buy Rod", Values = akR_125, Default = akR_145 })
        fns.akR_81:AddToggle("AutoBuySelectedBait", { Text = "Auto Buy Bait", Default = false })
    end
    onCharacterAdded = (onCharacterAdded + 2) % 8
until (onCharacterAdded * 3 + 1) % 8 == 3
akR_145 = #fns.akR_99 > 0 and fns.akR_99
onCharacterAdded = { "Basic Bait" }
akR_125 = akR_145 or onCharacterAdded
akR_145 = fns.akR_99[1] or "Basic Bait"
onCharacterAdded, fns.akR_108 = nil, nil
akR_117 = 2
repeat
    fns.akR_99 = (akR_117 * 1 + 0) % 2 + 1
    if fns.akR_99 <= 1 then
        if (akR_117 * 3 + 7) * 5 % 4 == ((akR_117 * 3 + 7) * 5 + 14) % 4 then
            fns.akR_81:AddDropdown("BuyBaitName", { Text = "Buy Bait", Default = onCharacterAdded, Values = akR_125 })
            akR_145:AddSlider("BuyBaitQuantity", { Min = 1, Text = "Buy Bait Quantity", Rounding = 0, Default = 1, Max = 100 })
            akR_145:AddToggle("AutoUseBait", { Text = "Auto Use Bait", Default = false })
            akR_145:AddDropdown("UseBaitName", { Default = "Basic Bait", Text = "Use Bait", Values = fns.fn1746() })
            Nt = fns.akR_81.Farm:AddRightGroupbox("Misc", "sparkles")
        else
            fns.akR_81:AddDropdown("BuyBaitName", { Text = "Buy Bait", Values = akR_125, Default = akR_145 })
            fns.akR_81:AddSlider("BuyBaitQuantity", { Text = "Buy Bait Quantity", Default = 1, Min = 1, Max = 100, Rounding = 0 })
            fns.akR_81:AddToggle("AutoUseBait", { Text = "Auto Use Bait", Default = false })
            fns.akR_81:AddDropdown("UseBaitName", { Text = "Use Bait", Values = fns.fn1746(), Default = "Basic Bait" })
            onCharacterAdded = Nt.Farm:AddRightGroupbox("Misc", "sparkles")
        end
        akR_117 = (akR_117 + 7) % 8
    else
        fns.akR_99 = (vector.create((akR_117 * 1 + 8) % 11 + 1, (akR_117 * 10 + 3) % 13 + 1, (akR_117 * 14 + 2) % 17 + 1))
        local apn = vector.floor(fns.akR_99) + vector.ceil(fns.akR_99 * -1)
        if vector.dot(apn, apn) == 0 then
            onCharacterAdded:AddToggle("AutoRedeemCodes", { Text = "Auto Code Redeem", Default = false })
            onCharacterAdded:AddButton({ Text = "Redeem All Codes", Func = fns.onRedeemAllCodes })
            onCharacterAdded:AddButton({ Text = "Sell All Fish", Func = fns.onSellAllFish })
            fns.akR_108 = Nt.Farm:AddRightGroupbox("Teleport Pulau", "map-pin")
        else
            Nt:AddToggle("AutoRedeemCodes", { Text = "Auto Code Redeem", Default = false })
            Nt:AddButton({ Text = "Redeem All Codes", Func = fns.onRedeemAllCodes })
            Nt:AddButton({ Text = "Sell All Fish", Func = fns.onSellAllFish })
            onCharacterAdded = fns.akR_108.Farm:AddRightGroupbox("Teleport Pulau", "map-pin")
        end
        akR_117 = (akR_117 + 3) % 8
    end
until (akR_117 * 5 + 6) % 8 == 2
akR_145 = #akR_131 > 0 and akR_131
onCharacterAdded = akR_145 or akR_121
akR_145 = akR_131[1] or akR_121[1]
akR_125 = akR_145
akR_80 = if akR_125 then 1 else 0
akR_98 = 2892 * akR_80 + 1417 * (1 - akR_80)
akR_89 = 681 * akR_80 + 3034 * (1 - akR_80)
if not ((akR_98 * 543 + akR_89 * 1293 + akR_98 * akR_89) % 16777213 == 4420341) then
    akR_125 = "Beginning Isle | Level 1"
end
akR_145 = 2
repeat
    akR_117 = {
        "udnzjff",
        "qzqavu",
        "vqjjhgie",
        "mbckvrurcx",
        "vgqj",
        "agrugv",
        "edbrnfjrzf",
        "qyh",
        "ufft",
        "ootgf",
        "yhozq",
        "phjzvboqz"
    }
    if akR_117[(akR_145 * 50 + 103) % 12 + 1] <= akR_117[(akR_145 * 50 + 103) % 12 + 1] then
        fns.akR_108:AddDropdown("IslandTeleport", { Text = "Island", Values = onCharacterAdded, Default = akR_125 })
        fns.akR_108:AddButton({ Text = "Teleport Pulau", Func = fns.onTeleportPulau })
    else
        fns.akR_108:AddDropdown("IslandTeleport", { Text = "Island", Default = fns.akR_108, Values = onCharacterAdded })
        akR_125:AddButton({ Text = "Teleport Pulau", Func = fns.onTeleportPulau })
    end
    akR_145 = (akR_145 + 0) % 4
until (akR_145 * 1 + 3) % 4 == 1
akR_145 = #Oi > 0 and Oi
onCharacterAdded = { "None" }
akR_125 = akR_145
akR_80 = if akR_125 then 1 else 0
akR_98 = 436 * akR_80 + 3124 * (1 - akR_80)
akR_89 = 766 * akR_80 + 383 * (1 - akR_80)
if not ((akR_98 * 1948 + akR_89 * 2732 + akR_98 * akR_89) % 16777213 == 3276016) then
    akR_125 = onCharacterAdded
end
akR_145 = Oi[1]
local akR_138 = if akR_145 then 1 else 0
local akR_17 = 2992 * akR_138 + 2426 * (1 - akR_138)
local akR_148 = 2260 * akR_138 + 3235 * (1 - akR_138)
if not ((akR_17 * 1065 + akR_148 * 2488 + akR_17 * akR_148) % 16777213 == 15571280) then
    akR_145 = "None"
end
onCharacterAdded = 0
repeat
    akR_117 = {
        "wcsjornglait",
        "kxdnukx",
        "qlqpqfk",
        "jcz",
        "iclrpkc",
        "lrkaxihds",
        "oxswcdykh",
        "febhzkg",
        "guqxyfrdt",
        "jnos",
        "rfgnglifaeyu",
        "dlujrmhzznwy",
        "wcvxxxjmjxg"
    }
    if akR_117[(onCharacterAdded * 38 + 9) % 13 + 1] < akR_117[(onCharacterAdded * 38 + 9) % 13 + 1] then
        fns.akR_108:AddDropdown("NpcTeleport", { Text = "NPC", Default = fns.akR_108, Values = akR_125 })
        akR_145:AddButton({
            Text = "Refresh NPC",
            Func = function()
                local aeI = NH()
                if Od.NpcTeleport then
                    pcall(function()
                        Od.NpcTeleport:SetValues(aeI)
                    end)
                    if aeI[1] then
                        pcall(function()
                            Od.NpcTeleport:SetValue(aeI[1])
                        end)
                    end
                end
                local aeJ = 0
                for i, v in ipairs(aeI) do
                    if string.find(v, "Special -", 1, true) then
                        aeJ += 1
                    end
                end
                Mr:Notify(("NPC list refreshed (%d special)"):format(aeJ))
            end
        })
        akR_145:AddButton({ Text = "Teleport NPC", Func = fns.onTeleportNPC })
    else
        fns.akR_108:AddDropdown("NpcTeleport", { Text = "NPC", Values = akR_125, Default = akR_145 })
        fns.akR_108:AddButton({
            Text = "Refresh NPC",
            Func = function()
                local aeI = NH()
                if Od.NpcTeleport then
                    pcall(function()
                        Od.NpcTeleport:SetValues(aeI)
                    end)
                    if aeI[1] then
                        pcall(function()
                            Od.NpcTeleport:SetValue(aeI[1])
                        end)
                    end
                end
                local aeJ = 0
                for i, v in ipairs(aeI) do
                    if string.find(v, "Special -", 1, true) then
                        aeJ += 1
                    end
                end
                Mr:Notify(("NPC list refreshed (%d special)"):format(aeJ))
            end
        })
        fns.akR_108:AddButton({ Text = "Teleport NPC", Func = fns.onTeleportNPC })
    end
    onCharacterAdded = (onCharacterAdded + 2) % 4
until (onCharacterAdded * 1 + 3) % 4 == 1
fns.akR_90 = Nt.Player:AddLeftGroupbox("Movement", "footprints")
fns.akR_90:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
fns.akR_90:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
fns.akR_90:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
fns.akR_90:AddToggle("NoClip", { Text = "NoClip", Default = false })
fns.akR_90:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
fns.akR_81 = Nt.Player:AddRightGroupbox("Fly", "feather")
fns.akR_81:AddToggle("Fly", { Text = "Fly", Default = false })
fns.akR_81:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
fns.akR_99 = Nt.Player:AddRightGroupbox("Performance", "gauge")
fns.akR_99:AddToggle("BoostFps", { Text = "FPS Boost", Default = false })
fns.akR_99:AddToggle("HideName", {
    Text = "Hide Name",
    Default = false,
    Tooltip = "Replaces the name above your head with Ouroboros Hub."
})
akR_145 = syn and syn.request
onCharacterAdded = akR_145
if not onCharacterAdded then
    akR_145 = http and http.request
    onCharacterAdded = akR_145
end
if not onCharacterAdded then
    onCharacterAdded = http_request
end
if not onCharacterAdded then
    onCharacterAdded = request
end
Np, OI, Nj, OG, fns.akR_29, Ow, M1, MP, Pj, Oe, Pl, Nw, Pe, N1, Ns, MT, NS, fns.akR_26 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Np = onCharacterAdded
OI = "Ouroboros Hub"
Nj = nil
OG = nil
fns.akR_29 = {}
Ow = {
    charge = nil,
    slam = nil,
    minigame = nil,
    rhythmStart = nil,
    rhythmStop = nil,
    character = nil,
    notifyFish = nil,
    chatAnnounce = nil,
    weather = nil,
    hideName = nil,
    hideNameText = nil
}
M1 = fns.fn1538
MP = fns.fn578
Pj = function(v8)
    local ae4
    local ae6_4
    local ae5 = Od.WebhookUrl
    local ae5_2
    if ae5 then
        local ae6_1 = Od.WebhookUrl.Value or ""
        ae5 = tostring(ae6_1)
    end
    ae4 = ae5 or ""
    local ae5_1 = ae4 == ""
    local ae6_3 = not Np
    local afb = if ae6_3 then 1 else 0
    local ae9 = 4081 * afb + 3649 * (1 - afb)
    local afa = 2011 * afb + 241 * (1 - afb)
    if not ((ae9 * 561 + afa * 1879 + ae9 * afa) % 16777213 == 14275001) then
        ae6_3 = ae5_1
    end
    if ae6_3 then
        return false
    end
    ae5_2, ae6_4 = pcall(function()
        return Np({
            Url = ae4,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = HttpService:JSONEncode(v8)
        })
    end)
    if not ae5_2 then
        return false
    end
    local ae5_3 = ae6_4
    if ae5_3 then
        ae5_3 = ae6_4.StatusCode or ae6_4.Status
    end
    local ae6_5 = ae5_3
    local ae5_4 = ae6_5 == nil
    if not ae5_4 then
        ae5_4 = ae6_5 >= 200 and ae6_5 < 300
    end
    return ae5_4
end
Oe = fns.fn1675
Pl = fns.fn2101
Nw = fns.fn1084
Pe = fns.fn640
N1 = fns.fn1000
Ns = fns.fn2193
MT = fns.fn1321
NS = fns.fn1884
fns.akR_26 = function(xn)
    NS()
    local af5 = MT(xn)
    if not af5 then
        return
    end
    OG = af5
    if MC("HideName") then
        if Nj == nil then
            Nj = af5.Text
        end
        af5.Text = OI
        Ow.hideNameText = af5:GetPropertyChangedSignal("Text"):Connect(function()
            local af0 = Mr.Unloaded or not MC("HideName")
            if af0 then
                return
            end
            if af5.Text ~= OI then
                if Nj == nil then
                    Nj = af5.Text
                end
                af5.Text = OI
            end
        end)
    elseif Nj ~= nil then
        af5.Text = Nj
        Nj = nil
    end
end
akR_125 = Nt.Webhook:AddLeftGroupbox("Webhook", "webhook")
akR_125:AddToggle("WebhookEnabled", { Text = "Enable Webhook", Default = false })
akR_125:AddInput("WebhookUrl", {
    Text = "Webhook URL",
    Default = "",
    Placeholder = "https://discord.com/api/webhooks/...",
    Finished = true
})
akR_125:AddInput("WebhookPingId", { Text = "Ping User ID", Default = "", Placeholder = "Discord user id (optional)", Finished = true })
akR_125:AddToggle("WebhookPingEveryone", { Text = "Ping @everyone", Default = false })
akR_125:AddButton({ Text = "Send Test Message", Func = fns.onSendTestMessage })
fns.akR_108 = Nt.Webhook:AddRightGroupbox("Configuration", "list-filter")
fns.akR_108:AddToggle("WebhookFishCaught", { Text = "Fish Caught", Default = true })
fns.akR_108:AddSlider("WebhookMinCash", { Text = "Min Fish Cash", Default = 0, Min = 0, Max = 1000000, Rounding = 0 })
fns.akR_108:AddToggle("WebhookSecretBossOnly", { Text = "Secret Boss Fish Only", Default = false })
fns.akR_108:AddToggle("WebhookBossFish", { Text = "Boss Fish", Default = true })
fns.akR_108:AddToggle("WebhookMerchant", { Text = "Merchant Spawn", Default = true })
fns.akR_108:AddToggle("WebhookWeather", { Text = "Weather Changes", Default = true })
fns.akR_108:AddToggle("WebhookChatAnnounce", { Text = "Chat Announcements", Default = false })
onCharacterAdded = nil
akR_145 = 5
repeat
    local aoi = bit32.rrotate(bit32.bxor(bit32.lrotate(akR_145, 29), string.byte(tostring(onCharacterAdded))), 11)
    if bit32.bxor(bit32.lrotate(bit32.bxor(aoi, 1682588810), 24), 2321828420) == bit32.lrotate(aoi, 24) then
        Ow.charge = MQ.Charge.OnClientEvent:Connect(function(xN)
            local agd = Mr.Unloaded or not M5()
            if agd then
                return
            end
            task.defer(function()
                pcall(function()
                    xN:FireServer()
                end)
                pcall(function()
                    local aga = NU()
                    local agb = aga and aga:FindFirstChild("TrashCan")
                    local aga_3 = agb
                    if agb then
                        agb = aga_3:FindFirstChild("Charge")
                    end
                    local aga_4 = agb
                    if aga_4 then
                        aga_4:Destroy()
                    end
                end)
            end)
        end)
        Ow.slam = MQ.Slam.OnClientEvent:Connect(function(x0)
            local ags = Mr.Unloaded or not M5()
            if ags then
                return
            end
            task.spawn(function()
                local agj = os.clock() + 2.4
                local ago = false
                repeat
                    local agk = os.clock() < agj and not Mr.Unloaded
                    if agk then
                        local agk_4 = NU()
                        local agl = agk_4 and agk_4:FindFirstChild("TrashCan")
                        local agk_5 = agl
                        if agl then
                            agl = agk_5:FindFirstChild("Slam")
                        end
                        local agi = agl
                        local agk_6 = agi and agi:FindFirstChild("Button")
                        local agl_3 = agk_6
                        if agk_6 then
                            agk_6 = agl_3:FindFirstChild("Line")
                        end
                        local agl_4 = agk_6
                        if agk_6 then
                            agk_6 = agl_4.Size.X.Scale < 1.15
                        end
                        if agk_6 then
                            pcall(function()
                                x0:FireServer("Perfect")
                            end)
                            pcall(function()
                                agi:Destroy()
                            end)
                            return
                        end
                        task.wait()
                    else
                        ago = true
                    end
                until ago
                pcall(function()
                    x0:FireServer("Perfect")
                end)
                pcall(function()
                    local agf = NU()
                    local agg = agf and agf:FindFirstChild("TrashCan")
                    local agf_3 = agg
                    if agg then
                        agg = agf_3:FindFirstChild("Slam")
                    end
                    local agf_4 = agg
                    if agf_4 then
                        agf_4:Destroy()
                    end
                end)
            end)
        end)
        Ow.minigame = MQ.FishingMinigame.OnClientEvent:Connect(fns.onOnClientEvent3)
        Ow.rhythmStart = MQ.RhythmStart.OnClientEvent:Connect(fns.onOnClientEvent2)
        Ow.rhythmStop = MQ.RhythmStop.OnClientEvent:Connect(fns.onOnClientEvent)
        onCharacterAdded = function(yL)
            if not yL then
                return
            end
            yL:GetAttributeChangedSignal("Minigame"):Connect(function()
                if yL:GetAttribute("Minigame") == true then
                    if M5() then
                        Og()
                        MD(Nf.minigameSession, Nf.minigameNeed)
                        if N7() then
                            fns.akR_33()
                            OT()
                        end
                    elseif MC("AutoSkill") then
                        Og()
                    end
                else
                    NE()
                    fns.akR_19()
                    M3()
                    Nf.castLockUntil = os.clock() + 0.6
                end
            end)
            yL:GetAttributeChangedSignal("Fishing"):Connect(function()
                local agD = yL:GetAttribute("Fishing") ~= true and yL:GetAttribute("Minigame") ~= true
                if agD then
                    NE()
                    fns.akR_19()
                end
            end)
            yL:GetAttributeChangedSignal("Phase2"):Connect(function()
                if yL:GetAttribute("Phase2") == true then
                    Oa()
                end
            end)
            local agL = if yL:GetAttribute("Phase2") == true then 1 else 0
            if agL == 1 then
                Oa()
            end
            task.defer(function()
                local HumanoidRootPart = yL:WaitForChild("HumanoidRootPart", 5)
                if not HumanoidRootPart then
                    return
                end
                HumanoidRootPart:WaitForChild("EquippedTitle", 5)
                Nj = nil
                fns.akR_26(yL)
            end)
        end
    else
        onCharacterAdded.charge = Ow.Charge.OnClientEvent:Connect(function(xN)
            local agd = Mr.Unloaded or not M5()
            if agd then
                return
            end
            task.defer(function()
                pcall(function()
                    xN:FireServer()
                end)
                pcall(function()
                    local aga = NU()
                    local agb = aga and aga:FindFirstChild("TrashCan")
                    local aga_1 = agb
                    if agb then
                        agb = aga_1:FindFirstChild("Charge")
                    end
                    local aga_2 = agb
                    if aga_2 then
                        aga_2:Destroy()
                    end
                end)
            end)
        end)
        onCharacterAdded.slam = Ow.Slam.OnClientEvent:Connect(function(x0)
            local ags = Mr.Unloaded or not M5()
            if ags then
                return
            end
            task.spawn(function()
                local agj = os.clock() + 2.4
                local ago = false
                repeat
                    local agk = os.clock() < agj and not Mr.Unloaded
                    if agk then
                        local agk_1 = NU()
                        local agl = agk_1 and agk_1:FindFirstChild("TrashCan")
                        local agk_2 = agl
                        if agl then
                            agl = agk_2:FindFirstChild("Slam")
                        end
                        local agi = agl
                        local agk_3 = agi and agi:FindFirstChild("Button")
                        local agl_1 = agk_3
                        if agk_3 then
                            agk_3 = agl_1:FindFirstChild("Line")
                        end
                        local agl_2 = agk_3
                        if agk_3 then
                            agk_3 = agl_2.Size.X.Scale < 1.15
                        end
                        if agk_3 then
                            pcall(function()
                                x0:FireServer("Perfect")
                            end)
                            pcall(function()
                                agi:Destroy()
                            end)
                            return
                        end
                        task.wait()
                    else
                        ago = true
                    end
                until ago
                pcall(function()
                    x0:FireServer("Perfect")
                end)
                pcall(function()
                    local agf = NU()
                    local agg = agf and agf:FindFirstChild("TrashCan")
                    local agf_1 = agg
                    if agg then
                        agg = agf_1:FindFirstChild("Slam")
                    end
                    local agf_2 = agg
                    if agf_2 then
                        agf_2:Destroy()
                    end
                end)
            end)
        end)
        onCharacterAdded.minigame = Ow.FishingMinigame.OnClientEvent:Connect(fns.onOnClientEvent3)
        onCharacterAdded.rhythmStart = Ow.RhythmStart.OnClientEvent:Connect(fns.onOnClientEvent2)
        onCharacterAdded.rhythmStop = Ow.RhythmStop.OnClientEvent:Connect(fns.onOnClientEvent)
        MQ = function(yL)
            if not yL then
                return
            end
            yL:GetAttributeChangedSignal("Minigame"):Connect(function()
                if yL:GetAttribute("Minigame") == true then
                    if M5() then
                        Og()
                        MD(Nf.minigameSession, Nf.minigameNeed)
                        if N7() then
                            fns.akR_33()
                            OT()
                        end
                    elseif MC("AutoSkill") then
                        Og()
                    end
                else
                    NE()
                    fns.akR_19()
                    M3()
                    Nf.castLockUntil = os.clock() + 0.6
                end
            end)
            yL:GetAttributeChangedSignal("Fishing"):Connect(function()
                local agD = yL:GetAttribute("Fishing") ~= true and yL:GetAttribute("Minigame") ~= true
                if agD then
                    NE()
                    fns.akR_19()
                end
            end)
            yL:GetAttributeChangedSignal("Phase2"):Connect(function()
                if yL:GetAttribute("Phase2") == true then
                    Oa()
                end
            end)
            local agL = if yL:GetAttribute("Phase2") == true then 1 else 0
            if agL == 1 then
                Oa()
            end
            task.defer(function()
                local HumanoidRootPart = yL:WaitForChild("HumanoidRootPart", 5)
                if not HumanoidRootPart then
                    return
                end
                HumanoidRootPart:WaitForChild("EquippedTitle", 5)
                Nj = nil
                fns.akR_26(yL)
            end)
        end
    end
    akR_145 = (akR_145 + 5) % 8
until (akR_145 * 3 + 6) % 8 == 4
if LocalPlayer.Character then
    onCharacterAdded(LocalPlayer.Character)
end
akR_145 = 3
repeat
    akR_125 = {
        "ajdvqotgbfjj",
        "hhtnartqpi",
        "dbtun",
        "dsclxjoqokz",
        "mnsdqeivgkb",
        "yqzupotsfz",
        "euvvr",
        "pkxrfz",
        "efkwl",
        "xgtuntcjzmw",
        "yzk"
    }
    if akR_125[(akR_145 * 12 + 14) % 11 + 1] < akR_125[(akR_145 * 12 + 14) % 11 + 1] then
        onCharacterAdded.character = Toggles.CharacterAdded:Connect(O0)
        LocalPlayer()
        onCharacterAdded.notifyFish = Oa.NotifyFish.OnClientEvent:Connect(fns.onOnClientEvent5)
        onCharacterAdded.chatAnnounce = Oa.ChatAnnounce.OnClientEvent:Connect(fns.onOnClientEvent4)
        onCharacterAdded.weather = Ow:GetAttributeChangedSignal("Weather"):Connect(fns.fn2200)
        task.spawn(fns.worker4)
        MQ.HideName:OnChanged(fns.fn2182)
    else
        Ow.character = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
        Oa()
        Ow.notifyFish = MQ.NotifyFish.OnClientEvent:Connect(fns.onOnClientEvent5)
        Ow.chatAnnounce = MQ.ChatAnnounce.OnClientEvent:Connect(fns.onOnClientEvent4)
        Ow.weather = O0:GetAttributeChangedSignal("Weather"):Connect(fns.fn2200)
        task.spawn(fns.worker4)
        Toggles.HideName:OnChanged(fns.fn2182)
    end
    akR_145 = (akR_145 + 0) % 4
until (akR_145 * 3 + 1) % 4 == 2
if MC("HideName") then
    fns.akR_26(LocalPlayer.Character)
end
fns.akR_36 = function(zP)
    if not zP then
        return
    end
    zP.ChildAdded:Connect(function(zQ)
        if Mr.Unloaded then
            return
        end
        local ag9 = not MC("AutoFavoriteSecretBoss") and not MC("DontSellSecretBoss")
        if ag9 then
            return
        end
        task.defer(function()
            local ag3 = Ph(zQ.Name)
            local ag4 = O4[ag3] and not O3(zQ.Name)
            if ag4 then
                pcall(function()
                    MQ.FavoriteItem:FireServer(zQ.Name)
                end)
            end
        end)
    end)
end
akR_145 = Nk()
if akR_145 then
    onCharacterAdded = 3
    repeat
        akR_125 = (vector.create((onCharacterAdded * 4 + 2) % 11 + 1, (onCharacterAdded * 9 + 6) % 13 + 1, (onCharacterAdded * 7 + 14) % 17 + 1))
        local anw = vector.floor(akR_125) + vector.ceil(akR_125 * -1)
        if vector.dot(anw, anw) == 0 then
            fns.akR_36(akR_145:FindFirstChild("Inventory"))
            akR_145.ChildAdded:Connect(fns.onChildAdded)
        else
            akR_145(fns.akR_36:FindFirstChild("Inventory"))
            fns.akR_36.ChildAdded:Connect(fns.onChildAdded)
        end
        onCharacterAdded = (onCharacterAdded + 1) % 4
    until (onCharacterAdded * 3 + 3) % 4 == 3
end
CurrentCamera, MenuGroup, fns.akR_20 = nil, nil, nil
Toggles.AutoCast:OnChanged(fns.fn1027)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(fns.worker8)
task.spawn(fns.worker9)
task.spawn(fns.worker10)
task.spawn(fns.worker11)
task.spawn(fns.worker12)
task.spawn(fns.worker13)
task.spawn(fns.worker14)
task.spawn(fns.worker15)
task.spawn(fns.worker16)
task.spawn(fns.worker17)
task.spawn(fns.worker18)
task.spawn(fns.worker19)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = O0.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fns.fn1135)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn2337)
fns.akR_20 = function(Bp)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not Bp)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = fns.CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not Bp
        end
    end)
    if not Bp then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn1652)
task.spawn(fns.antiGameplayPauseLoop)
MenuGroup = Nt.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Mr.ToggleKeybind = Od.MenuKeybind;
(function()
    local akC
    local akv
    akv = nil
    akC = nil
    local onDescendantAdded, akt, akw, connection2, aky, connection, akA, connection3, akD, akE, akF
    akC = tick()
    akt = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local aie = v
            pcall(function()
                aie:Disable()
            end)
        end
    end)
    akw = function()
        local CurrentCamera = O0.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
        task.wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
        akt = tick()
    end
    connection3 = UserInputService.InputBegan:Connect(function()
        akC = tick()
    end)
    connection2 = UserInputService.InputChanged:Connect(function(BW)
        local UserInputType = BW.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            akC = tick()
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("DisableGameAfk", { Text = "Disable Game Auto AFK", Default = true })
    local function aku()
        if not Toggles.DisableGameAfk or not Toggles.DisableGameAfk.Value then
            return false
        end
        local ain_1 = Nk()
        local aio = ain_1 and ain_1:FindFirstChild("AFK")
        return not aio or aio.Value == false
    end
    akE = function()
        local aiq = Nk()
        local air = aiq and aiq:FindFirstChild("AFK")
        local aiq_1 = air
        if air then
            air = aiq_1.Value == true
        end
        if air then
            pcall(function()
                MQ.AFK:FireServer()
            end)
        end
    end
    akE()
    if hookmetamethod and getnamecallmethod then
        aky = nil
        local akG_1 = newcclosure and newcclosure(function(CS, ...)
            local aiH = getnamecallmethod()
            if aiH == "FireServer" and CS == MQ.AFK then
                local aiI_1 = checkcaller and checkcaller()
                local aiI_2 = not aiI_1
                if aiI_2 ~= false then
                    aiI_2 = aku()
                end
                if aiI_2 then
                    return
                end
                return aky(CS, ...)
            end
            if aiH == "FireServer" and CS == MQ.RhythmHit then
                local aiH_1 = checkcaller and checkcaller()
                local aiH_2 = not aiH_1
                if aiH_2 ~= false then
                    aiH_2 = M5()
                end
                if aiH_2 then
                    local aiH_3 = { ... }
                    if aiH_3[1] == "miss" then
                        return aky(CS, "hit")
                    end
                    return aky(CS, ...)
                end
                return aky(CS, ...)
            end
            return aky(CS, ...)
        end)
        local function akH(Cm, ...)
            local aiw = getnamecallmethod()
            if aiw == "FireServer" and Cm == MQ.AFK then
                local aix_1 = checkcaller and checkcaller()
                local aix_2 = not aix_1
                if aix_2 ~= false then
                    aix_2 = aku()
                end
                if aix_2 then
                    return
                end
                return aky(Cm, ...)
            end
            if aiw == "FireServer" and Cm == MQ.RhythmHit then
                local aiw_1 = checkcaller and checkcaller()
                local aiw_2 = not aiw_1
                if aiw_2 ~= false then
                    aiw_2 = M5()
                end
                if aiw_2 then
                    local aiw_3 = { ... }
                    if aiw_3[1] == "miss" then
                        return aky(Cm, "hit")
                    end
                    return aky(Cm, ...)
                end
                return aky(Cm, ...)
            end
            return aky(Cm, ...)
        end
        local akG_2 = akG_1 or akH
        aky = hookmetamethod(game, "__namecall", akG_2)
    end
    task.spawn(function()
        while not Mr.Unloaded do
            if Toggles.DisableGameAfk.Value then
                akE()
            end
            task.wait(2)
        end
    end)
    Toggles.DisableGameAfk:OnChanged(function()
        if Toggles.DisableGameAfk.Value then
            akE()
        end
    end)
    connection = nil
    akF = setmetatable({}, { __mode = "k" })
    akv = function(Dg, Dh, Di)
        local aiY_1
        local aiX_1
        local aiW = akF[Dg]
        if not aiW then
            aiW = {}
            akF[Dg] = aiW
        end
        if aiW[Dh] == nil then
            aiX_1, aiY_1 = pcall(function()
                return Dg[Dh]
            end)
            if not aiX_1 then
                return
            end
            aiW[Dh] = aiY_1
        end
        pcall(function()
            Dg[Dh] = Di
        end)
    end
    onDescendantAdded = function(Dt)
        if Dt:IsA("BasePart") then
            akv(Dt, "CastShadow", false)
            akv(Dt, "Reflectance", 0)
        else
            local ai2 = Dt:IsA("Decal") or Dt:IsA("Texture")
            if ai2 then
                akv(Dt, "Transparency", 1)
            else
                local ai2_1 = Dt:IsA("ParticleEmitter") or Dt:IsA("Trail") or Dt:IsA("Beam") or Dt:IsA("Smoke") or Dt:IsA("Fire") or Dt:IsA("Sparkles")
                local ai6 = if ai2_1 then 1 else 0
                local ai4 = 2666 * ai6 + 534 * (1 - ai6)
                local ai5 = 2762 * ai6 + 1636 * (1 - ai6)
                if not ((ai4 * 548 + ai5 * 1211 + ai4 * ai5) % 16777213 == 12169242) then
                    ai2_1 = Dt:IsA("PostEffect")
                end
                if ai2_1 then
                    akv(Dt, "Enabled", false)
                elseif Dt:IsA("Atmosphere") then
                    akv(Dt, "Density", 0)
                end
            end
        end
    end
    akD = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        for k, v in pairs(akF) do
            local ajb = k
            for k, v in pairs(v) do
                local ajh = k
                local ajj = v
                pcall(function()
                    ajb[ajh] = ajj
                end)
            end
        end
        table.clear(akF)
    end
    akA = function(DI)
        akD()
        if not DI then
            return
        end
        local Rendering = settings().Rendering
        akv(Rendering, "QualityLevel", Enum.QualityLevel.Level01)
        akv(Lighting, "GlobalShadows", false)
        akv(Lighting, "EnvironmentDiffuseScale", 0)
        akv(Lighting, "EnvironmentSpecularScale", 0)
        local Terrain = O0.Terrain
        akv(Terrain, "Decoration", false)
        akv(Terrain, "WaterWaveSize", 0)
        akv(Terrain, "WaterWaveSpeed", 0)
        akv(Terrain, "WaterReflectance", 0)
        for i, descendant in ipairs(O0:GetDescendants()) do
            onDescendantAdded(descendant)
        end
        for i, descendant in ipairs(Lighting:GetDescendants()) do
            onDescendantAdded(descendant)
        end
        connection = game.DescendantAdded:Connect(onDescendantAdded)
    end
    Toggles.BoostFps:OnChanged(function()
        akA(Toggles.BoostFps.Value)
    end)
    if Toggles.BoostFps.Value then
        akA(true)
    end
    MenuGroup:AddButton("Unload", function()
        Mr:Unload()
    end)
    task.spawn(function()
        while not Mr.Unloaded do
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local ajB = tick() - akC
                local ajC = tick() - akt
                if ajB >= 300 and ajC >= 60 then
                    pcall(akw)
                else
                    if ajB < 300 and ajC >= 300 then
                        pcall(akw)
                    end
                end
            end
        end
    end)
    Mr:OnUnload(function()
        fns.akR_19()
        Ni()
        M3()
        Nf.skillBusy = false
        Nf.enzoBusy = false
        akD()
        NS()
        if Nj ~= nil and OG then
            pcall(function()
                OG.Text = Nj
            end)
        end
        if Ow.charge then
            Ow.charge:Disconnect()
        end
        if Ow.slam then
            Ow.slam:Disconnect()
        end
        if Ow.minigame then
            Ow.minigame:Disconnect()
        end
        if Ow.rhythmStart then
            Ow.rhythmStart:Disconnect()
        end
        if Ow.rhythmStop then
            Ow.rhythmStop:Disconnect()
        end
        if Ow.character then
            Ow.character:Disconnect()
        end
        if Ow.notifyFish then
            Ow.notifyFish:Disconnect()
        end
        if Ow.chatAnnounce then
            Ow.chatAnnounce:Disconnect()
        end
        if Ow.weather then
            Ow.weather:Disconnect()
        end
        if Ow.hideName then
            Ow.hideName:Disconnect()
        end
        connection3:Disconnect()
        connection2:Disconnect()
        fns.akR_20(false)
        print("Unloaded!")
    end)
    MS:SetLibrary(Mr)
    MS:SetFolder("OuroborosHub")
    MS:SaveDefault("Evil Hello Kitty")
    MS:ApplyToTab(Nt.Settings)
    MS:LoadDefault()
    Om:SetLibrary(Mr)
    Om:IgnoreThemeSettings()
    Om:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource", "WebhookUrl" })
    Om:SetFolder("OuroborosHub/HeavyweightFishing");
    (function()
        local Ev = Om:BuildConfigSection(Nt.Settings)
        local function Ew(Ex, Ey)
            local ajL_1 = (Ex == "Toggle" and Toggles or Od)[Ey]
            local ajK_2 = type(ajL_1) == "table" and ajL_1.Type == Ex
            return ajK_2 and ajL_1 or nil
        end
        local function EC(ED, EE)
            local Type = EE.Type
            if Type == "Toggle" then
                return { idx = ED, type = "Toggle", value = EE.Value == true }
            elseif Type == "Slider" then
                return { idx = ED, type = "Slider", value = tostring(EE.Value) }
            elseif Type == "Dropdown" then
                return { idx = ED, type = "Dropdown", multi = EE.Multi == true, value = EE.Value }
            elseif Type == "Input" then
                local ajP = EE.Value or ""
                return { idx = ED, type = "Input", text = tostring(ajP) }
            elseif Type == "ColorPicker" then
                return { idx = ED, type = "ColorPicker", value = EE.Value:ToHex(), transparency = EE.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = ED,
                    type = "KeyPicker",
                    mode = EE.Mode,
                    key = EE.Value,
                    modifiers = EE.Modifiers,
                    toggled = EE.Toggled
                }
            else
                return nil
            end
        end
        local function EG()
            local ajS = {}
            for i, v in ipairs({ Toggles, Od }) do
                for k, v in pairs(v) do
                    local ajT = type(v) == "table" and type(v.Type) == "string" and not Om.Ignore[k]
                    if ajT then
                        local ajT_1 = EC(k, v)
                        if ajT_1 then
                            ajS[#ajS + 1] = ajT_1
                        end
                    end
                end
            end
            table.sort(ajS, function(EO, EP)
                if EO.type ~= EP.type then
                    return EO.type < EP.type
                end
                return EO.idx < EP.idx
            end)
            return { objects = ajS }
        end
        local function EQ(ER)
            local aj8
            aj8 = nil
            local aj9 = type(ER) ~= "table" or type(ER.idx) ~= "string" or type(ER.type) ~= "string" or Om.Ignore[ER.idx]
            if aj9 then
                return false
            end
            aj8 = Ew(ER.type, ER.idx)
            if not aj8 then
                return false
            end
            local aj9_1 = pcall(function()
                if ER.type == "Input" then
                    if type(ER.text) ~= "string" then
                        return
                    end
                    aj8:SetValue(ER.text)
                elseif ER.type == "ColorPicker" then
                    aj8:SetValueRGB(Color3.fromHex(ER.value), ER.transparency)
                elseif ER.type == "KeyPicker" then
                    aj8:SetValue({ ER.key, ER.mode, ER.modifiers })
                    if ER.mode == "Toggle" and ER.toggled ~= nil then
                        aj8.Toggled = ER.toggled
                        aj8:Update()
                    end
                else
                    aj8:SetValue(ER.value)
                end
            end)
            return aj9_1
        end
        Ev:AddDivider()
        Ev:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Ev:AddButton("Export Config to Clipboard", function()
            local akc_1
            local akb_1
            akb_1, akc_1 = pcall(HttpService.JSONEncode, HttpService, EG())
            if not akb_1 then
                Mr:Notify("Failed to encode the config")
                return
            end
            local akb_2 = setclipboard or toclipboard
            local akb_3 = type(akb_2) ~= "function" or not pcall(akb_2, akc_1)
            if akb_3 then
                Mr:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Mr:Notify("Config copied to clipboard", 6)
        end)
        Ev:AddButton("Import Config from Clipboard Text", function()
            local akk_1
            local aki = Od.SaveManager_ImportSource.Value or ""
            local aki_1
            local akj = tostring(aki):match("^%s*(.-)%s*$")
            if akj == "" then
                Mr:Notify("Paste an exported config into the box first")
                return
            end
            aki_1, akk_1 = pcall(HttpService.JSONDecode, HttpService, akj)
            local akj_1 = not aki_1 or type(akk_1) ~= "table" or type(akk_1.objects) ~= "table"
            if akj_1 then
                Mr:Notify("That is not a valid exported config")
                return
            end
            local aki_2 = 0
            for i, v in ipairs(akk_1.objects) do
                if EQ(v) then
                    aki_2 += 1
                end
            end
            if aki_2 == 0 then
                Mr:Notify("No settings in that config matched this script")
                return
            end
            Od.SaveManager_ImportSource:SetValue("")
            local akk_2 = aki_2 == 1 and "" or "s"
            Mr:Notify(("Imported %d setting%s"):format(aki_2, akk_2), 6)
        end)
        Om:LoadAutoloadConfig()
        Nf.skillSequenceReady = true
    end)()
end)()
