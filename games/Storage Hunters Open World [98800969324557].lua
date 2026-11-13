local fns = {}
fns.cgs_1 = nil
fns.cgs_2 = nil
fns.cgs_3 = nil
fns.cgs_5 = nil
fns.cgs_6 = nil
fns.cgs_7 = nil
fns.cgs_8 = nil
fns.cgs_9 = nil
fns.cgs_12 = nil
fns.cgs_13 = nil
fns.cgs_14 = nil
fns.cgs_16 = nil
fns.cgs_17 = nil
fns.cgs_20 = nil
fns.cgs_21 = nil
fns.cgs_22 = nil
fns.cgs_23 = nil
fns.cgs_24 = nil
fns.cgs_25 = nil
fns.cgs_27 = nil
fns.cgs_28 = nil
fns.cgs_29 = nil
fns.cgs_32 = nil
fns.cgs_33 = nil
fns.cgs_34 = nil
fns.cgs_36 = nil
fns.cgs_37 = nil
fns.cgs_39 = nil
fns.MutatorModule = nil
fns.cgs_41 = nil
fns.cgs_42 = nil
fns.cgs_44 = nil
fns.cgs_48 = nil
fns.cgs_49 = nil
fns.cgs_45 = nil
fns.cgs_46 = nil
fns.cgs_51 = nil
fns.cgs_53 = nil
fns.cgs_54 = nil
fns.cgs_56 = nil
fns.cgs_57 = nil
fns.cgs_58 = nil
fns.cgs_60 = nil
fns.cgs_61 = nil
fns.cgs_62 = nil
fns.cgs_63 = nil
fns.cgs_64 = nil
fns.cgs_65 = nil
fns.cgs_66 = nil
fns.cgs_68 = nil
fns.cgs_69 = nil
fns.GameConfig = nil
fns.cgs_73 = nil
fns.cgs_74 = nil
fns.cgs_75 = nil
fns.cgs_77 = nil
fns.Options = nil
fns.cgs_80 = nil
fns.cgs_81 = nil
fns.cgs_82 = nil
fns.cgs_83 = nil
fns.cgs_85 = nil
fns.cgs_86 = nil
fns.cgs_88 = nil
fns.cgs_89 = nil
fns.cgs_90 = nil
fns.cgs_93 = nil
fns.cgs_94 = nil
fns.cgs_95 = nil
fns.cgs_97 = nil
fns.cgs_98 = nil
fns.cgs_100 = nil
fns.cgs_101 = nil
fns.cgs_102 = nil
fns.cgs_103 = nil
fns.cgs_105 = nil
fns.Toggles2 = nil
fns.cgs_107 = nil
fns.cgs_109 = nil
fns.cgs_110 = nil
fns.cgs_112 = nil
fns.cgs_114 = nil
fns.cgs_115 = nil
local a1l
local a3K
local a1K
local a28
local a18
local a4x
local a3x
local a2x
local a3W
local a1x
local a2W
local a1W
local a4k
local a3k
local a2k
local a1k
local a3J
local a2J
local a1J
local a37
local a27
local a17
local Garages
local a3w
local a2w
local a1w
local a3V
local Items
local a1V
local a3j
local a2j
local a3I
local a2I
local a1I
local a36
local a26
local a16
local a3v
local a2v
local a4i
local a3i
local a2i
local a1i
local a3H
local a2H
local a35
local a1H
local a25
local a15
local Furniture
local a1u
local folder
local a2T
local a1T
local a3h
local a2h
local a1h
local a3G
local a2G
local a24
local a14
local a4t
local a3t
local a2t
local a1t
local a3S
local a2S
local a4g
local a2g
local a3F
local a1g
local a2F
local a1F
local a33
local a23
local a13
local a4s
local a2s
local a1s
local a3R
local a2R
local a1R
local a4f
local a3f
local a2f
function fns.fn12()
    local b_l = (fns.cgs_44.CleanUpWorldEnabled()) or fns.cgs_44.RemoveNpcsEnabled()
    return b_l
end
function fns.fn18(gm)
    local a9u = fns.Toggles2[fns.cgs_44.ALWAYS_BID_PREFIX .. gm]
    return a9u ~= nil and a9u.Value == true
end
function fns.fn61()
    if not fns.Toggles2.AutoUnfavourite.Value then
        return
    end
    local bOy = fns.cgs_64(fns.Options.UnfavouriteItems.Value)
    local bOz = fns.cgs_64(fns.Options.UnfavouriteMutations.Value)
    local bOA = not next(bOy)
    if bOA ~= false then
        bOA = not next(bOz)
    end
    if bOA then
        return
    end
    local bOA_1 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bOA_1) ~= "table" then
        return
    end
    for k, v in pairs(bOA_1) do
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoUnfavourite.Value then
            return
        end
        local bOA_3 = fns.cgs_101(v.ItemId)
        if bOA_3 and v.Favorited == true then
            local bOB_1 = next(bOy) ~= nil and bOy[bOA_3.Name] == true
            local bOC = bOB_1
            local bOB_2 = not bOC
            if bOB_2 ~= false then
                bOB_2 = next(bOz)
            end
            if bOB_2 then
                for k in pairs(a2w(v)) do
                    if bOz[k] then
                        bOC = true
                        break
                    end
                end
            end
            local bOB_3 = bOC and not fns.cgs_44.AutoFavouriteMatch(v)
            if bOB_3 then
                local bOB_4 = a18(fns.cgs_44.ToggleFavoriteItem, k)
                task.wait(0.4)
                if bOB_4 ~= false then
                    fns.a39.status = "unfavourited " .. bOA_3.Name
                end
            end
        end
    end
end
function fns.fn145()
    local StopNpcBidMode = fns.Options.StopNpcBidMode
    return StopNpcBidMode ~= nil and StopNpcBidMode.Value == "Potentially Bugged (Faster)"
end
function fns.autoBankHeistLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoBankHeist.Value then
            pcall(fns.cgs_44.DoBankHeist)
        end
        if fns.Toggles2.AutoWarehouseOrders.Value then
            pcall(fns.cgs_44.DoWarehouseOrders)
        end
        task.wait(0.5)
    end
end
function fns.fn155(Pj, Pk)
    local bCP = Pk and fns.cgs_64(Pk.Value)
    local bCP_1 = bCP or {}
    if not next(bCP_1) then
        return false
    end
    local bCQ_1 = {}
    for k in pairs(bCP_1) do
        bCQ_1[tostring(k):lower()] = true
    end
    for k in pairs(a2w(Pj)) do
        if bCQ_1[tostring(k):lower()] then
            return true
        end
    end
    return false
end
function fns.fn165()
    local bLP_1
    local bLO_1
    fns.a39.nextGroundPlaceAt = os.clock() + 3
    bLO_1, bLP_1 = a2i.ShouldYield()
    if bLO_1 then
        fns.a39.groundStatus = "waiting for " .. bLP_1
        return
    end
    local bLO_2 = fns.cgs_64(fns.Options.GroundPlaceTypes.Value)
    local bLP_2 = fns.cgs_64(fns.Options.GroundPlaceRarities.Value)
    local bLQ = fns.cgs_64(fns.Options.GroundPlaceItems.Value)
    local bLR = fns.cgs_64(fns.Options.GroundPlaceSkipItems.Value)
    local bLR_2
    local bLS = next(bLO_2) ~= nil
    local bLS_2, bLS_5
    local bLT = next(bLP_2) ~= nil
    local bLT_2
    local bLU = next(bLQ) ~= nil
    local bLU_3
    local bLV = a3G(fns.Options.GroundPlaceMinValue.Value, 0)
    local bLV_2, bLV_4
    local bLW = a3G(fns.Options.GroundPlaceMaxValue.Value, 0)
    local bLW_1
    if bLW <= 0 then
        bLW = math.huge
    end
    local bLX = not bLT
    local bLY = not bLS
    if bLY ~= false then
        bLY = bLX
    end
    if bLY and not bLU then
        fns.a39.groundStatus = "choose types, rarities or specific items"
        return
    end
    local bLU_1 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bLU_1) ~= "table" then
        fns.a39.groundStatus = "inventory unavailable"
        return
    end
    local bLX_2 = tonumber(fns.cgs_74:GetAttribute("InventoryCount"))
    if not bLX_2 then
        bLX_2 = 0
        for k in pairs(bLU_1) do
            bLX_2 += 1
        end
    end
    local bLY_1 = tonumber(fns.cgs_74:GetAttribute("InventoryCap"))
    if not bLY_1 or bLY_1 <= 0 then
        fns.a39.groundStatus = "inventory capacity unavailable"
        return
    end
    local bLZ_2 = a3G(fns.Options.GroundPlaceAtPercent.Value, 90)
    local bL_ = bLX_2 / bLY_1 * 100
    if bL_ < bLZ_2 then
        fns.a39.groundStatus = ("waiting at %d%% full"):format(math.floor(bL_ + 0.5))
        return
    end
    local bLY_2 = fns.cgs_20()
    local bLZ_3 = bLY_2 and fns.cgs_44.GroundPlacement.PlotFrame(bLY_2)
    if not bLY_2 or not bLZ_3 then
        fns.a39.groundStatus = "no owned plot"
        return
    end
    local bLZ_5 = fns.cgs_44.GroundPlacement.PlotData(bLY_2)
    if not bLZ_5 then
        fns.a39.groundStatus = "plot tiles unavailable"
        return
    end
    local bL0_1 = fns.cgs_44.TrophyConfig and tostring(fns.cgs_44.TrophyConfig.TrophyItemId)
    local bL1 = bL0_1 or "376"
    local bL0_2 = {}
    for k, v in pairs(bLU_1) do
        local bLU_2 = fns.cgs_101(v.ItemId)
        local bL1_1 = a3V(v)
        local bL3 = bLU_2 and not bLR[bLU_2.Name]
        if bL3 then
            local bL4_1 = bLQ[bLU_2.Name]
            if not bL4_1 then
                local bL6 = bLS or bLT
                if bL6 then
                    local bL5_1 = not bLS or fns.cgs_44.GroundPlacement.MatchesType(bLU_2, bLO_2)
                    bL6 = bL5_1
                end
                if bL6 then
                    bL6 = not bLT or bLP_2[bLU_2.Rarity]
                end
                bL4_1 = bL6
            end
            bL3 = bL4_1
        end
        if bL3 then
            bL3 = bL1_1 >= bLV
        end
        if bL3 then
            bL3 = bL1_1 <= bLW
        end
        if bL3 then
            bL3 = not fns.cgs_23(v)
        end
        if bL3 then
            local bL3_1 = #bL0_2 + 1
            local bL4_2 = v.IsTrophy == true or tostring(v.ItemId) == bL1
            bL0_2[bL3_1] = { Guid = k, Entry = v, Def = bLU_2, Value = bL1_1, IsTrophy = bL4_2 }
        end
    end
    table.sort(bL0_2, function(abb, abc)
        if abb.Value ~= abc.Value then
            return abb.Value < abc.Value
        end
        return tostring(abb.Guid) < tostring(abc.Guid)
    end)
    if #bL0_2 == 0 then
        fns.a39.groundStatus = "no matching inventory"
        return
    end
    local bLO_3 = fns.cgs_69()
    local bLP_3 = bLO_3 and bLO_3.CFrame
    local Position = bLZ_3.Position
    local bLR_1 = bLO_3 and (bLO_3.Position - Position).Magnitude > 35
    if bLR_1 then
        fns.a39.groundStatus = "moving to plot"
        fns.cgs_65(Position)
        task.wait(0.2)
    end
    local bLP_5 = math.huge
    if fns.cgs_44.TrophyHelper and true then
        bLR_2, bLS_2 = pcall(fns.cgs_44.TrophyHelper.GetCapacity, fns.cgs_74)
        bLT_2, bLU_3 = pcall(fns.cgs_44.TrophyHelper.CountPlacedTrophies, fns.cgs_74)
        local bLV_1 = bLR_2 and type(bLS_2) == "number"
        if bLV_1 then
            local bLR_3 = bLT_2 and type(bLU_3) == "number"
            bLP_5 = bLS_2 - (bLR_3 and bLU_3 or 0)
        end
    end
    local bLR_5 = fns.cgs_44.GroundPlacement.Obstacles(bLY_2, bLZ_3)
    local bLS_3 = math.min(a3G(fns.Options.GroundPlaceBatchSize.Value, 5), #bL0_2)
    local bLT_4 = 0
    local bLU_4 = 0
    local bMn = 1
    while bMn <= bLS_3 do
        local bMo = bMn
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoGroundPlaceItems.Value then
            break
        end
        bLS_5, bLV_2 = a2i.ShouldYield()
        if bLS_5 then
            fns.a39.groundStatus = "waiting for " .. bLV_2
            break
        end
        local bLS_6 = bL0_2[bMo]
        if bLS_6.IsTrophy and bLP_5 <= 0 then
            fns.a39.groundStatus = "gavel trophy placement limit reached"
            bMn += 1
            continue
        end
        bLV_4, bLW_1 = fns.cgs_44.GroundPlacement.FindPosition(bLY_2, bLZ_3, bLZ_5, bLS_6.Entry, bLS_6.Def, bLR_5)
        if not bLV_4 then
            fns.a39.groundStatus = "no open ground placement space"
            break
        end
        fns.a39.groundStatus = "placing " .. tostring(bLS_6.Def.Name)
        if fns.cgs_44.GroundPlacement.Place(bLY_2, bLS_6, bLV_4) then
            bLR_5[#bLR_5 + 1] = bLW_1
            bLU_4 += 1
            fns.a39.groundPlaced = fns.a39.groundPlaced + 1
            if bLS_6.IsTrophy then
                bLP_5 -= 1
            end
        else
            bLT_4 += 1
            fns.a39.failedGroundPlace = fns.a39.failedGroundPlace + 1
        end
        task.wait(0.25)
        bMn += 1
    end
    local bLS_7 = bLR_1 and bLP_3 and fns.cgs_69() and not a3w.active and not a3w.entryAttempt
    if bLS_7 then
        fns.cgs_69().CFrame = bLP_3
    end
    if bLU_4 > 0 or bLT_4 > 0 then
        fns.a39.groundStatus = ("placed %d | failed %d"):format(bLU_4, bLT_4)
    end
end
function fns.fn181(apu, apv, apw, apx)
    local bYp = fns.a2l[apu]
    if not bYp or not bYp.Parent then
        local bYq_1 = fns.cgs_88(apu)
        if not bYq_1 then
            return
        end
        bYp = Instance.new("BillboardGui")
        bYp.Name = "Tag"
        bYp.Adornee = bYq_1
        bYp.AlwaysOnTop = true
        bYp.LightInfluence = 0
        bYp.Size = UDim2.fromOffset(240, 34)
        bYp.StudsOffset = Vector3.new(0, 2.4, 0)
        bYp.Parent = a17()
        local textLabel = Instance.new("TextLabel")
        textLabel.Name = "Label"
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 14
        textLabel.TextStrokeTransparency = 0.35
        textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
        textLabel.Parent = bYp
        fns.a2l[apu] = bYp
    end
    bYp.MaxDistance = apx
    local Label = bYp:FindFirstChild("Label")
    if Label then
        Label.Text = apv
        Label.TextColor3 = apw
    end
end
function fns.fn195()
    local bHm = fns.Toggles2.AutoStockShelves.Value
    if bHm then
        local bHn_1 = os.clock()
        bHm = bHn_1 >= (fns.a39.nextStockAt or 0)
    end
    if bHm then
        local bHn_2 = os.clock()
        bHm = bHn_2 >= (fns.a39.auctionReleaseUntil or 0)
    end
    if bHm then
        bHm = not a3w.active
    end
    if bHm then
        bHm = a3w.entryAttempt == nil
    end
    return bHm
end
function fns.fn235()
    return fns.Toggles2.LostItemEsp.Value or fns.Toggles2.SafeEsp.Value or fns.Toggles2.NuggetEsp and fns.Toggles2.NuggetEsp.Value
end
function fns.fn247()
    return workspace:FindFirstChild("BBOW Builder Assets")
end
function fns.autoBidLoop()
    while not fns.cgs_51.Unloaded do
        pcall(fns.cgs_8)
        local cff = fns.Toggles2.AutoBid.Value or fns.cgs_44.QuestAuctionEnabled() or fns.cgs_44.IndexAuctionEnabled()
        if cff then
            pcall(fns.cgs_44.DoAutoBid)
        end
        local wait = task.wait
        local cfh = fns.Options.BidDelay.Value or 0.3
        wait(cfh)
    end
end
function fns.fn251(dH, dI)
    return (Garages[dH].MinNetWorth or 0) < (Garages[dI].MinNetWorth or 0)
end
function fns.onJumpRequest()
    local bUt = fns.cgs_51.Unloaded or not fns.Toggles2.InfiniteJump
    local bUx = if bUt then 1 else 0
    local bUv = 2986 * bUx + 1405 * (1 - bUx)
    local bUw = 2911 * bUx + 2587 * (1 - bUx)
    if not ((bUv * 3301 + bUw * 1884 + bUv * bUw) % 16777213 == 7256143) then
        bUt = not fns.Toggles2.InfiniteJump.Value
    end
    if bUt then
        return
    end
    local bUt_1 = fns.cgs_114()
    if bUt_1 then
        bUt_1:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
function fns.fn277()
    local bBG_1
    local bBF_1
    bBF_1, bBG_1 = fns.cgs_57()
    if not bBF_1 then
        return
    end
    fns.cgs_39(bBF_1, bBG_1, {}, false)
end
function fns.fn399()
    local bNX_1
    local bNT = a18(fns.cgs_44.GetUpgrades)
    if type(bNT) ~= "table" then
        return
    end
    local bNU = a3G(fns.Options.MaxDiamondsPerBuy.Value, 0)
    local bNV = {}
    local bNV_2
    for i, v in ipairs(a2W) do
        if fns.Toggles2[v.Toggle].Value then
            bNV[#bNV + 1] = v.Id
        end
    end
    for k in pairs(fns.cgs_64(fns.Options.ExtraUpgrades.Value)) do
        bNV[#bNV + 1] = k
    end
    for i, v in ipairs(bNV) do
        if fns.cgs_51.Unloaded then
            return
        end
        local bNV_1 = bNT[v] or 0
        bNV_2, bNX_1 = pcall(fns.cgs_3.GetTierCost, v, bNV_1 + 1)
        local bNW_1 = bNV_2 and type(bNX_1) == "number" and bNX_1 > 0
        if bNW_1 then
            local bNV_3 = a1u(bNX_1)
            if bNV_3 and (bNU <= 0 or bNX_1 <= bNU) then
                local bNV_4 = a18(fns.cgs_44.BuyUpgrade, v)
                local bNW_4 = type(bNV_4) == "table" and bNV_4.success
                if bNW_4 then
                    fns.a39.upgraded = fns.a39.upgraded + 1
                    fns.a39.status = "upgraded " .. v
                    task.wait(0.6)
                end
            end
        end
    end
end
function fns.fn528()
    fns.cgs_44.SetAuctionPaused(true)
    if not fns.cgs_44.StopNpcBidFastMode() then
        a1J.status = "won lot, guarding against late NPC bids"
        local b04_1 = os.clock()
        while os.clock() - b04_1 < 4 do
            local b05_1 = fns.cgs_51.Unloaded or not a3w.active or not fns.cgs_44.StopNpcBidEnabled() or not a3w.npcStopped
            local b1a = if b05_1 then 1 else 0
            local b08 = 3885 * b1a + 954 * (1 - b1a)
            local b09 = 381 * b1a + 1307 * (1 - b1a)
            if not ((b08 * 526 + b09 * 1136 + b08 * b09) % 16777213 == 3956511) then
                b05_1 = a3w.winningsPickupActive
            end
            if b05_1 then
                return
            end
            task.wait(0.1)
        end
    end
    local garage = a3w.garage
    local b05_2 = fns.cgs_93(garage)
    if not b05_2 then
        return
    end
    local b06 = garage and garage:GetAttribute("AreaName")
    local b04_3 = b06 or "farming zone"
    a1J.status = ("won lot, waiting in %s"):format(tostring(b04_3))
    local b1d = 1
    while b1d <= 160 do
        local b04_4 = fns.cgs_51.Unloaded or not a3w.active or not fns.cgs_44.StopNpcBidEnabled() or a3w.winningsPickupActive
        if b04_4 then
            break
        elseif not a3w.npcStopped then
            a1J.status = "outbid during leave timer, rebidding"
            break
        else
            fns.cgs_65(b05_2)
            local b1i = 1
            while b1i <= 5 do
                task.wait(0.05)
                if a3w.winningsPickupActive then
                    return
                end
                b1i += 1
            end
            b1d += 1
        end
    end
end
function fns.fn544()
    local bWx = fns.cgs_77()
    if bWx then
        return bWx
    end
    for i, child in ipairs(workspace:GetChildren()) do
        local bWx_1 = (child:IsA("Model")) and child:GetAttribute("OwnerUserId") == fns.cgs_74.UserId
        if bWx_1 then
            return child
        end
    end
    return nil
end
function fns.fn551(QB)
    local bDZ = (fns.cgs_44.IgnoreFavoritedItem(QB)) or fns.cgs_44.AutoFavouriteMatch(QB)
    if bDZ then
        return true
    end
    local bDZ_1 = fns.cgs_44.PowerPlantEntryNeeded and fns.cgs_44.PowerPlantEntryNeeded(QB)
    if bDZ_1 then
        return true
    end
    local bDZ_2 = fns.cgs_101(QB.ItemId)
    local bD_ = fns.Options.NeverStockItems and fns.cgs_64(fns.Options.NeverStockItems.Value)
    local bD0 = {}
    local bD1 = bD_
    local bD6 = if bD1 then 1 else 0
    local bD4 = 340 * bD6 + 2680 * (1 - bD6)
    local bD5 = 3722 * bD6 + 248 * (1 - bD6)
    if not ((bD4 * 72 + bD5 * 3349 + bD4 * bD5) % 16777213 == 13754938) then
        bD1 = bD0
    end
    local bD__1 = bD1
    local bD0_1 = fns.Options.NeverStockCategories and fns.cgs_64(fns.Options.NeverStockCategories.Value)
    local bD2 = bD0_1 or {}
    local bD1_2 = bDZ_2 ~= nil
    if bD1_2 then
        local bD2_1 = bD__1[bDZ_2.Name] == true or fns.cgs_44.CategoryMatch(bDZ_2, bD2)
        bD1_2 = bD2_1
    end
    return bD1_2
end
function fns.autoQuestLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoQuest.Value or fns.Toggles2.AutoGetQuests.Value or fns.Toggles2.AutoClaimQuestRewards.Value then
            pcall(fns.cgs_44.DoQuestDialogue)
        end
        if fns.Toggles2.AutoQuest.Value then
            pcall(fns.cgs_44.DoAutoQuestTasks)
        end
        local cfN_1 = fns.Toggles2.AutoInstallPowerPlantParts.Value
        if not cfN_1 then
            local cfO = fns.Toggles2.AutoQuest.Value and fns.cgs_44.QuestPowerPlantActive()
            cfN_1 = cfO
        end
        if cfN_1 then
            pcall(fns.cgs_44.DoPowerPlantAutomation)
        end
        if fns.Toggles2.AutoFeedUranium.Value then
            pcall(fns.cgs_44.DoFeedUranium)
        end
        if fns.Toggles2.AutoQuest.Value or fns.Toggles2.AutoGetQuests.Value or fns.Toggles2.AutoClaimQuestRewards.Value then
            pcall(fns.cgs_44.DoQuestInteraction)
        end
        task.wait(0.5)
    end
end
function fns.fn573(aic)
    local bSi_1
    local bSh = (tonumber(aic:GetAttribute("Condition"))) or 100
    local bSh_1
    if bSh <= 0 then
        return true
    end
    bSh_1, bSi_1 = pcall(fns.MutatorModule.ParseMutatorsAttr, fns.MutatorModule, aic:GetAttribute("Mutators"))
    local bSi_2 = bSh_1 and bSi_1 or {}
    for i, v in ipairs(bSi_2) do
        local bSh_3 = type(v) == "table"
        if bSh_3 then
            bSh_3 = v.name or v.Name
        end
        if (bSh_3 or v) == "Broken" then
            return true
        end
    end
    return false
end
function fns.fn585(Qp)
    if fns.cgs_44.IgnoreFavoritedItem(Qp) then
        return true
    end
    local bDR = fns.cgs_101(Qp.ItemId)
    if not bDR then
        return true
    elseif fns.cgs_44.KeepValueMatch(Qp) then
        return true
    elseif fns.cgs_64(fns.Options.NeverSellItems.Value)[bDR.Name] then
        return true
    else
        local bDS = fns.Options.NeverSellCategories and fns.cgs_64(fns.Options.NeverSellCategories.Value)
        local bDS_1 = bDS or {}
        local bDY = if fns.cgs_44.CategoryMatch(bDR, bDS_1) then 1 else 0
        if bDY == 1 then
            return true
        elseif fns.cgs_44.AutoFavouriteMatch(Qp) then
            return true
        else
            local bDR_1 = fns.cgs_64(fns.Options.NeverSellGrades.Value)
            if Qp.Grade and bDR_1[Qp.Grade] then
                return true
            elseif fns.a4l(Qp, fns.Options.NeverSellMutations) then
                return true
            else
                return false
            end
        end
    end
end
function fns.fn592(ML, MM, MN, MO)
    local bA3 = 1
    while bA3 <= MM do
        local bA5 = bA3
        local bAY = ML[bA5]
        if type(bAY) == "table" then
            MN[bA5] = true
            if fns.cgs_82(bAY) then
                if fns.cgs_95(bA5) then
                    MN[bA5] = nil
                end
                task.wait(fns.cgs_44.SAFE_CALL_DELAY)
            elseif fns.cgs_68(bAY) then
                if fns.cgs_46(bA5) then
                    MN[bA5] = nil
                end
                task.wait(fns.cgs_44.SAFE_CALL_DELAY)
            elseif MO then
                local bAZ = bAY.StartTime or 0
                local bA_ = bAY.Duration or 0
                local bAY_1 = bAZ + bA_ - workspace:GetServerTimeNow()
                local bAZ_1 = bAY_1 > 0 and a1u(math.ceil(bAY_1 / 60) * 5)
                if bAZ_1 then
                    local bAY_2 = a18(fns.cgs_44.LocksmithEvents.SpeedUp, bA5)
                    if a3I(bAY_2) then
                        local cg_ = fns.cgs_45
                        cg_[4] = cg_[4] + 1
                        if fns.cgs_46(bA5) then
                            MN[bA5] = nil
                        end
                        task.wait(fns.cgs_44.SAFE_CALL_DELAY)
                    end
                end
            end
        end
        bA3 += 1
    end
end
function fns.fn621(cL)
    if cL then
        fns.cgs_44.ApplyGavelBypass()
    else
        fns.cgs_44.RestoreGavelBypass()
    end
end
function fns.fn656(km)
    local EntrySquare = km:FindFirstChild("EntrySquare")
    local bct = EntrySquare and EntrySquare:FindFirstChild("PromptPart")
    local bct_1
    local bcu = bct
    local bcu_1
    if bct then
        bct = bcu:FindFirstChild("EnterAuction")
    end
    local bcv = bct
    if bct then
        bct = bcv:IsA("ProximityPrompt")
    end
    if bct then
        bct = bcv.Enabled
    end
    if bct then
        return bcv, bcu, bcu.CFrame * Vector3.new(0, 0, 4)
    elseif EntrySquare then
        bct_1, bcu_1 = pcall(EntrySquare.GetPivot, EntrySquare)
        if bct_1 then
            return nil, nil, bcu_1.Position + Vector3.new(0, 3, 0)
        end
        return nil
    else
        return nil
    end
end
function fns.autoSellLoop()
    local cfx_1, cfx_2, cfx_3
    local cfw_1, cfw_2, cfw_3
    local cfv = 0
    while not fns.cgs_51.Unloaded do
        if os.clock() >= cfv then
            cfv = os.clock() + 5
            if fns.Toggles2.AutoSell.Value then
                pcall(fns.cgs_5)
            end
            if fns.Toggles2.AutoSellBrokenRods.Value then
                pcall(fns.cgs_44.SellBrokenRods)
            end
            pcall(fns.cgs_56)
        end
        if fns.cgs_44.GroundPickupDue() then
            cfw_1, cfx_1 = a2i.ShouldYield()
            if cfw_1 then
                fns.a39.groundPickupStatus = "waiting for " .. cfx_1
            else
                fns.cgs_44.GroundOwnsBody = true
                fns.cgs_28(fns.cgs_44.DoGroundPickup)
                fns.cgs_44.GroundOwnsBody = false
            end
        elseif fns.cgs_44.GroundPlacementDue() then
            cfw_2, cfx_2 = a2i.ShouldYield()
            if cfw_2 then
                fns.a39.groundStatus = "waiting for " .. cfx_2
            else
                fns.cgs_44.GroundOwnsBody = true
                fns.cgs_28(fns.cgs_44.DoGroundPlacement)
                fns.cgs_44.GroundOwnsBody = false
            end
        elseif fns.cgs_44.ShelfStockDue() then
            cfw_3, cfx_3 = a2i.ShouldYield()
            if cfw_3 then
                fns.a39.status = "stocking waiting for " .. cfx_3
            else
                fns.cgs_44.ShelfStockBusy = true
                fns.cgs_44.ShelfOwnsBody = true
                local cfw_4 = fns.cgs_28(fns.cgs_44.DoStockShelves)
                fns.cgs_44.ShelfOwnsBody = false
                fns.cgs_44.ShelfStockBusy = false
                if cfw_4 then
                    fns.a39.auctionReleaseUntil = os.clock() + 0.5
                end
            end
        end
        task.wait(0.25)
    end
end
function fns.fn690(abZ, ab_)
    if not abZ.Parent then
        return true
    end
    local bMB = a18(fns.cgs_44.GetPlayerInventory)
    if type(bMB) ~= "table" then
        return false
    end
    local bMC = bMB[ab_] ~= nil
    local bMG = if bMC then 1 else 0
    local bME = 1726 * bMG + 1656 * (1 - bMG)
    local bMF = 671 * bMG + 3305 * (1 - bMG)
    if not ((bME * 1395 + bMF * 397 + bME * bMF) % 16777213 == 3832303) then
        bMC = bMB[tostring(ab_)] ~= nil
    end
    return bMC
end
function fns.fn691(X0, X1, X2, X3)
    if not X3 or not X3.UnlockedSet then
        return false
    end
    local bJQ_1 = a3G(X3.TileSize, 30)
    local bJR = a3G(X3.FullSizeX, 180) * 0.5
    local bJS = a3G(X3.FullSizeZ, 180) * 0.5
    local bJT = math.max(X2.X * 0.5 - 0.1, 0)
    local bJU = math.max(X2.Z * 0.5 - 0.1, 0)
    local bJV = math.floor((X0 - bJT + bJR + 0.01) / bJQ_1)
    local bJW = math.floor((X0 + bJT + bJR - 0.01) / bJQ_1)
    local bJR_1 = math.floor((X1 - bJU + bJS + 0.01) / bJQ_1)
    local bJT_1 = math.floor((X1 + bJU + bJS - 0.01) / bJQ_1)
    local bJQ_2 = a3G(X3.GridCols, 6)
    local bJS_1 = a3G(X3.GridRows, 6)
    if bJV < 0 or bJW >= bJQ_2 or bJR_1 < 0 or bJT_1 >= bJS_1 then
        return false
    end
    local bJ2 = bJV
    while bJ2 <= bJW do
        local bJ3 = bJ2
        local bJ7 = bJR_1
        while bJ7 <= bJT_1 do
            if not X3.UnlockedSet[bJ3 .. "," .. bJ7] then
                return false
            end
            bJ7 += 1
        end
        bJ2 += 1
    end
    return true
end
function fns.fn692(PS)
    local bDj = fns.cgs_101(PS.ItemId)
    if bDj and bDj.EnergyDrinkId and fns.Toggles2.AutoUnfavoriteDrinks and fns.Toggles2.AutoUnfavoriteDrinks.Value then
        return false
    elseif fns.cgs_44.AccessoryStatMatch(PS) then
        return true
    else
        local bDk_1 = fns.Toggles2.AutoFavourite and fns.Toggles2.AutoFavourite.Value and fns.cgs_44.FavouriteRuleMatch(PS, bDj, fns.Options.FavouriteItems, fns.Options.FavouriteMutations, fns.Options.FavouriteMutationMatch)
        if bDk_1 then
            return true
        end
        local bDk_2 = fns.Toggles2.AutoFavouriteTrophies and fns.Toggles2.AutoFavouriteTrophies.Value and fns.cgs_44.FavouriteRuleMatch(PS, bDj, fns.Options.TrophyFavouriteItems, fns.Options.TrophyFavouriteMutations, fns.Options.TrophyFavouriteMutationMatch)
        if bDk_2 then
            return true
        end
        return false
    end
end
function fns.fn694(auk, aul)
    local b1m = a3w.leaveAt
    if not b1m then
        b1m = {}
        a3w.leaveAt = b1m
    end
    if not b1m[auk] then
        b1m[auk] = os.clock()
    end
    local b1n = a3G(fns.Options.LeaveDelay.Value, 3) - (os.clock() - b1m[auk])
    if b1n > 0 then
        a1J.status = ("%s, leaving in %ds"):format(aul, math.ceil(b1n))
        return
    end
    pcall(function()
        fns.cgs_44.LeaveAuction:InvokeServer()
    end)
end
function fns.fn695(NN)
    local Events = NN.Events
    local bBQ = a18(Events.GetSlotState)
    if type(bBQ) ~= "table" then
        return
    end
    local bBS = bBQ.slots or {}
    for k, v in pairs(bBS) do
        local bBQ_1 = (tonumber(k)) or k
        local bBQ_2 = (fns.cgs_68(v))
        if not bBQ_2 then
            bBQ_2 = NN.Key == "Wash" and v.Washed == true
        end
        if bBQ_2 then
            local bBQ_3 = fns.cgs_44.ClaimWhenFull(NN.Key)
            local bBR_2 = not bBQ_3
            local bBS_1 = (fns.cgs_44.InventoryFull()) and bBR_2
            if bBS_1 then
                fns.cgs_45[8] = NN.Key .. ": inventory full, cannot claim"
                return
            end
            fns.cgs_45[8] = NN.Key .. ": claiming"
            local bBR_3 = NN.Key == "Wash" and v.Washed == true
            if not bBR_3 then
                local bBQ_5 = a18(Events[NN.Collect], bBQ_1)
                local bBS_2 = bBQ_5 == true
                if not bBS_2 then
                    local bBT_1 = type(bBQ_5) == "table" and bBQ_5.success == true
                    bBS_2 = bBT_1
                end
                bBR_3 = bBS_2
                task.wait(fns.cgs_44.PROCESS_CALL_DELAY)
            end
            local bBQ_6 = bBR_3 and a18(Events[NN.Claim], bBQ_1)
            local bBS_3 = bBQ_6 or nil
            local bBS_4 = bBS_3 == true
            if not bBS_4 then
                local bBT_2 = type(bBS_3) == "table" and bBS_3.success
                bBS_4 = bBT_2
            end
            if bBS_4 then
                local chd = fns.cgs_45
                chd[2] = chd[2] + 1
            elseif not bBR_3 then
                fns.cgs_45[8] = NN.Key .. ": collect failed, retrying next cycle"
            else
                local bBR_4 = type(bBS_3) == "table" and bBS_3.error
                if bBR_4 then
                    fns.cgs_45[8] = NN.Key .. ": " .. tostring(bBS_3.error)
                end
            end
            task.wait(fns.cgs_44.PROCESS_CALL_DELAY)
        end
    end
end
function fns.fn835(eA)
    return fns.cgs_44.PowerPlantPartNames[eA.Name] == true
end
function fns.fn873(h4)
    table.insert(fns.cgs_44.Connections, h4)
    return h4
end
function fns.fn876()
    local StopNpcBid = fns.Toggles2.StopNpcBid
    return StopNpcBid ~= nil and StopNpcBid.Value == true
end
function fns.fn887(e8, e9, fa, fb)
    local a8y = fns.cgs_81(e8)
    local a8z = fns.cgs_101(a8y.ItemId)
    local a8z_4, a8z_6
    if not a8z then
        return true
    elseif a8z.Limited == true then
        return true
    else
        local a8A = fns.Toggles2.AlwaysGrabMutated and fns.Toggles2.AlwaysGrabMutated.Value and a3v(a8y)
        local a8A_4
        if a8A then
            return true
        end
        if fb and fb > 0 then
            local a8A_2 = tonumber(a8y.Condition)
            if a8A_2 and a8A_2 < fb then
                return false
            end
            if a8A_4 then
                if a8z_4 then
                    return false
                end
                local a8z_2 = fa > 0 and a3V(a8y) < fa
                if a8z_6 then
                    return false
                end
                return true
            end
            local a8z_3 = fa > 0 and a3V(a8y) < fa
            if a8z_6 then
                return false
            end
            return true
        end
        a8A_4 = fns.cgs_44.RARITY_RANK[e9]
        if a8A_4 then
            local a8B_3 = fns.cgs_44.RARITY_RANK[a8z.Rarity]
            a8z_4 = a8B_3 and a8B_3 < a8A_4
            if a8z_4 then
                return false
            end
            local a8z_5 = fa > 0 and a3V(a8y) < fa
            if a8z_6 then
                return false
            end
            return true
        end
        a8z_6 = fa > 0 and a3V(a8y) < fa
        if a8z_6 then
            return false
        end
        return true
    end
end
function fns.autoBuyDrinksLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoBuyDrinks.Value then
            pcall(a2H)
        end
        task.wait(0.5)
    end
end
function fns.fn900()
    table.clear(a2k)
    table.clear(a3S)
    local function bUQ(alw, alx)
        if alx and not a2k[alw] then
            a2k[alw] = alx
            a3S[#a3S + 1] = alw
        end
    end
    local Areas = workspace:FindFirstChild("Areas")
    if Areas then
        for i, child in ipairs(Areas:GetChildren()) do
            local AreaBoundary = child:FindFirstChild("AreaBoundary")
            local bUS = AreaBoundary and AreaBoundary:IsA("BasePart")
            if bUS then
                bUQ("Area: " .. child.Name, AreaBoundary.Position)
            end
            local Lost_and_Found_Box = child:FindFirstChild("Lost and Found Box")
            if Lost_and_Found_Box then
                bUQ("Lost & Found: " .. child.Name, Lost_and_Found_Box:GetPivot().Position)
            end
        end
    end
    local CargoShip = workspace:FindFirstChild("CargoShip")
    if CargoShip then
        bUQ("Area: Cargo Ship", CargoShip:GetPivot().Position)
    end
    local bUR_4 = fns.cgs_20()
    if bUR_4 then
        bUQ("My Plot", Vector3.new(bUR_4:GetAttribute("OriginX"), bUR_4:GetAttribute("OriginY"), bUR_4:GetAttribute("OriginZ")))
    end
    local Mall_Shop_NPCs = workspace:FindFirstChild("Mall - Shop NPCs")
    if Mall_Shop_NPCs then
        for i, descendant in ipairs(Mall_Shop_NPCs:GetDescendants()) do
            if descendant:IsA("Model") then
                local HumanoidRootPart = descendant:FindFirstChild("HumanoidRootPart")
                if HumanoidRootPart then
                    bUQ("Shop: " .. descendant.Name, HumanoidRootPart.Position)
                end
            end
        end
    end
    local bUR_7 = fns.cgs_77()
    if bUR_7 then
        bUQ("My Vehicle", bUR_7:GetPivot().Position)
    end
    table.sort(a3S)
    return a3S
end
function fns.fn901()
    local bAt = a18(fns.cgs_44.LocksmithEvents.GetSlotState)
    if type(bAt) ~= "table" then
        return nil
    end
    local bAu = {}
    local bAw = bAt.slots or {}
    for k, v in pairs(bAw) do
        local bAv_1 = (tonumber(k)) or k
        bAu[bAv_1] = v
    end
    return bAu, bAt.unlockedCount or 0
end
function fns.fn924(bn)
    bn = tonumber(bn)
    if not bn then
        return false
    end
    return fns.cgs_44.GavelBypass.PassIds[bn] == true or fns.cgs_44.GavelBypass.ProductIds[bn] == true
end
function fns.fn928()
    local bdd = fns.cgs_44.SeizedGarageTarget()
    if bdd then
        return { [bdd:GetAttribute("AreaName")] = true }, false
    end
    local bdh = if fns.cgs_44.CargoHasPriority() then 1 else 0
    if bdh == 1 then
        return { ["Cargo Ship"] = true }, true
    end
    local bdd_1 = (fns.cgs_44.QuestAuctionEnabled()) and fns.cgs_44.QuestTargetAreas
    if bdd_1 then
        local bdd_2 = fns.cgs_44.QuestTargetAreas()
        if bdd_2 then
            return bdd_2, false
        elseif fns.cgs_44.IndexAuctionEnabled() then
            return { [fns.cgs_44.IndexArea()] = true }, false
        else
            return fns.cgs_64(fns.Options.AuctionArea.Value), false
        end
    elseif fns.cgs_44.IndexAuctionEnabled() then
        return { [fns.cgs_44.IndexArea()] = true }, false
    else
        return fns.cgs_64(fns.Options.AuctionArea.Value), false
    end
end
function fns.fn943(kx, ky)
    local bcI_1, bcI_2, bcI_3
    local bcH_1, bcH_2, bcH_3
    local bcG_1, bcG_2, bcG_3
    local bcF_1, bcF_2, bcF_3
    local bcE_1, bcE_2, bcE_3, bcE_4
    local bcD_1, bcD_3, bcD_4, bcD_6, bcD_7, bcD_9, bcD_10
    local bcC_1, bcC_6
    local bcA = a3x()
    local bcA_2, bcA_3, bcA_5, bcA_6, bcA_8, bcA_9
    if not bcA then
        return nil
    elseif not ky then
        local bcB_1 = fns.cgs_44.SeizedGarageTarget()
        if bcB_1 then
            bcC_1, bcE_1, bcD_1 = fns.a1X(bcB_1)
            if bcD_1 then
                return bcB_1, bcE_1, bcD_1
            end
            local bcB_2 = fns.cgs_69()
            local bcC_2 = not ky
            if bcC_2 ~= false then
                bcC_2 = not fns.cgs_44.QuestAuctionEnabled()
            end
            if bcC_6 then
                bcC_2 = not fns.cgs_44.IndexAuctionEnabled()
            end
            if bcC_6 then
                bcC_2 = fns.cgs_7()
            end
            local bcD_2 = bcC_2 or nil
            bcG_1, bcH_1, bcF_1, bcE_2 = nil, nil, nil, nil
            for i, child in ipairs(bcA:GetChildren()) do
                if bcD_2 then
                    bcD_3 = bcD_2[child:GetAttribute("GarageId")] == true
                else
                    bcD_3 = kx[child:GetAttribute("AreaName")] == true
                end
                local bcA_1 = not child:GetAttribute("InAuction") and bcD_3 and a2h(child)
                if bcA_1 then
                    bcA_2, bcD_4, bcI_1 = fns.a1X(child)
                    if bcI_1 then
                        if fns.Toggles2.PreferHighestTier.Value then
                            bcA_3 = fns.cgs_63(child)
                        elseif bcB_2 then
                            bcA_3 = -(bcI_1 - bcB_2.Position).Magnitude
                        else
                            bcA_3 = 0
                        end
                        if not bcE_2 or bcA_3 > bcE_2 then
                            bcG_1, bcH_1, bcF_1, bcE_2 = child, bcD_4, bcI_1, bcA_3
                        end
                    end
                end
            end
            return bcG_1, bcH_1, bcF_1
        end
        local bcB_3 = fns.cgs_69()
        local bcC_4 = not ky
        if bcC_4 ~= false then
            bcC_4 = not fns.cgs_44.QuestAuctionEnabled()
        end
        if bcC_6 then
            bcC_4 = not fns.cgs_44.IndexAuctionEnabled()
        end
        if bcC_6 then
            bcC_4 = fns.cgs_7()
        end
        local bcD_5 = bcC_4 or nil
        bcG_2, bcH_2, bcF_2, bcE_3 = nil, nil, nil, nil
        for i, child in ipairs(bcA:GetChildren()) do
            if bcD_5 then
                bcD_6 = bcD_5[child:GetAttribute("GarageId")] == true
            else
                bcD_6 = kx[child:GetAttribute("AreaName")] == true
            end
            local bcA_4 = not child:GetAttribute("InAuction") and bcD_6 and a2h(child)
            if bcA_4 then
                bcA_5, bcD_7, bcI_2 = fns.a1X(child)
                if bcI_2 then
                    if fns.Toggles2.PreferHighestTier.Value then
                        bcA_6 = fns.cgs_63(child)
                    elseif bcB_3 then
                        bcA_6 = -(bcI_2 - bcB_3.Position).Magnitude
                    else
                        bcA_6 = 0
                    end
                    if not bcE_3 or bcA_6 > bcE_3 then
                        bcG_2, bcH_2, bcF_2, bcE_3 = child, bcD_7, bcI_2, bcA_6
                    end
                end
            end
        end
        return bcG_2, bcH_2, bcF_2
    else
        local bcB_4 = fns.cgs_69()
        bcC_6 = not ky
        if bcC_6 ~= false then
            bcC_6 = not fns.cgs_44.QuestAuctionEnabled()
        end
        if bcC_6 then
            bcC_6 = not fns.cgs_44.IndexAuctionEnabled()
        end
        if bcC_6 then
            bcC_6 = fns.cgs_7()
        end
        local bcD_8 = bcC_6 or nil
        bcG_3, bcH_3, bcF_3, bcE_4 = nil, nil, nil, nil
        for i, child in ipairs(bcA:GetChildren()) do
            if bcD_8 then
                bcD_9 = bcD_8[child:GetAttribute("GarageId")] == true
            else
                bcD_9 = kx[child:GetAttribute("AreaName")] == true
            end
            local bcA_7 = not child:GetAttribute("InAuction") and bcD_9 and a2h(child)
            if bcA_7 then
                bcA_8, bcD_10, bcI_3 = fns.a1X(child)
                if bcI_3 then
                    if fns.Toggles2.PreferHighestTier.Value then
                        bcA_9 = fns.cgs_63(child)
                    elseif bcB_4 then
                        bcA_9 = -(bcI_3 - bcB_4.Position).Magnitude
                    else
                        bcA_9 = 0
                    end
                    if not bcE_4 or bcA_9 > bcE_4 then
                        bcG_3, bcH_3, bcF_3, bcE_4 = child, bcD_10, bcI_3, bcA_9
                    end
                end
            end
        end
        return bcG_3, bcH_3, bcF_3
    end
end
function fns.fn958(d9)
    local a7X = fns.cgs_101(d9.ItemId)
    if not a7X then
        return 0
    end
    local a7Y = a7X.BasePrice or 0
    if a7Y <= 0 then
        return 0
    end
    local a7Y_1 = fns.MutatorModule:CalculatePriceForEntry(a7Y, d9)
    local a7X_2 = fns.GameConfig.Grading and fns.GameConfig.Grading.GradeMultipliers
    if d9.Grade and a7X_2 and a7X_2[d9.Grade] then
        a7Y_1 = a7Y_1 * a7X_2[d9.Grade]
    end
    local a7X_4 = a7Y_1 ~= a7Y_1
    local a72 = if a7X_4 then 1 else 0
    local a70 = 1407 * a72 + 219 * (1 - a72)
    local a71 = 3296 * a72 + 2493 * (1 - a72)
    if not ((a70 * 82 + a71 * 858 + a70 * a71) % 16777213 == 7580814) then
        a7X_4 = a7Y_1 < 0
    end
    if a7X_4 then
        return 0
    end
    return a7Y_1
end
function fns.fn960()
    if not fns.cgs_51.Unloaded then
        fns.cgs_51:Unload()
    end
end
function fns.fn986()
    local b1D_1
    local b1C_1
    local b1B_1, b1B_3
    local b1A_4
    local b1z = not a3w.active or a3w.lotPassed
    local b1z_2, b1z_5
    if b1z then
        return
    end
    if fns.cgs_44.QuestAuctionEnabled() then
        local b1z_1 = fns.cgs_44.QuestAuctionTargets and fns.cgs_44.QuestAuctionTargets()
        if b1z_1 then
            b1z_2, b1B_1, b1D_1, b1C_1 = fns.cgs_44.PowerPlantLotMatches(b1z_1)
            if b1z_2 == nil then
                return
            elseif b1z_2 then
                a3w.skipPending = nil
                a3w.lotPassed = true
                if not a3w.lotChecked then
                    a3w.lotChecked = true
                    a1J.accepted = a1J.accepted + 1
                end
                a1J.status = "container kept (Power Plant: " .. b1B_1 .. ")"
                return
            else
                local b1z_3 = os.clock()
                if a3w.powerPlantLotFingerprint ~= b1C_1 then
                    a3w.powerPlantLotFingerprint = b1C_1
                    a3w.powerPlantLotStableAt = b1z_3
                    a3w.skipPending = b1D_1
                    a1J.status = "checking container for missing Power Plant parts..."
                    return
                end
                local b1A_2 = a3w.powerPlantLotStableAt
                local b1H = if b1A_2 then 1 else 0
                local b1F = 1520 * b1H + 892 * (1 - b1H)
                local b1G = 1713 * b1H + 2436 * (1 - b1H)
                if not ((b1F * 2506 + b1G * 3145 + b1F * b1G) % 16777213 == 11800265) then
                    b1A_2 = b1z_3
                end
                local b1B_2 = b1z_3 - b1A_2 < 1.5
                if not b1B_2 then
                    b1B_2 = b1z_3 - (a3w.activeAt or b1z_3) < 2
                end
                if b1B_2 then
                    a1J.status = "checking container for missing Power Plant parts..."
                    return
                end
                if not a3w.lotChecked then
                    a3w.lotChecked = true
                    a1J.rejected = a1J.rejected + 1
                end
                fns.cgs_44.RequestLeave("filters", "container skipped (no missing Power Plant parts)")
                return
            end
        else
            local b1z_4 = fns.cgs_44.QuestPowerPlantActive and fns.cgs_44.QuestPowerPlantActive()
            if b1z_4 then
                if not a3w.lotChecked then
                    a3w.lotChecked = true
                    a1J.rejected = a1J.rejected + 1
                end
                fns.cgs_44.RequestLeave("filters", "container skipped (all Power Plant parts already owned)")
                return
            end
            a3w.lotPassed = true
            a1J.status = "container kept (quest task)"
            return
        end
    end
    if fns.cgs_44.IndexAuctionEnabled() then
        b1z_5, b1A_4, b1B_3 = fns.cgs_94(fns.cgs_44.Index.wantedNames, nil, "Any Filter")
        if b1z_5 == nil then
            return
        elseif b1z_5 then
            a3w.skipPending = nil
            a3w.lotPassed = true
            if not a3w.lotChecked then
                a3w.lotChecked = true
                a1J.accepted = a1J.accepted + 1
            end
            a1J.status = "container kept (index: " .. b1A_4 .. ")"
            return
        else
            local skipPending = a3w.skipPending
            if not skipPending or skipPending ~= b1B_3 then
                a3w.skipPending = b1B_3
                a1J.status = "checking container for index items..."
                return
            end
            if not a3w.lotChecked then
                a3w.lotChecked = true
                a1J.rejected = a1J.rejected + 1
            end
            fns.cgs_44.RequestLeave("filters", "container skipped (no index items)")
            return
        end
    end
    if fns.cgs_29() then
        a3w.lotPassed = true
        if not a3w.lotChecked then
            a3w.lotChecked = true
            a1J.accepted = a1J.accepted + 1
        end
        a1J.status = "container kept (bypass item)"
        return
    end
    a3w.lotPassed = true
    if not a3w.lotChecked then
        a3w.lotChecked = true
        a1J.accepted = a1J.accepted + 1
    end
end
function fns.fn1050(d1)
    local a7P = fns.cgs_64(d1)
    local a7Q = next(a7P) ~= nil and a7P
    return a7Q or nil
end
function fns.fn1081(ey)
    return ey.Limited == true
end
function fns.fn1137()
    local Character = fns.cgs_74.Character
    local bbZ = Character and Character:FindFirstChild("HumanoidRootPart")
    return bbZ
end
function fns.onOnClientEvent7(adT, adU, adV, adW, adX)
    if fns.cgs_51.Unloaded or adT == nil then
        return
    end
    local Value2 = fns.Toggles2.AutoAcceptOffers.Value
    local Value = fns.Toggles2.AutoDeclineOffers.Value
    local bOr = not Value
    local bOs = not Value2
    if bOs ~= false then
        bOs = bOr
    end
    if bOs then
        return
    end
    local bOr_1 = (tonumber(adW)) or 0
    adW = bOr_1
    local bOr_2 = (tonumber(adX))
    local bOx = if bOr_2 then 1 else 0
    local bOv = 4072 * bOx + 3109 * (1 - bOx)
    local bOw = 939 * bOx + 2881 * (1 - bOx)
    if not ((bOv * 3108 + bOw * 3690 + bOv * bOw) % 16777213 == 3167081) then
        bOr_2 = 0
    end
    adX = bOr_2
    local bOr_3 = 0
    if adX > 0 then
        bOr_3 = (adW - adX) / adX * 100
    end
    local bOs_1 = bOr_3 >= a3G(fns.Options.MinOfferPercent.Value, 0) and adW >= a3G(fns.Options.MinOfferValue.Value, 0)
    if bOs_1 then
        if Value2 then
            if fns.cgs_44.FastRespondOffer(adT, true) then
                fns.a39.accepted = fns.a39.accepted + 1
                fns.a39.status = ("accepted $%.0f (+%.0f%%)"):format(adW, bOr_3)
            end
        end
    elseif Value then
        if fns.cgs_44.FastRespondOffer(adT, false) then
            fns.a39.declined = fns.a39.declined + 1
            fns.a39.status = ("declined $%.0f (+%.0f%%)"):format(adW, bOr_3)
        end
    end
end
function fns.fn1163(aqT)
    local bZp = aqT
    while true do
        if not (bZp and bZp ~= workspace) then
            return false
        end
        if a3j[bZp.Name] then
            break
        end
        bZp = bZp.Parent
    end
    return true
end
function fns.fn1175(XU, XV)
    local bJJ = XV and XV.FullSizeX
    local bJK = math.max(2, a3G(bJJ, a3G(XU:GetAttribute("SizeX"), 180)) * 0.5 - 2)
    local bJJ_1 = XV and XV.FullSizeZ
    local bJL = math.max(2, a3G(bJJ_1, a3G(XU:GetAttribute("SizeZ"), 180)) * 0.5 - 2)
    return -bJK, bJK, -bJL, bJL
end
function fns.fn1206()
    local bWk = fns.cgs_44.OwnedVehicleModel()
    local bWl = bWk and bWk:GetAttribute("VehicleGUID")
    local bWk_1 = bWl
    local bWl_1 = bWk_1 == ""
    local bWm = type(bWk_1) ~= "string" or bWl_1
    if bWm then
        local bWl_2 = (fns.cgs_103())
        local bWq = if bWl_2 then 1 else 0
        local bWo = 3463 * bWq + 490 * (1 - bWq)
        local bWp = 2525 * bWq + 3658 * (1 - bWq)
        if not ((bWo * 2907 + bWp * 1157 + bWo * bWp) % 16777213 == 4955228) then
            bWl_2 = fns.cgs_44.LastVehicleGuid
        end
        bWk_1 = bWl_2
    end
    if not bWk_1 then
        fns.cgs_22()
        bWk_1 = fns.cgs_44.EquippedVehicleGuid
    end
    if not bWk_1 then
        for k, v in pairs(a16) do
            bWk_1 = v
            break
        end
    end
    if not bWk_1 then
        return false
    end
    fns.cgs_44.RequestSpawn:FireServer(bWk_1)
    return true
end
function fns.fn1241(Qh)
    if not fns.Options.KeepValueMode or not fns.Options.KeepValueThreshold then
        return false
    end
    local Value = fns.Options.KeepValueMode.Value
    local bDI = a3G(fns.Options.KeepValueThreshold.Value, 0)
    if Value == "Disabled" or bDI <= 0 then
        return false
    end
    local bDJ_1 = a3V(Qh)
    if Value == "At or above" then
        return bDJ_1 >= bDI
    elseif Value == "At or below" then
        return bDJ_1 <= bDI
    else
        return false
    end
end
function fns.fn1257(Wh, Wi)
    local bI1_4
    local bI0_3
    local bIN_1
    local bIK = Wh == true
    local bIL = Wi ~= ""
    local bIM = type(Wi) == "string" and bIL
    local bIM_1
    bIM_1, bIN_1 = a2i.ShouldYield()
    if bIM_1 then
        fns.a39.status = "stocking waiting for " .. bIN_1
        return
    end
    local bIM_2 = bIM and "nextQuestStockAt"
    local bIO = bIK and "nextRecoveryStockAt" or "nextStockAt"
    local bIN_3 = bIM_2
    local bI8 = if bIN_3 then 1 else 0
    local bI6 = 3481 * bI8 + 2214 * (1 - bI8)
    local bI7 = 499 * bI8 + 1889 * (1 - bI8)
    if not ((bI6 * 136 + bI7 * 2473 + bI6 * bI7) % 16777213 == 3444462) then
        bIN_3 = bIO
    end
    local bIM_3 = bIN_3
    local bIN_4 = os.clock()
    if bIN_4 < (fns.a39[bIM_3] or 0) then
        return
    end
    local bIO_2 = bIM and 2
    if not bIO_2 then
        local bIN_6 = bIK and 1
        local bIP_1 = bIN_6 or a3G(tostring(fns.Options.StockInterval.Value):match("%d+"), 30)
        bIO_2 = bIP_1
    end
    local bIN_7 = bIO_2
    fns.a39[bIM_3] = os.clock() + bIN_7
    local bIO_3 = fns.cgs_20()
    if not bIO_3 then
        fns.a39.status = "cannot stock: no plot"
        return
    end
    local bIP_2 = fns.cgs_102()
    local bIQ = fns.cgs_69()
    if bIP_2 and bIQ and (bIQ.Position - bIP_2).Magnitude > 35 then
        fns.a39.status = "moving near home to stock shelves"
        fns.cgs_65(bIP_2)
        task.wait(0.2)
    end
    local bIP_3 = a2i.Snapshot(bIO_3)
    if not bIP_3 then
        fns.a39.status = "cannot stock: shop data unavailable"
        fns.a39[bIM_3] = 0
        return
    end
    local bIQ_1 = a2i.FreeSlots(bIO_3, bIP_3)
    if #bIQ_1 == 0 then
        fns.a39.eligibleStock = 0
        fns.a39.status = bIK and "unload blocked: shelves full" or "shelves full"
        return
    end
    local bIP_5 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bIP_5) ~= "table" then
        fns.a39.status = "cannot stock: inventory unavailable"
        fns.a39[bIM_3] = os.clock() + 2
        return
    end
    local bIR_2 = bIM and 0
    local bIS = bIR_2 or a3G(fns.Options.MinStockValue.Value, 0)
    local bIS_1 = bIM and 0
    local bIT = bIS_1 or a3G(fns.Options.MaxStockValue.Value, 0)
    local bIS_2 = bIT
    local bIT_1 = bIM and nil
    local bIU = bIT_1 or fns.cgs_32(fns.Options.StockMinRarity.Value)
    local bIU_2 = bIM and {}
    local bI8_1 = if bIU_2 then 1 else 0
    local bI6_1 = 3080 * bI8_1 + 840 * (1 - bI8_1)
    local bI7_1 = 3985 * bI8_1 + 1330 * (1 - bI8_1)
    if not ((bI6_1 * 16 + bI7_1 * 2315 + bI6_1 * bI7_1) % 16777213 == 4771142) then
        bIU_2 = fns.cgs_64(fns.Options.StockCategories.Value)
    end
    local bIV_1 = bIU_2
    local bIU_4 = bIM and {}
    local bI8_2 = if bIU_4 then 1 else 0
    local bI6_2 = 930 * bI8_2 + 2147 * (1 - bI8_2)
    local bI7_2 = 3107 * bI8_2 + 3775 * (1 - bI8_2)
    if not ((bI6_2 * 1656 + bI7_2 * 1187 + bI6_2 * bI7_2) % 16777213 == 8117599) then
        bIU_4 = fns.cgs_64(fns.Options.StockMutations.Value)
    end
    local bIW_1 = bIU_4
    local bIX = bIM and {}
    local bIX_4, bIX_5
    local bIU_6 = bIX or fns.cgs_64(fns.Options.StockItems.Value)
    local bIY = bIM and {}
    local bIY_3, bIY_4
    local bIU_8 = bIY or fns.cgs_64(fns.Options.StockGrades.Value)
    local bIU_9 = fns.Options.StockMethod.Value == "Place selected"
    if bIS_2 <= 0 then
        bIS_2 = math.huge
    end
    local bIZ = {}
    for k, v in pairs(bIP_5) do
        local bI__1 = tostring(v.ItemId)
        bIZ[bI__1] = (bIZ[bI__1] or 0) + 1
    end
    local bI__2 = {}
    for k, v in pairs(bIP_5) do
        local bIP_6 = not fns.cgs_13(v) and not fns.cgs_23(v)
        if bIP_6 then
            local bIP_7 = fns.cgs_101(v.ItemId)
            local bI0_2 = a3V(v)
            local bI1_1 = bIP_7
            if bI1_1 then
                bI1_1 = not bIM or v.Area == Wi
            end
            if bI1_1 then
                bI1_1 = bI0_2 >= bIS
            end
            if bI1_1 then
                bI1_1 = bI0_2 <= bIS_2
            end
            if bI1_1 then
                local bI1_2 = a2i.FilterMatch(v, bIP_7, bIV_1, bIU, bIW_1, bIU_6, bIU_8)
                if bIM or bI1_2 == nil or bI1_2 == bIU_9 then
                    bI__2[#bI__2 + 1] = { Guid = k, Entry = v, Def = bIP_7, Value = bI0_2 }
                end
            end
        end
    end
    a2i.SortCandidates(bI__2, bIK)
    local bIP_8 = {}
    local bIR_4 = {}
    for i, v in ipairs(bI__2) do
        local bIS_3 = tostring(v.Entry.ItemId)
        if (bIR_4[bIS_3] or 0) < (bIZ[bIS_3] or 0) then
            bIP_8[#bIP_8 + 1] = v
            bIR_4[bIS_3] = (bIR_4[bIS_3] or 0) + 1
        end
    end
    fns.a39.eligibleStock = #bIP_8
    if #bIP_8 == 0 then
        fns.a39.status = bIK and "unload blocked: no safe item to stock" or "no matching inventory"
        return
    end
    local bIR_6 = math.min(a3G(fns.Options.StockBatchSize.Value, 10), #bIQ_1, #bIP_8)
    local bIS_5 = 0
    local bIT_5 = 0
    local bIU_11 = {}
    local bIV_2 = false
    local bIW_2 = {}
    while true do
        if bIS_5 < bIR_6 and bIT_5 < bIR_6 * 2 then
            local bIX_3 = fns.cgs_51.Unloaded
            if not bIX_3 then
                local bIY_2 = not bIK
                if bIY_2 ~= false then
                    bIY_2 = not bIM
                end
                if bIY_2 then
                    bIY_2 = not fns.Toggles2.AutoStockShelves.Value
                end
                bIX_3 = bIY_2
            end
            if bIX_3 then
                break
            end
            bIX_4, bIY_3 = a2i.ShouldYield()
            if bIX_4 then
                bIV_2 = true
                fns.a39.status = "stocking waiting for " .. bIY_3
                break
            end
            bIX_5, bIY_4 = a2i.NextAssignment(bIP_8, bIQ_1, bIU_11, bIW_2)
            if not bIX_5 then
                break
            end
            local bIZ_1 = bIP_8[bIX_5]
            local bI__3 = bIQ_1[bIY_4]
            bIU_11[tostring(bIZ_1.Guid) .. "|" .. bI__3.Key] = true
            bIT_5 += 1
            bI0_3, bI1_4 = a2i.Place(bIO_3, bIZ_1, bI__3, fns.Toggles2.HideStockNotifications.Value)
            if bI0_3 then
                table.remove(bIP_8, bIX_5)
                table.remove(bIQ_1, bIY_4)
                bIS_5 += 1
                fns.a39.stocked = fns.a39.stocked + 1
                task.wait(0.4)
            else
                fns.a39.failedStock = fns.a39.failedStock + 1
                if bI1_4 then
                    table.remove(bIQ_1, bIY_4)
                end
            end
            continue
        end
        break
    end
    if bIV_2 then
        fns.a39[bIM_3] = 0
        return
    end
    if bIT_5 == 0 then
        fns.a39.status = bIK and "unload blocked: no item fits open shelves" or "no items fit open shelf slots"
        return
    end
    local bIO_5 = bIK and ("unload recovery stocked %d of %d"):format(bIS_5, bIT_5)
    local bIP_10 = bIO_5 or ("stocked %d of %d"):format(bIS_5, bIT_5)
    fns.a39.status = bIP_10
    local bIO_6 = a3G(fns.Options.StockStaySeconds.Value, 0)
    local bIP_11 = not bIK
    if bIP_11 ~= false then
        bIP_11 = not bIM
    end
    if bIP_11 then
        bIP_11 = bIS_5 > 0
    end
    if bIP_11 then
        bIP_11 = bIO_6 > 0
    end
    if bIP_11 then
        fns.a39.status = ("stocked %d of %d | staying on plot %ds"):format(bIS_5, bIT_5, bIO_6)
        local bIK_1 = os.clock() + bIO_6
        while os.clock() < bIK_1 do
            if fns.cgs_51.Unloaded or not fns.Toggles2.AutoStockShelves.Value then
                break
            end
            local bIL_3 = fns.cgs_44.AuctionHasPriority and fns.cgs_44.AuctionHasPriority()
            local bIO_7 = bIL_3
            if not bIO_7 then
                local bIL_4 = fns.cgs_44.TruckUnloadPending and fns.cgs_44.TruckUnloadPending()
                bIO_7 = bIL_4
            end
            if not bIO_7 then
                local bIL_5 = fns.cgs_44.PendingWinnings and fns.cgs_44.PendingWinnings() > 0
                bIO_7 = bIL_5
            end
            if bIO_7 then
                break
            end
            task.wait(0.25)
        end
        fns.a39.status = ("stocked %d of %d"):format(bIS_5, bIT_5)
    end
    fns.a39[bIM_3] = os.clock() + bIN_7
end
function fns.fn1296()
    local b1O = not a3w.active or a4i()
    if b1O then
        return
    end
    local b1O_1 = (fns.cgs_44.AutoClaimWinningsEnabled()) and fns.cgs_44.PendingWinnings() > 0
    if b1O_1 then
        a1J.status = "holding bids (uncollected winnings)"
        return
    end
    if a24() then
        a1J.status = "holding bids (collecting Lost & Found)"
        return
    end
    if not fns.cgs_44.BidAllowed() then
        return
    end
    local b1O_2 = fns.cgs_62()
    if not b1O_2 then
        a1J.status = "holding bids (waiting for next bid price)"
        return
    end
    local b1P = (fns.cgs_29()) or fns.cgs_44.QuestAuctionEnabled()
    if not b1P then
        local b1Q_1 = (fns.cgs_44.IndexAuctionEnabled()) and a3w.lotPassed == true
        b1P = b1Q_1
    end
    local b1Q_2 = b1P
    local b1P_1 = math.max(a3G(fns.Options.MinimumBid.Value, 0), 0)
    local b1R = not b1Q_2
    if b1R ~= false then
        b1R = b1O_2 < b1P_1
    end
    if b1R then
        a1J.status = ("holding bids ($%s is under minimum $%s)"):format(fns.cgs_48(b1O_2), fns.cgs_48(b1P_1))
        return
    end
    if b1O_2 > fns.cgs_44.MaxBidLimit() then
        a1J.status = ("holding bids ($%s is over maximum $%s)"):format(fns.cgs_48(b1O_2), fns.cgs_48(fns.cgs_44.MaxBidLimit()))
        return
    end
    local b1P_2 = not b1Q_2
    if b1P_2 ~= false then
        b1P_2 = fns.cgs_54()
    end
    if b1P_2 then
        a1J.status = "holding bids (lot value below minimum)"
        return
    end
    if fns.cgs_41() < b1O_2 then
        a1J.status = ("holding bids (not enough cash for $%s)"):format(fns.cgs_48(b1O_2))
        return
    end
    local b1P_3 = table.concat({ tostring(a3w.currentBid), tostring(a3w.winner), tostring(b1O_2) }, "|")
    local b1O_3 = a3w.bidRequestKey == b1P_3 and os.clock() - a3w.bidRequestAt < 2
    if b1O_3 then
        a1J.status = "holding bids (waiting for server update)"
        return
    end
    a3w.bidRequestKey = b1P_3
    a3w.bidRequestAt = os.clock()
    fns.cgs_44.Bid:FireServer()
end
function fns.fn1305()
    local bdk = fns.Toggles2.AutoQuest ~= nil and fns.Toggles2.AutoQuest.Value == true and fns.cgs_44.QuestNeedsAuction ~= nil and fns.cgs_44.QuestNeedsAuction() == true
    return bdk
end
function fns.fn1309(jm)
    local bbW = (fns.cgs_74:GetAttribute(jm)) or 0
    return bbW
end
function fns.fn1352(O1)
    local bCC = type(O1) == "table" and O1.Mutators
    local bCC_1 = bCC or nil
    if type(bCC_1) == "string" then
        bCC_1 = fns.MutatorModule:ParseMutatorsAttr(bCC_1)
    end
    local bCD_1 = {}
    if type(bCC_1) == "table" then
        for k, v in pairs(bCC_1) do
            local bCC_2 = type(v) == "table"
            if bCC_2 then
                local bCE_1 = v.name
                local bCO_1 = if bCE_1 then 1 else 0
                local bCM_1 = 1640 * bCO_1 + 2367 * (1 - bCO_1)
                local bCN_1 = 1754 * bCO_1 + 2641 * (1 - bCO_1)
                if not ((bCM_1 * 2682 + bCN_1 * 2239 + bCM_1 * bCN_1) % 16777213 == 11202246) then
                    bCE_1 = v.Name
                end
                bCC_2 = bCE_1
            end
            if bCC_2 then
                local bCC_3 = v.name
                local bCO_2 = if bCC_3 then 1 else 0
                local bCM_2 = 2487 * bCO_2 + 530 * (1 - bCO_2)
                local bCN_2 = 1319 * bCO_2 + 2807 * (1 - bCO_2)
                if not ((bCM_2 * 98 + bCN_2 * 2225 + bCM_2 * bCN_2) % 16777213 == 6458854) then
                    bCC_3 = v.Name
                end
                bCD_1[bCC_3] = true
            elseif type(v) == "string" then
                bCD_1[v] = true
            else
                local bCC_4 = v == true and type(k) == "string"
                if bCC_4 then
                    bCD_1[k] = true
                end
            end
        end
    end
    if O1.IsTrophy == true then
        bCD_1[fns.cgs_44.TROPHY_CHOICE] = true
    end
    local bCC_5 = fns.cgs_101(O1.ItemId)
    if bCC_5 and bCC_5.Limited == true then
        bCD_1.Limited = true
    end
    if bCC_5 and bCC_5.EventExclusive ~= nil then
        bCD_1.Exclusive = true
    end
    return bCD_1
end
function fns.fn1353()
    if not a3w.active then
        return
    end
    local b1p = fns.cgs_62()
    local b1q = (fns.cgs_29()) or fns.cgs_44.QuestAuctionEnabled()
    if not b1q then
        local b1r_1 = (fns.cgs_44.IndexAuctionEnabled()) and a3w.lotPassed == true
        b1q = b1r_1
    end
    local b1r_2 = b1q
    local b1q_1 = "leaving auction"
    local b1s = false
    local b1t = (fns.cgs_54()) and not b1r_2 and not a3w.bypassPending
    if b1t then
        b1s = true
    else
        local b1t_1 = (fns.cgs_44.AutoClaimWinningsEnabled()) and not a4i() and fns.cgs_44.PendingWinnings() > 0
        if b1t_1 then
            b1s = true
            b1q_1 = "leaving to collect winnings"
        else
            local b1t_2 = b1p and not a4i()
            if b1t_2 then
                local b1t_3 = a3G(fns.Options.MinimumBid.Value, 0)
                local b1u = not b1r_2
                if b1u ~= false then
                    b1u = not a3w.bypassPending
                end
                if b1u then
                    b1u = fns.Toggles2.LeaveIfBelowMin.Value
                end
                if b1u then
                    b1u = b1t_3 > 0
                end
                if b1u then
                    b1u = b1p < b1t_3
                end
                if b1u then
                    b1s = true
                    b1q_1 = "bid is under minimum"
                end
            end
        end
    end
    if b1s then
        fns.cgs_44.RequestLeave("price", b1q_1)
    elseif a3w.leaveAt then
        a3w.leaveAt.price = nil
    end
end
function fns.fn1361(apr)
    if apr:IsA("BasePart") then
        return apr
    end
    local bYk = apr.PrimaryPart
    local bYo = if bYk then 1 else 0
    local bYm = 1669 * bYo + 3130 * (1 - bYo)
    local bYn = 3393 * bYo + 871 * (1 - bYo)
    if not ((bYm * 374 + bYn * 1146 + bYm * bYn) % 16777213 == 10175501) then
        bYk = apr:FindFirstChildWhichIsA("BasePart")
    end
    return bYk
end
function fns.onOnClientEvent2(ix, iy)
    a3w.inZone = ix == true
    if ix then
        a3w.garage = iy
    end
end
function fns.fn1433()
    if not fns.Toggles2.AutoWash.Value then
        fns.cgs_44.CollectReadySlots(fns.cgs_44.PROCESSORS[3])
    end
    if not fns.Toggles2.AutoOpenSafes.Value then
        fns.cgs_44.CollectSafeSlots()
    end
end
function fns.fn1457()
    if not fns.Toggles2.LeaveIfLotBelowValue.Value then
        return false
    elseif not a3w.lotValue then
        return false
    else
        return a3w.lotValue < a3G(fns.Options.MinLotValue.Value, 0)
    end
end
function fns.onOnClientEvent5(h7)
    local active = a3w.active
    a3w.active = h7 == true
    if a3w.active and not active then
        a3w.activeAt = os.clock()
        a3w.entryAttempt = nil
        a3w.entryRetryAt = 0
    end
    if not a3w.active then
        a1s()
    end
end
function fns.fn1486()
    if not (fns.Toggles2.AutoEnterPoliceGarage and fns.Toggles2.AutoEnterPoliceGarage.Value) then
        return nil
    end
    local bda_1 = a1R()
    local bdb = not bda_1 or bda_1:GetAttribute("InAuction") or not a2h(bda_1)
    if bdb then
        return nil
    end
    return bda_1
end
function fns.fn1495(aoN, aoO)
    local bXG = not fns.Toggles2.WebhookAuctionClaims.Value or type(aoN) ~= "table"
    if bXG then
        return
    end
    local bXG_1 = a3V(aoN)
    if not fns.cgs_44.WebhookAllowed(aoO, bXG_1, aoN) then
        return
    end
    local bXH_1 = { name = "Item", value = aoO and aoO.Name or "Unknown item", inline = true }
    local bXK = aoO and aoO.Category or "?"
    local bXJ_1 = { name = "Category", value = tostring(bXK), inline = true }
    local bXL = { name = "Value", value = ("$%.0f"):format(bXG_1), inline = true }
    local bXN = aoO and aoO.Rarity or "?"
    local bXM_1 = { name = "Rarity", value = tostring(bXN), inline = true }
    local bXO = fns.cgs_44.GRADE_LABELS[aoN.Grade]
    if not bXO then
        local bXP_1 = aoN.Grade or "None"
        bXO = tostring(bXP_1)
    end
    local bXP_2 = {
        bXH_1,
        bXJ_1,
        bXL,
        bXM_1,
        { name = "Grade", value = bXO, inline = true },
        { name = "Mutation", value = fns.cgs_44.MutationText(aoN), inline = true }
    }
    local bXG_2 = fns.cgs_44.RollLines(aoN)
    if bXG_2 then
        bXP_2[#bXP_2 + 1] = { name = "Stats", value = bXG_2, inline = false }
    end
    a25("Auction Winnings Claimed", fns.cgs_74.Name, bXP_2)
end
function fns.fn1572()
    local bPp = (fns.cgs_74:GetAttribute("ClaimableCollectionCount")) or 0
    if bPp <= 0 then
        return
    end
    local bPp_1 = a18(fns.cgs_44.GetCollectionState)
    local bPq = type(bPp_1) ~= "table" or type(bPp_1.milestones) ~= "table"
    if bPq then
        return
    end
    for k in pairs(bPp_1.milestones) do
        local bPp_2 = fns.cgs_51.Unloaded
        local bPB = if bPp_2 then 1 else 0
        local bPz = 2677 * bPB + 2624 * (1 - bPB)
        local bPA = 660 * bPB + 2552 * (1 - bPB)
        if not ((bPz * 3372 + bPA * 2175 + bPz * bPA) % 16777213 == 12229164) then
            bPp_2 = not fns.Toggles2.AutoCollections.Value
        end
        if bPp_2 then
            return
        end
        local bPp_3 = a18(fns.cgs_44.ClaimMilestoneReward, k)
        local bPq_1 = type(bPp_3) == "table" and bPp_3.success
        if bPq_1 then
            a15.collections = a15.collections + 1
            a15.status = "collection: " .. tostring(k)
        end
        task.wait(0.5)
    end
end
function fns.fn1607()
    for k in pairs(fns.cgs_44.HiddenGroundItems) do
        if k.Parent then
            pcall(fns.cgs_44.SetGroundItemHidden, k, false)
        end
    end
    table.clear(fns.cgs_44.HiddenGroundItems)
end
function fns.fn1634()
    fns.a39.nextGroundPickupAt = os.clock() + 2
    local bMY = fns.cgs_20()
    local bMZ = bMY and bMY:FindFirstChild("Stock")
    if not bMZ then
        fns.a39.groundPickupStatus = "no owned plot"
        return
    end
    local bMZ_1 = fns.cgs_64(fns.Options.GroundPickupCategories.Value)
    local bM_ = fns.cgs_64(fns.Options.GroundPickupSkipTypes.Value)
    local bM0 = fns.cgs_64(fns.Options.GroundPickupItems.Value)
    local bM1 = {}
    for i, child in ipairs(bMZ:GetChildren()) do
        if fns.cgs_44.GroundPickup.Eligible(child, bMZ_1, bM_, bM0) then
            bM1[#bM1 + 1] = child
        end
    end
    table.sort(bM1, function(acq, acr)
        if acq.Name ~= acr.Name then
            return acq.Name < acr.Name
        end
        return tostring(acq:GetAttribute("GUID")) < tostring(acr:GetAttribute("GUID"))
    end)
    local bMY_2 = a3G(fns.Options.GroundPickupMinItems.Value, 1)
    if #bM1 < bMY_2 then
        fns.a39.groundPickupStatus = ("waiting for %d matching items (%d found)"):format(bMY_2, #bM1)
        return
    end
    local bMY_3 = #bM1
    local bMZ_2 = 0
    local bM__1 = 0
    local bNe = 1
    while bNe <= bMY_3 do
        local bNf = bNe
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoGroundPickupItems.Value then
            break
        end
        local bMY_5 = bM1[bNf]
        fns.a39.groundPickupStatus = "picking up " .. bMY_5.Name
        if fns.cgs_44.GroundPickup.Pick(bMY_5) then
            bM__1 += 1
            fns.a39.groundPickedUp = fns.a39.groundPickedUp + 1
        else
            bMZ_2 += 1
            fns.a39.failedGroundPickup = fns.a39.failedGroundPickup + 1
        end
        task.wait(0.15)
        bNe += 1
    end
    fns.a39.groundPickupStatus = ("picked up %d | failed %d"):format(bM__1, bMZ_2)
end
function fns.fn1644()
    local bc2 = a3x()
    if not bc2 then
        return nil
    end
    for i, child in ipairs(bc2:GetChildren()) do
        if child:FindFirstChild("SeizedDressing") then
            return child
        end
    end
    return nil
end
function fns.fn1687()
    return a3w.npcStopped == true and a3w.active and not a3w.winningsPickupActive
end
function fns.onOnClientEvent6(Q0)
    local bEc = (tonumber(Q0))
    if not bEc then
        local bEd_1 = type(Q0) == "table" and tonumber(Q0.rate)
        bEc = bEd_1
    end
    local bEd_2 = bEc
    if bEd_2 then
        fns.a39.pawnRate = bEd_2
        fns.a39.pawnRateAt = os.clock()
    end
end
function fns.fn1753()
    local bQQ = os.clock()
    if bQQ < (fns.cgs_44.NextDrinkUnfavoriteAt or 0) then
        return
    end
    local bQQ_1 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bQQ_1) ~= "table" then
        fns.cgs_44.NextDrinkUnfavoriteAt = os.clock() + 2
        return
    end
    for k, v in pairs(bQQ_1) do
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoUnfavoriteDrinks.Value then
            return
        end
        local bQQ_3 = fns.cgs_101(v.ItemId)
        if bQQ_3 and bQQ_3.EnergyDrinkId and v.Favorited == true then
            fns.cgs_44.UnfavoriteDrinkPending = fns.cgs_44.UnfavoriteDrinkPending or {}
            local bQR_3 = os.clock()
            if bQR_3 >= (fns.cgs_44.UnfavoriteDrinkPending[k] or 0) then
                fns.cgs_44.UnfavoriteDrinkPending[k] = os.clock() + 5
                local bQR_4 = a18(fns.cgs_44.ToggleFavoriteItem, k)
                task.wait(0.4)
                local bQS_2 = a18(fns.cgs_44.GetPlayerInventory)
                local bQT = type(bQS_2) == "table" and bQS_2[k]
                local bQT_1 = type(bQT) == "table" and bQT.Favorited ~= true
                if bQT_1 or bQR_4 == true and bQT == nil then
                    a15.status = "unfavorited " .. tostring(bQQ_3.Name)
                else
                    a15.status = "drink unfavorite not confirmed; retrying"
                end
                fns.cgs_44.NextDrinkUnfavoriteAt = os.clock() + 0.75
                return
            end
        end
    end
    fns.cgs_44.NextDrinkUnfavoriteAt = os.clock() + 2
end
function fns.fn1836(asL)
    local b0o_1
    local b0n_1
    local b0m_1
    local b0k = fns.cgs_44.LostFoundRecovery
    if not b0k then
        b0k = {}
        fns.cgs_44.LostFoundRecovery = b0k
    end
    for k in pairs(asL) do
        local b0l = b0k[k]
        if not b0l then
            b0l = { attempts = 0, nextTryAt = 0, skipUntil = 0 }
            b0k[k] = b0l
        end
        if os.clock() >= b0l.skipUntil then
            b0n_1, b0m_1, b0o_1 = a26(k)
            if b0n_1 and b0n_1 > 0 then
                if b0o_1 then
                    b0l.skipUntil = os.clock() + 15
                else
                    if os.clock() < b0l.nextTryAt then
                        a1J.status = ("recovering Lost & Found in %s before auction"):format(k)
                        return true
                    end
                    b0l.nextTryAt = os.clock() + 2
                    if not a3J(k, true) then
                        a1J.status = ("waiting to recover Lost & Found in %s"):format(k)
                        return true
                    end
                    local b0m_3 = a26(k)
                    if not b0m_3 or b0m_3 <= 0 then
                        b0l.attempts = 0
                        b0l.lastRemaining = nil
                    else
                        if b0l.lastRemaining and b0m_3 < b0l.lastRemaining then
                            b0l.attempts = 1
                        else
                            b0l.attempts = b0l.attempts + 1
                        end
                        b0l.lastRemaining = b0m_3
                        if not (b0l.attempts >= 3) then
                            local b0n_4 = b0m_3 == 1 and "" or "s"
                            a1J.status = ("recovering %d Lost & Found item%s before auction"):format(b0m_3, b0n_4)
                            return true
                        end
                        b0l.attempts = 0
                        b0l.lastRemaining = nil
                        b0l.skipUntil = os.clock() + 60
                        a1J.status = ("Lost & Found in %s stuck (%s); resuming auctions"):format(k, tostring(fns.cgs_9[4]))
                    end
                end
            end
        end
    end
    return false
end
function fns.fn1857(ar0, ar1)
    local GroundItemDecalTransparency = fns.cgs_44.GroundItemDecalTransparency
    for i, descendant in ipairs(ar0:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.LocalTransparencyModifier = ar1 and 1 or 0
        else
            local b_u_2 = (descendant:IsA("Decal")) or descendant:IsA("Texture")
            if b_u_2 then
                if ar1 then
                    if GroundItemDecalTransparency[descendant] == nil then
                        GroundItemDecalTransparency[descendant] = descendant.Transparency
                    end
                    descendant.Transparency = 1
                else
                    descendant.Transparency = GroundItemDecalTransparency[descendant] or 0
                    GroundItemDecalTransparency[descendant] = nil
                end
            else
                local b_u_4 = (descendant:IsA("BillboardGui")) or descendant:IsA("SurfaceGui") or descendant:IsA("ParticleEmitter") or descendant:IsA("Beam") or descendant:IsA("Light") or descendant:IsA("Highlight")
                if b_u_4 then
                    descendant.Enabled = not ar1
                end
            end
        end
    end
end
function fns.fn1884(TP)
    local bGH = TP and TP:GetAttribute("ItemId")
    local bGI = bGH
    if bGH then
        bGH = Furniture:GetById(tostring(bGI))
    end
    local bGI_1 = bGH
    if bGH then
        bGH = bGI_1.Name
    end
    return bGH or ""
end
function fns.fn1895(arZ)
    local b_r = (arZ:IsA("Model")) and arZ:GetAttribute("GUID") ~= nil and arZ:GetAttribute("ShelfGUID") == nil and arZ:GetAttribute("SnapPointName") == nil
    return b_r
end
function fns.fn1897(VB, VC, VD)
    local bH9 = a2i.Snapshot(VB)
    if bH9 then
        for i, v in ipairs(bH9) do
            local Attrs = v.Attrs
            local bIa_1 = Attrs.GUID or ""
            local bIb = tostring(bIa_1) == tostring(VC) and a2i.SlotKey(Attrs.ShelfGUID, Attrs.SnapPointName) == VD.Key
            if bIb then
                return true
            end
        end
    end
    local bH9_2 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bH9_2) ~= "table" then
        return false
    end
    local bIa_2 = bH9_2[VC] ~= nil or bH9_2[tostring(VC)] ~= nil
    if bIa_2 then
        return false
    end
    for k in pairs(bH9_2) do
        if tostring(k) == tostring(VC) then
            return false
        end
    end
    return true
end
function fns.fn1909()
    return tonumber(a3w.nextBid)
end
function fns.autoGoldNuggetsLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoGoldNuggets.Value then
            pcall(fns.cgs_44.DoGoldNuggets)
        end
        if fns.Toggles2.AutoGoldPanner.Value then
            pcall(fns.cgs_44.DoGoldPanner)
        end
        if fns.Toggles2.AutoBountyTurnIn.Value then
            pcall(fns.cgs_44.DoBountyTurnIn)
        end
        if fns.Toggles2.AutoWildWestMarket.Value then
            pcall(fns.cgs_44.DoWildWestMarket)
        end
        if fns.Toggles2.AutoTownDefense.Value then
            pcall(fns.cgs_44.DoTownDefense)
        end
        if fns.Toggles2.AutoRaceHorse.Value then
            pcall(fns.cgs_44.DoHorseRace)
        end
        task.wait(5)
    end
end
function fns.fn1927()
    local attr = fns.cgs_74:GetAttribute("MaxNetWorth")
    if type(attr) == "number" then
        return attr
    end
    local leaderstats = fns.cgs_74:FindFirstChild("leaderstats")
    local bcj = leaderstats and leaderstats:FindFirstChild("Net Worth")
    if bcj then
        local bcj_1 = tostring(bcj.Value):upper():gsub(",", "")
        local bci_3 = tonumber(bcj_1:match("%d[%d%.]*"))
        if bci_3 then
            local bck = a1w[bcj_1:match("%d[%d%.]*(%u)")] or 1
            return bci_3 * bck
        end
        return 0
    end
    return 0
end
function fns.fn1946()
    local bXR = a18(fns.cgs_44.GetPlayerInventory)
    if type(bXR) ~= "table" then
        return
    end
    local bXS = a3G(fns.Options.RareFindValue.Value, 50000)
    for k, v in pairs(bXR) do
        if not fns.cgs_86[k] then
            fns.cgs_86[k] = true
            if fns.cgs_21 then
                local bXR_1 = a3V(v)
                if bXR_1 >= bXS then
                    local bXT = fns.cgs_101(v.ItemId)
                    local bXV = bXT and bXT.Name or "Unknown item"
                    local cim = fns.cgs_6
                    cim.finds = cim.finds + 1
                    fns.cgs_6.status = ("found %s ($%.0f)"):format(bXV, bXR_1)
                    fns.cgs_51:Notify(("Rare find: %s ($%.0f)"):format(bXV, bXR_1))
                    local bXV_1 = fns.Toggles2.SendWebhookAlerts.Value and fns.cgs_44.WebhookAllowed(bXT, bXR_1, v)
                    if bXV_1 then
                        local bXV_2 = { name = "Item", value = bXV, inline = true }
                        local bXW = { name = "Value", value = ("$%.0f"):format(bXR_1), inline = true }
                        local bXT_1 = bXT and bXT.Rarity or "?"
                        local bXX_1 = { name = "Rarity", value = tostring(bXT_1), inline = true }
                        local bXY = fns.cgs_44.GRADE_LABELS[v.Grade]
                        if not bXY then
                            local bXZ_1 = v.Grade or "None"
                            bXY = tostring(bXZ_1)
                        end
                        local bXZ_2 = { name = "Grade", value = bXY, inline = true }
                        local bX_ = v.Condition or "?"
                        local bX0 = {
                            bXV_2,
                            bXW,
                            bXX_1,
                            bXZ_2,
                            { name = "Condition", value = tostring(bX_), inline = true },
                            { name = "Mutation", value = fns.cgs_44.MutationText(v), inline = true }
                        }
                        local bXR_2 = fns.cgs_44.RollLines(v)
                        if bXR_2 then
                            bX0[#bX0 + 1] = { name = "Stats", value = bXR_2, inline = false }
                        end
                        a25("Rare Find", fns.cgs_74.Name, bX0)
                    end
                end
            end
        end
    end
    fns.cgs_21 = true
end
function fns.fn2006(eN, eO, eP)
    local a8d_5
    if not eN then
        return true
    elseif type(eO) == "table" then
        if eN.Rarity and not eO[eN.Rarity] then
            return false
        end
        local a8d_2 = eP > 0
        if a8d_2 then
            a8d_2 = (eN.BasePrice or 0) < eP
        end
        if a8d_2 then
            return false
        end
        return true
    else
        local a8d_3 = fns.cgs_44.RARITY_RANK[eO]
        if a8d_3 then
            local a8e_2 = fns.cgs_44.RARITY_RANK[eN.Rarity]
            if a8e_2 and a8e_2 < a8d_3 then
                return false
            end
            if a8d_5 then
                return false
            end
            return true
        end
        a8d_5 = eP > 0
        if a8d_5 then
            local a8e_4 = eN.BasePrice
            local a8j_2 = if a8e_4 then 1 else 0
            local a8h_2 = 4041 * a8j_2 + 2683 * (1 - a8j_2)
            local a8i_2 = 344 * a8j_2 + 963 * (1 - a8j_2)
            if not ((a8h_2 * 2492 + a8i_2 * 308 + a8h_2 * a8i_2) % 16777213 == 11566228) then
                a8e_4 = 0
            end
            a8d_5 = a8e_4 < eP
        end
        if a8d_5 then
            return false
        end
        return true
    end
end
function fns.fn2016()
    for k in pairs(fns.cgs_44.NoclipTouched) do
        if k.Parent then
            k.CanCollide = true
        end
    end
    table.clear(fns.cgs_44.NoclipTouched)
end
function fns.fn2026(Yk, Yl)
    local bKb = Yl.Accessories and Yk.Category == "Accessories"
    if not bKb then
        bKb = Yl.Limited and Yk.Limited == true
    end
    local bKf = if bKb then 1 else 0
    local bKd = 1771 * bKf + 2498 * (1 - bKf)
    local bKe = 1435 * bKf + 2760 * (1 - bKf)
    if not ((bKd * 3084 + bKe * 991 + bKd * bKe) % 16777213 == 9425234) then
        bKb = Yl.Exclusives and Yk.EventExclusive ~= nil
    end
    return bKb
end
function fns.fn2053(Mj)
    local bAE = type(Mj) == "table"
    if bAE then
        local bAF = Mj.RewardItemId ~= nil
        local bAK = if bAF then 1 else 0
        local bAI = 2611 * bAK + 3184 * (1 - bAK)
        local bAJ = 493 * bAK + 2141 * (1 - bAK)
        if not ((bAI * 3656 + bAJ * 988 + bAI * bAJ) % 16777213 == 11320123) then
            local bAG = type(Mj.RewardDiamonds) == "number" and Mj.RewardDiamonds > 0
            bAF = bAG
        end
        bAE = bAF
    end
    return bAE
end
function fns.fn2065(PX, PY, PZ, P_, P0)
    local bDp = PZ and fns.cgs_64(PZ.Value)
    local bDq = {}
    local bDr = bDp
    local bDy = if bDr then 1 else 0
    local bDw = 3414 * bDy + 3456 * (1 - bDy)
    local bDx = 164 * bDy + 1445 * (1 - bDy)
    if not ((bDw * 849 + bDx * 301 + bDw * bDx) % 16777213 == 3507746) then
        bDr = bDq
    end
    local bDp_1 = P_
    local bDq_1 = bDr
    if bDp_1 then
        bDp_1 = fns.cgs_64(P_.Value)
    end
    local bDs = bDp_1 or {}
    bDs[fns.cgs_44.TROPHY_CHOICE] = nil
    local bDr_2 = next(bDq_1) ~= nil
    local bDs_1 = next(bDs) ~= nil
    local bDt = not bDs_1
    local bDu = not bDr_2
    if bDu ~= false then
        bDu = bDt
    end
    if bDu then
        return false
    end
    local bDt_1 = bDr_2
    if bDt_1 then
        bDt_1 = not PY or not bDq_1[PY.Name]
    end
    if bDt_1 then
        return false
    elseif not bDs_1 then
        return true
    else
        local bDq_2 = a2w(PX)
        if P0 and P0.Value == "All Selected Mutations" then
            for k in pairs(bDs) do
                if not bDq_2[k] then
                    return false
                end
            end
            return true
        end
        for k in pairs(bDs) do
            if bDq_2[k] then
                return true
            end
        end
        return false
    end
end
function fns.fn2066()
    if not fns.Toggles2.HideGroundItems or not fns.Toggles2.HideGroundItems.Value then
        if next(fns.cgs_44.HiddenGroundItems) ~= nil then
            fns.cgs_44.RestoreGroundItems()
        end
        return
    end
    local b_L_1 = fns.cgs_20()
    local b_M = b_L_1 and b_L_1:FindFirstChild("Stock")
    if not b_M then
        return
    end
    for i, child in ipairs(b_M:GetChildren()) do
        if fns.cgs_44.IsGroundItem(child) then
            fns.cgs_44.SetGroundItemHidden(child, true)
            fns.cgs_44.HiddenGroundItems[child] = true
        end
    end
end
function fns.fn2139()
    return fns.cgs_44.SeizedGarageTarget() ~= nil
end
function fns.fn2147()
    if setclipboard then
        setclipboard(a3W)
    elseif toclipboard then
        toclipboard(a3W)
    end
    fns.cgs_51:Notify("Copied Discord invite to clipboard")
end
function fns.fn2192()
    if not fns.cgs_44.GavelBypass.Applied then
        return
    end
    fns.cgs_44.GavelBypass.Applied = false
    if fns.cgs_44.TrophyConfig and fns.cgs_44.GavelBypass.ConfigBackup then
        fns.cgs_44.TrophyConfig.MaxCapacity = fns.cgs_44.GavelBypass.ConfigBackup.MaxCapacity
        fns.cgs_44.TrophyConfig.BaseCapacity = fns.cgs_44.GavelBypass.ConfigBackup.BaseCapacity
        fns.cgs_44.TrophyConfig.GamepassBonusCapacity = fns.cgs_44.GavelBypass.ConfigBackup.GamepassBonusCapacity
    end
    fns.cgs_44.GavelBypass.ConfigBackup = nil
    pcall(fns.cgs_44.PatchGavelPromptUpvalues, true)
    table.clear(fns.cgs_44.GavelBypass.PromptConns)
    if fns.cgs_44.GavelBypass.SetExtraAttr then
        pcall(function()
            fns.cgs_74:SetAttribute("ExtraGavelTrophy", nil)
        end)
        fns.cgs_44.GavelBypass.SetExtraAttr = false
    end
    if hookfunction then
        if fns.cgs_44.GavelBypass.OldPrompt then
            pcall(hookfunction, a4s.PromptGamePassPurchase, fns.cgs_44.GavelBypass.OldPrompt)
            fns.cgs_44.GavelBypass.OldPrompt = nil
        end
        if fns.cgs_44.GavelBypass.OldPromptProduct then
            pcall(hookfunction, a4s.PromptProductPurchase, fns.cgs_44.GavelBypass.OldPromptProduct)
            fns.cgs_44.GavelBypass.OldPromptProduct = nil
        end
        if fns.cgs_44.GavelBypass.OldOwns then
            pcall(hookfunction, a4s.UserOwnsGamePassAsync, fns.cgs_44.GavelBypass.OldOwns)
            fns.cgs_44.GavelBypass.OldOwns = nil
        end
        if fns.cgs_44.GavelBypass.OldGetCapacity and fns.cgs_44.TrophyHelper then
            pcall(hookfunction, fns.cgs_44.TrophyHelper.GetCapacity, fns.cgs_44.GavelBypass.OldGetCapacity)
            fns.cgs_44.GavelBypass.OldGetCapacity = nil
        end
    end
end
function fns.worker3()
    while not fns.cgs_51.Unloaded do
        pcall(a1i)
        pcall(fns.cgs_44.doEsp)
        pcall(fns.cgs_44.DoHideGroundItems)
        pcall(fns.cgs_44.RefreshStatus)
        pcall(fns.cgs_44.RefreshLootStatus)
        pcall(fns.cgs_44.RefreshProcessStatus)
        pcall(fns.cgs_44.RefreshShopStatus)
        pcall(fns.cgs_44.RefreshRewardStatus)
        pcall(fns.cgs_44.RefreshQuestStatus)
        pcall(fns.cgs_44.RefreshIndexStatus)
        pcall(fns.cgs_44.RefreshMiscStatus)
        pcall(fns.cgs_44.RefreshWildWestStatus)
        pcall(fns.cgs_44.RefreshBankHeistStatus)
        pcall(fns.cgs_44.RefreshWarehouseStatus)
        task.wait(0.5)
    end
end
function fns.fn2217()
    a3w.bypass = nil
    a3w.bidMatch = nil
    a3w.skipPending = nil
    a3w.powerPlantLotFingerprint = nil
    a3w.powerPlantLotStableAt = nil
end
function fns.fn2289()
    local bMT = fns.Toggles2.AutoGroundPickupItems.Value and not a3w.active and not a3w.entryAttempt
    if bMT then
        local bMU = os.clock()
        bMT = bMU >= (fns.a39.nextGroundPickupAt or 0)
    end
    return bMT
end
function fns.fn2389(jb, jc)
    if type(jb) == "string" then
        jb = jb:gsub("[%$,%s]", "")
    end
    local bbH = (tonumber(jb))
    local bbL = if bbH then 1 else 0
    local bbJ = 4028 * bbL + 3950 * (1 - bbL)
    local bbK = 51 * bbL + 1806 * (1 - bbL)
    if not ((bbJ * 58 + bbK * 2151 + bbJ * bbK) % 16777213 == 548753) then
        bbH = jc
    end
    return bbH
end
function fns.fn2449()
    local b0y_1, b0y_2
    local b0x_3, b0x_4
    local b0w_4, b0w_7
    local b0v_8
    if a1g() then
        a3w.entryAttempt = nil
        a3w.entryRetryAt = 0
        return
    end
    local b0u = (fns.cgs_44.StopNpcWinningsPending()) or a3w.winningsPickupActive
    local b0u_11
    if b0u then
        a3w.entryAttempt = nil
        a1J.status = a3w.winningsPickupActive and "collecting auction winnings" or "waiting for Stop NPC Bid winnings"
        return
    end
    local b0u_2 = fns.cgs_44.TruckUnloadPending and fns.cgs_44.TruckUnloadPending()
    if b0u_2 then
        a3w.entryAttempt = nil
        a1J.status = "waiting for truck unload"
        return
    end
    if fns.cgs_44.ShelfStockBusy then
        a1J.status = "waiting for shelf stocking"
        return
    end
    local b0I = if not fns.cgs_44.AuctionInventoryReady() then 1 else 0
    if b0I == 1 then
        a3w.entryAttempt = nil
        local b0u_3 = (tonumber(fns.cgs_74:GetAttribute("InventoryCount"))) or 0
        local b0u_4 = (tonumber(fns.cgs_74:GetAttribute("InventoryCap")))
        local b0F = if b0u_4 then 1 else 0
        local b0D = 3774 * b0F + 4040 * (1 - b0F)
        local b0E = 312 * b0F + 2882 * (1 - b0F)
        if not ((b0D * 1176 + b0E * 520 + b0D * b0E) % 16777213 == 5777952) then
            b0u_4 = 0
        end
        local b0w_1 = b0u_4
        local b0v_3 = b0w_1 > 0 and b0u_3 / b0w_1 * 100 or 100
        a1J.status = ("waiting for inventory below %d%% (%.0f%% full)"):format(a3G(fns.Options.AuctionInventoryMaxPercent.Value, 80), b0v_3)
        return
    end
    local entryAttempt = a3w.entryAttempt
    if entryAttempt then
        local Garage = entryAttempt.Garage
        local b0w_2 = os.clock() - entryAttempt.StartedAt
        local b0x_1 = not Garage or not Garage.Parent
        local b0C_1 = if b0x_1 then 1 else 0
        local b0A_1 = 2273 * b0C_1 + 255 * (1 - b0C_1)
        local b0B_1 = 3210 * b0C_1 + 1101 * (1 - b0C_1)
        if not ((b0A_1 * 667 + b0B_1 * 3922 + b0A_1 * b0B_1) % 16777213 == 4624828) then
            b0x_1 = b0w_2 >= 20
        end
        if b0x_1 then
            a1J.status = "auction entry stalled; resetting"
            pcall(function()
                fns.cgs_44.LeaveAuction:InvokeServer()
            end)
            a3w.entryAttempt = nil
            a3w.entryRetryAt = os.clock() + 2
            return
        end
        local b0w_3 = os.clock()
        if b0w_3 < (entryAttempt.NextPromptAt or 0) then
            return
        end
        b0y_1, b0x_3, b0w_4 = fns.a1X(Garage)
        local b0v_5 = b0w_4 or entryAttempt.TargetPosition
        fns.cgs_73()
        if not fns.cgs_83(b0x_3, b0v_5) then
            entryAttempt.NextPromptAt = os.clock() + 0.25
            return
        end
        if b0y_1 and b0x_3 and fireproximityprompt then
            task.wait(0.15)
            pcall(fireproximityprompt, b0y_1, b0y_1.HoldDuration)
            entryAttempt.NextPromptAt = os.clock() + 1.5
            a1J.status = "starting auction..."
        else
            entryAttempt.NextPromptAt = os.clock() + 0.25
            a1J.status = "loading auction entrance..."
        end
        return
    end
    local b0u_8 = os.clock()
    if b0u_8 < (a3w.entryRetryAt or 0) then
        return
    end
    if a1k then
        return
    end
    local b0C_2 = if fns.cgs_44.AutoClaimWinningsEnabled() then 1 else 0
    if b0C_2 == 1 then
        local b0u_9 = fns.cgs_44.PendingWinnings()
        if b0u_9 > 0 then
            if fns.cgs_44.PendingLast ~= b0u_9 then
                fns.cgs_44.PendingLast = b0u_9
                fns.cgs_44.PendingSince = os.clock()
            end
            if os.clock() - fns.cgs_44.PendingSince < 90 then
                a1J.status = "collecting winnings before next auction"
                return
            end
        else
            fns.cgs_44.PendingLast = nil
            fns.cgs_44.PendingSince = nil
            local b0u_10 = a3w.wonAt and os.clock() - a3w.wonAt < 20
            if b0u_10 then
                a1J.status = "waiting for winnings to drop"
                return
            end
        end
    end
    b0v_8, b0u_11 = fns.cgs_44.TargetAreas()
    if not next(b0v_8) then
        return
    end
    if fns.Toggles2.CollectLostFound.Value then
        if fns.cgs_44.RecoverLostFoundBeforeAuction(b0v_8) then
            return
        end
    end
    if fns.cgs_44.ShelfStockDue() then
        a1J.status = "waiting for shelf stocking"
        return
    end
    local b0w_6 = fns.cgs_44.AuctionWinDelayRemaining()
    if b0w_6 > 0 then
        a3w.entryAttempt = nil
        a1J.status = ("waiting %ds after win"):format(math.ceil(b0w_6))
        return
    end
    b0y_2, b0x_4, b0w_7 = fns.cgs_1(b0v_8, b0u_11)
    local b0u_12 = not b0w_7
    local b0v_9 = not b0y_2
    local b0C_3 = if b0v_9 then 1 else 0
    local b0A_2 = 805 * b0C_3 + 3899 * (1 - b0C_3)
    local b0B_2 = 828 * b0C_3 + 1472 * (1 - b0C_3)
    if not ((b0A_2 * 1229 + b0B_2 * 873 + b0A_2 * b0B_2) % 16777213 == 2378729) then
        b0v_9 = b0u_12
    end
    if b0v_9 then
        return
    end
    local b0L = if not fns.cgs_44.SwitchAccessoryLoadout(fns.Options.AuctionLoadout, "Auction") then 1 else 0
    if b0L == 1 then
        a1J.status = "waiting for accessory loadout"
        a3w.entryRetryAt = os.clock() + 2
        return
    end
    a3w.entryAttempt = { Garage = b0y_2, StartedAt = os.clock(), NextPromptAt = 0, TargetPosition = b0w_7 }
    fns.cgs_73()
    if not fns.cgs_83(b0x_4, b0w_7) then
        a3w.entryAttempt.NextPromptAt = os.clock() + 0.25
        return
    end
    task.wait(0.25)
    local b0u_13 = fns.a1X(b0y_2)
    if not b0u_13 or not fireproximityprompt then
        a3w.entryAttempt.NextPromptAt = os.clock() + 0.25
        a1J.status = "loading auction entrance..."
        return
    end
    pcall(fireproximityprompt, b0u_13, b0u_13.HoldDuration)
    a3w.entryAttempt.NextPromptAt = os.clock() + 1.5
    a1J.status = "starting auction..."
end
function fns.fn2454(anp, anq)
    local bWH_1
    local bWG = syn and syn.request or http_request or request
    local bWG_1
    if not bWG then
        return false, "no http_request in this executor"
    end
    bWG_1, bWH_1 = pcall(bWG, {
        Url = anp,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = fns.cgs_80:JSONEncode(anq)
    })
    if not bWG_1 then
        return false, tostring(bWH_1)
    end
    return true
end
function fns.fn2541(fs)
    local a8G = {}
    for i, descendant in ipairs(fs:GetDescendants()) do
        local a8H = (descendant:IsA("MeshPart")) and descendant.MeshId ~= ""
        if a8H then
            a8G[descendant.MeshId] = true
        end
    end
    return a8G
end
function fns.fn2626()
    local b1X_1
    local b1W = not a3w.active or a3w.usedCalculator
    local b1W_1
    if b1W then
        return
    end
    if fns.cgs_89("CalculatorPowers") <= 0 then
        return
    end
    a3w.usedCalculator = true
    b1W_1, b1X_1 = pcall(function()
        return fns.cgs_44.UseCalculator:InvokeServer()
    end)
    local b1Y = b1W_1 and type(b1X_1) == "number"
    if b1Y then
        a3w.lotValue = b1X_1
    end
end
function fns.fn2647(ab2)
    local attr, bML, bMQ
    local bMI = 4
    while true do
        local bMI_1 = 4158 - bMI
        do
            if bMI_1 < 4153 then
                if bMI_1 < 4149 then
                    if bMI_1 < 4147 then
                        if bMI_1 < 4146 then
                            if bMI_1 < 3183 then
                                break
                            elseif bMI_1 < 4144 then
                                if bMI_1 < 4143 then
                                    break
                                elseif bMI_1 == 4143 then
                                    bMI = 13
                                else
                                    bMI = 4146
                                    continue
                                end
                            elseif bMI_1 < 4145 then
                                bMI = if bML <= 2 then 15 else 11
                            else
                                fns.cgs_44.PickUpStockItem:FireServer(attr)
                                bMQ = 1
                                bMI = 5
                            end
                        elseif bMI_1 == 4146 then
                            bMI = if fns.cgs_44.GroundPickup.Confirmed(ab2, attr) then 10 else 1
                        else
                            bMI = 4150
                            continue
                        end
                    elseif bMI_1 < 4148 then
                        if bMI_1 == 4147 then
                            return false
                        end
                        bMI = 4148
                        continue
                    else
                        return true
                    end
                elseif bMI_1 < 4151 then
                    if bMI_1 < 4150 then
                        if bMI_1 == 4149 then
                            bML += 1
                            bMI = 14
                        else
                            bMI = 4144
                            continue
                        end
                    elseif bMI_1 == 4150 then
                        bML = 1
                        bMI = 14
                    else
                        bMI = 8734
                        continue
                    end
                elseif bMI_1 < 4152 then
                    bMI = 9
                elseif bMI_1 == 4152 then
                    bMQ += 1
                    bMI = 5
                else
                    bMI = 5405
                    continue
                end
            elseif bMI_1 < 4157 then
                if bMI_1 < 4155 then
                    if bMI_1 < 4154 then
                        if bMI_1 == 4153 then
                            bMI = if bMQ <= 10 then 2 else 7
                        else
                            bMI = 12919
                            continue
                        end
                    elseif bMI_1 == 4154 then
                        attr = ab2:GetAttribute("GUID")
                        bMI = if not attr then 3 else 8
                    else
                        bMI = 4143
                        continue
                    end
                elseif bMI_1 < 4156 then
                    if bMI_1 == 4155 then
                        return false
                    end
                    bMI = 11449
                    continue
                elseif bMI_1 == 4156 then
                    bMI = 12
                else
                    bMI = 1087
                    continue
                end
            elseif bMI_1 < 4158 then
                if bMI_1 == 4157 then
                    task.wait(0.1)
                    bMI = 6
                else
                    bMI = 4145
                    continue
                end
            else
                break
            end
        end
    end
end
function fns.fn2677()
    for i, v in ipairs(a2f) do
        local bZU_1 = workspace:FindFirstChild(v)
        if bZU_1 then
            for i, descendant in ipairs(bZU_1:GetDescendants()) do
                local bZU_2 = descendant.Parent and descendant:IsA("Model") and descendant:FindFirstChildOfClass("Humanoid") and not descendant:FindFirstChild("NPCQuestPrompt", true)
                if bZU_2 then
                    descendant:Destroy()
                    a1F.npcs = a1F.npcs + 1
                end
            end
        end
    end
    local bZU_3 = a3k()
    if bZU_3 then
        for i, child in ipairs(bZU_3:GetChildren()) do
            for i, child in ipairs(child:GetChildren()) do
                local bZU_4 = (child:IsA("Model")) and child:FindFirstChildOfClass("Humanoid") and not child:FindFirstChild("NPCQuestPrompt", true)
                if bZU_4 then
                    child:Destroy()
                    a1F.npcs = a1F.npcs + 1
                end
            end
        end
    end
    a1F.status = "npcs removed"
end
function fns.leaveIfLotBelowValueLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.LeaveIfLotBelowValue.Value then
            pcall(fns.cgs_44.DoAutoCalculator)
        end
        pcall(a2J)
        task.wait(0.5)
    end
end
function fns.fn2697(M3, M4, M5)
    local bA6, bA7, bA8, bA9, bBa, bBg, bBi, bBj, bBu, bBw, bBx
    local bBf = 4
    while true do
        local bBf_1 = 7805 - bBf
        do
            if bBf_1 < 7783 then
                if bBf_1 < 7778 then
                    if bBf_1 < 7775 then
                        if bBf_1 < 7768 then
                            if bBf_1 < 7767 then
                                if bBf_1 < 6735 then
                                    break
                                elseif bBf_1 < 7764 then
                                    if bBf_1 < 7762 then
                                        break
                                    elseif bBf_1 < 7763 then
                                        if bBf_1 == 7762 then
                                            bA8 = {}
                                            bA9 = bA7
                                            bBf = if bA9 then 10 else 40
                                        else
                                            bBf = 7796
                                            continue
                                        end
                                    elseif bBf_1 == 7763 then
                                        bBf = if not bA6 then 22 else 33
                                    else
                                        bBf = 7796
                                        continue
                                    end
                                elseif bBf_1 < 7765 then
                                    bBf = 31
                                elseif bBf_1 < 7766 then
                                    bA9 = bA8
                                    bBf = 10
                                elseif bBf_1 == 7766 then
                                    bA7 = bA8.error
                                    bBf = 1
                                else
                                    bBf = 7788
                                    continue
                                end
                            elseif bBf_1 == 7767 then
                                bA6 = 1
                                bBw = 1
                                bBu = M4
                                bBf = 7
                            else
                                bBf = 7802
                                continue
                            end
                        elseif bBf_1 < 7771 then
                            if bBf_1 < 7769 then
                                bBa = {}
                                local bBb = bA9
                                for i, v in ipairs(bA6.items) do
                                    bA6 = v.data
                                    local bA9_1 = bA6 and bA6.ItemId
                                    local bBc = fns.cgs_101(bA9_1)
                                    bA9 = not fns.cgs_44.PriorityGradeReserved(bA6, bBc)
                                    if bA9 then
                                        local bBd_1 = bBb
                                        if bBd_1 then
                                            local bBe_1 = type(bA6) ~= "table" or bA6.Grade == nil
                                            bBd_1 = bBe_1
                                        end
                                        bA9 = not bBd_1
                                    end
                                    if bA9 then
                                        local bBd_2 = bA8
                                        if bBd_2 then
                                            bBd_2 = not (bBc and bA7[bBc.Name])
                                        end
                                        bA9 = not bBd_2
                                    end
                                    if bA9 then
                                        bA9 = not fns.cgs_44.IgnoreFavoritedItem(bA6)
                                    end
                                    if bA9 then
                                        bBa[#bBa + 1] = v
                                    end
                                end
                                local bBn_1 = if #bBa == 0 then 1 else 0
                                local bBl_1 = 2237 * bBn_1 + 1222 * (1 - bBn_1)
                                local bBm_1 = 1976 * bBn_1 + 70 * (1 - bBn_1)
                                bBf = if (bBl_1 * 250 + bBm_1 * 2183 + bBl_1 * bBm_1) % 16777213 == 9293170 then 36 else 38
                            elseif bBf_1 < 7770 then
                                bBf = if fns.cgs_45[8] == "idle" then 27 else 29
                            elseif bBf_1 == 7770 then
                                bA7 = fns.cgs_64(fns.Options.PicklockItems.Value)
                                bBf = 43
                            else
                                bBf = 7786
                                continue
                            end
                        elseif bBf_1 < 7773 then
                            if bBf_1 < 7772 then
                                if bBf_1 == 7771 then
                                    bBf = if bA7 then 21 else 5
                                else
                                    bBf = 13331
                                    continue
                                end
                            elseif bBf_1 == 7772 then
                                bA6 = a18(fns.cgs_44.LocksmithEvents.GetLockableItems)
                                bA7 = type(bA6) ~= "table"
                                bBf = if bA7 then 34 else 6
                            else
                                bBf = 13669
                                continue
                            end
                        elseif bBf_1 < 7774 then
                            if bBf_1 == 7773 then
                                bBf = 16
                            else
                                bBf = 6009
                                continue
                            end
                        else
                            bBf = 0
                        end
                    elseif bBf_1 < 7776 then
                        if bBf_1 == 7775 then
                            bBf = 8
                        else
                            bBf = 7805
                            continue
                        end
                    elseif bBf_1 < 7777 then
                        if bBf_1 == 7776 then
                            return
                        end
                        bBf = 15063
                        continue
                    else
                        bA7 = bBa[bA6]
                        bA6 += 1
                        bA8 = a18(fns.cgs_44.LocksmithEvents.StartLocksmith, bBx, bA7.guid, bA7.source, bA7.vehicleGUID)
                        bBf = if a3I(bA8) then 11 else 15
                    end
                elseif bBf_1 < 7782 then
                    if bBf_1 < 7781 then
                        if bBf_1 < 7780 then
                            if bBf_1 < 7779 then
                                fns.cgs_45[8] = "Safe: no eligible safes"
                                bBf = 29
                            else
                                fns.cgs_45[8] = "Safe: " .. tostring(bA8.error)
                                bBf = 24
                            end
                        elseif bBf_1 == 7780 then
                            bBf = if bBi <= bBg then 2 else 42
                        else
                            bBf = 7762
                            continue
                        end
                    elseif bBf_1 == 7781 then
                        bBf = 23
                    else
                        bBf = 7772
                        continue
                    end
                else
                    bBf = 31
                end
            elseif bBf_1 < 7795 then
                if bBf_1 < 7791 then
                    if bBf_1 < 7788 then
                        if bBf_1 < 7785 then
                            if bBf_1 < 7784 then
                                return
                            elseif bBf_1 == 7784 then
                                return
                            else
                                bBf = 7795
                                continue
                            end
                        elseif bBf_1 < 7786 then
                            if bBf_1 == 7785 then
                                bBx = bBw
                                bBf = 19
                            else
                                bBf = 7782
                                continue
                            end
                        elseif bBf_1 < 7787 then
                            if bBf_1 == 7786 then
                                bBf = if not M5[bBx] then 41 else 30
                            else
                                bBf = 7792
                                continue
                            end
                        elseif bBf_1 == 7787 then
                            bBf = 13
                        else
                            bBf = 4031
                            continue
                        end
                    elseif bBf_1 < 7789 then
                        bBf = 14
                    elseif bBf_1 < 7790 then
                        break
                    elseif bBf_1 == 7790 then
                        bA7 = type(bA8) == "table"
                        bBf = if bA7 then 39 else 1
                    else
                        bBf = 2716
                        continue
                    end
                elseif bBf_1 < 7793 then
                    if bBf_1 < 7792 then
                        if bBf_1 == 7791 then
                            bBi += 1
                            bBf = 25
                        else
                            bBf = 7792
                            continue
                        end
                    else
                        bBf = 30
                    end
                elseif bBf_1 < 7794 then
                    bA6 = true
                    bBf = 42
                else
                    M5[bBx] = true
                    local ci5 = fns.cgs_45
                    ci5[1] = ci5[1] + 1
                    fns.cgs_45[8] = "Safe: started slot " .. tostring(bBx)
                    task.wait(fns.cgs_44.SAFE_CALL_DELAY)
                    bBf = 13
                end
            elseif bBf_1 < 7805 then
                if bBf_1 < 7800 then
                    if bBf_1 < 7798 then
                        if bBf_1 < 7797 then
                            if bBf_1 < 7796 then
                                bA7 = bA9
                                bA8 = next(bA7) ~= nil
                                bA9 = fns.Toggles2.PicklockOnlyGraded
                                bBf = if bA9 then 3 else 37
                            elseif bBf_1 == 7796 then
                                bBf = if not M5[bBj] then 12 else 17
                            else
                                bBf = 7794
                                continue
                            end
                        elseif bBf_1 == 7797 then
                            bBw += 1
                            bBf = 7
                        else
                            bBf = 7777
                            continue
                        end
                    elseif bBf_1 < 7799 then
                        bBf = if bBw <= bBu then 20 else 32
                    elseif bBf_1 == 7799 then
                        bA7 = type(bA6.items) ~= "table"
                        bBf = 34
                    else
                        bBf = 7793
                        continue
                    end
                elseif bBf_1 < 7802 then
                    if bBf_1 < 7801 then
                        bA7 = fns.Options.PicklockItems
                        local bBn_2 = if bA7 then 1 else 0
                        local bBl_2 = 743 * bBn_2 + 656 * (1 - bBn_2)
                        local bBm_2 = 1392 * bBn_2 + 1390 * (1 - bBn_2)
                        bBf = if (bBl_2 * 2382 + bBm_2 * 3802 + bBl_2 * bBm_2) % 16777213 == 8096466 then 35 else 43
                    else
                        bA6 = false
                        bBi = 1
                        bBg = M4
                        bBf = 25
                    end
                elseif bBf_1 < 7803 then
                    bA9 = fns.Toggles2.PicklockOnlyGraded.Value == true
                    bBf = 37
                elseif bBf_1 < 7804 then
                    bBj = bBi
                    bBf = 9
                elseif bBf_1 == 7804 then
                    bBf = if bA7 then 26 else 24
                else
                    bBf = 4031
                    continue
                end
            elseif bBf_1 < 10574 then
                if bBf_1 == 7805 then
                    bBf = if bBa[bA6] then 28 else 18
                else
                    bBf = 6009
                    continue
                end
            else
                break
            end
        end
    end
end
function fns.fn2741(XD)
    local bJp = type(XD) ~= "string" or a1k or fns.cgs_44.ShelfStockBusy
    if bJp then
        return
    end
    fns.cgs_44.ShelfStockBusy = true
    fns.cgs_44.ShelfOwnsBody = true
    local bJp_1 = fns.cgs_28(fns.cgs_44.DoStockShelves, false, XD)
    fns.cgs_44.ShelfOwnsBody = false
    fns.cgs_44.ShelfStockBusy = false
    if bJp_1 then
        fns.a39.auctionReleaseUntil = os.clock() + 0.5
    end
end
function fns.worker()
    pcall(fns.cgs_22)
end
function fns.fn2745(eE)
    return eE.EnergyDrinkId ~= nil
end
function fns.fn2781()
    fns.cgs_44.RunSafes()
    local bBO = if fns.cgs_45[8]:sub(1, 4) == "Safe" then 1 else 0
    if bBO == 1 then
        a3i[2] = fns.cgs_45[8]
    end
end
function fns.fn2837(kd)
    local bcp = Garages[kd:GetAttribute("GarageId")]
    return bcp and bcp.MinNetWorth or 0
end
function fns.fn2854()
    local bPd = (fns.cgs_74:GetAttribute("ClaimableAchievementCount")) or 0
    if bPd <= 0 then
        return
    end
    local bPd_1 = a18(fns.cgs_44.GetAchievementStatus)
    if type(bPd_1) ~= "table" then
        return
    end
    for k, v in pairs(bPd_1) do
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoAchievements.Value then
            return
        end
        local bPd_3 = type(v) == "table" and v.Status == "claimable"
        if bPd_3 then
            local bPd_4 = a18(fns.cgs_44.ClaimAchievementReward, k)
            local bPe = type(bPd_4) ~= "table" or bPd_4.success ~= false
            if bPe then
                a15.achievements = a15.achievements + 1
                a15.status = "claimed " .. tostring(k)
            end
            task.wait(0.5)
        end
    end
end
function fns.fn2873(SX)
    local bFN = a18(fns.cgs_44.GetShopStock, SX)
    if type(bFN) ~= "table" then
        return nil
    end
    local bFO = {}
    for k, v in pairs(bFN) do
        local bFN_1 = type(v) == "table" and v.Attrs
        if type(bFN_1) == "table" then
            bFO[#bFO + 1] = { Attrs = bFN_1, CF = v.CF, Template = v.Template }
        end
    end
    return bFO
end
function fns.fn2928(eY)
    local a8m_1
    local a8l_1
    local a8k = eY:GetAttribute("RolledAttributes")
    if type(a8k) == "string" then
        a8l_1, a8m_1 = pcall(fns.cgs_80.JSONDecode, fns.cgs_80, a8k)
        a8k = a8l_1 and a8m_1 or nil
    end
    return {
        ItemId = eY:GetAttribute("ItemId"),
        Condition = eY:GetAttribute("Condition"),
        Grade = eY:GetAttribute("Grade"),
        IsTrophy = eY:GetAttribute("IsTrophy") == true,
        Mutators = fns.MutatorModule:ParseMutatorsAttr(eY:GetAttribute("Mutators")),
        RolledAttributes = a8k
    }
end
function fns.fn2961(XM)
    local bJy = a18(fns.cgs_44.RequestPlotData)
    local bJz = type(bJy) ~= "table" or bJy.PlotName and bJy.PlotName ~= XM.Name or type(bJy.UnlockedTiles) ~= "table"
    if bJz then
        return nil
    end
    bJy.UnlockedSet = {}
    for i, v in ipairs(bJy.UnlockedTiles) do
        bJy.UnlockedSet[v] = true
    end
    return bJy
end
function fns.fn2987()
    if not a3w.active or a3w.winningsPickupActive or a3w.inZone or a3w.npcStopped or a1k then
        return
    end
    local garage = a3w.garage
    local b0N_1 = garage and garage.Parent and garage:FindFirstChild("AuctionZone")
    if b0N_1 then
        fns.cgs_65(b0N_1.Position)
    end
end
function fns.autoUnfavoriteDrinksLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoUnfavoriteDrinks.Value then
            pcall(fns.cgs_44.DoUnfavoriteDrinks)
        end
        if fns.Toggles2.AutoUseDrinks.Value then
            pcall(fns.cgs_44.DoUseDrinks)
        end
        task.wait(1)
    end
end
function fns.fn3003(aim)
    local bSu = fns.cgs_44.EquippedRod()
    local bSu_3
    local bSv = bSu and not fns.cgs_44.EquippedRodBroken(bSu)
    if bSv then
        local attr = bSu:GetAttribute("EquippedGuid")
        local bSu_1 = not aim or tostring(attr) ~= tostring(aim)
        if bSu_1 then
            return true
        end
        local bSu_2 = fns.cgs_44.WorkingRodGuid(aim)
        if not bSu_3 then
            fns.cgs_44.FishState.status = "no working fishing rod in inventory"
            return false
        end
        fns.cgs_44.EquipItem:FireServer(bSu_2)
        task.wait(0.75)
        local bSv_2 = fns.cgs_44.EquippedRod()
        local bSw_1 = bSv_2 ~= nil and tostring(bSv_2:GetAttribute("EquippedGuid")) == tostring(bSu_2) and not fns.cgs_44.EquippedRodBroken(bSv_2)
        return bSw_1
    end
    bSu_3 = fns.cgs_44.WorkingRodGuid(aim)
    if not bSu_3 then
        fns.cgs_44.FishState.status = "no working fishing rod in inventory"
        return false
    end
    fns.cgs_44.EquipItem:FireServer(bSu_3)
    task.wait(0.75)
    local bSv_3 = fns.cgs_44.EquippedRod()
    local bSw_2 = bSv_3 ~= nil and tostring(bSv_3:GetAttribute("EquippedGuid")) == tostring(bSu_3) and not fns.cgs_44.EquippedRodBroken(bSv_3)
    return bSw_2
end
function fns.fn3029()
    local Character = fns.cgs_74.Character
    if not Character then
        return nil
    end
    for i, child in ipairs(Character:GetChildren()) do
        if child:IsA("Tool") then
            local bRR_1 = fns.cgs_101(child:GetAttribute("ItemId"))
            local bRS = bRR_1 and bRR_1.Interactive == "FishingRod"
            local bRR_2 = bRS or child.Name:lower():find("fishing rod", 1, true)
            if bRR_2 then
                fns.cgs_44.HadRod = true
                return child
            end
        end
    end
    return nil
end
function fns.fn3033(d5)
    if not d5 then
        return nil
    end
    local a7V = Items[tostring(d5)] or Items[d5]
    return a7V
end
function fns.fn3034()
    local PlayerGui = fns.cgs_74:FindFirstChild("PlayerGui")
    local bGF = PlayerGui and PlayerGui:FindFirstChild("ToastsGui")
    return bGF
end
function fns.fn3040(QQ)
    local bD7 = (tonumber(QQ.Condition)) or 100
    if bD7 <= 0 then
        return true
    end
    return a2w(QQ).Broken == true
end
function fns.fn3078(XH)
    local bJr = tonumber(XH:GetAttribute("OriginX"))
    local bJs = tonumber(XH:GetAttribute("OriginY"))
    local bJt = tonumber(XH:GetAttribute("OriginZ"))
    if not bJr or not bJs or not bJt then
        return nil
    end
    local bJu_2 = (tonumber(XH:GetAttribute("RotationY"))) or 0
    return CFrame.new(bJr, bJs, bJt) * CFrame.Angles(0, math.rad(bJu_2), 0)
end
function fns.fn3130(Pr)
    if not fns.Toggles2.AutoFavouriteStats or not fns.Toggles2.AutoFavouriteStats.Value then
        return false
    end
    local bC3_1 = fns.Options.FavouriteStatList and fns.cgs_64(fns.Options.FavouriteStatList.Value)
    local bC5 = bC3_1 or {}
    if next(bC5) == nil then
        return false
    end
    local bC4_1 = fns.Options.FavouriteStatCategories and fns.cgs_64(fns.Options.FavouriteStatCategories.Value)
    local bC6 = bC4_1 or {}
    local bC5_2 = fns.cgs_101(Pr.ItemId)
    local bC6_1 = (next(bC6)) and not fns.cgs_44.CategoryMatch(bC5_2, bC6)
    if bC6_1 then
        return false
    end
    local bC4_3 = fns.Options.FavouriteStatRarities and fns.cgs_64(fns.Options.FavouriteStatRarities.Value)
    local bC7 = bC4_3 or {}
    local bC6_3 = (next(bC7))
    if bC6_3 then
        bC6_3 = not bC5_2 or bC7[bC5_2.Rarity] ~= true
    end
    if bC6_3 then
        return false
    end
    local RolledAttributes = Pr.RolledAttributes
    local bC5_3 = type(RolledAttributes) == "table" and RolledAttributes.Buffs
    if type(bC5_3) ~= "table" then
        return false
    end
    local bC5_4 = a3G(fns.Options.FavouriteStatMin.Value, 0)
    for i, v in ipairs(bC5_3) do
        local bC4_7 = type(v) == "table" and tostring(v.AttrId)
        local bC6_4 = bC4_7 or nil
        local bC4_8 = bC6_4
        if bC6_4 then
            bC6_4 = (fns.cgs_44.AccessoryAttributes.Definitions or {})[bC4_8]
        end
        local bC7_3 = bC6_4
        if bC6_4 then
            bC6_4 = tostring(bC7_3.Display)
        end
        local bC7_4 = bC6_4 or bC4_8
        local bC7_5 = type(v) == "table"
        if bC7_5 then
            bC7_5 = bC5[bC4_8] == true or bC5[bC7_4] == true
        end
        if bC7_5 then
            local bC4_9 = (tonumber(v.Magnitude)) or 0
            bC7_5 = bC4_9 >= bC5_4
        end
        if bC7_5 then
            return true
        end
    end
    return false
end
function fns.autoDailyRewardLoop()
    local cfA_2
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoDailyReward.Value then
            pcall(a1V)
        end
        if fns.Toggles2.AutoAchievements.Value then
            pcall(a1x)
        end
        if fns.Toggles2.AutoCollections.Value then
            pcall(fns.cgs_110)
        end
        if fns.Toggles2.AutoMuseumRewards.Value then
            pcall(fns.cgs_14)
        end
        if fns.Toggles2.AutoClaimClubQuests.Value then
            pcall(fns.cgs_44.DoClubQuests)
        end
        local cfz = fns.Toggles2.AutoLostFound.Value and not a3w.active and not fns.cgs_44.TruckUnloadPending()
        local cfz_2
        if cfz then
            local cfA_1 = fns.cgs_44.AuctionHasPriority and fns.cgs_44.AuctionHasPriority()
            cfz = not cfA_1
        end
        if cfz then
            for k in pairs(fns.cgs_44.LostFoundAreas()) do
                local cfz_1 = fns.cgs_51.Unloaded or not fns.Toggles2.AutoLostFound.Value or fns.cgs_44.TruckUnloadPending()
                if cfz_1 then
                    break
                end
                cfz_2, cfA_2 = pcall(a3J, k)
                if cfz_2 and not cfA_2 then
                    break
                end
            end
        end
        if fns.Toggles2.RareFindNotifier.Value then
            pcall(fns.a4y)
        end
        if fns.Toggles2.WebhookGradeResults.Value then
            pcall(fns.cgs_44.DoGradeWatch)
        end
        if fns.cgs_44.OptimizeDue() then
            pcall(fns.cgs_44.doOptimize)
        end
        task.wait(10)
    end
end
function fns.fn3179()
    local Plots = workspace:FindFirstChild("_Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == fns.cgs_74.UserId then
            return child
        end
    end
    return nil
end
function fns.fn3209(ez)
    return ez.CarPart ~= nil
end
function fns.fn3239(e4)
    local a8q = e4.Mutators or {}
    for i, v in ipairs(a8q) do
        if v.name then
            return true
        end
    end
    return false
end
function fns.fn3324(dB)
    local dC = tostring(math.floor(dB))
    local dD = dC:reverse():gsub("(%d%d%d)", "%1,"):reverse()
    return (dD:gsub("^,", ""))
end
function fns.fn3376(ajw)
    local bTn_1
    if fns.Options.ReelMethod and fns.Options.ReelMethod.Value == "Aggressive (edge lock)" then
        bTn_1 = 2.1 + ajw * 0.5 + math.random() * 0.4
    else
        bTn_1 = 3.4 + ajw * 1.2 + math.random() * 0.8
    end
    return bTn_1
end
function fns.fn3418(jB, jC)
    local WalkState = fns.cgs_44.WalkState
    local bb3 = fns.cgs_69()
    if not bb3 then
        return false
    end
    local bb4 = jB and jB.CFrame * Vector3.new(0, 0, 4)
    local bb5 = bb4 or jC
    if typeof(bb5) ~= "Vector3" then
        return false
    end
    local Magnitude = (bb3.Position - bb5).Magnitude
    local bb3_1 = fns.Toggles2.WalkToNearbyAuctions and fns.Toggles2.WalkToNearbyAuctions.Value == true
    local bb3_2 = fns.Options.AuctionWalkDistance and fns.Options.AuctionWalkDistance.Value
    local bb7 = a3G(bb3_2, 200)
    if not bb3_1 or Magnitude > bb7 then
        WalkState.target = nil
        return fns.cgs_65(bb5)
    end
    local Character = fns.cgs_74.Character
    local bb6_1 = Character and Character:FindFirstChildOfClass("Humanoid")
    if not bb6_1 or bb6_1.Health <= 0 then
        return false
    elseif bb6_1.SeatPart then
        bb6_1.Sit = false
        return false
    elseif Magnitude <= 8 then
        WalkState.target = nil
        bb6_1:Move(Vector3.zero)
        return true
    else
        local bb6_3 = os.clock()
        if not WalkState.target or (WalkState.target - bb5).Magnitude > 6 then
            WalkState.target = bb5
            WalkState.since = bb6_3
            WalkState.bestDist = Magnitude
            bb6_1:MoveTo(bb5)
            a1J.status = ("walking %.0f studs to auction..."):format(Magnitude)
            return false
        elseif Magnitude < WalkState.bestDist - 2 then
            WalkState.bestDist = Magnitude
            WalkState.since = bb6_3
            bb6_1:MoveTo(bb5)
            a1J.status = ("walking %.0f studs to auction..."):format(Magnitude)
            return false
        elseif bb6_3 - WalkState.since > 4 then
            WalkState.target = nil
            return fns.cgs_65(bb5)
        else
            bb6_1:MoveTo(bb5)
            a1J.status = ("walking %.0f studs to auction..."):format(Magnitude)
            return false
        end
    end
end
function fns.fn3453()
    table.clear(fns.cgs_44.GavelBypass.PassIds)
    table.clear(fns.cgs_44.GavelBypass.ProductIds)
    fns.cgs_44.GavelBypass.PassIds[1919438589] = true
    fns.cgs_44.GavelBypass.ProductIds[3610386069] = true
    fns.cgs_44.GavelBypass.ProductIds[3610386063] = true
    local a5Y = fns.cgs_44.Monetisation and fns.cgs_44.Monetisation.Gamepasses and fns.cgs_44.Monetisation.Gamepasses.ExtraGavelTrophy
    if type(a5Y) == "table" then
        local a5Y_1 = tonumber(a5Y.GamepassId)
        local a5_ = tonumber(a5Y.StudioPromptGamepassId)
        local a50 = tonumber(a5Y.ProductId)
        if a5Y_1 and a5Y_1 > 0 then
            fns.cgs_44.GavelBypass.PassIds[a5Y_1] = true
        end
        if a5_ and a5_ > 0 then
            fns.cgs_44.GavelBypass.PassIds[a5_] = true
        end
        if a50 and a50 > 0 then
            fns.cgs_44.GavelBypass.ProductIds[a50] = true
        end
    end
end
function fns.fn3486()
    for k, v in pairs(fns.a2l) do
        if v then
            v:Destroy()
        end
        fns.a2l[k] = nil
    end
end
function fns.fn3500(eD)
    return eD.SafeId ~= nil
end
function fns.fn3501(S5, S6)
    local bF_ = S6 or a2i.Snapshot(S5)
    S6 = bF_
    if not S6 then
        return {}
    end
    local bF__1 = {}
    for i, v in ipairs(S6) do
        local Attrs = v.Attrs
        if Attrs.ShelfGUID and Attrs.SnapPointName then
            bF__1[a2i.SlotKey(Attrs.ShelfGUID, Attrs.SnapPointName)] = true
        end
    end
    local Stock = S5:FindFirstChild("Stock")
    local bF1_2 = Stock and Stock:GetChildren()
    local bF2 = bF1_2 or {}
    for i, v in ipairs(bF2) do
        local attr2 = v:GetAttribute("ShelfGUID")
        local attr = v:GetAttribute("SnapPointName")
        if attr2 and attr then
            bF__1[a2i.SlotKey(attr2, attr)] = true
        end
    end
    local bF0_5 = {}
    for i, descendant in ipairs(S5:GetDescendants()) do
        local bF1_4 = (descendant:IsA("Attachment")) and descendant.Name:match("^SnapPoint")
        if bF1_4 then
            local Model = descendant:FindFirstAncestorOfClass("Model")
            local bF2_2 = Model and Model:GetAttribute("GUID")
            local bF3 = bF2_2
            if bF2_2 then
                bF2_2 = Model:GetAttribute("IsShelf") == true
            end
            if bF2_2 then
                bF2_2 = not bF__1[a2i.SlotKey(bF3, descendant.Name)]
            end
            if bF2_2 then
                bF0_5[#bF0_5 + 1] = {
                    Shelf = tostring(bF3),
                    Model = Model,
                    Attachment = descendant,
                    Key = a2i.SlotKey(bF3, descendant.Name)
                }
            end
        end
    end
    table.sort(bF0_5, function(Ts, Tt)
        return Ts.Key < Tt.Key
    end)
    return bF0_5
end
function fns.fn3610()
    local GoldNuggetDropConfig = require(fns.cgs_12.GoldNuggetDropConfig)
    a4f = a3G(GoldNuggetDropConfig.Reward, 15)
end
function fns.fn3630()
    if fns.cgs_74:GetAttribute("DailyRewardClaimable") ~= true then
        return
    end
    local bO8 = a18(fns.cgs_44.ClaimDailyReward)
    if bO8 then
        a15.daily = a15.daily + 1
        a15.status = "claimed daily reward"
    end
end
function fns.fn3655()
    a3w.winningsPickupActive = false
    a3w.winningsCarSpawned = false
    a3w.stopNpcAwaitingWinnings = false
    a3w.stopNpcWinningsDeadline = 0
    a3w.winningsObserved = false
    a3w.winningsZeroSince = nil
    a3w.wonAt = nil
    a3w.wonDrop = nil
end
function fns.fn3665()
    if not a4g() then
        a3w.bypassPending = false
        return false
    elseif a3w.bypass ~= true then
        local Value4 = fns.Options.BypassItems.Value
        local Value3 = fns.Options.BypassMutations.Value
        local Value2 = fns.Options.BypassCategories.Value
        local Value = fns.Options.BypassRarities.Value
        local baV = fns.Options.BypassMinWeight
        if baV then
            local baW_1 = (tonumber(fns.Options.BypassMinWeight.Value)) or 0
            baV = baW_1
        end
        local baW_2 = baV or 0
        local baV_1 = fns.cgs_94(Value4, Value3, "Any Filter", Value2, Value, baW_2)
        if baV_1 == nil then
            local baR_1 = os.clock()
            local baS_1 = a3w.activeAt
            local ba_ = if baS_1 then 1 else 0
            local baY = 1451 * ba_ + 1976 * (1 - ba_)
            local baZ = 2643 * ba_ + 543 * (1 - ba_)
            if not ((baY * 1718 + baZ * 1246 + baY * baZ) % 16777213 == 9620989) then
                baS_1 = 0
            end
            a3w.bypassPending = baR_1 - baS_1 < 6
            return false
        end
        a3w.bypassPending = false
        a3w.bypass = baV_1
        return a3w.bypass == true
    else
        return a3w.bypass == true
    end
end
function fns.autoCollectProcessedLoop()
    while not fns.cgs_51.Unloaded do
        pcall(fns.cgs_115)
        if fns.Toggles2.AutoCollectProcessed.Value then
            pcall(fns.cgs_44.DoAutoCollect)
        end
        if fns.Toggles2.AutoCapsule.Value then
            pcall(a2s)
        end
        if fns.Toggles2.AutoBuyCleaningSpray.Value then
            pcall(fns.cgs_44.DoBuyCleaningSpray)
        end
        if fns.Toggles2.AutoCleanItems.Value then
            pcall(fns.cgs_44.DoCleanItems)
        end
        task.wait(5)
    end
end
function fns.fn3706(YN, YO)
    local bKm = fns.cgs_44.GroundPlacement.BaseMetrics(YO)
    local bKn = 1
    local bKo = fns.MutatorModule:GetSizeMutator(YN)
    if bKo then
        local bKp = fns.MutatorModule:GetSizeByName(bKo.name)
        local bKo_1 = bKp and tonumber(bKp.Scale)
        bKn = bKo_1 or 1
    end
    return bKm.Size * bKn, bKm.Bottom * bKn
end
function fns.fn3713()
    if fns.Toggles2.AntiGameplayPause and fns.Toggles2.AntiGameplayPause.Value then
        fns.cgs_44.ApplyAntiGameplayPause(true)
    end
end
function fns.fn3721()
    if fns.cgs_44.GavelBypass.Applied then
        return
    end
    fns.cgs_44.ReadGavelPassIds()
    fns.cgs_44.GavelBypass.Applied = true
    if fns.cgs_44.TrophyConfig then
        fns.cgs_44.GavelBypass.ConfigBackup = {
            MaxCapacity = fns.cgs_44.TrophyConfig.MaxCapacity,
            BaseCapacity = fns.cgs_44.TrophyConfig.BaseCapacity,
            GamepassBonusCapacity = fns.cgs_44.TrophyConfig.GamepassBonusCapacity
        }
        fns.cgs_44.TrophyConfig.MaxCapacity = 99
        fns.cgs_44.TrophyConfig.BaseCapacity = 99
        fns.cgs_44.TrophyConfig.GamepassBonusCapacity = 99
    end
    if fns.cgs_74:GetAttribute("ExtraGavelTrophy") ~= true then
        pcall(function()
            fns.cgs_74:SetAttribute("ExtraGavelTrophy", true)
        end)
        fns.cgs_44.GavelBypass.SetExtraAttr = true
    end
    pcall(fns.cgs_44.PatchGavelPromptUpvalues, false)
    if hookfunction then
        if not fns.cgs_44.GavelBypass.OldPrompt then
            local function a6S_1(ch)
                return ch
            end
            local a6T_1 = newcclosure or a6S_1
            fns.cgs_44.GavelBypass.OldPrompt = hookfunction(a4s.PromptGamePassPurchase, a6T_1(function(ck, cl, cm)
                local a6H = Toggles.BypassGavelLimit and Toggles.BypassGavelLimit.Value and fns.cgs_44.IsGavelPromptId(cm)
                if a6H then
                    return
                end
                return fns.cgs_44.GavelBypass.OldPrompt(ck, cl, cm)
            end))
        end
        if not fns.cgs_44.GavelBypass.OldPromptProduct then
            local function a6S_3(cp)
                return cp
            end
            local a6T_2 = newcclosure or a6S_3
            fns.cgs_44.GavelBypass.OldPromptProduct = hookfunction(a4s.PromptProductPurchase, a6T_2(function(cr, cs, ct)
                local a6J = Toggles.BypassGavelLimit and Toggles.BypassGavelLimit.Value and fns.cgs_44.IsGavelPromptId(ct)
                if a6J then
                    return
                end
                return fns.cgs_44.GavelBypass.OldPromptProduct(cr, cs, ct)
            end))
        end
        if not fns.cgs_44.GavelBypass.OldOwns then
            local function a6S_5(cw)
                return cw
            end
            local a6T_3 = newcclosure or a6S_5
            fns.cgs_44.GavelBypass.OldOwns = hookfunction(a4s.UserOwnsGamePassAsync, a6T_3(function(cA, cB, cC)
                local a6L = Toggles.BypassGavelLimit and Toggles.BypassGavelLimit.Value and fns.cgs_44.IsGavelPromptId(cC)
                if a6L then
                    return true
                end
                return fns.cgs_44.GavelBypass.OldOwns(cA, cB, cC)
            end))
        end
        if fns.cgs_44.TrophyHelper and not fns.cgs_44.GavelBypass.OldGetCapacity then
            local function a6S_8(cG)
                return cG
            end
            local a6T_4 = newcclosure
            local a6X = if a6T_4 then 1 else 0
            local a6V = 521 * a6X + 3603 * (1 - a6X)
            local a6W = 1094 * a6X + 3347 * (1 - a6X)
            if not ((a6V * 2242 + a6W * 1374 + a6V * a6W) % 16777213 == 3241212) then
                a6T_4 = a6S_8
            end
            local a6S_9 = a6T_4
            fns.cgs_44.GavelBypass.OldGetCapacity = hookfunction(fns.cgs_44.TrophyHelper.GetCapacity, a6S_9(function(cI)
                if Toggles.BypassGavelLimit and Toggles.BypassGavelLimit.Value then
                    return 99
                end
                return fns.cgs_44.GavelBypass.OldGetCapacity(cI)
            end))
        end
    end
end
function fns.fn3729()
    local bWb = fns.Options.VehicleChoice and fns.Options.VehicleChoice.Value
    if not bWb then
        return nil, nil
    end
    local bWb_1 = a16[bWb]
    if bWb_1 then
        return bWb_1, bWb
    end
    fns.cgs_22()
    return bWb and a16[bWb], bWb
end
function fns.fn3732(anL, anM, anN)
    local bWN = anN ~= nil and not fns.cgs_44.WebhookMutationAllowed(anN)
    if bWN then
        return false
    end
    local bWN_1 = a3G(fns.Options.WebhookMinValue.Value, 0)
    if bWN_1 > 0 and anM < bWN_1 then
        return false
    end
    local bWN_2 = fns.cgs_64(fns.Options.WebhookItems.Value)
    local bWO_1 = (next(bWN_2)) and (not anL or not bWN_2[anL.Name])
    if bWO_1 then
        return false
    end
    return true
end
function fns.fn3744(gu)
    local a9z = fns.Options[fns.cgs_44.BID_MUTATIONS_PREFIX .. gu]
    if not a9z then
        return {}
    end
    return fns.cgs_64(a9z.Value)
end
function fns.fn3813()
    local b_n = false
    if fns.cgs_44.CleanUpWorldEnabled() then
        pcall(a14)
        pcall(fns.cgs_97)
        a1F.status = "world cleaned"
        b_n = true
    end
    if fns.cgs_44.RemoveNpcsEnabled() then
        pcall(fns.cgs_61)
        a1F.status = b_n and "world cleaned, npcs removed" or "npcs removed"
        b_n = true
    end
    if not b_n then
        a1F.status = "idle"
    end
end
function fns.fn3833(anZ)
    local bWU = fns.Options.WebhookMutations and fns.cgs_64(fns.Options.WebhookMutations.Value)
    local bWU_1 = bWU or {}
    if not next(bWU_1) then
        return true
    end
    for k in pairs(fns.cgs_44.EntryMutationNames(anZ)) do
        if bWU_1[k] then
            return true
        end
    end
    return false
end
function fns.fn3839()
    local bTU = a3w.active or a1k or a24() or fns.cgs_44.FishState.swapping
    local bT_ = if bTU then 1 else 0
    local bTY = 2747 * bT_ + 1834 * (1 - bT_)
    local bTZ = 291 * bT_ + 1438 * (1 - bT_)
    if not ((bTY * 2096 + bTZ * 3608 + bTY * bTZ) % 16777213 == 7607017) then
        bTU = fns.cgs_44.FishState.sellingBroken
    end
    if bTU then
        return
    end
    if fns.cgs_44.FishState.busy then
        if os.clock() - fns.cgs_44.FishState.castAt > 40 then
            fns.cgs_44.FishState.busy = false
            fns.cgs_44.FishState.phase = "idle"
            local FishState2 = fns.cgs_44.FishState
            FishState2.castSerial = FishState2.castSerial + 1
            local FishState = fns.cgs_44.FishState
            FishState.reelSerial = FishState.reelSerial + 1
            fns.cgs_44.FishState.status = "cast timed out"
            pcall(function()
                fns.cgs_44.FishingCancel:FireServer()
            end)
        end
        return
    end
    if not fns.cgs_44.EquipRod() then
        return
    end
    local bTU_1 = fns.cgs_44.FishingWater()
    if not bTU_1 then
        fns.cgs_44.FishState.status = "no water found"
        return
    end
    local bTV = fns.cgs_69()
    if not bTV then
        return
    end
    local bTW = bTU_1.Position + Vector3.new(0, bTU_1.Size.Y / 2, 0)
    if (bTV.Position - bTW).Magnitude > 200 then
        local bTW_1 = fns.cgs_44.FishingBankSpot(bTU_1)
        if not bTW_1 then
            fns.cgs_44.BadWater[bTU_1] = true
            fns.cgs_44.WaterPart = nil
            fns.cgs_44.FishState.status = "no safe bank here, trying another spot"
            return
        end
        fns.cgs_65(bTW_1)
        task.wait(0.4)
        bTV = fns.cgs_69()
        if not bTV then
            return
        end
    end
    local bTW_2 = fns.cgs_44.CastTarget(bTU_1, bTV)
    fns.cgs_44.FishState.busy = true
    fns.cgs_44.FishState.phase = "casting"
    fns.cgs_44.FishState.castAt = os.clock()
    local FishState3 = fns.cgs_44.FishState
    FishState3.castSerial = FishState3.castSerial + 1
    local FishState2 = fns.cgs_44.FishState
    FishState2.reelSerial = FishState2.reelSerial + 1
    local FishState = fns.cgs_44.FishState
    FishState.casts = FishState.casts + 1
    fns.cgs_44.FishState.status = "waiting for a bite"
    fns.cgs_44.FishingCast:FireServer(bTU_1, bTW_2)
end
function fns.fn3856(ahX)
    local bR3_1
    local bR2_1
    local bR_ = a18(fns.cgs_44.GetPlayerInventory)
    if type(bR_) ~= "table" then
        return nil
    end
    local bR0 = fns.Options.PreferredRod and fns.Options.PreferredRod.Value
    bR3_1, bR2_1 = nil, nil
    for k, v in pairs(bR_) do
        local bR__1 = fns.cgs_101(v.ItemId)
        local bR0_1 = tostring(k) ~= tostring(ahX) and bR__1 and bR__1.Interactive == "FishingRod" and not fns.cgs_44.RodBroken(v) and not fns.cgs_44.IgnoreFavoritedItem(v)
        if bR0_1 then
            local bR0_4 = (bR__1.Name == bR0 and 1000000 or 0) + (bR__1.Consumable and 0 or 100000)
            local bR5 = (tonumber(v.Condition)) or 100
            local bR6 = bR0_4 + bR5
            if not bR2_1 or bR6 > bR2_1 then
                bR3_1, bR2_1 = k, bR6
            end
        end
    end
    return bR3_1
end
function fns.autoWorldLootLoop()
    while not fns.cgs_51.Unloaded do
        if fns.cgs_44.AutoClaimWinningsEnabled() then
            pcall(fns.a3l)
        end
        if fns.Toggles2.AutoWorldLoot.Value then
            pcall(a2j)
        end
        if fns.Toggles2.AutoUnloadTruck.Value then
            pcall(fns.cgs_25)
        end
        if fns.Toggles2.AutoFishing.Value then
            pcall(fns.cgs_44.DoFishing)
        end
        if fns.Toggles2.AutoEquipRod.Value or fns.Toggles2.AutoSwapBrokenRod.Value then
            pcall(fns.cgs_44.KeepRodEquipped)
        end
        task.wait(1)
    end
end
function fns.fn3880()
    if fns.cgs_44.FishState.swapping or fns.cgs_44.FishState.sellingBroken or fns.cgs_44.FishState.busy then
        return
    end
    local bSP_1 = fns.cgs_44.EquippedRod()
    local bSQ = bSP_1 and not fns.cgs_44.EquippedRodBroken(bSP_1)
    if bSQ then
        return
    end
    local bSQ_1 = fns.Toggles2.AutoEquipRod.Value
    if not bSQ_1 then
        bSQ_1 = fns.Toggles2.AutoSwapBrokenRod.Value and fns.cgs_44.HadRod == true
    end
    if not bSQ_1 then
        return
    end
    local Character = fns.cgs_74.Character
    local bSR_3 = not bSP_1
    if bSR_3 ~= false then
        bSR_3 = Character
    end
    if bSR_3 then
        bSR_3 = Character:FindFirstChildOfClass("Tool")
    end
    if bSR_3 then
        return
    end
    fns.cgs_44.EquipRod()
end
function fns.fn3910(ek)
    local a73 = type(ek) == "table" and ek.Favorited == true and fns.Toggles2.IgnoreFavoritedItems ~= nil and fns.Toggles2.IgnoreFavoritedItems.Value == true
    return a73
end
function fns.onOnClientEvent8(akN, akO)
    local bUd = akN ~= "break"
    local bUe = fns.cgs_51.Unloaded
    local bUj = if bUe then 1 else 0
    local bUh = 2980 * bUj + 792 * (1 - bUj)
    local bUi = 2177 * bUj + 230 * (1 - bUj)
    if not ((bUh * 168 + bUi * 1303 + bUh * bUi) % 16777213 == 9824731) then
        bUe = bUd
    end
    local bUd_1 = akO ~= fns.cgs_74
    local bUf = bUe
    local bUj_1 = if bUf then 1 else 0
    local bUh_1 = 1602 * bUj_1 + 1606 * (1 - bUj_1)
    local bUi_1 = 493 * bUj_1 + 1049 * (1 - bUj_1)
    if not ((bUh_1 * 1646 + bUi_1 * 1635 + bUh_1 * bUi_1) % 16777213 == 4232733) then
        bUf = bUd_1
    end
    if bUf then
        return
    end
    if fns.Toggles2.AutoSwapBrokenRod.Value then
        fns.cgs_44.SwapBrokenRod()
    else
        fns.cgs_44.FishState.busy = false
        fns.cgs_44.FishState.phase = "idle"
        local FishState2 = fns.cgs_44.FishState
        FishState2.castSerial = FishState2.castSerial + 1
        local FishState = fns.cgs_44.FishState
        FishState.reelSerial = FishState.reelSerial + 1
        fns.cgs_44.FishState.sellAfter = os.clock() + 0.5
        fns.cgs_44.FishState.status = "rod broke"
        if fns.Toggles2.AutoSellBrokenRods and fns.Toggles2.AutoSellBrokenRods.Value then
            task.delay(0.55, fns.cgs_44.SellBrokenRods)
        end
    end
end
function fns.fn3948()
    a4t(fns.cgs_112(), function(arb)
        local bZB = arb:find("tree") ~= nil or arb:find("bush") ~= nil or arb:find("plant") ~= nil or arb:find("foliage") ~= nil
        return bZB
    end, "trees")
    a1F.status = "trees removed"
end
function fns.worker2()
    while not fns.cgs_51.Unloaded do
        if fns.cgs_66() then
            pcall(fns.cgs_17)
        elseif a3w.entryAttempt then
            a3w.entryAttempt = nil
            a3w.entryRetryAt = 0
        end
        pcall(fns.cgs_109)
        task.wait(0.25)
    end
end
function fns.fn3965()
    if os.clock() < a3H.nextCheckAt then
        return
    end
    local bQi = (fns.cgs_74:GetAttribute("InventoryCount")) or 0
    local bQj = (fns.cgs_74:GetAttribute("InventoryCap")) or math.huge
    if bQi >= bQj then
        a15.status = "inventory full; cannot buy luck drinks"
        a3H.nextCheckAt = os.clock() + 5
        return
    end
    local bQi_1 = a18(fns.cgs_44.GetEnergyCatalog)
    local bQj_1 = type(bQi_1) ~= "table" or type(bQi_1.Drinks) ~= "table"
    if bQj_1 then
        a3H.nextCheckAt = os.clock() + 2
        a15.status = "luck drink catalog unavailable; retrying"
        return
    end
    local bQj_2 = a3h()
    local bQk = fns.cgs_64(fns.Options.BuyDrinkList.Value)
    local bQl = next(bQk)
    local bQm = {}
    local bQn = bQl ~= nil
    local bQl_1 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bQl_1) ~= "table" then
        a3H.nextCheckAt = os.clock() + 2
        a15.status = "luck drink inventory unavailable; retrying"
        return
    end
    local bQo = {}
    for k, v in pairs(bQl_1) do
        local bQl_2 = fns.cgs_101(v.ItemId)
        if bQl_2 and bQl_2.EnergyDrinkId ~= nil then
            local bQp_2 = tostring(bQl_2.EnergyDrinkId)
            bQo[bQp_2] = (bQo[bQp_2] or 0) + 1
        end
    end
    for k, v in pairs(bQi_1.Drinks) do
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoBuyDrinks.Value then
            return
        end
        if type(v) == "table" then
            local bQl_5 = (tonumber(v.DiamondPrice)) or 0
            local bQl_6 = (tonumber(v.StockRemaining)) or 0
            local bQl_7 = (tonumber(v.MinNetWorth)) or 0
            local bQr = not bQn
            if not bQr then
                bQr = bQk[v.Name] == true
            end
            local bQl_8 = bQr
            local bQr_1 = tostring(v.EnergyDrinkId)
            local bQt = fns.cgs_44.DrinkStockOptionIds[bQr_1]
            local bQu = bQt and fns.Options[bQt]
            local bQt_1 = bQu
            if bQu then
                bQu = bQt_1.Value
            end
            local bQt_2 = a3G(bQu, 0)
            local bQu_1 = bQo[bQr_1] or 0
            local bQv = not fns.Toggles2.UseDrinkStockTargets.Value
            if not bQv then
                bQv = bQt_2 > 0 and bQu_1 < bQt_2
            end
            local bQu_4 = bQl_8
            local bQl_9 = bQv
            if bQu_4 then
                bQu_4 = bQl_9
            end
            if bQu_4 then
                bQu_4 = bQl_6 > 0
            end
            if bQu_4 then
                bQu_4 = bQl_5 > 0
            end
            if bQu_4 then
                bQu_4 = bQj_2 >= bQl_7
            end
            if bQu_4 then
                local bQl_10 = #bQm + 1
                local EnergyDrinkId = v.EnergyDrinkId
                local bQs_1 = v.Name or v.EnergyDrinkId
                bQm[bQl_10] = { Id = EnergyDrinkId, Name = tostring(bQs_1), Price = bQl_5, Owned = bQu_1, Target = bQt_2 }
            end
        end
    end
    table.sort(bQm, function(agM, agN)
        local bQf = (tonumber(agM.Id)) or 0
        local bQg = (tonumber(agN.Id)) or 0
        return bQf > bQg
    end)
    local bQj_3 = nil
    for i, v in ipairs(bQm) do
        local bQk_1 = v.Id ~= nil and a1u(v.Price)
        if bQk_1 then
            bQj_3 = v
            break
        end
    end
    if not bQj_3 then
        local bQk_2 = (tonumber(bQi_1.RestockSeconds)) or 10
        a3H.nextCheckAt = os.clock() + math.clamp(bQk_2, 2, 10)
        return
    end
    local bQi_3 = a1H()
    local bQk_3 = a18(fns.cgs_44.BuyDrink, bQj_3.Id)
    task.wait(0.4)
    local bQl_11 = bQk_3 == true
    if not bQl_11 then
        local bQm_1 = type(bQk_3) == "table" and bQk_3.success == true
        bQl_11 = bQm_1
    end
    if not bQl_11 then
        bQl_11 = a1H() < bQi_3
    end
    if bQl_11 then
        a15.drinks = a15.drinks + 1
        local bQi_5 = bQj_3.Target > 0 and ("bought %s (%d/%d stocked)"):format(bQj_3.Name, bQj_3.Owned + 1, bQj_3.Target)
        a15.status = bQi_5 or "bought " .. bQj_3.Name
        a3H.nextCheckAt = os.clock() + 0.75
    else
        local bQi_6 = type(bQk_3) == "table"
        if bQi_6 then
            bQi_6 = bQk_3.error or bQk_3.message
        end
        local bQj_5 = bQi_6
        if bQi_6 then
            bQi_6 = ": " .. tostring(bQj_5)
        end
        a15.status = "luck drink purchase failed" .. (bQi_6 or "; retrying")
        a3H.nextCheckAt = os.clock() + 2
    end
end
function fns.fn3984(eF, eG)
    if not eF then
        return false
    end
    if eF.Category and eG[eF.Category] then
        return true
    end
    for i, v in ipairs(fns.cgs_44.EXTRA_CATEGORIES) do
        local a75_1 = eG[v.Name] and v.Match(eF)
        if a75_1 then
            return true
        end
    end
    return false
end
function fns.fn4009(TN)
    return math.max(0.01, math.floor(a3V(TN) * 100 + 0.5) / 100)
end
function fns.fn4039(ki)
    return a3h() >= fns.cgs_63(ki)
end
function fns.fn4043()
    local a7a = isfolder and isfolder("sh_fs_probe_" .. math.random(1000000, 9999999))
    return a7a
end
function fns.autoStoreItemsLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoStoreItems.Value then
            pcall(fns.cgs_44.DoAutoStoreItems)
        end
        task.wait(1)
    end
end
function fns.fn4052()
    local Character = fns.cgs_74.Character
    local bUl = Character and Character:FindFirstChildOfClass("Humanoid")
    return bUl
end
function fns.fn4112(Ms)
    local bAL = a18(fns.cgs_44.LocksmithEvents.ClaimItem, Ms)
    local bAM = 0
    while true do
        local bAN = not a3I(bAL) and bAM < 3
        if bAN then
            bAM += 1
            task.wait(0.6)
            bAL = a18(fns.cgs_44.LocksmithEvents.ClaimItem, Ms)
            continue
        end
        break
    end
    local bAR = if a3I(bAL) then 1 else 0
    if bAR == 1 then
        local ckR = fns.cgs_45
        ckR[2] = ckR[2] + 1
        fns.cgs_45[8] = "Safe: claimed slot " .. tostring(Ms)
        return true
    end
    local bAM_1 = type(bAL) == "table" and bAL.error
    if bAM_1 then
        fns.cgs_45[8] = "Safe: " .. tostring(bAL.error)
    end
    return false
end
function fns.fn4126(abJ, abK, abL, abM)
    local bMq = not abJ:IsA("Model") or abJ:GetAttribute("ShelfGUID")
    local bMx = if bMq then 1 else 0
    local bMv = 205 * bMx + 1935 * (1 - bMx)
    local bMw = 2405 * bMx + 1488 * (1 - bMx)
    if not ((bMv * 2312 + bMw * 2947 + bMv * bMw) % 16777213 == 8054520) then
        bMq = abJ:GetAttribute("SnapPointName")
    end
    if bMq then
        return false
    end
    local attr = abJ:GetAttribute("GUID")
    local bMr = fns.cgs_101(abJ:GetAttribute("ItemId"))
    if not attr or not bMr then
        return false
    end
    local bMq_2 = abM and next(abM)
    if bMq_2 then
        return abM[bMr.Name] == true
    end
    local bMq_3 = (next(abK)) and not fns.cgs_44.CategoryMatch(bMr, abK)
    if bMq_3 then
        return false
    end
    local bMq_4 = bMr.Name or abJ.Name
    local bMs_1 = tostring(bMq_4):lower()
    if abL.Accessories and bMr.Category == "Accessories" then
        return false
    end
    local bMq_6 = abL.Drinks
    if bMq_6 then
        local bMt_1 = bMr.EnergyDrinkId ~= nil or bMs_1:find("drink", 1, true)
        bMq_6 = bMt_1
    end
    if bMq_6 then
        return false
    end
    local bMq_7 = abL.Certificates and bMs_1:find("certificate", 1, true)
    if bMq_7 then
        return false
    end
    return true
end
function fns.fn4162()
    local b_9 = a3w.active
    local b0d = if b_9 then 1 else 0
    local b0b = 2738 * b0d + 150 * (1 - b0d)
    local b0c = 3726 * b0d + 116 * (1 - b0d)
    if not ((b0b * 1044 + b0c * 3732 + b0b * b0c) % 16777213 == 10188479) then
        b_9 = fns.cgs_74:GetAttribute("InAuction") == true
    end
    return b_9
end
function fns.fn4168()
    local bOR = a18(fns.cgs_44.GetPlayerInventory)
    if type(bOR) ~= "table" then
        return
    end
    for k, v in pairs(bOR) do
        local bOR_1 = fns.cgs_51.Unloaded
        if not bOR_1 then
            bOR_1 = not fns.Toggles2.AutoFavourite.Value and not fns.Toggles2.AutoFavouriteStats.Value and not fns.Toggles2.AutoFavouriteTrophies.Value
        end
        if bOR_1 then
            return
        end
        local bOR_2 = fns.cgs_101(v.ItemId)
        local bOT = fns.cgs_44.FavouritePending and fns.cgs_44.FavouritePending[k] or 0
        local bOS_3 = bOR_2
        if bOS_3 then
            bOS_3 = fns.cgs_44.AutoFavouriteMatch(v)
        end
        if bOS_3 then
            bOS_3 = not v.Favorited
        end
        if bOS_3 then
            bOS_3 = os.clock() >= bOT
        end
        if bOS_3 then
            fns.cgs_44.FavouritePending = fns.cgs_44.FavouritePending or {}
            fns.cgs_44.FavouritePending[k] = os.clock() + 5
            local bOS_5 = a18(fns.cgs_44.ToggleFavoriteItem, k)
            task.wait(0.4)
            local bOT_2 = a18(fns.cgs_44.GetPlayerInventory)
            local bOU_1 = type(bOT_2) == "table" and bOT_2[k]
            local bOU_2 = bOS_5 == true
            if not bOU_2 then
                local bOS_6 = type(bOU_1) == "table" and bOU_1.Favorited == true
                bOU_2 = bOS_6
            end
            if bOU_2 then
                fns.a39.favourited = fns.a39.favourited + 1
                local bOS_8 = {}
                for k in pairs(a2w(v)) do
                    if k ~= fns.cgs_44.TROPHY_CHOICE then
                        bOS_8[#bOS_8 + 1] = k
                    end
                end
                table.sort(bOS_8)
                local Name = bOR_2.Name
                local bOU_3 = #bOS_8 > 0 and " [" .. table.concat(bOS_8, ", ") .. "]"
                fns.a39.status = "favourited " .. Name .. (bOU_3 or "")
            end
        end
    end
end
function fns.fn4199()
    if fns.cgs_44.PoliceEscape.hooked then
        return
    end
    if not (hookmetamethod and getnamecallmethod and fns.cgs_44.PoliceChaseRemote) then
        return
    end
    fns.cgs_44.PoliceEscape.hooked = true
    local function a64_1(cP)
        return cP
    end
    local a64_2 = newcclosure or a64_1
    fns.cgs_44.PoliceEscape.OldNamecall = hookmetamethod(game, "__namecall", a64_2(function(cR, ...)
        local a61 = cR == fns.cgs_44.PoliceChaseRemote
        if a61 then
            local a62_1 = not checkcaller or not checkcaller()
            a61 = a62_1
        end
        if a61 then
            a61 = getnamecallmethod() == "FireServer"
        end
        if a61 then
            a61 = not Library.Unloaded
        end
        if a61 then
            a61 = Toggles.AutoEscapePolice
        end
        if a61 then
            a61 = Toggles.AutoEscapePolice.Value
        end
        if a61 then
            local a62_2 = ...
            if a62_2 == "Arrest" then
                return
            end
            return fns.cgs_44.PoliceEscape.OldNamecall(cR, ...)
        end
        return fns.cgs_44.PoliceEscape.OldNamecall(cR, ...)
    end))
end
function fns.fn4206()
    local bWh = fns.Options.VehicleChoice and fns.Options.VehicleChoice.Value
    local bWi = bWh
    if bWh then
        bWh = a16[bWi]
    end
    return bWh or nil
end
function fns.fn4216(gp)
    local a9x = fns.Options[fns.cgs_44.SKIP_MUTATIONS_PREFIX .. gp]
    if not a9x then
        return {}
    end
    return fns.cgs_64(a9x.Value)
end
function fns.fn4221()
    local Debris = workspace:FindFirstChild("_Debris")
    local bcd = Debris and Debris:FindFirstChild("Garages")
    return bcd
end
function fns.fn4231()
    local a7w_1
    local a7u = fns.Options.ContainerFilter and fns.Options.ContainerFilter.Value
    local a7u_1
    if type(a7u) ~= "table" then
        return nil
    end
    a7w_1, a7u_1 = {}, false
    for i, v in ipairs(fns.cgs_44.CONTAINERS) do
        if a7u[v.Label] then
            a7w_1[v.Id] = true
            a7u_1 = true
        end
    end
    return a7u_1 and a7w_1 or nil
end
function fns.fn4319()
    local bE6 = os.clock()
    if bE6 < (fns.a39.nextStoreAt or 0) or a3w.active or a3w.entryAttempt then
        return
    end
    fns.a39.nextStoreAt = os.clock() + 3
    local bE6_1 = fns.cgs_64(fns.Options.AutoStoreItemList.Value)
    local bE7_1 = fns.Toggles2.StoreGradedOnly and fns.Toggles2.StoreGradedOnly.Value == true
    local bE7_2 = fns.Toggles2.StoreMutatedItems and fns.Toggles2.StoreMutatedItems.Value == true
    local bE7_3 = not bE7_2
    local bFa = not next(bE6_1)
    if bFa ~= false then
        bFa = bE7_3
    end
    if bFa then
        fns.a39.storageStatus = "choose items to store"
        return
    end
    local bE7_4 = fns.cgs_20()
    if not bE7_4 then
        fns.a39.storageStatus = "no owned plot"
        return
    end
    local bFa_1 = {}
    for i, descendant in ipairs(bE7_4:GetDescendants()) do
        local attr = descendant:GetAttribute("CrateId")
        local bFb_1 = (descendant:GetAttribute("OwnerUserId")) or descendant:GetAttribute("PlacedBy")
        local bFb_2 = (descendant:IsA("Model")) and attr and bFb_1 == fns.cgs_74.UserId
        if bFb_2 then
            local bFb_3 = a18(fns.cgs_44.StorageEvents.GetCrate, attr)
            local bFc_2 = type(bFb_3) == "table" and not bFb_3.Error
            if bFc_2 then
                local bFc_3 = (tonumber(bFb_3.Capacity)) or 0
                local bFc_4 = tonumber(bFb_3.Count)
                local bFe_1 = not bFc_4
                if bFe_1 ~= false then
                    bFe_1 = type(bFb_3.Contents) == "table"
                end
                if bFe_1 then
                    bFc_4 = 0
                    for k in pairs(bFb_3.Contents) do
                        bFc_4 += 1
                    end
                end
                local max = math.max
                local bFe_2 = bFc_4 or 0
                local bFc_5 = max(0, bFc_3 - bFe_2)
                if bFc_5 > 0 then
                    bFa_1[#bFa_1 + 1] = { Id = attr, Free = bFc_5 }
                end
            end
        end
    end
    if #bFa_1 == 0 then
        fns.a39.storageStatus = "no storage box space"
        return
    end
    local bE7_6 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bE7_6) ~= "table" then
        fns.a39.storageStatus = "inventory unavailable"
        return
    end
    local bFb_5 = {}
    for k, v in pairs(bE7_6) do
        local bE7_7 = fns.cgs_101(v.ItemId)
        if bE7_7 and v.Favorited ~= true then
            local bFc_7 = bE6_1[bE7_7.Name]
            if bFc_7 then
                bFc_7 = not bE7_1 or v.Grade ~= nil
            end
            local bFd_3 = bE7_2
            local bFe_3 = bFc_7
            if bFd_3 then
                bFd_3 = next(a2w(v)) ~= nil
            end
            if bFe_3 or bFd_3 then
                bFb_5[#bFb_5 + 1] = { Guid = k, Name = bE7_7.Name }
            end
        end
    end
    table.sort(bFb_5, function(SF, SG)
        if SF.Name ~= SG.Name then
            return SF.Name < SG.Name
        end
        return tostring(SF.Guid) < tostring(SG.Guid)
    end)
    if #bFb_5 == 0 then
        fns.a39.storageStatus = "no matching unfavorited items"
        return
    end
    local bE6_2 = 1
    local bE7_8 = {}
    for i, v in ipairs(bFa_1) do
        local bE8_2 = math.min(v.Free, 10 - #bE7_8)
        local bFG = 1
        while bFG <= bE8_2 do
            local bE8_3 = bFb_5[bE6_2]
            if not bE8_3 then
                break
            end
            bE6_2 += 1
            bE7_8[#bE7_8 + 1] = bE8_3
            fns.cgs_44.StorageEvents.Deposit:FireServer(v.Id, bE8_3.Guid)
            task.wait(0.2)
            bFG += 1
        end
        if #bE7_8 >= 10 or not bFb_5[bE6_2] then
            break
        end
    end
    task.wait(0.5)
    local bE6_3 = a18(fns.cgs_44.GetPlayerInventory)
    local bE8_5 = 0
    if type(bE6_3) == "table" then
        for i, v in ipairs(bE7_8) do
            local bE7_9 = bE6_3[v.Guid] == nil and bE6_3[tostring(v.Guid)] == nil
            if bE7_9 then
                bE8_5 += 1
            end
        end
    end
    fns.a39.stored = fns.a39.stored + bE8_5
    local bE6_4 = bE8_5 > 0
    if bE6_4 then
        local bE9_1 = bE8_5 == 1 and "" or "s"
        bE6_4 = ("stored %d item%s"):format(bE8_5, bE9_1)
    end
    fns.a39.storageStatus = bE6_4 or "storage deposit failed, retrying"
end
function fns.autoIndexFarmLoop()
    while not fns.cgs_51.Unloaded do
        if not a3w.active then
            pcall(fns.cgs_16, fns.cgs_44.LostFoundAreas())
        end
        if fns.Toggles2.IndexLiveStatus.Value or fns.Toggles2.AutoIndexFarm.Value then
            pcall(fns.cgs_44.DoIndexUpkeep)
        end
        task.wait(5)
    end
end
function fns.fn4431(O_)
    return a2w(O_)
end
function fns.fn4441()
    local EnableThresholdBypass = fns.Toggles2.EnableThresholdBypass
    if not EnableThresholdBypass or EnableThresholdBypass.Value ~= true then
        return false
    end
    local baK_1 = next(fns.cgs_64(fns.Options.BypassItems.Value)) ~= nil
    local baQ = if baK_1 then 1 else 0
    local baO = 1409 * baQ + 3594 * (1 - baQ)
    local baP = 4021 * baQ + 208 * (1 - baQ)
    if not ((baO * 1106 + baP * 1814 + baO * baP) % 16777213 == 14518037) then
        baK_1 = next(fns.cgs_64(fns.Options.BypassMutations.Value)) ~= nil
    end
    if not baK_1 then
        baK_1 = next(fns.cgs_64(fns.Options.BypassCategories.Value)) ~= nil
    end
    if not baK_1 then
        baK_1 = next(fns.cgs_64(fns.Options.BypassRarities.Value)) ~= nil
    end
    if not baK_1 then
        local baL_1 = fns.Options.BypassMinWeight ~= nil
        if baL_1 then
            local baM = (tonumber(fns.Options.BypassMinWeight.Value)) or 0
            baL_1 = baM > 0
        end
        baK_1 = baL_1
    end
    return baK_1
end
function fns.fn4469()
    local bcV_1
    local bcU_1
    bcU_1, bcV_1 = pcall(function()
        return fns.cgs_44.GetCargoShipNavTarget:InvokeServer()
    end)
    local bcW = bcU_1 and type(bcV_1) == "table" and next(bcV_1) ~= nil
    if bcW then
        return true
    end
    return fns.cgs_1({ ["Cargo Ship"] = true }, true) ~= nil
end
function fns.fn4510()
    local bZI = a3k()
    if bZI then
        for i, child in ipairs(bZI:GetChildren()) do
            for k in pairs(a1I) do
                local bZI_1 = child:FindFirstChild(k)
                if bZI_1 then
                    bZI_1:Destroy()
                    a1F.containers = a1F.containers + 1
                end
            end
        end
    end
    a4t(fns.cgs_112(), function(art)
        local bZG = art:find("container") ~= nil or art:find("crate") ~= nil
        return bZG
    end, "containers")
    a1F.status = "containers removed (items kept)"
end
function fns.fn4517()
    if folder and folder.Parent then
        return folder
    end
    folder = Instance.new("Folder")
    folder.Name = "OuroborosESP"
    folder.Parent = fns.cgs_74:WaitForChild("PlayerGui")
    return folder
end
function fns.onStepped()
    if fns.cgs_51.Unloaded or not fns.Toggles2.Noclip or not fns.Toggles2.Noclip.Value then
        return
    end
    local Character = fns.cgs_74.Character
    if not Character then
        return
    end
    for i, descendant in ipairs(Character:GetDescendants()) do
        local bUD_2 = (descendant:IsA("BasePart")) and descendant.CanCollide
        if bUD_2 then
            descendant.CanCollide = false
            fns.cgs_44.NoclipTouched[descendant] = true
        end
    end
end
function fns.autoBestLockpickLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoBestLockpick.Value then
            pcall(fns.cgs_107)
        end
        if fns.Toggles2.AutoOpenSafes.Value then
            pcall(a2S)
        end
        task.wait(5)
    end
end
function fns.fn4584(ahD)
    local Position
    local bRE_1
    local bRB = fns.cgs_69()
    local bRC = ahD.Size * 0.5
    local bRD = RaycastParams.new()
    bRD.FilterType = Enum.RaycastFilterType.Exclude
    bRD.FilterDescendantsInstances = { ahD, fns.cgs_74.Character }
    Position, bRE_1 = nil, nil
    for i, v in ipairs({
        Vector3.new(bRC.X + 5, 0, 0),
        Vector3.new(-bRC.X - 5, 0, 0),
        Vector3.new(0, 0, bRC.Z + 5),
        Vector3.new(0, 0, -bRC.Z - 5)
    }) do
        local bRG = ahD.Position + v + Vector3.new(0, bRC.Y + 30, 0)
        local bRH = workspace:Raycast(bRG, Vector3.new(0, -100, 0), bRD)
        if bRH then
            local bRI = bRB and (bRH.Position - bRB.Position).Magnitude or 0
            if not bRE_1 or bRI < bRE_1 then
                Position, bRE_1 = bRH.Position, bRI
            end
        end
    end
    return Position
end
function fns.fn4699(Ub, Uc, Ud)
    local bGV = a2i.ShelfName(Ub.Model)
    if bGV:find("Large Floor Podium", 1, true) then
        return true
    end
    local bGW = tonumber(Ub.Attachment:GetAttribute("SlotWidth"))
    local bGX = tonumber(Ub.Attachment:GetAttribute("SlotDepth"))
    if not bGW or not bGX or bGW <= 0 or bGX <= 0 then
        return false
    end
    local bGY_1 = a2i.ItemSize(Uc, Ud)
    if not bGY_1 then
        return false
    end
    local bGZ = (bGV:find("Podium", 1, true)) and 2
    local bGV_1 = bGZ or 1
    bGW *= bGV_1
    bGX *= bGV_1
    local bGZ_2 = bGY_1.X <= bGW and bGY_1.Z <= bGX
    if not bGZ_2 then
        bGZ_2 = bGY_1.Z <= bGW and bGY_1.X <= bGX
    end
    local bGV_4 = bGZ_2
    local bGW_1 = tonumber(Ub.Attachment:GetAttribute("SlotHeight"))
    local bGX_1 = bGV_4
    if bGX_1 then
        local bGV_5 = not bGW_1
        local bG5 = if bGV_5 then 1 else 0
        local bG3 = 919 * bG5 + 3769 * (1 - bG5)
        local bG4 = 423 * bG5 + 3173 * (1 - bG5)
        if not ((bG3 * 3588 + bG4 * 1178 + bG3 * bG4) % 16777213 == 4184403) then
            bGV_5 = bGW_1 <= 0
        end
        local bG2 = if bGV_5 then 1 else 0
        local bG0 = 56 * bG2 + 1046 * (1 - bG2)
        local bG1 = 3315 * bG2 + 3272 * (1 - bG2)
        if not ((bG0 * 3970 + bG1 * 862 + bG0 * bG1) % 16777213 == 3265490) then
            bGV_5 = bGY_1.Y <= bGW_1
        end
        bGX_1 = bGV_5
    end
    return bGX_1
end
function fns.fn4703()
    local bSY_1
    local WaterPart = fns.cgs_44.WaterPart
    local bSX = WaterPart and WaterPart.Parent
    local bSX_1
    if bSX then
        return WaterPart
    end
    local bSW_1 = fns.cgs_69()
    bSY_1, bSX_1 = nil, nil
    for i, descendant in ipairs(workspace:GetDescendants()) do
        local bSZ = (descendant:IsA("BasePart")) and descendant.Name:lower() == "water" and descendant.Size.X > 20 and not fns.cgs_44.BadWater[descendant]
        if bSZ then
            local bS_ = bSW_1 and (descendant.Position - bSW_1.Position).Magnitude or 0
            if not bSX_1 or bS_ < bSX_1 then
                bSY_1, bSX_1 = descendant, bS_
            end
        end
    end
    fns.cgs_44.WaterPart = bSY_1
    return bSY_1
end
function fns.autoWashLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoWash.Value or fns.Toggles2.AutoWashRods.Value then
            pcall(a2F)
        end
        task.wait(0.5)
    end
end
function fns.fn4737(atI)
    local b0T_3
    local b0S_5
    local b0R_1
    if not atI or not atI.Parent then
        return nil
    end
    local attr = atI:GetAttribute("AreaName")
    local Position = atI:GetPivot().Position
    if attr == "Cargo Ship" then
        local CargoShip = workspace:FindFirstChild("CargoShip")
        local b0T_1 = CargoShip and CargoShip:FindFirstChild("AreaBoundary", true)
        b0R_1 = b0T_1
    else
        local Areas = workspace:FindFirstChild("Areas")
        local b0T_2 = Areas and type(attr) == "string" and Areas:FindFirstChild(attr)
        local b0S_3 = b0T_2
        if b0T_2 then
            b0T_2 = b0S_3:FindFirstChild("AreaBoundary")
        end
        b0R_1 = b0T_2
    end
    local b0S_4 = b0R_1 and b0R_1:IsA("BasePart")
    if b0S_4 then
        return Vector3.new(b0R_1.Position.X, Position.Y, b0R_1.Position.Z)
    end
    local b0R_2 = a3x()
    b0T_3, b0S_5 = Vector3.zero, 0
    local b0U = b0R_2 and type(attr) == "string"
    if b0U then
        for i, child in ipairs(b0R_2:GetChildren()) do
            local b0R_3 = (child:IsA("Model")) and child:GetAttribute("AreaName") == attr
            if b0R_3 then
                b0T_3 += child:GetPivot().Position
                b0S_5 += 1
            end
        end
    end
    if b0S_5 > 1 then
        local b0P_2 = b0T_3 / b0S_5
        return Vector3.new(b0P_2.X, Position.Y, b0P_2.Z)
    end
    return Position + Vector3.new(0, 0, 250)
end
function fns.fn4747()
    local b0f_1, b0f_2
    local b0e = (fns.cgs_44.StopNpcWinningsPending()) or a3w.winningsPickupActive
    local b0e_4, b0e_5, b0e_6
    if b0e then
        return true
    end
    local b0e_1 = not a1g() and fns.cgs_44.TruckUnloadPending and fns.cgs_44.TruckUnloadPending()
    if b0e_1 then
        return false
    elseif a3w.entryAttempt then
        return true
    elseif a1g() then
        return true
    elseif not fns.cgs_66() then
        return false
    else
        local b0j = if fns.cgs_44.AutoClaimWinningsEnabled() then 1 else 0
        if b0j == 1 then
            if fns.cgs_44.PendingWinnings() > 0 then
                return true
            end
            local b0e_2 = a3w.wonAt and os.clock() - a3w.wonAt < 20
            if b0e_2 then
                return true
            end
            local b0e_3 = not fns.cgs_44.AuctionInventoryReady() or fns.cgs_44.AuctionWinDelayRemaining() > 0
            if b0e_5 then
                return false
            end
            b0f_1, b0e_4 = fns.cgs_44.TargetAreas()
            if not next(b0f_2) then
                return false
            elseif fns.cgs_44.ShelfStockDue() then
                return false
            else
                return fns.cgs_1(b0f_1, b0e_4) ~= nil
            end
        else
            b0e_5 = not fns.cgs_44.AuctionInventoryReady() or fns.cgs_44.AuctionWinDelayRemaining() > 0
            if b0e_5 then
                return false
            end
            b0f_2, b0e_6 = fns.cgs_44.TargetAreas()
            if not next(b0f_2) then
                return false
            elseif fns.cgs_44.ShelfStockDue() then
                return false
            else
                return fns.cgs_1(b0f_2, b0e_6) ~= nil
            end
        end
    end
end
function fns.fn4752()
    return fns.Toggles2.RemoveNpcs ~= nil and fns.Toggles2.RemoveNpcs.Value == true
end
function fns.fn4761(jw)
    local bb0 = fns.cgs_69()
    if not bb0 then
        return false
    end
    bb0.CFrame = CFrame.new(jw + Vector3.new(0, 4, 0))
    return true
end
function fns.autoFavouriteLoop()
    while not fns.cgs_51.Unloaded do
        if fns.Toggles2.AutoFavourite.Value or fns.Toggles2.AutoFavouriteStats.Value or fns.Toggles2.AutoFavouriteTrophies.Value then
            pcall(fns.cgs_34)
        end
        if fns.Toggles2.AutoUnfavourite.Value then
            pcall(fns.cgs_58)
        end
        task.wait(1)
    end
end
function fns.fn4809(SV, SW)
    return tostring(SV) .. "|" .. tostring(SW)
end
function fns.fn4818()
    return nil
end
function fns.onOnClientEvent(iS, iT, iU, iV, iW)
    if iW then
        if a3w.garage ~= nil and iW ~= a3w.garage then
            a1s()
        end
        a3w.garage = iW
    end
    local bbA_2 = (tonumber(iS)) or tonumber((tostring(iS):gsub("[%$,%s]", "")))
    local bbB = bbA_2 or 0
    local bbB_1 = (tonumber(iV)) or tonumber((tostring(iV):gsub("[%$,%s]", "")))
    local bbC = bbB_1
    if bbC == nil and bbB == a3w.currentBid and iT == a3w.winner then
        bbC = a3w.nextBid
    end
    if bbB ~= a3w.currentBid or iT ~= a3w.winner or bbC ~= a3w.nextBid then
        a3w.bidRequestKey = nil
        a3w.bidRequestAt = 0
    end
    a3w.currentBid = bbB
    a3w.winner = iT
    a3w.nextBid = bbC
    local bbA_4 = (fns.cgs_44.StopNpcBidEnabled()) and iT == fns.cgs_74.Name and not a3w.npcStopped and not fns.cgs_44.StopNpcWinningsPending() and not a3w.winningsPickupActive
    if bbA_4 then
        a3w.npcStopped = true
        a3w.stopNpcAwaitingWinnings = fns.cgs_44.AutoClaimWinningsEnabled()
        local bbA_5 = a3w.stopNpcAwaitingWinnings and os.clock() + 90
        a3w.stopNpcWinningsDeadline = bbA_5 or 0
        task.spawn(fns.cgs_44.StopNpcBidAndLeave)
    else
        if a3w.npcStopped and iT and iT ~= fns.cgs_74.Name then
            a3w.npcStopped = false
            a3w.stopNpcAwaitingWinnings = false
            a3w.stopNpcWinningsDeadline = 0
            if not fns.cgs_44.StopNpcBidFastMode() then
                task.spawn(fns.cgs_44.SetAuctionPaused, false)
            end
        end
    end
end
function fns.fn4868(dX)
    local a7H = {}
    if type(dX) == "table" then
        for k, v in pairs(dX) do
            if v then
                a7H[k] = true
            end
        end
    end
    return a7H
end
function fns.fn4882()
    local bXq = a18(fns.cgs_44.GetPlayerInventory)
    if type(bXq) ~= "table" then
        return
    end
    local bXr = fns.cgs_64(fns.Options.WebhookGrades.Value)
    for k, v in pairs(bXq) do
        local bXq_1 = v.Grade or false
        local bXq_2 = a37[k]
        a37[k] = bXq_1
        if a2t and bXq_2 ~= bXq_1 and bXq_1 ~= false then
            local bXq_4 = fns.cgs_101(v.ItemId)
            local bXt_2 = a3V(v)
            local bXu_1 = next(bXr) == nil or bXr[bXq_1] == true
            local bXv = bXu_1 and fns.cgs_44.WebhookAllowed(bXq_4, bXt_2)
            if bXv then
                local bXu_3 = { name = "Item", value = bXq_4 and bXq_4.Name or "Unknown item", inline = true }
                local bXw = fns.cgs_44.GRADE_LABELS[bXq_1] or tostring(bXq_1)
                local bXs_1 = { name = "Grade", value = bXw, inline = true }
                local bXx = { name = "Value", value = ("$%.0f"):format(bXt_2), inline = true }
                local bXq_5 = bXq_4 and bXq_4.Rarity or "?"
                local bXy_1 = {
                    bXu_3,
                    bXs_1,
                    bXx,
                    { name = "Rarity", value = tostring(bXq_5), inline = true },
                    { name = "Mutation", value = fns.cgs_44.MutationText(v), inline = true }
                }
                local bXq_6 = fns.cgs_44.RollLines(v)
                if bXq_6 then
                    bXy_1[#bXy_1 + 1] = { name = "Stats", value = bXq_6, inline = false }
                end
                a25("Grading Result", fns.cgs_74.Name, bXy_1)
            end
        end
    end
    a2t = true
end
function fns.fn4894(jh)
    return a1H() - jh >= a3G(fns.Options.KeepDiamonds.Value, 0)
end
function fns.fn4949()
    return a3w.winner == fns.cgs_74.Name
end
function fns.fn5002()
    return fns.Toggles2.CleanUpWorld ~= nil and fns.Toggles2.CleanUpWorld.Value == true
end
function fns.fn5008()
    table.clear(a16)
    table.clear(a3K)
    fns.cgs_44.EquippedVehicleGuid = nil
    local bV_ = a18(fns.cgs_44.GetOwnedVehicles)
    local bV0 = type(bV_) ~= "table" or type(bV_.vehicles) ~= "table"
    if bV0 then
        return a3K
    end
    fns.cgs_44.EquippedVehicleGuid = bV_.equippedGuid
    for k, v in pairs(bV_.vehicles) do
        local bV__1 = v.Name or k
        local bV0_1 = tostring(bV__1)
        if a16[bV0_1] then
            bV0_1 = bV0_1 .. " (" .. k:sub(1, 4) .. ")"
        end
        a16[bV0_1] = k
        a3K[#a3K + 1] = bV0_1
    end
    table.sort(a3K)
    return a3K
end
function fns.fn5073()
    if fns.cgs_29() then
        return true
    elseif fns.cgs_44.QuestAuctionEnabled() then
        return a3w.lotPassed == true
    elseif fns.cgs_44.IndexAuctionEnabled() then
        return a3w.lotPassed == true
    else
        return true
    end
end
function fns.fn5074(gA, gB, gC, gD, gE, gF)
    local a93_1
    local a92_1
    local a91_1
    local a90_1
    local a9__1
    local a9Z_1
    local a9Y_3
    local a9X_1
    local a9W_1
    local a9V_1
    local a9U_1
    local a9T_1
    local a9S_1
    local a9Q_1
    local a9P_1
    local a9O_2
    local a9B = fns.cgs_64(gA)
    local a9C = fns.cgs_64(gB)
    local a9D = fns.cgs_64(gD)
    local a9E = fns.cgs_64(gE)
    local a9F = (tonumber(gF)) or 0
    gF = a9F
    local a9F_1 = next(a9B) ~= nil
    local a9G = next(a9C) ~= nil
    local a9H = next(a9D) ~= nil
    local a9I = next(a9E) ~= nil
    local a9J = gF > 0
    local a9K = not a9G
    local a9L = not a9F_1
    if a9L ~= false then
        a9L = a9K
    end
    if a9L and not a9H and not a9I and not a9J then
        return true, "no filter"
    end
    local a9K_4 = a1K(a3w.garage)
    if not a9K_4 then
        return nil, "container not visible"
    end
    local a9L_2 = {}
    if a9F_1 then
        for k in pairs(a9B) do
            local a9M_2 = fns.cgs_24(k)
            if next(a9M_2) then
                a9L_2[k] = a9M_2
            end
        end
    end
    local a9M_3 = {}
    local a9N = a9H
    local a9N_4
    local baa = if a9N then 1 else 0
    local a98 = 1790 * baa + 3565 * (1 - baa)
    local a99 = 409 * baa + 918 * (1 - baa)
    if not ((a98 * 2914 + a99 * 3830 + a98 * a99) % 16777213 == 7514640) then
        a9N = a9I
    end
    if a9N then
        for k, v in pairs(Items) do
            local a9N_1 = a9H and fns.cgs_44.CategoryMatch(v, a9D)
            local a9O_1 = a9N_1
            if not a9O_1 then
                a9O_1 = a9I and a9E[v.Rarity]
            end
            if a9O_1 then
                local a9N_3 = fns.cgs_24(v.Name)
                if next(a9N_3) then
                    a9M_3[#a9M_3 + 1] = { Def = v, Signature = a9N_3 }
                end
            end
        end
    end
    a9N_4, a9O_2, a9P_1, a9Q_1 = false, false, false, false
    local a9R = false
    a9S_1, a9T_1 = false, nil
    a9U_1, a9V_1, a9W_1, a9X_1 = nil, nil, nil, nil
    for i, v in ipairs(a9K_4) do
        local a9Y_1 = nil
        a9Z_1, a9__1 = false, nil
        a90_1, a91_1 = false, nil
        a92_1, a93_1 = false, nil
        if a9C.Limited and not v.Mutators.Limited then
            for k in pairs(fns.cgs_44.LimitedItemNames) do
                local a94_1 = fns.cgs_24(k)
                local a95_1 = (next(a94_1)) and a2T(v.Signature, a94_1)
                if a95_1 then
                    v.Mutators.Limited = true
                    break
                end
            end
        end
        if a9F_1 then
            if v.Def and v.Def.Name and a9B[v.Def.Name] then
                a9Y_1 = v.Def.Name
            else
                if v.Name and a9B[v.Name] then
                    a9Y_1 = v.Name
                else
                    for k, v2 in pairs(a9L_2) do
                        if a2T(v.Signature, v2) then
                            a9Y_1 = k
                            break
                        end
                    end
                end
            end
        end
        local a94_4 = false
        if a9Y_1 then
            if fns.cgs_44.LimitedItemNames[a9Y_1] then
                v.Mutators.Limited = true
            end
            local a95_2 = fns.cgs_44.BidMutations(a9Y_1)
            if next(a95_2) then
                a94_4 = true
                for k in pairs(v.Mutators) do
                    if a95_2[k] then
                        a94_4 = false
                        break
                    end
                end
            else
                local a95_3 = fns.cgs_44.SkippedMutations(a9Y_1)
                for k in pairs(v.Mutators) do
                    if a95_3[k] then
                        a94_4 = true
                        break
                    end
                end
            end
        end
        if not a94_4 then
            if a9Y_1 and not a9N_4 then
                a9N_4, a9U_1 = true, a9Y_1
                if a4k(a9Y_1) then
                    return true, ("matched %s (no mutation needed)"):format(a9Y_1)
                end
            end
            if a9G then
                for k in pairs(v.Mutators) do
                    if a9C[k] then
                        a9Z_1, a9__1 = true, k
                        break
                    end
                end
                if a9Z_1 and not a9O_2 then
                    a9O_2, a9V_1 = true, a9__1
                end
            end
            local a94_7 = a9H and fns.cgs_44.CategoryMatch(v.Def, a9D)
            if a94_7 then
                a90_1 = true
                a91_1 = v.Def and v.Def.Category or "category"
            end
            local a94_9 = v.Def and v.Def.Rarity
            local a95_7 = a9I
            if a95_7 then
                a95_7 = a94_9
            end
            if a95_7 then
                a95_7 = a9E[a94_9]
            end
            if a95_7 then
                a92_1, a93_1 = true, a94_9
            end
            if a9H and not a90_1 or a9I and not a92_1 then
                for i, v2 in ipairs(a9M_3) do
                    if a2T(v.Signature, v2.Signature) then
                        local Def = v2.Def
                        local a95_9 = a9H and not a90_1 and fns.cgs_44.CategoryMatch(Def, a9D)
                        if a95_9 then
                            a90_1 = true
                            a91_1 = Def.Category or "category"
                        end
                        if a9I and not a92_1 and a9E[Def.Rarity] then
                            a92_1, a93_1 = true, Def.Rarity
                        end
                        if (not a9H or a90_1) and (not a9I or a92_1) then
                            break
                        end
                    end
                end
            end
            if a90_1 and not a9P_1 then
                a9P_1, a9W_1 = true, a91_1
            end
            if a92_1 and not a9Q_1 then
                a9Q_1, a9X_1 = true, a93_1
            end
            local a94_17 = a9J
            local a95_15 = false
            if a94_17 then
                a94_17 = v.Def
            end
            if a94_17 then
                local a96_3 = (tonumber(v.Def.Weight)) or 0
                a94_17 = a96_3 >= gF
            end
            if a94_17 then
                a95_15 = true
                a9R = true
            end
            if (not a9F_1 or a9Y_1 ~= nil) and (not a9G or a9Z_1) and (not a9H or a90_1) and (not a9I or a92_1) and (not a9J or a95_15) then
                a9S_1 = true
                a9T_1 = a9Y_1 or a9__1 or a91_1 or a93_1
            end
        end
    end
    if gC == "All Filters Same Entry" then
        a9Y_3 = a9S_1
    elseif gC == "Any Filter" then
        local a9C_2 = a9F_1 and a9N_4 or a9G and a9O_2 or a9H and a9P_1
        local a9B_3 = a9I and a9Q_1
        local a9D_2 = a9C_2
        local baa_1 = if a9D_2 then 1 else 0
        local a98_1 = 3361 * baa_1 + 1203 * (1 - baa_1)
        local a99_1 = 3681 * baa_1 + 1099 * (1 - baa_1)
        if not ((a98_1 * 194 + a99_1 * 3517 + a98_1 * a99_1) % 16777213 == 9192739) then
            a9D_2 = a9B_3
        end
        a9Y_3 = a9D_2 or a9J and a9R
    else
        local a9D_3 = (not a9F_1 or a9N_4) and (not a9G or a9O_2)
        local a9B_6 = not a9H
        local baa_2 = if a9B_6 then 1 else 0
        local a98_2 = 210 * baa_2 + 3049 * (1 - baa_2)
        local a99_2 = 3592 * baa_2 + 1696 * (1 - baa_2)
        if not ((a98_2 * 179 + a99_2 * 975 + a98_2 * a99_2) % 16777213 == 4294110) then
            a9B_6 = a9P_1
        end
        a9Y_3 = a9D_3 and a9B_6 and (not a9I or a9Q_1) and (not a9J or a9R)
    end
    local a9C_7 = gC == "All Filters Same Entry" and a9T_1
    local baa_3 = if a9C_7 then 1 else 0
    local a98_3 = 1164 * baa_3 + 3564 * (1 - baa_3)
    local a99_3 = 2855 * baa_3 + 3107 * (1 - baa_3)
    if not ((a98_3 * 2942 + a99_3 * 3846 + a98_3 * a99_3) % 16777213 == 950825) then
        a9C_7 = a9U_1
    end
    local a9C_10 = a9C_7 or a9V_1 or a9W_1 or a9X_1 or (a9R and "heavy item" or nil)
    local a9B_12 = a9Y_3
    if a9B_12 then
        if not a9C_10 then
            a9C_10 = "lot"
        end
        a9B_12 = "matched " .. a9C_10
    end
    return a9Y_3, a9B_12 or "no match", #a9K_4
end
function fns.onOnClientEvent4()
    a3w.wonAt = os.clock()
    a3w.lastWinAt = a3w.wonAt
    local garage = a3w.garage
    if garage and garage.Parent then
        a3w.wonDrop = garage:GetPivot().Position
    end
    if not fns.cgs_44.AutoClaimWinningsEnabled() then
        return
    end
    a3w.winningsPickupActive = true
    a3w.winningsObserved = false
    a3w.winningsZeroSince = nil
    a3w.npcStopped = false
    task.spawn(fns.cgs_44.SetAuctionPaused, false)
    task.spawn(function()
        local wonAt = a3w.wonAt
        local bba = 1
        while bba <= 80 do
            if not a3w.winningsPickupActive then
                return
            end
            local ba5 = fns.cgs_44.PendingWinnings and fns.cgs_44.PendingWinnings()
            if (ba5 or 0) > 0 then
                a3w.winningsObserved = true
            end
            fns.a3l()
            local ba5_2 = fns.cgs_44.PendingWinnings and fns.cgs_44.PendingWinnings()
            if (ba5_2 or 0) > 0 then
                a3w.winningsObserved = true
                a3w.winningsZeroSince = nil
            else
                local ba5_4 = a3w.winningsObserved or os.clock() - wonAt >= 1.5
                if ba5_4 then
                    local ba5_5 = a3w.winningsZeroSince or os.clock()
                    a3w.winningsZeroSince = ba5_5
                    if os.clock() - a3w.winningsZeroSince >= 0.4 then
                        a1J.status = "winnings collected; finding next auction"
                        fns.cgs_44.FinishWinningsPickup()
                        return
                    end
                end
            end
            task.wait(0.1)
            bba += 1
        end
    end)
end
function fns.fn5130()
    local Debris = workspace:FindFirstChild("_Debris")
    local bZE = Debris and Debris:FindFirstChild("Garages")
    return bZE
end
function fns.fn5135()
    local bBA_1
    local bBz_1
    bBA_1, bBz_1 = fns.cgs_57()
    if not bBA_1 then
        return
    end
    local bBB = {}
    local bBC = fns.Toggles2.AutoSpeedUpSafes.Value or fns.Toggles2.AutoSpeedUpSlots.Value
    fns.cgs_39(bBA_1, bBz_1, bBB, bBC)
    if fns.Toggles2.AutoUnlockSlots.Value then
        local bBC_1 = a18(fns.cgs_44.LocksmithEvents.UnlockSlot, bBz_1 + 1)
        local bBD = type(bBC_1) == "table" and bBC_1.success
        if bBD then
            local clN = fns.cgs_45
            clN[3] = clN[3] + 1
            bBz_1 += 1
        end
    end
    fns.cgs_42(bBA_1, bBz_1, bBB)
end
function fns.fn5161(apK)
    local bYv = {}
    for i, v in ipairs(apK.Mutators) do
        if v.name then
            bYv[#bYv + 1] = v.name
        end
    end
    if #bYv == 0 then
        return ""
    end
    return " [" .. table.concat(bYv, ", ") .. "]"
end
function fns.fn5176(QS)
    local bD9 = fns.cgs_101(QS.ItemId)
    if not bD9 or bD9.Interactive ~= "FishingRod" then
        return false
    elseif fns.cgs_44.RodBroken(QS) then
        return fns.Toggles2.AutoSellBrokenRods and fns.Toggles2.AutoSellBrokenRods.Value
    else
        local bEa_1 = fns.Toggles2.AutoFishing and fns.Toggles2.AutoFishing.Value
        if not bEa_1 then
            bEa_1 = fns.Toggles2.AutoEquipRod and fns.Toggles2.AutoEquipRod.Value
        end
        if not bEa_1 then
            bEa_1 = fns.Toggles2.AutoSwapBrokenRod and fns.Toggles2.AutoSwapBrokenRod.Value
        end
        return bEa_1
    end
end
function fns.fn5187(fy, fz)
    if not next(fz) then
        return false
    end
    for k in pairs(fz) do
        if not fy[k] then
            return false
        end
    end
    return true
end
function fns.fn5213()
    local bLI = not fns.Toggles2.AutoGroundPlaceItems.Value or a3w.active or a3w.entryAttempt
    if not bLI then
        local bLJ_1 = os.clock()
        bLI = bLJ_1 < (fns.a39.nextGroundPlaceAt or 0)
    end
    if bLI then
        return false
    end
    local bLI_1 = tonumber(fns.cgs_74:GetAttribute("InventoryCount"))
    local bLJ_2 = tonumber(fns.cgs_74:GetAttribute("InventoryCap"))
    local bLK_2 = a3G(fns.Options.GroundPlaceAtPercent.Value, 90)
    return not bLI_1 or not bLJ_2 or bLJ_2 <= 0 or bLI_1 / bLJ_2 * 100 >= bLK_2
end
function fns.fn5219()
    if a3w.entryAttempt then
        return true, "auction entry"
    end
    local bHk = a3w.active or fns.cgs_74:GetAttribute("InAuction") == true
    local bHk_4, bHk_5
    if bHk then
        return true, "active auction"
    elseif fns.cgs_44.AutoClaimWinningsEnabled() then
        if fns.cgs_44.PendingWinnings() > 0 then
            return true, "winnings pickup"
        end
        local bHk_1 = a3w.wonAt and os.clock() - a3w.wonAt < 20
        if bHk_1 then
            return true, "winnings drop"
        end
        local bHk_2 = fns.cgs_44.PowerPlantHasPriority and fns.cgs_44.PowerPlantHasPriority()
        if bHk_4 then
            return true, "Power Plant installation"
        end
        if bHk_5 then
            return true, "player automation"
        elseif a24() then
            return true, "Lost & Found"
        else
            return false
        end
    else
        bHk_4 = fns.cgs_44.PowerPlantHasPriority and fns.cgs_44.PowerPlantHasPriority()
        if bHk_4 then
            return true, "Power Plant installation"
        end
        bHk_5 = a1k and not fns.cgs_44.ShelfOwnsBody and not fns.cgs_44.GroundOwnsBody
        if bHk_5 then
            return true, "player automation"
        elseif a24() then
            return true, "Lost & Found"
        else
            return false
        end
    end
end
function fns.fn5229(Za, Zb, Zc, Zd, Ze, Zf)
    local bKT, bKU
    local bKL_1
    local bKK_1
    local bKJ_1
    local bKI_1
    local bKG_1
    local bKF_1
    bKG_1, bKF_1 = fns.cgs_44.GroundPlacement.ItemMetrics(Zd, Ze)
    local bKH = math.max(0, a3G(fns.Options.GroundPlaceSpacing.Value, 0))
    bKK_1, bKJ_1, bKI_1, bKL_1 = fns.cgs_44.GroundPlacement.Bounds(Za, Zc)
    local bKM = bKK_1 + bKG_1.X * 0.5 > bKJ_1 - bKG_1.X * 0.5
    local bK0 = if bKM then 1 else 0
    local bKZ = 134 * bK0 + 3843 * (1 - bK0)
    local bK_ = 3787 * bK0 + 990 * (1 - bK0)
    if not ((bKZ * 1421 + bK_ * 1668 + bKZ * bK_) % 16777213 == 7014588) then
        bKM = bKI_1 + bKG_1.Z * 0.5 > bKL_1 - bKG_1.Z * 0.5
    end
    if bKM then
        return
    end
    local bKM_1 = math.clamp(a3G(fns.Options.GroundPlaceOffsetX.Value, 0), bKK_1 + bKG_1.X * 0.5, bKJ_1 - bKG_1.X * 0.5)
    local bKN = math.clamp(a3G(fns.Options.GroundPlaceOffsetZ.Value, 0), bKI_1 + bKG_1.Z * 0.5, bKL_1 - bKG_1.Z * 0.5)
    local bKO = a3G(Za:GetAttribute("SizeY"), 0) * 0.5
    local bKQ = bKN >= (bKI_1 + bKL_1) * 0.5 and -1 or 1
    local bKP_1 = 9
    local bKQ_1 = math.max(bKG_1.X + bKH, bKG_1.X + 1.1)
    local bKS = math.max(bKG_1.Z + bKH, bKG_1.Z + 1.1)
    local bK3 = 0
    while true do
        if bK3 <= 199 then
            local bK4 = bK3
            local bKH_1 = math.floor(bK4 / bKP_1)
            local bKT_1 = bK4 % bKP_1
            local bKV_1 = bKT_1 == 0 and 0
            if not bKV_1 then
                local bKU_2 = math.ceil(bKT_1 * 0.5)
                bKV_1 = bKU_2 * (bKT_1 % 2 == 1 and -1 or 1)
            end
            local bKT_2 = bKV_1
            local bKV_2 = bKH_1 == 0 and 0
            if not bKV_2 then
                local bKU_4 = math.ceil(bKH_1 * 0.5)
                bKV_2 = bKU_4 * (bKH_1 % 2 == 1 and bKQ or -bKQ)
            end
            local bKH_2 = bKV_2
            bKU = bKM_1 + bKT_2 * bKQ_1
            bKT = bKN + bKH_2 * bKS
            local bKH_3 = bKU - bKG_1.X * 0.5 >= bKK_1 and bKU + bKG_1.X * 0.5 <= bKJ_1 and bKT - bKG_1.Z * 0.5 >= bKI_1 and bKT + bKG_1.Z * 0.5 <= bKL_1 and fns.cgs_44.GroundPlacement.FootprintUnlocked(bKU, bKT, bKG_1, Zc)
            if bKH_3 then
                local bKH_4 = false
                for i, v in ipairs(Zf) do
                    local bKV_3 = math.abs(bKU - v.X) < (bKG_1.X + v.SizeX) * 0.5 + 1 and math.abs(bKT - v.Z) < (bKG_1.Z + v.SizeZ) * 0.5 + 1
                    if bKV_3 then
                        bKH_4 = true
                        break
                    end
                end
                if not bKH_4 then
                    break
                end
                bK3 += 1
                continue
            end
            bK3 += 1
            continue
        end
        return
    end
    local bKH_5 = bKO - bKF_1
    local bKV_4 = Zb * CFrame.new(bKU, bKH_5, bKT) * CFrame.Angles(0, math.rad(a3G(Ze.ShelfRotationY, 0)), 0)
    return bKV_4, { X = bKU, Z = bKT, SizeX = bKG_1.X, SizeZ = bKG_1.Z }
end
function fns.fn5277(aqZ, aq_, aq0)
    if not aqZ then
        return
    end
    for i, descendant in ipairs(aqZ:GetDescendants()) do
        local bZs = descendant.Parent and not a1t(descendant)
        if bZs then
            local bZs_1 = (descendant:IsA("Model")) or descendant:IsA("BasePart")
            local bZt = bZs_1 and aq_(descendant.Name:lower())
            if bZt then
                descendant:Destroy()
                a1F[aq0] += 1
            end
        end
    end
end
function fns.fn5316(Uu, Uv, Uw, Ux, Uy, Uz, UA)
    local bG7_1
    local bG6_1
    bG7_1, bG6_1 = 0, 0
    if next(Uw) then
        bG7_1 += 1
        if fns.cgs_44.CategoryMatch(Uv, Uw) then
            bG6_1 += 1
        end
    end
    if next(UA) then
        bG7_1 += 1
        if Uu.Grade and UA[Uu.Grade] then
            bG6_1 += 1
        end
    end
    if Ux then
        bG7_1 += 1
        if Ux[Uv.Rarity] then
            bG6_1 += 1
        end
    end
    if next(Uz) then
        bG7_1 += 1
        if Uz[Uv.Name] then
            bG6_1 += 1
        end
    end
    if next(Uy) then
        bG7_1 += 1
        for k in pairs(a2w(Uu)) do
            if Uy[k] then
                bG6_1 += 1
                break
            end
        end
    end
    if bG7_1 == 0 then
        return nil
    end
    local bG8_2 = fns.Options.StockMethod.Value == "Skip selected"
    local bHc = if bG8_2 then 1 else 0
    local bHa = 1634 * bHc + 3472 * (1 - bHc)
    local bHb = 1119 * bHc + 3654 * (1 - bHc)
    if not ((bHa * 2133 + bHb * 3548 + bHa * bHb) % 16777213 == 9283980) then
        bG8_2 = fns.Options.StockMatchMode.Value == "Match any filter"
    end
    if bG8_2 then
        return bG6_1 > 0
    end
    return bG6_1 == bG7_1
end
function fns.fn5355()
    local b1I = a3G(fns.Options.MaximumBid.Value, 0)
    if b1I <= 0 then
        return math.huge
    end
    return b1I
end
function fns.fn5358()
    local bVc = a18(fns.cgs_44.GetGPSPOIs)
    local bVd = type(bVc) == "table" and bVc.pois
    if type(bVd) ~= "table" then
        return {}
    end
    local bVd_1 = table.clone(bVd)
    table.sort(bVd_1, function(alW, alX)
        local bU5 = tonumber(alW.ownerUserId) == fns.cgs_74.UserId
        local bU6 = tonumber(alX.ownerUserId) == fns.cgs_74.UserId
        if bU5 ~= bU6 then
            return bU5
        end
        local bU5_1 = alW.category or ""
        local bU6_1 = tostring(bU5_1)
        local bU5_2 = alX.category or ""
        local bU7 = tostring(bU5_2)
        if bU6_1 ~= bU7 then
            return bU6_1 < bU7
        end
        local bU5_3 = alW.name or ""
        local bU6_2 = tostring(bU5_3)
        local bU7_1 = alX.name or ""
        return bU6_2 < tostring(bU7_1)
    end)
    return bVd_1
end
function fns.fn5377(ZT, ZU)
    local Stock = ZT:FindFirstChild("Stock")
    local bLd = Stock and Stock:GetChildren()
    local bLe = bLd or {}
    for i, v in ipairs(bLe) do
        local bLc_2 = (v:GetAttribute("GUID"))
        local bLo = if bLc_2 then 1 else 0
        local bLm = 2570 * bLo + 3577 * (1 - bLo)
        local bLn = 1975 * bLo + 3590 * (1 - bLo)
        if not ((bLm * 3013 + bLn * 2795 + bLm * bLn) % 16777213 == 1562072) then
            bLc_2 = ""
        end
        if tostring(bLc_2) == tostring(ZU) then
            return true
        end
    end
    local bLc_3 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bLc_3) ~= "table" then
        return false
    end
    local bLd_1 = bLc_3[ZU] ~= nil or bLc_3[tostring(ZU)] ~= nil
    if bLd_1 then
        return false
    end
    for k in pairs(bLc_3) do
        if tostring(k) == tostring(ZU) then
            return false
        end
    end
    return true
end
function fns.fn5419(UT)
    local bHq = table.clone(UT)
    if type(bHq.Mutators) == "string" then
        bHq.Mutators = fns.MutatorModule:ParseMutatorsAttr(bHq.Mutators)
    end
    return bHq
end
function fns.fn5462(Tu, Tv)
    if not Tv.Attachment or not Tv.Attachment.Parent then
        return false
    end
    local bGl_1 = a2i.Snapshot(Tu)
    if not bGl_1 then
        return false
    end
    for i, v in ipairs(bGl_1) do
        local Attrs = v.Attrs
        local bGm_1 = Attrs.ShelfGUID and Attrs.SnapPointName and a2i.SlotKey(Attrs.ShelfGUID, Attrs.SnapPointName) == Tv.Key
        if bGm_1 then
            return false
        end
    end
    local Stock = Tu:FindFirstChild("Stock")
    local bGm_2 = Stock and Stock:GetChildren()
    local bGn = bGm_2 or {}
    for i, v in ipairs(bGn) do
        local attr2 = v:GetAttribute("ShelfGUID")
        local attr = v:GetAttribute("SnapPointName")
        local bGn_1 = attr2 and attr and a2i.SlotKey(attr2, attr) == Tv.Key
        if bGn_1 then
            return false
        end
    end
    return true
end
function fns.fn5484()
    if fns.cgs_51.Unloaded then
        return fns.cgs_33
    end
    return nil
end
function fns.fn5500(anz, anA, anB)
    local bWL_1
    local Value = fns.Options.WebhookUrl.Value
    local bWK = type(Value) ~= "string" or not Value:match("^https://discord%.com/api/webhooks/")
    local bWK_1
    if bWK then
        fns.cgs_6.status = "invalid webhook url"
        return false
    end
    bWL_1, bWK_1 = a1W(Value, {
        embeds = {
            {
                title = anz,
                description = anA,
                color = 15418782,
                fields = anB,
                footer = { text = "Ouroboros Hub | Storage Hunters" }
            }
        }
    })
    if bWL_1 then
        local cl8 = fns.cgs_6
        cl8.alerts = cl8.alerts + 1
        fns.cgs_6.status = "sent " .. anz
    else
        fns.cgs_6.status = "webhook failed: " .. tostring(bWK_1)
    end
    return bWL_1
end
function fns.fn5545()
    local bc0 = fns.Toggles2.AutoEnterCargoShip.Value and a2G()
    return bc0
end
function fns.fn5554()
    fns.cgs_51.ScreenGui.Parent = fns.cgs_74:WaitForChild("PlayerGui")
    fns.cgs_51.ScreenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
        if not fns.cgs_51.ScreenGui.Enabled and not fns.cgs_51.Unloaded then
            fns.cgs_51.ScreenGui.Enabled = true
        end
    end)
    if not fns.cgs_51.ScreenGui.Enabled then
        fns.cgs_51.ScreenGui.Enabled = true
    end
end
function fns.fn5560(eC)
    return eC.EventExclusive ~= nil
end
function fns.fn5571()
    local bbM = (fns.cgs_74:GetAttribute("Cash"))
    local bbQ = if bbM then 1 else 0
    local bbO = 1142 * bbQ + 3013 * (1 - bbQ)
    local bbP = 2829 * bbQ + 3139 * (1 - bbQ)
    if not ((bbO * 2772 + bbP * 1198 + bbO * bbP) % 16777213 == 9785484) then
        bbM = 0
    end
    return bbM
end
function fns.fn5580(aoh)
    local bW7 = {}
    local bW8 = type(aoh) == "table" and aoh.Mutators
    local bW8_1 = bW8 or nil
    if type(bW8_1) == "string" then
        bW8_1 = fns.MutatorModule:ParseMutatorsAttr(bW8_1)
    end
    if type(bW8_1) == "table" then
        for i, v in ipairs(bW8_1) do
            local bW8_2 = type(v) == "table" and v.name and tonumber(v.luck)
            local bW9_1 = bW8_2 or nil
            local bW8_3 = bW9_1
            if bW9_1 then
                bW9_1 = bW8_3 > 0
            end
            if bW9_1 then
                bW7[v.name] = bW8_3
            end
        end
    end
    local bW8_4 = {}
    for k in pairs(a2w(aoh)) do
        if k ~= fns.cgs_44.TROPHY_CHOICE then
            local bW9_2 = bW7[k]
            local bXa = #bW8_4 + 1
            local bXb = bW9_2 and ("%s +%d%%"):format(k, math.floor(bW9_2 * 100 + 0.5))
            bW8_4[bXa] = bXb or k
        end
    end
    table.sort(bW8_4)
    local bW7_1 = #bW8_4 > 0 and table.concat(bW8_4, ", ")
    local bW8_5 = bW7_1
    local bXl = if bW8_5 then 1 else 0
    local bXj = 737 * bXl + 3371 * (1 - bXl)
    local bXk = 3022 * bXl + 706 * (1 - bXl)
    if not ((bXj * 401 + bXk * 1562 + bXj * bXk) % 16777213 == 7243115) then
        bW8_5 = "None"
    end
    return bW8_5
end
function fns.fn5592()
    local bQ8 = os.clock()
    if bQ8 < (fns.cgs_44.NextDrinkUseAt or 0) then
        return
    end
    local Value = fns.Options.DrinkUseMethod.Value
    if not fns.cgs_44.SwitchAccessoryLoadout(fns.Options.LuckDrinkLoadout, "Luck drink") then
        a15.status = "luck drink waiting for accessory loadout"
        fns.cgs_44.NextDrinkUseAt = os.clock() + 2
        return
    end
    if Value == "Use when active runs out" then
        local bRj = 1
        while bRj <= 3 do
            local bRk = bRj
            local bQ9_1 = (tonumber(fns.cgs_74:GetAttribute("ActiveLuckDrinkExpireAt_" .. bRk))) or 0
            if bQ9_1 > os.time() then
                a15.status = "luck drink already active"
                fns.cgs_44.NextDrinkUseAt = os.clock() + 2
                return
            end
            bRj += 1
        end
    end
    local bQ9_2 = a18(fns.cgs_44.GetPlayerInventory)
    if type(bQ9_2) ~= "table" then
        return
    end
    local bRa_2 = fns.cgs_64(fns.Options.UseDrinkList.Value)
    local bRb = next(bRa_2)
    local bRc = {}
    local bRd = 0
    local bRe = bRb ~= nil
    for k, v in pairs(bQ9_2) do
        local bQ9_3 = fns.cgs_101(v.ItemId)
        if bQ9_3 and bQ9_3.EnergyDrinkId and (not bRe or bRa_2[bQ9_3.Name] == true) then
            if fns.cgs_44.IgnoreFavoritedItem(v) then
                bRd += 1
            else
                bRc[#bRc + 1] = { Guid = k, Def = bQ9_3 }
            end
        end
    end
    if #bRc == 0 then
        a15.status = bRd > 0 and "luck drinks skipped by favorite protection" or "no selected luck drinks in inventory"
        fns.cgs_44.NextDrinkUseAt = os.clock() + 2
        return
    end
    table.sort(bRc, function(ahu, ahv)
        return (ahu.Def.EnergyDrinkId or 0) > (ahv.Def.EnergyDrinkId or 0)
    end)
    for i, v in ipairs(bRc) do
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoUseDrinks.Value then
            return
        end
        fns.cgs_44.UseEnergyDrink:FireServer(v.Guid)
        task.wait(0.6)
        local bQ9_6 = a18(fns.cgs_44.GetPlayerInventory)
        local bRa_4 = type(bQ9_6) == "table" and bQ9_6[v.Guid] == nil
        if not bRa_4 then
            a15.status = "luck drink use not confirmed; retrying"
            fns.cgs_44.NextDrinkUseAt = os.clock() + 1.5
            return
        end
        a15.status = "used " .. tostring(v.Def.Name)
        fns.cgs_44.NextDrinkUseAt = os.clock() + 0.75
        if Value ~= "Use all instantly" then
            return
        end
        task.wait(0.6)
    end
end
function fns.fn5617(MC)
    fns.cgs_45[8] = "Safe: opening slot " .. tostring(MC)
    local bAV = a18(fns.cgs_44.LocksmithEvents.OpenSafe, MC)
    if a3I(bAV) then
        task.wait(fns.cgs_44.SAFE_CALL_DELAY)
        return fns.cgs_95(MC)
    end
    local bAW = type(bAV) == "table" and bAV.error
    if bAW then
        fns.cgs_45[8] = "Safe: " .. tostring(bAV.error)
    end
    return false
end
function fns.fn5646(apH)
    return {
        ItemId = apH:GetAttribute("ItemId"),
        Condition = apH:GetAttribute("Condition"),
        Grade = apH:GetAttribute("Grade"),
        Mutators = fns.MutatorModule:ParseMutatorsAttr(apH:GetAttribute("Mutators"))
    }
end
function fns.fn5692()
    local bdi = fns.cgs_64(fns.Options.AuctionArea.Value)
    if fns.cgs_44.CargoHasPriority() then
        bdi["Cargo Ship"] = true
    end
    return bdi
end
function fns.onOnClientEvent3()
    fns.cgs_44.FinishWinningsPickup()
end
function fns.fn5719()
    a3w.npcStopped = false
    a3w.lotChecked = false
    a3w.lotPassed = false
    a3w.bidMatch = nil
    a3w.bypass = nil
    a3w.skipPending = nil
    a3w.bypassPending = false
    a3w.powerPlantLotFingerprint = nil
    a3w.powerPlantLotStableAt = nil
    a3w.leaveAt = nil
    a3w.currentBid = 0
    a3w.winner = nil
    a3w.nextBid = nil
    a3w.lotValue = nil
    a3w.usedCalculator = false
    a3w.bidRequestKey = nil
    a3w.bidRequestAt = 0
end
function fns.fn5733()
    local bbR = (fns.cgs_74:GetAttribute("Diamonds"))
    local bbV = if bbR then 1 else 0
    local bbT = 323 * bbV + 215 * (1 - bbV)
    local bbU = 3033 * bbV + 927 * (1 - bbV)
    if not ((bbT * 1649 + bbU * 1410 + bbT * bbU) % 16777213 == 5788816) then
        bbR = 0
    end
    return bbR
end
function fns.fn5737()
    if a3w.stopNpcAwaitingWinnings and not a3w.active and not a3w.winningsPickupActive then
        local bbu_1 = os.clock() + 8
        if (a3w.stopNpcWinningsDeadline or 0) > bbu_1 then
            a3w.stopNpcWinningsDeadline = bbu_1
        end
    end
    local bbu_2 = a3w.stopNpcAwaitingWinnings
    if bbu_2 then
        local bbv_2 = os.clock()
        bbu_2 = bbv_2 >= (a3w.stopNpcWinningsDeadline or 0)
    end
    if bbu_2 then
        a3w.stopNpcAwaitingWinnings = false
        a3w.stopNpcWinningsDeadline = 0
    end
    return a3w.stopNpcAwaitingWinnings == true
end
fns.cgs_49 = nil
fns.cgs_22 = nil
fns.cgs_1 = nil
a1g = nil
a1h = nil
a1i = nil
a1k = nil
a1l = nil
fns.a1m = nil
fns.cgs_97 = nil
fns.cgs_75 = nil
fns.cgs_60 = nil
fns.cgs_36 = nil
fns.cgs_13 = nil
a1s = nil
a1t = nil
a1u = nil
a1w = nil
a1x = nil
fns.a1y = nil
fns.cgs_109 = nil
fns.cgs_88 = nil
fns.cgs_46 = nil
fns.cgs_25 = nil
a1F = nil
a1H = nil
a1I = nil
a1J = nil
a1K = nil
fns.a1L = nil
fns.cgs_102 = nil
fns.Options = nil
fns.cgs_41 = nil
fns.cgs_16 = nil
a1R = nil
a1T = nil
a1V = nil
a1W = nil
fns.a1X = nil
fns.cgs_114 = nil
fns.cgs_90 = nil
fns.cgs_54 = nil
fns.cgs_29 = nil
local a1v, a1B, a1O, a1S, a1U, a1_
fns.cgs_7 = nil
a13 = nil
a14 = nil
a15 = nil
a16 = nil
a17 = nil
a18 = nil
fns.cgs_103 = nil
fns.cgs_81 = nil
fns.cgs_65 = nil
fns.cgs_44 = nil
fns.cgs_21 = nil
a2f = nil
a2g = nil
a2h = nil
a2i = nil
a2j = nil
a2k = nil
fns.a2l = nil
fns.cgs_95 = nil
fns.cgs_74 = nil
fns.cgs_58 = nil
fns.cgs_34 = nil
fns.cgs_12 = nil
a2s = nil
a2t = nil
Furniture = nil
a2v = nil
a2w = nil
a2x = nil
fns.a2y = nil
fns.cgs_107 = nil
fns.cgs_85 = nil
fns.cgs_69 = nil
fns.cgs_45 = nil
fns.cgs_24 = nil
fns.cgs_3 = nil
a2F = nil
a2G = nil
a2H = nil
a2I = nil
a2J = nil
fns.cgs_100 = nil
fns.cgs_62 = nil
fns.cgs_39 = nil
local a19, a2m, a2K, a2L, a2N
a2R = nil
a2S = nil
a2T = nil
a2W = nil
fns.a2X = nil
fns.cgs_112 = nil
fns.cgs_89 = nil
fns.GameConfig = nil
fns.cgs_53 = nil
fns.cgs_28 = nil
fns.cgs_6 = nil
a23 = nil
a24 = nil
a25 = nil
a26 = nil
a27 = nil
a28 = nil
fns.a29 = nil
fns.cgs_64 = nil
fns.cgs_42 = nil
fns.cgs_20 = nil
a3f = nil
a3h = nil
a3i = nil
a3j = nil
a3k = nil
fns.a3l = nil
fns.cgs_115 = nil
fns.cgs_94 = nil
fns.cgs_57 = nil
fns.cgs_33 = nil
fns.cgs_9 = nil
a3t = nil
a3v = nil
a3w = nil
a3x = nil
fns.a3y = nil
fns.Toggles2 = nil
fns.cgs_83 = nil
fns.cgs_68 = nil
fns.cgs_23 = nil
fns.cgs_2 = nil
local a2Q, Areas, a3a, a3b, a3g, connection2, a3s, a3C
a3F = nil
a3G = nil
a3H = nil
a3I = nil
a3J = nil
a3K = nil
fns.a3L = nil
fns.cgs_98 = nil
fns.cgs_77 = nil
fns.cgs_61 = nil
fns.cgs_37 = nil
fns.cgs_14 = nil
a3R = nil
a3S = nil
folder = nil
a3V = nil
a3W = nil
fns.cgs_110 = nil
fns.cgs_86 = nil
fns.cgs_51 = nil
fns.cgs_27 = nil
fns.cgs_5 = nil
a33 = nil
a35 = nil
a36 = nil
a37 = nil
fns.a39 = nil
fns.cgs_101 = nil
fns.cgs_80 = nil
fns.cgs_63 = nil
fns.MutatorModule = nil
fns.cgs_17 = nil
a4f = nil
a4g = nil
a4i = nil
Items = nil
a4k = nil
fns.a4l = nil
fns.cgs_93 = nil
fns.cgs_73 = nil
fns.cgs_56 = nil
fns.cgs_32 = nil
fns.cgs_8 = nil
local a3U, a3X, BuildState, a34, ItemLoader, a4h, Rarities
a4s = nil
a4t = nil
Garages = nil
a4x = nil
fns.a4y = nil
fns.cgs_105 = nil
fns.cgs_82 = nil
fns.cgs_66 = nil
fns.cgs_48 = nil
local a4u
a4u = nil
fns.cgs_19_1, fns.a2X, a4s, a2Q, a4h, a2K, fns.cgs_80, fns.cgs_152_1, a34, fns.cgs_74, a3W, a19 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local cgs_159 = 5
local cgs_159_1, cgs_159_10, cgs_159_17, cgs_159_20
repeat
    local cgs_145_1 = (cgs_159 * 1 + 4) % 5 + 1
    if cgs_145_1 <= 3 then
        if cgs_145_1 <= 2 then
            if cgs_145_1 <= 1 then
                local cgs_138_1 = {
                    "ljla",
                    "nlbegthzc",
                    "tdxdgxoksu",
                    "nlfurmhq",
                    "svuvdv",
                    "wtrhmkppp",
                    "louu",
                    "yosac",
                    "nonmuhszyy",
                    "blggxgp",
                    "qyxuhzsn",
                    "mpkkoykbjkec"
                }
                if cgs_138_1[(cgs_159 * 84 + 38) % 12 + 1] <= cgs_138_1[(cgs_159 * 84 + 38) % 12 + 1] then
                    fns.a2X = game:GetService("ReplicatedStorage")
                    a4s = game:GetService("MarketplaceService")
                else
                    a4s = game:GetService("ReplicatedStorage")
                    fns.a2X = game:GetService("MarketplaceService")
                end
                cgs_159 = (cgs_159 + 6) % 20
            else
                local cgs_138_2 = {
                    "ptpepxg",
                    "mfv",
                    "mawbrab",
                    "iepqbjm",
                    "wqvcaecx",
                    "nye",
                    "fusmoxv",
                    "konjffsfyraj",
                    "pfw",
                    "xvsr",
                    "oxd",
                    "gntux",
                    "lmdngvspct",
                    "duzwzwbbma"
                }
                if cgs_138_2[(cgs_159 * 22 + 51) % 14 + 1] < cgs_138_2[(cgs_159 * 22 + 51) % 14 + 1] then
                    a4h = game:GetService("VirtualUser")
                    a2Q = game:GetService("UserInputService")
                    fns.cgs_80 = game:GetService("RunService")
                    a2K = game:GetService("HttpService")
                else
                    a2Q = game:GetService("VirtualUser")
                    a4h = game:GetService("UserInputService")
                    a2K = game:GetService("RunService")
                    fns.cgs_80 = game:GetService("HttpService")
                end
                cgs_159 = (cgs_159 + 1) % 20
            end
        else
            local cgs_138_3 = {
                "crbvyxuc",
                "jsgpkby",
                "cflxnrgrj",
                "uqpzauvljln",
                "jcsszgldk",
                "mfcx",
                "sxphmht",
                "mfohqhksrpe",
                "jqfq",
                "uyhwoo",
                "esmgkspgo",
                "taf"
            }
            local cm3 = cgs_159
            local cgs_132_1 = cgs_138_3[cm3 % 12 + 1]
            if cgs_132_1:len() <= cgs_132_1:gsub("(.)", "%1%1", cm3 % 3 % 2 + 1):len() then
                fns.cgs_152_1 = game:GetService("TweenService")
                a34 = game:GetService("CollectionService")
                fns.cgs_74 = fns.cgs_19_1.LocalPlayer
                a3W = "https://discord.gg/synapsex"
            else
                a34 = game:GetService("TweenService")
                fns.cgs_19_1 = game:GetService("CollectionService")
                fns.cgs_152_1 = nil
                fns.cgs_74 = "https://discord.gg/synapsex"
            end
            cgs_159 = (cgs_159 + 16) % 20
        end
    elseif cgs_145_1 <= 4 then
        if cgs_159 * 34005549 + 3 + 3 >= cgs_159 * 34005549 + 3 + 3 + 2 then
            fns.cgs_152_1 = "https://rscripts.net/@Ouroboros"
        else
            a19 = "https://rscripts.net/@Ouroboros"
        end
        cgs_159 = (cgs_159 + 11) % 20
    else
        local cgs_145_2 = (vector.create((cgs_159 * 6 + 6) % 11 + 1, (cgs_159 * 4 + 12) % 13 + 1, (cgs_159 * 6 + 6) % 17 + 1))
        local cgs_138_4 = (vector.create((cgs_159 * 4 + 9) % 11 + 1, (cgs_159 * 10 + 9) % 13 + 1, (cgs_159 * 15 + 12) % 17 + 1))
        local cgs_132_2 = (vector.create((cgs_159 * 6 + 1) % 11 + 1, (cgs_159 * 10 + 6) % 13 + 1, (cgs_159 * 9 + 2) % 17 + 1))
        local cgs_127_1 = (vector.create((cgs_159 * 3 + 7) % 5 + 1, (cgs_159 * 2 + 1) % 7 + 1, (cgs_159 * 3 + 4) % 9 + 1))
        if vector.dot(vector.cross(cgs_145_2, (vector.cross(cgs_138_4, cgs_132_2))), cgs_127_1) == vector.dot(cgs_138_4 * vector.dot(cgs_145_2, cgs_132_2) - cgs_132_2 * vector.dot(cgs_145_2, cgs_138_4), cgs_127_1) + 5 then
            a4s = game:GetService("Players")
        else
            fns.cgs_19_1 = game:GetService("Players")
        end
        cgs_159 = (cgs_159 + 11) % 20
    end
until (cgs_159 * 13 + 5) % 20 == 15
if getgenv then
    fns.cgs_138_5, fns.cgs_145_3, cgs_159_1 = nil, nil, nil
    local cgs_19_2 = 0
    repeat
        local cgs_132_3 = (cgs_19_2 * 2 + 1) % 3 + 1
        if cgs_132_3 <= 2 then
            if cgs_132_3 <= 1 then
                local cgs_132_4 = (vector.create((cgs_19_2 * 5 + 2) % 11 + 1, (cgs_19_2 * 4 + 13) % 13 + 1, (cgs_19_2 * 12 + 13) % 17 + 1))
                local cnb = vector.floor(cgs_132_4) + vector.ceil(cgs_132_4 * -1)
                if vector.dot(cnb, cnb) == 2 then
                    fns.cgs_145_3 = type(cgs_159_1) == "table"
                else
                    cgs_159_1 = type(fns.cgs_145_3) == "table"
                end
                cgs_19_2 = (cgs_19_2 + 5) % 12
            else
                if (cgs_19_2 * 3 + 5) * 5 % 4 == ((cgs_19_2 * 3 + 5) * 5 + 8) % 4 then
                    fns.cgs_138_5 = getgenv()
                else
                    fns.cgs_145_3 = getgenv()
                end
                cgs_19_2 = (cgs_19_2 + 5) % 12
            end
        else
            if fns.cgs_138_5 and not fns.cgs_145_3 or not cgs_19_2 and cgs_159_1 or (cgs_19_2 or not cgs_19_2) and (not fns.cgs_145_3 or not fns.cgs_138_5) or ((not fns.cgs_138_5 or cgs_19_2) and (not fns.cgs_145_3 or not cgs_159_1) or cgs_19_2 and cgs_159_1 and (not cgs_159_1 or not cgs_159_1)) or ((cgs_19_2 or cgs_159_1) and (not fns.cgs_145_3 and not cgs_159_1) and ((fns.cgs_145_3 or cgs_159_1) and (not cgs_19_2 or cgs_159_1)) or fns.cgs_145_3 and fns.cgs_138_5 and (cgs_19_2 and cgs_19_2) and (not fns.cgs_138_5 and cgs_19_2 or (not cgs_159_1 or not cgs_159_1))) or not (fns.cgs_138_5 and not fns.cgs_145_3 or not cgs_19_2 and cgs_159_1 or (cgs_19_2 or not cgs_19_2) and (not fns.cgs_145_3 or not fns.cgs_138_5) or ((not fns.cgs_138_5 or cgs_19_2) and (not fns.cgs_145_3 or not cgs_159_1) or cgs_19_2 and cgs_159_1 and (not cgs_159_1 or not cgs_159_1)) or ((cgs_19_2 or cgs_159_1) and (not fns.cgs_145_3 and not cgs_159_1) and ((fns.cgs_145_3 or cgs_159_1) and (not cgs_19_2 or cgs_159_1)) or fns.cgs_145_3 and fns.cgs_138_5 and (cgs_19_2 and cgs_19_2) and (not fns.cgs_138_5 and cgs_19_2 or (not cgs_159_1 or not cgs_159_1)))) then
                fns.cgs_145_3 = fns.cgs_138_5.OuroborosStorageHuntersRuntime
            else
                fns.cgs_138_5 = fns.cgs_145_3.OuroborosStorageHuntersRuntime
            end
            cgs_19_2 = (cgs_19_2 + 8) % 12
        end
    until (cgs_19_2 * 11 + 9) % 12 == 3
    if cgs_159_1 then
        local cgs_19_3 = 1
        repeat
            local cs5 = bit32.rrotate(bit32.bxor(bit32.lrotate(cgs_19_3, 12), string.byte(tostring(cgs_19_3))), 8)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(cs5, 1631421367), 2225237304), (bit32.bxor(bit32.band(cs5, 2663545928), 3579701066))), 2225237304), 3579701066) == cs5 then
                cgs_159_1 = type(fns.cgs_145_3.Unload) == "function"
            else
                fns.cgs_145_3 = type(cgs_159_1.Unload) == "function"
            end
            cgs_19_3 = (cgs_19_3 + 2) % 4
        until (cgs_19_3 * 3 + 3) % 4 == 0
    end
    if cgs_159_1 then
        pcall(fns.cgs_145_3.Unload)
    end
    fns.cgs_138_5.gethui = function()
        return fns.cgs_74:WaitForChild("PlayerGui")
    end
end
do
    local a1E, a3u, textButton, a4v
    local cgs_19_4 = fns.cgs_74:WaitForChild("PlayerGui")
    local cgs_159_2 = cgs_19_4:FindFirstChild("StorageHuntersLoading")
    if cgs_159_2 then
        cgs_159_2:Destroy()
    end
    a1E = false
    a3u = "OuroborosHubSH_Confirmed.txt"
    pcall(function()
        local a5T = isfile ~= nil and isfile(a3u) == true
        a1E = a5T
    end)
    if not a1E then
        local cgs_159_3 = Instance.new("ScreenGui")
        cgs_159_3.Name = "StorageHuntersLoading"
        cgs_159_3.IgnoreGuiInset = true
        cgs_159_3.ResetOnSpawn = false
        cgs_159_3.DisplayOrder = 1000000
        cgs_159_3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        cgs_159_3.Parent = cgs_19_4
        local cgs_19_5 = Instance.new("Frame")
        cgs_19_5.Name = "Background"
        cgs_19_5.Size = UDim2.fromScale(1, 1)
        cgs_19_5.BorderSizePixel = 0
        cgs_19_5.BackgroundColor3 = Color3.fromRGB(42, 18, 64)
        cgs_19_5.Parent = cgs_159_3
        local cgs_145_4 = Instance.new("UIGradient")
        cgs_145_4.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(56, 25, 83)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 14, 54))
        })
        cgs_145_4.Rotation = 90
        cgs_145_4.Parent = cgs_19_5
        local cgs_145_5 = Instance.new("Frame")
        cgs_145_5.Name = "Content"
        cgs_145_5.AnchorPoint = Vector2.new(0.5, 0.5)
        cgs_145_5.Position = UDim2.fromScale(0.5, 0.5)
        cgs_145_5.Size = UDim2.fromScale(0.82, 0.72)
        cgs_145_5.BackgroundTransparency = 1
        cgs_145_5.BorderSizePixel = 0
        cgs_145_5.Parent = cgs_19_5
        local cgs_19_6 = Instance.new("UISizeConstraint")
        cgs_19_6.MaxSize = Vector2.new(760, 600)
        cgs_19_6.MinSize = Vector2.new(280, 340)
        cgs_19_6.Parent = cgs_145_5
        local cgs_19_7 = Instance.new("UICorner")
        cgs_19_7.CornerRadius = UDim.new(0, 18)
        cgs_19_7.Parent = cgs_145_5
        local cgs_19_8 = Instance.new("UIStroke")
        cgs_19_8.Color = Color3.fromRGB(180, 112, 255)
        cgs_19_8.Transparency = 1
        cgs_19_8.Thickness = 1.5
        cgs_19_8.Parent = cgs_145_5
        local cgs_19_9 = Instance.new("UIPadding")
        cgs_19_9.PaddingTop = UDim.new(0.055, 0)
        cgs_19_9.PaddingBottom = UDim.new(0.05, 0)
        cgs_19_9.PaddingLeft = UDim.new(0.055, 0)
        cgs_19_9.PaddingRight = UDim.new(0.055, 0)
        cgs_19_9.Parent = cgs_145_5
        local cgs_19_10 = Instance.new("TextLabel")
        cgs_19_10.Name = "Title"
        cgs_19_10.Size = UDim2.new(1, 0, 0.1, 0)
        cgs_19_10.BackgroundTransparency = 1
        cgs_19_10.Font = Enum.Font.GothamBold
        cgs_19_10.Text = "STORAGE HUNTERS"
        cgs_19_10.TextColor3 = Color3.fromRGB(245, 239, 250)
        cgs_19_10.TextScaled = true
        cgs_19_10.Parent = cgs_145_5
        local cgs_138_6 = Instance.new("UITextSizeConstraint")
        cgs_138_6.MaxTextSize = 30
        cgs_138_6.MinTextSize = 20
        cgs_138_6.Parent = cgs_19_10
        local cgs_19_11 = Instance.new("TextLabel")
        cgs_19_11.Name = "Subtitle"
        cgs_19_11.Position = UDim2.new(0, 0, 0.105, 0)
        cgs_19_11.Size = UDim2.new(1, 0, 0.06, 0)
        cgs_19_11.BackgroundTransparency = 1
        cgs_19_11.Font = Enum.Font.GothamMedium
        cgs_19_11.Text = "USE FEATURES RESPONSIBLY"
        cgs_19_11.TextColor3 = Color3.fromRGB(181, 151, 204)
        cgs_19_11.TextScaled = true
        cgs_19_11.Parent = cgs_145_5
        local cgs_138_7 = Instance.new("UITextSizeConstraint")
        cgs_138_7.MaxTextSize = 16
        cgs_138_7.MinTextSize = 11
        cgs_138_7.Parent = cgs_19_11
        local cgs_19_12 = Instance.new("Frame")
        cgs_19_12.Name = "Warnings"
        cgs_19_12.Position = UDim2.new(0, 0, 0.18, 0)
        cgs_19_12.Size = UDim2.new(1, 0, 0.6, 0)
        cgs_19_12.BackgroundTransparency = 1
        cgs_19_12.Parent = cgs_145_5
        local cgs_138_8 = Instance.new("UIListLayout")
        cgs_138_8.FillDirection = Enum.FillDirection.Vertical
        cgs_138_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
        cgs_138_8.VerticalAlignment = Enum.VerticalAlignment.Center
        cgs_138_8.Padding = UDim.new(0.01, 0)
        cgs_138_8.Parent = cgs_19_12
        local cgs_138_9 = {
            "English: Please use these features carefully. You are responsible for accidental changes to your net worth or deleted items, especially when enabling options you do not understand. Found a bug? Join the Discord and report it so it gets fixed, instead of complaining on Rscripts before we get a chance to fix it.",
            "Tiếng Việt: Vui lòng sử dụng các tính năng một cách cẩn thận. Bạn tự chịu trách nhiệm nếu vô tình làm thay đổi tài sản ròng hoặc xóa vật phẩm, đặc biệt khi bật những tùy chọn mà bạn chưa hiểu rõ. Gặp lỗi? Hãy vào Discord để báo lỗi cho chúng tôi sửa, thay vì than phiền trên Rscripts trước khi chúng tôi kịp khắc phục.",
            "ไทย: โปรดใช้ฟีเจอร์ต่าง ๆ อย่างระมัดระวัง คุณต้องรับผิดชอบต่อการเปลี่ยนแปลงมูลค่าทรัพย์สินหรือการลบไอเทมโดยไม่ได้ตั้งใจ โดยเฉพาะเมื่อเปิดตัวเลือกที่คุณยังไม่เข้าใจ เจอบั๊ก? เข้ามารายงานใน Discord เพื่อให้เราแก้ไข แทนที่จะไปบ่นบน Rscripts ก่อนที่เราจะมีโอกาสแก้",
            "Filipino: Mangyaring gamitin nang maingat ang mga feature. Pananagutan mo ang anumang hindi sinasadyang pagbabago sa iyong net worth o pagkabura ng mga item, lalo na kapag binuksan mo ang mga opsyong hindi mo pa nauunawaan. May nakitang bug? Sumali sa Discord at i-report ito para maayos, sa halip na magreklamo sa Rscripts bago pa namin ito maayos."
        }
        for i, v in ipairs(cgs_138_9) do
            local cgs_138_10 = Instance.new("TextLabel")
            cgs_138_10.Name = "Warning" .. i
            cgs_138_10.Size = UDim2.new(1, 0, 0.235, 0)
            cgs_138_10.BackgroundTransparency = 1
            cgs_138_10.BorderSizePixel = 0
            cgs_138_10.Font = Enum.Font.Gotham
            cgs_138_10.Text = v
            cgs_138_10.TextColor3 = Color3.fromRGB(225, 213, 234)
            cgs_138_10.TextScaled = true
            cgs_138_10.TextWrapped = true
            cgs_138_10.Parent = cgs_19_12
            local cgs_132_5 = Instance.new("UICorner")
            cgs_132_5.CornerRadius = UDim.new(0, 9)
            cgs_132_5.Parent = cgs_138_10
            local cgs_132_6 = Instance.new("UIPadding")
            cgs_132_6.PaddingTop = UDim.new(0.08, 0)
            cgs_132_6.PaddingBottom = UDim.new(0.08, 0)
            cgs_132_6.PaddingLeft = UDim.new(0.025, 0)
            cgs_132_6.PaddingRight = UDim.new(0.025, 0)
            cgs_132_6.Parent = cgs_138_10
            local cgs_132_7 = Instance.new("UITextSizeConstraint")
            cgs_132_7.MaxTextSize = 17
            cgs_132_7.MinTextSize = 9
            cgs_132_7.Parent = cgs_138_10
        end
        textButton = Instance.new("TextButton")
        textButton.Name = "DiscordButton"
        textButton.Position = UDim2.new(0, 0, 0.8, 0)
        textButton.Size = UDim2.new(1, 0, 0.045, 0)
        textButton.BackgroundTransparency = 1
        textButton.AutoButtonColor = false
        textButton.Font = Enum.Font.GothamMedium
        textButton.Text = "Join the Discord to Report Bugs"
        textButton.TextColor3 = Color3.fromRGB(86, 166, 255)
        textButton.TextScaled = true
        textButton.Parent = cgs_145_5
        local cgs_19_13 = Instance.new("UITextSizeConstraint")
        cgs_19_13.MaxTextSize = 15
        cgs_19_13.MinTextSize = 11
        cgs_19_13.Parent = textButton
        textButton.Activated:Connect(function()
            if setclipboard then
                setclipboard(a3W)
            elseif toclipboard then
                toclipboard(a3W)
            end
            textButton.Text = "Invite copied to clipboard"
        end)
        local cgs_19_14 = Instance.new("TextButton")
        cgs_19_14.Name = "ConfirmButton"
        cgs_19_14.AnchorPoint = Vector2.new(0.5, 0)
        cgs_19_14.Position = UDim2.new(0.5, 0, 0.87, 0)
        cgs_19_14.Size = UDim2.new(0.55, 0, 0.1, 0)
        cgs_19_14.BackgroundColor3 = Color3.fromRGB(218, 191, 239)
        cgs_19_14.AutoButtonColor = true
        cgs_19_14.BorderSizePixel = 0
        cgs_19_14.Font = Enum.Font.GothamBold
        cgs_19_14.Text = "Confirm"
        cgs_19_14.TextColor3 = Color3.fromRGB(42, 18, 64)
        cgs_19_14.TextScaled = true
        cgs_19_14.Parent = cgs_145_5
        local cgs_145_6 = Instance.new("UICorner")
        cgs_145_6.CornerRadius = UDim.new(0, 10)
        cgs_145_6.Parent = cgs_19_14
        local cgs_145_7 = Instance.new("UIPadding")
        cgs_145_7.PaddingTop = UDim.new(0.18, 0)
        cgs_145_7.PaddingBottom = UDim.new(0.18, 0)
        cgs_145_7.Parent = cgs_19_14
        local cgs_145_8 = Instance.new("UITextSizeConstraint")
        cgs_145_8.MaxTextSize = 18
        cgs_145_8.MinTextSize = 12
        cgs_145_8.Parent = cgs_19_14
        a4v = false
        cgs_19_14.Activated:Connect(function()
            a4v = true
        end)
        while not a4v do
            task.wait(0.1)
        end
        pcall(function()
            writefile(a3u, os.date("confirmed %Y-%m-%d %H:%M:%S"))
        end)
        local cgs_19_15 = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        for i, descendant in ipairs(cgs_159_3:GetDescendants()) do
            if descendant:IsA("Frame") then
                fns.cgs_152_1:Create(descendant, cgs_19_15, { BackgroundTransparency = 1 }):Play()
            else
                local cgs_145_9 = (descendant:IsA("TextLabel")) or descendant:IsA("TextButton")
                if cgs_145_9 then
                    fns.cgs_152_1:Create(descendant, cgs_19_15, { TextTransparency = 1, BackgroundTransparency = 1 }):Play()
                elseif descendant:IsA("UIStroke") then
                    fns.cgs_152_1:Create(descendant, cgs_19_15, { Transparency = 1 }):Play()
                end
            end
        end
        task.wait(0.25)
        cgs_159_3:Destroy()
    end
end
fns.cgs_12, a3X, fns.cgs_44 = nil, nil, nil
fns.cgs_12 = fns.a2X:WaitForChild("Modules")
a3X = require(fns.cgs_12:WaitForChild("MeteorDropConfig"))
fns.cgs_44 = {}
fns.cgs_44.QuestDefinitions = require(fns.cgs_12:WaitForChild("Quests"))
local cgs_135
local cgs_142 = fns.a2X:WaitForChild("Events")
local cgs_145_10 = cgs_142:WaitForChild("Auction")
local UI = cgs_142:WaitForChild("UI")
local cgs_31 = cgs_142:WaitForChild("Vehicles")
local Inventory = cgs_142:WaitForChild("Inventory")
local Locksmith = cgs_142:WaitForChild("Locksmith")
local LockpickShop = cgs_142:WaitForChild("LockpickShop")
local WrenchShop = cgs_142:WaitForChild("WrenchShop")
local Pawn = cgs_142:WaitForChild("Pawn")
local cgs_152_2 = cgs_142:WaitForChild("Plot")
local GPS = cgs_142:WaitForChild("GPS")
local cgs_159_4 = cgs_142:WaitForChild("Upgrades")
local cgs_132_8 = cgs_142:WaitForChild("NPCShopper")
local Quest = cgs_142:WaitForChild("Quest")
local cgs_138_11 = cgs_142:WaitForChild("Accessories")
if (not GPS and not GPS and (GPS or not GPS) or (not LockpickShop or GPS) and (not GPS and not GPS)) and not (not GPS and not GPS and (GPS or not GPS) or (not LockpickShop or GPS) and (not GPS and not GPS)) then
    a3X = cgs_135:WaitForChild(fns.a2X.FolderName)
else
    cgs_135 = fns.a2X:WaitForChild(a3X.FolderName)
end
fns.cgs_44.GradingEvents = cgs_142:WaitForChild("Grading")
fns.cgs_44.RepairEvents = cgs_142:WaitForChild("Repair")
fns.cgs_44.WashEvents = cgs_142:WaitForChild("Wash")
fns.cgs_44.TimeCapsuleEvents = cgs_142:WaitForChild("TimeCapsule")
fns.cgs_44.AuthenticationEvents = cgs_142:WaitForChild("Authentication")
fns.cgs_44.MuseumEvents = cgs_142:WaitForChild("Museum")
fns.cgs_44.StorageEvents = cgs_142:WaitForChild("Storage")
fns.cgs_44.GetAccessoryLoadouts = cgs_138_11:WaitForChild("GetAccessoryLoadouts")
fns.cgs_44.ActivateAccessoryLoadout = cgs_138_11:WaitForChild("ActivateAccessoryLoadout")
fns.cgs_44.GetLostItems = UI:WaitForChild("GetLostItems")
fns.cgs_44.ClaimLostItem = UI:WaitForChild("ClaimLostItem")
fns.cgs_44.UseEnergyDrink = UI:WaitForChild("UseEnergyDrink")
fns.cgs_44.Bid = cgs_145_10:WaitForChild("Bid")
fns.cgs_44.AuctionPickupStart = cgs_145_10:WaitForChild("AuctionPickupStart")
fns.cgs_44.AuctionPickupEnd = cgs_145_10:WaitForChild("AuctionPickupEnd")
fns.cgs_44.LostFoundOverride = cgs_145_10:WaitForChild("LostFoundOverride")
fns.cgs_44.LeaveAuction = cgs_145_10:WaitForChild("LeaveAuction")
fns.cgs_44.UseCalculator = cgs_145_10:WaitForChild("UseCalculator")
fns.cgs_44.SetStudioAuctionFreeze = cgs_145_10:FindFirstChild("SetStudioAuctionFreeze")
fns.cgs_44.RequestAuctionPause = cgs_145_10:FindFirstChild("RequestAuctionPause")
fns.cgs_44.ToggleAuctionArea = cgs_145_10:WaitForChild("ToggleAuctionArea")
fns.cgs_44.ToggleBiddingUI = cgs_145_10:WaitForChild("ToggleBiddingUI")
fns.cgs_44.UpdateCurrentWinningBid = cgs_145_10:WaitForChild("UpdateCurrentWinningBid")
fns.cgs_44.GetCargoShipNavTarget = cgs_142:WaitForChild("SpecialEvent"):WaitForChild("GetCargoShipNavTarget")
fns.cgs_44.GetSellableItems = Pawn:WaitForChild("GetSellableItems")
fns.cgs_44.SellItems = Pawn:WaitForChild("SellItems")
fns.cgs_44.GetPawnState = Pawn:WaitForChild("GetPawnState")
fns.cgs_44.PawnRateChanged = Pawn:WaitForChild("RateChanged")
fns.cgs_44.PlaceStockItem = cgs_152_2:WaitForChild("PlaceStockItem")
fns.cgs_44.PlaceStockItemResult = cgs_152_2:WaitForChild("PlaceStockItemResult")
fns.cgs_44.PickUpStockItem = cgs_152_2:WaitForChild("PickUpStockItem")
fns.cgs_44.ChangeStockPrice = cgs_152_2:WaitForChild("ChangeStockPrice")
fns.cgs_44.GetShopStock = cgs_152_2:WaitForChild("GetShopStock")
fns.cgs_44.RequestPlotData = cgs_152_2:WaitForChild("RequestPlotData")
fns.cgs_44.GetAvailablePlots = cgs_152_2:WaitForChild("GetAvailablePlots")
fns.cgs_44.ClaimPlot = cgs_152_2:WaitForChild("ClaimPlot")
fns.cgs_44.GetGPSPOIs = GPS:WaitForChild("GetPOIs")
fns.cgs_44.GetUpgrades = cgs_159_4:WaitForChild("GetUpgrades")
fns.cgs_44.BuyUpgrade = cgs_159_4:WaitForChild("BuyUpgrade")
fns.cgs_44.ShowOffer = cgs_132_8:WaitForChild("ShowOffer")
fns.cgs_44.RespondOffer = cgs_132_8:WaitForChild("RespondOffer")
local cgs_19_16 = cgs_142:FindFirstChild("HorseRace")
local cgs_159_5 = cgs_19_16 and cgs_19_16:FindFirstChild("GetEligibility")
fns.cgs_44.HorseRaceEligibility = cgs_159_5
local cgs_159_6 = cgs_19_16 and cgs_19_16:FindFirstChild("StartRace")
fns.cgs_44.HorseRaceStart = cgs_159_6
local cgs_159_7 = cgs_19_16 and cgs_19_16:FindFirstChild("CancelRace")
fns.cgs_44.HorseRaceCancel = cgs_159_7
local cgs_145_11 = cgs_142:FindFirstChild("Cleaning")
local cgs_19_17 = cgs_145_11 and cgs_145_11:FindFirstChild("StartCleaning")
fns.cgs_44.CleaningStart = cgs_19_17
local cgs_19_18 = cgs_145_11 and cgs_145_11:FindFirstChild("CleaningAction")
fns.cgs_44.CleaningAction = cgs_19_18
local cgs_19_19 = cgs_145_11 and cgs_145_11:FindFirstChild("GetDirtyItems")
fns.cgs_44.CleaningDirty = cgs_19_19
local cgs_19_20 = cgs_145_11 and cgs_145_11:FindFirstChild("GetBottleCatalog")
fns.cgs_44.CleaningBottleCatalog = cgs_19_20
local cgs_19_21 = cgs_145_11 and cgs_145_11:FindFirstChild("BuyBottle")
local cgs_152_3 = nil
local cgs_159_8 = 3
repeat
    local cgs_145_12 = {
        "jtswqjqmr",
        "tonwsvg",
        "sbszqg",
        "qyqhuaav",
        "erhbapav",
        "vbm",
        "gxj",
        "npsaqepqm",
        "gisbokpadyl",
        "otraoi",
        "padocpjujejt",
        "dmbldmkajjf",
        "vitdu",
        "hzl",
        "rifhcz",
        "reejcmau"
    }
    if cgs_145_12[(cgs_159_8 * 71 + 93) % 16 + 1] < cgs_145_12[(cgs_159_8 * 71 + 93) % 16 + 1] then
        fns.cgs_44.CleaningBuyBottle = cgs_152_3
        cgs_142 = cgs_19_21:FindFirstChild("GoldPanner")
    else
        fns.cgs_44.CleaningBuyBottle = cgs_19_21
        cgs_152_3 = cgs_142:FindFirstChild("GoldPanner")
    end
    cgs_159_8 = (cgs_159_8 + 1) % 4
until (cgs_159_8 * 1 + 3) % 4 == 3
local cgs_19_22 = cgs_152_3 and cgs_152_3:FindFirstChild("ClaimPan")
fns.cgs_44.GoldPannerClaim = cgs_19_22
local cgs_145_13 = cgs_142:FindFirstChild("WildWestMarket")
local cgs_19_23 = cgs_145_13 and cgs_145_13:FindFirstChild("Roll")
local cgs_152_4 = nil
local cgs_159_9 = 6
repeat
    local cgs_145_14 = { "qcnrhxrw", "meahko", "hnydir", "kwnd", "acbwvdeqbby", "iayatflr", "jxn", "mrpyobdl", "ozyhsz" }
    local cm9 = cgs_159_9
    local cgs_138_12 = cgs_145_14[cm9 % 9 + 1]
    if cgs_138_12:len() >= cgs_138_12:gsub("(.)", "%1%1", cm9 % 3 % 2 + 1):len() then
        fns.cgs_44.WildWestMarketRoll = cgs_152_4
        cgs_142 = cgs_19_23:FindFirstChild("OutlawBounty")
    else
        fns.cgs_44.WildWestMarketRoll = cgs_19_23
        cgs_152_4 = cgs_142:FindFirstChild("OutlawBounty")
    end
    cgs_159_9 = (cgs_159_9 + 5) % 8
until (cgs_159_9 * 7 + 7) % 8 == 4
local cgs_19_24 = cgs_152_4 and cgs_152_4:FindFirstChild("Trade")
fns.cgs_44.OutlawBountyTrade = cgs_19_24
local cgs_145_15 = cgs_142:FindFirstChild("TownDefense")
local cgs_19_25 = cgs_145_15 and cgs_145_15:FindFirstChild("Join")
fns.cgs_44.TownDefenseJoin = cgs_19_25
local cgs_19_26 = cgs_145_15 and cgs_145_15:FindFirstChild("Leave")
fns.cgs_44.TownDefenseLeave = cgs_19_26
fns.cgs_138_13, fns.cgs_152_5, fns.cgs_145_16, cgs_159_10 = nil, nil, nil, nil
local cgs_132_9 = 10
repeat
    local cgs_19_27 = (cgs_132_9 * 3 + 0) % 5 + 1
    if cgs_19_27 <= 3 then
        if cgs_19_27 <= 2 then
            if cgs_19_27 <= 1 then
                local cgs_127_2 = (vector.create((cgs_132_9 * 1 + 6) % 11 + 1, (cgs_132_9 * 9 + 11) % 13 + 1, (cgs_132_9 * 5 + 11) % 17 + 1))
                local cgs_121_1 = (vector.create((cgs_132_9 * 3 + 8) % 11 + 1, (cgs_132_9 * 6 + 2) % 13 + 1, (cgs_132_9 * 2 + 15) % 17 + 1))
                local cog = vector.cross(cgs_127_2, cgs_121_1)
                local coh = vector.dot(cgs_127_2, cgs_121_1)
                if vector.dot(cog, cog) + coh * coh == vector.dot(cgs_127_2, cgs_127_2) * vector.dot(cgs_121_1, cgs_121_1) + 5 then
                    a3X.ClaimDailyReward = cgs_135:WaitForChild("DailyReward"):WaitForChild("ClaimDailyReward")
                    a3X.GetAchievementStatus = cgs_135:WaitForChild("Achievements"):WaitForChild("GetAchievementStatus")
                    a3X.ClaimAchievementReward = cgs_135.Achievements:WaitForChild("ClaimAchievementReward")
                    a3X.GetCollectionState = cgs_135:WaitForChild("Collections"):WaitForChild("GetCollectionState")
                    a3X.ClaimMilestoneReward = cgs_135.Collections:WaitForChild("ClaimMilestoneReward")
                    a3X.GetEnergyCatalog = cgs_135:WaitForChild("EnergyShop"):WaitForChild("GetCatalog")
                    a3X.BuyDrink = cgs_135.EnergyShop:WaitForChild("BuyDrink")
                    a3X.QuestStateSync = fns.cgs_44:WaitForChild("QuestStateSync")
                    a3X.QuestTaskProgress = fns.cgs_44:WaitForChild("QuestTaskProgress")
                    a3X.QuestCompleted = fns.cgs_44:WaitForChild("QuestCompleted")
                    a3X.NewQuestAccepted = fns.cgs_44:WaitForChild("NewQuestAccepted")
                    a3X.QuestPromptTriggered = Quest:WaitForChild("QuestPromptTriggered")
                    a3X.SendQuestDialogResult = Quest:WaitForChild("SendQuestDialogResult")
                    a3X.PowerPlantPartsStatus = Quest:WaitForChild("PowerPlantPartsStatus")
                    a3X.GetStaffData = cgs_135:WaitForChild("Staff"):WaitForChild("GetStaffData")
                    a3X.HireStaff = cgs_135.Staff:WaitForChild("HireStaff")
                    a3X.UpgradeStaff = cgs_135.Staff:WaitForChild("UpgradeStaff")
                    a3X.MeteorShow = UI:WaitForChild(Inventory.ShowRemote)
                    a3X.MeteorClaim = UI:WaitForChild(Inventory.ClaimRemote)
                    a3X.GetOwnedVehicles = cgs_142:WaitForChild("GetOwnedVehicles")
                    a3X.RequestSpawn = cgs_142:WaitForChild("RequestSpawn")
                    a3X.GetVehicleItems = cgs_142:WaitForChild("GetVehicleItems")
                    a3X.TransferVehicleItemsToInventory = cgs_142:WaitForChild("TransferVehicleItemsToInventory")
                    a3X.GetPlayerInventory = fns.cgs_138_13:WaitForChild("GetPlayerInventory")
                    a3X.ToggleFavoriteItem = fns.cgs_138_13:WaitForChild("ToggleFavoriteItem")
                    a3X.EquipItem = fns.cgs_138_13:WaitForChild("EquipItem")
                    cgs_31 = cgs_135:WaitForChild("Club")
                else
                    fns.cgs_44.ClaimDailyReward = cgs_142:WaitForChild("DailyReward"):WaitForChild("ClaimDailyReward")
                    fns.cgs_44.GetAchievementStatus = cgs_142:WaitForChild("Achievements"):WaitForChild("GetAchievementStatus")
                    fns.cgs_44.ClaimAchievementReward = cgs_142.Achievements:WaitForChild("ClaimAchievementReward")
                    fns.cgs_44.GetCollectionState = cgs_142:WaitForChild("Collections"):WaitForChild("GetCollectionState")
                    fns.cgs_44.ClaimMilestoneReward = cgs_142.Collections:WaitForChild("ClaimMilestoneReward")
                    fns.cgs_44.GetEnergyCatalog = cgs_142:WaitForChild("EnergyShop"):WaitForChild("GetCatalog")
                    fns.cgs_44.BuyDrink = cgs_142.EnergyShop:WaitForChild("BuyDrink")
                    fns.cgs_44.QuestStateSync = Quest:WaitForChild("QuestStateSync")
                    fns.cgs_44.QuestTaskProgress = Quest:WaitForChild("QuestTaskProgress")
                    fns.cgs_44.QuestCompleted = Quest:WaitForChild("QuestCompleted")
                    fns.cgs_44.NewQuestAccepted = Quest:WaitForChild("NewQuestAccepted")
                    fns.cgs_44.QuestPromptTriggered = UI:WaitForChild("QuestPromptTriggered")
                    fns.cgs_44.SendQuestDialogResult = UI:WaitForChild("SendQuestDialogResult")
                    fns.cgs_44.PowerPlantPartsStatus = UI:WaitForChild("PowerPlantPartsStatus")
                    fns.cgs_44.GetStaffData = cgs_142:WaitForChild("Staff"):WaitForChild("GetStaffData")
                    fns.cgs_44.HireStaff = cgs_142.Staff:WaitForChild("HireStaff")
                    fns.cgs_44.UpgradeStaff = cgs_142.Staff:WaitForChild("UpgradeStaff")
                    fns.cgs_44.MeteorShow = cgs_135:WaitForChild(a3X.ShowRemote)
                    fns.cgs_44.MeteorClaim = cgs_135:WaitForChild(a3X.ClaimRemote)
                    fns.cgs_44.GetOwnedVehicles = cgs_31:WaitForChild("GetOwnedVehicles")
                    fns.cgs_44.RequestSpawn = cgs_31:WaitForChild("RequestSpawn")
                    fns.cgs_44.GetVehicleItems = cgs_31:WaitForChild("GetVehicleItems")
                    fns.cgs_44.TransferVehicleItemsToInventory = cgs_31:WaitForChild("TransferVehicleItemsToInventory")
                    fns.cgs_44.GetPlayerInventory = Inventory:WaitForChild("GetPlayerInventory")
                    fns.cgs_44.ToggleFavoriteItem = Inventory:WaitForChild("ToggleFavoriteItem")
                    fns.cgs_44.EquipItem = Inventory:WaitForChild("EquipItem")
                    fns.cgs_138_13 = cgs_142:WaitForChild("Club")
                end
                cgs_132_9 = (cgs_132_9 + 2) % 20
            else
                local cqJ = bit32.rrotate(bit32.bxor(bit32.lrotate(cgs_132_9, 16), string.byte(tostring(fns.cgs_145_16))), 12)
                if bit32.bxor(bit32.lrotate(bit32.bxor(cqJ, 458183812), 2), 1832735248) == bit32.lrotate(cqJ, 2) then
                    fns.cgs_44.GetClubState = fns.cgs_138_13:WaitForChild("GetClubState")
                    fns.cgs_44.ClaimClubDaily = fns.cgs_138_13:WaitForChild("ClaimClubDaily")
                    fns.cgs_152_5 = cgs_142:WaitForChild("Misc")
                else
                    fns.cgs_138_13.GetClubState = cgs_142:WaitForChild("GetClubState")
                    fns.cgs_138_13.ClaimClubDaily = cgs_142:WaitForChild("ClaimClubDaily")
                    fns.cgs_44 = fns.cgs_152_5:WaitForChild("Misc")
                end
                cgs_132_9 = (cgs_132_9 + 12) % 20
            end
        else
            if ((fns.cgs_152_5 or not fns.cgs_152_5 or (not cgs_159_10 or cgs_159_10)) and (fns.cgs_152_5 and fns.cgs_152_5 or cgs_159_10 and fns.cgs_152_5) or not fns.cgs_152_5 and not fns.cgs_152_5 and (cgs_159_10 and cgs_159_10) and ((not fns.cgs_152_5 or not cgs_159_10) and (fns.cgs_152_5 or not cgs_159_10)) or ((not cgs_159_10 or not cgs_159_10) and (not cgs_159_10 and cgs_159_10) or (fns.cgs_152_5 or not cgs_159_10 or (cgs_159_10 or fns.cgs_152_5))) and (fns.cgs_152_5 and not cgs_159_10 and (cgs_159_10 or cgs_159_10) and (not cgs_159_10 and not cgs_159_10 or (not cgs_159_10 or not fns.cgs_152_5)))) and not ((fns.cgs_152_5 or not fns.cgs_152_5 or (not cgs_159_10 or cgs_159_10)) and (fns.cgs_152_5 and fns.cgs_152_5 or cgs_159_10 and fns.cgs_152_5) or not fns.cgs_152_5 and not fns.cgs_152_5 and (cgs_159_10 and cgs_159_10) and ((not fns.cgs_152_5 or not cgs_159_10) and (fns.cgs_152_5 or not cgs_159_10)) or ((not cgs_159_10 or not cgs_159_10) and (not cgs_159_10 and cgs_159_10) or (fns.cgs_152_5 or not cgs_159_10 or (cgs_159_10 or fns.cgs_152_5))) and (fns.cgs_152_5 and not cgs_159_10 and (cgs_159_10 or cgs_159_10) and (not cgs_159_10 and not cgs_159_10 or (not cgs_159_10 or not fns.cgs_152_5)))) then
                fns.cgs_152_5.FishingCast = fns.cgs_145_16:WaitForChild("FishingCast")
                fns.cgs_152_5.FishingState = fns.cgs_145_16:WaitForChild("FishingState")
                fns.cgs_152_5.FishingFX = fns.cgs_145_16:WaitForChild("FishingFX")
                fns.cgs_152_5.FishingResult = fns.cgs_145_16:WaitForChild("FishingResult")
                fns.cgs_152_5.FishingCancel = fns.cgs_145_16:WaitForChild("FishingCancel")
                fns.cgs_44 = fns.cgs_145_16:WaitForChild("BankHeist")
            else
                fns.cgs_44.FishingCast = fns.cgs_152_5:WaitForChild("FishingCast")
                fns.cgs_44.FishingState = fns.cgs_152_5:WaitForChild("FishingState")
                fns.cgs_44.FishingFX = fns.cgs_152_5:WaitForChild("FishingFX")
                fns.cgs_44.FishingResult = fns.cgs_152_5:WaitForChild("FishingResult")
                fns.cgs_44.FishingCancel = fns.cgs_152_5:WaitForChild("FishingCancel")
                fns.cgs_145_16 = fns.cgs_152_5:WaitForChild("BankHeist")
            end
            cgs_132_9 = (cgs_132_9 + 12) % 20
        end
    elseif cgs_19_27 <= 4 then
        local cgs_19_28 = {
            "ewdhp",
            "ipzpgll",
            "vweaumqlmdz",
            "aau",
            "lodguimmqw",
            "cqdihjlf",
            "ckk",
            "umtjyv",
            "cps",
            "ifcxpp",
            "zkddt",
            "drtqfjips",
            "jos"
        }
        if cgs_19_28[(cgs_132_9 * 38 + 94) % 13 + 1] < cgs_19_28[(cgs_132_9 * 38 + 94) % 13 + 1] then
            fns.cgs_145_16.BankHeistGetState = cgs_142:WaitForChild("GetState")
            fns.cgs_145_16.BankHeistAction = cgs_142:WaitForChild("Action")
            fns.cgs_145_16.PoliceChaseRemote = cgs_159_10:WaitForChild("PoliceChase")
            fns.cgs_44 = fns.cgs_152_5:WaitForChild("WarehouseOrders")
        else
            fns.cgs_44.BankHeistGetState = fns.cgs_145_16:WaitForChild("GetState")
            fns.cgs_44.BankHeistAction = fns.cgs_145_16:WaitForChild("Action")
            fns.cgs_44.PoliceChaseRemote = fns.cgs_152_5:WaitForChild("PoliceChase")
            cgs_159_10 = cgs_142:WaitForChild("WarehouseOrders")
        end
        cgs_132_9 = (cgs_132_9 + 12) % 20
    else
        local cgs_19_29 = {
            "nsljbzarepc",
            "zpqec",
            "hmlfawln",
            "ucvhjegsa",
            "vpkkxidqgn",
            "fadwis",
            "znzyjftx",
            "wzgfhei",
            "amt",
            "cxeaawxegb"
        }
        local cnd = cgs_132_9
        local cgs_127_3 = cgs_19_29[cnd % 10 + 1]
        if cgs_127_3:len() >= cgs_127_3:gsub("(.)", "%1%1", cnd % 3 % 2 + 1):len() then
            WrenchShop.WarehouseGetState = fns.cgs_44:WaitForChild("GetState")
            WrenchShop.WarehouseAcceptOrder = fns.cgs_44:WaitForChild("AcceptOrder")
            WrenchShop.WarehouseDeliverOrder = fns.cgs_44:WaitForChild("DeliverOrder")
            WrenchShop.WarehouseDeliverPackage = fns.cgs_44:WaitForChild("DeliverPackage")
            WrenchShop.LocksmithEvents = cgs_159_10
            WrenchShop.GetLockpickState = Locksmith:WaitForChild("GetState")
            WrenchShop.BuyLockpick = Locksmith:WaitForChild("BuyLockpick")
            WrenchShop.EquipLockpick = Locksmith:WaitForChild("EquipLockpick")
            WrenchShop.GetWrenchState = LockpickShop:WaitForChild("GetState")
            WrenchShop.RepairWonItem = LockpickShop:WaitForChild("RepairWonItem")
            WrenchShop.RepairWithWrench = LockpickShop:WaitForChild("RepairWithWrench")
        else
            fns.cgs_44.WarehouseGetState = cgs_159_10:WaitForChild("GetState")
            fns.cgs_44.WarehouseAcceptOrder = cgs_159_10:WaitForChild("AcceptOrder")
            fns.cgs_44.WarehouseDeliverOrder = cgs_159_10:WaitForChild("DeliverOrder")
            fns.cgs_44.WarehouseDeliverPackage = cgs_159_10:WaitForChild("DeliverPackage")
            fns.cgs_44.LocksmithEvents = Locksmith
            fns.cgs_44.GetLockpickState = LockpickShop:WaitForChild("GetState")
            fns.cgs_44.BuyLockpick = LockpickShop:WaitForChild("BuyLockpick")
            fns.cgs_44.EquipLockpick = LockpickShop:WaitForChild("EquipLockpick")
            fns.cgs_44.GetWrenchState = WrenchShop:WaitForChild("GetState")
            fns.cgs_44.RepairWonItem = WrenchShop:WaitForChild("RepairWonItem")
            fns.cgs_44.RepairWithWrench = WrenchShop:WaitForChild("RepairWithWrench")
        end
        cgs_132_9 = (cgs_132_9 + 2) % 20
    end
until (cgs_132_9 * 9 + 9) % 20 == 19
fns.GameConfig, Garages, Areas, Items, fns.cgs_100, fns.MutatorModule, fns.cgs_3, ItemLoader, Furniture, BuildState = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.GameConfig = require(fns.cgs_12.GameConfig)
Garages = require(fns.cgs_12.Garages)
Areas = require(fns.cgs_12.Areas)
Items = require(fns.cgs_12.Items)
if ((fns.GameConfig or ItemLoader) and (BuildState and not ItemLoader) and ((not ItemLoader or not ItemLoader) and (Items and BuildState)) or (not Items and not Garages or (not Garages or not ItemLoader)) and ((not Items or BuildState) and (not ItemLoader and not Items))) and ((not Items and not BuildState or BuildState and not ItemLoader or (not BuildState and Items or (not fns.GameConfig or not Items))) and (not Garages and not ItemLoader and (not Garages or not Garages) and (not Garages and BuildState or (not Items or not Garages)))) and not (((fns.GameConfig or ItemLoader) and (BuildState and not ItemLoader) and ((not ItemLoader or not ItemLoader) and (Items and BuildState)) or (not Items and not Garages or (not Garages or not ItemLoader)) and ((not Items or BuildState) and (not ItemLoader and not Items))) and ((not Items and not BuildState or BuildState and not ItemLoader or (not BuildState and Items or (not fns.GameConfig or not Items))) and (not Garages and not ItemLoader and (not Garages or not Garages) and (not Garages and BuildState or (not Items or not Garages))))) then
    fns.cgs_3 = require(fns.cgs_44.Picklock)
    fns.cgs_100 = require(fns.cgs_44.MutatorModule)
    fns.MutatorModule.EventManager = require(fns.cgs_44.SpecialEventManager)
    fns.MutatorModule.EventConfig = require(fns.cgs_44.SpecialEventConfig)
    fns.cgs_12 = require(fns.cgs_44.ShopUpgradesConfig)
else
    fns.cgs_100 = require(fns.cgs_12.Picklock)
    fns.MutatorModule = require(fns.cgs_12.MutatorModule)
    fns.cgs_44.EventManager = require(fns.cgs_12.SpecialEventManager)
    fns.cgs_44.EventConfig = require(fns.cgs_12.SpecialEventConfig)
    fns.cgs_3 = require(fns.cgs_12.ShopUpgradesConfig)
end
fns.cgs_44.BankHeistConfig = require(fns.cgs_12.BankHeistConfig)
ItemLoader = require(fns.cgs_12.ItemLoader)
Furniture = require(fns.cgs_12.Furniture)
BuildState = require(fns.cgs_12.Screens.BuildMode.BuildState)
fns.cgs_44.AccessoryAttributes = require(fns.cgs_12.AccessoryAttributes)
fns.cgs_44.SafeDefs = require(fns.cgs_12.Safes)
local cgs_19_30 = (pcall(function()
    return require(fns.cgs_12.TrophyHelper)
end))
if cgs_19_30 then
    local cgs_159_11 = 0
    repeat
        local cgs_152_6 = {
            "dxzx",
            "ogoehxs",
            "avwrdijkv",
            "ehkcbvlrsbk",
            "isdjipfzakf",
            "vuxvg",
            "mmklvf",
            "uoh",
            "iwrnyuw",
            "hwfozxvo"
        }
        local cn3 = cgs_159_11
        local cgs_145_17 = cgs_152_6[cn3 % 10 + 1]
        if cgs_145_17:len() <= cgs_145_17:gsub("(.)", "%1%1", cn3 % 3 % 2 + 1):len() then
            cgs_19_30 = require(fns.cgs_12.TrophyHelper)
        else
            fns.cgs_12 = require(cgs_19_30.TrophyHelper)
        end
        cgs_159_11 = (cgs_159_11 + 1) % 4
    until (cgs_159_11 * 1 + 1) % 4 == 2
end
fns.cgs_44.TrophyHelper = cgs_19_30 or nil
local cgs_19_31 = (pcall(function()
    return require(fns.cgs_12.TrophyConfig)
end))
if cgs_19_31 then
    local cgs_159_13 = 3
    repeat
        if cgs_159_13 * 54030919 + 1 + 2 <= cgs_159_13 * 54030919 + 1 + 2 + 6 then
            cgs_19_31 = require(fns.cgs_12.TrophyConfig)
        else
            fns.cgs_12 = require(cgs_19_31.TrophyConfig)
        end
        cgs_159_13 = (cgs_159_13 + 2) % 4
    until (cgs_159_13 * 1 + 3) % 4 == 0
end
fns.cgs_44.TrophyConfig = cgs_19_31 or nil
local cgs_19_32 = (pcall(function()
    return require(fns.cgs_12.Monetisation)
end))
if cgs_19_32 then
    local cgs_159_15 = 4
    repeat
        if cgs_159_15 * 110220073 + 3 + 6 >= cgs_159_15 * 110220073 + 3 + 6 + 2 then
            fns.cgs_12 = require(cgs_19_32.Monetisation)
        else
            cgs_19_32 = require(fns.cgs_12.Monetisation)
        end
        cgs_159_15 = (cgs_159_15 + 3) % 8
    until (cgs_159_15 * 7 + 0) % 8 == 1
end
local cgs_159_16 = cgs_19_32 or nil
local cgs_19_33 = 0
repeat
    local cgs_152_7 = (vector.create((cgs_19_33 * 4 + 3) % 11 + 1, (cgs_19_33 * 1 + 1) % 13 + 1, (cgs_19_33 * 8 + 14) % 17 + 1))
    local cmY = vector.floor(cgs_152_7) + vector.ceil(cgs_152_7 * -1)
    if vector.dot(cmY, cmY) == 0 then
        fns.cgs_44.Monetisation = cgs_159_16
        fns.cgs_44.TROPHY_CHOICE = "Trophy"
        fns.cgs_44.GavelBypass = {
            Applied = false,
            PassIds = {},
            ProductIds = {},
            ConfigBackup = nil,
            ExtraPassBackup = nil,
            ExtraStudioBackup = nil,
            PromptConns = {},
            SetExtraAttr = false,
            OldPrompt = nil,
            OldPromptProduct = nil,
            OldOwns = nil,
            OldGetCapacity = nil
        }
        fns.cgs_44.IsGavelPromptId = fns.fn924
        fns.cgs_44.ReadGavelPassIds = fns.fn3453
        fns.cgs_44.PatchGavelPromptUpvalues = function(bz)
            local a6c_4
            local a6b_3, a6b_4
            local a6a_6, a6a_7
            local a56 = debug and debug.getupvalue or getupvalue
            local a55_4 = debug
            if a55_4 then
                a55_4 = debug.setupvalue
            end
            local a56_7 = a55_4
            local a6h = if a56_7 then 1 else 0
            local a6f = 48 * a6h + 3962 * (1 - a6h)
            local a6g = 2619 * a6h + 971 * (1 - a6h)
            if not ((a6f * 3024 + a6g * 1532 + a6f * a6g) % 16777213 == 4283172) then
                a56_7 = setupvalue
            end
            local a55_5 = debug
            local a58 = a56_7
            if a55_5 then
                a55_5 = debug.getupvalues
            end
            local a56_8 = a55_5 or getupvalues
            local Events = fns.a2X:FindFirstChild("Events")
            local a59 = Events and Events:FindFirstChild("UI")
            local a56_10 = a59
            if a59 then
                a59 = a56_10:FindFirstChild("OpenUpgradePrompt")
            end
            local a56_11 = a59
            if not a56_11 or not getconnections then
                return
            end
            for k, v in getconnections(a56_11.OnClientEvent) do
                local a6n = v
                local Function = a6n.Function
                if not (type(Function) ~= "function") then
                    local a59_7 = {}
                    if a56_8 then
                        a6a_6, a6b_3 = pcall(a56_8, Function)
                        local a6c_3 = a6a_6 and type(a6b_3) == "table"
                        if a6c_3 then
                            a59_7 = a6b_3
                        end
                    elseif a56 then
                        local a6q = 1
                        while a6q <= 10 do
                            local a6r = a6q
                            a6a_7, a6b_4, a6c_4 = pcall(a56, Function, a6r)
                            if not a6a_7 then
                                break
                            elseif a6c_4 ~= nil then
                                a59_7[a6r] = a6c_4
                                a6q += 1
                            else
                                local a6a_8 = a6b_4 ~= nil and type(a6b_4) ~= "string"
                                if a6a_8 then
                                    a59_7[a6r] = a6b_4
                                    a6q += 1
                                    continue
                                end
                                if a6b_4 == nil and a6c_4 == nil then
                                    break
                                end
                                a6q += 1
                            end
                        end
                    end
                    for k, v in a59_7 do
                        local a59_8 = type(v) == "table" and type(v.Gamepasses) == "table" and type(v.Gamepasses.ExtraGavelTrophy) == "table"
                        if a59_8 then
                            local ExtraGavelTrophy = v.Gamepasses.ExtraGavelTrophy
                            if bz then
                                if fns.cgs_44.GavelBypass.ExtraPassBackup ~= nil then
                                    ExtraGavelTrophy.GamepassId = fns.cgs_44.GavelBypass.ExtraPassBackup
                                end
                                if fns.cgs_44.GavelBypass.ExtraStudioBackup ~= nil then
                                    ExtraGavelTrophy.StudioPromptGamepassId = fns.cgs_44.GavelBypass.ExtraStudioBackup
                                end
                            else
                                if fns.cgs_44.GavelBypass.ExtraPassBackup == nil then
                                    fns.cgs_44.GavelBypass.ExtraPassBackup = ExtraGavelTrophy.GamepassId
                                end
                                if fns.cgs_44.GavelBypass.ExtraStudioBackup == nil then
                                    fns.cgs_44.GavelBypass.ExtraStudioBackup = ExtraGavelTrophy.StudioPromptGamepassId
                                end
                                ExtraGavelTrophy.GamepassId = 0
                                ExtraGavelTrophy.StudioPromptGamepassId = 0
                            end
                        else
                            local a59_10 = not bz
                            if a59_10 ~= false then
                                a59_10 = type(v) == "number"
                            end
                            if a59_10 then
                                a59_10 = fns.cgs_44.IsGavelPromptId(v)
                            end
                            if a59_10 and a58 then
                                pcall(a58, Function, k, nil)
                            end
                        end
                    end
                    if bz then
                        pcall(function()
                            a6n:Enable()
                        end)
                    else
                        pcall(function()
                            a6n:Disable()
                        end)
                        fns.cgs_44.GavelBypass.PromptConns[#fns.cgs_44.GavelBypass.PromptConns + 1] = a6n
                    end
                end
            end
        end
        fns.cgs_44.RestoreGavelBypass = fns.fn2192
        fns.cgs_44.ApplyGavelBypass = fns.fn3721
        fns.cgs_44.SetGavelBypass = fns.fn621
        fns.cgs_44.PoliceEscape = { hooked = false }
        fns.cgs_44.EnsurePoliceEscapeHook = fns.fn4199
        fns.cgs_44.CORE_UPGRADE_IDS = { SellingSlots = true, PlotItemLimit = true, InventorySpace = true }
        fns.cgs_44.RARITY_ORDER = { "Junk", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Lost" }
        fns.cgs_44.RARITY_RANK = {}
    else
        fns.cgs_44.Monetisation = fns.cgs_44
        cgs_159_16.TROPHY_CHOICE = "Trophy"
        cgs_159_16.GavelBypass = {
            ExtraPassBackup = nil,
            ExtraStudioBackup = nil,
            ProductIds = {},
            OldPrompt = nil,
            ConfigBackup = nil,
            OldPromptProduct = nil,
            SetExtraAttr = false,
            OldGetCapacity = nil,
            PassIds = {},
            Applied = false,
            OldOwns = nil,
            PromptConns = {}
        }
        cgs_159_16.IsGavelPromptId = fns.fn924
        cgs_159_16.ReadGavelPassIds = fns.fn3453
        cgs_159_16.PatchGavelPromptUpvalues = function(bz)
            local a6c_2
            local a6b_1, a6b_2
            local a6a_1, a6a_2
            local a56 = debug and debug.getupvalue or getupvalue
            local a55_1 = debug
            if a55_1 then
                a55_1 = debug.setupvalue
            end
            local a56_1 = a55_1
            local a6h = if a56_1 then 1 else 0
            local a6f = 48 * a6h + 3962 * (1 - a6h)
            local a6g = 2619 * a6h + 971 * (1 - a6h)
            if not ((a6f * 3024 + a6g * 1532 + a6f * a6g) % 16777213 == 4283172) then
                a56_1 = setupvalue
            end
            local a55_2 = debug
            local a58 = a56_1
            if a55_2 then
                a55_2 = debug.getupvalues
            end
            local a56_2 = a55_2 or getupvalues
            local Events = fns.a2X:FindFirstChild("Events")
            local a59 = Events and Events:FindFirstChild("UI")
            local a56_4 = a59
            if a59 then
                a59 = a56_4:FindFirstChild("OpenUpgradePrompt")
            end
            local a56_5 = a59
            if not a56_5 or not getconnections then
                return
            end
            for k, v in getconnections(a56_5.OnClientEvent) do
                local a6n = v
                local Function = a6n.Function
                if not (type(Function) ~= "function") then
                    local a59_2 = {}
                    if a56_2 then
                        a6a_1, a6b_1 = pcall(a56_2, Function)
                        local a6c_1 = a6a_1 and type(a6b_1) == "table"
                        if a6c_1 then
                            a59_2 = a6b_1
                        end
                    elseif a56 then
                        local a6q = 1
                        while a6q <= 10 do
                            local a6r = a6q
                            a6a_2, a6b_2, a6c_2 = pcall(a56, Function, a6r)
                            if not a6a_2 then
                                break
                            elseif a6c_2 ~= nil then
                                a59_2[a6r] = a6c_2
                                a6q += 1
                            else
                                local a6a_3 = a6b_2 ~= nil and type(a6b_2) ~= "string"
                                if a6a_3 then
                                    a59_2[a6r] = a6b_2
                                    a6q += 1
                                    continue
                                end
                                if a6b_2 == nil and a6c_2 == nil then
                                    break
                                end
                                a6q += 1
                            end
                        end
                    end
                    for k, v in a59_2 do
                        local a59_3 = type(v) == "table" and type(v.Gamepasses) == "table" and type(v.Gamepasses.ExtraGavelTrophy) == "table"
                        if a59_3 then
                            local ExtraGavelTrophy = v.Gamepasses.ExtraGavelTrophy
                            if bz then
                                if fns.cgs_44.GavelBypass.ExtraPassBackup ~= nil then
                                    ExtraGavelTrophy.GamepassId = fns.cgs_44.GavelBypass.ExtraPassBackup
                                end
                                if fns.cgs_44.GavelBypass.ExtraStudioBackup ~= nil then
                                    ExtraGavelTrophy.StudioPromptGamepassId = fns.cgs_44.GavelBypass.ExtraStudioBackup
                                end
                            else
                                if fns.cgs_44.GavelBypass.ExtraPassBackup == nil then
                                    fns.cgs_44.GavelBypass.ExtraPassBackup = ExtraGavelTrophy.GamepassId
                                end
                                if fns.cgs_44.GavelBypass.ExtraStudioBackup == nil then
                                    fns.cgs_44.GavelBypass.ExtraStudioBackup = ExtraGavelTrophy.StudioPromptGamepassId
                                end
                                ExtraGavelTrophy.GamepassId = 0
                                ExtraGavelTrophy.StudioPromptGamepassId = 0
                            end
                        else
                            local a59_5 = not bz
                            if a59_5 ~= false then
                                a59_5 = type(v) == "number"
                            end
                            if a59_5 then
                                a59_5 = fns.cgs_44.IsGavelPromptId(v)
                            end
                            if a59_5 and a58 then
                                pcall(a58, Function, k, nil)
                            end
                        end
                    end
                    if bz then
                        pcall(function()
                            a6n:Enable()
                        end)
                    else
                        pcall(function()
                            a6n:Disable()
                        end)
                        fns.cgs_44.GavelBypass.PromptConns[#fns.cgs_44.GavelBypass.PromptConns + 1] = a6n
                    end
                end
            end
        end
        cgs_159_16.RestoreGavelBypass = fns.fn2192
        cgs_159_16.ApplyGavelBypass = fns.fn3721
        cgs_159_16.SetGavelBypass = fns.fn621
        cgs_159_16.PoliceEscape = { hooked = false }
        cgs_159_16.EnsurePoliceEscapeHook = fns.fn4199
        cgs_159_16.CORE_UPGRADE_IDS = { PlotItemLimit = true, SellingSlots = true, InventorySpace = true }
        cgs_159_16.RARITY_ORDER = { "Lost", "Legendary", "Uncommon", "Epic", "Junk", "Mythical", "Rare" }
        cgs_159_16.RARITY_RANK = {}
    end
    cgs_19_33 = (cgs_19_33 + 0) % 8
until (cgs_19_33 * 7 + 4) % 8 == 4
for i, v in ipairs(fns.cgs_44.RARITY_ORDER) do
    fns.cgs_44.RARITY_RANK[v] = i
end
fns.cgs_44.LimitedItemNames = {}
for k, v in pairs(Items) do
    local cgs_19_34 = type(v) == "table" and v.Limited == true and v.Name
    if cgs_19_34 then
        fns.cgs_44.LimitedItemNames[v.Name] = true
    end
end
if getgenv then
    fns.cgs_138_14, cgs_159_17, fns.cgs_152_8, fns.cgs_145_18 = nil, nil, nil, nil
    local cgs_19_35 = 14
    repeat
        if (cgs_19_35 * 1 + 1) % 2 + 1 <= 1 then
            local cgs_132_11 = (vector.create((cgs_19_35 * 5 + 7) % 11 + 1, (cgs_19_35 * 6 + 10) % 13 + 1, (cgs_19_35 * 3 + 11) % 17 + 1))
            local cgs_127_4 = (vector.create((cgs_19_35 * 5 + 6) % 11 + 1, (cgs_19_35 * 2 + 13) % 13 + 1, (cgs_19_35 * 12 + 6) % 17 + 1))
            local cgs_121_2 = (vector.create((cgs_19_35 * 6 + 6) % 11 + 1, (cgs_19_35 * 10 + 1) % 13 + 1, (cgs_19_35 * 3 + 16) % 17 + 1))
            if vector.dot(vector.cross(cgs_132_11, cgs_127_4), cgs_121_2) == vector.dot(vector.cross(cgs_127_4, cgs_121_2), cgs_132_11) + 3 then
                fns.cgs_138_14 = isfolder
            else
                fns.cgs_145_18 = isfolder
            end
            cgs_19_35 = (cgs_19_35 + 13) % 16
        else
            local cgs_132_12 = {
                "ivopxcndo",
                "abicn",
                "nfhmwzir",
                "zdsbawc",
                "hcbc",
                "depu",
                "fapbnswdp",
                "jqvuorhtbz",
                "cwnombffppp"
            }
            local cn2 = cgs_19_35
            local cgs_127_5 = cgs_132_12[cn2 % 9 + 1]
            if cgs_127_5:len() >= cgs_127_5:reverse():rep(cn2 % 3 + 2):len() then
                fns.cgs_152_8 = getgenv()
                fns.cgs_138_14, cgs_159_17 = pcall(fns.fn4043)
            else
                fns.cgs_138_14 = getgenv()
                cgs_159_17, fns.cgs_152_8 = pcall(fns.fn4043)
            end
            cgs_19_35 = (cgs_19_35 + 9) % 16
        end
    until (cgs_19_35 * 15 + 5) % 16 == 1
    if fns.cgs_145_18 then
        local cgs_19_36 = not cgs_159_17
        if not cgs_19_36 then
            local cgs_159_18 = 1
            repeat
                local cgs_132_13 = (vector.create((cgs_159_18 * 5 + 3) % 11 + 1, (cgs_159_18 * 2 + 2) % 13 + 1, (cgs_159_18 * 4 + 9) % 17 + 1))
                local cgs_127_6 = (vector.create((cgs_159_18 * 3 + 3) % 11 + 1, (cgs_159_18 * 4 + 7) % 13 + 1, (cgs_159_18 * 3 + 10) % 17 + 1))
                local cgs_121_3 = (vector.create((cgs_159_18 * 7 + 5) % 11 + 1, (cgs_159_18 * 4 + 10) % 13 + 1, (cgs_159_18 * 15 + 9) % 17 + 1))
                if vector.dot(vector.cross(cgs_132_13, cgs_127_6), cgs_121_3) == vector.dot(vector.cross(cgs_127_6, cgs_121_3), cgs_132_13) + 3 then
                    fns.cgs_152_8 = typeof(cgs_19_36) ~= "boolean"
                else
                    cgs_19_36 = typeof(fns.cgs_152_8) ~= "boolean"
                end
                cgs_159_18 = (cgs_159_18 + 4) % 8
            until (cgs_159_18 * 5 + 2) % 8 == 3
        end
        fns.cgs_145_18 = cgs_19_36
    end
    if fns.cgs_145_18 then
        local a1j
        local cgs_19_37 = 3
        repeat
            if cgs_19_37 * 102468319 + 2 + 7 >= cgs_19_37 * 102468319 + 2 + 7 + 2 then
                a1j = { isfolder = false, listfiles = {}, isfile = false }
            else
                a1j = { isfolder = false, isfile = false, listfiles = {} }
            end
            cgs_19_37 = (cgs_19_37 + 0) % 4
        until (cgs_19_37 * 1 + 0) % 4 == 3
        for i, v in ipairs({ "isfolder", "isfile", "listfiles", "makefolder", "writefile", "readfile", "delfile" }) do
            local a5r = v
            local a2V = fns.cgs_138_14[a5r]
            if type(a2V) == "function" then
                fns.cgs_138_14[a5r] = function(...)
                    local a7d_1
                    local a7c_1
                    a7c_1, a7d_1 = pcall(a2V, ...)
                    if a7c_1 then
                        return a7d_1
                    end
                    return a1j[a5r]
                end
            end
        end
    end
end
fns.cgs_51 = nil
local cgs_19_38 = 7
repeat
    if cgs_19_38 * 34932105 + 11 + 3 <= cgs_19_38 * 34932105 + 11 + 3 + 5 then
        cgs_159_20 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        fns.cgs_51 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    else
        fns.cgs_51 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        cgs_159_20 = loadstring(game:HttpGet(fns.cgs_51 .. "Library.lua"))()
    end
    cgs_19_38 = (cgs_19_38 + 0) % 8
until (cgs_19_38 * 7 + 6) % 8 == 7
if getgenv then
    local cgs_19_39 = 5
    repeat
        local cgs_152_9 = (vector.create((cgs_19_39 * 2 + 6) % 11 + 1, (cgs_19_39 * 9 + 2) % 13 + 1, (cgs_19_39 * 14 + 12) % 17 + 1))
        local cgs_145_19 = (vector.create((cgs_19_39 * 1 + 4) % 11 + 1, (cgs_19_39 * 3 + 12) % 13 + 1, (cgs_19_39 * 1 + 13) % 17 + 1))
        local cgs_138_15 = (vector.create((cgs_19_39 * 3 + 6) % 5 + 1, (cgs_19_39 * 3 + 5) % 7 + 1, (cgs_19_39 * 3 + 2) % 9 + 1))
        if math.abs((vector.angle(cgs_152_9, cgs_145_19, cgs_138_15))) - math.abs((vector.angle(cgs_145_19, cgs_152_9, cgs_138_15))) == 0 then
            getgenv().OuroborosStorageHuntersRuntime = { Unload = fns.fn960 }
        else
            getgenv().OuroborosStorageHuntersRuntime = { Unload = fns.fn960 }
        end
        cgs_19_39 = (cgs_19_39 + 7) % 8
    until (cgs_19_39 * 3 + 5) % 8 == 1
end
a3C, a1U, fns.Toggles2, fns.Options = nil, nil, nil, nil
pcall(fns.fn5554)
a3C = loadstring(game:HttpGet(cgs_159_20 .. "addons/ThemeManager.lua"))()
a1U = loadstring(game:HttpGet(cgs_159_20 .. "addons/SaveManager.lua"))()
fns.Toggles2 = fns.cgs_51.Toggles
fns.Options = fns.cgs_51.Options
fns.cgs_33 = nil
fns.cgs_33 = setmetatable({}, { __index = fns.fn4818 })
local cgs_145_20 = { __index = fns.fn5484 }
pcall(setmetatable, fns.Toggles2, cgs_145_20)
pcall(setmetatable, fns.Options, cgs_145_20)
a3b, fns.cgs_48 = nil, nil
a3b = fns.fn2147
fns.cgs_44.AREA_ORDER = {
    "Junk Yard",
    "Back Alley",
    "Farmyard",
    "Shipyard",
    "Lucky Beach",
    "Power Plant",
    "Cargo Ship",
    "Jurassic"
}
fns.cgs_48 = fns.fn3324
fns.cgs_44.CONTAINERS = {}
local cgs_19_40 = {}
for k, v in pairs(Garages) do
    if type(v) == "table" then
        cgs_19_40[#cgs_19_40 + 1] = k
    end
end
local cgs_159_21 = 6
repeat
    local cmV = bit32.rrotate(bit32.bxor(bit32.lrotate(cgs_159_21, 4), string.byte(tostring(cgs_159_21))), 18)
    if bit32.bxor(bit32.lrotate(bit32.bxor(cmV, 4099917171), 4), 1174165311) == bit32.lrotate(cmV, 4) then
        table.sort(cgs_19_40, fns.fn251)
    else
        table.sort(cgs_19_40, fns.fn251)
    end
    cgs_159_21 = (cgs_159_21 + 5) % 8
until (cgs_159_21 * 1 + 4) % 8 == 7
for i, v in ipairs(cgs_19_40) do
    local cgs_19_41 = Garages[v]
    local cgs_159_22 = fns.cgs_44.CONTAINERS
    local cgs_152_10 = #fns.cgs_44.CONTAINERS + 1
    local cgs_145_21 = cgs_19_41.MinNetWorth or 0
    cgs_159_22[cgs_152_10] = { Id = v, Label = ("%s | $%s"):format(v, fns.cgs_48(cgs_145_21)) }
end
fns.cgs_7, fns.cgs_64, fns.cgs_32, fns.cgs_101, a3V = nil, nil, nil, nil, nil
fns.cgs_7 = fns.fn4231
fns.cgs_64 = fns.fn4868
fns.cgs_32 = fns.fn1050
fns.cgs_101 = fns.fn3033
if not fns.cgs_7 or a3V or not fns.cgs_64 or (fns.cgs_7 or not fns.cgs_64 and false) or (not fns.cgs_32 and not fns.cgs_7 or fns.cgs_64 and fns.cgs_32) and (fns.cgs_101 and false) or (a3V or fns.cgs_101) and (not fns.cgs_64 or a3V) and (not fns.cgs_64 and not fns.cgs_32 or 0) and ((not fns.cgs_64 or fns.cgs_101) or (a3V or not fns.cgs_64) and (not a3V and not a3V)) or not (not fns.cgs_7 or a3V or not fns.cgs_64 or (fns.cgs_7 or not fns.cgs_64 and false) or (not fns.cgs_32 and not fns.cgs_7 or fns.cgs_64 and fns.cgs_32) and (fns.cgs_101 and false) or (a3V or fns.cgs_101) and (not fns.cgs_64 or a3V) and (not fns.cgs_64 and not fns.cgs_32 or 0) and ((not fns.cgs_64 or fns.cgs_101) or (a3V or not fns.cgs_64) and (not a3V and not a3V))) then
    a3V = fns.fn958
else
    fns.cgs_101 = fns.fn958
end
fns.cgs_44.IgnoreFavoritedItem = fns.fn3910
fns.cgs_44.PowerPlantPartNames = {}
local cgs_152_11 = workspace:FindFirstChild("Areas")
local cgs_145_22 = cgs_152_11 and cgs_152_11:FindFirstChild("Power Plant")
local cgs_159_23 = cgs_145_22 and cgs_145_22:FindFirstChild("PartsToFind")
if cgs_159_23 then
    for i, v in ipairs(cgs_159_23:QueryDescendants("Model[$PPKey]")) do
        fns.cgs_44.PowerPlantPartNames[v.Name] = true
    end
    for i, child in ipairs(cgs_159_23:GetChildren()) do
        for i, child in ipairs(child:GetChildren()) do
            if child:IsA("Model") then
                fns.cgs_44.PowerPlantPartNames[child.Name] = true
            end
        end
    end
end
a3w, a1J, fns.a3l, a1v, fns.cgs_49, fns.cgs_81, a3v, a3f, a3g, a2T, fns.cgs_24, a1K, a4k, fns.cgs_94, a4g, fns.cgs_29, a1s, a3G, fns.cgs_41, a1H, a1u, fns.cgs_89, a4i, fns.cgs_69, fns.cgs_65 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.cgs_44.EXTRA_CATEGORIES = {
    { Name = "Limited", Match = fns.fn1081 },
    { Name = "Vehicle Parts", Match = fns.fn3209 },
    { Name = "Power Plant Parts", Match = fns.fn835 },
    { Name = "Exclusives", Match = fns.fn5560 },
    { Name = "Safes", Match = fns.fn3500 },
    { Name = "Drinks", Match = fns.fn2745 }
}
fns.cgs_44.CategoryMatch = fns.fn3984
fns.cgs_49 = fns.fn2006
fns.cgs_81 = fns.fn2928
a3v = fns.fn3239
a3f = fns.fn887
a3w = {
    active = false,
    winningsPickupActive = false,
    winningsCarSpawned = false,
    stopNpcAwaitingWinnings = false,
    stopNpcWinningsDeadline = 0,
    inZone = false,
    entryAttempt = nil,
    entryRetryAt = 0,
    garage = nil,
    currentBid = 0,
    winner = nil,
    nextBid = nil,
    lotValue = nil,
    lastWinAt = nil,
    usedCalculator = false,
    bidRequestKey = nil,
    bidRequestAt = 0
}
a1J = { accepted = 0, rejected = 0, status = "idle" }
a1v = {}
a3g = fns.fn2541
a2T = fns.fn5187
fns.cgs_24 = function(fC)
    local a8V_1
    local a8U = a1v[fC]
    local a8U_1
    if a8U ~= nil then
        return a8U
    end
    a8U_1, a8V_1 = pcall(function()
        return ItemLoader:GetItem(fC)
    end)
    local a8W = a8U_1
    local a8U_2 = {}
    if a8W then
        a8W = typeof(a8V_1) == "Instance"
    end
    if a8W then
        a8U_2 = a3g(a8V_1)
    end
    a1v[fC] = a8U_2
    return a8U_2
end
a1K = function(fO)
    local a8_
    local a80
    a8_ = nil
    a80 = nil
    local a81 = fO and fO.Parent and fO:FindFirstChild("Floorspace")
    if not a81 then
        return nil
    end
    local a81_1 = {}
    a8_, a80 = {}, {}
    local function a83(fV)
        local a8Y = (fV:IsA("Model")) and not a80[fV]
        if a8Y then
            a80[fV] = true
            a8_[#a8_ + 1] = fV
        end
    end
    for i, child in ipairs(a81:GetChildren()) do
        a83(child)
    end
    for i, v in ipairs(a81:QueryDescendants("Model[$ItemId], Model[$Mutators], Model[$IsTrophy]")) do
        a83(v)
    end
    for i, v in ipairs(a8_) do
        if v:IsA("Model") then
            local a82_1 = {}
            for i, v in ipairs(fns.MutatorModule:ParseMutatorsAttr(v:GetAttribute("Mutators"))) do
                local a83_1 = type(v) == "table"
                if a83_1 then
                    a83_1 = v.name or v.Name
                end
                local a83_2 = a83_1 or v
                local a84_3 = a83_2 ~= ""
                local a85_1 = type(a83_2) == "string" and a84_3
                if a85_1 then
                    a82_1[a83_2] = true
                end
            end
            if v:GetAttribute("IsTrophy") == true then
                a82_1[fns.cgs_44.TROPHY_CHOICE] = true
            end
            local a83_3 = fns.cgs_101(v:GetAttribute("ItemId"))
            local a85_2 = a83_3 and a83_3.Limited == true
            if not a85_2 then
                a85_2 = v.Name ~= "Model" and fns.cgs_44.LimitedItemNames[v.Name]
            end
            if a85_2 then
                a82_1.Limited = true
            end
            local a84_6 = #a81_1 + 1
            local a86 = v.Name ~= "Model" and v.Name or nil
            a81_1[a84_6] = { Name = a86, Signature = a3g(v), Mutators = a82_1, Def = a83_3 }
        end
    end
    if #a81_1 == 0 then
        return nil
    end
    return a81_1
end
fns.cgs_44.ALWAYS_BID_PREFIX = "AlwaysBid_"
fns.cgs_44.SKIP_MUTATIONS_PREFIX = "SkipMutations_"
fns.cgs_44.BID_MUTATIONS_PREFIX = "BidMutations_"
a4k = fns.fn18
fns.cgs_44.SkippedMutations = fns.fn4216
fns.cgs_44.BidMutations = fns.fn3744
fns.cgs_94 = fns.fn5074
a4g = fns.fn4441
fns.cgs_29 = fns.fn3665
fns.cgs_44.InvalidateLotCache = fns.fn2217
a1s = fns.fn5719
if a4i and fns.cgs_24 and (not a4i and a1u) and (a4i or not a1u or (not fns.cgs_94 or fns.cgs_24)) or a1u and fns.cgs_94 and (not a1u and a4i) and (a4i and a1u or (fns.cgs_81 or not fns.cgs_94)) or (false or not a1u or (not a4i or fns.cgs_24)) and (a1u or not a4i or not a1u and false) and ((not a4i or false or (a4i or fns.cgs_24)) and (not a4i or a1u or not fns.cgs_94 and fns.cgs_94)) or not (a4i and fns.cgs_24 and (not a4i and a1u) and (a4i or not a1u or (not fns.cgs_94 or fns.cgs_24)) or a1u and fns.cgs_94 and (not a1u and a4i) and (a4i and a1u or (fns.cgs_81 or not fns.cgs_94)) or (false or not a1u or (not a4i or fns.cgs_24)) and (a1u or not a4i or not a1u and false) and ((not a4i or false or (a4i or fns.cgs_24)) and (not a4i or a1u or not fns.cgs_94 and fns.cgs_94))) then
    fns.cgs_44.Connections = {}
    fns.cgs_44.NoclipTouched = {}
    fns.cgs_44.Track = fns.fn873
    fns.cgs_44.FinishWinningsPickup = fns.fn3655
    fns.cgs_44.Track(fns.cgs_44.ToggleBiddingUI.OnClientEvent:Connect(fns.onOnClientEvent5))
    fns.cgs_44.Track(fns.cgs_44.AuctionPickupStart.OnClientEvent:Connect(fns.onOnClientEvent4))
    fns.cgs_44.Track(fns.cgs_44.AuctionPickupEnd.OnClientEvent:Connect(fns.onOnClientEvent3))
    fns.cgs_44.Track(fns.cgs_44.ToggleAuctionArea.OnClientEvent:Connect(fns.onOnClientEvent2))
    fns.cgs_44.SetAuctionPaused = function(iA)
        if fns.cgs_44.SetStudioAuctionFreeze then
            pcall(function()
                fns.cgs_44.SetStudioAuctionFreeze:FireServer(iA)
            end)
        end
        if fns.cgs_44.RequestAuctionPause then
            pcall(function()
                fns.cgs_44.RequestAuctionPause:FireServer(iA)
            end)
        end
    end
    fns.cgs_44.StopNpcBidFastMode = fns.fn145
    fns.cgs_44.StopNpcBidEnabled = fns.fn876
    fns.cgs_44.StopNpcWinningsPending = fns.fn5737
    fns.cgs_44.AwaitingLeaveTimer = fns.fn1687
    fns.cgs_44.Track(fns.cgs_44.UpdateCurrentWinningBid.OnClientEvent:Connect(fns.onOnClientEvent))
    a3G = fns.fn2389
    fns.cgs_41 = fns.fn5571
    a1H = fns.fn5733
else
    a1H.Connections = {}
    a1H.NoclipTouched = {}
    a1H.Track = fns.fn873
    a1H.FinishWinningsPickup = fns.fn3655
    a1H.Track(a1H.ToggleBiddingUI.OnClientEvent:Connect(fns.onOnClientEvent5))
    a1H.Track(a1H.AuctionPickupStart.OnClientEvent:Connect(fns.onOnClientEvent4))
    a1H.Track(a1H.AuctionPickupEnd.OnClientEvent:Connect(fns.onOnClientEvent3))
    a1H.Track(a1H.ToggleAuctionArea.OnClientEvent:Connect(fns.onOnClientEvent2))
    a1H.SetAuctionPaused = function(iA)
        if fns.cgs_44.SetStudioAuctionFreeze then
            pcall(function()
                fns.cgs_44.SetStudioAuctionFreeze:FireServer(iA)
            end)
        end
        if fns.cgs_44.RequestAuctionPause then
            pcall(function()
                fns.cgs_44.RequestAuctionPause:FireServer(iA)
            end)
        end
    end
    a1H.StopNpcBidFastMode = fns.fn145
    a1H.StopNpcBidEnabled = fns.fn876
    a1H.StopNpcWinningsPending = fns.fn5737
    a1H.AwaitingLeaveTimer = fns.fn1687
    a1H.Track(a1H.UpdateCurrentWinningBid.OnClientEvent:Connect(fns.onOnClientEvent))
    fns.cgs_44 = fns.fn2389
    a3G = fns.fn5571
    fns.cgs_41 = fns.fn5733
end
a1u = fns.fn4894
fns.cgs_89 = fns.fn1309
a4i = fns.fn4949
fns.cgs_69 = fns.fn1137
fns.cgs_65 = fns.fn4761
local cgs_19_44 = fns.cgs_44.WalkState
if not cgs_19_44 then
    local cgs_159_24 = 1
    repeat
        local cgs_152_12 = (vector.create((cgs_159_24 * 4 + 9) % 11 + 1, (cgs_159_24 * 11 + 8) % 13 + 1, (cgs_159_24 * 12 + 5) % 17 + 1))
        local cgs_145_23 = (vector.create((cgs_159_24 * 3 + 7) % 11 + 1, (cgs_159_24 * 6 + 13) % 13 + 1, (cgs_159_24 * 8 + 6) % 17 + 1))
        local cgs_138_16 = (vector.create((cgs_159_24 * 5 + 5) % 11 + 1, (cgs_159_24 * 3 + 9) % 13 + 1, (cgs_159_24 * 15 + 10) % 17 + 1))
        local cgs_132_14 = (vector.create((cgs_159_24 * 2 + 5) % 5 + 1, (cgs_159_24 * 3 + 1) % 7 + 1, (cgs_159_24 * 5 + 4) % 9 + 1))
        if vector.dot(vector.cross(cgs_152_12, (vector.cross(cgs_145_23, cgs_138_16))), cgs_132_14) == vector.dot(cgs_145_23 * vector.dot(cgs_152_12, cgs_138_16) - cgs_138_16 * vector.dot(cgs_152_12, cgs_145_23), cgs_132_14) then
            cgs_19_44 = { target = nil, since = 0, bestDist = math.huge }
        else
            cgs_19_44 = { since = 0, target = nil, bestDist = math.huge }
        end
        cgs_159_24 = (cgs_159_24 + 3) % 8
    until (cgs_159_24 * 3 + 5) % 8 == 1
end
a1w, fns.cgs_83, a3x, a3h, fns.cgs_63, a2h, fns.a1X, fns.cgs_1, a2G, a1R = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local cgs_152_13 = 7
repeat
    local cgs_159_25 = (cgs_152_13 * 1 + 3) % 4 + 1
    if cgs_159_25 <= 2 then
        if cgs_159_25 <= 1 then
            local cgs_145_24 = {
                "trjhjn",
                "kbfyc",
                "xnzplcyaoa",
                "cdoiljgnqi",
                "gzntiazlyq",
                "vhesva",
                "phumdzkxd",
                "npbd",
                "cpbasrm",
                "xginmsnpse",
                "fupd",
                "wpuby"
            }
            if cgs_145_24[(cgs_152_13 * 23 + 84) % 12 + 1] <= cgs_145_24[(cgs_152_13 * 23 + 84) % 12 + 1] then
                a2G = fns.fn4469
                fns.cgs_44.CargoHasPriority = fns.fn5545
                a1R = fns.fn1644
            else
                a1R = fns.fn4469
                a2G.CargoHasPriority = fns.fn5545
                fns.cgs_44 = fns.fn1644
            end
            cgs_152_13 = (cgs_152_13 + 13) % 16
        else
            local cgs_145_25 = {
                "punepj",
                "yqvyrpw",
                "bxmc",
                "xednudkkmrca",
                "rsnnfiojqws",
                "rxrgg",
                "kcrmvxojcgmx",
                "spdzyxvzwx",
                "drl",
                "pbiqsgracxp",
                "qtosnus",
                "lqffs",
                "bqpxkc",
                "bsbhyeiu",
                "vyflfpfg",
                "hibtmie"
            }
            if cgs_145_25[(cgs_152_13 * 28 + 12) % 16 + 1] <= cgs_145_25[(cgs_152_13 * 28 + 12) % 16 + 1] then
                fns.cgs_44.SeizedGarageTarget = fns.fn1486
                fns.cgs_44.PoliceHasPriority = fns.fn2139
                fns.cgs_44.TargetAreas = fns.fn928
                fns.cgs_44.LostFoundAreas = fns.fn5692
                fns.cgs_44.QuestAuctionEnabled = fns.fn1305
                fns.cgs_44.INDEX_ODDS = { Junk = 2, Uncommon = 5, Rare = 25, Epic = 100, Legendary = 500, Mythical = 2500 }
                fns.cgs_44.INDEX_FARM_AREAS = {
                    ["Junk Yard"] = true,
                    ["Back Alley"] = true,
                    Farmyard = true,
                    Shipyard = true,
                    ["Lucky Beach"] = true,
                    ["Cargo Ship"] = true,
                    ["Power Plant"] = true,
                    ["Business Bay"] = true
                }
                fns.cgs_44.INDEX_AREA_CHOICES = {
                    "Junk Yard",
                    "Back Alley",
                    "Farmyard",
                    "Shipyard",
                    "Lucky Beach",
                    "Cargo Ship",
                    "Power Plant",
                    "Business Bay",
                    "Fish",
                    "Lost",
                    "Exclusive",
                    "Police"
                }
                fns.cgs_44.INDEX_COLLECTABLE_AREAS = { Police = true }
                fns.cgs_44.POLICE_COLLECTABLE_IDS = {}
            else
                fns.cgs_44.SeizedGarageTarget = fns.fn1486
                fns.cgs_44.PoliceHasPriority = fns.fn2139
                fns.cgs_44.TargetAreas = fns.fn928
                fns.cgs_44.LostFoundAreas = fns.fn5692
                fns.cgs_44.QuestAuctionEnabled = fns.fn1305
                fns.cgs_44.INDEX_ODDS = { Uncommon = 5, Junk = 2, Legendary = 500, Mythical = 2500, Epic = 100, Rare = 25 }
                fns.cgs_44.INDEX_FARM_AREAS = {
                    ["Cargo Ship"] = true,
                    ["Junk Yard"] = true,
                    ["Lucky Beach"] = true,
                    Shipyard = true,
                    ["Power Plant"] = true,
                    ["Business Bay"] = true,
                    Farmyard = true,
                    ["Back Alley"] = true
                }
                fns.cgs_44.INDEX_AREA_CHOICES = {
                    "Power Plant",
                    "Back Alley",
                    "Cargo Ship",
                    "Fish",
                    "Farmyard",
                    "Lost",
                    "Junk Yard",
                    "Lucky Beach",
                    "Police",
                    "Shipyard",
                    "Exclusive",
                    "Business Bay"
                }
                fns.cgs_44.INDEX_COLLECTABLE_AREAS = { Police = true }
                fns.cgs_44.POLICE_COLLECTABLE_IDS = {}
            end
            cgs_152_13 = (cgs_152_13 + 9) % 16
        end
    elseif cgs_159_25 <= 3 then
        local cgs_159_26 = {
            "rjfnk",
            "raoapxscbia",
            "flvrvhxcics",
            "glnxsmqd",
            "sdktrlvnojd",
            "fdffz",
            "tcitkcfzo",
            "ejaumfclxpoj",
            "howd",
            "prdmrillpcij",
            "gcisduai"
        }
        if cgs_159_26[(cgs_152_13 * 21 + 82) % 11 + 1] < cgs_159_26[(cgs_152_13 * 21 + 82) % 11 + 1] then
            fns.cgs_44.WalkState = fns.cgs_83
            a1w = fns.fn3418
            cgs_19_44 = fns.fn4221
            a3x = { B = 1000000000, M = 1000000, K = 1000, T = 1000000000000 }
        else
            fns.cgs_44.WalkState = cgs_19_44
            fns.cgs_83 = fns.fn3418
            a3x = fns.fn4221
            a1w = { K = 1000, M = 1000000, B = 1000000000, T = 1000000000000 }
        end
        cgs_152_13 = (cgs_152_13 + 13) % 16
    else
        local cuu = bit32.rrotate(bit32.bxor(bit32.lrotate(cgs_152_13, 4), string.byte(tostring(a3h))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(cuu, 475450029), 30), 1192604331) == bit32.lrotate(cuu, 30) then
            a3h = fns.fn1927
            fns.cgs_63 = fns.fn2837
            a2h = fns.fn4039
            fns.a1X = fns.fn656
            fns.cgs_1 = fns.fn943
        else
            a2h = fns.fn1927
            fns.a1X = fns.fn2837
            fns.cgs_63 = fns.fn4039
            fns.cgs_1 = fns.fn656
            a3h = fns.fn943
        end
        cgs_152_13 = (cgs_152_13 + 9) % 16
    end
until (cgs_152_13 * 7 + 8) % 16 == 13
for k, v in pairs(Items) do
    local cgs_19_45 = type(v) == "table" and v.EventExclusive == "Police"
    if cgs_19_45 then
        local cgs_19_46 = fns.cgs_44.POLICE_COLLECTABLE_IDS
        local cgs_159_27 = #fns.cgs_44.POLICE_COLLECTABLE_IDS + 1
        local cgs_152_14 = (tonumber(k)) or k
        cgs_19_46[cgs_159_27] = cgs_152_14
    end
end
table.sort(fns.cgs_44.POLICE_COLLECTABLE_IDS, function(lB, lC)
    return tostring(lB) < tostring(lC)
end)
fns.cgs_44.Index = {
    catalog = nil,
    discovered = nil,
    total = 0,
    have = 0,
    targets = {},
    wantedNames = {},
    skipped = 0,
    untargetable = 0,
    refreshedAt = 0
}
fns.cgs_44.IndexArea = function()
    local IndexArea = fns.Options.IndexArea
    local bdn = IndexArea and IndexArea.Value
    local bdn_1 = type(bdn) == "string" and bdn
    return bdn_1 or "Junk Yard"
end
fns.cgs_44.IndexOdds = function(lH)
    return lH and lH.Rarity and fns.cgs_44.INDEX_ODDS[lH.Rarity] or nil
end
fns.cgs_44.IndexRecompute = function()
    local Index = fns.cgs_44.Index
    table.clear(Index.targets)
    table.clear(Index.wantedNames)
    Index.total = 0
    Index.have = 0
    Index.skipped = 0
    Index.untargetable = 0
    local bdw = Index.catalog and Index.catalog[fns.cgs_44.IndexArea()]
    local bdw_1 = type(bdw) ~= "table" or type(Index.discovered) ~= "table"
    if bdw_1 then
        return
    end
    local bdw_2 = fns.Options.IndexSkipOdds and fns.Options.IndexSkipOdds.Value
    local bdy = a3G(bdw_2, 0)
    local bdw_3 = fns.cgs_44.INDEX_COLLECTABLE_AREAS[fns.cgs_44.IndexArea()] == true
    for i, v in ipairs(bdw) do
        Index.total = Index.total + 1
        if Index.discovered[tostring(v)] then
            Index.have = Index.have + 1
        else
            local bdx_1 = fns.cgs_101(v)
            local bdz = not bdx_1 or not bdx_1.Name or bdx_1.NoRoll == true or bdx_1.Limited == true
            if not bdz then
                bdz = bdx_1.EventExclusive ~= nil and not bdw_3
            end
            if bdz then
                Index.untargetable = Index.untargetable + 1
            else
                local bdz_1 = fns.cgs_44.IndexOdds(bdx_1)
                if bdy > 0 and bdz_1 and bdz_1 > bdy then
                    Index.skipped = Index.skipped + 1
                else
                    Index.targets[#Index.targets + 1] = bdx_1
                    Index.wantedNames[bdx_1.Name] = true
                end
            end
        end
    end
    table.sort(Index.targets, function(l0, l1)
        return (l0.BasePrice or 0) > (l1.BasePrice or 0)
    end)
end
fns.cgs_44.IndexRefresh = function()
    local bdM_1
    local bdL_1
    local bdK_1
    local Index = fns.cgs_44.Index
    bdK_1, bdL_1, bdM_1 = pcall(function()
        local Collections = fns.a2X.Events:FindFirstChild("Collections")
        return Collections.GetCollectionState:InvokeServer(), Collections.GetDiscoveredItems:InvokeServer()
    end)
    local bdN = not bdK_1 or type(bdL_1) ~= "table"
    local bdR = if bdN then 1 else 0
    local bdP = 2320 * bdR + 1268 * (1 - bdR)
    local bdQ = 1412 * bdR + 4063 * (1 - bdR)
    if not ((bdP * 3110 + bdQ * 2642 + bdP * bdQ) % 16777213 == 14221544) then
        bdN = type(bdL_1.areaCatalog) ~= "table"
    end
    if not bdN then
        bdN = type(bdM_1) ~= "table"
    end
    if bdN then
        return false
    end
    Index.catalog = bdL_1.areaCatalog
    local bdK_2 = type(Index.catalog) == "table" and not Index.catalog.Police
    if bdK_2 then
        Index.catalog.Police = fns.cgs_44.POLICE_COLLECTABLE_IDS
    end
    Index.discovered = bdM_1
    Index.refreshedAt = tick()
    fns.cgs_44.IndexRecompute()
    return true
end
fns.cgs_44.IndexFarmArea = function()
    return fns.cgs_44.INDEX_FARM_AREAS[fns.cgs_44.IndexArea()] == true
end
fns.cgs_44.IndexAuctionEnabled = function()
    local bdS = fns.Toggles2.AutoIndexFarm ~= nil and fns.Toggles2.AutoIndexFarm.Value == true and fns.cgs_44.IndexFarmArea() and next(fns.cgs_44.Index.wantedNames) ~= nil
    return bdS
end
fns.cgs_44.IndexWinningsWanted = function(md)
    if not fns.cgs_44.IndexAuctionEnabled() then
        return false
    end
    local bdX = fns.cgs_101(md:GetAttribute("ItemId"))
    return bdX ~= nil and fns.cgs_44.Index.wantedNames[bdX.Name] == true
end
fns.cgs_44.DoIndexUpkeep = function()
    if tick() - fns.cgs_44.Index.refreshedAt >= 10 then
        fns.cgs_44.IndexRefresh()
    end
end
pcall(function()
    fns.cgs_44.Track(fns.a2X.Events.UI.NewDiscovery.OnClientEvent:Connect(function()
        if not fns.cgs_51.Unloaded and fns.cgs_44.Index.refreshedAt > 0 then
            task.defer(fns.cgs_44.IndexRefresh)
        end
    end))
end)
fns.cgs_44.AutoClaimWinningsEnabled = function()
    local bd2 = fns.Toggles2.AutoClaimWinnings.Value
    local bd6 = if bd2 then 1 else 0
    local bd4 = 3121 * bd6 + 999 * (1 - bd6)
    local bd5 = 1322 * bd6 + 1843 * (1 - bd6)
    if not ((bd4 * 2012 + bd5 * 3636 + bd4 * bd5) % 16777213 == 15212206) then
        bd2 = fns.cgs_44.QuestAuctionEnabled()
    end
    if not bd2 then
        bd2 = fns.cgs_44.IndexAuctionEnabled()
    end
    return bd2
end
fns.cgs_66 = function()
    local bd7 = fns.Toggles2.AutoEnterAuctions.Value
    local beb = if bd7 then 1 else 0
    local bd9 = 2070 * beb + 2477 * (1 - beb)
    local bea = 3458 * beb + 191 * (1 - beb)
    if not ((bd9 * 1083 + bea * 1606 + bd9 * bea) % 16777213 == 14953418) then
        bd7 = fns.cgs_44.QuestAuctionEnabled()
    end
    if not bd7 then
        bd7 = fns.cgs_44.IndexAuctionEnabled()
    end
    return bd7
end
fns.cgs_44.AuctionInventoryReady = function()
    if not fns.Toggles2.WaitForInventorySpace or not fns.Toggles2.WaitForInventorySpace.Value then
        return true
    end
    local bec_1 = tonumber(fns.cgs_74:GetAttribute("InventoryCount"))
    local bed = tonumber(fns.cgs_74:GetAttribute("InventoryCap"))
    if not bec_1 or not bed or bed <= 0 then
        return false
    end
    return bec_1 / bed * 100 < a3G(fns.Options.AuctionInventoryMaxPercent.Value, 80)
end
fns.cgs_44.AuctionWinDelayRemaining = function()
    local bej = not fns.Toggles2.DelayAuctionsAfterWin
    local ben = if bej then 1 else 0
    local bel = 1273 * ben + 3676 * (1 - ben)
    local bem = 3898 * ben + 2540 * (1 - ben)
    if not ((bel * 3947 + bem * 103 + bel * bem) % 16777213 == 10388179) then
        bej = not fns.Toggles2.DelayAuctionsAfterWin.Value
    end
    if not bej then
        bej = not a3w.lastWinAt
    end
    if bej then
        return 0
    end
    return math.max(0, a3G(fns.Options.AuctionWinDelay.Value, 30) - (os.clock() - a3w.lastWinAt))
end
fns.cgs_9 = { [1] = nil, [2] = 0, [3] = 0, [4] = "idle", [5] = {}, [6] = false, [7] = nil }
a1O = false
fns.cgs_44.LOST_FOUND_ERRORS = { vehicle = "no vehicle to load into", full = "vehicle is full" }
fns.cgs_44.LostFoundErrorKind = function(mL)
    if type(mL) ~= "string" then
        return nil
    end
    local beo = mL:lower()
    local bep = (beo:find("full", 1, true)) or beo:find("capacity", 1, true)
    if bep then
        return "full"
    end
    local bep_1 = (beo:find("vehicle", 1, true)) or beo:find("truck", 1, true)
    if bep_1 then
        return "vehicle"
    end
    return nil
end
a1k = false
fns.cgs_28 = function(mR, ...)
    local bew_2
    local bev_3
    local beu = a1k
    if beu then
        local bev_1 = os.clock()
        beu = bev_1 - (fns.cgs_44.BodyBusySince or 0) > 180
    end
    if beu then
        a1k = false
        warn("[Storage Hunters] body task stalled for 180s, releasing lock")
    end
    local beu_1 = a1k or fns.cgs_44.AwaitingLeaveTimer()
    if not beu_1 then
        local bev_2 = (fns.cgs_44.StopNpcWinningsPending()) and not a3w.winningsPickupActive
        beu_1 = bev_2
    end
    if beu_1 then
        return false
    end
    a1k = true
    fns.cgs_44.BodyBusySince = os.clock()
    fns.cgs_44.BodyToken = (fns.cgs_44.BodyToken or 0) + 1
    local BodyToken = fns.cgs_44.BodyToken
    bev_3, bew_2 = pcall(mR, ...)
    if BodyToken == fns.cgs_44.BodyToken then
        a1k = false
    end
    if not bev_3 then
        warn("[Storage Hunters] body task error: " .. tostring(bew_2))
    end
    return true
end
a18 = function(m2, ...)
    local beE
    beE = nil
    local beG_1
    local beF_1
    beE = table.pack(...)
    beF_1, beG_1 = pcall(function()
        return m2:InvokeServer(table.unpack(beE, 1, beE.n))
    end)
    if not beF_1 then
        return nil
    end
    return beG_1
end
a3t = function()
    return fns.Toggles2.AutoLostFound.Value or fns.Toggles2.AutoEnterAuctions.Value and fns.Toggles2.CollectLostFound.Value
end
a1l = { waiting = true, driving = true, collecting = true }
a24 = function()
    local beQ = if not a3t() then 1 else 0
    if beQ == 1 then
        return false
    elseif fns.cgs_9[6] then
        return true
    else
        local beL = fns.cgs_9[2] > 0 and a1l[fns.cgs_9[4]] == true
        if beL then
            local beM = fns.cgs_44.TruckUnloadPending and fns.cgs_44.TruckUnloadPending()
            beL = not beM
        end
        return beL
    end
end
fns.cgs_44.VehicleSeat = function(nm)
    local DriveSeat = nm:FindFirstChild("DriveSeat", true)
    local beS = DriveSeat and DriveSeat:IsA("BasePart")
    if beS then
        return DriveSeat
    end
    for i, descendant in ipairs(nm:GetDescendants()) do
        if descendant:IsA("VehicleSeat") then
            return descendant
        end
    end
    return nil
end
fns.cgs_77 = function(ns)
    local be_ = fns.cgs_44.SelectedVehicleGuid and fns.cgs_44.SelectedVehicleGuid()
    local be__3
    local be0 = be_
    local be__1 = be0 == ""
    local be1 = type(be0) ~= "string" or be__1
    local be1_2
    if be1 then
        be0 = fns.cgs_44.EquippedVehicleGuid
    end
    local be__2 = be0 == ""
    local be1_1 = type(be0) ~= "string" or be__2
    if be1_1 then
        be0 = fns.cgs_44.LastVehicleGuid
    end
    be__3, be1_2 = nil, nil
    for i, child in ipairs(workspace:GetChildren()) do
        local attr2 = child:GetAttribute("VehicleGUID")
        local be3_1 = attr2 ~= nil and child:IsA("Model") and child:GetAttribute("OwnerUserId") == fns.cgs_74.UserId
        if be3_1 then
            local attr = child:GetAttribute("CargoWeightLimit")
            local be4 = not ns
            if not be4 then
                local be5_1 = type(attr) == "number" and attr > 0
                be4 = be5_1
            end
            if be4 then
                local be3_3 = fns.cgs_44.VehicleSeat(child)
                if be3_3 and (not be__3 or attr2 == be0) then
                    be__3, be1_2 = child, be3_3
                    if attr2 == be0 then
                        break
                    end
                end
            end
        end
    end
    if not be__3 then
        return nil
    end
    local attr = be__3:GetAttribute("VehicleGUID")
    local be2_2 = attr ~= ""
    local be3_4 = type(attr) == "string" and be2_2
    if be3_4 then
        fns.cgs_44.LastVehicleGuid = attr
    end
    return be__3, be1_2
end
a2L = function(nK)
    local bfd_1
    if nK == "Cargo Ship" then
        bfd_1 = workspace:FindFirstChild("CargoShip")
    else
        local Areas = workspace:FindFirstChild("Areas")
        local bff = Areas and Areas:FindFirstChild(nK)
        bfd_1 = bff
    end
    local bfe_2 = bfd_1 and bfd_1:FindFirstChild("Lost and Found Box")
    return bfe_2
end
a2g = function(nQ, nR, nS, nT, nU)
    local bfv
    local bfw
    local bfy
    local bfz
    local bfA
    local bfV_2
    local bfU_2
    local bfR_3
    local bfF_1, bfF_6
    local bfE_3, bfE_7
    local function bfx(nW, nX)
        local bfh = nW ~= nil and nX ~= nil and nW.Parent ~= nil and nX.Parent ~= nil and nX:IsDescendantOf(nW)
        return bfh
    end
    bfw, bfy = fns.cgs_77(nT)
    local bfB = bfw ~= nS
    local bfB_18
    local bfC = nS and bfB
    local bfC_11
    if bfC then
        bfw = nS.Parent and nS or nil
        local bfB_2 = bfw and fns.cgs_44.VehicleSeat(bfw)
        bfy = bfB_2 or nil
    end
    if not bfw or not bfy then
        if fns.cgs_44.OwnedVehicleModel() then
            local bfM = 1
            while bfM <= 20 do
                task.wait(0.25)
                bfw, bfy = fns.cgs_77(nT)
                if bfw then
                    break
                end
                bfM += 1
            end
        end
        local bfB_4 = not bfw and fns.cgs_44.SpawnAnyVehicle and fns.cgs_44.SpawnAnyVehicle()
        if bfB_4 then
            local bfR_1 = 1
            while bfR_1 <= 24 do
                task.wait(0.25)
                bfw, bfy = fns.cgs_77(nT)
                if bfw then
                    break
                end
                bfR_1 += 1
            end
        end
        if not bfw or not bfy then
            return false
        end
        local Character = fns.cgs_74.Character
        local bfC_5 = Character and Character:FindFirstChildOfClass("Humanoid")
        bfz = bfC_5
        local bfC_6 = fns.cgs_69()
        if not bfz or not bfC_6 then
            return false
        end
        local function bfD_2()
            local bfn = if not bfx(bfw, bfy) then 1 else 0
            if bfn == 1 then
                return false
            end
            local bfj = bfy.Position - nQ
            return bfj.X * bfj.X + bfj.Z * bfj.Z <= 196
        end
        local bfE_2 = bfz.SeatPart == bfy and bfD_2()
        if bfE_2 then
            return true
        end
        while bfR_3 <= 3 do
            if bfz.SeatPart == bfy then
                break
            end
            if not bfx(bfw, bfy) then
                return false
            end
            bfC_6.CFrame = bfy.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.35)
            pcall(function()
                bfy:Sit(bfz)
            end)
            task.wait(0.65)
        end
        local bfC_7 = bfz.SeatPart ~= bfy or not bfx(bfw, bfy)
        if bfC_11 then
            return false
        end
        local pivot = bfw:GetPivot()
        bfE_3, bfF_1 = bfw:GetBoundingBox()
        local bfG_1 = bfE_3.Position.Y - bfF_1.Y * 0.5
        local bfE_4 = math.max(0.5, pivot.Position.Y - bfG_1)
        local bfH_1 = math.max(0.5, bfy.Position.Y - bfG_1)
        local bfI_1 = (nR or nU) and 0
        local bfG_3 = bfI_1 or math.clamp(math.max(bfF_1.X, bfF_1.Z) * 0.12 + 10, 12, 32)
        local bfG_4 = nQ + Vector3.new(0, 0, bfG_3)
        local bfF_3 = RaycastParams.new()
        bfF_3.FilterType = Enum.RaycastFilterType.Exclude
        bfF_3.FilterDescendantsInstances = { bfw, Character }
        bfF_3.RespectCanCollide = true
        local bfB_7 = workspace:Raycast(bfG_4 + Vector3.new(0, 100, 0), Vector3.new(0, -300, 0), bfF_3)
        local bfB_8 = bfB_7 and bfB_7.Position.Y
        if not ((bfU_2 * 1506 + bfV_2 * 1070 + bfU_2 * bfV_2) % 16777213 == 595200) then
            bfB_8 = nQ.Y
        end
        local bfF_5 = bfB_8
        bfA = nil
        if nR then
            local bfB_9 = Vector3.new(nQ.X, bfF_5 + bfH_1 + 1.25, nQ.Z)
            bfA = pivot + (bfB_9 - bfy.Position)
        else
            local bfB_10 = Vector3.new(bfG_4.X, bfF_5 + bfE_4 + 1.5, bfG_4.Z)
            bfA = CFrame.new(bfB_10) * pivot.Rotation
        end
        bfv = bfy.Anchored
        pcall(function()
            bfy.Anchored = true
            for i, v in ipairs(bfw:QueryDescendants("BasePart")) do
                v.AssemblyLinearVelocity = Vector3.zero
                v.AssemblyAngularVelocity = Vector3.zero
            end
            bfw:PivotTo(bfA)
        end)
        task.wait(0.2)
        pcall(function()
            bfy.Anchored = bfv
            bfy.AssemblyLinearVelocity = Vector3.zero
            bfy.AssemblyAngularVelocity = Vector3.zero
        end)
        if not bfB_18 then
            return false
        end
        task.wait(0.6)
        if not bfx(bfw, bfy) then
            return false
        elseif not nR then
            bfz.Sit = false
            bfz:ChangeState(Enum.HumanoidStateType.Jumping)
            fns.cgs_65(nQ)
            task.wait(0.15)
            return (bfw:GetPivot().Position - nQ).Magnitude <= 60
        else
            local bfB_12 = bfz.SeatPart == bfy and bfD_2()
            return bfB_12
        end
    else
        local Character = fns.cgs_74.Character
        local bfC_9 = Character and Character:FindFirstChildOfClass("Humanoid")
        bfz = bfC_9
        local bfC_10 = fns.cgs_69()
        if not bfz or not bfC_10 then
            return false
        end
        local function bfD_4()
            local bfn = if not bfx(bfw, bfy) then 1 else 0
            if bfn == 1 then
                return false
            end
            local bfj = bfy.Position - nQ
            return bfj.X * bfj.X + bfj.Z * bfj.Z <= 196
        end
        local bfE_6 = bfz.SeatPart == bfy and bfD_4()
        if bfE_6 then
            return true
        end
        bfR_3 = 1
        while bfR_3 <= 3 do
            if bfz.SeatPart == bfy then
                break
            end
            if not bfx(bfw, bfy) then
                return false
            end
            bfC_10.CFrame = bfy.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.35)
            pcall(function()
                bfy:Sit(bfz)
            end)
            task.wait(0.65)
            bfR_3 += 1
        end
        bfC_11 = bfz.SeatPart ~= bfy or not bfx(bfw, bfy)
        if bfC_11 then
            return false
        end
        local pivot = bfw:GetPivot()
        bfE_7, bfF_6 = bfw:GetBoundingBox()
        local bfG_5 = bfE_7.Position.Y - bfF_6.Y * 0.5
        local bfE_8 = math.max(0.5, pivot.Position.Y - bfG_5)
        local bfH_2 = math.max(0.5, bfy.Position.Y - bfG_5)
        local bfI_2 = (nR or nU) and 0
        local bfG_7 = bfI_2 or math.clamp(math.max(bfF_6.X, bfF_6.Z) * 0.12 + 10, 12, 32)
        local bfG_8 = nQ + Vector3.new(0, 0, bfG_7)
        local bfF_8 = RaycastParams.new()
        bfF_8.FilterType = Enum.RaycastFilterType.Exclude
        bfF_8.FilterDescendantsInstances = { bfw, Character }
        bfF_8.RespectCanCollide = true
        local bfB_14 = workspace:Raycast(bfG_8 + Vector3.new(0, 100, 0), Vector3.new(0, -300, 0), bfF_8)
        local bfB_15 = bfB_14 and bfB_14.Position.Y
        local bfW_2 = if bfB_15 then 1 else 0
        bfU_2 = 126 * bfW_2 + 1538 * (1 - bfW_2)
        bfV_2 = 339 * bfW_2 + 4009 * (1 - bfW_2)
        if not ((bfU_2 * 1506 + bfV_2 * 1070 + bfU_2 * bfV_2) % 16777213 == 595200) then
            bfB_15 = nQ.Y
        end
        local bfF_10 = bfB_15
        bfA = nil
        if nR then
            local bfB_16 = Vector3.new(nQ.X, bfF_10 + bfH_2 + 1.25, nQ.Z)
            bfA = pivot + (bfB_16 - bfy.Position)
        else
            local bfB_17 = Vector3.new(bfG_8.X, bfF_10 + bfE_8 + 1.5, bfG_8.Z)
            bfA = CFrame.new(bfB_17) * pivot.Rotation
        end
        bfv = bfy.Anchored
        bfB_18 = pcall(function()
            bfy.Anchored = true
            for i, v in ipairs(bfw:QueryDescendants("BasePart")) do
                v.AssemblyLinearVelocity = Vector3.zero
                v.AssemblyAngularVelocity = Vector3.zero
            end
            bfw:PivotTo(bfA)
        end)
        task.wait(0.2)
        pcall(function()
            bfy.Anchored = bfv
            bfy.AssemblyLinearVelocity = Vector3.zero
            bfy.AssemblyAngularVelocity = Vector3.zero
        end)
        if not bfB_18 then
            return false
        end
        task.wait(0.6)
        if not bfx(bfw, bfy) then
            return false
        elseif not nR then
            bfz.Sit = false
            bfz:ChangeState(Enum.HumanoidStateType.Jumping)
            fns.cgs_65(nQ)
            task.wait(0.15)
            return (bfw:GetPivot().Position - nQ).Magnitude <= 60
        else
            local bfB_19 = bfz.SeatPart == bfy and bfD_4()
            return bfB_19
        end
    end
end
a26 = function(oW)
    local bf__1
    local bfZ_1
    bfZ_1, bf__1 = pcall(function()
        return fns.cgs_44.GetLostItems:InvokeServer(oW)
    end)
    local bf0 = not bfZ_1 or type(bf__1) ~= "table" or type(bf__1.items) ~= "table"
    if bf0 then
        return nil
    end
    local bfZ_2 = 0
    for k in pairs(bf__1.items) do
        bfZ_2 += 1
    end
    return bfZ_2, bf__1.items, bf__1.stillInAuction == true
end
a2v = function(o5, o6)
    local bf6 = o6 or type(o5) ~= "table"
    if bf6 then
        return true
    end
    local bf6_1 = a3G(fns.Options.LostFoundMinValue.Value, 0)
    local Value = fns.Options.LostFoundMinRarity.Value
    local bf8 = (fns.cgs_49(fns.cgs_101(o5.ItemId), Value, 0))
    if bf8 then
        local bf7_1 = bf6_1 <= 0 or a3V(o5) >= bf6_1
        bf8 = bf7_1
    end
    return bf8
end
fns.cgs_75 = function(pj, pk)
    local bgh = {}
    for k, v in pairs(pj) do
        if a2v(v, pk) then
            bgh[#bgh + 1] = { Guid = k, Entry = v }
        end
    end
    table.sort(bgh, function(pq, pr)
        local bgd = type(pq.Entry) == "table" and a3V(pq.Entry)
        local bge = bgd or 0
        local bge_1 = type(pr.Entry) == "table" and a3V(pr.Entry)
        return bge > (bge_1 or 0)
    end)
    return bgh
end
fns.cgs_44.LostFoundTotalPending = function()
    local bgp = 0
    for k, v in pairs(fns.cgs_9[5]) do
        bgp += v
    end
    return bgp
end
fns.cgs_16 = function(pD, pE)
    local bgz_1
    local bgy_1
    if fns.cgs_9[6] then
        return
    end
    if pE == nil then
        pE = fns.Toggles2.AutoEnterAuctions.Value and fns.Toggles2.CollectLostFound.Value
    end
    local bgx_2 = false
    for k in pairs(pD) do
        bgy_1, bgz_1 = a26(k)
        if bgy_1 and bgz_1 then
            bgx_2 = true
            fns.cgs_9[5][k] = #fns.cgs_75(bgz_1, pE)
        end
    end
    if not bgx_2 then
        return
    end
    for k in pairs(fns.cgs_9[5]) do
        if not pD[k] then
            fns.cgs_9[5][k] = nil
        end
    end
    local bgx_3 = {}
    for k in pairs(fns.cgs_9[5]) do
        bgx_3[#bgx_3 + 1] = k
    end
    table.sort(bgx_3)
    local bgy_2 = fns.cgs_44.LostFoundTotalPending()
    local bgz_2 = #bgx_3 > 0 and table.concat(bgx_3, ", ")
    local bgx_4 = bgz_2
    local bgO = if bgx_4 then 1 else 0
    local bgM = 1928 * bgO + 2900 * (1 - bgO)
    local bgN = 2191 * bgO + 2828 * (1 - bgO)
    if not ((bgM * 1194 + bgN * 4086 + bgM * bgN) % 16777213 == 15478706) then
        bgx_4 = nil
    end
    fns.cgs_9[1] = bgx_4
    fns.cgs_9[2] = bgy_2
    local bgx_5 = fns.cgs_9[7] == "vehicle" and fns.cgs_77(true) ~= nil
    if bgx_5 then
        fns.cgs_9[7] = nil
    end
    if fns.cgs_9[7] == nil then
        fns.cgs_9[4] = bgy_2 > 0 and "waiting" or "empty"
    end
end
a3R = function(pX, pY)
    local bgS_1, bgS_2
    local bgQ_1, bgQ_3, bgQ_5
    local bgP = fns.cgs_44.TruckUnloadPending and fns.cgs_44.TruckUnloadPending()
    local bgP_1
    if bgP then
        fns.cgs_9[4] = "waiting for truck unload"
        return
    end
    bgQ_1, bgP_1 = a26(pX)
    if not bgQ_1 then
        fns.cgs_9[4] = "could not read Lost & Found"
        return
    end
    fns.cgs_9[1] = pX
    local bgR = fns.cgs_75(bgP_1, pY)
    fns.cgs_9[5][pX] = #bgR
    fns.cgs_9[2] = fns.cgs_44.LostFoundTotalPending()
    if #bgR == 0 then
        fns.cgs_9[4] = bgQ_1 > 0 and "no matching items" or "empty"
        return
    end
    local bgP_3 = a2L(pX)
    if not bgP_3 then
        fns.cgs_9[4] = "waiting for " .. pX .. " to load"
        return
    end
    fns.cgs_9[4] = "driving"
    if not a2g(bgP_3:GetPivot().Position, false, nil, true) then
        fns.cgs_9[7] = "vehicle"
        fns.cgs_9[4] = fns.cgs_44.LOST_FOUND_ERRORS.vehicle
        if not a1O then
            a1O = true
            fns.cgs_51:Notify("Lost & Found needs one of your cargo vehicles spawned to load items into")
        end
        return
    end
    a1O = false
    fns.cgs_9[7] = nil
    fns.cgs_9[4] = "collecting"
    local bgP_4 = 0
    for i, v in ipairs(bgR) do
        local bg_ = v
        if fns.cgs_51.Unloaded then
            break
        end
        bgQ_3, bgS_1 = pcall(function()
            return fns.cgs_44.ClaimLostItem:InvokeServer(pX, bg_.Guid)
        end)
        if not bgQ_3 then
            fns.cgs_9[4] = "claim request failed"
            break
        elseif type(bgS_1) ~= "table" then
            fns.cgs_9[4] = "unexpected claim response"
            break
        elseif bgS_1.success then
            bgP_4 += 1
            local cq1 = fns.cgs_9
            cq1[3] = cq1[3] + 1
            task.wait(0.15)
        else
            fns.cgs_9[7] = fns.cgs_44.LostFoundErrorKind(bgS_1.error)
            local bgQ_4 = fns.cgs_44.LOST_FOUND_ERRORS[bgS_1.error] or tostring(bgS_1.error)
            fns.cgs_9[4] = bgQ_4
            break
        end
    end
    bgQ_5, bgS_2 = a26(pX)
    if bgQ_5 and bgS_2 then
        fns.cgs_9[5][pX] = #fns.cgs_75(bgS_2, pY)
    else
        fns.cgs_9[5][pX] = math.max(0, #bgR - bgP_4)
    end
    fns.cgs_9[2] = fns.cgs_44.LostFoundTotalPending()
    if fns.cgs_9[4] == "collecting" then
        fns.cgs_9[4] = fns.cgs_9[5][pX] > 0 and "waiting" or "collected"
    end
    if fns.cgs_44.UnseatForPickup then
        fns.cgs_44.UnseatForPickup()
    end
end
a3J = function(qg, qh)
    if fns.cgs_9[6] then
        return false
    end
    fns.cgs_9[6] = true
    local bg3 = fns.cgs_28(a3R, qg, qh)
    fns.cgs_9[6] = false
    return bg3
end
a3i = { [1] = nil, [2] = "idle" }
fns.a1y = { [1] = 0, [2] = 0, [3] = 0, [4] = "idle" }
fns.cgs_60 = setmetatable({}, { __mode = "k" })
a1h = 90
fns.cgs_53 = 3
fns.a29 = 6
fns.cgs_105 = function(qt)
    local bg5 = fns.cgs_60[qt]
    local bg6 = bg5 ~= nil and os.clock() < bg5.retryAt
    return bg6
end
a2I = function(qy)
    local bg8 = fns.cgs_60[qy]
    if not bg8 then
        bg8 = { attempts = 0, retryAt = 0 }
        fns.cgs_60[qy] = bg8
    end
    bg8.attempts = bg8.attempts + 1
    if bg8.attempts >= fns.cgs_53 then
        bg8.attempts = 0
        bg8.retryAt = os.clock() + a1h
        return true
    end
    bg8.retryAt = os.clock() + fns.a29
    return false
end
fns.a3L = function()
    return workspace:FindFirstChild("_Carryables")
end
fns.cgs_90 = function(qG)
    local OpenBoxPrompt = qG:FindFirstChild("OpenBoxPrompt", true)
    if OpenBoxPrompt then
        return OpenBoxPrompt, true
    end
    return qG:FindFirstChild("PickupPrompt", true), false
end
fns.a3y = function(qJ)
    local bhe_1, bhe_2
    local bhc = select(1, fns.cgs_90(qJ))
    local bhc_2, bhc_4, bhc_5
    local bhd = bhc and bhc.Parent
    local bhd_1, bhd_2
    if bhd then
        if bhd:IsA("BasePart") then
            return bhd.Position
        end
        local bhj = if bhd:IsA("Attachment") then 1 else 0
        if bhj == 1 then
            return bhd.WorldPosition
        end
        bhc_2, bhe_1, bhd_1 = pcall(qJ.GetBoundingBox, qJ)
        if bhc_5 then
            return (bhe_1 * CFrame.new(0, -bhd_1.Y / 2, 0)).Position
        end
        return qJ:GetPivot().Position
    end
    bhc_4, bhe_2, bhd_2 = pcall(qJ.GetBoundingBox, qJ)
    bhc_5 = bhc_4 and bhe_2 and bhd_2
    if bhc_5 then
        return (bhe_2 * CFrame.new(0, -bhd_2.Y / 2, 0)).Position
    end
    return qJ:GetPivot().Position
end
fns.cgs_44.InstantCollect = function()
    return fns.Toggles2.InstantCollect ~= nil and fns.Toggles2.InstantCollect.Value == true
end
fns.cgs_73 = function()
    local bho
    local bhn
    bhn = nil
    bho = nil
    local Character = fns.cgs_74.Character
    local bhp_4
    local bhq = Character and Character:FindFirstChildOfClass("Humanoid")
    bho = bhq
    if not bho then
        return false, nil
    end
    local SeatPart = bho.SeatPart
    if not SeatPart then
        return true, nil
    end
    bhn = true
    pcall(function()
        bhn = bho:GetStateEnabled(Enum.HumanoidStateType.Seated)
        bho:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    end)
    bho.Sit = false
    bho.Jump = true
    bho:ChangeState(Enum.HumanoidStateType.GettingUp)
    local bhw = 1
    while bhw <= 20 do
        task.wait(0.05)
        if not bho.SeatPart then
            break
        end
        bho.Sit = false
        bhw += 1
    end
    local bhr = bho.SeatPart == nil
    if bhr then
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        local bhp_1 = HumanoidRootPart and SeatPart and SeatPart:IsA("BasePart")
        if bhp_1 then
            local bhp_2 = HumanoidRootPart.Position - SeatPart.Position
            local bhp_3 = Vector3.new(bhp_2.X, 0, bhp_2.Z)
            if bhp_3.Magnitude < 0.1 then
                bhp_4 = SeatPart.CFrame.RightVector
            else
                bhp_4 = bhp_3.Unit
            end
            HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + (bhp_4 * 6 + Vector3.new(0, 4, 0))
        end
    end
    task.delay(0.75, function()
        if bho.Parent then
            pcall(function()
                bho:SetStateEnabled(Enum.HumanoidStateType.Seated, bhn)
            end)
        end
    end)
    return bhr, SeatPart
end
fns.cgs_44.UnseatForPickup = fns.cgs_73
fns.cgs_44.WinningsTarget = function(ra)
    local attr2 = ra:GetAttribute("Owner")
    local attr = ra:GetAttribute("ItemsWonGUID")
    local bhB = attr2 == fns.cgs_74.UserId and type(attr) == "string"
    return bhB and attr ~= ""
end
fns.cgs_44.PositionArea = function(rf)
    local Areas = workspace:FindFirstChild("Areas")
    if not Areas then
        return nil
    end
    for i, child in ipairs(Areas:GetChildren()) do
        local AreaBoundary = child:FindFirstChild("AreaBoundary")
        local bhF = AreaBoundary and AreaBoundary:IsA("BasePart") and AreaBoundary.Size.X > 4
        if bhF then
            local bhF_1 = rf - AreaBoundary.Position
            local bhG = math.abs(bhF_1.X) <= AreaBoundary.Size.X / 2 and math.abs(bhF_1.Z) <= AreaBoundary.Size.Z / 2
            if bhG then
                return child.Name
            end
        end
    end
    return nil
end
fns.cgs_27 = function(ro)
    local bhU_1
    local bhT_1
    local bhS_1
    local bhR = a3x()
    if not bhR then
        return nil
    end
    bhU_1, bhT_1, bhS_1 = nil, nil, nil
    for i, child in ipairs(bhR:GetChildren()) do
        local AuctionZone = child:FindFirstChild("AuctionZone")
        local bhV = AuctionZone and AuctionZone:IsA("BasePart")
        if bhV then
            local Magnitude = (AuctionZone.Position - ro).Magnitude
            if not bhS_1 or Magnitude < bhS_1 then
                bhU_1, bhT_1, bhS_1 = AuctionZone, child, Magnitude
            end
        end
    end
    if not bhU_1 or bhS_1 > 200 then
        return nil
    end
    local bhR_3 = bhU_1.Position - bhT_1:GetPivot().Position
    local bhR_4 = Vector3.new(bhR_3.X, 0, bhR_3.Z)
    if bhR_4.Magnitude < 1 then
        local LookVector = bhU_1.CFrame.LookVector
        bhR_4 = Vector3.new(LookVector.X, 0, LookVector.Z)
    end
    if bhR_4.Magnitude < 1 then
        return nil
    end
    return bhU_1.Position + bhR_4.Unit * 8
end
a23 = function(rE, rF)
    local bh6 = fns.cgs_77()
    local bh7 = bh6 and (bh6:GetPivot().Position - rE).Magnitude <= 60
    if bh7 then
        return true
    end
    local bh6_1 = fns.cgs_69()
    local bh7_1 = bh6_1 and bh6_1.CFrame
    local bh7_2 = rF ~= false and fns.cgs_27(rE)
    local bh8 = bh7_2 or nil
    local bh7_3 = bh8
    if not bh8 then
        bh8 = rE
    end
    if a2g(bh8, false, nil, false, bh7_3 ~= nil) then
        return true
    end
    local bh7_4 = bh7_1 and fns.cgs_69()
    if bh7_4 then
        fns.cgs_69().CFrame = bh7_1
    end
    return false
end
fns.cgs_2 = function(rT)
    if not fns.cgs_44.WinningsTarget(rT) then
        return false
    elseif fns.cgs_44.QuestAuctionEnabled() then
        local big_1 = fns.cgs_44.QuestAuctionTargets and fns.cgs_44.QuestAuctionTargets()
        if big_1 then
            local big_2 = fns.cgs_101(rT:GetAttribute("ItemId"))
            local bii = big_2 ~= nil and big_1[big_2.Name] == true and fns.cgs_44.PowerPlantMutationAllowed(fns.cgs_81(rT))
            return bii
        end
        local big_3 = fns.cgs_44.QuestPowerPlantActive and fns.cgs_44.QuestPowerPlantActive()
        if big_3 then
            return false
        end
        return true
    elseif fns.cgs_44.IndexWinningsWanted(rT) then
        return true
    else
        local big_4 = fns.cgs_44.BypassWinningsWanted and fns.cgs_44.BypassWinningsWanted(rT)
        if big_4 then
            return true
        end
        return a3f(rT, fns.Options.WinningsRarity.Value, a3G(fns.Options.MinWinningsValue.Value, 0), a3G(fns.Options.MinWinningsCondition.Value, 0))
    end
end
a2R = function()
    local bin = fns.a3L()
    if not bin then
        return {}
    end
    local bio = {}
    for i, child in ipairs(bin:GetChildren()) do
        local bin_1 = (fns.cgs_2(child)) and not fns.cgs_105(child)
        if bin_1 then
            bio[#bio + 1] = child
        end
    end
    return bio
end
fns.cgs_98 = 8
a13 = nil
a3F = function()
    local biw = fns.cgs_51.Unloaded
    local biB = if biw then 1 else 0
    local biz = 1047 * biB + 3915 * (1 - biB)
    local biA = 4095 * biB + 2321 * (1 - biB)
    if not ((biz * 635 + biA * 3092 + biz * biA) % 16777213 == 836837) then
        biw = not fns.cgs_44.AutoClaimWinningsEnabled()
    end
    if biw then
        return true
    end
    local biw_1 = a3w.active or fns.cgs_74:GetAttribute("InAuction") == true
    if biw_1 and not a3w.winningsPickupActive then
        fns.a1y[4] = "claim paused for active auction"
        return true
    elseif fns.cgs_44.TruckOverweight() then
        fns.a1y[4] = "truck full, unloading before more pickups"
        return true
    else
        return false
    end
end
fns.a1m = function(sq, sr)
    local biC = fns.a3y(sr)
    local biD = {}
    local biJ = #sq
    local biI = -1
    while false and biJ <= 1 or true and biJ >= 1 do
        local biK = biJ
        local biE_1 = sq[biK]
        if (fns.a3y(biE_1) - biC).Magnitude <= fns.cgs_98 then
            table.insert(biD, biE_1)
            table.remove(sq, biK)
        end
        biJ += biI
    end
    return biD, biC
end
fns.cgs_85 = function(sz, sA, sB)
    local biM = fns.cgs_73()
    if not biM then
        fns.a1y[4] = "leaving vehicle for winnings pickup"
        return false
    end
    fns.cgs_65(sA + Vector3.new(0, 0, 3))
    local wait = task.wait
    local biN = (fns.cgs_44.InstantCollect()) and 0.03
    local biO = biN or 0.1
    wait(biO)
    local biM_2 = fns.cgs_74.Character and fns.cgs_74.Character:FindFirstChildOfClass("Humanoid")
    local biN_1 = biM_2
    if biM_2 then
        biM_2 = biN_1.SeatPart
    end
    if biM_2 then
        fns.a1y[4] = "vehicle re-seated player; retrying winnings pickup"
        return false
    end
    local biS = 1
    while true do
        if not (biS <= 2) then
            return false
        end
        local biT = biS
        local biM_3 = 0
        for i, v in ipairs(sz) do
            if biT == 1 and not sB and a13 then
                a13(v)
            end
            local biN_4 = v.Parent and select(1, fns.cgs_90(v))
            local biO_2 = biN_4
            if biN_4 then
                biN_4 = biO_2.Enabled
            end
            if biN_4 then
                pcall(fireproximityprompt, biO_2, biO_2.HoldDuration)
                biM_3 += 1
            end
        end
        if biM_3 == 0 then
            return false
        end
        biM_2 = 0
        local bi2 = 1
        while bi2 <= 8 do
            task.wait(0.05)
            biM_2 = 0
            for i, v in ipairs(sz) do
                if v.Parent then
                    biM_2 += 1
                end
            end
            if biM_2 == 0 then
                break
            end
            bi2 += 1
        end
        if biM_2 == 0 or biT == 2 then
            break
        end
        fns.cgs_65(sA + Vector3.new(0, 0, 3))
        biS += 1
    end
    return biM_2 == 0
end
a35 = function()
    local bje_1
    local bjd_1
    local bjb = a2R()
    if #bjb == 0 then
        fns.a1y[4] = "idle"
        return
    end
    table.sort(bjb, function(s_, s0)
        return a3V(fns.cgs_81(s_)) > a3V(fns.cgs_81(s0))
    end)
    while true do
        if #bjb > 0 then
            if a3F() then
                return
            end
            local bjc = table.remove(bjb, 1)
            bje_1, bjd_1 = fns.a1m(bjb, bjc)
            table.insert(bje_1, 1, bjc)
            if not a23(bjd_1) then
                break
            end
            local bjc_1 = #bje_1
            fns.a1y[4] = ("claiming %d auction winnings"):format(bjc_1)
            local bjc_2 = {}
            for i, v in ipairs(bje_1) do
                bjc_2[v] = fns.cgs_81(v)
            end
            fns.cgs_85(bje_1, bjd_1)
            for i, v in ipairs(bje_1) do
                if v.Parent then
                    if a2I(v) then
                        fns.a1y[4] = "skipping winnings the server keeps refusing"
                    else
                        fns.a1y[4] = "retrying auction winnings pickup"
                    end
                else
                    fns.cgs_60[v] = nil
                    if select(2, fns.cgs_90(v)) then
                        fns.a1y[2] = fns.a1y[2] + 1
                    else
                        fns.a1y[1] = fns.a1y[1] + 1
                    end
                    if fns.cgs_44.NotifyWinningClaim then
                        local bjd_2 = bjc_2[v]
                        local NotifyWinningClaim = fns.cgs_44.NotifyWinningClaim
                        local bjf = bjd_2 and fns.cgs_101(bjd_2.ItemId)
                        pcall(NotifyWinningClaim, bjd_2, bjf)
                    end
                end
            end
            continue
        end
        return
    end
    fns.a1y[4] = "no vehicle for pickup"
    return
end
fns.a3l = function()
    if a3w.active and not a3w.winningsPickupActive then
        return
    end
    local bjt_1 = (a24()) and fns.cgs_44.PendingWinnings() == 0
    if bjt_1 then
        return
    end
    fns.cgs_28(a35)
end
fns.cgs_44.PendingWinnings = function()
    return #a2R()
end
fns.cgs_44.WorldLootTargets = function(tx)
    local bjv = fns.a3L()
    if not bjv then
        return {}
    end
    local bjw = a3G(fns.Options.LootRange.Value, 80)
    local Value = fns.Options.LootRarity.Value
    local bjy = fns.Options.LootItems and fns.Options.LootItems.Value
    local bjz = fns.cgs_64(bjy)
    local bjy_1 = {}
    for i, child in ipairs(bjv:GetChildren()) do
        local attr = child:GetAttribute("Owner")
        local bjv_2 = attr == fns.cgs_74.UserId or attr == 0 or attr == -1 or attr == nil
        local bjA_1 = bjv_2 and fns.cgs_44.AutoClaimWinningsEnabled() and fns.cgs_44.WinningsTarget(child) and not fns.cgs_2(child)
        if bjA_1 then
            bjv_2 = false
        end
        local bjA_2 = bjv_2 and not fns.cgs_105(child) and (child:GetPivot().Position - tx.Position).Magnitude <= bjw
        if bjA_2 then
            local bjv_3 = fns.cgs_101(child:GetAttribute("ItemId"))
            local bjA_3 = next(bjz) == nil
            if not bjA_3 then
                bjA_3 = bjv_3 ~= nil and bjz[bjv_3.Name] == true
            end
            if bjA_3 then
                bjA_3 = a3f(child, Value, 0)
            end
            if bjA_3 then
                bjy_1[#bjy_1 + 1] = child
            end
        end
    end
    return bjy_1
end
fns.cgs_44.WorldLootBlocked = function()
    if fns.cgs_51.Unloaded or not fns.Toggles2.AutoWorldLoot.Value then
        return true
    end
    local bjS = if fns.cgs_44.TruckOverweight() then 1 else 0
    if bjS == 1 then
        fns.a1y[4] = "truck full, unloading before more pickups"
        return true
    end
    local bjN_1 = fns.cgs_44.TruckFillPercent and fns.cgs_44.TruckFillPercent()
    local bjO = bjN_1
    if bjN_1 then
        bjN_1 = bjO >= 99.9
    end
    if bjN_1 then
        fns.a1y[4] = "truck full, unload it to keep collecting"
        return true
    end
    return false
end
a2x = function()
    local Position
    local bjX_1
    local bjW_1
    local bjU = fns.cgs_69()
    if not bjU then
        return
    end
    local bjV = fns.cgs_44.WorldLootTargets(bjU)
    if #bjV == 0 then
        return
    end
    Position = bjU.Position
    table.sort(bjV, function(t7, t8)
        return (fns.a3y(t7) - Position).Magnitude < (fns.a3y(t8) - Position).Magnitude
    end)
    while #bjV > 0 do
        if fns.cgs_44.WorldLootBlocked() then
            return
        end
        local bjU_1 = table.remove(bjV, 1)
        bjX_1, bjW_1 = fns.a1m(bjV, bjU_1)
        table.insert(bjX_1, 1, bjU_1)
        if not a23(bjW_1, false) then
            fns.a1y[4] = "no vehicle for pickup"
            return
        end
        fns.a1y[4] = ("collecting %d world items"):format(#bjX_1)
        fns.cgs_85(bjX_1, bjW_1, true)
        for i, v in ipairs(bjX_1) do
            if v.Parent then
                if a2I(v) then
                    local bjU_2 = fns.cgs_101(v:GetAttribute("ItemId"))
                    local bjU_3 = bjU_2 and bjU_2.Name or v.Name
                    fns.a1y[4] = ("skipping %s, pickup kept failing"):format(bjU_3)
                end
            else
                fns.cgs_60[v] = nil
                if select(2, fns.cgs_90(v)) then
                    fns.a1y[2] = fns.a1y[2] + 1
                else
                    fns.a1y[1] = fns.a1y[1] + 1
                end
            end
        end
    end
end
a2j = function()
    local bj4 = a3w.active or a3w.winningsPickupActive
    if not bj4 then
        local bj5 = (fns.cgs_44.AutoClaimWinningsEnabled()) and fns.cgs_44.PendingWinnings() > 0
        bj4 = bj5
    end
    if not bj4 then
        bj4 = a24()
    end
    if bj4 then
        return
    end
    fns.cgs_28(a2x)
end
fns.cgs_102 = function()
    local Plots = workspace:FindFirstChild("_Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == fns.cgs_74.UserId then
            return Vector3.new(child:GetAttribute("OriginX"), child:GetAttribute("OriginY"), child:GetAttribute("OriginZ"))
        end
    end
    return nil
end
a28 = function()
    local Plots = workspace:FindFirstChild("_Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == fns.cgs_74.UserId then
            local bki_1 = tonumber(child:GetAttribute("OriginX"))
            local bkj = tonumber(child:GetAttribute("OriginY"))
            local bkk = tonumber(child:GetAttribute("OriginZ"))
            if not bki_1 or not bkj or not bkk then
                return nil
            end
            local bkl_2 = (tonumber(child:GetAttribute("RotationY"))) or 0
            local bkl_3 = CFrame.new(bki_1, bkj, bkk) * CFrame.Angles(0, math.rad(bkl_2), 0)
            return bkl_3:PointToWorldSpace(Vector3.new(0, 0, -100))
        end
    end
    return nil
end
fns.a2y = function()
    local bkv = fns.cgs_77(true)
    if not bkv then
        return nil
    end
    local attr2 = bkv:GetAttribute("CargoWeight")
    local attr = bkv:GetAttribute("CargoWeightLimit")
    if not attr2 or not attr or attr <= 0 then
        return nil
    end
    return attr2 / attr * 100, bkv
end
fns.cgs_44.TruckFillPercent = function()
    return (fns.a2y())
end
fns.cgs_44.TruckOverweight = function()
    if not fns.Toggles2.AutoUnloadTruck or not fns.Toggles2.AutoUnloadTruck.Value then
        return false
    end
    local bkA_1 = fns.cgs_44.ForceTruckUnload and os.clock() - fns.cgs_44.ForceTruckUnload < 60
    if bkA_1 then
        return true
    end
    local bkA_2 = fns.a2y()
    return bkA_2 ~= nil and bkA_2 >= 99.9
end
fns.cgs_36 = function(u4, u5)
    if u5 then
        return true
    end
    local Value = fns.Options.UnloadMethod.Value
    if Value == "Unload when Full" then
        return u4 >= 99.9
    elseif Value == "Unload every 20s" then
        local bkD_1 = os.clock()
        local bkE = fns.a1y[5]
        local bkI = if bkE then 1 else 0
        local bkG = 452 * bkI + 1365 * (1 - bkI)
        local bkH = 831 * bkI + 2211 * (1 - bkI)
        if not ((bkG * 2779 + bkH * 1796 + bkG * bkH) % 16777213 == 3124196) then
            bkE = 0
        end
        return bkD_1 >= bkE
    else
        return u4 >= a3G(fns.Options.UnloadAtPercent.Value, 80)
    end
end
fns.cgs_44.TruckUnloadPending = function(va)
    if not fns.Toggles2.AutoUnloadTruck.Value then
        return false
    end
    local bkJ = va
    if bkJ == nil then
        bkJ = fns.a2y()
    end
    if bkJ == nil or bkJ <= 0 then
        return false
    elseif bkJ >= 99.9 then
        return true
    else
        local bkK_1 = fns.cgs_44.ForceTruckUnload and os.clock() - fns.cgs_44.ForceTruckUnload < 60
        if bkK_1 then
            return true
        end
        local bkK_2 = (a3t()) and fns.cgs_9[7] == "full"
        if bkK_2 then
            return true
        end
        local bkK_3 = fns.cgs_44.InventoryFull and fns.cgs_44.InventoryFull()
        if bkK_3 then
            return false
        end
        return fns.cgs_36(bkJ, false)
    end
end
a1T = function(vn)
    local bkT = os.clock()
    local bkT_1
    local bkU = fns.a1y[6]
    local bkU_1
    local bk3 = if bkU then 1 else 0
    local bk1 = 2811 * bk3 + 1386 * (1 - bk3)
    local bk2 = 2035 * bk3 + 967 * (1 - bk3)
    if not ((bk1 * 1499 + bk2 * 674 + bk1 * bk2) % 16777213 == 11305664) then
        bkU = 0
    end
    if bkT < bkU then
        return
    end
    bkT_1, bkU_1 = fns.a2y()
    if not bkT_1 or not bkU_1 then
        fns.a1y[4] = "no vehicle"
        return
    end
    if not fns.cgs_36(bkT_1, vn) then
        fns.a1y[4] = ("truck %.0f%% full"):format(bkT_1)
        return
    end
    local attr = bkU_1:GetAttribute("VehicleGUID")
    local bkV_1 = attr == ""
    local bkW_1 = type(attr) ~= "string" or bkV_1
    if bkW_1 then
        fns.a1y[4] = "truck is still loading"
        fns.a1y[6] = os.clock() + 2
        return
    end
    local bkV_2 = a18(fns.cgs_44.GetVehicleItems, attr)
    if type(bkV_2) ~= "table" then
        fns.a1y[4] = "could not read truck inventory"
        fns.a1y[6] = os.clock() + 5
        return
    end
    local bkW_2 = {}
    local bkX = bkV_2.items or bkV_2
    for k, v in pairs(bkX) do
        local bkV_3 = type(v) == "table" and fns.cgs_101(v.ItemId)
        local bkV_4 = #bkW_2 + 1
        local bkY_1 = type(v) == "table" and a3V(v)
        local bkZ_1 = bkY_1 or 0
        local bkY_2 = bkV_3 and a3G(bkV_3.Weight, 0)
        bkW_2[bkV_4] = { Guid = k, Value = bkZ_1, Weight = bkY_2 or 0 }
    end
    if #bkW_2 == 0 then
        fns.a1y[4] = "truck empty"
        fns.cgs_44.ForceTruckUnload = nil
        if fns.cgs_9[7] == "full" then
            fns.cgs_9[7] = nil
            fns.cgs_9[4] = "waiting"
        end
        if fns.Options.UnloadMethod.Value == "Unload every 20s" then
            fns.a1y[5] = os.clock() + 20
        end
        return
    end
    local bkV_5 = (fns.cgs_74:GetAttribute("InventoryCap")) or math.huge
    local bkX_3 = (fns.cgs_74:GetAttribute("InventoryCount")) or 0
    local bkY_3 = bkV_5 - bkX_3
    if bkY_3 <= 0 then
        fns.a1y[4] = ("inventory full, %d truck items waiting"):format(#bkW_2)
        fns.a1y[6] = os.clock() + 5
        return
    end
    table.sort(bkW_2, function(vL, vM)
        if vL.Weight ~= vM.Weight then
            return vL.Weight > vM.Weight
        end
        return vL.Value > vM.Value
    end)
    local bkV_6 = {}
    local bkX_4 = math.min(#bkW_2, math.floor(bkY_3))
    local blc = 1
    while blc <= bkX_4 do
        local bld = blc
        bkV_6[bld] = bkW_2[bld].Guid
        blc += 1
    end
    local bkX_5 = a28()
    if not bkX_5 then
        fns.a1y[4] = "cannot unload: no plot"
        fns.a1y[6] = os.clock() + 5
        return
    end
    local bkY_4 = #bkV_6
    local bk_ = #bkV_6 == 1 and "" or "s"
    fns.a1y[4] = ("moving to unload zone with %d item%s"):format(bkY_4, bk_)
    if not a2g(bkX_5, true, bkU_1, true) then
        fns.a1y[4] = "could not reach unload zone"
        fns.a1y[6] = os.clock() + 5
        return
    end
    local bkX_6 = bkU_1.Parent == nil or bkU_1:GetAttribute("VehicleGUID") ~= attr
    if bkX_6 then
        fns.a1y[4] = "truck changed while driving; retrying"
        fns.a1y[6] = os.clock() + 2
        return
    end
    if fns.cgs_51.Unloaded or not fns.Toggles2.AutoUnloadTruck.Value then
        local Character = fns.cgs_74.Character
        local bkX_7 = Character and Character:FindFirstChildOfClass("Humanoid")
        local bkU_4 = bkX_7
        if bkX_7 then
            bkX_7 = bkU_4.SeatPart
        end
        if bkX_7 then
            bkU_4.Sit = false
        end
        return
    end
    local bkU_5 = (fns.cgs_74:GetAttribute("InventoryCap")) or math.huge
    local bkX_8 = (fns.cgs_74:GetAttribute("InventoryCount")) or 0
    local bkY_5 = bkU_5 - bkX_8
    if bkY_5 <= 0 then
        fns.a1y[4] = "inventory filled while driving; unload waiting for a free slot"
        fns.a1y[6] = os.clock() + 2
        return
    end
    while #bkV_6 > math.floor(bkY_5) do
        table.remove(bkV_6)
    end
    if #bkV_6 == 0 then
        fns.a1y[4] = "inventory filled while driving; unload waiting for a free slot"
        fns.a1y[6] = os.clock() + 2
        return
    end
    fns.cgs_44.TransferVehicleItemsToInventory:FireServer(bkV_6)
    local bkU_6 = 0
    local blh = 1
    while blh <= 12 do
        local bli = blh
        task.wait(0.25)
        local bkX_9 = a18(fns.cgs_44.GetVehicleItems, attr)
        if type(bkX_9) == "table" then
            local bkY_6 = bkX_9.items or bkX_9
            bkU_6 = 0
            for i, v in ipairs(bkV_6) do
                if bkY_6[v] == nil then
                    bkU_6 += 1
                end
            end
            if bkU_6 == #bkV_6 then
                break
            end
            if bkU_6 > 0 and bli >= 6 then
                break
            end
            blh += 1
            continue
        end
        blh += 1
    end
    fns.a1y[3] = fns.a1y[3] + bkU_6
    if bkU_6 > 0 then
        fns.cgs_44.ForceTruckUnload = nil
        if fns.cgs_9[7] == "full" then
            fns.cgs_9[7] = nil
            fns.cgs_9[4] = "waiting"
        end
        local bkT_3 = #bkW_2 - bkU_6
        local bkV_7 = bkT_3 > 0 and ("unloaded %d, %d waiting"):format(bkU_6, bkT_3)
        local bkT_4 = bkV_7
        local bls = if bkT_4 then 1 else 0
        local blq = 1260 * bls + 1791 * (1 - bls)
        local blr = 2533 * bls + 691 * (1 - bls)
        if not ((blq * 661 + blr * 307 + blq * blr) % 16777213 == 4802071) then
            local bkW_3 = bkU_6 == 1 and "" or "s"
            bkT_4 = ("unloaded %d item%s"):format(bkU_6, bkW_3)
        end
        fns.a1y[4] = bkT_4
        fns.a1y[6] = os.clock() + 1
    else
        fns.a1y[4] = "transfer rejected; staying in unload zone and retrying"
        fns.a1y[6] = os.clock() + 2
    end
    if fns.Options.UnloadMethod.Value == "Unload every 20s" then
        fns.a1y[5] = os.clock() + 20
    end
    if bkU_6 > 0 and fns.cgs_44.UnseatForPickup then
        fns.cgs_44.UnseatForPickup()
    end
end
fns.cgs_25 = function()
    local blt = fns.a2y()
    local blv = blt and blt >= 99.9
    if not blv then
        local blu_1 = fns.cgs_44.ForceTruckUnload ~= nil and os.clock() - fns.cgs_44.ForceTruckUnload < 60
        blv = blu_1
    end
    local blu_2 = blv
    local blv_1 = fns.cgs_44.TruckUnloadPending(blt)
    local blw = (a3t()) and fns.cgs_9[7] == "full"
    local blx = blw
    if a3w.active then
        fns.a1y[4] = "waiting for active auction"
        return
    end
    if not blv_1 then
        if blt then
            fns.a1y[4] = ("truck %.0f%% full"):format(blt)
        end
        return
    end
    local blt_1 = not blu_2
    if blt_1 ~= false then
        blt_1 = fns.cgs_44.AutoClaimWinningsEnabled()
    end
    if blt_1 then
        local blv_2 = fns.cgs_44.PendingWinnings() > 0
        local blE_1 = if blv_2 then 1 else 0
        local blC_1 = 1363 * blE_1 + 2029 * (1 - blE_1)
        local blD_1 = 907 * blE_1 + 486 * (1 - blE_1)
        if not ((blC_1 * 3543 + blD_1 * 2293 + blC_1 * blD_1) % 16777213 == 8145101) then
            local blw_1 = a3w.wonAt and os.clock() - a3w.wonAt < 20
            blv_2 = blw_1
        end
        blt_1 = blv_2
    end
    if blt_1 then
        fns.a1y[4] = "waiting for winnings pickup"
        return
    end
    if fns.Toggles2.AutoLostFound.Value then
        pcall(fns.cgs_16, fns.cgs_44.LostFoundAreas(), false)
        local blt_2 = (a3t()) and fns.cgs_9[7] == "full"
        blx = blt_2
    end
    local blt_3 = blu_2
    local blE_2 = if blt_3 then 1 else 0
    local blC_2 = 3362 * blE_2 + 2009 * (1 - blE_2)
    local blD_2 = 230 * blE_2 + 1376 * (1 - blE_2)
    if not ((blC_2 * 2573 + blD_2 * 2787 + blC_2 * blD_2) % 16777213 == 10064696) then
        blt_3 = blx
    end
    local blu_3 = blt_3
    if not blu_3 then
        local blt_4 = fns.cgs_44.AuctionHasPriority and fns.cgs_44.AuctionHasPriority()
        if blt_4 then
            fns.a1y[4] = "waiting for Auto Auction"
            return
        end
        if a24() then
            fns.a1y[4] = "waiting for Auto Lost & Found"
            return
        end
        local blt_5 = fns.cgs_44.ShelfStockDue and fns.cgs_44.ShelfStockDue()
        if blt_5 then
            fns.a1y[4] = "waiting for Shelf Stocking"
            return
        end
    end
    if a1k then
        return
    end
    fns.cgs_28(a1T, blu_3)
end
a4u = function(wz)
    local blF = fns.cgs_100.Tools[wz]
    if not blF then
        return 0
    end
    return blF.tier or blF.safeTier or 0
end
fns.cgs_107 = function()
    local blL, blM
    local blO_1
    local blN_1
    blN_1, blO_1 = pcall(function()
        return fns.cgs_44.GetLockpickState:InvokeServer()
    end)
    local blP = not blN_1 or type(blO_1) ~= "table"
    local blP_3, blP_4
    if blP then
        return
    end
    local blN_3 = blO_1.owned or {}
    local blP_2 = blO_1.netWorth or 0
    local blQ = 0
    local blQ_1, blQ_2
    for k, v in pairs(blN_3) do
        if v then
            blQ = math.max(blQ, a4u(k))
        end
    end
    blM, blP_3 = nil, nil
    for k, v in pairs(fns.cgs_100.Tools) do
        local blS = not blN_3[k]
        if blS ~= false then
            blS = v.cashPrice
        end
        if blS then
            local blS_1 = a4u(k)
            local blT = blS_1 > blQ and fns.cgs_41() >= v.cashPrice and blP_2 >= (v.minNetWorth or 0)
            if blT then
                if not blP_3 or blS_1 > blP_3 then
                    blM, blP_3 = k, blS_1
                end
            end
        end
    end
    if blM then
        pcall(function()
            fns.cgs_44.BuyLockpick:InvokeServer(blM)
        end)
        task.wait(0.5)
        blP_4, blQ_1 = pcall(function()
            return fns.cgs_44.GetLockpickState:InvokeServer()
        end)
        local blR_1 = blP_4 and type(blQ_1) == "table"
        if blR_1 then
            blO_1 = blQ_1
            blN_3 = blO_1.owned or blN_3
        end
    end
    blL, blQ_2 = nil, nil
    for k, v in pairs(blN_3) do
        if v then
            local blN_4 = a4u(k)
            if not blQ_2 or blN_4 > blQ_2 then
                blL, blQ_2 = k, blN_4
            end
        end
    end
    if blL and blL ~= blO_1.equipped then
        pcall(function()
            fns.cgs_44.EquipLockpick:InvokeServer(blL)
        end)
    end
    a3i[1] = blL or blO_1.equipped
    a3i[2] = "best equipped"
end
fns.cgs_44.PROCESSORS = {
    {
        Key = "Grade",
        Events = fns.cgs_44.GradingEvents,
        Items = "GetGradableItems",
        Start = "StartGrading",
        Collect = "CollectGrade",
        Claim = "ClaimGradedItem",
        SpeedUp = "SpeedUpGrading"
    },
    {
        Key = "Repair",
        Events = fns.cgs_44.RepairEvents,
        Items = "GetRepairableItems",
        Start = "StartRepair",
        Collect = "CollectRepair",
        Claim = "ClaimRepairedItem",
        SpeedUp = "SpeedUpRepair"
    },
    {
        Key = "Wash",
        Events = fns.cgs_44.WashEvents,
        Items = "GetWashableItems",
        Start = "StartWash",
        Collect = "CollectWash",
        Claim = "ClaimWashedItem",
        SpeedUp = "SpeedUpWash",
        CallDelay = 0.2
    }
}
fns.cgs_44.PROCESS_CALL_DELAY = 0.6
fns.cgs_44.InventoryFull = function()
    local attr = fns.cgs_74:GetAttribute("InventoryCap")
    if not attr then
        return false
    end
    local bmf = (fns.cgs_74:GetAttribute("InventoryCount")) or 0
    return bmf >= attr
end
fns.cgs_44.ClaimWhenFull = function(xg)
    local bmi = xg == "Grade" and fns.Toggles2.GradeClaimWhenFull
    if not bmi then
        bmi = xg == "Wash" and fns.Toggles2.WashClaimWhenFull
    end
    if not bmi then
        bmi = xg == "Repair" and fns.Toggles2.RepairClaimWhenFull
    end
    local bmh_3 = bmi
    return bmh_3 ~= nil and bmh_3.Value == true
end
fns.cgs_45 = { [1] = 0, [2] = 0, [3] = 0, [4] = 0, [5] = 0, [6] = 0, [7] = 0, [8] = "idle" }
a36 = function()
    if not fns.cgs_44.CleaningBottleCatalog then
        return nil
    end
    local bmk = a18(fns.cgs_44.CleaningBottleCatalog)
    local bml = type(bmk) == "table" and bmk
    local bmk_1 = bml
    local bmp = if bmk_1 then 1 else 0
    local bmn = 2259 * bmp + 2857 * (1 - bmp)
    local bmo = 3440 * bmp + 563 * (1 - bmp)
    if not ((bmn * 2502 + bmo * 629 + bmn * bmo) % 16777213 == 15586738) then
        bmk_1 = nil
    end
    return bmk_1
end
fns.cgs_37 = function(xv)
    local bmq = xv
    local bmr = 0
    if bmq then
        bmq = xv.Bottles
    end
    local bmt = bmq or {}
    for i, v in ipairs(bmt) do
        bmr += a3G(v.Owned, 0)
    end
    return bmr
end
fns.cgs_44.DoBuyCleaningSpray = function()
    if not fns.cgs_44.CleaningBuyBottle then
        return
    end
    local bmB = a36()
    if not bmB then
        return
    end
    local bmC = fns.cgs_64(fns.Options.CleaningSprayList.Value)
    local bmD = a3G(fns.Options.CleaningSprayStock.Value, 1)
    if fns.cgs_37(bmB) >= bmD then
        return
    end
    local bmE = bmB.Bottles or {}
    for i, v in ipairs(bmE) do
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoBuyCleaningSpray.Value then
            return
        end
        local bmB_2 = tostring(v.Name)
        local bmD_2 = not next(bmC) or bmC[bmB_2]
        local bmE_1 = bmD_2 and a3G(v.StockRemaining, 0) > 0
        if bmE_1 then
            local bmD_3 = v.Cost or v.Price
            bmE_1 = a1u(a3G(bmD_3, 0))
        end
        if bmE_1 then
            local bmD_4 = a18(fns.cgs_44.CleaningBuyBottle, v.DrinkId)
            local bmE_2 = type(bmD_4) == "table" and bmD_4.success
            if bmE_2 then
                fns.cgs_45[8] = "bought " .. bmB_2
                task.wait(0.4)
                return
            end
        end
    end
end
fns.cgs_44.DoCleanItems = function()
    if not fns.cgs_44.CleaningStart or not fns.cgs_44.CleaningAction or not fns.cgs_44.CleaningDirty then
        return
    end
    local bmR_1 = a18(fns.cgs_44.CleaningDirty)
    local bmS = type(bmR_1) ~= "table" or type(bmR_1.items) ~= "table"
    if bmS then
        return
    end
    for i, v in ipairs(bmR_1.items) do
        local bmQ, bmP
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoCleanItems.Value then
            return
        end
        local data = v.data
        if not fns.cgs_44.IgnoreFavoritedItem(data) then
            local bmR_4 = a18(fns.cgs_44.CleaningStart, v.guid)
            local bmS_1 = type(bmR_4) ~= "table" or not bmR_4.success
            if bmS_1 then
                local bmS_2 = type(bmR_4) == "table" and bmR_4.error
                if bmS_2 then
                    fns.cgs_45[8] = "clean: " .. tostring(bmR_4.error)
                end
                return
            end
            bmQ = bmR_4.id or bmR_4.sessionId
            if not bmQ then
                return
            end
            bmP = os.clock()
            task.wait(2.5)
            pcall(function()
                fns.cgs_44.CleaningAction:FireServer("finish", bmQ, { elapsed = os.clock() - bmP })
            end)
            local crf = fns.cgs_45
            crf[6] = crf[6] + 1
            fns.cgs_45[8] = "cleaned an item"
            task.wait(0.8)
        end
    end
end
a3I = function(yb)
    local bm_ = yb == true
    local bm4 = if bm_ then 1 else 0
    local bm2 = 2265 * bm4 + 1403 * (1 - bm4)
    local bm3 = 3529 * bm4 + 2310 * (1 - bm4)
    if not ((bm2 * 2690 + bm3 * 2867 + bm2 * bm3) % 16777213 == 7426465) then
        local bm0 = type(yb) == "table" and yb.success == true
        bm_ = bm0
    end
    return bm_
end
fns.a1L = function()
    local bm5 = a18(fns.cgs_44.GetWrenchState)
    local bm6 = type(bm5) == "table" and bm5.equipped
    return bm6 or nil
end
a27 = function()
    if not fns.a1L() then
        fns.cgs_45[8] = "Wrench: none equipped"
        return
    end
    local bm8 = a18(fns.cgs_44.RepairEvents.GetRepairableItems)
    local bm9 = type(bm8) ~= "table" or type(bm8.items) ~= "table"
    if bm9 then
        return
    end
    for i, v in ipairs(bm8.items) do
        local data = v.data
        local bm9_1 = type(data) == "table" and not fns.cgs_44.IgnoreFavoritedItem(data)
        if bm9_1 then
            local bm9_2 = a18(fns.cgs_44.RepairWithWrench, v.guid, v.source, v.vehicleGUID)
            if a3I(bm9_2) then
                local chz = fns.cgs_45
                chz[7] = chz[7] + 1
                local bna = (fns.cgs_101(data.ItemId)) and fns.cgs_101(data.ItemId).Name
                local bm8_2 = bna or "item"
                fns.cgs_45[8] = "Wrench: repaired " .. tostring(bm8_2)
                task.wait(0.25)
            else
                local bm8_3 = type(bm9_2) == "table" and bm9_2.error
                if bm8_3 then
                    fns.cgs_45[8] = "Wrench: " .. tostring(bm9_2.error)
                end
            end
        end
    end
end
a13 = function(yA)
    if not fns.Toggles2.AutoWrenchRepair or not fns.Toggles2.AutoWrenchRepair.Value or not yA or not yA.Parent then
        return false
    end
    local attr = yA:GetAttribute("ItemsWonGUID")
    local bnj = type(attr) ~= "string" or attr == ""
    local bnn = if bnj then 1 else 0
    local bnl = 30 * bnn + 462 * (1 - bnn)
    local bnm = 863 * bnn + 1044 * (1 - bnn)
    if not ((bnl * 854 + bnm * 954 + bnl * bnm) % 16777213 == 874812) then
        bnj = not fns.a1L()
    end
    if bnj then
        return false
    end
    local bnj_1 = a18(fns.cgs_44.RepairWonItem, attr)
    if a3I(bnj_1) then
        local cj1 = fns.cgs_45
        cj1[7] = cj1[7] + 1
        fns.cgs_45[8] = "Wrench: repaired auction winning"
        return true
    end
    return false
end
fns.cgs_44.IsPriorityItem = function(yI, yJ)
    local bno = type(yJ) == "table" and type(yJ.RolledAttributes) == "table"
    if bno then
        return true
    end
    if not yI or not yI.Name then
        return false
    end
    local bno_2 = yI.Name == "Diamond Vault"
    local bns = if bno_2 then 1 else 0
    local bnq = 1884 * bns + 3465 * (1 - bns)
    local bnr = 3557 * bns + 2955 * (1 - bns)
    if not ((bnq * 842 + bnr * 2523 + bnq * bnr) % 16777213 == 484814) then
        bno_2 = yI.Name == "Diamond Safe"
    end
    if not bno_2 then
        bno_2 = yI.Name:find("Luck Drink", 1, true) ~= nil
    end
    local bns_1 = if bno_2 then 1 else 0
    local bnq_1 = 1980 * bns_1 + 1106 * (1 - bns_1)
    local bnr_1 = 1747 * bns_1 + 1872 * (1 - bns_1)
    if not ((bnq_1 * 3693 + bnr_1 * 2562 + bnq_1 * bnr_1) % 16777213 == 15247014) then
        bno_2 = yI.Name:find("Certificate Of Authenticity", 1, true) ~= nil
    end
    return bno_2
end
fns.cgs_44.IsGradeLimitedPotion = function(yN)
    return yN ~= nil and (yN.Limited == true or yN.Category == "Food")
end
fns.cgs_44.PriorityGradeReserved = function(yR, yS)
    local bnw = fns.Toggles2.AutoGrade.Value and fns.Toggles2.PrioritizeVaultsDrinks.Value and type(yR) == "table" and yR.Grade == nil and (yS == nil or yS.SafeId == nil) and fns.cgs_44.IsPriorityItem(yS, yR)
    return bnw
end
fns.cgs_68 = function(yY)
    if not yY.StartTime or not yY.Duration then
        return false
    end
    return workspace:GetServerTimeNow() >= yY.StartTime + yY.Duration
end
fns.cgs_44.EntryHasMutation = function(y_, y0)
    local bnE = type(y_) == "table" and y_.Mutators
    local bnE_1 = bnE or nil
    if type(bnE_1) == "string" then
        bnE_1 = fns.MutatorModule:ParseMutatorsAttr(bnE_1)
    end
    if type(bnE_1) ~= "table" then
        return false
    end
    for k, v in pairs(bnE_1) do
        local bnE_2 = v == y0
        if not bnE_2 then
            local bnF_1 = type(v) == "table"
            if bnF_1 then
                bnF_1 = v.name == y0 or v.Name == y0
            end
            bnE_2 = bnF_1
        end
        if bnE_2 or v == true and k == y0 then
            return true
        end
    end
    return false
end
fns.cgs_44.BypassMutationPresent = function(zd, ze, zf)
    if zf == fns.cgs_44.TROPHY_CHOICE then
        return zd.IsTrophy == true
    elseif zf == "Limited" then
        return ze ~= nil and ze.Limited == true
    else
        if zf == "Exclusive" and ze and ze.EventExclusive ~= nil then
            return true
        end
        return fns.cgs_44.EntryHasMutation(zd, zf)
    end
end
fns.cgs_44.BypassWinningsWanted = function(zj)
    if not fns.Toggles2.EnableThresholdBypass or not fns.Toggles2.EnableThresholdBypass.Value then
        return false
    end
    local bnT_1 = fns.cgs_81(zj)
    local bnU = fns.cgs_101(bnT_1.ItemId)
    local bnV = fns.cgs_64(fns.Options.BypassItems.Value)
    local bnW = fns.cgs_64(fns.Options.BypassMutations.Value)
    local bnX = fns.cgs_64(fns.Options.BypassCategories.Value)
    local bnY = fns.cgs_64(fns.Options.BypassRarities.Value)
    local bnZ = fns.Options.BypassMinWeight and a3G(fns.Options.BypassMinWeight.Value, 0)
    local bn_ = bnZ or 0
    local bn__1 = bnU ~= nil and bnV[bnU.Name] == true
    if bn__1 then
        for k in pairs(fns.cgs_44.SkippedMutations(bnU.Name)) do
            if fns.cgs_44.BypassMutationPresent(bnT_1, bnU, k) then
                return false
            end
        end
    end
    if bn__1 then
        return true
    end
    for k in pairs(bnW) do
        if fns.cgs_44.BypassMutationPresent(bnT_1, bnU, k) then
            return true
        end
    end
    local bnT_2 = next(bnX) ~= nil and fns.cgs_44.CategoryMatch(bnU, bnX)
    local bnV_2 = bnT_2
    if not bnV_2 then
        bnV_2 = bnU ~= nil and bnY[bnU.Rarity] == true
    end
    if not bnV_2 then
        local bnT_4 = bn_ > 0 and bnU ~= nil
        if bnT_4 then
            local bnW_1 = (tonumber(bnU.Weight))
            local bob = if bnW_1 then 1 else 0
            local bn9 = 1522 * bob + 1945 * (1 - bob)
            local boa = 888 * bob + 725 * (1 - bob)
            if not ((bn9 * 3119 + boa * 3507 + bn9 * boa) % 16777213 == 9212870) then
                bnW_1 = 0
            end
            bnT_4 = bnW_1 >= bn_
        end
        bnV_2 = bnT_4
    end
    return bnV_2
end
fns.cgs_44.MutationFilterPass = function(zJ, zK)
    local bof = zK and fns.cgs_64(zK.Value)
    local bof_1 = bof or {}
    if not next(bof_1) then
        return true
    end
    for k in pairs(bof_1) do
        if fns.cgs_44.EntryHasMutation(zJ, k) then
            return true
        end
    end
    return false
end
fns.cgs_44.GradeCategoryPass = function(zO)
    local bon = fns.Options.GradeOnlyCategories and fns.cgs_64(fns.Options.GradeOnlyCategories.Value)
    local bop = bon or {}
    local boo_1 = fns.Options.GradeOnlyItems and fns.cgs_64(fns.Options.GradeOnlyItems.Value)
    local boq = boo_1 or {}
    local bop_2 = not next(bop)
    if bop_2 ~= false then
        bop_2 = not next(boq)
    end
    if bop_2 then
        return true
    end
    local bop_3 = zO ~= nil
    if bop_3 then
        local boq_1 = boq[zO.Name] == true
        local bou = if boq_1 then 1 else 0
        local bos = 4015 * bou + 3377 * (1 - bou)
        local bot = 1855 * bou + 3320 * (1 - bou)
        if not ((bos * 3186 + bot * 640 + bos * bot) % 16777213 == 4649602) then
            boq_1 = fns.cgs_44.CategoryMatch(zO, bop)
        end
        bop_3 = boq_1
    end
    return bop_3
end
fns.cgs_44.SwitchAccessoryLoadout = function(zX, zY)
    local bov = zX and zX.Value or ""
    local bow = tonumber(tostring(bov):match("%d+"))
    if not bow then
        return true
    elseif tonumber(fns.cgs_74:GetAttribute("ActiveAccessoryLoadout")) == bow then
        return true
    else
        local bov_1 = a18(fns.cgs_44.GetAccessoryLoadouts)
        local boy = type(bov_1) == "table" and tonumber(bov_1.unlockedCount)
        if bow > (boy or 0) then
            fns.cgs_45[8] = ("%s: accessory loadout %d is locked"):format(zY, bow)
            return false
        end
        local bov_3 = a18(fns.cgs_44.ActivateAccessoryLoadout, bow)
        local boy_2 = bov_3 == true
        if not boy_2 then
            local boz = type(bov_3) == "table" and bov_3.success == true
            boy_2 = boz
        end
        if not boy_2 then
            fns.cgs_45[8] = ("%s: could not switch to accessory loadout %d"):format(zY, bow)
            return false
        end
        local boG = 1
        while boG <= 8 do
            if tonumber(fns.cgs_74:GetAttribute("ActiveAccessoryLoadout")) == bow then
                return true
            end
            task.wait(0.1)
            boG += 1
        end
        fns.cgs_45[8] = ("%s: loadout %d switch not confirmed"):format(zY, bow)
        return false
    end
end
fns.cgs_44.GradeExtrasPass = function(Aa, Ab)
    local boJ = a3G(fns.Options.GradeMaxValue.Value, 0)
    local boK = boJ > 0 and a3V(Aa) > boJ
    if boK then
        return false
    elseif not fns.cgs_44.GradeCategoryPass(Ab) then
        return false
    else
        return fns.cgs_44.MutationFilterPass(Aa, fns.Options.GradeMutations)
    end
end
a33 = function(Ag, Ah, Ai, Aj, Ak, Al)
    local Value, boY, Events, bo_, bo0, bo1, bo2, bo3, bo4, bo5, bo6, bo7, bpr, bpt, bpu, bpw, bpy, bpz
    local bpp_2
    local bpo_2
    local bo9_4
    local bo8_6
    local bo6_3
    local bo4_12, bo4_14
    local bpb = 19
    while true do
        local bpb_1 = 15207 - bpb
        do
            if bpb_1 < 15173 then
                if bpb_1 < 15156 then
                    if bpb_1 < 15149 then
                        if bpb_1 < 15147 then
                            if bpb_1 < 13654 then
                                break
                            elseif bpb_1 < 15143 then
                                if bpb_1 < 15142 then
                                    if bpb_1 < 15141 then
                                        break
                                    end
                                    bo_ = {}
                                    bo1 = bo3
                                    for k, v in pairs(bo1) do
                                        local bo1_1 = (tonumber(k)) or k
                                        bo_[bo1_1] = true
                                        local bo1_2 = not fns.cgs_68(v)
                                        if bo1_2 then
                                            bo3 = fns.Toggles2.AutoSpeedUpSlots.Value or Ag.ForceSpeedUp
                                            bo1_2 = bo3
                                        end
                                        if bo1_2 then
                                            local bo1_3 = v.StartTime or 0
                                            bo3 = v.Duration or 0
                                            bo4 = bo1_3 + bo3 - workspace:GetServerTimeNow()
                                            if a1u(math.ceil(math.max(bo4, 0) / 60) * 5) then
                                                local bo1_4 = a18(Events[Ag.SpeedUp], bo1_1)
                                                bo3 = type(bo1_4) == "table" and bo1_4.success
                                                if bo3 then
                                                    local crk = fns.cgs_45
                                                    crk[4] = crk[4] + 1
                                                    v.StartTime = 0
                                                    v.Duration = 0
                                                end
                                            end
                                        end
                                        bo1 = (fns.cgs_68(v))
                                        if not bo1 then
                                            bo3 = Ag.Key == "Wash" and v.Washed == true
                                            bo1 = bo3
                                        end
                                        if bo1 then
                                            bo1 = fns.cgs_44.ClaimWhenFull(Ag.Key)
                                            bo3 = not bo1
                                            bo4 = (fns.cgs_44.InventoryFull()) and bo3
                                            if bo4 then
                                                fns.cgs_45[8] = Ag.Key .. ": inventory full, cannot claim"
                                            else
                                                bo1 = Ag.Key == "Grade" and not fns.cgs_44.SwitchAccessoryLoadout(fns.Options.GradeCollectLoadout, "Grade")
                                                if not bo1 then
                                                    bo3 = Ag.Key == "Wash" and v.Washed == true
                                                    if not bo3 then
                                                        fns.cgs_45[8] = Ag.Key .. ": collecting"
                                                        local bo1_6 = a18(Events[Ag.Collect], bo1_1)
                                                        local bo4_1 = bo1_6 == true
                                                        if not bo4_1 then
                                                            local bo5_1 = type(bo1_6) == "table" and bo1_6.success == true
                                                            bo4_1 = bo5_1
                                                        end
                                                        bo3 = bo4_1
                                                        local wait = task.wait
                                                        local bo5_2 = Ag.Key == "Wash" and 0.6 or bo0
                                                        wait(bo5_2)
                                                    end
                                                    local bo1_8 = bo3 and a18(Events[Ag.Claim], bo1_1)
                                                    bo4 = bo1_8 or nil
                                                    local bo1_9 = 0
                                                    bo5 = bo4
                                                    while true do
                                                        bo4 = bo3
                                                        if bo4 then
                                                            bo6 = bo5 == true
                                                            if not bo6 then
                                                                bo7 = type(bo5) == "table" and bo5.success
                                                                bo6 = bo7
                                                            end
                                                            bo4 = not bo6
                                                        end
                                                        if bo4 then
                                                            bo4 = bo1_9 < 3
                                                        end
                                                        if bo4 then
                                                            bo1_9 += 1
                                                            task.wait(0.8)
                                                            bo5 = a18(Events[Ag.Claim], bo1_1)
                                                            continue
                                                        end
                                                        break
                                                    end
                                                    bo1 = bo5 == true
                                                    if not bo1 then
                                                        bo4 = type(bo5) == "table" and bo5.success
                                                        bo1 = bo4
                                                    end
                                                    if bo1 then
                                                        local cri = fns.cgs_45
                                                        cri[2] = cri[2] + 1
                                                        bo_[bo1_1] = nil
                                                        fns.cgs_45[8] = Ag.Key .. ": claimed slot " .. tostring(bo1_1)
                                                    elseif not bo3 then
                                                        fns.cgs_45[8] = Ag.Key .. ": collect failed, retrying next cycle"
                                                    else
                                                        bo1 = type(bo5) == "table" and bo5.error
                                                        if bo1 then
                                                            fns.cgs_45[8] = Ag.Key .. ": " .. tostring(bo5.error)
                                                        else
                                                            fns.cgs_45[8] = Ag.Key .. ": claim failed, retrying next cycle"
                                                        end
                                                    end
                                                    task.wait(bo0)
                                                end
                                            end
                                        end
                                    end
                                    bpb = if fns.Toggles2.AutoUnlockSlots.Value then 50 else 12
                                else
                                    bo3 = type(bo1.items) ~= "table"
                                    bpb = 25
                                end
                            elseif bpb_1 < 15145 then
                                if bpb_1 < 15144 then
                                    if bpb_1 == 15143 then
                                        bo3 = bo1.success
                                        bpb = 22
                                    else
                                        bpb = 15202
                                        continue
                                    end
                                elseif bpb_1 == 15144 then
                                    bo1 = bo_.unlockedCount
                                    bpb = if bo1 then 24 else 42
                                else
                                    bpb = 15193
                                    continue
                                end
                            elseif bpb_1 < 15146 then
                                bpb = 59
                            else
                                bo6 = bo7
                                bpb = 6
                            end
                        elseif bpb_1 < 15148 then
                            bo7 = bo0[bpz] ~= nil
                            bpb = if bo7 then 61 else 35
                        elseif bpb_1 == 15148 then
                            bpb = if bo3[bo1] then 56 else 29
                        else
                            bpb = 15179
                            continue
                        end
                    elseif bpb_1 < 15155 then
                        if bpb_1 < 15152 then
                            if bpb_1 < 15151 then
                                if bpb_1 < 15150 then
                                    if bpb_1 == 15149 then
                                        bpb = 12
                                    else
                                        bpb = 15183
                                        continue
                                    end
                                elseif bpb_1 == 15150 then
                                    bo4 = fns.cgs_45[8] == "idle"
                                    bpb = 7
                                else
                                    bpb = 15190
                                    continue
                                end
                            elseif bpb_1 == 15151 then
                                local bo0_1 = bo3[bo1]
                                bo1 += 1
                                bo2 = a18(Events[Ag.Start], bpz, bo0_1.guid, bo0_1.source, bo0_1.vehicleGUID)
                                bo0 = bo2 == true
                                bpb = if bo0 then 39 else 48
                            else
                                bpb = 15142
                                continue
                            end
                        elseif bpb_1 < 15153 then
                            bpb = if Ag.Key == "Grade" then 33 else 38
                        elseif bpb_1 < 15154 then
                            if bpb_1 == 15153 then
                                bo0 = a18(Events.GetSlotState)
                                bo6 = type(bo0) == "table"
                                bpb = if bo6 then 13 else 52
                            else
                                bpb = 15201
                                continue
                            end
                        else
                            bo_[bpz] = true
                            local crm = fns.cgs_45
                            crm[1] = crm[1] + 1
                            fns.cgs_45[8] = Ag.Key .. ": filled slot " .. tostring(bpz)
                            bpb = 16
                        end
                    else
                        bo0 = bo6
                        bo6 = type(bo0) == "table"
                        bpb = if bo6 then 60 else 6
                    end
                elseif bpb_1 < 15168 then
                    if bpb_1 < 15159 then
                        if bpb_1 < 15157 then
                            bo5 = bo2.success == true
                            bpb = 27
                        elseif bpb_1 < 15158 then
                            if bpb_1 == 15157 then
                                bo1 = a18(Events.UnlockSlot, bo2 + 1)
                                bo3 = type(bo1) == "table"
                                bpb = if bo3 then 64 else 22
                            else
                                bpb = 15148
                                continue
                            end
                        else
                            fns.cgs_45[8] = Ag.Key .. ": " .. tostring(bo2.error)
                            bpb = 32
                        end
                    elseif bpb_1 < 15163 then
                        if bpb_1 < 15161 then
                            if bpb_1 < 15160 then
                                if bpb_1 == 15159 then
                                    bo5 = type(bo2) == "table"
                                    bpb = if bo5 then 51 else 27
                                else
                                    bpb = 15144
                                    continue
                                end
                            else
                                return
                            end
                        elseif bpb_1 < 15162 then
                            break
                        elseif bpb_1 == 15162 then
                            bpb = 11
                        else
                            bpb = 15202
                            continue
                        end
                    elseif bpb_1 < 15165 then
                        if bpb_1 < 15164 then
                            if bpb_1 == 15163 then
                                fns.cgs_45[8] = Ag.Key .. ": no eligible items"
                                bpb = 9
                            else
                                bpb = 15145
                                continue
                            end
                        elseif bpb_1 == 15164 then
                            bo1 = true
                            bpb = 41
                        else
                            bpb = 15175
                            continue
                        end
                    elseif bpb_1 < 15167 then
                        if bpb_1 < 15166 then
                            if bpb_1 == 15165 then
                                bo1 = 0
                                bpb = 24
                            else
                                bpb = 4650
                                continue
                            end
                        else
                            bo4 = bo1
                            bpb = if bo4 then 57 else 7
                        end
                    else
                        bpb = if bo5 then 53 else 23
                    end
                elseif bpb_1 < 15171 then
                    if bpb_1 < 15169 then
                        bo5 = bo0
                        task.wait(bo4)
                        bpb = if not bo5 then 54 else 40
                    elseif bpb_1 < 15170 then
                        if bpb_1 == 15169 then
                            bo1 = 1
                            bo4 = math.max(bo0, fns.cgs_44.PROCESS_CALL_DELAY)
                            bpy = 1
                            bpw = bo2
                            bpb = 1
                        else
                            bpb = 15150
                            continue
                        end
                    elseif bpb_1 == 15170 then
                        fns.cgs_45[8] = Ag.Key .. ": start failed, trying next item"
                        bpb = 32
                    else
                        bpb = 15141
                        continue
                    end
                elseif bpb_1 < 15172 then
                    bo0 = bo_
                    bo_ = a18(Events.GetSlotState)
                    bpb = if type(bo_) ~= "table" then 2 else 63
                else
                    bo7 = bo0[tostring(bpz)] ~= nil
                    bpb = 61
                end
            elseif bpb_1 < 15185 then
                if bpb_1 < 15179 then
                    if bpb_1 < 15176 then
                        if bpb_1 < 15174 then
                            bpb = if bpt <= bpr then 28 else 41
                        elseif bpb_1 < 15175 then
                            Value = fns.Options.GradePriority.Value
                            table.sort(bo3, function(BJ, BK)
                                local boQ_6
                                if boY[BJ] ~= boY[BK] then
                                    return boY[BJ] == true
                                end
                                local boM = {}
                                local boM_8
                                local boN = BJ.data or boM
                                local boO = BK.data or {}
                                local boO_1 = fns.cgs_101(boN.ItemId)
                                local boP = fns.cgs_101(boO.ItemId)
                                if Value == "Rarity (Highest First)" then
                                    local boQ_2 = fns.cgs_44.RARITY_RANK[boO_1 and boO_1.Rarity]
                                    local boW = if boQ_2 then 1 else 0
                                    local boU = 3430 * boW + 1915 * (1 - boW)
                                    local boV = 2090 * boW + 867 * (1 - boW)
                                    if not ((boU * 3855 + boV * 279 + boU * boV) % 16777213 == 4197247) then
                                        boQ_2 = 0
                                    end
                                    local boR_1 = boQ_2
                                    local boQ_4 = fns.cgs_44.RARITY_RANK[boP and boP.Rarity] or 0
                                    if boR_1 ~= boQ_4 then
                                        return boR_1 > boQ_4
                                    end
                                    local boQ_5 = a3V(boN)
                                    local boM_2 = a3V(boO)
                                    if boQ_6 ~= boM_8 then
                                        return boQ_5 > boM_2
                                    end
                                    local boM_4 = fns.cgs_44.RARITY_RANK[boO_1 and boO_1.Rarity] or 0
                                    local boM_6 = fns.cgs_44.RARITY_RANK[boP and boP.Rarity] or 0
                                    if boM_4 ~= boM_6 then
                                        return boM_4 > boM_6
                                    end
                                    local boM_7 = BJ.guid or ""
                                    local boN_5 = tostring(boM_7)
                                    local boO_4 = BK.guid or ""
                                    return boN_5 < tostring(boO_4)
                                end
                                boQ_6 = a3V(boN)
                                boM_8 = a3V(boO)
                                if boQ_6 ~= boM_8 then
                                    return boQ_6 > boM_8
                                end
                                local boM_10 = fns.cgs_44.RARITY_RANK[boO_1 and boO_1.Rarity] or 0
                                local boM_12 = fns.cgs_44.RARITY_RANK[boP and boP.Rarity] or 0
                                if boM_10 ~= boM_12 then
                                    return boM_10 > boM_12
                                end
                                local boM_13 = BJ.guid or ""
                                local boN_8 = tostring(boM_13)
                                local boO_7 = BK.guid or ""
                                return boN_8 < tostring(boO_7)
                            end)
                            bpb = 38
                        elseif bpb_1 == 15175 then
                            bpb = 20
                        else
                            bpb = 15143
                            continue
                        end
                    elseif bpb_1 < 15177 then
                        bo_ = fns.cgs_44.PROCESS_CALL_DELAY
                        bpb = 36
                    elseif bpb_1 < 15178 then
                        if bpb_1 == 15177 then
                            bpb = if not bo_[bpz] then 0 else 45
                        else
                            bpb = 15207
                            continue
                        end
                    else
                        bpb = 16
                    end
                elseif bpb_1 < 15182 then
                    if bpb_1 < 15180 then
                        if bpb_1 == 15179 then
                            bpu = bpt
                            bpb = 14
                        else
                            bpb = 15203
                            continue
                        end
                    elseif bpb_1 < 15181 then
                        bo0 = bo5
                        bpb = 39
                    else
                        bo0 = bo2.error
                        bpb = 10
                    end
                elseif bpb_1 < 15183 then
                    if bpb_1 == 15182 then
                        bpb = if bo3 then 47 else 8
                    else
                        bpb = 15177
                        continue
                    end
                elseif bpb_1 < 15184 then
                    bo2 = bo1
                    bo1 = {}
                    bo3 = bo_.slots
                    bpb = if bo3 then 66 else 15
                else
                    bo0 = type(bo2) == "table"
                    bpb = if bo0 then 26 else 10
                end
            elseif bpb_1 < 15198 then
                if bpb_1 < 15196 then
                    if bpb_1 < 15191 then
                        if bpb_1 < 15188 then
                            if bpb_1 < 15187 then
                                if bpb_1 < 15186 then
                                    if bpb_1 == 15185 then
                                        bpb = if bo3 then 5 else 58
                                    else
                                        bpb = 15207
                                        continue
                                    end
                                elseif bpb_1 == 15186 then
                                    bpz = bpy
                                    bpb = 30
                                else
                                    bpb = 15197
                                    continue
                                end
                            else
                                bpb = 62
                            end
                        elseif bpb_1 < 15190 then
                            if bpb_1 < 15189 then
                                Events = Ag.Events
                                bo_ = Ag.CallDelay
                                bpb = if bo_ then 36 else 31
                            elseif bpb_1 == 15189 then
                                bpt += 1
                                bpb = 34
                            else
                                bpb = 15141
                                continue
                            end
                        elseif bpb_1 == 15190 then
                            bo1 = false
                            bpt = 1
                            bpr = bo2
                            bpb = 34
                        else
                            bpb = 12458
                            continue
                        end
                    elseif bpb_1 < 15194 then
                        if bpb_1 < 15192 then
                            bpb = 45
                        elseif bpb_1 < 15193 then
                            if bpb_1 == 15192 then
                                bo3 = bo1
                                bpb = 66
                            else
                                bpb = 4650
                                continue
                            end
                        else
                            bpb = if not bo_[bpu] then 43 else 4
                        end
                    elseif bpb_1 < 15195 then
                        if bpb_1 == 15194 then
                            bo6 = bo0.slots
                            bpb = 52
                        else
                            bpb = 15190
                            continue
                        end
                    elseif bpb_1 == 15195 then
                        bo1 = a18(Events[Ag.Items])
                        bo3 = type(bo1) ~= "table"
                        bpb = if bo3 then 25 else 65
                    else
                        bpb = 15171
                        continue
                    end
                elseif bpb_1 < 15197 then
                    bpy += 1
                    bpb = 1
                elseif bpb_1 == 15197 then
                    bpb = if bo0 then 49 else 37
                else
                    bpb = 15206
                    continue
                end
            elseif bpb_1 < 15202 then
                if bpb_1 < 15200 then
                    if bpb_1 < 15199 then
                        return
                    elseif bpb_1 == 15199 then
                        boY = {}
                        bo3 = {}
                        for i, v in ipairs(bo1.items) do
                            bo1 = v.data
                            local bo4_3 = bo1 and bo1.ItemId
                            bo5 = fns.cgs_101(bo4_3)
                            bo4 = Ag.Key == "Safe" and fns.cgs_44.PriorityGradeReserved(bo1, bo5)
                            if not bo4 then
                                if Ag.Key == "Safe" then
                                    bo4 = fns.Toggles2.PicklockOnlyGraded and fns.Toggles2.PicklockOnlyGraded.Value
                                    if bo4 then
                                        bo6 = type(bo1) ~= "table" or bo1.Grade == nil
                                        bo4 = bo6
                                    end
                                    if not bo4 then
                                        local bo4_4 = fns.Options.PicklockItems and fns.cgs_64(fns.Options.PicklockItems.Value)
                                        bo7 = bo4_4 or {}
                                        bo4 = bo7
                                        bo6 = (next(bo4))
                                        if bo6 then
                                            bo7 = bo5 and bo4[bo5.Name]
                                            bo6 = not bo7
                                        end
                                        if not bo6 then
                                            local bo4_5 = Ag.Key == "Grade" and bo5 ~= nil and fns.Options.GradePriorityItems ~= nil and fns.cgs_64(fns.Options.GradePriorityItems.Value)[bo5.Name] == true
                                            bo6 = bo4_5
                                            local bo4_6 = Ag.Key == "Grade" and fns.Toggles2.GradeLimitedAndPotions ~= nil and fns.Toggles2.GradeLimitedAndPotions.Value == true and fns.cgs_44.IsGradeLimitedPotion(bo5)
                                            bo7 = bo4_6
                                            bo4 = Ag.Key == "Grade" and not bo7 and not bo6 and not fns.cgs_44.GradeCategoryPass(bo5)
                                            if not bo4 then
                                                local bo4_7 = bo6
                                                if not bo4_12 then
                                                    local bo6_2 = fns.Toggles2.PrioritizeVaultsDrinks.Value
                                                    if bo6_3 then
                                                        local IsPriorityItem = fns.cgs_44.IsPriorityItem
                                                        local bpa_1 = Ag.Key == "Grade" and bo1
                                                        if not ((bpo_2 * 3719 + bpp_2 * 1946 + bpo_2 * bpp_2) % 16777213 == 69764) then
                                                            bpa_1 = nil
                                                        end
                                                        bo6_2 = IsPriorityItem(bo5, bpa_1)
                                                    end
                                                    bo4_7 = bo6_2
                                                end
                                                bo6 = bo4_7
                                                local bo4_8 = not bo6
                                                local bo8_2 = (fns.cgs_44.IgnoreFavoritedItem(bo1)) and bo4_8
                                                bo4 = not bo7
                                                if not bo9_4 then
                                                    bo4 = Ag.Key == "Repair" and bo5 and bo5.Interactive == "FishingRod"
                                                    if not bo4 then
                                                        bo4 = Ag.Key == "Wash" and fns.cgs_44.EntryHasMutation(bo1, "Broken")
                                                        if not bo4 then
                                                            if bo4_14 then
                                                                bo4 = fns.cgs_64(fns.Options.WashSkipItems.Value)
                                                                if not bo8_6 then
                                                                    bo4 = Ag.Key == "Repair" and fns.Toggles2.AutoWash.Value and fns.cgs_44.EntryHasMutation(bo1, "Broken") and fns.cgs_44.EntryHasMutation(bo1, "Dirty")
                                                                    if bo4 then
                                                                        table.insert(bo3, 1, v)
                                                                    else
                                                                        bo4 = Al and Al(bo1, bo5)
                                                                        if bo4 then
                                                                            table.insert(bo3, 1, v)
                                                                        else
                                                                            bo4 = Aj and bo5 and bo5.SafeId
                                                                            if bo4 then
                                                                                table.insert(bo3, 1, v)
                                                                            elseif Ak then
                                                                                bo4 = bo5 and bo5.Interactive == "FishingRod"
                                                                                if bo4 then
                                                                                    bo3[#bo3 + 1] = v
                                                                                end
                                                                            elseif bo6 then
                                                                                boY[v] = true
                                                                                table.insert(bo3, 1, v)
                                                                            elseif bo7 then
                                                                                bo3[#bo3 + 1] = v
                                                                            else
                                                                                bo4 = (fns.cgs_49(bo5, Ai, Ah))
                                                                                if bo4 then
                                                                                    bo6 = Ag.Key ~= "Grade" or fns.cgs_44.GradeExtrasPass(bo1, bo5)
                                                                                    bo4 = bo6
                                                                                end
                                                                                if bo4 then
                                                                                    bo3[#bo3 + 1] = v
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            else
                                                                bo4 = Ag.Key == "Repair" and fns.Toggles2.AutoWash.Value and fns.cgs_44.EntryHasMutation(bo1, "Broken") and fns.cgs_44.EntryHasMutation(bo1, "Dirty")
                                                                if bo4 then
                                                                    table.insert(bo3, 1, v)
                                                                else
                                                                    bo4 = Al and Al(bo1, bo5)
                                                                    if bo4 then
                                                                        table.insert(bo3, 1, v)
                                                                    else
                                                                        bo4 = Aj and bo5 and bo5.SafeId
                                                                        if bo4 then
                                                                            table.insert(bo3, 1, v)
                                                                        elseif Ak then
                                                                            bo4 = bo5 and bo5.Interactive == "FishingRod"
                                                                            if bo4 then
                                                                                bo3[#bo3 + 1] = v
                                                                            end
                                                                        elseif bo6 then
                                                                            boY[v] = true
                                                                            table.insert(bo3, 1, v)
                                                                        elseif bo7 then
                                                                            bo3[#bo3 + 1] = v
                                                                        else
                                                                            bo4 = (fns.cgs_49(bo5, Ai, Ah))
                                                                            if bo4 then
                                                                                bo6 = Ag.Key ~= "Grade" or fns.cgs_44.GradeExtrasPass(bo1, bo5)
                                                                                bo4 = bo6
                                                                            end
                                                                            if bo4 then
                                                                                bo3[#bo3 + 1] = v
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
                                    end
                                else
                                    local bo4_10 = Ag.Key == "Grade" and bo5 ~= nil and fns.Options.GradePriorityItems ~= nil and fns.cgs_64(fns.Options.GradePriorityItems.Value)[bo5.Name] == true
                                    bo6 = bo4_10
                                    local bo4_11 = Ag.Key == "Grade" and fns.Toggles2.GradeLimitedAndPotions ~= nil and fns.Toggles2.GradeLimitedAndPotions.Value == true and fns.cgs_44.IsGradeLimitedPotion(bo5)
                                    bo7 = bo4_11
                                    bo4 = Ag.Key == "Grade" and not bo7 and not bo6 and not fns.cgs_44.GradeCategoryPass(bo5)
                                    if not bo4 then
                                        bo4_12 = bo6
                                        if not bo4_12 then
                                            bo6_3 = fns.Toggles2.PrioritizeVaultsDrinks.Value
                                            if bo6_3 then
                                                local IsPriorityItem = fns.cgs_44.IsPriorityItem
                                                local bpa_2 = Ag.Key == "Grade" and bo1
                                                local bpq_2 = if bpa_2 then 1 else 0
                                                bpo_2 = 1421 * bpq_2 + 3874 * (1 - bpq_2)
                                                bpp_2 = 3434 * bpq_2 + 3650 * (1 - bpq_2)
                                                if not ((bpo_2 * 3719 + bpp_2 * 1946 + bpo_2 * bpp_2) % 16777213 == 69764) then
                                                    bpa_2 = nil
                                                end
                                                bo6_3 = IsPriorityItem(bo5, bpa_2)
                                            end
                                            bo4_12 = bo6_3
                                        end
                                        bo6 = bo4_12
                                        local bo4_13 = not bo6
                                        local bo8_5 = (fns.cgs_44.IgnoreFavoritedItem(bo1)) and bo4_13
                                        bo4 = not bo7
                                        bo9_4 = bo8_5 and bo4
                                        if not bo9_4 then
                                            bo4 = Ag.Key == "Repair" and bo5 and bo5.Interactive == "FishingRod"
                                            if not bo4 then
                                                bo4 = Ag.Key == "Wash" and fns.cgs_44.EntryHasMutation(bo1, "Broken")
                                                if not bo4 then
                                                    bo4_14 = Ag.Key == "Wash" and fns.Options.WashSkipItems
                                                    if bo4_14 then
                                                        bo4 = fns.cgs_64(fns.Options.WashSkipItems.Value)
                                                        bo8_6 = (next(bo4)) and bo5 and bo4[bo5.Name]
                                                        if not bo8_6 then
                                                            bo4 = Ag.Key == "Repair" and fns.Toggles2.AutoWash.Value and fns.cgs_44.EntryHasMutation(bo1, "Broken") and fns.cgs_44.EntryHasMutation(bo1, "Dirty")
                                                            if bo4 then
                                                                table.insert(bo3, 1, v)
                                                            else
                                                                bo4 = Al and Al(bo1, bo5)
                                                                if bo4 then
                                                                    table.insert(bo3, 1, v)
                                                                else
                                                                    bo4 = Aj and bo5 and bo5.SafeId
                                                                    if bo4 then
                                                                        table.insert(bo3, 1, v)
                                                                    elseif Ak then
                                                                        bo4 = bo5 and bo5.Interactive == "FishingRod"
                                                                        if bo4 then
                                                                            bo3[#bo3 + 1] = v
                                                                        end
                                                                    elseif bo6 then
                                                                        boY[v] = true
                                                                        table.insert(bo3, 1, v)
                                                                    elseif bo7 then
                                                                        bo3[#bo3 + 1] = v
                                                                    else
                                                                        bo4 = (fns.cgs_49(bo5, Ai, Ah))
                                                                        if bo4 then
                                                                            bo6 = Ag.Key ~= "Grade" or fns.cgs_44.GradeExtrasPass(bo1, bo5)
                                                                            bo4 = bo6
                                                                        end
                                                                        if bo4 then
                                                                            bo3[#bo3 + 1] = v
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    else
                                                        bo4 = Ag.Key == "Repair" and fns.Toggles2.AutoWash.Value and fns.cgs_44.EntryHasMutation(bo1, "Broken") and fns.cgs_44.EntryHasMutation(bo1, "Dirty")
                                                        if bo4 then
                                                            table.insert(bo3, 1, v)
                                                        else
                                                            bo4 = Al and Al(bo1, bo5)
                                                            if bo4 then
                                                                table.insert(bo3, 1, v)
                                                            else
                                                                bo4 = Aj and bo5 and bo5.SafeId
                                                                if bo4 then
                                                                    table.insert(bo3, 1, v)
                                                                elseif Ak then
                                                                    bo4 = bo5 and bo5.Interactive == "FishingRod"
                                                                    if bo4 then
                                                                        bo3[#bo3 + 1] = v
                                                                    end
                                                                elseif bo6 then
                                                                    boY[v] = true
                                                                    table.insert(bo3, 1, v)
                                                                elseif bo7 then
                                                                    bo3[#bo3 + 1] = v
                                                                else
                                                                    bo4 = (fns.cgs_49(bo5, Ai, Ah))
                                                                    if bo4 then
                                                                        bo6 = Ag.Key ~= "Grade" or fns.cgs_44.GradeExtrasPass(bo1, bo5)
                                                                        bo4 = bo6
                                                                    end
                                                                    if bo4 then
                                                                        bo3[#bo3 + 1] = v
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
                            end
                        end
                        local bpq_3 = if #bo3 == 0 then 1 else 0
                        local bpo_3 = 2982 * bpq_3 + 2394 * (1 - bpq_3)
                        local bpp_3 = 926 * bpq_3 + 3112 * (1 - bpq_3)
                        bpb = if (bpo_3 * 1511 + bpp_3 * 2122 + bpo_3 * bpp_3) % 16777213 == 9232106 then 17 else 55
                    else
                        bpb = 15144
                        continue
                    end
                elseif bpb_1 < 15201 then
                    if bpb_1 == 15200 then
                        bpb = if bo4 then 44 else 9
                    else
                        bpb = 16054
                        continue
                    end
                elseif bpb_1 == 15201 then
                    bo5 = bo6
                    bpb = 40
                else
                    bpb = 15155
                    continue
                end
            elseif bpb_1 < 15205 then
                if bpb_1 < 15204 then
                    if bpb_1 < 15203 then
                        if bpb_1 == 15202 then
                            local crp = fns.cgs_45
                            crp[3] = crp[3] + 1
                            bo2 += 1
                            bpb = 58
                        else
                            bpb = 15174
                            continue
                        end
                    else
                        bpb = 18
                    end
                elseif bpb_1 == 15204 then
                    bpb = 46
                else
                    bpb = 15167
                    continue
                end
            elseif bpb_1 < 15207 then
                if bpb_1 < 15206 then
                    return
                elseif bpb_1 == 15206 then
                    bpb = if bpy <= bpw then 21 else 3
                else
                    bpb = 15165
                    continue
                end
            elseif bpb_1 < 16054 then
                if bpb_1 == 15207 then
                    bpb = 62
                else
                    break
                end
            else
                break
            end
        end
    end
end
fns.cgs_115 = function()
    if fns.Toggles2.AutoWrenchRepair.Value then
        a27()
    end
    if fns.Toggles2.AutoGrade.Value then
        a33(fns.cgs_44.PROCESSORS[1], a3G(fns.Options.GradeMinValue.Value, 0), fns.Options.GradeMinRarity.Value)
    end
    if fns.Toggles2.AutoRepair.Value then
        a33(fns.cgs_44.PROCESSORS[2], a3G(fns.Options.RepairMinValue.Value, 0), fns.Options.RepairMinRarity.Value)
    end
end
a4x = function(Cm)
    local bpC = fns.Toggles2.WashPrioritizeDusty and fns.Toggles2.WashPrioritizeDusty.Value and fns.cgs_44.EntryHasMutation(Cm, "Dusty")
    return bpC
end
a2F = function()
    local bpE = fns.cgs_44.PROCESSORS[3]
    local bpF = a3G(fns.Options.WashMinValue.Value, 0)
    local Value2 = fns.Options.WashMinRarity.Value
    local Value = fns.Toggles2.AutoWashSafes.Value
    local bpI = fns.Toggles2.AutoWashRods.Value and not fns.Toggles2.AutoWash.Value
    a33(bpE, bpF, Value2, Value, bpI, a4x)
end
fns.cgs_44.BuildQuestSystem = function()
    local bz0
    local bzN
    local bzM
    local bzx
    local bzR
    local bz2
    local bzO
    local bzZ
    local bzG
    local bzY
    local bzy
    local bzJ
    local bzF
    local bzQ
    bzx = nil
    bzy = nil
    bzF = nil
    bzG = nil
    bzJ = nil
    bzM = nil
    bzN = nil
    bzO = nil
    bzQ = nil
    bzR = nil
    bzY = nil
    bzZ = nil
    bz0 = nil
    bz2 = nil
    local bzw, bzz, bzA, bzB, bzC, bzD, bzE, bzH, bzI, bzK, bzL, bzP, bzS, bzT, bzU, bzV, bzW, bzX, bz_, bz1, bz3
    local bz6_1
    local bz5_1
    bzE = {}
    bzO = {}
    local bz4 = {}
    bzL = {}
    bzZ = {}
    bz0 = function(CE)
        return tostring(CE):gsub("<[^>]+>", ""):gsub("^%s*[-•]%s*", ""):gsub(":%s*[%d,]+%s*/%s*[%d,]+%s*$", ""):lower():gsub("[%d%p]", " "):gsub("%s+", " "):match("^%s*(.-)%s*$")
    end
    bz5_1, bz6_1 = {}, {}
    bzR = function(CI)
        if type(CI) ~= "table" then
            return
        end
        if type(CI.Options) == "table" then
            for i, v in ipairs(CI.Options) do
                local bpK = v.Response == "accept" and type(v.Text) == "string"
                if bpK then
                    bzZ[v.Text] = true
                end
            end
        end
        for k, v in pairs(CI) do
            if type(v) == "table" then
                bzR(v)
            end
        end
    end
    for k, v in pairs(fns.cgs_44.QuestDefinitions) do
        if not bz5_1[k] then
            bz5_1[k] = true
            bzL[#bzL + 1] = k
        end
        local bz8_1 = v.Levels or {}
        for i, v in ipairs(bz8_1) do
            local bz8_2 = v.RequiredTasks or {}
            for i, v2 in ipairs(bz8_2) do
                if v2.Key and not bz6_1[v2.Key] then
                    bz6_1[v2.Key] = true
                    bz4[#bz4 + 1] = v2.Key
                end
                if v2.Key and v2.DisplayName then
                    bzO[#bzO + 1] = { Key = v2.Key, Text = bz0(v2.DisplayName) }
                end
                if v2.Key and not bzE[v2.Key] then
                    bzE[v2.Key] = { Definition = v2, LuckQuest = v.LuckQuest }
                end
            end
            bzR(v.OfferDialog)
        end
    end
    table.sort(bzL)
    table.sort(bz4)
    bzQ = {
        active = {},
        accepted = 0,
        completed = 0,
        status = "idle",
        nextInteractAt = 0,
        nextTaskAt = 0,
        dialogContext = nil
    }
    fns.cgs_44.PowerPlantState = {
        Placed = {},
        ActiveTier = nil,
        received = false,
        nextActionAt = 0,
        equippedGuid = nil,
        equippedKey = nil,
        equippedName = nil,
        hasInstallable = false,
        priorityUntil = 0,
        status = "idle",
        uraniumNextAt = 0,
        uraniumStatus = "idle"
    }
    fns.cgs_44.Track(fns.cgs_44.PowerPlantPartsStatus.OnClientEvent:Connect(function(C0)
        if type(C0) ~= "table" then
            return
        end
        local PowerPlantState = fns.cgs_44.PowerPlantState
        local bp1 = type(C0.Placed) == "table" and C0.Placed
        local bp2 = {}
        local bp3 = bp1
        local bqa = if bp3 then 1 else 0
        local bp8 = 3478 * bqa + 4053 * (1 - bqa)
        local bp9 = 1918 * bqa + 1213 * (1 - bqa)
        if not ((bp8 * 1848 + bp9 * 613 + bp8 * bp9) % 16777213 == 14273882) then
            bp3 = bp2
        end
        PowerPlantState.Placed = bp3
        fns.cgs_44.PowerPlantState.ActiveTier = tonumber(C0.ActiveTier)
        fns.cgs_44.PowerPlantState.received = true
        if fns.cgs_44.PowerPlantState.equippedKey and fns.cgs_44.PowerPlantState.Placed[fns.cgs_44.PowerPlantState.equippedKey] then
            fns.cgs_44.PowerPlantState.equippedGuid = nil
            fns.cgs_44.PowerPlantState.equippedKey = nil
            fns.cgs_44.PowerPlantState.equippedName = nil
        end
    end))
    bzw = function()
        local bqn = os.clock()
        if bqn < (fns.cgs_44.PowerPlantState.nextBootstrapAt or 0) then
            return
        end
        fns.cgs_44.PowerPlantState.nextBootstrapAt = os.clock() + 2
        if not getconnections or not debug or not debug.getupvalues then
            return
        end
        pcall(function()
            for i, v in ipairs(getconnections(fns.cgs_44.PowerPlantPartsStatus.OnClientEvent)) do
                local Function = v.Function
                if type(Function) == "function" then
                    local bqf = debug.getupvalues(Function)
                    local bqe_1 = type(bqf[1]) == "table" and type(bqf[3]) == "boolean" and type(bqf[4]) == "table"
                    if bqe_1 then
                        fns.cgs_44.PowerPlantState.Placed = table.clone(bqf[1])
                        fns.cgs_44.PowerPlantState.ActiveTier = tonumber(bqf[2])
                        fns.cgs_44.PowerPlantState.received = bqf[3]
                        return
                    end
                end
            end
        end)
    end
    bzw()
    fns.cgs_44.Track(fns.a2X.Events.UI.StartQuestDialog.OnClientEvent:Connect(function(De)
        if type(De) == "table" then
            bzQ.dialogContext = De
        end
    end))
    bzD = function(Dh, Di)
        local bqr = Dh and Dh.Value
        local bqs = fns.cgs_64(bqr)
        local bqr_1 = next(bqs) == nil
        local bqw = if bqr_1 then 1 else 0
        local bqu = 1757 * bqw + 1115 * (1 - bqw)
        local bqv = 2610 * bqw + 1080 * (1 - bqw)
        if not ((bqu * 2352 + bqv * 2340 + bqu * bqv) % 16777213 == 14825634) then
            bqr_1 = bqs[Di] == true
        end
        return bqr_1
    end
    bzS = function(Dp)
        local Areas = workspace:FindFirstChild("Areas")
        if Areas then
            for i, child in ipairs(Areas:GetChildren()) do
                local bqx_1 = child:FindFirstChild(Dp)
                if bqx_1 then
                    return bqx_1
                end
            end
        end
        local bqx_2 = workspace:FindFirstChild(Dp, true)
        local bqy = bqx_2 and bqx_2:IsA("Model")
        if bqy then
            return bqx_2
        end
        local Mall_Shop_NPCs = workspace:FindFirstChild("Mall - Shop NPCs")
        local bqy_1 = Mall_Shop_NPCs and Mall_Shop_NPCs:FindFirstChild("Quest NPC")
        local bqx_4 = bqy_1
        if bqy_1 then
            bqy_1 = bqx_4:FindFirstChild(Dp)
        end
        return bqy_1
    end
    bzY = function()
        local PlayerGui = fns.cgs_74:FindFirstChildOfClass("PlayerGui")
        local bqK = PlayerGui and PlayerGui:FindFirstChild("QuestSystemUI")
        local bqJ_1 = bqK
        if bqK then
            bqK = bqJ_1:FindFirstChild("QuestContainer")
        end
        local bqJ_2 = bqK
        local bqK_1 = { Quests = {}, Rewards = {}, Lines = {} }
        local bqL = bqJ_2 and bqJ_2:GetChildren()
        local bqM = bqL or {}
        for i, v in ipairs(bqM) do
            if v:IsA("Frame") then
                local bqJ_4 = v.Name:match("^Quest_(.-)_quest$")
                local bqL_1 = v.Name:match("^Quest_quest_reward_(.+)$")
                local Title = v:FindFirstChild("Title", true)
                local bqO_1 = { Npc = bqJ_4 or bqL_1, Title = Title and Title.Text or (bqJ_4 or bqL_1 or "Quest"), Tasks = {} }
                for i, descendant in ipairs(v:GetDescendants()) do
                    local bqM_4 = (descendant:IsA("TextLabel")) and descendant.Name == "TaskText"
                    if bqM_4 then
                        local bqM_5 = descendant.Text:gsub("<[^>]+>", "")
                        bqO_1.Tasks[#bqO_1.Tasks + 1] = bqM_5
                        bqK_1.Lines[#bqK_1.Lines + 1] = bqM_5
                    end
                end
                if bqL_1 then
                    bqK_1.Rewards[#bqK_1.Rewards + 1] = bqO_1
                elseif bqJ_4 then
                    bqK_1.Quests[#bqK_1.Quests + 1] = bqO_1
                end
            end
        end
        return bqK_1
    end
    bzB = function(DW)
        if DW.Text and DW.Text ~= "" then
            return DW.Text
        end
        local TextLabel = DW:FindFirstChildWhichIsA("TextLabel", true)
        return TextLabel and TextLabel.Text or ""
    end
    bzP = function(D0)
        local bq8 = D0:lower()
        local bq9 = bq8:find("thank", 1, true) ~= nil
        local brf = if bq9 then 1 else 0
        local brd = 156 * brf + 722 * (1 - brf)
        local bre = 379 * brf + 1186 * (1 - brf)
        if not ((brd * 2411 + bre * 3022 + brd * bre) % 16777213 == 1580578) then
            bq9 = bq8:find("claim", 1, true) ~= nil
        end
        if not bq9 then
            bq9 = bq8:find("collect", 1, true) ~= nil
        end
        if not bq9 then
            bq9 = bq8:find("continue", 1, true) ~= nil
        end
        if not bq9 then
            bq9 = bq8:find("got it", 1, true) ~= nil
        end
        local bra = bq8 == "okay"
        local brb = bq9
        local bri = if brb then 1 else 0
        local brg = 458 * bri + 2971 * (1 - bri)
        local brh = 203 * bri + 1163 * (1 - bri)
        if not ((brg * 3039 + brh * 418 + brg * brh) % 16777213 == 1569690) then
            brb = bra
        end
        return brb or bq8 == "ok"
    end
    bzH = function(D4)
        local brj
        local brk
        local brm_2
        local brl = not D4 or not D4.Parent
        local brl_1, brl_2
        if brl then
            return false
        elseif firesignal then
            pcall(firesignal, D4.Activated)
            task.wait(0.1)
            if not D4.Parent then
                return true
            end
            pcall(firesignal, D4.MouseButton1Click)
            task.wait(0.1)
            if not D4.Parent then
                return true
            end
            brl_1, brj = pcall(game.GetService, game, "VirtualInputManager")
            if brm_2 then
                brk = D4.AbsolutePosition + D4.AbsoluteSize / 2
                pcall(function()
                    brj:SendMouseButtonEvent(brk.X, brk.Y, 0, true, game, 0)
                    task.wait(0.05)
                    brj:SendMouseButtonEvent(brk.X, brk.Y, 0, false, game, 0)
                end)
                task.wait(0.15)
            end
            return not D4.Parent
        else
            brl_2, brj = pcall(game.GetService, game, "VirtualInputManager")
            brm_2 = brl_2 and brj
            if brm_2 then
                brk = D4.AbsolutePosition + D4.AbsoluteSize / 2
                pcall(function()
                    brj:SendMouseButtonEvent(brk.X, brk.Y, 0, true, game, 0)
                    task.wait(0.05)
                    brj:SendMouseButtonEvent(brk.X, brk.Y, 0, false, game, 0)
                end)
                task.wait(0.15)
            end
            return not D4.Parent
        end
    end
    bzW = function(Ec)
        local brs
        local PlayerGui = fns.cgs_74:FindFirstChildOfClass("PlayerGui")
        local brB = 1
        while true do
            if not (brB <= 40) then
                return false
            end
            brs = PlayerGui and PlayerGui:FindFirstChild("QuestOptions")
            local brt = brs
            if brt then
                brs = nil
                for i, descendant in ipairs(brt:GetDescendants()) do
                    local brt_1 = (descendant:IsA("TextButton")) and descendant.Visible
                    if brt_1 then
                        local brt_2 = bzB(descendant)
                        brs = brs or descendant
                        local bru_1 = bzZ[brt_2] == true
                        local brv = bzP(brt_2)
                        if Ec == true and bru_1 or Ec == false and brv or Ec == nil and (bru_1 or brv) then
                            return bzH(descendant)
                        end
                    end
                end
                local brt_6 = not Ec
                if brt_6 ~= false then
                    brt_6 = brs
                end
                if brt_6 then
                    break
                end
                task.wait(0.15)
                brB += 1
                continue
            end
            task.wait(0.15)
            brB += 1
        end
        return bzH(brs)
    end
    local function bz5_2()
        local PlayerGui = fns.cgs_74:FindFirstChildOfClass("PlayerGui")
        local brL = not PlayerGui or not PlayerGui:FindFirstChild("QuestOptions")
        if brL then
            return
        end
        if bzW(nil) then
            bzQ.status = "quest dialogue advanced"
        end
    end
    bzA = function(EA, EB)
        local brN
        local brR_3
        local brQ_3
        brN = bzS(EA)
        local brO = brN and brN:FindFirstChild("NPCQuestPrompt", true)
        local brP = brO
        if brO then
            local brQ_1 = (brP.Parent:IsA("BasePart")) and brP.Parent
            local brR_1 = brQ_1
            local brX = if brR_1 then 1 else 0
            local brV = 3707 * brX + 557 * (1 - brX)
            local brW = 2242 * brX + 1000 * (1 - brX)
            if not ((brV * 1383 + brW * 3344 + brV * brW) % 16777213 == 4157910) then
                brR_1 = brP:FindFirstAncestorWhichIsA("BasePart")
            end
            brO = brR_1
        end
        local brQ_2 = not brN
        local brR_2 = brO
        if not brQ_2 then
            brQ_2 = not brP
        end
        local br_ = if brQ_2 then 1 else 0
        local brY = 2486 * br_ + 1137 * (1 - br_)
        local brZ = 3356 * br_ + 2248 * (1 - br_)
        if not ((brY * 1734 + brZ * 2882 + brY * brZ) % 16777213 == 5548519) then
            brQ_2 = not brR_2
        end
        if not brQ_2 then
            brQ_2 = not fireproximityprompt
        end
        if brQ_2 then
            bzQ.status = "quest NPC unavailable: " .. tostring(EA)
            return
        end
        fns.cgs_65(brR_2.Position + Vector3.new(0, 0, 3))
        task.wait(0.25)
        bzQ.dialogContext = nil
        brQ_3, brR_3 = pcall(function()
            return fns.cgs_44.QuestPromptTriggered:InvokeServer(brN)
        end)
        if not (brQ_3 and brR_3 == true) then
            fireproximityprompt(brP, brP.HoldDuration)
        end
        bzQ.status = (EB and "getting quest from " or "claiming reward from ") .. EA
        local brO_3 = bzW(EB)
        local dialogContext = bzQ.dialogContext
        local brQ_4 = type(dialogContext) == "table" and dialogContext.NPCModel == brN and dialogContext.QuestName
        if brQ_4 then
            local SendQuestDialogResult = fns.cgs_44.SendQuestDialogResult
            local QuestName = dialogContext.QuestName
            local brT_1 = EB and "accept" or "decline"
            SendQuestDialogResult:FireServer(brN, QuestName, brT_1)
        end
        if brO_3 then
            task.wait(0.35)
        end
        local brO_4 = os.clock() + 1.5
        while true do
            local brP_3 = os.clock() < brO_4 and fns.cgs_74:GetAttribute("DialogNPC") == EA
            if brP_3 then
                task.wait(0.1)
                continue
            end
            break
        end
    end
    local function bz6_2(E3)
        local br0 = os.clock() < bzQ.nextInteractAt
        local br7 = if br0 then 1 else 0
        local br5 = 2608 * br7 + 1749 * (1 - br7)
        local br6 = 1874 * br7 + 3086 * (1 - br7)
        if not ((br5 * 2780 + br6 * 1308 + br5 * br6) % 16777213 == 14588824) then
            br0 = a3w.active
        end
        if not br0 then
            br0 = a3w.entryAttempt
        end
        if br0 or a1k then
            return
        end
        local br0_1 = bzY()
        local br1_1 = {}
        for i, v in ipairs(br0_1.Rewards) do
            br1_1[v.Npc] = true
        end
        if E3 or fns.Toggles2.AutoQuest.Value or fns.Toggles2.AutoClaimQuestRewards.Value then
            for i, v in ipairs(br0_1.Rewards) do
                bzQ.nextInteractAt = os.clock() + 4
                fns.cgs_28(bzA, v.Npc, false)
                return
            end
        end
        local br0_2 = not E3
        if br0_2 ~= false then
            br0_2 = not fns.Toggles2.AutoQuest.Value
        end
        if br0_2 then
            br0_2 = not fns.Toggles2.AutoGetQuests.Value
        end
        if br0_2 then
            return
        end
        local PlayerGui = fns.cgs_74:FindFirstChildOfClass("PlayerGui")
        for i, v in ipairs(bzL) do
            local br2_1 = PlayerGui and PlayerGui:FindFirstChild("QuestExclamation_" .. v)
            local br3 = br2_1
            if br2_1 then
                br2_1 = br3:IsA("BillboardGui")
            end
            if br2_1 then
                br2_1 = br3.Enabled
            end
            if br2_1 then
                br2_1 = not br1_1[v]
            end
            if br2_1 then
                br2_1 = bzD(fns.Options.QuestNpcFilter, v)
            end
            if br2_1 then
                bzQ.nextInteractAt = os.clock() + 5
                fns.cgs_28(bzA, v, true)
                return
            end
        end
    end
    bzy = function(Fq)
        local bso = bz0(Fq)
        for i, v in ipairs(bzO) do
            if bso == v.Text then
                return v.Key
            end
        end
        local bsp = Fq:lower()
        if bsp:find("clean", 1, true) then
            return "clean_items"
        elseif bsp:find("repair", 1, true) then
            local bso_1 = (bsp:find("jurassic", 1, true)) and "repair_limited"
            return bso_1 or "repair_items"
        elseif bsp:find("grade", 1, true) then
            local bsA_1 = if bsp:find("petrol pump", 1, true) then 1 else 0
            if bsA_1 == 1 then
                return "grade_petrol_pump"
            elseif bsp:find("weapon", 1, true) then
                return "grade_weapon_threestar"
            else
                return "grade_threestar"
            end
        elseif bsp:find("energy drink", 1, true) then
            return "use_drink"
        elseif bsp:find("fish", 1, true) then
            local bso_2 = (bsp:find("$", 1, true)) and "fish_value"
            local bsq_2 = bso_2
            local bsA_2 = if bsq_2 then 1 else 0
            local bsy = 615 * bsA_2 + 1651 * (1 - bsA_2)
            local bsz = 2888 * bsA_2 + 2566 * (1 - bsA_2)
            if not ((bsy * 1393 + bsz * 1762 + bsy * bsz) % 16777213 == 7721471) then
                bsq_2 = "fish_items"
            end
            return bsq_2
        elseif bsp:find("sell", 1, true) then
            return "sell_items"
        else
            local bso_3 = (bsp:find("install", 1, true)) and bsp:find("plant", 1, true)
            if bso_3 then
                return "install_t1"
            elseif bsp:find("win", 1, true) then
                return "win_auctions"
            elseif bsp:find("find", 1, true) then
                return "find_items"
            else
                return "unknown"
            end
        end
    end
    bzG = function(Fx, Fy)
        local bsB = tostring(Fy):lower()
        local bsC = (bsB:find("back alley", 1, true)) or bsB:find("shop front", 1, true)
        if bsC then
            return "Back Alley"
        end
        local bsC_1 = (bsB:find("junk yard", 1, true))
        local bsI = if bsC_1 then 1 else 0
        local bsG = 278 * bsI + 1902 * (1 - bsI)
        local bsH = 3749 * bsI + 1514 * (1 - bsI)
        if not ((bsG * 1281 + bsH * 2436 + bsG * bsH) % 16777213 == 10530904) then
            bsC_1 = bsB:find("junkyard", 1, true)
        end
        if bsC_1 or Fx == "unlock_safes" then
            return "Junk Yard"
        end
        local bsC_2 = (bsB:find("farmyard", 1, true)) or bsB:find("stable garage", 1, true)
        local bsI_1 = if bsC_2 then 1 else 0
        local bsG_1 = 2579 * bsI_1 + 2472 * (1 - bsI_1)
        local bsH_1 = 1833 * bsI_1 + 528 * (1 - bsI_1)
        if not ((bsG_1 * 262 + bsH_1 * 799 + bsG_1 * bsH_1) % 16777213 == 6867572) then
            bsC_2 = bsB:find("barn garage", 1, true)
        end
        if bsC_2 then
            return "Farmyard"
        end
        local bsC_3 = (bsB:find("lucky beach", 1, true)) or bsB:find("beach hut", 1, true) or bsB:find("surf shack", 1, true)
        if bsC_3 then
            return "Lucky Beach"
        end
        local bsC_4 = (bsB:find("shipyard", 1, true))
        local bsI_2 = if bsC_4 then 1 else 0
        local bsG_2 = 3506 * bsI_2 + 397 * (1 - bsI_2)
        local bsH_2 = 1958 * bsI_2 + 1019 * (1 - bsI_2)
        if not ((bsG_2 * 724 + bsH_2 * 4054 + bsG_2 * bsH_2) % 16777213 == 563611) then
            bsC_4 = bsB:find("container garage", 1, true)
        end
        if not bsC_4 then
            bsC_4 = bsB:find("warehouse garage", 1, true)
        end
        if not bsC_4 then
            bsC_4 = bsB:find("boat house", 1, true)
        end
        if bsC_4 then
            return "Shipyard"
        elseif bsB:find("jurassic", 1, true) then
            return "Jurassic"
        else
            local bsC_5 = (bsB:find("power plant", 1, true)) or Fx:sub(1, 8) == "install_"
            if bsC_5 then
                return "Power Plant"
            end
            local bsB_1 = bzE[Fx]
            local bsC_6 = bsB_1 and bsB_1.Definition
            local bsB_2 = bsC_6
            if bsC_6 then
                bsC_6 = bsB_2.ItemId
            end
            if bsC_6 then
                bsC_6 = fns.cgs_101(bsB_2.ItemId)
            end
            local bsB_3 = bsC_6
            if bsC_6 then
                bsC_6 = type(bsB_3.Area) == "string"
            end
            if bsC_6 then
                return bsB_3.Area
            elseif Fx == "feed_bobby" then
                return "Farmyard"
            else
                return nil
            end
        end
    end
    bzF = function(FN)
        local bsJ = fns.Options.QuestTaskFilter and fns.Options.QuestTaskFilter.Value
        local bsK = fns.cgs_64(bsJ)
        local bsJ_1 = next(bsK) == nil or bsK[FN]
        if bsJ_1 then
            return true
        end
        if FN == "find_items" then
            for k in pairs(bsK) do
                if k:sub(1, 5) == "find_" then
                    return true
                end
            end
        elseif FN == "win_auctions" then
            for k in pairs(bsK) do
                if k:sub(1, 4) == "win_" then
                    return true
                end
            end
        end
        return false
    end
    bzJ = function(FU)
        local bsU = bzE[FU]
        local bsV = bsU and bsU.LuckQuest and bsU.LuckQuest.CollectItems
        if type(bsV) ~= "table" then
            return false
        end
        local bsV_1 = {}
        local bsX = bsV.Rarities or {}
        for i, v in ipairs(bsX) do
            bsV_1[v] = true
        end
        local bsW_1 = 0
        local bsX_1 = a18(fns.cgs_44.GetPlayerInventory)
        local bsY = type(bsX_1) == "table" and bsX_1
        local bsZ = bsY or {}
        for k, v in pairs(bsZ) do
            local bsX_3 = fns.cgs_101(v.ItemId)
            local bsY_1 = bsX_3 and bsX_3.Category == bsV.Category
            if bsY_1 then
                local bsZ_1 = next(bsV_1) == nil or bsV_1[bsX_3.Rarity]
                bsY_1 = bsZ_1
            end
            if bsY_1 then
                bsY_1 = not fns.cgs_44.IgnoreFavoritedItem(v)
            end
            if bsY_1 then
                bsW_1 += 1
            end
        end
        local bsV_2 = (tonumber(bsV.Count)) or 1
        return bsW_1 >= bsV_2
    end
    bz3 = function(Gd)
        local btc = Gd and Gd.LuckQuest and Gd.LuckQuest.GrantItems
        if type(btc) ~= "table" then
            return false
        end
        local btc_1 = {}
        for i, v in ipairs(btc) do
            local btd_1 = tostring(v.ItemId)
            local bte_1 = btc_1[tostring(v.ItemId)] or 0
            local btf_1 = (tonumber(v.Count)) or 1
            btc_1[btd_1] = bte_1 + btf_1
        end
        local btd_2 = a18(fns.cgs_44.GetPlayerInventory)
        local bte_2 = type(btd_2) == "table" and btd_2
        local btf_2 = bte_2 or {}
        for k, v in pairs(btf_2) do
            local btd_4 = tostring(v.ItemId)
            local bte_3 = btc_1[btd_4] and not fns.cgs_44.EntryHasMutation(v, "Dirty")
            if bte_3 then
                btc_1[btd_4] -= 1
            end
        end
        for k, v in pairs(btc_1) do
            if v > 0 then
                return false
            end
        end
        return true
    end
    bz1 = function(Gr)
        for i, child in ipairs(workspace:GetChildren()) do
            local attr = child:GetAttribute("VehicleGUID")
            local btB = (child:IsA("Model")) and child:GetAttribute("OwnerUserId") == fns.cgs_74.UserId and type(attr) == "string"
            if btB then
                local btB_1 = a18(fns.cgs_44.GetVehicleItems, attr)
                local btA_1 = type(btB_1) == "table"
                if btA_1 then
                    btA_1 = btB_1.items or btB_1
                end
                local btC_2 = btA_1 or {}
                for k, v in pairs(btC_2) do
                    if tostring(v.ItemId) == tostring(Gr) then
                        return child
                    end
                end
            end
        end
        return nil
    end
    bzX = function(GB)
        local btQ
        local btR = bzE[GB]
        local btS = btR and btR.LuckQuest
        if type(btS) ~= "table" then
            return false
        elseif GB == "feed_bobby" then
            if bzJ(GB) then
                bzQ.nextTaskAt = os.clock() + 5
                local btS_1 = btS.HandInNPC or "Bobby"
                fns.cgs_28(bzA, btS_1, false)
            end
            return true
        elseif GB == "deliver_tanks" then
            if not bz3(btR) then
                btQ = {}
                local btS_2 = btS.GrantItems or {}
                for i, v in ipairs(btS_2) do
                    btQ[tostring(v.ItemId)] = true
                end
                a33(fns.cgs_44.PROCESSORS[3], 0, "Any", true, false, function(GV)
                    return btQ[tostring(GV.ItemId)] == true
                end)
            else
                bzQ.nextTaskAt = os.clock() + 5
                local btR_2 = btS.HandInNPC or "Terry"
                fns.cgs_28(bzA, btR_2, false)
            end
            return true
        elseif GB == "tow_bobby" then
            local Scenery = btS.Scenery
            local btS_3 = type(Scenery) == "table" and Scenery.StageAttribute
            local btS_4 = type(btS_3) == "string" and fns.cgs_74:GetAttribute(btS_3) == "carrying"
            if btS_4 then
                local LuckQuests = workspace:FindFirstChild("_LuckQuests")
                local btS_5 = LuckQuests
                local split = string.split
                local btV = btS.Arrival and btS.Arrival.ZonePath or ""
                for i, v in ipairs(split(btV, "/")) do
                    local btR_7 = btS_5 and btS_5:FindFirstChild(v)
                    btS_5 = btR_7
                end
                local btR_8 = btS_5 and btS_5:IsA("BasePart")
                if btR_8 then
                    local btR_9 = btS.SessionCargo and btS.SessionCargo.ItemId
                    local btT_1 = bz1(btR_9)
                    bzQ.nextTaskAt = os.clock() + 5
                    fns.cgs_28(a2g, btS_5.Position, true, btT_1, true)
                end
            else
                bzQ.nextTaskAt = os.clock() + 5
                fns.cgs_28(bzA, "Bobby", false)
            end
            return true
        else
            return false
        end
    end
    bzI = function()
        local bud_1
        local buc_1
        local buj = if not fns.cgs_44.SwitchAccessoryLoadout(fns.Options.LuckDrinkLoadout, "Luck drink") then 1 else 0
        if buj == 1 then
            return false
        end
        local bub = a18(fns.cgs_44.GetPlayerInventory)
        if type(bub) ~= "table" then
            return false
        end
        bud_1, buc_1 = nil, -math.huge
        for k, v in pairs(bub) do
            local bub_1 = fns.cgs_101(v.ItemId)
            local bue = bub_1 and tonumber(bub_1.EnergyDrinkId)
            local bue_1 = not fns.cgs_44.IgnoreFavoritedItem(v) and bue and bue > buc_1
            if bue_1 then
                bud_1, buc_1 = k, bue
            end
        end
        if bud_1 then
            fns.cgs_44.UseEnergyDrink:FireServer(bud_1)
            return true
        end
        return false
    end
    local function bz7_6()
        local bus_1
        local bur_1
        local buq = os.clock() < bzQ.nextTaskAt or a3w.active or a3w.entryAttempt
        if buq then
            return
        end
        bzQ.nextTaskAt = os.clock() + 1
        local buq_1 = bzY()
        for i, v in ipairs(buq_1.Lines) do
            bus_1, bur_1 = v:match("(%d+)%s*/%s*(%d+)")
            local but = not bus_1 or tonumber(bus_1) < tonumber(bur_1)
            if but then
                local bur_2 = bzy(v)
                if bzF(bur_2) then
                    if bur_2 == "clean_items" then
                        a2F()
                    else
                        if bur_2 == "repair_items" or bur_2 == "repair_limited" then
                            a33(fns.cgs_44.PROCESSORS[2], 0, "Any")
                        elseif bur_2:find("grade", 1, true) then
                            a33(fns.cgs_44.PROCESSORS[1], 0, "Any")
                        elseif bur_2 == "use_drink" then
                            if bzI() then
                                bzQ.nextTaskAt = os.clock() + 5
                            end
                        else
                            if bur_2 == "fish_items" or bur_2 == "fish_value" then
                                fns.cgs_44.DoFishing()
                            else
                                if bur_2 == "unlock_safes" and fns.cgs_44.RunSafes then
                                    fns.cgs_44.RunSafes()
                                else
                                    if bur_2 == "sell_items" and fns.cgs_44.DoQuestStocking then
                                        fns.cgs_44.DoQuestStocking(bzG(bur_2, v))
                                    elseif not bzX(bur_2) then
                                        local bus_6 = bur_2:sub(1, 8) == "install_" and fns.cgs_44.DoPowerPlantAutomation
                                        if bus_6 then
                                            fns.cgs_44.DoPowerPlantAutomation()
                                        end
                                    end
                                end
                            end
                        end
                    end
                    bzQ.status = "working on " .. bur_2
                    return
                end
            end
        end
        local bus_7 = #buq_1.Rewards > 0 and "reward ready"
        if not bus_7 then
            local buq_2 = #buq_1.Quests > 0 and "quests active"
            local buG = if buq_2 then 1 else 0
            local buE = 2138 * buG + 2254 * (1 - buG)
            local buF = 916 * buG + 2458 * (1 - buG)
            if not ((buE * 1625 + buF * 3775 + buE * buF) % 16777213 == 8890558) then
                buq_2 = "no active quests"
            end
            bus_7 = buq_2
        end
        bzQ.status = bus_7
    end
    local function bz8_3()
        local buI_1
        local buH = bzY()
        local buH_1
        for i, v in ipairs(buH.Lines) do
            buI_1, buH_1 = v:match("(%d+)%s*/%s*(%d+)")
            local buJ = not buI_1 or tonumber(buI_1) < tonumber(buH_1)
            if buJ then
                local buH_2 = bzy(v)
                local buI_2 = buH_2:sub(1, 5) == "find_" or buH_2:sub(1, 4) == "win_" or buH_2 == "unlock_safes" or buH_2 == "sell_items"
                if not buI_2 then
                    local buJ_1 = buH_2 == "feed_bobby" and not bzJ(buH_2)
                    buI_2 = buJ_1
                end
                if not buI_2 then
                    buI_2 = buH_2:sub(1, 8) == "install_"
                end
                local buJ_2 = buI_2 and bzF(buH_2)
                if buJ_2 then
                    return true
                end
            end
        end
        return false
    end
    local function bz9()
        local buT_1
        local buR = {}
        local buS = bzY()
        local buS_1
        for i, v in ipairs(buS.Lines) do
            buS_1, buT_1 = v:match("(%d+)%s*/%s*(%d+)")
            local buU = bzy(v)
            local buV = not buS_1 or tonumber(buS_1) < tonumber(buT_1)
            local buS_2 = buV and bzF(buU)
            if buS_2 then
                local buS_3 = bzG(buU, v)
                if buS_3 then
                    buR[buS_3] = true
                end
            end
        end
        local buS_4 = {}
        for k in pairs(buR) do
            buS_4[#buS_4 + 1] = k
        end
        if #buS_4 == 0 then
            return nil
        end
        table.sort(buS_4)
        local buR_1 = buS_4[math.floor(os.clock() / 60) % #buS_4 + 1]
        return { [buR_1] = true }
    end
    bzM = function()
        bzw()
        if fns.cgs_44.PowerPlantState.ActiveTier then
            return fns.cgs_44.PowerPlantState.ActiveTier
        end
        local bu6 = bzQ.active["Mad Scientist"]
        local bu7 = type(bu6) == "table" and tonumber(bu6.QuestIndex) == 1
        if bu7 then
            return 5
        end
        local Engineer = bzQ.active.Engineer
        local bu7_1 = type(Engineer) == "table" and tonumber(Engineer.QuestIndex)
        if bu7_1 then
            return tonumber(Engineer.QuestIndex)
        end
        for i, v in ipairs(bzY().Lines) do
            local bu6_2 = bzy(v)
            local bu7_2 = bu6_2:match("^install_t(%d+)$")
            if bu7_2 then
                return tonumber(bu7_2)
            end
        end
        return nil
    end
    bzx = function(Ik)
        local Areas = workspace:FindFirstChild("Areas")
        local bvg = Areas and Areas:FindFirstChild("Power Plant")
        local bvf_1 = bvg
        if bvg then
            bvg = bvf_1:FindFirstChild("PartsToFind")
        end
        local bvf_2 = bvg
        local bvg_1 = not Ik
        local bvh = not bvf_2
        local bvl = if bvh then 1 else 0
        local bvj = 470 * bvl + 2981 * (1 - bvl)
        local bvk = 207 * bvl + 2719 * (1 - bvl)
        if not ((bvj * 85 + bvk * 1972 + bvj * bvk) % 16777213 == 545444) then
            bvh = bvg_1
        end
        if bvh then
            return nil
        end
        local bvg_2 = Ik == 5 and "Weather Machine"
        local bvh_1 = bvg_2 or "Tier" .. tostring(Ik)
        return bvf_2:FindFirstChild(bvh_1)
    end
    bzN = function(Is)
        local attr = Is:GetAttribute("PPKey")
        local bvn = type(attr) == "string" and fns.cgs_44.PowerPlantState.Placed[attr] == true
        return bvn
    end
    bz2 = function()
        local bvp = {}
        local bvq = bzx(bzM())
        if not bvq then
            return bvp
        end
        for i, child in ipairs(bvq:GetChildren()) do
            local bvq_1 = (child:IsA("Model")) and not bzN(child)
            if bvq_1 then
                local Name = child.Name
                bvp[Name] = (bvp[child.Name] or 0) + 1
            end
        end
        return bvp
    end
    fns.cgs_44.PowerPlantMissingNames = function()
        local bvz = {}
        for k, v in pairs(bz2()) do
            if v > 0 then
                bvz[k] = true
            end
        end
        return bvz
    end
    fns.cgs_44.PowerPlantMutationAllowed = function(IJ)
        local PowerPlantInstallMutations = fns.Options.PowerPlantInstallMutations
        local bvI = PowerPlantInstallMutations and fns.cgs_64(PowerPlantInstallMutations.Value)
        local bvJ = bvI or {}
        if not next(bvJ) then
            return true
        end
        local bvI_1 = false
        for k in pairs(bvJ) do
            if fns.cgs_44.EntryHasMutation(IJ, k) then
                bvI_1 = true
                break
            end
        end
        if (fns.Options.PowerPlantMutationMode and fns.Options.PowerPlantMutationMode.Value) == "Install selected mutations only" then
            return bvI_1
        end
        return not bvI_1
    end
    fns.cgs_44.QuestPowerPlantActive = function()
        local bvT_1
        local bvS_1
        for i, v in ipairs(bzY().Lines) do
            bvT_1, bvS_1 = v:match("(%d+)%s*/%s*(%d+)")
            local bvU = not bvT_1 or tonumber(bvT_1) < tonumber(bvS_1)
            local bvS_2 = bvU and bzy(v):sub(1, 8) == "install_"
            if bvS_2 then
                return true
            end
        end
        return false
    end
    bzV = function()
        local bv1 = os.clock()
        local bv2 = fns.cgs_44.PowerPlantState.vehicleInventory
        if bv2 then
            bv2 = bv1 - (fns.cgs_44.PowerPlantState.vehicleInventoryAt or 0) < 2
        end
        if bv2 then
            return fns.cgs_44.PowerPlantState.vehicleInventory
        end
        local bv2_1 = {}
        local bv3_2 = a18(fns.cgs_44.GetOwnedVehicles)
        local bv4 = type(bv3_2) == "table" and bv3_2.vehicles
        local bv5 = bv4 or {}
        for k, v in pairs(bv5) do
            local bv3_4 = type(k) == "string" and k
            local bv4_1 = bv3_4
            if not bv4_1 then
                local bv3_5 = type(v) == "table"
                if bv3_5 then
                    bv3_5 = v.Guid or v.GUID or v.VehicleGUID
                end
                bv4_1 = bv3_5
            end
            local bv3_6 = bv4_1
            local bv4_2 = bv3_6 ~= ""
            local bv5_2 = type(bv3_6) == "string" and bv4_2
            if bv5_2 then
                local bv4_3 = a18(fns.cgs_44.GetVehicleItems, bv3_6)
                local bv5_3 = type(bv4_3) == "table"
                if bv5_3 then
                    bv5_3 = bv4_3.items or bv4_3
                end
                local bv6_2 = bv5_3 or {}
                for k, v in pairs(bv6_2) do
                    if type(v) == "table" then
                        local bv4_5 = fns.cgs_101(v.ItemId)
                        local bv5_4 = bv4_5 and not fns.cgs_44.IgnoreFavoritedItem(v)
                        if bv5_4 then
                            local bv6_3 = not fns.cgs_44.PowerPlantPartNames[bv4_5.Name] or fns.cgs_44.PowerPlantMutationAllowed(v)
                            bv5_4 = bv6_3
                        end
                        if bv5_4 then
                            local Name = bv4_5.Name
                            bv2_1[Name] = bv2_1[bv4_5.Name] or {}
                            bv2_1[bv4_5.Name][#bv2_1[bv4_5.Name] + 1] = { Guid = k, VehicleGuid = bv3_6, Entry = v }
                        end
                    end
                end
            end
        end
        fns.cgs_44.PowerPlantState.vehicleInventory = bv2_1
        fns.cgs_44.PowerPlantState.vehicleInventoryAt = bv1
        return bv2_1
    end
    fns.cgs_44.QuestAuctionTargets = function()
        if not fns.cgs_44.QuestPowerPlantActive() then
            return nil
        end
        local bwo = bz2()
        if fns.Toggles2.PowerPlantInventoryAwareBids and fns.Toggles2.PowerPlantInventoryAwareBids.Value then
            local bwp_1 = a18(fns.cgs_44.GetPlayerInventory)
            if type(bwp_1) == "table" then
                for k, v in pairs(bwp_1) do
                    local bwp_2 = fns.cgs_101(v.ItemId)
                    local bwq = bwp_2 and bwo[bwp_2.Name] and not fns.cgs_44.IgnoreFavoritedItem(v) and fns.cgs_44.PowerPlantMutationAllowed(v)
                    if bwq then
                        bwo[bwp_2.Name] = math.max(0, bwo[bwp_2.Name] - 1)
                    end
                end
            end
            for k, v in pairs(bzV()) do
                if bwo[k] then
                    bwo[k] = math.max(0, bwo[k] - #v)
                end
            end
        end
        local bwp_3 = {}
        for k, v in pairs(bwo) do
            if v > 0 then
                bwp_3[k] = true
            end
        end
        local bwo_1 = (next(bwp_3)) and bwp_3
        return bwo_1 or nil
    end
    bzK = function()
        local bwL = a18(fns.cgs_44.GetPlayerInventory)
        local bwM = {}
        if type(bwL) ~= "table" then
            return bwM
        end
        for k, v in pairs(bwL) do
            local bwL_1 = fns.cgs_101(v.ItemId)
            local bwN = bwL_1 and not fns.cgs_44.IgnoreFavoritedItem(v)
            if bwN then
                local bwO_1 = not fns.cgs_44.PowerPlantPartNames[bwL_1.Name] or fns.cgs_44.PowerPlantMutationAllowed(v)
                bwN = bwO_1
            end
            if bwN then
                local Name = bwL_1.Name
                bwM[Name] = bwM[bwL_1.Name] or {}
                table.insert(bwM[bwL_1.Name], { Guid = k, Entry = v })
            end
        end
        return bwM
    end
    fns.cgs_44.PowerPlantAutomationEnabled = function()
        local bwY = fns.Toggles2.AutoInstallPowerPlantParts and fns.Toggles2.AutoInstallPowerPlantParts.Value
        if not bwY then
            local bwX_1 = fns.Toggles2.AutoQuest and fns.Toggles2.AutoQuest.Value and fns.cgs_44.QuestPowerPlantActive()
            bwY = bwX_1
        end
        return bwY
    end
    fns.cgs_44.PowerPlantEntryNeeded = function(JR)
        local bw_ = not fns.cgs_44.PowerPlantAutomationEnabled() or not fns.cgs_44.PowerPlantMutationAllowed(JR)
        if bw_ then
            return false
        end
        local bw__1 = type(JR) == "table" and JR.ItemId
        local bw0 = fns.cgs_101(bw__1)
        local bw__2 = bw0 ~= nil
        if bw__2 then
            local bw1 = bz2()[bw0.Name] or 0
            bw__2 = bw1 > 0
        end
        return bw__2
    end
    bzC = function(J_)
        local bw6 = bzx(bzM())
        if not bw6 then
            return nil
        end
        for i, child in ipairs(bw6:GetChildren()) do
            local attr = child:GetAttribute("PPKey")
            local bw7 = (child:IsA("Model")) and not bzN(child)
            if bw7 then
                local bw7_1 = J_[child.Name]
                if bw7_1 and bw7_1[1] then
                    return child, bw7_1[1]
                end
                local bw7_2 = type(attr) == "string" and attr == fns.cgs_44.PowerPlantState.equippedKey and fns.cgs_44.PowerPlantState.equippedGuid
                if bw7_2 then
                    return child, { Guid = fns.cgs_44.PowerPlantState.equippedGuid, Entry = {} }
                end
            end
        end
        return nil
    end
    bzU = function()
        local bxg = bzC(bzK())
        fns.cgs_44.PowerPlantState.hasInstallable = bxg ~= nil
        fns.cgs_44.PowerPlantState.vehicleNeededName = nil
        if bxg then
            fns.cgs_44.PowerPlantState.priorityUntil = os.clock() + 4
        else
            for k, v in pairs(bz2()) do
                local bxh = bzV()[k]
                if v > 0 and bxh and #bxh > 0 then
                    fns.cgs_44.PowerPlantState.vehicleNeededName = k
                    break
                end
            end
        end
        return bxg ~= nil
    end
    fns.cgs_44.PowerPlantHasPriority = function()
        local bxq = (fns.cgs_44.PowerPlantAutomationEnabled()) and fns.cgs_44.PowerPlantState.hasInstallable
        if bxq then
            local bxr = os.clock()
            bxq = bxr < (fns.cgs_44.PowerPlantState.priorityUntil or 0)
        end
        return bxq
    end
    fns.cgs_44.PowerPlantLotMatches = function(Kp)
        local bxx = a1K(a3w.garage)
        if not bxx then
            return nil, "container not visible"
        end
        local bxy = {}
        for i, v in ipairs(bxx) do
            local bxz_1 = {}
            local bxB_1 = v.Mutators or {}
            for k in pairs(bxB_1) do
                bxz_1[#bxz_1 + 1] = tostring(k)
            end
            table.sort(bxz_1)
            local bxA_2 = {}
            local bxC = v.Signature or {}
            for k in pairs(bxC) do
                bxA_2[#bxA_2 + 1] = tostring(k)
            end
            table.sort(bxA_2)
            local bxB_3 = #bxy + 1
            local concat = table.concat
            local bxD_1 = v.Def and v.Def.Name or v.Name or "?"
            bxy[bxB_3] = concat({ bxD_1, table.concat(bxz_1, ","), table.concat(bxA_2, ",") }, "|")
        end
        table.sort(bxy)
        local bxz_2 = table.concat(bxy, ";")
        local bxy_1 = {}
        local bxB_4 = Kp or {}
        for k in pairs(bxB_4) do
            local bxA_4 = fns.cgs_24(k)
            if next(bxA_4) then
                bxy_1[k] = bxA_4
            end
        end
        for i, v in ipairs(bxx) do
            local bxB_5 = v.Name and Kp[v.Name] and v.Name
            if not bxB_5 then
                bxB_5 = v.Def and Kp[v.Def.Name] and v.Def.Name
            end
            local bxA_7 = bxB_5
            if not bxA_7 then
                for k, v2 in pairs(bxy_1) do
                    if a2T(v.Signature, v2) then
                        bxA_7 = k
                        break
                    end
                end
            end
            local bxB_6 = bxA_7 and fns.cgs_44.PowerPlantMutationAllowed({ Mutators = v.Mutators })
            if bxB_6 then
                return true, "matched " .. bxA_7, #bxx, bxz_2
            end
        end
        return false, "no eligible missing part", #bxx, bxz_2
    end
    bzz = function(KU)
        local PowerPlantPartPrompt = KU:FindFirstChild("PowerPlantPartPrompt", true)
        local bx7 = PowerPlantPartPrompt and PowerPlantPartPrompt:IsA("ProximityPrompt")
        return bx7 and PowerPlantPartPrompt or nil
    end
    bz_ = function()
        local byc_1
        local bya = bzx(bzM())
        local byb = not bya or not fireproximityprompt
        local byb_1
        if byb then
            fns.cgs_44.PowerPlantState.status = "no active Power Plant tier"
            return
        end
        local bya_1 = bzK()
        byc_1, byb_1 = bzC(bya_1)
        local bya_2 = not byb_1
        local byd = not byc_1
        local byj = if byd then 1 else 0
        local byh = 2678 * byj + 452 * (1 - byj)
        local byi = 3468 * byj + 1082 * (1 - byj)
        if not ((byh * 635 + byi * 3719 + byh * byi) % 16777213 == 7108113) then
            byd = bya_2
        end
        if byd then
            fns.cgs_44.PowerPlantState.hasInstallable = false
            fns.cgs_44.PowerPlantState.nextActionAt = os.clock() + 2
            fns.cgs_44.PowerPlantState.status = "waiting for missing Power Plant parts"
            return
        end
        fns.cgs_44.PowerPlantState.hasInstallable = true
        fns.cgs_44.PowerPlantState.priorityUntil = os.clock() + 4
        local attr = byc_1:GetAttribute("PPKey")
        fns.cgs_65(byc_1:GetPivot().Position)
        local byd_1 = nil
        local bym = 1
        while bym <= 30 do
            if fns.cgs_51.Unloaded then
                return
            end
            byd_1 = bzz(byc_1)
            if byd_1 then
                break
            end
            task.wait(0.1)
            bym += 1
        end
        if not byd_1 then
            fns.cgs_44.PowerPlantState.nextActionAt = os.clock() + 4
            fns.cgs_44.PowerPlantState.status = "waiting for " .. byc_1.Name .. " stall"
            return
        end
        if not byd_1.Enabled then
            fns.cgs_44.PowerPlantState.nextActionAt = os.clock() + 2
            fns.cgs_44.PowerPlantState.status = "waiting for " .. byc_1.Name .. " stall sync"
            return
        end
        local Guid = byb_1.Guid
        if fns.cgs_44.PowerPlantState.equippedGuid ~= Guid then
            fns.cgs_44.EquipItem:FireServer(Guid)
            fns.cgs_44.PowerPlantState.equippedGuid = Guid
            fns.cgs_44.PowerPlantState.equippedKey = attr
            fns.cgs_44.PowerPlantState.equippedName = byc_1.Name
            task.wait(0.6)
        end
        local byb_2 = (byd_1.Parent:IsA("BasePart")) and byd_1.Parent
        local bye_1 = byb_2 or byd_1:FindFirstAncestorWhichIsA("BasePart")
        if bye_1 then
            fns.cgs_65(bye_1.Position)
        end
        task.wait(0.15)
        pcall(fireproximityprompt, byd_1, byd_1.HoldDuration)
        local byb_4 = false
        local byx = 1
        while byx <= 20 do
            local bye_2 = type(attr) == "string" and fns.cgs_44.PowerPlantState.Placed[attr]
            if bye_2 or not byd_1.Parent or not byd_1.Enabled then
                byb_4 = true
                break
            end
            task.wait(0.1)
            byx += 1
        end
        if byb_4 then
            if type(attr) == "string" then
                fns.cgs_44.PowerPlantState.Placed[attr] = true
            end
            fns.cgs_44.PowerPlantState.equippedGuid = nil
            fns.cgs_44.PowerPlantState.equippedKey = nil
            fns.cgs_44.PowerPlantState.equippedName = nil
            fns.cgs_44.PowerPlantState.nextActionAt = os.clock() + 0.75
            fns.cgs_44.PowerPlantState.status = "installed " .. byc_1.Name
        else
            fns.cgs_44.PowerPlantState.nextActionAt = os.clock() + 2.5
            fns.cgs_44.PowerPlantState.status = "waiting for " .. byc_1.Name .. " confirmation"
        end
        bzQ.status = fns.cgs_44.PowerPlantState.status
    end
    fns.cgs_44.DoPowerPlantAutomation = function()
        local byA = os.clock() < fns.cgs_44.PowerPlantState.nextActionAt or a3w.active or a3w.entryAttempt
        if byA then
            return
        end
        fns.cgs_44.PowerPlantState.nextActionAt = os.clock() + 1
        if not bzU() then
            local PowerPlantState = fns.cgs_44.PowerPlantState
            PowerPlantState.status = fns.cgs_44.PowerPlantState.vehicleNeededName and "unload " .. fns.cgs_44.PowerPlantState.vehicleNeededName .. " from vehicle" or "waiting for missing Power Plant parts"
            return
        end
        if a1k then
            return
        end
        fns.cgs_28(bz_)
    end
    bzT = function()
        local byS
        local byR
        byR = nil
        byS = nil
        local byT = bzK()
        local byU = byT["Uranium Ore"]
        if not byU or not byU[1] or not fireproximityprompt then
            fns.cgs_44.PowerPlantState.uraniumStatus = "no Uranium Ore to feed"
            return
        end
        byR, byS = nil, nil
        local function byT_2(Lm)
            local byE = Lm:FindFirstChild("UraniumDepositPrompt", true)
            local byF = byE and byE:IsA("ProximityPrompt")
            if not byF then
                byE = nil
                for i, descendant in ipairs(Lm:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        local byF_1 = (descendant.Name .. " " .. tostring(descendant.ObjectText) .. " " .. tostring(descendant.ActionText)):lower()
                        local byG_1 = (byF_1:find("uranium")) or byF_1:find("deposit")
                        if byG_1 then
                            byE = descendant
                            if descendant.Enabled then
                                break
                            end
                        elseif not byE then
                            byE = descendant
                        end
                    end
                end
            end
            local byF_2 = byE and byE:IsA("ProximityPrompt")
            if byF_2 then
                local byF_3 = not byS
                if not byF_3 then
                    byF_3 = byE.Enabled and not byS.Enabled
                end
                if byF_3 then
                    byR, byS = Lm, byE
                end
            end
        end
        for i, v in ipairs(a34:GetTagged("UraniumDeposit")) do
            byT_2(v)
            if byS and byS.Enabled then
                break
            end
        end
        if not byS then
            for i, descendant in ipairs(workspace:GetDescendants()) do
                local byV_2 = (descendant:IsA("Model")) and descendant.Name:lower():find("uranium")
                if byV_2 then
                    byT_2(descendant)
                    if byS and byS.Enabled then
                        break
                    end
                end
            end
        end
        if not byS then
            fns.cgs_44.PowerPlantState.uraniumStatus = "uranium deposit machine unavailable"
            return
        end
        if not byS.Enabled then
            fns.cgs_44.PowerPlantState.uraniumStatus = "uranium deposit locked until weather quest is complete"
            return
        end
        if not fns.cgs_73() then
            fns.cgs_44.PowerPlantState.uraniumStatus = "leaving vehicle to feed uranium"
            return
        end
        local byT_3 = (tonumber(fns.cgs_74:GetAttribute("WeatherUraniumKg")))
        local bzd = if byT_3 then 1 else 0
        local bzb = 1663 * bzd + 2437 * (1 - bzd)
        local bzc = 2060 * bzd + 2094 * (1 - bzd)
        if not ((bzb * 944 + bzc * 2828 + bzb * bzc) % 16777213 == 10821332) then
            byT_3 = 0
        end
        local byV_4 = byT_3
        fns.cgs_44.EquipItem:FireServer(byU[1].Guid)
        task.wait(0.6)
        if not byS.Parent or not byS.Enabled then
            fns.cgs_44.PowerPlantState.uraniumStatus = "uranium deposit closed while equipping"
            return
        end
        local byT_5 = (byS.Parent:IsA("BasePart")) and byS.Parent
        local byW = byT_5 or byS:FindFirstAncestorWhichIsA("BasePart")
        if byW then
            fns.cgs_65(byW.CFrame * Vector3.new(0, 0, 4))
        elseif byR:IsA("Model") then
            fns.cgs_65(byR:GetPivot().Position + Vector3.new(0, 0, 4))
        end
        task.wait(0.15)
        local byT_7 = fns.cgs_74.Character and fns.cgs_74.Character:FindFirstChildOfClass("Humanoid")
        local byW_1 = byT_7
        if byT_7 then
            byT_7 = byW_1.SeatPart
        end
        if byT_7 then
            fns.cgs_44.PowerPlantState.uraniumStatus = "vehicle re-seated player; retrying uranium feed"
            return
        end
        pcall(fireproximityprompt, byS, byS.HoldDuration)
        local byT_8 = false
        local bzj = 1
        while bzj <= 6 do
            task.wait(0.25)
            local byW_2 = a18(fns.cgs_44.GetPlayerInventory)
            local byX_1 = (tonumber(fns.cgs_74:GetAttribute("WeatherUraniumKg"))) or 0
            local byY = byX_1 > byV_4
            if not byY then
                local byX_2 = type(byW_2) == "table" and byW_2[byU[1].Guid] == nil
                byY = byX_2
            end
            if byY then
                byT_8 = true
                break
            end
            bzj += 1
        end
        local PowerPlantState2 = fns.cgs_44.PowerPlantState
        local byU_1 = os.clock()
        local byX_3 = byT_8 and 0.5
        local bzg = if byX_3 then 1 else 0
        local bze = 3490 * bzg + 2479 * (1 - bzg)
        local bzf = 4075 * bzg + 1506 * (1 - bzg)
        if not ((bze * 1468 + bzf * 3321 + bze * bzf) % 16777213 == 16100932) then
            byX_3 = 2
        end
        PowerPlantState2.uraniumNextAt = byU_1 + byX_3
        local PowerPlantState = fns.cgs_44.PowerPlantState
        PowerPlantState.uraniumStatus = byT_8 and "fed Uranium Ore" or "uranium feed not acknowledged; retrying"
    end
    fns.cgs_44.DoFeedUranium = function()
        local bzm = os.clock() < fns.cgs_44.PowerPlantState.uraniumNextAt or a3w.active or a3w.entryAttempt
        if bzm or a1k then
            return
        end
        if fns.cgs_28(bzT) then
            fns.cgs_44.PowerPlantState.uraniumNextAt = math.max(fns.cgs_44.PowerPlantState.uraniumNextAt, os.clock() + 0.5)
        end
    end
    fns.cgs_44.Track(fns.cgs_44.QuestStateSync.OnClientEvent:Connect(function(L_)
        if type(L_) == "table" then
            bzQ.active = L_
            bzQ.status = "quest state synced"
        end
    end))
    fns.cgs_44.Track(fns.cgs_44.QuestTaskProgress.OnClientEvent:Connect(function(L1, L2, L3)
        local bzq = tostring(L1)
        local bzr = tostring(L2)
        local bzs = L3 or "+1"
        bzQ.status = ("%s: %s (%s)"):format(bzq, bzr, tostring(bzs))
    end))
    fns.cgs_44.Track(fns.cgs_44.NewQuestAccepted.OnClientEvent:Connect(function(L5)
        bzQ.accepted = bzQ.accepted + 1
        bzQ.status = "accepted " .. tostring(L5)
    end))
    fns.cgs_44.Track(fns.cgs_44.QuestCompleted.OnClientEvent:Connect(function(L7, L8, L9)
        bzQ.completed = bzQ.completed + 1
        local bzu = L9 or L7
        bzQ.status = "completed " .. tostring(bzu)
    end))
    fns.cgs_44.QUEST_NPC_NAMES = bzL
    fns.cgs_44.QUEST_TASK_TYPES = bz4
    fns.cgs_44.Quest = bzQ
    fns.cgs_44.QuestGuiSnapshot = bzY
    fns.cgs_44.DoQuestInteraction = bz6_2
    fns.cgs_44.DoAutoQuestTasks = bz7_6
    fns.cgs_44.DoQuestDialogue = bz5_2
    fns.cgs_44.QuestNeedsAuction = bz8_3
    fns.cgs_44.QuestTargetAreas = bz9
end
fns.cgs_44.BuildQuestSystem()
fns.cgs_44.BuildQuestSystem = nil
fns.cgs_44.SAFE_CALL_DELAY = 0.5
fns.cgs_57, fns.cgs_82, fns.cgs_95, fns.cgs_46, fns.cgs_39, fns.cgs_42 = nil, nil, nil, nil, nil, nil
fns.cgs_57 = fns.fn901
fns.cgs_82 = fns.fn2053
fns.cgs_95 = fns.fn4112
fns.cgs_46 = fns.fn5617
fns.cgs_39 = fns.fn592
fns.cgs_42 = fns.fn2697
fns.cgs_44.RunSafes = fns.fn5135
fns.cgs_44.CollectSafeSlots = fns.fn277
fns.a39, a2w, a2i, a2W, a15, a3H, fns.cgs_6, a2k, a3S, a16, a3K, connection2, fns.cgs_86, fns.cgs_21, a37, a2t, Rarities, a2S, a2s, fns.a4l, a2m, fns.cgs_13, fns.cgs_23, fns.cgs_5, fns.cgs_20, fns.cgs_56, fns.cgs_58, fns.cgs_34, a1V, a1x, fns.cgs_110, fns.cgs_14, a2H, fns.cgs_114, a1i, a1B, fns.cgs_22, fns.cgs_103, a1W, a25, fns.a4y = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
a2S = fns.fn2781
fns.cgs_44.CollectReadySlots = fns.fn695
fns.cgs_44.DoAutoCollect = fns.fn1433
a2s = function()
    local bB5 = a18(fns.cgs_44.TimeCapsuleEvents.GetSlotStates)
    if type(bB5) ~= "table" then
        return
    end
    local bB6 = bB5.unlockedCount
    local bB6_7
    local bCf = if bB6 then 1 else 0
    local bCd = 634 * bCf + 239 * (1 - bCf)
    local bCe = 1012 * bCf + 3315 * (1 - bCf)
    if not ((bCd * 884 + bCe * 2287 + bCd * bCe) % 16777213 == 3516508) then
        bB6 = 0
    end
    local bB7 = {}
    local bB8 = bB6
    local bB8_2
    local bB9 = bB5.slots or {}
    for k, v in pairs(bB9) do
        local bB5_1 = (tonumber(k))
        local bCo = if bB5_1 then 1 else 0
        local bCm = 1678 * bCo + 3496 * (1 - bCo)
        local bCn = 1444 * bCo + 2599 * (1 - bCo)
        if not ((bCm * 2190 + bCn * 148 + bCm * bCn) % 16777213 == 6311564) then
            bB5_1 = k
        end
        bB7[bB5_1] = v
    end
    local bCr = 1
    local bCp = bB8
    while bCr <= bCp do
        local bCs = bCr
        local bB5_2 = bB7[bCs]
        local bB6_2 = type(bB5_2) == "table" and bB5_2.ItemGUID ~= nil and bB5_2.CurrentTier ~= nil
        if bB6_2 then
            if fns.cgs_44.InventoryFull() then
                fns.cgs_45[8] = "Capsule: inventory full, cannot collect"
                return
            end
            local bB5_3 = a18(fns.cgs_44.TimeCapsuleEvents.CollectItem, bCs)
            local bB6_3 = bB5_3 == true
            if not bB6_3 then
                local bB9_1 = type(bB5_3) == "table" and bB5_3.success == true
                bB6_3 = bB9_1
            end
            if bB6_3 then
                local cn8 = fns.cgs_45
                cn8[2] = cn8[2] + 1
                fns.cgs_45[8] = "Capsule: collected slot " .. tostring(bCs)
                bB7[bCs] = {}
                task.wait(fns.cgs_44.PROCESS_CALL_DELAY)
            end
        end
        bCr += 1
    end
    if fns.Toggles2.AutoUnlockSlots.Value then
        local bB5_4 = a18(fns.cgs_44.TimeCapsuleEvents.UnlockSlot, bB8 + 1)
        local bB6_4 = type(bB5_4) == "table" and bB5_4.success
        if bB6_4 then
            local cn6 = fns.cgs_45
            cn6[3] = cn6[3] + 1
            bB8 += 1
        end
    end
    local bB5_5 = a18(fns.cgs_44.TimeCapsuleEvents.GetCapsuleableItems)
    if type(bB5_5) ~= "table" then
        return
    end
    local bB6_5 = a3G(fns.Options.CapsuleMinValue.Value, 0)
    local Value = fns.Options.CapsuleMinRarity.Value
    local bCa = {}
    for k, v in pairs(bB5_5) do
        local bB5_6 = not fns.cgs_44.IgnoreFavoritedItem(v) and fns.cgs_49(fns.cgs_101(v.ItemId), Value, bB6_5) and fns.cgs_44.MutationFilterPass(v, fns.Options.CapsuleMutations)
        if bB5_6 then
            bCa[#bCa + 1] = k
        end
    end
    local bB5_7 = 1
    for i = 1, bB8 do
        local bB4
        local bCB = i
        local bB6_6 = bB7[bCB]
        local bB8_1 = type(bB6_6) ~= "table"
        local bCf_1 = if bB8_1 then 1 else 0
        local bCd_1 = 1453 * bCf_1 + 2375 * (1 - bCf_1)
        local bCe_1 = 1625 * bCf_1 + 3629 * (1 - bCf_1)
        if not ((bCd_1 * 1913 + bCe_1 * 660 + bCd_1 * bCe_1) % 16777213 == 6213214) then
            bB8_1 = bB6_6.ItemGUID == nil
        end
        if bB8_1 then
            bB8_1 = bCa[bB5_7]
        end
        if bB8_1 then
            bB4 = bCa[bB5_7]
            bB5_7 += 1
            bB6_7, bB8_2 = pcall(function()
                return fns.cgs_44.TimeCapsuleEvents.PlaceItem:InvokeServer(bCB, bB4)
            end)
            local bB9_3 = bB6_7
            if bB9_3 then
                local bB6_8 = bB8_2 == true
                if not bB6_8 then
                    local bCb = type(bB8_2) == "table" and bB8_2.success == true
                    bB6_8 = bCb
                end
                bB9_3 = bB6_8
            end
            if bB9_3 then
                local coa = fns.cgs_45
                coa[5] = coa[5] + 1
                fns.cgs_45[8] = "Capsule: placed"
            end
            task.wait(fns.cgs_44.PROCESS_CALL_DELAY)
        end
    end
end
fns.a39 = {
    sold = 0,
    earned = 0,
    stocked = 0,
    upgraded = 0,
    accepted = 0,
    declined = 0,
    favourited = 0,
    failedStock = 0,
    eligibleStock = 0,
    groundPlaced = 0,
    failedGroundPlace = 0,
    groundStatus = "idle",
    groundPickedUp = 0,
    failedGroundPickup = 0,
    groundPickupStatus = "idle",
    nextGroundPickupAt = 0,
    stored = 0,
    storageStatus = "idle",
    nextStoreAt = 0,
    status = "idle",
    sellStatus = "idle"
}
fns.cgs_44.EntryMutationNames = fns.fn4431
a2w = fns.fn1352
fns.a4l = fns.fn155
fns.cgs_44.AccessoryStatMatch = fns.fn3130
fns.cgs_44.AutoFavouriteMatch = fns.fn692
fns.cgs_44.FavouriteRuleMatch = fns.fn2065
fns.cgs_44.KeepValueMatch = fns.fn1241
a2m = fns.fn585
fns.cgs_13 = fns.fn551
fns.cgs_44.RodBroken = fns.fn3040
fns.cgs_23 = fns.fn5176
fns.cgs_44.Track(fns.cgs_44.PawnRateChanged.OnClientEvent:Connect(fns.onOnClientEvent6))
fns.cgs_5 = function()
    local bEo, bEp, bEq, bEr, bEs, bEt
    local bEu = a18(fns.cgs_44.GetSellableItems)
    if type(bEu) ~= "table" then
        return
    end
    bEp = a3G(fns.Options.MinSellValue.Value, 0)
    bEo = a3G(fns.Options.MaxSellValue.Value, 0)
    bEq = fns.cgs_32(fns.Options.SellUpToRarity.Value)
    if bEo <= 0 then
        bEo = math.huge
    end
    bEs = fns.Toggles2.SellTruckItems.Value ~= false
    local bEv = fns.Options.SellCategories and fns.cgs_64(fns.Options.SellCategories.Value)
    local bEw = {}
    local bEx = bEv
    local bEH = if bEx then 1 else 0
    local bEF = 3062 * bEH + 2053 * (1 - bEH)
    local bEG = 502 * bEH + 3540 * (1 - bEH)
    if not ((bEF * 3413 + bEG * 742 + bEF * bEG) % 16777213 == 12360214) then
        bEx = bEw
    end
    bEt = bEx
    bEr = next(bEt) ~= nil
    local function bEv_1(Rn)
        if type(Rn) ~= "table" then
            return false
        end
        local bEh = Rn._source == "Vehicle" and not bEs
        local bEf_1 = bEh or a2m(Rn) or fns.cgs_23(Rn)
        if bEf_1 then
            return false
        end
        local bEf_2 = fns.cgs_101(Rn.ItemId)
        local bEg_1 = a3V(Rn)
        local bEh_1 = not bEq
        if not bEh_1 then
            bEh_1 = bEf_2 ~= nil and bEf_2.Rarity ~= nil and bEq[bEf_2.Rarity] == true
        end
        local bEi_2 = not bEr
        local bEj = bEh_1
        if not bEi_2 then
            bEi_2 = fns.cgs_44.CategoryMatch(bEf_2, bEt)
        end
        local bEf_3 = bEj
        local bEh_2 = bEi_2
        if bEf_3 then
            bEf_3 = bEh_2
        end
        if bEf_3 then
            bEf_3 = bEg_1 >= bEp
        end
        if bEf_3 then
            bEf_3 = bEg_1 <= bEo
        end
        return bEf_3
    end
    local bEw_1 = {}
    for k, v in pairs(bEu) do
        if bEv_1(v) then
            bEw_1[#bEw_1 + 1] = k
        end
    end
    if #bEw_1 == 0 then
        fns.a39.sellStatus = "nothing to sell"
        return
    end
    fns.a39.sellStatus = "selling " .. #bEw_1
    local bEu_1 = 0
    local bEx_1 = nil
    local bEy = 0
    local bEz = #bEw_1
    local bEQ = 1
    while bEQ <= bEz do
        local bER = bEQ
        local bEz_1 = {}
        local bEA = a18(fns.cgs_44.GetSellableItems)
        local bEB = math.min(bER + 19, #bEw_1)
        local bEV = bER
        while bEV <= bEB do
            local bEB_1 = bEw_1[bEV]
            local bEC_1 = type(bEA) == "table" and bEA[bEB_1]
            if bEv_1(bEC_1) then
                bEz_1[#bEz_1 + 1] = bEB_1
            end
            bEV += 1
        end
        if not (#bEz_1 == 0) then
            local bEA_1 = a18(fns.cgs_44.SellItems, bEz_1)
            local bEB_2 = type(bEA_1) == "table" and bEA_1.success
            if not bEB_2 then
                task.wait(1.2)
                bEA_1 = a18(fns.cgs_44.SellItems, bEz_1)
            end
            local bEB_3 = type(bEA_1) == "table" and bEA_1.success
            if bEB_3 then
                local bEB_4 = bEA_1.sold or #bEz_1
                bEu_1 += bEB_4
                fns.a39.sold = fns.a39.sold + (bEA_1.sold or #bEz_1)
                fns.a39.earned = fns.a39.earned + (bEA_1.totalEarned or 0)
                fns.a39.sellStatus = ("selling %d of %d"):format(math.min(bER + 19, #bEw_1), #bEw_1)
            else
                local bEz_3 = type(bEA_1) == "table" and bEA_1.error
                local bEA_2 = bEz_3
                local bEH_1 = if bEA_2 then 1 else 0
                local bEF_1 = 20 * bEH_1 + 1168 * (1 - bEH_1)
                local bEG_1 = 1098 * bEH_1 + 3876 * (1 - bEH_1)
                if not ((bEF_1 * 1875 + bEG_1 * 490 + bEF_1 * bEG_1) % 16777213 == 597480) then
                    bEA_2 = "unknown error"
                end
                bEx_1 = bEA_2
                bEy += 1
            end
            if bER + 20 <= #bEw_1 then
                task.wait(1.2)
            end
        end
        bEQ += 20
    end
    if bEx_1 then
        local bEw_2 = bEy == 1 and "" or "es"
        fns.a39.sellStatus = ("sold %d, %d batch%s failed: %s"):format(bEu_1, bEy, bEw_2, tostring(bEx_1))
    else
        fns.a39.sellStatus = "sold " .. tostring(bEu_1)
    end
end
fns.cgs_20 = fns.fn3179
if not connection2 and not connection2 and (fns.cgs_13 or not fns.cgs_13) or (not fns.cgs_13 and fns.cgs_13 or (not fns.cgs_13 or not fns.cgs_56)) or not fns.cgs_56 and not fns.cgs_13 and (not fns.cgs_56 or fns.cgs_56) and ((fns.cgs_56 or not fns.cgs_56) and (not fns.cgs_13 or connection2)) or (fns.cgs_13 and fns.cgs_13 and (fns.cgs_13 or fns.cgs_56) or not fns.cgs_13 and not connection2 and (fns.cgs_13 and connection2)) and (fns.cgs_13 and fns.cgs_13 and (not fns.cgs_56 or fns.cgs_13) and ((not fns.cgs_13 or not fns.cgs_13) and (not fns.cgs_13 and not connection2))) or not (not connection2 and not connection2 and (fns.cgs_13 or not fns.cgs_13) or (not fns.cgs_13 and fns.cgs_13 or (not fns.cgs_13 or not fns.cgs_56)) or not fns.cgs_56 and not fns.cgs_13 and (not fns.cgs_56 or fns.cgs_56) and ((fns.cgs_56 or not fns.cgs_56) and (not fns.cgs_13 or connection2)) or (fns.cgs_13 and fns.cgs_13 and (fns.cgs_13 or fns.cgs_56) or not fns.cgs_13 and not connection2 and (fns.cgs_13 and connection2)) and (fns.cgs_13 and fns.cgs_13 and (not fns.cgs_56 or fns.cgs_13) and ((not fns.cgs_13 or not fns.cgs_13) and (not fns.cgs_13 and not connection2)))) then
    fns.cgs_44.DoAutoStoreItems = fns.fn4319
    a2i = { ModelSizes = {} }
    a2i.SlotKey = fns.fn4809
    a2i.Snapshot = fns.fn2873
    a2i.FreeSlots = fns.fn3501
    a2i.SlotAvailable = fns.fn5462
    a2i.ToastGui = fns.fn3034
    a2i.Price = fns.fn4009
    a2i.ShelfName = fns.fn1884
    a2i.ItemSize = function(TW, TX)
        local bGP_4
        local bGO_7, bGO_8, bGO_11
        local bGN = a2i.ModelSizes[TX.Name]
        if not bGN then
            bGO_7, bGP_4 = pcall(function()
                return ItemLoader:GetItem(TX.Name)
            end)
            local bGQ = not bGO_7
            local bGQ_2
            local bGU = if bGQ then 1 else 0
            local bGS = 188 * bGU + 380 * (1 - bGU)
            local bGT = 1574 * bGU + 258 * (1 - bGU)
            if not ((bGS * 3797 + bGT * 3528 + bGS * bGT) % 16777213 == 6562820) then
                bGQ = not bGP_4
            end
            local bGU_2 = if bGQ then 1 else 0
            local bGS_2 = 221 * bGU_2 + 1030 * (1 - bGU_2)
            local bGT_2 = 824 * bGU_2 + 2880 * (1 - bGU_2)
            if not ((bGS_2 * 3375 + bGT_2 * 3818 + bGS_2 * bGT_2) % 16777213 == 4074011) then
                bGQ = not bGP_4:IsA("Model")
            end
            if bGQ then
                return nil
            end
            bGO_8, bGQ_2 = bGP_4:GetBoundingBox()
            local bGN_2 = bGQ_2
            a2i.ModelSizes[TX.Name] = bGN_2
            local bGO_9 = fns.MutatorModule:GetSizeMutator(TW)
            if bGO_11 then
                local bGP_5 = fns.MutatorModule:GetSizeByName(bGO_9.name)
                local bGO_10 = bGP_5 and tonumber(bGP_5.Scale)
                if bGO_10 then
                    bGN_2 *= bGP_5.Scale
                end
            end
            return bGN_2
        end
        bGO_11 = fns.MutatorModule:GetSizeMutator(TW)
        if bGO_11 then
            local bGP_6 = fns.MutatorModule:GetSizeByName(bGO_11.name)
            local bGO_12 = bGP_6 and tonumber(bGP_6.Scale)
            if bGO_12 then
                bGN *= bGP_6.Scale
            end
        end
        return bGN
    end
    a2i.FitsSlot = fns.fn4699
    a2i.FilterMatch = fns.fn5316
    a2i.ShouldYield = fns.fn5219
    fns.cgs_44.ShelfStockDue = fns.fn195
    a2i.EntryFromAttributes = fns.fn5419
    a2i.SortCandidates = function(UW, UX)
        local Value = fns.Options.StockPriority.Value
        table.sort(UW, function(U_, U0)
            if UX or Value == "Lowest value" then
                if U_.Value ~= U0.Value then
                    return U_.Value < U0.Value
                end
                return tostring(U_.Guid) < tostring(U0.Guid)
            elseif Value == "Rarest first" then
                local bHv_5 = fns.cgs_44.RARITY_RANK[U_.Def.Rarity] or 0
                local bHv_6 = fns.cgs_44.RARITY_RANK[U0.Def.Rarity] or 0
                if bHv_5 ~= bHv_6 then
                    return bHv_5 > bHv_6
                elseif U_.Value ~= U0.Value then
                    return U_.Value > U0.Value
                else
                    return tostring(U_.Guid) < tostring(U0.Guid)
                end
            elseif Value == "Commonest first" then
                local bHv_7 = fns.cgs_44.RARITY_RANK[U_.Def.Rarity] or 0
                local bHv_8 = fns.cgs_44.RARITY_RANK[U0.Def.Rarity] or 0
                if bHv_7 ~= bHv_8 then
                    return bHv_7 < bHv_8
                elseif U_.Value ~= U0.Value then
                    return U_.Value < U0.Value
                else
                    return tostring(U_.Guid) < tostring(U0.Guid)
                end
            elseif U_.Value ~= U0.Value then
                return U_.Value > U0.Value
            else
                return tostring(U_.Guid) < tostring(U0.Guid)
            end
        end)
    end
    a2i.NextAssignment = function(U9, Va, Vb, Vc)
        Vc = Vc or {}
        local function bHH_2(Ve, Vf)
            local bHz = tostring(Ve.Guid) .. "|" .. Vf.Key
            local bHA = Vc[bHz]
            if bHA == nil then
                local bHB = (a2i.FitsSlot(Vf, Ve.Entry, Ve.Def)) and true
                local bHC = bHB
                local bHG = if bHC then 1 else 0
                local bHE = 3062 * bHG + 3077 * (1 - bHG)
                local bHF = 2098 * bHG + 1690 * (1 - bHG)
                if not ((bHE * 3109 + bHF * 1821 + bHE * bHF) % 16777213 == 2987079) then
                    bHC = false
                end
                bHA = bHC
                Vc[bHz] = bHA
            end
            return bHA
        end
        local bHI_2 = {}
        for i, v in ipairs(Va) do
            local bHJ_3 = 0
            for i, v2 in ipairs(U9) do
                if bHH_2(v2, v) then
                    bHJ_3 += 1
                end
            end
            bHI_2[i] = bHJ_3
        end
        for i, v in ipairs(U9) do
            local bHJ_4 = nil
            local bHK
            for i, v2 in ipairs(Va) do
                local bHL = tostring(v.Guid) .. "|" .. v2.Key
                local bHM = not Vb[bHL]
                if bHM ~= false then
                    bHM = bHH_2(v, v2)
                end
                if bHM then
                    local bHL_2 = bHI_2[i]
                    if not bHK or bHL_2 < bHK then
                        bHJ_4 = i
                        bHK = bHL_2
                    end
                end
            end
            if bHJ_4 then
                return i, bHJ_4
            end
        end
    end
    a2i.PlacementConfirmed = fns.fn1897
    a2i.Place = function(VM, VN, VO, VP)
        local Attachment = VO.Attachment
        if not Attachment or not Attachment.Parent then
            return false, true
        end
        local bIs = a2i.Price(VN.Entry)
        local bIv = Attachment.WorldCFrame * CFrame.Angles(0, math.rad(a3G(VN.Def.ShelfRotationY, 0)), 0)
        for i = 1, 2 do
            local bIt, bIu
            if not a2i.SlotAvailable(VM, VO) then
                return false, true
            end
            local bIw_5 = VP and a2i.ToastGui()
            local bIx = bIw_5
            if bIw_5 then
                bIw_5 = bIx.Enabled
            end
            local bIy = bIw_5
            if bIx then
                bIx.Enabled = false
            end
            bIt = fns.cgs_80:GenerateGUID(false)
            bIu = nil
            local connection = fns.cgs_44.PlaceStockItemResult.OnClientEvent:Connect(function(V0, V1)
                if V0 == bIt then
                    bIu = V1 == true
                end
            end)
            local bIz = pcall(function()
                fns.cgs_44.PlaceStockItem:FireServer(VN.Guid, tostring(VN.Entry.ItemId), bIv, bIs, VO.Shelf, Attachment.Name, nil, nil, true, bIt)
            end)
            if not bIz then
                connection:Disconnect()
                if bIx and bIx.Parent then
                    bIx.Enabled = bIy
                end
                return false
            end
            local bIz_4 = false
            local bIH = 1
            while bIH <= 15 do
                if a2i.PlacementConfirmed(VM, VN.Guid, VO) then
                    bIz_4 = true
                    break
                elseif bIu ~= nil then
                    break
                else
                    task.wait(0.1)
                    bIH += 1
                end
            end
            connection:Disconnect()
            if bIx and bIx.Parent then
                bIx.Enabled = bIy
            end
            if bIz_4 or bIu == true then
                return true
            end
            if bIu == false then
                return false, true
            end
        end
        return false, not a2i.SlotAvailable(VM, VO)
    end
    fns.cgs_44.DoStockShelves = fns.fn1257
    fns.cgs_44.DoQuestStocking = fns.fn2741
    fns.cgs_44.GroundPlacement = { ModelMetrics = {} }
    fns.cgs_44.GroundPlacement.PlotFrame = fns.fn3078
    fns.cgs_44.GroundPlacement.PlotData = fns.fn2961
    fns.cgs_44.GroundPlacement.Bounds = fns.fn1175
    fns.cgs_44.GroundPlacement.FootprintUnlocked = fns.fn691
    fns.cgs_44.GroundPlacement.MatchesType = fns.fn2026
    fns.cgs_44.GroundPlacement.BaseMetrics = function(Yr)
        local bKi
        local bKh
        local bKj = fns.cgs_44.GroundPlacement.ModelMetrics[Yr.Name]
        local bKj_4, bKj_5
        if bKj then
            return bKj
        end
        local bKg = { Size = Vector3.new(4, 4, 4), Bottom = -2 }
        bKj_4, bKi = pcall(function()
            return ItemLoader:GetItem(Yr.Name)
        end)
        local bKk = bKj_4 and bKi and bKi:IsA("Model")
        if bKk then
            bKj_5, bKh = pcall(function()
                return bKi:Clone()
            end)
            if bKj_5 and bKh then
                local bKj_6 = pcall(function()
                    bKh:PivotTo(CFrame.Angles(0, math.rad(a3G(Yr.ShelfRotationY, 0)), 0))
                    local YI, YJ = bKh:GetBoundingBox()
                    local pivot = bKh:GetPivot()
                    bKg.Size = YJ
                    bKg.Bottom = pivot:PointToObjectSpace(YI.Position).Y - YJ.Y * 0.5
                end)
                bKh:Destroy()
                if not bKj_6 then
                    bKg.Size = Vector3.new(4, 4, 4)
                    bKg.Bottom = -2
                end
            end
        end
        fns.cgs_44.GroundPlacement.ModelMetrics[Yr.Name] = bKg
        return bKg
    end
    fns.cgs_44.GroundPlacement.ItemMetrics = fns.fn3706
    fns.cgs_44.GroundPlacement.Obstacles = function(YW, YX)
        local bKr = {}
        local Stock = YW:FindFirstChild("Stock")
        local bKs_7
        local bKt = Stock and Stock:GetChildren()
        local bKt_2
        local bKs_5 = {}
        local bKu = bKt
        local bKu_2
        local bKy = if bKu then 1 else 0
        local bKw = 3213 * bKy + 539 * (1 - bKy)
        local bKx = 3493 * bKy + 1429 * (1 - bKy)
        if not ((bKw * 3516 + bKx * 1857 + bKw * bKx) % 16777213 == 12229205) then
            bKu = bKs_5
        end
        for i, v in ipairs(bKu) do
            local bKE = v
            local bKs_6 = (bKE:IsA("Model")) and not bKE:GetAttribute("ShelfGUID") and not bKE:GetAttribute("SnapPointName")
            if bKs_6 then
                bKs_7, bKt_2, bKu_2 = pcall(function()
                    local Y4, Y5 = bKE:GetBoundingBox()
                    return Y4, Y5
                end)
                if bKs_7 then
                    local bKs_8 = YX:PointToObjectSpace(bKt_2.Position)
                    bKr[#bKr + 1] = { X = bKs_8.X, Z = bKs_8.Z, SizeX = bKu_2.X, SizeZ = bKu_2.Z }
                end
            end
        end
        return bKr
    end
    fns.cgs_44.GroundPlacement.FindPosition = fns.fn5229
    fns.cgs_44.GroundPlacement.Confirmed = fns.fn5377
    fns.cgs_44.GroundPlacement.Place = function(Z1, Z2, Z3)
        local bLt, bLu, bLv, bLw, bLA, bLF
        local bLx = 19
        while true do
            local bLx_2 = 1633 - bLx
            do
                if bLx_2 < 1617 then
                    if bLx_2 < 1612 then
                        if bLx_2 < 1611 then
                            if bLx_2 < 1610 then
                                if bLx_2 < 1609 then
                                    if bLx_2 < 1608 then
                                        break
                                    elseif bLx_2 == 1608 then
                                        task.wait(0.1)
                                        bLx = 22
                                    else
                                        bLx = 1620
                                        continue
                                    end
                                else
                                    bLx = if not bLt then 16 else 17
                                end
                            else
                                bLx = 12
                            end
                        elseif bLx_2 == 1611 then
                            bLF += 1
                            bLx = 14
                        else
                            bLx = 7831
                            continue
                        end
                    elseif bLx_2 < 1614 then
                        if bLx_2 < 1613 then
                            if bLx_2 == 1612 then
                                bLu.Enabled = bLv
                                bLx = 24
                            else
                                bLx = 1621
                                continue
                            end
                        else
                            bLu.Enabled = false
                            bLx = 0
                        end
                    elseif bLx_2 < 1615 then
                        bLA = 1
                        bLx = 13
                    elseif bLx_2 < 1616 then
                        bLu = bLt
                        bLx = if bLt then 4 else 8
                    elseif bLx_2 == 1616 then
                        bLF = 1
                        bLx = 14
                    else
                        bLx = 1628
                        continue
                    end
                elseif bLx_2 < 1622 then
                    if bLx_2 < 1620 then
                        if bLx_2 < 1618 then
                            if bLx_2 == 1617 then
                                return false
                            end
                            bLx = 7831
                            continue
                        elseif bLx_2 < 1619 then
                            if bLx_2 == 1618 then
                                bLw = bLu.Parent
                                bLx = 3
                            else
                                bLx = 1620
                                continue
                            end
                        else
                            bLx = if bLF <= 5 then 23 else 9
                        end
                    elseif bLx_2 < 1621 then
                        bLx = if bLA <= 2 then 6 else 7
                    elseif bLx_2 == 1621 then
                        bLx = if fns.cgs_44.GroundPlacement.Confirmed(Z1, Z2.Guid) then 10 else 25
                    else
                        bLx = 1633
                        continue
                    end
                elseif bLx_2 < 1625 then
                    if bLx_2 < 1624 then
                        if bLx_2 < 1623 then
                            bLA += 1
                            bLx = 13
                        elseif bLx_2 == 1623 then
                            return true
                        else
                            bLx = 1617
                            continue
                        end
                    else
                        bLx = 11
                    end
                elseif bLx_2 < 1630 then
                    if bLx_2 < 1628 then
                        if bLx_2 < 1626 then
                            if bLx_2 == 1625 then
                                bLv = bLt
                                bLx = if bLu then 20 else 0
                            else
                                bLx = 11937
                                continue
                            end
                        elseif bLx_2 < 1627 then
                            return false
                        else
                            bLx = 5
                        end
                    elseif bLx_2 < 1629 then
                        if bLx_2 == 1628 then
                            bLt = fns.Toggles2.HideStockNotifications.Value
                            bLx = if bLt then 2 else 18
                        else
                            bLx = 3950
                            continue
                        end
                    elseif bLx_2 == 1629 then
                        bLt = bLu.Enabled
                        bLx = 8
                    else
                        bLx = 1633
                        continue
                    end
                elseif bLx_2 < 1632 then
                    if bLx_2 < 1631 then
                        bLx = if bLw then 21 else 24
                    elseif bLx_2 == 1631 then
                        bLt = a2i.ToastGui()
                        bLx = 18
                    else
                        bLx = 1608
                        continue
                    end
                elseif bLx_2 < 3567 then
                    if bLx_2 < 1633 then
                        break
                    elseif bLx_2 == 1633 then
                        bLt = pcall(function()
                            fns.cgs_44.PlaceStockItem:FireServer(Z2.Guid, tostring(Z2.Entry.ItemId), Z3, a2i.Price(Z2.Entry), nil, nil, false, BuildState.getDecorGridStep(), false, nil, BuildState.getActiveStorey())
                        end)
                        task.wait(0.06)
                        bLw = bLu
                        bLx = if bLw then 15 else 3
                    else
                        break
                    end
                else
                    break
                end
            end
        end
    end
    fns.cgs_44.GroundPlacementDue = fns.fn5213
    fns.cgs_44.DoGroundPlacement = fns.fn165
    fns.cgs_44.GroundPickup = {}
    fns.cgs_44.GroundPickup.Eligible = fns.fn4126
    fns.cgs_44.GroundPickup.Confirmed = fns.fn690
    fns.cgs_44.GroundPickup.Pick = fns.fn2647
    fns.cgs_44.GroundPickupDue = fns.fn2289
    fns.cgs_44.DoGroundPickup = fns.fn1634
    fns.cgs_44.SellBrokenRods = function()
        local FishState
        local bNN_4
        FishState = fns.cgs_44.FishState
        local bNM = not FishState or FishState.sellingBroken or FishState.swapping
        local bNM_2
        local bNS = if bNM then 1 else 0
        local bNQ = 2500 * bNS + 2542 * (1 - bNS)
        local bNR = 2862 * bNS + 295 * (1 - bNS)
        if not ((bNQ * 3018 + bNR * 2947 + bNQ * bNR) % 16777213 == 6357101) then
            bNM = FishState.busy
        end
        if not bNM then
            local bNN_3 = os.clock()
            bNM = bNN_3 < (FishState.sellAfter or 0)
        end
        if bNM then
            return
        end
        FishState.sellingBroken = true
        bNM_2, bNN_4 = pcall(function()
            local bNo_2
            local bNn_7
            local bNh = a18(fns.cgs_44.GetSellableItems)
            if type(bNh) ~= "table" then
                return
            end
            local Character = fns.cgs_74.Character
            local bNj = Character and Character:FindFirstChildOfClass("Tool")
            local bNi_7 = bNj
            if bNj then
                bNj = bNi_7:GetAttribute("EquippedGuid")
            end
            local bNi_8 = {}
            local bNk = bNj
            for k, v in pairs(bNh) do
                local bNh_5 = fns.cgs_101(v.ItemId)
                local bNj_6 = tostring(k) ~= tostring(bNk) and bNh_5 and bNh_5.Interactive == "FishingRod" and fns.cgs_44.RodBroken(v) and not a2m(v)
                if bNj_6 then
                    bNi_8[#bNi_8 + 1] = { Guid = k, Entry = v }
                end
            end
            if #bNi_8 == 0 then
                return
            end
            if fns.Options.BrokenRodSellMethod and fns.Options.BrokenRodSellMethod.Value == "Stock On Shelf" then
                local bNh_7 = fns.cgs_20()
                if not bNh_7 then
                    fns.a39.status = "cannot stock broken rods: no plot"
                    return
                end
                local bNj_7 = a2i.Snapshot(bNh_7)
                if not bNj_7 then
                    fns.a39.status = "cannot stock broken rods: shop data unavailable"
                    return
                end
                local bNk_2 = a2i.FreeSlots(bNh_7, bNj_7)
                local bNj_8 = {}
                for i, v in ipairs(bNi_8) do
                    local bNl_3 = fns.cgs_101(v.Entry.ItemId)
                    local bNm_3 = bNl_3 and not fns.cgs_13(v.Entry)
                    if bNm_3 then
                        v.Def = bNl_3
                        v.Value = a3V(v.Entry)
                        bNj_8[#bNj_8 + 1] = v
                    end
                end
                a2i.SortCandidates(bNj_8, true)
                local bNl_4 = {}
                local bNm_4 = {}
                while true do
                    if #bNj_8 > 0 and #bNk_2 > 0 then
                        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoSellBrokenRods.Value or FishState.busy or FishState.swapping then
                            break
                        end
                        bNn_7, bNo_2 = a2i.NextAssignment(bNj_8, bNk_2, bNm_4, bNl_4)
                        if not bNn_7 then
                            break
                        end
                        local bNp = bNj_8[bNn_7]
                        local bNq = bNk_2[bNo_2]
                        bNm_4[tostring(bNp.Guid) .. "|" .. bNq.Key] = true
                        if a2i.Place(bNh_7, bNp, bNq, fns.Toggles2.HideStockNotifications.Value) then
                            table.remove(bNj_8, bNn_7)
                            table.remove(bNk_2, bNo_2)
                            fns.a39.stocked = fns.a39.stocked + 1
                            fns.a39.status = "shelved broken rod"
                        else
                            fns.a39.failedStock = fns.a39.failedStock + 1
                        end
                        continue
                    end
                    break
                end
            else
                local bNn_8 = {}
                for i, v in ipairs(bNi_8) do
                    bNn_8[#bNn_8 + 1] = v.Guid
                end
                fns.a39.status = "selling " .. tostring(#bNn_8) .. " broken rods"
                local bNh_8 = a18(fns.cgs_44.SellItems, bNn_8)
                local bNi_9 = type(bNh_8) == "table" and bNh_8.success
                if bNi_9 then
                    fns.a39.sold = fns.a39.sold + (bNh_8.sold or #bNn_8)
                    fns.a39.earned = fns.a39.earned + (bNh_8.totalEarned or 0)
                    local bNi_12 = bNh_8.sold or #bNn_8
                    fns.a39.status = "sold " .. tostring(bNi_12) .. " broken rods"
                else
                    fns.a39.status = "broken rod sale failed"
                end
            end
        end)
        FishState.sellingBroken = false
        if not bNM_2 then
            fns.a39.status = "broken rod sale error: " .. tostring(bNN_4)
        end
    end
    a2W = {
        { Toggle = "AutoExpandShelfSlots", Id = "SellingSlots" },
        { Toggle = "AutoExpandShopFloor", Id = "PlotItemLimit" },
        { Toggle = "AutoExpandItemCapacity", Id = "InventorySpace" }
    }
    fns.cgs_56 = fns.fn399
    fns.cgs_44.FastRespondOffer = function(adI, adJ)
        local bOl
        fns.cgs_44.OfferResponseTimes = fns.cgs_44.OfferResponseTimes or {}
        bOl = tostring(adI)
        local bOm_2 = os.clock()
        if bOm_2 < (fns.cgs_44.OfferResponseTimes[bOl] or 0) then
            return false
        end
        fns.cgs_44.OfferResponseTimes[bOl] = os.clock() + 2
        task.delay(3, function()
            fns.cgs_44.OfferResponseTimes[bOl] = nil
        end)
        task.spawn(function()
            local bOi = 1
            while bOi <= 4 do
                local bOj = bOi
                if fns.cgs_51.Unloaded then
                    return
                end
                fns.cgs_44.RespondOffer:FireServer(adI, adJ)
                if bOj < 4 then
                    task.wait(0.05)
                end
                bOi += 1
            end
        end)
        return true
    end
    fns.cgs_44.Track(fns.cgs_44.ShowOffer.OnClientEvent:Connect(fns.onOnClientEvent7))
    fns.cgs_58 = fns.fn61
else
    fns.cgs_58.DoAutoStoreItems = fns.fn4319
    a2W = { ModelSizes = {} }
    a2W.SlotKey = fns.fn4809
    a2W.Snapshot = fns.fn2873
    a2W.FreeSlots = fns.fn3501
    a2W.SlotAvailable = fns.fn5462
    a2W.ToastGui = fns.fn3034
    a2W.Price = fns.fn4009
    a2W.ShelfName = fns.fn1884
    a2W.ItemSize = function(TW, TX)
        local bGP_1
        local bGO_1, bGO_2, bGO_5
        local bGN = a2i.ModelSizes[TX.Name]
        if not bGN then
            bGO_1, bGP_1 = pcall(function()
                return ItemLoader:GetItem(TX.Name)
            end)
            local bGQ = not bGO_1
            local bGQ_1
            local bGU = if bGQ then 1 else 0
            local bGS = 188 * bGU + 380 * (1 - bGU)
            local bGT = 1574 * bGU + 258 * (1 - bGU)
            if not ((bGS * 3797 + bGT * 3528 + bGS * bGT) % 16777213 == 6562820) then
                bGQ = not bGP_1
            end
            local bGU_1 = if bGQ then 1 else 0
            local bGS_1 = 221 * bGU_1 + 1030 * (1 - bGU_1)
            local bGT_1 = 824 * bGU_1 + 2880 * (1 - bGU_1)
            if not ((bGS_1 * 3375 + bGT_1 * 3818 + bGS_1 * bGT_1) % 16777213 == 4074011) then
                bGQ = not bGP_1:IsA("Model")
            end
            if bGQ then
                return nil
            end
            bGO_2, bGQ_1 = bGP_1:GetBoundingBox()
            local bGN_1 = bGQ_1
            a2i.ModelSizes[TX.Name] = bGN_1
            local bGO_3 = fns.MutatorModule:GetSizeMutator(TW)
            if bGO_5 then
                local bGP_2 = fns.MutatorModule:GetSizeByName(bGO_3.name)
                local bGO_4 = bGP_2 and tonumber(bGP_2.Scale)
                if bGO_4 then
                    bGN_1 *= bGP_2.Scale
                end
            end
            return bGN_1
        end
        bGO_5 = fns.MutatorModule:GetSizeMutator(TW)
        if bGO_5 then
            local bGP_3 = fns.MutatorModule:GetSizeByName(bGO_5.name)
            local bGO_6 = bGP_3 and tonumber(bGP_3.Scale)
            if bGO_6 then
                bGN *= bGP_3.Scale
            end
        end
        return bGN
    end
    a2W.FitsSlot = fns.fn4699
    a2W.FilterMatch = fns.fn5316
    a2W.ShouldYield = fns.fn5219
    fns.cgs_58.ShelfStockDue = fns.fn195
    a2W.EntryFromAttributes = fns.fn5419
    a2W.SortCandidates = function(UW, UX)
        local Value = fns.Options.StockPriority.Value
        table.sort(UW, function(U_, U0)
            if UX or Value == "Lowest value" then
                if U_.Value ~= U0.Value then
                    return U_.Value < U0.Value
                end
                return tostring(U_.Guid) < tostring(U0.Guid)
            elseif Value == "Rarest first" then
                local bHv_1 = fns.cgs_44.RARITY_RANK[U_.Def.Rarity] or 0
                local bHv_2 = fns.cgs_44.RARITY_RANK[U0.Def.Rarity] or 0
                if bHv_1 ~= bHv_2 then
                    return bHv_1 > bHv_2
                elseif U_.Value ~= U0.Value then
                    return U_.Value > U0.Value
                else
                    return tostring(U_.Guid) < tostring(U0.Guid)
                end
            elseif Value == "Commonest first" then
                local bHv_3 = fns.cgs_44.RARITY_RANK[U_.Def.Rarity] or 0
                local bHv_4 = fns.cgs_44.RARITY_RANK[U0.Def.Rarity] or 0
                if bHv_3 ~= bHv_4 then
                    return bHv_3 < bHv_4
                elseif U_.Value ~= U0.Value then
                    return U_.Value < U0.Value
                else
                    return tostring(U_.Guid) < tostring(U0.Guid)
                end
            elseif U_.Value ~= U0.Value then
                return U_.Value > U0.Value
            else
                return tostring(U_.Guid) < tostring(U0.Guid)
            end
        end)
    end
    a2W.NextAssignment = function(U9, Va, Vb, Vc)
        Vc = Vc or {}
        local function bHH_1(Ve, Vf)
            local bHz = tostring(Ve.Guid) .. "|" .. Vf.Key
            local bHA = Vc[bHz]
            if bHA == nil then
                local bHB = (a2i.FitsSlot(Vf, Ve.Entry, Ve.Def)) and true
                local bHC = bHB
                local bHG = if bHC then 1 else 0
                local bHE = 3062 * bHG + 3077 * (1 - bHG)
                local bHF = 2098 * bHG + 1690 * (1 - bHG)
                if not ((bHE * 3109 + bHF * 1821 + bHE * bHF) % 16777213 == 2987079) then
                    bHC = false
                end
                bHA = bHC
                Vc[bHz] = bHA
            end
            return bHA
        end
        local bHI_1 = {}
        for i, v in ipairs(Va) do
            local bHJ_1 = 0
            for i, v2 in ipairs(U9) do
                if bHH_1(v2, v) then
                    bHJ_1 += 1
                end
            end
            bHI_1[i] = bHJ_1
        end
        for i, v in ipairs(U9) do
            local bHJ_2 = nil
            local bHK
            for i, v2 in ipairs(Va) do
                local bHL = tostring(v.Guid) .. "|" .. v2.Key
                local bHM = not Vb[bHL]
                if bHM ~= false then
                    bHM = bHH_1(v, v2)
                end
                if bHM then
                    local bHL_1 = bHI_1[i]
                    if not bHK or bHL_1 < bHK then
                        bHJ_2 = i
                        bHK = bHL_1
                    end
                end
            end
            if bHJ_2 then
                return i, bHJ_2
            end
        end
    end
    a2W.PlacementConfirmed = fns.fn1897
    a2W.Place = function(VM, VN, VO, VP)
        local Attachment = VO.Attachment
        if not Attachment or not Attachment.Parent then
            return false, true
        end
        local bIs = a2i.Price(VN.Entry)
        local bIv = Attachment.WorldCFrame * CFrame.Angles(0, math.rad(a3G(VN.Def.ShelfRotationY, 0)), 0)
        for i = 1, 2 do
            local bIt, bIu
            if not a2i.SlotAvailable(VM, VO) then
                return false, true
            end
            local bIw_1 = VP and a2i.ToastGui()
            local bIx = bIw_1
            if bIw_1 then
                bIw_1 = bIx.Enabled
            end
            local bIy = bIw_1
            if bIx then
                bIx.Enabled = false
            end
            bIt = fns.cgs_80:GenerateGUID(false)
            bIu = nil
            local connection = fns.cgs_44.PlaceStockItemResult.OnClientEvent:Connect(function(V0, V1)
                if V0 == bIt then
                    bIu = V1 == true
                end
            end)
            local bIz = pcall(function()
                fns.cgs_44.PlaceStockItem:FireServer(VN.Guid, tostring(VN.Entry.ItemId), bIv, bIs, VO.Shelf, Attachment.Name, nil, nil, true, bIt)
            end)
            if not bIz then
                connection:Disconnect()
                if bIx and bIx.Parent then
                    bIx.Enabled = bIy
                end
                return false
            end
            local bIz_2 = false
            local bIH = 1
            while bIH <= 15 do
                if a2i.PlacementConfirmed(VM, VN.Guid, VO) then
                    bIz_2 = true
                    break
                elseif bIu ~= nil then
                    break
                else
                    task.wait(0.1)
                    bIH += 1
                end
            end
            connection:Disconnect()
            if bIx and bIx.Parent then
                bIx.Enabled = bIy
            end
            if bIz_2 or bIu == true then
                return true
            end
            if bIu == false then
                return false, true
            end
        end
        return false, not a2i.SlotAvailable(VM, VO)
    end
    fns.cgs_58.DoStockShelves = fns.fn1257
    fns.cgs_58.DoQuestStocking = fns.fn2741
    fns.cgs_58.GroundPlacement = { ModelMetrics = {} }
    fns.cgs_58.GroundPlacement.PlotFrame = fns.fn3078
    fns.cgs_58.GroundPlacement.PlotData = fns.fn2961
    fns.cgs_58.GroundPlacement.Bounds = fns.fn1175
    fns.cgs_58.GroundPlacement.FootprintUnlocked = fns.fn691
    fns.cgs_58.GroundPlacement.MatchesType = fns.fn2026
    fns.cgs_58.GroundPlacement.BaseMetrics = function(Yr)
        local bKi
        local bKh
        local bKj = fns.cgs_44.GroundPlacement.ModelMetrics[Yr.Name]
        local bKj_1, bKj_2
        if bKj then
            return bKj
        end
        local bKg = { Size = Vector3.new(4, 4, 4), Bottom = -2 }
        bKj_1, bKi = pcall(function()
            return ItemLoader:GetItem(Yr.Name)
        end)
        local bKk = bKj_1 and bKi and bKi:IsA("Model")
        if bKk then
            bKj_2, bKh = pcall(function()
                return bKi:Clone()
            end)
            if bKj_2 and bKh then
                local bKj_3 = pcall(function()
                    bKh:PivotTo(CFrame.Angles(0, math.rad(a3G(Yr.ShelfRotationY, 0)), 0))
                    local YI, YJ = bKh:GetBoundingBox()
                    local pivot = bKh:GetPivot()
                    bKg.Size = YJ
                    bKg.Bottom = pivot:PointToObjectSpace(YI.Position).Y - YJ.Y * 0.5
                end)
                bKh:Destroy()
                if not bKj_3 then
                    bKg.Size = Vector3.new(4, 4, 4)
                    bKg.Bottom = -2
                end
            end
        end
        fns.cgs_44.GroundPlacement.ModelMetrics[Yr.Name] = bKg
        return bKg
    end
    fns.cgs_58.GroundPlacement.ItemMetrics = fns.fn3706
    fns.cgs_58.GroundPlacement.Obstacles = function(YW, YX)
        local bKr = {}
        local Stock = YW:FindFirstChild("Stock")
        local bKs_3
        local bKt = Stock and Stock:GetChildren()
        local bKt_1
        local bKs_1 = {}
        local bKu = bKt
        local bKu_1
        local bKy = if bKu then 1 else 0
        local bKw = 3213 * bKy + 539 * (1 - bKy)
        local bKx = 3493 * bKy + 1429 * (1 - bKy)
        if not ((bKw * 3516 + bKx * 1857 + bKw * bKx) % 16777213 == 12229205) then
            bKu = bKs_1
        end
        for i, v in ipairs(bKu) do
            local bKE = v
            local bKs_2 = (bKE:IsA("Model")) and not bKE:GetAttribute("ShelfGUID") and not bKE:GetAttribute("SnapPointName")
            if bKs_2 then
                bKs_3, bKt_1, bKu_1 = pcall(function()
                    local Y4, Y5 = bKE:GetBoundingBox()
                    return Y4, Y5
                end)
                if bKs_3 then
                    local bKs_4 = YX:PointToObjectSpace(bKt_1.Position)
                    bKr[#bKr + 1] = { X = bKs_4.X, Z = bKs_4.Z, SizeX = bKu_1.X, SizeZ = bKu_1.Z }
                end
            end
        end
        return bKr
    end
    fns.cgs_58.GroundPlacement.FindPosition = fns.fn5229
    fns.cgs_58.GroundPlacement.Confirmed = fns.fn5377
    fns.cgs_58.GroundPlacement.Place = function(Z1, Z2, Z3)
        local bLt, bLu, bLv, bLw, bLA, bLF
        local bLx = 19
        while true do
            local bLx_1 = 1633 - bLx
            do
                if bLx_1 < 1617 then
                    if bLx_1 < 1612 then
                        if bLx_1 < 1611 then
                            if bLx_1 < 1610 then
                                if bLx_1 < 1609 then
                                    if bLx_1 < 1608 then
                                        break
                                    elseif bLx_1 == 1608 then
                                        task.wait(0.1)
                                        bLx = 22
                                    else
                                        bLx = 1620
                                        continue
                                    end
                                else
                                    bLx = if not bLt then 16 else 17
                                end
                            else
                                bLx = 12
                            end
                        elseif bLx_1 == 1611 then
                            bLF += 1
                            bLx = 14
                        else
                            bLx = 7831
                            continue
                        end
                    elseif bLx_1 < 1614 then
                        if bLx_1 < 1613 then
                            if bLx_1 == 1612 then
                                bLu.Enabled = bLv
                                bLx = 24
                            else
                                bLx = 1621
                                continue
                            end
                        else
                            bLu.Enabled = false
                            bLx = 0
                        end
                    elseif bLx_1 < 1615 then
                        bLA = 1
                        bLx = 13
                    elseif bLx_1 < 1616 then
                        bLu = bLt
                        bLx = if bLt then 4 else 8
                    elseif bLx_1 == 1616 then
                        bLF = 1
                        bLx = 14
                    else
                        bLx = 1628
                        continue
                    end
                elseif bLx_1 < 1622 then
                    if bLx_1 < 1620 then
                        if bLx_1 < 1618 then
                            if bLx_1 == 1617 then
                                return false
                            end
                            bLx = 7831
                            continue
                        elseif bLx_1 < 1619 then
                            if bLx_1 == 1618 then
                                bLw = bLu.Parent
                                bLx = 3
                            else
                                bLx = 1620
                                continue
                            end
                        else
                            bLx = if bLF <= 5 then 23 else 9
                        end
                    elseif bLx_1 < 1621 then
                        bLx = if bLA <= 2 then 6 else 7
                    elseif bLx_1 == 1621 then
                        bLx = if fns.cgs_44.GroundPlacement.Confirmed(Z1, Z2.Guid) then 10 else 25
                    else
                        bLx = 1633
                        continue
                    end
                elseif bLx_1 < 1625 then
                    if bLx_1 < 1624 then
                        if bLx_1 < 1623 then
                            bLA += 1
                            bLx = 13
                        elseif bLx_1 == 1623 then
                            return true
                        else
                            bLx = 1617
                            continue
                        end
                    else
                        bLx = 11
                    end
                elseif bLx_1 < 1630 then
                    if bLx_1 < 1628 then
                        if bLx_1 < 1626 then
                            if bLx_1 == 1625 then
                                bLv = bLt
                                bLx = if bLu then 20 else 0
                            else
                                bLx = 11937
                                continue
                            end
                        elseif bLx_1 < 1627 then
                            return false
                        else
                            bLx = 5
                        end
                    elseif bLx_1 < 1629 then
                        if bLx_1 == 1628 then
                            bLt = fns.Toggles2.HideStockNotifications.Value
                            bLx = if bLt then 2 else 18
                        else
                            bLx = 3950
                            continue
                        end
                    elseif bLx_1 == 1629 then
                        bLt = bLu.Enabled
                        bLx = 8
                    else
                        bLx = 1633
                        continue
                    end
                elseif bLx_1 < 1632 then
                    if bLx_1 < 1631 then
                        bLx = if bLw then 21 else 24
                    elseif bLx_1 == 1631 then
                        bLt = a2i.ToastGui()
                        bLx = 18
                    else
                        bLx = 1608
                        continue
                    end
                elseif bLx_1 < 3567 then
                    if bLx_1 < 1633 then
                        break
                    elseif bLx_1 == 1633 then
                        bLt = pcall(function()
                            fns.cgs_44.PlaceStockItem:FireServer(Z2.Guid, tostring(Z2.Entry.ItemId), Z3, a2i.Price(Z2.Entry), nil, nil, false, BuildState.getDecorGridStep(), false, nil, BuildState.getActiveStorey())
                        end)
                        task.wait(0.06)
                        bLw = bLu
                        bLx = if bLw then 15 else 3
                    else
                        break
                    end
                else
                    break
                end
            end
        end
    end
    fns.cgs_58.GroundPlacementDue = fns.fn5213
    fns.cgs_58.DoGroundPlacement = fns.fn165
    fns.cgs_58.GroundPickup = {}
    fns.cgs_58.GroundPickup.Eligible = fns.fn4126
    fns.cgs_58.GroundPickup.Confirmed = fns.fn690
    fns.cgs_58.GroundPickup.Pick = fns.fn2647
    fns.cgs_58.GroundPickupDue = fns.fn2289
    fns.cgs_58.DoGroundPickup = fns.fn1634
    fns.cgs_58.SellBrokenRods = function()
        local FishState
        local bNN_2
        FishState = fns.cgs_44.FishState
        local bNM = not FishState or FishState.sellingBroken or FishState.swapping
        local bNM_1
        local bNS = if bNM then 1 else 0
        local bNQ = 2500 * bNS + 2542 * (1 - bNS)
        local bNR = 2862 * bNS + 295 * (1 - bNS)
        if not ((bNQ * 3018 + bNR * 2947 + bNQ * bNR) % 16777213 == 6357101) then
            bNM = FishState.busy
        end
        if not bNM then
            local bNN_1 = os.clock()
            bNM = bNN_1 < (FishState.sellAfter or 0)
        end
        if bNM then
            return
        end
        FishState.sellingBroken = true
        bNM_1, bNN_2 = pcall(function()
            local bNo_1
            local bNn_3
            local bNh = a18(fns.cgs_44.GetSellableItems)
            if type(bNh) ~= "table" then
                return
            end
            local Character = fns.cgs_74.Character
            local bNj = Character and Character:FindFirstChildOfClass("Tool")
            local bNi_1 = bNj
            if bNj then
                bNj = bNi_1:GetAttribute("EquippedGuid")
            end
            local bNi_2 = {}
            local bNk = bNj
            for k, v in pairs(bNh) do
                local bNh_1 = fns.cgs_101(v.ItemId)
                local bNj_1 = tostring(k) ~= tostring(bNk) and bNh_1 and bNh_1.Interactive == "FishingRod" and fns.cgs_44.RodBroken(v) and not a2m(v)
                if bNj_1 then
                    bNi_2[#bNi_2 + 1] = { Guid = k, Entry = v }
                end
            end
            if #bNi_2 == 0 then
                return
            end
            if fns.Options.BrokenRodSellMethod and fns.Options.BrokenRodSellMethod.Value == "Stock On Shelf" then
                local bNh_3 = fns.cgs_20()
                if not bNh_3 then
                    fns.a39.status = "cannot stock broken rods: no plot"
                    return
                end
                local bNj_2 = a2i.Snapshot(bNh_3)
                if not bNj_2 then
                    fns.a39.status = "cannot stock broken rods: shop data unavailable"
                    return
                end
                local bNk_1 = a2i.FreeSlots(bNh_3, bNj_2)
                local bNj_3 = {}
                for i, v in ipairs(bNi_2) do
                    local bNl_1 = fns.cgs_101(v.Entry.ItemId)
                    local bNm_1 = bNl_1 and not fns.cgs_13(v.Entry)
                    if bNm_1 then
                        v.Def = bNl_1
                        v.Value = a3V(v.Entry)
                        bNj_3[#bNj_3 + 1] = v
                    end
                end
                a2i.SortCandidates(bNj_3, true)
                local bNl_2 = {}
                local bNm_2 = {}
                while true do
                    if #bNj_3 > 0 and #bNk_1 > 0 then
                        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoSellBrokenRods.Value or FishState.busy or FishState.swapping then
                            break
                        end
                        bNn_3, bNo_1 = a2i.NextAssignment(bNj_3, bNk_1, bNm_2, bNl_2)
                        if not bNn_3 then
                            break
                        end
                        local bNp = bNj_3[bNn_3]
                        local bNq = bNk_1[bNo_1]
                        bNm_2[tostring(bNp.Guid) .. "|" .. bNq.Key] = true
                        if a2i.Place(bNh_3, bNp, bNq, fns.Toggles2.HideStockNotifications.Value) then
                            table.remove(bNj_3, bNn_3)
                            table.remove(bNk_1, bNo_1)
                            fns.a39.stocked = fns.a39.stocked + 1
                            fns.a39.status = "shelved broken rod"
                        else
                            fns.a39.failedStock = fns.a39.failedStock + 1
                        end
                        continue
                    end
                    break
                end
            else
                local bNn_4 = {}
                for i, v in ipairs(bNi_2) do
                    bNn_4[#bNn_4 + 1] = v.Guid
                end
                fns.a39.status = "selling " .. tostring(#bNn_4) .. " broken rods"
                local bNh_4 = a18(fns.cgs_44.SellItems, bNn_4)
                local bNi_3 = type(bNh_4) == "table" and bNh_4.success
                if bNi_3 then
                    fns.a39.sold = fns.a39.sold + (bNh_4.sold or #bNn_4)
                    fns.a39.earned = fns.a39.earned + (bNh_4.totalEarned or 0)
                    local bNi_6 = bNh_4.sold or #bNn_4
                    fns.a39.status = "sold " .. tostring(bNi_6) .. " broken rods"
                else
                    fns.a39.status = "broken rod sale failed"
                end
            end
        end)
        FishState.sellingBroken = false
        if not bNM_1 then
            fns.a39.status = "broken rod sale error: " .. tostring(bNN_2)
        end
    end
    fns.cgs_44 = {
        { Toggle = "AutoExpandShelfSlots", Id = "SellingSlots" },
        { Toggle = "AutoExpandShopFloor", Id = "PlotItemLimit" },
        { Toggle = "AutoExpandItemCapacity", Id = "InventorySpace" }
    }
    a2i = fns.fn399
    fns.cgs_58.FastRespondOffer = function(adI, adJ)
        local bOl
        fns.cgs_44.OfferResponseTimes = fns.cgs_44.OfferResponseTimes or {}
        bOl = tostring(adI)
        local bOm_1 = os.clock()
        if bOm_1 < (fns.cgs_44.OfferResponseTimes[bOl] or 0) then
            return false
        end
        fns.cgs_44.OfferResponseTimes[bOl] = os.clock() + 2
        task.delay(3, function()
            fns.cgs_44.OfferResponseTimes[bOl] = nil
        end)
        task.spawn(function()
            local bOi = 1
            while bOi <= 4 do
                local bOj = bOi
                if fns.cgs_51.Unloaded then
                    return
                end
                fns.cgs_44.RespondOffer:FireServer(adI, adJ)
                if bOj < 4 then
                    task.wait(0.05)
                end
                bOi += 1
            end
        end)
        return true
    end
    fns.cgs_58.Track(fns.cgs_58.ShowOffer.OnClientEvent:Connect(fns.onOnClientEvent7))
    fns.cgs_56 = fns.fn61
end
fns.cgs_34 = fns.fn4168
a15 = {
    daily = 0,
    achievements = 0,
    collections = 0,
    museum = 0,
    meteors = 0,
    drinks = 0,
    staff = 0,
    clubQuests = 0,
    status = "idle",
    museumNextClaimAt = 0
}
a3H = { nextCheckAt = 0 }
fns.cgs_44.DrinkStockOptionIds = {}
a1V = fns.fn3630
a1x = fns.fn2854
fns.cgs_110 = fns.fn1572
fns.cgs_44.DoClubQuests = function()
    local bPC = a18(fns.cgs_44.GetClubState)
    local bPD = type(bPC) ~= "table" or type(bPC.Dailies) ~= "table"
    if bPD then
        return
    end
    local bPE = bPC.Dailies.Quests or {}
    for i, v in ipairs(bPE) do
        local bPL = v
        local bPC_1 = fns.cgs_51.Unloaded
        local bPO = if bPC_1 then 1 else 0
        local bPM = 2874 * bPO + 3396 * (1 - bPO)
        local bPN = 3483 * bPO + 3748 * (1 - bPO)
        if not ((bPM * 278 + bPN * 3973 + bPM * bPN) % 16777213 == 7869860) then
            bPC_1 = not fns.Toggles2.AutoClaimClubQuests.Value
        end
        if bPC_1 then
            return
        end
        if bPL.Complete == true and bPL.Claimed ~= true and bPL.Slot then
            local bPC_3 = pcall(function()
                fns.cgs_44.ClaimClubDaily:FireServer(bPL.Slot)
            end)
            if bPC_3 then
                a15.clubQuests = a15.clubQuests + 1
                a15.status = "claimed club quest: " .. tostring(bPL.Slot)
            end
            task.wait(0.5)
        end
    end
end
fns.cgs_14 = function()
    local bPU_1
    if os.clock() < a15.museumNextClaimAt then
        return
    end
    local bPS = a18(fns.cgs_44.MuseumEvents.GetState)
    local bPS_3
    local bPT = type(bPS) ~= "table" or type(bPS.Slots) ~= "table"
    local bPT_1
    if bPT then
        return
    end
    for k, v in pairs(bPS.Slots) do
        local bP2 = k
        if fns.cgs_51.Unloaded or not fns.Toggles2.AutoMuseumRewards.Value then
            return
        end
        local bPS_2 = type(v) == "table" and type(v.Pending) == "table"
        if bPS_2 then
            bPS_3, bPT_1, bPU_1 = pcall(function()
                local Collect = fns.cgs_44.MuseumEvents.Collect
                local bPQ = (tonumber(bP2)) or bP2
                return Collect:InvokeServer(bPQ)
            end)
            if not (bPS_3 and bPT_1) then
                local bPT_2 = bPU_1 or bPS_3 and bPT_1 or "request failed"
                local bPS_5 = tostring(bPT_2)
                local bPT_3 = bPS_5:lower()
                if bPT_3:find("too fast", 1, true) then
                    a15.museumNextClaimAt = os.clock() + 2
                else
                    local bPU_2 = (bPT_3:find("daily", 1, true)) or bPT_3:find("limit", 1, true)
                    if bPU_2 then
                        a15.museumNextClaimAt = os.clock() + 300
                        a15.status = "museum daily claim limit reached"
                    else
                        a15.museumNextClaimAt = os.clock() + 15
                        a15.status = "museum claim failed: " .. bPS_5
                    end
                end
                return
            end
            a15.museum = a15.museum + 1
            a15.status = "claimed museum visitor gift"
            a15.museumNextClaimAt = os.clock() + 1
            task.wait(0.5)
        end
    end
end
fns.cgs_44.Track(fns.cgs_44.MeteorShow.OnClientEvent:Connect(function(afP)
    local dropId, impactPos
    local bQa = fns.cgs_51.Unloaded or type(afP) ~= "table"
    if bQa then
        return
    end
    if not fns.Toggles2.AutoMeteors.Value then
        return
    end
    dropId = afP.dropId
    impactPos = afP.impactPos
    local bQa_1 = type(dropId) ~= "string" or typeof(impactPos) ~= "Vector3"
    if bQa_1 then
        return
    end
    task.spawn(function()
        a15.status = "meteor incoming"
        task.wait(a3X.FallDuration + a3X.EstablishDuration + 0.5)
        local bP5 = os.clock() + 20
        while os.clock() < bP5 do
            if fns.cgs_51.Unloaded or not fns.Toggles2.AutoMeteors.Value then
                return
            end
            local bP6_1 = fns.cgs_69()
            if bP6_1 then
                if not ((bP6_1.Position - impactPos).Magnitude > a3X.ClaimRadius - 4) then
                    fns.cgs_44.MeteorClaim:FireServer(dropId)
                    a15.meteors = a15.meteors + 1
                    a15.status = "grabbed " .. tostring(afP.itemName)
                    return
                end
                fns.cgs_65(impactPos)
                task.wait(0.4)
            end
            task.wait(0.3)
        end
    end)
end))
a2H = fns.fn3965
fns.cgs_44.DoUnfavoriteDrinks = fns.fn1753
fns.cgs_44.DoUseDrinks = fns.fn5592
fns.cgs_6 = { finds = 0, alerts = 0, status = "idle" }
fns.cgs_44.FishState = {
    casts = 0,
    caught = 0,
    busy = false,
    castAt = 0,
    castSerial = 0,
    reelSerial = 0,
    phase = "idle",
    swapping = false,
    sellingBroken = false,
    sellAfter = 0,
    status = "idle"
}
fns.cgs_44.BadWater = {}
fns.cgs_44.FishingBankSpot = fns.fn4584
fns.cgs_44.EquippedRod = fns.fn3029
fns.cgs_44.WorkingRodGuid = fns.fn3856
fns.cgs_44.EquippedRodBroken = fns.fn573
fns.cgs_44.EquipRod = fns.fn3003
fns.cgs_44.SwapBrokenRod = function()
    local bSL
    if fns.cgs_44.FishState.swapping then
        return
    end
    fns.cgs_44.FishState.swapping = true
    fns.cgs_44.FishState.busy = false
    fns.cgs_44.FishState.phase = "swapping"
    local FishState2 = fns.cgs_44.FishState
    FishState2.castSerial = FishState2.castSerial + 1
    local FishState = fns.cgs_44.FishState
    FishState.reelSerial = FishState.reelSerial + 1
    fns.cgs_44.FishState.status = "rod broke, swapping"
    local bSM = fns.cgs_44.EquippedRod()
    local bSN = bSM and bSM:GetAttribute("EquippedGuid")
    bSL = bSN
    task.spawn(function()
        local bSB_3
        task.wait(0.25)
        local bSF = 1
        while true do
            if bSF <= 4 then
                if fns.cgs_51.Unloaded or not fns.Toggles2.AutoSwapBrokenRod.Value then
                    local bSK_1 = if fns.cgs_44.WorkingRodGuid(bSL) then 1 else 0
                    if bSK_1 == 1 then
                        fns.cgs_44.FishState.status = "could not equip spare rod"
                    else
                        fns.cgs_44.FishState.status = "rod broke, no spare rod"
                    end
                    fns.cgs_44.FishState.swapping = false
                    fns.cgs_44.FishState.phase = "idle"
                    fns.cgs_44.FishState.sellAfter = os.clock() + 0.5
                    if bSB_3 then
                        task.delay(0.55, fns.cgs_44.SellBrokenRods)
                    end
                    return
                elseif fns.cgs_44.EquipRod(bSL) then
                    break
                else
                    task.wait(0.35)
                    bSF += 1
                    continue
                end
            else
                local bSK_2 = if fns.cgs_44.WorkingRodGuid(bSL) then 1 else 0
                if bSK_2 == 1 then
                    fns.cgs_44.FishState.status = "could not equip spare rod"
                else
                    fns.cgs_44.FishState.status = "rod broke, no spare rod"
                end
                fns.cgs_44.FishState.swapping = false
                fns.cgs_44.FishState.phase = "idle"
                fns.cgs_44.FishState.sellAfter = os.clock() + 0.5
                bSB_3 = fns.Toggles2.AutoSellBrokenRods and fns.Toggles2.AutoSellBrokenRods.Value
                if bSB_3 then
                    task.delay(0.55, fns.cgs_44.SellBrokenRods)
                end
                return
            end
        end
        fns.cgs_44.FishState.status = "swapped to a working rod"
        fns.cgs_44.FishState.swapping = false
        fns.cgs_44.FishState.phase = "idle"
        fns.cgs_44.FishState.sellAfter = os.clock() + 0.5
        if fns.Toggles2.AutoSellBrokenRods and fns.Toggles2.AutoSellBrokenRods.Value then
            task.delay(0.55, fns.cgs_44.SellBrokenRods)
        end
        return
    end)
end
fns.cgs_44.KeepRodEquipped = fns.fn3880
fns.cgs_44.FishingWater = fns.fn4703
fns.cgs_44.CastTarget = function(ai6, ai7)
    local bS8
    local bS9
    bS8 = nil
    bS9 = nil
    local bTe_1, bTe_2
    local bTd_1
    bS8 = ai6.Size * 0.5
    bS9 = 4
    local function bTa(ajb, ajc)
        return math.clamp(ajb, -bS8.X + bS9, bS8.X - bS9), math.clamp(ajc, -bS8.Z + bS9, bS8.Z - bS9)
    end
    local bTc = fns.Options.CastPosition and fns.Options.CastPosition.Value or "Closest"
    local bTc_5
    if bTc == "Randomise" then
        bTe_1 = -bS8.X + bS9 + math.random() * (ai6.Size.X - bS9 * 2)
        bTd_1 = -bS8.Z + bS9 + math.random() * (ai6.Size.Z - bS9 * 2)
    elseif bTc == "Lock In First Pos" then
        local LockedCast = fns.cgs_44.LockedCast
        if LockedCast and LockedCast.water == ai6 then
            bTe_1, bTd_1 = LockedCast.x, LockedCast.z
        else
            bTe_1, bTd_1 = bTa(ai7.Position.X - ai6.Position.X, ai7.Position.Z - ai6.Position.Z)
            fns.cgs_44.LockedCast = { water = ai6, x = bTe_1, z = bTd_1 }
        end
    elseif bTc == "Furthest" then
        bTe_1 = ai7.Position.X - ai6.Position.X >= 0 and -bS8.X + bS9 or bS8.X - bS9
        bTd_1 = ai7.Position.Z - ai6.Position.Z >= 0 and -bS8.Z + bS9 or bS8.Z - bS9
    else
        bTe_1, bTd_1 = bTa(ai7.Position.X - ai6.Position.X, ai7.Position.Z - ai6.Position.Z)
    end
    local bTb_4 = ai6.Position + Vector3.new(bTe_1, bS8.Y, bTd_1)
    local bTc_4 = Vector3.new(bTb_4.X - ai7.Position.X, 0, bTb_4.Z - ai7.Position.Z)
    if bTc_4.Magnitude > 230 then
        local bTd_2 = ai7.Position + bTc_4.Unit * 230
        bTc_5, bTe_2 = bTa(bTd_2.X - ai6.Position.X, bTd_2.Z - ai6.Position.Z)
        bTb_4 = ai6.Position + Vector3.new(bTc_5, bS8.Y, bTe_2)
    end
    return bTb_4
end
fns.cgs_44.ReelDelay = fns.fn3376
fns.cgs_44.DriveFishingMinigame = function(ajA, ajB)
    local VirtualInputManager
    local bTL
    local bTK
    local bTI
    bTI = nil
    VirtualInputManager = nil
    bTK = nil
    bTL = nil
    bTI = 0
    VirtualInputManager = game:GetService("VirtualInputManager")
    bTK = false
    local bTM = os.clock() + 45
    bTL = function(ajH)
        local CurrentCamera = workspace.CurrentCamera
        local bTt_1 = CurrentCamera and CurrentCamera.ViewportSize
        local bTy = if bTt_1 then 1 else 0
        local bTw = 3118 * bTy + 2116 * (1 - bTy)
        local bTx = 2443 * bTy + 34 * (1 - bTy)
        if not ((bTw * 28 + bTx * 1870 + bTw * bTx) % 16777213 == 12272988) then
            bTt_1 = Vector2.new(800, 600)
        end
        local bTu_1 = bTt_1
        VirtualInputManager:SendMouseButtonEvent(bTu_1.X / 2, bTu_1.Y / 2, 0, ajH, game, 0)
    end
    local function bTN(ajO)
        local bTz = os.clock()
        if bTK == ajO and bTz < bTI then
            return
        end
        bTK = ajO
        bTI = bTz + 0.2
        if ajO then
            bTL(false)
        end
        bTL(ajO)
    end
    local function bTO()
        local PlayerGui = fns.cgs_74:FindFirstChildOfClass("PlayerGui")
        local bTG = PlayerGui and PlayerGui:FindFirstChild("FishingReelGui")
        return bTG
    end
    local bTP
    while true do
        local bTQ = os.clock() < bTM and fns.cgs_44.FishState.reelSerial == ajA and fns.cgs_44.FishState.castSerial == ajB
        if bTQ then
            local bTQ_1 = bTO()
            if bTQ_1 and bTQ_1.Parent then
                bTP = nil
                local Zone = bTQ_1:FindFirstChild("Zone", true)
                local Fish = bTQ_1:FindFirstChild("Fish", true)
                if Zone and Fish then
                    local bTQ_3 = Zone.AbsolutePosition.X + Zone.AbsoluteSize.X / 2
                    local bTR_2 = Fish.AbsolutePosition.X + Fish.AbsoluteSize.X / 2
                    if bTR_2 > bTQ_3 + 2 then
                        bTN(true)
                    elseif bTR_2 < bTQ_3 - 2 then
                        bTN(false)
                    end
                end
                task.wait()
                continue
            end
            local bTQ_4 = bTP or os.clock()
            bTP = bTQ_4
            if os.clock() - bTP > 1.5 then
                break
            end
            task.wait()
            continue
        end
        break
    end
    if bTK then
        bTK = false
        bTL(false)
    end
    return true
end
fns.cgs_44.DoFishing = fns.fn3839
fns.cgs_44.Track(fns.cgs_44.FishingState.OnClientEvent:Connect(function(akl, akm)
    local castSerial, reelSerial
    if fns.cgs_51.Unloaded then
        return
    end
    local bT8 = fns.Toggles2.AutoFishing and fns.Toggles2.AutoFishing.Value
    local bT8_2 = not (fns.Toggles2.AutoReel and fns.Toggles2.AutoReel.Value)
    local bUb = not bT8
    if bUb ~= false then
        bUb = bT8_2
    end
    if bUb then
        return
    end
    if akl == "cast" then
        fns.cgs_44.FishState.busy = true
        fns.cgs_44.FishState.phase = "waiting"
        fns.cgs_44.FishState.castAt = os.clock()
        local FishState3 = fns.cgs_44.FishState
        FishState3.castSerial = FishState3.castSerial + 1
        local FishState2 = fns.cgs_44.FishState
        FishState2.reelSerial = FishState2.reelSerial + 1
        local FishState = fns.cgs_44.FishState
        local bT9_1 = type(akm) == "table" and akm.castId
        FishState.serverCastId = bT9_1 or nil
    elseif akl == "reel" then
        fns.cgs_44.FishState.phase = "reeling"
        fns.cgs_44.FishState.status = "reeling"
        local FishState = fns.cgs_44.FishState
        FishState.reelSerial = FishState.reelSerial + 1
        reelSerial = fns.cgs_44.FishState.reelSerial
        castSerial = fns.cgs_44.FishState.castSerial
        local bT8_4 = type(akm) == "table" and tonumber(akm.difficulty)
        local bT9_2 = bT8_4 or 0
        task.delay(fns.cgs_44.ReelDelay(bT9_2), function()
            local bT1 = fns.Toggles2.AutoFishing and fns.Toggles2.AutoFishing.Value
            if not bT1 then
                bT1 = fns.Toggles2.AutoReel and fns.Toggles2.AutoReel.Value
            end
            if bT1 then
                bT1 = fns.cgs_44.FishState.busy
            end
            if bT1 then
                bT1 = fns.cgs_44.FishState.phase == "reeling"
            end
            if bT1 then
                bT1 = fns.cgs_44.FishState.reelSerial == reelSerial
            end
            if bT1 then
                bT1 = fns.cgs_44.FishState.castSerial == castSerial
            end
            if bT1 then
                fns.cgs_44.FishState.phase = "submitting"
                fns.cgs_44.FishingResult:FireServer("caught")
            end
        end)
        task.spawn(function()
            pcall(fns.cgs_44.DriveFishingMinigame, reelSerial, castSerial)
        end)
    elseif akl == "done" then
        fns.cgs_44.FishState.busy = false
        local FishState2 = fns.cgs_44.FishState
        FishState2.reelSerial = FishState2.reelSerial + 1
        fns.cgs_44.FishState.serverCastId = nil
        if not fns.cgs_44.FishState.swapping then
            fns.cgs_44.FishState.phase = "idle"
        end
        local bT8_6 = type(akm) == "table" and akm.reason == "caught"
        if bT8_6 then
            local FishState = fns.cgs_44.FishState
            FishState.caught = FishState.caught + 1
            fns.cgs_44.FishState.status = "caught " .. tostring(akm.itemName)
        elseif not fns.cgs_44.FishState.swapping then
            fns.cgs_44.FishState.status = "fish escaped"
        end
    end
end))
fns.cgs_44.Track(fns.cgs_44.FishingFX.OnClientEvent:Connect(fns.onOnClientEvent8))
a2k = {}
a3S = {}
a16 = {}
a3K = {}
fns.cgs_114 = fns.fn4052
fns.cgs_44.ApplyAntiGameplayPause = function(ak1)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ak1)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ak1
        end
    end)
    if not ak1 then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(fns.cgs_74, "GameplayPaused", false)
        else
            fns.cgs_74.GameplayPaused = false
        end
    end)
end
a1i = fns.fn3713
fns.cgs_44.Track(a4h.JumpRequest:Connect(fns.onJumpRequest))
fns.cgs_44.RestoreNoclip = fns.fn2016
connection2 = a2K.Stepped:Connect(fns.onStepped)
a1B = fns.fn900
fns.cgs_44.NavigationPOIs = fns.fn5358
fns.cgs_44.NavigationRows = setmetatable({}, { __mode = "k" })
fns.cgs_44.RemoveNavigationTeleportButtons = function()
    local PlayerGui = fns.cgs_74:FindFirstChild("PlayerGui")
    if PlayerGui then
        for i, descendant in ipairs(PlayerGui:GetDescendants()) do
            if descendant.Name == "OuroborosTeleport" then
                descendant:Destroy()
            end
        end
    end
    for k, v in pairs(fns.cgs_44.NavigationRows) do
        if v.TeleportConnection then
            v.TeleportConnection:Disconnect()
        end
        for i, v in ipairs(v.OriginalConnections) do
            local bVy = v
            pcall(function()
                bVy:Enable()
            end)
        end
        if k.Parent then
            k:SetAttribute("OuroborosTeleports", nil)
        end
    end
    table.clear(fns.cgs_44.NavigationRows)
end
fns.cgs_44.InjectNavigationTeleportButtons = function(amd)
    local bVC = fns.cgs_51.Unloaded
    local bVM = if bVC then 1 else 0
    local bVK = 1486 * bVM + 805 * (1 - bVM)
    local bVL = 3675 * bVM + 1024 * (1 - bVM)
    if not ((bVK * 662 + bVL * 2555 + bVK * bVL) % 16777213 == 15834407) then
        bVC = not amd
    end
    if not bVC then
        bVC = not amd.Parent
    end
    if not bVC then
        bVC = not fns.Toggles2.NavigationTeleportButtons
    end
    if not bVC then
        bVC = not fns.Toggles2.NavigationTeleportButtons.Value
    end
    if bVC then
        return
    end
    local bVC_1 = fns.cgs_44.NavigationPOIs()
    if #bVC_1 == 0 then
        return
    end
    local bVD = amd:FindFirstChild("List", true)
    local bVE = os.clock() + 2
    while true do
        local bVF = amd.Parent and os.clock() < bVE
        if bVF then
            local bVF_1 = bVD or amd:FindFirstChild("List", true)
            bVD = bVF_1
            local bVF_2 = 0
            if bVD then
                for i, v in ipairs(bVC_1) do
                    local bVB
                    local bVG = bVD:FindFirstChild("POI_" .. tostring(i))
                    local bVH = bVG and bVG:IsA("GuiButton")
                    if bVH then
                        local OuroborosTeleport = bVG:FindFirstChild("OuroborosTeleport")
                        if OuroborosTeleport then
                            OuroborosTeleport:Destroy()
                        end
                        if not fns.cgs_44.NavigationRows[bVG] then
                            local bVH_2 = {}
                            bVB = v
                            if type(getconnections) == "function" then
                                for i, v in ipairs(getconnections(bVG.MouseButton1Click)) do
                                    local bVY = v
                                    local bVI_1 = pcall(function()
                                        bVY:Disable()
                                    end)
                                    if bVI_1 then
                                        bVH_2[#bVH_2 + 1] = bVY
                                    end
                                end
                            end
                            local connection = bVG.MouseButton1Click:Connect(function()
                                local bVz = typeof(bVB.position) == "Vector3" and fns.cgs_65(bVB.position)
                                if bVz then
                                    fns.cgs_6.status = "teleported to " .. tostring(bVB.name)
                                end
                            end)
                            fns.cgs_44.Track(connection)
                            fns.cgs_44.NavigationRows[bVG] = { OriginalConnections = bVH_2, TeleportConnection = connection }
                            bVG:SetAttribute("OuroborosTeleports", true)
                        end
                    else
                        bVF_2 += 1
                    end
                end
            else
                bVF_2 = #bVC_1
            end
            if bVF_2 == 0 then
                break
            end
            task.wait(0.05)
            continue
        end
        break
    end
end
fns.cgs_44.Track(fns.cgs_74:WaitForChild("PlayerGui").ChildAdded:Connect(function(amG)
    if amG.Name == "GPSMenu" then
        task.defer(function()
            fns.cgs_44.InjectNavigationTeleportButtons(amG)
        end)
    end
end))
fns.cgs_22 = fns.fn5008
task.spawn(fns.worker)
fns.cgs_103 = fns.fn3729
fns.cgs_44.SelectedVehicleGuid = fns.fn4206
fns.cgs_44.SpawnAnyVehicle = fns.fn1206
fns.cgs_44.OwnedVehicleModel = fns.fn544
a1W = fns.fn2454
a25 = fns.fn5500
fns.cgs_86 = {}
fns.cgs_21 = false
fns.cgs_44.WebhookAllowed = fns.fn3732
fns.cgs_44.WebhookMutationAllowed = fns.fn3833
fns.cgs_44.GRADE_LABELS = { Replica = "Replica", OneStar = "1 Star", TwoStar = "2 Star", ThreeStar = "3 Star" }
a37 = {}
a2t = false
fns.cgs_44.RollLines = function(an7)
    local bW1
    local bW3_1
    local bW2 = type(an7) == "table" and an7.RolledAttributes
    local bW2_1
    bW1 = bW2
    if type(bW1) ~= "table" then
        return nil
    end
    bW2_1, bW3_1 = pcall(function()
        return fns.cgs_44.AccessoryAttributes:FormatRollLines(bW1, an7.Grade)
    end)
    local bW4 = not bW2_1 or type(bW3_1) ~= "string"
    if bW4 or bW3_1 == "" then
        return nil
    end
    local bW3_2 = bW3_1:gsub("<[^>]->", "")
    if bW3_2:gsub("%s", "") == "" then
        return nil
    end
    return bW3_2
end
fns.cgs_44.MutationText = fns.fn5580
fns.cgs_44.DoGradeWatch = fns.fn4882
fns.cgs_44.NotifyWinningClaim = fns.fn1495
fns.a4y = fns.fn1946
Rarities = require(fns.cgs_12.Rarities)
a2N, a4f, fns.a2l, folder, a1F, a3j, a1I, a2f, a17, a1S, fns.cgs_88, a3a, a3U, a1_, a3s, fns.cgs_19_47, a1t, fns.cgs_112, a4t, a14, a3k, fns.cgs_97, fns.cgs_61 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
a2N = {
    Item = Color3.fromRGB(255, 255, 255),
    Safe = Color3.fromRGB(255, 190, 60),
    Nugget = Color3.fromRGB(255, 214, 92)
}
a4f = 15
pcall(fns.fn3610)
fns.a2l = {}
a17 = fns.fn4517
a1S = fns.fn3486
fns.cgs_88 = fns.fn1361
a3a = fns.fn181
a3U = fns.fn5646
a1_ = fns.fn5161
a3s = fns.fn235
if (not a2N or not a2N) and (a1t or not a1t) and (a3k or a2N or a2N and not a3k) or not a1t and not a3k and (a1t and a2N) and (a1t or a1t or a3k and not a3k) or not ((not a2N or not a2N) and (a1t or not a1t) and (a3k or a2N or a2N and not a3k) or not a1t and not a3k and (a1t and a2N) and (a1t or a1t or a3k and not a3k)) then
    fns.cgs_19_47 = function()
        local bY2, Position, bY4, bY5, bY6
        if not a3s() then
            if next(fns.a2l) then
                a1S()
            end
            return
        end
        local bY7 = fns.cgs_69()
        if not bY7 then
            return
        end
        bY6 = a3G(fns.Options.EspMaxDistance.Value, 1500)
        bY4 = a3G(fns.Options.EspMinValue.Value, 0)
        Position = bY7.Position
        bY2 = {}
        bY5 = function(ap5, ap6)
            local bYG = fns.cgs_101(ap5:GetAttribute("ItemId"))
            if not bYG then
                return
            end
            local bYH = a3U(ap5)
            local bYI = a3V(bYH)
            local bYJ = bYG.SafeId ~= nil
            local bYK = not bYJ
            if bYK ~= false then
                bYK = bYI < bY4
            end
            if bYK then
                return
            end
            local bYK_4 = fns.cgs_88(ap5)
            if not bYK_4 then
                return
            end
            local Magnitude = (bYK_4.Position - Position).Magnitude
            if Magnitude > bY6 then
                return
            end
            local bYK_5 = Rarities[bYG.Rarity]
            local bYJ_3 = bYJ and a2N.Safe
            if not bYJ_3 then
                bYJ_3 = bYK_5 and bYK_5.Color
            end
            if not bYJ_3 then
                bYJ_3 = a2N.Item
            end
            local bYK_6 = bYJ_3
            local bYJ_4 = ("%s %s%s\n$%.0f | %dm"):format(ap6, bYG.Name, a1_(bYH), bYI, math.floor(Magnitude))
            a3a(ap5, bYJ_4, bYK_6, bY6)
            bY2[ap5] = true
        end
        local function bY7_6(aqu, aqv, aqw)
            if not aqu then
                return
            end
            for i, child in ipairs(aqu:GetChildren()) do
                local bYR = (child:IsA("Model")) and child:GetAttribute("ItemId")
                if bYR then
                    local bYR_3 = fns.cgs_101(child:GetAttribute("ItemId"))
                    local bYS = bYR_3 and bYR_3.SafeId ~= nil
                    local bYS_2 = not aqw
                    local bY1 = if bYS_2 then 1 else 0
                    local bY_ = 3977 * bY1 + 1386 * (1 - bY1)
                    local bY0 = 3730 * bY1 + 3522 * (1 - bY1)
                    if not ((bY_ * 3935 + bY0 * 1650 + bY_ * bY0) % 16777213 == 3083779) then
                        bYS_2 = bYS
                    end
                    if bYS_2 then
                        bY5(child, aqv)
                    end
                end
            end
        end
        if fns.Toggles2.LostItemEsp.Value then
            bY7_6(workspace:FindFirstChild("_LostItems"), "[Lost]", false)
        end
        if fns.Toggles2.SafeEsp.Value then
            bY7_6(workspace:FindFirstChild("_LostItems"), "[Safe]", true)
            bY7_6(workspace:FindFirstChild("_Carryables"), "[Safe]", true)
        end
        if fns.Toggles2.NuggetEsp and fns.Toggles2.NuggetEsp.Value then
            local LocalGoldNuggetDrops = workspace:FindFirstChild("_LocalGoldNuggetDrops")
            if LocalGoldNuggetDrops then
                for i, child in ipairs(LocalGoldNuggetDrops:GetChildren()) do
                    local bY7_9 = fns.cgs_88(child)
                    if bY7_9 then
                        local Magnitude = (bY7_9.Position - Position).Magnitude
                        if Magnitude <= bY6 then
                            a3a(child, ("[Nugget] +%d\n%dm"):format(a4f, math.floor(Magnitude)), a2N.Nugget, bY6)
                            bY2[child] = true
                        end
                    end
                end
            end
        end
        for k, v in pairs(fns.a2l) do
            if not bY2[k] or not k.Parent then
                v:Destroy()
                fns.a2l[k] = nil
            end
        end
    end
else
    a1I = function()
        local bY2, Position, bY4, bY5, bY6
        if not a3s() then
            if next(fns.a2l) then
                a1S()
            end
            return
        end
        local bY7 = fns.cgs_69()
        if not bY7 then
            return
        end
        bY6 = a3G(fns.Options.EspMaxDistance.Value, 1500)
        bY4 = a3G(fns.Options.EspMinValue.Value, 0)
        Position = bY7.Position
        bY2 = {}
        bY5 = function(ap5, ap6)
            local bYG = fns.cgs_101(ap5:GetAttribute("ItemId"))
            if not bYG then
                return
            end
            local bYH = a3U(ap5)
            local bYI = a3V(bYH)
            local bYJ = bYG.SafeId ~= nil
            local bYK = not bYJ
            if bYK ~= false then
                bYK = bYI < bY4
            end
            if bYK then
                return
            end
            local bYK_1 = fns.cgs_88(ap5)
            if not bYK_1 then
                return
            end
            local Magnitude = (bYK_1.Position - Position).Magnitude
            if Magnitude > bY6 then
                return
            end
            local bYK_2 = Rarities[bYG.Rarity]
            local bYJ_1 = bYJ and a2N.Safe
            if not bYJ_1 then
                bYJ_1 = bYK_2 and bYK_2.Color
            end
            if not bYJ_1 then
                bYJ_1 = a2N.Item
            end
            local bYK_3 = bYJ_1
            local bYJ_2 = ("%s %s%s\n$%.0f | %dm"):format(ap6, bYG.Name, a1_(bYH), bYI, math.floor(Magnitude))
            a3a(ap5, bYJ_2, bYK_3, bY6)
            bY2[ap5] = true
        end
        local function bY7_1(aqu, aqv, aqw)
            if not aqu then
                return
            end
            for i, child in ipairs(aqu:GetChildren()) do
                local bYR = (child:IsA("Model")) and child:GetAttribute("ItemId")
                if bYR then
                    local bYR_1 = fns.cgs_101(child:GetAttribute("ItemId"))
                    local bYS = bYR_1 and bYR_1.SafeId ~= nil
                    local bYS_1 = not aqw
                    local bY1 = if bYS_1 then 1 else 0
                    local bY_ = 3977 * bY1 + 1386 * (1 - bY1)
                    local bY0 = 3730 * bY1 + 3522 * (1 - bY1)
                    if not ((bY_ * 3935 + bY0 * 1650 + bY_ * bY0) % 16777213 == 3083779) then
                        bYS_1 = bYS
                    end
                    if bYS_1 then
                        bY5(child, aqv)
                    end
                end
            end
        end
        if fns.Toggles2.LostItemEsp.Value then
            bY7_1(workspace:FindFirstChild("_LostItems"), "[Lost]", false)
        end
        if fns.Toggles2.SafeEsp.Value then
            bY7_1(workspace:FindFirstChild("_LostItems"), "[Safe]", true)
            bY7_1(workspace:FindFirstChild("_Carryables"), "[Safe]", true)
        end
        if fns.Toggles2.NuggetEsp and fns.Toggles2.NuggetEsp.Value then
            local LocalGoldNuggetDrops = workspace:FindFirstChild("_LocalGoldNuggetDrops")
            if LocalGoldNuggetDrops then
                for i, child in ipairs(LocalGoldNuggetDrops:GetChildren()) do
                    local bY7_4 = fns.cgs_88(child)
                    if bY7_4 then
                        local Magnitude = (bY7_4.Position - Position).Magnitude
                        if Magnitude <= bY6 then
                            a3a(child, ("[Nugget] +%d\n%dm"):format(a4f, math.floor(Magnitude)), a2N.Nugget, bY6)
                            bY2[child] = true
                        end
                    end
                end
            end
        end
        for k, v in pairs(fns.a2l) do
            if not bY2[k] or not k.Parent then
                v:Destroy()
                fns.a2l[k] = nil
            end
        end
    end
end
a1F = { containers = 0, trees = 0, npcs = 0, status = "idle" }
a3j = {
    _Debris = true,
    _Carryables = true,
    _LostItems = true,
    _Plots = true,
    _PickupTossActors = true,
    Areas = true,
    CargoShip = true
}
a1t = fns.fn1163
fns.cgs_112 = fns.fn247
a4t = fns.fn5277
a14 = fns.fn3948
a1I = { Parts = true, Door = true, Blocker = true }
a3k = fns.fn5130
fns.cgs_97 = fns.fn4510
a2f = { "Mall - Shop NPCs", "Toll Booth NPC", "_NPCShoppers", "_StaffWorkers" }
fns.cgs_61 = fns.fn2677
fns.cgs_44.CleanUpWorldEnabled = fns.fn5002
fns.cgs_44.RemoveNpcsEnabled = fns.fn4752
fns.cgs_44.OptimizeDue = fns.fn12
fns.cgs_44.HiddenGroundItems = setmetatable({}, { __mode = "k" })
fns.cgs_44.GroundItemDecalTransparency = setmetatable({}, { __mode = "k" })
fns.cgs_44.IsGroundItem = fns.fn1895
fns.cgs_44.SetGroundItemHidden = fns.fn1857
fns.cgs_44.RestoreGroundItems = fns.fn1607
fns.cgs_44.DoHideGroundItems = fns.fn2066
fns.cgs_44.doEsp = fns.cgs_19_47
fns.cgs_44.doOptimize = fns.fn3813
fns.cgs_44.clearEsp = a1S
fns.cgs_44.optimize = a1F
a1g, fns.cgs_17, fns.cgs_109, fns.cgs_93, fns.cgs_54, fns.cgs_62, a2J, fns.cgs_8 = nil, nil, nil, nil, nil, nil, nil, nil
fns.cgs_44.Track(fns.cgs_44.LostFoundOverride.OnClientEvent:Connect(function(asj)
    local b_4 = fns.cgs_51.Unloaded or type(asj) ~= "table"
    if b_4 then
        return
    end
    if not fns.Toggles2.CollectLostFound.Value then
        fns.cgs_44.LostFoundOverride:FireServer(true)
        return
    end
    fns.cgs_44.LostFoundOverride:FireServer(false)
    a1J.status = "recovering Lost & Found before auction"
    if type(asj.area) ~= "string" then
        return
    end
    if fns.cgs_44.LostFoundOverrideBusy then
        return
    end
    fns.cgs_44.LostFoundOverrideBusy = true
    task.spawn(function()
        local b_0 = 1
        while b_0 <= 20 do
            local b_X = fns.cgs_51.Unloaded or a3J(asj.area, true)
            if b_X then
                break
            end
            task.wait(0.5)
            b_0 += 1
        end
        fns.cgs_44.LostFoundOverrideBusy = false
    end)
end))
a1g = fns.fn4162
fns.cgs_44.AuctionHasPriority = fns.fn4747
fns.cgs_44.RecoverLostFoundBeforeAuction = fns.fn1836
fns.cgs_17 = fns.fn2449
fns.cgs_109 = fns.fn2987
fns.cgs_93 = fns.fn4737
if (not fns.cgs_54 or not fns.cgs_93) and (fns.cgs_8 and not fns.cgs_54) and (not fns.cgs_93 or fns.cgs_8 or not fns.cgs_54 and not fns.cgs_8) and (not fns.cgs_54 and not fns.cgs_93 and (fns.cgs_54 or not fns.cgs_93) and (not fns.cgs_54 and fns.cgs_93 and (not fns.cgs_8 or fns.cgs_54))) or ((fns.cgs_8 or not fns.cgs_54) and (fns.cgs_8 and not fns.cgs_54) and (fns.cgs_54 and not fns.cgs_54 or (not fns.cgs_54 or not fns.cgs_93)) or (fns.cgs_93 and not fns.cgs_54 or not fns.cgs_54 and not fns.cgs_93) and (fns.cgs_93 and fns.cgs_54 and (not fns.cgs_54 or not fns.cgs_93))) or not ((not fns.cgs_54 or not fns.cgs_93) and (fns.cgs_8 and not fns.cgs_54) and (not fns.cgs_93 or fns.cgs_8 or not fns.cgs_54 and not fns.cgs_8) and (not fns.cgs_54 and not fns.cgs_93 and (fns.cgs_54 or not fns.cgs_93) and (not fns.cgs_54 and fns.cgs_93 and (not fns.cgs_8 or fns.cgs_54))) or ((fns.cgs_8 or not fns.cgs_54) and (fns.cgs_8 and not fns.cgs_54) and (fns.cgs_54 and not fns.cgs_54 or (not fns.cgs_54 or not fns.cgs_93)) or (fns.cgs_93 and not fns.cgs_54 or not fns.cgs_54 and not fns.cgs_93) and (fns.cgs_93 and fns.cgs_54 and (not fns.cgs_54 or not fns.cgs_93)))) then
    fns.cgs_44.StopNpcBidAndLeave = fns.fn528
    fns.cgs_54 = fns.fn1457
    fns.cgs_44.RequestLeave = fns.fn694
    fns.cgs_62 = fns.fn1909
    a2J = fns.fn1353
else
    fns.cgs_54.StopNpcBidAndLeave = fns.fn528
    a2J = fns.fn1457
    fns.cgs_54.RequestLeave = fns.fn694
    fns.cgs_44 = fns.fn1909
    fns.cgs_62 = fns.fn1353
end
fns.cgs_8 = fns.fn986
fns.cgs_44.MaxBidLimit = fns.fn5355
fns.cgs_44.BidAllowed = fns.fn5073
fns.cgs_44.DoAutoBid = fns.fn1296
fns.cgs_44.DoAutoCalculator = fns.fn2626
fns.cgs_44.buildInterface = function()
    local imageButton
    local ccN
    local cde
    local cc6
    local cdD
    local cb6
    local cds
    local cb9
    local Position2
    local ccR
    local cc4
    local ccU
    local PlayerGui
    local Position
    local cdi
    local ccE
    local ccw
    local ccd
    local cco
    imageButton = nil
    cb6 = nil
    cb9 = nil
    ccd = nil
    PlayerGui = nil
    cco = nil
    ccw = nil
    ccE = nil
    local cbZ, cb_, Label32, cb1, Label14, cb3, Label23, Label9, Label6, cca, connection3, Label24, Label10, connection4, cch, Label19, Label33, cck, ccl, Label25, ccn, Label11, ccq, ccr, ccs, cct, ccu, Label26, Label12, ccy, ccz, screenGui, connection5, ccD, ccF, ccG, ccH, ccI, ccJ, ccK, Label29, ccM
    ccN = nil
    ccR = nil
    ccU = nil
    Position = nil
    Position2 = nil
    cc4 = nil
    cc6 = nil
    cde = nil
    cdi = nil
    cds = nil
    local ccO, ccP, ccQ, connection, ccT, Label15, ccW, ccY, CollectionService, cc_, Label16, cc2, Label17, cc5, cc7, Label18, cc9, cda, ProcessingGroup, cdc, cdd, cdf, Label20, cdh, cdj, cdk, cdl, Label30, Label, Label27, Label3, cdq, Label21, Label7, ThresholdBypassGroup, Label4, cdw, Label31, Label2, Label28
    cdD = nil
    local Label13, Label22, Label8, Label5
    Label13 = nil
    Label22 = nil
    Label8 = nil
    Label5 = nil
    fns.cgs_44.UI_RARITY_CHOICES = { "Any" }
    for i, v in ipairs(fns.cgs_44.RARITY_ORDER) do
        fns.cgs_44.UI_RARITY_CHOICES[#fns.cgs_44.UI_RARITY_CHOICES + 1] = v
    end
    fns.cgs_44.UI_MUTATION_CHOICES = {}
    local cgt_31 = {
        "Mutations",
        "SizeMutations",
        "TimeMutations",
        "TagMutations",
        "EventMutations",
        "CleanMutations",
        "FlagMutations",
        "PerfectMutations"
    }
    local cgt_12 = {}
    local cgt_12_16
    local cgt_49 = {}
    local cgt_49_7
    for i, v in ipairs(cgt_31) do
        cgt_49[v] = true
    end
    for k, v in pairs(fns.MutatorModule) do
        local cgt_32_1 = type(k) == "string" and not cgt_49[k] and type(v) == "table"
        if cgt_32_1 then
            for i, v in ipairs(v) do
                local cgt_32_2 = type(v) == "table" and v.Name
                if cgt_32_2 then
                    cgt_31[#cgt_31 + 1] = k
                    cgt_49[k] = true
                    break
                end
            end
        end
    end
    for i, v in ipairs(cgt_31) do
        local cgt_49_1 = fns.MutatorModule[v] or {}
        for i, v in ipairs(cgt_49_1) do
            if v.Name and not cgt_12[v.Name] then
                cgt_12[v.Name] = true
                fns.cgs_44.UI_MUTATION_CHOICES[#fns.cgs_44.UI_MUTATION_CHOICES + 1] = v.Name
            end
        end
    end
    fns.cgs_44.UI_MUTATION_CHOICES[#fns.cgs_44.UI_MUTATION_CHOICES + 1] = fns.cgs_44.TROPHY_CHOICE
    fns.cgs_44.FavouriteMutationChoices = {}
    for i, v in ipairs(fns.cgs_44.UI_MUTATION_CHOICES) do
        if v ~= fns.cgs_44.TROPHY_CHOICE then
            fns.cgs_44.FavouriteMutationChoices[#fns.cgs_44.FavouriteMutationChoices + 1] = v
        end
    end
    fns.cgs_44.UI_GRADE_CHOICES = {}
    local cgt_49_2 = fns.GameConfig.Grading and fns.GameConfig.Grading.GradeMultipliers or {}
    for k in pairs(cgt_49_2) do
        fns.cgs_44.UI_GRADE_CHOICES[#fns.cgs_44.UI_GRADE_CHOICES + 1] = k
    end
    table.sort(fns.cgs_44.UI_GRADE_CHOICES)
    fns.cgs_44.UI_EXTRA_UPGRADE_IDS = {}
    for i, v in ipairs(fns.cgs_3.Upgrades) do
        if v.id and not fns.cgs_44.CORE_UPGRADE_IDS[v.id] then
            fns.cgs_44.UI_EXTRA_UPGRADE_IDS[#fns.cgs_44.UI_EXTRA_UPGRADE_IDS + 1] = v.id
        end
    end
    table.sort(fns.cgs_44.UI_EXTRA_UPGRADE_IDS)
    fns.cgs_44.UI_ITEM_NAMES = {}
    local cgt_31_5 = {}
    for k, v in pairs(Items) do
        local cgt_12_2 = type(v) == "table" and v.Name and not cgt_31_5[v.Name]
        if cgt_12_2 then
            cgt_31_5[v.Name] = true
            fns.cgs_44.UI_ITEM_NAMES[#fns.cgs_44.UI_ITEM_NAMES + 1] = v.Name
        end
    end
    if not cgt_31_5["Cargo Car Parts Box"] then
        fns.cgs_44.UI_ITEM_NAMES[#fns.cgs_44.UI_ITEM_NAMES + 1] = "Cargo Car Parts Box"
    end
    table.sort(fns.cgs_44.UI_ITEM_NAMES)
    fns.cgs_44.SAFE_ITEM_NAMES = {}
    local cgt_31_6 = {}
    for k, v in pairs(Items) do
        local cgt_12_3 = type(v) == "table" and v.Name and v.SafeId ~= nil and not cgt_31_6[v.Name]
        if cgt_12_3 then
            cgt_31_6[v.Name] = true
            fns.cgs_44.SAFE_ITEM_NAMES[#fns.cgs_44.SAFE_ITEM_NAMES + 1] = v.Name
        end
    end
    table.sort(fns.cgs_44.SAFE_ITEM_NAMES)
    fns.cgs_44.StockCategoryChoices = {}
    local cgt_31_7 = {}
    for k, v in pairs(Items) do
        local cgt_12_4 = type(v) == "table" and v.Category and not cgt_31_7[v.Category]
        if cgt_12_4 then
            cgt_31_7[v.Category] = true
            fns.cgs_44.StockCategoryChoices[#fns.cgs_44.StockCategoryChoices + 1] = v.Category
        end
    end
    for i, v in ipairs(fns.cgs_44.EXTRA_CATEGORIES) do
        if not cgt_31_7[v.Name] then
            cgt_31_7[v.Name] = true
            fns.cgs_44.StockCategoryChoices[#fns.cgs_44.StockCategoryChoices + 1] = v.Name
        end
    end
    table.sort(fns.cgs_44.StockCategoryChoices)
    fns.cgs_44.UI_AREA_NAMES = {}
    for i, v in ipairs(fns.cgs_44.AREA_ORDER) do
        if Areas[v] then
            fns.cgs_44.UI_AREA_NAMES[#fns.cgs_44.UI_AREA_NAMES + 1] = v
        end
    end
    for k, v in pairs(Areas) do
        local cgt_31_8 = type(v) == "table" and not table.find(fns.cgs_44.UI_AREA_NAMES, k)
        if cgt_31_8 then
            fns.cgs_44.UI_AREA_NAMES[#fns.cgs_44.UI_AREA_NAMES + 1] = k
        end
    end
    local cgt_31_9 = fns.cgs_51:CreateWindow({
        Title = "Ouroboros Hub",
        Footer = { { Text = a3W, Copyable = true }, "|", "Storage Hunters" },
        Icon = 78539693571783,
        Size = UDim2.fromOffset(900, 640),
        ShowCustomCursor = false,
        NotifySide = "Right",
        CornerRadius = 0,
        GlobalSearch = true
    })
    cb_ = {
        [1] = cgt_31_9:AddTab("Info", "info"),
        [2] = cgt_31_9:AddTab("Farming", "gamepad-2"),
        [3] = cgt_31_9:AddTab("Management", "briefcase-business"),
        [4] = cgt_31_9:AddTab("Utilities", "wrench"),
        [5] = cgt_31_9:AddTab("Settings", "settings")
    }
    cb_[6] = cb_[2]:AddSubTab("Auctions", "gavel")
    cb_[7] = cb_[2]:AddSubTab("Loot", "package")
    cb_[8] = cb_[2]:AddSubTab("Fishing", "fish")
    cb_[9] = cb_[2]:AddSubTab("Processing", "hammer")
    cb_[10] = cb_[2]:AddSubTab("Wild West", "coins")
    cb_[11] = cb_[3]:AddSubTab("Shop", "store")
    cb_[12] = cb_[3]:AddSubTab("Rewards", "gift")
    cb_[13] = cb_[3]:AddSubTab("Quests", "scroll-text")
    cb_[14] = cb_[3]:AddSubTab("Index", "book-open")
    cb_[15] = cb_[4]:AddSubTab("Player", "footprints")
    cb_[16] = cb_[4]:AddSubTab("Webhook", "bell")
    local function cgt_31_10(awz)
        local DiscordGroup = awz:AddLeftGroupbox("Discord", "message-circle", true, false, true)
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = a3b })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = a3b })
    end
    local cgt_12_5 = {
        cb_[6],
        cb_[7],
        cb_[8],
        cb_[9],
        cb_[10],
        cb_[11],
        cb_[12],
        cb_[13],
        cb_[14],
        cb_[15],
        cb_[16],
        cb_[5]
    }
    for i, v in ipairs(cgt_12_5) do
        cgt_31_10(v)
    end
    cdi = "  ↳ "
    cco = "#ffe2f1"
    cds = "  ·  "
    cda = "  • "
    cb6 = "#8c5f78"
    ccw = "#ff7ab8"
    ccd = "#d79ec1"
    cdD = "#f5bede"
    cc4 = function(awP, awQ)
        return ('<font color="%s">%s</font>'):format(awQ, awP)
    end
    ccN = function(awS)
        return (tostring(awS):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
    end
    fns.cgs_44.Fmt = {}
    fns.cgs_44.Fmt.Stat = function(awT, awU)
        local b12 = cc4("<b>" .. ccN(awT) .. "</b>", cco)
        if awU and awU ~= "" then
            b12 = b12 .. " " .. cc4(ccN(awU), ccd)
        end
        return b12
    end
    fns.cgs_44.Fmt.Text = function(aw_)
        return cc4("<b>" .. ccN(aw_) .. "</b>", cco)
    end
    fns.cgs_44.Fmt.Money = function(aw3)
        local Stat = fns.cgs_44.Fmt.Stat
        local b2b = (tonumber(aw3)) or 0
        return Stat(("$%s"):format(fns.cgs_48(math.floor(b2b))))
    end
    fns.cgs_44.Fmt.Row = function(aw7, aw8, aw9)
        local b2d = cc4("<b>" .. ccN(aw7) .. "</b>", ccw)
        if aw8 and #aw8 > 0 then
            b2d = b2d .. cc4(cds, cb6) .. table.concat(aw8, cc4(cds, cb6))
        end
        if aw9 ~= nil and aw9 ~= "" then
            b2d = b2d .. "\n" .. cc4(cdi, cb6) .. cc4("<i>" .. ccN(aw9) .. "</i>", cdD)
        end
        return b2d
    end
    fns.cgs_44.Fmt.Lines = function(axj, axk, axl)
        if not axk or #axk == 0 then
            local Row = fns.cgs_44.Fmt.Row
            local b2l = axl or "none"
            return Row(axj, nil, b2l)
        end
        local b2k_2 = { cc4("<b>" .. ccN(axj) .. "</b>", ccw) }
        for i, v in ipairs(axk) do
            b2k_2[#b2k_2 + 1] = cc4(cda, cb6) .. cc4(ccN(v), cdD)
        end
        return table.concat(b2k_2, "\n")
    end;
    (function()
        local b3w
        local b3s
        local b3z
        local b3o
        local b3v
        local b3n
        local b3q
        local b3x
        local b3t
        b3n = nil
        b3o = nil
        b3q = nil
        b3s = nil
        b3t = nil
        b3v = nil
        b3w = nil
        b3x = nil
        b3z = nil
        local Players, b3m, Label, b3r, Label3, Label2
        b3t = "Unknown"
        Players = game:GetService("Players")
        pcall(function()
            local b2u_1
            local b2t_1
            if identifyexecutor then
                b2u_1, b2t_1 = identifyexecutor()
                local b2v = b2u_1 ~= ""
                local b2w = type(b2u_1) == "string" and b2v
                if b2w then
                    local b2v_1 = type(b2t_1) == "string" and b2t_1 ~= "" and b2u_1 .. " " .. b2t_1
                    b3t = b2v_1 or b2u_1
                end
            end
        end)
        b3q = function(axx, axy)
            return string.format('<font color="%s">%s</font>', axy, axx)
        end
        b3r = function(axA, axB, axC)
            return string.format("<b>%s</b> %s %s", b3q(axA, "#ff7ab8"), b3q("·", "#8c5f78"), b3q(axB, axC))
        end
        local b3A = "#c89bb2"
        b3z = "#ff9ecf"
        b3s = "https://ouroboros-hub-rbx.web.app/"
        b3o = "#ffe2f1"
        b3v = "#ff5f9e"
        b3x = function(axM, axN)
            if setclipboard then
                setclipboard(axM)
            elseif toclipboard then
                toclipboard(axM)
            end
            fns.cgs_51:Notify(axN)
        end
        local function b3D()
            local b2C = hookfunction ~= nil
            local b2D = hookmetamethod ~= nil
            local b2E = getrawmetatable ~= nil
            local b2F = setrawmetatable ~= nil
            local b2G = getgc ~= nil
            local b2H = getgenv ~= nil
            local b2I = getreg ~= nil
            local b2J = getconnections ~= nil
            local b2K = firesignal ~= nil
            local b2L = getcallbackvalue ~= nil
            local b2M = setclipboard ~= nil
            local b2N = getcustomasset ~= nil
            local b2O = getnamecallmethod ~= nil
            local b2P = isexecutorclosure ~= nil
            local b2Q = fireproximityprompt ~= nil
            local b2R = firetouchinterest ~= nil
            local b2S = WebSocket ~= nil
            local b2T = readfile ~= nil
            local b2U = writefile ~= nil
            local b2W = (request or http_request) ~= nil
            local b2Y = (debug and debug.getupvalues) ~= nil
            local b2_ = (debug and debug.setupvalue) ~= nil
            local b20 = 0
            local b21 = {
                b2C,
                b2D,
                b2E,
                b2F,
                b2G,
                b2H,
                b2I,
                b2J,
                b2K,
                b2L,
                b2M,
                b2N,
                b2O,
                b2P,
                b2Q,
                b2R,
                b2S,
                b2T,
                b2U,
                b2W,
                b2Y,
                b2_
            }
            for i, v in ipairs(b21) do
                if v then
                    b20 += 1
                end
            end
            local b2C_1 = b20 / #b21
            if b2C_1 >= 0.9 then
                return b3q("Full Support", b3o)
            elseif b2C_1 >= 0.6 then
                return b3q("Half Support", b3z)
            else
                return b3q("Low Support", b3v)
            end
        end
        local b3E = b3D()
        b3w = os.clock()
        b3m = function()
            local b3c = math.floor(os.clock() - b3w)
            if b3c < 60 then
                return b3c .. "s"
            elseif b3c < 3600 then
                return string.format("%dm %ds", b3c // 60, b3c % 60)
            else
                return string.format("%dh %dm", b3c // 3600, b3c % 3600 // 60)
            end
        end
        local UserGroup = cb_[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = fns.cgs_74, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(b3r("User", fns.cgs_74.DisplayName .. " @" .. fns.cgs_74.Name, b3o), true)
        UserGroup:AddLabel(b3r("UserId", tostring(fns.cgs_74.UserId), "#ffc2e2"), true)
        UserGroup:AddLabel(b3r("Executor", b3t .. "  " .. b3E, b3o), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(b3r("Session", b3m(), b3z), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                b3x(fns.cgs_74.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                b3x("https://www.roblox.com/users/" .. tostring(fns.cgs_74.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = cb_[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddDivider("Server")
        SessionGroup:AddLabel(b3r("Game", "Storage Hunters", "#ffc2e2"), true)
        Label2 = SessionGroup:AddLabel(b3r("Players", "0/0", b3o), true)
        b3n = tostring(game.JobId)
        local b3B = #b3n > 18 and string.sub(b3n, 1, 18) .. "..."
        local b3B_1 = b3B or b3n
        SessionGroup:AddLabel(b3r("Job", b3B_1, b3A), true)
        Label = SessionGroup:AddLabel(b3r("Ping", "0 ms", b3z), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Server",
            Func = function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, fns.cgs_74)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                b3x(b3n, "Copied Job ID")
            end
        })
        task.spawn(function()
            local b3i_1
            local b3h_1
            while true do
                task.wait(1)
                if fns.cgs_51.Unloaded then
                    break
                end
                Label3:SetText(b3r("Session", b3m(), b3z))
                Label2:SetText(b3r("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), b3o))
                b3h_1, b3i_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local b3h_2 = b3h_1 and b3i_1 .. " ms" or "n/a"
                Label:SetText(b3r("Ping", b3h_2, b3z))
            end
        end)
        local SocialsGroup = cb_[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = a3b })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                b3x(a19, "Copied Rscripts profile to clipboard")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                b3x(b3s, "Copied website link")
            end
        })
    end)()
    local cgt_31_11 = cb_[13]:AddLeftGroupbox("Auto Quest - Configuration", "list-checks")
    cgt_31_11:AddDropdown("QuestNpcFilter", {
        Values = fns.cgs_44.QUEST_NPC_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Quest NPCs (empty = all)"
    })
    cgt_31_11:AddDropdown("QuestTaskFilter", {
        Values = fns.cgs_44.QUEST_TASK_TYPES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Quest Task Types (empty = all)"
    })
    local cgt_31_12 = cb_[13]:AddLeftGroupbox("Auto Quest - Control", "play")
    cgt_31_12:AddToggle("AutoQuest", { Text = "Enable Auto Quest Engine", Default = false })
    cgt_31_12:AddToggle("AutoGetQuests", { Text = "Auto Get Quests", Default = false })
    cgt_31_12:AddToggle("AutoClaimQuestRewards", { Text = "Auto Claim Quest Rewards", Default = false })
    cgt_31_12:AddButton({
        Text = "Get / Claim Now",
        Func = function()
            fns.cgs_44.Quest.nextInteractAt = 0
            task.spawn(fns.cgs_44.DoQuestInteraction, true)
        end
    })
    local cgt_31_13 = cb_[13]:AddRightGroupbox("Power Plant", "factory")
    cgt_31_13:AddToggle("AutoInstallPowerPlantParts", { Text = "Auto Install Parts", Default = false })
    cgt_31_13:AddToggle("PowerPlantInventoryAwareBids", { Text = "Bid Only for Needed Parts", Default = true })
    cgt_31_13:AddDropdown("PowerPlantMutationMode", {
        Values = { "Skip selected mutations", "Install selected mutations only" },
        Default = "Skip selected mutations",
        Text = "Mutation Rule"
    })
    cgt_31_13:AddDropdown("PowerPlantInstallMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Default = { "Void", "Chrome" },
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Part Mutations"
    })
    cgt_31_13:AddToggle("AutoFeedUranium", { Text = "Auto Feed Uranium", Default = false })
    Label33 = cgt_31_13:AddLabel(fns.cgs_44.Fmt.Row("Power Plant", nil, "idle"), true)
    local cgt_31_14 = cb_[13]:AddRightGroupbox("Auto Quest - Live Status", "activity")
    Label32 = cgt_31_14:AddLabel(fns.cgs_44.Fmt.Row("Quests", nil, "idle"), true)
    Label31 = cgt_31_14:AddLabel(fns.cgs_44.Fmt.Row("Active", nil, "no quest accepted"), true)
    Label30 = cgt_31_14:AddLabel(fns.cgs_44.Fmt.Row("Progress", nil, "nothing tracked yet"), true)
    fns.cgs_44.RefreshQuestStatus = function()
        local b3G = fns.cgs_44.QuestGuiSnapshot()
        local b3H = {}
        for i, v in ipairs(b3G.Quests) do
            b3H[#b3H + 1] = v.Title .. " (" .. v.Npc .. ")"
        end
        local b3I = {}
        for i, v in ipairs(b3G.Lines) do
            if i > 8 then
                b3I[#b3I + 1] = ("...and %d more"):format(#b3G.Lines - 8)
                break
            end
            b3I[#b3I + 1] = v
        end
        local Row = fns.cgs_44.Fmt.Row
        local b3K = fns.cgs_44.Fmt.Stat(fns.cgs_44.Quest.accepted, "accepted")
        local b3L = fns.cgs_44.Fmt.Stat(fns.cgs_44.Quest.completed, "completed")
        local Stat = fns.cgs_44.Fmt.Stat
        local b3N = #b3G.Rewards
        local b3P = #b3G.Rewards == 1 and "reward ready" or "rewards ready"
        Label32:SetText(Row("Quests", { b3K, b3L, Stat(b3N, b3P) }, fns.cgs_44.Quest.status))
        Label31:SetText(fns.cgs_44.Fmt.Lines("Active", b3H, "no quest accepted"))
        Label30:SetText(fns.cgs_44.Fmt.Lines("Progress", b3I, "nothing tracked yet"))
        local b3G_1 = fns.cgs_44.PowerPlantState.status or "idle"
        local b3H_1 = { tostring(b3G_1) }
        if fns.Toggles2.AutoFeedUranium and fns.Toggles2.AutoFeedUranium.Value then
            local b3G_3 = #b3H_1 + 1
            local b3I_1 = fns.cgs_44.PowerPlantState.uraniumStatus or "idle"
            b3H_1[b3G_3] = "Uranium: " .. tostring(b3I_1)
        end
        Label33:SetText(fns.cgs_44.Fmt.Lines("Power Plant", b3H_1))
    end
    local cgt_31_15 = cb_[13]:AddRightGroupbox("Warehouse Orders", "package")
    cgt_31_15:AddToggle("AutoWarehouseOrders", { Text = "Auto Warehouse Delivery Orders", Default = false })
    cgt_31_15:AddDropdown("WarehouseDifficulty", { Values = { "Auto", "Easy", "Medium", "Hard" }, Default = "Auto", Text = "Order Difficulty" })
    Label29 = cgt_31_15:AddLabel(fns.cgs_44.Fmt.Row("Warehouse", nil, "idle"), true)
    fns.cgs_44.RefreshWarehouseStatus = function()
        local Warehouse = fns.cgs_44.Warehouse
        Label29:SetText(fns.cgs_44.Fmt.Row("Warehouse", { fns.cgs_44.Fmt.Stat(Warehouse.completed, "delivered") }, Warehouse.status))
    end
    local cgt_31_16 = cb_[14]:AddLeftGroupbox("Collection Index", "book-open")
    cgt_31_16:AddDropdown("IndexArea", {
        Values = fns.cgs_44.INDEX_AREA_CHOICES,
        Default = "Junk Yard",
        Searchable = true,
        Text = "Index to complete"
    })
    cgt_31_16:AddInput("IndexSkipOdds", {
        Text = "Skip items over 1 in X (0 = no skip)",
        Default = "0",
        Numeric = true,
        Finished = true,
        Placeholder = "1000"
    })
    cgt_31_16:AddToggle("AutoIndexFarm", { Text = "Enable Auto Index Completion", Default = false })
    local cgt_31_17 = cb_[14]:AddRightGroupbox("Index Status", "activity")
    Label28 = cgt_31_17:AddLabel(fns.cgs_44.Fmt.Row("Index", nil, "not refreshed yet"), true)
    Label27 = cgt_31_17:AddLabel(fns.cgs_44.Fmt.Row("Targets", nil, "nothing to show yet"), true)
    cgt_31_17:AddToggle("IndexLiveStatus", { Text = "Live Status Updates", Default = false })
    cgt_31_17:AddButton({
        Text = "Refresh Status",
        Func = function()
            task.spawn(function()
                if not fns.cgs_44.IndexRefresh() then
                    fns.cgs_51:Notify("Failed to fetch collection state")
                end
                fns.cgs_44.RefreshIndexStatus()
            end)
        end
    })
    fns.cgs_44.RefreshIndexStatus = function()
        local Index = fns.cgs_44.Index
        if Index.refreshedAt == 0 then
            Label28:SetText(fns.cgs_44.Fmt.Row("Index", nil, "not refreshed yet"))
            Label27:SetText(fns.cgs_44.Fmt.Row("Targets", nil, "nothing to show yet"))
            return
        end
        local b37 = {
            fns.cgs_44.Fmt.Stat(("%d/%d"):format(Index.have, Index.total), "collected"),
            fns.cgs_44.Fmt.Stat(#Index.targets, "targetable")
        }
        if Index.skipped > 0 then
            b37[#b37 + 1] = fns.cgs_44.Fmt.Stat(Index.skipped, "skipped by odds")
        end
        if Index.untargetable > 0 then
            b37[#b37 + 1] = fns.cgs_44.Fmt.Stat(Index.untargetable, "not in auction pool")
        end
        local Row = fns.cgs_44.Fmt.Row
        local b39 = fns.cgs_44.IndexArea()
        local b4a = not fns.cgs_44.IndexFarmArea() and "this index has no auctions, auto completion is unavailable"
        local b4b = b4a or nil
        Label28:SetText(Row(b39, b37, b4b))
        local b37_1 = {}
        for i, v in ipairs(Index.targets) do
            if i > 10 then
                b37_1[#b37_1 + 1] = ("...and %d more"):format(#Index.targets - 10)
                break
            else
                local b38_1 = fns.cgs_44.IndexOdds(v)
                local b39_1 = #b37_1 + 1
                local Name = v.Name
                local b4b_1 = tostring(v.Rarity)
                local b4c = tostring(v.Category)
                local b4d = v.BasePrice or 0
                local b4e = fns.cgs_48(b4d)
                local b4f = b38_1 and "1 in " .. fns.cgs_48(b38_1)
                local b38_2 = b4f or "odds unknown"
                b37_1[b39_1] = ("%s (%s, %s) $%s - %s"):format(Name, b4b_1, b4c, b4e, b38_2)
            end
        end
        Label27:SetText(fns.cgs_44.Fmt.Lines("Targets", b37_1, "index complete"))
    end
    fns.Options.IndexArea:OnChanged(function()
        fns.cgs_44.IndexRecompute()
        fns.cgs_44.RefreshIndexStatus()
    end)
    fns.Options.IndexSkipOdds:OnChanged(function()
        fns.cgs_44.IndexRecompute()
        fns.cgs_44.RefreshIndexStatus()
    end)
    fns.Toggles2.AutoIndexFarm:OnChanged(function()
        if fns.Toggles2.AutoIndexFarm.Value and fns.cgs_44.Index.refreshedAt == 0 then
            task.spawn(function()
                fns.cgs_44.IndexRefresh()
                fns.cgs_44.RefreshIndexStatus()
            end)
        end
    end)
    cb3 = nil
    local cgt_31_18 = cb_[6]:AddLeftGroupbox("General", "play")
    cgt_31_18:AddButton({
        Text = "Stop All Automation",
        Func = function()
            if fns.cgs_44.StopAllAutomation then
                fns.cgs_44.StopAllAutomation()
            end
        end
    })
    local cgt_31_19 = cb_[6]:AddLeftGroupbox("Auctions", "gavel")
    cgt_31_19:AddDropdown("AuctionArea", {
        Values = fns.cgs_44.UI_AREA_NAMES,
        Default = { "Junk Yard" },
        Multi = true,
        Searchable = true,
        Text = "Auction Areas"
    })
    local cgt_12_6 = {}
    for i, v in ipairs(fns.cgs_44.CONTAINERS) do
        cgt_12_6[#cgt_12_6 + 1] = v.Label
    end
    cgt_31_19:AddDropdown("ContainerFilter", {
        Values = cgt_12_6,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Containers (overrides Area)"
    })
    cgt_31_19:AddToggle("AutoEnterAuctions", { Text = "Auto Start Auctions", Default = false })
    cgt_31_19:AddToggle("WalkToNearbyAuctions", { Text = "Walk to Nearby Auctions", Default = false })
    cgt_31_19:AddSlider("AuctionWalkDistance", {
        Text = "Maximum Auction Walk Distance",
        Default = 200,
        Min = 25,
        Max = 500,
        Rounding = 0,
        Suffix = " studs"
    })
    cgt_31_19:AddDropdown("AuctionLoadout", {
        Values = { "Disabled", "Loadout 1", "Loadout 2", "Loadout 3" },
        Default = "Disabled",
        Text = "Accessory Loadout Before Auction"
    })
    cgt_31_19:AddToggle("WaitForInventorySpace", { Text = "Wait Until Inventory Below %", Default = false })
    cgt_31_19:AddSlider("AuctionInventoryMaxPercent", {
        Text = "Start Auctions Below Inventory %",
        Default = 80,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Suffix = "%"
    })
    cgt_31_19:AddToggle("DelayAuctionsAfterWin", { Text = "Delay Auctions After Winning", Default = false })
    cgt_31_19:AddSlider("AuctionWinDelay", { Text = "Delay After Win", Default = 30, Min = 1, Max = 300, Rounding = 0, Suffix = "s" })
    fns.Toggles2.AutoEnterAuctions:OnChanged(function()
        local b4A = fns.Toggles2.AutoEnterAuctions.Value
        local b4E = if b4A then 1 else 0
        local b4C = 2036 * b4E + 384 * (1 - b4E)
        local b4D = 2205 * b4E + 3590 * (1 - b4E)
        if not ((b4C * 2339 + b4D * 3531 + b4C * b4D) % 16777213 == 260226) then
            b4A = fns.cgs_44.QuestAuctionEnabled()
        end
        if not b4A then
            b4A = fns.cgs_44.IndexAuctionEnabled()
        end
        if b4A then
            a3w.cancelAuctionEntry = false
            return
        end
        a3w.entryAttempt = nil
        a3w.entryRetryAt = 0
        a3w.cancelAuctionEntry = true
        fns.a39.nextStockAt = 0
        fns.a39.auctionReleaseUntil = 0
        a1J.status = "Auto Auction disabled; clearing entry"
        task.spawn(function()
            local b4x = 1
            while b4x <= 4 do
                local b4t = fns.cgs_51.Unloaded or fns.cgs_66() or not a1g()
                if b4t then
                    break
                end
                pcall(function()
                    fns.cgs_44.LeaveAuction:InvokeServer()
                end)
                task.wait(0.75)
                if fns.cgs_74:GetAttribute("InAuction") ~= true then
                    a3w.active = false
                    a1s()
                    break
                end
                b4x += 1
            end
            if not fns.cgs_66() then
                a3w.cancelAuctionEntry = false
            end
        end)
    end)
    cgt_31_19:AddToggle("AutoEnterCargoShip", { Text = "Include Cargo Ship Event", Default = false })
    cgt_31_19:AddToggle("AutoEnterPoliceGarage", { Text = "Priority Police Seized Garage", Default = false })
    cgt_31_19:AddToggle("AutoEscapePolice", {
        Text = "Auto Escape Police Chase",
        Default = false,
        Callback = function(az8)
            if az8 then
                fns.cgs_44.EnsurePoliceEscapeHook()
            end
        end
    })
    cgt_31_19:AddToggle("PreferHighestTier", { Text = "Prefer Best Garage", Default = false })
    cgt_31_19:AddToggle("CollectLostFound", { Text = "Grab Lost & Found First", Default = false })
    cgt_31_19:AddToggle("AutoBid", { Text = "Auto Bid", Default = false })
    fns.Toggles2.AutoBid:OnChanged(function()
        a3w.bidRequestKey = nil
        a3w.bidRequestAt = 0
        fns.cgs_44.InvalidateLotCache()
    end)
    cgt_31_19:AddToggle("StopNpcBid", {
        Text = "Stop NPC Bid",
        Default = false,
        Callback = function(aAc)
            if not aAc then
                a3w.stopNpcAwaitingWinnings = false
                a3w.stopNpcWinningsDeadline = 0
                task.spawn(fns.cgs_44.SetAuctionPaused, false)
            end
        end
    })
    cgt_31_19:AddDropdown("StopNpcBidMode", {
        Values = { "Consistent (Slightly Slower)", "Potentially Bugged (Faster)" },
        Default = "Consistent (Slightly Slower)",
        Text = "Stop NPC Bid Mode"
    })
    cgt_31_19:AddInput("MinimumBid", { Text = "Min Bid ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_19:AddButton({
        Text = "Confirm Min Bid",
        Func = function()
            task.delay(0.1, function()
                if not fns.cgs_51.Unloaded then
                    fns.cgs_44.MinBidConfirmedLabel:SetText(fns.cgs_44.Fmt.Row("Min Bid", { fns.cgs_44.Fmt.Money(a3G(fns.Options.MinimumBid.Value, 0)) }, "confirmed"))
                end
            end)
        end
    })
    fns.cgs_44.MinBidConfirmedLabel = cgt_31_19:AddLabel(fns.cgs_44.Fmt.Row("Min Bid", nil, "not confirmed"), true)
    cgt_31_19:AddInput("MaximumBid", { Text = "Max Bid ($, 0 = no limit)", Default = "0", Numeric = true, Finished = true })
    cgt_31_19:AddSlider("BidDelay", { Text = "Bid Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
    cgt_31_19:AddToggle("LeaveIfBelowMin", { Text = "Leave If Bid Under Min", Default = false })
    cgt_31_19:AddToggle("LeaveIfLotBelowValue", { Text = "Leave If Lot Under Value", Default = false })
    cgt_31_19:AddInput("MinLotValue", { Text = "Min Lot Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_19:AddSlider("LeaveDelay", { Text = "Leave Delay", Default = 3, Min = 0, Max = 30, Rounding = 0, Suffix = "s" })
    local cgt_31_20 = cb_[6]:AddRightGroupbox("Status", "activity")
    local cgt_12_7 = cb_[6]:AddRightGroupbox("Auto Unload", "truck")
    cgt_12_7:AddDropdown("UnloadMethod", {
        Values = { "Unload at %", "Unload when Full", "Unload every 20s" },
        Default = "Unload when Full",
        Text = "Unload Method"
    })
    cgt_12_7:AddSlider("UnloadAtPercent", { Text = "Unload Truck At % Full", Default = 80, Min = 1, Max = 100, Rounding = 0, Suffix = "%" })
    ThresholdBypassGroup = cb_[6]:AddRightGroupbox("Threshold Bypass", "shield")
    ThresholdBypassGroup:AddToggle("EnableThresholdBypass", { Text = "Enable Threshold Bypass", Default = false })
    ThresholdBypassGroup:AddDropdown("BypassItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Bypass Items"
    })
    ThresholdBypassGroup:AddDropdown("BypassMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Bypass Mutations"
    })
    ThresholdBypassGroup:AddDropdown("BypassCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Bypass Categories"
    })
    ThresholdBypassGroup:AddDropdown("BypassRarities", {
        Values = fns.cgs_44.RARITY_ORDER,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Bypass Rarities"
    })
    ThresholdBypassGroup:AddInput("BypassMinWeight", { Text = "Bypass Min Item Weight (0 = off)", Default = "0", Numeric = true, Finished = true })
    cdc = {}
    cdj = {}
    fns.cgs_44.EnsureBypassSkipOption = function(aAt)
        local b4I = fns.cgs_44.SKIP_MUTATIONS_PREFIX .. aAt
        if not fns.Options[b4I] then
            ThresholdBypassGroup:AddDropdown(b4I, {
                Values = fns.cgs_44.UI_MUTATION_CHOICES,
                Multi = true,
                AllowNull = true,
                Searchable = true,
                Text = ("Don't Bid %s Mutations"):format(aAt)
            })
            fns.Options[b4I]:OnChanged(fns.cgs_44.InvalidateLotCache)
        end
        cdj[aAt] = b4I
        return fns.Options[b4I]
    end
    fns.cgs_44.EnsureBypassBidOption = function(aAz)
        local b4K = fns.cgs_44.BID_MUTATIONS_PREFIX .. aAz
        if not fns.Options[b4K] then
            ThresholdBypassGroup:AddDropdown(b4K, {
                Values = fns.cgs_44.UI_MUTATION_CHOICES,
                Multi = true,
                AllowNull = true,
                Searchable = true,
                Text = ("Bid If %s Mutations"):format(aAz)
            })
            fns.Options[b4K]:OnChanged(fns.cgs_44.InvalidateLotCache)
        end
        cdc[aAz] = b4K
        return fns.Options[b4K]
    end
    fns.cgs_44.EnsureBypassSkipOption("Gavel Trophy"):SetVisible(false)
    fns.cgs_44.EnsureBypassBidOption("Gavel Trophy"):SetVisible(false)
    cb3 = function()
        local b4M = fns.cgs_64(fns.Options.BypassItems.Value)
        for k in pairs(b4M) do
            local b4N_1 = fns.cgs_44.EnsureBypassSkipOption(k)
            local b4O = fns.cgs_44.EnsureBypassBidOption(k)
            if b4N_1 then
                b4N_1:SetVisible(true)
            end
            if b4O then
                b4O:SetVisible(true)
            end
        end
        for k, v in pairs(cdj) do
            if not b4M[k] then
                local b4N_2 = fns.Options[v]
                if b4N_2 then
                    b4N_2:SetVisible(false)
                end
            end
        end
        for k, v in pairs(cdc) do
            if not b4M[k] then
                local b4N_3 = fns.Options[v]
                if b4N_3 then
                    b4N_3:SetVisible(false)
                end
            end
        end
    end
    fns.Options.BypassItems:OnChanged(function()
        cb3()
        fns.cgs_44.InvalidateLotCache()
    end)
    cb3()
    fns.Options.BypassMutations:OnChanged(fns.cgs_44.InvalidateLotCache)
    fns.Options.BypassCategories:OnChanged(fns.cgs_44.InvalidateLotCache)
    fns.Options.BypassRarities:OnChanged(fns.cgs_44.InvalidateLotCache)
    fns.Options.BypassMinWeight:OnChanged(fns.cgs_44.InvalidateLotCache)
    fns.Toggles2.EnableThresholdBypass:OnChanged(fns.cgs_44.InvalidateLotCache)
    Label26 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Auction", nil, "idle"), true)
    Label25 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Winning Bid", nil, "no bids yet"), true)
    Label24 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Next Bid", nil, "waiting"), true)
    Label23 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Lot Value", nil, "waiting"), true)
    Label22 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Events", nil, "no events scheduled"), true)
    Label21 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Lost & Found", nil, "nothing found yet"), true)
    Label20 = cgt_31_20:AddLabel(fns.cgs_44.Fmt.Row("Filters", nil, "idle"), true)
    cc9 = function(aA4)
        if not aA4 then
            return "--"
        end
        return "$" .. string.format("%.0f", aA4)
    end
    cc_ = function(aA6)
        aA6 = math.max(0, math.floor(aA6))
        if aA6 >= 3600 then
            return ("%dh %02dm"):format(math.floor(aA6 / 3600), math.floor(aA6 % 3600 / 60))
        end
        return ("%d:%02d"):format(math.floor(aA6 / 60), aA6 % 60)
    end
    ccM = function()
        local b5a_1, b5a_2
        local b46 = os.time()
        local attr = game:GetService("Lighting"):GetAttribute("DevTimeOffset")
        if typeof(attr) == "number" then
            b46 += attr
        end
        local b47_1 = {}
        local b49 = fns.cgs_44.EventConfig.Events or {}
        local b49_1, b49_2
        for i, v in ipairs(b49) do
            local b5i = v
            local b48_1 = nil
            b49_1, b5a_1 = pcall(function()
                return fns.cgs_44.EventManager:GetEventTimeRemaining(b5i.Name)
            end)
            local b5b = b49_1 and typeof(b5a_1) == "number" and b5a_1 > 0
            if b5b then
                b48_1 = ("%s: LIVE (%s left)"):format(b5i.Name, cc_(b5a_1))
            else
                b49_2, b5a_2 = pcall(function()
                    if b5i.Concurrent then
                        return fns.cgs_44.EventManager:GetNextConcurrentStart(b5i.Name)
                    end
                    return fns.cgs_44.EventManager:GetNextEventStart(b5i.Name)
                end)
                local b5b_1 = b49_2 and typeof(b5a_2) == "number"
                if b5b_1 then
                    b48_1 = ("%s: in %s"):format(b5i.Name, cc_(b5a_2 - b46))
                end
            end
            if b48_1 then
                b47_1[#b47_1 + 1] = b48_1
            end
        end
        return b47_1
    end
    fns.cgs_44.RefreshStatus = function()
        if a3w.active then
            local garage = a3w.garage
            local b5n = garage and garage:GetAttribute("GarageId")
            local Row = fns.cgs_44.Fmt.Row
            local Text = fns.cgs_44.Fmt.Text
            local b5p = b5n or "in progress"
            Label26:SetText(Row("Auction", { Text(b5p) }))
        else
            Label26:SetText(fns.cgs_44.Fmt.Row("Auction", nil, "idle"))
        end
        if a3w.winner then
            Label25:SetText(fns.cgs_44.Fmt.Row("Winning Bid", { fns.cgs_44.Fmt.Text(cc9(a3w.currentBid)), fns.cgs_44.Fmt.Text(a3w.winner) }))
        else
            Label25:SetText(fns.cgs_44.Fmt.Row("Winning Bid", nil, "no bids yet"))
        end
        Label24:SetText(fns.cgs_44.Fmt.Row("Next Bid", { fns.cgs_44.Fmt.Text(cc9(a3w.nextBid)) }))
        Label23:SetText(fns.cgs_44.Fmt.Row("Lot Value", { fns.cgs_44.Fmt.Text(cc9(a3w.lotValue)) }))
        Label22:SetText(fns.cgs_44.Fmt.Lines("Events", ccM(), "no events scheduled"))
        if not fns.cgs_9[1] then
            Label21:SetText(fns.cgs_44.Fmt.Row("Lost & Found", nil, "nothing found yet"))
        else
            Label21:SetText(fns.cgs_44.Fmt.Row("Lost & Found", {
                fns.cgs_44.Fmt.Stat(fns.cgs_9[2], "waiting in " .. tostring(fns.cgs_9[1])),
                fns.cgs_44.Fmt.Stat(fns.cgs_9[3], "collected")
            }, fns.cgs_9[4]))
        end
        Label20:SetText(fns.cgs_44.Fmt.Row("Filters", { fns.cgs_44.Fmt.Stat(a1J.accepted, "kept"), fns.cgs_44.Fmt.Stat(a1J.rejected, "skipped") }, a1J.status))
    end
    local cgt_31_21 = cb_[7]:AddLeftGroupbox("Loot", "package")
    cgt_31_21:AddToggle("AutoWorldLoot", { Text = "Auto Collect World Loot", Default = false })
    cgt_31_21:AddSlider("LootRange", { Text = "Loot Range (studs)", Default = 80, Min = 10, Max = 500, Rounding = 0 })
    cgt_31_21:AddDropdown("LootRarity", { Values = fns.cgs_44.UI_RARITY_CHOICES, Default = "Any", Text = "Loot Minimum Rarity" })
    cgt_31_21:AddToggle("AlwaysGrabMutated", { Text = "Always Grab Mutated Loot", Default = false })
    cgt_31_21:AddDropdown("LootItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Loot Only These Items"
    })
    cgt_31_21:AddToggle("InstantCollect", { Text = "Instant Collect (No Wind-Up)", Default = false })
    cgt_31_21:AddToggle("AutoUnloadTruck", { Text = "Auto Unload Truck When Full", Default = false })
    cgt_31_21:AddToggle("AutoClaimWinnings", { Text = "Auto Claim Auction Winnings", Default = false })
    cgt_31_21:AddInput("MinWinningsValue", { Text = "Minimum Winnings Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_21:AddDropdown("WinningsRarity", { Values = fns.cgs_44.UI_RARITY_CHOICES, Default = "Any", Text = "Winnings Minimum Rarity" })
    cgt_31_21:AddInput("MinWinningsCondition", { Text = "Min Winnings Condition (%, 0 = all)", Default = "0", Numeric = true, Finished = true })
    local cgt_31_22 = cb_[7]:AddRightGroupbox("Safes & Lockpicks", "lock")
    cgt_31_22:AddToggle("AutoOpenSafes", { Text = "Auto Open Safes (Locksmith)", Default = false })
    cgt_31_22:AddToggle("AutoSpeedUpSafes", { Text = "Speed Up Safes (Diamonds)", Default = false })
    cgt_31_22:AddToggle("AutoBestLockpick", { Text = "Auto Buy + Equip Best Lockpick", Default = false })
    cgt_31_22:AddDropdown("PicklockItems", {
        Values = fns.cgs_44.SAFE_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Safes / Vaults To Open (empty = all)"
    })
    cgt_31_22:AddToggle("PicklockOnlyGraded", { Text = "Only Open Graded Safes / Vaults", Default = false })
    fns.cgs_44.BankHeist = fns.cgs_44.BankHeist or { status = "idle", placed = 0, completed = 0, c4 = 0 }
    ccI = function()
        local b5u = a18(fns.cgs_44.GetPlayerInventory)
        if type(b5u) ~= "table" then
            return 0
        end
        local BankHeistConfig = fns.cgs_44.BankHeistConfig
        local b5w = 0
        for k, v in pairs(b5u) do
            local b5u_1 = type(v) == "table" and tostring(v.ItemId) == tostring(BankHeistConfig.C4ItemId)
            if b5u_1 then
                b5w += 1
            end
        end
        return b5w
    end
    fns.cgs_44.DoBankHeist = function()
        local BankHeistConfig = fns.cgs_44.BankHeistConfig
        local BankHeist = fns.cgs_44.BankHeist
        if not (BankHeistConfig and fns.cgs_44.BankHeistGetState and fns.cgs_44.BankHeistAction) then
            BankHeist.status = "unavailable"
            return
        end
        if fns.cgs_74:GetAttribute(BankHeistConfig.Fields.Briefed) ~= true then
            BankHeist.status = "waiting: not briefed (needs Mike briefing)"
            return
        end
        local b5G_1 = a18(fns.cgs_44.BankHeistGetState)
        if type(b5G_1) ~= "table" then
            BankHeist.status = "waiting: no state"
            return
        end
        local floor2 = math.floor
        local b5I = (tonumber(b5G_1.Completed))
        local b5Q = if b5I then 1 else 0
        local b5O = 1441 * b5Q + 444 * (1 - b5Q)
        local b5P = 806 * b5Q + 1098 * (1 - b5Q)
        if not ((b5O * 717 + b5P * 1907 + b5O * b5P) % 16777213 == 3731685) then
            b5I = 0
        end
        BankHeist.completed = floor2(b5I)
        if b5G_1.VaultOpen == true then
            local b5H_1 = type(b5G_1.Loot) == "table" and b5G_1.Loot
            local b5J_1 = b5H_1 or {}
            local b5H_2 = false
            for i, v in ipairs(BankHeistConfig.LootDefinitions) do
                local b5W = v
                local b5J_2 = b5J_1[b5W.Key]
                local b5K_1 = type(b5J_2) == "table" and b5J_2.Claimed ~= true
                if b5K_1 then
                    pcall(function()
                        fns.cgs_44.BankHeistAction:FireServer("ClaimLoot", b5W.Key)
                    end)
                    b5H_2 = true
                    BankHeist.status = "claiming " .. b5W.Name
                    task.wait(BankHeistConfig.ActionMinInterval + 0.05)
                end
            end
            if not b5H_2 then
                BankHeist.status = "vault looted; waiting for reset"
            end
            return
        end
        local clamp = math.clamp
        local floor = math.floor
        local b5J_3 = (tonumber(b5G_1.C4Placed)) or 0
        local b5G_2 = clamp(floor(b5J_3), 0, BankHeistConfig.RequiredC4)
        BankHeist.placed = b5G_2
        if b5G_2 >= BankHeistConfig.RequiredC4 then
            BankHeist.status = "C4 set; fuse burning"
            return
        end
        local b5H_4 = ccI()
        BankHeist.c4 = b5H_4
        if b5H_4 < BankHeistConfig.RequiredC4 - b5G_2 then
            BankHeist.status = ("waiting: need C4 (%d in bag)"):format(b5H_4)
            return
        end
        if not fireproximityprompt then
            BankHeist.status = "executor missing fireproximityprompt"
            return
        end
        local b5I_5 = BankHeistConfig.FindBank()
        local b5J_4 = b5I_5 and BankHeistConfig.FindPromptPart(BankHeistConfig.FindVaultDoor(b5I_5))
        local b5I_6 = b5J_4
        if b5J_4 then
            b5J_4 = b5I_6:FindFirstChild(BankHeistConfig.C4PromptName)
        end
        local b5K_2 = b5J_4
        if b5J_4 then
            b5J_4 = b5K_2:IsA("ProximityPrompt")
        end
        if not b5J_4 then
            BankHeist.status = "waiting: bank vault not found"
            return
        end
        fns.cgs_65(b5I_6.Position + Vector3.new(0, 0, 4))
        task.wait(0.2)
        local b5I_7 = math.min(BankHeistConfig.RequiredC4, b5G_2 + b5H_4)
        while true do
            if b5G_2 < b5I_7 and fns.Toggles2.AutoBankHeist.Value and not fns.cgs_51.Unloaded then
                local b5H_6 = b5K_2.HoldDuration or 0
                pcall(fireproximityprompt, b5K_2, b5H_6)
                BankHeist.status = ("placing C4 (%d/%d)"):format(b5G_2 + 1, BankHeistConfig.RequiredC4)
                task.wait(BankHeistConfig.ActionMinInterval + 0.15)
                local b5H_7 = a18(fns.cgs_44.BankHeistGetState)
                local b5J_5 = b5H_7
                if b5J_5 then
                    local b5M = (tonumber(b5H_7.C4Placed)) or 0
                    b5J_5 = math.floor(b5M)
                end
                local b5H_8 = b5J_5 or b5G_2
                if b5H_8 <= b5G_2 then
                    BankHeist.status = "C4 place rejected (out of range or no C4)"
                    break
                end
                b5G_2 = b5H_8
                BankHeist.placed = b5G_2
                continue
            end
            break
        end
    end
    fns.cgs_44.Warehouse = fns.cgs_44.Warehouse or { status = "idle", completed = 0 }
    cdh = function(aCp)
        local b5X = a18(fns.cgs_44.GetPlayerInventory)
        if type(b5X) ~= "table" then
            return 0
        end
        local b5Y = tostring(aCp)
        local b5Z = 0
        for k, v in pairs(b5X) do
            local b5X_1 = type(v) == "table" and tostring(v.ItemId) == b5Y
            if b5X_1 then
                b5Z += 1
            end
        end
        return b5Z
    end
    cb1 = { "Hard", "Medium", "Easy" }
    fns.cgs_44.DoWarehouseOrders = function()
        local Warehouse = fns.cgs_44.Warehouse
        if not (fns.cgs_44.WarehouseGetState and fns.cgs_44.WarehouseAcceptOrder and fns.cgs_44.WarehouseDeliverOrder and fns.cgs_44.WarehouseDeliverPackage) then
            Warehouse.status = "unavailable"
            return
        end
        local b6b_1 = a18(fns.cgs_44.WarehouseGetState)
        if type(b6b_1) ~= "table" then
            Warehouse.status = "waiting: no state"
            return
        end
        local floor = math.floor
        local b6d = (tonumber(b6b_1.Completed)) or 0
        Warehouse.completed = floor(b6d)
        local Status = b6b_1.Status
        local b6d_1 = Status == "Package" and type(b6b_1.Package) == "table"
        if b6d_1 then
            local Pos = b6b_1.Package.Pos
            local b6e_1 = type(Pos) == "table" and #Pos >= 3
            if b6e_1 then
                local new = Vector3.new
                local b6f_1 = (tonumber(Pos[1]))
                local b6m = if b6f_1 then 1 else 0
                local b6k = 2624 * b6m + 3851 * (1 - b6m)
                local b6l = 1186 * b6m + 1029 * (1 - b6m)
                if not ((b6k * 2401 + b6l * 23 + b6k * b6l) % 16777213 == 9439566) then
                    b6f_1 = 0
                end
                local b6g_1 = (tonumber(Pos[2])) or 0
                local b6h_1 = (tonumber(Pos[3]))
                local b6m_1 = if b6h_1 then 1 else 0
                local b6k_1 = 3141 * b6m_1 + 3848 * (1 - b6m_1)
                local b6l_1 = 3767 * b6m_1 + 1694 * (1 - b6m_1)
                if not ((b6k_1 * 2421 + b6l_1 * 1999 + b6k_1 * b6l_1) % 16777213 == 10189528) then
                    b6h_1 = 0
                end
                fns.cgs_65(new(b6f_1, b6g_1, b6h_1))
                task.wait(0.3)
            end
            Warehouse.status = "delivering package"
            pcall(function()
                fns.cgs_44.WarehouseDeliverPackage:InvokeServer()
            end)
            return
        end
        local b6d_3 = Status == "Active" and type(b6b_1.Active) == "table"
        if b6d_3 then
            if b6b_1.Active.ReadyToDeliver == true then
                Warehouse.status = "delivering order"
                pcall(function()
                    fns.cgs_44.WarehouseDeliverOrder:InvokeServer()
                end)
            else
                local Active = b6b_1.Active
                local b6e_3 = Active.Difficulty or "?"
                local b6f_2 = tostring(b6e_3)
                local b6g_2 = Active.Count or "?"
                local b6h_2 = tostring(b6g_2)
                local b6d_5 = Active.ItemName or Active.ItemId or "item"
                Warehouse.status = ("active %s: need %sx %s"):format(b6f_2, b6h_2, tostring(b6d_5))
            end
            return
        end
        if Status == "Available" then
            local b6d_6 = (tonumber(b6b_1.ServerNow)) or os.time()
            local b6d_7 = (tonumber(b6b_1.CooldownUntil)) or 0
            if b6d_7 > b6d_6 then
                Warehouse.status = ("cooldown %ds"):format(b6d_7 - b6d_6)
                return
            end
            local b6d_8 = type(b6b_1.Options) == "table" and b6b_1.Options
            local b6e_5 = b6d_8 or {}
            local b59 = fns.Options.WarehouseDifficulty and fns.Options.WarehouseDifficulty.Value or "Auto"
            if b59 ~= "Auto" then
                local b6d_10 = b6e_5[b59]
                if type(b6d_10) == "table" then
                    Warehouse.status = "accepting " .. b59
                    pcall(function()
                        fns.cgs_44.WarehouseAcceptOrder:InvokeServer(b59)
                    end)
                else
                    Warehouse.status = b59 .. " order not offered"
                end
                return
            end
            for i, v in ipairs(cb1) do
                local b6s = v
                local b6d_11 = b6e_5[b6s]
                if type(b6d_11) == "table" then
                    local b6e_7 = (tonumber(b6d_11.Count)) or 0
                    if cdh(b6d_11.ItemId) >= b6e_7 then
                        Warehouse.status = "accepting " .. b6s
                        pcall(function()
                            fns.cgs_44.WarehouseAcceptOrder:InvokeServer(b6s)
                        end)
                        return
                    end
                end
            end
            Warehouse.status = "no order matches items you own"
            return
        end
        local b6b_4 = Status or "idle"
        Warehouse.status = tostring(b6b_4)
    end
    local cgt_31_25 = cb_[7]:AddLeftGroupbox("Bank Heist", "banknote")
    cgt_31_25:AddToggle("AutoBankHeist", { Text = "Auto Bank Heist", Default = false })
    Label19 = cgt_31_25:AddLabel(fns.cgs_44.Fmt.Row("Bank Heist", nil, "idle"), true)
    fns.cgs_44.RefreshBankHeistStatus = function()
        local BankHeist = fns.cgs_44.BankHeist
        local Row = fns.cgs_44.Fmt.Row
        local b6v = fns.cgs_44.Fmt.Stat(BankHeist.completed, "cleared")
        local Stat = fns.cgs_44.Fmt.Stat
        local placed = BankHeist.placed
        local b6z = fns.cgs_44.BankHeistConfig and fns.cgs_44.BankHeistConfig.RequiredC4 or 4
        Label19:SetText(Row("Bank Heist", { b6v, Stat(("%d/%d"):format(placed, b6z), "C4 placed") }, BankHeist.status))
    end
    local cgt_31_26 = cb_[8]:AddLeftGroupbox("Fishing", "fish")
    cgt_31_26:AddToggle("AutoFishing", {
        Text = "Auto Fish",
        Default = false,
        Callback = function(aDc)
            local b6B = not aDc
            if b6B ~= false then
                b6B = fns.cgs_44.FishState.busy
            end
            if b6B then
                fns.cgs_44.FishState.busy = false
                fns.cgs_44.FishState.status = "idle"
                pcall(function()
                    fns.cgs_44.FishingCancel:FireServer()
                end)
            end
        end
    })
    cgt_31_26:AddToggle("AutoReel", { Text = "Auto Reel", Default = false })
    cgt_31_26:AddDropdown("ReelMethod", {
        Values = { "Smart (track zone)", "Aggressive (edge lock)" },
        Default = "Smart (track zone)",
        Text = "Reel Method"
    })
    cgt_31_26:AddDropdown("CastPosition", {
        Values = { "Randomise", "Lock In First Pos", "Closest", "Furthest" },
        Default = "Randomise",
        Text = "Cast Position"
    })
    local cgt_31_27 = {}
    for k, v in pairs(Items) do
        local cgt_12_10 = type(v) == "table" and v.Interactive == "FishingRod" and v.Name
        if cgt_12_10 then
            cgt_31_27[#cgt_31_27 + 1] = v.Name
        end
    end
    table.sort(cgt_31_27)
    local cgt_12_11 = cb_[8]:AddLeftGroupbox("Rods", "anchor")
    cgt_12_11:AddToggle("AutoEquipRod", { Text = "Auto Equip Rod", Default = false })
    cgt_12_11:AddToggle("AutoSwapBrokenRod", { Text = "Auto Swap Broken Rod", Default = false })
    cgt_12_11:AddDropdown("PreferredRod", { Values = cgt_31_27, Default = "Fishing Rod", Text = "Preferred Rods" })
    local cgt_31_28 = cb_[8]:AddRightGroupbox("Other", "sliders-horizontal")
    cgt_31_28:AddToggle("AutoWashRods", { Text = "Auto Wash Rods", Default = false })
    cgt_31_28:AddToggle("AutoSellBrokenRods", { Text = "Auto Sell Broken Rods", Default = false })
    cgt_31_28:AddDropdown("BrokenRodSellMethod", { Values = { "Quick Sell", "Stock On Shelf" }, Default = "Quick Sell", Text = "Sell Method" })
    local cgt_31_29 = cb_[8]:AddRightGroupbox("Status", "activity")
    local cgt_12_12 = cb_[7]:AddRightGroupbox("Status", "activity")
    Label18 = cgt_12_12:AddLabel(fns.cgs_44.Fmt.Row("Truck", nil, "no vehicle spawned"), true)
    Label17 = cgt_12_12:AddLabel(fns.cgs_44.Fmt.Row("Loot", nil, "idle"), true)
    Label16 = cgt_12_12:AddLabel(fns.cgs_44.Fmt.Row("Lockpick", nil, "idle"), true)
    Label15 = cgt_31_29:AddLabel(fns.cgs_44.Fmt.Row("Fishing", nil, "idle"), true)
    fns.cgs_44.RefreshLootStatus = function()
        local b6I_1
        local b6H_1
        local b6G = fns.a2y()
        if b6G then
            Label18:SetText(fns.cgs_44.Fmt.Row("Truck", { fns.cgs_44.Fmt.Stat(("%d%%"):format(math.floor(b6G)), "full") }))
        else
            Label18:SetText(fns.cgs_44.Fmt.Row("Truck", nil, "no vehicle spawned"))
        end
        Label17:SetText(fns.cgs_44.Fmt.Row("Loot", {
            fns.cgs_44.Fmt.Stat(fns.a1y[1], "collected"),
            fns.cgs_44.Fmt.Stat(fns.a1y[2], "boxes opened"),
            fns.cgs_44.Fmt.Stat(fns.a1y[3], "unloaded")
        }, fns.a1y[4]))
        local b6G_1 = a3i[1]
        if not b6G_1 then
            b6H_1, b6I_1 = pcall(function()
                return fns.cgs_44.GetLockpickState:InvokeServer()
            end)
            local b6J = b6H_1 and type(b6I_1) == "table"
            if b6J then
                b6G_1 = b6I_1.equipped
                a3i[1] = b6G_1
            end
        end
        local b6H_2 = b6G_1 and fns.cgs_100.GetDisplayName(b6G_1)
        local b6G_2 = b6H_2 or "--"
        Label16:SetText(fns.cgs_44.Fmt.Row("Lockpick", { fns.cgs_44.Fmt.Text(b6G_2) }, a3i[2]))
        Label15:SetText(fns.cgs_44.Fmt.Row("Fishing", {
            fns.cgs_44.Fmt.Stat(fns.cgs_44.FishState.casts, "casts"),
            fns.cgs_44.Fmt.Stat(fns.cgs_44.FishState.caught, "caught")
        }, fns.cgs_44.FishState.status))
    end
    ProcessingGroup = cb_[9]:AddLeftGroupbox("Processing", "wrench")
    local function cgt_31_30(aDP, aDQ)
        ProcessingGroup:AddToggle("Auto" .. aDP, { Text = "Auto " .. aDQ .. " Items", Default = false })
        ProcessingGroup:AddInput(aDP .. "MinValue", { Text = aDQ .. ": Min Item Value ($)", Default = "0", Numeric = true, Finished = true })
        ProcessingGroup:AddDropdown(aDP .. "MinRarity", { Values = fns.cgs_44.UI_RARITY_CHOICES, Default = "Any", Text = aDQ .. ": Min Rarity" })
    end
    cgt_31_30("Grade", "Grade")
    ProcessingGroup:AddDropdown("GradePriority", {
        Values = { "Value (Highest First)", "Rarity (Highest First)" },
        Default = "Value (Highest First)",
        Text = "Grade Priority"
    })
    ProcessingGroup:AddDropdown("GradeOnlyCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Grade: Only Categories (empty = all)"
    })
    ProcessingGroup:AddDropdown("GradeOnlyItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Grade: Only Items (empty = all)"
    })
    ProcessingGroup:AddDropdown("GradePriorityItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Grade: Priority Items"
    })
    ProcessingGroup:AddDropdown("GradeCollectLoadout", {
        Values = { "Disabled", "Loadout 1", "Loadout 2", "Loadout 3" },
        Default = "Disabled",
        Text = "Accessory Loadout Before Grade Collection"
    })
    ProcessingGroup:AddInput("GradeMaxValue", { Text = "Grade: Max Item Value ($, 0 = no limit)", Default = "0", Numeric = true, Finished = true })
    ProcessingGroup:AddDropdown("GradeMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Grade: Only Mutations (empty = all)"
    })
    ProcessingGroup:AddToggle("GradeLimitedAndPotions", { Text = "Grade: Always Grade Limited Items & Potions", Default = false })
    ProcessingGroup:AddToggle("GradeClaimWhenFull", { Text = "Grade: Claim Finished Items Even If Inventory Full", Default = false })
    cgt_31_30("Repair", "Repair")
    ProcessingGroup:AddToggle("RepairClaimWhenFull", { Text = "Repair: Fix & Claim Broken Items Even If Inventory Full", Default = false })
    cgt_31_30("Wash", "Wash")
    ProcessingGroup:AddDropdown("WashSkipItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Wash: Dont Wash Items"
    })
    ProcessingGroup:AddToggle("WashClaimWhenFull", { Text = "Wash: Claim Finished Items Even If Inventory Full", Default = false })
    ProcessingGroup:AddToggle("AutoWrenchRepair", { Text = "Auto Repair Inventory + Winnings With Wrench", Default = false })
    ProcessingGroup:AddToggle("WashPrioritizeDusty", {
        Text = "Wash: Prioritize Dusty (Saloon Sparkle)",
        Tooltip = "Dusty items roll a higher Saloon Sparkle chance when washed, so queue them first",
        Default = false
    })
    ProcessingGroup:AddToggle("AutoWashSafes", { Text = "Wash: Always Include Safes", Default = false })
    ProcessingGroup:AddToggle("PrioritizeVaultsDrinks", {
        Text = "Prioritize Vaults, Luck Drinks, Certificates & Authenticated Accessories",
        Default = false
    })
    ProcessingGroup:AddToggle("AutoCollectProcessed", { Text = "Auto Collect Finished Items", Default = false })
    ProcessingGroup:AddToggle("AutoCapsule", { Text = "Auto Time Capsule", Default = false })
    ProcessingGroup:AddInput("CapsuleMinValue", { Text = "Capsule: Min Item Value ($)", Default = "0", Numeric = true, Finished = true })
    ProcessingGroup:AddDropdown("CapsuleMinRarity", { Values = fns.cgs_44.UI_RARITY_CHOICES, Default = "Any", Text = "Capsule: Place Min Rarity" })
    ProcessingGroup:AddDropdown("CapsuleMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Capsule: Only Mutations (empty = all)"
    })
    local cgt_31_31 = cb_[9]:AddRightGroupbox("Cleaning", "spray-can")
    cgt_31_31:AddToggle("AutoCleanItems", {
        Text = "Auto Clean Dirty Items",
        Tooltip = "Runs the pressure-wash minigame on every dirty item; needs a spray in stock",
        Default = false
    })
    cgt_31_31:AddToggle("AutoBuyCleaningSpray", { Text = "Auto Buy Cleaning Spray", Default = false })
    cgt_31_31:AddDropdown("CleaningSprayList", {
        Values = { "Small Cleaning Spray", "Large Cleaning Spray" },
        Multi = true,
        AllowNull = true,
        Text = "Sprays To Buy (empty = any)"
    })
    cgt_31_31:AddSlider("CleaningSprayStock", { Text = "Keep Sprays In Stock", Default = 1, Min = 1, Max = 10, Rounding = 0 })
    local cgt_31_32 = cb_[9]:AddRightGroupbox("Slots", "gem")
    cgt_31_32:AddToggle("AutoSpeedUpSlots", { Text = "Auto Speed Up Slots", Default = false })
    cgt_31_32:AddToggle("AutoUnlockSlots", { Text = "Auto Unlock Slots", Default = false })
    local cgt_31_33 = cb_[9]:AddRightGroupbox("Status", "activity")
    Label14 = cgt_31_33:AddLabel(fns.cgs_44.Fmt.Row("Processing", nil, "idle"), true)
    Label13 = cgt_31_33:AddLabel(fns.cgs_44.Fmt.Row("Slots", nil, "idle"), true)
    fns.cgs_44.RefreshProcessStatus = function()
        Label14:SetText(fns.cgs_44.Fmt.Row("Processing", {
            fns.cgs_44.Fmt.Stat(fns.cgs_45[1], "started"),
            fns.cgs_44.Fmt.Stat(fns.cgs_45[2], "claimed"),
            fns.cgs_44.Fmt.Stat(fns.cgs_45[5], "capsuled"),
            fns.cgs_44.Fmt.Stat(fns.cgs_45[6], "cleaned")
        }, fns.cgs_45[8]))
        Label13:SetText(fns.cgs_44.Fmt.Row("Slots", { fns.cgs_44.Fmt.Stat(fns.cgs_45[3], "unlocked"), fns.cgs_44.Fmt.Stat(fns.cgs_45[4], "sped up") }))
    end
    local cgt_31_34 = cb_[11]:AddLeftGroupbox("Selling", "dollar-sign")
    cgt_31_34:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    cgt_31_34:AddToggle("SellTruckItems", { Text = "Also Sell Items In Truck", Default = true })
    cgt_31_34:AddInput("MinSellValue", { Text = "Minimum Sell Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_34:AddInput("MaxSellValue", { Text = "Max Sell Value ($, 0 = no limit)", Default = "0", Numeric = true, Finished = true })
    cgt_31_34:AddDropdown("KeepValueMode", {
        Values = { "Disabled", "At or above", "At or below" },
        Default = "Disabled",
        Text = "Keep Items By Value"
    })
    cgt_31_34:AddInput("KeepValueThreshold", { Text = "Keep Value Threshold ($)", Default = "50000", Numeric = true, Finished = true })
    cgt_31_34:AddDropdown("SellCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Only Sell Categories (empty = all)"
    })
    cgt_31_34:AddDropdown("SellUpToRarity", {
        Values = fns.cgs_44.RARITY_ORDER,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Only Sell Rarities"
    })
    cgt_31_34:AddDropdown("NeverSellCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Never Sell Categories"
    })
    cgt_31_34:AddDropdown("NeverSellItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Never Sell Items"
    })
    cgt_31_34:AddDropdown("NeverSellMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Never Sell Mutations"
    })
    cgt_31_34:AddDropdown("NeverSellGrades", {
        Values = fns.cgs_44.UI_GRADE_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Never Sell Grades"
    })
    local cgt_31_35 = cb_[11]:AddLeftGroupbox("Shelf Stocking", "layout-grid")
    cgt_31_35:AddToggle("AutoStockShelves", { Text = "Auto Stock Shop Shelves", Default = false })
    fns.Toggles2.AutoStockShelves:OnChanged(function(aD4)
        if aD4 then
            fns.a39.nextStockAt = 0
            fns.a39.auctionReleaseUntil = 0
        end
    end)
    cgt_31_35:AddInput("MinStockValue", { Text = "Minimum Stock Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_35:AddInput("MaxStockValue", { Text = "Max Stock Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_35:AddDropdown("StockMethod", {
        Values = { "Place selected", "Skip selected" },
        Default = "Place selected",
        Text = "Auto Place Method"
    })
    cgt_31_35:AddDropdown("StockMatchMode", {
        Values = { "Match all filters", "Match any filter" },
        Default = "Match all filters",
        Text = "Filter Match Mode"
    })
    cgt_31_35:AddDropdown("StockPriority", {
        Values = { "Highest value", "Lowest value", "Rarest first", "Commonest first" },
        Default = "Highest value",
        Text = "Stock Priority"
    })
    cgt_31_35:AddDropdown("StockCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Stock Categories"
    })
    cgt_31_35:AddDropdown("StockMinRarity", {
        Values = fns.cgs_44.RARITY_ORDER,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Stock Rarities"
    })
    cgt_31_35:AddDropdown("StockMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Stock Mutations"
    })
    cgt_31_35:AddDropdown("StockGrades", {
        Values = fns.cgs_44.UI_GRADE_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Stock Grades"
    })
    cgt_31_35:AddDropdown("StockItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Stock Items"
    })
    cgt_31_35:AddDropdown("NeverStockCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Never Stock Categories (Always Excluded)"
    })
    cgt_31_35:AddDropdown("NeverStockItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Never Stock Items (Always Excluded)"
    })
    cgt_31_35:AddSlider("StockBatchSize", { Text = "Items Per Restock", Default = 10, Min = 1, Max = 50, Rounding = 0 })
    cgt_31_35:AddDropdown("StockInterval", {
        Values = { "1 second", "3 seconds", "5 seconds", "15 seconds", "30 seconds", "60 seconds" },
        Default = "3 seconds",
        Text = "Restock Every"
    })
    cgt_31_35:AddSlider("StockStaySeconds", {
        Text = "Stay on Plot For Stocking Items",
        Default = 0,
        Min = 0,
        Max = 60,
        Rounding = 0,
        Suffix = "s"
    })
    cgt_31_35:AddToggle("HideStockNotifications", { Text = "Hide Stock Placement Notifications", Default = true })
    local cgt_31_36 = cb_[11]:AddLeftGroupbox("Shop Expansion", "gem")
    cgt_31_36:AddToggle("AutoExpandShelfSlots", { Text = "Auto Expand Shelf Slots", Default = false })
    cgt_31_36:AddToggle("AutoExpandShopFloor", { Text = "Auto Expand Shop Floor", Default = false })
    cgt_31_36:AddToggle("AutoExpandItemCapacity", { Text = "Auto Expand Item Capacity", Default = false })
    cgt_31_36:AddDropdown("ExtraUpgrades", {
        Values = fns.cgs_44.UI_EXTRA_UPGRADE_IDS,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Other Upgrades"
    })
    cgt_31_36:AddInput("MaxDiamondsPerBuy", { Text = "Max Diamonds Per Buy", Default = "0", Numeric = true, Finished = true })
    local cgt_31_37 = cb_[11]:AddRightGroupbox("Customers", "users")
    cgt_31_37:AddToggle("AutoAcceptOffers", { Text = "Auto Accept NPC Offers", Default = false })
    cgt_31_37:AddInput("MinOfferPercent", { Text = "Minimum Offer % Above Base", Default = "0", Numeric = true, Finished = true })
    cgt_31_37:AddInput("MinOfferValue", { Text = "Minimum Offer Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_37:AddToggle("AutoDeclineOffers", { Text = "Auto Decline Low Offers", Default = false })
    local cgt_31_38 = cb_[11]:AddRightGroupbox("Favourites", "star")
    cgt_31_38:AddToggle("IgnoreFavoritedItems", { Text = "Ignore Favorited Items Everywhere", Default = true })
    cgt_31_38:AddToggle("AutoUnfavourite", {
        Text = "Auto Unfavourite Matching Items",
        Tooltip = "Clears the favourite on the items or mutations picked below so they stop being skipped everywhere",
        Default = false
    })
    cgt_31_38:AddDropdown("UnfavouriteItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Items to Unfavourite"
    })
    cgt_31_38:AddDropdown("UnfavouriteMutations", {
        Values = fns.cgs_44.FavouriteMutationChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Mutations to Unfavourite"
    })
    cgt_31_38:AddToggle("AutoFavourite", { Text = "Auto Favourite Matching Items", Default = false })
    cgt_31_38:AddDropdown("FavouriteItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Items to Favourite"
    })
    cgt_31_38:AddDropdown("FavouriteMutations", {
        Values = fns.cgs_44.FavouriteMutationChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Mutations to Favourite"
    })
    cgt_31_38:AddDropdown("FavouriteMutationMatch", {
        Values = { "Any Selected Mutation", "All Selected Mutations" },
        Default = "Any Selected Mutation",
        Text = "Mutation Match"
    })
    cgt_31_38:AddToggle("AutoFavouriteTrophies", { Text = "Auto Favourite Trophy Rule", Default = false })
    cgt_31_38:AddDropdown("TrophyFavouriteItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Trophy Rule Items"
    })
    cgt_31_38:AddDropdown("TrophyFavouriteMutations", {
        Values = fns.cgs_44.FavouriteMutationChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Trophy Rule Mutations"
    })
    cgt_31_38:AddDropdown("TrophyFavouriteMutationMatch", {
        Values = { "Any Selected Mutation", "All Selected Mutations" },
        Default = "Any Selected Mutation",
        Text = "Trophy Rule Mutation Match"
    })
    cgt_31_38:AddToggle("AutoFavouriteStats", { Text = "Auto Favorite Accessory Stats", Default = false })
    local cgt_12_13 = {}
    for i, v in ipairs(fns.cgs_44.AccessoryAttributes.AllAttributeIds) do
        local cgt_32_3 = fns.cgs_44.AccessoryAttributes.Definitions or {}
        local cgt_49_4 = cgt_32_3[tostring(v)]
        local cgt_32_4 = #cgt_12_13 + 1
        local cgt_49_5 = cgt_49_4 and cgt_49_4.Display or v
        cgt_12_13[cgt_32_4] = tostring(cgt_49_5)
    end
    table.sort(cgt_12_13)
    cgt_31_38:AddDropdown("FavouriteStatList", { Values = cgt_12_13, Multi = true, AllowNull = true, Text = "Stats To Favorite" })
    cgt_31_38:AddDropdown("FavouriteStatCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Stat Categories (empty = all)"
    })
    cgt_31_38:AddDropdown("FavouriteStatRarities", {
        Values = fns.cgs_44.RARITY_ORDER,
        Multi = true,
        AllowNull = true,
        Text = "Stat Rarities (empty = all)"
    })
    cgt_31_38:AddInput("FavouriteStatMin", { Text = "Minimum Stat Value", Default = "0", Numeric = true, Finished = true })
    local cgt_31_39 = cb_[11]:AddRightGroupbox("Ground Placement", "package-open")
    cgt_31_39:AddToggle("AutoGroundPlaceItems", {
        Text = "Auto Place Selected Types On Plot",
        Default = false,
        Callback = function(aEf)
            if aEf then
                fns.a39.nextGroundPlaceAt = 0
            end
        end
    })
    cgt_31_39:AddDropdown("GroundPlaceTypes", {
        Values = { "Accessories", "Limited", "Exclusives" },
        Multi = true,
        AllowNull = true,
        Text = "Inventory Types To Place"
    })
    cgt_31_39:AddDropdown("GroundPlaceRarities", {
        Values = fns.cgs_44.RARITY_ORDER,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Rarities To Place"
    })
    cgt_31_39:AddDropdown("GroundPlaceItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Specific Items To Place (empty = all selected types)"
    })
    cgt_31_39:AddDropdown("GroundPlaceSkipItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Don't Place These Items"
    })
    cgt_31_39:AddInput("GroundPlaceMinValue", { Text = "Minimum Item Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_39:AddInput("GroundPlaceMaxValue", { Text = "Maximum Item Value ($, 0 = no limit)", Default = "0", Numeric = true, Finished = true })
    cgt_31_39:AddSlider("GroundPlaceAtPercent", {
        Text = "Start At Inventory Fullness",
        Default = 90,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Suffix = "%"
    })
    cgt_31_39:AddSlider("GroundPlaceBatchSize", { Text = "Items Per Placement Pass", Default = 5, Min = 1, Max = 25, Rounding = 0 })
    cgt_31_39:AddSlider("GroundPlaceSpacing", { Text = "Minimum Placement Spacing", Default = 0, Min = 0, Max = 40, Rounding = 0 })
    cgt_31_39:AddSlider("GroundPlaceOffsetX", { Text = "Placement Point X", Default = 0, Min = -150, Max = 150, Rounding = 0 })
    cgt_31_39:AddSlider("GroundPlaceOffsetZ", { Text = "Placement Point Z", Default = 0, Min = -150, Max = 150, Rounding = 0 })
    cgt_31_39:AddButton({
        Text = "Set Placement Point To My Position",
        Func = function()
            local b6Z_1
            local b6T = fns.cgs_20()
            local b6U = b6T and fns.cgs_44.GroundPlacement.PlotFrame(b6T)
            local b6V_1
            local b6U_1 = fns.cgs_69()
            local b6X = not b6T or not b6U
            local b6X_1
            local b6Y = b6X or not b6U_1
            local b6Y_1
            if b6Y then
                fns.cgs_51:Notify("Stand on your owned plot first")
                return
            end
            local b6W_2 = b6U:PointToObjectSpace(b6U_1.Position)
            local b6U_2 = fns.cgs_44.GroundPlacement.PlotData(b6T)
            b6V_1, b6X_1, b6Y_1, b6Z_1 = fns.cgs_44.GroundPlacement.Bounds(b6T, b6U_2)
            local b6T_1 = b6W_2.X < b6V_1
            local b65 = if b6T_1 then 1 else 0
            local b63 = 1359 * b65 + 1594 * (1 - b65)
            local b64 = 2983 * b65 + 4072 * (1 - b65)
            if not ((b63 * 3142 + b64 * 974 + b63 * b64) % 16777213 == 11229317) then
                b6T_1 = b6W_2.X > b6X_1
            end
            if not b6T_1 then
                b6T_1 = b6W_2.Z < b6Y_1
            end
            if not b6T_1 then
                b6T_1 = b6W_2.Z > b6Z_1
            end
            if not b6T_1 then
                b6T_1 = not fns.cgs_44.GroundPlacement.FootprintUnlocked(b6W_2.X, b6W_2.Z, Vector3.new(0.2, 0.2, 0.2), b6U_2)
            end
            if b6T_1 then
                fns.cgs_51:Notify("The placement point must be on an unlocked plot tile")
                return
            end
            fns.Options.GroundPlaceOffsetX:SetValue(math.round(b6W_2.X))
            fns.Options.GroundPlaceOffsetZ:SetValue(math.round(b6W_2.Z))
            fns.cgs_51:Notify("Ground placement point saved")
        end
    })
    cgt_31_39:AddButton({
        Text = "Reset Point To Plot Center",
        Func = function()
            fns.Options.GroundPlaceOffsetX:SetValue(0)
            fns.Options.GroundPlaceOffsetZ:SetValue(0)
            fns.cgs_51:Notify("Ground placement point reset")
        end
    })
    local cgt_31_40 = cb_[11]:AddLeftGroupbox("Ground Pickup", "package")
    cgt_31_40:AddToggle("AutoGroundPickupItems", {
        Text = "Auto Pick Up Ground Items",
        Default = false,
        Callback = function(aEC)
            if aEC then
                fns.a39.nextGroundPickupAt = 0
            end
        end
    })
    cgt_31_40:AddDropdown("GroundPickupCategories", {
        Values = fns.cgs_44.StockCategoryChoices,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Pick Up Categories (empty = all)"
    })
    cgt_31_40:AddDropdown("GroundPickupItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Pick Up Only These Items (empty = all)"
    })
    cgt_31_40:AddDropdown("GroundPickupSkipTypes", {
        Values = { "Accessories", "Drinks", "Certificates" },
        Default = { "Accessories", "Drinks", "Certificates" },
        Multi = true,
        AllowNull = true,
        Text = "Don't Pick Up Types"
    })
    cgt_31_40:AddSlider("GroundPickupMinItems", { Text = "Minimum Matching Items", Default = 1, Min = 1, Max = 100, Rounding = 0 })
    local cgt_31_41 = cb_[11]:AddRightGroupbox("Storage Boxes", "archive")
    cgt_31_41:AddToggle("AutoStoreItems", { Text = "Auto Store Selected Items", Default = false })
    cgt_31_41:AddDropdown("AutoStoreItemList", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Items To Store"
    })
    cgt_31_41:AddToggle("StoreGradedOnly", { Text = "Store: Graded Only", Default = false })
    cgt_31_41:AddToggle("StoreMutatedItems", { Text = "Store Mutated Items", Default = false })
    local cgt_31_42 = cb_[11]:AddRightGroupbox("Status", "activity")
    Label12 = cgt_31_42:AddLabel(fns.cgs_44.Fmt.Row("Selling", nil, "idle"), true)
    Label11 = cgt_31_42:AddLabel(fns.cgs_44.Fmt.Row("Shelves", nil, "idle"), true)
    Label10 = cgt_31_42:AddLabel(fns.cgs_44.Fmt.Row("Ground Drop", nil, "idle"), true)
    Label9 = cgt_31_42:AddLabel(fns.cgs_44.Fmt.Row("Ground Pickup", nil, "idle"), true)
    Label8 = cgt_31_42:AddLabel(fns.cgs_44.Fmt.Row("Storage", nil, "idle"), true)
    Label7 = cgt_31_42:AddLabel(fns.cgs_44.Fmt.Row("Offers", nil, "idle"), true)
    fns.cgs_44.RefreshShopStatus = function()
        Label12:SetText(fns.cgs_44.Fmt.Row("Selling", { fns.cgs_44.Fmt.Stat(fns.a39.sold, "sold"), fns.cgs_44.Fmt.Money(fns.a39.earned) }, fns.a39.sellStatus))
        Label11:SetText(fns.cgs_44.Fmt.Row("Shelves", {
            fns.cgs_44.Fmt.Stat(fns.a39.stocked, "stocked"),
            fns.cgs_44.Fmt.Stat(fns.a39.failedStock, "failed"),
            fns.cgs_44.Fmt.Stat(fns.a39.eligibleStock, "eligible"),
            fns.cgs_44.Fmt.Stat(fns.a39.upgraded, "upgrades"),
            fns.cgs_44.Fmt.Stat(fns.a39.favourited, "favourited")
        }, fns.a39.status))
        Label10:SetText(fns.cgs_44.Fmt.Row("Ground Drop", {
            fns.cgs_44.Fmt.Stat(fns.a39.groundPlaced, "placed"),
            fns.cgs_44.Fmt.Stat(fns.a39.failedGroundPlace, "failed")
        }, fns.a39.groundStatus))
        Label9:SetText(fns.cgs_44.Fmt.Row("Ground Pickup", {
            fns.cgs_44.Fmt.Stat(fns.a39.groundPickedUp, "picked up"),
            fns.cgs_44.Fmt.Stat(fns.a39.failedGroundPickup, "failed")
        }, fns.a39.groundPickupStatus))
        Label8:SetText(fns.cgs_44.Fmt.Row("Storage", { fns.cgs_44.Fmt.Stat(fns.a39.stored, "stored") }, fns.a39.storageStatus))
        Label7:SetText(fns.cgs_44.Fmt.Row("Offers", {
            fns.cgs_44.Fmt.Stat(fns.a39.accepted, "accepted"),
            fns.cgs_44.Fmt.Stat(fns.a39.declined, "declined")
        }))
    end
    local cgt_31_43 = cb_[12]:AddLeftGroupbox("Free Rewards", "gift")
    cgt_31_43:AddToggle("AutoDailyReward", { Text = "Auto Claim Daily Reward", Default = false })
    cgt_31_43:AddToggle("AutoLostFound", { Text = "Auto Collect Lost & Found", Default = false })
    cgt_31_43:AddInput("LostFoundMinValue", { Text = "Minimum Lost & Found Value ($)", Default = "0", Numeric = true, Finished = true })
    cgt_31_43:AddDropdown("LostFoundMinRarity", { Values = fns.cgs_44.UI_RARITY_CHOICES, Default = "Any", Text = "Lost & Found Minimum Rarity" })
    cgt_31_43:AddToggle("AutoAchievements", { Text = "Auto Claim Achievements", Default = false })
    cgt_31_43:AddToggle("AutoCollections", { Text = "Auto Claim Collections", Default = false })
    cgt_31_43:AddToggle("AutoMuseumRewards", { Text = "Auto Claim Museum Rewards", Default = false })
    cgt_31_43:AddToggle("AutoMeteors", { Text = "Auto Claim Meteor Drops", Default = false })
    cgt_31_43:AddToggle("AutoClaimClubQuests", { Text = "Auto Claim Club Quests", Default = false })
    local cgt_31_44 = cb_[12]:AddRightGroupbox("Purchases", "shopping-cart")
    cgt_31_44:AddToggle("AutoBuyDrinks", { Text = "Auto Buy Luck Energy Drinks", Default = false })
    local cgt_12_14 = {}
    local cgt_49_6 = {}
    local cgt_32_5 = a18(fns.cgs_44.GetEnergyCatalog)
    local cgt_16_2 = type(cgt_32_5) == "table" and type(cgt_32_5.Drinks) == "table"
    if cgt_16_2 then
        for k, v in pairs(cgt_32_5.Drinks) do
            if v.Name then
                cgt_49_6[#cgt_49_6 + 1] = v.Name
                cgt_12_14[#cgt_12_14 + 1] = { Id = tostring(v.EnergyDrinkId), Name = tostring(v.Name) }
            end
        end
        table.sort(cgt_49_6)
        table.sort(cgt_12_14, function(aE1, aE2)
            local b67 = (tonumber(aE1.Id)) or 0
            local b68 = (tonumber(aE2.Id)) or 0
            return b67 < b68
        end)
    end
    cgt_31_44:AddDropdown("BuyDrinkList", { Values = cgt_49_6, Multi = true, AllowNull = true, Text = "Drinks To Buy (empty = all)" })
    cgt_31_44:AddToggle("UseDrinkStockTargets", { Text = "Keep Exact Drink Stock Targets", Default = false })
    for i, v in ipairs(cgt_12_14) do
        local cgt_12_15 = "DrinkStockTarget_" .. v.Id
        fns.cgs_44.DrinkStockOptionIds[v.Id] = cgt_12_15
        cgt_31_44:AddSlider(cgt_12_15, { Text = v.Name .. " Target Stock (0 = don't buy)", Default = 0, Min = 0, Max = 25, Rounding = 0 })
    end
    cgt_31_44:AddToggle("AutoUseDrinks", { Text = "Auto Use Luck Energy Drinks", Default = false })
    cgt_31_44:AddToggle("AutoUnfavoriteDrinks", { Text = "Auto Unfavorite Luck Drinks", Default = false })
    cgt_31_44:AddDropdown("UseDrinkList", { Values = cgt_49_6, Multi = true, AllowNull = true, Text = "Drinks To Use (empty = all)" })
    cgt_31_44:AddDropdown("DrinkUseMethod", {
        Values = { "Use when active runs out", "Use all instantly" },
        Default = "Use when active runs out",
        Text = "Drink Use Method"
    })
    cgt_31_44:AddDropdown("LuckDrinkLoadout", {
        Values = { "Disabled", "Loadout 1", "Loadout 2", "Loadout 3" },
        Default = "Disabled",
        Text = "Accessory Loadout Before Luck Drink"
    })
    cgt_31_44:AddInput("KeepDiamonds", { Text = "Minimum Diamonds To Keep", Default = "0", Numeric = true, Finished = true })
    local cgt_31_45 = cb_[12]:AddRightGroupbox("Status", "activity")
    Label6 = cgt_31_45:AddLabel(fns.cgs_44.Fmt.Row("Rewards", nil, "idle"), true)
    Label5 = cgt_31_45:AddLabel(fns.cgs_44.Fmt.Row("Club", nil, "idle"), true)
    Label4 = cgt_31_45:AddLabel(fns.cgs_44.Fmt.Row("Purchases", nil, "idle"), true)
    fns.cgs_44.RefreshRewardStatus = function()
        Label6:SetText(fns.cgs_44.Fmt.Row("Rewards", {
            fns.cgs_44.Fmt.Stat(a15.daily, "daily"),
            fns.cgs_44.Fmt.Stat(a15.achievements, "achievements"),
            fns.cgs_44.Fmt.Stat(a15.collections, "collections"),
            fns.cgs_44.Fmt.Stat(a15.museum, "museum"),
            fns.cgs_44.Fmt.Stat(a15.meteors, "meteors")
        }))
        Label5:SetText(fns.cgs_44.Fmt.Row("Club", { fns.cgs_44.Fmt.Stat(a15.clubQuests, "club quests") }))
        Label4:SetText(fns.cgs_44.Fmt.Row("Purchases", { fns.cgs_44.Fmt.Stat(a15.drinks, "drinks"), fns.cgs_44.Fmt.Stat(fns.cgs_48(a1H()), "diamonds") }, a15.status))
    end
    local cgt_31_46 = cb_[15]:AddLeftGroupbox("Movement", "footprints")
    cgt_31_46:AddToggle("ClickTeleport", {
        Text = "Click To Teleport",
        Tooltip = "Press the bound key to teleport to whatever the mouse is pointing at",
        Default = false
    })
    cgt_31_46:AddLabel("Click Teleport Key"):AddKeyPicker("ClickTeleportKey", { Default = "T", NoUI = true, Text = "Click Teleport Key" })
    fns.cgs_44.Track(a4h.InputBegan:Connect(function(aFl, aFm)
        local b7a = fns.cgs_51.Unloaded
        local b7f = if b7a then 1 else 0
        local b7d = 960 * b7f + 1710 * (1 - b7f)
        local b7e = 791 * b7f + 1863 * (1 - b7f)
        if not ((b7d * 718 + b7e * 1879 + b7d * b7e) % 16777213 == 2934929) then
            b7a = aFm
        end
        if b7a then
            return
        end
        if not (fns.Toggles2.ClickTeleport and fns.Toggles2.ClickTeleport.Value) then
            return
        end
        if aFl.UserInputType ~= Enum.UserInputType.Keyboard then
            return
        end
        local b7a_2 = fns.Options.ClickTeleportKey and fns.Options.ClickTeleportKey.Value
        if not b7a_2 or aFl.KeyCode.Name ~= b7a_2 then
            return
        end
        local Mouse = fns.cgs_74:GetMouse()
        local b7b_1 = Mouse and Mouse.Hit and Mouse.Hit.Position
        local b7b_2 = typeof(b7b_1) == "Vector3" and fns.cgs_65(b7b_1)
        if b7b_2 then
            fns.cgs_6.status = "click teleported"
        end
    end))
    cgt_31_46:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false })
    cgt_31_46:AddToggle("Noclip", {
        Text = "Noclip",
        Default = true,
        Callback = function(aFz)
            if not aFz then
                fns.cgs_44.RestoreNoclip()
            end
        end
    })
    cgt_31_46:AddToggle("AntiGameplayPause", {
        Text = "Anti Gameplay Pause",
        Default = false,
        Callback = function(aFB)
            fns.cgs_44.ApplyAntiGameplayPause(aFB)
        end
    })
    local cgt_31_47 = cb_[15]:AddRightGroupbox("Teleport", "map-pin")
    cgt_31_47:AddToggle("NavigationTeleportButtons", {
        Text = "Make N Navigation Buttons Teleport",
        Default = true,
        Callback = function(aFE)
            if aFE then
                local GPSMenu = fns.cgs_74.PlayerGui:FindFirstChild("GPSMenu")
                if GPSMenu then
                    task.defer(function()
                        fns.cgs_44.InjectNavigationTeleportButtons(GPSMenu)
                    end)
                end
            else
                fns.cgs_44.RemoveNavigationTeleportButtons()
            end
        end
    })
    cgt_31_47:AddDropdown("Waypoint", { Values = a1B(), AllowNull = true, Searchable = true, Text = "Waypoint" })
    cgt_31_47:AddButton({
        Text = "Teleport",
        Func = function()
            local b7m = a2k[fns.Options.Waypoint.Value]
            if not b7m then
                fns.cgs_51:Notify("Pick a waypoint first")
                return
            end
            if fns.cgs_65(b7m) then
                fns.cgs_6.status = "teleported to " .. tostring(fns.Options.Waypoint.Value)
            end
        end
    })
    cgt_31_47:AddButton({
        Text = "Refresh Waypoints",
        Func = function()
            fns.Options.Waypoint:SetValues(a1B())
            fns.cgs_51:Notify(("Found %d waypoints"):format(#a3S))
        end
    })
    local cgt_31_48 = cb_[16]:AddLeftGroupbox("Webhook", "bell")
    cgt_31_48:AddToggle("RareFindNotifier", { Text = "Rare Find Notifier", Default = false })
    cgt_31_48:AddInput("RareFindValue", { Text = "Notify At Value ($)", Default = "50000", Numeric = true, Finished = true })
    cgt_31_48:AddInput("WebhookUrl", {
        Text = "Discord Webhook URL",
        Default = "",
        Placeholder = "https://discord.com/api/webhooks/...",
        Finished = true
    })
    cc2 = "OuroborosHub/StorageHunters"
    ccY = cc2 .. "/webhook.txt"
    cgt_12_16, cgt_49_7 = pcall(readfile, ccY)
    local cgt_32_6 = cgt_12_16 and type(cgt_49_7) == "string"
    if cgt_32_6 and cgt_49_7 ~= "" then
        fns.Options.WebhookUrl:SetValue(cgt_49_7)
    end
    fns.Options.WebhookUrl:OnChanged(function(aF2)
        pcall(function()
            if not isfolder("OuroborosHub") then
                makefolder("OuroborosHub")
            end
            local b7r = if not isfolder(cc2) then 1 else 0
            if b7r == 1 then
                makefolder(cc2)
            end
            writefile(ccY, tostring(aF2))
        end)
    end)
    cgt_31_48:AddToggle("SendWebhookAlerts", { Text = "Send Webhook Alerts", Default = false })
    cgt_31_48:AddInput("WebhookMinValue", { Text = "Min Item Value to Send ($, 0 = all)", Default = "0", Numeric = true, Finished = true })
    cgt_31_48:AddDropdown("WebhookItems", {
        Values = fns.cgs_44.UI_ITEM_NAMES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Items to Send (empty = all)"
    })
    cgt_31_48:AddDropdown("WebhookMutations", {
        Values = fns.cgs_44.UI_MUTATION_CHOICES,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Text = "Only Mutations (empty = all)"
    })
    cgt_31_48:AddToggle("WebhookGradeResults", { Text = "Send Grading Results", Default = false })
    cgt_31_48:AddDropdown("WebhookGrades", {
        Values = { "OneStar", "TwoStar", "ThreeStar", "Replica" },
        Multi = true,
        AllowNull = true,
        Text = "Grades to Send (empty = all)"
    })
    cgt_31_48:AddToggle("WebhookAuctionClaims", { Text = "Send Auction Winnings Claimed", Default = false })
    local cgt_31_49 = cb_[15]:AddLeftGroupbox("ESP", "eye")
    cgt_31_49:AddToggle("LostItemEsp", { Text = "Lost Item ESP", Default = false })
    cgt_31_49:AddToggle("SafeEsp", { Text = "Safe ESP", Default = false })
    cgt_31_49:AddToggle("NuggetEsp", {
        Text = "Gold Nugget ESP",
        Tooltip = "Marks every gold nugget drop on the map, ignoring the value filter",
        Default = false
    })
    cgt_31_49:AddSlider("EspMaxDistance", { Text = "ESP Max Distance (studs)", Default = 1500, Min = 100, Max = 5000, Rounding = 0 })
    cgt_31_49:AddInput("EspMinValue", { Text = "ESP Minimum Value ($)", Default = "0", Numeric = true, Finished = true })
    local cgt_31_50 = cb_[15]:AddRightGroupbox("World", "trees")
    cgt_31_50:AddToggle("CleanUpWorld", {
        Text = "Clean Up World",
        Tooltip = "Keeps foliage and container shells deleted to free up frames",
        Default = false,
        Callback = function(aGa)
            if aGa then
                task.spawn(fns.cgs_44.doOptimize)
            end
        end
    })
    cgt_31_50:AddToggle("RemoveNpcs", {
        Text = "Remove NPCs",
        Tooltip = "Deletes shop keepers, shoppers and staff for extra frames - quest NPCs are kept",
        Default = false,
        Callback = function(aGc)
            if aGc then
                task.spawn(fns.cgs_44.doOptimize)
            end
        end
    })
    cgt_31_50:AddToggle("HideGroundItems", {
        Text = "Auto Hide Ground Items in Plot",
        Tooltip = "Visual only - hides items lying on your plot floor for you. They stay in place and can still be picked up and sold",
        Default = false,
        Callback = function(aGe)
            task.spawn(function()
                if aGe then
                    pcall(fns.cgs_44.DoHideGroundItems)
                else
                    pcall(fns.cgs_44.RestoreGroundItems)
                end
            end)
        end
    })
    local cgt_31_51 = cb_[15]:AddRightGroupbox("Status", "activity")
    Label3 = cgt_31_51:AddLabel(fns.cgs_44.Fmt.Row("Player", nil, "idle"), true)
    fns.cgs_44.RefreshMiscStatus = function()
        Label3:SetText(fns.cgs_44.Fmt.Row("Player", {
            fns.cgs_44.Fmt.Stat(fns.cgs_6.finds, "rare finds"),
            fns.cgs_44.Fmt.Stat(fns.cgs_6.alerts, "alerts sent")
        }, fns.cgs_6.status))
    end
    cbZ = "BountyHunterNPC"
    cdd = { nextSweepAt = 0, nuggets = 0, races = 0, rolls = 0, bounties = 0, defended = 0, status = "idle" }
    ccU = "_LocalGoldNuggetDrops"
    cdl = "1063"
    CollectionService = game:GetService("CollectionService")
    ccz = 0.5
    cct = 0.3
    cch = 5
    cca = 200
    cdw = 10
    ccH = 10
    fns.cgs_44.WildWest = cdd
    cc5 = function()
        return a3G(fns.cgs_74:GetAttribute("GoldNuggets"), 0)
    end
    ccP = function()
        local b7v = fns.cgs_74:GetAttribute("InAuction") == true or fns.cgs_44.FishState and fns.cgs_44.FishState.busy == true
        return b7v
    end
    ccn = function()
        local b7y = workspace:FindFirstChild(ccU)
        if not b7y then
            return {}
        end
        local b7z = {}
        for i, child in ipairs(b7y:GetChildren()) do
            local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
            if ProximityPrompt then
                b7z[#b7z + 1] = { Model = child, Prompt = ProximityPrompt }
            end
        end
        return b7z
    end
    fns.cgs_44.DoGoldNuggets = function()
        if ccP() then
            return
        end
        local b7H = os.clock()
        if b7H < (cdd.nextSweepAt or 0) then
            return
        end
        cdd.nextSweepAt = os.clock() + 60
        local b7H_1 = ccn()
        if #b7H_1 == 0 then
            cdd.nextSweepAt = os.clock() + 20
            cdd.status = "no nuggets spawned"
            return
        end
        local b7I_1 = fns.cgs_69()
        if not b7I_1 then
            return
        end
        local CFrame = b7I_1.CFrame
        local b7I_2 = 0
        for i, v in ipairs(b7H_1) do
            local b7K_1 = fns.cgs_51.Unloaded or not fns.Toggles2.AutoGoldNuggets.Value or ccP()
            if b7K_1 then
                break
            end
            local Model = v.Model
            if Model.Parent then
                local Position = Model:GetPivot().Position
                cdd.status = ("collecting nugget %d of %d"):format(i, #b7H_1)
                fns.cgs_65(Position)
                task.wait(ccz)
                local b7W = 1
                while b7W <= cch do
                    if fns.cgs_51.Unloaded or not Model.Parent then
                        break
                    end
                    local b7M_1 = fns.cgs_69()
                    if not b7M_1 then
                        break
                    end
                    if (b7M_1.Position - Position).Magnitude > ccH then
                        fns.cgs_65(Position)
                        task.wait(ccz)
                    else
                        pcall(fireproximityprompt, v.Prompt)
                        task.wait(cct)
                    end
                    b7W += 1
                end
                if not Model.Parent then
                    b7I_2 += 1
                    cdd.nuggets = cdd.nuggets + 1
                end
            end
        end
        local b7K_3 = fns.cgs_69()
        if b7K_3 then
            b7K_3.CFrame = CFrame
        end
        local b7J_1 = 0
        for i, v in ipairs(b7H_1) do
            if v.Model.Parent then
                b7J_1 += 1
            end
        end
        if b7J_1 > 0 then
            cdd.nextSweepAt = os.clock() + 15
        end
        if b7I_2 > 0 then
            local b7H_2 = b7J_1 > 0 and ("collected %d, %d missed - retrying"):format(b7I_2, b7J_1)
            local b7J_2 = b7H_2
            if not b7J_2 then
                local b7K_4 = b7I_2 == 1 and "" or "s"
                b7J_2 = ("collected %d nugget%s"):format(b7I_2, b7K_4)
            end
            cdd.status = b7J_2
        else
            cdd.status = "no nuggets in reach"
        end
    end
    fns.cgs_44.DoGoldPanner = function()
        local b77 = (ccP()) or not fns.cgs_44.GoldPannerClaim
        if b77 then
            return
        end
        local b77_1 = a18(fns.cgs_44.GoldPannerClaim)
        local b78 = type(b77_1) == "table" and b77_1.Ok == false
        if b78 then
            return
        end
        if b77_1 then
            cdd.status = "claimed gold pan"
        end
    end
    fns.cgs_44.DoWildWestMarket = function()
        if not fns.cgs_44.WildWestMarketRoll then
            return
        end
        local b8d = a3G(fns.Options.KeepGoldNuggets.Value, 0)
        local b8e = cc5()
        if b8e - b8d < cca then
            return
        end
        local b8d_1 = a18(fns.cgs_44.WildWestMarketRoll)
        if b8d_1 == nil then
            return
        end
        cdd.rolls = cdd.rolls + 1
        local b8e_1 = type(b8d_1) == "table" and (b8d_1.Name or b8d_1.ItemId)
        if b8e_1 then
            local b8e_2 = b8d_1.Name or b8d_1.ItemId
            cdd.status = "market rolled " .. tostring(b8e_2)
        else
            cdd.status = "rolled the market"
        end
    end
    ccO = function()
        local b8j_1
        local b8i_1
        local b8h = fns.cgs_69()
        b8j_1, b8i_1 = nil, nil
        for i, v in ipairs(CollectionService:GetTagged(cbZ)) do
            if v:IsDescendantOf(workspace) then
                local Position = v:GetPivot().Position
                local b8k_1 = b8h and (Position - b8h.Position).Magnitude or 0
                local b8l_1 = not b8i_1
                if not b8l_1 then
                    b8l_1 = b8k_1 < b8i_1
                end
                if b8l_1 then
                    b8j_1, b8i_1 = v, b8k_1
                end
            end
        end
        return b8j_1
    end
    ccK = function()
        local b8u = a18(fns.cgs_44.GetPlayerInventory)
        if type(b8u) ~= "table" then
            return 0
        end
        local b8v = b8u.items or b8u
        if type(b8v) ~= "table" then
            return 0
        end
        local b8v_1 = 0
        for k, v in pairs(b8v) do
            local b8u_2 = type(v) == "table" and tostring(v.ItemId) == cdl
            if b8u_2 then
                b8v_1 += 1
            end
        end
        return b8v_1
    end
    fns.cgs_44.DoBountyTurnIn = function()
        local b8D = (ccP()) or not fns.cgs_44.OutlawBountyTrade
        if b8D then
            return
        end
        if ccK() == 0 then
            return
        end
        local b8D_1 = ccO()
        if not b8D_1 then
            cdd.status = "bounty hunter not loaded"
            return
        end
        local b8E = fns.cgs_69()
        if not b8E then
            return
        end
        local CFrame = b8E.CFrame
        local Position = b8D_1:GetPivot().Position
        if (b8E.Position - Position).Magnitude > cdw then
            fns.cgs_65(Position)
            task.wait(0.4)
        end
        local b8D_2 = a18(fns.cgs_44.OutlawBountyTrade)
        local b8E_1 = type(b8D_2) == "table"
        if b8E_1 then
            local b8G_1 = b8D_2.Nuggets or b8D_2.nuggets
            b8E_1 = tonumber(b8G_1)
        end
        local b8G_2 = b8E_1
        if b8G_2 then
            cdd.bounties = cdd.bounties + b8G_2
            cdd.status = ("turned in outlaws for %d nuggets"):format(b8G_2)
        elseif b8D_2 then
            cdd.status = "turned in outlaws"
        end
        local b8D_3 = fns.cgs_69()
        if b8D_3 then
            b8D_3.CFrame = CFrame
        end
    end
    fns.cgs_44.DoTownDefense = function()
        local b8L = (ccP()) or not fns.cgs_44.TownDefenseJoin
        if b8L then
            return
        end
        if not workspace:FindFirstChild("TownDefense") then
            return
        end
        local b8L_1 = a18(fns.cgs_44.TownDefenseJoin)
        local b8M = type(b8L_1) == "table" and b8L_1.success == false
        if b8M then
            return
        end
        if b8L_1 then
            cdd.defended = cdd.defended + 1
            cdd.status = "joined town defense"
        end
    end
    ccG = "HorseRaceSessionId"
    ccT = "HorseRaceNPC"
    ccy = 75
    ccr = false
    cck = function()
        local b8T_1
        local b8S_1
        local b8R = fns.cgs_69()
        b8T_1, b8S_1 = nil, nil
        for i, v in ipairs(CollectionService:GetTagged(ccT)) do
            if v:IsDescendantOf(workspace) then
                local Position = v:GetPivot().Position
                local b8U_1 = b8R and (Position - b8R.Position).Magnitude or 0
                local b8V_1 = not b8S_1
                if not b8V_1 then
                    b8V_1 = b8U_1 < b8S_1
                end
                if b8V_1 then
                    b8T_1, b8S_1 = v, b8U_1
                end
            end
        end
        return b8T_1, b8S_1
    end
    ccs = function()
        local attr = fns.cgs_74:GetAttribute(ccG)
        local b84 = attr ~= ""
        local b85 = type(attr) == "string" and b84
        return b85
    end
    fns.cgs_44.Track(a2K.Stepped:Connect(function()
        if fns.cgs_51.Unloaded then
            return
        end
        local b87 = fns.cgs_74.Character and fns.cgs_74.Character:FindFirstChildOfClass("Humanoid")
        if not b87 then
            return
        end
        local b87_1 = fns.Toggles2.AutoRaceHorse and fns.Toggles2.AutoRaceHorse.Value and ccs()
        if b87_1 then
            local b87_2 = math.clamp(a3G(fns.Options.HorseRaceSpeed.Value, 120), 48, 250)
            if b87.WalkSpeed < b87_2 then
                b87.WalkSpeed = b87_2
            end
            ccr = true
        elseif ccr then
            ccr = false
            b87.WalkSpeed = 16
        end
    end))
    fns.cgs_44.DoHorseRace = function()
        local b9e_1
        local b9d = (ccP())
        local b9d_2
        local b9k = if b9d then 1 else 0
        local b9i = 3990 * b9k + 2454 * (1 - b9k)
        local b9j = 997 * b9k + 496 * (1 - b9k)
        if not ((b9i * 3460 + b9j * 252 + b9i * b9j) % 16777213 == 1257461) then
            b9d = ccs()
        end
        if b9d then
            return
        end
        if not fns.cgs_44.HorseRaceEligibility or not fns.cgs_44.HorseRaceStart then
            return
        end
        b9e_1, b9d_2 = cck()
        if not b9e_1 then
            cdd.status = "horse keeper not loaded"
            return
        end
        local b9f = fns.cgs_69()
        if b9f and b9d_2 and b9d_2 > ccy then
            fns.cgs_65(b9e_1:GetPivot().Position)
            task.wait(0.5)
        end
        local b9d_3 = a18(fns.cgs_44.HorseRaceEligibility, b9e_1)
        if type(b9d_3) ~= "table" then
            return
        end
        if b9d_3.hasHorse == false then
            cdd.status = "no horse owned"
            return
        end
        if b9d_3.canStart == false then
            local b9f_1 = b9d_3.line or "race not open"
            cdd.status = tostring(b9f_1)
            return
        end
        local b9d_4 = a18(fns.cgs_44.HorseRaceStart, b9e_1)
        local b9e_2 = type(b9d_4) == "table" and b9d_4.success
        if b9e_2 then
            cdd.races = cdd.races + 1
            cdd.status = "entered the race"
        else
            local b9e_3 = type(b9d_4) == "table" and b9d_4.line
            if b9e_3 then
                cdd.status = tostring(b9d_4.line)
            end
        end
    end
    local cgt_31_52 = cb_[10]:AddLeftGroupbox("Gold", "coins")
    cgt_31_52:AddToggle("AutoGoldNuggets", {
        Text = "Auto Collect Gold Nuggets",
        Tooltip = "Sweeps every nugget drop on every map, then returns you where you started",
        Default = false
    })
    cgt_31_52:AddToggle("AutoGoldPanner", { Text = "Auto Use Gold Panner", Default = false })
    local cgt_31_53 = cb_[10]:AddLeftGroupbox("Market", "store")
    cgt_31_53:AddToggle("AutoWildWestMarket", {
        Text = "Auto Spend Nuggets In Market",
        Tooltip = "Rolls the market whenever the spendable balance covers the 200 nugget cost",
        Default = false
    })
    cgt_31_53:AddInput("KeepGoldNuggets", {
        Text = "Gold Nuggets To Keep",
        Tooltip = "Never spend below this, so nuggets stay available for the new area's auctions",
        Default = "0",
        Numeric = true,
        Finished = true
    })
    local cgt_31_54 = cb_[10]:AddLeftGroupbox("Horse Racing", "rabbit")
    cgt_31_54:AddToggle("AutoRaceHorse", {
        Text = "Auto Race Horse",
        Tooltip = "Enters races at the Horse Keeper and gallops past the AI field; needs a horse",
        Default = false
    })
    cgt_31_54:AddSlider("HorseRaceSpeed", {
        Text = "Race Speed",
        Tooltip = "Stock horses ride at 48 and the AI field runs 50-80, so anything above 80 wins",
        Default = 120,
        Min = 48,
        Max = 250,
        Rounding = 0
    })
    local cgt_31_55 = cb_[10]:AddRightGroupbox("Bounties", "crosshair")
    cgt_31_55:AddToggle("AutoBountyTurnIn", {
        Text = "Auto Turn In Outlaw Bounties",
        Tooltip = "Hands downed outlaws to the bounty hunter for 10 nuggets each",
        Default = false
    })
    cgt_31_55:AddToggle("AutoTownDefense", {
        Text = "Auto Join Town Defense",
        Tooltip = "Joins the defence when the arena is up; victory pays 200 nuggets",
        Default = false
    })
    local cgt_31_56 = cb_[10]:AddRightGroupbox("Status", "activity")
    Label2 = cgt_31_56:AddLabel(fns.cgs_44.Fmt.Row("Wild West", nil, "idle"), true)
    Label = cgt_31_56:AddLabel(fns.cgs_44.Fmt.Row("Balance", nil, "idle"), true)
    fns.cgs_44.RefreshWildWestStatus = function()
        Label2:SetText(fns.cgs_44.Fmt.Row("Wild West", {
            fns.cgs_44.Fmt.Stat(cdd.nuggets, "nuggets picked"),
            fns.cgs_44.Fmt.Stat(cdd.rolls, "market rolls"),
            fns.cgs_44.Fmt.Stat(cdd.races, "races"),
            fns.cgs_44.Fmt.Stat(cdd.defended, "defences")
        }, cdd.status))
        Label:SetText(fns.cgs_44.Fmt.Row("Balance", {
            fns.cgs_44.Fmt.Stat(fns.cgs_48(cc5()), "gold nuggets"),
            fns.cgs_44.Fmt.Stat(fns.cgs_48(a3G(fns.Options.KeepGoldNuggets.Value, 0)), "kept back")
        }))
    end
    PlayerGui = fns.cgs_74:WaitForChild("PlayerGui")
    cb9 = {}
    ccE = function(aJe)
        if not aJe:IsA("GuiButton") then
            return false
        end
        local ScreenGui = aJe:FindFirstAncestorWhichIsA("ScreenGui")
        local b9s = not ScreenGui
        local b9w = if b9s then 1 else 0
        local b9u = 1087 * b9w + 3958 * (1 - b9w)
        local b9v = 806 * b9w + 500 * (1 - b9w)
        if not ((b9u * 3624 + b9v * 530 + b9u * b9v) % 16777213 == 5242590) then
            b9s = ScreenGui == fns.cgs_51.ScreenGui
        end
        local b9w_1 = if b9s then 1 else 0
        local b9u_1 = 688 * b9w_1 + 2471 * (1 - b9w_1)
        local b9v_1 = 303 * b9w_1 + 1777 * (1 - b9w_1)
        if not ((b9u_1 * 688 + b9v_1 * 2707 + b9u_1 * b9v_1) % 16777213 == 1502029) then
            b9s = ScreenGui.Name == "OuroborosToggle"
        end
        if b9s then
            return false
        elseif aJe.Name:lower():find("continue", 1, true) then
            return true
        else
            local b9r_1 = (aJe:IsA("TextButton")) and aJe.Text:lower():find("continue", 1, true) ~= nil
            return b9r_1
        end
    end
    ccW = function(aJk)
        local b9x = aJk
        while true do
            if not (b9x and b9x ~= PlayerGui) then
                return false
            end
            if b9x:IsA("GuiObject") then
                if not b9x.Visible then
                    return false
                end
                b9x = b9x.Parent
            elseif b9x:IsA("ScreenGui") then
                break
            else
                b9x = b9x.Parent
            end
        end
        return b9x.Enabled
    end
    ccl = function()
        for i, descendant in ipairs(PlayerGui:GetDescendants()) do
            if ccE(descendant) then
                cb9[descendant] = true
            end
        end
    end
    cc7 = function()
        local ConfirmPromptHost = PlayerGui:FindFirstChild("ConfirmPromptHost")
        local b9J = ConfirmPromptHost and ConfirmPromptHost.Enabled and ConfirmPromptHost:FindFirstChild("ConfirmPrompt")
        if not b9J or not b9J.Visible then
            return
        end
        local Dialog = b9J:FindFirstChild("Dialog")
        local b9I_2 = Dialog and Dialog:FindFirstChild("Title")
        local b9K = Dialog
        local b9L = b9I_2
        if b9K then
            b9K = Dialog:FindFirstChild("Body")
        end
        local b9M = b9K
        if b9I_2 then
            b9I_2 = b9L.Text
        end
        local b9K_1 = b9I_2 or ""
        local b9L_1 = b9M and b9M.Text or ""
        local b9I_4 = (b9K_1 .. " " .. b9L_1):lower()
        local b9K_2 = (b9I_4:find("overweight", 1, true))
        local b9Q = if b9K_2 then 1 else 0
        local b9O = 1514 * b9Q + 1092 * (1 - b9Q)
        local b9P = 3823 * b9Q + 2337 * (1 - b9Q)
        if not ((b9O * 4017 + b9P * 733 + b9O * b9P) % 16777213 == 14672019) then
            b9K_2 = b9I_4:find("max capacity", 1, true)
        end
        if not b9K_2 then
            b9K_2 = b9I_4:find("berat berlebih", 1, true)
        end
        local b9I_5 = b9K_2
        if not b9I_5 then
            local b9K_3 = fns.cgs_44.TruckFillPercent and fns.cgs_44.TruckFillPercent()
            b9I_5 = b9K_3 ~= nil and b9K_3 >= 97
        end
        if not b9I_5 then
            return
        end
        local b9I_6 = Dialog and Dialog:FindFirstChild("ButtonRow")
        local b9J_3 = b9I_6
        if b9I_6 then
            b9I_6 = b9J_3:FindFirstChild("CancelButton")
        end
        local b9J_4 = b9I_6
        if not b9J_4 then
            return
        end
        if firesignal then
            pcall(firesignal, b9J_4.Activated)
            pcall(firesignal, b9J_4.MouseButton1Click)
        end
        fns.a1y[4] = "truck full, unloading before more pickups"
        fns.cgs_44.ForceTruckUnload = os.clock()
    end
    ccl()
    fns.cgs_44.Track(PlayerGui.DescendantAdded:Connect(function(aJR)
        task.defer(function()
            if ccE(aJR) then
                cb9[aJR] = true
            end
        end)
    end))
    task.spawn(function()
        local b9S = 0
        while not fns.cgs_51.Unloaded do
            task.wait(1)
            b9S += 1
            if b9S % 10 == 0 then
                pcall(ccl)
            end
            pcall(cc7)
            for k in pairs(cb9) do
                if not k:IsDescendantOf(PlayerGui) then
                    cb9[k] = nil
                else
                    local b9T = (ccW(k)) and firesignal
                    if b9T then
                        pcall(firesignal, k.Activated)
                        pcall(firesignal, k.MouseButton1Click)
                    end
                end
            end
        end
    end)
    local cgt_31_57 = cb_[5]:AddLeftGroupbox("Menu", "menu")
    cgt_31_57:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
    ccR = tick()
    ccF = tick()
    fns.cgs_44.DisabledIdled = {}
    pcall(function()
        for i, v in ipairs(getconnections(fns.cgs_74.Idled)) do
            local b94 = v
            pcall(function()
                b94:Disable()
                table.insert(fns.cgs_44.DisabledIdled, b94)
            end)
        end
    end)
    cdk = function()
        if not workspace.CurrentCamera then
            return
        end
        a2Q:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(0.1)
        a2Q:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        ccF = tick()
    end
    connection5 = a4h.InputBegan:Connect(function()
        ccR = tick()
    end)
    connection4 = a4h.InputChanged:Connect(function(aKl)
        local UserInputType = aKl.UserInputType
        local b98 = UserInputType == Enum.UserInputType.MouseMovement
        local cac = if b98 then 1 else 0
        local caa = 276 * cac + 1804 * (1 - cac)
        local cab = 1833 * cac + 1903 * (1 - cac)
        if not ((caa * 3214 + cab * 3667 + caa * cab) % 16777213 == 8114583) then
            b98 = UserInputType == Enum.UserInputType.Gamepad1
        end
        if b98 then
            ccR = tick()
        end
    end)
    cgt_31_57:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    cgt_31_57:AddToggle("AntiRejoin", { Text = "Anti Rejoin", Default = true })
    fns.cgs_44.RejoinMethods = {
        Teleport = true,
        TeleportAsync = true,
        TeleportToPlaceInstance = true,
        TeleportToPrivateServer = true,
        TeleportToSpawnByName = true,
        TeleportPartyAsync = true
    }
    if hookmetamethod and getnamecallmethod and not fns.cgs_44.OldTeleportNamecall then
        pcall(function()
            local TeleportService = game:GetService("TeleportService")
            fns.cgs_44.OldTeleportNamecall = hookmetamethod(game, "__namecall", function(aKt, ...)
                local cae_11
                local cad = not fns.cgs_51.Unloaded and fns.Toggles2.BypassGavelLimit and fns.Toggles2.BypassGavelLimit.Value
                local cad_10
                if cad then
                    local cad_1 = getnamecallmethod()
                    if aKt == a4s then
                        if cad_1 == "PromptGamePassPurchase" or cad_1 == "PromptProductPurchase" then
                            if fns.cgs_44.IsGavelPromptId(select(2, ...)) then
                                return nil
                            end
                            if cad_10 then
                                local cad_3 = getnamecallmethod()
                                if aKt == TeleportService and fns.cgs_44.RejoinMethods[cad_3] then
                                    return nil
                                end
                                local cae_3 = cad_3 == "FireServer" and aKt.Name == "IdleTeleport" and aKt:IsDescendantOf(fns.a2X)
                                if cae_11 then
                                    return nil
                                end
                                return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                            end
                            return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                        elseif cad_1 == "UserOwnsGamePassAsync" then
                            if fns.cgs_44.IsGavelPromptId(select(2, ...)) then
                                return true
                            end
                            if cad_10 then
                                local cad_5 = getnamecallmethod()
                                if aKt == TeleportService and fns.cgs_44.RejoinMethods[cad_5] then
                                    return nil
                                end
                                local cae_5 = cad_5 == "FireServer" and aKt.Name == "IdleTeleport" and aKt:IsDescendantOf(fns.a2X)
                                if cae_11 then
                                    return nil
                                end
                                return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                            end
                            return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                        else
                            if cad_10 then
                                local cad_7 = getnamecallmethod()
                                if aKt == TeleportService and fns.cgs_44.RejoinMethods[cad_7] then
                                    return nil
                                end
                                local cae_7 = cad_7 == "FireServer" and aKt.Name == "IdleTeleport" and aKt:IsDescendantOf(fns.a2X)
                                if cae_11 then
                                    return nil
                                end
                                return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                            end
                            return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                        end
                    else
                        if cad_10 then
                            local cad_9 = getnamecallmethod()
                            if aKt == TeleportService and fns.cgs_44.RejoinMethods[cad_9] then
                                return nil
                            end
                            local cae_9 = cad_9 == "FireServer" and aKt.Name == "IdleTeleport" and aKt:IsDescendantOf(fns.a2X)
                            if cae_11 then
                                return nil
                            end
                            return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                        end
                        return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                    end
                else
                    cad_10 = not fns.cgs_51.Unloaded and fns.Toggles2.AntiRejoin.Value
                    if cad_10 then
                        local cad_11 = getnamecallmethod()
                        if aKt == TeleportService and fns.cgs_44.RejoinMethods[cad_11] then
                            return nil
                        end
                        cae_11 = cad_11 == "FireServer" and aKt.Name == "IdleTeleport" and aKt:IsDescendantOf(fns.a2X)
                        if cae_11 then
                            return nil
                        end
                        return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                    end
                    return fns.cgs_44.OldTeleportNamecall(aKt, ...)
                end
            end)
        end)
    end
    task.spawn(function()
        while not fns.cgs_51.Unloaded do
            task.wait(2)
            if fns.Toggles2.AntiAfk.Value then
                local cak = tick() - ccR
                local cal = tick() - ccF
                if cak >= 300 and cal >= 60 then
                    pcall(cdk)
                else
                    if cak < 300 and cal >= 300 then
                        pcall(cdk)
                    end
                end
            end
        end
    end)
    cgt_31_57:AddButton("Unload", function()
        fns.cgs_51:Unload()
    end)
    fns.cgs_51.ToggleKeybind = fns.Options.MenuKeybind
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosToggle"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.DisplayOrder = 999
    if syn and syn.protect_gui then
        syn.protect_gui(screenGui)
    end
    local cgt_31_59 = gethui and gethui()
    local cgt_12_19 = cgt_31_59 or game:GetService("CoreGui")
    screenGui.Parent = cgt_12_19
    imageButton = Instance.new("ImageButton")
    imageButton.Name = "Toggle"
    imageButton.Size = UDim2.fromOffset(56, 56)
    imageButton.Position = UDim2.fromOffset(20, 20)
    imageButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    imageButton.BorderSizePixel = 0
    imageButton.AutoButtonColor = false
    imageButton.Image = "rbxthumb://type=Asset&id=774125543&w=150&h=150"
    imageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
    imageButton.ScaleType = Enum.ScaleType.Fit
    imageButton.Parent = screenGui
    local cgt_31_60 = Instance.new("UIPadding")
    cgt_31_60.PaddingTop = UDim.new(0, 10)
    cgt_31_60.PaddingBottom = UDim.new(0, 10)
    cgt_31_60.PaddingLeft = UDim.new(0, 10)
    cgt_31_60.PaddingRight = UDim.new(0, 10)
    cgt_31_60.Parent = imageButton
    local cgt_31_61 = Instance.new("UIStroke")
    cgt_31_61.Color = Color3.fromRGB(60, 60, 60)
    cgt_31_61.Thickness = 1
    cgt_31_61.Parent = imageButton
    cde = nil
    cc6 = false
    Position2 = nil
    Position = nil
    ccQ = function()
        imageButton.ImageTransparency = fns.cgs_51.Toggled and 0 or 0.45
    end
    imageButton.InputBegan:Connect(function(aK9)
        if aK9.UserInputType ~= Enum.UserInputType.MouseButton1 and aK9.UserInputType ~= Enum.UserInputType.Touch then
            return
        end
        cde = aK9
        cc6 = false
        Position2 = aK9.Position
        Position = imageButton.Position
    end)
    connection3 = a4h.InputChanged:Connect(function(aLg)
        if not cde then
            return
        end
        if aLg.UserInputType ~= Enum.UserInputType.MouseMovement and aLg.UserInputType ~= Enum.UserInputType.Touch then
            return
        end
        local cau_1 = aLg.Position - Position2
        if cau_1.Magnitude > 4 then
            cc6 = true
        end
        if cc6 then
            imageButton.Position = UDim2.fromOffset(Position.X.Offset + cau_1.X, Position.Y.Offset + cau_1.Y)
        end
    end)
    connection = a4h.InputEnded:Connect(function(aLp)
        if not cde or aLp.UserInputType ~= cde.UserInputType then
            return
        end
        cde = nil
        if not cc6 then
            fns.cgs_51:Toggle()
            ccQ()
        end
    end)
    ccQ()
    fns.cgs_51:OnUnload(function()
        connection3:Disconnect()
        connection:Disconnect()
        screenGui:Destroy()
        connection5:Disconnect()
        connection4:Disconnect()
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end
        for i, v in ipairs(fns.cgs_44.Connections) do
            local caH = v
            pcall(function()
                caH:Disconnect()
            end)
        end
        table.clear(fns.cgs_44.Connections)
        for i, v in ipairs(fns.cgs_44.DisabledIdled) do
            local caN = v
            pcall(function()
                caN:Enable()
            end)
        end
        table.clear(fns.cgs_44.DisabledIdled)
        pcall(fns.cgs_44.RestoreNoclip)
        pcall(fns.cgs_44.RestoreGavelBypass)
        pcall(fns.cgs_44.ApplyAntiGameplayPause, false)
        pcall(fns.cgs_44.clearEsp)
        pcall(fns.cgs_44.RestoreGroundItems)
        local caQ = if fns.cgs_44.StopNpcBidEnabled() then 1 else 0
        if caQ == 1 then
            fns.cgs_44.SetAuctionPaused(false)
        end
        print("Storage Hunters unloaded")
    end)
    a3C:SetLibrary(fns.cgs_51)
    a3C:SetFolder("OuroborosHub")
    a3C:SaveDefault("Evil Hello Kitty")
    a1U:SetLibrary(fns.cgs_51)
    a1U:IgnoreThemeSettings()
    a1U:SetIgnoreIndexes({ "MenuKeybind", "WebhookUrl", "SaveManager_ImportSource" })
    a1U:SetFolder("OuroborosHub/StorageHunters")
    local cgt_31_62 = a1U:BuildConfigSection(cb_[5])
    ccq = function(aLO, aLP)
        local caS_1 = (aLO == "Toggle" and fns.Toggles2 or fns.Options)[aLP]
        local caR_2 = type(caS_1) == "table" and caS_1.Type == aLO
        return caR_2 and caS_1 or nil
    end
    ccJ = function(aLW, aLX)
        local Type = aLX.Type
        if Type == "Toggle" then
            return { idx = aLW, type = "Toggle", value = aLX.Value == true }
        elseif Type == "Slider" then
            return { idx = aLW, type = "Slider", value = tostring(aLX.Value) }
        elseif Type == "Dropdown" then
            return { idx = aLW, type = "Dropdown", multi = aLX.Multi == true, value = aLX.Value }
        elseif Type == "Input" then
            local caW = aLX.Value or ""
            return { idx = aLW, type = "Input", text = tostring(caW) }
        elseif Type == "ColorPicker" then
            return { idx = aLW, type = "ColorPicker", value = aLX.Value:ToHex(), transparency = aLX.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = aLW,
                type = "KeyPicker",
                mode = aLX.Mode,
                key = aLX.Value,
                modifiers = aLX.Modifiers,
                toggled = aLX.Toggled
            }
        else
            return nil
        end
    end
    ccu = function()
        local ca1 = {}
        for i, v in ipairs({ fns.Toggles2, fns.Options }) do
            for k, v in pairs(v) do
                local ca2 = type(v) == "table" and type(v.Type) == "string" and not a1U.Ignore[k]
                if ca2 then
                    local ca2_1 = ccJ(k, v)
                    if ca2_1 then
                        ca1[#ca1 + 1] = ca2_1
                    end
                end
            end
        end
        table.sort(ca1, function(aL8, aL9)
            if aL8.type ~= aL9.type then
                return aL8.type < aL9.type
            end
            return aL8.idx < aL9.idx
        end)
        return { objects = ca1 }
    end
    ccD = function(aMb)
        local cbl
        cbl = nil
        local cbm = type(aMb) ~= "table" or type(aMb.idx) ~= "string"
        local cbq = if cbm then 1 else 0
        local cbo = 324 * cbq + 712 * (1 - cbq)
        local cbp = 3041 * cbq + 344 * (1 - cbq)
        if not ((cbo * 3419 + cbp * 3166 + cbo * cbp) % 16777213 == 11720846) then
            cbm = type(aMb.type) ~= "string"
        end
        if not cbm then
            cbm = a1U.Ignore[aMb.idx]
        end
        if cbm then
            return false
        end
        cbl = ccq(aMb.type, aMb.idx)
        if not cbl then
            return false
        end
        local cbm_1 = pcall(function()
            if aMb.type == "Input" then
                if type(aMb.text) ~= "string" then
                    return
                end
                cbl:SetValue(aMb.text)
            elseif aMb.type == "ColorPicker" then
                cbl:SetValueRGB(Color3.fromHex(aMb.value), aMb.transparency)
            elseif aMb.type == "KeyPicker" then
                cbl:SetValue({ aMb.key, aMb.mode, aMb.modifiers })
                if aMb.mode == "Toggle" and aMb.toggled ~= nil then
                    cbl.Toggled = aMb.toggled
                    cbl:Update()
                end
            else
                cbl:SetValue(aMb.value)
            end
        end)
        return cbm_1
    end
    cgt_31_62:AddDivider()
    cgt_31_62:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    cgt_31_62:AddButton("Export Config to Clipboard", function()
        local cbs_1
        local cbr_1
        cbr_1, cbs_1 = pcall(fns.cgs_80.JSONEncode, fns.cgs_80, ccu())
        if not cbr_1 then
            fns.cgs_51:Notify("Failed to encode the config")
            return
        end
        local cbr_2 = setclipboard or toclipboard
        local cbr_3 = type(cbr_2) ~= "function" or not pcall(cbr_2, cbs_1)
        if cbr_3 then
            fns.cgs_51:Notify("Your executor does not support copying to the clipboard")
            return
        end
        fns.cgs_51:Notify("Config copied to clipboard", 6)
    end)
    cgt_31_62:AddButton("Import Config from Clipboard Text", function()
        local cbx_1
        local cbv = fns.Options.SaveManager_ImportSource.Value or ""
        local cbv_1
        local cbw = tostring(cbv):match("^%s*(.-)%s*$")
        if cbw == "" then
            fns.cgs_51:Notify("Paste an exported config into the box first")
            return
        end
        cbv_1, cbx_1 = pcall(fns.cgs_80.JSONDecode, fns.cgs_80, cbw)
        local cbw_1 = not cbv_1 or type(cbx_1) ~= "table"
        local cbB = if cbw_1 then 1 else 0
        local cbz = 1540 * cbB + 354 * (1 - cbB)
        local cbA = 3650 * cbB + 3723 * (1 - cbB)
        if not ((cbz * 3521 + cbA * 2282 + cbz * cbA) % 16777213 == 2595427) then
            cbw_1 = type(cbx_1.objects) ~= "table"
        end
        if cbw_1 then
            fns.cgs_51:Notify("That is not a valid exported config")
            return
        end
        local cbv_2 = 0
        for i, v in ipairs(cbx_1.objects) do
            if ccD(v) then
                cbv_2 += 1
            end
        end
        if cbv_2 == 0 then
            fns.cgs_51:Notify("No settings in that config matched this script")
            return
        end
        fns.Options.SaveManager_ImportSource:SetValue("")
        local cbx_2 = cbv_2 == 1 and "" or "s"
        fns.cgs_51:Notify(("Imported %d setting%s"):format(cbv_2, cbx_2), 6)
    end)
    a3C:ApplyToTab(cb_[5])
    a3C:LoadDefault()
    cb3()
    a1U:LoadAutoloadConfig()
    for k, v in pairs(fns.Options) do
        local cfc = v
        local cgt_31_63 = type(cfc) == "table" and cfc.Type == "Input" and cfc.Holder
        if cgt_31_63 then
            local TextBox = cfc.Holder:FindFirstChildWhichIsA("TextBox", true)
            if TextBox then
                cfc.ClearTextOnFocus = false
                TextBox.ClearTextOnFocus = false
                if cfc.Finished and not cfc.ClearTextOnBlur then
                    fns.cgs_51:GiveSignal(TextBox.FocusLost:Connect(function(aMJ)
                        local cbI = aMJ
                        local cbM = if cbI then 1 else 0
                        local cbK = 3618 * cbM + 3422 * (1 - cbM)
                        local cbL = 933 * cbM + 290 * (1 - cbM)
                        if not ((cbK * 2799 + cbL * 2296 + cbK * cbL) % 16777213 == 15644544) then
                            cbI = cfc.Destroyed
                        end
                        local cbP = if cbI then 1 else 0
                        local cbN = 1405 * cbP + 2057 * (1 - cbP)
                        local cbO = 3069 * cbP + 2282 * (1 - cbP)
                        if not ((cbN * 3317 + cbO * 2568 + cbN * cbO) % 16777213 == 76309) then
                            cbI = TextBox.Text == cfc.Value
                        end
                        if cbI then
                            return
                        end
                        cfc:SetValue(TextBox.Text)
                    end))
                end
            end
        end
    end
    cdf = {
        IndexLiveStatus = true,
        StopNpcBid = true,
        ClickTeleport = true,
        InfiniteJump = true,
        Noclip = true,
        NavigationTeleportButtons = true,
        AutoRaceHorse = true,
        RareFindNotifier = true,
        SendWebhookAlerts = true,
        WebhookGradeResults = true,
        WebhookAuctionClaims = true,
        LostItemEsp = true,
        SafeEsp = true,
        NuggetEsp = true
    }
    cdq = {
        AntiAfk = true,
        AntiRejoin = true,
        CleanUpWorld = true,
        RemoveNpcs = true,
        HideGroundItems = true
    }
    fns.cgs_44.StopAllAutomation = function()
        if fns.cgs_44.StoppingAllAutomation then
            return
        end
        fns.cgs_44.StoppingAllAutomation = true
        for k, v in pairs(fns.Toggles2) do
            local cbQ_1 = (k:sub(1, 4) == "Auto" or cdf[k]) and not cdq[k] and v.Value == true
            if cbQ_1 then
                v:SetValue(false)
            end
        end
        a3w.entryAttempt = nil
        a3w.entryRetryAt = 0
        a3w.cancelAuctionEntry = true
        a3w.stopNpcAwaitingWinnings = false
        a3w.stopNpcWinningsDeadline = 0
        a3w.npcStopped = false
        fns.cgs_44.BodyToken = (fns.cgs_44.BodyToken or 0) + 1
        a1k = false
        pcall(fns.cgs_44.SetAuctionPaused, false)
        if a1g() then
            task.spawn(function()
                pcall(function()
                    fns.cgs_44.LeaveAuction:InvokeServer()
                end)
            end)
        end
        a1J.status = "all automation stopped"
        fns.a1y[4] = "all automation stopped"
        fns.cgs_51:Notify("All automation stopped")
        fns.cgs_44.StoppingAllAutomation = false
    end
    fns.cgs_44.UiReady = true
end
fns.cgs_44.buildInterface()
fns.cgs_51:Notify("Keyless Ends in 1 Day, Join Discord Server", 10)
task.spawn(fns.worker2)
task.spawn(fns.leaveIfLotBelowValueLoop)
task.spawn(fns.autoBidLoop)
task.spawn(fns.autoIndexFarmLoop)
task.spawn(fns.autoWorldLootLoop)
task.spawn(fns.autoBestLockpickLoop)
task.spawn(fns.autoCollectProcessedLoop)
task.spawn(fns.autoWashLoop)
task.spawn(fns.autoUnfavoriteDrinksLoop)
task.spawn(fns.autoFavouriteLoop)
task.spawn(fns.autoStoreItemsLoop)
task.spawn(fns.autoSellLoop)
task.spawn(fns.autoDailyRewardLoop)
task.spawn(fns.autoBuyDrinksLoop)
task.spawn(fns.autoBankHeistLoop)
task.spawn(fns.autoQuestLoop)
task.spawn(fns.autoGoldNuggetsLoop)
task.spawn(fns.worker3)
