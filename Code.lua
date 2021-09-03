
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
local L_10_ = L_2_(game, "\80\97\116\104\102\105\110\100\105\110\103\83\101\114\118\105\99\101")

local L_11_ = L_3_.LocalPlayer
local L_12_ = L_11_:GetMouse()

local L_13_

local L_14_ = L_4_.RenderStepped
local L_15_ = L_4_.Heartbeat
local L_16_ = L_4_.Stepped

local L_17_ = [[;]]
local L_18_ = Enum.KeyCode.Quote

local L_19_ = Instance["\110\101\119"]("\70\111\108\100\101\114", L_5_)

local L_20_
local L_21_
local L_22_
local L_23_
local L_24_
local L_25_

local L_26_ = true
local L_27_ = true

local L_28_ = false
local L_29_ = 1
local L_30_

local L_31_ = false
local L_32_ = -3.5
local L_33_ = 0
local L_34_

local L_35_ = false
local L_36_ = 0.5

local L_37_ = falseR
local L_38_
local L_39_

local L_40_ = false

local L_41_ = false

local L_42_ = false
local L_43_ = 2

local L_44_ = false
local L_45_
local L_46_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_47_ = false
local L_48_ = false
local L_49_ = true
local L_50_
local L_51_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_52_ = false
local L_53_ = true

local L_54_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_55_ = {}
local L_56_ = {}
local L_57_ = {}
local L_58_ = {}
local L_59_ = {}
local L_60_ = {}

for L_71_forvar1 = 1, 255 do
	table.insert(L_55_, string.char(L_71_forvar1))
end
for L_72_forvar1 = 1, 9 do
	table.insert(L_56_, tostring(L_72_forvar1))
end
for L_73_forvar1 = 65, 90 do
	table.insert(L_57_, string.char(L_73_forvar1))
end

-- // ERROR SPY THING? \\ --

L_9_.Error:Connect(function(L_74_arg1, L_75_arg2)
	if string.find(L_74_arg1, string.sub(tostring(script), 2, string.len(tostring(script)))) then
		local L_76_ = string.rep("\45", 25)
		L_76_ = tostring(L_74_arg1) .. "\n\n" .. tostring(L_75_arg2)
		if setclipboard then
			setclipboard(L_76_)
			L_22_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\115\101\116\32\116\111\32\121\111\117\114\32\99\108\105\112\98\111\97\114\100\44\32\115\101\110\100\32\116\104\105\115\32\116\111\32\99\104\97\114\108\105\101\35\52\56\49\49", "\82\101\97\108\108\121\32\114\101\100", 5)
		else
			print(L_76_)
			L_22_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\112\114\105\110\116\101\100\32\97\115\32\121\111\117\32\100\111\110\39\116\32\104\97\118\101\32\115\101\116\99\108\105\112\98\111\97\114\100\32\102\117\110\99\116\105\111\110\46", "\82\101\97\108\108\121\32\114\101\100", 5)
		end
	end
end)

L_23_ = function(L_77_arg1)
	local L_78_ = ""
	for L_79_forvar1 = 1, L_77_arg1 do
		L_78_ = L_78_ .. L_55_[math["\114\97\110\100\111\109"](1, #L_55_)]
	end
	return L_78_
end

-- // NOTIFICATION SYSTEM \\ --

local L_61_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_61_.Name = L_23_(25)

local L_62_ = Instance["\110\101\119"]("\70\114\97\109\101", L_61_)
L_62_.Size = UDim2.new(0, 200, 0, 250)
L_62_.Position = UDim2.new(0, 0, 1, -250)
L_62_.BorderSizePixel = 0
L_62_.Transparency = 1

local L_63_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_61_)
L_63_.Size = UDim2.new(0, 0, 0, 25)
L_63_.Position = UDim2.new(1, 0, 1, -295)
L_63_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_63_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_63_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_63_.TextSize = 15
L_63_.Text = ""
L_63_.Transparency = 0
L_63_.Visible = false
L_63_.BorderSizePixel = 2
L_63_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_64_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_63_)
L_64_.Size = UDim2.new(1, 0, 0, 200)
L_64_.Position = UDim2.new(0, 0, 0, 31)
L_64_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_64_.Transparency = 0
L_64_.BorderSizePixel = 2
L_64_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_64_.ScrollBarThickness = 0

L_63_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_21_()
end)

L_63_.FocusLost:Connect(function()
	L_64_:ClearAllChildren()
	L_20_(L_63_.Text)
	L_63_.Text = ""
	L_63_.Size = UDim2.new(0, 0, 0, 25)
	L_63_.Position = UDim2.new(1, 0, 1, -295)
	L_63_.Visible = false
end)

L_22_ = function(L_80_arg1, L_81_arg2, L_82_arg3)
	coroutine.wrap(function()
		if not L_26_ and L_27_ then
			repeat
				L_14_:Wait()
			until L_26_
		end
		if L_26_ and L_27_ then
			repeat
				L_14_:Wait()
			until L_26_ and #L_62_:GetChildren() < 6
			L_26_ = false
			for L_84_forvar1, L_85_forvar2 in next, L_62_:GetChildren() do
				L_85_forvar2:TweenPosition(L_85_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_14_:Wait()
			end
			wait(0.2)
			local L_83_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_62_)
			L_83_.Size = UDim2.new(0, 5 * string.len(L_80_arg1), 0, 35)
			L_83_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_83_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_83_.TextColor = BrickColor.new(L_81_arg2)
			L_83_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_83_.TextScaled = true
			L_83_.Transparency = 0
			L_83_.BorderSizePixel = 2
			L_83_.Text = L_80_arg1
			L_83_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				if L_82_arg3 ~= nil and L_25_(L_82_arg3) == "\110\117\109\98\101\114" then
					wait(5 + L_82_arg3)
				else
					wait(5)
				end
				for L_86_forvar1 = 1, 16 do
					L_83_.Transparency = L_83_.Transparency + 0.1 / 2
					L_14_:Wait()
				end
				L_83_:Destroy()
			end)()
			L_14_:Wait()
			L_26_ = true
		end
	end)()
	return
end

local function L_65_func(L_87_arg1, L_88_arg2)
	if L_88_arg2 then
		table.insert(L_60_, L_87_arg1)
	elseif not L_88_arg2 then
		for L_89_forvar1 = 1, #L_60_ do
			if L_60_[L_89_forvar1] == L_87_arg1 then
				table.remove(L_60_, L_89_forvar1)
			end
		end
	end
end

L_25_ = function(L_90_arg1)
	if L_90_arg1 ~= nil then
		local L_91_ = false
		local L_92_ = false
		for L_93_forvar1 = 1, string.len(L_90_arg1) do
			if table.find(L_57_, string.sub(L_90_arg1, L_93_forvar1, L_93_forvar1)) then
				L_91_ = true
			end
			if table.find(L_56_, string.sub(L_90_arg1, L_93_forvar1, L_93_forvar1)) then
				L_92_ = true
			end
		end
		if L_91_ and not L_92_ then
			return "\115\116\114\105\110\103"
		elseif L_92_ and not L_91_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

L_21_ = function()
	L_64_:ClearAllChildren()
	local L_94_ = 0
	for L_95_forvar1, L_96_forvar2 in next, L_58_ do
		local L_97_ = string.split(L_96_forvar2.Command, "\47")
		for L_98_forvar1 = 1, #L_97_ do
			if string.lower(L_63_.Text) == string.lower(string.sub(L_97_[L_98_forvar1], 1, string.len(L_63_.Text))) and L_24_(L_64_, L_96_forvar2.Command, "\70\105\110\100") == nil then
				local L_99_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_64_)
				L_99_.Size = UDim2.new(1, -10, 0, 25)
				L_99_.Name = L_96_forvar2.Command
				if L_94_ == 0 then
					L_99_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_99_.Position = UDim2.new(0, 5, 0, 30 * L_94_) + UDim2.new(0, 0, 0, 5)
				end
				L_99_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_99_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_99_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_99_.TextSize = 15
				L_99_.Text = L_96_forvar2.Command
				L_99_.Transparency = 0
				L_99_.BorderSizePixel = 0
				L_99_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_100_ = Instance["\110\101\119"]("\70\114\97\109\101", L_63_)
				L_100_.Size = UDim2.new(0, 350, 0, 200)
				L_100_.Position = UDim2.new(0, -356, 0, 0)
				L_100_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_100_.Transparency = 0
				L_100_.BorderSizePixel = 2
				L_100_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_100_.Visible = false

				local L_101_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_100_)
				L_101_.Size = UDim2.new(0, 330, 0, 185)
				L_101_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_101_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_101_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_101_.TextSize = 18
				L_101_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_101_.TextScaled = false
				L_101_.Transparency = 0
				L_101_.BorderSizePixel = 2
				L_101_.Text = L_96_forvar2.Description
				L_101_.TextYAlignment = Enum.TextYAlignment.Top
				L_101_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_99_.MouseEnter:Connect(function()
					L_100_.Visible = true
					for L_102_forvar1 = 1, 20 do
						if not L_100_.Visible then
							break
						elseif L_102_forvar1 == 15 then
							L_100_.Visible = false
						end
						wait(1)
					end
				end)
				L_99_.MouseLeave:Connect(function()
					L_100_.Visible = false
				end)

				L_94_ = L_94_ + 1
				L_64_.CanvasSize = L_64_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_94_ < 7 then
		L_64_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

local function L_66_func(L_103_arg1)
	local L_104_ = {}
	if L_103_arg1 == "\111\116\104\101\114\115" then
		for L_105_forvar1, L_106_forvar2 in next, L_3_:GetPlayers() do
			if L_106_forvar2 ~= L_11_ then
				table.insert(L_104_, L_106_forvar2)
			end
		end
	elseif L_103_arg1 == "\97\108\108" then
		for L_107_forvar1, L_108_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_104_, L_108_forvar2)
		end
	elseif L_103_arg1 == "\109\101" then
		table.insert(L_104_, L_11_)
	else
		for L_109_forvar1, L_110_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_110_forvar2)), 1, string.len(tostring(L_103_arg1))) == L_103_arg1 then
				table.insert(L_104_, L_110_forvar2)
			end
		end
	end
	if #L_104_ == 0 then
		L_22_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_104_
end

L_24_ = function(L_111_arg1, L_112_arg2, L_113_arg3, L_114_arg4)
	if L_111_arg1 ~= nil and L_112_arg2 ~= nil then
		if L_113_arg3 == "\70\105\110\100" then
			local L_115_ = L_111_arg1:FindFirstChildOfClass(L_112_arg2)
			if not L_115_ then
				L_115_ = L_111_arg1:FindFirstChild(L_112_arg2)
			end
			if L_115_ then
				return L_115_
			end
		elseif L_113_arg3 == "\87\97\105\116" then
			local L_116_
			if L_114_arg4 ~= nil then
				L_111_arg1:WaitForChild(L_112_arg2, L_114_arg4)
			else
				L_116_ = L_111_arg1:WaitForChild(L_112_arg2, 9e9)
			end
			if L_116_ then
				return L_116_
			end
		end
	end
	return
end

local function L_67_func(L_117_arg1)
	local L_118_ = {}
	local L_119_ = {}
	for L_121_forvar1, L_122_forvar2 in next, L_3_:GetPlayers() do
		if L_122_forvar2 ~= L_11_ then
			local L_123_ = L_24_(L_122_forvar2.Character, "\80\97\114\116", "\70\105\110\100")
			local L_124_ = L_24_(L_122_forvar2.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_123_ ~= nil and L_124_ ~= nil and L_124_.Health ~= 0 then
				local L_125_ = (L_123_.Position - L_13_.CoordinateFrame.p).magnitude
				local L_126_ = Ray.new(L_13_.CoordinateFrame.p, (L_12_.Hit.p - L_13_.CoordinateFrame.p).unit * L_125_)
				local L_127_, L_128_ = workspace:FindPartOnRay(L_126_, workspace)
				local L_129_ = math["\102\108\111\111\114"]((L_128_ - L_123_.Position).magnitude)
				if L_117_arg1 then
					L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)] = {}
					L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)].dist = L_125_
					L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)].plr = L_122_forvar2
					L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)].diff = L_129_
					table.insert(L_119_, L_129_)
				elseif not L_117_arg1 then
					if L_122_forvar2.Team ~= L_11_.Team then
						L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)] = {}
						L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)].dist = L_125_
						L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)].plr = L_122_forvar2
						L_118_[L_122_forvar2.Name .. tostring(L_121_forvar1)].diff = L_129_
						table.insert(L_119_, L_129_)
					end
				end
			end
		end
	end
	if unpack(L_119_) == nil then
		return
	end
	local L_120_ = math["\102\108\111\111\114"](math["\109\105\110"](unpack(L_119_)))
	if L_120_ > 20 then
		return
	end
	for L_130_forvar1, L_131_forvar2 in next, L_118_ do
		if L_131_forvar2.diff == L_120_ then
			return L_131_forvar2.plr
		end
	end
	return
end

local function L_68_func(L_132_arg1)
	if L_132_arg1 ~= nil then
		local L_133_ = L_24_(L_132_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_133_ ~= nil then
			return L_133_.RigType
		end
	end
	return
end

local function L_69_func(L_134_arg1, L_135_arg2)
	if L_24_(L_19_, tostring(L_135_arg2), "\70\105\110\100") == nil then
		local L_136_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_19_)
		local L_137_ = Instance["\110\101\119"]("\70\114\97\109\101", L_136_)
		local L_138_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_136_)

		L_136_.Name = tostring(L_135_arg2)
		L_136_.Adornee = L_134_arg1
		L_136_.AlwaysOnTop = true
		L_136_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_136_.Size = UDim2.new(0, 5, 0, 5)

		L_137_.Name = "\68\79\84"
		L_137_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_137_.BackgroundTransparency = 0.3
		L_137_.BorderSizePixel = 0
		L_137_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_137_.Size = UDim2.new(1.5, 0, 1.5, 0)
		L_137_.Visible = true
		L_137_.ZIndex = 10

		L_138_.Name = "\78\65\77\69"
		L_138_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_138_.BackgroundTransparency = 1
		L_138_.BorderSizePixel = 0
		L_138_.Position = UDim2.new(0, 0, 0, -40)
		L_138_.Size = UDim2.new(1, 0, 10, 0)
		L_138_.Visible = true
		L_138_.ZIndex = 10
		L_138_.Font = "\65\114\105\97\108\66\111\108\100"
		L_138_.FontSize = "\83\105\122\101\49\52"
		L_138_.Text = string.upper(tostring(L_135_arg2))
		L_138_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_134_arg1.Changed:Connect(function(L_139_arg1)
			if L_134_arg1 == nil and L_136_ ~= nil then
				L_136_:Destroy()
			end
			if tostring(L_139_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_139_arg1) == "\80\97\114\101\110\116" and L_136_ ~= nil then
				L_136_:Destroy()
			end
		end)

	end
end

local function L_70_func(L_140_arg1)
	local L_141_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_141_ ~= nil and L_140_arg1[3] ~= nil then
		local L_142_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_142_.Name = L_23_(25)
		L_142_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_142_.Anchored = true
		L_142_.CFrame = L_141_.CFrame
		L_142_.CanCollide = false
		L_142_.Transparency = 1
		if L_140_arg1[1] == "\80\97\114\116" then
			if L_140_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_143_ = 0
				if L_140_arg1[4] ~= nil and L_140_arg1[4] == "\79\102\102\115\101\116" then
					L_143_ = L_140_arg1[3].Size.Y / 2 + 3
				end
				local L_144_ = Instance["\110\101\119"]("\87\101\108\100", L_142_)
				L_144_.Part0 = L_141_
				L_144_.Part1 = L_142_
				L_142_.CFrame = CFrame["\110\101\119"](L_140_arg1[3].Position) * CFrame["\110\101\119"](0, L_143_, 0)
				L_14_:Wait()
				L_144_:Destroy()
			elseif L_140_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_145_ = 0.4
				if L_140_arg1[4] ~= nil and L_25_(L_140_arg1[4]) == "\110\117\109\98\101\114" then
					L_145_ = L_140_arg1[4]
				end
				repeat
					local L_146_ = Instance["\110\101\119"]("\87\101\108\100", L_142_)
					L_146_.Part0 = L_141_
					L_146_.Part1 = L_142_
					L_142_.CFrame = CFrame["\110\101\119"](L_142_.Position, L_140_arg1[3].Position)
					L_142_.CFrame = L_142_.CFrame + L_142_.CFrame.lookVector * L_145_
					L_16_:Wait()
					L_146_:Destroy()
					L_16_:Wait()
				until L_142_ == nil or (L_141_.Position - L_140_arg1[3].Position).magnitude < 3.5 or L_11_.Character == nil or L_141_.Parent == nil
			end
		elseif L_140_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_140_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_147_ = Instance["\110\101\119"]("\87\101\108\100", L_142_)
				L_147_.Part0 = L_141_
				L_147_.Part1 = L_142_
				L_142_.CFrame = L_140_arg1[3]
				L_14_:Wait()
				L_147_:Destroy()
			elseif L_140_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_148_ = 0.4
				if L_140_arg1[4] ~= nil and L_25_(L_140_arg1[4]) == "\110\117\109\98\101\114" then
					L_148_ = L_140_arg1[4]
				end
				repeat
					local L_149_ = Instance["\110\101\119"]("\87\101\108\100", L_142_)
					L_149_.Part0 = L_141_
					L_149_.Part1 = L_142_
					L_142_.CFrame = CFrame["\110\101\119"](L_142_.Position, L_140_arg1[3].p)
					L_142_.CFrame = L_142_.CFrame + L_142_.CFrame.lookVector * L_148_
					L_16_:Wait()
					L_149_:Destroy()
					L_16_:Wait()
				until L_142_ == nil or (L_141_.Position - L_140_arg1[3].p).magnitude < 3.5 or L_11_.Character == nil or L_141_.Parent == nil
			end
		end
		L_142_:Destroy()
	end
end


L_20_ = function(L_150_arg1)
	coroutine.wrap(function()
		if L_150_arg1 ~= nil and string.len(L_150_arg1) > 0 then

			local L_151_ = string.split(L_150_arg1, "\32")
			for L_152_forvar1 = 1, #L_151_ do
				L_151_[L_152_forvar1] = string.lower(L_151_[L_152_forvar1])
			end

			if L_151_[1] == "\119\97\108\107\115\112\101\101\100" or L_151_[1] == "\119\115" or L_151_[1] == "\115\112\101\101\100" and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
				local L_153_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_153_ ~= nil then
					L_153_.WalkSpeed = L_151_[2]
					L_22_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_151_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_151_[1] == "\106\117\109\112\112\111\119\101\114" or L_151_[1] == "\106\112" and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
				local L_154_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_154_ ~= nil then
					L_154_.JumpPower = L_151_[2]
					L_22_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_151_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_151_[1] == "\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_151_[1] == "\97\115" then
				if L_151_[2] == nil then
					L_42_ = not L_42_
					if L_42_ then
						L_22_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_22_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						local L_155_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_155_ ~= nil and L_155_.Health ~= 0 then
							for L_156_forvar1, L_157_forvar2 in next, L_155_:GetPlayingAnimationTracks() do
								L_157_forvar2:AdjustSpeed(1)
							end
						end
						L_22_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_151_[2] ~= nil and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
					L_43_ = L_151_[2]
					L_22_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\86\97\108\117\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\117\110\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_151_[1] == "\117\110\97\115" then
				L_42_ = false
				L_22_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\110\111\97\114\109\115" and L_11_.Character ~= nil then
				for L_158_forvar1, L_159_forvar2 in next, L_11_.Character:GetDescendants() do
					if L_159_forvar2:IsA("\66\97\115\101\80\97\114\116") then
						if L_68_func(L_11_) == Enum.HumanoidRigType.R6 then
							if tostring(L_159_forvar2) == "\82\105\103\104\116\32\65\114\109" or tostring(L_159_forvar2) == "\76\101\102\116\32\65\114\109" then
								L_159_forvar2:Destroy()
							end
						elseif L_68_func(L_11_) == Enum.HumanoidRigType.R15 then
							if tostring(L_159_forvar2) == "\82\105\103\104\116\85\112\112\101\114\65\114\109" or tostring(L_159_forvar2) == "\76\101\102\116\85\112\112\101\114\65\114\109" then
								L_159_forvar2:Destroy()
							end
						end
					end
				end
				L_22_("\65\114\109\115\32\114\101\109\111\118\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\110\111\108\101\103\115" and L_11_.Character ~= nil then
				for L_160_forvar1, L_161_forvar2 in next, L_11_.Character:GetDescendants() do
					if L_161_forvar2:IsA("\66\97\115\101\80\97\114\116") then
						if L_68_func(L_11_) == Enum.HumanoidRigType.R6 then
							if tostring(L_161_forvar2) == "\82\105\103\104\116\32\76\101\103" or tostring(L_161_forvar2) == "\76\101\102\116\32\76\101\103" then
								L_161_forvar2:Destroy()
							end
						elseif L_68_func(L_11_) == Enum.HumanoidRigType.R15 then
							if tostring(L_161_forvar2) == "\82\105\103\104\116\85\112\112\101\114\76\101\103" or tostring(L_161_forvar2) == "\76\101\102\116\85\112\112\101\114\76\101\103" then
								L_161_forvar2:Destroy()
							end
						end
					end
				end
				L_22_("\76\101\103\115\32\114\101\109\111\118\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\110\111\108\105\109\98\115" and L_11_.Character ~= nil then
				for L_162_forvar1, L_163_forvar2 in next, L_11_.Character:GetDescendants() do
					if L_163_forvar2:IsA("\66\97\115\101\80\97\114\116") then
						if L_68_func(L_11_) == Enum.HumanoidRigType.R6 then
							if tostring(L_163_forvar2) == "\82\105\103\104\116\32\65\114\109" or tostring(L_163_forvar2) == "\76\101\102\116\32\65\114\109" or tostring(L_163_forvar2) == "\82\105\103\104\116\32\76\101\103" or tostring(L_163_forvar2) == "\76\101\102\116\32\76\101\103" then
								L_163_forvar2:Destroy()
							end
						elseif L_68_func(L_11_) == Enum.HumanoidRigType.R15 then
							if tostring(L_163_forvar2) == "\82\105\103\104\116\85\112\112\101\114\76\101\103" or tostring(L_163_forvar2) == "\76\101\102\116\85\112\112\101\114\76\101\103" or tostring(L_163_forvar2) == "\82\105\103\104\116\85\112\112\101\114\65\114\109" or tostring(L_163_forvar2) == "\76\101\102\116\85\112\112\101\114\65\114\109" then
								L_163_forvar2:Destroy()
							end
						end
					end
				end
				L_22_("\76\105\109\98\115\32\114\101\109\111\118\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_151_[1] == "\118\115" then
				if L_151_[2] == nil then
					L_35_ = not L_35_
					if L_35_ then
						L_22_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					else
						L_22_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_151_[2] ~= nil and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
					L_36_ = L_151_[2]
					L_22_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_151_[1] == "\117\110\118\115" then
				L_35_ = false
				L_22_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_36_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\118\105\101\119" and L_151_[2] ~= nil then
				local L_164_ = L_66_func(L_151_[2])[1]
				if L_164_ ~= nil and L_164_.Character ~= nil then
					L_13_.CameraSubject = L_164_.Character
					L_22_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_164_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\117\110\118\105\101\119" and L_11_.Character ~= nil then
				L_13_.CameraSubject = L_11_.Character
				L_22_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_11_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\119\97\108\107\116\111" and L_151_[2] ~= nil then
				local L_165_ = L_66_func(L_151_[2])[1]
				if L_165_ ~= nil and L_165_.Character ~= nil then
					local L_166_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
					local L_167_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					local L_168_ = L_24_(L_165_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
					local L_169_ = L_24_(L_165_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_166_ ~= nil and L_167_ ~= nil and L_167_.Health ~= 0 and L_168_ ~= nil and L_169_ ~= nil and L_169_.Health ~= 0 then
						L_22_("\87\97\108\107\105\110\103\32\116\111\32" .. tostring(L_165_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						repeat
							local L_170_ = game:GetService("\80\97\116\104\102\105\110\100\105\110\103\83\101\114\118\105\99\101"):CreatePath()
							L_170_:ComputeAsync(L_166_.Position, L_168_.Position)
							local L_171_ = L_170_:GetWaypoints()
							if #L_171_ > 2 then
								for L_172_forvar1, L_173_forvar2 in next, L_171_ do
									L_167_:MoveTo(L_173_forvar2.Position)
									repeat
										L_14_:Wait()
									until L_165_ == nil or L_165_.Character == nil or L_166_ == nil or L_167_ == nil or L_167_.Health == 0 or L_168_ == nil or L_169_ == nil or L_169_.Health == 0 or (L_166_.Position - L_173_forvar2.Position).magnitude < 7
								end
							end
						until L_165_ == nil or L_165_.Character == nil or L_166_ == nil or L_167_ == nil or L_167_.Health == 0 or L_168_ == nil or L_169_ == nil or L_169_.Health == 0 or (L_166_.Position - L_168_.Position).magnitude < 7
					end
				end
			end

			if L_151_[1] == "\103\114\97\118\105\116\121" and L_151_[2] ~= nil and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_151_[2]
				L_22_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\102\108\121" then
				if L_151_[2] == nil then
					L_28_ = not L_28_
					L_30_ = nil
					L_22_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_28_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_151_[2] ~= nil and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
					L_29_ = L_151_[2]
					L_22_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_151_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\102\108\121\115\112\101\101\100" and L_25_(L_151_[2]) == "\110\117\109\98\101\114" then
				L_29_ = L_151_[2]
				L_22_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_151_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\117\110\102\108\121" then
				L_28_ = false
				L_22_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_28_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\102\108\111\97\116" then
				L_31_ = not L_31_
				if not L_31_ and L_34_ ~= nil then
					L_34_:Destroy()
					L_34_ = nil
				end
				local L_174_ = L_68_func(L_11_)
				if L_174_ ~= nil and L_174_ == Enum.HumanoidRigType.R15 then
					L_32_ = -3.65
				else
					L_32_ = -3.5
				end
				L_22_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_31_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\117\110\102\108\111\97\116" then
				L_31_ = false
				if L_34_ ~= nil then
					L_34_:Destroy()
				end
				L_22_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_31_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\119\97\108\107\102\108\105\110\103" or L_151_[1] == "\119\102" then
				L_40_ = not L_40_
				if L_40_ then
					local L_175_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_175_ ~= nil then
						L_175_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_22_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_40_ then
					local L_176_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_176_ ~= nil then
						L_176_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_22_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_151_[1] == "\117\110\119\102" then
				L_40_ = false
				local L_177_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_177_ ~= nil then
					L_177_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_22_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\116\114\97\109\112\111\108\105\110\101" then
				L_41_ = not L_41_
				if L_41_ then
					local L_178_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_178_ ~= nil then
						L_178_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_22_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_41_ then
					local L_179_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_179_ ~= nil then
						L_179_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_22_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\117\110\116\114\97\109\112\111\108\105\110\101" then
				L_41_ = false
				local L_180_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_180_ ~= nil then
					L_180_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_22_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_41_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\114\101\106\111\105\110" or L_151_[1] == "\114\106" then
				if #L_3_:GetPlayers() > 1 then
					L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
					L_22_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				else
					L_7_:Teleport(game.PlaceId)
					L_22_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_151_[1] == "\97\105\109\98\111\116" or L_151_[1] == "\97\98" then
				L_47_ = not L_47_
				L_22_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_47_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\117\110\97\105\109\98\111\116" or L_151_[1] == "\117\110\97\98" then
				L_47_ = false
				L_22_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_47_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\97\105\109\98\111\116\112\97\114\116" or L_151_[1] == "\97\98\112\97\114\116" and L_151_[2] ~= nil then
				L_51_ = L_151_[2]
				L_22_("\65\105\109\98\111\116\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_51_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\97\105\109\98\111\116\116\101\97\109" or L_151_[1] == "\97\116" then
				L_49_ = not L_49_
				L_22_("\65\105\109\98\111\116\84\101\97\109\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_49_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\99\97\109\108\111\99\107" or L_151_[1] == "\99\108" then
				if L_151_[2] ~= nil then
					local L_181_ = L_66_func(L_151_[2])[1]
					if L_181_ ~= nil then
						L_44_ = true
						L_45_ = tostring(L_181_)
						L_22_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_45_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_46_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_44_ = not L_44_
					L_22_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_44_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\117\110\99\97\109\108\111\99\107" or L_151_[1] == "\117\110\99\108" then
				L_44_ = false
				L_45_ = nil
				L_22_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_44_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_151_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_151_[1] == "\99\108\112\97\114\116" and L_151_[2] ~= nil then
				L_46_ = L_151_[2]
				L_22_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\100\105\101" then
				local L_182_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_182_ ~= nil then
					L_182_:ChangeState(15)
				end
				local L_183_ = L_24_(L_11_.Character, "\72\101\97\100", "\70\105\110\100")
				if L_183_ ~= nil then
					L_183_:Destroy()
				end
			end

			if L_151_[1] == "\102\108\105\110\103" then
				local L_184_ = L_66_func(L_151_[2])
				for L_185_forvar1 = 1, #L_184_ do
					if L_184_[L_185_forvar1] ~= nil then
						local L_186_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_187_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						local L_188_ = L_24_(L_184_[L_185_forvar1].Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_189_ = L_24_(L_184_[L_185_forvar1].Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_186_ ~= nil and L_187_ ~= nil and L_187_.Health ~= 0 and L_188_ ~= nil and L_189_ ~= nil and L_189_.Health ~= 0 then
							local L_190_ = L_186_.CFrame
							local L_191_ = L_188_.Position
							coroutine.wrap(function()
								repeat
									L_186_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
									L_13_.CameraSubject = L_184_[L_185_forvar1].Character
									L_186_.CFrame = CFrame["\110\101\119"](L_188_.Position) + Vector3["\110\101\119"](L_188_.Velocity.X, 0, L_188_.Velocity.Z) / 2.1
									L_15_:Wait()
								until L_11_.Character == nil or L_184_[L_185_forvar1] == nil or L_184_[L_185_forvar1].Character == nil or L_187_ == nil or L_189_ == nil or L_187_.Health == 0 or L_189_.Health == 0 or (L_188_.Position - L_191_).magnitude > 100
								if L_11_.Character ~= nil then
									L_13_.CameraSubject = L_11_.Character
									L_20_("\100\105\101")
								end
							end)()
						end
					end
				end
			end

			if L_151_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_151_[1] == "\116\102" then
				local L_192_ = L_66_func(L_151_[2])[1]
				if L_192_ ~= nil then
					local L_193_ = L_24_(L_192_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_193_ == nil then
						L_193_ = L_24_(L_192_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_194_ = L_24_(L_11_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_194_ == nil then
						L_194_ = L_24_(L_11_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_195_ = L_24_(L_11_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_194_ ~= nil and L_195_ ~= nil and L_193_ ~= nil then
						L_37_ = true
						L_38_ = L_195_.Grip
						L_39_ = L_195_
						L_22_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_192_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_195_.Parent = L_11_.Backpack
								local L_196_ = L_24_(L_195_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_196_ ~= nil then
									L_196_.Massless = true
								end
								local L_197_ = L_194_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_195_.Grip = L_197_:toObjectSpace(L_193_.CFrame):inverse()
								L_195_.Parent = L_11_.Character
								L_14_:Wait()
							until not L_37_ or L_195_ == nil or L_196_ == nil or L_11_.Character == nil or L_193_ == nil
							L_37_ = false
							if L_195_ ~= nil then
								L_195_.Parent = L_11_.Backpack
								L_195_.Grip = L_38_
								L_195_.Parent = L_11_.Character
							end
						end)()
					end
				end
			end
			if L_151_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_151_[1] == "\117\110\116\102" then
				L_37_ = false
				if L_39_ ~= nil and L_38_ ~= nil then
					L_39_.Parent = L_11_.Backpack
					L_39_.Grip = L_38_
					L_39_.Parent = L_11_.Character
					L_22_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_151_[1] == "\114\101\115\112\97\119\110" or L_151_[1] == "\114\101" and L_11_.Character ~= nil then
				local L_198_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_198_ ~= nil then
					L_20_("\100\105\101")
					if L_11_.Character ~= nil then
						L_11_.Character:ClearAllChildren()
					end
					local L_199_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_11_.Character = L_199_
					L_14_:Wait()
					L_11_.Character = L_11_.Character
					L_199_:Destroy()
					L_22_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_151_[1] == "\114\101\102\114\101\115\104" then
				local L_200_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_200_ ~= nil then
					local L_201_ = L_200_.CFrame
					local L_202_ = L_13_.CoordinateFrame
					L_20_("\114\101\115\112\97\119\110")
					L_11_.CharacterAdded:Wait()
					L_13_.CoordinateFrame = L_202_
					L_200_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_200_ ~= nil then
						L_200_.CFrame = L_201_
					end
				end
				L_22_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\101\115\112" then
				if L_151_[2] ~= nil then
					local L_203_ = L_66_func(L_151_[2])
					for L_204_forvar1 = 1, #L_203_ do
						if L_203_[L_204_forvar1] ~= nil then
							local L_205_ = L_24_(L_203_[L_204_forvar1].Character, "\72\101\97\100", "\87\97\105\116")
							if L_205_ ~= nil then
								L_69_func(L_205_, tostring(L_203_[L_204_forvar1]))
							end
							table.insert(L_59_, tostring(L_203_[L_204_forvar1]))
						end
					end
				else
					L_52_ = not L_52_
					if L_52_ then
						for L_206_forvar1, L_207_forvar2 in next, L_3_:GetPlayers() do
							if L_207_forvar2 ~= L_11_ then
								local L_208_ = L_24_(L_207_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
								if L_208_ ~= nil then
									L_69_func(L_208_, tostring(L_207_forvar2))
								end
							end
						end
						L_22_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_52_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					elseif not L_52_ then 
						L_19_:ClearAllChildren()
						L_59_ = {}
						L_22_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_52_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				end
			end

			if L_151_[1] == "\117\110\101\115\112" then
				if L_151_[2] ~= nil then
					local L_209_ = L_66_func(L_151_[2])
					for L_210_forvar1 = 1, #L_209_ do
						if L_209_[L_210_forvar1] ~= nil then
							local L_211_ = L_24_(L_19_, tostring(L_209_[L_210_forvar1]), "\70\105\110\100")
							if L_211_ ~= nil then
								L_211_:Destroy()
								L_22_(tostring(L_209_[L_210_forvar1]) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
							end
							for L_212_forvar1 = 1, #L_59_ do
								if L_59_[L_212_forvar1] == tostring(L_209_[L_212_forvar1]) then
									table.remove(L_59_, L_212_forvar1)
								end
							end
						end
					end
				else
					L_52_ = false
					L_19_:ClearAllChildren()
					L_59_ = {}
					L_22_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_52_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_151_[1] == "\101\115\112\116\101\97\109" or L_151_[1] == "\101\116" then
				L_53_ = not L_53_
				if not L_53_ then
					for L_213_forvar1, L_214_forvar2 in next, L_3_:GetPlayers() do
						if L_214_forvar2 ~= L_11_ and L_214_forvar2.Team == L_11_.Team then
							local L_215_ = L_24_(L_19_, tostring(L_214_forvar2), "\70\105\110\100")
							if L_215_ ~= nil then
								L_215_:Destroy()
							end
						end
					end
				elseif L_53_ then
					for L_216_forvar1, L_217_forvar2 in next, L_3_:GetPlayers() do
						if L_217_forvar2 ~= L_11_ then
							local L_218_ = L_24_(L_217_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
							if L_218_ ~= nil then
								L_69_func(L_218_, tostring(L_217_forvar2))
							end
						end
					end
				end
				L_22_("\69\115\112\84\101\97\109\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_53_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_151_[1] == "\115\101\114\118\101\114" and L_151_[2] ~= nil then
				coroutine.wrap(function()
					local L_219_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_151_[2] == "\104\111\112" then
						local L_220_ = {}
						for L_221_forvar1, L_222_forvar2 in next, L_219_ do
							if type(L_222_forvar2) == "\116\97\98\108\101" and L_222_forvar2.maxPlayers > L_222_forvar2.playing and L_222_forvar2.id ~= game.JobId then
								table.insert(L_220_, L_222_forvar2.id)
							end
						end
						if #L_220_ > 0 then
							L_22_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_22_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_151_[2] == "\98\105\103" then
						local L_223_ = 0
						local L_224_
						for L_225_forvar1, L_226_forvar2 in next, L_219_ do
							if L_226_forvar2.playing > L_223_ and L_226_forvar2.maxPlayers > L_226_forvar2.playing then
								L_223_ = L_226_forvar2.playing
								L_224_ = L_226_forvar2.id
							end
						end
						if L_224_ ~= nil then
							if L_224_ == game.JobId then
								L_22_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_22_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_224_)
							end
						elseif L_224_ == nil then
							L_22_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_151_[2] == "\112\105\110\103" then
						local L_227_ = 9e9
						local L_228_
						for L_229_forvar1, L_230_forvar2 in next, L_219_ do
							if L_230_forvar2.ping < L_227_ and L_230_forvar2.maxPlayers > L_230_forvar2.playing then
								L_227_ = L_230_forvar2.ping
								L_228_ = L_230_forvar2.id
							end
						end
						if L_228_ ~= nil then
							if L_228_ == game.JobId then
								L_22_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_22_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_228_)
							end
						elseif L_228_ == nil then
							L_22_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_151_[1] == "\116\112" or L_151_[1] == "\116\101\108\101\112\111\114\116" or L_151_[1] == "\116\111" and L_151_[2] ~= nil then
				local L_231_ = L_66_func(L_151_[2])
				for L_232_forvar1 = 1, #L_231_ do
					if L_231_[L_232_forvar1] ~= nil then
						local L_233_ = L_24_(L_231_[L_232_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_233_ == nil then
							L_233_ = L_24_(L_231_[L_232_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_233_ ~= nil then
							L_70_func({
								"\80\97\114\116",
								"\73\110\115\116\97\110\116",
								L_233_
							})
						end
					end
				end
			end

			if L_151_[1] == "\98\116\112" or L_151_[1] == "\98\116\101\108\101\112\111\114\116" or L_151_[1] == "\98\116\111" and L_151_[2] ~= nil then
				local L_234_ = L_66_func(L_151_[2])
				for L_235_forvar1 = 1, #L_234_ do
					if L_234_[L_235_forvar1] ~= nil then
						local L_236_ = L_24_(L_234_[L_235_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_236_ == nil then
							L_236_ = L_24_(L_234_[L_235_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_236_ ~= nil then
							L_70_func({
								"\80\97\114\116",
								"\80\114\111\103\114\101\115\115",
								L_236_,
								L_151_[3]
							})
						end
					end
				end
			end

		end
		return
	end)()
end

L_19_.Name = L_23_(25)
L_13_ = L_24_(workspace, "\67\97\109\101\114\97", "\87\97\105\116")

if not game:IsLoaded() then
	L_22_("\71\97\109\101\32\105\115\32\115\116\105\108\108\32\108\111\97\100\105\110\103\46\46\46", "\82\101\97\108\108\121\32\114\101\100")
	game.Loaded:Wait()
	L_22_("\71\97\109\101\32\108\111\97\100\101\100\33", "\76\105\109\101\32\103\114\101\101\110")
end

for L_237_forvar1, L_238_forvar2 in next, L_3_:GetPlayers() do
	if L_238_forvar2 ~= L_11_ then
		L_238_forvar2.CharacterAdded:Connect(function(L_239_arg1)
			local L_240_ = L_19_:FindFirstChild(tostring(L_238_forvar2))
			if L_240_ ~= nil then
				L_240_:Destroy()
			end
			if L_52_ or table.find(L_59_, tostring(L_238_forvar2)) then
				if L_53_ then
					local L_241_ = L_24_(L_239_arg1, "\72\101\97\100", "\87\97\105\116")
					if L_241_ ~= nil then
						L_69_func(L_241_, tostring(L_238_forvar2))
					end
				elseif not L_53_ and L_238_forvar2.Team ~= L_11_.Team then
					local L_242_ = L_24_(L_239_arg1, "\72\101\97\100", "\87\97\105\116")
					if L_242_ ~= nil then
						L_69_func(L_242_, tostring(L_238_forvar2))
					end
				end
			end
		end)
	end
end

L_3_.PlayerAdded:Connect(function(L_243_arg1)
	L_243_arg1.CharacterAdded:Connect(function(L_245_arg1)
		local L_246_ = L_19_:FindFirstChild(tostring(L_243_arg1))
		if L_246_ ~= nil then
			L_246_:Destroy()
		end
		if L_52_ or table.find(L_59_, tostring(L_243_arg1)) then
			if L_53_ then
				local L_247_ = L_24_(L_245_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_247_ ~= nil then
					L_69_func(L_247_, tostring(L_243_arg1))
				end
			elseif not L_53_ and L_243_arg1.Team ~= L_11_.Team then
				local L_248_ = L_24_(L_245_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_248_ ~= nil then
					L_69_func(L_248_, tostring(L_243_arg1))
				end
			end
		end
	end)
	local L_244_ = L_19_:FindFirstChild(tostring(L_243_arg1))
	if L_244_ ~= nil then
		L_244_:Destroy()
	end
	if L_52_ then
		if L_53_ then
			local L_249_ = L_24_(L_243_arg1.Character, "\72\101\97\100", "\87\97\105\116")
			if L_249_ ~= nil then
				L_69_func(L_249_, tostring(L_243_arg1))
			end
		elseif not L_53_ and L_243_arg1.Team ~= L_11_.Team then
			local L_250_ = L_24_(L_243_arg1.Character, "\72\101\97\100", "\87\97\105\116")
			if L_250_ ~= nil then
				L_69_func(L_250_, tostring(L_243_arg1))
			end
		end
	end
end)

L_3_.PlayerRemoving:Connect(function(L_251_arg1)
	for L_253_forvar1 = 1, #L_59_ do
		if L_59_[L_253_forvar1] == tostring(L_251_arg1) then
			table.remove(L_59_, L_253_forvar1)
		end
	end
	local L_252_ = L_24_(L_19_, tostring(L_251_arg1), "\70\105\110\100")
	if L_252_ ~= nil then
		L_252_:Destroy()
	end
end)

L_11_.Chatted:Connect(function(L_254_arg1)
	if string.sub(string.lower(L_254_arg1), 1, string.len(L_17_)) == string.lower(L_17_) then
		L_20_(string.sub(L_254_arg1, string.len(L_17_) + 1, string.len(L_254_arg1)))
	end
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_255_arg1, L_256_arg2)
	if L_256_arg2 then
		Typing = true
	elseif not L_256_arg2 then
		Typing = false
		L_65_func(L_255_arg1.KeyCode, true)
		if table.find(L_60_, Enum.KeyCode.Q) and L_31_ then
			L_33_ = 0.5
		end
		if table.find(L_60_, Enum.KeyCode.E) and L_31_ then
			L_33_ = -0.5
		end
		if table.find(L_60_, L_18_) and not CmdBarTweening then
			L_21_()
			CmdBarTweening = true
			L_63_.Size = UDim2.new(0, 0, 0, 25)
			L_63_.Position = UDim2.new(1, 0, 1, -295)
			L_63_.Visible = true
			L_63_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_63_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_14_:Wait()
			L_63_:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
		if table.find(L_60_, Enum.KeyCode.LeftControl) then
			L_48_ = true
		end
	end
end)

L_6_.InputEnded:Connect(function(L_257_arg1, L_258_arg2)
	L_65_func(L_257_arg1.KeyCode, false)
	if not table.find(L_60_, Enum.KeyCode.Q) and L_31_ then
		L_33_ = 0
	end
	if not table.find(L_60_, Enum.KeyCode.E) and L_31_ then
		L_33_ = 0
	end
	if not table.find(L_60_, Enum.KeyCode.LeftControl) then
		L_48_ = false
	end
	if L_258_arg2 then
		Typing = true
	elseif not L_258_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_50_ ~= nil then
			L_50_:Disconnect()
			L_50_ = nil
		end
		if L_44_ and L_45_ ~= nil then
			local L_259_ = {}
			local L_260_ = L_24_(L_3_, L_45_, "\70\105\110\100")
			local L_261_
			if L_260_ ~= nil and L_260_.Character ~= nil then
				for L_262_forvar1, L_263_forvar2 in next, L_260_.Character:GetChildren() do
					if L_263_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_263_forvar2)) == string.lower(L_46_) then
						L_261_ = L_263_forvar2
						break
					end
				end
				if L_261_ ~= nil then
					L_13_.CoordinateFrame = CFrame["\110\101\119"](L_13_.CoordinateFrame.p, L_261_.Position)
				end
			end
		end
		if L_47_ and L_48_ then
			local L_264_ = {}
			local L_265_ = L_67_func(L_49_)
			local L_266_
			if L_265_ ~= nil and L_265_.Character ~= nil then
				local L_267_ = L_265_.Character
				for L_268_forvar1, L_269_forvar2 in next, L_265_.Character:GetChildren() do
					if L_269_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_269_forvar2)) == string.lower(L_51_) then
						L_266_ = L_269_forvar2
						break
					end
				end
				if L_266_ ~= nil then
					AimbotPartLastPos = L_266_.Position
					L_13_.CoordinateFrame = CFrame["\110\101\119"](L_13_.CoordinateFrame.p, L_266_.Position)
				end
				L_50_ = L_13_:GetPropertyChangedSignal("\67\111\111\114\100\105\110\97\116\101\70\114\97\109\101"):Connect(function()
					if L_266_ ~= nil and L_267_ ~= nil and (AimbotPartLastPos - L_266_.Position).magnitude < 100 then
						L_13_.CoordinateFrame = CFrame["\110\101\119"](L_13_.CoordinateFrame.p, L_266_.Position)
					end
				end)
			end
		end
		if L_42_ then
			local L_270_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_270_ ~= nil and L_270_.Health ~= 0 then
				for L_271_forvar1, L_272_forvar2 in next, L_270_:GetPlayingAnimationTracks() do
					L_272_forvar2:AdjustSpeed(L_43_)
				end
			end
		end
		L_14_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_35_ then
			local L_273_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_274_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_273_ ~= nil and L_274_ ~= nil then
				local L_275_ = Vector3["\110\101\119"](L_274_.MoveDirection.X, 0, L_274_.MoveDirection.Z) * L_36_ / 10
				L_273_.CFrame = L_273_.CFrame + L_275_
			end
		end
		if L_31_ then
			local L_276_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_34_ == nil then
				L_34_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_34_.Transparency = 1
				L_34_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_34_.Anchored = true
				L_34_.Name = L_23_(25)
			end
			if L_276_ ~= nil then
				L_34_.CFrame = L_276_.CFrame * CFrame["\110\101\119"](0, L_32_ + L_33_, 0)
			end
		end
		if L_40_ then
			local L_277_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_278_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_277_ ~= nil and L_278_ ~= nil then
				L_278_:ChangeState(11)
				L_277_.Velocity = Vector3["\110\101\119"](0, 1e38, 0)
				L_278_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		if L_41_ then
			local L_279_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_280_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_279_ ~= nil and L_280_ ~= nil then
				L_280_:ChangeState(11)
				L_279_.Velocity = Vector3["\110\101\119"](0, 150, 0)
				L_279_.CFrame = CFrame["\110\101\119"](L_279_.Position) * CFrame.Angles(math["\114\97\100"](90), 0, 0)
				L_280_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_15_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_28_ then
			local L_281_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_282_ = L_24_(L_11_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_281_ ~= nil and L_282_ ~= nil then
				if L_30_ ~= nil then
					L_281_.CFrame = L_30_
				end
				L_282_.PlatformStand = true
				local L_283_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_283_.Name = L_23_(25)
				L_283_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_283_.Anchored = true
				L_283_.CFrame = L_281_.CFrame
				L_283_.CanCollide = false
				L_283_.Transparency = 1
				local L_284_ = Instance["\110\101\119"]("\87\101\108\100", L_283_)
				L_284_.Part0 = L_281_
				L_284_.Part1 = L_283_
				if not Typing then
					if table.find(L_60_, Enum.KeyCode.W) then
						L_283_.CFrame = L_283_.CFrame + L_283_.CFrame.lookVector * L_29_
					end
					if table.find(L_60_, Enum.KeyCode.S) then
						L_283_.CFrame = L_283_.CFrame + L_283_.CFrame.lookVector * -L_29_
					end
					if table.find(L_60_, Enum.KeyCode.A) then
						L_283_.CFrame = L_283_.CFrame + L_283_.CFrame.rightVector * -L_29_
					end
					if table.find(L_60_, Enum.KeyCode.D) then
						L_283_.CFrame = L_283_.CFrame + L_283_.CFrame.rightVector * L_29_
					end
				end
				L_283_.CFrame = CFrame["\110\101\119"](L_281_.Position, L_13_.CoordinateFrame.lookVector * 9e9)
				L_30_ = L_281_.CFrame
				L_16_:Wait()
				if L_281_ ~= nil and L_30_ ~= nil then
					L_281_.CFrame = L_30_
				end
				if L_284_ ~= nil then
					L_284_:Destroy()
				end
				if L_283_ ~= nil then
					L_283_:Destroy()
				end
				if L_282_ ~= nil then
					L_282_.PlatformStand = false
				end
			end
		end
		L_16_:Wait()
	end
end)()

table.insert(L_58_, {
	Command = "\65\105\109\98\111\116\47\65\98",
	Description = "\65\105\109\115\32\100\105\114\101\99\116\108\121\32\97\116\32\112\101\114\115\111\110\32\99\108\111\115\101\115\116\32\116\111\n\121\111\117\114\32\109\111\117\115\101\44\32\100\101\102\97\117\108\116\32\107\101\121\32\105\115\76\101\102\116\67\111\110\116\114\111\108\n\116\111\32\116\111\103\103\108\101\46"
})
table.insert(L_58_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_58_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_58_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_58_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_58_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_58_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_58_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_58_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_58_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_58_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_58_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_58_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_58_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_58_, {
	Command = "\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_58_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_58_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_58_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_58_, {
	Command = "\65\110\105\109\97\116\105\111\110\83\112\101\101\100",
	Description = "\83\101\116\32\121\111\117\114\32\65\110\105\109\97\116\105\111\110\115\32\115\112\101\101\100\32\116\111\n\97\32\115\112\101\99\105\102\105\99\32\115\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\97\110\105\109\97\116\105\111\110\115\112\101\101\100\32\53"
})
table.insert(L_58_, {
	Command = "\86\105\101\119",
	Description = "\86\105\101\119\32\115\111\109\101\111\110\101\115\32\99\104\97\114\97\99\116\101\114\n\n\69\120\97\109\112\108\101\58\32\118\105\101\119\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_58_, {
	Command = "\78\111\65\114\109\115",
	Description = "\82\101\109\111\118\101\115\32\97\108\108\32\121\111\117\114\32\97\114\109\115"
})
table.insert(L_58_, {
	Command = "\78\111\76\101\103\115",
	Description = "\82\101\109\111\118\101\115\32\97\108\108\32\121\111\117\114\32\108\101\103\115"
})
table.insert(L_58_, {
	Command = "\78\111\76\105\109\98\115",
	Description = "\82\101\109\111\118\101\115\32\97\108\108\32\121\111\117\114\32\108\105\109\98\115"
})
table.insert(L_58_, {
	Command = "\87\97\108\107\84\111",
	Description = "\87\97\108\107\115\32\116\111\32\97\32\112\108\97\121\101\114"
})

table.insert(L_58_, {
	Command = "\67\97\109\108\111\99\107\80\97\114\116",
	Description = "\83\101\116\115\32\67\97\109\108\111\99\107\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_58_, {
	Command = "\65\105\109\98\111\116\80\97\114\116",
	Description = "\83\101\116\115\32\65\105\109\98\111\116\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_58_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\83\101\116\115\32\70\108\121\83\112\101\101\100\32\116\111\32\100\101\115\105\114\101\100\32\110\117\109\98\101\114"
})

table.insert(L_58_, {
	Command = "\65\105\109\98\111\116\84\101\97\109",
	Description = "\69\110\97\98\108\101\115\47\68\105\115\97\98\108\101\115\32\116\101\97\109\32\99\104\101\99\107"
})
table.insert(L_58_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\69\110\97\98\108\101\115\47\68\105\115\97\98\108\101\115\32\116\101\97\109\32\99\104\101\99\107"
})

table.insert(L_58_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_58_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_58_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})
table.insert(L_58_, {
	Command = "\85\110\67\97\109\108\111\99\107",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\67\97\109\108\111\99\107\32\99\111\109\109\97\110\100"
})
table.insert(L_58_, {
	Command = "\85\110\86\105\101\119",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\86\105\101\119\32\99\111\109\109\97\110\100"
})

-- // LOAD TIME END \\ --

L_22_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_22_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_22_("\74\111\105\110\32\116\104\101\32\100\105\115\99\111\114\100\32\105\102\32\121\111\117\32\119\111\117\108\100\32\108\105\107\101\58\32\100\105\115\99\111\114\100\46\103\103\47\72\119\117\72\120\89\71", "\66\114\105\103\104\116\32\118\105\111\108\101\116")
