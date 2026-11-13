local eX
local eP
local fa
local eS
local e2
local eV
local result
local eN
local eY
local e8
local Options
local eQ
local e3
local eT
local eW
local LocalPlayer
local Toggles
local eO
local e9
local e1
local eR
local e4
local eU
local OfferGui
local function fn48(D)
    return string.match(D, "^(%a%d+)")
end
local function fn59()
    print("Hack A Business unloaded")
end
local function autoAcceptLoop()
    while task.wait(0.3) do
        if fa.Unloaded then
            break
        end
        if Toggles.AutoAccept.Value and OfferGui.Enabled then
            local i8_1 = tonumber(Options.MinMoney.Value) or 0
            if e4 >= i8_1 then
                eP(true)
            else
                eP(false)
            end
        end
    end
end
local function fn74(bA)
    local hK = {}
    for k, v in bA.Value do
        if v then
            hK[eS(k)] = true
        end
    end
    return hK
end
local function fn88(be)
    local hE = eY()
    local hF = hE and be and typeof(firetouchinterest) == "function"
    if hF then
        firetouchinterest(hE, be, 0)
        firetouchinterest(hE, be, 1)
    end
end
local function fn119(cW)
    local Frame = OfferGui.Frame
    local i6 = cW and "Confirm" or "Cancel"
    e1(Frame:FindFirstChild(i6))
end
local function onOnClientEvent4(cZ, c_)
    e4 = eU.toNumber(c_)
end
local function onOnClientEvent2(ad)
    local f_ = {}
    for k, v in ad do
        local f0 = eO.get(v)
        if f0 then
            table.insert(f_, f0)
        end
    end
    e3.Areas = f_
end
local function fn260(bl)
    bl:AddLeftGroupbox("Discord"):AddButton({
        Text = "Join Discord For Dupe",
        Func = function()
            setclipboard(e8)
            fa:Notify("Copied Discord invite to clipboard")
        end
    })
end
local function fn282(aB)
    if not e3.Grid then
        return false
    end
    local gB = e3.Grid:getCellPosition(aB)
    if not gB then
        return false
    end
    for k, v in e3.Areas do
        local gC = v.CFrame:PointToObjectSpace(gB)
        local gD = gC.X - 2
        local gE = gC.Z + 2
        local gC_1 = v.Size.X / 2
        local gF = v.Size.Z / 2
        if -gC_1 <= gD and gD <= gC_1 and -gF <= gE and gE <= gF then
            return true
        end
    end
    return false
end
local function fn285()
    local Character = LocalPlayer.Character
    local hy = Character and Character:FindFirstChild("HumanoidRootPart")
    return hy
end
local function onOnClientEvent3(ak)
    e3.Stock = ak
end
local function fn318()
    local hg = {}
    local Character = LocalPlayer.Character
    for k, v in { LocalPlayer:FindFirstChild("Backpack"), Character } do
        if v then
            for i, child in v:GetChildren() do
                local hh_1 = child:IsA("Tool") and child:HasTag("ObjectTool")
                if hh_1 then
                    local hh_2 = tonumber(string.match(child.Name, "%(x(%d+)%)")) or 0
                    if hh_2 > 0 then
                        table.insert(hg, { UID = child:GetAttribute("ObjectUID"), Amount = hh_2 })
                    end
                end
            end
        end
    end
    return hg
end
local function autoLockLoop()
    while task.wait() do
        if fa.Unloaded then
            break
        end
        if Toggles.AutoLock.Value and e3.Plot then
            local LockPlot = e3.Plot:FindFirstChild("LockPlot")
            local iL = LockPlot and LockPlot:FindFirstChild("Pad")
            eN(iL)
            task.wait(15)
        else
            task.wait(1)
        end
    end
end
local function onOnClientEvent(Y)
    local fV = eO.get(Y)
    if fV then
        e3.Plot = fV
        e3.GridFloor = fV:WaitForChild("GridFloor")
        e3.Grid = eQ.new(e3.GridFloor, 4)
    end
end
local function autoTeleportLoop()
    local iN = 0
    while task.wait(0.5) do
        if fa.Unloaded then
            break
        end
        local iO = Toggles.AutoTeleport.Value and not OfferGui.Enabled and os.clock() > iN
        if iO then
            local Value = Options.OfferArea.Value
            local iP = Value and e9[Value]
            local iP_1 = eY()
            if iP and iP_1 then
                local iQ_1 = iP + Vector3.new(4, 4, 0)
                if (iP_1.Position - iQ_1).Magnitude > 40 then
                    iP_1.CFrame = CFrame.new(iQ_1)
                    iN = os.clock() + 3
                end
            end
        end
    end
end
local function autoCollectLoop()
    while task.wait() do
        if fa.Unloaded then
            break
        end
        if Toggles.AutoCollect.Value and e3.Plot then
            local Objects = e3.Plot:FindFirstChild("Objects")
            if Objects then
                for i, child in Objects:GetChildren() do
                    local iy_2 = fa.Unloaded
                    local iJ = if iy_2 then 1 else 0
                    local iH = 6 * iJ + 2371 * (1 - iJ)
                    local iI = 3628 * iJ + 3634 * (1 - iJ)
                    if not ((iH * 2478 + iI * 1976 + iH * iI) % 16777213 == 7205564) then
                        iy_2 = not Toggles.AutoCollect.Value
                    end
                    if iy_2 then
                        break
                    else
                        local attr = child:GetAttribute("ObjectUID")
                        local iz = attr and string.sub(attr, 1, 1) == "D"
                        if iz then
                            eN(child:FindFirstChild("Primary"))
                        end
                    end
                end
            end
            task.wait(Options.CollectDelay.Value)
        else
            task.wait(0.5)
        end
    end
end
local function fn455(aN)
    local gO, gP, gQ, gR, gS, gU, gW, gX, gZ, g0, g1, g3, g5, g6, g8, ha, hb
    local gT = 32
    while true do
        local gT_1 = 11683 - gT
        do
            if gT_1 < 11669 then
                if gT_1 < 11659 then
                    if gT_1 < 11655 then
                        if gT_1 < 11654 then
                            if gT_1 < 11651 then
                                if gT_1 < 10273 then
                                    break
                                elseif gT_1 < 11649 then
                                    if gT_1 < 11648 then
                                        break
                                    end
                                    gT = if gW <= gU then 17 else 6
                                elseif gT_1 < 11650 then
                                    if gT_1 == 11649 then
                                        gT = if gP then 12 else 19
                                    else
                                        gT = 15605
                                        continue
                                    end
                                else
                                    ha += 1
                                    gT = 29
                                end
                            elseif gT_1 < 11652 then
                                if gT_1 == 11651 then
                                    gT = if not e3.Grid then 0 else 31
                                else
                                    gT = 11680
                                    continue
                                end
                            elseif gT_1 < 11653 then
                                gO = eX()
                                gP = e3.Grid.Rows - 1
                                gW = 0
                                gU = gP
                                gT = 35
                            elseif gT_1 == 11653 then
                                gT = 4
                            else
                                gT = 11659
                                continue
                            end
                        else
                            gT = if ha <= g8 then 14 else 9
                        end
                    elseif gT_1 < 11658 then
                        if gT_1 < 11656 then
                            if gT_1 == 11655 then
                                gT = 18
                            else
                                gT = 11652
                                continue
                            end
                        elseif gT_1 < 11657 then
                            if gT_1 == 11656 then
                                g6 = g5
                                gT = 2
                            else
                                gT = 11651
                                continue
                            end
                        elseif gT_1 == 11657 then
                            gS = gR > e3.Grid.Cols - 1
                            gT = 8
                        else
                            gT = 11660
                            continue
                        end
                    else
                        gS = not eT({ Row = gQ, Col = gR })
                        gT = 5
                    end
                elseif gT_1 < 11664 then
                    if gT_1 < 11663 then
                        if gT_1 < 11661 then
                            if gT_1 < 11660 then
                                break
                            end
                            local hf = if g5 <= g3 then 1 else 0
                            local hd = 1045 * hf + 1676 * (1 - hf)
                            local he = 3178 * hf + 3482 * (1 - hf)
                            gT = if (hd * 755 + he * 2213 + hd * he) % 16777213 == 11142899 then 27 else 34
                        elseif gT_1 < 11662 then
                            gP = true
                            gQ = aN.Rows - 1
                            g5 = 0
                            g3 = gQ
                            gT = 23
                        else
                            gQ = gX + g6
                            gR = g1 + hb
                            gS = gQ > e3.Grid.Rows - 1
                            gT = if gS then 8 else 26
                        end
                    else
                        gS = gO[gQ .. "," .. gR]
                        gT = 11
                    end
                elseif gT_1 < 11666 then
                    if gT_1 < 11665 then
                        gT = 1
                    elseif gT_1 == 11665 then
                        gW += 1
                        gT = 35
                    else
                        gT = 8963
                        continue
                    end
                elseif gT_1 < 11667 then
                    gX = gW
                    gT = 7
                elseif gT_1 < 11668 then
                    if gT_1 == 11667 then
                        gT = 34
                    else
                        gT = 14314
                        continue
                    end
                else
                    gP = false
                    gT = 9
                end
            elseif gT_1 < 11676 then
                if gT_1 < 11674 then
                    if gT_1 < 11673 then
                        if gT_1 < 11671 then
                            if gT_1 < 11670 then
                                hb = ha
                                gT = 21
                            elseif gT_1 == 11670 then
                                gT = if g0 <= gZ then 3 else 28
                            else
                                gT = 11674
                                continue
                            end
                        elseif gT_1 < 11672 then
                            return { Row = gX, Col = g1 }
                        elseif gT_1 == 11672 then
                            gT = if gS then 5 else 25
                        else
                            gT = 15605
                            continue
                        end
                    elseif gT_1 == 11673 then
                        gT = 33
                    else
                        gT = 11679
                        continue
                    end
                elseif gT_1 < 11675 then
                    gT = if not gP then 16 else 30
                elseif gT_1 == 11675 then
                    gT = if gS then 11 else 20
                else
                    gT = 11664
                    continue
                end
            elseif gT_1 < 11680 then
                if gT_1 < 11679 then
                    if gT_1 < 11677 then
                        if gT_1 == 11676 then
                            gP = e3.Grid.Cols - 1
                            g0 = 0
                            gZ = gP
                            gT = 13
                        else
                            gT = 11661
                            continue
                        end
                    elseif gT_1 < 11678 then
                        if gT_1 == 11677 then
                            return nil
                        end
                        gT = 11652
                        continue
                    elseif gT_1 == 11678 then
                        gT = if gS then 15 else 10
                    else
                        gT = 11671
                        continue
                    end
                else
                    g5 += 1
                    gT = 23
                end
            elseif gT_1 < 11682 then
                if gT_1 < 11681 then
                    if gT_1 == 11680 then
                        g1 = g0
                        gT = 22
                    else
                        gT = 11649
                        continue
                    end
                elseif gT_1 == 11681 then
                    gQ = aN.Cols - 1
                    ha = 0
                    g8 = gQ
                    gT = 29
                else
                    gT = 15605
                    continue
                end
            elseif gT_1 < 11683 then
                g0 += 1
                gT = 13
            elseif gT_1 < 14314 then
                if gT_1 == 11683 then
                    return nil
                end
                gT = 8963
                continue
            else
                break
            end
        end
    end
end
local function fn467(cS)
    if not cS then
        return
    end
    if getconnections then
        for k, v in getconnections(cS.Activated) do
            if v.Function then
                task.spawn(v.Function)
            end
        end
    elseif firesignal then
        firesignal(cS.Activated)
    end
end
local function autoAreaLoop()
    while task.wait() do
        if fa.Unloaded then
            break
        end
        if Toggles.AutoArea.Value and e3.Plot then
            local GridAreas = e3.Plot:FindFirstChild("GridAreas")
            if GridAreas then
                for i, child in GridAreas:GetChildren() do
                    if fa.Unloaded or not Toggles.AutoArea.Value then
                        break
                    else
                        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
                        local il = tonumber(child.Name)
                        if ProximityPrompt and ProximityPrompt.Enabled and il then
                            e2.BuyArea:FireServer(il, e3.Plot)
                            task.wait(Options.AreaDelay.Value)
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end
local function fn481()
    local f8 = {}
    if not e3.Plot then
        return f8
    end
    local Objects = e3.Plot:FindFirstChild("Objects")
    if not Objects then
        return f8
    end
    for i, child in Objects:GetChildren() do
        local attr3 = child:GetAttribute("ObjectUID")
        local attr2 = child:GetAttribute("Pos.Row")
        local attr = child:GetAttribute("Pos.Col")
        local gc = attr3 and result[attr3]
        local f9_2 = gc
        if gc then
            gc = attr2
        end
        if gc and attr then
            local gc_1 = f9_2.Size.Rows - 1
            local gq = 0
            while gq <= gc_1 do
                local gr = gq
                local gc_2 = f9_2.Size.Cols - 1
                local gv = 0
                while gv <= gc_2 do
                    local gw = gv
                    f8[attr2 + gr .. "," .. attr + gw] = true
                    gv += 1
                end
                gq += 1
            end
        end
    end
    return f8
end
local function autoBuyLoop()
    while task.wait() do
        if fa.Unloaded then
            break
        end
        if Toggles.AutoBuy.Value then
            local hS = eW(Options.BuyAntennas)
            for k in eW(Options.BuyServers) do
                hS[k] = true
            end
            for k, v in e3.Stock do
                if fa.Unloaded or not Toggles.AutoBuy.Value then
                    break
                end
                if v.Stock and v.Stock > 0 and hS[v.UID] then
                    e2.BuyObject:FireServer(v.UID)
                    task.wait(Options.BuyDelay.Value)
                end
            end
        end
        task.wait(0.5)
    end
end
local function autoPlaceLoop()
    while task.wait() do
        if fa.Unloaded then
            break
        end
        if Toggles.AutoPlace.Value then
            for k, v in eR() do
                if fa.Unloaded or not Toggles.AutoPlace.Value then
                    break
                else
                    local h4_1 = v.UID and result[v.UID]
                    local h4_2 = v.UID and string.sub(v.UID, 1, 1) == "F"
                    local h6 = h4_2
                    if h4_2 then
                        h4_2 = Toggles.PlaceAntennas.Value
                    end
                    local h7 = h4_2
                    local ij = if h7 then 1 else 0
                    local ih = 2254 * ij + 37 * (1 - ij)
                    local ii = 318 * ij + 156 * (1 - ij)
                    if not ((ih * 149 + ii * 3484 + ih * ii) % 16777213 == 2160530) then
                        local h4_3 = not h6
                        if h4_3 ~= false then
                            h4_3 = Toggles.PlaceServers.Value
                        end
                        h7 = h4_3
                    end
                    if h4_1 and h7 then
                        local h4_5 = eV(h4_1.Size)
                        if h4_5 then
                            e2.PlaceObject:FireServer(v.UID, h4_5)
                            task.wait(Options.PlaceDelay.Value)
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end
local function onUnload()
    fa:Unload()
end
eN = nil
eO = nil
eP = nil
eQ = nil
eR = nil
eS = nil
eT = nil
eU = nil
eV = nil
eW = nil
eX = nil
eY = nil
Toggles = nil
Options = nil
e1 = nil
e2 = nil
e3 = nil
e4 = nil
result = nil
LocalPlayer = nil
OfferGui = nil
e8 = nil
e9 = nil
fa = nil
local e_
local fm_1
local fl_1
local fk_1
local fj_1
local fi_1
local fh_1
local fg_1
local Utils, fd_2
local ff_1
local Buyers
local fb_1
local fo_6
fb_1, fh_1, fg_1, fi_1, LocalPlayer, ff_1, e2, e_, Utils, eU, eQ, eO, fa, fm_1, fl_1, e8, result, fk_1, fj_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local fe = 42
repeat
    local fn_1 = (fe * 5 + 2) % 11 + 1
    if fn_1 <= 6 then
        if fn_1 <= 3 then
            if fn_1 <= 2 then
                if fn_1 <= 1 then
                    local fo_1 = {
                        "zvzkyp",
                        "xfezycbzb",
                        "eqwf",
                        "csqogkuggs",
                        "vclnikwglez",
                        "uqtcbafl",
                        "oabjavc",
                        "tthn",
                        "kmuhde",
                        "ibdjdveqkvv"
                    }
                    local jM = fe
                    local fp_1 = fo_1[jM % 10 + 1]
                    if fp_1:len() >= fp_1:gsub("(.)", "%1%1", jM % 3 % 2 + 1):len() then
                        fg_1 = "https://discord.gg/ehKVq7pf7v"
                    else
                        e8 = "https://discord.gg/ehKVq7pf7v"
                    end
                    fe = (fe + 42) % 44
                else
                    if (fe * 1 + 3) * 9 % 4 == ((fe * 1 + 3) * 9 + 14) % 4 then
                        e2 = result:WaitForChild("FetchObjects"):InvokeServer()
                    else
                        result = e2:WaitForChild("FetchObjects"):InvokeServer()
                    end
                    fe = (fe + 42) % 44
                end
            else
                if fe * 48209449 + 3 + 5 <= fe * 48209449 + 3 + 5 + 3 then
                    fk_1 = {}
                    fj_1 = {}
                else
                    fj_1 = {}
                    fk_1 = {}
                end
                fe = (fe + 42) % 44
            end
        elseif fn_1 <= 5 then
            if fn_1 <= 4 then
                local fo_2 = (vector.create((fe * 2 + 2) % 11 + 1, (fe * 10 + 4) % 13 + 1, (fe * 13 + 9) % 17 + 1))
                local fp_2 = (vector.create((fe * 4 + 6) % 11 + 1, (fe * 5 + 9) % 13 + 1, (fe * 9 + 7) % 17 + 1))
                local fq = (vector.create((fe * 5 + 4) % 11 + 1, (fe * 6 + 7) % 13 + 1, (fe * 1 + 17) % 17 + 1))
                local fr = (vector.create((fe * 4 + 6) % 11 + 1, (fe * 2 + 12) % 13 + 1, (fe * 5 + 8) % 17 + 1))
                if vector.dot(vector.cross(fo_2, fp_2), (vector.cross(fq, fr))) == vector.dot(fo_2, fq) * vector.dot(fp_2, fr) - vector.dot(fo_2, fr) * vector.dot(fp_2, fq) then
                    fb_1 = game:GetService("Players")
                else
                    fj_1 = game:GetService("Players")
                end
                fe = (fe + 20) % 44
            else
                local fo_3 = (vector.create((fe * 4 + 2) % 11 + 1, (fe * 11 + 9) % 13 + 1, (fe * 15 + 6) % 17 + 1))
                local fp_3 = (vector.create((fe * 4 + 1) % 11 + 1, (fe * 2 + 8) % 13 + 1, (fe * 3 + 14) % 17 + 1))
                local jQ = vector.cross(fo_3, fp_3)
                local jR = vector.dot(fo_3, fp_3)
                if vector.dot(jQ, jQ) + jR * jR == vector.dot(fo_3, fo_3) * vector.dot(fp_3, fp_3) + 5 then
                    game:GetService("ReplicatedStorage")
                else
                    fh_1 = game:GetService("ReplicatedStorage")
                end
                fe = (fe + 20) % 44
            end
        else
            local j1 = bit32.rrotate(bit32.bxor(bit32.lrotate(fe, 17), string.byte(tostring(Utils))), 5)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(j1, 2146301771), 1212403029), (bit32.bxor(bit32.band(j1, 2148665524), 4171212595))), 1212403029), 4171212595) == j1 then
                fg_1 = game:GetService("RunService")
                fi_1 = game:GetService("Workspace")
            else
                fi_1 = game:GetService("RunService")
                fg_1 = game:GetService("Workspace")
            end
            fe = (fe + 31) % 44
        end
    elseif fn_1 <= 9 then
        if fn_1 <= 8 then
            if fn_1 <= 7 then
                local fo_4 = {
                    "gxtdw",
                    "jxaftwvrpz",
                    "illzigexby",
                    "ktdctmaqyna",
                    "raykgsmafw",
                    "qdxqympeghl",
                    "doh",
                    "cqhhcylbwkb"
                }
                local j2 = fe
                local fp_4 = fo_4[j2 % 8 + 1]
                if fp_4:len() <= fp_4:gsub("(.)", "%1%1", j2 % 3 % 2 + 1):len() then
                    LocalPlayer = fb_1.LocalPlayer
                else
                    fb_1 = LocalPlayer.LocalPlayer
                end
                fe = (fe + 20) % 44
            else
                if fe * 20666459 + 13 + 5 >= fe * 20666459 + 13 + 5 + 2 then
                    fh_1 = ff_1:WaitForChild("Events")
                else
                    ff_1 = fh_1:WaitForChild("Events")
                end
                fe = (fe + 9) % 44
            end
        else
            local fo_5 = {
                "rgjaklci",
                "xmnkwvwu",
                "vwyp",
                "qfcma",
                "jhdvhxk",
                "xfe",
                "neksfyjy",
                "gdj",
                "mien",
                "welqxlzc",
                "egv",
                "fmpgumva"
            }
            local jN = fe
            local fp_5 = fo_5[jN % 12 + 1]
            local fz = if fp_5:len() <= fp_5:reverse():rep(jN % 3 + 2):len() then 1 else 0
            if fz == 1 then
                e2 = ff_1:WaitForChild("ToServer")
            else
                ff_1 = e2:WaitForChild("ToServer")
            end
            fe = (fe + 20) % 44
        end
    elseif fn_1 <= 10 then
        if fe * 131208777 + 6 + 2 <= fe * 131208777 + 6 + 2 + 4 then
            e_ = ff_1:WaitForChild("ToClient")
            Utils = fh_1:WaitForChild("Utils")
            eU = require(Utils:WaitForChild("Bignum"))
            eQ = require(Utils:WaitForChild("GridLayout"))
            eO = require(Utils:WaitForChild("Replicate"))
        else
            ff_1 = fh_1:WaitForChild("ToClient")
            e_ = Utils:WaitForChild("Utils")
            eQ = require(e_:WaitForChild("Bignum"))
            eO = require(e_:WaitForChild("GridLayout"))
            eU = require(e_:WaitForChild("Replicate"))
        end
        fe = (fe + 42) % 44
    else
        if (not fg_1 or not eQ or fh_1 and ff_1) and (fg_1 or not ff_1 or not eQ and result) and (result and fh_1 and (eQ or fb_1) and (fh_1 and ff_1 or fg_1 and not fh_1)) and (result and not ff_1 and (not fg_1 or not fh_1) and ((ff_1 or fg_1) and (fg_1 and not fb_1)) or (result and fg_1 or (not fb_1 or ff_1)) and ((fg_1 or not result) and (not fh_1 or fh_1))) and not ((not fg_1 or not eQ or fh_1 and ff_1) and (fg_1 or not ff_1 or not eQ and result) and (result and fh_1 and (eQ or fb_1) and (fh_1 and ff_1 or fg_1 and not fh_1)) and (result and not ff_1 and (not fg_1 or not fh_1) and ((ff_1 or fg_1) and (fg_1 and not fb_1)) or (result and fg_1 or (not fb_1 or ff_1)) and ((fg_1 or not result) and (not fh_1 or fh_1)))) then
            fl_1 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
            fm_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
            fa = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
        else
            fa = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
            fm_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
            fl_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
        end
        fe = (fe + 20) % 44
    end
until (fe * 43 + 0) % 44 == 2
for k, v in result do
    if string.sub(k, 1, 1) == "F" then
        table.insert(fk_1, string.format("%s | %s", k, v.Name))
    elseif string.sub(k, 1, 1) == "D" then
        table.insert(fj_1, string.format("%s | %s", k, v.Name))
    end
end
Buyers, fd_2, e9, eS = nil, nil, nil, nil
local fb_2 = 0
repeat
    local fe_1 = (fb_2 * 1 + 1) % 3 + 1
    if fe_1 <= 2 then
        if fe_1 <= 1 then
            if fb_2 * 125435399 + 11 + 4 >= fb_2 * 125435399 + 11 + 4 + 4 then
                e9 = {}
                fd_2 = {}
            else
                fd_2 = {}
                e9 = {}
            end
            fb_2 = (fb_2 + 16) % 24
        else
            local j3 = bit32.rrotate(bit32.bxor(bit32.lrotate(fb_2, 13), string.byte(tostring(e9))), 30)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(j3, 745157469), 2002199810), (bit32.bxor(bit32.band(j3, 3549809826), 3231788161))), 2002199810), 3231788161) ~= j3 then
                table.sort(eS)
                table.sort(fk_1)
                fj_1 = fn48
            else
                table.sort(fk_1)
                table.sort(fj_1)
                eS = fn48
            end
            fb_2 = (fb_2 + 13) % 24
        end
    else
        local fe_2 = {
            "ucckgzqlspl",
            "vkhwifslfnsm",
            "hgmdp",
            "nkzgr",
            "cqkwiui",
            "plqp",
            "wlbuyubbiq",
            "akrgqwmw",
            "lezidvpmoic",
            "vinmisnmiy",
            "rmkiiucdg",
            "aoeb",
            "pzeyl",
            "vrqfue",
            "plumwlx"
        }
        if fe_2[(fb_2 * 82 + 33) % 15 + 1] <= fe_2[(fb_2 * 82 + 33) % 15 + 1] then
            Buyers = fi_1:WaitForChild("SellRoad"):WaitForChild("Buyers")
        else
            fi_1 = Buyers:WaitForChild("SellRoad"):WaitForChild("Buyers")
        end
        fb_2 = (fb_2 + 13) % 24
    end
until (fb_2 * 7 + 18) % 24 == 0
for i, child in Buyers:GetChildren() do
    local fb_3 = child:FindFirstChild("Part") or child:FindFirstChildWhichIsA("BasePart", true)
    if fb_3 then
        table.insert(fd_2, child.Name)
        e9[child.Name] = fb_3.Position
    end
end
e3, eX, eT, eV, eR, eY, eN = nil, nil, nil, nil, nil, nil, nil
table.sort(fd_2)
e3 = { Plot = nil, GridFloor = nil, Grid = nil, Areas = {}, Stock = {} }
local function fb_4()
    local fQ
    fQ = nil
    local fT_1
    fQ = nil
    local connection = e_.SyncPlot.OnClientEvent:Connect(function(P)
        fQ = P
    end)
    e2.RequestPlot:FireServer()
    local fS = os.clock()
    repeat
        task.wait()
        fT_1 = fQ or os.clock() - fS > 5
    until fT_1
    connection:Disconnect()
    if not fQ then
        return
    end
    e3.Plot = eO.get(fQ)
    e3.GridFloor = e3.Plot:WaitForChild("GridFloor")
    e3.Grid = eQ.new(e3.GridFloor, 4)
end
e_.SyncPlot.OnClientEvent:Connect(onOnClientEvent)
e_.SyncPlotAreas.OnClientEvent:Connect(onOnClientEvent2)
e_.SyncStock.OnClientEvent:Connect(onOnClientEvent3)
fb_4()
e2.RequestPlotAreas:FireServer()
eX = fn481
eT = fn282
eV = fn455
eR = fn318
eY = fn285
eN = fn88
local Window = fa:CreateWindow({
    Title = "Hack A Business",
    Footer = "Ouroboros Hub",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local fh_2 = { Main = Window:AddTab("Main", "bot"), ["UI Settings"] = Window:AddTab("UI Settings", "settings") }
for k, v in fh_2 do
    fn260(v)
end
Options, Toggles, OfferGui, e4, fo_6, eW, e1, eP = nil, nil, nil, nil, nil, nil, nil, nil
local AutoBuyGroup = fh_2.Main:AddLeftGroupbox("Auto Buy")
AutoBuyGroup:AddDropdown("BuyAntennas", { Text = "Antennas", Values = fk_1, Default = {}, Multi = true })
AutoBuyGroup:AddDropdown("BuyServers", { Text = "Servers", Values = fj_1, Default = {}, Multi = true })
AutoBuyGroup:AddSlider("BuyDelay", { Text = "Buy Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 1, Suffix = "s" })
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
local AutoPlaceGroup = fh_2.Main:AddRightGroupbox("Auto Place")
AutoPlaceGroup:AddToggle("PlaceAntennas", { Text = "Place Antennas", Default = true })
AutoPlaceGroup:AddToggle("PlaceServers", { Text = "Place Servers", Default = true })
AutoPlaceGroup:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 0.6, Min = 0.2, Max = 3, Rounding = 1, Suffix = "s" })
AutoPlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
local PlotAreasGroup = fh_2.Main:AddRightGroupbox("Plot Areas")
PlotAreasGroup:AddToggle("AutoArea", { Text = "Auto Buy Areas", Default = false })
PlotAreasGroup:AddSlider("AreaDelay", { Text = "Area Delay", Default = 1, Min = 0.3, Max = 5, Rounding = 1, Suffix = "s" })
local ServersGroup = fh_2.Main:AddLeftGroupbox("Servers")
ServersGroup:AddToggle("AutoCollect", { Text = "Auto Collect Servers", Default = false })
ServersGroup:AddSlider("CollectDelay", { Text = "Collect Delay", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
ServersGroup:AddToggle("AutoLock", { Text = "Auto Lock Plot", Default = false })
local SellingGroup = fh_2.Main:AddRightGroupbox("Selling")
if (not OfferGui and AutoBuyGroup and (not fo_6 or AutoBuyGroup) or OfferGui and fo_6 and (not AutoBuyGroup and eP) or (not AutoBuyGroup and OfferGui or (not eW or eP)) and (not AutoBuyGroup and not AutoBuyGroup or not OfferGui and OfferGui)) and not (not OfferGui and AutoBuyGroup and (not fo_6 or AutoBuyGroup) or OfferGui and fo_6 and (not AutoBuyGroup and eP) or (not AutoBuyGroup and OfferGui or (not eW or eP)) and (not AutoBuyGroup and not AutoBuyGroup or not OfferGui and OfferGui)) then
    fa:AddDropdown("OfferArea", { Default = Options[1], Values = Options, Text = "Offer Area", Multi = false })
    fa:AddToggle("AutoTeleport", { Text = "Teleport To Offer Area", Default = false })
    fa:AddToggle("AutoAccept", { Text = "Auto Accept Offers", Default = false })
    fa:AddInput("MinMoney", { Finished = true, Numeric = true, Text = "Min Money", Default = "0" })
else
    SellingGroup:AddDropdown("OfferArea", { Text = "Offer Area", Values = fd_2, Default = fd_2[1], Multi = false })
    SellingGroup:AddToggle("AutoTeleport", { Text = "Teleport To Offer Area", Default = false })
    SellingGroup:AddToggle("AutoAccept", { Text = "Auto Accept Offers", Default = false })
    SellingGroup:AddInput("MinMoney", { Text = "Min Money", Default = "0", Numeric = true, Finished = true })
    Options = fa.Options
end
Toggles = fa.Toggles
eW = fn74
task.spawn(autoBuyLoop)
task.spawn(autoPlaceLoop)
task.spawn(autoAreaLoop)
task.spawn(autoCollectLoop)
task.spawn(autoLockLoop)
OfferGui = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("OfferGui")
task.spawn(autoTeleportLoop)
e4 = 0
e1 = fn467
eP = fn119
e_.Offer.OnClientEvent:Connect(onOnClientEvent4)
task.spawn(autoAcceptLoop)
local MenuGroup = fh_2["UI Settings"]:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddButton("Unload", onUnload)
fa.ToggleKeybind = Options.MenuKeybind
fa:OnUnload(fn59)
fm_1:SetLibrary(fa)
fl_1:SetLibrary(fa)
fm_1:SetFolder("OuroborosHub")
fl_1:SetFolder("OuroborosHub/HackABusiness")
fl_1:IgnoreThemeSettings()
fl_1:SetIgnoreIndexes({ "MenuKeybind" })
fm_1:SaveDefault("Mint")
fm_1:ApplyToTab(fh_2["UI Settings"])
fm_1:LoadDefault()
fl_1:BuildConfigSection(fh_2["UI Settings"])
fl_1:LoadAutoloadConfig()
