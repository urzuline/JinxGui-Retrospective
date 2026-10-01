
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message", game:GetService("CoreGui"))
	notLoaded.Text = 'Jinx scripts is waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

if JinxScripts then
	print("Jinx scripts is already running!")
	return
end

pcall(function() getgenv().JinxScripts = true end)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer;


local GuiLoadBegin = tick()
local NotificationGui = Instance.new("ScreenGui")
local Template = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Style2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local List = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UIStroke = Instance.new("UIStroke")
local UIStroke2 = Instance.new("UIStroke")
NotificationGui.Name = "Simple Notification Gui"
NotificationGui.Parent = game.CoreGui
Template.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Template.BackgroundTransparency = 0.870
Template.Size = UDim2.new(1, 0, 0.0524861887, 0)
Template.Visible = false
Template.Font = Enum.Font.GothamBlack
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextScaled = true
Template.TextSize = 14.000
Template.TextStrokeTransparency = 0.900
Template.TextWrapped = true
UICorner.Parent = Template
UIStroke.Parent = Template
UIStroke.ApplyStrokeMode = "Border"
UIStroke.Color = Color3.new(0,0,0)
UIStroke.Thickness = 3.5
UIStroke.Transparency = 0.5
UICorner.CornerRadius = UDim.new(0, 324234)
UICorner.Parent = Template
Style2.Name = "Style2"
Style2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Style2.BackgroundTransparency = 0.870
Style2.Position = UDim2.new(0, 0, 0.0690607727, 0)
Style2.Size = UDim2.new(1, 0, 0.11139226, 0)
Style2.Visible = false
UICorner_2.CornerRadius = UDim.new(0, 324234)
UICorner_2.Parent = Style2
Title.Name = "Title"
Title.Parent = Style2
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0.293223858, 0)
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.900
Title.TextWrapped = true
Text.Name = "Text"
Text.Parent = Style2
Text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0, 0, 0.293223888, 0)
Text.Size = UDim2.new(1, 0, 0.706776023, 0)
Text.Font = Enum.Font.GothamBlack
Text.Text = "Notification"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextStrokeTransparency = 0.900
Text.TextWrapped = true
List.Name = "List"
List.Parent = NotificationGui
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.BorderColor3 = Color3.fromRGB(27, 42, 53)
List.Position = UDim2.new(0.321767807, 0, 0.0912827775, 0)
List.Size = UDim2.new(0.355672836, 0, 0.62039417, 0)
UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 12)
UIStroke2.Parent = Style2
UIStroke2.Parent = Style2
UIStroke2.ApplyStrokeMode = "Border"
UIStroke2.Color = Color3.new(0,0,0)
UIStroke2.Thickness = 3.5
UIStroke2.Transparency = 0.5
local Debris = game:GetService("Debris");
function MakeNotification(Name,Text,Time)
	local Template = Template:Clone()
	Template.Parent = List
	Template.Text = Text
	Template.Name = Name
	Template.Visible = true
	Debris:AddItem(Template, Time)
end
function MakeStyle2Notification(Name,Text,Time)
	local Style2Template = Style2:Clone()
	Style2Template.Parent = List
	Style2Template.Title.Text = Name
	Style2Template.Name = Name
	Style2Template.Text.Text = Text
	Style2Template.Visible = true
	Debris:AddItem(Style2Template, Time)

end
-- MakeStyle2Notification(Title, Text, time)
-- MakeNotification(title/nothing important here, text, time)

MakeStyle2Notification("Jinx Gui", "Starting up Gui, please wait until this is gone and the gui will appear.", 3)
function LoadingGui()
	return nil
end

print(">")
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))
print(">>")
if lib then
	lib = lib()
	print(">>>")
end
local GuiLibraryInstance = lib.new("Jinx's Booga Booga Gui", 5013109572)
local Theme = GuiLibraryInstance:addPage("Theme", 5012544693) -- themes and misc
local ThemesColorSection = Theme:addSection("themes and stuff")
local ThemeColors = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),
	TextColor = Color3.fromRGB(255, 255, 255)
}
local ExtraSection = Theme:addSection("Extra") -- end of themes and Extra
local GameTeleportPage = GuiLibraryInstance:addPage("Booga Verions") -- GuiLibraryInstance Versions
local GameVersionsSection = GameTeleportPage:addSection("Booga Verisons") -- end of GuiLibraryInstance GameVersionsSections
local Booga2019Page = GuiLibraryInstance:addPage("Booga 2019") -- 2019 page
local Automation2019Section = Booga2019Page:addSection("Automation")
local PlayerSection2019 = Booga2019Page:addSection("Player Mods")
local Combat2019Section = Booga2019Page:addSection("Combat")
local TeleportBypass2019 = Booga2019Page:addSection("2019 teleport areas") -- end of 2019 page
local ClassicHacksPage = GuiLibraryInstance:addPage("Classic/2018") -- classic page
local ClassicAutomationSection = ClassicHacksPage:addSection("Automation")
local ClasicFarmingSection = ClassicHacksPage:addSection("Farming")
local ClassicPlayerSection = ClassicHacksPage:addSection("Player Mods")
local ClassicCombatSection = ClassicHacksPage:addSection("Combat")
local ClassicTeleportationSection = ClassicHacksPage:addSection("Tp Areas")
local ClassicCosmeticSection = ClassicHacksPage:addSection("Cosmetic") -- end of classic page
local Hybrid = GuiLibraryInstance:addPage("Hybrid") -- hybrid page
local HybridAutomationSection = Hybrid:addSection("Automation")
local HybridPlayerSection = Hybrid:addSection("Playermods")
local HybridCombatSection = Hybrid:addSection("Combat")
local HybridFarmingSection = Hybrid:addSection("Farming") -- end og hybrid
local HybridMiscSection = Hybrid:addSection("Misc")
local BoogaDigPage = GuiLibraryInstance:addPage("Booga Dig") -- dig page
local BoogaDigAutomationSection = BoogaDigPage:addSection("Automation")
local CreditsPage = GuiLibraryInstance:addPage("Credits", 5012544693) -- credits 
local DeveloperCreditSection = CreditsPage:addSection("Credits to Script Creators")
local LibraryCreditSection = CreditsPage:addSection("Credits to GUI Creator") 
local UpdateVersionSection = CreditsPage:addSection("UpdateVersion") -- end of credits
local DeveloperOnlyPage = GuiLibraryInstance:addPage("Dev Only") -- dev only
local DeveloperLoggingSection = DeveloperOnlyPage:addSection("Logging")
local DeveloperClearLogSection = DeveloperOnlyPage:addSection("Clear Logs") -- end of dev only
local ExploiterLog = ("")


DeveloperLoggingSection:addTextbox("Exploiter name", "None", function(t,f)
	if f then
		ExploiterLog = t
		wait(0.5)
		notingame = "ready"
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name:lower():find(ExploiterLog:lower()) then
				local reportedname = v.name
				local url =
					"https://discord.com/api/webhooks/989429394839834634/-x1eTbvOZce3s7SQJi6U7cyK8yMo5P1jrIqBYBkS2pPO2woKF-UcDLZgesjg0a2e4Dgd"
				local data = {
					["embeds"] = {
						{
							["title"] = "***Reported Exploiter! (Dev Area)***",
							["description"] = "Username: **"..reportedname.."** Sent by: **"..Player.Name.."**",
							["type"] = "rich",
							["color"] = tonumber(0x7269da),
							["image"] = {
								["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
									tostring(Player.Name)
							}
						}
					}
				}
				local newdata = game:GetService("HttpService"):JSONEncode(data)

				local headers = {
					["content-type"] = "application/json"
				}
				request = http_request or request or HttpPost or syn.request
				local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
				request(abcdef)
				MakeStyle2Notification("SentLog","Sent the report of "..reportedname, 5)
				notingame = "welpp"
			end
		end
		if notingame == "ready" then
			MakeStyle2Notification("FailLog","The report of "..ExploiterLog.." did not go through make sure you spell their name correctly", 5)
			notingame = "ready"
		end
	end
end)
local NotificationText = ""
DeveloperLoggingSection:addTextbox("Notification", "None", function(t,f)
	if f then
		NotificationText = t
		MakeNotification("NotificationDev",NotificationText, 5)
		MakeStyle2Notification("NotificationDev2",NotificationText, 3)
	end
end)

DeveloperClearLogSection:addButton("Clear console", function()
	number = 1
	for i= 1, 50 do
		print("Clearing Console "..number)
		number = number + 1
	end
	MakeStyle2Notification("Cleared Console","Console has been cleared. Press F-9 to see the new logs.", 3)
end)


LoadingGui()

_G.SettingsTable = {
	ModChecker,
	KillAurar,
	OneTapKey,
	HybirdPickup,
	AutoPickupKeybind
}

local SettingsFile = "Jinx_Gui_settings.txt"

function LoadSettings()
	local HttpService = game:GetService("HttpService");
	if (readfile and isfile and isfile(SettingsFile)) then
		_G.SettingsTable = HttpService:JSONDecode(readfile(SettingsFile));
	end
end

function SaveSettings()
	local json;
	local HttpService = game:GetService("HttpService");
	if (writefile) then 
		json = HttpService:JSONEncode(_G.SettingsTable);
		writefile(SettingsFile, json);
	else
		MakeNotification("Save Settings", "Sorry settings cannot be saved! your executor doesn't support it!", 5)
	end
end

-- LoadSettings() once u got the SettingsFile to load it
-- SaveSettings() to create it and save it

spawn(function()
	LoadSettings()
end)

LoadingGui()

local Mouse = Player:GetMouse()
function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

local rainbowarmor = true
function MakePartRainbow(Part)
	spawn(function()
		while rainbowarmor == true do
			for i = 0,1,0.005 do
				Part.Color = Color3.fromHSV(i,1,1)
				wait()
			end
		end

	end)
end

LoadingGui()

local rainbowperson = true
function MakeskinRainbow(Part)
	spawn(function()
		while rainbowperson == true do
			for i = 0,1,0.005 do
				Part.Color = Color3.fromHSV(i,1,1)
				wait()
			end
		end
	end)
end

LoadingGui()

local AutoPickupEnabled = false
local AutoPickupFunction = function()
	AutoPickupEnabled = true
	spawn(function()
		while wait() do
			if not AutoPickupEnabled then
				return
			end
			local FoundItems;
			local myCF = Player.Character.HumanoidRootPart.Position
			local FoundItems = {}
			for i,v in pairs(workspace.Items:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
					Distance = (myCF - v.Position).magnitude
					if Distance < 40 then
						table.insert(FoundItems,v)
					end
				elseif v.ClassName == "Model" then
					if v.PrimaryPart ~= nil then
						Distance = (myCF - v.PrimaryPart.Position).magnitude
						if Distance < 40 then
							table.insert(FoundItems,v)
						end
					end
				end
			end
			for i,v in pairs(FoundItems) do
				spawn(function()
					game.ReplicatedStorage.Events.Pickup:InvokeServer(v)
				end)
			end
		end
	end)
end


LoadingGui()

local autopickupclassic1 = false
local autopickupclassic2 = function()
	autopickupclassic1 = true
	spawn(function()
		while wait() do
			if not autopickupclassic1 then
				return
			end
			local FoundItems;
			local myCF = Player.Character.HumanoidRootPart.Position
			local FoundItems = {}
			for i,v in pairs(workspace.Items:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
					Distance = (myCF - v.Position).magnitude
					if Distance < 40 then
						table.insert(FoundItems,v)
					end
				elseif v.ClassName == "Model" then
					if v.PrimaryPart ~= nil then
						Distance = (myCF - v.PrimaryPart.Position).magnitude
						if Distance < 35 then
							table.insert(FoundItems,v)
						end
					end
				end
			end
			for i,v in pairs(FoundItems) do
				spawn(function()
					game.ReplicatedStorage.Events.PickupItem:InvokeServer(v)
				end)
			end
		end
	end)
end

LoadingGui()

local Checkformoderation1 = false
local Checkformoderation2 = function()
	Checkformoderation1 = true
	spawn(function()
		while wait(10) do
			if not Checkformoderation1 then
				return
			end
			for i,v in pairs(game:GetService("Players"):GetChildren()) do
				if v.name == "handykiller123" or v.name == "Archalyst" or v.name == "Cryptvx" or v.name == "xAlex_zx" or v.name == "amRandomizer" or v.name == "MasterSquidReal" or v.name == "1Privates1" or v.name == "FOXX8832" or v.name == "firebobby2" or v.name == "007yongyu" or v.name == "Koderex" then
					MakeStyle2Notification("Mod Check","Oh wow! there seems to be a mod in your server!", 1)
					MakeNotification("Mod check", "The Mod that joined you is "..v.name, 2)
				end
			end
		end
	end)
end

LoadingGui()

local HybridAutofarmingToggle = false
local HybridAutoFarmFunction = function()
	HybridAutofarmingToggle = true
	spawn(function()
		while wait(10) do
			if not HybridAutofarmingToggle then
				return
			end
			local playernumber = 0
			for i,v in pairs(game.Players:GetChildren()) do
				playernumber =  playernumber + 1
			end
			if playernumber <= 5 then
				spawn(function()
					for i,v in pairs(game:GetService("Workspace").Resources:GetChildren()) do
						spawn(function()
							local args = {
								[1] = {
									["drawTime"] = math.huge,
									["hit"] = v,
									["location"] = Vector3.new(790.3896484375, -2.9496347904205322, -1676.625732421875),
									["weaponName"] = "The Meatmaker",
									["id"] = 1
								}
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
						end)
						wait(0.0000000000000000000000000000000000000000000000000001)
					end
				end)
				spawn(function()
					for i,v in pairs(game:GetService("Workspace").Critters:GetChildren()) do
						spawn(function()
							local args = {
								[1] = {
									["drawTime"] = math.huge,
									["hit"] = v,
									["location"] = Vector3.new(790.3896484375, -2.9496347904205322, -1676.625732421875),
									["weaponName"] = "The Meatmaker",
									["id"] = 1
								}
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
						end)
					end
				end)
				spawn(function()
					for i,v in pairs(game:GetService("Workspace").Sharks:GetChildren()) do 
						spawn(function()
							local args = {
								[1] = {
									["drawTime"] = math.huge,
									["hit"] = v,
									["location"] = Vector3.new(790.3896484375, -2.9496347904205322, -1676.625732421875),
									["weaponName"] = "The Meatmaker",
									["id"] = 1
								}
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
						end)
					end
				end)
				wait(5)
				spawn(function()
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v.name == "Adurite Deposit" or v.name == "Moonstone Meteor Rock" or v.name == "Moonstone Meteor Core" or v.name == "Meteor Rock" or v.name == "Meteor Core" or v.name == "Stone Crag" or v.name == "Coal Node" or v.name == "Iron Node" or v.name == "Gold Node" or v.name == "Adurite Crag" then
							spawn(function()
								local args = {
									[1] = {
										["drawTime"] = math.huge,
										["hit"] = v,
										["location"] = Vector3.new(790.3896484375, -2.9496347904205322, -1676.625732421875),
										["weaponName"] = "The Meatmaker",
										["id"] = 1
									}
								}
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
							end)
						end
					end
				end)
			end
		end
	end)
end

LoadingGui()

for theme, color in pairs(thThemeColorsemes) do
	ThemesColorSection:addColorPicker(theme, color, function(color3)
		GuiLibraryInstance:setTheme(theme, color3)
	end)
end

LoadingGui()

ExtraSection:addKeybind("Toggle GUI", Enum.KeyCode.Tab, function()
	GuiLibraryInstance:toggle()
end, function()
	MakeNotification("aw1ewd2aw2d1ada1","Gui keybind changed", 2)
end)

LoadingGui()

ExtraSection:addToggle("Check for mods", nil,function(bool)
	_G.SettingsTable.ModChecker = bool
	SaveSettings()
	if bool then
		MakeStyle2Notification("Mod Check", "Mod Check is Enabled", 5)
		return Checkformoderation2()
	end
	MakeStyle2Notification("Mod Check", "Mod Check is Disabled", 5)
	Checkformoderation1 = false
end)

LoadingGui()

-- end of start page
GameVersionsSection:addButton("2019 Void", function()
	MakeNotification("Tpnotif5","Going to 2019/void, Please wait.", 5)
	game:GetService('TeleportService'):Teleport(8131331959)
end)

LoadingGui()

GameVersionsSection:addButton("2019 Overworld", function()
	MakeNotification("Tpnotif4","Going to 2019, Please wait.", 5)
	game:GetService('TeleportService'):Teleport(8131316275)
end)

LoadingGui()

GameVersionsSection:addButton("Classic/2018", function()
	MakeNotification("Tpnotif3","Going to Classic, Please wait.", 5)
	game:GetService('TeleportService'):Teleport(4787629450)
end)

LoadingGui()

GameVersionsSection:addButton("Hybrid Overworld", function()
	MakeNotification("Tpnotif2","Going to Hybrid, Please wait.", 5)
	game:GetService('TeleportService'):Teleport(5901346231)
end)

LoadingGui()

GameVersionsSection:addButton("Hybrid Aether (must already be in hybrid)", function()
	MakeNotification("Tpnotif","Going to Hybrid/Aether, Please wait.", 5)
	me = Player.Character
	me.HumanoidRootPart.CFrame = CFrame.new(-22.1878376, 4.04931736, 11.7157402)
end)

LoadingGui()

GameVersionsSection:addButton("Hybrid Void (must have keycard mojo and be in hyrbid)", function()
	MakeNotification("Tpnotif6","Going to Hybrid/void, Please wait.", 5)
	me = Player.Character
	me.HumanoidRootPart.CFrame = CFrame.new(4777.11328, -13.1894293, -36.5409508)
end)

LoadingGui()

GameVersionsSection:addButton("Booga Dig", function()
	MakeNotification("Tpnotif2","Going to Booga Dig, Please wait.", 5)
	game:GetService('TeleportService'):Teleport(1583450123)
end)

LoadingGui()

-- end of verions
wait(0.5)
local healItem = ""
local healbelow
local heal = false
local healStart = function()
	heal = true
	spawn(function()
		while wait() do
			if not heal then
				return
			end
			local e = Player.character.Humanoid.Health
			if e <= healbelow then
				game.ReplicatedStorage.Events.UseBagItem:FireServer(healItem)
				wait(2)
			end
		end
	end)
end

LoadingGui()

Automation2019Section:addToggle("Auto-heal", nil, function(bool)
	if bool then
		if healItem == "" then 
			MakeStyle2Notification("Add heal","You need to add a heal to heal, dummy.", 1)
		else
			MakeStyle2Notification("Auto-Heal","Auto-Heal is now enabled.", 5)
		end
		return healStart()
	end
	MakeStyle2Notification("Auto-Heal","Auto-Heal is now disabled.", 5)
	heal = false
end)

LoadingGui()

Automation2019Section:addSlider("Auto heal below", 0, 1, 100, function(value)
	healbelow = value
end)

LoadingGui()

Automation2019Section:addTextbox("Heal Item Name","None", function(t, f)
	if f then 
		healItem = t
	end
end)

LoadingGui()

-- end of key press heal
local rainboww = false
local rainbowwstart = function()
	rainboww = true
	spawn(function()
		while wait() do 
			if not rainboww then
				return
			end
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Yellow")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Green")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Red")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Orange")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Lavendar")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Essence")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Mint")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Pink")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Black")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Blue")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Lime")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Grey")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Maroon")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
			game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("White")
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
		end
	end)
end

LoadingGui()

local player = Player
local TpAwayThreshold 
local saveplayer = false
local saveplayerstart = function()
	saveplayer = true
	spawn(function()
		while wait() do 
			if not saveplayer then
				return
			end
			if player.character.Humanoid.Health <= TpAwayThreshold then
				playerHead = player.Character.HumanoidRootPart;
				for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
					if v.Name == "TouchInterest" and v.Parent then 
						firetouchinterest(playerHead, v.Parent, 0)
						wait(0.1)
						firetouchinterest(playerHead, v.Parent, 1)
						break;

					end

					wait(1.48)
					playerHead.CFrame = game:GetService("Workspace").Resources["Swoll Tree"].Reference.CFrame
					wait(0.02)
					playerHead.CFrame = CFrame.new(-1688,-3,-2537)
				end
			end
		end
	end)
end

LoadingGui()

Automation2019Section:addToggle("Save from death",nil,function(bool)
	if bool then
		MakeStyle2Notification("Savedeath","Save from death is  now enabled.", 5)
		MakeNotification("easdwa", "Chlo helped with this!", 2)
		return saveplayerstart()
	end
	MakeStyle2Notification("Savedeath","Save from death is now disabled.", 5)
	saveplayer = false
end)

LoadingGui()

-- end of save from death
Automation2019Section:addSlider("Save from Death Amount", 0,1,100, function(value)
	TpAwayThreshold = value
end)

LoadingGui()

-- end of save from death slider 
PlayerSection2019:addToggle("Rainbow", nil, function(bool)
	if bool then 
		MakeNotification("bdb1231wqb12312awda","Rainbow is now enabled.", 5)
		return rainbowwstart()
	end
	MakeNotification("bdb123wda","Rainbow is now disabled.", 5)
	rainboww = false
end)

LoadingGui()

PlayerSection2019:addButton("Auto pick up", function()
	--- 2019 AutoPickup
	MakeNotification("aw1ewd2aw2d1ada1","AutoPickup is now on", 5)

    if not Player.Character then
        return
    end

    local ItemFolder;
    for k, Folder in pairs(workspace:GetDescendants()) do
        if not Folder:IsA("Folder") or Folder.Name:lower():find("item") then
            continue
        end
        ItemFolder = Folder
        break
    end
    ItemFolder = ItemFolder or workspace
    
    local PlayerPosition = Player.Character:GetPivot().Position;
    for k, v in pairs(ItemFolder:GetChildren()) do
        if not v:IsA("Model") and not v:IsA("BasePart") then
            continue
        end
        local ItemPosition = v:GetPivot().Position
        local Distance = (ItemPosition - PlayerPosition).Magnitude
        if Distance > _G.PickupRange then
            continue
        end;
        game.ReplicatedStorage.Events.Pickup:FireServer(v)
    end


	MakeNotification("aw1ewd2aw2d1ada1","AutoPickup is now off.", 5)
end)

LoadingGui()

PlayerSection2019:addButton("Speed", function()
	MakeNotification("aw1ewd2aw2d1ada1","Speed is now on.", 5)
	_G.HackedWalkSpeed = 18.4
	if not Player.Character then
        return
    end
	local Hum = Player.Character.Humanoid
	Hum:GetPropertyChangedSignal("WalkSpeed"):connect(function()
		Hum.WalkSpeed = _G.HackedWalkSpeed
	end)
	Hum.WalkSpeed = _G.HackedWalkSpeed

end)

LoadingGui()

-- end of speed
local getClosest = function()
	local Players = game.Players
	local LocalPlayer = Players.LocalPlayer
	local Character = LocalPlayer.Character
	local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
	if not (Character or HumanoidRootPart) then
		return
	end
	local TargetDistance = math.huge
	local Target
	for i, v in ipairs(Players:GetPlayers()) do
		if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			local TargetHRP = v.Character.HumanoidRootPart
			local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
			if mag < TargetDistance then
				TargetDistance = mag
				Target = v
			end
		end
	end
	return Target
end

LoadingGui()

local kill = false
local startKill = function()
	kill = true
	spawn(function()
		while wait() do
			if not kill then
				return
			end
			local HR = Player.Character.HumanoidRootPart.Position
			local CL = getClosest()
			local PT = CL.Character.HumanoidRootPart.Position
			if (HR - PT).magnitude < 25 then
				local PLname = CL.name
				local wChar = game.Workspace[CL.Name]
				if PLname == "jinxcard" or PLname == "TheDarkHeross" or PLname == "Typlcalios" or PLname == "SupernaturalSalt" or PLname == "awerfqwergs" or PLname == "Smashton42" or PLname == "ChloForgor" or PLname == "Gh0st_Developer" then 
					MakeNotification("DevKiller", "Your really tried to kill the devs eh?",5)
				else
					local SwingTool = game:GetService("ReplicatedStorage").Events.SwingTool
					SwingTool:FireServer({
						wChar.Head

					})
				end
			end
		end
	end)
end

LoadingGui()

Combat2019Section:addToggle("Kill-aura", nil, function(bool)
	if bool then
		MakeNotification("bdbwqb12312","Kill-Aura is now enabled.", 5)
		return startKill()
	end
	MakeNotification("bdbwqb12312awda","Kill-Aura is now disabled.", 5)
	kill = false 
end)

LoadingGui()

-- end of kill aura
Combat2019Section:addButton("Auto wall Others", function()
	for i,v in pairs(game.Players:GetChildren()) do

		local mouse = Player:GetMouse()
		local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
		Torso = v.Character.UpperTorso
		b = Torso.Position + Torso.CFrame.lookVector * 10
		if v.name == Player.name or v.name == "Typlcalios" or v.name == "jinxcard" or v.name == "TheDarkHeross" or v.name == "SupernaturalSalt" then
		else
			local aa = b.x + 7
			local ee = b.y - 2
			local cc = b.z
			local aaa = b.x - 7
			local aaaa = b.x
			local cccc = b.z + 7
			local ccccc = b.z - 7
			local k_1 = "Wood Wall"
			local k_2 = CFrame.new(aaaa, ee, cccc, -0.99862951, 9.53660761e-12, 0.0523360483, -9.54969524e-12, 1, 2.71050543e-20, -0.0523360483, 4.99793241e-13, -0.99862951)
			local k_3 = 177
			Event:FireServer(k_1, k_2, k_3)
			local l_2 = CFrame.new(aaaa, ee, ccccc, -0.99862951, 9.53660761e-12, 0.0523360483, -9.54969524e-12, 1, 2.71050543e-20, -0.0523360483, 4.99793241e-13, -0.99862951)
			Event:FireServer(k_1, l_2, k_3)
			local m_2 = CFrame.new(aaa, ee, cc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
			Event:FireServer(k_1, m_2, k_3)
			local n_2 = CFrame.new(aa, ee, cc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
			Event:FireServer(k_1, n_2, k_3)
		end 
	end
	MakeNotification("aw1ewd2aw2d1ada1","You have trapped everyone.", 5)
end)

LoadingGui()

-- end of auto wall
Combat2019Section:addButton("Auto God and invis", function()
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("God Halo")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.UseBagItem:FireServer("God Halo")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("God Chestplate")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.UseBagItem:FireServer("God Chestplate")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("God Legs")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.UseBagItem:FireServer("God Legs")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("God Rock")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("God Pick")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("God Axe")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.EquipTool:FireServer(1)
	end
	MakeNotification("aw1ewd2aw2d1ada1","You now have full god armour on.", 5)
end)

LoadingGui()

-- end of auto craft & invis tool
Combat2019Section:addButton("Delete Name and Health ui", function()
	Player.Character.HumanoidRootPart.NameGui:Destroy()
	wait(.05)
	Player.Character.HumanoidRootPart.HealthGui:Destroy()
	wait(.05)
	MakeNotification("aw1ewd2aw2d1ada1","Your health and name ui has been deleted.", 5)
end)

LoadingGui()

-- end of Delete Name and health ui
local tpplayer2019 = ""
TeleportBypass2019:addButton("Tp to player", function()
	playerHead = Player.Character.HumanoidRootPart;
	for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
		if v.Name == "TouchInterest" and v.Parent then 
			firetouchinterest(playerHead, v.Parent, 0)
			wait(0.1)
			firetouchinterest(playerHead, v.Parent, 1)
			break;
		end
	end
	wait(1.48)
	playerHead.CFrame = game:GetService("Workspace").Resources["Swoll Tree"].Reference.CFrame
	wait(0.02)
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v.Name:lower():find(tpplayer2019:lower()) then
			playerHead.CFrame = v.Character.HumanoidRootPart.CFrame
		end
	end
end)

LoadingGui()

-- end of tp player
TeleportBypass2019:addTextbox("Target Player Name",  "None", function(t, f)
	if f then
		tpplayer2019 = t
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name:lower():find(tpplayer2019:lower()) then
				local playername = v.name
				MakeNotification("Target Player1 ", "Got the Target "..playername, 5)
			end
		end
	end
end)

LoadingGui()

-- end of target tp player name
TeleportBypass2019:addButton("Volcano", function()
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(1146.60938, -85.5, 1193.7251)
end)

LoadingGui()

-- end of val tp
TeleportBypass2019:addButton("Sun Island", function()
	playerHead = player.Character.HumanoidRootPart;
	for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
		if v.Name == "TouchInterest" and v.Parent then 
			firetouchinterest(playerHead, v.Parent, 0)
			wait(0.1)
			firetouchinterest(playerHead, v.Parent, 1)
			break;

		end

		wait(1.48)
		playerHead.CFrame = game:GetService("Workspace").Resources["Swoll Tree"].Reference.CFrame
		wait(0.02)
		playerHead.CFrame = CFrame.new(-558,387,-1191)
	end
end)

LoadingGui()

-- end of sun island tp
TeleportBypass2019:addButton("Feather Island", function()
	playerHead = player.Character.HumanoidRootPart;
	for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
		if v.Name == "TouchInterest" and v.Parent then 
			firetouchinterest(playerHead, v.Parent, 0)
			wait(0.1)
			firetouchinterest(playerHead, v.Parent, 1)
			break;

		end

		wait(1.48)
		playerHead.CFrame = game:GetService("Workspace").Resources["Swoll Tree"].Reference.CFrame
		wait(0.02)
		playerHead.CFrame = CFrame.new(-189,168,-664)
	end
end)

LoadingGui()

-- end of feather island tp
TeleportBypass2019:addButton("Crystal Island", function()
	playerHead = player.Character.HumanoidRootPart;
	for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
		if v.Name == "TouchInterest" and v.Parent then 
			firetouchinterest(playerHead, v.Parent, 0)
			wait(0.1)
			firetouchinterest(playerHead, v.Parent, 1)
			break;

		end

		wait(1.48)
		playerHead.CFrame = game:GetService("Workspace").Resources["Swoll Tree"].Reference.CFrame
		wait(0.02)
		playerHead.CFrame = CFrame.new(-1193,319,-1129)
	end
end)

LoadingGui()

-- end of Crystal Island tp
TeleportBypass2019:addButton("Old god", function()
	playerHead = player.Character.HumanoidRootPart;
	for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
		if v.Name == "TouchInterest" and v.Parent then 
			firetouchinterest(playerHead, v.Parent, 0)
			wait(0.1)
			firetouchinterest(playerHead, v.Parent, 1)
			break;

		end

		wait(1.48)
		playerHead.CFrame = game:GetService("Workspace").Resources["Swoll Tree"].Reference.CFrame
		wait(0.02)
		playerHead.CFrame = CFrame.new(-1199,18,-1001)
	end
end)

LoadingGui()

-- end of old god tp
TeleportBypass2019:addButton("Void big Island", function()
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(-601.013733, 0.634208441, -3.2822094)
end)

LoadingGui()

-- end of 2019 page
-- GuiLibraryInstance:SelectPage(GuiLibraryInstance.pages[1], true)
local ClassicAutoPickupKeybind = "o" 
ClassicAutomationSection:addButton("Auto Pickup", function()
	local mouse = Player:GetMouse();
	mouse.KeyDown:connect(function(key)
		if key:lower() == ClassicAutoPickupKeybind:lower() then 
			local FoundItems;
			local myCF = Player.Character.HumanoidRootPart.Position
			local FoundItems = {}
			for i,v in pairs(workspace.Items:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
					Distance = (myCF - v.Position).magnitude
					if Distance < 40 then
						table.insert(FoundItems,v)
					end
				elseif v.ClassName == "Model" then
					if v.PrimaryPart ~= nil then
						Distance = (myCF - v.PrimaryPart.Position).magnitude
						if Distance < 35 then
							table.insert(FoundItems,v)
						end
					end
				end
			end
			for i,v in pairs(FoundItems) do
				spawn(function()
					game.ReplicatedStorage.Events.PickupItem:InvokeServer(v)
				end)
			end
		end
	end)
end)

LoadingGui()

ClassicAutomationSection:addTextbox("Auto-pickup", ClassicAutoPickupKeybind, function(t,f)
	if f then
		ClassicAutoPickupKeybind = t:lower()
	end
end)    

LoadingGui()

ClassicAutomationSection:addToggle("Auto Pickup",nil, function(bool)
	if bool then 
		MakeStyle2Notification("Auto Pickup","Auto Pickup is Enabled.", 5)
		return autopickupclassic2()
	end
	MakeStyle2Notification("Auto Pickup","Auto Pickup is Disabled.", 5)
	autopickupclassic1 = false
end)

LoadingGui()

ClasicFarmingSection:addButton("Auto place Plant box", function()
	MakeNotification("aw1ewd2aw2d1ada1","Started Placing Plant Boxes.", 5)
	local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
	h = Player.Character.LowerTorso.Position
	local aa = h.x + 14
	local bb = h.y - 2
	local cc = h.z 
	local lol_1 = "Plant Box"
	local n_2 = CFrame.new(aa, bb, cc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	local lol_3 = 270
	Event:FireServer(lol_1, n_2, lol_3)
	wait()
	local aca = h.x 
	local ccc = h.z 
	local c_2 = CFrame.new(aca, bb, ccc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, c_2, lol_3)
	wait()
	local acaa = h.x + 7
	local ccca = h.z 
	local a_2 = CFrame.new(acaa, bb, ccca, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, a_2, lol_3)
	wait()
	local acaab = h.x + 21
	local cccab = h.z 
	local ac_2 = CFrame.new(acaab, bb, cccab, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ac_2, lol_3)
	wait()
	local acaac = h.x + 28
	local cccac = h.z 
	local az_2 = CFrame.new(acaac, bb, cccac, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, az_2, lol_3)
	wait()
	local acaad = h.x + 35
	local cccad = h.z 
	local af_2 = CFrame.new(acaad, bb, cccad, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, af_2, lol_3)
	wait()
	local ccv = h.z - 7
	local ah_2 = CFrame.new(acaa, bb, ccv, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ah_2, lol_3)
	wait()
	local aacx = h.x 
	local ahx_2 = CFrame.new(aacx, bb, ccv, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ahx_2, lol_3)
	wait()
	local ahxf_2 = CFrame.new(aa, bb, ccv, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ahxf_2, lol_3)
	wait()
	local ahxfv_2 = CFrame.new(acaab, bb, ccv, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ahxfv_2, lol_3)
	wait()
	local ahxfvg_2 = CFrame.new(acaac, bb, ccv, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ahxfvg_2, lol_3)
	wait()
	local ahxfvgt_2 = CFrame.new(acaad, bb, ccv, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ahxfvgt_2, lol_3)
	wait()
	local aacxfvgt = h.x  
	local ppd = h.z - 14
	local ahxfvgt_2 = CFrame.new(aacxfvgt, bb, ppd, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ahxfvgt_2, lol_3)
	wait()
	local ffg_2 = CFrame.new(acaa, bb, ppd, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ffg_2, lol_3)
	wait()
	local ttg_2 = CFrame.new(aa, bb, ppd, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ttg_2, lol_3)
	wait()
	local jjg_2 = CFrame.new(acaab, bb, ppd, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, jjg_2, lol_3)
	wait()
	local iig_2 = CFrame.new(acaac, bb, ppd, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, iig_2, lol_3)
	wait()
	local ppg_2 = CFrame.new(acaad, bb, ppd, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, ppg_2, lol_3)
	wait()
	local kkx = h.x 
	local kkm = h.z - 21
	local kkx_2 = CFrame.new(kkx, bb, kkm, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, kkx_2, lol_3)
	wait()
	local kkz_2 = CFrame.new(acaa, bb, kkm, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, kkz_2, lol_3)
	wait()
	local vvv_2 = CFrame.new(aa, bb, kkm, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, vvv_2, lol_3)
	wait()
	local sss_2 = CFrame.new(acaab, bb, kkm, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, sss_2, lol_3)
	wait()
	local uwu_2 = CFrame.new(acaac, bb, kkm, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, uwu_2, lol_3)
	wait()
	local lol_2 = CFrame.new(acaad, bb, kkm, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
	Event:FireServer(lol_1, lol_2, lol_3)
	MakeNotification("aw1ewd2aw2d1ada1","Finished Placing Plant Boxes.", 5)
end)

LoadingGui()

-- end of auto place plant box
local PlantName
_G.plant = function()
	for _, v in pairs(workspace.Deployables:GetChildren()) do
		if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 500 then
			game.ReplicatedStorage.Events.InteractStructure:FireServer(v, PlantName)
		end
	end
end

LoadingGui()

ClasicFarmingSection:addButton("Auto Plant", function()
	_G.plant()
	MakeStyle2Notification("Auto-Plant","Finished Planting "..PlantName, 10)
end)

LoadingGui()

-- end of auto plant
ClasicFarmingSection:addTextbox("Plant Name", "None", function(t,f)
	if f then
		PlantName = t
		MakeStyle2Notification("Plant Name","You have typed "..PlantName.." as the plant.",10)
	end
end)

LoadingGui()

-- end of Plant Name
local speedamount
ClassicPlayerSection:addButton("Speed", function()
	MakeStyle2Notification("Player Speed","Your Speed is now "..speedamount, 5)
	if not Player.Character then
        return
    end
	local Hum = Player.Character.Humanoid
	Hum:GetPropertyChangedSignal("WalkSpeed"):connect(function()
		Hum.WalkSpeed = _G.HackedWalkSpeed
	end)
	Hum.WalkSpeed = _G.HackedWalkSpeed
end)
-- end of speed

ClassicPlayerSection:addSlider("speed amount", 0,16,30, function(value)
	_G.HackedWalkSpeed = value
end)

LoadingGui()

ClassicPlayerSection:addButton("Classic Market", function()
	Player.PlayerGui.MainGui.LeftPanel.Market.Visible = true
	Player.PlayerGui.MainGui.RightPanel.Market.Visible = true
	spawn(function()
		while wait(1/999999) do
			Player.PlayerGui.MainGui.RightPanel.Market.List.CanvasSize = UDim2.new(0,0,66,1452)
		end
	end)
end)
ClassicPlayerSection:addButton("no data save", function()
	spawn(function()
		while wait(0.00001) do
			game:GetService("ReplicatedStorage").Events.ToggleUserSetting:FireServer("pickupStyle",{Enum.KeyCode.F,"ASS CODE"})
		end
	end)
end)

LoadingGui()

ClassicPlayerSection:addButton("Float", function()
	spawn(function()
		MakeStyle2Notification("Float", "Chlo made this!", 3)
		MakeNotification("Controls", "Q = Down,  E = Up", 5)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/ChloDev/UwU-Gay-Sex-Float/main/Float%20script%20also%20known%20as%20gay%20sex'))()
	end)
end)

LoadingGui()

local TpAwayThreshold = 39 -- BEST FOR CLASSIC
local Immortatily = false
local Immortatilystart = function()
	Immortatily = true
	spawn(function()
		while wait() do
			if not Immortatily then
				return
			end
			local value = game:GetService("ReplicatedStorage").Events.RequestData:InvokeServer()
			if Player.character.Humanoid.Health <= TpAwayThreshold then
				local OldCF = Player.Character.HumanoidRootPart.CFrame
				local AntiLeak = Instance.new("ScreenGui")
				local TextLabel = Instance.new("TextLabel")
				AntiLeak.Name = randomString()
				AntiLeak.IgnoreGuiInset = true
				AntiLeak.Parent = game.CoreGui
				TextLabel.Name = randomString()
				TextLabel.Parent = AntiLeak
				TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.Size = UDim2.new(1, 0, 1, 0)
				TextLabel.Font = Enum.Font.GothamBlack
				TextLabel.Text = "Doing Immortality, Please Wait"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				local debris = game:GetService("Debris")
				debris:AddItem(AntiLeak, 4)
			end
			game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("gender", value.appearance.gender)
			wait(3.5)
			Player.Character.HumanoidRootPart.CFrame = OldCF
			wait(0.005)
			Player.Character.HumanoidRootPart.CFrame = OldCF
			MakeNotification("easdwa", "You might need to turn speed back on if it went away", 4)
		end
	end)
end

LoadingGui()

ClassicCombatSection:addToggle("Immortatily ", nil, function(bool)
	if bool then
		MakeStyle2Notification("Immortatily","Immortatily is now enabled.", 5)
		MakeStyle2Notification("Immortatily", "Chlo made this!", 4)
		return Immortatilystart()
	end
	MakeStyle2Notification("Immortatily","Immortatily is now disabled.", 5)
	Immortatily = false
end)

LoadingGui()

ClassicCombatSection:addButton("Craft Full Mag", function()
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("Magnetite Mask")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.UseBagItem:FireServer("Magnetite Mask")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("Magnetite Chestplate")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.UseBagItem:FireServer("Magnetite Chestplate")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("Magnetite Greaves")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.UseBagItem:FireServer("Magnetite Greaves")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.CraftItem:FireServer("Magnetite Stick")
	end
	for i = 1, 1 do
		game.ReplicatedStorage.Events.EquipTool:FireServer(1)
	end
	MakeNotification("aw1ewd2aw2d1ada1","You now have full magnetite on.", 5)
end)

LoadingGui()

-- end of auto mag
local kill1 = false
local startKill1 = function()
	kill1 = true
	spawn(function()
		while wait() do
			if not kill1 then
				return
			end
			local HR = Player.Character.HumanoidRootPart.Position
			local CL = getClosest()
			local PT = CL.Character.HumanoidRootPart.Position
			if (HR - PT).magnitude < 10 then
				local PLname = CL.name
				local wChar = game.Workspace.Characters[CL.Name]
				if PLname == "jinxcard" or PLname == "TheDarkHeross" or PLname == "Typlcalios" or PLname == "SupernaturalSalt"or PLname == "awerfqwergs" or PLname == "Smashton42" or PLname == "Gh0st_Developer" then 
				else
					local SwingTool = game:GetService("ReplicatedStorage").Events.SwingTool
					local one = game:GetService("ReplicatedStorage").RelativeTime.Value
					local args = {
						[1] = one,
						[2] = { 
							[1] = wChar.Head,
							[2] = wChar.HumanoidRootPart,
							[3] = wChar.LeftFoot
						}
					}
					SwingTool:FireServer(unpack(args))
				end
			end
		end
	end)
end

LoadingGui()

ClassicCombatSection:addToggle("Kill-aura",nil, function(bool)
	if bool then
		MakeStyle2Notification("Kill-Aura","Kill-Aura is now enabled", 5)
		return startKill1()
	end
	MakeStyle2Notification("Kill-Aura","Kill-Aura is now disabled", 5)
	kill1 = false
end)

LoadingGui()

local tpplayer = ("")
local Spamtp = false
local SpamTpStart = function()
	Spamtp = true
	spawn(function()
		while wait() do 
			if not Spamtp then
				return
			end
			for i,v in pairs(game.Players:GetChildren()) do
				if v.Name:lower():find(tpplayer:lower()) then
					h = v.Character.LowerTorso.CFrame
					me = Player.Character
					me.HumanoidRootPart.CFrame = CFrame.new(h.x,h.y + 4.02,h.z)
				end
			end
		end
	end)
end

LoadingGui()

ClassicCombatSection:addToggle("Spam Tp to Player", nil, function(bool)
	if bool then
		MakeNotification("bdb32123wda","Spam Tp to "..tpplayer.." is now enabled.", 5)
		return SpamTpStart()
	end
	MakeNotification("bdb123w232da","Spam Tp to "..tpplayer.." is now disabled.", 5)
	Spamtp = false
end)

LoadingGui()

ClassicCombatSection:addButton("Tp to Player", function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v.Name:lower():find(tpplayer:lower()) then
			me = Player.Character
			MakeNotification("aw1ewd2aw2d1ada1","You have teleported to "..tpplayer, 5)
			me.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
		end
	end
end)

LoadingGui()

ClassicCombatSection:addTextbox("Target Player name", "None", function(t, f)
	if f then
		tpplayer = t
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name:lower():find(tpplayer:lower()) then
				local playername = v.name
				MakeNotification("Target Player ", "Got the Target "..playername, 5)
			end
		end
	end
end)

LoadingGui()

ClassicCombatSection:addButton("Delete Name and Health ui", function()
	Player.Character.NameGui:Destroy()
	wait(.0005)
	Player.Character.HealthGui:Destroy()
	MakeNotification("easdwa", "Chlo made this!", 4)
	MakeNotification("aw1ewd2aw2d1ada1","Your name and health has been deleted.", 5)
end)

LoadingGui()

ClassicTeleportationSection:addDropdown("Tp area", {"Sun Island", "Middle", "Old God", "Feather Island", "Valcano"}, function(text)
	if text == "Sun Island" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(-560.134094, 381.984131, -1193.94824)
	end
	if text == "Middle" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(-219.812454, 12.1474152, -271.464417)
	end
	if text == "Old God" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(-1152.86084, 11.3041573, -1006.61414)
	end
	if text == "Feather Island" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(-148.730606, 296.808167, -834.960693)
	end
	if text == "Valcano" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(1262.49072, -0.029418081, 1345.78259)
	end
end)

LoadingGui()

ClassicTeleportationSection:addDropdown("Other areas", {"Grass","Ice","Sand"}, function(text)
	if text == "Sand" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(722.389221, 51.0624886, 305.397156)
	end
	if text == "Ice" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(96.4863663, 45.0014114, -1864.7821)
	end
	if text == "Grass" then
		me = Player.Character
		me.HumanoidRootPart.CFrame = CFrame.new(655.970947, 52.9757881, -307.364532)
	end 
end)

LoadingGui()

ClassicCosmeticSection:addDropdown("Hairs", { "Blonde Girl", "Brown Girl", "Crazy Game Dev Hair", "Blonde Boy", "Brown Boy","Bald"}, function(text)
	if text == "Blonde Girl" then
		game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("hair", "Blonde Girl")
	end
	if text == "Brown Girl" then
		game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("hair", "Brown Girl")
	end
	if text == "Crazy Game Dev Hair" then
		game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("hair", "Crazyhair")
	end
	if text == "Blonde Boy" then
		game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("hair", "Blonde Boy")
	end
	if text == "Brown Boy" then
		game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("hair", "Brown Boy")
	end
	if text == "Bald" then
		game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer("hair", "none")
	end
end)

LoadingGui()

-- end of classic page

HybridPlayerSection:addButton("Rainbow Person", function()
	if rainbowperson ~= true then 
		rainbowperson = true
	end
	local Character = Player.Character
	MakeskinRainbow(Character.RightFoot)
	MakeskinRainbow(Character.LeftFoot)
	MakeskinRainbow(Character.LeftLowerLeg)
	MakeskinRainbow(Character.RightLowerLeg)
	MakeskinRainbow(Character.LeftUpperLeg)
	MakeskinRainbow(Character.RightUpperLeg)
	MakeskinRainbow(Character.LowerTorso)
	MakeskinRainbow(Character.UpperTorso)
end)

LoadingGui()

HybridPlayerSection:addButton("Armor and tools rainbow", function()
	if rainbowarmor ~= true then 
		rainbowarmor = true
	end
	MakeStyle2Notification("Rainbow armor and tools.","Made by Chlo!", 2)
	for i,v in pairs(Player.Character:GetDescendants()) do
		if v.ClassName == "Part" and v:FindFirstChild("colortype") then
			MakePartRainbow(v)
			v.Material = "Glass" -- U can change this
			v.Transparency = .5-- U can change this
			v.Reflectance = .25-- U can change this
		end
	end
	for i,v in pairs(Player.Character:GetDescendants()) do
		if v.ClassName == "MeshPart" and v:FindFirstChild("colortype")  then
			MakePartRainbow(v)
			v.Material = "Glass" -- U can change this
			v.Transparency = .5-- U can change this
			v.Reflectance = .25-- U can Change this
		end
	end
	for i,v in pairs(Player.Character:GetDescendants()) do
		if v.ClassName == "UnionOperation" and v:FindFirstChild("colortype")  then
			MakePartRainbow(v)
			v.Material = "Glass" -- U can change this
			v.Transparency = .5-- U can change this
			v.Reflectance = .25-- U can Change this
		end
	end
	MakeStyle2Notification("Rainbow armor and tools","Your armor is now rainbow", 5)
end)

LoadingGui()

HybridPlayerSection:addButton("Disable rainbow", function()
	rainbowarmor = false
	rainbowperson = false
	wait(1.2)
	game.ReplicatedStorage.Events.EquipTool:FireServer(1)
	wait(0.2)
	game.ReplicatedStorage.Events.EquipTool:FireServer(1)
	game:GetService("ReplicatedStorage").Events.PurchaseItem:FireServer("Iron Mole")
	game:GetService("ReplicatedStorage").Events.EquipCosmetic:FireServer("Iron Mole")
	wait(0.01)
	game:GetService("ReplicatedStorage").Events.EquipCosmetic:FireServer("Iron Mole")
	wait(5.5)
	game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Yellow")
	wait()
	game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
	game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Green")
	wait()
	game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
	wait()
	game:GetService("ReplicatedStorage").Events.FoundTribe:FireServer("Red")
	game:GetService("ReplicatedStorage").Events.LeaveTribe:FireServer()
end)

LoadingGui()

HybridPlayerSection:addButton("Float", function()
	spawn(function()
		MakeStyle2Notification("Float", "Chlo made this!", 3)
		MakeNotification("Controls", "Q = Down,  E = Up", 5)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/ChloDev/UwU-Gay-Sex-Float/main/Float%20script%20also%20known%20as%20gay%20sex'))()
	end)
end)

LoadingGui()

HybridMiscSection:addButton("Free Bridges", function()
	local Bridges = game:GetService("Workspace").Bridges
	Bridges.CrystalBridge.CanCollide = true
	Bridges.CrystalBridge.Transparency = 0
	Bridges.AncientBridge.CanCollide = true
	Bridges.AncientBridge.Transparency = 0
	MakeNotification("awewd2aw2d1ada1","The Bridges are now actived.", 5)
end)

LoadingGui()

HybridMiscSection:addButton("No Coin lag", function()
	if Player.PlayerGui:FindFirstChild("MainGui-2019") then
		Player.PlayerGui["MainGui-2019"].TempEffects.Coins:Destroy()
	elseif Player.PlayerGui:FindFirstChild("MainGui-2020") then
		Player.PlayerGui["MainGui-2020"].TempEffects.Coins:Destroy()
	end
end)

LoadingGui()

HybridAutomationSection:addButton("Inf Bag", function()
	local playername = Player.Name
	local AntiLeak = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")
	AntiLeak.Name = randomString()
	AntiLeak.IgnoreGuiInset = true
	AntiLeak.Parent = game.CoreGui
	TextLabel.Name = randomString()
	TextLabel.Parent = AntiLeak
	TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.GothamBlack
	TextLabel.Text = "Doing Inf Bag, Please Wait"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	local debris = game:GetService("Debris")
	debris:AddItem(AntiLeak, 1.5)
	spawn(function()
		if AutoPickupEnabled == true then
			AutoPickupEnabled = false
			wait(3)
			AutoPickupFunction()
		end
	end)
	ItemData = require(game:GetService("ReplicatedStorage").Modules.ItemData)
	local Data = game:GetService("ReplicatedStorage").Events.RequestData:InvokeServer()
	local Bag = Data.armor.bag
	local MaxBaxSpace = ItemData[Bag].maxLoad
	for num,v in ipairs(Data.inventory) do
		local itemload = ItemData[v.name].load or 1
		local MaxDrop = MaxBaxSpace/itemload 
		if MaxDrop == math.huge then MaxDrop = 500 end
		local repeater = math.ceil(v.quantity/MaxDrop)
		for i = 1,repeater do
			game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(1,MaxDrop)
		end
	end
	wait(.0001)
	spawn(function()
		for i = 1,15 do 
            wait(.05)
			local FoundItems;
			local myCF = Player.Character.HumanoidRootPart.Position
			local FoundItems = {}
			for i,v in pairs(workspace.Items:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
					Distance = (myCF - v.Position).magnitude
					if Distance < 40 then
						table.insert(FoundItems,v)
					end
				elseif v.ClassName == "Model" then
					if v.PrimaryPart ~= nil then
						Distance = (myCF - v.PrimaryPart.Position).magnitude
						if Distance < 40 then
							table.insert(FoundItems,v)
						end
					end
				end
			end
			for i,v in pairs(FoundItems) do
				spawn(function()
					game.ReplicatedStorage.Events.Pickup:InvokeServer(v)
				end)
			end
		end
	end)
	MakeStyle2Notification("Inf bag", "Inf bag is now done. Btw Chlo fixed this!", 5)
end)

LoadingGui()

HybridCombatSection:addToggle("Kill-Aura", nil, function(bool)
	_G.SettingsTable.KillAurar = bool
	SaveSettings()
	if bool then
		MakeStyle2Notification("Kill-Aura","Kill-Aura is now enabled.", 5)
		return startKill()
	end
	MakeStyle2Notification("Kill-Aura","Kill-Aura is now disabled.", 5)
	kill = false 
end)

LoadingGui()

local me = Player.name
local killaurav2 = false
timee = 0.5
killrange = 401
local killaurav2start = function()
	killaurav2 = true
	spawn(function()
		while wait(timee) do 
			if not killaurav2 then
				return
			end
			local HR = Player.Character.HumanoidRootPart.Position
			local CL = getClosest()
			local PT = CL.Character.HumanoidRootPart.Position
			if (HR - PT).magnitude < killrange then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.name == me or v.name == "jinxcard" or v.name == "Smashton42" or v.name == "SupernaturalSalt"  or v.name == "Typlcalios" or v.name == "Gh0st_Developer" or v.name == "TheDarkHeross" or v.name == "Gh0st_DeveIoper" or v.name == "SupernaturalsaIt" or v.name == "SupernaturaIsalt" or v.name == "supernaturaIsaIt" or v.name == "PaulLe_Roux" or v.name == "pIace_com" or v.name == "ChloForgor" then
					else
						local normal = {
							[1] = {
								["drawTime"] = 1.2,
								["hit"] = v,
								["location"] = Vector3.new(790.3896484375, -2.9496347904205322, -1676.625732421875),
								["weaponName"] = "God Rock",
								["id"] = 1
							}
						}
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(normal))
						local keyded = {
							[1] = {
								["drawTime"] = 1.2,
								["hit"] = v,
								["location"] = Vector3.new(790.3896484375, -2.9496347904205322, -1676.625732421875),
								["weaponName"] = "The Meatmaker",
								["id"] = 1
							}
						}
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(keyded))
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(keyded))
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(keyded))
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(keyded))
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(keyded))
					end
				end 
			end
		end
	end)
end

LoadingGui()

HybridCombatSection:addToggle("Kill-Aura v2", nil, function(bool)
	if bool then
		MakeStyle2Notification("Kill-Aura v2","Kill-Aura v2 is enabled.", 5)
		return killaurav2start()
	end
	MakeStyle2Notification("Kill-Aura v2","Kill-Aura v2 is disabled.", 5)
	killaurav2 = false 
end)

LoadingGui()

_G.alwayson = true
local killkeybind = "o" -- change the letter to change the keybind
HybridCombatSection:addButton("One Tap ", function()
	MakeStyle2Notification("One Tap","Press '"..killkeybind.."' to use", 5)
	MakeNotification("OneTap", "Doesn't turn off, use well.", 6)
	MakeNotification("oneTap","To use in vips you must fire atleast 1 javlin or arrow or sling or trident" )
	-- -Tap  -Kill -- Made better by Jinx ; )
	local Workspace  = game.Workspace
	local Animals = game.Workspace.Critters
	local sharks = game.Workspace.Sharks
	local playerss = game.Players
	local Resources = game.Workspace.Resources
	local mouse = Player:GetMouse();

	mouse.KeyDown:connect(function(key) 
		if key:lower() == killkeybind:lower() then 
			local Obj = Mouse.Target;
			if Obj ~= "Terrain" then
				local ohTable1 = {
					["drawTime"] = 10000000000,
					["hit"] = Obj.Parent,
					["location"] = 1,
					["weaponName"] = "The Meatmaker",
					["id"] = 1,
				}
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
				game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
			end
		end
	end)

	mouse.KeyDown:connect(function(key) 
		if key:lower() == killkeybind:lower() then 
			local Obj = Mouse.Target;
			if Obj ~= "Terrain" then
				for i,v in pairs(playerss:GetChildren()) do
					if v.name == Obj.Parent.Name or v.name == Obj.Parent.Parent.Name then
						if v.name ~= "jinxcard" and v.name ~= "Smashton42" and v.name ~= "SupernaturalSalt" and v.name ~= "ChloForgor" and v.name ~= "Typlcalios" and v.name ~= "Gh0st_Developer" and v.name ~= "TheDarkHeross" and v.name ~= "Gh0st_DeveIoper" and v.name ~= "SupernaturalsaIt" and v.name ~= "SupernaturaIsalt" and v.name ~= "supernaturaIsaIt" and v.name ~= "PaulLe_Roux" and v.name ~= "pIace_com" then
							local ohTable1 = {
								["drawTime"] = 9^5,
								["hit"] = game.Players:FindFirstChild(Obj.Parent.Name),
								["location"] = 1,
								["weaponName"] = "The Meatmaker",
								["id"] = 1,
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							wait()
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							wait()
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							local ohTable1 = {
								["drawTime"] = 9^5,
								["hit"] = game.Players:FindFirstChild(Obj.Parent.Parent.Name),
								["location"] = 1,
								["weaponName"] = "The Meatmaker",
								["id"] = 1,
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							wait()
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							wait()
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
							if SpecialKey == RealSpecialKey then 
								local args = {
									[1] = {
										["location"] = Vector3.new(-47.54668045043945, -6, 60.82623291015625),
										["explosionList"] = {
											[1] = game.Players:FindFirstChild(Obj.Parent.Parent.Name),
										},
										["weaponName"] = "Cannon Cart",
										["id"] = 1
									}
								}
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								wait()
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								local args = {
									[1] = {
										["location"] = Vector3.new(-47.54668045043945, -6, 60.82623291015625),
										["explosionList"] = {
											[1] = game.Players:FindFirstChild(Obj.Parent.Name),
										},
										["weaponName"] = "Cannon Cart",
										["id"] = 1
									}
								}
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								wait()
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
								game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
							end
						else
							ChatTheRoom = {
								[1] = "Sorry for trying to kill you "..v.name,
								[2] = "All"}
							game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(ChatTheRoom)) 
						end
					end
				end
			end
		end
	end)
	mouse.KeyDown:connect(function(key) 
		if key:lower() == killkeybind:lower() then 
			local Obj = Mouse.Target;
			if Obj ~= "Terrain" then
				for i,v in pairs(Animals:GetChildren()) do
					if v.name == "Dancing Shelly" then
						local aniamlPos = v.PrimaryPart.Position
						local mousePos = Mouse.Hit.Position
						Distance = (mousePos - aniamlPos).magnitude
						if Distance < 40 then
							local ohTable1 = {
								["drawTime"] = 9^5,
								["hit"] = v,
								["location"] = 1,
								["weaponName"] = "The Meatmaker",
								["id"] = 1,
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
						end
					elseif v.name ~= "Dancing Shelly" then
						local aniamlPos = v.PrimaryPart.Position
						local mousePos = Mouse.Hit.Position
						Distance = (mousePos - aniamlPos).magnitude
						if Distance < 40 then
							local ohTable1 = {
								["drawTime"] = 9^5,
								["hit"] = v,
								["location"] = 1,
								["weaponName"] = "The Meatmaker",
								["id"] = 1,
							}
							game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
						end
					end
				end
			end
		end
	end)

	mouse.KeyDown:connect(function(key) 
		if key:lower() == killkeybind:lower() then 
			local Obj = Mouse.Target;
			if Obj ~= "Terrain" then
				for i,v in pairs(sharks:GetChildren()) do
					local sharksPos = v.PrimaryPart.Position
					local mousePos = Mouse.Hit.Position
					Distance = (mousePos - sharksPos).magnitude
					if Distance < 40 then
						local ohTable1 = {
							["drawTime"] = 9^5,
							["hit"] = v,
							["location"] = 1,
							["weaponName"] = "The Meatmaker",
							["id"] = 1,
						}
						game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(ohTable1)
					end
				end
			end
		end
	end)
	while _G.alwayson == true do 
		wait(1)
	end
end)

LoadingGui()

if _G.SettingsTable.OneTapKey and _G.SettingsTable.OneTapKey ~= "" then
	killkeybind = _G.SettingsTable.OneTapKey
end
HybridCombatSection:addTextbox("One Tap Keybind", killkeybind, function(t, f)
	if f then 
		killkeybind = t:lower()
		_G.SettingsTable.OneTapKey = killkeybind
		SaveSettings()
	end
end)

LoadingGui()

local playerwhitelist = ""
local playername = ""
HybridCombatSection:addButton("Insta Kill", function()
	if playername ~= "TheDarkHeross" and playername ~= "Smashton42" and playername ~= "jinxcard" and playername ~= "Gh0st_DeveIoper" and playername ~= "Gh0st_Developer" then
		local args = {
			[1] = {
				["location"] = Vector3.new(-47.54668045043945, -6, 60.82623291015625),
				["explosionList"] = {
					[1] = game.Players:FindFirstChild(playername),
				},
				["weaponName"] = "Cannon Cart",
				["id"] = 2
			}
		}
		game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
		game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
		game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
		game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
		game:GetService("ReplicatedStorage").Events.Bow.Impact:FireServer(unpack(args))
	end
end)

HybridCombatSection:addTextbox("Insta kill Player", "None", function(t,f)
	if f  then
		playerwhitelist = t
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name:lower():find(playerwhitelist:lower()) then
				playername = v.name 
				MakeNotification("Got em", "Got the player "..playername, 2)
				break
			end
		end
	end
end)

LoadingGui()

-- end of kill aura v2 (AIMBOT THAT ONE SHOTS MADE BY ME LOL)
HybridCombatSection:addButton("Invis Full God", function()
	MakeNotification("easdwa", "Chlo made this! (I fixed it a bit sometimes didn't work)", 4)
	local Player = Player
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("God Chestplate")
	wait(0.3)
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("God Legs")
	wait(0.3)
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("God Halo")
	wait(0.3)
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Spirit Orb")
	wait(0.3)
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("God Bag")
	wait(0.3)
	game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(1)
	wait(1)
	for i,v in pairs(Player.Character["God Bag"]:GetChildren()) do 
		v:Destroy()
	end
	for i,v in pairs(Player.Character["God Halo"]:GetChildren()) do 
		v:Destroy()
	end
	for i,v in pairs(Player.Character:GetChildren()) do 
		if v.name == "God Chestplate" then
			v.Handle:Destroy()
		end
	end
	for i,v in pairs(Player.Character:GetChildren()) do 
		if v.name == "God Legs" then
			v.Handle:Destroy()
		end
	end
	MakeNotification("awewdaw2d1ada1","Your God armor is now Invis.", 5)
end)

LoadingGui()

local healItem2 = ""
local healbelow2
local heal2 = false
local healStart2 = function()
	heal2 = true
	spawn(function()
		while wait() do
			if not heal2 then
				return
			end
			local e = Player.character.Humanoid.Health
			local eatt = game:GetService("ReplicatedStorage").Events.Consume
			if healItem2 == "" then 
				MakeNotification("addheal2","You need to add a heal to heal.", 1)
			else
				if e <= healbelow2 then
					eatt:FireServer(healItem2)
				end
			end
		end
	end)
end

LoadingGui()

HybridCombatSection:addToggle("Auto-heal", nil, function(bool)
	if bool then
		if healItem2 == "" then 
			MakeStyle2Notification("Add heal","You need to add a heal to heal, dummy.", 2)
		else
			MakeStyle2Notification("Auto-Heal","Auto-Heal is now enabled.", 5)
		end
		return healStart2()
	end
	MakeStyle2Notification("Auto-Heal","Auto-Heal is now disabled.")
	heal2 = false
end)

LoadingGui()

-- end of auto heal hybrid
HybridCombatSection:addSlider("Auto heal below", 0, 1, 100, function(value)
	healbelow2 = value
end)

LoadingGui()

-- end of heal below
HybridCombatSection:addTextbox("Heal Item Name","None", function(t, f)
	if f  then
		ItemData = require(game:GetService("ReplicatedStorage").Modules.ItemData)
		local Data = game:GetService("ReplicatedStorage").Events.RequestData:InvokeServer()
		healItem2 = t
		for i,v in ipairs(Data.inventory) do
			if ItemData[v.name].itemType == "food" then
				if v.name:lower():find(healItem2:lower()) then
					healItem2 = v.name 
					MakeNotification("Got em", "Got the food item "..healItem2, 2)
				end
			end
		end
	end
end)

LoadingGui()

-- end of heal item
local lol_20 
HybridFarmingSection:addButton("Auto Plant use a god hoe",function()
	Event = game:GetService("ReplicatedStorage").Events.PlantFruit
	h = Player.Character.LowerTorso.Position
	-- YOU NEED 126 OF SAID ITEM
	-- adurite hoe = 0.9 
	-- god hoe = 0.3
	-- DONT MESS WITH ANYTHING BELOW THIS (1) v
	MakeStyle2Notification("Auto Plant","The Plant "..lol_20.." is being Planted", 5)
	aa = h.x + 1
	bb = h.y - 6
	cc = h.z + 1
	-- DONT MESS WITH ANYTHING ABOVE THIS (2) ^
	wait(0.3)
	n_2 = Vector3.new(aa, bb, cc)
	Event:FireServer(n_2, lol_20)
	-- Do Not Touch This v (3)
	aaa2 = aa + 2
	aaa4 = aa + 4
	aaa6 = aa + 6
	aaa8 = aa + 8
	aaa10 = aa + 10
	cc2 = cc + 2
	cc4 = cc + 4
	cc6 = cc + 6 
	cc8 = cc + 8 
	cc10 = cc + 10
	ccm10 = cc -10
	ccm8 = cc - 8
	ccm6 = cc - 6
	ccm4 = cc - 4 
	ccm2 = cc - 2
	aaam2 = aa - 2
	aaam4 = aa - 4 
	aaam6 = aa - 6 
	aaam8 = aa - 8 
	aaam10 = aa - 10 
	-- Do Not Touch This ^ (4)
	n_3 = Vector3.new(aa, bb,cc2) n_4 = Vector3.new(aaa2, bb, cc) n_5 = Vector3.new(aaa4, bb, cc) n_6 = Vector3.new(aaa6, bb, cc) n_7 = Vector3.new(aaa8, bb, cc) n_8 = Vector3.new(aaa10, bb, cc)
	n_9 = Vector3.new(aaa10, bb,cc2) n_10 = Vector3.new(aaa8, bb,cc2) n_11 = Vector3.new(aaa6, bb,cc2) n_12 = Vector3.new(aaa4, bb,cc2) n_13 = Vector3.new(aaa2, bb,cc2) n_19 = Vector3.new(aa,bb,cc4)
	n_14 = Vector3.new(aaa2, bb,cc4) n_15 = Vector3.new(aaa4,bb,cc4) n_16 = Vector3.new(aaa6,bb,cc4) n_17 = Vector3.new(aaa8,bb,cc4) n_18 = Vector3.new(aaa10,bb,cc4) n_20 = Vector3.new(aa,bb,cc6) n_21 = Vector3.new(aaa2,bb,cc6) n_22 = Vector3.new(aaa4,bb,cc6) n_23 = Vector3.new(aaa6,bb,cc6) n_24 = Vector3.new(aaa8,bb,cc6) n_25 = Vector3.new(aaa10,bb,cc6)
	n_26 = Vector3.new(aa,bb,cc8) n_27 = Vector3.new(aaa2,bb,cc8) n_28 = Vector3.new(aaa4,bb,cc8) n_29 = Vector3.new(aaa6,bb,cc8) n_125 = Vector3.new(aaam2,bb,cc10) n_30 = Vector3.new(aaa8,bb,cc8)
	n_31 = Vector3.new(aaa10,bb,cc8) n_32 = Vector3.new(aa,bb,cc10) n_33 = Vector3.new(aaa2,bb,cc10) n_34 = Vector3.new(aaa4,bb,cc10) n_35 = Vector3.new(aaa6,bb,cc10) n_36 = Vector3.new(aaa8,bb,cc10)
	n_37 = Vector3.new(aaa10,bb,cc10) n_38 = Vector3.new(aaa10,bb,ccm10) n_39 = Vector3.new(aaa8,bb,ccm10) n_40 = Vector3.new(aaa6,bb,ccm10) n_41 = Vector3.new(aaa4,bb,ccm10) n_42 = Vector3.new(aaa2,bb,ccm10) n_43 = Vector3.new(aa,bb,ccm10) n_44 = Vector3.new(aaa10,bb,ccm8) n_46 = Vector3.new(aa,bb,ccm8)
	n_47 = Vector3.new(aaa2,bb,ccm8) n_48 = Vector3.new(aaa4,bb,ccm8) n_49 = Vector3.new(aaa6,bb,ccm8) n_50 = Vector3.new(aaa8,bb,ccm8) n_51 = Vector3.new(aa,bb,ccm6) n_52 = Vector3.new(aaa2,bb,ccm6) n_53 = Vector3.new(aaa4,bb,ccm6)
	n_54 = Vector3.new(aaa6,bb,ccm6) n_55 = Vector3.new(aaa8,bb,ccm6) n_56 = Vector3.new(aaa10,bb,ccm6) n_57 = Vector3.new(aa,bb,ccm4) n_58 = Vector3.new(aaa2,bb,ccm4) n_59 = Vector3.new(aaa4,bb,ccm4) n_60 = Vector3.new(aaa6,bb,ccm4)
	n_61 = Vector3.new(aaa8,bb,ccm4) n_62 = Vector3.new(aaa10,bb,ccm4) n_63 = Vector3.new(aa,bb,ccm2) n_64 = Vector3.new(aaa10,bb,ccm2) n_65 = Vector3.new(aaa8,bb,ccm2) n_66 = Vector3.new(aaa6,bb,ccm2)
	n_67 = Vector3.new(aaa4,bb,ccm2) n_68 = Vector3.new(aaa2,bb,ccm2) n_69 = Vector3.new(aaam2,bb,ccm2) n_70 = Vector3.new(aaam2,bb,cc) n_71 = Vector3.new(aaam2,bb,ccm4) n_72 = Vector3.new(aaam2,bb,ccm6)
	n_73 = Vector3.new(aaam2,bb,ccm8) n_74 = Vector3.new(aaam2,bb,ccm10) n_75 = Vector3.new(aaam4,bb,cc) n_76 = Vector3.new(aaam4,bb,ccm2) n_77 = Vector3.new(aaam4,bb,ccm4) n_78 = Vector3.new(aaam4,bb,ccm6)
	n_124 = Vector3.new(aaam2,bb,cc8) n_79 = Vector3.new(aaam4,bb,ccm8) n_80 = Vector3.new(aaam4,bb,ccm10) n_81 = Vector3.new(aaam6,bb,cc) n_82 = Vector3.new(aaam6,bb,ccm2) n_83 = Vector3.new(aaam6,bb,ccm4)
	n_84 = Vector3.new(aaam6,bb,ccm6) n_85 = Vector3.new(aaam6,bb,ccm8) n_86 = Vector3.new(aaam6,bb,ccm10) n_87 = Vector3.new(aaam8,bb,cc) n_88 = Vector3.new(aaam8,bb,ccm2) n_89 = Vector3.new(aaam8,bb,ccm4)
	n_91 = Vector3.new(aaam8,bb,ccm6) n_92 = Vector3.new(aaam8,bb,ccm8) n_93 = Vector3.new(aaam8,bb,ccm10) n_94 = Vector3.new(aaam10,bb,cc) n_95 = Vector3.new(aaam10,bb,ccm2) n_96 = Vector3.new(aaam10,bb,ccm4)
	n_97 = Vector3.new(aaam10,bb,ccm6) n_98 = Vector3.new(aaam10,bb,ccm8) n_99 = Vector3.new(aaam10,bb,ccm10) n_101 = Vector3.new(aaam10,bb,cc2) n_102 = Vector3.new(aaam10,bb,cc4) n_103 = Vector3.new(aaam10,bb,cc6)
	n_104 = Vector3.new(aaam10,bb,cc8) n_105 = Vector3.new(aaam10,bb,cc10) n_106 = Vector3.new(aaam8,bb,cc2) n_107 = Vector3.new(aaam8,bb,cc4) n_108 = Vector3.new(aaam8,bb,cc6) n_109 = Vector3.new(aaam8,bb,cc8)
	n_110 = Vector3.new(aaam8,bb,cc10) n_123 = Vector3.new(aaam2,bb,cc6) n_111 = Vector3.new(aaam6,bb,cc2) n_112 = Vector3.new(aaam6,bb,cc4) n_113 = Vector3.new(aaam6,bb,cc6) n_114 = Vector3.new(aaam6,bb,cc8)
	n_115 = Vector3.new(aaam6,bb,cc10) n_116 = Vector3.new(aaam4,bb,cc2) n_117 = Vector3.new(aaam4,bb,cc4) n_119 = Vector3.new(aaam4,bb,cc8) n_118 = Vector3.new(aaam4,bb,cc6) n_120 = Vector3.new(aaam4,bb,cc10) n_121 = Vector3.new(aaam2,bb,cc2) 
	n_122 = Vector3.new(aaam2,bb,cc4)
	MakeNotification("eaweaeaw","Got all plant positions, please stay near the area", 2)
	wait(0.3) Event:FireServer(n_3,lol_20) wait(0.3) Event:FireServer(n_4, lol_20) wait(0.3) Event:FireServer(n_5, lol_20) Event:FireServer(n_6, lol_20) wait(0.3) Event:FireServer(n_7, lol_20) wait(0.3) Event:FireServer(n_8, lol_20)
	wait(0.3) Event:FireServer(n_9, lol_20) wait(0.3) Event:FireServer(n_10, lol_20) wait(0.3) Event:FireServer(n_11, lol_20) wait(0.3) Event:FireServer(n_12, lol_20) wait(0.3) Event:FireServer(n_13, lol_20)
	wait(0.3) Event:FireServer(n_19,lol_20) wait(0.3) Event:FireServer(n_14, lol_20) wait(0.3) Event:FireServer(n_15,lol_20) wait(0.3) Event:FireServer(n_16,lol_20) wait(0.3) Event:FireServer(n_17,lol_20) wait(0.3) Event:FireServer(n_18,lol_20) wait(0.3) Event:FireServer(n_20,lol_20)
	wait(0.3) Event:FireServer(n_21,lol_20) wait(0.3) Event:FireServer(n_22,lol_20) wait(0.3) Event:FireServer(n_23,lol_20) wait(0.3) Event:FireServer(n_24,lol_20) wait(0.3) Event:FireServer(n_25,lol_20) wait(0.3) Event:FireServer(n_26,lol_20)
	wait(0.3) Event:FireServer(n_27,lol_20) wait(0.3) Event:FireServer(n_28,lol_20) wait(0.3) Event:FireServer(n_29,lol_20) wait(0.3) Event:FireServer(n_30,lol_20) wait(0.3) Event:FireServer(n_31,lol_20) wait(0.3) Event:FireServer(n_32,lol_20) wait(0.3) Event:FireServer(n_33,lol_20) wait(0.3) Event:FireServer(n_34,lol_20) wait(0.3) Event:FireServer(n_35,lol_20) wait(0.3) Event:FireServer(n_36,lol_20) wait(0.3) Event:FireServer(n_37,lol_20) wait(0.3) Event:FireServer(n_38,lol_20) wait(0.3) Event:FireServer(n_39,lol_20) wait(0.3) Event:FireServer(n_40,lol_20)
	wait(0.3) Event:FireServer(n_41,lol_20) wait(0.3) Event:FireServer(n_42,lol_20) wait(0.3) Event:FireServer(n_43,lol_20) wait(0.3) Event:FireServer(n_44,lol_20) wait(0.3) Event:FireServer(n_46,lol_20) wait(0.3) Event:FireServer(n_47,lol_20) wait(0.3) Event:FireServer(n_48,lol_20) wait(0.3) Event:FireServer(n_49,lol_20)
	wait(0.3) Event:FireServer(n_50,lol_20) wait(0.3) Event:FireServer(n_51,lol_20) wait(0.3) Event:FireServer(n_52,lol_20) wait(0.3) Event:FireServer(n_53,lol_20) wait(0.3) Event:FireServer(n_54,lol_20) wait(0.3) Event:FireServer(n_55,lol_20)
	wait(0.3) Event:FireServer(n_56,lol_20) wait(0.3) Event:FireServer(n_57,lol_20) wait(0.3) Event:FireServer(n_58,lol_20) wait(0.3) Event:FireServer(n_59,lol_20) wait(0.3) Event:FireServer(n_60,lol_20)
	wait(0.3) Event:FireServer(n_61,lol_20) wait(0.3) Event:FireServer(n_62,lol_20) wait(0.3) Event:FireServer(n_63,lol_20) wait(0.3) Event:FireServer(n_64,lol_20) wait(0.3) Event:FireServer(n_65,lol_20)
	wait(0.3) Event:FireServer(n_66,lol_20) wait(0.3) Event:FireServer(n_67,lol_20) wait(0.3) Event:FireServer(n_68,lol_20) wait(0.3) Event:FireServer(n_69,lol_20) wait(0.3) Event:FireServer(n_70,lol_20)
	wait(0.3) Event:FireServer(n_71,lol_20) wait(0.3) Event:FireServer(n_72,lol_20) wait(0.3) Event:FireServer(n_73,lol_20) wait(0.3) Event:FireServer(n_74,lol_20) wait(0.3) Event:FireServer(n_75,lol_20) wait(0.3) Event:FireServer(n_76,lol_20) wait(0.3) Event:FireServer(n_77,lol_20) wait(0.3) Event:FireServer(n_78,lol_20) wait(0.3) Event:FireServer(n_79,lol_20) wait(0.3) Event:FireServer(n_80,lol_20) wait(0.3) Event:FireServer(n_81,lol_20) wait(0.3) Event:FireServer(n_82,lol_20) wait(0.3) Event:FireServer(n_83,lol_20) wait(0.3) Event:FireServer(n_84,lol_20) wait(0.3) Event:FireServer(n_85,lol_20) wait(0.3) Event:FireServer(n_86,lol_20) wait(0.3) Event:FireServer(n_87,lol_20) wait(0.3) Event:FireServer(n_88,lol_20) wait(0.3) Event:FireServer(n_89,lol_20) wait(0.3) Event:FireServer(n_91,lol_20) wait(0.3) Event:FireServer(n_92,lol_20) wait(0.3) Event:FireServer(n_93,lol_20) wait(0.3) Event:FireServer(n_94,lol_20)
	wait(0.3) Event:FireServer(n_95,lol_20) wait(0.3) Event:FireServer(n_96,lol_20) wait(0.3) Event:FireServer(n_97,lol_20) wait(0.3) Event:FireServer(n_98,lol_20) wait(0.3) Event:FireServer(n_99,lol_20)
	wait(0.3) Event:FireServer(n_101,lol_20) wait(0.3) Event:FireServer(n_102,lol_20) wait(0.3) Event:FireServer(n_103,lol_20) wait(0.3) Event:FireServer(n_104,lol_20) wait(0.3) Event:FireServer(n_105,lol_20)
	wait(0.3) Event:FireServer(n_106,lol_20) wait(0.3) Event:FireServer(n_107,lol_20) wait(0.3) Event:FireServer(n_108,lol_20) wait(0.3) Event:FireServer(n_109,lol_20) wait(0.3) Event:FireServer(n_110,lol_20)
	wait(0.3) Event:FireServer(n_111,lol_20) wait(0.3) Event:FireServer(n_112,lol_20) wait(0.3) Event:FireServer(n_113,lol_20) wait(0.3) Event:FireServer(n_114,lol_20) wait(0.3) Event:FireServer(n_115,lol_20)
	wait(0.3) Event:FireServer(n_116,lol_20) wait(0.3) Event:FireServer(n_117,lol_20) wait(0.3) Event:FireServer(n_118,lol_20) wait(0.3) Event:FireServer(n_119,lol_20) wait(0.3) Event:FireServer(n_120,lol_20)
	wait(0.3) Event:FireServer(n_121,lol_20) wait(0.3) Event:FireServer(n_122,lol_20) wait(0.3) Event:FireServer(n_123,lol_20) wait(0.3) Event:FireServer(n_124,lol_20)
	wait(0.3)
	Event:FireServer(n_125,lol_20)
	MakeStyle2Notification("Auto Plant","The Plant "..lol_20.." has been planted", 5)
end)

LoadingGui()

HybridFarmingSection:addTextbox("Plant Name" ,"None" , function(t,f)
	if f then
		lol_20 = t
		MakeStyle2Notification("Plant Name","The Plant "..lol_20.." was what you typed", 5)
	end
end)

LoadingGui()

HybridFarmingSection:addToggle("Auto Farm levels!",nil, function(bool)
	if bool then
		MakeStyle2Notification("Auto Farm","Auto Farm is Enabled.", 5)
		MakeStyle2Notification("Auto Farm","To use in vips you must fire atleast 1 javlin or arrow or sling or trident", 2)
		return HybridAutoFarmFunction()
	end
	MakeStyle2Notification("Auto Farm","Auto Farm is Disabled.", 5)
	HybridAutofarmingToggle = false
end)

LoadingGui()



LoadingGui()

local AutoPickupKeybindbind = "o" 
if _G.SettingsTable.AutoPickupKeybind and _G.SettingsTable.AutoPickupKeybind ~= "" then
	AutoPickupKeybindbind = _G.SettingsTable.AutoPickupKeybind
end
HybridAutomationSection:addButton("Auto Pickup", function()
	local mouse = Player:GetMouse();
	mouse.KeyDown:connect(function(key)
		if key:lower() == AutoPickupKeybindbind:lower() then 
			local FoundItems;
			local myCF = Player.Character.HumanoidRootPart.Position
			local FoundItems = {}
			for i,v in pairs(workspace.Items:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
					Distance = (myCF - v.Position).magnitude
					if Distance < 40 then
						table.insert(FoundItems,v)
					end
				elseif v.ClassName == "Model" then
					if v.PrimaryPart ~= nil then
						Distance = (myCF - v.PrimaryPart.Position).magnitude
						if Distance < 40 then
							table.insert(FoundItems,v)
						end
					end
				end
			end
			for i,v in pairs(FoundItems) do
				spawn(function()
					game.ReplicatedStorage.Events.Pickup:InvokeServer(v)
				end)
			end
		end
	end)
end)

LoadingGui()

HybridAutomationSection:addTextbox("Auto-pickup", AutoPickupKeybindbind, function(t,f)
	if f then
		AutoPickupKeybindbind = t:lower()
		_G.SettingsTable.AutoPickupKeybind = AutoPickupKeybindbind
		SaveSettings()
	end
end)     

LoadingGui()

HybridAutomationSection:addToggle("Auto Pickup",nil, function(bool)
	_G.SettingsTable.HybirdPickup = bool
	SaveSettings()
	if bool then 
		MakeStyle2Notification("Auto Pickup","Auto Pickup is Enabled.", 5)
		return AutoPickupFunction()
	end
	MakeStyle2Notification("Auto Pickup","Auto Pickup is Disabled.", 5)
	AutoPickupEnabled = false
end)

LoadingGui()

HybridMiscSection:addButton("2019 Gui mod", function()
	MakeStyle2Notification("2019 gui", "Chlo made this!", 4)
	local args = {
		[1] = "guiType",
		[2] = "2019"
	}
	game:GetService("ReplicatedStorage").Events.ChangeSetting:InvokeServer(unpack(args))
	wait(0.5)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ChloDev/Booga-Hybrid-2019-gui-mod/main/Gay%20sex.lua"))()
	MakeNotification("eee","Open your inventory or something to update it", 5)
end)

LoadingGui()

local autodigstuff1 = false
local autodigstuff2 = function()
	autodigstuff1 = true
	spawn(function()
		while wait(0.6) do
			if not autodigstuff1 then
				return
			end
			local MyPos = Player.Character.HumanoidRootPart.Position
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				if v.ClassName == "Part" then
					if v.name ~= "Bedrock" then
						Distance = (MyPos - v.Position).magnitude
						if Distance < 50 then
							local args = {[1] = v}
							spawn(function()
								wait(0.000001)
								game:GetService("ReplicatedStorage").Comm.Events.Dug:FireServer(unpack(args))
							end)
						end
					end
				end
			end
		end
	end)
end

LoadingGui()

local autosell1 = false
local autosell2 = function()
	autosell1 = true
	spawn(function()
		while wait(20) do
			if not autosell1 then
				return
			end
			me = Player.Character
			local OldCF = me.HumanoidRootPart.CFrame
			me.HumanoidRootPart.CFrame = CFrame.new(-1212.25049, 8.20848942, 115.959656)
			wait(0.25)
			me.HumanoidRootPart.CFrame = OldCF
		end
	end)
end

LoadingGui()

local gotopwhenfill1 = false
local gotopwhenfill2 = function()
	gotopwhenfill1 = true
	spawn(function()
		while wait(120) do
			if not gotopwhenfill1 then
				return
			end
			me = Player.Character
			me.HumanoidRootPart.CFrame = CFrame.new(1213.76819, 2.22484827, 192.759781)
		end
	end)
end

LoadingGui()

local gotopwhenfill3 = false
local gotopwhenfill4 = function()
	gotopwhenfill3 = true
	spawn(function()
		while wait(120) do
			if not gotopwhenfill3 then
				return
			end
			me = Player.Character
			me.HumanoidRootPart.CFrame = CFrame.new(-73.9196625, 15.775156, 115.660797)
		end
	end)
end

LoadingGui()

BoogaDigAutomationSection:addToggle("Auto Mine",nil, function(bool)
	if bool then
		MakeStyle2Notification("Auto Mine","Auto Mine is Enabled.", 5)
		return autodigstuff2()
	end
	AutoDigstuff3.Text = "False"
	MakeStyle2Notification("Auto Mine","Auto Mine is disabled.", 5)
end)

LoadingGui()

BoogaDigAutomationSection:addToggle("Auto Sell (kinda)",nil, function(bool)
	if bool then
		return autosell2()
	end
	autosell1 = false
end)

LoadingGui()

BoogaDigAutomationSection:addToggle("Go to top when filled (void)",nil,function(bool)
	if bool then
		return gotopwhenfill2()
	end
	gotopwhenfill1 = false
end)

LoadingGui()

BoogaDigAutomationSection:addToggle("Go to top when filled (Overworld)",nil,function(bool)
	if bool then
		return gotopwhenfill4()
	end
	gotopwhenfill3 = false
end)

LoadingGui()

-- end of Hybrid page
LibraryCreditSection:addButton("Venyx", function()
	MakeNotification("UpdateVersion", "https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua", 20)
end)

LoadingGui()

-- end of credits
UpdateVersionSection:addButton("UpdateVersion 3.0", function()
	print("Update 3")
	print("Moved alot of stuff around")
	print("Added Inf bag!")
	print("Added Anti coin lag")
	print("Added Auto Save & Auto Load settings")
	print("Removed VisualSystem")
	print("Fixed a few security issues")
	print("Fixed Classic Spam tp ")
	print("Fixed the crashes")
	print("did some more stuff but too lazy to say here")
	MakeStyle2Notification("Update Log","Press F-9 to see the list.", 10)
end)

LoadingGui()

-- end of update log
UpdateVersionSection:addButton("Planned Updates", function()
	print("Custimizeable hoe for hybrid Auto-Plant")
	MakeStyle2Notification("Update Plans","Press F-9 to see the list.", 10)
end)

LoadingGui()

-- end of planned updates

DeveloperCreditSection:addButton("Jinxcard! (Discord: im a bot#9159", function()
	MakeStyle2Notification("Jinxcard Credits", "https://discord.gg/DnHErFz8nW", 30)
	MakeStyle2Notification("Jinxcard Credits", "Creater of most of these scripts!", 5)
end)

LoadingGui()

-- end of jinxcard credits
DeveloperCreditSection:addButton("Chlo! (Helped with these scripts!)", function()
	MakeNotification("NWUIbfqpfbqwfq","Credits to Chlo for this Notification System!", 25)
end)

LoadingGui()

-- end of Chlo credits
-- end of credits

spawn(function()
	if _G.SettingsTable.KillAurar then 
		startKill()
		MakeNotification("LoadSettingsKillAura", "Kill Aura toggle is on", 10)
	end

	if _G.SettingsTable.ModChecker then 
		Checkformoderation2()
		MakeNotification("LoadSettingsModCheck", "Mod check is on", 10)
	end

	if _G.SettingsTable.HybirdPickup then
		AutoPickupFunction()
		MakeNotification("LoadSettingspickup", "Hybird Auto Pickup toggle is on", 10)
	end
end)

LoadingGui()

local GuiLoadTime = math.floor(tick() - GuiLoadBegin)
MakeNotification("Gui Time","it took "..GuiLoadTime.." second(s) for the gui to start.")

spawn(function()
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Player.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
	end
end)


print("Gay Whore")
