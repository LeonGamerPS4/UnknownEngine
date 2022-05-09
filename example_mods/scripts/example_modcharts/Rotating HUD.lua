local defaultNotePos = {}
local spin = 5
 
function onCreate()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 500 --How long it will take.
    
    if curStep >= 52 and curStep < 50000 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
    
    if curStep == 50000 then
        setProperty("camHUD.angle", 0)
    end
end