-- // LOAD TIME START \\ --

local start = tick()

local GS = game.GetService

-- // VARIABLES \\ --

local Players = GS(game,"\80\108\97\121\101\114\115")
local RunService = GS(game,"\82\117\110\83\101\114\118\105\99\101")
local CoreGui = GS(game,"\67\111\114\101\71\117\105") 
local UserInputService = GS(game,"\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local TeleportService = GS(game,"\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101")
local HttpService = GS(game,"\72\116\116\112\83\101\114\118\105\99\101")

local LocalPlayer = Players.LocalPlayer

local Camera

local RenderStepped = RunService.RenderStepped
local Heartbeat = RunService.Heartbeat
local Stepped = RunService.Stepped

local Prefix = [[;]]
local CommandBarHotkey = Enum.KeyCode.Quote

local EspFolder = Instance["\110\101\119"]("\70\111\108\100\101\114",CoreGui)

local Handler
local UpdateCmdGuide
local Notify
local RandomString
local GetInstance

local CanNotify = true
local Notifications = true

local Flying = false
local FlySpeed = 0.5
local FlyTempCFrame

local Floating = false
local FloatValue = -3.5
local FloatPart

local VelocitySpeed = false
local VelocitySpeedValue = 0.01

local ToolFollowing = false
local ToolLastCFrame
local LastTool

local WalkFling = false

local Camlocking = false
local CamlockTarget
local CamlockPart = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local BotMode = false
_G.BotSpeakers = {"\69\114\114\111\114\83\117\114\103\101"}

local AllCharacters = {}
local Numbers = {}
local Characters = {}
local CommandsList = {}

local Keys = {
	["\87"] = false,
	["\65"] = false,
	["\83"] = false,
	["\68"] = false,
	["\81"] = false,
	["\69"] = false,
}

for i=1,255 do
	table.insert(AllCharacters,string.char(i))
end
for i=1,9 do
	table.insert(Numbers,tostring(i))
end
for i=65,90 do
	table.insert(Characters,string.char(i))
end

-- // FUNCTIONS \\ --

RandomString = function(length)
	local temp = ""
	for i=1,length do
		temp = temp .. AllCharacters[math["\114\97\110\100\111\109"](1,#AllCharacters)]
	end
	return temp
end

local function IsValue(value)
	if value ~= nil then
		local String = false
		local Number = false
		for i=1,string.len(value) do
			if table.find(Characters,string.sub(value,i,i)) then
				String = true
			end
			if table.find(Numbers,string.sub(value,i,i)) then
				Number = true
			end
		end
		if String and not Number then
			return "\115\116\114\105\110\103"
		elseif Number and not String then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

-- // NOTIFICATION SYSTEM \\ --

local DrPoppaAdmin = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105",CoreGui)
DrPoppaAdmin.Name = RandomString(25)

local NotificationMainFrame = Instance["\110\101\119"]("\70\114\97\109\101",DrPoppaAdmin)
NotificationMainFrame.Size = UDim2.new(0,200,0,250)
NotificationMainFrame.Position = UDim2.new(0,0,1,-250)
NotificationMainFrame.BorderSizePixel = 0
NotificationMainFrame.Transparency = 1

local CmdBarTweening = false

local CmdBar = Instance["\110\101\119"]("\84\101\120\116\66\111\120",DrPoppaAdmin)
CmdBar.Size = UDim2.new(0,0,0,25)
CmdBar.Position = UDim2.new(1,0,1,-295)
CmdBar.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
CmdBar.TextColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
CmdBar.Font = "\71\111\116\104\97\109\66\108\97\99\107"
CmdBar.TextSize = 15
CmdBar.Text = ""
CmdBar.Transparency = 0.2
CmdBar.Visible = false
CmdBar.BorderSizePixel = 2
CmdBar.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local CmdBarGuide = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101",CmdBar)
CmdBarGuide.Size = UDim2.new(1,0,0,200)
CmdBarGuide.Position = UDim2.new(0,0,0,31)
CmdBarGuide.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
CmdBarGuide.Transparency = 0.2
CmdBarGuide.BorderSizePixel = 2
CmdBarGuide.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
CmdBarGuide.ScrollBarThickness = 0

CmdBar:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	UpdateCmdGuide()
end)

CmdBar.FocusLost:Connect(function()
	repeat RenderStepped:Wait() until not CmdBarTweening
	CmdBarGuide:ClearAllChildren()
	CmdBarTweening = true
	Handler(CmdBar.Text)
	CmdBar.Text = ""
	CmdBar:TweenSize(UDim2.new(0,0,0,25), "\79\117\116", "\81\117\97\100", 0.2, false)
	CmdBar:TweenPosition(UDim2.new(1,0,1,-295), "\79\117\116", "\81\117\97\100", 0.2, false)
	wait(0.25)
	CmdBar.Visible = false
	CmdBarTweening = false
end)

UpdateCmdGuide = function()
	CmdBarGuide:ClearAllChildren()
	local TempNum = 0
	for _,v in next,CommandsList do
		local args = string.split(v.Command,"\47")
		for i=1,#args do
			if string.lower(CmdBar.Text) == string.lower(string.sub(args[i],1,string.len(CmdBar.Text))) and GetInstance(CmdBarGuide,v.Command,"\70\105\110\100") == nil then
				local CommandName = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108",CmdBarGuide)
				CommandName.Size = UDim2.new(1,-10,0,25)
				CommandName.Name = v.Command
				if TempNum == 0 then
					CommandName.Position = UDim2.new(0,5,0,3)
				else
					CommandName.Position = UDim2.new(0,5,0,30*TempNum) + UDim2.new(0,0,0,3)
				end
				CommandName.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				CommandName.TextColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				CommandName.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				CommandName.TextSize = 15
				CommandName.Text = v.Command
				CommandName.Transparency = 0.2
				CommandName.BorderSizePixel = 0
				CommandName.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local DescriptionFrame = Instance["\110\101\119"]("\70\114\97\109\101",CmdBar)
				DescriptionFrame.Size = UDim2.new(0,350,0,200)
				DescriptionFrame.Position = UDim2.new(0,-356,0,0)
				DescriptionFrame.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				DescriptionFrame.Transparency = 0.2
				DescriptionFrame.BorderSizePixel = 2
				DescriptionFrame.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				DescriptionFrame.Visible = false

				local DescriptionText = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108",DescriptionFrame)
				DescriptionText.Size = UDim2.new(0,330,0,185)
				DescriptionText.Position = UDim2.new(0.5,-165,0.5,-92.5)
				DescriptionText.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				DescriptionText.TextColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				DescriptionText.TextSize = 18
				DescriptionText.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				DescriptionText.TextScaled = false
				DescriptionText.Transparency = 0.2
				DescriptionText.BorderSizePixel = 2
				DescriptionText.Text = v.Description
				DescriptionText.TextYAlignment = Enum.TextYAlignment.Top
				DescriptionText.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				CommandName.MouseEnter:Connect(function()
					DescriptionFrame.Visible = true
					for i=1,20 do
						if not DescriptionFrame.Visible then
							break
						elseif i == 15 then
							DescriptionFrame.Visible = false
						end
						wait(1)
					end
				end)
				CommandName.MouseLeave:Connect(function()
					DescriptionFrame.Visible = false
				end)

				TempNum = TempNum + 1
				CmdBarGuide.CanvasSize = CmdBarGuide.CanvasSize + UDim2.new(0,0,2,0)
			end
		end
	end
	if TempNum < 7 then
		CmdBarGuide.CanvasSize = UDim2.new(0,0,0,0)
	end
end

Notify = function(message,color)
	coroutine.wrap(function()
		if not CanNotify and Notifications then
			repeat
				RenderStepped:Wait()
			until CanNotify
		end
		if CanNotify and Notifications then
			repeat
				RenderStepped:Wait()
			until CanNotify and #NotificationMainFrame:GetChildren() < 6
			CanNotify = false
			for _,obj in next,NotificationMainFrame:GetChildren() do
				obj:TweenPosition(obj.Position + UDim2.new(0,0,0,-40), "\79\117\116", "\81\117\97\100", 0.2, false)
				RenderStepped:Wait()
			end
			wait(0.2)
			local NotificationLabel = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108",NotificationMainFrame)
			NotificationLabel.Size = UDim2.new(0,5*string.len(message),0,35)
			NotificationLabel.Position = UDim2.new(0.5,-92.5,1,-40)
			NotificationLabel.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
			NotificationLabel.TextColor = BrickColor.new(color)
			NotificationLabel.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			NotificationLabel.TextScaled = true
			NotificationLabel.Transparency = 0.2
			NotificationLabel.BorderSizePixel = 2
			NotificationLabel.Text = message
			NotificationLabel.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				wait(5)
				for i=1,16 do
					NotificationLabel.Transparency = NotificationLabel.Transparency + 0.1 / 2
					RenderStepped:Wait()
				end
				NotificationLabel:Destroy()
			end)()
			RenderStepped:Wait()
			CanNotify = true
		end
	end)()
	return
end

local function GetPlayer(str,stype)
	local PlayerTable = {}
	if stype == nil then
		for _,player in next,Players:GetPlayers() do
			if string.sub(string.lower(tostring(player)),1,string.len(str)) == str then
				table.insert(PlayerTable,player)
			end
		end
	elseif stype == "\111\116\104\101\114\115" then
		for _,player in next,Players:GetPlayers() do
			if player ~= LocalPlayer then
				table.insert(PlayerTable,player)
			end
		end
	elseif stype == "\97\108\108" then
		for _,player in next,Players:GetPlayers() do
			table.insert(PlayerTable,player)
		end
	elseif stype == "\109\101" then
		table.insert(PlayerTable,LocalPlayer)
	end
	if #PlayerTable == 0 then
		Notify("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63","\82\101\97\108\108\121\32\114\101\100")
	end
	return PlayerTable
end

GetInstance = function(from,name,stype,timeout)
	if from ~= nil and name ~= nil then
		if stype == "\70\105\110\100" then
			local inst = from:FindFirstChildOfClass(name)
			if not inst then
				inst = from:FindFirstChild(name)
			end
			if inst then
				return inst
			end
		elseif stype == "\87\97\105\116" then
			local inst
			if timeout ~= nil then
				from:WaitForChild(name,timeout)
			else
				inst = from:WaitForChild(name,9e9)
			end
			if inst then
				return inst
			end
		end
	end
	return
end

local function GetRig(player)
	if player ~= nil and player.Character ~= nil then
		local EHumanoid = GetInstance(player.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
		if EHumanoid ~= nil then
			return EHumanoid.RigType
		end
	end
	return
end

local function EspAttach(part,name)
	if GetInstance(EspFolder,tostring(name),"\70\105\110\100") == nil then
		local BillboardGui = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105",EspFolder)
		local Dot = Instance["\110\101\119"]("\70\114\97\109\101",BillboardGui)
		local Name = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108",BillboardGui)

		BillboardGui.Name = tostring(name)
		BillboardGui.Adornee = part
		BillboardGui.AlwaysOnTop = true
		BillboardGui.ExtentsOffset = Vector3["\110\101\119"](0,1,0)
		BillboardGui.Size = UDim2.new(0,5,0,5)

		Dot.Name = "\68\79\84"
		Dot.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		Dot.BackgroundTransparency = 0.3
		Dot.BorderSizePixel = 0
		Dot.Position = UDim2.new(-0.5,0,-0.5,0)
		Dot.Size = UDim2.new(2,0,2,0)
		Dot.Visible = true
		Dot.ZIndex = 10

		Name.Name = "\78\65\77\69"
		Name.BackgroundColor3 = Color3.new(255,255,255)
		Name.BackgroundTransparency = 1
		Name.BorderSizePixel = 0
		Name.Position = UDim2.new(0,0,0,-40)
		Name.Size = UDim2.new(1,0,10,0)
		Name.Visible = true
		Name.ZIndex = 10
		Name.Font = "\65\114\105\97\108\66\111\108\100"
		Name.FontSize = "\83\105\122\101\49\52"
		Name.Text = string.upper(tostring(name))
		Name.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		part.Changed:Connect(function(val)
			if tostring(val) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(val) == "\80\97\114\101\110\116" then
				BillboardGui:Destroy()
			end
		end)
	end
end

local function TeleportHandler(tbl)
	local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
	if HumanoidRootPart ~= nil and tbl[3] ~= nil then
		local part = Instance["\110\101\119"]("\80\97\114\116",workspace) part.Name = RandomString(25) part.Size = Vector3["\110\101\119"](1,1,1) part.Anchored = true part.CFrame = HumanoidRootPart.CFrame part.CanCollide = false part.Transparency = 1
		if tbl[1] == "\80\97\114\116" then
			if tbl[2] == "\73\110\115\116\97\110\116" then
				local Value = 0
				if tbl[4] ~= nil and tbl[4] == "\79\102\102\115\101\116" then
					Value = tbl[3].Size.Y/2+3
				end
				local weld = Instance["\110\101\119"]("\87\101\108\100",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
				part.CFrame = CFrame["\110\101\119"](tbl[3].Position) * CFrame["\110\101\119"](0,Value,0)
				weld:Destroy()
			elseif tbl[2] == "\80\114\111\103\114\101\115\115" then
				repeat
					local weld = Instance["\110\101\119"]("\87\101\108\100",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
					part.CFrame = CFrame["\110\101\119"](part.Position,tbl[3].Position)
					part.CFrame = part.CFrame + part.CFrame.lookVector * 0.5
					weld:Destroy()
					RenderStepped:Wait()
				until (HumanoidRootPart.Position - tbl[3].Position).magnitude < 3.5 or LocalPlayer.Character == nil or HumanoidRootPart.Parent == nil
			end
		elseif tbl[1] == "\80\111\115\105\116\105\111\110" then
			if tbl[2] == "\73\110\115\116\97\110\116" then
				local weld = Instance["\110\101\119"]("\87\101\108\100",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
				part.CFrame = tbl[3]
				weld:Destroy()
			elseif tbl[2] == "\80\114\111\103\114\101\115\115" then
				repeat
					local weld = Instance["\110\101\119"]("\87\101\108\100",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
					part.CFrame = CFrame["\110\101\119"](part.Position,tbl[3].p)
					part.CFrame = part.CFrame + part.CFrame.lookVector * 0.5
					weld:Destroy()
					RenderStepped:Wait()
				until (HumanoidRootPart.Position - tbl[3].p).magnitude < 2 or LocalPlayer.Character == nil or HumanoidRootPart.Parent == nil
			end
		end
		part:Destroy()
	end
end


Handler = function(str)
	coroutine.wrap(function()
		if str ~= nil and string.len(str) > 0 then

			local args = string.split(str,"\32")
			for i=1,#args do
				args[i] = string.lower(args[i])
			end

			if args[1] == "\119\97\108\107\115\112\101\101\100" or args[1] == "\119\115" or args[1] == "\115\112\101\101\100" and IsValue(args[2]) == "\110\117\109\98\101\114" then
				local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
				if Humanoid ~= nil then
					Humanoid.WalkSpeed = args[2]
					Notify("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end

			if args[1] == "\106\117\109\112\112\111\119\101\114" or args[1] == "\106\112" and IsValue(args[2]) == "\110\117\109\98\101\114" then
				local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
				if Humanoid ~= nil then
					Humanoid.JumpPower = args[2]
					Notify("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end

			if args[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or args[1] == "\118\115" then
				if args[2] == nil then
					VelocitySpeed = not VelocitySpeed
					if VelocitySpeed then
						Notify("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(VelocitySpeed),"\82\101\97\108\108\121\32\98\108\97\99\107")
						Notify("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53","\82\101\97\108\108\121\32\114\101\100")
					else
						Notify("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(VelocitySpeed),"\82\101\97\108\108\121\32\98\108\97\99\107")
					end
				elseif args[2] ~= nil and IsValue(args[2]) == "\110\117\109\98\101\114" then
					VelocitySpeedValue = args[2]
					Notify("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(VelocitySpeedValue),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end
			if args[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or args[1] == "\117\110\118\115" then
				VelocitySpeed = false
			end

			if args[1] == "\103\114\97\118\105\116\121" and args[2] ~= nil and IsValue(args[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = args[2]
				Notify("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end

			if args[1] == "\102\108\121" then
				if args[2] == nil then
					Flying = not Flying
					FlyTempCFrame = nil
					Notify("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(Flying),"\82\101\97\108\108\121\32\98\108\97\99\107")
				elseif args[2] ~= nil and IsValue(args[2]) == "\110\117\109\98\101\114" then
					FlySpeed = args[2]
					Notify("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end
			if args[1] == "\102\108\121\115\112\101\101\100" and IsValue(args[2]) == "\110\117\109\98\101\114" then
				FlySpeed = args[2]
				Notify("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end
			if args[1] == "\117\110\102\108\121" then
				Flying = false
				Notify("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(Flying),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end

			if args[1] == "\102\108\111\97\116" then
				Floating = not Floating
				if not Floating and FloatPart ~= nil then
					FloatPart:Destroy()
				end
				local RigType = GetRig(LocalPlayer)
				if RigType ~= nil and RigType == Enum.HumanoidRigType.R15 then
					FloatValue = -3.65
				else
					FloatValue = -3.5
				end
				Notify("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(Floating),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end
			if args[1] == "\117\110\102\108\111\97\116" then
				Floating = false
				if FloatPart ~= nil then
					FloatPart:Destroy()
				end
				Notify("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(Floating),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end

			if args[1] == "\119\97\108\107\102\108\105\110\103" or args[1] == "\119\102" then
				WalkFling = not WalkFling
				if WalkFling then
					local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
					if Humanoid ~= nil then
						Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					Notify("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(WalkFling),"\82\101\97\108\108\121\32\98\108\97\99\107")
				elseif not WalkFling then
					local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
					if Humanoid ~= nil then
						Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					Notify("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(WalkFling),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end
			if args[1] == "\117\110\119\97\108\107\102\108\105\110\103" or args[1] == "\117\110\119\102" then
				WalkFling = false
				local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
				if Humanoid ~= nil then
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				Notify("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(WalkFling),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end


			if args[1] == "\114\101\106\111\105\110" or args[1] == "\114\106" then
				TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
				Notify("\82\101\106\111\105\110\105\110\103\46\46\46\32","\82\101\97\108\108\121\32\98\108\97\99\107")
			end

			if args[1] == "\99\97\109\108\111\99\107" or args[1] == "\99\108" then
				if args[2] ~= nil then
					local Player = GetPlayer(args[2])[1]
					if Player ~= nil then
						Camlocking = true
						CamlockTarget = tostring(Player)
						Notify("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(CamlockTarget) .. "\32\97\116\32\116\104\101\32" .. tostring(CamlockPart) .. "\32\66\97\115\101\80\97\114\116","\82\101\97\108\108\121\32\98\108\97\99\107")
					end
				else
					Camlocking = not Camlocking
					Notify("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(Camlocking),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end
			if args[1] == "\117\110\99\97\109\108\111\99\107" or args[1] == "\117\110\99\108" then
				Camlocking = false
				CamlockTarget = nil
				Notify("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(Camlocking),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end
			if args[1] == "\99\97\109\108\111\99\107\112\97\114\116" or args[1] == "\99\108\112\97\114\116" and args[2] ~= nil then
				CamlockPart = args[2]
				Notify("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(CamlockPart),"\82\101\97\108\108\121\32\98\108\97\99\107")
			end

			if args[1] == "\100\105\101" then
				local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
				if Humanoid ~= nil then
					Humanoid:ChangeState(15)
				end
			end

			if args[1] == "\102\108\105\110\103" then
				local Player = GetPlayer(args[2])[1]
				if Player ~= nil and Player.Character ~= nil then
					local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
					local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
					local EHumanoidRootPart = GetInstance(Player.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
					local EHumanoid = GetInstance(Player.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
					if HumanoidRootPart ~= nil and Humanoid ~= nil and Humanoid.Health ~= 0 and EHumanoidRootPart ~= nil and EHumanoid ~= nil and EHumanoid.Health ~= 0 then
						local StartCFrame = HumanoidRootPart.CFrame
						local EStartPosition = EHumanoidRootPart.Position
						coroutine.wrap(function()
							repeat
								HumanoidRootPart.Velocity = Vector3["\110\101\119"](0,math["\104\117\103\101"],0)
								Camera.CameraSubject = Player.Character
								HumanoidRootPart.CFrame = CFrame["\110\101\119"](EHumanoidRootPart.Position) + Vector3["\110\101\119"](EHumanoidRootPart.Velocity.X,0,EHumanoidRootPart.Velocity.Z) / 2.1
								Heartbeat:Wait()
							until LocalPlayer.Character == nil or Player == nil or Player.Character == nil or Humanoid == nil or EHumanoid == nil or Humanoid.Health == 0 or EHumanoid.Health == 0 or (EHumanoidRootPart.Position - EStartPosition).magnitude > 100
							if LocalPlayer.Character ~= nil then
								Camera.CameraSubject = LocalPlayer.Character
								Handler("\100\105\101")
							end
						end)()
					end
				end
			end

			if args[1] == "\116\111\111\108\102\111\108\108\111\119" or args[1] == "\116\102" then
				local Player = GetPlayer(args[2])[1]
				if Player ~= nil and Player.Character ~= nil then
					local ETorso = GetInstance(Player.Character,"\84\111\114\115\111","\70\105\110\100")
					if ETorso == nil then
						ETorso = GetInstance(Player.Character,"\85\112\112\101\114\84\111\114\115\111","\70\105\110\100")
					end
					local RightArm = GetInstance(LocalPlayer.Character,"\82\105\103\104\116\32\65\114\109","\70\105\110\100")
					if RightArm == nil then
						RightArm = GetInstance(LocalPlayer.Character,"\82\105\103\104\116\72\97\110\100","\70\105\110\100")
					end
					local Tool = GetInstance(LocalPlayer.Character,"\84\111\111\108","\70\105\110\100")
					if RightArm ~= nil and Tool ~= nil and ETorso ~= nil then
						ToolFollowing = true
						ToolLastCFrame = Tool.Grip
						LastTool = Tool
						Notify("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player),"\82\101\97\108\108\121\32\98\108\97\99\107")
						coroutine.wrap(function()
							repeat
								Tool.Parent = LocalPlayer.Backpack
								local Handle = GetInstance(Tool,"\72\97\110\100\108\101","\70\105\110\100")
								if Handle ~= nil then
									Handle.Massless = true
								end
								local CompressedRCF = RightArm.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								Tool.Grip = CompressedRCF:toObjectSpace(ETorso.CFrame):inverse()
								Tool.Parent = LocalPlayer.Character
								RenderStepped:Wait()
							until not ToolFollowing or Tool == nil or Handle == nil or LocalPlayer.Character == nil or ETorso == nil
							ToolFollowing = false
							if Tool ~= nil then
								Tool.Parent = LocalPlayer.Backpack
								Tool.Grip = ToolLastCFrame
								Tool.Parent = LocalPlayer.Character
							end
						end)()
					end
				end
			end
			if args[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or args[1] == "\117\110\116\102" then
				ToolFollowing = false
				if LastTool ~= nil and ToolLastCFrame ~= nil then
					LastTool.Parent = LocalPlayer.Backpack
					LastTool.Grip = ToolLastCFrame
					LastTool.Parent = LocalPlayer.Character
					Notify("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end

			if args[1] == "\114\101\115\112\97\119\110" and LocalPlayer.Character ~= nil then
				local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
				if Humanoid ~= nil then
					Handler("\100\105\101")
					if LocalPlayer.Character ~= nil then
						LocalPlayer.Character:ClearAllChildren()
					end
					local TempChar = Instance["\110\101\119"]("\77\111\100\101\108",workspace)
					LocalPlayer.Character = TempChar
					RenderStepped:Wait()
					LocalPlayer.Character = LocalPlayer.Character
					TempChar:Destroy()
					Notify("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114","\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end

			if args[1] == "\114\101\102\114\101\115\104" then
				local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
				if HumanoidRootPart ~= nil then
					local TempCFrame = HumanoidRootPart.CFrame
					Handler("\114\101\115\112\97\119\110")
					LocalPlayer.CharacterAdded:Wait()
					HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\87\97\105\116")
					if HumanoidRootPart ~= nil then
						HumanoidRootPart.CFrame = TempCFrame
					end
				end
				Notify("\82\101\102\114\101\115\104\101\100","\82\101\97\108\108\121\32\98\108\97\99\107")
			end

			if args[1] == "\101\115\112" then
				if args[2] ~= nil then
					local Player = GetPlayer(args[2])[1]
					if Player ~= nil and Player.Character ~= nil then
						local Head = GetInstance(Player.Character,"\72\101\97\100","\70\105\110\100")
						if Head ~= nil then
							EspAttach(Head,tostring(Player))
							Notify(tostring(Player) .. "\32\104\97\115\32\98\101\101\110\32\69\83\80\39\100","\82\101\97\108\108\121\32\98\108\97\99\107")
						end
						notify(tostring(Player) .. "\39\115\32\99\104\97\114\97\99\116\101\114\32\100\111\101\115\110\39\116\32\101\120\105\115\116","\82\101\97\108\108\121\32\114\101\100")
					end
				else
					EspEnabled = not EspEnabled
					if EspEnabled then
						Notify("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled),"\82\101\97\108\108\121\32\98\108\97\99\107")
						for _,player in next,Players:GetPlayers() do
							if EspEnabled and player ~= LocalPlayer and player.Character ~= nil then
								local Head = GetInstance(player.Character,"\72\101\97\100","\70\105\110\100")
								if Head ~= nil then
									EspAttach(Head,tostring(player))
								end
							end
						end
					end
				end
			end

			if args[1] == "\117\110\101\115\112" then
				if args[2] ~= nil then
					local Player = GetPlayer(args[2])[1]
					if Player ~= nil then
						local EspBillboard = GetInstance(EspFolder,tostring(Player),"\70\105\110\100")
						if EspBillboard ~= nil then
							EspBillboard:Destroy()
							Notify(tostring(Player) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100","\82\101\97\108\108\121\32\98\108\97\99\107")
						end
					end
				else
					EspEnabled = false
					EspFolder:ClearAllChildren()
					Notify("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled),"\82\101\97\108\108\121\32\98\108\97\99\107")
				end
			end

			if args[1] == "\115\101\114\118\101\114" and args[2] ~= nil then
				coroutine.wrap(function()
					local Data = HttpService:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if args[2] == "\104\111\112" then
						local Servers = {}
						for _,val in next,Data do
							if type(val) == "\116\97\98\108\101" and val.maxPlayers > val.playing and val.id ~= game.JobId then
								table.insert(Servers,val.id)
							end
						end
						if #Servers > 0 then
							Notify("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
							TeleportService:TeleportToPlaceInstance(game.PlaceId,val.id)
						else
							Notify("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46","\82\101\97\108\108\121\32\114\101\100")
						end
					elseif args[2] == "\98\105\103" then
						local TempNum = 0
						local JobId
						for i,v in next,Data do
							if v.playing > TempNum and v.maxPlayers > v.playing then
								TempNum = v.playing
								JobId = v.id
							end
						end
						if JobId ~= nil then
							if JobId == game.JobId then
								Notify("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114","\82\101\97\108\108\121\32\114\101\100")
							else
								Notify("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								TeleportService:TeleportToPlaceInstance(game.PlaceId,JobId)
							end
						elseif JobId == nil then
							Notify("\85\109\109\109","\82\101\97\108\108\121\32\114\101\100")
						end
					elseif args[2] == "\112\105\110\103" then
						local TempNum = 9e9
						local JobId
						for i,v in next,Data do
							if v.ping < TempNum and v.maxPlayers > v.playing then
								TempNum = v.ping
								JobId = v.id
							end
						end
						if JobId ~= nil then
							if JobId == game.JobId then
								Notify("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114","\82\101\97\108\108\121\32\114\101\100")
							else
								Notify("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								TeleportService:TeleportToPlaceInstance(game.PlaceId,JobId)
							end
						elseif JobId == nil then
							Notify("\85\109\109\109","\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if args[1] == "\116\112" or args[1] == "\116\101\108\101\112\111\114\116" or args[1] == "\116\111" and args[2] ~= nil then
				local Player = GetPlayer(args[2])[1]
				if Player ~= nil and Player.Character ~= nil then
					local Torso = GetInstance(Player.Character,"\84\111\114\115\111","\70\105\110\100")
					if Torso == nil then
						Torso = GetInstance(Player.Character,"\85\112\112\101\114\84\111\114\115\111","\70\105\110\100")
					end
					if Torso ~= nil then
						TeleportHandler("\80\97\114\116","\73\110\115\116\97\110\116",Torso)
					end
				end
			end

			if args[1] == "\98\116\112" or args[1] == "\98\116\101\108\101\112\111\114\116" or args[1] == "\98\116\111" and args[2] ~= nil then
				local Player = GetPlayer(args[2])[1]
				if Player ~= nil and Player.Character ~= nil then
					local Torso = GetInstance(Player.Character,"\84\111\114\115\111","\70\105\110\100")
					if Torso == nil then
						Torso = GetInstance(Player.Character,"\85\112\112\101\114\84\111\114\115\111","\70\105\110\100")
					end
					if Torso ~= nil then
						TeleportHandler("\80\97\114\116","\80\114\111\103\114\101\115\115",Torso)
					end
				end
			end

		end
		return
	end)()
end

EspFolder.Name = RandomString(25)
Camera = GetInstance(workspace,"\67\97\109\101\114\97","\87\97\105\116")

if not game:IsLoaded() then
	Notify("\71\97\109\101\32\105\115\32\115\116\105\108\108\32\108\111\97\100\105\110\103\46\46\46","\82\101\97\108\108\121\32\114\101\100")
	game.Loaded:Wait()
	Notify("\71\97\109\101\32\108\111\97\100\101\100\33","\76\105\109\101\32\103\114\101\101\110")
end

for _,player in next,Players:GetPlayers() do
	if EspEnabled and player ~= LocalPlayer and player.Character ~= nil then
		local Head = GetInstance(player.Character,"\72\101\97\100","\70\105\110\100")
		if Head ~= nil then
			EspAttach(Head,tostring(player))
		end
	end
	player.CharacterAdded:Connect(function(character)
		local Head = GetInstance(character,"\72\101\97\100","\87\97\105\116")
		if EspEnabled and Head ~= nil then
			EspAttach(Head,tostring(player))
		end
	end)
end

Players.PlayerAdded:Connect(function(player)
	if player.Character ~= nil then
		local Head = GetInstance(player.Character,"\72\101\97\100","\70\105\110\100")
		if EspEnabled and Head ~= nil then
			EspAttach(Head,tostring(player))
		end
	end
	player.CharacterAdded:Connect(function(character)
		local Head = GetInstance(character,"\72\101\97\100","\87\97\105\116")
		if EspEnabled and Head ~= nil then
			EspAttach(Head,tostring(player))
		end
	end)
end)

-- // USER INPUTS \\ --

UserInputService.InputBegan:Connect(function(yuh,yeet)
	if yeet then
		Typing = true
	elseif not yeet then
		Typing = false
		if yuh.KeyCode == Enum.KeyCode.W then
			Keys["\87"] = true
		end
		if yuh.KeyCode == Enum.KeyCode.A then
			Keys["\65"] = true
		end
		if yuh.KeyCode == Enum.KeyCode.S then
			Keys["\83"] = true
		end
		if yuh.KeyCode == Enum.KeyCode.D then
			Keys["\68"] = true
		end
		if yuh.KeyCode == Enum.KeyCode.Q then
			Keys["\81"] = true
			if Floating and not Keys["\69"] then
				FloatValue = FloatValue + 0.5
			end
		end
		if yuh.KeyCode == Enum.KeyCode.E then
			Keys["\69"] = true
			if Floating and not Keys["\81"] then
				FloatValue = FloatValue - 0.5
			end
		end
		if yuh.KeyCode == CommandBarHotkey and not CmdBarTweening then
			UpdateCmdGuide()
			CmdBarTweening = true
			CmdBar.Size = UDim2.new(0,0,0,25)
			CmdBar.Position = UDim2.new(1,0,1,-295)
			CmdBar.Visible = true
			CmdBar:TweenSize(UDim2.new(0,250,0,25), "\79\117\116", "\81\117\97\100", 0.2, false)
			CmdBar:TweenPosition(UDim2.new(1,-250,1,-295), "\79\117\116", "\81\117\97\100", 0.2, false)
			RenderStepped:Wait()
			CmdBar:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
	end
end)

UserInputService.InputEnded:Connect(function(yuh,yeet)
	if yuh.KeyCode == Enum.KeyCode.W then
		Keys["\87"] = false
	end
	if yuh.KeyCode == Enum.KeyCode.A then
		Keys["\65"] = false
	end
	if yuh.KeyCode == Enum.KeyCode.S then
		Keys["\83"] = false
	end
	if yuh.KeyCode == Enum.KeyCode.D then
		Keys["\68"] = false
	end
	if yuh.KeyCode == Enum.KeyCode.Q then
		Keys["\81"] = false
		if Floating and not Keys["\69"] then
			FloatValue = FloatValue - 0.5
		end
	end
	if yuh.KeyCode == Enum.KeyCode.E then
		Keys["\69"] = false
		if Floating and not Keys["\81"] then
			FloatValue = FloatValue + 0.5
		end
	end
	if yeet then
		Typing = true
	elseif not yeet then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if Camlocking and CamlockTarget ~= nil then
			local Parts = {}
			local Player = GetInstance(Players,CamlockTarget,"\70\105\110\100")
			local Part
			if Player ~= nil and Player.Character ~= nil then
				for _,obj in next,Player.Character:GetChildren() do
					if obj:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(obj)) == string.lower(CamlockPart) then
						Part = obj
						break
					end
				end
				if Part ~= nil then
					Camera.CoordinateFrame = CFrame["\110\101\119"](Camera.CoordinateFrame.p,Part.Position)
				end
			end
		end
		RenderStepped:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if VelocitySpeed then
			local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
			local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
			if HumanoidRootPart ~= nil and Humanoid ~= nil then
				local Value = Vector3["\110\101\119"](Humanoid.MoveDirection.X,0,Humanoid.MoveDirection.Z) * VelocitySpeedValue
				HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + Value
			end
		end
		if Floating then
			local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
			if FloatPart == nil then
				FloatPart = Instance["\110\101\119"]("\80\97\114\116",workspace)
				FloatPart.Transparency = 1
				FloatPart.Size = Vector3["\110\101\119"](6,1,6)
				FloatPart.Anchored = true
				FloatPart.Name = RandomString(25)
			end
			if HumanoidRootPart ~= nil then
				FloatPart.CFrame = HumanoidRootPart.CFrame * CFrame["\110\101\119"](0,FloatValue,0)
			end
		end
		if WalkFling then
			local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
			local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
			if HumanoidRootPart ~= nil and Humanoid ~= nil then
				Humanoid:ChangeState(11)
				HumanoidRootPart.Velocity = Vector3["\110\101\119"](0,900000,0)
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		Heartbeat:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if Flying then
			local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116","\70\105\110\100")
			local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100","\70\105\110\100")
			if HumanoidRootPart ~= nil and Humanoid ~= nil then
				if FlyTempCFrame ~= nil then
					HumanoidRootPart.CFrame = FlyTempCFrame
				end
				Humanoid.PlatformStand = true
				local part = Instance["\110\101\119"]("\80\97\114\116",workspace) part.Name = RandomString(25) part.Size = Vector3["\110\101\119"](1,1,1) part.Anchored = true part.CFrame = HumanoidRootPart.CFrame part.CanCollide = false part.Transparency = 1
				local weld = Instance["\110\101\119"]("\87\101\108\100",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
				if not Typing then
					if Keys["\87"] then
						part.CFrame = part.CFrame + part.CFrame.lookVector * FlySpeed
					end
					if Keys["\83"] then
						part.CFrame = part.CFrame + part.CFrame.lookVector * -FlySpeed
					end
					if Keys["\65"] then
						part.CFrame = part.CFrame + part.CFrame.rightVector * -FlySpeed
					end
					if Keys["\68"] then
						part.CFrame = part.CFrame + part.CFrame.rightVector * FlySpeed
					end
				end
				part.CFrame = CFrame["\110\101\119"](HumanoidRootPart.Position,Camera.CoordinateFrame.lookVector * 9e9)
				FlyTempCFrame = HumanoidRootPart.CFrame
				Stepped:Wait()
				if HumanoidRootPart ~= nil and FlyTempCFrame ~= nil then
					HumanoidRootPart.CFrame = FlyTempCFrame
				end
				if weld ~= nil then
					weld:Destroy()
				end
				if part ~= nil then
					part:Destroy()
				end
				if Humanoid ~= nil then
					Humanoid.PlatformStand = false
				end
			end
		end
		Stepped:Wait()
	end
end)()

table.insert(CommandsList,{Command = "\70\108\121\47\85\110\102\108\121", Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"})
table.insert(CommandsList,{Command = "\70\108\111\97\116\47\85\110\102\108\111\97\116", Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"})
table.insert(CommandsList,{Command = "\70\108\105\110\103", Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"})
table.insert(CommandsList,{Command = "\82\101\106\111\105\110", Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"})
table.insert(CommandsList,{Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115", Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"})
table.insert(CommandsList,{Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100", Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"})
table.insert(CommandsList,{Command = "\74\117\109\112\80\111\119\101\114\47\106\112", Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"})
table.insert(CommandsList,{Command = "\87\97\108\107\70\108\105\110\103\47\119\102", Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"})
table.insert(CommandsList,{Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102", Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"})
table.insert(CommandsList,{Command = "\82\101\102\114\101\115\104", Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"})
table.insert(CommandsList,{Command = "\82\101\115\112\97\119\110", Description = "\82\101\115\112\97\119\110\115\32\121\111\117"})
table.insert(CommandsList,{Command = "\83\101\114\118\101\114", Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"})
table.insert(CommandsList,{Command = "\69\115\112\47\85\110\69\115\112", Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"})
table.insert(CommandsList,{Command = "\67\97\109\108\111\99\107\47\85\110\67\97\109\108\111\99\107", Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"})
table.insert(CommandsList,{Command = "\71\114\97\118\105\116\121", Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"})
table.insert(CommandsList,{Command = "\116\111\47\116\112\47\116\101\108\101\112\111\114\116", Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"})
table.insert(CommandsList,{Command = "\98\116\111\47\98\116\112\47\98\116\101\108\101\112\111\114\116", Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"})

-- // LOAD TIME END \\ --

Notify("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33","\82\101\97\108\108\121\32\98\108\97\99\107")
Notify("\84\111\111\107\32" .. tick() - start .. "\32\116\111\32\115\116\97\114\116","\82\101\97\108\108\121\32\98\108\97\99\107")
