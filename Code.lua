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
local L_29_ = 0
local L_30_

local L_31_ = false
local L_32_ = 0.01

local L_33_ = false
local L_34_
local L_35_

local L_36_ = false

local L_37_ = false

local L_38_ = false
local L_39_ = 2

local L_40_ = false
local L_41_
local L_42_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_43_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_44_ = {}
local L_45_ = {}
local L_46_ = {}
local L_47_ = {}

local L_48_ = {
	["\87"] = false,
	["\65"] = false,
	["\83"] = false,
	["\68"] = false,
	["\81"] = false,
	["\69"] = false,
}

for L_58_forvar1 = 1, 255 do
	table.insert(L_44_, string.char(L_58_forvar1))
end
for L_59_forvar1 = 1, 9 do
	table.insert(L_45_, tostring(L_59_forvar1))
end
for L_60_forvar1 = 65, 90 do
	table.insert(L_46_, string.char(L_60_forvar1))
end

-- // FUNCTIONS \\ --

L_20_ = function(L_61_arg1)
	local L_62_ = ""
	for L_63_forvar1 = 1, L_61_arg1 do
		L_62_ = L_62_ .. L_44_[math["\114\97\110\100\111\109"](1, #L_44_)]
	end
	return L_62_
end

local function L_49_func(L_64_arg1)
	if L_64_arg1 ~= nil then
		local L_65_ = false
		local L_66_ = false
		for L_67_forvar1 = 1, string.len(L_64_arg1) do
			if table.find(L_46_, string.sub(L_64_arg1, L_67_forvar1, L_67_forvar1)) then
				L_65_ = true
			end
			if table.find(L_45_, string.sub(L_64_arg1, L_67_forvar1, L_67_forvar1)) then
				L_66_ = true
			end
		end
		if L_65_ and not L_66_ then
			return "\115\116\114\105\110\103"
		elseif L_66_ and not L_65_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

-- // NOTIFICATION SYSTEM \\ --

local L_50_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_50_.Name = L_20_(25)

local L_51_ = Instance["\110\101\119"]("\70\114\97\109\101", L_50_)
L_51_.Size = UDim2.new(0, 200, 0, 250)
L_51_.Position = UDim2.new(0, 0, 1, -250)
L_51_.BorderSizePixel = 0
L_51_.Transparency = 1

local L_52_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_50_)
L_52_.Size = UDim2.new(0, 0, 0, 25)
L_52_.Position = UDim2.new(1, 0, 1, -295)
L_52_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_52_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_52_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_52_.TextSize = 15
L_52_.Text = ""
L_52_.Transparency = 0
L_52_.Visible = false
L_52_.BorderSizePixel = 2
L_52_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_53_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_52_)
L_53_.Size = UDim2.new(1, 0, 0, 200)
L_53_.Position = UDim2.new(0, 0, 0, 31)
L_53_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_53_.Transparency = 0
L_53_.BorderSizePixel = 2
L_53_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_53_.ScrollBarThickness = 0

L_52_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_18_()
end)

L_52_.FocusLost:Connect(function()
	L_53_:ClearAllChildren()
	L_17_(L_52_.Text)
	L_52_.Text = ""
	L_52_.Size = UDim2.new(0, 0, 0, 25)
	L_52_.Position = UDim2.new(1, 0, 1, -295)
	L_52_.Visible = false
end)

L_18_ = function()
	L_53_:ClearAllChildren()
	local L_68_ = 0
	for L_69_forvar1, L_70_forvar2 in next, L_47_ do
		local L_71_ = string.split(L_70_forvar2.Command, "\47")
		for L_72_forvar1 = 1, #L_71_ do
			if string.lower(L_52_.Text) == string.lower(string.sub(L_71_[L_72_forvar1], 1, string.len(L_52_.Text))) and L_21_(L_53_, L_70_forvar2.Command, "\70\105\110\100") == nil then
				local L_73_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_53_)
				L_73_.Size = UDim2.new(1, -10, 0, 25)
				L_73_.Name = L_70_forvar2.Command
				if L_68_ == 0 then
					L_73_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_73_.Position = UDim2.new(0, 5, 0, 30 * L_68_) + UDim2.new(0, 0, 0, 5)
				end
				L_73_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_73_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_73_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_73_.TextSize = 15
				L_73_.Text = L_70_forvar2.Command
				L_73_.Transparency = 0
				L_73_.BorderSizePixel = 0
				L_73_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_74_ = Instance["\110\101\119"]("\70\114\97\109\101", L_52_)
				L_74_.Size = UDim2.new(0, 350, 0, 200)
				L_74_.Position = UDim2.new(0, -356, 0, 0)
				L_74_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_74_.Transparency = 0
				L_74_.BorderSizePixel = 2
				L_74_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_74_.Visible = false

				local L_75_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_74_)
				L_75_.Size = UDim2.new(0, 330, 0, 185)
				L_75_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_75_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_75_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_75_.TextSize = 18
				L_75_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_75_.TextScaled = false
				L_75_.Transparency = 0
				L_75_.BorderSizePixel = 2
				L_75_.Text = L_70_forvar2.Description
				L_75_.TextYAlignment = Enum.TextYAlignment.Top
				L_75_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_73_.MouseEnter:Connect(function()
					L_74_.Visible = true
					for L_76_forvar1 = 1, 20 do
						if not L_74_.Visible then
							break
						elseif L_76_forvar1 == 15 then
							L_74_.Visible = false
						end
						wait(1)
					end
				end)
				L_73_.MouseLeave:Connect(function()
					L_74_.Visible = false
				end)

				L_68_ = L_68_ + 1
				L_53_.CanvasSize = L_53_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_68_ < 7 then
		L_53_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

L_19_ = function(L_77_arg1, L_78_arg2)
	coroutine.wrap(function()
		if not L_22_ and L_23_ then
			repeat
				L_11_:Wait()
			until L_22_
		end
		if L_22_ and L_23_ then
			repeat
				L_11_:Wait()
			until L_22_ and #L_51_:GetChildren() < 6
			L_22_ = false
			for L_80_forvar1, L_81_forvar2 in next, L_51_:GetChildren() do
				L_81_forvar2:TweenPosition(L_81_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_11_:Wait()
			end
			wait(0.2)
			local L_79_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_51_)
			L_79_.Size = UDim2.new(0, 5 * string.len(L_77_arg1), 0, 35)
			L_79_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_79_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_79_.TextColor = BrickColor.new(L_78_arg2)
			L_79_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_79_.TextScaled = true
			L_79_.Transparency = 0
			L_79_.BorderSizePixel = 2
			L_79_.Text = L_77_arg1
			L_79_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				wait(5)
				for L_82_forvar1 = 1, 16 do
					L_79_.Transparency = L_79_.Transparency + 0.1 / 2
					L_11_:Wait()
				end
				L_79_:Destroy()
			end)()
			L_11_:Wait()
			L_22_ = true
		end
	end)()
	return
end

local function L_54_func(L_83_arg1, L_84_arg2)
	local L_85_ = {}
	if L_84_arg2 == nil then
		for L_86_forvar1, L_87_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_87_forvar2)), 1, string.len(L_83_arg1)) == L_83_arg1 then
				table.insert(L_85_, L_87_forvar2)
			end
		end
	elseif L_84_arg2 == "\111\116\104\101\114\115" then
		for L_88_forvar1, L_89_forvar2 in next, L_3_:GetPlayers() do
			if L_89_forvar2 ~= L_9_ then
				table.insert(L_85_, L_89_forvar2)
			end
		end
	elseif L_84_arg2 == "\97\108\108" then
		for L_90_forvar1, L_91_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_85_, L_91_forvar2)
		end
	elseif L_84_arg2 == "\109\101" then
		table.insert(L_85_, L_9_)
	end
	if #L_85_ == 0 then
		L_19_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_85_
end

L_21_ = function(L_92_arg1, L_93_arg2, L_94_arg3, L_95_arg4)
	if L_92_arg1 ~= nil and L_93_arg2 ~= nil then
		if L_94_arg3 == "\70\105\110\100" then
			local L_96_ = L_92_arg1:FindFirstChildOfClass(L_93_arg2)
			if not L_96_ then
				L_96_ = L_92_arg1:FindFirstChild(L_93_arg2)
			end
			if L_96_ then
				return L_96_
			end
		elseif L_94_arg3 == "\87\97\105\116" then
			local L_97_
			if L_95_arg4 ~= nil then
				L_92_arg1:WaitForChild(L_93_arg2, L_95_arg4)
			else
				L_97_ = L_92_arg1:WaitForChild(L_93_arg2, 9e9)
			end
			if L_97_ then
				return L_97_
			end
		end
	end
	return
end

local function L_55_func(L_98_arg1)
	if L_98_arg1 ~= nil and L_98_arg1.Character ~= nil then
		local L_99_ = L_21_(L_98_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_99_ ~= nil then
			return L_99_.RigType
		end
	end
	return
end

local function L_56_func(L_100_arg1, L_101_arg2)
	if L_21_(L_16_, tostring(L_101_arg2), "\70\105\110\100") == nil then
		local L_102_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_16_)
		local L_103_ = Instance["\110\101\119"]("\70\114\97\109\101", L_102_)
		local L_104_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_102_)

		L_102_.Name = tostring(L_101_arg2)
		L_102_.Adornee = L_100_arg1
		L_102_.AlwaysOnTop = true
		L_102_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_102_.Size = UDim2.new(0, 5, 0, 5)

		L_103_.Name = "\68\79\84"
		L_103_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_103_.BackgroundTransparency = 0.3
		L_103_.BorderSizePixel = 0
		L_103_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_103_.Size = UDim2.new(2, 0, 2, 0)
		L_103_.Visible = true
		L_103_.ZIndex = 10

		L_104_.Name = "\78\65\77\69"
		L_104_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_104_.BackgroundTransparency = 1
		L_104_.BorderSizePixel = 0
		L_104_.Position = UDim2.new(0, 0, 0, -40)
		L_104_.Size = UDim2.new(1, 0, 10, 0)
		L_104_.Visible = true
		L_104_.ZIndex = 10
		L_104_.Font = "\65\114\105\97\108\66\111\108\100"
		L_104_.FontSize = "\83\105\122\101\49\52"
		L_104_.Text = string.upper(tostring(L_101_arg2))
		L_104_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_100_arg1.Changed:Connect(function(L_105_arg1)
			if tostring(L_105_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_105_arg1) == "\80\97\114\101\110\116" then
				L_102_:Destroy()
			end
		end)
	end
end

local function L_57_func(L_106_arg1)
	local L_107_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_107_ ~= nil and L_106_arg1[3] ~= nil then
		local L_108_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_108_.Name = L_20_(25)
		L_108_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_108_.Anchored = true
		L_108_.CFrame = L_107_.CFrame
		L_108_.CanCollide = false
		L_108_.Transparency = 1
		if L_106_arg1[1] == "\80\97\114\116" then
			if L_106_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_109_ = 0
				if L_106_arg1[4] ~= nil and L_106_arg1[4] == "\79\102\102\115\101\116" then
					L_109_ = L_106_arg1[3].Size.Y / 2 + 3
				end
				local L_110_ = Instance["\110\101\119"]("\87\101\108\100", L_108_)
				L_110_.Part0 = L_107_
				L_110_.Part1 = L_108_
				L_108_.CFrame = CFrame["\110\101\119"](L_106_arg1[3].Position) * CFrame["\110\101\119"](0, L_109_, 0)
				L_11_:Wait()
				L_110_:Destroy()
			elseif L_106_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_111_ = 0.4
				if L_106_arg1[4] ~= nil and L_49_func(L_106_arg1[4]) == "\110\117\109\98\101\114" then
					L_111_ = L_106_arg1[4]
				end
				repeat
					local L_112_ = Instance["\110\101\119"]("\87\101\108\100", L_108_)
					L_112_.Part0 = L_107_
					L_112_.Part1 = L_108_
					L_108_.CFrame = CFrame["\110\101\119"](L_108_.Position, L_106_arg1[3].Position)
					L_108_.CFrame = L_108_.CFrame + L_108_.CFrame.lookVector * L_111_
					L_11_:Wait()
					L_112_:Destroy()
				until L_108_ == nil or L_112_ == nil or (L_107_.Position - L_106_arg1[3].Position).magnitude < 3.5 or L_9_.Character == nil or L_107_.Parent == nil
			end
		elseif L_106_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_106_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_113_ = Instance["\110\101\119"]("\87\101\108\100", L_108_)
				L_113_.Part0 = L_107_
				L_113_.Part1 = L_108_
				L_108_.CFrame = L_106_arg1[3]
				L_11_:Wait()
				L_113_:Destroy()
			elseif L_106_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_114_ = 0.4
				if L_106_arg1[4] ~= nil and L_49_func(L_106_arg1[4]) == "\110\117\109\98\101\114" then
					L_114_ = L_106_arg1[4]
				end
				repeat
					local L_115_ = Instance["\110\101\119"]("\87\101\108\100", L_108_)
					L_115_.Part0 = L_107_
					L_115_.Part1 = L_108_
					L_108_.CFrame = CFrame["\110\101\119"](L_108_.Position, L_106_arg1[3].p)
					L_108_.CFrame = L_108_.CFrame + L_108_.CFrame.lookVector * L_114_
					L_11_:Wait()
					L_115_:Destroy()
				until L_108_ == nil or L_115_ == nil or (L_107_.Position - L_106_arg1[3].p).magnitude < 3.5 or L_9_.Character == nil or L_107_.Parent == nil
			end
		end
		L_108_:Destroy()
	end
end


L_17_ = function(L_116_arg1)
	coroutine.wrap(function()
		if L_116_arg1 ~= nil and string.len(L_116_arg1) > 0 then

			local L_117_ = string.split(L_116_arg1, "\32")
			for L_118_forvar1 = 1, #L_117_ do
				L_117_[L_118_forvar1] = string.lower(L_117_[L_118_forvar1])
			end

			if L_117_[1] == "\119\97\108\107\115\112\101\101\100" or L_117_[1] == "\119\115" or L_117_[1] == "\115\112\101\101\100" and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
				local L_119_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_119_ ~= nil then
					L_119_.WalkSpeed = L_117_[2]
					L_19_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_117_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_117_[1] == "\106\117\109\112\112\111\119\101\114" or L_117_[1] == "\106\112" and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
				local L_120_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_120_ ~= nil then
					L_120_.JumpPower = L_117_[2]
					L_19_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_117_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_117_[1] == "\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_117_[1] == "\97\115" then
				if L_117_[2] == nil then
					L_38_ = not L_38_
					if L_38_ then
						L_19_("\65\110\105\109\97\116\105\111\110\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_19_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						local L_121_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_121_ ~= nil and L_121_.Health ~= 0 then
							for L_122_forvar1, L_123_forvar2 in next, Animation:GetPlayingAnimationTracks() do
								L_123_forvar2:AdjustSpeed(1)
							end
						end
						L_19_("\65\110\105\109\97\116\105\111\110\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_117_[2] ~= nil and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
					L_39_ = L_117_[2]
					L_19_("\65\110\105\109\97\116\105\111\110\32\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_117_[1] == "\117\110\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_117_[1] == "\117\110\97\115" then
				L_38_ = false
			end

			if L_117_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_117_[1] == "\118\115" then
				if L_117_[2] == nil then
					L_31_ = not L_31_
					if L_31_ then
						L_19_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_31_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_19_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						L_19_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_31_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_117_[2] ~= nil and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
					L_32_ = L_117_[2]
					L_19_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_32_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_117_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_117_[1] == "\117\110\118\115" then
				L_31_ = false
			end

			if L_117_[1] == "\103\114\97\118\105\116\121" and L_117_[2] ~= nil and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_117_[2]
				L_19_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_117_[1] == "\102\108\121" then
				if L_117_[2] == nil then
					L_24_ = not L_24_
					L_26_ = nil
					L_19_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_24_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_117_[2] ~= nil and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
					L_25_ = L_117_[2]
					L_19_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_117_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_117_[1] == "\102\108\121\115\112\101\101\100" and L_49_func(L_117_[2]) == "\110\117\109\98\101\114" then
				L_25_ = L_117_[2]
				L_19_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_117_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_117_[1] == "\117\110\102\108\121" then
				L_24_ = false
				L_19_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_24_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_117_[1] == "\102\108\111\97\116" then
				L_27_ = not L_27_
				if not L_27_ and L_30_ ~= nil then
					L_30_:Destroy()
					L_30_ = nil
				end
				local L_124_ = L_55_func(L_9_)
				if L_124_ ~= nil and L_124_ == Enum.HumanoidRigType.R15 then
					L_28_ = -3.65
				else
					L_28_ = -3.5
				end
				L_19_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_117_[1] == "\117\110\102\108\111\97\116" then
				L_27_ = false
				if L_30_ ~= nil then
					L_30_:Destroy()
				end
				L_19_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_117_[1] == "\119\97\108\107\102\108\105\110\103" or L_117_[1] == "\119\102" then
				L_36_ = not L_36_
				if L_36_ then
					local L_125_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_125_ ~= nil then
						L_125_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_19_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_36_ then
					local L_126_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_126_ ~= nil then
						L_126_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_19_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_117_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_117_[1] == "\117\110\119\102" then
				L_36_ = false
				local L_127_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_127_ ~= nil then
					L_127_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_19_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_117_[1] == "\116\114\97\109\112\111\108\105\110\101" then
				L_37_ = not L_37_
				if L_37_ then
					local L_128_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_128_ ~= nil then
						L_128_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_19_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_37_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_37_ then
					local L_129_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_129_ ~= nil then
						L_129_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_19_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_37_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_117_[1] == "\117\110\116\114\97\109\112\111\108\105\110\101" then
				L_37_ = false
				local L_130_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_130_ ~= nil then
					L_130_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_19_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_37_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end


			if L_117_[1] == "\114\101\106\111\105\110" or L_117_[1] == "\114\106" then
				if #L_3_:GetPlayers() > 1 then
					L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
					L_19_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				else
					L_7_:Teleport(game.PlaceId)
					L_19_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_117_[1] == "\99\97\109\108\111\99\107" or L_117_[1] == "\99\108" then
				if L_117_[2] ~= nil then
					local L_131_ = L_54_func(L_117_[2])[1]
					if L_131_ ~= nil then
						L_40_ = true
						L_41_ = tostring(L_131_)
						L_19_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_41_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_42_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_40_ = not L_40_
					L_19_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_117_[1] == "\117\110\99\97\109\108\111\99\107" or L_117_[1] == "\117\110\99\108" then
				L_40_ = false
				L_41_ = nil
				L_19_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_117_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_117_[1] == "\99\108\112\97\114\116" and L_117_[2] ~= nil then
				L_42_ = L_117_[2]
				L_19_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_117_[1] == "\100\105\101" then
				local L_132_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_132_ ~= nil then
					L_132_:ChangeState(15)
				end
			end

			if L_117_[1] == "\102\108\105\110\103" then
				local L_133_ = L_54_func(L_117_[2])[1]
				if L_133_ ~= nil and L_133_.Character ~= nil then
					local L_134_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
					local L_135_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					local L_136_ = L_21_(L_133_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
					local L_137_ = L_21_(L_133_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_134_ ~= nil and L_135_ ~= nil and L_135_.Health ~= 0 and L_136_ ~= nil and L_137_ ~= nil and L_137_.Health ~= 0 then
						local L_138_ = L_134_.CFrame
						local L_139_ = L_136_.Position
						coroutine.wrap(function()
							repeat
								L_134_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
								L_10_.CameraSubject = L_133_.Character
								L_134_.CFrame = CFrame["\110\101\119"](L_136_.Position) + Vector3["\110\101\119"](L_136_.Velocity.X, 0, L_136_.Velocity.Z) / 2.1
								L_12_:Wait()
							until L_9_.Character == nil or L_133_ == nil or L_133_.Character == nil or L_135_ == nil or L_137_ == nil or L_135_.Health == 0 or L_137_.Health == 0 or (L_136_.Position - L_139_).magnitude > 100
							if L_9_.Character ~= nil then
								L_10_.CameraSubject = L_9_.Character
								L_17_("\100\105\101")
							end
						end)()
					end
				end
			end

			if L_117_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_117_[1] == "\116\102" then
				local L_140_ = L_54_func(L_117_[2])[1]
				if L_140_ ~= nil and L_140_.Character ~= nil then
					local L_141_ = L_21_(L_140_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_141_ == nil then
						L_141_ = L_21_(L_140_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_142_ = L_21_(L_9_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_142_ == nil then
						L_142_ = L_21_(L_9_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_143_ = L_21_(L_9_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_142_ ~= nil and L_143_ ~= nil and L_141_ ~= nil then
						L_33_ = true
						L_34_ = L_143_.Grip
						L_35_ = L_143_
						L_19_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_140_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_143_.Parent = L_9_.Backpack
								local L_144_ = L_21_(L_143_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_144_ ~= nil then
									L_144_.Massless = true
								end
								local L_145_ = L_142_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_143_.Grip = L_145_:toObjectSpace(L_141_.CFrame):inverse()
								L_143_.Parent = L_9_.Character
								L_11_:Wait()
							until not L_33_ or L_143_ == nil or L_144_ == nil or L_9_.Character == nil or L_141_ == nil
							L_33_ = false
							if L_143_ ~= nil then
								L_143_.Parent = L_9_.Backpack
								L_143_.Grip = L_34_
								L_143_.Parent = L_9_.Character
							end
						end)()
					end
				end
			end
			if L_117_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_117_[1] == "\117\110\116\102" then
				L_33_ = false
				if L_35_ ~= nil and L_34_ ~= nil then
					L_35_.Parent = L_9_.Backpack
					L_35_.Grip = L_34_
					L_35_.Parent = L_9_.Character
					L_19_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_117_[1] == "\114\101\115\112\97\119\110" or L_117_[1] == "\114\101" and L_9_.Character ~= nil then
				local L_146_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_146_ ~= nil then
					L_17_("\100\105\101")
					if L_9_.Character ~= nil then
						L_9_.Character:ClearAllChildren()
					end
					local L_147_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_9_.Character = L_147_
					L_11_:Wait()
					L_9_.Character = L_9_.Character
					L_147_:Destroy()
					L_19_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_117_[1] == "\114\101\102\114\101\115\104" then
				local L_148_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_148_ ~= nil then
					local L_149_ = L_148_.CFrame
					local L_150_ = L_10_.CoordinateFrame
					L_17_("\114\101\115\112\97\119\110")
					L_9_.CharacterAdded:Wait()
					L_10_.CoordinateFrame = L_150_
					L_148_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_148_ ~= nil then
						L_148_.CFrame = L_149_
					end
				end
				L_19_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_117_[1] == "\101\115\112" then
				if L_117_[2] ~= nil then
					local L_151_ = L_54_func(L_117_[2])[1]
					if L_151_ ~= nil and L_151_.Character ~= nil then
						local L_152_ = L_21_(L_151_.Character, "\72\101\97\100", "\70\105\110\100")
						if L_152_ ~= nil then
							L_56_func(L_152_, tostring(L_151_))
							L_19_(tostring(L_151_) .. "\32\104\97\115\32\98\101\101\110\32\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						end
					end
				else
					EspEnabled = not EspEnabled
					if EspEnabled then
						L_19_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						for L_153_forvar1, L_154_forvar2 in next, L_3_:GetPlayers() do
							if EspEnabled and L_154_forvar2 ~= L_9_ and L_154_forvar2.Character ~= nil then
								local L_155_ = L_21_(L_154_forvar2.Character, "\72\101\97\100", "\70\105\110\100")
								if L_155_ ~= nil then
									L_56_func(L_155_, tostring(L_154_forvar2))
								end
							end
						end
					end
				end
			end

			if L_117_[1] == "\117\110\101\115\112" then
				if L_117_[2] ~= nil then
					local L_156_ = L_54_func(L_117_[2])[1]
					if L_156_ ~= nil then
						local L_157_ = L_21_(L_16_, tostring(L_156_), "\70\105\110\100")
						if L_157_ ~= nil then
							L_157_:Destroy()
							L_19_(tostring(L_156_) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						end
					end
				else
					EspEnabled = false
					L_16_:ClearAllChildren()
					L_19_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_117_[1] == "\115\101\114\118\101\114" and L_117_[2] ~= nil then
				coroutine.wrap(function()
					local L_158_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_117_[2] == "\104\111\112" then
						local L_159_ = {}
						for L_160_forvar1, L_161_forvar2 in next, L_158_ do
							if type(L_161_forvar2) == "\116\97\98\108\101" and L_161_forvar2.maxPlayers > L_161_forvar2.playing and L_161_forvar2.id ~= game.JobId then
								table.insert(L_159_, L_161_forvar2.id)
							end
						end
						if #L_159_ > 0 then
							L_19_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_19_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_117_[2] == "\98\105\103" then
						local L_162_ = 0
						local L_163_
						for L_164_forvar1, L_165_forvar2 in next, L_158_ do
							if L_165_forvar2.playing > L_162_ and L_165_forvar2.maxPlayers > L_165_forvar2.playing then
								L_162_ = L_165_forvar2.playing
								L_163_ = L_165_forvar2.id
							end
						end
						if L_163_ ~= nil then
							if L_163_ == game.JobId then
								L_19_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_19_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_163_)
							end
						elseif L_163_ == nil then
							L_19_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_117_[2] == "\112\105\110\103" then
						local L_166_ = 9e9
						local L_167_
						for L_168_forvar1, L_169_forvar2 in next, L_158_ do
							if L_169_forvar2.ping < L_166_ and L_169_forvar2.maxPlayers > L_169_forvar2.playing then
								L_166_ = L_169_forvar2.ping
								L_167_ = L_169_forvar2.id
							end
						end
						if L_167_ ~= nil then
							if L_167_ == game.JobId then
								L_19_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_19_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_167_)
							end
						elseif L_167_ == nil then
							L_19_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_117_[1] == "\116\112" or L_117_[1] == "\116\101\108\101\112\111\114\116" or L_117_[1] == "\116\111" and L_117_[2] ~= nil then
				local L_170_ = L_54_func(L_117_[2])[1]
				if L_170_ ~= nil and L_170_.Character ~= nil then
					local L_171_ = L_21_(L_170_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_171_ == nil then
						L_171_ = L_21_(L_170_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					if L_171_ ~= nil then
						L_57_func({
							"\80\97\114\116",
							"\73\110\115\116\97\110\116",
							L_171_
						})
					end
				end
			end

			if L_117_[1] == "\98\116\112" or L_117_[1] == "\98\116\101\108\101\112\111\114\116" or L_117_[1] == "\98\116\111" and L_117_[2] ~= nil then
				local L_172_ = L_54_func(L_117_[2])[1]
				if L_172_ ~= nil and L_172_.Character ~= nil then
					local L_173_ = L_21_(L_172_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_173_ == nil then
						L_173_ = L_21_(L_172_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					if L_173_ ~= nil then
						L_57_func({
							"\80\97\114\116",
							"\80\114\111\103\114\101\115\115",
							L_173_,
							L_117_[3]
						})
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

for L_174_forvar1, L_175_forvar2 in next, L_3_:GetPlayers() do
	if EspEnabled and L_175_forvar2 ~= L_9_ and L_175_forvar2.Character ~= nil then
		local L_176_ = L_21_(L_175_forvar2.Character, "\72\101\97\100", "\70\105\110\100")
		if L_176_ ~= nil then
			L_56_func(L_176_, tostring(L_175_forvar2))
		end
	end
	L_175_forvar2.CharacterAdded:Connect(function(L_177_arg1)
		local L_178_ = L_21_(L_177_arg1, "\72\101\97\100", "\87\97\105\116")
		if EspEnabled and L_178_ ~= nil then
			L_56_func(L_178_, tostring(L_175_forvar2))
		end
	end)
end

L_3_.PlayerAdded:Connect(function(L_179_arg1)
	if L_179_arg1.Character ~= nil then
		local L_180_ = L_21_(L_179_arg1.Character, "\72\101\97\100", "\70\105\110\100")
		if EspEnabled and L_180_ ~= nil then
			L_56_func(L_180_, tostring(L_179_arg1))
		end
	end
	L_179_arg1.CharacterAdded:Connect(function(L_181_arg1)
		local L_182_ = L_21_(L_181_arg1, "\72\101\97\100", "\87\97\105\116")
		if EspEnabled and L_182_ ~= nil then
			L_56_func(L_182_, tostring(L_179_arg1))
		end
	end)
end)

L_9_.Chatted:Connect(function(L_183_arg1)
	if string.sub(string.lower(L_183_arg1), 1, string.len(L_14_)) == string.lower(L_14_) then
		L_17_(string.sub(L_183_arg1, string.len(L_14_) + 1, string.len(L_183_arg1)))
	end
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_184_arg1, L_185_arg2)
	if L_185_arg2 then
		Typing = true
	elseif not L_185_arg2 then
		Typing = false
		if L_184_arg1.KeyCode == Enum.KeyCode.W then
			L_48_["\87"] = true
		end
		if L_184_arg1.KeyCode == Enum.KeyCode.A then
			L_48_["\65"] = true
		end
		if L_184_arg1.KeyCode == Enum.KeyCode.S then
			L_48_["\83"] = true
		end
		if L_184_arg1.KeyCode == Enum.KeyCode.D then
			L_48_["\68"] = true
		end
		if L_184_arg1.KeyCode == Enum.KeyCode.Q then
			L_48_["\81"] = true
			if L_27_ then
				L_29_ = 0.5
			end
		end
		if L_184_arg1.KeyCode == Enum.KeyCode.E then
			L_48_["\69"] = true
			if L_27_ then
				L_29_ = -0.5
			end
		end
		if L_184_arg1.KeyCode == L_15_ and not CmdBarTweening then
			L_18_()
			CmdBarTweening = true
			L_52_.Size = UDim2.new(0, 0, 0, 25)
			L_52_.Position = UDim2.new(1, 0, 1, -295)
			L_52_.Visible = true
			L_52_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_52_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_11_:Wait()
			L_52_:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
	end
end)

L_6_.InputEnded:Connect(function(L_186_arg1, L_187_arg2)
	if L_186_arg1.KeyCode == Enum.KeyCode.W then
		L_48_["\87"] = false
	end
	if L_186_arg1.KeyCode == Enum.KeyCode.A then
		L_48_["\65"] = false
	end
	if L_186_arg1.KeyCode == Enum.KeyCode.S then
		L_48_["\83"] = false
	end
	if L_186_arg1.KeyCode == Enum.KeyCode.D then
		L_48_["\68"] = false
	end
	if L_186_arg1.KeyCode == Enum.KeyCode.Q then
		L_48_["\81"] = false
		if L_27_ then
			L_29_ = 0
		end
	end
	if L_186_arg1.KeyCode == Enum.KeyCode.E then
		L_48_["\69"] = false
		if L_27_ then
			L_29_ = 0
		end
	end
	if L_187_arg2 then
		Typing = true
	elseif not L_187_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_40_ and L_41_ ~= nil then
			local L_188_ = {}
			local L_189_ = L_21_(L_3_, L_41_, "\70\105\110\100")
			local L_190_
			if L_189_ ~= nil and L_189_.Character ~= nil then
				for L_191_forvar1, L_192_forvar2 in next, L_189_.Character:GetChildren() do
					if L_192_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_192_forvar2)) == string.lower(L_42_) then
						L_190_ = L_192_forvar2
						break
					end
				end
				if L_190_ ~= nil then
					L_10_.CoordinateFrame = CFrame["\110\101\119"](L_10_.CoordinateFrame.p, L_190_.Position)
				end
			end
		end
		if L_38_ then
			local L_193_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_193_ ~= nil and L_193_.Health ~= 0 then
				for L_194_forvar1, L_195_forvar2 in next, L_193_:GetPlayingAnimationTracks() do
					L_195_forvar2:AdjustSpeed(L_39_)
				end
			end
		end
		L_11_:Wait()
	end
end)()

_G.Test = 1e50

coroutine.wrap(function()
	while true do
		if L_31_ then
			local L_196_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_197_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_196_ ~= nil and L_197_ ~= nil then
				local L_198_ = Vector3["\110\101\119"](L_197_.MoveDirection.X, 0, L_197_.MoveDirection.Z) * L_32_
				L_196_.CFrame = L_196_.CFrame + L_198_
			end
		end
		if L_27_ then
			local L_199_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_30_ == nil then
				L_30_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_30_.Transparency = 1
				L_30_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_30_.Anchored = true
				L_30_.Name = L_20_(25)
			end
			if L_199_ ~= nil then
				L_30_.CFrame = L_199_.CFrame * CFrame["\110\101\119"](0, L_28_ + L_29_, 0)
			end
		end
		if L_36_ then
			local L_200_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_201_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_200_ ~= nil and L_201_ ~= nil then
				L_201_:ChangeState(11)
				L_200_.Velocity = Vector3["\110\101\119"](0, 1e38, 0)
				L_201_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		if L_37_ then
			local L_202_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_203_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_202_ ~= nil and L_203_ ~= nil then
				L_203_:ChangeState(11)
				L_202_.Velocity = Vector3["\110\101\119"](0, 150, 0)
				L_202_.CFrame = CFrame["\110\101\119"](L_202_.Position) * CFrame.Angles(math["\114\97\100"](90), 0, 0)
				L_203_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_12_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_24_ then
			local L_204_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_205_ = L_21_(L_9_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_204_ ~= nil and L_205_ ~= nil then
				if L_26_ ~= nil then
					L_204_.CFrame = L_26_
				end
				L_205_.PlatformStand = true
				local L_206_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_206_.Name = L_20_(25)
				L_206_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_206_.Anchored = true
				L_206_.CFrame = L_204_.CFrame
				L_206_.CanCollide = false
				L_206_.Transparency = 1
				local L_207_ = Instance["\110\101\119"]("\87\101\108\100", L_206_)
				L_207_.Part0 = L_204_
				L_207_.Part1 = L_206_
				if not Typing then
					if L_48_["\87"] then
						L_206_.CFrame = L_206_.CFrame + L_206_.CFrame.lookVector * L_25_
					end
					if L_48_["\83"] then
						L_206_.CFrame = L_206_.CFrame + L_206_.CFrame.lookVector * -L_25_
					end
					if L_48_["\65"] then
						L_206_.CFrame = L_206_.CFrame + L_206_.CFrame.rightVector * -L_25_
					end
					if L_48_["\68"] then
						L_206_.CFrame = L_206_.CFrame + L_206_.CFrame.rightVector * L_25_
					end
				end
				L_206_.CFrame = CFrame["\110\101\119"](L_204_.Position, L_10_.CoordinateFrame.lookVector * 9e9)
				L_26_ = L_204_.CFrame
				L_13_:Wait()
				if L_204_ ~= nil and L_26_ ~= nil then
					L_204_.CFrame = L_26_
				end
				if L_207_ ~= nil then
					L_207_:Destroy()
				end
				if L_206_ ~= nil then
					L_206_:Destroy()
				end
				if L_205_ ~= nil then
					L_205_.PlatformStand = false
				end
			end
		end
		L_13_:Wait()
	end
end)()

table.insert(L_47_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_47_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_47_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_47_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_47_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_47_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_47_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_47_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_47_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_47_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_47_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_47_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_47_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_47_, {
	Command = "\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_47_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_47_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_47_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_47_, {
	Command = "\65\110\105\109\97\116\105\111\110\83\112\101\101\100",
	Description = "\83\101\116\32\121\111\117\114\32\65\110\105\109\97\116\105\111\110\115\32\115\112\101\101\100\32\116\111\n\119\104\97\116\101\118\101\114\32\121\111\117\32\119\97\110\116\32\69\120\97\109\112\108\101\58\32\97\110\105\109\97\116\105\111\110\115\112\101\101\100\32\53"
})

table.insert(L_47_, {
	Command = "\67\97\109\108\111\99\107\80\97\114\116",
	Description = "\83\101\116\115\32\67\97\109\108\111\99\107\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116"
})
table.insert(L_47_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\83\101\116\115\32\70\108\121\83\112\101\101\100\32\116\111\32\100\101\115\105\114\101\100\32\110\117\109\98\101\114"
})

table.insert(L_47_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_47_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_47_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})
table.insert(L_47_, {
	Command = "\85\110\67\97\109\108\111\99\107",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\67\97\109\108\111\99\107\32\99\111\109\109\97\110\100"
})

-- // LOAD TIME END \\ --

L_19_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_19_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
wait(0.5)
L_19_("\74\111\105\110\32\116\104\101\32\100\105\115\99\111\114\100\32\105\102\32\121\111\117\32\119\111\117\108\100\32\108\105\107\101\58\32\100\105\115\99\111\114\100\46\103\103\47\72\119\117\72\120\89\71", "\66\114\105\103\104\116\32\118\105\111\108\101\116")
