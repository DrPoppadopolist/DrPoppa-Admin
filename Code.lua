-- // LOAD TIME START \\ --

local start = tick()

local GS = game.GetService

-- // VARIABLES \\ --

local Players = GS(game,"\80\108\97\121\101\114\115\0\78\98\64\60\37\45\37\82\19\21\35\52\78\9\64")
local RunService = GS(game,"\82\117\110\83\101\114\118\105\99\101\0\26\76\38\100\43\33\26\27\24\29\58\66\65\1")
local CoreGui = GS(game,"\67\111\114\101\71\117\105\0\44\6\91\29\49\70\88\29\96\42\99\95\80\25\75")
local UserInputService = GS(game,"\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101\0\18\30\2\52\93\9\98\91\92\54\40\12\45\100\21")
local TeleportService = GS(game,"\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101\0\65\63\7\67\71\84\12\70\73\84\46\18\30\46")
local HttpService = GS(game,"\72\116\116\112\83\101\114\118\105\99\101\0\12\94\5\42\2\33\86\54\92\20\26\66\32\31\86")

local LocalPlayer = Players.LocalPlayer

local Camera

local RenderStepped = RunService.RenderStepped
local Heartbeat = RunService.Heartbeat
local Stepped = RunService.Stepped

local Prefix = [[;]]
local CommandBarHotkey = Enum.KeyCode.Quote

local EspFolder = Instance["\110\101\119\0\3\68\97\61\35\51\41\24\89\94\22\57\73\31"]("\70\111\108\100\101\114\0\56\70\11\42\14\29\10\8\54\53\96\40\81\24\65",CoreGui)

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
local CamlockPart = "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\84\91\50\75\41\3\52\82\6\50\98\21\58\83\88"

local BotMode = false
_G.BotSpeakers = {"\69\114\114\111\114\83\117\114\103\101\0\56\22\10\16\88\60\6\83\94\82\67\18\24\92\18"}

local AllCharacters = {}
local Numbers = {}
local Characters = {}
local CommandsList = {}

local Keys = {
    ["\87\0\41\59\19\68\56\89\41\42\15\44\68\72\36\29\3"] = false,
    ["\65\0\59\98\35\21\11\16\24\5\85\55\26\81\6\85\31"] = false,
    ["\83\0\100\79\28\27\94\70\88\35\35\78\29\86\74\90\58"] = false,
    ["\68\0\93\53\89\55\89\45\39\15\53\39\79\36\52\78"] = false,
    ["\81\0\18\36\55\41\57\7\7\49\13\17\60\44\99\62\8"] = false,
    ["\69\0\64\33\76\36\28\12\46\65\39\74\83\64\78\7\69"] = false,
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
    local temp = "\0\71\67\63\48\49\57\67\93\42\38\9\18\47\60\8"
    for i=1,length do
        temp = temp .. AllCharacters[math["\114\97\110\100\111\109\0\30\70\18\62\20\22\43\24\31\97\55\75\82\8\38"](1,#AllCharacters)]
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
            return "\115\116\114\105\110\103\0\82\71\4\44\96\74\95\74\73\54\18\88\83\73"
        elseif Number and not String then
            return "\110\117\109\98\101\114\0\18\36\95\98\5\36\50\15\83\59\78\16\48\94"
        end
    end
    return "\114\101\116\97\114\100\101\100\32\99\104\97\114\97\99\116\101\114\32\111\114\32\110\105\108\0\69\62\38\52\68\15\10\75\5\67\58\43\9"
end

-- // NOTIFICATION SYSTEM \\ --

local DrPoppaAdmin = Instance["\110\101\119\0\41\17\24\64\32\30\12\42\48\68\96\19\19\40\61"]("\83\99\114\101\101\110\71\117\105\0\46\15\35\7\6\100\50\50\96\54\56\43\25\63\27",CoreGui)
DrPoppaAdmin.Name = RandomString(25)

local NotificationMainFrame = Instance["\110\101\119\0\7\13\28\54\20\54\25\67\27\56\11\29\68\4\4"]("\70\114\97\109\101\0\3\83\6\85\7\9\15\78\23\29\44\61\12\79\42",DrPoppaAdmin)
NotificationMainFrame.Size = UDim2.new(0,200,0,250)
NotificationMainFrame.Position = UDim2.new(0,0,1,-250)
NotificationMainFrame.BorderSizePixel = 0
NotificationMainFrame.Transparency = 1

local CmdBarTweening = false

local CmdBar = Instance["\110\101\119\0\59\16\100\77\4\8\27\13\47\62\27\39\5\97\13"]("\84\101\120\116\66\111\120\0\17\17\20\64\85\47\19\28\26\7\98\55\89\8\11",DrPoppaAdmin)
CmdBar.Size = UDim2.new(0,0,0,25)
CmdBar.Position = UDim2.new(1,0,1,-295)
CmdBar.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99\0\97\16\39\90\69\5\86\49\17\56\77\97\19\68\31")
CmdBar.TextColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107\0\85\18\100\89\89\20\33\85\65\35\84\40\19\57\61")
CmdBar.Font = "\71\111\116\104\97\109\66\108\97\99\107\0\29\99\27\67\4\8\66\42\64\20\19\64\26\26\98"
CmdBar.TextSize = 15
CmdBar.Text = "\0\38\68\5\86\51\74\32\74\72\68\12\35\56\28\18"
CmdBar.Transparency = 0.2
CmdBar.Visible = false
CmdBar.BorderSizePixel = 2
CmdBar.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101\0\63\92\69\33\95\88\80\95\47\53\80\29\11\4\42")

local CmdBarGuide = Instance["\110\101\119\0\29\57\58\69\74\18\31\70\24\83\72\86\51\57\35"]("\83\99\114\111\108\108\105\110\103\70\114\97\109\101\0\58\87\31\88\100\76\69\49\99\86\32\29\33\52\39",CmdBar)
CmdBarGuide.Size = UDim2.new(1,0,0,200)
CmdBarGuide.Position = UDim2.new(0,0,0,31)
CmdBarGuide.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99\0\40\32\45\52\30\87\12\19\21\9\67\22\6\53\6")
CmdBarGuide.Transparency = 0.2
CmdBarGuide.BorderSizePixel = 2
CmdBarGuide.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101\0\51\77\53\89\2\10\74\43\57\41\4\29\96\90")
CmdBarGuide.ScrollBarThickness = 0

CmdBar:GetPropertyChangedSignal("\84\101\120\116\0\78\61\35\68\48\78\72\39\27\28\29\26\66\54\10"):Connect(function()
    UpdateCmdGuide()
end)

CmdBar.FocusLost:Connect(function()
    repeat RenderStepped:Wait() until not CmdBarTweening
    CmdBarGuide:ClearAllChildren()
    CmdBarTweening = true
    Handler(CmdBar.Text)
    CmdBar.Text = "\0\95\16\55\23\78\76\31\47\22\69\28\4\72\18\61"
    CmdBar:TweenSize(UDim2.new(0,0,0,25), "\79\117\116\0\80\51\21\83\12\65\56\96\28\80\61\91\93\67\56", "\81\117\97\100\0\42\96\46\39\19\2\12\88\44\41\58\43\11\73", 0.2, false)
    CmdBar:TweenPosition(UDim2.new(1,0,1,-295), "\79\117\116\0\72\85\37\99\57\4\2\19\59\8\50\31\30\100\75", "\81\117\97\100\0\96\77\4\37\53\49\85\87\90\85\74\17\88\93\50", 0.2, false)
    wait(0.25)
    CmdBar.Visible = false
    CmdBarTweening = false
end)

UpdateCmdGuide = function()
    CmdBarGuide:ClearAllChildren()
    local TempNum = 0
    for _,v in next,CommandsList do
        local args = string.split(v.Command,"\47\0\4\61\73\43\21\79\49\63\25\56\63\39\33\26\55")
        for i=1,#args do
            if string.lower(CmdBar.Text) == string.lower(string.sub(args[i],1,string.len(CmdBar.Text))) and GetInstance(CmdBarGuide,v.Command,"\70\105\110\100\0\41\83\21\41\95\42\47\1\96\95\81\47\45\91\33") == nil then
                local CommandName = Instance["\110\101\119\0\75\14\40\88\22\69\59\37\77\37\4\96\20\27\85"]("\84\101\120\116\76\97\98\101\108\0\98\13\52\59\37\54\66\12\18\62\68\40\40\7\100",CmdBarGuide)
                CommandName.Size = UDim2.new(1,-10,0,25)
                CommandName.Name = v.Command
                if TempNum == 0 then
                    CommandName.Position = UDim2.new(0,5,0,3)
                else
                    CommandName.Position = UDim2.new(0,5,0,30*TempNum) + UDim2.new(0,0,0,3)
                end
                CommandName.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99\0\31\71\54\23\48\42\77\54\14\59\30\84\41\18\30")
                CommandName.TextColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107\0\60\64\97\97\61\3\23\16\28\46\3\28\72\89")
                CommandName.Font = "\71\111\116\104\97\109\66\108\97\99\107\0\60\81\28\10\19\23\25\71\60\26\4\61\56\39\21"
                CommandName.TextSize = 15
                CommandName.Text = v.Command
                CommandName.Transparency = 0.2
                CommandName.BorderSizePixel = 0
                CommandName.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101\0\57\42\15\14\96\94\32\50\32\18\53\44\3\28\17")

                local DescriptionFrame = Instance["\110\101\119\0\81\63\54\25\44\33\63\57\69\43\18\37\75\93\60"]("\70\114\97\109\101\0\23\72\97\72\1\23\91\30\77\67\59\18\53\87\85",CmdBar)
                DescriptionFrame.Size = UDim2.new(0,350,0,200)
                DescriptionFrame.Position = UDim2.new(0,-356,0,0)
                DescriptionFrame.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99\0\71\65\32\28\13\60\77\72\12\21\44\13\57\55\40")
                DescriptionFrame.Transparency = 0.2
                DescriptionFrame.BorderSizePixel = 2
                DescriptionFrame.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101\0\15\66\65\41\91\96\85\49\2\75\58\82\93\9\72")
                DescriptionFrame.Visible = false

                local DescriptionText = Instance["\110\101\119\0\24\5\29\85\35\13\14\50\31\93\45\62\27\8"]("\84\101\120\116\76\97\98\101\108\0\38\5\90\76\95\29\74\32\76\41\41\57\95\36\64",DescriptionFrame)
                DescriptionText.Size = UDim2.new(0,330,0,185)
                DescriptionText.Position = UDim2.new(0.5,-165,0.5,-92.5)
                DescriptionText.BackgroundColor = BrickColor.new("\68\97\114\107\32\103\114\101\121\32\109\101\116\97\108\108\105\99\0\31\7\61\17\28\94\57\86\47\81\70\38\66\67\94")
                DescriptionText.TextColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107\0\91\53\51\70\25\74\74\52\12\14\81\65\56\11\83")
                DescriptionText.TextSize = 18
                DescriptionText.Font = "\71\111\116\104\97\109\66\108\97\99\107\0\22\28\72\57\28\100\97\20\88\22\95\57\36\36\75"
                DescriptionText.TextScaled = false
                DescriptionText.Transparency = 0.2
                DescriptionText.BorderSizePixel = 2
                DescriptionText.Text = v.Description
                DescriptionText.TextYAlignment = Enum.TextYAlignment.Top
                DescriptionText.BorderColor = BrickColor.new("\73\110\115\116\105\116\117\116\105\111\110\97\108\32\119\104\105\116\101\0\84\49\2\24\40\66\11\63\90\41\12\95\18\45\43")

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
                obj:TweenPosition(obj.Position + UDim2.new(0,0,0,-40), "\79\117\116\0\95\13\90\44\25\62\59\84\81\56\24\5\11\77\84", "\81\117\97\100\0\29\66\97\40\96\43\61\91\77\92\55\38\95\46\2", 0.2, false)
                RenderStepped:Wait()
            end
            wait(0.2)
            local NotificationLabel = Instance["\110\101\119\0\33\56\26\19\85\59\9\11\54\94\59\100\50\8\85"]("\84\101\120\116\76\97\98\101\108\0\100\96\81\85\6\62\71\87\41\96\46\70\91\78\46",NotificationMainFrame)
            NotificationLabel.Size = UDim2.new(0,5*string.len(message),0,35)
            NotificationLabel.Position = UDim2.new(0.5,-92.5,1,-40)
            NotificationLabel.BackgroundColor = BrickColor.new("\76\105\103\104\116\32\103\114\101\121\32\109\101\116\97\108\108\105\99\0\8\23\72\23\95\72\15\48\86\86\50\57\83\36\55")
            NotificationLabel.TextColor = BrickColor.new(color)
            NotificationLabel.Font = "\71\111\116\104\97\109\66\108\97\99\107\0\56\23\9\82\57\47\53\62\7\21\47\37\74\52"
            NotificationLabel.TextScaled = true
            NotificationLabel.Transparency = 0.2
            NotificationLabel.BorderSizePixel = 2
            NotificationLabel.Text = message
            NotificationLabel.BorderColor = BrickColor.new("\82\101\97\108\108\121\32\98\108\97\99\107\0\81\79\24\18\27\88\10\59\43\40\9\90\63\77\73")
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
    elseif stype == "\111\116\104\101\114\115\0\62\62\85\82\59\8\10\11\68\95\12\47\45\21\37" then
        for _,player in next,Players:GetPlayers() do
            if player ~= LocalPlayer then
                table.insert(PlayerTable,player)
            end
        end
    elseif stype == "\97\108\108\0\94\25\24\13\56\76\71\71\66\89\78\14\58\8\9" then
        for _,player in next,Players:GetPlayers() do
            table.insert(PlayerTable,player)
        end
    elseif stype == "\109\101\0\91\2\74\38\22\100\57\100\73\85\45\54\29\53\40" then
        table.insert(PlayerTable,LocalPlayer)
    end
    if #PlayerTable == 0 then
        Notify("\80\108\97\121\101\114\32\102\105\110\100\105\110\103\32\101\114\114\111\114\44\32\109\105\115\115\116\121\112\101\63\0\28\14\53\100\53\87\3\9\40\5\55\15\23\68\65","\82\101\97\108\108\121\32\114\101\100\0\16\36\99\75\68\79\51\43\13\71\26\73\53\35\59")
    end
    return PlayerTable
end

GetInstance = function(from,name,stype,timeout)
    if from ~= nil and name ~= nil then
        if stype == "\70\105\110\100\0\62\85\89\51\28\74\63\59\63\22\18\78\15\84\32" then
            local inst = from:FindFirstChildOfClass(name)
            if not inst then
                inst = from:FindFirstChild(name)
            end
            if inst then
                return inst
            end
        elseif stype == "\87\97\105\116\0\98\71\75\68\89\30\62\60\33\54\95\43\100\15\30" then
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
        local EHumanoid = GetInstance(player.Character,"\72\117\109\97\110\111\105\100\0\32\46\27\91\66\33\65\11\75\32\27\23\70\16","\70\105\110\100\0\57\71\70\21\82\48\50\50\45\83\32\23\20\88\4")
        if EHumanoid ~= nil then
            return EHumanoid.RigType
        end
    end
    return
end

local function EspAttach(part,name)
    if GetInstance(EspFolder,tostring(name),"\70\105\110\100\0\10\69\70\82\22\96\37\66\63\40\30\29\25\46\43") == nil then
        local BillboardGui = Instance["\110\101\119\0\65\83\15\62\38\68\37\90\19\12\65\58\14\8"]("\66\105\108\108\98\111\97\114\100\71\117\105\0\14\6\77\8\78\30\22\84\95\52\40\44\13\11\23",EspFolder)
        local Dot = Instance["\110\101\119\0\56\11\19\58\58\94\100\1\49\17\60\50\1\26\2"]("\70\114\97\109\101\0\60\72\55\40\12\86\23\47\57\62\37\82\88\20\55",BillboardGui)
        local Name = Instance["\110\101\119\0\64\70\14\96\7\73\44\20\72\4\63\48\1\67\5"]("\84\101\120\116\76\97\98\101\108\0\82\39\69\90\98\70\64\3\43\37\80\67\89\90\38",BillboardGui)

        BillboardGui.Name = tostring(name)
        BillboardGui.Adornee = part
        BillboardGui.AlwaysOnTop = true
        BillboardGui.ExtentsOffset = Vector3["\110\101\119\0\74\43\71\3\19\70\18\24\81\93\59\4\76\74"](0,1,0)
        BillboardGui.Size = UDim2.new(0,5,0,5)

        Dot.Name = "\68\79\84\0\53\61\8\79\30\18\55\31\99\27\68\19\38\52"
        Dot.BackgroundColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100\0\57\31\61\69\82\85\14\82\62\20\9\87\58\17\1")
        Dot.BackgroundTransparency = 0.3
        Dot.BorderSizePixel = 0
        Dot.Position = UDim2.new(-0.5,0,-0.5,0)
        Dot.Size = UDim2.new(2,0,2,0)
        Dot.Visible = true
        Dot.ZIndex = 10

        Name.Name = "\78\65\77\69\0\37\28\37\57\47\4\17\80\84\60\82\25\28\73\43"
        Name.BackgroundColor3 = Color3.new(255,255,255)
        Name.BackgroundTransparency = 1
        Name.BorderSizePixel = 0
        Name.Position = UDim2.new(0,0,0,-40)
        Name.Size = UDim2.new(1,0,10,0)
        Name.Visible = true
        Name.ZIndex = 10
        Name.Font = "\65\114\105\97\108\66\111\108\100\0\60\96\95\98\92\44\46\35\54\2\40\99\90\58\8"
        Name.FontSize = "\83\105\122\101\49\52\0\93\9\77\97\23\16\96\28\87\37\51\27\78\65"
        Name.Text = string.upper(tostring(name))
        Name.TextColor = BrickColor.new("\82\101\97\108\108\121\32\114\101\100\0\30\80\24\72\15\43\50\19\95\20\15\87\96\8")

        part.Changed:Connect(function(val)
            if tostring(val) == "\78\101\116\119\111\114\107\73\115\83\108\101\101\112\105\110\103\0\53\55\89\28\47\27\60\33\56\52\40\93\52\25\22" or tostring(val) == "\80\97\114\101\110\116\0\52\27\1\44\76\41\40\76\32\3\54\95\69\19" then
                BillboardGui:Destroy()
            end
        end)
    end
end

local function TeleportHandler(tbl)
    local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\73\50\54\48\73\87\10\95\63\7\48\14\69\99\92","\70\105\110\100\0\79\74\3\75\3\77\36\85\23\31\38\53\100\87\85")
    if HumanoidRootPart ~= nil and tbl[3] ~= nil then
        local part = Instance["\110\101\119\0\74\15\74\91\86\90\30\2\42\89\64\5\81\54"]("\80\97\114\116\0\48\61\59\9\36\70\56\70\1\77\95\29\82\97\29",workspace) part.Name = RandomString(25) part.Size = Vector3["\110\101\119\0\93\5\2\4\94\89\78\16\33\32\43\93\17\49"](1,1,1) part.Anchored = true part.CFrame = HumanoidRootPart.CFrame part.CanCollide = false part.Transparency = 1
        if tbl[1] == "\80\97\114\116\0\99\14\58\10\25\25\16\57\4\14\17\76\59\60\75" then
            if tbl[2] == "\73\110\115\116\97\110\116\0\8\14\15\59\83\82\3\44\70\16\78\23\26\77" then
                local Value = 0
                if tbl[4] ~= nil and tbl[4] == "\79\102\102\115\101\116\0\96\6\73\88\6\9\10\38\36\24\61\52\81\94\33" then
                    Value = tbl[3].Size.Y/2+3
                end
                local weld = Instance["\110\101\119\0\13\96\46\64\33\64\8\55\22\31\54\29\45\76\16"]("\87\101\108\100\0\48\89\84\94\52\39\1\12\45\40\77\64\69\20\43",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                part.CFrame = CFrame["\110\101\119\0\90\25\26\26\6\78\5\76\47\20\90\55\10\80\47"](tbl[3].Position) * CFrame["\110\101\119\0\88\56\41\14\83\23\9\2\22\8\64\12\70\17\18"](0,Value,0)
                weld:Destroy()
            elseif tbl[2] == "\80\114\111\103\114\101\115\115\0\22\64\93\93\32\1\42\12\99\40\45\58\78\63\43" then
                repeat
                    local weld = Instance["\110\101\119\0\60\83\60\64\25\1\7\97\63\21\65\2\100\32\8"]("\87\101\108\100\0\42\85\39\65\74\65\72\43\63\97\60\22\28\69\32",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                    part.CFrame = CFrame["\110\101\119\0\61\22\68\55\4\37\99\62\42\14\75\79\14\80\8"](part.Position,tbl[3].Position)
                    part.CFrame = part.CFrame + part.CFrame.lookVector * 0.5
                    weld:Destroy()
                    RenderStepped:Wait()
                until (HumanoidRootPart.Position - tbl[3].Position).magnitude < 3.5 or LocalPlayer.Character == nil or HumanoidRootPart.Parent == nil
            end
        elseif tbl[1] == "\80\111\115\105\116\105\111\110\0\85\11\80\93\59\18\69\91\36\90\19\56\46\48\31" then
            if tbl[2] == "\73\110\115\116\97\110\116\0\49\56\20\60\72\68\95\10\92\77\90\2\43\13\4" then
                local weld = Instance["\110\101\119\0\72\46\73\79\58\52\87\49\50\30\39\73\33\19"]("\87\101\108\100\0\28\30\90\27\95\44\37\99\31\52\93\76\94\19\74",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                part.CFrame = tbl[3]
                weld:Destroy()
            elseif tbl[2] == "\80\114\111\103\114\101\115\115\0\25\40\83\84\97\81\68\28\83\14\64\35\66\28" then
                repeat
                    local weld = Instance["\110\101\119\0\81\74\79\43\58\31\1\91\55\94\27\1\44\40"]("\87\101\108\100\0\26\67\43\27\37\20\9\19\83\82\83\30\44\64",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                    part.CFrame = CFrame["\110\101\119\0\46\41\78\74\14\1\37\72\50\10\13\29\84\61\71"](part.Position,tbl[3].p)
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

            local args = string.split(str,"\32\0\99\40\26\24\93\52\62\66\8\43\28\87\4\23\51")
            for i=1,#args do
                args[i] = string.lower(args[i])
            end

            if args[1] == "\119\97\108\107\115\112\101\101\100\0\75\7\73\46\92\23\27\61\71\33\29\22\54\33" or args[1] == "\119\115\0\57\35\77\33\90\9\72\50\52\97\25\10\61\23\24" or args[1] == "\115\112\101\101\100\0\76\7\76\32\19\30\21\6\48\72\7\45\18\19\59" and IsValue(args[2]) == "\110\117\109\98\101\114\0\82\68\63\8\65\35\53\29\30\18\37\95\69\82\97" then
                local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\68\19\38\13\70\5\24\36\20\51\94\33\27\62\44","\70\105\110\100\0\26\73\64\49\18\89\82\19\52\29\92\62\90\10\26")
                if Humanoid ~= nil then
                    Humanoid.WalkSpeed = args[2]
                    Notify("\72\117\109\97\110\111\105\100\32\87\97\108\107\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\70\59\54\61\31\30\43\12\16\10\59\38\24\26\22" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107\0\89\86\44\7\77\61\11\21\73\88\70\99\75\73\44")
                end
            end
            
            if args[1] == "\106\117\109\112\112\111\119\101\114\0\49\98\15\65\67\44\16\13\76\43\7\31\52\51\42" or args[1] == "\106\112\0\25\57\65\89\76\71\53\2\83\19\97\99\97\24\7" and IsValue(args[2]) == "\110\117\109\98\101\114\0\16\92\95\86\60\82\51\83\43\87\46\26\28\73\90" then
                local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\48\94\56\31\32\21\27\45\57\24\95\1\83\74\71","\70\105\110\100\0\1\15\69\7\78\62\63\80\97\74\12\27\56\51\30")
                if Humanoid ~= nil then
                    Humanoid.JumpPower = args[2]
                    Notify("\72\117\109\97\110\111\105\100\32\74\117\109\112\80\111\119\101\114\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\14\22\8\42\82\77\15\33\28\2\65\2\41\33\90" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107\0\28\68\25\35\69\41\9\44\39\10\96\83\57\82\28")
                end
            end

            if args[1] == "\118\101\108\111\99\105\116\121\115\112\101\101\100\0\95\41\4\91\8\52\80\46\88\60\65\56\22\18\56" or args[1] == "\118\115\0\9\78\83\50\85\26\92\100\74\88\84\72\18\42\14" then
                if args[2] == nil then
                    VelocitySpeed = not VelocitySpeed
                    if VelocitySpeed then
                        Notify("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32\0\73\55\40\13\38\60\45\13\4\39\8\42\73\94\2" .. tostring(VelocitySpeed),"\82\101\97\108\108\121\32\98\108\97\99\107\0\79\85\73\74\87\26\9\16\45\36\45\5\19\22")
                        Notify("\75\101\101\112\32\105\110\32\109\105\110\100\32\116\104\105\115\32\105\115\32\118\101\114\121\32\115\101\110\115\101\116\105\118\101\44\32\117\115\101\32\108\111\119\32\118\97\108\117\101\115\32\108\105\107\101\32\48\46\49\47\48\46\48\53\0\15\5\84\28\22\42\54\1\42\12\35\52\94\88\68","\82\101\97\108\108\121\32\114\101\100\0\86\5\46\84\89\29\51\4\60\72\12\69\96\3\77")
                    else
                        Notify("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\105\115\32\115\101\116\32\116\111\32\0\8\85\36\51\96\91\19\68\4\91\82\76\71\17\35" .. tostring(VelocitySpeed),"\82\101\97\108\108\121\32\98\108\97\99\107\0\61\58\69\44\98\94\71\42\62\18\71\82\95\96\65")
                    end
                elseif args[2] ~= nil and IsValue(args[2]) == "\110\117\109\98\101\114\0\74\63\23\87\31\66\99\87\99\17\96\9\82\23\99" then
                    VelocitySpeedValue = args[2]
                    Notify("\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\91\30\27\48\72\65\72\86\28\100\22\45\11\16\59" .. tostring(VelocitySpeedValue),"\82\101\97\108\108\121\32\98\108\97\99\107\0\62\54\79\73\74\79\67\97\22\76\29\27\80\93\30")
                end
            end
            if args[1] == "\117\110\118\101\108\111\99\105\116\121\115\112\101\101\100\0\17\3\26\31\2\12\45\77\86\71\49\97\59\96\11" or args[1] == "\117\110\118\115\0\38\33\90\99\96\43\17\3\5\57\38\27\83\16" then
                VelocitySpeed = false
            end

            if args[1] == "\103\114\97\118\105\116\121\0\88\48\35\42\18\67\16\17\47\44\93\16\39\75\33" and args[2] ~= nil and IsValue(args[2]) == "\110\117\109\98\101\114\0\94\40\8\52\9\21\80\8\25\71\93\20\83\37\66" then
                workspace.Gravity = args[2]
                Notify("\71\114\97\118\105\116\121\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\46\78\1\42\40\25\45\78\91\44\68\43\63\73\22" .. tostring(workspace.Gravity),"\82\101\97\108\108\121\32\98\108\97\99\107\0\75\83\38\8\91\60\92\70\30\90\78\65\66\1\59")
            end

            if args[1] == "\102\108\121\0\39\70\7\80\15\47\79\85\32\40\100\40\76\4" then
                if args[2] == nil then
                    Flying = not Flying
                    FlyTempCFrame = nil
                    Notify("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\46\43\32\17\84\17\72\100\73\92\73\79\75\94\83" .. tostring(Flying),"\82\101\97\108\108\121\32\98\108\97\99\107\0\87\45\47\37\51\3\39\84\35\69\62\10\2\68\30")
                elseif args[2] ~= nil and IsValue(args[2]) == "\110\117\109\98\101\114\0\29\24\77\16\70\22\62\99\24\85\35\98\47\50" then
                    FlySpeed = args[2]
                    Notify("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\5\65\1\73\2\53\40\13\55\27\90\96\66\32" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107\0\62\42\12\12\61\90\43\14\83\8\87\85\68\23\5")
                end
            end
            if args[1] == "\102\108\121\115\112\101\101\100\0\98\48\6\25\73\39\29\14\60\24\8\97\71\14" and IsValue(args[2]) == "\110\117\109\98\101\114\0\57\39\70\23\16\98\48\50\4\78\54\76\38\97\78" then
                FlySpeed = args[2]
                Notify("\70\108\121\83\112\101\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\94\90\33\54\74\86\64\10\78\46\25\76\12\77\43" .. tostring(args[2]),"\82\101\97\108\108\121\32\98\108\97\99\107\0\41\77\93\90\62\47\33\39\54\8\22\97\75\24\14")
            end
            if args[1] == "\117\110\102\108\121\0\68\86\48\68\84\50\71\95\22\1\46\2\27\98\62" then
                Flying = false
                Notify("\70\108\121\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\10\76\22\82\83\23\68\13\73\46\13\9\5\100\70" .. tostring(Flying),"\82\101\97\108\108\121\32\98\108\97\99\107\0\12\71\32\62\96\41\35\5\76\27\43\40\46\27\27")
            end

            if args[1] == "\102\108\111\97\116\0\81\94\71\94\17\37\95\80\21\25\14\23\55\15\22" then
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
                Notify("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\9\4\39\35\32\95\90\46\61\31\16\71\20\60" .. tostring(Floating),"\82\101\97\108\108\121\32\98\108\97\99\107\0\72\86\81\21\57\26\73\78\64\35\1\40\28\3")
            end
            if args[1] == "\117\110\102\108\111\97\116\0\62\12\74\94\52\86\89\70\62\9\56\21\7\83\48" then
                Floating = false
                if FloatPart ~= nil then
                    FloatPart:Destroy()
                end
                Notify("\70\108\111\97\116\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\58\96\49\50\100\53\68\89\30\23\84\91\71\80\85" .. tostring(Floating),"\82\101\97\108\108\121\32\98\108\97\99\107\0\57\12\57\26\92\82\29\99\77\37\57\11\15\35\46")
            end
            
            if args[1] == "\119\97\108\107\102\108\105\110\103\0\16\25\60\66\64\18\68\39\62\93\7\91\20\100\5" or args[1] == "\119\102\0\59\77\38\44\77\67\16\58\33\90\44\24\83\35\77" then
                WalkFling = not WalkFling
                if WalkFling then
                    local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\32\18\74\44\98\28\6\79\10\74\97\50\27\4\64","\70\105\110\100\0\43\47\96\98\39\2\51\39\71\24\98\23\28\74\84")
                    if Humanoid ~= nil then
                        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                    end
                    Notify("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\51\56\46\60\3\56\94\71\11\100\72\20\91\97\3" .. tostring(WalkFling),"\82\101\97\108\108\121\32\98\108\97\99\107\0\75\79\19\41\42\89\38\31\61\4\36\56\31\85")
                elseif not WalkFling then
                    local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\81\9\74\26\2\73\77\82\60\48\70\89\62\39\67","\70\105\110\100\0\73\63\49\82\51\60\26\52\14\73\42\72\13\56\84")
                    if Humanoid ~= nil then
                        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                    end
                    Notify("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\56\56\2\13\4\41\22\76\4\9\5\24\16\46\31" .. tostring(WalkFling),"\82\101\97\108\108\121\32\98\108\97\99\107\0\66\71\94\92\16\70\100\19\48\100\91\6\42\2\10")
                end
            end
            if args[1] == "\117\110\119\97\108\107\102\108\105\110\103\0\86\50\59\72\63\10\25\2\17\90\71\81\84\93\79" or args[1] == "\117\110\119\102\0\97\13\12\53\42\90\57\12\20\12\46\19\8\3\68" then
                WalkFling = false
                local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\3\15\64\75\74\71\19\19\79\84\20\77\41\41\15","\70\105\110\100\0\17\44\54\95\77\67\68\40\67\19\21\48\46\11")
                if Humanoid ~= nil then
                    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                end
                Notify("\87\97\108\107\70\108\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\44\11\27\48\76\31\85\75\59\19\17\2\73\12\52" .. tostring(WalkFling),"\82\101\97\108\108\121\32\98\108\97\99\107\0\41\79\6\47\22\54\33\40\13\74\58\33\8\61\55")
            end


            if args[1] == "\114\101\106\111\105\110\0\1\19\65\85\100\96\46\94\62\92\22\76\13\38\20" or args[1] == "\114\106\0\28\35\32\69\29\32\61\2\96\3\72\96\16\79\10" then
                TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
                Notify("\82\101\106\111\105\110\105\110\103\46\46\46\32\0\13\55\21\62\75\63\27\9\19\40\65\31\92\77\14","\82\101\97\108\108\121\32\98\108\97\99\107\0\77\36\74\90\28\70\8\58\11\48\30\27\51\27\76")
            end

            if args[1] == "\99\97\109\108\111\99\107\0\62\81\67\52\65\31\93\18\70\58\22\55\11\3\93" or args[1] == "\99\108\0\56\22\8\8\81\15\89\78\86\88\89\58\50\14\35" then
                if args[2] ~= nil then
                    local Player = GetPlayer(args[2])[1]
                    if Player ~= nil then
                        Camlocking = true
                        CamlockTarget = tostring(Player)
                        Notify("\78\111\119\32\99\97\109\108\111\99\107\105\110\103\32\0\56\27\12\79\59\87\56\39\79\26\51\77\3\80\75" .. tostring(CamlockTarget) .. "\32\97\116\32\116\104\101\32\0\32\65\42\94\86\2\96\65\7\64\85\24\79\48\32" .. tostring(CamlockPart) .. "\32\66\97\115\101\80\97\114\116\0\55\88\38\66\91\39\60\64\51\48\59\97\24\97\52","\82\101\97\108\108\121\32\98\108\97\99\107\0\24\59\16\13\8\43\11\96\99\94\14\31\39\53\46")
                    end
                else
                    Camlocking = not Camlocking
                    Notify("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\15\23\94\46\24\87\3\35\77\25\65\96\28\44\39" .. tostring(Camlocking),"\82\101\97\108\108\121\32\98\108\97\99\107\0\44\40\63\87\74\31\58\15\67\73\56\13\71\47\89")
                end
            end
            if args[1] == "\117\110\99\97\109\108\111\99\107\0\45\69\55\25\88\28\67\24\29\30\22\67\91\85\12" or args[1] == "\117\110\99\108\0\40\42\21\28\75\55\56\88\7\32\21\95\96\41\31" then
                Camlocking = false
                CamlockTarget = nil
                Notify("\67\97\109\108\111\99\107\105\110\103\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\6\99\29\37\47\37\56\74\21\47\98\78\15\11" .. tostring(Camlocking),"\82\101\97\108\108\121\32\98\108\97\99\107\0\33\22\81\57\12\17\83\57\56\77\90\30\97\7\20")
            end
            if args[1] == "\99\97\109\108\111\99\107\112\97\114\116\0\37\36\66\9\62\57\19\10\67\1\97\13\65\9\95" or args[1] == "\99\108\112\97\114\116\0\35\23\50\59\55\90\56\24\62\49\1\50\56\37\48" and args[2] ~= nil then
                CamlockPart = args[2]
                Notify("\67\97\109\108\111\99\107\80\97\114\116\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\55\21\54\83\53\85\14\40\80\79\37\96\95\54\54" .. tostring(CamlockPart),"\82\101\97\108\108\121\32\98\108\97\99\107\0\95\50\8\45\20\11\36\94\98\51\75\21\79")
            end

            if args[1] == "\100\105\101\0\16\60\53\81\54\65\62\24\26\44\43\71\65\13\93" then
                local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\93\23\4\41\65\97\98\84\60\52\100\2\95\49\70","\70\105\110\100\0\94\41\27\96\85\94\19\63\62\92\23\67\39\64\16")
                if Humanoid ~= nil then
                    Humanoid:ChangeState(15)
                end
            end

            if args[1] == "\102\108\105\110\103\0\49\82\68\25\10\71\75\81\12\72\26\14\69\92\72" then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\32\72\11\11\3\93\93\100\44\41\37\55\73\41\44","\70\105\110\100\0\27\78\28\22\36\20\52\26\6\38\77\42\48\26\45")
                    local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\76\63\15\20\41\85\79\43\86\56\87\84\20\26\88","\70\105\110\100\0\58\35\47\66\33\92\92\72\96\75\64\57\86\71\89")
                    local EHumanoidRootPart = GetInstance(Player.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\62\20\60\46\37\14\73\54\22\53\50\46\35\19\46","\70\105\110\100\0\5\66\21\79\68\73\87\100\99\20\41\92\27\11\24")
                    local EHumanoid = GetInstance(Player.Character,"\72\117\109\97\110\111\105\100\0\17\22\31\30\40\47\72\32\77\15\88\85\86\21\58","\70\105\110\100\0\30\14\9\27\71\4\32\61\21\95\89\68\11\63\22")
                    if HumanoidRootPart ~= nil and Humanoid ~= nil and Humanoid.Health ~= 0 and EHumanoidRootPart ~= nil and EHumanoid ~= nil and EHumanoid.Health ~= 0 then
                        local StartCFrame = HumanoidRootPart.CFrame
                        local EStartPosition = EHumanoidRootPart.Position
                        coroutine.wrap(function()
                            repeat
                                HumanoidRootPart.Velocity = Vector3["\110\101\119\0\8\29\30\74\3\75\84\69\88\66\5\12\89\46\35"](0,math["\104\117\103\101\0\21\24\36\100\62\74\27\69\75\11\83\61\96\17\36"],0)
                                Camera.CameraSubject = Player.Character
                                HumanoidRootPart.CFrame = CFrame["\110\101\119\0\19\83\55\52\53\82\18\26\93\11\78\80\9\85\98"](EHumanoidRootPart.Position) + Vector3["\110\101\119\0\15\14\31\93\99\77\61\15\75\28\29\22\44\75\43"](EHumanoidRootPart.Velocity.X,0,EHumanoidRootPart.Velocity.Z) / 2.1
                                Heartbeat:Wait()
                            until LocalPlayer.Character == nil or Player == nil or Player.Character == nil or Humanoid == nil or EHumanoid == nil or Humanoid.Health == 0 or EHumanoid.Health == 0 or (EHumanoidRootPart.Position - EStartPosition).magnitude > 100
                            if LocalPlayer.Character ~= nil then
                                Camera.CameraSubject = LocalPlayer.Character
                                Handler("\100\105\101\0\27\18\36\100\36\80\50\38\42\61\84\43\22\71\99")
                            end
                        end)()
                    end
                end
            end

            if args[1] == "\116\111\111\108\102\111\108\108\111\119\0\92\76\39\74\28\55\58\50\71\79\23\60\16\83\31" or args[1] == "\116\102\0\16\92\26\32\78\2\10\74\97\97\45\41\87\60\93" then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local ETorso = GetInstance(Player.Character,"\84\111\114\115\111\0\3\47\52\79\99\63\24\64\57\95\31\45\61\29\91","\70\105\110\100\0\2\52\62\13\81\77\78\30\56\39\67\4\4\24\99")
                    if ETorso == nil then
                        ETorso = GetInstance(Player.Character,"\85\112\112\101\114\84\111\114\115\111\0\88\9\17\12\16\19\13\3\78\15\81\77\29\76\42","\70\105\110\100\0\19\5\9\20\70\91\25\41\86\59\93\97\8\58\16")
                    end
                    local RightArm = GetInstance(LocalPlayer.Character,"\82\105\103\104\116\32\65\114\109\0\18\87\86\72\95\65\7\8\30\4\74\80\72\25\100","\70\105\110\100\0\30\15\5\63\46\27\6\78\2\95\49\69\29\95\85")
                    if RightArm == nil then
                        RightArm = GetInstance(LocalPlayer.Character,"\82\105\103\104\116\72\97\110\100\0\40\87\53\27\39\80\22\57\23\56\42\68\88\48\6","\70\105\110\100\0\58\67\10\31\71\74\22\25\4\57\42\74\56\93\93")
                    end
                    local Tool = GetInstance(LocalPlayer.Character,"\84\111\111\108\0\43\29\75\30\25\43\56\89\14\88\31\12\26\70","\70\105\110\100\0\72\16\9\46\68\88\26\21\50\98\86\15\10\43")
                    if RightArm ~= nil and Tool ~= nil and ETorso ~= nil then
                        ToolFollowing = true
                        ToolLastCFrame = Tool.Grip
                        LastTool = Tool
                        Notify("\84\111\111\108\32\110\111\119\32\102\111\108\108\111\119\105\110\103\32\0\67\10\46\86\42\15\89\13\79\80\6\22\63\48\56" .. tostring(Player),"\82\101\97\108\108\121\32\98\108\97\99\107\0\35\85\24\15\43\74\18\48\91\83\40\26\100\76\9")
                        coroutine.wrap(function()
                            repeat
                                Tool.Parent = LocalPlayer.Backpack
                                local Handle = GetInstance(Tool,"\72\97\110\100\108\101\0\98\29\60\56\21\52\47\49\50\74\35\67\7\66\39","\70\105\110\100\0\39\75\19\66\17\52\82\23\2\24\69\17\61\90\48")
                                if Handle ~= nil then
                                    Handle.Massless = true
                                end
                                local CompressedRCF = RightArm.CFrame * CFrame["\110\101\119\0\57\7\74\54\100\50\12\89\38\37\82\51\7\3\6"](0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
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
            if args[1] == "\117\110\116\111\111\108\102\111\108\108\111\119\0\79\80\10\96\45\37\2\11\53\65\84\91\68\18\68" or args[1] == "\117\110\116\102\0\50\88\68\10\32\1\99\15\58\63\23\73\27\81\18" then
                ToolFollowing = false
                if LastTool ~= nil and ToolLastCFrame ~= nil then
                    LastTool.Parent = LocalPlayer.Backpack
                    LastTool.Grip = ToolLastCFrame
                    LastTool.Parent = LocalPlayer.Character
                    Notify("\84\111\111\108\32\115\116\111\112\112\101\100\32\102\111\108\108\111\119\105\110\103\32\0\12\53\83\46\12\17\88\10\57\13\65\15\38\55\95" .. tostring(Player),"\82\101\97\108\108\121\32\98\108\97\99\107\0\76\13\85\44\81\22\57\42\85\39\90\82\87\54\98")
                end
            end

            if args[1] == "\114\101\115\112\97\119\110\0\15\13\22\71\49\4\66\11\88\17\30\86\86\42\75" and LocalPlayer.Character ~= nil then
                local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\97\17\18\61\83\16\72\53\23\85\56\50\16\59\86","\70\105\110\100\0\74\54\12\98\25\3\74\62\68\72\48\31\55\65")
                if Humanoid ~= nil then
                    Handler("\100\105\101\0\92\84\13\90\64\57\55\33\3\36\70\63\59\71\3")
                    if LocalPlayer.Character ~= nil then
                        LocalPlayer.Character:ClearAllChildren()
                    end
                    local TempChar = Instance["\110\101\119\0\16\33\30\77\96\23\23\76\61\98\36\62\27\40\70"]("\77\111\100\101\108\0\49\12\22\69\13\73\76\93\15\24\97\35\50\58\99",workspace)
                    LocalPlayer.Character = TempChar
                    RenderStepped:Wait()
                    LocalPlayer.Character = LocalPlayer.Character
                    TempChar:Destroy()
                    Notify("\82\101\115\112\97\119\110\105\110\103\32\99\104\97\114\97\99\116\101\114\0\13\3\20\97\63\55\46\25\29\37\36\6\28\54\51","\82\101\97\108\108\121\32\98\108\97\99\107\0\99\93\44\4\29\84\65\6\72\37\73\77\92\44\32")
                end
            end

            if args[1] == "\114\101\102\114\101\115\104\0\48\98\64\90\67\80\9\46\28\33\10\74\69\7" then
                local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\4\64\45\46\82\11\35\98\12\75\82\66\57\31\80","\70\105\110\100\0\71\16\44\8\73\33\55\81\33\44\82\95\29\6")
                if HumanoidRootPart ~= nil then
                    local TempCFrame = HumanoidRootPart.CFrame
                    Handler("\114\101\115\112\97\119\110\0\100\93\72\25\81\31\27\69\59\52\72\3\57\61\40")
                    LocalPlayer.CharacterAdded:Wait()
                    HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\82\69\67\54\38\90\100\88\95\65\6\41\78\3","\87\97\105\116\0\17\6\43\23\57\71\99\5\14\6\67\90\80\68\52")
                    if HumanoidRootPart ~= nil then
                        HumanoidRootPart.CFrame = TempCFrame
                    end
                end
                Notify("\82\101\102\114\101\115\104\101\100\0\43\73\2\32\67\50\65\48\29\91\31\35\65\63\89","\82\101\97\108\108\121\32\98\108\97\99\107\0\36\8\8\4\78\57\25\55\4\71\69\70\73\30\30")
            end

            if args[1] == "\101\115\112\0\60\23\35\95\24\40\37\82\95\3\80\55\99\83\74" then
                if args[2] ~= nil then
                    local Player = GetPlayer(args[2])[1]
                    if Player ~= nil and Player.Character ~= nil then
                        local Head = GetInstance(Player.Character,"\72\101\97\100\0\39\29\45\91\58\1\25\46\84\92\25\16\94\38\14","\70\105\110\100\0\57\44\32\7\76\86\70\76\1\7\100\92\72\51\47")
                        if Head ~= nil then
                            EspAttach(Head,tostring(Player))
                            Notify(tostring(Player) .. "\32\104\97\115\32\98\101\101\110\32\69\83\80\39\100\0\62\3\42\33\89\97\4\2\39\64\4\14\59\59\97","\82\101\97\108\108\121\32\98\108\97\99\107\0\30\88\74\86\3\100\97\12\11\95\12\50\43\81\11")
                        end
                        notify(tostring(Player) .. "\39\115\32\99\104\97\114\97\99\116\101\114\32\100\111\101\115\110\39\116\32\101\120\105\115\116\0\92\93\63\20\70\71\46\59\15\18\50\46\94\28\69","\82\101\97\108\108\121\32\114\101\100\0\42\23\59\72\72\12\57\14\43\66\19\20\55\12\32")
                    end
                else
                    EspEnabled = not EspEnabled
                    if EspEnabled then
                        Notify("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\73\2\15\51\64\91\88\6\100\9\20\27\31\50\100" .. tostring(EspEnabled),"\82\101\97\108\108\121\32\98\108\97\99\107\0\37\65\29\47\30\42\30\6\87\1\83\74\91\43\44")
                        for _,player in next,Players:GetPlayers() do
                            if EspEnabled and player ~= LocalPlayer and player.Character ~= nil then
                                local Head = GetInstance(player.Character,"\72\101\97\100\0\1\68\80\75\41\87\56\57\68\38\24\84\57\18\52","\70\105\110\100\0\55\41\26\69\16\87\66\47\76\80\45\62\38\40\73")
                                if Head ~= nil then
                                    EspAttach(Head,tostring(player))
                                end
                            end
                        end
                    end
                end
            end

            if args[1] == "\117\110\101\115\112\0\44\55\36\56\49\7\65\42\7\67\10\21\75\80\84" then
                if args[2] ~= nil then
                    local Player = GetPlayer(args[2])[1]
                    if Player ~= nil then
                        local EspBillboard = GetInstance(EspFolder,tostring(Player),"\70\105\110\100\0\41\81\47\33\66\93\43\40\14\78\88\18\81\31\42")
                        if EspBillboard ~= nil then
                            EspBillboard:Destroy()
                            Notify(tostring(Player) .. "\32\104\97\115\32\98\101\101\110\32\85\110\69\83\80\39\100\0\37\79\48\5\83\52\35\29\73\91\40\72\58\95\79","\82\101\97\108\108\121\32\98\108\97\99\107\0\33\81\17\77\45\88\47\19\82\80\18\92\53\17")
                        end
                    end
                else
                    EspEnabled = false
                    EspFolder:ClearAllChildren()
                    Notify("\69\115\112\69\110\97\98\108\101\100\32\86\97\108\117\101\32\105\115\32\115\101\116\32\116\111\32\0\74\66\70\54\20\6\71\90\88\46\3\98\22\51\87" .. tostring(EspEnabled),"\82\101\97\108\108\121\32\98\108\97\99\107\0\25\2\12\90\33\52\91\84\77\86\10\45\20\23\48")
                end
            end

            if args[1] == "\115\101\114\118\101\114\0\12\83\39\24\20\39\72\13\47\62\19\88\76\69" and args[2] ~= nil then
                coroutine.wrap(function()
                    local Data = HttpService:JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47\0\76\29\99\95\49\63\10\70\92\100\44\58\23\54\44" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48\0\12\58\9\23\19\25\28\43\32\87\73\82\8\42\11")).data
                    if args[2] == "\104\111\112\0\79\28\1\24\55\13\70\87\88\99\68\99\65\93\6" then
                        local Servers = {}
                        for _,val in next,Data do
                            if type(val) == "\116\97\98\108\101\0\78\70\100\26\81\43\52\65\95\59\41\98\51\6\27" and val.maxPlayers > val.playing and val.id ~= game.JobId then
                                table.insert(Servers,val.id)
                            end
                        end
                        if #Servers > 0 then
                            Notify("\84\101\108\101\112\111\114\116\105\110\103\46\46\46\0\44\31\87\8\22\90\83\7\55\58\60\79\42\93\31")
                            TeleportService:TeleportToPlaceInstance(game.PlaceId,val.id)
                        else
                            Notify("\78\111\32\111\116\104\101\114\32\115\101\114\118\101\114\32\116\111\32\104\111\112\32\116\111\46\0\1\89\36\3\33\54\14\90\11\78\77\27\52\99\89","\82\101\97\108\108\121\32\114\101\100\0\57\67\86\33\60\56\97\45\86\18\74\42\80\14\8")
                        end
                    elseif args[2] == "\98\105\103\0\9\20\86\33\86\100\45\94\99\85\88\69\49\24\26" then
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
                                Notify("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\105\103\103\101\115\116\32\115\101\114\118\101\114\0\69\4\81\4\17\68\19\45\79\6\93\16\75\25\81","\82\101\97\108\108\121\32\114\101\100\0\30\49\77\78\93\56\50\5\50\55\3\25\12\67\40")
                            else
                                Notify("\84\101\108\101\112\111\114\116\105\110\103\46\46\46\0\33\96\13\73\86\55\67\62\91\13\98\75\92\92")
                                TeleportService:TeleportToPlaceInstance(game.PlaceId,JobId)
                            end
                        elseif JobId == nil then
                            Notify("\85\109\109\109\0\20\64\45\61\41\43\66\19\99\87\15\26\72\40\54","\82\101\97\108\108\121\32\114\101\100\0\1\48\3\61\10\50\56\24\76\44\29\82\49\48\56")
                        end
                    elseif args[2] == "\112\105\110\103\0\72\67\31\100\50\61\45\67\4\44\8\55\42\68\58" then
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
                                Notify("\89\111\117\39\114\101\32\99\117\114\114\101\110\116\108\121\32\105\110\32\116\104\101\32\98\101\115\116\32\112\105\110\103\32\115\101\114\118\101\114\0\6\98\5\27\74\43\69\58\99\7\19\52\56\64\35","\82\101\97\108\108\121\32\114\101\100\0\80\40\36\97\78\77\68\45\93\6\55\64\29\45\16")
                            else
                                Notify("\84\101\108\101\112\111\114\116\105\110\103\46\46\46\0\52\83\84\3\60\41\32\35\61\41\6\32\63\87")
                                TeleportService:TeleportToPlaceInstance(game.PlaceId,JobId)
                            end
                        elseif JobId == nil then
                            Notify("\85\109\109\109\0\98\79\82\67\86\22\4\82\9\63\65\47\71\12\62","\82\101\97\108\108\121\32\114\101\100\0\22\18\28\38\54\6\31\89\46\43\20\50\68\54\98")
                        end
                    end
                end)()
            end

            if args[1] == "\116\112\0\9\84\50\91\35\66\86\33\24\16\49\33\46\56\26" or args[1] == "\116\101\108\101\112\111\114\116\0\97\10\2\60\88\33\23\85\37\14\33\8\1\88\20" or args[1] == "\116\111\0\11\21\73\47\94\64\16\72\78\43\97\58\52\77\50" and args[2] ~= nil then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local Torso = GetInstance(Player.Character,"\84\111\114\115\111\0\79\54\49\100\55\64\10\9\38\32\43\89\52\73\72","\70\105\110\100\0\58\68\58\54\41\82\17\13\4\29\23\87\1\45")
                    if Torso == nil then
                        Torso = GetInstance(Player.Character,"\85\112\112\101\114\84\111\114\115\111\0\38\1\10\69\38\3\43\25\80\53\48\66\70\23\96","\70\105\110\100\0\81\69\26\55\31\67\92\73\37\72\47\42\55\13\76")
                    end
                    if Torso ~= nil then
                        TeleportHandler("\80\97\114\116\0\93\29\10\22\52\30\42\43\93\28\33\82\58\98\15","\73\110\115\116\97\110\116\0\68\86\41\64\98\22\60\99\71\43\55\58\77\78\51",Torso)
                    end
                end
            end

            if args[1] == "\98\116\112\0\64\12\87\29\85\29\41\63\43\96\61\63\8\6\87" or args[1] == "\98\116\101\108\101\112\111\114\116\0\77\74\28\28\91\38\4\100\26\69\78\80\9\71\50" or args[1] == "\98\116\111\0\8\63\47\90\40\70\74\47\89\2\76\67\39\17\60" and args[2] ~= nil then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local Torso = GetInstance(Player.Character,"\84\111\114\115\111\0\47\13\31\56\3\99\37\68\89\62\81\78\80\5\94","\70\105\110\100\0\40\19\42\29\22\38\48\22\57\70\13\21\38\88\71")
                    if Torso == nil then
                        Torso = GetInstance(Player.Character,"\85\112\112\101\114\84\111\114\115\111\0\31\39\12\97\43\6\80\69\94\50\61\78\25\27\42","\70\105\110\100\0\78\44\56\13\44\3\56\46\37\70\40\77\57\28\70")
                    end
                    if Torso ~= nil then
                        TeleportHandler("\80\97\114\116\0\54\7\86\36\40\2\87\51\55\51\14\13\86\32\83","\80\114\111\103\114\101\115\115\0\4\96\5\8\100\42\51\16\15\43\72\32\3\94",Torso)
                    end
                end
            end

        end
        return
    end)()
end

EspFolder.Name = RandomString(25)
Camera = GetInstance(workspace,"\67\97\109\101\114\97\0\50\51\99\14\65\86\49\14\71\85\79\23\4\37\3","\87\97\105\116\0\35\41\27\45\64\88\86\20\81\71\55\37\50\87\5")

if not game:IsLoaded() then
    Notify("\71\97\109\101\32\105\115\32\115\116\105\108\108\32\108\111\97\100\105\110\103\46\46\46\0\22\22\14\19\15\68\53\22\38\54\38\27\91\53\23","\82\101\97\108\108\121\32\114\101\100\0\19\48\81\42\46\60\28\30\59\23\40\14\46\40\76")
	game.Loaded:Wait()
    Notify("\71\97\109\101\32\108\111\97\100\101\100\33\0\32\51\43\32\74\83\45\80\75\37\72\16\84\59\10","\76\105\109\101\32\103\114\101\101\110\0\37\45\18\29\25\71\67\98\48\22\19\57\87\58\86")
end

for _,player in next,Players:GetPlayers() do
    if EspEnabled and player ~= LocalPlayer and player.Character ~= nil then
        local Head = GetInstance(player.Character,"\72\101\97\100\0\38\26\30\11\61\72\4\98\5\92\29\73\5\42\86","\70\105\110\100\0\1\42\58\92\94\49\99\74\58\38\26\73\76\74")
        if Head ~= nil then
            EspAttach(Head,tostring(player))
        end
    end
    player.CharacterAdded:Connect(function(character)
        local Head = GetInstance(character,"\72\101\97\100\0\64\84\75\93\28\90\21\46\40\40\79\20\26\81\75","\87\97\105\116\0\60\93\47\94\74\75\45\22\60\88\23\17\15\57\70")
        if EspEnabled and Head ~= nil then
            EspAttach(Head,tostring(player))
        end
    end)
end

Players.PlayerAdded:Connect(function(player)
    if player.Character ~= nil then
        local Head = GetInstance(player.Character,"\72\101\97\100\0\8\85\31\44\20\38\15\68\38\46\9\60\73\87\2","\70\105\110\100\0\57\75\53\69\95\91\54\64\30\72\15\82\76\48\28")
        if EspEnabled and Head ~= nil then
            EspAttach(Head,tostring(player))
        end
    end
    player.CharacterAdded:Connect(function(character)
        local Head = GetInstance(character,"\72\101\97\100\0\51\27\49\31\51\58\24\56\56\77\19\99\58\39\24","\87\97\105\116\0\97\64\33\20\31\70\54\80\37\31\20\97\43\49")
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
            Keys["\87\0\20\68\14\86\89\97\94\84\15\74\58\94\58\28\62"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.A then
            Keys["\65\0\14\72\1\22\23\94\6\26\23\99\50\81\81\1\18"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.S then
            Keys["\83\0\45\54\41\59\23\92\30\64\37\47\62\93\4\60\66"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.D then
            Keys["\68\0\62\62\56\6\79\94\10\9\94\35\17\91\54\15\19"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.Q then
            Keys["\81\0\28\60\66\46\47\78\99\84\44\90\19\83\76\47\72"] = true
            if Floating and not Keys["\69\0\59\63\25\60\80\57\56\61\44\60\5\32\86\52\2"] then
                FloatValue = FloatValue + 0.5
            end
        end
        if yuh.KeyCode == Enum.KeyCode.E then
            Keys["\69\0\50\50\78\40\25\100\90\22\85\95\91\89\49\40"] = true
            if Floating and not Keys["\81\0\83\7\32\44\76\86\38\13\4\36\54\33\2\87\90"] then
                FloatValue = FloatValue - 0.5
            end
        end
        if yuh.KeyCode == CommandBarHotkey and not CmdBarTweening then
            UpdateCmdGuide()
            CmdBarTweening = true
            CmdBar.Size = UDim2.new(0,0,0,25)
            CmdBar.Position = UDim2.new(1,0,1,-295)
            CmdBar.Visible = true
            CmdBar:TweenSize(UDim2.new(0,250,0,25), "\79\117\116\0\58\19\82\86\49\77\23\42\38\62\81\59\44\77\62", "\81\117\97\100\0\89\81\41\2\23\68\40\40\72\14\98\40\53\35\9", 0.2, false)
            CmdBar:TweenPosition(UDim2.new(1,-250,1,-295), "\79\117\116\0\66\94\46\87\40\42\2\92\72\57\63\40\45\97\76", "\81\117\97\100\0\94\5\87\84\15\75\32\27\49\28\86\93\80\1\25", 0.2, false)
            RenderStepped:Wait()
            CmdBar:CaptureFocus()
            wait(0.25)
            CmdBarTweening = false
        end
    end
end)

UserInputService.InputEnded:Connect(function(yuh,yeet)
    if yuh.KeyCode == Enum.KeyCode.W then
        Keys["\87\0\53\68\49\83\90\8\74\87\73\67\38\6\20\96\65"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.A then
        Keys["\65\0\49\53\96\32\82\83\44\45\6\10\71\25\3\27\65"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.S then
        Keys["\83\0\92\74\28\97\37\50\94\63\30\95\7\71\100\82\12"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.D then
        Keys["\68\0\90\21\41\97\29\84\42\31\43\29\60\65\86\44"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.Q then
        Keys["\81\0\62\54\3\88\1\91\39\14\37\93\29\50\50\94\70"] = false
        if Floating and not Keys["\69\0\39\59\68\68\56\66\83\81\33\86\7\44\77\89\43"] then
            FloatValue = FloatValue - 0.5
        end
    end
    if yuh.KeyCode == Enum.KeyCode.E then
        Keys["\69\0\38\32\51\35\84\26\19\66\74\58\40\72\80\80\6"] = false
        if Floating and not Keys["\81\0\23\67\17\31\76\70\93\27\25\71\16\86\67\96\72"] then
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
            local Player = GetInstance(Players,CamlockTarget,"\70\105\110\100\0\70\12\100\47\2\21\64\2\74\70\96\6\41\9")
            local Part
            if Player ~= nil and Player.Character ~= nil then
                for _,obj in next,Player.Character:GetChildren() do
                    if obj:IsA("\66\97\115\101\80\97\114\116\0\94\2\85\3\33\73\40\46\58\78\92\42\31\22\56") and string.lower(tostring(obj)) == string.lower(CamlockPart) then
                        Part = obj
                        break
                    end
                end
                if Part ~= nil then
                    Camera.CoordinateFrame = CFrame["\110\101\119\0\24\67\7\40\64\87\16\74\67\63\40\39\17\53\22"](Camera.CoordinateFrame.p,Part.Position)
                end
            end
        end
        RenderStepped:Wait()
    end
end)()

coroutine.wrap(function()
    while true do
        if VelocitySpeed then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\12\26\37\92\16\92\64\94\9\26\64\47\8\58","\70\105\110\100\0\63\88\100\75\75\74\39\66\54\99\19\18\49\29\30")
            local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\59\20\94\59\87\52\35\25\22\22\27\50\50\68","\70\105\110\100\0\43\8\15\41\21\12\14\98\10\18\70\72\81\89\78")
            if HumanoidRootPart ~= nil and Humanoid ~= nil then
                local Value = Vector3["\110\101\119\0\32\93\76\66\9\57\20\68\42\35\5\62\40\43"](Humanoid.MoveDirection.X,0,Humanoid.MoveDirection.Z) * VelocitySpeedValue
                HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + Value
            end
        end
        if Floating then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\66\16\95\24\13\30\22\97\21\49\72\10\17\7","\70\105\110\100\0\37\71\94\81\25\74\35\74\46\45\87\45\28\52\67")
            if FloatPart == nil then
                FloatPart = Instance["\110\101\119\0\81\21\29\69\54\47\50\59\100\96\26\16\31\66\65"]("\80\97\114\116\0\54\22\33\36\78\49\32\72\96\79\86\43\39\26\22",workspace)
                FloatPart.Transparency = 1
                FloatPart.Size = Vector3["\110\101\119\0\5\24\37\20\74\21\19\4\21\49\52\64\74\100\19"](6,1,6)
                FloatPart.Anchored = true
                FloatPart.Name = RandomString(25)
            end
            if HumanoidRootPart ~= nil then
			    FloatPart.CFrame = HumanoidRootPart.CFrame * CFrame["\110\101\119\0\2\10\46\1\19\53\94\38\79\8\95\21\71\84\27"](0,FloatValue,0)
            end
        end
        if WalkFling then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\11\73\51\58\31\79\89\85\8\83\59\9\74\29\49","\70\105\110\100\0\54\64\27\13\33\70\6\59\60\74\26\94\67\52\46")
            local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\46\13\74\88\99\89\79\68\22\2\93\61\79\39\96","\70\105\110\100\0\5\74\31\18\75\51\67\48\81\77\65\71\71\27")
            if HumanoidRootPart ~= nil and Humanoid ~= nil then
                Humanoid:ChangeState(11)
                HumanoidRootPart.Velocity = Vector3["\110\101\119\0\100\84\70\56\91\50\12\77\13\75\75\67\22\13\19"](0,900000,0)
                Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
            end
        end
        Heartbeat:Wait()
    end
end)()

coroutine.wrap(function()
    while true do
        if Flying then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\0\60\53\21\4\81\85\51\6\28\40\32\49\36\76\49","\70\105\110\100\0\2\38\60\49\28\67\18\96\49\41\78\41\99\24\36")
            local Humanoid = GetInstance(LocalPlayer.Character,"\72\117\109\97\110\111\105\100\0\49\13\90\47\68\23\39\87\17\93\89\66\81\96\39","\70\105\110\100\0\72\97\66\73\38\18\22\90\66\39\6\97\29\79\8")
            if HumanoidRootPart ~= nil and Humanoid ~= nil then
                if FlyTempCFrame ~= nil then
                    HumanoidRootPart.CFrame = FlyTempCFrame
                end
                Humanoid.PlatformStand = true
                local part = Instance["\110\101\119\0\21\76\30\89\43\15\42\4\16\82\44\23\5\25\79"]("\80\97\114\116\0\44\3\64\40\82\94\28\40\30\51\78\79\84\22\61",workspace) part.Name = RandomString(25) part.Size = Vector3["\110\101\119\0\13\14\49\59\24\79\95\25\5\75\16\66\44\74\93"](1,1,1) part.Anchored = true part.CFrame = HumanoidRootPart.CFrame part.CanCollide = false part.Transparency = 1
                local weld = Instance["\110\101\119\0\96\90\60\8\10\80\21\44\12\92\42\78\39\15\6"]("\87\101\108\100\0\100\98\31\30\20\28\5\2\19\35\47\86\100\62\30",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                if not Typing then
                    if Keys["\87\0\73\11\33\78\63\68\20\14\91\98\44\57\99\82\79"] then
                        part.CFrame = part.CFrame + part.CFrame.lookVector * FlySpeed
                    end
                    if Keys["\83\0\46\95\15\5\93\13\16\85\79\40\21\36\71\55\30"] then
                        part.CFrame = part.CFrame + part.CFrame.lookVector * -FlySpeed
                    end
                    if Keys["\65\0\68\16\71\83\20\11\95\15\79\79\5\20\57\49\36"] then
                        part.CFrame = part.CFrame + part.CFrame.rightVector * -FlySpeed
                    end
                    if Keys["\68\0\52\7\72\49\68\76\66\3\100\4\62\21\16\37\7"] then
                        part.CFrame = part.CFrame + part.CFrame.rightVector * FlySpeed
                    end
                end
                part.CFrame = CFrame["\110\101\119\0\95\49\31\30\27\68\48\21\10\25\62\90\5\50\42"](HumanoidRootPart.Position,Camera.CoordinateFrame.lookVector * 9e9)
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

table.insert(CommandsList,{Command = "\70\108\121\47\85\110\102\108\121\0\62\5\51\91\57\50\3\99\15\40\94\24\78\94\64", Description = "\70\108\121\44\32\121\111\117\32\99\97\110\32\99\104\97\110\103\101\32\116\104\101\32\115\112\101\101\100\32\98\121\32\n\116\121\112\105\110\103\32\70\108\121\115\112\101\101\100\32\78\117\109\98\101\114\n\n\69\120\97\109\112\108\101\58\32\102\108\121\115\112\101\101\100\32\50\0\23\15\84\83\91\60\26\26\24\30\7\58\36\2\49"})
table.insert(CommandsList,{Command = "\70\108\111\97\116\47\85\110\102\108\111\97\116\0\60\54\79\38\40\93\44\26\18\99\43\61\96\38\92", Description = "\70\108\111\97\116\44\32\80\114\101\115\115\32\81\47\69\32\116\111\32\103\111\32\117\112\32\97\110\100\32\100\111\119\110\46\0\17\30\23\24\27\18\35\13\98\72\22\47\21\7\66"})
table.insert(CommandsList,{Command = "\70\108\105\110\103\0\21\42\44\70\17\100\79\15\93\44\23\24\40\79\44", Description = "\70\108\105\110\103\32\115\111\109\101\111\110\101\44\32\119\105\108\108\32\110\111\116\32\97\108\119\97\121\115\32\119\111\114\107\46\0\19\16\21\66\81\10\25\81\64\97\74\75\30\65\43"})
table.insert(CommandsList,{Command = "\82\101\106\111\105\110\0\23\49\81\87\41\14\10\93\74\82\91\94\50\77\79", Description = "\82\101\106\111\105\110\32\100\97\32\103\97\109\101\0\35\32\95\28\10\15\45\36\37\91\22\43\32\57"})
table.insert(CommandsList,{Command = "\86\101\108\111\99\105\116\121\115\112\101\101\100\47\86\115\0\68\84\18\13\1\92\91\32\30\17\85\82\66\53\35", Description = "\86\101\108\111\99\105\116\121\32\83\112\101\101\100\32\98\121\112\97\115\115\101\115\32\115\111\109\101\32\97\110\116\105\n\99\104\101\97\116\115\32\116\104\97\116\32\104\97\118\101\32\87\97\108\107\83\112\101\101\100\32\99\104\101\99\107\115\46\0\42\33\51\82\15\27\76\38\67\77\55\42\32\40\13"})
table.insert(CommandsList,{Command = "\87\97\108\107\83\112\101\101\100\47\119\115\47\115\112\101\101\100\0\43\2\46\48\83\55\4\21\98\75\17\59\91\94\87", Description = "\87\97\108\107\83\112\101\101\100\44\32\99\104\97\110\103\101\115\32\87\97\108\107\83\112\101\101\100\46\n\n\69\120\97\109\112\108\101\58\32\119\115\32\49\48\48\0\17\10\97\59\20\55\1\62\37\63\17\86\59\43\26"})
table.insert(CommandsList,{Command = "\74\117\109\112\80\111\119\101\114\47\106\112\0\8\41\77\19\100\62\22\33\4\19\79\57\14\65", Description = "\74\117\109\112\80\111\119\101\114\44\32\99\104\97\110\103\101\115\32\74\117\109\112\80\111\119\101\114\46\n\n\32\69\120\97\109\112\108\101\58\32\106\112\32\49\48\48\0\58\97\3\22\39\32\48\66\86\43\62\91\1\95\30"})
table.insert(CommandsList,{Command = "\87\97\108\107\70\108\105\110\103\47\119\102\0\18\9\12\18\44\97\96\16\42\32\14\31\35\92\50", Description = "\87\97\108\107\70\108\105\110\103\44\32\119\97\108\107\32\105\110\116\111\32\112\101\111\112\108\101\32\97\110\100\32\105\116\n\119\105\108\108\32\102\108\105\110\103\32\116\104\101\109\0\47\49\80\55\63\22\55\21\38\31\91\94\1\28\77"})
table.insert(CommandsList,{Command = "\84\111\111\108\102\111\108\108\111\119\47\116\102\0\40\22\22\96\78\54\40\46\48\51\82\89\46\86", Description = "\77\97\107\101\115\32\121\111\117\114\32\116\111\111\108\32\102\111\108\108\111\119\32\115\111\109\101\111\110\101\n\97\114\111\117\110\100\46\n\n\85\110\116\111\111\108\102\111\108\108\111\119\47\117\110\116\102\32\116\111\32\115\116\111\112\32\105\116\46\0\3\62\69\24\97\82\49\5\83\36\100\73\41\66\62"})
table.insert(CommandsList,{Command = "\82\101\102\114\101\115\104\0\81\70\19\49\79\79\90\36\48\64\62\6\68\12\4", Description = "\82\101\115\112\97\119\110\115\32\121\111\117\32\116\104\101\110\32\114\101\116\117\114\110\115\32\121\111\117\32\116\111\n\112\114\101\118\105\111\117\115\32\112\111\115\105\116\105\111\110\46\0\68\81\100\43\29\28\19\68\64\64\51\51\92\67\32"})
table.insert(CommandsList,{Command = "\82\101\115\112\97\119\110\0\38\43\42\48\80\47\14\96\32\38\20\58\52\86\87", Description = "\82\101\115\112\97\119\110\115\32\121\111\117\0\45\84\20\15\90\8\22\15\72\82\37\83\80\29\79"})
table.insert(CommandsList,{Command = "\83\101\114\118\101\114\0\14\13\98\87\52\52\83\4\57\51\57\81\24\76\78", Description = "\83\101\114\118\101\114\32\99\104\111\111\115\105\110\103\32\99\111\109\109\109\97\110\100\n\n\69\120\97\109\112\108\101\58\n\115\101\114\118\101\114\32\104\111\112\47\115\101\114\118\101\114\32\98\105\103\47\115\101\114\118\101\114\32\112\105\110\103\0\24\71\91\15\42\36\45\46\91\3\2\58\77\77\36"})
table.insert(CommandsList,{Command = "\69\115\112\47\85\110\69\115\112\0\61\23\38\91\5\70\58\44\79\17\9\96\100\46\74", Description = "\69\83\80\n\n\69\120\97\109\112\108\101\58\69\115\112\47\69\115\112\32\112\108\97\121\101\114\0\56\76\51\87\19\51\73\36\21\63\71\80\57\54\16"})
table.insert(CommandsList,{Command = "\67\97\109\108\111\99\107\47\85\110\67\97\109\108\111\99\107\0\22\14\40\81\44\53\67\73\45\38\83\27\88\12\81", Description = "\76\111\99\107\115\32\121\111\117\114\32\99\97\109\101\114\97\32\111\110\32\116\111\32\97\32\112\108\97\121\101\114\46\0\65\84\60\45\62\65\89\89\60\93\41\15\58\63\32"})
table.insert(CommandsList,{Command = "\71\114\97\118\105\116\121\0\9\93\21\74\53\97\82\9\95\51\42\51\85\100\59", Description = "\83\101\116\115\32\103\114\97\118\105\116\121\46\n\n\69\120\97\109\112\108\101\58\32\103\114\97\118\105\116\121\32\48\0\7\69\46\93\79\16\45\43\94\9\98\88\75\45\62"})
table.insert(CommandsList,{Command = "\116\111\47\116\112\47\116\101\108\101\112\111\114\116\0\10\52\10\100\61\86\99\37\43\79\61\27\17\13\20", Description = "\84\101\108\101\112\111\114\116\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110\0\95\64\83\41\8\74\3\36\78\49\76\48\72\42\20"})
table.insert(CommandsList,{Command = "\98\116\111\47\98\116\112\47\98\116\101\108\101\112\111\114\116\0\40\91\88\49\61\18\65\16\36\13\52\24\50\78\64", Description = "\84\101\108\101\112\111\114\116\32\98\121\112\97\115\115\32\116\111\32\115\111\109\101\111\110\101\n\n\69\120\97\109\112\108\101\58\32\98\116\101\108\101\112\111\114\116\32\98\117\105\108\100\101\114\109\97\110\0\68\87\42\80\26\95\47\92\43\79\66\50\40\15\39"})

-- // LOAD TIME END \\ --

Notify("\84\104\97\110\107\32\121\111\117\32\102\111\114\32\117\115\105\110\103\32\68\114\80\111\112\112\97\32\65\100\109\105\110\33\0\24\43\8\50\87\57\5\59\88\43\6\70\70\8\27","\82\101\97\108\108\121\32\98\108\97\99\107\0\55\85\45\54\17\78\47\88\44\17\28\5\85\91\10")
Notify("\84\111\111\107\32\0\99\71\54\57\22\1\62\33\95\28\59\35\72\4\96" .. tick() - start .. "\32\116\111\32\115\116\97\114\116\0\62\17\58\99\84\68\92\31\87\24\68\38\25\12\48","\82\101\97\108\108\121\32\98\108\97\99\107\0\67\33\40\62\62\80\28\24\84\68\30\82\36\61\45")
