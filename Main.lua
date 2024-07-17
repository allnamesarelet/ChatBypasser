local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextInsert = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local BypassText = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.0382998586, 0, 0.157142863, 0)
MainFrame.Size = UDim2.new(0, 393, 0, 279)

UICorner.Parent = MainFrame

TextInsert.Name = "TextInsert"
TextInsert.Parent = MainFrame
TextInsert.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextInsert.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextInsert.BorderSizePixel = 0
TextInsert.Position = UDim2.new(0.0254452918, 0, 0.408602148, 0)
TextInsert.Size = UDim2.new(0, 145, 0, 50)
TextInsert.Font = Enum.Font.SourceSans
TextInsert.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextInsert.PlaceholderText = "Text to Bypass"
TextInsert.Text = ""
TextInsert.TextColor3 = Color3.fromRGB(255, 255, 255)
TextInsert.TextSize = 22.000

UICorner_2.Parent = TextInsert

BypassText.Name = "BypassText"
BypassText.Parent = MainFrame
BypassText.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
BypassText.BorderColor3 = Color3.fromRGB(0, 0, 0)
BypassText.BorderSizePixel = 0
BypassText.Position = UDim2.new(0.440203547, 0, 0.408602148, 0)
BypassText.Size = UDim2.new(0, 104, 0, 50)
BypassText.Font = Enum.Font.SourceSans
BypassText.Text = "Bypass"
BypassText.TextColor3 = Color3.fromRGB(255, 255, 255)
BypassText.TextScaled = true
BypassText.TextSize = 14.000
BypassText.TextWrapped = true

UICorner_3.Parent = BypassText

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Chat Bypasser"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_4.Parent = Title

Exit.Name = "Exit"
Exit.Parent = MainFrame
Exit.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.865139961, 0, 0, 0)
Exit.Size = UDim2.new(0, 52, 0, 50)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

UICorner_5.Parent = Exit

-- Scripts:

local function RPBY_fake_script() -- Main.Core 
	local script = Instance.new('LocalScript', Main)

	local tcs = game:GetService("TextChatService")
	local chat = tcs.ChatInputBarConfiguration.TargetTextChannel
	local ScreenGui = script.Parent
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	
	local Frame = ScreenGui.MainFrame
	Frame.Archivable = true
	Frame.Active = true
	Frame.Draggable = true
	
	local ExitButton = Frame.Exit
	local TextInsertTextbox = Frame.TextInsert
	local BypassTextButton = Frame.BypassText
	
	local letters = {
		["A"] = "Α", ["a"] = "α",
		["B"] = "Β", ["b"] = "β",
		["C"] = "С", ["c"] = "с",
		["D"] = "D", ["d"] = "ԁ",
		["E"] = "Ε", ["e"] = "ȩ",
		["F"] = "Ғ", ["f"] = "Ғ",
		["G"] = "ԍ", ["g"] = "ԍ",
		["H"] = "Η", ["h"] = "һ",
		["I"] = "I", ["i"] = "i",
		["J"] = "Ј", ["j"] = "ј",
		["K"] = "Κ", ["k"] = "κ",
		["L"] = "L", ["l"] = "ӏ",
		["M"] = "Μ", ["m"] = "м",
		["N"] = "Ν", ["n"] = "п",
		["O"] = "Ο", ["o"] = "ο",
		["P"] = "Ρ", ["p"] = "р",
		["Q"] = "Ԛ", ["q"] = "ԛ",
		["R"] = "Ŗ", ["r"] = "ᴦ",
		["S"] = "Ș", ["s"] = "ş",
		["T"] = "Τ", ["t"] = "τ",
		["U"] = "Џ", ["u"] = "џ",
		["V"] = "Ѵ", ["v"] = "ѵ",
		["W"] = "Ԝ", ["w"] = "ԝ",
		["X"] = "Χ", ["x"] = "x",
		["Y"] = "Υ", ["y"] = "ƴ",
		["Z"] = "Ζ", ["z"] = "ᴢ"
	}
	
	local function translate(String)
		local translatedString = ""
		for i = 1, #String do
			local l = String:sub(i, i)
			if letters[l] then
				translatedString = translatedString .. letters[l]
			else
				translatedString = translatedString .. l
			end
		end
		return translatedString
	end
	
	local function sendchat(msg)
		if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
			game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(translate(msg),"All")
		else
			chat:SendAsync(translate(msg))
		end
	end
	
	ExitButton.MouseButton1Down:Connect(function()
		ScreenGui:Destroy()
	end)
	
	BypassTextButton.MouseButton1Down:Connect(function()
		local success, errormessage = pcall(function()
			sendchat(tostring(TextInsertTextbox.Text))
		end)
	end)
end
coroutine.wrap(RPBY_fake_script)()
