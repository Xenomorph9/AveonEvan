--[[
    AveonEvan Hub — scanner-first script hub GUI
    Style: dark purple/pink "vrlzz" look
    Loader sets getgenv().AVEON_CONFIG = { repo = "...", branch = "..." }
]]

local CFG = nil
if getgenv and getgenv().AVEON_CONFIG then
    CFG = getgenv().AVEON_CONFIG
else
    CFG = {}
end
local REPO   = CFG.repo   or "Xenomorph9/AveonEvan"
local BRANCH = CFG.branch or "main"
local RAW    = "https://raw.githubusercontent.com/" .. REPO .. "/" .. BRANCH .. "/"

local Players            = game:GetService("Players")
local HttpService        = game:GetService("HttpService")
local UserInputService   = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local TweenService       = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

------------------------------------------------------------
-- helpers
------------------------------------------------------------

local function enc(path)
    -- encode every byte that is unsafe in a URL path, keep "/"
    return (path:gsub("[^%w%-_%.~/]", function(c)
        return string.format("%%%02X", string.byte(c))
    end))
end

local function fmtSize(n)
    if n >= 1048576 then
        return string.format("%.1f MB", n / 1048576)
    end
    return string.format("%d KB", math.floor(n / 1024 + 0.5))
end

local function fetchRaw(relPath)
    local url = RAW .. enc(relPath) .. "?cb=" .. tostring(os.time())
    return game:HttpGet(url)
end

-- accent palette cycled across cards (like the mockup's Apply buttons)
local BTN_COLORS = {
    { bg = Color3.fromRGB(255, 46, 122),  txt = Color3.fromRGB(255, 255, 255) }, -- pink
    { bg = Color3.fromRGB(146, 90, 255),  txt = Color3.fromRGB(255, 255, 255) }, -- purple
    { bg = Color3.fromRGB(255, 46, 122),  txt = Color3.fromRGB(255, 255, 255) }, -- pink
    { bg = Color3.fromRGB(255, 190, 30),  txt = Color3.fromRGB(40, 25, 5) },    -- yellow
}

local THEME = {
    window   = Color3.fromRGB(12, 8, 18),
    sidebar  = Color3.fromRGB(16, 10, 24),
    panel    = Color3.fromRGB(19, 12, 28),
    card     = Color3.fromRGB(26, 16, 38),
    cardHi   = Color3.fromRGB(36, 22, 52),
    stroke   = Color3.fromRGB(64, 34, 88),
    text     = Color3.fromRGB(242, 236, 252),
    dim      = Color3.fromRGB(152, 140, 175),
    accent   = Color3.fromRGB(255, 46, 122),
    accent2  = Color3.fromRGB(146, 90, 255),
    navActive= Color3.fromRGB(66, 26, 52),
}

------------------------------------------------------------
-- index state
------------------------------------------------------------

local state = {
    index   = nil,      -- decoded games.json .games table
    meta    = nil,      -- games.json meta (generated, count)
    loadErr = nil,
}

local favs = {}
do
    if readfile and writefile and isfile then
        local ok = pcall(function()
            if isfile("aveon_evan_favs.json") then
                favs = HttpService:JSONDecode(readfile("aveon_evan_favs.json"))
            end
        end)
        if not ok or type(favs) ~= "table" then favs = {} end
    end
end

local function favKey(entry) return entry.file end
local function isFav(entry) return favs[favKey(entry)] == true end

local function saveFavs()
    if writefile then
        pcall(function()
            writefile("aveon_evan_favs.json", HttpService:JSONEncode(favs))
        end)
    end
end

------------------------------------------------------------
-- gui root
------------------------------------------------------------

local old = nil
pcall(function()
    if gethui then
        old = gethui():FindFirstChild("AveonEvanHub")
    end
end)
if not old then
    local cg = nil
    pcall(function() cg = game:GetService("CoreGui") end)
    if cg then old = cg:FindFirstChild("AveonEvanHub") end
end
if old then old:Destroy() end

local gui = Instance.new("ScreenGui")
gui.Name = "AveonEvanHub"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

do
    local parent = nil
    local okH, hui = pcall(function() return gethui and gethui() end)
    if okH and hui then
        parent = hui
    else
        local okC, cg = pcall(function() return game:GetService("CoreGui") end)
        if okC and cg then
            parent = cg
        else
            parent = LocalPlayer:WaitForChild("PlayerGui")
        end
    end
    gui.Parent = parent
end

------------------------------------------------------------
-- main window
------------------------------------------------------------

local WIN_W, WIN_H = 780, 520

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.fromOffset(WIN_W, WIN_H)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = THEME.window
main.BorderSizePixel = 0
main.ClipsDescendants = true
main.Visible = true
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 14)
mainCorner.Parent = main

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = THEME.stroke
mainStroke.Thickness = 1
mainStroke.Transparency = 0.25
mainStroke.Parent = main

local scaler = Instance.new("UIScale")
scaler.Parent = main
local function updateScale()
    local vp = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
    local s = math.min(vp.X / 860, vp.Y / 580)
    s = math.clamp(s, 0.62, 1.35)
    scaler.Scale = s
end
updateScale()
pcall(function()
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateScale)
end)

------------------------------------------------------------
-- titlebar
------------------------------------------------------------

local titlebar = Instance.new("Frame")
titlebar.Name = "Titlebar"
titlebar.Size = UDim2.new(1, 0, 0, 46)
titlebar.BackgroundColor3 = THEME.sidebar
titlebar.BorderSizePixel = 0
titlebar.Parent = main

local tbCorner = Instance.new("UICorner")
tbCorner.CornerRadius = UDim.new(0, 14)
tbCorner.Parent = titlebar

do
    local dot = Instance.new("Frame")
    dot.Size = UDim2.fromOffset(8, 8)
    dot.Position = UDim2.new(0, 16, 0.5, 0)
    dot.AnchorPoint = Vector2.new(0, 0.5)
    dot.BackgroundColor3 = THEME.accent
    dot.BorderSizePixel = 0
    dot.Parent = titlebar
    local dc = Instance.new("UICorner")
    dc.CornerRadius = UDim.new(1, 0)
    dc.Parent = dot

    local brand = Instance.new("TextLabel")
    brand.Size = UDim2.new(0, 240, 1, 0)
    brand.Position = UDim2.new(0, 32, 0, 0)
    brand.BackgroundTransparency = 1
    brand.Text = "AVEON EVAN"
    brand.TextColor3 = THEME.text
    brand.Font = Enum.Font.GothamBold
    brand.TextSize = 16
    brand.TextXAlignment = Enum.TextXAlignment.Left
    brand.Parent = titlebar

    local hint = Instance.new("TextLabel")
    hint.Size = UDim2.new(0, 220, 1, 0)
    hint.Position = UDim2.new(1, -250, 0, 0)
    hint.BackgroundTransparency = 1
    hint.Text = "RightControl | toggle"
    hint.TextColor3 = THEME.dim
    hint.Font = Enum.Font.Gotham
    hint.TextSize = 12
    hint.TextXAlignment = Enum.TextXAlignment.Right
    hint.Parent = titlebar
end

local function titleButton(text, xOffset)
    local b = Instance.new("TextButton")
    b.Size = UDim2.fromOffset(30, 26)
    b.Position = UDim2.new(1, xOffset, 0.5, 0)
    b.AnchorPoint = Vector2.new(0, 0.5)
    b.BackgroundColor3 = THEME.card
    b.Text = text
    b.TextColor3 = THEME.text
    b.Font = Enum.Font.GothamBold
    b.TextSize = 13
    b.BorderSizePixel = 0
    b.AutoButtonColor = true
    b.Parent = titlebar
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
    return b
end

local closeBtn = titleButton("X", -34)
local minBtn   = titleButton("-", -70)

-- dragging
do
    local dragging, dragStart, startPos = false, nil, nil
    titlebar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
                      or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                      startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

------------------------------------------------------------
-- sidebar
------------------------------------------------------------

local sidebar = Instance.new("Frame")
sidebar.Name = "Sidebar"
sidebar.Size = UDim2.new(0, 178, 1, -46)
sidebar.Position = UDim2.new(0, 0, 0, 46)
sidebar.BackgroundColor3 = THEME.sidebar
sidebar.BorderSizePixel = 0
sidebar.Parent = main

local sbLayout = Instance.new("UIListLayout")
sbLayout.Padding = UDim.new(0, 2)
sbLayout.SortOrder = Enum.SortOrder.LayoutOrder
sbLayout.Parent = sidebar

do
    local brandBlock = Instance.new("Frame")
    brandBlock.Size = UDim2.new(1, 0, 0, 62)
    brandBlock.BackgroundTransparency = 1
    brandBlock.LayoutOrder = 0
    brandBlock.Parent = sidebar

    local name = Instance.new("TextLabel")
    name.Size = UDim2.new(1, -24, 0, 22)
    name.Position = UDim2.new(0, 16, 0, 14)
    name.BackgroundTransparency = 1
    name.Text = "aveon evan"
    name.TextColor3 = THEME.accent
    name.Font = Enum.Font.GothamBold
    name.TextSize = 19
    name.TextXAlignment = Enum.TextXAlignment.Left
    name.Parent = brandBlock

    local sub = Instance.new("TextLabel")
    sub.Size = UDim2.new(1, -24, 0, 14)
    sub.Position = UDim2.new(0, 16, 0, 36)
    sub.BackgroundTransparency = 1
    sub.Text = "script hub"
    sub.TextColor3 = THEME.dim
    sub.Font = Enum.Font.Gotham
    sub.TextSize = 11
    sub.TextXAlignment = Enum.TextXAlignment.Left
    sub.Parent = brandBlock
end

local navButtons = {}
local activeNav = nil
local showView -- forward declaration, assigned after views exist
local onOpenView
local emptyMatchNote

local function sectionLabel(text, order)
    local l = Instance.new("TextLabel")
    l.Size = UDim2.new(1, -24, 0, 22)
    l.Position = UDim2.new(0, 16, 0, 0)
    l.BackgroundTransparency = 1
    l.Text = text
    l.TextColor3 = THEME.dim
    l.Font = Enum.Font.GothamBold
    l.TextSize = 10
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.LayoutOrder = order
    l.Parent = sidebar
end

local function navButton(id, text, order)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -12, 0, 34)
    b.Position = UDim2.new(0, 6, 0, 0)
    b.BackgroundColor3 = THEME.sidebar
    b.BackgroundTransparency = 1
    b.Text = "   " .. text
    b.TextColor3 = THEME.dim
    b.Font = Enum.Font.GothamMedium
    b.TextSize = 13
    b.TextXAlignment = Enum.TextXAlignment.Left
    b.BorderSizePixel = 0
    b.AutoButtonColor = false
    b.LayoutOrder = order
    b.Parent = sidebar

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = b

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0, 3, 0.6, 0)
    bar.Position = UDim2.new(0, 0, 0.2, 0)
    bar.BackgroundColor3 = THEME.accent
    bar.BackgroundTransparency = 1
    bar.BorderSizePixel = 0
    bar.Parent = b
    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(1, 0)
    bc.Parent = bar

    navButtons[id] = { btn = b, bar = bar }
    b.MouseButton1Click:Connect(function()
        showView(id)
    end)
    return b
end

sectionLabel("HOME", 1)
navButton("dashboard", "Dashboard", 2)
sectionLabel("SCRIPTS", 3)
navButton("all", "All Scripts", 4)
navButton("favorites", "Favorites", 5)
sectionLabel("TOOLS", 6)
navButton("scanner", "Game Scanner", 7)
navButton("info", "Info", 8)

local function setActiveNav(id)
    activeNav = id
    for nid, nd in pairs(navButtons) do
        local on = (nid == id)
        nd.btn.BackgroundTransparency = on and 0 or 1
        nd.btn.BackgroundColor3 = THEME.navActive
        nd.btn.TextColor3 = on and THEME.text or THEME.dim
        nd.bar.BackgroundTransparency = on and 0 or 1
    end
end

------------------------------------------------------------
-- content area
------------------------------------------------------------

local content = Instance.new("Frame")
content.Name = "Content"
content.Size = UDim2.new(1, -178, 1, -46)
content.Position = UDim2.new(0, 178, 0, 46)
content.BackgroundColor3 = THEME.panel
content.BorderSizePixel = 0
content.Parent = main

local views = {}
local viewOrder = { "dashboard", "all", "favorites", "scanner", "info" }

local function buildViewContainer(id)
    local v = Instance.new("Frame")
    v.Name = "View_" .. id
    v.Size = UDim2.new(1, 0, 1, 0)
    v.BackgroundTransparency = 1
    v.Visible = false
    v.Parent = content
    views[id] = { frame = v, built = false, dirty = true }
    return views[id]
end

local function showViewImpl(id)
    for vid, vd in pairs(views) do
        vd.frame.Visible = (vid == id)
    end
    setActiveNav(id)
    local vd = views[id]
    if vd and vd.dirty then
        vd.dirty = false
        onOpenView(id)
    end
end

------------------------------------------------------------
-- shared card builder
------------------------------------------------------------

local function makeCard(entry, indexNo, listParent)
    local color = BTN_COLORS[((indexNo - 1) % #BTN_COLORS) + 1]

    local card = Instance.new("Frame")
    card.Name = "Card"
    card.Size = UDim2.new(1, -16, 0, 88)
    card.BackgroundColor3 = THEME.card
    card.BorderSizePixel = 0
    card.Parent = listParent
    card.LayoutOrder = indexNo

    local cc = Instance.new("UICorner")
    cc.CornerRadius = UDim.new(0, 10)
    cc.Parent = card

    local cs = Instance.new("UIStroke")
    cs.Color = THEME.stroke
    cs.Thickness = 1
    cs.Transparency = 0.45
    cs.Parent = card

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -60, 0, 18)
    title.Position = UDim2.new(0, 12, 0, 8)
    title.BackgroundTransparency = 1
    title.Text = entry.name
    title.TextColor3 = THEME.text
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTruncate = Enum.TextTruncate.AtEnd
    title.Parent = card

    local sub = Instance.new("TextLabel")
    sub.Size = UDim2.new(1, -60, 0, 14)
    sub.Position = UDim2.new(0, 12, 0, 27)
    sub.BackgroundTransparency = 1
    sub.Text = entry.subText
    sub.TextColor3 = THEME.dim
    sub.Font = Enum.Font.Gotham
    sub.TextSize = 11
    sub.TextXAlignment = Enum.TextXAlignment.Left
    sub.TextTruncate = Enum.TextTruncate.AtEnd
    sub.Parent = card

    -- favorite star (top-right)
    local star = Instance.new("TextButton")
    star.Size = UDim2.fromOffset(30, 30)
    star.Position = UDim2.new(1, -38, 0, 6)
    star.BackgroundTransparency = 1
    star.Text = isFav(entry) and "★" or "☆"
    star.TextColor3 = isFav(entry) and Color3.fromRGB(255, 200, 60) or THEME.dim
    star.Font = Enum.Font.GothamBold
    star.TextSize = 17
    star.Parent = card
    star.MouseButton1Click:Connect(function()
        if isFav(entry) then
            favs[favKey(entry)] = nil
        else
            favs[favKey(entry)] = true
        end
        saveFavs()
        star.Text = isFav(entry) and "★" or "☆"
        star.TextColor3 = isFav(entry) and Color3.fromRGB(255, 200, 60) or THEME.dim
        if views.favorites then views.favorites.dirty = true end
    end)

    -- EXECUTE button underneath
    local exec = Instance.new("TextButton")
    exec.Name = "Execute"
    exec.Size = UDim2.new(1, -24, 0, 28)
    exec.Position = UDim2.new(0, 12, 0, 50)
    exec.BackgroundColor3 = color.bg
    exec.TextColor3 = color.txt
    exec.Text = "EXECUTE"
    exec.Font = Enum.Font.GothamBold
    exec.TextSize = 12
    exec.BorderSizePixel = 0
    exec.AutoButtonColor = true
    exec.Parent = card

    local ec = Instance.new("UICorner")
    ec.CornerRadius = UDim.new(0, 8)
    ec.Parent = exec

    exec.MouseButton1Click:Connect(function()
        if exec.Active == false then return end
        exec.Text = "LOADING..."
        exec.Active = false
        task.spawn(function()
            local src
            local okF = pcall(function()
                src = fetchRaw(entry.file)
            end)
            if okF and src and #src > 0 then
                local fn, lerr = loadstring(src, "=" .. entry.name)
                if fn then
                    local okR, rerr = pcall(fn)
                    if okR then
                        exec.Text = "EXECUTED ✓"
                    else
                        exec.Text = "RUNTIME ERROR"
                        warn("[AveonEvan] " .. entry.name .. " runtime error: " .. tostring(rerr))
                    end
                else
                    exec.Text = "SYNTAX ERROR"
                    warn("[AveonEvan] " .. entry.name .. " loadstring error: " .. tostring(lerr))
                end
            else
                exec.Text = "FETCH FAILED"
                warn("[AveonEvan] " .. entry.name .. " fetch failed")
            end
            task.delay(2.5, function()
                if exec and exec.Parent then
                    exec.Text = "EXECUTE"
                    exec.Active = true
                end
            end)
        end)
    end)

    return card
end

local function entrySubText(entry)
    if entry.multi then
        return "multi-game script · " .. fmtSize(entry.size or 0)
    end
    return "PlaceId " .. tostring(entry.placeId) .. " · " .. fmtSize(entry.size or 0)
end

------------------------------------------------------------
-- list view helper (incremental rendering)
------------------------------------------------------------

local function makeListView(parent, emptyText)
    local searchBox = Instance.new("TextBox")
    searchBox.Size = UDim2.new(1, -120, 0, 32)
    searchBox.Position = UDim2.new(0, 14, 0, 12)
    searchBox.BackgroundColor3 = THEME.card
    searchBox.TextColor3 = THEME.text
    searchBox.PlaceholderText = "Search scripts..."
    searchBox.PlaceholderColor3 = THEME.dim
    searchBox.Text = ""
    searchBox.Font = Enum.Font.Gotham
    searchBox.TextSize = 13
    searchBox.ClearTextOnFocus = false
    searchBox.BorderSizePixel = 0
    searchBox.Parent = parent
    local sbc = Instance.new("UICorner")
    sbc.CornerRadius = UDim.new(0, 8)
    sbc.Parent = searchBox
    local sbs = Instance.new("UIStroke")
    sbs.Color = THEME.stroke
    sbs.Thickness = 1
    sbs.Transparency = 0.5
    sbs.Parent = searchBox
    do
        local pad = Instance.new("UIPadding")
        pad.PaddingLeft = UDim.new(0, 10)
        pad.Parent = searchBox
    end

    local countLabel = Instance.new("TextLabel")
    countLabel.Size = UDim2.new(0, 100, 0, 32)
    countLabel.Position = UDim2.new(1, -110, 0, 12)
    countLabel.BackgroundTransparency = 1
    countLabel.Text = ""
    countLabel.TextColor3 = THEME.dim
    countLabel.Font = Enum.Font.GothamBold
    countLabel.TextSize = 11
    countLabel.TextXAlignment = Enum.TextXAlignment.Right
    countLabel.Parent = parent

    local scroll = Instance.new("ScrollingFrame")
    scroll.Size = UDim2.new(1, 0, 1, -58)
    scroll.Position = UDim2.new(0, 0, 0, 56)
    scroll.BackgroundTransparency = 1
    scroll.BorderSizePixel = 0
    scroll.ScrollBarThickness = 4
    scroll.ScrollBarImageColor3 = THEME.accent
    scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    scroll.AutomaticCanvasSize = Enum.AutomaticSize.None
    scroll.Parent = parent

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 8)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Parent = scroll

    local padFrame = Instance.new("Frame")
    padFrame.Size = UDim2.new(1, 0, 0, 10)
    padFrame.BackgroundTransparency = 1
    padFrame.LayoutOrder = 999999
    padFrame.Parent = scroll

    local empty = Instance.new("TextLabel")
    empty.Size = UDim2.new(1, 0, 0, 40)
    empty.Position = UDim2.new(0, 0, 0, 20)
    empty.BackgroundTransparency = 1
    empty.Text = emptyText or "Nothing here yet."
    empty.TextColor3 = THEME.dim
    empty.Font = Enum.Font.GothamMedium
    empty.TextSize = 13
    empty.Visible = false
    empty.Parent = scroll

    local data = {}
    local filtered = {}
    local rendered = 0
    local BATCH = 40

    local lv = {}

    local function renderBatch()
        if rendered >= #filtered then return end
        local target = math.min(rendered + BATCH, #filtered)
        for i = rendered + 1, target do
            local e = filtered[i]
            e.subText = entrySubText(e)
            makeCard(e, i, scroll)
        end
        rendered = target
        local contentH = layout.AbsoluteContentSize.Y + 20
        scroll.CanvasSize = UDim2.new(0, 0, 0, contentH)
        countLabel.Text = #filtered .. " script" .. (#filtered == 1 and "" or "s")
        empty.Visible = (#filtered == 0)
    end

    local function applyFilter()
        for _, c in ipairs(scroll:GetChildren()) do
            if c:IsA("Frame") and c.Name == "Card" then c:Destroy() end
        end
        rendered = 0
        filtered = {}
        local q = string.lower(searchBox.Text)
        for _, e in ipairs(data) do
            if q == "" or string.find(string.lower(e.name), q, 1, true) then
                filtered[#filtered + 1] = e
            end
        end
        renderBatch()
    end

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        applyFilter()
    end)

    scroll:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
        local bottomY = scroll.CanvasPosition.Y + scroll.AbsoluteWindowSize.Y
        if bottomY > layout.AbsoluteContentSize.Y - 500 then
            renderBatch()
        end
    end)

    function lv.setData(arr)
        data = arr
        applyFilter()
    end

    function lv.refresh()
        applyFilter()
    end

    return lv
end

------------------------------------------------------------
-- execute helpers for dashboard/scanner card lists
------------------------------------------------------------

local function fillMatches(container, entries, headerText)
    for _, c in ipairs(container:GetChildren()) do
        if c:IsA("Frame") then c:Destroy() end
    end
    local layout = container:FindFirstChildOfClass("UIListLayout")
    for i, e in ipairs(entries) do
        e.subText = entrySubText(e)
        makeCard(e, i, container)
    end
    local contentH = layout and layout.AbsoluteContentSize.Y or 0
    container.CanvasSize = UDim2.new(0, 0, 0, contentH + 16)
end

------------------------------------------------------------
-- DASHBOARD view
------------------------------------------------------------

local dash = buildViewContainer("dashboard")

do
    local header = Instance.new("TextLabel")
    header.Size = UDim2.new(1, -28, 0, 24)
    header.Position = UDim2.new(0, 14, 0, 10)
    header.BackgroundTransparency = 1
    header.Text = "DASHBOARD"
    header.TextColor3 = THEME.text
    header.Font = Enum.Font.GothamBold
    header.TextSize = 15
    header.TextXAlignment = Enum.TextXAlignment.Left
    header.Parent = dash.frame

    local gameCard = Instance.new("Frame")
    gameCard.Size = UDim2.new(1, -28, 0, 92)
    gameCard.Position = UDim2.new(0, 14, 0, 42)
    gameCard.BackgroundColor3 = THEME.card
    gameCard.BorderSizePixel = 0
    gameCard.Parent = dash.frame
    local gcc = Instance.new("UICorner")
    gcc.CornerRadius = UDim.new(0, 10)
    gcc.Parent = gameCard
    local gcs = Instance.new("UIStroke")
    gcs.Color = THEME.accent
    gcs.Thickness = 1
    gcs.Transparency = 0.55
    gcs.Parent = gameCard

    local gLabel = Instance.new("TextLabel")
    gLabel.Size = UDim2.new(1, -24, 0, 14)
    gLabel.Position = UDim2.new(0, 14, 0, 10)
    gLabel.BackgroundTransparency = 1
    gLabel.Text = "CURRENT GAME"
    gLabel.TextColor3 = THEME.dim
    gLabel.Font = Enum.Font.GothamBold
    gLabel.TextSize = 10
    gLabel.TextXAlignment = Enum.TextXAlignment.Left
    gLabel.Parent = gameCard

    local gName = Instance.new("TextLabel")
    gName.Size = UDim2.new(1, -140, 0, 24)
    gName.Position = UDim2.new(0, 14, 0, 26)
    gName.BackgroundTransparency = 1
    gName.Text = "detecting..."
    gName.TextColor3 = THEME.text
    gName.Font = Enum.Font.GothamBold
    gName.TextSize = 18
    gName.TextXAlignment = Enum.TextXAlignment.Left
    gName.TextTruncate = Enum.TextTruncate.AtEnd
    gName.Parent = gameCard

    local gMeta = Instance.new("TextLabel")
    gMeta.Size = UDim2.new(1, -24, 0, 14)
    gMeta.Position = UDim2.new(0, 14, 0, 52)
    gMeta.BackgroundTransparency = 1
    gMeta.Text = ""
    gMeta.TextColor3 = THEME.dim
    gMeta.Font = Enum.Font.Gotham
    gMeta.TextSize = 11
    gMeta.TextXAlignment = Enum.TextXAlignment.Left
    gMeta.Parent = gameCard

    local refreshBtn = Instance.new("TextButton")
    refreshBtn.Size = UDim2.fromOffset(96, 30)
    refreshBtn.Position = UDim2.new(1, -110, 1, -12)
    refreshBtn.AnchorPoint = Vector2.new(0, 1)
    refreshBtn.BackgroundColor3 = THEME.accent2
    refreshBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    refreshBtn.Text = "RE-SCAN"
    refreshBtn.Font = Enum.Font.GothamBold
    refreshBtn.TextSize = 11
    refreshBtn.BorderSizePixel = 0
    refreshBtn.Parent = gameCard
    local rbc = Instance.new("UICorner")
    rbc.CornerRadius = UDim.new(0, 8)
    rbc.Parent = refreshBtn

    local status = Instance.new("TextLabel")
    status.Size = UDim2.new(1, -124, 0, 14)
    status.Position = UDim2.new(0, 14, 0, 70)
    status.BackgroundTransparency = 1
    status.Text = ""
    status.TextColor3 = THEME.accent
    status.Font = Enum.Font.GothamBold
    status.TextSize = 11
    status.TextXAlignment = Enum.TextXAlignment.Left
    status.Parent = gameCard

    local matchesHeader = Instance.new("TextLabel")
    matchesHeader.Size = UDim2.new(1, -28, 0, 18)
    matchesHeader.Position = UDim2.new(0, 14, 0, 144)
    matchesHeader.BackgroundTransparency = 1
    matchesHeader.Text = "COMPATIBLE SCRIPTS"
    matchesHeader.TextColor3 = THEME.dim
    matchesHeader.Font = Enum.Font.GothamBold
    matchesHeader.TextSize = 10
    matchesHeader.TextXAlignment = Enum.TextXAlignment.Left
    matchesHeader.Parent = dash.frame

    local matchScroll = Instance.new("ScrollingFrame")
    matchScroll.Size = UDim2.new(1, -28, 1, -172)
    matchScroll.Position = UDim2.new(0, 14, 0, 166)
    matchScroll.BackgroundTransparency = 1
    matchScroll.BorderSizePixel = 0
    matchScroll.ScrollBarThickness = 4
    matchScroll.ScrollBarImageColor3 = THEME.accent
    matchScroll.Parent = dash.frame

    local mLayout = Instance.new("UIListLayout")
    mLayout.Padding = UDim.new(0, 8)
    mLayout.SortOrder = Enum.SortOrder.LayoutOrder
    mLayout.Parent = matchScroll

    dash.gameName = gName
    dash.gameMeta = gMeta
    dash.status = status
    dash.matchScroll = matchScroll
    dash.mLayout = mLayout

    local function scan()
        local pid = game.PlaceId
        gName.Text = "detecting..."
        gMeta.Text = "PlaceId " .. tostring(pid)
        status.Text = ""
        fillMatches(matchScroll, {}, nil)
        task.spawn(function()
            local name = ("Place %d"):format(pid)
            local okI, info = pcall(function()
                return MarketplaceService:GetProductInfo(pid)
            end)
            if okI and info and info.Name then name = info.Name end
            gName.Text = name

            local matches = {}
            if state.index then
                for _, e in ipairs(state.index) do
                    if e.placeId == pid then matches[#matches + 1] = e end
                end
            end
            if #matches > 0 then
                status.Text = "✓ " .. #matches .. " compatible script" .. (#matches == 1 and "" or "s") .. " found"
                status.TextColor3 = Color3.fromRGB(120, 240, 160)
                matchesHeader.Text = "COMPATIBLE SCRIPTS"
                fillMatches(matchScroll, matches)
            else
                status.Text = "no dedicated script for this game yet"
                status.TextColor3 = THEME.dim
                local multiList = {}
                if state.index then
                    for _, e in ipairs(state.index) do
                        if e.multi then multiList[#multiList + 1] = e end
                    end
                end
                if #multiList > 0 then
                    matchesHeader.Text = "MULTI-GAME SCRIPTS (MIGHT WORK HERE)"
                    fillMatches(matchScroll, multiList)
                else
                    matchesHeader.Text = "COMPATIBLE SCRIPTS"
                    emptyMatchNote(matchScroll, "Nothing matches this place yet.")
                end
            end
        end)
    end

    dash.scan = scan
    refreshBtn.MouseButton1Click:Connect(scan)
end

function emptyMatchNoteImpl(container, text)
    for _, c in ipairs(container:GetChildren()) do
        if c:IsA("Frame") then c:Destroy() end
    end
    local note = Instance.new("TextLabel")
    note.Size = UDim2.new(1, -16, 0, 36)
    note.BackgroundTransparency = 1
    note.Text = text
    note.TextColor3 = THEME.dim
    note.Font = Enum.Font.GothamMedium
    note.TextSize = 12
    note.Parent = container
end

------------------------------------------------------------
-- ALL SCRIPTS / FAVORITES views
------------------------------------------------------------

local allView = buildViewContainer("all")
local allList = makeListView(allView.frame, "Library not loaded yet.")
allList.countPlaceholder = nil

local favView = buildViewContainer("favorites")
local favList = makeListView(favView.frame, "No favorites yet — tap ☆ on a script card.")

------------------------------------------------------------
-- SCANNER view
------------------------------------------------------------

local scanView = buildViewContainer("scanner")

do
    local header = Instance.new("TextLabel")
    header.Size = UDim2.new(1, -28, 0, 24)
    header.Position = UDim2.new(0, 14, 0, 10)
    header.BackgroundTransparency = 1
    header.Text = "GAME SCANNER"
    header.TextColor3 = THEME.text
    header.Font = Enum.Font.GothamBold
    header.TextSize = 15
    header.TextXAlignment = Enum.TextXAlignment.Left
    header.Parent = scanView.frame

    local sub = Instance.new("TextLabel")
    sub.Size = UDim2.new(1, -28, 0, 16)
    sub.Position = UDim2.new(0, 14, 0, 34)
    sub.BackgroundTransparency = 1
    sub.Text = "Enter a PlaceId to check the library, or use Dashboard for the game you're in."
    sub.TextColor3 = THEME.dim
    sub.Font = Enum.Font.Gotham
    sub.TextSize = 11
    sub.TextXAlignment = Enum.TextXAlignment.Left
    sub.TextWrapped = true
    sub.Parent = scanView.frame

    local input = Instance.new("TextBox")
    input.Size = UDim2.new(1, -180, 0, 32)
    input.Position = UDim2.new(0, 14, 0, 60)
    input.BackgroundColor3 = THEME.card
    input.TextColor3 = THEME.text
    input.PlaceholderText = "Paste a PlaceId..."
    input.PlaceholderColor3 = THEME.dim
    input.Text = ""
    input.Font = Enum.Font.Gotham
    input.TextSize = 13
    input.ClearTextOnFocus = false
    input.BorderSizePixel = 0
    input.Parent = scanView.frame
    local ic = Instance.new("UICorner")
    ic.CornerRadius = UDim.new(0, 8)
    ic.Parent = input

    local goBtn = Instance.new("TextButton")
    goBtn.Size = UDim2.fromOffset(100, 32)
    goBtn.Position = UDim2.new(1, -114, 0, 60)
    goBtn.BackgroundColor3 = THEME.accent
    goBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    goBtn.Text = "SCAN"
    goBtn.Font = Enum.Font.GothamBold
    goBtn.TextSize = 12
    goBtn.BorderSizePixel = 0
    goBtn.Parent = scanView.frame
    local gc = Instance.new("UICorner")
    gc.CornerRadius = UDim.new(0, 8)
    gc.Parent = goBtn

    local resultLabel = Instance.new("TextLabel")
    resultLabel.Size = UDim2.new(1, -28, 0, 16)
    resultLabel.Position = UDim2.new(0, 14, 0, 100)
    resultLabel.BackgroundTransparency = 1
    resultLabel.Text = ""
    resultLabel.TextColor3 = THEME.accent
    resultLabel.Font = Enum.Font.GothamBold
    resultLabel.TextSize = 11
    resultLabel.TextXAlignment = Enum.TextXAlignment.Left
    resultLabel.Parent = scanView.frame

    local scroll = Instance.new("ScrollingFrame")
    scroll.Size = UDim2.new(1, -28, 1, -128)
    scroll.Position = UDim2.new(0, 14, 0, 120)
    scroll.BackgroundTransparency = 1
    scroll.BorderSizePixel = 0
    scroll.ScrollBarThickness = 4
    scroll.ScrollBarImageColor3 = THEME.accent
    scroll.Parent = scanView.frame
    local sl = Instance.new("UIListLayout")
    sl.Padding = UDim.new(0, 8)
    sl.SortOrder = Enum.SortOrder.LayoutOrder
    sl.Parent = scroll

    local function runScan()
        local id = tonumber((input.Text:gsub("%D", "")))
        for _, c in ipairs(scroll:GetChildren()) do
            if c:IsA("Frame") then c:Destroy() end
        end
        if not id then
            resultLabel.Text = "enter a numeric PlaceId"
            resultLabel.TextColor3 = Color3.fromRGB(255, 150, 80)
            return
        end
        local matches = {}
        if state.index then
            for _, e in ipairs(state.index) do
                if e.placeId == id then matches[#matches + 1] = e end
            end
        end
        if #matches > 0 then
            resultLabel.Text = "✓ " .. #matches .. " script(s) for PlaceId " .. id
            resultLabel.TextColor3 = Color3.fromRGB(120, 240, 160)
            fillMatches(scroll, matches)
        else
            resultLabel.Text = "nothing in the library for PlaceId " .. id
            resultLabel.TextColor3 = THEME.dim
            emptyMatchNote(scroll, "No dedicated script for that place yet.")
        end
    end

    goBtn.MouseButton1Click:Connect(runScan)
end

------------------------------------------------------------
-- INFO view
------------------------------------------------------------

local infoView = buildViewContainer("info")

do
    local scroll = Instance.new("ScrollingFrame")
    scroll.Size = UDim2.new(1, -28, 1, -20)
    scroll.Position = UDim2.new(0, 14, 0, 10)
    scroll.BackgroundTransparency = 1
    scroll.BorderSizePixel = 0
    scroll.ScrollBarThickness = 4
    scroll.Parent = infoView.frame
    local il = Instance.new("UIListLayout")
    il.Padding = UDim.new(0, 10)
    il.Parent = scroll

    local order = 0
    local function infoBlock(title, body)
        order = order + 1
        local b = Instance.new("Frame")
        b.Size = UDim2.new(1, 0, 0, 24 + (#body + 1) * 16)
        b.BackgroundColor3 = THEME.card
        b.BorderSizePixel = 0
        b.LayoutOrder = order
        b.Parent = scroll
        local bc = Instance.new("UICorner")
        bc.CornerRadius = UDim.new(0, 8)
        bc.Parent = b
        local t = Instance.new("TextLabel")
        t.Size = UDim2.new(1, -20, 0, 16)
        t.Position = UDim2.new(0, 10, 0, 6)
        t.BackgroundTransparency = 1
        t.Text = title
        t.TextColor3 = THEME.accent
        t.Font = Enum.Font.GothamBold
        t.TextSize = 11
        t.TextXAlignment = Enum.TextXAlignment.Left
        t.Parent = b
        local txt = Instance.new("TextLabel")
        txt.Size = UDim2.new(1, -20, 0, #body * 16)
        txt.Position = UDim2.new(0, 10, 0, 22)
        txt.BackgroundTransparency = 1
        txt.Text = table.concat(body, "\n")
        txt.TextColor3 = THEME.dim
        txt.Font = Enum.Font.Gotham
        txt.TextSize = 11
        txt.TextXAlignment = Enum.TextXAlignment.Left
        txt.TextWrapped = true
        txt.Parent = b
        return b
    end

    infoBlock("LIBRARY", {
        "Repo: " .. REPO .. " (branch " .. BRANCH .. ")",
        "Scripts will be counted here once the index loads.",
        "Toggle the hub with RightControl.",
    })
    infoBlock("HOW TO USE", {
        "Dashboard detects your current game automatically.",
        "All Scripts lists everything — search, then EXECUTE.",
        "Tap ☆ to favorite scripts (saved on your device).",
        "Game Scanner checks any PlaceId against the library.",
    })
    infoBlock("CREDITS", {
        "Scripts: deobfuscated Ouroboros collection (public dump).",
        "Many scripts use the Obsidian UI library at runtime.",
        "Hub GUI built for the AveonEvan project.",
    })
    infoBlock("NOTES", {
        "Scripts are fetched from GitHub at execute time.",
        "Using executors can violate Roblox ToS — use a burner account.",
    })
end

------------------------------------------------------------
-- view open hooks
------------------------------------------------------------

function onOpenViewImpl(id)
    if not state.index then
        if id == "dashboard" then
            dash.gameName.Text = state.loadErr and ("index error: " .. tostring(state.loadErr)) or "loading library..."
        end
        return
    end
    if id == "dashboard" then
        dash.scan()
    elseif id == "all" then
        allList.setData(state.index)
    elseif id == "favorites" then
        local favEntries = {}
        for _, e in ipairs(state.index) do
            if isFav(e) then favEntries[#favEntries + 1] = e end
        end
        favList.setData(favEntries)
    elseif id == "info" then
        -- nothing dynamic
    end
end

showView = showViewImpl
onOpenView = onOpenViewImpl
emptyMatchNote = emptyMatchNoteImpl

------------------------------------------------------------
-- toast
------------------------------------------------------------

local toastGui = Instance.new("Frame")
toastGui.Size = UDim2.new(0, 380, 0, 34)
toastGui.Position = UDim2.new(0.5, 0, 1, -20)
toastGui.AnchorPoint = Vector2.new(0.5, 1)
toastGui.BackgroundColor3 = THEME.card
toastGui.BackgroundTransparency = 0.15
toastGui.BorderSizePixel = 0
toastGui.Visible = false
toastGui.Parent = gui
local tc = Instance.new("UICorner")
tc.CornerRadius = UDim.new(0, 8)
tc.Parent = toastGui
local toastText = Instance.new("TextLabel")
toastText.Size = UDim2.new(1, -16, 1, 0)
toastText.Position = UDim2.new(0, 8, 0, 0)
toastText.BackgroundTransparency = 1
toastText.TextColor3 = THEME.text
toastText.Font = Enum.Font.GothamMedium
toastText.TextSize = 12
toastText.TextWrapped = true
toastText.Parent = toastGui

local function toast(msg)
    toastText.Text = msg
    toastGui.Visible = true
    toastGui.Position = UDim2.new(0.5, 0, 1, -20)
    task.delay(2.8, function()
        if toastText.Text == msg then toastGui.Visible = false end
    end)
end

------------------------------------------------------------
-- toggle & close
------------------------------------------------------------

UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == Enum.KeyCode.RightControl then
        main.Visible = not main.Visible
    end
end)

minBtn.MouseButton1Click:Connect(function()
    main.Visible = false
end)

closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
    if getgenv then getgenv().AVEON_HUB_LOADED = nil end
end)

------------------------------------------------------------
-- init: load index then wire views
------------------------------------------------------------

task.spawn(function()
    local ok, src = pcall(function()
        return fetchRaw("src/games.json")
    end)
    if ok and src and #src > 0 then
        local okD, decoded = pcall(function()
            return HttpService:JSONDecode(src)
        end)
        if okD and decoded and type(decoded.games) == "table" then
            state.index = decoded.games
            state.meta = decoded
            toast("Library loaded — " .. #decoded.games .. " scripts")
            showView("dashboard")
        else
            state.loadErr = "index decode failed"
            toast("Index decode failed")
            showView("dashboard")
        end
    else
        state.loadErr = "index fetch failed"
        toast("Couldn't fetch the script index — check the repo/branch")
        showView("dashboard")
    end
end)

showView("dashboard")
