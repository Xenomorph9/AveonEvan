local fns = {}
local DL_2, DL_12, DL_14, DL_35, DL_37, DL_45, DL_46, DL_49, DL_55, DL_57, DL_58, DL_61, DL_67
DL_2 = nil
local sY
local UserInputService
local UnlockSlot
local sF
local connection2
local sm
local s3
local UpgradeSprinkler
local sL
local ss
local connection5
local Players
local r9
local SaveManager
local rR
local sy
local tf
local Settings
local sf
local connection4
local Options
local rE
local connection9
local s2
local tl
local r2
local Toggles
local rK
local sr
local VirtualUser
local connection
local connection7
local sx
local te
local rx
local se
local rW
local sD
local tk
local rD
local r1
local LocalPlayer
local rJ
local Label
local s7
local Workspace
local rP
local sw
local rw
local sd
local td
local sV
local ToggleWave
local tj
local sj
local rC
local s0
local sI
local rI
local Gameplay
local s6
local __ouroboros_gen
local sO
local rO
local sv
local tc
local rv
local sU
local rU
local sB
local ti
local ToolEquip
local PlantSeed
local s_
local r_
local sH
local to
local so
local HttpService
local LootDrop
local r5
local sN
local rN
local su
local ru
local sb
local sT
local rT
local sA
local th
local rA
local connection3
local sZ
local rZ
local sG
local Calculation
local rG
local sn
local s4
local r4
local connection8
local rM
local rt
local Library
local sS
local connection6
local rz
function fns.fn12()
    local AQ_1
    local AP_1
    if identifyexecutor then
        AQ_1, AP_1 = identifyexecutor()
        local AR = AQ_1 ~= ""
        local AS = type(AQ_1) == "string" and AR
        if AS then
            local AR_1 = type(AP_1) == "string" and AP_1 ~= "" and AQ_1 .. " " .. AP_1
            s2 = AR_1 or AQ_1
        end
    end
end
function fns.fn43()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    rE = tick()
end
function fns.fn58(aK, aL)
    local uC = rJ[ru[aK]] or 0
    local uC_1 = rJ[ru[aL]] or 0
    if uC ~= uC_1 then
        return uC < uC_1
    end
    return aK < aL
end
function fns.onRenderStepped(jS)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local Bw_1 = s_()
        if Bw_1 then
            Bw_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local Bw_3 = sB()
        local Bx = s_()
        rA = Workspace.CurrentCamera or rA
        if Bw_3 and Bx and rA then
            Bx.PlatformStand = true
            local Bx_1 = Vector3.zero
            local BD = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if BD == 1 then
                Bx_1 = Bx_1 + rA.CFrame.LookVector
            end
            local BD_1 = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if BD_1 == 1 then
                Bx_1 = Bx_1 - rA.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                Bx_1 = Bx_1 - rA.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                Bx_1 = Bx_1 + rA.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                Bx_1 = Bx_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                Bx_1 = Bx_1 - Vector3.new(0, 1, 0)
            end
            Bw_3.Velocity = Vector3.zero
            if Bx_1.Magnitude > 0 then
                Bw_3.CFrame = Bw_3.CFrame + Bx_1.Unit * Options.FlySpeed.Value * jS
            end
        end
    end
end
function fns.onCopyEthereumAddress()
    sr(sL, "Copied Ethereum address")
end
function fns.onCopyVenmoLink()
    sr(ss, "Copied Venmo link")
end
function fns.antiAfkLoop()
    while true do
        if not Library.Unloaded and rw.__ouroboros_gen == __ouroboros_gen then
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local Dv_1 = tick() - rI
                local Dw = tick() - rE
                if Dv_1 >= 300 and Dw >= 60 then
                    pcall(th)
                else
                    if Dv_1 < 300 and Dw >= 300 then
                        pcall(th)
                    end
                end
            end
            continue
        end
        break
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local Bj_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if Bj_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn135(cL)
    if cL == nil then
        return false
    end
    if cL == LocalPlayer or cL == LocalPlayer.Name then
        return true
    elseif typeof(cL) == "Instance" then
        return cL == LocalPlayer
    else
        return tostring(cL) == LocalPlayer.Name
    end
end
function fns.fn180()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local uU = leaderstats and leaderstats:FindFirstChild("Money")
    if not uU then
        return nil
    end
    local Value = uU.Value
    if type(Value) == "number" then
        return Value
    end
    return sU(Value)
end
function fns.worker3()
    while not Library.Unloaded and rw.__ouroboros_gen == __ouroboros_gen do
        task.wait(0.35)
        sG()
        rz()
        rG()
        so()
        rO()
        tl()
        rT()
        td()
        sI()
    end
end
function fns.onOnClientEvent(...)
    local BE = ...
    if type(BE) ~= "table" then
        return
    end
    local BF = BE[1]
    if BF == "InitPlayerData" then
        local BG_1 = Players:FindFirstChild(tostring(BE[2]))
        local BH = sm(BG_1) or tostring(BE[2]) == LocalPlayer.Name
        local BG_2 = BH and type(BE[3]) == "table"
        if BG_2 then
            ti = BE[3]
        end
        return
    end
    if BF == "RollSync" then
        rW(BE[2])
        return
    end
    if BF == "GearShopSync" then
        if type(BE[2]) == "table" then
            s7 = BE[2]
            sH = os.clock()
        end
        return
    end
    if BF == "SlotUnlocked" then
        local BF_1 = rx()
        if BF_1 then
            s4(BF_1, BE[2], BE[3], nil)
            if BF_1.Currency and BE[5] ~= nil then
                BF_1.Currency.Money = BE[5]
            end
        end
        return
    end
    if BE.type == "RollResult" or BE.type == "RollSeedBought" then
        rW(BE)
    end
end
function fns.fn229()
    if not rK("AutoCollectFlags") then
        return
    end
    for k, v in sf do
        local zW = sb[k] or 0
        if os.clock() - zW >= 0.8 then
            sb[k] = os.clock()
            tk(LootDrop, k)
            local zW_1 = type(v) == "table" and v.center
            if typeof(zW_1) == "Vector3" then
                local Character = LocalPlayer.Character
                local zY = Character and Character:FindFirstChild("HumanoidRootPart")
                if zY then
                    local zY_1 = zY.Position - zW_1
                    if zY_1.X * zY_1.X + zY_1.Z * zY_1.Z > 64 then
                        zY.CFrame = CFrame.new(zW_1 + Vector3.new(0, 3, 0))
                    end
                end
            end
        end
    end
end
function fns.fn269()
    local Character = LocalPlayer.Character
    local A3 = Character and Character:FindFirstChildOfClass("Humanoid")
    return A3
end
function fns.onOnClientEvent2(ki)
    if type(ki) ~= "table" then
        return
    end
    if ki.type == "RollResult" or ki.type == "RollSeedBought" then
        rW(ki)
    else
        local BS_1 = ki.type == "SlotUnlocked" and sm(ki.owner)
        if BS_1 then
            local BS_2 = rx()
            if BS_2 then
                s4(BS_2, ki.plotKey, ki.slotKey, nil)
            end
        else
            local BS_3 = ki.type == "Planted" and sm(ki.owner)
            if BS_3 then
                local BS_4 = rx()
                if BS_4 then
                    s4(BS_4, ki.plotKey, ki.slotKey, ki.plant)
                end
            else
                local BS_5 = ki.type == "PlantRemoved" and sm(ki.owner)
                if BS_5 then
                    local BS_6 = rx()
                    if BS_6 then
                        s4(BS_6, ki.plotKey, ki.slotKey, nil)
                    end
                else
                    local BS_7 = ki.type == "SprinklerAdded" and sm(ki.owner)
                    if BS_7 then
                        local BS_8 = rx()
                        local BT_1 = BS_8 and type(BS_8.Sprinklers) == "table" and ki.key and ki.sprinkler
                        if BT_1 then
                            BS_8.Sprinklers[ki.key] = ki.sprinkler
                        end
                    else
                        local BS_9 = ki.type == "SprinklerUpgraded" and sm(ki.owner)
                        if BS_9 then
                            local BS_10 = rx()
                            local BT_2 = BS_10 and BS_10.Sprinklers
                            local BS_11 = BT_2
                            if BT_2 then
                                BT_2 = BS_11[ki.key]
                            end
                            local BS_12 = BT_2
                            if type(BS_12) == "table" then
                                if ki.level then
                                    BS_12.Level = ki.level
                                end
                                if ki.water then
                                    BS_12.Water = ki.water
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
function fns.fn297(ft, fu, fv)
    local yz = se(fv)
    local yA = type(fv.Ids) == "table" and fv.Ids[1]
    if not yz or not yA then
        return false
    end
    tk(ToolEquip, yz, true)
    tk(PlantSeed, tostring(ft), tostring(fu), yA)
    return true
end
function fns.fn305(cc)
    return ru[cc] or "Common"
end
function fns.fn358()
    if not rK("AutoUnlockPlots") then
        return
    end
    if DL_2() then
        return
    end
    if os.clock() - r1 < 0.45 then
        return
    end
    local y3 = rx()
    local y4 = not y3 or type(y3.Plots) ~= "table"
    if y4 then
        return
    end
    local y4_1 = r4()
    local y5
    local y6
    local y7
    for k, v in y3.Plots do
        if type(v) == "table" then
            local zj = 1
            local zh = rN
            while zj <= zh do
                local zk = zj
                local y3_1 = tostring(zk)
                if v[y3_1] == nil then
                    local y8 = sN(k, zk)
                    local y9 = type(y8) == "number" and y4_1 >= y8
                    if y9 then
                        if y7 == nil or y8 < y7 then
                            y6 = tostring(k)
                            y5 = y3_1
                            y7 = y8
                        end
                    end
                end
                zj += 1
            end
        end
    end
    if y6 then
        r1 = os.clock()
        tk(UnlockSlot, y6, y5)
    end
end
function fns.fn378(bj)
    if Library.Unloaded then
        return false
    end
    local uJ = Toggles[bj]
    return uJ ~= nil and uJ.Value == true
end
function fns.fn406(fo)
    if type(fo) ~= "table" then
        return nil
    end
    local ym = type(fo.StackKey) == "string" and fo.StackKey ~= ""
    if ym then
        return fo.StackKey
    end
    local Tool = fo.Tool
    if Tool then
        local attr = Tool:GetAttribute("StackKey")
        local ym_2 = attr ~= ""
        local yo = type(attr) == "string" and ym_2
        if yo then
            return attr
        end
        return nil
    end
    return nil
end
function fns.fn417()
    sd(Toggles.AntiGameplayPause.Value)
end
function fns.fn419()
    local wp_1
    local wn = r2("WaveManager")
    local wo = type(wn) == "table" and type(wn.IsLocalGameActive) == "function"
    local wo_1, wo_3
    if wo then
        wo_1, wp_1 = pcall(wn.IsLocalGameActive)
        if wo_1 then
            return wp_1 == true
        end
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local wo_2 = PlayerGui and PlayerGui:FindFirstChild("MainGui")
        local wn_2 = wo_2
        if wo_3 then
            wo_2 = wn_2:FindFirstChild("TopFrame")
        end
        local wn_3 = wo_2
        if wo_3 then
            wo_2 = wn_3:FindFirstChild("Start")
        end
        local wn_4 = wo_2
        if wo_3 then
            wo_2 = wn_4:FindFirstChild("TextLabel")
        end
        local wn_5 = wo_2
        if wo_3 then
            wn_5:IsA("TextLabel")
        end
        if wo_3 then
            return wn_5.Text == "Stop"
        end
        return s0
    end
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    wo_3 = PlayerGui and PlayerGui:FindFirstChild("MainGui")
    local wn_7 = wo_3
    if wo_3 then
        wo_3 = wn_7:FindFirstChild("TopFrame")
    end
    local wn_8 = wo_3
    if wo_3 then
        wo_3 = wn_8:FindFirstChild("Start")
    end
    local wn_9 = wo_3
    if wo_3 then
        wo_3 = wn_9:FindFirstChild("TextLabel")
    end
    local wn_10 = wo_3
    if wo_3 then
        wo_3 = wn_10:IsA("TextLabel")
    end
    if wo_3 then
        return wn_10.Text == "Stop"
    end
    return s0
end
function fns.fn428()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
function fns.worker2()
    tk(Gameplay, { "RequestGearShopSync" })
end
function fns.fn460(cx, cy)
    local vB = sy("BuyRarities")
    local vC = sy("BuySeeds")
    local vD = (rM("BuyRarities"))
    if not vD then
        local vE = cy or tc(cx)
        vD = vB[vE] == true
    end
    local vB_1 = vD
    local vD_1 = rM("BuySeeds") or vC[cx] == true
    return vB_1 and vD_1
end
function fns.fn472()
    local zL_1
    if DL_2() then
        return
    end
    local zP = if not rK("AutoUpgradeSprinkler") then 1 else 0
    if zP == 1 then
        return
    end
    if os.clock() - r9 < 0.6 then
        return
    end
    local zE = rx()
    if not zE then
        return
    end
    local zF = type(zE.Sprinklers) == "table" and zE.Sprinklers
    local zG = zF or {}
    local zF_1 = r4()
    local SprinklerPrice = Settings.SprinklerPrice
    if type(SprinklerPrice) ~= "table" then
        return
    end
    local zH
    local zI
    for k, v in rU do
        local zJ = zG[v]
        local zK = type(zJ) == "table" and SprinklerPrice[v]
        local zK_2
        if zK then
            local zK_1 = tonumber(zJ.Level) or 1
            zK_2, zL_1 = pcall(Calculation.SprinklerUpgradeCost, v, zK_1)
            local zJ_2 = zK_2 and type(zL_1) == "number" and zF_1 >= zL_1
            if zJ_2 then
                if zH == nil or zL_1 < zH then
                    zI = v
                    zH = zL_1
                end
            end
        end
    end
    if zI then
        r9 = os.clock()
        tk(UpgradeSprinkler, zI)
    end
end
function fns.fn476()
    sr(sx, "Copied Discord invite to clipboard")
end
function fns.fn481(cf)
    local vj = rJ[tc(cf)] or 0
    return vj
end
function fns.fn501()
    local AF = DL_2()
    s3 = tj()
    local AG = rK("AutoStopWave") and AF
    if AG then
        local AG_1 = Options.StopWave and tonumber(Options.StopWave.Value)
        local AH = AG_1 or 0
        local AH_1 = AH > 0 and s3 >= AH and os.clock() - sO >= 2
        if AH_1 then
            sO = os.clock()
            tk(ToggleWave)
            return
        end
    end
    local AG_3 = rK("AutoStart") and not AF and os.clock() - sO >= 2
    if AG_3 then
        sO = os.clock()
        tk(ToggleWave)
    end
end
function fns.fn529()
    if not Toggles.WalkSpeedEnabled.Value then
        local Bh = s_()
        if Bh then
            Bh.WalkSpeed = 16
        end
    end
end
function fns.onInputBegan()
    rI = tick()
end
function fns.onCopySolanaAddress()
    sr(sA, "Copied Solana address")
end
function fns.fn580(ee)
    local wZ = ee
    local w_
    if not wZ then
        wZ = -1
    end
    local w0 = wZ
    for k, v in sV() do
        local wZ_1 = tonumber(v.Count) or 0
        local Ids = v.Ids
        local w2 = wZ_1 > 0 and type(Ids) == "table" and Ids[1]
        if w2 then
            local wZ_3 = sY(v.SeedName)
            if wZ_3 > w0 then
                w_ = v
                w0 = wZ_3
            end
        end
    end
    return w_
end
function fns.fn721(fE, fF, fG, fH)
    if type(fE.Plots) ~= "table" then
        return
    end
    local yH = tostring(fF)
    local yI = tostring(fG)
    if fE.Plots[yH] == nil then
        fE.Plots[yH] = {}
    end
    local yJ = fE.Plots[yH][yI]
    if type(yJ) ~= "table" then
        yJ = {}
        fE.Plots[yH][yI] = yJ
    end
    yJ.Plant = fH
end
function fns.fn723()
    pcall(function()
        connection:Disconnect()
        connection2:Disconnect()
        connection3:Disconnect()
        connection4:Disconnect()
        connection5:Disconnect()
        connection6:Disconnect()
        connection7:Disconnect()
        connection8:Disconnect()
        connection9:Disconnect()
    end)
    sd(false)
    local DG = s_()
    if DG then
        DG.PlatformStand = false
        DG.WalkSpeed = 16
    end
end
function fns.fn724()
    if not rK("AutoBuyRoll") then
        return
    end
    to()
    local x2 = r4()
    for k, v in te do
        local x3 = type(v) == "table" and rt(v.NameId, v.Rarity)
        if x3 then
            local x3_1 = tonumber(v.Cost) or 0
            if x3_1 <= 0 or x2 >= x3_1 then
                tk(Gameplay, { "BuyRoll", k })
                if x3_1 > 0 then
                    x2 -= x3_1
                end
                te[k] = nil
            elseif rK("AutoSkipUnaffordable") then
                te[k] = nil
            end
        end
    end
end
function fns.fn725(ex)
    local xq = {}
    if type(ex.Plots) ~= "table" then
        return xq
    end
    for k, v in ex.Plots do
        if type(v) == "table" then
            for k2, v in v do
                local xr = type(v) == "table" and v.Plant == nil
                if xr then
                    xq[#xq + 1] = { ring = tostring(k), slot = tostring(k2) }
                end
            end
        end
    end
    table.sort(xq, function(eE, eF)
        if eE.ring ~= eF.ring then
            return tonumber(eE.ring) < tonumber(eF.ring)
        end
        return tonumber(eE.slot) < tonumber(eF.slot)
    end)
    return xq
end
function fns.fn749()
    local vb = rx()
    local vc = vb and type(vb.Currency) == "table"
    if vc then
        local vc_1 = tonumber(vb.Currency.Money)
        if vc_1 then
            return vc_1
        end
        local vb_1 = sD() or 0
        return vb_1
    end
    local vb_2 = sD() or 0
    return vb_2
end
function fns.onCopyBitcoinAddress()
    sr(sS, "Copied Bitcoin address")
end
function fns.fn778(bs)
    local uQ = bs or ""
    local uR = string.gsub(tostring(uQ), "[^%d]", "")
    return tonumber(uR)
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded and rw.__ouroboros_gen == __ouroboros_gen do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            sd(true)
        end
    end
end
function fns.fn823(fj, fk)
    local yg = Settings.PlotPrice and Settings.PlotPrice[tostring(fj)]
    if not yg then
        return nil
    end
    return math.floor(yg.Start * yg.Multiply ^ (fk - 1) + 0.5)
end
function fns.fn824()
    if not rK("AutoRoll") then
        return
    end
    if sw then
        if os.clock() - sT < 8 then
            return
        end
        sw = false
    end
    local yc = tonumber(Settings.Roll_Speed) or 3
    local yd = yc
    if LocalPlayer:GetAttribute("RollSpeedPass") then
        yd = yd / (Settings.Shop and Settings.Shop.RollSpeedMultiplier or 2)
    end
    if os.clock() - sT < yd then
        return
    end
    sT = os.clock()
    sw = true
    tk(Gameplay, { "Roll" })
end
function fns.fn835()
    local Character = LocalPlayer.Character
    local A6 = Character and Character:FindFirstChild("HumanoidRootPart")
    return A6
end
function fns.fn837()
    local Game = Workspace:FindFirstChild("Game")
    local vf = Game and Game:FindFirstChild("PlayerPlots")
    if not vf then
        return nil
    end
    return vf:FindFirstChild(tostring(LocalPlayer:GetAttribute("Plot")))
end
function fns.fn839()
    local DE = rw.__ouroboros_gen or 0
    rw.__ouroboros_gen = DE + 1
    pcall(function()
        connection:Disconnect()
        connection2:Disconnect()
        connection3:Disconnect()
        connection4:Disconnect()
        connection5:Disconnect()
        connection6:Disconnect()
        connection7:Disconnect()
        connection8:Disconnect()
        connection9:Disconnect()
        sd(false)
        local DC = s_()
        if DC then
            DC.PlatformStand = false
            DC.WalkSpeed = 16
        end
    end)
    pcall(function()
        Library:Unload()
    end)
    rw.__ouroboros_cleanup = nil
end
function fns.fn846(bC)
    local uX_1
    local uW_1
    if getrenv then
        uW_1, uX_1 = pcall(getrenv)
        local uY = uW_1 and type(uX_1) == "table"
        if uY then
            local _G2 = uX_1._G
            local uX_2 = type(_G2) == "table" and _G2[bC] ~= nil
            if uX_2 then
                return _G2[bC]
            end
            return rawget(_G, bC)
        end
        return rawget(_G, bC)
    end
    return rawget(_G, bC)
end
function fns.fn850()
    if not Toggles.Fly.Value then
        local Bf = s_()
        if Bf then
            Bf.PlatformStand = false
        end
    end
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn864(cP)
    te = {}
    if type(cP) ~= "table" then
        return
    end
    for i, v in ipairs(cP) do
        local vL = type(v) == "table" and v.NameId
        if vL then
            local NameId = v.NameId
            local vM = tonumber(v.Cost) or 0
            local vN = v.Rarity or tc(v.NameId)
            te[i] = { NameId = NameId, Cost = vM, Rarity = vN }
        end
    end
end
function fns.worker()
    local AX_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local AW = math.floor(os.clock() - rR)
        if AW < 60 then
            AX_1 = AW .. "s"
        elseif AW < 3600 then
            AX_1 = string.format("%dm %ds", AW // 60, AW % 60)
        else
            AX_1 = string.format("%dh %dm", AW // 3600, AW % 3600 // 60)
        end
        Label:SetText(rD("Session time", AX_1, s6))
    end
end
function fns.onCopyPayPalLink()
    sr(sv, "Copied PayPal link")
end
function fns.onExportConfigToClipboard()
    local Db_1
    local Da_1
    Da_1, Db_1 = pcall(HttpService.JSONEncode, HttpService, tf())
    if not Da_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local Da_2 = setclipboard or toclipboard
    local Da_3 = type(Da_2) ~= "function" or not pcall(Da_2, Db_1)
    if Da_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn1009(aa, ab, ac)
    return string.format("<b>%s</b> %s %s", aa, rP("-", "#5a6070"), rP(ab, ac))
end
function fns.fn1028(eH)
    local xG = {}
    if type(eH.Plots) ~= "table" then
        return xG
    end
    for k, v in eH.Plots do
        if type(v) == "table" then
            for k2, v in v do
                local xH = type(v) == "table" and v.Plant
                local xH_1 = type(xH) == "table" and xH.NameId and not xH._pending
                if xH_1 then
                    xG[#xG + 1] = { ring = tostring(k), slot = tostring(k2), NameId = xH.NameId, rank = sY(xH.NameId) }
                end
            end
        end
    end
    table.sort(xG, function(eR, eS)
        if eR.rank ~= eS.rank then
            return eR.rank < eS.rank
        end
        return eR.ring < eS.ring
    end)
    return xG
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local Br_1 = s_()
        if Br_1 then
            Br_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn1048()
    local vY = rC()
    local vZ = vY and vY:FindFirstChild("RollSlots")
    if not vZ then
        return
    end
    for i, child in vZ:GetChildren() do
        local vY_2 = tonumber(child.Name)
        if vY_2 then
            local vZ_1 = nil
            for i, descendant in child:GetDescendants() do
                local v__1 = descendant:IsA("ProximityPrompt") and string.find(descendant.ActionText, "Buy", 1, true)
                if v__1 then
                    vZ_1 = descendant
                    break
                end
            end
            if vZ_1 then
                local v__2 = vZ_1.ObjectText or ""
                local v0 = tostring(v__2)
                local v__3 = string.gsub(v0, "%s*Seed%s*$", "")
                if v__3 == "" then
                    v__3 = te[vY_2] and te[vY_2].NameId
                end
                if v__3 and v__3 ~= "" then
                    local v0_3 = sU(vZ_1.ActionText) or 0
                    te[vY_2] = { NameId = v__3, Cost = v0_3, Rarity = tc(v__3) }
                end
            end
        end
    end
end
function fns.fn1083(ct)
    for k in sy(ct) do
        return false
    end
    return true
end
function fns.fn1090(ih)
    local DiscordGroup = ih:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = r5 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = r5 })
end
function fns.fn1095()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local wi = PlayerGui and PlayerGui:FindFirstChild("MainGui")
    local wh_1 = wi
    if wi then
        wi = wh_1:FindFirstChild("WaveFrame")
    end
    local wh_2 = wi
    if wi then
        wi = wh_2:FindFirstChild("WaveTextLabel")
    end
    local wh_3 = wi
    if wi then
        wi = wh_3:IsA("TextLabel")
    end
    if wi then
        local wi_1 = tonumber(string.match(wh_3.Text, "(%d+)"))
        if wi_1 then
            return wi_1
        end
        return s3
    end
    return s3
end
function fns.onCopyUSDTAddress()
    sr(sF, "Copied USDT address")
end
function fns.onOnClientEvent3(kF)
    if type(kF) ~= "table" then
        return
    end
    if kF.action == "Spawn" and kF.dropId then
        local lower = string.lower
        local BZ = kF.name or ""
        local B_ = lower(tostring(BZ))
        if string.find(B_, "flag", 1, true) then
            sf[kF.dropId] = kF
        end
    else
        if kF.action == "Collected" and kF.dropId then
            sf[kF.dropId] = nil
            sb[kF.dropId] = nil
        end
    end
end
function fns.onInputChanged(k8)
    local UserInputType = k8.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        rI = tick()
    end
end
function fns.fn1192(dc)
    if type(dc) ~= "table" then
        return
    end
    local wf = dc.owner ~= nil and not sm(dc.owner)
    if wf then
        return
    end
    if dc.type == "RollResult" or dc.seeds then
        rZ(dc.seeds)
        sw = false
    else
        if dc.type == "RollSeedBought" and dc.slotIndex then
            te[dc.slotIndex] = nil
        end
    end
end
function fns.fn1203()
    local CO = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local CP = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if CP then
                local CP_1 = rv(k, v)
                if CP_1 then
                    CO[#CO + 1] = CP_1
                end
            end
        end
    end
    table.sort(CO, function(lC, lD)
        if lC.type ~= lD.type then
            return lC.type < lD.type
        end
        return lC.idx < lD.idx
    end)
    return { objects = CO }
end
function fns.fn1211(ep)
    local xa = 0
    if type(ep.Plots) ~= "table" then
        return 0
    end
    for k, v in ep.Plots do
        if type(v) == "table" then
            for k, v in v do
                local xb = type(v) == "table" and v.Plant ~= nil
                if xb then
                    xa += 1
                end
            end
        end
    end
    return xa
end
function fns.onOnClientEvent4(kM)
    if type(kM) ~= "table" then
        return
    end
    if kM.type == "GameStarted" then
        local B7_1 = (sm(kM.owner))
        local Ce = if B7_1 then 1 else 0
        local Cc = 3455 * Ce + 3882 * (1 - Ce)
        local Cd = 3989 * Ce + 2818 * (1 - Ce)
        if not ((Cc * 3133 + Cd * 528 + Cc * Cd) % 16777213 == 9935489) then
            B7_1 = kM.owner == nil
        end
        if B7_1 then
            s0 = true
            s3 = kM.wave or 1
        end
    elseif kM.type == "WaveStarted" then
        local B7_3 = sm(kM.owner) or kM.owner == nil
        if B7_3 then
            s0 = true
            s3 = kM.wave or s3 + 1
        end
    elseif kM.type == "GameStopped" then
        local B7_5 = sm(kM.owner) or kM.owner == nil
        if B7_5 then
            s0 = false
        end
    end
end
function fns.fn1225(eU)
    local xY_1
    local xX = eU.Upgrades and eU.Upgrades.Unit_Limit or 1
    local xX_1
    xX_1, xY_1 = pcall(Calculation.UpgradeStatValue, "Unit_Limit", xX)
    local xW_2 = xX_1 and type(xY_1) == "number"
    if xW_2 then
        return xY_1
    end
    return 5
end
function fns.fn1229(Q, R)
    if setclipboard then
        setclipboard(Q)
    elseif toclipboard then
        toclipboard(Q)
    end
    Library:Notify(R)
end
function fns.fn1235()
    local u_ = r2("Players")
    local u__8, u__9
    if type(u_) == "table" then
        local u__1 = u_[LocalPlayer] or u_[LocalPlayer.Name]
        local u0_2 = type(u__1) == "table" and type(u__1.Plots) == "table"
        if u0_2 then
            ti = u__1
            return u__1
        end
        local u__2 = type(ti) == "table" and type(ti.Plots) == "table"
        if u__2 then
            return ti
        end
        if u__8 then
            sn = true
            local u__4 = filtergc("table", { Keys = { "Plots", "Upgrades", "Currency" } }, false)
            local u0_3 = sD()
            if type(u__9) == "table" then
                for k, v in u__4 do
                    local u__5 = type(v) == "table" and type(v.Plots) == "table" and type(v.Currency) == "table"
                    if u__5 then
                        if u0_3 == nil or v.Currency.Money == u0_3 then
                            ti = v
                            return v
                        end
                    end
                end
            end
        end
        return ti
    end
    local u__7 = type(ti) == "table" and type(ti.Plots) == "table"
    if u__7 then
        return ti
    end
    u__8 = not sn and type(filtergc) == "function"
    if u__8 then
        sn = true
        u__9 = filtergc("table", { Keys = { "Plots", "Upgrades", "Currency" } }, false)
        local u0_4 = sD()
        if type(u__9) == "table" then
            for k, v in u__9 do
                local u__10 = type(v) == "table" and type(v.Plots) == "table" and type(v.Currency) == "table"
                if u__10 then
                    if u0_4 == nil or v.Currency.Money == u0_4 then
                        ti = v
                        return v
                    end
                end
            end
        end
    end
    return ti
end
function fns.fn1238(lo, lp)
    local Type = lp.Type
    if Type == "Toggle" then
        return { idx = lo, type = "Toggle", value = lp.Value == true }
    elseif Type == "Slider" then
        return { idx = lo, type = "Slider", value = tostring(lp.Value) }
    elseif Type == "Dropdown" then
        return { idx = lo, type = "Dropdown", multi = lp.Multi == true, value = lp.Value }
    elseif Type == "Input" then
        local CF = lp.Value or ""
        return { idx = lo, type = "Input", text = tostring(CF) }
    elseif Type == "ColorPicker" then
        return { idx = lo, type = "ColorPicker", value = lp.Value:ToHex(), transparency = lp.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = lo,
            type = "KeyPicker",
            mode = lp.Mode,
            key = lp.Value,
            modifiers = lp.Modifiers,
            toggled = lp.Toggled
        }
    else
        return nil
    end
end
function fns.fn1248(lg, lh)
    local Cy_1 = (lg == "Toggle" and Toggles or Options)[lh]
    local Cx_2 = type(Cy_1) == "table" and Cy_1.Type == lg
    local Cx_3 = Cx_2 and Cy_1
    local CD = if Cx_3 then 1 else 0
    local CB = 1317 * CD + 148 * (1 - CD)
    local CC = 477 * CD + 2012 * (1 - CD)
    if not ((CB * 2089 + CC * 2103 + CB * CC) % 16777213 == 4382553) then
        Cx_3 = nil
    end
    return Cx_3
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(su)
    elseif toclipboard then
        toclipboard(su)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
function fns.onCopyJoinScript_JobID()
    local AU = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, sj)
    if setclipboard then
        setclipboard(AU)
    elseif toclipboard then
        toclipboard(AU)
    end
    Library:Notify("Copied join script to clipboard")
end
function fns.fn1268(X, Y)
    return string.format('<font color="%s">%s</font>', Y, X)
end
local function onCopyLitecoinAddress()
    sr(sZ, "Copied Litecoin address")
end
local function fn1284(cj)
    local vl = Options[cj]
    local vm = vl and vl.Value
    local vl_1 = {}
    if type(vm) ~= "table" then
        local vm_1 = vm ~= ""
        local vo = type(vm) == "string" and vm_1
        if vo then
            vl_1[vm] = true
        end
        return vl_1
    end
    for k, v in vm do
        local vm_2 = v == true and type(k) == "string"
        if vm_2 then
            vl_1[k] = true
        elseif type(v) == "string" then
            vl_1[v] = true
        end
    end
    return vl_1
end
local function onImportConfigFromClipboardTex()
    local Dg_1
    local De = Options.SaveManager_ImportSource.Value or ""
    local De_1
    local Df = tostring(De):match("^%s*(.-)%s*$")
    if Df == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    De_1, Dg_1 = pcall(HttpService.JSONDecode, HttpService, Df)
    local Df_1 = not De_1 or type(Dg_1) ~= "table" or type(Dg_1.objects) ~= "table"
    if Df_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local De_2 = 0
    for i, v in ipairs(Dg_1.objects) do
        if r_(v) then
            De_2 += 1
        end
    end
    if De_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local Dg_2 = De_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(De_2, Dg_2), 6)
end
Players = nil
rt = nil
ru = nil
rv = nil
rw = nil
rx = nil
Settings = nil
rz = nil
rA = nil
ToolEquip = nil
rC = nil
rD = nil
rE = nil
connection2 = nil
rG = nil
LootDrop = nil
rI = nil
rJ = nil
rK = nil
rM = nil
rN = nil
rO = nil
rP = nil
connection7 = nil
rR = nil
rT = nil
rU = nil
ToggleWave = nil
rW = nil
UnlockSlot = nil
rZ = nil
r_ = nil
r1 = nil
r2 = nil
UpgradeSprinkler = nil
r4 = nil
r5 = nil
connection = nil
r9 = nil
sb = nil
sd = nil
se = nil
local rL, rS, rX, r0, r6, r7, UpgradePlayer, RemovePlant
sf = nil
DL_2 = nil
connection3 = nil
PlantSeed = nil
sj = nil
connection9 = nil
sm = nil
sn = nil
so = nil
Gameplay = nil
Label = nil
sr = nil
ss = nil
su = nil
sv = nil
sw = nil
sx = nil
sy = nil
connection6 = nil
sA = nil
sB = nil
sD = nil
Options = nil
sF = nil
sG = nil
sH = nil
sI = nil
LocalPlayer = nil
Toggles = nil
sL = nil
connection8 = nil
sN = nil
sO = nil
Workspace = nil
SaveManager = nil
sS = nil
sT = nil
sU = nil
sV = nil
connection4 = nil
sY = nil
sZ = nil
s_ = nil
s0 = nil
local sk, st, sC, sQ, CoreGui, GuiService
s2 = nil
s3 = nil
s4 = nil
HttpService = nil
s6 = nil
s7 = nil
VirtualUser = nil
connection5 = nil
Library = nil
tc = nil
td = nil
te = nil
tf = nil
UserInputService = nil
th = nil
ti = nil
tj = nil
tk = nil
tl = nil
Calculation = nil
to = nil
__ouroboros_gen = nil
local tb, tm
tb = nil
tm = nil
Players, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer = nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local DL_20 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
Gameplay, PlantSeed, RemovePlant, UpgradePlayer, UpgradeSprinkler, UnlockSlot, ToggleWave, LootDrop, ToolEquip, Settings, DL_45, Calculation, DL_57, Library, SaveManager, Toggles, Options, sx, su, s6, sZ, sS, sL, sF, sA, sv, ss, DL_37, DL_49, rJ, sr, r5, rP, rD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local DL_52 = "Defend my Ring Farm"
local DL_30 = DL_20:WaitForChild("RemoteEvents")
Gameplay = DL_30:WaitForChild("Gameplay")
PlantSeed = DL_30:WaitForChild("PlantSeed")
RemovePlant = DL_30:WaitForChild("RemovePlant")
UpgradePlayer = DL_30:WaitForChild("UpgradePlayer")
UpgradeSprinkler = DL_30:WaitForChild("UpgradeSprinkler")
UnlockSlot = DL_30:WaitForChild("UnlockSlot")
ToggleWave = DL_30:WaitForChild("ToggleWave")
local WaveUpdate = DL_30:WaitForChild("WaveUpdate")
local PlotUpdate = DL_30:WaitForChild("PlotUpdate")
LootDrop = DL_30:WaitForChild("LootDrop")
ToolEquip = DL_30:WaitForChild("ToolEquip")
Settings = require(DL_20:WaitForChild("Modules"):WaitForChild("Settings"))
if (((DL_52 or not DL_57) and (not Settings or not Settings) or DL_57 and DL_57 and (not DL_37 or false)) and ((false or Gameplay) and (DL_57 or false) and (not DL_57 or not DL_37 or (not DL_57 or not DL_37))) or ((false or not DL_57 and not DL_37) and (DL_52 and not DL_57 and (not Settings and not Settings)) or (not Gameplay or Gameplay) and (false and DL_57) and ("Defend my Ring Farm" and (false and Settings)))) and not (((DL_52 or not DL_57) and (not Settings or not Settings) or DL_57 and DL_57 and (not DL_37 or false)) and ((false or Gameplay) and (DL_57 or false) and (not DL_57 or not DL_37 or (not DL_57 or not DL_37))) or ((false or not DL_57 and not DL_37) and (DL_52 and not DL_57 and (not Settings and not Settings)) or (not Gameplay or Gameplay) and (false and DL_57) and ("Defend my Ring Farm" and (false and Settings)))) then
    DL_20 = require(DL_45.Modules:WaitForChild("Rarities"))
else
    DL_45 = require(DL_20.Modules:WaitForChild("Rarities"))
end
Calculation = require(DL_20.Modules:WaitForChild("Calculation"))
local DL_34 = require(DL_20.Modules:WaitForChild("GearShopConfig"))
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fns.fn428)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
sx = "https://discord.gg/ehKVq7pf7v"
su = "https://rscripts.net/@Ouroboros"
sr = fns.fn1229
r5 = fns.fn476
rP = fns.fn1268
rD = fns.fn1009
local DL_6 = "#7fd47f"
local DL_18 = "#6ec1ff"
s6 = "#e8a34d"
local DL_28 = "#8b93a3"
sZ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
sS = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
sL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
sF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
sA = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
sv = "https://paypal.me/TheTruckerGOD"
ss = "https://venmo.com/u/miserablemusic"
local DL_64 = "#345d9d"
local DL_3 = "#f7931a"
local DL_15 = "#627eea"
local DL_26 = "#26a17b"
if LootDrop and DL_64 and (rP and not DL_37) and (DL_49 or rP or not LootDrop and DL_49) and (LootDrop and LootDrop and (not DL_37 and not rP) or (not rP and DL_37 or (not DL_37 or DL_64))) or not (LootDrop and DL_64 and (rP and not DL_37) and (DL_49 or rP or not LootDrop and DL_49) and (LootDrop and LootDrop and (not DL_37 and not rP) or (not rP and DL_37 or (not DL_37 or DL_64)))) then
    DL_37 = "#14f195"
    DL_49 = "#0070ba"
    DL_61 = "#008cff"
    DL_12 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Divine", "Celestial", "Exclusive" }
else
    DL_61 = "#14f195"
    DL_37 = "#0070ba"
    DL_12 = "#008cff"
    DL_49 = { "Uncommon", "Mythic", "Epic", "Divine", "Celestial", "Rare", "Legendary", "Common", "Exclusive" }
end
rJ = {}
for k, v in DL_45 do
    DL_30 = v.LayoutOrder
    DL_35 = if DL_30 then 1 else 0
    DL_58 = 3809 * DL_35 + 1163 * (1 - DL_35)
    DL_46 = 1127 * DL_35 + 40 * (1 - DL_35)
    if not ((DL_58 * 588 + DL_46 * 883 + DL_58 * DL_46) % 16777213 == 7527576) then
        DL_30 = 0
    end
    rJ[k] = DL_30
end
DL_30 = {}
ru = {}
DL_45, DL_57 = nil, nil
local DL_69 = 13
repeat
    DL_67 = (DL_69 * 1 + 1) % 2 + 1
    if DL_67 <= 1 then
        DL_67 = { "xdiqcb", "nevjqta", "adxrjfxubv", "fbf", "fnnz", "bdhpsgujchr", "qrd" }
        local F3 = DL_69
        DL_55 = DL_67[F3 % 7 + 1]
        if DL_55:len() <= DL_55:reverse():rep(F3 % 3 + 2):len() then
            DL_45 = DL_20:FindFirstChild("Assets")
        else
            DL_20 = DL_45:FindFirstChild("Assets")
        end
        DL_69 = (DL_69 + 5) % 16
    else
        if DL_69 * 87606449 + 12 + 4 <= DL_69 * 87606449 + 12 + 4 + 1 then
            DL_57 = DL_45
        else
            DL_45 = DL_57
        end
        DL_69 = (DL_69 + 5) % 16
    end
until (DL_69 * 7 + 6) % 16 == 7
if DL_57 then
    DL_57 = DL_45:FindFirstChild("Seeds")
end
DL_45 = DL_57
if DL_45 then
    for i, child in DL_45:GetChildren() do
        if child:IsA("ModuleScript") then
            DL_20, DL_69 = pcall(require, child)
            DL_57 = DL_20 and type(DL_69) == "table" and DL_69.Rarity
            DL_20 = DL_57 or "Common"
            DL_69 = DL_20
            ru[child.Name] = DL_69
            DL_30[#DL_30 + 1] = child.Name
        end
    end
end
DL_20 = 4
repeat
    if DL_20 * 54863565 + 2 + 6 >= DL_20 * 54863565 + 2 + 6 + 2 then
        table.sort(DL_30, fns.fn58)
    else
        table.sort(DL_30, fns.fn58)
    end
    DL_20 = (DL_20 + 5) % 8
until (DL_20 * 3 + 7) % 8 == 2
DL_45, r7, r0, DL_57 = nil, nil, nil, nil
DL_69 = 3
repeat
    DL_20 = (DL_69 * 1 + 1) % 2 + 1
    if DL_20 <= 1 then
        DL_20 = (vector.create((DL_69 * 5 + 3) % 11 + 1, (DL_69 * 11 + 1) % 13 + 1, (DL_69 * 4 + 16) % 17 + 1))
        DL_67 = (vector.create((DL_69 * 2 + 9) % 11 + 1, (DL_69 * 11 + 2) % 13 + 1, (DL_69 * 6 + 16) % 17 + 1))
        DL_55 = (vector.create((DL_69 * 5 + 8) % 11 + 1, (DL_69 * 1 + 12) % 13 + 1, (DL_69 * 5 + 10) % 17 + 1))
        if vector.dot(vector.cross(DL_20, DL_67), DL_55) == vector.dot(vector.cross(DL_67, DL_55), DL_20) then
            DL_45 = {
                "Seed Luck",
                "Seed Rolls",
                "Base Health",
                "Sprinkler Speed",
                "Unit Limit",
                "Farm",
                "Money Multiplier"
            }
            r7 = {
                ["Seed Luck"] = "Seed_Luck",
                ["Seed Rolls"] = "Seed_Rolls",
                ["Base Health"] = "Base_Health",
                ["Sprinkler Speed"] = "Sprinkler_Speed",
                ["Unit Limit"] = "Unit_Limit",
                Farm = "Farm",
                ["Money Multiplier"] = "Money_Multiplier"
            }
            r0 = { Seed_Luck = true, Seed_Rolls = true }
        else
            r0 = {
                "Base Health",
                "Seed Luck",
                "Farm",
                "Sprinkler Speed",
                "Money Multiplier",
                "Unit Limit",
                "Seed Rolls"
            }
            DL_45 = {
                ["Unit Limit"] = "Unit_Limit",
                ["Sprinkler Speed"] = "Sprinkler_Speed",
                ["Base Health"] = "Base_Health",
                ["Seed Rolls"] = "Seed_Rolls",
                Farm = "Farm",
                ["Money Multiplier"] = "Money_Multiplier",
                ["Seed Luck"] = "Seed_Luck"
            }
            r7 = { Seed_Luck = true, Seed_Rolls = true }
        end
        DL_69 = (DL_69 + 5) % 16
    else
        local E3 = bit32.rrotate(bit32.bxor(bit32.lrotate(DL_69, 23), string.byte(tostring(r7))), 12)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(E3, 4004770557), 3551477945), (bit32.bxor(bit32.band(E3, 290196738), 3105608928))), 3551477945), 3105608928) == E3 then
            DL_57 = {}
        else
            r7 = {}
        end
        DL_69 = (DL_69 + 15) % 16
    end
until (DL_69 * 5 + 9) % 16 == 12
DL_20 = {}
if type(DL_34.Pool) == "table" then
    for i, v in ipairs(DL_34.Pool) do
        DL_69 = type(v) == "table" and type(v.NameId) == "string" and not DL_20[v.NameId]
        if DL_69 then
            DL_20[v.NameId] = true
            DL_57[#DL_57 + 1] = v.NameId
        end
    end
end
DL_69 = getgenv and getgenv()
DL_20 = {}
DL_34 = DL_69 or DL_20
rw = DL_34
DL_20 = rw.__ouroboros_gen
DL_35 = if DL_20 then 1 else 0
DL_58 = 3482 * DL_35 + 3176 * (1 - DL_35)
DL_46 = 2304 * DL_35 + 1080 * (1 - DL_35)
if not ((DL_58 * 1774 + DL_46 * 23 + DL_58 * DL_46) % 16777213 == 14252588) then
    DL_20 = 0
end
__ouroboros_gen = nil
rw.__ouroboros_gen = DL_20 + 1
__ouroboros_gen = rw.__ouroboros_gen
DL_34 = rw.__ouroboros_cleanup
if type(DL_34) == "function" then
    DL_20 = 1
    repeat
        if ((DL_20 or not DL_20) and (not DL_20 and DL_20) or (DL_20 or not DL_20 or (not DL_20 or not DL_20))) and (not DL_20 and not DL_20 and (not DL_20 and not DL_20) or (DL_20 or DL_20) and (not DL_20 and DL_20)) or not (((DL_20 or not DL_20) and (not DL_20 and DL_20) or (DL_20 or not DL_20 or (not DL_20 or not DL_20))) and (not DL_20 and not DL_20 and (not DL_20 and not DL_20) or (DL_20 or DL_20) and (not DL_20 and DL_20))) then
            pcall(DL_34)
            rw.__ouroboros_cleanup = nil
        else
            pcall(rw)
            DL_34.__ouroboros_cleanup = nil
        end
        DL_20 = (DL_20 + 1) % 4
    until (DL_20 * 1 + 1) % 4 == 3
end
ti, te, s7, s3, s0, sT, sO, sH, sC, sw, st, sn, sf, sb, r9, r1, rX, rU, rN, DL_69, rK, tk, sU, sD, r2, rx, r4, rC, tc, sY, sy, rM, rt, sm, rZ, to, rW, tj, DL_2, sV, sQ, rL, tb, sk, tm, sG, rz, sN, se, rS, s4, so, rG, rO, tl, td, rT, sI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ti = nil
te = {}
s7 = nil
s3 = 1
s0 = false
sT = 0
sO = 0
sH = 0
sC = {}
sw = false
st = false
sn = false
sf = {}
sb = {}
r9 = 0
r1 = 0
rX = 0
rU = { "1", "2", "3", "4" }
rN = 10
rK = fns.fn378
tk = function(bn, ...)
    local bo
    bo = { ... }
    pcall(function()
        bn:FireServer(table.unpack(bo))
    end)
end
sU = fns.fn778
sD = fns.fn180
r2 = fns.fn846
rx = fns.fn1235
r4 = fns.fn749
rC = fns.fn837
tc = fns.fn305
sY = fns.fn481
sy = fn1284
rM = fns.fn1083
rt = fns.fn460
sm = fns.fn135
rZ = fns.fn864
to = fns.fn1048
rW = fns.fn1192
tj = fns.fn1095
DL_2 = fns.fn419
sV = function()
    local wG
    wG = nil
    local wJ_1
    wG = {}
    local function wH(dR)
        if not dR then
            return
        end
        for i, child in dR:GetChildren() do
            local wr = child:IsA("Tool") and child:GetAttribute("Category") == "Seeds"
            if wr then
                local wr_1 = {}
                local attr2 = child:GetAttribute("Ids")
                local wt = attr2 ~= ""
                local wu = type(attr2) == "string" and wt
                if wu then
                    for k in string.gmatch(attr2, "([^,]+)") do
                        wr_1[#wr_1 + 1] = k
                    end
                end
                local ws_1 = #wG + 1
                local attr = child:GetAttribute("NameId")
                local wu_1 = tonumber(child:GetAttribute("Count")) or #wr_1
                wG[ws_1] = {
                    Tool = child,
                    SeedName = attr,
                    Count = wu_1,
                    Ids = wr_1,
                    StackKey = child:GetAttribute("StackKey")
                }
            end
        end
    end
    wH(LocalPlayer:FindFirstChild("Backpack"))
    wH(LocalPlayer.Character)
    if #wG > 0 then
        return wG
    end
    local wH_1 = r2("InventoryManager")
    local wI = type(wH_1) == "table" and type(wH_1.GetAllStacks) == "function"
    local wI_1
    if wI then
        wI_1, wJ_1 = pcall(wH_1.GetAllStacks)
        local wH_2 = wI_1 and type(wJ_1) == "table"
        if wH_2 then
            for k, v in wJ_1 do
                local wH_3 = type(v) == "table"
                if wH_3 then
                    wH_3 = v.Category == "Seeds" or v.SeedName or v.NameId
                end
                if wH_3 then
                    local wH_4 = #wG + 1
                    local Tool = v.Tool
                    local wJ_2 = v.SeedName or v.NameId
                    local Count = v.Count
                    local Ids = v.Ids
                    local wM = v.StackKey
                    if not wM then
                        local wN = type(k) == "string" and k
                        wM = wN or nil
                    end
                    wG[wH_4] = { Tool = Tool, SeedName = wJ_2, Count = Count, Ids = Ids, StackKey = wM }
                end
            end
        end
    end
    return wG
end
sQ = fns.fn580
rL = fns.fn1211
tb = fns.fn725
sk = fns.fn1028
tm = fns.fn1225
sG = fns.fn724
rz = fns.fn824
sN = fns.fn823
se = fns.fn406
if (sm or not sC) and (sm or not tb) and (not sm and rU or not tb and sC) or not ((sm or not sC) and (sm or not tb) and (not sm and rU or not tb and sC)) then
    rS = fns.fn297
    s4 = fns.fn721
else
    s4 = fns.fn297
    rS = fns.fn721
end
so = function()
    if st then
        return
    end
    if DL_2() then
        return
    end
    local yX = if os.clock() - rX < 0.35 then 1 else 0
    if yX == 1 then
        return
    end
    local yQ = rx()
    if not yQ then
        return
    end
    local yR = tm(yQ)
    local yS = rL(yQ)
    local yX_1 = if rK("AutoReplaceBetter") then 1 else 0
    if yX_1 == 1 then
        for k, v in sk(yQ) do
            local y2 = v
            local yP = sQ(y2.rank)
            if yP then
                st = true
                rX = os.clock()
                task.spawn(function()
                    tk(RemovePlant, y2.ring, y2.slot)
                    task.wait(0.3)
                    if rS(y2.ring, y2.slot, yP) then
                        s4(yQ, y2.ring, y2.slot, { _pending = true, NameId = yP.SeedName })
                    end
                    task.wait(0.25)
                    st = false
                end)
                return
            end
        end
    end
    local yT = rK("AutoPlaceSeed") and yS < yR
    if yT then
        local yR_1 = sQ(-1)
        if not yR_1 then
            return
        end
        local yS_1 = tb(yQ)
        local yT_1 = yS_1[1]
        local yS_2 = yT_1 and rS(yT_1.ring, yT_1.slot, yR_1)
        if yS_2 then
            rX = os.clock()
            s4(yQ, yT_1.ring, yT_1.slot, { _pending = true, NameId = yR_1.SeedName })
        end
    end
end
rG = fns.fn358
rO = function()
    local zv_1
    if not rK("AutoBuyUpgrades") then
        return
    end
    local zo = rx()
    local zp = not zo or type(zo.Upgrades) ~= "table"
    if zp then
        return
    end
    local zp_1 = sy("UpgradeList")
    if rM("UpgradeList") then
        return
    end
    local zq = DL_2()
    local zr = r4()
    local zs
    local zt
    for k, v in r7 do
        local zn, zm
        local zD = v
        if zp_1[k] then
            local zu = not zq or r0[zD]
            local zu_2
            if zu then
                local zu_1 = zo.Upgrades[zD] or 1
                zn = false
                zm = zu_1
                pcall(function()
                    zn = Calculation.IsUpgradeMaxed(zD, zm) == true
                end)
                if not zn then
                    zu_2, zv_1 = pcall(Calculation.PlayerUpgradeCost, zD, zm)
                    local zw = zu_2 and type(zv_1) == "number" and zr >= zv_1
                    if zw then
                        if zs == nil or zv_1 < zs then
                            zt = zD
                            zs = zv_1
                        end
                    end
                end
            end
        end
    end
    if zt then
        tk(UpgradePlayer, zt)
    end
end
tl = fns.fn472
td = fns.fn229
rT = function()
    local Ab, Ac
    local An = if not rK("AutoBuyGears") then 1 else 0
    if An == 1 then
        return
    end
    if os.clock() - sH >= 20 then
        sH = os.clock()
        tk(Gameplay, { "RequestGearShopSync" })
    end
    Ab = sy("GearList")
    if rM("GearList") then
        return
    end
    Ac = r4()
    local Af = s7 and s7.purchased or {}
    local Ad_1 = s7
    if Ad_1 then
        Ad_1 = s7.stock
    end
    local Af_1 = Ad_1
    local function Ad_2(hP, hQ, hR)
        if Ab[hP] ~= true then
            return
        end
        local z5 = type(hR) == "number" and hR <= 0
        if z5 then
            return
        end
        local z5_1 = tonumber(hQ) or 0
        if z5_1 > 0 and Ac < z5_1 then
            return
        end
        local z5_3 = sC[hP] or 0
        if os.clock() - z5_3 < 1.2 then
            return
        end
        sC[hP] = os.clock()
        tk(Gameplay, { "BuyGearStock", hP })
    end
    if type(Af_1) == "table" then
        if Af_1[1] then
            for i, v in ipairs(Af_1) do
                local Ag_1 = type(v) == "table" and v.NameId
                if Ag_1 then
                    local Ah_1 = Af[v.NameId] or 0
                    local max = math.max
                    local Ai_1 = v.MaxStock or 0
                    local Aj_1 = max(0, Ai_1 - Ah_1)
                    if v.Available == false then
                        Aj_1 = 0
                    end
                    Ad_2(v.NameId, v.Price, Aj_1)
                end
            end
            return
        end
        for k, v in Af_1 do
            if type(v) == "table" then
                local Af_2 = v.NameId or k
                local Ah_2 = Af[Af_2] or 0
                local max = math.max
                local Ai_2 = v.MaxStock or 0
                local Aj_2 = max(0, Ai_2 - Ah_2)
                if v.Available == false then
                    Aj_2 = 0
                end
                Ad_2(Af_2, v.Price, Aj_2)
            end
        end
        return
    end
    for k in Ab do
        Ad_2(k, nil, nil)
    end
end
sI = fns.fn501
if (tb and not rS and (tb and not rS) or (not tb or tb) and (not rS or tb)) and ((not tb or not rS or (not rS or rS)) and (not rS and not rS and (tb or not tb))) or ((not tb and rS or tb and not rS) and (tb and not tb and (tb and not tb)) or (not rS or not rS) and (not tb and tb) and (tb and not tb and (not tb and not rS))) or not ((tb and not rS and (tb and not rS) or (not tb or tb) and (not rS or tb)) and ((not tb or not rS or (not rS or rS)) and (not rS and not rS and (tb or not tb))) or ((not tb and rS or tb and not rS) and (tb and not tb and (tb and not tb)) or (not rS or not rS) and (not tb and tb) and (tb and not tb and (not tb and not rS)))) then
    DL_69 = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = sx, Copyable = true }, "|", DL_52 },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0
    })
else
    DL_52 = DL_69:CreateWindow({
        CornerRadius = 0,
        Icon = 78539693571783,
        ShowCustomCursor = false,
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Library, Copyable = true }, "|", sx },
        NotifySide = "Right",
        Title = "Ouroboros"
    })
end
local DL_43 = {
    Info = DL_69:AddTab("Info", "info"),
    Main = DL_69:AddTab("Main", "gamepad-2"),
    Player = DL_69:AddTab("Player", "person-standing"),
    Settings = DL_69:AddTab("Settings", "settings")
}
DL_43.Roll = DL_43.Main:AddSubTab("Roll", "dices")
DL_43.Farm = DL_43.Main:AddSubTab("Farm", "sprout")
DL_43.Shop = DL_43.Main:AddSubTab("Shop", "store")
DL_55 = fns.fn1090
for k, v in DL_43 do
    if v ~= DL_43.Main then
        DL_55(v)
    end
end
s2, DL_67, Label, sj = nil, nil, nil, nil
if sj and (DL_67 or not sj) and (Label or DL_67 or (sj or not sj)) and not (sj and (DL_67 or not sj) and (Label or DL_67 or (sj or not sj))) then
    pcall(fns.fn12)
    rD = s2.Info:AddLeftGroupbox("Account", "circle-user")
    rD:AddLabel(DL_52("User", DL_67.Name, rP), true)
    rD:AddLabel(DL_52("Status", "Keyless", rP), true)
    rD:AddLabel(DL_52("Executor", "Unknown", rP), true)
    DL_43 = s2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    DL_43:AddLabel(Label(LocalPlayer .. " [" .. tostring(game.PlaceId) .. "]", DL_6), true)
    DL_43:AddLabel(DL_52("Place ID", tostring(game.PlaceId), DL_6), true)
    s6 = DL_43:AddLabel(DL_52("Session time", "0s", DL_18), true)
else
    s2 = "Unknown"
    pcall(fns.fn12)
    DL_20 = DL_43.Info:AddLeftGroupbox("Account", "circle-user")
    DL_20:AddLabel(rD("User", LocalPlayer.Name, DL_6), true)
    DL_20:AddLabel(rD("Status", "Keyless", DL_6), true)
    DL_20:AddLabel(rD("Executor", s2, DL_6), true)
    DL_67 = DL_43.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    DL_67:AddLabel(rP(DL_52 .. " [" .. tostring(game.PlaceId) .. "]", DL_18), true)
    DL_67:AddLabel(rD("Place ID", tostring(game.PlaceId), DL_18), true)
    Label = DL_67:AddLabel(rD("Session time", "0s", s6), true)
end
sj = tostring(game.JobId)
DL_34 = #sj > 18
if DL_34 then
    DL_20 = 0
    repeat
        if (DL_20 * 1 + 9) * 21 % 4 == ((DL_20 * 1 + 9) * 21 + 9) % 4 then
            sj = string.sub(DL_34, 1, 18) .. "..."
        else
            DL_34 = string.sub(sj, 1, 18) .. "..."
        end
        DL_20 = (DL_20 + 2) % 4
    until (DL_20 * 3 + 2) % 4 == 0
end
DL_20 = DL_34 or sj
rR, DL_69, connection, connection2, rA, connection3, connection4, connection5, connection6, connection7, rI, rE, connection8, connection9, s_, sB, sd, th, r6, rv, tf, r_, DL_14 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local DL_32 = DL_20
DL_67:AddLabel(rD("Server", DL_32, DL_28), true)
DL_67:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
rR = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = DL_43.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(rP("Included in this hub", DL_28), true)
ScriptsGroup:AddLabel(rP(DL_52, DL_18), true)
local FeaturesGroup = DL_43.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(rP("Auto Farm", DL_18), true)
FeaturesGroup:AddLabel(rP("Auto Shop", s6), true)
FeaturesGroup:AddLabel(rP("Misc Utilities", DL_28), true)
local SocialsGroup = DL_43.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = r5 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = DL_43.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = r5 })
local DonationsGroup = DL_43.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(rP("All donations are optional but appreciated.", s6), true)
DonationsGroup:AddLabel(rP("If you donate you get a special role, just PING after you donate.", DL_6), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(rP("LTC / Litecoin", DL_64), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(rP("BTC / Bitcoin", DL_3), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(rP("ETH / Ethereum", DL_15), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel(rP("USDT", DL_26), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(rP("Solana", DL_37), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(rP("PayPal", DL_49), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(rP("Venmo", DL_61), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(rP("Don't have any of the listed currencies but still wanna donate?", DL_28), true)
DonationsGroup:AddLabel(rP("DM me and we'll work something out.", DL_18), true)
DL_34 = DL_43.Info:AddRightGroupbox("FAQ", "circle-help")
if (DonationsGroup or not DL_14 or (DonationsGroup or not DonationsGroup)) and (DonationsGroup and not DL_14 and (not DL_14 or not DonationsGroup)) and ((not DL_14 and not DonationsGroup or (DL_14 or not DL_14)) and (DonationsGroup or not DL_14 or (not DonationsGroup or DonationsGroup))) and ((not DL_14 and DonationsGroup or (DL_14 or DL_14)) and (DonationsGroup and not DL_14 and (not DL_14 and not DL_14)) or (DL_14 and not DL_14 or not DonationsGroup and DonationsGroup or (not DL_14 or not DL_14) and (not DL_14 or not DL_14))) or not ((DonationsGroup or not DL_14 or (DonationsGroup or not DonationsGroup)) and (DonationsGroup and not DL_14 and (not DL_14 or not DonationsGroup)) and ((not DL_14 and not DonationsGroup or (DL_14 or not DL_14)) and (DonationsGroup or not DL_14 or (not DonationsGroup or DonationsGroup))) and ((not DL_14 and DonationsGroup or (DL_14 or DL_14)) and (DonationsGroup and not DL_14 and (not DL_14 and not DL_14)) or (DL_14 and not DL_14 or not DonationsGroup and DonationsGroup or (not DL_14 or not DL_14) and (not DL_14 or not DL_14)))) then
    DL_34:AddLabel("Where do I get a good config?", true)
    DL_34:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    DL_34:AddLabel("How do I import / export configs?", true)
    DL_34:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    DL_34:AddLabel("How do I report bugs?", true)
    DL_34:AddLabel("Join the Discord and post it in the bugs channel.", true)
    DL_34:AddLabel("How do I make suggestions?", true)
    DL_34:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    DL_34:AddLabel("How do I get help or updates?", true)
    DL_34:AddLabel("Join the Discord, updates and support are posted there first.", true)
    DL_69 = DL_43.Roll:AddLeftGroupbox("Roll", "dices")
else
    DL_43:AddLabel("Where do I get a good config?", true)
    DL_43:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    DL_43:AddLabel("How do I import / export configs?", true)
    DL_43:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    DL_43:AddLabel("How do I report bugs?", true)
    DL_43:AddLabel("Join the Discord and post it in the bugs channel.", true)
    DL_43:AddLabel("How do I make suggestions?", true)
    DL_43:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    DL_43:AddLabel("How do I get help or updates?", true)
    DL_43:AddLabel("Join the Discord, updates and support are posted there first.", true)
    DL_69.Roll:AddLeftGroupbox("Roll", "dices")
end
DL_69:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
DL_69:AddDropdown("BuyRarities", {
    Text = "Rarities",
    Values = DL_12,
    Default = DL_12,
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
DL_69:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip if Unaffordable", Default = true })
DL_69:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
DL_69:AddDropdown("BuySeeds", {
    Text = "Seeds",
    Values = DL_30,
    Default = {},
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
local FarmGroup = DL_43.Farm:AddLeftGroupbox("Farm", "sprout")
FarmGroup:AddToggle("AutoPlaceSeed", { Text = "Auto Place Seed", Default = false })
FarmGroup:AddToggle("AutoReplaceBetter", { Text = "Auto Replace Seed with Better", Default = false })
FarmGroup:AddToggle("AutoUpgradeSprinkler", { Text = "Auto Upgrade Sprinkler", Default = false })
FarmGroup:AddToggle("AutoUnlockPlots", { Text = "Auto Unlock Plots", Default = false })
FarmGroup:AddToggle("AutoCollectFlags", { Text = "Auto Collect Flags", Default = false })
local WavesGroup = DL_43.Farm:AddRightGroupbox("Waves", "swords")
WavesGroup:AddToggle("AutoStart", { Text = "Auto Start", Default = false })
WavesGroup:AddToggle("AutoStopWave", { Text = "Auto Stop at Wave", Default = false })
WavesGroup:AddSlider("StopWave", { Text = "Stop Wave", Default = 10, Min = 1, Max = 500, Rounding = 0 })
local UpgradesGroup = DL_43.Shop:AddLeftGroupbox("Upgrades", "arrow-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeList", {
    Text = "Upgrades",
    Values = DL_45,
    Default = DL_45,
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
local GearsGroup = DL_43.Shop:AddRightGroupbox("Gears", "wrench")
GearsGroup:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
GearsGroup:AddDropdown("GearList", {
    Text = "Gears",
    Values = DL_57,
    Default = DL_57,
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
local MovementGroup = DL_43.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = DL_43.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
s_ = fns.fn269
sB = fns.fn835
sd = function(jk)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not jk)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not jk
        end
    end)
    if not jk then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn417)
Toggles.Fly:OnChanged(fns.fn850)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn529)
connection = RunService.Stepped:Connect(fns.onStepped)
connection2 = UserInputService.JumpRequest:Connect(fns.onJumpRequest)
rA = Workspace.CurrentCamera
connection3 = RunService.RenderStepped:Connect(fns.onRenderStepped)
connection4 = Gameplay.OnClientEvent:Connect(fns.onOnClientEvent)
connection5 = PlotUpdate.OnClientEvent:Connect(fns.onOnClientEvent2)
connection6 = LootDrop.OnClientEvent:Connect(fns.onOnClientEvent3)
connection7 = WaveUpdate.OnClientEvent:Connect(fns.onOnClientEvent4)
DL_55 = DL_43.Settings:AddLeftGroupbox("Menu")
DL_55:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
rI = tick()
rE = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local Co = v
        pcall(function()
            Co:Disable()
        end)
    end
end)
th = fns.fn43
connection8 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection9 = UserInputService.InputChanged:Connect(fns.onInputChanged)
DL_55:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
DL_55:AddButton({ Text = "Unload", Func = fns.onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(DL_43.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/DefendMyRingFarm")
local DL_22 = SaveManager:BuildConfigSection(DL_43.Settings)
r6 = fns.fn1248
rv = fns.fn1238
tf = fns.fn1203
r_ = function(lF)
    local C4
    C4 = nil
    local C5 = type(lF) ~= "table" or type(lF.idx) ~= "string" or type(lF.type) ~= "string" or SaveManager.Ignore[lF.idx]
    if C5 then
        return false
    end
    C4 = r6(lF.type, lF.idx)
    if not C4 then
        return false
    end
    local C5_1 = pcall(function()
        if lF.type == "Input" then
            if type(lF.text) ~= "string" then
                return
            end
            C4:SetValue(lF.text)
        elseif lF.type == "ColorPicker" then
            C4:SetValueRGB(Color3.fromHex(lF.value), lF.transparency)
        elseif lF.type == "KeyPicker" then
            C4:SetValue({ lF.key, lF.mode, lF.modifiers })
            if lF.mode == "Toggle" and lF.toggled ~= nil then
                C4.Toggled = lF.toggled
                C4:Update()
            end
        else
            C4:SetValue(lF.value)
        end
    end)
    return C5_1
end
DL_22:AddDivider()
DL_22:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
DL_22:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
DL_22:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(fns.antiAfkLoop)
DL_14 = fns.fn839
rw.__ouroboros_cleanup = DL_14
Library:OnUnload(fns.fn723)
