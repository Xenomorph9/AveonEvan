local fns = {}
local af7_33, af7_35, af7_36, af7_38, af7_40, af7_41, af7_42, af7_43, af7_44, af7_45, af7_47, af7_48, af7_51, af7_52, af7_53, af7_55, af7_56, af7_58, af7_60, connection5, af7_63, connection2, af7_65, af7_78
fns.af7_1 = nil
fns.af7_3 = nil
fns.af7_5 = nil
fns.af7_8 = nil
fns.af7_10 = nil
fns.af7_12 = nil
fns.af7_14 = nil
fns.af7_16 = nil
fns.connection4 = nil
fns.af7_20 = nil
fns.af7_21 = nil
fns.af7_23 = nil
fns.af7_24 = nil
fns.af7_26 = nil
fns.af7_28 = nil
af7_33 = nil
fns.af7_31 = nil
fns.af7_32 = nil
af7_35 = nil
af7_36 = nil
af7_38 = nil
af7_40 = nil
af7_41 = nil
af7_42 = nil
af7_43 = nil
af7_44 = nil
af7_45 = nil
af7_47 = nil
af7_48 = nil
af7_51 = nil
af7_52 = nil
af7_53 = nil
af7_55 = nil
af7_56 = nil
af7_58 = nil
af7_60 = nil
connection5 = nil
af7_63 = nil
connection2 = nil
af7_65 = nil
local K3
local J3
local Ms
local Ls
local Ks
local LR
local KR
local JR
local Kf
local LE
local K2
local J2
local Mr
local Lr
local Kr
local LQ
local KQ
local JQ
local Me
local CoreGui
local L1
local Mq
local J1
local Lq
local Kq
local HttpService
local Md
local JP
local Ld
local Kd
local LC
local J0
local connection3
local Kp
local LO
local JO
local Mc
local Lc
local Kc
local LB
local connection
local L_
local Mo
local Lo
local LN
local Mb
local JN
local Kb
local LA
local KA
local LZ
local Mn
local JZ
local Ln
local Kn
local LM
local KM
local Ma
local JM
local Ka
local State
local LY
local KY
local Mm
local JY
local Km
local KL
local JL
local L9
local K9
local J9
local Ly
local Ky
local LX
local RemoteEvents
local JX
local Ml
local onRenderStepped
local LK
local JK
local L8
local K8
local JW
local Mk
local Kk
local LJ
local KJ
local L7
local JJ
local K7
local J7
local Lw
local LV
local KV
local Mj
local JV
local Lj
function fns.fn4()
    gethui = JP
end
function fns.fn23()
    if not af7_52 then
        return false
    end
    local model = af7_52.model
    if not model or not model.Parent then
        return false
    end
    local humanoid = af7_52.humanoid
    local root = af7_52.root
    return humanoid ~= nil and humanoid.Parent ~= nil and humanoid.Health > 0 and root ~= nil and root.Parent ~= nil
end
function fns.fn31(tA)
    State.AutoPotions = tA == true
    if State.AutoPotions then
        JR("Potions", LM, Lr)
    else
        J9("Potions")
        State.PotionStatus = "Idle"
    end
end
function fns.fn37()
    local Qz = tonumber(K2:GetAttribute("Money")) or 0
    return Qz
end
function fns.fn47(sQ)
    fns.af7_5.Rarities, fns.af7_5.RarityCount = fns.af7_21(sQ)
end
function fns.fn60()
    return not L9.Unloaded
end
function fns.fn84(uH)
    local aa3 = tonumber(uH)
    if aa3 then
        State.FuseMaxStars = math.clamp(math.floor(aa3), 1, 5)
    end
end
function fns.fn94()
    return table.clone(J0)
end
function fns.fn118(rS)
    State.AutoPrestige = rS == true
    if State.AutoPrestige then
        JR("Prestige", af7_44, Kc)
    else
        J9("Prestige")
    end
end
function fns.fn126(r3)
    State.AutoFarm = r3 == true
    if State.AutoFarm then
        af7_52 = nil
        if not connection then
            connection = Md.RenderStepped:Connect(onRenderStepped)
        end
        JR("FarmWeapon", fns.af7_14, fns.af7_23)
        fns.af7_1("Farming mobs")
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        J9("FarmWeapon")
        af7_52 = nil
    end
end
function fns.fn128()
    connection3:Disconnect()
end
function fns.fn137(uO)
    State.ShopItems, State.ShopItemCount = fns.af7_21(uO)
end
function fns.fn182(m5)
    local WK = {}
    for i, v in ipairs(Ly()) do
        if v.name == m5 then
            table.insert(WK, v.instance)
        end
    end
    table.sort(WK, function(na, nb)
        local WD = na:GetAttribute("Locked") == true and 1
        local WE = WD or 0
        local WE_1 = nb:GetAttribute("Locked") == true and 1
        local WE_2 = WE_1 or 0
        if WE ~= WE_2 then
            return WE < WE_2
        end
        local WD_2 = (tonumber(na:GetAttribute("Stars")))
        local WJ = if WD_2 then 1 else 0
        local WH = 3578 * WJ + 2256 * (1 - WJ)
        local WI = 3289 * WJ + 3622 * (1 - WJ)
        if not ((WH * 1440 + WI * 1810 + WH * WI) % 16777213 == 6096239) then
            WD_2 = 0
        end
        local WE_3 = tonumber(nb:GetAttribute("Stars")) or 0
        return WD_2 > WE_3
    end)
    return WK
end
function fns.fn208(u2)
    local aa5 = u2 ~= ""
    local aa6 = type(u2) == "string" and aa5
    if aa6 then
        State.TraitUnit = u2
    else
        State.TraitUnit = nil
    end
end
function fns.fn218()
    local aai_1
    local aah = 0
    for i, v in ipairs(fns.af7_5.Order) do
        aah += #fns.af7_5.Buffer[v]
    end
    if not fns.af7_5.Enabled then
        aai_1 = "Disabled"
    elseif not fns.af7_5.ValidUrl(fns.af7_5.Url) then
        aai_1 = "No valid URL"
    else
        local aaj = math.max(math.ceil(L7() - os.clock()), 0)
        aai_1 = string.format("Armed - next in %ds", aaj)
    end
    return Ma("WEBHOOK", aai_1) .. "\n" .. Lj({ { "Sent", State.WebhookSent }, { "Failed", State.WebhookFailed }, { "Pending", aah } })
end
function fns.fn236()
    return os.time() + Ms
end
function fns.fn277()
    if LN then
        LN:Disconnect()
        LN = nil
    end
    fns.connection4:Disconnect()
end
function fns.fn320()
    local Sp = {}
    local Sq = { K2:FindFirstChild("Backpack"), K2.Character }
    for i, v in ipairs(Sq) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local Sq_1 = child:IsA("Tool") and JW and JW[child.Name]
                if Sq_1 then
                    Sp[child.Name] = true
                end
            end
        end
    end
    return Sp
end
function fns.fn325(sE)
    local Z5 = tonumber(sE)
    if Z5 then
        fns.af7_5.Interval = math.clamp(Z5, 5, 1800)
        fns.af7_24 = os.clock() + Mn()
    end
end
function fns.fn326()
    local PQ = Ma("CLONE", State.CloneStatus)
    local PR = State.Cloned
    local PX = if PR then 1 else 0
    local PV = 1316 * PX + 2213 * (1 - PX)
    local PW = 1391 * PX + 3599 * (1 - PX)
    if not ((PV * 359 + PW * 606 + PV * PW) % 16777213 == 3145946) then
        PR = 0
    end
    local PS = { "Claimed", PR }
    local PT = State.CloneUnit or "none"
    return PQ .. "\n" .. Lj({ PS, { "Target", PT } })
end
function fns.fn334(hv)
    if type(hv) ~= "string" then
        return false
    end
    return string.match(hv, "^https://[%w%-%.]*discord[%w%-%.]*%.com/api/webhooks/%d+/[%w%-_]+$") ~= nil
end
function fns.fn360(gu)
    local id = gu.id
    local RW = id ~= ""
    local RX = type(id) == "string" and RW
    if RX then
        local RW_1 = string.match(id, "_(%w+)$") or id
        return string.format("%s (%s)", gu.name, RW_1)
    end
    return gu.name
end
function fns.fn363()
    return fns.af7_5.EventValues()
end
function fns.fn382()
    return table.clone(af7_33)
end
function fns.fn409(hN)
    table.insert(fns.af7_5.Queue, hN)
    while #fns.af7_5.Queue > fns.af7_20 do
        table.remove(fns.af7_5.Queue, 1)
    end
    fns.af7_5.Drain()
end
function fns.fn416(sJ)
    local Z7 = fns.af7_21(sJ)
    local Z8 = {}
    for k in pairs(Z7) do
        local Z7_1 = fns.af7_5.KindForTitle(k)
        if Z7_1 then
            Z8[Z7_1] = true
        end
    end
    fns.af7_5.Events = Z8
end
function fns.fn428(c6)
    local OE = {}
    for i, v in ipairs(c6) do
        table.insert(OE, string.format('<font color="%s">%s</font> <font color="%s"><b>%s</b></font>', JV, Mq(v[1]), JQ, Mq(v[2])))
    end
    return table.concat(OE, string.format(' <font color="%s">·</font> ', JJ))
end
function fns.fn438(u_)
    State.TraitStops, State.TraitStopCount = fns.af7_21(u_)
end
function fns.fn443()
    local RZ = {}
    for i, v in ipairs(Ly()) do
        table.insert(RZ, LY(v))
    end
    table.sort(RZ)
    return RZ
end
function fns.fn461(tG)
    State.AutoChallenges = tG == true
    if State.AutoChallenges then
        af7_56 = 1
        JL = 0
        table.clear(JX)
        JR("Challenges", af7_43, fns.af7_28)
    else
        J9("Challenges")
        State.ChallengeStatus = "Idle"
    end
end
function fns.fn464(lg)
    local VF = lg == ""
    local VG = type(lg) ~= "string" or VF
    if VG then
        return nil
    end
    for i, v in ipairs(Ly()) do
        if LY(v) == lg then
            return v.instance
        end
    end
    return nil
end
function fns.fn468(tP)
    State.AutoClone = tP == true
    if State.AutoClone then
        JR("Clone", LA, Ka)
    else
        J9("Clone")
        State.CloneStatus = "Idle"
    end
end
function fns.fn492()
    return fns.af7_5.Post({
        content = fns.af7_5.Mention(),
        embeds = {
            {
                title = "Ouroboros Connected",
                description = fns.af7_5.Rule .. "\n› " .. af7_36 .. " webhook is working\n" .. fns.af7_5.Rule,
                color = 10233776,
                footer = { text = fns.af7_5.Footer() }
            }
        }
    })
end
function fns.fn494()
    local Ww = not JY
    local Ww_6
    local Wx = not J2 or Ww
    local Wx_5
    if Wx then
        State.TowerStatus = "Tower remotes unavailable"
        return
    end
    if State.TowerUseInstant and JN then
        local Ww_2 = tonumber(K2:GetAttribute("InstantClearTicketCount")) or 0
        if Ww_2 > 0 then
            local Ww_3 = pcall(function()
                return JN:InvokeServer()
            end)
            if Ww_3 then
                State.TowerStatus = "Used instant clear ticket"
                task.wait(0.5)
            end
        end
    end
    local Ww_4 = LX(true)
    if type(Ww_4) ~= "table" then
        State.TowerStatus = "Ticket lookup failed"
        return
    end
    local Wx_2 = (tonumber(Ww_4.Tickets))
    local WC = if Wx_2 then 1 else 0
    local WA = 2451 * WC + 2084 * (1 - WC)
    local WB = 2310 * WC + 3605 * (1 - WC)
    if not ((WA * 1953 + WB * 1095 + WA * WB) % 16777213 == 12978063) then
        Wx_2 = 0
    end
    local Wy = Wx_2
    if Wy <= 0 then
        local Wx_3 = tonumber(Ww_4.SecondsUntilDailyReset)
        local Ww_5 = Wx_3 and Wx_3 > 0 and "No tickets, resets in " .. KQ(Wx_3)
        local Wx_4 = Ww_5 or "No tickets"
        State.TowerStatus = Wx_4
        return
    end
    Ww_6, Wx_5 = pcall(function()
        return J2:InvokeServer()
    end)
    if not Ww_6 then
        State.TowerStatus = "Enter errored"
        return
    end
    if not Wx_5 then
        State.TowerStatus = "Enter refused"
        return
    end
    State.TowerRuns = State.TowerRuns + 1
    State.TowerStatus = string.format("Entered tower (%d left)", math.max(Wy - 1, 0))
end
function fns.fn543()
    connection2:Disconnect()
end
function fns.fn596()
    return af7_40:InvokeServer()
end
function fns.fn608(ui)
    local aaV = ui ~= ""
    local aaW = type(ui) == "string" and aaV
    if aaW then
        State.EvolveUnit = ui
    else
        State.EvolveUnit = nil
    end
end
function fns.fn618()
    return table.clone(af7_47)
end
function fns.fn620()
    connection5:Disconnect()
end
function fns.fn621(t4)
    State.AutoTower = t4 == true
    if State.AutoTower then
        JR("Tower", af7_58, Mk)
    else
        J9("Tower")
        State.TowerStatus = "Idle"
    end
end
function fns.fn624()
    local Pe = {}
    for i, v in ipairs(J0) do
        local Pf = KM and KM[v]
        local Pf_1 = tonumber(K2:GetAttribute("Challenge" .. v .. "CompletedAt")) or 0
        local Ph = Pf
        if Ph then
            Ph = Pf.ResetInterval
        end
        local Pf_2 = tonumber(Ph) or 0
        local Pf_3 = Pf_1 + Pf_2 - LK()
        local Pg_2 = JX[v]
        local Ph_1 = Pg_2 and Pg_2 - os.clock()
        local Pg_3 = Ph_1 or 0
        if Pg_3 > Pf_3 then
            Pf_3 = Pg_3
        end
        local insert = table.insert
        local Ph_3 = Pf_3 > 0 and KQ(Pf_3)
        local Pf_4 = Ph_3 or "ready"
        insert(Pe, { v, Pf_4 })
    end
    return Ma("CHALLENGES", State.ChallengeStatus) .. "\n" .. Lj(Pe)
end
function fns.fn638(uU)
    State.CollectUnits, State.CollectUnitCount = fns.af7_21(uU)
end
function fns.fn650(ua)
    State.TowerUseInstant = ua == true
end
function fns.fn651()
    for k in pairs(Kr) do
        J9(k)
    end
    if connection then
        connection:Disconnect()
        connection = nil
    end
    af7_52 = nil
end
function fns.fn714(rG)
    State.AutoWeapons = rG == true
    if State.AutoWeapons then
        JR("Weapons", af7_38, Mb)
    else
        J9("Weapons")
    end
end
function fns.fn721()
    local Tr = {}
    if fns.af7_5.PingEveryone then
        table.insert(Tr, "@everyone")
    end
    local Ts = tostring(fns.af7_5.PingId):match("%d+")
    if fns.af7_5.PingUser and Ts then
        table.insert(Tr, ("<@%s>"):format(Ts))
    end
    if #Tr == 0 then
        return nil
    end
    return table.concat(Tr, " ")
end
function fns.fn729()
    local T3 = fns.af7_5.BuildFields()
    if #T3 == 0 then
        return false
    end
    fns.af7_5.Queued({
        content = fns.af7_5.Mention(),
        embeds = {
            {
                title = "Ouroboros Report",
                description = fns.af7_5.Rule,
                color = 10233776,
                fields = T3,
                footer = { text = fns.af7_5.Footer() }
            }
        }
    })
    return true
end
function fns.fn736(cK, cL)
    local Oy = (tonumber(JW[cK].Price))
    local OD = if Oy then 1 else 0
    local OB = 1727 * OD + 3267 * (1 - OD)
    local OC = 499 * OD + 2171 * (1 - OD)
    if not ((OB * 1320 + OC * 92 + OB * OC) % 16777213 == 3187321) then
        Oy = math.huge
    end
    local Oz = tonumber(JW[cL].Price) or math.huge
    return Oy < Oz
end
function fns.fn785()
    local PY = Ma("FUSION", State.FuseStatus)
    local PZ = State.Fused
    local P4 = if PZ then 1 else 0
    local P2 = 1691 * P4 + 741 * (1 - P4)
    local P3 = 4031 * P4 + 2604 * (1 - P4)
    if not ((P2 * 3110 + P3 * 2357 + P2 * P3) % 16777213 == 4799285) then
        PZ = 0
    end
    local P_ = { "Fused", PZ }
    local P0 = State.FusePairs or 0
    return PY .. "\n" .. Lj({ P_, { "Ready", P0 }, { "Cap", "★" .. tostring(State.FuseMaxStars) } })
end
function fns.fn799()
    local Bases = K7:FindFirstChild("Bases")
    if not Bases then
        return nil
    end
    local QC = tostring(K2.UserId)
    for i, child in ipairs(Bases:GetChildren()) do
        local Owner = child:FindFirstChild("Owner")
        local QD = Owner and Owner:IsA("StringValue") and (Owner.Value == QC or Owner.Value == K2.Name)
        if QD then
            return child
        end
    end
    return nil
end
function fns.fn860(t2)
    State.CloneRepeat = t2 == true
end
function fns.fn883()
    return table.clone(KJ)
end
function fns.fn933(uE)
    State.FuseRarities, State.FuseRarityCount = fns.af7_21(uE)
end
function fns.fn940()
    local OM = Ma("STATUS", State.Status)
    local OO = { "Rolled", State.Rolled or 0 }
    local OQ = { "Collected", State.Collected or 0 }
    local OS = { "Traits", State.Rerolled or 0 }
    local OT = State.Bought or 0
    return OM .. "\n" .. Lj({ OO, OQ, OS, { "Bought", OT } })
end
function fns.fn960()
    local aaD = if not fns.af7_3(Km) then 1 else 0
    if aaD == 1 then
        return false
    end
    local aaz = 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/nini.luau"))()'
    return (pcall(Km, aaz))
end
function fns.fn988()
    local ZO = Mn()
    local ZP = fns.af7_24 - os.clock()
    if ZP > ZO or ZP < 0 then
        fns.af7_24 = os.clock() + ZO
    end
    return fns.af7_24
end
function fns.fn1005()
    return ("%s  |  %s"):format(K2.Name, af7_36)
end
function fns.fn1036(hV)
    if fns.af7_5.RarityCount == 0 then
        return true
    end
    local Tv = type(hV) == "string" and fns.af7_5.Rarities[hV] == true
    return Tv
end
function fns.fn1037()
    local Zq_1
    if not LJ then
        fns.af7_1("Prestige remote unavailable")
        return
    end
    local Zm = tonumber(K2:GetAttribute("Prestige")) or 0
    local Zm_3
    local Zm_1 = tonumber(K2:GetAttribute("Level")) or 0
    local Zp
    local Zm_2 = Ln and fns.af7_3(Ln.RequiredLevelForPrestige)
    if Zm_2 then
        Zm_3, Zq_1 = pcall(Ln.RequiredLevelForPrestige, Zm)
        if Zm_3 then
            Zp = tonumber(Zq_1)
        end
    end
    if not Zp then
        fns.af7_1("Prestige requirement unknown")
        return
    end
    if Zm_1 < Zp then
        fns.af7_1(string.format("Prestige at level %d (%d now)", Zp, Zm_1))
        return
    end
    LJ:FireServer()
    fns.af7_1("Prestiging")
end
function fns.fn1044()
    return table.clone(fns.af7_26)
end
function fns.fn1188(hw)
    local Tl_1
    local Tk_1
    local Tj_1, Tj_2
    local Ti = fns.af7_5.Requester()
    if not Ti then
        State.WebhookFailed = State.WebhookFailed + 1
        return false, "This executor has no HTTP request function"
    elseif not fns.af7_5.ValidUrl(fns.af7_5.Url) then
        State.WebhookFailed = State.WebhookFailed + 1
        return false, "Enter a valid Discord webhook URL"
    else
        Tj_1, Tk_1 = pcall(HttpService.JSONEncode, HttpService, hw)
        if not Tj_1 then
            State.WebhookFailed = State.WebhookFailed + 1
            return false, "Could not encode the message"
        end
        Tj_2, Tl_1 = pcall(Ti, {
            Url = fns.af7_5.Url,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = Tk_1
        })
        if not Tj_2 then
            State.WebhookFailed = State.WebhookFailed + 1
            return false, tostring(Tl_1):sub(1, 60)
        end
        local Ti_1 = type(Tl_1) == "table" and tonumber(Tl_1.StatusCode)
        local Ti_2 = Ti_1 or nil
        if Ti_2 == 200 or Ti_2 == 204 then
            State.WebhookSent = State.WebhookSent + 1
            return true
        end
        State.WebhookFailed = State.WebhookFailed + 1
        local Tj_5 = Ti_2 or "nothing"
        return false, "Discord replied " .. tostring(Tj_5)
    end
end
function fns.fn1212()
    local PL = Ma("EVOLVE", State.EvolveStatus)
    local PN = { "Claimed", State.Evolved or 0 }
    local PO = State.EvolveUnit or "none"
    return PL .. "\n" .. Lj({ PN, { "Target", PO } })
end
function fns.fn1220(rM)
    State.AutoTrait = rM == true
    if State.AutoTrait then
        JR("Trait", JO, Mr)
    else
        J9("Trait")
    end
end
function fns.fn1256(uX)
    State.CollectMutations, State.CollectMutationCount = fns.af7_21(uX)
end
function fns.fn1269(bh)
    if not RemoteEvents then
        return nil
    end
    local Or = RemoteEvents:FindFirstChild(bh)
    local Os = Or
    if Os then
        local Ot = Or:IsA("RemoteEvent") or Or:IsA("RemoteFunction")
        Os = Ot
    end
    if Os then
        return Or
    end
    return nil
end
function fns.fn1283()
    local Character = K2.Character
    local UL = Character and Character:FindFirstChildOfClass("Tool")
    local UK_1 = UL
    if UL then
        UL = JW
    end
    if UL then
        UL = JW[UK_1.Name]
    end
    if UL then
        return UK_1.Name
    end
    return nil
end
function fns.fn1287(sT)
    local aae = type(sT) == "string" and sT
    local aaf = aae or ""
    fns.af7_5.PingId = aaf
end
function fns.fn1289(sV)
    fns.af7_5.PingUser = sV == true
end
function fns.fn1304(tY)
    State.ChallengeTiers, State.ChallengeTierCount = fns.af7_21(tY)
end
function fns.fn1315()
    return table.clone(Ml)
end
function fns.fn1322(um)
    State.AutoFuse = um == true
    if State.AutoFuse then
        JR("Fuse", Me, af7_53)
    else
        J9("Fuse")
        State.FuseStatus = "Idle"
    end
end
function fns.fn1324()
    return table.clone(Ky)
end
function fns.fn1333(hY, hZ, h_)
    if not fns.af7_5.Enabled or not fns.af7_5.Buffer[hY] or fns.af7_5.Events[hY] ~= true then
        return
    end
    local Tx_1 = fns.af7_5.Buffer[hY]
    local Tz = J1[h_] or 0
    table.insert(Tx_1, { line = hZ, rank = Tz })
    while #Tx_1 > J7 do
        table.remove(Tx_1, 1)
    end
end
function fns.fn1337()
    local SN = {}
    for i, v in ipairs(fns.af7_5.Order) do
        table.insert(SN, fns.af7_5.Kinds[v].Title)
    end
    return SN
end
function fns.fn1347()
    local UQ = Ks()
    local UR = UQ and UQ:FindFirstChild("EnemiesHolder")
    local UQ_1 = {}
    if not UR then
        return UQ_1
    end
    for i, child in ipairs(UR:GetChildren()) do
        local Humanoid = child:FindFirstChildOfClass("Humanoid")
        local US_1 = child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart
        local UT = Humanoid
        if UT then
            UT = Humanoid.Health > 0
        end
        if UT and US_1 then
            table.insert(UQ_1, { model = child, root = US_1, humanoid = Humanoid })
        end
    end
    return UQ_1
end
function fns.fn1349(uy)
    State.AutoEventShop = uy == true
    if State.AutoEventShop then
        JR("EventShop", LZ, JM)
    else
        J9("EventShop")
    end
end
function fns.fn1351(dx)
    local OV = (tonumber(dx))
    local O_ = if OV then 1 else 0
    local OY = 475 * O_ + 3920 * (1 - O_)
    local OZ = 1525 * O_ + 2242 * (1 - O_)
    if not ((OY * 836 + OZ * 29 + OY * OZ) % 16777213 == 1165700) then
        OV = 0
    end
    dx = OV
    local OV_1 = 1
    while dx >= 1000 and OV_1 < #Lw do
        dx /= 1000
        OV_1 += 1
    end
    if OV_1 == 1 then
        return tostring(math.floor(dx))
    end
    return string.format("%.2f", dx):gsub("%.?0+$", "") .. Lw[OV_1]
end
function fns.fn1355()
    local QP = Ks()
    local QQ = {}
    if not QP then
        return QQ
    end
    for i, v in ipairs(Lo:GetTagged(Ld)) do
        if v:IsDescendantOf(QP) then
            table.insert(QQ, v)
        end
    end
    return QQ
end
function fns.fn1406(uR)
    State.CollectRarities, State.CollectRarityCount = fns.af7_21(uR)
end
function fns.fn1446()
    if not fns.af7_5.Flush() then
        if not fns.af7_5.Enabled then
            return false, "Turn on Enable Webhook first - nothing is recorded while it is off"
        end
        local aar = false
        for i, v in ipairs(fns.af7_5.Order) do
            if fns.af7_5.Events[v] then
                aar = true
                break
            end
        end
        if not aar then
            return false, "Pick at least one event to report"
        end
        return false, "Nothing recorded yet"
    end
    fns.af7_24 = os.clock() + Mn()
    return true
end
function fns.fn1457()
    return CoreGui
end
function fns.fn1478()
    local QM = Ks()
    local QN = QM and QM:FindFirstChild("RollStation")
    local QM_1 = QN
    if QN then
        QN = QM_1:FindFirstChild("Button")
    end
    local QM_2 = QN
    if not QM_2 then
        return nil
    end
    return QM_2:FindFirstChild("ProximityPrompt", true)
end
function fns.fn1502()
    local Xl = {}
    for i, v in ipairs(Ly()) do
        local instance = v.instance
        local Xn = tonumber(instance:GetAttribute("Stars")) or 0
        local attr = instance:GetAttribute("Locked")
        local Xp = Kb
        local Xq = attr == true
        if Xp then
            Xp = Kb[v.name]
        end
        if Xp then
            Xp = Kb[v.name].Rarity
        end
        local Xn_2 = Xp
        local Xp_1 = Xn < State.FuseMaxStars
        if Xp_1 and State.FuseSkipLocked and Xq then
            Xp_1 = false
        end
        if Xp_1 and State.FuseRarityCount > 0 then
            local Xq_2 = type(Xn_2) == "string" and State.FuseRarities[Xn_2] == true
            Xp_1 = Xq_2
        end
        if Xp_1 then
            local Xn_3 = string.format("%s|%d|%s", v.name, Xn, tostring(instance:GetAttribute("Mutation")))
            local Xp_2 = Xl[Xn_3]
            if not Xp_2 then
                Xp_2 = { name = v.name, stars = Xn, members = {} }
                Xl[Xn_3] = Xp_2
            end
            table.insert(Xp_2.members, instance)
        end
    end
    return Xl
end
function fns.fn1516()
    local TraitUnit = State.TraitUnit
    local R7 = TraitUnit == ""
    local R8 = type(TraitUnit) ~= "string" or R7
    if R8 then
        return nil
    end
    for i, v in ipairs(Ly()) do
        if LY(v) == TraitUnit then
            return v.instance
        end
    end
    return nil
end
function fns.fn1524(tV)
    State.Potions, State.PotionCount = fns.af7_21(tV)
end
function fns.fn1526(t0)
    local aaQ = t0 ~= ""
    local aaR = type(t0) == "string" and aaQ
    if aaR then
        State.CloneUnit = t0
    else
        State.CloneUnit = nil
    end
end
function fns.fn1539(aP)
    local Oo_1
    local On_1
    if typeof(aP) ~= "Instance" then
        return nil
    end
    On_1, Oo_1 = pcall(require, aP)
    local Op = On_1 and type(Oo_1) == "table"
    if Op then
        return Oo_1
    end
    return nil
end
function fns.fn1543(rA)
    State.AutoUpgrades = rA == true
    if State.AutoUpgrades then
        JR("Upgrades", JZ, af7_41)
    else
        J9("Upgrades")
    end
end
function fns.fn1550()
    if not Mc then
        fns.af7_1("Upgrade remote unavailable")
        return
    end
    local YM = af7_63()
    local YN = 0
    for i, v in ipairs(LR) do
        local YO = not fns.af7_10() or not State.AutoUpgrades
        if YO then
            return
        end
        local YO_1 = tonumber(K2:GetAttribute(v)) or 0
        local YO_2 = af7_42(v, YO_1)
        if YO_2 and YO_2 <= YM then
            Mc:FireServer(v)
            task.wait(0.25)
            local YO_3 = tonumber(K2:GetAttribute(v)) or 0
            if YO_3 > YO_1 then
                YN += 1
                YM = af7_63()
            else
                YM = af7_63()
            end
        end
    end
    if YN > 0 then
        fns.af7_1(string.format("Bought %d upgrades", YN))
    else
        fns.af7_1("No affordable upgrades")
    end
end
function fns.fn1559()
    local UB_1
    local UA_1
    local Uz_1
    if not JW then
        return nil
    end
    local Uy = L_()
    UB_1, UA_1, Uz_1 = nil, -1, -1
    for k in pairs(Uy) do
        local Uy_1 = JW[k]
        if type(Uy_1) == "table" then
            local UC = tonumber(Uy_1.Damage) or 0
            local UC_1 = tonumber(Uy_1.Price) or 0
            if UC > UA_1 or UC == UA_1 and UC_1 > Uz_1 then
                UB_1, UA_1, Uz_1 = k, UC, UC_1
            end
        end
    end
    return UB_1
end
function fns.fn1565()
    local Qc = {}
    if not af7_51 then
        table.insert(Qc, "ConfirmedRollRequestEvent")
    end
    if not fns.af7_16 then
        table.insert(Qc, "EquipBestRequestFunction")
    end
    if not Mc then
        table.insert(Qc, "UpgradeRequestEvent")
    end
    if not L1 then
        table.insert(Qc, "BuyWeaponRequestFunction")
    end
    if not fns.af7_12 then
        table.insert(Qc, "EquipWeaponRequestFunction")
    end
    if not LO then
        table.insert(Qc, "RerollTraitRequestFunction")
    end
    if not LJ then
        table.insert(Qc, "PrestigeEvent")
    end
    if not LB then
        table.insert(Qc, "ZonePurchaseRequestEvent")
    end
    if not fns.af7_3(fireproximityprompt) then
        table.insert(Qc, "fireproximityprompt")
    end
    return Qc
end
function fns.fn1568(fH)
    local Rg_7
    if State.CollectRarityCount > 0 then
        local attr = fH:GetAttribute("Rarity")
        local Rh_1 = type(attr) ~= "string" or not State.CollectRarities[attr]
        if Rh_1 then
            return false
        elseif State.CollectUnitCount > 0 then
            local Rg_2 = fH:GetAttribute("UnitName") or fH.Name
            if Rg_7 then
                return false
            end
            local Rg_4 = State.CollectMutationCount > 0 and not State.CollectMutations[Kk(fH)]
            if Rg_4 then
                return false
            end
            return true
        else
            local Rg_5 = State.CollectMutationCount > 0 and not State.CollectMutations[Kk(fH)]
            if Rg_5 then
                return false
            end
            return true
        end
    elseif State.CollectUnitCount > 0 then
        local Rg_6 = fH:GetAttribute("UnitName") or fH.Name
        Rg_7 = type(Rg_6) ~= "string" or not State.CollectUnits[Rg_6]
        if Rg_7 then
            return false
        end
        local Rg_8 = State.CollectMutationCount > 0 and not State.CollectMutations[Kk(fH)]
        if Rg_8 then
            return false
        end
        return true
    else
        local Rg_9 = State.CollectMutationCount > 0 and not State.CollectMutations[Kk(fH)]
        if Rg_9 then
            return false
        end
        return true
    end
end
function fns.fn1595(fR)
    local ProximityPrompt = fR:FindFirstChild("ProximityPrompt", true)
    local Rn = ProximityPrompt and ProximityPrompt:IsA("ProximityPrompt")
    if Rn then
        return ProximityPrompt
    end
    return nil
end
function fns.fn1601(ss)
    fns.af7_5.Enabled = ss == true
    if fns.af7_5.Enabled then
        fns.af7_24 = os.clock() + Mn()
        JR("Webhook", Kq, Ls)
    else
        J9("Webhook")
        for i, v in ipairs(fns.af7_5.Order) do
            table.clear(fns.af7_5.Buffer[v])
        end
    end
end
function fns.fn1603(dC)
    local O2 = tonumber(dC) or 0
    dC = math.max(math.floor(O2), 0)
    if dC >= 3600 then
        return string.format("%dh %dm", dC // 3600, dC % 3600 // 60)
    elseif dC >= 60 then
        return string.format("%dm %ds", dC // 60, dC % 60)
    else
        return dC .. "s"
    end
end
function fns.fn1620()
    local Character = K2.Character
    if not Character then
        return nil, nil
    end
    return Character, Character:FindFirstChild("HumanoidRootPart")
end
function fns.fn1621(sC)
    local Z2 = type(sC) == "string" and sC
    local Z3 = Z2 or ""
    fns.af7_5.Url = Z3
end
function fns.fn1634(d6)
    local Pr_1
    if not JY then
        return nil
    end
    local Pq = not d6
    local Pq_1
    if Pq ~= false then
        Pq = af7_65.data
    end
    if Pq then
        Pq = os.clock() - af7_65.at < 5
    end
    if Pq then
        return af7_65.data
    end
    Pq_1, Pr_1 = pcall(function()
        return JY:InvokeServer()
    end)
    local Ps = Pq_1 and type(Pr_1) == "table"
    if Ps then
        af7_65.at = os.clock()
        af7_65.data = Pr_1
        return Pr_1
    end
    return af7_65.data
end
function fns.fn1649()
    local O4 = {}
    for i, v in ipairs(af7_47) do
        local O5_1 = tonumber(K2:GetAttribute(KL(v))) or 0
        local O5_2 = O5_1 - LK()
        if O5_2 > 0 then
            table.insert(O4, { v:gsub(" Potion", ""), KQ(O5_2) })
        end
    end
    local O6_2 = #O4 > 0 and "Active" or State.PotionStatus
    if #O4 == 0 then
        O4 = { { "Used", State.PotionsUsed or 0 }, { "Active", 0 } }
    end
    return Ma("POTIONS", O6_2) .. "\n" .. Lj(O4)
end
function fns.fn1676(jY)
    if Kr[jY] then
        Kr[jY] = nil
    end
end
function fns.fn1680(ks)
    local Va_1
    local U9_1
    Va_1, U9_1 = nil, math.huge
    for i, v in ipairs(fns.af7_31()) do
        local Magnitude = (v.root.Position - ks).Magnitude
        if Magnitude < U9_1 then
            Va_1, U9_1 = v, Magnitude
        end
    end
    return Va_1
end
function fns.fn1721()
    local ZM = tonumber(fns.af7_5.Interval) or 60
    return math.max(ZM, 5)
end
function fns.fn1725()
    if fns.af7_5.Draining then
        return
    end
    fns.af7_5.Draining = true
    task.spawn(function()
        while true do
            local Tn = fns.af7_10() and #fns.af7_5.Queue > 0
            if Tn then
                local Tn_1 = table.remove(fns.af7_5.Queue, 1)
                fns.af7_5.Post(Tn_1)
                task.wait(1.2)
                continue
            end
            break
        end
        fns.af7_5.Draining = false
    end)
end
function fns.onOnClientEvent(iR, iS)
    local Ud = not fns.af7_10()
    local Ui = if Ud then 1 else 0
    local Ug = 3092 * Ui + 654 * (1 - Ui)
    local Uh = 323 * Ui + 1173 * (1 - Ui)
    if not ((Ug * 2715 + Uh * 3947 + Ug * Uh) % 16777213 == 10668377) then
        Ud = not fns.af7_5.Enabled
    end
    if not Ud then
        Ud = type(iR) ~= "string"
    end
    if Ud then
        return
    end
    local Ud_1 = tonumber(iS) or 1
    local Ud_2 = string.format("**%s**", iR)
    if Ud_1 > 1 then
        Ud_2 ..= string.format(" x%d", Ud_1)
    end
    fns.af7_5.Record("TowerRewards", Ud_2)
end
function fns.fn1761(ro)
    State.AutoCollect = ro == true
    if State.AutoCollect then
        JR("Collect", Kf, LE)
    else
        J9("Collect")
    end
end
function fns.fn1801(hh)
    for i, v in ipairs(fns.af7_5.Order) do
        if fns.af7_5.Kinds[v].Title == hh then
            return v
        end
    end
    return nil
end
function fns.fn1804(aE)
    local Ol = typeof(cloneref) == "function" and typeof(aE) == "Instance"
    if Ol then
        return cloneref(aE)
    end
    return aE
end
function fns.fn1831(nf)
    local WT = KA and KA[nf]
    if type(WT) ~= "table" then
        return nil, "Unit cannot evolve"
    end
    local WT_1 = Kn(nf)
    local WV = tonumber(WT.RequiredCopies) or 0
    local WV_2
    local WW_1
    if #WT_1 < WV then
        return nil, string.format("%s %d/%d copies", nf, #WT_1, WV)
    end
    local WV_1 = type(WT.RequiredItems) == "table" and KY
    if WV_1 then
        WV_2, WW_1 = pcall(function()
            return KY:InvokeServer()
        end)
        local WX = WV_2 and type(WW_1) == "table"
        if WX then
            for k, v in pairs(WT.RequiredItems) do
                local WU_1 = tonumber(WW_1[k]) or 0
                local WU_2 = tonumber(v) or 0
                if WU_1 < WU_2 then
                    return nil, string.format("%s %d/%d", tostring(k), WU_1, WU_2)
                end
            end
        end
    end
    return WT_1[1], nil
end
function fns.fn1872()
    if not LB then
        fns.af7_1("Zone remote unavailable")
        return
    end
    if type(Mj) ~= "table" then
        fns.af7_1("Zone data unavailable")
        return
    end
    local Zs = KV()
    local Zt = Mj[Zs + 1]
    if type(Zt) ~= "table" then
        fns.af7_1("All zones unlocked")
        return
    end
    local Zs_1 = tonumber(Zt.Price) or 0
    if af7_63() < Zs_1 then
        fns.af7_1("Saving for " .. tostring(Zt.Name))
        return
    end
    LB:FireServer()
    fns.af7_1("Buying " .. tostring(Zt.Name))
end
function fns.fn1891()
    if not fns.af7_3(fireproximityprompt) then
        fns.af7_1("fireproximityprompt unavailable")
        return
    end
    local Yy = K8()
    if #Yy == 0 then
        fns.af7_1("Nothing to collect")
        return
    end
    for i, v in ipairs(Yy) do
        local Yy_1 = not fns.af7_10() or not State.AutoCollect
        if Yy_1 then
            State.MovementBusy = false
            return
        end
        if LV(v) then
            local Yy_2 = v:GetAttribute("UnitName") or v.Name
            v:GetAttribute("Rarity")
            Kk(v)
            local Yy_3 = KR(v)
            local YA = Yy_3 and fns.af7_32(Yy_3) and v.Parent
            if YA then
                State.MovementBusy = true
                local YA_1 = pcall(fireproximityprompt, Yy_3)
                if YA_1 then
                    State.Collected = State.Collected + 1
                    fns.af7_1("Collected " .. tostring(Yy_2))
                    task.wait(0.2)
                end
                State.MovementBusy = false
            end
        end
    end
end
function fns.fn1897(uc)
    State.AutoEvolve = uc == true
    if State.AutoEvolve then
        JR("Evolve", Lq, fns.af7_8)
    else
        J9("Evolve")
        State.EvolveStatus = "Idle"
    end
end
function fns.fn1936(eV)
    local Qk = 0
    local Ql = {}
    if type(eV) == "table" then
        for k, v in pairs(eV) do
            local Qm = v == true and type(k) == "string"
            if Qm then
                Ql[k] = true
                Qk += 1
            elseif type(v) == "string" then
                Ql[v] = true
                Qk += 1
            end
        end
    end
    return Ql, Qk
end
function fns.fn1941(cg, ch)
    local Ov = tonumber(K9[cg].Price) or math.huge
    local Ow = tonumber(K9[ch].Price) or math.huge
    return Ov < Ow
end
function fns.fn1957()
    local PC_1
    local PB_1
    local PA_1
    PC_1, PB_1, PA_1 = 0, 0, nil
    local PD = LX(false)
    if type(PD) == "table" then
        local PE_1 = tonumber(PD.Tickets) or 0
        PC_1 = PE_1
        local PE_2 = tonumber(PD.DailyCap) or 0
        PB_1 = PE_2
        PA_1 = tonumber(PD.SecondsUntilDailyReset)
    end
    local PD_1 = (tonumber(K2:GetAttribute("InstantClearTicketCount")))
    local PK = if PD_1 then 1 else 0
    local PI = 3351 * PK + 2455 * (1 - PK)
    local PJ = 3081 * PK + 3132 * (1 - PK)
    if not ((PI * 2184 + PJ * 3487 + PI * PJ) % 16777213 == 11609249) then
        PD_1 = 0
    end
    local PE_3 = PD_1
    local PD_2 = State.TowerStatus
    if PD_2 == "Idle" and PC_1 == 0 and PA_1 and PA_1 > 0 then
        PD_2 = "Resets in " .. KQ(PA_1)
    end
    local PA_2 = Ma("TOWER", PD_2)
    local PF_1 = { "Tickets", string.format("%d/%d", PC_1, PB_1) }
    local PG = State.TowerRuns or 0
    return PA_2 .. "\n" .. Lj({ PF_1, { "Runs", PG }, { "Instant", PE_3 } })
end
function fns.fn1961()
    local Rw = {}
    local Rx = { K2:FindFirstChild("Backpack"), K2.Character }
    for i, v in ipairs(Rx) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local Rx_1 = child:IsA("Tool") and Kb and Kb[child.Name]
                if Rx_1 then
                    table.insert(Rw, { instance = child, name = child.Name, id = child:GetAttribute("UnitId") })
                end
            end
        end
    end
    local Rx_2 = Ks()
    local Ry = Rx_2 and Rx_2:FindFirstChild("PlacementSlots")
    if Ry then
        for i, v in ipairs(Lo:GetTagged(K3)) do
            if v:IsDescendantOf(Ry) then
                local attr2 = v:GetAttribute("UnitName")
                local attr = v:GetAttribute("UnitId")
                local RA = type(attr2) == "string" and type(attr) == "string"
                if RA and attr ~= "" then
                    table.insert(Rw, { instance = v, name = attr2, id = attr })
                end
            end
        end
    end
    return Rw
end
function fns.fn1982(ri)
    State.AutoRoll = ri == true
    if State.AutoRoll then
        JR("Roll", Kp, J3)
    else
        J9("Roll")
    end
end
function fns.fn1983(uM)
    State.FuseSkipLocked = uM == true
end
function fns.fn1994(tr)
    State.AutoExecute = tr == true
    if not State.AutoExecute then
        return true
    elseif not Kd() then
        return false, "queue_on_teleport is not supported by your executor"
    else
        return true
    end
end
function fns.fn1996(gJ, gK)
    local Sg = JK and JK[gJ]
    if type(Sg) ~= "table" then
        return nil
    end
    local Sg_1 = type(Sg.MaxLevel) == "number" and Sg.MaxLevel <= gK
    if Sg_1 then
        return nil
    elseif type(Sg.Prices) == "table" then
        return tonumber(Sg.Prices[gK + 1])
    else
        local Sg_2 = tonumber(Sg.BasePrice)
        local Si = tonumber(Sg.GrowthRate)
        if not Sg_2 or not Si then
            return nil
        end
        local floor = math.floor
        local Sk_1 = tonumber(Sg.ExponentOffset) or 0
        return floor(Sg_2 * Si ^ (gK - Sk_1))
    end
end
function fns.fn1999()
    return table.clone(Mo)
end
function fns.fn2004(us)
    State.AutoQuests = us == true
    if State.AutoQuests then
        JR("Quests", af7_45, af7_55)
    else
        J9("Quests")
    end
end
function fns.fn2009()
    if not af7_51 then
        fns.af7_1("Roll remote unavailable")
        return
    end
    if State.AutoCollect then
        for i, v in ipairs(K8()) do
            if LV(v) then
                fns.af7_1("Waiting for collect")
                return
            end
        end
    end
    local Ym = af7_35()
    if Ym and not Ym.Enabled then
        fns.af7_1("Roll gated by warning prompt")
    end
    af7_51:FireServer()
    State.Rolled = State.Rolled + 1
    fns.af7_1("Rolling")
end
function fns.fn2011(cS)
    State.Status = tostring(cS)
end
function fns.onOnTeleport(tu)
    if tu == Enum.TeleportState.Started and State.AutoExecute then
        Kd()
    end
end
function fns.fn2051(uK)
    State.FuseUseEssence = uK == true
end
function fns.fn2053(aH)
    return type(aH) == "function"
end
function fns.fn2060(uk)
    State.EvolveRepeat = uk == true
end
function fns.fn2069(cY)
    return (tostring(cY):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
end
function fns.fn2071(c_, c0)
    return string.format('<font color="%s">◆ %s</font> <font color="%s">─</font> <font color="%s"><b>%s</b></font>', JV, Mq(c_), JJ, JQ, Mq(c0))
end
function fns.fn2080(sX)
    fns.af7_5.PingEveryone = sX == true
end
function fns.fn2081()
    local YK_1
    local YJ_1
    local YI_1
    if not fns.af7_16 then
        fns.af7_1("Equip remote unavailable")
        return
    end
    YI_1, YJ_1, YK_1 = pcall(function()
        return fns.af7_16:InvokeServer()
    end)
    if not YI_1 then
        fns.af7_1("Equip best failed")
        return
    end
    if YJ_1 == false then
        fns.af7_1("Equip best: " .. tostring(YK_1))
        return
    end
    fns.af7_1("Equipped best units")
end
function fns.fn2086(bS, bT)
    return bS.rank < bT.rank
end
function fns.fn2100()
    local P5 = Ma("EVENT", State.EventStatus)
    local P6 = tonumber(K2:GetAttribute(LQ)) or 0
    local P7 = { "Coins", P6 }
    local P9 = { "Claimed", State.QuestsClaimed or 0 }
    local Qa = State.ShopBought or 0
    return P5 .. "\n" .. Lj({ P7, P9, { "Bought", Qa } })
end
function fns.fn2103(fx)
    if typeof(fx) ~= "Instance" then
        return af7_60
    end
    local attr = fx:GetAttribute("Mutation")
    local QZ = attr ~= ""
    local Q_ = type(attr) == "string" and QZ
    if Q_ then
        return attr
    end
    for i, descendant in ipairs(fx:GetDescendants()) do
        local QY_1 = descendant:IsA("BillboardGui") and descendant.Name == "Mutation"
        if QY_1 then
            for i, descendant in ipairs(descendant:GetDescendants()) do
                if descendant:IsA("TextLabel") then
                    local QY_2 = tostring(descendant.Text):match("^%s*(.-)%s*$")
                    if QY_2 ~= "" then
                        return QY_2
                    end
                end
            end
        end
    end
    return af7_60
end
function fns.fn2109()
    local attr = K2:GetAttribute("Zone")
    local SF = type(attr) ~= "string" or type(Mj) ~= "table"
    if SF then
        return 1
    end
    for i, v in ipairs(Mj) do
        local SF_1 = type(v) == "table" and v.Name == attr
        if SF_1 then
            return i
        end
    end
    return 1
end
function fns.fn2115(ru)
    State.AutoEquipBest = ru == true
    if State.AutoEquipBest then
        JR("EquipBest", af7_48, L8)
    else
        J9("EquipBest")
    end
end
function fns.fn2130()
    if not fns.af7_5.Enabled then
        return
    end
    L7()
    local ZV = if os.clock() < fns.af7_24 then 1 else 0
    if ZV == 1 then
        return
    end
    fns.af7_24 = os.clock() + Mn()
    fns.af7_5.Flush()
end
function fns.onChildAdded(jk)
    if jk:IsA("Backpack") then
        if LN then
            LN:Disconnect()
        end
        LN = Lc(jk)
    end
end
function fns.fn2161(rY)
    State.AutoZones = rY == true
    if State.AutoZones then
        JR("Zones", Mm, LC)
    else
        J9("Zones")
    end
end
connection2 = nil
af7_44 = nil
fns.af7_24 = nil
fns.af7_5 = nil
JJ = nil
JK = nil
JL = nil
JM = nil
JN = nil
JO = nil
JP = nil
JQ = nil
JR = nil
af7_56 = nil
af7_38 = nil
JV = nil
JW = nil
JX = nil
JY = nil
JZ = nil
J0 = nil
J1 = nil
J2 = nil
J3 = nil
af7_48 = nil
af7_33 = nil
fns.af7_8 = nil
J7 = nil
J9 = nil
Ka = nil
Kb = nil
Kc = nil
Kd = nil
Kf = nil
af7_60 = nil
af7_42 = nil
fns.af7_20 = nil
fns.af7_1 = nil
Kk = nil
Km = nil
Kn = nil
Kp = nil
Kq = nil
local Players, J_, J8, Ke, Kl, Ko
Kr = nil
Ks = nil
af7_52 = nil
fns.af7_32 = nil
Ky = nil
State = nil
KA = nil
connection = nil
af7_63 = nil
fns.af7_23 = nil
KJ = nil
KL = nil
KM = nil
KQ = nil
KR = nil
af7_36 = nil
fns.af7_14 = nil
KV = nil
RemoteEvents = nil
KY = nil
K2 = nil
K3 = nil
af7_47 = nil
fns.af7_28 = nil
K7 = nil
K8 = nil
K9 = nil
Lc = nil
Ld = nil
local Kv, Kw, Kx, KC, KD, KG, KI, KK, KN, KO, KP, KS, KW, KZ, K_, K0, K1, K6, La, Workspace
af7_58 = nil
af7_41 = nil
fns.connection4 = nil
Lj = nil
onRenderStepped = nil
Ln = nil
Lo = nil
connection3 = nil
Lq = nil
Lr = nil
Ls = nil
fns.af7_31 = nil
fns.af7_10 = nil
Lw = nil
Ly = nil
LA = nil
LB = nil
LC = nil
CoreGui = nil
LE = nil
connection5 = nil
af7_43 = nil
fns.af7_21 = nil
fns.af7_3 = nil
LJ = nil
LK = nil
LM = nil
LN = nil
LO = nil
HttpService = nil
LQ = nil
LR = nil
af7_53 = nil
af7_35 = nil
fns.af7_12 = nil
LV = nil
LX = nil
LY = nil
LZ = nil
L_ = nil
local Le, Lighting, Lk, Lm, Lx, TeleportService, GuiService, VirtualUser, L0
L1 = nil
af7_65 = nil
af7_45 = nil
fns.af7_26 = nil
L7 = nil
L8 = nil
L9 = nil
Ma = nil
Mb = nil
Mc = nil
Md = nil
Me = nil
af7_55 = nil
af7_40 = nil
fns.af7_16 = nil
Mj = nil
Mk = nil
Ml = nil
Mm = nil
Mn = nil
Mo = nil
Mq = nil
Mr = nil
Ms = nil
af7_51 = nil
local UserInputService
UserInputService = nil
local L6
local Mf
local Mp
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, Md, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lo, Lighting, Workspace, K2, af7_36, KO, KI, KD, Kw, Kp, Kf, af7_48, JZ, af7_38, JO, af7_44, Mm, Me, af7_45, LZ, LQ, LM, af7_43, LA, Lq, af7_58, Ld, K3, K_, fns.af7_14, KP, KK, Kx, Kq, fns.af7_20, J7, J_, JP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local af7_130 = game:GetService("ReplicatedStorage")
Md = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lo = game:GetService("CollectionService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
K2 = Players.LocalPlayer
local af7_7 = "OuroborosDefeatAnimeRNG"
af7_36 = "Defeat Anime RNG"
KO = "v0.16"
KI = "https://discord.gg/synapsex"
KD = "https://rscripts.net/@Ouroboros"
Kw = "https://ouroboros-hub-rbx.web.app/"
Kp = 0.7
Kf = 0.5
af7_48 = 5
JZ = 3
af7_38 = 5
JO = 0.45
af7_44 = 10
Mm = 5
Me = 2
af7_45 = 15
LZ = 10
if (false or not Players or false) and (5 or (Players or Players)) or (false or Players and not Players or (Players and not Players or (not Players or not Players))) or not ((false or not Players or false) and (5 or (Players or Players)) or (false or Players and not Players or (Players and not Players or (not Players or not Players)))) then
    LQ = "CSMEventCoins"
else
    Md = "CSMEventCoins"
end
LM = 10
af7_43 = 20
LA = 3
Lq = 3
af7_58 = 20
Ld = "FloatingRollDisplay"
K3 = "PlacedUnitDisplay"
K_ = 0.35
fns.af7_14 = 1
KP = 6
KK = 0.5
Kx = 120
Kq = 0.5
fns.af7_20 = 20
J7 = 300
J_ = 15
JP = fns.fn1457
if getgenv then
    getgenv().gethui = JP
end
L9, K7, RemoteEvents, J8, fns.af7_3, fns.af7_10 = nil, nil, nil, nil, nil, nil
pcall(fns.fn4)
function fns.af7_106(ad)
    local Oa
    local Ob
    local N9
    N9 = nil
    Oa = nil
    Ob = nil
    local Oc = ad ~= ""
    local Od = type(ad) == "string" and Oc
    assert(Od, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Oa = getgenv()
    assert(type(Oa) == "table", "getgenv did not return a table")
    local Oc_1 = Oa[ad]
    if Oc_1 ~= nil then
        local Od_1 = type(Oc_1) == "table" and type(Oc_1.Unload) == "function"
        assert(Od_1, "Namespace is occupied")
        Oc_1.Unload()
        assert(Oa[ad] == nil, "Previous instance did not release its namespace")
    end
    Ob = {}
    N9 = { State = {}, Unloaded = false }
    N9.Track = function(aj)
        assert(type(aj) == "function", "Cleanup must be callable")
        if N9.Unloaded then
            aj()
        else
            table.insert(Ob, aj)
        end
        return aj
    end
    N9.Unload = function()
        local N2_1
        local N1_1
        if N9.Unloaded then
            return
        end
        N9.Unloaded = true
        local N_ = {}
        local N6 = #Ob
        local N5 = -1
        while false and N6 <= 1 or true and N6 >= 1 do
            local N7 = N6
            local N0_1 = table.remove(Ob, N7)
            N1_1, N2_1 = pcall(N0_1)
            if not N1_1 then
                table.insert(N_, tostring(N2_1))
            end
            N6 += N5
        end
        table.clear(N9.State)
        if #N_ > 0 then
            error("Cleanup incomplete: " .. table.concat(N_, "; "), 0)
        end
        if Oa[ad] == N9 then
            Oa[ad] = nil
        end
    end
    Oa[ad] = N9
    return N9
end
J8 = function(aw, ax)
    local Oj = type(aw) == "table" and type(aw.Track) == "function"
    assert(Oj, "FeatureAPI required")
    local Oj_1 = type(ax) == "table" and type(ax.OnUnload) == "function"
    assert(Oj_1, "UI library required")
    assert(type(ax.Unload) == "function", "UI unload required")
    aw.Track(function()
        if not ax.Unloaded then
            ax:Unload()
        end
    end)
    ax:OnUnload(function()
        aw.Unload()
    end)
end
L9 = fns.af7_106(af7_7)
local af7_114 = fns.fn1804
fns.af7_3 = fns.fn2053
fns.af7_10 = fns.fn60
local af7_27 = af7_114(af7_130)
K7 = af7_114(Workspace)
local af7_98 = af7_27:WaitForChild("Databases", 20)
RemoteEvents = af7_27:WaitForChild("RemoteEvents", 20)
af7_27 = af7_98 and af7_98:FindFirstChild("UnitDatabase")
Kb = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("WeaponsDatabase")
JW = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("UpgradeConfig")
JK = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("ZoneDatabase")
Mj = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("TraitDatabase")
af7_7 = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("MutationDatabase")
af7_130 = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("PityConfig")
local af7_122 = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("XPConfig")
Ln = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("EventShopDatabase")
K9 = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("ItemDatabase")
af7_114 = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("ChallengeDatabase")
KM = fns.fn1539(af7_27)
af7_27 = af7_98 and af7_98:FindFirstChild("EvolutionDatabase")
KA, af7_51, fns.af7_16, Mc, L1, fns.af7_12, LO, LJ, LB, Lx, Lm, Le, La, K1, KY, KS, KN, KG, KC, Kv, Ko, Ke, J2, JY, fns.af7_106, JN, Ml, af7_78 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
KA = fns.fn1539(af7_27)
local af7_71 = fns.fn1269
af7_51 = af7_71("ConfirmedRollRequestEvent")
fns.af7_16 = af7_71("EquipBestRequestFunction")
Mc = af7_71("UpgradeRequestEvent")
L1 = af7_71("BuyWeaponRequestFunction")
fns.af7_12 = af7_71("EquipWeaponRequestFunction")
LO = af7_71("RerollTraitRequestFunction")
LJ = af7_71("PrestigeEvent")
LB = af7_71("ZonePurchaseRequestEvent")
Lx = af7_71("FuseRequestFunction")
Lm = af7_71("GetEventQuestSnapshotFunction")
Le = af7_71("ClaimEventQuestRequestFunction")
La = af7_71("PurchaseEventShopItemRequestFunction")
K1 = af7_71("UsePotionRequestFunction")
KY = af7_71("GetItemInventoryFunction")
KS = af7_71("ChallengeStartRequestFunction")
KN = af7_71("CloneRequestFunction")
if (not Ke and not af7_78 or fns.af7_106 and LJ) and ((not af7_78 or not KC) and (not LJ or not KC)) and not ((not Ke and not af7_78 or fns.af7_106 and LJ) and ((not af7_78 or not KC) and (not LJ or not KC))) then
    Kv = KG("ClaimCloneRequestFunction")
    af7_71 = KG("GetPendingCloneFunction")
    KC = KG("EvolveRequestFunction")
else
    KG = af7_71("ClaimCloneRequestFunction")
    KC = af7_71("GetPendingCloneFunction")
    Kv = af7_71("EvolveRequestFunction")
end
Ko = af7_71("ClaimEvolveRequestFunction")
Ke = af7_71("GetPendingEvolutionFunction")
J2 = af7_71("InfiniteTowerEnterRequestFunction")
JY = af7_71("GetTicketStatusFunction")
if (not KY or not LO or not fns.af7_106 and not LO) and ((KY or KY) and (KY or not fns.af7_106)) and not ((not KY or not LO or not fns.af7_106 and not LO) and ((KY or KY) and (KY or not fns.af7_106))) then
    JN = fns.af7_106("GetTowerBestWaveFunction")
    af7_71 = fns.af7_106("UseInstantClearTicketRequestFunction")
else
    af7_71("GetTowerBestWaveFunction")
    JN = af7_71("UseInstantClearTicketRequestFunction")
end
local af7_59 = af7_71("ItemDropEvent")
Ml = {}
af7_78 = af7_122
if af7_78 then
    af7_27 = 1
    repeat
        fns.af7_106 = {
            "oaviezjfrz",
            "mmiokipw",
            "jjgzwtg",
            "dsh",
            "zunc",
            "fvummyqm",
            "rzwnwwfl",
            "epahkhsyemlq",
            "eciw",
            "csy",
            "fyklysphln",
            "afxonmoibio"
        }
        if fns.af7_106[(af7_27 * 49 + 84) % 12 + 1] < fns.af7_106[(af7_27 * 49 + 84) % 12 + 1] then
            af7_122 = type(af7_78.Rank) == "table"
        else
            af7_78 = type(af7_122.Rank) == "table"
        end
        af7_27 = (af7_27 + 6) % 8
    until (af7_27 * 7 + 2) % 8 == 3
end
if af7_78 then
    af7_27 = {}
    for k, v in pairs(af7_122.Rank) do
        af7_122 = type(k) == "string" and type(v) == "number"
        if af7_122 then
            table.insert(af7_27, { name = k, rank = v })
        end
    end
    af7_122 = 0
    repeat
        fns.af7_106 = { "aygtfyvbw", "tefq", "bsp", "woxsyzsk", "ymtwjufnid", "hzzf", "kyochlxquih", "rxwddfj", "bpwz" }
        local ak7 = af7_122
        af7_98 = fns.af7_106[ak7 % 9 + 1]
        if af7_98:len() >= af7_98:reverse():rep(ak7 % 3 + 2):len() then
            table.sort(af7_27, fns.fn2086)
        else
            table.sort(af7_27, fns.fn2086)
        end
        af7_122 = (af7_122 + 0) % 8
    until (af7_122 * 3 + 1) % 8 == 1
    for i, v in ipairs(af7_27) do
        table.insert(Ml, v.name)
    end
end
if #Ml == 0 then
    af7_27 = 3
    repeat
        if af7_27 * 91164915 + 12 + 2 <= af7_27 * 91164915 + 12 + 2 + 3 then
            Ml = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Divine", "Cosmic" }
        else
            Ml = { "Uncommon", "Mythic", "Secret", "Rare", "Divine", "Epic", "Cosmic", "Legendary", "Common" }
        end
        af7_27 = (af7_27 + 0) % 4
    until (af7_27 * 3 + 3) % 4 == 0
end
for i, v in ipairs({ "Limited", "Exclusive" }) do
    af7_27 = false
    for i, v2 in ipairs(Ml) do
        if v2 == v then
            af7_27 = true
            break
        end
    end
    if not af7_27 then
        table.insert(Ml, v)
    end
end
KJ = {}
if Kb then
    for k, v in pairs(Kb) do
        af7_27 = type(k) == "string" and type(v) == "table"
        if af7_27 then
            table.insert(KJ, k)
        end
    end
    table.sort(KJ)
end
af7_60, af7_33 = nil, nil
af7_27 = 4
repeat
    if af7_27 * 83329497 + 8 + 6 <= af7_27 * 83329497 + 8 + 6 + 6 then
        af7_60 = "No Mutation"
        af7_33 = { af7_60 }
    else
        af7_33 = "No Mutation"
        af7_60 = { af7_33 }
    end
    af7_27 = (af7_27 + 2) % 8
until (af7_27 * 7 + 3) % 8 == 5
if af7_130 then
    af7_27 = {}
    for k, v in pairs(af7_130) do
        af7_130 = type(k) == "string" and type(v) == "table"
        if af7_130 then
            table.insert(af7_27, k)
        end
    end
    table.sort(af7_27)
    for i, v in ipairs(af7_27) do
        table.insert(af7_33, v)
    end
end
fns.af7_26 = {}
if K9 then
    for k, v in pairs(K9) do
        af7_27 = type(k) == "string" and type(v) == "table"
        if af7_27 then
            table.insert(fns.af7_26, k)
        end
    end
    af7_27 = 0
    repeat
        af7_130 = {
            "dwdsypgjqbj",
            "qaqhotwek",
            "bvjjy",
            "afdppbf",
            "extl",
            "npadhgz",
            "ojkwreff",
            "pep",
            "tukfbvaxi",
            "jwxthstovi",
            "dsjyezepdmq",
            "ssljwpn"
        }
        local aiv = af7_27
        af7_122 = af7_130[aiv % 12 + 1]
        if af7_122:len() <= af7_122:reverse():rep(aiv % 3 + 2):len() then
            table.sort(fns.af7_26, fns.fn1941)
        else
            table.sort(fns.af7_26, fns.fn1941)
        end
        af7_27 = (af7_27 + 6) % 8
    until (af7_27 * 5 + 5) % 8 == 3
end
af7_47 = {}
if af7_114 then
    for k, v in pairs(af7_114) do
        af7_27 = type(k) == "string" and type(v) == "table" and v.Usable
        if af7_27 then
            table.insert(af7_47, k)
        end
    end
    table.sort(af7_47)
end
KL = function(cp)
    return tostring(cp):gsub("%s", "") .. "EndsAt"
end
Ky = {}
if KA then
    for k, v in pairs(KA) do
        af7_27 = type(k) == "string" and type(v) == "table" and v.EvolvesInto
        if af7_27 then
            table.insert(Ky, k)
        end
    end
    table.sort(Ky)
end
af7_27 = KM
J0 = {}
if af7_27 then
    af7_130 = 0
    repeat
        if (af7_130 and af7_130 or (not af7_130 or not af7_130)) and (not af7_130 or af7_130 or (not af7_130 or af7_130)) and ((af7_130 or af7_130) and (af7_130 or not af7_130) and (not af7_130 or af7_130 or not af7_130 and not af7_130)) and (af7_130 and af7_130 and (af7_130 or af7_130) and (af7_130 and af7_130 or (not af7_130 or af7_130)) and (not af7_130 or not af7_130 or (not af7_130 or af7_130) or (af7_130 or not af7_130) and (af7_130 or af7_130))) and not ((af7_130 and af7_130 or (not af7_130 or not af7_130)) and (not af7_130 or af7_130 or (not af7_130 or af7_130)) and ((af7_130 or af7_130) and (af7_130 or not af7_130) and (not af7_130 or af7_130 or not af7_130 and not af7_130)) and (af7_130 and af7_130 and (af7_130 or af7_130) and (af7_130 and af7_130 or (not af7_130 or af7_130)) and (not af7_130 or not af7_130 or (not af7_130 or af7_130) or (af7_130 or not af7_130) and (af7_130 or af7_130)))) then
            KM = type(af7_27.TierOrder) == "table"
        else
            af7_27 = type(KM.TierOrder) == "table"
        end
        af7_130 = (af7_130 + 1) % 4
    until (af7_130 * 3 + 3) % 4 == 2
end
if af7_27 then
    for i, v in ipairs(KM.TierOrder) do
        if type(v) == "string" then
            table.insert(J0, v)
        end
    end
end
if #J0 == 0 then
    af7_27 = 3
    repeat
        af7_130 = { "drmnqflzt", "fxfkgkzkyh", "smvietwe", "wwgpfsuus", "idr", "ligzaf", "xrr", "dbmpq" }
        local akh = af7_27
        af7_122 = af7_130[akh % 8 + 1]
        if af7_122:len() <= af7_122:gsub("(.)", "%1%1", akh % 3 % 2 + 1):len() then
            J0 = { "Regular", "Daily", "Weekly" }
        else
            J0 = { "Weekly", "Regular", "Daily" }
        end
        af7_27 = (af7_27 + 0) % 4
    until (af7_27 * 1 + 3) % 4 == 2
end
Mo = {}
if af7_7 then
    for k, v in pairs(af7_7) do
        af7_27 = type(k) == "string" and type(v) == "table" and v.Rarity ~= nil
        if af7_27 then
            table.insert(Mo, k)
        end
    end
    table.sort(Mo)
end
LR = {}
if JK then
    for k, v in pairs(JK) do
        af7_27 = type(k) == "string" and type(v) == "table"
        if af7_27 then
            table.insert(LR, k)
        end
    end
    table.sort(LR)
end
local Lt = {}
if JW then
    for k, v in pairs(JW) do
        af7_27 = type(k) == "string" and type(v) == "table" and not v.Unobtainable
        if af7_27 then
            table.insert(Lt, k)
        end
    end
    af7_27 = 1
    repeat
        if (af7_27 * 3 + 6) * 9 % 4 == ((af7_27 * 3 + 6) * 9 + 8) % 4 then
            table.sort(Lt, fns.fn736)
        else
            table.sort(Lt, fns.fn736)
        end
        af7_27 = (af7_27 + 0) % 4
    until (af7_27 * 1 + 3) % 4 == 0
end
State, Kr, JV, JQ, JJ, JX, af7_56, JL, Ms, fns.af7_1, Mq, Ma, Lj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
af7_7 = 14
repeat
    af7_27 = (af7_7 * 1 + 1) % 3 + 1
    if af7_27 <= 2 then
        if af7_27 <= 1 then
            af7_27 = { "lia", "mmgyccuae", "ayqxi", "tsngeuhc", "rivq", "xqg", "hpjvlotyje" }
            local aiu = af7_7
            af7_130 = af7_27[aiu % 7 + 1]
            if af7_130:len() <= af7_130:reverse():rep(aiu % 3 + 2):len() then
                State = L9.State
                State.AutoRoll = false
                State.AutoCollect = false
                State.AutoEquipBest = false
                State.AutoUpgrades = false
                State.AutoWeapons = false
                State.AutoTrait = false
                State.AutoPrestige = false
                State.AutoZones = false
                State.AutoFarm = false
                State.MovementBusy = false
                State.AutoExecute = false
                State.AutoFuse = false
                State.AutoQuests = false
                State.AutoEventShop = false
                State.FuseRarities = {}
                State.FuseRarityCount = 0
                State.FuseMaxStars = 5
                State.FuseUseEssence = false
                State.FuseSkipLocked = true
                State.ShopItems = {}
                State.ShopItemCount = 0
                State.Fused = 0
                State.QuestsClaimed = 0
                State.ShopBought = 0
                State.FuseStatus = "Idle"
                State.EventStatus = "Idle"
                State.FusePairs = 0
                State.AutoPotions = false
                State.AutoChallenges = false
                State.AutoClone = false
                State.Potions = {}
                State.PotionCount = 0
                State.ChallengeTiers = {}
                State.ChallengeTierCount = 0
                State.CloneUnit = nil
                State.CloneRepeat = true
                State.AutoTower = false
                State.TowerUseInstant = false
                State.TowerRuns = 0
                State.TowerStatus = "Idle"
                State.AutoEvolve = false
                State.EvolveUnit = nil
                State.EvolveRepeat = true
                State.Evolved = 0
                State.EvolveStatus = "Idle"
                State.PotionsUsed = 0
                State.ChallengesStarted = 0
                State.Cloned = 0
                State.PotionStatus = "Idle"
                State.ChallengeStatus = "Idle"
                State.CloneStatus = "Idle"
                State.WebhookSent = 0
                State.WebhookFailed = 0
                State.CollectRarities = {}
                State.CollectRarityCount = 0
                State.CollectUnits = {}
                State.CollectUnitCount = 0
                State.CollectMutations = {}
                State.CollectMutationCount = 0
                State.TraitStops = {}
                State.TraitStopCount = 0
                State.TraitUnit = nil
                State.Status = "Idle"
                State.Rolled = 0
                State.Collected = 0
                State.Rerolled = 0
                State.Bought = 0
                Kr = {}
                fns.af7_1 = fns.fn2011
                JV = "#FFB3D9"
                JQ = "#FF5FA8"
            else
                L9 = State.State
                L9.AutoRoll = false
                L9.AutoCollect = false
                L9.AutoEquipBest = false
                L9.AutoUpgrades = false
                L9.AutoWeapons = false
                L9.AutoTrait = false
                L9.AutoPrestige = false
                L9.AutoZones = false
                L9.AutoFarm = false
                L9.MovementBusy = false
                L9.AutoExecute = false
                L9.AutoFuse = false
                L9.AutoQuests = false
                L9.AutoEventShop = false
                L9.FuseRarities = {}
                L9.FuseRarityCount = 0
                L9.FuseMaxStars = 5
                L9.FuseUseEssence = false
                L9.FuseSkipLocked = true
                L9.ShopItems = {}
                L9.ShopItemCount = 0
                L9.Fused = 0
                L9.QuestsClaimed = 0
                L9.ShopBought = 0
                L9.FuseStatus = "Idle"
                L9.EventStatus = "Idle"
                L9.FusePairs = 0
                L9.AutoPotions = false
                L9.AutoChallenges = false
                L9.AutoClone = false
                L9.Potions = {}
                L9.PotionCount = 0
                L9.ChallengeTiers = {}
                L9.ChallengeTierCount = 0
                L9.CloneUnit = nil
                L9.CloneRepeat = true
                L9.AutoTower = false
                L9.TowerUseInstant = false
                L9.TowerRuns = 0
                L9.TowerStatus = "Idle"
                L9.AutoEvolve = false
                L9.EvolveUnit = nil
                L9.EvolveRepeat = true
                L9.Evolved = 0
                L9.EvolveStatus = "Idle"
                L9.PotionsUsed = 0
                L9.ChallengesStarted = 0
                L9.Cloned = 0
                L9.PotionStatus = "Idle"
                L9.ChallengeStatus = "Idle"
                L9.CloneStatus = "Idle"
                L9.WebhookSent = 0
                L9.WebhookFailed = 0
                L9.CollectRarities = {}
                L9.CollectRarityCount = 0
                L9.CollectUnits = {}
                L9.CollectUnitCount = 0
                L9.CollectMutations = {}
                L9.CollectMutationCount = 0
                L9.TraitStops = {}
                L9.TraitStopCount = 0
                L9.TraitUnit = nil
                L9.Status = "Idle"
                L9.Rolled = 0
                L9.Collected = 0
                L9.Rerolled = 0
                L9.Bought = 0
                JQ = {}
                JV = fns.fn2011
                fns.af7_1 = "#FFB3D9"
                Kr = "#FF5FA8"
            end
            af7_7 = (af7_7 + 10) % 24
        else
            if af7_7 * 4218731 + 5 + 2 >= af7_7 * 4218731 + 5 + 2 + 4 then
                L9 = "#9C6480"
                JJ = fns.fn2069
                JX = fns.fn2071
                Ma = fns.fn428
                Lj.GetStatus = fns.fn940
                Lj.RarityValues = fns.fn1315
                Mq = {}
            else
                JJ = "#9C6480"
                Mq = fns.fn2069
                Ma = fns.fn2071
                Lj = fns.fn428
                L9.GetStatus = fns.fn940
                L9.RarityValues = fns.fn1315
                JX = {}
            end
            af7_7 = (af7_7 + 7) % 24
        end
    else
        if (af7_7 * 3 + 4) * 17 % 4 == ((af7_7 * 3 + 4) * 17 + 12) % 4 then
            af7_56 = 1
            JL = 0
            Ms = 0
        else
            Ms = 1
            af7_56 = 0
            JL = 0
        end
        af7_7 = (af7_7 + 7) % 24
    end
until (af7_7 * 11 + 2) % 24 == 12
af7_40 = af7_71("GetServerTimeFunction")
if af7_40 then
    af7_7, af7_122, af7_130 = nil, nil, nil
    af7_27 = 5
    repeat
        af7_114 = (af7_27 * 1 + 1) % 2 + 1
        if af7_114 <= 1 then
            if (af7_27 * 2 + 2) * 13 % 3 == ((af7_27 * 2 + 2) * 13 + 3) % 3 then
                af7_7, af7_122 = pcall(fns.fn596)
            else
                af7_122, af7_7 = pcall(fns.fn596)
            end
            af7_27 = (af7_27 + 1) % 16
        else
            local akk = bit32.rrotate(bit32.bxor(bit32.lrotate(af7_27, 3), string.byte(tostring(af7_7))), 8)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(akk, 2351247933), 789212322), (bit32.bxor(bit32.band(akk, 1943719362), 2239296825))), 789212322), 2239296825) ~= akk then
                af7_7 = af7_130
            else
                af7_130 = af7_7
            end
            af7_27 = (af7_27 + 3) % 16
        end
    until (af7_27 * 5 + 1) % 16 == 14
    if af7_130 then
        af7_130 = tonumber(af7_122)
    end
    if af7_130 then
        af7_27 = 1
        repeat
            af7_7 = (vector.create((af7_27 * 4 + 3) % 11 + 1, (af7_27 * 7 + 3) % 13 + 1, (af7_27 * 15 + 14) % 17 + 1))
            af7_130 = (vector.create((af7_27 * 5 + 9) % 11 + 1, (af7_27 * 10 + 12) % 13 + 1, (af7_27 * 10 + 2) % 17 + 1))
            af7_114 = (vector.create((af7_27 * 1 + 1) % 5 + 1, (af7_27 * 5 + 2) % 7 + 1, (af7_27 * 1 + 2) % 9 + 1))
            if math.abs((vector.angle(af7_7, af7_130, af7_114))) - math.abs((vector.angle(af7_130, af7_7, af7_114))) == 0 then
                Ms = tonumber(af7_122) - os.time()
            else
                af7_122 = tonumber(Ms) - os.time()
            end
            af7_27 = (af7_27 + 6) % 8
        until (af7_27 * 5 + 7) % 8 == 2
    end
end
Lw, af7_65, J1, LK, Lk, KQ, LX, fns.af7_21, KW, af7_63, Ks, af7_35, K8, Kk, LV, KR, fns.af7_32, Ly, LY, KZ, af7_42, L_, KV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
LK = fns.fn236
Lw = { "", "K", "M", "B", "T", "Qa", "Qi" }
Lk = fns.fn1351
KQ = fns.fn1603
L9.PotionStatus = fns.fn1649
L9.ChallengeStatus = fns.fn624
af7_65 = { at = 0, data = nil }
LX = fns.fn1634
L9.TowerStatus = fns.fn1957
L9.EvolveStatus = fns.fn1212
L9.EvolveUnitValues = fns.fn1324
L9.CloneStatus = fns.fn326
L9.PotionValues = fns.fn618
L9.ChallengeTierValues = fns.fn94
L9.FuseStatus = fns.fn785
L9.EventStatus = fns.fn2100
L9.ShopItemValues = fns.fn1044
L9.MutationValues = fns.fn382
L9.UnitNameValues = fns.fn883
L9.TraitValues = fns.fn1999
L9.Support = fns.fn1565
fns.af7_21 = fns.fn1936
KW = fns.fn1620
af7_63 = fns.fn37
Ks = fns.fn799
af7_35 = fns.fn1478
K8 = fns.fn1355
Kk = fns.fn2103
LV = fns.fn1568
if KQ and L_ or not L_ and L_ or (L_ and not KQ or not KQ and KW) or not (KQ and L_ or not L_ and L_ or (L_ and not KQ or not KQ and KW)) then
    KR = fns.fn1595
    fns.af7_32 = function(fV)
        local Parent
        local Rp
        Rp = nil
        Parent = nil
        Parent = fV.Parent
        local Rr = not Parent or not Parent:IsA("BasePart")
        local Rr_5
        if Rr then
            return false
        end
        Rr_5, Rp = KW()
        if not Rp then
            return false
        end
        local Rr_6 = math.max(fV.MaxActivationDistance - 4, 4)
        if (Rp.Position - Parent.Position).Magnitude <= Rr_6 then
            return true
        end
        State.MovementBusy = true
        local Rr_7 = pcall(function()
            Rp.AssemblyLinearVelocity = Vector3.zero
            Rp.AssemblyAngularVelocity = Vector3.zero
            Rp.CFrame = CFrame.new(Parent.Position + Vector3.new(0, 3, 0))
        end)
        if not Rr_7 then
            State.MovementBusy = false
            return false
        end
        task.wait(K_)
        State.MovementBusy = false
        local Rr_8 = fns.af7_10() and Rp.Parent ~= nil
        return Rr_8
    end
else
    fns.af7_32 = fns.fn1595
    KR = function(fV)
        local Parent
        local Rp
        Rp = nil
        Parent = nil
        Parent = fV.Parent
        local Rr = not Parent or not Parent:IsA("BasePart")
        local Rr_1
        if Rr then
            return false
        end
        Rr_1, Rp = KW()
        if not Rp then
            return false
        end
        local Rr_2 = math.max(fV.MaxActivationDistance - 4, 4)
        if (Rp.Position - Parent.Position).Magnitude <= Rr_2 then
            return true
        end
        State.MovementBusy = true
        local Rr_3 = pcall(function()
            Rp.AssemblyLinearVelocity = Vector3.zero
            Rp.AssemblyAngularVelocity = Vector3.zero
            Rp.CFrame = CFrame.new(Parent.Position + Vector3.new(0, 3, 0))
        end)
        if not Rr_3 then
            State.MovementBusy = false
            return false
        end
        task.wait(K_)
        State.MovementBusy = false
        local Rr_4 = fns.af7_10() and Rp.Parent ~= nil
        return Rr_4
    end
end
Ly = fns.fn1961
LY = fns.fn360
L9.UnitValues = fns.fn443
KZ = fns.fn1516
af7_42 = fns.fn1996
L_ = fns.fn320
KV = fns.fn2109
J1 = {}
for i, v in ipairs(Ml) do
    J1[v] = i
end
fns.af7_5 = nil
fns.af7_5 = {
    Url = "",
    Enabled = false,
    PingId = "",
    PingUser = false,
    PingEveryone = false,
    Interval = 60,
    Events = {},
    Rarities = {},
    RarityCount = 0,
    Buffer = {},
    Queue = {},
    Draining = false
}
fns.af7_5.Rule = "────────────────────────"
fns.af7_5.Order = { "Rolled", "Collected", "Traits", "Cloned", "Evolved", "TowerRewards", "Purchases", "Potions" }
fns.af7_5.Kinds = {
    Rolled = { Title = "Characters Rolled" },
    Collected = { Title = "Characters Collected" },
    Traits = { Title = "Traits Rolled" },
    Cloned = { Title = "Clone Claims" },
    Evolved = { Title = "Evolve Claims" },
    TowerRewards = { Title = "Tower Rewards" },
    Purchases = { Title = "Store Purchases" },
    Potions = { Title = "Potion Uses" }
}
for i, v in ipairs(fns.af7_5.Order) do
    fns.af7_5.Buffer[v] = {}
end
connection2 = nil
af7_27 = 0
repeat
    af7_7 = (af7_27 * 1 + 0) % 2 + 1
    if af7_7 <= 1 then
        if (af7_27 * 1 + 8) * 9 % 4 == ((af7_27 * 1 + 8) * 9 + 0) % 4 then
            fns.af7_5.EventValues = fns.fn1337
            fns.af7_5.KindForTitle = fns.fn1801
            fns.af7_5.Requester = function()
                local S8_2
                local S7_2
                if fns.af7_3(request) then
                    return request
                elseif fns.af7_3(http_request) then
                    return http_request
                else
                    for i, v in ipairs({ "syn", "http", "fluxus" }) do
                        local Tg = v
                        S7_2, S8_2 = pcall(function()
                            local S1 = getgenv and getgenv()[Tg]
                            local S2 = S1 or nil
                            local S2_2 = type(S2) == "table" and S2.request
                            local S1_4 = S2_2
                            local S6 = if S1_4 then 1 else 0
                            local S4 = 2056 * S6 + 344 * (1 - S6)
                            local S5 = 2413 * S6 + 3495 * (1 - S6)
                            if not ((S4 * 582 + S5 * 2407 + S4 * S5) % 16777213 == 11965811) then
                                S1_4 = nil
                            end
                            return S1_4
                        end)
                        local S9 = S7_2 and fns.af7_3(S8_2)
                        if S9 then
                            return S8_2
                        end
                    end
                    return nil
                end
            end
            fns.af7_5.ValidUrl = fns.fn334
            fns.af7_5.Post = fns.fn1188
            fns.af7_5.Drain = fns.fn1725
            fns.af7_5.Queued = fns.fn409
            fns.af7_5.Mention = fns.fn721
            fns.af7_5.Footer = fns.fn1005
            fns.af7_5.WantsRarity = fns.fn1036
            fns.af7_5.Record = fns.fn1333
            fns.af7_5.BuildFields = function()
                local TI_2
                local TG_2
                local TH_4
                local TD = {}
                for i, v in ipairs(fns.af7_5.Order) do
                    local TC
                    local TE = fns.af7_5.Buffer[v]
                    local TF = #TE
                    if TF > 0 then
                        TC, TG_2 = {}, {}
                        for i, v in ipairs(TE) do
                            local TH_3 = TC[v.line]
                            if not TH_3 then
                                TH_3 = { count = 0, rank = v.rank }
                                TC[v.line] = TH_3
                                table.insert(TG_2, v.line)
                            end
                            TH_3.count = TH_3.count + 1
                        end
                        table.sort(TG_2, function(ii, ij)
                            if TC[ii].rank ~= TC[ij].rank then
                                return TC[ii].rank > TC[ij].rank
                            end
                            return ii < ij
                        end)
                        TI_2, TH_4 = {}, 0
                        for i, v in ipairs(TG_2) do
                            if TH_4 >= J_ then
                                table.insert(TI_2, ("› *and %d more*"):format(#TG_2 - TH_4))
                                break
                            else
                                local TJ = TC[v]
                                local TK = "› " .. v
                                if TJ.count > 1 then
                                    TK ..= ("   ×%d"):format(TJ.count)
                                end
                                table.insert(TI_2, TK)
                                TH_4 += 1
                            end
                        end
                        table.insert(TD, {
                            name = ("%s (%d)"):format(fns.af7_5.Kinds[v].Title, TF),
                            value = table.concat(TI_2, "\n"),
                            inline = false
                        })
                        table.clear(TE)
                    end
                end
                return TD
            end
            fns.af7_5.Flush = fns.fn729
            connection2 = Lo:GetInstanceAddedSignal(Ld):Connect(function(iv)
                task.defer(function()
                    local T5 = not fns.af7_10() or not fns.af7_5.Enabled or typeof(iv) ~= "Instance"
                    if T5 then
                        return
                    end
                    local T5_3 = Ks()
                    local T6 = not T5_3 or not iv:IsDescendantOf(T5_3)
                    if T6 then
                        return
                    end
                    local attr = iv:GetAttribute("Rarity")
                    if not fns.af7_5.WantsRarity(attr) then
                        return
                    end
                    local T6_3 = iv:GetAttribute("UnitName") or iv.Name
                    local T6_4 = Kk(iv)
                    local T9 = tostring(T6_3)
                    local Ua = attr or "Unknown"
                    local Ub = string.format("**%s** - %s", T9, tostring(Ua))
                    if T6_4 ~= af7_60 then
                        Ub ..= " [" .. T6_4 .. "]"
                    end
                    fns.af7_5.Record("Rolled", Ub, attr)
                end)
            end)
        else
            Ld.EventValues = fns.fn1337
            Ld.KindForTitle = fns.fn1801
            Ld.Requester = function()
                local S8_1
                local S7_1
                if fns.af7_3(request) then
                    return request
                elseif fns.af7_3(http_request) then
                    return http_request
                else
                    for i, v in ipairs({ "syn", "http", "fluxus" }) do
                        local Tg = v
                        S7_1, S8_1 = pcall(function()
                            local S1 = getgenv and getgenv()[Tg]
                            local S2 = S1 or nil
                            local S2_1 = type(S2) == "table" and S2.request
                            local S1_2 = S2_1
                            local S6 = if S1_2 then 1 else 0
                            local S4 = 2056 * S6 + 344 * (1 - S6)
                            local S5 = 2413 * S6 + 3495 * (1 - S6)
                            if not ((S4 * 582 + S5 * 2407 + S4 * S5) % 16777213 == 11965811) then
                                S1_2 = nil
                            end
                            return S1_2
                        end)
                        local S9 = S7_1 and fns.af7_3(S8_1)
                        if S9 then
                            return S8_1
                        end
                    end
                    return nil
                end
            end
            Ld.ValidUrl = fns.fn334
            Ld.Post = fns.fn1188
            Ld.Drain = fns.fn1725
            Ld.Queued = fns.fn409
            Ld.Mention = fns.fn721
            Ld.Footer = fns.fn1005
            Ld.WantsRarity = fns.fn1036
            Ld.Record = fns.fn1333
            Ld.BuildFields = function()
                local TI_1
                local TG_1
                local TH_2
                local TD = {}
                for i, v in ipairs(fns.af7_5.Order) do
                    local TC
                    local TE = fns.af7_5.Buffer[v]
                    local TF = #TE
                    if TF > 0 then
                        TC, TG_1 = {}, {}
                        for i, v in ipairs(TE) do
                            local TH_1 = TC[v.line]
                            if not TH_1 then
                                TH_1 = { count = 0, rank = v.rank }
                                TC[v.line] = TH_1
                                table.insert(TG_1, v.line)
                            end
                            TH_1.count = TH_1.count + 1
                        end
                        table.sort(TG_1, function(ii, ij)
                            if TC[ii].rank ~= TC[ij].rank then
                                return TC[ii].rank > TC[ij].rank
                            end
                            return ii < ij
                        end)
                        TI_1, TH_2 = {}, 0
                        for i, v in ipairs(TG_1) do
                            if TH_2 >= J_ then
                                table.insert(TI_1, ("› *and %d more*"):format(#TG_1 - TH_2))
                                break
                            else
                                local TJ = TC[v]
                                local TK = "› " .. v
                                if TJ.count > 1 then
                                    TK ..= ("   ×%d"):format(TJ.count)
                                end
                                table.insert(TI_1, TK)
                                TH_2 += 1
                            end
                        end
                        table.insert(TD, {
                            name = ("%s (%d)"):format(fns.af7_5.Kinds[v].Title, TF),
                            value = table.concat(TI_1, "\n"),
                            inline = false
                        })
                        table.clear(TE)
                    end
                end
                return TD
            end
            Ld.Flush = fns.fn729
            Lo = connection2:GetInstanceAddedSignal(fns.af7_5):Connect(function(iv)
                task.defer(function()
                    local T5 = not fns.af7_10() or not fns.af7_5.Enabled or typeof(iv) ~= "Instance"
                    if T5 then
                        return
                    end
                    local T5_1 = Ks()
                    local T6 = not T5_1 or not iv:IsDescendantOf(T5_1)
                    if T6 then
                        return
                    end
                    local attr = iv:GetAttribute("Rarity")
                    if not fns.af7_5.WantsRarity(attr) then
                        return
                    end
                    local T6_1 = iv:GetAttribute("UnitName") or iv.Name
                    local T6_2 = Kk(iv)
                    local T9 = tostring(T6_1)
                    local Ua = attr or "Unknown"
                    local Ub = string.format("**%s** - %s", T9, tostring(Ua))
                    if T6_2 ~= af7_60 then
                        Ub ..= " [" .. T6_2 .. "]"
                    end
                    fns.af7_5.Record("Rolled", Ub, attr)
                end)
            end)
        end
        af7_27 = (af7_27 + 7) % 8
    else
        if (af7_27 * 2 + 5) * 4 % 3 == ((af7_27 * 2 + 5) * 4 + 0) % 3 then
            L9.Track(fns.fn543)
        else
            L9.Track(fns.fn543)
        end
        af7_27 = (af7_27 + 3) % 8
    end
until (af7_27 * 5 + 5) % 8 == 7
if af7_59 then
    connection3 = nil
    af7_27 = 4
    repeat
        af7_7 = (af7_27 * 1 + 0) % 2 + 1
        if af7_7 <= 1 then
            local ahW = bit32.rrotate(bit32.bxor(bit32.lrotate(af7_27, 7), string.byte(tostring(connection3))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ahW, 1674198730), 26), 697247995) ~= bit32.lrotate(ahW, 26) then
                af7_59 = connection3.OnClientEvent:Connect(fns.onOnClientEvent)
            else
                connection3 = af7_59.OnClientEvent:Connect(fns.onOnClientEvent)
            end
            af7_27 = (af7_27 + 3) % 8
        else
            af7_7 = (vector.create((af7_27 * 5 + 8) % 11 + 1, (af7_27 * 7 + 13) % 13 + 1, (af7_27 * 6 + 10) % 17 + 1))
            af7_130 = (vector.create((af7_27 * 2 + 9) % 11 + 1, (af7_27 * 3 + 4) % 13 + 1, (af7_27 * 14 + 16) % 17 + 1))
            local ak8 = vector.dot(af7_7, af7_130)
            if ak8 * ak8 >= vector.dot(af7_7, af7_7) * vector.dot(af7_130, af7_130) + 1 then
                L9.Track(fns.fn128)
            else
                L9.Track(fns.fn128)
            end
            af7_27 = (af7_27 + 7) % 8
        end
    until (af7_27 * 5 + 2) % 8 == 0
end
LN, fns.connection4, connection, af7_52, fns.af7_24, af7_130, Lc, K0, Mf, fns.af7_31, J9, JR, Kl, Mp, onRenderStepped, fns.af7_23, L6, Lr, fns.af7_28, Ka, Mk, Kn, L0, fns.af7_8, K6, af7_53, af7_55, JM, J3, LE, L8, af7_41, Mb, Mr, Kc, LC, Mn, L7, Ls = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
af7_7 = 28
repeat
    af7_27 = (af7_7 * 1 + 13) % 15 + 1
    if af7_27 <= 8 then
        if af7_27 <= 4 then
            if af7_27 <= 2 then
                if af7_27 <= 1 then
                    af7_122 = { "elqysrdnym", "mwkqi", "vwxrn", "stsejg", "qvdtnvnxhvm", "ywhgjyera", "kxwikcgxu" }
                    local ah6 = af7_7
                    af7_114 = af7_122[ah6 % 7 + 1]
                    if af7_114:len() >= af7_114:reverse():rep(ah6 % 3 + 2):len() then
                        Ka = function()
                            local Vv
                            local Vy_2
                            local Vx_2
                            local Vw_2
                            if not State.AutoFarm then
                                return
                            end
                            local VE = if Mf() then 1 else 0
                            if VE == 1 then
                                return
                            end
                            Vv = K0()
                            if not Vv then
                                fns.af7_1("No weapon owned")
                                return
                            end
                            if not fns.af7_12 then
                                fns.af7_1("Weapon equip remote unavailable")
                                return
                            end
                            Vw_2, Vx_2, Vy_2 = pcall(function()
                                return fns.af7_12:InvokeServer(Vv)
                            end)
                            local Vz = Vx_2 == false
                            local VA = not Vw_2
                            local VE_2 = if VA then 1 else 0
                            local VC = 698 * VE_2 + 1869 * (1 - VE_2)
                            local VD = 4073 * VE_2 + 1732 * (1 - VE_2)
                            if not ((VC * 3923 + VD * 871 + VC * VD) % 16777213 == 9128791) then
                                VA = Vz
                            end
                            if VA then
                                fns.af7_1("Equip weapon: " .. tostring(Vy_2))
                                return
                            end
                            fns.af7_1("Equipped " .. Vv)
                        end
                    else
                        fns.af7_23 = function()
                            local Vv
                            local Vy_1
                            local Vx_1
                            local Vw_1
                            if not State.AutoFarm then
                                return
                            end
                            local VE = if Mf() then 1 else 0
                            if VE == 1 then
                                return
                            end
                            Vv = K0()
                            if not Vv then
                                fns.af7_1("No weapon owned")
                                return
                            end
                            if not fns.af7_12 then
                                fns.af7_1("Weapon equip remote unavailable")
                                return
                            end
                            Vw_1, Vx_1, Vy_1 = pcall(function()
                                return fns.af7_12:InvokeServer(Vv)
                            end)
                            local Vz = Vx_1 == false
                            local VA = not Vw_1
                            local VE_1 = if VA then 1 else 0
                            local VC = 698 * VE_1 + 1869 * (1 - VE_1)
                            local VD = 4073 * VE_1 + 1732 * (1 - VE_1)
                            if not ((VC * 3923 + VD * 871 + VC * VD) % 16777213 == 9128791) then
                                VA = Vz
                            end
                            if VA then
                                fns.af7_1("Equip weapon: " .. tostring(Vy_1))
                                return
                            end
                            fns.af7_1("Equipped " .. Vv)
                        end
                    end
                    af7_7 = (af7_7 + 1) % 60
                else
                    af7_122 = { "ejwnpybgm", "cbzasydluwg", "vcwoycygee", "uojung", "oof", "zqqsnirpj", "twdflf" }
                    local aii = af7_7
                    af7_114 = af7_122[aii % 7 + 1]
                    if af7_114:len() <= af7_114:reverse():rep(aii % 3 + 2):len() then
                        L6 = fns.fn464
                        Lr = function()
                            local VQ_3, VQ_4
                            local VP_4, VP_5
                            local VR_12
                            if not K1 then
                                State.PotionStatus = "Potion remote unavailable"
                                return
                            end
                            if State.PotionCount == 0 then
                                State.PotionStatus = "Pick a potion"
                                return
                            end
                            local VO = {}
                            if KY then
                                VP_4, VQ_3 = pcall(function()
                                    return KY:InvokeServer()
                                end)
                                local VR_7 = VP_4 and type(VQ_3) == "table"
                                if VR_7 then
                                    VO = VQ_3
                                end
                            end
                            VP_5, VQ_4 = 0, 0
                            for i, v in ipairs(af7_47) do
                                local V3 = v
                                if State.Potions[V3] then
                                    local VR_8 = tonumber(VO[V3]) or 0
                                    local VS_2
                                    VQ_4 += VR_8
                                    local VR_9 = tonumber(K2:GetAttribute(KL(V3))) or 0
                                    local VT_2
                                    local VR_10 = VR_8 > 0 and VR_9 <= LK() + 2
                                    if VR_10 then
                                        local VR_11 = not fns.af7_10() or not State.AutoPotions
                                        if VR_11 then
                                            return
                                        end
                                        VS_2, VR_12, VT_2 = pcall(function()
                                            return K1:InvokeServer(V3)
                                        end)
                                        if VS_2 and VR_12 then
                                            VP_5 += 1
                                            State.PotionsUsed = State.PotionsUsed + 1
                                            State.PotionStatus = "Drank " .. V3
                                            fns.af7_5.Record("Potions", string.format("**%s**", V3))
                                        elseif VS_2 then
                                            State.PotionStatus = "Potion: " .. tostring(VT_2)
                                        end
                                        task.wait(0.3)
                                    end
                                end
                            end
                            if VP_5 == 0 then
                                local VP_6 = VQ_4 > 0 and "Waiting on timers" or "Out of potions"
                                State.PotionStatus = VP_6
                            end
                        end
                    else
                        Lr = fns.fn464
                        L6 = function()
                            local VQ_1, VQ_2
                            local VP_1, VP_2
                            local VR_6
                            if not K1 then
                                State.PotionStatus = "Potion remote unavailable"
                                return
                            end
                            if State.PotionCount == 0 then
                                State.PotionStatus = "Pick a potion"
                                return
                            end
                            local VO = {}
                            if KY then
                                VP_1, VQ_1 = pcall(function()
                                    return KY:InvokeServer()
                                end)
                                local VR_1 = VP_1 and type(VQ_1) == "table"
                                if VR_1 then
                                    VO = VQ_1
                                end
                            end
                            VP_2, VQ_2 = 0, 0
                            for i, v in ipairs(af7_47) do
                                local V3 = v
                                if State.Potions[V3] then
                                    local VR_2 = tonumber(VO[V3]) or 0
                                    local VS_1
                                    VQ_2 += VR_2
                                    local VR_3 = tonumber(K2:GetAttribute(KL(V3))) or 0
                                    local VT_1
                                    local VR_4 = VR_2 > 0 and VR_3 <= LK() + 2
                                    if VR_4 then
                                        local VR_5 = not fns.af7_10() or not State.AutoPotions
                                        if VR_5 then
                                            return
                                        end
                                        VS_1, VR_6, VT_1 = pcall(function()
                                            return K1:InvokeServer(V3)
                                        end)
                                        if VS_1 and VR_6 then
                                            VP_2 += 1
                                            State.PotionsUsed = State.PotionsUsed + 1
                                            State.PotionStatus = "Drank " .. V3
                                            fns.af7_5.Record("Potions", string.format("**%s**", V3))
                                        elseif VS_1 then
                                            State.PotionStatus = "Potion: " .. tostring(VT_1)
                                        end
                                        task.wait(0.3)
                                    end
                                end
                            end
                            if VP_2 == 0 then
                                local VP_3 = VQ_2 > 0 and "Waiting on timers" or "Out of potions"
                                State.PotionStatus = VP_3
                            end
                        end
                    end
                    af7_7 = (af7_7 + 31) % 60
                end
            elseif af7_27 <= 3 then
                if (af7_7 * 3 + 1) * 5 % 4 == ((af7_7 * 3 + 1) * 5 + 0) % 4 then
                    fns.af7_28 = function()
                        if not KS then
                            State.ChallengeStatus = "Challenge remote unavailable"
                            return
                        end
                        if State.ChallengeTierCount == 0 then
                            State.ChallengeStatus = "Pick a tier"
                            return
                        end
                        if os.clock() < JL then
                            State.ChallengeStatus = string.format("Running, %s left", KQ(JL - os.clock()))
                            return
                        end
                        local V5 = #J0
                        if af7_56 > V5 then
                            af7_56 = 1
                        end
                        local V6 = 0
                        local V7 = V5 - 1
                        for i = 0, V7 do
                            local V7_2 = (af7_56 - 1 + i) % V5 + 1
                            local V4 = J0[V7_2]
                            if State.ChallengeTiers[V4] then
                                local V8 = KM and KM[V4]
                                local V8_10
                                local V8_6 = tonumber(K2:GetAttribute("Challenge" .. V4 .. "CompletedAt")) or 0
                                local Wa = V8
                                local Wa_6
                                local Wb_4
                                if Wa then
                                    Wa = V8.ResetInterval
                                end
                                local V8_7 = tonumber(Wa) or 0
                                local V8_8 = LK() >= V8_6 + V8_7
                                local Wa_5 = JX[V4]
                                local Wb_3 = Wa_5 and os.clock() < Wa_5
                                if Wb_3 then
                                    V8_8 = false
                                end
                                if not V8_8 then
                                    V6 += 1
                                else
                                    local V8_9 = not fns.af7_10() or not State.AutoChallenges
                                    if V8_9 then
                                        return
                                    end
                                    Wa_6, V8_10, Wb_4 = pcall(function()
                                        return KS:InvokeServer(V4)
                                    end)
                                    local Wc = V8 and V8.Duration
                                    local V9_3 = tonumber(Wc) or 300
                                    if Wa_6 and V8_10 then
                                        State.ChallengesStarted = State.ChallengesStarted + 1
                                        State.ChallengeStatus = "Started " .. V4
                                        JX[V4] = os.clock() + V9_3
                                        JL = os.clock() + V9_3
                                        af7_56 = V7_2 + 1
                                        return
                                    end
                                    if Wa_6 then
                                        State.ChallengeStatus = V4 .. ": " .. tostring(Wb_4)
                                        JX[V4] = os.clock() + 60
                                        af7_56 = V7_2 + 1
                                    end
                                    task.wait(0.3)
                                end
                            end
                        end
                        if V6 > 0 and State.ChallengeStatus == "Idle" then
                            State.ChallengeStatus = "Waiting for reset"
                        end
                    end
                    Ka = function()
                        local Wl
                        local Wp_4
                        local Wm = not KG
                        local Wm_15, Wm_19, Wm_24
                        local Wn = not KN or Wm
                        local Wn_4, Wn_5
                        local Wo = Wn or not KC
                        local Wo_5, Wo_6
                        if Wo then
                            State.CloneStatus = "Clone remotes unavailable"
                            return
                        end
                        Wm_15, Wn_4 = pcall(function()
                            return KC:InvokeServer()
                        end)
                        if not Wm_15 then
                            State.CloneStatus = "Clone lookup failed"
                            return
                        end
                        local Wm_16 = type(Wn_4) == "table" and Wn_4.ReadyAt
                        if Wm_16 then
                            local Wm_17 = (tonumber(Wn_4.ReadyAt))
                            local Wv = if Wm_17 then 1 else 0
                            local Wt = 3357 * Wv + 2731 * (1 - Wv)
                            local Wu = 2642 * Wv + 468 * (1 - Wv)
                            if not ((Wt * 861 + Wu * 783 + Wt * Wu) % 16777213 == 13828257) then
                                Wm_17 = 0
                            end
                            local Wo_4 = Wm_17 - LK()
                            if Wo_4 > 0 then
                                local format = string.format
                                local Wp_3 = Wn_4.UnitName or "Clone"
                                State.CloneStatus = format("%s in %s", tostring(Wp_3), KQ(Wo_4))
                                return
                            end
                            Wo_5, Wm_19, Wp_4 = pcall(function()
                                return KG:InvokeServer()
                            end)
                            if Wo_5 and Wm_19 then
                                State.Cloned = State.Cloned + 1
                                local Wm_20 = Wn_4.UnitName or "Clone"
                                local Wq_2 = tostring(Wm_20)
                                local Wm_21 = tonumber(Wn_4.Stars) or 0
                                local Wm_22 = string.format("**%s**", Wq_2)
                                if Wm_21 > 0 then
                                    Wm_22 ..= string.format(" ★%d", Wm_21)
                                end
                                local Wr_2 = type(Wn_4.Mutation) == "string" and Wn_4.Mutation ~= ""
                                if Wr_2 then
                                    Wm_22 ..= " [" .. Wn_4.Mutation .. "]"
                                end
                                fns.af7_5.Record("Cloned", Wm_22)
                                State.CloneStatus = "Claimed " .. Wq_2
                            elseif Wo_5 then
                                State.CloneStatus = "Claim: " .. tostring(Wp_4)
                            else
                                State.CloneStatus = "Claim errored"
                            end
                            return
                        end
                        if State.Cloned > 0 and not State.CloneRepeat then
                            State.CloneStatus = "Finished"
                            return
                        end
                        Wl = L6(State.CloneUnit)
                        if not Wl then
                            State.CloneStatus = "Select a unit to clone"
                            return
                        end
                        Wm_24, Wn_5, Wo_6 = pcall(function()
                            return KN:InvokeServer(Wl)
                        end)
                        if not Wm_24 then
                            State.CloneStatus = "Clone errored"
                            return
                        end
                        if Wn_5 == false then
                            State.CloneStatus = "Clone: " .. tostring(Wo_6)
                            return
                        end
                        local Wm_25 = tonumber(Wo_6)
                        local Wn_6 = Wm_25 and string.format("Cloning, %s left", KQ(Wm_25 - LK()))
                        local Wm_26 = Wn_6 or "Cloning"
                        State.CloneStatus = Wm_26
                    end
                    Mk = fns.fn494
                    Kn = fns.fn182
                    L0 = fns.fn1831
                else
                    L0 = function()
                        if not KS then
                            State.ChallengeStatus = "Challenge remote unavailable"
                            return
                        end
                        if State.ChallengeTierCount == 0 then
                            State.ChallengeStatus = "Pick a tier"
                            return
                        end
                        if os.clock() < JL then
                            State.ChallengeStatus = string.format("Running, %s left", KQ(JL - os.clock()))
                            return
                        end
                        local V5 = #J0
                        if af7_56 > V5 then
                            af7_56 = 1
                        end
                        local V6 = 0
                        local V7 = V5 - 1
                        for i = 0, V7 do
                            local V7_1 = (af7_56 - 1 + i) % V5 + 1
                            local V4 = J0[V7_1]
                            if State.ChallengeTiers[V4] then
                                local V8 = KM and KM[V4]
                                local V8_5
                                local V8_1 = tonumber(K2:GetAttribute("Challenge" .. V4 .. "CompletedAt")) or 0
                                local Wa = V8
                                local Wa_3
                                local Wb_2
                                if Wa then
                                    Wa = V8.ResetInterval
                                end
                                local V8_2 = tonumber(Wa) or 0
                                local V8_3 = LK() >= V8_1 + V8_2
                                local Wa_2 = JX[V4]
                                local Wb_1 = Wa_2 and os.clock() < Wa_2
                                if Wb_1 then
                                    V8_3 = false
                                end
                                if not V8_3 then
                                    V6 += 1
                                else
                                    local V8_4 = not fns.af7_10() or not State.AutoChallenges
                                    if V8_4 then
                                        return
                                    end
                                    Wa_3, V8_5, Wb_2 = pcall(function()
                                        return KS:InvokeServer(V4)
                                    end)
                                    local Wc = V8 and V8.Duration
                                    local V9_1 = tonumber(Wc) or 300
                                    if Wa_3 and V8_5 then
                                        State.ChallengesStarted = State.ChallengesStarted + 1
                                        State.ChallengeStatus = "Started " .. V4
                                        JX[V4] = os.clock() + V9_1
                                        JL = os.clock() + V9_1
                                        af7_56 = V7_1 + 1
                                        return
                                    end
                                    if Wa_3 then
                                        State.ChallengeStatus = V4 .. ": " .. tostring(Wb_2)
                                        JX[V4] = os.clock() + 60
                                        af7_56 = V7_1 + 1
                                    end
                                    task.wait(0.3)
                                end
                            end
                        end
                        if V6 > 0 and State.ChallengeStatus == "Idle" then
                            State.ChallengeStatus = "Waiting for reset"
                        end
                    end
                    fns.af7_28 = function()
                        local Wl
                        local Wp_2
                        local Wm = not KG
                        local Wm_2, Wm_6, Wm_11
                        local Wn = not KN or Wm
                        local Wn_1, Wn_2
                        local Wo = Wn or not KC
                        local Wo_2, Wo_3
                        if Wo then
                            State.CloneStatus = "Clone remotes unavailable"
                            return
                        end
                        Wm_2, Wn_1 = pcall(function()
                            return KC:InvokeServer()
                        end)
                        if not Wm_2 then
                            State.CloneStatus = "Clone lookup failed"
                            return
                        end
                        local Wm_3 = type(Wn_1) == "table" and Wn_1.ReadyAt
                        if Wm_3 then
                            local Wm_4 = (tonumber(Wn_1.ReadyAt))
                            local Wv = if Wm_4 then 1 else 0
                            local Wt = 3357 * Wv + 2731 * (1 - Wv)
                            local Wu = 2642 * Wv + 468 * (1 - Wv)
                            if not ((Wt * 861 + Wu * 783 + Wt * Wu) % 16777213 == 13828257) then
                                Wm_4 = 0
                            end
                            local Wo_1 = Wm_4 - LK()
                            if Wo_1 > 0 then
                                local format = string.format
                                local Wp_1 = Wn_1.UnitName or "Clone"
                                State.CloneStatus = format("%s in %s", tostring(Wp_1), KQ(Wo_1))
                                return
                            end
                            Wo_2, Wm_6, Wp_2 = pcall(function()
                                return KG:InvokeServer()
                            end)
                            if Wo_2 and Wm_6 then
                                State.Cloned = State.Cloned + 1
                                local Wm_7 = Wn_1.UnitName or "Clone"
                                local Wq_1 = tostring(Wm_7)
                                local Wm_8 = tonumber(Wn_1.Stars) or 0
                                local Wm_9 = string.format("**%s**", Wq_1)
                                if Wm_8 > 0 then
                                    Wm_9 ..= string.format(" ★%d", Wm_8)
                                end
                                local Wr_1 = type(Wn_1.Mutation) == "string" and Wn_1.Mutation ~= ""
                                if Wr_1 then
                                    Wm_9 ..= " [" .. Wn_1.Mutation .. "]"
                                end
                                fns.af7_5.Record("Cloned", Wm_9)
                                State.CloneStatus = "Claimed " .. Wq_1
                            elseif Wo_2 then
                                State.CloneStatus = "Claim: " .. tostring(Wp_2)
                            else
                                State.CloneStatus = "Claim errored"
                            end
                            return
                        end
                        if State.Cloned > 0 and not State.CloneRepeat then
                            State.CloneStatus = "Finished"
                            return
                        end
                        Wl = L6(State.CloneUnit)
                        if not Wl then
                            State.CloneStatus = "Select a unit to clone"
                            return
                        end
                        Wm_11, Wn_2, Wo_3 = pcall(function()
                            return KN:InvokeServer(Wl)
                        end)
                        if not Wm_11 then
                            State.CloneStatus = "Clone errored"
                            return
                        end
                        if Wn_2 == false then
                            State.CloneStatus = "Clone: " .. tostring(Wo_3)
                            return
                        end
                        local Wm_12 = tonumber(Wo_3)
                        local Wn_3 = Wm_12 and string.format("Cloning, %s left", KQ(Wm_12 - LK()))
                        local Wm_13 = Wn_3 or "Cloning"
                        State.CloneStatus = Wm_13
                    end
                    Kn = fns.fn494
                    Mk = fns.fn182
                    Ka = fns.fn1831
                end
                af7_7 = (af7_7 + 16) % 60
            else
                local amu = bit32.rrotate(bit32.bxor(bit32.lrotate(af7_7, 25), string.byte(tostring(af7_41))), 17)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(amu, 2359546807), 3743954575), (bit32.bxor(bit32.band(amu, 1935420488), 3823545994))), 3743954575), 3823545994) ~= amu then
                    af7_53 = function()
                        local W7
                        local Xb_4
                        local W8 = not Ko
                        local W8_15, W8_19, W8_24
                        local W9 = not Kv or W8
                        local W9_8, W9_12, W9_13
                        local Xa = W9 or not Ke
                        local Xa_6, Xa_8
                        if Xa then
                            State.EvolveStatus = "Evolve remotes unavailable"
                            return
                        end
                        W8_15, W9_8 = pcall(function()
                            return Ke:InvokeServer()
                        end)
                        if not W8_15 then
                            State.EvolveStatus = "Evolve lookup failed"
                            return
                        end
                        local W8_16 = type(W9_8) == "table" and W9_8.ReadyAt
                        if W8_16 then
                            local W8_17 = tonumber(W9_8.ReadyAt) or 0
                            local Xa_5 = W8_17 - LK()
                            if Xa_5 > 0 then
                                local format = string.format
                                local Xb_3 = W9_8.UnitName or "Evolving"
                                State.EvolveStatus = format("%s in %s", tostring(Xb_3), KQ(Xa_5))
                                return
                            end
                            Xa_6, W8_19, Xb_4 = pcall(function()
                                return Ko:InvokeServer()
                            end)
                            if Xa_6 and W8_19 then
                                State.Evolved = State.Evolved + 1
                                local Xc_6 = W9_8.UnitName or State.EvolveUnit
                                local Xk = if Xc_6 then 1 else 0
                                local Xi = 2694 * Xk + 4092 * (1 - Xk)
                                local Xj = 2891 * Xk + 283 * (1 - Xk)
                                if not ((Xi * 2501 + Xj * 1246 + Xi * Xj) % 16777213 == 1351021) then
                                    Xc_6 = "Unit"
                                end
                                local W8_21 = tostring(Xc_6)
                                local Xc_7 = KA and KA[W8_21]
                                local Xc_8 = W9_8.EvolvesInto
                                if not Xc_8 then
                                    Xc_8 = Xc_7 and Xc_7.EvolvesInto
                                end
                                local W9_10 = Xc_8
                                if Xc_8 then
                                    Xc_8 = string.format("**%s** to **%s**", W8_21, tostring(W9_10))
                                end
                                local Xd_2 = Xc_8 or string.format("**%s**", W8_21)
                                fns.af7_5.Record("Evolved", Xd_2)
                                local Xc_10 = W9_10 or W8_21
                                State.EvolveStatus = "Claimed " .. tostring(Xc_10)
                            elseif Xa_6 then
                                State.EvolveStatus = "Claim: " .. tostring(Xb_4)
                            else
                                State.EvolveStatus = "Claim errored"
                            end
                            return
                        end
                        if State.Evolved > 0 and not State.EvolveRepeat then
                            State.EvolveStatus = "Finished"
                            return
                        end
                        local EvolveUnit = State.EvolveUnit
                        local W9_11 = EvolveUnit == ""
                        local Xa_7 = type(EvolveUnit) ~= "string" or W9_11
                        if Xa_7 then
                            State.EvolveStatus = "Select a unit to evolve"
                            return
                        end
                        W7, W9_12 = L0(EvolveUnit)
                        if not W7 then
                            State.EvolveStatus = tostring(W9_12)
                            return
                        end
                        W8_24, W9_13, Xa_8 = pcall(function()
                            return Kv:InvokeServer(W7)
                        end)
                        if not W8_24 then
                            State.EvolveStatus = "Evolve errored"
                            return
                        end
                        if W9_13 == false then
                            State.EvolveStatus = "Evolve: " .. tostring(Xa_8)
                            return
                        end
                        local W8_25 = tonumber(Xa_8)
                        local W9_14 = W8_25 and string.format("Evolving, %s left", KQ(W8_25 - LK()))
                        local W8_26 = W9_14 or "Evolving"
                        State.EvolveStatus = W8_26
                    end
                    fns.af7_8 = fns.fn1502
                    K6 = function()
                        local XA, XB
                        local XF_3, XF_4
                        local XE_4, XE_5
                        local XD_4
                        if not Lx then
                            State.FuseStatus = "Fuse remote unavailable"
                            return
                        end
                        local XC = K6()
                        local XC_11
                        XD_4, XF_3, XE_4 = 0, nil, nil
                        for k, v in pairs(XC) do
                            if #v.members >= 2 then
                                XD_4 += 1
                                if not XF_3 then
                                    XF_3 = v
                                end
                            else
                                local XC_7 = not XE_4
                                if XC_7 ~= false then
                                    XC_7 = State.FuseUseEssence
                                end
                                if XC_7 then
                                    XE_4 = v
                                end
                            end
                        end
                        State.FusePairs = XD_4
                        local XC_8 = not XE_4
                        local XD_5 = not XF_3
                        if XD_5 ~= false then
                            XD_5 = XC_8
                        end
                        if XD_5 then
                            State.FuseStatus = "Nothing to fuse"
                            return
                        end
                        local XD_6 = XF_3 or XE_4
                        XA = XF_3 == nil
                        XB = XD_6.members[1]
                        local XC_10 = not XB
                        local XT = if XC_10 then 1 else 0
                        local XR = 3144 * XT + 2676 * (1 - XT)
                        local XS = 2607 * XT + 3489 * (1 - XT)
                        if not ((XR * 3681 + XS * 948 + XR * XS) % 16777213 == 5463695) then
                            XC_10 = not XB.Parent
                        end
                        if XC_10 then
                            State.FuseStatus = "Unit vanished"
                            return
                        end
                        XC_11, XE_5, XF_4 = pcall(function()
                            return Lx:InvokeServer(XB, 1, XA)
                        end)
                        if not XC_11 then
                            State.FuseStatus = "Fuse errored"
                            return
                        end
                        if XE_5 == false then
                            State.FuseStatus = "Fuse: " .. tostring(XF_4)
                            return
                        end
                        State.Fused = State.Fused + 1
                        local format = string.format
                        local name = XD_6.name
                        local XG = tonumber(XF_4) or XD_6.stars + 1
                        State.FuseStatus = format("%s to %s%d", name, "★", XG)
                    end
                else
                    fns.af7_8 = function()
                        local W7
                        local Xb_2
                        local W8 = not Ko
                        local W8_2, W8_6, W8_11
                        local W9 = not Kv or W8
                        local W9_1, W9_5, W9_6
                        local Xa = W9 or not Ke
                        local Xa_2, Xa_4
                        if Xa then
                            State.EvolveStatus = "Evolve remotes unavailable"
                            return
                        end
                        W8_2, W9_1 = pcall(function()
                            return Ke:InvokeServer()
                        end)
                        if not W8_2 then
                            State.EvolveStatus = "Evolve lookup failed"
                            return
                        end
                        local W8_3 = type(W9_1) == "table" and W9_1.ReadyAt
                        if W8_3 then
                            local W8_4 = tonumber(W9_1.ReadyAt) or 0
                            local Xa_1 = W8_4 - LK()
                            if Xa_1 > 0 then
                                local format = string.format
                                local Xb_1 = W9_1.UnitName or "Evolving"
                                State.EvolveStatus = format("%s in %s", tostring(Xb_1), KQ(Xa_1))
                                return
                            end
                            Xa_2, W8_6, Xb_2 = pcall(function()
                                return Ko:InvokeServer()
                            end)
                            if Xa_2 and W8_6 then
                                State.Evolved = State.Evolved + 1
                                local Xc_1 = W9_1.UnitName or State.EvolveUnit
                                local Xk = if Xc_1 then 1 else 0
                                local Xi = 2694 * Xk + 4092 * (1 - Xk)
                                local Xj = 2891 * Xk + 283 * (1 - Xk)
                                if not ((Xi * 2501 + Xj * 1246 + Xi * Xj) % 16777213 == 1351021) then
                                    Xc_1 = "Unit"
                                end
                                local W8_8 = tostring(Xc_1)
                                local Xc_2 = KA and KA[W8_8]
                                local Xc_3 = W9_1.EvolvesInto
                                if not Xc_3 then
                                    Xc_3 = Xc_2 and Xc_2.EvolvesInto
                                end
                                local W9_3 = Xc_3
                                if Xc_3 then
                                    Xc_3 = string.format("**%s** to **%s**", W8_8, tostring(W9_3))
                                end
                                local Xd_1 = Xc_3 or string.format("**%s**", W8_8)
                                fns.af7_5.Record("Evolved", Xd_1)
                                local Xc_5 = W9_3 or W8_8
                                State.EvolveStatus = "Claimed " .. tostring(Xc_5)
                            elseif Xa_2 then
                                State.EvolveStatus = "Claim: " .. tostring(Xb_2)
                            else
                                State.EvolveStatus = "Claim errored"
                            end
                            return
                        end
                        if State.Evolved > 0 and not State.EvolveRepeat then
                            State.EvolveStatus = "Finished"
                            return
                        end
                        local EvolveUnit = State.EvolveUnit
                        local W9_4 = EvolveUnit == ""
                        local Xa_3 = type(EvolveUnit) ~= "string" or W9_4
                        if Xa_3 then
                            State.EvolveStatus = "Select a unit to evolve"
                            return
                        end
                        W7, W9_5 = L0(EvolveUnit)
                        if not W7 then
                            State.EvolveStatus = tostring(W9_5)
                            return
                        end
                        W8_11, W9_6, Xa_4 = pcall(function()
                            return Kv:InvokeServer(W7)
                        end)
                        if not W8_11 then
                            State.EvolveStatus = "Evolve errored"
                            return
                        end
                        if W9_6 == false then
                            State.EvolveStatus = "Evolve: " .. tostring(Xa_4)
                            return
                        end
                        local W8_12 = tonumber(Xa_4)
                        local W9_7 = W8_12 and string.format("Evolving, %s left", KQ(W8_12 - LK()))
                        local W8_13 = W9_7 or "Evolving"
                        State.EvolveStatus = W8_13
                    end
                    K6 = fns.fn1502
                    af7_53 = function()
                        local XA, XB
                        local XF_1, XF_2
                        local XE_1, XE_2
                        local XD_1
                        if not Lx then
                            State.FuseStatus = "Fuse remote unavailable"
                            return
                        end
                        local XC = K6()
                        local XC_5
                        XD_1, XF_1, XE_1 = 0, nil, nil
                        for k, v in pairs(XC) do
                            if #v.members >= 2 then
                                XD_1 += 1
                                if not XF_1 then
                                    XF_1 = v
                                end
                            else
                                local XC_1 = not XE_1
                                if XC_1 ~= false then
                                    XC_1 = State.FuseUseEssence
                                end
                                if XC_1 then
                                    XE_1 = v
                                end
                            end
                        end
                        State.FusePairs = XD_1
                        local XC_2 = not XE_1
                        local XD_2 = not XF_1
                        if XD_2 ~= false then
                            XD_2 = XC_2
                        end
                        if XD_2 then
                            State.FuseStatus = "Nothing to fuse"
                            return
                        end
                        local XD_3 = XF_1 or XE_1
                        XA = XF_1 == nil
                        XB = XD_3.members[1]
                        local XC_4 = not XB
                        local XT = if XC_4 then 1 else 0
                        local XR = 3144 * XT + 2676 * (1 - XT)
                        local XS = 2607 * XT + 3489 * (1 - XT)
                        if not ((XR * 3681 + XS * 948 + XR * XS) % 16777213 == 5463695) then
                            XC_4 = not XB.Parent
                        end
                        if XC_4 then
                            State.FuseStatus = "Unit vanished"
                            return
                        end
                        XC_5, XE_2, XF_2 = pcall(function()
                            return Lx:InvokeServer(XB, 1, XA)
                        end)
                        if not XC_5 then
                            State.FuseStatus = "Fuse errored"
                            return
                        end
                        if XE_2 == false then
                            State.FuseStatus = "Fuse: " .. tostring(XF_2)
                            return
                        end
                        State.Fused = State.Fused + 1
                        local format = string.format
                        local name = XD_3.name
                        local XG = tonumber(XF_2) or XD_3.stars + 1
                        State.FuseStatus = format("%s to %s%d", name, "★", XG)
                    end
                end
                af7_7 = (af7_7 + 31) % 60
            end
        elseif af7_27 <= 6 then
            if af7_27 <= 5 then
                af7_122 = { "ofe", "tbfr", "kqzfb", "amkwsgu", "puwhae", "ltyq", "psz", "jyvftsqu" }
                local alb = af7_7
                af7_114 = af7_122[alb % 8 + 1]
                if af7_114:len() <= af7_114:reverse():rep(alb % 3 + 2):len() then
                    af7_55 = function()
                        local XX_5
                        local XU = not Le
                        local XU_3, XU_4
                        local XV = not Lm or XU
                        local XV_9, XV_15
                        if XV then
                            State.EventStatus = "Quest remotes unavailable"
                            return
                        end
                        XU_3, XV_9 = pcall(function()
                            return Lm:InvokeServer()
                        end)
                        local XW = not XU_3 or type(XV_9) ~= "table"
                        local XW_2
                        if XW then
                            State.EventStatus = "Quest snapshot failed"
                            return
                        end
                        XU_4, XW_2 = 0, 0
                        for i, v in ipairs(XV_9) do
                            local X4 = v
                            local XV_10 = type(X4) == "table" and type(X4.Id) == "string"
                            if XV_10 then
                                local XV_11 = tonumber(X4.Progress) or 0
                                local XV_12 = tonumber(X4.Target) or math.huge
                                if X4.Claimed ~= true and XV_11 >= XV_12 then
                                    XW_2 += 1
                                    local XV_14 = not fns.af7_10() or not State.AutoQuests
                                    if XV_14 then
                                        return
                                    end
                                    XV_15, XX_5 = pcall(function()
                                        return Le:InvokeServer(X4.Id)
                                    end)
                                    if XV_15 and XX_5 then
                                        XU_4 += 1
                                        State.QuestsClaimed = State.QuestsClaimed + 1
                                    end
                                    task.wait(0.3)
                                end
                            end
                        end
                        if XU_4 > 0 then
                            local format = string.format
                            local XY_6 = XU_4 == 1 and "" or "s"
                            State.EventStatus = format("Claimed %d quest%s", XU_4, XY_6)
                        elseif XW_2 > 0 then
                            State.EventStatus = "Quest claim rejected"
                        else
                            State.EventStatus = "No quests ready"
                        end
                    end
                    JM = function()
                        local Ya_2
                        local X9_2
                        local X5 = not K9
                        local X5_10
                        local X6 = not La
                        local Yf = if X6 then 1 else 0
                        local Yd = 3694 * Yf + 1330 * (1 - Yf)
                        local Ye = 794 * Yf + 1340 * (1 - Yf)
                        if not ((Yd * 3945 + Ye * 2958 + Yd * Ye) % 16777213 == 3077305) then
                            X6 = X5
                        end
                        if X6 then
                            State.EventStatus = "Event shop unavailable"
                            return
                        end
                        if State.ShopItemCount == 0 then
                            State.EventStatus = "Pick a shop item"
                            return
                        end
                        local X5_7 = tonumber(K2:GetAttribute(LQ)) or 0
                        local X6_2 = X5_7
                        local X7
                        for i, v in ipairs(fns.af7_26) do
                            local Yl = v
                            if State.ShopItems[Yl] then
                                local X5_8 = K9[Yl] and K9[Yl].Price
                                local X8 = tonumber(X5_8)
                                if X8 then
                                    if X8 <= X6_2 then
                                        local X5_9 = not fns.af7_10()
                                        local Yf_2 = if X5_9 then 1 else 0
                                        local Yd_2 = 371 * Yf_2 + 3895 * (1 - Yf_2)
                                        local Ye_2 = 2784 * Yf_2 + 2111 * (1 - Yf_2)
                                        if not ((Yd_2 * 310 + Ye_2 * 3111 + Yd_2 * Ye_2) % 16777213 == 9808898) then
                                            X5_9 = not State.AutoEventShop
                                        end
                                        if X5_9 then
                                            return
                                        end
                                        X9_2, X5_10, Ya_2 = pcall(function()
                                            return La:InvokeServer(Yl)
                                        end)
                                        if X9_2 and X5_10 then
                                            State.ShopBought = State.ShopBought + 1
                                            State.EventStatus = "Bought " .. Yl
                                            fns.af7_5.Record("Purchases", string.format("**Event Shop** - %s (%d coins)", Yl, X8))
                                            local X5_11 = tonumber(K2:GetAttribute(LQ)) or 0
                                            X6_2 = X5_11
                                        elseif X9_2 then
                                            State.EventStatus = "Shop: " .. tostring(Ya_2)
                                        end
                                        task.wait(0.3)
                                    else
                                        if not X7 or X8 < X7.price then
                                            X7 = { key = Yl, price = X8 }
                                        end
                                    end
                                end
                            end
                        end
                        if X7 then
                            State.EventStatus = string.format("Saving for %s (%d)", X7.key, X7.price)
                        end
                    end
                else
                    JM = function()
                        local XX_2
                        local XU = not Le
                        local XU_1, XU_2
                        local XV = not Lm or XU
                        local XV_1, XV_7
                        if XV then
                            State.EventStatus = "Quest remotes unavailable"
                            return
                        end
                        XU_1, XV_1 = pcall(function()
                            return Lm:InvokeServer()
                        end)
                        local XW = not XU_1 or type(XV_1) ~= "table"
                        local XW_1
                        if XW then
                            State.EventStatus = "Quest snapshot failed"
                            return
                        end
                        XU_2, XW_1 = 0, 0
                        for i, v in ipairs(XV_1) do
                            local X4 = v
                            local XV_2 = type(X4) == "table" and type(X4.Id) == "string"
                            if XV_2 then
                                local XV_3 = tonumber(X4.Progress) or 0
                                local XV_4 = tonumber(X4.Target) or math.huge
                                if X4.Claimed ~= true and XV_3 >= XV_4 then
                                    XW_1 += 1
                                    local XV_6 = not fns.af7_10() or not State.AutoQuests
                                    if XV_6 then
                                        return
                                    end
                                    XV_7, XX_2 = pcall(function()
                                        return Le:InvokeServer(X4.Id)
                                    end)
                                    if XV_7 and XX_2 then
                                        XU_2 += 1
                                        State.QuestsClaimed = State.QuestsClaimed + 1
                                    end
                                    task.wait(0.3)
                                end
                            end
                        end
                        if XU_2 > 0 then
                            local format = string.format
                            local XY_3 = XU_2 == 1 and "" or "s"
                            State.EventStatus = format("Claimed %d quest%s", XU_2, XY_3)
                        elseif XW_1 > 0 then
                            State.EventStatus = "Quest claim rejected"
                        else
                            State.EventStatus = "No quests ready"
                        end
                    end
                    af7_55 = function()
                        local Ya_1
                        local X9_1
                        local X5 = not K9
                        local X5_4
                        local X6 = not La
                        local Yf = if X6 then 1 else 0
                        local Yd = 3694 * Yf + 1330 * (1 - Yf)
                        local Ye = 794 * Yf + 1340 * (1 - Yf)
                        if not ((Yd * 3945 + Ye * 2958 + Yd * Ye) % 16777213 == 3077305) then
                            X6 = X5
                        end
                        if X6 then
                            State.EventStatus = "Event shop unavailable"
                            return
                        end
                        if State.ShopItemCount == 0 then
                            State.EventStatus = "Pick a shop item"
                            return
                        end
                        local X5_1 = tonumber(K2:GetAttribute(LQ)) or 0
                        local X6_1 = X5_1
                        local X7
                        for i, v in ipairs(fns.af7_26) do
                            local Yl = v
                            if State.ShopItems[Yl] then
                                local X5_2 = K9[Yl] and K9[Yl].Price
                                local X8 = tonumber(X5_2)
                                if X8 then
                                    if X8 <= X6_1 then
                                        local X5_3 = not fns.af7_10()
                                        local Yf_1 = if X5_3 then 1 else 0
                                        local Yd_1 = 371 * Yf_1 + 3895 * (1 - Yf_1)
                                        local Ye_1 = 2784 * Yf_1 + 2111 * (1 - Yf_1)
                                        if not ((Yd_1 * 310 + Ye_1 * 3111 + Yd_1 * Ye_1) % 16777213 == 9808898) then
                                            X5_3 = not State.AutoEventShop
                                        end
                                        if X5_3 then
                                            return
                                        end
                                        X9_1, X5_4, Ya_1 = pcall(function()
                                            return La:InvokeServer(Yl)
                                        end)
                                        if X9_1 and X5_4 then
                                            State.ShopBought = State.ShopBought + 1
                                            State.EventStatus = "Bought " .. Yl
                                            fns.af7_5.Record("Purchases", string.format("**Event Shop** - %s (%d coins)", Yl, X8))
                                            local X5_5 = tonumber(K2:GetAttribute(LQ)) or 0
                                            X6_1 = X5_5
                                        elseif X9_1 then
                                            State.EventStatus = "Shop: " .. tostring(Ya_1)
                                        end
                                        task.wait(0.3)
                                    else
                                        if not X7 or X8 < X7.price then
                                            X7 = { key = Yl, price = X8 }
                                        end
                                    end
                                end
                            end
                        end
                        if X7 then
                            State.EventStatus = string.format("Saving for %s (%d)", X7.key, X7.price)
                        end
                    end
                end
                af7_7 = (af7_7 + 16) % 60
            else
                if ((not onRenderStepped and not Kc or (not onRenderStepped or not onRenderStepped)) and (not onRenderStepped and not Kc or L7 and not fns.af7_28) or (not L7 and onRenderStepped or not fns.connection4 and not Kc) and (not fns.af7_28 and not fns.connection4 or (not Kc or not onRenderStepped))) and not ((not onRenderStepped and not Kc or (not onRenderStepped or not onRenderStepped)) and (not onRenderStepped and not Kc or L7 and not fns.af7_28) or (not L7 and onRenderStepped or not fns.connection4 and not Kc) and (not fns.af7_28 and not fns.connection4 or (not Kc or not onRenderStepped))) then
                    JM = fns.fn2009
                else
                    J3 = fns.fn2009
                end
                af7_7 = (af7_7 + 31) % 60
            end
        elseif af7_27 <= 7 then
            af7_122 = (vector.create((af7_7 * 6 + 9) % 11 + 1, (af7_7 * 9 + 8) % 13 + 1, (af7_7 * 15 + 3) % 17 + 1))
            af7_114 = (vector.create((af7_7 * 4 + 1) % 11 + 1, (af7_7 * 8 + 11) % 13 + 1, (af7_7 * 9 + 14) % 17 + 1))
            local aku = vector.dot(af7_122, af7_114)
            if aku * aku <= vector.dot(af7_122, af7_122) * vector.dot(af7_114, af7_114) then
                LE = fns.fn1891
                L8 = fns.fn2081
                af7_41 = fns.fn1550
            else
                af7_41 = fns.fn1891
                LE = fns.fn2081
                L8 = fns.fn1550
            end
            af7_7 = (af7_7 + 16) % 60
        else
            if (not Mk and not Mk and (Mk and not L8) and (L8 and not Mk and (not af7_130 and Mk)) or ((af7_130 or L8) and (not L8 and not Mk) or L8 and L8 and (L8 and not af7_130))) and not (not Mk and not Mk and (Mk and not L8) and (L8 and not Mk and (not af7_130 and Mk)) or ((af7_130 or L8) and (not L8 and not Mk) or L8 and L8 and (L8 and not af7_130))) then
                Kc = function()
                    local Y2_2
                    local Y1_2
                    if not L1 then
                        fns.af7_1("Weapon remote unavailable")
                        return
                    end
                    local YY = L_()
                    local YZ = af7_63()
                    for i, v in ipairs(Lt) do
                        local Za = v
                        local Y_ = not fns.af7_10() or not State.AutoWeapons
                        if Y_ then
                            return
                        end
                        if not YY[Za] then
                            local Y__2 = tonumber(JW[Za].Price)
                            local Y0 = Y__2 and Y__2 <= YZ
                            local Y0_2
                            if Y0 then
                                Y1_2, Y0_2, Y2_2 = pcall(function()
                                    return L1:InvokeServer(Za)
                                end)
                                if Y1_2 and Y0_2 then
                                    State.Bought = State.Bought + 1
                                    fns.af7_1("Bought " .. Za)
                                    fns.af7_5.Record("Purchases", string.format("**Blacksmith** - %s (%s)", Za, Lk(Y__2)))
                                elseif Y1_2 then
                                    fns.af7_1("Weapon locked: " .. tostring(Y2_2))
                                end
                                task.wait(0.3)
                                YZ = af7_63()
                            end
                        end
                    end
                end
                LC = function()
                    local Zb
                    local Ze_3
                    if not LO then
                        fns.af7_1("Trait remote unavailable")
                        return
                    end
                    Zb = KZ()
                    if not Zb then
                        fns.af7_1("Select a unit for traits")
                        return
                    end
                    local attr = Zb:GetAttribute("Trait")
                    local Zc_7
                    local Zd = State.TraitStopCount > 0 and type(attr) == "string" and State.TraitStops[attr]
                    local Zd_5
                    if Zd then
                        fns.af7_1("Trait matched: " .. attr)
                        return
                    end
                    local Zc_6 = tonumber(K2:GetAttribute("TraitShardCount")) or 0
                    if Zc_6 <= 0 then
                        fns.af7_1("No trait shards")
                        return
                    end
                    Zc_7, Zd_5, Ze_3 = pcall(function()
                        return LO:InvokeServer(Zb)
                    end)
                    if not Zc_7 then
                        fns.af7_1("Trait reroll failed")
                        return
                    end
                    if Zd_5 == false then
                        fns.af7_1("Trait reroll: " .. tostring(Ze_3))
                        return
                    end
                    State.Rerolled = State.Rerolled + 1
                    local Zc_8 = Ze_3 or Zb:GetAttribute("Trait")
                    fns.af7_1("Rolled trait " .. tostring(Zc_8))
                    local Zc_9 = Zb:GetAttribute("UnitName") or Zb.Name
                    local Record = fns.af7_5.Record
                    local Zg = tostring(Zc_9)
                    local Zh = Zc_8
                    local Zl = if Zh then 1 else 0
                    local Zj = 3979 * Zl + 1223 * (1 - Zl)
                    local Zk = 2329 * Zl + 3783 * (1 - Zl)
                    if not ((Zj * 615 + Zk * 1674 + Zj * Zk) % 16777213 == 15612922) then
                        Zh = "Unknown"
                    end
                    Record("Traits", string.format("**%s** - %s", Zg, tostring(Zh)))
                end
                Mr = fns.fn1037
                Mb = fns.fn1872
            else
                Mb = function()
                    local Y2_1
                    local Y1_1
                    if not L1 then
                        fns.af7_1("Weapon remote unavailable")
                        return
                    end
                    local YY = L_()
                    local YZ = af7_63()
                    for i, v in ipairs(Lt) do
                        local Za = v
                        local Y_ = not fns.af7_10() or not State.AutoWeapons
                        if Y_ then
                            return
                        end
                        if not YY[Za] then
                            local Y__1 = tonumber(JW[Za].Price)
                            local Y0 = Y__1 and Y__1 <= YZ
                            local Y0_1
                            if Y0 then
                                Y1_1, Y0_1, Y2_1 = pcall(function()
                                    return L1:InvokeServer(Za)
                                end)
                                if Y1_1 and Y0_1 then
                                    State.Bought = State.Bought + 1
                                    fns.af7_1("Bought " .. Za)
                                    fns.af7_5.Record("Purchases", string.format("**Blacksmith** - %s (%s)", Za, Lk(Y__1)))
                                elseif Y1_1 then
                                    fns.af7_1("Weapon locked: " .. tostring(Y2_1))
                                end
                                task.wait(0.3)
                                YZ = af7_63()
                            end
                        end
                    end
                end
                Mr = function()
                    local Zb
                    local Ze_1
                    if not LO then
                        fns.af7_1("Trait remote unavailable")
                        return
                    end
                    Zb = KZ()
                    if not Zb then
                        fns.af7_1("Select a unit for traits")
                        return
                    end
                    local attr = Zb:GetAttribute("Trait")
                    local Zc_2
                    local Zd = State.TraitStopCount > 0 and type(attr) == "string" and State.TraitStops[attr]
                    local Zd_2
                    if Zd then
                        fns.af7_1("Trait matched: " .. attr)
                        return
                    end
                    local Zc_1 = tonumber(K2:GetAttribute("TraitShardCount")) or 0
                    if Zc_1 <= 0 then
                        fns.af7_1("No trait shards")
                        return
                    end
                    Zc_2, Zd_2, Ze_1 = pcall(function()
                        return LO:InvokeServer(Zb)
                    end)
                    if not Zc_2 then
                        fns.af7_1("Trait reroll failed")
                        return
                    end
                    if Zd_2 == false then
                        fns.af7_1("Trait reroll: " .. tostring(Ze_1))
                        return
                    end
                    State.Rerolled = State.Rerolled + 1
                    local Zc_3 = Ze_1 or Zb:GetAttribute("Trait")
                    fns.af7_1("Rolled trait " .. tostring(Zc_3))
                    local Zc_4 = Zb:GetAttribute("UnitName") or Zb.Name
                    local Record = fns.af7_5.Record
                    local Zg = tostring(Zc_4)
                    local Zh = Zc_3
                    local Zl = if Zh then 1 else 0
                    local Zj = 3979 * Zl + 1223 * (1 - Zl)
                    local Zk = 2329 * Zl + 3783 * (1 - Zl)
                    if not ((Zj * 615 + Zk * 1674 + Zj * Zk) % 16777213 == 15612922) then
                        Zh = "Unknown"
                    end
                    Record("Traits", string.format("**%s** - %s", Zg, tostring(Zh)))
                end
                Kc = fns.fn1037
                LC = fns.fn1872
            end
            af7_7 = (af7_7 + 1) % 60
        end
    elseif af7_27 <= 12 then
        if af7_27 <= 10 then
            if af7_27 <= 9 then
                if (af7_7 * 3 + 6) * 21 % 4 == ((af7_7 * 3 + 6) * 21 + 12) % 4 then
                    L9.SetAutoRoll = fns.fn1982
                    L9.SetAutoCollect = fns.fn1761
                    L9.SetAutoEquipBest = fns.fn2115
                    L9.SetAutoUpgrades = fns.fn1543
                    L9.SetAutoWeapons = fns.fn714
                    L9.SetAutoTrait = fns.fn1220
                    L9.SetAutoPrestige = fns.fn118
                    L9.SetAutoZones = fns.fn2161
                    L9.SetAutoFarm = fns.fn126
                    fns.af7_24 = 0
                    Mn = fns.fn1721
                else
                    Mn.SetAutoRoll = fns.fn1982
                    Mn.SetAutoCollect = fns.fn1761
                    Mn.SetAutoEquipBest = fns.fn2115
                    Mn.SetAutoUpgrades = fns.fn1543
                    Mn.SetAutoWeapons = fns.fn714
                    Mn.SetAutoTrait = fns.fn1220
                    Mn.SetAutoPrestige = fns.fn118
                    Mn.SetAutoZones = fns.fn2161
                    Mn.SetAutoFarm = fns.fn126
                    L9 = 0
                    fns.af7_24 = fns.fn1721
                end
                af7_7 = (af7_7 + 31) % 60
            else
                af7_122 = {
                    "fxfhoqlgm",
                    "vagzyhayqm",
                    "etafzr",
                    "igfblijxkp",
                    "fzefx",
                    "reyinilm",
                    "gzeikflt",
                    "kar",
                    "mmzvttpfhfu",
                    "inxpb",
                    "bcbbazrq"
                }
                if af7_122[(af7_7 * 63 + 98) % 11 + 1] < af7_122[(af7_7 * 63 + 98) % 11 + 1] then
                    Ls = fns.fn988
                    L7 = fns.fn2130
                else
                    L7 = fns.fn988
                    Ls = fns.fn2130
                end
                af7_7 = (af7_7 + 31) % 60
            end
        elseif af7_27 <= 11 then
            if (af7_7 * 2 + 1) * 13 % 3 == ((af7_7 * 2 + 1) * 13 + 5) % 3 then
                af7_130.SetWebhookEnabled = fns.fn1601
                af7_130.SetWebhookUrl = fns.fn1621
                af7_130.SetWebhookInterval = fns.fn325
                af7_130.SetWebhookEvents = fns.fn416
                af7_130.SetWebhookRarities = fns.fn47
                af7_130.SetWebhookPingId = fns.fn1287
                af7_130.SetWebhookPingUser = fns.fn1289
                af7_130.SetWebhookPingEveryone = fns.fn2080
                af7_130.WebhookEventValues = fns.fn363
                af7_130.WebhookStatus = fns.fn218
                af7_130.SendWebhookNow = fns.fn1446
                af7_130.TestWebhook = fns.fn492
                fns.af7_3 = (L9(queue_on_teleport))
            else
                L9.SetWebhookEnabled = fns.fn1601
                L9.SetWebhookUrl = fns.fn1621
                L9.SetWebhookInterval = fns.fn325
                L9.SetWebhookEvents = fns.fn416
                L9.SetWebhookRarities = fns.fn47
                L9.SetWebhookPingId = fns.fn1287
                L9.SetWebhookPingUser = fns.fn1289
                L9.SetWebhookPingEveryone = fns.fn2080
                L9.WebhookEventValues = fns.fn363
                L9.WebhookStatus = fns.fn218
                L9.SendWebhookNow = fns.fn1446
                L9.TestWebhook = fns.fn492
                af7_130 = (fns.af7_3(queue_on_teleport))
            end
            af7_7 = (af7_7 + 31) % 60
        else
            af7_122 = (vector.create((af7_7 * 6 + 2) % 11 + 1, (af7_7 * 10 + 9) % 13 + 1, (af7_7 * 13 + 4) % 17 + 1))
            af7_114 = (vector.create((af7_7 * 2 + 3) % 11 + 1, (af7_7 * 7 + 11) % 13 + 1, (af7_7 * 11 + 2) % 17 + 1))
            fns.af7_106 = (vector.create((af7_7 * 6 + 9) % 11 + 1, (af7_7 * 4 + 10) % 13 + 1, (af7_7 * 11 + 4) % 17 + 1))
            af7_98 = (vector.create((af7_7 * 2 + 6) % 11 + 1, (af7_7 * 3 + 10) % 13 + 1, (af7_7 * 2 + 13) % 17 + 1))
            if vector.dot(vector.cross(af7_122, af7_114), (vector.cross(fns.af7_106, af7_98))) == vector.dot(af7_122, fns.af7_106) * vector.dot(af7_114, af7_98) - vector.dot(af7_122, af7_98) * vector.dot(af7_114, fns.af7_106) then
                Lc = function(i0)
                    if typeof(i0) ~= "Instance" then
                        return nil
                    end
                    return i0.ChildAdded:Connect(function(i1)
                        task.delay(0.3, function()
                            local Uj = not fns.af7_10() or not fns.af7_5.Enabled
                            if Uj then
                                return
                            end
                            local Uj_4 = not i1:IsA("Tool") or not i1.Parent
                            if Uj_4 then
                                return
                            end
                            local Uj_5 = not Kb
                            local Ur = if Uj_5 then 1 else 0
                            local Up = 2058 * Ur + 3234 * (1 - Ur)
                            local Uq = 1441 * Ur + 1601 * (1 - Ur)
                            if not ((Up * 373 + Uq * 1728 + Up * Uq) % 16777213 == 6223260) then
                                Uj_5 = not Kb[i1.Name]
                            end
                            if Uj_5 then
                                return
                            end
                            local Rarity = Kb[i1.Name].Rarity
                            if not fns.af7_5.WantsRarity(Rarity) then
                                return
                            end
                            local format = string.format
                            local Name = i1.Name
                            local Um = Rarity
                            local Uu = if Um then 1 else 0
                            local Us = 3400 * Uu + 3229 * (1 - Uu)
                            local Ut = 3561 * Uu + 217 * (1 - Uu)
                            if not ((Us * 299 + Ut * 1936 + Us * Ut) % 16777213 == 3240883) then
                                Um = "Unknown"
                            end
                            local Un = format("**%s** - %s", Name, tostring(Um))
                            local Uk_3 = tonumber(i1:GetAttribute("Stars")) or 0
                            if Uk_3 > 0 then
                                Un ..= string.format(" ★%d", Uk_3)
                            end
                            local attr = i1:GetAttribute("Mutation")
                            local Ul_4 = attr ~= ""
                            local Um_2 = type(attr) == "string" and Ul_4
                            if Um_2 then
                                Un ..= " [" .. attr .. "]"
                            end
                            fns.af7_5.Record("Collected", Un, Rarity)
                        end)
                    end)
                end
                LN = Lc(K2:FindFirstChild("Backpack"))
                fns.connection4 = K2.ChildAdded:Connect(fns.onChildAdded)
                L9.Track(fns.fn277)
                K0 = fns.fn1559
            else
                L9 = function(i0)
                    if typeof(i0) ~= "Instance" then
                        return nil
                    end
                    return i0.ChildAdded:Connect(function(i1)
                        task.delay(0.3, function()
                            local Uj = not fns.af7_10() or not fns.af7_5.Enabled
                            if Uj then
                                return
                            end
                            local Uj_1 = not i1:IsA("Tool") or not i1.Parent
                            if Uj_1 then
                                return
                            end
                            local Uj_2 = not Kb
                            local Ur = if Uj_2 then 1 else 0
                            local Up = 2058 * Ur + 3234 * (1 - Ur)
                            local Uq = 1441 * Ur + 1601 * (1 - Ur)
                            if not ((Up * 373 + Uq * 1728 + Up * Uq) % 16777213 == 6223260) then
                                Uj_2 = not Kb[i1.Name]
                            end
                            if Uj_2 then
                                return
                            end
                            local Rarity = Kb[i1.Name].Rarity
                            if not fns.af7_5.WantsRarity(Rarity) then
                                return
                            end
                            local format = string.format
                            local Name = i1.Name
                            local Um = Rarity
                            local Uu = if Um then 1 else 0
                            local Us = 3400 * Uu + 3229 * (1 - Uu)
                            local Ut = 3561 * Uu + 217 * (1 - Uu)
                            if not ((Us * 299 + Ut * 1936 + Us * Ut) % 16777213 == 3240883) then
                                Um = "Unknown"
                            end
                            local Un = format("**%s** - %s", Name, tostring(Um))
                            local Uk_1 = tonumber(i1:GetAttribute("Stars")) or 0
                            if Uk_1 > 0 then
                                Un ..= string.format(" ★%d", Uk_1)
                            end
                            local attr = i1:GetAttribute("Mutation")
                            local Ul_2 = attr ~= ""
                            local Um_1 = type(attr) == "string" and Ul_2
                            if Um_1 then
                                Un ..= " [" .. attr .. "]"
                            end
                            fns.af7_5.Record("Collected", Un, Rarity)
                        end)
                    end)
                end
                K0 = L9(Lc:FindFirstChild("Backpack"))
                LN = Lc.ChildAdded:Connect(fns.onChildAdded)
                fns.connection4.Track(fns.fn277)
                K2 = fns.fn1559
            end
            af7_7 = (af7_7 + 1) % 60
        end
    elseif af7_27 <= 14 then
        if af7_27 <= 13 then
            if (not Mp or not Lr) and (not L8 or Mp) and (Lr or Mp or (not L8 or Lr)) or (not K6 or Mp) and (not L8 or Ka) and (not Mp or not L8 or not K6 and not K6) or not ((not Mp or not Lr) and (not L8 or Mp) and (Lr or Mp or (not L8 or Lr)) or (not K6 or Mp) and (not L8 or Ka) and (not Mp or not L8 or not K6 and not K6)) then
                Mf = fns.fn1283
                fns.af7_31 = fns.fn1347
                J9 = fns.fn1676
            else
                J9 = fns.fn1283
                Mf = fns.fn1347
                fns.af7_31 = fns.fn1676
            end
            af7_7 = (af7_7 + 1) % 60
        else
            af7_27 = {
                "prgagzqcccv",
                "ode",
                "hxrahsxj",
                "vopsouryuu",
                "cjc",
                "awogdsp",
                "xgrakebpm",
                "xxhenu",
                "helkdhor",
                "aclntmirl"
            }
            local ala = af7_7
            af7_122 = af7_27[ala % 10 + 1]
            if af7_122:len() <= af7_122:gsub("(.)", "%1%1", ala % 3 % 2 + 1):len() then
                JR = function(j0, j1, j2)
                    J9(j0)
                    local j4 = {}
                    Kr[j0] = j4
                    task.spawn(function()
                        local U3_2
                        while true do
                            local U2 = fns.af7_10() and Kr[j0] == j4
                            local U2_2
                            if U2 then
                                U2_2, U3_2 = pcall(j2)
                                if not U2_2 then
                                    fns.af7_1(tostring(U3_2))
                                end
                                task.wait(j1)
                                continue
                            end
                            break
                        end
                    end)
                end
                connection = nil
                af7_52 = nil
                Kl = fns.fn23
            else
                af7_52 = function(j0, j1, j2)
                    J9(j0)
                    local j4 = {}
                    Kr[j0] = j4
                    task.spawn(function()
                        local U3_1
                        while true do
                            local U2 = fns.af7_10() and Kr[j0] == j4
                            local U2_1
                            if U2 then
                                U2_1, U3_1 = pcall(j2)
                                if not U2_1 then
                                    fns.af7_1(tostring(U3_1))
                                end
                                task.wait(j1)
                                continue
                            end
                            break
                        end
                    end)
                end
                Kl = nil
                connection = nil
                JR = fns.fn23
            end
            af7_7 = (af7_7 + 16) % 60
        end
    else
        if af7_7 * 116251809 + 13 + 5 >= af7_7 * 116251809 + 13 + 5 + 2 then
            onRenderStepped = fns.fn1680
            Mp = function(kB)
                local Vl, Magnitude, Vn
                local Vo = not fns.af7_10() or not State.AutoFarm or State.MovementBusy
                local Vo_4
                if Vo then
                    return
                end
                Vo_4, Vl = KW()
                if not Vl then
                    af7_52 = nil
                    return
                end
                if not Kl() then
                    af7_52 = Mp(Vl.Position)
                end
                if not af7_52 then
                    fns.af7_1("Waiting for enemies")
                    return
                end
                local Position = af7_52.root.Position
                local Vp = Vector3.new(Position.X - Vl.Position.X, 0, Position.Z - Vl.Position.Z)
                local Vq = Vp.Magnitude > 0.1 and Vp.Unit
                local Vp_3 = Vq or Vector3.new(0, 0, 1)
                local Vp_4 = Position - Vp_3 * KP + Vector3.new(0, KK, 0)
                Vn = CFrame.lookAt(Vp_4, Vector3.new(Position.X, Vp_4.Y, Position.Z))
                Magnitude = (Vp_4 - Vl.Position).Magnitude
                local Vo_6 = pcall(function()
                    Vl.AssemblyLinearVelocity = Vector3.zero
                    Vl.AssemblyAngularVelocity = Vector3.zero
                    if Magnitude > Kx then
                        Vl.CFrame = Vn
                    else
                        local Vj = 1 - math.exp(-14 * math.min(kB, 0.1))
                        Vl.CFrame = Vl.CFrame:Lerp(Vn, Vj)
                    end
                end)
                if Vo_6 then
                    fns.af7_1(string.format("Farming %s", tostring(af7_52.model.Name)))
                end
            end
        else
            Mp = fns.fn1680
            onRenderStepped = function(kB)
                local Vl, Magnitude, Vn
                local Vo = not fns.af7_10() or not State.AutoFarm or State.MovementBusy
                local Vo_1
                if Vo then
                    return
                end
                Vo_1, Vl = KW()
                if not Vl then
                    af7_52 = nil
                    return
                end
                if not Kl() then
                    af7_52 = Mp(Vl.Position)
                end
                if not af7_52 then
                    fns.af7_1("Waiting for enemies")
                    return
                end
                local Position = af7_52.root.Position
                local Vp = Vector3.new(Position.X - Vl.Position.X, 0, Position.Z - Vl.Position.Z)
                local Vq = Vp.Magnitude > 0.1 and Vp.Unit
                local Vp_1 = Vq or Vector3.new(0, 0, 1)
                local Vp_2 = Position - Vp_1 * KP + Vector3.new(0, KK, 0)
                Vn = CFrame.lookAt(Vp_2, Vector3.new(Position.X, Vp_2.Y, Position.Z))
                Magnitude = (Vp_2 - Vl.Position).Magnitude
                local Vo_3 = pcall(function()
                    Vl.AssemblyLinearVelocity = Vector3.zero
                    Vl.AssemblyAngularVelocity = Vector3.zero
                    if Magnitude > Kx then
                        Vl.CFrame = Vn
                    else
                        local Vj = 1 - math.exp(-14 * math.min(kB, 0.1))
                        Vl.CFrame = Vl.CFrame:Lerp(Vn, Vj)
                    end
                end)
                if Vo_3 then
                    fns.af7_1(string.format("Farming %s", tostring(af7_52.model.Name)))
                end
            end
        end
        af7_7 = (af7_7 + 16) % 60
    end
until (af7_7 * 13 + 5) % 60 == 39
if af7_130 then
    af7_130 = queue_on_teleport
end
af7_27 = af7_130
if not af7_27 then
    af7_7 = fns.af7_3(queueonteleport) and queueonteleport
    af7_27 = af7_7
end
Km, connection5, Kd = nil, nil, nil
Km = af7_27
Kd = fns.fn960
L9.SetAutoExecute = fns.fn1994
connection5 = K2.OnTeleport:Connect(fns.onOnTeleport)
L9.Track(fns.fn620)
L9.SetAutoPotions = fns.fn31
L9.SetAutoChallenges = fns.fn461
L9.SetAutoClone = fns.fn468
L9.SetPotions = fns.fn1524
L9.SetChallengeTiers = fns.fn1304
L9.SetCloneUnit = fns.fn1526
L9.SetCloneRepeat = fns.fn860
L9.SetAutoTower = fns.fn621
L9.SetTowerUseInstant = fns.fn650
L9.SetAutoEvolve = fns.fn1897
L9.SetEvolveUnit = fns.fn608
L9.SetEvolveRepeat = fns.fn2060
L9.SetAutoFuse = fns.fn1322
L9.SetAutoQuests = fns.fn2004
L9.SetAutoEventShop = fns.fn1349
L9.SetFuseRarities = fns.fn933
L9.SetFuseMaxStars = fns.fn84
L9.SetFuseUseEssence = fns.fn2051
L9.SetFuseSkipLocked = fns.fn1983
L9.SetShopItems = fns.fn137
L9.SetCollectRarities = fns.fn1406
L9.SetCollectUnits = fns.fn638
L9.SetCollectMutations = fns.fn1256
L9.SetTraitStops = fns.fn438
L9.SetTraitUnit = fns.fn208
L9.Track(fns.fn651)
af7_122 = function()
    local ThemeManager, afo, Options, afq, SaveManager, onDiscord, Library, Toggles
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    J8(L9, Library)
    afq = function(vj, vk)
        local abd = fns.af7_3(setclipboard) and setclipboard
        local abe = abd
        if not abe then
            local abd_1 = fns.af7_3(toclipboard) and toclipboard
            abe = abd_1 or nil
        end
        local abd_2 = abe
        if not abd_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local abe_1 = pcall(abd_2, vj)
        if abe_1 then
            Library:Notify(vk)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        afq(KI, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = KI, Copyable = true }, "|", af7_36, "|", KO },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    afo = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Webhook = Window:AddTab({ Name = "Webhook", Icon = "webhook", Layout = "Single" }),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function afv_1(vD)
        local DiscordGroup = vD:AddLeftGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = KI,
            Buttons = {
                { Text = "Copy Invite", Icon = "copy", Copy = true },
                { Text = "Join Discord", Icon = "external-link", Func = onDiscord }
            }
        })
        return DiscordGroup
    end
    for k, v in afo do
        if k ~= "Info" then
            afv_1(v)
        end
    end
    local function afw()
        local xG
        local RollingGroup = afo.Main:AddRightGroupbox("Rolling", "dices")
        local Label8 = RollingGroup:AddLabel(L9.GetStatus(), true)
        RollingGroup:AddDivider()
        RollingGroup:AddToggle("AutoRoll", {
            Text = "Auto Roll",
            Default = false,
            Callback = function(vO)
                L9.SetAutoRoll(vO)
            end
        })
        RollingGroup:AddToggle("AutoCollect", {
            Text = "Auto Buy Roll",
            Default = false,
            Callback = function(vQ)
                L9.SetAutoCollect(vQ)
            end
        })
        RollingGroup:AddDropdown("CollectRarities", {
            Text = "Rarity Filter",
            Values = L9.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(vS)
                L9.SetCollectRarities(vS)
            end
        })
        RollingGroup:AddDropdown("CollectUnits", {
            Text = "Character Filter",
            Values = L9.UnitNameValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Expandable = true,
            Callback = function(vU)
                L9.SetCollectUnits(vU)
            end
        })
        RollingGroup:AddDropdown("CollectMutations", {
            Text = "Mutation Filter",
            Values = L9.MutationValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(vW)
                L9.SetCollectMutations(vW)
            end
        })
        local CombatGroup = afo.Main:AddLeftGroupbox("Combat", "sword")
        CombatGroup:AddToggle("AutoFarm", {
            Text = "Auto Farm Mobs",
            Default = false,
            Callback = function(vZ)
                L9.SetAutoFarm(vZ)
            end
        })
        local UnitsGroup = afo.Main:AddLeftGroupbox("Units", "swords")
        UnitsGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Callback = function(v1)
                L9.SetAutoEquipBest(v1)
            end
        })
        local TraitsGroup = afo.Main:AddLeftGroupbox("Traits", "sparkles")
        TraitsGroup:AddToggle("AutoTrait", {
            Text = "Auto Roll Trait",
            Default = false,
            Callback = function(v4)
                L9.SetAutoTrait(v4)
            end
        })
        TraitsGroup:AddDropdown("TraitUnit", {
            Text = "Character Selector",
            Values = L9.UnitValues(),
            Default = nil,
            AllowNull = true,
            Searchable = true,
            Callback = function(v6)
                L9.SetTraitUnit(v6)
            end
        })
        TraitsGroup:AddButton({
            Text = "Refresh Characters",
            Func = function()
                pcall(function()
                    Options.TraitUnit:SetValues(L9.UnitValues())
                end)
            end
        })
        TraitsGroup:AddDropdown("TraitStops", {
            Text = "Stop At Trait",
            Values = L9.TraitValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(wd)
                L9.SetTraitStops(wd)
            end
        })
        local Tabbox2 = afo.Main:AddRightTabbox()
        local ShopTab = Tabbox2:AddTab("Shop", "shopping-cart")
        local PotionsTab = Tabbox2:AddTab("Potions", "flask-conical")
        local Label7 = PotionsTab:AddLabel(L9.PotionStatus(), true)
        PotionsTab:AddDivider()
        PotionsTab:AddToggle("AutoPotions", {
            Text = "Auto Use Potions",
            Default = false,
            Callback = function(wj)
                L9.SetAutoPotions(wj)
            end
        })
        PotionsTab:AddDropdown("Potions", {
            Text = "Potions",
            Values = L9.PotionValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(wl)
                L9.SetPotions(wl)
            end
        })
        local InfiniteTowerGroup = afo.Main:AddRightGroupbox("Infinite Tower", "tower-control")
        local Label6 = InfiniteTowerGroup:AddLabel(L9.TowerStatus(), true)
        InfiniteTowerGroup:AddDivider()
        InfiniteTowerGroup:AddToggle("AutoTower", {
            Text = "Auto Infinite Tower",
            Default = false,
            Callback = function(wp)
                L9.SetAutoTower(wp)
            end
        })
        InfiniteTowerGroup:AddToggle("TowerUseInstant", {
            Text = "Spend Instant Clear Tickets",
            Default = false,
            Tooltip = "Uses tickets you already own. Never prompts a Robux purchase.",
            Callback = function(wr)
                L9.SetTowerUseInstant(wr)
            end
        })
        local ChallengesGroup = afo.Main:AddRightGroupbox("Challenges", "flag")
        local Label5 = ChallengesGroup:AddLabel(L9.ChallengeStatus(), true)
        ChallengesGroup:AddDivider()
        ChallengesGroup:AddToggle("AutoChallenges", {
            Text = "Auto Challenges",
            Default = false,
            Callback = function(wv)
                L9.SetAutoChallenges(wv)
            end
        })
        ChallengesGroup:AddDropdown("ChallengeTiers", {
            Text = "Tiers",
            Values = L9.ChallengeTierValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(wx)
                L9.SetChallengeTiers(wx)
            end
        })
        local Tabbox = afo.Main:AddLeftTabbox()
        local CloneTab = Tabbox:AddTab("Clone", "copy")
        local Label4 = CloneTab:AddLabel(L9.CloneStatus(), true)
        CloneTab:AddDivider()
        CloneTab:AddToggle("AutoClone", {
            Text = "Auto Clone",
            Default = false,
            Callback = function(wC)
                L9.SetAutoClone(wC)
            end
        })
        CloneTab:AddDropdown("CloneUnit", {
            Text = "Character Selector",
            Values = L9.UnitValues(),
            Default = nil,
            AllowNull = true,
            Searchable = true,
            Callback = function(wE)
                L9.SetCloneUnit(wE)
            end
        })
        CloneTab:AddButton({
            Text = "Refresh Characters",
            Func = function()
                pcall(function()
                    Options.CloneUnit:SetValues(L9.UnitValues())
                end)
            end
        })
        CloneTab:AddToggle("CloneRepeat", {
            Text = "Keep Cloning After Claim",
            Default = true,
            Callback = function(wK)
                L9.SetCloneRepeat(wK)
            end
        })
        local EvolveTab = Tabbox:AddTab("Evolve", "sparkle")
        local Label3 = EvolveTab:AddLabel(L9.EvolveStatus(), true)
        EvolveTab:AddDivider()
        EvolveTab:AddToggle("AutoEvolve", {
            Text = "Auto Evolve",
            Default = false,
            Callback = function(wO)
                L9.SetAutoEvolve(wO)
            end
        })
        EvolveTab:AddDropdown("EvolveUnit", {
            Text = "Character Selector",
            Values = L9.EvolveUnitValues(),
            Default = nil,
            AllowNull = true,
            Searchable = true,
            Callback = function(wQ)
                L9.SetEvolveUnit(wQ)
            end
        })
        EvolveTab:AddToggle("EvolveRepeat", {
            Text = "Keep Evolving After Claim",
            Default = true,
            Callback = function(wS)
                L9.SetEvolveRepeat(wS)
            end
        })
        local FusionTab = Tabbox:AddTab("Fusion", "git-merge")
        local Label2 = FusionTab:AddLabel(L9.FuseStatus(), true)
        FusionTab:AddDivider()
        FusionTab:AddToggle("AutoFuse", {
            Text = "Auto Fuse",
            Default = false,
            Callback = function(wW)
                L9.SetAutoFuse(wW)
            end
        })
        FusionTab:AddDropdown("FuseRarities", {
            Text = "Rarity Filter",
            Values = L9.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(wY)
                L9.SetFuseRarities(wY)
            end
        })
        FusionTab:AddSlider("FuseMaxStars", {
            Text = "Fuse Up To Stars",
            Default = 5,
            Min = 1,
            Max = 5,
            Rounding = 0,
            Callback = function(w_)
                L9.SetFuseMaxStars(w_)
            end
        })
        FusionTab:AddToggle("FuseSkipLocked", {
            Text = "Skip Locked Units",
            Default = true,
            Callback = function(w1)
                L9.SetFuseSkipLocked(w1)
            end
        })
        FusionTab:AddToggle("FuseUseEssence", {
            Text = "Use Essence When No Duplicate",
            Default = false,
            Callback = function(w3)
                L9.SetFuseUseEssence(w3)
            end
        })
        local EventGroup = afo.Main:AddRightGroupbox("Event", "ticket")
        local Label = EventGroup:AddLabel(L9.EventStatus(), true)
        EventGroup:AddDivider()
        EventGroup:AddToggle("AutoQuests", {
            Text = "Auto Claim Quests",
            Default = false,
            Callback = function(w7)
                L9.SetAutoQuests(w7)
            end
        })
        EventGroup:AddToggle("AutoEventShop", {
            Text = "Auto Buy Event Shop",
            Default = false,
            Callback = function(w9)
                L9.SetAutoEventShop(w9)
            end
        })
        EventGroup:AddDropdown("ShopItems", {
            Text = "Shop Items",
            Values = L9.ShopItemValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(xb)
                L9.SetShopItems(xb)
            end
        })
        ShopTab:AddToggle("AutoUpgrades", {
            Text = "Auto Buy Affordable Upgrades",
            Default = false,
            Callback = function(xd)
                L9.SetAutoUpgrades(xd)
            end
        })
        ShopTab:AddToggle("AutoWeapons", {
            Text = "Auto Buy Blacksmith Weapons",
            Default = false,
            Callback = function(xf)
                L9.SetAutoWeapons(xf)
            end
        })
        ShopTab:AddToggle("AutoZones", {
            Text = "Auto Buy Zones",
            Default = false,
            Callback = function(xh)
                L9.SetAutoZones(xh)
            end
        })
        local PrestigeGroup = afo.Main:AddRightGroupbox("Prestige", "star")
        PrestigeGroup:AddToggle("AutoPrestige", {
            Text = "Auto Prestige",
            Default = false,
            Callback = function(xk)
                L9.SetAutoPrestige(xk)
            end
        })
        xG = task.spawn(function()
            while true do
                task.wait(0.5)
                if Library.Unloaded then
                    break
                end
                pcall(function()
                    Label8:SetText(L9.GetStatus())
                    Label2:SetText(L9.FuseStatus())
                    Label:SetText(L9.EventStatus())
                    Label7:SetText(L9.PotionStatus())
                    Label5:SetText(L9.ChallengeStatus())
                    Label4:SetText(L9.CloneStatus())
                    Label3:SetText(L9.EvolveStatus())
                    Label6:SetText(L9.TowerStatus())
                end)
            end
        end)
        L9.Track(function()
            if coroutine.status(xG) ~= "dead" then
                pcall(task.cancel, xG)
            end
        end)
    end
    afw()
    local function afv_2()
        local yk
        local ConnectionGroup = afo.Webhook:AddRightGroupbox("Connection", "webhook")
        local Label = ConnectionGroup:AddLabel(L9.WebhookStatus(), true)
        ConnectionGroup:AddDivider()
        ConnectionGroup:AddInput("WebhookUrl", {
            Text = "Discord Webhook URL",
            Default = "",
            Placeholder = "https://discord.com/api/webhooks/...",
            Finished = true,
            AllowEmpty = true,
            Callback = function(xN)
                L9.SetWebhookUrl(xN)
            end
        })
        ConnectionGroup:AddToggle("WebhookEnabled", {
            Text = "Enable Webhook",
            Default = false,
            Callback = function(xP)
                L9.SetWebhookEnabled(xP)
            end
        })
        ConnectionGroup:AddButton({
            Text = "Send Test Message",
            Func = function()
                local abn_1
                local abm_1
                abm_1, abn_1 = L9.TestWebhook()
                local abo = abm_1 and "Webhook test sent"
                local abm_2 = abo or tostring(abn_1)
                Library:Notify(abm_2)
            end
        })
        ConnectionGroup:AddButton({
            Text = "Send Report Now",
            Func = function()
                local abr_1
                local abq_1
                abq_1, abr_1 = L9.SendWebhookNow()
                local abs = abq_1 and "Report queued"
                local abq_2 = abs or tostring(abr_1)
                Library:Notify(abq_2)
            end
        })
        local ReportsGroup = afo.Webhook:AddLeftGroupbox("Reports", "list")
        ReportsGroup:AddDropdown("WebhookEvents", {
            Text = "Events",
            Values = L9.WebhookEventValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(x2)
                L9.SetWebhookEvents(x2)
            end
        })
        ReportsGroup:AddDropdown("WebhookRarities", {
            Text = "Rarity Filter",
            Values = L9.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Callback = function(x4)
                L9.SetWebhookRarities(x4)
            end
        })
        ReportsGroup:AddSlider("WebhookInterval", {
            Text = "Send Every (seconds)",
            Default = 60,
            Min = 5,
            Max = 900,
            Rounding = 0,
            Callback = function(x6)
                L9.SetWebhookInterval(x6)
            end
        })
        local MentionsGroup = afo.Webhook:AddRightGroupbox("Mentions", "at-sign")
        MentionsGroup:AddInput("WebhookPingId", {
            Text = "Discord User ID",
            Default = "",
            Placeholder = "000000000000000000",
            Finished = true,
            AllowEmpty = true,
            Callback = function(x9)
                L9.SetWebhookPingId(x9)
            end
        })
        MentionsGroup:AddToggle("WebhookPingUser", {
            Text = "Ping Me",
            Default = false,
            Callback = function(yb)
                L9.SetWebhookPingUser(yb)
            end
        })
        MentionsGroup:AddToggle("WebhookPingEveryone", {
            Text = "Ping Everyone",
            Default = false,
            Callback = function(yd)
                L9.SetWebhookPingEveryone(yd)
            end
        })
        yk = task.spawn(function()
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                pcall(function()
                    Label:SetText(L9.WebhookStatus())
                end)
            end
        end)
        L9.Track(function()
            if coroutine.status(yk) ~= "dead" then
                pcall(task.cancel, yk)
            end
        end)
    end
    afv_2()
    local function afv_3()
        local abM
        local abT
        local abP
        local abW
        abM = nil
        abP = nil
        abT = nil
        abW = nil
        local abL, abN, abO, abQ, Label3, Label2, abU, abV, Label
        abP = function(yo)
            return (tostring(yo):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        abW = function(yq, yr)
            return string.format('<font color="%s">%s</font>', yr, abP(yq))
        end
        abQ = function(yu, yv, yw)
            return string.format("<b>%s</b> %s %s", yu, abW("-", "#5a6070"), abW(yv, yw))
        end
        local abY = "#6ec1ff"
        abU = "#e8a34d"
        abO = "#7fd47f"
        local abZ = "#8b93a3"
        local ab_ = L9.Support()
        local ab0 = #ab_ == 0 and "ready"
        local ab1 = ab0 or "limited: " .. table.concat(ab_, ", ")
        abL = "Unknown"
        pcall(function()
            local abx_1
            local abw_1
            if fns.af7_3(identifyexecutor) then
                abx_1, abw_1 = identifyexecutor()
                local aby = abx_1 ~= ""
                local abz = type(abx_1) == "string" and aby
                if abz then
                    local aby_1 = type(abw_1) == "string" and abw_1 ~= "" and abx_1 .. " " .. abw_1
                    abL = aby_1 or abx_1
                end
            end
        end)
        abT = os.clock()
        abN = function()
            local abE = math.floor(os.clock() - abT)
            if abE < 60 then
                return abE .. "s"
            elseif abE < 3600 then
                return string.format("%dm %ds", abE // 60, abE % 60)
            else
                return string.format("%dh %dm", abE // 3600, abE % 3600 // 60)
            end
        end
        local UserGroup = afo.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = K2, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(abQ("User", K2.DisplayName .. " @" .. K2.Name, abO), true)
        UserGroup:AddLabel(abQ("UserId", tostring(K2.UserId), abY), true)
        UserGroup:AddLabel(abQ("Executor", abL .. "  " .. ab1, abO), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(abQ("Session", abN(), abU), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                afq(K2.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                afq("https://www.roblox.com/users/" .. tostring(K2.UserId) .. "/profile", "Copied profile link")
            end
        })
        local ab__2 = afo.Info:AddRightGroupbox("Discord", "message-circle")
        ab__2:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = KI,
            Buttons = {
                { Text = "Copy Invite", Icon = "copy", Copy = true },
                { Text = "Join Discord", Icon = "external-link", Func = onDiscord }
            }
        })
        local ab__3 = afo.Info:AddRightGroupbox("Session", "signal")
        ab__3:AddLabel(abQ("Game", af7_36, abY), true)
        Label2 = ab__3:AddLabel(abQ("Players", "0/0", abO), true)
        abV = tostring(game.JobId)
        local abY_1 = #abV > 18 and string.sub(abV, 1, 18) .. "..."
        local ab0_2 = abY_1
        local ab5 = if ab0_2 then 1 else 0
        local ab3 = 1338 * ab5 + 3301 * (1 - ab5)
        local ab4 = 2179 * ab5 + 3747 * (1 - ab5)
        if not ((ab3 * 128 + ab4 * 601 + ab3 * ab4) % 16777213 == 4396345) then
            ab0_2 = abV
        end
        local abY_2 = ab0_2
        ab__3:AddLabel(abQ("Job", abY_2, abZ), true)
        Label = ab__3:AddLabel(abQ("Ping", "0 ms", abU), true)
        ab__3:AddDivider()
        ab__3:AddButton({
            Text = "Rejoin Place",
            Func = function()
                TeleportService:Teleport(game.PlaceId, K2)
            end
        })
        ab__3:AddButton({
            Text = "Copy Job ID",
            Func = function()
                afq(abV, "Copied Job ID")
            end
        })
        abM = task.spawn(function()
            local abH_1
            local abG_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(abQ("Session", abN(), abU))
                Label2:SetText(abQ("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), abO))
                abG_1, abH_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local abG_2 = abG_1 and abH_1 .. " ms" or "n/a"
                Label:SetText(abQ("Ping", abG_2, abU))
            end
        end)
        L9.Track(function()
            if coroutine.status(abM) ~= "dead" then
                pcall(task.cancel, abM)
            end
        end)
        local SocialsGroup = afo.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                afq(KD, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                afq(Kw, "Copied website link")
            end
        })
    end
    afv_3()
    local function afv_4()
        local zN
        local zL
        local zO
        local zM
        local MovementGroup = afo.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = afo.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        zO = {}
        zL = {}
        zM = {}
        local zK = {}
        zN = {}
        local function zP()
            for k, v in zL do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(zL)
        end
        local function zT()
            for k, v in zM do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(zM)
        end
        local function zX()
            for k, v in zN do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(zN)
        end
        local function z0(z1)
            if not z1:IsA("ProximityPrompt") then
                return
            end
            if zO[z1] == nil then
                zO[z1] = {
                    HoldDuration = z1.HoldDuration,
                    MaxActivationDistance = z1.MaxActivationDistance,
                    RequiresLineOfSight = z1.RequiresLineOfSight
                }
            end
            z1.HoldDuration = 0
            z1.MaxActivationDistance = 50
            z1.RequiresLineOfSight = false
        end
        local function z3()
            for k, v in zO do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(zO)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                zX()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                zT()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                zP()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(z0, v)
                end
            else
                z3()
            end
        end)
        table.insert(zK, Workspace.DescendantAdded:Connect(function(Am)
            if Toggles.InstantProximityPrompt.Value then
                z0(Am)
            end
        end))
        table.insert(zK, Md.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = K2.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if zL[v] == nil then
                        zL[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(zK, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = K2.Character
            local ac0 = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and ac0 then
                ac0:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(zK, Md.RenderStepped:Connect(function(AI)
            if Library.Unloaded then
                return
            end
            local Character = K2.Character
            local ac3 = Character and Character:FindFirstChildOfClass("Humanoid")
            local ac4 = Character
            if ac4 then
                ac4 = Character:FindFirstChild("HumanoidRootPart")
            end
            local ac2_1 = ac4
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and ac3 then
                if zM[ac3] == nil then
                    zM[ac3] = ac3.WalkSpeed
                end
                ac3.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and ac2_1 and ac3 and CurrentCamera then
                if zN[ac3] == nil then
                    zN[ac3] = ac3.PlatformStand
                end
                ac3.PlatformStand = true
                local ac4_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        ac4_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        ac4_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        ac4_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        ac4_4 += CurrentCamera.CFrame.RightVector
                    end
                    local ada = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                    if ada == 1 then
                        ac4_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        ac4_4 -= Vector3.new(0, 1, 0)
                    end
                end
                ac2_1.AssemblyLinearVelocity = Vector3.zero
                if ac4_4.Magnitude > 0 then
                    ac2_1.CFrame = ac2_1.CFrame + ac4_4.Unit * Options.FlySpeed.Value * AI
                end
            end
        end))
        L9.Track(function()
            for k, v in zK do
                v:Disconnect()
            end
            zP()
            zT()
            zX()
            z3()
        end)
    end
    afv_4()
    local function afv_5()
        local A_ = {}
        local AZ = {}
        local A0
        local A3 = 0
        local A1 = false
        local A2 = 0
        local A4 = os.clock()
        local MenuGroup = afo.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function A8()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local adj = not CurrentCamera or not fns.af7_3(VirtualUser.CaptureController)
            local adn = if adj then 1 else 0
            local adl = 3720 * adn + 1381 * (1 - adn)
            local adm = 1696 * adn + 2476 * (1 - adn)
            if not ((adl * 1278 + adm * 952 + adl * adm) % 16777213 == 12677872) then
                adj = not fns.af7_3(VirtualUser.ClickButton2)
            end
            if adj then
                return false
            end
            local adj_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not adj_1 then
                return false
            end
            A3 += 1
            A4 = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. A3)
            end)
            return true
        end
        local function Bq(Br)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not Br)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not Br
                end
            end)
            if not Br then
                return
            end
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(K2, "GameplayPaused", false)
                else
                    K2.GameplayPaused = false
                end
            end)
        end
        local function BG(BH)
            local adv = BH.ClassName == "ParticleEmitter" or BH.ClassName == "Trail" or BH.ClassName == "Smoke" or BH.ClassName == "Fire" or BH.ClassName == "Sparkles" or BH.ClassName == "Explosion"
            local adz = if adv then 1 else 0
            local adx = 2730 * adz + 2507 * (1 - adz)
            local ady = 3150 * adz + 1495 * (1 - adz)
            if not ((adx * 96 + ady * 3685 + adx * ady) % 16777213 == 3692117) then
                adv = BH.ClassName == "Beam"
            end
            if adv then
                if A_[BH] == nil then
                    A_[BH] = BH.Enabled
                end
                pcall(function()
                    BH.Enabled = false
                end)
            end
        end
        local function BL()
            for k, v in A_ do
                local adE = k
                local adG = v
                if adE.Parent then
                    pcall(function()
                        adE.Enabled = adG
                    end)
                end
            end
            table.clear(A_)
            if A0 then
                pcall(function()
                    settings().Rendering.QualityLevel = A0.Quality
                end)
                Lighting.GlobalShadows = A0.Shadows
                Lighting.FogEnd = A0.Fog
                A0 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(BW)
                pcall(function()
                    Md:Set3dRenderingEnabled(not BW)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(B0)
                if B0 then
                    if not A0 then
                        A0 = {
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
                    for k, v in Workspace:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                        BG(v)
                    end
                else
                    BL()
                end
            end
        })
        MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddToggle("AutoExecute", {
            Text = "Auto Execute",
            Default = false,
            Tooltip = "Re-runs this script after a teleport, server hop or rejoin.",
            Callback = function(B8)
                local adS_1
                local adR_1
                adR_1, adS_1 = L9.SetAutoExecute(B8)
                if not adR_1 then
                    Library:Notify(tostring(adS_1))
                end
            end
        })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        table.insert(AZ, K2.Idled:Connect(function()
            if Toggles.AntiAfk.Value then
                A8()
            end
        end))
        local Cp = task.spawn(function()
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                local adV = Toggles.AntiAfk.Value and os.clock() - A4 >= 60
                if adV then
                    A8()
                end
                if Toggles.AntiGameplayPause.Value then
                    Bq(true)
                end
            end
        end)
        Toggles.AntiGameplayPause:OnChanged(function(Cq)
            Bq(Cq)
        end)
        Bq(true)
        local function Cs()
            local ad9
            if A1 or not Toggles.AutoReconnect.Value then
                return
            end
            A1 = true
            A2 += 1
            ad9 = A2
            task.spawn(function()
                for i = 1, 2 do
                    local ad8 = i
                    if Library.Unloaded or not Toggles.AutoReconnect.Value or ad9 ~= A2 then
                        break
                    end
                    local wait = task.wait
                    local ad3_1 = ad8 == 1 and 1 or 3
                    wait(ad3_1)
                    if ad9 ~= A2 then
                        break
                    end
                    pcall(function()
                        if ad8 == 1 and game.JobId ~= "" then
                            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, K2)
                        else
                            TeleportService:Teleport(game.PlaceId, K2)
                        end
                    end)
                end
                A1 = false
            end)
        end
        table.insert(AZ, GuiService.ErrorMessageChanged:Connect(function()
            if Toggles.AutoReconnect.Value then
                Cs()
            end
        end))
        pcall(function()
            table.insert(AZ, TeleportService.TeleportInitFailed:Connect(function(CT)
                if CT == K2 and Toggles.AutoReconnect.Value then
                    Cs()
                end
            end))
        end)
        local ScriptGroup = afo.Settings:AddLeftGroupbox("Script", "scroll-text")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        L9.Track(function()
            for k, v in AZ do
                v:Disconnect()
            end
            if coroutine.status(Cp) ~= "dead" then
                pcall(task.cancel, Cp)
            end
            BL()
            pcall(function()
                Md:Set3dRenderingEnabled(true)
            end)
        end)
    end
    afv_5()
    local function afv_6()
        local afh, afi, afj, afk
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(afo.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/DefeatAnimeRNG")
        local afl = SaveManager:BuildConfigSection(afo.Settings)
        afh = function(Dg, Dh)
            local aen_1 = (Dg == "Toggle" and Toggles or Options)[Dh]
            local aem_2 = type(aen_1) == "table" and aen_1.Type == Dg
            return aem_2 and aen_1 or nil
        end
        afj = function(Dq, Dr)
            local Type = Dr.Type
            if Type == "Toggle" then
                return { idx = Dq, type = "Toggle", value = Dr.Value == true }
            elseif Type == "Slider" then
                return { idx = Dq, type = "Slider", value = tostring(Dr.Value) }
            elseif Type == "Dropdown" then
                return { idx = Dq, type = "Dropdown", multi = Dr.Multi == true, value = Dr.Value }
            elseif Type == "Input" then
                local aer = Dr.Value or ""
                return { idx = Dq, type = "Input", text = tostring(aer) }
            elseif Type == "ColorPicker" then
                return { idx = Dq, type = "ColorPicker", value = Dr.Value:ToHex(), transparency = Dr.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = Dq,
                    type = "KeyPicker",
                    mode = Dr.Mode,
                    key = Dr.Value,
                    modifiers = Dr.Modifiers,
                    toggled = Dr.Toggled
                }
            else
                return nil
            end
        end
        afi = function()
            local aex = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local aey = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if aey then
                        local aey_1 = afj(k, v)
                        if aey_1 then
                            aex[#aex + 1] = aey_1
                        end
                    end
                end
            end
            table.sort(aex, function(DB, DC)
                if DB.type ~= DC.type then
                    return DB.type < DC.type
                end
                return DB.idx < DC.idx
            end)
            return { objects = aex }
        end
        afk = function(DE)
            local aeR
            aeR = nil
            local aeS = type(DE) ~= "table" or type(DE.idx) ~= "string"
            local aeW = if aeS then 1 else 0
            local aeU = 1260 * aeW + 3377 * (1 - aeW)
            local aeV = 972 * aeW + 3080 * (1 - aeW)
            if not ((aeU * 957 + aeV * 616 + aeU * aeV) % 16777213 == 3029292) then
                aeS = type(DE.type) ~= "string"
            end
            if not aeS then
                aeS = SaveManager.Ignore[DE.idx]
            end
            if aeS then
                return false
            end
            aeR = afh(DE.type, DE.idx)
            if not aeR then
                return false
            end
            local aeS_1 = pcall(function()
                if DE.type == "Input" then
                    if type(DE.text) ~= "string" then
                        return
                    end
                    aeR:SetValue(DE.text)
                elseif DE.type == "ColorPicker" then
                    aeR:SetValueRGB(Color3.fromHex(DE.value), DE.transparency)
                elseif DE.type == "KeyPicker" then
                    aeR:SetValue({ DE.key, DE.mode, DE.modifiers })
                    if DE.mode == "Toggle" and DE.toggled ~= nil then
                        aeR.Toggled = DE.toggled
                        aeR:Update()
                    end
                else
                    aeR:SetValue(DE.value)
                end
            end)
            return aeS_1
        end
        afl:AddDivider()
        afl:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        afl:AddButton("Export Config to Clipboard", function()
            local aeY_1
            local aeX_1
            aeX_1, aeY_1 = pcall(HttpService.JSONEncode, HttpService, afi())
            if aeX_1 then
                local aeX_2 = fns.af7_3(setclipboard) and setclipboard
                local aeZ = aeX_2
                if not aeZ then
                    local aeX_3 = fns.af7_3(toclipboard) and toclipboard
                    aeZ = aeX_3 or nil
                end
                local aeX_4 = aeZ
                local aeZ_1 = type(aeX_4) == "function" and pcall(aeX_4, aeY_1)
                if aeZ_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        afl:AddButton("Import Config from Clipboard Text", function()
            local ae6_1
            local ae4 = Options.SaveManager_ImportSource.Value
            local ae4_1
            local afa = if ae4 then 1 else 0
            local ae8 = 1471 * afa + 1050 * (1 - afa)
            local ae9 = 3895 * afa + 1773 * (1 - afa)
            if not ((ae8 * 2714 + ae9 * 1543 + ae8 * ae9) % 16777213 == 15731824) then
                ae4 = ""
            end
            local ae5 = tostring(ae4):match("^%s*(.-)%s*$")
            if ae5 == "" then
                Library:Notify("Paste a config first")
                return
            end
            if #ae5 > 262144 then
                Library:Notify("Config is too large")
                return
            end
            ae4_1, ae6_1 = pcall(HttpService.JSONDecode, HttpService, ae5)
            local ae5_1 = not ae4_1 or type(ae6_1) ~= "table" or type(ae6_1.objects) ~= "table"
            if ae5_1 then
                Library:Notify("Invalid config payload")
                return
            end
            if #ae6_1.objects > 2048 then
                Library:Notify("Config has too many records")
                return
            end
            local ae4_2 = 0
            local ae5_2 = 0
            for i, v in ipairs(ae6_1.objects) do
                if afk(v) then
                    ae5_2 += 1
                else
                    ae4_2 += 1
                end
            end
            Options.SaveManager_ImportSource:SetValue("")
            Library:Notify(string.format("Imported %d settings (%d skipped)", ae5_2, ae4_2), 6)
        end)
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUIOnStart and Toggles.HideUIOnStart.Value then
            pcall(function()
                Library:Toggle(false)
            end)
        end
    end
    afv_6()
    if Options.CollectRarities then
        L9.SetCollectRarities(Options.CollectRarities.Value)
    end
    if Options.CollectUnits then
        L9.SetCollectUnits(Options.CollectUnits.Value)
    end
    if Options.CollectMutations then
        L9.SetCollectMutations(Options.CollectMutations.Value)
    end
    if Options.TraitStops then
        L9.SetTraitStops(Options.TraitStops.Value)
    end
    if Options.TraitUnit then
        L9.SetTraitUnit(Options.TraitUnit.Value)
    end
    if Toggles.AutoRoll then
        L9.SetAutoRoll(Toggles.AutoRoll.Value)
    end
    if Toggles.AutoCollect then
        L9.SetAutoCollect(Toggles.AutoCollect.Value)
    end
    if Options.WebhookUrl then
        L9.SetWebhookUrl(Options.WebhookUrl.Value)
    end
    if Options.WebhookInterval then
        L9.SetWebhookInterval(Options.WebhookInterval.Value)
    end
    if Options.WebhookEvents then
        L9.SetWebhookEvents(Options.WebhookEvents.Value)
    end
    if Options.WebhookRarities then
        L9.SetWebhookRarities(Options.WebhookRarities.Value)
    end
    if Options.WebhookPingId then
        L9.SetWebhookPingId(Options.WebhookPingId.Value)
    end
    if Toggles.WebhookPingUser then
        L9.SetWebhookPingUser(Toggles.WebhookPingUser.Value)
    end
    if Toggles.WebhookPingEveryone then
        L9.SetWebhookPingEveryone(Toggles.WebhookPingEveryone.Value)
    end
    if Toggles.WebhookEnabled then
        L9.SetWebhookEnabled(Toggles.WebhookEnabled.Value)
    end
    if Toggles.AutoExecute then
        L9.SetAutoExecute(Toggles.AutoExecute.Value)
    end
    if Options.Potions then
        L9.SetPotions(Options.Potions.Value)
    end
    if Options.ChallengeTiers then
        L9.SetChallengeTiers(Options.ChallengeTiers.Value)
    end
    if Options.CloneUnit then
        L9.SetCloneUnit(Options.CloneUnit.Value)
    end
    if Toggles.CloneRepeat then
        L9.SetCloneRepeat(Toggles.CloneRepeat.Value)
    end
    if Options.EvolveUnit then
        L9.SetEvolveUnit(Options.EvolveUnit.Value)
    end
    if Toggles.EvolveRepeat then
        L9.SetEvolveRepeat(Toggles.EvolveRepeat.Value)
    end
    if Toggles.AutoPotions then
        L9.SetAutoPotions(Toggles.AutoPotions.Value)
    end
    if Toggles.AutoChallenges then
        L9.SetAutoChallenges(Toggles.AutoChallenges.Value)
    end
    if Toggles.AutoClone then
        L9.SetAutoClone(Toggles.AutoClone.Value)
    end
    if Toggles.AutoEvolve then
        L9.SetAutoEvolve(Toggles.AutoEvolve.Value)
    end
    if Toggles.TowerUseInstant then
        L9.SetTowerUseInstant(Toggles.TowerUseInstant.Value)
    end
    if Toggles.AutoTower then
        L9.SetAutoTower(Toggles.AutoTower.Value)
    end
    if Options.FuseRarities then
        L9.SetFuseRarities(Options.FuseRarities.Value)
    end
    if Options.FuseMaxStars then
        L9.SetFuseMaxStars(Options.FuseMaxStars.Value)
    end
    if Toggles.FuseSkipLocked then
        L9.SetFuseSkipLocked(Toggles.FuseSkipLocked.Value)
    end
    if Toggles.FuseUseEssence then
        L9.SetFuseUseEssence(Toggles.FuseUseEssence.Value)
    end
    if Options.ShopItems then
        L9.SetShopItems(Options.ShopItems.Value)
    end
    if Toggles.AutoFuse then
        L9.SetAutoFuse(Toggles.AutoFuse.Value)
    end
    if Toggles.AutoQuests then
        L9.SetAutoQuests(Toggles.AutoQuests.Value)
    end
    if Toggles.AutoEventShop then
        L9.SetAutoEventShop(Toggles.AutoEventShop.Value)
    end
    if Toggles.AutoFarm then
        L9.SetAutoFarm(Toggles.AutoFarm.Value)
    end
    if Toggles.AutoEquipBest then
        L9.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
    end
    if Toggles.AutoUpgrades then
        L9.SetAutoUpgrades(Toggles.AutoUpgrades.Value)
    end
    if Toggles.AutoWeapons then
        L9.SetAutoWeapons(Toggles.AutoWeapons.Value)
    end
    if Toggles.AutoTrait then
        L9.SetAutoTrait(Toggles.AutoTrait.Value)
    end
    if Toggles.AutoPrestige then
        L9.SetAutoPrestige(Toggles.AutoPrestige.Value)
    end
    if Toggles.AutoZones then
        L9.SetAutoZones(Toggles.AutoZones.Value)
    end
end
af7_114, fns.af7_106 = pcall(af7_122)
if not af7_114 then
    af7_27 = 6
    repeat
        af7_7 = {
            "ivbs",
            "prcfo",
            "xhkf",
            "bvpllvccfw",
            "aum",
            "hwjglumemjo",
            "nbztyzw",
            "wthmtjc",
            "lwpskrv",
            "css",
            "jojfdyaicvb",
            "sloulefab",
            "urudqjjtmqbz",
            "sdmswqlrb"
        }
        if af7_7[(af7_27 * 55 + 18) % 14 + 1] <= af7_7[(af7_27 * 55 + 18) % 14 + 1] then
            L9.Unload()
            error(fns.af7_106, 0)
        else
            fns.af7_106.Unload()
            error(L9, 0)
        end
        af7_27 = (af7_27 + 4) % 8
    until (af7_27 * 3 + 5) % 8 == 3
end
