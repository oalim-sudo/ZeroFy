local Players1 = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local module = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/09b303c5a1cf601bda1370252c65712a/raw/d7c50c43db2b33c1f7516a10317ff642f77c89a6/UITest.luau"))()
local LocalPlayer1 = Players1.LocalPlayer
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
local v3

if not Remotes then
	v3 = nil
else
	v3 = Remotes:FindFirstChild("Throw_Start") or Remotes:WaitForChild("Throw_Start", 5)
end

local v4 = v3
local v5

if not Remotes then
	v5 = nil
else
	v5 = Remotes:FindFirstChild("Throw_Resolve") or Remotes:WaitForChild("Throw_Resolve", 5)
end

local v6 = v5
local v7

if not Remotes then
	v7 = nil
else
	v7 = Remotes:FindFirstChild("Throw_Complete") or Remotes:WaitForChild("Throw_Complete", 5)
end

local v8 = v7
local v9

if not Remotes then
	v9 = nil
else
	v9 = Remotes:FindFirstChild("Shop_Buy") or Remotes:WaitForChild("Shop_Buy", 5)
end

local v10 = v9
local v11

if not Remotes then
	v11 = nil
else
	v11 = Remotes:FindFirstChild("Shop_Equip") or Remotes:WaitForChild("Shop_Equip", 5)
end

local v12 = v11
local v13

if not Remotes then
	v13 = nil
else
	v13 = Remotes:FindFirstChild("Stand_Upgrade") or Remotes:WaitForChild("Stand_Upgrade", 5)
end

local v14 = v13
local v15

if not Remotes then
	v15 = nil
else
	v15 = Remotes:FindFirstChild("Training_Start") or Remotes:WaitForChild("Training_Start", 5)
end

local v16 = v15
local v17

if not Remotes then
	v17 = nil
else
	v17 = Remotes:FindFirstChild("Training_Stop") or Remotes:WaitForChild("Training_Stop", 5)
end

local v18 = v17
local v19

if not Remotes then
	v19 = nil
else
	v19 = Remotes:FindFirstChild("Plot_SellAll") or Remotes:WaitForChild("Plot_SellAll", 5)
end

local v20 = v19
local v21

if not Remotes then
	v21 = nil
else
	v21 = Remotes:FindFirstChild("Plot_SellAnimal") or Remotes:WaitForChild("Plot_SellAnimal", 5)
end

local v22 = v21
local v23

if not Remotes then
	v23 = nil
else
	v23 = Remotes:FindFirstChild("Plot_EquipBest") or Remotes:WaitForChild("Plot_EquipBest", 5)
end

local v24 = v23

local function func(arg1)
	if not arg1 or not arg1:IsA("ModuleScript") then
		return nil
	end

	local ok, result = pcall(require, arg1)

	if ok and type(result) == "table" then
		return result
	end

	local v1 = getgenv and getgenv() or _G
	local v2 = v1.setthreadidentity or v1.setidentity or v1.syn and v1.syn.set_thread_identity
	local v3 = v1.getthreadidentity or v1.getidentity or v1.syn and v1.syn.get_thread_identity

	if v2 and v3 then
		local v4 = v3()
		v2(2)
		local ok1, result1 = pcall(require, arg1)
		v2(v4)

		if ok1 and type(result1) == "table" then
			return result1
		end
	end

	if v1.getrenv and v1.getrenv().require then
		local ok2, result2 = pcall(v1.getrenv().require, arg1)
		if ok2 and type(result2) == "table" then
			return result2
		end
	end

	return nil
end

local v38
local FindFirstChild = ReplicatedStorage.FindFirstChild

local function func1()
	if v38 then
		return v38
	end

	local v1 = LocalPlayer1 and LocalPlayer1:FindFirstChild("PlayerScripts")
	local v2 = v1 and v1:FindFirstChild("Client")
	local v3 = v2 and v2:FindFirstChild("Controllers")
	local v4 = v3 and v3:FindFirstChild("DataController")

	if v4 then
		v38 = func(v4)
		if v38 then
			return v38
		end
	end

	local v5 = getgenv and getgenv() or _G

	if v5.getgc then
		for _, v6 in pairs(v5.getgc(true)) do
			if type(v6) == "table" and rawget(v6, "GetData") and rawget(v6, "ObserveKey") and rawget(v6, "IsReady") then
				v38 = v6
				return v6
			end
		end
	end

	return nil
end

local v25 = FindFirstChild(ReplicatedStorage, "Config")
local v26 = v25 and func(v25:FindFirstChild("FoodsConfig"))
local v27 = v25 and func(v25:FindFirstChild("StandsConfig"))
local v28 = v25 and func(v25:FindFirstChild("RarityConfig"))
local v29 = v25 and func(v25:FindFirstChild("AnimalEconomy"))
local v30 = v25 and func(v25:FindFirstChild("MutationsConfig"))

local tbl = {
	0,
	30,
	150,
	4000,
	20000,
	200000,
	1000000,
	12000000,
	60000000,
	650000000,
	3200000000,
	30000000000,
	150000000000,
	1300000000000,
	6800000000000,
	57000000000000,
	1500000000000000,
	50000000000000000,
	120000000000000000,
	4000000000000000000,
	18000000000000000000,
	120000000000000000000,
	700000000000000000000,
	4000000000000000000000,
	27000000000000000000000,
	180000000000000000000000,
	450000000000000000000000,
	1400000000000000000000000,
	3500000000000000000000000,
	2500000000000000000000000000,
	28000000000000000000000000000,
	250000000000000000000000000000,
	750000000000000000000000000000000,
	8500000000000000000000000000000000,
	75000000000000000000000000000000000,
	18000000000000000000000000000000000000,
	200000000000000000000000000000000000000,
	1800000000000000000000000000000000000000,
}

local tbl1 = {
	1,
	50,
	2000,
	12000,
	100000,
	600000,
	6000000,
	38000000,
	320000000,
	2000000000,
	15000000000,
	90000000000,
	680000000000,
	4200000000000,
	28000000000000,
	170000000000000,
	1200000000000000,
	7000000000000000,
	50000000000000000,
	300000000000000000,
	2000000000000000000,
	12000000000000000000,
	80000000000000000000,
	500000000000000000000,
	3000000000000000000000,
	18000000000000000000000,
	120000000000000000000000,
	700000000000000000000000,
	3000000000000000000000000,
	300000000000000000000000000,
	6000000000000000000000000000,
	60000000000000000000000000000,
	500000000000000000000000000000,
	2500000000000000000000000000000,
	90000000000000000000000000000000,
	1800000000000000000000000000000000,
	18000000000000000000000000000000000,
	2200000000000000000000000000000000000,
	45000000000000000000000000000000000000,
	450000000000000000000000000000000000000,
}

local tbl2 = {
	"Common",
	"Uncommon",
	"Rare",
	"Epic",
	"Legendary",
	"Mythic",
	"Secret",
	"Divine",
	"Celestial",
	"Eternal",
	"Cosmic",
	"Supreme",
}

local tbl3 = {"None", "Gold", "Diamond", "Emerald", "Ruby", "Rainbow"}
local tbl4 = {}

if v26 and type(v26.List) == "table" and #v26.List > 0 then
	for i, v31 in ipairs(v26.List) do
		tbl4[i] = v31.Price or 0
	end
else
	tbl4 = tbl
end

local tbl5 = {}

if v27 and type(v27.List) == "table" and #v27.List > 0 then
	for i1, v32 in ipairs(v27.List) do
		tbl5[i1] = v32.Price or 0
	end
else
	tbl5 = tbl1
end

local tbl6 = {}

if v28 and type(v28.List) == "table" and #v28.List > 0 then
	for _, v33 in ipairs(v28.List) do
		local v34 = type(v33) == "table" and (v33.Name or v33[1]) or v33
		if v34 then
			table.insert(tbl6, tostring(v34))
		end
	end
else
	tbl6 = tbl2
end

local tbl7 = {"None"}
local v35 = tbl7

if v30 and type(v30.List) == "table" and #v30.List > 0 then
	for _, v36 in ipairs(v30.List) do
		local v37 = type(v36) == "table" and (v36.Name or v36[1]) or v36
		if v37 then
			table.insert(tbl7, tostring(v37))
		end
	end
else
	v35 = tbl3
end

local tbl8 = {}

if v29 and type(v29.List) == "table" then
	for k in pairs(v29.List) do
		table.insert(tbl8, tostring(k))
	end
	table.sort(tbl8)
end

local function func2()
	local v1 = func1()

	if v1 and v1.Get then
		local v2 = v1:Get("Money")
		if type(v2) == "number" then
			return v2
		end
	end

	local v3 = LocalPlayer1 and LocalPlayer1:FindFirstChild("leaderstats")
	local v4 = v3 and v3:FindFirstChild("Money")

	if v4 and v4:IsA("ValueBase") then
		local v5 = tostring(v4.Value):gsub("[%$,%s]", "")
		return tonumber(v5) or 0
	end

	return 0
end

local function func3()
	local v1 = func1()

	if v1 and v1.Get then
		local v2 = v1:Get("EquippedFood")
		if type(v2) == "number" then
			return v2
		end
	end

	return 1
end

local function func4()
	local v1 = func1()

	if v1 and v1.Get then
		local v2 = v1:Get("Stand")
		if type(v2) == "number" then
			return v2
		end
	end

	return 0
end

local function func5()
	local str = tostring(LocalPlayer1 and LocalPlayer1:GetAttribute("PlotIndex") or "")

	if str ~= "" and Workspace:FindFirstChild("Plots") then
		return Workspace.Plots:FindFirstChild(str)
	end

	return nil
end

local function func6()
	local LocalPlotProps = Workspace:FindFirstChild("LocalPlotProps")
	local v1 = LocalPlotProps and LocalPlotProps:FindFirstChild("TrainingArea") and LocalPlotProps.TrainingArea:FindFirstChild("TrainingSpot")

	if v1 and v1:IsA("BasePart") then
		return v1.CFrame + Vector3.new(0, 3.2, 0)
	end

	local v2 = func5()
	local v3 = v2 and v2:FindFirstChild("Server") and v2.Server:FindFirstChild("PullUpStand")

	if v3 then
		local v4 = v3:FindFirstChild("Bar") and v3.Bar:FindFirstChild("Main")

		if v4 and v4:IsA("BasePart") then
			return CFrame.new(v4.Position.X, 5.7, v4.Position.Z)
		end

		return v3:GetPivot() + Vector3.new(0, 3.2, 0)
	end

	return nil
end

local function func7()
	local LocalPlotProps = Workspace:FindFirstChild("LocalPlotProps")
	local v1 = LocalPlotProps and LocalPlotProps:FindFirstChild("TrainingArea") and LocalPlotProps.TrainingArea:FindFirstChild("TrainingSpot") and LocalPlotProps.TrainingArea.TrainingSpot:FindFirstChild("UpgradeButton")

	if v1 and v1:IsA("BasePart") then
		return v1.CFrame + Vector3.new(0, 3.2, 0)
	end

	local v2 = func6()

	if v2 then
		return CFrame.new(v2.Position.X, 5.7, -16.5)
	end

	return nil
end

local function func8()
	local LocalPlotProps = Workspace:FindFirstChild("LocalPlotProps")
	local v1 = LocalPlotProps and LocalPlotProps:FindFirstChild("FoodShop")

	if v1 then
		local ActivationCircle = v1:FindFirstChild("ActivationCircle")

		if ActivationCircle and ActivationCircle:IsA("BasePart") then
			return ActivationCircle.CFrame + Vector3.new(0, 3.2, 0)
		end

		return v1:GetPivot() + Vector3.new(0, 3.2, 0)
	end

	local v2 = func6()

	if v2 then
		return CFrame.new(v2.Position.X + 26.53, 5.7, -8.3)
	end

	return nil
end

local function func9()
	local v1 = func5()

	if v1 then
		local v2 = v1:FindFirstChild("Server") and v1.Server:FindFirstChild("PullUpStand")

		if v2 then
			local v3 = v2:FindFirstChild("Bar") and v2.Bar:FindFirstChild("Main")
			if v3 and v3:IsA("BasePart") then
				return CFrame.new(v3.Position.X + 16, 5.5, 22.5)
			end
		end

		return v1:GetPivot() + Vector3.new(0, 5.2, 0)
	end

	return nil
end

local function func10(arg1)
	arg1:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
	arg1:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)

	arg1.StateChanged:Connect(function(_, newState)
		if newState == Enum.HumanoidStateType.Ragdoll or newState == Enum.HumanoidStateType.FallingDown then
			arg1:ChangeState(Enum.HumanoidStateType.GettingUp)
		end
	end)
end

local function func11(cFrame)
	if not cFrame then
		return
	end

	local v1 = LocalPlayer1 and LocalPlayer1.Character
	local v2 = v1 and v1:FindFirstChild("HumanoidRootPart")
	local v3 = v1 and v1:FindFirstChildOfClass("Humanoid")

	if v2 and v2:IsA("BasePart") then
		v2.CFrame = cFrame
		v2.AssemblyLinearVelocity = Vector3.zero
		v2.AssemblyAngularVelocity = Vector3.zero

		if v3 then
			v3:ChangeState(Enum.HumanoidStateType.GettingUp)
		end
	end
end

local Window = module:CreateWindow({Title = " Symbiote ", MinWidth = 201, MinHeight = 122})
local autoFarmTab = Window:CreateTab("Auto Farm")
local playerTab = Window:CreateTab("Player")
local flag = false

local function func12()
	while flag do
		if v4 and v6 and v8 then
			func11(CFrame.new(0, 5.7, -37))
			task.wait(0.1)

			pcall(function()
				v4:InvokeServer()
			end)

			task.wait(0.1)

			if not flag then
				break
			end

			pcall(function()
				v6:InvokeServer(1)
			end)

			task.wait(0.1)

			if not flag then
				break
			end

			pcall(function()
				v8:InvokeServer()
			end)
		else
			task.wait(0.5)
		end
		task.wait(0.1)
	end
end

autoFarmTab:AddToggle("Auto Farm", function(arg1)
	flag = arg1
	if arg1 then
		task.spawn(func12)
	end
end)

local function func13()
	if not v10 or not v12 then
		return
	end

	local v1 = func1()
	local v2 = v1 and v1.Get and v1:Get("OwnedFoods")
	local v3 = type(v2) == "table" and v2 or nil
	local v4 = func2()
	local v5 = #tbl4
	local v9
	local v6 = v5

	if not (false or (false and v5 > 1 or true and v5 < 1)) then
		while true do
			local v7

			if v3 then
				v7 = v3[v6] == true or v3[tostring(v6)] == true
			else
				v7 = v6 == 1
			end

			if not v7 then
				local v8 = tbl4[v6]
				if v8 and v8 <= v4 then
					v9 = v6
					break
				end
			end

			v6 = v6 + -1

			if (false and v6 > 1 or true and v6 < 1 or false) then
				break
			end
		end
	end

	if v9 then
		local v11 = func8()

		if v11 then
			func11(v11)
			task.wait(0.3)
		end

		local v15

		pcall(function()
			v15 = v10:InvokeServer(v9)
		end)

		if v15 and (v15.Ok or v15 == true) then
			task.wait(0.1)
			pcall(function()
				v12:InvokeServer(v9)
			end)
		end
	else
		local num = 1
		local v13 = v5

		if not (false or (false and v5 > 1 or true and v5 < 1)) then
			while true do
				local v14

				if v3 then
					v14 = v3[v13] == true or v3[tostring(v13)] == true
				else
					v14 = v13 == 1
				end

				if v14 then
					num = v13
				else
					v13 = v13 + -1
					if not (false and v13 > 1 or true and v13 < 1 or false) then
						continue
					end
				end

				break
			end
		end

		if func3() ~= num then
			pcall(function()
				v12:InvokeServer(num)
			end)
		end
	end
end

local flag1 = false

local function func14()
	while flag1 do
		func13()
		task.wait(1)
	end
end

autoFarmTab:AddToggle("Auto Buy Best Food", function(arg1)
	flag1 = arg1
	if arg1 then
		task.spawn(func14)
	end
end)

local function func15()
	if not v14 then
		return
	end

	local v1 = func2()
	local v2 = func4()
	local v3 = tbl5[v2 + 1]

	if v3 and v3 <= v1 then
		local v4 = func7()

		if v4 then
			func11(v4)
			task.wait(0.3)
		end

		pcall(function()
			v14:InvokeServer()
		end)
	end
end

local flag2 = false

local function func16()
	while flag2 do
		func15()
		task.wait(1)
	end
end

autoFarmTab:AddToggle("Auto Stand Upgrade", function(arg1)
	flag2 = arg1
	if arg1 then
		task.spawn(func16)
	end
end)

autoFarmTab:AddToggle("Auto Train", function(arg1)
	if arg1 then
		local v1 = func6()

		if v1 then
			func11(v1)
		end

		task.wait(0.4)

		if v16 then
			task.spawn(function()
				pcall(function()
					v16:InvokeServer()
				end)
			end)
		end
	elseif v18 then
		task.spawn(function()
			pcall(function()
				v18:InvokeServer()
			end)
		end)
	end
end)

local flag3 = false

local function func17()
	while flag3 do
		local v1 = os.clock()

		while flag3 and os.clock() - v1 < 30 do
			if v4 and v6 and v8 then
				func11(CFrame.new(0, 5.7, -37))
				task.wait(0.1)

				pcall(function()
					v4:InvokeServer()
				end)

				task.wait(0.1)

				if not flag3 then
					break
				end

				pcall(function()
					v6:InvokeServer(1)
				end)

				task.wait(1)

				if not flag3 then
					break
				end

				pcall(function()
					v8:InvokeServer()
				end)
			else
				task.wait(0.5)
			end
			task.wait(0.1)
		end

		if flag3 then
			func13()
			task.wait(0.3)

			if flag3 then
				func15()
				task.wait(0.3)

				if flag3 then
					local v2 = func6()

					if v2 then
						func11(v2)
					end

					task.wait(0.4)

					if flag3 then
						if v16 then
							task.spawn(function()
								pcall(function()
									v16:InvokeServer()
								end)
							end)
						end

						local v3 = os.clock()

						while flag3 and os.clock() - v3 < 30 do
							task.wait(0.5)
						end

						if v18 then
							task.spawn(function()
								pcall(function()
									v18:InvokeServer()
								end)
							end)
						end

						task.wait(0.5)
						continue
					end
				end
			end
		end

		break
	end
	if v18 then
		task.spawn(function()
			pcall(function()
				v18:InvokeServer()
			end)
		end)
	end
end

autoFarmTab:AddToggle("Auto Train & Buy Food/Stand & Farm Cycle", function(arg1)
	flag3 = arg1
	if arg1 then
		task.spawn(func17)
	elseif v18 then
		task.spawn(function()
			pcall(function()
				v18:InvokeServer()
			end)
		end)
	end
end)

local flag4 = false

local function func18()
	while flag4 do
		if v24 then
			pcall(function()
				v24:InvokeServer()
			end)
		end
		task.wait(10)
	end
end

autoFarmTab:AddToggle("Auto Equip Best", function(arg1)
	flag4 = arg1
	if arg1 then
		if v24 then
			pcall(function()
				v24:InvokeServer()
			end)
		end
		task.spawn(func18)
	end
end)

playerTab:AddLabel("MOVEMENT")

playerTab:AddButton("Teleport To Plot", function()
	local v1 = func9()
	if v1 then
		func11(v1)
	end
end)

playerTab:AddButton("Teleport To Stand", function()
	local v1 = func6()
	if v1 then
		func11(v1)
	end
end)

playerTab:AddButton("Teleport To Food Shop", function()
	local v1 = func8()
	if v1 then
		func11(v1)
	end
end)

local num = 20
local num1 = 50

local function func19(character)
	local Humanoid = character:WaitForChild("Humanoid", 3)
	if Humanoid and Humanoid:IsA("Humanoid") then
		Humanoid.WalkSpeed = num
		Humanoid.JumpHeight = num1
		func10(Humanoid)
	end
end

if LocalPlayer1 and LocalPlayer1.Character then
	func19(LocalPlayer1.Character)
end

if LocalPlayer1 then
	LocalPlayer1.CharacterAdded:Connect(function(character)
		func19(character)
	end)
end

playerTab:AddSlider("Walkspeed", 20, 250, num, function(walkSpeed)
	num = walkSpeed
	local v1 = LocalPlayer1 and LocalPlayer1.Character
	local v2 = v1 and v1:FindFirstChild("Humanoid")

	if v2 and v2:IsA("Humanoid") then
		v2.WalkSpeed = walkSpeed
	end
end)

playerTab:AddSlider("Jump Height", 50, 250, num1, function(jumpHeight)
	num1 = jumpHeight
	local v1 = LocalPlayer1 and LocalPlayer1.Character
	local v2 = v1 and v1:FindFirstChild("Humanoid")

	if v2 and v2:IsA("Humanoid") then
		v2.JumpHeight = jumpHeight
	end
end)

local flag5 = false
local num2 = 50
local v39

local function func20(arg1)
	flag5 = arg1

	if v39 then
		v39:Disconnect()
		v39 = nil
	end

	local v1 = LocalPlayer1 and LocalPlayer1.Character
	local v2 = v1 and v1:FindFirstChild("HumanoidRootPart")

	if not arg1 then
		if v2 and v2:IsA("BasePart") then
			v2.AssemblyLinearVelocity = Vector3.zero
		end
		return
	end

	local CurrentCamera = Workspace.CurrentCamera

	v39 = RunService.RenderStepped:Connect(function()
		if not flag5 then
			return
		end

		local v1 = LocalPlayer1 and LocalPlayer1.Character
		local v2 = v1 and v1:FindFirstChild("HumanoidRootPart")
		local v3 = v1 and v1:FindFirstChild("Humanoid")

		if not v2 or not v2:IsA("BasePart") or not v3 or not CurrentCamera then
			return
		end

		local zero = Vector3.zero

		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			zero = zero + CurrentCamera.CFrame.LookVector
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			zero = zero - CurrentCamera.CFrame.LookVector
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			zero = zero - CurrentCamera.CFrame.RightVector
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			zero = zero + CurrentCamera.CFrame.RightVector
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
			zero = zero + Vector3.new(0, 1, 0)
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
			zero = zero - Vector3.new(0, 1, 0)
		end

		if zero.Magnitude > 0 then
			v2.AssemblyLinearVelocity = zero.Unit * num2
		else
			v2.AssemblyLinearVelocity = Vector3.zero
		end

		v2.AssemblyAngularVelocity = Vector3.zero
	end)
end

playerTab:AddToggle("Fly", function(arg1)
	func20(arg1)
end)

playerTab:AddSlider("Fly Speed", 10, 300, num2, function(arg1)
	num2 = arg1
end)

local flag6 = false
local v40

playerTab:AddToggle("Noclip", function(arg1)
	flag6 = arg1

	if v40 then
		v40:Disconnect()
		v40 = nil
	end

	if arg1 then
		v40 = RunService.Stepped:Connect(function()
			if not flag6 then
				return
			end

			local v1 = LocalPlayer1 and LocalPlayer1.Character

			if not v1 then
				return
			end

			for _, descendant in ipairs(v1:GetDescendants()) do
				if descendant:IsA("BasePart") and descendant.CanCollide then
					descendant.CanCollide = false
				end
			end
		end)
	end
end)

playerTab:AddSeparator()
playerTab:AddLabel("AUTO SELL")
local flag7 = false
local tbl9 = {}
local tbl10 = {}
local tbl11 = {}

local function func21()
	for _, v1 in pairs(tbl9) do
		if v1 == true then
			return true
		end
	end

	for _, v2 in pairs(tbl10) do
		if v2 == true then
			return true
		end
	end

	for _, v3 in pairs(tbl11) do
		if v3 == true then
			return true
		end
	end

	return false
end

local function func22()
	while flag7 do
		local v1 = LocalPlayer1 and LocalPlayer1:FindFirstChild("Backpack")
		local v2 = LocalPlayer1 and LocalPlayer1.Character
		local tbl = {}

		if v1 then
			for _, child in ipairs(v1:GetChildren()) do
				if child:IsA("Tool") and child:GetAttribute("AnimalId") ~= nil then
					table.insert(tbl, child)
				end
			end
		end

		if v2 then
			for _, child1 in ipairs(v2:GetChildren()) do
				if child1:IsA("Tool") and child1:GetAttribute("AnimalId") ~= nil then
					table.insert(tbl, child1)
				end
			end
		end

		if #tbl > 0 then
			if not func21() then
				if v20 then
					pcall(function()
						v20:InvokeServer()
					end)
				end
				task.wait(1)
			else
				local flag = false

				for _, v3 in pairs(tbl9) do
					if v3 == true then
						flag = true
						break
					end
				end

				local flag1 = false

				for _, v4 in pairs(tbl10) do
					if v4 == true then
						flag1 = true
						break
					end
				end

				local flag2 = false

				for _, v5 in pairs(tbl11) do
					if v5 == true then
						flag2 = true
						break
					end
				end

				for _, v6 in ipairs(tbl) do
					if not flag7 then
						break
					end

					local animalId = v6:GetAttribute("AnimalId")
					local v7 = v6:GetAttribute("AnimalName") or v6.Name
					local v8 = v6:GetAttribute("Rarity") or "Common"
					local mutation = v6:GetAttribute("Mutation")
					local v9 = not flag or tbl9[v8] == true
					local v10 = not flag1 or tbl10[mutation or "None"] == true
					local v11 = not flag2 or tbl11[v7] == true

					if v9 and v10 and v11 and animalId and v22 then
						pcall(function()
							v22:InvokeServer(animalId)
						end)
						task.wait(0.1)
					end
				end
			end
		end

		task.wait(1)
	end
end

playerTab:AddToggle("Auto Sell Animals", function(arg1)
	flag7 = arg1
	if arg1 then
		task.spawn(func22)
	end
end)

playerTab:AddDropdown("Select Tier To Sell", tbl6, function(arg1)
	tbl9 = arg1
end)

playerTab:AddDropdown("Select Mutations To Sell", v35, function(arg1)
	tbl10 = arg1
end)

playerTab:AddDropdown("Select Animals To Sell", tbl8, function(arg1)
	tbl11 = arg1
end)