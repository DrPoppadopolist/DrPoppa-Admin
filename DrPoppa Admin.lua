-- // LOAD TIME START \\ --

local start = tick()

local GS = game.GetService

-- // VARIABLES \\ --

local Players = GS(game,"Players")
local RunService = GS(game,"RunService")
local CoreGui = GS(game,"CoreGui")
local UserInputService = GS(game,"UserInputService")
local TeleportService = GS(game,"TeleportService")
local HttpService = GS(game,"HttpService")

local LocalPlayer = Players.LocalPlayer

local Camera

local RenderStepped = RunService.RenderStepped
local Heartbeat = RunService.Heartbeat
local Stepped = RunService.Stepped

local Prefix = [[;]]
local CommandBarHotkey = Enum.KeyCode.Quote

local EspFolder = Instance.new("Folder",CoreGui)

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
local CamlockPart = "HumanoidRootPart"

local BotMode = false
_G.BotSpeakers = {"ErrorSurge"}

local AllCharacters = {}
local Numbers = {}
local Characters = {}
local CommandsList = {}

local Keys = {
    ["W"] = false,
    ["A"] = false,
    ["S"] = false,
    ["D"] = false,
    ["Q"] = false,
    ["E"] = false,
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
        temp = temp .. AllCharacters[math.random(1,#AllCharacters)]
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
            return "string"
        elseif Number and not String then
            return "number"
        end
    end
    return "retarded character or nil"
end

-- // NOTIFICATION SYSTEM \\ --

local DrPoppaAdmin = Instance.new("ScreenGui",CoreGui)
DrPoppaAdmin.Name = RandomString(25)

local NotificationMainFrame = Instance.new("Frame",DrPoppaAdmin)
NotificationMainFrame.Size = UDim2.new(0,200,0,250)
NotificationMainFrame.Position = UDim2.new(0,0,1,-250)
NotificationMainFrame.BorderSizePixel = 0
NotificationMainFrame.Transparency = 1

local CmdBarTweening = false

local CmdBar = Instance.new("TextBox",DrPoppaAdmin)
CmdBar.Size = UDim2.new(0,0,0,25)
CmdBar.Position = UDim2.new(1,0,1,-295)
CmdBar.BackgroundColor = BrickColor.new("Light grey metallic")
CmdBar.TextColor = BrickColor.new("Really black")
CmdBar.Font = "GothamBlack"
CmdBar.TextSize = 15
CmdBar.Text = ""
CmdBar.Transparency = 0.2
CmdBar.Visible = false
CmdBar.BorderSizePixel = 2
CmdBar.BorderColor = BrickColor.new("Institutional white")

local CmdBarGuide = Instance.new("ScrollingFrame",CmdBar)
CmdBarGuide.Size = UDim2.new(1,0,0,200)
CmdBarGuide.Position = UDim2.new(0,0,0,31)
CmdBarGuide.BackgroundColor = BrickColor.new("Light grey metallic")
CmdBarGuide.Transparency = 0.2
CmdBarGuide.BorderSizePixel = 2
CmdBarGuide.BorderColor = BrickColor.new("Institutional white")
CmdBarGuide.ScrollBarThickness = 0

CmdBar:GetPropertyChangedSignal("Text"):Connect(function()
    UpdateCmdGuide()
end)

CmdBar.FocusLost:Connect(function()
    repeat RenderStepped:Wait() until not CmdBarTweening
    CmdBarGuide:ClearAllChildren()
    CmdBarTweening = true
    Handler(CmdBar.Text)
    CmdBar.Text = ""
    CmdBar:TweenSize(UDim2.new(0,0,0,25), "Out", "Quad", 0.2, false)
    CmdBar:TweenPosition(UDim2.new(1,0,1,-295), "Out", "Quad", 0.2, false)
    wait(0.25)
    CmdBar.Visible = false
    CmdBarTweening = false
end)

UpdateCmdGuide = function()
    CmdBarGuide:ClearAllChildren()
    local TempNum = 0
    for _,v in next,CommandsList do
        local args = string.split(v.Command,"/")
        for i=1,#args do
            if string.lower(CmdBar.Text) == string.lower(string.sub(args[i],1,string.len(CmdBar.Text))) and GetInstance(CmdBarGuide,v.Command,"Find") == nil then
                local CommandName = Instance.new("TextLabel",CmdBarGuide)
                CommandName.Size = UDim2.new(1,-10,0,25)
                CommandName.Name = v.Command
                if TempNum == 0 then
                    CommandName.Position = UDim2.new(0,5,0,3)
                else
                    CommandName.Position = UDim2.new(0,5,0,30*TempNum) + UDim2.new(0,0,0,3)
                end
                CommandName.BackgroundColor = BrickColor.new("Dark grey metallic")
                CommandName.TextColor = BrickColor.new("Really black")
                CommandName.Font = "GothamBlack"
                CommandName.TextSize = 15
                CommandName.Text = v.Command
                CommandName.Transparency = 0.2
                CommandName.BorderSizePixel = 0
                CommandName.BorderColor = BrickColor.new("Institutional white")

                local DescriptionFrame = Instance.new("Frame",CmdBar)
                DescriptionFrame.Size = UDim2.new(0,350,0,200)
                DescriptionFrame.Position = UDim2.new(0,-356,0,0)
                DescriptionFrame.BackgroundColor = BrickColor.new("Light grey metallic")
                DescriptionFrame.Transparency = 0.2
                DescriptionFrame.BorderSizePixel = 2
                DescriptionFrame.BorderColor = BrickColor.new("Institutional white")
                DescriptionFrame.Visible = false

                local DescriptionText = Instance.new("TextLabel",DescriptionFrame)
                DescriptionText.Size = UDim2.new(0,330,0,185)
                DescriptionText.Position = UDim2.new(0.5,-165,0.5,-92.5)
                DescriptionText.BackgroundColor = BrickColor.new("Dark grey metallic")
                DescriptionText.TextColor = BrickColor.new("Really black")
                DescriptionText.TextSize = 18
                DescriptionText.Font = "GothamBlack"
                DescriptionText.TextScaled = false
                DescriptionText.Transparency = 0.2
                DescriptionText.BorderSizePixel = 2
                DescriptionText.Text = v.Description
                DescriptionText.TextYAlignment = Enum.TextYAlignment.Top
                DescriptionText.BorderColor = BrickColor.new("Institutional white")

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
                obj:TweenPosition(obj.Position + UDim2.new(0,0,0,-40), "Out", "Quad", 0.2, false)
                RenderStepped:Wait()
            end
            wait(0.2)
            local NotificationLabel = Instance.new("TextLabel",NotificationMainFrame)
            NotificationLabel.Size = UDim2.new(0,5*string.len(message),0,35)
            NotificationLabel.Position = UDim2.new(0.5,-92.5,1,-40)
            NotificationLabel.BackgroundColor = BrickColor.new("Light grey metallic")
            NotificationLabel.TextColor = BrickColor.new(color)
            NotificationLabel.Font = "GothamBlack"
            NotificationLabel.TextScaled = true
            NotificationLabel.Transparency = 0.2
            NotificationLabel.BorderSizePixel = 2
            NotificationLabel.Text = message
            NotificationLabel.BorderColor = BrickColor.new("Really black")
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
    elseif stype == "others" then
        for _,player in next,Players:GetPlayers() do
            if player ~= LocalPlayer then
                table.insert(PlayerTable,player)
            end
        end
    elseif stype == "all" then
        for _,player in next,Players:GetPlayers() do
            table.insert(PlayerTable,player)
        end
    elseif stype == "me" then
        table.insert(PlayerTable,LocalPlayer)
    end
    if #PlayerTable == 0 then
        Notify("Player finding error, misstype?","Really red")
    end
    return PlayerTable
end

GetInstance = function(from,name,stype,timeout)
    if from ~= nil and name ~= nil then
        if stype == "Find" then
            local inst = from:FindFirstChildOfClass(name)
            if not inst then
                inst = from:FindFirstChild(name)
            end
            if inst then
                return inst
            end
        elseif stype == "Wait" then
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
        local EHumanoid = GetInstance(player.Character,"Humanoid","Find")
        if EHumanoid ~= nil then
            return EHumanoid.RigType
        end
    end
    return
end

local function EspAttach(part,name)
    if GetInstance(EspFolder,tostring(name),"Find") == nil then
        local BillboardGui = Instance.new("BillboardGui",EspFolder)
        local Dot = Instance.new("Frame",BillboardGui)
        local Name = Instance.new("TextLabel",BillboardGui)

        BillboardGui.Name = tostring(name)
        BillboardGui.Adornee = part
        BillboardGui.AlwaysOnTop = true
        BillboardGui.ExtentsOffset = Vector3.new(0,1,0)
        BillboardGui.Size = UDim2.new(0,5,0,5)

        Dot.Name = "DOT"
        Dot.BackgroundColor = BrickColor.new("Really red")
        Dot.BackgroundTransparency = 0.3
        Dot.BorderSizePixel = 0
        Dot.Position = UDim2.new(-0.5,0,-0.5,0)
        Dot.Size = UDim2.new(2,0,2,0)
        Dot.Visible = true
        Dot.ZIndex = 10

        Name.Name = "NAME"
        Name.BackgroundColor3 = Color3.new(255,255,255)
        Name.BackgroundTransparency = 1
        Name.BorderSizePixel = 0
        Name.Position = UDim2.new(0,0,0,-40)
        Name.Size = UDim2.new(1,0,10,0)
        Name.Visible = true
        Name.ZIndex = 10
        Name.Font = "ArialBold"
        Name.FontSize = "Size14"
        Name.Text = string.upper(tostring(name))
        Name.TextColor = BrickColor.new("Really red")

        part.Changed:Connect(function(val)
            if tostring(val) == "NetworkIsSleeping" or tostring(val) == "Parent" then
                BillboardGui:Destroy()
            end
        end)
    end
end

local function TeleportHandler(tbl)
    local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
    if HumanoidRootPart ~= nil and tbl[3] ~= nil then
        local part = Instance.new("Part",workspace) part.Name = RandomString(25) part.Size = Vector3.new(1,1,1) part.Anchored = true part.CFrame = HumanoidRootPart.CFrame part.CanCollide = false part.Transparency = 1
        if tbl[1] == "Part" then
            if tbl[2] == "Instant" then
                local Value = 0
                if tbl[4] ~= nil and tbl[4] == "Offset" then
                    Value = tbl[3].Size.Y/2+3
                end
                local weld = Instance.new("Weld",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                part.CFrame = CFrame.new(tbl[3].Position) * CFrame.new(0,Value,0)
                weld:Destroy()
            elseif tbl[2] == "Progress" then
                repeat
                    local weld = Instance.new("Weld",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                    part.CFrame = CFrame.new(part.Position,tbl[3].Position)
                    part.CFrame = part.CFrame + part.CFrame.lookVector * 0.5
                    weld:Destroy()
                    RenderStepped:Wait()
                until (HumanoidRootPart.Position - tbl[3].Position).magnitude < 3.5 or LocalPlayer.Character == nil or HumanoidRootPart.Parent == nil
            end
        elseif tbl[1] == "Position" then
            if tbl[2] == "Instant" then
                local weld = Instance.new("Weld",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                part.CFrame = tbl[3]
                weld:Destroy()
            elseif tbl[2] == "Progress" then
                repeat
                    local weld = Instance.new("Weld",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                    part.CFrame = CFrame.new(part.Position,tbl[3].p)
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

            local args = string.split(str," ")
            for i=1,#args do
                args[i] = string.lower(args[i])
            end

            if args[1] == "walkspeed" or args[1] == "ws" or args[1] == "speed" and IsValue(args[2]) == "number" then
                local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                if Humanoid ~= nil then
                    Humanoid.WalkSpeed = args[2]
                    Notify("Humanoid WalkSpeed Value is set to " .. tostring(args[2]),"Really black")
                end
            end
            
            if args[1] == "jumppower" or args[1] == "jp" and IsValue(args[2]) == "number" then
                local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                if Humanoid ~= nil then
                    Humanoid.JumpPower = args[2]
                    Notify("Humanoid JumpPower Value is set to " .. tostring(args[2]),"Really black")
                end
            end

            if args[1] == "velocityspeed" or args[1] == "vs" then
                if args[2] == nil then
                    VelocitySpeed = not VelocitySpeed
                    if VelocitySpeed then
                        Notify("Velocity Speed is set to " .. tostring(VelocitySpeed),"Really black")
                        Notify("Keep in mind this is very sensetive, use low values like 0.1/0.05","Really red")
                    else
                        Notify("Velocity Speed is set to " .. tostring(VelocitySpeed),"Really black")
                    end
                elseif args[2] ~= nil and IsValue(args[2]) == "number" then
                    VelocitySpeedValue = args[2]
                    Notify("Velocity Speed Value is set to " .. tostring(VelocitySpeedValue),"Really black")
                end
            end
            if args[1] == "unvelocityspeed" or args[1] == "unvs" then
                VelocitySpeed = false
            end

            if args[1] == "gravity" and args[2] ~= nil and IsValue(args[2]) == "number" then
                workspace.Gravity = args[2]
                Notify("Gravity Value is set to " .. tostring(workspace.Gravity),"Really black")
            end

            if args[1] == "fly" then
                if args[2] == nil then
                    Flying = not Flying
                    FlyTempCFrame = nil
                    Notify("Flying Value is set to " .. tostring(Flying),"Really black")
                elseif args[2] ~= nil and IsValue(args[2]) == "number" then
                    FlySpeed = args[2]
                    Notify("FlySpeed Value is set to " .. tostring(args[2]),"Really black")
                end
            end
            if args[1] == "flyspeed" and IsValue(args[2]) == "number" then
                FlySpeed = args[2]
                Notify("FlySpeed Value is set to " .. tostring(args[2]),"Really black")
            end
            if args[1] == "unfly" then
                Flying = false
                Notify("Flying Value is set to " .. tostring(Flying),"Really black")
            end

            if args[1] == "float" then
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
                Notify("Floating Value is set to " .. tostring(Floating),"Really black")
            end
            if args[1] == "unfloat" then
                Floating = false
                if FloatPart ~= nil then
                    FloatPart:Destroy()
                end
                Notify("Floating Value is set to " .. tostring(Floating),"Really black")
            end
            
            if args[1] == "walkfling" or args[1] == "wf" then
                WalkFling = not WalkFling
                if WalkFling then
                    local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                    if Humanoid ~= nil then
                        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                    end
                    Notify("WalkFling Value is set to " .. tostring(WalkFling),"Really black")
                elseif not WalkFling then
                    local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                    if Humanoid ~= nil then
                        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                    end
                    Notify("WalkFling Value is set to " .. tostring(WalkFling),"Really black")
                end
            end
            if args[1] == "unwalkfling" or args[1] == "unwf" then
                WalkFling = false
                local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                if Humanoid ~= nil then
                    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                end
                Notify("WalkFling Value is set to " .. tostring(WalkFling),"Really black")
            end


            if args[1] == "rejoin" or args[1] == "rj" then
                TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
                Notify("Rejoining... ","Really black")
            end

            if args[1] == "camlock" or args[1] == "cl" then
                if args[2] ~= nil then
                    local Player = GetPlayer(args[2])[1]
                    if Player ~= nil then
                        Camlocking = true
                        CamlockTarget = tostring(Player)
                        Notify("Now camlocking " .. tostring(CamlockTarget) .. " at the " .. tostring(CamlockPart) .. " BasePart","Really black")
                    end
                else
                    Camlocking = not Camlocking
                    Notify("Camlocking Value is set to " .. tostring(Camlocking),"Really black")
                end
            end
            if args[1] == "uncamlock" or args[1] == "uncl" then
                Camlocking = false
                CamlockTarget = nil
                Notify("Camlocking Value is set to " .. tostring(Camlocking),"Really black")
            end
            if args[1] == "camlockpart" or args[1] == "clpart" and args[2] ~= nil then
                CamlockPart = args[2]
                Notify("CamlockPart Value is set to " .. tostring(CamlockPart),"Really black")
            end

            if args[1] == "die" then
                local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                if Humanoid ~= nil then
                    Humanoid:ChangeState(15)
                end
            end

            if args[1] == "fling" then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
                    local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                    local EHumanoidRootPart = GetInstance(Player.Character,"HumanoidRootPart","Find")
                    local EHumanoid = GetInstance(Player.Character,"Humanoid","Find")
                    if HumanoidRootPart ~= nil and Humanoid ~= nil and Humanoid.Health ~= 0 and EHumanoidRootPart ~= nil and EHumanoid ~= nil and EHumanoid.Health ~= 0 then
                        local StartCFrame = HumanoidRootPart.CFrame
                        local EStartPosition = EHumanoidRootPart.Position
                        coroutine.wrap(function()
                            repeat
                                HumanoidRootPart.Velocity = Vector3.new(0,math.huge,0)
                                Camera.CameraSubject = Player.Character
                                HumanoidRootPart.CFrame = CFrame.new(EHumanoidRootPart.Position) + Vector3.new(EHumanoidRootPart.Velocity.X,0,EHumanoidRootPart.Velocity.Z) / 2.1
                                Heartbeat:Wait()
                            until LocalPlayer.Character == nil or Player == nil or Player.Character == nil or Humanoid == nil or EHumanoid == nil or Humanoid.Health == 0 or EHumanoid.Health == 0 or (EHumanoidRootPart.Position - EStartPosition).magnitude > 100
                            if LocalPlayer.Character ~= nil then
                                Camera.CameraSubject = LocalPlayer.Character
                                Handler("die")
                            end
                        end)()
                    end
                end
            end

            if args[1] == "toolfollow" or args[1] == "tf" then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local ETorso = GetInstance(Player.Character,"Torso","Find")
                    if ETorso == nil then
                        ETorso = GetInstance(Player.Character,"UpperTorso","Find")
                    end
                    local RightArm = GetInstance(LocalPlayer.Character,"Right Arm","Find")
                    if RightArm == nil then
                        RightArm = GetInstance(LocalPlayer.Character,"RightHand","Find")
                    end
                    local Tool = GetInstance(LocalPlayer.Character,"Tool","Find")
                    if RightArm ~= nil and Tool ~= nil and ETorso ~= nil then
                        ToolFollowing = true
                        ToolLastCFrame = Tool.Grip
                        LastTool = Tool
                        Notify("Tool now following " .. tostring(Player),"Really black")
                        coroutine.wrap(function()
                            repeat
                                Tool.Parent = LocalPlayer.Backpack
                                local Handle = GetInstance(Tool,"Handle","Find")
                                if Handle ~= nil then
                                    Handle.Massless = true
                                end
                                local CompressedRCF = RightArm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
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
            if args[1] == "untoolfollow" or args[1] == "untf" then
                ToolFollowing = false
                if LastTool ~= nil and ToolLastCFrame ~= nil then
                    LastTool.Parent = LocalPlayer.Backpack
                    LastTool.Grip = ToolLastCFrame
                    LastTool.Parent = LocalPlayer.Character
                    Notify("Tool stopped following " .. tostring(Player),"Really black")
                end
            end

            if args[1] == "respawn" and LocalPlayer.Character ~= nil then
                local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
                if Humanoid ~= nil then
                    Handler("die")
                    if LocalPlayer.Character ~= nil then
                        LocalPlayer.Character:ClearAllChildren()
                    end
                    local TempChar = Instance.new("Model",workspace)
                    LocalPlayer.Character = TempChar
                    RenderStepped:Wait()
                    LocalPlayer.Character = LocalPlayer.Character
                    TempChar:Destroy()
                    Notify("Respawning character","Really black")
                end
            end

            if args[1] == "refresh" then
                local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
                if HumanoidRootPart ~= nil then
                    local TempCFrame = HumanoidRootPart.CFrame
                    Handler("respawn")
                    LocalPlayer.CharacterAdded:Wait()
                    HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Wait")
                    if HumanoidRootPart ~= nil then
                        HumanoidRootPart.CFrame = TempCFrame
                    end
                end
                Notify("Refreshed","Really black")
            end

            if args[1] == "esp" then
                if args[2] ~= nil then
                    local Player = GetPlayer(args[2])[1]
                    if Player ~= nil and Player.Character ~= nil then
                        local Head = GetInstance(Player.Character,"Head","Find")
                        if Head ~= nil then
                            EspAttach(Head,tostring(Player))
                            Notify(tostring(Player) .. " has been ESP'd","Really black")
                        end
                        notify(tostring(Player) .. "'s character doesn't exist","Really red")
                    end
                else
                    EspEnabled = not EspEnabled
                    if EspEnabled then
                        Notify("EspEnabled Value is set to " .. tostring(EspEnabled),"Really black")
                        for _,player in next,Players:GetPlayers() do
                            if EspEnabled and player ~= LocalPlayer and player.Character ~= nil then
                                local Head = GetInstance(player.Character,"Head","Find")
                                if Head ~= nil then
                                    EspAttach(Head,tostring(player))
                                end
                            end
                        end
                    end
                end
            end

            if args[1] == "unesp" then
                if args[2] ~= nil then
                    local Player = GetPlayer(args[2])[1]
                    if Player ~= nil then
                        local EspBillboard = GetInstance(EspFolder,tostring(Player),"Find")
                        if EspBillboard ~= nil then
                            EspBillboard:Destroy()
                            Notify(tostring(Player) .. " has been UnESP'd","Really black")
                        end
                    end
                else
                    EspEnabled = false
                    EspFolder:ClearAllChildren()
                    Notify("EspEnabled Value is set to " .. tostring(EspEnabled),"Really black")
                end
            end

            if args[1] == "server" and args[2] ~= nil then
                coroutine.wrap(function()
                    local Data = HttpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
                    if args[2] == "hop" then
                        local Servers = {}
                        for _,val in next,Data do
                            if type(val) == "table" and val.maxPlayers > val.playing and val.id ~= game.JobId then
                                table.insert(Servers,val.id)
                            end
                        end
                        if #Servers > 0 then
                            Notify("Teleporting...")
                            TeleportService:TeleportToPlaceInstance(game.PlaceId,val.id)
                        else
                            Notify("No other server to hop to.","Really red")
                        end
                    elseif args[2] == "big" then
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
                                Notify("You're currently in the biggest server","Really red")
                            else
                                Notify("Teleporting...")
                                TeleportService:TeleportToPlaceInstance(game.PlaceId,JobId)
                            end
                        elseif JobId == nil then
                            Notify("Ummm","Really red")
                        end
                    elseif args[2] == "ping" then
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
                                Notify("You're currently in the best ping server","Really red")
                            else
                                Notify("Teleporting...")
                                TeleportService:TeleportToPlaceInstance(game.PlaceId,JobId)
                            end
                        elseif JobId == nil then
                            Notify("Ummm","Really red")
                        end
                    end
                end)()
            end

            if args[1] == "tp" or args[1] == "teleport" or args[1] == "to" and args[2] ~= nil then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local Torso = GetInstance(Player.Character,"Torso","Find")
                    if Torso == nil then
                        Torso = GetInstance(Player.Character,"UpperTorso","Find")
                    end
                    if Torso ~= nil then
                        TeleportHandler("Part","Instant",Torso)
                    end
                end
            end

            if args[1] == "btp" or args[1] == "bteleport" or args[1] == "bto" and args[2] ~= nil then
                local Player = GetPlayer(args[2])[1]
                if Player ~= nil and Player.Character ~= nil then
                    local Torso = GetInstance(Player.Character,"Torso","Find")
                    if Torso == nil then
                        Torso = GetInstance(Player.Character,"UpperTorso","Find")
                    end
                    if Torso ~= nil then
                        TeleportHandler("Part","Progress",Torso)
                    end
                end
            end

        end
        return
    end)()
end

EspFolder.Name = RandomString(25)
Camera = GetInstance(workspace,"Camera","Wait")

if not game:IsLoaded() then
    Notify("Game is still loading...","Really red")
	game.Loaded:Wait()
    Notify("Game loaded!","Lime green")
end

for _,player in next,Players:GetPlayers() do
    if EspEnabled and player ~= LocalPlayer and player.Character ~= nil then
        local Head = GetInstance(player.Character,"Head","Find")
        if Head ~= nil then
            EspAttach(Head,tostring(player))
        end
    end
    player.CharacterAdded:Connect(function(character)
        local Head = GetInstance(character,"Head","Wait")
        if EspEnabled and Head ~= nil then
            EspAttach(Head,tostring(player))
        end
    end)
end

Players.PlayerAdded:Connect(function(player)
    if player.Character ~= nil then
        local Head = GetInstance(player.Character,"Head","Find")
        if EspEnabled and Head ~= nil then
            EspAttach(Head,tostring(player))
        end
    end
    player.CharacterAdded:Connect(function(character)
        local Head = GetInstance(character,"Head","Wait")
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
            Keys["W"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.A then
            Keys["A"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.S then
            Keys["S"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.D then
            Keys["D"] = true
        end
        if yuh.KeyCode == Enum.KeyCode.Q then
            Keys["Q"] = true
            if Floating and not Keys["E"] then
                FloatValue = FloatValue + 0.5
            end
        end
        if yuh.KeyCode == Enum.KeyCode.E then
            Keys["E"] = true
            if Floating and not Keys["Q"] then
                FloatValue = FloatValue - 0.5
            end
        end
        if yuh.KeyCode == CommandBarHotkey and not CmdBarTweening then
            UpdateCmdGuide()
            CmdBarTweening = true
            CmdBar.Size = UDim2.new(0,0,0,25)
            CmdBar.Position = UDim2.new(1,0,1,-295)
            CmdBar.Visible = true
            CmdBar:TweenSize(UDim2.new(0,250,0,25), "Out", "Quad", 0.2, false)
            CmdBar:TweenPosition(UDim2.new(1,-250,1,-295), "Out", "Quad", 0.2, false)
            RenderStepped:Wait()
            CmdBar:CaptureFocus()
            wait(0.25)
            CmdBarTweening = false
        end
    end
end)

UserInputService.InputEnded:Connect(function(yuh,yeet)
    if yuh.KeyCode == Enum.KeyCode.W then
        Keys["W"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.A then
        Keys["A"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.S then
        Keys["S"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.D then
        Keys["D"] = false
    end
    if yuh.KeyCode == Enum.KeyCode.Q then
        Keys["Q"] = false
        if Floating and not Keys["E"] then
            FloatValue = FloatValue - 0.5
        end
    end
    if yuh.KeyCode == Enum.KeyCode.E then
        Keys["E"] = false
        if Floating and not Keys["Q"] then
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
            local Player = GetInstance(Players,CamlockTarget,"Find")
            local Part
            if Player ~= nil and Player.Character ~= nil then
                for _,obj in next,Player.Character:GetChildren() do
                    if obj:IsA("BasePart") and string.lower(tostring(obj)) == string.lower(CamlockPart) then
                        Part = obj
                        break
                    end
                end
                if Part ~= nil then
                    Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p,Part.Position)
                end
            end
        end
        RenderStepped:Wait()
    end
end)()

coroutine.wrap(function()
    while true do
        if VelocitySpeed then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
            local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
            if HumanoidRootPart ~= nil and Humanoid ~= nil then
                local Value = Vector3.new(Humanoid.MoveDirection.X,0,Humanoid.MoveDirection.Z) * VelocitySpeedValue
                HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + Value
            end
        end
        if Floating then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
            if FloatPart == nil then
                FloatPart = Instance.new("Part",workspace)
                FloatPart.Transparency = 1
                FloatPart.Size = Vector3.new(6,1,6)
                FloatPart.Anchored = true
                FloatPart.Name = RandomString(25)
            end
            if HumanoidRootPart ~= nil then
			    FloatPart.CFrame = HumanoidRootPart.CFrame * CFrame.new(0,FloatValue,0)
            end
        end
        if WalkFling then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
            local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
            if HumanoidRootPart ~= nil and Humanoid ~= nil then
                Humanoid:ChangeState(11)
                HumanoidRootPart.Velocity = Vector3.new(0,900000,0)
                Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
            end
        end
        Heartbeat:Wait()
    end
end)()

coroutine.wrap(function()
    while true do
        if Flying then
            local HumanoidRootPart = GetInstance(LocalPlayer.Character,"HumanoidRootPart","Find")
            local Humanoid = GetInstance(LocalPlayer.Character,"Humanoid","Find")
            if HumanoidRootPart ~= nil and Humanoid ~= nil then
                if FlyTempCFrame ~= nil then
                    HumanoidRootPart.CFrame = FlyTempCFrame
                end
                Humanoid.PlatformStand = true
                local part = Instance.new("Part",workspace) part.Name = RandomString(25) part.Size = Vector3.new(1,1,1) part.Anchored = true part.CFrame = HumanoidRootPart.CFrame part.CanCollide = false part.Transparency = 1
                local weld = Instance.new("Weld",part) weld.Part0 = HumanoidRootPart weld.Part1 = part
                if not Typing then
                    if Keys["W"] then
                        part.CFrame = part.CFrame + part.CFrame.lookVector * FlySpeed
                    end
                    if Keys["S"] then
                        part.CFrame = part.CFrame + part.CFrame.lookVector * -FlySpeed
                    end
                    if Keys["A"] then
                        part.CFrame = part.CFrame + part.CFrame.rightVector * -FlySpeed
                    end
                    if Keys["D"] then
                        part.CFrame = part.CFrame + part.CFrame.rightVector * FlySpeed
                    end
                end
                part.CFrame = CFrame.new(HumanoidRootPart.Position,Camera.CoordinateFrame.lookVector * 9e9)
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

table.insert(CommandsList,{Command = "Fly/Unfly", Description = "Fly, you can change the speed by \ntyping Flyspeed Number\n\nExample: flyspeed 2"})
table.insert(CommandsList,{Command = "Float/Unfloat", Description = "Float, Press Q/E to go up and down."})
table.insert(CommandsList,{Command = "Fling", Description = "Fling someone, will not always work."})
table.insert(CommandsList,{Command = "Rejoin", Description = "Rejoin da game"})
table.insert(CommandsList,{Command = "Velocityspeed/Vs", Description = "Velocity Speed bypasses some anti\ncheats that have WalkSpeed checks."})
table.insert(CommandsList,{Command = "WalkSpeed/ws/speed", Description = "WalkSpeed, changes WalkSpeed.\n\nExample: ws 100"})
table.insert(CommandsList,{Command = "JumpPower/jp", Description = "JumpPower, changes JumpPower.\n\n Example: jp 100"})
table.insert(CommandsList,{Command = "WalkFling/wf", Description = "WalkFling, walk into people and it\nwill fling them"})
table.insert(CommandsList,{Command = "Toolfollow/tf", Description = "Makes your tool follow someone\naround.\n\nUntoolfollow/untf to stop it."})
table.insert(CommandsList,{Command = "Refresh", Description = "Respawns you then returns you to\nprevious position."})
table.insert(CommandsList,{Command = "Respawn", Description = "Respawns you"})
table.insert(CommandsList,{Command = "Server", Description = "Server choosing commmand\n\nExample:\nserver hop/server big/server ping"})
table.insert(CommandsList,{Command = "Esp/UnEsp", Description = "ESP\n\nExample:Esp/Esp player"})
table.insert(CommandsList,{Command = "Camlock/UnCamlock", Description = "Locks your camera on to a player."})
table.insert(CommandsList,{Command = "Gravity", Description = "Sets gravity.\n\nExample: gravity 0"})
table.insert(CommandsList,{Command = "to/tp/teleport", Description = "Teleport to someone\n\nExample: teleport builderman"})
table.insert(CommandsList,{Command = "bto/btp/bteleport", Description = "Teleport bypass to someone\n\nExample: bteleport builderman"})

-- // LOAD TIME END \\ --

Notify("Thank you for using DrPoppa Admin!","Really black")
Notify("Took " .. tick() - start .. " to start","Really black")