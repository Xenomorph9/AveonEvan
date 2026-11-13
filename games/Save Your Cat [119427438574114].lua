local fns = {}
local s__11, s__22
local me
local lW
local HttpService
local RebirthInfo
local LocalPlayer
local FreeRewardClaim
local mJ
local lJ
local mq
local l7
local mP
local lP
local mw
local lw
local md
local mV
local MotherTreeRebirth
local mC
local lC
local mj
local connection
local SaveManager
local Format
local mp
local l6
local mO
local mv
local Library
local mc
local mU
local lU
local lB
local mi
local l_
local VirtualUser
local connection2
local Workspace
local l5
local mN
local lN
local mu
local mb
local mT
local lT
local mA
local Config
local Rebirth
local mG
local lG
local mn
local l4
local UserInputService
local __ouroboros_gen
local ma
local mS
local lS
local mz
local lz
local mg
local connection5
local mF
local lF
local mm
local TycoonPurchase
local mL
local l9
local mR
local lR
local Options
local StageButtonCoords
local connection4
local lX
local Toggles
local lE
local ml
local l2
local mK
local lK
local mr
local connection3
local mQ
local lx
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rl_1 = l6()
        if rl_1 then
            rl_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn23()
    local qH_1
    local qG_1
    if identifyexecutor then
        qH_1, qG_1 = identifyexecutor()
        local qI = qH_1 ~= ""
        local qJ = type(qH_1) == "string" and qI
        if qJ then
            local qI_1 = type(qG_1) == "string" and qG_1 ~= "" and qH_1 .. " " .. qG_1
            mN = qI_1 or qH_1
        end
    end
end
function fns.fn26()
    local r4 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local r5 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if r5 then
                local r5_1 = mQ(k, v)
                if r5_1 then
                    r4[#r4 + 1] = r5_1
                end
            end
        end
    end
    table.sort(r4, function(hA, hB)
        if hA.type ~= hB.type then
            return hA.type < hB.type
        end
        return hA.idx < hB.idx
    end)
    return { objects = r4 }
end
function fns.onCopyPayPalLink()
    ml(mq, "Copied PayPal link")
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(mp)
    elseif toclipboard then
        toclipboard(mp)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn53(b2, b3, b4)
    local oN = not b2 or typeof(b3) ~= "Vector3"
    if oN then
        return nil
    end
    local oN_1 = nil
    local oP = b4 or 25
    for i, child in ipairs(b2:GetChildren()) do
        local TriggerPart = child:FindFirstChild("TriggerPart")
        local oQ = TriggerPart and TriggerPart:IsA("BasePart")
        if oQ then
            local Magnitude = (TriggerPart.Position - b3).Magnitude
            if Magnitude < oP then
                oP = Magnitude
                oN_1 = TriggerPart
            end
        end
    end
    return oN_1
end
function fns.fn55(M, N)
    if setclipboard then
        setclipboard(M)
    elseif toclipboard then
        toclipboard(M)
    end
    Library:Notify(N)
end
function fns.fn63()
    local nT = mg()
    local nU = nT and nT:FindFirstChildOfClass("Humanoid")
    return nU
end
function fns.onInputBegan()
    lx = tick()
end
function fns.fn72(cM)
    local px_1
    if type(cM) ~= "string" then
        return nil
    end
    local pw = cM:match("^Stage (%d+)")
    local pw_1
    if pw then
        return { kind = "stage", id = tonumber(pw) }
    end
    pw_1, px_1 = cM:match("^(%w+) %(%+([%d%.%a]+)%)")
    if pw_1 and px_1 then
        return { kind = "vip", tier = pw_1, seeds = lU(px_1) }
    end
    return nil
end
function fns.worker4()
    while not Library.Unloaded and lP.__ouroboros_gen == __ouroboros_gen do
        if lz("AutoRebirth") then
            pcall(l2)
        end
        if lz("AutoMotherTree") then
            pcall(lG)
        end
        if lz("AutoFreeReward") then
            pcall(mR)
        end
        if lz("AutoMaxSpeed") then
            pcall(md)
        end
        task.wait(1)
    end
end
function fns.fn182(az)
    if Library.Unloaded then
        return false
    end
    local nK = Toggles[az]
    return nK ~= nil and nK.Value == true
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn206()
    if lF("RebirthUiUnlocked", false) ~= true then
        return
    end
    local p9 = if mV() >= mi() then 1 else 0
    if p9 == 1 then
        pcall(function()
            MotherTreeRebirth:FireServer()
        end)
    end
end
function fns.fn219()
    mr()
    print("Unloaded!")
end
function fns.fn222()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    pcall(function()
        connection3:Disconnect()
    end)
    pcall(function()
        connection4:Disconnect()
    end)
    pcall(function()
        connection5:Disconnect()
    end)
    l7(false)
    local sS = l6()
    if sS then
        sS.PlatformStand = false
        sS.WalkSpeed = 16
    end
end
function fns.fn251(dP)
    local qb = lF("VIPOwned", false) == true
    local qc = lF("MVPOwned", false) == true
    local qd = lF("SupremeOwned", false) == true
    if dP == "VIP" then
        return qb or qc or qd
    elseif dP == "MVP" then
        return qc or qd
    else
        return qd
    end
end
function fns.worker()
    local qR_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qQ = math.floor(os.clock() - lS)
        if qQ < 60 then
            qR_1 = qQ .. "s"
        elseif qQ < 3600 then
            qR_1 = string.format("%dm %ds", qQ // 60, qQ % 60)
        else
            qR_1 = string.format("%dh %dm", qQ // 3600, qQ % 3600 // 60)
        end
        mj:SetText(lK("Session time", qR_1, mT))
    end
end
function fns.fn267(hm, hn)
    local Type = hn.Type
    if Type == "Toggle" then
        return { idx = hm, type = "Toggle", value = hn.Value == true }
    elseif Type == "Slider" then
        return { idx = hm, type = "Slider", value = tostring(hn.Value) }
    elseif Type == "Dropdown" then
        return { idx = hm, type = "Dropdown", multi = hn.Multi == true, value = hn.Value }
    elseif Type == "Input" then
        local r1 = hn.Value or ""
        return { idx = hm, type = "Input", text = tostring(r1) }
    elseif Type == "ColorPicker" then
        return { idx = hm, type = "ColorPicker", value = hn.Value:ToHex(), transparency = hn.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = hm,
            type = "KeyPicker",
            mode = hn.Mode,
            key = hn.Value,
            modifiers = hn.Modifiers,
            toggled = hn.Toggled
        }
    else
        return nil
    end
end
function fns.worker3()
    while not Library.Unloaded and lP.__ouroboros_gen == __ouroboros_gen do
        if lz("AutoBuyButtons") then
            pcall(l_)
            task.wait(mL("BuyDelay", 0.35))
        else
            task.wait(0.35)
        end
    end
end
function fns.fn282()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
function fns.fn365()
    local n3 = tonumber(lF("Seeds", 0)) or 0
    return n3
end
function fns.fn370(cA)
    local VIPButtons = Workspace:FindFirstChild("VIPButtons")
    local pj = not VIPButtons
    local pp = if pj then 1 else 0
    local pn = 3983 * pp + 3571 * (1 - pp)
    local po = 4000 * pp + 2034 * (1 - pp)
    if not ((pn * 3652 + po * 1327 + pn * po) % 16777213 == 2231490) then
        pj = not cA
    end
    if not pj then
        pj = not cA.seeds
    end
    if pj then
        return nil
    end
    local pj_1 = nil
    local pk = math.huge
    for i, child in ipairs(VIPButtons:GetChildren()) do
        local pi_1 = tonumber(child:GetAttribute("Seeds"))
        if pi_1 then
            local pl = math.abs(pi_1 - cA.seeds)
            if pl < pk then
                pk = pl
                pj_1 = child
            end
        end
    end
    local pi_2 = pj_1 and pk <= math.max(cA.seeds * 0.01, 1)
    if pi_2 then
        return pj_1
    end
    return nil
end
local function fn374()
    return LocalPlayer.Character
end
local function onCopyBitcoinAddress()
    ml(mK, "Copied Bitcoin address")
end
local function onImportConfigFromClipboardTex()
    local sA_1
    local sy = Options.SaveManager_ImportSource.Value or ""
    local sy_1
    local sz = tostring(sy):match("^%s*(.-)%s*$")
    if sz == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    sy_1, sA_1 = pcall(HttpService.JSONDecode, HttpService, sz)
    local sz_1 = not sy_1 or type(sA_1) ~= "table" or type(sA_1.objects) ~= "table"
    if sz_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local sy_2 = 0
    for i, v in ipairs(sA_1.objects) do
        if lJ(v) then
            sy_2 += 1
        end
    end
    if sy_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local sA_2 = sy_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(sy_2, sA_2), 6)
end
local function fn465()
    if not Toggles.WalkSpeedEnabled.Value then
        local q5 = l6()
        if q5 then
            q5.WalkSpeed = 16
        end
    end
end
local function onInputChanged(g6)
    local UserInputType = g6.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lx = tick()
    end
end
local function onRenderStepped(f4)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rq_1 = l6()
        if rq_1 then
            rq_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rq_3 = lT()
        local rr = l6()
        lC = Workspace.CurrentCamera or lC
        if rq_3 and rr and lC then
            rr.PlatformStand = true
            local rr_1 = Vector3.zero
            local rx = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if rx == 1 then
                rr_1 = rr_1 + lC.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                rr_1 = rr_1 - lC.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                rr_1 = rr_1 - lC.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                rr_1 = rr_1 + lC.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                rr_1 = rr_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                rr_1 = rr_1 - Vector3.new(0, 1, 0)
            end
            rq_3.Velocity = Vector3.zero
            if rr_1.Magnitude > 0 then
                rq_3.CFrame = rq_3.CFrame + rr_1.Unit * Options.FlySpeed.Value * f4
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local qO = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, me)
    if setclipboard then
        setclipboard(qO)
    elseif toclipboard then
        toclipboard(qO)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn538()
    local TycoonButtons = Workspace:FindFirstChild("TycoonButtons")
    if not TycoonButtons then
        return
    end
    local pN = mu()
    local pO = mV()
    local pP
    local pQ = math.huge
    local pR
    for i, child in ipairs(TycoonButtons:GetChildren()) do
        local pM_1 = child:IsA("Model") and not pN[child.Name]
        if pM_1 then
            local attr = child:GetAttribute("RequiresButton")
            if attr == nil or attr == "" or pN[attr] then
                local pM_3 = mn(child)
                if pM_3 then
                    if pM_3 <= pO and pM_3 < pQ then
                        pQ = pM_3
                        pP = child
                    end
                elseif not pR then
                    pR = child
                end
            end
        end
    end
    local pM_4 = pP or pR
    if not pM_4 then
        return
    end
    ma(TycoonPurchase, 1.25, pM_4)
end
local function fn553()
    if lF("FreeRewardClaimed", false) == true then
        return
    end
    pcall(function()
        FreeRewardClaim:FireServer()
    end)
end
local function fn562()
    if not Toggles.Fly.Value then
        local q0 = l6()
        if q0 then
            q0.PlatformStand = false
        end
    end
end
local function fn572(bY)
    local oK = StageButtonCoords:FindFirstChild(tostring(bY))
    local oL = oK and typeof(oK.Value) == "Vector3"
    if oL then
        return oK.Value
    end
    return nil
end
local function fn581()
    local qr = tonumber(lF("Level", 1)) or 1
    local max = math.max
    local qt = Config.MinWalkSpeed or 12
    local qu = Config.BaseWalkSpeed or 16
    local min = math.min
    local qw = Config.SpeedLevelCap
    local qB = if qw then 1 else 0
    local qz = 3285 * qB + 3164 * (1 - qB)
    local qA = 1675 * qB + 1696 * (1 - qB)
    if not ((qz * 3280 + qA * 1524 + qz * qA) % 16777213 == 2052662) then
        qw = 67
    end
    local qx = min(qr, qw)
    local qv_1 = Config.WalkSpeedPerLevel or 2
    return max(qt, qu + qx * qv_1)
end
local function fn596(W, X, Y)
    return string.format("<b>%s</b> %s %s", W, lW("-", "#5a6070"), lW(X, Y))
end
local function fn599()
    local p_ = tonumber(lF("MotherTreeRebirths", 0)) or 0
    if p_ == 0 then
        return 1000000000000000
    elseif p_ == 1 then
        return 1e+20
    else
        return 9e+23 * 15 ^ (p_ - 2)
    end
end
local function fn619()
    local o3 = {}
    local o9 = 1
    while o9 <= 13 do
        local pb = o9
        local o4 = lB[pb] or 0
        o3[#o3 + 1] = string.format("Stage %d (+%s)", pb, mS(o4))
        o9 += 1
    end
    for i, v in ipairs(lX) do
        o3[#o3 + 1] = string.format("%s (+%s)", v.tier, mS(v.seeds))
    end
    return o3
end
local function fn624(bN)
    local oz_1
    local oy_1
    oy_1, oz_1 = pcall(Format.Short, bN)
    local oA = oy_1 and type(oz_1) == "string"
    if oA then
        return oz_1
    end
    return tostring(bN)
end
local function fn626(bs)
    local oe = mg()
    if not oe then
        return
    end
    if oe.PrimaryPart then
        oe:PivotTo(bs)
    else
        local oe_1 = lT()
        if oe_1 then
            oe_1.CFrame = bs
        end
    end
end
local function fn628(bD)
    local oq_1
    local op_1
    if type(bD) ~= "string" then
        return nil
    end
    local oo = bD:gsub(",", ""):gsub("%s", ""):gsub("^%+", "")
    op_1, oq_1 = oo:match("(%d+%.?%d*)(%a*)")
    local oo_1 = tonumber(op_1)
    if not oo_1 then
        return nil
    end
    if oq_1 and oq_1 ~= "" then
        local op_3 = oq_1:upper()
        local oq_2 = lE[op_3:sub(1, 5)] or lE[op_3:sub(1, 4)] or lE[op_3:sub(1, 3)] or lE[op_3:sub(1, 2)] or lE[op_3:sub(1, 1)]
        if oq_2 then
            oo_1 = oo_1 * oq_2
        end
    end
    return math.floor(oo_1 + 0.5)
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local ra_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ra_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyVenmoLink()
    ml(mm, "Copied Venmo link")
end
local function fn699(he, hf)
    local rY_1 = (he == "Toggle" and Toggles or Options)[hf]
    local rX_2 = type(rY_1) == "table" and rY_1.Type == he
    return rX_2 and rY_1 or nil
end
local function fn710(eu)
    local DiscordGroup = eu:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = l4 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = l4 })
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local sL = tick() - lx
            local sM = tick() - lw
            if sL >= 300 and sM >= 60 then
                pcall(mF)
            else
                if sL < 300 and sM >= 300 then
                    pcall(mF)
                end
            end
        end
    end
end
local function fn716(ce, cf)
    if typeof(ce) ~= "Vector3" then
        return false
    end
    local oY = lT()
    if not oY then
        return false
    end
    mP(ce)
    mC(CFrame.new(ce + Vector3.new(0, 2, 0)))
    task.wait(0.05)
    local oY_1 = lR(cf, ce, 40)
    if oY_1 then
        mb(oY_1)
        local oZ = lT()
        if oZ then
            oZ.CFrame = CFrame.new(oY_1.Position + Vector3.new(0, 1, 0))
        end
    else
        local oY_2 = lT()
        if oY_2 then
            oY_2.CFrame = CFrame.new(ce + Vector3.new(0, 1, 0))
        end
    end
    return true
end
local function worker2()
    while not Library.Unloaded and lP.__ouroboros_gen == __ouroboros_gen do
        if lz("AutoWin") then
            pcall(lN)
            task.wait(mL("WinDelay", 0.6))
        else
            task.wait(0.25)
        end
    end
end
local function onCopyUSDTAddress()
    ml(mz, "Copied USDT address")
end
local function fn730()
    ml(mv, "Copied Discord invite to clipboard")
end
local function fn731()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    lw = tick()
end
local function fn740()
    local p2 = tonumber(lF("Level", 1)) or 1
    local p2_1 = tonumber(lF("Rebirths", 0)) or 0
    if p2 >= RebirthInfo.GetRequiredLevel(p2_1) then
        pcall(function()
            Rebirth:FireServer()
        end)
    end
end
local function onExportConfigToClipboard()
    local sv_1
    local su_1
    su_1, sv_1 = pcall(HttpService.JSONEncode, HttpService, mA())
    if not su_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local su_2 = setclipboard or toclipboard
    local su_3 = type(su_2) ~= "function" or not pcall(su_2, sv_1)
    if su_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn754(aU, aV)
    local attr = LocalPlayer:GetAttribute(aU)
    if attr == nil then
        return aV
    end
    return attr
end
local function onTeleportToSelectedStage()
    local qU = l5(Options.WinStage.Value)
    if not qU then
        return
    end
    if qU.kind == "stage" then
        local qV_1 = l9(qU.id)
        if qV_1 then
            mP(qV_1)
            mC(CFrame.new(qV_1 + Vector3.new(0, 3, 0)))
        end
        return
    end
    local qV_2 = mU(qU)
    local qU_1 = qV_2 and qV_2:FindFirstChild("TriggerPart")
    if qU_1 then
        mP(qU_1.Position)
        mC(CFrame.new(qU_1.Position + Vector3.new(0, 3, 0)))
    end
end
local function fn770(by)
    local og = lT()
    local oh = not by
    local oi = not og
    local on = if oi then 1 else 0
    local ol = 3859 * on + 189 * (1 - on)
    local om = 878 * on + 1931 * (1 - on)
    if not ((ol * 248 + om * 1352 + ol * om) % 16777213 == 5532290) then
        oi = oh
    end
    if oi then
        return false
    elseif firetouchinterest then
        pcall(firetouchinterest, og, by, 0)
        task.wait()
        pcall(firetouchinterest, og, by, 1)
        return true
    else
        mC(by.CFrame + Vector3.new(0, 2, 0))
        return true
    end
end
local function fn775()
    l7(Toggles.AntiGameplayPause.Value)
end
local function fn778()
    local pA = Options.WinStage and Options.WinStage.Value
    local pB = l5(pA)
    if not pB then
        return
    end
    if pB.kind == "stage" then
        local pA_1 = l9(pB.id)
        if not pA_1 then
            return
        end
        mJ(pA_1, Workspace:FindFirstChild("StageButtons"))
        return
    end
    if pB.kind == "vip" then
        local pA_2 = mU(pB)
        local pB_1 = pA_2 and pA_2:FindFirstChild("TriggerPart")
        if pB_1 then
            mJ(pB_1.Position, Workspace:FindFirstChild("VIPButtons"))
            return
        end
        if pA_2 then
            local pB_2 = pA_2.PrimaryPart or pA_2:FindFirstChildWhichIsA("BasePart")
            if pB_2 then
                mJ(pB_2.Position, Workspace:FindFirstChild("VIPButtons"))
            end
        end
    end
end
local function fn841()
    local nW = mg()
    local nX = nW and nW:FindFirstChild("HumanoidRootPart")
    return nX
end
local function fn844(c6)
    local SeedsLabel = c6:FindFirstChild("SeedsLabel", true)
    local pI = SeedsLabel and SeedsLabel:IsA("TextLabel")
    if not pI then
        return nil
    end
    local Text = SeedsLabel.Text
    local pH_1 = Text == ""
    local pJ = type(Text) ~= "string" or pH_1
    if pJ or Text == "..." then
        return nil
    end
    return lU(Text)
end
local function fn845()
    local oC = {}
    local oD = lF("OwnedTycoonButtons", "") or ""
    local oE = tostring(oD)
    for k in string.gmatch(oE, "[^,]+") do
        oC[k] = true
    end
    return oC
end
local function onCopyEthereumAddress()
    ml(mG, "Copied Ethereum address")
end
local function worker5()
    while not Library.Unloaded and lP.__ouroboros_gen == __ouroboros_gen do
        if lz("AutoGoldenRecruit") then
            pcall(mc)
            task.wait(1)
        else
            task.wait(0.5)
        end
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded and lP.__ouroboros_gen == __ouroboros_gen do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            l7(true)
        end
    end
end
local function fn920(T, U)
    return string.format('<font color="%s">%s</font>', U, T)
end
local function onCopySolanaAddress()
    ml(mw, "Copied Solana address")
end
local function onCopyLitecoinAddress()
    ml(mO, "Copied Litecoin address")
end
local function fn951(aD, aE)
    local nQ = Options[aD]
    local nR = nQ and tonumber(nQ.Value)
    if nR then
        return nR
    end
    return aE
end
Library = nil
lw = nil
lx = nil
StageButtonCoords = nil
lz = nil
Config = nil
lB = nil
lC = nil
RebirthInfo = nil
lE = nil
lF = nil
lG = nil
connection2 = nil
Format = nil
lJ = nil
lK = nil
__ouroboros_gen = nil
lN = nil
lP = nil
lR = nil
lS = nil
lT = nil
lU = nil
MotherTreeRebirth = nil
lW = nil
lX = nil
connection5 = nil
Rebirth = nil
l_ = nil
connection = nil
FreeRewardClaim = nil
l2 = nil
TycoonPurchase = nil
l4 = nil
l5 = nil
l6 = nil
l7 = nil
connection3 = nil
l9 = nil
ma = nil
mb = nil
mc = nil
md = nil
me = nil
connection4 = nil
mg = nil
local lL, SetCustomSpeed, RequestGoldenRecruit, mh
mi = nil
mj = nil
LocalPlayer = nil
ml = nil
mm = nil
mn = nil
Workspace = nil
mp = nil
mq = nil
mr = nil
mu = nil
mv = nil
mw = nil
Options = nil
mz = nil
mA = nil
mC = nil
HttpService = nil
Toggles = nil
mF = nil
mG = nil
VirtualUser = nil
SaveManager = nil
mJ = nil
mK = nil
mL = nil
UserInputService = nil
mN = nil
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
local CoreGui, GuiService
CoreGui = nil
local mt
GuiService = nil
local mB
local nf, ng, nh, FlyGroup, MovementGroup, DonationsGroup, OuroborosHubGroup, FeaturesGroup
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer = nil, nil, nil, nil, nil, nil, nil
local s__1 = game:GetService("Players")
local s__16 = game:GetService("ReplicatedStorage")
local s__4 = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = s__1.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
TycoonPurchase, FreeRewardClaim, Rebirth, MotherTreeRebirth, RequestGoldenRecruit, SetCustomSpeed, Format, RebirthInfo, Config, StageButtonCoords, Library, SaveManager, Toggles, Options, mv, mp, mT, mO, mK, mG, mz, mw, mq, mm, ml, l4, lW, lK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local s__5 = "Save Your Cat"
local s__19 = s__16:WaitForChild("Remotes")
TycoonPurchase = s__19:WaitForChild("TycoonPurchase")
FreeRewardClaim = s__19:WaitForChild("FreeRewardClaim")
Rebirth = s__19:WaitForChild("Rebirth")
MotherTreeRebirth = s__19:WaitForChild("MotherTreeRebirth")
RequestGoldenRecruit = s__19:WaitForChild("RequestGoldenRecruit")
SetCustomSpeed = s__19:WaitForChild("SetCustomSpeed")
local s__9 = s__16:WaitForChild("Shared")
Format = require(s__9:WaitForChild("Format"))
RebirthInfo = require(s__9:WaitForChild("RebirthInfo"))
Config = require(s__9:WaitForChild("Config"))
StageButtonCoords = s__16:WaitForChild("StageButtonCoords")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fns.fn282)
local s__7 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
mv = "https://discord.gg/ehKVq7pf7v"
mp = "https://rscripts.net/@Ouroboros"
ml = fns.fn55
l4 = fn730
lW = fn920
lK = fn596
local s__21 = "#7fd47f"
local s__13 = "#6ec1ff"
mT = "#e8a34d"
local s__14 = "#8b93a3"
mO = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
mK = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
mG = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mz = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mw = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mq = "https://paypal.me/TheTruckerGOD"
mm = "https://venmo.com/u/miserablemusic"
local s__20 = "#345d9d"
local s__12 = "#f7931a"
local s__18 = "#627eea"
local s__10 = "#26a17b"
local s__3 = "#14f195"
local s__15 = "#0070ba"
local s__8 = "#008cff"
local s__6 = getgenv and getgenv()
s__1 = {}
s__9 = s__6 or s__1
lP = s__9
s__1 = lP.__ouroboros_gen or 0
__ouroboros_gen = nil
lP.__ouroboros_gen = s__1 + 1
__ouroboros_gen = lP.__ouroboros_gen
s__16 = lP.__ouroboros_cleanup
if type(s__16) == "function" then
    s__1 = 7
    repeat
        if s__1 * 10726473 + 8 + 6 <= s__1 * 10726473 + 8 + 6 + 6 then
            pcall(s__16)
            lP.__ouroboros_cleanup = nil
        else
            pcall(lP)
            s__16.__ouroboros_cleanup = nil
        end
        s__1 = (s__1 + 6) % 8
    until (s__1 * 3 + 2) % 8 == 1
end
lE, lB, mh, lX, nf, s__9, s__22, lz, mL, mg, l6, lT, lF, mV, mP, ma, mC, mb, lU, mS, mu, l9, lR, mJ, s__11, mU, l5, lN, mn, l_, mi, l2, lG, mR, mB, mc, mt, md, s__6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
s__19 = 125
repeat
    s__1 = (s__19 * 5 + 8) % 18 + 1
    if s__1 <= 9 then
        if s__1 <= 5 then
            if s__1 <= 3 then
                if s__1 <= 2 then
                    if s__1 <= 1 then
                        s__16 = (vector.create((s__19 * 5 + 5) % 11 + 1, (s__19 * 3 + 1) % 13 + 1, (s__19 * 7 + 2) % 17 + 1))
                        ng = (vector.create((s__19 * 5 + 7) % 11 + 1, (s__19 * 9 + 7) % 13 + 1, (s__19 * 5 + 6) % 17 + 1))
                        nh = (vector.create((s__19 * 3 + 1) % 11 + 1, (s__19 * 2 + 4) % 13 + 1, (s__19 * 7 + 5) % 17 + 1))
                        if vector.dot(vector.cross(s__16, ng), nh) == vector.dot(vector.cross(ng, nh), s__16) then
                            s__9 = Library:CreateWindow({
                                Title = "Ouroboros",
                                Font = Enum.Font.BuilderSans,
                                Footer = { { Text = mv, Copyable = true }, "|", s__5 },
                                Icon = 78539693571783,
                                NotifySide = "Right",
                                ShowCustomCursor = false,
                                CornerRadius = 0
                            })
                        else
                            s__5 = mv:CreateWindow({
                                CornerRadius = 0,
                                Title = "Ouroboros",
                                ShowCustomCursor = false,
                                Icon = 78539693571783,
                                Footer = { s__9, "|", { Text = Library, Copyable = true } },
                                NotifySide = "Right",
                                Font = Enum.Font.BuilderSans
                            })
                        end
                        s__19 = (s__19 + 101) % 144
                    else
                        local t3 = bit32.rrotate(bit32.bxor(bit32.lrotate(s__19, 18), string.byte(tostring(mB))), 8)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(t3, 2679946943), 8), 3166617503) ~= bit32.lrotate(t3, 8) then
                            s__9 = {
                                Main = s__22:AddTab("Main", "gamepad-2"),
                                Player = s__22:AddTab("Player", "person-standing"),
                                Info = s__22:AddTab("Info", "info"),
                                Settings = s__22:AddTab("Settings", "settings")
                            }
                        else
                            s__22 = {
                                Info = s__9:AddTab("Info", "info"),
                                Main = s__9:AddTab("Main", "gamepad-2"),
                                Player = s__9:AddTab("Player", "person-standing"),
                                Settings = s__9:AddTab("Settings", "settings")
                            }
                        end
                        s__19 = (s__19 + 83) % 144
                    end
                else
                    if (not mt or not l5 or not lG and mt or s__11 and lE and (lE and s__22)) and (s__11 and not s__22 and (not lE or not lE) or (lE or l5 or (s__22 or s__22))) and not ((not mt or not l5 or not lG and mt or s__11 and lE and (lE and s__22)) and (s__11 and not s__22 and (not lE or not lE) or (lE or l5 or (s__22 or s__22)))) then
                        mU = fn710
                    else
                        s__6 = fn710
                    end
                    s__19 = (s__19 + 119) % 144
                end
            elseif s__1 <= 4 then
                s__16 = (vector.create((s__19 * 6 + 2) % 11 + 1, (s__19 * 7 + 7) % 13 + 1, (s__19 * 15 + 1) % 17 + 1))
                ng = (vector.create((s__19 * 6 + 6) % 11 + 1, (s__19 * 6 + 4) % 13 + 1, (s__19 * 1 + 6) % 17 + 1))
                local tY = vector.dot(s__16, ng)
                if tY * tY >= vector.dot(s__16, s__16) * vector.dot(ng, ng) + 1 then
                    s__9 = {
                        QA = 1000000000000000,
                        K = 1000,
                        B = 1000000000,
                        T = 1000000000000,
                        DC = 1e+33,
                        QI = 1e+18,
                        OC = 1e+27,
                        SP = 1e+24,
                        NO = 1e+30,
                        SX = 1e+21,
                        M = 1000000
                    }
                else
                    lE = {
                        K = 1000,
                        M = 1000000,
                        B = 1000000000,
                        T = 1000000000000,
                        QA = 1000000000000000,
                        QI = 1e+18,
                        SX = 1e+21,
                        SP = 1e+24,
                        OC = 1e+27,
                        NO = 1e+30,
                        DC = 1e+33
                    }
                end
                s__19 = (s__19 + 29) % 144
            else
                if (not mS and lU and (mb or not lz) or (not lz or lT or (lz or not lT))) and (lz and not mS or (mb or mS) or not mS and lT and (mb and not mb)) and (lT and not lT and (mS and not lU) and (mb or lT or (lU or mS)) or (mb and lz or (mb or not mb)) and (not lz or lU or not lz and not lU)) and not ((not mS and lU and (mb or not lz) or (not lz or lT or (lz or not lT))) and (lz and not mS or (mb or mS) or not mS and lT and (mb and not mb)) and (lT and not lT and (mS and not lU) and (mb or lT or (lU or mS)) or (mb and lz or (mb or not mb)) and (not lz or lU or not lz and not lU))) then
                    mL = {
                        [2] = 25,
                        [3] = 250,
                        [9] = 10000000000,
                        [10] = 500000000000,
                        [4] = 5000,
                        [6] = 2200000,
                        [13] = 5000000000000000,
                        [5] = 100000,
                        [1] = 1,
                        [8] = 1000000000,
                        [12] = 200000000000000,
                        [11] = 10000000000000,
                        [7] = 45000000
                    }
                    lB = fns.fn182
                    lz = fn951
                else
                    lB = {
                        [1] = 1,
                        [2] = 25,
                        [3] = 250,
                        [4] = 5000,
                        [5] = 100000,
                        [6] = 2200000,
                        [7] = 45000000,
                        [8] = 1000000000,
                        [9] = 10000000000,
                        [10] = 500000000000,
                        [11] = 10000000000000,
                        [12] = 200000000000000,
                        [13] = 5000000000000000
                    }
                    lz = fns.fn182
                    mL = fn951
                end
                s__19 = (s__19 + 119) % 144
            end
        elseif s__1 <= 7 then
            if s__1 <= 6 then
                s__16 = { "jlom", "xhplpf", "bmbbwcizt", "bhkjish", "nou", "qyibllkx", "bfskucxru" }
                local tE = s__19
                ng = s__16[tE % 7 + 1]
                if ng:len() <= ng:gsub("(.)", "%1%1", tE % 3 % 2 + 1):len() then
                    mg = fn374
                    l6 = fns.fn63
                    lT = fn841
                    lF = fn754
                else
                    lF = fn374
                    mg = fns.fn63
                    l6 = fn841
                    lT = fn754
                end
                s__19 = (s__19 + 83) % 144
            else
                s__16 = { "nibjkizop", "yzunxfw", "fjqoixqrf", "yhh", "vllgw", "khekrinxgj", "lion", "srdnqf" }
                local t_ = s__19
                ng = s__16[t_ % 8 + 1]
                if ng:len() <= ng:reverse():rep(t_ % 3 + 2):len() then
                    mV = fns.fn365
                    mP = function(a0)
                        if typeof(a0) ~= "Vector3" then
                            return
                        end
                        if not Workspace.StreamingEnabled then
                            return
                        end
                        task.spawn(function()
                            pcall(function()
                                LocalPlayer:RequestStreamAroundAsync(a0)
                            end)
                        end)
                    end
                else
                    mP = fns.fn365
                    mV = function(a0)
                        if typeof(a0) ~= "Vector3" then
                            return
                        end
                        if not Workspace.StreamingEnabled then
                            return
                        end
                        task.spawn(function()
                            pcall(function()
                                LocalPlayer:RequestStreamAroundAsync(a0)
                            end)
                        end)
                    end
                end
                s__19 = (s__19 + 137) % 144
            end
        elseif s__1 <= 8 then
            if s__19 * 25242139 + 6 + 1 <= s__19 * 25242139 + 6 + 1 + 1 then
                mh = false
                ma = function(a9, ba, ...)
                    local n6, n7, n8, n9
                    if mh then
                        return false, nil
                    end
                    n6 = false
                    n7 = { ... }
                    n9, n8 = false, nil
                    mh = true
                    task.spawn(function()
                        n9, n8 = pcall(function()
                            return a9:InvokeServer(table.unpack(n7))
                        end)
                        n6 = true
                        mh = false
                    end)
                    local oa = os.clock()
                    local oc = oa + (ba or 1.25)
                    while true do
                        local oa_2 = not n6 and os.clock() < oc and not Library.Unloaded
                        if oa_2 then
                            task.wait()
                            continue
                        end
                        break
                    end
                    if not n6 then
                        return false, nil
                    end
                    return n9, n8
                end
                mC = fn626
                mb = fn770
            else
                ma = false
                mh = function(a9, ba, ...)
                    local n6, n7, n8, n9
                    if mh then
                        return false, nil
                    end
                    n6 = false
                    n7 = { ... }
                    n9, n8 = false, nil
                    mh = true
                    task.spawn(function()
                        n9, n8 = pcall(function()
                            return a9:InvokeServer(table.unpack(n7))
                        end)
                        n6 = true
                        mh = false
                    end)
                    local oa = os.clock()
                    local oc = oa + (ba or 1.25)
                    while true do
                        local oa_1 = not n6 and os.clock() < oc and not Library.Unloaded
                        if oa_1 then
                            task.wait()
                            continue
                        end
                        break
                    end
                    if not n6 then
                        return false, nil
                    end
                    return n9, n8
                end
                mb = fn626
                mC = fn770
            end
            s__19 = (s__19 + 47) % 144
        else
            local tF = bit32.rrotate(bit32.bxor(bit32.lrotate(s__19, 29), string.byte(tostring(ma))), 10)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tF, 1192258139), 3570995674), (bit32.bxor(bit32.band(tF, 3102709156), 115015585))), 3570995674), 115015585) == tF then
                lU = fn628
            else
                mc = fn628
            end
            s__19 = (s__19 + 47) % 144
        end
    elseif s__1 <= 14 then
        if s__1 <= 12 then
            if s__1 <= 11 then
                if s__1 <= 10 then
                    s__16 = (vector.create((s__19 * 1 + 5) % 11 + 1, (s__19 * 7 + 2) % 13 + 1, (s__19 * 6 + 5) % 17 + 1))
                    ng = (vector.create((s__19 * 2 + 2) % 11 + 1, (s__19 * 5 + 12) % 13 + 1, (s__19 * 7 + 12) % 17 + 1))
                    nh = (vector.create((s__19 * 2 + 6) % 11 + 1, (s__19 * 10 + 9) % 13 + 1, (s__19 * 12 + 6) % 17 + 1))
                    if vector.dot(vector.cross(s__16, ng), nh) == vector.dot(vector.cross(ng, nh), s__16) then
                        mS = fn624
                        mu = fn845
                    else
                        mu = fn624
                        mS = fn845
                    end
                    s__19 = (s__19 + 101) % 144
                else
                    local tI = bit32.rrotate(bit32.bxor(bit32.lrotate(s__19, 16), string.byte(tostring(s__6))), 23)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(tI, 2273881097), 0), 2273881097) == bit32.lrotate(tI, 0) then
                        l9 = fn572
                        lR = fns.fn53
                        mJ = fn716
                        lX = {
                            { seeds = 200000, tier = "VIP" },
                            { seeds = 4400000, tier = "VIP" },
                            { seeds = 90000000, tier = "VIP" },
                            { seeds = 2000000000, tier = "VIP" },
                            { seeds = 20000000000, tier = "MVP" },
                            { seeds = 1000000000000, tier = "MVP" },
                            { seeds = 20000000000000, tier = "Supreme" },
                            { seeds = 400000000000000, tier = "Supreme" },
                            { seeds = 1e+16, tier = "Supreme" }
                        }
                    else
                        lR = fn572
                        mJ = fns.fn53
                        lX = fn716
                        l9 = {
                            { seeds = 4400000, tier = "VIP" },
                            { seeds = 90000000, tier = "VIP" },
                            { seeds = 20000000000000, tier = "Supreme" },
                            { seeds = 20000000000, tier = "MVP" },
                            { seeds = 400000000000000, tier = "Supreme" },
                            { seeds = 200000, tier = "VIP" },
                            { seeds = 1000000000000, tier = "MVP" },
                            { seeds = 1e+16, tier = "Supreme" },
                            { seeds = 2000000000, tier = "VIP" }
                        }
                    end
                    s__19 = (s__19 + 101) % 144
                end
            else
                if s__19 * 123065247 + 11 + 6 >= s__19 * 123065247 + 11 + 6 + 1 then
                    mn = fn619
                else
                    s__11 = fn619
                end
                s__19 = (s__19 + 119) % 144
            end
        elseif s__1 <= 13 then
            if (lz and not mL or mP and not s__6) and ((not lz or not mP) and (not lz or s__6)) or (s__6 and not mR and (mR and not mR) or (not s__6 or not mR) and (not mP and mL)) or ((not s__6 or not mR) and (not lz or mn) or (not mP or not s__6 or (mL or mL))) and (mR or not mP or not lz and mR or (not mR or s__6) and (not mR and mR)) or not ((lz and not mL or mP and not s__6) and ((not lz or not mP) and (not lz or s__6)) or (s__6 and not mR and (mR and not mR) or (not s__6 or not mR) and (not mP and mL)) or ((not s__6 or not mR) and (not lz or mn) or (not mP or not s__6 or (mL or mL))) and (mR or not mP or not lz and mR or (not mR or s__6) and (not mR and mR))) then
                mU = fns.fn370
                l5 = fns.fn72
                lN = fn778
            else
                lN = fns.fn370
                mU = fns.fn72
                l5 = fn778
            end
            s__19 = (s__19 + 65) % 144
        else
            if not mh and mt and (not mt or not mh) and ((mt or mh) and (mt or mh)) and not (not mh and mt and (not mt or not mh) and ((mt or mh) and (mt or mh))) then
                l_ = fn844
                l2 = fn538
                mn = fn599
                mi = fn740
            else
                mn = fn844
                l_ = fn538
                mi = fn599
                l2 = fn740
            end
            s__19 = (s__19 + 101) % 144
        end
    elseif s__1 <= 16 then
        if s__1 <= 15 then
            local tA = bit32.rrotate(bit32.bxor(bit32.lrotate(s__19, 20), string.byte(tostring(s__9))), 28)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tA, 4187190674), 20), 1496291639) ~= bit32.lrotate(tA, 20) then
                mn = fns.fn206
            else
                lG = fns.fn206
            end
            s__19 = (s__19 + 101) % 144
        else
            if (s__19 * 2 + 6) * 7 % 3 == ((s__19 * 2 + 6) * 7 + 6) % 3 then
                mR = fn553
            else
                l5 = fn553
            end
            s__19 = (s__19 + 29) % 144
        end
    elseif s__1 <= 17 then
        s__1 = (vector.create((s__19 * 7 + 9) % 11 + 1, (s__19 * 11 + 13) % 13 + 1, (s__19 * 15 + 17) % 17 + 1))
        s__16 = (vector.create((s__19 * 7 + 3) % 11 + 1, (s__19 * 9 + 11) % 13 + 1, (s__19 * 2 + 8) % 17 + 1))
        ng = (vector.create((s__19 * 4 + 4) % 11 + 1, (s__19 * 2 + 1) % 13 + 1, (s__19 * 4 + 1) % 17 + 1))
        if vector.dot(vector.cross(s__1, s__16), ng) == vector.dot(vector.cross(s__16, ng), s__1) + 4 then
            mt = fns.fn251
            mB = function()
                local GoldenRecruitButtons = Workspace:FindFirstChild("GoldenRecruitButtons")
                if not GoldenRecruitButtons then
                    return
                end
                local qi = lT()
                if not qi then
                    return
                end
                for i, child in ipairs(GoldenRecruitButtons:GetChildren()) do
                    local qh_4 = Library.Unloaded or not lz("AutoGoldenRecruit")
                    if qh_4 then
                        break
                    else
                        local attr = child:GetAttribute("ZoneKey")
                        local qh_5 = child:GetAttribute("Tier") or "VIP"
                        local qi_2 = attr
                        if qi_2 then
                            qi_2 = mB(qh_5)
                        end
                        if qi_2 then
                            qi_2 = lF("GoldenActive_" .. attr, false) ~= true
                        end
                        if qi_2 then
                            local TriggerPart = child:FindFirstChild("TriggerPart")
                            if TriggerPart then
                                mP(TriggerPart.Position)
                                mC(CFrame.new(TriggerPart.Position + Vector3.new(0, 3, 0)))
                                task.wait(0.2)
                                pcall(function()
                                    RequestGoldenRecruit:FireServer(attr)
                                end)
                                task.wait(0.35)
                            end
                        end
                    end
                end
            end
            mc = fn581
        else
            mB = fns.fn251
            mc = function()
                local GoldenRecruitButtons = Workspace:FindFirstChild("GoldenRecruitButtons")
                if not GoldenRecruitButtons then
                    return
                end
                local qi = lT()
                if not qi then
                    return
                end
                for i, child in ipairs(GoldenRecruitButtons:GetChildren()) do
                    local qh_1 = Library.Unloaded or not lz("AutoGoldenRecruit")
                    if qh_1 then
                        break
                    else
                        local attr = child:GetAttribute("ZoneKey")
                        local qh_2 = child:GetAttribute("Tier") or "VIP"
                        local qi_1 = attr
                        if qi_1 then
                            qi_1 = mB(qh_2)
                        end
                        if qi_1 then
                            qi_1 = lF("GoldenActive_" .. attr, false) ~= true
                        end
                        if qi_1 then
                            local TriggerPart = child:FindFirstChild("TriggerPart")
                            if TriggerPart then
                                mP(TriggerPart.Position)
                                mC(CFrame.new(TriggerPart.Position + Vector3.new(0, 3, 0)))
                                task.wait(0.2)
                                pcall(function()
                                    RequestGoldenRecruit:FireServer(attr)
                                end)
                                task.wait(0.35)
                            end
                        end
                    end
                end
            end
            mt = fn581
        end
        s__19 = (s__19 + 65) % 144
    else
        if (s__19 * 1 + 6) * 13 % 4 == ((s__19 * 1 + 6) * 13 + 4) % 4 then
            md = function()
                local qC = math.floor(mt())
                local qD = tonumber(lF("CustomSpeed", 0)) or 0
                if qD ~= qC then
                    pcall(function()
                        SetCustomSpeed:FireServer(qC)
                    end)
                end
            end
            nf = s__11()
        else
            nf = function()
                local qC = math.floor(mt())
                local qD = tonumber(lF("CustomSpeed", 0)) or 0
                if qD ~= qC then
                    pcall(function()
                        SetCustomSpeed:FireServer(qC)
                    end)
                end
            end
            s__11 = md()
        end
        s__19 = (s__19 + 101) % 144
    end
until (s__19 * 77 + 37) % 144 == 122
for k, v in s__22 do
    s__6(v)
end
mN, s__9, s__11, mj, me, s__16 = nil, nil, nil, nil, nil, nil
s__1 = 9
repeat
    s__19 = (s__1 * 2 + 2) % 3 + 1
    if s__19 <= 2 then
        if s__19 <= 1 then
            s__19 = (vector.create((s__1 * 5 + 8) % 11 + 1, (s__1 * 2 + 8) % 13 + 1, (s__1 * 8 + 1) % 17 + 1))
            s__6 = (vector.create((s__1 * 6 + 1) % 11 + 1, (s__1 * 7 + 2) % 13 + 1, (s__1 * 13 + 17) % 17 + 1))
            ng = (vector.create((s__1 * 1 + 2) % 5 + 1, (s__1 * 4 + 6) % 7 + 1, (s__1 * 2 + 5) % 9 + 1))
            if math.abs((vector.angle(s__19, s__6, ng))) - math.abs((vector.angle(s__6, s__19, ng))) == 5 then
                mj = tostring(game.JobId)
            else
                me = tostring(game.JobId)
            end
            s__1 = (s__1 + 5) % 12
        else
            s__19 = {
                "cixxvg",
                "cpjvibhdnqp",
                "xodeloqa",
                "jba",
                "xcnuhfro",
                "cdxeh",
                "ahnzcnknqit",
                "ubmudhyuf",
                "vedbyd"
            }
            if s__19[(s__1 * 32 + 37) % 9 + 1] < s__19[(s__1 * 32 + 37) % 9 + 1] then
                me = #s__16 > 18
            else
                s__16 = #me > 18
            end
            s__1 = (s__1 + 5) % 12
        end
    else
        s__19 = (vector.create((s__1 * 3 + 3) % 11 + 1, (s__1 * 10 + 1) % 13 + 1, (s__1 * 6 + 4) % 17 + 1))
        local tU = vector.floor(s__19) + vector.ceil(s__19 * -1)
        if vector.dot(tU, tU) == 2 then
            lK = "Unknown"
            pcall(fns.fn23)
            mN = s__9.Info:AddLeftGroupbox("Account", "circle-user")
            mN:AddLabel(s__5("User", lW.Name, LocalPlayer), true)
            mN:AddLabel(s__5("Status", "Keyless", LocalPlayer), true)
            mN:AddLabel(s__5("Executor", lK, LocalPlayer), true)
            s__21 = s__9.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            s__21:AddLabel(mj(s__11 .. " [" .. tostring(game.PlaceId) .. "]", s__22), true)
            s__21:AddLabel(s__5("Place ID", tostring(game.PlaceId), s__22), true)
            mT = s__21:AddLabel(s__5("Session time", "0s", s__13), true)
        else
            mN = "Unknown"
            pcall(fns.fn23)
            s__9 = s__22.Info:AddLeftGroupbox("Account", "circle-user")
            s__9:AddLabel(lK("User", LocalPlayer.Name, s__21), true)
            s__9:AddLabel(lK("Status", "Keyless", s__21), true)
            s__9:AddLabel(lK("Executor", mN, s__21), true)
            s__11 = s__22.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            s__11:AddLabel(lW(s__5 .. " [" .. tostring(game.PlaceId) .. "]", s__13), true)
            s__11:AddLabel(lK("Place ID", tostring(game.PlaceId), s__13), true)
            mj = s__11:AddLabel(lK("Session time", "0s", mT), true)
        end
        s__1 = (s__1 + 8) % 12
    end
until (s__1 * 11 + 3) % 12 == 0
if s__16 then
    s__1 = 2
    repeat
        if s__1 * 49128661 + 7 + 4 >= s__1 * 49128661 + 7 + 4 + 5 then
            me = string.sub(s__16, 1, 18) .. "..."
        else
            s__16 = string.sub(me, 1, 18) .. "..."
        end
        s__1 = (s__1 + 0) % 4
    until (s__1 * 3 + 0) % 4 == 2
end
s__1 = s__16
local nz = if s__1 then 1 else 0
local nx = 1081 * nz + 899 * (1 - nz)
local ny = 1755 * nz + 2183 * (1 - nz)
if not ((nx * 3464 + ny * 3689 + nx * ny) % 16777213 == 12115934) then
    s__1 = me
end
lS, FeaturesGroup, OuroborosHubGroup, DonationsGroup, s__6, MovementGroup, FlyGroup, connection, connection2, lC, connection3, lx, lw, connection4, connection5, l7, mF, lL, mQ, mA, lJ, mr = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nh = s__1
s__11:AddLabel(lK("Server", nh, s__14), true)
s__11:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lS = os.clock()
task.spawn(fns.worker)
s__9 = s__22.Info:AddRightGroupbox("Scripts", "package")
if ((not mQ or OuroborosHubGroup) and (nh or OuroborosHubGroup) or (nh or not mQ) and (not mQ or not FlyGroup)) and (not lC and not nh and (FlyGroup and OuroborosHubGroup) or (not nh or nh) and (not OuroborosHubGroup or not mQ)) and not (((not mQ or OuroborosHubGroup) and (nh or OuroborosHubGroup) or (nh or not mQ) and (not mQ or not FlyGroup)) and (not lC and not nh and (FlyGroup and OuroborosHubGroup) or (not nh or nh) and (not OuroborosHubGroup or not mQ))) then
    s__22:AddLabel(s__9("Included in this hub", lW), true)
    s__22:AddLabel(s__9(s__13, FeaturesGroup), true);
    (nil):AddRightGroupbox("Features", "list")
else
    s__9:AddLabel(lW("Included in this hub", s__14), true)
    s__9:AddLabel(lW(s__5, s__13), true)
    FeaturesGroup = s__22.Info:AddRightGroupbox("Features", "list")
end
FeaturesGroup:AddLabel(lW("Auto Win", s__13), true)
FeaturesGroup:AddLabel(lW("Auto Buy", mT), true)
FeaturesGroup:AddLabel(lW("Rebirth Utilities", s__14), true)
FeaturesGroup:AddLabel(lW("Misc Utilities", s__14), true)
local SocialsGroup = s__22.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = l4 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
OuroborosHubGroup = s__22.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if (not OuroborosHubGroup and not MovementGroup and (not MovementGroup or lS) and ((not connection or not lS) and (MovementGroup or connection)) or ((not lS or not connection5) and (not connection5 or not s__6) or not MovementGroup and MovementGroup and (lS or not s__6))) and ((connection or not connection) and (not s__6 and not connection) and (not MovementGroup or not MovementGroup or lS and not connection5) or (not OuroborosHubGroup and not lS or (s__6 or not connection5) or (not lS or not connection5 or (not connection5 or not OuroborosHubGroup)))) and not ((not OuroborosHubGroup and not MovementGroup and (not MovementGroup or lS) and ((not connection or not lS) and (MovementGroup or connection)) or ((not lS or not connection5) and (not connection5 or not s__6) or not MovementGroup and MovementGroup and (lS or not s__6))) and ((connection or not connection) and (not s__6 and not connection) and (not MovementGroup or not MovementGroup or lS and not connection5) or (not OuroborosHubGroup and not lS or (s__6 or not connection5) or (not lS or not connection5 or (not connection5 or not OuroborosHubGroup))))) then
    DonationsGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    DonationsGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    DonationsGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    DonationsGroup:AddButton({ Text = "Copy Discord Invite", Func = OuroborosHubGroup })
    s__22 = l4.Info:AddRightGroupbox("Donations", "heart")
else
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = l4 })
    DonationsGroup = s__22.Info:AddRightGroupbox("Donations", "heart")
end
DonationsGroup:AddLabel(lW("All donations are optional but appreciated.", mT), true)
DonationsGroup:AddLabel(lW("If you donate you get a special role, just PING after you donate.", s__21), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lW("LTC / Litecoin", s__20), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(lW("BTC / Bitcoin", s__12), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(lW("ETH / Ethereum", s__18), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(lW("USDT", s__10), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(lW("Solana", s__3), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(lW("PayPal", s__15), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(lW("Venmo", s__8), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lW("Don't have any of the listed currencies but still wanna donate?", s__14), true)
DonationsGroup:AddLabel(lW("DM me and we'll work something out.", s__13), true)
s__6 = s__22.Info:AddRightGroupbox("FAQ", "circle-help")
s__6:AddLabel("Where do I get a good config?", true)
s__6:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
s__6:AddLabel("How do I import / export configs?", true)
s__6:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
s__6:AddLabel("How do I report bugs?", true)
s__6:AddLabel("Join the Discord and post it in the bugs channel.", true)
s__6:AddLabel("How do I make suggestions?", true)
s__6:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
s__6:AddLabel("How do I get help or updates?", true)
s__6:AddLabel("Join the Discord, updates and support are posted there first.", true)
s__19 = s__22.Main:AddLeftGroupbox("Win", "trophy")
s__19:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
s__19:AddDropdown("WinStage", { Text = "Win Stage", Values = nf, Default = nf[1] })
s__19:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.6, Min = 0.2, Max = 3, Rounding = 1 })
s__19:AddButton({ Text = "Teleport to Selected Stage", Func = onTeleportToSelectedStage })
local BuyGroup = s__22.Main:AddRightGroupbox("Buy", "shopping-cart")
BuyGroup:AddToggle("AutoBuyButtons", { Text = "Auto Buy Buttons", Default = false })
BuyGroup:AddSlider("BuyDelay", { Text = "Buy Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 1 })
local MiscGroup = s__22.Main:AddLeftGroupbox("Misc", "sparkles")
MiscGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
MiscGroup:AddToggle("AutoMotherTree", { Text = "Auto Mother Tree", Default = false })
MiscGroup:AddToggle("AutoFreeReward", { Text = "Auto Free Reward", Default = false })
MiscGroup:AddToggle("AutoGoldenRecruit", { Text = "Auto Golden Recruit", Default = false })
MiscGroup:AddToggle("AutoMaxSpeed", { Text = "Auto Max Speed", Default = false })
MovementGroup = s__22.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
FlyGroup = s__22.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
l7 = function(fx)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not fx)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fx
        end
    end)
    if not fx then
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
Toggles.AntiGameplayPause:OnChanged(fn775)
Toggles.Fly:OnChanged(fn562)
Toggles.WalkSpeedEnabled:OnChanged(fn465)
connection = s__4.Stepped:Connect(onStepped)
connection2 = UserInputService.JumpRequest:Connect(fns.onJumpRequest)
lC = Workspace.CurrentCamera
connection3 = s__4.RenderStepped:Connect(onRenderStepped)
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(worker5)
task.spawn(antiGameplayPauseLoop)
s__16 = s__22.Settings:AddLeftGroupbox("Menu")
s__16:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
lx = tick()
lw = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local rO = v
        pcall(function()
            rO:Disable()
        end)
    end
end)
mF = fn731
connection4 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
s__16:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
s__16:AddButton({ Text = "Unload", Func = fns.onUnload })
s__7:SetLibrary(Library)
s__7:SetFolder("OuroborosHub")
s__7:SaveDefault("Evil Hello Kitty")
s__7:ApplyToTab(s__22.Settings)
s__7:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/SaveYourCat")
ng = SaveManager:BuildConfigSection(s__22.Settings)
lL = fn699
mQ = fns.fn267
mA = fns.fn26
lJ = function(hD)
    local so
    so = nil
    local sp = type(hD) ~= "table"
    local st = if sp then 1 else 0
    local sr = 1127 * st + 3883 * (1 - st)
    local ss = 1060 * st + 3414 * (1 - st)
    if not ((sr * 410 + ss * 535 + sr * ss) % 16777213 == 2223790) then
        sp = type(hD.idx) ~= "string"
    end
    if not sp then
        sp = type(hD.type) ~= "string"
    end
    if not sp then
        sp = SaveManager.Ignore[hD.idx]
    end
    if sp then
        return false
    end
    so = lL(hD.type, hD.idx)
    if not so then
        return false
    end
    local sp_1 = pcall(function()
        if hD.type == "Input" then
            if type(hD.text) ~= "string" then
                return
            end
            so:SetValue(hD.text)
        elseif hD.type == "ColorPicker" then
            so:SetValueRGB(Color3.fromHex(hD.value), hD.transparency)
        elseif hD.type == "KeyPicker" then
            so:SetValue({ hD.key, hD.mode, hD.modifiers })
            if hD.mode == "Toggle" and hD.toggled ~= nil then
                so.Toggled = hD.toggled
                so:Update()
            end
        else
            so:SetValue(hD.value)
        end
    end)
    return sp_1
end
ng:AddDivider()
ng:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
ng:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
ng:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(antiAfkLoop)
mr = fns.fn222
lP.__ouroboros_cleanup = mr
Library:OnUnload(fns.fn219)
