local ms
local Toggles
local my
local mU
local mB
local mX
local mi
local m_
local mH
local m2
local l2
local mK
local l5
local mN
local l8
local mQ
local mx
local mT
local mA
local mW
local mh
local mZ
local mn
local mJ
local l4
local mM
local ma
local mw
local mS
local md
local mg
local mC
local mj
local mp
local function fn95()
    if not my("AutoRebirth") then
        return
    end
    if tick() - mJ < 2 then
        return
    end
    local pM = mA()
    if not l4.IsRebirthAvailable(pM) then
        return
    end
    if mN() < l4.RebirthLevel(pM) then
        return
    end
    mJ = tick()
    pcall(function()
        mB:FireServer()
    end)
end
local function fn155(aw)
    if aw then
        m2[#m2 + 1] = aw
    end
    return aw
end
local function fn156(bM)
    local oK = not bM or not bM.Parent or not bM:IsA("BasePart")
    if oK then
        return false
    end
    local oK_1 = mS()
    if oK_1 and (oK_1.Position - bM.Position).Magnitude > 60 then
        mZ(bM.Position, 2)
    end
    local oK_2 = m_(bM)
    if not oK_2 then
        return false
    end
    return mn(oK_2)
end
local function fn248()
    local Character = mM.Character
    local n8 = Character and Character:FindFirstChild("HumanoidRootPart")
    return n8
end
local function fn272(c5)
    return mM:GetAttribute(mW.UnlockedAttribute(c5)) == true
end
local function fn282()
    local Character = mM.Character
    if mX then
        if mX.ArmController and mX.Character == Character and Character and Character.Parent then
            return mX
        end
        if filtergc then
            mX = filtergc("table", { Keys = { "RequestedWhileInside", "ArmController" } }, true)
        end
        return mX
    end
    if filtergc then
        mX = filtergc("table", { Keys = { "RequestedWhileInside", "ArmController" } }, true)
    end
    return mX
end
local function fn295(bC)
    local oE = l8()
    local oF = mS()
    if not bC or not oE or not oF then
        return nil
    end
    local oG_2 = bC.Parent and bC.Parent:FindFirstChild("Like")
    local oH_1 = oG_2 or bC
    local oG_4 = oH_1.Position.Y + oH_1.Size.Y * 0.5 + oE.HipHeight + oF.Size.Y * 0.5 + 0.2
    return CFrame.new(bC.Position.X, oG_4, bC.Position.Z)
end
local function fn325()
    return ms("Rebirths")
end
local function fn364(aG)
    if mg.Unloaded then
        return false
    end
    local nW = Toggles[aG]
    return nW ~= nil and nW.Value == true
end
local function fn388(cF)
    l5()
    local pe
    local pf
    for k, v in mQ:GetTagged("WinBox") do
        local pg_1 = v:IsA("BasePart") and v:IsDescendantOf(mU) and v:GetAttribute("StageNumber") == cF
        if pg_1 then
            if v:GetAttribute("IsDouble") == true then
                pf = v
            else
                pe = v
            end
        end
    end
    if mw and pf then
        return pf
    end
    return pe or pf
end
local function fn436(a6)
    local Character = mM.Character
    local oi = Character and Character:FindFirstChild("HumanoidRootPart")
    local oj = not Character or not oi
    local op = if oj then 1 else 0
    local on = 1226 * op + 741 * (1 - op)
    local oo = 707 * op + 45 * (1 - op)
    if not ((on * 1709 + oo * 3560 + on * oo) % 16777213 == 5478936) then
        oj = typeof(a6) ~= "CFrame"
    end
    if oj then
        return false
    end
    Character:PivotTo(a6)
    oi.AssemblyLinearVelocity = Vector3.zero
    oi.AssemblyAngularVelocity = Vector3.zero
    return true
end
local function fn459()
    ma(mx, "Copied Discord invite to clipboard")
end
local function fn460(az, aA)
    if setclipboard then
        setclipboard(az)
    elseif toclipboard then
        toclipboard(az)
    end
    mg:Notify(aA)
end
local function fn493(cQ)
    for k, v in mQ:GetTagged("StretchPad") do
        local po_1 = v:IsA("BasePart") and v:IsDescendantOf(mU) and v:GetAttribute("PadId") == cQ
        if po_1 then
            return v
        end
    end
    local Generated = mU:FindFirstChild("Generated")
    local pp = Generated and Generated:FindFirstChild("Progression")
    local po_3 = pp
    if pp then
        pp = po_3:FindFirstChild("HomeBase")
    end
    local po_4 = pp
    if pp then
        pp = po_4:FindFirstChild("StretchPads")
    end
    local po_5 = pp
    if pp then
        pp = po_5:FindFirstChild(cQ)
    end
    local po_6 = pp
    if pp then
        pp = po_6:FindFirstChild("Pad")
    end
    local po_7 = pp
    if pp then
        pp = po_7:IsA("BasePart")
    end
    if pp then
        return po_7
    end
    return nil
end
local function fn571()
    local o9_1
    local o8_1
    if mi <= 0 then
        mw = false
        return
    end
    if tick() - mp < 20 then
        return
    end
    mp = tick()
    o8_1, o9_1 = pcall(function()
        return mj:UserOwnsGamePassAsync(mM.UserId, mi)
    end)
    if o8_1 then
        mw = o9_1 == true
    end
end
local function fn595()
    return ms("Level")
end
local function fn621()
    return ms("Wins")
end
local function fn643(aU)
    local leaderstats = mM:FindFirstChild("leaderstats")
    local ob = leaderstats and leaderstats:FindFirstChild(aU)
    local oa_1 = ob
    if ob then
        local oc = tonumber(oa_1.Value) or 0
        ob = oc
    end
    local oa_2 = ob
    local og = if oa_2 then 1 else 0
    local oe = 23 * og + 2750 * (1 - og)
    local of = 2251 * og + 1389 * (1 - og)
    if not ((oe * 3368 + of * 3873 + oe * of) % 16777213 == 8847360) then
        oa_2 = 0
    end
    return oa_2
end
local function fn649()
    local WinPlate = l2.WinPlate
    local pc = WinPlate and WinPlate.Value
    if type(pc) == "string" then
        local pc_1 = tonumber(pc:match("%d+"))
        if pc_1 then
            return pc_1
        end
        return 1
    end
    return 1
end
local function fn661(ee)
    local DiscordGroup = ee:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mT })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mT })
end
local function worker()
    while not mg.Unloaded do
        pcall(mh)
        pcall(mH)
        pcall(md)
        task.wait(0.15)
    end
end
local function fn823()
    local Character = mM.Character
    local n2 = Character and Character:FindFirstChildOfClass("Humanoid")
    return n2
end
l2 = nil
l4 = nil
l5 = nil
Toggles = nil
l8 = nil
ma = nil
md = nil
mg = nil
mh = nil
mi = nil
mj = nil
local mm
mn = nil
mp = nil
ms = nil
mw = nil
mx = nil
my = nil
mA = nil
mB = nil
mC = nil
mH = nil
mJ = nil
mK = nil
mM = nil
mN = nil
local l1, l3, l7, l9, SaveManager, mc, me, mf, mk, ml, mo, mq, mr, StretchPadEvent, mu, mv, mz, mD, mE, mF, mG, WinCollectRequestEvent, mL, ZoneVolume
mQ = nil
mS = nil
mT = nil
mU = nil
mW = nil
mX = nil
mZ = nil
m_ = nil
m2 = nil
local mP, mV, mY, m0, m1
local m8_1
local PlayerGui, StageConfig
local ContentReleaseConfig
local m6_1
local nn = if not game:IsLoaded() then 1 else 0
if nn == 1 then
    game.Loaded:Wait()
end
local function m3(c)
    return c
end
local m3_4
local m4 = cloneref or m3
local m4_1, m4_2
m6_1, mQ, mK, mD, mv, mq, mj, me, m8_1, l9, l3, l1, m0, mU, mM, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local m5 = 43
local m5_3
repeat
    local m3_1 = (m5 * 9 + 4) % 10 + 1
    if m3_1 <= 5 then
        if m3_1 <= 3 then
            if m3_1 <= 2 then
                if m3_1 <= 1 then
                    local m9_1 = {
                        "bvujz",
                        "xwxvnku",
                        "cdwomnndlwc",
                        "ojwklnvh",
                        "fksh",
                        "yenq",
                        "eaozkeod",
                        "mbipxyd",
                        "hbeqrnmqmz"
                    }
                    local tc = m5
                    local na_1 = m9_1[tc % 9 + 1]
                    if na_1:len() >= na_1:gsub("(.)", "%1%1", tc % 3 % 2 + 1):len() then
                        mM = PlayerGui:WaitForChild("PlayerGui")
                    else
                        PlayerGui = mM:WaitForChild("PlayerGui")
                    end
                    m5 = (m5 + 69) % 80
                else
                    local m9_2 = {
                        "gkcedoebb",
                        "uhlzms",
                        "qff",
                        "mtvvtviqcu",
                        "jiiafgli",
                        "tvglmcpuwvxo",
                        "ycyhsazjtmw",
                        "fbtm",
                        "sfsa",
                        "psj",
                        "hvmhobx",
                        "ropt",
                        "qrxki"
                    }
                    if m9_2[(m5 * 6 + 5) % 13 + 1] <= m9_2[(m5 * 6 + 5) % 13 + 1] then
                        m6_1 = m4
                    else
                        m4 = m6_1
                    end
                    m5 = (m5 + 79) % 80
                end
            else
                local uA = bit32.rrotate(bit32.bxor(bit32.lrotate(m5, 5), string.byte(tostring(mD))), 16)
                if bit32.bxor(bit32.lrotate(bit32.bxor(uA, 1978080995), 30), 3715745720) ~= bit32.lrotate(uA, 30) then
                    m6_1 = mQ(game:GetService("CollectionService"))
                else
                    mQ = m6_1(game:GetService("CollectionService"))
                end
                m5 = (m5 + 9) % 80
            end
        elseif m3_1 <= 4 then
            local un = bit32.rrotate(bit32.bxor(bit32.lrotate(m5, 8), string.byte(tostring(mD))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(un, 2366053235), 18), 1842230300) == bit32.lrotate(un, 18) then
                mK = m6_1(game:GetService("CoreGui"))
            else
                m6_1 = mK(game:GetService("CoreGui"))
            end
            m5 = (m5 + 49) % 80
        else
            local tO = bit32.rrotate(bit32.bxor(bit32.lrotate(m5, 10), string.byte(tostring(mD))), 7)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tO, 1330382918), 0), 1330382918) ~= bit32.lrotate(tO, 0) then
                mj = mD(game:GetService("GuiService"))
                mq = mD(game:GetService("HttpService"))
                mv = mD(game:GetService("Lighting"))
                m6_1 = mD(game:GetService("MarketplaceService"))
            else
                mD = m6_1(game:GetService("GuiService"))
                mv = m6_1(game:GetService("HttpService"))
                mq = m6_1(game:GetService("Lighting"))
                mj = m6_1(game:GetService("MarketplaceService"))
            end
            m5 = (m5 + 9) % 80
        end
    elseif m3_1 <= 8 then
        if m3_1 <= 7 then
            if m3_1 <= 6 then
                local m9_3 = (vector.create((m5 * 1 + 8) % 11 + 1, (m5 * 1 + 13) % 13 + 1, (m5 * 8 + 13) % 17 + 1))
                local na_2 = (vector.create((m5 * 1 + 7) % 11 + 1, (m5 * 9 + 1) % 13 + 1, (m5 * 4 + 12) % 17 + 1))
                local um = vector.dot(m9_3, na_2)
                if um * um <= vector.dot(m9_3, m9_3) * vector.dot(na_2, na_2) then
                    me = m6_1(game:GetService("Players"))
                else
                    m6_1 = me(game:GetService("Players"))
                end
                m5 = (m5 + 39) % 80
            else
                local ub = bit32.rrotate(bit32.bxor(bit32.lrotate(m5, 3), string.byte(tostring(m8_1))), 21)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ub, 881713635), 28), 860413470) ~= bit32.lrotate(ub, 28) then
                    m6_1 = l9(game:GetService("ReplicatedStorage"))
                    l3 = l9(game:GetService("RunService"))
                    m8_1 = l9(game:GetService("TeleportService"))
                else
                    m8_1 = m6_1(game:GetService("ReplicatedStorage"))
                    l9 = m6_1(game:GetService("RunService"))
                    l3 = m6_1(game:GetService("TeleportService"))
                end
                m5 = (m5 + 9) % 80
            end
        else
            local uB = bit32.rrotate(bit32.bxor(bit32.lrotate(m5, 1), string.byte(tostring(l9))), 18)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uB, 66891473), 234034058), (bit32.bxor(bit32.band(uB, 4228075822), 1503052201))), 234034058), 1503052201) == uB then
                l1 = m6_1(game:GetService("UserInputService"))
                m0 = m6_1(game:GetService("VirtualUser"))
            else
                m0 = l1(game:GetService("UserInputService"))
                m6_1 = l1(game:GetService("VirtualUser"))
            end
            m5 = (m5 + 59) % 80
        end
    elseif m3_1 <= 9 then
        local td = bit32.rrotate(bit32.bxor(bit32.lrotate(m5, 8), string.byte(tostring(mU))), 17)
        if bit32.bxor(bit32.lrotate(bit32.bxor(td, 2875628067), 2), 2912577678) ~= bit32.lrotate(td, 2) then
            m6_1 = mU(game:GetService("Workspace"))
        else
            mU = m6_1(game:GetService("Workspace"))
        end
        m5 = (m5 + 29) % 80
    else
        local m3_2 = (vector.create((m5 * 7 + 2) % 11 + 1, (m5 * 11 + 7) % 13 + 1, (m5 * 6 + 17) % 17 + 1))
        local m9_4 = (vector.create((m5 * 3 + 4) % 11 + 1, (m5 * 7 + 4) % 13 + 1, (m5 * 2 + 11) % 17 + 1))
        local na_3 = (vector.create((m5 * 7 + 3) % 11 + 1, (m5 * 8 + 4) % 13 + 1, (m5 * 13 + 5) % 17 + 1))
        local nb_1 = (vector.create((m5 * 5 + 6) % 11 + 1, (m5 * 4 + 10) % 13 + 1, (m5 * 12 + 3) % 17 + 1))
        if vector.dot(vector.cross(m3_2, m9_4), (vector.cross(na_3, nb_1))) == vector.dot(m3_2, na_3) * vector.dot(m9_4, nb_1) - vector.dot(m3_2, nb_1) * vector.dot(m9_4, na_3) then
            mM = me.LocalPlayer
        else
            me = mM.LocalPlayer
        end
        m5 = (m5 + 59) % 80
    end
until (m5 * 53 + 16) % 80 == 25
if setthreadidentity then
    setthreadidentity(8)
end
mC = function()
    return mK
end
if getgenv then
    mm, m4_1 = nil, nil
    local m3_3 = 4
    repeat
        if (m3_3 * 1 + 0) % 2 + 1 <= 1 then
            local m5_2 = (vector.create((m3_3 * 5 + 1) % 11 + 1, (m3_3 * 7 + 13) % 13 + 1, (m3_3 * 12 + 2) % 17 + 1))
            local m6_2 = (vector.create((m3_3 * 4 + 8) % 11 + 1, (m3_3 * 6 + 1) % 13 + 1, (m3_3 * 6 + 16) % 17 + 1))
            local m9_5 = (vector.create((m3_3 * 1 + 6) % 5 + 1, (m3_3 * 1 + 1) % 7 + 1, (m3_3 * 3 + 4) % 9 + 1))
            if math.abs((vector.angle(m5_2, m6_2, m9_5))) - math.abs((vector.angle(m6_2, m5_2, m9_5))) == 1 then
                getgenv().gethui = mm
                mC = getgenv().__OuroborosLongArmToyEscapeLib
            else
                getgenv().gethui = mC
                mm = getgenv().__OuroborosLongArmToyEscapeLib
            end
            m3_3 = (m3_3 + 3) % 8
        else
            if (m3_3 * 3 + 6) * 13 % 4 == ((m3_3 * 3 + 6) * 13 + 8) % 4 then
                m4_1 = mm
            else
                mm = m4_1
            end
            m3_3 = (m3_3 + 1) % 8
        end
    until (m3_3 * 5 + 7) % 8 == 7
    if m4_1 then
        m4_1 = mm.Unload
    end
    if m4_1 then
        pcall(function()
            mm:Unload()
        end)
    end
end
pcall(function()
    gethui = mC
end)
for k, v in { mK, PlayerGui } do
    for k, v2 in { "Obsidian", "ObsidianLoading" } do
        local mR = v:FindFirstChild(v2)
        while mR do
            pcall(function()
                mR:Destroy()
            end)
            mR = v:FindFirstChild(v2)
        end
    end
end
mG, mx, mr, ml, m5_3, m4_2, m3_4, l4, ContentReleaseConfig, StageConfig, mW, ZoneVolume, WinCollectRequestEvent, mB, StretchPadEvent = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local m6_3 = 48
repeat
    local na_4 = (m6_3 * 4 + 7) % 9 + 1
    if na_4 <= 5 then
        if na_4 <= 3 then
            if na_4 <= 2 then
                if na_4 <= 1 then
                    local tA = bit32.rrotate(bit32.bxor(bit32.lrotate(m6_3, 12), string.byte(tostring(StretchPadEvent))), 15)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tA, 3781946303), 2818920001), (bit32.bxor(bit32.band(tA, 513020992), 1752490552))), 2818920001), 1752490552) ~= tA then
                        m3_4 = require(StretchPadEvent:WaitForChild("RebirthRequestEvent"))
                        mB = require(StretchPadEvent:WaitForChild("StretchPadEvent"))
                    else
                        mB = require(m3_4:WaitForChild("RebirthRequestEvent"))
                        StretchPadEvent = require(m3_4:WaitForChild("StretchPadEvent"))
                    end
                    m6_3 = (m6_3 + 52) % 72
                else
                    if (m6_3 * 3 + 1) * 9 % 4 == ((m6_3 * 3 + 1) * 9 + 14) % 4 then
                        mr = "+1 Long Arm Toy Escape!"
                        mG = "https://discord.gg/ehKVq7pf7v"
                        mx = "https://rscripts.net/@Ouroboros"
                    else
                        mG = "+1 Long Arm Toy Escape!"
                        mx = "https://discord.gg/ehKVq7pf7v"
                        mr = "https://rscripts.net/@Ouroboros"
                    end
                    m6_3 = (m6_3 + 16) % 72
                end
            else
                if (m6_3 * 2 + 1) * 4 % 3 == ((m6_3 * 2 + 1) * 4 + 4) % 3 then
                    mG = "https://ouroboros-hub-rbx.web.app/"
                else
                    ml = "https://ouroboros-hub-rbx.web.app/"
                end
                m6_3 = (m6_3 + 16) % 72
            end
        elseif na_4 <= 4 then
            if m6_3 * 52542141 + 6 + 3 <= m6_3 * 52542141 + 6 + 3 + 3 then
                m5_3 = m8_1:WaitForChild("Shared")
            else
                m8_1 = m5_3:WaitForChild("Shared")
            end
            m6_3 = (m6_3 + 25) % 72
        else
            local nb_2 = {
                "iin",
                "phlgpilxvo",
                "qvhkhbqj",
                "gunudshib",
                "ihwx",
                "twhk",
                "pvrkx",
                "mcclaiibxhj",
                "wzgy",
                "jil",
                "gevwhptuz"
            }
            if nb_2[(m6_3 * 30 + 72) % 11 + 1] < nb_2[(m6_3 * 30 + 72) % 11 + 1] then
                m5_3 = m4_2:WaitForChild("Config")
            else
                m4_2 = m5_3:WaitForChild("Config")
            end
            m6_3 = (m6_3 + 61) % 72
        end
    elseif na_4 <= 7 then
        if na_4 <= 6 then
            local nb_3 = { "egkjiw", "vewchlznd", "mqtlquszgua", "npleyakbwdw", "vhhnrexmq", "kbdpwlyrbz", "zjhesyzczd" }
            local tb = m6_3
            local nc_1 = nb_3[tb % 7 + 1]
            if nc_1:len() >= nc_1:reverse():rep(tb % 3 + 2):len() then
                m5_3 = m3_4:WaitForChild("Events")
            else
                m3_4 = m5_3:WaitForChild("Events")
            end
            m6_3 = (m6_3 + 34) % 72
        else
            if (m6_3 * 2 + 7) * 10 % 3 == ((m6_3 * 2 + 7) * 10 + 7) % 3 then
                m4_2 = require(ContentReleaseConfig:WaitForChild("ArmProgressionConfig"))
                l4 = require(ContentReleaseConfig:WaitForChild("ContentReleaseConfig"))
            else
                l4 = require(m4_2:WaitForChild("ArmProgressionConfig"))
                ContentReleaseConfig = require(m4_2:WaitForChild("ContentReleaseConfig"))
            end
            m6_3 = (m6_3 + 34) % 72
        end
    elseif na_4 <= 8 then
        local na_5 = { "exjuypqf", "fuyd", "jausprgvo", "xwqo", "ordnfrfac", "sgohsmrul", "matqpd" }
        local uz = m6_3
        local nb_4 = na_5[uz % 7 + 1]
        if nb_4:len() >= nb_4:gsub("(.)", "%1%1", uz % 3 % 2 + 1):len() then
            m4_2 = require(StageConfig:WaitForChild("StageConfig"))
        else
            StageConfig = require(m4_2:WaitForChild("StageConfig"))
        end
        m6_3 = (m6_3 + 70) % 72
    else
        local na_6 = {
            "dodereq",
            "zeskdm",
            "vskhdmbwvm",
            "icemixmwkh",
            "ouj",
            "soucgei",
            "ptureoz",
            "dufmnfk",
            "qhsombw"
        }
        local ti = m6_3
        local nb_5 = na_6[ti % 9 + 1]
        if nb_5:len() >= nb_5:gsub("(.)", "%1%1", ti % 3 % 2 + 1):len() then
            m5_3 = require(WinCollectRequestEvent:WaitForChild("StretchPadConfig"))
            mW = require(ZoneVolume:WaitForChild("ZoneVolume"))
            m3_4 = require(m4_2:WaitForChild("WinCollectRequestEvent"))
        else
            mW = require(m4_2:WaitForChild("StretchPadConfig"))
            ZoneVolume = require(m5_3:WaitForChild("ZoneVolume"))
            WinCollectRequestEvent = require(m3_4:WaitForChild("WinCollectRequestEvent"))
        end
        m6_3 = (m6_3 + 70) % 72
    end
until (m6_3 * 43 + 60) % 72 == 18
local m3_5 = tonumber(StageConfig.TouchCooldown) or 1
mo = m3_5
local m3_6 = tonumber(StageConfig.DoubleWinsGamepassId) or 0
local m4_3 = {}
mi = m3_6
local m3_7 = {}
for k, v in mQ:GetTagged("WinBox") do
    local attr = v:GetAttribute("StageNumber")
    local m6_4 = type(attr) == "number" and not m3_7[attr]
    if m6_4 then
        m3_7[attr] = true
        m4_3[#m4_3 + 1] = attr
    end
end
table.sort(m4_3)
if #m4_3 == 0 then
    local attr = mU:GetAttribute(ContentReleaseConfig.ReleasedStageCountAttribute)
    local m5_5 = type(attr) == "number" and attr
    local m5_6 = m5_5 or ContentReleaseConfig.BaseReleasedStageCount or 11
    local nG = 1
    while nG <= m5_6 do
        local nH = nG
        m4_3[nH] = nH
        nG += 1
    end
end
for k, v in m4_3 do
    m4_3[k] = "Stage " .. v
end
mg, SaveManager = nil, nil
mg = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosLongArmToyEscapeLib = mg
end
Toggles, l2, m2, mX, mP, mJ, mF, mw, mp, mE, mk, ma, mT, my, l8, mS, ms, m1, mN, mA, mn, mZ, mu, m_, l7, mf, mV, l5, mc, mL, mY, mz, md, mh, mH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = mg.Toggles
if ((m1 or not l5 or (m1 or not mf)) and (mf or mN or (not l7 or mL)) and ((mL and not m1 or (m1 or l7)) and (not mf and mN and (not l5 and l7))) or (mf or mf or (mN or not m1) or (not l7 or not mL) and (m1 and m1)) and ((not m1 or l7 or (not mN or mL)) and (not l5 and not l5 or (l5 or l5)))) and not ((m1 or not l5 or (m1 or not mf)) and (mf or mN or (not l7 or mL)) and ((mL and not m1 or (m1 or l7)) and (not mf and mN and (not l5 and l7))) or (mf or mf or (mN or not m1) or (not l7 or not mL) and (m1 and m1)) and ((not m1 or l7 or (not mN or mL)) and (not l5 and not l5 or (l5 or l5)))) then
    mg = m2.Options
    mP = {}
    l2 = 0
else
    l2 = mg.Options
    m2 = {}
    mP = 0
end
mJ = 0
mF = 0
mw = false
mp = 0
mk = fn155
ma = fn460
mT = fn459
my = fn364
l8 = fn823
mS = fn248
ms = fn643
m1 = fn621
if ((not my and not mz and (l2 or not l8) or not mz and not m_ and (my and not mz)) and ((mz or 138 or (my or not mz)) and (my and not l8 and (my or mz))) or ((not l8 or l2) and (not l8 or not l8) and ((m_ or 138) and l2) or not mz and false and (l8 or not m_) and (not my and m_ or (not my or l2)))) and not ((not my and not mz and (l2 or not l8) or not mz and not m_ and (my and not mz)) and ((mz or 138 or (my or not mz)) and (my and not l8 and (my or mz))) or ((not l8 or l2) and (not l8 or not l8) and ((m_ or 138) and l2) or not mz and false and (l8 or not m_) and (not my and m_ or (not my or l2)))) then
    mE = fn595
else
    mN = fn595
end
mA = fn325
mn = fn436
mZ = function(bd, be)
    local ou
    local ov = typeof(bd) ~= "Vector3"
    local oA = if ov then 1 else 0
    local oy = 3043 * oA + 397 * (1 - oA)
    local oz = 787 * oA + 255 * (1 - oA)
    if not ((oy * 3711 + oz * 3669 + oy * oz) % 16777213 == 16574917) then
        ov = not mU.StreamingEnabled
    end
    if ov then
        return
    end
    ou = false
    task.spawn(function()
        pcall(function()
            local oq = be or 5
            mM:RequestStreamAroundAsync(bd, oq)
        end)
        ou = true
    end)
    local ov_1 = os.clock()
    local ov_2 = ov_1 + (be or 5) + 0.25
    while true do
        local ow_1 = not ou and os.clock() < ov_2 and not mg.Unloaded
        if ow_1 then
            task.wait()
            continue
        end
        break
    end
end
mu = function(bu)
    local oB = mS()
    local oC = not oB or not bu or not bu.Parent or not bu:IsA("BasePart")
    if oC then
        return false
    elseif firetouchinterest then
        local oC_1 = pcall(function()
            firetouchinterest(oB, bu, 0)
            firetouchinterest(oB, bu, 1)
        end)
        return oC_1
    else
        return false
    end
end
m_ = fn295
l7 = fn156
mf = fn282
mV = function()
    local o_ = l8()
    if o_ then
        o_.PlatformStand = false
        o_.Sit = false
        pcall(function()
            o_:ChangeState(Enum.HumanoidStateType.Running)
        end)
    end
    local o1 = mf()
    local oY = o1 and o1.ArmController
    if oY then
        pcall(function()
            oY.LeftArm:SetLatchedContact(nil)
            oY.RightArm:SetLatchedContact(nil)
        end)
        pcall(function()
            oY:ForceUnlatch()
        end)
        pcall(function()
            oY.GroundArmWalker:Clear(false)
        end)
        local CharacterControllerManager = oY.CharacterControllerManager
        if CharacterControllerManager then
            pcall(function()
                CharacterControllerManager:SetActiveController("Ground")
            end)
        end
    end
    local Character = mM.Character
    local o3 = Character and Character:FindFirstChild("CharacterControllerManager")
    local o0 = o3
    local o2_2 = o0 and o0:FindFirstChild("GroundController")
    local oZ = o2_2
    if o0 and oZ then
        pcall(function()
            o0.ActiveController = oZ
        end)
    end
    local o2_4 = o1 and type(o1.RequestedWhileInside) == "table"
    if o2_4 then
        table.clear(o1.RequestedWhileInside)
    end
    return oY
end
l5 = fn571
mc = fn649
if (mN and not mS or (not mN or mS) or (mN and false or mS and mu)) and ((mN or not mN or (mu or mu)) and (false or mN and false)) and not ((mN and not mS or (not mN or mS) or (mN and false or mS and mu)) and ((mN or not mN or (mu or mu)) and (false or mN and false))) then
    l2 = fn388
else
    mL = fn388
end
mY = fn493
mz = fn272
md = function()
    local pA, pB
    if not my("AutoFarmWins") then
        return
    end
    if tick() - mP < mo then
        return
    end
    pB = mL(mc())
    if not pB then
        return
    end
    local pC = pB.Parent and pB.Parent:FindFirstChild("Hitbox")
    mV()
    l7(pB)
    mV()
    task.wait(0.12)
    local pC_1 = mV()
    local pE = mS()
    if not pE then
        return
    end
    pA = pE.Position
    local pE_1 = pC and pC:IsA("BasePart") and not ZoneVolume.containsPoint(pC, pA)
    if pE_1 then
        pA = pC.Position
    end
    mP = tick()
    pcall(function()
        WinCollectRequestEvent:FireServer(pB, pA)
    end)
    mu(pB)
    local pE_2 = pC and pC:IsA("BasePart")
    if pE_2 then
        mu(pC)
    end
    local pD_1 = pC_1 and pC_1.CanCollectWinBox and not pC_1:CanCollectWinBox()
    if pD_1 then
        mV()
    end
end
mh = fn95
mH = function()
    if not my("AutoBuyLong") then
        return
    end
    if tick() - mF < 1.2 then
        return
    end
    local pQ = m1()
    local pP
    local pR = -1
    local pO
    for k, v in mW.Pads do
        if mz(v.Id) then
            local pS_1 = tonumber(v.SpeedPerTick) or 0
            if pS_1 > pR then
                pR = pS_1
                pP = v
            end
        else
            local pS_2 = not pO
            if pS_2 then
                local pT_2 = tonumber(v.WinsRequired) or math.huge
                pS_2 = pQ >= pT_2
            end
            if pS_2 then
                pO = v
            end
        end
    end
    if pO then
        mF = tick()
        local pQ_1 = mY(pO.Id)
        if pQ_1 then
            l7(pQ_1)
            mu(pQ_1)
        end
        pcall(function()
            StretchPadEvent:FireServer("Purchase", pO.Id)
        end)
        pcall(function()
            StretchPadEvent:FireServer("Unlock", pO.Id)
        end)
        pcall(function()
            StretchPadEvent:FireServer("Equip", pO.Id)
        end)
        return
    end
    local attr = mM:GetAttribute(mW.EquippedAttribute)
    if pP and pP.Id ~= attr then
        mF = tick()
        local pQ_3 = mY(pP.Id)
        if pQ_3 then
            l7(pQ_3)
            mu(pQ_3)
        end
        pcall(function()
            StretchPadEvent:FireServer("Equip", pP.Id)
        end)
    end
end
local Window = mg:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mx, Copyable = true }, "|", mG },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
mE = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in mE do
    if k ~= "Info" then
        fn661(v)
    end
end
local FarmGroup = mE.Main:AddLeftGroupbox("Farm", "trophy")
FarmGroup:AddToggle("AutoFarmWins", { Text = "Auto Farm Wins", Default = false })
local m3_10 = m4_3[1]
local nn_1 = if m3_10 then 1 else 0
local nl = 2994 * nn_1 + 1308 * (1 - nn_1)
local nm = 3735 * nn_1 + 2984 * (1 - nn_1)
if not ((nl * 1759 + nm * 796 + nl * nm) % 16777213 == 2644883) then
    m3_10 = "Stage 1"
end
local m7_4 = nil
FarmGroup:AddDropdown("WinPlate", { Text = "Win Plate", Values = m4_3, Default = m3_10 })
local AutomationGroup = mE.Main:AddRightGroupbox("Automation", "sparkles")
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddToggle("AutoBuyLong", { Text = "Auto Buy Long", Default = false })
task.spawn(worker)
local function nd()
    local qK
    local qV
    local qR
    local qL
    local qU
    local qQ
    qK = nil
    qL = nil
    qQ = nil
    qR = nil
    qU = nil
    qV = nil
    local qM, qN, Label2, Label3, qS, Label
    qL = function(et, eu)
        return string.format('<font color="%s">%s</font>', eu, et)
    end
    qN = function(ew, ex, ey)
        return string.format("<b>%s</b> %s %s", ew, qL("-", "#5a6070"), qL(ex, ey))
    end
    qK = "#7fd47f"
    local qW = "#8b93a3"
    qU = "#e8a34d"
    qQ = "#e05a5a"
    local function qY()
        local p1 = hookfunction ~= nil
        local p2 = hookmetamethod ~= nil
        local p3 = getrawmetatable ~= nil
        local p4 = setrawmetatable ~= nil
        local p5 = getgc ~= nil
        local p6 = getgenv ~= nil
        local p7 = getreg ~= nil
        local p8 = getconnections ~= nil
        local p9 = firesignal ~= nil
        local qa = getcallbackvalue ~= nil
        local qb = setclipboard ~= nil
        local qc = getcustomasset ~= nil
        local qd = getnamecallmethod ~= nil
        local qe = isexecutorclosure ~= nil
        local qf = fireproximityprompt ~= nil
        local qg = firetouchinterest ~= nil
        local qh = WebSocket ~= nil
        local qi = readfile ~= nil
        local qj = writefile ~= nil
        local ql = (request or http_request) ~= nil
        local qn = (debug and debug.getupvalues) ~= nil
        local qp = (debug and debug.setupvalue) ~= nil
        local qq = 0
        local qr = { p1, p2, p3, p4, p5, p6, p7, p8, p9, qa, qb, qc, qd, qe, qf, qg, qh, qi, qj, ql, qn, qp }
        for i, v in ipairs(qr) do
            if v then
                qq += 1
            end
        end
        local p1_1 = qq / #qr
        if p1_1 >= 0.9 then
            return qL("Full Support", qK)
        elseif p1_1 >= 0.6 then
            return qL("Half Support", qU)
        else
            return qL("Low Support", qQ)
        end
    end
    qR = "Unknown"
    pcall(function()
        local qA_1
        local qz_1
        if identifyexecutor then
            qA_1, qz_1 = identifyexecutor()
            local qB = qA_1 ~= ""
            local qC = type(qA_1) == "string" and qB
            if qC then
                local qB_1 = type(qz_1) == "string" and qz_1 ~= "" and qA_1 .. " " .. qz_1
                qR = qB_1 or qA_1
            end
        end
    end)
    local qZ = qY()
    qV = os.clock()
    qM = function()
        local qE = math.floor(os.clock() - qV)
        if qE < 60 then
            return qE .. "s"
        elseif qE < 3600 then
            return string.format("%dm %ds", qE // 60, qE % 60)
        else
            return string.format("%dh %dm", qE // 3600, qE % 3600 // 60)
        end
    end
    local UserGroup = mE.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = mM, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(qN("User", mM.DisplayName .. " @" .. mM.Name, qK), true)
    UserGroup:AddLabel(qN("UserId", tostring(mM.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(qN("Executor", qR .. "  " .. qZ, qK), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(qN("Session", qM(), qU), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            ma(mM.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            ma("https://www.roblox.com/users/" .. tostring(mM.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = mE.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(qN("Game", mG, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(qN("Players", "0/0", qK), true)
    qS = tostring(game.JobId)
    local qX = #qS > 18 and string.sub(qS, 1, 18) .. "..."
    local qZ_1 = qX or qS
    SessionGroup:AddLabel(qN("Job", qZ_1, qW), true)
    Label = SessionGroup:AddLabel(qN("Ping", "0 ms", qU), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            l3:Teleport(game.PlaceId, mM)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            ma(qS, "Copied Job ID")
        end
    })
    task.spawn(function()
        local qH_1
        local qG_1
        while true do
            task.wait(1)
            if mg.Unloaded then
                break
            end
            Label3:SetText(qN("Session", qM(), qU))
            Label2:SetText(qN("Players", #me:GetPlayers() .. "/" .. tostring(me.MaxPlayers), qK))
            qG_1, qH_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local qG_2 = qG_1 and qH_1 .. " ms" or "n/a"
            Label:SetText(qN("Ping", qG_2, qU))
        end
    end)
    local SocialsGroup = mE.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = mT })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            ma(mr, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            ma(ml, "Copied website link")
        end
    })
end
local function nc_2()
    local connection
    local MovementGroup = mE.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = mE.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    mk(l9.Stepped:Connect(function()
        if mg.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = mM.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local q0_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if q0_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    mk(l1.JumpRequest:Connect(function()
        if mg.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local q8_1 = l8()
            if q8_1 then
                q8_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = mU.CurrentCamera
    mk(l9.RenderStepped:Connect(function(f7)
        if mg.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local rd_1 = l8()
            if rd_1 then
                rd_1.WalkSpeed = l2.WalkSpeed.Value
            end
        end
        local rd_2 = Toggles.Fly and Toggles.Fly.Value and not my("AutoFarmWins")
        if rd_2 then
            local rd_3 = mS()
            local re = l8()
            if rd_3 and re then
                re.PlatformStand = true
                local re_1 = Vector3.zero
                if l1:IsKeyDown(Enum.KeyCode.W) then
                    re_1 += CurrentCamera.CFrame.LookVector
                end
                if l1:IsKeyDown(Enum.KeyCode.S) then
                    re_1 -= CurrentCamera.CFrame.LookVector
                end
                local rj = if l1:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if rj == 1 then
                    re_1 -= CurrentCamera.CFrame.RightVector
                end
                if l1:IsKeyDown(Enum.KeyCode.D) then
                    re_1 += CurrentCamera.CFrame.RightVector
                end
                if l1:IsKeyDown(Enum.KeyCode.Space) then
                    re_1 += Vector3.new(0, 1, 0)
                end
                if l1:IsKeyDown(Enum.KeyCode.LeftControl) then
                    re_1 -= Vector3.new(0, 1, 0)
                end
                rd_3.AssemblyLinearVelocity = Vector3.zero
                if re_1.Magnitude > 0 then
                    rd_3.CFrame = rd_3.CFrame + re_1.Unit * l2.FlySpeed.Value * f7
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local rk = l8()
            if rk then
                rk.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local rm = l8()
            if rm then
                rm.WalkSpeed = 16
            end
        end
    end)
    local function gv(gw)
        if not gw:IsA("ProximityPrompt") then
            return
        end
        gw.HoldDuration = 0
        gw.MaxActivationDistance = 50
        gw.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(mU:GetDescendants()) do
                pcall(gv, descendant)
            end
            connection = mU.DescendantAdded:Connect(function(gE)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(gv, gE)
                end
            end)
            mk(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    mg:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
local function nb_6()
    local MenuGroup = mE.Settings:AddLeftGroupbox("Menu", "logs")
    local gM = 0
    local gN = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function gP()
        local CurrentCamera = mU.CurrentCamera
        if not CurrentCamera then
            return
        end
        m0:CaptureController()
        m0:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        gM += 1
        gN = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. gM)
        end)
    end
    local connection2 = mM.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(gP)
        end
    end)
    mk(connection2)
    task.spawn(function()
        while not mg.Unloaded do
            task.wait(2)
            local rE = Toggles.AntiAfk.Value and tick() - gN >= 60
            if rE then
                pcall(gP)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    mg.ToggleKeybind = l2.MenuKeybind
    local function hc(hd)
        pcall(function()
            mD:SetGameplayPausedNotificationEnabled(not hd)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = mK:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hd
            end
        end)
        if not hd then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(mM, "GameplayPaused", false)
            else
                mM.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        hc(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not mg.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hc(true)
            end
        end
    end)
    local hu = false
    local function hv()
        local PlaceId, JobId
        if hu then
            return
        end
        hu = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local rN = pcall(function()
            l3:TeleportToPlaceInstance(PlaceId, JobId, mM)
        end)
        if not rN then
            pcall(function()
                l3:Teleport(PlaceId, mM)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = mK:WaitForChild("RobloxPromptGui", 30)
        local rS = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not rS then
            return
        end
        mk(rS.ChildAdded:Connect(function(hO)
            if mg.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and hO.Name == "ErrorPrompt" then
                hv()
            end
        end))
    end)
    mk(l3.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            hu = false
            hv()
        end
    end))
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            l9:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local h3 = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function h4(h5)
        if h3[h5.ClassName] then
            pcall(function()
                h5.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                mq.GlobalShadows = false
            end)
            pcall(function()
                mq.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(mU:GetDescendants()) do
                pcall(h4, descendant)
            end
            connection = mU.DescendantAdded:Connect(function(il)
                if Toggles.FpsBoost.Value then
                    pcall(h4, il)
                end
            end)
            mk(connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                mq.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = mE.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            mg:Unload()
        end
    })
    mg:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        hc(false)
        pcall(function()
            l9:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        for k, v in m2 do
            local sa = v
            pcall(function()
                sa:Disconnect()
            end)
        end
        table.clear(m2)
        local r3 = l8()
        if r3 then
            r3.PlatformStand = false
            r3.WalkSpeed = 16
        end
        if getgenv then
            getgenv().__OuroborosLongArmToyEscapeLib = nil
        end
    end)
end
if (nc_2 or not nb_6 or (nb_6 or not nc_2) or (not nc_2 and not nc_2 or not nb_6 and not nc_2)) and (nb_6 and not nb_6 and (not nb_6 or not nb_6) or (nc_2 or nb_6) and (not nc_2 or nc_2)) and ((not nb_6 and not nb_6 and (nb_6 or not nc_2) or (nc_2 or nc_2 or not nb_6 and not nb_6)) and (nb_6 and not nb_6 or not nc_2 and nb_6 or (nc_2 or nb_6) and (not nc_2 or nb_6))) or not ((nc_2 or not nb_6 or (nb_6 or not nc_2) or (not nc_2 and not nc_2 or not nb_6 and not nc_2)) and (nb_6 and not nb_6 and (not nb_6 or not nb_6) or (nc_2 or nb_6) and (not nc_2 or nc_2)) and ((not nb_6 and not nb_6 and (nb_6 or not nc_2) or (nc_2 or nc_2 or not nb_6 and not nb_6)) and (nb_6 and not nb_6 or not nc_2 and nb_6 or (nc_2 or nb_6) and (not nc_2 or nb_6)))) then
    m7_4 = function(iG)
        local function iH(iI, iJ)
            local sc_1 = (iI == "Toggle" and Toggles or l2)[iJ]
            local sb_2 = type(sc_1) == "table" and sc_1.Type == iI
            return sb_2 and sc_1 or nil
        end
        local function iR(iS, iT)
            local Type = iT.Type
            if Type == "Toggle" then
                return { idx = iS, type = "Toggle", value = iT.Value == true }
            elseif Type == "Slider" then
                return { idx = iS, type = "Slider", value = tostring(iT.Value) }
            elseif Type == "Dropdown" then
                return { idx = iS, type = "Dropdown", multi = iT.Multi == true, value = iT.Value }
            elseif Type == "Input" then
                local sg = iT.Value or ""
                return { idx = iS, type = "Input", text = tostring(sg) }
            elseif Type == "ColorPicker" then
                return { idx = iS, type = "ColorPicker", value = iT.Value:ToHex(), transparency = iT.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = iS,
                    type = "KeyPicker",
                    mode = iT.Mode,
                    key = iT.Value,
                    modifiers = iT.Modifiers,
                    toggled = iT.Toggled
                }
            else
                return nil
            end
        end
        local function iV()
            local sm = {}
            for i, v in ipairs({ Toggles, l2 }) do
                for k, v in pairs(v) do
                    local sn = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if sn then
                        local sn_1 = iR(k, v)
                        if sn_1 then
                            sm[#sm + 1] = sn_1
                        end
                    end
                end
            end
            table.sort(sm, function(i4, i5)
                if i4.type ~= i5.type then
                    return i4.type < i5.type
                end
                return i4.idx < i5.idx
            end)
            return { objects = sm }
        end
        local function i6(i7)
            local sD
            sD = nil
            local sE = type(i7) ~= "table" or type(i7.idx) ~= "string"
            local sI = if sE then 1 else 0
            local sG = 3601 * sI + 2359 * (1 - sI)
            local sH = 897 * sI + 1866 * (1 - sI)
            if not ((sG * 3654 + sH * 3752 + sG * sH) % 16777213 == 2976482) then
                sE = type(i7.type) ~= "string"
            end
            if not sE then
                sE = SaveManager.Ignore[i7.idx]
            end
            if sE then
                return false
            end
            sD = iH(i7.type, i7.idx)
            if not sD then
                return false
            end
            local sE_1 = pcall(function()
                if i7.type == "Input" then
                    if type(i7.text) ~= "string" then
                        return
                    end
                    sD:SetValue(i7.text)
                elseif i7.type == "ColorPicker" then
                    sD:SetValueRGB(Color3.fromHex(i7.value), i7.transparency)
                elseif i7.type == "KeyPicker" then
                    sD:SetValue({ i7.key, i7.mode, i7.modifiers })
                    if i7.mode == "Toggle" and i7.toggled ~= nil then
                        sD.Toggled = i7.toggled
                        sD:Update()
                    end
                else
                    sD:SetValue(i7.value)
                end
            end)
            return sE_1
        end
        iG:AddDivider()
        iG:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        iG:AddButton("Export Config to Clipboard", function()
            local sK_1
            local sJ_1
            sJ_1, sK_1 = pcall(mv.JSONEncode, mv, iV())
            if not sJ_1 then
                mg:Notify("Failed to encode the config")
                return
            end
            local sJ_2 = setclipboard or toclipboard
            local sJ_3 = type(sJ_2) ~= "function" or not pcall(sJ_2, sK_1)
            if sJ_3 then
                mg:Notify("Your executor does not support copying to the clipboard")
                return
            end
            mg:Notify("Config copied to clipboard", 6)
        end)
        iG:AddButton("Import Config from Clipboard Text", function()
            local sS_1
            local sQ = l2.SaveManager_ImportSource.Value or ""
            local sQ_1
            local sR = tostring(sQ):match("^%s*(.-)%s*$")
            if sR == "" then
                mg:Notify("Paste an exported config into the box first")
                return
            end
            sQ_1, sS_1 = pcall(mv.JSONDecode, mv, sR)
            local sR_1 = not sQ_1 or type(sS_1) ~= "table" or type(sS_1.objects) ~= "table"
            if sR_1 then
                mg:Notify("That is not a valid exported config")
                return
            end
            local sQ_2 = 0
            for i, v in ipairs(sS_1.objects) do
                if i6(v) then
                    sQ_2 += 1
                end
            end
            if sQ_2 == 0 then
                mg:Notify("No settings in that config matched this script")
                return
            end
            l2.SaveManager_ImportSource:SetValue("")
            local sS_2 = sQ_2 == 1 and "" or "s"
            mg:Notify(("Imported %d setting%s"):format(sQ_2, sS_2), 6)
        end)
    end
end
nd()
nc_2()
nb_6()
ThemeManager:SetLibrary(mg)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(mE.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(mg)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/LongArmToyEscape")
local m8_2 = SaveManager:BuildConfigSection(mE.Settings)
m7_4(m8_2)
SaveManager:LoadAutoloadConfig()
if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
    mg:Toggle(false)
end
