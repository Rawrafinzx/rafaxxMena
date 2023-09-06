if game.PlaceId == 9572517113 then

    -- load
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	OrionLib:MakeNotification({
        Name = "Menu Online",
        Content = "Feito Por 14kRafa0 (Nevoeiro)",
        Image = "rbxassetid://4483345998",
        Time = 5
    })

    
    -- coisas
    
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    
    -- funcoes tp

    function TpObserva()
        char.HumanoidRootPart.CFrame = CFrame.new(-253.962006, 140.400604, -357.884857, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    end
    
    function TpRefei()
        char.HumanoidRootPart.CFrame = CFrame.new(-161.736053, 99.5687866, -280.578217, -1, 0, 0, 0, 1, 0, 0, 0, -1)

    end

    -- funcoes esp

	function AtivaEsp()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
	end

	-- funcoes infinite yield

	function AtivaInfinite()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end

	







	

	
-- funcao no recoil

function NoReco()
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
        library.flags = { }
        local nr = library:Window("No Recoil")
        
        
        library.flags["value_1"] = 1
        library.flags["value_2"] = 1
        library.flags["value_3"] = 1
        
        nr:Slider("Value 1", 1, 10, 1, function(value)
          library.flags["value_1"] = value
        end)
        nr:Slider("Value 2", 1, 100, 1, function(value)
          library.flags["value_2"] = value
        end)
        nr:Slider("Value 3", 1, 10, 1, function(value)
          library.flags["value_3"] = value
           
        end)
        
        
        local old
        old = hookfunction(math.random, function(...)
           local args = {...}
        
           -- handle if no args, math.random() (0, 1.0)
           if args[1] == nil then
               return old() / library.flags["value_1"]
           end
        
           -- handle if upper bound. math.random(10) (1, 10)
           if args[2] == nil then
               return old(args[1] / library.flags["value_2"])
           end
        
           -- handle if lower and upper bound. math.random(-5, 5) (-5, 5)
        
           return old(args[1], args[2] / library.flags["value_3"])
        end)
  	end    



    -- main

    local Window = OrionLib:MakeWindow({Name = "rafaxmenu", HidePremium = false, SaveConfig = true, ConfigFolder = "rafatest"})

    -- tabs 

local TpTab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local JogTab = Window:MakeTab({
	Name = "Jogador",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local VisuTab = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MenusTab = Window:MakeTab({
	Name = "Menus",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- botoes menus

MenusTab:AddButton({
	Name = "Hub ACS V1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/StoneDev47/KLB-HUB---ACS/main/mainhub", true))()
  	end    
})

MenusTab:AddButton({
	Name = "Hub ACS V2 (Em Breve)",
	Callback = function()
      	
  	end    
})

MenusTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      	AtivaInfinite()
  	end    
})

MenusTab:AddButton({
	Name = "Felipe Menu",
	Callback = function()
      	
  	end    
})

-- botoes visual

VisuTab:AddButton({
	Name = "ESP",
	Callback = function()
		AtivaEsp()
      	
  	end    
})

VisuTab:AddButton({
	Name = "Aimbot (Em breve)",
	Callback = function()
		
	end
})

-- botoes jogador tab

JogTab:AddButton({
	Name = "Mudar Velocidade",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Pedroxz63/Kill-by-pedroxz63/main/Kill%20by%20Pedroxz63.md'))()
  	end    
})

JogTab:AddButton({
	Name = "No Recoil",
	Callback = function()
      	NoReco()
  	end    
})
		

JogTab:AddButton({
	Name = "PuxarArmas+",
	Callback = function()
		for i, v in pairs(game:GetDescendants()) do
            if v:IsA('Tool') then
                v.Parent = game:GetService('Players').LocalPlayer.Backpack
            end
        end
        
        game:GetService('Players').LocalPlayer.Character.Humanoid.Died:Connect(function()
            for i, v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetDescendants()) do
                if v:IsA('Tool') then
                    v.Parent = game:GetService('Teams')
                end
            end
            for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants()) do
                if v:IsA('Tool') then
                    v.Parent = game:GetService('Teams')
                end
            end
        end)
      end    
          
})

JogTab:AddButton({
	Name = "Noclip",
	Callback = function()
		game:GetService("RunService").Stepped:wait()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.Torso.CanCollide = false
	
  	end    
})


-- botoes tp

TpTab:AddButton({
	Name = "TeleportObservatorio",
	Callback = function()
      	TpObserva()
  	end    
})

TpTab:AddButton({
	Name = "TeleportRefeitor",
	Callback = function()
      	TpRefei()
  	end    
})









end
    
