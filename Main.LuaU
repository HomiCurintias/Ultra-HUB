-- eu usei um plugin de converter GUI para script, por isso ta tao grande
local function createGui(parent)
	--ScreenGui1--
	local ScreenGui1 = Instance.new("ScreenGui",parent)
	ScreenGui1["Name"] = "UltraHUB"
	ScreenGui1["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
	----ScreenGui1----
	--Frame2--
	local Frame2 = Instance.new("Frame",ScreenGui1)
	Frame2["Position"] = UDim2.new(0.276283622, 58, 0.24004975, -14)
	Frame2["Size"] = UDim2.new(0, 732, 0, 417)
	Frame2["Active"] = true
	Frame2["BorderColor3"] = Color3.new(1, 0, 0)
	Frame2["ZIndex"] = 99
	Frame2["BorderSizePixel"] = 5
	Frame2["BackgroundColor3"] = Color3.new(0, 0, 0)
	----Frame2----
	--TextLabel3--
	local TextLabel3 = Instance.new("TextLabel",Frame2)
	TextLabel3["TextSize"] = 40
	TextLabel3["Font"] = Enum.Font.Unknown
	TextLabel3["Size"] = UDim2.new(0, 732, 0, 50)
	TextLabel3["TextColor3"] = Color3.new(1, 0, 0)
	TextLabel3["BorderColor3"] = Color3.new(1, 0, 0)
	TextLabel3["Text"] = "Ultra's HUB"
	TextLabel3["BorderSizePixel"] = 5
	TextLabel3["BackgroundColor3"] = Color3.new(0, 0, 0)
	----TextLabel3----
	--TextButton4--
	local TextButton4 = Instance.new("TextButton",Frame2)
	TextButton4["TextColor3"] = Color3.new(1, 0, 0)
	TextButton4["BorderColor3"] = Color3.new(1, 0, 0)
	TextButton4["Text"] = "Fly"
	TextButton4["Font"] = Enum.Font.Antique
	TextButton4["Name"] = "FlyButton"
	TextButton4["Position"] = UDim2.new(0.0628415272, 0, 0.441247016, 0)
	TextButton4["TextSize"] = 40
	TextButton4["Size"] = UDim2.new(0, 200, 0, 50)
	TextButton4["BorderSizePixel"] = 5
	TextButton4["BackgroundColor3"] = Color3.new(0, 0, 0)
	----TextButton4----
	--Script5--
	local Script5 = Instance.new("Script",TextButton4)
	----Script5----
	--TextButton6--
	local TextButton6 = Instance.new("TextButton",Frame2)
	TextButton6["TextColor3"] = Color3.new(1, 0, 0)
	TextButton6["BorderColor3"] = Color3.new(1, 0, 0)
	TextButton6["Text"] = "IMORTAL"
	TextButton6["Font"] = Enum.Font.Antique
	TextButton6["Name"] = "Die"
	TextButton6["Position"] = UDim2.new(0.695355177, 0, 0.441247016, 0)
	TextButton6["TextSize"] = 50
	TextButton6["Size"] = UDim2.new(0, 200, 0, 50)
	TextButton6["BorderSizePixel"] = 5
	TextButton6["BackgroundColor3"] = Color3.new(0, 0, 0)
	----TextButton6----
	--Script7--
	local Script7 = Instance.new("Script",TextButton6)
	----Script7----
	--TextButton8--
	local TextButton8 = Instance.new("TextButton",Frame2)
	TextButton8["TextColor3"] = Color3.new(1, 0, 0)
	TextButton8["BorderColor3"] = Color3.new(1, 0, 0)
	TextButton8["Text"] = "Lound Sounds"
	TextButton8["Font"] = Enum.Font.Antique
	TextButton8["Name"] = "LoudSounds"
	TextButton8["Position"] = UDim2.new(0.377049178, 0, 0.441247016, 0)
	TextButton8["TextSize"] = 50
	TextButton8["Size"] = UDim2.new(0, 200, 0, 50)
	TextButton8["BorderSizePixel"] = 5
	TextButton8["BackgroundColor3"] = Color3.new(0, 0, 0)
	----TextButton8----
	--Script9--
	local Script9 = Instance.new("Script",TextButton8)
	----Script9----
	--TextButton10--
	local TextButton10 = Instance.new("TextButton",ScreenGui1)
	TextButton10["TextColor3"] = Color3.new(1, 0, 0)
	TextButton10["BorderColor3"] = Color3.new(1, 0, 0)
	TextButton10["Text"] = "Ultra"
	TextButton10["TextSize"] = 20
	TextButton10["Font"] = Enum.Font.Antique
	TextButton10["Name"] = "ToggleButton"
	TextButton10["Position"] = UDim2.new(0.141809285, -108, 0.0820895508, 13)
	TextButton10["Size"] = UDim2.new(0, 52, 0, 50)
	TextButton10["ZIndex"] = 98
	TextButton10["BorderSizePixel"] = 2
	TextButton10["BackgroundColor3"] = Color3.new(0, 0, 0)
	----TextButton10----
	--Script11--
	local Script11 = Instance.new("Script",TextButton10)
	----Script11----
	--TextLabel12--
	local TextLabel12 = Instance.new("TextLabel",ScreenGui1)
	TextLabel12["TextColor3"] = Color3.new(0, 0, 0)
	TextLabel12["BorderColor3"] = Color3.new(0, 0, 0)
	TextLabel12["Text"] = "By: VeryLixo"
	TextLabel12["TextSize"] = 14
	TextLabel12["Font"] = Enum.Font.SourceSans
	TextLabel12["BackgroundTransparency"] = 1
	TextLabel12["Position"] = UDim2.new(0, 0, 0.937810957, 0)
	TextLabel12["Size"] = UDim2.new(0, 200, 0, 50)
	TextLabel12["ZIndex"] = 97
	TextLabel12["BorderSizePixel"] = 0
	TextLabel12["BackgroundColor3"] = Color3.new(1, 1, 1)
	----TextLabel12----
	spawn(function() --Source for Script5
		local script = Script5
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		
		local UIS = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
		
		local flying = false
		local speed = 50
		local fastSpeed = 100
		local currentSpeed = speed
		local direction = Vector3.new()
		
		-- Variáveis para reuso
		local bodyVelocity
		local bodyGyro
		local movementConnection
		
		local function Fly()
			flying = not flying
		
			if flying then
				-- Iniciar voo
				bodyGyro = Instance.new("BodyGyro")
				bodyGyro.P = 9e4
				bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
				bodyGyro.CFrame = humanoidRootPart.CFrame
				bodyGyro.Parent = humanoidRootPart
		
				bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.Velocity = Vector3.new(0,0,0)
				bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
				bodyVelocity.Parent = humanoidRootPart
		
				movementConnection = RunService.RenderStepped:Connect(function()
					local camera = workspace.CurrentCamera
					local moveDirection = (camera.CFrame:VectorToWorldSpace(direction)).Unit
					if direction.Magnitude == 0 then moveDirection = Vector3.new(0,0,0) end
					bodyVelocity.Velocity = moveDirection * currentSpeed
					bodyGyro.CFrame = camera.CFrame
				end)
		
			else
				-- Parar voo
				if bodyVelocity then bodyVelocity:Destroy() end
				if bodyGyro then bodyGyro:Destroy() end
				if movementConnection then movementConnection:Disconnect() end
				direction = Vector3.new(0, 0, 0)
			end
		end
		
		-- Input handlers fora da função, para não duplicar conexões
		UIS.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed then return end
			if input.KeyCode == Enum.KeyCode.W then direction = direction + Vector3.new(0, 0, -1) end
			if input.KeyCode == Enum.KeyCode.S then direction = direction + Vector3.new(0, 0, 1) end
			if input.KeyCode == Enum.KeyCode.A then direction = direction + Vector3.new(-1, 0, 0) end
			if input.KeyCode == Enum.KeyCode.D then direction = direction + Vector3.new(1, 0, 0) end
			if input.KeyCode == Enum.KeyCode.Space then direction = direction + Vector3.new(0, 1, 0) end
			if input.KeyCode == Enum.KeyCode.LeftShift then currentSpeed = fastSpeed end
		end)
		
		UIS.InputEnded:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.W then direction = direction - Vector3.new(0, 0, -1) end
			if input.KeyCode == Enum.KeyCode.S then direction = direction - Vector3.new(0, 0, 1) end
			if input.KeyCode == Enum.KeyCode.A then direction = direction - Vector3.new(-1, 0, 0) end
			if input.KeyCode == Enum.KeyCode.D then direction = direction - Vector3.new(1, 0, 0) end
			if input.KeyCode == Enum.KeyCode.Space then direction = direction - Vector3.new(0, 1, 0) end
			if input.KeyCode == Enum.KeyCode.LeftShift then currentSpeed = speed end
		end)
		
		-- Conecta o botão
		player:WaitForChild("PlayerGui"):WaitForChild("UltraHUB").Frame.FlyButton.MouseButton1Click:Connect(Fly)
		
	end)
	spawn(function() --Source for Script7
		local script = Script7
		local function Die()
			local character = game.Players.LocalPlayer.Character
			if character and character:FindFirstChild("Humanoid") then
				character.Humanoid.Health += 999999999999999
			end
		end
		
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("UltraHUB").Frame.Die.MouseButton1Click:Connect(Die)
		
	end)
	spawn(function() --Source for Script9
		local script = Script9
		local player = game.Players.LocalPlayer
		local gui = player:WaitForChild("PlayerGui"):WaitForChild("UltraHUB")
		local button = gui.Frame:WaitForChild("LoudSounds")
		
		local Xp = Instance.new("Sound")
		Xp.Looped = true
		Xp.Volume = 100
		Xp.Name = "XP"
		Xp.SoundId = "rbxassetid://1626996526"
		Xp.Parent = game.SoundService
		
		local Nah = Instance.new("Sound")
		Nah.Looped = true
		Nah.Volume = 100
		Nah.Name = "NAH"
		Nah.SoundId = "rbxassetid://885589466"
		Nah.Parent = game.SoundService
		
		local B = Instance.new("Sound")
		B.Looped = true
		B.Volume = 100
		B.Name = "B"
		B.SoundId = "rbxassetid://474303247"
		B.Parent = game.SoundService
		
		local Playing = false
		
		local function Play()
			Xp:Play()
			Nah:Play()
			B:Play()
			Playing = true
		end
		
		local function Stop()
			Xp:Stop()
			Nah:Stop()
			B:Stop()
			Playing = false
		end
		
		local function Verify()
			if Playing then
				Stop()
			else
				Play()
			end
		end
		
		button.MouseButton1Click:Connect(Verify)
	end)
	spawn(function() --Source for Script11
		local script = Script11
		local player = game.Players.LocalPlayer
		local playerGui = player:WaitForChild("PlayerGui")
		local ultraHub = playerGui:WaitForChild("UltraHUB")
		local frame = ultraHub:WaitForChild("Frame")
		local toggleButton = ultraHub:WaitForChild("ToggleButton")
		
		local function Toggle()
			if frame.Visible then
				frame.Visible = false
			else
				frame.Visible = true
			end
		end
		
		toggleButton.MouseButton1Click:Connect(Toggle)
		
	end)
end
createGui(game.CoreGui) --coregui by default you should but change it
