local fns = {}
local abs_20, abs_22, abs_24, abs_25, abs_28, UnitUtil, abs_31, abs_34, abs_36, abs_37, abs_39, abs_40, abs_42, abs_43, PlayerGui, abs_50, abs_53, abs_56, abs_60, abs_63, abs_67, abs_72, abs_76, abs_80, abs_83, abs_85, abs_89, abs_93, abs_96
fns.abs_1 = nil
fns.abs_4 = nil
fns.abs_7 = nil
fns.abs_10 = nil
fns.abs_13 = nil
fns.abs_16 = nil
fns.abs_18 = nil
fns.abs_19 = nil
abs_24 = nil
abs_25 = nil
UnitUtil = nil
abs_31 = nil
abs_36 = nil
abs_37 = nil
abs_39 = nil
abs_42 = nil
abs_43 = nil
PlayerGui = nil
abs_50 = nil
local Ft
local Ga
local Et
local Gt
local ES
local Fz
local Gg
local Ez
local EY
local GF
local Gm
local EF
local GL
local FL
local E3
local Fs
local F9
local GR
local Es
local Gy
local Fy
local ER
local Ey
local Ff
local FX
local EX
local FE
local Gl
local EE
local Fl
local GE
local GK
local Gr
local EK
local Fr
local Er
local GQ
local LocalPlayer
local Gx
local EQ
local Ex
local GD
local Gk
local Fk
local F1
local GJ
local E1
local FJ
local Gq
local Fq
local F7
local GP
local E7
local EP
local Fw
local Gd
local Gw
local Fd
local FV
local Ew
local EV
local HttpService
local EC
local Fj
local GI
local FI
local Gp
local E0
local F6
local E6
local GO
local Gv
local FO
local Fv
local Gc
local Fc
local FU
local GB
local FB
local Gi
local EB
local F_
local E_
local FH
local EH
local F5
local EntryRegistry
local FN
local GN
local EN
local Fu
function fns.fn9()
    local Ku = Fq()
    local Kv = Ku > 0 and EV() >= Ku
    return Kv
end
function fns.fn43()
    EN(Fc, "Copied Discord invite to clipboard")
end
function fns.fn60()
    local lG = Ez()
    abs_39 = abs_39 % #lG + 1
    abs_24 = 0
    return lG[abs_39]
end
function fns.fn61(dy)
    local KD_1
    if type(dy) ~= "table" then
        return nil
    end
    local Kz = EntryRegistry.getEntryConfig(dy.name)
    if not Kz or Kz.kind ~= "Unit" then
        return nil
    elseif type(Kz.getRarity) == "function" then
        local getRarity = Kz.getRarity
        local KB = {}
        local KB_1
        local KC = dy.attributes or KB
        KB_1, KD_1 = pcall(getRarity, KC)
        local KA_2 = KB_1 and type(KD_1) == "string"
        if KA_2 then
            return KD_1
        elseif type(Kz.rarity) == "string" then
            return Kz.rarity
        else
            return nil
        end
    elseif type(Kz.rarity) == "string" then
        return Kz.rarity
    else
        return nil
    end
end
function fns.fn63(ca)
    local Js = {}
    local Jt = ES(ca)
    if type(Jt) == "table" then
        for k, v in Jt do
            Js[k] = v
        end
    end
    if type(ca) == "table" then
        local Jt_1 = rawget(ca, "___C")
        if type(Jt_1) == "table" then
            for k, v in Jt_1 do
                if Js[k] == nil then
                    local Jt_2 = ES(v)
                    if Jt_2 ~= nil then
                        Js[k] = Jt_2
                    end
                end
            end
        end
    end
    return Js
end
function fns.worker4()
    while not E6.Unloaded do
        task.wait(0.4)
        pcall(E1)
        if F9("AutoGrade") then
            pcall(Ex)
        end
        if F9("AutoTrait") then
            pcall(Fu)
        end
        if F9("AutoLock") then
            pcall(abs_42)
        end
        if F9("AutoSellAll") then
            pcall(abs_36)
        else
            local Wx = F9("SellAllWhenFull") and GF()
            if Wx then
                pcall(abs_36)
            end
        end
    end
end
function fns.fn90(dQ, dR)
    if dQ.luck ~= dR.luck then
        return dQ.luck < dR.luck
    end
    return dQ.name < dR.name
end
function fns.fn103(dq, dr)
    if type(dq) ~= "table" then
        return nil
    end
    local attributes = dq.attributes
    if type(attributes) ~= "table" then
        return nil
    end
    return attributes[dr]
end
function fns.fn117()
    local Tower = Fv.Root.Tower
    local PT = Tower and Tower.Screen
    local PU = Tower
    if PU then
        PU = Tower.Hidden
    end
    local PS_1 = PU
    local PU_1 = PT ~= nil and PT.Visible == true
    local PZ = if PU_1 then 1 else 0
    local PX = 1807 * PZ + 1272 * (1 - PZ)
    local PY = 3194 * PZ + 88 * (1 - PZ)
    if not ((PX * 1831 + PY * 3309 + PX * PY) % 16777213 == 2871908) then
        PU_1 = PS_1 ~= nil and PS_1.Visible == true
    end
    return PU_1
end
function fns.fn131(od)
    if #od > 0 then
        fns.abs_7(Gp, od)
    end
end
function fns.fn146()
    local Pf = GD()
    local Pg = Pf and Pf:FindFirstChild("HumanoidRootPart")
    return Pg
end
function fns.fn156()
    local KI = {}
    for k, v in GB() do
        local KJ = type(v) == "table" and type(v.unitId) == "string"
        if KJ then
            KI[v.unitId] = true
        end
    end
    return KI
end
function fns.fn163(hr)
    local M1 = Fr(hr)
    local M9 = if not Fd(FI(Fl.UnitWebhookRarity), M1) then 1 else 0
    if M9 == 1 then
        return
    end
    if not Fd(FI(Fl.UnitWebhookCharacters), hr.name) then
        return
    end
    local M2 = F7(hr, "mutation")
    local M3 = M2 == ""
    local M4 = type(M2) ~= "string" or M3
    if M4 then
        M2 = nil
    end
    local M3_1 = #fns.abs_1 + 1
    local M4_1 = hr.name or "Unit"
    local M5 = M1 or "Unknown"
    fns.abs_1[M3_1] = { name = M4_1, rarity = M5, mutation = M2 }
    if #fns.abs_1 > 80 then
        table.remove(fns.abs_1, 1)
    end
end
function fns.fn191()
    local Lg = Fv.Root and Fv.Root.Tower
    if not Lg then
        return
    end
    local Screen = Lg:FindFirstChild("Screen")
    local Hidden = Lg:FindFirstChild("Hidden")
    local Background = Lg:FindFirstChild("Background")
    local Lh_1 = Screen and Screen:IsA("GuiObject") and Screen.Visible
    local Lk = Lh_1
    if not Lk then
        local Lh_2 = Hidden and Hidden:IsA("GuiObject") and Hidden.Visible
        Lk = Lh_2
    end
    local Lh_3 = Lk
    local Lk_1 = F9("HideTowerCombatUI") and Lh_3
    if not Lk_1 then
        if FJ then
            Fz()
        end
        return
    end
    if not FN then
        FN = {}
        for k, v in { Screen, Hidden, Background } do
            local Lh_4 = v and v:IsA("GuiObject")
            if Lh_4 then
                FN[v.Name] = v.Position
            end
        end
    end
    local Lh_5 = UDim2.fromScale(4, 4)
    for k, v in { Screen, Hidden, Background } do
        local Lg_2 = v and v:IsA("GuiObject")
        if Lg_2 then
            v.Position = Lh_5
        end
    end
    FJ = true
end
function fns.fn200()
    local InventoryWebhookUrl = Fl.InventoryWebhookUrl
    local NS = InventoryWebhookUrl and InventoryWebhookUrl.Value
    if type(NS) ~= "string" then
        return nil
    end
    local NR_2 = string.gsub(NS, "^%s+", "")
    local NR_3 = string.gsub(NR_2, "%s+$", "")
    local NS_1 = NR_3 == ""
    if not NS_1 then
        local NT = string.find(NR_3, "discord.com/api/webhooks/") or string.find(NR_3, "discordapp.com/api/webhooks/")
        NS_1 = not NT
    end
    if NS_1 then
        return nil
    end
    return NR_3
end
function fns.fn211(en, eo)
    return en.order < eo.order
end
function fns.fn217()
    local RB = Ff()
    for k, v in Gx do
        if not fns.abs_16(v) then
            local RC = Gq[v]
            local RD = RC and tonumber(RC.price)
            local RC_1 = RD
            if RD then
                RD = RB >= RC_1
            end
            if RD then
                Gl(EF, v)
                return
            end
        end
    end
end
function fns.fn340()
    if not F9("AutoTowerRotate") then
        local Qv_1 = Fl.AutoTowerMode and Fl.AutoTowerMode.Value
        local Qv_2 = Qv_1 == ""
        local Qx = type(Qv_1) ~= "string" or Qv_2
        if Qx then
            return "Infinity Tower"
        end
        return Qv_1
    end
    local Qv_3 = Ez()
    if abs_39 < 1 or abs_39 > #Qv_3 then
        abs_39 = 1
        abs_24 = 0
    end
    return Qv_3[abs_39]
end
function fns.fn349()
    local Se = FI(Fl.AutoLockRarity)
    if next(Se) == nil then
        return
    end
    if os.clock() - GR < 0.25 then
        return
    end
    local Sf = false
    local Sg = {}
    for k, v in Et() do
        local Sh = type(v) ~= "table" or FL(v)
        if not Sh then
            local Sh_1 = Fr(v)
            if Sh_1 and Se[Sh_1] == true then
                Sg[k] = true
                Sf = true
            end
        end
    end
    if Sf then
        GR = os.clock()
        Gl(FU, Sg)
    end
end
function fns.fn399(iz)
    local NY = tonumber(iz) or 0
    iz = NY
    if iz < 1000 then
        return tostring(math.floor(iz))
    end
    local NY_1 = 1
    while iz >= 1000 and NY_1 < #FX do
        iz /= 1000
        NY_1 += 1
    end
    return string.format("%.2f%s", iz, FX[NY_1])
end
function fns.fn430()
    local JR = ES(GK.Dice) or ""
    return tostring(JR)
end
function fns.fn440(bD, bE)
    if setclipboard then
        setclipboard(bD)
    elseif toclipboard then
        toclipboard(bD)
    end
    E6:Notify(bE)
end
function fns.fn443()
    gethui = FH
end
function fns.onAutoTowerRotate()
    abs_39 = 0
    abs_24 = 0
    Ga = false
end
function fns.fn456(bT)
    local Jg = bT and bT.Value
    if type(Jg) ~= "table" then
        return {}
    end
    return Jg
end
function fns.fn473()
    local K6 = Fv.Root and Fv.Root.Tower
    if not K6 or not FN then
        FJ = false
        return
    end
    for k, v in FN do
        local K6_2 = K6:FindFirstChild(k)
        local K8_1 = K6_2 and K6_2:IsA("GuiObject")
        if K8_1 then
            K6_2.Position = v
        end
    end
    FJ = false
end
function fns.fn488(bX, bY)
    if next(bX) == nil then
        return true
    end
    return bY ~= nil and bX[bY] == true
end
function fns.fn504()
    local UnitWebhookInterval = Fl.UnitWebhookInterval
    local M_ = UnitWebhookInterval and tonumber(UnitWebhookInterval.Value)
    if not M_ then
        return 30
    end
    return math.clamp(math.floor(M_), 5, 300)
end
function fns.fn592(iE, iF)
    if #iE == 0 then
        return iF or "None"
    end
    local N0_2 = 10
    local N1 = {}
    for k, v in iE do
        if N0_2 + #v + 1 > 1000 then
            N1[#N1 + 1] = "..."
            break
        end
        N0_2 += #v + 1
        N1[#N1 + 1] = v
    end
    return "```\n" .. table.concat(N1, "\n") .. "\n```"
end
function fns.fn596()
    local AutoTowerRunsPerMap = Fl.AutoTowerRunsPerMap
    local Qq = AutoTowerRunsPerMap and tonumber(AutoTowerRunsPerMap.Value)
    local Qp_1 = Qq or 1
    return math.max(1, math.floor(Qp_1))
end
function fns.fn604()
    E_(fns.abs_10())
end
function fns.worker6()
    while not E6.Unloaded do
        pcall(EE)
        pcall(Gy, false)
        if F9("InventoryWebhook") then
            pcall(Gg, false)
        end
        task.wait(0.5)
    end
end
function fns.fn658()
    local InventoryWebhookInterval = Fl.InventoryWebhookInterval
    local NW = InventoryWebhookInterval and tonumber(InventoryWebhookInterval.Value)
    local NV_1 = NW or 15
    return math.clamp(math.floor(NV_1), 1, 240) * 60
end
function fns.fn668()
    Gl(GL)
end
function fns.fn725(cO)
    local J2 = Et()
    local J3 = J2[cO]
    if type(J3) == "table" then
        local J4 = tonumber(J3.amount) or 0
        return J4
    end
    local J3_1 = 0
    for k, v in J2 do
        local J2_1 = type(v) == "table" and v.name == cO
        if J2_1 then
            local J2_2 = tonumber(v.amount) or 0
            J3_1 += J2_2
        end
    end
    return J3_1
end
function fns.fn744()
    pcall(Fz)
    pcall(Gy, true)
end
function fns.worker8()
    while not E6.Unloaded do
        task.wait(0.5)
        if F9("AutoClaimQuest") then
            pcall(FV)
        end
    end
end
function fns.fn827(hT)
    local Nt = {}
    local Nu = {}
    for k, v in hT do
        local concat = table.concat
        local rarity = v.rarity
        local name = v.name
        local Ny = v.mutation or ""
        local Nw_1 = concat({ rarity, name, Ny }, "\x00")
        local Nv_2 = Nu[Nw_1]
        if Nv_2 then
            Nv_2.count = Nv_2.count + 1
        else
            local Nv_3 = { rarity = v.rarity, name = v.name, mutation = v.mutation, count = 1 }
            Nu[Nw_1] = Nv_3
            Nt[#Nt + 1] = Nv_3
        end
    end
    local Nv_4 = {}
    for k, v in Nt do
        local Nt_1 = v.rarity .. "  " .. v.name
        if v.mutation then
            Nt_1 ..= "  " .. v.mutation
        end
        if v.count > 1 then
            Nt_1 ..= "  x" .. tostring(v.count)
        end
        Nv_4[#Nv_4 + 1] = Nt_1
    end
    local Nt_2 = table.concat(Nv_4, "\n")
    if #Nt_2 > 3800 then
        Nt_2 = string.sub(Nt_2, 1, 3790) .. "\n…"
    end
    return Nt_2, #hT
end
function fns.onHideTowerCombatUI(gQ)
    if not gQ then
        Fz()
    end
end
function fns.fn840()
    local Pr = fns.abs_18.GetNext(EY())
    local Ps = type(Pr) == "table"
    if Ps then
        local Pt = Ff()
        local Pu = tonumber(Pr.cost) or math.huge
        Ps = Pt >= Pu
    end
    if Ps then
        Gl(F6)
    end
end
function fns.worker3()
    while not E6.Unloaded do
        task.wait(0.45)
        if F9("AutoCollectMoney") then
            pcall(Fj)
        end
        if F9("AutoRebirth") then
            pcall(Ew)
        end
        if F9("AutoEquipBest") then
            pcall(FO)
        end
        if F9("AutoEquipBestDice") then
            pcall(Gw)
        end
        if F9("AutoBuyUpgrades") then
            pcall(Fk)
        end
        if F9("AutoUpgradePlaced") then
            pcall(E3)
        end
        if F9("AutoBuyDice") then
            pcall(Gm)
        end
        if F9("AutoUsePotions") then
            pcall(abs_37)
        end
    end
end
function fns.fn902()
    return Gk(GK.Slots)
end
function fns.fn904()
    abs_43 = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end
function fns.fn905()
    return Gk(GK.Inventory)
end
function fns.fn926(c_)
    local Kc = Gv()[c_]
    if type(Kc) ~= "table" then
        return 0
    end
    local Kd = tonumber(Kc.remaining)
    if Kd and Kd > 0 then
        local Ke_1 = tonumber(Kc.startedAt)
        if Ke_1 then
            Kd -= math.max(0, workspace:GetServerTimeNow() - Ke_1)
        end
        return math.max(0, Kd)
    end
    local Kd_1 = tonumber(Kc.expiresAt)
    if Kd_1 then
        return math.max(0, Kd_1 - os.time())
    end
    return 0
end
function fns.worker7()
    while not E6.Unloaded do
        pcall(EB)
        task.wait(0.1)
    end
end
function fns.fn956()
    local Qg = FI(Fl.AutoTowerRotateMaps)
    local Qh = {}
    for k, v in Gt do
        if Qg[v] == true then
            Qh[#Qh + 1] = v
        end
    end
    if #Qh == 0 then
        Qh = Gt
    end
    return Qh
end
function fns.fn958(jy)
    local O2_1
    local O_ = not jy
    if O_ ~= false then
        O_ = not F9("InventoryWebhook")
    end
    if O_ then
        return
    end
    local O__1 = abs_50()
    local O0 = not EC
    local O0_2
    local O1 = not O__1
    local O1_1
    local Pa = if O1 then 1 else 0
    local O8 = 2080 * Pa + 3366 * (1 - Pa)
    local O9 = 2439 * Pa + 1839 * (1 - Pa)
    if not ((O8 * 2877 + O9 * 1757 + O8 * O9) % 16777213 == 15342603) then
        O1 = O0
    end
    if O1 then
        return
    end
    local O0_1 = not jy
    if O0_1 ~= false then
        O0_1 = os.clock() - EQ < Gr()
    end
    if O0_1 then
        return
    end
    EQ = os.clock()
    O2_1, O1_1, O0_2 = Es()
    local json = HttpService:JSONEncode({
        username = "Ouroboros",
        embeds = {
            {
                title = "Inventory Snapshot",
                description = string.format("**%s**  •  %d units  •  %d items", LocalPlayer.Name, O1_1, O0_2),
                color = 15899332,
                fields = O2_1,
                footer = { text = abs_43 .. "  •  Ouroboros " .. ER }
            }
        }
    })
    pcall(EC, { Url = O__1, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })
end
function fns.onSendNow()
    if not abs_50() then
        E6:Notify("Set a valid Discord webhook URL first", 4)
        return
    end
    task.spawn(Gg, true)
    E6:Notify("Inventory snapshot sent")
end
function fns.fn1090()
    local QL = -1
    local QM
    for k, v in Gq do
        if fns.abs_16(k) then
            local QN_1 = tonumber(v.luck) or 0
            if QN_1 > QL then
                QL = QN_1
                QM = k
            end
        end
    end
    local QN_2 = QM and EK() ~= QM
    if QN_2 then
        Gl(abs_25, QM)
    end
end
function fns.fn1108()
    local Pc = GD()
    local Pd = Pc and Pc:FindFirstChildOfClass("Humanoid")
    return Pd
end
function fns.fn1124(iL, iM)
    if #iL > 20 then
        iL = string.sub(iL, 1, 19) .. "."
    end
    return string.format("%-20s x%s", iL, iM)
end
function fns.fn1126()
    local AutoTowerStopFloor = Fl.AutoTowerStopFloor
    local Qe = AutoTowerStopFloor and tonumber(AutoTowerStopFloor.Value)
    if not Qe or Qe <= 0 then
        return 0
    end
    return math.floor(Qe)
end
function fns.fn1153()
    local Pi = EY()
    local Pj = F_.GetMaxSlots()
    local Pk = type(Pj) ~= "number" or Pj < 1
    if Pk then
        Pj = 13
    end
    local Po = 1
    local Pm = Pj
    while Po <= Pm do
        local Pp = Po
        local Pj_1 = F_.GetSlotRebirthRequirement(Pp) or 0
        if Pi >= Pj_1 then
            Gl(GQ, Pp)
        end
        Po += 1
    end
end
function fns.fn1159(bK)
    local DiscordGroup = bK:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = Er })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = Er })
end
function fns.fn1196()
    local UnitWebhookUrl = Fl.UnitWebhookUrl
    local MU = UnitWebhookUrl and UnitWebhookUrl.Value
    if type(MU) ~= "string" then
        return nil
    end
    local MT_2 = string.gsub(MU, "^%s+", "")
    local MT_3 = string.gsub(MT_2, "%s+$", "")
    if MT_3 == "" then
        return nil
    end
    local MU_1 = not string.find(MT_3, "discord.com/api/webhooks/") and not string.find(MT_3, "discordapp.com/api/webhooks/")
    if MU_1 then
        return nil
    end
    return MT_3
end
function fns.fn1225()
    return PlayerGui
end
function fns.fn1244()
    local PQ = os.clock()
    if PQ - Ft < 1.05 then
        return
    end
    Ft = PQ
    Gl(Fw)
end
function fns.fn1266()
    fns.abs_7(EP)
end
function fns.fn1343()
    local JK = tonumber(ES(GK.Money)) or 0
    return JK
end
function fns.fn1351()
    return LocalPlayer.Character
end
function fns.fn1356()
    return Gk(GK.ActiveEntries)
end
function fns.fn1391(ef, eg)
    return ef.order < eg.order
end
function fns.fn1408(bO)
    local Jd = Fs[bO]
    return Jd ~= nil and Jd.Value == true
end
function fns.fn1416(h5)
    local NP_1
    if #fns.abs_1 == 0 then
        return
    end
    local NM = not h5
    if NM ~= false then
        NM = os.clock() - GP < F5()
    end
    if NM then
        return
    end
    if not F9("UnitWebhook") then
        table.clear(fns.abs_1)
        return
    end
    local NM_1 = GI()
    local NO = not NM_1 or not EC
    local NO_1
    if NO then
        return
    end
    local NN_1 = fns.abs_1
    fns.abs_1 = {}
    GP = os.clock()
    NP_1, NO_1 = fns.abs_19(NN_1)
    local json = HttpService:JSONEncode({
        username = "Ouroboros",
        embeds = {
            {
                description = NP_1,
                color = 15899332,
                footer = { text = LocalPlayer.Name .. "  ·  " .. tostring(NO_1) .. " obtained" }
            }
        }
    })
    pcall(EC, { Url = NM_1, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })
end
function fns.worker5()
    while not E6.Unloaded do
        if F9("AutoTower") then
            pcall(GJ)
        else
            task.wait(0.25)
        end
    end
end
function fns.fn1449()
    local Tower = Fv.Root.Tower
    local P0 = Tower and Tower.Screen
    local P1 = Tower
    if P1 then
        P1 = Tower.Hidden
    end
    local P__1 = P1
    local P0_1 = nil
    if P0 and P0.Floor then
        P0_1 = P0.Floor.Text
    end
    local P1_2 = P0_1 == ""
    local P2_1 = type(P0_1) ~= "string" or P1_2
    if P2_1 and P__1 and P__1.Label then
        P0_1 = P__1.Label.Text
    end
    if type(P0_1) ~= "string" then
        return 0
    end
    local P__2 = (tonumber(string.match(P0_1, "%d+")))
    local Qc = if P__2 then 1 else 0
    local Qa = 2388 * Qc + 783 * (1 - Qc)
    local Qb = 3602 * Qc + 874 * (1 - Qc)
    if not ((Qa * 597 + Qb * 378 + Qa * Qb) % 16777213 == 11388768) then
        P__2 = 0
    end
    return P__2
end
function fns.fn1480()
    local Kk = 0
    for k, v in Et() do
        if type(v) == "table" then
            local Kl = EntryRegistry.getEntryConfig(v.name)
            if Kl and Kl.kind == "Unit" then
                Kk += 1
            end
        end
    end
    return Kk
end
function fns.fn1493()
    local Na = Et()
    if Ey == nil then
        Ey = {}
        for k, v in Na do
            local Nb_1 = type(k) == "string" and type(v) == "table"
            if Nb_1 then
                local Nb_2 = EntryRegistry.getEntryConfig(v.name)
                if Nb_2 and Nb_2.kind == "Unit" then
                    Ey[k] = true
                end
            end
        end
        return
    end
    local Nb_3 = F9("UnitWebhook")
    for k, v in Na do
        local Na_1 = type(k) ~= "string" or type(v) ~= "table" or Ey[k]
        if not Na_1 then
            local Na_2 = EntryRegistry.getEntryConfig(v.name)
            if not not (Na_2 and Na_2.kind == "Unit") then
                Ey[k] = true
                if Nb_3 then
                    FB(v)
                end
            end
        end
    end
end
function fns.fn1494(dv)
    return F7(dv, "locked") == true
end
function fns.fn1518()
    local R1 = if fns.abs_13("Trait Reroll") < 1 then 1 else 0
    if R1 == 1 then
        return
    end
    local RV = EX(Fl.AutoTraitUnit)
    if not RV then
        return
    end
    local RW = Et()
    local RX = RW[RV]
    if type(RX) ~= "table" then
        return
    end
    local RW_1 = FI(Fl.AutoTraitTarget)
    local RY = F7(RX, "trait")
    local RX_1 = type(RY) == "string" and RW_1[RY]
    if RX_1 then
        return
    end
    Gl(Gd, RV, true)
end
function fns.fn1528()
    local VU = FI(Fl.AutoUsePotionTarget)
    if next(VU) == nil then
        return
    end
    if os.clock() - GN < 0.75 then
        return
    end
    local VV = Et()
    for k, v in VV do
        if not (type(v) ~= "table") then
            local name = v.name
            local VW = type(name) == "string" and VU[name] == true
            if not not VW then
                local V5 = if GO[name] ~= "Boost" then 1 else 0
                local V3 = 4004 * V5 + 2758 * (1 - V5)
                local V4 = 1014 * V5 + 2679 * (1 - V5)
                if not ((V3 * 3579 + V4 * 3654 + V3 * V4) % 16777213 == 5318315) then
                    local VW_1 = tonumber(v.amount) or 0
                    if not (VW_1 < 1) then
                        if not (Gc(name) > 1) then
                            GN = os.clock()
                            Gl(F1, k)
                            return
                        end
                    end
                end
            end
        end
    end
end
function fns.worker2()
    while not E6.Unloaded do
        if F9("AutoRoll") then
            pcall(FE)
        end
        task.wait(0.15)
    end
end
function fns.fn1555()
    local Kh_1
    local Kg_1
    Kg_1, Kh_1 = pcall(fns.abs_4.GetBuff, "Unit Storage")
    local Ki = Kg_1 and tonumber(Kh_1)
    return Ki or 0
end
function fns.fn1559()
    if fns.abs_13("Gems") < 1 then
        return
    end
    local RQ = EX(Fl.AutoGradeUnit)
    if not RQ then
        return
    end
    local RR = Et()
    local RS = RR[RQ]
    if type(RS) ~= "table" then
        return
    end
    local RR_1 = FI(Fl.AutoGradeTarget)
    local RT = F7(RS, "grade")
    local RS_1 = type(RT) == "string" and RR_1[RT]
    if RS_1 then
        return
    end
    Gl(Gi, RQ, true)
end
function fns.worker()
    while E6 and not E6.Unloaded do
        E0()
        task.wait(1)
    end
end
function fns.fn1613(nq)
    local RL = nq and nq.Value
    local RL_1 = RL == ""
    local RN = type(RL) ~= "string" or RL_1
    if RN or RL == "None" then
        return nil
    end
    return abs_31[RL]
end
function fns.fn1620()
    local Rh = FI(Fl.AutoUpgradeRarity)
    local Ri = FI(Fl.AutoUpgradeCharacters)
    local Rj = 0
    if Fl.AutoUpgradeLevelLimit then
        local Rk_1 = tonumber(Fl.AutoUpgradeLevelLimit.Value)
        if Rk_1 and Rk_1 > 0 then
            Rj = math.floor(Rk_1)
        end
    end
    local Rk_2 = Et()
    local Rl_2 = GB()
    local Rm = Ff()
    local Rn = EY()
    local Ro = F_.GetMaxSlots()
    local Rp = type(Ro) ~= "number" or Ro < 1
    if Rp then
        Ro = 13
    end
    local Ry = 1
    local Rw = Ro
    while Ry <= Rw do
        local Rz = Ry
        if E6.Unloaded then
            return
        end
        local Ro_1 = F_.GetSlotRebirthRequirement(Rz) or 0
        if not (Rn < Ro_1) then
            local Ro_2 = Rl_2[Rz] or Rl_2[tostring(Rz)]
            local Ro_3 = type(Ro_2) ~= "table" or type(Ro_2.unitId) ~= "string"
            if not Ro_3 then
                local Ro_4 = Rk_2[Ro_2.unitId]
                if not (type(Ro_4) ~= "table") then
                    if not not Fd(Ri, Ro_4.name) then
                        if not not Fd(Rh, Fr(Ro_4)) then
                            local Rp_2 = Ro_4.attributes
                            if type(Rp_2) ~= "table" then
                                Rp_2 = {}
                            end
                            local Rq = tonumber(Rp_2.level) or 1
                            local Rq_2
                            local Rr_1
                            if not (Rj > 0 and Rq >= Rj) then
                                Rq_2, Rr_1 = pcall(UnitUtil.GetLevelPrice, Ro_4.name, Rp_2)
                                local Ro_5 = Rq_2 and tonumber(Rr_1)
                                if not (not Ro_5 or Rm < Ro_5) then
                                    Gl(GE, Rz)
                                    Rm -= Ro_5
                                    task.wait(0.12)
                                end
                            end
                        end
                    end
                end
            end
        end
        Ry += 1
    end
end
function fns.onAutoTower(gL)
    if gL then
        Ga = false
    end
end
function fns.fn1659()
    local V6 = Fl.AutoGradeUnit and abs_31[Fl.AutoGradeUnit.Value]
    local V6_1 = Fl.AutoTraitUnit and abs_31[Fl.AutoTraitUnit.Value]
    local V6_2 = Fy()
    local V9 = table.concat(V6_2, "\n")
    if V9 == E7 then
        return
    end
    E7 = V9
    local V9_1 = { AutoGradeUnit = V6, AutoTraitUnit = V6_1 }
    for k, v in { "AutoGradeUnit", "AutoTraitUnit" } do
        local V7_1 = Fl[v]
        if V7_1 then
            V7_1:SetValues(V6_2)
            local V8_1 = V6_2[1] or "None"
            local Wa = V9_1[v]
            local Wb = V8_1
            if Wa then
                for k, v in abs_31 do
                    if v == Wa then
                        Wb = k
                        break
                    end
                end
            end
            V7_1:SetValue(Wb)
        end
    end
end
function fns.fn1665()
    local JM = (tonumber(ES(GK.Rebirth)))
    local JQ = if JM then 1 else 0
    local JO = 1874 * JQ + 2995 * (1 - JQ)
    local JP = 386 * JQ + 3137 * (1 - JQ)
    if not ((JO * 148 + JP * 2339 + JO * JP) % 16777213 == 1903570) then
        JM = 0
    end
    return JM
end
function fns.fn1719()
    local KS = {}
    local KT = {}
    abs_31 = {}
    local KU = Et()
    for k, v in KU do
        if type(v) == "table" then
            local KU_1 = EntryRegistry.getEntryConfig(v.name)
            if KU_1 and KU_1.kind == "Unit" then
                local KV_1 = { v.name or "Unit" }
                local KU_3 = F7(v, "mutation")
                local KW = F7(v, "grade")
                local KX = F7(v, "trait")
                local KY = KU_3 ~= ""
                local KZ = type(KU_3) == "string" and KY
                if KZ then
                    KV_1[#KV_1 + 1] = KU_3
                end
                local KU_4 = KW ~= ""
                local KY_1 = type(KW) == "string" and KU_4
                if KY_1 then
                    KV_1[#KV_1 + 1] = KW
                end
                local KU_5 = KX ~= ""
                local KW_1 = type(KX) == "string" and KU_5
                if KW_1 then
                    KV_1[#KV_1 + 1] = KX
                end
                local KU_6 = table.concat(KV_1, " ")
                if KS[KU_6] then
                    KU_6 = KU_6 .. " " .. string.sub(tostring(k), 1, 8)
                end
                KS[KU_6] = true
                abs_31[KU_6] = k
                KT[#KT + 1] = KU_6
            end
        end
    end
    table.sort(KT)
    if #KT == 0 then
        return { "None" }
    end
    return KT
end
function fns.fn1726(nZ)
    local R2 = EH()
    local R3 = Et()
    local R4 = {}
    for k, v in R3 do
        local R3_1 = type(v) ~= "table" or R2[k] or FL(v)
        if not R3_1 then
            local R3_2 = EntryRegistry.getEntryConfig(v.name)
            if not not (R3_2 and R3_2.kind == "Unit") then
                local R5_1 = nZ and not nZ(v, R3_2)
                if not R5_1 then
                    R4[#R4 + 1] = k
                end
            end
        end
    end
    return R4
end
Er = nil
Es = nil
Et = nil
fns.abs_1 = nil
Ew = nil
Ex = nil
Ey = nil
Ez = nil
abs_25 = nil
EB = nil
EC = nil
EE = nil
EF = nil
abs_36 = nil
EH = nil
EK = nil
abs_50 = nil
EN = nil
EP = nil
EQ = nil
ER = nil
ES = nil
fns.abs_13 = nil
EV = nil
EX = nil
EY = nil
UnitUtil = nil
E_ = nil
E0 = nil
E1 = nil
E3 = nil
EntryRegistry = nil
E6 = nil
E7 = nil
fns.abs_4 = nil
Fc = nil
local Players, Ev, ED, EI, EJ, EL, EO, EU, EW, E2, E4, E8, E9, Fa
Fd = nil
Ff = nil
fns.abs_19 = nil
Fj = nil
Fk = nil
Fl = nil
abs_43 = nil
Fq = nil
Fr = nil
Fs = nil
Ft = nil
Fu = nil
Fv = nil
Fw = nil
Fy = nil
Fz = nil
fns.abs_16 = nil
FB = nil
FE = nil
abs_31 = nil
FH = nil
FI = nil
FJ = nil
FL = nil
PlayerGui = nil
FN = nil
FO = nil
LocalPlayer = nil
fns.abs_7 = nil
FU = nil
FV = nil
local FW
FX = nil
abs_24 = nil
F_ = nil
local Fe, TradeConfig, Fi, Fm, Fo, Fp, Fx, FC, FD, FF, FK, FP, FR, FS, Lighting
F1 = nil
abs_39 = nil
F5 = nil
F6 = nil
F7 = nil
F9 = nil
Ga = nil
Gc = nil
Gd = nil
Gg = nil
fns.abs_18 = nil
Gi = nil
HttpService = nil
Gk = nil
Gl = nil
Gm = nil
Gp = nil
Gq = nil
Gr = nil
Gt = nil
Gv = nil
Gw = nil
Gx = nil
Gy = nil
fns.abs_10 = nil
GB = nil
GD = nil
GE = nil
GF = nil
abs_37 = nil
GI = nil
GJ = nil
GK = nil
GL = nil
abs_42 = nil
GN = nil
local F0, TeleportService, F3, CoreGui, Gb, GuiService, Gf, Gn, Go, VirtualUser, Gu, UserInputService, GC, RunService
GO = nil
GP = nil
GQ = nil
GR = nil
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, LocalPlayer, PlayerGui, FH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local abs_2 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
FH = fns.fn1225
if getgenv then
    getgenv().gethui = FH
end
abs_43, abs_72, ED, abs_85, Ev, abs_63, GK, abs_34, Gu, Gn, fns.abs_18, fns.abs_14, abs_93, F_, abs_80, abs_67, abs_56, FC, Fv, Fp, TradeConfig, fns.abs_4, EntryRegistry, UnitUtil, EU, EP, abs_60, EF, abs_25, abs_22, GQ, GL, GE, abs_76, Gp, Gi, Gd, F6, F1, FU, FP, abs_89, FD, Fw, Fi, abs_53, E6, abs_28 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local abs_48 = 18
repeat
    abs_40 = (abs_48 * 5 + 19) % 22 + 1
    if abs_40 <= 11 then
        if abs_40 <= 6 then
            if abs_40 <= 3 then
                if abs_40 <= 2 then
                    if abs_40 <= 1 then
                        abs_20 = (vector.create((abs_48 * 4 + 1) % 11 + 1, (abs_48 * 11 + 8) % 13 + 1, (abs_48 * 10 + 1) % 17 + 1))
                        abs_96 = (vector.create((abs_48 * 4 + 5) % 11 + 1, (abs_48 * 8 + 1) % 13 + 1, (abs_48 * 4 + 12) % 17 + 1))
                        abs_83 = (vector.create((abs_48 * 4 + 6) % 5 + 1, (abs_48 * 5 + 1) % 7 + 1, (abs_48 * 2 + 3) % 9 + 1))
                        if math.abs((vector.angle(abs_20, abs_96, abs_83))) - math.abs((vector.angle(abs_96, abs_20, abs_83))) == 1 then
                            pcall(fns.fn904)
                            Gd = function()
                                local IJ, IK, IL, IM
                                local IN = type(getgc) == "function" and getgc
                                IM = IN or nil
                                local IN_5 = type(getconnections) == "function" and getconnections
                                local IO_6 = IN_5
                                local IW = if IO_6 then 1 else 0
                                local IU = 134 * IW + 531 * (1 - IW)
                                local IV = 1287 * IW + 1281 * (1 - IW)
                                if not ((IU * 873 + IV * 620 + IU * IV) % 16777213 == 1087380) then
                                    IO_6 = nil
                                end
                                local IN_6 = debug
                                IL = IO_6
                                if IN_6 then
                                    IN_6 = type(debug.getupvalues) == "function"
                                end
                                if IN_6 then
                                    IN_6 = debug.getupvalues
                                end
                                local IO_7 = IN_6 or nil
                                local IN_7 = debug
                                IK = IO_7
                                if IN_7 then
                                    IN_7 = type(debug.getupvalue) == "function"
                                end
                                if IN_7 then
                                    IN_7 = debug.getupvalue
                                end
                                IJ = IN_7 or nil
                                local function IN_8(D)
                                    local Ic_6, Ic_7, Ic_8, Ic_9, Ic_10
                                    local Ib = not D or not D:IsA("LocalScript")
                                    local Ib_6, Ib_7, Ib_8, Ib_9, Ib_10
                                    if Ib then
                                        return
                                    end
                                    if IM then
                                        Ib_6, Ic_6 = pcall(IM)
                                        local Id_5 = Ib_6 and type(Ic_6) == "table"
                                        if Id_5 then
                                            for k, v in Ic_6 do
                                                if type(v) == "function" then
                                                    Ib_7, Ic_7 = pcall(getfenv, v)
                                                    local Id_6 = Ib_7 and type(Ic_7) == "table" and Ic_7.script == D
                                                    if Id_6 then
                                                        if IK then
                                                            Ib_8, Ic_8 = pcall(IK, v)
                                                            local Id_7 = Ib_8 and type(Ic_8) == "table"
                                                            if Id_7 then
                                                                for k, v in Ic_8 do
                                                                    if typeof(v) == "thread" then
                                                                        pcall(task.cancel, v)
                                                                    end
                                                                end
                                                            end
                                                        elseif IJ then
                                                            local Iw = 1
                                                            while Iw <= 8 do
                                                                local Ix = Iw
                                                                Ib_9, Ic_9 = pcall(IJ, v, Ix)
                                                                if not Ib_9 then
                                                                    break
                                                                end
                                                                if typeof(Ic_9) == "thread" then
                                                                    pcall(task.cancel, Ic_9)
                                                                end
                                                                Iw += 1
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    if IL then
                                        for k, v in { UserInputService.InputBegan, UserInputService.TouchStarted } do
                                            Ib_10, Ic_10 = pcall(IL, v)
                                            local Id_8 = Ib_10 and type(Ic_10) == "table"
                                            if Id_8 then
                                                for k, v in Ic_10 do
                                                    local Ia
                                                    local II = v
                                                    Ia = false
                                                    pcall(function()
                                                        local Function = II.Function
                                                        if type(Function) ~= "function" then
                                                            return
                                                        end
                                                        local H8 = getfenv(Function)
                                                        local H7_2 = type(H8) == "table" and H8.script == D
                                                        if H7_2 then
                                                            Ia = true
                                                        end
                                                    end)
                                                    if Ia then
                                                        if not pcall(function()
                                                            II:Disconnect()
                                                        end) then
                                                            pcall(function()
                                                                II:Disable()
                                                            end)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    pcall(function()
                                        D.Disabled = true
                                    end)
                                end
                                local IO_9 = LocalPlayer:FindFirstChild("PlayerScripts") or LocalPlayer:WaitForChild("PlayerScripts", 5)
                                if IO_9 then
                                    IN_8(IO_9:FindFirstChild("AFK"))
                                end
                                local StarterPlayerScripts = game:GetService("StarterPlayer"):FindFirstChild("StarterPlayerScripts")
                                if StarterPlayerScripts then
                                    IN_8(StarterPlayerScripts:FindFirstChild("AFK"))
                                end
                            end
                        else
                            pcall(fns.fn904)
                            abs_28 = function()
                                local IJ, IK, IL, IM
                                local IN = type(getgc) == "function" and getgc
                                IM = IN or nil
                                local IN_1 = type(getconnections) == "function" and getconnections
                                local IO_1 = IN_1
                                local IW = if IO_1 then 1 else 0
                                local IU = 134 * IW + 531 * (1 - IW)
                                local IV = 1287 * IW + 1281 * (1 - IW)
                                if not ((IU * 873 + IV * 620 + IU * IV) % 16777213 == 1087380) then
                                    IO_1 = nil
                                end
                                local IN_2 = debug
                                IL = IO_1
                                if IN_2 then
                                    IN_2 = type(debug.getupvalues) == "function"
                                end
                                if IN_2 then
                                    IN_2 = debug.getupvalues
                                end
                                local IO_2 = IN_2 or nil
                                local IN_3 = debug
                                IK = IO_2
                                if IN_3 then
                                    IN_3 = type(debug.getupvalue) == "function"
                                end
                                if IN_3 then
                                    IN_3 = debug.getupvalue
                                end
                                IJ = IN_3 or nil
                                local function IN_4(D)
                                    local Ic_1, Ic_2, Ic_3, Ic_4, Ic_5
                                    local Ib = not D or not D:IsA("LocalScript")
                                    local Ib_1, Ib_2, Ib_3, Ib_4, Ib_5
                                    if Ib then
                                        return
                                    end
                                    if IM then
                                        Ib_1, Ic_1 = pcall(IM)
                                        local Id_1 = Ib_1 and type(Ic_1) == "table"
                                        if Id_1 then
                                            for k, v in Ic_1 do
                                                if type(v) == "function" then
                                                    Ib_2, Ic_2 = pcall(getfenv, v)
                                                    local Id_2 = Ib_2 and type(Ic_2) == "table" and Ic_2.script == D
                                                    if Id_2 then
                                                        if IK then
                                                            Ib_3, Ic_3 = pcall(IK, v)
                                                            local Id_3 = Ib_3 and type(Ic_3) == "table"
                                                            if Id_3 then
                                                                for k, v in Ic_3 do
                                                                    if typeof(v) == "thread" then
                                                                        pcall(task.cancel, v)
                                                                    end
                                                                end
                                                            end
                                                        elseif IJ then
                                                            local Iw = 1
                                                            while Iw <= 8 do
                                                                local Ix = Iw
                                                                Ib_4, Ic_4 = pcall(IJ, v, Ix)
                                                                if not Ib_4 then
                                                                    break
                                                                end
                                                                if typeof(Ic_4) == "thread" then
                                                                    pcall(task.cancel, Ic_4)
                                                                end
                                                                Iw += 1
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    if IL then
                                        for k, v in { UserInputService.InputBegan, UserInputService.TouchStarted } do
                                            Ib_5, Ic_5 = pcall(IL, v)
                                            local Id_4 = Ib_5 and type(Ic_5) == "table"
                                            if Id_4 then
                                                for k, v in Ic_5 do
                                                    local Ia
                                                    local II = v
                                                    Ia = false
                                                    pcall(function()
                                                        local Function = II.Function
                                                        if type(Function) ~= "function" then
                                                            return
                                                        end
                                                        local H8 = getfenv(Function)
                                                        local H7_1 = type(H8) == "table" and H8.script == D
                                                        if H7_1 then
                                                            Ia = true
                                                        end
                                                    end)
                                                    if Ia then
                                                        if not pcall(function()
                                                            II:Disconnect()
                                                        end) then
                                                            pcall(function()
                                                                II:Disable()
                                                            end)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    pcall(function()
                                        D.Disabled = true
                                    end)
                                end
                                local IO_4 = LocalPlayer:FindFirstChild("PlayerScripts") or LocalPlayer:WaitForChild("PlayerScripts", 5)
                                if IO_4 then
                                    IN_4(IO_4:FindFirstChild("AFK"))
                                end
                                local StarterPlayerScripts = game:GetService("StarterPlayer"):FindFirstChild("StarterPlayerScripts")
                                if StarterPlayerScripts then
                                    IN_4(StarterPlayerScripts:FindFirstChild("AFK"))
                                end
                            end
                        end
                        abs_48 = (abs_48 + 75) % 88
                    else
                        if abs_48 * 29148817 + 8 + 1 >= abs_48 * 29148817 + 8 + 1 + 3 then
                            abs_72()
                            abs_2 = abs_28:WaitForChild("Framework")
                        else
                            abs_28()
                            abs_72 = abs_2:WaitForChild("Framework")
                        end
                        abs_48 = (abs_48 + 53) % 88
                    end
                else
                    if ((abs_76 or abs_76) and (not GQ and not Gd) or (not Gd and not F_ or not FD and Gd)) and not ((abs_76 or abs_76) and (not GQ and not Gd) or (not Gd and not F_ or not FD and Gd)) then
                        abs_72 = ED:WaitForChild("Features")
                    else
                        ED = abs_72:WaitForChild("Features")
                    end
                    abs_48 = (abs_48 + 9) % 88
                end
            elseif abs_40 <= 5 then
                if abs_40 <= 4 then
                    abs_20 = {
                        "xpldpccti",
                        "fgnxg",
                        "rocvlbxmig",
                        "idrlxovney",
                        "bmyabhgrsbz",
                        "xrfavm",
                        "sfj",
                        "oxivfnjtdi",
                        "klo",
                        "vlhbjhqeme",
                        "pfwtwihby"
                    }
                    local ag5 = abs_48
                    abs_96 = abs_20[ag5 % 11 + 1]
                    if abs_96:len() >= abs_96:reverse():rep(ag5 % 3 + 2):len() then
                        abs_2 = abs_85:WaitForChild("Packages")
                    else
                        abs_85 = abs_2:WaitForChild("Packages")
                    end
                    abs_48 = (abs_48 + 53) % 88
                else
                    abs_20 = (vector.create((abs_48 * 4 + 2) % 11 + 1, (abs_48 * 7 + 1) % 13 + 1, (abs_48 * 3 + 9) % 17 + 1))
                    local adR = vector.floor(abs_20) + vector.ceil(abs_20 * -1)
                    if vector.dot(adR, adR) == 0 then
                        Ev = abs_2:WaitForChild("Network")
                    else
                        abs_2 = Ev:WaitForChild("Network")
                    end
                    abs_48 = (abs_48 + 9) % 88
                end
            else
                if (not FD or not abs_25 or not EU and not FD or abs_25 and TradeConfig and (FD and not FD)) and not (not FD or not abs_25 or not EU and not FD or abs_25 and TradeConfig and (FD and not FD)) then
                    abs_85 = require(abs_63:WaitForChild("Network"))
                else
                    abs_63 = require(abs_85:WaitForChild("Network"))
                end
                abs_48 = (abs_48 + 53) % 88
            end
        elseif abs_40 <= 9 then
            if abs_40 <= 8 then
                if abs_40 <= 7 then
                    abs_20 = (vector.create((abs_48 * 1 + 2) % 11 + 1, (abs_48 * 5 + 6) % 13 + 1, (abs_48 * 5 + 15) % 17 + 1))
                    abs_96 = (vector.create((abs_48 * 2 + 2) % 11 + 1, (abs_48 * 2 + 3) % 13 + 1, (abs_48 * 9 + 10) % 17 + 1))
                    abs_83 = (vector.create((abs_48 * 4 + 7) % 11 + 1, (abs_48 * 9 + 9) % 13 + 1, (abs_48 * 11 + 9) % 17 + 1))
                    if vector.dot(vector.cross(abs_20, abs_96), abs_83) == vector.dot(vector.cross(abs_96, abs_83), abs_20) then
                        GK = require(ED.Data.DataController)
                        abs_34 = require(ED.Rolling.Dice)
                        Gu = require(ED.Upgrades.Upgrades)
                        Gn = require(ED.Upgrades.TreeStructure)
                    else
                        ED = require(abs_34.Data.DataController)
                        Gu = require(abs_34.Rolling.Dice)
                        Gn = require(abs_34.Upgrades.Upgrades)
                        GK = require(abs_34.Upgrades.TreeStructure)
                    end
                    abs_48 = (abs_48 + 9) % 88
                else
                    if (abs_48 * 2 + 4) * 4 % 3 == ((abs_48 * 2 + 4) * 4 + 4) % 3 then
                        ED = require(fns.abs_14.Rebirth.Rebirths)
                        fns.abs_18 = require(fns.abs_14.Grades.Grades)
                    else
                        fns.abs_18 = require(ED.Rebirth.Rebirths)
                        fns.abs_14 = require(ED.Grades.Grades)
                    end
                    abs_48 = (abs_48 + 9) % 88
                end
            else
                if abs_48 * 122354361 + 2 + 1 <= abs_48 * 122354361 + 2 + 1 + 4 then
                    abs_93 = require(ED.Traits.Traits)
                else
                    ED = require(abs_93.Traits.Traits)
                end
                abs_48 = (abs_48 + 53) % 88
            end
        elseif abs_40 <= 10 then
            abs_20 = { "notrkqkgd", "wrupx", "zqkesbblagn", "ppcjzf", "lfiqod", "pvdnyjqdrhy", "ottdv", "vnakzx" }
            if abs_20[(abs_48 * 71 + 65) % 8 + 1] < abs_20[(abs_48 * 71 + 65) % 8 + 1] then
                FC = require(abs_56.Plot.PlotConfig)
                abs_67 = require(abs_56.Inventory.Kinds.Boost.BoostConfig)
                abs_80 = require(abs_56.Inventory.Kinds.Spin.SpinConfig)
                ED = require(abs_56.Towers.Towers)
                F_ = require(abs_56.Towers.TowerController)
            else
                F_ = require(ED.Plot.PlotConfig)
                abs_80 = require(ED.Inventory.Kinds.Boost.BoostConfig)
                abs_67 = require(ED.Inventory.Kinds.Spin.SpinConfig)
                abs_56 = require(ED.Towers.Towers)
                FC = require(ED.Towers.TowerController)
            end
            abs_48 = (abs_48 + 9) % 88
        else
            local agl = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_48, 2), string.byte(tostring(FD))), 22)
            if bit32.bxor(bit32.lrotate(bit32.bxor(agl, 2230145180), 4), 1322584520) ~= bit32.lrotate(agl, 4) then
                ED = require(TradeConfig.UI.UIReferences)
                Fv = require(TradeConfig.Quests.QuestConfig)
                Fp = require(TradeConfig.Trading.TradeConfig)
            else
                Fv = require(ED.UI.UIReferences)
                Fp = require(ED.Quests.QuestConfig)
                TradeConfig = require(ED.Trading.TradeConfig)
            end
            abs_48 = (abs_48 + 9) % 88
        end
    elseif abs_40 <= 17 then
        if abs_40 <= 14 then
            if abs_40 <= 13 then
                if abs_40 <= 12 then
                    if (abs_48 * 2 + 4) * 10 % 3 == ((abs_48 * 2 + 4) * 10 + 6) % 3 then
                        fns.abs_4 = require(ED.Buffs.BuffController)
                        require(ED.Inventory.EntryTypes)
                        EntryRegistry = require(ED.Inventory.EntryRegistry)
                    else
                        ED = require(EntryRegistry.Buffs.BuffController)
                        require(EntryRegistry.Inventory.EntryTypes)
                        fns.abs_4 = require(EntryRegistry.Inventory.EntryRegistry)
                    end
                    abs_48 = (abs_48 + 75) % 88
                else
                    local acG = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_48, 16), string.byte(tostring(Gu))), 17)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(acG, 3710377803), 8), 668945373) ~= bit32.lrotate(acG, 8) then
                        ED = require(UnitUtil.Inventory.Kinds.Unit.UnitUtil)
                    else
                        UnitUtil = require(ED.Inventory.Kinds.Unit.UnitUtil)
                    end
                    abs_48 = (abs_48 + 9) % 88
                end
            else
                if abs_48 * 92029237 + 4 + 5 <= abs_48 * 92029237 + 4 + 5 + 1 then
                    EU = abs_63.ClientComm
                else
                    abs_63 = EU.ClientComm
                end
                abs_48 = (abs_48 + 9) % 88
            end
        elseif abs_40 <= 16 then
            if abs_40 <= 15 then
                if (abs_48 * 2 + 4) * 4 % 3 == ((abs_48 * 2 + 4) * 4 + 3) % 3 then
                    EP = EU.new(Ev, false, "RollService"):GetFunction("RollDice")
                    abs_60 = EU.new(Ev, false, "DiceShopService")
                    EF = abs_60:GetSignal("BuyDice")
                    abs_25 = abs_60:GetSignal("EquipDice")
                else
                    abs_25 = abs_60.new(EF, false, "RollService"):GetFunction("RollDice")
                    EP = abs_60.new(EF, false, "DiceShopService")
                    EU = EP:GetSignal("BuyDice")
                    Ev = EP:GetSignal("EquipDice")
                end
                abs_48 = (abs_48 + 75) % 88
            else
                if abs_48 * 89923279 + 6 + 3 >= abs_48 * 89923279 + 6 + 3 + 5 then
                    GE = GQ.new(abs_22, false, "PlotService")
                    Ev = GE:GetSignal("CollectBalance")
                    EU = GE:GetSignal("EquipBest")
                    GL = GE:GetSignal("LevelUpSlot")
                else
                    abs_22 = EU.new(Ev, false, "PlotService")
                    GQ = abs_22:GetSignal("CollectBalance")
                    GL = abs_22:GetSignal("EquipBest")
                    GE = abs_22:GetSignal("LevelUpSlot")
                end
                abs_48 = (abs_48 + 75) % 88
            end
        else
            local adU = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_48, 27), string.byte(tostring(FD))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(adU, 1334667919), 20), 2834626774) ~= bit32.lrotate(adU, 20) then
                Ev = abs_76.new(Gd, false, "SellService")
                EU = Ev:GetFunction("SellInventory")
                Gp = abs_76.new(Gd, false, "GradeService"):GetSignal("Roll")
                Gi = abs_76.new(Gd, false, "TraitService"):GetSignal("Roll")
            else
                abs_76 = EU.new(Ev, false, "SellService")
                Gp = abs_76:GetFunction("SellInventory")
                Gi = EU.new(Ev, false, "GradeService"):GetSignal("Roll")
                Gd = EU.new(Ev, false, "TraitService"):GetSignal("Roll")
            end
            abs_48 = (abs_48 + 75) % 88
        end
    elseif abs_40 <= 20 then
        if abs_40 <= 19 then
            if abs_40 <= 18 then
                local adt = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_48, 19), string.byte(tostring(abs_28))), 9)
                if bit32.bxor(bit32.lrotate(bit32.bxor(adt, 2825847314), 2), 2713454666) == bit32.lrotate(adt, 2) then
                    F6 = EU.new(Ev, false, "RebirthService"):GetSignal("Rebirth")
                    F1 = EU.new(Ev, false, "BoostService"):GetSignal("Use")
                else
                    F1 = Ev.new(F6, false, "RebirthService"):GetSignal("Rebirth")
                    EU = Ev.new(F6, false, "BoostService"):GetSignal("Use")
                end
                abs_48 = (abs_48 + 75) % 88
            else
                if (fns.abs_4 and Ev or (not Ev or not abs_67)) and (Ev or fns.abs_4 or not abs_67 and not abs_67) or not ((fns.abs_4 and Ev or (not Ev or not abs_67)) and (Ev or fns.abs_4 or not abs_67 and not abs_67)) then
                    FU = EU.new(Ev, false, "UnitService"):GetSignal("SetLocked")
                    FP = abs_63.Client.GetSignal(Ev, "BuyUpgrade")
                else
                    FP = FU.new(abs_63, false, "UnitService"):GetSignal("SetLocked")
                    Ev = EU.Client.GetSignal(abs_63, "BuyUpgrade")
                end
                abs_48 = (abs_48 + 75) % 88
            end
        else
            abs_20 = (vector.create((abs_48 * 4 + 8) % 11 + 1, (abs_48 * 9 + 3) % 13 + 1, (abs_48 * 14 + 9) % 17 + 1))
            abs_96 = (vector.create((abs_48 * 5 + 5) % 11 + 1, (abs_48 * 9 + 1) % 13 + 1, (abs_48 * 11 + 2) % 17 + 1))
            local aeg = vector.cross(abs_20, abs_96)
            local aeh = vector.dot(abs_20, abs_96)
            if vector.dot(aeg, aeg) + aeh * aeh == vector.dot(abs_20, abs_20) * vector.dot(abs_96, abs_96) then
                abs_89 = EU.new(Ev, false, "Towers")
                FD = abs_89:GetFunction("CancelTower")
                Fw = abs_89:GetSignal("EquipBestTowerTeam")
                fns.abs_8 = EU.new(Ev, false, "QuestService")
                Fi = fns.abs_8:GetSignal("Claim")
            else
                Fi = FD.new(abs_89, false, "Towers")
                Fw = Fi:GetFunction("CancelTower")
                Ev = Fi:GetSignal("EquipBestTowerTeam")
                EU = FD.new(abs_89, false, "QuestService")
                EU:GetSignal("Claim")
            end
            abs_48 = (abs_48 + 9) % 88
        end
    elseif abs_40 <= 21 then
        abs_40 = (vector.create((abs_48 * 5 + 8) % 11 + 1, (abs_48 * 3 + 3) % 13 + 1, (abs_48 * 14 + 15) % 17 + 1))
        abs_20 = (vector.create((abs_48 * 3 + 2) % 11 + 1, (abs_48 * 1 + 10) % 13 + 1, (abs_48 * 12 + 7) % 17 + 1))
        local acE = vector.cross(abs_40, abs_20)
        local acF = vector.dot(abs_40, abs_20)
        if vector.dot(acE, acE) + acF * acF == vector.dot(abs_40, abs_40) * vector.dot(abs_20, abs_20) then
            abs_53 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            E6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        else
            E6 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            abs_53 = loadstring(game:HttpGet(E6 .. "Library.lua"))()
        end
        abs_48 = (abs_48 + 31) % 88
    else
        abs_40 = {
            "iipmiyty",
            "dvivk",
            "mllrzpp",
            "ssxlsmpkucdq",
            "esglnb",
            "ispywizcl",
            "pogqwp",
            "zitkeenw",
            "fnlje",
            "wxlv",
            "jhwi",
            "ohyqgnz",
            "qphfytjt",
            "eimckyztys"
        }
        if abs_40[(abs_48 * 28 + 9) % 14 + 1] <= abs_40[(abs_48 * 28 + 9) % 14 + 1] then
            pcall(fns.fn443)
            abs_43 = "Anime Dice"
        else
            pcall(fns.fn443)
            F6 = "Anime Dice"
        end
        abs_48 = (abs_48 + 53) % 88
    end
until (abs_48 * 53 + 37) % 88 == 45
if setthreadidentity then
    setthreadidentity(8)
end
E0 = nil
abs_22 = 2
repeat
    abs_2 = (abs_22 * 1 + 0) % 2 + 1
    if abs_2 <= 1 then
        abs_2 = {
            "lavyx",
            "zfyl",
            "zkx",
            "wfryiedlerr",
            "gwzwxfn",
            "hfeorarjnj",
            "ripdlbw",
            "xdzrdy",
            "ovfv",
            "khnl"
        }
        local aeq = abs_22
        abs_85 = abs_2[aeq % 10 + 1]
        if abs_85:len() <= abs_85:reverse():rep(aeq % 3 + 2):len() then
            E0 = function()
                local function I1(bc)
                    local IX = not bc or not bc:IsA("ScreenGui")
                    if IX then
                        return
                    end
                    bc.ResetOnSpawn = false
                    bc.IgnoreGuiInset = true
                    bc.ClipToDeviceSafeArea = false
                    bc.DisplayOrder = math.max(bc.DisplayOrder, 1000)
                    pcall(function()
                        bc.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if bc.Parent ~= PlayerGui then
                        bc.Parent = PlayerGui
                    end
                end
                I1(E6.ScreenGui)
                if E6.ActiveLoading and E6.ActiveLoading.ScreenGui then
                    I1(E6.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local I2_2 = CoreGui:FindFirstChild(v)
                    if I2_2 then
                        I1(I2_2)
                    end
                end
            end
        else
            E0 = function()
                local function I1(bc)
                    local IX = not bc or not bc:IsA("ScreenGui")
                    if IX then
                        return
                    end
                    bc.ResetOnSpawn = false
                    bc.IgnoreGuiInset = true
                    bc.ClipToDeviceSafeArea = false
                    bc.DisplayOrder = math.max(bc.DisplayOrder, 1000)
                    pcall(function()
                        bc.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if bc.Parent ~= PlayerGui then
                        bc.Parent = PlayerGui
                    end
                end
                I1(E6.ScreenGui)
                if E6.ActiveLoading and E6.ActiveLoading.ScreenGui then
                    I1(E6.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local I2_1 = CoreGui:FindFirstChild(v)
                    if I2_1 then
                        I1(I2_1)
                    end
                end
            end
        end
        abs_22 = (abs_22 + 7) % 16
    else
        abs_2 = {
            "zjgl",
            "yuzdozolmyh",
            "upuxlpto",
            "mgdtqgau",
            "lyzvfqtopw",
            "ffqjeim",
            "ckqisvlstrj",
            "jwjvm",
            "yzyk",
            "nyzebfjpm",
            "tbd",
            "gyefinxhwj"
        }
        local aea = abs_22
        abs_85 = abs_2[aea % 12 + 1]
        if abs_85:len() <= abs_85:reverse():rep(aea % 3 + 2):len() then
            E0()
            task.spawn(fns.worker)
        else
            E0()
            task.spawn(fns.worker)
        end
        abs_22 = (abs_22 + 11) % 16
    end
until (abs_22 * 7 + 0) % 16 == 12
if getgenv then
    FW, abs_2 = nil, nil
    abs_22 = 4
    repeat
        abs_85 = (abs_22 * 1 + 1) % 2 + 1
        if abs_85 <= 1 then
            abs_85 = (vector.create((abs_22 * 3 + 7) % 11 + 1, (abs_22 * 1 + 11) % 13 + 1, (abs_22 * 15 + 12) % 17 + 1))
            abs_72 = (vector.create((abs_22 * 6 + 4) % 11 + 1, (abs_22 * 10 + 9) % 13 + 1, (abs_22 * 6 + 4) % 17 + 1))
            abs_60 = (vector.create((abs_22 * 5 + 8) % 11 + 1, (abs_22 * 6 + 6) % 13 + 1, (abs_22 * 5 + 10) % 17 + 1))
            abs_48 = (vector.create((abs_22 * 1 + 1) % 11 + 1, (abs_22 * 7 + 11) % 13 + 1, (abs_22 * 6 + 12) % 17 + 1))
            if vector.dot(vector.cross(abs_85, abs_72), (vector.cross(abs_60, abs_48))) == vector.dot(abs_85, abs_60) * vector.dot(abs_72, abs_48) - vector.dot(abs_85, abs_48) * vector.dot(abs_72, abs_60) then
                abs_2 = FW
            else
                FW = abs_2
            end
            abs_22 = (abs_22 + 1) % 8
        else
            local adS = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_22, 6), string.byte(tostring(FW))), 9)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(adS, 1886116533), 2538337648), (bit32.bxor(bit32.band(adS, 2408850762), 3573015893))), 2538337648), 3573015893) ~= adS then
                abs_2 = getgenv().__ouroboros_lib
            else
                FW = getgenv().__ouroboros_lib
            end
            abs_22 = (abs_22 + 7) % 8
        end
    until (abs_22 * 7 + 6) % 8 == 2
    if abs_2 then
        abs_22 = 2
        repeat
            local agm = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_22, 20), string.byte(tostring(abs_22))), 20)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(agm, 776526975), 2662948068), (bit32.bxor(bit32.band(agm, 3518440320), 15518312))), 2662948068), 15518312) ~= agm then
                FW = abs_2.Unloaded == false
            else
                abs_2 = FW.Unloaded == false
            end
            abs_22 = (abs_22 + 5) % 8
        until (abs_22 * 5 + 1) % 8 == 4
    end
    if abs_2 then
        pcall(function()
            FW:Unload()
        end)
    end
    getgenv().__ouroboros_lib = E6
end
FF, Fx, Fs, Fl, Fc, E8, E2, EW, ER, Gx, Gq, EN, Er, abs_2, F9, FI, Fd, ES, Gk, Ff, EY, EK, Et, GB, Gf, fns.abs_16, fns.abs_13, Gv, Gc, Fq, EV, GF, F7, FL, Fr, EH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
abs_22 = 1
repeat
    abs_85 = (abs_22 * 10 + 2) % 13 + 1
    if abs_85 <= 7 then
        if abs_85 <= 4 then
            if abs_85 <= 2 then
                if abs_85 <= 1 then
                    if abs_22 * 69005309 + 4 + 3 <= abs_22 * 69005309 + 4 + 3 + 4 then
                        Fl = E6.Options
                        Fc = "https://discord.gg/synapsex"
                    else
                        Fc = Fl.Options
                        E6 = "https://discord.gg/synapsex"
                    end
                    abs_22 = (abs_22 + 17) % 104
                else
                    abs_72 = {
                        "ciz",
                        "fsn",
                        "lkolcl",
                        "afhc",
                        "pvdmal",
                        "xddcxfwkavsr",
                        "uzkgzwzjng",
                        "fwkawlfk",
                        "flbhciuamtz",
                        "wssqehjsgls",
                        "zjm",
                        "abs",
                        "jki",
                        "mlpez"
                    }
                    if abs_72[(abs_22 * 9 + 51) % 14 + 1] <= abs_72[(abs_22 * 9 + 51) % 14 + 1] then
                        E8 = "https://rscripts.net/@Ouroboros"
                        E2 = "https://ouroboros-hub-rbx.web.app/"
                        EW = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/animedice.lua"
                        ER = "v0.2"
                        EN = fns.fn440
                    else
                        EW = "https://rscripts.net/@Ouroboros"
                        ER = "https://ouroboros-hub-rbx.web.app/"
                        E2 = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/animedice.lua"
                        EN = "v0.2"
                        E8 = fns.fn440
                    end
                    abs_22 = (abs_22 + 56) % 104
                end
            elseif abs_85 <= 3 then
                abs_72 = {
                    "rqkryw",
                    "ifclblrbe",
                    "plqhytbjbo",
                    "jkruq",
                    "nsxq",
                    "faixpa",
                    "mkolmimemn",
                    "ygnikrp",
                    "uiuujughe",
                    "gbjr"
                }
                local adw = abs_22
                abs_60 = abs_72[adw % 10 + 1]
                if abs_60:len() <= abs_60:reverse():rep(adw % 3 + 2):len() then
                    Er = fns.fn43
                else
                    ES = fns.fn43
                end
                abs_22 = (abs_22 + 30) % 104
            else
                abs_72 = (vector.create((abs_22 * 1 + 6) % 11 + 1, (abs_22 * 2 + 13) % 13 + 1, (abs_22 * 4 + 11) % 17 + 1))
                abs_60 = (vector.create((abs_22 * 5 + 8) % 11 + 1, (abs_22 * 7 + 11) % 13 + 1, (abs_22 * 1 + 15) % 17 + 1))
                abs_48 = (vector.create((abs_22 * 1 + 4) % 11 + 1, (abs_22 * 11 + 13) % 13 + 1, (abs_22 * 7 + 3) % 17 + 1))
                abs_28 = (vector.create((abs_22 * 4 + 1) % 11 + 1, (abs_22 * 11 + 11) % 13 + 1, (abs_22 * 12 + 8) % 17 + 1))
                if vector.dot(vector.cross(abs_72, abs_60), (vector.cross(abs_48, abs_28))) == vector.dot(abs_72, abs_48) * vector.dot(abs_60, abs_28) - vector.dot(abs_72, abs_28) * vector.dot(abs_60, abs_48) + 4 then
                    FI = fns.fn1159
                    abs_2 = fns.fn1408
                    F9 = fns.fn456
                    ES = fns.fn488
                    Fd = function(b0)
                        local Jn_2
                        local Jm_4, Jm_6
                        if b0 == nil then
                            return nil
                        end
                        local Jl = type(b0)
                        local Jl_4
                        if Jl == "function" then
                            Jm_4, Jn_2 = pcall(b0)
                            if Jm_4 then
                                return Jn_2
                            end
                            return nil
                        elseif Jl == "table" then
                            local Jl_3 = getmetatable(b0)
                            local Jm_5 = type(Jl_3) == "table" and Jl_3.__call
                            if Jm_5 then
                                Jl_4, Jm_6 = pcall(function()
                                    return b0()
                                end)
                                if Jl_4 then
                                    return Jm_6
                                end
                                return b0
                            end
                            return b0
                        else
                            return b0
                        end
                    end
                else
                    abs_2 = fns.fn1159
                    F9 = fns.fn1408
                    FI = fns.fn456
                    Fd = fns.fn488
                    ES = function(b0)
                        local Jn_1
                        local Jm_1, Jm_3
                        if b0 == nil then
                            return nil
                        end
                        local Jl = type(b0)
                        local Jl_2
                        if Jl == "function" then
                            Jm_1, Jn_1 = pcall(b0)
                            if Jm_1 then
                                return Jn_1
                            end
                            return nil
                        elseif Jl == "table" then
                            local Jl_1 = getmetatable(b0)
                            local Jm_2 = type(Jl_1) == "table" and Jl_1.__call
                            if Jm_2 then
                                Jl_2, Jm_3 = pcall(function()
                                    return b0()
                                end)
                                if Jl_2 then
                                    return Jm_3
                                end
                                return b0
                            end
                            return b0
                        else
                            return b0
                        end
                    end
                end
                abs_22 = (abs_22 + 4) % 104
            end
        elseif abs_85 <= 6 then
            if abs_85 <= 5 then
                local adZ = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_22, 12), string.byte(tostring(ES))), 31)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(adZ, 126680073), 1463239529), (bit32.bxor(bit32.band(adZ, 4168287222), 4057447741))), 1463239529), 4057447741) == adZ then
                    Gk = fns.fn63
                else
                    ER = fns.fn63
                end
                abs_22 = (abs_22 + 82) % 104
            else
                abs_72 = (vector.create((abs_22 * 5 + 6) % 11 + 1, (abs_22 * 1 + 8) % 13 + 1, (abs_22 * 2 + 5) % 17 + 1))
                abs_60 = (vector.create((abs_22 * 6 + 8) % 11 + 1, (abs_22 * 4 + 12) % 13 + 1, (abs_22 * 15 + 11) % 17 + 1))
                abs_48 = (vector.create((abs_22 * 4 + 4) % 5 + 1, (abs_22 * 4 + 5) % 7 + 1, (abs_22 * 1 + 7) % 9 + 1))
                if math.abs((vector.angle(abs_72, abs_60, abs_48))) - math.abs((vector.angle(abs_60, abs_72, abs_48))) == 0 then
                    Ff = fns.fn1343
                    EY = fns.fn1665
                else
                    EY = fns.fn1343
                    Ff = fns.fn1665
                end
                abs_22 = (abs_22 + 69) % 104
            end
        else
            if (Gv and not EV and (EV and not Gv) or not Gv and EV and (Gv and EV) or (Gv and Gv or not Gv and not EV) and ((not Gv or not EV) and (not EV and Gv))) and not (Gv and not EV and (EV and not Gv) or not Gv and EV and (Gv and EV) or (Gv and Gv or not Gv and not EV) and ((not Gv or not EV) and (not EV and Gv))) then
                EY = fns.fn430
            else
                EK = fns.fn430
            end
            abs_22 = (abs_22 + 17) % 104
        end
    elseif abs_85 <= 10 then
        if abs_85 <= 9 then
            if abs_85 <= 8 then
                abs_72 = { "yvyujtiydv", "bcrmkbaqpw", "zbrxnuxj", "mdlton", "rndrmhkqty", "vna", "dktpapldeuc" }
                local acK = abs_22
                abs_60 = abs_72[acK % 7 + 1]
                if abs_60:len() >= abs_60:reverse():rep(acK % 3 + 2):len() then
                    GB = fns.fn905
                    fns.abs_13 = fns.fn902
                    fns.abs_16 = function(cA)
                        local JU_2
                        local JT_3
                        JT_3, JU_2 = pcall(function()
                            return GK.Upgrades[cA]()
                        end)
                        return JT_3 and JU_2 and JU_2 ~= false
                    end
                    Et = function(cH)
                        local JZ_2
                        local JY_2
                        JY_2, JZ_2 = pcall(function()
                            return GK.OwnedDice[cH]()
                        end)
                        return JY_2 and JZ_2 == true
                    end
                    Gf = fns.fn725
                else
                    Et = fns.fn905
                    GB = fns.fn902
                    Gf = function(cA)
                        local JU_1
                        local JT_1
                        JT_1, JU_1 = pcall(function()
                            return GK.Upgrades[cA]()
                        end)
                        return JT_1 and JU_1 and JU_1 ~= false
                    end
                    fns.abs_16 = function(cH)
                        local JZ_1
                        local JY_1
                        JY_1, JZ_1 = pcall(function()
                            return GK.OwnedDice[cH]()
                        end)
                        return JY_1 and JZ_1 == true
                    end
                    fns.abs_13 = fns.fn725
                end
                abs_22 = (abs_22 + 69) % 104
            else
                if abs_22 * 1060095 + 8 + 4 <= abs_22 * 1060095 + 8 + 4 + 6 then
                    Gv = fns.fn1356
                    Gc = fns.fn926
                    Fq = fns.fn1555
                    EV = fns.fn1480
                else
                    EV = fns.fn1356
                    Fq = fns.fn926
                    Gc = fns.fn1555
                    Gv = fns.fn1480
                end
                abs_22 = (abs_22 + 4) % 104
            end
        else
            abs_72 = (vector.create((abs_22 * 3 + 7) % 11 + 1, (abs_22 * 9 + 6) % 13 + 1, (abs_22 * 7 + 4) % 17 + 1))
            abs_60 = (vector.create((abs_22 * 3 + 9) % 11 + 1, (abs_22 * 3 + 10) % 13 + 1, (abs_22 * 2 + 14) % 17 + 1))
            local afh = vector.dot(abs_72, abs_60)
            if afh * afh >= vector.dot(abs_72, abs_72) * vector.dot(abs_60, abs_60) + 1 then
                F7 = fns.fn9
                Fr = fns.fn103
                GF = fns.fn1494
                FL = fns.fn61
            else
                GF = fns.fn9
                F7 = fns.fn103
                FL = fns.fn1494
                Fr = fns.fn61
            end
            abs_22 = (abs_22 + 69) % 104
        end
    elseif abs_85 <= 12 then
        if abs_85 <= 11 then
            if (abs_22 * 3 + 9) * 9 % 4 == ((abs_22 * 3 + 9) * 9 + 12) % 4 then
                EH = fns.fn156
                Gx = {}
            else
                Gx = fns.fn156
                EH = {}
            end
            abs_22 = (abs_22 + 95) % 104
        else
            abs_85 = (vector.create((abs_22 * 3 + 1) % 11 + 1, (abs_22 * 7 + 6) % 13 + 1, (abs_22 * 7 + 1) % 17 + 1))
            abs_72 = (vector.create((abs_22 * 2 + 5) % 11 + 1, (abs_22 * 4 + 3) % 13 + 1, (abs_22 * 11 + 13) % 17 + 1))
            local ad_ = vector.cross(abs_85, abs_72)
            local ad0 = vector.dot(abs_85, abs_72)
            if vector.dot(ad_, ad_) + ad0 * ad0 == vector.dot(abs_85, abs_85) * vector.dot(abs_72, abs_72) then
                Gq = {}
            else
                Fl = {}
            end
            abs_22 = (abs_22 + 56) % 104
        end
    else
        if (not Fc or not Fl or not FF and Fc or (not Fl or Fc) and (not FF and Fl)) and ((FF or not FF) and (Fl and Fl) and (not Fl or not EW or (not Fc or not FF))) and (not Fl and EW and (FF and not EW) and (not Fl and EW or (FF or not FF)) or (FF or Fc or (not Fc or Et)) and (not Fc and Fl and (Et and FF))) and not ((not Fc or not Fl or not FF and Fc or (not Fl or Fc) and (not FF and Fl)) and ((FF or not FF) and (Fl and Fl) and (not Fl or not EW or (not Fc or not FF))) and (not Fl and EW and (FF and not EW) and (not Fl and EW or (FF or not FF)) or (FF or Fc or (not Fc or Et)) and (not Fc and Fl and (Et and FF)))) then
            Fs = loadstring(game:HttpGet(Fx .. "addons/ThemeManager.lua"))()
            FF = loadstring(game:HttpGet(Fx .. "addons/SaveManager.lua"))()
            E6 = abs_53.Toggles
        else
            FF = loadstring(game:HttpGet(abs_53 .. "addons/ThemeManager.lua"))()
            Fx = loadstring(game:HttpGet(abs_53 .. "addons/SaveManager.lua"))()
            Fs = E6.Toggles
        end
        abs_22 = (abs_22 + 4) % 104
    end
until (abs_22 * 15 + 26) % 104 == 93
abs_85 = {}
for k, v in abs_34.GetAll() do
    if type(v) == "table" then
        abs_22 = #abs_85 + 1
        abs_72 = tonumber(v.luck) or 0
        abs_85[abs_22] = { name = k, luck = abs_72, price = tonumber(v.price) }
        Gq[k] = v
    end
end
table.sort(abs_85, fns.fn90)
for k, v in abs_85 do
    Gx[#Gx + 1] = v.name
end
abs_31, abs_85, Fy = nil, nil, nil
abs_22 = 5
repeat
    if abs_22 * 30254785 + 10 + 2 <= abs_22 * 30254785 + 10 + 2 + 4 then
        abs_31 = {}
        Fy = fns.fn1719
        abs_85 = {}
    else
        abs_85 = {}
        abs_31 = fns.fn1719
        Fy = {}
    end
    abs_22 = (abs_22 + 2) % 8
until (abs_22 * 5 + 5) % 8 == 0
abs_72 = {}
for k, v in fns.abs_14 do
    abs_22 = #abs_72 + 1
    abs_60 = tonumber(v.order) or 0
    abs_72[abs_22] = { name = k, order = abs_60 }
end
abs_48 = 3
repeat
    if abs_48 * 44738169 + 5 + 4 >= abs_48 * 44738169 + 5 + 4 + 1 then
        table.sort(abs_72, fns.fn1391)
    else
        table.sort(abs_72, fns.fn1391)
    end
    abs_48 = (abs_48 + 7) % 8
until (abs_48 * 5 + 6) % 8 == 0
for k, v in abs_72 do
    abs_85[#abs_85 + 1] = v.name
end
abs_22 = {}
abs_72 = {}
for k, v in abs_93 do
    abs_60 = #abs_72 + 1
    abs_48 = tonumber(v.order) or 0
    abs_72[abs_60] = { name = k, order = abs_48 }
end
table.sort(abs_72, fns.fn211)
for k, v in abs_72 do
    abs_22[#abs_22 + 1] = v.name
end
EO, EI = nil, nil
EO = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Exclusive",
    "Exotic",
    "Divine",
    "Celestial",
    "Secret I",
    "Secret II"
}
EI = {}
abs_72 = EntryRegistry.entriesOfKind("Unit")
if type(abs_72) == "table" then
    for k in abs_72 do
        if type(k) == "string" then
            EI[#EI + 1] = k
        end
    end
end
table.sort(EI)
GO = {}
abs_72 = {}
for k in abs_80.entries do
    abs_72[#abs_72 + 1] = k
    GO[k] = "Boost"
end
for k in abs_67.entries do
    GO[k] = "Spin"
end
table.sort(abs_72)
Gt = {}
abs_60 = abs_56.GetAll()
for k in abs_60 do
    Gt[#Gt + 1] = k
end
table.sort(Gt)
Ga, abs_39, abs_24, FS, FN, FJ, Fz, EB = nil, nil, nil, nil, nil, nil, nil, nil
Ga = false
abs_39 = 0
abs_24 = 0
FS = false
FN = nil
FJ = false
Fz = fns.fn473
EB = fns.fn191
abs_60 = Fv.Root and Fv.Root.Tower
abs_48 = abs_60
if abs_48 then
    FN = {}
    for k, v in { "Screen", "Hidden", "Background" } do
        abs_60 = abs_48:FindFirstChild(v)
        abs_28 = abs_60 and abs_60:IsA("GuiObject")
        if abs_28 then
            FN[v] = abs_60.Position
        end
    end
end
GC = nil
fns.abs_8 = E6:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = Fc, Copyable = true }, "|", abs_43, "|", ER },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
GC = {
    Info = fns.abs_8:AddTab("Info", "info"),
    Main = fns.abs_8:AddTab("Main", "dices"),
    Shop = fns.abs_8:AddTab("Shop", "shopping-cart"),
    Trade = fns.abs_8:AddTab("Trade", "arrow-left-right"),
    Webhook = fns.abs_8:AddTab("Webhook", "webhook"),
    Player = fns.abs_8:AddTab("Player", "person-standing"),
    Settings = fns.abs_8:AddTab("Settings", "settings")
}
GC.Farm = GC.Main:AddSubTab("Farm", "dices")
GC.Units = GC.Main:AddSubTab("Units", "sparkles")
GC.Tower = GC.Main:AddSubTab("Tower", "castle")
for k, v in { GC.Farm, GC.Units, GC.Tower, GC.Shop, GC.Trade, GC.Webhook, GC.Player, GC.Settings } do
    abs_2(v)
end
abs_80, abs_93, fns.abs_14, abs_34, abs_53, abs_63, abs_76, abs_89, fns.abs_8, abs_28, abs_48, abs_56, abs_20, abs_40, abs_67, Gl, fns.abs_7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
abs_60 = 38
repeat
    abs_2 = (abs_60 * 8 + 4) % 13 + 1
    if abs_2 <= 7 then
        if abs_2 <= 4 then
            if abs_2 <= 2 then
                if abs_2 <= 1 then
                    if (abs_60 * 2 + 7) * 16 % 3 == ((abs_60 * 2 + 7) * 16 + 6) % 3 then
                        fns.abs_14:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Affordable Upgrades", Default = false })
                        abs_34 = GC.Shop:AddRightGroupbox("Dice", "dices")
                    else
                        abs_34:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Affordable Upgrades", Default = false })
                        GC = fns.abs_14.Shop:AddRightGroupbox("Dice", "dices")
                    end
                    abs_60 = (abs_60 + 70) % 104
                else
                    if abs_60 * 41061683 + 13 + 7 >= abs_60 * 41061683 + 13 + 7 + 6 then
                        GC:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
                        abs_34 = abs_53.Shop:AddLeftGroupbox("Potions", "flask-conical")
                    else
                        abs_34:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
                        abs_53 = GC.Shop:AddLeftGroupbox("Potions", "flask-conical")
                    end
                    abs_60 = (abs_60 + 96) % 104
                end
            elseif abs_2 <= 3 then
                if (not abs_53 and abs_28 and (not abs_53 and abs_53) or (abs_53 or not abs_28) and (not abs_28 or not abs_28)) and not (not abs_53 and abs_28 and (not abs_53 and abs_53) or (abs_53 or not abs_28) and (not abs_28 or not abs_28)) then
                    GC:AddToggle("AutoUsePotions", { Text = "Auto Use Potions", Default = false })
                    GC:AddDropdown("AutoUsePotionTarget", {
                        Multi = true,
                        Values = abs_63,
                        Text = "Potions",
                        Expandable = true,
                        Searchable = true,
                        Default = {},
                        SelectAllButtons = true
                    })
                    abs_72 = abs_53.Units:AddLeftGroupbox("Grade", "award")
                else
                    abs_53:AddToggle("AutoUsePotions", { Text = "Auto Use Potions", Default = false })
                    abs_53:AddDropdown("AutoUsePotionTarget", {
                        Text = "Potions",
                        Values = abs_72,
                        Default = {},
                        Multi = true,
                        SelectAllButtons = true,
                        Searchable = true,
                        Expandable = true
                    })
                    abs_63 = GC.Units:AddLeftGroupbox("Grade", "award")
                end
                abs_60 = (abs_60 + 5) % 104
            else
                local aep = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_60, 3), string.byte(tostring(abs_20))), 5)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aep, 3840884509), 3356958294), (bit32.bxor(bit32.band(aep, 454082786), 2849509565))), 3356958294), 2849509565) == aep then
                    abs_63:AddToggle("AutoGrade", { Text = "Auto Grade", Default = false })
                    abs_63:AddDropdown("AutoGradeUnit", { Text = "Unit", Values = { "None" }, Default = "None", Searchable = true })
                    abs_63:AddDropdown("AutoGradeTarget", {
                        Text = "Keep Grades",
                        Values = abs_85,
                        Default = { "S", "S+", "Z", "Z+" },
                        Multi = true,
                        SelectAllButtons = true
                    })
                    abs_76 = GC.Units:AddRightGroupbox("Trait", "sparkles")
                else
                    abs_76:AddToggle("AutoGrade", { Text = "Auto Grade", Default = false })
                    abs_76:AddDropdown("AutoGradeUnit", { Searchable = true, Default = "None", Text = "Unit", Values = { "None" } })
                    abs_76:AddDropdown("AutoGradeTarget", {
                        Default = { "Z+", "Z", "S+", "S" },
                        Multi = true,
                        Values = abs_63,
                        SelectAllButtons = true,
                        Text = "Keep Grades"
                    })
                    GC = abs_85.Units:AddRightGroupbox("Trait", "sparkles")
                end
                abs_60 = (abs_60 + 83) % 104
            end
        elseif abs_2 <= 6 then
            if abs_2 <= 5 then
                abs_96 = {
                    "mts",
                    "dzuwanzy",
                    "vsrazrs",
                    "rlbaoxbuzozw",
                    "eyekxgqbqx",
                    "uzllhoguwzst",
                    "obcjoh",
                    "dwj",
                    "ldmjaof",
                    "wqwao",
                    "dsqgwqawf",
                    "ecpjjpdv",
                    "hfhapo"
                }
                if abs_96[(abs_60 * 47 + 13) % 13 + 1] < abs_96[(abs_60 * 47 + 13) % 13 + 1] then
                    abs_89:AddToggle("AutoTrait", { Text = "Auto Trait", Default = false })
                    abs_89:AddDropdown("AutoTraitUnit", { Values = { "None" }, Default = "None", Searchable = true, Text = "Unit" })
                    abs_89:AddDropdown("AutoTraitTarget", {
                        Values = abs_76,
                        Multi = true,
                        SelectAllButtons = true,
                        Default = { "Shogun", "Samurai", "Transcendent", "Monarch" },
                        Text = "Keep Traits"
                    })
                    GC = abs_22.Units:AddRightGroupbox("Upgrade", "arrow-up")
                else
                    abs_76:AddToggle("AutoTrait", { Text = "Auto Trait", Default = false })
                    abs_76:AddDropdown("AutoTraitUnit", { Text = "Unit", Values = { "None" }, Default = "None", Searchable = true })
                    abs_76:AddDropdown("AutoTraitTarget", {
                        Text = "Keep Traits",
                        Values = abs_22,
                        Default = { "Samurai", "Shogun", "Monarch", "Transcendent" },
                        Multi = true,
                        SelectAllButtons = true
                    })
                    abs_89 = GC.Units:AddRightGroupbox("Upgrade", "arrow-up")
                end
                abs_60 = (abs_60 + 31) % 104
            else
                local ags = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_60, 20), string.byte(tostring(abs_34))), 24)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ags, 2130169771), 8), 4157582206) ~= bit32.lrotate(ags, 8) then
                    EI:AddToggle("AutoUpgradePlaced", { Text = "Auto Upgrade Placed Units", Default = false })
                    EI:AddDropdown("AutoUpgradeRarity", { Values = abs_89, Text = "Rarities", SelectAllButtons = true, Default = {}, Multi = true })
                    EI:AddDropdown("AutoUpgradeCharacters", {
                        Multi = true,
                        Expandable = true,
                        SelectAllButtons = true,
                        Searchable = true,
                        Values = EO,
                        Default = {},
                        Text = "Characters"
                    })
                    EI:AddSlider("AutoUpgradeLevelLimit", { Rounding = 0, Default = 0, Min = 0, Text = "Level Limit", Max = 200 })
                    GC = fns.abs_8.Units:AddLeftGroupbox("Sell", "coins")
                else
                    abs_89:AddToggle("AutoUpgradePlaced", { Text = "Auto Upgrade Placed Units", Default = false })
                    abs_89:AddDropdown("AutoUpgradeRarity", { Text = "Rarities", Values = EO, Default = {}, Multi = true, SelectAllButtons = true })
                    abs_89:AddDropdown("AutoUpgradeCharacters", {
                        Text = "Characters",
                        Values = EI,
                        Default = {},
                        Multi = true,
                        SelectAllButtons = true,
                        Searchable = true,
                        Expandable = true
                    })
                    abs_89:AddSlider("AutoUpgradeLevelLimit", { Text = "Level Limit", Default = 0, Min = 0, Max = 200, Rounding = 0 })
                    fns.abs_8 = GC.Units:AddLeftGroupbox("Sell", "coins")
                end
                abs_60 = (abs_60 + 83) % 104
            end
        else
            abs_96 = (vector.create((abs_60 * 6 + 9) % 11 + 1, (abs_60 * 1 + 4) % 13 + 1, (abs_60 * 12 + 13) % 17 + 1))
            local aff = vector.floor(abs_96) + vector.ceil(abs_96 * -1)
            if vector.dot(aff, aff) == 0 then
                fns.abs_8:AddLabel('<font color="#7fd47f">Use the Game\'s Auto-Sell</font>', true)
                fns.abs_8:AddToggle("AutoSellAll", { Text = "Auto Sell All", Default = false })
                fns.abs_8:AddToggle("SellAllWhenFull", { Text = "Sell All When Full", Default = false })
                abs_28 = GC.Units:AddLeftGroupbox("Lock", "lock")
                abs_28:AddToggle("AutoLock", { Text = "Auto Lock", Default = false })
                abs_28:AddDropdown("AutoLockRarity", { Text = "Rarities", Values = EO, Default = {}, Multi = true, SelectAllButtons = true })
                abs_48 = GC.Tower:AddLeftGroupbox("Tower", "castle")
                abs_48:AddToggle("AutoTower", { Text = "Auto Tower", Default = false, Callback = fns.onAutoTower })
                abs_48:AddDropdown("AutoTowerMode", { Text = "Mode", Values = Gt, Default = "Infinity Tower" })
                abs_48:AddToggle("AutoTowerRotate", {
                    Text = "Auto Rotate Maps",
                    Default = false,
                    Tooltip = "Cycle through the selected towers instead of repeating one map",
                    Callback = fns.onAutoTowerRotate
                })
                abs_48:AddDropdown("AutoTowerRotateMaps", {
                    Text = "Rotation Maps",
                    Values = Gt,
                    Default = Gt,
                    Multi = true,
                    SelectAllButtons = true,
                    Searchable = true,
                    Expandable = true
                })
                abs_48:AddSlider("AutoTowerRunsPerMap", { Text = "Runs Per Map", Default = 1, Min = 1, Max = 20, Rounding = 0 })
                abs_48:AddToggle("AutoTowerSkipFailed", {
                    Text = "Skip Unavailable Maps",
                    Default = true,
                    Tooltip = "Move to the next map if a tower refuses to start (locked, on cooldown)"
                })
                abs_48:AddSlider("AutoTowerStopFloor", { Text = "Stop At Floor", Default = 0, Min = 0, Max = 1000, Rounding = 0 })
                abs_48:AddToggle("AutoEquipBestTower", { Text = "Auto Equip Best", Default = false })
                abs_48:AddToggle("HideTowerCombatUI", { Text = "Hide Tower Combat UI", Default = false, Callback = fns.onHideTowerCombatUI })
                abs_56 = GC.Webhook:AddLeftGroupbox("Webhook", "webhook")
                abs_56:AddToggle("UnitWebhook", { Text = "Unit Webhook", Default = false })
                abs_56:AddInput("UnitWebhookUrl", { Text = "Webhook URL", Default = "", Finished = true, AllowEmpty = true })
                abs_56:AddSlider("UnitWebhookInterval", { Text = "Interval Seconds", Default = 30, Min = 5, Max = 300, Rounding = 0 })
                abs_56:AddDivider("Filters")
                abs_56:AddDropdown("UnitWebhookRarity", { Text = "Rarities", Values = EO, Default = {}, Multi = true, SelectAllButtons = true })
                abs_56:AddDropdown("UnitWebhookCharacters", {
                    Text = "Characters",
                    Values = EI,
                    Default = {},
                    Multi = true,
                    SelectAllButtons = true,
                    Searchable = true,
                    Expandable = true
                })
                abs_20 = GC.Webhook:AddRightGroupbox("Inventory Webhook", "backpack")
                abs_20:AddToggle("InventoryWebhook", {
                    Text = "Inventory Webhook",
                    Default = false,
                    Tooltip = "Posts a full inventory summary on an interval"
                })
                abs_20:AddInput("InventoryWebhookUrl", { Text = "Webhook URL", Default = "", Finished = true, AllowEmpty = true })
                abs_20:AddSlider("InventoryWebhookInterval", { Text = "Interval Minutes", Default = 15, Min = 1, Max = 240, Rounding = 0, Suffix = "m" })
                abs_20:AddToggle("InventoryWebhookUnits", { Text = "Include Units", Default = true })
                abs_20:AddToggle("InventoryWebhookItems", { Text = "Include Items", Default = true })
                abs_20:AddToggle("InventoryWebhookStats", { Text = "Include Stats", Default = true, Tooltip = "Money, rebirths, rolls and unit storage" })
                Gl = function(gV, ...)
                    local MJ
                    MJ = nil
                    if not gV then
                        return false
                    end
                    MJ = table.pack(...)
                    return pcall(function()
                        gV:Fire(table.unpack(MJ, 1, MJ.n))
                    end)
                end
            else
                abs_28:AddLabel('<font color="#7fd47f">Use the Game\'s Auto-Sell</font>', true)
                abs_28:AddToggle("AutoSellAll", { Text = "Auto Sell All", Default = false })
                abs_28:AddToggle("SellAllWhenFull", { Text = "Sell All When Full", Default = false })
                GC = EI.Units:AddLeftGroupbox("Lock", "lock")
                GC:AddToggle("AutoLock", { Text = "Auto Lock", Default = false })
                GC:AddDropdown("AutoLockRarity", { Values = abs_48, Multi = true, SelectAllButtons = true, Text = "Rarities", Default = {} })
                fns.abs_8 = EI.Tower:AddLeftGroupbox("Tower", "castle")
                fns.abs_8:AddToggle("AutoTower", { Text = "Auto Tower", Default = false, Callback = fns.onAutoTower })
                fns.abs_8:AddDropdown("AutoTowerMode", { Values = Gl, Default = "Infinity Tower", Text = "Mode" })
                fns.abs_8:AddToggle("AutoTowerRotate", {
                    Tooltip = "Cycle through the selected towers instead of repeating one map",
                    Text = "Auto Rotate Maps",
                    Callback = fns.onAutoTowerRotate,
                    Default = false
                })
                fns.abs_8:AddDropdown("AutoTowerRotateMaps", {
                    Searchable = true,
                    Text = "Rotation Maps",
                    Values = Gl,
                    Default = Gl,
                    SelectAllButtons = true,
                    Expandable = true,
                    Multi = true
                })
                fns.abs_8:AddSlider("AutoTowerRunsPerMap", { Rounding = 0, Default = 1, Max = 20, Text = "Runs Per Map", Min = 1 })
                fns.abs_8:AddToggle("AutoTowerSkipFailed", {
                    Text = "Skip Unavailable Maps",
                    Tooltip = "Move to the next map if a tower refuses to start (locked, on cooldown)",
                    Default = true
                })
                fns.abs_8:AddSlider("AutoTowerStopFloor", { Min = 0, Rounding = 0, Default = 0, Max = 1000, Text = "Stop At Floor" })
                fns.abs_8:AddToggle("AutoEquipBestTower", { Text = "Auto Equip Best", Default = false })
                fns.abs_8:AddToggle("HideTowerCombatUI", { Default = false, Callback = fns.onHideTowerCombatUI, Text = "Hide Tower Combat UI" })
                abs_20 = EI.Webhook:AddLeftGroupbox("Webhook", "webhook")
                abs_20:AddToggle("UnitWebhook", { Text = "Unit Webhook", Default = false })
                abs_20:AddInput("UnitWebhookUrl", { Finished = true, Text = "Webhook URL", Default = "", AllowEmpty = true })
                abs_20:AddSlider("UnitWebhookInterval", { Max = 300, Rounding = 0, Text = "Interval Seconds", Min = 5, Default = 30 })
                abs_20:AddDivider("Filters")
                abs_20:AddDropdown("UnitWebhookRarity", { Multi = true, Text = "Rarities", Default = {}, SelectAllButtons = true, Values = abs_48 })
                abs_20:AddDropdown("UnitWebhookCharacters", {
                    Values = abs_56,
                    Text = "Characters",
                    Searchable = true,
                    Default = {},
                    Multi = true,
                    Expandable = true,
                    SelectAllButtons = true
                })
                Gt = EI.Webhook:AddRightGroupbox("Inventory Webhook", "backpack")
                Gt:AddToggle("InventoryWebhook", {
                    Tooltip = "Posts a full inventory summary on an interval",
                    Default = false,
                    Text = "Inventory Webhook"
                })
                Gt:AddInput("InventoryWebhookUrl", { AllowEmpty = true, Default = "", Text = "Webhook URL", Finished = true })
                Gt:AddSlider("InventoryWebhookInterval", { Default = 15, Min = 1, Rounding = 0, Suffix = "m", Max = 240, Text = "Interval Minutes" })
                Gt:AddToggle("InventoryWebhookUnits", { Text = "Include Units", Default = true })
                Gt:AddToggle("InventoryWebhookItems", { Text = "Include Items", Default = true })
                Gt:AddToggle("InventoryWebhookStats", { Text = "Include Stats", Tooltip = "Money, rebirths, rolls and unit storage", Default = true })
                EO = function(gV, ...)
                    local MJ
                    MJ = nil
                    if not gV then
                        return false
                    end
                    MJ = table.pack(...)
                    return pcall(function()
                        gV:Fire(table.unpack(MJ, 1, MJ.n))
                    end)
                end
            end
            abs_60 = (abs_60 + 18) % 104
        end
    elseif abs_2 <= 10 then
        if abs_2 <= 9 then
            if abs_2 <= 8 then
                if abs_60 * 59857567 + 10 + 5 >= abs_60 * 59857567 + 10 + 5 + 2 then
                    abs_67 = function(g_, ...)
                        local ML
                        ML = nil
                        local MO_2
                        local MN_2
                        local MM_2
                        if not g_ then
                            return false, nil
                        end
                        ML = table.pack(...)
                        MM_2, MO_2, MN_2 = pcall(function()
                            return g_(table.unpack(ML, 1, ML.n))
                        end)
                        return MM_2, MO_2, MN_2
                    end
                else
                    fns.abs_7 = function(g_, ...)
                        local ML
                        ML = nil
                        local MO_1
                        local MN_1
                        local MM_1
                        if not g_ then
                            return false, nil
                        end
                        ML = table.pack(...)
                        MM_1, MO_1, MN_1 = pcall(function()
                            return g_(table.unpack(ML, 1, ML.n))
                        end)
                        return MM_1, MO_1, MN_1
                    end
                end
                abs_60 = (abs_60 + 70) % 104
            else
                if (abs_60 * 2 + 4) * 13 % 3 == ((abs_60 * 2 + 4) * 13 + 5) % 3 then
                    fns.abs_14 = typeof(request) == "function"
                else
                    abs_40 = typeof(request) == "function"
                end
                abs_60 = (abs_60 + 5) % 104
            end
        else
            abs_96 = {
                "boibpwfbwz",
                "ttxjkeqwb",
                "qnmnwg",
                "haeywzxxvk",
                "rlqyrx",
                "asqadaneuigh",
                "cfbrthoak",
                "cqu",
                "srslxg",
                "urql",
                "ofxgydsselb",
                "rlldpi"
            }
            if abs_96[(abs_60 * 66 + 63) % 12 + 1] <= abs_96[(abs_60 * 66 + 63) % 12 + 1] then
                abs_67 = function()
                    local Mu
                    local Mz
                    local Mx
                    local Mt
                    local My
                    local MA
                    Mt = nil
                    Mu = nil
                    Mx = nil
                    My = nil
                    Mz = nil
                    MA = nil
                    local Mq, Label2, Label3, Mv, Label, MB
                    MA = function(fk, fl)
                        return string.format('<font color="%s">%s</font>', fl, fk)
                    end
                    Mq = function(fo, fp, fq)
                        return string.format("<b>%s</b> %s %s", fo, MA("-", "#5a6070"), MA(fp, fq))
                    end
                    Mz = "#7fd47f"
                    Mx = "#e8a34d"
                    local MC = "#8b93a3"
                    Mt = "#e05a5a"
                    local function ME()
                        local LB = hookfunction ~= nil
                        local LC = hookmetamethod ~= nil
                        local LD = getrawmetatable ~= nil
                        local LE = setrawmetatable ~= nil
                        local LF = getgc ~= nil
                        local LG = getgenv ~= nil
                        local LH = getreg ~= nil
                        local LI = getconnections ~= nil
                        local LJ = firesignal ~= nil
                        local LK = getcallbackvalue ~= nil
                        local LL = setclipboard ~= nil
                        local LM = getcustomasset ~= nil
                        local LN = getnamecallmethod ~= nil
                        local LO = isexecutorclosure ~= nil
                        local LP = fireproximityprompt ~= nil
                        local LQ = firetouchinterest ~= nil
                        local LR = WebSocket ~= nil
                        local LS = readfile ~= nil
                        local LT = writefile ~= nil
                        local LV = (request or http_request) ~= nil
                        local LX = (debug and debug.getupvalues) ~= nil
                        local LZ = (debug and debug.setupvalue) ~= nil
                        local L_ = 0
                        local L0 = { LB, LC, LD, LE, LF, LG, LH, LI, LJ, LK, LL, LM, LN, LO, LP, LQ, LR, LS, LT, LV, LX, LZ }
                        for i, v in ipairs(L0) do
                            if v then
                                L_ += 1
                            end
                        end
                        local LB_2 = L_ / #L0
                        if LB_2 >= 0.9 then
                            return MA("Full Support", Mz)
                        elseif LB_2 >= 0.6 then
                            return MA("Half Support", Mx)
                        else
                            return MA("Low Support", Mt)
                        end
                    end
                    Mu = "Unknown"
                    pcall(function()
                        local L9_2
                        local L8_3
                        if identifyexecutor then
                            L9_2, L8_3 = identifyexecutor()
                            local Ma = L9_2 ~= ""
                            local Mb = type(L9_2) == "string" and Ma
                            if Mb then
                                local Ma_2 = type(L8_3) == "string" and L8_3 ~= "" and L9_2 .. " " .. L8_3
                                Mu = Ma_2 or L9_2
                            end
                        end
                    end)
                    local MF = ME()
                    My = os.clock()
                    MB = function()
                        local Mg = math.floor(os.clock() - My)
                        if Mg < 60 then
                            return Mg .. "s"
                        elseif Mg < 3600 then
                            return string.format("%dm %ds", Mg // 60, Mg % 60)
                        else
                            return string.format("%dh %dm", Mg // 3600, Mg % 3600 // 60)
                        end
                    end
                    local UserGroup = GC.Info:AddLeftGroupbox("User", "circle-user")
                    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                    UserGroup:AddLabel(Mq("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Mz), true)
                    UserGroup:AddLabel(Mq("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                    UserGroup:AddLabel(Mq("Executor", Mu .. "  " .. MF, Mz), true)
                    UserGroup:AddDivider()
                    Label3 = UserGroup:AddLabel(Mq("Session", MB(), Mx), true)
                    UserGroup:AddDivider()
                    UserGroup:AddButton({
                        Text = "Copy Username",
                        Func = function()
                            EN(LocalPlayer.Name, "Copied username")
                        end
                    })
                    UserGroup:AddButton({
                        Text = "Copy Profile Link",
                        Func = function()
                            EN("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                        end
                    })
                    local SessionGroup = GC.Info:AddRightGroupbox("Session", "signal")
                    SessionGroup:AddDivider("Server")
                    SessionGroup:AddLabel(Mq("Game", abs_43, "#6ec1ff"), true)
                    Label2 = SessionGroup:AddLabel(Mq("Players", "0/0", Mz), true)
                    Mv = tostring(game.JobId)
                    local MD = #Mv > 18 and string.sub(Mv, 1, 18) .. "..."
                    local MF_2 = MD or Mv
                    SessionGroup:AddLabel(Mq("Job", MF_2, MC), true)
                    Label = SessionGroup:AddLabel(Mq("Ping", "0 ms", Mx), true)
                    SessionGroup:AddDivider()
                    SessionGroup:AddButton({
                        Text = "Rejoin Server",
                        Func = function()
                            TeleportService:Teleport(game.PlaceId, LocalPlayer)
                        end
                    })
                    SessionGroup:AddButton({
                        Text = "Copy Job ID",
                        Func = function()
                            EN(Mv, "Copied Job ID")
                        end
                    })
                    task.spawn(function()
                        local Mj_2
                        local Mi_3
                        while true do
                            task.wait(1)
                            if E6.Unloaded then
                                break
                            end
                            Label3:SetText(Mq("Session", MB(), Mx))
                            Label2:SetText(Mq("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Mz))
                            Mi_3, Mj_2 = pcall(function()
                                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                            end)
                            local Mi_4 = Mi_3 and Mj_2 .. " ms" or "n/a"
                            Label:SetText(Mq("Ping", Mi_4, Mx))
                        end
                    end)
                    local SocialsGroup = GC.Info:AddRightGroupbox("Socials", "link")
                    SocialsGroup:AddButton({ Text = "Discord", Func = Er })
                    SocialsGroup:AddButton({
                        Text = "Rscripts",
                        Func = function()
                            if setclipboard then
                                setclipboard(E8)
                            elseif toclipboard then
                                toclipboard(E8)
                            end
                            E6:Notify("Copied Rscripts profile to clipboard")
                        end
                    })
                    SocialsGroup:AddButton({
                        Text = "Website",
                        Func = function()
                            EN(E2, "Copied website link")
                        end
                    })
                end
            else
                abs_89 = function()
                    local Mu
                    local Mz
                    local Mx
                    local Mt
                    local My
                    local MA
                    Mt = nil
                    Mu = nil
                    Mx = nil
                    My = nil
                    Mz = nil
                    MA = nil
                    local Mq, Label2, Label3, Mv, Label, MB
                    MA = function(fk, fl)
                        return string.format('<font color="%s">%s</font>', fl, fk)
                    end
                    Mq = function(fo, fp, fq)
                        return string.format("<b>%s</b> %s %s", fo, MA("-", "#5a6070"), MA(fp, fq))
                    end
                    Mz = "#7fd47f"
                    Mx = "#e8a34d"
                    local MC = "#8b93a3"
                    Mt = "#e05a5a"
                    local function ME()
                        local LB = hookfunction ~= nil
                        local LC = hookmetamethod ~= nil
                        local LD = getrawmetatable ~= nil
                        local LE = setrawmetatable ~= nil
                        local LF = getgc ~= nil
                        local LG = getgenv ~= nil
                        local LH = getreg ~= nil
                        local LI = getconnections ~= nil
                        local LJ = firesignal ~= nil
                        local LK = getcallbackvalue ~= nil
                        local LL = setclipboard ~= nil
                        local LM = getcustomasset ~= nil
                        local LN = getnamecallmethod ~= nil
                        local LO = isexecutorclosure ~= nil
                        local LP = fireproximityprompt ~= nil
                        local LQ = firetouchinterest ~= nil
                        local LR = WebSocket ~= nil
                        local LS = readfile ~= nil
                        local LT = writefile ~= nil
                        local LV = (request or http_request) ~= nil
                        local LX = (debug and debug.getupvalues) ~= nil
                        local LZ = (debug and debug.setupvalue) ~= nil
                        local L_ = 0
                        local L0 = { LB, LC, LD, LE, LF, LG, LH, LI, LJ, LK, LL, LM, LN, LO, LP, LQ, LR, LS, LT, LV, LX, LZ }
                        for i, v in ipairs(L0) do
                            if v then
                                L_ += 1
                            end
                        end
                        local LB_1 = L_ / #L0
                        if LB_1 >= 0.9 then
                            return MA("Full Support", Mz)
                        elseif LB_1 >= 0.6 then
                            return MA("Half Support", Mx)
                        else
                            return MA("Low Support", Mt)
                        end
                    end
                    Mu = "Unknown"
                    pcall(function()
                        local L9_1
                        local L8_1
                        if identifyexecutor then
                            L9_1, L8_1 = identifyexecutor()
                            local Ma = L9_1 ~= ""
                            local Mb = type(L9_1) == "string" and Ma
                            if Mb then
                                local Ma_1 = type(L8_1) == "string" and L8_1 ~= "" and L9_1 .. " " .. L8_1
                                Mu = Ma_1 or L9_1
                            end
                        end
                    end)
                    local MF = ME()
                    My = os.clock()
                    MB = function()
                        local Mg = math.floor(os.clock() - My)
                        if Mg < 60 then
                            return Mg .. "s"
                        elseif Mg < 3600 then
                            return string.format("%dm %ds", Mg // 60, Mg % 60)
                        else
                            return string.format("%dh %dm", Mg // 3600, Mg % 3600 // 60)
                        end
                    end
                    local UserGroup = GC.Info:AddLeftGroupbox("User", "circle-user")
                    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                    UserGroup:AddLabel(Mq("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Mz), true)
                    UserGroup:AddLabel(Mq("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                    UserGroup:AddLabel(Mq("Executor", Mu .. "  " .. MF, Mz), true)
                    UserGroup:AddDivider()
                    Label3 = UserGroup:AddLabel(Mq("Session", MB(), Mx), true)
                    UserGroup:AddDivider()
                    UserGroup:AddButton({
                        Text = "Copy Username",
                        Func = function()
                            EN(LocalPlayer.Name, "Copied username")
                        end
                    })
                    UserGroup:AddButton({
                        Text = "Copy Profile Link",
                        Func = function()
                            EN("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                        end
                    })
                    local SessionGroup = GC.Info:AddRightGroupbox("Session", "signal")
                    SessionGroup:AddDivider("Server")
                    SessionGroup:AddLabel(Mq("Game", abs_43, "#6ec1ff"), true)
                    Label2 = SessionGroup:AddLabel(Mq("Players", "0/0", Mz), true)
                    Mv = tostring(game.JobId)
                    local MD = #Mv > 18 and string.sub(Mv, 1, 18) .. "..."
                    local MF_1 = MD or Mv
                    SessionGroup:AddLabel(Mq("Job", MF_1, MC), true)
                    Label = SessionGroup:AddLabel(Mq("Ping", "0 ms", Mx), true)
                    SessionGroup:AddDivider()
                    SessionGroup:AddButton({
                        Text = "Rejoin Server",
                        Func = function()
                            TeleportService:Teleport(game.PlaceId, LocalPlayer)
                        end
                    })
                    SessionGroup:AddButton({
                        Text = "Copy Job ID",
                        Func = function()
                            EN(Mv, "Copied Job ID")
                        end
                    })
                    task.spawn(function()
                        local Mj_1
                        local Mi_1
                        while true do
                            task.wait(1)
                            if E6.Unloaded then
                                break
                            end
                            Label3:SetText(Mq("Session", MB(), Mx))
                            Label2:SetText(Mq("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Mz))
                            Mi_1, Mj_1 = pcall(function()
                                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                            end)
                            local Mi_2 = Mi_1 and Mj_1 .. " ms" or "n/a"
                            Label:SetText(Mq("Ping", Mi_2, Mx))
                        end
                    end)
                    local SocialsGroup = GC.Info:AddRightGroupbox("Socials", "link")
                    SocialsGroup:AddButton({ Text = "Discord", Func = Er })
                    SocialsGroup:AddButton({
                        Text = "Rscripts",
                        Func = function()
                            if setclipboard then
                                setclipboard(E8)
                            elseif toclipboard then
                                toclipboard(E8)
                            end
                            E6:Notify("Copied Rscripts profile to clipboard")
                        end
                    })
                    SocialsGroup:AddButton({
                        Text = "Website",
                        Func = function()
                            EN(E2, "Copied website link")
                        end
                    })
                end
            end
            abs_60 = (abs_60 + 83) % 104
        end
    elseif abs_2 <= 12 then
        if abs_2 <= 11 then
            abs_2 = (vector.create((abs_60 * 1 + 1) % 11 + 1, (abs_60 * 2 + 13) % 13 + 1, (abs_60 * 5 + 8) % 17 + 1))
            abs_96 = (vector.create((abs_60 * 3 + 9) % 11 + 1, (abs_60 * 2 + 1) % 13 + 1, (abs_60 * 14 + 13) % 17 + 1))
            local aei = vector.cross(abs_2, abs_96)
            local aej = vector.dot(abs_2, abs_96)
            if vector.dot(aei, aei) + aej * aej == vector.dot(abs_2, abs_2) * vector.dot(abs_96, abs_96) + 1 then
                abs_80()
                GC = abs_67.Farm:AddLeftGroupbox("Farm", "dices")
            else
                abs_67()
                abs_80 = GC.Farm:AddLeftGroupbox("Farm", "dices")
            end
            abs_60 = (abs_60 + 18) % 104
        else
            local agM = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_60, 15), string.byte(tostring(abs_56))), 22)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(agM, 1845133939), 705390062), (bit32.bxor(bit32.band(agM, 2449833356), 3579049248))), 705390062), 3579049248) == agM then
                abs_80:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
                abs_80:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
                abs_80:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
                abs_80:AddToggle("AutoClaimQuest", { Text = "Auto Claim Quest", Default = false })
                abs_93 = GC.Farm:AddRightGroupbox("Equip", "star")
            else
                GC:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
                GC:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
                GC:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
                GC:AddToggle("AutoClaimQuest", { Text = "Auto Claim Quest", Default = false })
                abs_80 = abs_93.Farm:AddRightGroupbox("Equip", "star")
            end
            abs_60 = (abs_60 + 18) % 104
        end
    else
        local afX = bit32.rrotate(bit32.bxor(bit32.lrotate(abs_60, 23), string.byte(tostring(abs_53))), 23)
        if bit32.bxor(bit32.lrotate(bit32.bxor(afX, 3859758559), 8), 255713254) ~= bit32.lrotate(afX, 8) then
            fns.abs_14:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
            fns.abs_14:AddToggle("AutoEquipBestDice", { Text = "Auto Equip Best Owned Dice", Default = false })
            GC = abs_93.Shop:AddLeftGroupbox("Upgrades", "arrow-up")
        else
            abs_93:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
            abs_93:AddToggle("AutoEquipBestDice", { Text = "Auto Equip Best Owned Dice", Default = false })
            fns.abs_14 = GC.Shop:AddLeftGroupbox("Upgrades", "arrow-up")
        end
        abs_60 = (abs_60 + 44) % 104
    end
until (abs_60 * 47 + 53) % 104 == 71
if abs_40 then
    abs_40 = request
end
abs_22 = abs_40
if not abs_22 then
    abs_85 = nil
    abs_2 = 1
    repeat
        abs_72 = (vector.create((abs_2 * 2 + 5) % 11 + 1, (abs_2 * 6 + 9) % 13 + 1, (abs_2 * 15 + 5) % 17 + 1))
        abs_60 = (vector.create((abs_2 * 5 + 4) % 11 + 1, (abs_2 * 1 + 7) % 13 + 1, (abs_2 * 10 + 6) % 17 + 1))
        abs_48 = (vector.create((abs_2 * 7 + 1) % 11 + 1, (abs_2 * 9 + 4) % 13 + 1, (abs_2 * 5 + 15) % 17 + 1))
        abs_28 = (vector.create((abs_2 * 1 + 6) % 5 + 1, (abs_2 * 3 + 4) % 7 + 1, (abs_2 * 2 + 7) % 9 + 1))
        if vector.dot(vector.cross(abs_72, (vector.cross(abs_60, abs_48))), abs_28) == vector.dot(abs_60 * vector.dot(abs_72, abs_48) - abs_48 * vector.dot(abs_72, abs_60), abs_28) then
            abs_85 = typeof(http_request) == "function"
        else
            abs_85 = typeof(http_request) == "function"
        end
        abs_2 = (abs_2 + 0) % 4
    until (abs_2 * 3 + 3) % 4 == 2
    if abs_85 then
        abs_85 = http_request
    end
    abs_22 = abs_85
end
if not abs_22 then
    abs_85 = nil
    abs_2 = 0
    repeat
        if abs_2 * 106005187 + 5 + 5 >= abs_2 * 106005187 + 5 + 5 + 6 then
            abs_85 = typeof(http) == "table"
        else
            abs_85 = typeof(http) == "table"
        end
        abs_2 = (abs_2 + 0) % 4
    until (abs_2 * 1 + 0) % 4 == 0
    if abs_85 then
        abs_2 = 3
        repeat
            abs_72 = { "sjdmqfmi", "kcmrwzkjyd", "wzen", "skvqv", "pmodb", "xwo", "ivtvmzjwcji" }
            local agL = abs_2
            abs_60 = abs_72[agL % 7 + 1]
            if abs_60:len() <= abs_60:reverse():rep(agL % 3 + 2):len() then
                abs_85 = typeof(http.request) == "function"
            else
                abs_85 = typeof(http.request) == "function"
            end
            abs_2 = (abs_2 + 3) % 8
        until (abs_2 * 3 + 1) % 8 == 3
    end
    if abs_85 then
        abs_85 = http.request
    end
    abs_22 = abs_85
end
abs_2 = abs_22
local abs_33 = if abs_2 then 1 else 0
local abs_62 = 3601 * abs_33 + 2999 * (1 - abs_33)
local abs_52 = 3242 * abs_33 + 67 * (1 - abs_33)
if not ((abs_62 * 673 + abs_52 * 52 + abs_62 * abs_52) % 16777213 == 14266499) then
    abs_2 = nil
end
EC, Ey, fns.abs_1, GP, EQ, FX, Ft, Fo, Fe, GR, GN, E7, GI, F5, FB, EE, fns.abs_19, Gy, abs_50, Gr, FR, Fm, EJ, Es, Gg, GD, Go, F0, FE, Fj, Ew, FV, FO, E9, EL, F3, E4, Ez, Gb, FK, Fa, GJ, Gw, Fk, E3, Gm, EX, Ex, Fu, fns.abs_10, E_, abs_36, abs_42, abs_37, E1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
EC = abs_2
Ey = nil
fns.abs_1 = {}
GP = os.clock()
GI = fns.fn1196
F5 = fns.fn504
FB = fns.fn163
EE = fns.fn1493
fns.abs_19 = fns.fn827
Gy = fns.fn1416
EQ = 0
abs_50 = fns.fn200
Gr = fns.fn658
FX = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
FR = fns.fn399
Fm = fns.fn592
EJ = fns.fn1124
Es = function()
    local Od = Et()
    local Oe = {}
    local Of = {}
    local Og = 0
    local Oc = {}
    local Oh = {}
    local Oi = 0
    for k, v in Od do
        local Od_1 = type(v) ~= "table" or type(v.name) ~= "string"
        if not Od_1 then
            local Od_2 = EntryRegistry.getEntryConfig(v.name)
            if not not Od_2 then
                local max = math.max
                local floor = math.floor
                local Ol_1 = tonumber(v.amount) or 1
                local Om_1 = max(1, floor(Ol_1))
                if Od_2.kind == "Unit" then
                    local Od_3 = Fr(v) or "Unknown"
                    local Od_4 = Oe[Od_3]
                    if not Od_4 then
                        Od_4 = {}
                        Oe[Od_3] = Od_4
                    end
                    local Ok_2 = F7(v, "mutation")
                    local Ol_2 = v.name
                    local On_1 = Ok_2 ~= ""
                    local Oo_1 = type(Ok_2) == "string" and On_1
                    if Oo_1 then
                        Ol_2 = Ok_2 .. " " .. Ol_2
                    end
                    local Ok_3 = Od_4[Ol_2] or 0
                    Od_4[Ol_2] = Ok_3 + Om_1
                    local Od_5 = Of[Od_3] or 0
                    Of[Od_3] = Od_5 + Om_1
                    Og += Om_1
                else
                    if Oc[v.name] == nil then
                        Oh[#Oh + 1] = v.name
                    end
                    local name = v.name
                    local Oj_3 = Oc[v.name] or 0
                    Oc[name] = Oj_3 + Om_1
                    Oi += Om_1
                end
            end
        end
    end
    local Od_7 = {}
    if F9("InventoryWebhookStats") then
        local Oj_4 = EK()
        local Ok_4 = string.format("%-13s %s", "Money", FR(Ff()))
        local Ol_3 = string.format("%-13s %s", "Rebirths", FR(EY()))
        local format = string.format
        local On_2 = (tonumber(ES(GK.Rolls)))
        local Oz = if On_2 then 1 else 0
        local Ox = 1622 * Oz + 1743 * (1 - Oz)
        local Oy = 4064 * Oz + 151 * (1 - Oz)
        if not ((Ox * 1311 + Oy * 2230 + Ox * Oy) % 16777213 == 1003757) then
            On_2 = 0
        end
        local Oo_2 = format("%-13s %s", "Rolls", FR(On_2))
        local Oj_5 = Oj_4 ~= "" and Oj_4 or "None"
        local Om_3 = {
            Ok_4,
            Ol_3,
            Oo_2,
            format("%-13s %s", "Dice", Oj_5),
            string.format("%-13s %d/%d", "Unit Storage", EV(), Fq())
        }
        Od_7[1] = { name = "Stats", value = Fm(Om_3), inline = false }
    end
    if F9("InventoryWebhookUnits") then
        local Oj_6 = {}
        for k, v in EO do
            if Oe[v] then
                Oj_6[#Oj_6 + 1] = v
            end
        end
        for k in Oe do
            if not table.find(Oj_6, k) then
                Oj_6[#Oj_6 + 1] = k
            end
        end
        if #Oj_6 == 0 then
            Od_7[#Od_7 + 1] = { name = "Units", value = "None", inline = false }
        end
        for k, v in Oj_6 do
            local Oj_7 = {}
            for k, v in Oe[v] do
                Oj_7[#Oj_7 + 1] = { label = k, count = v }
            end
            table.sort(Oj_7, function(jl, jm)
                if jl.count ~= jm.count then
                    return jl.count > jm.count
                end
                return jl.label < jm.label
            end)
            local Ok_5 = {}
            for k, v in Oj_7 do
                Ok_5[#Ok_5 + 1] = EJ(v.label, tostring(v.count))
            end
            local Oj_8 = #Od_7 + 1
            local format = string.format
            local Om_4 = Of[v] or 0
            Od_7[Oj_8] = { name = format("%s  (%d)", v, Om_4), value = Fm(Ok_5), inline = true }
        end
    end
    if F9("InventoryWebhookItems") then
        table.sort(Oh, function(jr, js)
            if Oc[jr] ~= Oc[js] then
                return Oc[jr] > Oc[js]
            end
            return jr < js
        end)
        local Oe_1 = {}
        for k, v in Oh do
            Oe_1[#Oe_1 + 1] = EJ(v, FR(Oc[v]))
        end
        Od_7[#Od_7 + 1] = { name = string.format("Items  (%d)", Oi), value = Fm(Oe_1), inline = false }
    end
    while #Od_7 > 25 do
        table.remove(Od_7)
    end
    return Od_7, Og, Oi
end
Gg = fns.fn958
abs_20:AddButton({ Text = "Send Now", Func = fns.onSendNow })
GD = fns.fn1351
Go = fns.fn1108
F0 = fns.fn146
FE = fns.fn1266
Fj = fns.fn1153
Ew = fns.fn840
FV = function()
    local Py_1
    local Pw = math.floor(workspace:GetServerTimeNow())
    for k, v in Fp.Periods do
        local PH = k
        local Px = type(v) ~= "table" or type(v.quests) ~= "table"
        local Px_1
        if not Px then
            Px_1, Py_1 = pcall(function()
                return ES(GK.Quests[PH])
            end)
            local Pz = not Px_1 or type(Py_1) ~= "table"
            if not Pz then
                local Px_2 = tonumber(Py_1.expiresAt)
                if not (not Px_2 or Px_2 == 0 or Px_2 <= Pw) then
                    local progress = Py_1.progress
                    local claimed = Py_1.claimed
                    local Py_2 = type(progress) ~= "table" or type(claimed) ~= "table"
                    if not Py_2 then
                        for k, v in v.quests do
                            local Py_3 = type(v) ~= "table" or type(v.id) ~= "string"
                            if not Py_3 then
                                if not (claimed[v.id] == true) then
                                    local Py_4 = tonumber(progress[v.id]) or 0
                                    local Py_5 = tonumber(v.target)
                                    if Py_5 and Py_4 >= Py_5 then
                                        Gl(Fi, PH, v.id, Px_2)
                                        task.wait(0.25)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
FO = fns.fn668
Ft = 0
if ((FB or abs_42) and (abs_42 or not FB) or EJ and EJ and (not EJ and EJ)) and (not EJ or FB or (abs_42 or abs_42) or (EJ and not abs_42 or (not EJ or abs_42))) and (abs_42 and EJ or (abs_42 or not abs_42) or (not EJ and not abs_42 or (not abs_42 or EJ)) or ((not EJ or EJ) and (EJ or abs_42) or (not EJ or not EJ or (FB or not EJ)))) or not (((FB or abs_42) and (abs_42 or not FB) or EJ and EJ and (not EJ and EJ)) and (not EJ or FB or (abs_42 or abs_42) or (EJ and not abs_42 or (not EJ or abs_42))) and (abs_42 and EJ or (abs_42 or not abs_42) or (not EJ and not abs_42 or (not abs_42 or EJ)) or ((not EJ or EJ) and (EJ or abs_42) or (not EJ or not EJ or (FB or not EJ))))) then
    Fo = 0
    Fe = 0
    E9 = fns.fn1244
    EL = fns.fn117
else
    EL = 0
    E9 = 0
    Fe = fns.fn1244
    Fo = fns.fn117
end
F3 = fns.fn1449
E4 = fns.fn1126
Ez = fns.fn956
Gb = fns.fn596
FK = fns.fn60
Fa = fns.fn340
GJ = function()
    local QC
    local QF_3
    local QD = F9("AutoTowerRotate")
    QC = Fa()
    local QE = E4()
    local QE_3
    if EL() then
        FS = true
        local QF_1 = QE > 0 and F3() >= QE
        if QF_1 then
            if os.clock() - Fe >= 0.5 then
                Fe = os.clock()
                fns.abs_7(FD)
                if QD then
                    FK()
                    FS = false
                else
                    Ga = true
                end
            end
        end
        task.wait(0.35)
        return
    end
    if FS then
        FS = false
        abs_24 += 1
        local QE_1 = QD and abs_24 >= Gb()
        if QE_1 then
            QC = FK()
        end
    end
    if Ga and not QD then
        task.wait(0.35)
        return
    end
    local QK = if os.clock() - Fo < 3 then 1 else 0
    if QK == 1 then
        task.wait(0.2)
        return
    end
    if F9("AutoEquipBestTower") then
        E9()
        task.wait(0.35)
    end
    QE_3, QF_3 = pcall(function()
        return FC.startTower(QC)
    end)
    if QE_3 and QF_3 then
        Fo = os.clock()
        Ga = false
    else
        local QE_4 = QD and F9("AutoTowerSkipFailed")
        if QE_4 then
            FK()
            task.wait(0.35)
        end
    end
    task.wait(0.5)
end
Gw = fns.fn1090
Fk = function()
    local Q9
    local Ra = Ff()
    for i = 1, 32 do
        local Q8, Rb
        Q8 = nil
        Rb = nil
        Q9 = function(mw)
            for k, v in Gn.GetChildren(mw) do
                if Gf(v) then
                    Q9(v)
                else
                    local QZ = Gu[v]
                    local Q_ = type(QZ) == "table" and tonumber(QZ.price)
                    local QZ_1 = Q_
                    if Q_ then
                        Q_ = Ra >= QZ_1
                    end
                    if Q_ then
                        Q_ = not Q8 or QZ_1 < Q8
                    end
                    if Q_ then
                        Q8 = QZ_1
                        Rb = v
                    end
                end
            end
        end
        Q9("Start")
        if not Rb then
            return
        end
        Gl(FP, Rb)
        Ra = Ff()
    end
end
E3 = fns.fn1620
Gm = fns.fn217
EX = fns.fn1613
Ex = fns.fn1559
Fu = fns.fn1518
fns.abs_10 = fns.fn1726
E_ = fns.fn131
abs_36 = fns.fn604
GR = 0
abs_42 = fns.fn349
abs_85 = function()
    local Ve
    local Vf
    local Vd
    local U7
    U7 = nil
    Vd = nil
    Ve = nil
    Vf = nil
    local UZ, U_, U0, U1, U2, U3, U4, U5, Label, U8, U9, Va, Vb, Vc, Vg, Vh, Vi, Vj, Vk, Label2, Vm, Vn, Vo, Vp, Vq, Vr, Vs, Vt, Vu, Vv, Vw, Vx, Vy, Vz, VA, VB, VC, VD, VE
    Vk = "Receiver (Collect)"
    Vz = "Sender (Give)"
    local VF = EU.new(Ev, false, "TradeService")
    U9 = VF:GetSignal("RequestTrade")
    VD = VF:GetSignal("RespondToRequest")
    Vp = VF:GetSignal("ChangeOffer")
    Vc = VF:GetSignal("AdvanceTrade")
    VE = VF:GetSignal("CancelTrade")
    Vs = VF:GetSignal("SetTradeRequestsEnabled")
    local VG = VF:GetSignal("TradeEvent")
    local VF_1 = {}
    local VH = {}
    for k, v in { "Boost", "Spin", "Token" } do
        local VI = EntryRegistry.entriesOfKind(v)
        if type(VI) == "table" then
            for k in VI do
                local VI_1 = type(k) == "string" and not VH[k] and not table.find(TradeConfig.UNTRADEABLE_ENTRIES, k)
                if VI_1 then
                    VH[k] = true
                    VF_1[#VF_1 + 1] = k
                end
            end
        end
    end
    table.sort(VF_1)
    local AutoTradeGroup = GC.Trade:AddLeftGroupbox("Auto Trade", "arrow-left-right")
    AutoTradeGroup:AddToggle("AutoTrade", { Text = "Auto Trade", Default = false })
    AutoTradeGroup:AddDropdown("AutoTradeRole", {
        Text = "Role",
        Values = { Vz, Vk },
        Default = Vz,
        Tooltip = "Sender gives the filtered items away, Receiver only accepts and confirms"
    })
    AutoTradeGroup:AddDropdown("AutoTradePartners", {
        Text = "Partners In Server",
        Values = { "None" },
        Default = {},
        Multi = true,
        SelectAllButtons = true,
        Searchable = true,
        Expandable = true
    })
    AutoTradeGroup:AddInput("AutoTradePartnerNames", {
        Text = "Extra Usernames",
        Default = "",
        Finished = true,
        AllowEmpty = true,
        Placeholder = "name1, name2, name3"
    })
    AutoTradeGroup:AddToggle("AutoTradeConfirm", {
        Text = "Auto Confirm",
        Default = true,
        Tooltip = "Turn off to offer and ready up but leave the final confirm to you"
    })
    AutoTradeGroup:AddToggle("AutoTradeEnableRequests", { Text = "Keep Trade Requests Enabled", Default = true })
    AutoTradeGroup:AddToggle("AutoTradeDeclineOthers", { Text = "Decline Other Requests", Default = false })
    AutoTradeGroup:AddToggle("AutoTradeLoop", {
        Text = "Repeat Until Empty",
        Default = true,
        Tooltip = "Keep starting new trades while items still match the filters"
    })
    AutoTradeGroup:AddSlider("AutoTradeMaxEntries", { Text = "Max Unique Entries", Default = 20, Min = 1, Max = 20, Rounding = 0 })
    AutoTradeGroup:AddSlider("AutoTradeDelay", { Text = "Delay Between Trades", Default = 3, Min = 1, Max = 30, Rounding = 0, Suffix = "s" })
    Label2 = AutoTradeGroup:AddLabel("Idle", true)
    Label = AutoTradeGroup:AddLabel("Trades: 0", true)
    AutoTradeGroup:AddButton({
        Text = "Cancel Current Trade",
        Func = function()
            Gl(VE)
        end
    })
    local GiveUnitsGroup = GC.Trade:AddRightGroupbox("Give Units", "sparkles")
    GiveUnitsGroup:AddToggle("AutoTradeGiveUnits", { Text = "Give Units", Default = false })
    GiveUnitsGroup:AddDropdown("AutoTradeRarity", { Text = "Rarities", Values = EO, Default = {}, Multi = true, SelectAllButtons = true })
    GiveUnitsGroup:AddDropdown("AutoTradeCharacters", {
        Text = "Characters",
        Values = EI,
        Default = {},
        Multi = true,
        SelectAllButtons = true,
        Searchable = true,
        Expandable = true
    })
    GiveUnitsGroup:AddToggle("AutoTradeSkipLocked", { Text = "Skip Locked Units", Default = true })
    GiveUnitsGroup:AddToggle("AutoTradeSkipPlaced", { Text = "Skip Placed Units", Default = true })
    local GiveItemsGroup = GC.Trade:AddRightGroupbox("Give Items", "package")
    GiveItemsGroup:AddToggle("AutoTradeGiveItems", { Text = "Give Items", Default = false })
    GiveItemsGroup:AddDropdown("AutoTradeItems", {
        Text = "Items",
        Values = VF_1,
        Default = {},
        Multi = true,
        SelectAllButtons = true,
        Searchable = true,
        Expandable = true
    })
    GiveItemsGroup:AddDropdown("AutoTradeSendAmount", {
        Text = "Send Amount Per Item",
        Values = { "1", "10", "100", "1000", "All" },
        Default = "All",
        Tooltip = "How many of each selected item to put in the offer"
    })
    GiveItemsGroup:AddSlider("AutoTradeKeepAmount", { Text = "Keep Amount Per Item", Default = 0, Min = 0, Max = 100, Rounding = 0 })
    local SafetyGroup = GC.Trade:AddLeftGroupbox("Safety", "shield")
    SafetyGroup:AddToggle("AutoTradeWaitPartner", {
        Text = "Wait For Partner Offer",
        Default = false,
        Tooltip = "Only ready up once the partner has offered at least one entry"
    })
    SafetyGroup:AddToggle("AutoTradeCancelUnexpected", {
        Text = "Cancel Unexpected Offers",
        Default = true,
        Tooltip = "Cancel the trade if anything you did not plan ends up in your own offer"
    })
    Vi = 0
    VA = "Idle"
    Vy = 0
    Vf = nil
    U_ = nil
    Vg = 0
    Vw = 0
    U4 = {}
    Ve = {
        [1] = false,
        [2] = nil,
        [3] = "Offer",
        [4] = {},
        [5] = 0,
        [6] = false,
        [7] = false,
        [8] = false,
        [9] = false,
        [10] = 0
    }
    Vu = nil
    U5 = 0
    U2 = 0
    Vm = function()
        if (Fl.AutoTradeRole and Fl.AutoTradeRole.Value) == Vk then
            return Vk
        end
        return Vz
    end
    Vd = function()
        local Sw = {}
        for k in FI(Fl.AutoTradePartners) do
            local Sx_1 = k ~= "None"
            local Sy_1 = type(k) == "string" and Sx_1
            if Sy_1 then
                Sw[string.lower(k)] = true
            end
        end
        local Sx_2 = Fl.AutoTradePartnerNames and Fl.AutoTradePartnerNames.Value
        if type(Sx_2) == "string" then
            for k in string.gmatch(Sx_2, "[^,;%s]+") do
                Sw[string.lower(k)] = true
            end
        end
        return Sw
    end
    Vj = function(pE)
        local SL = typeof(pE) ~= "Instance"
        local SQ = if SL then 1 else 0
        local SO = 1881 * SQ + 1307 * (1 - SQ)
        local SP = 4007 * SQ + 3767 * (1 - SQ)
        if not ((SO * 1567 + SP * 789 + SO * SP) % 16777213 == 13646217) then
            SL = not pE:IsA("Player")
        end
        if SL then
            return false
        end
        local SL_1 = Vd()
        if next(SL_1) == nil then
            return false
        end
        local SM = SL_1[string.lower(pE.Name)] == true
        local ST = if SM then 1 else 0
        local SR = 3749 * ST + 1798 * (1 - ST)
        local SS = 562 * ST + 3223 * (1 - ST)
        if not ((SR * 541 + SS * 3124 + SR * SS) % 16777213 == 5890835) then
            SM = SL_1[string.lower(pE.DisplayName)] == true
        end
        return SM
    end
    Vo = function()
        local AutoTradeMaxEntries = Fl.AutoTradeMaxEntries
        local SV = AutoTradeMaxEntries and tonumber(AutoTradeMaxEntries.Value)
        local SU_1 = SV or 20
        return math.clamp(math.floor(SU_1), 1, TradeConfig.MAX_UNIQUE_ENTRIES)
    end
    Vt = function()
        local AutoTradeDelay = Fl.AutoTradeDelay
        local SY = AutoTradeDelay and tonumber(AutoTradeDelay.Value)
        local SX_1 = SY or 3
        return math.clamp(math.floor(SX_1), 1, 30)
    end
    U1 = function()
        local AutoTradeKeepAmount = Fl.AutoTradeKeepAmount
        local S0 = AutoTradeKeepAmount and tonumber(AutoTradeKeepAmount.Value)
        local S__1 = S0 or 0
        return math.max(0, math.floor(S__1))
    end
    Vx = function()
        local S2 = Fl.AutoTradeSendAmount and Fl.AutoTradeSendAmount.Value
        local S2_1 = tonumber(S2) or math.huge
        return S2_1
    end
    VB = function()
        local S5 = {}
        if Vm() ~= Vz then
            return S5
        end
        local S6 = F9("AutoTradeGiveUnits")
        local S7 = F9("AutoTradeGiveItems")
        if not (S6 or S7) then
            return S5
        end
        local S8_1 = FI(Fl.AutoTradeRarity)
        local S9 = FI(Fl.AutoTradeCharacters)
        local Ta = FI(Fl.AutoTradeItems)
        local Tb = F9("AutoTradeSkipLocked")
        local Tc = F9("AutoTradeSkipPlaced")
        local Td = Tc and EH()
        local Tf = Td or {}
        local Te_1 = U1()
        local Tf_1 = Vx()
        local Tg = Vo()
        for k, v in Et() do
            if #S5 >= Tg then
                break
            else
                local Th = type(k) ~= "string" or type(v) ~= "table"
                if not Th then
                    local Th_1 = EntryRegistry.getEntryConfig(v.name)
                    if not not Th_1 then
                        if not table.find(TradeConfig.UNTRADEABLE_ENTRIES, v.name) then
                            if Th_1.kind == "Unit" then
                                if not not S6 then
                                    local Th_2 = Tb and FL(v)
                                    if not Th_2 then
                                        if not (Tc and Tf[k]) then
                                            if not not Fd(S9, v.name) then
                                                if not not Fd(S8_1, Fr(v)) then
                                                    local Th_4 = #S5 + 1
                                                    local max = math.max
                                                    local Tj_1 = tonumber(v.amount) or 1
                                                    S5[Th_4] = { key = k, amount = max(1, Tj_1) }
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif not not S7 then
                                local Th_5 = next(Ta) == nil or Ta[v.name] ~= true
                                if not Th_5 then
                                    local min = math.min
                                    local Ti_2 = tonumber(v.amount) or 0
                                    local Tj_2 = min(Ti_2 - Te_1, Tf_1)
                                    if not (Tj_2 < 1) then
                                        S5[#S5 + 1] = { key = k, amount = math.floor(Tj_2) }
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return S5
    end
    U7 = function(qB)
        if not Vf then
            return 0
        end
        for k, v in Vf do
            if v.key == qB then
                return v.amount
            end
        end
        return 0
    end
    Vr = function()
        if not Vf then
            return false
        end
        for k, v in Vf do
            local Ty = tonumber(Ve[4][v.key]) or 0
            if Ty < v.amount then
                return false
            end
        end
        return true
    end
    U0 = function()
        for k, v in Ve[4] do
            local TG = tonumber(v) or 0
            if TG > U7(k) then
                return true
            end
        end
        return false
    end
    Vh = function()
        Ve[1] = false
        Ve[2] = nil
        Ve[3] = "Offer"
        Ve[4] = {}
        Ve[5] = 0
        Ve[6] = false
        Ve[7] = false
        Ve[8] = false
        Ve[9] = false
        Vf = nil
    end
    VG:Connect(function(qR, qS)
        if type(qR) ~= "string" then
            return
        end
        local TO = type(qS) == "table" and qS
        qS = TO or {}
        if qR == "RequestReceived" then
            local player = qS.player
            local TP_1 = tonumber(qS.expiresAt) or 0
            U_ = { player = player, expiresAt = TP_1 }
        elseif qR == "RequestSent" then
            local player = qS.player
            local TP_2 = tonumber(qS.expiresAt) or 0
            Vu = { player = player, expiresAt = TP_2 }
        else
            if qR == "RequestClosed" or qR == "RequestExpired" then
                U_ = nil
                Vu = nil
            elseif qR == "Started" then
                Vh()
                U_ = nil
                Vu = nil
                Ve[1] = true
                Ve[2] = qS.partner
                Ve[10] = os.clock()
            elseif qR == "Updated" then
                Ve[1] = true
                local TO_4 = qS.partner or Ve[2]
                Ve[2] = TO_4
                local TO_5 = type(qS.phase) == "string" and qS.phase
                local TP_4 = TO_5 or "Offer"
                Ve[3] = TP_4
                local TO_6 = type(qS.ownOffer) == "table" and qS.ownOffer
                local TQ_1 = TO_6 or {}
                Ve[4] = TQ_1
                local TO_7 = 0
                if type(qS.otherOffer) == "table" then
                    for k in qS.otherOffer do
                        TO_7 += 1
                    end
                end
                Ve[5] = TO_7
                Ve[6] = qS.ownReady == true
                Ve[7] = qS.otherReady == true
                Ve[8] = qS.ownAccepted == true
                Ve[9] = qS.otherAccepted == true
            elseif qR == "Ended" then
                local TO_8 = qS.reason or ""
                local TP_6 = tostring(TO_8)
                if TP_6 == "Completed" then
                    Vy += 1
                end
                Vh()
                Vi = os.clock()
                if F9("AutoTrade") then
                    local TP_7 = TP_6 ~= "" and TP_6
                    local TY = if TP_7 then 1 else 0
                    local TW = 138 * TY + 2091 * (1 - TY)
                    local TX = 3386 * TY + 1159 * (1 - TY)
                    if not ((TW * 3625 + TX * 1699 + TW * TX) % 16777213 == 6720332) then
                        TP_7 = "Unknown"
                    end
                    E6:Notify("Trade ended: " .. TP_7, 4)
                end
            end
        end
    end)
    U3 = function()
        local T__1
        local TZ_1
        TZ_1, T__1 = pcall(function()
            return ES(GK.TradeRequestsEnabled)
        end)
        return TZ_1 and T__1 == true
    end
    U8 = function()
        if LocalPlayer.AccountAge < TradeConfig.MIN_ACCOUNT_AGE then
            return ("Account must be %d days old"):format(TradeConfig.MIN_ACCOUNT_AGE)
        end
        local T3 = tonumber(ES(GK.Rolls)) or 0
        if T3 < TradeConfig.MIN_ROLLS then
            return ("Need %d rolls (%d)"):format(TradeConfig.MIN_ROLLS, T3)
        end
        return nil
    end
    UZ = function()
        if os.clock() - U2 < 0.12 then
            return
        end
        for k, v in Vf do
            local T6 = tonumber(Ve[4][v.key]) or 0
            local T6_1 = v.amount - T6
            if T6_1 > 0 then
                local T7_1 = 1
                for k, v in { 1000, 100, 10 } do
                    if T6_1 >= v then
                        T7_1 = v
                        break
                    end
                end
                U2 = os.clock()
                Gl(Vp, v.key, T7_1)
                return
            end
        end
    end
    VC = function()
        if os.clock() - Vw < 0.35 then
            return
        end
        Vw = os.clock()
        Gl(Vc)
    end
    Vq = function()
        local Um = F9("AutoTradeCancelUnexpected") and Vm() == Vz and U0()
        if Um then
            VA = "Cancelling, unexpected offer"
            Gl(VE)
            return
        end
        if Ve[3] == "Countdown" then
            VA = "Countdown"
            return
        end
        if Vm() == Vz then
            if not Vf then
                Vf = VB()
            end
            if #Vf == 0 then
                VA = "Nothing matches the give filters"
                Gl(VE)
                return
            end
            if not Vr() then
                VA = ("Offering (%d entries)"):format(#Vf)
                UZ()
                return
            end
        elseif next(Ve[4]) ~= nil then
            VA = "Clearing own offer"
            if os.clock() - U2 >= 0.12 then
                for k, v in Ve[4] do
                    local Um_1 = tonumber(v) or 0
                    if Um_1 > 0 then
                        U2 = os.clock()
                        Gl(Vp, k, -1)
                        break
                    end
                end
            end
            return
        end
        local Um_2 = F9("AutoTradeWaitPartner") and Ve[5] < 1
        if Um_2 then
            VA = "Waiting for partner offer"
            return
        end
        if Ve[3] == "Offer" then
            if not Ve[6] then
                VA = "Readying up"
                VC()
            else
                VA = "Waiting for partner to ready"
            end
            return
        end
        if Ve[3] == "Confirm" then
            if not F9("AutoTradeConfirm") then
                VA = "Waiting for manual confirm"
                return
            end
            if not Ve[8] then
                VA = "Confirming"
                VC()
            else
                VA = "Waiting for partner confirm"
            end
        end
    end
    Va = function()
        if U_ then
            local player = U_.player
            if Vj(player) then
                local UB_1 = player and player.Name
                VA = "Accepting request from " .. tostring(UB_1)
                U_ = nil
                Gl(VD, true)
                return
            end
            if F9("AutoTradeDeclineOthers") then
                U_ = nil
                Gl(VD, false)
            end
        end
        if Vm() ~= Vz then
            VA = "Waiting for a trade request"
            return
        end
        if os.clock() - Vi < Vt() then
            VA = "Cooling down"
            return
        end
        local UA_2 = Vu
        if UA_2 then
            local UB_2 = workspace:GetServerTimeNow()
            UA_2 = UB_2 < (Vu.expiresAt or 0)
        end
        if UA_2 then
            VA = "Request pending"
            return
        end
        Vf = VB()
        if #Vf == 0 then
            VA = "Nothing matches the give filters"
            return
        end
        local UA_3 = not F9("AutoTradeLoop") and Vy > 0
        if UA_3 then
            VA = "Finished one trade"
            return
        end
        if os.clock() - Vg < 1 then
            return
        end
        local UA_4 = os.clock()
        for i, player in Players:GetPlayers() do
            local UB_3 = player == LocalPlayer or not Vj(player)
            if not UB_3 then
                if not (UA_4 < (U4[player.UserId] or 0)) then
                    U4[player.UserId] = UA_4 + TradeConfig.REQUEST_COOLDOWN + 0.5
                    Vg = UA_4
                    VA = "Requesting " .. player.Name
                    Gl(U9, player)
                    return
                end
            end
        end
        VA = "No configured partner in server"
    end
    Vv = function()
        local UK = U8()
        if UK then
            VA = UK
            return
        end
        local UK_1 = F9("AutoTradeEnableRequests") and not U3() and os.clock() - U5 >= 2
        if UK_1 then
            U5 = os.clock()
            Gl(Vs, true)
        end
        if Ve[1] then
            Vq()
        else
            Va()
        end
    end
    Vn = ""
    Vb = function()
        local UM = {}
        for i, player in Players:GetPlayers() do
            if player ~= LocalPlayer then
                UM[#UM + 1] = player.Name
            end
        end
        table.sort(UM)
        if #UM == 0 then
            UM[1] = "None"
        end
        local UN = table.concat(UM, "\n")
        if UN == Vn then
            return
        end
        Vn = UN
        if Fl.AutoTradePartners then
            Fl.AutoTradePartners:SetValues(UM)
        end
    end
    Vb()
    task.spawn(function()
        while not E6.Unloaded do
            task.wait(0.2)
            pcall(Vb)
            if F9("AutoTrade") then
                pcall(Vv)
            elseif VA ~= "Idle" then
                VA = "Idle"
            end
            pcall(function()
                Label2:SetText(VA)
                Label:SetText("Trades: " .. tostring(Vy))
            end)
        end
    end)
end
abs_85()
GN = 0
abs_37 = fns.fn1528
E7 = ""
E1 = fns.fn1659
E1()
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
E6:OnUnload(fns.fn744)
task.spawn(fns.worker8)
abs_22 = function()
    local tE
    local tD
    local tF
    local tG
    tD = {}
    tE = {}
    tG = {}
    tF = {}
    local tH = {}
    local function tI()
        for k, v in tD do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(tD)
    end
    local function tM()
        for k, v in tE do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(tE)
    end
    local function tQ()
        for k, v in tF do
            if k.Parent then
                k.PlatformStand = v
            end
        end
        table.clear(tF)
    end
    local function tU()
        for k, v in tG do
            if k.Parent then
                k.HoldDuration = v[1]
                k.MaxActivationDistance = v[2]
                k.RequiresLineOfSight = v[3]
            end
        end
        table.clear(tG)
    end
    local function tY(tZ)
        if not tZ:IsA("ProximityPrompt") then
            return
        end
        if not tG[tZ] then
            tG[tZ] = { tZ.HoldDuration, tZ.MaxActivationDistance, tZ.RequiresLineOfSight }
        end
        tZ.HoldDuration = 0
        tZ.MaxActivationDistance = 50
        tZ.RequiresLineOfSight = false
    end
    local MovementGroup = GC.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", {
        Text = "WalkSpeed",
        Default = false,
        Callback = function(t2)
            if not t2 then
                tM()
            end
        end
    })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", {
        Text = "NoClip",
        Default = false,
        Callback = function(t4)
            if not t4 then
                tI()
            end
        end
    })
    MovementGroup:AddToggle("InstantProximityPrompt", {
        Text = "Instant ProximityPrompt",
        Default = false,
        Callback = function(t6)
            if t6 then
                for i, descendant in workspace:GetDescendants() do
                    pcall(tY, descendant)
                end
            else
                tU()
            end
        end
    })
    local FlyGroup = GC.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", {
        Text = "Fly",
        Default = false,
        Callback = function(uc)
            if not uc then
                tQ()
            end
        end
    })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    table.insert(tH, workspace.DescendantAdded:Connect(function(ue)
        if Fs.InstantProximityPrompt.Value then
            pcall(tY, ue)
        end
    end))
    table.insert(tH, RunService.Stepped:Connect(function()
        local Character = LocalPlayer.Character
        if Fs.NoClip.Value and Character then
            for i, descendant in Character:GetDescendants() do
                if descendant:IsA("BasePart") then
                    if tD[descendant] == nil then
                        tD[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end
    end))
    table.insert(tH, UserInputService.JumpRequest:Connect(function()
        local Xp = Go()
        if Fs.InfJump.Value and Xp then
            Xp:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(tH, RunService.RenderStepped:Connect(function(uv)
        local Xs = Go()
        local Xt = F0()
        if Fs.WalkSpeedEnabled.Value and Xs then
            if tE[Xs] == nil then
                tE[Xs] = Xs.WalkSpeed
            end
            Xs.WalkSpeed = Fl.WalkSpeed.Value
        end
        if Fs.Fly.Value and Xt and Xs and workspace.CurrentCamera then
            if tF[Xs] == nil then
                tF[Xs] = Xs.PlatformStand
            end
            Xs.PlatformStand = true
            local Xs_1 = Vector3.zero
            if not UserInputService:GetFocusedTextBox() then
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Xs_1 += workspace.CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Xs_1 -= workspace.CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Xs_1 -= workspace.CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Xs_1 += workspace.CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Xs_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Xs_1 -= Vector3.new(0, 1, 0)
                end
            end
            Xt.AssemblyLinearVelocity = Vector3.zero
            if Xs_1.Magnitude > 0 then
                Xt.CFrame = Xt.CFrame + Xs_1.Unit * Fl.FlySpeed.Value * uv
            end
        end
    end))
    E6:OnUnload(function()
        for k, v in tH do
            v:Disconnect()
        end
        tI()
        tM()
        tQ()
        tU()
    end)
end
abs_22()
abs_28 = function()
    local YA, YB, YC, YD, YE, YF, YG, Label, YI, YJ, YK, YL, YM, YN, YO, YP
    YO = {}
    YJ = {}
    YE = nil
    YA = 0
    YL = false
    YF = tick()
    local MenuGroup = GC.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    YN = function()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        YA += 1
        YF = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. YA)
        end)
    end
    YC = function(u3)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not u3)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not u3
            end
        end)
        if not u3 then
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
    YD = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    YK = function(vi)
        if YD[vi.ClassName] then
            if YO[vi] == nil then
                YO[vi] = vi.Enabled
            end
            pcall(function()
                vi.Enabled = false
            end)
        end
    end
    YG = function()
        for k, v in YO do
            local XW = k
            local XY = v
            if XW.Parent then
                pcall(function()
                    XW.Enabled = XY
                end)
            end
        end
        table.clear(YO)
        if YE then
            pcall(function()
                settings().Rendering.QualityLevel = YE.Quality
            end)
            Lighting.GlobalShadows = YE.Shadows
            Lighting.FogEnd = YE.Fog
            YE = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(vw)
            pcall(function()
                RunService:Set3dRenderingEnabled(not vw)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(vB)
            if vB then
                if not YE then
                    YE = {
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
                for i, descendant in workspace:GetDescendants() do
                    pcall(YK, descendant)
                end
            else
                YG()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    E6.ToggleKeybind = Fl.MenuKeybind
    local ScriptGroup = GC.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            E6:Unload()
        end
    })
    Fs.AntiGameplayPause:OnChanged(function()
        YC(Fs.AntiGameplayPause.Value)
    end)
    table.insert(YJ, LocalPlayer.Idled:Connect(function()
        if Fs.AntiAfk.Value then
            pcall(YN)
        end
    end))
    table.insert(YJ, workspace.DescendantAdded:Connect(function(vR)
        if Fs.FpsBoost.Value then
            pcall(YK, vR)
        end
    end))
    YM = function()
        local PlaceId, JobId
        if YL then
            return
        end
        YL = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local Yc = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not Yc then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local Yk = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not Yk then
            return
        end
        table.insert(YJ, Yk.ChildAdded:Connect(function(wc)
            if E6.Unloaded then
                return
            end
            if Fs.AutoReconnect.Value and wc.Name == "ErrorPrompt" then
                YM()
            end
        end))
    end)
    table.insert(YJ, TeleportService.TeleportInitFailed:Connect(function()
        if Fs.AutoReconnect.Value then
            YL = false
            YM()
        end
    end))
    local YQ_2 = typeof(queue_on_teleport) == "function" and queue_on_teleport
    local YR = YQ_2
    if not YR then
        local YQ_3 = typeof(queueonteleport) == "function" and queueonteleport
        YR = YQ_3
    end
    YI = false
    YB = YR
    YP = function()
        if type(YB) ~= "function" then
            return false
        elseif YI then
            return true
        else
            YI = pcall(YB, ('if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("%s"))()'):format(EW))
            return YI
        end
    end
    Fs.AutoExecute:OnChanged(function()
        if not F9("AutoExecute") then
            return
        end
        if not YP() then
            E6:Notify("queue_on_teleport is not supported by your executor")
        end
    end)
    table.insert(YJ, LocalPlayer.OnTeleport:Connect(function(wC)
        if wC ~= Enum.TeleportState.Started then
            return
        end
        local Yp = E6.Unloaded or not F9("AutoExecute")
        if Yp then
            return
        end
        YI = false
        YP()
    end))
    task.spawn(function()
        while not E6.Unloaded do
            task.wait(1)
            if Fs.AntiGameplayPause.Value then
                YC(true)
            end
            local Yr = Fs.AntiAfk.Value and tick() - YF >= 60
            if Yr then
                pcall(YN)
            end
        end
    end)
    E6:OnUnload(function()
        for k, v in YJ do
            v:Disconnect()
        end
        YC(false)
        YG()
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
    end)
end
abs_28()
abs_60 = function()
    local PlotController = require(ED.Plot.PlotController)
    local wZ = {}
    local wY = {}
    local function w_()
        local Plots = workspace:FindFirstChild("Plots")
        local YX = Plots and Plots:FindFirstChild("Claimed")
        return YX
    end
    local function w2(w3, w4)
        local YZ = not w3
        local Y2 = if YZ then 1 else 0
        local Y0 = 2027 * Y2 + 1658 * (1 - Y2)
        local Y1 = 3284 * Y2 + 2414 * (1 - Y2)
        if not ((Y0 * 841 + Y1 * 4041 + Y0 * Y1) % 16777213 == 4854806) then
            YZ = not w4
        end
        if not YZ then
            YZ = not w4.Parent
        end
        if YZ then
            return
        end
        pcall(function()
            w3.Parent = w4
        end)
    end
    local function w8()
        for k, v in wY do
            w2(k, v)
            wY[k] = nil
        end
    end
    local function xd()
        for k, v in wZ do
            w2(k, v)
            wZ[k] = nil
        end
    end
    local function xi()
        local Zh = w_()
        local plot = PlotController.plot
        if not Zh or not plot or not plot.Parent then
            return
        end
        if wY[plot] then
            w2(plot, wY[plot])
            wY[plot] = nil
        end
        for i, child in Zh:GetChildren() do
            local Zq = child
            local Zj_1 = Zq ~= plot and Zq:IsA("Model") and not wY[Zq]
            if Zj_1 then
                wY[Zq] = Zh
                pcall(function()
                    Zq.Parent = nil
                end)
            end
        end
    end
    local function xu(xv)
        if wZ[xv] then
            return
        end
        local Parent = xv.Parent
        if not Parent then
            return
        end
        local Zs = xv.Name == "Balance" and xv:IsA("Model")
        if Zs then
            wZ[xv] = Parent
            pcall(function()
                xv.Parent = nil
            end)
        else
            local Zs_1 = xv.Name == "Money" and xv:IsA("BasePart") and Parent.Name == "Debris"
            if Zs_1 then
                pcall(function()
                    xv.Parent = nil
                end)
            end
        end
    end
    local function xC(xD)
        local Zx = xD.Name == "Cash" and xD:IsA("GuiObject")
        if Zx then
            pcall(function()
                xD.Visible = false
                xD.Parent = nil
            end)
        end
    end
    local function xG()
        return PlayerGui:FindFirstChild("Root")
    end
    local function xJ()
        local ZC = xG()
        if ZC then
            for i, child in ZC:GetChildren() do
                xC(child)
            end
        end
        local Debris = workspace:FindFirstChild("Debris")
        if Debris then
            for i, child in Debris:GetChildren() do
                xu(child)
            end
        end
        local ZC_2 = w_()
        if not ZC_2 then
            return
        end
        for i, child in ZC_2:GetChildren() do
            local Slots = child:FindFirstChild("Slots")
            if not not Slots then
                for i, child in Slots:GetChildren() do
                    local Balance = child:FindFirstChild("Balance")
                    if Balance then
                        xu(Balance)
                    end
                end
            end
        end
    end
    local PerformanceGroup = GC.Settings:AddRightGroupbox("Performance", "gauge")
    PerformanceGroup:AddToggle("RemoveOtherPlots", {
        Text = "Remove Other Plots and Units",
        Default = false,
        Tooltip = "Hides every claimed plot except your own, including the units placed on them",
        Callback = function(x2)
            if x2 then
                pcall(xi)
            else
                pcall(w8)
            end
        end
    })
    PerformanceGroup:AddToggle("RemoveMoneyDrops", {
        Text = "Remove Money Drops",
        Default = false,
        Tooltip = "Hides the money bags and collection tokens, collecting still works normally",
        Callback = function(x5)
            if x5 then
                pcall(xJ)
            else
                pcall(xd)
            end
        end
    })
    local connection2 = workspace.DescendantAdded:Connect(function(x8)
        if F9("RemoveMoneyDrops") then
            pcall(xu, x8)
        end
    end)
    local connection
    local function ye()
        local Z9 = xG()
        if not Z9 then
            return
        end
        if connection then
            connection:Disconnect()
        end
        connection = Z9.ChildAdded:Connect(function(yi)
            if F9("RemoveMoneyDrops") then
                pcall(xC, yi)
            end
        end)
    end
    ye()
    PlayerGui.ChildAdded:Connect(function(yn)
        if yn.Name == "Root" then
            ye()
        end
    end)
    task.spawn(function()
        while not E6.Unloaded do
            task.wait(0.4)
            if F9("RemoveOtherPlots") then
                pcall(xi)
            end
            if F9("RemoveMoneyDrops") then
                pcall(xJ)
            end
        end
    end)
    E6:OnUnload(function()
        connection2:Disconnect()
        if connection then
            connection:Disconnect()
        end
        pcall(w8)
        pcall(xd)
    end)
end
abs_60()
abs_72 = function()
    local aa8, aa9, aba, abb
    FF:SetLibrary(E6)
    FF:SetFolder("OuroborosHub")
    FF:SaveDefault("Evil Hello Kitty")
    FF:ApplyToTab(GC.Settings)
    Fx:SetLibrary(E6)
    Fx:IgnoreThemeSettings()
    Fx:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    Fx:SetFolder("OuroborosHub/AnimeDice")
    local abc = Fx:BuildConfigSection(GC.Settings)
    aa9 = function(yF, yG)
        local aai = yF == "Toggle" and Fs
        local aan = if aai then 1 else 0
        local aal = 2990 * aan + 319 * (1 - aan)
        local aam = 2546 * aan + 1425 * (1 - aan)
        if not ((aal * 1415 + aam * 1097 + aal * aam) % 16777213 == 14636352) then
            aai = Fl
        end
        local aai_1 = aai[yG]
        local aah_2 = type(aai_1) == "table" and aai_1.Type == yF
        local aah_3 = aah_2 and aai_1
        local aan_1 = if aah_3 then 1 else 0
        local aal_1 = 54 * aan_1 + 3162 * (1 - aan_1)
        local aam_1 = 639 * aan_1 + 1391 * (1 - aan_1)
        if not ((aal_1 * 1366 + aam_1 * 2793 + aal_1 * aam_1) % 16777213 == 1892997) then
            aah_3 = nil
        end
        return aah_3
    end
    abb = function(yP, yQ)
        local Type = yQ.Type
        if Type == "Toggle" then
            return { idx = yP, type = "Toggle", value = yQ.Value == true }
        elseif Type == "Slider" then
            return { idx = yP, type = "Slider", value = tostring(yQ.Value) }
        elseif Type == "Dropdown" then
            return { idx = yP, type = "Dropdown", multi = yQ.Multi == true, value = yQ.Value }
        elseif Type == "Input" then
            local aap = yQ.Value or ""
            return { idx = yP, type = "Input", text = tostring(aap) }
        elseif Type == "ColorPicker" then
            return { idx = yP, type = "ColorPicker", value = yQ.Value:ToHex(), transparency = yQ.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = yP,
                type = "KeyPicker",
                mode = yQ.Mode,
                key = yQ.Value,
                modifiers = yQ.Modifiers,
                toggled = yQ.Toggled
            }
        else
            return nil
        end
    end
    aba = function()
        local aav = {}
        for i, v in ipairs({ Fs, Fl }) do
            for k, v in pairs(v) do
                local aaw = type(v) == "table" and type(v.Type) == "string" and not Fx.Ignore[k]
                if aaw then
                    local aaw_1 = abb(k, v)
                    if aaw_1 then
                        aav[#aav + 1] = aaw_1
                    end
                end
            end
        end
        table.sort(aav, function(y_, y0)
            if y_.type ~= y0.type then
                return y_.type < y0.type
            end
            return y_.idx < y0.idx
        end)
        return { objects = aav }
    end
    aa8 = function(y2)
        local aaP
        aaP = nil
        local aaQ = type(y2) ~= "table"
        local aaU = if aaQ then 1 else 0
        local aaS = 3822 * aaU + 3346 * (1 - aaU)
        local aaT = 1393 * aaU + 1086 * (1 - aaU)
        if not ((aaS * 3439 + aaT * 576 + aaS * aaT) % 16777213 == 2493059) then
            aaQ = type(y2.idx) ~= "string"
        end
        if not aaQ then
            aaQ = type(y2.type) ~= "string"
        end
        local aaU_1 = if aaQ then 1 else 0
        local aaS_1 = 2422 * aaU_1 + 1152 * (1 - aaU_1)
        local aaT_1 = 2842 * aaU_1 + 163 * (1 - aaU_1)
        if not ((aaS_1 * 23 + aaT_1 * 1897 + aaS_1 * aaT_1) % 16777213 == 12330304) then
            aaQ = Fx.Ignore[y2.idx]
        end
        if aaQ then
            return false
        end
        aaP = aa9(y2.type, y2.idx)
        if not aaP then
            return false
        end
        local aaQ_1 = pcall(function()
            if y2.type == "Input" then
                if type(y2.text) ~= "string" then
                    return
                end
                aaP:SetValue(y2.text)
            elseif y2.type == "ColorPicker" then
                aaP:SetValueRGB(Color3.fromHex(y2.value), y2.transparency)
            elseif y2.type == "KeyPicker" then
                aaP:SetValue({ y2.key, y2.mode, y2.modifiers })
                if y2.mode == "Toggle" and y2.toggled ~= nil then
                    aaP.Toggled = y2.toggled
                    aaP:Update()
                end
            else
                aaP:SetValue(y2.value)
            end
        end)
        return aaQ_1
    end
    abc:AddDivider()
    abc:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    abc:AddButton("Export Config to Clipboard", function()
        local aaW_1
        local aaV_1
        aaV_1, aaW_1 = pcall(HttpService.JSONEncode, HttpService, aba())
        if not aaV_1 then
            E6:Notify("Failed to encode the config")
            return
        end
        local aaV_2 = setclipboard or toclipboard
        local aaV_3 = type(aaV_2) ~= "function" or not pcall(aaV_2, aaW_1)
        if aaV_3 then
            E6:Notify("Your executor does not support copying to the clipboard")
            return
        end
        E6:Notify("Config copied to clipboard", 6)
    end)
    abc:AddButton("Import Config from Clipboard Text", function()
        local aa0_1
        local aaZ = Fl.SaveManager_ImportSource.Value or ""
        local aaZ_1
        local aa_ = tostring(aaZ):match("^%s*(.-)%s*$")
        if aa_ == "" then
            E6:Notify("Paste an exported config into the box first")
            return
        end
        aaZ_1, aa0_1 = pcall(HttpService.JSONDecode, HttpService, aa_)
        local aa__1 = not aaZ_1 or type(aa0_1) ~= "table" or type(aa0_1.objects) ~= "table"
        if aa__1 then
            E6:Notify("That is not a valid exported config")
            return
        end
        local aaZ_2 = 0
        for i, v in ipairs(aa0_1.objects) do
            if aa8(v) then
                aaZ_2 += 1
            end
        end
        if aaZ_2 == 0 then
            E6:Notify("No settings in that config matched this script")
            return
        end
        Fl.SaveManager_ImportSource:SetValue("")
        local aa0_2 = aaZ_2 == 1 and "" or "s"
        E6:Notify(("Imported %d setting%s"):format(aaZ_2, aa0_2), 6)
    end)
    FF:LoadDefault()
    Fx:LoadAutoloadConfig()
    if Fs.HideUiOnStart.Value then
        E6:Toggle(false)
    end
end
abs_72()
