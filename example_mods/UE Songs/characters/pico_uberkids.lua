function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'picodeath'); --Character json file for the death animation

	precacheImage('characters/PicoDeath');
end

local keys = {'left', 'down', 'up', 'right', 'space'}
function onUpdate(elapsed)
	if (keyJustPressed(keys) or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER')) and inGameOver then
		playSound('BOOOOOOOING');
	end
end