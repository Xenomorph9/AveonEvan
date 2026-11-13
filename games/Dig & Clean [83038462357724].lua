local GL_2, GL_5, GL_8, GL_9, GL_12, GL_14, GL_15, GL_18
local GL_10_1, GL_10_3
local Label
local vs
local vO
local vv
local uR
local uU
local vB
local vE
local u_
local vH
local u2
local vo
local u5
local vr
local uN
local Library
local uQ
local Toggles
local TravelFunctions
local Islands2
local vD
local uD
local uZ
local v1
local vG
local vZ
local vJ
local vk
local vn
local vt
local vw
local vS
local uY
local vj
local Items
local vI
local v3
local uI
local uF
local function fn3(aY)
    local xl = uU()
    local xm = not xl or not xl:IsA("BasePart")
    if xm then
        return false
    end
    xl.CFrame = CFrame.new(aY)
    return true
end
local function fn73(cz, cA)
    local yU
    for i, v in ipairs(cz) do
        if table.find(cA, v) then
            yU = v
        end
    end
    return yU
end
local function fn76(by)
    local xY_1, xY_2
    local xX_1, xX_2
    if by.dirty == true then
        xX_1, xY_1 = pcall(Items.dirtyItemValueFor, by.id, by.kg)
        local xZ_1 = xX_1 and type(xY_1) == "number"
        if xZ_1 then
            return xY_1
        end
        return 0
    end
    xX_2, xY_2 = pcall(Items.itemValueFor, by.id, by.condition, by.kg)
    local xZ_2 = xX_2 and type(xY_2) == "number"
    if xZ_2 then
        return xY_2
    end
    return 0
end
local function fn97(bT)
    local attr = bT:GetAttribute("itemId")
    local yi = attr and Items.Items[attr]
    if not yi then
        return 0
    end
    return vO[yi.rarity] or 0
end
local function fn127(cL)
    if setclipboard then
        setclipboard(cL)
    elseif toclipboard then
        toclipboard(cL)
    end
end
local function fn193(bl)
    local Islands = vE:FindFirstChild("Islands")
    if not Islands then
        return nil
    end
    for i, child in ipairs(Islands:GetChildren()) do
        if child:GetAttribute(Islands2.ISLAND_ID_ATTRIBUTE) == bl then
            return child
        end
    end
    return nil
end
local function fn201()
    pcall(function()
        for i, v in ipairs(TravelFunctions.getIslands:invoke():expect()) do
            vj[v.id] = v
            if type(v.name) == "string" then
                vo[v.name] = v
            end
        end
    end)
end
local function fn226()
    u5(vv)
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn246(av)
    vt[av] = nil
end
local function fn289()
    return vB.Character
end
local function fn407()
    local xi = uY()
    local xj = xi and xi:FindFirstChildOfClass("Humanoid")
    return xj
end
local function fn420()
    local xa_1
    local w9_1
    local w8 = vD(vH)
    if not w8 then
        return nil
    end
    w9_1, xa_1 = pcall(w8.getDataIfLoaded, w8)
    if w9_1 then
        return xa_1
    end
    return nil
end
local function fn465(cn, co, cp, cq, cr)
    local yK
    for i, v in ipairs(cn) do
        local yL = co[v]
        if yL and yL.cost > 0 and yL.cost <= cr then
            local yM_1 = table.find(cq, yL.islandId) and not table.find(cp, v)
            if yM_1 then
                yK = v
            end
        end
    end
    return yK
end
local function fn649(aD)
    local w6_1
    local w5_1
    w5_1, w6_1 = pcall(vn.resolveDependency, aD)
    if w5_1 then
        return w6_1
    end
    return nil
end
local function fn662(cR, cS)
    return string.format('<font color="%s">%s</font>', cS, cR)
end
local function fn703(b_)
    local yk = Options
    local yl = 1
    if yk then
        yk = Options.CleanRarityPriority
    end
    if yk then
        local yk_1 = vO[Options.CleanRarityPriority.Value]
        local yp = if yk_1 then 1 else 0
        local yn = 4042 * yp + 3043 * (1 - yp)
        local yo = 2321 * yp + 1353 * (1 - yp)
        if not ((yn * 3748 + yo * 772 + yn * yo) % 16777213 == 9545497) then
            yk_1 = 1
        end
        yl = yk_1
    end
    return vs(b_) >= yl
end
local function fn730(bH)
    local x3 = uY()
    if x3 then
        for i, child in ipairs(x3:GetChildren()) do
            local x3_1 = child:IsA("Tool") and child:GetAttribute("inventoryId") == bH
            if x3_1 then
                return child, true
            end
        end
    end
    local Backpack = vB:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local x3_3 = child:IsA("Tool") and child:GetAttribute("inventoryId") == bH
            if x3_3 then
                return child, false
            end
        end
    end
    return nil, false
end
local function fn817()
    local y3_1
    local y2_1
    if identifyexecutor then
        y3_1, y2_1 = identifyexecutor()
        local y4 = y3_1 ~= ""
        local y5 = type(y3_1) == "string" and y4
        if y5 then
            local y4_1 = type(y2_1) == "string" and y2_1 ~= "" and y3_1 .. " " .. y2_1
            u2 = y4_1 or y3_1
        end
    end
end
local function fn868(c4)
    local DiscordGroup = c4:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = u_ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = u_ })
end
local function fn890()
    local Plots = vE:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local xo_1 = child:GetAttribute("OwnerUserId") == tostring(vB.UserId) or child:GetAttribute("OwnerUserId") == vB.UserId
        if xo_1 then
            return child
        end
    end
    return nil
end
local function fn911(bs, bt)
    local xU = v1(bs)
    if not xU then
        return nil
    end
    local NPCs = xU:FindFirstChild("NPCs")
    if not NPCs then
        return nil
    end
    return NPCs:FindFirstChild(bt)
end
local function fn924(cU, cV, cW)
    return string.format("<b>%s</b> %s %s", cU, uR("-", "#5a6070"), uR(cV, cW))
end
local function fn944()
    local xf = uY()
    local xg = xf and xf:FindFirstChild("HumanoidRootPart")
    return xg
end
local function fn1001()
    local ys_1
    local yr_1
    local yq = uY()
    if yq then
        for i, child in ipairs(yq:GetChildren()) do
            local yq_1 = child:IsA("Tool") and vS:HasTag(child, "Dirt") and uZ(child)
            if yq_1 then
                return child, true
            end
        end
    end
    local Backpack = vB:FindFirstChildOfClass("Backpack")
    if not Backpack then
        return nil, false
    end
    ys_1, yr_1 = nil, nil
    for i, child in ipairs(Backpack:GetChildren()) do
        local yq_3 = child:IsA("Tool") and vS:HasTag(child, "Dirt") and uZ(child)
        if yq_3 then
            local yq_4 = vs(child)
            if not ys_1 or yq_4 > yr_1 then
                ys_1 = child
                yr_1 = yq_4
            end
        end
    end
    if ys_1 then
        return ys_1, false
    end
    return nil, false
end
local function fn1105(a9)
    local xw = {}
    if not a9 then
        return xw
    end
    for i, descendant in ipairs(a9:GetDescendants()) do
        if descendant.Name == "Pedestals" then
            local Parent = descendant.Parent
            local xy = Parent and Parent:GetAttribute(uI.SECTION_ID_ATTRIBUTE) ~= nil
            if xy then
                if not (Parent:GetAttribute(uI.SECTION_UNLOCKED_ATTRIBUTE) ~= true) then
                    for i, child in ipairs(descendant:GetChildren()) do
                        local attr = child:GetAttribute("Slot")
                        local xy_1 = type(attr) == "number" and child:GetAttribute("Owned") == true
                        if xy_1 then
                            xw[#xw + 1] = child
                        end
                    end
                end
            else
                for i, child in ipairs(descendant:GetChildren()) do
                    local attr = child:GetAttribute("Slot")
                    local xy_2 = type(attr) == "number" and child:GetAttribute("Owned") == true
                    if xy_2 then
                        xw[#xw + 1] = child
                    end
                end
            end
        end
    end
    return xw
end
local function fn1152()
    local wX_1
    local wW_1
    wW_1, wX_1 = pcall(function()
        return vw.GetSurfacedItems:invoke():expect()
    end)
    local wY = not wW_1 or type(wX_1) ~= "table"
    if wY then
        return
    end
    table.clear(vt)
    for i, v in ipairs(wX_1) do
        vt[v.id] = v
    end
end
local function fn1237(as)
    vt[as.id] = as
end
uD = nil
uF = nil
uI = nil
Label = nil
uN = nil
uQ = nil
uR = nil
Islands2 = nil
uU = nil
uY = nil
uZ = nil
u_ = nil
Items = nil
u2 = nil
u5 = nil
Toggles = nil
vj = nil
vk = nil
local uz, uA, Label3, connection4, uE, Label2, uH, uJ, connection3, uM, uO, DigZoneSpawn, Label13, Label12, uW, Label11, u1, u3, u4, u6, u7, u8, u9, va, Label10, Detectors, ve, connection2, Options, Label9, vi, vl
vn = nil
vo = nil
vr = nil
vs = nil
vt = nil
Library = nil
vv = nil
vw = nil
vB = nil
vD = nil
vE = nil
vG = nil
vH = nil
vI = nil
vJ = nil
vO = nil
vS = nil
TravelFunctions = nil
vZ = nil
v1 = nil
v3 = nil
local Label8, vp, Label7, vx, connection, Window, vA, vC, ItemsEvents, vK, vL, vM, Label6, vP, vQ, Label5, vU, vV, vW, vX, PedestalFunctions, v_, v0, SellFunctions, Label4
Label8 = nil
vp = nil
Label7 = nil
vx = nil
connection = nil
Window = nil
vA = nil
vC = nil
ItemsEvents = nil
vK = nil
vL = nil
vM = nil
Label6 = nil
vP = nil
vQ = nil
Label5 = nil
vU = nil
vV = nil
vW = nil
vX = nil
PedestalFunctions = nil
v_ = nil
v0 = nil
SellFunctions = nil
Label4 = nil
local Conditions, UserInputService, wh, wi, wj, wk, wl
GL_10_1, GL_14, vX, vS, UserInputService, vJ, vE, vB, GL_9, vv, vr, vn, vi, Detectors, u9, u3, Items, Conditions, uW, Islands2, DigZoneSpawn, uM, uI, GL_18, uz, SellFunctions, PedestalFunctions, TravelFunctions, vK, ItemsEvents, GL_2, GL_5, vw, GL_15, vo, vj, ve, va, u4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local GL_6 = 55
repeat
    wh = (GL_6 * 23 + 5) % 26 + 1
    if wh <= 13 then
        if wh <= 7 then
            if wh <= 4 then
                if wh <= 2 then
                    if wh <= 1 then
                        if (GL_6 * 3 + 3) * 5 % 4 == ((GL_6 * 3 + 3) * 5 + 3) % 4 then
                            vE = game:GetService("VirtualUser")
                            vJ = game:GetService("Workspace")
                        else
                            vJ = game:GetService("VirtualUser")
                            vE = game:GetService("Workspace")
                        end
                        GL_6 = (GL_6 + 43) % 104
                    else
                        if GL_6 * 84806767 + 11 + 2 >= GL_6 * 84806767 + 11 + 2 + 5 then
                            GL_10_1 = vB.LocalPlayer
                        else
                            vB = GL_10_1.LocalPlayer
                        end
                        GL_6 = (GL_6 + 17) % 104
                    end
                elseif wh <= 3 then
                    wi = {
                        "wsengbem",
                        "yaesov",
                        "qorgcpntl",
                        "afzqjqu",
                        "jsyq",
                        "blrpmlazv",
                        "cjy",
                        "foln",
                        "zmqqhevuh",
                        "bvincttj",
                        "xambvbire",
                        "wgl"
                    }
                    local G5 = GL_6
                    wj = wi[G5 % 12 + 1]
                    if wj:len() <= wj:gsub("(.)", "%1%1", G5 % 3 % 2 + 1):len() then
                        GL_9 = "Dig & Clean"
                    else
                        vo = "Dig & Clean"
                    end
                    GL_6 = (GL_6 + 95) % 104
                else
                    wi = (vector.create((GL_6 * 6 + 5) % 11 + 1, (GL_6 * 2 + 5) % 13 + 1, (GL_6 * 13 + 13) % 17 + 1))
                    wj = (vector.create((GL_6 * 6 + 8) % 11 + 1, (GL_6 * 3 + 2) % 13 + 1, (GL_6 * 12 + 2) % 17 + 1))
                    wk = (vector.create((GL_6 * 1 + 7) % 5 + 1, (GL_6 * 2 + 6) % 7 + 1, (GL_6 * 2 + 7) % 9 + 1))
                    if math.abs((vector.angle(wi, wj, wk))) - math.abs((vector.angle(wj, wi, wk))) == 0 then
                        vv = "https://discord.gg/ehKVq7pf7v"
                    else
                        uM = "https://discord.gg/ehKVq7pf7v"
                    end
                    GL_6 = (GL_6 + 17) % 104
                end
            elseif wh <= 6 then
                if wh <= 5 then
                    local Ha = bit32.rrotate(bit32.bxor(bit32.lrotate(GL_6, 13), string.byte(tostring(uW))), 4)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ha, 1930409631), 1756939636), (bit32.bxor(bit32.band(Ha, 2364557664), 1105748133))), 1756939636), 1105748133) == Ha then
                        vr = "https://rscripts.net/@Ouroboros"
                    else
                        vJ = "https://rscripts.net/@Ouroboros"
                    end
                    GL_6 = (GL_6 + 17) % 104
                else
                    wi = (vector.create((GL_6 * 1 + 6) % 11 + 1, (GL_6 * 4 + 12) % 13 + 1, (GL_6 * 11 + 10) % 17 + 1))
                    local G3 = vector.floor(wi) + vector.ceil(wi * -1)
                    if vector.dot(G3, G3) == 0 then
                        vn = require(GL_14.rbxts_include.node_modules["@flamework"].core.out).Flamework
                        vi = require(GL_14.TS.constants.digging.Shovels)
                        Detectors = require(GL_14.TS.constants.digging.Detectors)
                        u9 = require(GL_14.TS.constants.cleaning.SprayBottles)
                        u3 = require(GL_14.TS.constants.digging.DiggingConfig)
                    else
                        u3 = require(Detectors.rbxts_include.node_modules["@flamework"].core.out).Flamework
                        u9 = require(Detectors.TS.constants.digging.Shovels)
                        vi = require(Detectors.TS.constants.digging.Detectors)
                        vn = require(Detectors.TS.constants.cleaning.SprayBottles)
                        GL_14 = require(Detectors.TS.constants.digging.DiggingConfig)
                    end
                    GL_6 = (GL_6 + 95) % 104
                end
            else
                if GL_6 * 54695729 + 4 + 2 >= GL_6 * 54695729 + 4 + 2 + 1 then
                    GL_14 = require(Items.TS.constants.items.Items)
                else
                    Items = require(GL_14.TS.constants.items.Items)
                end
                GL_6 = (GL_6 + 43) % 104
            end
        elseif wh <= 10 then
            if wh <= 9 then
                if wh <= 8 then
                    wi = {
                        "shdqnzecn",
                        "itltwi",
                        "mqjwtqlt",
                        "vjast",
                        "ydo",
                        "djbyexmnss",
                        "zcneafws",
                        "tkfs",
                        "ufoamaghfq",
                        "foqdjigmck",
                        "oefuygvn",
                        "khl"
                    }
                    local G0 = GL_6
                    wj = wi[G0 % 12 + 1]
                    if wj:len() >= wj:gsub("(.)", "%1%1", G0 % 3 % 2 + 1):len() then
                        GL_14 = require(Conditions.TS.constants.items.Conditions)
                    else
                        Conditions = require(GL_14.TS.constants.items.Conditions)
                    end
                    GL_6 = (GL_6 + 95) % 104
                else
                    wi = {
                        "rxwpycmn",
                        "nrgkt",
                        "zouxoyruaw",
                        "wsdf",
                        "hqob",
                        "rahugagsbdl",
                        "rvnf",
                        "cbxyy",
                        "lupw",
                        "vrakf",
                        "nauet"
                    }
                    local G7 = GL_6
                    wj = wi[G7 % 11 + 1]
                    if wj:len() <= wj:reverse():rep(G7 % 3 + 2):len() then
                        GL_12 = require(GL_14.TS.constants.inventory.BackpackCapacity)
                        uW = GL_12.BackpackCapacity
                    else
                        GL_14 = require(uW.TS.constants.inventory.BackpackCapacity)
                    end
                    GL_6 = (GL_6 + 43) % 104
                end
            else
                wi = (vector.create((GL_6 * 1 + 5) % 11 + 1, (GL_6 * 6 + 13) % 13 + 1, (GL_6 * 1 + 13) % 17 + 1))
                wj = (vector.create((GL_6 * 1 + 2) % 11 + 1, (GL_6 * 10 + 13) % 13 + 1, (GL_6 * 9 + 15) % 17 + 1))
                local HQ = vector.dot(wi, wj)
                if HQ * HQ >= vector.dot(wi, wi) * vector.dot(wj, wj) + 1 then
                    GL_14 = require(Islands2.TS.constants.world.Islands)
                else
                    Islands2 = require(GL_14.TS.constants.world.Islands)
                end
                GL_6 = (GL_6 + 17) % 104
            end
        elseif wh <= 12 then
            if wh <= 11 then
                wi = (vector.create((GL_6 * 4 + 6) % 11 + 1, (GL_6 * 11 + 8) % 13 + 1, (GL_6 * 11 + 5) % 17 + 1))
                wj = (vector.create((GL_6 * 1 + 6) % 11 + 1, (GL_6 * 3 + 13) % 13 + 1, (GL_6 * 13 + 13) % 17 + 1))
                wk = (vector.create((GL_6 * 6 + 7) % 11 + 1, (GL_6 * 7 + 11) % 13 + 1, (GL_6 * 3 + 16) % 17 + 1))
                wl = (vector.create((GL_6 * 1 + 2) % 5 + 1, (GL_6 * 1 + 6) % 7 + 1, (GL_6 * 4 + 1) % 9 + 1))
                if vector.dot(vector.cross(wi, (vector.cross(wj, wk))), wl) == vector.dot(wj * vector.dot(wi, wk) - wk * vector.dot(wi, wj), wl) then
                    DigZoneSpawn = require(GL_14.TS.utils.world.DigZoneSpawn)
                    uM = require(GL_14.TS.utils.world.teleportStreamed).teleportStreamed
                    uI = require(GL_14.TS.constants.plot.PlotSections)
                else
                    uI = require(DigZoneSpawn.TS.utils.world.DigZoneSpawn)
                    GL_14 = require(DigZoneSpawn.TS.utils.world.teleportStreamed).teleportStreamed
                    uM = require(DigZoneSpawn.TS.constants.plot.PlotSections)
                end
                GL_6 = (GL_6 + 43) % 104
            else
                wi = (vector.create((GL_6 * 2 + 9) % 11 + 1, (GL_6 * 5 + 12) % 13 + 1, (GL_6 * 7 + 12) % 17 + 1))
                wj = (vector.create((GL_6 * 3 + 6) % 11 + 1, (GL_6 * 4 + 11) % 13 + 1, (GL_6 * 14 + 8) % 17 + 1))
                local HU = vector.dot(wi, wj)
                if HU * HU >= vector.dot(wi, wi) * vector.dot(wj, wj) + 1 then
                    vB = GL_18:WaitForChild("PlayerScripts"):WaitForChild("TS"):WaitForChild("network")
                else
                    GL_18 = vB:WaitForChild("PlayerScripts"):WaitForChild("TS"):WaitForChild("network")
                end
                GL_6 = (GL_6 + 17) % 104
            end
        else
            wi = (vector.create((GL_6 * 2 + 3) % 11 + 1, (GL_6 * 2 + 4) % 13 + 1, (GL_6 * 4 + 10) % 17 + 1))
            local HX = vector.floor(wi) + vector.ceil(wi * -1)
            if vector.dot(HX, HX) == 0 then
                uz = require(GL_18.ShopNetwork).ShopFunctions
                SellFunctions = require(GL_18.SellNetwork).SellFunctions
            else
                GL_18 = require(SellFunctions.ShopNetwork).ShopFunctions
                uz = require(SellFunctions.SellNetwork).SellFunctions
            end
            GL_6 = (GL_6 + 95) % 104
        end
    elseif wh <= 20 then
        if wh <= 17 then
            if wh <= 15 then
                if wh <= 14 then
                    if GL_6 * 118371111 + 12 + 3 <= GL_6 * 118371111 + 12 + 3 + 5 then
                        PedestalFunctions = require(GL_18.PedestalNetwork).PedestalFunctions
                    else
                        GL_18 = require(PedestalFunctions.PedestalNetwork).PedestalFunctions
                    end
                    GL_6 = (GL_6 + 95) % 104
                else
                    if (GL_6 * 2 + 9) * 13 % 3 == ((GL_6 * 2 + 9) * 13 + 4) % 3 then
                        GL_18 = require(TravelFunctions.TravelNetwork).TravelFunctions
                    else
                        TravelFunctions = require(GL_18.TravelNetwork).TravelFunctions
                    end
                    GL_6 = (GL_6 + 17) % 104
                end
            elseif wh <= 16 then
                if (not va and u4 or (vr or va) or (vr and not vr or (u4 or not vr))) and ((vr or not va) and (not vr or u4) or (not u4 or not u4) and (vr or va)) and not ((not va and u4 or (vr or va) or (vr and not vr or (u4 or not vr))) and ((vr or not va) and (not vr or u4) or (not u4 or not u4) and (vr or va))) then
                    GL_18 = require(ItemsEvents.ItemsNetwork)
                    vK = GL_18.ItemsEvents
                else
                    GL_8 = require(GL_18.ItemsNetwork)
                    vK = GL_8.ItemsFunctions
                    ItemsEvents = GL_8.ItemsEvents
                end
                GL_6 = (GL_6 + 69) % 104
            else
                wi = {
                    "eyiyqmgweqg",
                    "yqss",
                    "stspctw",
                    "qxveimh",
                    "tphjehtrktdq",
                    "stticylnwv",
                    "ciuydalatlz",
                    "bdfpkewht"
                }
                if wi[(GL_6 * 1 + 53) % 8 + 1] <= wi[(GL_6 * 1 + 53) % 8 + 1] then
                    GL_2 = require(GL_18.ShovelNetwork)
                    GL_5 = GL_2.ShovelEvents
                    vw = GL_2.ShovelFunctions
                else
                    GL_18 = require(GL_2.ShovelNetwork)
                    vw = GL_18.ShovelEvents
                    GL_5 = GL_18.ShovelFunctions
                end
                GL_6 = (GL_6 + 69) % 104
            end
        elseif wh <= 19 then
            if wh <= 18 then
                wi = {
                    "lzfjculrdw",
                    "temyrpkxe",
                    "nqtjlqcktqu",
                    "svwcdknt",
                    "vlhro",
                    "skssjkwbaau",
                    "grajao",
                    "lzrdcihbco",
                    "nhkrmcnmlbn",
                    "zueztoxgcesg",
                    "lmjzvld"
                }
                if wi[(GL_6 * 57 + 33) % 11 + 1] <= wi[(GL_6 * 57 + 33) % 11 + 1] then
                    GL_15 = {}
                else
                    uW = {}
                end
                GL_6 = (GL_6 + 95) % 104
            else
                local G6 = bit32.rrotate(bit32.bxor(bit32.lrotate(GL_6, 30), string.byte(tostring(PedestalFunctions))), 8)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(G6, 3664677955), 4135952506), (bit32.bxor(bit32.band(G6, 630289340), 3527229290))), 4135952506), 3527229290) ~= G6 then
                    vj = {}
                    ve = {}
                    vo = {}
                else
                    vo = {}
                    vj = {}
                    ve = {}
                end
                GL_6 = (GL_6 + 95) % 104
            end
        else
            if (GL_6 * 2 + 3) * 16 % 3 == ((GL_6 * 2 + 3) * 16 + 3) % 3 then
                va = {}
            end
            GL_6 = (GL_6 + 95) % 104
        end
    elseif wh <= 23 then
        if wh <= 22 then
            if wh <= 21 then
                wi = (vector.create((GL_6 * 7 + 8) % 11 + 1, (GL_6 * 8 + 13) % 13 + 1, (GL_6 * 13 + 6) % 17 + 1))
                wj = (vector.create((GL_6 * 6 + 1) % 11 + 1, (GL_6 * 11 + 4) % 13 + 1, (GL_6 * 15 + 5) % 17 + 1))
                wk = (vector.create((GL_6 * 7 + 2) % 11 + 1, (GL_6 * 6 + 4) % 13 + 1, (GL_6 * 7 + 10) % 17 + 1))
                wl = (vector.create((GL_6 * 5 + 3) % 11 + 1, (GL_6 * 9 + 10) % 13 + 1, (GL_6 * 1 + 15) % 17 + 1))
                if vector.dot(vector.cross(wi, wj), (vector.cross(wk, wl))) == vector.dot(wi, wk) * vector.dot(wj, wl) - vector.dot(wi, wl) * vector.dot(wj, wk) then
                    u4 = fn201
                else
                    vr = fn201
                end
                GL_6 = (GL_6 + 69) % 104
            else
                wi = (vector.create((GL_6 * 1 + 2) % 11 + 1, (GL_6 * 5 + 11) % 13 + 1, (GL_6 * 7 + 2) % 17 + 1))
                wj = (vector.create((GL_6 * 7 + 8) % 11 + 1, (GL_6 * 8 + 7) % 13 + 1, (GL_6 * 3 + 17) % 17 + 1))
                local HO = vector.cross(wi, wj)
                local HP = vector.dot(wi, wj)
                if vector.dot(HO, HO) + HP * HP == vector.dot(wi, wi) * vector.dot(wj, wj) then
                    u4()
                else
                    u4()
                end
                GL_6 = (GL_6 + 95) % 104
            end
        else
            if GL_6 * 60559559 + 10 + 3 >= GL_6 * 60559559 + 10 + 3 + 6 then
                vB = game:GetService("Players")
            else
                GL_10_1 = game:GetService("Players")
            end
            GL_6 = (GL_6 + 17) % 104
        end
    elseif wh <= 25 then
        if wh <= 24 then
            local HT = bit32.rrotate(bit32.bxor(bit32.lrotate(GL_6, 13), string.byte(tostring(u4))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(HT, 1440498945), 22), 1079342865) ~= bit32.lrotate(HT, 22) then
                u4 = game:GetService("ReplicatedStorage")
            else
                GL_14 = game:GetService("ReplicatedStorage")
            end
            GL_6 = (GL_6 + 69) % 104
        else
            wh = {
                "hikxyeetdyef",
                "fozooadhzoxl",
                "kjg",
                "ugvuzmxto",
                "jdemfylf",
                "igimxqgchfws",
                "vsfqyjrptrpe",
                "ljs",
                "afb",
                "lokee"
            }
            if wh[(GL_6 * 87 + 43) % 10 + 1] < wh[(GL_6 * 87 + 43) % 10 + 1] then
                vS = game:GetService("RunService")
                vX = game:GetService("CollectionService")
            else
                vX = game:GetService("RunService")
                vS = game:GetService("CollectionService")
            end
            GL_6 = (GL_6 + 17) % 104
        end
    else
        if (not vi or Items or (Islands2 or not vi) or (not Items or not Conditions) and (Items and not Islands2)) and (not SellFunctions or not vi or (not vi or not Conditions) or (not Conditions or vi or "Dig & Clean")) and (not Items or not SellFunctions or (false or not Islands2) or vi and false and (Items or not SellFunctions) or (SellFunctions or Items) and (not vi or GL_9) and (Conditions and SellFunctions or (not Islands2 or not Conditions))) or not ((not vi or Items or (Islands2 or not vi) or (not Items or not Conditions) and (Items and not Islands2)) and (not SellFunctions or not vi or (not vi or not Conditions) or (not Conditions or vi or "Dig & Clean")) and (not Items or not SellFunctions or (false or not Islands2) or vi and false and (Items or not SellFunctions) or (SellFunctions or Items) and (not vi or GL_9) and (Conditions and SellFunctions or (not Islands2 or not Conditions)))) then
            UserInputService = game:GetService("UserInputService")
        else
            vS = game:GetService("UserInputService")
        end
        GL_6 = (GL_6 + 43) % 104
    end
until (GL_6 * 35 + 77) % 104 == 0
for i, v in ipairs(Islands2.ISLAND_ORDER) do
    local GL_10_2 = vj[v]
    GL_18 = GL_10_2 and GL_10_2.name
    GL_6 = GL_18 or v
    GL_18 = GL_6
    GL_15[#GL_15 + 1] = GL_18
    GL_6 = { id = v }
    GL_12 = GL_10_2 or GL_6
    vo[GL_18] = GL_12
end
vO = {}
for i, v in ipairs(Items.RARITY_ORDER) do
    vO[v] = i
end
vC = {}
for i, v in ipairs(Conditions.CONDITION_ORDER) do
    vC[v] = i
end
vt, vp, v0, vV, vQ, vL, vH, Library, wi, Options, Toggles, vP, vM, vG, Window, vk, GL_10_3, vD, vl, uY, uU, uE, vW, vA, u6, v1, vx, u7, uH, vs, uZ, uJ, u1, vU, u5, u_, uR, uD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vt = {}
if (not vt or vl or (vl or vx)) and (vt and vt and (not wi or vl)) and not ((not vt or vl or (vl or vx)) and (vt and vt and (not wi or vl))) then
    vk = {}
    v0 = fn1152
    vp = fn1237
    GL_18 = fn246
    table.insert(vk, GL_10_3.SurfacedItemSpawned:connect(vp))
    table.insert(vk, GL_10_3.SurfacedItemReleased:connect(vp))
    table.insert(vk, GL_10_3.SurfacedItemRemoved:connect(GL_18))
    table.insert(vk, GL_10_3.SurfacedItemClaimed:connect(GL_18))
    v0()
else
    vp = {}
    vk = fn1152
    GL_18 = fn1237
    table.insert(vp, GL_5.SurfacedItemSpawned:connect(GL_18))
    table.insert(vp, GL_5.SurfacedItemReleased:connect(GL_18))
    table.insert(vp, GL_5.SurfacedItemRemoved:connect(fn246))
    table.insert(vp, GL_5.SurfacedItemClaimed:connect(fn246))
    vk()
    v0 = "client/controllers/world/DigController@DigController"
end
vV = "client/controllers/world/DetectorSweepController@DetectorSweepController"
vQ = "client/controllers/world/SurfacedItemController@SurfacedItemController"
vL = "client/controllers/world/WorkbenchController@WorkbenchController"
vH = "client/controllers/data/DataController@DataController"
vD = fn649
vl = fn420
uY = fn289
uU = fn944
uE = fn407
vW = fn3
vA = fn890
u6 = fn1105
v1 = fn193
vx = fn911
u7 = fn76
uH = fn730
vs = fn97
uZ = fn703
uJ = fn1001
u1 = fn465
vU = fn73
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
GL_14 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
wi = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
u5 = fn127
u_ = fn226
uR = fn662
uD = fn924
vP = "#7fd47f"
vM = "#6ec1ff"
vG = "#e8a34d"
GL_8 = "#8b93a3"
Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = vv, Copyable = true }, "|", GL_9 },
    Icon = 12645376577,
    Size = UDim2.fromOffset(880, 620),
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10,
    GlobalSearch = true
})
wh = {
    Info = Window:AddTab("Info", "info"),
    Priority = Window:AddTab("Priority", "list-ordered"),
    Digging = Window:AddTab("Digging", "shovel"),
    Cleaning = Window:AddTab("Cleaning", "spray-can"),
    Storage = Window:AddTab("Storage", "package"),
    Shop = Window:AddTab("Shop", "shopping-cart"),
    Settings = Window:AddTab("Settings", "settings")
}
GL_2 = fn868
for k, v in wh do
    GL_2(v)
end
u2, Label, uF = nil, nil, nil
u2 = "Unknown"
pcall(fn817)
local GL_10_5 = wh.Info:AddLeftGroupbox("Account", "circle-user")
GL_10_5:AddLabel(uD("User", vB.Name, vP), true)
GL_10_5:AddLabel(uD("Status", "Keyless", vP), true)
GL_10_5:AddLabel(uD("Executor", u2, vP), true)
GL_12 = wh.Info:AddLeftGroupbox("Game Info", "gamepad-2")
do
    GL_12:AddLabel(uR(GL_9 .. " [" .. tostring(game.PlaceId) .. "]", vM), true)
    GL_12:AddLabel(uD("Place ID", tostring(game.PlaceId), vM), true)
    Label = GL_12:AddLabel(uD("Session time", "0s", vG), true)
end
uF = tostring(game.JobId)
GL_6 = #uF > 18
if GL_6 then
    local GL_10_6 = 2
    repeat
        if (GL_10_6 and not GL_10_6 or not GL_10_6 and not GL_10_6) and ((GL_10_6 or not GL_10_6) and (GL_10_6 or not GL_10_6)) and ((not GL_10_6 or not GL_10_6) and (GL_10_6 and GL_10_6) or (GL_10_6 or GL_10_6 or (GL_10_6 or not GL_10_6))) and not ((GL_10_6 and not GL_10_6 or not GL_10_6 and not GL_10_6) and ((GL_10_6 or not GL_10_6) and (GL_10_6 or not GL_10_6)) and ((not GL_10_6 or not GL_10_6) and (GL_10_6 and GL_10_6) or (GL_10_6 or GL_10_6 or (GL_10_6 or not GL_10_6)))) then
            uF = string.sub(GL_6, 1, 18) .. "..."
        else
            GL_6 = string.sub(uF, 1, 18) .. "..."
        end
        GL_10_6 = (GL_10_6 + 7) % 8
    until (GL_10_6 * 1 + 3) % 8 == 4
end
GL_18 = GL_6 or uF
GL_12:AddLabel(uD("Server", GL_18, GL_8), true)
GL_12:AddButton({
    Text = "Copy join script (Job ID)",
    Func = function()
        local dl = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, uF)
        u5(dl)
        Library:Notify("Copied join script to clipboard")
    end
})
vI = os.clock()
task.spawn(function()
    local y8_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local y7 = math.floor(os.clock() - vI)
        if y7 < 60 then
            y8_1 = y7 .. "s"
        elseif y7 < 3600 then
            y8_1 = string.format("%dm %ds", y7 // 60, y7 % 60)
        else
            y8_1 = string.format("%dh %dm", y7 // 3600, y7 % 3600 // 60)
        end
        Label:SetText(uD("Session time", y8_1, vG))
    end
end)
local GL_10_8 = wh.Info:AddRightGroupbox("Scripts", "package")
GL_10_8:AddLabel(uR("Included in this hub", GL_8), true)
GL_10_8:AddLabel(uR(GL_9, vM), true)
local GL_10_9 = wh.Info:AddRightGroupbox("Features", "list")
GL_10_9:AddLabel(uR("Auto Dig", vM), true)
GL_10_9:AddLabel(uR("Auto Clean", vM), true)
GL_10_9:AddLabel(uR("Auto Place", vG), true)
GL_10_9:AddLabel(uR("Auto Replace", vG), true)
GL_10_9:AddLabel(uR("Auto Sell", vG), true)
GL_10_9:AddLabel(uR("Auto Buy Gear", vP), true)
local GL_10_10 = wh.Info:AddRightGroupbox("Socials", "link")
GL_10_10:AddButton({ Text = "Discord", Func = u_ })
GL_10_10:AddButton({
    Text = "Rscripts",
    Func = function()
        u5(vr)
        Library:Notify("Copied Rscripts profile to clipboard")
    end
})
local GL_10_11 = wh.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
GL_10_11:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
GL_10_11:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
GL_10_11:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
GL_10_11:AddButton({ Text = "Copy Discord Invite", Func = u_ })
local GL_10_12 = wh.Info:AddRightGroupbox("FAQ", "circle-help")
GL_10_12:AddLabel("Where do I get a good config?", true)
GL_10_12:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
GL_10_12:AddLabel("How do I import / export configs?", true)
GL_10_12:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
GL_10_12:AddLabel("How do I report bugs?", true)
GL_10_12:AddLabel("Join the Discord and post it in the bugs channel.", true)
GL_10_12:AddLabel("How do I make suggestions?", true)
GL_10_12:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
GL_10_12:AddLabel("How do I get help or updates?", true)
GL_10_12:AddLabel("Join the Discord, updates and support are posted there first.", true)
local GL_10_13 = wh.Digging:AddLeftGroupbox("Auto Dig", "shovel")
GL_10_13:AddToggle("AutoDig", { Text = "Auto Dig", Default = false })
GL_10_13:AddDropdown("DigMode", { Values = { "Teleport", "Walk" }, Default = "Teleport", Text = "Dig Mode" })
GL_10_13:AddToggle("AutoDigTravel", { Text = "Teleport To Dig Spots", Default = true })
GL_10_13:AddDropdown("DigIsland", { Values = GL_15, Default = GL_15[1], Text = "Dig Island" })
GL_10_13:AddToggle("AutoTravelIsland", { Text = "Return Home To Clean And Sell", Default = true })
GL_10_13:AddDropdown("DigMinRarity", { Values = Items.RARITY_ORDER, Default = "common", Text = "Minimum Rarity" })
GL_10_13:AddDropdown("DigPowerMode", { Values = { "Max Luck", "Fastest" }, Default = "Max Luck", Text = "Power Timing" })
GL_10_13:AddSlider("DigClickRate", { Text = "Dig Clicks Per Second", Default = 25, Min = 1, Max = 50, Rounding = 0, Suffix = " cps" })
GL_10_13:AddToggle("DigStopWhenFull", { Text = "Pause When Backpack Full", Default = true })
local GL_10_14 = wh.Digging:AddRightGroupbox("Status", "activity")
Label2 = GL_10_14:AddLabel(uD("Buried spots", "0", vM), true)
Label3 = GL_10_14:AddLabel(uD("Dig phase", "idle", vG), true)
Label4 = GL_10_14:AddLabel(uD("Backpack", "0", vP), true)
local GL_10_15 = wh.Cleaning:AddLeftGroupbox("Auto Clean", "spray-can")
GL_10_15:AddToggle("AutoClean", { Text = "Auto Clean", Default = false })
GL_10_15:AddDropdown("CleanPriority", {
    Values = { "When Backpack Full", "Always", "When Not Digging" },
    Default = "When Backpack Full",
    Text = "Clean Priority"
})
GL_10_15:AddDropdown("CleanRarityPriority", { Values = Items.RARITY_ORDER, Default = "common", Text = "Rarity Priority" })
GL_10_15:AddSlider("CleanFinishDelay", { Text = "Scrub Time Before Finishing", Default = 1, Min = 0, Max = 10, Rounding = 1, Suffix = "s" })
local GL_10_16 = wh.Cleaning:AddRightGroupbox("Status", "activity")
Label5 = GL_10_16:AddLabel(uD("Dirty items", "0", vG), true)
Label6 = GL_10_16:AddLabel(uD("Clean", "idle", vM), true)
local GL_10_17 = wh.Storage:AddLeftGroupbox("Auto Place", "layout-grid")
GL_10_17:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
GL_10_17:AddDropdown("PlaceConditions", {
    Values = Conditions.CONDITION_ORDER,
    Multi = true,
    AllowNull = true,
    Text = "Conditions (empty = all)"
})
GL_10_17:AddSlider("PlaceMinValue", { Text = "Minimum Item Value", Default = 0, Min = 0, Max = 100000, Rounding = 0, Prefix = "$" })
GL_10_17:AddToggle("PlaceReplaceWorse", { Text = "Replace Lower Value Items", Default = false })
GL_10_17:AddToggle("PlaceTeleport", { Text = "Teleport To Pedestal", Default = true })
local GL_10_18 = wh.Storage:AddLeftGroupbox("Auto Replace", "refresh-cw")
GL_10_18:AddToggle("AutoReplace", { Text = "Auto Replace", Default = false })
GL_10_18:AddDropdown("ReplaceMode", {
    Values = { "Higher Value", "Higher Rarity", "Better Condition", "Configuration" },
    Default = "Higher Value",
    Text = "Replace Mode"
})
GL_10_18:AddDropdown("ReplaceMinRarity", { Values = Items.RARITY_ORDER, Default = "common", Text = "Minimum Candidate Rarity" })
GL_10_18:AddDropdown("ReplaceMinCondition", { Values = Conditions.CONDITION_ORDER, Default = "poor", Text = "Minimum Candidate Condition" })
GL_10_18:AddSlider("ReplaceMinValue", { Text = "Minimum Candidate Value", Default = 0, Min = 0, Max = 100000, Rounding = 0, Prefix = "$" })
GL_10_18:AddSlider("ReplaceImprovement", { Text = "Minimum Value Improvement", Default = 0, Min = 0, Max = 100, Rounding = 0, Suffix = "%" })
local GL_10_19 = wh.Storage:AddRightGroupbox("Auto Sell", "hand-coins")
GL_10_19:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
GL_10_19:AddDropdown("SellTarget", { Values = { "Everything", "Junk Only" }, Default = "Junk Only", Text = "Sell Target" })
GL_10_19:AddDropdown("SellMode", {
    Values = { "Backpack Full", "Item Count", "Timer", "Junk Found" },
    Default = "Junk Found",
    Text = "Sell Trigger"
})
GL_10_19:AddSlider("SellItemCount", { Text = "Sell At Item Count", Default = 20, Min = 1, Max = 50, Rounding = 0 })
GL_10_19:AddSlider("SellInterval", { Text = "Sell Every", Default = 120, Min = 15, Max = 900, Rounding = 0, Suffix = "s" })
GL_10_19:AddSlider("SellBelowValue", { Text = "Sell Below Value", Default = 1000, Min = 0, Max = 1000000, Rounding = 0, Prefix = "$" })
GL_10_19:AddSlider("SellBelowKg", { Text = "Sell Below Weight", Default = 100, Min = 0, Max = 10000, Rounding = 1, Suffix = " kg" })
GL_10_19:AddDropdown("SellMaxRarity", { Values = Items.RARITY_ORDER, Default = "uncommon", Text = "Sell Max Rarity" })
GL_10_19:AddToggle("SellTeleport", { Text = "Teleport To Seller", Default = true })
GL_10_19:AddToggle("SellReturn", { Text = "Return After Selling", Default = true })
local GL_10_20 = wh.Shop:AddLeftGroupbox("Auto Buy", "shopping-cart")
GL_10_20:AddToggle("AutoBuyShovel", { Text = "Auto Buy Best Affordable Shovel", Default = false })
GL_10_20:AddToggle("AutoBuySpray", { Text = "Auto Buy Best Affordable Spray Bottle", Default = false })
GL_10_20:AddToggle("AutoBuyDetector", { Text = "Auto Buy Best Affordable Detector", Default = false })
GL_10_20:AddToggle("AutoEquipGear", { Text = "Auto Equip Best Owned Gear", Default = true })
GL_10_20:AddSlider("GoldReserve", { Text = "Keep Gold Reserve", Default = 0, Min = 0, Max = 1000000, Rounding = 0, Prefix = "$" })
GL_10_20:AddToggle("ShopTeleport", { Text = "Teleport To Gear Shop", Default = true })
local GL_10_21 = wh.Shop:AddRightGroupbox("Status", "activity")
Label7 = GL_10_21:AddLabel(uD("Gold", "0", vP), true)
Label8 = GL_10_21:AddLabel(uD("Shovel", "none", vM), true)
Label9 = GL_10_21:AddLabel(uD("Spray", "none", vM), true)
Label10 = GL_10_21:AddLabel(uD("Detector", "none", vM), true)
local GL_10_22 = {
    "Dig, Clean then Sell",
    "Dig, Clean, Place then Sell",
    "Dig, Clean, Replace, Sell",
    "Clean then Sell",
    "Dig then Clean",
    "Dig then Sell"
}
u8 = {
    ["Dig then Clean"] = { "dig", "clean" },
    ["Clean then Sell"] = { "clean", "sell" },
    ["Dig then Sell"] = { "dig", "sell" },
    ["Dig, Clean then Sell"] = { "dig", "clean", "sell" },
    ["Dig, Clean, Place then Sell"] = { "dig", "clean", "place", "sell" },
    ["Dig, Clean, Replace, Sell"] = { "dig", "clean", "replace", "sell" }
}
GL_18 = wh.Priority:AddLeftGroupbox("AFK Routine", "list-ordered")
GL_18:AddToggle("PriorityMode", { Text = "Enable Priority Routine", Default = false })
GL_18:AddDropdown("PriorityRoutine", { Values = GL_10_22, Default = "Dig, Clean then Sell", Text = "Routine" })
GL_18:AddDropdown("PriorityDigMode", { Values = { "Teleport", "Walk" }, Default = "Teleport", Text = "Dig Mode" })
GL_18:AddDropdown("PrioritySwitch", {
    Values = { "Backpack Full", "Item Count" },
    Default = "Backpack Full",
    Text = "Leave Digging When"
})
GL_18:AddSlider("PrioritySwitchCount", { Text = "Leave Digging At Item Count", Default = 25, Min = 1, Max = 50, Rounding = 0 })
GL_18:AddToggle("PriorityBuyGear", { Text = "Buy And Equip Gear Between Cycles", Default = true })
local GL_10_23 = wh.Priority:AddRightGroupbox("Status", "activity")
Label11 = GL_10_23:AddLabel(uD("Stage", "off", vG), true)
Label12 = GL_10_23:AddLabel(uD("Routine", "-", vM), true)
Label13 = GL_10_23:AddLabel(uD("Cycles", "0", vP), true)
uO = false
local function GL_10_24(d5, d6, d7)
    Toggles[d5]:OnChanged(function(d8)
        if uO or Toggles.PriorityMode.Value or not d8 or not Toggles.AutoDig.Value then
            return
        end
        uO = true
        Toggles[d5]:SetValue(false)
        uO = false
        local za_1 = "Conflict" .. d5
        local zb = Library.Dialogues[za_1]
        if zb then
            zb:Dismiss()
        end
        Window:AddDialog(za_1, {
            Title = "Conflicts With Auto Dig",
            Description = d7,
            AutoDismiss = true,
            OutsideClickDismiss = false,
            FooterButtons = {
                { Id = "cancel", Title = "Keep " .. d6 .. " Off", Variant = "Destructive", Order = 1 },
                {
                    Id = "keep",
                    Title = "Enable Anyway",
                    Variant = "Primary",
                    Order = 2,
                    Callback = function()
                        uO = true
                        Toggles[d5]:SetValue(true)
                        uO = false
                    end
                }
            }
        })
    end)
end
GL_10_24("AutoClean", "Auto Clean", "Auto Dig is running. Cleaning pauses digging until the backpack is clean. Set Clean Priority so the two take turns the way you want.")
GL_10_24("AutoSell", "Auto Sell", "Auto Dig is running. Selling teleports you to the seller and sells everything still in the backpack, including items you have not cleaned or placed yet.")
local GL_10_25 = wh.Settings:AddLeftGroupbox("Menu", "menu")
GL_10_25:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
GL_10_25:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
GL_10_25:AddButton({
    Text = "Unload",
    Func = function()
        Library:Unload()
    end
})
uQ = tick()
uN = tick()
pcall(function()
    for i, v in ipairs(getconnections(vB.Idled)) do
        local zj = v
        pcall(function()
            zj:Disable()
        end)
    end
end)
vZ = function()
    local CurrentCamera = vE.CurrentCamera
    if not CurrentCamera then
        return
    end
    vJ:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    vJ:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    uN = tick()
end
connection = UserInputService.InputBegan:Connect(function()
    uQ = tick()
end)
connection2 = UserInputService.InputChanged:Connect(function(ey)
    local UserInputType = ey.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        uQ = tick()
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local zp = tick() - uQ
            local zq = tick() - uN
            if zp >= 300 and zq >= 60 then
                pcall(vZ)
            else
                if zp < 300 and zq >= 300 then
                    pcall(vZ)
                end
            end
        end
    end
end)
connection3 = nil
connection4 = nil
uA = nil
v3 = nil
v_ = nil;
(function()
    local o7
    local eV
    local DIG_POWER_TIERS = u3.DIG_POWER_TIERS
    local minPower = DIG_POWER_TIERS[#DIG_POWER_TIERS].minPower
    local eY = 0
    eV = false
    local eW
    local eU = 0
    local eZ = false
    local eX = 0
    v3 = false
    local e1 = 100
    local e0 = 6
    local e2 = {
        starterIsland = {
            Vector3.new(-119, 18, -660),
            Vector3.new(-119, 18, -178),
            Vector3.new(-96, 17, -178),
            Vector3.new(-94, 17, -659),
            Vector3.new(-66, 14, -660),
            Vector3.new(-60, 13, -178)
        },
        island2 = {
            Vector3.new(1380, 14, -89),
            Vector3.new(1280, 16, -15),
            Vector3.new(1270, 15, 76),
            Vector3.new(1323, 14, 165),
            Vector3.new(1416, 12, 163),
            Vector3.new(1510, 17, 94),
            Vector3.new(1519, 14, -12),
            Vector3.new(1428, 15, -82)
        },
        island3 = {
            Vector3.new(2431, 24, 1791),
            Vector3.new(2280, 23, 1852),
            Vector3.new(2253, 24, 1986),
            Vector3.new(2309, 27, 2046),
            Vector3.new(2327, 26, 2179),
            Vector3.new(2388, 20, 2225),
            Vector3.new(2503, 19, 2185),
            Vector3.new(2685, 22, 2053),
            Vector3.new(2682, 22, 1931),
            Vector3.new(2711, 23, 1831),
            Vector3.new(2687, 20, 1718),
            Vector3.new(2592, 25, 1672),
            Vector3.new(2505, 20, 1682)
        },
        island4 = {
            Vector3.new(2079, 18, -2790),
            Vector3.new(2163, 18, -2856),
            Vector3.new(2211, 18, -2862),
            Vector3.new(2295, 18, -2802),
            Vector3.new(2307, 18, -2700),
            Vector3.new(2211, 18, -2652),
            Vector3.new(2163, 18, -2634),
            Vector3.new(2085, 18, -2694)
        },
        island5 = {
            Vector3.new(-1490, 22, 1132),
            Vector3.new(-1424, 22, 1090),
            Vector3.new(-1364, 22, 1030),
            Vector3.new(-1322, 22, 1024),
            Vector3.new(-1268, 22, 1030),
            Vector3.new(-1178, 22, 1096),
            Vector3.new(-1166, 22, 1216),
            Vector3.new(-1142, 22, 1276),
            Vector3.new(-1256, 22, 1324),
            Vector3.new(-1334, 22, 1372),
            Vector3.new(-1418, 22, 1372),
            Vector3.new(-1442, 22, 1324),
            Vector3.new(-1484, 22, 1240)
        },
        island6 = {
            Vector3.new(-2444, 617, -898),
            Vector3.new(-2396, 617, -952),
            Vector3.new(-2372, 617, -1024),
            Vector3.new(-2264, 617, -1012),
            Vector3.new(-2180, 617, -1012),
            Vector3.new(-2132, 617, -952),
            Vector3.new(-2162, 617, -892),
            Vector3.new(-2204, 617, -844),
            Vector3.new(-2234, 617, -814),
            Vector3.new(-2258, 617, -766),
            Vector3.new(-2306, 617, -748),
            Vector3.new(-2354, 617, -772),
            Vector3.new(-2414, 617, -820)
        }
    }
    local e4 = 16
    local e5 = false
    local e3 = 1
    v_ = false
    local e8 = 0
    local e7 = 1.25
    local function e9()
        local zt = vo[Options.DigIsland.Value]
        return zt and zt.id
    end
    local function fc()
        return Options.DigMode.Value == "Walk"
    end
    uA = function()
        if not e5 then
            return
        end
        e5 = false
        local zw = uE()
        local zx = uU()
        if zw then
            zw.WalkSpeed = e4
            if zx then
                zw:MoveTo(zx.Position)
            end
        end
        local zw_1 = uY()
        if zw_1 then
            for i, descendant in ipairs(zw_1:GetDescendants()) do
                local zw_2 = descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart"
                if zw_2 then
                    descendant.CanCollide = true
                end
            end
        end
    end
    local function ft()
        local zF = e2[e9()]
        if not zF or not zF[1] then
            return false
        end
        e3 = 1
        local zG_1 = CFrame.new(zF[1] + Vector3.new(0, 3, 0))
        local zH = pcall(uM, vB, zG_1)
        if not zH then
            return vW(zF[1] + Vector3.new(0, 3, 0))
        end
        return true
    end
    local function fH()
        uA()
        e8 = os.clock() + e7
    end
    local function fL()
        local zJ = uE()
        local zK = uU()
        local zL = not zJ
        local zQ = if zL then 1 else 0
        local zO = 1505 * zQ + 1393 * (1 - zQ)
        local zP = 1497 * zQ + 1512 * (1 - zQ)
        if not ((zO * 1240 + zP * 3606 + zO * zP) % 16777213 == 9517367) then
            zL = not zK
        end
        if not zL then
            zL = zJ.Health <= 0
        end
        if zL then
            return
        end
        if os.clock() < e8 then
            zJ:MoveTo(zK.Position)
            return
        end
        if not e5 then
            e4 = zJ.WalkSpeed
            e5 = true
        end
        if zJ.WalkSpeed ~= e1 then
            zJ.WalkSpeed = e1
        end
        local zL_1 = e2[e9()]
        if not zL_1 or #zL_1 == 0 then
            return
        end
        if e3 < 1 or e3 > #zL_1 then
            e3 = 1
        end
        local zM_2 = zL_1[e3]
        if (zK.Position - zM_2).Magnitude <= e0 then
            e3 += 1
            if e3 > #zL_1 then
                e3 = 1
            end
            zM_2 = zL_1[e3]
        end
        zJ:MoveTo(zM_2)
    end
    connection4 = vX.Stepped:Connect(function()
        local zR = not e5
        local zS = Library.Unloaded
        local zW = if zS then 1 else 0
        local zU = 3656 * zW + 1022 * (1 - zW)
        local zV = 1982 * zW + 389 * (1 - zW)
        if not ((zU * 3732 + zV * 2612 + zU * zV) % 16777213 == 9290155) then
            zS = zR
        end
        if zS then
            return
        end
        local zR_1 = uY()
        if not zR_1 then
            return
        end
        for i, descendant in ipairs(zR_1:GetDescendants()) do
            local zR_2 = descendant:IsA("BasePart") and descendant.CanCollide
            if zR_2 then
                descendant.CanCollide = false
            end
        end
    end)
    Options.DigMode:OnChanged(function(gc)
        if gc ~= "Walk" then
            uA()
        end
        if v_ then
            return
        end
        v_ = true
        Options.PriorityDigMode:SetValue(gc)
        v_ = false
    end)
    Options.PriorityDigMode:OnChanged(function(gg)
        if v_ then
            return
        end
        v_ = true
        Options.DigMode:SetValue(gg)
        v_ = false
    end)
    Options.DigIsland:OnChanged(function()
        table.clear(ve)
        table.clear(va)
        e3 = 1
    end)
    vB.CharacterAdded:Connect(function()
        task.wait(0.5)
        if e5 then
            local z4 = uE()
            if z4 then
                z4.WalkSpeed = e1
            end
        end
    end)
    local function gs(gt)
        local z9 = vO[Options.DigMinRarity.Value]
        if not z9 or z9 <= 1 then
            return true
        end
        local Aa_1 = vO[gt]
        return Aa_1 ~= nil and Aa_1 >= z9
    end
    local function gB()
        local Ad = vO[Options.DigMinRarity.Value]
        return Ad ~= nil and Ad > 1
    end
    local gH = 3
    local gG = "DigZone"
    local gI = 0
    local function gJ(gK)
        local Ag = v1(gK)
        if not Ag then
            return false
        end
        local Ah = {}
        for i, v in ipairs(vS:GetTagged(gG)) do
            local Ai = v:IsA("BasePart") and v:IsDescendantOf(Ag)
            if Ai then
                Ah[#Ah + 1] = v
            end
        end
        if #Ah == 0 then
            return false
        end
        local Ag_1 = DigZoneSpawn.randomDigZonePoint(Ah)
        if not Ag_1 then
            return false
        end
        return vW(Ag_1.position + Vector3.new(0, 3, 0))
    end
    local function gZ(g_)
        local Au_1
        local At_1
        At_1, Au_1 = nil, nil
        for k, v in pairs(vt) do
            local Av = Items.Items[v.itemId]
            local Aw = Av and gs(Av.rarity)
            if Aw then
                local Magnitude = (v.position - g_).Magnitude
                if not Au_1 or Magnitude < Au_1 then
                    At_1 = v
                    Au_1 = Magnitude
                end
            end
        end
        return At_1, Au_1
    end
    local function hd(he)
        u4()
        local AE = vj[he]
        local AF = AE and AE.spawn
        if typeof(AF) == "CFrame" then
            return AF + Vector3.new(0, 4, 0)
        elseif typeof(AF) == "Vector3" then
            return CFrame.new(AF + Vector3.new(0, 4, 0))
        elseif typeof(AF) == "Instance" then
            return AF:GetPivot() + Vector3.new(0, 4, 0)
        else
            local AE_2 = v1(he)
            if AE_2 then
                local AF_1 = AE_2:FindFirstChild("Spawn") or AE_2:FindFirstChildWhichIsA("SpawnLocation", true)
                if AF_1 then
                    return AF_1:GetPivot() + Vector3.new(0, 4, 0)
                end
                return AE_2:GetPivot() + Vector3.new(0, 20, 0)
            end
            return nil
        end
    end
    local function hq(hr)
        if not hr then
            return true
        end
        local A_ = vl()
        if A_ and A_.CurrentIsland == hr then
            return true
        end
        if v3 or not A_ then
            return false
        end
        local A__1 = ve[hr] and os.clock() < ve[hr]
        if A__1 then
            return false
        end
        v3 = true
        task.spawn(function()
            local AJ_1
            local AI_1
            AI_1, AJ_1 = pcall(function()
                return TravelFunctions.travel:invoke(hr):expect()
            end)
            local AK = vj[hr]
            local AK_1 = AK and AK.name or hr
            local AK_2 = hd(hr)
            if AI_1 and AJ_1 == "ok" then
                if AK_2 then
                    pcall(uM, vB, AK_2)
                end
                local AU = 1
                while AU <= 20 do
                    task.wait(0.15)
                    local AI_2 = vl()
                    if AI_2 and AI_2.CurrentIsland == hr then
                        break
                    end
                    AU += 1
                end
                vk()
                va[hr] = nil
                ve[hr] = nil
                if fc() then
                    fH()
                end
            elseif AJ_1 == "poor" then
                ve[hr] = os.clock() + 8
                if not va[hr] then
                    va[hr] = true
                    local AI_3 = Islands2.Islands[hr]
                    local AI_4 = AI_3 and AI_3.cost
                    local AJ_3 = type(AI_4) == "number" and AI_4 > 0
                    if AJ_3 then
                        Library:Notify(string.format("Need $%s to unlock %s", tostring(AI_4), AK_1))
                    else
                        Library:Notify("Could not travel to " .. AK_1)
                    end
                end
            else
                ve[hr] = os.clock() + 5
                if AK_2 then
                    pcall(uM, vB, AK_2)
                end
                if not va[hr] then
                    va[hr] = true
                    Library:Notify("Could not travel to " .. AK_1)
                end
                if fc() then
                    fH()
                end
            end
            task.wait(0.35)
            v3 = false
        end)
        return false
    end
    local function h3()
        if eW then
            return true
        end
        local A6 = vD(vL)
        if not A6 then
            return false
        end
        return A6.session ~= nil or A6.cleaning == true
    end
    local function h6()
        local A9 = vD(v0)
        if not A9 then
            return false
        end
        return A9.session ~= nil
    end
    local function ib(ic)
        local Bi_1
        local Bh_1
        local Bl_1
        local Bk_1, Bk_4
        local Bd_5
        local Bb = eV or eZ or h3()
        local Bb_2
        if Bb then
            return
        end
        local Bb_1 = vD(v0)
        if not Bb_1 then
            return
        end
        local session = Bb_1.session
        if session then
            if session.phase == "power" then
                local Bd_1 = vE:GetServerTimeNow() - session.powerStartedAt
                if Bd_1 >= u3.DIG_POWER_MIN_STOP_SECONDS then
                    local Be_1 = Options.DigPowerMode.Value == "Fastest"
                    local Bq_1 = if Be_1 then 1 else 0
                    local Bo_1 = 2952 * Bq_1 + 1253 * (1 - Bq_1)
                    local Bp_1 = 2371 * Bq_1 + 3225 * (1 - Bq_1)
                    if not ((Bo_1 * 759 + Bp_1 * 198 + Bo_1 * Bp_1) % 16777213 == 9709218) then
                        Be_1 = u3.digPowerAt(Bd_1) >= minPower
                    end
                    if not Be_1 then
                        Be_1 = Bd_1 >= u3.DIG_POWER_MAX_SECONDS - 0.25
                    end
                    if Be_1 then
                        pcall(Bb_1.stopPower, Bb_1)
                    end
                end
            elseif session.phase == "minigame" then
                eU = math.min(eU + ic * Options.DigClickRate.Value, 20)
                while true do
                    if eU >= 1 and Bb_1.session == session and session.clickCredits >= 1 then
                        eU -= 1
                        pcall(Bb_1.onDigInput, Bb_1)
                        continue
                    end
                    break
                end
            end
            return
        end
        eU = 0
        local Bc_1 = uU()
        if not Bc_1 then
            return
        end
        local Bd_4 = uE()
        if not Bd_4 or Bd_4.Health <= 0 then
            return
        end
        local Be_3 = vl()
        local Bf = Toggles.DigStopWhenFull.Value and Be_3 and uW.isFull(Be_3)
        local Bf_4
        if Bf then
            uA()
            return
        end
        local Be_4 = uY()
        for i, child in ipairs(Be_4:GetChildren()) do
            local Be_5 = child:IsA("Tool") and child:GetAttribute("inventoryId") ~= nil
            if Be_5 then
                local Be_6 = Toggles.AutoClean.Value and vS:HasTag(child, "Dirt")
                if Be_6 then
                    return
                end
                Bd_4:UnequipTools()
                return
            end
        end
        if not hq(e9()) then
            return
        end
        if Bb_1:isBusyDigging() then
            return
        end
        local Be_7 = vD(vV)
        local Bf_1 = vD(vQ)
        local Bg = gB()
        local Bg_2, Bg_4
        Bh_1, Bi_1 = gZ(Bc_1.Position)
        local Bj = false
        if Be_7 then
            Bk_1, Bl_1 = pcall(Be_7.nearestSpot, Be_7, Bc_1.Position)
            local Bm = Bk_1 and Bl_1 ~= nil and gs(Bl_1.rarity)
            Bj = Bm
        end
        local Bk_2 = not Bj
        if Bk_2 ~= false then
            Bk_2 = Bi_1
        end
        if Bk_2 then
            Bj = Bi_1 <= 6
        end
        local Bk_3 = not Bg
        local Bl_2 = not Bj
        if Bl_2 ~= false then
            Bl_2 = Bk_3
        end
        if Bl_2 and Bf_1 then
            Bg_2, Bk_4 = pcall(Bf_1.hasDigSpotNear, Bf_1, Bc_1.Position)
            Bj = Bg_2 and Bk_4 ~= nil and Bk_4 ~= false
        end
        if Bj then
            if e5 then
                Bd_4:MoveTo(Bc_1.Position)
            end
            pcall(Bb_1.requestSession, Bb_1)
            return
        end
        if fc() then
            fL()
            return
        end
        if not Toggles.AutoDigTravel.Value then
            return
        end
        Bd_5, Bb_2, Bg_4, Bf_4 = nil, nil, nil, nil
        if Be_7 then
            for k, v in pairs(Be_7.nodes) do
                if gs(v.rarity) then
                    local Magnitude = (v.position - Bc_1.Position).Magnitude
                    if not Bb_2 or Magnitude < Bb_2 then
                        Bd_5 = v.position
                        Bb_2 = Magnitude
                        Bg_4 = k
                        Bf_4 = v
                    end
                end
            end
        end
        local Bj_2 = Bh_1
        if Bj_2 then
            Bj_2 = not Bb_2 or Bi_1 < Bb_2
        end
        if Bj_2 then
            Bd_5 = Bh_1.position
            Bb_2 = Bi_1
            Bg_4 = nil
            Bf_4 = nil
        end
        if Bd_5 then
            if Bb_2 > 4 then
                vW(Bd_5 + Vector3.new(0, 3, 0))
            else
                if Bf_4 and not Be_7.surfaced[Bg_4] then
                    pcall(Be_7.surface, Be_7, Bg_4, Bf_4)
                end
            end
            return
        end
        if os.clock() - gI < gH then
            return
        end
        gI = os.clock()
        local Bb_4 = (e9())
        local Bq_2 = if Bb_4 then 1 else 0
        local Bo_2 = 2455 * Bq_2 + 1432 * (1 - Bq_2)
        local Bp_2 = 4074 * Bq_2 + 3715 * (1 - Bq_2)
        if not ((Bo_2 * 3952 + Bp_2 * 3368 + Bo_2 * Bp_2) % 16777213 == 16647849) then
            local Bc_3 = vl() and vl().CurrentIsland
            Bb_4 = Bc_3
        end
        gJ(Bb_4)
    end
    local function i9()
        local attr, BH
        local BJ_1
        local BI_1
        local BN = if os.clock() < eY then 1 else 0
        if BN == 1 then
            return true
        elseif eW then
            local BQ = if os.clock() - eX < Options.CleanFinishDelay.Value then 1 else 0
            if BQ == 1 then
                return true
            end
            BH = eW
            eW = nil
            eX = 0
            eY = os.clock() + 0.4
            pcall(function()
                ItemsEvents.finishCleaning:fire(BH)
            end)
            if fc() then
                fH()
            end
            return true
        else
            BJ_1, BI_1 = uJ()
            if not BJ_1 then
                return false
            elseif not BI_1 then
                local BI_2 = uE()
                if not BI_2 then
                    return false
                end
                BI_2:EquipTool(BJ_1)
                return true
            else
                attr = BJ_1:GetAttribute("inventoryId")
                if type(attr) ~= "string" then
                    return false
                end
                uA()
                local BI_3 = pcall(function()
                    vK.beginCleaning:invoke(attr):expect()
                end)
                if not BI_3 then
                    return true
                end
                eW = attr
                eX = os.clock()
                return true
            end
        end
    end
    local function ju()
        local BR = vl()
        if not BR then
            return false
        end
        local BS = Options
        local BT = 1
        if BS then
            BS = Options.CleanRarityPriority
        end
        if BS then
            BT = vO[Options.CleanRarityPriority.Value] or 1
        end
        for k, v in pairs(BR.Inventory) do
            if v.dirty == true then
                local BR_1 = Items.Items[v.id]
                if (BR_1 and vO[BR_1.rarity] or 0) >= BT then
                    return true
                end
            end
        end
        return false
    end
    local function jH()
        if not Toggles.AutoClean.Value then
            return false
        end
        local B5 = if h3() then 1 else 0
        if B5 == 1 then
            return true
        elseif h6() then
            return false
        else
            local B8 = if not ju() then 1 else 0
            if B8 == 1 then
                return false
            end
            local Value = Options.CleanPriority.Value
            if Value == "Always" then
                return true
            elseif Value == "When Not Digging" then
                return not Toggles.AutoDig.Value
            else
                local B0_1 = vl()
                local B1 = B0_1 ~= nil and uW.isFull(B0_1)
                return B1
            end
        end
    end
    local function jS(jT)
        local Value = Options.PlaceConditions.Value
        local Ca = false
        for k, v in pairs(Value) do
            if v then
                Ca = true
                break
            end
        end
        if not Ca then
            return true
        end
        return Value[jT] == true
    end
    local function jZ(j_)
        local Ci = Items.Items[j_.id]
        if not Ci then
            return 0
        end
        local Cj = vO[Ci.rarity]
        local Cn = if Cj then 1 else 0
        local Cl = 3323 * Cn + 2600 * (1 - Cn)
        local Cm = 2001 * Cn + 1823 * (1 - Cn)
        if not ((Cl * 129 + Cm * 22 + Cl * Cm) % 16777213 == 7122012) then
            Cj = 0
        end
        return Cj
    end
    local function j3(j4)
        local Co = vC[j4.condition]
        local Cs = if Co then 1 else 0
        local Cq = 1068 * Cs + 3610 * (1 - Cs)
        local Cr = 1418 * Cs + 90 * (1 - Cs)
        if not ((Cq * 2379 + Cr * 456 + Cq * Cr) % 16777213 == 4701804) then
            Co = 0
        end
        return Co
    end
    local function j7(j8)
        if j8.dirty ~= false or j8.pedestalSlot ~= nil or j8.polisherSlot ~= nil then
            return false
        end
        local Cx = if not jS(j8.condition) then 1 else 0
        if Cx == 1 then
            return false
        end
        return u7(j8) >= Options.PlaceMinValue.Value
    end
    local function ke(kf)
        if kf.dirty ~= false or kf.pedestalSlot ~= nil or kf.polisherSlot ~= nil then
            return false
        end
        local Cy_1 = jZ(kf)
        if Cy_1 < (vO[Options.ReplaceMinRarity.Value] or 1) then
            return false
        end
        local Cy_2 = j3(kf)
        if Cy_2 < (vC[Options.ReplaceMinCondition.Value] or 1) then
            return false
        end
        return u7(kf) >= Options.ReplaceMinValue.Value
    end
    local function ko(kp)
        local CB = jZ(kp)
        if CB < (vO[Options.ReplaceMinRarity.Value] or 1) then
            return true
        end
        local CB_1 = j3(kp)
        if CB_1 < (vC[Options.ReplaceMinCondition.Value] or 1) then
            return true
        end
        return u7(kp) < Options.ReplaceMinValue.Value
    end
    local function kx(ky, kz)
        local Value = Options.ReplaceMode.Value
        local CF = u7(ky)
        local CG = u7(kz)
        local CH = jZ(ky)
        local CI = jZ(kz)
        local CJ = j3(ky)
        local CK = j3(kz)
        local CM = CG * (1 + Options.ReplaceImprovement.Value / 100)
        if Value == "Higher Rarity" then
            return CH > CI
        elseif Value == "Better Condition" then
            return CJ > CK
        elseif Value == "Configuration" then
            if ko(kz) then
                return true
            end
            return CF > CM
        else
            return CF > CM
        end
    end
    local function kK(kL)
        local Value = Options.ReplaceMode.Value
        if Value == "Higher Rarity" then
            return jZ(kL)
        elseif Value == "Better Condition" then
            return j3(kL)
        else
            return u7(kL)
        end
    end
    local function kR()
        local CQ = vl()
        if not CQ then
            return false
        end
        for k, v in pairs(CQ.Inventory) do
            if j7(v) then
                return true
            end
        end
        return false
    end
    local function kX()
        local CY = vl()
        if not CY then
            return false
        end
        local CZ = {}
        for k, v in pairs(CY.Inventory) do
            if v.pedestalSlot then
                CZ[#CZ + 1] = v
            end
        end
        if #CZ == 0 then
            return false
        end
        for k, v in pairs(CY.Inventory) do
            if ke(v) then
                for i, v2 in ipairs(CZ) do
                    if kx(v, v2) then
                        return true
                    end
                end
            end
        end
        return false
    end
    local function k8()
        local Di = vl()
        if not Di then
            return nil
        end
        local Dj = vA()
        if not Dj then
            return nil
        end
        local Dk = u6(Dj)
        if #Dk == 0 then
            return nil
        end
        local Dj_1 = {}
        for k, v in pairs(Di.Inventory) do
            if v.pedestalSlot then
                Dj_1[v.pedestalSlot] = v
            end
        end
        local Dl
        local Dm
        local Dn
        local Do
        for k, v in pairs(Di.Inventory) do
            if ke(v) then
                local Di_1 = u7(v)
                for i, v2 in ipairs(Dk) do
                    local attr = v2:GetAttribute("Slot")
                    local Dq = type(attr) == "number" and Dj_1[attr]
                    local Dr = Dq
                    if Dq then
                        Dq = kx(v, Dr)
                    end
                    if Dq then
                        local Dq_1 = Di_1 * 1000000 - kK(Dr)
                        if Dm == nil or Dq_1 > Dm then
                            Dn = v
                            Dl = attr
                            Do = v2
                            Dm = Dq_1
                        end
                    end
                end
            end
        end
        if not Dn then
            return nil
        end
        return Dn, Dl, Do
    end
    local function lB(lC)
        local DL = vl()
        if not DL then
            return nil
        end
        local DM = vA()
        if not DM then
            return nil
        end
        local DN = u6(DM)
        if #DN == 0 then
            return nil
        end
        local DM_1 = {}
        for k, v in pairs(DL.Inventory) do
            if v.pedestalSlot then
                DM_1[v.pedestalSlot] = v
            end
        end
        if lC or Toggles.AutoPlace.Value then
            local DO_1 = 0
            local DP
            for k, v in pairs(DL.Inventory) do
                if j7(v) then
                    local DL_1 = u7(v)
                    if DL_1 > DO_1 then
                        DP = v
                        DO_1 = DL_1
                    end
                end
            end
            if DP then
                local DL_2 = nil
                local DQ
                local DR
                for i, v in ipairs(DN) do
                    local attr = v:GetAttribute("Slot")
                    if type(attr) == "number" then
                        local DS = DM_1[attr]
                        if not DS then
                            return DP, attr, v
                        end
                        if Toggles.PlaceReplaceWorse.Value then
                            local DT = u7(DS)
                            if DT < DO_1 and (DL_2 == nil or DT < DL_2) then
                                DR = attr
                                DQ = v
                                DL_2 = DT
                            end
                        end
                    end
                end
                if DR then
                    return DP, DR, DQ
                elseif Toggles.AutoReplace.Value then
                    return k8()
                else
                    return nil
                end
            elseif Toggles.AutoReplace.Value then
                return k8()
            else
                return nil
            end
        elseif Toggles.AutoReplace.Value then
            return k8()
        else
            return nil
        end
    end
    local function l6(l7, l8, l9)
        local Ef_1
        local Ee_1
        if not l7 then
            return
        end
        Ef_1, Ee_1 = uH(l7.uid)
        if Ef_1 and not Ee_1 then
            local Ee_2 = uE()
            if Ee_2 then
                Ee_2:EquipTool(Ef_1)
            end
        end
        if Toggles.PlaceTeleport.Value and l9 then
            vW(l9:GetPivot().Position + Vector3.new(0, 4, 0))
            task.wait(0.2)
        end
        pcall(function()
            PedestalFunctions.placeItem:invoke(l8, l7.uid)
        end)
    end
    local function mn()
        local Ej = Toggles.AutoPlace.Value and kR()
        local Ek = Ej
        if not Ek then
            local Ej_1 = Toggles.AutoReplace.Value and kX()
            Ek = Ej_1
        end
        local Ej_2 = Ek
        local Ek_1 = Toggles.AutoTravelIsland.Value and Ej_2 and not hq(Islands2.STARTER_ISLAND_ID)
        if Ek_1 then
            return
        end
        l6(lB())
    end
    local function mB()
        local Em = Toggles.AutoTravelIsland.Value and kX() and not hq(Islands2.STARTER_ISLAND_ID)
        if Em then
            return
        end
        l6(k8())
    end
    local mJ = os.clock()
    local function mK(mL)
        if mL.favorited == true or mL.pedestalSlot ~= nil or mL.polisherSlot ~= nil then
            return false
        end
        return true
    end
    local function mN(mO)
        if not mK(mO) then
            return false
        end
        local Et = vO[Options.SellMaxRarity.Value] or 1
        local ED = if jZ(mO) > Et then 1 else 0
        if ED == 1 then
            return false
        end
        local Value2 = Options.SellBelowValue.Value
        local Value = Options.SellBelowKg.Value
        local Ev = Value2 > 0
        local Ew = Value > 0
        local Ex = not Ew
        local Ey = not Ev
        if Ey ~= false then
            Ey = Ex
        end
        if Ey then
            return true
        end
        local Ex_1 = tonumber(mO.kg) or 0
        local Ey_1 = Ev
        if Ey_1 then
            Ey_1 = u7(mO) < Value2
        end
        local Et_2 = Ew
        local Ex_2 = Ey_1
        if Et_2 then
            Et_2 = Ex_1 < Value
        end
        local Eu_2 = Et_2
        if Ev and Ew then
            return Ex_2 or Eu_2
        elseif Ev then
            return Ex_2
        else
            return Eu_2
        end
    end
    local function m3(m4)
        local EH = {}
        for k, v in pairs(m4.Inventory) do
            if mN(v) then
                local EI = v.uid
                if type(EI) ~= "string" then
                    EI = k
                end
                if type(EI) == "string" then
                    EH[#EH + 1] = { entry = v, uid = EI }
                end
            end
        end
        return EH
    end
    local function na(nb)
        local ER_1, ER_2, ER_3, ER_4
        local EQ_1, EQ_2, EQ_3, EQ_4
        if type(nb) ~= "string" then
            return false
        end
        EQ_1, ER_1 = uH(nb)
        if not EQ_1 then
            return false
        elseif not ER_1 then
            local ES_1 = uE()
            if not ES_1 then
                return false
            end
            ES_1:EquipTool(EQ_1)
            task.wait(0.25)
            EQ_2, ER_2 = uH(nb)
            if not EQ_2 or not ER_2 then
                return false
            end
            EQ_3, ER_3 = pcall(function()
                return SellFunctions.sellHeldItem:invoke():expect()
            end)
            local ES_3 = EQ_3 and type(ER_3) == "number"
            return ES_3
        else
            EQ_4, ER_4 = pcall(function()
                return SellFunctions.sellHeldItem:invoke():expect()
            end)
            local ES_4 = EQ_4 and type(ER_4) == "number"
            return ES_4
        end
    end
    local function nn(no)
        local EV = vl()
        if not EV then
            return
        end
        local EW = Options.SellTarget.Value == "Junk Only"
        local EX = uW.count(EV.Inventory)
        if EX <= 0 then
            return
        end
        local EY = m3(EV)
        local EZ = EW and #EY <= 0
        local E_ = not no
        local E__1
        if EZ and E_ then
            return
        end
        if not no then
            local Value = Options.SellMode.Value
            if Value == "Item Count" then
                E__1 = EX >= Options.SellItemCount.Value
            elseif Value == "Timer" then
                E__1 = os.clock() - mJ >= Options.SellInterval.Value
            elseif Value == "Junk Found" then
                E__1 = #EY > 0
            else
                E__1 = uW.isFull(EV)
            end
            if not E__1 then
                return
            end
        end
        local EX_1 = uU()
        local EZ_2 = e9() or EV.CurrentIsland
        local E__2 = EX_1
        local CFrame = nil
        if E__2 then
            E__2 = EV.CurrentIsland ~= Islands2.STARTER_ISLAND_ID
        end
        if E__2 then
            CFrame = EX_1.CFrame
        end
        local EX_2 = Toggles.AutoTravelIsland.Value and not hq(Islands2.STARTER_ISLAND_ID)
        if EX_2 then
            return
        end
        mJ = os.clock()
        if Toggles.SellTeleport.Value then
            local EX_3 = (vx(EV.CurrentIsland, "Sell"))
            local E4_1 = if EX_3 then 1 else 0
            local E2_1 = 2521 * E4_1 + 1897 * (1 - E4_1)
            local E3_1 = 527 * E4_1 + 2220 * (1 - E4_1)
            if not ((E2_1 * 1897 + E3_1 * 4001 + E2_1 * E3_1) % 16777213 == 8219431) then
                EX_3 = vx(Islands2.STARTER_ISLAND_ID, "Sell")
            end
            local EV_1 = EX_3
            if EV_1 then
                vW(EV_1:GetPivot().Position + Vector3.new(0, 4, 4))
                task.wait(0.3)
            end
        end
        local EV_2 = not EW
        local EX_4 = no
        local E4_2 = if EX_4 then 1 else 0
        local E2_2 = 3760 * E4_2 + 3995 * (1 - E4_2)
        local E3_2 = 3998 * E4_2 + 3451 * (1 - E4_2)
        if not ((E2_2 * 1949 + E3_2 * 130 + E2_2 * E3_2) % 16777213 == 6103247) then
            EX_4 = EV_2
        end
        if EX_4 then
            local EV_3 = uE()
            if EV_3 then
                EV_3:UnequipTools()
            end
            pcall(function()
                SellFunctions.sellInventory:invoke()
            end)
            task.wait(0.3)
        else
            for i, v in ipairs(EY) do
                if Library.Unloaded then
                    break
                end
                pcall(na, v.uid)
                task.wait(0.3)
            end
            local EV_4 = uE()
            if EV_4 then
                EV_4:UnequipTools()
            end
        end
        if Toggles.SellReturn.Value then
            if Toggles.AutoTravelIsland.Value and EZ_2 then
                hq(EZ_2)
            elseif fc() then
                ft()
                fH()
            elseif CFrame then
                pcall(uM, vB, CFrame)
            end
        end
    end
    local function nW(nX)
        local Fb = vx(nX.CurrentIsland, "Gear") or vx(Islands2.STARTER_ISLAND_ID, "Gear")
        if not Fb then
            return nil
        end
        local Fb_1 = uU()
        local Fb_2 = Fb_1 and Fb_1.CFrame
        vW(Fb:GetPivot().Position + Vector3.new(0, 4, 4))
        task.wait(0.3)
        return Fb_2
    end
    local function n6(n7)
        local Fo, Fp
        if eZ then
            return
        end
        Fo = vl()
        if not Fo then
            return
        end
        local Fq = Fo.Gold - Options.GoldReserve.Value
        if Fq <= 0 then
            return
        end
        local Fr = n7
        Fp = {}
        local Fv = if Fr then 1 else 0
        local Ft = 2182 * Fv + 274 * (1 - Fv)
        local Fu = 1701 * Fv + 1120 * (1 - Fv)
        if not ((Ft * 583 + Fu * 1584 + Ft * Fu) % 16777213 == 7678072) then
            Fr = Toggles.AutoBuyShovel.Value
        end
        if Fr then
            local Fr_1 = u1(vi.SHOVEL_TIER_ORDER, vi.Shovels, Fo.OwnedShovels, Fo.UnlockedIslands, Fq)
            if Fr_1 then
                table.insert(Fp, { "shovel", Fr_1 })
            end
        end
        local Fr_2 = n7
        local Fv_1 = if Fr_2 then 1 else 0
        local Ft_1 = 3601 * Fv_1 + 3039 * (1 - Fv_1)
        local Fu_1 = 2897 * Fv_1 + 265 * (1 - Fv_1)
        if not ((Ft_1 * 2936 + Fu_1 * 2447 + Ft_1 * Fu_1) % 16777213 == 11316379) then
            Fr_2 = Toggles.AutoBuySpray.Value
        end
        if Fr_2 then
            local Fr_3 = u1(u9.SPRAY_TIER_ORDER, u9.SprayBottles, Fo.OwnedSprays, Fo.UnlockedIslands, Fq)
            if Fr_3 then
                table.insert(Fp, { "spray", Fr_3 })
            end
        end
        if n7 or Toggles.AutoBuyDetector.Value then
            local Fr_5 = u1(Detectors.DETECTOR_TIER_ORDER, Detectors.Detectors, Fo.OwnedDetectors, Fo.UnlockedIslands, Fq)
            if Fr_5 then
                table.insert(Fp, { "detector", Fr_5 })
            end
        end
        if #Fp == 0 then
            return
        end
        eZ = true
        uA()
        pcall(function()
            local Ff
            if Toggles.ShopTeleport.Value then
                Ff = nW(Fo)
            end
            for i, v in ipairs(Fp) do
                local Fn = v
                pcall(function()
                    uz.buyGear:invoke(Fn[1], Fn[2])
                end)
                task.wait(0.4)
            end
            if Ff then
                if fc() then
                    ft()
                    fH()
                else
                    local Fg = uU()
                    if Fg then
                        Fg.CFrame = Ff
                    end
                end
            end
        end)
        eZ = false
    end
    local function oN()
        local Fz = vl()
        if not Fz then
            return
        end
        local Fw = vU(vi.SHOVEL_TIER_ORDER, Fz.OwnedShovels)
        if Fw and Fw ~= Fz.EquippedShovel then
            pcall(function()
                uz.equipGear:invoke("shovel", Fw)
            end)
        end
        local Fy = vU(u9.SPRAY_TIER_ORDER, Fz.OwnedSprays)
        if Fy and Fy ~= Fz.EquippedSpray then
            pcall(function()
                uz.equipGear:invoke("spray", Fy)
            end)
        end
        local Fx = vU(Detectors.DETECTOR_TIER_ORDER, Fz.OwnedDetectors)
        if Fx and Fx ~= Fz.EquippedDetector then
            pcall(function()
                uz.equipGear:invoke("detector", Fx)
            end)
        end
    end
    local o8 = 0
    o7 = 1
    Toggles.PriorityMode:OnChanged(function(o9)
        if o9 then
            o7 = 1
            eV = false
        end
    end)
    local function pc()
        return u8[Options.PriorityRoutine.Value] or u8["Dig, Clean then Sell"]
    end
    local function ph()
        if not Toggles.PriorityMode.Value then
            return nil
        end
        local FI = pc()
        return FI[o7], FI
    end
    local function pm()
        local FK = vl()
        if not FK then
            return false
        elseif uW.isFull(FK) then
            return true
        elseif Options.PrioritySwitch.Value == "Item Count" then
            return uW.count(FK.Inventory) >= Options.PrioritySwitchCount.Value
        else
            return false
        end
    end
    local function pr(ps)
        if ps == "dig" then
            return pm()
        elseif ps == "clean" then
            local FP_1 = not eV and not h3() and not ju()
            return FP_1
        elseif ps == "place" then
            local FP_2 = kR()
            local FQ_1 = Toggles.AutoReplace.Value and kX()
            local FQ_2 = not FQ_1
            local FS = not FP_2
            if FS ~= false then
                FS = FQ_2
            end
            if FS then
                return true
            end
            local FP_3 = vA() ~= nil and lB(true) == nil
            return FP_3
        elseif ps == "replace" then
            if not kX() then
                return true
            end
            local FP_4 = vA() ~= nil and k8() == nil
            return FP_4
        elseif ps == "sell" then
            local FP_5 = vl()
            local FQ_3 = FP_5 ~= nil and uW.count(FP_5.Inventory) <= 0
            return FQ_3
        else
            return true
        end
    end
    local function pN(pO)
        local FY_1
        local FX_1
        if pO == "dig" then
            eV = false
        elseif pO == "clean" then
            FX_1, FY_1 = pcall(i9)
            eV = FX_1 and FY_1 == true
        elseif pO == "place" then
            local FX_2 = (kR())
            if not FX_2 then
                local FY_2 = Toggles.AutoReplace.Value and kX()
                FX_2 = FY_2
            end
            local FY_3 = FX_2
            local FX_3 = Toggles.AutoTravelIsland.Value and FY_3 and not hq(Islands2.STARTER_ISLAND_ID)
            if FX_3 then
                return
            end
            pcall(function()
                l6(lB(true))
            end)
        elseif pO == "replace" then
            pcall(mB)
        elseif pO == "sell" then
            pcall(nn, true)
        end
    end
    connection3 = vX.Heartbeat:Connect(function(p2)
        if Library.Unloaded then
            return
        end
        local F4 = false
        if Toggles.PriorityMode.Value then
            if ph() == "dig" then
                F4 = true
                eV = false
            end
        elseif Toggles.AutoDig.Value then
            F4 = true
        end
        if not F4 then
            uA()
            return
        end
        pcall(ib, p2)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.35)
            if not Toggles.PriorityMode.Value then
                continue
            end
            local F6 = pc()
            if o7 > #F6 then
                o7 = 1
                o8 += 1
                local F7_1 = Toggles.PriorityBuyGear.Value and not eZ and not h6()
                if F7_1 then
                    pcall(n6, true)
                    pcall(oN)
                end
            end
            local F7_2 = F6[o7]
            if pr(F7_2) then
                o7 += 1
            else
                pN(F7_2)
            end
        end
    end)
    task.spawn(function()
        local Gb_1
        local Ga_1, Ga_2
        while not Library.Unloaded do
            task.wait(0.35)
            if Toggles.PriorityMode.Value then
                continue
            end
            if not Toggles.AutoClean.Value then
                eV = false
            else
                local F9 = eV
                local F9_1
                if not F9 then
                    Ga_1, Gb_1 = pcall(jH)
                    F9 = Ga_1 and Gb_1 == true
                end
                if F9 then
                    eV = true
                    F9_1, Ga_2 = pcall(i9)
                    eV = F9_1 and Ga_2 == true
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.PriorityMode.Value then
                continue
            end
            local Gf = not eV and not h6()
            if Gf then
                if Toggles.AutoPlace.Value or Toggles.AutoReplace.Value then
                    pcall(mn)
                end
                if Toggles.AutoSell.Value then
                    pcall(nn, false)
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(3)
            if Toggles.PriorityMode.Value then
                continue
            end
            local Gh = not eV and not eZ and not h6()
            if Gh then
                if Toggles.AutoBuyShovel.Value or Toggles.AutoBuySpray.Value or Toggles.AutoBuyDetector.Value then
                    pcall(n6)
                end
                if Toggles.AutoEquipGear.Value then
                    pcall(oN)
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            local Gj = vD(vV)
            local Gk = 0
            if Gj then
                for k in pairs(Gj.nodes) do
                    Gk += 1
                end
            end
            Label2:SetText(uD("Buried spots", tostring(Gk), vM))
            local Gj_1 = vD(v0)
            local Gk_1 = Gj_1
            local Gl = "idle"
            if Gk_1 then
                Gk_1 = Gj_1.session
            end
            if Gk_1 then
                Gl = Gj_1.session.phase or "active"
            end
            Label3:SetText(uD("Dig phase", Gl, vG))
            local Gj_2 = vl()
            if Gj_2 then
                local Gk_3 = uW.count(Gj_2.Inventory)
                Label4:SetText(uD("Backpack", string.format("%d / %d", Gk_3, uW.limitFor(Gj_2)), vP))
                local Gk_4 = 0
                for k, v in pairs(Gj_2.Inventory) do
                    if v.dirty == true then
                        Gk_4 += 1
                    end
                end
                Label5:SetText(uD("Dirty items", tostring(Gk_4), vG))
                Label7:SetText(uD("Gold", tostring(Gj_2.Gold), vP))
                local Gk_5 = vi.Shovels[Gj_2.EquippedShovel]
                local Gk_6 = Gk_5 and Gk_5.displayName or "none"
                Label8:SetText(uD("Shovel", Gk_6, vM))
                local Gk_7 = u9.SprayBottles[Gj_2.EquippedSpray]
                local Gk_8 = Gk_7 and Gk_7.displayName or "none"
                Label9:SetText(uD("Spray", Gk_8, vM))
                local Gk_9 = Detectors.Detectors[Gj_2.EquippedDetector]
                local Gk_10 = Gk_9 and Gk_9.displayName or "none"
                Label10:SetText(uD("Detector", Gk_10, vM))
            end
            if Toggles.PriorityMode.Value then
                local Gj_4 = pc()
                local Gk_11 = Gj_4[o7] or "-"
                Label11:SetText(uD("Stage", Gk_11, vG))
                Label12:SetText(uD("Routine", string.format("%d / %d", math.min(o7, #Gj_4), #Gj_4), vM))
            else
                Label11:SetText(uD("Stage", "off", vG))
                Label12:SetText(uD("Routine", "-", vM))
            end
            Label13:SetText(uD("Cycles", tostring(o8), vP))
            local Gj_5 = "idle"
            if eW then
                Gj_5 = "cleaning"
            else
                local Gk_12 = vD(vL)
                if Gk_12 then
                    if Gk_12.session then
                        Gj_5 = "cleaning"
                    elseif Gk_12.cleaning then
                        Gj_5 = "entering"
                    end
                end
            end
            Label6:SetText(uD("Clean", Gj_5, vM))
        end
    end)
end)()
GL_14:SetLibrary(Library)
GL_14:SetFolder("OuroborosHub")
GL_14:SaveDefault("Monochrome")
GL_14:ApplyToTab(wh.Settings)
GL_14:LoadDefault()
wi:SetLibrary(Library)
wi:IgnoreThemeSettings()
wi:SetIgnoreIndexes({ "MenuKeybind", "CleanTeleport", "CleanReturn" })
wi:SetFolder("OuroborosHub/dig-and-clean")
wi:BuildConfigSection(wh.Settings)
uO = true
wi:LoadAutoloadConfig()
uO = false
v_ = true
Options.PriorityDigMode:SetValue(Options.DigMode.Value)
v_ = false
task.spawn(function()
    while not Library.Unloaded do
        task.wait(10)
        if not v3 then
            vk()
        end
    end
end)
Library:OnUnload(function()
    uA()
    connection4:Disconnect()
    for i, v in ipairs(vp) do
        local GE = v
        pcall(function()
            GE:Disconnect()
        end)
    end
    connection3:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
end)
