local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Jumped V2","BEST SCRIPT W")

local Home = UI:addPage("Home",2,false,0)

Home:addButton("Faded [b11]", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic'))()
end)

Home:addButton("Swagmode[b22]", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
end)

Home:addButton("Fly [X]", function()
    local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()
    
    localplayer = plr
    
    if workspace:FindFirstChild("Core") then
        workspace.Core:Destroy()
    end
    
    local Core = Instance.new("Part")
    Core.Name = "Core"
    Core.Size = Vector3.new(0.05, 0.05, 0.05)
    
    spawn(function()
        Core.Parent = workspace
        local Weld = Instance.new("Weld", Core)
        Weld.Part0 = Core
        Weld.Part1 = localplayer.Character.LowerTorso
        Weld.C0 = CFrame.new(0, 0, 0)
    end)
    
    workspace:WaitForChild("Core")
    
    local torso = workspace.Core
    flying = true
    local speed=10
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.cframe = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=5
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+0
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+0
            end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+0
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+0
            end
            if speed>10 then
                speed=5
            end
            pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
        until flying == false
        if gyro then gyro:Destroy() end
        if pos then pos:Destroy() end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed=10
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        elseif key=="x" then
            if flying==true then
                flying=false
            else
                flying=true
                start()
            end
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
        start()
end)

Home:addButton("Animations Gamepass [P]",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Here";
        Text = "free😁🙂🙂🤩😏😶🥱";
        Duration = 25;
    })
    wait(3)
    -- // Delete Clones
	for _, v in next, game:GetService("CoreGui"):GetChildren() do
		if (v.Name:match("FreeAnimationPack")) then
			v:Destroy()
		end
	end

	-- // Instances
	local FreeAnimationPack = Instance.new("ScreenGui")
	local AnimationPack = Instance.new("TextButton")
	local Animations = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Lean = Instance.new("TextButton")
	local Lay = Instance.new("TextButton")
	local Dance1 = Instance.new("TextButton")
	local Dance2 = Instance.new("TextButton")
	local Greet = Instance.new("TextButton")
	local ChestPump = Instance.new("TextButton")
	local Praying = Instance.new("TextButton")
	local Stop = Instance.new("TextButton")
	local UniversalAnimation = Instance.new("Animation")

	-- // Utility
	function stopTracks()
		for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
			if (v.Animation.AnimationId:match("rbxassetid")) then
				v:Stop()
			end
		end
	end

	function loadAnimation(id)
		if UniversalAnimation.AnimationId == id then
			stopTracks()
			UniversalAnimation.AnimationId = "1"
		else
			UniversalAnimation.AnimationId = id
			local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
			animationTrack:Play()
		end
	end

	-- // Properties
	FreeAnimationPack.Name = "FreeAnimationPack"
	FreeAnimationPack.Parent = game.CoreGui
	FreeAnimationPack.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	AnimationPack.Name = "AnimationPack"
	AnimationPack.Parent = FreeAnimationPack
	AnimationPack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AnimationPack.BorderSizePixel = 0
	AnimationPack.Position = UDim2.new(0, 0, 0.388007045, 0)
	AnimationPack.Size = UDim2.new(0, 100, 0, 20)
	AnimationPack.Font = Enum.Font.Arial
	AnimationPack.Text = "Animations"
	AnimationPack.TextColor3 = Color3.fromRGB(0, 0, 0)
	AnimationPack.TextSize = 18.000
	AnimationPack.MouseButton1Click:Connect(function()
		if (Animations.Visible == false) then
			Animations.Visible = true
		end
	end)

	Animations.Name = "Animations [P]"
	Animations.Parent = AnimationPack
	Animations.Active = true
	Animations.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
	Animations.Position = UDim2.new(-0.104712225, 0, -1.54173493, 0)
	Animations.Size = UDim2.new(0, 120, 0, 195)
	Animations.Visible = false
	Animations.CanvasPosition = Vector2.new(0, 60.0000305)
	Animations.CanvasSize = UDim2.new(0, 0, 1, 235)

	UIListLayout.Parent = Animations
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 2)

	Lean.Name = "Lean"
	Lean.Parent = Animations
	Lean.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lean.Size = UDim2.new(1, 0, 0, 30)
	Lean.Font = Enum.Font.Arial
	Lean.Text = "Lean"
	Lean.TextColor3 = Color3.fromRGB(0, 0, 0)
	Lean.TextSize = 14.000
	Lean.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3152375249")
	end)

	Lay.Name = "Lay"
	Lay.Parent = Animations
	Lay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lay.Size = UDim2.new(1, 0, 0, 30)
	Lay.Font = Enum.Font.Arial
	Lay.Text = "Lay"
	Lay.TextColor3 = Color3.fromRGB(0, 0, 0)
	Lay.TextSize = 14.000
	Lay.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3152378852")
	end)

	Dance1.Name = "Dance1"
	Dance1.Parent = Animations
	Dance1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dance1.Size = UDim2.new(1, 0, 0, 30)
	Dance1.Font = Enum.Font.Arial
	Dance1.Text = "Dance1"
	Dance1.TextColor3 = Color3.fromRGB(0, 0, 0)
	Dance1.TextSize = 14.000
	Dance1.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3189773368")
	end)

	Dance2.Name = "Dance2"
	Dance2.Parent = Animations
	Dance2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dance2.Size = UDim2.new(1, 0, 0, 30)
	Dance2.Font = Enum.Font.Arial
	Dance2.Text = "Dance2"
	Dance2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Dance2.TextSize = 14.000
	Dance2.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3189776546")
	end)

	Greet.Name = "Greet"
	Greet.Parent = Animations
	Greet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Greet.Size = UDim2.new(1, 0, 0, 30)
	Greet.Font = Enum.Font.Arial
	Greet.Text = "Greet"
	Greet.TextColor3 = Color3.fromRGB(0, 0, 0)
	Greet.TextSize = 14.000
	Greet.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3189777795")
	end)

	ChestPump.Name = "ChestPump"
	ChestPump.Parent = Animations
	ChestPump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChestPump.Size = UDim2.new(1, 0, 0, 30)
	ChestPump.Font = Enum.Font.Arial
	ChestPump.Text = "Chest Pump"
	ChestPump.TextColor3 = Color3.fromRGB(0, 0, 0)
	ChestPump.TextSize = 14.000
	ChestPump.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3189779152")
	end)

	Praying.Name = "Praying"
	Praying.Parent = Animations
	Praying.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Praying.Size = UDim2.new(1, 0, 0, 30)
	Praying.Font = Enum.Font.Arial
	Praying.Text = "Praying"
	Praying.TextColor3 = Color3.fromRGB(0, 0, 0)
	Praying.TextSize = 14.000
	Praying.MouseButton1Click:Connect(function()
		stopTracks()
		loadAnimation("rbxassetid://3487719500")
	end)

	Stop.Name = "Stop"
	Stop.Parent = Animations
	Stop.BackgroundColor3 = Color3.fromRGB(255, 112, 112)
	Stop.Size = UDim2.new(1, 0, 0, 30)
	Stop.Font = Enum.Font.ArialBold
	Stop.Text = "Stop Animations"
	Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
	Stop.TextSize = 14.000
	Stop.MouseButton1Click:Connect(function()
		stopTracks()
	end)
	--scripts
	local plr = game.Players.LocalPlayer

	plr:GetMouse().KeyDown:Connect(function(K)
		if K == "p" then
			Animations.Visible = false
		end
	end)
end)

Home:addButton("Better Aimlock [E]", function()
  -- Toggle
getgenv().Target = true

-- Configuration
getgenv().Key = Enum.KeyCode.E
getgenv().Prediction = 0.160126357
getgenv().ChatMode = false
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = true
    getgenv().Partz = "HumanoidRootPart"
getgenv().AutoPrediction = false
getgenv().Fov = 100
getgenv().Circle = true
--
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "gay"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.5
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(7,7,7)
    Tracer.Color = Color3.fromRGB(255,215,0)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(25,25,25)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = getgenv().Fov
circle.Thickness = 0
circle.Transparency = 0
circle.Visible = getgenv().Circle
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
    if getgenv().AirshotFunccc == true then
            if Plr ~= nil then else return; end
            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "HumanoidRootPart"
                    end
                end)
            end
end
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "aimlock",
                   Text = "Already Loaded!",
                   Duration = 5
        
                   })
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        local A_1 = "Target: "..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
        Title = "funxpyware.cc";
        Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName);
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        local A_1 = "Unlocked!" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
        if getgenv().NotifMode then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "funxpyware.cc",
                   Text = "Unlocked",
                   Duration = 5
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Target left or died.",
                   Duration = 5
     
                   })
               
               end
                  
 
 end     end   
end
end
end)
	
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)
		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)
---
	while wait() do
	if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
        if ping < 130 then
            getgenv().Prediction = 0.151
        elseif ping < 125 then
            getgenv().Prediction = 0.149
        elseif ping < 110 then
            getgenv().Prediction = 0.140
        elseif ping < 105 then
            getgenv().Prediction = 0.133
        elseif ping < 90 then
            getgenv().Prediction = 0.130
        elseif ping < 80 then
            getgenv().Prediction = 0.128
        elseif ping < 70 then
            getgenv().Prediction = 0.1230
        elseif ping < 60 then
            getgenv().Prediction = 0.1229
        elseif ping < 50 then
            getgenv().Prediction = 0.1225
        elseif ping < 40 then
            getgenv().Prediction = 0.1256
        end
	end
    end
end)
Home:addToggle("ClientAntiKick",function(value)
    print(value)
    if value == false then 
        game.StarterGui:SetCore("SendNotification",{
            Title = "Anti kick";
            Text = "No";
        })
    else 
        game.StarterGui:SetCore("SendNotification",{
            Title = "Anti kick";
            Text = "Yes";
        })
    end
end)

Home:addButton("Korblox", function()
    local ply = game.Players.LocalPlayer
	local chr = ply.Character
	chr.RightLowerLeg.MeshId = "902942093"
	chr.RightLowerLeg.Transparency = "1"
	chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	chr.RightFoot.MeshId = "902942089"
	chr.RightFoot.Transparency = "1"
end)

Home:addButton("Headless", function()
    local LocalP = game.Players.LocalPlayer.Character
	LocalP.Head.Transparency = 1
	LocalP.Head.face:Destroy()
end)

Home:addSlider("WalkSpeed (broken)",16,100,function(value)
    print("Walkspeed: " + value)
end)

Home:addTextBox("Aimlock [type]","lcoking",function(value)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Locked onto:";
        Text = value;
    })
end)

Home:addDropdown("Executor",{"Sentiel","Synapse X","Krnl","JJSploit"},1,function(value)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Selected: ";
        Text = value;
    }) 
end)

-- Just an example of how you would actually use it i guess

local LP = UI:addPage("Fun Stuff (risky)",2,false,6)

-- Label

LP:addLabel("Fun Stuff","Risky")

--- Button



-- Toggle

LP:addToggle("Sprint (Hold Shift)",function(value)
    if value == false then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
    end
end)

-- Slider

LP:addSlider("WalkSpeed (Will Get Crashed if over 50)",16,150,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- Textbox

LP:addTextBox("Jump Power / 50 is default","Number here",function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- Dropdown 


local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

LP:addButton("Force Reset",function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)

local ani = UI:addPage("Animations",3,false,13)
local Animate = game.Players.LocalPlayer.Character.Animate

ani:addButton("Zombie", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/t3yTSPRn",true))()
end)

ani:addButton("Werewolf", function() 
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083222527"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083225406"
end)

ani:addButton("Mage", function() 
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=707876443"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=707894699"
end)

ani:addButton("Elder", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=845401742"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=845403127"
end)

ani:addButton("Vampire", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083464683"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083467779"
end)

ani:addButton("Astronaut", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=891639666"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=891663592"
end)

ani:addButton("Cartoony", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=742639220"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=742639812"
end)

ani:addButton("Ninja", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=656119721"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=656121397"
end)

ani:addButton("Bubbly", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
end)

ani:addButton("Stylish", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616143378"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616144772"
end)

ani:addButton("Toy", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=782844582"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=782845186"
end)

ani:addButton("Oldschool", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=5319847204"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=5319844329"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=5319841935"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=5319816685"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=5319850266"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=5319852613"
end)

ani:addButton("Rthro", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=2510199791"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=2510201162"
end)

local farm = UI:addPage("AutoFarm Stuff",3,false,3)

farm:addLabel("This might get patched, will update if so.")

farm:addButton("Kick Bypass", function()
  game.Players.LocalPlayer.Humanoid.Health = 0
  wait(5)
  game.StarterGui:SetCore("SendNotification",{
    Title = "Kick Bypass";
    Text = "You May now Farm.";
})
end)

farm:addButton("ATM Farm (Use Kick Bypass)", function()
    local gm = getrawmetatable(game)
    setreadonly(gm, false)
    local namecall = gm.__namecall
    gm.__namecall =
        newcclosure(
        function(self, ...)
            local args = {...}
            if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
                if tostring(getcallingscript()) ~= "Framework" then
                    return
                end
            end
            if not checkcaller() and getnamecallmethod() == "Kick" then
                return
            end
            return namecall(self, unpack(args))
        end
    )
     
    local LocalPlayer = game:GetService("Players").LocalPlayer
     
    function gettarget()
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        local maxdistance = math.huge
        local target
        for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
            if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                local distance = (HumanoidRootPart.Position - v.Head.Position).magnitude
                if distance < maxdistance then
                    target = v
                    maxdistance = distance
                end
            end
        end
        return target
    end
     
    for i, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Seat") then
            v:Destroy()
        end
    end
     
    shared.MoneyFarm = true -- Just execute shared.MoneyFarm = false to stop farming
     
    while shared.MoneyFarm do
        wait()
        local Target = gettarget()
        repeat
            wait()
            pcall(
                function()
                    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                    local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or Character:FindFirstChild("Combat")
                    if not Combat then
                        Character:FindFirstChild("Humanoid").Health = 0
                        return
                    end
                    HumanoidRootPart.CFrame = Target.Head.CFrame * CFrame.new(0, -2.5, 3)
                    Combat.Parent = Character
                    Combat:Activate()
                end
            )
        until not Target or Target.Humanoid.Health < 0
        for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
            if v:IsA("ClickDetector") and v.Parent and v.Parent.Name:find("Money") then
                local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                if (v.Parent.Position - HumanoidRootPart.Position).magnitude <= 18 then
                    repeat
                        wait()
                        fireclickdetector(v)
                    until not v or not v.Parent.Parent
                end
            end
        end
        wait(1)
    end
end)

local shop = UI:addPage("Target",3,false,2)

shop:addLabel("Target Page (Coming Soon)")

local autobuy = UI:addPage("Auto Buy [BETA]",false,0)

autobuy:addButton("[Glock] - $515", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Ignored.Shop["[Glock] - $515"].Head.CFrame.Position) --change to coordinates of brick you are teleporting to
end)

autobuy:Label("  ")

autobuy:addButton("[Silencer] - $550", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Ignored.Shop["[Silencer] - $550"].Head.CFrame.Position) --change to coordinates of brick you are teleporting to
end)

local theme = UI:addPage("Themes",6,false,2)

theme:addLabel("Coming Soon")
