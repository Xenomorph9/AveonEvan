local fns = {}
local CW
local Be
local BW
local Ck
local C1
local Bk
local CJ
local BJ
local Cq
local A1
local A7
local BP
local Bw
local Cd
local CC
local BC
local Cj
local C0
local Library
local C6
local B6
local Cc
local Bc
local CB
local BB
local Ci
local Bi
local B_
local CH
local Toggles
local Co
local C5
local B5
local CN
local A5
local Bu
local CT
local BA
local CZ
local Bh
local BZ
local CG
local BG
local Cn
local C4
local A4
local BM
local Bt
local Ba
local BS
local CS
local Cz
local Options
local CF
local Cm
local B3
local Cs
local Bs
local B9
local CR
local A9
local Cy
local By
local Cf
local CX
local Bf
local BX
local CE
local Cl
local C2
local CK
local Cr
function fns.fn44(bc, bd)
    if bc.price ~= bd.price then
        return bc.price < bd.price
    end
    return bc.sort < bd.sort
end
function fns.fn77(b8)
    if b8 then
        Bt[#Bt + 1] = b8
    end
    return b8
end
function fns.fn96(cy)
    local DiscordGroup = cy:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = CZ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = CZ })
end
function fns.fn159(ah)
    local EI = type(ah) ~= "string" or ah == "" or C0[ah]
    if EI then
        return
    end
    C0[ah] = true
    CW[#CW + 1] = { id = ah, name = Be(ah) }
end
function fns.fn335()
    A9(B_, "Copied Discord invite to clipboard")
end
function fns.fn432(aa)
    local EF = Bs[aa]
    if EF and EF.Name then
        return EF.Name
    end
    return aa:gsub("(%l)(%u)", "%1 %2"):gsub("^%s*", ""):gsub("%s*$", "")
end
function fns.fn534(F, G)
    local ED = A4(G)
    if ED == nil then
        return (("%* | ?"):format(F))
    end
    return (("%* | %*"):format(F, ED))
end
function fns.fn576(aA, aB)
    if Bi[aA] then
        return
    end
    Bi[aA] = true
    local EN = #Bf + 1
    Bf[EN] = { id = aA, name = aB.Name or aA }
end
function fns.fn593(bX, bY)
    if bX.id == "NormalSoil" then
        return true
    elseif bY.id == "NormalSoil" then
        return false
    else
        return bX.name < bY.name
    end
end
function fns.fn769(cm, cn, co)
    return string.format("<b>%s</b> %s %s", cm, CN("-", "#5a6070"), CN(cn, co))
end
function fns.fn1012(cj, ck)
    return string.format('<font color="%s">%s</font>', ck, cj)
end
function fns.fn1018(cb, cc)
    if setclipboard then
        setclipboard(cb)
    elseif toclipboard then
        toclipboard(cb)
    end
    Library:Notify(cc)
end
function fns.fn1132(bx)
    if bx == "NormalSoil" then
        return "Hoed Ground"
    elseif bx == "Mound" then
        return "Mound"
    else
        return bx:gsub("(%l)(%u)", "%1 %2"):gsub("^%s*", ""):gsub("%s*$", "")
    end
end
function fns.fn1233(aK, aL)
    return aK.name < aL.name
end
function fns.fn1473(bB)
    local E_ = type(bB) ~= "string" or bB == "" or Cs[bB]
    if E_ then
        return
    end
    Cs[bB] = true
    Cl[#Cl + 1] = { id = bB, name = CB(bB) }
end
function fns.fn1493(a_, a0)
    if a_.price ~= a0.price then
        return a_.price < a0.price
    end
    return a_.sort < a0.sort
end
function fns.fn1501(bp, bq)
    if bp.price ~= bq.price then
        return bp.price < bq.price
    end
    return bp.sort < bq.sort
end
function fns.fn1540(ar, as)
    return ar.name < as.name
end
function fns.fn1549(D)
    if typeof(D) == "NumberRange" then
        return D.Min
    end
    if type(D) == "number" then
        return D
    end
end
A1 = nil
A4 = nil
A5 = nil
A7 = nil
A9 = nil
Ba = nil
Bc = nil
Be = nil
Bf = nil
Bh = nil
Bi = nil
Bk = nil
fns.Br = nil
Bs = nil
Bt = nil
Bu = nil
Bw = nil
fns.Bx = nil
By = nil
Options = nil
BA = nil
BB = nil
BC = nil
BG = nil
Toggles = nil
BJ = nil
BM = nil
local A0, A2, A3, A6, A8, Bb, Boundaries, Bg, Bj, Bl, Bm, Bn, Bo, Bp, Bq, Bv, BD, BE, BF, BI, BK, BL, BN
BP = nil
BS = nil
BW = nil
BX = nil
BZ = nil
B_ = nil
Library = nil
B3 = nil
B5 = nil
B6 = nil
B9 = nil
Cc = nil
Cd = nil
Cf = nil
Ci = nil
Cj = nil
Ck = nil
Cl = nil
Cm = nil
Cn = nil
Co = nil
Cq = nil
Cr = nil
Cs = nil
Cy = nil
Cz = nil
local SaveManager, BQ, BR, BT, BU, ExpansionBuy, BY, StoreAction, B2, B4, B7, B8, Ca, Cb, Ce, Cg, Ch, CropFertilize, Ct, Cu, Cv, CropPlace, Cx, CA
CB = nil
CC = nil
CE = nil
CF = nil
CG = nil
CH = nil
CJ = nil
CK = nil
CN = nil
CR = nil
CS = nil
CT = nil
CW = nil
CX = nil
CZ = nil
C0 = nil
C1 = nil
C2 = nil
C4 = nil
C5 = nil
C6 = nil
local CD, CI, CL, CM, CO, CP, VirtualUser, UserInputService, CV, RunService, C_, C3
CD = nil
CI = nil
CL = nil
CM = nil
CO = nil
CP = nil
VirtualUser = nil
UserInputService = nil
CV = nil
RunService = nil
C_ = nil
C3 = nil
A0, fns.TW_73_1, RunService, UserInputService, VirtualUser, CM, CG, CD, Cv, Ct, Cn, Cf, fns.TW_15_1, B7, B_, BT, BN, fns.TW_18_1, By, Bs, fns.TW_59_1, fns.TW_46_1, Boundaries, A8, CH, CE, CropPlace, Cu, CropFertilize, Cg, Cb, B8, StoreAction, ExpansionBuy, BQ, BI, BB, Bu, fns.TW_5_1, Bh, A4, fns.TW_32_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local TW_1 = 147
repeat
    local TW_77_1 = (TW_1 * 6 + 2) % 23 + 1
    if TW_77_1 <= 12 then
        if TW_77_1 <= 6 then
            if TW_77_1 <= 3 then
                if TW_77_1 <= 2 then
                    if TW_77_1 <= 1 then
                        local TW_64_1 = {
                            "rrcx",
                            "tza",
                            "dswqsj",
                            "rmisoqxhg",
                            "jvapoho",
                            "qclaavnwz",
                            "wjg",
                            "qcylqcg",
                            "yjflfqd",
                            "jesaygn",
                            "clxbrswqur",
                            "rybbng"
                        }
                        if TW_64_1[(TW_1 * 58 + 89) % 12 + 1] < TW_64_1[(TW_1 * 58 + 89) % 12 + 1] then
                            fns.TW_18_1 = require(Boundaries:WaitForChild("Modules"):WaitForChild("Boundaries"))
                        else
                            Boundaries = require(fns.TW_18_1:WaitForChild("Modules"):WaitForChild("Boundaries"))
                        end
                        TW_1 = (TW_1 + 165) % 184
                    else
                        local TW_64_2 = { "qgxd", "jhmzb", "pkwfdc", "jyrimuqek", "mwpvjesd", "xrb", "rgdnsfgovjd", "ljj" }
                        if TW_64_2[(TW_1 * 1 + 3) % 8 + 1] < TW_64_2[(TW_1 * 1 + 3) % 8 + 1] then
                            By = A8.Network
                        else
                            A8 = By.Network
                        end
                        TW_1 = (TW_1 + 142) % 184
                    end
                else
                    local TW_64_3 = { "tbiopyjt", "urlqdqrnb", "jjbhc", "lgsxk", "pqsxy", "ogtbopacznj", "uwg", "oiyc" }
                    local Uu = TW_1
                    local TW_50_1 = TW_64_3[Uu % 8 + 1]
                    if TW_50_1:len() >= TW_50_1:reverse():rep(Uu % 3 + 2):len() then
                        CE = fns.fn1549
                        A4 = fns.fn534
                        fns.TW_15_1 = require(fns.TW_32_1:WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("DataReplicationService"))
                        CH = require(fns.TW_32_1:WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("PlotReplicationService"))
                    else
                        A4 = fns.fn1549
                        fns.TW_32_1 = fns.fn534
                        CH = require(fns.TW_15_1:WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("DataReplicationService"))
                        CE = require(fns.TW_15_1:WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("PlotReplicationService"))
                    end
                    TW_1 = (TW_1 + 27) % 184
                end
            elseif TW_77_1 <= 5 then
                if TW_77_1 <= 4 then
                    local TW_64_4 = (vector.create((TW_1 * 3 + 3) % 11 + 1, (TW_1 * 10 + 6) % 13 + 1, (TW_1 * 3 + 2) % 17 + 1))
                    local TW_50_2 = (vector.create((TW_1 * 2 + 1) % 11 + 1, (TW_1 * 10 + 13) % 13 + 1, (TW_1 * 5 + 11) % 17 + 1))
                    local Uo = vector.dot(TW_64_4, TW_50_2)
                    if Uo * Uo >= vector.dot(TW_64_4, TW_64_4) * vector.dot(TW_50_2, TW_50_2) + 1 then
                        A8 = CropPlace.CropPlace
                    else
                        CropPlace = A8.CropPlace
                    end
                    TW_1 = (TW_1 + 73) % 184
                else
                    local TW_64_5 = (vector.create((TW_1 * 7 + 6) % 11 + 1, (TW_1 * 4 + 4) % 13 + 1, (TW_1 * 6 + 9) % 17 + 1))
                    local TW_50_3 = (vector.create((TW_1 * 6 + 2) % 11 + 1, (TW_1 * 3 + 4) % 13 + 1, (TW_1 * 7 + 3) % 17 + 1))
                    local VM = vector.cross(TW_64_5, TW_50_3)
                    local VN = vector.dot(TW_64_5, TW_50_3)
                    if vector.dot(VM, VM) + VN * VN == vector.dot(TW_64_5, TW_64_5) * vector.dot(TW_50_3, TW_50_3) then
                        Cu = A8.CropWater
                        CropFertilize = A8.CropFertilize
                    else
                        A8 = CropFertilize.CropWater
                        Cu = CropFertilize.CropFertilize
                    end
                    TW_1 = (TW_1 + 4) % 184
                end
            else
                if TW_1 * 40505957 + 3 + 6 >= TW_1 * 40505957 + 3 + 6 + 2 then
                    A8 = B8.CropPesticide
                    Cg = B8.CropRemove
                    Cb = B8.Dig
                else
                    Cg = A8.CropPesticide
                    Cb = A8.CropRemove
                    B8 = A8.Dig
                end
                TW_1 = (TW_1 + 27) % 184
            end
        elseif TW_77_1 <= 9 then
            if TW_77_1 <= 8 then
                if TW_77_1 <= 7 then
                    local TW_64_6 = (vector.create((TW_1 * 4 + 3) % 11 + 1, (TW_1 * 11 + 9) % 13 + 1, (TW_1 * 1 + 9) % 17 + 1))
                    local TW_50_4 = (vector.create((TW_1 * 7 + 7) % 11 + 1, (TW_1 * 3 + 13) % 13 + 1, (TW_1 * 7 + 3) % 17 + 1))
                    local TW_37_1 = (vector.create((TW_1 * 6 + 2) % 11 + 1, (TW_1 * 1 + 2) % 13 + 1, (TW_1 * 1 + 13) % 17 + 1))
                    if vector.dot(vector.cross(TW_64_6, TW_50_4), TW_37_1) == vector.dot(vector.cross(TW_50_4, TW_37_1), TW_64_6) then
                        StoreAction = A8.StoreAction
                    else
                        A8 = StoreAction.StoreAction
                    end
                    TW_1 = (TW_1 + 27) % 184
                else
                    local TW_64_7 = { "qfvnixwh", "iclwvxye", "xdp", "szhvcbuqw", "ehptey", "hkye", "xpwfjwiz", "bgcv", "jdpzackpjp" }
                    local VS = TW_1
                    local TW_50_5 = TW_64_7[VS % 9 + 1]
                    if TW_50_5:len() >= TW_50_5:reverse():rep(VS % 3 + 2):len() then
                        Bu = ExpansionBuy.ExpansionBuy
                        BB = ExpansionBuy.InventoryAdjust
                        A8 = ExpansionBuy.SlotSelect
                        BI = 50
                        BQ = 50
                    else
                        ExpansionBuy = A8.ExpansionBuy
                        BQ = A8.InventoryAdjust
                        BI = A8.SlotSelect
                        BB = 50
                        Bu = 50
                    end
                    TW_1 = (TW_1 + 27) % 184
                end
            else
                local TW_64_8 = { "euv", "aucmyqdsk", "njdopgphhn", "avgerd", "ophx", "ihwnl", "ywmgedconec", "wtrzgdi", "ggr" }
                local Ul = TW_1
                local TW_50_6 = TW_64_8[Ul % 9 + 1]
                if TW_50_6:len() <= TW_50_6:gsub("(.)", "%1%1", Ul % 3 % 2 + 1):len() then
                    fns.TW_5_1 = {}
                else
                    CD = {}
                end
                TW_1 = (TW_1 + 4) % 184
            end
        elseif TW_77_1 <= 11 then
            if TW_77_1 <= 10 then
                local TW_64_9 = {
                    "zvz",
                    "osuthvyl",
                    "ygqqrurwoam",
                    "kzt",
                    "stcphd",
                    "fmljrn",
                    "hntvjferh",
                    "gfyhv",
                    "thw",
                    "gmzxwqdzm",
                    "zeyuozp",
                    "outiosry"
                }
                local VX = TW_1
                local TW_50_7 = TW_64_9[VX % 12 + 1]
                if TW_50_7:len() >= TW_50_7:gsub("(.)", "%1%1", VX % 3 % 2 + 1):len() then
                    B_ = {}
                else
                    Bh = {}
                end
                TW_1 = (TW_1 + 142) % 184
            else
                local TW_64_10 = {
                    "crhewthv",
                    "cdzl",
                    "xcuxpbotw",
                    "tlyyf",
                    "hpdfs",
                    "hskiq",
                    "ljulrzpz",
                    "gzakyzsi",
                    "dzyxfpeg",
                    "ajmnx",
                    "ccppqkwzzm"
                }
                local Uv = TW_1
                local TW_50_8 = TW_64_10[Uv % 11 + 1]
                if TW_50_8:len() >= TW_50_8:reverse():rep(Uv % 3 + 2):len() then
                    CH = game:GetService("Players")
                else
                    A0 = game:GetService("Players")
                end
                TW_1 = (TW_1 + 73) % 184
            end
        else
            local TW_64_11 = (vector.create((TW_1 * 6 + 5) % 11 + 1, (TW_1 * 9 + 10) % 13 + 1, (TW_1 * 10 + 13) % 17 + 1))
            local TW_50_9 = (vector.create((TW_1 * 3 + 3) % 11 + 1, (TW_1 * 9 + 12) % 13 + 1, (TW_1 * 15 + 7) % 17 + 1))
            local UC = vector.dot(TW_64_11, TW_50_9)
            if UC * UC >= vector.dot(TW_64_11, TW_64_11) * vector.dot(TW_50_9, TW_50_9) + 1 then
                Ct = game:GetService("ReplicatedStorage")
            else
                fns.TW_73_1 = game:GetService("ReplicatedStorage")
            end
            TW_1 = (TW_1 + 50) % 184
        end
    elseif TW_77_1 <= 18 then
        if TW_77_1 <= 15 then
            if TW_77_1 <= 14 then
                if TW_77_1 <= 13 then
                    local TW_64_12 = {
                        "hzqucki",
                        "ylvwwl",
                        "fgfgabmdn",
                        "htdqkir",
                        "nkprbvhve",
                        "rvhfflh",
                        "gpmimckc",
                        "adoqbrgvhn",
                        "jpi",
                        "xkwig"
                    }
                    local Uq = TW_1
                    local TW_50_10 = TW_64_12[Uq % 10 + 1]
                    if TW_50_10:len() <= TW_50_10:gsub("(.)", "%1%1", Uq % 3 % 2 + 1):len() then
                        RunService = game:GetService("RunService")
                    else
                        CM = game:GetService("RunService")
                    end
                    TW_1 = (TW_1 + 142) % 184
                else
                    local TW_64_13 = { "colyrvqbwiy", "jufiugsmc", "fjujgxzkqs", "hpzzckac", "gysrw", "tmpkzixl", "wflzxp" }
                    local Um = TW_1
                    local TW_50_11 = TW_64_13[Um % 7 + 1]
                    if TW_50_11:len() <= TW_50_11:gsub("(.)", "%1%1", Um % 3 % 2 + 1):len() then
                        UserInputService = game:GetService("UserInputService")
                    else
                        B8 = game:GetService("UserInputService")
                    end
                    TW_1 = (TW_1 + 165) % 184
                end
            else
                local TW_64_14 = (vector.create((TW_1 * 4 + 3) % 11 + 1, (TW_1 * 4 + 7) % 13 + 1, (TW_1 * 5 + 2) % 17 + 1))
                local TW_50_12 = (vector.create((TW_1 * 2 + 7) % 11 + 1, (TW_1 * 11 + 13) % 13 + 1, (TW_1 * 1 + 10) % 17 + 1))
                local UA = vector.cross(TW_64_14, TW_50_12)
                local UB = vector.dot(TW_64_14, TW_50_12)
                if vector.dot(UA, UA) + UB * UB == vector.dot(TW_64_14, TW_64_14) * vector.dot(TW_50_12, TW_50_12) then
                    VirtualUser = game:GetService("VirtualUser")
                else
                    CD = game:GetService("VirtualUser")
                end
                TW_1 = (TW_1 + 119) % 184
            end
        elseif TW_77_1 <= 17 then
            if TW_77_1 <= 16 then
                if TW_1 * 96178539 + 11 + 1 >= TW_1 * 96178539 + 11 + 1 + 1 then
                    Cv = game:GetService("HttpService")
                    CM = game:GetService("CollectionService")
                    CG = game:GetService("GuiService")
                    CD = game:GetService("TeleportService")
                else
                    CM = game:GetService("HttpService")
                    CG = game:GetService("CollectionService")
                    CD = game:GetService("GuiService")
                    Cv = game:GetService("TeleportService")
                end
                TW_1 = (TW_1 + 96) % 184
            else
                local TW_64_15 = {
                    "ekql",
                    "phqjxohiq",
                    "dynsknl",
                    "acqeywrkk",
                    "atkzjhe",
                    "yyofy",
                    "bzpbcepc",
                    "vev",
                    "pazzwpogc",
                    "jaznwlaoxm",
                    "npsrkd"
                }
                local VP = TW_1
                local TW_50_13 = TW_64_15[VP % 11 + 1]
                if TW_50_13:len() >= TW_50_13:reverse():rep(VP % 3 + 2):len() then
                    Cn = game:GetService("CoreGui")
                    Ct = game:GetService("Workspace")
                else
                    Ct = game:GetService("CoreGui")
                    Cn = game:GetService("Workspace")
                end
                TW_1 = (TW_1 + 4) % 184
            end
        else
            local TW_64_16 = {
                "dsoe",
                "ahqthqsnxgyk",
                "mjouovog",
                "zsaitink",
                "gbmvlwlvri",
                "lbqfkdchp",
                "fjnojvlcgn",
                "rycbfruzkvv",
                "ufbhwmzxb",
                "vxof",
                "offu",
                "npdvyyzgvr",
                "oeastccivbe",
                "fhagugslpysu",
                "llaljanrq",
                "bnaiewgiqspd"
            }
            if TW_64_16[(TW_1 * 69 + 12) % 16 + 1] <= TW_64_16[(TW_1 * 69 + 12) % 16 + 1] then
                Cf = A0.LocalPlayer
            else
                A0 = Cf.LocalPlayer
            end
            TW_1 = (TW_1 + 50) % 184
        end
    elseif TW_77_1 <= 21 then
        if TW_77_1 <= 20 then
            if TW_77_1 <= 19 then
                local TW_64_17 = (vector.create((TW_1 * 5 + 9) % 11 + 1, (TW_1 * 5 + 7) % 13 + 1, (TW_1 * 15 + 12) % 17 + 1))
                local TW_50_14 = (vector.create((TW_1 * 4 + 2) % 11 + 1, (TW_1 * 11 + 4) % 13 + 1, (TW_1 * 8 + 8) % 17 + 1))
                local Uy = vector.dot(TW_64_17, TW_50_14)
                if Uy * Uy >= vector.dot(TW_64_17, TW_64_17) * vector.dot(TW_50_14, TW_50_14) + 1 then
                    Cf = fns.TW_15_1:WaitForChild("PlayerScripts")
                else
                    fns.TW_15_1 = Cf:WaitForChild("PlayerScripts")
                end
                TW_1 = (TW_1 + 96) % 184
            else
                local Up = bit32.rrotate(bit32.bxor(bit32.lrotate(TW_1, 29), string.byte(tostring(B7))), 22)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Up, 4087152253), 10), 1945761742) == bit32.lrotate(Up, 10) then
                    B7 = "Where Seasons Pass"
                    B_ = "https://discord.gg/ehKVq7pf7v"
                    BT = "https://rscripts.net/@Ouroboros"
                    BN = "https://ouroboros-hub-rbx.web.app/"
                else
                    BN = "Where Seasons Pass"
                    B7 = "https://discord.gg/ehKVq7pf7v"
                    B_ = "https://rscripts.net/@Ouroboros"
                    BT = "https://ouroboros-hub-rbx.web.app/"
                end
                TW_1 = (TW_1 + 119) % 184
            end
        else
            if TW_1 * 65465101 + 1 + 7 >= TW_1 * 65465101 + 1 + 7 + 1 then
                fns.TW_73_1 = fns.TW_18_1:WaitForChild("Shared")
            else
                fns.TW_18_1 = fns.TW_73_1:WaitForChild("Shared")
            end
            TW_1 = (TW_1 + 165) % 184
        end
    elseif TW_77_1 <= 22 then
        local TW_77_2 = {
            "uvrpwtok",
            "ebownlvkzsb",
            "ublvmlp",
            "yon",
            "zuwnr",
            "sbfevjbmmcfu",
            "ohhdznsdnop",
            "whquofzcdxs",
            "gpgyddf"
        }
        if TW_77_2[(TW_1 * 69 + 25) % 9 + 1] < TW_77_2[(TW_1 * 69 + 25) % 9 + 1] then
            fns.TW_18_1 = require(By:WaitForChild("Utility"))
        else
            By = require(fns.TW_18_1:WaitForChild("Utility"))
        end
        TW_1 = (TW_1 + 4) % 184
    else
        local TW_77_3 = {
            "zhnkffqdp",
            "gdfztyzzrj",
            "sad",
            "xhjo",
            "rxytgtjsu",
            "asqunsfjncp",
            "nskjvevi",
            "phcidrhra",
            "fuomi",
            "epakx"
        }
        local VL = TW_1
        local TW_64_18 = TW_77_3[VL % 10 + 1]
        if TW_64_18:len() <= TW_64_18:gsub("(.)", "%1%1", VL % 3 % 2 + 1):len() then
            Bs = require(fns.TW_18_1:WaitForChild("Data"):WaitForChild("Crops"))
            fns.TW_59_1 = require(fns.TW_18_1:WaitForChild("Data"):WaitForChild("Crops"):WaitForChild("Variants"))
            fns.TW_46_1 = require(fns.TW_18_1:WaitForChild("Data"):WaitForChild("Stores"))
        else
            fns.TW_18_1 = require(fns.TW_46_1:WaitForChild("Data"):WaitForChild("Crops"))
            Bs = require(fns.TW_46_1:WaitForChild("Data"):WaitForChild("Crops"):WaitForChild("Variants"))
            fns.TW_59_1 = require(fns.TW_46_1:WaitForChild("Data"):WaitForChild("Stores"))
        end
        TW_1 = (TW_1 + 27) % 184
    end
until (TW_1 * 131 + 4) % 184 == 33
C0, CW, Be = nil, nil, nil
Be = fns.fn432
C0 = {}
CW = {}
for k in Bs do
    fns.fn159(k)
end
local TW_15_2 = (fns.TW_18_1:FindFirstChild("Assets"))
if TW_15_2 then
    local TW_1_1 = 2
    repeat
        if ((TW_1_1 or not TW_1_1 or (TW_1_1 or not TW_1_1)) and (not TW_1_1 or not TW_1_1 or TW_1_1 and not TW_1_1) or (TW_1_1 and TW_1_1 or (not TW_1_1 or TW_1_1)) and ((not TW_1_1 or TW_1_1) and (not TW_1_1 or not TW_1_1))) and not ((TW_1_1 or not TW_1_1 or (TW_1_1 or not TW_1_1)) and (not TW_1_1 or not TW_1_1 or TW_1_1 and not TW_1_1) or (TW_1_1 and TW_1_1 or (not TW_1_1 or TW_1_1)) and ((not TW_1_1 or TW_1_1) and (not TW_1_1 or not TW_1_1))) then
            fns.TW_18_1 = TW_15_2.Assets:FindFirstChild("Tools")
        else
            TW_15_2 = fns.TW_18_1.Assets:FindFirstChild("Tools")
        end
        TW_1_1 = (TW_1_1 + 3) % 4
    until (TW_1_1 * 1 + 1) % 4 == 2
end
local TW_73_2 = TW_15_2
if TW_73_2 then
    for i, child in TW_73_2:GetChildren() do
        if child:GetAttribute("ToolType") == "SeedBag" then
            fns.fn159(child:GetAttribute("SeedType"))
        end
    end
end
table.sort(CW, fns.fn1540)
for k, v in CW do
    fns.TW_5_1[#fns.TW_5_1 + 1] = v.name
    Bh[v.name] = v.id
end
Bn = {}
local TW_15_3 = {}
Bi, Bf = nil, nil
Bi = {}
Bf = {}
for k, v in fns.TW_59_1.Default do
    fns.fn576(k, v)
end
for k, v in fns.TW_59_1.Specific do
    for k, v in v do
        fns.fn576(k, v)
    end
end
local TW_1_2 = 1
repeat
    local TW_73_4 = {
        "xqugsyvpvrr",
        "umvq",
        "tah",
        "kbeqs",
        "wjiaupmogv",
        "hrdcwnywdajb",
        "zhfx",
        "uiuezcxdxsy",
        "ofpg",
        "suzfomoz",
        "beqtxi"
    }
    if TW_73_4[(TW_1_2 * 18 + 77) % 11 + 1] <= TW_73_4[(TW_1_2 * 18 + 77) % 11 + 1] then
        table.sort(Bf, fns.fn1233)
    else
        table.sort(Bf, fns.fn1233)
    end
    TW_1_2 = (TW_1_2 + 1) % 4
until (TW_1_2 * 3 + 1) % 4 == 3
for k, v in Bf do
    TW_15_3[#TW_15_3 + 1] = v.name
    Bn[v.name] = v.id
end
B4 = {}
local TW_1_3 = {}
local TW_77_4 = fns.TW_46_1.FernSeedStore and fns.TW_46_1.FernSeedStore.Products or {}
local TW_73_6 = {}
for k, v in TW_77_4 do
    local TW_59_4 = Bs[k]
    local TW_77_6 = TW_59_4 and TW_59_4.Name or v.Name or k
    local TW_77_7 = #TW_73_6 + 1
    local TW_64_20 = v.Id or k
    local TW_50_15 = fns.TW_32_1(TW_77_6, v.Price)
    local TW_37_2 = (A4(v.Price)) or math.huge
    TW_73_6[TW_77_7] = { id = TW_64_20, label = TW_50_15, sort = TW_77_6, price = TW_37_2 }
end
local TW_50_16 = 6
repeat
    if (TW_50_16 and TW_50_16 and (not TW_50_16 or TW_50_16) or (TW_50_16 or not TW_50_16 or not TW_50_16 and not TW_50_16)) and ((TW_50_16 or TW_50_16 or (TW_50_16 or not TW_50_16)) and (TW_50_16 and TW_50_16 or TW_50_16 and not TW_50_16)) or not ((TW_50_16 and TW_50_16 and (not TW_50_16 or TW_50_16) or (TW_50_16 or not TW_50_16 or not TW_50_16 and not TW_50_16)) and ((TW_50_16 or TW_50_16 or (TW_50_16 or not TW_50_16)) and (TW_50_16 and TW_50_16 or TW_50_16 and not TW_50_16))) then
        table.sort(TW_73_6, fns.fn1493)
    else
        table.sort(TW_73_6, fns.fn1493)
    end
    TW_50_16 = (TW_50_16 + 4) % 8
until (TW_50_16 * 3 + 1) % 8 == 7
for k, v in TW_73_6 do
    TW_1_3[#TW_1_3 + 1] = v.label
    B4[v.label] = v.id
end
CP = {}
local TW_73_7 = {}
local TW_64_21 = fns.TW_46_1.FernMiscStore and fns.TW_46_1.FernMiscStore.Products or {}
local TW_59_8 = {}
for k, v in TW_64_21 do
    local TW_77_10 = v.Name or k
    local TW_77_11 = #TW_59_8 + 1
    local TW_50_17 = v.Id or k
    local TW_37_3 = fns.TW_32_1(TW_77_10, v.Price)
    local TW_22_1 = (A4(v.Price)) or math.huge
    TW_59_8[TW_77_11] = { id = TW_50_17, label = TW_37_3, sort = TW_77_10, price = TW_22_1 }
end
local TW_37_4 = 1
repeat
    if TW_37_4 * 26097267 + 9 + 2 <= TW_37_4 * 26097267 + 9 + 2 + 1 then
        table.sort(TW_59_8, fns.fn44)
    else
        table.sort(TW_59_8, fns.fn44)
    end
    TW_37_4 = (TW_37_4 + 6) % 8
until (TW_37_4 * 1 + 4) % 8 == 3
for k, v in TW_59_8 do
    TW_73_7[#TW_73_7 + 1] = v.label
    CP[v.label] = v.id
end
BF = {}
local TW_59_9 = {}
local TW_64_23 = fns.TW_46_1.EarlCosmeticStore and fns.TW_46_1.EarlCosmeticStore.Products or {}
local TW_46_3 = {}
for k, v in TW_64_23 do
    local TW_77_14 = v.Name or k
    local TW_77_15 = #TW_46_3 + 1
    local TW_50_18 = v.Id or k
    local TW_37_5 = fns.TW_32_1(TW_77_14, v.Price)
    local TW_22_2 = (A4(v.Price)) or math.huge
    TW_46_3[TW_77_15] = { id = TW_50_18, label = TW_37_5, sort = TW_77_14, price = TW_22_2 }
end
local TW_37_6 = 2
repeat
    local Ut = bit32.rrotate(bit32.bxor(bit32.lrotate(TW_37_6, 30), string.byte(tostring(TW_37_6))), 5)
    if bit32.bxor(bit32.lrotate(bit32.bxor(Ut, 961943510), 14), 2247462485) ~= bit32.lrotate(Ut, 14) then
        table.sort(TW_46_3, fns.fn1501)
    else
        table.sort(TW_46_3, fns.fn1501)
    end
    TW_37_6 = (TW_37_6 + 0) % 4
until (TW_37_6 * 3 + 3) % 4 == 1
for k, v in TW_46_3 do
    TW_59_9[#TW_59_9 + 1] = v.label
    BF[v.label] = v.id
end
CF = nil
local TW_77_16 = {}
local TW_32_2 = {}
CF = {}
Cs, Cl, CB = nil, nil, nil
CB = fns.fn1132
Cs = {}
Cl = {}
fns.fn1473("NormalSoil")
local TW_50_19 = (fns.TW_18_1:FindFirstChild("Assets"))
if TW_50_19 then
    local TW_46_4 = 7
    repeat
        local VU = bit32.rrotate(bit32.bxor(bit32.lrotate(TW_46_4, 27), string.byte(tostring(TW_46_4))), 29)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(VU, 4264511285), 126093854), (bit32.bxor(bit32.band(VU, 30456010), 264673742))), 126093854), 264673742) ~= VU then
            fns.TW_18_1 = TW_50_19.Assets:FindFirstChild("Cosmetics")
        else
            TW_50_19 = fns.TW_18_1.Assets:FindFirstChild("Cosmetics")
        end
        TW_46_4 = (TW_46_4 + 4) % 8
    until (TW_46_4 * 5 + 5) % 8 == 4
end
local TW_64_25 = TW_50_19
if TW_64_25 then
    local TW_46_5 = TW_64_25:FindFirstChild("Planters")
    if TW_46_5 then
        for i, child in TW_46_5:GetChildren() do
            local TW_46_6 = child:GetAttribute("_Functionality")
            local TW_18_2 = TW_46_6 ~= "Greenhouse"
            if TW_18_2 then
                local TW_50_20 = (child:HasTag("Soil")) or TW_46_6 == "Podium"
                local TW_26 = if TW_50_20 then 1 else 0
                local TW_54 = 2887 * TW_26 + 2101 * (1 - TW_26)
                local TW_41 = 2938 * TW_26 + 729 * (1 - TW_26)
                if not ((TW_54 * 1978 + TW_41 * 1938 + TW_54 * TW_41) % 16777213 == 3109123) then
                    TW_50_20 = child.Name:find("Pot")
                end
                if not TW_50_20 then
                    TW_50_20 = child.Name:find("Planter")
                end
                TW_18_2 = TW_50_20
            end
            if TW_18_2 then
                local TW_46_7 = (child:GetAttribute("CosmeticType")) or child.Name
                fns.fn1473(TW_46_7)
            end
        end
    end
    local TW_46_8 = TW_64_25:FindFirstChild("Soil")
    if TW_46_8 then
        for i, child in TW_46_8:GetChildren() do
            local TW_46_9 = child.Name ~= "Preview_Soil"
            if TW_46_9 then
                local TW_18_3 = (child:HasTag("Soil")) or child:GetAttribute("CosmeticType")
                TW_46_9 = TW_18_3
            end
            if TW_46_9 then
                local TW_46_10 = (child:GetAttribute("CosmeticType")) or child.Name
                fns.fn1473(TW_46_10)
            end
        end
    end
end
local TW_18_4 = 0
repeat
    local TW_46_11 = {
        "mdwfaakfp",
        "peqbjhwsor",
        "wwhdsk",
        "xvonl",
        "nnst",
        "buht",
        "xozdmzerrs",
        "ubwl",
        "ydrxxndy",
        "uhdq",
        "pvvyzks"
    }
    local VT = TW_18_4
    local TW_64_26 = TW_46_11[VT % 11 + 1]
    if TW_64_26:len() <= TW_64_26:gsub("(.)", "%1%1", VT % 3 % 2 + 1):len() then
        table.sort(Cl, fns.fn593)
    else
        table.sort(Cl, fns.fn593)
    end
    TW_18_4 = (TW_18_4 + 1) % 4
until (TW_18_4 * 1 + 0) % 4 == 1
for k, v in Cl do
    TW_77_16[#TW_77_16 + 1] = v.name
    TW_32_2[v.name] = v.id
    CF[v.id] = v.name
end
Library, SaveManager, Toggles, Options, Bt, B9, B2, BW, BR, BJ, Bv, Bl, A9, CZ, CN, Cx, fns.TW_50_21 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local TW_37_8 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
Bt = {}
Bl = fns.fn77
A9 = fns.fn1018
CZ = fns.fn335
CN = fns.fn1012
Cx = fns.fn769
B9 = "#7fd47f"
B2 = "#6ec1ff"
BW = "#e8a34d"
BR = "#8b93a3"
BJ = "#e05a5a"
local TW_46_12 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = B_, Copyable = true }, "|", B7 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Bv = {
    Info = TW_46_12:AddTab("Info", "info"),
    Automation = TW_46_12:AddTab("Automation", "sprout"),
    Shop = TW_46_12:AddTab("Shop", "shopping-bag"),
    Favorites = TW_46_12:AddTab("Favorites", "star"),
    Player = TW_46_12:AddTab("Player", "person-standing"),
    Settings = TW_46_12:AddTab("Settings", "settings")
}
if not Cx and Bv and (B2 and CN) and ((not CN or Cx) and (TW_46_12 or Bv)) and (not CN and false or false and CN or (BJ and not Bv or (Cx or false))) or ((not CN or TW_46_12) and (false or Cx) or (TW_46_12 or not Bv) and (not Cx and TW_46_12)) and ((not CN or not Cx) and (not TW_46_12 or not CN) or (B2 or TW_46_12 or "#6ec1ff")) or not (not Cx and Bv and (B2 and CN) and ((not CN or Cx) and (TW_46_12 or Bv)) and (not CN and false or false and CN or (BJ and not Bv or (Cx or false))) or ((not CN or TW_46_12) and (false or Cx) or (TW_46_12 or not Bv) and (not Cx and TW_46_12)) and ((not CN or not Cx) and (not TW_46_12 or not CN) or (B2 or TW_46_12 or "#6ec1ff"))) then
    fns.TW_50_21 = fns.fn96
else
    Bt = fns.fn96
end
for k, v in Bv do
    if k ~= "Info" and k ~= "Automation" and k ~= "Shop" then
        fns.TW_50_21(v)
    end
end
C4 = function(cE)
    local Fa = Toggles[cE]
    return Fa ~= nil and Fa.Value == true
end
CJ = function(cJ)
    local Fd = {}
    if type(cJ) == "table" then
        for k, v in cJ do
            if v then
                Fd[k] = true
            end
        end
    else
        local Fe = cJ ~= ""
        local Ff = type(cJ) == "string" and Fe
        if Ff then
            Fd[cJ] = true
        end
    end
    return Fd
end
Ci = function(cO)
    local Fq = {}
    local Fr = Options[cO] and Options[cO].Value
    local Fs = CJ(Fr)
    for k in Fs do
        local Fr_1 = Bh[k]
        if Fr_1 then
            Fq[Fr_1] = true
        end
    end
    return Fq
end
Bj = function(cY, cZ)
    local FB = {}
    local FC = Options[cY] and Options[cY].Value
    local FD = CJ(FC)
    for k in FD do
        local FC_1 = cZ[k]
        if FC_1 then
            FB[FC_1] = true
        end
    end
    return FB
end
CK = function()
    local Character = Cf.Character
    local FK = Character and Character:FindFirstChildOfClass("Humanoid")
    return FK
end
Cr = function()
    local Character = Cf.Character
    local FN = Character and Character:FindFirstChild("HumanoidRootPart")
    return FN
end
B5 = function()
    local FQ_1
    local FP_1
    FP_1, FQ_1 = pcall(function()
        return CH.GetProfile(Cf)
    end)
    if FP_1 then
        return FQ_1
    end
end
Bk = function()
    local FS = B5()
    if not FS then
        return 0
    end
    local FT = (tonumber(FS:GetValueWithKey("Energy"))) or 0
    return FT
end
A6 = function()
    local FV = B5()
    if not FV then
        return 0
    end
    local FW = (tonumber(FV:GetValueWithKey("Clovers"))) or 0
    return FW
end
C2 = function()
    local FZ_1
    local FY_1
    FY_1, FZ_1 = pcall(function()
        return CE.GetAssignedPlot(Cf)
    end)
    if FY_1 and FZ_1 then
        return FZ_1
    end
    for i, child in Cn.Plots:GetChildren() do
        if child:GetAttribute("OwnedBy") == Cf.UserId then
            return child
        end
    end
end
Cd = function()
    return Cn:GetAttribute("Weather") == "Rainy"
end
B6 = function()
    local F8 = CK()
    local F9 = Cr()
    local Ga = F9 and F9:FindFirstChild("SeatWeld")
    local F9_1 = F8
    local F7 = Ga
    if F9_1 then
        F9_1 = F8.Sit or F8.SeatPart
    end
    local Ga_2 = F9_1
    local F9_2 = not F7
    local Gb = not Ga_2
    if Gb ~= false then
        Gb = F9_2
    end
    if Gb then
        return
    end
    if F8 then
        pcall(function()
            F8.Sit = false
        end)
    end
    if F7 then
        pcall(function()
            F7:Destroy()
        end)
    end
    task.wait(0.15)
end
C3 = function(dT, dU)
    local Gd = Cr()
    if not Gd then
        return false
    end
    B6()
    local Ge
    if typeof(dT) == "Vector3" then
        Ge = dT
    elseif typeof(dT) == "Instance" then
        if dT:IsA("Model") then
            Ge = dT:GetPivot().Position
        elseif dT:IsA("BasePart") then
            Ge = dT.Position
        else
            local BasePart = dT:FindFirstAncestorWhichIsA("BasePart")
            Ge = BasePart and BasePart.Position
        end
    end
    if not Ge then
        return false
    end
    local new = CFrame.new
    local Gg_2 = dU or Vector3.new(0, 3, 0)
    Gd.CFrame = new(Ge + Gg_2)
    return true
end
Ce = function(d2)
    local function d3(d4)
        if not d4 then
            return
        end
        for i, child in d4:GetChildren() do
            if child:IsA("Tool") then
                d2(child)
            end
        end
    end
    d3(Cf:FindFirstChild("Backpack"))
    d3(Cf.Character)
end
fns.Br = function(ea)
    local eb
    eb = nil
    Ce(function(ed)
        local Gs = not eb and ea(ed)
        if Gs then
            eb = ed
        end
    end)
    return eb
end
C_ = function(ei)
    local Gx = CK()
    if not (Gx and ei) then
        return false
    elseif ei.Parent == Cf.Character then
        return true
    else
        pcall(function()
            Gx:EquipTool(ei)
        end)
        local GC = 1
        while GC <= 10 do
            if ei.Parent == Cf.Character then
                return true
            end
            task.wait(0.05)
            GC += 1
        end
        return ei.Parent == Cf.Character
    end
end
Co = function(eq)
    if not (eq and eq.Parent) then
        return false
    end
    local GF_1 = eq.Parent
    if not GF_1:IsA("BasePart") then
        GF_1 = eq:FindFirstAncestorWhichIsA("BasePart")
    end
    if GF_1 then
        C3(GF_1)
        task.wait(0.2)
    end
    pcall(function()
        eq.Enabled = true
        eq.HoldDuration = 0
        eq.RequiresLineOfSight = false
        eq.MaxActivationDistance = math.max(eq.MaxActivationDistance, 20)
    end)
    if fireproximityprompt then
        pcall(fireproximityprompt, eq)
    elseif firesignal then
        pcall(firesignal, eq.Triggered, Cf)
    else
        pcall(function()
            eq:InputHoldBegin()
            task.wait(0.08)
            eq:InputHoldEnd()
        end)
    end
    task.wait(0.15)
    return true
end
BA = {
    [1] = "Idle",
    [2] = 0,
    [3] = 0,
    [4] = 0,
    [5] = 0,
    [6] = 0,
    [7] = 0,
    [8] = 0,
    [9] = 0,
    [10] = 0,
    [11] = 0,
    [12] = 0,
    [13] = {},
    [14] = 0,
    [15] = {},
    [16] = 0,
    [17] = 0
}
Bw = function(ez, eA, eB)
    eB = eB or 6
    local GK_1 = os.clock()
    local GL = BA[13][ez]
    if GL and GK_1 - GL < eB then
        return
    end
    BA[13][ez] = GK_1
    BA[1] = eA
    Library:Notify(eA)
end
CV = function(eI)
    local GO = eI or ""
    return tostring(GO):gsub("<.->", "")
end
CO = function(eK)
    local GQ = eK and eK:GetAttribute("Amount")
    local GR = tonumber(GQ)
    if GR and GR > 0 then
        BA[14] = GR
        return GR
    end
    return math.max(0, BA[14])
end
Ch = function(eQ)
    local GT = eQ and eQ:GetAttribute("MaxAmount")
    local GU = (tonumber(GT)) or math.max(BA[14], 2)
    return GU
end
BS = function(eV)
    local GW = {}
    if not eV then
        return GW
    end
    for k, v in CG:GetTagged("Soil") do
        if v:IsDescendantOf(eV) then
            local GX = By.Instance.FindFirstDescendantWithTag(v, "Crop_CropHolder")
            GW[#GW + 1] = { soil = v, holder = GX }
        end
    end
    return GW
end
A5 = function(e2, e3, e4)
    if (Options[e4] and Options[e4].Value or "Selected") == "All" then
        return true
    end
    local G4_2 = Ci(e3)
    if not next(G4_2) then
        return false
    end
    return G4_2[e2] == true
end
Cy = function(fb)
    local G7 = fb and fb:GetAttribute("CosmeticType")
    local G7_1 = G7 ~= ""
    local G9 = type(G7) == "string" and G7_1
    if G9 then
        return G7
    end
    if fb and fb.Name == "Normal_Soil" then
        return "NormalSoil"
    end
    return fb and fb.Name or nil
end
B3 = function(fh)
    local He = Options.PlantPlanters and Options.PlantPlanters.Value
    local Hf = CJ(He)
    if not next(Hf) then
        return false
    end
    local He_1 = Cy(fh)
    local He_2 = He_1 and CF[He_1]
    if not He_2 then
        return false
    end
    return Hf[He_2] == true
end
A3 = function(fs)
    local Hl
    for k, v in CG:GetTagged("ProximityPrompt_WateringCan") do
        if v:IsDescendantOf(Cn) then
            local Hm = fs and v:IsDescendantOf(fs)
            if Hm then
                return v
            end
            if v:IsDescendantOf(Cn.Town) then
                Hl = Hl or v
            end
        end
    end
    return Hl
end
CA = function(fA)
    local connection
    connection = nil
    local HA
    local HB = C2()
    if not (HB and fA) then
        Bw("refill_missing", "No watering can or plot for refill", 10)
        return false
    end
    B6()
    if not C_(fA) then
        Bw("refill_equip", "Failed to equip watering can", 8)
        return false
    end
    task.wait(0.25)
    HA = false
    connection = A8.Notification.OnClientEvent:Connect(function(fI)
        local Hu = fI and fI.Title
        local Hv = CV(Hu)
        if Hv:lower():find("refilled", 1, true) then
            HA = true
        end
    end)
    local Hx = Ch(fA)
    for i = 1, 4 do
        local Hy = A3(HB)
        if not Hy then
            Bw("refill_prompt", "No well or faucet found", 10)
            break
        end
        local HC_1 = Hy.Parent
        if not HC_1:IsA("BasePart") then
            HC_1 = Hy:FindFirstAncestorWhichIsA("BasePart")
        end
        if not HC_1 then
            break
        elseif not C_(fA) then
            break
        else
            task.wait(0.1)
            B6()
            local HD = Cr()
            if HD then
                HD.CFrame = HC_1.CFrame * CFrame.new(0, 2.5, 0)
            end
            task.wait(0.4)
            pcall(function()
                Hy.Enabled = true
                Hy.HoldDuration = 0
                Hy.RequiresLineOfSight = false
                Hy.MaxActivationDistance = math.max(Hy.MaxActivationDistance, 25)
            end)
            local HP = 1
            while HP <= 8 do
                if Hy.Enabled then
                    break
                end
                task.wait(0.05)
                pcall(function()
                    Hy.Enabled = true
                end)
                HP += 1
            end
            if fireproximityprompt then
                pcall(fireproximityprompt, Hy)
            end
            pcall(function()
                Hy:InputHoldBegin()
                task.wait(0.1)
                Hy:InputHoldEnd()
            end)
            if not HA and firesignal then
                pcall(firesignal, Hy.Triggered, Cf)
            end
            local HU = 1
            while HU <= 18 do
                task.wait(0.1)
                local HC_3 = (tonumber(fA:GetAttribute("Amount"))) or 0
                if HC_3 > 0 or HA then
                    HA = true
                    local max = math.max
                    local HD_2 = HC_3 > 0 and HC_3 or Hx
                    Hx = max(Hx, HD_2)
                    break
                end
                HU += 1
            end
            if HA then
                break
            end
        end
    end
    pcall(function()
        connection:Disconnect()
    end)
    if HA then
        BA[14] = Hx
        pcall(function()
            fA:SetAttribute("Amount", Hx)
        end)
        BA[9] = BA[9] + 1
        Bw("refilled", ("Watering can refilled (%*/%*)"):format(Hx, Hx), 4)
        return true
    end
    BA[14] = 0
    Bw("refill_fail", "Well refill failed. Stand closer and retry", 8)
    return false
end
fns.Bx = function(f9)
    if not f9 then
        return false
    end
    for k, v in BS(f9) do
        local holder = v.holder
        local HY = holder and holder:GetAttribute("IsOccupied") and not holder:GetAttribute("IsDead") and not holder:GetAttribute("IsWatered") and not holder:GetAttribute("IsFinished")
        if HY then
            return true
        end
    end
    return false
end
C6 = function(gg)
    if not gg then
        return false
    end
    for k, v in BS(gg) do
        local holder = v.holder
        local Ic = holder and holder:GetAttribute("IsOccupied") and not holder:GetAttribute("IsDead") and holder:GetAttribute("IsInfested") and not holder:GetAttribute("IsCured")
        if Ic then
            return true
        end
    end
    return false
end
CC = function(gn)
    if not gn then
        return false
    end
    for k, v in BS(gn) do
        local holder = v.holder
        local Il = holder and holder:GetAttribute("IsOccupied") and holder:GetAttribute("IsDead") and not holder:GetAttribute("IsLocked")
        if Il then
            return true
        end
    end
    return false
end
BZ = function(gu)
    if not gu then
        return false
    end
    local IC = Cd()
    local ID = not IC
    if ID ~= false then
        ID = fns.Bx(gu)
    end
    if ID then
        local IC_1 = (C4("AutoWater")) or BA[16] >= BB
        ID = IC_1
    end
    if ID then
        ID = fns.Br(function(gF)
            return gF:GetAttribute("ToolType") == "WateringCan"
        end)
    end
    if ID then
        return true
    end
    local IC_2 = (C4("AutoPesticide")) and C6(gu) and fns.Br(function(gK)
        local Iw = gK:GetAttribute("ToolType") == "Pesticide"
        if Iw then
            local Ix = (tonumber(gK:GetAttribute("Amount")))
            local IB = if Ix then 1 else 0
            local Iz = 1660 * IB + 2834 * (1 - IB)
            local IA = 2561 * IB + 3858 * (1 - IB)
            if not ((Iz * 3446 + IA * 1404 + Iz * IA) % 16777213 == 13567264) then
                Ix = 0
            end
            Iw = Ix > 0
        end
        return Iw
    end)
    if IC_2 then
        return true
    end
    local IC_3 = (C4("AutoRemoveDead")) and CC(gu) and fns.Br(function(gP)
        return gP:GetAttribute("ToolType") == "Shovel"
    end)
    if IC_3 then
        return true
    end
    return false
end
Cc = function()
    local II = BA[17] >= Bu
    if not II then
        local IJ = not Cd() and BA[16] >= BB
        II = IJ
    end
    return II
end
Bm = function(gZ)
    local I0_7, I0_14
    if Cd() then
        BA[16] = 0
        return false
    end
    local IW = not gZ
    local IW_4
    if IW ~= false then
        IW = not C4("AutoWater")
    end
    if IW then
        return false
    end
    local IU = C2()
    local IV = fns.Br(function(g6)
        return g6:GetAttribute("ToolType") == "WateringCan"
    end)
    if not IU then
        return false
    elseif not IV then
        Bw("water_no_can", "Auto Water needs a watering can", 12)
        return false
    else
        local IW_1 = CO(IV)
        if IW_1 <= 0 then
            BA[1] = "Refilling watering can"
            local I7 = if not CA(IV) then 1 else 0
            if I7 == 1 then
                return false
            end
            local IW_2 = CO(IV)
            if IW_2 <= 0 then
                return false
            end
            local IW_3 = 0
            local IX_1 = false
            local IY_1 = 0
            local IZ_1 = 0
            for k, v in BS(IU) do
                local IS, IT
                local Jd = v
                local I__1 = Jd.holder
                local I0_1 = I__1 and I__1:GetAttribute("IsOccupied") and not I__1:GetAttribute("IsDead") and not I__1:GetAttribute("IsWatered") and not I__1:GetAttribute("IsFinished")
                if I0_1 then
                    if Bk() <= 0 then
                        Bw("water_energy", "Out of energy while watering", 10)
                        break
                    elseif CO(IV) <= 0 then
                        BA[1] = "Refilling watering can"
                        if not CA(IV) then
                            break
                        end
                        IZ_1 = 0
                        if not C_(IV) then
                            break
                        end
                        IX_1 = true
                        if not I__1:GetAttribute("IsWatered") then
                            IY_1 += 1
                            if IY_1 > 40 then
                                break
                            end
                            local I0_2 = (I__1:GetAttribute("CropType")) or "crop"
                            BA[1] = (("Watering %*"):format(I0_2))
                            C3(Jd.soil)
                            task.wait(0.08)
                            if not I__1:GetAttribute("IsWatered") then
                                IS = false
                                IT = A8.Notification.OnClientEvent:Connect(function(hq)
                                    local IL = hq and hq.Title
                                    local IM = CV(IL):lower()
                                    local IL_11 = hq and hq.Description
                                    local IN = CV(IL_11):lower()
                                    local IL_12 = (IM:find("empty", 1, true)) or IN:find("refill", 1, true)
                                    local IR = if IL_12 then 1 else 0
                                    local IP = 231 * IR + 3331 * (1 - IR)
                                    local IQ = 549 * IR + 2454 * (1 - IR)
                                    if not ((IP * 2468 + IQ * 1682 + IP * IQ) % 16777213 == 1620345) then
                                        IL_12 = IN:find("well or faucet", 1, true)
                                    end
                                    if IL_12 then
                                        IS = true
                                    end
                                end)
                                pcall(function()
                                    Cu:Fire({ Plot = IU, Soil = Jd.soil, WateringCan = IV })
                                end)
                                task.wait(0.3)
                                pcall(function()
                                    IT:Disconnect()
                                end)
                                if IS then
                                    BA[14] = 0
                                    pcall(function()
                                        IV:SetAttribute("Amount", 0)
                                    end)
                                    BA[1] = "Refilling watering can"
                                    if not CA(IV) then
                                        break
                                    end
                                    IX_1 = false
                                    IZ_1 = 0
                                elseif I__1:GetAttribute("IsWatered") then
                                    local I__2 = tonumber(IV:GetAttribute("Amount"))
                                    if I0_7 then
                                        BA[14] = I__2
                                    else
                                        BA[14] = math.max(0, BA[14] - 1)
                                    end
                                    IW_3 += 1
                                    BA[4] = BA[4] + 1
                                    IZ_1 = 0
                                else
                                    IZ_1 += 1
                                    if IZ_1 >= 2 then
                                        BA[14] = 0
                                        pcall(function()
                                            IV:SetAttribute("Amount", 0)
                                        end)
                                        BA[1] = "Refilling watering can"
                                        Bw("water_force_refill", "Watering failed. Refilling can", 8)
                                        if not CA(IV) then
                                            break
                                        end
                                        IX_1 = false
                                        IZ_1 = 0
                                    end
                                end
                            end
                        end
                    elseif not IX_1 then
                        if not C_(IV) then
                            break
                        end
                        IX_1 = true
                        if not I__1:GetAttribute("IsWatered") then
                            IY_1 += 1
                            if IY_1 > 40 then
                                break
                            end
                            local I0_4 = (I__1:GetAttribute("CropType")) or "crop"
                            BA[1] = (("Watering %*"):format(I0_4))
                            C3(Jd.soil)
                            task.wait(0.08)
                            if not I__1:GetAttribute("IsWatered") then
                                IS = false
                                IT = A8.Notification.OnClientEvent:Connect(function(hq)
                                    local IL = hq and hq.Title
                                    local IM = CV(IL):lower()
                                    local IL_9 = hq and hq.Description
                                    local IN = CV(IL_9):lower()
                                    local IL_10 = (IM:find("empty", 1, true)) or IN:find("refill", 1, true)
                                    local IR = if IL_10 then 1 else 0
                                    local IP = 231 * IR + 3331 * (1 - IR)
                                    local IQ = 549 * IR + 2454 * (1 - IR)
                                    if not ((IP * 2468 + IQ * 1682 + IP * IQ) % 16777213 == 1620345) then
                                        IL_10 = IN:find("well or faucet", 1, true)
                                    end
                                    if IL_10 then
                                        IS = true
                                    end
                                end)
                                pcall(function()
                                    Cu:Fire({ Plot = IU, Soil = Jd.soil, WateringCan = IV })
                                end)
                                task.wait(0.3)
                                pcall(function()
                                    IT:Disconnect()
                                end)
                                if IS then
                                    BA[14] = 0
                                    pcall(function()
                                        IV:SetAttribute("Amount", 0)
                                    end)
                                    BA[1] = "Refilling watering can"
                                    if not CA(IV) then
                                        break
                                    end
                                    IX_1 = false
                                    IZ_1 = 0
                                elseif I__1:GetAttribute("IsWatered") then
                                    local I__3 = tonumber(IV:GetAttribute("Amount"))
                                    if I0_7 then
                                        BA[14] = I__3
                                    else
                                        BA[14] = math.max(0, BA[14] - 1)
                                    end
                                    IW_3 += 1
                                    BA[4] = BA[4] + 1
                                    IZ_1 = 0
                                else
                                    IZ_1 += 1
                                    if IZ_1 >= 2 then
                                        BA[14] = 0
                                        pcall(function()
                                            IV:SetAttribute("Amount", 0)
                                        end)
                                        BA[1] = "Refilling watering can"
                                        Bw("water_force_refill", "Watering failed. Refilling can", 8)
                                        if not CA(IV) then
                                            break
                                        end
                                        IX_1 = false
                                        IZ_1 = 0
                                    end
                                end
                            end
                        end
                    elseif not I__1:GetAttribute("IsWatered") then
                        IY_1 += 1
                        if IY_1 > 40 then
                            break
                        end
                        local I0_6 = (I__1:GetAttribute("CropType")) or "crop"
                        BA[1] = (("Watering %*"):format(I0_6))
                        C3(Jd.soil)
                        task.wait(0.08)
                        if not I__1:GetAttribute("IsWatered") then
                            IS = false
                            IT = A8.Notification.OnClientEvent:Connect(function(hq)
                                local IL = hq and hq.Title
                                local IM = CV(IL):lower()
                                local IL_7 = hq and hq.Description
                                local IN = CV(IL_7):lower()
                                local IL_8 = (IM:find("empty", 1, true)) or IN:find("refill", 1, true)
                                local IR = if IL_8 then 1 else 0
                                local IP = 231 * IR + 3331 * (1 - IR)
                                local IQ = 549 * IR + 2454 * (1 - IR)
                                if not ((IP * 2468 + IQ * 1682 + IP * IQ) % 16777213 == 1620345) then
                                    IL_8 = IN:find("well or faucet", 1, true)
                                end
                                if IL_8 then
                                    IS = true
                                end
                            end)
                            pcall(function()
                                Cu:Fire({ Plot = IU, Soil = Jd.soil, WateringCan = IV })
                            end)
                            task.wait(0.3)
                            pcall(function()
                                IT:Disconnect()
                            end)
                            if IS then
                                BA[14] = 0
                                pcall(function()
                                    IV:SetAttribute("Amount", 0)
                                end)
                                BA[1] = "Refilling watering can"
                                if not CA(IV) then
                                    break
                                end
                                IX_1 = false
                                IZ_1 = 0
                            elseif I__1:GetAttribute("IsWatered") then
                                local I__4 = tonumber(IV:GetAttribute("Amount"))
                                I0_7 = I__4 and I__4 > 0
                                if I0_7 then
                                    BA[14] = I__4
                                else
                                    BA[14] = math.max(0, BA[14] - 1)
                                end
                                IW_3 += 1
                                BA[4] = BA[4] + 1
                                IZ_1 = 0
                            else
                                IZ_1 += 1
                                if IZ_1 >= 2 then
                                    BA[14] = 0
                                    pcall(function()
                                        IV:SetAttribute("Amount", 0)
                                    end)
                                    BA[1] = "Refilling watering can"
                                    Bw("water_force_refill", "Watering failed. Refilling can", 8)
                                    if not CA(IV) then
                                        break
                                    end
                                    IX_1 = false
                                    IZ_1 = 0
                                end
                            end
                        end
                    end
                end
            end
            if not fns.Bx(IU) then
                BA[16] = 0
            end
            if IW_4 > 0 then
                Bw("watered", ("Watered %* crop(s)"):format(IW_3), 5)
            end
            return IW_3 > 0
        end
        IW_4 = 0
        local IX_2 = false
        local IY_2 = 0
        local IZ_2 = 0
        for k, v in BS(IU) do
            local IS, IT
            local Jd = v
            local I__5 = Jd.holder
            local I0_8 = I__5 and I__5:GetAttribute("IsOccupied") and not I__5:GetAttribute("IsDead") and not I__5:GetAttribute("IsWatered") and not I__5:GetAttribute("IsFinished")
            if I0_8 then
                if Bk() <= 0 then
                    Bw("water_energy", "Out of energy while watering", 10)
                    break
                elseif CO(IV) <= 0 then
                    BA[1] = "Refilling watering can"
                    if not CA(IV) then
                        break
                    end
                    IZ_2 = 0
                    if not C_(IV) then
                        break
                    end
                    IX_2 = true
                    if not I__5:GetAttribute("IsWatered") then
                        IY_2 += 1
                        if IY_2 > 40 then
                            break
                        end
                        local I0_9 = (I__5:GetAttribute("CropType")) or "crop"
                        BA[1] = (("Watering %*"):format(I0_9))
                        C3(Jd.soil)
                        task.wait(0.08)
                        if not I__5:GetAttribute("IsWatered") then
                            IS = false
                            IT = A8.Notification.OnClientEvent:Connect(function(hq)
                                local IL = hq and hq.Title
                                local IM = CV(IL):lower()
                                local IL_5 = hq and hq.Description
                                local IN = CV(IL_5):lower()
                                local IL_6 = (IM:find("empty", 1, true)) or IN:find("refill", 1, true)
                                local IR = if IL_6 then 1 else 0
                                local IP = 231 * IR + 3331 * (1 - IR)
                                local IQ = 549 * IR + 2454 * (1 - IR)
                                if not ((IP * 2468 + IQ * 1682 + IP * IQ) % 16777213 == 1620345) then
                                    IL_6 = IN:find("well or faucet", 1, true)
                                end
                                if IL_6 then
                                    IS = true
                                end
                            end)
                            pcall(function()
                                Cu:Fire({ Plot = IU, Soil = Jd.soil, WateringCan = IV })
                            end)
                            task.wait(0.3)
                            pcall(function()
                                IT:Disconnect()
                            end)
                            if IS then
                                BA[14] = 0
                                pcall(function()
                                    IV:SetAttribute("Amount", 0)
                                end)
                                BA[1] = "Refilling watering can"
                                if not CA(IV) then
                                    break
                                end
                                IX_2 = false
                                IZ_2 = 0
                            elseif I__5:GetAttribute("IsWatered") then
                                local I__6 = tonumber(IV:GetAttribute("Amount"))
                                if I0_14 then
                                    BA[14] = I__6
                                else
                                    BA[14] = math.max(0, BA[14] - 1)
                                end
                                IW_4 += 1
                                BA[4] = BA[4] + 1
                                IZ_2 = 0
                            else
                                IZ_2 += 1
                                if IZ_2 >= 2 then
                                    BA[14] = 0
                                    pcall(function()
                                        IV:SetAttribute("Amount", 0)
                                    end)
                                    BA[1] = "Refilling watering can"
                                    Bw("water_force_refill", "Watering failed. Refilling can", 8)
                                    if not CA(IV) then
                                        break
                                    end
                                    IX_2 = false
                                    IZ_2 = 0
                                end
                            end
                        end
                    end
                elseif not IX_2 then
                    if not C_(IV) then
                        break
                    end
                    IX_2 = true
                    if not I__5:GetAttribute("IsWatered") then
                        IY_2 += 1
                        if IY_2 > 40 then
                            break
                        end
                        local I0_11 = (I__5:GetAttribute("CropType")) or "crop"
                        BA[1] = (("Watering %*"):format(I0_11))
                        C3(Jd.soil)
                        task.wait(0.08)
                        if not I__5:GetAttribute("IsWatered") then
                            IS = false
                            IT = A8.Notification.OnClientEvent:Connect(function(hq)
                                local IL = hq and hq.Title
                                local IM = CV(IL):lower()
                                local IL_3 = hq and hq.Description
                                local IN = CV(IL_3):lower()
                                local IL_4 = (IM:find("empty", 1, true)) or IN:find("refill", 1, true)
                                local IR = if IL_4 then 1 else 0
                                local IP = 231 * IR + 3331 * (1 - IR)
                                local IQ = 549 * IR + 2454 * (1 - IR)
                                if not ((IP * 2468 + IQ * 1682 + IP * IQ) % 16777213 == 1620345) then
                                    IL_4 = IN:find("well or faucet", 1, true)
                                end
                                if IL_4 then
                                    IS = true
                                end
                            end)
                            pcall(function()
                                Cu:Fire({ Plot = IU, Soil = Jd.soil, WateringCan = IV })
                            end)
                            task.wait(0.3)
                            pcall(function()
                                IT:Disconnect()
                            end)
                            if IS then
                                BA[14] = 0
                                pcall(function()
                                    IV:SetAttribute("Amount", 0)
                                end)
                                BA[1] = "Refilling watering can"
                                if not CA(IV) then
                                    break
                                end
                                IX_2 = false
                                IZ_2 = 0
                            elseif I__5:GetAttribute("IsWatered") then
                                local I__7 = tonumber(IV:GetAttribute("Amount"))
                                if I0_14 then
                                    BA[14] = I__7
                                else
                                    BA[14] = math.max(0, BA[14] - 1)
                                end
                                IW_4 += 1
                                BA[4] = BA[4] + 1
                                IZ_2 = 0
                            else
                                IZ_2 += 1
                                if IZ_2 >= 2 then
                                    BA[14] = 0
                                    pcall(function()
                                        IV:SetAttribute("Amount", 0)
                                    end)
                                    BA[1] = "Refilling watering can"
                                    Bw("water_force_refill", "Watering failed. Refilling can", 8)
                                    if not CA(IV) then
                                        break
                                    end
                                    IX_2 = false
                                    IZ_2 = 0
                                end
                            end
                        end
                    end
                elseif not I__5:GetAttribute("IsWatered") then
                    IY_2 += 1
                    if IY_2 > 40 then
                        break
                    end
                    local I0_13 = (I__5:GetAttribute("CropType")) or "crop"
                    BA[1] = (("Watering %*"):format(I0_13))
                    C3(Jd.soil)
                    task.wait(0.08)
                    if not I__5:GetAttribute("IsWatered") then
                        IS = false
                        IT = A8.Notification.OnClientEvent:Connect(function(hq)
                            local IL = hq and hq.Title
                            local IM = CV(IL):lower()
                            local IL_1 = hq and hq.Description
                            local IN = CV(IL_1):lower()
                            local IL_2 = (IM:find("empty", 1, true)) or IN:find("refill", 1, true)
                            local IR = if IL_2 then 1 else 0
                            local IP = 231 * IR + 3331 * (1 - IR)
                            local IQ = 549 * IR + 2454 * (1 - IR)
                            if not ((IP * 2468 + IQ * 1682 + IP * IQ) % 16777213 == 1620345) then
                                IL_2 = IN:find("well or faucet", 1, true)
                            end
                            if IL_2 then
                                IS = true
                            end
                        end)
                        pcall(function()
                            Cu:Fire({ Plot = IU, Soil = Jd.soil, WateringCan = IV })
                        end)
                        task.wait(0.3)
                        pcall(function()
                            IT:Disconnect()
                        end)
                        if IS then
                            BA[14] = 0
                            pcall(function()
                                IV:SetAttribute("Amount", 0)
                            end)
                            BA[1] = "Refilling watering can"
                            if not CA(IV) then
                                break
                            end
                            IX_2 = false
                            IZ_2 = 0
                        elseif I__5:GetAttribute("IsWatered") then
                            local I__8 = tonumber(IV:GetAttribute("Amount"))
                            I0_14 = I__8 and I__8 > 0
                            if I0_14 then
                                BA[14] = I__8
                            else
                                BA[14] = math.max(0, BA[14] - 1)
                            end
                            IW_4 += 1
                            BA[4] = BA[4] + 1
                            IZ_2 = 0
                        else
                            IZ_2 += 1
                            if IZ_2 >= 2 then
                                BA[14] = 0
                                pcall(function()
                                    IV:SetAttribute("Amount", 0)
                                end)
                                BA[1] = "Refilling watering can"
                                Bw("water_force_refill", "Watering failed. Refilling can", 8)
                                if not CA(IV) then
                                    break
                                end
                                IX_2 = false
                                IZ_2 = 0
                            end
                        end
                    end
                end
            end
        end
        if not fns.Bx(IU) then
            BA[16] = 0
        end
        if IW_4 > 0 then
            Bw("watered", ("Watered %* crop(s)"):format(IW_4), 5)
        end
        return IW_4 > 0
    end
end
Bp = function()
    if not C4("AutoFertilize") then
        return
    end
    local Ji = C2()
    local Jh = fns.Br(function(hQ)
        local Je = hQ:GetAttribute("ToolType") == "Fertilizer"
        if Je then
            local Jf = (tonumber(hQ:GetAttribute("Amount"))) or 0
            Je = Jf > 0
        end
        return Je
    end)
    if not (Ji and Jh) then
        local Jj_1 = not Jh
        local Jk_1 = (C4("AutoFertilize")) and Jj_1
        if Jk_1 then
            Bw("fert_missing", "Auto Fertilize needs fertilizer", 12)
        end
        return
    end
    local Jj_2 = false
    local Jk_2 = 0
    for k, v in BS(Ji) do
        local Jy = v
        local holder = Jy.holder
        local Jm = holder and holder:GetAttribute("CropType")
        local Jn = holder and holder:GetAttribute("IsOccupied") and not holder:GetAttribute("IsDead") and not holder:GetAttribute("IsFertilized") and Jm and A5(Jm, "FertilizeCrops", "FertilizeMode")
        if Jn then
            if Bk() <= 0 then
                Bw("fert_energy", "Out of energy while fertilizing", 10)
                return
            end
            local Jl_1 = (tonumber(Jh:GetAttribute("Amount"))) or 0
            if Jl_1 <= 0 then
                Bw("fert_empty", "Fertilizer ran out", 10)
                return
            end
            if not Jj_2 then
                if not C_(Jh) then
                    return
                end
                Jj_2 = true
            end
            BA[1] = (("Fertilizing %*"):format(Jm))
            C3(Jy.soil)
            task.wait(0.08)
            pcall(function()
                CropFertilize:Fire({ Plot = Ji, Soil = Jy.soil, Fertilizer = Jh })
            end)
            Jk_2 += 1
            BA[5] = BA[5] + 1
            task.wait(0.18)
        end
    end
    if Jk_2 > 0 then
        Bw("fertilized", ("Fertilized %* crop(s)"):format(Jk_2), 5)
    end
    return Jk_2 > 0
end
Bb = function()
    if not C4("AutoPesticide") then
        return false
    end
    local JG = C2()
    local JF = fns.Br(function(ij)
        local Jz = ij:GetAttribute("ToolType") == "Pesticide"
        if Jz then
            local JA = (tonumber(ij:GetAttribute("Amount"))) or 0
            Jz = JA > 0
        end
        return Jz
    end)
    if not (JG and JF) then
        return false
    end
    local JH_1 = false
    local JI = 0
    for k, v in BS(JG) do
        local JU = v
        local holder = JU.holder
        local JK = holder and holder:GetAttribute("IsOccupied") and not holder:GetAttribute("IsDead") and holder:GetAttribute("IsInfested") and not holder:GetAttribute("IsCured")
        if JK then
            if Bk() <= 0 then
                Bw("pest_energy", "Out of energy while using pesticide", 10)
                return JI > 0
            end
            local JK_1 = (tonumber(JF:GetAttribute("Amount"))) or 0
            if JK_1 <= 0 then
                Bw("pest_empty", "Pesticide ran out", 10)
                return JI > 0
            end
            if not JH_1 then
                if not C_(JF) then
                    return JI > 0
                end
                JH_1 = true
            end
            local JK_2 = (holder:GetAttribute("CropType")) or "crop"
            BA[1] = (("Treating %*"):format(JK_2))
            C3(JU.soil)
            task.wait(0.08)
            pcall(function()
                Cg:Fire({ Plot = JG, Soil = JU.soil, Pesticide = JF })
            end)
            JI += 1
            BA[6] = BA[6] + 1
            task.wait(0.18)
        end
    end
    if JI > 0 then
        Bw("pesticide", ("Treated %* infested crop(s)"):format(JI), 5)
    end
    return JI > 0
end
Bc = function(iF)
    if not iF then
        return 0
    end
    local JV = (iF:GetAttribute("UUID")) or iF:GetAttribute("SeedType") or iF.Name
    local JV_1 = (tonumber(iF:GetAttribute("Amount"))) or 0
    local JV_2 = BA[15][JV]
    if JV_2 == nil or JV_1 > JV_2 then
        BA[15][JV] = JV_1
        return JV_1
    end
    if JV_1 > 0 and JV_1 < JV_2 then
        BA[15][JV] = JV_1
        return JV_1
    end
    return math.max(0, JV_2)
end
CI = function(iO)
    if not iO then
        return
    end
    local J_ = (iO:GetAttribute("UUID")) or iO:GetAttribute("SeedType")
    local J4 = if J_ then 1 else 0
    local J2 = 4005 * J4 + 293 * (1 - J4)
    local J3 = 3792 * J4 + 1539 * (1 - J4)
    if not ((J2 * 3250 + J3 * 2627 + J2 * J3) % 16777213 == 4610368) then
        J_ = iO.Name
    end
    local J0 = J_
    BA[15][J0] = math.max(0, Bc(iO) - 1)
end
Ca = function(iU)
    if not iU then
        return
    end
    local J5 = (iU:GetAttribute("UUID")) or iU:GetAttribute("SeedType") or iU.Name
    BA[15][J5] = 0
end
BG = function(iZ)
    local J8 = not iZ or not iZ:IsA("ProximityPrompt")
    if J8 then
        return false
    end
    local lower = string.lower
    local J9 = iZ.ActionText or ""
    local Ka = lower(tostring(J9))
    local J9_1 = iZ.ObjectText
    local Kf = if J9_1 then 1 else 0
    local Kd = 418 * Kf + 2986 * (1 - Kf)
    local Ke = 3069 * Kf + 2930 * (1 - Kf)
    if not ((Kd * 1197 + Ke * 2584 + Kd * Ke) % 16777213 == 9713484) then
        J9_1 = ""
    end
    local Kb = lower(tostring(J9_1))
    if Ka == "soil" then
        return false
    end
    local J8_2 = (Kb:find("harvest", 1, true)) or Ka:find("harvest", 1, true)
    if J8_2 then
        return true
    end
    return false
end
A7 = function(i4)
    local Kg = not i4 or not i4:IsA("ProximityPrompt")
    if Kg then
        return false
    end
    local lower = string.lower
    local Kh = i4.ActionText or ""
    local Ki = lower(tostring(Kh))
    local Kh_1 = i4.ObjectText
    local Kq = if Kh_1 then 1 else 0
    local Ko = 3791 * Kq + 1588 * (1 - Kq)
    local Kp = 2339 * Kq + 4004 * (1 - Kq)
    if not ((Ko * 3625 + Kp * 2072 + Ko * Kp) % 16777213 == 10678719) then
        Kh_1 = ""
    end
    local Kj = lower(tostring(Kh_1))
    local Kg_2 = (Kj:find("clear", 1, true))
    local Kq_1 = if Kg_2 then 1 else 0
    local Ko_1 = 931 * Kq_1 + 553 * (1 - Kq_1)
    local Kp_1 = 512 * Kq_1 + 3232 * (1 - Kq_1)
    if not ((Ko_1 * 3509 + Kp_1 * 57 + Ko_1 * Kp_1) % 16777213 == 3772735) then
        Kg_2 = Ki:find("clear", 1, true)
    end
    return Kg_2
end
CR = function(ja)
    local Kr = ja and Bs[ja]
    local Kr_1 = type(Kr) == "table" and Kr.MaxFruits ~= nil
    return Kr_1
end
Cq = function(jg)
    local Kx = 0
    if not jg then
        return Kx
    end
    for i, descendant in jg:GetDescendants() do
        if CG:HasTag(descendant, "Crop_FruitResult") then
            Kx += 1
        end
    end
    return Kx
end
BP = function(jm)
    local KF = 0
    if not jm then
        return KF
    end
    for i, descendant in jm:GetDescendants() do
        local KG = (CG:HasTag(descendant, "Crop_Result")) or CG:HasTag(descendant, "Crop_FruitResult")
        if KG then
            KF += 1
        end
    end
    return KF
end
Ba = function(jt)
    local KO = {}
    if not jt then
        return KO
    end
    for i, descendant in jt:GetDescendants() do
        if BG(descendant) then
            KO[#KO + 1] = descendant
        end
    end
    return KO
end
CT = function(jz)
    local KW = jz and jz.holder
    local KW_1 = not KW or not KW:GetAttribute("IsOccupied") or KW:GetAttribute("IsDead") or KW:GetAttribute("IsLocked")
    if KW_1 then
        return false
    end
    local attr = KW:GetAttribute("CropType")
    local KY = attr and A5(attr, "HarvestCrops", "HarvestMode")
    if not KY then
        return false
    end
    local KY_1 = Ba(jz.soil)
    if #KY_1 == 0 then
        return false
    elseif CR(attr) then
        return Cq(jz.soil) > 0
    else
        local KW_3 = KW:GetAttribute("IsFinished") == true and BP(jz.soil) > 0
        return KW_3
    end
end
BE = function()
    local K6_1, K6_2
    local K0_3
    local K__4
    if not C4("AutoHarvest") then
        return
    elseif Cc() then
        local K__1 = C2()
        local K0_1 = K__1 and BZ(K__1)
        if K0_1 then
            return false
        end
        local K__2 = C2()
        if not K__4 then
            return
        end
        local K0_2 = 0
        for k, v in BS(K__2) do
            if not not CT(v) then
                local K__3 = v.holder
                local attr3 = K__3:GetAttribute("CropType")
                local K2_1 = CR(attr3)
                local K3_1 = Ba(v.soil)
                BA[1] = (("Harvesting %*"):format(attr3))
                for k, v2 in K3_1 do
                    if not not v2.Parent then
                        local K1_2 = K2_1 and Cq(v.soil) <= 0
                        if K1_2 then
                            break
                        end
                        local K1_3 = not K2_1
                        if K1_3 ~= false then
                            K1_3 = not K__3:GetAttribute("IsFinished")
                        end
                        if K1_3 then
                            break
                        end
                        local K1_4 = Cq(v.soil)
                        local K3_2 = BP(v.soil)
                        local attr2 = K__3:GetAttribute("IsOccupied")
                        local attr = K__3:GetAttribute("IsFinished")
                        Co(v2)
                        task.wait(0.35)
                        if K2_1 then
                            K6_1 = Cq(v.soil) < K1_4
                        else
                            local K1_5 = BP(v.soil) < K3_2 or K__3:GetAttribute("IsOccupied") ~= attr2 or K__3:GetAttribute("IsFinished") ~= attr
                            K6_1 = K1_5
                        end
                        if K6_1 then
                            K0_2 += 1
                            BA[3] = BA[3] + 1
                            BA[17] = BA[17] + 1
                            if BA[17] >= Bu then
                                Bw("care_batch", ("Care check after %* plant/harvest actions"):format(Bu), 6)
                                break
                            end
                        end
                    end
                end
                if BA[17] >= Bu then
                    break
                end
                for i, descendant in v.soil:GetDescendants() do
                    if A7(descendant) then
                        Co(descendant)
                        task.wait(0.25)
                        break
                    end
                end
            end
        end
        if K0_3 > 0 then
            Bw("harvested", ("Harvested %* crop(s)"):format(K0_2), 5)
        end
        return K0_2 > 0
    else
        K__4 = C2()
        if not K__4 then
            return
        end
        K0_3 = 0
        for k, v in BS(K__4) do
            if not not CT(v) then
                local K__5 = v.holder
                local attr3 = K__5:GetAttribute("CropType")
                local K2_2 = CR(attr3)
                local K3_3 = Ba(v.soil)
                BA[1] = (("Harvesting %*"):format(attr3))
                for k, v2 in K3_3 do
                    if not not v2.Parent then
                        local K1_7 = K2_2 and Cq(v.soil) <= 0
                        if K1_7 then
                            break
                        end
                        local K1_8 = not K2_2
                        if K1_8 ~= false then
                            K1_8 = not K__5:GetAttribute("IsFinished")
                        end
                        if K1_8 then
                            break
                        end
                        local K1_9 = Cq(v.soil)
                        local K3_4 = BP(v.soil)
                        local attr2 = K__5:GetAttribute("IsOccupied")
                        local attr = K__5:GetAttribute("IsFinished")
                        Co(v2)
                        task.wait(0.35)
                        if K2_2 then
                            K6_2 = Cq(v.soil) < K1_9
                        else
                            local K1_10 = BP(v.soil) < K3_4 or K__5:GetAttribute("IsOccupied") ~= attr2 or K__5:GetAttribute("IsFinished") ~= attr
                            K6_2 = K1_10
                        end
                        if K6_2 then
                            K0_3 += 1
                            BA[3] = BA[3] + 1
                            BA[17] = BA[17] + 1
                            if BA[17] >= Bu then
                                Bw("care_batch", ("Care check after %* plant/harvest actions"):format(Bu), 6)
                                break
                            end
                        end
                    end
                end
                if BA[17] >= Bu then
                    break
                end
                for i, descendant in v.soil:GetDescendants() do
                    if A7(descendant) then
                        Co(descendant)
                        task.wait(0.25)
                        break
                    end
                end
            end
        end
        if K0_3 > 0 then
            Bw("harvested", ("Harvested %* crop(s)"):format(K0_3), 5)
        end
        return K0_3 > 0
    end
end
CL = function()
    local Lx, Ly, LA, LB
    if not C4("AutoPlant") then
        return false
    end
    local LC = Cd()
    local LD = not LC
    local LD_7
    local LE = (C4("PlantOnlyInRain")) and LD
    if LE then
        return false
    end
    local LN = if Cc() then 1 else 0
    if LN == 1 then
        local LD_1 = C2()
        local LE_1 = LD_1 and BZ(LD_1)
        if LE_1 then
            return false
        end
        local LD_2 = not LC
        if LD_2 ~= false then
            LD_2 = BA[16] >= BB
        end
        if LD_2 then
            return false
        end
        if LC then
            BA[16] = 0
        end
        LB = C2()
        if not LB then
            return false
        end
        Lx = Options.PlantMode and Options.PlantMode.Value or "Selected"
        LA = Ci("PlantCrops")
        Ly = {}
        Ce(function(kE)
            local Lt = kE:GetAttribute("ToolType") == "SeedBag" and Bc(kE) > 0
            if Lt then
                local attr = kE:GetAttribute("SeedType")
                if Lx == "All" or attr and LA[attr] then
                    Ly[#Ly + 1] = kE
                end
            end
        end)
        if #Ly == 0 then
            Bw("plant_seeds", "Auto Plant needs matching seed bags", 12)
            return false
        end
        local LD_4 = 0
        local LE_3 = 0
        local LF_1 = 1
        for k, v in BS(LB) do
            local Lz
            local LW = v
            local LG_1 = not LC
            if LG_1 ~= false then
                LG_1 = BA[16] >= BB
            end
            if LG_1 then
                break
            end
            local holder = LW.holder
            local LH_1 = holder and not holder:GetAttribute("IsOccupied") and not LW.soil:GetAttribute("IsOccupied") and B3(LW.soil)
            if LH_1 then
                if Bk() <= 0 then
                    Bw("plant_energy", "Out of energy while planting", 10)
                    return LD_4 > 0
                end
                while true do
                    local LH_2 = Ly[LF_1] and Bc(Ly[LF_1]) <= 0
                    if LH_2 then
                        LF_1 += 1
                        continue
                    end
                    break
                end
                Lz = Ly[LF_1]
                if not Lz then
                    Bw("plant_empty", "Ran out of seeds while planting", 10)
                    return LD_4 > 0
                end
                local LH_3 = (Lz:GetAttribute("SeedType")) or Lz.Name
                BA[1] = (("Planting %*"):format(LH_3))
                if not C_(Lz) then
                    Bw("plant_equip", "Failed to equip seed bag", 8)
                    return LD_4 > 0
                end
                C3(LW.soil)
                task.wait(0.08)
                local LH_4 = Bc(Lz)
                pcall(function()
                    CropPlace:Fire({ Plot = LB, Soil = LW.soil, SeedBag = Lz })
                end)
                task.wait(0.25)
                local LI_1 = (holder:GetAttribute("IsOccupied")) or LW.soil:GetAttribute("IsOccupied")
                local LI_2 = tonumber(Lz:GetAttribute("Amount"))
                local LJ_1 = typeof(LI_2) == "number" and LI_2 < LH_4
                if LJ_1 then
                    local LH_5 = BA[15]
                    local LJ_2 = (Lz:GetAttribute("UUID")) or Lz:GetAttribute("SeedType") or Lz.Name
                    LH_5[LJ_2] = LI_2
                end
                if LI_1 then
                    CI(Lz)
                    LD_4 += 1
                    BA[2] = BA[2] + 1
                    BA[17] = BA[17] + 1
                    LE_3 = 0
                    if LC then
                        BA[16] = 0
                        if BA[17] >= Bu then
                            Bw("care_batch", ("Care check after %* plant/harvest actions"):format(Bu), 6)
                            break
                        end
                    else
                        BA[16] = BA[16] + 1
                        if BA[16] >= BB then
                            Bw("plant_batch", ("Planted %*. Watering before more"):format(BB), 6)
                            break
                        elseif BA[17] >= Bu then
                            Bw("care_batch", ("Care check after %* plant/harvest actions"):format(Bu), 6)
                            break
                        end
                    end
                else
                    LE_3 += 1
                    if LE_3 >= 2 then
                        Ca(Lz)
                        Bw("plant_empty", "Ran out of seeds while planting", 10)
                        LF_1 += 1
                        LE_3 = 0
                        if not Ly[LF_1] then
                            return LD_4 > 0
                        end
                    end
                end
            end
        end
        if LD_7 > 0 then
            Bw("planted", ("Planted %* crop(s)"):format(LD_4), 5)
        end
        return LD_4 > 0
    end
    local LD_5 = not LC
    if LD_5 ~= false then
        LD_5 = BA[16] >= BB
    end
    if LD_5 then
        return false
    end
    if LC then
        BA[16] = 0
    end
    LB = C2()
    if not LB then
        return false
    end
    Lx = Options.PlantMode and Options.PlantMode.Value or "Selected"
    LA = Ci("PlantCrops")
    Ly = {}
    Ce(function(kE)
        local Lt = kE:GetAttribute("ToolType") == "SeedBag" and Bc(kE) > 0
        if Lt then
            local attr = kE:GetAttribute("SeedType")
            if Lx == "All" or attr and LA[attr] then
                Ly[#Ly + 1] = kE
            end
        end
    end)
    if #Ly == 0 then
        Bw("plant_seeds", "Auto Plant needs matching seed bags", 12)
        return false
    end
    LD_7 = 0
    local LE_5 = 0
    local LF_2 = 1
    for k, v in BS(LB) do
        local Lz
        local LW = v
        local LG_4 = not LC
        if LG_4 ~= false then
            LG_4 = BA[16] >= BB
        end
        if LG_4 then
            break
        end
        local holder = LW.holder
        local LH_6 = holder and not holder:GetAttribute("IsOccupied") and not LW.soil:GetAttribute("IsOccupied") and B3(LW.soil)
        if LH_6 then
            if Bk() <= 0 then
                Bw("plant_energy", "Out of energy while planting", 10)
                return LD_7 > 0
            end
            while true do
                local LH_7 = Ly[LF_2] and Bc(Ly[LF_2]) <= 0
                if LH_7 then
                    LF_2 += 1
                    continue
                end
                break
            end
            Lz = Ly[LF_2]
            if not Lz then
                Bw("plant_empty", "Ran out of seeds while planting", 10)
                return LD_7 > 0
            end
            local LH_8 = (Lz:GetAttribute("SeedType")) or Lz.Name
            BA[1] = (("Planting %*"):format(LH_8))
            if not C_(Lz) then
                Bw("plant_equip", "Failed to equip seed bag", 8)
                return LD_7 > 0
            end
            C3(LW.soil)
            task.wait(0.08)
            local LH_9 = Bc(Lz)
            pcall(function()
                CropPlace:Fire({ Plot = LB, Soil = LW.soil, SeedBag = Lz })
            end)
            task.wait(0.25)
            local LI_3 = (holder:GetAttribute("IsOccupied")) or LW.soil:GetAttribute("IsOccupied")
            local LI_4 = tonumber(Lz:GetAttribute("Amount"))
            local LJ_3 = typeof(LI_4) == "number" and LI_4 < LH_9
            if LJ_3 then
                local LH_10 = BA[15]
                local LJ_4 = (Lz:GetAttribute("UUID")) or Lz:GetAttribute("SeedType") or Lz.Name
                LH_10[LJ_4] = LI_4
            end
            if LI_3 then
                CI(Lz)
                LD_7 += 1
                BA[2] = BA[2] + 1
                BA[17] = BA[17] + 1
                LE_5 = 0
                if LC then
                    BA[16] = 0
                    if BA[17] >= Bu then
                        Bw("care_batch", ("Care check after %* plant/harvest actions"):format(Bu), 6)
                        break
                    end
                else
                    BA[16] = BA[16] + 1
                    if BA[16] >= BB then
                        Bw("plant_batch", ("Planted %*. Watering before more"):format(BB), 6)
                        break
                    elseif BA[17] >= Bu then
                        Bw("care_batch", ("Care check after %* plant/harvest actions"):format(Bu), 6)
                        break
                    end
                end
            else
                LE_5 += 1
                if LE_5 >= 2 then
                    Ca(Lz)
                    Bw("plant_empty", "Ran out of seeds while planting", 10)
                    LF_2 += 1
                    LE_5 = 0
                    if not Ly[LF_2] then
                        return LD_7 > 0
                    end
                end
            end
        end
    end
    if LD_7 > 0 then
        Bw("planted", ("Planted %* crop(s)"):format(LD_7), 5)
    end
    return LD_7 > 0
end
BL = function()
    if not C4("AutoRemoveDead") then
        return false
    end
    local LX = C2()
    local LY = fns.Br(function(lm)
        return lm:GetAttribute("ToolType") == "Shovel"
    end)
    if not (LX and LY) then
        return false
    end
    local LZ_1 = false
    local L_ = 0
    for k, v in BS(LX) do
        local Mc = v
        local holder = Mc.holder
        local L1 = holder and holder:GetAttribute("IsOccupied") and holder:GetAttribute("IsDead") and not holder:GetAttribute("IsLocked")
        if L1 then
            if Bk() <= 0 then
                Bw("remove_energy", "Out of energy while removing dead crops", 10)
                return L_ > 0
            end
            if not LZ_1 then
                if not C_(LY) then
                    return L_ > 0
                end
                LZ_1 = true
            end
            local L1_1 = (holder:GetAttribute("CropType")) or "crop"
            BA[1] = (("Removing dead %*"):format(L1_1))
            C3(Mc.soil)
            task.wait(0.08)
            local attr = holder:GetAttribute("IsOccupied")
            pcall(function()
                Cb:Fire({ Plot = LX, Soil = Mc.soil })
            end)
            task.wait(0.3)
            local L2 = not holder:GetAttribute("IsOccupied") or not holder:GetAttribute("IsDead") or holder:GetAttribute("IsOccupied") ~= attr
            if L2 then
                L_ += 1
                BA[7] = BA[7] + 1
            end
        end
    end
    if L_ > 0 then
        Bw("removed", ("Removed %* dead crop(s)"):format(L_), 5)
    end
    return L_ > 0
end
BK = nil
BD = function()
    local Mf
    local Mn_2
    if not C4("AutoDig") then
        return false
    end
    local Mh = C2()
    local Mi = fns.Br(function(lM)
        return lM:GetAttribute("ToolType") == "Shovel"
    end)
    if not (Mh and Mi) then
        return false
    end
    Mf = 1
    pcall(function()
        Mf = By.Config.Energy.DigDrain or 1
    end)
    local Mk = Options.DigLogic and Options.DigLogic.Value or "Normal Dig"
    local PlotFloor
    if Bk() < Mf then
        if Mk == "Rest Dig" then
            if not BK(Mh) then
                return false
            end
            local PlotFloor2 = Mh:FindFirstChild("PlotFloor")
            if not PlotFloor then
                return false
            end
            local Size = PlotFloor2.Size
            local CFrame2 = PlotFloor2.CFrame
            local Mk_2 = false
            local Mn_1 = 0
            for i = 1, 6 do
                local Mg
                if Bk() < Mf then
                    if Mk == "Rest Dig" then
                        if not BK(Mh) then
                            break
                        end
                        Mk_2 = false
                        local Mo_1 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                        Mg = (CFrame2 * CFrame.new(Mo_1)).Position
                        if Boundaries.IsPointInBoundaries(Mg, Mh) ~= false then
                            if not C_(Mi) then
                                return Mn_1 > 0
                            end
                            Mk_2 = true
                            BA[1] = "Digging unused land"
                            C3(Mg)
                            task.wait(0.1)
                            pcall(function()
                                B8:Fire({ Plot = Mh, Position = Mg })
                            end)
                            Mn_1 += 1
                            BA[8] = BA[8] + 1
                            task.wait(0.35)
                        end
                    else
                        break
                    end
                else
                    local Mo_2 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                    Mg = (CFrame2 * CFrame.new(Mo_2)).Position
                    if Boundaries.IsPointInBoundaries(Mg, Mh) ~= false then
                        if not Mk_2 then
                            if not C_(Mi) then
                                return Mn_1 > 0
                            end
                            Mk_2 = true
                        end
                        BA[1] = "Digging unused land"
                        C3(Mg)
                        task.wait(0.1)
                        pcall(function()
                            B8:Fire({ Plot = Mh, Position = Mg })
                        end)
                        Mn_1 += 1
                        BA[8] = BA[8] + 1
                        task.wait(0.35)
                    end
                end
            end
            if Mn_2 > 0 then
                Bw("dug", ("Dug %* spot(s)"):format(Mn_1), 6)
            end
            return Mn_1 > 0
        end
        Bw("dig_energy", "Out of energy for digging", 10)
        return false
    end
    PlotFloor = Mh:FindFirstChild("PlotFloor")
    if not PlotFloor then
        return false
    end
    local Size = PlotFloor.Size
    local CFrame2 = PlotFloor.CFrame
    local Mk_4 = false
    Mn_2 = 0
    for i = 1, 6 do
        local Mg
        if Bk() < Mf then
            if Mk == "Rest Dig" then
                if not BK(Mh) then
                    break
                end
                Mk_4 = false
                local Mo_3 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                Mg = (CFrame2 * CFrame.new(Mo_3)).Position
                if Boundaries.IsPointInBoundaries(Mg, Mh) ~= false then
                    if not C_(Mi) then
                        return Mn_2 > 0
                    end
                    Mk_4 = true
                    BA[1] = "Digging unused land"
                    C3(Mg)
                    task.wait(0.1)
                    pcall(function()
                        B8:Fire({ Plot = Mh, Position = Mg })
                    end)
                    Mn_2 += 1
                    BA[8] = BA[8] + 1
                    task.wait(0.35)
                end
            else
                break
            end
        else
            local Mo_4 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
            Mg = (CFrame2 * CFrame.new(Mo_4)).Position
            if Boundaries.IsPointInBoundaries(Mg, Mh) ~= false then
                if not Mk_4 then
                    if not C_(Mi) then
                        return Mn_2 > 0
                    end
                    Mk_4 = true
                end
                BA[1] = "Digging unused land"
                C3(Mg)
                task.wait(0.1)
                pcall(function()
                    B8:Fire({ Plot = Mh, Position = Mg })
                end)
                Mn_2 += 1
                BA[8] = BA[8] + 1
                task.wait(0.35)
            end
        end
    end
    if Mn_2 > 0 then
        Bw("dug", ("Dug %* spot(s)"):format(Mn_2), 6)
    end
    return Mn_2 > 0
end
C5 = function(me)
    local Mu = me and me.Parent
    if not Mu then
        return
    end
    for i, descendant in Mu:GetDescendants() do
        if descendant:IsA("ProximityPrompt") then
            local lower = string.lower
            local Mv_1 = descendant.ObjectText or ""
            local Mw = lower(tostring(Mv_1))
            if Mw:find("sit", 1, true) then
                return descendant
            end
        end
    end
end
Cz = function(ml)
    local ME = CK()
    local MF = Cr()
    if not (ME and MF and ml) then
        return false
    elseif not ME.Sit then
        return false
    elseif not MF:FindFirstChild("SeatWeld") then
        return false
    else
        return ml:GetAttribute("Occupant") == Cf.Name
    end
end
BX = function(ms)
    if not ms then
        return
    end
    local MJ
    local MK
    for i, descendant in ms:GetDescendants() do
        local ML_1 = (descendant:IsA("Seat")) and descendant:GetAttribute("_Functionality") == "Seat"
        if ML_1 then
            if descendant:GetAttribute("Occupant") == Cf.Name then
                MJ = descendant
                break
            end
            local ML_2 = not descendant.Occupant
            if ML_2 ~= false then
                local MM_1 = not descendant:GetAttribute("Occupant") or descendant:GetAttribute("Occupant") == ""
                ML_2 = MM_1
            end
            if ML_2 and not MK then
                if C5(descendant) then
                    MK = descendant
                end
            end
        end
    end
    return MJ or MK
end
C1 = function(mC)
    local MV
    local MW = CK()
    local MX = Cr()
    if not (MW and MX and mC) then
        return false
    elseif Cz(mC) then
        return true
    else
        B6()
        task.wait(0.1)
        MV = C5(mC)
        if not MV then
            return false
        end
        MX.CFrame = mC.CFrame * CFrame.new(0, mC.Size.Y / 2 + 2, 0)
        task.wait(0.25)
        if MW.Sit then
            B6()
            task.wait(0.15)
            MX.CFrame = mC.CFrame * CFrame.new(0, mC.Size.Y / 2 + 2, 0)
            task.wait(0.2)
        end
        pcall(function()
            MV.Enabled = true
            MV.HoldDuration = 0
            MV.RequiresLineOfSight = false
            MV.MaxActivationDistance = math.max(MV.MaxActivationDistance, 20)
        end)
        if fireproximityprompt then
            pcall(fireproximityprompt, MV)
        elseif firesignal then
            pcall(firesignal, MV.Triggered, Cf)
        else
            pcall(function()
                MV:InputHoldBegin()
                task.wait(0.08)
                MV:InputHoldEnd()
            end)
        end
        local M8 = 1
        while M8 <= 25 do
            if Cz(mC) then
                return true
            end
            task.wait(0.08)
            M8 += 1
        end
        return Cz(mC)
    end
end
BM = function()
    local mM = 100
    pcall(function()
        local EnergyRange = By.Config.Energy.EnergyRange
        if typeof(EnergyRange) == "NumberRange" then
            mM = EnergyRange.Max
        elseif type(EnergyRange) == "number" then
            mM = EnergyRange
        end
    end)
    return mM
end
BK = function(mR)
    local Ng = BX(mR)
    if not Ng then
        Bw("dig_rest_seat", "Rest Dig needs a Rest chair or bench on your plot", 12)
        return false
    elseif not C1(Ng) then
        Bw("dig_rest_sit", "Rest Dig failed to sit", 10)
        return false
    else
        local Nh = BM()
        BA[1] = "Resting until energy is full"
        Bw("dig_resting", "Resting until energy is full", 8)
        while true do
            local Ni = not Library.Unloaded and C4("AutoDig")
            if not Ni then
                B6()
                task.wait(0.2)
                return Bk() >= Nh
            end
            if (Options.DigLogic and Options.DigLogic.Value or "Normal Dig") ~= "Rest Dig" then
                B6()
                task.wait(0.2)
                return Bk() >= Nh
            end
            local Ni_2 = Bk()
            if Ni_2 >= Nh then
                B6()
                task.wait(0.2)
                return Bk() >= Nh
            end
            local Nn = if not Cz(Ng) then 1 else 0
            if Nn == 1 then
                if not C1(Ng) then
                    break
                end
                task.wait(0.5)
                continue
            end
            task.wait(0.5)
        end
        B6()
        return false
    end
end
BY = function()
    local Ns
    local PlotFloor
    if not C4("DigWhileSeated") then
        return false
    end
    local Nr = C2()
    local Nt = fns.Br(function(nc)
        return nc:GetAttribute("ToolType") == "Shovel"
    end)
    if not Nr then
        return false
    elseif not Nt then
        Bw("dig_seat_shovel", "Dig While Seated needs a shovel", 12)
        return false
    else
        local Nv = BX(Nr)
        if not Nv then
            Bw("dig_seat_missing", "Dig While Seated needs a Rest chair or bench on your plot", 12)
            return false
        end
        Ns = 1
        pcall(function()
            Ns = By.Config.Energy.DigDrain or 1
        end)
        if Bk() < Ns then
            Bw("dig_energy", "Out of energy for digging", 10)
            return false
        elseif not C1(Nv) then
            Bw("dig_seat_fail", "Failed to sit for Dig While Seated", 10)
            return false
        elseif Nt.Parent ~= Cf.Character then
            local Nq = CK()
            if Nq then
                pcall(function()
                    Nq:EquipTool(Nt)
                end)
                task.wait(0.1)
            end
            if not Cz(Nv) then
                if not C1(Nv) then
                    B6()
                    return false
                end
                local PlotFloor2 = Nr:FindFirstChild("PlotFloor")
                if not PlotFloor then
                    B6()
                    return false
                end
                local Size = PlotFloor2.Size
                local CFrame2 = PlotFloor2.CFrame
                local Nw_2 = 0
                for i = 1, 6 do
                    local Nu
                    if Bk() < Ns then
                        break
                    elseif not Cz(Nv) then
                        if not C1(Nv) then
                            break
                        end
                        local Nz_1 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                        Nu = (CFrame2 * CFrame.new(Nz_1)).Position
                        if Boundaries.IsPointInBoundaries(Nu, Nr) ~= false then
                            BA[1] = "Digging while seated"
                            pcall(function()
                                B8:Fire({ Plot = Nr, Position = Nu })
                            end)
                            Nw_2 += 1
                            BA[8] = BA[8] + 1
                            task.wait(0.35)
                        end
                    else
                        local Nz_2 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                        Nu = (CFrame2 * CFrame.new(Nz_2)).Position
                        if Boundaries.IsPointInBoundaries(Nu, Nr) ~= false then
                            BA[1] = "Digging while seated"
                            pcall(function()
                                B8:Fire({ Plot = Nr, Position = Nu })
                            end)
                            Nw_2 += 1
                            BA[8] = BA[8] + 1
                            task.wait(0.35)
                        end
                    end
                end
                B6()
                if Nw_2 > 0 then
                    Bw("dug_seated", ("Dug %* spot(s) while seated"):format(Nw_2), 6)
                end
                return Nw_2 > 0
            end
            local PlotFloor2 = Nr:FindFirstChild("PlotFloor")
            if not PlotFloor then
                B6()
                return false
            end
            local Size = PlotFloor2.Size
            local CFrame2 = PlotFloor2.CFrame
            local Nw_4 = 0
            for i = 1, 6 do
                local Nu
                if Bk() < Ns then
                    break
                elseif not Cz(Nv) then
                    if not C1(Nv) then
                        break
                    end
                    local Nz_3 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                    Nu = (CFrame2 * CFrame.new(Nz_3)).Position
                    if Boundaries.IsPointInBoundaries(Nu, Nr) ~= false then
                        BA[1] = "Digging while seated"
                        pcall(function()
                            B8:Fire({ Plot = Nr, Position = Nu })
                        end)
                        Nw_4 += 1
                        BA[8] = BA[8] + 1
                        task.wait(0.35)
                    end
                else
                    local Nz_4 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                    Nu = (CFrame2 * CFrame.new(Nz_4)).Position
                    if Boundaries.IsPointInBoundaries(Nu, Nr) ~= false then
                        BA[1] = "Digging while seated"
                        pcall(function()
                            B8:Fire({ Plot = Nr, Position = Nu })
                        end)
                        Nw_4 += 1
                        BA[8] = BA[8] + 1
                        task.wait(0.35)
                    end
                end
            end
            B6()
            if Nw_4 > 0 then
                Bw("dug_seated", ("Dug %* spot(s) while seated"):format(Nw_4), 6)
            end
            return Nw_4 > 0
        else
            PlotFloor = Nr:FindFirstChild("PlotFloor")
            if not PlotFloor then
                B6()
                return false
            end
            local Size = PlotFloor.Size
            local CFrame2 = PlotFloor.CFrame
            local Nw_6 = 0
            for i = 1, 6 do
                local Nu
                if Bk() < Ns then
                    break
                elseif not Cz(Nv) then
                    if not C1(Nv) then
                        break
                    end
                    local Nz_5 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                    Nu = (CFrame2 * CFrame.new(Nz_5)).Position
                    if Boundaries.IsPointInBoundaries(Nu, Nr) ~= false then
                        BA[1] = "Digging while seated"
                        pcall(function()
                            B8:Fire({ Plot = Nr, Position = Nu })
                        end)
                        Nw_6 += 1
                        BA[8] = BA[8] + 1
                        task.wait(0.35)
                    end
                else
                    local Nz_6 = Vector3.new((math.random() - 0.5) * Size.X * 0.85, 0, (math.random() - 0.5) * Size.Z * 0.85)
                    Nu = (CFrame2 * CFrame.new(Nz_6)).Position
                    if Boundaries.IsPointInBoundaries(Nu, Nr) ~= false then
                        BA[1] = "Digging while seated"
                        pcall(function()
                            B8:Fire({ Plot = Nr, Position = Nu })
                        end)
                        Nw_6 += 1
                        BA[8] = BA[8] + 1
                        task.wait(0.35)
                    end
                end
            end
            B6()
            if Nw_6 > 0 then
                Bw("dug_seated", ("Dug %* spot(s) while seated"):format(Nw_6), 6)
            end
            return Nw_6 > 0
        end
    end
end
A1 = function()
    local NP, NQ, NR
    if not C4("AutoPlant") then
        return false
    end
    NQ = Options.PlantMode and Options.PlantMode.Value or "Selected"
    NP = Ci("PlantCrops")
    NR = false
    Ce(function(nQ)
        if NR then
            return
        end
        local NI = nQ:GetAttribute("ToolType") == "SeedBag" and Bc(nQ) > 0
        if NI then
            local attr = nQ:GetAttribute("SeedType")
            if NQ == "All" or attr and NP[attr] then
                NR = true
            end
        end
    end)
    return NR
end
Bo = function()
    local N3 = C2()
    if not N3 then
        return false
    elseif BZ(N3) then
        return true
    elseif Bk() <= 0 then
        return false
    else
        local N4 = Cd()
        local N5 = not N4
        if N5 ~= false then
            N5 = BA[16] >= BB
        end
        local N6 = N5
        local N5_1 = (A1()) and not N6 and BA[17] < Bu
        if N5_1 then
            local N6_1 = not C4("PlantOnlyInRain") or N4
            N5_1 = N6_1
        end
        local N4_1 = N5_1
        local N5_2 = (C4("AutoFertilize")) and fns.Br(function(oj)
            local NY = oj:GetAttribute("ToolType") == "Fertilizer"
            if NY then
                local NZ = (tonumber(oj:GetAttribute("Amount"))) or 0
                NY = NZ > 0
            end
            return NY
        end) ~= nil
        for k, v in BS(N3) do
            local holder = v.holder
            local N5_3 = holder and holder:GetAttribute("IsOccupied")
            local N7 = N4_1
            if N7 then
                N7 = holder
            end
            if N7 then
                N7 = not N5_3
            end
            if N7 then
                N7 = not v.soil:GetAttribute("IsOccupied")
            end
            if N7 then
                N7 = B3(v.soil)
            end
            if N7 then
                return true
            end
            if N5_3 then
                local attr3 = holder:GetAttribute("CropType")
                local attr2 = holder:GetAttribute("IsDead")
                local attr = holder:GetAttribute("IsLocked")
                local N9 = (C4("AutoHarvest")) and not attr2 and not attr and attr3 and A5(attr3, "HarvestCrops", "HarvestMode") and CT(v) and BA[17] < Bu
                if N9 then
                    return true
                end
                local N8_2 = N5_2 and not attr2 and not holder:GetAttribute("IsFertilized") and attr3 and A5(attr3, "FertilizeCrops", "FertilizeMode")
                if N8_2 then
                    return true
                end
                if C4("AutoHarvest") then
                    for i, descendant in v.soil:GetDescendants() do
                        if A7(descendant) then
                            return true
                        end
                    end
                end
            end
        end
        return false
    end
end
Cj = function()
    local Oq
    local OB = if not C4("AutoBuySeeds") then 1 else 0
    if OB == 1 then
        return
    end
    local Ot = Bj("BuySeedCrops", B4)
    if not next(Ot) then
        return
    end
    local max = math.max
    local floor = math.floor
    local Ow = Options.BuySeedAmount and Options.BuySeedAmount.Value
    local Ox = (tonumber(Ow))
    local OB_1 = if Ox then 1 else 0
    local Oz = 2180 * OB_1 + 3244 * (1 - OB_1)
    local OA = 3794 * OB_1 + 1782 * (1 - OB_1)
    if not ((Oz * 2159 + OA * 863 + Oz * OA) % 16777213 == 16251762) then
        Ox = 1
    end
    local Ow_1 = max(1, floor(Ox))
    Oq = nil
    pcall(function()
        Oq = StoreAction:Fire({ StoreType = "FernSeedStore", Action = "RequestProductsForPlayer" })
    end)
    if type(Oq) ~= "table" then
        return
    end
    for k, v in Oq do
        local Or = v.Id or k
        local Ou_2 = Ot[Or]
        if Ou_2 then
            local Ov_1 = (tonumber(v.Stock)) or 0
            Ou_2 = Ov_1 > 0
        end
        if Ou_2 then
            local Ou_3 = (tonumber(v.Price)) or 0
            local Ou_4 = (tonumber(v.Stock)) or 0
            local Os = math.min(Ow_1, Ou_4)
            if Ou_3 > 0 then
                Os = math.min(Os, math.floor(A6() / Ou_3))
            end
            if Os > 0 then
                pcall(function()
                    StoreAction:Fire({ StoreType = "FernSeedStore", Action = "Buy", Arguments = { ProductId = Or, Amount = Os } })
                end)
                BA[11] = BA[11] + Os
                BA[1] = (("Buying %* x%*"):format(Or, Os))
                Bw("buy_seed", ("Bought %* x%*"):format(Or, Os), 4)
                task.wait(0.25)
            end
        end
    end
end
Ck = function()
    local OJ
    if not C4("AutoBuyMisc") then
        return
    end
    local OL = Bj("BuyMiscItems", CP)
    if not next(OL) then
        return
    end
    local max = math.max
    local floor = math.floor
    local OO = Options.BuyMiscAmount and Options.BuyMiscAmount.Value
    local OP = (tonumber(OO)) or 1
    local OO_1 = max(1, floor(OP))
    OJ = nil
    pcall(function()
        OJ = StoreAction:Fire({ StoreType = "FernMiscStore", Action = "RequestProductsForPlayer" })
    end)
    if type(OJ) ~= "table" then
        return
    end
    for k, v in OJ do
        local OK = v.Id or k
        local OM_2 = OL[OK]
        if OM_2 then
            local ON_1 = (tonumber(v.Stock)) or 0
            OM_2 = ON_1 > 0
        end
        if OM_2 then
            local OM_3 = (tonumber(v.Price)) or 0
            local OM_4 = (tonumber(v.Stock)) or 0
            local OI = math.min(OO_1, OM_4)
            if OM_3 > 0 then
                OI = math.min(OI, math.floor(A6() / OM_3))
            end
            if OI > 0 then
                pcall(function()
                    StoreAction:Fire({ StoreType = "FernMiscStore", Action = "Buy", Arguments = { ProductId = OK, Amount = OI } })
                end)
                BA[11] = BA[11] + OI
                BA[1] = (("Buying %* x%*"):format(OK, OI))
                Bw("buy_misc", ("Bought %* x%*"):format(OK, OI), 4)
                task.wait(0.25)
            end
        end
    end
end
Cm = function()
    local OY
    if not C4("AutoBuyHardware") then
        return
    end
    local O_ = Bj("BuyHardwareItems", BF)
    if not next(O_) then
        return
    end
    local max = math.max
    local floor = math.floor
    local O2 = Options.BuyHardwareAmount and Options.BuyHardwareAmount.Value
    local O3 = (tonumber(O2)) or 1
    local O2_1 = max(1, floor(O3))
    OY = nil
    pcall(function()
        OY = StoreAction:Fire({ StoreType = "EarlCosmeticStore", Action = "RequestProductsForPlayer" })
    end)
    if type(OY) ~= "table" then
        return
    end
    for k, v in OY do
        local OZ = v.Id or k
        local O0_2 = O_[OZ]
        if O0_2 then
            local O1_1 = (tonumber(v.Stock)) or 0
            O0_2 = O1_1 > 0
        end
        if O0_2 then
            local O0_3 = (tonumber(v.Price)) or 0
            local O0_4 = (tonumber(v.Stock)) or 0
            local OX = math.min(O2_1, O0_4)
            if O0_3 > 0 then
                OX = math.min(OX, math.floor(A6() / O0_3))
            end
            if OX > 0 then
                pcall(function()
                    StoreAction:Fire({ StoreType = "EarlCosmeticStore", Action = "Buy", Arguments = { ProductId = OZ, Amount = OX } })
                end)
                BA[11] = BA[11] + OX
                BA[1] = (("Buying %* x%*"):format(OZ, OX))
                Bw("buy_hw", ("Bought %* x%*"):format(OZ, OX), 4)
                task.wait(0.25)
            end
        end
    end
end
function fns.TW_46_15()
    local Pe, Pf
    Pf = C2()
    if not Pf then
        Library:Notify("No plot found")
        return
    end
    local Expansions2 = Pf:FindFirstChild("Expansions")
    if not Expansions2 then
        Library:Notify("No expansions found")
        return
    end
    local Ph = 0
    Pe = nil
    for i, child in Expansions2:GetChildren() do
        if child:HasTag("Expansion") then
            if child:GetAttribute("IsBought") then
                Ph += 1
            elseif not Pe then
                Pe = child
            end
        end
    end
    if not Pe then
        Library:Notify("All land expansions owned")
        return
    end
    local Expansions = By.Config.Expansions
    local Pi = type(Expansions) == "table" and Expansions[Ph + 1]
    local Ph_1 = type(Pi) == "number" and A6() < Pi
    if Ph_1 then
        Library:Notify((("Need %* clovers for next land"):format(Pi)))
        return
    end
    pcall(function()
        ExpansionBuy:Fire({ Plot = Pf, Expansion = Pe })
    end)
    Library:Notify((("Buying %*"):format(Pe.Name)))
end
CS = function()
    local PA, PB
    if not C4("AutoSell") then
        return
    end
    local PD = Options.SellMode and Options.SellMode.Value
    local PH = if PD then 1 else 0
    local PF = 3132 * PH + 1391 * (1 - PH)
    local PG = 926 * PH + 1262 * (1 - PH)
    if not ((PF * 1902 + PG * 1764 + PF * PG) % 16777213 == 10490760) then
        PD = "Selected"
    end
    local PC_1 = PD
    PA = Ci("SellCrops")
    if PC_1 == "All" then
        pcall(function()
            StoreAction:Fire({ StoreType = "FernSeedStore", Action = "SellAll", Arguments = { Query = "" } })
        end)
        BA[1] = "Selling all crops"
        Bw("sell_all", "Sold all non-favorite crops", 5)
        BA[10] = BA[10] + 1
        task.wait(0.4)
        return
    end
    PB = 0
    Ce(function(qg)
        local Px = qg:GetAttribute("ToolType") == "Crop" and not qg:GetAttribute("IsFavourite")
        if Px then
            local attr2 = qg:GetAttribute("CropType")
            if attr2 and PA[attr2] then
                local attr = qg:GetAttribute("UUID")
                if attr then
                    pcall(function()
                        StoreAction:Fire({ StoreType = "FernSeedStore", Action = "Sell", Arguments = { UUID = attr } })
                    end)
                    PB += 1
                    BA[10] = BA[10] + 1
                    task.wait(0.12)
                end
            end
        end
    end)
    if PB > 0 then
        BA[1] = (("Sold %* crop(s)"):format(PB))
        Bw("sell_sel", ("Sold %* selected crop(s)"):format(PB), 5)
    end
end
CX = function()
    local PO, PP, PQ, PR
    if not C4("AutoFavorite") then
        return
    end
    PP = Options.FavoriteMode and Options.FavoriteMode.Value or "Selected"
    PO = Ci("FavoriteCrops")
    local PS_1 = Options.FavoriteMutations and Options.FavoriteMutations.Value
    local PT_1 = CJ(PS_1)
    PQ = {}
    for k in PT_1 do
        local PS_2 = Bn[k]
        if PS_2 then
            PQ[PS_2] = true
        end
    end
    PR = {}
    Ce(function(qH)
        if qH:GetAttribute("ToolType") ~= "Crop" then
            return
        end
        if qH:GetAttribute("IsFavourite") then
            return
        end
        local attr2 = qH:GetAttribute("CropType")
        local PJ = (qH:GetAttribute("Variant")) or "Regular"
        local attr = qH:GetAttribute("UUID")
        if not attr then
            return
        end
        local PL = false
        if PP == "All" then
            PL = true
        elseif PP == "Selected" then
            PL = attr2 and PO[attr2] == true
        elseif PP == "Mutation" then
            PL = PQ[PJ] == true and PJ ~= "Regular"
        end
        if PL then
            PR[attr] = { IsFavourite = true }
            pcall(function()
                qH:SetAttribute("IsFavourite", true)
            end)
        end
    end)
    if next(PR) then
        local PS_3 = 0
        for k in PR do
            PS_3 += 1
        end
        pcall(function()
            BQ:Fire({ Inventory = PR })
        end)
        BA[12] = BA[12] + PS_3
        BA[1] = (("Favorited %* plant(s)"):format(PS_3))
        Bw("favorite", ("Favorited %* plant(s)"):format(PS_3), 5)
    end
end
task.spawn(function()
    while not Library.Unloaded do
        task.wait(0.45)
        pcall(function()
            if Cd() then
                BA[16] = 0
            end
            local P5 = C2()
            local P6 = Cc()
            local P7 = P5 ~= nil and BZ(P5)
            if P6 and not P7 then
                BA[17] = 0
                local P7_2 = P5 and not fns.Bx(P5)
                if P7_2 then
                    BA[16] = 0
                end
                P6 = false
            end
            local P7_3 = P7 and Bk() <= 0
            if P7_3 and P5 then
                local P7_4 = (C4("AutoDig")) or C4("DigWhileSeated")
                if P7_4 then
                    pcall(function()
                        BK(P5)
                    end)
                end
            end
            if P6 or P7 then
                BA[1] = "Care check"
                local P7_6 = not Cd()
                if P7_6 then
                    local P9_2 = (C4("AutoWater"))
                    local Qd = if P9_2 then 1 else 0
                    local Qb = 1768 * Qd + 862 * (1 - Qd)
                    local Qc = 1561 * Qd + 3597 * (1 - Qd)
                    if not ((Qb * 1117 + Qc * 3412 + Qb * Qc) % 16777213 == 10060836) then
                        P9_2 = BA[16] >= BB
                    end
                    P7_6 = P9_2
                end
                if P7_6 then
                    pcall(function()
                        Bm(true)
                    end)
                end
                pcall(Bb)
                pcall(BL)
                P5 = C2()
                local P7_7 = P5 ~= nil and BZ(P5)
                if not not P7_7 then
                    return
                end
                BA[17] = 0
                local P7_8 = P5 and not fns.Bx(P5)
                if P7_8 then
                    BA[16] = 0
                end
            end
            pcall(CL)
            if not Cd() then
                if BA[16] >= BB then
                    pcall(function()
                        Bm(true)
                    end)
                else
                    pcall(Bm)
                end
            end
            pcall(Bb)
            pcall(BE)
            pcall(Bp)
            pcall(BL)
            P5 = C2()
            local P6_1 = P5 and not BZ(P5) and BA[17] >= Bu
            if P6_1 then
                BA[17] = 0
            end
            local P6_2 = not C4("FarmPriority") or not Bo()
            if P6_2 then
                if C4("DigWhileSeated") then
                    pcall(BY)
                else
                    pcall(BD)
                end
            end
        end)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(1.25)
        pcall(Cj)
        pcall(Ck)
        pcall(Cm)
        pcall(CS)
        pcall(CX)
    end
end)
local TW_32_4 = Bv.Automation:AddSubTab("Farm", "sprout")
local TW_18_6 = Bv.Automation:AddSubTab("Care", "droplets")
fns.TW_50_21(TW_32_4)
fns.TW_50_21(TW_18_6)
local TW_64_27 = TW_32_4:AddLeftGroupbox("Farm")
TW_64_27:AddToggle("FarmPriority", {
    Text = "Farm Priority",
    Default = true,
    Tooltip = "Plant and water first, pesticide only on infested crops, then harvest. Dig only runs when nothing else needs doing."
})
TW_64_27:AddDivider("Planting")
TW_64_27:AddToggle("AutoPlant", { Text = "Auto Plant", Default = false })
TW_64_27:AddToggle("PlantOnlyInRain", {
    Text = "Plant Only In Rain",
    Default = false,
    Tooltip = "Only plants while Weather is Rainy. Rain auto-waters crops, so planting skips the water batch limit."
})
TW_64_27:AddDropdown("PlantMode", {
    Text = "Plant Mode",
    Values = { "Selected", "All" },
    Default = 1,
    AllowNull = true,
    Searchable = true
})
TW_64_27:AddDropdown("PlantCrops", {
    Text = "Plant Crops",
    Values = fns.TW_5_1,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
TW_64_27:AddDropdown("PlantPlanters", {
    Text = "Plant Surfaces",
    Values = TW_77_16,
    Multi = true,
    Default = { ["Hoed Ground"] = true },
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2,
    Tooltip = "Where Auto Plant is allowed to plant. Hoed Ground is dug soil. Uncheck pots and planters to skip them."
})
local TW_77_17 = TW_32_4:AddRightGroupbox("Harvest")
TW_77_17:AddToggle("AutoHarvest", { Text = "Auto Harvest", Default = false })
TW_77_17:AddDropdown("HarvestMode", {
    Text = "Harvest Mode",
    Values = { "Selected", "All" },
    Default = 2,
    AllowNull = true,
    Searchable = true
})
TW_77_17:AddDropdown("HarvestCrops", {
    Text = "Harvest Crops",
    Values = fns.TW_5_1,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
TW_77_17:AddDivider("Digging")
TW_77_17:AddToggle("AutoDig", { Text = "Auto Dig", Default = false })
TW_77_17:AddDropdown("DigLogic", {
    Text = "Dig Logic",
    Values = { "Normal Dig", "Rest Dig" },
    Default = 1,
    AllowNull = true,
    Searchable = true,
    Tooltip = "Normal Dig stops when energy is empty. Rest Dig sits on a Rest seat until energy is full, then digs normally again."
})
TW_77_17:AddToggle("DigWhileSeated", {
    Text = "Dig While Seated",
    Default = false,
    Tooltip = "Sits on a Rest chair or bench on your plot, then digs without standing up so you keep resting energy. Needs a Rest seat placed."
})
TW_77_17:AddToggle("AutoRemoveDead", { Text = "Auto Remove Dead", Default = false })
local TW_32_5 = TW_18_6:AddLeftGroupbox("Care")
TW_32_5:AddToggle("AutoWater", { Text = "Auto Water", Default = false })
TW_32_5:AddDivider("Fertilize")
TW_32_5:AddToggle("AutoFertilize", { Text = "Auto Fertilize", Default = false })
TW_32_5:AddDropdown("FertilizeMode", {
    Text = "Fertilize Mode",
    Values = { "Selected", "All" },
    Default = 2,
    AllowNull = true,
    Searchable = true
})
TW_32_5:AddDropdown("FertilizeCrops", {
    Text = "Fertilize Crops",
    Values = fns.TW_5_1,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
TW_32_5:AddToggle("AutoPesticide", { Text = "Auto Pesticide", Default = false })
local TW_32_6 = Bv.Shop:AddSubTab("Seeds", "leaf")
local TW_18_7 = Bv.Shop:AddSubTab("Misc", "flask-conical")
local TW_77_18 = Bv.Shop:AddSubTab("Hardware", "wrench")
local TW_64_28 = Bv.Shop:AddSubTab("Sell", "coins")
fns.TW_50_21(TW_32_6)
fns.TW_50_21(TW_18_7)
fns.TW_50_21(TW_77_18)
fns.TW_50_21(TW_64_28)
local TW_50_22 = TW_32_6:AddLeftGroupbox("Seeds")
TW_50_22:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false })
TW_50_22:AddDropdown("BuySeedCrops", {
    Text = "Buy Seeds",
    Values = TW_1_3,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
TW_50_22:AddSlider("BuySeedAmount", { Text = "Buy Amount", Default = 1, Min = 1, Max = 25, Rounding = 0 })
local TW_1_4 = TW_18_7:AddLeftGroupbox("Misc")
TW_1_4:AddToggle("AutoBuyMisc", { Text = "Auto Buy Misc", Default = false })
TW_1_4:AddDropdown("BuyMiscItems", {
    Text = "Buy Misc",
    Values = TW_73_7,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true
})
TW_1_4:AddSlider("BuyMiscAmount", { Text = "Buy Amount", Default = 1, Min = 1, Max = 25, Rounding = 0 })
local TW_1_5 = TW_77_18:AddLeftGroupbox("Hardware")
TW_1_5:AddToggle("AutoBuyHardware", { Text = "Auto Buy Hardware", Default = false })
TW_1_5:AddDropdown("BuyHardwareItems", {
    Text = "Buy Hardware",
    Values = TW_59_9,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
TW_1_5:AddSlider("BuyHardwareAmount", { Text = "Buy Amount", Default = 1, Min = 1, Max = 25, Rounding = 0 })
TW_1_5:AddDivider("Expansion")
TW_1_5:AddButton({ Text = "Buy Next Land", Func = fns.TW_46_15 })
local TW_1_6 = TW_64_28:AddLeftGroupbox("Sell")
TW_1_6:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
TW_1_6:AddDropdown("SellMode", {
    Text = "Sell Mode",
    Values = { "Selected", "All" },
    Default = 1,
    AllowNull = true,
    Searchable = true
})
TW_1_6:AddDropdown("SellCrops", {
    Text = "Sell Crops",
    Values = fns.TW_5_1,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
local TW_1_7 = Bv.Favorites:AddLeftGroupbox("Favorites")
TW_1_7:AddToggle("AutoFavorite", { Text = "Auto Favorite", Default = false })
TW_1_7:AddDropdown("FavoriteMode", {
    Text = "Favorite Mode",
    Values = { "All", "Selected", "Mutation" },
    Default = 2,
    AllowNull = true,
    Searchable = true
})
TW_1_7:AddDropdown("FavoriteCrops", {
    Text = "Favorite Crops",
    Values = fns.TW_5_1,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
TW_1_7:AddDivider("Mutations")
TW_1_7:AddDropdown("FavoriteMutations", {
    Text = "Favorite Mutations",
    Values = TW_15_3,
    Multi = true,
    Default = {},
    AllowNull = true,
    Searchable = true
})
BU = function()
    local Qg = hookfunction ~= nil
    local Qh = hookmetamethod ~= nil
    local Qi = getrawmetatable ~= nil
    local Qj = setrawmetatable ~= nil
    local Qk = getgc ~= nil
    local Ql = getgenv ~= nil
    local Qm = getreg ~= nil
    local Qn = getconnections ~= nil
    local Qo = firesignal ~= nil
    local Qp = getcallbackvalue ~= nil
    local Qq = setclipboard ~= nil
    local Qr = getcustomasset ~= nil
    local Qs = getnamecallmethod ~= nil
    local Qt = isexecutorclosure ~= nil
    local Qu = fireproximityprompt ~= nil
    local Qv = firetouchinterest ~= nil
    local Qw = WebSocket ~= nil
    local Qx = readfile ~= nil
    local Qy = writefile ~= nil
    local QA = (request or http_request) ~= nil
    local QC = (debug and debug.getupvalues) ~= nil
    local QE = (debug and debug.setupvalue) ~= nil
    local QF = 0
    local QG = { Qg, Qh, Qi, Qj, Qk, Ql, Qm, Qn, Qo, Qp, Qq, Qr, Qs, Qt, Qu, Qv, Qw, Qx, Qy, QA, QC, QE }
    for i, v in ipairs(QG) do
        if v then
            QF += 1
        end
    end
    local Qg_1 = QF / #QG
    if Qg_1 >= 0.9 then
        return CN("Full Support", B9)
    elseif Qg_1 >= 0.6 then
        return CN("Half Support", BW)
    else
        return CN("Low Support", BJ)
    end
end
function fns.TW_15_4()
    local Rd
    local Q9
    Q9 = nil
    Rd = nil
    local Label2, Label3, Rb, Rc, Label
    Rd = "Unknown"
    pcall(function()
        local QS_1
        local QR_1
        if identifyexecutor then
            QS_1, QR_1 = identifyexecutor()
            local QT = QS_1 ~= ""
            local QU = type(QS_1) == "string" and QT
            if QU then
                local QT_1 = type(QR_1) == "string" and QR_1 ~= "" and QS_1 .. " " .. QR_1
                Rd = QT_1 or QS_1
            end
        end
    end)
    local Rf = BU()
    Q9 = os.clock()
    Rc = function()
        local QZ = math.floor(os.clock() - Q9)
        if QZ < 60 then
            return QZ .. "s"
        elseif QZ < 3600 then
            return string.format("%dm %ds", QZ // 60, QZ % 60)
        else
            return string.format("%dh %dm", QZ // 3600, QZ % 3600 // 60)
        end
    end
    local UserGroup = Bv.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = Cf, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(Cx("User", Cf.DisplayName .. " @" .. Cf.Name, B9), true)
    UserGroup:AddLabel(Cx("UserId", tostring(Cf.UserId), B2), true)
    UserGroup:AddLabel(Cx("Executor", Rd .. "  " .. Rf, B9), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(Cx("Session", Rc(), BW), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            A9(Cf.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            A9("https://www.roblox.com/users/" .. tostring(Cf.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = Bv.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(Cx("Game", B7, B2), true)
    Label2 = SessionGroup:AddLabel(Cx("Players", "0/0", B9), true)
    Rb = tostring(game.JobId)
    local Rg_1 = #Rb > 18 and string.sub(Rb, 1, 18) .. "..."
    local Rh = Rg_1
    local Rl = if Rh then 1 else 0
    local Rj = 1110 * Rl + 3434 * (1 - Rl)
    local Rk = 1581 * Rl + 1869 * (1 - Rl)
    if not ((Rj * 945 + Rk * 309 + Rj * Rk) % 16777213 == 3292389) then
        Rh = Rb
    end
    local Rg_2 = Rh
    SessionGroup:AddLabel(Cx("Job", Rg_2, BR), true)
    Label = SessionGroup:AddLabel(Cx("Ping", "0 ms", BW), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            Cv:Teleport(game.PlaceId, Cf)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            A9(Rb, "Copied Job ID")
        end
    })
    task.spawn(function()
        local Q1_1
        local Q0_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(Cx("Session", Rc(), BW))
            Label2:SetText(Cx("Players", #A0:GetPlayers() .. "/" .. tostring(A0.MaxPlayers), B9))
            Q0_1, Q1_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local Q0_2 = Q0_1 and Q1_1 .. " ms" or "n/a"
            Label:SetText(Cx("Ping", Q0_2, BW))
        end
    end)
    local SocialsGroup = Bv.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = CZ })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(BT)
            elseif toclipboard then
                toclipboard(BT)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            A9(BN, "Copied website link")
        end
    })
end
fns.TW_15_4()
function fns.TW_15_5()
    local MovementGroup = Bv.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddDivider("Utility")
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = Bv.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Bl(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = Cf.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Rm_2 = (descendant:IsA("BasePart")) and descendant.CanCollide
                    if Rm_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    Bl(UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Rx_1 = CK()
            if Rx_1 then
                Rx_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = Cn.CurrentCamera
    Bl(RunService.RenderStepped:Connect(function(tI)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local RC_1 = CK()
            if RC_1 then
                RC_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local RC_3 = Cr()
            local RD = CK()
            if RC_3 and RD then
                RD.PlatformStand = true
                local RD_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    RD_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    RD_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    RD_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    RD_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    RD_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    RD_1 -= Vector3.new(0, 1, 0)
                end
                RC_3.AssemblyLinearVelocity = Vector3.zero
                if RD_1.Magnitude > 0 then
                    RC_3.CFrame = RC_3.CFrame + RD_1.Unit * Options.FlySpeed.Value * tI
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local RJ = CK()
            if RJ then
                RJ.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local RL = CK()
            if RL then
                RL.WalkSpeed = 16
            end
        end
    end)
    local function t3(t4)
        pcall(function()
            CD:SetGameplayPausedNotificationEnabled(not t4)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = Ct:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not t4
            end
        end)
        if not t4 then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Cf, "GameplayPaused", false)
            else
                Cf.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        t3(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                t3(true)
            end
        end
    end)
    local function ul(um)
        local RY = if not um:IsA("ProximityPrompt") then 1 else 0
        if RY == 1 then
            return
        end
        um.HoldDuration = 0
        um.MaxActivationDistance = 50
        um.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Cn:GetDescendants() do
                pcall(ul, descendant)
            end
            connection = Cn.DescendantAdded:Connect(function(uu)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(ul, uu)
                end
            end)
            Bl(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        t3(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
fns.TW_15_5()
BC = function()
    local R7 = B5()
    if not R7 then
        return 3
    end
    local Sa = (tonumber(R7:GetValueWithKey("Slots"))) or 3
    return math.max(1, math.floor(Sa))
end
Bg = function()
    local Sc = {}
    local Sd = math.max(BC(), 5)
    local Sh = 1
    while Sh <= Sd do
        local Si = Sh
        Sc[Si] = "Slot " .. Si
        Sh += 1
    end
    return Sc
end
A2 = function()
    local Sk = Options.LoadSlot and Options.LoadSlot.Value
    if type(Sk) == "string" then
        local Sk_1 = tonumber(Sk:match("%d+"))
        if Sk_1 and Sk_1 >= 1 then
            return Sk_1
        end
        return 1
    end
    return 1
end
function fns.TW_15_6()
    local MenuGroup = Bv.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local uS = 0
    local uT = tick()
    MenuGroup:AddDivider("Anti-AFK")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function uV()
        local CurrentCamera = Cn.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        uS += 1
        uT = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. uS)
        end)
    end
    Bl(Cf.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(uV)
        end
    end))
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Sq = Toggles.AntiAfk.Value and tick() - uT >= 60
            if Sq then
                pcall(uV)
            end
        end
    end)
    MenuGroup:AddDivider("Slots")
    MenuGroup:AddToggle("AutoLoadSlots", { Text = "Auto Load Slots", Default = false })
    MenuGroup:AddDropdown("LoadSlot", { Text = "Load Slot", Values = Bg(), Default = 1, AllowNull = true, Searchable = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect", Default = false })
    local vg = false
    local function vh()
        local JobId, PlaceId
        if vg then
            return
        end
        vg = true
        PlaceId = game.PlaceId
        JobId = game.JobId
        task.spawn(function()
            local Ss = pcall(function()
                Cv:TeleportToPlaceInstance(PlaceId, JobId, Cf)
            end)
            if not Ss then
                pcall(function()
                    Cv:Teleport(PlaceId, Cf)
                end)
            end
            task.wait(5)
            vg = false
        end)
    end
    Bl(CD.ErrorMessageChanged:Connect(function()
        local Sy_1
        local Sx = Library.Unloaded or not Toggles.AutoReconnect.Value
        local Sx_1
        if Sx then
            return
        end
        Sx_1, Sy_1 = pcall(function()
            return CD:GetErrorMessage()
        end)
        local Sz = Sx_1 and type(Sy_1) == "string"
        if Sz and Sy_1 ~= "" then
            vh()
        end
    end))
    local vL = 0
    task.spawn(function()
        local SO = false
        repeat
            local SI
            if not Library.Unloaded then
                task.wait(1)
                if not not C4("AutoLoadSlots") then
                    local SJ = A2()
                    local SK = B5()
                    local SL = SK and tonumber(SK:GetValueWithKey("ActiveSlot"))
                    SI = false
                    pcall(function()
                        local MainGui = Cf.PlayerGui:FindFirstChild("MainGui")
                        local SD = MainGui and MainGui:FindFirstChild("LoadingSlot", true)
                        local SC_1 = SD
                        if SD then
                            SD = SC_1.Visible == true
                        end
                        SI = SD
                    end)
                    if SL ~= SJ or SI then
                        if os.clock() - vL >= 2 then
                            vL = os.clock()
                            pcall(function()
                                BI:Fire({ SlotIndex = SJ })
                            end)
                            BA[1] = (("Loading Slot %*"):format(SJ))
                        end
                    end
                end
            else
                SO = true
            end
        until SO
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
end
fns.TW_15_6()
TW_37_8:SetLibrary(Library)
TW_37_8:SetFolder("MyScriptHub")
TW_37_8:SaveDefault("Evil Hello Kitty")
TW_37_8:ApplyToTab(Bv.Settings)
TW_37_8:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/WhereSeasonsPass")
Bq = SaveManager:BuildConfigSection(Bv.Settings)
SaveManager:LoadAutoloadConfig()
function fns.TW_15_7()
    local function wd(we, wf)
        local SQ_1 = (we == "Toggle" and Toggles or Options)[wf]
        local SP_2 = type(SQ_1) == "table" and SQ_1.Type == we
        return SP_2 and SQ_1 or nil
    end
    local function wn(wo, wp)
        local Type = wp.Type
        if Type == "Toggle" then
            return { idx = wo, type = "Toggle", value = wp.Value == true }
        elseif Type == "Slider" then
            return { idx = wo, type = "Slider", value = tostring(wp.Value) }
        elseif Type == "Dropdown" then
            return { idx = wo, type = "Dropdown", multi = wp.Multi == true, value = wp.Value }
        elseif Type == "Input" then
            local SX = wp.Value or ""
            return { idx = wo, type = "Input", text = tostring(SX) }
        elseif Type == "ColorPicker" then
            return { idx = wo, type = "ColorPicker", value = wp.Value:ToHex(), transparency = wp.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = wo,
                type = "KeyPicker",
                mode = wp.Mode,
                key = wp.Value,
                modifiers = wp.Modifiers,
                toggled = wp.Toggled
            }
        else
            return nil
        end
    end
    local function wr()
        local S2 = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local S3 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if S3 then
                    local S3_1 = wn(k, v)
                    if S3_1 then
                        S2[#S2 + 1] = S3_1
                    end
                end
            end
        end
        table.sort(S2, function(wz, wA)
            if wz.type ~= wA.type then
                return wz.type < wA.type
            end
            return wz.idx < wA.idx
        end)
        return { objects = S2 }
    end
    local function wB(wC)
        local Tj
        Tj = nil
        local Tk = type(wC) ~= "table" or type(wC.idx) ~= "string" or type(wC.type) ~= "string" or SaveManager.Ignore[wC.idx]
        if Tk then
            return false
        end
        Tj = wd(wC.type, wC.idx)
        if not Tj then
            return false
        end
        local Tk_1 = pcall(function()
            if wC.type == "Input" then
                if type(wC.text) ~= "string" then
                    return
                end
                Tj:SetValue(wC.text)
            elseif wC.type == "ColorPicker" then
                Tj:SetValueRGB(Color3.fromHex(wC.value), wC.transparency)
            elseif wC.type == "KeyPicker" then
                Tj:SetValue({ wC.key, wC.mode, wC.modifiers })
                if wC.mode == "Toggle" and wC.toggled ~= nil then
                    Tj.Toggled = wC.toggled
                    Tj:Update()
                end
            else
                Tj:SetValue(wC.value)
            end
        end)
        return Tk_1
    end
    Bq:AddDivider()
    Bq:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    Bq:AddButton("Export Config to Clipboard", function()
        local Tn_1
        local Tm_1
        Tm_1, Tn_1 = pcall(CM.JSONEncode, CM, wr())
        if not Tm_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local Tm_2 = setclipboard or toclipboard
        local Tm_3 = type(Tm_2) ~= "function" or not pcall(Tm_2, Tn_1)
        if Tm_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    Bq:AddButton("Import Config from Clipboard Text", function()
        local Ts_1
        local Tq = Options.SaveManager_ImportSource.Value or ""
        local Tq_1
        local Tr = tostring(Tq):match("^%s*(.-)%s*$")
        if Tr == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        Tq_1, Ts_1 = pcall(CM.JSONDecode, CM, Tr)
        local Tr_1 = not Tq_1 or type(Ts_1) ~= "table" or type(Ts_1.objects) ~= "table"
        if Tr_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local Tq_2 = 0
        for k, v in Ts_1.objects do
            if wB(v) then
                Tq_2 += 1
            end
        end
        if Tq_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local Ts_2 = Tq_2 == 1 and ""
        local TC = if Ts_2 then 1 else 0
        local TA = 1465 * TC + 2152 * (1 - TC)
        local TB = 1733 * TC + 505 * (1 - TC)
        if not ((TA * 2498 + TB * 2154 + TA * TB) % 16777213 == 9931297) then
            Ts_2 = "s"
        end
        Library:Notify(("Imported %d setting%s"):format(Tq_2, Ts_2), 6)
    end)
end
fns.TW_15_7()
Library:OnUnload(function()
    for k, v in Bt do
        local TJ = v
        pcall(function()
            TJ:Disconnect()
        end)
    end
    table.clear(Bt)
end)
