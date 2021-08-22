
if not _G.DrPoppaLoaded then
	_G.DrPoppaLoaded = true
else
	return
end

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
local L_9_ = L_2_(game, "\83\99\114\105\112\116\67\111\110\116\101\120\116")

local L_10_ = L_3_.LocalPlayer

local L_11_

local L_12_ = L_4_.RenderStepped
local L_13_ = L_4_.Heartbeat
local L_14_ = L_4_.Stepped

local L_15_ = [[;]]
local L_16_ = Enum.KeyCode.Quote

local L_17_ = Instance["\110\101\119"]("\70\111\108\100\101\114", L_5_)

local L_18_
local L_19_
local L_20_
local L_21_
local L_22_
local L_23_

local L_24_ = true
local L_25_ = true

local L_26_ = false
local L_27_ = 0.5
local L_28_

local L_29_ = false
local L_30_ = -3.5
local L_31_ = 0
local L_32_

local L_33_ = false
local L_34_ = 0.01

local L_35_ = false
local L_36_
local L_37_

local L_38_ = false

local L_39_ = false

local L_40_ = false
local L_41_ = 2

local L_42_ = false
local L_43_
local L_44_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_45_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_46_ = {}
local L_47_ = {}
local L_48_ = {}
local L_49_ = {}

local L_50_ = {
	["\87"] = false,
	["\65"] = false,
	["\83"] = false,
	["\68"] = false,
	["\81"] = false,
	["\69"] = false,
}

for L_59_forvar1 = 1, 255 do
	table.insert(L_46_, string.char(L_59_forvar1))
end
for L_60_forvar1 = 1, 9 do
	table.insert(L_47_, tostring(L_60_forvar1))
end
for L_61_forvar1 = 65, 90 do
	table.insert(L_48_, string.char(L_61_forvar1))
end

-- // ERROR SPY THING? \\ --

L_9_.Error:Connect(function(L_62_arg1, L_63_arg2)
	if string.find(L_62_arg1, string.sub(tostring(script), 2, string.len(tostring(script)))) then
		local L_64_ = string.rep("\45", 25)
		L_64_ = tostring(L_62_arg1) .. "\n\n" .. tostring(L_63_arg2)
		if setclipboard then
			setclipboard(L_64_)
			L_20_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\115\101\116\32\116\111\32\121\111\117\114\32\99\108\105\112\98\111\97\114\100\44\32\115\101\110\100\32\116\104\105\115\32\116\111\32\99\104\97\114\108\105\101\35\52\56\49\49", "\82\101\97\108\108\121\32\114\101\100", 5)
		else
			print(L_64_)
			L_20_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\112\114\105\110\116\101\100\32\97\115\32\121\111\117\32\100\111\110\39\116\32\104\97\118\101\32\115\101\116\99\108\105\112\98\111\97\114\100\32\102\117\110\99\116\105\111\110\46", "\82\101\97\108\108\121\32\114\101\100", 5)
		end
	end
end)

L_21_ = function(L_65_arg1)
	local L_66_ = ""
	for L_67_forvar1 = 1, L_65_arg1 do
		L_66_ = L_66_ .. L_46_[math["\114\97\110\100\111\109"](1, #L_46_)]
	end
	return L_66_
end

-- // NOTIFICATION SYSTEM \\ --

local L_51_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_51_.Name = L_21_(25)

local L_52_ = Instance["\110\101\119"]("\70\114\97\109\101", L_51_)
L_52_.Size = UDim2.new(0, 200, 0, 250)
L_52_.Position = UDim2.new(0, 0, 1, -250)
L_52_.BorderSizePixel = 0
L_52_.Transparency = 1

local L_53_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_51_)
L_53_.Size = UDim2.new(0, 0, 0, 25)
L_53_.Position = UDim2.new(1, 0, 1, -295)
L_53_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_53_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_53_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_53_.TextSize = 15
L_53_.Text = ""
L_53_.Transparency = 0
L_53_.Visible = false
L_53_.BorderSizePixel = 2
L_53_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_54_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_53_)
L_54_.Size = UDim2.new(1, 0, 0, 200)
L_54_.Position = UDim2.new(0, 0, 0, 31)
L_54_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_54_.Transparency = 0
L_54_.BorderSizePixel = 2
L_54_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_54_.ScrollBarThickness = 0

L_53_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_19_()
end)

L_53_.FocusLost:Connect(function()
	L_54_:ClearAllChildren()
	L_18_(L_53_.Text)
	L_53_.Text = ""
	L_53_.Size = UDim2.new(0, 0, 0, 25)
	L_53_.Position = UDim2.new(1, 0, 1, -295)
	L_53_.Visible = false
end)

L_20_ = function(L_68_arg1, L_69_arg2, L_70_arg3)
	coroutine.wrap(function()
		if not L_24_ and L_25_ then
			repeat
				L_12_:Wait()
			until L_24_
		end
		if L_24_ and L_25_ then
			repeat
				L_12_:Wait()
			until L_24_ and #L_52_:GetChildren() < 6
			L_24_ = false
			for L_72_forvar1, L_73_forvar2 in next, L_52_:GetChildren() do
				L_73_forvar2:TweenPosition(L_73_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_12_:Wait()
			end
			wait(0.2)
			local L_71_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_52_)
			L_71_.Size = UDim2.new(0, 5 * string.len(L_68_arg1), 0, 35)
			L_71_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_71_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_71_.TextColor = BrickColor.new(L_69_arg2)
			L_71_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_71_.TextScaled = true
			L_71_.Transparency = 0
			L_71_.BorderSizePixel = 2
			L_71_.Text = L_68_arg1
			L_71_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				if L_70_arg3 ~= nil and L_23_(L_70_arg3) == "\110\117\109\98\101\114" then
					wait(5 + L_70_arg3)
				else
					wait(5)
				end
				for L_74_forvar1 = 1, 16 do
					L_71_.Transparency = L_71_.Transparency + 0.1 / 2
					L_12_:Wait()
				end
				L_71_:Destroy()
			end)()
			L_12_:Wait()
			L_24_ = true
		end
	end)()
	return
end

L_23_ = function(L_75_arg1)
	if L_75_arg1 ~= nil then
		local L_76_ = false
		local L_77_ = false
		for L_78_forvar1 = 1, string.len(L_75_arg1) do
			if table.find(L_48_, string.sub(L_75_arg1, L_78_forvar1, L_78_forvar1)) then
				L_76_ = true
			end
			if table.find(L_47_, string.sub(L_75_arg1, L_78_forvar1, L_78_forvar1)) then
				L_77_ = true
			end
		end
		if L_76_ and not L_77_ then
			return "\115\116\114\105\110\103"
		elseif L_77_ and not L_76_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

L_19_ = function()
	L_54_:ClearAllChildren()
	local L_79_ = 0
	for L_80_forvar1, L_81_forvar2 in next, L_49_ do
		local L_82_ = string.split(L_81_forvar2.Command, "\47")
		for L_83_forvar1 = 1, #L_82_ do
			if string.lower(L_53_.Text) == string.lower(string.sub(L_82_[L_83_forvar1], 1, string.len(L_53_.Text))) and L_22_(L_54_, L_81_forvar2.Command, "\70\105\110\100") == nil then
				local L_84_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_54_)
				L_84_.Size = UDim2.new(1, -10, 0, 25)
				L_84_.Name = L_81_forvar2.Command
				if L_79_ == 0 then
					L_84_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_84_.Position = UDim2.new(0, 5, 0, 30 * L_79_) + UDim2.new(0, 0, 0, 5)
				end
				L_84_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_84_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_84_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_84_.TextSize = 15
				L_84_.Text = L_81_forvar2.Command
				L_84_.Transparency = 0
				L_84_.BorderSizePixel = 0
				L_84_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_85_ = Instance["\110\101\119"]("\70\114\97\109\101", L_53_)
				L_85_.Size = UDim2.new(0, 350, 0, 200)
				L_85_.Position = UDim2.new(0, -356, 0, 0)
				L_85_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_85_.Transparency = 0
				L_85_.BorderSizePixel = 2
				L_85_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_85_.Visible = false

				local L_86_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_85_)
				L_86_.Size = UDim2.new(0, 330, 0, 185)
				L_86_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_86_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_86_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_86_.TextSize = 18
				L_86_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_86_.TextScaled = false
				L_86_.Transparency = 0
				L_86_.BorderSizePixel = 2
				L_86_.Text = L_81_forvar2.Description
				L_86_.TextYAlignment = Enum.TextYAlignment.Top
				L_86_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_84_.MouseEnter:Connect(function()
					L_85_.Visible = true
					for L_87_forvar1 = 1, 20 do
						if not L_85_.Visible then
							break
						elseif L_87_forvar1 == 15 then
							L_85_.Visible = false
						end
						wait(1)
					end
				end)
				L_84_.MouseLeave:Connect(function()
					L_85_.Visible = false
				end)

				L_79_ = L_79_ + 1
				L_54_.CanvasSize = L_54_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_79_ < 7 then
		L_54_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

local function L_55_func(L_88_arg1)
	local L_89_ = {}
	if L_88_arg1 == "\111\116\104\101\114\115" then
		for L_90_forvar1, L_91_forvar2 in next, L_3_:GetPlayers() do
			if L_91_forvar2 ~= L_10_ then
				table.insert(L_89_, L_91_forvar2)
			end
		end
	elseif L_88_arg1 == "\97\108\108" then
		for L_92_forvar1, L_93_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_89_, L_93_forvar2)
		end
	elseif L_88_arg1 == "\109\101" then
		table.insert(L_89_, L_10_)
	else
		for L_94_forvar1, L_95_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_95_forvar2)), 1, string.len(L_88_arg1)) == L_88_arg1 then
				table.insert(L_89_, L_95_forvar2)
			end
		end
	end
	if #L_89_ == 0 then
		L_20_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_89_
end

L_22_ = function(L_96_arg1, L_97_arg2, L_98_arg3, L_99_arg4)
	if L_96_arg1 ~= nil and L_97_arg2 ~= nil then
		if L_98_arg3 == "\70\105\110\100" then
			local L_100_ = L_96_arg1:FindFirstChildOfClass(L_97_arg2)
			if not L_100_ then
				L_100_ = L_96_arg1:FindFirstChild(L_97_arg2)
			end
			if L_100_ then
				return L_100_
			end
		elseif L_98_arg3 == "\87\97\105\116" then
			local L_101_
			if L_99_arg4 ~= nil then
				L_96_arg1:WaitForChild(L_97_arg2, L_99_arg4)
			else
				L_101_ = L_96_arg1:WaitForChild(L_97_arg2, 9e9)
			end
			if L_101_ then
				return L_101_
			end
		end
	end
	return
end

local function L_56_func(L_102_arg1)
	if L_102_arg1 ~= nil then
		local L_103_ = L_22_(L_102_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_103_ ~= nil then
			return L_103_.RigType
		end
	end
	return
end

local function L_57_func(L_104_arg1, L_105_arg2)
	if L_22_(L_17_, tostring(L_105_arg2), "\70\105\110\100") == nil then
		local L_106_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_17_)
		local L_107_ = Instance["\110\101\119"]("\70\114\97\109\101", L_106_)
		local L_108_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_106_)

		L_106_.Name = tostring(L_105_arg2)
		L_106_.Adornee = L_104_arg1
		L_106_.AlwaysOnTop = true
		L_106_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_106_.Size = UDim2.new(0, 5, 0, 5)

		L_107_.Name = "\68\79\84"
		L_107_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_107_.BackgroundTransparency = 0.3
		L_107_.BorderSizePixel = 0
		L_107_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_107_.Size = UDim2.new(2, 0, 2, 0)
		L_107_.Visible = true
		L_107_.ZIndex = 10

		L_108_.Name = "\78\65\77\69"
		L_108_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_108_.BackgroundTransparency = 1
		L_108_.BorderSizePixel = 0
		L_108_.Position = UDim2.new(0, 0, 0, -40)
		L_108_.Size = UDim2.new(1, 0, 10, 0)
		L_108_.Visible = true
		L_108_.ZIndex = 10
		L_108_.Font = "\65\114\105\97\108\66\111\108\100"
		L_108_.FontSize = "\83\105\122\101\49\52"
		L_108_.Text = string.upper(tostring(L_105_arg2))
		L_108_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_104_arg1.Changed:Connect(function(L_109_arg1)
			if L_104_arg1 == nil and L_106_ ~= nil then
				L_106_:Destroy()
			end
			if tostring(L_109_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_109_arg1) == "\80\97\114\101\110\116" and L_106_ ~= nil then
				L_106_:Destroy()
			end
		end) 
	end
end

local function L_58_func(L_110_arg1)
	local L_111_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_111_ ~= nil and L_110_arg1[3] ~= nil then
		local L_112_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_112_.Name = L_21_(25)
		L_112_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_112_.Anchored = true
		L_112_.CFrame = L_111_.CFrame
		L_112_.CanCollide = false
		L_112_.Transparency = 1
		if L_110_arg1[1] == "\80\97\114\116" then
			if L_110_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_113_ = 0
				if L_110_arg1[4] ~= nil and L_110_arg1[4] == "\79\102\102\115\101\116" then
					L_113_ = L_110_arg1[3].Size.Y / 2 + 3
				end
				local L_114_ = Instance["\110\101\119"]("\87\101\108\100", L_112_)
				L_114_.Part0 = L_111_
				L_114_.Part1 = L_112_
				L_112_.CFrame = CFrame["\110\101\119"](L_110_arg1[3].Position) * CFrame["\110\101\119"](0, L_113_, 0)
				L_12_:Wait()
				L_114_:Destroy()
			elseif L_110_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_115_ = 0.4
				if L_110_arg1[4] ~= nil and L_23_(L_110_arg1[4]) == "\110\117\109\98\101\114" then
					L_115_ = L_110_arg1[4]
				end
				repeat
					local L_116_ = Instance["\110\101\119"]("\87\101\108\100", L_112_)
					L_116_.Part0 = L_111_
					L_116_.Part1 = L_112_
					L_112_.CFrame = CFrame["\110\101\119"](L_112_.Position, L_110_arg1[3].Position)
					L_112_.CFrame = L_112_.CFrame + L_112_.CFrame.lookVector * L_115_
					L_12_:Wait()
					L_116_:Destroy()
				until L_112_ == nil or L_116_ == nil or (L_111_.Position - L_110_arg1[3].Position).magnitude < 3.5 or L_10_.Character == nil or L_111_.Parent == nil
			end
		elseif L_110_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_110_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_117_ = Instance["\110\101\119"]("\87\101\108\100", L_112_)
				L_117_.Part0 = L_111_
				L_117_.Part1 = L_112_
				L_112_.CFrame = L_110_arg1[3]
				L_12_:Wait()
				L_117_:Destroy()
			elseif L_110_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_118_ = 0.4
				if L_110_arg1[4] ~= nil and L_23_(L_110_arg1[4]) == "\110\117\109\98\101\114" then
					L_118_ = L_110_arg1[4]
				end
				repeat
					local L_119_ = Instance["\110\101\119"]("\87\101\108\100", L_112_)
					L_119_.Part0 = L_111_
					L_119_.Part1 = L_112_
					L_112_.CFrame = CFrame["\110\101\119"](L_112_.Position, L_110_arg1[3].p)
					L_112_.CFrame = L_112_.CFrame + L_112_.CFrame.lookVector * L_118_
					L_12_:Wait()
					L_119_:Destroy()
				until L_112_ == nil or L_119_ == nil or (L_111_.Position - L_110_arg1[3].p).magnitude < 3.5 or L_10_.Character == nil or L_111_.Parent == nil
			end
		end
		L_112_:Destroy()
	end
end


L_18_ = function(L_120_arg1)
	coroutine.wrap(function()
		if L_120_arg1 ~= nil and string.len(L_120_arg1) > 0 then

			local L_121_ = string.split(L_120_arg1, "\32")
			for L_122_forvar1 = 1, #L_121_ do
				L_121_[L_122_forvar1] = string.lower(L_121_[L_122_forvar1])
			end

			if L_121_[1] == "\119\97\108\107\115\112\101\101\100" or L_121_[1] == "\119\115" or L_121_[1] == "\115\112\101\101\100" and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
				local L_123_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_123_ ~= nil then
					L_123_.WalkSpeed = L_121_[2]
					L_20_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_121_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_121_[1] == "\106\117\109\112\112\111\119\101\114" or L_121_[1] == "\106\112" and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
				local L_124_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_124_ ~= nil then
					L_124_.JumpPower = L_121_[2]
					L_20_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_121_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_121_[1] == "\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_121_[1] == "\97\115" then
				if L_121_[2] == nil then
					L_40_ = not L_40_
					if L_40_ then
						L_20_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_20_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						local L_125_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_125_ ~= nil and L_125_.Health ~= 0 then
							for L_126_forvar1, L_127_forvar2 in next, L_125_:GetPlayingAnimationTracks() do
								L_127_forvar2:AdjustSpeed(1)
							end
						end
						L_20_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_121_[2] ~= nil and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
					L_41_ = L_121_[2]
					L_20_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\86\97\108\117\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\117\110\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_121_[1] == "\117\110\97\115" then
				L_40_ = false
				L_20_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_121_[1] == "\118\115" then
				if L_121_[2] == nil then
					L_33_ = not L_33_
					if L_33_ then
						L_20_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_33_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_20_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						L_20_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_33_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_121_[2] ~= nil and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
					L_34_ = L_121_[2]
					L_20_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_121_[1] == "\117\110\118\115" then
				L_33_ = false
				L_20_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\118\105\101\119" and L_121_[2] ~= nil then
				local L_128_ = L_55_func(L_121_[2])[1]
				if L_128_ ~= nil and L_128_.Character ~= nil then
					L_11_.CameraSubject = L_128_.Character
					L_20_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_128_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\117\110\118\105\101\119" and L_10_.Character ~= nil then
				L_11_.CameraSubject = L_10_.Character
				L_20_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_10_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\103\114\97\118\105\116\121" and L_121_[2] ~= nil and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_121_[2]
				L_20_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\102\108\121" then
				if L_121_[2] == nil then
					L_26_ = not L_26_
					L_28_ = nil
					L_20_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_26_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_121_[2] ~= nil and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
					L_27_ = L_121_[2]
					L_20_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_121_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\102\108\121\115\112\101\101\100" and L_23_(L_121_[2]) == "\110\117\109\98\101\114" then
				L_27_ = L_121_[2]
				L_20_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_121_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_121_[1] == "\117\110\102\108\121" then
				L_26_ = false
				L_20_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_26_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\102\108\111\97\116" then
				L_29_ = not L_29_
				if not L_29_ and L_32_ ~= nil then
					L_32_:Destroy()
					L_32_ = nil
				end
				local L_129_ = L_56_func(L_10_)
				if L_129_ ~= nil and L_129_ == Enum.HumanoidRigType.R15 then
					L_30_ = -3.65
				else
					L_30_ = -3.5
				end
				L_20_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_29_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_121_[1] == "\117\110\102\108\111\97\116" then
				L_29_ = false
				if L_32_ ~= nil then
					L_32_:Destroy()
				end
				L_20_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_29_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\119\97\108\107\102\108\105\110\103" or L_121_[1] == "\119\102" then
				L_38_ = not L_38_
				if L_38_ then
					local L_130_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_130_ ~= nil then
						L_130_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_20_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_38_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_38_ then
					local L_131_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_131_ ~= nil then
						L_131_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_20_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_38_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_121_[1] == "\117\110\119\102" then
				L_38_ = false
				local L_132_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_132_ ~= nil then
					L_132_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_20_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_38_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\116\114\97\109\112\111\108\105\110\101" then
				L_39_ = not L_39_
				if L_39_ then
					local L_133_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_133_ ~= nil then
						L_133_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_20_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_39_ then
					local L_134_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_134_ ~= nil then
						L_134_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_20_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\117\110\116\114\97\109\112\111\108\105\110\101" then
				L_39_ = false
				local L_135_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_135_ ~= nil then
					L_135_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_20_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end


			if L_121_[1] == "\114\101\106\111\105\110" or L_121_[1] == "\114\106" then
				if #L_3_:GetPlayers() > 1 then
					L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
					L_20_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				else
					L_7_:Teleport(game.PlaceId)
					L_20_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_121_[1] == "\99\97\109\108\111\99\107" or L_121_[1] == "\99\108" then
				if L_121_[2] ~= nil then
					local L_136_ = L_55_func(L_121_[2])[1]
					if L_136_ ~= nil then
						L_42_ = true
						L_43_ = tostring(L_136_)
						L_20_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_43_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_44_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_42_ = not L_42_
					L_20_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_121_[1] == "\117\110\99\97\109\108\111\99\107" or L_121_[1] == "\117\110\99\108" then
				L_42_ = false
				L_43_ = nil
				L_20_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_121_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_121_[1] == "\99\108\112\97\114\116" and L_121_[2] ~= nil then
				L_44_ = L_121_[2]
				L_20_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_44_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\100\105\101" then
				local L_137_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_137_ ~= nil then
					L_137_:ChangeState(15)
				end
			end

			if L_121_[1] == "\102\108\105\110\103" then
				local L_138_ = L_55_func(L_121_[2])
				for L_139_forvar1 = 1, #L_138_ do
					if L_138_[L_139_forvar1] ~= nil then
						local L_140_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_141_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						local L_142_ = L_22_(L_138_[L_139_forvar1].Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_143_ = L_22_(L_138_[L_139_forvar1].Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_140_ ~= nil and L_141_ ~= nil and L_141_.Health ~= 0 and L_142_ ~= nil and L_143_ ~= nil and L_143_.Health ~= 0 then
							local L_144_ = L_140_.CFrame
							local L_145_ = L_142_.Position
							coroutine.wrap(function()
								repeat
									L_140_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
									L_11_.CameraSubject = L_138_[L_139_forvar1].Character
									L_140_.CFrame = CFrame["\110\101\119"](L_142_.Position) + Vector3["\110\101\119"](L_142_.Velocity.X, 0, L_142_.Velocity.Z) / 2.1
									L_13_:Wait()
								until L_10_.Character == nil or L_138_[L_139_forvar1] == nil or L_138_[L_139_forvar1].Character == nil or L_141_ == nil or L_143_ == nil or L_141_.Health == 0 or L_143_.Health == 0 or (L_142_.Position - L_145_).magnitude > 100
								if L_10_.Character ~= nil then
									L_11_.CameraSubject = L_10_.Character
									L_18_("\100\105\101")
								end
							end)()
						end
					end
				end
			end

			if L_121_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_121_[1] == "\116\102" then
				local L_146_ = L_55_func(L_121_[2])[1]
				if L_146_ ~= nil then
					local L_147_ = L_22_(L_146_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_147_ == nil then
						L_147_ = L_22_(L_146_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_148_ = L_22_(L_10_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_148_ == nil then
						L_148_ = L_22_(L_10_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_149_ = L_22_(L_10_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_148_ ~= nil and L_149_ ~= nil and L_147_ ~= nil then
						L_35_ = true
						L_36_ = L_149_.Grip
						L_37_ = L_149_
						L_20_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_146_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_149_.Parent = L_10_.Backpack
								local L_150_ = L_22_(L_149_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_150_ ~= nil then
									L_150_.Massless = true
								end
								local L_151_ = L_148_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_149_.Grip = L_151_:toObjectSpace(L_147_.CFrame):inverse()
								L_149_.Parent = L_10_.Character
								L_12_:Wait()
							until not L_35_ or L_149_ == nil or L_150_ == nil or L_10_.Character == nil or L_147_ == nil
							L_35_ = false
							if L_149_ ~= nil then
								L_149_.Parent = L_10_.Backpack
								L_149_.Grip = L_36_
								L_149_.Parent = L_10_.Character
							end
						end)()
					end
				end
			end
			if L_121_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_121_[1] == "\117\110\116\102" then
				L_35_ = false
				if L_37_ ~= nil and L_36_ ~= nil then
					L_37_.Parent = L_10_.Backpack
					L_37_.Grip = L_36_
					L_37_.Parent = L_10_.Character
					L_20_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_121_[1] == "\114\101\115\112\97\119\110" or L_121_[1] == "\114\101" and L_10_.Character ~= nil then
				local L_152_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_152_ ~= nil then
					L_18_("\100\105\101")
					if L_10_.Character ~= nil then
						L_10_.Character:ClearAllChildren()
					end
					local L_153_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_10_.Character = L_153_
					L_12_:Wait()
					L_10_.Character = L_10_.Character
					L_153_:Destroy()
					L_20_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_121_[1] == "\114\101\102\114\101\115\104" then
				local L_154_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_154_ ~= nil then
					local L_155_ = L_154_.CFrame
					local L_156_ = L_11_.CoordinateFrame
					L_18_("\114\101\115\112\97\119\110")
					L_10_.CharacterAdded:Wait()
					L_11_.CoordinateFrame = L_156_
					L_154_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_154_ ~= nil then
						L_154_.CFrame = L_155_
					end
				end
				L_20_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_121_[1] == "\101\115\112" then
				if L_121_[2] ~= nil then
					local L_157_ = L_55_func(L_121_[2])
					for L_158_forvar1 = 1, #L_157_ do
						if L_157_[L_158_forvar1] ~= nil then
							local L_159_ = L_22_(L_157_[L_158_forvar1].Character, "\72\101\97\100", "\87\97\105\116")
							if L_159_ ~= nil then
								L_57_func(L_159_, tostring(L_157_[L_158_forvar1]))
							end
						end
					end
				else
					EspEnabled = not EspEnabled
					if EspEnabled then
						for L_160_forvar1, L_161_forvar2 in next, L_3_:GetPlayers() do
							if L_161_forvar2 ~= L_10_ then
								local L_162_ = L_22_(L_161_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
								if L_162_ ~= nil then
									L_57_func(L_162_, tostring(L_161_forvar2))
								end
							end
						end
						L_20_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					elseif not EspEnabled then
						L_17_:ClearAllChildren()
						L_20_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				end
			end

			if L_121_[1] == "\117\110\101\115\112" then
				if L_121_[2] ~= nil then
					local L_163_ = L_55_func(L_121_[2])
					for L_164_forvar1 = 1, #L_163_ do
						if L_163_[L_164_forvar1] ~= nil then
							local L_165_ = L_22_(L_17_, tostring(L_163_[L_164_forvar1]), "\70\105\110\100")
							if L_165_ ~= nil then
								L_165_:Destroy()
								L_20_(tostring(L_163_[L_164_forvar1]) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
							end
						end
					end
				else
					EspEnabled = false
					L_17_:ClearAllChildren()
					L_20_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_121_[1] == "\115\101\114\118\101\114" and L_121_[2] ~= nil then
				coroutine.wrap(function()
					local L_166_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_121_[2] == "\104\111\112" then
						local L_167_ = {}
						for L_168_forvar1, L_169_forvar2 in next, L_166_ do
							if type(L_169_forvar2) == "\116\97\98\108\101" and L_169_forvar2.maxPlayers > L_169_forvar2.playing and L_169_forvar2.id ~= game.JobId then
								table.insert(L_167_, L_169_forvar2.id)
							end
						end
						if #L_167_ > 0 then
							L_20_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_20_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_121_[2] == "\98\105\103" then
						local L_170_ = 0
						local L_171_
						for L_172_forvar1, L_173_forvar2 in next, L_166_ do
							if L_173_forvar2.playing > L_170_ and L_173_forvar2.maxPlayers > L_173_forvar2.playing then
								L_170_ = L_173_forvar2.playing
								L_171_ = L_173_forvar2.id
							end
						end
						if L_171_ ~= nil then
							if L_171_ == game.JobId then
								L_20_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_20_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_171_)
							end
						elseif L_171_ == nil then
							L_20_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_121_[2] == "\112\105\110\103" then
						local L_174_ = 9e9
						local L_175_
						for L_176_forvar1, L_177_forvar2 in next, L_166_ do
							if L_177_forvar2.ping < L_174_ and L_177_forvar2.maxPlayers > L_177_forvar2.playing then
								L_174_ = L_177_forvar2.ping
								L_175_ = L_177_forvar2.id
							end
						end
						if L_175_ ~= nil then
							if L_175_ == game.JobId then
								L_20_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_20_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_175_)
							end
						elseif L_175_ == nil then
							L_20_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_121_[1] == "\116\112" or L_121_[1] == "\116\101\108\101\112\111\114\116" or L_121_[1] == "\116\111" and L_121_[2] ~= nil then
				local L_178_ = L_55_func(L_121_[2])
				for L_179_forvar1 = 1, #L_178_ do
					if L_178_[L_179_forvar1] ~= nil then
						local L_180_ = L_22_(L_178_[L_179_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_180_ == nil then
							L_180_ = L_22_(L_178_[L_179_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_180_ ~= nil then
							L_58_func({
								"\80\97\114\116",
								"\73\110\115\116\97\110\116",
								L_180_
							})
						end
					end
				end
			end

			if L_121_[1] == "\98\116\112" or L_121_[1] == "\98\116\101\108\101\112\111\114\116" or L_121_[1] == "\98\116\111" and L_121_[2] ~= nil then
				local L_181_ = L_55_func(L_121_[2])
				for L_182_forvar1 = 1, #L_181_ do
					if L_181_[L_182_forvar1] ~= nil then
						local L_183_ = L_22_(L_181_[L_182_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_183_ == nil then
							L_183_ = L_22_(L_181_[L_182_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_183_ ~= nil then
							L_58_func({
								"\80\97\114\116",
								"\80\114\111\103\114\101\115\115",
								L_183_,
								L_121_[3]
							})
						end
					end
				end
			end

		end
		return
	end)()
end

L_17_.Name = L_21_(25)
L_11_ = L_22_(workspace, "\67\97\109\101\114\97", "\87\97\105\116")

if not game:IsLoaded() then
	L_20_("\71\97\109\101\32\105\115\32\115\116\105\108\108\32\108\111\97\100\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
	game.Loaded:Wait()
	L_20_("\71\97\109\101\32\108\111\97\100\101\100\33", "\76\105\109\101\32\103\114\101\101\110")
end

for L_184_forvar1, L_185_forvar2 in next, L_3_:GetPlayers() do
	if L_185_forvar2 ~= L_10_ then
		L_185_forvar2.CharacterAdded:Connect(function(L_186_arg1)
			if EspEnabled then
				local L_187_ = L_22_(L_186_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_187_ ~= nil then
					L_57_func(L_187_, tostring(L_185_forvar2))
				end
			end
		end)
	end
end

L_3_.PlayerAdded:Connect(function(L_188_arg1)
	L_188_arg1.CharacterAdded:Connect(function(L_189_arg1)
		if EspEnabled then
			local L_190_ = L_22_(L_189_arg1, "\72\101\97\100", "\87\97\105\116")
			if L_190_ ~= nil then
				L_57_func(L_190_, tostring(L_188_arg1))
			end
		end
	end)
	if EspEnabled then
		local L_191_ = L_22_(L_188_arg1.Character, "\72\101\97\100", "\87\97\105\116")
		if L_191_ ~= nil then
			L_57_func(L_191_, tostring(L_188_arg1))
		end
	end
end)

L_3_.PlayerRemoving:Connect(function(L_192_arg1)
	local L_193_ = L_22_(L_17_, tostring(L_192_arg1), "\70\105\110\100")
	if L_193_ ~= nil then
		L_193_:Destroy()
	end
end)

L_10_.Chatted:Connect(function(L_194_arg1)
	if string.sub(string.lower(L_194_arg1), 1, string.len(L_15_)) == string.lower(L_15_) then
		L_18_(string.sub(L_194_arg1, string.len(L_15_) + 1, string.len(L_194_arg1)))
	end
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_195_arg1, L_196_arg2)
	if L_196_arg2 then
		Typing = true
	elseif not L_196_arg2 then
		Typing = false
		if L_195_arg1.KeyCode == Enum.KeyCode.W then
			L_50_["\87"] = true
		end
		if L_195_arg1.KeyCode == Enum.KeyCode.A then
			L_50_["\65"] = true
		end
		if L_195_arg1.KeyCode == Enum.KeyCode.S then
			L_50_["\83"] = true
		end
		if L_195_arg1.KeyCode == Enum.KeyCode.D then
			L_50_["\68"] = true
		end
		if L_195_arg1.KeyCode == Enum.KeyCode.Q then
			L_50_["\81"] = true
			if L_29_ then
				L_31_ = 0.5
			end
		end
		if L_195_arg1.KeyCode == Enum.KeyCode.E then
			L_50_["\69"] = true
			if L_29_ then
				L_31_ = -0.5
			end
		end
		if L_195_arg1.KeyCode == L_16_ and not CmdBarTweening then
			L_19_()
			CmdBarTweening = true
			L_53_.Size = UDim2.new(0, 0, 0, 25)
			L_53_.Position = UDim2.new(1, 0, 1, -295)
			L_53_.Visible = true
			L_53_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_53_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_12_:Wait()
			L_53_:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
	end
end)

L_6_.InputEnded:Connect(function(L_197_arg1, L_198_arg2)
	if L_197_arg1.KeyCode == Enum.KeyCode.W then
		L_50_["\87"] = false
	end
	if L_197_arg1.KeyCode == Enum.KeyCode.A then
		L_50_["\65"] = false
	end
	if L_197_arg1.KeyCode == Enum.KeyCode.S then
		L_50_["\83"] = false
	end
	if L_197_arg1.KeyCode == Enum.KeyCode.D then
		L_50_["\68"] = false
	end
	if L_197_arg1.KeyCode == Enum.KeyCode.Q then
		L_50_["\81"] = false
		if L_29_ then
			L_31_ = 0
		end
	end
	if L_197_arg1.KeyCode == Enum.KeyCode.E then
		L_50_["\69"] = false
		if L_29_ then
			L_31_ = 0
		end
	end
	if L_198_arg2 then
		Typing = true
	elseif not L_198_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_42_ and L_43_ ~= nil then
			local L_199_ = {}
			local L_200_ = L_22_(L_3_, L_43_, "\70\105\110\100")
			local L_201_
			if L_200_ ~= nil and L_200_.Character ~= nil then
				for L_202_forvar1, L_203_forvar2 in next, L_200_.Character:GetChildren() do
					if L_203_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_203_forvar2)) == string.lower(L_44_) then
						L_201_ = L_203_forvar2
						break
					end
				end
				if L_201_ ~= nil then
					L_11_.CoordinateFrame = CFrame["\110\101\119"](L_11_.CoordinateFrame.p, L_201_.Position)
				end
			end
		end
		if L_40_ then
			local L_204_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_204_ ~= nil and L_204_.Health ~= 0 then
				for L_205_forvar1, L_206_forvar2 in next, L_204_:GetPlayingAnimationTracks() do
					L_206_forvar2:AdjustSpeed(L_41_)
				end
			end
		end
		L_12_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_33_ then
			local L_207_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_208_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_207_ ~= nil and L_208_ ~= nil then
				local L_209_ = Vector3["\110\101\119"](L_208_.MoveDirection.X, 0, L_208_.MoveDirection.Z) * L_34_
				L_207_.CFrame = L_207_.CFrame + L_209_
			end
		end
		if L_29_ then
			local L_210_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_32_ == nil then
				L_32_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_32_.Transparency = 1
				L_32_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_32_.Anchored = true
				L_32_.Name = L_21_(25)
			end
			if L_210_ ~= nil then
				L_32_.CFrame = L_210_.CFrame * CFrame["\110\101\119"](0, L_30_ + L_31_, 0)
			end
		end
		if L_38_ then
			local L_211_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_212_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_211_ ~= nil and L_212_ ~= nil then
				L_212_:ChangeState(11)
				L_211_.Velocity = Vector3["\110\101\119"](0, 1e38, 0)
				L_212_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		if L_39_ then
			local L_213_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_214_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_213_ ~= nil and L_214_ ~= nil then
				L_214_:ChangeState(11)
				L_213_.Velocity = Vector3["\110\101\119"](0, 150, 0)
				L_213_.CFrame = CFrame["\110\101\119"](L_213_.Position) * CFrame.Angles(math["\114\97\100"](90), 0, 0)
				L_214_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_13_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_26_ then
			local L_215_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_216_ = L_22_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_215_ ~= nil and L_216_ ~= nil then
				if L_28_ ~= nil then
					L_215_.CFrame = L_28_
				end
				L_216_.PlatformStand = true
				local L_217_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_217_.Name = L_21_(25)
				L_217_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_217_.Anchored = true
				L_217_.CFrame = L_215_.CFrame
				L_217_.CanCollide = false
				L_217_.Transparency = 1
				local L_218_ = Instance["\110\101\119"]("\87\101\108\100", L_217_)
				L_218_.Part0 = L_215_
				L_218_.Part1 = L_217_
				if not Typing then
					if L_50_["\87"] then
						L_217_.CFrame = L_217_.CFrame + L_217_.CFrame.lookVector * L_27_
					end
					if L_50_["\83"] then
						L_217_.CFrame = L_217_.CFrame + L_217_.CFrame.lookVector * -L_27_
					end
					if L_50_["\65"] then
						L_217_.CFrame = L_217_.CFrame + L_217_.CFrame.rightVector * -L_27_
					end
					if L_50_["\68"] then
						L_217_.CFrame = L_217_.CFrame + L_217_.CFrame.rightVector * L_27_
					end
				end
				L_217_.CFrame = CFrame["\110\101\119"](L_215_.Position, L_11_.CoordinateFrame.lookVector * 9e9)
				L_28_ = L_215_.CFrame
				L_14_:Wait()
				if L_215_ ~= nil and L_28_ ~= nil then
					L_215_.CFrame = L_28_
				end
				if L_218_ ~= nil then
					L_218_:Destroy()
				end
				if L_217_ ~= nil then
					L_217_:Destroy()
				end
				if L_216_ ~= nil then
					L_216_.PlatformStand = false
				end
			end
		end
		L_14_:Wait()
	end
end)()

table.insert(L_49_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_49_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_49_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_49_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_49_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_49_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_49_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_49_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_49_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_49_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_49_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_49_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_49_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_49_, {
	Command = "\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_49_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_49_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_49_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_49_, {
	Command = "\65\110\105\109\97\116\105\111\110\83\112\101\101\100",
	Description = "\83\101\116\32\121\111\117\114\32\65\110\105\109\97\116\105\111\110\115\32\115\112\101\101\100\32\116\111\n\97\32\115\112\101\99\105\102\105\99\32\115\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\97\110\105\109\97\116\105\111\110\115\112\101\101\100\32\53"
})
table.insert(L_49_, {
	Command = "\86\105\101\119",
	Description = "\86\105\101\119\32\115\111\109\101\111\110\101\115\32\99\104\97\114\97\99\116\101\114\n\n\69\120\97\109\112\108\101\58\32\118\105\101\119\32\98\117\105\108\100\101\114\109\97\110"
})

table.insert(L_49_, {
	Command = "\67\97\109\108\111\99\107\80\97\114\116",
	Description = "\83\101\116\115\32\67\97\109\108\111\99\107\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116"
})
table.insert(L_49_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\83\101\116\115\32\70\108\121\83\112\101\101\100\32\116\111\32\100\101\115\105\114\101\100\32\110\117\109\98\101\114"
})

table.insert(L_49_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_49_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_49_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})
table.insert(L_49_, {
	Command = "\85\110\67\97\109\108\111\99\107",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\67\97\109\108\111\99\107\32\99\111\109\109\97\110\100"
})
table.insert(L_49_, {
	Command = "\85\110\86\105\101\119",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\86\105\101\119\32\99\111\109\109\97\110\100"
})

-- // LOAD TIME END \\ --

L_20_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_20_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_20_("\74\111\105\110\32\116\104\101\32\100\105\115\99\111\114\100\32\105\102\32\121\111\117\32\119\111\117\108\100\32\108\105\107\101\58\32\100\105\115\99\111\114\100\46\103\103\47\72\119\117\72\120\89\71", "\66\114\105\103\104\116\32\118\105\111\108\101\116")
