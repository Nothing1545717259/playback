local angleshit = 1;
local anglevar = 1;

function onCreate()

	makeLuaSprite('sky', 'stage/sky blur', -1100, -700);
	setLuaSpriteScrollFactor('sky', 0.8, 0.8);
	scaleObject('sky', 1.1, 1.1)

	makeLuaSprite('grass', 'stage/grass', -1300, 420);
	setLuaSpriteScrollFactor('grass', 1, 1);
	scaleObject('grass', 1.3, 1.3)

	makeLuaSprite('clouds', 'stage/clouds', -480, -450);
	setLuaSpriteScrollFactor('clouds', 0.6, 0.6);
	scaleObject('clouds', 1.2, 1.2)

	makeLuaSprite('treesBeh', 'stage/trees behind', -1170, 200);
	setLuaSpriteScrollFactor('treesBeh', 0.95, 0.97);
	scaleObject('treesBeh', 1.2, 1.2)

	makeLuaSprite('road', 'stage/Road', -1157, 447);
	setLuaSpriteScrollFactor('road', 1, 1);
	scaleObject('road', 1.2, 1.2)

	makeLuaSprite('school', 'stage/School', -240, -60);
	setLuaSpriteScrollFactor('school', 0.92, 0.97);
	scaleObject('school', 1.1, 1.1)

	makeLuaSprite('sakuraTree', 'stage/SakuraTree', -700, -200);
	setLuaSpriteScrollFactor('sakuraTree', 0.95, 0.95);
	scaleObject('sakuraTree', 1.6, 1.6)

	makeLuaSprite('bench', 'stage/bench', 1320, 480);
	setLuaSpriteScrollFactor('bench', 0.97, 0.97);
	scaleObject('bench', 1.7, 1.7)

	makeAnimatedLuaSprite('stereo', 'stage/stereo', 1407, 490);
    addAnimationByPrefix('stereo', 'idle', 'stereo', 24, false)
	setLuaSpriteScrollFactor('stereo', 0.97, 0.97);
	scaleObject('stereo', 1.75, 1.75)

	makeAnimatedLuaSprite('bubble', 'stage/pissedBubble', -130, -130);
    addAnimationByPrefix('bubble', 'idle', 'pissedBubble', 24, true)
	setLuaSpriteScrollFactor('bubble', 1, 1);
	scaleObject('bubble', 0.8, 0.8)

	--

	makeAnimatedLuaSprite('chara', 'stage/girls', -250, 400);
    addAnimationByPrefix('chara', 'idle', 'chara', 24, false)
	setLuaSpriteScrollFactor('chara', 1, 1);
	scaleObject('chara', 1.8, 1.8)
	setProperty('chara.flipX', true) 

	makeAnimatedLuaSprite('coco', 'stage/girls', 950, 170);
    addAnimationByPrefix('coco', 'idle', 'coco', 24, false)
	setLuaSpriteScrollFactor('coco', 1, 1);
	scaleObject('coco', 1.7, 1.7)

	makeAnimatedLuaSprite('abi', 'stage/girls', 700, 320);
    addAnimationByPrefix('abi', 'idle', 'Abi', 24, false)
	setLuaSpriteScrollFactor('abi', 1, 1);
	scaleObject('abi', 1.9, 1.9)

	makeAnimatedLuaSprite('girl1', 'stage/girls', -500, 100);
    addAnimationByPrefix('girl1', 'idle', 'girlFirst', 24, false)
	setLuaSpriteScrollFactor('girl1', 1, 1);
	scaleObject('girl1', 1.8, 1.8)

	makeAnimatedLuaSprite('girl2', 'stage/girls', 1270, 220);
    addAnimationByPrefix('girl2', 'idle', 'girlSecond', 24, false)
	setLuaSpriteScrollFactor('girl2', 1, 1);
	scaleObject('girl2', 1.7, 1.7)

	makeAnimatedLuaSprite('girl3', 'stage/girls', 415, 200);
    addAnimationByPrefix('girl3', 'idle', 'girlThird', 24, false)
	setLuaSpriteScrollFactor('girl3', 1, 1);
	scaleObject('girl3', 1.8, 1.8)

	--

	--

	makeAnimatedLuaSprite('Altchara', 'stage/girls', -255, 400);
    addAnimationByPrefix('Altchara', 'ALT', 'AcharaAlt', 24, true)
	setLuaSpriteScrollFactor('Altchara', 1, 1);
	scaleObject('Altchara', 1.8, 1.8)
	setProperty('Altchara.flipX', true) 

	makeAnimatedLuaSprite('Altcoco', 'stage/girls', 955, 170);
    addAnimationByPrefix('Altcoco', 'ALT', 'AcocoAlt', 24, true)
	setLuaSpriteScrollFactor('Altcoco', 1, 1);
	scaleObject('Altcoco', 1.7, 1.7)

	makeAnimatedLuaSprite('Altabi', 'stage/girls', 705, 320);
    addAnimationByPrefix('Altabi', 'ALT', 'AabiAlt', 24, true)
	setLuaSpriteScrollFactor('Altabi', 1, 1);
	scaleObject('Altabi', 1.9, 1.9)

	makeAnimatedLuaSprite('Altgirl1', 'stage/girls', -482, 105);
    addAnimationByPrefix('Altgirl1', 'ALT', 'AgirlFirstAlt', 24, true)
	setLuaSpriteScrollFactor('Altgirl1', 1, 1);
	scaleObject('Altgirl1', 1.8, 1.8)

	makeAnimatedLuaSprite('Altgirl2', 'stage/girls', 1275, 220);
    addAnimationByPrefix('Altgirl2', 'ALT', 'AgirlSecondAlt', 24, true)
	setLuaSpriteScrollFactor('Altgirl2', 1, 1);
	scaleObject('Altgirl2', 1.7, 1.7)

	makeAnimatedLuaSprite('Altgirl3', 'stage/girls', 420, 200);
    addAnimationByPrefix('Altgirl3', 'idle', 'AgirlThirdAlt', 24, true)
	setLuaSpriteScrollFactor('Altgirl3', 1, 1);
	scaleObject('Altgirl3', 1.8, 1.8)
	--

	makeAnimatedLuaSprite('leaves', 'stage/leaves', -1150, -850);
    addAnimationByPrefix('leaves', 'idle', 'leaves', 24, true)
	setLuaSpriteScrollFactor('leaves', 1.4, 1.4);
	scaleObject('leaves', 1.6, 1.6)

	makeLuaSprite('mic', 'stage/mic', 387, 863);
	setLuaSpriteScrollFactor('mic', 1, 1);
	scaleObject('mic', 1.2, 1.2)

	makeAnimatedLuaSprite('petals', 'stage/petals', -250, 20);
    addAnimationByPrefix('petals', 'idle', 'falling roses anim', 24, true)
	setLuaSpriteScrollFactor('petals', 1.4, 1.4);
	scaleObject('petals', 1.2, 1.2)

    makeLuaText('warning2', "Epilepsy warning and flashing images, proceed with caution!", 500, screenWidth / 2 - 250, screenHeight / 2 + 50);
	setObjectCamera("warning2", 'camGame');
	setTextColor('warning2', '0xffffff');
	setTextSize('warning2', 30);
	addLuaText("warning2");
    setTextFont("warning2", "PhantomMuff Full Letters 1.1.5.ttf");
    setTextAlignment('warning2', 'center');
    setProperty('warning2.antialiasing', true); 
	--questa parte è dedicata alla aggiunta delle immagini

	addLuaSprite('sky', false);
	addLuaSprite('grass', false);
	addLuaSprite('clouds', false);
	addLuaSprite('treesBeh', false);
	addLuaSprite('road', false);
	addLuaSprite('school', false);
	addLuaSprite('sakuraTree', false);
	addLuaSprite('bench', false);
	addLuaSprite('stereo', false);

	addLuaSprite('chara', false);
	addLuaSprite('coco', false);
	addLuaSprite('abi', false);
	addLuaSprite('girl1', false);
	addLuaSprite('girl2', false);
	addLuaSprite('girl3', false);

	addLuaSprite('Altchara', false);
	addLuaSprite('Altcoco', false);
	addLuaSprite('Altabi', false);
	addLuaSprite('Altgirl1', false);
	addLuaSprite('Altgirl2', false);
	addLuaSprite('Altgirl3', false);

	addLuaSprite('mic', true);
	addLuaSprite('petals', true);
	addLuaSprite('leaves', true);
	addLuaSprite('bubble', true);

	--questa è la zona dedicata alla visibilità delle immagini

	setProperty('sky.visible', true);
	setProperty('grass.visible', true);
	setProperty('clouds.visible', true);
	setProperty('treesBeh.visible', true);
	setProperty('road.visible', true);
	setProperty('school.visible', true);
	setProperty('sakuraTree.visible', true);
	setProperty('bench.visible', true);
	setProperty('stereo.visible', true);

	setProperty('chara.visible', true);
	setProperty('coco.visible', true);
	setProperty('abi.visible', true);
	setProperty('girl1.visible', true);
	setProperty('girl2.visible', true);
	setProperty('girl3.visible', true);

	setProperty('Altchara.visible', true);
	setProperty('Altcoco.visible', true);
	setProperty('Altabi.visible', true);
	setProperty('Altgirl1.visible', true);
	setProperty('Altgirl2.visible', true);
	setProperty('Altgirl3.visible', true);

	setProperty('leaves.visible', true);
	setProperty('bubble.visible', true);
	setProperty('mic.visible', true);
	setProperty('petals.visible', true);

end

--questa funzione onStepHit serve per dire al gioco quando far accadere qualcosa (quasi al millisecondo)

function onSongStart()

    setProperty('camHUD.visible', true);
    setProperty('scoreTxt.visible', true);

end

function onBeatHit()
    if curStep > 1 then
        if curStep < 918 then
			if curBeat % 1 == 0 then
	    		playAnim('stereo', 'idle', true);
			end
		end
	end
	if curBeat % 2 == 0 then
		playAnim('chara', 'idle', true);
		playAnim('girl2', 'idle', true);
		playAnim('coco', 'idle', true);
		playAnim('girl1', 'idle', true);
		playAnim('girl3', 'idle', true);
		playAnim('abi', 'idle', true);
	end
    if curBeat > 64 then
        if curBeat < 96 then
			if curBeat % 1 == 0 then
			    playAnim('chara', 'idle', true);
			    playAnim('girl2', 'idle', true);
			    playAnim('coco', 'idle', true);
			    playAnim('girl1', 'idle', true);
				playAnim('girl3', 'idle', true);
				playAnim('abi', 'idle', true);
			end
		end
	end
    if curBeat > 152 then
        if curBeat < 160 then
			if curBeat % 1 == 0 then
			    playAnim('chara', 'idle', true);
			    playAnim('girl2', 'idle', true);
			    playAnim('coco', 'idle', true);
			    playAnim('girl1', 'idle', true);
			    playAnim('girl3', 'idle', true);
			    playAnim('abi', 'idle', true);
			end
		end
	end
end