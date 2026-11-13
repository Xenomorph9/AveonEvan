local fns = {}
local aJS_58, aJS_59, aJS_60, aJS_61, aJS_62, aJS_64, aJS_65, aJS_66, aJS_67, aJS_68, aJS_70, aJS_71, aJS_72, aJS_73, aJS_75, aJS_76, aJS_77, aJS_78, aJS_79, aJS_81, aJS_82, aJS_83, aJS_84, aJS_85, aJS_86, aJS_87, aJS_88, aJS_90, aJS_92, aJS_93, aJS_94, aJS_96, aJS_97, aJS_98, aJS_99, aJS_101, aJS_102, aJS_103, aJS_104, aJS_105, aJS_106, aJS_108, aJS_110
fns.aJS_2 = nil
fns.aJS_3 = nil
fns.aJS_4 = nil
fns.aJS_6 = nil
fns.aJS_7 = nil
fns.aJS_8 = nil
fns.aJS_9 = nil
fns.aJS_11 = nil
fns.aJS_12 = nil
fns.aJS_14 = nil
fns.aJS_15 = nil
fns.aJS_17 = nil
fns.aJS_18 = nil
fns.aJS_20 = nil
fns.aJS_21 = nil
fns.aJS_22 = nil
fns.aJS_23 = nil
fns.aJS_24 = nil
fns.aJS_26 = nil
fns.aJS_27 = nil
fns.aJS_28 = nil
fns.aJS_29 = nil
fns.aJS_31 = nil
fns.aJS_32 = nil
fns.aJS_33 = nil
fns.aJS_34 = nil
fns.aJS_35 = nil
fns.aJS_37 = nil
fns.aJS_39 = nil
fns.aJS_40 = nil
fns.aJS_41 = nil
fns.aJS_42 = nil
fns.aJS_44 = nil
fns.aJS_45 = nil
fns.aJS_46 = nil
fns.aJS_47 = nil
fns.aJS_49 = nil
fns.aJS_50 = nil
fns.aJS_51 = nil
fns.aJS_52 = nil
fns.aJS_53 = nil
fns.aJS_55 = nil
fns.aJS_56 = nil
aJS_58 = nil
aJS_59 = nil
aJS_60 = nil
aJS_61 = nil
aJS_62 = nil
aJS_64 = nil
aJS_65 = nil
aJS_66 = nil
aJS_67 = nil
aJS_68 = nil
aJS_70 = nil
aJS_71 = nil
aJS_72 = nil
aJS_73 = nil
aJS_75 = nil
aJS_76 = nil
aJS_78 = nil
aJS_79 = nil
aJS_81 = nil
aJS_82 = nil
aJS_84 = nil
aJS_85 = nil
aJS_86 = nil
aJS_87 = nil
aJS_88 = nil
aJS_90 = nil
aJS_92 = nil
aJS_93 = nil
aJS_94 = nil
aJS_96 = nil
aJS_98 = nil
aJS_99 = nil
aJS_101 = nil
aJS_103 = nil
aJS_104 = nil
aJS_105 = nil
aJS_106 = nil
aJS_108 = nil
local ZK
local HttpService
local aa8
local Z8
local abx
local aax
local abW
local aaW
local acl
local LocalPlayer
local acK
local aak
local abJ
local aaJ
local ZJ
local ab7
local aa7
local Z7
local acx
local abw
local aaw
local CoreGui
local aaV
local ZV
local ack
local abj
local acJ
local aaj
local abI
local aaI
local ZI
local Play
local Z6
local acw
local abv
local acV
local aav
local abU
local aaU
local acj
local ZU
local abi
local aai
local acI
local abH
local aaH
local ZH
local ab5
local aa5
local Z5
local acv
local aau
local acU
local abT
local aaT
local ZT
local aci
local abh
local aah
local acH
local abG
local aaG
local ab4
local ZG
local aa4
local Z4
local acu
local abt
local acT
local abS
local aaS
local ZS
local abg
local acG
local aag
local abF
local aaF
local ab3
local ZF
local aa3
local Z3
local act
local Workspace
local acS
local aas
local abR
local aaR
local ZR
local acg
local abf
local aaf
local acF
local aaE
local ZE
local ab2
local aa2
local Z2
local acs
local aar
local acR
local abQ
local aaQ
local ZQ
local abe
local aae
local acE
local abD
local aaD
function fns.fn12(X)
    return type(X) == "function"
end
function fns.fn14()
    return aJS_104
end
function fns.fn44()
    return require(abe(Z4, "FFlags"))
end
function fns.fn56(lF)
    local lH, lI = aJS_88.EnchantLabels()
    fns.aJS_15.EnchantTargets = fns.aJS_37(lF, lI)
end
function fns.fn92()
    local afW = fns.aJS_41 ~= nil and ZK ~= nil and type(ZK.Rebirths) == "table" and aax ~= nil and type(aax.RebirthShop) == "table" and type(aax.RebirthShop.Jumps) == "table"
    return afW
end
function fns.fn96()
    return aJS_79
end
function fns.fn114(zJ)
    local awE_1
    local awD_1
    awE_1, awD_1 = string.match(tostring(zJ), "^(.-)/(.+)$")
    if not awE_1 then
        return nil
    end
    for i, v in ipairs(ab7()) do
        local awF = v:FindFirstChild(awE_1)
        local awG = awF and awF:FindFirstChild("Interact")
        local awF_1 = awG
        if awG then
            awG = awF_1:FindFirstChild("BreakableZones")
        end
        local awF_2 = awG
        if awG then
            awG = awF_2:FindFirstChild(awD_1)
        end
        local awF_3 = awG
        if awG then
            awG = awF_3:IsA("BasePart")
        end
        if awG then
            return awF_3
        end
    end
    return nil
end
function fns.fn117()
    return aJS_67 ~= nil
end
function fns.fn119()
    return require(abe(Z4, "EggsFrontend"))
end
function fns.fn130(pm)
    fns.aJS_15.AutoHatch = pm == true
    local aoo = fns.aJS_15.AutoHatch and aJS_84()
    if aoo then
        fns.aJS_40 = 0
        aJS_64(true)
        aah("hatch", abS, acv)
    else
        aaU("hatch")
        aJS_64(false)
        if not fns.aJS_15.AutoClick then
            fns.aJS_4("Idle")
        end
    end
end
function fns.fn136()
    local THINGS = Workspace:FindFirstChild("_THINGS")
    local av7 = THINGS and THINGS:FindFirstChild("Minigames")
    if not av7 then
        return nil
    end
    for i, v in ipairs({ "ServerOwned", "Private" }) do
        local av7_1 = av7:FindFirstChild(v)
        local av8 = av7_1 and av7_1:FindFirstChild("RNGEvent")
        local av7_2 = av8
        if av8 then
            av8 = av7_2:FindFirstChild("Islands")
        end
        local av7_3 = av8
        if av7_3 then
            return av7_3
        end
    end
    return nil
end
function fns.fn145()
    local aAs = fns.aJS_15.WebhookSent or 0
    local aAt = fns.aJS_15.WebhookFailed or 0
    return ("sent %d  |  failed %d  |  queued %d"):format(aAs, aAt, #ZG.Queue)
end
function fns.fn183()
    return aaH ~= nil
end
function fns.fn194(HS)
    local aDZ_1
    local aDY_1
    local GetCost = Z7.RNGRebirths.GetCost
    local floor = math.floor
    local aDX = tonumber(HS.RNGRebirths) or 0
    aDY_1, aDZ_1 = pcall(GetCost, floor(aDX))
    local aDV_1 = aDY_1 and tonumber(aDZ_1)
    local aDW_1 = aDV_1
    local aD2 = if aDW_1 then 1 else 0
    local aD0 = 2544 * aD2 + 410 * (1 - aD2)
    local aD1 = 1344 * aD2 + 549 * (1 - aD2)
    if not ((aD0 * 3609 + aD1 * 4059 + aD0 * aD1) % 16777213 == 1278515) then
        aDW_1 = nil
    end
    return aDW_1
end
function fns.fn197(q_, q0)
    if type(q_.OwnedRebirthButtons) ~= "table" then
        return false
    end
    for k, v in pairs(q_.OwnedRebirthButtons) do
        local apA = v == q0
        if not apA then
            local apB = v == true and tonumber(k) == q0
            apA = apB
        end
        if apA then
            return true
        end
    end
    return false
end
function fns.fn206()
    local anz_1
    local anx = fns.aJS_27.CLICK_INTERVAL_FLOOR
    local any = aJS_106 and aJS_73(aJS_106.GetClickInterval)
    local any_1
    if any then
        any_1, anz_1 = pcall(aJS_106.GetClickInterval)
        local anA = any_1 and tonumber(anz_1) and anz_1 > 0
        if anA then
            anx = anz_1
        end
    end
    return math.max(anx, 1 / fns.aJS_15.ClicksPerSecond)
end
function fns.fn219(DE)
    local aAi = type(DE) == "string" and DE
    local aAj = aAi or ""
    ZG.PingId = aAj
end
function fns.fn235()
    local aeV = aJS_98 ~= nil and aax ~= nil and type(aax.Items) == "table"
    return aeV
end
function fns.fn250(x8)
    local au_ = aax.Pets[x8.id]
    if not au_ then
        return 0
    end
    local au0 = fns.aJS_2[tostring(au_.Rarity)] or 0
    local au__1 = aaW[tostring(x8.v)]
    local au5 = if au__1 then 1 else 0
    local au3 = 1868 * au5 + 655 * (1 - au5)
    local au4 = 3126 * au5 + 630 * (1 - au5)
    if not ((au3 * 2491 + au4 * 2385 + au3 * au4) % 16777213 == 1170853) then
        au__1 = 0
    end
    local au1 = au0 + au__1
    if x8.Shiny == true then
        au1 += 2
    end
    return au1
end
function fns.fn281(y8)
    fns.aJS_15.AutoDarkMatter = y8 == true
    local av4 = fns.aJS_15.AutoDarkMatter and abT()
    if av4 then
        aah("darkmatter", fns.aJS_27.DARK_MATTER_INTERVAL, abR)
    else
        aaU("darkmatter")
    end
end
function fns.fn289()
    local afA = aJS_88.UpgradeChannel ~= nil and aax ~= nil and type(aax.RNGUpgrades) == "table"
    return afA
end
function fns.fn301(x2)
    fns.aJS_15.AutoClaimRainbow = x2 == true
    ZU()
end
function fns.fn307(H3)
    local aEb_1
    local aD9 = not fns.aJS_15.AutoRngRebirth and not H3
    local aD9_3
    local aD8_1 = aD9 or not aJS_88.HasRebirths()
    if aD8_1 then
        return
    end
    if not aJS_88.Flag("RNGRebirthing") then
        fns.aJS_4("RNG rebirths are disabled")
        return
    end
    local aD8_2 = fns.aJS_52()
    if not aD8_2 then
        return
    end
    if not aJS_99(aD8_2) then
        fns.aJS_4("Max every RNG upgrade first")
        return
    end
    local aD9_1 = fns.aJS_31(aD8_2)
    if not aD9_1 then
        return
    end
    local aEi = if aar("PixelCoins") < aD9_1 then 1 else 0
    if aEi == 1 then
        fns.aJS_4("Saving Pixel Coins for RNG rebirth")
        return
    end
    local floor2 = math.floor
    local aEa = tonumber(aD8_2.RNGRebirths) or 0
    local aEa_1
    local aD8_3 = floor2(aEa)
    fns.aJS_4("RNG rebirthing")
    aD9_3, aEa_1, aEb_1 = abw(aJS_88.RebirthChannel, fns.aJS_27.RNG_REBIRTH_INTERVAL * 2, "Rebirth")
    if aD9_3 and aEa_1 == true then
        local aD9_4 = os.clock() + 3
        while true do
            local aEa_2 = ZV() and os.clock() < aD9_4
            if aEa_2 then
                local aEa_3 = fns.aJS_52()
                local aEc_1 = aEa_3
                if aEc_1 then
                    local floor = math.floor
                    local aEe = tonumber(aEa_3.RNGRebirths) or 0
                    aEc_1 = floor(aEe) > aD8_3
                end
                if aEc_1 then
                    break
                end
                task.wait(0.1)
                continue
            end
            break
        end
        local aKb = fns.aJS_15
        aKb.RngRebirths = aKb.RngRebirths + 1
    elseif aEb_1 then
        fns.aJS_4(tostring(aEb_1):sub(1, 60))
    end
end
function fns.fn320()
    local aeX = aaE ~= nil and aax ~= nil and type(aax.FreeGifts) == "table" and type(aax.FreeGifts.Times) == "table"
    return aeX
end
function fns.fn334(cd, ce, ...)
    if not cd then
        return false
    end
    local aek = pcall(cd.FireServer, cd, ce, ...)
    return aek
end
function fns.fn337(hW)
    if type(hW) ~= "table" then
        return nil
    elseif hW.CurrencyId then
        local aiT_1 = acK("Currency", hW.CurrencyId)
        local aiU_1 = type(aiT_1) == "table" and aiT_1.Title
        local aiT_2 = aiU_1 or tostring(hW.CurrencyId)
        return aiT_2
    elseif hW.PetId then
        return fns.aJS_24(hW.PetId)
    elseif hW.ItemId then
        local aiT_3 = acK("Items", hW.ItemId)
        local aiU_2 = Z2(hW.ItemId)
        local aiV = type(aiT_3) == "table" and tostring(aiT_3.Category)
        local aiV_1 = aiV or ""
        local aiT_5 = tonumber(hW.Tier) or 1
        if aiV_1 == "Ingredients" or aiT_5 <= 1 then
            return aiU_2
        end
        return ("%s (Tier %d)"):format(aiU_2, aiT_5)
    else
        return nil
    end
end
function fns.fn342(C2)
    if next(ZG.Rarities) == nil then
        return true
    end
    local azL = acK("Pets", C2.id)
    local azM = type(azL) == "table" and tostring(azL.Rarity)
    local azM_1 = azM or nil
    return azM_1 ~= nil and ZG.Rarities[azM_1] == true
end
function fns.fn376()
    return not aaF.Unloaded
end
function fns.fn382()
    local aeF = fns.aJS_18 ~= nil and aax ~= nil and type(aax.Eggs) == "table"
    return aeF and abg ~= nil
end
function fns.fn383(tg)
    fns.aJS_15.AutoClaimGifts = tg == true
    local arg = fns.aJS_15.AutoClaimGifts and aaQ()
    if arg then
        aah("gifts", fns.aJS_27.GIFT_INTERVAL, aJS_108)
    else
        aaU("gifts")
    end
end
function fns.fn385()
    local aCz = aJS_88.HasLuckReward() or aJS_88.HasWheel()
    if aCz then
        task.spawn(abG)
    end
end
function fns.fn388(FW)
    if not aJS_88.HasLuckReward() then
        return
    end
    local aCc = type(FW.X2LuckReward) == "table" and FW.X2LuckReward
    local aCc_2
    local aCd = aCc or nil
    local aCd_3
    if not aCd or aCd.Claimed == true then
        return
    end
    if aCd.SkipRequirements ~= true and aCd.PlaytimeRequirementCompleted ~= true then
        return
    end
    aCc_2, aCd_3 = ab3(aJS_88.LuckRewardChannel, "Claim")
    if aCc_2 and aCd_3 == true then
        local aKj = fns.aJS_15
        aKj.RngRewards = aKj.RngRewards + 1
        fns.aJS_4("Claimed permanent x2 Luck")
    end
end
function fns.fn415()
    local aqY = not fns.aJS_15.AutoClaimGifts or not aaQ()
    if aqY then
        return
    end
    local aqY_1 = fns.aJS_52()
    local aqZ = not aqY_1 or type(aqY_1.FreeGifts) ~= "table"
    local aqZ_2
    if aqZ then
        return
    end
    local aqZ_1 = (tonumber(aqY_1.FreeGiftsPlaytime))
    local aq6 = if aqZ_1 then 1 else 0
    local aq4 = 48 * aq6 + 2170 * (1 - aq6)
    local aq5 = 2214 * aq6 + 1909 * (1 - aq6)
    if not ((aq4 * 2731 + aq5 * 2075 + aq4 * aq5) % 16777213 == 4831410) then
        aqZ_1 = 0
    end
    local aq_ = ZQ
    local aq__1
    local aq0 = 1
    local aq1 = aqZ_1
    if aq_ then
        aq_ = aJS_73(ZQ.GetPower)
    end
    if aq_ then
        aqZ_2, aq__1 = pcall(ZQ.GetPower, aqY_1, "FreeGiftsTimerMultiplier")
        local aq2_1 = aqZ_2 and tonumber(aq__1)
        if aq2_1 then
            aq0 = aq__1
        end
    end
    local aqZ_3 = aaf(aqY_1)
    for k, v in pairs(aax.FreeGifts.Times) do
        local aq__2 = not ZV() or not fns.aJS_15.AutoClaimGifts
        if aq__2 then
            return
        end
        if aqY_1.FreeGifts[k] == nil then
            local aq__3 = tonumber(v) or 0
            local aq2_2 = aq__3 * 60 * aq0 * (1 - aqZ_3 / 100)
            local aq__4 = aq2_2 <= aq1 and fns.aJS_35(aaE, "ClaimGift", k)
            if aq__4 then
                local aKm = fns.aJS_15
                aKm.Gifts = aKm.Gifts + 1
                fns.aJS_4("Claimed free gift " .. tostring(k))
                task.wait(0.3)
            end
        end
    end
end
function fns.fn428()
    return aJS_66
end
function fns.fn432()
    if ZG.Connection then
        pcall(function()
            ZG.Connection:Disconnect()
        end)
        ZG.Connection = nil
    end
    ZG.Seen = nil
    table.clear(ZG.Queue)
    table.clear(ZG.Batch)
    ZG.Batching = false
end
function fns.fn458(Hh)
    local aDk = 0
    for k, v in pairs(aax.SkillTree.RNG) do
        local aDl = not ZV()
        local aDl_6
        local aDy = if aDl then 1 else 0
        local aDw = 3158 * aDy + 3360 * (1 - aDy)
        local aDx = 2414 * aDy + 1057 * (1 - aDy)
        if not ((aDw * 2334 + aDx * 3638 + aDw * aDx) % 16777213 == 6999103) then
            aDl = not fns.aJS_15.AutoBuySkillTree
        end
        if aDl then
            return aDk
        end
        local aDl_1 = type(v) == "table" and type(v.Upgrades) == "table"
        if aDl_1 then
            local aDl_2 = aJS_88.SkillTreeUtil.GetRequirementFailure(Hh, v.Requires, "RNG")
            local aDm = v.Price == nil
            local aDm_3
            if not aDm then
                local aDn_1 = aJS_73(aJS_88.SkillTree.OwnsCategory) and aJS_88.SkillTree.OwnsCategory(k, "RNG") == true
                aDm = aDn_1
            end
            local aDn_2 = aDm
            local aDm_1 = not aDl_2
            if aDm_1 ~= false then
                aDm_1 = aDn_2
            end
            if aDm_1 then
                for k, v in pairs(v.Upgrades) do
                    local aDl_3 = aJS_88.SkillTree.Owns(k, "RNG") == true
                    local aDm_2 = aJS_73(aJS_88.SkillTree.GetRequirementFailure) and aJS_88.SkillTree.GetRequirementFailure(v, "RNG")
                    local aDn_3 = not aDl_3
                    if aDn_3 then
                        aDn_3 = not aDm_2
                    end
                    if aDn_3 then
                        aDn_3 = aJS_85(v)
                    end
                    if aDn_3 then
                        local aDl_5 = v.Title or k
                        fns.aJS_4("Unlocking " .. tostring(aDl_5))
                        aDl_6, aDm_3 = pcall(aJS_88.SkillTree.Purchase, k, "RNG")
                        if aDl_6 and aDm_3 == true then
                            local aKr = fns.aJS_15
                            aKr.SkillNodes = aKr.SkillNodes + 1
                            aDk += 1
                            task.wait(0.3)
                            local aDl_7 = fns.aJS_52() or Hh
                            Hh = aDl_7
                        end
                    end
                end
            end
        end
    end
    return aDk
end
function fns.fn463(Cj, Ck)
    local ay_ = { Cj.rarity }
    local ay0 = ZG.Kinds[Cj.kind]
    if ay0 and Cj.kind ~= "Normal" then
        table.insert(ay_, ay0.label)
    end
    if Cj.shiny then
        table.insert(ay_, "Shiny")
    end
    if Cj.mutations ~= "" then
        table.insert(ay_, Cj.mutations)
    end
    local ay0_1 = ("› **%s**  ·  %s"):format(Cj.name, table.concat(ay_, "  ·  "))
    if Ck > 1 then
        ay0_1 ..= ("   ×%d"):format(Ck)
    end
    return ay0_1
end
function fns.fn469()
    local ak3 = not aax
    local alc = if ak3 then 1 else 0
    local ala = 3344 * alc + 2442 * (1 - alc)
    local alb = 4024 * alc + 983 * (1 - alc)
    if not ((ala * 863 + alb * 933 + ala * alb) % 16777213 == 3319307) then
        ak3 = type(aax.Eggs) ~= "table"
    end
    if ak3 then
        return
    end
    local ak3_1 = {}
    for k, v in pairs(aax.Eggs) do
        local ak4 = type(v) == "table" and v.Info
        local ak5 = ak4
        local alc_1 = if ak5 then 1 else 0
        local ala_1 = 176 * alc_1 + 445 * (1 - alc_1)
        local alb_1 = 3992 * alc_1 + 3091 * (1 - alc_1)
        if not ((ala_1 * 3127 + alb_1 * 1507 + ala_1 * alb_1) % 16777213 == 7268888) then
            ak5 = nil
        end
        local ak4_1 = ak5
        if ak5 then
            ak5 = tonumber(ak4_1.Cost)
        end
        local ak6 = ak5 or nil
        local ak6_1 = type(k) == "string" and ak4_1 and ak4_1.Currency ~= "Robux" and ak6 and ak6 > 0 and ak6 < math.huge
        if ak6_1 then
            local insert = table.insert
            local ak7 = type(v.Name) == "string" and v.Name ~= "" and v.Name
            local ak8 = ak7 or k
            insert(ak3_1, { id = k, cost = ak6, name = ak8, currency = tostring(ak4_1.Currency) })
        end
    end
    table.sort(ak3_1, function(kk, kl)
        if kk.cost ~= kl.cost then
            return kk.cost < kl.cost
        end
        return kk.id < kl.id
    end)
    for i, v in ipairs(ak3_1) do
        local ak3_2 = string.format("%s (%s %s)", v.name, aa3(v.cost), v.currency)
        if abv[ak3_2] then
            ak3_2 = string.format("%s [%s]", ak3_2, v.id)
        end
        abv[ak3_2] = v.id
        table.insert(abH, ak3_2)
    end
end
function fns.fn471()
    local afR = aJS_88.EnchantChannel ~= nil and aJS_88.Enchants ~= nil and aJS_73(aJS_88.Enchants.Equip) and aJS_73(aJS_88.Enchants.GetAvailableAmount) and aJS_73(aJS_88.Enchants.GetMaxEquipped)
    return afR
end
function fns.fn473(gY)
    local ahO = aax and type(aax.Items) == "table" and aax.Items[gY]
    local ahP = ahO
    local ahT = if ahP then 1 else 0
    local ahR = 2536 * ahT + 721 * (1 - ahT)
    local ahS = 223 * ahT + 1575 * (1 - ahT)
    if not ((ahR * 3697 + ahS * 810 + ahR * ahS) % 16777213 == 10121750) then
        ahP = nil
    end
    local ahO_1 = ahP
    local ahP_1 = type(ahO_1) == "table" and type(ahO_1.Name) == "string" and ahO_1.Name ~= ""
    if ahP_1 then
        return ahO_1.Name
    end
    return gY
end
function fns.fn486(lL)
    fns.aJS_15.GoldenPets = fns.aJS_37(lL, fns.aJS_9)
end
function fns.fn502()
    return aJS_70
end
function fns.fn510(k_)
    local alG = {}
    if type(k_) == "table" then
        for k, v in pairs(k_) do
            local alH = type(v) == "string" and v
            local alI_1 = alH or (v == true and k or nil)
            local alI_2 = type(alI_1) == "string" and ab4[alI_1]
            if alI_2 then
                alG[alI_1] = true
            end
        end
    end
    fns.aJS_15.PotionKeys = alG
end
function fns.fn511()
    local ape = not fns.aJS_15.AutoClaimQuests or not Z5()
    if ape then
        return
    end
    local ape_1 = fns.aJS_52()
    if not ape_1 then
        return
    end
    for k, v in pairs(aax.Quests) do
        local ape_2 = not ZV() or not fns.aJS_15.AutoClaimQuests
        if ape_2 then
            return
        end
        local ape_3 = type(k) == "string" and type(v) == "table" and not v.Disabled and type(v.Tiers) == "table"
        if ape_3 then
            local apf = v.Category == "???"
            local apf_4
            if not apf then
                local ape_5 = aae.GetCurrentTier(k)
                if v.Tiers[ape_5] then
                    local apf_1 = tonumber(aae.GetRequiredAmount(k)) or 0
                    local apg_1
                    local apf_2 = tonumber(aae.GetProgress(k)) or 0
                    if apf_1 > 0 and apf_2 >= apf_1 then
                        apf_4, apg_1 = ab3(abj, "Claim", k, ape_5)
                        if apf_4 and apg_1 == true then
                            local aKC = fns.aJS_15
                            aKC.Claimed = aKC.Claimed + 1
                            fns.aJS_4("Claimed " .. k)
                        end
                        task.wait(0.2)
                    end
                end
            end
        end
    end
end
function fns.fn515()
    return acx, acl
end
function fns.fn523(BM)
    local ayv_1
    local ayu_1
    local ayt_1, ayt_2
    local ays = ZG.Requester()
    if not ays then
        local aKF = fns.aJS_15
        aKF.WebhookFailed = aKF.WebhookFailed + 1
        return false, "This executor has no HTTP request function"
    end
    local ayz = if not ZG.ValidUrl(ZG.Url) then 1 else 0
    if ayz == 1 then
        local aKJ = fns.aJS_15
        aKJ.WebhookFailed = aKJ.WebhookFailed + 1
        return false, "Enter a valid Discord webhook URL"
    end
    ayt_1, ayu_1 = pcall(HttpService.JSONEncode, HttpService, BM)
    if not ayt_1 then
        local aKK = fns.aJS_15
        aKK.WebhookFailed = aKK.WebhookFailed + 1
        return false, "Could not encode the message"
    end
    ayt_2, ayv_1 = pcall(ays, { Url = ZG.Url, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = ayu_1 })
    if not ayt_2 then
        local aKG = fns.aJS_15
        aKG.WebhookFailed = aKG.WebhookFailed + 1
        return false, tostring(ayv_1):sub(1, 60)
    end
    local ays_1 = type(ayv_1) == "table" and tonumber(ayv_1.StatusCode)
    local ayt_3 = ays_1
    local ayz_1 = if ayt_3 then 1 else 0
    local ayx = 2184 * ayz_1 + 1011 * (1 - ayz_1)
    local ayy = 2250 * ayz_1 + 3919 * (1 - ayz_1)
    if not ((ayx * 849 + ayy * 3240 + ayx * ayy) % 16777213 == 14058216) then
        ayt_3 = nil
    end
    local ays_2 = ayt_3
    if ays_2 == 200 or ays_2 == 204 then
        local aKH = fns.aJS_15
        aKH.WebhookSent = aKH.WebhookSent + 1
        return true
    else
        local aKI = fns.aJS_15
        aKI.WebhookFailed = aKI.WebhookFailed + 1
        local ayt_5 = ays_2
        local ayz_2 = if ayt_5 then 1 else 0
        local ayx_1 = 701 * ayz_2 + 2885 * (1 - ayz_2)
        local ayy_1 = 2134 * ayz_2 + 2254 * (1 - ayz_2)
        if not ((ayx_1 * 1672 + ayy_1 * 2485 + ayx_1 * ayy_1) % 16777213 == 7970996) then
            ayt_5 = "nothing"
        end
        return false, "Discord replied " .. tostring(ayt_5)
    end
end
function fns.fn532(fv)
    local agJ_1
    local agI_1
    agJ_1, agI_1 = nil, math.huge
    for i, v in ipairs(aJS_66) do
        local agK = fns.aJS_55[v]
        local MAP = Workspace:FindFirstChild("_MAP")
        local agM = MAP and MAP:FindFirstChild("Islands")
        local agL_1 = agM
        if agM then
            agM = fns.aJS_8(agL_1:FindFirstChild(agK))
        end
        local agK_1 = agM
        if agK_1 then
            local Magnitude = (agK_1.Position - fv).Magnitude
            if Magnitude < agI_1 then
                agI_1 = Magnitude
                agJ_1 = v
            end
        end
    end
    return agJ_1
end
function fns.fn539(u0)
    local asC_2
    local asB_5
    local asy = not u0
    local asy_2
    local asz = not fns.aJS_15.AutoBuyMerchant and asy
    local asz_1, asz_2, asz_9
    local asy_1 = asz or not aJS_65()
    if asy_1 then
        return
    end
    asy_2, asz_1 = ab3(fns.aJS_46, "GetState")
    local asA = not asy_2 or type(asz_1) ~= "table"
    local asA_2, asA_7
    if asA then
        return
    end
    local asy_3 = tostring(asz_1.Kind) == "DicesMerchant"
    local asA_1 = asz_1.IsActive ~= true
    if not asA_1 then
        local asB_1 = not asy_3
        if asB_1 ~= false then
            local asC_1 = tonumber(asz_1.EndTimestamp) or 0
            asB_1 = asC_1 <= Workspace:GetServerTimeNow()
        end
        asA_1 = asB_1
    end
    if asA_1 then
        fns.aJS_4("Merchant is away")
        return
    end
    asz_2, asA_2 = ab3(fns.aJS_46, "GetOffers")
    local asB_2 = not asz_2 or type(asA_2) ~= "table"
    if asB_2 then
        return
    end
    for i, v in ipairs(asA_2) do
        local asz_3 = not ZV()
        if not asz_3 then
            asz_3 = not fns.aJS_15.AutoBuyMerchant and not u0
        end
        if asz_3 then
            return
        end
        local asz_4 = type(v) == "table" and v.Unlocked == true
        if asz_4 then
            local asA_4 = tonumber(v.Stock) or 0
            asz_4 = asA_4 > 0
        end
        if asz_4 then
            asz_4 = fns.aJS_21(v.Candidate)
        end
        if asz_4 then
            local asz_5 = tonumber(v.PriceGems) or math.huge
            local asz_6 = type(v.Currency) == "string" and v.Currency
            local asB_4 = asz_6 or "Gems"
            if aar(asB_4) >= asz_5 then
                local asA_6 = asy_3 and "Buying dice" or "Buying from merchant"
                fns.aJS_4(asA_6)
                asA_7, asB_5, asz_9, asC_2 = ab3(fns.aJS_46, "Buy", v.OfferKey)
                if asA_7 and asB_5 == true then
                    local aKN = fns.aJS_15
                    aKN.MerchantBuys = aKN.MerchantBuys + 1
                    if asC_2 ~= nil then
                        v.Stock = asC_2
                    end
                end
                task.wait(0.35)
            end
        end
    end
end
function fns.fn540(m8)
    local anl = (tostring(m8):match("%-?%d+"))
    local anq = if anl then 1 else 0
    local ano = 4079 * anq + 2705 * (1 - anq)
    local anp = 2153 * anq + 1834 * (1 - anq)
    if not ((ano * 37 + anp * 831 + ano * anp) % 16777213 == 10722153) then
        anl = ""
    end
    local anm = tonumber(anl) or 0
    local anl_1 = math.floor(anm)
    fns.aJS_15.RebirthTarget = math.max(0, anl_1)
    return fns.aJS_15.RebirthTarget
end
function fns.fn554(tO)
    fns.aJS_15.PotionSkipActive = tO == true
end
function fns.fn555(pt)
    local aoq = pt
    local aor = { 1, 2, 3 }
    if aoq then
        aoq = type(pt.OwnedRebirthButtons) == "table"
    end
    if aoq then
        for k, v in pairs(pt.OwnedRebirthButtons) do
            local aoq_1 = type(v) == "number" and v
            local aos = aoq_1
            if not aos then
                local aoq_2 = v == true and tonumber(k)
                aos = aoq_2 or nil
            end
            local aoq_3 = aos
            if aos then
                aos = aoq_3 >= 4
            end
            if aos then
                aos = ZK.Rebirths[aoq_3]
            end
            if aos then
                table.insert(aor, aoq_3)
            end
        end
    end
    table.sort(aor)
    return aor
end
function fns.fn567()
    return require(abe(Z4, "SkillTreeFrontend"))
end
function fns.fn572(w6)
    local atY_1
    local atW = (tonumber(w6.EndTimestamp))
    local atW_2
    local at2 = if atW then 1 else 0
    local at0 = 3462 * at2 + 1751 * (1 - at2)
    local at1 = 552 * at2 + 3918 * (1 - at2)
    if not ((at0 * 67 + at1 * 323 + at0 * at1) % 16777213 == 2321274) then
        atW = 0
    end
    local atX = atW - Workspace:GetServerTimeNow()
    local atW_1 = w6.SaveAge ~= nil and act and aJS_73(act.GetSaveAge)
    if atW_1 then
        atW_2, atY_1 = pcall(act.GetSaveAge)
        local atZ = atW_2 and tonumber(atY_1)
        if atZ then
            atX = atX - (atY_1 - w6.SaveAge) * 2
        end
    end
    return math.max(0, atX)
end
function fns.fn625(BL)
    if type(BL) ~= "string" then
        return false
    end
    return string.match(BL, "^https://[%w%-%.]*discord[%w%-%.]*%.com/api/webhooks/%d+/[%w%-_]+$") ~= nil
end
function fns.fn634(Ha)
    local aDd = type(Ha) == "table" and Ha.Price
    local aDe = aDd or nil
    local aDe_1 = type(aDe) ~= "table" or not aDe.Id
    if aDe_1 then
        return false
    end
    local aDe_2 = aar(tostring(aDe.Id))
    local aDf = (tonumber(aDe.Amount))
    local aDj = if aDf then 1 else 0
    local aDh = 3549 * aDj + 1754 * (1 - aDj)
    local aDi = 881 * aDj + 3179 * (1 - aDj)
    if not ((aDh * 1325 + aDi * 2895 + aDh * aDi) % 16777213 == 10379589) then
        aDf = math.huge
    end
    return aDe_2 >= aDf
end
function fns.fn641()
    return Z6
end
function fns.fn644(mq)
    local amS = type(mq) == "string" and mq
    local amT = amS or nil
    fns.aJS_15.TeleportNpc = amT
end
function fns.fn647()
    return require(abe(abe(fns.aJS_53, "Utils"), "SkillTreeUtil"))
end
function fns.fn654()
    local aEm = fns.aJS_15.Rolls or 0
    local aEn = fns.aJS_15.RolledPets or 0
    local aEo = fns.aJS_15.RngUpgradeBuys or 0
    local aEp = fns.aJS_15.RngRebirths or 0
    local aEq = fns.aJS_15.SkillNodes or 0
    local aEr = fns.aJS_15.Enchants
    local aEv = if aEr then 1 else 0
    local aEt = 3367 * aEv + 2710 * (1 - aEv)
    local aEu = 2741 * aEv + 3460 * (1 - aEv)
    if not ((aEt * 1292 + aEu * 3483 + aEt * aEu) % 16777213 == 6348801) then
        aEr = 0
    end
    return ("rolls %d  |  pets %d  |  upgrades %d  |  rebirths %d  |  nodes %d  |  enchants %d"):format(aEm, aEn, aEo, aEp, aEq, aEr)
end
function fns.fn661(cC)
    local aey_1
    local aex = not aJS_88.FFlags or not aJS_73(aJS_88.FFlags.Get)
    local aex_1
    if aex then
        return true
    end
    aex_1, aey_1 = pcall(aJS_88.FFlags.Get, cC)
    return aex_1 and aey_1 == true
end
function fns.fn672()
    local asO = fns.aJS_52()
    local asP = asO ~= nil and type(asO.MiniUpgrades) == "table" and asO.MiniUpgrades.AutoFish == true
    return asP
end
function fns.fn673()
    local ae9 = aJS_72 ~= nil and aax ~= nil and type(aax.Pets) == "table" and ZK ~= nil and type(ZK.RainbowCraftTime) == "table"
    return ae9
end
function fns.fn691()
    local arM_1, arM_2
    local arL = not fns.aJS_15.AutoClaimChests or not aav()
    local arL_2, arL_3
    if arL then
        return
    end
    for i, v in ipairs(ZT) do
        local arL_1 = not ZV() or not fns.aJS_15.AutoClaimChests
        if arL_1 then
            return
        end
        if v.channel then
            arL_2, arM_1 = ab3(v.channel, "GetCooldown")
            if arL_2 and arM_1 == true then
                arL_3, arM_2 = ab3(v.channel, "Claim")
                if arL_3 and arM_2 == true then
                    local aKY = fns.aJS_15
                    aKY.Chests = aKY.Chests + 1
                    fns.aJS_4("Claimed " .. v.id)
                end
                task.wait(0.3)
            end
        end
    end
end
function fns.fn701(uT)
    if type(uT) ~= "table" then
        return false
    elseif next(fns.aJS_15.MerchantTargets) == nil then
        return true
    else
        for k in pairs(fns.aJS_15.MerchantTargets) do
            local asq = ZF[k]
            if asq then
                if asq.kind == "Pet" and uT.Kind == "Pet" and uT.PetId == asq.id then
                    return true
                end
                local asr_1 = asq.kind == "Item" and uT.Kind == "Item" and uT.ItemId == asq.id
                if asr_1 then
                    local ass = tonumber(uT.Tier) or 1
                    asr_1 = ass == asq.tier
                end
                if asr_1 then
                    return true
                end
            end
        end
        return false
    end
end
function fns.fn704()
    local awg = {}
    local MAP = Workspace:FindFirstChild("_MAP")
    local awi = MAP and MAP:FindFirstChild("Islands")
    if awi then
        table.insert(awg, awi)
    end
    local awh_2 = aaw()
    if awh_2 then
        table.insert(awg, awh_2)
    end
    return awg
end
function fns.fn715(to)
    local ark_1
    local arj = not fns.aJS_32 or not aJS_73(fns.aJS_32.IsActive)
    local arj_1
    if arj then
        return false
    end
    arj_1, ark_1 = pcall(fns.aJS_32.IsActive, to)
    return arj_1 and ark_1 == true
end
function fns.fn741(cz, cA, ...)
    if not cz then
        return nil
    end
    local aev = table.pack(pcall(cz.InvokeServer, cz, cA, ...))
    if not aev[1] then
        return nil
    end
    table.remove(aev, 1)
    return aev
end
function fns.fn744()
    return require(abe(Z4, "Currency"))
end
function fns.fn746()
    return #aJS_101
end
function fns.fn751(qN)
    fns.aJS_15.AutoEquipBest = qN == true
    local apt = fns.aJS_15.AutoEquipBest and acG()
    if apt then
        abh()
        aah("equip", fns.aJS_27.EQUIP_INTERVAL, abh)
    else
        aaU("equip")
    end
end
function fns.fn752(xq)
    local aug = type(xq.RainbowCrafts) == "table" and xq.RainbowCrafts
    local aui = aug or {}
    local aug_1 = 0
    for k in pairs(aui) do
        aug_1 += 1
    end
    return aug_1
end
function fns.fn775()
    table.clear(fns.aJS_28)
end
function fns.fn780()
    return require(abe(fns.aJS_53, "Constants"))
end
function fns.fn812()
    local ayH = tostring(ZG.PingId):match("%d+")
    if ZG.Ping and ayH then
        return ("<@%s>"):format(ayH)
    end
    return nil
end
function fns.fn820()
    if ZG.Draining then
        return
    end
    ZG.Draining = true
    task.spawn(function()
        while true do
            local ayA = ZV() and #ZG.Queue > 0
            if ayA then
                local ayA_1 = table.remove(ZG.Queue, 1)
                ZG.Post(ayA_1)
                task.wait(1.2)
                continue
            end
            break
        end
        ZG.Draining = false
    end)
end
function fns.fn822(B7, B8)
    local ayK = acK("Pets", B7.id)
    local ayL = type(ayK) == "table" and tostring(ayK.Rarity)
    local ayK_1 = ayL or "Unknown"
    local ayL_1 = {}
    if type(B7.m) == "table" then
        for k, v in pairs(B7.m) do
            if v then
                table.insert(ayL_1, tostring(k))
            end
        end
        table.sort(ayL_1)
    end
    local id = B7.id
    local ayN = fns.aJS_24(B7.id)
    local ayO = ZK and type(ZK.RarityOrder) == "table" and tonumber(ZK.RarityOrder[ayK_1])
    local ayP = ayO or 0
    return {
        id = id,
        name = ayN,
        kind = B8,
        rarity = ayK_1,
        rank = ayP,
        shiny = B7.Shiny == true,
        mutations = table.concat(ayL_1, ", ")
    }
end
function fns.fn844(m6)
    local ani = tonumber(m6) or 10
    fns.aJS_15.ClicksPerSecond = math.clamp(ani, 1, 30)
end
function fns.fn851(kF, kG)
    local alp = 0
    local alq = {}
    if type(kF) == "table" then
        for k, v in pairs(kF) do
            local alr = type(v) == "string" and v
            local als_1 = alr or (v == true and k or nil)
            if type(als_1) == "string" then
                local alt_1 = kG and kG[als_1] or als_1
                if alt_1 ~= nil and not alq[alt_1] then
                    alq[alt_1] = true
                    alp += 1
                end
            end
        end
    end
    return alq, alp
end
function fns.fn865()
    return require(abe(Z4, "Pets"))
end
function fns.fn879(lj)
    local al9 = tonumber(lj) or fns.aJS_27.RAINBOW_MAX_FEED
    fns.aJS_15.RainbowUse = math.clamp(math.floor(al9), 1, fns.aJS_27.RAINBOW_MAX_FEED)
end
function fns.fn884()
    local afb = aJS_72 ~= nil and aax ~= nil and type(aax.Pets) == "table" and type(aax.PetVariants) == "table" and aax.PetVariants.DarkMatter ~= nil
    return afb
end
function fns.fn911(DC)
    local aAc = type(DC) == "string" and DC
    local aAd = aAc or ""
    ZG.Url = aAd
end
function fns.fn915()
    local aqf_1, aqf_3
    local aqe = not fns.aJS_15.AutoClaimMilestones or not acj()
    local aqe_1
    if aqe then
        return
    end
    aqe_1, aqf_1 = pcall(acH.GetOrderedAchievements)
    local aqg = not aqe_1 or type(aqf_1) ~= "table"
    local aqg_1
    if aqg then
        return
    end
    for i, v in ipairs(aqf_1) do
        local aqe_2 = not ZV() or not fns.aJS_15.AutoClaimMilestones
        if aqe_2 then
            return
        end
        local aqe_3 = type(v) == "table" and v._id
        local aqf_2 = aqe_3 or nil
        if type(aqf_2) == "string" then
            aqf_3, aqg_1 = pcall(acH.IsClaimable, aqf_2)
            local aqh = aqf_3 and aqg_1 == true and fns.aJS_35(aaT, "Claim", aqf_2)
            if aqh then
                local aLf = fns.aJS_15
                aLf.Milestones = aLf.Milestones + 1
                fns.aJS_4("Claimed milestone " .. aqf_2)
                task.wait(0.3)
            end
        end
    end
end
function fns.fn933()
    local akM = not aax or type(aax.Pets) ~= "table"
    if akM then
        return
    end
    local akM_1 = {}
    for k, v in pairs(aax.Pets) do
        local akN = type(k) == "string" and type(v) == "table" and v.Rarity ~= "Exclusive"
        if akN then
            local insert = table.insert
            local akO = type(v.Name) == "string" and v.Name ~= "" and v.Name
            local akP = akO or k
            insert(akM_1, { id = k, name = akP, rarity = tostring(v.Rarity) })
        end
    end
    table.sort(akM_1, function(j1, j2)
        if j1.name ~= j2.name then
            return j1.name < j2.name
        end
        return j1.id < j2.id
    end)
    for i, v in ipairs(akM_1) do
        local akM_2 = v.name
        if fns.aJS_9[akM_2] then
            akM_2 = v.name .. " [" .. v.id .. "]"
        end
        fns.aJS_9[akM_2] = v.id
        table.insert(aJS_79, akM_2)
    end
end
function fns.fn934(EW)
    fns.aJS_15.AutoRoll = EW == true
    local aBs = fns.aJS_15.AutoRoll and aJS_88.HasRolling()
    if aBs then
        aaj = 0
        aah("roll", aag, acT)
    else
        aaU("roll")
    end
end
function fns.fn935(AE)
    fns.aJS_15.AutoBreakables = AE == true
    local axi = fns.aJS_15.AutoBreakables and abi()
    if axi then
        local Character = LocalPlayer.Character
        local axj_1 = Character and Character:FindFirstChild("HumanoidRootPart")
        local axi_2 = axj_1
        if axj_1 then
            axj_1 = axi_2.CFrame
        end
        aJS_90 = axj_1 or nil
        aah("breakables", fns.aJS_27.BREAKABLE_INTERVAL, ab2)
    else
        aaU("breakables")
        if aJS_90 then
            local Character = LocalPlayer.Character
            local axj_2 = Character and Character:FindFirstChild("HumanoidRootPart")
            if axj_2 then
                axj_2.AssemblyLinearVelocity = Vector3.zero
                axj_2.CFrame = aJS_90
            end
            aJS_90 = nil
        end
    end
end
function fns.fn962()
    return aJS_71
end
function fns.fn973(tQ)
    fns.aJS_15.AutoUsePotions = tQ == true
    local arJ = fns.aJS_15.AutoUsePotions and aJS_87()
    if arJ then
        aah("potions", fns.aJS_27.POTION_INTERVAL, abD)
    else
        aaU("potions")
    end
end
function fns.fn984(DG)
    ZG.Ping = DG == true
end
function fns.fn985(vt)
    fns.aJS_15.AutoBuyMerchant = vt == true
    local asL = fns.aJS_15.AutoBuyMerchant and aJS_65()
    if asL then
        aah("merchant", fns.aJS_27.MERCHANT_INTERVAL, aaR)
    else
        aaU("merchant")
    end
end
function fns.fn987()
    local aBV_1
    local aBU_1
    local aBT = not fns.aJS_15.AutoBuyRngUpgrades or not aJS_88.HasUpgrades()
    if aBT then
        return
    end
    if not aJS_88.Flag("PurchasingRNGUpgrades") then
        fns.aJS_4("RNG upgrades are disabled")
        return
    end
    local aBT_1 = acU()
    if not aBT_1 then
        return
    end
    aBU_1, aBV_1 = aJS_88.UpgradeLabels()
    for i, v in ipairs(aBU_1) do
        local aBU_2 = not ZV() or not fns.aJS_15.AutoBuyRngUpgrades
        if aBU_2 then
            return
        end
        local aBU_3 = aBV_1[v]
        if aBU_3 and fns.aJS_15.RngUpgradeTargets[aBU_3] then
            local aBW_1 = aax.RNGUpgrades[aBU_3]
            local floor = math.floor
            local aBY = tonumber(aBT_1[aBU_3]) or 0
            local aBZ = floor(aBY)
            local aBX_1 = type(aBW_1) == "table" and fns.aJS_45(aBW_1, aBZ)
            local aBW_2 = aBX_1 or 0
            if aBW_2 > 0 then
                fns.aJS_4("Upgrading " .. v)
                local aBW_3 = aJS_88.InvokeAll(aJS_88.UpgradeChannel, "Purchase", aBU_3, aBW_2)
                if aBW_3 and aBW_3[1] == true then
                    local aLq = fns.aJS_15
                    aLq.RngUpgradeBuys = aLq.RngUpgradeBuys + aBW_2
                    if type(aBW_3[2]) == "table" then
                        aBT_1 = aBW_3[2]
                    else
                        aBT_1[aBU_3] = aBZ + aBW_2
                    end
                else
                    if aBW_3 and aBW_3[3] then
                        fns.aJS_4(tostring(aBW_3[3]):sub(1, 60))
                    end
                end
                task.wait(0.3)
            end
        end
    end
end
function fns.fn993()
    local arr = not fns.aJS_15.AutoUsePotions or not aJS_87()
    if arr then
        return
    end
    local arr_1 = fns.aJS_52()
    local ars = not arr_1 or type(arr_1.Items) ~= "table"
    if ars then
        return
    end
    for i, v in ipairs(aJS_71) do
        local ars_1 = not ZV() or not fns.aJS_15.AutoUsePotions
        if ars_1 then
            return
        end
        if fns.aJS_15.PotionKeys[v] then
            local ars_2 = ab4[v]
            local art = tonumber(arr_1.Items[("%s_%d"):format(ars_2.id, ars_2.tier)]) or 0
            local art_2
            local aru_2
            local art_1 = art > 0
            if art_1 then
                local aru_1 = fns.aJS_15.PotionSkipActive and aJS_94(ars_2.id)
                art_1 = not aru_1
            end
            if art_1 then
                fns.aJS_4("Using " .. v)
                art_2, aru_2 = ab3(aJS_98, "Use", ars_2.id, ars_2.tier)
                if art_2 and aru_2 == true then
                    local aLu = fns.aJS_15
                    aLu.Potions = aLu.Potions + 1
                end
                task.wait(0.5)
                arr_1 = fns.aJS_52()
                local ars_4 = not arr_1 or type(arr_1.Items) ~= "table"
                if ars_4 then
                    return
                end
            end
        end
    end
end
function fns.fn1008(pF, pG)
    local aoI_2
    local aoH_1
    local aoE = ZK.Rebirths[pG]
    local aoE_1
    if not aoE then
        return nil
    end
    local aoF = ZQ
    local aoF_1
    local aoG = 1
    if aoF then
        aoF = aJS_73(ZQ.GetPower)
    end
    if aoF then
        aoF_1, aoH_1 = pcall(ZQ.GetPower, pF, "RebirthCostMultiplier")
        local aoI_1 = aoF_1 and tonumber(aoH_1)
        if aoI_1 then
            aoG = aoH_1
        end
    end
    local GetCost = Z7.Rebirths.GetCost
    local aoH_2 = aoE.Amount or 1
    aoE_1, aoI_2 = pcall(GetCost, aoH_2, aar("Rebirths"), aoG)
    local aoF_3 = aoE_1 and tonumber(aoI_2)
    return aoF_3 or nil
end
function fns.fn1041(uc)
    fns.aJS_15.AutoClaimChests = uc == true
    local arZ = fns.aJS_15.AutoClaimChests and aav()
    if arZ then
        aah("chests", fns.aJS_27.CHEST_INTERVAL, aas)
    else
        aaU("chests")
    end
end
function fns.fn1061(U)
    local adN = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if adN then
        return cloneref(U)
    end
    return U
end
function fns.fn1075(CV)
    local azJ = fns.aJS_15.WebhookEvents or 0
    fns.aJS_15.WebhookEvents = azJ + 1
    table.insert(ZG.Batch, CV)
    while #ZG.Batch > 200 do
        table.remove(ZG.Batch, 1)
    end
    ZG.LastPush = os.clock()
    if ZG.Batching then
        return
    end
    ZG.Batching = true
    ZG.BatchStart = os.clock()
    task.spawn(function()
        while ZV() do
            task.wait(0.25)
            if os.clock() - ZG.LastPush >= fns.aJS_27.WEBHOOK_IDLE then
                break
            elseif os.clock() - ZG.BatchStart >= fns.aJS_27.WEBHOOK_MAX then
                break
            end
        end
        ZG.Batching = false
        ZG.Flush()
    end)
end
function fns.fn1080()
    return require(abe(Z4, "BoostsFrontend"))
end
function fns.fn1083()
    return aJS_72 ~= nil
end
function fns.fn1088(oK)
    local an2 = not aaD or not aJS_73(aaD.Play)
    if an2 then
        return
    end
    if oK then
        if abf then
            return
        end
        Play = aaD.Play
        abf = true
        aaD.Play = function(oQ, oR, oS, oT)
            local an__1
            local anZ_1
            if aJS_73(oT) then
                anZ_1, an__1 = pcall(oT)
                if anZ_1 and an__1 then
                    return
                end
            end
            if aJS_73(oS) then
                pcall(oS)
            end
        end
    elseif abf then
        abf = false
        if aJS_73(Play) then
            aaD.Play = Play
        end
        Play = nil
    end
end
function fns.fn1090()
    local aw7_1
    local aw6_1, aw6_5
    local aw5 = not fns.aJS_15.AutoBreakables or not abi()
    if aw5 then
        return
    end
    local aw5_1 = aaV()
    aw7_1, aw6_1 = nil, nil
    for i, v in ipairs(aw5_1) do
        local aw5_2 = (aJS_75(v))
        if aw5_2 then
            local aw8_1 = tonumber(v.hp) or 0
            aw5_2 = aw8_1 > 0
        end
        if aw5_2 then
            local aw5_3 = fns.aJS_50(v.zoneId)
            if aw5_3 then
                aw7_1, aw6_1 = v, aw5_3
                break
            end
        end
    end
    if not aw7_1 then
        fns.aJS_4("No breakable to hit")
        return
    end
    fns.aJS_4("Breaking " .. tostring(aw7_1.breakableId))
    local aw5_4 = os.clock() + fns.aJS_27.BREAKABLE_DWELL
    local aw8_2 = aw6_1.Position + Vector3.new(0, aw6_1.Size.Y * 0.5 + 4, 0)
    while true do
        local aw6_2 = ZV() and fns.aJS_15.AutoBreakables and os.clock() < aw5_4
        if aw6_2 then
            local Character = LocalPlayer.Character
            local aw9 = Character and Character:FindFirstChild("HumanoidRootPart")
            local aw9_1
            if aw9 then
                aw9.AssemblyLinearVelocity = Vector3.zero
                aw9.CFrame = CFrame.new(aw8_2)
            end
            aw9_1, aw6_5 = ab3(Z8, "Click", aw7_1.uid)
            local axa = aw9_1 and type(aw6_5) == "table"
            if axa then
                if aw6_5.broken == true then
                    local aLH = fns.aJS_15
                    aLH.Breaks = aLH.Breaks + 1
                    return
                end
            elseif aw9_1 then
                return
            end
            task.wait(fns.aJS_27.BREAKABLE_CLICK_DELAY)
            continue
        end
        break
    end
end
function fns.fn1116()
    local adQ = tostring(fns.aJS_15.Status)
    local adR = fns.aJS_15.Hatched or 0
    local adS = fns.aJS_15.Rebirths
    local adX = if adS then 1 else 0
    local adV = 2731 * adX + 1257 * (1 - adX)
    local adW = 789 * adX + 3547 * (1 - adX)
    if not ((adV * 128 + adW * 858 + adV * adW) % 16777213 == 3181289) then
        adS = 0
    end
    local adT = fns.aJS_15.Claimed or 0
    return string.format("%s  |  hatched %d  |  rebirths %d  |  quests %d", adQ, adR, adS, adT)
end
function fns.fn1134(ae)
    fns.aJS_15.Status = ae
end
function fns.fn1139(AW)
    local axJ
    local axz = type(AW.PotionCrafts) == "table" and AW.PotionCrafts
    local axA = {}
    local axB = axz
    local axF = if axB then 1 else 0
    local axD = 3823 * axF + 1139 * (1 - axF)
    local axE = 4042 * axF + 3784 * (1 - axF)
    if not ((axD * 3762 + axE * 1510 + axD * axE) % 16777213 == 2383686) then
        axB = axA
    end
    local axz_1 = axB
    local CRAFT_SLOTS = fns.aJS_27.CRAFT_SLOTS
    local axI = 1
    while true do
        if not (axI <= CRAFT_SLOTS) then
            return nil
        end
        axJ = axI
        local axA_2 = axz_1[tostring(axJ)] == nil and axz_1[axJ] == nil
        if axA_2 then
            break
        end
        axI += 1
    end
    return axJ
end
function fns.fn1140(Fh, Fi)
    local aBF = type(Fh.Costs) == "table" and Fh.Costs
    local aBG = aBF or nil
    local floor = math.floor
    local aBH = (tonumber(Fh.MaxLevel))
    local aBN = if aBH then 1 else 0
    local aBL = 414 * aBN + 327 * (1 - aBN)
    local aBM = 1943 * aBN + 3041 * (1 - aBN)
    if not ((aBL * 2493 + aBM * 2218 + aBL * aBM) % 16777213 == 6146078) then
        aBH = 0
    end
    local aBI = floor(aBH)
    if not aBG or Fi >= aBI then
        return 0
    end
    local aBG_3 = aar(tostring(Fh.Currency))
    local aBH_1 = 0
    local aBQ = Fi + 1
    while aBQ <= aBI do
        local aBR = aBQ
        local aBI_1 = tonumber(aBG[aBR])
        if not aBI_1 or aBG_3 < aBI_1 then
            break
        end
        aBG_3 -= aBI_1
        aBH_1 += 1
        aBQ += 1
    end
    return aBH_1
end
function fns.fn1145(nP)
    fns.aJS_15.AutoClick = nP == true
    local anE = fns.aJS_15.AutoClick and abJ()
    if anE then
        fns.aJS_4("Clicking")
        aah("click", aJS_78, aJS_62)
    else
        aaU("click")
        if not fns.aJS_15.AutoHatch then
            fns.aJS_4("Idle")
        end
    end
end
function fns.fn1150()
    return abH
end
function fns.fn1151()
    return require(abe(Z4, "Network"))
end
function fns.fn1178()
    local am__1
    local TeleportIsland = fns.aJS_15.TeleportIsland
    local amY_2
    local amY_1 = TeleportIsland and fns.aJS_55[TeleportIsland] or nil
    if not amY_1 then
        return false, "Pick an island first"
    end
    amY_2, am__1 = ab3(aJS_68, "TeleportToIsland", amY_1)
    if amY_2 and am__1 == true then
        return true
    end
    local MAP = Workspace:FindFirstChild("_MAP")
    local am__2 = MAP and MAP:FindFirstChild("Islands")
    local amY_4 = am__2
    if am__2 then
        am__2 = fns.aJS_8(amY_4:FindFirstChild(amY_1))
    end
    local amY_5 = am__2
    if not amY_5 then
        return false, "That island is not loaded"
    end
    local Character = LocalPlayer.Character
    local am__3 = Character and Character:FindFirstChild("HumanoidRootPart")
    if not am__3 then
        return false, "Character is not loaded"
    end
    local am__4 = amY_5.Size.Y * 0.5 + am__3.Size.Y * 0.5 + 1
    return aJS_61(amY_5.CFrame * CFrame.Angles(0, math.pi / 2, 0) + Vector3.new(0, am__4, 0))
end
function fns.fn1181()
    return require(abe(Z4, "AchievementsFrontend"))
end
function fns.fn1184(m2)
    local anf = tonumber(m2) or fns.aJS_27.HATCH_INTERVAL
    fns.aJS_15.HatchDelay = math.clamp(anf, 0.1, 10)
    return fns.aJS_15.HatchDelay
end
function fns.fn1185(ln)
    fns.aJS_15.DarkMatterPets = fns.aJS_37(ln, fns.aJS_9)
end
function fns.fn1189(q7)
    local apK_3
    local apJ = {}
    local apJ_2
    for k in pairs(ZK.Rebirths) do
        local apK_1 = type(k) == "number" and k >= 4
        if apK_1 then
            table.insert(apJ, k)
        end
    end
    table.sort(apJ)
    for i, v in ipairs(apJ) do
        if not acg(q7, v) then
            local apJ_1 = ZK.Rebirths[v]
            local apK_2 = tonumber(apJ_1.Cost)
            local apL = not apK_2 or not acS(q7, apJ_1.RequiredIsland)
            if apL then
                return false
            elseif aar("Gems") < apK_2 then
                return false
            else
                apJ_2, apK_3 = ab3(fns.aJS_41, "BuyRebirthButton", v)
                if apJ_2 and apK_3 == true then
                    local aLV = fns.aJS_15
                    aLV.Purchased = aLV.Purchased + 1
                    fns.aJS_4("Bought rebirth button " .. v)
                    return true
                end
                return false
            end
        end
    end
    return false
end
function fns.fn1203()
    return require(abe(fns.aJS_53, "Balancing"))
end
function fns.fn1212()
    return acx
end
function fns.fn1225(r8)
    fns.aJS_15.AutoClaimMilestones = r8 == true
    local aqs = fns.aJS_15.AutoClaimMilestones and acj()
    if aqs then
        aah("milestones", fns.aJS_27.MILESTONE_INTERVAL, fns.aJS_39)
    else
        aaU("milestones")
    end
end
function fns.fn1235(A1)
    local axL = type(A1.PotionCrafts) == "table" and A1.PotionCrafts
    local axM = axL or nil
    local axM_5
    if not axM then
        return
    end
    local CRAFT_SLOTS = fns.aJS_27.CRAFT_SLOTS
    local axT = 1
    while true do
        if axT <= CRAFT_SLOTS then
            local axU = axT
            local axM_2 = not ZV() or not fns.aJS_15.AutoClaimCrafts
            if axM_2 then
                break
            end
            local axM_3 = axM[tostring(axU)] or axM[axU]
            local axN_1
            local axM_4 = type(axM_3) == "table" and acu(axM_3) <= 0
            if axM_4 then
                axM_5, axN_1 = ab3(fns.aJS_3, "ClaimCraft", axU)
                if axM_5 and axN_1 == true then
                    local aL_ = fns.aJS_15
                    aL_.Crafts = aL_.Crafts + 1
                    fns.aJS_4("Claimed craft")
                    task.wait(0.3)
                end
            end
            axT += 1
            continue
        end
        return
    end
    return
end
function fns.fn1237()
    local awQ_1
    local awP_1
    local awO = {}
    for i, v in ipairs(aJS_60()) do
        awP_1, awQ_1 = ab3(Z8, "Get", v)
        local awR = awP_1 and type(awQ_1) == "table"
        if awR then
            for k, v in pairs(awQ_1) do
                local awP_2 = type(v) == "table" and type(v.uid) == "string" and type(v.zoneId) == "string"
                if awP_2 then
                    table.insert(awO, v)
                end
            end
        end
    end
    return awO
end
function fns.fn1276(nZ)
    local anI_1, anI_2
    local anG = abg
    local anG_1, anG_3
    local anH = 1
    if anG then
        anG = aJS_73(abg.GetMaxHatchCount)
    end
    if anG then
        anG_1, anI_1 = pcall(abg.GetMaxHatchCount, nZ)
        local anJ_1 = anG_1 and tonumber(anI_1)
        if anJ_1 then
            anH = math.max(1, math.floor(anI_1))
        end
    end
    local anG_2 = fns.aJS_11 and aJS_73(fns.aJS_11.GetRemainingInventorySlots)
    if anG_2 then
        anG_3, anI_2 = pcall(fns.aJS_11.GetRemainingInventorySlots)
        local anJ_2 = anG_3 and tonumber(anI_2)
        if anJ_2 then
            anH = math.min(anH, math.floor(anI_2))
        end
    end
    if anH < 1 then
        return 0
    elseif fns.aJS_15.HatchAmount == "1" then
        return 1
    elseif fns.aJS_15.HatchAmount == "Half" then
        return math.max(1, math.floor(anH / 2))
    else
        return anH
    end
end
function fns.fn1292()
    local afM = aJS_88.RebirthChannel ~= nil and Z7 ~= nil and type(Z7.RNGRebirths) == "table" and aJS_73(Z7.RNGRebirths.GetCost) and aJS_73(Z7.RNGRebirths.CanRebirth) and aax ~= nil and type(aax.RNGUpgrades) == "table"
    return afM
end
function fns.fn1309(qW, qX)
    if qX == nil then
        return true
    end
    local apy = type(qW.UnlockedIslands) == "table" and table.find(qW.UnlockedIslands, qX) ~= nil
    return apy
end
function fns.fn1318()
    local ar7_1
    local ar6_1, ar6_3
    local ar5_1
    local ar1 = not fns.aJS_15.AutoGolden or not fns.aJS_42()
    if ar1 then
        return
    end
    local ar1_1 = fns.aJS_52()
    if not ar1_1 then
        return
    end
    local ar2 = false
    for i, v in ipairs(aJS_79) do
        local ar3 = not ZV() or not fns.aJS_15.AutoGolden
        local ar3_5
        if ar3 then
            return
        end
        local ar3_1 = fns.aJS_9[v]
        local ar4 = ar3_1 and fns.aJS_15.GoldenPets[ar3_1]
        local ar4_2
        if ar4 then
            local GoldenUse = fns.aJS_15.GoldenUse
            ar5_1, ar6_1 = aak(ar1_1, ar3_1)
            local ar5_2 = #ar5_1 >= GoldenUse and ar5_1
            if not ar5_2 then
                ar5_2 = #ar6_1 >= GoldenUse and ar6_1 or nil
            end
            local ar3_4 = ar5_2
            if ar3_4 then
                local ar5_3 = {}
                local asi = 1
                while asi <= GoldenUse do
                    local asj = asi
                    ar5_3[asj] = ar3_4[asj]
                    asi += 1
                end
                fns.aJS_4("Golden " .. v)
                ar3_5, ar4_2, ar7_1, ar6_3 = ab3(aJS_72, "CraftGolden", ar5_3)
                if ar3_5 and ar4_2 == true then
                    local aL6 = fns.aJS_15
                    aL6.Goldens = aL6.Goldens + 1
                else
                    if ar3_5 and ar4_2 ~= true and ar6_3 ~= true and ar7_1 then
                        fns.aJS_4(tostring(ar7_1):sub(1, 60))
                    end
                end
                ar2 = true
                task.wait(0.4)
                ar1_1 = fns.aJS_52()
                if not ar1_1 then
                    return
                end
            end
        end
    end
    if not ar2 then
        fns.aJS_4("Golden: not enough pets")
    end
end
function fns.fn1325(lz)
    local lB, lC = aJS_88.UpgradeLabels()
    fns.aJS_15.RngUpgradeTargets = fns.aJS_37(lz, lC)
end
function fns.fn1355()
    return acV
end
function fns.fn1360()
    if Z5() then
        task.spawn(fns.aJS_51)
    end
end
function fns.fn1379(kT)
    fns.aJS_15.ShopTargets = fns.aJS_37(kT, nil)
end
function fns.fn1384(mt)
    local Character = LocalPlayer.Character
    local amW = Character and Character:FindFirstChild("HumanoidRootPart")
    if not amW then
        return false, "Character is not loaded"
    end
    amW.AssemblyLinearVelocity = Vector3.zero
    amW.AssemblyAngularVelocity = Vector3.zero
    amW.CFrame = mt
    return true
end
function fns.fn1393(Ij)
    fns.aJS_15.AutoRngRebirth = Ij == true
    local aEj = fns.aJS_15.AutoRngRebirth and aJS_88.HasRebirths()
    if aEj then
        aah("rngrebirth", fns.aJS_27.RNG_REBIRTH_INTERVAL, aa5)
    else
        aaU("rngrebirth")
    end
end
function fns.fn1395(Bx)
    fns.aJS_15.AutoClaimCrafts = Bx == true
    fns.aJS_26()
end
function fns.fn1418(lf)
    fns.aJS_15.RainbowPets = fns.aJS_37(lf, fns.aJS_9)
end
function fns.fn1420()
    local aBm_1
    local aBl = not fns.aJS_15.AutoRoll or not aJS_88.HasRolling()
    local aBl_1
    if aBl then
        return
    end
    if not aJS_88.Flag("RNGRolling") then
        fns.aJS_4("RNG rolling is disabled")
        return
    end
    if not aJS_81() then
        if not fns.aJS_15.AutoEnterRngWorld then
            fns.aJS_4("Enter RNG World to roll")
            return
        end
        aBl_1, aBm_1 = aaF.EnterRngWorld()
        if not aBl_1 then
            fns.aJS_4(tostring(aBm_1):sub(1, 60))
            task.wait(fns.aJS_27.ROLL_ENTER_DELAY)
            return
        end
    end
    fns.aJS_4("Rolling")
    local aBl_2 = aJS_88.InvokeAll(aJS_88.RollChannel, "Roll")
    if not aBl_2 then
        return
    end
    if aBl_2[1] == true then
        aaj = 0
        local aMf = fns.aJS_15
        aMf.Rolls = aMf.Rolls + 1
        local aBm_2 = aBl_2[10]
        if type(aBm_2) == "table" then
            local aMg = fns.aJS_15
            aMg.RolledPets = aMg.RolledPets + #aBm_2
        end
        local PixelCoins = fns.aJS_15.PixelCoins
        local aBn_1 = tonumber(aBl_2[6]) or 0
        fns.aJS_15.PixelCoins = PixelCoins + aBn_1
        return
    end
    local aBm_4 = aBl_2[2]
    if aBm_4 == "Cooldown" then
        local aBn_2 = tonumber(aBl_2[3]) or 0
        aaj = aBn_2
        fns.aJS_4("Roll cooldown")
        return
    end
    local aBl_3 = aBm_4
    local aBr = if aBl_3 then 1 else 0
    local aBp = 1536 * aBr + 1005 * (1 - aBr)
    local aBq = 3872 * aBr + 3897 * (1 - aBr)
    if not ((aBp * 2225 + aBq * 311 + aBp * aBq) % 16777213 == 10569184) then
        aBl_3 = "Roll failed"
    end
    fns.aJS_4(tostring(aBl_3):sub(1, 60))
end
function fns.fn1464()
    local af0 = {}
    if not abJ() then
        table.insert(af0, "clicking")
    end
    if not aJS_84() then
        table.insert(af0, "hatching")
    end
    if not aaI() then
        table.insert(af0, "rebirths")
    end
    local af4 = if not Z5() then 1 else 0
    if af4 == 1 then
        table.insert(af0, "quests")
    end
    if not acG() then
        table.insert(af0, "equip best")
    end
    if not aJS_105() then
        table.insert(af0, "rebirth shop")
    end
    if not acj() then
        table.insert(af0, "milestones")
    end
    if not aav() then
        table.insert(af0, "chests")
    end
    if not fns.aJS_42() then
        table.insert(af0, "golden machine")
    end
    if not aa7() then
        table.insert(af0, "codes")
    end
    if not aaQ() then
        table.insert(af0, "free gifts")
    end
    if not aJS_87() then
        table.insert(af0, "potions")
    end
    local af4_1 = if not aJS_65() then 1 else 0
    if af4_1 == 1 then
        table.insert(af0, "merchant")
    end
    if not ZS() then
        table.insert(af0, "fishing")
    end
    local af4_2 = if not acw() then 1 else 0
    if af4_2 == 1 then
        table.insert(af0, "rainbow machine")
    end
    local af4_3 = if not abT() then 1 else 0
    if af4_3 == 1 then
        table.insert(af0, "dark matter")
    end
    if not abi() then
        table.insert(af0, "breakables")
    end
    if not fns.aJS_49() then
        table.insert(af0, "crafting")
    end
    local af4_4 = if not aJS_88.HasRolling() then 1 else 0
    if af4_4 == 1 then
        table.insert(af0, "rng rolling")
    end
    if not aJS_88.HasUpgrades() then
        table.insert(af0, "rng upgrades")
    end
    if not aJS_88.HasRebirths() then
        table.insert(af0, "rng rebirths")
    end
    local af4_5 = if not aJS_88.HasEnchants() then 1 else 0
    if af4_5 == 1 then
        table.insert(af0, "enchants")
    end
    if not aJS_88.HasSkillTree() then
        table.insert(af0, "rng skill tree")
    end
    local af4_6 = if not aJS_88.HasLuckReward() then 1 else 0
    if af4_6 == 1 then
        table.insert(af0, "x2 luck reward")
    end
    if not aJS_88.HasWheel() then
        table.insert(af0, "wheel spins")
    end
    return af0
end
function fns.fn1466()
    return require(abe(Z4, "MinigamesFrontend"))
end
function fns.fn1477()
    local aAP_1
    local aAO_1
    local aAN_1
    if not aJS_88.HasRolling() then
        return false, "RNG rolling is unavailable"
    elseif aJS_81() then
        return true
    elseif not aaF.RngWorldUnlocked() then
        return false, "Unlock RNG World first"
    else
        aAN_1, aAP_1, aAO_1 = pcall(aJS_88.Minigames.Enter, aa2)
        if aAN_1 and aAP_1 == true then
            return true
        end
        local aAN_2 = aAN_1 and aAO_1
        local aAV = if aAN_2 then 1 else 0
        local aAT = 871 * aAV + 1936 * (1 - aAV)
        local aAU = 464 * aAV + 1631 * (1 - aAV)
        if not ((aAT * 3479 + aAU * 1540 + aAT * aAU) % 16777213 == 4148913) then
            aAN_2 = aAP_1
        end
        local aAO_2 = aAN_2 or "Could not enter RNG World"
        return false, tostring(aAO_2)
    end
end
function fns.fn1495(g3)
    local ahU = aax and type(aax.Pets) == "table" and aax.Pets[g3]
    local ahV = ahU
    local ahZ = if ahV then 1 else 0
    local ahX = 1047 * ahZ + 970 * (1 - ahZ)
    local ahY = 3311 * ahZ + 1700 * (1 - ahZ)
    if not ((ahX * 574 + ahY * 534 + ahX * ahY) % 16777213 == 5835669) then
        ahV = nil
    end
    local ahU_1 = ahV
    local ahV_1 = type(ahU_1) == "table" and type(ahU_1.Name) == "string" and ahU_1.Name ~= ""
    if ahV_1 then
        return ahU_1.Name
    end
    return g3
end
function fns.fn1517(mo)
    local amM = type(mo) == "string" and mo
    local amN = amM
    local amR = if amN then 1 else 0
    local amP = 4092 * amR + 3019 * (1 - amR)
    local amQ = 3984 * amR + 2852 * (1 - amR)
    if not ((amP * 3154 + amQ * 4085 + amP * amQ) % 16777213 == 11928910) then
        amN = nil
    end
    fns.aJS_15.TeleportIsland = amN
end
function fns.fn1518()
    return fns.aJS_15.HatchDelay + fns.aJS_40
end
function fns.fn1524()
    local aqx = if acj() then 1 else 0
    if aqx == 1 then
        task.spawn(fns.aJS_39)
    end
end
function fns.fn1551()
    local ap6 = not fns.aJS_15.AutoBuyRebirthShop
    local aqb = if ap6 then 1 else 0
    local ap9 = 3502 * aqb + 3353 * (1 - aqb)
    local aqa = 349 * aqb + 420 * (1 - aqb)
    if not ((ap9 * 2787 + aqa * 1254 + ap9 * aqa) % 16777213 == 11419918) then
        ap6 = not aJS_105()
    end
    if ap6 then
        return
    end
    local ap6_1 = fns.aJS_52()
    if not ap6_1 then
        return
    end
    local ap7 = fns.aJS_15.ShopTargets["Rebirth Buttons"] and aJS_92(ap6_1)
    if ap7 then
        return
    end
    if fns.aJS_15.ShopTargets["Double Jumps"] then
        abU(ap6_1)
    end
end
function fns.fn1553(x_)
    fns.aJS_15.AutoRainbow = x_ == true
    ZU()
end
function fns.fn1557(eV)
    local MAP = Workspace:FindFirstChild("_MAP")
    local agb = MAP and MAP:FindFirstChild("Interact")
    local aga_1 = agb
    if agb then
        agb = aga_1:FindFirstChild(eV)
    end
    return agb or nil
end
function fns.fn1573()
    return require(abe(fns.aJS_53, "Directory"))
end
function fns.fn1589()
    return CoreGui
end
function fns.fn1593(e0)
    local agd = e0 and e0:FindFirstChild("Interact")
    local agf = agd
    if agd then
        agd = agf:FindFirstChild("Teleport")
    end
    local agf_1 = agd
    if not agf_1 then
        return nil
    elseif agf_1:IsA("BasePart") then
        return agf_1
    else
        return agf_1:FindFirstChild("Teleport")
    end
end
function fns.fn1603(xw)
    local auo = type(xw.RainbowCrafts) == "table" and xw.RainbowCrafts
    local aup = auo or nil
    local aup_5
    if not aup then
        return
    end
    local RAINBOW_SLOTS = fns.aJS_27.RAINBOW_SLOTS
    local auw = 1
    while auw <= RAINBOW_SLOTS do
        local aux = auw
        local aup_2 = not ZV() or not fns.aJS_15.AutoClaimRainbow
        if aup_2 then
            return
        end
        local aup_3 = aup[aux] or aup[tostring(aux)]
        local auq_1
        local aup_4 = type(aup_3) == "table" and acu(aup_3) <= 0
        if aup_4 then
            aup_5, auq_1 = ab3(aJS_72, "ClaimRainbowCraft", aux)
            if aup_5 and auq_1 == true then
                local aMr = fns.aJS_15
                aMr.Rainbows = aMr.Rainbows + 1
                fns.aJS_4("Claimed rainbow pet")
                task.wait(0.3)
            end
        end
        auw += 1
    end
end
function fns.fn1646()
    local aDH_1
    local aDG_1
    local aDF = not fns.aJS_15.AutoBuySkillTree or not aJS_88.HasSkillTree()
    if aDF then
        return
    end
    local aDM = if not aJS_88.Flag("PurchasingSkillTreeUpgrades") then 1 else 0
    if aDM == 1 then
        fns.aJS_4("Skill tree purchases are disabled")
        return
    end
    local SKILL_TREE_SWEEPS = fns.aJS_27.SKILL_TREE_SWEEPS
    local aDP = 1
    while true do
        if aDP <= SKILL_TREE_SWEEPS then
            local aDF_2 = fns.aJS_52()
            if not aDF_2 then
                break
            end
            aDG_1, aDH_1 = pcall(acI, aDF_2)
            if not aDG_1 or aDH_1 == 0 then
                return
            end
            aDP += 1
            continue
        end
        return
    end
    return
end
function fns.fn1647(sD)
    local aqT_1
    local aqS_1
    local aqP = aJS_59(function()
        return require(abe(Z4, "FFlags"))
    end)
    local aqP_3
    local aqQ = aJS_59(function()
        return require(abe(abe(fns.aJS_53, "Utils"), "ClickSkinsUtil"))
    end)
    local aqR = not aqP or not aqQ or not aJS_73(aqQ.GetBoost)
    local aqR_2
    if aqR then
        return 0
    end
    local aqR_1 = false
    local aqX = if aJS_73(aqP.Get) then 1 else 0
    if aqX == 1 then
        aqS_1, aqT_1 = pcall(aqP.Get, "ClickSkinsBuffs")
        aqR_1 = aqS_1 and aqT_1 and true or false
    end
    if not aqR_1 then
        return 0
    end
    aqP_3, aqR_2 = pcall(aqQ.GetBoost, sD.ClickSkins, "FreeGiftsTime")
    local aqQ_1 = aqP_3 and tonumber(aqR_2)
    return aqQ_1 or 0
end
function fns.fn1655(nw)
    fns.aJS_28[nw] = nil
end
function fns.fn1662()
    local aj2 = not aax or type(aax.Rarity) ~= "table"
    if aj2 then
        return
    end
    local aj2_1 = {}
    for k, v in pairs(aax.Rarity) do
        local aj3 = type(k) == "string" and type(v) == "table"
        if aj3 then
            local aj3_1 = ZK and type(ZK.RarityOrder) == "table" and tonumber(ZK.RarityOrder[k])
            local aj4 = aj3_1 or nil
            local insert = table.insert
            local aj5 = type(v.Title) == "string" and v.Title ~= "" and v.Title
            local aj6 = aj5 or k
            local aj5_1 = aj4 or math.huge
            insert(aj2_1, { id = k, name = aj6, order = aj5_1 })
        end
    end
    table.sort(aj2_1, function(jv, jw)
        if jv.order ~= jw.order then
            return jv.order < jw.order
        end
        return jv.id < jw.id
    end)
    for i, v in ipairs(aj2_1) do
        local aj2_2 = v.name
        if fns.aJS_47[aj2_2] then
            aj2_2 = ("%s [%s]"):format(v.name, v.id)
        end
        fns.aJS_47[aj2_2] = v.id
        table.insert(ZH, aj2_2)
    end
end
function fns.fn1677()
    local aBw_1
    local aBv_1
    local aBu_1
    aBu_1, aBv_1, aBw_1 = ab3(aJS_88.UpgradeChannel, "Get")
    local aBx = aBu_1 and aBv_1 == true and type(aBw_1) == "table"
    if aBx then
        return aBw_1
    end
    local aBu_2 = fns.aJS_52()
    local aBv_2 = aBu_2 and type(aBu_2.RNGUpgrades) == "table"
    if aBv_2 then
        return aBu_2.RNGUpgrades
    end
    return nil
end
function fns.fn1679(ot, ou)
    local anV = aax and aax.Eggs[ot]
    if not anV then
        return 0
    end
    local anV_1 = aar(anV.Info.Currency)
    local anW_1 = abQ(ot)
    if anW_1 <= 0 or anV_1 < anW_1 then
        return 0
    end
    return math.clamp(math.floor(anV_1 / anW_1), 1, ou)
end
function fns.fn1683(G2)
    fns.aJS_15.AutoEquipEnchants = G2 == true
    local aC7 = fns.aJS_15.AutoEquipEnchants and aJS_88.HasEnchants()
    if aC7 then
        aah("enchants", fns.aJS_27.ENCHANT_INTERVAL, aa4)
    else
        aaU("enchants")
    end
end
function fns.fn1694()
    local aoc_1
    local aob_1
    local an7 = not fns.aJS_15.AutoHatch or not aJS_84()
    if an7 then
        return
    end
    if fns.aJS_15.HatchEggCount == 0 then
        fns.aJS_4("Select an egg")
        return
    end
    local an7_1 = true
    for i, v in ipairs(abH) do
        local an8 = abv[v]
        local an9 = not ZV() or not fns.aJS_15.AutoHatch
        local an9_3
        if an9 then
            return
        end
        if an8 and fns.aJS_15.HatchEggs[an8] then
            local an9_2 = fns.aJS_20(an8)
            if an9_2 < 1 then
                break
            else
                an7_1 = false
                local aoa = fns.aJS_34(an8, an9_2)
                if aoa > 0 then
                    fns.aJS_4("Hatching " .. an8)
                    an9_3, aob_1, aoc_1 = abw(fns.aJS_18, fns.aJS_27.HATCH_TIMEOUT, "Hatch", an8, aoa, HttpService:GenerateGUID(false))
                    if an9_3 and aob_1 == true then
                        local aMD = fns.aJS_15
                        aMD.Hatched = aMD.Hatched + aoa
                        fns.aJS_40 = math.max(0, fns.aJS_40 * 0.5 - 0.05)
                    else
                        fns.aJS_40 = math.min(fns.aJS_27.HATCH_INTERVAL_MAX, fns.aJS_40 * 1.5 + 0.15)
                        if aoc_1 then
                            fns.aJS_4(tostring(aoc_1):sub(1, 60))
                        end
                    end
                    return
                end
            end
        end
    end
    if an7_1 then
        fns.aJS_4("Pet inventory is full")
    else
        fns.aJS_4("Waiting for currency")
    end
end
function fns.fn1709(yf, yg)
    local au6 = {}
    local au8 = yf.Pets or {}
    for k, v in pairs(au8) do
        local au7_1 = type(v) == "table" and v.id == yg and not v.Locked and v.v == "Rainbow"
        if au7_1 then
            local au8_1 = v.Shiny == true and "shiny" or "plain"
            local au9 = au6[au8_1] or {}
            au6[au8_1] = au9
            table.insert(au6[au8_1], k)
        end
    end
    for k, v in pairs(au6) do
        if #v >= fns.aJS_27.DARK_MATTER_BASE then
            local au6_1 = {}
            local DARK_MATTER_BASE = fns.aJS_27.DARK_MATTER_BASE
            local avp = 1
            while avp <= DARK_MATTER_BASE do
                local avq = avp
                au6_1[avq] = v[avq]
                avp += 1
            end
            return au6_1
        end
    end
    return nil
end
function fns.fn1717()
    local amA_1
    local amw = {}
    if not fns.aJS_42() then
        return amw
    end
    local amx = fns.aJS_52()
    if not amx then
        return amw
    end
    for i, v in ipairs(aJS_79) do
        local amy = fns.aJS_9[v]
        local amz = amy and fns.aJS_15.GoldenPets[amy]
        local amz_1
        if amz then
            amz_1, amA_1 = aak(amx, amy)
            local amB = #amz_1 + #amA_1
            if amB > 0 then
                table.insert(amw, { id = amy, label = v, owned = amB })
            end
        end
    end
    return amw
end
function fns.fn1722(lr)
    fns.aJS_15.BreakableTargets = fns.aJS_37(lr, fns.aJS_17)
end
function fns.fn1746(wT)
    fns.aJS_15.AutoFish = wT == true
    local atU = fns.aJS_15.AutoFish and ZS()
    if atU then
        acE()
        aah("fish", fns.aJS_27.FISH_INTERVAL, abt)
    else
        aaU("fish")
        aJS_76()
        if abF then
            ab3(aai, "SetAutoFish", false)
            abF = false
        end
    end
end
function fns.fn1759()
    local afd = Z8 ~= nil and fns.aJS_53 ~= nil and fns.aJS_53:FindFirstChild("Directory") ~= nil and fns.aJS_53.Directory:FindFirstChild("Breakables") ~= nil
    return afd
end
function fns.fn1779()
    if aav() then
        task.spawn(aas)
    end
end
function fns.fn1821()
    return ZH
end
function fns.fn1833()
    if aJS_88.HasRebirths() then
        task.spawn(aa5, true)
    end
end
function fns.fn1837(lP)
    local amd = tonumber(lP) or fns.aJS_27.GOLDEN_MAX_FEED
    fns.aJS_15.GoldenUse = math.clamp(math.floor(amd), 1, fns.aJS_27.GOLDEN_MAX_FEED)
end
function fns.fn1845(kW)
    local alB = type(kW) == "string" and table.find(aJS_103, kW)
    if alB then
        fns.aJS_15.HatchAmount = kW
    end
end
function fns.fn1885()
    local auD_1
    if not acw() then
        return
    end
    local auz = fns.aJS_52()
    if not auz then
        return
    end
    if fns.aJS_15.AutoClaimRainbow then
        ack(auz)
        auz = fns.aJS_52()
        if not auz then
            return
        end
    end
    if not fns.aJS_15.AutoRainbow then
        return
    end
    if fns.aJS_23(auz) >= fns.aJS_27.RAINBOW_SLOTS then
        fns.aJS_4("Rainbow slots are full")
        return
    end
    for i, v in ipairs(aJS_79) do
        local auA = not ZV() or not fns.aJS_15.AutoRainbow
        local auA_3
        if auA then
            return
        end
        local auA_1 = fns.aJS_9[v]
        local auB = auA_1 and fns.aJS_15.RainbowPets[auA_1]
        local auB_2
        if auB then
            local auB_1 = aa8(auz, auA_1)
            local RainbowUse = fns.aJS_15.RainbowUse
            if #auB_1 >= RainbowUse then
                local auC = {}
                local auR = 1
                while auR <= RainbowUse do
                    local auS = auR
                    auC[auS] = auB_1[auS]
                    auR += 1
                end
                fns.aJS_4("Rainbow " .. v)
                auB_2, auA_3, auD_1 = ab3(aJS_72, "StartRainbowCraft", auC)
                if auB_2 and auA_3 == true then
                    task.wait(0.4)
                    return
                end
                if auB_2 and auD_1 then
                    fns.aJS_4(tostring(auD_1):sub(1, 60))
                end
            end
        end
    end
end
function fns.fn1893(Aa)
    if next(fns.aJS_15.BreakableTargets) == nil then
        return true
    end
    return fns.aJS_15.BreakableTargets[tostring(Aa.breakableId)] == true
end
function fns.fn1895(HY)
    local aD4_1
    local aD3_1
    if type(HY.RNGUpgrades) ~= "table" then
        return false
    end
    aD3_1, aD4_1 = pcall(Z7.RNGRebirths.CanRebirth, HY.RNGUpgrades, aax.RNGUpgrades)
    return aD3_1 and aD4_1 == true
end
function fns.fn1910()
    local THINGS = Workspace:FindFirstChild("_THINGS")
    local atb = THINGS and THINGS:FindFirstChild("Minigames")
    if not atb then
        return nil
    end
    for i, descendant in ipairs(atb:GetDescendants()) do
        if descendant:GetAttribute("FishingBobber") ~= nil then
            return descendant
        end
    end
    return nil
end
function fns.fn1913()
    if not fns.aJS_15.AutoClaimRngRewards then
        return
    end
    local aCr = fns.aJS_52()
    if not aCr then
        return
    end
    abW(aCr)
    local aCr_1 = fns.aJS_52()
    if aCr_1 then
        fns.aJS_7(aCr_1)
    end
end
function fns.fn1934()
    gethui = fns.aJS_22
end
function fns.fn1939(C9)
    local azR = type(C9) ~= "string" or type(ZG.Seen) ~= "table"
    if azR then
        return
    end
    local azR_1 = fns.aJS_52()
    local azS = azR_1 and type(azR_1.Pets) == "table" and azR_1.Pets[C9]
    local azS_1 = azS or nil
    if type(azS_1) ~= "table" then
        ZG.Seen[C9] = nil
        return
    end
    if ZG.Seen[C9] then
        return
    end
    ZG.Seen[C9] = true
    if not ZG.Enabled then
        return
    end
    local azR_3 = tostring(azS_1.v)
    local azT = azR_3 == "nil"
    if not azT then
        local azV = ZK and ZK.DefaultPetVariant or "Normal"
        azT = azR_3 == tostring(azV)
    end
    if azT then
        azR_3 = "Normal"
    end
    local azT_1 = ZG.Events[azR_3] ~= true or not ZG.WantsRarity(azS_1)
    if azT_1 then
        return
    end
    ZG.Push(ZG.Describe(azS_1, azR_3))
end
function fns.fn1945()
    local ax0_1
    local ax__1
    local ax4 = if not fns.aJS_49() then 1 else 0
    if ax4 == 1 then
        return
    end
    local axW = fns.aJS_52()
    if not axW then
        return
    end
    if fns.aJS_15.AutoClaimCrafts then
        aaG(axW)
        axW = fns.aJS_52()
        if not axW then
            return
        end
    end
    if not fns.aJS_15.AutoCraftItems then
        return
    end
    for i, v in ipairs(Z6) do
        local axX = not ZV() or not fns.aJS_15.AutoCraftItems
        if axX then
            return
        end
        local axX_1 = aJS_82[v]
        if axX_1 and fns.aJS_15.CraftRecipes[axX_1] then
            local axY_1 = acK("PotionRecipes", axX_1)
            local axZ = type(axY_1) == "table" and acF(axW, axY_1)
            local axZ_1
            if axZ then
                local axY_2 = aJS_96(axW)
                if not axY_2 then
                    fns.aJS_4("Crafting slots are full")
                    return
                end
                fns.aJS_4("Crafting " .. v)
                ax__1, axZ_1, ax0_1 = ab3(fns.aJS_3, "StartCraft", axY_2, axX_1, 1)
                if ax__1 and axZ_1 == true then
                    task.wait(0.4)
                    return
                end
                if ax__1 and ax0_1 then
                    fns.aJS_4(tostring(ax0_1):sub(1, 60))
                end
            end
        end
    end
end
function fns.fn1946(rH)
    fns.aJS_15.AutoBuyRebirthShop = rH == true
    local aqc = fns.aJS_15.AutoBuyRebirthShop and aJS_105()
    if aqc then
        aah("shop", fns.aJS_27.SHOP_INTERVAL, aJS_86)
    else
        aaU("shop")
    end
end
function fns.fn1997()
    local aed_1
    local aec = not act or not aJS_73(act.Local)
    local aec_1
    if aec then
        return nil
    end
    aec_1, aed_1 = pcall(act.Local)
    local aee = aec_1 and type(aed_1) == "table"
    if aee then
        return aed_1
    end
    return nil
end
function fns.fn1998()
    aJS_64(false)
end
function fns.fn2006()
    local aA6_1
    local aA5_1
    local aA4_1
    if aJS_88.MinigameChannel == nil then
        return false, "RNG rolling is unavailable"
    end
    local aBf = if aaF.RngWorldUnlocked() then 1 else 0
    if aBf == 1 then
        return true
    end
    aA4_1, aA5_1, aA6_1 = ab3(aJS_88.MinigameChannel, "PurchaseRNGWorld")
    if aA4_1 and aA5_1 == true then
        return true
    end
    local aA4_2 = aA6_1
    local aBi = if aA4_2 then 1 else 0
    local aBg = 2713 * aBi + 3945 * (1 - aBi)
    local aBh = 553 * aBi + 3841 * (1 - aBi)
    if not ((aBg * 622 + aBh * 1236 + aBg * aBh) % 16777213 == 3871283) then
        aA4_2 = "Could not unlock RNG World"
    end
    return false, tostring(aA4_2)
end
function fns.fn2011()
    if aai == nil then
        return false
    end
    local Assets = ZI:FindFirstChild("Assets")
    local afn = Assets and Assets:FindFirstChild("Minigames")
    local afn_1 = afn ~= nil and afn:FindFirstChild("SummerEvent2026") ~= nil
    return afn_1
end
function fns.fn2013(kP)
    fns.aJS_15.HatchEggs, fns.aJS_15.HatchEggCount = fns.aJS_37(kP, abv)
end
function fns.fn2030()
    return fns.aJS_44
end
function fns.fn2031(ys, yt)
    local avt = {}
    local avu = {}
    local avu_6
    local avv = ys.Pets or avu
    local avv_4
    for k, v in pairs(avv) do
        local avu_1 = type(v) == "table" and not v.Locked and not yt[k]
        if avu_1 then
            local avu_2 = aax.Pets[v.id]
            local avv_1 = avu_2 and tostring(avu_2.Rarity)
            local avw = avv_1 or ""
            local avw_1 = tostring(v.v)
            if avu_2 and avw ~= "Secret" and fns.aJS_2[avw] and avw_1 ~= "Rainbow" and avw_1 ~= "DarkMatter" then
                local avu_5 = fns.aJS_29(v)
                if avu_5 > 0 then
                    table.insert(avt, { uid = k, points = avu_5 })
                end
            end
        end
    end
    table.sort(avt, function(yE, yF)
        if yE.points ~= yF.points then
            return yE.points < yF.points
        end
        return yE.uid < yF.uid
    end)
    avu_6, avv_4 = {}, 0
    for i, v in ipairs(avt) do
        table.insert(avu_6, v.uid)
        avv_4 += v.points
        if avv_4 >= fns.aJS_27.DARK_MATTER_POINTS then
            return avu_6
        end
    end
    return nil
end
function fns.fn2048(DP)
    ZG.Enabled = DP == true
    if ZG.Enabled then
        ZG.Connect()
        aah("webhook", 5, function()
            if ZG.Enabled and not ZG.Connection then
                ZG.Connect()
            end
        end)
    else
        aaU("webhook")
        ZG.Disconnect()
    end
end
function fns.fn2049()
    local afH = aJS_88.SkillTreeChannel ~= nil and aJS_88.SkillTree ~= nil and aJS_73(aJS_88.SkillTree.Purchase) and aJS_73(aJS_88.SkillTree.Owns) and aJS_88.SkillTreeUtil ~= nil and aJS_73(aJS_88.SkillTreeUtil.GetRequirementFailure) and aax ~= nil and type(aax.SkillTree) == "table" and type(aax.SkillTree.RNG) == "table"
    return afH
end
function fns.fn2067(DL)
    ZG.Rarities = fns.aJS_37(DL, fns.aJS_47)
end
function fns.fn2088(lU)
    local amf = type(lU) ~= "table"
    local amk = if amf then 1 else 0
    local ami = 837 * amk + 1824 * (1 - amk)
    local amj = 3931 * amk + 3355 * (1 - amk)
    if not ((ami * 2697 + amj * 3502 + ami * amj) % 16777213 == 2536785) then
        amf = lU.Locked
    end
    if amf then
        return false
    end
    local amf_1 = aax.Pets[lU.id]
    if not amf_1 or amf_1.Rarity == "Exclusive" then
        return false
    end
    return lU.v == nil or lU.v == ZK.DefaultPetVariant
end
function fns.fn2099(qC)
    fns.aJS_15.AutoClaimQuests = qC == true
    local app = fns.aJS_15.AutoClaimQuests and Z5()
    if app then
        aah("quests", fns.aJS_27.QUEST_INTERVAL, fns.aJS_51)
    else
        aaU("quests")
    end
end
function fns.fn2106()
    local aff = fns.aJS_3 ~= nil and fns.aJS_53 ~= nil and fns.aJS_53:FindFirstChild("Directory") ~= nil and fns.aJS_53.Directory:FindFirstChild("PotionRecipes") ~= nil
    return aff
end
function fns.fn2107(FO)
    fns.aJS_15.AutoBuyRngUpgrades = FO == true
    local aB6 = fns.aJS_15.AutoBuyRngUpgrades and aJS_88.HasUpgrades()
    if aB6 then
        aah("rngupgrades", fns.aJS_27.RNG_UPGRADE_INTERVAL, ZR)
    else
        aaU("rngupgrades")
    end
end
function fns.fn2117(g8, g9, ha)
    local ah__1
    if g8 == "Pet" then
        ah__1 = fns.aJS_24(g9) .. " (Pet)"
    else
        local ah0_1 = aax and type(aax.Items) == "table" and aax.Items[g9]
        local ah1 = ah0_1 or nil
        local ah0_2 = ah1
        if ah1 then
            ah1 = tostring(ah0_2.Category)
        end
        local ah0_3 = ah1 or ""
        if ah0_3 == "Boosts" then
            local ah0_4 = Z2(g9)
            local ah2_1 = ha
            local ah6 = if ah2_1 then 1 else 0
            local ah4 = 2448 * ah6 + 1717 * (1 - ah6)
            local ah5 = 1588 * ah6 + 101 * (1 - ah6)
            if not ((ah4 * 1511 + ah5 * 3510 + ah4 * ah5) % 16777213 == 13160232) then
                ah2_1 = 1
            end
            ah__1 = ("%s (Tier %d)"):format(ah0_4, ah2_1)
        else
            local ah0_5 = Z2(g9)
            local ah1_2 = ah0_3 ~= "" and ah0_3 or "Item"
            ah__1 = ("%s (%s)"):format(ah0_5, ah1_2)
        end
    end
    if ZF[ah__1] then
        return
    end
    local ah0_6 = ha or 1
    ZF[ah__1] = { kind = g8, id = g9, tier = ah0_6 }
    table.insert(aJS_70, ah__1)
end
function fns.fn2126()
    return require(abe(Z4, "PlayerEnchantsFrontend"))
end
function fns.fn2131()
    if aJS_65() then
        task.spawn(aaR, true)
    end
end
function fns.fn2143()
    return require(abe(Z4, "Stats"))
end
function fns.fn2154()
    return require(abe(Z4, "OpenEgg"))
end
function fns.fn2159()
    local afv = aJS_88.RollChannel ~= nil and aJS_88.Minigames ~= nil and aJS_73(aJS_88.Minigames.Enter) and aJS_73(aJS_88.Minigames.Active)
    return afv
end
function fns.fn2173(DI, DJ)
    if ZG.Kinds[DI] then
        ZG.Events[DI] = DJ == true
    end
end
function fns.fn2189()
    local ahi = not aax or type(aax.Items) ~= "table"
    if ahi then
        return
    end
    local ahi_1 = {}
    for k, v in pairs(aax.Items) do
        local ahj = type(k) == "string" and type(v) == "table" and v.Category == "Boosts" and type(v.Tiers) == "table"
        if ahj then
            local ahj_1 = type(v.Name) == "string" and v.Name ~= "" and v.Name
            local ahk = ahj_1 or k
            local ahj_2 = {}
            for k in pairs(v.Tiers) do
                if tonumber(k) then
                    table.insert(ahj_2, tonumber(k))
                end
            end
            table.sort(ahj_2)
            for i, v in ipairs(ahj_2) do
                table.insert(ahi_1, { id = k, tier = v, name = ahk })
            end
        end
    end
    table.sort(ahi_1, function(gt, gu)
        if gt.name ~= gu.name then
            return gt.name < gu.name
        end
        return gt.tier < gu.tier
    end)
    for i, v in ipairs(ahi_1) do
        local ahi_2 = ("%s (Tier %d)"):format(v.name, v.tier)
        if not ab4[ahi_2] then
            ab4[ahi_2] = { id = v.id, tier = v.tier }
            table.insert(aJS_71, ahi_2)
        end
    end
end
function fns.fn2201(qa)
    fns.aJS_15.AutoRebirth = qa == true
    local ao9 = fns.aJS_15.AutoRebirth and aaI()
    if ao9 then
        aah("rebirth", fns.aJS_27.REBIRTH_INTERVAL, aJS_58)
    else
        aaU("rebirth")
    end
end
function fns.fn2207(HK)
    fns.aJS_15.AutoBuySkillTree = HK == true
    local aDS = fns.aJS_15.AutoBuySkillTree and aJS_88.HasSkillTree()
    if aDS then
        aah("skilltree", fns.aJS_27.SKILL_TREE_INTERVAL, aci)
    else
        aaU("skilltree")
    end
end
function fns.fn2222()
    return aJS_88.LuckRewardChannel ~= nil
end
function fns.fn2227(B2)
    table.insert(ZG.Queue, B2)
    while #ZG.Queue > 40 do
        table.remove(ZG.Queue, 1)
    end
    ZG.Drain()
end
function fns.fn2235()
    local awn = {}
    for i, v in ipairs(ab7()) do
        for i, child in ipairs(v:GetChildren()) do
            local Interact = child:FindFirstChild("Interact")
            local awp = Interact and Interact:FindFirstChild("BreakableZones")
            local awo_1 = awp
            if awp then
                awp = #awo_1:GetChildren() > 0
            end
            if awp then
                table.insert(awn, child.Name)
            end
        end
    end
    table.sort(awn)
    return awn
end
function fns.fn2236()
    return acV, acJ
end
function fns.fn2246(Gz)
    local aCK
    local aCC_1
    local aCB_1
    aCB_1, aCC_1 = pcall(aJS_88.Enchants.GetMaxEquipped)
    if not aCB_1 then
        return nil
    end
    local aCB_2 = type(Gz.EquippedEnchants) == "table" and Gz.EquippedEnchants
    local aCE = aCB_2 or {}
    local min = math.min
    local floor = math.floor
    local aCF = tonumber(aCC_1) or 0
    local aCC_2 = min(floor(aCF), fns.aJS_27.ENCHANT_SLOTS)
    local aCJ = 1
    while true do
        if not (aCJ <= aCC_2) then
            return nil
        end
        aCK = aCJ
        local aCC_3 = aCE[tostring(aCK)] == nil and aCE[aCK] == nil
        if aCC_3 then
            break
        end
        aCJ += 1
    end
    return aCK
end
function fns.fn2259(uN)
    fns.aJS_15.AutoGolden = uN == true
    local aso = fns.aJS_15.AutoGolden and fns.aJS_42()
    if aso then
        aah("golden", fns.aJS_27.GOLDEN_INTERVAL, aau)
    else
        aaU("golden")
    end
end
function fns.fn2274()
    local aAK = fns.aJS_52()
    return aAK ~= nil and aAK.RNGWorldUnlocked == true
end
function fns.fn2285()
    if aJS_88.HasUpgrades() then
        task.spawn(ZR)
    end
end
function fns.fn2286()
    local apr = not fns.aJS_15.AutoEquipBest or not acG()
    if apr then
        return
    end
    fns.aJS_35(aJS_72, "EquipBest")
end
function fns.fn2297()
    local aAY_1
    local aAX_1
    local aAW = not aJS_88.Minigames
    local aAW_1
    local aA3 = if aAW then 1 else 0
    local aA1 = 3902 * aA3 + 1241 * (1 - aA3)
    local aA2 = 1993 * aA3 + 4031 * (1 - aA3)
    if not ((aA1 * 3670 + aA2 * 2518 + aA1 * aA2) % 16777213 == 10338187) then
        aAW = not aJS_73(aJS_88.Minigames.Exit)
    end
    if aAW then
        return false, "RNG rolling is unavailable"
    elseif not aJS_81() then
        return false, "You are not in RNG World"
    else
        aAW_1, aAY_1, aAX_1 = pcall(aJS_88.Minigames.Exit)
        if aAW_1 and aAY_1 == true then
            return true
        end
        local aAX_2 = aAW_1 and aAX_1 or aAY_1 or "Could not leave RNG World"
        return false, tostring(aAX_2)
    end
end
function fns.fn2298()
    local aoN = not fns.aJS_15.AutoRebirth or not aaI()
    if aoN then
        return
    end
    local aoN_1 = fns.aJS_52()
    if not aoN_1 then
        return
    end
    local aoO = aaS(aoN_1)
    local aoP = aar("Clicks")
    local RebirthTarget = fns.aJS_15.RebirthTarget
    local aoR
    if RebirthTarget > 0 then
        local aoS
        for i, v in ipairs(aoO) do
            local aoT_1 = tonumber(ZK.Rebirths[v].Amount) or 1
            if aoT_1 == RebirthTarget then
                aoS = v
                break
            end
        end
        if not aoS then
            fns.aJS_4("No +" .. RebirthTarget .. " rebirth button")
            return
        end
        local aoT_2 = acR(aoN_1, aoS)
        if not aoT_2 then
            return
        end
        if aoP < aoT_2 then
            fns.aJS_4("Saving for +" .. RebirthTarget .. " rebirths")
            return
        end
        aoR = aoS
    else
        for i, v in ipairs(aoO) do
            local aoO_1 = acR(aoN_1, v)
            if aoO_1 and aoP >= aoO_1 then
                aoR = v
            end
        end
    end
    if not aoR then
        return
    end
    local aoN_2 = aar("Rebirths")
    if fns.aJS_35(fns.aJS_6, "Rebirth", aoR) then
        fns.aJS_4("Rebirthing")
        local aoO_2 = os.clock() + 3
        while true do
            local aoP_1 = ZV() and os.clock() < aoO_2
            if aoP_1 then
                if aar("Rebirths") > aoN_2 then
                    local aNp = fns.aJS_15
                    aNp.Rebirths = aNp.Rebirths + 1
                    return
                end
                task.wait(0.1)
                continue
            end
            break
        end
    end
end
function fns.fn2322(F7)
    local aCh = not aJS_88.HasWheel() or not aJS_88.Flag("SpinWheelRolling")
    local aCh_5
    if aCh then
        return
    end
    local aCh_1 = type(F7.SpinWheelTimeRewards) == "table" and F7.SpinWheelTimeRewards
    local aCi = aCh_1 or nil
    local aCi_3
    if not aCi then
        return
    end
    local floor = math.floor
    local aCj = tonumber(aCi.Spins) or 0
    local aCh_3 = floor(aCj)
    local aCi_2 = math.min(aCh_3, 10)
    local aCo = 1
    while true do
        if aCo <= aCi_2 then
            local aCh_4 = not ZV() or not fns.aJS_15.AutoClaimRngRewards
            if aCh_4 then
                return
            end
            aCh_5, aCi_3 = ab3(aJS_88.WheelChannel, "Roll")
            if not aCh_5 or aCi_3 ~= true then
                break
            else
                local aNs = fns.aJS_15
                aNs.RngRewards = aNs.RngRewards + 1
                fns.aJS_4("Spun the reward wheel")
                task.wait(0.5)
                aCo += 1
                continue
            end
        else
            return
        end
    end
    return
end
function fns.fn2332(od)
    local anP_1
    local anO = abg and aJS_73(abg.GetEggCost)
    local anO_1, anO_3
    if anO then
        anO_1, anP_1 = pcall(abg.GetEggCost, od)
        local anQ = anO_1 and tonumber(anP_1)
        if anQ then
            return anP_1
        end
        local anO_2 = aax and aax.Eggs[od]
        local anP_2 = anO_2
        if anO_3 then
            anO_2 = tonumber(anP_2.Info.Cost)
        end
        return anO_2 or math.huge
    end
    anO_3 = aax and aax.Eggs[od]
    local anP_4 = anO_3
    if anO_3 then
        anO_3 = tonumber(anP_4.Info.Cost)
    end
    return anO_3 or math.huge
end
function fns.fn2336()
    if not fns.aJS_49() then
        return
    end
    local aiZ = {}
    for i, child in ipairs(fns.aJS_53.Directory.PotionRecipes:GetChildren()) do
        local Name = child.Name
        local ai0 = acK("PotionRecipes", Name)
        local ai1 = type(ai0) == "table" and type(ai0.Ingredients) == "table"
        if ai1 then
            local insert = table.insert
            local ai2 = aaJ(ai0) or fns.aJS_12(Name)
            local ai3 = tonumber(ai0.Order) or math.huge
            insert(aiZ, { id = Name, name = ai2, order = ai3 })
        end
    end
    table.sort(aiZ, function(im, io)
        if im.order ~= io.order then
            return im.order < io.order
        end
        return im.id < io.id
    end)
    for i, v in ipairs(aiZ) do
        local aiZ_1 = v.name
        if aJS_82[aiZ_1] then
            aiZ_1 = ("%s [%s]"):format(v.name, v.id)
        end
        aJS_82[aiZ_1] = v.id
        table.insert(Z6, aiZ_1)
    end
end
function fns.fn2338(ai)
    local adZ_1
    local adY_1
    adY_1, adZ_1 = pcall(ai)
    local ad_ = adY_1 and type(adZ_1) == "table"
    if ad_ then
        return adZ_1
    end
    return nil
end
function fns.fn2353()
    for i, v in ipairs(ZT) do
        if v.channel then
            return true
        end
    end
    return false
end
function fns.fn2398()
    local aAB = if acG() then 1 else 0
    if aAB == 1 then
        abh()
    end
end
function fns.fn2412(eP)
    local af5 = tonumber(eP) or 0
    local af6 = 1
    local af7 = { "", "K", "M", "B", "T", "Qd", "Qn", "Sx", "Sp", "Oc", "No", "Dc" }
    local af8 = af5
    while true do
        if af8 >= 1000 and af6 < #af7 then
            af8 /= 1000
            af6 += 1
            continue
        end
        break
    end
    if af6 == 1 then
        return string.format("%d", af8)
    end
    return string.format("%.2f%s", af8, af7[af6])
end
function fns.fn2433(Bu)
    fns.aJS_15.AutoCraftItems = Bu == true
    fns.aJS_26()
end
function fns.fn2456(xg, xh)
    local at3 = aax.Pets[xh]
    if not at3 or at3.Rarity == "Exclusive" then
        return {}
    end
    local at3_1 = {}
    local at4_1 = {}
    local at5 = xg.Pets
    local at9 = if at5 then 1 else 0
    local at7 = 3429 * at9 + 1259 * (1 - at9)
    local at8 = 1575 * at9 + 2709 * (1 - at9)
    if not ((at7 * 1335 + at8 * 3136 + at7 * at8) % 16777213 == 14917590) then
        at5 = at4_1
    end
    for k, v in pairs(at5) do
        local at4_2 = type(v) == "table" and v.id == xh and not v.Locked and v.v == "Golden"
        if at4_2 then
            table.insert(at3_1, k)
        end
    end
    return at3_1
end
function fns.fn2490()
    return fns.aJS_33
end
function fns.fn2503(rr)
    local apY = type(rr.Upgrades) == "table" and rr.Upgrades
    local apZ = apY or nil
    local apZ_3
    local apY_1 = apZ
    if apZ then
        apZ = tonumber(apY_1.DoubleJumps)
    end
    local apY_3 = (apZ or 0) + 1
    local apZ_2 = aax.RebirthShop.Jumps[apY_3]
    if not apZ_2 then
        return false
    end
    local ap_ = tonumber(apZ_2.Cost)
    local ap__1
    local ap0 = not ap_ or not acS(rr, apZ_2.RequiredIsland) or aar("Gems") < ap_
    if ap0 then
        return false
    end
    apZ_3, ap__1 = ab3(fns.aJS_41, "BuyDoubleJumpUpgrade", apY_3)
    if apZ_3 and ap__1 == true then
        local aNE = fns.aJS_15
        aNE.Purchased = aNE.Purchased + 1
        fns.aJS_4("Bought double jump " .. apY_3)
        return true
    end
    return false
end
function fns.fn2506()
    if not aJS_88.HasUpgrades() then
        return
    end
    local ajl = {}
    for k, v in pairs(aax.RNGUpgrades) do
        local ajm = type(k) == "string" and type(v) == "table" and tonumber(v.MaxLevel)
        if ajm then
            local insert = table.insert
            local ajn = type(v.Title) == "string" and v.Title ~= "" and v.Title
            local ajo = ajn or fns.aJS_12(k)
            local ajn_1 = tonumber(v.Order) or math.huge
            insert(ajl, { id = k, name = ajo, order = ajn_1 })
        end
    end
    table.sort(ajl, function(iJ, iK)
        if iJ.order ~= iK.order then
            return iJ.order < iK.order
        end
        return iJ.id < iK.id
    end)
    for i, v in ipairs(ajl) do
        local ajl_1 = v.name
        if acJ[ajl_1] then
            ajl_1 = ("%s [%s]"):format(v.name, v.id)
        end
        acJ[ajl_1] = v.id
        table.insert(acV, ajl_1)
    end
end
function fns.fn2538()
    return require(abe(Z4, "MasteryFrontend"))
end
function fns.fn2541()
    local aCS, aCT, aCU, aCV, aCW, aCX
    local aCR_1
    local aCQ_1
    local aCP = not fns.aJS_15.AutoEquipEnchants
    local aC0 = if aCP then 1 else 0
    local aCZ = 1640 * aC0 + 3595 * (1 - aC0)
    local aC_ = 6 * aC0 + 1317 * (1 - aC0)
    if not ((aCZ * 1480 + aC_ * 2247 + aCZ * aC_) % 16777213 == 2450522) then
        aCP = not aJS_88.HasEnchants()
    end
    if aCP then
        return
    end
    local aCP_1 = fns.aJS_52()
    if not aCP_1 then
        return
    end
    if acs(aCP_1) == nil then
        fns.aJS_4("Enchant slots are full")
        return
    end
    aCQ_1, aCR_1 = aJS_88.EnchantLabels()
    local aC2 = false
    for i, v in ipairs(aCQ_1) do
        local aC1 = 14
        while true do
            if aC1 < 16 then
                if aC1 < 8 then
                    if aC1 < 4 then
                        if aC1 < 2 then
                            if aC1 < 1 then
                                aCT, aCS = pcall(aJS_88.Enchants.GetAvailableAmount, aCQ_1)
                                aC1 = 20
                            else
                                aCV = (tonumber(aCS))
                                aC1 = if aCV then 2 else 26
                            end
                        elseif aC1 < 3 then
                            aCU = aCV > 0
                            aC1 = 9
                        else
                            aCX = aCW
                            aC1 = 30
                        end
                    elseif aC1 < 6 then
                        if aC1 < 5 then
                            aC2 = true
                            aC1 = 16
                        else
                            aC1 = 17
                        end
                    elseif aC1 < 7 then
                        return
                    else
                        aC1 = 16
                    end
                elseif aC1 < 12 then
                    if aC1 < 10 then
                        if aC1 < 9 then
                            return
                        end
                        aC1 = if aCU then 23 else 19
                    elseif aC1 < 11 then
                        aCQ_1 = aCR_1[v]
                        aCS = aCQ_1
                        aC1 = if aCS then 15 else 28
                    else
                        aCQ_1 = not fns.aJS_15.AutoEquipEnchants
                        aC1 = 21
                    end
                elseif aC1 < 14 then
                    if aC1 < 13 then
                        aCU = not fns.aJS_15.AutoEquipEnchants
                        aC1 = 25
                    else
                        return
                    end
                elseif aC1 < 15 then
                    aCQ_1 = not ZV()
                    aC1 = if aCQ_1 then 21 else 11
                else
                    aCS = fns.aJS_15.EnchantTargets[aCQ_1]
                    aC1 = 28
                end
            elseif aC1 < 24 then
                if aC1 < 20 then
                    if aC1 < 18 then
                        if aC1 < 17 then
                            break
                        end
                        aC1 = 7
                    elseif aC1 < 19 then
                        aCT, aCS = pcall(aJS_88.Enchants.GetAvailableAmount, aCQ_1)
                        aC1 = 22
                    else
                        aC1 = if aCU then 24 else 5
                    end
                elseif aC1 < 22 then
                    if aC1 < 21 then
                        aC1 = 22
                    else
                        aC1 = if aCQ_1 then 8 else 10
                    end
                elseif aC1 < 23 then
                    aC1 = 31
                else
                    aCU = acs(aCP_1) ~= nil
                    aC1 = 19
                end
            elseif aC1 < 28 then
                if aC1 < 26 then
                    if aC1 < 25 then
                        aCU = not ZV()
                        aC1 = if aCU then 25 else 12
                    else
                        aC1 = if aCU then 13 else 27
                    end
                elseif aC1 < 27 then
                    aCV = 0
                    aC1 = 2
                else
                    fns.aJS_4("Equipping " .. v)
                    aCU, aCV = pcall(aJS_88.Enchants.Equip, aCQ_1)
                    aCW = aCV ~= true
                    aCX = not aCU
                    aC1 = if aCX then 30 else 3
                end
            elseif aC1 < 30 then
                if aC1 < 29 then
                    aC1 = if aCS then 18 else 7
                else
                    local aNJ = fns.aJS_15
                    aNJ.Enchants = aNJ.Enchants + 1
                    task.wait(0.3)
                    aCP_1 = fns.aJS_52()
                    aC1 = if not aCP_1 then 6 else 0
                end
            elseif aC1 < 31 then
                aC1 = if aCX then 32 else 29
            elseif aC1 < 32 then
                aCU = aCT
                aC1 = if aCU then 1 else 9
            else
                aC1 = 17
            end
        end
        if aC2 then
            break
        end
    end
end
function fns.fn2543(Gl)
    fns.aJS_15.AutoClaimRngRewards = Gl == true
    local aCt = fns.aJS_15.AutoClaimRngRewards
    if aCt then
        local aCu = aJS_88.HasLuckReward() or aJS_88.HasWheel()
        aCt = aCu
    end
    if aCt then
        aah("rngrewards", fns.aJS_27.RNG_REWARD_INTERVAL, abG)
    else
        aaU("rngrewards")
    end
end
function fns.fn2550()
    local aeT = aaT ~= nil and acH ~= nil and aJS_73(acH.GetOrderedAchievements) and aJS_73(acH.IsClaimable)
    return aeT
end
function fns.fn2608(AO, AP)
    local axl = type(AO.Items) == "table" and AO.Items
    local axm = {}
    local axn = axl
    local axs = if axn then 1 else 0
    local axq = 2208 * axs + 1631 * (1 - axs)
    local axr = 1482 * axs + 2632 * (1 - axs)
    if not ((axq * 218 + axr * 4071 + axq * axr) % 16777213 == 9786822) then
        axn = axm
    end
    local axl_1 = axn
    for i, v in ipairs(AP.Ingredients) do
        local axm_1 = tostring(v.ItemId)
        local axn_1 = tonumber(v.Tier) or 1
        local axo = ("%s_%d"):format(axm_1, axn_1)
        local axm_2 = tonumber(axl_1[axo]) or 0
        local axn_2 = tonumber(v.Amount) or 0
        if axm_2 < axn_2 then
            return false
        end
    end
    return true
end
function fns.fn2615()
    local azG = fns.aJS_15.WebhookBatches or 0
    fns.aJS_15.WebhookBatches = azG + 1
    if #ZG.Batch == 0 then
        return
    end
    local Batch = ZG.Batch
    ZG.Batch = {}
    ZG.Queued(ZG.BatchPayload(Batch))
end
function fns.fn2616()
    local aAE_1
    local aAD = not aJS_88.Minigames or not aJS_73(aJS_88.Minigames.Active)
    local aAD_1
    if aAD then
        return false
    end
    aAD_1, aAE_1 = pcall(aJS_88.Minigames.Active)
    local aAF = aAD_1 and type(aAE_1) == "table" and aAE_1.Name == aa2
    return aAF
end
function fns.fn2627()
    local afk = fns.aJS_46 ~= nil and fns.aJS_53 ~= nil and fns.aJS_53:FindFirstChild("Directory") ~= nil and fns.aJS_53.Directory:FindFirstChild("Merchants") ~= nil
    return afk
end
function fns.fn2637()
    if not abi() then
        return
    end
    local aiE = {}
    for i, child in ipairs(fns.aJS_53.Directory.Breakables:GetChildren()) do
        local Name = child.Name
        table.insert(aiE, { id = Name, name = fns.aJS_12(Name) })
    end
    table.sort(aiE, function(hO, hP)
        if hO.name ~= hP.name then
            return hO.name < hP.name
        end
        return hO.id < hP.id
    end)
    for i, v in ipairs(aiE) do
        local aiE_1 = v.name
        if fns.aJS_17[aiE_1] then
            aiE_1 = ("%s [%s]"):format(v.name, v.id)
        end
        fns.aJS_17[aiE_1] = v.id
        table.insert(aJS_104, aiE_1)
    end
end
function fns.fn2647(b5)
    local aeh_1
    local aeg = not ab5 or not aJS_73(ab5.Get)
    local aeg_1
    if aeg then
        return 0
    end
    aeg_1, aeh_1 = pcall(ab5.Get, b5)
    local aei = aeg_1 and tonumber(aeh_1)
    return aei or 0
end
function fns.fn2672()
    if aJS_88.HasSkillTree() then
        task.spawn(aci)
    end
end
function fns.fn2685()
    local aBj = aaj - Workspace:GetServerTimeNow()
    if aBj > 0 then
        return math.min(aBj + 0.05, 10)
    end
    return fns.aJS_27.ROLL_INTERVAL
end
function fns.fn2691()
    if aaQ() then
        task.spawn(aJS_108)
    end
end
function fns.fn2701()
    local ajD = not aax or type(aax.Items) ~= "table"
    if ajD then
        return
    end
    local ajD_1 = {}
    for k, v in pairs(aax.Items) do
        local ajE = type(k) == "string" and type(v) == "table" and v.Category == "Enchants" and type(v.Tiers) == "table"
        if ajE then
            local ajE_1 = type(v.Name) == "string" and v.Name ~= "" and v.Name
            local ajF = ajE_1 or fns.aJS_12(k)
            local ajE_2 = {}
            for k in pairs(v.Tiers) do
                if tonumber(k) then
                    table.insert(ajE_2, tonumber(k))
                end
            end
            table.sort(ajE_2)
            for i, v in ipairs(ajE_2) do
                table.insert(ajD_1, { key = ("%s_%d"):format(k, v), name = ajF, tier = v })
            end
        end
    end
    table.sort(ajD_1, function(i4, i5)
        if i4.name ~= i5.name then
            return i4.name < i5.name
        end
        return i4.tier < i5.tier
    end)
    for i, v in ipairs(ajD_1) do
        local ajD_2 = ("%s (Tier %d)"):format(v.name, v.tier)
        if not acl[ajD_2] then
            acl[ajD_2] = v.key
            table.insert(acx, ajD_2)
        end
    end
end
function fns.fn2714()
    return require(abe(Z4, "ClickFrontend"))
end
function fns.fn2717(hh)
    if type(hh) ~= "table" then
        return
    end
    local ah7 = tostring(hh.Type)
    if ah7 == "PotionTierRange" then
        local floor = math.floor
        local ah9_1 = tonumber(hh.MinTier) or 1
        local aia_1 = floor(ah9_1)
        local ah9_2 = tonumber(hh.MaxTier) or aia_1
        local aib = floor(ah9_2)
        local aic = aax and aax.Items or {}
        for k, v in pairs(aic) do
            local ah8_3 = type(k) == "string" and type(v) == "table" and v.Category == "Boosts" and type(v.Tiers) == "table"
            if ah8_3 then
                local aim = aia_1
                while aim <= aib do
                    local ain = aim
                    if v.Tiers[ain] then
                        abI("Item", k, ain)
                    end
                    aim += 1
                end
            end
        end
    elseif ah7 == "AnyFruit" then
        local aia_2 = aax and aax.Items or {}
        for k, v in pairs(aia_2) do
            local ah8_5 = type(k) == "string" and type(v) == "table" and v.Category == "Fruits"
            if ah8_5 then
                abI("Item", k, 1)
            end
        end
    else
        local ah8_6 = ah7 == "SpecificItems" and type(hh.ItemIds) == "table"
        if ah8_6 then
            for i, v in ipairs(hh.ItemIds) do
                local ah8_7 = tonumber(hh.Tier) or 1
                abI("Item", v, ah8_7)
            end
        else
            local ah8_8 = ah7 == "SpecificPets" and type(hh.PetIds) == "table"
            if ah8_8 then
                for i, v in ipairs(hh.PetIds) do
                    abI("Pet", v, nil)
                end
            end
        end
    end
end
function fns.fn2731(l1, l2)
    local amm_1
    local aml_1
    aml_1, amm_1 = {}, {}
    local amo = l1.Pets or {}
    for k, v in pairs(amo) do
        local amn_1 = v.id == l2 and fns.aJS_14(v)
        if amn_1 then
            if v.Shiny == true then
                table.insert(amm_1, k)
            else
                table.insert(aml_1, k)
            end
        end
    end
    return aml_1, amm_1
end
function fns.fn2737()
    local aeR = abj ~= nil and aae ~= nil and aax ~= nil and type(aax.Quests) == "table"
    return aeR
end
function fns.fn2765()
    local MAP = Workspace:FindFirstChild("_MAP")
    local agm = MAP and MAP:FindFirstChild("Islands")
    if not agm then
        return
    end
    local agm_1 = {}
    for i, child in ipairs(agm:GetChildren()) do
        local agl_2 = fns.aJS_8(child)
        if agl_2 then
            local ago = aax and aax.Islands and aax.Islands[child.Name] or nil
            local insert = table.insert
            local Name = child.Name
            local agq = ago and tonumber(ago.IslandNumber)
            local agr = agq or math.huge
            local agq_1 = ago and type(ago.Name) == "string" and ago.Name ~= "" and ago.Name
            local agn_2 = agq_1 or child.Name
            insert(agm_1, { id = Name, part = agl_2, order = agr, name = agn_2 })
        end
    end
    table.sort(agm_1, function(fm, fo)
        if fm.order ~= fo.order then
            return fm.order < fo.order
        end
        return fm.id < fo.id
    end)
    for i, v in ipairs(agm_1) do
        local agl_3 = v.name
        if fns.aJS_55[agl_3] then
            agl_3 = agl_3 .. " [" .. v.id .. "]"
        end
        fns.aJS_55[agl_3] = v.id
        table.insert(aJS_66, agl_3)
    end
end
function fns.fn2795()
    local afF = aJS_88.WheelChannel ~= nil and aJS_88.Flag("SpinWheels") and aJS_88.Flag("SpinWheelFreeSpins")
    return afF
end
function fns.fn2797()
    if aJS_88.HasEnchants() then
        task.spawn(aa4)
    end
end
function fns.fn2818(k7)
    local alU = {}
    if type(k7) == "table" then
        for k, v in pairs(k7) do
            local alV = type(v) == "string" and v
            local alW_1 = alV or (v == true and k or nil)
            local alW_2 = type(alW_1) == "string" and ZF[alW_1]
            if alW_2 then
                alU[alW_1] = true
            end
        end
    end
    fns.aJS_15.MerchantTargets = alU
end
function fns.fn2831()
    local avR_1
    local avQ_1
    local avL = not fns.aJS_15.AutoDarkMatter or not abT()
    if avL then
        return
    end
    local avL_1 = fns.aJS_52()
    if not avL_1 then
        return
    end
    local avM = false
    for i, v in ipairs(aJS_79) do
        local avN = not ZV() or not fns.aJS_15.AutoDarkMatter
        local avN_3
        if avN then
            return
        end
        local avN_1 = fns.aJS_9[v]
        if avN_1 and fns.aJS_15.DarkMatterPets[avN_1] then
            local avO_1 = Z3(avL_1, avN_1)
            if avO_1 then
                local avN_2 = {}
                for i, v in ipairs(avO_1) do
                    avN_2[v] = true
                end
                local avP = abx(avL_1, avN_2)
                if avP then
                    fns.aJS_4("Dark Matter " .. v)
                    avQ_1, avN_3, avR_1 = ab3(aJS_72, "CraftDarkMatter", avO_1, avP)
                    if avQ_1 and avN_3 == true then
                        local aN0 = fns.aJS_15
                        aN0.DarkMatters = aN0.DarkMatters + 1
                        task.wait(0.5)
                        return
                    end
                    if avQ_1 and avR_1 then
                        fns.aJS_4(tostring(avR_1):sub(1, 60))
                    end
                else
                    avM = true
                end
            end
        end
    end
    if avM then
        fns.aJS_4("Dark Matter: not enough points")
    end
end
function fns.fn2837()
    return aJS_103
end
function fns.fn2839(hF)
    return (tostring(hF):gsub("(%l)(%u)", "%1 %2"))
end
function fns.fn2847()
    local auX = fns.aJS_15.AutoRainbow or fns.aJS_15.AutoClaimRainbow
    local auY = auX and acw()
    if auY then
        aah("rainbow", fns.aJS_27.RAINBOW_INTERVAL, aJS_93)
    else
        aaU("rainbow")
    end
end
function fns.fn2856(lv)
    fns.aJS_15.CraftRecipes = fns.aJS_37(lv, aJS_82)
end
function fns.fn2860()
    local aeM = fns.aJS_6 ~= nil and ZK ~= nil and type(ZK.Rebirths) == "table" and Z7 ~= nil and type(Z7.Rebirths) == "table" and aJS_73(Z7.Rebirths.GetCost)
    return aeM
end
function fns.fn2874()
    local ae5 = aJS_72 ~= nil and aax ~= nil and type(aax.Pets) == "table"
    return ae5 and ZK ~= nil
end
function fns.fn2877()
    return ("%s  |  Clicker Simulator"):format(LocalPlayer.Name)
end
function fns.fn2890(bo)
    local ad8_1
    local ad7 = not ZJ or not aJS_73(ZJ.Channel)
    local ad7_1
    if ad7 then
        return nil
    end
    ad7_1, ad8_1 = pcall(ZJ.Channel, bo)
    local ad9 = ad7_1 and type(ad8_1) == "table"
    if ad9 then
        return ad8_1
    end
    return nil
end
function fns.fn2899(ch, ci, ...)
    if not ch then
        return false, nil
    end
    local aem = table.pack(pcall(ch.InvokeServer, ch, ci, ...))
    if not aem[1] then
        return false, nil
    end
    return true, aem[2], aem[3]
end
function fns.fn2943()
    local ayb = fns.aJS_15.AutoCraftItems or fns.aJS_15.AutoClaimCrafts
    local ayc = ayb and fns.aJS_49()
    if ayc then
        aah("crafting", fns.aJS_27.CRAFT_INTERVAL, fns.aJS_56)
    else
        aaU("crafting")
    end
end
function fns.fn2945()
    local anC = not fns.aJS_15.AutoClick or not abJ()
    if anC then
        return
    end
    fns.aJS_35(aJS_67, "Click")
end
function fns.fn2946(E4)
    fns.aJS_15.AutoEnterRngWorld = E4 == true
end
function fns.fn2953()
    return require(abe(Z4, "QuestFrontend"))
end
ZE = nil
ZF = nil
ZG = nil
ZH = nil
ZI = nil
ZJ = nil
ZK = nil
local aJS_91
aJS_70 = nil
fns.aJS_50 = nil
fns.aJS_31 = nil
fns.aJS_12 = nil
ZQ = nil
ZR = nil
ZS = nil
ZT = nil
ZU = nil
ZV = nil
aJS_101 = nil
aJS_82 = nil
aJS_61 = nil
fns.aJS_42 = nil
fns.aJS_23 = nil
fns.aJS_3 = nil
Z2 = nil
Z3 = nil
Z4 = nil
Z5 = nil
Z6 = nil
Z7 = nil
Z8 = nil
aJS_93 = nil
aJS_73 = nil
fns.aJS_53 = nil
fns.aJS_34 = nil
fns.aJS_17 = nil
aae = nil
aaf = nil
aag = nil
aah = nil
aai = nil
aaj = nil
aak = nil
aJS_104 = nil
aJS_85 = nil
aJS_65 = nil
fns.aJS_46 = nil
fns.aJS_28 = nil
local Players, ZW
fns.aJS_7 = nil
aar = nil
aas = nil
aau = nil
aav = nil
aaw = nil
aax = nil
aJS_98 = nil
aJS_78 = nil
aJS_58 = nil
fns.aJS_39 = nil
fns.aJS_20 = nil
aaD = nil
aaE = nil
aaF = nil
aaG = nil
aaH = nil
aaI = nil
aaJ = nil
aJS_108 = nil
aJS_88 = nil
aJS_68 = nil
fns.aJS_49 = nil
fns.aJS_29 = nil
fns.aJS_11 = nil
aaQ = nil
aaR = nil
aaS = nil
aaT = nil
aaU = nil
aaV = nil
aaW = nil
aJS_81 = nil
aJS_60 = nil
fns.aJS_41 = nil
fns.aJS_22 = nil
fns.aJS_2 = nil
aa2 = nil
aa3 = nil
aa4 = nil
aa5 = nil
Play = nil
aa7 = nil
aa8 = nil
aJS_92 = nil
aJS_72 = nil
fns.aJS_52 = nil
fns.aJS_33 = nil
local aat, aaX
fns.aJS_14 = nil
abe = nil
abf = nil
abg = nil
abh = nil
abi = nil
abj = nil
LocalPlayer = nil
aJS_103 = nil
aJS_84 = nil
aJS_64 = nil
fns.aJS_45 = nil
fns.aJS_26 = nil
fns.aJS_6 = nil
Workspace = nil
abt = nil
abv = nil
abw = nil
abx = nil
aJS_96 = nil
aJS_76 = nil
fns.aJS_56 = nil
fns.aJS_37 = nil
fns.aJS_18 = nil
abD = nil
abF = nil
abG = nil
abH = nil
abI = nil
abJ = nil
aJS_106 = nil
aJS_87 = nil
aJS_67 = nil
fns.aJS_9 = nil
abQ = nil
abR = nil
abS = nil
abT = nil
abU = nil
CoreGui = nil
abW = nil
aJS_99 = nil
aJS_79 = nil
aJS_59 = nil
fns.aJS_40 = nil
local abr, abu, Lighting, abN, TeleportService
fns.aJS_21 = nil
ab2 = nil
ab3 = nil
ab4 = nil
ab5 = nil
ab7 = nil
HttpService = nil
aJS_90 = nil
aJS_71 = nil
fns.aJS_51 = nil
fns.aJS_32 = nil
acg = nil
aci = nil
acj = nil
ack = nil
acl = nil
aJS_62 = nil
fns.aJS_44 = nil
fns.aJS_24 = nil
fns.aJS_4 = nil
acs = nil
act = nil
acu = nil
acv = nil
acw = nil
acx = nil
aJS_94 = nil
aJS_75 = nil
fns.aJS_55 = nil
fns.aJS_35 = nil
fns.aJS_15 = nil
acE = nil
acF = nil
acG = nil
acH = nil
acI = nil
acJ = nil
acK = nil
aJS_105 = nil
aJS_86 = nil
aJS_66 = nil
fns.aJS_47 = nil
local GuiService, ab6, VirtualUser, ach, acm, acn, acy
fns.aJS_27 = nil
fns.aJS_8 = nil
acR = nil
acS = nil
acT = nil
acU = nil
acV = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, acy, acm, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, aJS_110, fns.aJS_22 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if not TeleportService and not HttpService or not TeleportService and TeleportService or (not TeleportService or Lighting) and (HttpService and not aJS_110) or not (not TeleportService and not HttpService or not TeleportService and TeleportService or (not TeleportService or Lighting) and (HttpService and not aJS_110)) then
    aJS_97 = game:GetService("ReplicatedStorage")
    acy = game:GetService("RunService")
    acm = game:GetService("UserInputService")
else
    acy = game:GetService("ReplicatedStorage")
    acm = game:GetService("RunService")
    aJS_97 = game:GetService("UserInputService")
end
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
aJS_110 = "OuroborosClickerSimulator"
fns.aJS_22 = fns.fn1589
if getgenv then
    getgenv().gethui = fns.aJS_22
end
aaF, ZI, fns.aJS_27, fns.aJS_15, fns.aJS_53, Z4, ZJ, act, ab5, aJS_106, abg, fns.aJS_11, aaD, aae, ZQ, acH, fns.aJS_32, aJS_88, aax, Z7, ZK, aJS_67, fns.aJS_18, fns.aJS_6, abj, aJS_72, fns.aJS_41, aaT, aJS_68, aaH, aaE, aJS_98, fns.aJS_46, aai, Z8, fns.aJS_3, ZT, aJS_77, abu, fns.aJS_13, aJS_73, ZV, fns.aJS_4, aJS_59, abe, fns.aJS_38 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local aJS_57 = 162
repeat
    fns.aJS_19 = (aJS_57 * 22 + 14) % 23 + 1
    if fns.aJS_19 <= 12 then
        if fns.aJS_19 <= 6 then
            if fns.aJS_19 <= 3 then
                if fns.aJS_19 <= 2 then
                    if fns.aJS_19 <= 1 then
                        local aQb = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 12), string.byte(tostring(abg))), 14)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(aQb, 1579410367), 2), 2022674173) == bit32.lrotate(aQb, 2) then
                            aJS_106 = aJS_59(fns.fn2714)
                            abg = aJS_59(fns.fn119)
                            fns.aJS_11 = aJS_59(fns.fn865)
                        else
                            aJS_59 = aJS_106(fns.fn2714)
                            fns.aJS_11 = aJS_106(fns.fn119)
                            abg = aJS_106(fns.fn865)
                        end
                        aJS_57 = (aJS_57 + 68) % 184
                    else
                        fns.aJS_1 = { "gvphg", "xqjz", "qnrmxl", "vdrqodvnfd", "cihexl", "hkxgewnyodu", "awtbddpeti", "cmha" }
                        if fns.aJS_1[(aJS_57 * 33 + 39) % 8 + 1] < fns.aJS_1[(aJS_57 * 33 + 39) % 8 + 1] then
                            aae = aaD(fns.fn2154)
                            aJS_59 = aaD(fns.fn2953)
                        else
                            aaD = aJS_59(fns.fn2154)
                            aae = aJS_59(fns.fn2953)
                        end
                        aJS_57 = (aJS_57 + 137) % 184
                    end
                else
                    local aPw = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 13), string.byte(tostring(aJS_88))), 9)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aPw, 3261152785), 3801118320), (bit32.bxor(bit32.band(aPw, 1033814510), 2853081798))), 3801118320), 2853081798) ~= aPw then
                        aJS_59 = fns.aJS_32(fns.fn2538)
                        ZQ = fns.aJS_32(fns.fn1181)
                        acH = fns.aJS_32(fns.fn1080)
                    else
                        ZQ = aJS_59(fns.fn2538)
                        acH = aJS_59(fns.fn1181)
                        fns.aJS_32 = aJS_59(fns.fn1080)
                    end
                    aJS_57 = (aJS_57 + 114) % 184
                end
            elseif fns.aJS_19 <= 5 then
                if fns.aJS_19 <= 4 then
                    if (aJS_57 * 2 + 3) * 4 % 3 == ((aJS_57 * 2 + 3) * 4 + 6) % 3 then
                        aJS_88 = {
                            Minigames = aJS_59(fns.fn1466),
                            Enchants = aJS_59(fns.fn2126),
                            FFlags = aJS_59(fns.fn44),
                            SkillTree = aJS_59(fns.fn567),
                            SkillTreeUtil = aJS_59(fns.fn647)
                        }
                    else
                        aJS_59 = {
                            SkillTree = aJS_88(fns.fn567),
                            FFlags = aJS_88(fns.fn44),
                            Minigames = aJS_88(fns.fn1466),
                            SkillTreeUtil = aJS_88(fns.fn647),
                            Enchants = aJS_88(fns.fn2126)
                        }
                    end
                    aJS_57 = (aJS_57 + 45) % 184
                else
                    local aPS = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 29), string.byte(tostring(abe))), 7)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(aPS, 2694333166), 24), 4003502146) == bit32.lrotate(aPS, 24) then
                        aax = aJS_59(fns.fn1573)
                        Z7 = aJS_59(fns.fn1203)
                        ZK = aJS_59(fns.fn780)
                    else
                        aJS_59 = ZK(fns.fn1573)
                        aax = ZK(fns.fn1203)
                        Z7 = ZK(fns.fn780)
                    end
                    aJS_57 = (aJS_57 + 160) % 184
                end
            else
                fns.aJS_1 = (vector.create((aJS_57 * 1 + 2) % 11 + 1, (aJS_57 * 5 + 13) % 13 + 1, (aJS_57 * 10 + 5) % 17 + 1))
                aJS_102 = (vector.create((aJS_57 * 2 + 8) % 11 + 1, (aJS_57 * 4 + 5) % 13 + 1, (aJS_57 * 8 + 11) % 17 + 1))
                local aQt = vector.cross(fns.aJS_1, aJS_102)
                local aQu = vector.dot(fns.aJS_1, aJS_102)
                if vector.dot(aQt, aQt) + aQu * aQu == vector.dot(fns.aJS_1, fns.aJS_1) * vector.dot(aJS_102, aJS_102) + 4 then
                    fns.aJS_18 = fns.fn2890
                else
                    fns.aJS_38 = fns.fn2890
                end
                aJS_57 = (aJS_57 + 68) % 184
            end
        elseif fns.aJS_19 <= 9 then
            if fns.aJS_19 <= 8 then
                if fns.aJS_19 <= 7 then
                    local aPV = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 20), string.byte(tostring(aaF))), 17)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(aPV, 3537762240), 20), 2081238495) == bit32.lrotate(aPV, 20) then
                        aJS_67 = fns.aJS_38("Click")
                        fns.aJS_18 = fns.aJS_38("Egg")
                        fns.aJS_6 = fns.aJS_38("Rebirths")
                    else
                        fns.aJS_6 = aJS_67("Click")
                        fns.aJS_38 = aJS_67("Egg")
                        fns.aJS_18 = aJS_67("Rebirths")
                    end
                    aJS_57 = (aJS_57 + 91) % 184
                else
                    fns.aJS_1 = {
                        "mgsj",
                        "mvn",
                        "yubsapaah",
                        "xzsqhelnz",
                        "ptxumcxk",
                        "afihfmsfgj",
                        "ugv",
                        "zavjcdb",
                        "aaqbkwp",
                        "kgzwxsdupgw",
                        "lid",
                        "rmgfuw"
                    }
                    local aOd = aJS_57
                    aJS_102 = fns.aJS_1[aOd % 12 + 1]
                    if aJS_102:len() >= aJS_102:gsub("(.)", "%1%1", aOd % 3 % 2 + 1):len() then
                        fns.aJS_38 = abj("Quest")
                    else
                        abj = fns.aJS_38("Quest")
                    end
                    aJS_57 = (aJS_57 + 45) % 184
                end
            else
                local aR5 = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 25), string.byte(tostring(aaE))), 7)
                if bit32.bxor(bit32.lrotate(bit32.bxor(aR5, 1312597166), 4), 3821685476) == bit32.lrotate(aR5, 4) then
                    aJS_72 = fns.aJS_38("Pets")
                    fns.aJS_41 = fns.aJS_38("RebirthShop")
                    aaT = fns.aJS_38("Achievements")
                    aJS_68 = fns.aJS_38("Portals")
                else
                    aaT = aJS_68("Pets")
                    fns.aJS_38 = aJS_68("RebirthShop")
                    fns.aJS_41 = aJS_68("Achievements")
                    aJS_72 = aJS_68("Portals")
                end
                aJS_57 = (aJS_57 + 22) % 184
            end
        elseif fns.aJS_19 <= 11 then
            if fns.aJS_19 <= 10 then
                if (aJS_57 * 2 + 2) * 16 % 3 == ((aJS_57 * 2 + 2) * 16 + 0) % 3 then
                    aaH = fns.aJS_38("Codes")
                    aaE = fns.aJS_38("FreeGifts")
                    aJS_98 = fns.aJS_38("Items")
                else
                    fns.aJS_38 = aaH("Codes")
                    aJS_98 = aaH("FreeGifts")
                    aaE = aaH("Items")
                end
                aJS_57 = (aJS_57 + 22) % 184
            else
                fns.aJS_1 = {
                    "yyomdbqllzsd",
                    "nngk",
                    "wieagvfrkalm",
                    "qtgctagx",
                    "pyhphi",
                    "aydk",
                    "ccu",
                    "zywcynbkmsiv",
                    "fqvkdks",
                    "evuyod",
                    "eemktehnsh",
                    "qtxlebkjlm",
                    "czxyqvkym"
                }
                if fns.aJS_1[(aJS_57 * 72 + 34) % 13 + 1] <= fns.aJS_1[(aJS_57 * 72 + 34) % 13 + 1] then
                    fns.aJS_46 = fns.aJS_38("Merchant")
                    aai = fns.aJS_38("SummerEvent2026")
                    Z8 = fns.aJS_38("Breakables")
                else
                    fns.aJS_38 = Z8("Merchant")
                    fns.aJS_46 = Z8("SummerEvent2026")
                    aai = Z8("Breakables")
                end
                aJS_57 = (aJS_57 + 160) % 184
            end
        else
            fns.aJS_1 = {
                "jsokwu",
                "tksnqyedwz",
                "mcydkzskli",
                "feejzcgfuji",
                "iqfbguwnbg",
                "inztnkemahsv",
                "eqb",
                "grmwtbbeqalf",
                "avfwq",
                "fvuvrllz",
                "vbzynhsvg",
                "dmpkxfeoyzyl",
                "ethnpff",
                "airlkbfbn",
                "zegvkkrpjap"
            }
            if fns.aJS_1[(aJS_57 * 54 + 102) % 15 + 1] < fns.aJS_1[(aJS_57 * 54 + 102) % 15 + 1] then
                fns.aJS_38 = fns.aJS_3("PotionCrafting")
                ZT.RollChannel = fns.aJS_3("RNG")
                ZT.UpgradeChannel = fns.aJS_3("RNGUpgrades")
                ZT.MinigameChannel = fns.aJS_3("Minigames")
                ZT.WheelChannel = fns.aJS_3("SpinWheelTimeRewards")
                ZT.LuckRewardChannel = fns.aJS_3("x2LuckReward")
                ZT.EnchantChannel = fns.aJS_3("PlayerEnchants")
                ZT.SkillTreeChannel = fns.aJS_3("SkillTree")
                ZT.RebirthChannel = fns.aJS_3("RNG2Rebirths")
                aJS_88 = {
                    { id = "Grand Chest", channel = fns.aJS_3("GrandChest") },
                    { id = "Beach Chest", channel = fns.aJS_3("BeachChest") },
                    { id = "Hell Chest", channel = fns.aJS_3("HellChest") }
                }
            else
                fns.aJS_3 = fns.aJS_38("PotionCrafting")
                aJS_88.RollChannel = fns.aJS_38("RNG")
                aJS_88.UpgradeChannel = fns.aJS_38("RNGUpgrades")
                aJS_88.MinigameChannel = fns.aJS_38("Minigames")
                aJS_88.WheelChannel = fns.aJS_38("SpinWheelTimeRewards")
                aJS_88.LuckRewardChannel = fns.aJS_38("x2LuckReward")
                aJS_88.EnchantChannel = fns.aJS_38("PlayerEnchants")
                aJS_88.SkillTreeChannel = fns.aJS_38("SkillTree")
                aJS_88.RebirthChannel = fns.aJS_38("RNG2Rebirths")
                ZT = {
                    { id = "Grand Chest", channel = fns.aJS_38("GrandChest") },
                    { id = "Beach Chest", channel = fns.aJS_38("BeachChest") },
                    { id = "Hell Chest", channel = fns.aJS_38("HellChest") }
                }
            end
            aJS_57 = (aJS_57 + 137) % 184
        end
    elseif fns.aJS_19 <= 18 then
        if fns.aJS_19 <= 15 then
            if fns.aJS_19 <= 14 then
                if fns.aJS_19 <= 13 then
                    aJS_57 = (aJS_57 + 160) % 184
                else
                    fns.aJS_1 = (vector.create((aJS_57 * 7 + 1) % 11 + 1, (aJS_57 * 1 + 6) % 13 + 1, (aJS_57 * 1 + 13) % 17 + 1))
                    aJS_102 = (vector.create((aJS_57 * 5 + 6) % 11 + 1, (aJS_57 * 8 + 5) % 13 + 1, (aJS_57 * 6 + 5) % 17 + 1))
                    aJS_83 = (vector.create((aJS_57 * 3 + 6) % 5 + 1, (aJS_57 * 1 + 4) % 7 + 1, (aJS_57 * 3 + 6) % 9 + 1))
                    if math.abs((vector.angle(fns.aJS_1, aJS_102, aJS_83))) - math.abs((vector.angle(aJS_102, fns.aJS_1, aJS_83))) == 3 then
                        pcall(fns.fn1934)
                        aJS_72 = function(t)
                            local adB
                            local adD
                            local adC
                            adB = nil
                            adC = nil
                            adD = nil
                            local adE = t ~= ""
                            local adF = type(t) == "string" and adE
                            assert(adF, "A namespace is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            adB = getgenv()
                            assert(type(adB) == "table", "getgenv did not return a table")
                            local adE_2 = adB[t]
                            if adE_2 ~= nil then
                                local adF_2 = type(adE_2) == "table" and type(adE_2.Unload) == "function"
                                assert(adF_2, "Namespace is occupied")
                                adE_2.Unload()
                                assert(adB[t] == nil, "Previous instance did not release its namespace")
                            end
                            adC = {}
                            adD = { State = {}, Unloaded = false }
                            adD.Track = function(z)
                                assert(type(z) == "function", "Cleanup must be callable")
                                if adD.Unloaded then
                                    z()
                                else
                                    table.insert(adC, z)
                                end
                                return z
                            end
                            adD.Unload = function()
                                local adr_2
                                local adq_2
                                if adD.Unloaded then
                                    return
                                end
                                adD.Unloaded = true
                                local ado = {}
                                local adv = #adC
                                local adu = -1
                                while false and adv <= 1 or true and adv >= 1 do
                                    local adw = adv
                                    local adp_2 = table.remove(adC, adw)
                                    adq_2, adr_2 = pcall(adp_2)
                                    if not adq_2 then
                                        table.insert(ado, tostring(adr_2))
                                    end
                                    adv += adu
                                end
                                table.clear(adD.State)
                                if #ado > 0 then
                                    error("Cleanup incomplete: " .. table.concat(ado, "; "), 0)
                                end
                                if adB[t] == adD then
                                    adB[t] = nil
                                end
                            end
                            adB[t] = adD
                            return adD
                        end
                    else
                        pcall(fns.fn1934)
                        aJS_77 = function(t)
                            local adB
                            local adD
                            local adC
                            adB = nil
                            adC = nil
                            adD = nil
                            local adE = t ~= ""
                            local adF = type(t) == "string" and adE
                            assert(adF, "A namespace is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            adB = getgenv()
                            assert(type(adB) == "table", "getgenv did not return a table")
                            local adE_1 = adB[t]
                            if adE_1 ~= nil then
                                local adF_1 = type(adE_1) == "table" and type(adE_1.Unload) == "function"
                                assert(adF_1, "Namespace is occupied")
                                adE_1.Unload()
                                assert(adB[t] == nil, "Previous instance did not release its namespace")
                            end
                            adC = {}
                            adD = { State = {}, Unloaded = false }
                            adD.Track = function(z)
                                assert(type(z) == "function", "Cleanup must be callable")
                                if adD.Unloaded then
                                    z()
                                else
                                    table.insert(adC, z)
                                end
                                return z
                            end
                            adD.Unload = function()
                                local adr_1
                                local adq_1
                                if adD.Unloaded then
                                    return
                                end
                                adD.Unloaded = true
                                local ado = {}
                                local adv = #adC
                                local adu = -1
                                while false and adv <= 1 or true and adv >= 1 do
                                    local adw = adv
                                    local adp_1 = table.remove(adC, adw)
                                    adq_1, adr_1 = pcall(adp_1)
                                    if not adq_1 then
                                        table.insert(ado, tostring(adr_1))
                                    end
                                    adv += adu
                                end
                                table.clear(adD.State)
                                if #ado > 0 then
                                    error("Cleanup incomplete: " .. table.concat(ado, "; "), 0)
                                end
                                if adB[t] == adD then
                                    adB[t] = nil
                                end
                            end
                            adB[t] = adD
                            return adD
                        end
                    end
                    aJS_57 = (aJS_57 + 183) % 184
                end
            else
                if (aJS_57 * 3 + 4) * 9 % 4 == ((aJS_57 * 3 + 4) * 9 + 0) % 4 then
                    abu = function(M, N)
                        local adL = type(M) == "table" and type(M.Track) == "function"
                        assert(adL, "FeatureAPI required")
                        local adL_2 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(adL_2, "UI library required")
                        assert(type(N.Unload) == "function", "UI unload required")
                        M.Track(function()
                            if not N.Unloaded then
                                N:Unload()
                            end
                        end)
                        N:OnUnload(function()
                            M.Unload()
                        end)
                    end
                else
                    fns.aJS_3 = function(M, N)
                        local adL = type(M) == "table" and type(M.Track) == "function"
                        assert(adL, "FeatureAPI required")
                        local adL_1 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(adL_1, "UI library required")
                        assert(type(N.Unload) == "function", "UI unload required")
                        M.Track(function()
                            if not N.Unloaded then
                                N:Unload()
                            end
                        end)
                        N:OnUnload(function()
                            M.Unload()
                        end)
                    end
                end
                aJS_57 = (aJS_57 + 68) % 184
            end
        elseif fns.aJS_19 <= 17 then
            if fns.aJS_19 <= 16 then
                fns.aJS_1 = {
                    "oejuv",
                    "phyepxcntv",
                    "hfkoxxced",
                    "dyaw",
                    "pwklpuye",
                    "ctjci",
                    "ihzedyf",
                    "wrqf",
                    "lhmto",
                    "jiz",
                    "uirdhpkx"
                }
                local aPv = aJS_57
                aJS_102 = fns.aJS_1[aPv % 11 + 1]
                if aJS_102:len() >= aJS_102:gsub("(.)", "%1%1", aPv % 3 % 2 + 1):len() then
                    aJS_110 = aaF(aJS_77)
                else
                    aaF = aJS_77(aJS_110)
                end
                aJS_57 = (aJS_57 + 91) % 184
            else
                local aQn = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 2), string.byte(tostring(aJS_72))), 4)
                if bit32.bxor(bit32.lrotate(bit32.bxor(aQn, 229807461), 18), 1435776714) == bit32.lrotate(aQn, 18) then
                    fns.aJS_13 = fns.fn1061
                else
                    aaT = fns.fn1061
                end
                aJS_57 = (aJS_57 + 22) % 184
            end
        else
            fns.aJS_1 = {
                "ljff",
                "qbrxiczcmue",
                "gbsapng",
                "mwrimax",
                "aldgupgl",
                "vripcema",
                "xgv",
                "okzyotcdlob",
                "xbbbwvj",
                "iakkr",
                "bilnj"
            }
            if fns.aJS_1[(aJS_57 * 96 + 62) % 11 + 1] < fns.aJS_1[(aJS_57 * 96 + 62) % 11 + 1] then
                ZV = fns.fn12
                aJS_73 = fns.fn376
            else
                aJS_73 = fns.fn12
                ZV = fns.fn376
            end
            aJS_57 = (aJS_57 + 68) % 184
        end
    elseif fns.aJS_19 <= 21 then
        if fns.aJS_19 <= 20 then
            if fns.aJS_19 <= 19 then
                if aJS_57 * 92210465 + 8 + 6 <= aJS_57 * 92210465 + 8 + 6 + 5 then
                    ZI = fns.aJS_13(aJS_97)
                else
                    aJS_97 = ZI(fns.aJS_13)
                end
                aJS_57 = (aJS_57 + 45) % 184
            else
                fns.aJS_1 = {
                    "fzjnnxalj",
                    "zdxzzahbe",
                    "zikhogrzjhzx",
                    "bdgahporqazb",
                    "bdcfaokus",
                    "obxzn",
                    "tjjp",
                    "pkxp",
                    "vrqvikyvg",
                    "cqan",
                    "uwspa",
                    "plpk",
                    "bailcph"
                }
                if fns.aJS_1[(aJS_57 * 65 + 5) % 13 + 1] <= fns.aJS_1[(aJS_57 * 65 + 5) % 13 + 1] then
                    fns.aJS_27 = {
                        CLICK_INTERVAL_FLOOR = 0.096,
                        HATCH_INTERVAL = 0.35,
                        HATCH_INTERVAL_MAX = 4,
                        HATCH_TIMEOUT = 10,
                        REBIRTH_INTERVAL = 1,
                        QUEST_INTERVAL = 5,
                        EQUIP_INTERVAL = 6,
                        SHOP_INTERVAL = 8,
                        MILESTONE_INTERVAL = 5,
                        CHEST_INTERVAL = 10,
                        GIFT_INTERVAL = 15,
                        POTION_INTERVAL = 5,
                        GOLDEN_INTERVAL = 2,
                        GOLDEN_MAX_FEED = 6,
                        FISH_INTERVAL = 0.5,
                        MERCHANT_INTERVAL = 6,
                        RAINBOW_INTERVAL = 4,
                        RAINBOW_SLOTS = 3,
                        RAINBOW_MAX_FEED = 6,
                        DARK_MATTER_INTERVAL = 6,
                        DARK_MATTER_BASE = 6,
                        DARK_MATTER_POINTS = 100,
                        BREAKABLE_INTERVAL = 1,
                        BREAKABLE_CLICK_DELAY = 0.2,
                        BREAKABLE_DWELL = 20,
                        CRAFT_INTERVAL = 5,
                        CRAFT_SLOTS = 6,
                        WEBHOOK_IDLE = 1.5,
                        WEBHOOK_MAX = 6,
                        ROLL_INTERVAL = 0.2,
                        ROLL_ENTER_DELAY = 3,
                        RNG_UPGRADE_INTERVAL = 5,
                        RNG_UPGRADE_SLOTS = 3,
                        RNG_REWARD_INTERVAL = 10,
                        RNG_REBIRTH_INTERVAL = 5,
                        ENCHANT_INTERVAL = 8,
                        ENCHANT_SLOTS = 9,
                        SKILL_TREE_INTERVAL = 6,
                        SKILL_TREE_SWEEPS = 8
                    }
                    fns.aJS_15 = aaF.State
                    fns.aJS_15.AutoClick = false
                    fns.aJS_15.AutoHatch = false
                    fns.aJS_15.AutoRebirth = false
                    fns.aJS_15.AutoClaimQuests = false
                    fns.aJS_15.AutoEquipBest = false
                    fns.aJS_15.AutoBuyRebirthShop = false
                    fns.aJS_15.AutoClaimMilestones = false
                    fns.aJS_15.AutoClaimChests = false
                    fns.aJS_15.AutoGolden = false
                    fns.aJS_15.AutoClaimGifts = false
                    fns.aJS_15.AutoUsePotions = false
                    fns.aJS_15.PotionSkipActive = true
                    fns.aJS_15.RedeemingCodes = false
                    fns.aJS_15.ClicksPerSecond = 10
                    fns.aJS_15.HatchEggs = {}
                    fns.aJS_15.HatchEggCount = 0
                    fns.aJS_15.HatchAmount = "Max"
                    fns.aJS_15.HatchDelay = fns.aJS_27.HATCH_INTERVAL
                    fns.aJS_15.RebirthTarget = 0
                    fns.aJS_15.ShopTargets = {}
                    fns.aJS_15.Status = "Idle"
                    fns.aJS_15.Hatched = 0
                    fns.aJS_15.Rebirths = 0
                    fns.aJS_15.Claimed = 0
                    fns.aJS_15.Purchased = 0
                    fns.aJS_15.Milestones = 0
                    fns.aJS_15.TeleportIsland = nil
                    fns.aJS_15.TeleportNpc = nil
                    fns.aJS_15.GoldenPets = {}
                    fns.aJS_15.GoldenUse = fns.aJS_27.GOLDEN_MAX_FEED
                    fns.aJS_15.Chests = 0
                    fns.aJS_15.Goldens = 0
                    fns.aJS_15.Gifts = 0
                    fns.aJS_15.Codes = 0
                    fns.aJS_15.Potions = 0
                    fns.aJS_15.PotionKeys = {}
                    fns.aJS_15.AutoBuyMerchant = false
                    fns.aJS_15.MerchantTargets = {}
                    fns.aJS_15.MerchantBuys = 0
                    fns.aJS_15.AutoFish = false
                    fns.aJS_15.Fish = 0
                    fns.aJS_15.AutoRainbow = false
                    fns.aJS_15.RainbowPets = {}
                    fns.aJS_15.RainbowUse = fns.aJS_27.RAINBOW_MAX_FEED
                    fns.aJS_15.AutoClaimRainbow = true
                    fns.aJS_15.Rainbows = 0
                    fns.aJS_15.AutoDarkMatter = false
                    fns.aJS_15.DarkMatterPets = {}
                    fns.aJS_15.DarkMatters = 0
                    fns.aJS_15.AutoBreakables = false
                    fns.aJS_15.BreakableTargets = {}
                    fns.aJS_15.Breaks = 0
                    fns.aJS_15.WebhookSent = 0
                    fns.aJS_15.WebhookFailed = 0
                    fns.aJS_15.AutoCraftItems = false
                    fns.aJS_15.CraftRecipes = {}
                    fns.aJS_15.AutoClaimCrafts = true
                    fns.aJS_15.Crafts = 0
                    fns.aJS_15.AutoRoll = false
                    fns.aJS_15.AutoEnterRngWorld = true
                    fns.aJS_15.Rolls = 0
                    fns.aJS_15.RolledPets = 0
                    fns.aJS_15.PixelCoins = 0
                    fns.aJS_15.AutoBuyRngUpgrades = false
                    fns.aJS_15.RngUpgradeTargets = {}
                    fns.aJS_15.RngUpgradeBuys = 0
                    fns.aJS_15.AutoRngRebirth = false
                    fns.aJS_15.RngRebirths = 0
                    fns.aJS_15.AutoClaimRngRewards = false
                    fns.aJS_15.RngRewards = 0
                    fns.aJS_15.AutoEquipEnchants = false
                    fns.aJS_15.EnchantTargets = {}
                    fns.aJS_15.Enchants = 0
                    fns.aJS_15.AutoBuySkillTree = false
                    fns.aJS_15.SkillNodes = 0
                    fns.aJS_4 = fns.fn1134
                else
                    fns.aJS_4 = {
                        MERCHANT_INTERVAL = 6,
                        SKILL_TREE_SWEEPS = 8,
                        HATCH_INTERVAL = 0.35,
                        RNG_UPGRADE_SLOTS = 3,
                        CRAFT_SLOTS = 6,
                        RAINBOW_MAX_FEED = 6,
                        GOLDEN_MAX_FEED = 6,
                        ROLL_ENTER_DELAY = 3,
                        CLICK_INTERVAL_FLOOR = 0.096,
                        QUEST_INTERVAL = 5,
                        DARK_MATTER_POINTS = 100,
                        ENCHANT_SLOTS = 9,
                        GIFT_INTERVAL = 15,
                        SHOP_INTERVAL = 8,
                        DARK_MATTER_BASE = 6,
                        CHEST_INTERVAL = 10,
                        HATCH_INTERVAL_MAX = 4,
                        RNG_REBIRTH_INTERVAL = 5,
                        FISH_INTERVAL = 0.5,
                        POTION_INTERVAL = 5,
                        RAINBOW_INTERVAL = 4,
                        ROLL_INTERVAL = 0.2,
                        CRAFT_INTERVAL = 5,
                        SKILL_TREE_INTERVAL = 6,
                        WEBHOOK_MAX = 6,
                        BREAKABLE_INTERVAL = 1,
                        HATCH_TIMEOUT = 10,
                        RNG_UPGRADE_INTERVAL = 5,
                        MILESTONE_INTERVAL = 5,
                        RAINBOW_SLOTS = 3,
                        EQUIP_INTERVAL = 6,
                        REBIRTH_INTERVAL = 1,
                        BREAKABLE_DWELL = 20,
                        ENCHANT_INTERVAL = 8,
                        GOLDEN_INTERVAL = 2,
                        RNG_REWARD_INTERVAL = 10,
                        DARK_MATTER_INTERVAL = 6,
                        BREAKABLE_CLICK_DELAY = 0.2,
                        WEBHOOK_IDLE = 1.5
                    }
                    aaF = fns.aJS_27.State
                    aaF.AutoClick = false
                    aaF.AutoHatch = false
                    aaF.AutoRebirth = false
                    aaF.AutoClaimQuests = false
                    aaF.AutoEquipBest = false
                    aaF.AutoBuyRebirthShop = false
                    aaF.AutoClaimMilestones = false
                    aaF.AutoClaimChests = false
                    aaF.AutoGolden = false
                    aaF.AutoClaimGifts = false
                    aaF.AutoUsePotions = false
                    aaF.PotionSkipActive = true
                    aaF.RedeemingCodes = false
                    aaF.ClicksPerSecond = 10
                    aaF.HatchEggs = {}
                    aaF.HatchEggCount = 0
                    aaF.HatchAmount = "Max"
                    aaF.HatchDelay = fns.aJS_4.HATCH_INTERVAL
                    aaF.RebirthTarget = 0
                    aaF.ShopTargets = {}
                    aaF.Status = "Idle"
                    aaF.Hatched = 0
                    aaF.Rebirths = 0
                    aaF.Claimed = 0
                    aaF.Purchased = 0
                    aaF.Milestones = 0
                    aaF.TeleportIsland = nil
                    aaF.TeleportNpc = nil
                    aaF.GoldenPets = {}
                    aaF.GoldenUse = fns.aJS_4.GOLDEN_MAX_FEED
                    aaF.Chests = 0
                    aaF.Goldens = 0
                    aaF.Gifts = 0
                    aaF.Codes = 0
                    aaF.Potions = 0
                    aaF.PotionKeys = {}
                    aaF.AutoBuyMerchant = false
                    aaF.MerchantTargets = {}
                    aaF.MerchantBuys = 0
                    aaF.AutoFish = false
                    aaF.Fish = 0
                    aaF.AutoRainbow = false
                    aaF.RainbowPets = {}
                    aaF.RainbowUse = fns.aJS_4.RAINBOW_MAX_FEED
                    aaF.AutoClaimRainbow = true
                    aaF.Rainbows = 0
                    aaF.AutoDarkMatter = false
                    aaF.DarkMatterPets = {}
                    aaF.DarkMatters = 0
                    aaF.AutoBreakables = false
                    aaF.BreakableTargets = {}
                    aaF.Breaks = 0
                    aaF.WebhookSent = 0
                    aaF.WebhookFailed = 0
                    aaF.AutoCraftItems = false
                    aaF.CraftRecipes = {}
                    aaF.AutoClaimCrafts = true
                    aaF.Crafts = 0
                    aaF.AutoRoll = false
                    aaF.AutoEnterRngWorld = true
                    aaF.Rolls = 0
                    aaF.RolledPets = 0
                    aaF.PixelCoins = 0
                    aaF.AutoBuyRngUpgrades = false
                    aaF.RngUpgradeTargets = {}
                    aaF.RngUpgradeBuys = 0
                    aaF.AutoRngRebirth = false
                    aaF.RngRebirths = 0
                    aaF.AutoClaimRngRewards = false
                    aaF.RngRewards = 0
                    aaF.AutoEquipEnchants = false
                    aaF.EnchantTargets = {}
                    aaF.Enchants = 0
                    aaF.AutoBuySkillTree = false
                    aaF.SkillNodes = 0
                    fns.aJS_15 = fns.fn1134
                end
                aJS_57 = (aJS_57 + 45) % 184
            end
        else
            local aP3 = bit32.rrotate(bit32.bxor(bit32.lrotate(aJS_57, 5), string.byte(tostring(fns.aJS_15))), 31)
            if bit32.bxor(bit32.lrotate(bit32.bxor(aP3, 2018424769), 0), 2018424769) == bit32.lrotate(aP3, 0) then
                aaF.GetStatus = fns.fn1116
                aJS_59 = fns.fn2338
            else
                aJS_59.GetStatus = fns.fn1116
                aaF = fns.fn2338
            end
            aJS_57 = (aJS_57 + 114) % 184
        end
    elseif fns.aJS_19 <= 22 then
        fns.aJS_19 = (vector.create((aJS_57 * 4 + 1) % 11 + 1, (aJS_57 * 8 + 3) % 13 + 1, (aJS_57 * 10 + 2) % 17 + 1))
        fns.aJS_1 = (vector.create((aJS_57 * 1 + 3) % 11 + 1, (aJS_57 * 2 + 4) % 13 + 1, (aJS_57 * 15 + 12) % 17 + 1))
        local aQI = vector.dot(fns.aJS_19, fns.aJS_1)
        if aQI * aQI <= vector.dot(fns.aJS_19, fns.aJS_19) * vector.dot(fns.aJS_1, fns.aJS_1) then
            abe = function(an, ao, ap)
                local ad4_2
                local ad3_3
                if not an then
                    return nil
                end
                ad3_3, ad4_2 = pcall(function()
                    local ad1 = ap or 20
                    return an:WaitForChild(ao, ad1)
                end)
                return ad3_3 and ad4_2 or nil
            end
            fns.aJS_53 = abe(ZI, "Library")
            Z4 = abe(fns.aJS_53, "Client")
            ZJ = aJS_59(fns.fn1151)
        else
            ZJ = function(an, ao, ap)
                local ad4_1
                local ad3_1
                if not an then
                    return nil
                end
                ad3_1, ad4_1 = pcall(function()
                    local ad1 = ap or 20
                    return an:WaitForChild(ao, ad1)
                end)
                return ad3_1 and ad4_1 or nil
            end
            abe = ZJ(fns.aJS_53, "Library")
            aJS_59 = ZJ(abe, "Client")
            ZI = Z4(fns.fn1151)
        end
        aJS_57 = (aJS_57 + 22) % 184
    else
        fns.aJS_19 = { "uhwpiatwkum", "qujlrr", "eqlf", "olwid", "icefioz", "aio", "jiqlpe", "xfnpmecf" }
        local aPu = aJS_57
        fns.aJS_1 = fns.aJS_19[aPu % 8 + 1]
        if fns.aJS_1:len() <= fns.aJS_1:reverse():rep(aPu % 3 + 2):len() then
            act = aJS_59(fns.fn2143)
            ab5 = aJS_59(fns.fn744)
        else
            aJS_59 = ab5(fns.fn2143)
            act = ab5(fns.fn744)
        end
        aJS_57 = (aJS_57 + 22) % 184
    end
until (aJS_57 * 95 + 69) % 184 == 118
aJS_91, ZE = nil, nil
aJS_91 = fns.aJS_38("Migration")
ZE = false
fns.aJS_1 = aJS_91
if fns.aJS_1 then
    fns.aJS_13 = 3
    repeat
        if (fns.aJS_13 * 2 + 4) * 13 % 3 == ((fns.aJS_13 * 2 + 4) * 13 + 7) % 3 then
            aJS_91 = rawget(fns.aJS_1, "FireServer") == nil
        else
            fns.aJS_1 = rawget(aJS_91, "FireServer") == nil
        end
        fns.aJS_13 = (fns.aJS_13 + 0) % 4
    until (fns.aJS_13 * 3 + 1) % 4 == 2
end
if fns.aJS_1 then
    aJS_110, aJS_97 = nil, nil
    fns.aJS_13 = 7
    repeat
        aJS_77 = (fns.aJS_13 * 1 + 0) % 2 + 1
        if aJS_77 <= 1 then
            if fns.aJS_13 * 102495569 + 3 + 2 <= fns.aJS_13 * 102495569 + 3 + 2 + 2 then
                aJS_97 = type(aJS_110) == "table"
            else
                aJS_110 = type(aJS_97) == "table"
            end
            fns.aJS_13 = (fns.aJS_13 + 5) % 8
        else
            if (aJS_97 and not fns.aJS_13 or (not aJS_110 or aJS_110)) and ((not aJS_110 or fns.aJS_13) and (aJS_97 or not fns.aJS_13)) and not ((aJS_97 and not fns.aJS_13 or (not aJS_110 or aJS_110)) and ((not aJS_110 or fns.aJS_13) and (aJS_97 or not fns.aJS_13))) then
                aJS_91 = getmetatable(aJS_110)
            else
                aJS_110 = getmetatable(aJS_91)
            end
            fns.aJS_13 = (fns.aJS_13 + 7) % 8
        end
    until (fns.aJS_13 * 7 + 1) % 8 == 6
    if aJS_97 then
        fns.aJS_13 = 1
        repeat
            aJS_77 = {
                "rhjmp",
                "ewcz",
                "kpvid",
                "krzvgeu",
                "pedbmsgcr",
                "pcwahug",
                "xwzdfhaxodx",
                "pprusmvybx",
                "rdarzxf",
                "ltyvhlvydxb"
            }
            local aOc = fns.aJS_13
            aJS_57 = aJS_77[aOc % 10 + 1]
            if aJS_57:len() >= aJS_57:gsub("(.)", "%1%1", aOc % 3 % 2 + 1):len() then
                aJS_110 = type(aJS_97.__index) == "table"
            else
                aJS_97 = type(aJS_110.__index) == "table"
            end
            fns.aJS_13 = (fns.aJS_13 + 2) % 4
        until (fns.aJS_13 * 1 + 2) % 4 == 1
    end
    if aJS_97 then
        aJS_97 = aJS_110.__index.FireServer
    end
    fns.aJS_13 = aJS_97 or nil
    local acf = fns.aJS_13
    local aJS_30 = if aJS_73(acf) then 1 else 0
    if aJS_30 == 1 then
        ZE = pcall(function()
            rawset(aJS_91, "FireServer", function(bS, bT, ...)
                if tostring(bT) == "Rejoin" then
                    return
                end
                return acf(bS, bT, ...)
            end)
        end)
        if ZE then
            aaF.Track(function()
                pcall(rawset, aJS_91, "FireServer", nil)
            end)
        end
    end
end
aaF.RejoinerSuppressed = function()
    return ZE
end
aJS_66, fns.aJS_55, fns.aJS_44, ach, aJS_71, ab4, aJS_79, fns.aJS_9, abH, abv, aJS_103, fns.aJS_33, aJS_70, ZF, aJS_104, fns.aJS_17, Z6, aJS_82, fns.aJS_52, aar, fns.aJS_35, ab3, abw, abJ, aJS_84, aaI, Z5, acG, acj, aJS_87, aa7, aaQ, aav, fns.aJS_42, acw, abT, abi, fns.aJS_49, aJS_65, ZS, aJS_105, aa3, aat, fns.aJS_8, ab6, acK, Z2, fns.aJS_24, abI, ZW, fns.aJS_12, aaJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.aJS_52 = fns.fn1997
aar = fns.fn2647
fns.aJS_35 = fns.fn334
ab3 = fns.fn2899
abw = function(cl, cm, cn, ...)
    local aeo
    local aep
    local aeq
    aeo = nil
    aep = nil
    aeq = nil
    if not cl then
        return false, nil, nil
    end
    aeq = table.pack(...)
    aeo, aep = false, nil
    task.spawn(function()
        local cu = table.pack(pcall(cl.InvokeServer, cl, cn, table.unpack(aeq, 1, aeq.n)))
        aep = cu
        aeo = true
    end)
    local aer = os.clock()
    local aes = tonumber(cm) or 10
    local aet = aer + aes
    while true do
        local aer_1 = not aeo and os.clock() < aet
        if aer_1 then
            task.wait(0.05)
            continue
        end
        break
    end
    if not aeo then
        return false, nil, "Request timed out"
    elseif not aep[1] then
        return false, nil, nil
    else
        return true, aep[2], aep[3]
    end
end
aJS_88.InvokeAll = fns.fn741
aJS_88.Flag = fns.fn661
abJ = fns.fn117
aJS_84 = fns.fn382
aaI = fns.fn2860
Z5 = fns.fn2737
acG = fns.fn1083
acj = fns.fn2550
aJS_87 = fns.fn235
aa7 = fns.fn183
aaQ = fns.fn320
aav = fns.fn2353
fns.aJS_42 = fns.fn2874
acw = fns.fn673
abT = fns.fn884
abi = fns.fn1759
fns.aJS_49 = fns.fn2106
aJS_65 = fns.fn2627
ZS = fns.fn2011
aJS_88.HasRolling = fns.fn2159
aJS_88.HasUpgrades = fns.fn289
aJS_88.HasWheel = fns.fn2795
aJS_88.HasLuckReward = fns.fn2222
aJS_88.HasSkillTree = fns.fn2049
aJS_88.HasRebirths = fns.fn1292
aJS_88.HasEnchants = fns.fn471
aJS_105 = fns.fn92
aaF.Support = fns.fn1464
aJS_66 = {}
fns.aJS_55 = {}
fns.aJS_44 = {}
ach = {}
aJS_71 = {}
ab4 = {}
aJS_79 = {}
fns.aJS_9 = {}
abH = {}
abv = {}
aJS_103 = { "1", "Half", "Max" }
fns.aJS_33 = { "Rebirth Buttons", "Double Jumps" }
aa3 = fns.fn2412
aat = fns.fn1557
fns.aJS_8 = fns.fn1593
aJS_97 = fns.fn2765
ab6 = fns.fn532
aJS_110 = function()
    local agU = {}
    local agU_1
    local agV = aat("Machines")
    if agV then
        table.insert(agU, agV)
    end
    local agV_1 = aat("Misc")
    if agV_1 then
        table.insert(agU, agV_1)
    end
    local MAP = Workspace:FindFirstChild("_MAP")
    local agW = MAP and MAP:FindFirstChild("NPCs")
    local agW_1
    if agW then
        table.insert(agU, agW)
    end
    local agV_4 = {}
    for i, v in ipairs(agU) do
        for i, child in ipairs(v:GetChildren()) do
            local ahc = child
            agU_1, agW_1 = pcall(function()
                return ahc:GetPivot().Position
            end)
            if agU_1 then
                local agU_2 = string.match(ahc.Name, "^(.-)%s*%[.-%]$") or ahc.Name
                table.insert(agV_4, { model = ahc, name = agU_2, position = agW_1 })
            end
        end
    end
    table.sort(agV_4, function(f3, f4)
        return f3.name < f4.name
    end)
    for i, v in ipairs(agV_4) do
        local agU_3 = ab6(v.position)
        local agU_4 = agU_3 and v.name .. " (" .. agU_3 .. ")" or v.name
        local agV_6 = agU_4
        local agW_2 = 2
        while ach[agU_4] do
            agU_4 = agV_6 .. " #" .. agW_2
            agW_2 += 1
        end
        ach[agU_4] = v.model
        table.insert(fns.aJS_44, agU_4)
    end
end
aJS_57 = fns.fn2189
aJS_70 = {}
ZF = {}
acK = function(gD, gE)
    local ahI_1, ahI_5
    local ahH_1
    ahH_1, ahI_1 = pcall(function()
        return aax[gD][gE]
    end)
    local ahJ = ahH_1 and type(ahI_1) == "table"
    local ahJ_1
    if ahJ then
        return ahI_1
    end
    local ahH_2 = fns.aJS_53 and fns.aJS_53:FindFirstChild("Directory")
    local ahI_2 = ahH_2 or nil
    local ahH_3 = ahI_2
    if ahI_2 then
        ahI_2 = ahH_3:FindFirstChild(gD)
    end
    local ahH_4 = ahI_2 or nil
    local ahI_3 = ahH_4
    if ahH_4 then
        ahH_4 = ahI_3:FindFirstChild(gE)
    end
    local ahI_4 = ahH_4 or nil
    local ahH_5 = ahI_4
    if ahI_4 then
        ahI_4 = ahH_5:IsA("ModuleScript")
    end
    if ahI_4 then
        ahI_5, ahJ_1 = pcall(require, ahH_5)
        local ahH_6 = ahI_5 and type(ahJ_1) == "table"
        if ahH_6 then
            return ahJ_1
        end
        return nil
    end
    return nil
end
Z2 = fns.fn473
fns.aJS_24 = fns.fn1495
abI = fns.fn2117
ZW = fns.fn2717
aJS_104 = {}
fns.aJS_17 = {}
Z6 = {}
aJS_82 = {}
fns.aJS_12 = fns.fn2839
fns.aJS_38 = fns.fn2637
aaJ = fns.fn337
aJS_77 = fns.fn2336
acV, acJ, acx, acl = nil, nil, nil, nil
acV = {}
acJ = {}
acx = {}
acl = {}
aJS_102 = fns.fn2506
fns.aJS_19 = fns.fn2701
aJS_102()
fns.aJS_19()
aaF.RngUpgradeValues = fns.fn1355
aaF.EnchantValues = fns.fn1212
aJS_88.UpgradeLabels = fns.fn2236
aJS_88.EnchantLabels = fns.fn515
ZH, fns.aJS_47, fns.aJS_28, fns.aJS_40, aJS_64, fns.aJS_37, fns.aJS_14, aak, aJS_61, aah, aaU, aJS_78, aJS_62, fns.aJS_20, abQ, fns.aJS_34, abS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ZH = {}
fns.aJS_47 = {}
fns.aJS_13 = function()
    if not aJS_65() then
        return
    end
    local Merchants = fns.aJS_53.Directory.Merchants
    for i, child in ipairs(Merchants:GetChildren()) do
        local aks = child
        local akk_1 = aJS_59(function()
            return require(aks)
        end)
        local akl = akk_1 and type(akk_1.Tiers) == "table"
        if akl then
            for k, v in pairs(akk_1.Tiers) do
                if type(v) == "table" then
                    for i, v2 in ipairs({ "OfferRulesAll", "OfferRulesAny" }) do
                        if type(v[v2]) == "table" then
                            for i, v in ipairs(v[v2]) do
                                ZW(v)
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(aJS_70)
end
aJS_83 = fns.fn933
fns.fn469()
aJS_83()
aJS_57()
fns.aJS_13()
fns.aJS_38()
aJS_77()
fns.fn1662()
aJS_97()
aJS_110()
aaF.PotionValues = fns.fn962
aaF.MerchantValues = fns.fn502
aaF.RarityValues = fns.fn1821
aaF.BreakableValues = fns.fn14
aaF.RecipeValues = fns.fn641
aaF.PetValues = fns.fn96
aaF.IslandValues = fns.fn428
aaF.NpcValues = fns.fn2030
aaF.EggValues = fns.fn1150
aaF.AmountValues = fns.fn2837
aaF.ShopValues = fns.fn2490
fns.aJS_37 = fns.fn851
aaF.SetHatchEggs = fns.fn2013
aaF.SetShopTargets = fns.fn1379
aaF.SetHatchAmount = fns.fn1845
aaF.SetUsePotions = fns.fn510
aaF.SetMerchantTargets = fns.fn2818
aaF.SetRainbowPets = fns.fn1418
aaF.SetRainbowUse = fns.fn879
aaF.SetDarkMatterPets = fns.fn1185
aaF.SetBreakableTargets = fns.fn1722
aaF.SetCraftRecipes = fns.fn2856
aaF.SetRngUpgradeTargets = fns.fn1325
aaF.SetEnchantTargets = fns.fn56
aaF.SetGoldenPets = fns.fn486
aaF.SetGoldenUse = fns.fn1837
fns.aJS_14 = fns.fn2088
aak = fns.fn2731
aaF.GoldenTargets = fns.fn1717
aaF.SetTeleportIsland = fns.fn1517
aaF.SetTeleportNpc = fns.fn644
aJS_61 = fns.fn1384
aaF.TeleportToIsland = fns.fn1178
aaF.TeleportToNpc = function()
    local am6
    am6 = nil
    local TeleportNpc = fns.aJS_15.TeleportNpc
    local am7_3
    local am8 = TeleportNpc and ach[TeleportNpc]
    local am8_1
    am6 = am8 or nil
    local am7_2 = not am6
    local anc = if am7_2 then 1 else 0
    local ana = 772 * anc + 1391 * (1 - anc)
    local anb = 2592 * anc + 2111 * (1 - anc)
    if not ((ana * 263 + anb * 4005 + ana * anb) % 16777213 == 12585020) then
        am7_2 = not am6.Parent
    end
    if am7_2 then
        return false, "Pick an NPC first"
    end
    am7_3, am8_1 = pcall(function()
        return am6:GetPivot()
    end)
    if not am7_3 then
        return false, "That NPC is not loaded"
    end
    return aJS_61(am8_1 * CFrame.new(0, 0, 6))
end
aaF.SetHatchDelay = fns.fn1184
aaF.SetClicksPerSecond = fns.fn844
aaF.SetRebirthTarget = fns.fn540
fns.aJS_28 = {}
aah = function(nd, ne, nf)
    local anv
    if fns.aJS_28[nd] then
        return
    end
    anv = {}
    fns.aJS_28[nd] = anv
    task.spawn(function()
        local ans_1
        while true do
            local anr = ZV() and fns.aJS_28[nd] == anv
            local anr_1
            if anr then
                anr_1, ans_1 = pcall(nf)
                if not anr_1 then
                    fns.aJS_4("Error: " .. tostring(ans_1):sub(1, 60))
                end
                if fns.aJS_28[nd] ~= anv then
                    break
                end
                local wait = task.wait
                local ans_2 = type(ne) == "function" and ne()
                local ant = ans_2 or ne
                wait(ant)
                continue
            end
            break
        end
        if fns.aJS_28[nd] == anv then
            fns.aJS_28[nd] = nil
        end
    end)
end
aaU = fns.fn1655
aaF.Track(fns.fn775)
aJS_78 = fns.fn206
aJS_62 = fns.fn2945
aaF.SetAutoClick = fns.fn1145
fns.aJS_20 = fns.fn1276
abQ = fns.fn2332
fns.aJS_34 = fns.fn1679
fns.aJS_40 = 0
abS = fns.fn1518
abf, Play, aJS_64 = nil, nil, nil
abf = false
Play = nil
aJS_64 = fns.fn1088
aJS_101, abN, abF, fns.aJS_2, aaW, aJS_90, ZG, acv, aaS, acR, aJS_58, fns.aJS_51, abh, acS, acg, aJS_92, abU, aJS_86, fns.aJS_39, aaf, aJS_108, aJS_94, abD, aas, aau, fns.aJS_21, aaR, abr, aaX, acn, abt, acE, aJS_76, acu, aa8, fns.aJS_23, ack, aJS_93, ZU, fns.aJS_29, Z3, abx, abR, aaw, ab7, aJS_60, fns.aJS_50, aaV, aJS_75, ab2, acF, aJS_96, aaG, fns.aJS_56, fns.aJS_26 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
aaF.Track(fns.fn1998)
acv = fns.fn1694
aaF.SetAutoHatch = fns.fn130
aaS = fns.fn555
acR = fns.fn1008
aJS_58 = fns.fn2298
aaF.SetAutoRebirth = fns.fn2201
fns.aJS_51 = fns.fn511
aaF.SetAutoClaimQuests = fns.fn2099
abh = fns.fn2286
aaF.SetAutoEquipBest = fns.fn751
acS = fns.fn1309
acg = fns.fn197
aJS_92 = fns.fn1189
abU = fns.fn2503
aJS_86 = fns.fn1551
aaF.SetAutoBuyRebirthShop = fns.fn1946
fns.aJS_39 = fns.fn915
aaF.SetAutoClaimMilestones = fns.fn1225
aaF.ClaimMilestonesNow = fns.fn1524
aJS_101 = {
    "release",
    "clicker",
    "update",
    "tweet",
    "secret",
    "boost",
    "luck",
    "clicks",
    "pets",
    "eggs",
    "rebirth",
    "golden",
    "summer",
    "winter",
    "halloween",
    "christmas",
    "easter",
    "anniversary",
    "1MLIKES",
    "500KLIKES",
    "250KLIKES",
    "100KLIKES",
    "50KLIKES",
    "1BVISITS",
    "500MVISITS",
    "100MVISITS",
    "THANKYOU",
    "FREEBOOST",
    "SORRY",
    "SHUTDOWN"
}
aaF.CodeCount = fns.fn746
aaF.RedeemCodes = function(sh)
    local aqO = if not aa7() then 1 else 0
    if aqO == 1 then
        if sh then
            sh(0, 0, "Codes are unavailable")
        end
        return
    end
    if fns.aJS_15.RedeemingCodes then
        return
    end
    fns.aJS_15.RedeemingCodes = true
    task.spawn(function()
        local aqB_1
        local aqA_1
        local aqz_1
        local aqy_1
        aqy_1, aqz_1 = 0, 0
        for i, v in ipairs(aJS_101) do
            if not ZV() then
                break
            end
            aqz_1 += 1
            fns.aJS_4("Redeeming " .. v)
            aqA_1, aqB_1 = ab3(aaH, "Redeem", v)
            if aqA_1 and aqB_1 == "success" then
                aqy_1 += 1
                local aQF = fns.aJS_15
                aQF.Codes = aQF.Codes + 1
            end
            task.wait(0.35)
        end
        fns.aJS_15.RedeemingCodes = false
        fns.aJS_4("Idle")
        if sh then
            sh(aqy_1, aqz_1, nil)
        end
    end)
end
aaf = fns.fn1647
if not aaV and aaV and (fns.aJS_51 or aaV) and (aJS_92 or not aaV or not acg and not acg) or (aJS_92 and fns.aJS_51 or false or not fns.aJS_51 and not aJS_92 and (aJS_92 or acg)) or (not aJS_92 or acg or (not fns.aJS_51 or 25) or (aaV and false or not aaV and 25)) and ((aaV or not aJS_92 and not fns.aJS_51) and (not aJS_92 or 25 or (fns.aJS_51 or acg))) or not (not aaV and aaV and (fns.aJS_51 or aaV) and (aJS_92 or not aaV or not acg and not acg) or (aJS_92 and fns.aJS_51 or false or not fns.aJS_51 and not aJS_92 and (aJS_92 or acg)) or (not aJS_92 or acg or (not fns.aJS_51 or 25) or (aaV and false or not aaV and 25)) and ((aaV or not aJS_92 and not fns.aJS_51) and (not aJS_92 or 25 or (fns.aJS_51 or acg)))) then
    aJS_108 = fns.fn415
    aaF.SetAutoClaimGifts = fns.fn383
    aaF.ClaimGiftsNow = fns.fn2691
    aJS_94 = fns.fn715
    abD = fns.fn993
    aaF.SetPotionSkipActive = fns.fn554
    aaF.SetAutoUsePotions = fns.fn973
    aas = fns.fn691
else
    abD = fns.fn415
    aJS_108.SetAutoClaimGifts = fns.fn383
    aJS_108.ClaimGiftsNow = fns.fn2691
    aaF = fns.fn715
    aas = fns.fn993
    aJS_108.SetPotionSkipActive = fns.fn554
    aJS_108.SetAutoUsePotions = fns.fn973
    aJS_94 = fns.fn691
end
aaF.SetAutoClaimChests = fns.fn1041
aaF.ClaimChestsNow = fns.fn1779
aau = fns.fn1318
aaF.SetAutoGolden = fns.fn2259
fns.aJS_21 = fns.fn701
aaR = fns.fn539
aaF.SetAutoBuyMerchant = fns.fn985
aaF.BuyMerchantNow = fns.fn2131
abN = {}
abF = false
abr = fns.fn672
aaX = function()
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local asT_1 = child:IsA("Tool") and child:GetAttribute("FishingRod") == true
            if asT_1 then
                return child
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local asU = Character and Character:FindFirstChildOfClass("Humanoid")
    local asR = asU
    if Backpack and asR then
        for i, child in ipairs(Backpack:GetChildren()) do
            local as9 = child
            local asT_3 = as9:IsA("Tool") and as9:GetAttribute("FishingRod") == true
            if asT_3 then
                pcall(function()
                    asR:EquipTool(as9)
                end)
                return Character:FindFirstChild(as9.Name)
            end
        end
    end
    return nil
end
acn = fns.fn1910
abt = function()
    local atl_1
    local atk = not fns.aJS_15.AutoFish or not ZS()
    local atk_1
    if atk then
        return
    end
    if abr() then
        if not abF then
            atk_1, atl_1 = ab3(aai, "SetAutoFish", true)
            if atk_1 and atl_1 then
                abF = true
                fns.aJS_4("Auto fishing (upgrade)")
            end
        end
        return
    end
    local atj = aaX()
    if not atj then
        fns.aJS_4("No fishing rod")
        return
    end
    local atk_2 = acn()
    if not atk_2 then
        fns.aJS_4("Casting")
        pcall(function()
            atj:Activate()
        end)
        return
    end
    if atk_2:GetAttribute("Biting") == true then
        fns.aJS_4("Hooking")
        pcall(function()
            atj:Activate()
        end)
    end
end
acE = function()
    local atE
    local atF = #abN > 0 or not ZS()
    local atF_1, atF_2
    if atF then
        return
    end
    atF_1, atE = pcall(aai.OnClientEvent, "StartReel")
    local atG = atE == nil
    local atG_1
    local atH = not atF_1
    local atL = if atH then 1 else 0
    local atJ = 2991 * atL + 1771 * (1 - atL)
    local atK = 2731 * atL + 3797 * (1 - atL)
    if not ((atJ * 1878 + atK * 2770 + atJ * atK) % 16777213 == 4573176) then
        atH = atG
    end
    if atH then
        return
    end
    atF_2, atG_1 = pcall(function()
        return atE:Connect(function(wp, wq)
            local atr = not fns.aJS_15.AutoFish
            local aty = if atr then 1 else 0
            local atw = 3737 * aty + 3399 * (1 - aty)
            local atx = 3483 * aty + 2397 * (1 - aty)
            if not ((atw * 1332 + atx * 1600 + atw * atx) % 16777213 == 6789242) then
                atr = abr()
            end
            if atr then
                return
            end
            fns.aJS_4("Reeling")
            local max = math.max
            local att = tonumber(wq) or 1
            local atu = max(1, math.floor(att))
            local atB = 1
            while atB <= atu do
                local atr_2 = not ZV() or not fns.aJS_15.AutoFish
                if atr_2 then
                    return
                end
                fns.aJS_35(aai, "ReelHit", wp)
                task.wait(0.12)
                atB += 1
            end
            local aPI = fns.aJS_15
            aPI.Fish = aPI.Fish + 1
        end)
    end)
    if atF_2 and atG_1 then
        table.insert(abN, atG_1)
    end
end
aJS_76 = function()
    local atN = #abN
    for i = atN, 1, -1 do
        local atM
        atM = table.remove(abN, i)
        pcall(function()
            atM:Disconnect()
        end)
    end
end
aaF.Track(aJS_76)
aaF.SetAutoFish = fns.fn1746
acu = fns.fn572
aa8 = fns.fn2456
fns.aJS_23 = fns.fn752
ack = fns.fn1603
if ((aaG and not ZU or (aJS_86 or not ZU)) and ((aJS_86 or aaG) and (not aaG or ZU)) or (not ZU or not ZU or ZU and not aaG or (not ZU or not aaG) and (acF and aaG))) and not ((aaG and not ZU or (aJS_86 or not ZU)) and ((aJS_86 or aaG) and (not aaG or ZU)) or (not ZU or not ZU or ZU and not aaG or (not ZU or not aaG) and (acF and aaG))) then
    ZU = fns.fn1885
    aJS_93 = fns.fn2847
else
    aJS_93 = fns.fn1885
    ZU = fns.fn2847
end
aaF.SetAutoRainbow = fns.fn1553
aaF.SetAutoClaimRainbow = fns.fn301
fns.aJS_2 = { Basic = 1, Rare = 2, Epic = 3, Legendary = 4, Mythic = 6, Mythical = 6 }
aaW = { Golden = 2, Rainbow = 4, DarkMatter = 8 }
fns.aJS_29 = fns.fn250
Z3 = fns.fn1709
abx = fns.fn2031
abR = fns.fn2831
aaF.SetAutoDarkMatter = fns.fn281
aaw = fns.fn136
ab7 = fns.fn704
aJS_60 = fns.fn2235
fns.aJS_50 = fns.fn114
aaV = fns.fn1237
aJS_75 = fns.fn1893
aJS_90 = nil
ab2 = fns.fn1090
aaF.SetAutoBreakables = fns.fn935
acF = fns.fn2608
aJS_96 = fns.fn1139
aaG = fns.fn1235
fns.aJS_56 = fns.fn1945
fns.aJS_26 = fns.fn2943
aaF.SetAutoCraftItems = fns.fn2433
aaF.SetAutoClaimCrafts = fns.fn1395
ZG = {
    Url = "",
    Enabled = false,
    PingId = "",
    Ping = false,
    Events = { Normal = true, Golden = true, Rainbow = true, DarkMatter = true },
    Rarities = {},
    Queue = {},
    Batch = {},
    Batching = false,
    BatchStart = 0,
    LastPush = 0,
    Draining = false,
    Seen = nil,
    Connection = nil
}
ZG.Accent = 16758465
ZG.Rule = "────────────────────────"
ZG.Kinds = {
    Normal = { label = "Hatched", order = 1 },
    Golden = { label = "Golden", order = 2 },
    Rainbow = { label = "Rainbow", order = 3 },
    DarkMatter = { label = "Dark Matter", order = 4 }
}
ZG.Requester = function()
    local ayi_1
    local ayh_1
    if aJS_73(request) then
        return request
    elseif aJS_73(http_request) then
        return http_request
    else
        for i, v in ipairs({ "syn", "http", "fluxus" }) do
            local ayq = v
            ayh_1, ayi_1 = pcall(function()
                local aye = getgenv and getgenv()[ayq]
                local ayf = aye or nil
                local ayf_1 = type(ayf) == "table" and ayf.request
                return ayf_1 or nil
            end)
            local ayj = ayh_1 and aJS_73(ayi_1)
            if ayj then
                return ayi_1
            end
        end
        return nil
    end
end
ZG.ValidUrl = fns.fn625
ZG.Post = fns.fn523
ZG.Drain = fns.fn820
ZG.Queued = fns.fn2227
ZG.Mention = fns.fn812
ZG.Footer = fns.fn2877
ZG.Describe = fns.fn822
ZG.Line = fns.fn463
ZG.BatchPayload = function(Cq)
    local azc
    azc = nil
    local aze_1
    local azg_3
    local azd_1
    local azf_3
    azc, azd_1, aze_1 = {}, {}, {}
    for i, v in ipairs(Cq) do
        local azf_1 = ("%s|%s|%s|%s"):format(v.id, v.kind, tostring(v.shiny), v.mutations)
        local azg_1 = azc[azf_1]
        if not azg_1 then
            azg_1 = { count = 0, item = v }
            azc[azf_1] = azg_1
            table.insert(azd_1, azf_1)
        end
        azg_1.count = azg_1.count + 1
        local kind = v.kind
        local azg_2 = aze_1[v.kind] or 0
        aze_1[kind] = azg_2 + 1
    end
    table.sort(azd_1, function(Cy, Cz)
        local item
        local item2
        item, item2 = azc[Cy].item, azc[Cz].item
        if item.rank ~= item2.rank then
            return item.rank > item2.rank
        elseif item.name ~= item2.name then
            return item.name < item2.name
        else
            return Cy < Cz
        end
    end)
    azg_3, azf_3 = {}, 0
    for i, v in ipairs(azd_1) do
        if azf_3 >= 18 then
            table.insert(azg_3, ("› *and %d more*"):format(#azd_1 - azf_3))
            break
        end
        table.insert(azg_3, ZG.Line(azc[v].item, azc[v].count))
        azf_3 += 1
    end
    local azh = {}
    for k, v in pairs(ZG.Kinds) do
        if aze_1[k] then
            table.insert(azh, { order = v.order, text = ("%s  ·  %d"):format(v.label, aze_1[k]) })
        end
    end
    table.sort(azh, function(CL, CM)
        return CL.order < CM.order
    end)
    local azd_2 = {}
    for i, v in ipairs(azh) do
        table.insert(azd_2, v.text)
    end
    local aze_2 = {}
    if #azh > 1 then
        table.insert(aze_2, { name = "Breakdown", value = table.concat(azd_2, "\n"), inline = false })
    end
    local azd_3 = ZG.Mention()
    local azf_4 = #Cq == 1 and "Pet Obtained"
    local azh_1 = azf_4 or ("%d Pets Obtained"):format(#Cq)
    return {
        content = azd_3,
        embeds = {
            {
                title = azh_1,
                description = ZG.Rule .. "\n" .. table.concat(azg_3, "\n") .. "\n" .. ZG.Rule,
                color = ZG.Accent,
                fields = aze_2,
                footer = { text = ZG.Footer() }
            }
        }
    }
end
ZG.Flush = fns.fn2615
ZG.Push = fns.fn1075
ZG.WantsRarity = fns.fn342
ZG.OnPet = fns.fn1939
ZG.Connect = function()
    local az2
    local az3 = ZG.Connection or not act or not aJS_73(act.GetSignalPath)
    local az3_2, az3_3
    if az3 then
        return
    end
    local az3_1 = fns.aJS_52()
    local az4 = not az3_1 or type(az3_1.Pets) ~= "table"
    local az4_3
    if az4 then
        return
    end
    local az4_1 = {}
    for k in pairs(az3_1.Pets) do
        az4_1[k] = true
    end
    ZG.Seen = az4_1
    az3_2, az2 = pcall(act.GetSignalPath, "Pets.*")
    if not az3_2 or az2 == nil then
        return
    end
    az3_3, az4_3 = pcall(function()
        return az2:Connect(function(Dt, Du, Dv)
            ZG.OnPet(Dv)
        end)
    end)
    if az3_3 and az4_3 then
        ZG.Connection = az4_3
    end
end
ZG.Disconnect = fns.fn432
aaF.Track(ZG.Disconnect)
aaF.SetWebhookUrl = fns.fn911
aaF.SetWebhookPingId = fns.fn219
aaF.SetWebhookPing = fns.fn984
aaF.SetWebhookEvent = fns.fn2173
aaF.SetWebhookRarities = fns.fn2067
aaF.SetWebhookEnabled = fns.fn2048
aaF.WebhookStatus = fns.fn145
aaF.SendWebhookTest = function(DX)
    task.spawn(function()
        local aAw_1
        local aAv_1
        aAw_1, aAv_1 = ZG.Post({
            content = ZG.Mention(),
            embeds = {
                {
                    title = "Ouroboros Connected",
                    description = table.concat({
                        ZG.Rule,
                        "› Hatches, Golden, Rainbow and Dark Matter alerts arrive here.",
                        "› Pets obtained together are sent as one message.",
                        ZG.Rule
                    }, "\n"),
                    color = ZG.Accent,
                    footer = { text = ZG.Footer() }
                }
            }
        })
        if DX then
            DX(aAw_1, aAv_1)
        end
    end)
end
aaF.EquipBestNow = fns.fn2398
aaF.ClaimQuestsNow = fns.fn1360
aa2, aaj, aJS_81, aag, acT = nil, nil, nil, nil, nil
aa2 = "RNGEvent"
aJS_81 = fns.fn2616
aaF.RngWorldUnlocked = fns.fn2274
aaF.EnterRngWorld = fns.fn1477
aaF.ExitRngWorld = fns.fn2297
aaF.UnlockRngWorld = fns.fn2006
aaj = 0
aag = fns.fn2685
acT = fns.fn1420
aaF.SetAutoRoll = fns.fn934
aaF.SetAutoEnterRngWorld = fns.fn2946
acU, fns.aJS_45, ZR = nil, nil, nil
acU = fns.fn1677
fns.aJS_45 = fns.fn1140
ZR = fns.fn987
aaF.SetAutoBuyRngUpgrades = fns.fn2107
aaF.BuyRngUpgradesNow = fns.fn2285
abW, fns.aJS_7, abG = nil, nil, nil
abW = fns.fn388
fns.aJS_7 = fns.fn2322
abG = fns.fn1913
aaF.SetAutoClaimRngRewards = fns.fn2543
aaF.ClaimRngRewardsNow = fns.fn385
acs, aa4 = nil, nil
if (aa4 or not acs or (acs or not aa4) or (not acs or not acs) and aa4) and (acs and aa4 and (not aa4 and not acs) and (aa4 or aa4)) or (acs or false or false) and false and (not aa4 and aa4 or (acs or not acs) or (acs or aa4) and (not acs or not acs)) or not ((aa4 or not acs or (acs or not aa4) or (not acs or not acs) and aa4) and (acs and aa4 and (not aa4 and not acs) and (aa4 or aa4)) or (acs or false or false) and false and (not aa4 and aa4 or (acs or not acs) or (acs or aa4) and (not acs or not acs))) then
    acs = fns.fn2246
    aa4 = fns.fn2541
else
    aa4 = fns.fn2246
    acs = fns.fn2541
end
aaF.SetAutoEquipEnchants = fns.fn1683
aaF.EquipEnchantsNow = fns.fn2797
aJS_85, acI, aci = nil, nil, nil
aJS_85 = fns.fn634
acI = fns.fn458
aci = fns.fn1646
aaF.SetAutoBuySkillTree = fns.fn2207
aaF.BuySkillTreeNow = fns.fn2672
fns.aJS_31, aJS_99, aa5 = nil, nil, nil
fns.aJS_31 = fns.fn194
aJS_99 = fns.fn1895
aa5 = fns.fn307
aaF.SetAutoRngRebirth = fns.fn1393
aaF.RngRebirthNow = fns.fn1833
aaF.RngStatus = fns.fn654
aJS_110 = function()
    local Iw = "https://ouroboros-hub-rbx.web.app/"
    local It = "v0.7"
    local Iv = "https://rscripts.net/@Ouroboros"
    local Iu = "https://discord.gg/synapsex"
    local Is = "Clicker Simulator"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    abu(aaF, Library)
    local function IF(IG, IH)
        local aEw = aJS_73(setclipboard) and setclipboard
        local aEx = aEw
        if not aEx then
            local aEw_1 = aJS_73(toclipboard) and toclipboard
            local aEy = aEw_1
            local aEC = if aEy then 1 else 0
            local aEA = 1678 * aEC + 1105 * (1 - aEC)
            local aEB = 2861 * aEC + 2555 * (1 - aEC)
            if not ((aEA * 252 + aEB * 1474 + aEA * aEB) % 16777213 == 9440728) then
                aEy = nil
            end
            aEx = aEy
        end
        local aEw_2 = aEx
        if not aEw_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local aEx_1 = pcall(aEw_2, IG)
        if aEx_1 then
            Library:Notify(IH)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        IF(Iu, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Iu, Copyable = true }, "|", Is, "|", It },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local IS = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Webhook", "webhook"),
        [5] = Window:AddTab("Settings", "settings")
    }
    local IT = {
        [1] = IS[2]:AddSubTab("Farming", "mouse-pointer-click"),
        [2] = IS[2]:AddSubTab("Pets", "paw-print"),
        [3] = IS[2]:AddSubTab("RNG", "dices"),
        [4] = IS[2]:AddSubTab("Rewards", "gift"),
        [5] = IS[2]:AddSubTab("Shop", "store")
    }
    local function IU(IV)
        local DiscordGroup = IV:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    IU(IT[1])
    IU(IT[2])
    IU(IT[3])
    IU(IT[4])
    IU(IT[5])
    IU(IS[3])
    IU(IS[4])
    IU(IS[5])
    local function IY()
        local Lk
        local ClickingGroup = IT[1]:AddRightGroupbox("Clicking", "mouse-pointer-click")
        local Label2 = ClickingGroup:AddLabel(aaF.GetStatus(), true)
        ClickingGroup:AddDivider()
        ClickingGroup:AddToggle("AutoClick", {
            Text = "Auto Click",
            Default = false,
            Tooltip = "Sends clicks at the rate below, never faster than the game's own click interval.",
            Callback = function(I2)
                aaF.SetAutoClick(I2)
            end
        })
        ClickingGroup:AddSlider("ClicksPerSecond", {
            Text = "Clicks Per Second",
            Default = 10,
            Min = 1,
            Max = 30,
            Rounding = 0,
            Callback = function(I4)
                aaF.SetClicksPerSecond(I4)
            end
        })
        local EggsGroup = IT[1]:AddLeftGroupbox("Eggs", "egg")
        EggsGroup:AddToggle("AutoHatch", {
            Text = "Auto Hatch",
            Default = false,
            Tooltip = "Hatches the selected eggs whenever you can afford them.",
            Callback = function(I7)
                aaF.SetAutoHatch(I7)
            end
        })
        EggsGroup:AddDropdown("HatchEggs", {
            Text = "Eggs",
            Values = aaF.EggValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(I9)
                aaF.SetHatchEggs(I9)
            end
        })
        EggsGroup:AddDropdown("HatchAmount", {
            Text = "Amount",
            Values = aaF.AmountValues(),
            Default = "Max",
            Multi = false,
            Callback = function(Jb)
                aaF.SetHatchAmount(Jb)
            end
        })
        EggsGroup:AddSlider("HatchDelay", {
            Text = "Hatch Delay",
            Default = 0.35,
            Min = 0.1,
            Max = 5,
            Rounding = 2,
            Suffix = "s",
            Tooltip = "Seconds between hatch requests. The script backs off further on its own if the server reports hatching too fast.",
            Callback = function(Jd)
                aaF.SetHatchDelay(Jd)
            end
        })
        local RebirthGroup = IT[1]:AddLeftGroupbox("Rebirth", "repeat")
        RebirthGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as the chosen button is affordable.",
            Callback = function(Jg)
                aaF.SetAutoRebirth(Jg)
            end
        })
        RebirthGroup:AddInput("RebirthTarget", {
            Text = "Rebirth Amount",
            Default = "0",
            Numeric = true,
            Placeholder = "0 = best affordable",
            Tooltip = "0 rebirths with the biggest button you can afford. Any other number waits until the matching +N Rebirths button is affordable, then uses it.",
            Callback = function(Ji)
                aaF.SetRebirthTarget(Ji)
            end
        })
        local RebirthShopGroup = IT[5]:AddRightGroupbox("Rebirth Shop", "store")
        RebirthShopGroup:AddToggle("AutoBuyRebirthShop", {
            Text = "Auto Buy Rebirth Shop",
            Default = false,
            Tooltip = "Spends Gems on the next unlockable entry of the selected categories.",
            Callback = function(Jl)
                aaF.SetAutoBuyRebirthShop(Jl)
            end
        })
        RebirthShopGroup:AddDropdown("ShopTargets", {
            Text = "Purchases",
            Values = aaF.ShopValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(Jn)
                aaF.SetShopTargets(Jn)
            end
        })
        local PetsGroup = IT[2]:AddRightGroupbox("Pets", "paw-print")
        PetsGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Callback = function(Jq)
                aaF.SetAutoEquipBest(Jq)
            end
        })
        PetsGroup:AddButton({
            Text = "Equip Best Now",
            Func = function()
                aaF.EquipBestNow()
            end
        })
        local RainbowMachineGroup = IT[2]:AddLeftGroupbox("Rainbow Machine", "rainbow")
        RainbowMachineGroup:AddToggle("AutoRainbow", {
            Text = "Auto Rainbow",
            Default = false,
            Tooltip = "Feeds Golden copies of the selected pets into the Rainbow machine whenever a crafting slot is free.",
            Callback = function(Ju)
                aaF.SetAutoRainbow(Ju)
            end
        })
        RainbowMachineGroup:AddDropdown("RainbowPets", {
            Text = "Pets",
            Values = aaF.PetValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(Jw)
                aaF.SetRainbowPets(Jw)
            end
        })
        RainbowMachineGroup:AddSlider("RainbowUse", {
            Text = "Pets Per Craft",
            Default = fns.aJS_27.RAINBOW_MAX_FEED,
            Min = 1,
            Max = fns.aJS_27.RAINBOW_MAX_FEED,
            Rounding = 0,
            Tooltip = "More Golden pets per craft means a much shorter timer. Six is the fastest, one takes three days.",
            Callback = function(JA)
                aaF.SetRainbowUse(JA)
            end
        })
        RainbowMachineGroup:AddToggle("AutoClaimRainbow", {
            Text = "Auto Claim Rainbow",
            Default = true,
            Tooltip = "Claims each Rainbow pet as soon as its timer runs out, freeing the slot for the next craft.",
            Callback = function(JC)
                aaF.SetAutoClaimRainbow(JC)
            end
        })
        local DarkMatterGroup = IT[2]:AddRightGroupbox("Dark Matter", "atom")
        DarkMatterGroup:AddToggle("AutoDarkMatter", {
            Text = "Auto Dark Matter",
            Default = false,
            Tooltip = "Crafts Dark Matter from six matching Rainbow pets plus 100 points of sacrificed pets. The point pets are consumed, cheapest first, and Rainbow or Dark Matter pets are never fed.",
            Callback = function(JF)
                aaF.SetAutoDarkMatter(JF)
            end
        })
        DarkMatterGroup:AddDropdown("DarkMatterPets", {
            Text = "Pets",
            Values = aaF.PetValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(JH)
                aaF.SetDarkMatterPets(JH)
            end
        })
        local BreakablesGroup = IT[1]:AddRightGroupbox("Breakables", "hammer")
        BreakablesGroup:AddToggle("AutoBreakables", {
            Text = "Auto Breakable",
            Default = false,
            Tooltip = "Stands in the breakable's zone so your pets attack it and clicks it yourself at the same time. Covers the RNG World safes and chests while you are inside RNG World.",
            Callback = function(JK)
                aaF.SetAutoBreakables(JK)
            end
        })
        BreakablesGroup:AddDropdown("BreakableTargets", {
            Text = "Breakables",
            Values = aaF.BreakableValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Tooltip = "Leave empty to hit whatever breakable is available.",
            Callback = function(JM)
                aaF.SetBreakableTargets(JM)
            end
        })
        local CraftingGroup = IT[5]:AddLeftGroupbox("Crafting", "flask-round")
        CraftingGroup:AddToggle("AutoCraftItems", {
            Text = "Auto Craft Items",
            Default = false,
            Tooltip = "Starts the selected recipes whenever you hold the ingredients and a crafting slot is free.",
            Callback = function(JP)
                aaF.SetAutoCraftItems(JP)
            end
        })
        CraftingGroup:AddDropdown("CraftRecipes", {
            Text = "Recipes",
            Values = aaF.RecipeValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(JR)
                aaF.SetCraftRecipes(JR)
            end
        })
        CraftingGroup:AddToggle("AutoClaimCrafts", {
            Text = "Auto Claim Crafts",
            Default = true,
            Tooltip = "Claims each finished craft as soon as its timer runs out, freeing the slot for the next recipe.",
            Callback = function(JT)
                aaF.SetAutoClaimCrafts(JT)
            end
        })
        local ChestsGroup = IT[4]:AddRightGroupbox("Chests", "package")
        ChestsGroup:AddToggle("AutoClaimChests", {
            Text = "Auto Claim All Chests",
            Default = false,
            Tooltip = "Claims the Grand, Beach and Hell chests as soon as each comes off cooldown.",
            Callback = function(JW)
                aaF.SetAutoClaimChests(JW)
            end
        })
        ChestsGroup:AddButton({
            Text = "Claim Chests Now",
            Func = function()
                aaF.ClaimChestsNow()
            end
        })
        ChestsGroup:AddDivider()
        ChestsGroup:AddToggle("AutoClaimGifts", {
            Text = "Auto Claim Free Gifts",
            Default = false,
            Tooltip = "Claims each playtime gift as soon as its timer is reached.",
            Callback = function(JZ)
                aaF.SetAutoClaimGifts(JZ)
            end
        })
        ChestsGroup:AddButton({
            Text = "Claim Free Gifts Now",
            Func = function()
                aaF.ClaimGiftsNow()
            end
        })
        ChestsGroup:AddDivider()
        ChestsGroup:AddButton({
            Text = ("Redeem All Codes (%d)"):format(aaF.CodeCount()),
            Func = function()
                if aaF.State.RedeemingCodes then
                    Library:Notify("Already redeeming codes")
                    return
                end
                Library:Notify("Redeeming codes, this takes a moment")
                aaF.RedeemCodes(function(J4, J5, J6)
                    if J6 then
                        Library:Notify(tostring(J6))
                        return
                    end
                    local aEE = J4 == 1 and "" or "s"
                    Library:Notify(("Redeemed %d new code%s out of %d tried"):format(J4, aEE, J5), 6)
                end)
            end
        })
        local GoldenMachineGroup = IT[2]:AddLeftGroupbox("Golden Machine", "sparkles")
        GoldenMachineGroup:AddToggle("AutoGolden", {
            Text = "Auto Golden Machine",
            Default = false,
            Tooltip = "Crafts the selected pets into Golden. Six copies is a guaranteed craft, fewer is a gamble and still consumes them.",
            Callback = function(J9)
                aaF.SetAutoGolden(J9)
            end
        })
        GoldenMachineGroup:AddDropdown("GoldenPets", {
            Text = "Pets",
            Values = aaF.PetValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(Kb)
                aaF.SetGoldenPets(Kb)
            end
        })
        GoldenMachineGroup:AddSlider("GoldenUse", {
            Text = "Pets Per Craft",
            Default = fns.aJS_27.GOLDEN_MAX_FEED,
            Min = 1,
            Max = fns.aJS_27.GOLDEN_MAX_FEED,
            Rounding = 0,
            Tooltip = "How many copies of each selected pet to feed per craft. Six is a guaranteed craft, fewer is a gamble and still consumes them.",
            Callback = function(Kd)
                aaF.SetGoldenUse(Kd)
            end
        })
        local PotionsGroup = IT[5]:AddRightGroupbox("Potions", "flask-conical")
        PotionsGroup:AddToggle("AutoUsePotions", {
            Text = "Auto Use Potions",
            Default = false,
            Tooltip = "Drinks the selected potions whenever you own one.",
            Callback = function(Kg)
                aaF.SetAutoUsePotions(Kg)
            end
        })
        PotionsGroup:AddDropdown("UsePotions", {
            Text = "Potions",
            Values = aaF.PotionValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(Ki)
                aaF.SetUsePotions(Ki)
            end
        })
        PotionsGroup:AddToggle("PotionSkipActive", {
            Text = "Skip While Boost Active",
            Default = true,
            Tooltip = "Waits for a potion's boost to run out before drinking another. Turn off to drink regardless.",
            Callback = function(Kk)
                aaF.SetPotionSkipActive(Kk)
            end
        })
        local MerchantGroup = IT[5]:AddLeftGroupbox("Merchant", "store")
        MerchantGroup:AddToggle("AutoBuyMerchant", {
            Text = "Auto Buy Merchant",
            Default = false,
            Tooltip = "Buys the active merchant's stock in whatever currency that offer wants, so the Dices Merchant's Pixel Coin dice are covered too. Only unlocked offers you can afford are bought.",
            Callback = function(Kn)
                aaF.SetAutoBuyMerchant(Kn)
            end
        })
        MerchantGroup:AddDropdown("MerchantTargets", {
            Text = "Offers",
            Values = aaF.MerchantValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Tooltip = "Leave empty to buy every offer the merchant has.",
            Callback = function(Kp)
                aaF.SetMerchantTargets(Kp)
            end
        })
        MerchantGroup:AddButton({
            Text = "Buy Merchant Stock Now",
            Func = function()
                aaF.BuyMerchantNow()
            end
        })
        local FishingGroup = IT[1]:AddRightGroupbox("Fishing", "fish")
        FishingGroup:AddToggle("AutoFish", {
            Text = "Auto Fish",
            Default = false,
            Tooltip = "Casts, hooks and reels for you. If you own the Auto Fish upgrade the game's own auto fishing is switched on instead.",
            Callback = function(Kt)
                aaF.SetAutoFish(Kt)
            end
        })
        local QuestsGroup = IT[4]:AddLeftGroupbox("Quests", "scroll-text")
        QuestsGroup:AddToggle("AutoClaimQuests", {
            Text = "Auto Claim Quests",
            Default = false,
            Callback = function(Kw)
                aaF.SetAutoClaimQuests(Kw)
            end
        })
        QuestsGroup:AddButton({
            Text = "Claim Quests Now",
            Func = function()
                aaF.ClaimQuestsNow()
            end
        })
        QuestsGroup:AddDivider()
        QuestsGroup:AddToggle("AutoClaimMilestones", {
            Text = "Auto Claim Milestones",
            Default = false,
            Callback = function(Kz)
                aaF.SetAutoClaimMilestones(Kz)
            end
        })
        QuestsGroup:AddButton({
            Text = "Claim Milestones Now",
            Func = function()
                aaF.ClaimMilestonesNow()
            end
        })
        local RngWorldGroup = IT[3]:AddLeftGroupbox("RNG World", "dices")
        local Label = RngWorldGroup:AddLabel(aaF.RngStatus(), true)
        RngWorldGroup:AddDivider()
        RngWorldGroup:AddToggle("AutoRoll", {
            Text = "Auto Roll",
            Default = false,
            Tooltip = "Rolls for pets inside RNG World and waits out the server's roll cooldown on its own.",
            Callback = function(KE)
                aaF.SetAutoRoll(KE)
            end
        })
        RngWorldGroup:AddToggle("AutoEnterRngWorld", {
            Text = "Enter RNG World Automatically",
            Default = true,
            Tooltip = "Walks Auto Roll into RNG World whenever you are outside it. RNG World must already be unlocked.",
            Callback = function(KG)
                aaF.SetAutoEnterRngWorld(KG)
            end
        })
        RngWorldGroup:AddDivider()
        RngWorldGroup:AddButton({
            Text = "Enter RNG World",
            Func = function()
                local aEI_1
                local aEH_1
                aEH_1, aEI_1 = aaF.EnterRngWorld()
                if not aEH_1 then
                    Library:Notify(tostring(aEI_1))
                end
            end
        })
        RngWorldGroup:AddButton({
            Text = "Leave RNG World",
            Func = function()
                local aEL_1
                local aEK_1
                aEK_1, aEL_1 = aaF.ExitRngWorld()
                if not aEK_1 then
                    Library:Notify(tostring(aEL_1))
                end
            end
        })
        RngWorldGroup:AddButton({
            Text = "Unlock RNG World (100B Clicks)",
            Func = function()
                local aEO_1
                local aEN_1
                aEN_1, aEO_1 = aaF.UnlockRngWorld()
                local aEP = aEN_1 and "RNG World is unlocked"
                local aEN_2 = aEP or tostring(aEO_1)
                Library:Notify(aEN_2)
            end
        })
        local RngUpgradesGroup = IT[3]:AddRightGroupbox("RNG Upgrades", "trending-up")
        RngUpgradesGroup:AddToggle("AutoBuyRngUpgrades", {
            Text = "Auto Buy RNG Upgrades",
            Default = false,
            Tooltip = "Spends Pixel Coins on the selected incremental boards, buying as many levels at once as you can afford.",
            Callback = function(KW)
                aaF.SetAutoBuyRngUpgrades(KW)
            end
        })
        RngUpgradesGroup:AddDropdown("RngUpgradeTargets", {
            Text = "Upgrades",
            Values = aaF.RngUpgradeValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(KY)
                aaF.SetRngUpgradeTargets(KY)
            end
        })
        RngUpgradesGroup:AddButton({
            Text = "Buy Upgrades Now",
            Func = function()
                aaF.BuyRngUpgradesNow()
            end
        })
        RngUpgradesGroup:AddDivider()
        RngUpgradesGroup:AddToggle("AutoRngRebirth", {
            Text = "Auto RNG Rebirth",
            Default = false,
            Tooltip = "RNG rebirths as soon as every incremental upgrade is maxed and you hold the Pixel Coin cost. Each rebirth resets those upgrades and raises your Pixel Coin and rolling luck multipliers.",
            Callback = function(K0)
                aaF.SetAutoRngRebirth(K0)
            end
        })
        RngUpgradesGroup:AddButton({
            Text = "RNG Rebirth Now",
            Func = function()
                aaF.RngRebirthNow()
            end
        })
        RngUpgradesGroup:AddDivider()
        RngUpgradesGroup:AddToggle("AutoBuySkillTree", {
            Text = "Auto Buy RNG Skill Tree",
            Default = false,
            Tooltip = "Buys every RNG skill tree node you can afford and have unlocked, then keeps going as each purchase opens the next one.",
            Callback = function(K3)
                aaF.SetAutoBuySkillTree(K3)
            end
        })
        RngUpgradesGroup:AddButton({
            Text = "Buy Skill Nodes Now",
            Func = function()
                aaF.BuySkillTreeNow()
            end
        })
        local EnchantsGroup = IT[3]:AddLeftGroupbox("Enchants", "wand-sparkles")
        EnchantsGroup:AddToggle("AutoEquipEnchants", {
            Text = "Auto Equip Enchants",
            Default = false,
            Tooltip = "Fills your free enchant slots with the selected enchants as soon as you own them.",
            Callback = function(K7)
                aaF.SetAutoEquipEnchants(K7)
            end
        })
        EnchantsGroup:AddDropdown("EnchantTargets", {
            Text = "Enchants",
            Values = aaF.EnchantValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(K9)
                aaF.SetEnchantTargets(K9)
            end
        })
        EnchantsGroup:AddButton({
            Text = "Equip Enchants Now",
            Func = function()
                aaF.EquipEnchantsNow()
            end
        })
        local EventRewardsGroup = IT[3]:AddRightGroupbox("Event Rewards", "gift")
        EventRewardsGroup:AddToggle("AutoClaimRngRewards", {
            Text = "Auto Claim Event Rewards",
            Default = false,
            Tooltip = "Claims the permanent x2 Luck reward once its playtime requirement is met and uses any free reward wheel spins.",
            Callback = function(Ld)
                aaF.SetAutoClaimRngRewards(Ld)
            end
        })
        EventRewardsGroup:AddButton({
            Text = "Claim Rewards Now",
            Func = function()
                aaF.ClaimRngRewardsNow()
            end
        })
        Lk = task.spawn(function()
            while true do
                task.wait(0.5)
                if Library.Unloaded then
                    break
                end
                Label2:SetText(aaF.GetStatus())
                Label:SetText(aaF.RngStatus())
            end
        end)
        aaF.Track(function()
            if coroutine.status(Lk) ~= "dead" then
                pcall(task.cancel, Lk)
            end
        end)
    end
    IY()
    local function Lm()
        local aE2
        aE2 = nil
        local Label
        local WebhookGroup = IS[4]:AddLeftGroupbox("Webhook", "webhook")
        WebhookGroup:AddInput("WebhookUrl", {
            Text = "Webhook URL",
            Default = "",
            Placeholder = "https://discord.com/api/webhooks/...",
            Tooltip = "Paste a Discord webhook URL. It is never written into shared config files.",
            Callback = function(Lp)
                aaF.SetWebhookUrl(Lp)
            end
        })
        WebhookGroup:AddToggle("WebhookEnabled", {
            Text = "Enable Webhook",
            Default = false,
            Tooltip = "Posts a message every time you obtain a pet that matches the events below.",
            Callback = function(Ls)
                aaF.SetWebhookEnabled(Ls)
            end
        })
        WebhookGroup:AddDivider()
        WebhookGroup:AddInput("WebhookPingId", {
            Text = "Discord User ID",
            Default = "",
            Numeric = true,
            Placeholder = "Your Discord ID",
            Callback = function(Lu)
                aaF.SetWebhookPingId(Lu)
            end
        })
        WebhookGroup:AddToggle("WebhookPing", {
            Text = "Ping Me",
            Default = false,
            Tooltip = "Mentions the user ID above on every message.",
            Callback = function(Lw)
                aaF.SetWebhookPing(Lw)
            end
        })
        WebhookGroup:AddDivider()
        Label = WebhookGroup:AddLabel(aaF.WebhookStatus(), true)
        WebhookGroup:AddButton({
            Text = "Send Test Message",
            Func = function()
                aaF.SendWebhookTest(function(LA, LB)
                    if LA then
                        Library:Notify("Webhook test delivered")
                    else
                        local aEW = LB or "Webhook test failed"
                        Library:Notify(tostring(aEW), 6)
                    end
                end)
            end
        })
        local EventsGroup = IS[4]:AddRightGroupbox("Events", "bell")
        local aE5 = {
            { index = "WebhookHatched", kind = "Normal", text = "Pets Hatched" },
            { index = "WebhookGolden", kind = "Golden", text = "Golden Crafts" },
            { index = "WebhookRainbow", kind = "Rainbow", text = "Rainbow Claims" },
            { index = "WebhookDarkMatter", kind = "DarkMatter", text = "Dark Matter Crafts" }
        }
        for i, v in ipairs(aE5) do
            local aFc = v
            EventsGroup:AddToggle(aFc.index, {
                Text = aFc.text,
                Default = true,
                Callback = function(LJ)
                    aaF.SetWebhookEvent(aFc.kind, LJ)
                end
            })
        end
        EventsGroup:AddDropdown("WebhookRarities", {
            Text = "Rarities",
            Values = aaF.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Tooltip = "Leave empty to report every rarity.",
            Callback = function(LM)
                aaF.SetWebhookRarities(LM)
            end
        })
        aE2 = task.spawn(function()
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label:SetText(aaF.WebhookStatus())
            end
        end)
        aaF.Track(function()
            if coroutine.status(aE2) ~= "dead" then
                pcall(task.cancel, aE2)
            end
        end)
    end
    Lm()
    local function LT()
        local aFs
        local aFz
        local aFv
        local aFp
        aFp = nil
        aFs = nil
        aFv = nil
        aFz = nil
        local Label3, aFr, aFt, Label, aFw, aFx, aFy, aFA, Label2
        aFz = function(LV)
            return (tostring(LV):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        aFs = function(LX, LY)
            return string.format('<font color="%s">%s</font>', LY, aFz(LX))
        end
        aFA = function(L0, L1, L2)
            return string.format("<b>%s</b> %s %s", L0, aFs("-", "#5a6070"), aFs(L1, L2))
        end
        aFy = "#7fd47f"
        local aFC = "#6ec1ff"
        local aFD = "#8b93a3"
        aFt = "#e8a34d"
        local aFE = aaF.Support()
        local aFF = #aFE == 0 and "ready"
        local aFG = aFF or "limited: " .. table.concat(aFE, ", ")
        aFx = "Unknown"
        pcall(function()
            local aFe_1
            local aFd_1
            if aJS_73(identifyexecutor) then
                aFe_1, aFd_1 = identifyexecutor()
                local aFf = aFe_1 ~= ""
                local aFg = type(aFe_1) == "string" and aFf
                if aFg then
                    local aFf_1 = type(aFd_1) == "string" and aFd_1 ~= "" and aFe_1 .. " " .. aFd_1
                    aFx = aFf_1 or aFe_1
                end
            end
        end)
        aFp = os.clock()
        aFw = function()
            local aFi = math.floor(os.clock() - aFp)
            if aFi < 60 then
                return aFi .. "s"
            elseif aFi < 3600 then
                return string.format("%dm %ds", aFi // 60, aFi % 60)
            else
                return string.format("%dh %dm", aFi // 3600, aFi % 3600 // 60)
            end
        end
        local UserGroup = IS[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(aFA("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, aFy), true)
        UserGroup:AddLabel(aFA("UserId", tostring(LocalPlayer.UserId), aFC), true)
        UserGroup:AddLabel(aFA("Executor", aFx .. "  " .. aFG, aFy), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(aFA("Session", aFw(), aFt), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                IF(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                IF("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = IS[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(aFA("Game", Is, aFC), true)
        Label2 = SessionGroup:AddLabel(aFA("Players", "0/0", aFy), true)
        aFr = tostring(game.JobId)
        local aFC_1 = #aFr > 18 and string.sub(aFr, 1, 18) .. "..."
        local aFF_2 = aFC_1 or aFr
        SessionGroup:AddLabel(aFA("Job", aFF_2, aFD), true)
        Label = SessionGroup:AddLabel(aFA("Ping", "0 ms", aFt), true)
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
                IF(aFr, "Copied Job ID")
            end
        })
        aFv = task.spawn(function()
            local aFl_1
            local aFk_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(aFA("Session", aFw(), aFt))
                Label2:SetText(aFA("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), aFy))
                aFk_1, aFl_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local aFk_2 = aFk_1 and aFl_1 .. " ms" or "n/a"
                Label:SetText(aFA("Ping", aFk_2, aFt))
            end
        end)
        aaF.Track(function()
            if coroutine.status(aFv) ~= "dead" then
                pcall(task.cancel, aFv)
            end
        end)
        local SocialsGroup = IS[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                IF(Iv, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                IF(Iw, "Copied website link")
            end
        })
    end
    LT()
    local function M8()
        local Nu
        local Nt
        local Nv
        local Nw
        local MovementGroup = IS[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local TeleportGroup = IS[3]:AddLeftGroupbox("Teleport", "map-pin")
        local function Nc(Nd)
            local aFJ_1
            local aFI_1
            aFI_1, aFJ_1 = Nd()
            if not aFI_1 then
                local aFI_2 = aFJ_1 or "Teleport failed"
                Library:Notify(tostring(aFI_2))
            end
        end
        TeleportGroup:AddDropdown("TeleportIsland", {
            Text = "Island",
            Values = aaF.IslandValues(),
            Default = nil,
            Multi = false,
            AllowNull = true,
            Callback = function(Nj)
                aaF.SetTeleportIsland(Nj)
            end
        })
        TeleportGroup:AddButton({
            Text = "Teleport to Island",
            Func = function()
                Nc(aaF.TeleportToIsland)
            end
        })
        TeleportGroup:AddDivider()
        TeleportGroup:AddDropdown("TeleportNpc", {
            Text = "NPC",
            Values = aaF.NpcValues(),
            Default = nil,
            Multi = false,
            AllowNull = true,
            Searchable = true,
            Callback = function(Nn)
                aaF.SetTeleportNpc(Nn)
            end
        })
        TeleportGroup:AddButton({
            Text = "Teleport to NPC",
            Func = function()
                Nc(aaF.TeleportToNpc)
            end
        })
        local FlyGroup = IS[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        Nt = {}
        Nv = {}
        Nu = {}
        local Ns = {}
        Nw = {}
        local function Nx()
            for k, v in Nt do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(Nt)
        end
        local function NB()
            for k, v in Nu do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(Nu)
        end
        local function NF()
            for k, v in Nv do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(Nv)
        end
        local function NJ(NK)
            if not NK:IsA("ProximityPrompt") then
                return
            end
            if Nw[NK] == nil then
                Nw[NK] = {
                    HoldDuration = NK.HoldDuration,
                    MaxActivationDistance = NK.MaxActivationDistance,
                    RequiresLineOfSight = NK.RequiresLineOfSight
                }
            end
            NK.HoldDuration = 0
            NK.MaxActivationDistance = 50
            NK.RequiresLineOfSight = false
        end
        local function NM()
            for k, v in Nw do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(Nw)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                NF()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                NB()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                Nx()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(NJ, v)
                end
            else
                NM()
            end
        end)
        table.insert(Ns, Workspace.DescendantAdded:Connect(function(N4)
            if Toggles.InstantProximityPrompt.Value then
                NJ(N4)
            end
        end))
        table.insert(Ns, acy.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if Nt[v] == nil then
                        Nt[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(Ns, acm.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local aGB = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and aGB then
                aGB:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(Ns, acy.RenderStepped:Connect(function(Op)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local aGE = Character and Character:FindFirstChildOfClass("Humanoid")
            local aGF = Character
            if aGF then
                aGF = Character:FindFirstChild("HumanoidRootPart")
            end
            local aGD_1 = aGF
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and aGE then
                if Nu[aGE] == nil then
                    Nu[aGE] = aGE.WalkSpeed
                end
                aGE.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and aGD_1 and aGE and CurrentCamera then
                if Nv[aGE] == nil then
                    Nv[aGE] = aGE.PlatformStand
                end
                aGE.PlatformStand = true
                local aGF_4 = Vector3.zero
                if not acm:GetFocusedTextBox() then
                    if acm:IsKeyDown(Enum.KeyCode.W) then
                        aGF_4 += CurrentCamera.CFrame.LookVector
                    end
                    local aGL = if acm:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                    if aGL == 1 then
                        aGF_4 -= CurrentCamera.CFrame.LookVector
                    end
                    local aGO = if acm:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                    if aGO == 1 then
                        aGF_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if acm:IsKeyDown(Enum.KeyCode.D) then
                        aGF_4 += CurrentCamera.CFrame.RightVector
                    end
                    if acm:IsKeyDown(Enum.KeyCode.Space) then
                        aGF_4 += Vector3.new(0, 1, 0)
                    end
                    if acm:IsKeyDown(Enum.KeyCode.LeftControl) then
                        aGF_4 -= Vector3.new(0, 1, 0)
                    end
                end
                aGD_1.AssemblyLinearVelocity = Vector3.zero
                if aGF_4.Magnitude > 0 then
                    aGD_1.CFrame = aGD_1.CFrame + aGF_4.Unit * Options.FlySpeed.Value * Op
                end
            end
        end))
        aaF.Track(function()
            for k, v in Ns do
                v:Disconnect()
            end
            Nx()
            NB()
            NF()
            NM()
        end)
    end
    M8()
    local function OF()
        local aIg
        local aIb
        local aH8
        aH8 = nil
        aIb = nil
        aIg = nil
        local aH4, aH5, aH6, aH7, aH9, aIa, aIc, aId, Label, aIf, aIh, aIi, aIj, aIk, aIl
        aIf = {}
        aH7 = {}
        aIl = nil
        aIi = 0
        aH5 = 0
        aIa = false
        aIc = os.clock()
        local MenuGroup = IS[5]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        aIj = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local aGX = not CurrentCamera or not aJS_73(VirtualUser.CaptureController) or not aJS_73(VirtualUser.ClickButton2)
            if aGX then
                return false
            end
            local aGX_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not aGX_1 then
                return false
            end
            aH5 += 1
            aIc = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. aH5)
            end)
            return true
        end
        aId = function(O8)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not O8)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not O8
                end
            end)
            if not O8 then
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
        aH9 = function(Po)
            if Po.ClassName == "ParticleEmitter" or Po.ClassName == "Trail" or Po.ClassName == "Smoke" or Po.ClassName == "Fire" or Po.ClassName == "Sparkles" or Po.ClassName == "Explosion" or Po.ClassName == "Beam" then
                if aIf[Po] == nil then
                    aIf[Po] = Po.Enabled
                end
                pcall(function()
                    Po.Enabled = false
                end)
            end
        end
        aH6 = function()
            for k, v in aIf do
                local aHh = k
                local aHj = v
                if aHh.Parent then
                    pcall(function()
                        aHh.Enabled = aHj
                    end)
                end
            end
            table.clear(aIf)
            if aIl then
                pcall(function()
                    settings().Rendering.QualityLevel = aIl.Quality
                end)
                Lighting.GlobalShadows = aIl.Shadows
                Lighting.FogEnd = aIl.Fog
                aIl = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(PD)
                pcall(function()
                    acy:Set3dRenderingEnabled(not PD)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(PI)
                if PI then
                    if not aIl then
                        aIl = {
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
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(aH9, v)
                    end
                else
                    aH6()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        aId(true)
        local ScriptGroup = IS[5]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            aId(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            aId(true)
        end
        table.insert(aH7, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                aIj()
            end
        end))
        table.insert(aH7, Workspace.DescendantAdded:Connect(function(P0)
            if Toggles.FpsBoost.Value then
                aH9(P0)
            end
        end))
        aIk = function(P4)
            local aHA = aIa
            local aHF = if aHA then 1 else 0
            local aHD = 2990 * aHF + 2645 * (1 - aHF)
            local aHE = 1068 * aHF + 2851 * (1 - aHF)
            if not ((aHD * 1285 + aHE * 200 + aHD * aHE) % 16777213 == 7249070) then
                aHA = Library.Unloaded
            end
            if not aHA then
                aHA = not Toggles.AutoReconnect.Value
            end
            if aHA then
                return
            end
            aIa = true
            local aHz = aIi
            local aHA_1 = pcall(function()
                if P4 then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not aHA_1 then
                aIa = false
                if not P4 and aHz == aIi then
                    task.delay(1.5, function()
                        if aHz == aIi then
                            aIk(true)
                        end
                    end)
                end
            end
        end
        table.insert(aH7, TeleportService.TeleportInitFailed:Connect(function(Qm)
            local aHH
            if Qm == LocalPlayer and aIa then
                aIa = false
                aHH = aIi
                task.delay(3, function()
                    if aHH == aIi then
                        aIk(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local aHM = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not aHM then
                return
            end
            table.insert(aH7, aHM.ChildAdded:Connect(function(QB)
                if QB.Name == "ErrorPrompt" then
                    aIk(false)
                end
            end))
        end)
        aIb = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/csim.luau"
        local aIm_2 = typeof(queue_on_teleport) == "function" and queue_on_teleport
        local aIn = aIm_2
        if not aIn then
            local aIm_3 = typeof(queueonteleport) == "function" and queueonteleport
            aIn = aIm_3
        end
        aIg = false
        aH8 = aIn
        aH4 = function()
            if type(aH8) ~= "function" then
                return false
            elseif aIg then
                return true
            else
                aIg = pcall(aH8, ('if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("%s"))()'):format(aIb))
                return aIg
            end
        end
        Toggles.AutoExecute:OnChanged(function()
            if not Toggles.AutoExecute.Value then
                return
            end
            if not aH4() then
                Library:Notify("queue_on_teleport is not supported by your executor")
            end
        end)
        table.insert(aH7, LocalPlayer.OnTeleport:Connect(function(QS)
            if QS ~= Enum.TeleportState.Started then
                return
            end
            local aHU = not ZV() or Library.Unloaded or not Toggles.AutoExecute.Value
            if aHU then
                return
            end
            aH4()
        end))
        aIh = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    aId(true)
                end
                local aHW = Toggles.AntiAfk.Value and os.clock() - aIc >= 60
                if aHW then
                    aIj()
                end
                task.wait(1)
            end
        end)
        aaF.Track(function()
            aIi += 1
            for k, v in aH7 do
                v:Disconnect()
            end
            pcall(task.cancel, aIh)
            aId(false)
            aH6()
            pcall(function()
                acy:Set3dRenderingEnabled(true)
            end)
        end)
    end
    OF()
    local function Rg()
        local aJe, aJf, aJg, aJh
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(IS[5])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource", "WebhookUrl", "WebhookPingId" })
        SaveManager:SetFolder("OuroborosHub/ClickerSimulator")
        local aJi = SaveManager:BuildConfigSection(IS[5])
        aJf = function(Rn, Ro)
            local aIq_1 = (Rn == "Toggle" and Toggles or Options)[Ro]
            local aIp_2 = type(aIq_1) == "table" and aIq_1.Type == Rn
            return aIp_2 and aIq_1 or nil
        end
        aJh = function(Rx, Ry)
            local Type = Ry.Type
            if Type == "Toggle" then
                return { idx = Rx, type = "Toggle", value = Ry.Value == true }
            elseif Type == "Slider" then
                return { idx = Rx, type = "Slider", value = tostring(Ry.Value) }
            elseif Type == "Dropdown" then
                return { idx = Rx, type = "Dropdown", multi = Ry.Multi == true, value = Ry.Value }
            elseif Type == "Input" then
                local aIu = Ry.Value or ""
                return { idx = Rx, type = "Input", text = tostring(aIu) }
            elseif Type == "ColorPicker" then
                return { idx = Rx, type = "ColorPicker", value = Ry.Value:ToHex(), transparency = Ry.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = Rx,
                    type = "KeyPicker",
                    mode = Ry.Mode,
                    key = Ry.Value,
                    modifiers = Ry.Modifiers,
                    toggled = Ry.Toggled
                }
            else
                return nil
            end
        end
        aJg = function()
            local aIA = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local aIB = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if aIB then
                        local aIB_1 = aJh(k, v)
                        if aIB_1 then
                            aIA[#aIA + 1] = aIB_1
                        end
                    end
                end
            end
            table.sort(aIA, function(RI, RJ)
                if RI.type ~= RJ.type then
                    return RI.type < RJ.type
                end
                return RI.idx < RJ.idx
            end)
            return { objects = aIA }
        end
        aJe = function(RL)
            local aIU
            aIU = nil
            local aIV = type(RL) ~= "table" or type(RL.idx) ~= "string" or type(RL.type) ~= "string" or SaveManager.Ignore[RL.idx]
            if aIV then
                return false
            end
            aIU = aJf(RL.type, RL.idx)
            if not aIU then
                return false
            end
            local aIV_1 = pcall(function()
                if RL.type == "Input" then
                    if type(RL.text) ~= "string" then
                        return
                    end
                    aIU:SetValue(RL.text)
                elseif RL.type == "ColorPicker" then
                    aIU:SetValueRGB(Color3.fromHex(RL.value), RL.transparency)
                elseif RL.type == "KeyPicker" then
                    aIU:SetValue({ RL.key, RL.mode, RL.modifiers })
                    if RL.mode == "Toggle" and RL.toggled ~= nil then
                        aIU.Toggled = RL.toggled
                        aIU:Update()
                    end
                else
                    aIU:SetValue(RL.value)
                end
            end)
            return aIV_1
        end
        aJi:AddDivider()
        aJi:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", AllowEmpty = true })
        aJi:AddButton("Export Config to Clipboard", function()
            local aIY_1
            local aIX_1
            aIX_1, aIY_1 = pcall(HttpService.JSONEncode, HttpService, aJg())
            if aIX_1 then
                local aIX_2 = aJS_73(setclipboard) and setclipboard
                local aIZ = aIX_2
                if not aIZ then
                    local aIX_3 = aJS_73(toclipboard) and toclipboard
                    aIZ = aIX_3 or nil
                end
                local aIX_4 = aIZ
                local aIZ_1 = type(aIX_4) == "function" and pcall(aIX_4, aIY_1)
                if aIZ_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        aJi:AddButton("Import Config from Clipboard Text", function()
            local aI3_1
            local aI1 = Options.SaveManager_ImportSource.Value or ""
            local aI1_1
            local aI2 = tostring(aI1):match("^%s*(.-)%s*$")
            if aI2 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #aI2 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            aI1_1, aI3_1 = pcall(HttpService.JSONDecode, HttpService, aI2)
            local aI2_1 = not aI1_1 or type(aI3_1) ~= "table" or type(aI3_1.objects) ~= "table"
            if aI2_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #aI3_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local aI1_2 = 0
            for i, v in ipairs(aI3_1.objects) do
                if aJe(v) then
                    aI1_2 += 1
                end
            end
            if aI1_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local aI3_2 = aI1_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(aI1_2, aI3_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.HatchEggs then
            aaF.SetHatchEggs(Options.HatchEggs.Value)
        end
        if Options.HatchAmount then
            aaF.SetHatchAmount(Options.HatchAmount.Value)
        end
        if Options.HatchDelay then
            aaF.SetHatchDelay(Options.HatchDelay.Value)
        end
        if Options.TeleportIsland then
            aaF.SetTeleportIsland(Options.TeleportIsland.Value)
        end
        if Options.TeleportNpc then
            aaF.SetTeleportNpc(Options.TeleportNpc.Value)
        end
        if Options.ShopTargets then
            aaF.SetShopTargets(Options.ShopTargets.Value)
        end
        if Options.ClicksPerSecond then
            aaF.SetClicksPerSecond(Options.ClicksPerSecond.Value)
        end
        if Options.RebirthTarget then
            aaF.SetRebirthTarget(Options.RebirthTarget.Value)
        end
        if Toggles.AutoEquipBest then
            aaF.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoClaimQuests then
            aaF.SetAutoClaimQuests(Toggles.AutoClaimQuests.Value)
        end
        if Toggles.AutoClaimMilestones then
            aaF.SetAutoClaimMilestones(Toggles.AutoClaimMilestones.Value)
        end
        if Options.GoldenPets then
            aaF.SetGoldenPets(Options.GoldenPets.Value)
        end
        if Toggles.AutoClaimChests then
            aaF.SetAutoClaimChests(Toggles.AutoClaimChests.Value)
        end
        if Options.GoldenUse then
            aaF.SetGoldenUse(Options.GoldenUse.Value)
        end
        if Options.UsePotions then
            aaF.SetUsePotions(Options.UsePotions.Value)
        end
        if Toggles.PotionSkipActive then
            aaF.SetPotionSkipActive(Toggles.PotionSkipActive.Value)
        end
        if Toggles.AutoUsePotions then
            aaF.SetAutoUsePotions(Toggles.AutoUsePotions.Value)
        end
        if Toggles.AutoClaimGifts then
            aaF.SetAutoClaimGifts(Toggles.AutoClaimGifts.Value)
        end
        if Toggles.AutoGolden then
            aaF.SetAutoGolden(Toggles.AutoGolden.Value)
        end
        if Toggles.AutoBuyRebirthShop then
            aaF.SetAutoBuyRebirthShop(Toggles.AutoBuyRebirthShop.Value)
        end
        if Toggles.AutoRebirth then
            aaF.SetAutoRebirth(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoHatch then
            aaF.SetAutoHatch(Toggles.AutoHatch.Value)
        end
        if Toggles.AutoClick then
            aaF.SetAutoClick(Toggles.AutoClick.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Rg()
end
if not aJS_110 and (not aJS_110) and 13 or not (not aJS_110 and (not aJS_110) and 13) then
    aJS_110()
else
    aJS_110()
end
