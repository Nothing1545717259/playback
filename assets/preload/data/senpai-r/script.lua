local on = 0
local camin = 0.025
local hudin = 0.025

function goodNoteHit(id, direction, noteType, isSustainNote)
    -- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
    if curStep > 626 then
        if curStep < 767 then
            if direction == 0 then
                    noteTweenAngle('6', 4, -15, 0.5, 'cubeOut')
                    noteTweenAngle('7', 5, -15, 0.5, 'cubeOut')
                    noteTweenAngle('8', 6, -15, 0.5, 'cubeOut')
                    noteTweenAngle('9', 7, -15, 0.5, 'cubeOut')
                    runTimer('camRotFalling', 0.2)
            end
            if direction == 3 then
                    noteTweenAngle('6', 4, 15, 0.5, 'cubeOut')
                    noteTweenAngle('7', 5, 15, 0.5, 'cubeOut')
                    noteTweenAngle('8', 6, 15, 0.5, 'cubeOut')
                    noteTweenAngle('9', 7, 15, 0.5, 'cubeOut')
                    runTimer('camRotFalling', 0.2)
            end
        end
    end
end

function onCreatePost()
    setProperty('warning2.alpha', 0.001);
    setProperty('leaves.alpha', 0.001);
    setProperty('petals.alpha', 0.001);
    setProperty('mic.alpha', 0.001);
    setProperty('Altchara.alpha', 0.001);
    setProperty('bubble.alpha', 0.001);
    setProperty('Altcoco.alpha', 0.001);
    setProperty('Altabi.alpha', 0.001);
    setProperty('Altgirl1.alpha', 0.001);
    setProperty('Altgirl2.alpha', 0.001);
    setProperty('Altgirl3.alpha', 0.001);

    UpperBar = getProperty('UpperBar.y')
    LowerBar = getProperty('LowerBar.y')

    makeLuaSprite('whitebg', '', 0, 0)
    setScrollFactor('whitebg', 0, 0)
    makeGraphic('whitebg', 3840, 2160, 'ffffff')
    addLuaSprite('whitebg', false)
    setProperty('whitebg.alpha', 1)
    screenCenter('whitebg', 'xy')
end

function onStartCountdown()
    setProperty('gf.alpha', 0);
    setProperty('dad.alpha', 0);
    setProperty('boyfriend.alpha', 0);
end

function onSongStart()
        doTweenAlpha('warning2', 'warning2', 1, 2, 'linear')
            function onUpdate(elapsed)
                setProperty('camZooming', false)
            end
        setProperty('gf.alpha', 0);
        doTweenAlpha('dad', 'dad', 1, 2, 'linear')
end

function onStepHit()
    if curStep == 20 then
        doTweenAlpha('warning2', 'warning2', 0, 4, 'linear')
    end

    if curStep == 32 then
        doTweenAlpha('boyfriend', 'boyfriend', 1, 2, 'linear')
    end

    if curStep == 62 then
        doTweenZoom('zoomintro', 'camGame', 0.4, 6.7, 'cubeOutIn')
        doTweenZoom('zoomintro2', 'camHUD', 0.9, 6.7, 'cubeOutIn')
        doTweenColor('dadcolor', 'dad', '000000', 6.1, 'cubeOutIn')
        doTweenColor('bfcolor', 'boyfriend', '000000', 6.1, 'cubeOutIn')

        doTweenY('Bar1', 'UpperBar', UpperBar + 100, 6.3, 'cubeOutIn')
        doTweenY('Bar2', 'LowerBar', LowerBar - 100, 6.3, 'cubeOutIn')
    end

    if curStep == 126 then
        doTweenY('Bar1', 'UpperBar', UpperBar - 140, 0.2, 'outElastic')
        doTweenY('Bar2', 'LowerBar', LowerBar + 140, 0.2, 'outElastic')
    end

    if curStep == 127 then
        runHaxeCode('FlxG.game.setFilters([]);')
        cameraFlash("camHUD", '0xffffff', 5);

            function onUpdate(elapsed)
                setProperty('camZooming', true)
            end

        setProperty('leaves.alpha', 1);
        setProperty('petals.alpha', 1);
        doTweenAlpha('applebadxd', 'whitebg', 0, 0.2, 'linear')
        doTweenAlpha('scoretext', 'scoretext', 0.9, 0.3, 'outElastic');
        setProperty('iconP2.alpha', 1)
        setProperty('iconP1.alpha', 1)
        doTweenAlpha('healthBar', 'healthBar', 1, 0.3, 'outElastic');
        doTweenAlpha('healthi', 'healthi', 1, 0.3, 'outElastic');
        doTweenAlpha('HParrow', 'HParrow', 1, 0.3, 'outElastic');

        clouds = getProperty('clouds.x')
        doTweenX('cloudsMove', 'clouds', clouds + 2000, 300, 'linear')
    end

-- bubble

    if curStep == 343 then
        doTweenAlpha('bubble1', 'bubble', 1, 0.2, 'outElastic');
    end

    if curStep == 365 then
        doTweenAlpha('bubble2', 'bubble', 0, 0.3, 'outElastic');
    end

--
    if curStep == 624 then

        makeLuaSprite('countdown3', 'hud/prepare', 50)
        screenCenter('countdown3', 'xy')
        setObjectCamera('countdown3', 'camHUD')
        addLuaSprite('countdown3', true)
        doTweenAlpha('ready3end','countdown3',0,crochet/1000,'cubeInOut')
        runTimer('wait2', crochet/1000)
    end

	if curStep == 626 then
        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            doTweenY('timeTxtY', 'timeTxt', 40, 1, 'cubeInOut')
            noteTweenX("NoteMove1", 0, 410, 2, 'cubeInOut');
            noteTweenX("NoteMove2", 1, 520, 2, 'cubeInOut');
            noteTweenX("NoteMove3", 2, 630, 2, 'cubeInOut');
            noteTweenX("NoteMove4", 3, 740, 2, 'cubeInOut');
            noteTweenY('note1y' .. getSongPosition(), 0, 100, 2, "cubeInOut");
            noteTweenY('note2y' .. getSongPosition(), 1, 100, 2, "cubeInOut");
            noteTweenY('note3y' .. getSongPosition(), 2, 100, 2, "cubeInOut");
            noteTweenY('note4y' .. getSongPosition(), 3, 100, 2, "cubeInOut");

            noteTweenX('note4x' .. getSongPosition(), 4, 412, 2, "cubeInOut");
            noteTweenX('note5x' .. getSongPosition(), 5, 524, 2, "cubeInOut");
            noteTweenX('note6x' .. getSongPosition(), 6, 636, 2, "cubeInOut");
            noteTweenX('note7x' .. getSongPosition(), 7, 748, 2, "cubeInOut");
            noteTweenY('note5y' .. getSongPosition(), 4, 100, 2, "cubeInOut");
            noteTweenY('note6y' .. getSongPosition(), 5, 100, 2, "cubeInOut");
            noteTweenY('note7y' .. getSongPosition(), 6, 100, 2, "cubeInOut");
            noteTweenY('note8y' .. getSongPosition(), 7, 100, 2, "cubeInOut");
        else
            doTweenY('timeTxtY', 'timeTxt', 630, 1, 'cubeInOut')
            noteTweenX("NoteMove1", 0, 410, 2, 'cubeInOut');
            noteTweenX("NoteMove2", 1, 520, 2, 'cubeInOut');
            noteTweenX("NoteMove3", 2, 630, 2, 'cubeInOut');
            noteTweenX("NoteMove4", 3, 740, 2, 'cubeInOut');
            noteTweenY('note1y' .. getSongPosition(), 0, 520, 2, "cubeInOut");
            noteTweenY('note2y' .. getSongPosition(), 1, 520, 2, "cubeInOut");
            noteTweenY('note3y' .. getSongPosition(), 2, 520, 2, "cubeInOut");
            noteTweenY('note4y' .. getSongPosition(), 3, 520, 2, "cubeInOut");

            noteTweenX('note4x' .. getSongPosition(), 4, 412, 2, "cubeInOut");
            noteTweenX('note5x' .. getSongPosition(), 5, 524, 2, "cubeInOut");
            noteTweenX('note6x' .. getSongPosition(), 6, 636, 2, "cubeInOut");
            noteTweenX('note7x' .. getSongPosition(), 7, 748, 2, "cubeInOut");

            noteTweenY('note5y' .. getSongPosition(), 4, 520, 2, "cubeInOut");
            noteTweenY('note6y' .. getSongPosition(), 5, 520, 2, "cubeInOut");
            noteTweenY('note7y' .. getSongPosition(), 6, 520, 2, "cubeInOut");
            noteTweenY('note8y' .. getSongPosition(), 7, 520, 2, "cubeInOut");
        end
            noteTweenAlpha("NoteAlpha13", 0, 0, 2, 'cubeInOut');
            noteTweenAlpha("NoteAlpha14", 1, 0, 2, 'cubeInOut');
            noteTweenAlpha("NoteAlpha15", 2, 0, 2, 'cubeInOut');
            noteTweenAlpha("NoteAlpha16", 3, 0, 2, 'cubeInOut');
    end

    if curStep == 636 then
        doTweenY('Bar1', 'UpperBar', UpperBar + 80, 0.5, 'outElastic')
        doTweenY('Bar2', 'LowerBar', LowerBar - 80, 0.5, 'outElastic')

        setProperty('chara.alpha', 0.001);
        setProperty('coco.alpha', 0.001);
        setProperty('girl1.alpha', 0.001);
        setProperty('girl2.alpha', 0.001);
        setProperty('girl3.alpha', 0.001);
        setProperty('abi.alpha', 0.001);

        setProperty('Altchara.alpha', 1);
        setProperty('Altcoco.alpha', 1);
        setProperty('Altabi.alpha', 1);
        setProperty('Altgirl1.alpha', 1);
        setProperty('Altgirl2.alpha', 1);
        setProperty('Altgirl3.alpha', 1);
    end

    if curStep == 648 then
        setProperty('mic.alpha', 1);
    end

	if curStep == 672 then
		noteTweenX("NoteMove1", 0, defaultOpponentStrumX0 - 70, 1, 'cubeInOut');
		noteTweenX("NoteMove2", 1, defaultOpponentStrumX1 - 70, 1, 'cubeInOut');
		noteTweenX("NoteMove3", 2, defaultOpponentStrumX2 - 70, 1, 'cubeInOut');
		noteTweenX("NoteMove4", 3, defaultOpponentStrumX3 - 70, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha13", 0, 0.2, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha14", 1, 0.2, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha15", 2, 0.2, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha16", 3, 0.2, 1, 'cubeInOut');
		noteTweenY("NoteMove9", 0, defaultOpponentStrumY0, 1, 'cubeInOut');
		noteTweenY("NoteMove10", 1, defaultOpponentStrumY1, 1, 'cubeInOut');
		noteTweenY("NoteMove11", 2, defaultOpponentStrumY2, 1, 'cubeInOut');
		noteTweenY("NoteMove12", 3, defaultOpponentStrumY3, 1, 'cubeInOut');
    end

	if curStep == 704 then
        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            noteTweenY('note1y' .. getSongPosition(), 0, 100, 1, "cubeInOut");
            noteTweenY('note2y' .. getSongPosition(), 1, 100, 1, "cubeInOut");
            noteTweenY('note3y' .. getSongPosition(), 2, 100, 1, "cubeInOut");
            noteTweenY('note4y' .. getSongPosition(), 3, 100, 1, "cubeInOut");
        else
            noteTweenY('note1y' .. getSongPosition(), 0, 520, 1, "cubeInOut");
            noteTweenY('note2y' .. getSongPosition(), 1, 520, 1, "cubeInOut");
            noteTweenY('note3y' .. getSongPosition(), 2, 520, 1, "cubeInOut");
            noteTweenY('note4y' .. getSongPosition(), 3, 520, 1, "cubeInOut");
        end
            noteTweenX("NoteMove9", 0, 410, 1, 'cubeInOut');
            noteTweenX("NoteMove10", 1, 520, 1, 'cubeInOut');
            noteTweenX("NoteMove11", 2, 630, 1, 'cubeInOut');
            noteTweenX("NoteMove12", 3, 740, 1, 'cubeInOut');
            noteTweenAlpha("NoteAlpha13", 0, 0, 1, 'cubeInOut');
            noteTweenAlpha("NoteAlpha14", 1, 0, 1, 'cubeInOut');
            noteTweenAlpha("NoteAlpha15", 2, 0, 1, 'cubeInOut');
            noteTweenAlpha("NoteAlpha16", 3, 0, 1, 'cubeInOut');
    end

if curStep == 736 then
		noteTweenX("NoteMove1", 0, defaultPlayerStrumX0 + 70, 1, 'cubeInOut');
		noteTweenX("NoteMove2", 1, defaultPlayerStrumX1 + 70, 1, 'cubeInOut');
		noteTweenX("NoteMove3", 2, defaultPlayerStrumX2 + 70, 1, 'cubeInOut');
		noteTweenX("NoteMove4", 3, defaultPlayerStrumX3 + 70, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha13", 0, 0.2, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha14", 1, 0.2, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha15", 2, 0.2, 1, 'cubeInOut');
        noteTweenAlpha("NoteAlpha16", 3, 0.2, 1, 'cubeInOut');
		noteTweenY("NoteMove9", 0, defaultOpponentStrumY0, 1, 'cubeInOut');
		noteTweenY("NoteMove10", 1, defaultOpponentStrumY1, 1, 'cubeInOut');
		noteTweenY("NoteMove11", 2, defaultOpponentStrumY2, 1, 'cubeInOut');
		noteTweenY("NoteMove12", 3, defaultOpponentStrumY3, 1, 'cubeInOut');

    end

    if curStep == 767 then
		noteTweenX("NoteMove1", 0, defaultOpponentStrumX0, 2, 'cubeInOut');
		noteTweenX("NoteMove2", 1, defaultOpponentStrumX1, 2, 'cubeInOut');
		noteTweenX("NoteMove3", 2, defaultOpponentStrumX2, 2, 'cubeInOut');
		noteTweenX("NoteMove4", 3, defaultOpponentStrumX3, 2, 'cubeInOut');
        noteTweenAlpha("NoteAlpha13", 0, 0.8, 2, 'cubeInOut');
        noteTweenAlpha("NoteAlpha14", 1, 0.8, 2, 'cubeInOut');
        noteTweenAlpha("NoteAlpha15", 2, 0.8, 2, 'cubeInOut');
        noteTweenAlpha("NoteAlpha16", 3, 0.8, 2, 'cubeInOut');

		noteTweenX("NoteMove5", 4, defaultPlayerStrumX0, 1, 'cubeInOut');
		noteTweenX("NoteMove6", 5, defaultPlayerStrumX1, 1, 'cubeInOut');
		noteTweenX("NoteMove7", 6, defaultPlayerStrumX2, 1, 'cubeInOut');
		noteTweenX("NoteMove8", 7, defaultPlayerStrumX3, 1, 'cubeInOut');
        noteTweenY('note4y', 4, defaultPlayerStrumY0, 1, "cubeInOut");
        noteTweenY('note5y', 5, defaultPlayerStrumY1, 1, "cubeInOut");
        noteTweenY('note6y', 6, defaultPlayerStrumY2, 1, "cubeInOut");
        noteTweenY('note7y', 7, defaultPlayerStrumY3, 1, "cubeInOut");
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        doTweenY('timeTxtY', 'timeTxt', 80, 1, 'cubeInOut')
    else
        doTweenY('timeTxtY', 'timeTxt', 600, 1, 'cubeInOut')
    end
        doTweenY('Bar1', 'UpperBar', UpperBar - 80, 0.7, 'outElastic')
        doTweenY('Bar2', 'LowerBar', LowerBar + 80, 0.7, 'outElastic')
    end

    if curStep == 768 then
        setProperty('chara.alpha', 1);
        setProperty('coco.alpha', 1);
        setProperty('girl1.alpha', 1);
        setProperty('girl2.alpha', 1);
        setProperty('girl3.alpha', 1);
        setProperty('abi.alpha', 1);

        setProperty('Altchara.alpha', 0);
        setProperty('Altcoco.alpha', 0);
        setProperty('Altgirl1.alpha', 0);
        setProperty('Altgirl2.alpha', 0);
        setProperty('Altgirl3.alpha', 0);
        setProperty('Altabi.alpha', 0);
    end

    if curStep == 916 then
        cameraFlash("camHUD", '0xffffff', 5);
        doTweenAlpha('scoretext', 'scoretext', 0, 0.3, 'outElastic');
        setProperty('iconP2.alpha', 0)
        setProperty('iconP1.alpha', 0)
        doTweenAlpha('healthBar', 'healthBar', 0, 0.3, 'outElastic');
        doTweenAlpha('healthi', 'healthi', 0, 0.3, 'outElastic');
        doTweenAlpha('HParrow', 'HParrow', 0, 0.3, 'outElastic');
        doTweenAlpha('dad', 'dad', 0, 0.35, 'linear')
        doTweenAlpha('boyfriend', 'boyfriend', 0, 0.35, 'linear')
        setProperty('mic.alpha', 0);
        setProperty('timeTxt.visible', false);

        for i = 0, 7 do
            noteTweenAlpha('Note Dissapear ' .. i, i, 0, 0.3, 'outElastic')
        end 
            function onUpdate(elapsed)
                setProperty('camZooming', false)
            end
        setProperty('chara.alpha', 0);
        setProperty('coco.alpha', 0);
        setProperty('girl1.alpha', 0);
        setProperty('girl2.alpha', 0);
        setProperty('girl3.alpha', 0);
        setProperty('abi.alpha', 0);
    end

end

function onTimerCompleted(tag)

    if tag == 'camRotFalling' then 
        noteTweenAngle('6', 4, 0, 0.5, 'cubeOut')
        noteTweenAngle('7', 5, 0, 0.5, 'cubeOut')
        noteTweenAngle('8', 6, 0, 0.5, 'cubeOut')
        noteTweenAngle('9', 7, 0, 0.5, 'cubeOut')
    end

	if tag == 'wait2' then
		makeLuaSprite('countdownready', 'hud/ready')
    	screenCenter('countdownready', 'xy')
		setObjectCamera('countdownready', 'camHUD')
		addLuaSprite('countdownready', true)
		doTweenAlpha('readyend','countdownready',0,crochet/1000,'cubeInOut')
		runTimer('wait1', crochet/1000)
	end

	if tag == 'wait1' then
		makeLuaSprite('countdownset', 'hud/set')
    	screenCenter('countdownset', 'xy')
		setObjectCamera('countdownset', 'camHUD')
		addLuaSprite('countdownset', true)
		doTweenAlpha('setend','countdownset',0,crochet/1000,'cubeInOut')
		runTimer('waitgo', crochet/1000)
	end

	if tag == 'waitgo' then
		makeLuaSprite('countdowngo', 'hud/freestyle', 200, 0)
    	screenCenter('countdowngo', 'y')
		setObjectCamera('countdowngo', 'camHUD')
		doTweenAlpha('goend','countdowngo',0,crochet/600,'cubeInOut')
		addLuaSprite('countdowngo', true)
        scaleObject('countdowngo', 1.2, 1.2)
	end

end

function onUpdatePost(elapsed)
    setProperty('showRating', false)
    setProperty('showComboNum', false)
end