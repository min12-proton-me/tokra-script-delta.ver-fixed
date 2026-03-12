local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Auto Copy Discord Link
setclipboard("nevertokra")

local Window = Rayfield:CreateWindow({
   Name = "Tokra System | Key Verification",
   LoadingTitle = "Loading System",
   LoadingStatus = "Loading...",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false,
   KeySettings = {
      Title = "Enter Key",
      Subtitle = "",
      Note = "Key: nevertokra",
      FileName = "TokraKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"nevertokra"}
   }
})

local env = getgenv()
local safeHttpGet = function(...)
    local args = {...}
    local url = ""
    for _, v in ipairs(args) do
        if type(v) == "string" and (v:sub(1,4) == "http" or v:find("://")) then
            url = v
            break
        end
    end
    if url ~= "" then
        return game:HttpGet(url)
    end
end

env.httpget = safeHttpGet
env.HttpGet = safeHttpGet

if setreadonly then setreadonly(env, false) end
env.identifyexecutor = function() return "Krnl" end

loadstring(game:HttpGet("https://raw.githubusercontent.com/sladostrastnik/TokraScript/refs/heads/main/Loader.luau"))()
