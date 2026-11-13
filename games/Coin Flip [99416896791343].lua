local hT
local hA
local Label2
local hG
local Label5
local hn
local h1
local Label4
local ia
local Options
local Label3
local hV
local hC
local hY
local Label
local h0
local hm
local connection2
local hI
local hL
local h6
local hs
local h9
local hR
local hy
local hU
local hX
local hB
local h_
local connection
local ho
local h5
local hK
local hr
local hN
local h8
local hu
local hx
local function onInputChanged(eu)
    local UserInputType = eu.UserInputType
    local lr = UserInputType == Enum.UserInputType.MouseMovement
    local lv = if lr then 1 else 0
    local lt = 3219 * lv + 3474 * (1 - lv)
    local lu = 2736 * lv + 1627 * (1 - lv)
    if not ((lt * 442 + lu * 2379 + lt * lu) % 16777213 == 16738926) then
        lr = UserInputType == Enum.UserInputType.Gamepad1
    end
    if lr then
        hs = tick()
    end
end
local function antiAfkLoop()
    while not h_.Unloaded do
        task.wait(2)
        if hN.AntiAfk.Value then
            local lw = tick() - hs
            local lx = tick() - hn
            if lw >= 300 and lx >= 60 then
                pcall(hT)
            else
                if lw < 300 and lx >= 300 then
                    pcall(hT)
                end
            end
        end
    end
end
local function fn41()
    local iY_1
    local iX_1
    if identifyexecutor then
        iY_1, iX_1 = identifyexecutor()
        local iZ = iY_1 ~= ""
        local i_ = type(iY_1) == "string" and iZ
        if i_ then
            local iZ_1 = type(iX_1) == "string" and iX_1 ~= "" and iY_1 .. " " .. iX_1
            h0 = iZ_1 or iY_1
        end
    end
end
local function fn44()
    if not workspace.CurrentCamera then
        return
    end
    hX:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    hX:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    hn = tick()
end
local function onRscripts()
    hK(hI)
    h_:Notify("Copied Rscripts profile to clipboard")
end
local function fn140(cU)
    local roll = cU.roll
    if not roll then
        return 0
    end
    local j9 = tonumber(roll.pct) or 0
    local j8_1 = roll.negative and -j9
    local ke = if j8_1 then 1 else 0
    local kc = 2276 * ke + 1554 * (1 - ke)
    local kd = 2391 * ke + 521 * (1 - ke)
    if not ((kc * 1294 + kd * 2543 + kc * kd) % 16777213 == 14467373) then
        j8_1 = j9
    end
    return j8_1
end
local function fn144()
    hK(hL)
    h_:Notify("Copied Discord invite to clipboard")
end
local function fn152(aT)
    local DiscordGroup = aT:AddLeftGroupbox("Discord", nil, nil, nil, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = hC })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = hC })
end
local function autoAscendLoop()
    while not h_.Unloaded do
        task.wait(3)
        if hN.AutoAscend.Value then
            local jZ = hm
            local j_ = jZ and jZ.canAscend
            if j_ then
                local j0 = tonumber(jZ.rebirthCount) or 0
                j_ = j0 >= Options.AscendAtRebirths.Value
            end
            if j_ then
                pcall(function()
                    h5:InvokeServer()
                end)
                ia()
            end
        end
    end
end
local function fn157(U)
    if setclipboard then
        setclipboard(U)
    elseif toclipboard then
        toclipboard(U)
    end
end
local function fn175(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, h8("-", "#5a6070"), h8(ae, af))
end
local function worker2()
    while not h_.Unloaded do
        task.wait(2)
        local jz = ia()
        if jz then
            local format = string.format
            local jB = tonumber(jz.balanceCents) or 0
            Label2:SetText(hV("Balance", format("%.2f", jB / 100), hG))
            local jA_1 = jz.totalFlips or 0
            Label3:SetText(hV("Total flips", tostring(jA_1), hA))
            local jA_2 = jz.rebirthCount or 0
            Label4:SetText(hV("Rebirths", tostring(jA_2), hu))
            local jA_3 = jz.level or 0
            Label5:SetText(hV("Level", tostring(jA_3), ho))
        end
    end
end
local function fn215()
    local i9_1
    local i8_1
    i8_1, i9_1 = pcall(function()
        return h1:GetProductInfo(game.PlaceId)
    end)
    local ja = i8_1
    local i8_2 = {}
    if ja then
        ja = type(i9_1) == "table"
    end
    if ja then
        ja = type(i9_1.Description) == "string"
    end
    if ja then
        for k in i9_1.Description:gmatch('"([%w!_%-]+)"') do
            i8_2[#i8_2 + 1] = k
        end
    end
    return i8_2
end
local function autoClaimAchievementsLoop()
    while not h_.Unloaded do
        task.wait(15)
        if hN.AutoClaimAchievements.Value then
            pcall(function()
                hB:InvokeServer()
            end)
        end
    end
end
local function fn278()
    local CycleChoice = require(h6:WaitForChild("CoinFlipConfig")).CycleChoice
    for i, v in ipairs(CycleChoice.Options) do
        local iK_1 = #hY + 1
        local iL = v.name or v.id
        hY[iK_1] = iL
        local iK_2 = v.name
        local iV = if iK_2 then 1 else 0
        local iT = 3304 * iV + 3288 * (1 - iV)
        local iU = 235 * iV + 4054 * (1 - iV)
        if not ((iT * 2767 + iU * 3227 + iT * iU) % 16777213 == 10676953) then
            iK_2 = v.id
        end
        hU[iK_2] = v.id
    end
end
local function onUnload()
    h_:Unload()
end
local function onCopyJoinScript_JobID()
    local az = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hx)
    hK(az)
    h_:Notify("Copied join script to clipboard")
end
local function autoFlipLoop()
    while not h_.Unloaded do
        if hN.AutoFlip.Value then
            pcall(function()
                hr:FireServer()
            end)
            local jw = hm
            local jx = jw and tonumber(jw.flipCooldown)
            local jw_1 = jx or 1
            task.wait(math.max(0.05, jw_1) + Options.FlipDelay.Value)
        else
            task.wait(0.25)
        end
    end
end
local function onInputBegan()
    hs = tick()
end
local function autoRebirthLoop()
    while not h_.Unloaded do
        task.wait(3)
        if hN.AutoRebirth.Value then
            local jU = hm
            if jU then
                local jV = tonumber(jU.nextRebirthCost)
                local jW = tonumber(jU.balanceCents) or 0
                if jV and jV >= 0 and jW >= jV then
                    pcall(function()
                        h9:InvokeServer()
                    end)
                    ia()
                end
            end
        end
    end
end
local function worker()
    local i2_1
    while true do
        task.wait(1)
        if h_.Unloaded then
            break
        end
        local i1 = math.floor(os.clock() - hR)
        if i1 < 60 then
            i2_1 = i1 .. "s"
        elseif i1 < 3600 then
            i2_1 = string.format("%dm %ds", i1 // 60, i1 % 60)
        else
            i2_1 = string.format("%dh %dm", i1 // 3600, i1 % 3600 // 60)
        end
        Label:SetText(hV("Session time", i2_1, hu))
    end
end
local function fn574(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
local function fn644()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn650()
    local i5_1
    local i4_1
    i4_1, i5_1 = pcall(function()
        return hy:InvokeServer()
    end)
    local i6 = i4_1 and type(i5_1) == "table"
    if i6 then
        hm = i5_1
    end
    return hm
end
Label5 = nil
hm = nil
hn = nil
ho = nil
Label4 = nil
hr = nil
hs = nil
hu = nil
Label3 = nil
hx = nil
hy = nil
hA = nil
hB = nil
hC = nil
Label2 = nil
connection = nil
Label = nil
hG = nil
hI = nil
hK = nil
hL = nil
hN = nil
Options = nil
hR = nil
hT = nil
hU = nil
hV = nil
hX = nil
hY = nil
h_ = nil
h0 = nil
h1 = nil
connection2 = nil
h5 = nil
local hj, hl, RedeemCode, ht, hv, hz, hH, GetChestInventory, hM, hO, hQ, UnequipItem, hW, GetInventory, h2, h4
h6 = nil
h8 = nil
h9 = nil
ia = nil
local h7, ib, im, io, ip, iq, ir
local GameInfoGroup
local iA_1
local ik_1
local Window
local ii_1
local ie_1
local ic_1
local ih_3
ic_1, h6, h1, hX, ip, hQ, im, hL, hI, ie_1, hy, hr, hl, h9, h5, GetInventory, hW, UnequipItem, hO, hM, GetChestInventory, hH, hB, hv, RedeemCode, hj, h7, h2, hY, hU, ib, ii_1, h_, iq, io, Options, hN, hG, hA, hu, ho, Window, ir, h0, GameInfoGroup, Label, hx, ik_1, hK, hC, h8, hV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ig = 58
repeat
    local is_1 = (ig * 11 + 18) % 29 + 1
    if is_1 <= 15 then
        if is_1 <= 8 then
            if is_1 <= 4 then
                if is_1 <= 2 then
                    if is_1 <= 1 then
                        local it_1 = (vector.create((ig * 3 + 4) % 11 + 1, (ig * 2 + 4) % 13 + 1, (ig * 9 + 12) % 17 + 1))
                        local iu_1 = (vector.create((ig * 6 + 5) % 11 + 1, (ig * 1 + 2) % 13 + 1, (ig * 9 + 8) % 17 + 1))
                        local iv_1 = (vector.create((ig * 5 + 3) % 11 + 1, (ig * 1 + 7) % 13 + 1, (ig * 10 + 7) % 17 + 1))
                        if vector.dot(vector.cross(it_1, iu_1), iv_1) == vector.dot(vector.cross(iu_1, iv_1), it_1) then
                            hM = ie_1:WaitForChild("UsePotion")
                            GetChestInventory = ie_1:WaitForChild("GetChestInventory")
                        else
                            ie_1 = GetChestInventory:WaitForChild("UsePotion")
                            hM = GetChestInventory:WaitForChild("GetChestInventory")
                        end
                        ig = (ig + 8) % 116
                    else
                        local it_2 = {
                            "qnguhej",
                            "jowihhpyrhm",
                            "haqeeaktubmk",
                            "iyafrb",
                            "bpyanovawujp",
                            "wkldiabajlgn",
                            "pzxmrd",
                            "orlcmcqy",
                            "tifapha",
                            "xhmguoyqu",
                            "jjwb",
                            "fvwtr",
                            "jlxwvmcsb",
                            "snlgps",
                            "fcotk"
                        }
                        if it_2[(ig * 78 + 31) % 15 + 1] <= it_2[(ig * 78 + 31) % 15 + 1] then
                            hH = ie_1:WaitForChild("OpenAllChests")
                            hB = ie_1:WaitForChild("ClaimAllAchievementRewards")
                            hv = ie_1:WaitForChild("ChooseCycleBonus")
                            RedeemCode = ie_1:WaitForChild("RedeemCode")
                        else
                            hB = RedeemCode:WaitForChild("OpenAllChests")
                            hH = RedeemCode:WaitForChild("ClaimAllAchievementRewards")
                            ie_1 = RedeemCode:WaitForChild("ChooseCycleBonus")
                            hv = RedeemCode:WaitForChild("RedeemCode")
                        end
                        ig = (ig + 8) % 116
                    end
                elseif is_1 <= 3 then
                    local it_3 = {
                        "isqldmly",
                        "bbintp",
                        "uxagaiglxot",
                        "uoedi",
                        "viiyludg",
                        "ckbfoww",
                        "wpfkutvovg",
                        "ilk",
                        "koolqos",
                        "rmaz",
                        "sugwamuh"
                    }
                    local mg = ig
                    local iu_2 = it_3[mg % 11 + 1]
                    if iu_2:len() <= iu_2:gsub("(.)", "%1%1", mg % 3 % 2 + 1):len() then
                        hj = {
                            "CoinMultiplier",
                            "HeadsChance",
                            "FlipSpeed",
                            "LuckyFlip",
                            "StreakPower",
                            "CritChance",
                            "CritPower",
                            "FrenzyMastery"
                        }
                        h7 = { "Basic", "Silver", "Legendary", "Matrix", "Exclusive" }
                        h2 = {
                            "coin_1",
                            "coin_2",
                            "coin_3",
                            "coin_4",
                            "coin_5",
                            "coin_6",
                            "coin_7",
                            "luck_1",
                            "luck_2",
                            "luck_3",
                            "luck_4",
                            "luck_5",
                            "luck_6",
                            "luck_7",
                            "xp_1",
                            "xp_2",
                            "xp_3",
                            "xp_4",
                            "xp_5",
                            "xp_6",
                            "xp_7",
                            "flip_speed_1",
                            "flip_speed_2",
                            "flip_speed_3",
                            "flip_speed_4",
                            "flip_speed_5",
                            "flip_speed_6",
                            "flip_speed_7",
                            "shop_coins_1",
                            "shop_luck_1",
                            "shop_xp_1",
                            "shop_flipspeed_1"
                        }
                        hY = {}
                        hU = {}
                    else
                        hY = {
                            "LuckyFlip",
                            "CritPower",
                            "HeadsChance",
                            "StreakPower",
                            "CoinMultiplier",
                            "CritChance",
                            "FrenzyMastery",
                            "FlipSpeed"
                        }
                        hj = { "Legendary", "Basic", "Matrix", "Silver", "Exclusive" }
                        h7 = {
                            "xp_3",
                            "luck_4",
                            "luck_5",
                            "shop_coins_1",
                            "xp_2",
                            "flip_speed_4",
                            "coin_3",
                            "coin_5",
                            "luck_7",
                            "luck_6",
                            "coin_7",
                            "shop_luck_1",
                            "flip_speed_6",
                            "coin_1",
                            "flip_speed_1",
                            "flip_speed_2",
                            "xp_5",
                            "luck_2",
                            "coin_2",
                            "coin_6",
                            "flip_speed_7",
                            "shop_xp_1",
                            "xp_1",
                            "flip_speed_5",
                            "coin_4",
                            "shop_flipspeed_1",
                            "luck_1",
                            "flip_speed_3",
                            "luck_3",
                            "xp_6",
                            "xp_4",
                            "xp_7"
                        }
                        hU = {}
                        h2 = {}
                    end
                    ig = (ig + 8) % 116
                else
                    local it_4 = { "guufe", "rhmaxk", "oprllvd", "wuqoygossan", "weibhuna", "uyspxqbr", "vhdqsfxobgc" }
                    local mG = ig
                    local iu_3 = it_4[mG % 7 + 1]
                    if iu_3:len() <= iu_3:reverse():rep(mG % 3 + 2):len() then
                        pcall(fn278)
                        ib = {
                            Unobtainable = 0,
                            Limitless = 0.5,
                            Secret = 1,
                            Divine = 2,
                            Mythic = 3,
                            Legendary = 4,
                            Epic = 5,
                            Rare = 6,
                            Common = 7
                        }
                    else
                        pcall(fn278)
                        hG = {
                            Legendary = 4,
                            Divine = 2,
                            Limitless = 0.5,
                            Mythic = 3,
                            Epic = 5,
                            Secret = 1,
                            Unobtainable = 0,
                            Rare = 6,
                            Common = 7
                        }
                    end
                    ig = (ig + 37) % 116
                end
            elseif is_1 <= 6 then
                if is_1 <= 5 then
                    local it_5 = (vector.create((ig * 7 + 9) % 11 + 1, (ig * 6 + 7) % 13 + 1, (ig * 5 + 9) % 17 + 1))
                    local iu_4 = (vector.create((ig * 6 + 7) % 11 + 1, (ig * 5 + 3) % 13 + 1, (ig * 9 + 13) % 17 + 1))
                    local mi = vector.dot(it_5, iu_4)
                    if mi * mi >= vector.dot(it_5, it_5) * vector.dot(iu_4, iu_4) + 1 then
                        hx = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        ii_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    ig = (ig + 37) % 116
                else
                    local mF = bit32.rrotate(bit32.bxor(bit32.lrotate(ig, 16), string.byte(tostring(ir))), 11)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(mF, 284942897), 1884640727), (bit32.bxor(bit32.band(mF, 4010024398), 3620517681))), 1884640727), 3620517681) ~= mF then
                        ii_1 = loadstring(game:HttpGet(h_ .. "Library.lua"))()
                    else
                        h_ = loadstring(game:HttpGet(ii_1 .. "Library.lua"))()
                    end
                    ig = (ig + 37) % 116
                end
            elseif is_1 <= 7 then
                local it_6 = {
                    "qfawtw",
                    "ntvrencplswk",
                    "myhehd",
                    "ufivhhinc",
                    "tcol",
                    "anelyp",
                    "wba",
                    "kphbpjwfx",
                    "rvhfmfmfoi",
                    "xuu",
                    "hpktscviyep",
                    "pfeijoolizp",
                    "enftihosgblj",
                    "xwjnjuoixp"
                }
                if it_6[(ig * 90 + 13) % 14 + 1] <= it_6[(ig * 90 + 13) % 14 + 1] then
                    iq = loadstring(game:HttpGet(ii_1 .. "addons/ThemeManager.lua"))()
                    io = loadstring(game:HttpGet(ii_1 .. "addons/SaveManager.lua"))()
                    Options = h_.Options
                    hN = h_.Toggles
                else
                    ii_1 = loadstring(game:HttpGet(Options .. "addons/ThemeManager.lua"))()
                    hN = loadstring(game:HttpGet(Options .. "addons/SaveManager.lua"))()
                    h_ = io.Options
                    iq = io.Toggles
                end
                ig = (ig + 66) % 116
            else
                local it_7 = {
                    "qarvqia",
                    "ktuuduk",
                    "nwjjfqkw",
                    "gyntt",
                    "bhsqzmalatt",
                    "jdvwfuazfs",
                    "fnzr",
                    "auhmdjuz",
                    "olt",
                    "oofijxjtwgw",
                    "rfusxz",
                    "uwlnqka"
                }
                local mA = ig
                local iu_5 = it_7[mA % 12 + 1]
                if iu_5:len() >= iu_5:gsub("(.)", "%1%1", mA % 3 % 2 + 1):len() then
                    hC = fn157
                    hK = fn144
                else
                    hK = fn157
                    hC = fn144
                end
                ig = (ig + 8) % 116
            end
        elseif is_1 <= 12 then
            if is_1 <= 10 then
                if is_1 <= 9 then
                    local it_8 = {
                        "vom",
                        "kxcmkrv",
                        "tceniy",
                        "stapnvdplo",
                        "bsso",
                        "pbne",
                        "pecybtw",
                        "sfiwtvbpdevc",
                        "kfajwpkelm",
                        "ndd",
                        "cihaekwdia"
                    }
                    if it_8[(ig * 95 + 60) % 11 + 1] < it_8[(ig * 95 + 60) % 11 + 1] then
                        hU = fn574
                    else
                        h8 = fn574
                    end
                    ig = (ig + 37) % 116
                else
                    if (hX and not hY or hx and hY or (hY and hx or hx and not hX) or (hY or hC or (hX or hx) or not hY and hC and (not hY and hC))) and not (hX and not hY or hx and hY or (hY and hx or hx and not hX) or (hY or hC or (hX or hx) or not hY and hC and (not hY and hC))) then
                        iq = fn175
                    else
                        hV = fn175
                    end
                    ig = (ig + 8) % 116
                end
            elseif is_1 <= 11 then
                local it_9 = { "eidbrhps", "xsinc", "uuvpxcmm", "klwooyru", "zmvswhd", "yevo", "eleyg", "vawcqfol", "hqdzmjzp" }
                local mv = ig
                local iu_6 = it_9[mv % 9 + 1]
                if iu_6:len() >= iu_6:gsub("(.)", "%1%1", mv % 3 % 2 + 1):len() then
                    hu = "#7fd47f"
                else
                    hG = "#7fd47f"
                end
                ig = (ig + 66) % 116
            else
                local lU = bit32.rrotate(bit32.bxor(bit32.lrotate(ig, 13), string.byte(tostring(GetInventory))), 15)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(lU, 400227277), 2085158187), (bit32.bxor(bit32.band(lU, 3894740018), 4080403112))), 2085158187), 4080403112) == lU then
                    hA = "#6ec1ff"
                else
                    hu = "#6ec1ff"
                end
                ig = (ig + 8) % 116
            end
        elseif is_1 <= 14 then
            if is_1 <= 13 then
                local it_10 = {
                    "wryopucfb",
                    "rnh",
                    "keby",
                    "lab",
                    "mecica",
                    "lqcnfyjqdz",
                    "tacyydla",
                    "xfzefxhehw",
                    "wzvym",
                    "cbwjqexst",
                    "ffrgdotlk",
                    "vkayrlnu",
                    "girlh",
                    "ekogv",
                    "cxraovew"
                }
                if it_10[(ig * 62 + 4) % 15 + 1] < it_10[(ig * 62 + 4) % 15 + 1] then
                else
                    hu = "#e8a34d"
                end
                ig = (ig + 66) % 116
            else
                local it_11 = (vector.create((ig * 7 + 3) % 11 + 1, (ig * 3 + 10) % 13 + 1, (ig * 7 + 6) % 17 + 1))
                local iu_7 = (vector.create((ig * 1 + 5) % 11 + 1, (ig * 1 + 7) % 13 + 1, (ig * 4 + 5) % 17 + 1))
                local iv_2 = (vector.create((ig * 4 + 5) % 11 + 1, (ig * 2 + 4) % 13 + 1, (ig * 1 + 3) % 17 + 1))
                if vector.dot(vector.cross(it_11, iu_7), iv_2) == vector.dot(vector.cross(iu_7, iv_2), it_11) then
                    ho = "#8b93a3"
                else
                    h8 = "#8b93a3"
                end
                ig = (ig + 37) % 116
            end
        else
            local lT = bit32.rrotate(bit32.bxor(bit32.lrotate(ig, 4), 35), 28)
            if bit32.bxor(bit32.lrotate(bit32.bxor(lT, 2344791778), 10), 180062767) == bit32.lrotate(lT, 10) then
                Window = h_:CreateWindow({
                    Title = "Ouroboros Hub",
                    Footer = { { Text = hL, Copyable = true }, "|", im },
                    Icon = 12645376577,
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 10
                })
            else
                h_ = Window:CreateWindow({
                    Icon = 12645376577,
                    CornerRadius = 10,
                    ShowCustomCursor = false,
                    Title = "Ouroboros Hub",
                    Footer = { hL, { Text = im, Copyable = true }, "|" },
                    NotifySide = "Right"
                })
            end
            ig = (ig + 95) % 116
        end
    elseif is_1 <= 22 then
        if is_1 <= 19 then
            if is_1 <= 17 then
                if is_1 <= 16 then
                    local it_12 = (vector.create((ig * 2 + 7) % 11 + 1, (ig * 4 + 8) % 13 + 1, (ig * 5 + 4) % 17 + 1))
                    local iu_8 = (vector.create((ig * 3 + 9) % 11 + 1, (ig * 8 + 13) % 13 + 1, (ig * 1 + 2) % 17 + 1))
                    local iv_3 = (vector.create((ig * 6 + 4) % 11 + 1, (ig * 3 + 3) % 13 + 1, (ig * 6 + 3) % 17 + 1))
                    local iw_1 = (vector.create((ig * 5 + 7) % 11 + 1, (ig * 4 + 3) % 13 + 1, (ig * 1 + 14) % 17 + 1))
                    if vector.dot(vector.cross(it_12, iu_8), (vector.cross(iv_3, iw_1))) == vector.dot(it_12, iv_3) * vector.dot(iu_8, iw_1) - vector.dot(it_12, iw_1) * vector.dot(iu_8, iv_3) then
                        ir = {
                            Info = Window:AddTab("Info", "info"),
                            Main = Window:AddTab("Main", "coins"),
                            Progression = Window:AddTab("Progression", "trending-up"),
                            Items = Window:AddTab("Items", "package-open"),
                            Settings = Window:AddTab("Settings", "settings")
                        }
                        h0 = "Unknown"
                        pcall(fn41)
                        local AccountGroup = ir.Info:AddLeftGroupbox("Account", "circle-user")
                        AccountGroup:AddLabel(hV("User", hQ.Name, hG), true)
                        AccountGroup:AddLabel(hV("Status", "Keyless", hG), true)
                        AccountGroup:AddLabel(hV("Executor", h0, hG), true)
                        GameInfoGroup = ir.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                        GameInfoGroup:AddLabel(h8(im .. " [" .. tostring(game.PlaceId) .. "]", hA), true)
                        GameInfoGroup:AddLabel(hV("Place ID", tostring(game.PlaceId), hA), true)
                        Label = GameInfoGroup:AddLabel(hV("Session time", "0s", hu), true)
                    else
                        local ih_2 = {
                            Settings = hA:AddTab("Settings", "settings"),
                            Items = hA:AddTab("Items", "package-open"),
                            Info = hA:AddTab("Info", "info"),
                            Progression = hA:AddTab("Progression", "trending-up"),
                            Main = hA:AddTab("Main", "coins")
                        }
                        ir = "Unknown"
                        pcall(fn41)
                        hQ = ih_2.Info:AddLeftGroupbox("Account", "circle-user")
                        hQ:AddLabel(Label("User", nil, Window), true)
                        hQ:AddLabel(Label("Status", "Keyless", Window), true)
                        hQ:AddLabel(Label("Executor", "Unknown", Window), true)
                        hV = ih_2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                        hV:AddLabel(GameInfoGroup(h0 .. " [" .. tostring(game.PlaceId) .. "]", hu), true)
                        hV:AddLabel(Label("Place ID", tostring(game.PlaceId), hu), true)
                        h8 = hV:AddLabel(Label("Session time", "0s", hG), true)
                    end
                    ig = (ig + 95) % 116
                else
                    local it_13 = {
                        "bsogoei",
                        "dgjiq",
                        "uajphxwx",
                        "cmmfbqwjksx",
                        "onmxvjige",
                        "piyljwie",
                        "dqqfueczaqb",
                        "dbdptjicx",
                        "lznwozpfuon",
                        "yujvetyejon",
                        "pgeqpscf",
                        "ngydyjluz"
                    }
                    local ms = ig
                    local iu_9 = it_13[ms % 12 + 1]
                    if iu_9:len() >= iu_9:reverse():rep(ms % 3 + 2):len() then
                        hC = tostring(game.JobId)
                    else
                        hx = tostring(game.JobId)
                    end
                    ig = (ig + 37) % 116
                end
            elseif is_1 <= 18 then
                local mr = bit32.rrotate(bit32.bxor(bit32.lrotate(ig, 7), string.byte(tostring(hQ))), 27)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(mr, 1960908089), 1347634153), (bit32.bxor(bit32.band(mr, 2334059206), 2167426685))), 1347634153), 2167426685) == mr then
                    ik_1 = #hx > 18
                else
                    hx = #ik_1 > 18
                end
                ig = (ig + 95) % 116
            else
                if (ig * 2 + 3) * 10 % 3 == ((ig * 2 + 3) * 10 + 3) % 3 then
                    ic_1 = game:GetService("Players")
                else
                    hA = game:GetService("Players")
                end
                ig = (ig + 95) % 116
            end
        elseif is_1 <= 21 then
            if is_1 <= 20 then
                if ig * 58695751 + 2 + 3 <= ig * 58695751 + 2 + 3 + 2 then
                    h6 = game:GetService("ReplicatedStorage")
                else
                    h9 = game:GetService("ReplicatedStorage")
                end
                ig = (ig + 95) % 116
            else
                local it_14 = (vector.create((ig * 5 + 4) % 11 + 1, (ig * 7 + 3) % 13 + 1, (ig * 12 + 5) % 17 + 1))
                local iu_10 = (vector.create((ig * 2 + 2) % 11 + 1, (ig * 7 + 8) % 13 + 1, (ig * 3 + 3) % 17 + 1))
                local iv_4 = (vector.create((ig * 4 + 9) % 11 + 1, (ig * 4 + 7) % 13 + 1, (ig * 13 + 9) % 17 + 1))
                if vector.dot(vector.cross(it_14, iu_10), iv_4) == vector.dot(vector.cross(iu_10, iv_4), it_14) then
                    h1 = game:GetService("MarketplaceService")
                    hX = game:GetService("VirtualUser")
                    ip = game:GetService("UserInputService")
                else
                    ip = game:GetService("MarketplaceService")
                    h1 = game:GetService("VirtualUser")
                    hX = game:GetService("UserInputService")
                end
                ig = (ig + 37) % 116
            end
        else
            local it_15 = (vector.create((ig * 6 + 8) % 11 + 1, (ig * 7 + 4) % 13 + 1, (ig * 6 + 9) % 17 + 1))
            local iu_11 = (vector.create((ig * 3 + 6) % 11 + 1, (ig * 3 + 1) % 13 + 1, (ig * 13 + 3) % 17 + 1))
            local iv_5 = (vector.create((ig * 3 + 2) % 11 + 1, (ig * 8 + 8) % 13 + 1, (ig * 15 + 13) % 17 + 1))
            if vector.dot(vector.cross(it_15, iu_11), iv_5) == vector.dot(vector.cross(iu_11, iv_5), it_15) + 3 then
                ic_1 = hQ.LocalPlayer
            else
                hQ = ic_1.LocalPlayer
            end
            ig = (ig + 66) % 116
        end
    elseif is_1 <= 26 then
        if is_1 <= 24 then
            if is_1 <= 23 then
                if ig * 123948461 + 1 + 5 <= ig * 123948461 + 1 + 5 + 2 then
                    im = "Coin Flip"
                else
                    hl = "Coin Flip"
                end
                ig = (ig + 66) % 116
            else
                local it_16 = (vector.create((ig * 2 + 5) % 11 + 1, (ig * 9 + 6) % 13 + 1, (ig * 1 + 8) % 17 + 1))
                local iu_12 = (vector.create((ig * 4 + 1) % 11 + 1, (ig * 6 + 9) % 13 + 1, (ig * 6 + 8) % 17 + 1))
                local me = vector.cross(it_16, iu_12)
                local mf = vector.dot(it_16, iu_12)
                if vector.dot(me, me) + mf * mf == vector.dot(it_16, it_16) * vector.dot(iu_12, iu_12) then
                    hL = "https://discord.gg/ehKVq7pf7v"
                else
                    h_ = "https://discord.gg/ehKVq7pf7v"
                end
                ig = (ig + 66) % 116
            end
        elseif is_1 <= 25 then
            local it_17 = (vector.create((ig * 4 + 9) % 11 + 1, (ig * 7 + 4) % 13 + 1, (ig * 8 + 15) % 17 + 1))
            local iu_13 = (vector.create((ig * 2 + 9) % 11 + 1, (ig * 5 + 2) % 13 + 1, (ig * 3 + 17) % 17 + 1))
            local iv_6 = (vector.create((ig * 1 + 1) % 5 + 1, (ig * 2 + 3) % 7 + 1, (ig * 5 + 4) % 9 + 1))
            if math.abs((vector.angle(it_17, iu_13, iv_6))) - math.abs((vector.angle(iu_13, it_17, iv_6))) == 3 then
                hC = "https://rscripts.net/@Ouroboros"
            else
                hI = "https://rscripts.net/@Ouroboros"
            end
            ig = (ig + 66) % 116
        else
            local it_18 = { "ixybutxdzry", "cjo", "oogubqh", "tsmgbin", "tfvhf", "jvjddt", "hzaf", "insidhvawg", "hcdvos" }
            local mj = ig
            local iu_14 = it_18[mj % 9 + 1]
            if iu_14:len() >= iu_14:reverse():rep(mj % 3 + 2):len() then
                h6 = ie_1:WaitForChild("RemoteEvents")
            else
                ie_1 = h6:WaitForChild("RemoteEvents")
            end
            ig = (ig + 95) % 116
        end
    elseif is_1 <= 28 then
        if is_1 <= 27 then
            local is_2 = {
                "ouose",
                "mdmrl",
                "sqkz",
                "rxedlmawpf",
                "zokmsayil",
                "pziwkajiwzj",
                "wip",
                "jiqfiwjp",
                "thivugce",
                "lytoogzthd",
                "ioeobhxvp",
                "mjotrkfcdur",
                "oxpl",
                "sprtn"
            }
            if is_2[(ig * 80 + 39) % 14 + 1] <= is_2[(ig * 80 + 39) % 14 + 1] then
                hy = ie_1:WaitForChild("GetPlayerStats")
                hr = ie_1:WaitForChild("CoinFlipResult")
                hl = ie_1:WaitForChild("PurchaseUpgrade")
                h9 = ie_1:WaitForChild("RebirthRequested")
            else
                h9 = hl:WaitForChild("GetPlayerStats")
                ie_1 = hl:WaitForChild("CoinFlipResult")
                hy = hl:WaitForChild("PurchaseUpgrade")
                hr = hl:WaitForChild("RebirthRequested")
            end
            ig = (ig + 8) % 116
        else
            local is_3 = { "lfhvper", "jusc", "skm", "ncb", "fdwvoxa", "ixya", "xslavmbp", "krd", "gwxtnyqlfkiq" }
            if is_3[(ig * 24 + 56) % 9 + 1] <= is_3[(ig * 24 + 56) % 9 + 1] then
                h5 = ie_1:WaitForChild("AscendRequested")
                GetInventory = ie_1:WaitForChild("GetInventory")
            else
                ie_1 = GetInventory:WaitForChild("AscendRequested")
                h5 = GetInventory:WaitForChild("GetInventory")
            end
            ig = (ig + 95) % 116
        end
    else
        if (ig * 3 + 6) * 13 % 4 == ((ig * 3 + 6) * 13 + 5) % 4 then
            hO = UnequipItem:WaitForChild("EquipItem")
            hW = UnequipItem:WaitForChild("UnequipItem")
            ie_1 = UnequipItem:WaitForChild("GetStash")
        else
            hW = ie_1:WaitForChild("EquipItem")
            UnequipItem = ie_1:WaitForChild("UnequipItem")
            hO = ie_1:WaitForChild("GetStash")
        end
        ig = (ig + 95) % 116
    end
until (ig * 71 + 41) % 116 == 70
if ik_1 then
    local ic_2 = 1
    repeat
        local ie_2 = {
            "bclmaqkhcy",
            "reoskqhn",
            "fdduh",
            "mrtqftww",
            "qljjq",
            "ymbd",
            "nnjylmh",
            "eiemaka",
            "uydcpds",
            "zlrcqikh",
            "iipmtnhws"
        }
        local mh = ic_2
        ig = ie_2[mh % 11 + 1]
        if ig:len() >= ig:gsub("(.)", "%1%1", mh % 3 % 2 + 1):len() then
            hx = string.sub(ik_1, 1, 18) .. "..."
        else
            ik_1 = string.sub(hx, 1, 18) .. "..."
        end
        ic_2 = (ic_2 + 5) % 8
    until (ic_2 * 1 + 0) % 8 == 6
end
local ic_3 = ik_1 or hx
hR, hm, Label2, Label3, Label4, Label5, hz, iA_1, ih_3, hs, hn, connection, connection2, ia, h4, ht, hT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ig = ic_3
GameInfoGroup:AddLabel(hV("Server", ig, ho), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
hR = os.clock()
task.spawn(worker)
local ScriptsGroup = ir.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(h8("Included in this hub", ho), true)
ScriptsGroup:AddLabel(h8(im, hA), true)
local FeaturesGroup = ir.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(h8("Auto Flip", hA), true)
FeaturesGroup:AddLabel(h8("Auto Buy Upgrades", hA), true)
FeaturesGroup:AddLabel(h8("Auto Rebirth", hu), true)
FeaturesGroup:AddLabel(h8("Auto Ascend", hu), true)
FeaturesGroup:AddLabel(h8("Auto Equip Best Items", hu), true)
FeaturesGroup:AddLabel(h8("Auto Use Potions", hG), true)
FeaturesGroup:AddLabel(h8("Auto Open Chests", hG), true)
FeaturesGroup:AddLabel(h8("Auto Claim Achievements", ho), true)
local SocialsGroup = ir.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = hC })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = ir.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = hC })
local FaqGroup = ir.Info:AddRightGroupbox("FAQ", "circle-help")
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
fn152(ir.Main)
fn152(ir.Progression)
fn152(ir.Items)
fn152(ir.Settings)
hm = nil
if ((not SocialsGroup and SocialsGroup or (hs or not SocialsGroup)) and (ih_3 and hT or not hT and not iA_1) and (not h4 or SocialsGroup or not hs and hs or (not hs and h4 or not ih_3 and SocialsGroup)) or (not SocialsGroup or not ih_3 or (not h4 or not h4)) and (not hs and not hs and (hT and hs)) and ((hT or not SocialsGroup or (h4 or not h4)) and ((hT or not SocialsGroup) and (hT and not hT)))) and not ((not SocialsGroup and SocialsGroup or (hs or not SocialsGroup)) and (ih_3 and hT or not hT and not iA_1) and (not h4 or SocialsGroup or not hs and hs or (not hs and h4 or not ih_3 and SocialsGroup)) or (not SocialsGroup or not ih_3 or (not h4 or not h4)) and (not hs and not hs and (hT and hs)) and ((hT or not SocialsGroup or (h4 or not h4)) and ((hT or not SocialsGroup) and (hT and not hT)))) then
    h4 = fn650
else
    ia = fn650
end
local FlipGroup = ir.Main:AddLeftGroupbox("Flip", "circle-dollar-sign")
FlipGroup:AddToggle("AutoFlip", { Text = "Auto Flip", Default = false })
FlipGroup:AddSlider("FlipDelay", { Text = "Extra Delay", Default = 0, Min = 0, Max = 2, Rounding = 2, Suffix = "s" })
local StatsGroup = ir.Main:AddRightGroupbox("Stats", "chart-line")
Label2 = StatsGroup:AddLabel(hV("Balance", "0", hG), true)
Label3 = StatsGroup:AddLabel(hV("Total flips", "0", hA), true)
Label4 = StatsGroup:AddLabel(hV("Rebirths", "0", hu), true)
Label5 = StatsGroup:AddLabel(hV("Level", "0", ho), true)
local CodesGroup = ir.Main:AddRightGroupbox("Codes", "ticket")
h4 = fn215
hz = false
CodesGroup:AddButton({
    Text = "Redeem All Codes",
    Func = function()
        if hz then
            return
        end
        hz = true
        task.spawn(function()
            local jj_1
            local ji_1
            local jg = h4()
            if #jg == 0 then
                h_:Notify("No codes found")
                hz = false
                return
            end
            local jh = 0
            for i, v in ipairs(jg) do
                local jr = v
                ji_1, jj_1 = pcall(function()
                    return RedeemCode:InvokeServer(jr)
                end)
                local jk = ji_1 and type(jj_1) == "table" and jj_1.success
                if jk then
                    jh = jh + 1
                end
                task.wait(0.5)
            end
            h_:Notify(string.format("Redeemed %d of %d codes", jh, #jg))
            hz = false
        end)
    end
})
local UpgradesGroup = ir.Progression:AddLeftGroupbox("Upgrades", "arrow-big-up-dash")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeList", { Values = hj, Multi = true, Searchable = true, Text = "Upgrades" })
UpgradesGroup:AddToggle("BuyMax", { Text = "Buy Max", Default = false })
local RebirthGroup = ir.Progression:AddRightGroupbox("Rebirth", "rotate-ccw")
do
    RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    RebirthGroup:AddToggle("AutoAscend", { Text = "Auto Ascend", Default = false })
    RebirthGroup:AddSlider("AscendAtRebirths", { Text = "Ascend At Rebirths", Default = 25, Min = 25, Max = 30, Rounding = 0 })
    RebirthGroup:AddToggle("AutoCycleBonus", { Text = "Auto Choose Rebirth Bonus", Default = false })
    RebirthGroup:AddDropdown("CycleBonus", { Values = hY, Default = hY[1], Searchable = true, Text = "Cycle Bonus" })
    local AchievementsGroup = ir.Progression:AddRightGroupbox("Achievements", "trophy")
    AchievementsGroup:AddToggle("AutoClaimAchievements", { Text = "Auto Claim Achievements", Default = false })
    local EquipmentGroup = ir.Items:AddLeftGroupbox("Equipment", "shirt")
    EquipmentGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Items", Default = false })
    local PotionsGroup = ir.Items:AddRightGroupbox("Potions", "flask-round")
    PotionsGroup:AddToggle("AutoUsePotions", { Text = "Auto Use Potions", Default = false })
    PotionsGroup:AddDropdown("PotionList", { Values = h2, Multi = true, Searchable = true, Text = "Potions" })
    local ChestsGroup = ir.Items:AddRightGroupbox("Chests", "box")
    ChestsGroup:AddToggle("AutoOpenChests", { Text = "Auto Open Chests", Default = false })
    ChestsGroup:AddDropdown("ChestList", { Values = h7, Multi = true, Searchable = true, Text = "Chests" })
    task.spawn(autoFlipLoop)
    task.spawn(worker2)
    task.spawn(function()
        local jN = false
        repeat
            if not h_.Unloaded then
                task.wait(1)
                if hN.AutoBuyUpgrades.Value then
                    local jE = hm
                    if jE and jE.upgrades and jE.upgradeCosts then
                        local jF_1 = tonumber(jE.balanceCents) or 0
                        local jG = jF_1
                        local jD = hN.BuyMax.Value and "max" or 1
                        for i, v in ipairs(hj) do
                            local jT = v
                            if Options.UpgradeList.Value[jT] then
                                local jF_3 = tonumber(jE.upgradeCosts[jT])
                                local jH_1 = jE.upgradeMaxLevels and tonumber(jE.upgradeMaxLevels[jT])
                                local jH_2 = tonumber(jE.upgrades[jT]) or 0
                                local jJ = jH_1
                                if jJ then
                                    jJ = jH_2 >= jH_1
                                end
                                local jH_3 = jF_3
                                local jI_1 = jJ
                                if jH_3 then
                                    jH_3 = jF_3 >= 0
                                end
                                if jH_3 then
                                    jH_3 = jF_3 <= jG
                                end
                                if jH_3 and not jI_1 then
                                    pcall(function()
                                        hl:InvokeServer(jT, jD)
                                    end)
                                    ia()
                                    jE = hm
                                    local jF_5 = jE and tonumber(jE.balanceCents)
                                    jG = jF_5 or 0
                                end
                            end
                        end
                    end
                end
            else
                jN = true
            end
        until jN
    end)
    task.spawn(autoRebirthLoop)
    task.spawn(autoAscendLoop)
    task.spawn(function()
        local j7 = false
        repeat
            if not h_.Unloaded then
                task.wait(0.5)
                if hN.AutoCycleBonus.Value then
                    local CycleChoiceGui = hQ.PlayerGui:FindFirstChild("CycleChoiceGui")
                    local j4 = CycleChoiceGui and CycleChoiceGui:FindFirstChild("CycleChoiceDim")
                    if j4 then
                        local j2 = hU[Options.CycleBonus.Value] or hU[hY[1]]
                        if j2 then
                            pcall(function()
                                hv:InvokeServer(j2)
                            end)
                            j4:Destroy()
                        end
                    end
                end
            else
                j7 = true
            end
        until j7
    end)
    ht = fn140
end
task.spawn(function()
    local kl_1
    local kk_1
    while not h_.Unloaded do
        task.wait(5)
        if hN.AutoEquipBest.Value then
            local kj = hm
            kk_1, kl_1 = pcall(function()
                return GetInventory:InvokeServer()
            end)
            local km = kk_1 and type(kl_1) == "table"
            if km and kj then
                local kk_3 = tonumber(kj.extraBackpackSlots) or 0
                local kj_1 = 1 + kk_3
                local kk_4 = {}
                for i, v in ipairs(kl_1) do
                    local kn_1 = v.equipped and 1
                    if not kn_1 then
                        local max = math.max
                        local ko = tonumber(v.count) or 1
                        kn_1 = max(1, ko)
                    end
                    local km_3 = kn_1
                    local kz = 1
                    while kz <= km_3 do
                        kk_4[#kk_4 + 1] = v
                        kz += 1
                    end
                end
                table.sort(kk_4, function(dd, de)
                    local kf = ib[dd.rarity] or 99
                    local kf_1 = ib[de.rarity] or 99
                    if kf ~= kf_1 then
                        return kf < kf_1
                    end
                    local kf_2 = ht(dd)
                    local kg_1 = ht(de)
                    if kf_2 ~= kg_1 then
                        return kg_1 < kf_2
                    end
                    return (dd.name or dd.id) < (de.name or de.id)
                end)
                local km_4 = {}
                local kn_2 = math.min(kj_1, #kk_4)
                local kE = 1
                while kE <= kn_2 do
                    local key = kk_4[kE].key
                    local kn_3 = km_4[key] or 0
                    km_4[key] = kn_3 + 1
                    kE += 1
                end
                for i, v in ipairs(kl_1) do
                    local kM = v
                    if kM.equipped and not km_4[kM.key] then
                        pcall(function()
                            UnequipItem:InvokeServer(kM.key)
                        end)
                    end
                end
                for i, v in ipairs(kl_1) do
                    local kQ = v
                    local kj_4 = km_4[kQ.key]
                    if kj_4 and not kQ.equipped then
                        local kT = 1
                        while kT <= kj_4 do
                            pcall(function()
                                hW:InvokeServer(kQ.key)
                            end)
                            kT += 1
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    local kY_1
    local kX_1
    while not h_.Unloaded do
        task.wait(0.5)
        if hN.AutoUsePotions.Value then
            kX_1, kY_1 = pcall(function()
                return hO:InvokeServer()
            end)
            local kZ = kX_1 and type(kY_1) == "table"
            if kZ then
                for i, v in ipairs(h2) do
                    local k5 = v
                    local kX_2 = kY_1[k5]
                    local kZ_1 = Options.PotionList.Value[k5] and type(kX_2) == "table"
                    if kZ_1 then
                        local kZ_2 = tonumber(kX_2.count) or 0
                        local kW = kZ_2
                        if kW > 0 then
                            pcall(function()
                                hM:InvokeServer(k5, kW)
                            end)
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    local k7_1
    local k6_1
    while not h_.Unloaded do
        task.wait(5)
        if hN.AutoOpenChests.Value then
            k6_1, k7_1 = pcall(function()
                return GetChestInventory:InvokeServer()
            end)
            local k8 = k6_1 and type(k7_1) == "table"
            if k8 then
                for i, v in ipairs(h7) do
                    local lf = v
                    local k6_2 = Options.ChestList.Value[lf]
                    if k6_2 then
                        local k8_1 = tonumber(k7_1[lf]) or 0
                        k6_2 = k8_1 > 0
                    end
                    if k6_2 then
                        pcall(function()
                            hH:InvokeServer(lf)
                        end)
                        task.wait(0.5)
                    end
                end
            end
        end
    end
end)
task.spawn(autoClaimAchievementsLoop)
local MenuGroup = ir.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
h_.ToggleKeybind = Options.MenuKeybind
hs = tick()
hn = tick()
pcall(function()
    for i, v in ipairs(getconnections(hQ.Idled)) do
        local ln = v
        pcall(function()
            ln:Disable()
        end)
    end
end)
hT = fn44
connection = ip.InputBegan:Connect(onInputBegan)
connection2 = ip.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
h_:OnUnload(fn644)
iq:SetLibrary(h_)
iq:SetFolder("OuroborosHub")
iq:SaveDefault("Monochrome")
iq:ApplyToTab(ir.Settings)
iq:LoadDefault()
io:SetLibrary(h_)
io:IgnoreThemeSettings()
io:SetIgnoreIndexes({ "MenuKeybind" })
io:SetFolder("OuroborosHub/coin-flip")
io:BuildConfigSection(ir.Settings)
io:LoadAutoloadConfig()
ia()
