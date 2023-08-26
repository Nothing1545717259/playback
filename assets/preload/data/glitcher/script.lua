function onCreate()

    makeLuaText('warning2', "This is song is on Beta testing! Everything you see might change with future updates.", 500, screenWidth / 2 - 250, screenHeight / 2 + 50);
    setObjectCamera("warning2", 'camGame');
    setTextColor('warning2', '0xffffff');
    setTextSize('warning2', 30);
    addLuaText("warning2");
    setTextFont("warning2", "PhantomMuff Full Letters 1.1.5.ttf");
    setTextAlignment('warning2', 'center');
    setProperty('warning2.antialiasing', true);

    setProperty('skipCountdown', false)
end

function onCreatePost()

    makeLuaText("message", "Beta-Demo", 500, 30, 50)
    setTextAlignment("message", "left")
    setTextFont("message", "PhantomMuff Full Letters 1.1.5.ttf");
    addLuaText("message")
    setProperty('message.antialiasing', true); 


    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
    end

    setProperty('message.alpha', 0);
    setProperty('gf.alpha', 0);
    setProperty('camHUD.alpha', 1);
    setProperty('scoretext.alpha', 0);
    setProperty('iconP1.alpha', 0);
    setProperty('iconP2.alpha', 0);
    setProperty('healthBar.alpha', 0);
    setProperty('healthBarBG.alpha', 0);
    setProperty('warning2.alpha', 0);
    setProperty('healthi.alpha', 0)
    setProperty('HParrow.alpha', 0)
end

function onUpdatePost(elapsed)
    setProperty('showRating', false)
    setProperty('showComboNum', false)
end

function onStartCountdown()
    setProperty('strumLineNotes.visible', false);
    setProperty('message.visible', false);
    setProperty('scoretext.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('healthi.visible', false);
    setProperty('HParrow.visible', false);
    setProperty('timeTxt.visible', false);
end

function onSongStart()


        doTweenAlpha('warning2', 'warning2', 1, 1, 'linear')
        doTweenZoom('zoom1', 'camGame', 0.4, 5, 'expoIn')      


end

function onStepHit()

    if curStep == 31 then
        setProperty('message.visible', true);
        setProperty('scoretext.visible', true);
        setProperty('iconP1.visible', true);
        setProperty('iconP2.visible', true);
        setProperty('healthBar.visible', true);
        setProperty('healthBarBG.visible', true);
        setProperty('healthi.visible', true);
        setProperty('HParrow.visible', true);
        setProperty('timeTxt.visible', true);
        setProperty('strumLineNotes.visible', true);

        doTweenAlpha('message', 'message', 1, 3, 'expoIn');
        doTweenAlpha('iconP1', 'iconP1', 1, 3, 'expoIn');
        doTweenAlpha('iconP2', 'iconP2', 1, 3, 'expoIn');
            doTweenAlpha('HParrow', 'HParrow', 1, 3, 'expoIn');
            doTweenAlpha('healthBar', 'healthBar', 1, 3, 'expoIn');
            doTweenAlpha('healthBarBG', 'healthBarBG', 1, 3, 'expoIn');
            doTweenAlpha('healthi', 'healthi', 1, 3, 'expoIn');
        doTweenAlpha('camHUD', 'camHUD', 1, 3, 'expoIn');
        doTweenAlpha('scoretext', 'scoretext', 1, 3, 'expoIn');
        doTweenAlpha('warning2', 'warning2', 0, 4, 'linear')
    end

        if curStep == 64 then
            cameraFlash("camGame", 'ff0008', 1);

            setProperty('whitelight.alpha', 0)
            setProperty('light.alpha', 0.7)

            setProperty('Whitecourt.alpha', 0)
            setProperty('court.alpha', 1)

            setProperty('fourBehind.alpha', 1)
            setProperty('fourBehindWindows.alpha', 1)
            setProperty('threeBehind.alpha', 1)
            setProperty('threeBehindWindows.alpha', 1)
            setProperty('fourBehindALT.alpha', 0)
            setProperty('fourBehindWindowsALT.alpha', 0)
            setProperty('threeBehindALT.alpha', 0)
            setProperty('threeBehindWindowsALT.alpha', 0)

            setProperty('eyes.alpha', 1)

            objectPlayAnimation('ruv', 'ruvIdleIris', true);
            objectPlayAnimation('garcello', 'garcelloIdleIris', true);
            objectPlayAnimation('tankman', 'tankmanIdleIris', true);
            objectPlayAnimation('pico', 'picoIdleIris', true);
            objectPlayAnimation('whitty', 'whittyIdleIris', true);

            setProperty('ruv.offset.y', -300)
            setProperty('ruv.offset.x', -360)

            setProperty('garcello.offset.y', -250)
            setProperty('garcello.offset.x', -200)

            setProperty('tankman.offset.y', -230)
            setProperty('tankman.offset.x', -120)

            setProperty('pico.offset.y', -200)
            setProperty('pico.offset.x', -80)

            setProperty('whitty.offset.y', -220)
            setProperty('whitty.offset.x', -150)
        end

        if curStep == 128 then
            triggerEvent('Camera Follow Pos','', '')
        end

        if curStep == 544 then
            doTweenZoom('zoom1', 'camGame', 0.7, 2.5, 'expoIn')  
        end

        if curStep == 560 then
            triggerEvent('Camera Follow Pos','650', '250') 
        end

        if curStep == 575 then
            cameraFlash("camGame", 'ff0008', 3);
            triggerEvent('Camera Follow Pos','', '')
                function opponentNoteHit(id,data,type,sus)
                    triggerEvent('Screen Shake','0.3, 0.003','0.03, 0.00')
                    triggerEvent('Screen Shake', 'camHUD', '0.3, 0.003','0.03, 0.00')
                end
            setProperty('sky.alpha', 0)
            setProperty('light.alpha', 0)
            setProperty('court.alpha', 0)

            setProperty('fourBehind.alpha', 0)
            setProperty('fourBehindWindows.alpha', 0)
            setProperty('threeBehind.alpha', 0)
            setProperty('threeBehindWindows.alpha', 0)
            setProperty('messages.alpha', 1)
            setProperty('1.alpha', 0)
            setProperty('2.alpha', 0)
            setProperty('eyes.alpha', 0)

            setProperty('blue.alpha', 1)
            setProperty('treeWire.alpha', 1)
            setProperty('treeWire.alpha', 1)
            setProperty('courtWire.alpha', 1)

            setProperty('ruv.alpha', 0)
            setProperty('garcello.alpha', 0)
            setProperty('tankman.alpha', 0)
            setProperty('pico.alpha', 0)
            setProperty('whitty.alpha', 0)
        end

        if curStep == 640 then
            cameraFlash("camGame", '00c3ff', 1);
        end

        if curStep == 704 then
            cameraFlash("camGame", 'ff0008', 1);
        end

        if curStep == 768 then
            cameraFlash("camGame", '00c3ff', 1);
        end

        if curStep == 832 then
            cameraFlash("camGame", 'ff0008', 2);
            triggerEvent('Camera Follow Pos','', '')
                function opponentNoteHit(id,data,type,sus)
                    triggerEvent('Screen Shake','0, 0','0, 0.')
                    triggerEvent('Screen Shake', 'camHUD', '0., 0','0, 0')
                end
            setProperty('sky.alpha', 0.7)
            setProperty('light.alpha', 1)
            setProperty('court.alpha', 1)

            setProperty('fourBehind.alpha', 1)
            setProperty('fourBehindWindows.alpha', 1)
            setProperty('threeBehind.alpha', 1)
            setProperty('threeBehindWindows.alpha', 1)
            setProperty('messages.alpha', 0)
            setProperty('1.alpha', 1)
            setProperty('2.alpha', 1)
            setProperty('eyes.alpha', 1)

            setProperty('blue.alpha', 0)
            setProperty('treeWire.alpha', 0)
            setProperty('treeWire.alpha', 0)
            setProperty('courtWire.alpha', 0)

            setProperty('ruv.alpha', 1)
            setProperty('garcello.alpha', 1)
            setProperty('tankman.alpha', 1)
            setProperty('pico.alpha', 1)
            setProperty('whitty.alpha', 1)
        end

        if curStep == 1055 then
            doTweenZoom('zoom1', 'camGame', 0.7, 2.5, 'expoIn')  
        end

        if curStep == 1080 then
            triggerEvent('Camera Follow Pos','650', '250') 
        end

        if curStep == 1087 then
            cameraFlash("camGame", 'ff0008', 3);
            triggerEvent('Camera Follow Pos','', '')
                function opponentNoteHit(id,data,type,sus)
                    triggerEvent('Screen Shake','0.3, 0.003','0.03, 0.00')
                    triggerEvent('Screen Shake', 'camHUD', '0.3, 0.003','0.03, 0.00')
                end
            setProperty('sky.alpha', 0)
            setProperty('light.alpha', 0)
            setProperty('court.alpha', 0)

            setProperty('fourBehind.alpha', 0)
            setProperty('fourBehindWindows.alpha', 0)
            setProperty('threeBehind.alpha', 0)
            setProperty('threeBehindWindows.alpha', 0)
            setProperty('messages.alpha', 1)
            setProperty('1.alpha', 0)
            setProperty('2.alpha', 0)
            setProperty('eyes.alpha', 0)

            setProperty('blue.alpha', 1)
            setProperty('treeWire.alpha', 1)
            setProperty('treeWire.alpha', 1)
            setProperty('courtWire.alpha', 1)

            setProperty('ruv.alpha', 0)
            setProperty('garcello.alpha', 0)
            setProperty('tankman.alpha', 0)
            setProperty('pico.alpha', 0)
            setProperty('whitty.alpha', 0)
        end

        if curStep == 1151 then
            cameraFlash("camGame", '00c3ff', 1);
        end

        if curStep == 1215 then
            cameraFlash("camGame", 'ff0008', 1);
        end

        if curStep == 1279 then
            cameraFlash("camGame", '00c3ff', 1);
        end

        if curStep == 1343 then
            cameraFlash("camGame", 'ff0008', 2);
            triggerEvent('Camera Follow Pos','', '')
                function opponentNoteHit(id,data,type,sus)
                    triggerEvent('Screen Shake','0, 0','0, 0.')
                    triggerEvent('Screen Shake', 'camHUD', '0., 0','0, 0')
                end
            setProperty('sky.alpha', 0.7)
            setProperty('light.alpha', 1)
            setProperty('court.alpha', 1)

            setProperty('fourBehind.alpha', 1)
            setProperty('fourBehindWindows.alpha', 1)
            setProperty('threeBehind.alpha', 1)
            setProperty('threeBehindWindows.alpha', 1)
            setProperty('messages.alpha', 0)
            setProperty('1.alpha', 1)
            setProperty('2.alpha', 1)
            setProperty('eyes.alpha', 1)

            setProperty('blue.alpha', 0)
            setProperty('treeWire.alpha', 0)
            setProperty('treeWire.alpha', 0)
            setProperty('courtWire.alpha', 0)

            setProperty('ruv.alpha', 1)
            setProperty('garcello.alpha', 1)
            setProperty('tankman.alpha', 1)
            setProperty('pico.alpha', 1)
            setProperty('whitty.alpha', 1)
        end
end