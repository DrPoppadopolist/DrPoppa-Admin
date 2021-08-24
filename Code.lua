
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
local L_28_ = 1
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
local L_48_ = true
local L_49_
local L_50_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_51_ = false
local L_52_ = true

local L_53_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_54_ = {}
local L_55_ = {}
local L_56_ = {}
local L_57_ = {}
local L_58_ = {}
local L_59_ = {}

for L_70_forvar1 = 1, 255 do
	table.insert(L_54_, string.char(L_70_forvar1))
end
for L_71_forvar1 = 1, 9 do
	table.insert(L_55_, tostring(L_71_forvar1))
end
for L_72_forvar1 = 65, 90 do
	table.insert(L_56_, string.char(L_72_forvar1))
end

-- // ERROR SPY THING? \\ --

L_9_.Error:Connect(function(L_73_arg1, L_74_arg2)
	if string.find(L_73_arg1, string.sub(tostring(script), 2, string.len(tostring(script)))) then
		local L_75_ = string.rep("\45", 25)
		L_75_ = tostring(L_73_arg1) .. "\n\n" .. tostring(L_74_arg2)
		if setclipboard then
			setclipboard(L_75_)
			L_21_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\115\101\116\32\116\111\32\121\111\117\114\32\99\108\105\112\98\111\97\114\100\44\32\115\101\110\100\32\116\104\105\115\32\116\111\32\99\104\97\114\108\105\101\35\52\56\49\49", "\82\101\97\108\108\121\32\114\101\100", 5)
		else
			print(L_75_)
			L_21_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\112\114\105\110\116\101\100\32\97\115\32\121\111\117\32\100\111\110\39\116\32\104\97\118\101\32\115\101\116\99\108\105\112\98\111\97\114\100\32\102\117\110\99\116\105\111\110\46", "\82\101\97\108\108\121\32\114\101\100", 5)
		end
	end
end)

L_22_ = function(L_76_arg1)
	local L_77_ = ""
	for L_78_forvar1 = 1, L_76_arg1 do
		L_77_ = L_77_ .. L_54_[math["\114\97\110\100\111\109"](1, #L_54_)]
	end
	return L_77_
end

-- // NOTIFICATION SYSTEM \\ --

local L_60_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_60_.Name = L_22_(25)

local L_61_ = Instance["\110\101\119"]("\70\114\97\109\101", L_60_)
L_61_.Size = UDim2.new(0, 200, 0, 250)
L_61_.Position = UDim2.new(0, 0, 1, -250)
L_61_.BorderSizePixel = 0
L_61_.Transparency = 1

local L_62_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_60_)
L_62_.Size = UDim2.new(0, 0, 0, 25)
L_62_.Position = UDim2.new(1, 0, 1, -295)
L_62_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_62_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_62_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_62_.TextSize = 15
L_62_.Text = ""
L_62_.Transparency = 0
L_62_.Visible = false
L_62_.BorderSizePixel = 2
L_62_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_63_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_62_)
L_63_.Size = UDim2.new(1, 0, 0, 200)
L_63_.Position = UDim2.new(0, 0, 0, 31)
L_63_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_63_.Transparency = 0
L_63_.BorderSizePixel = 2
L_63_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_63_.ScrollBarThickness = 0

L_62_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_20_()
end)

L_62_.FocusLost:Connect(function()
	L_63_:ClearAllChildren()
	L_19_(L_62_.Text)
	L_62_.Text = ""
	L_62_.Size = UDim2.new(0, 0, 0, 25)
	L_62_.Position = UDim2.new(1, 0, 1, -295)
	L_62_.Visible = false
end)

L_21_ = function(L_79_arg1, L_80_arg2, L_81_arg3)
	coroutine.wrap(function()
		if not L_25_ and L_26_ then
			repeat
				L_13_:Wait()
			until L_25_
		end
		if L_25_ and L_26_ then
			repeat
				L_13_:Wait()
			until L_25_ and #L_61_:GetChildren() < 6
			L_25_ = false
			for L_83_forvar1, L_84_forvar2 in next, L_61_:GetChildren() do
				L_84_forvar2:TweenPosition(L_84_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_13_:Wait()
			end
			wait(0.2)
			local L_82_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_61_)
			L_82_.Size = UDim2.new(0, 5 * string.len(L_79_arg1), 0, 35)
			L_82_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_82_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_82_.TextColor = BrickColor.new(L_80_arg2)
			L_82_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_82_.TextScaled = true
			L_82_.Transparency = 0
			L_82_.BorderSizePixel = 2
			L_82_.Text = L_79_arg1
			L_82_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				if L_81_arg3 ~= nil and L_24_(L_81_arg3) == "\110\117\109\98\101\114" then
					wait(5 + L_81_arg3)
				else
					wait(5)
				end
				for L_85_forvar1 = 1, 16 do
					L_82_.Transparency = L_82_.Transparency + 0.1 / 2
					L_13_:Wait()
				end
				L_82_:Destroy()
			end)()
			L_13_:Wait()
			L_25_ = true
		end
	end)()
	return
end

local function L_64_func(L_86_arg1, L_87_arg2)
	if L_87_arg2 then
		table.insert(L_59_, L_86_arg1)
	elseif not L_87_arg2 then
		for L_88_forvar1 = 1, #L_59_ do
			if L_59_[L_88_forvar1] == L_86_arg1 then
				table.remove(L_59_, L_88_forvar1)
			end
		end
	end
end

L_24_ = function(L_89_arg1)
	if L_89_arg1 ~= nil then
		local L_90_ = false
		local L_91_ = false
		for L_92_forvar1 = 1, string.len(L_89_arg1) do
			if table.find(L_56_, string.sub(L_89_arg1, L_92_forvar1, L_92_forvar1)) then
				L_90_ = true
			end
			if table.find(L_55_, string.sub(L_89_arg1, L_92_forvar1, L_92_forvar1)) then
				L_91_ = true
			end
		end
		if L_90_ and not L_91_ then
			return "\115\116\114\105\110\103"
		elseif L_91_ and not L_90_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

L_20_ = function()
	L_63_:ClearAllChildren()
	local L_93_ = 0
	for L_94_forvar1, L_95_forvar2 in next, L_57_ do
		local L_96_ = string.split(L_95_forvar2.Command, "\47")
		for L_97_forvar1 = 1, #L_96_ do
			if string.lower(L_62_.Text) == string.lower(string.sub(L_96_[L_97_forvar1], 1, string.len(L_62_.Text))) and L_23_(L_63_, L_95_forvar2.Command, "\70\105\110\100") == nil then
				local L_98_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_63_)
				L_98_.Size = UDim2.new(1, -10, 0, 25)
				L_98_.Name = L_95_forvar2.Command
				if L_93_ == 0 then
					L_98_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_98_.Position = UDim2.new(0, 5, 0, 30 * L_93_) + UDim2.new(0, 0, 0, 5)
				end
				L_98_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_98_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_98_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_98_.TextSize = 15
				L_98_.Text = L_95_forvar2.Command
				L_98_.Transparency = 0
				L_98_.BorderSizePixel = 0
				L_98_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_99_ = Instance["\110\101\119"]("\70\114\97\109\101", L_62_)
				L_99_.Size = UDim2.new(0, 350, 0, 200)
				L_99_.Position = UDim2.new(0, -356, 0, 0)
				L_99_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_99_.Transparency = 0
				L_99_.BorderSizePixel = 2
				L_99_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_99_.Visible = false

				local L_100_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_99_)
				L_100_.Size = UDim2.new(0, 330, 0, 185)
				L_100_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_100_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_100_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_100_.TextSize = 18
				L_100_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_100_.TextScaled = false
				L_100_.Transparency = 0
				L_100_.BorderSizePixel = 2
				L_100_.Text = L_95_forvar2.Description
				L_100_.TextYAlignment = Enum.TextYAlignment.Top
				L_100_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_98_.MouseEnter:Connect(function()
					L_99_.Visible = true
					for L_101_forvar1 = 1, 20 do
						if not L_99_.Visible then
							break
						elseif L_101_forvar1 == 15 then
							L_99_.Visible = false
						end
						wait(1)
					end
				end)
				L_98_.MouseLeave:Connect(function()
					L_99_.Visible = false
				end)

				L_93_ = L_93_ + 1
				L_63_.CanvasSize = L_63_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_93_ < 7 then
		L_63_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

local function L_65_func(L_102_arg1)
	local L_103_ = {}
	if L_102_arg1 == "\111\116\104\101\114\115" then
		for L_104_forvar1, L_105_forvar2 in next, L_3_:GetPlayers() do
			if L_105_forvar2 ~= L_10_ then
				table.insert(L_103_, L_105_forvar2)
			end
		end
	elseif L_102_arg1 == "\97\108\108" then
		for L_106_forvar1, L_107_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_103_, L_107_forvar2)
		end
	elseif L_102_arg1 == "\109\101" then
		table.insert(L_103_, L_10_)
	else
		for L_108_forvar1, L_109_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_109_forvar2)), 1, string.len(L_102_arg1)) == L_102_arg1 then
				table.insert(L_103_, L_109_forvar2)
			end
		end
	end
	if #L_103_ == 0 then
		L_21_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_103_
end

L_23_ = function(L_110_arg1, L_111_arg2, L_112_arg3, L_113_arg4)
	if L_110_arg1 ~= nil and L_111_arg2 ~= nil then
		if L_112_arg3 == "\70\105\110\100" then
			local L_114_ = L_110_arg1:FindFirstChildOfClass(L_111_arg2)
			if not L_114_ then
				L_114_ = L_110_arg1:FindFirstChild(L_111_arg2)
			end
			if L_114_ then
				return L_114_
			end
		elseif L_112_arg3 == "\87\97\105\116" then
			local L_115_
			if L_113_arg4 ~= nil then
				L_110_arg1:WaitForChild(L_111_arg2, L_113_arg4)
			else
				L_115_ = L_110_arg1:WaitForChild(L_111_arg2, 9e9)
			end
			if L_115_ then
				return L_115_
			end
		end
	end
	return
end

local function L_66_func(L_116_arg1)
	local L_117_ = {}
	local L_118_ = {}
	for L_120_forvar1, L_121_forvar2 in next, L_3_:GetPlayers() do
		if L_121_forvar2 ~= L_10_ then
			local L_122_ = L_121_forvar2.Character:FindFirstChildOfClass("\80\97\114\116")
			local L_123_ = L_23_(L_121_forvar2.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_122_ ~= nil and L_123_ ~= nil and L_123_.Health ~= 0 then
				local L_124_ = (L_122_.Position - L_12_.CoordinateFrame.p).magnitude
				local L_125_ = Ray.new(L_12_.CoordinateFrame.p, (L_11_.Hit.p - L_12_.CoordinateFrame.p).unit * L_124_)
				local L_126_, L_127_ = workspace:FindPartOnRay(L_125_, workspace)
				local L_128_ = math["\102\108\111\111\114"]((L_127_ - L_122_.Position).magnitude)
				if L_116_arg1 then
					L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)] = {}
					L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)].dist = L_124_
					L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)].plr = L_121_forvar2
					L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)].diff = L_128_
					table.insert(L_118_, L_128_)
				elseif not L_116_arg1 then
					if L_121_forvar2.Team ~= L_10_.Team then
						L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)] = {}
						L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)].dist = L_124_
						L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)].plr = L_121_forvar2
						L_117_[L_121_forvar2.Name .. tostring(L_120_forvar1)].diff = L_128_
						table.insert(L_118_, L_128_)
					end
				end
			end
		end
	end
	if unpack(L_118_) == nil then
		return
	end
	local L_119_ = math["\102\108\111\111\114"](math["\109\105\110"](unpack(L_118_)))
	if L_119_ > 20 then
		return
	end
	for L_129_forvar1, L_130_forvar2 in next, L_117_ do
		if L_130_forvar2.diff == L_119_ then
			return L_130_forvar2.plr
		end
	end
	return
end

local function L_67_func(L_131_arg1)
	if L_131_arg1 ~= nil then
		local L_132_ = L_23_(L_131_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_132_ ~= nil then
			return L_132_.RigType
		end
	end
	return
end

local function L_68_func(L_133_arg1, L_134_arg2)
	if L_23_(L_18_, tostring(L_134_arg2), "\70\105\110\100") == nil then
		local L_135_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_18_)
		local L_136_ = Instance["\110\101\119"]("\70\114\97\109\101", L_135_)
		local L_137_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_135_)

		L_135_.Name = tostring(L_134_arg2)
		L_135_.Adornee = L_133_arg1
		L_135_.AlwaysOnTop = true
		L_135_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_135_.Size = UDim2.new(0, 5, 0, 5)

		L_136_.Name = "\68\79\84"
		L_136_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_136_.BackgroundTransparency = 0.3
		L_136_.BorderSizePixel = 0
		L_136_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_136_.Size = UDim2.new(2, 0, 2, 0)
		L_136_.Visible = true
		L_136_.ZIndex = 10

		L_137_.Name = "\78\65\77\69"
		L_137_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_137_.BackgroundTransparency = 1
		L_137_.BorderSizePixel = 0
		L_137_.Position = UDim2.new(0, 0, 0, -40)
		L_137_.Size = UDim2.new(1, 0, 10, 0)
		L_137_.Visible = true
		L_137_.ZIndex = 10
		L_137_.Font = "\65\114\105\97\108\66\111\108\100"
		L_137_.FontSize = "\83\105\122\101\49\52"
		L_137_.Text = string.upper(tostring(L_134_arg2))
		L_137_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_133_arg1.Changed:Connect(function(L_138_arg1)
			if L_133_arg1 == nil and L_135_ ~= nil then
				L_135_:Destroy()
			end
			if tostring(L_138_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_138_arg1) == "\80\97\114\101\110\116" and L_135_ ~= nil then
				L_135_:Destroy()
			end
		end) 
	end
end

local function L_69_func(L_139_arg1)
	local L_140_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_140_ ~= nil and L_139_arg1[3] ~= nil then
		local L_141_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_141_.Name = L_22_(25)
		L_141_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_141_.Anchored = true
		L_141_.CFrame = L_140_.CFrame
		L_141_.CanCollide = false
		L_141_.Transparency = 1
		if L_139_arg1[1] == "\80\97\114\116" then
			if L_139_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_142_ = 0
				if L_139_arg1[4] ~= nil and L_139_arg1[4] == "\79\102\102\115\101\116" then
					L_142_ = L_139_arg1[3].Size.Y / 2 + 3
				end
				local L_143_ = Instance["\110\101\119"]("\87\101\108\100", L_141_)
				L_143_.Part0 = L_140_
				L_143_.Part1 = L_141_
				L_141_.CFrame = CFrame["\110\101\119"](L_139_arg1[3].Position) * CFrame["\110\101\119"](0, L_142_, 0)
				L_13_:Wait()
				L_143_:Destroy()
			elseif L_139_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_144_ = 0.4
				if L_139_arg1[4] ~= nil and L_24_(L_139_arg1[4]) == "\110\117\109\98\101\114" then
					L_144_ = L_139_arg1[4]
				end
				repeat
					local L_145_ = Instance["\110\101\119"]("\87\101\108\100", L_141_)
					L_145_.Part0 = L_140_
					L_145_.Part1 = L_141_
					L_141_.CFrame = CFrame["\110\101\119"](L_141_.Position, L_139_arg1[3].Position)
					L_141_.CFrame = L_141_.CFrame + L_141_.CFrame.lookVector * L_144_
					L_13_:Wait()
					L_145_:Destroy()
				until L_141_ == nil or L_145_ == nil or (L_140_.Position - L_139_arg1[3].Position).magnitude < 3.5 or L_10_.Character == nil or L_140_.Parent == nil
			end
		elseif L_139_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_139_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_146_ = Instance["\110\101\119"]("\87\101\108\100", L_141_)
				L_146_.Part0 = L_140_
				L_146_.Part1 = L_141_
				L_141_.CFrame = L_139_arg1[3]
				L_13_:Wait()
				L_146_:Destroy()
			elseif L_139_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_147_ = 0.4
				if L_139_arg1[4] ~= nil and L_24_(L_139_arg1[4]) == "\110\117\109\98\101\114" then
					L_147_ = L_139_arg1[4]
				end
				repeat
					local L_148_ = Instance["\110\101\119"]("\87\101\108\100", L_141_)
					L_148_.Part0 = L_140_
					L_148_.Part1 = L_141_
					L_141_.CFrame = CFrame["\110\101\119"](L_141_.Position, L_139_arg1[3].p)
					L_141_.CFrame = L_141_.CFrame + L_141_.CFrame.lookVector * L_147_
					L_13_:Wait()
					L_148_:Destroy()
				until L_141_ == nil or L_148_ == nil or (L_140_.Position - L_139_arg1[3].p).magnitude < 3.5 or L_10_.Character == nil or L_140_.Parent == nil
			end
		end
		L_141_:Destroy()
	end
end


L_19_ = function(L_149_arg1)
	coroutine.wrap(function()
		if L_149_arg1 ~= nil and string.len(L_149_arg1) > 0 then

			local L_150_ = string.split(L_149_arg1, "\32")
			for L_151_forvar1 = 1, #L_150_ do
				L_150_[L_151_forvar1] = string.lower(L_150_[L_151_forvar1])
			end

			if L_150_[1] == "\119\97\108\107\115\112\101\101\100" or L_150_[1] == "\119\115" or L_150_[1] == "\115\112\101\101\100" and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
				local L_152_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_152_ ~= nil then
					L_152_.WalkSpeed = L_150_[2]
					L_21_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_150_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_150_[1] == "\106\117\109\112\112\111\119\101\114" or L_150_[1] == "\106\112" and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
				local L_153_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_153_ ~= nil then
					L_153_.JumpPower = L_150_[2]
					L_21_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_150_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_150_[1] == "\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_150_[1] == "\97\115" then
				if L_150_[2] == nil then
					L_41_ = not L_41_
					if L_41_ then
						L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_21_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						local L_154_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_154_ ~= nil and L_154_.Health ~= 0 then
							for L_155_forvar1, L_156_forvar2 in next, L_154_:GetPlayingAnimationTracks() do
								L_156_forvar2:AdjustSpeed(1)
							end
						end
						L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_150_[2] ~= nil and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
					L_42_ = L_150_[2]
					L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\86\97\108\117\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\117\110\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_150_[1] == "\117\110\97\115" then
				L_41_ = false
				L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_150_[1] == "\118\115" then
				if L_150_[2] == nil then
					L_34_ = not L_34_
					if L_34_ then
						L_21_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_21_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						L_21_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_150_[2] ~= nil and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
					L_35_ = L_150_[2]
					L_21_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_150_[1] == "\117\110\118\115" then
				L_34_ = false
				L_21_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\118\105\101\119" and L_150_[2] ~= nil then
				local L_157_ = L_65_func(L_150_[2])[1]
				if L_157_ ~= nil and L_157_.Character ~= nil then
					L_12_.CameraSubject = L_157_.Character
					L_21_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_157_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\117\110\118\105\101\119" and L_10_.Character ~= nil then
				L_12_.CameraSubject = L_10_.Character
				L_21_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_10_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\103\114\97\118\105\116\121" and L_150_[2] ~= nil and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_150_[2]
				L_21_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\102\108\121" then
				if L_150_[2] == nil then
					L_27_ = not L_27_
					L_29_ = nil
					L_21_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_150_[2] ~= nil and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
					L_28_ = L_150_[2]
					L_21_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_150_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\102\108\121\115\112\101\101\100" and L_24_(L_150_[2]) == "\110\117\109\98\101\114" then
				L_28_ = L_150_[2]
				L_21_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_150_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_150_[1] == "\117\110\102\108\121" then
				L_27_ = false
				L_21_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\102\108\111\97\116" then
				L_30_ = not L_30_
				if not L_30_ and L_33_ ~= nil then
					L_33_:Destroy()
					L_33_ = nil
				end
				local L_158_ = L_67_func(L_10_)
				if L_158_ ~= nil and L_158_ == Enum.HumanoidRigType.R15 then
					L_31_ = -3.65
				else
					L_31_ = -3.5
				end
				L_21_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_150_[1] == "\117\110\102\108\111\97\116" then
				L_30_ = false
				if L_33_ ~= nil then
					L_33_:Destroy()
				end
				L_21_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\119\97\108\107\102\108\105\110\103" or L_150_[1] == "\119\102" then
				L_39_ = not L_39_
				if L_39_ then
					local L_159_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_159_ ~= nil then
						L_159_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_39_ then
					local L_160_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_160_ ~= nil then
						L_160_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_150_[1] == "\117\110\119\102" then
				L_39_ = false
				local L_161_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_161_ ~= nil then
					L_161_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\116\114\97\109\112\111\108\105\110\101" then
				L_40_ = not L_40_
				if L_40_ then
					local L_162_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_162_ ~= nil then
						L_162_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_40_ then
					local L_163_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_163_ ~= nil then
						L_163_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\117\110\116\114\97\109\112\111\108\105\110\101" then
				L_40_ = false
				local L_164_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_164_ ~= nil then
					L_164_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\114\101\106\111\105\110" or L_150_[1] == "\114\106" then
				if #L_3_:GetPlayers() > 1 then
					L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
					L_21_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				else
					L_7_:Teleport(game.PlaceId)
					L_21_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_150_[1] == "\97\105\109\98\111\116" or L_150_[1] == "\97\98" then
				L_46_ = not L_46_
				L_21_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_150_[1] == "\117\110\97\105\109\98\111\116" or L_150_[1] == "\117\110\97\98" then
				L_46_ = false
				L_21_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_150_[1] == "\97\105\109\98\111\116\112\97\114\116" or L_150_[1] == "\97\98\112\97\114\116" and L_150_[2] ~= nil then
				L_50_ = L_150_[2]
				L_21_("\65\105\109\98\111\116\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_50_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_150_[1] == "\97\105\109\98\111\116\116\101\97\109" or L_150_[1] == "\97\116" then
				L_48_ = not L_48_
				L_21_("\65\105\109\98\111\116\84\101\97\109\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_48_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\99\97\109\108\111\99\107" or L_150_[1] == "\99\108" then
				if L_150_[2] ~= nil then
					local L_165_ = L_65_func(L_150_[2])[1]
					if L_165_ ~= nil then
						L_43_ = true
						L_44_ = tostring(L_165_)
						L_21_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_44_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_45_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_43_ = not L_43_
					L_21_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\117\110\99\97\109\108\111\99\107" or L_150_[1] == "\117\110\99\108" then
				L_43_ = false
				L_44_ = nil
				L_21_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_150_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_150_[1] == "\99\108\112\97\114\116" and L_150_[2] ~= nil then
				L_45_ = L_150_[2]
				L_21_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_45_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\100\105\101" then
				local L_166_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_166_ ~= nil then
					L_166_:ChangeState(15)
				end
				local L_167_ = L_23_(L_10_.Character, "\72\101\97\100", "\70\105\110\100")
				if L_167_ ~= nil then
					L_167_:Destroy()
				end
			end

			if L_150_[1] == "\102\108\105\110\103" then
				local L_168_ = L_65_func(L_150_[2])
				for L_169_forvar1 = 1, #L_168_ do
					if L_168_[L_169_forvar1] ~= nil then
						local L_170_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_171_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						local L_172_ = L_23_(L_168_[L_169_forvar1].Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_173_ = L_23_(L_168_[L_169_forvar1].Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_170_ ~= nil and L_171_ ~= nil and L_171_.Health ~= 0 and L_172_ ~= nil and L_173_ ~= nil and L_173_.Health ~= 0 then
							local L_174_ = L_170_.CFrame
							local L_175_ = L_172_.Position
							coroutine.wrap(function()
								repeat
									L_170_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
									L_12_.CameraSubject = L_168_[L_169_forvar1].Character
									L_170_.CFrame = CFrame["\110\101\119"](L_172_.Position) + Vector3["\110\101\119"](L_172_.Velocity.X, 0, L_172_.Velocity.Z) / 2.1
									L_14_:Wait()
								until L_10_.Character == nil or L_168_[L_169_forvar1] == nil or L_168_[L_169_forvar1].Character == nil or L_171_ == nil or L_173_ == nil or L_171_.Health == 0 or L_173_.Health == 0 or (L_172_.Position - L_175_).magnitude > 100
								if L_10_.Character ~= nil then
									L_12_.CameraSubject = L_10_.Character
									L_19_("\100\105\101")
								end
							end)()
						end
					end
				end
			end

			if L_150_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_150_[1] == "\116\102" then
				local L_176_ = L_65_func(L_150_[2])[1]
				if L_176_ ~= nil then
					local L_177_ = L_23_(L_176_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_177_ == nil then
						L_177_ = L_23_(L_176_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_178_ = L_23_(L_10_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_178_ == nil then
						L_178_ = L_23_(L_10_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_179_ = L_23_(L_10_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_178_ ~= nil and L_179_ ~= nil and L_177_ ~= nil then
						L_36_ = true
						L_37_ = L_179_.Grip
						L_38_ = L_179_
						L_21_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_176_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_179_.Parent = L_10_.Backpack
								local L_180_ = L_23_(L_179_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_180_ ~= nil then
									L_180_.Massless = true
								end
								local L_181_ = L_178_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_179_.Grip = L_181_:toObjectSpace(L_177_.CFrame):inverse()
								L_179_.Parent = L_10_.Character
								L_13_:Wait()
							until not L_36_ or L_179_ == nil or L_180_ == nil or L_10_.Character == nil or L_177_ == nil
							L_36_ = false
							if L_179_ ~= nil then
								L_179_.Parent = L_10_.Backpack
								L_179_.Grip = L_37_
								L_179_.Parent = L_10_.Character
							end
						end)()
					end
				end
			end
			if L_150_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_150_[1] == "\117\110\116\102" then
				L_36_ = false
				if L_38_ ~= nil and L_37_ ~= nil then
					L_38_.Parent = L_10_.Backpack
					L_38_.Grip = L_37_
					L_38_.Parent = L_10_.Character
					L_21_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_150_[1] == "\114\101\115\112\97\119\110" or L_150_[1] == "\114\101" and L_10_.Character ~= nil then
				local L_182_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_182_ ~= nil then
					L_19_("\100\105\101")
					if L_10_.Character ~= nil then
						L_10_.Character:ClearAllChildren()
					end
					local L_183_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_10_.Character = L_183_
					L_13_:Wait()
					L_10_.Character = L_10_.Character
					L_183_:Destroy()
					L_21_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_150_[1] == "\114\101\102\114\101\115\104" then
				local L_184_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_184_ ~= nil then
					local L_185_ = L_184_.CFrame
					local L_186_ = L_12_.CoordinateFrame
					L_19_("\114\101\115\112\97\119\110")
					L_10_.CharacterAdded:Wait()
					L_12_.CoordinateFrame = L_186_
					L_184_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_184_ ~= nil then
						L_184_.CFrame = L_185_
					end
				end
				L_21_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\101\115\112" then
				if L_150_[2] ~= nil then
					local L_187_ = L_65_func(L_150_[2])
					for L_188_forvar1 = 1, #L_187_ do
						if L_187_[L_188_forvar1] ~= nil then
							local L_189_ = L_23_(L_187_[L_188_forvar1].Character, "\72\101\97\100", "\87\97\105\116")
							if L_189_ ~= nil then
								L_68_func(L_189_, tostring(L_187_[L_188_forvar1]))
							end
							table.insert(L_58_, tostring(L_187_[L_188_forvar1]))
						end
					end
				else
					L_51_ = not L_51_
					if L_51_ then
						for L_190_forvar1, L_191_forvar2 in next, L_3_:GetPlayers() do
							if L_191_forvar2 ~= L_10_ then
								local L_192_ = L_23_(L_191_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
								if L_192_ ~= nil then
									L_68_func(L_192_, tostring(L_191_forvar2))
								end
							end
						end
						L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_51_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					elseif not L_51_ then 
						L_18_:ClearAllChildren()
						L_58_ = {}
						L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_51_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				end
			end

			if L_150_[1] == "\117\110\101\115\112" then
				if L_150_[2] ~= nil then
					local L_193_ = L_65_func(L_150_[2])
					for L_194_forvar1 = 1, #L_193_ do
						if L_193_[L_194_forvar1] ~= nil then
							local L_195_ = L_23_(L_18_, tostring(L_193_[L_194_forvar1]), "\70\105\110\100")
							if L_195_ ~= nil then
								L_195_:Destroy()
								L_21_(tostring(L_193_[L_194_forvar1]) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
							end
							for L_196_forvar1 = 1, #L_58_ do
								if L_58_[L_196_forvar1] == tostring(L_193_[L_196_forvar1]) then
									table.remove(L_58_, L_196_forvar1)
								end
							end
						end
					end
				else
					L_51_ = false
					L_18_:ClearAllChildren()
					L_58_ = {}
					L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_51_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_150_[1] == "\101\115\112\116\101\97\109" or L_150_[1] == "\101\116" then
				L_52_ = not L_52_
				if not L_52_ then
					for L_197_forvar1, L_198_forvar2 in next, L_3_:GetPlayers() do
						if L_198_forvar2 ~= L_10_ and L_198_forvar2.Team == L_10_.Team then
							local L_199_ = L_23_(L_18_, tostring(L_198_forvar2), "\70\105\110\100")
							if L_199_ ~= nil then
								L_199_:Destroy()
							end
						end
					end
				elseif L_52_ then
					for L_200_forvar1, L_201_forvar2 in next, L_3_:GetPlayers() do
						if L_201_forvar2 ~= L_10_ then
							local L_202_ = L_23_(L_201_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
							if L_202_ ~= nil then
								L_68_func(L_202_, tostring(L_201_forvar2))
							end
						end
					end
				end
				L_21_("\69\115\112\84\101\97\109\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_52_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_150_[1] == "\115\101\114\118\101\114" and L_150_[2] ~= nil then
				coroutine.wrap(function()
					local L_203_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_150_[2] == "\104\111\112" then
						local L_204_ = {}
						for L_205_forvar1, L_206_forvar2 in next, L_203_ do
							if type(L_206_forvar2) == "\116\97\98\108\101" and L_206_forvar2.maxPlayers > L_206_forvar2.playing and L_206_forvar2.id ~= game.JobId then
								table.insert(L_204_, L_206_forvar2.id)
							end
						end
						if #L_204_ > 0 then
							L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_21_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_150_[2] == "\98\105\103" then
						local L_207_ = 0
						local L_208_
						for L_209_forvar1, L_210_forvar2 in next, L_203_ do
							if L_210_forvar2.playing > L_207_ and L_210_forvar2.maxPlayers > L_210_forvar2.playing then
								L_207_ = L_210_forvar2.playing
								L_208_ = L_210_forvar2.id
							end
						end
						if L_208_ ~= nil then
							if L_208_ == game.JobId then
								L_21_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_208_)
							end
						elseif L_208_ == nil then
							L_21_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_150_[2] == "\112\105\110\103" then
						local L_211_ = 9e9
						local L_212_
						for L_213_forvar1, L_214_forvar2 in next, L_203_ do
							if L_214_forvar2.ping < L_211_ and L_214_forvar2.maxPlayers > L_214_forvar2.playing then
								L_211_ = L_214_forvar2.ping
								L_212_ = L_214_forvar2.id
							end
						end
						if L_212_ ~= nil then
							if L_212_ == game.JobId then
								L_21_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_212_)
							end
						elseif L_212_ == nil then
							L_21_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_150_[1] == "\116\112" or L_150_[1] == "\116\101\108\101\112\111\114\116" or L_150_[1] == "\116\111" and L_150_[2] ~= nil then
				local L_215_ = L_65_func(L_150_[2])
				for L_216_forvar1 = 1, #L_215_ do
					if L_215_[L_216_forvar1] ~= nil then
						local L_217_ = L_23_(L_215_[L_216_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_217_ == nil then
							L_217_ = L_23_(L_215_[L_216_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_217_ ~= nil then
							L_69_func({
								"\80\97\114\116",
								"\73\110\115\116\97\110\116",
								L_217_
							})
						end
					end
				end
			end

			if L_150_[1] == "\98\116\112" or L_150_[1] == "\98\116\101\108\101\112\111\114\116" or L_150_[1] == "\98\116\111" and L_150_[2] ~= nil then
				local L_218_ = L_65_func(L_150_[2])
				for L_219_forvar1 = 1, #L_218_ do
					if L_218_[L_219_forvar1] ~= nil then
						local L_220_ = L_23_(L_218_[L_219_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_220_ == nil then
							L_220_ = L_23_(L_218_[L_219_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_220_ ~= nil then
							L_69_func({
								"\80\97\114\116",
								"\80\114\111\103\114\101\115\115",
								L_220_,
								L_150_[3]
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

for L_221_forvar1, L_222_forvar2 in next, L_3_:GetPlayers() do
	if L_222_forvar2 ~= L_10_ then
		L_222_forvar2.CharacterAdded:Connect(function(L_223_arg1)
			if L_51_ or table.find(L_58_, tostring(L_222_forvar2)) then
				if L_52_ then
					local L_224_ = L_23_(L_223_arg1, "\72\101\97\100", "\87\97\105\116")
					if L_224_ ~= nil then
						L_68_func(L_224_, tostring(L_222_forvar2))
					end
				elseif not L_52_ and L_222_forvar2.Team ~= L_10_.Team then
					local L_225_ = L_23_(L_223_arg1, "\72\101\97\100", "\87\97\105\116")
					if L_225_ ~= nil then
						L_68_func(L_225_, tostring(L_222_forvar2))
					end
				end
			end
		end)
	end
end

L_3_.PlayerAdded:Connect(function(L_226_arg1)
	L_226_arg1.CharacterAdded:Connect(function(L_227_arg1)
		if L_51_ or table.find(L_58_, tostring(L_226_arg1)) then
			if L_52_ then
				local L_228_ = L_23_(L_227_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_228_ ~= nil then
					L_68_func(L_228_, tostring(L_226_arg1))
				end
			elseif not L_52_ and L_226_arg1.Team ~= L_10_.Team then
				local L_229_ = L_23_(L_227_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_229_ ~= nil then
					L_68_func(L_229_, tostring(L_226_arg1))
				end
			end
		end
	end)
	if L_51_ then
		if L_52_ then
			local L_230_ = L_23_(character, "\72\101\97\100", "\87\97\105\116")
			if L_230_ ~= nil then
				L_68_func(L_230_, tostring(L_226_arg1))
			end
		elseif not L_52_ and L_226_arg1.Team ~= L_10_.Team then
			local L_231_ = L_23_(character, "\72\101\97\100", "\87\97\105\116")
			if L_231_ ~= nil then
				L_68_func(L_231_, tostring(L_226_arg1))
			end
		end
	end
end)

L_3_.PlayerRemoving:Connect(function(L_232_arg1)
	for L_234_forvar1 = 1, #L_58_ do
		if L_58_[L_234_forvar1] == tostring(L_232_arg1) then
			table.remove(L_58_, L_234_forvar1)
		end
	end
	local L_233_ = L_23_(L_18_, tostring(L_232_arg1), "\70\105\110\100")
	if L_233_ ~= nil then
		L_233_:Destroy()
	end
end)

L_10_.Chatted:Connect(function(L_235_arg1)
	if string.sub(string.lower(L_235_arg1), 1, string.len(L_16_)) == string.lower(L_16_) then
		L_19_(string.sub(L_235_arg1, string.len(L_16_) + 1, string.len(L_235_arg1)))
	end
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_236_arg1, L_237_arg2)
	if L_237_arg2 then
		Typing = true
	elseif not L_237_arg2 then
		Typing = false
		L_64_func(L_236_arg1.KeyCode, true)
		if table.find(L_59_, Enum.KeyCode.Q) and L_30_ then
			L_32_ = 0.5
		end
		if table.find(L_59_, Enum.KeyCode.E) and L_30_ then
			L_32_ = -0.5
		end
		if table.find(L_59_, L_17_) and not CmdBarTweening then
			L_20_()
			CmdBarTweening = true
			L_62_.Size = UDim2.new(0, 0, 0, 25)
			L_62_.Position = UDim2.new(1, 0, 1, -295)
			L_62_.Visible = true
			L_62_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_62_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_13_:Wait()
			L_62_:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
		if table.find(L_59_, Enum.KeyCode.LeftControl) then
			L_47_ = true
		end
	end
end)

L_6_.InputEnded:Connect(function(L_238_arg1, L_239_arg2)
	L_64_func(L_238_arg1.KeyCode, false)
	if not table.find(L_59_, Enum.KeyCode.Q) and L_30_ then
		L_32_ = 0
	end
	if not table.find(L_59_, Enum.KeyCode.E) and L_30_ then
		L_32_ = 0
	end
	if not table.find(L_59_, Enum.KeyCode.LeftControl) then
		L_47_ = false
	end
	if L_239_arg2 then
		Typing = true
	elseif not L_239_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_49_ ~= nil then
			L_49_:Disconnect()
			L_49_ = nil
		end
		if L_43_ and L_44_ ~= nil then
			local L_240_ = {}
			local L_241_ = L_23_(L_3_, L_44_, "\70\105\110\100")
			local L_242_
			if L_241_ ~= nil and L_241_.Character ~= nil then
				for L_243_forvar1, L_244_forvar2 in next, L_241_.Character:GetChildren() do
					if L_244_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_244_forvar2)) == string.lower(L_45_) then
						L_242_ = L_244_forvar2
						break
					end
				end
				if L_242_ ~= nil then
					L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_242_.Position)
				end
			end
		end
		if L_46_ and L_47_ then
			local L_245_ = {}
			local L_246_ = L_66_func(L_48_)
			local L_247_
			if L_246_ ~= nil and L_246_.Character ~= nil then
				local L_248_ = L_246_.Character
				for L_249_forvar1, L_250_forvar2 in next, L_246_.Character:GetChildren() do
					if L_250_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_250_forvar2)) == string.lower(L_50_) then
						L_247_ = L_250_forvar2
						break
					end
				end
				if L_247_ ~= nil then
					AimbotPartLastPos = L_247_.Position
					L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_247_.Position)
				end
				L_49_ = L_12_:GetPropertyChangedSignal("\67\111\111\114\100\105\110\97\116\101\70\114\97\109\101"):Connect(function()
					if L_247_ ~= nil and L_248_ ~= nil and (AimbotPartLastPos - L_247_.Position).magnitude < 100 then
						L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_247_.Position)
					end
				end)
			end
		end
		if L_41_ then
			local L_251_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_251_ ~= nil and L_251_.Health ~= 0 then
				for L_252_forvar1, L_253_forvar2 in next, L_251_:GetPlayingAnimationTracks() do
					L_253_forvar2:AdjustSpeed(L_42_)
				end
			end
		end
		L_13_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_34_ then
			local L_254_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_255_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_254_ ~= nil and L_255_ ~= nil then
				local L_256_ = Vector3["\110\101\119"](L_255_.MoveDirection.X, 0, L_255_.MoveDirection.Z) * L_35_
				L_254_.CFrame = L_254_.CFrame + L_256_
			end
		end
		if L_30_ then
			local L_257_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_33_ == nil then
				L_33_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_33_.Transparency = 1
				L_33_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_33_.Anchored = true
				L_33_.Name = L_22_(25)
			end
			if L_257_ ~= nil then
				L_33_.CFrame = L_257_.CFrame * CFrame["\110\101\119"](0, L_31_ + L_32_, 0)
			end
		end
		if L_39_ then
			local L_258_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_259_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_258_ ~= nil and L_259_ ~= nil then
				L_259_:ChangeState(11)
				L_258_.Velocity = Vector3["\110\101\119"](0, 1e38, 0)
				L_259_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		if L_40_ then
			local L_260_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_261_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_260_ ~= nil and L_261_ ~= nil then
				L_261_:ChangeState(11)
				L_260_.Velocity = Vector3["\110\101\119"](0, 150, 0)
				L_260_.CFrame = CFrame["\110\101\119"](L_260_.Position) * CFrame.Angles(math["\114\97\100"](90), 0, 0)
				L_261_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_14_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_27_ then
			local L_262_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_263_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_262_ ~= nil and L_263_ ~= nil then
				if L_29_ ~= nil then
					L_262_.CFrame = L_29_
				end
				L_263_.PlatformStand = true
				local L_264_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_264_.Name = L_22_(25)
				L_264_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_264_.Anchored = true
				L_264_.CFrame = L_262_.CFrame
				L_264_.CanCollide = false
				L_264_.Transparency = 1
				local L_265_ = Instance["\110\101\119"]("\87\101\108\100", L_264_)
				L_265_.Part0 = L_262_
				L_265_.Part1 = L_264_
				if not Typing then
					if table.find(L_59_, Enum.KeyCode.W) then
						L_264_.CFrame = L_264_.CFrame + L_264_.CFrame.lookVector * L_28_
					end
					if table.find(L_59_, Enum.KeyCode.S) then
						L_264_.CFrame = L_264_.CFrame + L_264_.CFrame.lookVector * -L_28_
					end
					if table.find(L_59_, Enum.KeyCode.A) then
						L_264_.CFrame = L_264_.CFrame + L_264_.CFrame.rightVector * -L_28_
					end
					if table.find(L_59_, Enum.KeyCode.D) then
						L_264_.CFrame = L_264_.CFrame + L_264_.CFrame.rightVector * L_28_
					end
				end
				L_264_.CFrame = CFrame["\110\101\119"](L_262_.Position, L_12_.CoordinateFrame.lookVector * 9e9)
				L_29_ = L_262_.CFrame
				L_15_:Wait()
				if L_262_ ~= nil and L_29_ ~= nil then
					L_262_.CFrame = L_29_
				end
				if L_265_ ~= nil then
					L_265_:Destroy()
				end
				if L_264_ ~= nil then
					L_264_:Destroy()
				end
				if L_263_ ~= nil then
					L_263_.PlatformStand = false
				end
			end
		end
		L_15_:Wait()
	end
end)()

table.insert(L_57_, {
	Command = "\65\105\109\98\111\116\47\65\98",
	Description = "\65\105\109\115\32\100\105\114\101\99\116\108\121\32\97\116\32\112\101\114\115\111\110\32\99\108\111\115\101\115\116\32\116\111\n\121\111\117\114\32\109\111\117\115\101\44\32\100\101\102\97\117\108\116\32\107\101\121\32\105\115\76\101\102\116\67\111\110\116\114\111\108\n\116\111\32\116\111\103\103\108\101\46"
})
table.insert(L_57_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_57_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_57_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_57_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_57_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_57_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_57_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_57_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_57_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_57_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_57_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_57_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_57_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_57_, {
	Command = "\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_57_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_57_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_57_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_57_, {
	Command = "\65\110\105\109\97\116\105\111\110\83\112\101\101\100",
	Description = "\83\101\116\32\121\111\117\114\32\65\110\105\109\97\116\105\111\110\115\32\115\112\101\101\100\32\116\111\n\97\32\115\112\101\99\105\102\105\99\32\115\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\97\110\105\109\97\116\105\111\110\115\112\101\101\100\32\53"
})
table.insert(L_57_, {
	Command = "\86\105\101\119",
	Description = "\86\105\101\119\32\115\111\109\101\111\110\101\115\32\99\104\97\114\97\99\116\101\114\n\n\69\120\97\109\112\108\101\58\32\118\105\101\119\32\98\117\105\108\100\101\114\109\97\110"
})

table.insert(L_57_, {
	Command = "\67\97\109\108\111\99\107\80\97\114\116",
	Description = "\83\101\116\115\32\67\97\109\108\111\99\107\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_57_, {
	Command = "\65\105\109\98\111\116\80\97\114\116",
	Description = "\83\101\116\115\32\65\105\109\98\111\116\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_57_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\83\101\116\115\32\70\108\121\83\112\101\101\100\32\116\111\32\100\101\115\105\114\101\100\32\110\117\109\98\101\114"
})

table.insert(L_57_, {
	Command = "\65\105\109\98\111\116\84\101\97\109",
	Description = "\69\110\97\98\108\101\115\47\68\105\115\97\98\108\101\115\32\116\101\97\109\32\99\104\101\99\107"
})
table.insert(L_57_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\69\110\97\98\108\101\115\47\68\105\115\97\98\108\101\115\32\116\101\97\109\32\99\104\101\99\107"
})

table.insert(L_57_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_57_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_57_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})
table.insert(L_57_, {
	Command = "\85\110\67\97\109\108\111\99\107",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\67\97\109\108\111\99\107\32\99\111\109\109\97\110\100"
})
table.insert(L_57_, {
	Command = "\85\110\86\105\101\119",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\86\105\101\119\32\99\111\109\109\97\110\100"
})

-- // LOAD TIME END \\ --

L_21_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_21_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_21_("\74\111\105\110\32\116\104\101\32\100\105\115\99\111\114\100\32\105\102\32\121\111\117\32\119\111\117\108\100\32\108\105\107\101\58\32\100\105\115\99\111\114\100\46\103\103\47\72\119\117\72\120\89\71", "\66\114\105\103\104\116\32\118\105\111\108\101\116")
