local ratings
local pref = {

    cinematicMode = true, 
    iconPoz = true,
    funkyArrow = true, 
}

function onCreate()
    setPropertyFromClass('flixel.FlxG', 'autoPause', false)
    setProperty('cpuControlled', false)

	    makeLuaSprite('healthi', 'hud/healthBari', 331, 0)
		setProperty('healthi.antialiasing', true); 
	    addLuaSprite('healhealthith')
	    setObjectCamera('healthi', 'camHUD')
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	        setProperty('healthi.y', 631)
	    else
	        setProperty('healthi.y', 75)
	    end

		makeLuaSprite('HParrow', 'hud/hb arrow', 0, 0);
		addLuaSprite('HParrow', true);
		setObjectCamera('HParrow', 'camHUD')
end

function arrowBruh()
		local HIGHPOINT = 624
		local LOWPOINT = 924
		setObjectOrder('HParrow', getObjectOrder('iconP1')-1);
		setObjectOrder('HParrow', getObjectOrder('iconP2')-1);
        setProperty('HParrow.x', LOWPOINT) 
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        	setProperty('HParrow.y', 618)
	    else
	        setProperty('HParrow.y', 60)
	    end

        if getProperty('health') == 1 then
            setProperty('HParrow.x', HIGHPOINT)
        elseif getProperty('health') == 0 then
            setProperty('HParrow.x', LOWPOINT)
        elseif getProperty('health') > 1 then
            setProperty('HParrow.x', LOWPOINT - (getProperty('health') * 300))
        elseif getProperty('health') <= 1 then 
            setProperty('HParrow.x', LOWPOINT - (getProperty('health') * 295))
        end
end

function onCreatePost()

		makeLuaSprite('UpperBar', 'empty', -110, -350)
		makeGraphic('UpperBar', 1500, 350, '000000')
		setObjectCamera('UpperBar', 'camHUD')
		addLuaSprite('UpperBar', false)


		makeLuaSprite('LowerBar', 'empty', -110, 720)
		makeGraphic('LowerBar', 1500, 350, '000000')
		setObjectCamera('LowerBar', 'camHUD')
		addLuaSprite('LowerBar', false)

		UpperBar = getProperty('UpperBar.y')
		LowerBar = getProperty('LowerBar.y')
	
		setObjectOrder('healthi', getObjectOrder('healthBar')+1);
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	        setProperty('healthBar.y', 638)
	    else
	        setProperty('healthBar.y', 80)
	    end

		setProperty('healthBarBG.visible', false)
		setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   		setProperty('timeTxt.visible', true)
   		setProperty('scoretext.visible', true)

		setProperty('healthi.visible', true); 

	    setTextFont("botplayTxt", "Phantomuff Difficult Font.ttf");
	    setProperty('botplayTxt.antialiasing', true);
		setTextSize("botplayTxt", 30)
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        	setProperty('botplayTxt.y', 2);
	    else
	        setProperty('botplayTxt.y', 685)
	    end

	    setTextFont("timeTxt", "Phantomuff Difficult Font.ttf");
	    setProperty('timeTxt.antialiasing', true);
		setTextSize("timeTxt", 40)
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	        setProperty('timeTxt.y', 80)
	    else
	        setProperty('timeTxt.y', 600)
	    end
	    --
		makeLuaText("scoretext", "skill issue", 996, 140, 35)
		setTextAlignment("scoretext", 'center')
		setTextSize("scoretext", 20)
		setTextFont("scoretext", "PhantomMuff Full Letters 1.1.5.ttf");
		addLuaText("scoretext")
	    setProperty('scoretext.antialiasing', true); 

   		setProperty('scoretext.alpha', 0)
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	        setProperty('scoretext.y', 665)
	    else
	        setProperty('scoretext.y', 115)
	    end

	    -- 
    	setProperty('scoretext.alpha', 0)
		setProperty('iconP1.alpha', 0)
   		setProperty('iconP2.alpha', 0)
    	setProperty('healthBar.alpha', 0)
    	setProperty('healthi.alpha', 0)
		setProperty('HParrow.alpha', 0)

end

function iconsBruh()
        setProperty('iconP1.x', screenWidth - 385)
        setProperty('iconP2.x', 245)
	    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        	setProperty('iconP2.y', 565)
        end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.015); 
    end
end

function onStartCountdown() --quando parte il countdown allora si muovono
	Speed = tonumber(2)
	Distance = tonumber(40)

	if Speed and Distance then	

	doTweenY('Bar1', 'UpperBar', UpperBar + Distance, Speed, 'QuadOut')
	doTweenY('Bar2', 'LowerBar', LowerBar - Distance, Speed, 'QuadOut')
	end


	if downscroll and Speed and Distance then	

	doTweenY('Bar1', 'UpperBar', UpperBar + Distance, Speed, 'QuadOut')
	doTweenY('Bar2', 'LowerBar', LowerBar - Distance, Speed, 'QuadOut')
	end
end

function onSongStart()
        noteTweenAlpha("NoteAlpha1", 4, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha2", 5, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha3", 6, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha4", 7, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha13", 0, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha14", 1, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha15", 2, 0.8, 0.3, 'outElastic');
        noteTweenAlpha("NoteAlpha16", 3, 0.8, 0.3, 'outElastic');


end

function onUpdate()

		for i = 0,7 do
			setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -30)
			setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -60)
		end
	    if pref.funkyArrow == true then arrowBruh() end
	    if pref.cinematicMode == true then cinematicMode() end
end

function onUpdatePost()
    
    if pref.iconPoz == true then iconsBruh() end

	setProperty("scoreTxt.y", -100)
    if ratingFC == '' then -- if the FC is nothing

	        --setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Misses: ' .. misses .. ' | Accuracy: 0%')
	        setProperty('scoretext.text', 'Misses: ' .. misses .. ' | Score: ' .. score .. '')

	else

        	--setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Misses: ' .. misses .. ' | Accuracy: ' ..round(rating * 100, 2).. '% [' ..ratingFC..']')
        	setProperty('scoretext.text', 'Misses: ' .. misses .. ' | Score: ' .. score .. '')
    end

    if botPlay == true then

       		--setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Misses: ' .. misses .. ' | Accuracy: ' ..round(rating * 100, 2).. '% [' ..ratingFC..']')
        	setProperty('scoretext.text', 'Misses: ' .. misses .. ' | Score: Come on dude!')
    	
	end
	--
    if ratingFC == '' then -- if the FC is nothing

	        --setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Misses: ' .. misses .. ' | Accuracy: 0%')
	        setProperty('scoretexto.text', 'Score: ' .. score .. '')

	else

        	--setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Misses: ' .. misses .. ' | Accuracy: ' ..round(rating * 100, 2).. '% [' ..ratingFC..']')
        	setProperty('scoretexto.text', 'Score: ' .. score .. '')
    end

    if botPlay == true then

       		--setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Misses: ' .. misses .. ' | Accuracy: ' ..round(rating * 100, 2).. '% [' ..ratingFC..']')
        	setProperty('scoretexto.text', 'Score: ' .. score .. '')
    	
	end

end

function round(x, n)

  n = math.pow(10, n or 0)

  x = x * n

  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end

  return x / n

end