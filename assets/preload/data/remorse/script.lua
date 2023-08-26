local keepScroll = false
local allowCountdown = false

function onCreate()
	makeLuaSprite('weird2', 'stage/weirdbg', -700, -500);
	setLuaSpriteScrollFactor('weird', 1, 1);
	scaleObject('weird2', 7, 7)
	addLuaSprite('weird2', true);
	setProperty('weird2.visible', true);

	makeLuaSprite('lightfront', 'stage/lightzY', -470, -1300);
	setLuaSpriteScrollFactor('lightfront', 1.1, 1.1);
	addLuaSprite('lightfront', true);
	setProperty('lightfront.visible', true);

    makeLuaText('warning2', "Epilepsy warning and flashing images, proceed with caution!", 500, screenWidth / 2 - 250, screenHeight / 2 + 50);
	setObjectCamera("warning2", 'camGame');
	setTextColor('warning2', '0xffffff');
	setTextSize('warning2', 30);
	addLuaText("warning2");
    setTextFont("warning2", "PhantomMuff Full Letters 1.1.5.ttf");
    setTextAlignment('warning2', 'center');
    setProperty('warning2.antialiasing', true); 
end

function onCreatePost()
	setProperty('lightfront.alpha', 0);
    setProperty('scoretext.alpha', 0);
	setProperty('iconP1.alpha', 0);
    setProperty('iconP2.alpha', 0);
    setProperty('healthBar.alpha', 0);
    setProperty('healthBarBG.alpha', 0);
	setProperty('warning2.alpha', 0);
	setProperty('healthi.alpha', 0)
	setProperty('HParrow.alpha', 0)

    triggerEvent('Camera Follow Pos', '750', '400')
	
end


function onStartCountdown()
		setProperty('botplayTxt.visible', false)
		setProperty('strumLineNotes.visible', false);
		setProperty('iconP1.visible', false);
	    setProperty('iconP2.visible', false);
end

function onSongStart()
        for i = 0, 7 do
            noteTweenAlpha('Note Dissapear ' .. i, i, 0, 0.5, 'outElastic')
        end
    	doTweenAlpha('scoretext', 'scoretext', 0, 0.5, 'outElastic');
    	doTweenAlpha('iconP1', 'iconP1', 0, 0.5, 'outElastic');
    	doTweenAlpha('iconP2', 'iconP2', 0, 0.5, 'outElastic');
    	doTweenAlpha('HParrow', 'HParrow', 0, 0.5, 'outElastic');

    	doTweenAlpha('healthBar', 'healthBar', 0.001, 0.5, 'cubeInOut');
    	doTweenAlpha('healthBarBG', 'healthBarBG', 0.001, 0.5, 'cubeInOut');
    	doTweenAlpha('healthi', 'healthi', 0.001, 0.5, 'cubeInOut');

	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        	doTweenY('timeTxtY', 'timeTxt', 10, 0.5, 'cubeInOut')
	    else
        	doTweenY('timeTxtY', 'timeTxt', 670, 0.5, 'cubeInOut')
	    end

		doTweenAlpha('lightfront', 'lightfront', 1, 1, 'expoIn');
		doTweenZoom('zoom1', 'camGame', 0.5, 15.3, 'cubeOutIn')
        doTweenAlpha('warning2', 'warning2', 1, 1, 'linear')

    	runTimer('start', 0.5)
end

function onUpdatePost(elapsed)
    setProperty('showRating', false)
    setProperty('showComboNum', false)
end

function onTimerCompleted(tag, loops, loopsLeft)

	if tag =='start' then
	    setProperty('scoretext.visible', false);
		setProperty('iconP1.visible', false);
	    setProperty('iconP2.visible', false);
		setProperty('HParrow.visible', false);
		setProperty('timeTxt.visible', true);
		setProperty('strumLineNotes.visible', false);
		setProperty('botplayTxt.visible', false)
	end
end

function onStepHit() --questa funzione onStepHit serve per dire al gioco quando far accadere qualcosa (quasi al millisecondo)

	if curBeat < 388 then 
		if curStep % 4 == 0 then
			objectPlayAnimation('speaker', 'speakerBumping', true);
			objectPlayAnimation('speakerAlt', 'speakerBumping', true);
			objectPlayAnimation('audience', 'bounce', true);
			objectPlayAnimation('tankbg', 'bouncetankbg', true);
			objectPlayAnimation('watchtower', 'bouncetank', true);
			objectPlayAnimation('righttankmanfar', 'bouncetank0', true);
			objectPlayAnimation('head1tankmanfar', 'bouncetank1', true);
			objectPlayAnimation('foregroundtank2', 'bouncetank2', true);
			objectPlayAnimation('tankhead4', 'bouncetank3', true);
			objectPlayAnimation('tankmanbobbin', 'bouncetank4', true);			
		end
	end

	if curStep == 32 then
	        for i = 0, 7 do
	            noteTweenAlpha('Note Dissapear ' .. i, i, 0.8, 13, 'outElastic')
	        end
		    setProperty('scoretext.visible', true);
			setProperty('iconP1.visible', true);
		    setProperty('iconP2.visible', true);
		    setProperty('healthBar.visible', true);
		    setProperty('healthBarBG.visible', true);
			setProperty('healthi.visible', true);
			setProperty('HParrow.visible', true);
			setProperty('timeTxt.visible', true);
			setProperty('strumLineNotes.visible', true);

	    	doTweenAlpha('scoretext', 'scoretext', 1, 13, 'outElastic');
	    	doTweenAlpha('iconP1', 'iconP1', 1, 5, 'cubeInOut');
	    	doTweenAlpha('iconP2', 'iconP2', 1, 5, 'cubeInOut');
	    	doTweenAlpha('HParrow', 'HParrow', 1, 13, 'outElastic');
			doTweenAlpha('weird2', 'weird2', 0, 10, 'outElastic');

	    	doTweenAlpha('healthBar', 'healthBar', 1, 13, 'outElastic');
	    	doTweenAlpha('healthBarBG', 'healthBarBG', 1, 13, 'outElastic');
	    	doTweenAlpha('healthi', 'healthi', 1, 13, 'outElastic');

	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	        doTweenY('timeTxtY', 'timeTxt', 80, 13, 'cubeInOut')
	    else
	        doTweenY('timeTxtY', 'timeTxt', 600, 13, 'cubeInOut')
	    end
	end

	if curStep == 32 then

        doTweenAlpha('warning2', 'warning2', 0, 5, 'linear')
	end

--flashes
	if curStep == 384 then
		cameraFlash("camGame", '0xffffff', 1);
	end

	if curStep == 416 then
		cameraFlash("camGame", '0xffffff', 1);
	end

	if curStep == 448 then
		cameraFlash("camGame", '0xffffff', 1);
	end

	if curStep == 480 then
		cameraFlash("camGame", '0xffffff', 1);
	end

    if curStep == 248 then

    	setProperty('luggage.visible', true);
	end

    if curStep == 384 then

    	setProperty('luggage.visible', false);
		setProperty('hallback.visible', false);
		setProperty('lightfront.visible', false);
		setProperty('stageback.visible', true);
		setProperty('curtains.visible', true);
		setProperty('audience.visible', true);
    	doTweenAlpha('scoretext', 'scoretext', 0, 0.3, 'linear');
    	doTweenAlpha('healthi', 'healthi', 0, 0.3, 'linear');
    	doTweenAlpha('HParrow', 'HParrow', 0, 0.3, 'linear');
	end

	if curStep == 416 then

		setProperty('stageback.visible', false);
		setProperty('curtains.visible', false);
		setProperty('audience.visible', false);
		setProperty('skyphilly.visible', true);
		setProperty('cityphilly.visible', true);
		setProperty('windowphilly.visible', true);
		setProperty('behindTrainphilly.visible', true);
		setProperty('streetphilly.visible', true);
		setProperty('lightfront.visible', false);
	end

	if curStep == 448 then

		setProperty('skyphilly.visible', false);
		setProperty('cityphilly.visible', false);
		setProperty('windowphilly.visible', false);
		setProperty('behindTrainphilly.visible', false);
		setProperty('streetphilly.visible', false);
		setProperty('lightfront.visible', false);
		setProperty('evilBGmonster.visible', true);
		setProperty('evilTreemonster.visible', true);
		setProperty('evilSnowmonster.visible', true);
		setProperty('evilBGmonsteroverlay.visible', true);
	end

	if curStep == 480 then

		setProperty('evilBGmonster.visible', false);
		setProperty('evilTreemonster.visible', false);
		setProperty('evilSnowmonster.visible', false);
		setProperty('evilBGmonsteroverlay.visible', false);
		setProperty('skytank.visible', true);
		setProperty('cloudstank.visible', true);
		setProperty('mountainstank.visible', true);
		setProperty('buildingstank.visible', true);
		setProperty('ruinstank.visible', true);
		setProperty('tankbg.visible', true);
		setProperty('watchtower.visible', true);
		setProperty('groundtank.visible', true);
		setProperty('righttankmanfar.visible', true);
		setProperty('head1tankmanfar.visible', true);
		setProperty('foregroundtank2.visible', true);
		setProperty('tankhead4.visible', true);
		setProperty('tankmanbobbin.visible', true);
	end

	if curStep == 512 then

		setProperty('skytank.visible', false);
		setProperty('cloudstank.visible', false);
		setProperty('mountainstank.visible', false);
		setProperty('buildingstank.visible', false);
		setProperty('ruinstank.visible', false);
		setProperty('tankbg.visible', false);
		setProperty('watchtower.visible', false);
		setProperty('groundtank.visible', false);
		setProperty('righttankmanfar.visible', false);
		setProperty('head1tankmanfar.visible', false);
		setProperty('foregroundtank2.visible', false);
		setProperty('tankhead4.visible', false);
		setProperty('tankmanbobbin.visible', false);
		setProperty('hallback.visible', true);
		setProperty('lightfront.visible', true);
		setProperty('speaker.visible', true);
    	setProperty('luggage.visible', true);
    	doTweenAlpha('scoretext', 'scoretext', 1, 0.5, 'linear');
    	doTweenAlpha('healthi', 'healthi', 1, 0.5, 'linear');
    	doTweenAlpha('HParrow', 'HParrow', 1, 0.5, 'linear');
	end

    if curStep == 894 then

		doTweenAlpha('tweenicon1', 'iconP1', 0, 0.5, 'linear');
    	doTweenAlpha('tweenicon2', 'iconP2', 0, 0.5, 'linear');
    	doTweenAlpha('tweenhealthbar', 'healthBar', 0, 0.5, 'linear');
    	doTweenAlpha('tweenhealthbarbg', 'healthBarBG', 0, 0.5, 'linear');
    	doTweenAlpha('scoretext', 'scoretext', 0, 0.5, 'linear');
    	doTweenAlpha('healthi', 'healthi', 0, 0.5, 'linear');
    	doTweenAlpha('HParrow', 'HParrow', 0, 0.5, 'linear');
    	doTweenAlpha('timeTxt', 'timeTxt', 1, 0.5, 'linear');
    end	

    if curStep == 896 then

    	--cameraShake('camGame', 0.003, 33)
    	--cameraShake('camHUD', 0.003, 33)
    	
    	function opponentNoteHit(id,data,type,sus)
    		triggerEvent('Screen Shake','0.1, 0.003','0.01, 0.00')
    		triggerEvent('Screen Shake', 'camHUD', '0.1, 0.002','0.01, 0.00')
		end

    	setProperty('luggage.visible', false);
		setProperty('hallback.visible', false);
		setProperty('lightfront.visible', false);
		setProperty('whitebox.visible', true);
		setProperty('door.visible', false);
		setProperty('hallbackalt.visible', true);
		setProperty('lightfrontalt.visible', true);
		setProperty('speakerAlt.visible', true);
		setProperty('lightfrontalt1.visible', true);
		setProperty('luggageAlt.visible', true);

	end

    if curStep == 890 then

		if not middlescroll then
		noteTweenX("NoteMove1", 0, 410, 0.5, 'cubeInOut');
		noteTweenX("NoteMove2", 1, 520, 0.5, 'cubeInOut');
		noteTweenX("NoteMove3", 2, 630, 0.5, 'cubeInOut');
		noteTweenX("NoteMove4", 3, 740, 0.5, 'cubeInOut');
    	noteTweenX("NoteMove5", 4, 410, 0.5, 'cubeInOut');
    	noteTweenX("NoteMove6", 5, 520, 0.5, 'cubeInOut');
    	noteTweenX("NoteMove7", 6, 630, 0.5, 'cubeInOut');
    	noteTweenX("NoteMove8", 7, 740, 0.5, 'cubeInOut');
		end

        noteTweenAlpha("NoteAlpha13", 0, 0, 0.5, 'cubeInOut');
        noteTweenAlpha("NoteAlpha14", 1, 0, 0.5, 'cubeInOut');
        noteTweenAlpha("NoteAlpha15", 2, 0, 0.5, 'cubeInOut');
        noteTweenAlpha("NoteAlpha16", 3, 0, 0.5, 'cubeInOut');

	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        	doTweenY('timeTxtY', 'timeTxt', 10, 0.5, 'cubeInOut')
	    else
        	doTweenY('timeTxtY', 'timeTxt', 670, 0.5, 'cubeInOut')
	    end
	end

    if curStep == 896 then

		setProperty('iconP1.visible', false);
    	setProperty('iconP2.visible', false);
    	setProperty('healthBar.visible', false);
    	setProperty('healthBarBG.visible', false);
    	setProperty('scoretext.visible', false);
	end

    if curStep == 1014 then

		setProperty('door.visible', true);
		objectPlayAnimation('door', 'closing', true);
		doTweenAlpha('tweenlight', 'lightfrontalt1', 0, 1.5, 'linear');
	end

	if curStep == 1024 then

		setProperty('whitebox.visible', false);
		setProperty('luggageAlt.visible', false);
		setProperty('door.visible', false);
		setProperty('hallbackalt.visible', false);
		setProperty('lightfrontalt.visible', false);
		setProperty('speakerAlt.visible', false);
		setProperty('lightfrontalt1.visible', false);
		setProperty('weird.visible', true);
		setProperty('lightfrontweird.visible', true);
	end

	if curStep == 1152 then

		if not middlescroll then
		noteTweenX("NoteMove1", 0, defaultOpponentStrumX0, 0.5, 'cubeInOut');
		noteTweenX("NoteMove2", 1, defaultOpponentStrumX1, 0.5, 'cubeInOut');
		noteTweenX("NoteMove3", 2, defaultOpponentStrumX2, 0.5, 'cubeInOut');
		noteTweenX("NoteMove4", 3, defaultOpponentStrumX3, 0.5, 'cubeInOut');
		noteTweenX("NoteMove5", 4, defaultPlayerStrumX0, 0.5, 'cubeInOut');
		noteTweenX("NoteMove6", 5, defaultPlayerStrumX1, 0.5, 'cubeInOut');
		noteTweenX("NoteMove7", 6, defaultPlayerStrumX2, 0.5, 'cubeInOut');
		noteTweenX("NoteMove8", 7, defaultPlayerStrumX3, 0.5, 'cubeInOut');
		end

        noteTweenAlpha("NoteAlpha13", 0, 0.8, 0.5, 'cubeInOut');
        noteTweenAlpha("NoteAlpha14", 1, 0.8, 0.5, 'cubeInOut');
        noteTweenAlpha("NoteAlpha15", 2, 0.8, 0.5, 'cubeInOut');
        noteTweenAlpha("NoteAlpha16", 3, 0.8, 0.5, 'cubeInOut');

	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	        doTweenY('timeTxtY', 'timeTxt', 80, 0.5, 'cubeInOut')
	    else
	        doTweenY('timeTxtY', 'timeTxt', 600, 0.5, 'cubeInOut')
	    end

    	function opponentNoteHit(id,data,type,sus)
   			cameraShake('camGame', '0, 0','0, 0')
   			cameraShake('camHUD', '0, 0','0, 0')
		end

    	setProperty('luggage.visible', true);
		setProperty('hallback.visible', true);
		setProperty('lightfront.visible', true);
		setProperty('speaker.visible', true);
		setProperty('iconP1.visible', true);
    	setProperty('iconP2.visible', true);
    	setProperty('healthBar.visible', true);
    	setProperty('healthBarBG.visible', true);
    	setProperty('scoretext.visible', true);
    	setProperty('scoretext.alpha', 1);
		setProperty('weird.visible', false);
		setProperty('lightfrontweird.visible', false);
		setProperty('healthi.alpha', 1);
		setProperty('HParrow.alpha', 1);
		setProperty('timeTxt.alpha', 1);
	end

	if curStep == 1413 then
            function onUpdate(elapsed)
                setProperty('camZooming', false)
            end
    end

	if curStep == 1536 then

		doTweenAlpha('message', 'message', 0, 5, 'expoOut');
   		doTweenAlpha('credits', 'credits', 0, 5, 'expoOut');
		doTweenAlpha('iconP1', 'iconP1', 0, 5, 'expoOut');
   		doTweenAlpha('iconP2', 'iconP2', 0, 5, 'expoOut');
    	doTweenAlpha('healthBar', 'healthBar', 0, 5, 'expoOut');
    	doTweenAlpha('healthBarBG', 'healthBarBG', 0, 5, 'expoOut');
		doTweenAlpha('weird2', 'weird2', 1, 5, 'expoOut');
		doTweenAlpha('camHUD', 'camHUD', 0, 6, 'expoOut');
		doTweenAlpha('scoretext', 'scoretext', 0, 5, 'expoOut');
    	doTweenAlpha('healthi', 'healthi', 0, 5, 'expoOut');
    	doTweenAlpha('HParrow', 'HParrow', 0, 5, 'expoOut');
    	doTweenAlpha('timeTxt', 'timeTxt', 0, 5, 'expoOut');
		doTweenAlpha('lightfront', 'lightfront', 0, 12, 'expoIn');

	end
end