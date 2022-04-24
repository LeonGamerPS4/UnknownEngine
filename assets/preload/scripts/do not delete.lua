notehitlol = 0
sadfasd = 0 -- unused
font = "vcr.ttf" -- the font that the text will use.
cmoffset = -4
cmy = 20
tnhx = -10
function onCreate()
    makeLuaText('itg', 'UE Judgement', 160, itgx, 250);
    setTextFont('itg', font);
    makeLuaText("cm", 'Highest Combo: 0', 250, -getProperty('itg.x') + cmoffset, getProperty('itg.y') + cmy);
    makeLuaText("sick", 'Sick: 0', 200, getProperty('cm.x'), getProperty('cm.y') + 30);
    makeLuaText("good", 'Good: 0', 200, getProperty('cm.x'), getProperty('sick.y') + 30);
    makeLuaText("bad", 'Bad: 0', 200, getProperty('cm.x'), getProperty('good.y') + 30);
    makeLuaText("shit", 'Shit: 0', 200, getProperty('cm.x'), getProperty('bad.y') + 30);
    makeLuaText("miss", 'Miss: 0', 200, getProperty('cm.x'), getProperty('shit.y') + 30);

    setObjectCamera("itg", 'other');
    setTextSize('itg', 20);
    addLuaText("itg");
    setObjectCamera("cm", 'other');
    setTextSize('cm', 20);
    addLuaText("cm");
    setTextFont('cm', font)
    setTextAlignment('cm', 'left')
    setObjectCamera("sick", 'other');
    setTextSize('sick', 20);
    addLuaText("sick");
    setTextFont('sick', font)
    setTextAlignment('sick', 'left')
    setObjectCamera("good", 'other');
    setTextSize('good', 20);
    addLuaText("good");
    setTextFont('good', font)
    setTextAlignment('good', 'left')
    setObjectCamera("bad", 'other');
    setTextSize('bad', 20);
    addLuaText("bad");
    setTextFont('bad', font)
    setTextAlignment('bad', 'left')
    setObjectCamera("shit", 'other');
    setTextSize('shit', 20);
    addLuaText("shit");
    setTextFont('shit', font)
    setTextAlignment('shit', 'left')
    setObjectCamera("miss", 'other');
    setTextSize('miss', 20);
    addLuaText("miss");
    setTextFont('miss', font)
    setTextAlignment('miss', 'left')
end

function onUpdate(elapsed)
    notehitloltosting = tostring(notehitlol)
    setTextString('cm', 'Highest Combo: ' .. getProperty('combo'))
    setTextString('sick', 'Sick: ' .. getProperty('sicks'))
    setTextString('good', 'Good: ' .. getProperty('goods'))
    setTextString('bad', 'Bad: ' .. getProperty('bads'))
    setTextString('shit', 'Shit: ' .. getProperty('shits'))
    setTextString('miss', 'Miss: ' .. getProperty('songMisses'))
	-- start of "update", some variables weren't updated yet
end