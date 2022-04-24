currentDifficulty = 'its still fucked';

function onCreate()
	makeLuaText('watermark', songName .. ' - ' .. currentDifficulty .. " | UE 0.1a", 0, 2, 701);
	setTextAlignment('watermark', left);
	setTextSize('watermark', 15);
	setTextBorder('watermark', 1, '000000');
	addLuaText("watermark")

	makeLuaText("alpha", "Alpha 0.1", 0, 1190, 701);
	setTextAlignment("alpha", "right");
	setTextSize('alpha', 15);
	setTextBorder('alpha', 1, '000000');
	addLuaText("alpha", true);
end

function onUpdate(elapsed)
	currentDifficulty = getProperty('storyDifficultyText');
	setTextString('watermark', songName .. ' - ' .. currentDifficulty .. " | UE 0.1a");
end