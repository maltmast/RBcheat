local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib('Другие читы: @RBscriptsHere', "RJTheme3")
local Tab = Window:NewTab("Сверхсила")
local SectionRun = Tab:NewSection("Суперскорость")

SectionRun:NewButton("Вкл./Выкл.", "Активировать или дизактивировать суперскорость", function()
    if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= 20 then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
	end
end)

local SectionJump = Tab:NewSection("Суперпрыжок")

SectionJump:NewButton("Вкл./Выкл.", "Активировать или дизактивировать суперпрыжок", function()
    if game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= 50 then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	else
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
	end
end)

local SectionGod = Tab:NewSection("GodMode(БЕТА)")

SectionGod:NewButton("Попробовать", "Включить бессмертие", function()
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
end)

SectionGod:NewButton("Попробовать 2 вариант", "Включить бессмертие", function()
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
	game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
end)


local Tab2 = Window:NewTab("НастройЧиты")
local SectionSS = Tab2:NewSection("Настроить скорость")

SectionSS:NewSlider("Скорость", "SliderInfo", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

SectionSS:NewSlider("Сила прыжка", "SliderInfo", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local SectionBack = Tab2:NewSection("Настройки по умолчанию")

SectionBack:NewButton("Вернуть скорость", "Вернуть скорость на нормальную", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
end)

SectionBack:NewButton("Вернуть силу прыжка", "Вернуть силу прыжка на нормальную", function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

SectionBack:NewButton("Вернуть всё", "Вернуть всё на нормальное", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
