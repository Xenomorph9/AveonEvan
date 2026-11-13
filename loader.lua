--!nocheck
-- ============================================================
--  AveonEvan Hub — loader
--  Usage (paste in your executor, e.g. Delta):
--
--  loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenomorph9/AveonEvan/main/loader.lua"))()
--
--  Toggle the hub window with RightControl.
-- ============================================================

local genv = (getgenv and getgenv()) or _G

if genv.AVEON_HUB_LOADED then
	warn("[AveonEvan] Hub is already loaded — press RightControl to toggle it.")
	return
end

genv.AVEON_HUB_LOADED = true
genv.AVEON_CONFIG = {
	repo = "Xenomorph9/AveonEvan",
	branch = "main",
}

local source
local okFetch, fetchErr = pcall(function()
	source = game:HttpGet(
		("https://raw.githubusercontent.com/Xenomorph9/AveonEvan/main/src/hub.lua?cb=%d")
			:format(os.time())
	)
end)

if not okFetch or not source or #source == 0 then
	genv.AVEON_HUB_LOADED = false
	warn("[AveonEvan] couldn't fetch the hub: " .. tostring(fetchErr))
	return
end

local fn, loadErr = loadstring(source, "=AveonEvanHub")
if not fn then
	genv.AVEON_HUB_LOADED = false
	warn("[AveonEvan] hub failed to compile: " .. tostring(loadErr))
	return
end

local okRun, runErr = pcall(fn)
if not okRun then
	genv.AVEON_HUB_LOADED = false
	warn("[AveonEvan] hub crashed: " .. tostring(runErr))
end
