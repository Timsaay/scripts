loadstring(game:HttpGet("https://bated-slash.000webhostapp.com/key.lua"))()
-- Gui to Lua
-- Version: 3.2

-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Check = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local key = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local get = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
KeyFrame.Position = UDim2.new(0.290548503, 0, 0.246214837, 0)
KeyFrame.Size = UDim2.new(0, 451, 0, 276)

TextLabel.Parent = KeyFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
TextLabel.Size = UDim2.new(0, 451, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "key system"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 51.000

UICorner.Parent = KeyFrame

Check.Name = "Check"
Check.Parent = KeyFrame
Check.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
Check.Position = UDim2.new(0.277161866, 0, 0.728260875, 0)
Check.Size = UDim2.new(0, 200, 0, 50)
Check.Font = Enum.Font.SourceSans
Check.Text = "CHECK KEY"
Check.TextColor3 = Color3.fromRGB(0, 0, 0)
Check.TextSize = 46.000

get.Name = "Getkey"
get.Parent = KeyFrame
get.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
get.Position = UDim2.new(0.277161866, 0, 1, 0)
get.Size = UDim2.new(0, 200, 0, 50)
get.Font = Enum.Font.SourceSans
get.Text = "GET KEY"
get.TextColor3 = Color3.fromRGB(0, 0, 0)
get.TextSize = 46.000

UICorner_2.Parent = Check

key.Name = "key"
key.Parent = KeyFrame
key.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
key.Position = UDim2.new(0.277161866, 0, 0.409420282, 0)
key.Size = UDim2.new(0, 200, 0, 50)
key.Font = Enum.Font.SourceSans
key.Text = "KEY HERE"
key.TextColor3 = Color3.fromRGB(0, 0, 0)
key.TextSize = 14.000

UICorner_3.Parent = key

-- Scripts:


	local script = Instance.new('LocalScript', get)
		print("GET Key...")
	script.Parent.MouseButton1Click:Connect(function()
		setclipboard("https://bated-slash.000webhostapp.com/getkey.php")
	end)

local function WTTF_fake_script() -- Check.LocalScript 
	local script = Instance.new('LocalScript', Check)

	local key = script.Parent.Parent.key
	
	script.Parent.MouseButton1Click:Connect(function()
		if key.Text == correctkey then -- Make the "Key" whatever you wish.
			print("Correct Key")
			script.Parent.Parent.Visible = false
			print("Success")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Timsaay2/scriptsnokey/main/scripts.lua"))()	
		elseif 
			key.Text == "" then
			key.Text = "" else
			key.Text = "Incorrect, try again."
			wait(1)
			key.Text = ""
		end
	end)
	
end
coroutine.wrap(WTTF_fake_script)()
local function DBLZQV_fake_script() -- ScreenGui.Notification Script 
	local script = Instance.new('LocalScript', ScreenGui)

	--put this in starterplayerscripts or startergui
	
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "GETKEY"; --must be string
		Text = "Click GETKEY to get KEY"; --must be string
		Duration = 30; -- defaults to 5 secs if no duration is set
		Button1 = "OKAY";
	})
	
	setclipboard("https://discord.gg/f8yb39gMR8")
end
coroutine.wrap(DBLZQV_fake_script)()
