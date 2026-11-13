local h4
local bodyVelocity
local hM
local hS
local ie
local hY
local h0
local hI
local h6
local h9
local hO
local ic
local LocalPlayer
local hU
local hX
local Library
local h_
local hH
local VirtualUser
local h5
local hN
local hQ
local hT
local EnemySelectDropdown
local hW
local ij
local h1
local hG
local function fn5(at, au)
    return at.id < au.id
end
local function fn12(ba)
    h4[#h4 + 1] = ba
    return ba
end
local function fn24()
    local jt_1
    local js_1
    if not h_ then
        return nil
    end
    js_1, jt_1 = pcall(h_.GetGamePlayer)
    if js_1 then
        return jt_1
    end
    return nil
end
local function onAutoFarm(dn)
    h6.autoFarm = dn
end
local function worker3()
    while task.wait(0.5) do
        if Library.Unloaded then
            break
        end
        if h6.autoRebirth and hG then
            local mb_1 = hM()
            if mb_1 then
                if h6.autoSkipRebirth and hG.ClientSkipRebirth then
                    pcall(hG.ClientSkipRebirth)
                end
                local mc_1 = hG._CheckDoRebirth and hG._CheckDoRebirth(mb_1)
                if mc_1 then
                    pcall(hG.ClientDoRebirth)
                end
            end
        end
        if h6.autoRankUp and ie and ie.ClientCraftAll then
            pcall(ie.ClientCraftAll)
        end
        if h6.autoEquipWeapon and ie and ie.ClientEquipBest then
            pcall(ie.ClientEquipBest)
        end
        if h6.autoEquipPet and h9 and h9.ClientEquipBest then
            pcall(h9.ClientEquipBest)
        end
    end
end
local function onAutoHatch(dG)
    h6.autoHatch = dG
end
local function onHitsPerTarget(dk)
    h6.hitsPerTarget = dk
end
local function onFlySpeed(eb)
    h6.flySpeed = eb
end
local function fn173()
    local jv = ij()
    local jw = jv and jv:FindFirstChildOfClass("Humanoid")
    return jw
end
local function worker()
    while task.wait(0.1) do
        if Library.Unloaded then
            break
        end
        if h6.autoAttack then
            pcall(hO)
        end
    end
end
local function onInfJump(ef)
    h6.infJumpOn = ef
end
local function onFlyOn(d9)
    h6.flyOn = d9
end
local function fn265()
    local j8_1
    local j7_1
    j8_1, j7_1 = {}, false
    for k, v in pairs(h6.selectedEnemies) do
        if v then
            j7_1 = true
            for k2, v in pairs(h5) do
                for i, v in ipairs(v) do
                    if v.name == k then
                        j8_1[v.tmpl] = true
                    end
                end
            end
        end
    end
    if not j7_1 then
        return nil
    end
    return j8_1
end
local function fn270()
    local jL = {}
    for i, v in ipairs(hT) do
        jL[#jL + 1] = v.name
    end
    return jL
end
local function onTeleportFarm(dq)
    h6.teleportFarm = dq
end
local function onUnload()
    Library:Unload()
end
local function onAntiAfk(d1)
    h6.antiAfk = d1
end
local function onJumpRequest()
    if h6.infJumpOn then
        local mf = ic()
        if mf then
            mf:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onAutoSkipRebirth(dT)
    h6.autoSkipRebirth = dT
end
local function fn357(ag)
    local jE = hH[ag]
    local jF = jE
    if jF then
        local jG = jE.Name
        local jK = if jG then 1 else 0
        local jI = 3555 * jK + 2901 * (1 - jK)
        local jJ = 674 * jK + 2218 * (1 - jK)
        if not ((jI * 2437 + jJ * 937 + jI * jJ) % 16777213 == 11691143) then
            jG = jE.NameKey
        end
        jF = jG
    end
    local jE_1 = jF or tostring(ag)
    return jE_1
end
local function onAutoCollect(ds)
    h6.autoCollect = ds
end
local function onEnemySelect(dD)
    h6.selectedEnemies = dD
end
local function onWalkSpeedOn(d3)
    h6.walkSpeedOn = d3
    local lP = ic()
    if lP and not d3 then
        lP.WalkSpeed = 16
    end
end
local function onHatchCount(dO)
    h6.hatchCount = dO
end
local function onGambleSelect(dK)
    h6.selectedGamble = dK
end
local function onHatchMax(dM)
    h6.hatchMax = dM
end
local function fn465(a0, a1)
    return tostring(a0.id) < tostring(a1.id)
end
local function onIdled()
    if h6.antiAfk then
        pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end
end
local function onWorldSelect(dv)
    h6.selectedWorld = dv
    h6.selectedEnemies = {}
    local lJ = hN[dv]
    if EnemySelectDropdown and lJ then
        EnemySelectDropdown:SetValues(hU(lJ))
    end
    hY(dv)
end
local function onNoclip(ed)
    h6.noclipOn = ed
end
local function onInputEnded(e4)
    if e4.KeyCode == Enum.KeyCode.Space then
        hX = false
    end
    if e4.KeyCode == Enum.KeyCode.LeftControl then
        hS = false
    end
end
local function onAutoAttack(di)
    h6.autoAttack = di
end
local function onInputBegan(e0, e1)
    if e1 then
        return
    end
    if e0.KeyCode == Enum.KeyCode.Space then
        hX = true
    end
    if e0.KeyCode == Enum.KeyCode.LeftControl then
        hS = true
    end
end
local function worker2()
    while task.wait(0.15) do
        if Library.Unloaded then
            break
        end
        if h6.autoFarm then
            if h6.teleportFarm then
                pcall(h1)
            else
                pcall(hQ)
            end
        end
        if h6.autoCollect then
            pcall(hI)
        end
    end
end
local function onAutoEquipWeapon(dX)
    h6.autoEquipWeapon = dX
end
local function onHideEggAnim(dI)
    h6.hideEggAnim = dI
end
local function onAutoEquipPet(dZ)
    h6.autoEquipPet = dZ
end
local function onHeartbeat()
    if h6.noclipOn then
        local mn_1 = ij()
        if mn_1 then
            for i, descendant in ipairs(mn_1:GetDescendants()) do
                local mn_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if mn_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
    if h6.walkSpeedOn then
        local mn_3 = ic()
        if mn_3 then
            mn_3.WalkSpeed = h6.walkSpeed
        end
    end
    local mn_4 = h0()
    local mo = ic()
    if h6.flyOn and mn_4 and mo then
        local mp_1 = not bodyVelocity
        local mB = if mp_1 then 1 else 0
        local mz = 650 * mB + 2874 * (1 - mB)
        local mA = 618 * mB + 2677 * (1 - mB)
        if not ((mz * 450 + mA * 121 + mz * mA) % 16777213 == 768978) then
            mp_1 = bodyVelocity.Parent ~= mn_4
        end
        if mp_1 then
            if bodyVelocity then
                bodyVelocity:Destroy()
            end
            bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = mn_4
        end
        local mn_5 = mo.MoveDirection * h6.flySpeed
        local mo_1 = 0
        if hX then
            mo_1 += h6.flySpeed
        end
        if hS then
            mo_1 -= h6.flySpeed
        end
        bodyVelocity.Velocity = Vector3.new(mn_5.X, mo_1, mn_5.Z)
    elseif bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
end
local function onWalkSpeed(d7)
    h6.walkSpeed = d7
end
local function fn685(aN)
    local jT = {}
    local jU = h5[aN]
    if jU then
        for i, v in ipairs(jU) do
            jT[#jT + 1] = v.name
        end
    end
    return jT
end
local function onAutoRankUp(dV)
    h6.autoRankUp = dV
end
local function onAutoRebirth(dR)
    h6.autoRebirth = dR
end
local function fn745()
    local jy = ij()
    local jz = jy and jy:FindFirstChild("HumanoidRootPart")
    return jz
end
local function fn749()
    return LocalPlayer.Character
end
hG = nil
hH = nil
hI = nil
hM = nil
hN = nil
hO = nil
hQ = nil
LocalPlayer = nil
hS = nil
hT = nil
hU = nil
hW = nil
hX = nil
hY = nil
h_ = nil
h0 = nil
h1 = nil
VirtualUser = nil
h4 = nil
h5 = nil
h6 = nil
bodyVelocity = nil
h9 = nil
ic = nil
ie = nil
EnemySelectDropdown = nil
ij = nil
Library = nil
local hJ, hK, hL, hP, hV, ReplicatedStorage, h3, h8, ia, ih, ii, il
local io_1, io_6
local ir_1, ir_3
local iq_1
Library, VirtualUser, ReplicatedStorage, LocalPlayer, h_, hV, hP, hK, hJ, hG, il, ii, ie, h9, ir_1, io_1, hM, ij, ic, h0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
local ip = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
ReplicatedStorage = game:GetService("ReplicatedStorage")
LocalPlayer = ip.LocalPlayer
if (ij or ij or not SaveManager and ir_1) and (not hM or not ij or not hM and SaveManager) or not ((ij or ij or not SaveManager and ir_1) and (not hM or not ij or not hM and SaveManager)) then
    io_1 = function(s)
        local jq_2
        local jp_2
        jp_2, jq_2 = pcall(function()
            local jh = ReplicatedStorage
            for i, v in ipairs(s) do
                jh = jh[v]
            end
            return require(jh)
        end)
        if jp_2 then
            return jq_2
        end
        return nil
    end
else
    hM = function(s)
        local jq_1
        local jp_1
        jp_1, jq_1 = pcall(function()
            local jh = ReplicatedStorage
            for i, v in ipairs(s) do
                jh = jh[v]
            end
            return require(jh)
        end)
        if jp_1 then
            return jq_1
        end
        return nil
    end
end
h_ = io_1({ "CommonLibrary", "Player", "ClientPlayerManager" })
hV = io_1({ "ClientLogic", "Monster", "MgrMonsterClient" })
hP = io_1({ "CommonLogic", "PlayerDamage", "ClickSystem" })
hK = io_1({ "CommonLogic", "Gamble", "GambleSystem" })
hJ = io_1({ "ClientLogic", "Gamble", "GambleShower" })
hG = io_1({ "CommonLogic", "Rebirth", "RebirthSystem" })
il = io_1({ "CommonLogic", "Area", "AreaSystem" })
ii = io_1({ "CommonLogic", "Area", "AreaPickUpSystem" })
ie = io_1({ "CommonLogic", "Weapon", "WeaponSystem" })
h9 = io_1({ "CommonLogic", "Pet", "PetSystem" })
local iw = io_1({ "CommonConfig", "CfgGlobal" })
local it = io_1({ "CommonConfig", "Area", "CfgAreaRegion" })
local iu = io_1({ "CommonConfig", "Area", "CfgAreaMonster" })
local ir_2 = io_1({ "CommonConfig", "Monster", "CfgMonster" })
local iv = io_1({ "CommonConfig", "Gamble", "CfgGamble" })
hM = fn24
ij = fn749
ic = fn173
h0 = fn745
local is = ir_2
if is then
    is = ir_2.Tmpls or ir_2
end
local im_2 = {}
local io_2 = is
local iJ = if io_2 then 1 else 0
local iH = 784 * iJ + 3011 * (1 - iJ)
local iI = 1415 * iJ + 2764 * (1 - iJ)
if not ((iH * 911 + iI * 870 + iH * iI) % 16777213 == 3054634) then
    io_2 = im_2
end
hH, hT, hN, iq_1, ir_3 = nil, nil, nil, nil, nil
ip = 33
repeat
    local im_3 = (ip * 1 + 4) % 5 + 1
    if im_3 <= 3 then
        if im_3 <= 2 then
            if im_3 <= 1 then
                if (ip * 2 + 9) * 13 % 3 == ((ip * 2 + 9) * 13 + 7) % 3 then
                    iq_1 = {}
                else
                    hN = {}
                end
                ip = (ip + 36) % 40
            else
                local is_1 = {
                    "wiz",
                    "zuhfuv",
                    "xlri",
                    "srxyjftll",
                    "ydobj",
                    "lxnroji",
                    "jhzboqbkvp",
                    "dqttgcw",
                    "qiz",
                    "hwpzbsljzkdm",
                    "ghty",
                    "jbrjvdnvfv",
                    "bbchdk",
                    "sldkbyvsb",
                    "xovukvavv"
                }
                if is_1[(ip * 75 + 103) % 15 + 1] < is_1[(ip * 75 + 103) % 15 + 1] then
                    it = iq_1
                else
                    iq_1 = it
                end
                ip = (ip + 21) % 40
            end
        else
            if ip * 91004135 + 12 + 4 >= ip * 91004135 + 12 + 4 + 2 then
                io_2 = hH
            else
                hH = io_2
            end
            ip = (ip + 26) % 40
        end
    elseif im_3 <= 4 then
        local im_4 = (vector.create((ip * 5 + 8) % 11 + 1, (ip * 1 + 11) % 13 + 1, (ip * 7 + 3) % 17 + 1))
        local is_2 = (vector.create((ip * 5 + 7) % 11 + 1, (ip * 4 + 7) % 13 + 1, (ip * 5 + 5) % 17 + 1))
        local mW = vector.dot(im_4, is_2)
        if mW * mW <= vector.dot(im_4, im_4) * vector.dot(is_2, is_2) then
            ir_3 = fn357
        else
            hH = fn357
        end
        ip = (ip + 1) % 40
    else
        local im_5 = (vector.create((ip * 4 + 8) % 11 + 1, (ip * 9 + 10) % 13 + 1, (ip * 11 + 7) % 17 + 1))
        local is_3 = (vector.create((ip * 6 + 7) % 11 + 1, (ip * 9 + 10) % 13 + 1, (ip * 13 + 2) % 17 + 1))
        local iB_1 = (vector.create((ip * 2 + 9) % 11 + 1, (ip * 1 + 11) % 13 + 1, (ip * 9 + 2) % 17 + 1))
        local iC = (vector.create((ip * 4 + 1) % 5 + 1, (ip * 1 + 6) % 7 + 1, (ip * 4 + 4) % 9 + 1))
        if vector.dot(vector.cross(im_5, (vector.cross(is_3, iB_1))), iC) == vector.dot(is_3 * vector.dot(im_5, iB_1) - iB_1 * vector.dot(im_5, is_3), iC) then
            hT = {}
        else
            hH = {}
        end
        ip = (ip + 31) % 40
    end
until (ip * 23 + 17) % 40 == 21
if iq_1 then
    iq_1 = it.Tmpls
end
if iq_1 then
    for k, v in pairs(it.Tmpls) do
        if type(v) == "table" then
            local im_6 = v.Name
            ip = im_6 == nil or im_6 == ""
            if ip then
                im_6 = "World " .. tostring(k)
            end
            hT[#hT + 1] = { id = k, name = im_6 }
        end
    end
    local io_4 = 3
    repeat
        local im_7 = { "ykybzvmorwq", "billtcu", "hqyvox", "warxr", "uxasitdsxa", "cwfmkct", "lrc", "lbyulqulh", "unn" }
        local mZ = io_4
        ip = im_7[mZ % 9 + 1]
        if ip:len() <= ip:reverse():rep(mZ % 3 + 2):len() then
            table.sort(hT, fn5)
        else
            table.sort(hT, fn5)
        end
        io_4 = (io_4 + 0) % 4
    until (io_4 * 3 + 3) % 4 == 0
    for i, v in ipairs(hT) do
        hN[v.name] = v.id
    end
end
local im_8 = iu
h5 = {}
if im_8 then
    im_8 = iu.Tmpls
end
if im_8 then
    for k, v in pairs(iu.Tmpls) do
        local im_9 = type(v) == "table" and v.AreaId and v.Monster and v.Monster[1]
        if im_9 then
            local TmplId = v.Monster[1].TmplId
            if TmplId then
                local AreaId = v.AreaId
                ip = {}
                local iq_2 = h5[v.AreaId] or ip
                h5[AreaId] = iq_2
                table.insert(h5[v.AreaId], { tmpl = TmplId, name = ir_3(TmplId) })
            end
        end
    end
    for k, v in pairs(h5) do
        table.sort(v, function(aF, aG)
            return aF.tmpl < aG.tmpl
        end)
    end
end
ip, h8, io_6, hU = nil, nil, nil, nil
local im_11 = 5
repeat
    local iq_3 = (im_11 * 2 + 0) % 3 + 1
    if iq_3 <= 2 then
        if iq_3 <= 1 then
            local iq_4 = (vector.create((im_11 * 7 + 2) % 11 + 1, (im_11 * 9 + 4) % 13 + 1, (im_11 * 15 + 5) % 17 + 1))
            local ir_4 = (vector.create((im_11 * 6 + 7) % 11 + 1, (im_11 * 4 + 11) % 13 + 1, (im_11 * 14 + 16) % 17 + 1))
            local is_4 = (vector.create((im_11 * 5 + 8) % 11 + 1, (im_11 * 7 + 11) % 13 + 1, (im_11 * 8 + 5) % 17 + 1))
            it = (vector.create((im_11 * 3 + 5) % 11 + 1, (im_11 * 7 + 12) % 13 + 1, (im_11 * 3 + 8) % 17 + 1))
            if vector.dot(vector.cross(iq_4, ir_4), (vector.cross(is_4, it))) == vector.dot(iq_4, is_4) * vector.dot(ir_4, it) - vector.dot(iq_4, it) * vector.dot(ir_4, is_4) then
                h8 = {}
            else
                io_6 = {}
            end
            im_11 = (im_11 + 8) % 12
        else
            local iq_5 = { "lflq", "qmzgsmpvrn", "setqz", "rzjomsmoq", "rynnjwa", "szojrxylre", "vvhh" }
            local m1 = im_11
            local ir_5 = iq_5[m1 % 7 + 1]
            if ir_5:len() <= ir_5:reverse():rep(m1 % 3 + 2):len() then
                io_6 = fn270
                hU = fn685
            else
                hU = fn270
                io_6 = fn685
            end
            im_11 = (im_11 + 2) % 12
        end
    else
        local iq_6 = { "dgdpxoi", "yhqqrylzjc", "wrajwpbgrvf", "endgkiuxskck", "lsllcjnwzm", "dbj", "vno", "ubnyxiylk" }
        if iq_6[(im_11 * 82 + 104) % 8 + 1] <= iq_6[(im_11 * 82 + 104) % 8 + 1] then
            ip = {}
        else
            hU = {}
        end
        im_11 = (im_11 + 2) % 12
    end
until (im_11 * 11 + 9) % 12 == 4
if iv then
    local im_12 = {}
    for k, v in pairs(iv) do
        local iq_7 = type(v) == "table" and v.Cost
        if iq_7 then
            local iq_8 = ""
            local ir_6 = v.Cost[1]
            if type(ir_6) == "table" then
                local format = string.format
                it = ir_6.ValueType or "?"
                local iu_1 = tostring(it)
                iv = ir_6.Count
                iJ = if iv then 1 else 0
                iH = 319 * iJ + 1437 * (1 - iJ)
                iI = 1989 * iJ + 586 * (1 - iJ)
                if not ((iH * 2778 + iI * 3539 + iH * iI) % 16777213 == 8559744) then
                    iv = "?"
                end
                iq_8 = format(" [%s x%s]", iu_1, tostring(iv))
            end
            local ir_7 = #im_12 + 1
            local format = string.format
            it = v.Name or k
            im_12[ir_7] = { id = k, label = format("%s (%s)%s", tostring(it), tostring(k), iq_8) }
        end
    end
    local is_7 = 1
    repeat
        if is_7 * 39785587 + 12 + 6 >= is_7 * 39785587 + 12 + 6 + 1 then
            table.sort(im_12, fn465)
        else
            table.sort(im_12, fn465)
        end
        is_7 = (is_7 + 1) % 4
    until (is_7 * 3 + 0) % 4 == 2
    for i, v in ipairs(im_12) do
        ip[#ip + 1] = v.label
        h8[v.label] = v.id
    end
end
local ib = iw and iw.AttackRange or 10
local im_14 = hT[1]
if im_14 then
    local iq_10 = 3
    repeat
        local ir_8 = (vector.create((iq_10 * 1 + 6) % 11 + 1, (iq_10 * 6 + 1) % 13 + 1, (iq_10 * 9 + 2) % 17 + 1))
        local m5 = vector.floor(ir_8) + vector.ceil(ir_8 * -1)
        if vector.dot(m5, m5) == 3 then
            hT = im_14[1].name
        else
            im_14 = hT[1].name
        end
        iq_10 = (iq_10 + 0) % 4
    until (iq_10 * 3 + 1) % 4 == 2
end
local iq_11 = im_14 or nil
local im_15 = {}
local ir_9 = ip[1] or nil
h6, h4, h3, hL, ia, ih, hQ, hO, h1, hI, hY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
h6 = {
    autoAttack = false,
    hitsPerTarget = 1,
    autoFarm = false,
    teleportFarm = true,
    selectedWorld = iq_11,
    selectedEnemies = im_15,
    autoCollect = false,
    autoHatch = false,
    selectedGamble = ir_9,
    hatchMax = true,
    hatchCount = 1,
    hideEggAnim = false,
    autoRebirth = false,
    autoSkipRebirth = false,
    autoRankUp = false,
    autoEquipWeapon = false,
    autoEquipPet = false,
    antiAfk = false,
    walkSpeedOn = false,
    walkSpeed = 16,
    flyOn = false,
    flySpeed = 60,
    noclipOn = false,
    infJumpOn = false
}
h4 = {}
if ((not h6 or h6) and 35 and (hQ and not h6 or (h6 or 35)) or (hQ or h6 or not hL and not hQ) and ((hL or not hL) and h6)) and ((not hQ and not h6 or hL and 35 or (h6 or not hL) and (not hL and not hL)) and (h6 or h6 or (not hQ))) or not (((not h6 or h6) and 35 and (hQ and not h6 or (h6 or 35)) or (hQ or h6 or not hL and not hQ) and ((hL or not hL) and h6)) and ((not hQ and not h6 or hL and 35 or (h6 or not hL) and (not hL and not hL)) and (h6 or h6 or (not hQ)))) then
    hL = function(bd)
        if not hV then
            return
        end
        hV.IterMonster(function(bf)
            local j1 = bf and bf.IsAlive and bf:IsAlive()
            if j1 then
                bd(bf)
            end
        end)
    end
    ia = fn265
    ih = function(bu)
        if #bu == 0 or not hP then
            return
        end
        local ks_2 = math.max(1, h6.hitsPerTarget)
        local ky = 1
        while ky <= ks_2 do
            pcall(function()
                hP.ClientAttackMonster(bu)
                hP.ClientAddPlayerDamage(true)
            end)
            ky += 1
        end
    end
    hQ = function()
        local Position, kE
        local kF = h0()
        if not kF then
            return
        end
        Position = kF.Position
        kE = {}
        hL(function(bG)
            if bG.CurrentCFrame and (bG.CurrentCFrame.Position - Position).Magnitude <= ib then
                kE[#kE + 1] = bG.MonsterId
            end
        end)
        ih(kE)
    end
    hO = function()
        local Position, MonsterId, kO
        if not hP then
            return
        end
        local kP = h0()
        MonsterId, kO = nil, nil
        if kP then
            Position = kP.Position
            hL(function(bV)
                if bV.CurrentCFrame then
                    local Magnitude = (bV.CurrentCFrame.Position - Position).Magnitude
                    if Magnitude <= ib and (not kO or Magnitude < kO) then
                        kO = Magnitude
                        MonsterId = bV.MonsterId
                    end
                end
            end)
        end
        local kP_2 = math.max(1, h6.hitsPerTarget)
        local kT = 1
        while kT <= kP_2 do
            pcall(function()
                if MonsterId then
                    hP.ClientAttackMonster({ MonsterId })
                end
                hP.ClientAddPlayerDamage(true)
            end)
            kT += 1
        end
    end
else
    ia = function(bd)
        if not hV then
            return
        end
        hV.IterMonster(function(bf)
            local j1 = bf and bf.IsAlive and bf:IsAlive()
            if j1 then
                bd(bf)
            end
        end)
    end
    ih = fn265
    hQ = function(bu)
        if #bu == 0 or not hP then
            return
        end
        local ks_1 = math.max(1, h6.hitsPerTarget)
        local ky = 1
        while ky <= ks_1 do
            pcall(function()
                hP.ClientAttackMonster(bu)
                hP.ClientAddPlayerDamage(true)
            end)
            ky += 1
        end
    end
    hO = function()
        local Position, kE
        local kF = h0()
        if not kF then
            return
        end
        Position = kF.Position
        kE = {}
        hL(function(bG)
            if bG.CurrentCFrame and (bG.CurrentCFrame.Position - Position).Magnitude <= ib then
                kE[#kE + 1] = bG.MonsterId
            end
        end)
        ih(kE)
    end
    hL = function()
        local Position, MonsterId, kO
        if not hP then
            return
        end
        local kP = h0()
        MonsterId, kO = nil, nil
        if kP then
            Position = kP.Position
            hL(function(bV)
                if bV.CurrentCFrame then
                    local Magnitude = (bV.CurrentCFrame.Position - Position).Magnitude
                    if Magnitude <= ib and (not kO or Magnitude < kO) then
                        kO = Magnitude
                        MonsterId = bV.MonsterId
                    end
                end
            end)
        end
        local kP_1 = math.max(1, h6.hitsPerTarget)
        local kT = 1
        while kT <= kP_1 do
            pcall(function()
                if MonsterId then
                    hP.ClientAttackMonster({ MonsterId })
                end
                hP.ClientAddPlayerDamage(true)
            end)
            kT += 1
        end
    end
end
h3 = {}
h1 = function()
    local Position
    Position = nil
    local k2, k3, k4
    local k5 = h0()
    if not k5 then
        return
    end
    k3 = ia()
    local CFrame2 = k5.CFrame
    k2 = tick()
    k4 = {}
    hL(function(ci)
        if not k3 or ci.TmplId and k3[ci.TmplId] then
            if not h3[ci.MonsterId] or h3[ci.MonsterId] < k2 then
                k4[#k4 + 1] = ci
            end
        end
    end)
    Position = CFrame2.Position
    table.sort(k4, function(ct, cu)
        return (ct.CurrentCFrame.Position - Position).Magnitude < (cu.CurrentCFrame.Position - Position).Magnitude
    end)
    for i, v in ipairs(k4) do
        if not h6.autoFarm or Library.Unloaded then
            break
        end
        local k5_2 = v.IsAlive and v:IsAlive() and v.CurrentCFrame
        if k5_2 then
            local k5_3 = h0()
            if k5_3 then
                k5_3.CFrame = CFrame.new(v.CurrentCFrame.Position + Vector3.new(0, 4, 0))
                task.wait(0.04)
                local k5_4 = true
                local lm = 1
                while lm <= 8 do
                    if not h6.autoFarm or Library.Unloaded then
                        break
                    end
                    local k7_1 = hV.GetMonsterInfo(v.MonsterId)
                    local k8 = not k7_1
                    if not k8 then
                        local k9_1 = k7_1.IsAlive and k7_1:IsAlive()
                        k8 = not k9_1
                    end
                    if k8 then
                        k5_4 = false
                        break
                    end
                    local k8_1 = h0()
                    if k8_1 and k7_1.CurrentCFrame then
                        k8_1.CFrame = CFrame.new(k7_1.CurrentCFrame.Position + Vector3.new(0, 4, 0))
                    end
                    ih({ v.MonsterId })
                    task.wait(0.04)
                    lm += 1
                end
                if k5_4 then
                    h3[v.MonsterId] = tick() + 4
                end
            end
        end
    end
    local k5_5 = h0()
    if k5_5 then
        k5_5.CFrame = CFrame2
    end
end
hI = function()
    if not ii then
        return
    end
    local PickUpRewards = workspace:FindFirstChild("PickUpRewards")
    if not PickUpRewards then
        return
    end
    for i, child in ipairs(PickUpRewards:GetChildren()) do
        local lq_1 = child:GetAttribute("PickUpId") or child:GetAttribute("Id") or tonumber(child.Name)
        local lp = lq_1
        if lp then
            pcall(function()
                ii.ClientPickUp(lp)
            end)
        end
    end
end
hY = function(cZ)
    local lB
    if not il then
        return
    end
    lB = hN[cZ]
    if not lB then
        return
    end
    local lC = hM()
    local lD = lC and lC.area and not lC.area:IsAreaUnlocked(lB)
    if lD then
        pcall(function()
            il.ClientUnlock(lB)
        end)
    end
    pcall(function()
        il.ClientTeleportToAreaRegion(lB)
    end)
end
it = hJ and hJ.OnGambleResult
hW = it
if hJ and hW then
    hJ.OnGambleResult = function(db, dc)
        if h6.hideEggAnim then
            if dc then
                pcall(dc)
            end
            return
        end
        return hW(db, dc)
    end
end
EnemySelectDropdown = nil
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "Anime Souls",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = true
})
it = {
    Main = Window:AddTab("Main", "sword"),
    ["UI Settings"] = Window:AddTab("UI Settings", "settings")
}
local CombatGroup = it.Main:AddLeftGroupbox("Combat")
CombatGroup:AddToggle("AutoAttack", { Text = "Auto Attack", Default = false, Callback = onAutoAttack })
CombatGroup:AddSlider("HitsPerTarget", {
    Text = "Hits Per Target",
    Default = 1,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Callback = onHitsPerTarget
})
local AutoFarmGroup = it.Main:AddLeftGroupbox("Auto Farm")
AutoFarmGroup:AddToggle("AutoFarm", { Text = "Enable Auto Farm", Default = false, Callback = onAutoFarm })
AutoFarmGroup:AddToggle("TeleportFarm", { Text = "Teleport To Mobs (Infinite Range)", Default = true, Callback = onTeleportFarm })
AutoFarmGroup:AddToggle("AutoCollect", { Text = "Auto Collect Drops", Default = false, Callback = onAutoCollect })
AutoFarmGroup:AddDropdown("WorldSelect", {
    Values = io_6(),
    Default = h6.selectedWorld,
    Multi = false,
    Text = "World",
    Callback = onWorldSelect
})
local im_17 = h6.selectedWorld
if im_17 then
    local io_7 = 2
    repeat
        local iq_13 = {
            "gykxnwlkt",
            "utwxacy",
            "jufj",
            "yzbng",
            "hfyjokesh",
            "yssqq",
            "puwtrjcbqeal",
            "rbgfllobgmwn",
            "uphdrxnss"
        }
        if iq_13[(io_7 * 8 + 40) % 9 + 1] < iq_13[(io_7 * 8 + 40) % 9 + 1] then
            h6 = hN(hU[im_17.selectedWorld])
        else
            im_17 = hU(hN[h6.selectedWorld])
        end
        io_7 = (io_7 + 2) % 8
    until (io_7 * 7 + 3) % 8 == 7
end
local iq_14 = {}
local io_8 = im_17
iJ = if io_8 then 1 else 0
iH = 3383 * iJ + 1058 * (1 - iJ)
iI = 547 * iJ + 3812 * (1 - iJ)
if not ((iH * 2034 + iI * 799 + iH * iI) % 16777213 == 9168576) then
    io_8 = iq_14
end
hX, hS, bodyVelocity = nil, nil, nil
EnemySelectDropdown = AutoFarmGroup:AddDropdown("EnemySelect", { Values = io_8, Multi = true, Text = "Enemies (none = all)", Callback = onEnemySelect })
local AutoHatchGroup = it.Main:AddLeftGroupbox("Auto Hatch")
AutoHatchGroup:AddToggle("AutoHatch", { Text = "Enable Auto Hatch", Default = false, Callback = onAutoHatch })
AutoHatchGroup:AddToggle("HideEggAnim", { Text = "Auto Hide Egg Animation", Default = false, Callback = onHideEggAnim })
AutoHatchGroup:AddDropdown("GambleSelect", {
    Values = ip,
    Default = h6.selectedGamble,
    Multi = false,
    Text = "Summon",
    Callback = onGambleSelect
})
AutoHatchGroup:AddToggle("HatchMax", { Text = "Hatch Max Amount", Default = true, Callback = onHatchMax })
AutoHatchGroup:AddSlider("HatchCount", { Text = "Hatch Amount", Default = 1, Min = 1, Max = 20, Rounding = 0, Callback = onHatchCount })
local ProgressionGroup = it.Main:AddRightGroupbox("Progression")
ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = onAutoRebirth })
ProgressionGroup:AddToggle("AutoSkipRebirth", { Text = "Also Use Skip-Rebirth", Default = false, Callback = onAutoSkipRebirth })
ProgressionGroup:AddToggle("AutoRankUp", { Text = "Auto Rank Up All Weapons", Default = false, Callback = onAutoRankUp })
ProgressionGroup:AddToggle("AutoEquipWeapon", { Text = "Auto Equip Best Sword", Default = false, Callback = onAutoEquipWeapon })
ProgressionGroup:AddToggle("AutoEquipPet", { Text = "Auto Equip Best Pet", Default = false, Callback = onAutoEquipPet })
local PlayerGroup = it.Main:AddRightGroupbox("Player")
PlayerGroup:AddToggle("AntiAfk", { Text = "Anti-AFK (PC + Mobile)", Default = false, Callback = onAntiAfk })
PlayerGroup:AddToggle("WalkSpeedOn", { Text = "Walk Speed", Default = false, Callback = onWalkSpeedOn })
PlayerGroup:AddSlider("WalkSpeed", {
    Text = "Walk Speed Amount",
    Default = 16,
    Min = 16,
    Max = 500,
    Rounding = 0,
    Callback = onWalkSpeed
})
PlayerGroup:AddToggle("FlyOn", { Text = "Fly", Default = false, Callback = onFlyOn })
PlayerGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0, Callback = onFlySpeed })
PlayerGroup:AddToggle("Noclip", { Text = "Noclip", Default = false, Callback = onNoclip })
PlayerGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false, Callback = onInfJump })
iv = it["UI Settings"]:AddLeftGroupbox("Menu")
iv:AddButton("Unload", onUnload)
iv:AddLabel("UI Toggle"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Text = "UI Toggle", Mode = "Toggle", NoUI = true })
task.spawn(worker)
task.spawn(worker2)
task.spawn(function()
    local l4_1
    local l3_1
    local l7 = false
    repeat
        local l0
        if task.wait(0.4) then
            if Library.Unloaded then
                l7 = true
            else
                if h6.autoHatch and hK and h6.selectedGamble then
                    local l1 = h8[h6.selectedGamble]
                    if l1 then
                        l0 = h6.hatchCount
                        if h6.hatchMax and hK.GetGambleMaxTime then
                            local l2_2 = hM()
                            if l2_2 then
                                l3_1, l4_1 = pcall(hK.GetGambleMaxTime, l2_2, l1)
                                local l2_3 = l3_1 and type(l4_1) == "number" and l4_1 > 0
                                if l2_3 then
                                    l0 = l4_1
                                end
                            end
                        end
                        pcall(function()
                            hK.ClientDoGamble(l1, l0)
                        end)
                    end
                end
            end
        else
            l7 = true
        end
    until l7
end)
task.spawn(worker3)
fn12(LocalPlayer.Idled:Connect(onIdled))
fn12(UserInputService.JumpRequest:Connect(onJumpRequest))
hX, hS = false, false
fn12(UserInputService.InputBegan:Connect(onInputBegan))
fn12(UserInputService.InputEnded:Connect(onInputEnded))
fn12(RunService.Heartbeat:Connect(onHeartbeat))
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/anime-souls")
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(it["UI Settings"])
ThemeManager:LoadDefault()
SaveManager:BuildConfigSection(it["UI Settings"])
SaveManager:LoadAutoloadConfig()
Library:OnUnload(function()
    h6.autoAttack = false
    h6.autoFarm = false
    h6.autoHatch = false
    h6.autoRebirth = false
    h6.autoCollect = false
    h6.autoRankUp = false
    h6.autoEquipWeapon = false
    h6.autoEquipPet = false
    h6.flyOn = false
    h6.noclipOn = false
    h6.walkSpeedOn = false
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    if hJ and hW then
        hJ.OnGambleResult = hW
    end
    local mC_1 = ic()
    if mC_1 then
        mC_1.WalkSpeed = 16
    end
    for i, v in ipairs(h4) do
        local mJ = v
        pcall(function()
            mJ:Disconnect()
        end)
    end
end)
Library:Notify({
    Title = "Anime Souls",
    Description = "Loaded. Set your world and enemies in the Main tab.",
    Time = 5
})
