local angleshit = 1;
local anglevar = 1;

function onCreate()
	--sfondo dello stage di DD
	makeLuaSprite('stageback', 'stage/stagefront new', -900, -500);
	setLuaSpriteScrollFactor('stageback', 1, 1);
	scaleObject('stageback', 1.5, 1.5)
	
	makeLuaSprite('curtains', 'stage/stagecurtains new', -950, -450);
	setLuaSpriteScrollFactor('curtains', 1.1, 1.1);
	scaleObject('curtains', 1.5, 1.5)

	makeAnimatedLuaSprite('audience', 'stage/hands', -1000, 650);
	addAnimationByPrefix('audience','bounce','front dudes instance 1',24,true);
	setLuaSpriteScrollFactor('audience', 1.2, 1.2);
	scaleObject('audience', 1.5, 1.5)

	--questa parte è dedicata alla aggiunta delle immagini

	addLuaSprite('stageback', false);
	addLuaSprite('curtains', true);
	addLuaSprite('audience', true);

	--questa è la zona dedicata alla visibilità delle immagini

	setProperty('stageback.visible', true);
	setProperty('curtains.visible', true);
	setProperty('audience.visible', true);

end

--questa funzione onStepHit serve per dire al gioco quando far accadere qualcosa (quasi al millisecondo)

function onSongStart()

    setProperty('camHUD.visible', true);
    setProperty('scoreTxt.visible', true);

end


--questa funzione onBeatHit serve per dire al gioco di fare qualcosa ad ogni 5 battiti della canzone

function onBeatHit()
	objectPlayAnimation('audience', 'bounce', true);
end

function onBeatHit()


	
	if curBeat < 388 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end