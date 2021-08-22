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
local L_11_ = L_10_:GetMouse()

local L_12_

local L_13_ = L_4_.RenderStepped
local L_14_ = L_4_.Heartbeat
local L_15_ = L_4_.Stepped

local L_16_ = [[;]]
local L_17_ = Enum.KeyCode.Quote

local L_18_ = Instance["\110\101\119"]("\70\111\108\100\101\114", L_5_)

local L_19_
local L_20_
local L_21_
local L_22_
local L_23_
local L_24_

local L_25_ = true
local L_26_ = true

local L_27_ = false
local L_28_ = 0.5
local L_29_

local L_30_ = false
local L_31_ = -3.5
local L_32_ = 0
local L_33_

local L_34_ = false
local L_35_ = 0.01

local L_36_ = false
local L_37_
local L_38_

local L_39_ = false

local L_40_ = false

local L_41_ = false
local L_42_ = 2

local L_43_ = false
local L_44_
local L_45_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_46_ = false
local L_47_ = false
local L_48_
local L_49_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_50_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_51_ = {}
local L_52_ = {}
local L_53_ = {}
local L_54_ = {}
local L_55_ = {}
local L_56_ = {}

for L_67_forvar1 = 1, 255 do
	table.insert(L_51_, string.char(L_67_forvar1))
end
for L_68_forvar1 = 1, 9 do
	table.insert(L_52_, tostring(L_68_forvar1))
end
for L_69_forvar1 = 65, 90 do
	table.insert(L_53_, string.char(L_69_forvar1))
end

-- // ERROR SPY THING? \\ --

L_9_.Error:Connect(function(L_70_arg1, L_71_arg2)
	if string.find(L_70_arg1, string.sub(tostring(script), 2, string.len(tostring(script)))) then
		local L_72_ = string.rep("\45", 25)
		L_72_ = tostring(L_70_arg1) .. "\n\n" .. tostring(L_71_arg2)
		if setclipboard then
			setclipboard(L_72_)
			L_21_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\115\101\116\32\116\111\32\121\111\117\114\32\99\108\105\112\98\111\97\114\100\44\32\115\101\110\100\32\116\104\105\115\32\116\111\32\99\104\97\114\108\105\101\35\52\56\49\49", "\82\101\97\108\108\121\32\114\101\100", 5)
		else
			print(L_72_)
			L_21_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\112\114\105\110\116\101\100\32\97\115\32\121\111\117\32\100\111\110\39\116\32\104\97\118\101\32\115\101\116\99\108\105\112\98\111\97\114\100\32\102\117\110\99\116\105\111\110\46", "\82\101\97\108\108\121\32\114\101\100", 5)
		end
	end
end)

L_22_ = function(L_73_arg1)
	local L_74_ = ""
	for L_75_forvar1 = 1, L_73_arg1 do
		L_74_ = L_74_ .. L_51_[math["\114\97\110\100\111\109"](1, #L_51_)]
	end
	return L_74_
end

-- // NOTIFICATION SYSTEM \\ --

local L_57_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_57_.Name = L_22_(25)

local L_58_ = Instance["\110\101\119"]("\70\114\97\109\101", L_57_)
L_58_.Size = UDim2.new(0, 200, 0, 250)
L_58_.Position = UDim2.new(0, 0, 1, -250)
L_58_.BorderSizePixel = 0
L_58_.Transparency = 1

local L_59_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_57_)
L_59_.Size = UDim2.new(0, 0, 0, 25)
L_59_.Position = UDim2.new(1, 0, 1, -295)
L_59_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_59_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_59_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_59_.TextSize = 15
L_59_.Text = ""
L_59_.Transparency = 0
L_59_.Visible = false
L_59_.BorderSizePixel = 2
L_59_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_60_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_59_)
L_60_.Size = UDim2.new(1, 0, 0, 200)
L_60_.Position = UDim2.new(0, 0, 0, 31)
L_60_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_60_.Transparency = 0
L_60_.BorderSizePixel = 2
L_60_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_60_.ScrollBarThickness = 0

L_59_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_20_()
end)

L_59_.FocusLost:Connect(function()
	L_60_:ClearAllChildren()
	L_19_(L_59_.Text)
	L_59_.Text = ""
	L_59_.Size = UDim2.new(0, 0, 0, 25)
	L_59_.Position = UDim2.new(1, 0, 1, -295)
	L_59_.Visible = false
end)

L_21_ = function(L_76_arg1, L_77_arg2, L_78_arg3)
	coroutine.wrap(function()
		if not L_25_ and L_26_ then
			repeat
				L_13_:Wait()
			until L_25_
		end
		if L_25_ and L_26_ then
			repeat
				L_13_:Wait()
			until L_25_ and #L_58_:GetChildren() < 6
			L_25_ = false
			for L_80_forvar1, L_81_forvar2 in next, L_58_:GetChildren() do
				L_81_forvar2:TweenPosition(L_81_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_13_:Wait()
			end
			wait(0.2)
			local L_79_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_58_)
			L_79_.Size = UDim2.new(0, 5 * string.len(L_76_arg1), 0, 35)
			L_79_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_79_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_79_.TextColor = BrickColor.new(L_77_arg2)
			L_79_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_79_.TextScaled = true
			L_79_.Transparency = 0
			L_79_.BorderSizePixel = 2
			L_79_.Text = L_76_arg1
			L_79_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				if L_78_arg3 ~= nil and L_24_(L_78_arg3) == "\110\117\109\98\101\114" then
					wait(5 + L_78_arg3)
				else
					wait(5)
				end
				for L_82_forvar1 = 1, 16 do
					L_79_.Transparency = L_79_.Transparency + 0.1 / 2
					L_13_:Wait()
				end
				L_79_:Destroy()
			end)()
			L_13_:Wait()
			L_25_ = true
		end
	end)()
	return
end

local function L_61_func(L_83_arg1, L_84_arg2)
	if L_84_arg2 then
		table.insert(L_56_, L_83_arg1)
	elseif not L_84_arg2 then
		for L_85_forvar1 = 1, #L_56_ do
			if L_56_[L_85_forvar1] == L_83_arg1 then
				table.remove(L_56_, L_85_forvar1)
			end
		end
	end
end

L_24_ = function(L_86_arg1)
	if L_86_arg1 ~= nil then
		local L_87_ = false
		local L_88_ = false
		for L_89_forvar1 = 1, string.len(L_86_arg1) do
			if table.find(L_53_, string.sub(L_86_arg1, L_89_forvar1, L_89_forvar1)) then
				L_87_ = true
			end
			if table.find(L_52_, string.sub(L_86_arg1, L_89_forvar1, L_89_forvar1)) then
				L_88_ = true
			end
		end
		if L_87_ and not L_88_ then
			return "\115\116\114\105\110\103"
		elseif L_88_ and not L_87_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

L_20_ = function()
	L_60_:ClearAllChildren()
	local L_90_ = 0
	for L_91_forvar1, L_92_forvar2 in next, L_54_ do
		local L_93_ = string.split(L_92_forvar2.Command, "\47")
		for L_94_forvar1 = 1, #L_93_ do
			if string.lower(L_59_.Text) == string.lower(string.sub(L_93_[L_94_forvar1], 1, string.len(L_59_.Text))) and L_23_(L_60_, L_92_forvar2.Command, "\70\105\110\100") == nil then
				local L_95_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_60_)
				L_95_.Size = UDim2.new(1, -10, 0, 25)
				L_95_.Name = L_92_forvar2.Command
				if L_90_ == 0 then
					L_95_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_95_.Position = UDim2.new(0, 5, 0, 30 * L_90_) + UDim2.new(0, 0, 0, 5)
				end
				L_95_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_95_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_95_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_95_.TextSize = 15
				L_95_.Text = L_92_forvar2.Command
				L_95_.Transparency = 0
				L_95_.BorderSizePixel = 0
				L_95_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_96_ = Instance["\110\101\119"]("\70\114\97\109\101", L_59_)
				L_96_.Size = UDim2.new(0, 350, 0, 200)
				L_96_.Position = UDim2.new(0, -356, 0, 0)
				L_96_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_96_.Transparency = 0
				L_96_.BorderSizePixel = 2
				L_96_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_96_.Visible = false

				local L_97_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_96_)
				L_97_.Size = UDim2.new(0, 330, 0, 185)
				L_97_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_97_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_97_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_97_.TextSize = 18
				L_97_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_97_.TextScaled = false
				L_97_.Transparency = 0
				L_97_.BorderSizePixel = 2
				L_97_.Text = L_92_forvar2.Description
				L_97_.TextYAlignment = Enum.TextYAlignment.Top
				L_97_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_95_.MouseEnter:Connect(function()
					L_96_.Visible = true
					for L_98_forvar1 = 1, 20 do
						if not L_96_.Visible then
							break
						elseif L_98_forvar1 == 15 then
							L_96_.Visible = false
						end
						wait(1)
					end
				end)
				L_95_.MouseLeave:Connect(function()
					L_96_.Visible = false
				end)

				L_90_ = L_90_ + 1
				L_60_.CanvasSize = L_60_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_90_ < 7 then
		L_60_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

local function L_62_func(L_99_arg1)
	local L_100_ = {}
	if L_99_arg1 == "\111\116\104\101\114\115" then
		for L_101_forvar1, L_102_forvar2 in next, L_3_:GetPlayers() do
			if L_102_forvar2 ~= L_10_ then
				table.insert(L_100_, L_102_forvar2)
			end
		end
	elseif L_99_arg1 == "\97\108\108" then
		for L_103_forvar1, L_104_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_100_, L_104_forvar2)
		end
	elseif L_99_arg1 == "\109\101" then
		table.insert(L_100_, L_10_)
	else
		for L_105_forvar1, L_106_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_106_forvar2)), 1, string.len(L_99_arg1)) == L_99_arg1 then
				table.insert(L_100_, L_106_forvar2)
			end
		end
	end
	if #L_100_ == 0 then
		L_21_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_100_
end

L_23_ = function(L_107_arg1, L_108_arg2, L_109_arg3, L_110_arg4)
	if L_107_arg1 ~= nil and L_108_arg2 ~= nil then
		if L_109_arg3 == "\70\105\110\100" then
			local L_111_ = L_107_arg1:FindFirstChildOfClass(L_108_arg2)
			if not L_111_ then
				L_111_ = L_107_arg1:FindFirstChild(L_108_arg2)
			end
			if L_111_ then
				return L_111_
			end
		elseif L_109_arg3 == "\87\97\105\116" then
			local L_112_
			if L_110_arg4 ~= nil then
				L_107_arg1:WaitForChild(L_108_arg2, L_110_arg4)
			else
				L_112_ = L_107_arg1:WaitForChild(L_108_arg2, 9e9)
			end
			if L_112_ then
				return L_112_
			end
		end
	end
	return
end

local function L_63_func()
	local L_113_ = {}
	local L_114_ = {}
	for L_116_forvar1, L_117_forvar2 in next, L_3_:GetPlayers() do
		if L_117_forvar2 ~= L_10_ then
			local L_118_ = L_117_forvar2.Character:FindFirstChildOfClass("\80\97\114\116")
			local L_119_ = L_23_(L_117_forvar2.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_118_ ~= nil and L_119_ ~= nil and L_119_.Health ~= 0 then
				local L_120_ = (L_118_.Position - L_12_.CoordinateFrame.p).magnitude
				local L_121_ = Ray.new(L_12_.CoordinateFrame.p, (L_11_.Hit.p - L_12_.CoordinateFrame.p).unit * L_120_)
				local L_122_, L_123_ = workspace:FindPartOnRay(L_121_, workspace)
				local L_124_ = math["\102\108\111\111\114"]((L_123_ - L_118_.Position).magnitude)
				L_113_[L_117_forvar2.Name .. tostring(L_116_forvar1)] = {}
				L_113_[L_117_forvar2.Name .. tostring(L_116_forvar1)].dist = L_120_
				L_113_[L_117_forvar2.Name .. tostring(L_116_forvar1)].plr = L_117_forvar2
				L_113_[L_117_forvar2.Name .. tostring(L_116_forvar1)].diff = L_124_
				table.insert(L_114_, L_124_)
			end
		end
	end
	if unpack(L_114_) == nil then
		return
	end
	local L_115_ = math["\102\108\111\111\114"](math["\109\105\110"](unpack(L_114_)))
	if L_115_ > 20 then
		return
	end
	for L_125_forvar1, L_126_forvar2 in next, L_113_ do
		if L_126_forvar2.diff == L_115_ then
			return L_126_forvar2.plr
		end
	end
	return
end

local function L_64_func(L_127_arg1)
	if L_127_arg1 ~= nil then
		local L_128_ = L_23_(L_127_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_128_ ~= nil then
			return L_128_.RigType
		end
	end
	return
end

local function L_65_func(L_129_arg1, L_130_arg2)
	if L_23_(L_18_, tostring(L_130_arg2), "\70\105\110\100") == nil then
		local L_131_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_18_)
		local L_132_ = Instance["\110\101\119"]("\70\114\97\109\101", L_131_)
		local L_133_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_131_)

		L_131_.Name = tostring(L_130_arg2)
		L_131_.Adornee = L_129_arg1
		L_131_.AlwaysOnTop = true
		L_131_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_131_.Size = UDim2.new(0, 5, 0, 5)

		L_132_.Name = "\68\79\84"
		L_132_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_132_.BackgroundTransparency = 0.3
		L_132_.BorderSizePixel = 0
		L_132_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_132_.Size = UDim2.new(2, 0, 2, 0)
		L_132_.Visible = true
		L_132_.ZIndex = 10

		L_133_.Name = "\78\65\77\69"
		L_133_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_133_.BackgroundTransparency = 1
		L_133_.BorderSizePixel = 0
		L_133_.Position = UDim2.new(0, 0, 0, -40)
		L_133_.Size = UDim2.new(1, 0, 10, 0)
		L_133_.Visible = true
		L_133_.ZIndex = 10
		L_133_.Font = "\65\114\105\97\108\66\111\108\100"
		L_133_.FontSize = "\83\105\122\101\49\52"
		L_133_.Text = string.upper(tostring(L_130_arg2))
		L_133_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_129_arg1.Changed:Connect(function(L_134_arg1)
			if L_129_arg1 == nil and L_131_ ~= nil then
				L_131_:Destroy()
			end
			if tostring(L_134_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_134_arg1) == "\80\97\114\101\110\116" and L_131_ ~= nil then
				L_131_:Destroy()
			end
		end) 
	end
end

local function L_66_func(L_135_arg1)
	local L_136_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_136_ ~= nil and L_135_arg1[3] ~= nil then
		local L_137_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_137_.Name = L_22_(25)
		L_137_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_137_.Anchored = true
		L_137_.CFrame = L_136_.CFrame
		L_137_.CanCollide = false
		L_137_.Transparency = 1
		if L_135_arg1[1] == "\80\97\114\116" then
			if L_135_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_138_ = 0
				if L_135_arg1[4] ~= nil and L_135_arg1[4] == "\79\102\102\115\101\116" then
					L_138_ = L_135_arg1[3].Size.Y / 2 + 3
				end
				local L_139_ = Instance["\110\101\119"]("\87\101\108\100", L_137_)
				L_139_.Part0 = L_136_
				L_139_.Part1 = L_137_
				L_137_.CFrame = CFrame["\110\101\119"](L_135_arg1[3].Position) * CFrame["\110\101\119"](0, L_138_, 0)
				L_13_:Wait()
				L_139_:Destroy()
			elseif L_135_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_140_ = 0.4
				if L_135_arg1[4] ~= nil and L_24_(L_135_arg1[4]) == "\110\117\109\98\101\114" then
					L_140_ = L_135_arg1[4]
				end
				repeat
					local L_141_ = Instance["\110\101\119"]("\87\101\108\100", L_137_)
					L_141_.Part0 = L_136_
					L_141_.Part1 = L_137_
					L_137_.CFrame = CFrame["\110\101\119"](L_137_.Position, L_135_arg1[3].Position)
					L_137_.CFrame = L_137_.CFrame + L_137_.CFrame.lookVector * L_140_
					L_13_:Wait()
					L_141_:Destroy()
				until L_137_ == nil or L_141_ == nil or (L_136_.Position - L_135_arg1[3].Position).magnitude < 3.5 or L_10_.Character == nil or L_136_.Parent == nil
			end
		elseif L_135_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_135_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_142_ = Instance["\110\101\119"]("\87\101\108\100", L_137_)
				L_142_.Part0 = L_136_
				L_142_.Part1 = L_137_
				L_137_.CFrame = L_135_arg1[3]
				L_13_:Wait()
				L_142_:Destroy()
			elseif L_135_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_143_ = 0.4
				if L_135_arg1[4] ~= nil and L_24_(L_135_arg1[4]) == "\110\117\109\98\101\114" then
					L_143_ = L_135_arg1[4]
				end
				repeat
					local L_144_ = Instance["\110\101\119"]("\87\101\108\100", L_137_)
					L_144_.Part0 = L_136_
					L_144_.Part1 = L_137_
					L_137_.CFrame = CFrame["\110\101\119"](L_137_.Position, L_135_arg1[3].p)
					L_137_.CFrame = L_137_.CFrame + L_137_.CFrame.lookVector * L_143_
					L_13_:Wait()
					L_144_:Destroy()
				until L_137_ == nil or L_144_ == nil or (L_136_.Position - L_135_arg1[3].p).magnitude < 3.5 or L_10_.Character == nil or L_136_.Parent == nil
			end
		end
		L_137_:Destroy()
	end
end


L_19_ = function(L_145_arg1)
	coroutine.wrap(function()
		if L_145_arg1 ~= nil and string.len(L_145_arg1) > 0 then

			local L_146_ = string.split(L_145_arg1, "\32")
			for L_147_forvar1 = 1, #L_146_ do
				L_146_[L_147_forvar1] = string.lower(L_146_[L_147_forvar1])
			end

			if L_146_[1] == "\119\97\108\107\115\112\101\101\100" or L_146_[1] == "\119\115" or L_146_[1] == "\115\112\101\101\100" and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
				local L_148_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_148_ ~= nil then
					L_148_.WalkSpeed = L_146_[2]
					L_21_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_146_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_146_[1] == "\106\117\109\112\112\111\119\101\114" or L_146_[1] == "\106\112" and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
				local L_149_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_149_ ~= nil then
					L_149_.JumpPower = L_146_[2]
					L_21_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_146_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_146_[1] == "\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_146_[1] == "\97\115" then
				if L_146_[2] == nil then
					L_41_ = not L_41_
					if L_41_ then
						L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_21_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						local L_150_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_150_ ~= nil and L_150_.Health ~= 0 then
							for L_151_forvar1, L_152_forvar2 in next, L_150_:GetPlayingAnimationTracks() do
								L_152_forvar2:AdjustSpeed(1)
							end
						end
						L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_146_[2] ~= nil and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
					L_42_ = L_146_[2]
					L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\86\97\108\117\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\117\110\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_146_[1] == "\117\110\97\115" then
				L_41_ = false
				L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_146_[1] == "\118\115" then
				if L_146_[2] == nil then
					L_34_ = not L_34_
					if L_34_ then
						L_21_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_21_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						L_21_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_146_[2] ~= nil and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
					L_35_ = L_146_[2]
					L_21_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_146_[1] == "\117\110\118\115" then
				L_34_ = false
				L_21_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\118\105\101\119" and L_146_[2] ~= nil then
				local L_153_ = L_62_func(L_146_[2])[1]
				if L_153_ ~= nil and L_153_.Character ~= nil then
					L_12_.CameraSubject = L_153_.Character
					L_21_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_153_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\117\110\118\105\101\119" and L_10_.Character ~= nil then
				L_12_.CameraSubject = L_10_.Character
				L_21_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_10_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\103\114\97\118\105\116\121" and L_146_[2] ~= nil and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_146_[2]
				L_21_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\102\108\121" then
				if L_146_[2] == nil then
					L_27_ = not L_27_
					L_29_ = nil
					L_21_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_146_[2] ~= nil and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
					L_28_ = L_146_[2]
					L_21_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_146_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\102\108\121\115\112\101\101\100" and L_24_(L_146_[2]) == "\110\117\109\98\101\114" then
				L_28_ = L_146_[2]
				L_21_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_146_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_146_[1] == "\117\110\102\108\121" then
				L_27_ = false
				L_21_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\102\108\111\97\116" then
				L_30_ = not L_30_
				if not L_30_ and L_33_ ~= nil then
					L_33_:Destroy()
					L_33_ = nil
				end
				local L_154_ = L_64_func(L_10_)
				if L_154_ ~= nil and L_154_ == Enum.HumanoidRigType.R15 then
					L_31_ = -3.65
				else
					L_31_ = -3.5
				end
				L_21_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_146_[1] == "\117\110\102\108\111\97\116" then
				L_30_ = false
				if L_33_ ~= nil then
					L_33_:Destroy()
				end
				L_21_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\119\97\108\107\102\108\105\110\103" or L_146_[1] == "\119\102" then
				L_39_ = not L_39_
				if L_39_ then
					local L_155_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_155_ ~= nil then
						L_155_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_39_ then
					local L_156_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_156_ ~= nil then
						L_156_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_146_[1] == "\117\110\119\102" then
				L_39_ = false
				local L_157_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_157_ ~= nil then
					L_157_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\116\114\97\109\112\111\108\105\110\101" then
				L_40_ = not L_40_
				if L_40_ then
					local L_158_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_158_ ~= nil then
						L_158_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_40_ then
					local L_159_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_159_ ~= nil then
						L_159_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\117\110\116\114\97\109\112\111\108\105\110\101" then
				L_40_ = false
				local L_160_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_160_ ~= nil then
					L_160_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end


			if L_146_[1] == "\114\101\106\111\105\110" or L_146_[1] == "\114\106" then
				if #L_3_:GetPlayers() > 1 then
					L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
					L_21_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				else
					L_7_:Teleport(game.PlaceId)
					L_21_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_146_[1] == "\97\105\109\98\111\116" or L_146_[1] == "\97\98" then
				L_46_ = not L_46_
				L_21_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_146_[1] == "\117\110\97\105\109\98\111\116" or L_146_[1] == "\117\110\97\98" then
				L_46_ = false
				L_21_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_146_[1] == "\97\105\109\98\111\116\112\97\114\116" or L_146_[1] == "\97\98\112\97\114\116" and L_146_[2] ~= nil then
				L_49_ = L_146_[2]
				L_21_("\65\105\109\98\111\116\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_49_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\99\97\109\108\111\99\107" or L_146_[1] == "\99\108" then
				if L_146_[2] ~= nil then
					local L_161_ = L_62_func(L_146_[2])[1]
					if L_161_ ~= nil then
						L_43_ = true
						L_44_ = tostring(L_161_)
						L_21_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_44_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_45_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_43_ = not L_43_
					L_21_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_146_[1] == "\117\110\99\97\109\108\111\99\107" or L_146_[1] == "\117\110\99\108" then
				L_43_ = false
				L_44_ = nil
				L_21_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_146_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_146_[1] == "\99\108\112\97\114\116" and L_146_[2] ~= nil then
				L_45_ = L_146_[2]
				L_21_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_45_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\100\105\101" then
				local L_162_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_162_ ~= nil then
					L_162_:ChangeState(15)
				end
			end

			if L_146_[1] == "\102\108\105\110\103" then
				local L_163_ = L_62_func(L_146_[2])
				for L_164_forvar1 = 1, #L_163_ do
					if L_163_[L_164_forvar1] ~= nil then
						local L_165_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_166_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						local L_167_ = L_23_(L_163_[L_164_forvar1].Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_168_ = L_23_(L_163_[L_164_forvar1].Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_165_ ~= nil and L_166_ ~= nil and L_166_.Health ~= 0 and L_167_ ~= nil and L_168_ ~= nil and L_168_.Health ~= 0 then
							local L_169_ = L_165_.CFrame
							local L_170_ = L_167_.Position
							coroutine.wrap(function()
								repeat
									L_165_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
									L_12_.CameraSubject = L_163_[L_164_forvar1].Character
									L_165_.CFrame = CFrame["\110\101\119"](L_167_.Position) + Vector3["\110\101\119"](L_167_.Velocity.X, 0, L_167_.Velocity.Z) / 2.1
									L_14_:Wait()
								until L_10_.Character == nil or L_163_[L_164_forvar1] == nil or L_163_[L_164_forvar1].Character == nil or L_166_ == nil or L_168_ == nil or L_166_.Health == 0 or L_168_.Health == 0 or (L_167_.Position - L_170_).magnitude > 100
								if L_10_.Character ~= nil then
									L_12_.CameraSubject = L_10_.Character
									L_19_("\100\105\101")
								end
							end)()
						end
					end
				end
			end

			if L_146_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_146_[1] == "\116\102" then
				local L_171_ = L_62_func(L_146_[2])[1]
				if L_171_ ~= nil then
					local L_172_ = L_23_(L_171_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_172_ == nil then
						L_172_ = L_23_(L_171_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_173_ = L_23_(L_10_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_173_ == nil then
						L_173_ = L_23_(L_10_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_174_ = L_23_(L_10_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_173_ ~= nil and L_174_ ~= nil and L_172_ ~= nil then
						L_36_ = true
						L_37_ = L_174_.Grip
						L_38_ = L_174_
						L_21_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_171_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_174_.Parent = L_10_.Backpack
								local L_175_ = L_23_(L_174_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_175_ ~= nil then
									L_175_.Massless = true
								end
								local L_176_ = L_173_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_174_.Grip = L_176_:toObjectSpace(L_172_.CFrame):inverse()
								L_174_.Parent = L_10_.Character
								L_13_:Wait()
							until not L_36_ or L_174_ == nil or L_175_ == nil or L_10_.Character == nil or L_172_ == nil
							L_36_ = false
							if L_174_ ~= nil then
								L_174_.Parent = L_10_.Backpack
								L_174_.Grip = L_37_
								L_174_.Parent = L_10_.Character
							end
						end)()
					end
				end
			end
			if L_146_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_146_[1] == "\117\110\116\102" then
				L_36_ = false
				if L_38_ ~= nil and L_37_ ~= nil then
					L_38_.Parent = L_10_.Backpack
					L_38_.Grip = L_37_
					L_38_.Parent = L_10_.Character
					L_21_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_146_[1] == "\114\101\115\112\97\119\110" or L_146_[1] == "\114\101" and L_10_.Character ~= nil then
				local L_177_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_177_ ~= nil then
					L_19_("\100\105\101")
					if L_10_.Character ~= nil then
						L_10_.Character:ClearAllChildren()
					end
					local L_178_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_10_.Character = L_178_
					L_13_:Wait()
					L_10_.Character = L_10_.Character
					L_178_:Destroy()
					L_21_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_146_[1] == "\114\101\102\114\101\115\104" then
				local L_179_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_179_ ~= nil then
					local L_180_ = L_179_.CFrame
					local L_181_ = L_12_.CoordinateFrame
					L_19_("\114\101\115\112\97\119\110")
					L_10_.CharacterAdded:Wait()
					L_12_.CoordinateFrame = L_181_
					L_179_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_179_ ~= nil then
						L_179_.CFrame = L_180_
					end
				end
				L_21_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_146_[1] == "\101\115\112" then
				if L_146_[2] ~= nil then
					local L_182_ = L_62_func(L_146_[2])
					for L_183_forvar1 = 1, #L_182_ do
						if L_182_[L_183_forvar1] ~= nil then
							local L_184_ = L_23_(L_182_[L_183_forvar1].Character, "\72\101\97\100", "\87\97\105\116")
							if L_184_ ~= nil then
								L_65_func(L_184_, tostring(L_182_[L_183_forvar1]))
							end
							table.insert(L_55_, tostring(L_182_[L_183_forvar1]))
						end
					end
				else
					EspEnabled = not EspEnabled
					if EspEnabled then
						for L_185_forvar1, L_186_forvar2 in next, L_3_:GetPlayers() do
							if L_186_forvar2 ~= L_10_ then
								local L_187_ = L_23_(L_186_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
								if L_187_ ~= nil then
									L_65_func(L_187_, tostring(L_186_forvar2))
								end
							end
						end
						L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					elseif not EspEnabled then 
						L_18_:ClearAllChildren()
						L_55_ = {}
						L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				end
			end

			if L_146_[1] == "\117\110\101\115\112" then
				if L_146_[2] ~= nil then
					local L_188_ = L_62_func(L_146_[2])
					for L_189_forvar1 = 1, #L_188_ do
						if L_188_[L_189_forvar1] ~= nil then
							local L_190_ = L_23_(L_18_, tostring(L_188_[L_189_forvar1]), "\70\105\110\100")
							if L_190_ ~= nil then
								L_190_:Destroy()
								L_21_(tostring(L_188_[L_189_forvar1]) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
							end
							for L_191_forvar1 = 1, #L_55_ do
								if L_55_[L_191_forvar1] == tostring(L_188_[L_191_forvar1]) then
									table.remove(L_55_, L_191_forvar1)
								end
							end
						end
					end
				else
					EspEnabled = false
					L_18_:ClearAllChildren()
					L_55_ = {}
					L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_146_[1] == "\115\101\114\118\101\114" and L_146_[2] ~= nil then
				coroutine.wrap(function()
					local L_192_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_146_[2] == "\104\111\112" then
						local L_193_ = {}
						for L_194_forvar1, L_195_forvar2 in next, L_192_ do
							if type(L_195_forvar2) == "\116\97\98\108\101" and L_195_forvar2.maxPlayers > L_195_forvar2.playing and L_195_forvar2.id ~= game.JobId then
								table.insert(L_193_, L_195_forvar2.id)
							end
						end
						if #L_193_ > 0 then
							L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_21_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_146_[2] == "\98\105\103" then
						local L_196_ = 0
						local L_197_
						for L_198_forvar1, L_199_forvar2 in next, L_192_ do
							if L_199_forvar2.playing > L_196_ and L_199_forvar2.maxPlayers > L_199_forvar2.playing then
								L_196_ = L_199_forvar2.playing
								L_197_ = L_199_forvar2.id
							end
						end
						if L_197_ ~= nil then
							if L_197_ == game.JobId then
								L_21_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_197_)
							end
						elseif L_197_ == nil then
							L_21_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_146_[2] == "\112\105\110\103" then
						local L_200_ = 9e9
						local L_201_
						for L_202_forvar1, L_203_forvar2 in next, L_192_ do
							if L_203_forvar2.ping < L_200_ and L_203_forvar2.maxPlayers > L_203_forvar2.playing then
								L_200_ = L_203_forvar2.ping
								L_201_ = L_203_forvar2.id
							end
						end
						if L_201_ ~= nil then
							if L_201_ == game.JobId then
								L_21_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_201_)
							end
						elseif L_201_ == nil then
							L_21_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_146_[1] == "\116\112" or L_146_[1] == "\116\101\108\101\112\111\114\116" or L_146_[1] == "\116\111" and L_146_[2] ~= nil then
				local L_204_ = L_62_func(L_146_[2])
				for L_205_forvar1 = 1, #L_204_ do
					if L_204_[L_205_forvar1] ~= nil then
						local L_206_ = L_23_(L_204_[L_205_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_206_ == nil then
							L_206_ = L_23_(L_204_[L_205_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_206_ ~= nil then
							L_66_func({
								"\80\97\114\116",
								"\73\110\115\116\97\110\116",
								L_206_
							})
						end
					end
				end
			end

			if L_146_[1] == "\98\116\112" or L_146_[1] == "\98\116\101\108\101\112\111\114\116" or L_146_[1] == "\98\116\111" and L_146_[2] ~= nil then
				local L_207_ = L_62_func(L_146_[2])
				for L_208_forvar1 = 1, #L_207_ do
					if L_207_[L_208_forvar1] ~= nil then
						local L_209_ = L_23_(L_207_[L_208_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_209_ == nil then
							L_209_ = L_23_(L_207_[L_208_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_209_ ~= nil then
							L_66_func({
								"\80\97\114\116",
								"\80\114\111\103\114\101\115\115",
								L_209_,
								L_146_[3]
							})
						end
					end
				end
			end

		end
		return
	end)()
end

L_18_.Name = L_22_(25)
L_12_ = L_23_(workspace, "\67\97\109\101\114\97", "\87\97\105\116")

if not game:IsLoaded() then
	L_21_("\71\97\109\101\32\105\115\32\115\116\105\108\108\32\108\111\97\100\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
	game.Loaded:Wait()
	L_21_("\71\97\109\101\32\108\111\97\100\101\100\33", "\76\105\109\101\32\103\114\101\101\110")
end

for L_210_forvar1, L_211_forvar2 in next, L_3_:GetPlayers() do
	if L_211_forvar2 ~= L_10_ then
		L_211_forvar2.CharacterAdded:Connect(function(L_212_arg1)
			if EspEnabled or table.find(L_55_, tostring(L_211_forvar2)) then
				local L_213_ = L_23_(L_212_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_213_ ~= nil then
					L_65_func(L_213_, tostring(L_211_forvar2))
				end
			end
		end)
	end
end

L_3_.PlayerAdded:Connect(function(L_214_arg1)
	L_214_arg1.CharacterAdded:Connect(function(L_215_arg1)
		if EspEnabled or table.find(L_55_, tostring(L_214_arg1)) then
			local L_216_ = L_23_(L_215_arg1, "\72\101\97\100", "\87\97\105\116")
			if L_216_ ~= nil then
				L_65_func(L_216_, tostring(L_214_arg1))
			end
		end
	end)
	if EspEnabled then
		local L_217_ = L_23_(L_214_arg1.Character, "\72\101\97\100", "\87\97\105\116")
		if L_217_ ~= nil then
			L_65_func(L_217_, tostring(L_214_arg1))
		end
	end
end)

L_3_.PlayerRemoving:Connect(function(L_218_arg1)
	for L_220_forvar1 = 1, #L_55_ do
		if L_55_[L_220_forvar1] == tostring(L_218_arg1) then
			table.remove(L_55_, L_220_forvar1)
		end
	end
	local L_219_ = L_23_(L_18_, tostring(L_218_arg1), "\70\105\110\100")
	if L_219_ ~= nil then
		L_219_:Destroy()
	end
end)

L_10_.Chatted:Connect(function(L_221_arg1)
	if string.sub(string.lower(L_221_arg1), 1, string.len(L_16_)) == string.lower(L_16_) then
		L_19_(string.sub(L_221_arg1, string.len(L_16_) + 1, string.len(L_221_arg1)))
	end
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_222_arg1, L_223_arg2)
	if L_223_arg2 then
		Typing = true
	elseif not L_223_arg2 then
		Typing = false
		L_61_func(L_222_arg1.KeyCode, true)
		if table.find(L_56_, Enum.KeyCode.Q) and L_30_ then
			L_32_ = 0.5
		end
		if table.find(L_56_, Enum.KeyCode.E) and L_30_ then
			L_32_ = -0.5
		end
		if table.find(L_56_, L_17_) and not CmdBarTweening then
			L_20_()
			CmdBarTweening = true
			L_59_.Size = UDim2.new(0, 0, 0, 25)
			L_59_.Position = UDim2.new(1, 0, 1, -295)
			L_59_.Visible = true
			L_59_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_59_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_13_:Wait()
			L_59_:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
		if table.find(L_56_, Enum.KeyCode.LeftControl) then
			L_47_ = true
		end
	end
end)

L_6_.InputEnded:Connect(function(L_224_arg1, L_225_arg2)
	L_61_func(L_224_arg1.KeyCode, false)
	if not table.find(L_56_, Enum.KeyCode.Q) and L_30_ then
		L_32_ = 0
	end
	if not table.find(L_56_, Enum.KeyCode.E) and L_30_ then
		L_32_ = 0
	end
	if not table.find(L_56_, Enum.KeyCode.LeftControl) then
		L_47_ = false
	end
	if L_225_arg2 then
		Typing = true
	elseif not L_225_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_48_ ~= nil then
			L_48_:Disconnect()
			L_48_ = nil
		end
		if L_43_ and L_44_ ~= nil then
			local L_226_ = {}
			local L_227_ = L_23_(L_3_, L_44_, "\70\105\110\100")
			local L_228_
			if L_227_ ~= nil and L_227_.Character ~= nil then
				for L_229_forvar1, L_230_forvar2 in next, L_227_.Character:GetChildren() do
					if L_230_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_230_forvar2)) == string.lower(L_45_) then
						L_228_ = L_230_forvar2
						break
					end
				end
				if L_228_ ~= nil then
					L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_228_.Position)
				end
			end
		end
		if L_46_ and L_47_ then
			local L_231_ = {}
			local L_232_ = L_63_func()
			local L_233_
			if L_232_ ~= nil and L_232_.Character ~= nil then
				for L_234_forvar1, L_235_forvar2 in next, L_232_.Character:GetChildren() do
					if L_235_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_235_forvar2)) == string.lower(L_49_) then
						L_233_ = L_235_forvar2
						break
					end
				end
				L_48_ = L_12_:GetPropertyChangedSignal("\67\111\111\114\100\105\110\97\116\101\70\114\97\109\101"):Connect(function()
					if L_233_ ~= nil then
						L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_233_.Position)
					end
				end)
				if L_233_ ~= nil then
					L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_233_.Position)
				end
			end
		end
		if L_41_ then
			local L_236_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_236_ ~= nil and L_236_.Health ~= 0 then
				for L_237_forvar1, L_238_forvar2 in next, L_236_:GetPlayingAnimationTracks() do
					L_238_forvar2:AdjustSpeed(L_42_)
				end
			end
		end
		L_13_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_34_ then
			local L_239_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_240_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_239_ ~= nil and L_240_ ~= nil then
				local L_241_ = Vector3["\110\101\119"](L_240_.MoveDirection.X, 0, L_240_.MoveDirection.Z) * L_35_
				L_239_.CFrame = L_239_.CFrame + L_241_
			end
		end
		if L_30_ then
			local L_242_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_33_ == nil then
				L_33_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_33_.Transparency = 1
				L_33_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_33_.Anchored = true
				L_33_.Name = L_22_(25)
			end
			if L_242_ ~= nil then
				L_33_.CFrame = L_242_.CFrame * CFrame["\110\101\119"](0, L_31_ + L_32_, 0)
			end
		end
		if L_39_ then
			local L_243_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_244_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_243_ ~= nil and L_244_ ~= nil then
				L_244_:ChangeState(11)
				L_243_.Velocity = Vector3["\110\101\119"](0, 1e38, 0)
				L_244_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		if L_40_ then
			local L_245_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_246_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_245_ ~= nil and L_246_ ~= nil then
				L_246_:ChangeState(11)
				L_245_.Velocity = Vector3["\110\101\119"](0, 150, 0)
				L_245_.CFrame = CFrame["\110\101\119"](L_245_.Position) * CFrame.Angles(math["\114\97\100"](90), 0, 0)
				L_246_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_14_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_27_ then
			local L_247_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_248_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_247_ ~= nil and L_248_ ~= nil then
				if L_29_ ~= nil then
					L_247_.CFrame = L_29_
				end
				L_248_.PlatformStand = true
				local L_249_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_249_.Name = L_22_(25)
				L_249_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_249_.Anchored = true
				L_249_.CFrame = L_247_.CFrame
				L_249_.CanCollide = false
				L_249_.Transparency = 1
				local L_250_ = Instance["\110\101\119"]("\87\101\108\100", L_249_)
				L_250_.Part0 = L_247_
				L_250_.Part1 = L_249_
				if not Typing then
					if table.find(L_56_, Enum.KeyCode.W) then
						L_249_.CFrame = L_249_.CFrame + L_249_.CFrame.lookVector * L_28_
					end
					if table.find(L_56_, Enum.KeyCode.S) then
						L_249_.CFrame = L_249_.CFrame + L_249_.CFrame.lookVector * -L_28_
					end
					if table.find(L_56_, Enum.KeyCode.A) then
						L_249_.CFrame = L_249_.CFrame + L_249_.CFrame.rightVector * -L_28_
					end
					if table.find(L_56_, Enum.KeyCode.D) then
						L_249_.CFrame = L_249_.CFrame + L_249_.CFrame.rightVector * L_28_
					end
				end
				L_249_.CFrame = CFrame["\110\101\119"](L_247_.Position, L_12_.CoordinateFrame.lookVector * 9e9)
				L_29_ = L_247_.CFrame
				L_15_:Wait()
				if L_247_ ~= nil and L_29_ ~= nil then
					L_247_.CFrame = L_29_
				end
				if L_250_ ~= nil then
					L_250_:Destroy()
				end
				if L_249_ ~= nil then
					L_249_:Destroy()
				end
				if L_248_ ~= nil then
					L_248_.PlatformStand = false
				end
			end
		end
		L_15_:Wait()
	end
end)()

table.insert(L_54_, {
	Command = "\65\105\109\98\111\116\47\65\98",
	Description = "\65\105\109\115\32\100\105\114\101\99\116\108\121\32\97\116\32\112\101\114\115\111\110\32\99\108\111\115\101\115\116\32\116\111\n\121\111\117\114\32\109\111\117\115\101\44\32\76\101\102\116\67\111\110\116\114\111\108\32\116\111\32\116\111\103\103\108\101\46"
})
table.insert(L_54_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_54_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_54_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_54_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_54_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_54_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_54_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_54_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_54_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_54_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_54_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_54_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_54_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_54_, {
	Command = "\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_54_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_54_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_54_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_54_, {
	Command = "\65\110\105\109\97\116\105\111\110\83\112\101\101\100",
	Description = "\83\101\116\32\121\111\117\114\32\65\110\105\109\97\116\105\111\110\115\32\115\112\101\101\100\32\116\111\n\97\32\115\112\101\99\105\102\105\99\32\115\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\97\110\105\109\97\116\105\111\110\115\112\101\101\100\32\53"
})
table.insert(L_54_, {
	Command = "\86\105\101\119",
	Description = "\86\105\101\119\32\115\111\109\101\111\110\101\115\32\99\104\97\114\97\99\116\101\114\n\n\69\120\97\109\112\108\101\58\32\118\105\101\119\32\98\117\105\108\100\101\114\109\97\110"
})

table.insert(L_54_, {
	Command = "\67\97\109\108\111\99\107\80\97\114\116",
	Description = "\83\101\116\115\32\67\97\109\108\111\99\107\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_54_, {
	Command = "\65\105\109\98\111\116\80\97\114\116",
	Description = "\83\101\116\115\32\65\105\109\98\111\116\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_54_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\83\101\116\115\32\70\108\121\83\112\101\101\100\32\116\111\32\100\101\115\105\114\101\100\32\110\117\109\98\101\114"
})

table.insert(L_54_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_54_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_54_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})
table.insert(L_54_, {
	Command = "\85\110\67\97\109\108\111\99\107",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\67\97\109\108\111\99\107\32\99\111\109\109\97\110\100"
})
table.insert(L_54_, {
	Command = "\85\110\86\105\101\119",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\86\105\101\119\32\99\111\109\109\97\110\100"
})

-- // LOAD TIME END \\ --

L_21_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_21_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_21_("\74\111\105\110\32\116\104\101\32\100\105\115\99\111\114\100\32\105\102\32\121\111\117\32\119\111\117\108\100\32\108\105\107\101\58\32\100\105\115\99\111\114\100\46\103\103\47\72\119\117\72\120\89\71", "\66\114\105\103\104\116\32\118\105\111\108\101\116")
