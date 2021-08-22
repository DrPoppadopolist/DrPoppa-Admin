
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
local L_48_ = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"

local L_49_ = false
_G.BotSpeakers = {
	"\69\114\114\111\114\83\117\114\103\101"
}

local L_50_ = {}
local L_51_ = {}
local L_52_ = {}
local L_53_ = {}
local L_54_ = {}
local L_55_ = {}

for L_66_forvar1 = 1, 255 do
	table.insert(L_50_, string.char(L_66_forvar1))
end
for L_67_forvar1 = 1, 9 do
	table.insert(L_51_, tostring(L_67_forvar1))
end
for L_68_forvar1 = 65, 90 do
	table.insert(L_52_, string.char(L_68_forvar1))
end

-- // ERROR SPY THING? \\ --

L_9_.Error:Connect(function(L_69_arg1, L_70_arg2)
	if string.find(L_69_arg1, string.sub(tostring(script), 2, string.len(tostring(script)))) then
		local L_71_ = string.rep("\45", 25)
		L_71_ = tostring(L_69_arg1) .. "\n\n" .. tostring(L_70_arg2)
		if setclipboard then
			setclipboard(L_71_)
			L_21_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\115\101\116\32\116\111\32\121\111\117\114\32\99\108\105\112\98\111\97\114\100\44\32\115\101\110\100\32\116\104\105\115\32\116\111\32\99\104\97\114\108\105\101\35\52\56\49\49", "\82\101\97\108\108\121\32\114\101\100", 5)
		else
			print(L_71_)
			L_21_("\83\99\114\105\112\116\32\106\117\115\116\32\101\114\114\111\114\101\100\32\38\32\104\97\115\32\98\101\101\110\32\112\114\105\110\116\101\100\32\97\115\32\121\111\117\32\100\111\110\39\116\32\104\97\118\101\32\115\101\116\99\108\105\112\98\111\97\114\100\32\102\117\110\99\116\105\111\110\46", "\82\101\97\108\108\121\32\114\101\100", 5)
		end
	end
end)

L_22_ = function(L_72_arg1)
	local L_73_ = ""
	for L_74_forvar1 = 1, L_72_arg1 do
		L_73_ = L_73_ .. L_50_[math["\114\97\110\100\111\109"](1, #L_50_)]
	end
	return L_73_
end

-- // NOTIFICATION SYSTEM \\ --

local L_56_ = Instance["\110\101\119"]("\83\99\114\101\101\110\71\117\105", L_5_)
L_56_.Name = L_22_(25)

local L_57_ = Instance["\110\101\119"]("\70\114\97\109\101", L_56_)
L_57_.Size = UDim2.new(0, 200, 0, 250)
L_57_.Position = UDim2.new(0, 0, 1, -250)
L_57_.BorderSizePixel = 0
L_57_.Transparency = 1

local L_58_ = Instance["\110\101\119"]("\84\101\120\116\66\111\120", L_56_)
L_58_.Size = UDim2.new(0, 0, 0, 25)
L_58_.Position = UDim2.new(1, 0, 1, -295)
L_58_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_58_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_58_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
L_58_.TextSize = 15
L_58_.Text = ""
L_58_.Transparency = 0
L_58_.Visible = false
L_58_.BorderSizePixel = 2
L_58_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

local L_59_ = Instance["\110\101\119"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101", L_58_)
L_59_.Size = UDim2.new(1, 0, 0, 200)
L_59_.Position = UDim2.new(0, 0, 0, 31)
L_59_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
L_59_.Transparency = 0
L_59_.BorderSizePixel = 2
L_59_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_59_.ScrollBarThickness = 0

L_58_:GetPropertyChangedSignal("\84\101\120\116"):Connect(function()
	L_20_()
end)

L_58_.FocusLost:Connect(function()
	L_59_:ClearAllChildren()
	L_19_(L_58_.Text)
	L_58_.Text = ""
	L_58_.Size = UDim2.new(0, 0, 0, 25)
	L_58_.Position = UDim2.new(1, 0, 1, -295)
	L_58_.Visible = false
end)

L_21_ = function(L_75_arg1, L_76_arg2, L_77_arg3)
	coroutine.wrap(function()
		if not L_25_ and L_26_ then
			repeat
				L_13_:Wait()
			until L_25_
		end
		if L_25_ and L_26_ then
			repeat
				L_13_:Wait()
			until L_25_ and #L_57_:GetChildren() < 6
			L_25_ = false
			for L_79_forvar1, L_80_forvar2 in next, L_57_:GetChildren() do
				L_80_forvar2:TweenPosition(L_80_forvar2.Position + UDim2.new(0, 0, 0, -40), "\79\117\116", "\81\117\97\100", 0.2, false)
				L_13_:Wait()
			end
			wait(0.2)
			local L_78_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_57_)
			L_78_.Size = UDim2.new(0, 5 * string.len(L_75_arg1), 0, 35)
			L_78_.Position = UDim2.new(0.5, -92.5, 1, -40)
			L_78_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			L_78_.TextColor = BrickColor.new(L_76_arg2)
			L_78_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
			L_78_.TextScaled = true
			L_78_.Transparency = 0
			L_78_.BorderSizePixel = 2
			L_78_.Text = L_75_arg1
			L_78_.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
			coroutine.wrap(function()
				if L_77_arg3 ~= nil and L_24_(L_77_arg3) == "\110\117\109\98\101\114" then
					wait(5 + L_77_arg3)
				else
					wait(5)
				end
				for L_81_forvar1 = 1, 16 do
					L_78_.Transparency = L_78_.Transparency + 0.1 / 2
					L_13_:Wait()
				end
				L_78_:Destroy()
			end)()
			L_13_:Wait()
			L_25_ = true
		end
	end)()
	return
end

local function L_60_func(L_82_arg1, L_83_arg2)
	if L_83_arg2 then
		table.insert(L_55_, L_82_arg1)
	elseif not L_83_arg2 then
		for L_84_forvar1 = 1, #L_55_ do
			if L_55_[L_84_forvar1] == L_82_arg1 then
				table.remove(L_55_, L_84_forvar1)
			end
		end
	end
end

L_24_ = function(L_85_arg1)
	if L_85_arg1 ~= nil then
		local L_86_ = false
		local L_87_ = false
		for L_88_forvar1 = 1, string.len(L_85_arg1) do
			if table.find(L_52_, string.sub(L_85_arg1, L_88_forvar1, L_88_forvar1)) then
				L_86_ = true
			end
			if table.find(L_51_, string.sub(L_85_arg1, L_88_forvar1, L_88_forvar1)) then
				L_87_ = true
			end
		end
		if L_86_ and not L_87_ then
			return "\115\116\114\105\110\103"
		elseif L_87_ and not L_86_ then
			return "\110\117\109\98\101\114"
		end
	end
	return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108"
end

L_20_ = function()
	L_59_:ClearAllChildren()
	local L_89_ = 0
	for L_90_forvar1, L_91_forvar2 in next, L_53_ do
		local L_92_ = string.split(L_91_forvar2.Command, "\47")
		for L_93_forvar1 = 1, #L_92_ do
			if string.lower(L_58_.Text) == string.lower(string.sub(L_92_[L_93_forvar1], 1, string.len(L_58_.Text))) and L_23_(L_59_, L_91_forvar2.Command, "\70\105\110\100") == nil then
				local L_94_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_59_)
				L_94_.Size = UDim2.new(1, -10, 0, 25)
				L_94_.Name = L_91_forvar2.Command
				if L_89_ == 0 then
					L_94_.Position = UDim2.new(0, 5, 0, 5)
				else
					L_94_.Position = UDim2.new(0, 5, 0, 30 * L_89_) + UDim2.new(0, 0, 0, 5)
				end
				L_94_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_94_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_94_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_94_.TextSize = 15
				L_94_.Text = L_91_forvar2.Command
				L_94_.Transparency = 0
				L_94_.BorderSizePixel = 0
				L_94_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				local L_95_ = Instance["\110\101\119"]("\70\114\97\109\101", L_58_)
				L_95_.Size = UDim2.new(0, 350, 0, 200)
				L_95_.Position = UDim2.new(0, -356, 0, 0)
				L_95_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107")
				L_95_.Transparency = 0
				L_95_.BorderSizePixel = 2
				L_95_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_95_.Visible = false

				local L_96_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_95_)
				L_96_.Size = UDim2.new(0, 330, 0, 185)
				L_96_.Position = UDim2.new(0.5, -165, 0.5, -92.5)
				L_96_.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99")
				L_96_.TextColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				L_96_.TextSize = 18
				L_96_.Font = "\71\111\116\104\97\109\66\108\97\99\107"
				L_96_.TextScaled = false
				L_96_.Transparency = 0
				L_96_.BorderSizePixel = 2
				L_96_.Text = L_91_forvar2.Description
				L_96_.TextYAlignment = Enum.TextYAlignment.Top
				L_96_.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")

				L_94_.MouseEnter:Connect(function()
					L_95_.Visible = true
					for L_97_forvar1 = 1, 20 do
						if not L_95_.Visible then
							break
						elseif L_97_forvar1 == 15 then
							L_95_.Visible = false
						end
						wait(1)
					end
				end)
				L_94_.MouseLeave:Connect(function()
					L_95_.Visible = false
				end)

				L_89_ = L_89_ + 1
				L_59_.CanvasSize = L_59_.CanvasSize + UDim2.new(0, 0, 2, 0)
			end
		end
	end
	if L_89_ < 7 then
		L_59_.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
end

local function L_61_func(L_98_arg1)
	local L_99_ = {}
	if L_98_arg1 == "\111\116\104\101\114\115" then
		for L_100_forvar1, L_101_forvar2 in next, L_3_:GetPlayers() do
			if L_101_forvar2 ~= L_10_ then
				table.insert(L_99_, L_101_forvar2)
			end
		end
	elseif L_98_arg1 == "\97\108\108" then
		for L_102_forvar1, L_103_forvar2 in next, L_3_:GetPlayers() do
			table.insert(L_99_, L_103_forvar2)
		end
	elseif L_98_arg1 == "\109\101" then
		table.insert(L_99_, L_10_)
	else
		for L_104_forvar1, L_105_forvar2 in next, L_3_:GetPlayers() do
			if string.sub(string.lower(tostring(L_105_forvar2)), 1, string.len(L_98_arg1)) == L_98_arg1 then
				table.insert(L_99_, L_105_forvar2)
			end
		end
	end
	if #L_99_ == 0 then
		L_21_("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63", "\82\101\97\108\108\121\32\114\101\100")
	end
	return L_99_
end

L_23_ = function(L_106_arg1, L_107_arg2, L_108_arg3, L_109_arg4)
	if L_106_arg1 ~= nil and L_107_arg2 ~= nil then
		if L_108_arg3 == "\70\105\110\100" then
			local L_110_ = L_106_arg1:FindFirstChildOfClass(L_107_arg2)
			if not L_110_ then
				L_110_ = L_106_arg1:FindFirstChild(L_107_arg2)
			end
			if L_110_ then
				return L_110_
			end
		elseif L_108_arg3 == "\87\97\105\116" then
			local L_111_
			if L_109_arg4 ~= nil then
				L_106_arg1:WaitForChild(L_107_arg2, L_109_arg4)
			else
				L_111_ = L_106_arg1:WaitForChild(L_107_arg2, 9e9)
			end
			if L_111_ then
				return L_111_
			end
		end
	end
	return
end

local function L_62_func()
	local L_112_ = {}
	local L_113_ = {}
	for L_115_forvar1, L_116_forvar2 in next, L_3_:GetPlayers() do
		if L_116_forvar2 ~= L_10_ then
			local L_117_ = L_116_forvar2.Character:FindFirstChildOfClass("\80\97\114\116")
			local L_118_ = L_23_(L_116_forvar2.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_117_ ~= nil and L_118_ ~= nil and L_118_.Health ~= 0 then
				local L_119_ = (L_117_.Position - L_12_.CoordinateFrame.p).magnitude
				local L_120_ = Ray.new(L_12_.CoordinateFrame.p, (L_11_.Hit.p - L_12_.CoordinateFrame.p).unit * L_119_)
				local L_121_, L_122_ = workspace:FindPartOnRay(L_120_, workspace)
				local L_123_ = math["\102\108\111\111\114"]((L_122_ - L_117_.Position).magnitude)
				L_112_[L_116_forvar2.Name .. tostring(L_115_forvar1)] = {}
				L_112_[L_116_forvar2.Name .. tostring(L_115_forvar1)].dist = L_119_
				L_112_[L_116_forvar2.Name .. tostring(L_115_forvar1)].plr = L_116_forvar2
				L_112_[L_116_forvar2.Name .. tostring(L_115_forvar1)].diff = L_123_
				table.insert(L_113_, L_123_)
			end
		end
	end
	if unpack(L_113_) == nil then
		return
	end
	local L_114_ = math["\102\108\111\111\114"](math["\109\105\110"](unpack(L_113_)))
	if L_114_ > 20 then
		return
	end
	for L_124_forvar1, L_125_forvar2 in next, L_112_ do
		if L_125_forvar2.diff == L_114_ then
			return L_125_forvar2.plr
		end
	end
	return
end

local function L_63_func(L_126_arg1)
	if L_126_arg1 ~= nil then
		local L_127_ = L_23_(L_126_arg1.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
		if L_127_ ~= nil then
			return L_127_.RigType
		end
	end
	return
end

local function L_64_func(L_128_arg1, L_129_arg2)
	if L_23_(L_18_, tostring(L_129_arg2), "\70\105\110\100") == nil then
		local L_130_ = Instance["\110\101\119"]("\66\105\108\108\98\111\97\114\100\71\117\105", L_18_)
		local L_131_ = Instance["\110\101\119"]("\70\114\97\109\101", L_130_)
		local L_132_ = Instance["\110\101\119"]("\84\101\120\116\76\97\98\101\108", L_130_)

		L_130_.Name = tostring(L_129_arg2)
		L_130_.Adornee = L_128_arg1
		L_130_.AlwaysOnTop = true
		L_130_.ExtentsOffset = Vector3["\110\101\119"](0, 1, 0)
		L_130_.Size = UDim2.new(0, 5, 0, 5)

		L_131_.Name = "\68\79\84"
		L_131_.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")
		L_131_.BackgroundTransparency = 0.3
		L_131_.BorderSizePixel = 0
		L_131_.Position = UDim2.new(-0.5, 0, -0.5, 0)
		L_131_.Size = UDim2.new(2, 0, 2, 0)
		L_131_.Visible = true
		L_131_.ZIndex = 10

		L_132_.Name = "\78\65\77\69"
		L_132_.BackgroundColor3 = Color3.new(255, 255, 255)
		L_132_.BackgroundTransparency = 1
		L_132_.BorderSizePixel = 0
		L_132_.Position = UDim2.new(0, 0, 0, -40)
		L_132_.Size = UDim2.new(1, 0, 10, 0)
		L_132_.Visible = true
		L_132_.ZIndex = 10
		L_132_.Font = "\65\114\105\97\108\66\111\108\100"
		L_132_.FontSize = "\83\105\122\101\49\52"
		L_132_.Text = string.upper(tostring(L_129_arg2))
		L_132_.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100")

		L_128_arg1.Changed:Connect(function(L_133_arg1)
			if L_128_arg1 == nil and L_130_ ~= nil then
				L_130_:Destroy()
			end
			if tostring(L_133_arg1) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103" or tostring(L_133_arg1) == "\80\97\114\101\110\116" and L_130_ ~= nil then
				L_130_:Destroy()
			end
		end) 
	end
end

local function L_65_func(L_134_arg1)
	local L_135_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
	if L_135_ ~= nil and L_134_arg1[3] ~= nil then
		local L_136_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
		L_136_.Name = L_22_(25)
		L_136_.Size = Vector3["\110\101\119"](1, 1, 1)
		L_136_.Anchored = true
		L_136_.CFrame = L_135_.CFrame
		L_136_.CanCollide = false
		L_136_.Transparency = 1
		if L_134_arg1[1] == "\80\97\114\116" then
			if L_134_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_137_ = 0
				if L_134_arg1[4] ~= nil and L_134_arg1[4] == "\79\102\102\115\101\116" then
					L_137_ = L_134_arg1[3].Size.Y / 2 + 3
				end
				local L_138_ = Instance["\110\101\119"]("\87\101\108\100", L_136_)
				L_138_.Part0 = L_135_
				L_138_.Part1 = L_136_
				L_136_.CFrame = CFrame["\110\101\119"](L_134_arg1[3].Position) * CFrame["\110\101\119"](0, L_137_, 0)
				L_13_:Wait()
				L_138_:Destroy()
			elseif L_134_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_139_ = 0.4
				if L_134_arg1[4] ~= nil and L_24_(L_134_arg1[4]) == "\110\117\109\98\101\114" then
					L_139_ = L_134_arg1[4]
				end
				repeat
					local L_140_ = Instance["\110\101\119"]("\87\101\108\100", L_136_)
					L_140_.Part0 = L_135_
					L_140_.Part1 = L_136_
					L_136_.CFrame = CFrame["\110\101\119"](L_136_.Position, L_134_arg1[3].Position)
					L_136_.CFrame = L_136_.CFrame + L_136_.CFrame.lookVector * L_139_
					L_13_:Wait()
					L_140_:Destroy()
				until L_136_ == nil or L_140_ == nil or (L_135_.Position - L_134_arg1[3].Position).magnitude < 3.5 or L_10_.Character == nil or L_135_.Parent == nil
			end
		elseif L_134_arg1[1] == "\80\111\115\105\116\105\111\110" then
			if L_134_arg1[2] == "\73\110\115\116\97\110\116" then
				local L_141_ = Instance["\110\101\119"]("\87\101\108\100", L_136_)
				L_141_.Part0 = L_135_
				L_141_.Part1 = L_136_
				L_136_.CFrame = L_134_arg1[3]
				L_13_:Wait()
				L_141_:Destroy()
			elseif L_134_arg1[2] == "\80\114\111\103\114\101\115\115" then
				local L_142_ = 0.4
				if L_134_arg1[4] ~= nil and L_24_(L_134_arg1[4]) == "\110\117\109\98\101\114" then
					L_142_ = L_134_arg1[4]
				end
				repeat
					local L_143_ = Instance["\110\101\119"]("\87\101\108\100", L_136_)
					L_143_.Part0 = L_135_
					L_143_.Part1 = L_136_
					L_136_.CFrame = CFrame["\110\101\119"](L_136_.Position, L_134_arg1[3].p)
					L_136_.CFrame = L_136_.CFrame + L_136_.CFrame.lookVector * L_142_
					L_13_:Wait()
					L_143_:Destroy()
				until L_136_ == nil or L_143_ == nil or (L_135_.Position - L_134_arg1[3].p).magnitude < 3.5 or L_10_.Character == nil or L_135_.Parent == nil
			end
		end
		L_136_:Destroy()
	end
end


L_19_ = function(L_144_arg1)
	coroutine.wrap(function()
		if L_144_arg1 ~= nil and string.len(L_144_arg1) > 0 then

			local L_145_ = string.split(L_144_arg1, "\32")
			for L_146_forvar1 = 1, #L_145_ do
				L_145_[L_146_forvar1] = string.lower(L_145_[L_146_forvar1])
			end

			if L_145_[1] == "\119\97\108\107\115\112\101\101\100" or L_145_[1] == "\119\115" or L_145_[1] == "\115\112\101\101\100" and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
				local L_147_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_147_ ~= nil then
					L_147_.WalkSpeed = L_145_[2]
					L_21_("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_145_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_145_[1] == "\106\117\109\112\112\111\119\101\114" or L_145_[1] == "\106\112" and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
				local L_148_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_148_ ~= nil then
					L_148_.JumpPower = L_145_[2]
					L_21_("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_145_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_145_[1] == "\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_145_[1] == "\97\115" then
				if L_145_[2] == nil then
					L_41_ = not L_41_
					if L_41_ then
						L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_21_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						local L_149_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_149_ ~= nil and L_149_.Health ~= 0 then
							for L_150_forvar1, L_151_forvar2 in next, L_149_:GetPlayingAnimationTracks() do
								L_151_forvar2:AdjustSpeed(1)
							end
						end
						L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_145_[2] ~= nil and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
					L_42_ = L_145_[2]
					L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\86\97\108\117\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\117\110\97\110\105\109\97\116\105\111\110\115\112\101\101\100" or L_145_[1] == "\117\110\97\115" then
				L_41_ = false
				L_21_("\65\110\105\109\97\116\105\111\110\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_42_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_145_[1] == "\118\115" then
				if L_145_[2] == nil then
					L_34_ = not L_34_
					if L_34_ then
						L_21_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						L_21_("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53", "\82\101\97\108\108\121\32\114\101\100")
					else
						L_21_("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_34_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				elseif L_145_[2] ~= nil and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
					L_35_ = L_145_[2]
					L_21_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100" or L_145_[1] == "\117\110\118\115" then
				L_34_ = false
				L_21_("\86\101\108\111\99\105\116\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_35_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\118\105\101\119" and L_145_[2] ~= nil then
				local L_152_ = L_61_func(L_145_[2])[1]
				if L_152_ ~= nil and L_152_.Character ~= nil then
					L_12_.CameraSubject = L_152_.Character
					L_21_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_152_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\117\110\118\105\101\119" and L_10_.Character ~= nil then
				L_12_.CameraSubject = L_10_.Character
				L_21_("\78\111\119\32\118\105\101\119\105\110\103\32" .. tostring(L_10_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\103\114\97\118\105\116\121" and L_145_[2] ~= nil and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
				workspace.Gravity = L_145_[2]
				L_21_("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(workspace.Gravity), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\102\108\121" then
				if L_145_[2] == nil then
					L_27_ = not L_27_
					L_29_ = nil
					L_21_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif L_145_[2] ~= nil and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
					L_28_ = L_145_[2]
					L_21_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_145_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\102\108\121\115\112\101\101\100" and L_24_(L_145_[2]) == "\110\117\109\98\101\114" then
				L_28_ = L_145_[2]
				L_21_("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_145_[2]), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_145_[1] == "\117\110\102\108\121" then
				L_27_ = false
				L_21_("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_27_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\102\108\111\97\116" then
				L_30_ = not L_30_
				if not L_30_ and L_33_ ~= nil then
					L_33_:Destroy()
					L_33_ = nil
				end
				local L_153_ = L_63_func(L_10_)
				if L_153_ ~= nil and L_153_ == Enum.HumanoidRigType.R15 then
					L_31_ = -3.65
				else
					L_31_ = -3.5
				end
				L_21_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_145_[1] == "\117\110\102\108\111\97\116" then
				L_30_ = false
				if L_33_ ~= nil then
					L_33_:Destroy()
				end
				L_21_("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_30_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\119\97\108\107\102\108\105\110\103" or L_145_[1] == "\119\102" then
				L_39_ = not L_39_
				if L_39_ then
					local L_154_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_154_ ~= nil then
						L_154_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_39_ then
					local L_155_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_155_ ~= nil then
						L_155_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\117\110\119\97\108\107\102\108\105\110\103" or L_145_[1] == "\117\110\119\102" then
				L_39_ = false
				local L_156_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_156_ ~= nil then
					L_156_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_21_("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_39_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\116\114\97\109\112\111\108\105\110\101" then
				L_40_ = not L_40_
				if L_40_ then
					local L_157_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_157_ ~= nil then
						L_157_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
					end
					L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				elseif not L_40_ then
					local L_158_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
					if L_158_ ~= nil then
						L_158_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
					L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\117\110\116\114\97\109\112\111\108\105\110\101" then
				L_40_ = false
				local L_159_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_159_ ~= nil then
					L_159_:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
				L_21_("\84\114\97\109\112\111\108\105\110\101\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_40_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end


			if L_145_[1] == "\114\101\106\111\105\110" or L_145_[1] == "\114\106" then
				if #L_3_:GetPlayers() > 1 then
					L_7_:TeleportToPlaceInstance(game.PlaceId, game.JobId)
					L_21_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				else
					L_7_:Teleport(game.PlaceId)
					L_21_("\82\101\106\111\105\110\105\110\103\46\46\46\32", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_145_[1] == "\97\105\109\98\111\116" or L_145_[1] == "\97\98" then
				L_46_ = not L_46_
				L_21_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_145_[1] == "\117\110\97\105\109\98\111\116" or L_145_[1] == "\117\110\97\98" then
				L_46_ = false
				L_21_("\65\105\109\98\111\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_46_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_145_[1] == "\97\105\109\98\111\116\112\97\114\116" or L_145_[1] == "\97\98\112\97\114\116" and L_145_[2] ~= nil then
				L_48_ = L_145_[2]
				L_21_("\65\105\109\98\111\116\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_48_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\99\97\109\108\111\99\107" or L_145_[1] == "\99\108" then
				if L_145_[2] ~= nil then
					local L_160_ = L_61_func(L_145_[2])[1]
					if L_160_ ~= nil then
						L_43_ = true
						L_44_ = tostring(L_160_)
						L_21_("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32" .. tostring(L_44_) .. "\32\97\116\32\116\104\101\32" .. tostring(L_45_) .. "\32\66\97\115\101\80\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				else
					L_43_ = not L_43_
					L_21_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end
			if L_145_[1] == "\117\110\99\97\109\108\111\99\107" or L_145_[1] == "\117\110\99\108" then
				L_43_ = false
				L_44_ = nil
				L_21_("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_43_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end
			if L_145_[1] == "\99\97\109\108\111\99\107\112\97\114\116" or L_145_[1] == "\99\108\112\97\114\116" and L_145_[2] ~= nil then
				L_45_ = L_145_[2]
				L_21_("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(L_45_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\100\105\101" then
				local L_161_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_161_ ~= nil then
					L_161_:ChangeState(15)
				end
			end

			if L_145_[1] == "\102\108\105\110\103" then
				local L_162_ = L_61_func(L_145_[2])
				for L_163_forvar1 = 1, #L_162_ do
					if L_162_[L_163_forvar1] ~= nil then
						local L_164_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_165_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						local L_166_ = L_23_(L_162_[L_163_forvar1].Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
						local L_167_ = L_23_(L_162_[L_163_forvar1].Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
						if L_164_ ~= nil and L_165_ ~= nil and L_165_.Health ~= 0 and L_166_ ~= nil and L_167_ ~= nil and L_167_.Health ~= 0 then
							local L_168_ = L_164_.CFrame
							local L_169_ = L_166_.Position
							coroutine.wrap(function()
								repeat
									L_164_.Velocity = Vector3["\110\101\119"](0, math["\104\117\103\101"], 0)
									L_12_.CameraSubject = L_162_[L_163_forvar1].Character
									L_164_.CFrame = CFrame["\110\101\119"](L_166_.Position) + Vector3["\110\101\119"](L_166_.Velocity.X, 0, L_166_.Velocity.Z) / 2.1
									L_14_:Wait()
								until L_10_.Character == nil or L_162_[L_163_forvar1] == nil or L_162_[L_163_forvar1].Character == nil or L_165_ == nil or L_167_ == nil or L_165_.Health == 0 or L_167_.Health == 0 or (L_166_.Position - L_169_).magnitude > 100
								if L_10_.Character ~= nil then
									L_12_.CameraSubject = L_10_.Character
									L_19_("\100\105\101")
								end
							end)()
						end
					end
				end
			end

			if L_145_[1] == "\116\111\111\108\102\111\108\108\111\119" or L_145_[1] == "\116\102" then
				local L_170_ = L_61_func(L_145_[2])[1]
				if L_170_ ~= nil then
					local L_171_ = L_23_(L_170_.Character, "\84\111\114\115\111", "\70\105\110\100")
					if L_171_ == nil then
						L_171_ = L_23_(L_170_.Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
					end
					local L_172_ = L_23_(L_10_.Character, "\82\105\103\104\116\32\65\114\109", "\70\105\110\100")
					if L_172_ == nil then
						L_172_ = L_23_(L_10_.Character, "\82\105\103\104\116\72\97\110\100", "\70\105\110\100")
					end
					local L_173_ = L_23_(L_10_.Character, "\84\111\111\108", "\70\105\110\100")
					if L_172_ ~= nil and L_173_ ~= nil and L_171_ ~= nil then
						L_36_ = true
						L_37_ = L_173_.Grip
						L_38_ = L_173_
						L_21_("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32" .. tostring(L_170_), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
						coroutine.wrap(function()
							repeat
								L_173_.Parent = L_10_.Backpack
								local L_174_ = L_23_(L_173_, "\72\97\110\100\108\101", "\70\105\110\100")
								if L_174_ ~= nil then
									L_174_.Massless = true
								end
								local L_175_ = L_172_.CFrame * CFrame["\110\101\119"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
								L_173_.Grip = L_175_:toObjectSpace(L_171_.CFrame):inverse()
								L_173_.Parent = L_10_.Character
								L_13_:Wait()
							until not L_36_ or L_173_ == nil or L_174_ == nil or L_10_.Character == nil or L_171_ == nil
							L_36_ = false
							if L_173_ ~= nil then
								L_173_.Parent = L_10_.Backpack
								L_173_.Grip = L_37_
								L_173_.Parent = L_10_.Character
							end
						end)()
					end
				end
			end
			if L_145_[1] == "\117\110\116\111\111\108\102\111\108\108\111\119" or L_145_[1] == "\117\110\116\102" then
				L_36_ = false
				if L_38_ ~= nil and L_37_ ~= nil then
					L_38_.Parent = L_10_.Backpack
					L_38_.Grip = L_37_
					L_38_.Parent = L_10_.Character
					L_21_("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32" .. tostring(Player), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_145_[1] == "\114\101\115\112\97\119\110" or L_145_[1] == "\114\101" and L_10_.Character ~= nil then
				local L_176_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
				if L_176_ ~= nil then
					L_19_("\100\105\101")
					if L_10_.Character ~= nil then
						L_10_.Character:ClearAllChildren()
					end
					local L_177_ = Instance["\110\101\119"]("\77\111\100\101\108", workspace)
					L_10_.Character = L_177_
					L_13_:Wait()
					L_10_.Character = L_10_.Character
					L_177_:Destroy()
					L_21_("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_145_[1] == "\114\101\102\114\101\115\104" then
				local L_178_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
				if L_178_ ~= nil then
					local L_179_ = L_178_.CFrame
					local L_180_ = L_12_.CoordinateFrame
					L_19_("\114\101\115\112\97\119\110")
					L_10_.CharacterAdded:Wait()
					L_12_.CoordinateFrame = L_180_
					L_178_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\87\97\105\116")
					if L_178_ ~= nil then
						L_178_.CFrame = L_179_
					end
				end
				L_21_("\82\101\102\114\101\115\104\101\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
			end

			if L_145_[1] == "\101\115\112" then
				if L_145_[2] ~= nil then
					local L_181_ = L_61_func(L_145_[2])
					for L_182_forvar1 = 1, #L_181_ do
						if L_181_[L_182_forvar1] ~= nil then
							local L_183_ = L_23_(L_181_[L_182_forvar1].Character, "\72\101\97\100", "\87\97\105\116")
							if L_183_ ~= nil then
								L_64_func(L_183_, tostring(L_181_[L_182_forvar1]))
							end
							table.insert(L_54_, tostring(L_181_[L_182_forvar1]))
						end
					end
				else
					EspEnabled = not EspEnabled
					if EspEnabled then
						for L_184_forvar1, L_185_forvar2 in next, L_3_:GetPlayers() do
							if L_185_forvar2 ~= L_10_ then
								local L_186_ = L_23_(L_185_forvar2.Character, "\72\101\97\100", "\87\97\105\116")
								if L_186_ ~= nil then
									L_64_func(L_186_, tostring(L_185_forvar2))
								end
							end
						end
						L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					elseif not EspEnabled then 
						L_18_:ClearAllChildren()
						L_54_ = {}
						L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
					end
				end
			end

			if L_145_[1] == "\117\110\101\115\112" then
				if L_145_[2] ~= nil then
					local L_187_ = L_61_func(L_145_[2])
					for L_188_forvar1 = 1, #L_187_ do
						if L_187_[L_188_forvar1] ~= nil then
							local L_189_ = L_23_(L_18_, tostring(L_187_[L_188_forvar1]), "\70\105\110\100")
							if L_189_ ~= nil then
								L_189_:Destroy()
								L_21_(tostring(L_187_[L_188_forvar1]) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
							end
							for L_190_forvar1 = 1, #L_54_ do
								if L_54_[L_190_forvar1] == tostring(L_187_[L_190_forvar1]) then
									table.remove(L_54_, L_190_forvar1)
								end
							end
						end
					end
				else
					EspEnabled = false
					L_18_:ClearAllChildren()
					L_54_ = {}
					L_21_("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32" .. tostring(EspEnabled), "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
				end
			end

			if L_145_[1] == "\115\101\114\118\101\114" and L_145_[2] ~= nil then
				coroutine.wrap(function()
					local L_191_ = L_8_:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data
					if L_145_[2] == "\104\111\112" then
						local L_192_ = {}
						for L_193_forvar1, L_194_forvar2 in next, L_191_ do
							if type(L_194_forvar2) == "\116\97\98\108\101" and L_194_forvar2.maxPlayers > L_194_forvar2.playing and L_194_forvar2.id ~= game.JobId then
								table.insert(L_192_, L_194_forvar2.id)
							end
						end
						if #L_192_ > 0 then
							L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
							L_7_:TeleportToPlaceInstance(game.PlaceId, val.id)
						else
							L_21_("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_145_[2] == "\98\105\103" then
						local L_195_ = 0
						local L_196_
						for L_197_forvar1, L_198_forvar2 in next, L_191_ do
							if L_198_forvar2.playing > L_195_ and L_198_forvar2.maxPlayers > L_198_forvar2.playing then
								L_195_ = L_198_forvar2.playing
								L_196_ = L_198_forvar2.id
							end
						end
						if L_196_ ~= nil then
							if L_196_ == game.JobId then
								L_21_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_196_)
							end
						elseif L_196_ == nil then
							L_21_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					elseif L_145_[2] == "\112\105\110\103" then
						local L_199_ = 9e9
						local L_200_
						for L_201_forvar1, L_202_forvar2 in next, L_191_ do
							if L_202_forvar2.ping < L_199_ and L_202_forvar2.maxPlayers > L_202_forvar2.playing then
								L_199_ = L_202_forvar2.ping
								L_200_ = L_202_forvar2.id
							end
						end
						if L_200_ ~= nil then
							if L_200_ == game.JobId then
								L_21_("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114", "\82\101\97\108\108\121\32\114\101\100")
							else
								L_21_("\84\101\108\101\112\111\114\116\105\110\103\46\46\46")
								L_7_:TeleportToPlaceInstance(game.PlaceId, L_200_)
							end
						elseif L_200_ == nil then
							L_21_("\85\109\109\109", "\82\101\97\108\108\121\32\114\101\100")
						end
					end
				end)()
			end

			if L_145_[1] == "\116\112" or L_145_[1] == "\116\101\108\101\112\111\114\116" or L_145_[1] == "\116\111" and L_145_[2] ~= nil then
				local L_203_ = L_61_func(L_145_[2])
				for L_204_forvar1 = 1, #L_203_ do
					if L_203_[L_204_forvar1] ~= nil then
						local L_205_ = L_23_(L_203_[L_204_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_205_ == nil then
							L_205_ = L_23_(L_203_[L_204_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_205_ ~= nil then
							L_65_func({
								"\80\97\114\116",
								"\73\110\115\116\97\110\116",
								L_205_
							})
						end
					end
				end
			end

			if L_145_[1] == "\98\116\112" or L_145_[1] == "\98\116\101\108\101\112\111\114\116" or L_145_[1] == "\98\116\111" and L_145_[2] ~= nil then
				local L_206_ = L_61_func(L_145_[2])
				for L_207_forvar1 = 1, #L_206_ do
					if L_206_[L_207_forvar1] ~= nil then
						local L_208_ = L_23_(L_206_[L_207_forvar1].Character, "\84\111\114\115\111", "\70\105\110\100")
						if L_208_ == nil then
							L_208_ = L_23_(L_206_[L_207_forvar1].Character, "\85\112\112\101\114\84\111\114\115\111", "\70\105\110\100")
						end
						if L_208_ ~= nil then
							L_65_func({
								"\80\97\114\116",
								"\80\114\111\103\114\101\115\115",
								L_208_,
								L_145_[3]
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

for L_209_forvar1, L_210_forvar2 in next, L_3_:GetPlayers() do
	if L_210_forvar2 ~= L_10_ then
		L_210_forvar2.CharacterAdded:Connect(function(L_211_arg1)
			if EspEnabled or table.find(L_54_, tostring(L_210_forvar2)) then
				local L_212_ = L_23_(L_211_arg1, "\72\101\97\100", "\87\97\105\116")
				if L_212_ ~= nil then
					L_64_func(L_212_, tostring(L_210_forvar2))
				end
			end
		end)
	end
end

L_3_.PlayerAdded:Connect(function(L_213_arg1)
	L_213_arg1.CharacterAdded:Connect(function(L_214_arg1)
		if EspEnabled or table.find(L_54_, tostring(L_213_arg1)) then
			local L_215_ = L_23_(L_214_arg1, "\72\101\97\100", "\87\97\105\116")
			if L_215_ ~= nil then
				L_64_func(L_215_, tostring(L_213_arg1))
			end
		end
	end)
	if EspEnabled then
		local L_216_ = L_23_(L_213_arg1.Character, "\72\101\97\100", "\87\97\105\116")
		if L_216_ ~= nil then
			L_64_func(L_216_, tostring(L_213_arg1))
		end
	end
end)

L_3_.PlayerRemoving:Connect(function(L_217_arg1)
	for L_219_forvar1 = 1, #L_54_ do
		if L_54_[L_219_forvar1] == tostring(L_217_arg1) then
			table.remove(L_54_, L_219_forvar1)
		end
	end
	local L_218_ = L_23_(L_18_, tostring(L_217_arg1), "\70\105\110\100")
	if L_218_ ~= nil then
		L_218_:Destroy()
	end
end)

L_10_.Chatted:Connect(function(L_220_arg1)
	if string.sub(string.lower(L_220_arg1), 1, string.len(L_16_)) == string.lower(L_16_) then
		L_19_(string.sub(L_220_arg1, string.len(L_16_) + 1, string.len(L_220_arg1)))
	end
end)

-- // USER INPUTS \\ --

L_6_.InputBegan:Connect(function(L_221_arg1, L_222_arg2)
	if L_222_arg2 then
		Typing = true
	elseif not L_222_arg2 then
		Typing = false
		L_60_func(L_221_arg1.KeyCode, true)
		if table.find(L_55_, Enum.KeyCode.Q) and L_30_ then
			L_32_ = 0.5
		end
		if table.find(L_55_, Enum.KeyCode.E) and L_30_ then
			L_32_ = -0.5
		end
		if table.find(L_55_, L_17_) and not CmdBarTweening then
			L_20_()
			CmdBarTweening = true
			L_58_.Size = UDim2.new(0, 0, 0, 25)
			L_58_.Position = UDim2.new(1, 0, 1, -295)
			L_58_.Visible = true
			L_58_:TweenSize(UDim2.new(0, 250, 0, 25), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_58_:TweenPosition(UDim2.new(1, -250, 1, -295), "\79\117\116", "\81\117\97\100", 0.2, false)
			L_13_:Wait()
			L_58_:CaptureFocus()
			wait(0.25)
			CmdBarTweening = false
		end
		if table.find(L_55_, Enum.KeyCode.LeftControl) then
			L_47_ = true
		end
	end
end)

L_6_.InputEnded:Connect(function(L_223_arg1, L_224_arg2)
	L_60_func(L_223_arg1.KeyCode, false)
	if not table.find(L_55_, Enum.KeyCode.Q) and L_30_ then
		L_32_ = 0
	end
	if not table.find(L_55_, Enum.KeyCode.E) and L_30_ then
		L_32_ = 0
	end
	if not table.find(L_55_, Enum.KeyCode.LeftControl) then
		L_47_ = false
	end
	if L_224_arg2 then
		Typing = true
	elseif not L_224_arg2 then
		Typing = false
	end
end)

-- // LOOPS \\ --

coroutine.wrap(function()
	while true do
		if L_43_ and L_44_ ~= nil then
			local L_225_ = {}
			local L_226_ = L_23_(L_3_, L_44_, "\70\105\110\100")
			local L_227_
			if L_226_ ~= nil and L_226_.Character ~= nil then
				for L_228_forvar1, L_229_forvar2 in next, L_226_.Character:GetChildren() do
					if L_229_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_229_forvar2)) == string.lower(L_45_) then
						L_227_ = L_229_forvar2
						break
					end
				end
				if L_227_ ~= nil then
					L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_227_.Position)
				end
			end
		end
		if L_46_ and L_47_ then
			local L_230_ = {}
			local L_231_ = L_62_func()
			local L_232_
			if L_231_ ~= nil and L_231_.Character ~= nil then
				for L_233_forvar1, L_234_forvar2 in next, L_231_.Character:GetChildren() do
					if L_234_forvar2:IsA("\66\97\115\101\80\97\114\116") and string.lower(tostring(L_234_forvar2)) == string.lower(L_48_) then
						L_232_ = L_234_forvar2
						break
					end
				end
				if L_232_ ~= nil then
					L_12_.CoordinateFrame = CFrame["\110\101\119"](L_12_.CoordinateFrame.p, L_232_.Position)
				end
			end
		end
		if L_41_ then
			local L_235_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_235_ ~= nil and L_235_.Health ~= 0 then
				for L_236_forvar1, L_237_forvar2 in next, L_235_:GetPlayingAnimationTracks() do
					L_237_forvar2:AdjustSpeed(L_42_)
				end
			end
		end
		L_13_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_34_ then
			local L_238_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_239_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_238_ ~= nil and L_239_ ~= nil then
				local L_240_ = Vector3["\110\101\119"](L_239_.MoveDirection.X, 0, L_239_.MoveDirection.Z) * L_35_
				L_238_.CFrame = L_238_.CFrame + L_240_
			end
		end
		if L_30_ then
			local L_241_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			if L_33_ == nil then
				L_33_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_33_.Transparency = 1
				L_33_.Size = Vector3["\110\101\119"](6, 1, 6)
				L_33_.Anchored = true
				L_33_.Name = L_22_(25)
			end
			if L_241_ ~= nil then
				L_33_.CFrame = L_241_.CFrame * CFrame["\110\101\119"](0, L_31_ + L_32_, 0)
			end
		end
		if L_39_ then
			local L_242_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_243_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_242_ ~= nil and L_243_ ~= nil then
				L_243_:ChangeState(11)
				L_242_.Velocity = Vector3["\110\101\119"](0, 1e38, 0)
				L_243_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		if L_40_ then
			local L_244_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_245_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_244_ ~= nil and L_245_ ~= nil then
				L_245_:ChangeState(11)
				L_244_.Velocity = Vector3["\110\101\119"](0, 150, 0)
				L_244_.CFrame = CFrame["\110\101\119"](L_244_.Position) * CFrame.Angles(math["\114\97\100"](90), 0, 0)
				L_245_:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			end
		end
		L_14_:Wait()
	end
end)()

coroutine.wrap(function()
	while true do
		if L_27_ then
			local L_246_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", "\70\105\110\100")
			local L_247_ = L_23_(L_10_.Character, "\72\117\109\97\110\111\105\100", "\70\105\110\100")
			if L_246_ ~= nil and L_247_ ~= nil then
				if L_29_ ~= nil then
					L_246_.CFrame = L_29_
				end
				L_247_.PlatformStand = true
				local L_248_ = Instance["\110\101\119"]("\80\97\114\116", workspace)
				L_248_.Name = L_22_(25)
				L_248_.Size = Vector3["\110\101\119"](1, 1, 1)
				L_248_.Anchored = true
				L_248_.CFrame = L_246_.CFrame
				L_248_.CanCollide = false
				L_248_.Transparency = 1
				local L_249_ = Instance["\110\101\119"]("\87\101\108\100", L_248_)
				L_249_.Part0 = L_246_
				L_249_.Part1 = L_248_
				if not Typing then
					if table.find(L_55_, Enum.KeyCode.W) then
						L_248_.CFrame = L_248_.CFrame + L_248_.CFrame.lookVector * L_28_
					end
					if table.find(L_55_, Enum.KeyCode.S) then
						L_248_.CFrame = L_248_.CFrame + L_248_.CFrame.lookVector * -L_28_
					end
					if table.find(L_55_, Enum.KeyCode.A) then
						L_248_.CFrame = L_248_.CFrame + L_248_.CFrame.rightVector * -L_28_
					end
					if table.find(L_55_, Enum.KeyCode.D) then
						L_248_.CFrame = L_248_.CFrame + L_248_.CFrame.rightVector * L_28_
					end
				end
				L_248_.CFrame = CFrame["\110\101\119"](L_246_.Position, L_12_.CoordinateFrame.lookVector * 9e9)
				L_29_ = L_246_.CFrame
				L_15_:Wait()
				if L_246_ ~= nil and L_29_ ~= nil then
					L_246_.CFrame = L_29_
				end
				if L_249_ ~= nil then
					L_249_:Destroy()
				end
				if L_248_ ~= nil then
					L_248_:Destroy()
				end
				if L_247_ ~= nil then
					L_247_.PlatformStand = false
				end
			end
		end
		L_15_:Wait()
	end
end)()

table.insert(L_53_, {
	Command = "\65\105\109\98\111\116\47\65\98",
	Description = "\65\105\109\115\32\100\105\114\101\99\116\108\121\32\97\116\32\112\101\114\115\111\110\32\99\108\111\115\101\115\116\32\116\111\n\121\111\117\114\32\109\111\117\115\101\44\32\76\101\102\116\67\111\110\116\114\111\108\32\116\111\32\116\111\103\103\108\101\46"
})
table.insert(L_53_, {
	Command = "\69\115\112",
	Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114"
})
table.insert(L_53_, {
	Command = "\70\108\121",
	Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50"
})
table.insert(L_53_, {
	Command = "\70\108\111\97\116",
	Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46"
})
table.insert(L_53_, {
	Command = "\70\108\105\110\103",
	Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46"
})
table.insert(L_53_, {
	Command = "\82\101\106\111\105\110",
	Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101"
})
table.insert(L_53_, {
	Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115",
	Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46"
})
table.insert(L_53_, {
	Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100",
	Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48"
})
table.insert(L_53_, {
	Command = "\74\117\109\112\80\111\119\101\114\47\106\112",
	Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48"
})
table.insert(L_53_, {
	Command = "\87\97\108\107\70\108\105\110\103\47\119\102",
	Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109"
})
table.insert(L_53_, {
	Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102",
	Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46"
})
table.insert(L_53_, {
	Command = "\82\101\102\114\101\115\104",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46"
})
table.insert(L_53_, {
	Command = "\82\101\115\112\97\119\110",
	Description = "\82\101\115\112\97\119\110\115\32\121\111\117"
})
table.insert(L_53_, {
	Command = "\83\101\114\118\101\114",
	Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103"
})
table.insert(L_53_, {
	Command = "\67\97\109\108\111\99\107",
	Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46"
})
table.insert(L_53_, {
	Command = "\71\114\97\118\105\116\121",
	Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48"
})
table.insert(L_53_, {
	Command = "\84\111\47\84\112\47\84\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_53_, {
	Command = "\66\116\111\47\66\116\112\47\66\116\101\108\101\112\111\114\116",
	Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110"
})
table.insert(L_53_, {
	Command = "\65\110\105\109\97\116\105\111\110\83\112\101\101\100",
	Description = "\83\101\116\32\121\111\117\114\32\65\110\105\109\97\116\105\111\110\115\32\115\112\101\101\100\32\116\111\n\97\32\115\112\101\99\105\102\105\99\32\115\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\97\110\105\109\97\116\105\111\110\115\112\101\101\100\32\53"
})
table.insert(L_53_, {
	Command = "\86\105\101\119",
	Description = "\86\105\101\119\32\115\111\109\101\111\110\101\115\32\99\104\97\114\97\99\116\101\114\n\n\69\120\97\109\112\108\101\58\32\118\105\101\119\32\98\117\105\108\100\101\114\109\97\110"
})

table.insert(L_53_, {
	Command = "\67\97\109\108\111\99\107\80\97\114\116",
	Description = "\83\101\116\115\32\67\97\109\108\111\99\107\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_53_, {
	Command = "\65\105\109\98\111\116\80\97\114\116",
	Description = "\83\101\116\115\32\65\105\109\98\111\116\80\97\114\116\32\116\111\32\100\101\115\105\114\101\100\32\80\97\114\116\n\105\110\115\105\100\101\32\116\104\101\105\114\32\67\104\97\114\97\99\116\101\114"
})
table.insert(L_53_, {
	Command = "\70\108\121\115\112\101\101\100",
	Description = "\83\101\116\115\32\70\108\121\83\112\101\101\100\32\116\111\32\100\101\115\105\114\101\100\32\110\117\109\98\101\114"
})

table.insert(L_53_, {
	Command = "\85\110\102\108\121",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\121\32\99\111\109\109\97\110\100"
})
table.insert(L_53_, {
	Command = "\85\110\102\108\111\97\116",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\70\108\111\97\116\32\99\111\109\109\97\110\100"
})
table.insert(L_53_, {
	Command = "\85\110\69\115\112",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\69\115\112\32\99\111\109\109\97\110\100"
})
table.insert(L_53_, {
	Command = "\85\110\67\97\109\108\111\99\107",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\67\97\109\108\111\99\107\32\99\111\109\109\97\110\100"
})
table.insert(L_53_, {
	Command = "\85\110\86\105\101\119",
	Description = "\85\110\100\111\101\115\32\116\104\101\32\86\105\101\119\32\99\111\109\109\97\110\100"
})

-- // LOAD TIME END \\ --

L_21_("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_21_("\84\111\111\107\32" .. tick() - L_1_ .. "\32\116\111\32\115\116\97\114\116", "\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101")
L_21_("\74\111\105\110\32\116\104\101\32\100\105\115\99\111\114\100\32\105\102\32\121\111\117\32\119\111\117\108\100\32\108\105\107\101\58\32\100\105\115\99\111\114\100\46\103\103\47\72\119\117\72\120\89\71", "\66\114\105\103\104\116\32\118\105\111\108\101\116")
