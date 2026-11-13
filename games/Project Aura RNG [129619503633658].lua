local fns = {}
local t9
local s9
local tR
local ty
local uf
local sX
local tE
local Workspace
local ClientEvents
local tr
local t8
local s8
local AuraRegistry
local Currency
local te
local ClientUser
local tD
local t1
local s1
local tJ
local tq
local s7
local tw
local tC
local AuraRollKind2
local ExplorationRegistry
local ItemKind
local tO
local tv
local uc
local tc
local tU
local ItemRegistry
local t_
local s_
local to
local s5
local MergeRegistry
local ub
local tT
local tA
local th
local RecipeKind
local sZ
local Library
local tn
local t4
local LocalPlayer
local CharacterRegistry
local tt
local ua
local ta
local MergeCandidateUtils
local tg
local tY
local sY
local RecipeRegistry
local t3
local tL
function fns.fn12()
    local vj = {}
    local vk = ClientUser:getAura()
    local vl = vk and vk.getOwnedIds and vk:getOwnedIds()
    if type(vl) == "table" then
        for k, v in vl do
            local vk_2 = type(k) == "string" and type(v) ~= "string"
            if vk_2 then
                vj[#vj + 1] = k
            elseif type(v) == "string" then
                vj[#vj + 1] = v
            end
        end
    end
    if #vj == 0 then
        local vk_3 = ClientUser:getData()
        local vl_1 = vk_3 and vk_3.auras and vk_3.auras.owned
        if type(vl_1) == "table" then
            for k, v in vl_1 do
                if type(k) == "string" then
                    vj[#vj + 1] = k
                elseif type(v) == "string" then
                    vj[#vj + 1] = v
                end
            end
        end
    end
    return vj
end
function fns.fn25(cx)
    local World = Workspace:FindFirstChild("World")
    local w_ = World and World:FindFirstChild("Plots")
    if w_ == nil then
        return
    end
    local w__1 = w_:FindFirstChild(tostring(cx))
    if w__1 then
        return w__1
    end
    for i, child in w_:GetChildren() do
        if child:GetAttribute("CrystalId") == cx then
            return child
        end
    end
end
function fns.fn80(aM, aN)
    local vh_1, vh_2, vh_3
    local vg_1, vg_2, vg_3
    local vf = ClientUser:getCurrency()
    if vf == nil then
        return false
    elseif type(vf.has) == "function" then
        vg_1, vh_1 = pcall(vf.has, vf, aM, aN)
        if vg_1 then
            return vh_1 == true
        elseif type(vf.get) == "function" then
            vg_2, vh_2 = pcall(vf.get, vf, aM)
            local vf_1 = vg_2 and type(vh_2) == "number" and vh_2 >= aN
            return vf_1
        else
            return false
        end
    elseif type(vf.get) == "function" then
        vg_3, vh_3 = pcall(vf.get, vf, aM)
        local vf_2 = vg_3 and type(vh_3) == "number" and vh_3 >= aN
        return vf_2
    else
        return false
    end
end
function fns.fn97(hi)
    s7.EquipTargets = ub(hi)
end
function fns.fn108(y)
    local uR = typeof(cloneref) == "function" and typeof(y) == "Instance"
    if uR then
        return cloneref(y)
    end
    return y
end
function fns.fn116(hs)
    s7.DropTypes = ub(hs)
end
function fns.fn121()
    s7.AuraBusy = false
end
function fns.fn133(hg)
    s7.AutoEquipBest = hg == true
end
function fns.fn138(aI, aJ)
    local vd = type(aI) == "table" and aI[aJ] == true
    return vd
end
function fns.fn139(is)
    s7.AutoClaimQuests = is == true
end
function fns.fn159()
    if not s7.AutoRollDice or s7.DiceBusy then
        return
    end
    s7.DiceBusy = true
    if not ty(ClientEvents.DiceRollRequest) then
        s7.DiceBusy = false
    end
end
function fns.fn163()
    local ExploreMap = s7.ExploreMap
    local wQ = type(ExploreMap) == "string" and ExploreMap ~= "" and ExplorationRegistry:findById(ExploreMap)
    if wQ then
        return ExploreMap
    end
    for k in ExplorationRegistry.content do
        if ClientUser:getExploration():isZoneUnlocked(k) then
            return k
        end
    end
end
function fns.fn217(iu)
    local zR = ub(iu)
    local zS = zR.Quests == true or zR["Completed Quests"] == true
    local zT = zR.DailyBonus == true or zR["Daily Bonus"] == true
    s7.QuestClaims = { Quests = zS, DailyBonus = zT }
end
function fns.fn231(ie)
    s7.AutoExplore = ie == true
end
local function fn271(af, ag)
    local uT_1
    local uU = type(af) == "table" and type(af.connect) == "function"
    if uU then
        uT_1 = af:connect(ag)
    else
        uT_1 = af:Connect(ag)
    end
    table.insert(t4, uT_1)
    return uT_1
end
local function fn277(h7)
    s7.SelectedPotions = ub(h7)
    if s7.AutoUsePotions then
        ty(ClientEvents.AutoPotionSetRequest, tO())
    end
end
local function fn279(g6)
    local zC = tonumber(g6)
    if zC == nil then
        return
    end
    if zC < t8 then
        zC = t8
    end
    s7.DiceInterval = zC
end
local function fn285()
    local AuraGroup = t_.Main:AddLeftGroupbox("Aura", "sparkles")
    AuraGroup:AddToggle("AutoRollAura", {
        Text = "Auto Roll Aura",
        Default = false,
        Callback = function(k5)
            s1.SetAuraRoll(k5)
        end
    })
    AuraGroup:AddDropdown("AuraRollKind", {
        Text = "Aura Roll",
        Values = { "Standard", "Lucky" },
        Default = "Standard",
        Callback = function(k8)
            s1.SetAuraRollKind(k8)
        end
    })
    local DiceGroup = t_.Main:AddRightGroupbox("Dice", "dices")
    DiceGroup:AddToggle("AutoRollDice", {
        Text = "Auto Roll Dice",
        Default = false,
        Callback = function(lb)
            s1.SetDiceRoll(lb)
        end
    })
    DiceGroup:AddSlider("DiceInterval", {
        Text = "Dice Delay",
        Default = t8,
        Min = t8,
        Max = 2,
        Rounding = 1,
        Callback = function(le)
            s1.SetDiceInterval(le)
        end
    })
    DiceGroup:AddToggle("DeleteRollScene", {
        Text = "Delete 3D Roll Scene",
        Default = false,
        Callback = function(lg)
            s1.SetDeleteRollScene(lg)
        end
    })
    DiceGroup:AddToggle("HideRollOverlay", {
        Text = "Hide Roll UI Overlay & Cards Strip",
        Default = false,
        Callback = function(li)
            s1.SetHideRollOverlay(li)
        end
    })
    local PlotGroup = t_.Main:AddLeftGroupbox("Plot", "swords")
    PlotGroup:AddToggle("AutoEquipBest", {
        Text = "Auto Equip Best",
        Default = false,
        Callback = function(ll)
            s1.SetEquipBest(ll)
        end
    })
    PlotGroup:AddDropdown("EquipTargets", {
        Text = "Equip",
        Values = { "Characters", "Aura" },
        Default = { "Characters", "Aura" },
        Multi = true,
        Callback = function(ln)
            s1.SetEquipTargets(ln)
        end
    })
    PlotGroup:AddToggle("AutoCollectDrops", {
        Text = "Auto Collect All Diamonds & Plot Drops",
        Default = false,
        Callback = function(lp)
            s1.SetCollectDrops(lp)
        end
    })
    PlotGroup:AddDropdown("DropTypes", {
        Text = "Drops",
        Values = { "Currency", "Items" },
        Default = { "Currency", "Items" },
        Multi = true,
        Callback = function(lr)
            s1.SetDropTypes(lr)
        end
    })
    local SenseiGroup = t_.Main:AddRightGroupbox("Sensei", "arrow-up")
    SenseiGroup:AddToggle("AutoBuyUpgrades", {
        Text = "Auto Buy Sensei Skills",
        Default = false,
        Callback = function(lu)
            s1.SetBuyUpgrades(lu)
        end
    })
    SenseiGroup:AddDropdown("UpgradeCategories", {
        Text = "Categories",
        Values = ta,
        Default = ta,
        Multi = true,
        Searchable = true,
        Expandable = true,
        Callback = function(lx)
            s1.SetUpgradeCategories(lx)
        end
    })
end
local function fn295(hv)
    s7.AutoMerge = hv == true
end
local function fn314(b_, b0)
    if type(b0) ~= "table" then
        return false
    end
    local wr = s7.CraftMultiplier
    local ws = type(wr) ~= "number" or not tE.isValidMultiplier(wr)
    if ws then
        wr = 1
    end
    for k in b0 do
        if b0[k] then
            local ws_1 = tn(k)
            local wt = ws_1 and ws_1:getKind() == b_ and tT(ws_1, wr)
            if wt then
                ty(ClientEvents.CraftRequest, ws_1:getId(), {}, wr)
                return true
            end
        end
    end
    return false
end
local function fn325(iA)
    s7.AutoClaimIndex = iA == true
end
local function fn328()
    if not s7.AutoAwakening then
        return
    end
    local ye = ClientUser:getAwakening()
    local yf = ClientUser:getStorage()
    local yg = yf:getSortedUidsByKind(ItemKind.Character)
    for k, v in yg do
        local yf_1 = s_(v)
        if tD(s7.AwakenRarities, yf_1) then
            local yf_2 = ye:canAwaken(v)
            local yg_1 = type(yf_2) == "table" and yf_2.success == false
            if not yg_1 then
                ty(ClientEvents.AwakeningRequest, v)
                return
            end
        end
    end
end
local function fn329(hY)
    s7.AutoAwakening = hY == true
end
local function fn396(hl)
    s7.AutoBuyUpgrades = hl == true
end
local function fn415(ij)
    if type(ij) == "string" then
        s7.ExploreDifficulty = ij
    end
end
local function fn421(hd)
    s7.HideRollOverlay = hd == true
    s9(s7.HideRollOverlay)
end
local function fn426(jr)
    local DiscordGroup = jr:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = tC })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = tC })
end
local function fn427(gY)
    s7.Notify = gY
end
local function fn431(il)
    s7.AutoFill = il == true
end
local function fn432(gR, gS)
    tg(gR, gS, "item")
end
local function fn478()
    if s1 and s1.Unload then
        s1.Unload()
    end
end
local function fn479(gK)
    if s7.CraftNotify then
        uf(t3(gK))
    end
end
local function fn485(c4)
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local xq = PlayerGui and PlayerGui:FindFirstChild("MainScreen")
    local xp_1 = xq
    if xq then
        xq = xp_1:FindFirstChild("HUD")
    end
    local xp_2 = xq
    if xq then
        xq = xp_2:FindFirstChild("RollPreview")
    end
    local xp_3 = xq
    local xq_1 = xp_3 == nil or not xp_3:IsA("GuiObject")
    if xq_1 then
        return
    end
    if c4 then
        if s7.RollPreviewVisible == nil then
            s7.RollPreviewVisible = xp_3.Visible
        end
        s7.RollPreview = xp_3
        xp_3.Visible = false
        return
    end
    if s7.RollPreview and s7.RollPreview.Parent and s7.RollPreviewVisible ~= nil then
        s7.RollPreview.Visible = s7.RollPreviewVisible
    end
    s7.RollPreview = nil
    s7.RollPreviewVisible = nil
end
local function fn500(bs, bt)
    if bs == nil then
        return false
    end
    local vZ = tonumber(bt) or 1
    local v_ = vZ
    if v_ < 1 then
        v_ = 1
    end
    local vZ_1 = s7.SkipRandomRecipes and bs:isRandomResult()
    if vZ_1 then
        return false
    end
    local vZ_2 = ClientUser:getUnlockGate()
    local v0 = vZ_2 and vZ_2.isRecipeLocked and vZ_2:isRecipeLocked(bs)
    local v0_12
    if v0 then
        return false
    end
    local v0_1 = vZ_2 and vZ_2.isCraftKindLocked and vZ_2:isCraftKindLocked(bs)
    if v0_1 then
        return false
    end
    local vZ_3 = bs:getRequiredLevel()
    local v0_2 = type(vZ_3) == "number" and vZ_3 > 0
    if v0_2 then
        local v0_3 = ClientUser:getLeveling()
        local v1_1 = v0_3 and v0_3.getLevel and v0_3:getLevel()
        if (v1_1 or 0) < vZ_3 then
            return false
        end
        local vZ_4 = ClientUser:getCrafting()
        local v0_5 = vZ_4 and vZ_4.getCooldownRemaining and vZ_4:getCooldownRemaining(bs:getId()) > 0
        if v0_12 then
            return false
        end
        local vZ_5 = ClientUser:getStorage()
        for k, v in bs:getIngredients() do
            local v0_6 = v.Options or v
            local v1_3 = false
            if type(v0_6) == "table" then
                for k, v in v0_6 do
                    local v0_7 = v.ItemId or v.Id
                    local v0_8 = tonumber(v.Amount) or 0
                    local v3_1 = v0_8 * v_
                    local v0_9 = type(v0_7) == "string" and v3_1 > 0
                    if v0_9 then
                        local v0_10 = vZ_5:getOwnedAmountById(v0_7)
                        local v2_3 = type(v0_10) == "number" and v0_10 >= v3_1
                        if v2_3 then
                            v1_3 = true
                            break
                        end
                    end
                end
            end
            if not v1_3 then
                return false
            end
        end
        local v0_11 = bs:getCost()
        if type(v0_11) == "table" then
            for k, v in v0_11 do
                local vZ_6 = type(v) == "number" and v > 0 and not s8(k, v * v_)
                if vZ_6 then
                    return false
                end
            end
        end
        return true
    end
    local vZ_7 = ClientUser:getCrafting()
    v0_12 = vZ_7 and vZ_7.getCooldownRemaining and vZ_7:getCooldownRemaining(bs:getId()) > 0
    if v0_12 then
        return false
    end
    local vZ_8 = ClientUser:getStorage()
    for k, v in bs:getIngredients() do
        local v0_13 = v.Options or v
        local v1_4 = false
        if type(v0_13) == "table" then
            for k, v in v0_13 do
                local v0_14 = v.ItemId or v.Id
                local v0_15 = tonumber(v.Amount) or 0
                local v3_2 = v0_15 * v_
                local v0_16 = type(v0_14) == "string" and v3_2 > 0
                if v0_16 then
                    local v0_17 = vZ_8:getOwnedAmountById(v0_14)
                    local v2_6 = type(v0_17) == "number" and v0_17 >= v3_2
                    if v2_6 then
                        v1_4 = true
                        break
                    end
                end
            end
        end
        if not v1_4 then
            return false
        end
    end
    local v0_18 = bs:getCost()
    if type(v0_18) == "table" then
        for k, v in v0_18 do
            local vZ_9 = type(v) == "number" and v > 0 and not s8(k, v * v_)
            if vZ_9 then
                return false
            end
        end
    end
    return true
end
local function fn512()
    task.spawn(function()
        while not s7.Unloaded do
            if tU() then
                pcall(s5)
            end
            task.wait(0.35)
        end
    end)
    task.spawn(function()
        while not s7.Unloaded do
            if tU() then
                pcall(tw)
            end
            local zq = tonumber(s7.DiceInterval) or t8
            local zr = zq
            if zr < t8 then
                zr = t8
            end
            task.wait(zr)
        end
    end)
    task.spawn(function()
        while not s7.Unloaded do
            if tU() then
                pcall(sX)
                pcall(th)
                pcall(tc)
                pcall(tL)
                pcall(ua)
                pcall(tr)
                pcall(t1)
                pcall(tA)
                pcall(tJ)
            end
            task.wait(0.45)
        end
    end)
    task.spawn(function()
        while not s7.Unloaded do
            if s7.DeleteRollScene then
                pcall(tR, true)
            end
            if s7.HideRollOverlay then
                pcall(s9, true)
            end
            task.wait(1)
        end
    end)
end
local function fn520()
    s7.DiceBusy = false
end
local function fn526(ih)
    if type(ih) == "string" then
        s7.ExploreMap = ih
    end
end
local function fn527()
    if not s7.AutoRollAura or s7.AuraBusy then
        return
    end
    local AuraRollKind = s7.AuraRollKind
    if AuraRollKind == AuraRollKind2.Lucky then
        if not s8(Currency.AuraLuckyRollTicket, 1) then
            return
        end
    elseif not s8(Currency.AuraRollTicket, 1) then
        return
    end
    s7.AuraBusy = true
    if not ty(ClientEvents.AuraRollRequest, AuraRollKind) then
        s7.AuraBusy = false
    end
end
local function fn548(hE)
    s7.AutoCraftFood = hE == true
end
local function fn554(hM)
    s7.SelectedCraftFood = ub(hM)
end
local function fn569(bl)
    local vR_1
    local vQ_1
    if type(bl) ~= "string" then
        return nil
    end
    if type(RecipeRegistry.findById) == "function" then
        vQ_1, vR_1 = pcall(RecipeRegistry.findById, RecipeRegistry, bl)
        if vQ_1 then
            return vR_1
        end
    end
    for k, v in RecipeRegistry.content do
        if v:getId() == bl then
            return v
        end
    end
end
local function fn600()
    tY(sY, "Copied Discord invite to clipboard")
end
local function fn608()
    if not s7.AutoUsePotions then
        return
    end
    local yu = tO()
    if #yu == 0 then
        return
    end
    if os.clock() - s7.LastPotionUse < 30 then
        return
    end
    s7.LastPotionUse = os.clock()
    local yv = ClientUser:getStorage()
    for k, v in yu do
        local yu_1 = yv:findById(v)
        local yu_2 = yu_1 and (yu_1.uid or yu_1.content and yu_1.content.uid)
        if type(yu_2) == "string" then
            ty(ClientEvents.ItemUseRequest, yu_2, 1)
        end
    end
end
local function fn612()
    if not s7.AutoMerge then
        return
    end
    local xR = ClientUser:getMerge()
    for k, v in tq do
        if s7.MergeBands[v] then
            local xS = MergeCandidateUtils.collectEligible(ClientUser, v)
            local xT = MergeRegistry.content[v]
            local xU = xT and xT.getRequiredAmount and xT:getRequiredAmount()
            local xU_1 = xU or 10
            local xT_2 = type(xS) == "table" and #xS >= xU_1
            if xT_2 then
                local xT_3 = {}
                local x3 = 1
                while x3 <= xU_1 do
                    local x4 = x3
                    xT_3[x4] = xS[x4].uid
                    x3 += 1
                end
                local xS_1 = xR:canMerge(v, xT_3)
                local xU_2 = type(xS_1) ~= "table" or xS_1.success ~= false
                if xU_2 then
                    ty(ClientEvents.MergeCharactersRequest, v, xT_3)
                    return
                end
            end
        end
    end
end
local function fn618(jy)
    Library:Notify(jy)
end
local function fn621()
    local Ah = {}
    local Ai = {}
    for k, v in ItemRegistry.content do
        if v:getKind() == ItemKind.Potion then
            local Aj = v:getName()
            Ai[#Ai + 1] = Aj
            Ah[Aj] = v:getId()
        end
    end
    table.sort(Ai)
    return Ai, Ah
end
local function fn633(gO, gP)
    tg(gO, gP, "currency")
end
local function fn639(g_)
    s7.AutoRollAura = g_ == true
end
local function fn661(hq)
    s7.AutoCollectDrops = hq == true
end
local function fn673(g4)
    s7.AutoRollDice = g4 == true
end
local function fn683(hn)
    s7.UpgradeCategories = ub(hn)
end
local function fn706(h_)
    s7.AwakenRarities = ub(h_)
end
local function fn721(hU)
    s7.SkipRandomRecipes = hU == true
end
local function fn731()
    s7.AuraBusy = false
end
local function fn735()
    if s7.Unloaded then
        return
    end
    s7.Unloaded = true
    s1.Unloaded = true
    tR(false)
    s9(false)
    for k, v in t4 do
        to(v)
    end
    table.clear(t4)
    getgenv()[sZ] = nil
end
local function fn737()
    s7.DiceBusy = false
end
local function fn738(b9)
    if type(b9) ~= "table" then
        return "Craft complete"
    end
    local wA = b9.recipeId or b9.id
    local wz_1 = type(wA) ~= "string" and type(b9.recipe) == "table"
    if wz_1 then
        local wz_2 = b9.recipe.id
        local wE = if wz_2 then 1 else 0
        local wC = 3972 * wE + 1411 * (1 - wE)
        local wD = 3058 * wE + 579 * (1 - wE)
        if not ((wC * 241 + wD * 146 + wC * wD) % 16777213 == 13550096) then
            wz_2 = b9.recipe.Id
        end
        wA = wz_2
    end
    if type(wA) == "string" then
        local wz_3 = tn(wA)
        if wz_3 then
            return "Crafted " .. wz_3:getName()
        end
        return "Crafted " .. wA
    end
    return "Craft complete"
end
local function fn780(t)
    local uH = getfenv(0)
    for k in string.gmatch(t, "[^.]+") do
        if type(uH) ~= "table" then
            return false
        end
        uH = uH[k]
    end
    local uI = typeof(uH) == "function"
    local uQ = if uI then 1 else 0
    local uO = 2787 * uQ + 1517 * (1 - uQ)
    local uP = 1128 * uQ + 2387 * (1 - uQ)
    if not ((uO * 3649 + uP * 1947 + uO * uP) % 16777213 == 15509715) then
        uI = typeof(uH) == "table"
    end
    return uI
end
local function fn785(ei)
    local yb = ClientUser:getStorage()
    local yc = yb and yb.findByUid and yb:findByUid(ei)
    local yb_1 = yc
    if yc then
        yc = yb_1.content
    end
    local yb_2 = yc
    if yc then
        yc = yb_2.id
    end
    local yb_3 = yc
    if type(yb_3) ~= "string" then
        return nil
    end
    local yc_1 = string.gsub(yb_3, "^Character_", "")
    local yb_4 = CharacterRegistry:findById(yc_1)
    if yb_4 and yb_4.getRarity then
        return yb_4:getRarity()
    end
end
local function fn792(iN)
    local z7 = {}
    local z8 = {}
    for k, v in RecipeRegistry.content do
        if v:getKind() == iN then
            local z9 = v:getName()
            z8[#z8 + 1] = z9
            z7[z9] = v:getId()
        end
    end
    table.sort(z8)
    return z8, z7
end
local function fn794(hx)
    s7.MergeBands = ub(hx)
end
local function fn802(al)
    if typeof(al) == "RBXScriptConnection" then
        al:Disconnect()
        return
    end
    if type(al) == "function" then
        al()
        return
    end
    if type(al) == "table" then
        if type(al.Disconnect) == "function" then
            al:Disconnect()
        elseif type(al.disconnect) == "function" then
            al:disconnect()
        end
    end
end
local function fn831(g1)
    if g1 == AuraRollKind2.Lucky then
        s7.AuraRollKind = AuraRollKind2.Lucky
    else
        s7.AuraRollKind = AuraRollKind2.Standard
    end
end
local function fn854(ha)
    s7.DeleteRollScene = ha == true
    tR(s7.DeleteRollScene)
end
local function fn856()
    local x6 = s7.AutoCraftFood and uc(RecipeKind.Food, s7.SelectedCraftFood)
    if x6 then
        return
    end
    local x6_1 = s7.AutoCraftPotions and uc(RecipeKind.Potion, s7.SelectedCraftPotions)
    if x6_1 then
        return
    end
    local x6_2 = s7.AutoCraftRunes and uc(RecipeKind.Rune, s7.SelectedCraftRunes)
    if x6_2 then
        return
    end
end
local function fn866()
    return not s7.Unloaded and ClientUser.dataFetched == true
end
local function fn903()
    local vF = -1
    local vG
    for k, v in tt() do
        local vH = AuraRegistry:findById(v)
        local vI = vH and vH.getRarity and vH:getRarity()
        local vI_1 = tv[vI] or 0
        if vI_1 > vF then
            vF = vI_1
            vG = v
        end
    end
    return vG
end
local function fn913(hP)
    local zE = tonumber(hP)
    local zF = zE and tE.isValidMultiplier(zE)
    if zF then
        s7.CraftMultiplier = zE
    end
end
local function fn924(hW)
    s7.CraftNotify = hW == true
end
local function fn948(cG, cH, cI)
    local w7 = not s7.AutoCollectDrops or type(cH) ~= "table"
    if w7 then
        return
    end
    local w7_1 = cI == "item" and not tD(s7.DropTypes, "Items")
    if w7_1 then
        return
    end
    local w7_2 = cI ~= "item" and not tD(s7.DropTypes, "Currency")
    if w7_2 then
        return
    end
    local w7_3 = t9(cG)
    local w8 = w7_3 and w7_3:GetAttribute("CrystalRedeemBase")
    local w8_1 = w8 == ""
    local w9 = type(w8) ~= "string" or w8_1
    local w9_1
    if w9 then
        return
    end
    local w8_2 = 0
    for k in cH do
        w8_2 += 1
        if cI == "item" then
            w9_1 = ("%*_i_%*"):format(w8, w8_2)
        else
            w9_1 = ("%*_%*"):format(w8, w8_2)
        end
        local xa = w9_1
        ty(ClientEvents.PlotCrystalDropRedeemRequest, xa)
    end
end
local function fn949(jk, jl)
    if setclipboard then
        setclipboard(jk)
    elseif toclipboard then
        toclipboard(jk)
    end
    Library:Notify(jl)
end
local function fn967(iq)
    s7.ExploreClaimNotify = iq == true
end
local function fn988(hA)
    s7.AutoCraftRunes = hA == true
end
local function fn1033(h2)
    s7.AutoUsePotions = h2 == true
    if s7.AutoUsePotions then
        ty(ClientEvents.AutoPotionSetRequest, tO())
    end
end
local function fn1036(kV, kW)
    local BK = {}
    local BL = type(kV) ~= "table" or type(kW) ~= "table"
    if BL then
        return BK
    end
    for k, v in kV do
        local BL_1 = v == true and type(k) == "string" and kW[k]
        if BL_1 then
            BK[kW[k]] = true
        else
            local BL_2 = type(v) == "string" and kW[v]
            if BL_2 then
                BK[kW[v]] = true
            end
        end
    end
    return BK
end
local function fn1088()
    local zY = {}
    local zZ = {}
    for k, v in ExplorationRegistry.content do
        local z_ = v:getName()
        zZ[#zZ + 1] = z_
        zY[z_] = k
    end
    table.sort(zZ)
    return zZ, zY
end
local function fn1096()
    if not s7.AutoBuyUpgrades then
        return
    end
    local xH = ClientUser:getUpgrades()
    for k, v in te.content do
        local xI = v:getCategory()
        if tD(s7.UpgradeCategories, xI) then
            local xI_1 = xH:canUpgrade(v:getKind())
            local xJ = type(xI_1) == "table" and xI_1.success == true
            if xJ then
                ty(ClientEvents.UpgradeRequest, v:getKind())
                return
            end
        end
    end
end
local function fn1109(hC)
    s7.AutoCraftPotions = hC == true
end
local function fn1145(cZ)
    local AuraShowcase = Workspace:FindFirstChild("AuraShowcase")
    if cZ then
        if AuraShowcase and AuraShowcase.Parent then
            s7.HiddenShowcase = AuraShowcase
            s7.ShowcaseParent = AuraShowcase.Parent
            AuraShowcase.Parent = nil
        end
        return
    end
    if s7.HiddenShowcase and s7.ShowcaseParent then
        s7.HiddenShowcase.Parent = s7.ShowcaseParent
    end
    s7.HiddenShowcase = nil
    s7.ShowcaseParent = nil
end
local function fn1158(hG)
    s7.SelectedCraftRunes = ub(hG)
end
local function fn1163()
    local yo = {}
    for k in s7.SelectedPotions do
        if s7.SelectedPotions[k] then
            yo[#yo + 1] = k
        end
    end
    return yo
end
local function fn1178(io)
    s7.AutoStart = io == true
end
local function fn1187(ch)
    local wF = {}
    local wG = ch == nil or type(ch.getParty) ~= "function"
    if wG then
        return wF
    end
    local wG_1 = ch:getParty()
    if type(wG_1) ~= "table" then
        return wF
    end
    for k, v in wG_1 do
        if type(v) == "string" then
            wF[#wF + 1] = v
        elseif type(v) == "table" then
            local wG_2 = v.uid or v.Uid
            if type(wG_2) == "string" then
                wF[#wF + 1] = wG_2
            end
        end
    end
    return wF
end
local function fn1203(ap)
    if s7.Unloaded then
        return
    end
    if type(s7.Notify) == "function" then
        s7.Notify(ap)
    end
end
local function fn1205(iC)
    local zV = ub(iC)
    local zW = zV.Discovery == true or zV["Discovery Rewards"] == true
    s7.IndexClaims = { Discovery = zW, Milestones = zV.Milestones == true }
end
local function fn1225(hJ)
    s7.SelectedCraftPotions = ub(hJ)
end
local function fn1228(gU)
    if s7.DeleteRollScene and gU.Name == "AuraShowcase" then
        task.defer(tR, true)
    end
end
local function fn1229(aC)
    local u4 = {}
    if type(aC) ~= "table" then
        return u4
    end
    for k, v in aC do
        local u5 = v == true and type(k) == "string"
        if u5 then
            u4[k] = true
        elseif type(v) == "string" then
            u4[v] = true
        end
    end
    return u4
end
sX = nil
sY = nil
sZ = nil
s_ = nil
AuraRollKind2 = nil
s1 = nil
LocalPlayer = nil
s5 = nil
s7 = nil
s8 = nil
s9 = nil
ta = nil
tc = nil
te = nil
tg = nil
th = nil
Workspace = nil
RecipeRegistry = nil
tn = nil
to = nil
tq = nil
tr = nil
tt = nil
MergeRegistry = nil
tv = nil
tw = nil
ty = nil
tA = nil
ItemRegistry = nil
tC = nil
tD = nil
tE = nil
Library = nil
local Players, sW, s2, s3, IndexRegistry, Options, CoreGui, tf, ti, tj, Toggles, tp, VirtualUser, tx, tz, tF, tH
ExplorationRegistry = nil
tJ = nil
tL = nil
CharacterRegistry = nil
tO = nil
AuraRegistry = nil
tR = nil
MergeCandidateUtils = nil
tT = nil
tU = nil
ClientUser = nil
tY = nil
RecipeKind = nil
t_ = nil
t1 = nil
ClientEvents = nil
t3 = nil
t4 = nil
ItemKind = nil
t8 = nil
t9 = nil
ua = nil
ub = nil
uc = nil
Currency = nil
uf = nil
local HttpService, ExplorationPartyFillUtils, TeleportService, UserInputService, tX, RunService, t5, t7, ud, ui, ul, um
Players, RunService, UserInputService, TeleportService, HttpService, tH, tz, VirtualUser, Workspace, CoreGui, LocalPlayer, sZ, ui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local uj = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
if (not Workspace and not Workspace or VirtualUser and 35) and (not ui or not Workspace and not RunService) and not ((not Workspace and not Workspace or VirtualUser and 35) and (not ui or not Workspace and not RunService)) then
    tz = game:GetService("GuiService")
    tH = game:GetService("Lighting")
else
    tH = game:GetService("GuiService")
    tz = game:GetService("Lighting")
end
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
CoreGui = game:GetService("CoreGui")
LocalPlayer = Players.LocalPlayer
sZ = "OuroborosProjectAuraRNG"
if (uj or TeleportService) and (HttpService or not TeleportService) or TeleportService and not HttpService and (HttpService or HttpService) or (not TeleportService and not TeleportService and (uj or HttpService) or not TeleportService and not HttpService and (TeleportService or not HttpService)) or not ((uj or TeleportService) and (HttpService or not TeleportService) or TeleportService and not HttpService and (HttpService or HttpService) or (not TeleportService and not TeleportService and (uj or HttpService) or not TeleportService and not HttpService and (TeleportService or not HttpService))) then
    ui = getgenv()[sZ]
else
    sZ = getgenv()[ui]
end
local uh = ui and ui.Unload
if uh then
    ui.Unload()
end
ClientEvents, ClientUser, AuraRegistry, CharacterRegistry, ExplorationRegistry, ItemRegistry, MergeRegistry, RecipeRegistry, te, IndexRegistry, AuraRollKind2, Currency, ItemKind, RecipeKind, MergeCandidateUtils, ExplorationPartyFillUtils, tE, tv, tq, tj, ta, s3, sW, um = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local un = fn780
if (un or sW or (false or un)) and ((not sW or sW) and (un or un)) and (un and un and (not sW and not sW) or (not sW and un or (un or not sW))) and not ((un or sW or (false or un)) and ((not sW or sW) and (un or un)) and (un and un and (not sW and not sW) or (not sW and un or (un or not sW)))) then
    te = fns.fn108
else
    um = fns.fn108
end
local uk = um(uj)
uh = um(uk:WaitForChild("TS"))
local ug = um(LocalPlayer:WaitForChild("PlayerScripts"))
local uo = um(ug:WaitForChild("TS"))
ClientEvents = require(uh:WaitForChild("network"):WaitForChild("ClientEvents")).ClientEvents
ClientUser = require(uo:WaitForChild("modules"):WaitForChild("user"):WaitForChild("ClientUser")).ClientUser
AuraRegistry = require(uh:WaitForChild("registry"):WaitForChild("AuraRegistry")).AuraRegistry
CharacterRegistry = require(uh:WaitForChild("registry"):WaitForChild("CharacterRegistry")).CharacterRegistry
ExplorationRegistry = require(uh:WaitForChild("registry"):WaitForChild("ExplorationRegistry")).ExplorationRegistry
ItemRegistry = require(uh:WaitForChild("registry"):WaitForChild("ItemRegistry")).ItemRegistry
MergeRegistry = require(uh:WaitForChild("registry"):WaitForChild("MergeRegistry")).MergeRegistry
RecipeRegistry = require(uh:WaitForChild("registry"):WaitForChild("RecipeRegistry")).RecipeRegistry
te = require(uh:WaitForChild("registry"):WaitForChild("UpgradeRegistry")).UpgradeRegistry
IndexRegistry = require(uh:WaitForChild("registry"):WaitForChild("IndexRegistry")).IndexRegistry
AuraRollKind2 = require(uh:WaitForChild("types"):WaitForChild("aura"):WaitForChild("AuraRollKind")).AuraRollKind
Currency = require(uh:WaitForChild("types"):WaitForChild("Currency")).Currency
ItemKind = require(uh:WaitForChild("types"):WaitForChild("item"):WaitForChild("ItemKind")).ItemKind
RecipeKind = require(uh:WaitForChild("types"):WaitForChild("recipe"):WaitForChild("RecipeKind")).RecipeKind
MergeCandidateUtils = require(uh:WaitForChild("utils"):WaitForChild("MergeCandidateUtils")).MergeCandidateUtils
ExplorationPartyFillUtils = require(uo:WaitForChild("utils"):WaitForChild("ExplorationPartyFillUtils")).ExplorationPartyFillUtils
local AutoRollCadenceConstants = require(uh:WaitForChild("constants"):WaitForChild("AutoRollCadenceConstants")).AutoRollCadenceConstants
if (tq or not tq) and (tq and not ClientUser) or (not tq or not tq) and (ClientUser and not ClientUser) or not ((tq or not tq) and (tq and not ClientUser) or (not tq or not tq) and (ClientUser and not ClientUser)) then
    tE = require(uh:WaitForChild("constants"):WaitForChild("BulkCraftConstants")).BulkCraftConstants
    tv = { Common = 1, Uncommon = 2, Rare = 3, Epic = 4, Legendary = 5, Mythic = 6 }
    tq = { "Common", "Uncommon", "Rare", "Epic", "Legendary" }
    tj = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
    ta = {
        "Awakening",
        "Combat",
        "Core",
        "Crafting",
        "Enchanting",
        "Exploration",
        "Fortune",
        "Growth",
        "Passive",
        "Runes",
        "Wealth"
    }
else
    tj = require(ta:WaitForChild("constants"):WaitForChild("BulkCraftConstants")).BulkCraftConstants
    tq = { Uncommon = 2, Rare = 3, Epic = 4, Legendary = 5, Common = 1, Mythic = 6 }
    tv = { "Epic", "Legendary", "Common", "Rare", "Uncommon" }
    tE = {
        "Core",
        "Runes",
        "Enchanting",
        "Combat",
        "Awakening",
        "Fortune",
        "Passive",
        "Wealth",
        "Growth",
        "Crafting",
        "Exploration"
    }
end
s3 = { "1", "10", "25", "50", "100" }
sW = { "Easy", "Medium", "Hard", "Expert" }
ug = tonumber(AutoRollCadenceConstants.INTERVAL_SECONDS) or 0.2
t8, t4, s7, s1, Library, tx, tp, Toggles, Options, s2, sY, ud, t5, t_, tX, to, uf, tU, ty, ub, tD, s8, tt, ti, tn, tT, uc, t3, tf, tF, t9, tg, tR, s9, s5, tw, sX, th, tc, tL, s_, ua, tO, tr, t1, tA, tJ, uj, tY, tC, ul = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
t8 = ug
t4 = {}
tX = fn271
to = fn802
s7 = {
    Unloaded = false,
    Notify = nil,
    AutoRollAura = false,
    AuraRollKind = AuraRollKind2.Standard,
    AutoRollDice = false,
    DiceInterval = t8,
    DeleteRollScene = false,
    HideRollOverlay = false,
    AutoEquipBest = false,
    EquipTargets = { Characters = true, Aura = true },
    AutoBuyUpgrades = false,
    UpgradeCategories = {
        Awakening = true,
        Combat = true,
        Core = true,
        Crafting = true,
        Enchanting = true,
        Exploration = true,
        Fortune = true,
        Growth = true,
        Passive = true,
        Runes = true,
        Wealth = true
    },
    AutoCollectDrops = false,
    DropTypes = { Currency = true, Items = true },
    AutoMerge = false,
    MergeBands = { Common = true, Uncommon = true, Rare = true },
    AutoCraftRunes = false,
    AutoCraftPotions = false,
    AutoCraftFood = false,
    SelectedCraftRunes = {},
    SelectedCraftPotions = {},
    SelectedCraftFood = {},
    CraftMultiplier = 1,
    SkipRandomRecipes = true,
    CraftNotify = true,
    AutoAwakening = false,
    AwakenRarities = { Epic = true, Legendary = true, Mythic = true },
    AutoUsePotions = false,
    SelectedPotions = {},
    AutoExplore = false,
    ExploreMap = "",
    ExploreDifficulty = "Easy",
    AutoFill = true,
    AutoStart = true,
    ExploreClaimNotify = true,
    AutoClaimQuests = false,
    QuestClaims = { Quests = true, DailyBonus = true },
    AutoClaimIndex = false,
    IndexClaims = { Discovery = true, Milestones = true },
    LastPotionUse = 0,
    AuraBusy = false,
    DiceBusy = false,
    HiddenShowcase = nil,
    ShowcaseParent = nil,
    RollPreview = nil,
    RollPreviewVisible = nil
}
s1 = { State = s7, Unloaded = false }
uf = fn1203
tU = fn866
ty = function(aw, ...)
    local u2 = s7.Unloaded or type(aw) ~= "table"
    if u2 then
        return false
    end
    local u2_1 = pcall(function(...)
        aw:fire(...)
    end, ...)
    return u2_1
end
ub = fn1229
tD = fns.fn138
s8 = fns.fn80
if (t8 and t8 and (not tn or not tn) and (t8 or tn or (not t3 or t_)) or (t8 or not t3 or not t3 and not t3) and (t3 or not tn or (not t8 or not t_))) and (not t_ and not tn and (not t8 or not t_) or t8 and not t3 and (tn and t8) or (tn and not t_ or (t_ or t3)) and (tn and tn and (tn and not t_))) or not ((t8 and t8 and (not tn or not tn) and (t8 or tn or (not t3 or t_)) or (t8 or not t3 or not t3 and not t3) and (t3 or not tn or (not t8 or not t_))) and (not t_ and not tn and (not t8 or not t_) or t8 and not t3 and (tn and t8) or (tn and not t_ or (t_ or t3)) and (tn and tn and (tn and not t_)))) then
    tt = fns.fn12
    ti = fn903
    tn = fn569
    tT = fn500
    uc = fn314
else
    uc = fns.fn12
    tT = fn903
    tt = fn569
    ti = fn500
    tn = fn314
end
t3 = fn738
tf = fn1187
tF = fns.fn163
t9 = fns.fn25
tg = fn948
tR = fn1145
s9 = fn485
s5 = fn527
if ((Options or not Options) and (Options or not s8) or (not s8 or not s8 or Options and Options)) and not ((Options or not Options) and (Options or not s8) or (not s8 or not s8 or Options and Options)) then
    tp = fns.fn159
else
    tw = fns.fn159
end
sX = function()
    if not s7.AutoEquipBest then
        return
    end
    if tD(s7.EquipTargets, "Characters") then
        pcall(function()
            ClientUser:getPlot():equipBestCharacters()
        end)
    end
    if tD(s7.EquipTargets, "Aura") then
        local xC = ti()
        local xD = ClientUser:getAura():getEquippedId()
        if xC and xC ~= xD then
            pcall(function()
                ClientUser:getAura():equip(xC)
            end)
        end
    end
end
th = fn1096
tc = fn612
tL = fn856
s_ = fn785
ua = fn328
if (not s7 and ul or (ul or uj)) and (ul or s7 or not ul and not ul) or (s7 and ul or not uj and uj) and ((s7 or s7) and (uj and not s7)) or (s7 and not uj and (not ul and not uj) or (ul and not ul or s7 and not s7)) and (uj and not uj and (not ul or ul) or (uj and uj or not s7 and not ul)) or not ((not s7 and ul or (ul or uj)) and (ul or s7 or not ul and not ul) or (s7 and ul or not uj and uj) and ((s7 or s7) and (uj and not s7)) or (s7 and not uj and (not ul and not uj) or (ul and not ul or s7 and not s7)) and (uj and not uj and (not ul or ul) or (uj and uj or not s7 and not ul))) then
    tO = fn1163
    tr = fn608
    t1 = function()
        if not s7.AutoExplore then
            return
        end
        local yI = tF()
        if yI == nil then
            return
        end
        local yH = ClientUser:getExploration()
        if not yH:isZoneUnlocked(yI) then
            return
        end
        local yK = ExplorationRegistry:findById(yI)
        if yK == nil then
            return
        end
        local ExploreDifficulty = s7.ExploreDifficulty
        local yJ = yH:getSession(yI)
        local yM = yJ and yJ:isCompleted()
        if yM then
            pcall(function()
                yJ:claim()
            end)
            if s7.ExploreClaimNotify then
                uf("Claimed " .. yK:getName() .. " rewards")
            end
            return
        end
        if s7.AutoFill then
            local yM_3 = yJ == nil or yJ:isDraft()
            if yM_3 then
                local yM_4 = tf(yJ)
                local yN = yH:getPartySizeCapacity()
                local yO = type(yN) ~= "number" or yN <= 0
                if yO then
                    yN = ExplorationRegistry:getPartySize()
                end
                local max = math.max
                local yP = yN or 0
                local yN_2 = max(0, yP - #yM_4)
                if yN_2 > 0 then
                    local yO_4 = yK:getRequiredPower(ExploreDifficulty) or 0
                    local yG = ExplorationPartyFillUtils.selectFill({ currentParty = yM_4, slots = yN_2, difficulty = ExploreDifficulty, requiredPower = yO_4 })
                    local yK_6 = type(yG) == "table" and type(yG.uids) == "table" and #yG.uids > 0
                    if yK_6 then
                        pcall(function()
                            yH:deploy(yI, yG.uids)
                        end)
                    end
                end
            end
        end
        yJ = yH:getSession(yI)
        local yK_7 = s7.AutoStart and yJ and yJ:isDraft()
        if yK_7 then
            local yK_8 = tf(yJ)
            if #yK_8 > 0 then
                ty(ClientEvents.ExplorationStartRequest, yI, ExploreDifficulty, false)
            end
        end
    end
    tA = function()
        if not s7.AutoClaimQuests then
            return
        end
        if tD(s7.QuestClaims, "Quests") then
            local yV = ClientUser:getQuest()
            for k, v in yV:getAll() do
                local y1 = v
                if y1:isClaimable() then
                    pcall(function()
                        yV:claim(y1:getUid())
                    end)
                end
            end
        end
        if tD(s7.QuestClaims, "DailyBonus") then
            local yU = ClientUser:getQuestDaily()
            if yU:isBonusEligible() then
                pcall(function()
                    yU:claimBonus()
                end)
            end
        end
    end
    tJ = function()
        local y5
        if not s7.AutoClaimIndex then
            return
        end
        local y4 = ClientUser:getIndex()
        if y4 == nil then
            return
        end
        if tD(s7.IndexClaims, "Milestones") then
            y5 = 0
            pcall(function()
                local y2 = y4:getGlobalClaimableMilestoneCount() or 0
                y5 = y2
            end)
            if y5 > 0 then
                pcall(function()
                    y4:claimAllMilestoneRewards()
                end)
            end
        end
        if tD(s7.IndexClaims, "Discovery") then
            local y6 = 0
            local providers = IndexRegistry.providers
            if type(providers) == "table" then
                for k, v in providers do
                    local zg = k
                    if y6 >= 20 then
                        break
                    else
                        local y7_3 = v.getEntryIds and v:getEntryIds()
                        if type(y7_3) == "table" then
                            for k, v in y7_3 do
                                local zo = v
                                if y6 >= 20 then
                                    break
                                end
                                local y7_4 = type(zo) == "string" and y4:isDiscoveryRewardClaimable(zg, zo)
                                if y7_4 then
                                    pcall(function()
                                        y4:claimDiscoveryReward(zg, zo)
                                    end)
                                    y6 += 1
                                end
                            end
                        end
                    end
                end
            end
        end
    end
else
    tr = fn1163
    tO = fn608
    tJ = function()
        if not s7.AutoExplore then
            return
        end
        local yI = tF()
        if yI == nil then
            return
        end
        local yH = ClientUser:getExploration()
        if not yH:isZoneUnlocked(yI) then
            return
        end
        local yK = ExplorationRegistry:findById(yI)
        if yK == nil then
            return
        end
        local ExploreDifficulty = s7.ExploreDifficulty
        local yJ = yH:getSession(yI)
        local yM = yJ and yJ:isCompleted()
        if yM then
            pcall(function()
                yJ:claim()
            end)
            if s7.ExploreClaimNotify then
                uf("Claimed " .. yK:getName() .. " rewards")
            end
            return
        end
        if s7.AutoFill then
            local yM_1 = yJ == nil or yJ:isDraft()
            if yM_1 then
                local yM_2 = tf(yJ)
                local yN = yH:getPartySizeCapacity()
                local yO = type(yN) ~= "number" or yN <= 0
                if yO then
                    yN = ExplorationRegistry:getPartySize()
                end
                local max = math.max
                local yP = yN or 0
                local yN_1 = max(0, yP - #yM_2)
                if yN_1 > 0 then
                    local yO_2 = yK:getRequiredPower(ExploreDifficulty) or 0
                    local yG = ExplorationPartyFillUtils.selectFill({ currentParty = yM_2, slots = yN_1, difficulty = ExploreDifficulty, requiredPower = yO_2 })
                    local yK_2 = type(yG) == "table" and type(yG.uids) == "table" and #yG.uids > 0
                    if yK_2 then
                        pcall(function()
                            yH:deploy(yI, yG.uids)
                        end)
                    end
                end
            end
        end
        yJ = yH:getSession(yI)
        local yK_3 = s7.AutoStart and yJ and yJ:isDraft()
        if yK_3 then
            local yK_4 = tf(yJ)
            if #yK_4 > 0 then
                ty(ClientEvents.ExplorationStartRequest, yI, ExploreDifficulty, false)
            end
        end
    end
    t1 = function()
        if not s7.AutoClaimQuests then
            return
        end
        if tD(s7.QuestClaims, "Quests") then
            local yV = ClientUser:getQuest()
            for k, v in yV:getAll() do
                local y1 = v
                if y1:isClaimable() then
                    pcall(function()
                        yV:claim(y1:getUid())
                    end)
                end
            end
        end
        if tD(s7.QuestClaims, "DailyBonus") then
            local yU = ClientUser:getQuestDaily()
            if yU:isBonusEligible() then
                pcall(function()
                    yU:claimBonus()
                end)
            end
        end
    end
    tA = function()
        local y5
        if not s7.AutoClaimIndex then
            return
        end
        local y4 = ClientUser:getIndex()
        if y4 == nil then
            return
        end
        if tD(s7.IndexClaims, "Milestones") then
            y5 = 0
            pcall(function()
                local y2 = y4:getGlobalClaimableMilestoneCount() or 0
                y5 = y2
            end)
            if y5 > 0 then
                pcall(function()
                    y4:claimAllMilestoneRewards()
                end)
            end
        end
        if tD(s7.IndexClaims, "Discovery") then
            local y6 = 0
            local providers = IndexRegistry.providers
            if type(providers) == "table" then
                for k, v in providers do
                    local zg = k
                    if y6 >= 20 then
                        break
                    else
                        local y7_1 = v.getEntryIds and v:getEntryIds()
                        if type(y7_1) == "table" then
                            for k, v in y7_1 do
                                local zo = v
                                if y6 >= 20 then
                                    break
                                end
                                local y7_2 = type(zo) == "string" and y4:isDiscoveryRewardClaimable(zg, zo)
                                if y7_2 then
                                    pcall(function()
                                        y4:claimDiscoveryReward(zg, zo)
                                    end)
                                    y6 += 1
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
uj = fn512
tX(ClientEvents.AuraRollResult, fn731)
tX(ClientEvents.AuraRollRejected, fns.fn121)
tX(ClientEvents.DiceRollResult, fn737)
tX(ClientEvents.DiceRollRejected, fn520)
tX(ClientEvents.CraftResult, fn479)
tX(ClientEvents.PlotCrystalCurrencyDrop, fn633)
tX(ClientEvents.PlotCrystalItemDrop, fn432)
tX(Workspace.ChildAdded, fn1228)
s1.SetNotify = fn427
s1.SetAuraRoll = fn639
s1.SetAuraRollKind = fn831
s1.SetDiceRoll = fn673
s1.SetDiceInterval = fn279
s1.SetDeleteRollScene = fn854
s1.SetHideRollOverlay = fn421
s1.SetEquipBest = fns.fn133
s1.SetEquipTargets = fns.fn97
s1.SetBuyUpgrades = fn396
s1.SetUpgradeCategories = fn683
s1.SetCollectDrops = fn661
s1.SetDropTypes = fns.fn116
s1.SetMerge = fn295
s1.SetMergeBands = fn794
s1.SetCraftRunes = fn988
s1.SetCraftPotions = fn1109
s1.SetCraftFood = fn548
s1.SetSelectedCraftRunes = fn1158
s1.SetSelectedCraftPotions = fn1225
s1.SetSelectedCraftFood = fn554
s1.SetCraftMultiplier = fn913
s1.SetSkipRandom = fn721
s1.SetCraftNotify = fn924
s1.SetAwakening = fn329
s1.SetAwakenRarities = fn706
s1.SetUsePotions = fn1033
s1.SetSelectedPotions = fn277
s1.SetExplore = fns.fn231
s1.SetExploreMap = fn526
s1.SetExploreDifficulty = fn415
s1.SetAutoFill = fn431
s1.SetAutoStart = fn1178
s1.SetExploreClaimNotify = fn967
s1.SetClaimQuests = fns.fn139
s1.SetQuestClaims = fns.fn217
s1.SetClaimIndex = fn325
s1.SetIndexClaims = fn1205
s1.ExplorationMaps = fn1088
s1.RecipeOptions = fn792
s1.PotionOptions = fn621
s1.Unload = fn735
getgenv()[sZ] = s1
uj()
ui = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
if not t4 and not t4 and (not t4 or uf) and ((not t4 or t3) and (t3 and false)) and not (not t4 and not t4 and (not t4 or uf) and ((not t4 or t3) and (t3 and false))) then
    ui = loadstring(game:HttpGet(Library .. "Library.lua"))()
else
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
end
tx = loadstring(game:HttpGet(ui .. "addons/ThemeManager.lua"))()
tp = loadstring(game:HttpGet(ui .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
s2 = "Project Aura RNG"
sY = "https://discord.gg/ehKVq7pf7v"
ud = "https://rscripts.net/@Ouroboros"
t5 = "https://ouroboros-hub-rbx.web.app/"
tY = fn949
tC = fn600
ul = fn426
uk = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = sY, Copyable = true }, "|", s2 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
if tR and not s1 and (tR or s9) and (tU or s1 or (not tU or s1)) and ((tR or not s9) and (not uf or tU) and (s1 and not s1 or tU and s9)) or not (tR and not s1 and (tR or s9) and (tU or s1 or (not tU or s1)) and ((tR or not s9) and (not uf or tU) and (s1 and not s1 or tU and s9))) then
    uk:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    t_ = {
        Info = uk:AddTab("Info", "info"),
        Main = uk:AddTab("Main", "sparkles"),
        Auto = uk:AddTab("Auto", "bot"),
        Player = uk:AddTab("Player", "person-standing"),
        Settings = uk:AddTab("Settings", "settings")
    }
else
    t_:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Transparency = 0.3, Radius = 24 })
    uk = {
        Auto = t_:AddTab("Auto", "bot"),
        Main = t_:AddTab("Main", "sparkles"),
        Info = t_:AddTab("Info", "info"),
        Player = t_:AddTab("Player", "person-standing"),
        Settings = t_:AddTab("Settings", "settings")
    }
end
for k, v in { t_.Main, t_.Auto, t_.Player, t_.Settings } do
    ul(v)
end
t7, ui = nil, nil
s1.SetNotify(fn618)
Library:OnUnload(fn478)
uj = function()
    local By
    local Bw
    local Bx
    local Bz
    local Bt
    local BE
    Bt = nil
    Bw = nil
    Bx = nil
    By = nil
    Bz = nil
    BE = nil
    local Bu, Label, BA, BB, Label2, Label3
    Bz = function(jE, jF)
        return string.format('<font color="%s">%s</font>', jF, jE)
    end
    BB = function(jH, jI, jJ)
        return string.format("<b>%s</b> %s %s", jH, Bz("-", "#5a6070"), Bz(jI, jJ))
    end
    Bw = "#e8a34d"
    BE = "#e05a5a"
    local BG = "#8b93a3"
    By = "#7fd47f"
    local function BH()
        local AH = hookfunction ~= nil
        local AI = hookmetamethod ~= nil
        local AJ = getrawmetatable ~= nil
        local AK = setrawmetatable ~= nil
        local AL = getgc ~= nil
        local AM = getgenv ~= nil
        local AN = getreg ~= nil
        local AO = getconnections ~= nil
        local AP = firesignal ~= nil
        local AQ = getcallbackvalue ~= nil
        local AR = setclipboard ~= nil
        local AS = getcustomasset ~= nil
        local AT = getnamecallmethod ~= nil
        local AU = isexecutorclosure ~= nil
        local AV = fireproximityprompt ~= nil
        local AW = firetouchinterest ~= nil
        local AX = WebSocket ~= nil
        local AY = readfile ~= nil
        local AZ = writefile ~= nil
        local A0 = (request or http_request) ~= nil
        local A2 = (debug and debug.getupvalues) ~= nil
        local A4 = (debug and debug.setupvalue) ~= nil
        local A5 = 0
        local A6 = { AH, AI, AJ, AK, AL, AM, AN, AO, AP, AQ, AR, AS, AT, AU, AV, AW, AX, AY, AZ, A0, A2, A4 }
        for i, v in ipairs(A6) do
            if v then
                A5 += 1
            end
        end
        local AH_1 = A5 / #A6
        if AH_1 >= 0.9 then
            return Bz("Full Support", By)
        elseif AH_1 >= 0.6 then
            return Bz("Half Support", Bw)
        else
            return Bz("Low Support", BE)
        end
    end
    Bt = "Unknown"
    pcall(function()
        local Bf_1
        local Be_1
        if identifyexecutor then
            Bf_1, Be_1 = identifyexecutor()
            local Bg = Bf_1 ~= ""
            local Bh = type(Bf_1) == "string" and Bg
            if Bh then
                local Bg_1 = type(Be_1) == "string" and Be_1 ~= "" and Bf_1 .. " " .. Be_1
                Bt = Bg_1 or Bf_1
            end
        end
    end)
    local BI = BH()
    Bx = os.clock()
    BA = function()
        local Bj = math.floor(os.clock() - Bx)
        if Bj < 60 then
            return Bj .. "s"
        elseif Bj < 3600 then
            return string.format("%dm %ds", Bj // 60, Bj % 60)
        else
            return string.format("%dh %dm", Bj // 3600, Bj % 3600 // 60)
        end
    end
    local UserGroup = t_.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(BB("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, By), true)
    UserGroup:AddLabel(BB("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(BB("Executor", Bt .. "  " .. BI, By), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(BB("Session", BA(), Bw), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            tY(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            tY("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = t_.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(BB("Game", s2, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(BB("Players", "0/0", By), true)
    Bu = tostring(game.JobId)
    local BF = #Bu > 18 and string.sub(Bu, 1, 18) .. "..."
    local BI_1 = BF or Bu
    SessionGroup:AddLabel(BB("Job", BI_1, BG), true)
    Label = SessionGroup:AddLabel(BB("Ping", "0 ms", Bw), true)
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
            tY(Bu, "Copied Job ID")
        end
    })
    task.spawn(function()
        local Bm_1
        local Bl_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(BB("Session", BA(), Bw))
            Label2:SetText(BB("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), By))
            Bl_1, Bm_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local Bl_2 = Bl_1 and Bm_1 .. " ms" or "n/a"
            Label:SetText(BB("Ping", Bl_2, Bw))
        end
    end)
    local SocialsGroup = t_.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = tC })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(ud)
            elseif toclipboard then
                toclipboard(ud)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            tY(t5, "Copied website link")
        end
    })
end
uj()
t7 = fn1036
ug = fn285
uk = function()
    local BT, BU, BV, BW, BX
    local B1_1
    local B0_1
    local BY_1
    local B__1
    local BZ_1
    BY_1, BX = s1.ExplorationMaps()
    BZ_1, BV = s1.PotionOptions()
    B__1, BW = s1.RecipeOptions(RecipeKind.Food)
    B0_1, BU = s1.RecipeOptions(RecipeKind.Potion)
    B1_1, BT = s1.RecipeOptions(RecipeKind.Rune)
    local MergeGroup = t_.Auto:AddLeftGroupbox("Merge", "combine")
    MergeGroup:AddToggle("AutoMerge", {
        Text = "Auto Merge",
        Default = false,
        Callback = function(lO)
            s1.SetMerge(lO)
        end
    })
    MergeGroup:AddDropdown("MergeBands", {
        Text = "Rarities",
        Values = tq,
        Default = { "Common", "Uncommon", "Rare" },
        Multi = true,
        Callback = function(lR)
            s1.SetMergeBands(lR)
        end
    })
    local CraftGroup = t_.Auto:AddRightGroupbox("Craft", "flask-conical")
    CraftGroup:AddToggle("AutoCraftFood", {
        Text = "Auto Cook",
        Default = false,
        Callback = function(lU)
            s1.SetCraftFood(lU)
        end
    })
    CraftGroup:AddDropdown("SelectedCraftFood", {
        Text = "Food",
        Values = B__1,
        Default = {},
        Multi = true,
        Searchable = true,
        Expandable = true,
        Callback = function(lW)
            s1.SetSelectedCraftFood(t7(lW, BW))
        end
    })
    CraftGroup:AddToggle("AutoCraftPotions", {
        Text = "Auto Craft Potions",
        Default = false,
        Callback = function(l0)
            s1.SetCraftPotions(l0)
        end
    })
    CraftGroup:AddDropdown("SelectedCraftPotions", {
        Text = "Potion Recipes",
        Values = B0_1,
        Default = {},
        Multi = true,
        Searchable = true,
        Expandable = true,
        Callback = function(l2)
            s1.SetSelectedCraftPotions(t7(l2, BU))
        end
    })
    CraftGroup:AddToggle("AutoCraftRunes", {
        Text = "Auto Craft Runes",
        Default = false,
        Callback = function(l6)
            s1.SetCraftRunes(l6)
        end
    })
    CraftGroup:AddDropdown("SelectedCraftRunes", {
        Text = "Rune Recipes",
        Values = B1_1,
        Default = {},
        Multi = true,
        Searchable = true,
        Callback = function(l8)
            s1.SetSelectedCraftRunes(t7(l8, BT))
        end
    })
    CraftGroup:AddDropdown("CraftMultiplier", {
        Text = "Craft Amount",
        Values = s3,
        Default = "1",
        Callback = function(md)
            s1.SetCraftMultiplier(md)
        end
    })
    CraftGroup:AddToggle("SkipRandomRecipes", {
        Text = "Skip Random Result Recipes",
        Default = true,
        Callback = function(mf)
            s1.SetSkipRandom(mf)
        end
    })
    CraftGroup:AddToggle("CraftNotify", {
        Text = "Craft Result Notifications",
        Default = true,
        Callback = function(mh)
            s1.SetCraftNotify(mh)
        end
    })
    local B__2 = t_.Auto:AddRightGroupbox("Potions", "droplet")
    B__2:AddToggle("AutoAwakening", {
        Text = "Auto Awakening",
        Default = false,
        Callback = function(mk)
            s1.SetAwakening(mk)
        end
    })
    B__2:AddDropdown("AwakenRarities", {
        Text = "Awaken Rarities",
        Values = tj,
        Default = { "Epic", "Legendary", "Mythic" },
        Multi = true,
        Callback = function(mn)
            s1.SetAwakenRarities(mn)
        end
    })
    B__2:AddToggle("AutoUsePotions", {
        Text = "Auto Use Potions",
        Default = false,
        Callback = function(mp)
            s1.SetUsePotions(mp)
        end
    })
    B__2:AddDropdown("SelectedPotions", {
        Text = "Potions",
        Values = BZ_1,
        Default = {},
        Multi = true,
        Searchable = true,
        Expandable = true,
        Callback = function(mr)
            s1.SetSelectedPotions(t7(mr, BV))
        end
    })
    local ExplorationGroup = t_.Auto:AddLeftGroupbox("Exploration", "map")
    ExplorationGroup:AddToggle("AutoExplore", {
        Text = "Auto Exploration",
        Default = false,
        Callback = function(mw)
            s1.SetExplore(mw)
        end
    })
    ExplorationGroup:AddDropdown("ExploreMap", {
        Text = "Map",
        Values = BY_1,
        Default = BY_1[1],
        Searchable = true,
        Callback = function(my)
            s1.SetExploreMap(BX[my])
        end
    })
    ExplorationGroup:AddDropdown("ExploreDifficulty", {
        Text = "Difficulty",
        Values = sW,
        Default = "Easy",
        Callback = function(mC)
            s1.SetExploreDifficulty(mC)
        end
    })
    ExplorationGroup:AddDivider("Run")
    ExplorationGroup:AddToggle("AutoFill", {
        Text = "Auto Fill",
        Default = true,
        Callback = function(mE)
            s1.SetAutoFill(mE)
        end
    })
    ExplorationGroup:AddToggle("AutoStart", {
        Text = "Auto Start",
        Default = true,
        Callback = function(mG)
            s1.SetAutoStart(mG)
        end
    })
    ExplorationGroup:AddToggle("ExploreClaimNotify", {
        Text = "Claimed Reward Notifications",
        Default = true,
        Callback = function(mI)
            s1.SetExploreClaimNotify(mI)
        end
    })
    local QuestsGroup = t_.Auto:AddLeftGroupbox("Quests", "scroll-text")
    QuestsGroup:AddToggle("AutoClaimQuests", {
        Text = "Auto Claim Quests",
        Default = false,
        Callback = function(mL)
            s1.SetClaimQuests(mL)
        end
    })
    QuestsGroup:AddDropdown("QuestClaims", {
        Text = "Claim",
        Values = { "Completed Quests", "Daily Bonus" },
        Default = { "Completed Quests", "Daily Bonus" },
        Multi = true,
        Callback = function(mN)
            s1.SetQuestClaims(mN)
        end
    })
    local IndexGroup = t_.Auto:AddRightGroupbox("Index", "book-text")
    IndexGroup:AddToggle("AutoClaimIndex", {
        Text = "Auto Claim Index",
        Default = false,
        Callback = function(mQ)
            s1.SetClaimIndex(mQ)
        end
    })
    IndexGroup:AddDropdown("IndexClaims", {
        Text = "Claim",
        Values = { "Discovery Rewards", "Milestones" },
        Default = { "Discovery Rewards", "Milestones" },
        Multi = true,
        Callback = function(mS)
            s1.SetIndexClaims(mS)
        end
    })
    if BY_1[1] then
        s1.SetExploreMap(BX[BY_1[1]])
    end
end
ug()
uk()
un = function()
    local MovementGroup = t_.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = t_.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function mY()
        local Character = LocalPlayer.Character
        local B8 = Character and Character:FindFirstChildOfClass("Humanoid")
        return B8
    end
    local function m2()
        local Character = LocalPlayer.Character
        local Cb = Character and Character:FindFirstChild("HumanoidRootPart")
        return Cb
    end
    local function m6(m7)
        if not m7:IsA("ProximityPrompt") then
            return
        end
        m7.HoldDuration = 0
        m7.MaxActivationDistance = 50
        m7.RequiresLineOfSight = false
    end
    local connection
    local m9 = workspace.CurrentCamera
    tX(RunService.Stepped, function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Ce_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Ce_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    tX(UserInputService.JumpRequest, function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Cm_1 = mY()
            if Cm_1 then
                Cm_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    tX(RunService.RenderStepped, function(ns)
        if Library.Unloaded then
            return
        end
        m9 = workspace.CurrentCamera
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Cr_1 = mY()
            if Cr_1 then
                Cr_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Cr_3 = m2()
            local Cs = mY()
            if Cr_3 and Cs then
                Cs.PlatformStand = true
                local Cs_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Cs_1 += m9.CFrame.LookVector
                end
                local Cx = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                if Cx == 1 then
                    Cs_1 -= m9.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Cs_1 -= m9.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Cs_1 += m9.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Cs_1 += Vector3.new(0, 1, 0)
                end
                local CA = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if CA == 1 then
                    Cs_1 -= Vector3.new(0, 1, 0)
                end
                Cr_3.AssemblyLinearVelocity = Vector3.zero
                if Cs_1.Magnitude > 0 then
                    Cr_3.CFrame = Cr_3.CFrame + Cs_1.Unit * Options.FlySpeed.Value * ns
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local CB = mY()
            if CB then
                CB.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local CG = mY()
            if CG then
                CG.WalkSpeed = 16
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in workspace:GetDescendants() do
                pcall(m6, descendant)
            end
            connection = workspace.DescendantAdded:Connect(function(nS)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(m6, nS)
                end
            end)
            table.insert(t4, connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
end
un()
um = function()
    local MenuGroup = t_.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local n0 = 0
    local n1 = tick()
    local function n2()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        n0 += 1
        n1 = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. n0)
        end)
    end
    tX(LocalPlayer.Idled, function()
        if Toggles.AntiAfk.Value then
            pcall(n2)
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = t_.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    local function ol(om)
        pcall(function()
            tH:SetGameplayPausedNotificationEnabled(not om)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not om
            end
        end)
        if not om then
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
    Toggles.AntiGameplayPause:OnChanged(function()
        ol(Toggles.AntiGameplayPause.Value)
    end)
    local oD = false
    local function oE()
        local PlaceId, JobId
        if oD then
            return
        end
        oD = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local C1 = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not C1 then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local C9 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not C9 then
            return
        end
        tX(C9.ChildAdded, function(oX)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and oX.Name == "ErrorPrompt" then
                oE()
            end
        end)
    end)
    tX(TeleportService.TeleportInitFailed, function()
        if Toggles.AutoReconnect.Value then
            oD = false
            oE()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            RunService:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local pc = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local connection
    local function pe(pf)
        if pc[pf.ClassName] then
            pcall(function()
                pf.Enabled = false
            end)
        end
    end
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                tz.GlobalShadows = false
            end)
            pcall(function()
                tz.FogEnd = 9000000000
            end)
            for i, descendant in workspace:GetDescendants() do
                pcall(pe, descendant)
            end
            connection = workspace.DescendantAdded:Connect(function(ps)
                if Toggles.FpsBoost.Value then
                    pcall(pe, ps)
                end
            end)
            table.insert(t4, connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                tz.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Do = Toggles.AntiAfk.Value and tick() - n1 >= 60
            if Do then
                pcall(n2)
            end
            if Toggles.AntiGameplayPause.Value then
                ol(true)
            end
        end
    end)
    Library:OnUnload(function()
        ol(false)
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
    end)
end
if (un or un or not um and un or (not un or um) and (um and not um)) and not (un or un or not um and un or (not un or um) and (um and not um)) then
    ui()
else
    um()
    ui = function()
        local Ef, Eg, Eh, Ei
        tx:SetLibrary(Library)
        tx:SetFolder("OuroborosHub")
        tx:SaveDefault("Evil Hello Kitty")
        tx:ApplyToTab(t_.Settings)
        tp:SetLibrary(Library)
        tp:IgnoreThemeSettings()
        tp:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        tp:SetFolder("OuroborosHub/ProjectAuraRNG")
        local Ej = tp:BuildConfigSection(t_.Settings)
        Eh = function(pO, pP)
            local Ds_1 = (pO == "Toggle" and Toggles or Options)[pP]
            local Dr_2 = type(Ds_1) == "table" and Ds_1.Type == pO
            return Dr_2 and Ds_1 or nil
        end
        Ef = function(pY, pZ)
            local Type = pZ.Type
            if Type == "Toggle" then
                return { idx = pY, type = "Toggle", value = pZ.Value == true }
            elseif Type == "Slider" then
                return { idx = pY, type = "Slider", value = tostring(pZ.Value) }
            elseif Type == "Dropdown" then
                return { idx = pY, type = "Dropdown", multi = pZ.Multi == true, value = pZ.Value }
            elseif Type == "Input" then
                local Dw = pZ.Value or ""
                return { idx = pY, type = "Input", text = tostring(Dw) }
            elseif Type == "ColorPicker" then
                return { idx = pY, type = "ColorPicker", value = pZ.Value:ToHex(), transparency = pZ.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = pY,
                    type = "KeyPicker",
                    mode = pZ.Mode,
                    key = pZ.Value,
                    modifiers = pZ.Modifiers,
                    toggled = pZ.Toggled
                }
            else
                return nil
            end
        end
        Ei = function()
            local DC = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local DD = type(v) == "table" and type(v.Type) == "string" and not tp.Ignore[k]
                    if DD then
                        local DD_1 = Ef(k, v)
                        if DD_1 then
                            DC[#DC + 1] = DD_1
                        end
                    end
                end
            end
            table.sort(DC, function(p8, p9)
                if p8.type ~= p9.type then
                    return p8.type < p9.type
                end
                return p8.idx < p9.idx
            end)
            return { objects = DC }
        end
        Eg = function(qb)
            local DT
            DT = nil
            local DU = type(qb) ~= "table" or type(qb.idx) ~= "string" or type(qb.type) ~= "string"
            local DY = if DU then 1 else 0
            local DW = 1200 * DY + 2869 * (1 - DY)
            local DX = 3796 * DY + 3148 * (1 - DY)
            if not ((DW * 106 + DX * 1380 + DW * DX) % 16777213 == 9920880) then
                DU = tp.Ignore[qb.idx]
            end
            if DU then
                return false
            end
            DT = Eh(qb.type, qb.idx)
            if not DT then
                return false
            end
            local DU_1 = pcall(function()
                if qb.type == "Input" then
                    if type(qb.text) ~= "string" then
                        return
                    end
                    DT:SetValue(qb.text)
                elseif qb.type == "ColorPicker" then
                    DT:SetValueRGB(Color3.fromHex(qb.value), qb.transparency)
                elseif qb.type == "KeyPicker" then
                    DT:SetValue({ qb.key, qb.mode, qb.modifiers })
                    if qb.mode == "Toggle" and qb.toggled ~= nil then
                        DT.Toggled = qb.toggled
                        DT:Update()
                    end
                else
                    DT:SetValue(qb.value)
                end
            end)
            return DU_1
        end
        Ej:AddDivider()
        Ej:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Ej:AddButton("Export Config to Clipboard", function()
            local D__1
            local DZ_1
            DZ_1, D__1 = pcall(HttpService.JSONEncode, HttpService, Ei())
            if not DZ_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local DZ_2 = setclipboard or toclipboard
            local DZ_3 = type(DZ_2) ~= "function" or not pcall(DZ_2, D__1)
            if DZ_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        Ej:AddButton("Import Config from Clipboard Text", function()
            local D4_1
            local D2 = Options.SaveManager_ImportSource.Value or ""
            local D2_1
            local D3 = tostring(D2):match("^%s*(.-)%s*$")
            if D3 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            D2_1, D4_1 = pcall(HttpService.JSONDecode, HttpService, D3)
            local D3_1 = not D2_1 or type(D4_1) ~= "table" or type(D4_1.objects) ~= "table"
            if D3_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local D2_2 = 0
            for i, v in ipairs(D4_1.objects) do
                if Eg(v) then
                    D2_2 += 1
                end
            end
            if D2_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local D4_2 = D2_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(D2_2, D4_2), 6)
        end)
        tx:LoadDefault()
        tp:LoadAutoloadConfig()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
end
ui()
