local a=Instance.new("ScreenGui")local b=Instance.new("TextLabel")local c=loadstring(game:HttpGet("https://raw.githubusercontent.com/loglizzy/lib/main/main.lua"))()local d=c:Window("Te.Speed controls")fast=450;medium=250;low=100;normal=30;d:Toggle("Visibility",function(e)b.Visible=e end)d:Slider("Fast Speed",{max=1000,def=450},function(f)fast=f end)d:Slider("Medium Speed",{max=800,def=250},function(f)medium=f end)d:Slider("Low Speed",{max=700,def=100},function(f)low=f end)d:Slider("Normal Speed",{max=400,def=30},function(f)normal=f end)a.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui")a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;b.Parent=a;b.BackgroundColor3=Color3.fromRGB(255,255,255)b.BackgroundTransparency=1.000;b.Position=UDim2.new(0,0,1,-50)b.Size=UDim2.new(0,200,0,50)b.Font=Enum.Font.Roboto;b.Text="16 S/h"b.TextColor3=Color3.fromRGB(255,255,255)b.TextSize=30.000;b.TextXAlignment=Enum.TextXAlignment.Left;b.TextYAlignment=Enum.TextYAlignment.Bottom;local function g()local h=Instance.new("LocalScript",b)player=game.Players.LocalPlayer;while wait()do x=player.Character.HumanoidRootPart.Velocity.magnitude;h.parent.Text=math.floor(x).." SPS"if x>fast then h.parent.TextColor3=Color3.new(1,0,0)else if x>medium then h.parent.TextColor3=Color3.new(1,1,0)else if x>low then h.parent.TextColor3=Color3.new(0.603922,0.803922,0.196078)else if x>normal then h.parent.TextColor3=Color3.new(0,1,0)else if x==game.Players.LocalPlayer.Character.Humanoid.WalkSpeed then h.parent.TextColor3=Color3.new(1,1,1)end end end end end end end;coroutine.wrap(g)()
