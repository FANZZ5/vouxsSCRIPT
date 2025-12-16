-- Master Loader by [Vouxs SCRIPT] - Super Fast Delay Edition
local urls = {
    "https://raw.githubusercontent.com/FANZZ5/VouxsSC/main/VOUXSHUB.lua",  
    "https://raw.githubusercontent.com/FANZZ5/VouxsSC/main/Vouxs%20%20speed.lua"
    -- tambah lagi kalau mau 3
}

for i, url in ipairs(urls) do
    task.delay(0.8 * (i - 1), function()  -- cuma 0.8 detik tiap script
        local success, err = pcall(function()
            loadstring(game:HttpGet(url, true))()
        end)
        
        if success then
            print("Script " .. i .. " injected ⚡")
        else
            warn("Script " .. i .. " error: " .. err)
        end
    end)
end

print("Vouxs SCRIPT injected dalam <2 detik total 🔥")