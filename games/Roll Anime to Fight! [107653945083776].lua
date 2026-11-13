local fns = {}
local Ux_22, Ux_23, Ux_24, Ux_26, Ux_27, Ux_29, Ux_31, connection2, Ux_34, Ux_35, Ux_39, Ux_43, Ux_47, Ux_51, Ux_56, Ux_60, Ux_65, Ux_69, Ux_74, Ux_78, Ux_83, Ux_90, Ux_98, Ux_103, Ux_107, Ux_112, Ux_121, Ux_125
fns.Ux_1 = nil
fns.Ux_3 = nil
fns.Ux_5 = nil
fns.Ux_7 = nil
fns.Ux_10 = nil
fns.Toggles = nil
fns.Ux_12 = nil
fns.Ux_15 = nil
fns.Ux_17 = nil
fns.Ux_19 = nil
fns.Ux_20 = nil
Ux_22 = nil
Ux_23 = nil
Ux_24 = nil
Ux_27 = nil
Ux_29 = nil
Ux_31 = nil
connection2 = nil
Ux_34 = nil
local client
local Di
local CH
local BH
local BattlepassReward
local C5
local B5
local Du
local TalkTickets
local DT
local BT
local Dh
local Ch
local Label4
local D4
local C4
local Label9
local Dt
local Ct
local DS
local CS
local BS
local Label8
local Cg
local DF
local CF
local D3
local C3
local Cs
local DR
local CR
local BR
local Df
local DE
local CE
local D2
local C2
local B2
local Cr
local EvolutionInfo
local BQ
local De
local Ce
local DD
local CD
local D1
local B1
local Label
local DP
local BP
local DC
local CC
local D0
local Dp
local Cp
local DO
local CO
local BO
local Label5
local Cc
local DB
local CB
local D_
local C_
local B_
local Do
local Co
local Label3
local CN
local BN
local connection
local Db
local Cb
local CA
local DZ
local CZ
local BZ
local Dn
local Cn
local DM
local CM
local BM
local Ea
local Da
local Dz
local Cz
local CY
local BY
local Cm
local BL
local C9
local Dy
local Cy
local DX
local CloneInfo
local onFpsBoost
local Label7
local Cl
local connection3
local CK
local BK
local D8
local C8
local Dx
local Cx
local BW
local Dk
local Ck
function fns.fn20()
    return CB[game.PlaceId] == true
end
function fns.fn34()
    return Di:GetAttribute("FightRunning") == true
end
function fns.fn36(gR)
    if not fns.Toggles.WebhookPing.Value then
        return false
    end
    local Value2 = Cz.WebhookRarities.Value
    local Value = Cz.WebhookMutations.Value
    local Kg = gR.mutation ~= nil and gR.mutation ~= "" and gR.mutation or fns.Ux_19
    local Kg_1 = next(Value2) ~= nil and Value2[gR.rarity] == true
    local Kg_2 = next(Value) ~= nil and Value[Kg] == true
    local Kf_2 = Kg_1
    if Kf_2 then
        Kf_2 = fns.Toggles.WebhookPingOnRarity.Value
    end
    if Kf_2 then
        return true
    end
    if Kg_2 and fns.Toggles.WebhookPingOnMutation.Value then
        return true
    end
    local Kf_4 = next(Value2) == nil and next(Value) == nil
    if Kf_4 then
        return true
    end
    return false
end
function fns.fn51()
    local GY = C9()
    local GZ = GY and GY:FindFirstChild("Roll")
    local GY_1 = GZ
    if GZ then
        GZ = GY_1:FindFirstChild("RollButton")
    end
    local GY_2 = GZ
    if GZ then
        GZ = GY_2:FindFirstChild("Button")
    end
    local GY_3 = GZ
    if GZ then
        GZ = GY_3:FindFirstChild("RollPrompt")
    end
    return GZ
end
function fns.worker2()
    local JG_1
    while true do
        task.wait(1)
        if CO.Unloaded then
            break
        end
        local JF = math.floor(os.clock() - Cb)
        if JF < 60 then
            JG_1 = JF .. "s"
        elseif JF < 3600 then
            JG_1 = string.format("%dm %ds", JF // 60, JF % 60)
        else
            JG_1 = string.format("%dh %dm", JF // 3600, JF % 3600 // 60)
        end
        Label:SetText(Dx("Session time", JG_1, B2))
    end
end
function fns.fn104()
    local Jn = CC:lower()
    for k, v in DC do
        if string.find(Jn, v, 1, true) then
            return true
        end
    end
    return false
end
function fns.fn177()
    local Gp = {}
    local Gq = client:get("Equipped") or Gp
    return Gq
end
function fns.fn203(eC, eD, eE)
    return string.format("<b>%s</b> %s %s", eC, Co("-", "#5a6070"), Co(eD, eE))
end
function fns.fn208()
    local GL = (tonumber(Cr("Inventory")))
    local GP = if GL then 1 else 0
    local GN = 1707 * GP + 2532 * (1 - GP)
    local GO = 3717 * GP + 1523 * (1 - GP)
    if not ((GN * 1755 + GO * 668 + GN * GO) % 16777213 == 11823660) then
        GL = Ux_23.Upgrades.Default.Inventory
    end
    return GL
end
function fns.fn259(g3, g4, g5, g6)
    if not fns.Toggles.EnableWebhook.Value or not fns.Toggles.WebhookNotifyMerge.Value then
        return
    end
    local Kp_1 = { name = g3, rarity = g4, mutation = g5, purchased = false }
    local Value2 = Cz.WebhookRarities.Value
    local Kr = next(Value2) ~= nil and not Value2[g4]
    if Kr then
        return
    end
    local Value = Cz.WebhookMutations.Value
    local Ks_1 = g5 ~= nil and g5 ~= "" and g5 or fns.Ux_19
    local Ks_2 = next(Value) ~= nil and not Value[Ks_1]
    if Ks_2 then
        return
    end
    local Kq_2 = DT(Kp_1) and "@everyone"
    local Kp_2 = Kq_2 or nil
    local Kq_3 = D0[g4] or 5793266
    local Ks_3 = { name = "Character", value = tostring(g3), inline = true }
    local Kt = { name = "Rarity", value = tostring(g4), inline = true }
    local Ku = { name = "Mutation", value = Ks_1, inline = true }
    local Kv = g6 or "?"
    Dz({
        content = Kp_2,
        embeds = {
            {
                title = "Unit Merged",
                color = Kq_3,
                fields = {
                    Ks_3,
                    Kt,
                    Ku,
                    { name = "Level", value = tostring(Kv), inline = true },
                    { name = "Player", value = Di.Name, inline = true }
                },
                footer = { text = BZ .. " | Ouroboros Hub" }
            }
        }
    })
end
function fns.fn268(dE)
    local IH = not dE or type(dE.characters) ~= "table"
    if IH then
        return "None yet"
    end
    local IH_1 = {}
    for k in dE.characters do
        IH_1[#IH_1 + 1] = k
    end
    table.sort(IH_1, function(dI, dJ)
        local IB_1
        local IA_1
        IA_1, IB_1 = tonumber(dI), tonumber(dJ)
        if IA_1 and IB_1 then
            return IA_1 < IB_1
        end
        return tostring(dI) < tostring(dJ)
    end)
    local II = {}
    for k, v in IH_1 do
        local IH_2 = dE.characters[v]
        if IH_2 and IH_2.Name then
            II[#II + 1] = BQ(IH_2.Name, IH_2.Rarity, IH_2.Mutation)
        end
    end
    if #II == 0 then
        return "None yet"
    end
    return table.concat(II, "   ")
end
function fns.fn297(kM)
    local NC = kM
    if NC then
        local NE = kM.UUID or kM.CharacterId or ""
        NC = tostring(NE)
    end
    return NC or ""
end
function fns.worker3()
    while not CO.Unloaded do
        task.wait(1)
        fns.Ux_15.rolls:SetText("Rolls: " .. tostring(DS.rolls))
        fns.Ux_15.buys:SetText("Buys: " .. tostring(DS.buys))
        fns.Ux_15.merges:SetText("Merges: " .. tostring(DS.merges))
        fns.Ux_15.sells:SetText("Sells: " .. tostring(DS.sells))
        fns.Ux_15.evolves:SetText("Evolves: " .. tostring(DS.evolves))
        fns.Ux_15.upgrades:SetText("Upgrades: " .. tostring(DS.upgrades))
        fns.Ux_15.tickets:SetText("Tickets Bought: " .. tostring(DS.ticketsBought))
        fns.Ux_15.gold:SetText("Gold: " .. tostring(CF()))
        fns.Ux_15.ticketCount:SetText("Infinite Tickets: " .. tostring(Cl()))
    end
end
function fns.worker4()
    while not CO.Unloaded do
        task.wait(1)
        local Ri = client:get("Battlepass")
        if type(Ri) == "table" then
            Label8:SetText("Level: " .. tostring(fns.Ux_12(Ri.Exp)) .. "/" .. tostring(C_()))
        else
            Label8:SetText("Level: -")
        end
    end
end
function fns.fn381()
    local Gm = {}
    local Gn = client:get("Inventory") or Gm
    return Gn
end
function fns.onImportConfigFromClipboardTex()
    local Ua_1
    local T8 = Cz.SaveManager_ImportSource.Value or ""
    local T8_1
    local T9 = tostring(T8):match("^%s*(.-)%s*$")
    if T9 == "" then
        CO:Notify("Paste an exported config into the box first")
        return
    end
    T8_1, Ua_1 = pcall(Cn.JSONDecode, Cn, T9)
    local T9_1 = not T8_1
    local Uh = if T9_1 then 1 else 0
    local Uf = 949 * Uh + 2012 * (1 - Uh)
    local Ug = 2792 * Uh + 2484 * (1 - Uh)
    if not ((Uf * 3175 + Ug * 1136 + Uf * Ug) % 16777213 == 8834395) then
        T9_1 = type(Ua_1) ~= "table"
    end
    if not T9_1 then
        T9_1 = type(Ua_1.objects) ~= "table"
    end
    if T9_1 then
        CO:Notify("That is not a valid exported config")
        return
    end
    local T8_2 = 0
    for i, v in ipairs(Ua_1.objects) do
        if CM(v) then
            T8_2 += 1
        end
    end
    if T8_2 == 0 then
        CO:Notify("No settings in that config matched this script")
        return
    end
    Cz.SaveManager_ImportSource:SetValue("")
    local Ua_2 = T8_2 == 1 and "" or "s"
    CO:Notify(("Imported %d setting%s"):format(T8_2, Ua_2), 6)
end
function fns.fn401(mm)
    local OW = CD[mm.Rarity]
    if not OW or not Cz.BuyRuleRarity.Value[mm.Rarity] then
        return false
    end
    local Value2 = Cz[OW.characters].Value
    local OY_1 = next(Value2) ~= nil and not Value2[mm.Name]
    if OY_1 then
        return false
    end
    local Value = Cz[OW.mutations].Value
    local Mutation = mm.Mutation
    local OY_4 = Mutation ~= nil and Mutation ~= "" and Mutation or fns.Ux_19
    local OW_3 = next(Value) ~= nil and not Value[OY_4]
    if OW_3 then
        return false
    end
    local OW_4 = tonumber(mm.Price) or 0
    local OW_5 = (tonumber(Cz.MaxBuyPrice.Value))
    local O2 = if OW_5 then 1 else 0
    local O0 = 3605 * O2 + 330 * (1 - O2)
    local O1 = 30 * O2 + 2817 * (1 - O2)
    if not ((O0 * 683 + O1 * 1587 + O0 * O1) % 16777213 == 2617975) then
        OW_5 = 0
    end
    local OY_5 = OW_5
    if OY_5 > 0 and OW_4 > OY_5 then
        return false
    end
    local OW_7 = tonumber(Cz.MinBuyPrice.Value) or 0
    if OW_7 > 0 and OW_4 < OW_7 then
        return false
    end
    return true
end
function fns.fn430()
    if fns.Toggles.MatchGameDelay.Value then
        local OQ = Di:GetAttribute("FastSummon") and 0.6
        return OQ or 2.2
    end
    return Cz.SummonDelay.Value
end
function fns.fn440()
    local Jg_1
    local Jf_1
    if identifyexecutor then
        Jg_1, Jf_1 = identifyexecutor()
        local Jh = Jg_1 ~= ""
        local Ji = type(Jg_1) == "string" and Jh
        if Ji then
            local Jh_1 = type(Jf_1) == "string" and Jf_1 ~= "" and Jg_1 .. " " .. Jf_1
            CC = Jh_1 or Jg_1
        end
    end
end
function fns.fn470(gF)
    if fns.Toggles.WebhookOnlyPurchased.Value and not gF.purchased then
        return false
    end
    if gF.purchased and not fns.Toggles.WebhookNotifyBuy.Value then
        return false
    end
    local Value2 = Cz.WebhookRarities.Value
    local J3 = next(Value2) == nil or Value2[gF.rarity] == true
    local J3_1 = not J3
    local J5 = next(Value2) ~= nil and J3_1
    if J5 then
        return false
    end
    local Value = Cz.WebhookMutations.Value
    local J4_1 = gF.mutation ~= nil and gF.mutation ~= "" and gF.mutation or fns.Ux_19
    local J4_2 = next(Value) == nil or Value[J4_1] == true
    local J4_3 = not J4_2
    local J5_1 = next(Value) ~= nil and J4_3
    if J5_1 then
        return false
    end
    return true
end
function fns.fn472()
    local Qw = tonumber(BattlepassReward.Config.MaxLevel) or 30
    return Qw
end
function fns.fn484(kT)
    local NJ_1
    local NI_1
    local GetRequiredFragments = CloneInfo.GetRequiredFragments
    local NH = tonumber(kT.Level) or 1
    NI_1, NJ_1 = pcall(GetRequiredFragments, NH, kT.Mutation)
    local NG_1 = NI_1
    if NG_1 then
        local NH_1 = tonumber(NJ_1) or 0
        NG_1 = NH_1
    end
    return NG_1 or 0
end
function fns.fn503()
    pcall(function()
        fns.Ux_7:Teleport(fns.Ux_1, Di)
    end)
end
function fns.autoMergeLoop()
    while not CO.Unloaded do
        task.wait(1.5)
        if fns.Toggles.AutoMerge.Value then
            pcall(BT)
        else
            Label5:SetText("Merge: off")
        end
    end
end
function fns.autoClaimBattlepassLoop()
    while not CO.Unloaded do
        task.wait(5)
        if fns.Toggles.AutoClaimBattlepass.Value then
            pcall(Ct)
        end
        if fns.Toggles.AutoClaimQuests.Value then
            pcall(DM)
        end
    end
end
function fns.fn555(es, et)
    if setclipboard then
        setclipboard(es)
    elseif toclipboard then
        toclipboard(es)
    end
    CO:Notify(et)
end
function fns.webhookReportIntervalLoop()
    while not CO.Unloaded do
        local max = math.max
        local K3 = tonumber(Cz.WebhookReportInterval.Value) or 300
        local K4 = max(30, K3)
        task.wait(K4)
        if CO.Unloaded then
            break
        end
        if fns.Toggles.EnableWebhook.Value and fns.Toggles.WebhookItemReport.Value then
            local Value = Cz.WebhookReportItems.Value
            local K3_1 = {}
            for k, v in C2 do
                if Value[v] then
                    local K4_1 = #K3_1 + 1
                    local K5 = BP.GetItemAmount(v) or 0
                    K3_1[K4_1] = { name = v, value = tostring(K5), inline = true }
                end
            end
            if #K3_1 > 0 then
                Dz({
                    embeds = {
                        {
                            title = "Item Report",
                            color = 5793266,
                            fields = K3_1,
                            footer = { text = BZ .. " | " .. Di.Name }
                        }
                    }
                })
            end
        end
    end
end
function fns.autoJoinRaidLoop()
    local PY = false
    local PZ = false
    while not CO.Unloaded do
        task.wait(2)
        local attr = workspace:GetAttribute("RaidDifficulty")
        local P0 = tonumber(workspace:GetAttribute("RaidEndsAt"))
        local P1 = attr ~= nil and P0 ~= nil and P0 > workspace:GetServerTimeNow()
        local P4 = (fns.Toggles.AutoJoinRaid.Value or fns.Toggles.AutoStartRaid.Value) and P1 and not (attr ~= nil and Cz.AvoidDifficulties.Value[attr] == true)
        local P1_4 = P1
        if P1_4 then
            P1_4 = "Raid: " .. tostring(attr)
        end
        local P__1 = P1_4 or "Raid: none"
        Label3:SetText(P__1)
        if not P4 then
            local P__2 = fns.Toggles.AutoLeaveRaid.Value and BL and not Da()
            if P__2 then
                pcall(function()
                    DB:FireServer("Leave")
                end)
            end
            PZ = false
            PY = false
        elseif Da() then
            PY = true
        else
            if PZ and PY then
                if fns.Toggles.AutoLeaveRaid.Value then
                    pcall(function()
                        DB:FireServer("Leave")
                    end)
                    task.wait(0.6)
                end
                PZ = false
                PY = false
            else
                if fns.Toggles.AutoJoinRaid.Value and not BL then
                    pcall(function()
                        DB:FireServer("Create", Cz.RaidPartyType.Value)
                    end)
                else
                    if fns.Toggles.AutoStartRaid.Value and BL then
                        pcall(function()
                            DB:FireServer("Start")
                        end)
                        PZ = true
                    end
                end
            end
        end
    end
end
function fns.fn615(eO)
    local DiscordGroup = eO:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = DP })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = DP })
end
function fns.onOnClientEvent2(of, og)
    if of == "Closed" then
        BL = false
    else
        local PS = of == "Party" and type(og) == "table"
        if PS then
            local PS_1 = og.Created == true
            local PX = if PS_1 then 1 else 0
            local PV = 2769 * PX + 290 * (1 - PX)
            local PW = 1884 * PX + 3251 * (1 - PX)
            if not ((PV * 986 + PW * 3960 + PV * PW) % 16777213 == 15407670) then
                local PT = type(og.Members) == "table" and #og.Members > 1
                PS_1 = PT
            end
            BL = PS_1
        end
    end
end
function fns.fn684(lm, ln)
    local NS = (tonumber(Cz.CloneEssenceReserve.Value))
    local NY = if NS then 1 else 0
    local NW = 2030 * NY + 3811 * (1 - NY)
    local NX = 2632 * NY + 2867 * (1 - NY)
    if not ((NW * 1217 + NX * 662 + NW * NX) % 16777213 == 9555854) then
        NS = 0
    end
    local NT = NS
    local NS_1 = tonumber(BP.GetItemAmount(B5(ln.Rarity))) or 0
    return NS_1 - BW(lm) >= NT
end
function fns.onRscripts()
    D4(Db, "Copied Rscripts profile to clipboard")
end
function fns.fn713(ek)
    if ek then
        if not BY then
            BY, Ux_27 = BS()
        end
        BY.Enabled = true
        pcall(function()
            Ce:Set3dRenderingEnabled(false)
        end)
    else
        pcall(function()
            Ce:Set3dRenderingEnabled(true)
        end)
        if BY then
            BY.Enabled = false
        end
    end
end
function fns.fn740()
    local TI = {}
    for i, v in ipairs({ fns.Toggles, Cz }) do
        for k, v in pairs(v) do
            local TJ = type(v) == "table" and type(v.Type) == "string" and not CH.Ignore[k]
            if TJ then
                local TJ_1 = DE(k, v)
                if TJ_1 then
                    TI[#TI + 1] = TJ_1
                end
            end
        end
    end
    table.sort(TI, function(uC, uD)
        if uC.type ~= uD.type then
            return uC.type < uD.type
        end
        return uC.idx < uD.idx
    end)
    return { objects = TI }
end
function fns.onDescendantAdded(hP)
    if fns.Toggles.FpsBoost.Value then
        Do(hP)
    end
end
function fns.fn747()
    local Oh_1
    local Oc_1
    local Ob_1
    local Oa_1
    local N7 = DF()
    local Value2 = Cz.CloneSelectMode.Value
    local Value = fns.Toggles.CloneWaitForEssence.Value
    Oa_1, Ob_1, Oc_1 = nil, nil, nil
    local Od = 0
    for k, v in BP.GetInventory() do
        Od += 1
        local Oe = Du(v)
        local Of = Oe ~= "" and not N7[Oe] and D8(v)
        if Of then
            local Oe_1 = fns.Ux_17[v.Name]
            local Of_1 = Value or Ux_34(v, Oe_1)
            if Of_1 then
                local Of_2 = tonumber(v.Level) or 1
                if Value2 == "Highest Level" then
                    Oh_1 = Of_2
                elseif Value2 == "Cheapest Essence" then
                    Oh_1 = -BW(v)
                elseif Value2 == "Inventory Order" then
                    Oh_1 = -Od
                else
                    Oh_1 = (Cg[Oe_1.Rarity] or 0) * 1000 + Of_2
                end
                if not Oc_1 or Oh_1 > Oa_1 then
                    Oa_1, Ob_1, Oc_1 = Oh_1, Oe_1, v
                end
            end
        end
    end
    if not Oc_1 then
        return nil
    end
    local N7_1 = Value and not Ux_34(Oc_1, Ob_1)
    if N7_1 then
        return nil
    end
    return Oc_1
end
function fns.worker()
    while true do
        task.wait(1)
        if fns.Ux_5.Parent == nil then
            fns.Ux_5 = De()
        end
    end
end
function fns.autoBuyTicketLoop()
    local P6 = false
    while not CO.Unloaded do
        task.wait(2)
        local P7 = Cl()
        local max = math.max
        local floor = math.floor
        local Qa = tonumber(Cz.KeepTickets.Value) or 0
        local Qb = max(0, floor(Qa))
        local P8_1 = Df()
        local P9_1 = Da()
        local Qa_1 = C5()
        local Qc = P8_1 and "Tower Floor: " .. tostring(Qa_1)
        local Qd = Qc or "Tower: lobby | Tickets: " .. tostring(P7)
        Label4:SetText(Qd)
        if fns.Toggles.AutoBuyTicket.Value and not P8_1 then
            local Qc_2 = Qb
            if fns.Toggles.AutoJoinTower.Value and Qc_2 < 1 then
                Qc_2 = 1
            end
            if P7 < Qc_2 then
                pcall(function()
                    TalkTickets:FireServer("BuyOne")
                end)
                DS.ticketsBought = DS.ticketsBought + 1
                task.wait(1)
                P7 = Cl()
            end
        end
        if P8_1 then
            if fns.Toggles.LeaveAtFloor.Value then
                local P8_2 = tonumber(Cz.LeaveFloor.Value) or 0
                if P8_2 > 0 and Qa_1 >= P8_2 then
                    C3()
                    task.wait(3)
                end
            end
            if fns.Toggles.AutoRestartTower.Value and P6 and not P9_1 then
                pcall(function()
                    CA:FireServer()
                end)
                task.wait(2)
            end
        elseif fns.Toggles.AutoJoinTower.Value then
            if P7 > Qb then
                pcall(function()
                    CA:FireServer()
                end)
                task.wait(3)
            end
        end
        P6 = P9_1
    end
end
function fns.autoClaimVipLoop()
    while not CO.Unloaded do
        task.wait(5)
        local Qf = fns.Toggles.AutoClaimVip.Value and Di:GetAttribute("VIP") == true
        if Qf then
            pcall(function()
                DO:FireServer("Sync")
            end)
            task.wait(0.4)
            pcall(function()
                DO:FireServer("Claim")
            end)
        end
        if Di:GetAttribute("VIP") == true then
            Label9:SetText("VIP: owned")
        else
            Label9:SetText("VIP: none")
        end
    end
end
function fns.fn880(i3, i4, i5)
    local Mf = 0
    local max = math.max
    local Mi = tonumber(i4) or 1
    local Mj = max(1, math.floor(Mi))
    for k, v in Cx() do
        local Mg_1 = v.Name == i3 and D1(v) ~= i5
        if Mg_1 then
            local Mg_2 = tonumber(v.Level) or 1
            if Mg_2 >= Mj then
                Mf += 1
            end
        end
    end
    return Mf
end
function fns.autoEquipBestLoop()
    while not CO.Unloaded do
        task.wait(2)
        if fns.Toggles.AutoEquipBest.Value then
            pcall(Ux_24)
        end
    end
end
function fns.fn895(uf, ug)
    local Ty_1 = (uf == "Toggle" and fns.Toggles or Cz)[ug]
    local Tx_2 = type(Ty_1) == "table" and Ty_1.Type == uf
    return Tx_2 and Ty_1 or nil
end
function fns.fn901(kR)
    return tostring(kR) .. " Essence"
end
function fns.fn905(ez, eA)
    return string.format('<font color="%s">%s</font>', eA, ez)
end
function fns.onCopyJoinScript_JobID()
    local fp = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, DR)
    D4(fp, "Copied join script to clipboard")
end
function fns.fn975()
    local Gh = (tonumber(client:get("Gold")))
    local Gl = if Gh then 1 else 0
    local Gj = 1112 * Gl + 3964 * (1 - Gl)
    local Gk = 1311 * Gl + 928 * (1 - Gl)
    if not ((Gj * 657 + Gk * 18 + Gj * Gk) % 16777213 == 2212014) then
        Gh = 0
    end
    return Gh
end
function fns.fn988()
    return DX[game.PlaceId] == true
end
function fns.fn998(kD)
    for k, v in D2 do
        local Nu = type(kD) == "table" and kD[k] == true
        v:SetVisible(Nu)
    end
end
function fns.fn1001()
    D_:Disconnect()
    connection3:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    if Ch then
        Ch:Disconnect()
    end
    if fns.Ux_20.noclipConnection then
        fns.Ux_20.noclipConnection:Disconnect()
    end
    if fns.Ux_20.jumpConnection then
        fns.Ux_20.jumpConnection:Disconnect()
    end
    if fns.Ux_20.flyConnection then
        fns.Ux_20.flyConnection:Disconnect()
    end
    onFpsBoost(false)
    Cm(false)
    if fns.Ux_20.applyAntiGameplayPause then
        fns.Ux_20.applyAntiGameplayPause(false)
    end
    if fns.Ux_20.antiAfkBeganConnection then
        fns.Ux_20.antiAfkBeganConnection:Disconnect()
    end
    if fns.Ux_20.antiAfkChangedConnection then
        fns.Ux_20.antiAfkChangedConnection:Disconnect()
    end
    if fns.Ux_20.autoExecuteConnection then
        fns.Ux_20.autoExecuteConnection:Disconnect()
    end
    if fns.Ux_20.reconnectConnection then
        fns.Ux_20.reconnectConnection:Disconnect()
    end
    B_(false)
    if BY then
        BY:Destroy()
        BY = nil
    end
end
function fns.fn1038(a6)
    local Name = a6.Name
    local Rarity = a6.Rarity
    local Mutation = a6.Mutation
    local F1 = tonumber(a6.Price) or 0
    local F2 = {
        name = Name,
        rarity = Rarity,
        mutation = Mutation,
        price = F1,
        purchased = false,
        time = os.clock()
    }
    CK[#CK + 1] = F2
    return F2
end
function fns.fn1040()
    if not CS then
        return "None yet"
    end
    return BQ(CS.name, CS.rarity, CS.mutation)
end
function fns.autoBuyLoop()
    while not CO.Unloaded do
        task.wait(0.2)
        if fns.Toggles.AutoBuy.Value then
            BH()
        else
            DZ = false
        end
    end
end
function fns.fn1052()
    local Gs = {}
    local Gt = client:get("Items") or Gs
    for k, v in Gt do
        if v.Name == "Infinite Ticket" then
            local Gs_2 = v.amount or v.Amount or v.Quantity
            local Gt_1 = tonumber(Gs_2) or 0
            return Gt_1
        end
    end
    local Gs_3 = tonumber(BP.GetItemAmount("Infinite Ticket")) or 0
    return Gs_3
end
function fns.fn1085(fS)
    for k, v in Cc do
        local JI = type(fS) == "table" and fS[k] == true
        v.characters:SetVisible(JI)
        v.mutations:SetVisible(JI)
    end
end
function fns.autoStartLoop()
    while not CO.Unloaded do
        task.wait(1)
        local PO = tonumber(Cz.StopWave.Value) or 0
        local PO_1 = PO > 0 and C5() >= PO
        local Value = fns.Toggles.SmartAutoPlay.Value
        local PQ = Di:GetAttribute("FightAutoPlay") == true
        if Value ~= PQ then
            pcall(function()
                D3:FireServer("AutoPlay")
            end)
            task.wait(0.3)
        end
        local PO_3 = Da() and PO_1
        if PO_3 then
            if fns.Toggles.StopAtWave.Value then
                CE = true
            end
            local PO_4 = fns.Toggles.EndFightAtWave.Value and not Df() and not C8()
            if PO_4 then
                pcall(function()
                    D3:FireServer("Stop")
                end)
                task.wait(1)
            end
        end
        local PO_5 = fns.Toggles.AutoStart.Value and not Da() and not Df()
        if PO_5 then
            if not (fns.Toggles.StopAtWave.Value and CE) then
                pcall(function()
                    D3:FireServer("Start")
                end)
                task.wait(1)
            end
        end
    end
end
function fns.fn1112()
    local NZ = {}
    for k, v in BP.GetCloning() do
        local N_ = Du(v)
        if N_ ~= "" then
            NZ[N_] = true
        end
    end
    return NZ
end
function fns.fn1121(cO)
    local HH = cO:IsA("ParticleEmitter") or cO:IsA("Trail") or cO:IsA("Beam")
    local HL = if HH then 1 else 0
    local HJ = 2230 * HL + 1018 * (1 - HL)
    local HK = 516 * HL + 351 * (1 - HL)
    if not ((HJ * 271 + HK * 3426 + HJ * HK) % 16777213 == 3522826) then
        HH = cO:IsA("Smoke")
    end
    if not HH then
        HH = cO:IsA("Fire")
    end
    if not HH then
        HH = cO:IsA("Sparkles")
    end
    if not HH then
        HH = cO:IsA("Light")
    end
    if not HH then
        HH = cO:IsA("PostEffect")
    end
    return HH
end
function fns.fn1145(mF)
    local O3 = tonumber(mF.Price) or 0
    local O3_1 = tonumber(Cz.BuyGoldReserve.Value) or 0
    return CF() - O3 >= O3_1
end
function fns.fn1156()
    local Plots = workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("Owner") == Di.Name then
            return child
        end
    end
    return nil
end
function fns.fn1168()
    if Da() then
        return
    end
    local Value = Cz.MergeRarities.Value
    if next(Value) == nil then
        Label5:SetText("Merge: pick rarities")
        return
    end
    local Lt = {}
    for k, v in Cx() do
        local Lu_1 = fns.Ux_17[v.Name]
        local Lv_1 = tonumber(v.Level) or 1
        local Lw_1 = Lu_1
        if Lw_1 then
            Lw_1 = v.UUID
        end
        if Lw_1 then
            Lw_1 = Lv_1 < 7
        end
        if Lw_1 then
            Lw_1 = Value[Lu_1.Rarity]
        end
        if Lw_1 then
            local Lv_2 = B1(v)
            local Lw_2 = Lt[Lv_2]
            if not Lw_2 then
                Lw_2 = { info = Lu_1, units = {} }
                Lt[Lv_2] = Lw_2
            end
            Lw_2.units[#Lw_2.units + 1] = v
        end
    end
    local Lu_2 = nil
    for k, v in Lt do
        if #v.units >= 2 then
            Lu_2 = v
            break
        end
    end
    if not Lu_2 then
        Label5:SetText("Merge: idle")
        return
    end
    local Ls_1 = Cs()
    local Lt_1 = CY()
    local Character = Di.Character
    local Lw_3 = Character and Character:FindFirstChildOfClass("Humanoid")
    local Lx_2 = Character
    if Lx_2 then
        Lx_2 = Character:FindFirstChild("HumanoidRootPart")
    end
    local Lv_4 = Lx_2
    if not Lw_3 or not Lv_4 then
        return
    end
    local Lw_5 = Lu_2.units[1]
    local Lx_4 = Lu_2.units[2]
    local Lz
    for k, v in Ls_1 do
        local LA_1 = Lt_1[v.index]
        local LB = LA_1 and LA_1.name == Lw_5.Name
        if LB then
            local LC_1 = tonumber(LA_1.level) or 1
            local LD_1 = tonumber(Lw_5.Level) or 1
            LB = LC_1 == LD_1
        end
        if LB then
            LB = (LA_1.mutation or "") == (Lw_5.Mutation or "")
        end
        if LB then
            Lz = v
            for k, v in Lu_2.units do
                if tostring(v.UUID) ~= tostring(LA_1.uuid) then
                    Lx_4 = v
                    break
                end
            end
            break
        end
    end
    if not Lz then
        for k, v in Ls_1 do
            if not Lt_1[v.index] then
                Lz = v
                break
            end
        end
        if not Lz then
            Label5:SetText("Merge: no slot")
            return
        end
        local Ls_2 = DD(Lw_5.UUID)
        if not Ls_2 then
            Label5:SetText("Merge: missing tool")
            return
        end
        local CFrame2 = Lv_4.CFrame
        Lw_3:EquipTool(Ls_2)
        task.wait(0.15)
        Lv_4.CFrame = CFrame.new(Lz.model:GetPivot().Position + Vector3.new(0, 4, 0))
        task.wait(0.35)
        pcall(fireproximityprompt, Lz.prompt)
        task.wait(0.45)
        Lv_4.CFrame = CFrame2
        CY()
        for k, v in Lu_2.units do
            if tostring(v.UUID) ~= tostring(Lw_5.UUID) then
                Lx_4 = v
                break
            end
        end
    end
    local Ls_3 = DD(Lx_4.UUID)
    if not Ls_3 then
        Label5:SetText("Merge: missing fodder")
        return
    end
    Label5:SetText("Merge: " .. tostring(Lx_4.Name))
    local CFrame2 = Lv_4.CFrame
    Lw_3:EquipTool(Ls_3)
    task.wait(0.15)
    Lv_4.CFrame = CFrame.new(Lz.model:GetPivot().Position + Vector3.new(0, 4, 0))
    task.wait(0.35)
    pcall(fireproximityprompt, Lz.prompt)
    task.wait(0.45)
    Lv_4.CFrame = CFrame2
    DS.merges = DS.merges + 1
    local Name = Lx_4.Name
    local Rarity = Lu_2.info.Rarity
    local Mutation = Lx_4.Mutation
    local Lw_6 = tonumber(Lx_4.Level) or 1
    C4(Name, Rarity, Mutation, Lw_6 + 1)
end
function fns.fn1190()
    local Hf = C9()
    local Hg = Hf and Hf:FindFirstChild("Characters")
    local Hf_1 = {}
    if not Hg then
        return Hf_1
    end
    for i, child in Hg:GetChildren() do
        local Hg_1 = tonumber(child:GetAttribute("Slot"))
        local Hh_1 = Hg_1 and not child:GetAttribute("RollPreview")
        if Hh_1 then
            local Hh_2 = child:GetAttribute("CharacterName") or child.Name
            local Hi = tonumber(child:GetAttribute("Level")) or 1
            local Hj = child:GetAttribute("Mutation") or ""
            Hf_1[Hg_1] = { model = child, name = Hh_2, level = Hi, mutation = Hj, uuid = child:GetAttribute("UUID") }
        end
    end
    return Hf_1
end
function fns.onDescendantAdded2(hT)
    if fns.Toggles.FpsBoost.Value then
        Do(hT)
    end
end
function fns.onExportConfigToClipboard()
    local T5_1
    local T4_1
    T4_1, T5_1 = pcall(Cn.JSONEncode, Cn, Ux_31())
    if not T4_1 then
        CO:Notify("Failed to encode the config")
        return
    end
    local T4_2 = setclipboard or toclipboard
    local T4_3 = type(T4_2) ~= "function" or not pcall(T4_2, T5_1)
    if T4_3 then
        CO:Notify("Your executor does not support copying to the clipboard")
        return
    end
    CO:Notify("Config copied to clipboard", 6)
end
function fns.autoSpinWheelLoop()
    while not CO.Unloaded do
        task.wait(3)
        local Qu = fns.Toggles.AutoSpinWheel.Value and Dt() > 0
        if Qu then
            pcall(function()
                Ux_22:FireServer("Spin")
            end)
            task.wait(8)
        end
    end
end
function fns.autoSummonLoop()
    while not CO.Unloaded do
        local Pu = fns.Toggles.AutoSummon.Value and not DZ
        if Pu then
            local Pv_1 = fns.Toggles.PauseSummonInFight.Value and Da()
            Pu = not Pv_1
        end
        if Pu then
            local Pu_1 = BM()
            local Character = Di.Character
            local Pw = Character and Character:FindFirstChild("HumanoidRootPart")
            if Pu_1 and Pw then
                local Parent = Pu_1.Parent
                local CFrame2
                if (Pw.Position - Parent.Position).Magnitude > Pu_1.MaxActivationDistance - 2 then
                    if fns.Toggles.TeleportToPad.Value then
                        CFrame2 = Pw.CFrame
                        Pw.CFrame = CFrame.new(Parent.Position + Vector3.new(0, 5, 0))
                        task.wait(0.3)
                    else
                        Pu_1 = nil
                    end
                end
                if Pu_1 then
                    pcall(fireproximityprompt, Pu_1)
                    task.wait(0.6)
                end
                if CFrame2 then
                    Pw.CFrame = CFrame2
                end
            end
            task.wait(math.max(BR() - 0.6, 0.1))
        else
            task.wait(0.4)
        end
    end
end
function fns.enableWebhookLoop()
    while not CO.Unloaded do
        task.wait(1)
        local KG = {}
        local KH = {}
        local KI = os.clock()
        for k, v in CK do
            if KI - v.time >= 1.5 then
                KH[#KH + 1] = v
            else
                KG[#KG + 1] = v
            end
        end
        CK = KG
        if fns.Toggles.EnableWebhook.Value then
            local KG_1 = false
            local KI_1 = {}
            for k, v in KH do
                if Dn(v) then
                    KI_1[#KI_1 + 1] = Cy(v)
                    if DT(v) then
                        KG_1 = true
                    end
                end
            end
            local KH_1 = #KI_1
            local K_ = 1
            while K_ <= KH_1 do
                local K0 = K_
                local KH_2 = table.move(KI_1, K0, math.min(K0 + 9, #KI_1), 1, {})
                local KK = KG_1 and "@everyone" or nil
                Dz({ content = KK, embeds = KH_2 })
                task.wait(1)
                K_ += 10
            end
        end
    end
end
function fns.fn1324()
    if Da() then
        return
    end
    if BP.HasAnyClone() then
        return
    end
    pcall(function()
        BO:FireServer("EquipBest")
    end)
end
function fns.fn1349(kZ)
    local Name = kZ.Name
    local NM = Name and fns.Ux_17[Name]
    if not NM then
        return false
    end
    if NM.Rarity == "Limited" or NM.CanClone == false then
        return false
    elseif kZ.Mutation == "Astronaut" then
        return false
    else
        if fns.Toggles.CloneSkipLocked.Value and kZ.isLocked == true then
            return false
        end
        if not Cz.CloneRuleRarity.Value[NM.Rarity] then
            return false
        end
        local Value2 = Cz[Ck[NM.Rarity]].Value
        local NN_1 = next(Value2) ~= nil and not Value2[Name]
        if NN_1 then
            return false
        end
        local NM_5 = kZ.Mutation ~= nil and kZ.Mutation ~= "" and kZ.Mutation
        local NR = if NM_5 then 1 else 0
        local NP = 3780 * NR + 1093 * (1 - NR)
        local NQ = 3119 * NR + 1204 * (1 - NR)
        if not ((NP * 764 + NQ * 320 + NP * NQ) % 16777213 == 15675820) then
            NM_5 = fns.Ux_19
        end
        local NL_2 = NM_5
        if fns.Toggles.CloneOnlyMutated.Value and NL_2 == fns.Ux_19 then
            return false
        end
        local Value = Cz.CloneMutations.Value
        local NN_3 = next(Value) ~= nil and not Value[NL_2]
        if NN_3 then
            return false
        end
        local NL_3 = tonumber(kZ.Level) or 1
        local NL_4 = tonumber(Cz.CloneMinLevel.Value) or 1
        if NL_4 > 0 and NL_3 < NL_4 then
            return false
        end
        local NL_6 = tonumber(Cz.CloneMaxLevel.Value) or 0
        if NL_6 > 0 and NL_3 > NL_6 then
            return false
        end
        return true
    end
end
function fns.onChildAdded()
    if fns.Toggles.RemoveOtherBases.Value then
        task.defer(Cm, true)
    end
end
function fns.fn1386(dl)
    local Plots = workspace:FindFirstChild("Plots")
    if dl and Plots then
        for i, child in Plots:GetChildren() do
            local attr = child:GetAttribute("Owner")
            local If = type(attr) == "string" and attr ~= "" and attr ~= Di.Name
            if If then
                BN[child] = Plots
                child.Parent = nil
            end
        end
        return
    end
    for k, v in BN do
        if k.Parent == nil and v.Parent then
            k.Parent = v
        end
    end
    table.clear(BN)
end
function fns.fn1408(un, uo)
    local Type = uo.Type
    if Type == "Toggle" then
        return { idx = un, type = "Toggle", value = uo.Value == true }
    elseif Type == "Slider" then
        return { idx = un, type = "Slider", value = tostring(uo.Value) }
    elseif Type == "Dropdown" then
        return { idx = un, type = "Dropdown", multi = uo.Multi == true, value = uo.Value }
    elseif Type == "Input" then
        local TC = uo.Value or ""
        return { idx = un, type = "Input", text = tostring(TC) }
    elseif Type == "ColorPicker" then
        return { idx = un, type = "ColorPicker", value = uo.Value:ToHex(), transparency = uo.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = un,
            type = "KeyPicker",
            mode = uo.Mode,
            key = uo.Value,
            modifiers = uo.Modifiers,
            toggled = uo.Toggled
        }
    else
        return nil
    end
end
function fns.onOnClientEvent(a8, a9, ba, bb, bc)
    local F4 = a8 ~= Di or type(ba) ~= "table"
    local F5 = bc == nil
    local F6 = F4
    local Ga = if F6 then 1 else 0
    local F8 = 3890 * Ga + 315 * (1 - Ga)
    local F9 = 3716 * Ga + 1054 * (1 - Ga)
    if not ((F8 * 3959 + F9 * 3603 + F8 * F9) % 16777213 == 9690072) then
        F6 = F5
    end
    if F6 then
        return
    end
    BK = { id = bc, characters = ba, bought = {}, queued = {} }
    fns.Ux_3 += 1
    DS.rolls = DS.rolls + 1
    for k, v in ba do
        if v.Name and v.Rarity then
            BK.queued[k] = fns.Ux_10(v)
            local F4_2 = Cg[v.Rarity] or 0
            local F5_1 = not CS
            if not F5_1 then
                F5_1 = F4_2 > (Cg[CS.rarity] or 0)
            end
            if F5_1 then
                CS = { name = v.Name, rarity = v.Rarity, mutation = v.Mutation }
            end
        end
    end
end
function fns.worker5()
    while not CO.Unloaded do
        task.wait(1)
        local Rk = Dt()
        local Monetization = workspace:FindFirstChild("Monetization")
        local Rl_5
        local Rm = Monetization and Monetization:FindFirstChild("SpinWheel")
        local Rl_1 = Rm
        if Rm then
            Rm = Rl_1:FindFirstChild("Prox")
        end
        local Rl_2 = Rm
        if Rm then
            Rm = Rl_2:FindFirstChild("RestockGUI")
        end
        local Rl_3 = Rm
        if Rm then
            Rm = Rl_3:FindFirstChild("Timer")
        end
        local Rl_4 = Rm
        if Rk > 0 then
            Label7:SetText("Spins: " .. tostring(Rk))
        else
            local Rk_1 = Rl_4 and Rl_4:IsA("TextLabel")
            if Rk_1 then
                Label7:SetText(Rl_4.Text)
            else
                Label7:SetText("Spins: 0")
            end
        end
        for k, v in Cp do
            local Rk_2 = Cr(v)
            if Ux_23.IsMaxed(v, Rk_2) then
                Rl_5 = v .. ": MAX"
            else
                local Rm_1 = Ux_23.GetPrice(v, Rk_2)
                Rl_5 = v .. ": Lv " .. tostring(Ux_23.GetDisplayLevel(v, Rk_2))
                if Rm_1 then
                    Rl_5 = Rl_5 .. " ($" .. tostring(Rm_1) .. ")"
                end
            end
            Dp[v]:SetText(Rl_5)
        end
    end
end
function fns.fn1463()
    local G3 = C9()
    local G4 = G3 and G3:FindFirstChild("Placement")
    local G3_1 = {}
    if not G4 then
        return G3_1
    end
    for i, child in G4:GetChildren() do
        local G4_1 = tonumber(child.Name:match("%d+"))
        local Character = child:FindFirstChild("Character")
        local G6 = Character and Character:FindFirstChild("PlacementPrompt")
        local G5_2 = G4_1 and G6 and not child:FindFirstChild("LockedHighlight")
        if G5_2 then
            G3_1[#G3_1 + 1] = { index = G4_1, model = child, prompt = G6 }
        end
    end
    table.sort(G3_1, function(cj, ck)
        return cj.index < ck.index
    end)
    return G3_1
end
function fns.fn1468(je, jf)
    local Mr = EvolutionInfo.Characters[je]
    if not Mr then
        return false
    end
    local Mt = Mr.Requirements or {}
    local Mt_1 = Mt.Character or {}
    local Mt_2 = {}
    local Mu = Mt.Items
    local Mz = if Mu then 1 else 0
    local Mx = 3886 * Mz + 80 * (1 - Mz)
    local My = 4023 * Mz + 1033 * (1 - Mz)
    if not ((Mx * 3763 + My * 2610 + Mx * My) % 16777213 == 7202000) then
        Mu = Mt_2
    end
    local Mr_2 = Mu
    if D1(jf) == "" then
        return false
    end
    for k, v in Mt_1 do
        local max = math.max
        local floor = math.floor
        local Mu_1 = tonumber(v.Amount) or 1
        local Mv = max(1, floor(Mu_1))
        if CR(k, v.Level, nil) < Mv then
            return false
        end
    end
    for k, v in Mr_2 do
        local max = math.max
        local floor = math.floor
        local Mt_4 = tonumber(v.Amount) or 1
        local Mu_2 = max(1, floor(Mt_4))
        local Mr_4 = tonumber(BP.GetItemAmount(k)) or 0
        if Mr_4 < Mu_2 then
            return false
        end
    end
    return true
end
function fns.fn1488(gw)
    local J_ = gw.mutation ~= nil and gw.mutation ~= "" and gw.mutation or fns.Ux_19
    local J0 = gw.purchased and "Character Purchased" or "Character Rolled"
    local J__2 = D0[gw.rarity] or 5793266
    return {
        title = J0,
        color = J__2,
        fields = {
            { name = "Character", value = tostring(gw.name), inline = true },
            { name = "Rarity", value = tostring(gw.rarity), inline = true },
            { name = "Mutation", value = J_, inline = true },
            { name = "Price", value = tostring(gw.price), inline = true },
            { name = "Player", value = Di.Name, inline = true },
            { name = "Server", value = DR, inline = false }
        },
        footer = { text = BZ .. " | Ouroboros Hub" }
    }
end
function fns.fn1494()
    local HF = tonumber(Di:GetAttribute("FightWave")) or 1
    return HF
end
function fns.fn1559(dz, dA, dB)
    if dB ~= nil and dB ~= "" and dB ~= fns.Ux_19 then
        local format = string.format
        local Iu_1 = dA or ""
        return format("%s [%s %s]", dz, dB, Iu_1)
    end
    local format = string.format
    local Iu_2 = dA
    local Iz = if Iu_2 then 1 else 0
    local Ix = 801 * Iz + 3810 * (1 - Iz)
    local Iy = 1349 * Iz + 2514 * (1 - Iz)
    if not ((Ix * 1960 + Iy * 3967 + Ix * Iy) % 16777213 == 8001992) then
        Iu_2 = ""
    end
    return format("%s [%s]", dz, Iu_2)
end
function fns.fn1572(bJ)
    local GF = client:get({ "Upgrades", bJ })
    if GF == nil then
        return Ux_23.Upgrades.Default[bJ]
    end
    return GF
end
function fns.afkScreenLoop()
    while not CO.Unloaded do
        task.wait(0.5)
        if fns.Toggles.AfkScreen.Value and Ux_27 then
            Ux_27.current.Text = "Current Roll:  " .. CN(BK)
            Ux_27.best.Text = "Best Roll:  " .. Dh()
            Ux_27.rolls.Text = "Rolls This Session:  " .. tostring(fns.Ux_3)
            Ux_27.gold.Text = "Gold:  " .. tostring(CF())
            Ux_27.spins.Text = "Spins:  " .. tostring(Dt())
        end
    end
end
function fns.fn1666()
    local Value = Cz.EvolveInto.Value
    for k, v in BP.GetInventory() do
        local MN = Dk[v.Name]
        local MO = MN
        if MO then
            local MP = next(Value) == nil or Value[MN]
            MO = MP
        end
        if MO then
            if Dy(MN, v) then
                return v, MN
            end
        end
    end
    return nil
end
function fns.fn1682()
    local GJ = tonumber(client:get({ "Spin" })) or 0
    return math.max(0, math.floor(GJ))
end
function fns.fn1686()
    CE = false
end
function fns.fn1699(hC)
    if not hC then
        CE = false
    end
end
function fns.fn1707(bE)
    local GB = bE
    if GB then
        local GD = bE.UUID or bE.CharacterId or ""
        GB = tostring(GD)
    end
    return GB or ""
end
function fns.fn1725(ib)
    local Ln = tostring(ib.Name)
    local Lo = tonumber(ib.Level) or 1
    local Lp = tostring(Lo)
    local Lq = ib.Mutation or ""
    return Ln .. "|" .. Lp .. "|" .. tostring(Lq)
end
function fns.fn1735(cx)
    for i, child in Di.Backpack:GetChildren() do
        local Hr_1 = child:IsA("Tool") and child:GetAttribute("UUID") == cx
        if Hr_1 then
            return child
        end
    end
    local Character = Di.Character
    if Character then
        for i, child in Character:GetChildren() do
            local Hr_3 = child:IsA("Tool") and child:GetAttribute("UUID") == cx
            if Hr_3 then
                return child
            end
        end
    end
    return nil
end
function fns.onSendTestMessage()
    local KB = fns.Toggles.WebhookPing.Value and "@everyone" or nil
    local KA_1 = Dz({
        content = KB,
        embeds = {
            Cy({ name = "Test Character", rarity = "Secret", mutation = fns.Ux_19, price = 0, purchased = true })
        }
    })
    local KA_2 = KA_1 and "Webhook test sent"
    local KF = if KA_2 then 1 else 0
    local KD = 1507 * KF + 3313 * (1 - KF)
    local KE = 3465 * KF + 3230 * (1 - KF)
    if not ((KD * 2826 + KE * 1216 + KD * KE) % 16777213 == 13693977) then
        KA_2 = "Webhook test failed"
    end
    CO:Notify(KA_2)
end
function fns.fn1841()
    D4(Ux_29, "Copied Discord invite to clipboard")
end
function fns.fn1880(pT)
    local Qy = 0
    local Qz = 0
    local QA = C_()
    local QH = 1
    while QH <= QA do
        local QI = QH
        local QA_1 = BattlepassReward.Rewards[QI]
        if not QA_1 then
            break
        end
        local QD = tonumber(QA_1.EXP) or 0
        Qz += math.max(0, math.floor(QD))
        local QA_2 = tonumber(pT) or 0
        if Qz > QA_2 then
            break
        end
        Qy = QI
        QH += 1
    end
    return Qy
end
function fns.fn1882(c1)
    if CZ[c1] then
        return
    end
    if Ea(c1) then
        CZ[c1] = { property = "Enabled", value = c1.Enabled }
        c1.Enabled = false
    else
        local HV = c1:IsA("Decal") or c1:IsA("Texture")
        if HV then
            CZ[c1] = { property = "Transparency", value = c1.Transparency }
            c1.Transparency = 1
        end
    end
end
BH = nil
Ux_23 = nil
BK = nil
BL = nil
BM = nil
BN = nil
BO = nil
BP = nil
BQ = nil
BR = nil
BS = nil
BT = nil
client = nil
fns.Ux_15 = nil
BW = nil
onFpsBoost = nil
BY = nil
BZ = nil
B_ = nil
B1 = nil
B2 = nil
Label9 = nil
B5 = nil
Ux_29 = nil
fns.Ux_5 = nil
Cb = nil
Cc = nil
Ce = nil
Cg = nil
Ch = nil
fns.Ux_19 = nil
Ck = nil
Cl = nil
Cm = nil
Cn = nil
Co = nil
Cp = nil
Label = nil
Cr = nil
Cs = nil
Ct = nil
local Label6, B0, B3, B8, B9, Request, Cf, Ci
TalkTickets = nil
fns.Ux_10 = nil
Cx = nil
Cy = nil
Cz = nil
CA = nil
CB = nil
CC = nil
CD = nil
CE = nil
CF = nil
CH = nil
Ux_22 = nil
fns.Ux_1 = nil
CK = nil
CM = nil
CN = nil
CO = nil
EvolutionInfo = nil
CR = nil
CS = nil
Ux_34 = nil
fns.Ux_12 = nil
CloneInfo = nil
CY = nil
CZ = nil
C_ = nil
C2 = nil
C3 = nil
C4 = nil
C5 = nil
Ux_27 = nil
C8 = nil
C9 = nil
Da = nil
Db = nil
Label5 = nil
De = nil
Df = nil
Label8 = nil
local Cv, CG, Label10, CP, GlobalShadows, CW, C0, C1, GetQuestData, Dd
Dh = nil
Di = nil
fns.Ux_17 = nil
Dk = nil
Label7 = nil
Dn = nil
Do = nil
Dp = nil
Dt = nil
Du = nil
Ux_31 = nil
fns.Ux_7 = nil
Dx = nil
Dy = nil
Dz = nil
DB = nil
DC = nil
DD = nil
DE = nil
DF = nil
Label4 = nil
fns.Ux_20 = nil
connection3 = nil
DM = nil
Label3 = nil
DO = nil
DP = nil
DR = nil
DS = nil
DT = nil
connection2 = nil
fns.Toggles = nil
DX = nil
DZ = nil
D_ = nil
D0 = nil
D1 = nil
D2 = nil
D3 = nil
local Dm, GuiService, Dr, Label2, DA, DH, DJ, DL, DQ, DW, DY
D4 = nil
BattlepassReward = nil
Ux_24 = nil
fns.Ux_3 = nil
D8 = nil
Ea = nil
connection = nil
local D9
D9 = nil
local Ec
Ux_78, CO, Ux_47, CH, fns.Toggles, Cz, Ux_125, Ux_98, DH, Cn, DA, Ci, fns.Ux_7, Ce, GuiService, B9, Di, Ux_29, Db, BZ, Ux_43, Ux_90, C0, BO, CW, Ux_69, CP, D3, Ux_22, DW, CA, DO, TalkTickets, DJ, DB, Ux_56, Cf, Dr, Request, Ux_35, Ux_60, Dd, B0, GetQuestData, client, Ux_107, BP, CloneInfo, Ux_23, EvolutionInfo, BattlepassReward, fns.Ux_1, DX, CB, DQ, Cv, Ux_65, Cp, Ux_74, fns.Ux_19, Ux_83, Cg = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Ux_116 = 194
repeat
    Ux_39 = (Ux_116 * 11 + 10) % 30 + 1
    if Ux_39 <= 15 then
        if Ux_39 <= 8 then
            if Ux_39 <= 4 then
                if Ux_39 <= 2 then
                    if Ux_39 <= 1 then
                        if (Ux_116 * 3 + 6) * 5 % 4 == ((Ux_116 * 3 + 6) * 5 + 3) % 4 then
                            Ux_98 = Ux_35.Modules.Battlepass
                        else
                            Ux_35 = Ux_98.Modules.Battlepass
                        end
                        Ux_116 = (Ux_116 + 41) % 240
                    else
                        Ux_26 = (vector.create((Ux_116 * 6 + 8) % 11 + 1, (Ux_116 * 5 + 13) % 13 + 1, (Ux_116 * 1 + 9) % 17 + 1))
                        fns.Ux_6 = (vector.create((Ux_116 * 4 + 6) % 11 + 1, (Ux_116 * 9 + 8) % 13 + 1, (Ux_116 * 9 + 14) % 17 + 1))
                        local Yo = vector.cross(Ux_26, fns.Ux_6)
                        local Yp = vector.dot(Ux_26, fns.Ux_6)
                        if vector.dot(Yo, Yo) + Yp * Yp == vector.dot(Ux_26, Ux_26) * vector.dot(fns.Ux_6, fns.Ux_6) + 1 then
                            Ux_35 = GetQuestData.BattlepassQuest
                            Ux_60 = GetQuestData.Claim
                            Dd = Ux_35.ClaimQuest
                            B0 = Ux_35.GetQuestData
                        else
                            Ux_60 = Ux_35.BattlepassQuest
                            Dd = Ux_35.Claim
                            B0 = Ux_60.ClaimQuest
                            GetQuestData = Ux_60.GetQuestData
                        end
                        Ux_116 = (Ux_116 + 221) % 240
                    end
                elseif Ux_39 <= 3 then
                    if (Ux_116 * 2 + 9) * 4 % 3 == ((Ux_116 * 2 + 9) * 4 + 4) % 3 then
                        Ux_98 = require(client.Data.DataService).client
                    else
                        client = require(Ux_98.Data.DataService).client
                    end
                    Ux_116 = (Ux_116 + 41) % 240
                else
                    local Y0 = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 19), string.byte(tostring(D3))), 11)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Y0, 869490715), 3540532140), (bit32.bxor(bit32.band(Y0, 3425476580), 844506689))), 3540532140), 844506689) ~= Y0 then
                        Ux_98 = require(Ux_107.Modules.Characters.CharactersInfo)
                    else
                        Ux_107 = require(Ux_98.Modules.Characters.CharactersInfo)
                    end
                    Ux_116 = (Ux_116 + 41) % 240
                end
            elseif Ux_39 <= 6 then
                if Ux_39 <= 5 then
                    if Ux_116 * 13253877 + 8 + 1 >= Ux_116 * 13253877 + 8 + 1 + 2 then
                        Ux_98 = require(CloneInfo.Modules.Shared.AnimeState)
                        Ux_23 = require(CloneInfo.Modules.Shared.CloneStuff.CloneInfo)
                        BP = require(CloneInfo.Modules.Shared.UpgradesInfo)
                    else
                        BP = require(Ux_98.Modules.Shared.AnimeState)
                        CloneInfo = require(Ux_98.Modules.Shared.CloneStuff.CloneInfo)
                        Ux_23 = require(Ux_98.Modules.Shared.UpgradesInfo)
                    end
                    Ux_116 = (Ux_116 + 161) % 240
                else
                    Ux_26 = (vector.create((Ux_116 * 6 + 1) % 11 + 1, (Ux_116 * 2 + 5) % 13 + 1, (Ux_116 * 5 + 14) % 17 + 1))
                    local Zn = vector.floor(Ux_26) + vector.ceil(Ux_26 * -1)
                    if vector.dot(Zn, Zn) == 5 then
                        Ux_98 = require(EvolutionInfo.Modules.Shared.Evolve.EvolutionInfo)
                    else
                        EvolutionInfo = require(Ux_98.Modules.Shared.Evolve.EvolutionInfo)
                    end
                    Ux_116 = (Ux_116 + 221) % 240
                end
            elseif Ux_39 <= 7 then
                Ux_26 = (vector.create((Ux_116 * 7 + 3) % 11 + 1, (Ux_116 * 4 + 5) % 13 + 1, (Ux_116 * 8 + 7) % 17 + 1))
                fns.Ux_6 = (vector.create((Ux_116 * 4 + 1) % 11 + 1, (Ux_116 * 5 + 9) % 13 + 1, (Ux_116 * 7 + 16) % 17 + 1))
                Ux_121 = (vector.create((Ux_116 * 3 + 5) % 11 + 1, (Ux_116 * 2 + 5) % 13 + 1, (Ux_116 * 9 + 15) % 17 + 1))
                if vector.dot(vector.cross(Ux_26, fns.Ux_6), Ux_121) == vector.dot(vector.cross(fns.Ux_6, Ux_121), Ux_26) + 5 then
                    Ux_35 = require(BattlepassReward.BattlepassReward)
                    DX = 107653945083776
                    DQ = { [133623616308412] = true, [106731115565888] = true }
                    fns.Ux_1 = { [133207600268474] = true, [87737123573764] = true }
                    CB = { "Daily", "Weekly" }
                else
                    BattlepassReward = require(Ux_35.BattlepassReward)
                    fns.Ux_1 = 107653945083776
                    DX = { [133623616308412] = true, [106731115565888] = true }
                    CB = { [133207600268474] = true, [87737123573764] = true }
                    DQ = { "Daily", "Weekly" }
                end
                Ux_116 = (Ux_116 + 161) % 240
            else
                Ux_26 = (vector.create((Ux_116 * 6 + 7) % 11 + 1, (Ux_116 * 1 + 1) % 13 + 1, (Ux_116 * 14 + 8) % 17 + 1))
                fns.Ux_6 = (vector.create((Ux_116 * 2 + 6) % 11 + 1, (Ux_116 * 5 + 4) % 13 + 1, (Ux_116 * 2 + 13) % 17 + 1))
                Ux_121 = (vector.create((Ux_116 * 5 + 4) % 11 + 1, (Ux_116 * 7 + 7) % 13 + 1, (Ux_116 * 15 + 2) % 17 + 1))
                Ux_112 = (vector.create((Ux_116 * 4 + 3) % 5 + 1, (Ux_116 * 5 + 3) % 7 + 1, (Ux_116 * 5 + 1) % 9 + 1))
                if vector.dot(vector.cross(Ux_26, (vector.cross(fns.Ux_6, Ux_121))), Ux_112) == vector.dot(fns.Ux_6 * vector.dot(Ux_26, Ux_121) - Ux_121 * vector.dot(Ux_26, fns.Ux_6), Ux_112) + 3 then
                    Ux_125 = { "Free", "Premium" }
                else
                    Cv = { "Free", "Premium" }
                end
                Ux_116 = (Ux_116 + 191) % 240
            end
        elseif Ux_39 <= 12 then
            if Ux_39 <= 10 then
                if Ux_39 <= 9 then
                    local Zr = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 26), string.byte(tostring(Cn))), 25)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Zr, 2506373287), 2598553263), (bit32.bxor(bit32.band(Zr, 1788594008), 1029193184))), 2598553263), 1029193184) ~= Zr then
                        Cv = { "Secret", "Mythic", "Common", "God", "Limited", "Epic", "Legendary", "Rare" }
                    else
                        Ux_65 = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Secret", "God", "Limited" }
                    end
                    Ux_116 = (Ux_116 + 221) % 240
                else
                    if (not Cg or not Ux_125 or not Ux_125 and not Ux_125) and ((not Ux_125 or DX) and (not EvolutionInfo and DX)) or (Ux_125 and Cp or Cg and Cp or (not Ux_125 and not EvolutionInfo or DX and not Ux_125)) or ((Cg or not EvolutionInfo or Cp and not EvolutionInfo) and (DX and not Cp and (EvolutionInfo and Ux_125)) or ((not Cg or Ux_125) and (DX or Ux_125) or (Cp or not Ux_125) and (Cp or not EvolutionInfo))) or not ((not Cg or not Ux_125 or not Ux_125 and not Ux_125) and ((not Ux_125 or DX) and (not EvolutionInfo and DX)) or (Ux_125 and Cp or Cg and Cp or (not Ux_125 and not EvolutionInfo or DX and not Ux_125)) or ((Cg or not EvolutionInfo or Cp and not EvolutionInfo) and (DX and not Cp and (EvolutionInfo and Ux_125)) or ((not Cg or Ux_125) and (DX or Ux_125) or (Cp or not Ux_125) and (Cp or not EvolutionInfo)))) then
                        Cp = { "Gold", "Luck", "Slots", "Inventory" }
                    else
                        DW = { "Luck", "Gold", "Slots", "Inventory" }
                    end
                    Ux_116 = (Ux_116 + 131) % 240
                end
            elseif Ux_39 <= 11 then
                Ux_26 = {
                    "fwmsflqgf",
                    "kizzfgqdhp",
                    "viypipnjhje",
                    "qmxdkqungxx",
                    "qfhrshvhmp",
                    "uitvlzu",
                    "exmeg",
                    "ebop",
                    "pwwuac",
                    "flpmgfpojdkj",
                    "sdmvjnf",
                    "nawmr",
                    "doyxj",
                    "hjecra"
                }
                if Ux_26[(Ux_116 * 39 + 75) % 14 + 1] < Ux_26[(Ux_116 * 39 + 75) % 14 + 1] then
                    Ux_56 = { "Medium", "Hard", "Extreme", "Easy" }
                else
                    Ux_74 = { "Easy", "Medium", "Hard", "Extreme" }
                end
                Ux_116 = (Ux_116 + 41) % 240
            else
                Ux_26 = {
                    "euqb",
                    "phgwvxedwwlo",
                    "jhmsjkndvr",
                    "hjgsqbm",
                    "bxw",
                    "kggbge",
                    "fhxsxmn",
                    "ezbllsmndp",
                    "odcwf",
                    "huhgqijrnb"
                }
                if Ux_26[(Ux_116 * 5 + 38) % 10 + 1] < Ux_26[(Ux_116 * 5 + 38) % 10 + 1] then
                    Db = "No Mutation"
                else
                    fns.Ux_19 = "No Mutation"
                end
                Ux_116 = (Ux_116 + 221) % 240
            end
        elseif Ux_39 <= 14 then
            if Ux_39 <= 13 then
                if Ux_116 * 34809015 + 1 + 5 <= Ux_116 * 34809015 + 1 + 5 + 5 then
                    Ux_83 = {
                        "Battlepass",
                        "Byakugou Seal",
                        "Common Essence",
                        "Cursed Finger",
                        "Cursed Womb",
                        "Drop2x",
                        "Epic Essence",
                        "FastSummon",
                        "Gift Box (Order vs Chaos)",
                        "God Capsule",
                        "God Essence",
                        "God's Eye",
                        "Gold Potion",
                        "Gold2x",
                        "Ice Dagger",
                        "Infinite Ticket",
                        "Legendary Essence",
                        "Luck Potion",
                        "Luck2x",
                        "Mutation2x",
                        "Mythic Capsule",
                        "Mythic Essence",
                        "Nuclear Core",
                        "Rare Essence",
                        "S-Rank Badge",
                        "Sakuna's Fragment",
                        "Secret Capsule",
                        "Secret Essence",
                        "Setzu's Husk",
                        "Six Eyes",
                        "Speed3x",
                        "Super Gold Potion",
                        "Super Luck Potion",
                        "Super Time Potion",
                        "SuperLuck",
                        "Supreme Essence",
                        "Tailed Chakra",
                        "Time Potion",
                        "Trading Ticket",
                        "Trait Shard",
                        "Truth Orb",
                        "UltraLuck",
                        "VIP",
                        "_2xFlex",
                        "_3xFlex"
                    }
                else
                    DA = {
                        "God's Eye",
                        "Secret Capsule",
                        "Rare Essence",
                        "Byakugou Seal",
                        "VIP",
                        "_2xFlex",
                        "Legendary Essence",
                        "Time Potion",
                        "Supreme Essence",
                        "Sakuna's Fragment",
                        "Cursed Finger",
                        "Cursed Womb",
                        "Truth Orb",
                        "Epic Essence",
                        "_3xFlex",
                        "Common Essence",
                        "Mythic Essence",
                        "Gift Box (Order vs Chaos)",
                        "Luck Potion",
                        "Super Gold Potion",
                        "Six Eyes",
                        "Nuclear Core",
                        "Mutation2x",
                        "Tailed Chakra",
                        "Drop2x",
                        "Mythic Capsule",
                        "S-Rank Badge",
                        "Super Luck Potion",
                        "Infinite Ticket",
                        "Super Time Potion",
                        "Secret Essence",
                        "Setzu's Husk",
                        "FastSummon",
                        "UltraLuck",
                        "God Capsule",
                        "Ice Dagger",
                        "Speed3x",
                        "Trait Shard",
                        "Gold2x",
                        "SuperLuck",
                        "Trading Ticket",
                        "Battlepass",
                        "God Essence",
                        "Gold Potion",
                        "Luck2x"
                    }
                end
                Ux_116 = (Ux_116 + 131) % 240
            else
                if Ux_116 * 116886617 + 12 + 7 <= Ux_116 * 116886617 + 12 + 7 + 3 then
                    Cg = {}
                else
                    Ux_60 = {}
                end
                Ux_116 = (Ux_116 + 41) % 240
            end
        else
            local ZY = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 29), string.byte(tostring(Ux_60))), 5)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ZY, 78232349), 3086121774), (bit32.bxor(bit32.band(ZY, 4216734946), 1570855629))), 3086121774), 1570855629) ~= ZY then
                Ux_65 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                Ux_78 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            Ux_116 = (Ux_116 + 101) % 240
        end
    elseif Ux_39 <= 23 then
        if Ux_39 <= 19 then
            if Ux_39 <= 17 then
                if Ux_39 <= 16 then
                    if (DQ and not Ci or not Cn and not BO or (Cn or not BO) and (Cn and DQ)) and (not Cp and C0 or (not Cn or not DQ) or (BO or not DQ or (C0 or Cp))) and not ((DQ and not Ci or not Cn and not BO or (Cn or not BO) and (Cn and DQ)) and (not Cp and C0 or (not Cn or not DQ) or (BO or not DQ or (C0 or Cp)))) then
                        Ux_47 = loadstring(game:HttpGet(fns.Toggles .. "Library.lua"))()
                        CO = loadstring(game:HttpGet(fns.Toggles .. "addons/ThemeManager.lua"))()
                        Cz = loadstring(game:HttpGet(fns.Toggles .. "addons/SaveManager.lua"))()
                        CH = Ux_47.Toggles
                        Ux_78 = Ux_47.Options
                    else
                        CO = loadstring(game:HttpGet(Ux_78 .. "Library.lua"))()
                        Ux_47 = loadstring(game:HttpGet(Ux_78 .. "addons/ThemeManager.lua"))()
                        CH = loadstring(game:HttpGet(Ux_78 .. "addons/SaveManager.lua"))()
                        fns.Toggles = CO.Toggles
                        Cz = CO.Options
                    end
                    Ux_116 = (Ux_116 + 11) % 240
                else
                    Ux_26 = {
                        "bslbkjc",
                        "usoihi",
                        "vwmwzngyfya",
                        "zooxkm",
                        "jrmyeg",
                        "ufajv",
                        "fsclnhv",
                        "omjxpnf",
                        "odiibygdpmq",
                        "epwrxbhistgj",
                        "xehay",
                        "mfoff"
                    }
                    if Ux_26[(Ux_116 * 66 + 11) % 12 + 1] < Ux_26[(Ux_116 * 66 + 11) % 12 + 1] then
                        DA = game:GetService("Players")
                    else
                        Ux_125 = game:GetService("Players")
                    end
                    Ux_116 = (Ux_116 + 221) % 240
                end
            elseif Ux_39 <= 18 then
                local Y6 = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 18), string.byte(tostring(Ux_23))), 21)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Y6, 3098189627), 28), 3146426867) == bit32.lrotate(Y6, 28) then
                    Ux_98 = game:GetService("ReplicatedStorage")
                else
                    CP = game:GetService("ReplicatedStorage")
                end
                Ux_116 = (Ux_116 + 221) % 240
            else
                Ux_26 = { "ugzd", "gaiek", "quqq", "ljetny", "wcqnkleoize", "nxcsbe", "iznudvdsr", "zqe", "omexfzvup" }
                if Ux_26[(Ux_116 * 22 + 72) % 9 + 1] < Ux_26[(Ux_116 * 22 + 72) % 9 + 1] then
                    Cn = game:GetService("Lighting")
                    DH = game:GetService("HttpService")
                else
                    DH = game:GetService("Lighting")
                    Cn = game:GetService("HttpService")
                end
                Ux_116 = (Ux_116 + 131) % 240
            end
        elseif Ux_39 <= 21 then
            if Ux_39 <= 20 then
                Ux_26 = (vector.create((Ux_116 * 7 + 6) % 11 + 1, (Ux_116 * 5 + 5) % 13 + 1, (Ux_116 * 14 + 1) % 17 + 1))
                fns.Ux_6 = (vector.create((Ux_116 * 7 + 2) % 11 + 1, (Ux_116 * 9 + 2) % 13 + 1, (Ux_116 * 6 + 13) % 17 + 1))
                Ux_121 = (vector.create((Ux_116 * 5 + 6) % 11 + 1, (Ux_116 * 5 + 5) % 13 + 1, (Ux_116 * 2 + 10) % 17 + 1))
                Ux_112 = (vector.create((Ux_116 * 5 + 4) % 5 + 1, (Ux_116 * 2 + 1) % 7 + 1, (Ux_116 * 5 + 7) % 9 + 1))
                if vector.dot(vector.cross(Ux_26, (vector.cross(fns.Ux_6, Ux_121))), Ux_112) == vector.dot(fns.Ux_6 * vector.dot(Ux_26, Ux_121) - Ux_121 * vector.dot(Ux_26, fns.Ux_6), Ux_112) then
                    DA = game:GetService("UserInputService")
                else
                    Cf = game:GetService("UserInputService")
                end
                Ux_116 = (Ux_116 + 131) % 240
            else
                Ux_26 = {
                    "gxwtfctb",
                    "jzpbfmy",
                    "brtjfmtyib",
                    "mcpyyakfc",
                    "bmmdcdw",
                    "vqlcjgcsz",
                    "mlbwqp",
                    "enjnelbvo",
                    "ekm"
                }
                local Wr = Ux_116
                fns.Ux_6 = Ux_26[Wr % 9 + 1]
                if fns.Ux_6:len() >= fns.Ux_6:gsub("(.)", "%1%1", Wr % 3 % 2 + 1):len() then
                    fns.Ux_7 = game:GetService("VirtualUser")
                    Ce = game:GetService("TeleportService")
                    Ci = game:GetService("RunService")
                else
                    Ci = game:GetService("VirtualUser")
                    fns.Ux_7 = game:GetService("TeleportService")
                    Ce = game:GetService("RunService")
                end
                Ux_116 = (Ux_116 + 221) % 240
            end
        elseif Ux_39 <= 22 then
            Ux_26 = { "jtulv", "fiqiza", "bqb", "ttahadtq", "pcc", "mnhsibkxg", "olwqpjl" }
            local ZD = Ux_116
            fns.Ux_6 = Ux_26[ZD % 7 + 1]
            if fns.Ux_6:len() <= fns.Ux_6:gsub("(.)", "%1%1", ZD % 3 % 2 + 1):len() then
                GuiService = game:GetService("GuiService")
                B9 = game:GetService("CoreGui")
                Di = Ux_125.LocalPlayer
                Ux_29 = "https://discord.gg/ehKVq7pf7v"
                Db = "https://rscripts.net/@Ouroboros"
            else
                Ux_29 = game:GetService("GuiService")
                Ux_125 = game:GetService("CoreGui")
                Db = GuiService.LocalPlayer
                B9 = "https://discord.gg/ehKVq7pf7v"
                Di = "https://rscripts.net/@Ouroboros"
            end
            Ux_116 = (Ux_116 + 71) % 240
        else
            if (not Cn or not Cn or (Cn or not Ux_83) or (not EvolutionInfo or not EvolutionInfo or not Ux_83 and Ux_83)) and ((Ux_83 and not Cn or not Cn and Ux_83) and (Cn and not EvolutionInfo or Ux_83 and Ux_83)) or not ((not Cn or not Cn or (Cn or not Ux_83) or (not EvolutionInfo or not EvolutionInfo or not Ux_83 and Ux_83)) and ((Ux_83 and not Cn or not Cn and Ux_83) and (Cn and not EvolutionInfo or Ux_83 and Ux_83))) then
                BZ = "Roll Anime to Fight!"
            else
                Ux_23 = "Roll Anime to Fight!"
            end
            Ux_116 = (Ux_116 + 101) % 240
        end
    elseif Ux_39 <= 27 then
        if Ux_39 <= 25 then
            if Ux_39 <= 24 then
                if (Ux_116 * 2 + 9) * 7 % 3 == ((Ux_116 * 2 + 9) * 7 + 6) % 3 then
                    Ux_43 = Ux_98:WaitForChild("Remotes")
                else
                    Ux_98 = Ux_43:WaitForChild("Remotes")
                end
                Ux_116 = (Ux_116 + 71) % 240
            else
                local X4 = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 18), string.byte(tostring(CB))), 14)
                if bit32.bxor(bit32.lrotate(bit32.bxor(X4, 756152588), 10), 1206137012) ~= bit32.lrotate(X4, 10) then
                    Ux_43 = Ux_69.Characters.Roll
                    BO = Ux_69.Characters.Buy
                    C0 = Ux_69.Characters.UpdateInventory
                    Ux_90 = Ux_69.Characters.Sell
                    CW = Ux_69.Characters.LevelUp
                else
                    Ux_90 = Ux_43.Characters.Roll
                    C0 = Ux_43.Characters.Buy
                    BO = Ux_43.Characters.UpdateInventory
                    CW = Ux_43.Characters.Sell
                    Ux_69 = Ux_43.Characters.LevelUp
                end
                Ux_116 = (Ux_116 + 161) % 240
            end
        elseif Ux_39 <= 26 then
            local Wp = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 13), string.byte(tostring(Ux_74))), 5)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Wp, 3975458198), 16), 2912349428) == bit32.lrotate(Wp, 16) then
                CP = Ux_43.Upgrade
                D3 = Ux_43.Fight.Start
                Ux_22 = Ux_43.SpinWheel.Spin
                DW = Ux_43:WaitForChild("AFKTeleport")
            else
                Ux_43 = DW.Upgrade
                Ux_22 = DW.Fight.Start
                D3 = DW.SpinWheel.Spin
                CP = DW:WaitForChild("AFKTeleport")
            end
            Ux_116 = (Ux_116 + 131) % 240
        else
            local ZZ = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_116, 20), string.byte(tostring(Ux_35))), 4)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ZZ, 598479149), 12), 3239236154) == bit32.lrotate(ZZ, 12) then
                CA = Ux_43:WaitForChild("JoinTower")
                DO = Ux_43:WaitForChild("ClaimVIP")
                TalkTickets = Ux_43:WaitForChild("NPCEvents"):WaitForChild("TalkTickets")
                DJ = Ux_43:WaitForChild("EvolutionRemotes"):WaitForChild("Evolve")
            else
                DJ = TalkTickets:WaitForChild("JoinTower")
                CA = TalkTickets:WaitForChild("ClaimVIP")
                DO = TalkTickets:WaitForChild("NPCEvents"):WaitForChild("TalkTickets")
                Ux_43 = TalkTickets:WaitForChild("EvolutionRemotes"):WaitForChild("Evolve")
            end
            Ux_116 = (Ux_116 + 11) % 240
        end
    elseif Ux_39 <= 29 then
        if Ux_39 <= 28 then
            Ux_39 = {
                "cpowbm",
                "gjahpt",
                "qfghxkujk",
                "okjxunbbrrd",
                "yohgqqzhf",
                "mzzjnmtjpu",
                "qfczavv",
                "ytcgxroee",
                "cekrizjaek",
                "mgflgtoirk",
                "gynkqjqsih"
            }
            if Ux_39[(Ux_116 * 46 + 3) % 11 + 1] <= Ux_39[(Ux_116 * 46 + 3) % 11 + 1] then
                Ux_51 = Ux_43:WaitForChild("Raids")
                DB = Ux_51:WaitForChild("Request")
                Ux_56 = Ux_51:WaitForChild("Update")
            else
                DB = Ux_56:WaitForChild("Raids")
                DB:WaitForChild("Request")
                Ux_43 = DB:WaitForChild("Update")
            end
            Ux_116 = (Ux_116 + 191) % 240
        else
            Ux_39 = { "ggaol", "rctcsswa", "thqbgh", "lqdzbnzwbcy", "okephshcc", "ior", "omshw" }
            local ZX = Ux_116
            Ux_26 = Ux_39[ZX % 7 + 1]
            if Ux_26:len() >= Ux_26:reverse():rep(ZX % 3 + 2):len() then
                Ux_43 = Cf:WaitForChild("Trader")
                Dr = Ux_43:WaitForChild("GetStock")
                Ux_43:WaitForChild("Buy")
            else
                fns.Ux_14 = Ux_43:WaitForChild("Trader")
                Cf = fns.Ux_14:WaitForChild("GetStock")
                Dr = fns.Ux_14:WaitForChild("Buy")
            end
            Ux_116 = (Ux_116 + 11) % 240
        end
    else
        Ux_39 = {
            "ulhsdmxglhd",
            "pkrearfi",
            "cnvzgf",
            "umgiux",
            "rrhknvymi",
            "slywnz",
            "cjjvkds",
            "rdy",
            "hvtlhzc"
        }
        if Ux_39[(Ux_116 * 72 + 67) % 9 + 1] <= Ux_39[(Ux_116 * 72 + 67) % 9 + 1] then
            Request = Ux_43:WaitForChild("CloneRemotes"):WaitForChild("Request")
        else
            Ux_43 = Request:WaitForChild("CloneRemotes"):WaitForChild("Request")
        end
        Ux_116 = (Ux_116 + 101) % 240
    end
until (Ux_116 * 67 + 14) % 240 == 22
for k, v in Ux_65 do
    Cg[v] = k
end
fns.Ux_17 = {}
for k, v in Ux_107.Characters do
    fns.Ux_17[v.Name] = v
end
Ux_78 = {}
for k, v in Ux_65 do
    Ux_78[v] = {}
end
for k, v in Ux_107.Characters do
    Ux_69 = Ux_78[v.Rarity]
    if Ux_69 then
        Ux_69[#Ux_69 + 1] = v.Name
    end
end
for k, v in Ux_78 do
    table.sort(v)
end
Ux_69 = { fns.Ux_19 }
for i, child in Ux_98.Assets.Mutations:GetChildren() do
    Ux_69[#Ux_69 + 1] = child.Name
end
CD = nil
table.sort(Ux_69)
CD = {}
for k, v in Ux_65 do
    CD[v] = { characters = "Buy" .. v .. "Characters", mutations = "Buy" .. v .. "Mutations" }
end
Ux_60 = {}
for k, v in Ux_65 do
    if v ~= "Limited" then
        Ux_60[#Ux_60 + 1] = v
    end
end
Ck = {}
for k, v in Ux_60 do
    Ck[v] = "Clone" .. v .. "Characters"
end
Ux_35, Ux_43, Dk = nil, nil, nil
Ux_51 = 4
repeat
    fns.Ux_14 = (Ux_51 * 1 + 1) % 2 + 1
    if fns.Ux_14 <= 1 then
        if Ux_51 * 106842379 + 4 + 7 <= Ux_51 * 106842379 + 4 + 7 + 3 then
            Ux_43 = {}
            Dk = {}
        else
            Dk = {}
            Ux_43 = {}
        end
        Ux_51 = (Ux_51 + 3) % 8
    else
        fns.Ux_14 = (vector.create((Ux_51 * 2 + 5) % 11 + 1, (Ux_51 * 6 + 13) % 13 + 1, (Ux_51 * 8 + 12) % 17 + 1))
        Ux_125 = (vector.create((Ux_51 * 7 + 2) % 11 + 1, (Ux_51 * 6 + 4) % 13 + 1, (Ux_51 * 9 + 4) % 17 + 1))
        Ux_116 = (vector.create((Ux_51 * 1 + 6) % 11 + 1, (Ux_51 * 7 + 7) % 13 + 1, (Ux_51 * 2 + 6) % 17 + 1))
        Ux_107 = (vector.create((Ux_51 * 4 + 1) % 5 + 1, (Ux_51 * 3 + 2) % 7 + 1, (Ux_51 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(fns.Ux_14, (vector.cross(Ux_125, Ux_116))), Ux_107) == vector.dot(Ux_125 * vector.dot(fns.Ux_14, Ux_116) - Ux_116 * vector.dot(fns.Ux_14, Ux_125), Ux_107) then
            Ux_35 = { "Highest Rarity", "Highest Level", "Cheapest Essence", "Inventory Order" }
        else
            Dk = { "Highest Rarity", "Highest Level", "Cheapest Essence", "Inventory Order" }
        end
        Ux_51 = (Ux_51 + 5) % 8
    end
until (Ux_51 * 3 + 1) % 8 == 5
for k, v in EvolutionInfo.Characters do
    Ux_43[#Ux_43 + 1] = k
    Ux_51 = v.Requirements and v.Requirements.Character
    fns.Ux_14 = {}
    Ux_125 = Ux_51 or fns.Ux_14
    Ux_51 = Ux_125
    for k2 in Ux_51 do
        Dk[k2] = k
    end
end
C2 = nil
table.sort(Ux_43)
C2 = {}
for k, v in Ux_83 do
    C2[#C2 + 1] = v
end
BK, CS, fns.Ux_3, CK, DZ, CE, DS, D_, CZ, BN, GlobalShadows, BY, Ux_27, Ux_98, Ux_26, B2, Ux_39, Ux_51, C1, Ux_116, fns.Ux_10, CF, Cx, Cl, Df, C8, C3, D1, Cr, Dt, Dm, C9, BM, Cs, CY, DD, Da, C5, Ea, CG, Do, onFpsBoost, Cm, BQ, CN, Dh, BS, B_, D4, DP, Co, Dx, Ux_107 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Ux_125 = 43
repeat
    fns.Ux_6 = (Ux_125 * 23 + 2) % 24 + 1
    if fns.Ux_6 <= 12 then
        if fns.Ux_6 <= 6 then
            if fns.Ux_6 <= 3 then
                if fns.Ux_6 <= 2 then
                    if fns.Ux_6 <= 1 then
                        Ux_121 = {
                            "kupqcmikpf",
                            "futguwtt",
                            "aslquxhdxlh",
                            "ptwulaogjv",
                            "bzk",
                            "jkrakno",
                            "foraiuaibq",
                            "ifr",
                            "vdckoq",
                            "krhxdqbrt"
                        }
                        local W7 = Ux_125
                        Ux_112 = Ux_121[W7 % 10 + 1]
                        if Ux_112:len() >= Ux_112:reverse():rep(W7 % 3 + 2):len() then
                            Co = fns.fn1841
                            DP = fns.fn905
                        else
                            DP = fns.fn1841
                            Co = fns.fn905
                        end
                        Ux_125 = (Ux_125 + 23) % 96
                    else
                        if (Ux_125 * 1 + 2) * 17 % 4 == ((Ux_125 * 1 + 2) * 17 + 6) % 4 then
                            Ux_26 = fns.fn203
                            Dx = "#7fd47f"
                            Ux_98 = "#6ec1ff"
                        else
                            Dx = fns.fn203
                            Ux_98 = "#7fd47f"
                            Ux_26 = "#6ec1ff"
                        end
                        Ux_125 = (Ux_125 + 23) % 96
                    end
                else
                    if Ea and not Ea or (Cm or not Ea) or (Cm or not Ea) and (Ea and not Cm) or not (Ea and not Ea or (Cm or not Ea) or (Cm or not Ea) and (Ea and not Cm)) then
                        B2 = "#e8a34d"
                        Ux_39 = "#8b93a3"
                    else
                        Ux_39 = "#e8a34d"
                        B2 = "#8b93a3"
                    end
                    Ux_125 = (Ux_125 + 71) % 96
                end
            elseif fns.Ux_6 <= 5 then
                if fns.Ux_6 <= 4 then
                    Ux_121 = (vector.create((Ux_125 * 4 + 8) % 11 + 1, (Ux_125 * 2 + 2) % 13 + 1, (Ux_125 * 13 + 7) % 17 + 1))
                    Ux_112 = (vector.create((Ux_125 * 7 + 2) % 11 + 1, (Ux_125 * 3 + 1) % 13 + 1, (Ux_125 * 15 + 4) % 17 + 1))
                    Ux_103 = (vector.create((Ux_125 * 4 + 9) % 11 + 1, (Ux_125 * 4 + 3) % 13 + 1, (Ux_125 * 10 + 1) % 17 + 1))
                    local Ux_94 = (vector.create((Ux_125 * 4 + 5) % 5 + 1, (Ux_125 * 2 + 2) % 7 + 1, (Ux_125 * 3 + 5) % 9 + 1))
                    if vector.dot(vector.cross(Ux_121, (vector.cross(Ux_112, Ux_103))), Ux_94) == vector.dot(Ux_112 * vector.dot(Ux_121, Ux_103) - Ux_103 * vector.dot(Ux_121, Ux_112), Ux_94) then
                        Ux_51 = CO:CreateWindow({
                            Title = "Ouroboros",
                            Font = Enum.Font.BuilderSans,
                            Footer = { { Text = Ux_29, Copyable = true }, "|", BZ },
                            Icon = 78539693571783,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 0
                        })
                    else
                        BZ = Ux_29:CreateWindow({
                            NotifySide = "Right",
                            Title = "Ouroboros",
                            Footer = { { Text = CO, Copyable = true }, "|", Ux_51 },
                            CornerRadius = 0,
                            ShowCustomCursor = false,
                            Font = Enum.Font.BuilderSans,
                            Icon = 78539693571783
                        })
                    end
                    Ux_125 = (Ux_125 + 23) % 96
                else
                    Ux_121 = (vector.create((Ux_125 * 5 + 2) % 11 + 1, (Ux_125 * 4 + 10) % 13 + 1, (Ux_125 * 4 + 3) % 17 + 1))
                    Ux_112 = (vector.create((Ux_125 * 2 + 5) % 11 + 1, (Ux_125 * 1 + 2) % 13 + 1, (Ux_125 * 14 + 9) % 17 + 1))
                    Ux_103 = (vector.create((Ux_125 * 4 + 2) % 5 + 1, (Ux_125 * 5 + 7) % 7 + 1, (Ux_125 * 5 + 2) % 9 + 1))
                    if math.abs((vector.angle(Ux_121, Ux_112, Ux_103))) - math.abs((vector.angle(Ux_112, Ux_121, Ux_103))) == 0 then
                        C1 = {
                            Info = Ux_51:AddTab("Info", "info"),
                            Automation = Ux_51:AddTab("Automation", "gamepad-2"),
                            AutoBuy = Ux_51:AddTab("Merchant", "store"),
                            Webhook = Ux_51:AddTab("Webhook", "webhook"),
                            Progression = Ux_51:AddTab("Progression", "trending-up"),
                            Player = Ux_51:AddTab("Player", "person-standing"),
                            Settings = Ux_51:AddTab("Settings", "settings")
                        }
                    else
                        Ux_51 = {
                            Player = C1:AddTab("Player", "person-standing"),
                            Info = C1:AddTab("Info", "info"),
                            Settings = C1:AddTab("Settings", "settings"),
                            Automation = C1:AddTab("Automation", "gamepad-2"),
                            Progression = C1:AddTab("Progression", "trending-up"),
                            AutoBuy = C1:AddTab("Merchant", "store"),
                            Webhook = C1:AddTab("Webhook", "webhook")
                        }
                    end
                    Ux_125 = (Ux_125 + 71) % 96
                end
            else
                if (Ux_125 * 3 + 8) * 5 % 4 == ((Ux_125 * 3 + 8) * 5 + 15) % 4 then
                    Ux_116.Automation:SetSubTabAlignment("Center")
                    Ux_116.Progression:SetSubTabAlignment("Center")
                    Ux_116.Summon = Ux_116.Automation:AddSubTab("Summon", "dices")
                    Ux_116.Combat = Ux_116.Automation:AddSubTab("Combat", "swords")
                    Ux_116.Units = Ux_116.Progression:AddSubTab("Units", "users")
                    Ux_116.Upgrades = Ux_116.Progression:AddSubTab("Upgrades", "arrow-up")
                    Ux_116.Rewards = Ux_116.Progression:AddSubTab("Rewards", "gift")
                    C1 = {
                        Ux_116.Info,
                        Ux_116.Webhook,
                        Ux_116.Units,
                        Ux_116.Combat,
                        Ux_116.AutoBuy,
                        Ux_116.Player,
                        Ux_116.Upgrades,
                        Ux_116.Summon,
                        Ux_116.Rewards
                    }
                else
                    C1.Automation:SetSubTabAlignment("Center")
                    C1.Progression:SetSubTabAlignment("Center")
                    C1.Summon = C1.Automation:AddSubTab("Summon", "dices")
                    C1.Combat = C1.Automation:AddSubTab("Combat", "swords")
                    C1.Units = C1.Progression:AddSubTab("Units", "users")
                    C1.Upgrades = C1.Progression:AddSubTab("Upgrades", "arrow-up")
                    C1.Rewards = C1.Progression:AddSubTab("Rewards", "gift")
                    Ux_116 = {
                        C1.Info,
                        C1.Summon,
                        C1.Combat,
                        C1.Units,
                        C1.Upgrades,
                        C1.Rewards,
                        C1.AutoBuy,
                        C1.Webhook,
                        C1.Player
                    }
                end
                Ux_125 = (Ux_125 + 23) % 96
            end
        elseif fns.Ux_6 <= 9 then
            if fns.Ux_6 <= 8 then
                if fns.Ux_6 <= 7 then
                    local WZ = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_125, 3), string.byte(tostring(BY))), 15)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(WZ, 89170947), 1124967953), (bit32.bxor(bit32.band(WZ, 4205796348), 2615113427))), 1124967953), 2615113427) ~= WZ then
                        Ux_107[#Ux_107 + 1] = Ux_116.Settings
                        C1 = fns.fn615
                    else
                        Ux_116[#Ux_116 + 1] = C1.Settings
                        Ux_107 = fns.fn615
                    end
                    Ux_125 = (Ux_125 + 71) % 96
                else
                    Ux_121 = (vector.create((Ux_125 * 6 + 3) % 11 + 1, (Ux_125 * 6 + 12) % 13 + 1, (Ux_125 * 9 + 6) % 17 + 1))
                    Ux_112 = (vector.create((Ux_125 * 2 + 8) % 11 + 1, (Ux_125 * 5 + 5) % 13 + 1, (Ux_125 * 10 + 10) % 17 + 1))
                    local Xm = vector.dot(Ux_121, Ux_112)
                    if Xm * Xm >= vector.dot(Ux_121, Ux_121) * vector.dot(Ux_112, Ux_112) + 1 then
                        CS = nil
                        BK = nil
                    else
                        BK = nil
                        CS = nil
                    end
                    Ux_125 = (Ux_125 + 71) % 96
                end
            else
                if Ux_125 * 81587783 + 13 + 7 >= Ux_125 * 81587783 + 13 + 7 + 1 then
                    CK = 0
                    fns.Ux_3 = {}
                else
                    fns.Ux_3 = 0
                    CK = {}
                end
                Ux_125 = (Ux_125 + 95) % 96
            end
        elseif fns.Ux_6 <= 11 then
            if fns.Ux_6 <= 10 then
                Ux_121 = {
                    "aubiq",
                    "pybc",
                    "oyzpjazc",
                    "oexnnqxkm",
                    "vtti",
                    "sgovannnx",
                    "qmjx",
                    "spowuuuik",
                    "wbstno",
                    "ntodhkkudvc",
                    "nwiccfh",
                    "azedcy"
                }
                if Ux_121[(Ux_125 * 1 + 54) % 12 + 1] <= Ux_121[(Ux_125 * 1 + 54) % 12 + 1] then
                    DZ = false
                    CE = false
                    DS = { rolls = 0, buys = 0, merges = 0, sells = 0, evolves = 0, upgrades = 0, ticketsBought = 0 }
                else
                    DS = false
                    DZ = false
                    CE = { buys = 0, upgrades = 0, merges = 0, sells = 0, ticketsBought = 0, rolls = 0, evolves = 0 }
                end
                Ux_125 = (Ux_125 + 71) % 96
            else
                if (not Co or BQ) and (not BQ and CZ) or (Ux_116 or not CZ) and (not BQ or Ux_116) or not ((not Co or BQ) and (not BQ and CZ) or (Ux_116 or not CZ) and (not BQ or Ux_116)) then
                    fns.Ux_10 = fns.fn1038
                    D_ = Ux_90.OnClientEvent:Connect(fns.onOnClientEvent)
                else
                    D_ = fns.fn1038
                    Ux_90 = fns.Ux_10.OnClientEvent:Connect(fns.onOnClientEvent)
                end
                Ux_125 = (Ux_125 + 71) % 96
            end
        else
            if (Ux_125 * 2 + 9) * 13 % 3 == ((Ux_125 * 2 + 9) * 13 + 0) % 3 then
                CF = fns.fn975
                Cx = fns.fn381
            else
                Cx = fns.fn975
                CF = fns.fn381
            end
            Ux_125 = (Ux_125 + 23) % 96
        end
    elseif fns.Ux_6 <= 18 then
        if fns.Ux_6 <= 15 then
            if fns.Ux_6 <= 14 then
                if fns.Ux_6 <= 13 then
                    if Ux_125 * 31743087 + 13 + 6 >= Ux_125 * 31743087 + 13 + 6 + 1 then
                        Cl = fns.fn177
                    else
                        Cl = fns.fn1052
                    end
                    Ux_125 = (Ux_125 + 47) % 96
                else
                    Ux_121 = (vector.create((Ux_125 * 3 + 1) % 11 + 1, (Ux_125 * 7 + 9) % 13 + 1, (Ux_125 * 9 + 10) % 17 + 1))
                    Ux_112 = (vector.create((Ux_125 * 4 + 7) % 11 + 1, (Ux_125 * 2 + 5) % 13 + 1, (Ux_125 * 3 + 13) % 17 + 1))
                    local Ym = vector.cross(Ux_121, Ux_112)
                    local Yn = vector.dot(Ux_121, Ux_112)
                    if vector.dot(Ym, Ym) + Yn * Yn == vector.dot(Ux_121, Ux_121) * vector.dot(Ux_112, Ux_112) then
                        Df = fns.fn988
                    else
                        Ux_107 = fns.fn988
                    end
                    Ux_125 = (Ux_125 + 47) % 96
                end
            else
                if Ux_125 * 35375983 + 11 + 1 >= Ux_125 * 35375983 + 11 + 1 + 5 then
                    C3 = fns.fn20
                    C8 = fns.fn503
                else
                    C8 = fns.fn20
                    C3 = fns.fn503
                end
                Ux_125 = (Ux_125 + 71) % 96
            end
        elseif fns.Ux_6 <= 17 then
            if fns.Ux_6 <= 16 then
                Ux_121 = (vector.create((Ux_125 * 1 + 2) % 11 + 1, (Ux_125 * 3 + 11) % 13 + 1, (Ux_125 * 9 + 5) % 17 + 1))
                Ux_112 = (vector.create((Ux_125 * 6 + 8) % 11 + 1, (Ux_125 * 7 + 8) % 13 + 1, (Ux_125 * 3 + 4) % 17 + 1))
                local X2 = vector.cross(Ux_121, Ux_112)
                local X3 = vector.dot(Ux_121, Ux_112)
                if vector.dot(X2, X2) + X3 * X3 == vector.dot(Ux_121, Ux_121) * vector.dot(Ux_112, Ux_112) + 1 then
                    Dt = fns.fn1707
                    D1 = fns.fn1572
                    Cr = fns.fn1682
                else
                    D1 = fns.fn1707
                    Cr = fns.fn1572
                    Dt = fns.fn1682
                end
                Ux_125 = (Ux_125 + 71) % 96
            else
                Ux_121 = (vector.create((Ux_125 * 1 + 6) % 11 + 1, (Ux_125 * 6 + 8) % 13 + 1, (Ux_125 * 7 + 10) % 17 + 1))
                Ux_112 = (vector.create((Ux_125 * 5 + 2) % 11 + 1, (Ux_125 * 3 + 5) % 13 + 1, (Ux_125 * 12 + 4) % 17 + 1))
                local Yl = vector.dot(Ux_121, Ux_112)
                if Yl * Yl <= vector.dot(Ux_121, Ux_121) * vector.dot(Ux_112, Ux_112) then
                    Dm = fns.fn208
                    C9 = fns.fn1156
                    BM = fns.fn51
                    Cs = fns.fn1463
                    CY = fns.fn1190
                else
                    BM = fns.fn208
                    Dm = fns.fn1156
                    Cs = fns.fn51
                    CY = fns.fn1463
                    C9 = fns.fn1190
                end
                Ux_125 = (Ux_125 + 95) % 96
            end
        else
            if (Ux_125 * 1 + 4) * 21 % 4 == ((Ux_125 * 1 + 4) * 21 + 12) % 4 then
                DD = fns.fn1735
                Da = fns.fn34
                C5 = fns.fn1494
            else
                C5 = fns.fn1735
                DD = fns.fn34
                Da = fns.fn1494
            end
            Ux_125 = (Ux_125 + 95) % 96
        end
    elseif fns.Ux_6 <= 21 then
        if fns.Ux_6 <= 20 then
            if fns.Ux_6 <= 19 then
                Ux_121 = {
                    "zaqepolcpwwp",
                    "xmfqpapep",
                    "abgcbefatm",
                    "ejxijazrir",
                    "xeqmsf",
                    "hqeaaygv",
                    "ohhhs",
                    "bnooqeqp",
                    "cin",
                    "kuplv",
                    "plcyqtsrfr"
                }
                if Ux_121[(Ux_125 * 93 + 55) % 11 + 1] < Ux_121[(Ux_125 * 93 + 55) % 11 + 1] then
                    Ea = {}
                    CZ = {}
                    BN = GlobalShadows.GlobalShadows
                    DH = fns.fn1121
                else
                    CZ = {}
                    BN = {}
                    GlobalShadows = DH.GlobalShadows
                    Ea = fns.fn1121
                end
                Ux_125 = (Ux_125 + 71) % 96
            else
                if (Ux_125 * 2 + 9) * 4 % 3 == ((Ux_125 * 2 + 9) * 4 + 6) % 3 then
                    CG = function(cR, cS)
                        local HN_3
                        local HM_3
                        HM_3, HN_3 = pcall(function()
                            return cR:QueryDescendants(cS)
                        end)
                        if HM_3 then
                            return HN_3
                        end
                        local HN_4 = {}
                        for i, descendant in cR:GetDescendants() do
                            local HM_4 = Ea(descendant) or descendant:IsA("Decal") or descendant:IsA("Texture")
                            if HM_4 then
                                HN_4[#HN_4 + 1] = descendant
                            end
                        end
                        return HN_4
                    end
                    Do = fns.fn1882
                    onFpsBoost = function(c6)
                        if c6 then
                            DH.GlobalShadows = false
                            for k, v in CG(workspace, "ParticleEmitter, Trail, Beam, Smoke, Fire, Sparkles, Light, Decal, Texture") do
                                Do(v)
                            end
                            for k, v in CG(DH, "PostEffect") do
                                Do(v)
                            end
                            return
                        end
                        DH.GlobalShadows = GlobalShadows
                        for k, v in CZ do
                            local Ia = k
                            local Ic = v
                            pcall(function()
                                Ia[Ic.property] = Ic.value
                            end)
                        end
                        table.clear(CZ)
                    end
                else
                    Do = function(cR, cS)
                        local HN_1
                        local HM_1
                        HM_1, HN_1 = pcall(function()
                            return cR:QueryDescendants(cS)
                        end)
                        if HM_1 then
                            return HN_1
                        end
                        local HN_2 = {}
                        for i, descendant in cR:GetDescendants() do
                            local HM_2 = Ea(descendant) or descendant:IsA("Decal") or descendant:IsA("Texture")
                            if HM_2 then
                                HN_2[#HN_2 + 1] = descendant
                            end
                        end
                        return HN_2
                    end
                    onFpsBoost = fns.fn1882
                    CG = function(c6)
                        if c6 then
                            DH.GlobalShadows = false
                            for k, v in CG(workspace, "ParticleEmitter, Trail, Beam, Smoke, Fire, Sparkles, Light, Decal, Texture") do
                                Do(v)
                            end
                            for k, v in CG(DH, "PostEffect") do
                                Do(v)
                            end
                            return
                        end
                        DH.GlobalShadows = GlobalShadows
                        for k, v in CZ do
                            local Ia = k
                            local Ic = v
                            pcall(function()
                                Ia[Ic.property] = Ic.value
                            end)
                        end
                        table.clear(CZ)
                    end
                end
                Ux_125 = (Ux_125 + 71) % 96
            end
        else
            local Yb = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_125, 7), string.byte(tostring(CY))), 31)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Yb, 3411121171), 3658120341), (bit32.bxor(bit32.band(Yb, 883846124), 1772285738))), 3658120341), 1772285738) == Yb then
                Cm = fns.fn1386
            else
                Co = fns.fn1386
            end
            Ux_125 = (Ux_125 + 95) % 96
        end
    elseif fns.Ux_6 <= 23 then
        if fns.Ux_6 <= 22 then
            local W4 = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_125, 22), string.byte(tostring(CN))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(W4, 879184897), 22), 5052883) ~= bit32.lrotate(W4, 22) then
                CN = fns.fn1559
                BQ = fns.fn268
                BY = fns.fn1040
                Dh = nil
            else
                BQ = fns.fn1559
                CN = fns.fn268
                Dh = fns.fn1040
                BY = nil
            end
            Ux_125 = (Ux_125 + 71) % 96
        else
            fns.Ux_6 = (vector.create((Ux_125 * 2 + 7) % 11 + 1, (Ux_125 * 11 + 2) % 13 + 1, (Ux_125 * 7 + 13) % 17 + 1))
            Ux_121 = (vector.create((Ux_125 * 1 + 2) % 11 + 1, (Ux_125 * 8 + 12) % 13 + 1, (Ux_125 * 8 + 1) % 17 + 1))
            Ux_112 = (vector.create((Ux_125 * 2 + 3) % 11 + 1, (Ux_125 * 6 + 9) % 13 + 1, (Ux_125 * 2 + 17) % 17 + 1))
            if vector.dot(vector.cross(fns.Ux_6, Ux_121), Ux_112) == vector.dot(vector.cross(Ux_121, Ux_112), fns.Ux_6) + 5 then
                BS = nil
                Ux_27 = function()
                    local I3
                    local screenGui
                    local frame
                    frame = nil
                    I3 = nil
                    screenGui = nil
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosAfk"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 50
                    local frame2 = Instance.new("Frame")
                    frame2.Size = UDim2.fromScale(1, 1)
                    frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    frame2.BorderSizePixel = 0
                    frame2.Active = false
                    frame2.Parent = screenGui
                    frame = Instance.new("Frame")
                    frame.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame.Position = UDim2.fromScale(0.5, 0.5)
                    frame.Size = UDim2.fromScale(0.6, 0.6)
                    frame.BackgroundTransparency = 1
                    frame.Parent = frame2
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.FillDirection = Enum.FillDirection.Vertical
                    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                    uIListLayout.Padding = UDim.new(0, 14)
                    uIListLayout.Parent = frame
                    local function I5_4(d2, d3, d4, d5, d6)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.LayoutOrder = d2
                        textLabel.Size = UDim2.fromScale(1, d3)
                        textLabel.BackgroundTransparency = 1
                        textLabel.Font = Enum.Font.BuilderSans
                        textLabel.TextScaled = true
                        textLabel.TextColor3 = d5
                        textLabel.Text = d6
                        textLabel.Parent = frame
                        local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
                        uITextSizeConstraint.MaxTextSize = d4
                        uITextSizeConstraint.Parent = textLabel
                        return textLabel
                    end
                    I5_4(1, 0.16, 48, Color3.fromRGB(255, 255, 255), "Ouroboros Hub")
                    I5_4(2, 0.08, 22, Color3.fromRGB(110, 193, 255), Ux_29)
                    local I6 = I5_4(3, 0.08, 20, Color3.fromRGB(200, 205, 215), "Current Roll:  None yet")
                    local I7 = I5_4(4, 0.08, 20, Color3.fromRGB(232, 163, 77), "Best Roll:  None yet")
                    local I8 = I5_4(5, 0.08, 20, Color3.fromRGB(200, 205, 215), "Rolls This Session:  0")
                    local I9 = I5_4(6, 0.08, 20, Color3.fromRGB(127, 212, 127), "Gold:  0")
                    local Ja = I5_4(7, 0.08, 20, Color3.fromRGB(127, 212, 127), "Spins:  0")
                    I3 = nil
                    local Jb = { current = I6, best = I7, rolls = I8, gold = I9, spins = Ja }
                    pcall(function()
                        local IZ = gethui and gethui()
                        I3 = IZ
                    end)
                    if not I3 then
                        pcall(function()
                            I3 = game:GetService("CoreGui")
                        end)
                    end
                    if not I3 then
                        I3 = Di:WaitForChild("PlayerGui")
                    end
                    pcall(function()
                        if syn and syn.protect_gui then
                            syn.protect_gui(screenGui)
                        elseif protectgui then
                            protectgui(screenGui)
                        end
                    end)
                    screenGui.Parent = I3
                    return screenGui, Jb
                end
            else
                Ux_27 = nil
                BS = function()
                    local I3
                    local screenGui
                    local frame
                    frame = nil
                    I3 = nil
                    screenGui = nil
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosAfk"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 50
                    local frame2 = Instance.new("Frame")
                    frame2.Size = UDim2.fromScale(1, 1)
                    frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    frame2.BorderSizePixel = 0
                    frame2.Active = false
                    frame2.Parent = screenGui
                    frame = Instance.new("Frame")
                    frame.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame.Position = UDim2.fromScale(0.5, 0.5)
                    frame.Size = UDim2.fromScale(0.6, 0.6)
                    frame.BackgroundTransparency = 1
                    frame.Parent = frame2
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.FillDirection = Enum.FillDirection.Vertical
                    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                    uIListLayout.Padding = UDim.new(0, 14)
                    uIListLayout.Parent = frame
                    local function I5_2(d2, d3, d4, d5, d6)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.LayoutOrder = d2
                        textLabel.Size = UDim2.fromScale(1, d3)
                        textLabel.BackgroundTransparency = 1
                        textLabel.Font = Enum.Font.BuilderSans
                        textLabel.TextScaled = true
                        textLabel.TextColor3 = d5
                        textLabel.Text = d6
                        textLabel.Parent = frame
                        local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
                        uITextSizeConstraint.MaxTextSize = d4
                        uITextSizeConstraint.Parent = textLabel
                        return textLabel
                    end
                    I5_2(1, 0.16, 48, Color3.fromRGB(255, 255, 255), "Ouroboros Hub")
                    I5_2(2, 0.08, 22, Color3.fromRGB(110, 193, 255), Ux_29)
                    local I6 = I5_2(3, 0.08, 20, Color3.fromRGB(200, 205, 215), "Current Roll:  None yet")
                    local I7 = I5_2(4, 0.08, 20, Color3.fromRGB(232, 163, 77), "Best Roll:  None yet")
                    local I8 = I5_2(5, 0.08, 20, Color3.fromRGB(200, 205, 215), "Rolls This Session:  0")
                    local I9 = I5_2(6, 0.08, 20, Color3.fromRGB(127, 212, 127), "Gold:  0")
                    local Ja = I5_2(7, 0.08, 20, Color3.fromRGB(127, 212, 127), "Spins:  0")
                    I3 = nil
                    local Jb = { current = I6, best = I7, rolls = I8, gold = I9, spins = Ja }
                    pcall(function()
                        local IZ = gethui and gethui()
                        I3 = IZ
                    end)
                    if not I3 then
                        pcall(function()
                            I3 = game:GetService("CoreGui")
                        end)
                    end
                    if not I3 then
                        I3 = Di:WaitForChild("PlayerGui")
                    end
                    pcall(function()
                        if syn and syn.protect_gui then
                            syn.protect_gui(screenGui)
                        elseif protectgui then
                            protectgui(screenGui)
                        end
                    end)
                    screenGui.Parent = I3
                    return screenGui, Jb
                end
            end
            Ux_125 = (Ux_125 + 23) % 96
        end
    else
        fns.Ux_6 = {
            "yjnaaqbwecgx",
            "zrpzzkagkh",
            "xkuxlp",
            "wanma",
            "bxptdqbnb",
            "jqiq",
            "vyd",
            "kei",
            "asnpmoj",
            "ucomzsy",
            "epa",
            "xvqoodsm"
        }
        if fns.Ux_6[(Ux_125 * 53 + 2) % 12 + 1] <= fns.Ux_6[(Ux_125 * 53 + 2) % 12 + 1] then
            B_ = fns.fn713
            D4 = fns.fn555
        else
            D4 = fns.fn713
            B_ = fns.fn555
        end
        Ux_125 = (Ux_125 + 71) % 96
    end
until (Ux_125 * 41 + 90) % 96 == 53
for k, v in Ux_116 do
    Ux_107(v)
end
CC, DC, fns.Ux_5, fns.Ux_14, De = nil, nil, nil, nil, nil
Ux_51 = 7
repeat
    Ux_125 = (Ux_51 * 1 + 3) % 4 + 1
    if Ux_125 <= 2 then
        if Ux_125 <= 1 then
            if (Ux_51 * 2 + 1) * 7 % 3 == ((Ux_51 * 2 + 1) * 7 + 4) % 3 then
                DC = fns.fn104
            else
                fns.Ux_14 = fns.fn104
            end
            Ux_51 = (Ux_51 + 1) % 16
        else
            Ux_116 = {
                "xkjobsaup",
                "mtaayjni",
                "xxwdhyobjov",
                "lkopbdyau",
                "hpcwvhvkzjqn",
                "zflnevkayish",
                "aqfkqfg",
                "mohixaeeun",
                "egysqaykzuwl",
                "ecbsczk",
                "kfohehl",
                "tygoed"
            }
            if Ux_116[(Ux_51 * 33 + 10) % 12 + 1] <= Ux_116[(Ux_51 * 33 + 10) % 12 + 1] then
                fns.Ux_5 = nil
                De = function()
                    local Jz
                    local screenGui
                    Jz = nil
                    screenGui = nil
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosUnsupported"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.fromScale(1, 1)
                    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    frame.BackgroundTransparency = 0.4
                    frame.BorderSizePixel = 0
                    frame.Parent = screenGui
                    local textLabel = Instance.new("TextLabel")
                    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                    textLabel.Position = UDim2.fromScale(0.5, 0.5)
                    textLabel.Size = UDim2.fromScale(0.8, 0.25)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.Text = "Not Supported"
                    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textLabel.TextScaled = true
                    textLabel.Parent = frame
                    Jz = nil
                    pcall(function()
                        local Jv = gethui and gethui()
                        Jz = Jv
                    end)
                    if not Jz then
                        pcall(function()
                            Jz = game:GetService("CoreGui")
                        end)
                    end
                    if not Jz then
                        Jz = Di:WaitForChild("PlayerGui")
                    end
                    pcall(function()
                        if syn and syn.protect_gui then
                            syn.protect_gui(screenGui)
                        elseif protectgui then
                            protectgui(screenGui)
                        end
                    end)
                    screenGui.Parent = Jz
                    return screenGui
                end
            else
                De = nil
                fns.Ux_5 = function()
                    local Jz
                    local screenGui
                    Jz = nil
                    screenGui = nil
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosUnsupported"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.fromScale(1, 1)
                    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    frame.BackgroundTransparency = 0.4
                    frame.BorderSizePixel = 0
                    frame.Parent = screenGui
                    local textLabel = Instance.new("TextLabel")
                    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                    textLabel.Position = UDim2.fromScale(0.5, 0.5)
                    textLabel.Size = UDim2.fromScale(0.8, 0.25)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.Text = "Not Supported"
                    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textLabel.TextScaled = true
                    textLabel.Parent = frame
                    Jz = nil
                    pcall(function()
                        local Jv = gethui and gethui()
                        Jz = Jv
                    end)
                    if not Jz then
                        pcall(function()
                            Jz = game:GetService("CoreGui")
                        end)
                    end
                    if not Jz then
                        Jz = Di:WaitForChild("PlayerGui")
                    end
                    pcall(function()
                        if syn and syn.protect_gui then
                            syn.protect_gui(screenGui)
                        elseif protectgui then
                            protectgui(screenGui)
                        end
                    end)
                    screenGui.Parent = Jz
                    return screenGui
                end
            end
            Ux_51 = (Ux_51 + 5) % 16
        end
    elseif Ux_125 <= 3 then
        Ux_125 = (vector.create((Ux_51 * 3 + 4) % 11 + 1, (Ux_51 * 3 + 6) % 13 + 1, (Ux_51 * 7 + 17) % 17 + 1))
        Ux_116 = (vector.create((Ux_51 * 2 + 5) % 11 + 1, (Ux_51 * 1 + 2) % 13 + 1, (Ux_51 * 10 + 7) % 17 + 1))
        Ux_107 = (vector.create((Ux_51 * 2 + 3) % 11 + 1, (Ux_51 * 5 + 7) % 13 + 1, (Ux_51 * 1 + 4) % 17 + 1))
        Ux_90 = (vector.create((Ux_51 * 2 + 3) % 5 + 1, (Ux_51 * 3 + 3) % 7 + 1, (Ux_51 * 1 + 2) % 9 + 1))
        if vector.dot(vector.cross(Ux_125, (vector.cross(Ux_116, Ux_107))), Ux_90) == vector.dot(Ux_116 * vector.dot(Ux_125, Ux_107) - Ux_107 * vector.dot(Ux_125, Ux_116), Ux_90) then
            CC = "Unknown"
        else
            fns.Ux_5 = "Unknown"
        end
        Ux_51 = (Ux_51 + 1) % 16
    else
        Ux_125 = (vector.create((Ux_51 * 4 + 6) % 11 + 1, (Ux_51 * 5 + 7) % 13 + 1, (Ux_51 * 13 + 3) % 17 + 1))
        Ux_116 = (vector.create((Ux_51 * 5 + 6) % 11 + 1, (Ux_51 * 8 + 3) % 13 + 1, (Ux_51 * 7 + 9) % 17 + 1))
        Ux_107 = (vector.create((Ux_51 * 1 + 6) % 11 + 1, (Ux_51 * 8 + 6) % 13 + 1, (Ux_51 * 7 + 16) % 17 + 1))
        Ux_90 = (vector.create((Ux_51 * 4 + 4) % 5 + 1, (Ux_51 * 1 + 3) % 7 + 1, (Ux_51 * 3 + 1) % 9 + 1))
        if vector.dot(vector.cross(Ux_125, (vector.cross(Ux_116, Ux_107))), Ux_90) == vector.dot(Ux_116 * vector.dot(Ux_125, Ux_107) - Ux_107 * vector.dot(Ux_125, Ux_116), Ux_90) + 5 then
            pcall(fns.fn440)
            fns.Ux_5 = { "xeno", "solara" }
        else
            pcall(fns.fn440)
            DC = { "xeno", "solara" }
        end
        Ux_51 = (Ux_51 + 1) % 16
    end
until (Ux_51 * 3 + 11) % 16 == 8
if fns.Ux_14() then
    Ux_51 = 6
    repeat
        fns.Ux_14 = (Ux_51 * 1 + 0) % 2 + 1
        if fns.Ux_14 <= 1 then
            local Z0 = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_51, 17), string.byte(tostring(Ux_51))), 15)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Z0, 1676178399), 22), 4158192156) ~= bit32.lrotate(Z0, 22) then
                De = fns.Ux_5()
            else
                fns.Ux_5 = De()
            end
            Ux_51 = (Ux_51 + 5) % 8
        else
            fns.Ux_14 = {
                "cpndurl",
                "qenwfh",
                "odgkq",
                "deyqjmunqfe",
                "nernlitxte",
                "jjkqlkjjjw",
                "ugqoic",
                "yks",
                "vqtxtizjmms"
            }
            local Y8 = Ux_51
            Ux_125 = fns.Ux_14[Y8 % 9 + 1]
            if Ux_125:len() >= Ux_125:gsub("(.)", "%1%1", Y8 % 3 % 2 + 1):len() then
                task.spawn(fns.worker)
            else
                task.spawn(fns.worker)
            end
            Ux_51 = (Ux_51 + 1) % 8
        end
    until (Ux_51 * 7 + 1) % 8 == 5
end
DR = tostring(game.JobId)
fns.Ux_14, Ux_116, Label, Ux_125 = nil, nil, nil, nil
Ux_51 = 13
repeat
    Ux_107 = (Ux_51 * 1 + 0) % 2 + 1
    if Ux_107 <= 1 then
        if (Ux_51 * 2 + 1) * 16 % 3 == ((Ux_51 * 2 + 1) * 16 + 7) % 3 then
            DR = #Ux_125 > 18
        else
            Ux_125 = #DR > 18
        end
        Ux_51 = (Ux_51 + 15) % 16
    else
        if (Ux_51 * 2 + 1) * 13 % 3 == ((Ux_51 * 2 + 1) * 13 + 8) % 3 then
            B2 = BZ.Info:AddLeftGroupbox("Account", "circle-user")
            B2:AddLabel(Ux_116("User", Ux_98.Name, CC), true)
            B2:AddLabel(Ux_116("Status", "Keyless", CC), true)
            B2:AddLabel(Ux_116("Executor", Dx, CC), true)
            Di = BZ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            Di:AddLabel(C1(fns.Ux_14 .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
            Di:AddLabel(Ux_116("Place ID", tostring(game.PlaceId), Label), true)
            Co = Di:AddLabel(Ux_116("Session time", "0s", Ux_26), true)
        else
            fns.Ux_14 = C1.Info:AddLeftGroupbox("Account", "circle-user")
            fns.Ux_14:AddLabel(Dx("User", Di.Name, Ux_98), true)
            fns.Ux_14:AddLabel(Dx("Status", "Keyless", Ux_98), true)
            fns.Ux_14:AddLabel(Dx("Executor", CC, Ux_98), true)
            Ux_116 = C1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            Ux_116:AddLabel(Co(BZ .. " [" .. tostring(game.PlaceId) .. "]", Ux_26), true)
            Ux_116:AddLabel(Dx("Place ID", tostring(game.PlaceId), Ux_26), true)
            Label = Ux_116:AddLabel(Dx("Session time", "0s", B2), true)
        end
        Ux_51 = (Ux_51 + 13) % 16
    end
until (Ux_51 * 13 + 5) % 16 == 10
if Ux_125 then
    Ux_51 = 0
    repeat
        if (Ux_51 or Ux_51 or (not Ux_51 or not Ux_51)) and (not Ux_51 and not Ux_51 and (Ux_51 or not Ux_51)) and ((Ux_51 or not Ux_51) and (Ux_51 or not Ux_51) or (not Ux_51 or Ux_51) and (Ux_51 and not Ux_51)) and not ((Ux_51 or Ux_51 or (not Ux_51 or not Ux_51)) and (not Ux_51 and not Ux_51 and (Ux_51 or not Ux_51)) and ((Ux_51 or not Ux_51) and (Ux_51 or not Ux_51) or (not Ux_51 or Ux_51) and (Ux_51 and not Ux_51))) then
            DR = string.sub(Ux_125, 1, 18) .. "..."
        else
            Ux_125 = string.sub(DR, 1, 18) .. "..."
        end
        Ux_51 = (Ux_51 + 1) % 4
    until (Ux_51 * 3 + 0) % 4 == 3
end
Ux_51 = Ux_125 or DR
Cb, Ux_90 = nil, nil
Ux_107 = Ux_51
Ux_116:AddLabel(Dx("Server", Ux_107, Ux_39), true)
Ux_116:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
Cb = os.clock()
task.spawn(fns.worker2)
Ux_125 = C1.Info:AddRightGroupbox("Scripts", "package")
Ux_125:AddLabel(Co("Included in this hub", Ux_39), true)
Ux_125:AddLabel(Co(BZ, Ux_26), true)
fns.Ux_6 = C1.Info:AddRightGroupbox("Features", "list")
fns.Ux_6:AddLabel(Co("Summoning and Auto Buy", Ux_26), true)
fns.Ux_6:AddLabel(Co("Fight Raid Tower", B2), true)
fns.Ux_6:AddLabel(Co("Merge Evolve Sell Clone", Ux_39), true)
fns.Ux_6:AddLabel(Co("Upgrades Rewards Webhook", Ux_98), true)
fns.Ux_6:AddLabel(Co("Player", B2), true)
fns.Ux_14 = C1.Info:AddRightGroupbox("Socials", "link")
if ((Ux_107 or Cb) and 27 or (Ux_125 or not Ux_125) and (fns.Ux_14 and Ux_125) or (Ux_125 or fns.Ux_14) and (not fns.Ux_14 or Ux_125 or (not Ux_107 or not Ux_107))) and not ((Ux_107 or Cb) and 27 or (Ux_125 or not Ux_125) and (fns.Ux_14 and Ux_125) or (Ux_125 or fns.Ux_14) and (not fns.Ux_14 or Ux_125 or (not Ux_107 or not Ux_107))) then
    DP:AddButton({ Text = "Discord", Func = fns.Ux_14 })
    DP:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
    C1 = Ux_90.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    fns.Ux_14:AddButton({ Text = "Discord", Func = DP })
    fns.Ux_14:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
    Ux_90 = C1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
Ux_90:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
Ux_90:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
Ux_90:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
Ux_90:AddButton({ Text = "Copy Discord Invite", Func = DP })
Ux_112 = {
    {
        name = "LTC / Litecoin",
        color = "#345d9d",
        button = "Copy Litecoin Address",
        value = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        message = "Copied Litecoin address"
    },
    {
        name = "BTC / Bitcoin",
        color = "#f7931a",
        button = "Copy Bitcoin Address",
        value = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        message = "Copied Bitcoin address"
    },
    {
        name = "ETH / Ethereum",
        color = "#627eea",
        button = "Copy Ethereum Address",
        value = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        message = "Copied Ethereum address"
    },
    {
        name = "USDT",
        color = "#26a17b",
        button = "Copy USDT Address",
        value = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        message = "Copied USDT address"
    },
    {
        name = "Solana",
        color = "#14f195",
        button = "Copy Solana Address",
        value = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        message = "Copied Solana address"
    },
    {
        name = "PayPal",
        color = "#0070ba",
        button = "Copy PayPal Link",
        value = "https://paypal.me/TheTruckerGOD",
        message = "Copied PayPal link"
    },
    {
        name = "Venmo",
        color = "#008cff",
        button = "Copy Venmo Link",
        value = "https://venmo.com/u/miserablemusic",
        message = "Copied Venmo link"
    }
}
Ux_103 = C1.Info:AddRightGroupbox("Donations", "heart")
Ux_103:AddLabel(Co("All donations are optional but appreciated.", B2), true)
Ux_103:AddLabel(Co("If you donate you get a special role, just PING after you donate.", Ux_98), true)
Ux_103:AddDivider()
for k, v in Ux_112 do
    local FG = v
    Ux_103:AddLabel(Co(FG.name, FG.color), true)
    Ux_103:AddButton({
        Text = FG.button,
        Func = function()
            D4(FG.value, FG.message)
        end
    })
end
Ux_103:AddDivider()
Ux_103:AddLabel(Co("Don't have any of the listed currencies but still wanna donate?", Ux_39), true)
Ux_103:AddLabel(Co("DM me and we'll work something out.", Ux_26), true)
fns.Ux_14 = C1.Info:AddRightGroupbox("FAQ", "circle-help")
fns.Ux_14:AddLabel("Where do I get a good config?", true)
fns.Ux_14:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
fns.Ux_14:AddLabel("How do I import / export configs?", true)
fns.Ux_14:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
fns.Ux_14:AddLabel("How do I report bugs?", true)
fns.Ux_14:AddLabel("Join the Discord and post it in the bugs channel.", true)
fns.Ux_14:AddLabel("How do I make suggestions?", true)
fns.Ux_14:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
fns.Ux_14:AddLabel("How do I get help or updates?", true)
fns.Ux_14:AddLabel("Join the Discord, updates and support are posted there first.", true)
Label2, Cc = nil, nil
Ux_116 = C1.Summon:AddLeftGroupbox("Auto Summon", "dices")
Ux_116:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
Ux_116:AddToggle("MatchGameDelay", { Text = "Match Game Cooldown", Default = true })
Ux_116:AddSlider("SummonDelay", { Text = "Summon Delay", Default = 2.2, Min = 0.3, Max = 6, Rounding = 2, Suffix = "s" })
Ux_116:AddToggle("TeleportToPad", { Text = "Teleport To Summon Pad", Default = true })
Ux_116:AddToggle("PauseSummonInFight", { Text = "Pause While Fighting", Default = false })
Ux_98 = C1.Summon:AddLeftGroupbox("Auto Buy", "shopping-cart")
Ux_98:AddToggle("AutoBuy", { Text = "Auto Buy Summons", Default = false })
Ux_98:AddInput("MinBuyPrice", { Text = "Min Price (0 = any)", Default = "0", Numeric = true, Finished = true })
Ux_98:AddInput("MaxBuyPrice", { Text = "Max Price (0 = any)", Default = "0", Numeric = true, Finished = true })
Ux_98:AddInput("BuyGoldReserve", { Text = "Keep Gold", Default = "0", Numeric = true, Finished = true })
Ux_98:AddToggle("StopWhenInventoryFull", { Text = "Stop When Inventory Full", Default = true })
Ux_98:AddToggle("WaitUntilAffordable", { Text = "Wait Until Affordable", Default = false })
Ux_125 = C1.AutoBuy:AddRightGroupbox("Merchant", "store")
Ux_125:AddToggle("AutoBuyMerchant", { Text = "Auto Buy Merchant", Default = false })
Ux_125:AddToggle("BuyAllMerchant", { Text = "Buy Everything In Stock", Default = false })
Ux_125:AddDropdown("MerchantItems", { Values = Ux_83, Default = {}, Multi = true, Searchable = true, Text = "Items" })
Ux_125:AddInput("MerchantGoldReserve", { Text = "Keep Gold", Default = "0", Numeric = true, Finished = true })
Label2 = Ux_125:AddLabel("Merchant: -")
Cc = {}
fns.Ux_6 = fns.fn1085
Ux_90 = C1.Summon:AddRightGroupbox("Rarity Rules", "list-filter")
Ux_90:AddDropdown("BuyRuleRarity", { Values = Ux_65, Default = {}, Multi = true, Text = "Rarities", Callback = fns.Ux_6 })
for k, v in Ux_65 do
    Ux_51 = CD[v]
    fns.Ux_14 = Ux_90:AddDropdown(Ux_51.characters, {
        Values = Ux_78[v],
        Default = {},
        Multi = true,
        Searchable = true,
        Expandable = true,
        Text = v .. " Characters"
    })
    Ux_125 = Ux_90:AddDropdown(Ux_51.mutations, { Values = Ux_69, Default = {}, Multi = true, Expandable = true, Text = v .. " Mutations" })
    Cc[v] = { characters = fns.Ux_14, mutations = Ux_125 }
end
D0 = nil
fns.Ux_6(Cz.BuyRuleRarity.Value)
D0 = {
    Common = 10197915,
    Rare = 3447003,
    Epic = 10181046,
    Legendary = 15844367,
    Mythic = 15158332,
    Secret = 2303786,
    God = 16766720,
    Limited = 16711935
}
Ux_116 = syn and syn.request
Ux_51 = Ux_116
if not Ux_51 then
    fns.Ux_14 = http and http.request
    Ux_51 = fns.Ux_14
end
if not Ux_51 then
    Ux_51 = http_request
end
if not Ux_51 then
    Ux_51 = request
end
DL, Ux_125, fns.Ux_14, Label3, Label4, connection, connection2, Ux_121, Dz, Cy, Dn, DT, C4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
DL = Ux_51
if ((not Ux_121 or not fns.Ux_14 or not fns.Ux_14 and fns.Ux_14 or Ux_121 and not Ux_121 and (not Ux_121 and Ux_121)) and (not Ux_121 and Ux_121 and (not Ux_121 and not fns.Ux_14) or (not Ux_121 or fns.Ux_14) and (not fns.Ux_14 and not fns.Ux_14)) or (fns.Ux_14 and not fns.Ux_14 or (Ux_121 or not Ux_121)) and ((Ux_121 or not Ux_121) and (Ux_121 and Ux_121)) and (not fns.Ux_14 and not Ux_121 and (Ux_121 or not Ux_121) or Ux_121 and fns.Ux_14 and (not Ux_121 or fns.Ux_14))) and not ((not Ux_121 or not fns.Ux_14 or not fns.Ux_14 and fns.Ux_14 or Ux_121 and not Ux_121 and (not Ux_121 and Ux_121)) and (not Ux_121 and Ux_121 and (not Ux_121 and not fns.Ux_14) or (not Ux_121 or fns.Ux_14) and (not fns.Ux_14 and not fns.Ux_14)) or (fns.Ux_14 and not fns.Ux_14 or (Ux_121 or not Ux_121)) and ((Ux_121 or not Ux_121) and (Ux_121 and Ux_121)) and (not fns.Ux_14 and not Ux_121 and (Ux_121 or not Ux_121) or Ux_121 and fns.Ux_14 and (not Ux_121 or fns.Ux_14))) then
    C1 = Ux_125.Webhook:AddLeftGroupbox("Webhook", "webhook")
else
    Ux_125 = C1.Webhook:AddLeftGroupbox("Webhook", "webhook")
end
Ux_125:AddToggle("EnableWebhook", { Text = "Enable Webhook", Default = false })
Ux_125:AddInput("WebhookUrl", {
    Text = "Webhook URL",
    Default = "",
    Placeholder = "https://discord.com/api/webhooks/...",
    Finished = true
})
Ux_125:AddToggle("WebhookNotifyBuy", { Text = "Notify On Buy", Default = true })
Ux_125:AddToggle("WebhookNotifyMerge", { Text = "Notify On Merge", Default = false })
Ux_125:AddToggle("WebhookOnlyPurchased", { Text = "Only Purchased Rolls", Default = true })
Ux_125:AddToggle("WebhookPing", { Text = "Ping @everyone", Default = false })
Ux_125:AddToggle("WebhookPingOnRarity", { Text = "Ping On Rarity", Default = true })
Ux_125:AddToggle("WebhookPingOnMutation", { Text = "Ping On Mutation", Default = true })
Ux_39 = C1.Webhook:AddRightGroupbox("Filters", "list-filter")
Ux_39:AddDropdown("WebhookRarities", { Values = Ux_65, Default = {}, Multi = true, Text = "Rarities" })
Ux_39:AddDropdown("WebhookMutations", { Values = Ux_69, Default = {}, Multi = true, Expandable = true, Text = "Mutations" })
fns.Ux_14 = C1.Webhook:AddRightGroupbox("Item Report", "clipboard-list")
fns.Ux_14:AddToggle("WebhookItemReport", { Text = "Timed Item Report", Default = false })
fns.Ux_14:AddDropdown("WebhookReportItems", { Values = C2, Default = {}, Multi = true, Searchable = true, Expandable = true, Text = "Items" })
fns.Ux_14:AddInput("WebhookReportInterval", { Text = "Interval (seconds)", Default = "300", Numeric = true, Finished = true })
Dz = function(gc)
    local Value
    Value = Cz.WebhookUrl.Value
    local JS = not DL
    local JS_1
    local JY = if JS then 1 else 0
    local JW = 2956 * JY + 3695 * (1 - JY)
    local JX = 3514 * JY + 2458 * (1 - JY)
    if not ((JW * 310 + JX * 1288 + JW * JX) % 16777213 == 15829776) then
        JS = type(Value) ~= "string"
    end
    local JT = Value == ""
    local JT_1
    if JS or JT then
        return false
    end
    JS_1, JT_1 = pcall(function()
        return DL({
            Url = Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = Cn:JSONEncode(gc)
        })
    end)
    if not JS_1 then
        return false
    end
    local JS_2 = JT_1
    if JS_2 then
        JS_2 = JT_1.StatusCode or JT_1.Status
    end
    local JT_2 = JS_2
    local JS_3 = JT_2 == nil
    local JY_1 = if JS_3 then 1 else 0
    local JW_1 = 3668 * JY_1 + 2569 * (1 - JY_1)
    local JX_1 = 1388 * JY_1 + 2843 * (1 - JY_1)
    if not ((JW_1 * 1472 + JX_1 * 1107 + JW_1 * JX_1) % 16777213 == 12026996) then
        JS_3 = JT_2 >= 200 and JT_2 < 300
    end
    return JS_3
end
Cy = fns.fn1488
Dn = fns.fn470
DT = fns.fn36
C4 = fns.fn259
Ux_125:AddButton({ Text = "Send Test Message", Func = fns.onSendTestMessage })
task.spawn(fns.enableWebhookLoop)
task.spawn(fns.webhookReportIntervalLoop)
Ux_98 = C1.Summon:AddRightGroupbox("Auto Equip", "user-plus")
Ux_98:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
Ux_26 = C1.Combat:AddLeftGroupbox("Fight Control", "swords")
Ux_26:AddToggle("SmartAutoPlay", { Text = "Smart Auto Play", Default = false })
Ux_26:AddToggle("AutoStart", { Text = "Auto Start", Default = false })
Ux_26:AddToggle("StopAtWave", { Text = "Stop At Wave", Default = false })
Ux_26:AddInput("StopWave", { Text = "Wave", Default = "25", Numeric = true, Finished = true })
Ux_26:AddToggle("EndFightAtWave", { Text = "End Current Fight At Wave", Default = false })
Ux_107 = C1.Combat:AddRightGroupbox("Auto Raid", "shield")
Ux_107:AddToggle("AutoJoinRaid", { Text = "Auto Join Raid", Default = false })
Ux_107:AddToggle("AutoStartRaid", { Text = "Auto Start Raid", Default = false })
Ux_107:AddToggle("AutoLeaveRaid", { Text = "Auto Leave", Default = true })
Ux_107:AddDropdown("AvoidDifficulties", { Values = Ux_74, Default = {}, Multi = true, Text = "Avoid Difficulty" })
Ux_107:AddDropdown("RaidPartyType", { Values = { "Private", "Public" }, Default = "Private", Multi = false, Text = "Party Type" })
Label3 = Ux_107:AddLabel("Raid: -")
Ux_116 = C1.Combat:AddLeftGroupbox("Infinite Tower", "castle")
Ux_116:AddToggle("AutoJoinTower", { Text = "Auto Join Tower", Default = false })
Ux_116:AddToggle("AutoRestartTower", { Text = "Auto Restart Tower", Default = false })
Ux_116:AddToggle("AutoBuyTicket", { Text = "Auto Buy Ticket", Default = false })
Ux_116:AddInput("KeepTickets", { Text = "Keep Tickets", Default = "0", Numeric = true, Finished = true })
Ux_116:AddToggle("LeaveAtFloor", { Text = "Leave At Floor", Default = false })
Ux_116:AddInput("LeaveFloor", { Text = "Floor", Default = "25", Numeric = true, Finished = true })
Label4 = Ux_116:AddLabel("Tower: -")
fns.Toggles.StopAtWave:OnChanged(fns.fn1699)
Cz.StopWave:OnChanged(fns.fn1686)
Ux_90 = C1.Player:AddRightGroupbox("Performance", "gauge")
Ux_90:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false, Callback = onFpsBoost })
Ux_90:AddToggle("RemoveOtherBases", { Text = "Remove Other Bases", Default = false, Callback = Cm })
Ux_90:AddToggle("AfkScreen", { Text = "AFK Black Screen", Default = false, Callback = B_ })
task.spawn(fns.afkScreenLoop)
connection = workspace.DescendantAdded:Connect(fns.onDescendantAdded)
connection2 = DH.DescendantAdded:Connect(fns.onDescendantAdded2)
fns.Ux_6 = workspace:FindFirstChild("Plots")
Ux_121 = fns.Ux_6
if Ux_121 then
    Ux_51 = 7
    repeat
        local WJ = bit32.rrotate(bit32.bxor(bit32.lrotate(Ux_51, 14), string.byte(tostring(Ux_51))), 9)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(WJ, 2337786607), 4040226816), (bit32.bxor(bit32.band(WJ, 1957180688), 519579844))), 4040226816), 519579844) ~= WJ then
            fns.Ux_6 = Ux_121.ChildAdded:Connect(fns.onChildAdded)
        else
            Ux_121 = fns.Ux_6.ChildAdded:Connect(fns.onChildAdded)
        end
        Ux_51 = (Ux_51 + 3) % 8
    until (Ux_51 * 7 + 5) % 8 == 3
end
Ch, Dp = nil, nil
Ch = Ux_121
Ux_125 = C1.Upgrades:AddLeftGroupbox("Auto Upgrade", "arrow-up")
Ux_125:AddToggle("AutoUpgrade", { Text = "Auto Buy Upgrades", Default = false })
Ux_125:AddDropdown("UpgradeTargets", { Values = Cp, Default = {}, Multi = true, Text = "Upgrades" })
Ux_125:AddInput("UpgradeGoldReserve", { Text = "Keep Gold", Default = "0", Numeric = true, Finished = true })
Ux_116 = C1.Upgrades:AddRightGroupbox("Levels", "list")
Dp = {}
for k, v in Cp do
    Dp[v] = Ux_116:AddLabel(v .. ": -")
end
Label5, B1, BT = nil, nil, nil
Ux_51 = C1.Units:AddLeftGroupbox("Auto Merge", "layers")
Ux_51:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
Ux_51:AddDropdown("MergeRarities", { Values = Ux_65, Default = {}, Multi = true, Text = "Merge Rarities" })
Label5 = Ux_51:AddLabel("Merge: -")
B1 = fns.fn1725
BT = fns.fn1168
task.spawn(fns.autoMergeLoop)
Label6, CR, Dy, DY = nil, nil, nil, nil
Ux_116 = C1.Units:AddLeftGroupbox("Auto Evolve", "sparkles")
Ux_116:AddToggle("AutoEvolve", { Text = "Auto Evolve", Default = false })
Ux_116:AddToggle("AutoClaimEvolve", { Text = "Auto Claim Evolve", Default = true })
Ux_116:AddDropdown("EvolveInto", {
    Values = Ux_43,
    Default = {},
    Multi = true,
    Searchable = true,
    Expandable = true,
    Text = "Evolve Into"
})
Label6 = Ux_116:AddLabel("Evolve: -")
CR = fns.fn880
Dy = fns.fn1468
DY = fns.fn1666
task.spawn(function()
    local M6 = false
    repeat
        local MY
        if not CO.Unloaded then
            task.wait(2)
            local MZ
            local MZ_1
            for k, v in BP.GetEvolution() do
                MZ = v
                break
            end
            if MZ then
                local M_ = 0
                if MZ.EndsAt then
                    local max = math.max
                    local M1_1 = tonumber(MZ.EndsAt) or 0
                    M_ = max(0, M1_1 - workspace:GetServerTimeNow())
                end
                local M0_2 = MZ.EvolutionName or MZ.Name
                local M1_2 = tostring(M0_2)
                local M2 = M_ <= 0 and " (ready)"
                local M3 = M2 or " (" .. math.floor(M_) .. "s)"
                Label6:SetText("Evolve: " .. M1_2 .. M3)
                if fns.Toggles.AutoClaimEvolve.Value and M_ <= 0 then
                    local MX = D1(MZ)
                    if MX ~= "" then
                        pcall(function()
                            DJ:FireServer({ Action = "Claim", UUID = MX })
                        end)
                        task.wait(0.5)
                    end
                end
            else
                Label6:SetText("Evolve: idle")
                if fns.Toggles.AutoEvolve.Value then
                    MY, MZ_1 = DY()
                    if MY then
                        Label6:SetText("Evolve: " .. tostring(MZ_1))
                        pcall(function()
                            DJ:FireServer({ Action = "Start", UUID = D1(MY) })
                        end)
                        DS.evolves = DS.evolves + 1
                        task.wait(1)
                    end
                end
            end
        else
            M6 = true
        end
    until M6
end)
fns.Ux_14 = C1.Units:AddRightGroupbox("Auto Sell", "banknote")
fns.Ux_14:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
fns.Ux_14:AddDropdown("SellRarities", { Values = Ux_65, Default = {}, Multi = true, Text = "Sell Rarities" })
fns.Ux_14:AddDropdown("KeepMutations", { Values = Ux_69, Default = {}, Multi = true, Expandable = true, Text = "Keep Mutations" })
fns.Ux_14:AddToggle("SellSkipLocked", { Text = "Skip Locked", Default = true })
local Label = fns.Ux_14:AddLabel("Sell: -")
if (not Label and 2 or (not Label or 2)) and ((not Label or 2) and (fns.Ux_14 or 2)) or not ((not Label and 2 or (not Label or 2)) and ((not Label or 2) and (fns.Ux_14 or 2))) then
    task.spawn(function()
        local Nm = false
        repeat
            if not CO.Unloaded then
                task.wait(2)
                if not fns.Toggles.AutoSell.Value then
                    Label:SetText("Sell: off")
                else
                    local Value2 = Cz.SellRarities.Value
                    local Value = Cz.KeepMutations.Value
                    local Nd = {}
                    for k, v in Cx() do
                        local Ng = fns.Ux_17[v.Name]
                        if Ng and v.UUID then
                            local Nh_3 = Value2[Ng.Rarity] == true
                            local Ni_2 = Value[v.Mutation ~= nil and v.Mutation ~= "" and v.Mutation or fns.Ux_19] == true
                            local Ng_6 = v.Locked == true
                            local Nj = Nh_3 and not Ni_2
                            if Nj then
                                Nj = not (fns.Toggles.SellSkipLocked.Value and Ng_6)
                            end
                            if Nj then
                                Nd[#Nd + 1] = v.UUID
                            end
                        end
                    end
                    if #Nd == 0 then
                        Label:SetText("Sell: idle")
                    else
                        Label:SetText("Sell: " .. tostring(#Nd))
                        pcall(function()
                            CW:FireServer(Nd)
                        end)
                        DS.sells = DS.sells + #Nd
                        task.wait(1)
                    end
                end
            else
                Nm = true
            end
        until Nm
    end)
else
    task.spawn(function()
        local Nm = false
        repeat
            if not CO.Unloaded then
                task.wait(2)
                if not fns.Toggles.AutoSell.Value then
                    Label:SetText("Sell: off")
                else
                    local Value2 = Cz.SellRarities.Value
                    local Value = Cz.KeepMutations.Value
                    local Nd = {}
                    for k, v in Cx() do
                        local Ng = fns.Ux_17[v.Name]
                        if Ng and v.UUID then
                            local Nh_1 = Value2[Ng.Rarity] == true
                            local Ni_1 = Value[v.Mutation ~= nil and v.Mutation ~= "" and v.Mutation or fns.Ux_19] == true
                            local Ng_3 = v.Locked == true
                            local Nj = Nh_1 and not Ni_1
                            if Nj then
                                Nj = not (fns.Toggles.SellSkipLocked.Value and Ng_3)
                            end
                            if Nj then
                                Nd[#Nd + 1] = v.UUID
                            end
                        end
                    end
                    if #Nd == 0 then
                        Label:SetText("Sell: idle")
                    else
                        Label:SetText("Sell: " .. tostring(#Nd))
                        pcall(function()
                            CW:FireServer(Nd)
                        end)
                        DS.sells = DS.sells + #Nd
                        task.wait(1)
                    end
                end
            else
                Nm = true
            end
        until Nm
    end)
end
Label7, Label8, Label9 = nil, nil, nil
Ux_125 = C1.Rewards:AddLeftGroupbox("Spin Wheel", "disc-3")
Ux_125:AddToggle("AutoSpinWheel", { Text = "Auto Free Spin", Default = false })
Label7 = Ux_125:AddLabel("Spins: -")
Ux_43 = C1.Rewards:AddRightGroupbox("Battlepass", "award")
Ux_43:AddToggle("AutoClaimBattlepass", { Text = "Auto Claim Battlepass", Default = false })
Ux_43:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
Ux_43:AddToggle("AutoClaimVip", { Text = "Auto Claim VIP", Default = false })
Label8 = Ux_43:AddLabel("Level: -")
Label9 = Ux_43:AddLabel("VIP: -")
fns.Ux_15 = nil
Ux_51 = C1.Upgrades:AddRightGroupbox("Live Session", "activity")
fns.Ux_15 = {
    rolls = Ux_51:AddLabel("Rolls: 0"),
    buys = Ux_51:AddLabel("Buys: 0"),
    merges = Ux_51:AddLabel("Merges: 0"),
    sells = Ux_51:AddLabel("Sells: 0"),
    evolves = Ux_51:AddLabel("Evolves: 0"),
    upgrades = Ux_51:AddLabel("Upgrades: 0"),
    tickets = Ux_51:AddLabel("Tickets Bought: 0"),
    gold = Ux_51:AddLabel("Gold: 0"),
    ticketCount = Ux_51:AddLabel("Infinite Tickets: 0")
}
task.spawn(fns.worker3)
Label10, D2 = nil, nil
Ux_125 = C1.Units:AddLeftGroupbox("Auto Clone", "copy")
Ux_125:AddToggle("AutoClone", { Text = "Auto Clone", Default = false })
Ux_125:AddToggle("AutoClaimClone", { Text = "Auto Claim Finished", Default = true })
Ux_125:AddDropdown("CloneSelectMode", { Values = Ux_35, Default = "Highest Rarity", Multi = false, Text = "Priority" })
Ux_125:AddToggle("CloneWaitForEssence", { Text = "Wait For Essence", Default = false })
Ux_125:AddToggle("CloneOnlyMutated", { Text = "Only Mutated Units", Default = false })
Ux_125:AddToggle("CloneSkipLocked", { Text = "Skip Locked Units", Default = false })
Ux_125:AddInput("CloneMinLevel", { Text = "Min Level", Default = "1", Numeric = true, Finished = true })
Ux_125:AddInput("CloneMaxLevel", { Text = "Max Level (0 = any)", Default = "0", Numeric = true, Finished = true })
Ux_125:AddInput("CloneEssenceReserve", { Text = "Keep Essence", Default = "0", Numeric = true, Finished = true })
Label10 = Ux_125:AddLabel("Clone: -")
D2 = {}
Ux_107 = fns.fn998
Ux_116 = C1.Units:AddRightGroupbox("Clone Rules", "list-filter")
Ux_116:AddDropdown("CloneRuleRarity", { Values = Ux_60, Default = {}, Multi = true, Text = "Rarities", Callback = Ux_107 })
Ux_116:AddDropdown("CloneMutations", { Values = Ux_69, Default = {}, Multi = true, Expandable = true, Text = "Mutations" })
for k, v in Ux_60 do
    D2[v] = Ux_116:AddDropdown(Ck[v], {
        Values = Ux_78[v],
        Default = {},
        Multi = true,
        Searchable = true,
        Expandable = true,
        Text = v .. " Characters"
    })
end
Du, B5, BW, D8, Ux_34, DF, B8 = nil, nil, nil, nil, nil, nil, nil
Ux_107(Cz.CloneRuleRarity.Value)
Du = fns.fn297
if (B5 or B8 or (B8 or B8)) and (BW and (not B5 and BW)) and ((not BW and not BW or (not Du or false)) and ((B8 or not B5) and 22)) or not ((B5 or B8 or (B8 or B8)) and (BW and (not B5 and BW)) and ((not BW and not BW or (not Du or false)) and ((B8 or not B5) and 22))) then
    B5 = fns.fn901
    BW = fns.fn484
else
    BW = fns.fn901
    B5 = fns.fn484
end
D8 = fns.fn1349
Ux_34 = fns.fn684
DF = fns.fn1112
B8 = fns.fn747
task.spawn(function()
    local Oz_1
    local Oy_1
    local Ow_2
    local OD = false
    repeat
        local Ot
        if not CO.Unloaded then
            task.wait(1)
            local Ou = BP.GetCloning()
            local Ov
            for k, v in Ou do
                Ov = v
                break
            end
            if Ov then
                local Ow_1 = tonumber(BP.GetCloneLeft(Ov)) or 0
                if Ow_1 <= 0 then
                    Oy_1 = "ready"
                else
                    Ow_2, Oz_1 = pcall(BP.FormatCloneTime, Ow_1)
                    local OA = Ow_2 and Oz_1
                    local Ow_3 = OA or tostring(math.floor(Ow_1)) .. "s"
                    Oy_1 = Ow_3
                end
                Label10:SetText("Clone: " .. tostring(Ov.Name) .. " (" .. Oy_1 .. ")")
            else
                Label10:SetText("Clone: idle")
            end
            if fns.Toggles.AutoClone.Value then
                local Ov_1 = false
                local Ow_4 = 0
                for k, v in Ou do
                    Ow_4 += 1
                    local Ou_1 = fns.Toggles.AutoClaimClone.Value
                    if Ou_1 then
                        local Ox_2 = tonumber(BP.GetCloneLeft(v)) or 1
                        Ou_1 = Ox_2 <= 0
                    end
                    if Ou_1 then
                        local Os = Du(v)
                        if Os ~= "" then
                            pcall(function()
                                Request:FireServer("Claim", { UUID = Os, CharacterId = Os })
                            end)
                            Ov_1 = true
                            task.wait(0.3)
                        end
                    end
                end
                local Ou_2 = Ow_4 == 0
                local Ox_3 = not Ov_1
                if Ox_3 ~= false then
                    Ox_3 = Ou_2
                end
                if Ox_3 then
                    local Ou_3 = B8()
                    if Ou_3 then
                        Ot = Du(Ou_3)
                        pcall(function()
                            Request:FireServer("Start", { UUID = Ot, CharacterId = Ot })
                        end)
                        task.wait(0.4)
                    end
                end
            end
        else
            OD = true
        end
    until OD
end)
BL, connection3, fns.Ux_20, BR, Ec, B3, BH, Ux_24, C_, fns.Ux_12, Ct, DM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
BR = fns.fn430
Ec = fns.fn401
do
    B3 = fns.fn1145
    BH = function()
        local Pe = BK
        if not Pe then
            DZ = false
            return
        end
        local Pf = Dm()
        local Pg = {}
        for k in Pe.characters do
            Pg[#Pg + 1] = k
        end
        table.sort(Pg, function(mN, mO)
            local O8_1
            local O7_1
            O7_1, O8_1 = tonumber(mN), tonumber(mO)
            if O7_1 and O8_1 then
                return O7_1 < O8_1
            end
            return tostring(mN) < tostring(mO)
        end)
        local Ph = false
        for k, v in Pg do
            local Pt = v
            local Pg_1 = Pe.characters[Pt]
            if CO.Unloaded or not fns.Toggles.AutoBuy.Value then
                break
            end
            if Pg_1 and not Pe.bought[Pt] and not Pg_1.Purchased then
                local Pi_2 = fns.Toggles.StopWhenInventoryFull.Value and #Cx() >= Pf
                if Pi_2 then
                    break
                elseif Ec(Pg_1) then
                    if not B3(Pg_1) then
                        if fns.Toggles.WaitUntilAffordable.Value then
                            Ph = true
                            break
                        end
                    else
                        Pe.bought[Pt] = true
                        pcall(function()
                            C0:FireServer(Pe.id, Pt)
                        end)
                        DS.buys = DS.buys + 1
                        local Pg_2 = Pe.queued and Pe.queued[Pt]
                        if Pg_2 then
                            Pg_2.purchased = true
                        end
                        task.wait(0.15)
                    end
                end
            end
        end
        DZ = Ph
    end
    task.spawn(fns.autoSummonLoop)
    task.spawn(fns.autoBuyLoop)
    Ux_24 = fns.fn1324
end
task.spawn(fns.autoEquipBestLoop)
task.spawn(function()
    while not CO.Unloaded do
        task.wait(1)
        local Value = Cz.UpgradeTargets.Value
        if fns.Toggles.AutoUpgrade.Value then
            local PE = tonumber(Cz.UpgradeGoldReserve.Value) or 0
            for k, v in Cp do
                local PN = v
                if CO.Unloaded or not fns.Toggles.AutoUpgrade.Value then
                    break
                elseif Value[PN] then
                    local PE_2 = Cr(PN)
                    if not Ux_23.IsMaxed(PN, PE_2) then
                        local PG = Ux_23.GetPrice(PN, PE_2)
                        local PE_3 = PG and CF() - PG >= PE
                        if PE_3 then
                            pcall(function()
                                CP:FireServer("Gold", PN)
                            end)
                            DS.upgrades = DS.upgrades + 1
                            task.wait(0.25)
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(fns.autoStartLoop)
BL = false
connection3 = Ux_56.OnClientEvent:Connect(fns.onOnClientEvent2)
task.spawn(fns.autoJoinRaidLoop)
task.spawn(fns.autoBuyTicketLoop)
task.spawn(fns.autoClaimVipLoop)
task.spawn(function()
    local Qh_1
    local Qi_1
    while not CO.Unloaded do
        task.wait(3)
        if workspace:GetAttribute("TraderEventActive") ~= true then
            Label2:SetText("Merchant: closed")
        else
            Qh_1, Qi_1 = pcall(function()
                return Cf:InvokeServer()
            end)
            local Qj = Qh_1 and type(Qi_1) == "table" and type(Qi_1.Items) == "table"
            if Qj then
                Label2:SetText("Merchant: open")
                if fns.Toggles.AutoBuyMerchant.Value then
                    local Qh_2 = tonumber(Cz.MerchantGoldReserve.Value) or 0
                    local Value = Cz.MerchantItems.Value
                    for k, v in Qi_1.Items do
                        local Qt = v
                        if CO.Unloaded or not fns.Toggles.AutoBuyMerchant.Value then
                            break
                        else
                            local Qi_3 = tonumber(Qt.Stock) or 0
                            local Qi_4 = tonumber(Qt.Price) or 0
                            local Qi_5 = fns.Toggles.BuyAllMerchant.Value
                            if not Qi_5 then
                                Qi_5 = Qt.Name ~= nil and Value[Qt.Name] == true
                            end
                            local Qm_2 = Qi_5
                            local Qi_6 = Qt.Name and Qi_3 > 0 and Qm_2 and CF() - Qi_4 >= Qh_2
                            if Qi_6 then
                                pcall(function()
                                    Dr:FireServer(Qt.Name)
                                end)
                                task.wait(0.4)
                            end
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(fns.autoSpinWheelLoop)
C_ = fns.fn472
fns.Ux_12 = fns.fn1880
Ct = function()
    local QK = client:get("Battlepass")
    if type(QK) ~= "table" then
        return
    end
    local QM = QK.Claimed or {}
    local QN = QK.Premium or {}
    local QN_1 = QN.Owned == true
    if QN_1 then
        local QO_1 = tonumber(QN.Season)
        local QP_1 = tonumber(BattlepassReward.Config.Season) or 1
        QN_1 = QO_1 == QP_1
    end
    local QM_3 = QN_1
    local QN_2 = fns.Ux_12(QK.Exp)
    for i = 1, QN_2 do
        local QU = i
        local QK_1 = BattlepassReward.Rewards[QU]
        for k, v in Cv do
            local Q_ = v
            if CO.Unloaded or not fns.Toggles.AutoClaimBattlepass.Value then
                return
            end
            local QO_2 = QM[Q_] or {}
            local QN_5 = QK_1
            if QN_5 then
                QN_5 = QK_1[Q_]
            end
            if QN_5 then
                QN_5 = QO_2[tostring(QU)] ~= true
            end
            if QN_5 then
                if Q_ ~= "Premium" or QM_3 then
                    pcall(function()
                        Dd:FireServer(QU, Q_)
                    end)
                    task.wait(0.2)
                end
            end
        end
    end
end
DM = function()
    local Q1_1
    local Q0_1
    Q0_1, Q1_1 = pcall(function()
        return GetQuestData:InvokeServer()
    end)
    local Q2 = not Q0_1 or type(Q1_1) ~= "table"
    if Q2 then
        return
    end
    for k, v in DQ do
        local Ra = v
        local Q2_1 = Q1_1[Ra] or {}
        for k, v in Q2_1 do
            local Rg = v
            if CO.Unloaded or not fns.Toggles.AutoClaimQuests.Value then
                return
            end
            local Q0_4 = tonumber(Rg.Progress) or 0
            local Q0_5 = tonumber(Rg.Requirement) or 1
            if Rg.ID and (Rg.Completed == true or Q0_4 >= Q0_5) and Rg.Claimed ~= true then
                pcall(function()
                    B0:FireServer(Ra, tostring(Rg.ID))
                end)
                task.wait(0.2)
            end
        end
    end
end
task.spawn(fns.autoClaimBattlepassLoop)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
fns.Ux_20 = {}
Ux_60 = function()
    local Tl
    local Tf
    local Tb
    local Tn
    Tb = nil
    Tf = nil
    Tl = nil
    Tn = nil
    local Tc, Td, Te, CFrame, Th, Ti, Tj, Label, Tm, To
    Tm = function()
        local Character = Di.Character
        local Rv = Character and Character:FindFirstChildOfClass("Humanoid")
        return Rv
    end
    Th = function()
        local Character = Di.Character
        local RB = Character and Character:FindFirstChild("HumanoidRootPart")
        return RB
    end
    local MovementGroup = C1.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local FlyGroup = C1.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local PositionGroup = C1.Player:AddLeftGroupbox("Position", "map-pin")
    CFrame = nil
    Label = PositionGroup:AddLabel("Saved: none")
    PositionGroup:AddButton({
        Text = "Save Position",
        Func = function()
            local RG = Th()
            if not RG then
                CO:Notify("No character to save from")
                return
            end
            CFrame = RG.CFrame
            local Position = CFrame.Position
            Label:SetText(string.format("Saved: %d, %d, %d", Position.X, Position.Y, Position.Z))
            CO:Notify("Saved current position")
        end
    })
    PositionGroup:AddButton({
        Text = "Teleport To Saved",
        Func = function()
            if not CFrame then
                CO:Notify("Save a position first")
                return
            end
            local RI = Th()
            if RI then
                RI.CFrame = CFrame
            end
        end
    })
    fns.Ux_20.noclipConnection = Ce.Stepped:Connect(function()
        if CO.Unloaded then
            return
        end
        if fns.Toggles.NoClip and fns.Toggles.NoClip.Value then
            local Character = Di.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local RK_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if RK_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    fns.Ux_20.jumpConnection = DA.JumpRequest:Connect(function()
        if CO.Unloaded then
            return
        end
        if fns.Toggles.InfJump and fns.Toggles.InfJump.Value then
            local RV_1 = Tm()
            if RV_1 then
                RV_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    fns.Ux_20.flyConnection = Ce.RenderStepped:Connect(function(rS)
        if CO.Unloaded then
            return
        end
        if fns.Toggles.WalkSpeedEnabled and fns.Toggles.WalkSpeedEnabled.Value then
            local RX_1 = Tm()
            if RX_1 then
                RX_1.WalkSpeed = Cz.WalkSpeed.Value
            end
        end
        if fns.Toggles.Fly and fns.Toggles.Fly.Value then
            local RX_3 = Th()
            local RY = Tm()
            if RX_3 and RY and workspace.CurrentCamera then
                RY.PlatformStand = true
                local RY_1 = Vector3.zero
                if DA:IsKeyDown(Enum.KeyCode.W) then
                    RY_1 += workspace.CurrentCamera.CFrame.LookVector
                end
                if DA:IsKeyDown(Enum.KeyCode.S) then
                    RY_1 -= workspace.CurrentCamera.CFrame.LookVector
                end
                if DA:IsKeyDown(Enum.KeyCode.A) then
                    RY_1 -= workspace.CurrentCamera.CFrame.RightVector
                end
                if DA:IsKeyDown(Enum.KeyCode.D) then
                    RY_1 += workspace.CurrentCamera.CFrame.RightVector
                end
                if DA:IsKeyDown(Enum.KeyCode.Space) then
                    RY_1 += Vector3.new(0, 1, 0)
                end
                if DA:IsKeyDown(Enum.KeyCode.LeftControl) then
                    RY_1 -= Vector3.new(0, 1, 0)
                end
                RX_3.Velocity = Vector3.zero
                if RY_1.Magnitude > 0 then
                    RX_3.CFrame = RX_3.CFrame + RY_1.Unit * Cz.FlySpeed.Value * rS
                end
            end
        end
    end)
    fns.Toggles.Fly:OnChanged(function()
        if not fns.Toggles.Fly.Value then
            local R5 = Tm()
            if R5 then
                R5.PlatformStand = false
            end
        end
    end)
    fns.Toggles.WalkSpeedEnabled:OnChanged(function()
        if not fns.Toggles.WalkSpeedEnabled.Value then
            local Sa = Tm()
            if Sa then
                Sa.WalkSpeed = 16
            end
        end
    end)
    To = function(sd)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not sd)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = B9:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not sd
            end
        end)
        if not sd then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Di, "GameplayPaused", false)
            else
                Di.GameplayPaused = false
            end
        end)
    end
    fns.Ux_20.applyAntiGameplayPause = To
    fns.Toggles.AntiGameplayPause:OnChanged(function()
        To(fns.Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not CO.Unloaded do
            task.wait(1)
            if fns.Toggles.AntiGameplayPause.Value then
                To(true)
            end
        end
    end)
    local MenuGroup = C1.Settings:AddLeftGroupbox("Menu", "menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Tn = tick()
    Te = tick()
    pcall(function()
        for i, v in ipairs(getconnections(Di.Idled)) do
            local Sn = v
            pcall(function()
                Sn:Disable()
            end)
        end
    end)
    Tc = function()
        if not workspace.CurrentCamera then
            return
        end
        Ci:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(0.1)
        Ci:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        Te = tick()
    end
    fns.Ux_20.antiAfkBeganConnection = DA.InputBegan:Connect(function()
        Tn = tick()
    end)
    fns.Ux_20.antiAfkChangedConnection = DA.InputChanged:Connect(function(sH)
        local UserInputType = sH.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            Tn = tick()
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("AntiRejoin", { Text = "Disable Auto Rejoin", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect", Default = false })
    Tj = false
    Td = function()
        local PlaceId, JobId
        if Tj then
            return
        end
        Tj = true
        PlaceId = game.PlaceId
        JobId = game.JobId
        task.spawn(function()
            local St = pcall(function()
                fns.Ux_7:TeleportToPlaceInstance(PlaceId, JobId, Di)
            end)
            if not St then
                pcall(function()
                    fns.Ux_7:Teleport(PlaceId, Di)
                end)
            end
        end)
    end
    fns.Ux_20.reconnectConnection = GuiService.ErrorMessageChanged:Connect(function()
        local Sz_1
        local Sy = CO.Unloaded or not fns.Toggles.AutoReconnect.Value
        local Sy_1
        if Sy then
            return
        end
        Sy_1, Sz_1 = pcall(function()
            return GuiService:GetErrorMessage()
        end)
        local SA = Sy_1 and type(Sz_1) == "string"
        if SA and Sz_1 ~= "" then
            Td()
        end
    end)
    local Tq = queue_on_teleport
    Tf = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/games/rollanimetofight.lua"
    if not Tq then
        Tq = syn and syn.queue_on_teleport
    end
    if not Tq then
        Tq = fluxus and fluxus.queue_on_teleport
    end
    if not Tq then
        Tq = queueonteleport
    end
    Tb = false
    Tl = Tq
    Ti = function()
        if not Tl then
            return false
        elseif Tb then
            return true
        else
            Tb = pcall(Tl, ('if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("%s"))()'):format(Tf))
            return Tb
        end
    end
    MenuGroup:AddToggle("AutoExecute", {
        Text = "Auto Execute",
        Default = false,
        Callback = function(tn)
            if not tn then
                return
            end
            if not Ti() then
                CO:Notify("queue_on_teleport is not supported by your executor")
            end
        end
    })
    local Tq_1 = hookmetamethod
    local Ta = {
        Teleport = true,
        TeleportAsync = true,
        TeleportPartyAsync = true,
        TeleportToPlaceInstance = true,
        TeleportToPrivateServer = true,
        TeleportToSpawnByName = true
    }
    if Tq_1 then
        Tq_1 = getnamecallmethod
    end
    if Tq_1 then
        pcall(function()
            local ts
            ts = hookmetamethod(game, "__namecall", function(tt, ...)
                local SL = getnamecallmethod()
                if not CO.Unloaded and fns.Toggles.AntiRejoin.Value and not Tj then
                    if tt == fns.Ux_7 and Ta[SL] then
                        return nil
                    end
                    if SL == "FireServer" and tt == DW then
                        return nil
                    end
                    return ts(tt, ...)
                end
                return ts(tt, ...)
            end)
        end)
    end
    if hookfunction then
        for k in pairs(Ta) do
            local Tw = k
            pcall(function()
                local S_
                S_ = fns.Ux_7[Tw]
                local S0 = newcclosure
                local function S1(...)
                    if not CO.Unloaded and fns.Toggles.AntiRejoin.Value and not Tj then
                        return nil
                    end
                    return S_(...)
                end
                if S0 then
                    S0 = newcclosure(S1)
                end
                local S2 = S0 or S1
                hookfunction(S_, S2)
            end)
        end
    end
    MenuGroup:AddButton("Unload", function()
        CO:Unload()
    end)
    fns.Ux_20.autoExecuteConnection = Di.OnTeleport:Connect(function(t_)
        if t_ ~= Enum.TeleportState.Started then
            return
        end
        if CO.Unloaded or not fns.Toggles.AutoExecute.Value then
            return
        end
        Ti()
    end)
    task.spawn(function()
        while not CO.Unloaded do
            task.wait(2)
            if fns.Toggles.AntiAfk.Value then
                local S6 = tick() - Tn
                local S7 = tick() - Te
                if S6 >= 300 and S7 >= 60 then
                    pcall(Tc)
                else
                    if S6 < 300 and S7 >= 300 then
                        pcall(Tc)
                    end
                end
            end
        end
    end)
end
Ux_60()
CO.ToggleKeybind = Cz.MenuKeybind
Ux_47:SetLibrary(CO)
CH:SetLibrary(CO)
Ux_47:SetFolder("OuroborosHub")
CH:SetFolder("OuroborosHub/roll-anime-to-fight")
CH:IgnoreThemeSettings()
CH:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
Ux_47:SaveDefault("Evil Hello Kitty")
Ux_47:ApplyToTab(C1.Settings)
Ux_47:LoadDefault()
D9, DE, Ux_31, CM = nil, nil, nil, nil
Ux_51 = CH:BuildConfigSection(C1.Settings)
D9 = fns.fn895
DE = fns.fn1408
Ux_31 = fns.fn740
CM = function(uF)
    local T1
    T1 = nil
    local T2 = type(uF) ~= "table" or type(uF.idx) ~= "string" or type(uF.type) ~= "string" or CH.Ignore[uF.idx]
    if T2 then
        return false
    end
    T1 = D9(uF.type, uF.idx)
    if not T1 then
        return false
    end
    local T2_1 = pcall(function()
        if uF.type == "Input" then
            if type(uF.text) ~= "string" then
                return
            end
            T1:SetValue(uF.text)
        elseif uF.type == "ColorPicker" then
            T1:SetValueRGB(Color3.fromHex(uF.value), uF.transparency)
        elseif uF.type == "KeyPicker" then
            T1:SetValue({ uF.key, uF.mode, uF.modifiers })
            if uF.mode == "Toggle" and uF.toggled ~= nil then
                T1.Toggled = uF.toggled
                T1:Update()
            end
        else
            T1:SetValue(uF.value)
        end
    end)
    return T2_1
end
Ux_51:AddDivider()
Ux_51:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
Ux_51:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
Ux_51:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
CH:LoadAutoloadConfig()
CO:OnUnload(fns.fn1001)
CO:Notify({ Title = BZ, Description = "Loaded.", Time = 5 })
