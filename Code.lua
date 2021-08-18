-- // LOAD TIME START \\ --

local L_1_ = tick()

local L_2_ = game.GetService

-- // VARIABLES \\ --

local L_3_ = L_2_(game, "\80\108\97\121\101\114\115")
local L_4_ = L_2_(game, "\82\117\110\83\101\114\118\105\99\101")
local L_5_ = L_2_(game, "\67\111\114\101\71\117\105")
local L_6_ = L_2_(game, "\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local L_7_ = L_2_(game, "\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101")
local L_8_ = L_2_(game, "\72\116\116\112\83\101\114\118\105\99\101")

local L_9_ = L_3_.LocalPlayer

local L_10_

local L_11_ = L_4_.RenderStepped
local L_12_ = L_4_.Heartbeat
local L_13_ = L_4_.Stepped

local L_14_ = [[;]]
local L_15_ = Enum.KeyCode.Quote

local L_16_ = Instance["\110\101\119"]("\70\111\108\100\101\114", L_5_)

local L_17_
local L_18_
local L_19_
local L_20_
local L_21_

local L_22_ = true
local L_23_ = true

local L_24_ = false
local L_25_ = 0.5
local L_26_

local L_27_ = false
local L_28_ = -3.5
local L_29_

local L_30_ = false
local L_31_ = 0.01

local L_32_ = false
local L_33_
local L_34_

local L_35_ = false

local L_36_ = false
local L_37_
local L_38_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_39_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_40_ = {}
local L_41_ = {}
local L_42_ = {}
local L_43_ = {}

local L_44_ = {
	["\87"] = false,
	["\65"] = false,
	["\83"] = false,
	["\68"] = false,
	["\81"] = false,
	["\69"] = false,
}

for L_55_forvar1 = 1, 255 do
	table.insert(L_40_, string.char(L_55_forvar1))
end
for L_56_forvar1 = 1, 9 do
	table.insert(L_41_, tostring(L_56_forvar1))
end
for L_57_forvar1 = 65, 90 do
	table.insert(L_42_, string.char(L_57_forvar1))
end

-- // FUNCTIONS \\ --

L_20_ = function(L_58_arg1)
	local L_59_ = ""
	for L_60_forvar1 = 1, L_58_arg1 do
		L_59_ = L_59_ .. L_40_[math["\114\97\110\100\111\109"](1, #L_40_)]
	end
	return L_59_
end

local function L_45_func(L_61_arg1)
	if L_61_arg1 ~= nil then
		local L_62_ = false
		local L_63_ = false
		for L_64_forvar1 = 1, string.len(L_61_arg1) do
			if table.find(L_42_, string.sub(L_61_arg1, L_64_forvar1, L_64_forvar1)) then
				L_62_ = true
			end
			if table.find(L_41_, string.sub(L_61_arg1, L_64_forvar1, L_64_forvar1)) then
				L_63_ = true
			end
		end
		if L_62_ and not L_63_ then
			return "\115\116\114\105\110\103"
		elseif L_63_ and not L_62_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

-- // NOTIFICATION SYSTEM \\ --

local L_46_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_46_.Name = L_20_(25)

local L_47_ = Instance["\110\101\119"]("\70\114\97\109\101", L_46_)
L_47_.Size = UDim2.new(0, 200, 0, 250)
L_47_.Position = UDim2.new(0, 0, 1, -250)
L_47_.BorderSizePixel = 0
L_47_.Transparency = 1

local L_48_ = false

local L_49_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_46_)
L_49_.Size = UDim2.new(0, 0, 0, 25)
L_49_.Position = UDim2.new(1, 0, 1, -295)
L_49_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_49_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_49_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_49_.TextSize = 15
L_49_.Text = ""
L_49_.Transparency = 0
L_49_.Visible = false
L_49_.BorderSizePixel = 2
L_49_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_50_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_49_)
L_50_.Size = UDim2.new(1, 0, 0, 200)
L_50_.Position = UDim2.new(0, 0, 0, 31)
L_50_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_50_.Transparency = 0
L_50_.BorderSizePixel = 2
L_50_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_50_.ScrollBarThickness = 0

L_49_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_18_()
end)

L_49_.FocusLost:Connect(function()
	repeat
		L_11_:Wait()
	until not L_48_
	L_50_:ClearAllChildren()
	L_48_ = true
	L_17_(L_49_.Text)
	L_49_.Text = ""
	L_49_:TweenSize(UDim2.new(0, 0, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
	L_49_:TweenPosition(UDim2.new(1, 0, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
	wait(0.25)
	L_49_.Visible = false
	L_48_ = false
end)

L_18_ = function()
	L_50_:ClearAllChildren()
	local L_65_ = 0
	for L_66_forvar1, L_67_forvar2 in next, L_43_ do
		local L_68_ = string.split(L_67_forvar2.Command, "\47")
		for L_69_forvar1 = 1, #L_68_ do
			if string.lower(L_49_.Text) == string.lower(string.sub(L_68_[L_69_forvar1], 1, string.len(L_49_.Text))) and L_21_(L_50_, L_67_forvar2.Command, "\70\105\110\100") == nil then
				local L_70_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_50_)
				L_70_.Size = UDim2.new(1, -10, 0, 25)
				L_70_.Name = L_67_forvar2.Command
				if L_65_ == 0 then
					L_70_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_70_.Position = UDim2.new(0, 5, 0, 30 * L_65_) + UDim2.new(0, 0, 0, 5)
				end
				L_70_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_70_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_70_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_70_.TextSize = 15
				L_70_.Text = L_67_forvar2.Command
				L_70_.Transparency = 0
				L_70_.BorderSizePixel = 0
				L_70_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_71_ = Instance["\110\101\119"]("\70\114\97\109\101", L_49_)
				L_71_.Size = UDim2.new(0, 350, 0, 200)
				L_71_.Position = UDim2.new(0, -356, 0, 0)
				L_71_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_71_.Transparency = 0
				L_71_.BorderSizePixel = 2
				L_71_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_71_.Visible = false

				local L_72_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_71_)
				L_72_.Size = UDim2.new(0, 330, 0, 185)
				L_72_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_72_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_72_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_72_.TextSize = 18
				L_72_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_72_.TextScaled = false
				L_72_.Transparency = 0
				L_72_.BorderSizePixel = 2
				L_72_.Text = L_67_forvar2.Description
				L_72_.TextYAlignment = Enum.TextYAlignment.Top
				L_72_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_70_.MouseEnter:Connect(function()
					L_71_.Visible = true
					for L_73_forvar1 = 1, 20 do
						if not L_71_.Visible then
							break
						elseif L_73_forvar1 == 15 then
							L_71_.Visible = false
						end
						wait(1)
					end
				end)
				L_70_.MouseLeave:Connect(function()
					L_71_.Visible = false
				end)

				L_65_ = L_65_ + 1
				L_50_.CanvasSize = L_50_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_65_ < 7 then
		L_50_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

L_19_ = function(L_74_arg1, L_75_arg2)
	coroutine.wrap(function()
		if not L_22_ and L_23_ then
			repeat
				L_11_:Wait()
			until L_22_
		end
		if L_22_ and L_23_ then
			repeat
				L_11_:Wait()
			until L_22_ and #L_47_:GetChildren() < 6
			L_22_ = false
			for L_77_forvar1, L_78_forvar2 in next, L_47_:GetChildren() do
				L_78_forvar2:TweenPosition(L_78_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_11_:Wait()
			end
			wait(0.2)
			local L_76_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_47_)
			L_76_.Size = UDim2.new(0, 5 * string.len(L_74_arg1), 0, 35)
			L_76_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_76_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_76_.TextColor = BrickColor.new(L_75_arg2)
			L_76_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_76_.TextScaled = true
			L_76_.Transparency = 0
			L_76_.BorderSizePixel = 2
			L_76_.Text = L_74_arg1
			L_76_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				wait(5)
				for L_79_forvar1 = 1, 16 do
					L_76_.Transparency = L_76_.Transparency + 0.1 / 2
					L_11_:Wait()
				end
				L_76_:Destroy()
			end)()
			L_11_:Wait()
			L_22_ = true
		end
	end)()
	return
end

local function L_51_func(L_80_arg1, L_81_arg2)
	local L_82_ = {}
	if L_81_arg2 == nil then
		for L_83_forvar1, L_84_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_84_forvar2)), 1, string.len(L_80_arg1)) == L_80_arg1 then
				table.insert(L_82_, L_84_forvar2)
			end
		end
	elseif L_81_arg2 == "\111\116\104\101\114\115" then
		for L_85_forvar1, L_86_forvar2 in next, L_3_:GetPlayers() do
			if L_86_forvar2 ~= L_9_ then
				table.insert(L_82_, L_86_forvar2)
			end
		end
	elseif L_81_arg2 == "\97\108\108" then
		for L_87_forvar1, L_88_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_82_, L_88_forvar2)
		end
	elseif L_81_arg2 == "\109\101" then
		table.insert(L_82_, L_9_)
	end
	if #L_82_ == 0 then
		L_19_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_82_
end

L_21_ = function(L_89_arg1, L_90_arg2, L_91_arg3, L_92_arg4)
	if L_89_arg1 ~= nil and L_90_arg2 ~= nil then
		if L_91_arg3 == "\70\105\110\100" then
			local L_93_ = L_89_arg1:FindFirstChildOfClass(L_90_arg2)
			if not L_93_ then
				L_93_ = L_89_arg1:FindFirstChild(L_90_arg2)
			end
			if L_93_ then
				return L_93_
			end
		elseif L_91_arg3 == "\87\97\105\116" then
			local L_94_
			if L_92_arg4 ~= nil then
				L_89_arg1:WaitForChild(L_90_arg2, L_92_arg4)
			else
				L_94_ = L_89_arg1:WaitForChild(L_90_arg2, 9e9)
			end
			if L_94_ then
				return L_94_
			end
		end
	end
	return
end

local function L_52_func(L_95_arg1)
	if L_95_arg1 ~= nil and L_95_arg1.Character ~= nil then
		local L_96_ = L_21_(L_95_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_96_ ~= nil then
			return L_96_.RigType
		end
	end
	return
end

local function L_53_func(L_97_arg1, L_98_arg2)
	if L_21_(L_16_, tostring(L_98_arg2), "\70\105\110\100") == nil then
		local L_99_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_16_)
		local L_100_ = Instance["\110\101\119"]("\70\114\97\109\101", L_99_)
		local L_101_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_99_)

		L_99_.Name = tostring(L_98_arg2)
		L_99_.Adornee = L_97_arg1
		L_99_.AlwaysOnTop = true
		L_99_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_99_.Size = UDim2.new(0, 5, 0, 5)

		L_100_.Name = "\68\79\84"
		L_100_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_100_.BackgroundTransparency = 0.3
		L_100_.BorderSizePixel = 0
		L_100_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_100_.Size = UDim2.new(2, 0, 2, 0)
		L_100_.Visible = true
		L_100_.ZIndex = 10

		L_101_.Name = "\78\65\77\69"
		L_101_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_101_.BackgroundTransparency = 1
		L_101_.BorderSizePixel = 0
		L_101_.Position = UDim2.new(0, 0, 0, -40)
		L_101_.Size = UDim2.new(1, 0, 10, 0)
		L_101_.Visible = true
		L_101_.ZIndex = 10
		L_101_.Font = "\65\114\105\97\108\66\111\108\100"
		L_101_.FontSize = "\83\105\122\101\49\52"
		L_101_.Text = string.upper(tostring(L_98_arg2))
		L_101_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_97_arg1.Changed:Connect(function(L_102_arg1)
			if tostring(L_102_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_102_arg1) == "\80\97\114\101\110\116" then
				L_99_:Destroy()
			end
		end)
	end
end

local function L_54_func(L_103_arg1)
	local L_104_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_104_ ~= nil and L_103_arg1[3] ~= nil then
		local L_105_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_105_.Name = L_20_(25)
		L_105_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_105_.Anchored = true
		L_105_.CFrame = L_104_.CFrame
		L_105_.CanCollide = false
		L_105_.Transparency = 1
		if L_103_arg1[1] == "\80\97\114\116" then
			if L_103_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_106_ = 0
				if L_103_arg1[4] ~= nil and L_103_arg1[4] == "\79\102\102\115\101\116" then
					L_106_ = L_103_arg1[3].Size.Y / 2 + 3
				end
				local L_107_ = Instance["\110\101\119"]("\87\101\108\100", L_105_)
				L_107_.Part0 = L_104_
				L_107_.Part1 = L_105_
				L_105_.CFrame = CFrame["\110\101\119"](L_103_arg1[3].Position) * CFrame["\110\101\119"](0, L_106_, 0)
				L_107_:Destroy()
			elseif L_103_arg1[2] == "\80\114\111\103\114\101\115\115" then
				repeat
					local L_108_ = Instance["\110\101\119"]("\87\101\108\100", L_105_)
					L_108_.Part0 = L_104_
					L_108_.Part1 = L_105_
					L_105_.CFrame = CFrame["\110\101\119"](L_105_.Position, L_103_arg1[3].Position)
					L_105_.CFrame = L_105_.CFrame + L_105_.CFrame.lookVector * 0.5
					L_108_:Destroy()
					L_11_:Wait()
				until (L_104_.Position - L_103_arg1[3].Position).magnitude < 3.5 or L_9_.Character == nil or L_104_.Parent == nil
			end
		elseif L_103_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_103_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_109_ = Instance["\110\101\119"]("\87\101\108\100", L_105_)
				L_109_.Part0 = L_104_
				L_109_.Part1 = L_105_
				L_105_.CFrame = L_103_arg1[3]
				L_109_:Destroy()
			elseif L_103_arg1[2] == "\80\114\111\103\114\101\115\115" then
				repeat
					local L_110_ = Instance["\110\101\119"]("\87\101\108\100", L_105_)
					L_110_.Part0 = L_104_
					L_110_.Part1 = L_105_
					L_105_.CFrame = CFrame["\110\101\119"](L_105_.Position, L_103_arg1[3].p)
					L_105_.CFrame = L_105_.CFrame + L_105_.CFrame.lookVector * 0.5
					L_110_:Destroy()
					L_11_:Wait()
				until (L_104_.Position - L_103_arg1[3].p).magnitude < 2 or L_9_.Character == nil or L_104_.Parent == nil
			end
		end
		L_105_:Destroy()
	end
end


L_17_ = function(L_111_arg1)
	coroutine.wrap(function()
		if L_111_arg1 ~= nil and string.len(L_111_arg1) > 0 then

			local L_112_ = string.split(L_111_arg1, "\32")
			for L_113_forvar1 = 1, #L_112_ do
				L_112_[L_113_forvar1] = string.lower(L_112_[L_113_forvar1])
			end

			if L_112_[1] == "\119\97\108\107\115\112\101\101\100" or L_112_[1] == "\119\115" or L_112_[1] == "\115\112\101\101\100" and L_45_func(L_112_[2]) == "\110\117\109\98\101\114" then
				local L_114_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_114_ ~= nil then
					L_114_.WalkSpeed = L_112_[2]
					L_19_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_112_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_112_[1] == "\106\117\109\112\112\111\119\101\114" or L_112_[1] == "\106\112" and L_45_func(L_112_[2]) == "\110\117\109\98\101\114" then
				local L_115_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_115_ ~= nil then
					L_115_.JumpPower = L_112_[2]
					L_19_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_112_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_112_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_112_[1] == "\118\115" then
				if L_112_[2] == nil then
					L_30_ = not L_30_
					if L_30_ then
						L_19_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_19_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						L_19_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_112_[2] ~= nil and L_45_func(L_112_[2]) == "\110\117\109\98\101\114" then
					L_31_ = L_112_[2]
					L_19_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_31_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_112_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_112_[1] == "\117\110\118\115" then
				L_30_ = false
			end

			if L_112_[1] == "\103\114\97\118\105\116\121" and L_112_[2] ~= nil and L_45_func(L_112_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_112_[2]
				L_19_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_112_[1] == "\102\108\121" then
				if L_112_[2] == nil then
					L_24_ = not L_24_
					L_26_ = nil
					L_19_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_24_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_112_[2] ~= nil and L_45_func(L_112_[2]) == "\110\117\109\98\101\114" then
					L_25_ = L_112_[2]
					L_19_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_112_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_112_[1] == "\102\108\121\115\112\101\101\100" and L_45_func(L_112_[2]) == "\110\117\109\98\101\114" then
				L_25_ = L_112_[2]
				L_19_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_112_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_112_[1] == "\117\110\102\108\121" then
				L_24_ = false
				L_19_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_24_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_112_[1] == "\102\108\111\97\116" then
				L_27_ = not L_27_
				if not L_27_ and L_29_ ~= nil then
					L_29_:Destroy()
				end
				local L_116_ = L_52_func(L_9_)
				if L_116_ ~= nil and L_116_ == Enum.HumanoidRigType.R15 then
					L_28_ = -3.65
				else
					L_28_ = -3.5
				end
				L_19_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_112_[1] == "\117\110\102\108\111\97\116" then
				L_27_ = false
				if L_29_ ~= nil then
					L_29_:Destroy()
				end
				L_19_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_112_[1] == "\119\97\108\107\102\108\105\110\103" or L_112_[1] == "\119\102" then
				L_35_ = not L_35_
				if L_35_ then
					local L_117_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_117_ ~= nil then
						L_117_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_19_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_35_ then
					local L_118_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_118_ ~= nil then
						L_118_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_19_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_112_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_112_[1] == "\117\110\119\102" then
				L_35_ = false
				local L_119_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_119_ ~= nil then
					L_119_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_19_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end


			if L_112_[1] == "\114\101\106\111\105\110" or L_112_[1] == "\114\106" then
				L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
				L_19_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_112_[1] == "\99\97\109\108\111\99\107" or L_112_[1] == "\99\108" then
				if L_112_[2] ~= nil then
					local L_120_ = L_51_func(L_112_[2])[1]
					if L_120_ ~= nil then
						L_36_ = true
						L_37_ = tostring(L_120_)
						L_19_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_37_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_38_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_36_ = not L_36_
					L_19_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_112_[1] == "\117\110\99\97\109\108\111\99\107" or L_112_[1] == "\117\110\99\108" then
				L_36_ = false
				L_37_ = nil
				L_19_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_112_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_112_[1] == "\99\108\112\97\114\116" and L_112_[2] ~= nil then
				L_38_ = L_112_[2]
				L_19_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_38_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_112_[1] == "\100\105\101" then
				local L_121_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_121_ ~= nil then
					L_121_:ChangeState(15)
				end
			end

			if L_112_[1] == "\102\108\105\110\103" then
				local L_122_ = L_51_func(L_112_[2])[1]
				if L_122_ ~= nil and L_122_.Character ~= nil then
					local L_123_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
					local L_124_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					local L_125_ = L_21_(L_122_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
					local L_126_ = L_21_(L_122_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_123_ ~= nil and L_124_ ~= nil and L_124_.Health ~= 0 and L_125_ ~= nil and L_126_ ~= nil and L_126_.Health ~= 0 then
						local L_127_ = L_123_.CFrame
						local L_128_ = L_125_.Position
						coroutine.wrap(function()
							repeat
								L_123_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
								L_10_.CameraSubject = L_122_.Character
								L_123_.CFrame = CFrame["\110\101\119"](L_125_.Position) + Vector3["\110\101\119"](L_125_.Velocity.X, 0, L_125_.Velocity.Z) / 2.1
								L_12_:Wait()
							until L_9_.Character == nil or L_122_ == nil or L_122_.Character == nil or L_124_ == nil or L_126_ == nil or L_124_.Health == 0 or L_126_.Health == 0 or (L_125_.Position - L_128_).magnitude > 100
							if L_9_.Character ~= nil then
								L_10_.CameraSubject = L_9_.Character
								L_17_("\100\105\101")
							end
						end)()
					end
				end
			end

			if L_112_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_112_[1] == "\116\102" then
				local L_129_ = L_51_func(L_112_[2])[1]
				if L_129_ ~= nil and L_129_.Character ~= nil then
					local L_130_ = L_21_(L_129_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_130_ == nil then
						L_130_ = L_21_(L_129_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_131_ = L_21_(L_9_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_131_ == nil then
						L_131_ = L_21_(L_9_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_132_ = L_21_(L_9_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_131_ ~= nil and L_132_ ~= nil and L_130_ ~= nil then
						L_32_ = true
						L_33_ = L_132_.Grip
						L_34_ = L_132_
						L_19_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_129_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_132_.Parent = L_9_.Backpack
								local L_133_ = L_21_(L_132_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_133_ ~= nil then
									L_133_.Massless = true
								end
								local L_134_ = L_131_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_132_.Grip = L_134_:toObjectSpace(L_130_.CFrame):inverse()
								L_132_.Parent = L_9_.Character
								L_11_:Wait()
							until not L_32_ or L_132_ == nil or L_133_ == nil or L_9_.Character == nil or L_130_ == nil
							L_32_ = false
							if L_132_ ~= nil then
								L_132_.Parent = L_9_.Backpack
								L_132_.Grip = L_33_
								L_132_.Parent = L_9_.Character
							end
						end)()
					end
				end
			end
			if L_112_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_112_[1] == "\117\110\116\102" then
				L_32_ = false
				if L_34_ ~= nil and L_33_ ~= nil then
					L_34_.Parent = L_9_.Backpack
					L_34_.Grip = L_33_
					L_34_.Parent = L_9_.Character
					L_19_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_112_[1] == "\114\101\115\112\97\119\110" and L_9_.Character ~= nil then
				local L_135_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_135_ ~= nil then
					L_17_("\100\105\101")
					if L_9_.Character ~= nil then
						L_9_.Character:ClearAllChildren()
					end
					local L_136_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_9_.Character = L_136_
					L_11_:Wait()
					L_9_.Character = L_9_.Character
					L_136_:Destroy()
					L_19_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_112_[1] == "\114\101\102\114\101\115\104" then
				local L_137_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_137_ ~= nil then
					local L_138_ = L_137_.CFrame
					L_17_("\114\101\115\112\97\119\110")
					L_9_.CharacterAdded:Wait()
					L_137_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_137_ ~= nil then
						L_137_.CFrame = L_138_
					end
				end
				L_19_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_112_[1] == "\101\115\112" then
				if L_112_[2] ~= nil then
					local L_139_ = L_51_func(L_112_[2])[1]
					if L_139_ ~= nil and L_139_.Character ~= nil then
						local L_140_ = L_21_(L_139_.Character, "\72\101\97\100", "\70\105\110\100")
						if L_140_ ~= nil then
							L_53_func(L_140_, tostring(L_139_))
							L_19_(tostring(L_139_) .. "\32\104\97\115\32\98\101\101\110\32\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						end
						notify(tostring(L_139_) .. "\39\115\32\99\104\97\114\97\99\116\101\114\32\100\111\101\115\110\39\116\32\101\120\105\115\116", "\82\101\97\108\108\121\32\114\101\100")
					end
				else
					EspEnabled = not EspEnabled
					if EspEnabled then
						L_19_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						for L_141_forvar1, L_142_forvar2 in next, L_3_:GetPlayers() do
							if EspEnabled and L_142_forvar2 ~= L_9_ and L_142_forvar2.Character ~= nil then
								local L_143_ = L_21_(L_142_forvar2.Character, "\72\101\97\100", "\70\105\110\100")
								if L_143_ ~= nil then
									L_53_func(L_143_, tostring(L_142_forvar2))
								end
							end
						end
					end
				end
			end

			if L_112_[1] == "\117\110\101\115\112" then
				if L_112_[2] ~= nil then
					local L_144_ = L_51_func(L_112_[2])[1]
					if L_144_ ~= nil then
						local L_145_ = L_21_(L_16_, tostring(L_144_), "\70\105\110\100")
						if L_145_ ~= nil then
							L_145_:Destroy()
							L_19_(tostring(L_144_) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						end
					end
				else
					EspEnabled = false
					L_16_:ClearAllChildren()
					L_19_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_112_[1] == "\115\101\114\118\101\114" and L_112_[2] ~= nil then
				coroutine.wrap(function()
					local L_146_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_112_[2] == "\104\111\112" then
						local L_147_ = {}
						for L_148_forvar1, L_149_forvar2 in next, L_146_ do
							if type(L_149_forvar2) == "\116\97\98\108\101" and L_149_forvar2.maxPlayers > L_149_forvar2.playing and L_149_forvar2.id ~= game.JobId then
								table.insert(L_147_, L_149_forvar2.id)
							end
						end
						if #L_147_ > 0 then
							L_19_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_19_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_112_[2] == "\98\105\103" then
						local L_150_ = 0
						local L_151_
						for L_152_forvar1, L_153_forvar2 in next, L_146_ do
							if L_153_forvar2.playing > L_150_ and L_153_forvar2.maxPlayers > L_153_forvar2.playing then
								L_150_ = L_153_forvar2.playing
								L_151_ = L_153_forvar2.id
							end
						end
						if L_151_ ~= nil then
							if L_151_ == game.JobId then
								L_19_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_19_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_151_)
							end
						elseif L_151_ == nil then
							L_19_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_112_[2] == "\112\105\110\103" then
						local L_154_ = 9e9
						local L_155_
						for L_156_forvar1, L_157_forvar2 in next, L_146_ do
							if L_157_forvar2.ping < L_154_ and L_157_forvar2.maxPlayers > L_157_forvar2.playing then
								L_154_ = L_157_forvar2.ping
								L_155_ = L_157_forvar2.id
							end
						end
						if L_155_ ~= nil then
							if L_155_ == game.JobId then
								L_19_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_19_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_155_)
							end
						elseif L_155_ == nil then
							L_19_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_112_[1] == "\116\112" or L_112_[1] == "\116\101\108\101\112\111\114\116" or L_112_[1] == "\116\111" and L_112_[2] ~= nil then
				local L_158_ = L_51_func(L_112_[2])[1]
				if L_158_ ~= nil and L_158_.Character ~= nil then
					local L_159_ = L_21_(L_158_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_159_ == nil then
						L_159_ = L_21_(L_158_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					if L_159_ ~= nil then
						L_54_func("\80\97\114\116", "\73\110\115\116\97\110\116", L_159_)
					end
				end
			end

			if L_112_[1] == "\98\116\112" or L_112_[1] == "\98\116\101\108\101\112\111\114\116" or L_112_[1] == "\98\116\111" and L_112_[2] ~= nil then
				local L_160_ = L_51_func(L_112_[2])[1]
				if L_160_ ~= nil and L_160_.Character ~= nil then
					local L_161_ = L_21_(L_160_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_161_ == nil then
						L_161_ = L_21_(L_160_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					if L_161_ ~= nil then
						L_54_func("\80\97\114\116", "\80\114\111\103\114\101\115\115", L_161_)
					end
				end
			end

		end
		return
	end)()
end

L_16_.Name = L_20_(25)
L_10_ = L_21_(workspace, "\67\97\109\101\114\97", "\87\97\105\116")

if not game:IsLoaded() then
	L_19_("\71\97\109\101\32\105\115\32\115\116\105\108\108\32\108\111\97\100\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
	game.Loaded:Wait()
	L_19_("\71\97\109\101\32\108\111\97\100\101\100\33", "\76\105\109\101\32\103\114\101\101\110")
end

for L_162_forvar1, L_163_forvar2 in next, L_3_:GetPlayers() do
	if EspEnabled and L_163_forvar2 ~= L_9_ and L_163_forvar2.Character ~= nil then
		local L_164_ = L_21_(L_163_forvar2.Character, "\72\101\97\100", "\70\105\110\100")
		if L_164_ ~= nil then
			L_53_func(L_164_, tostring(L_163_forvar2))
		end
	end
	L_163_forvar2.CharacterAdded:Connect(function(L_165_arg1)
		local L_166_ = L_21_(L_165_arg1, "\72\101\97\100", "\87\97\105\116")
		if EspEnabled and L_166_ ~= nil then
			L_53_func(L_166_, tostring(L_163_forvar2))
		end
	end)
end

L_3_.PlayerAdded:Connect(function(L_167_arg1)
	if L_167_arg1.Character ~= nil then
		local L_168_ = L_21_(L_167_arg1.Character, "\72\101\97\100", "\70\105\110\100")
		if EspEnabled and L_168_ ~= nil then
			L_53_func(L_168_, tostring(L_167_arg1))
		end
	end
	L_167_arg1.CharacterAdded:Connect(function(L_169_arg1)
		local L_170_ = L_21_(L_169_arg1, "\72\101\97\100", "\87\97\105\116")
		if EspEnabled and L_170_ ~= nil then
			L_53_func(L_170_, tostring(L_167_arg1))
		end
	end)
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_171_arg1, L_172_arg2)
	if L_172_arg2 then
		Typing = true
	elseif not L_172_arg2 then
		Typing = false
		if L_171_arg1.KeyCode == Enum.KeyCode.W then
			L_44_["\87"] = true
		end
		if L_171_arg1.KeyCode == Enum.KeyCode.A then
			L_44_["\65"] = true
		end
		if L_171_arg1.KeyCode == Enum.KeyCode.S then
			L_44_["\83"] = true
		end
		if L_171_arg1.KeyCode == Enum.KeyCode.D then
			L_44_["\68"] = true
		end
		if L_171_arg1.KeyCode == Enum.KeyCode.Q then
			L_44_["\81"] = true
			if L_27_ and not L_44_["\69"] then
				L_28_ = L_28_ + 0.5
			end
		end
		if L_171_arg1.KeyCode == Enum.KeyCode.E then
			L_44_["\69"] = true
			if L_27_ and not L_44_["\81"] then
				L_28_ = L_28_ - 0.5
			end
		end
		if L_171_arg1.KeyCode == L_15_ and not L_48_ then
			L_18_()
			L_48_ = true
			L_49_.Size = UDim2.new(0, 0, 0, 25)
			L_49_.Position = UDim2.new(1, 0, 1, -295)
			L_49_.Visible = true
			L_49_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_49_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_11_:Wait()
			L_49_:CaptureFocus()
			wait(0.25)
			L_48_ = false
		end
	end
end)

L_6_.InputEnded:Connect(function(L_173_arg1, L_174_arg2)
	if L_173_arg1.KeyCode == Enum.KeyCode.W then
		L_44_["\87"] = false
	end
	if L_173_arg1.KeyCode == Enum.KeyCode.A then
		L_44_["\65"] = false
	end
	if L_173_arg1.KeyCode == Enum.KeyCode.S then
		L_44_["\83"] = false
	end
	if L_173_arg1.KeyCode == Enum.KeyCode.D then
		L_44_["\68"] = false
	end
	if L_173_arg1.KeyCode == Enum.KeyCode.Q then
		L_44_["\81"] = false
		if L_27_ and not L_44_["\69"] then
			L_28_ = L_28_ - 0.5
		end
	end
	if L_173_arg1.KeyCode == Enum.KeyCode.E then
		L_44_["\69"] = false
		if L_27_ and not L_44_["\81"] then
			L_28_ = L_28_ + 0.5
		end
	end
	if L_174_arg2 then
		Typing = true
	elseif not L_174_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_36_ and L_37_ ~= nil then
			local L_175_ = {}
			local L_176_ = L_21_(L_3_, L_37_, "\70\105\110\100")
			local L_177_
			if L_176_ ~= nil and L_176_.Character ~= nil then
				for L_178_forvar1, L_179_forvar2 in next, L_176_.Character:GetChildren() do
					if L_179_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_179_forvar2)) == string.lower(L_38_) then
						L_177_ = L_179_forvar2
						break
					end
				end
				if L_177_ ~= nil then
					L_10_.CoordinateFrame = CFrame["\110\101\119"](L_10_.CoordinateFrame.p, L_177_.Position)
				end
			end
		end
		L_11_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_30_ then
			local L_180_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_181_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_180_ ~= nil and L_181_ ~= nil then
				local L_182_ = Vector3["\110\101\119"](L_181_.MoveDirection.X, 0, L_181_.MoveDirection.Z) * L_31_
				L_180_.CFrame = L_180_.CFrame + L_182_
			end
		end
		if L_27_ then
			local L_183_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_29_ == nil then
				L_29_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_29_.Transparency = 1
				L_29_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_29_.Anchored = true
				L_29_.Name = L_20_(25)
			end
			if L_183_ ~= nil then
				L_29_.CFrame = L_183_.CFrame * CFrame["\110\101\119"](0, L_28_, 0)
			end
		end
		if L_35_ then
			local L_184_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_185_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_184_ ~= nil and L_185_ ~= nil then
				L_185_:ChangeState(11)
				L_184_.Velocity = Vector3["\110\101\119"](0, 900000, 0)
				L_185_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_12_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_24_ then
			local L_186_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_187_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_186_ ~= nil and L_187_ ~= nil then
				if L_26_ ~= nil then
					L_186_.CFrame = L_26_
				end
				L_187_.PlatformStand = true
				local L_188_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_188_.Name = L_20_(25)
				L_188_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_188_.Anchored = true
				L_188_.CFrame = L_186_.CFrame
				L_188_.CanCollide = false
				L_188_.Transparency = 1
				local L_189_ = Instance["\110\101\119"]("\87\101\108\100", L_188_)
				L_189_.Part0 = L_186_
				L_189_.Part1 = L_188_
				if not Typing then
					if L_44_["\87"] then
						L_188_.CFrame = L_188_.CFrame + L_188_.CFrame.lookVector * L_25_
					end
					if L_44_["\83"] then
						L_188_.CFrame = L_188_.CFrame + L_188_.CFrame.lookVector * -L_25_
					end
					if L_44_["\65"] then
						L_188_.CFrame = L_188_.CFrame + L_188_.CFrame.rightVector * -L_25_
					end
					if L_44_["\68"] then
						L_188_.CFrame = L_188_.CFrame + L_188_.CFrame.rightVector * L_25_
					end
				end
				L_188_.CFrame = CFrame["\110\101\119"](L_186_.Position, L_10_.CoordinateFrame.lookVector * 9e9)
				L_26_ = L_186_.CFrame
				L_13_:Wait()
				if L_186_ ~= nil and L_26_ ~= nil then
					L_186_.CFrame = L_26_
				end
				if L_189_ ~= nil then
					L_189_:Destroy()
				end
				if L_188_ ~= nil then
					L_188_:Destroy()
				end
				if L_187_ ~= nil then
					L_187_.PlatformStand = false
				end
			end
		end
		L_13_:Wait()
	end
end)()

table.insert(L_43_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_43_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_43_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_43_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_43_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_43_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_43_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_43_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_43_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_43_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_43_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_43_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_43_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_43_, {
	Command = "\67\97\109\108\111\99\107\47\85\110\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_43_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_43_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_43_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})

table.insert(L_43_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_43_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_43_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})


-- // LOAD TIME END \\ --

L_19_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_19_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
