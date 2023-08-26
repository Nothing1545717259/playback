sprite = 'stage/stars' --name of the image you want moving in the background
size = 3449 --number of pixels from left to right
startX = -950 --where you want it to be from left to right
startY = -700 --where you want it to be from bottom to top
duration = 700 --how long it takes to scroll from one side of the screen to the other

function onCreate()
	--la merda degli sfondi del cazzo
    precacheImage('stage');

	makeLuaSprite('sky', 'stage/bg sky', -2350, -1700)
	setLuaSpriteScrollFactor('sky', 1, 1)
	scaleObject('sky', 3, 3)
	addLuaSprite('sky', false)
	setProperty('sky.alpha', 1)

		--[[makeLuaSprite('stars', 'stage/stars', -950, -700)
	setLuaSpriteScrollFactor('stars', 0.1, 0.1)
	scaleObject('stars', 1, 1)
	addLuaSprite('stars', false)
	setProperty('stars.alpha', 1)]]
--
	makeLuaSprite(sprite .. '1', sprite, startX, startY)
	addLuaSprite(sprite .. '1', false)
	setLuaSpriteScrollFactor(sprite .. '1', 0.1, 0.1)
	makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
	addLuaSprite(sprite .. '2', false)
	setLuaSpriteScrollFactor(sprite .. '2', 0.1, 0.1)
	scrollA()
--
	makeLuaSprite('eyes', 'stage/eyes', -950, -700)
	setLuaSpriteScrollFactor('eyes', 0.1, 0.1)
	scaleObject('eyes', 1, 1)
	addLuaSprite('eyes', false)
	setProperty('eyes.alpha', 0)

	makeLuaSprite('fourBehind', 'stage/back buildings 2', -850, -700)
	setLuaSpriteScrollFactor('fourBehind', 0.4, 0.4)
	scaleObject('fourBehind', 1, 1)
	addLuaSprite('fourBehind', false)
	setProperty('fourBehind.alpha', 0)

	makeLuaSprite('fourBehindWindows', 'stage/windows bg back', -730, -600)
	setLuaSpriteScrollFactor('fourBehindWindows', 0.4, 0.4)
	scaleObject('fourBehindWindows', 1, 1)
	addLuaSprite('fourBehindWindows', false)
	setProperty('fourBehindWindows.alpha', 0)

	makeLuaSprite('threeBehind', 'stage/BACK builldings 1', -1200, -600)
	setLuaSpriteScrollFactor('threeBehind', 0.6, 0.6)
	scaleObject('threeBehind', 1.1, 1.1)
	addLuaSprite('threeBehind', false)
	setProperty('threeBehind.alpha', 0)

	makeLuaSprite('threeBehindWindows', 'stage/lights window build 1', -1170, -500)
	setLuaSpriteScrollFactor('threeBehindWindows', 0.6, 0.6)
	scaleObject('threeBehindWindows', 1.1, 1.1)
	addLuaSprite('threeBehindWindows', false)
	setProperty('threeBehindWindows.alpha', 0)

-- strutture iniziali
	makeLuaSprite('fourBehindALT', 'stage/START back buildings 2', -850, -700)
	setLuaSpriteScrollFactor('fourBehindALT', 0.4, 0.4)
	scaleObject('fourBehindALT', 1, 1)
	addLuaSprite('fourBehindALT', false)
	setProperty('fourBehindALT.alpha', 1)

	makeLuaSprite('fourBehindWindowsALT', 'stage/WHITE windows bg back', -730, -600)
	setLuaSpriteScrollFactor('fourBehindWindowsALT', 0.4, 0.4)
	scaleObject('fourBehindWindowsALT', 1, 1)
	addLuaSprite('fourBehindWindowsALT', false)
	setProperty('fourBehindWindowsALT.alpha', 1)

	makeLuaSprite('threeBehindALT', 'stage/START BACK builldings 1', -1200, -600)
	setLuaSpriteScrollFactor('threeBehindALT', 0.6, 0.6)
	scaleObject('threeBehindALT', 1.1, 1.1)
	addLuaSprite('threeBehindALT', false)
	setProperty('threeBehindALT.alpha', 1)

	makeLuaSprite('threeBehindWindowsALT', 'stage/WHITE lights window build 1', -1170, -500)
	setLuaSpriteScrollFactor('threeBehindWindowsALT', 0.6, 0.6)
	scaleObject('threeBehindWindowsALT', 1.1, 1.1)
	addLuaSprite('threeBehindWindowsALT', false)
	setProperty('threeBehindWindowsALT.alpha', 1)

-- fine


	makeLuaSprite('twoBehind', 'stage/back layer 2', -1630, -430)
	setLuaSpriteScrollFactor('twoBehind', 0.8, 0.8)
	scaleObject('twoBehind', 1.75, 1.75)
	addLuaSprite('twoBehind', false)
	setProperty('twoBehind.alpha', 1)

	makeLuaSprite('oneBehind', 'stage/back first layer', -1600, -150)
	setLuaSpriteScrollFactor('oneBehind', 0.9, 0.9)
	scaleObject('oneBehind', 1.75, 1.75)
	addLuaSprite('oneBehind', false)
	setProperty('oneBehind.alpha', 1)

	makeLuaSprite('court', 'stage/court', -2060, -810)
	setLuaSpriteScrollFactor('court', 1, 1)
	scaleObject('court', 1.75, 1.75)
	addLuaSprite('court', false)
	setProperty('court.alpha', 1)

	makeLuaSprite('Whitecourt', 'stage/court white lights', -2060, -810)
	setLuaSpriteScrollFactor('Whitecourt', 1, 1)
	scaleObject('Whitecourt', 1.75, 1.75)
	addLuaSprite('Whitecourt', false)
	setProperty('Whitecourt.alpha', 1)

-- wire

		makeLuaSprite('blue', 'stage/wire/blue screen wire', -1550, -1000)
		setLuaSpriteScrollFactor('blue', 0, 0)
		scaleObject('blue', 1, 1)
		addLuaSprite('blue', false)
		setProperty('blue.alpha', 0)

		makeAnimatedLuaSprite('treeWire', 'stage/wire/back layer 2 wire', -1630, -430)
		addAnimationByPrefix('treeWire','treeWireAnim','back layer 2',24,true);
		setLuaSpriteScrollFactor('treeWire', 0.5, 0.5)
		scaleObject('treeWire', 1.75, 1.75)
		addLuaSprite('treeWire', false)
		setProperty('treeWire.alpha', 0)

		makeAnimatedLuaSprite('twoWire', 'stage/wire/back first layer wire', -1600, -150)
		addAnimationByPrefix('twoWire','twoWireAnim','back first layer',24,true);
		setLuaSpriteScrollFactor('twoWire', 0.7, 0.7)
		scaleObject('twoWire', 1.75, 1.75)
		addLuaSprite('twoWire', false)
		setProperty('twoWire.alpha', 0)

		makeLuaSprite('courtWire', 'stage/wire/court wire', -2060, -810)
		setLuaSpriteScrollFactor('courtWire', 1, 1)
		scaleObject('courtWire', 1.75, 1.75)
		addLuaSprite('courtWire', false)
		setProperty('courtWire.alpha', 0)

		makeAnimatedLuaSprite('messages', 'stage/wire/messages wire', -1710, 300)
		addAnimationByPrefix('messages','messagesAnim','messages',24,true);
		setLuaSpriteScrollFactor('messages', 1, 1)
		scaleObject('messages', 1.75, 1.75)
		addLuaSprite('messages', false)
		setProperty('messages.alpha', 0)

--
		makeAnimatedLuaSprite('ruv', 'stage/foreground', -1470, 110);
		addAnimationByPrefix('ruv','ruvIdle','ruv',24,true);
		addAnimationByPrefix('ruv','ruvIdleIris','1ruv iris',24,true);
		setLuaSpriteScrollFactor('ruv', 1.1, 1.1);
		scaleObject('ruv', 1.75, 1.75)
		addLuaSprite('ruv', true)

		makeAnimatedLuaSprite('garcello', 'stage/foreground', -870, 540);
		addAnimationByPrefix('garcello','garcelloIdle','garcello',24,true);
		addAnimationByPrefix('garcello','garcelloIdleIris','1garcello iris',24,true);
		setLuaSpriteScrollFactor('garcello', 1.2, 1.2);
		scaleObject('garcello', 1.75, 1.75)
		addLuaSprite('garcello', true)

		makeAnimatedLuaSprite('whitty', 'stage/foreground', 1900, 150);
		addAnimationByPrefix('whitty','whittyIdle','whitty',24,true);
		addAnimationByPrefix('whitty','whittyIdleIris','1whitty iris',24,true);
		setLuaSpriteScrollFactor('whitty', 1.1, 1.1);
		scaleObject('whitty', 1.75, 1.75)
		addLuaSprite('whitty', true)

		makeAnimatedLuaSprite('pico', 'stage/foreground', 1470, 600);
		addAnimationByPrefix('pico','picoIdle','pico',24,true);
		addAnimationByPrefix('pico','picoIdleIris','1pico iris',24,true);
		setLuaSpriteScrollFactor('pico', 1.2, 1.2);
		scaleObject('pico', 1.75, 1.75)
		addLuaSprite('pico', true)

		makeAnimatedLuaSprite('tankman', 'stage/foreground', 400, 1000);
		addAnimationByPrefix('tankman','tankmanIdle','tankman',24,true);
		addAnimationByPrefix('tankman','tankmanIdleIris','1tankman iris',24,true);
		setLuaSpriteScrollFactor('tankman', 1.3, 1.3);
		scaleObject('tankman', 1.75, 1.75)
		addLuaSprite('tankman', true)
--
	makeLuaSprite('light', 'stage/light', -2260, -1410)
	setLuaSpriteScrollFactor('light', 1, 1)
	scaleObject('light', 1.75, 1.75)
	addLuaSprite('light', true)
	setProperty('light.alpha', 0)

	makeLuaSprite('whitelight', 'stage/WHITE light', -2260, -1410)
	setLuaSpriteScrollFactor('whitelight', 1, 1)
	scaleObject('whitelight', 1.75, 1.75)
	addLuaSprite('whitelight', true)
	setProperty('whitelight.alpha', 0.5)

end

function onCreatePost()
end

function onStartCountdown()
    		triggerEvent('Camera Follow Pos','650', '250')
end

function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end
end
function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)
end

function onUpdate(elapsed)
	if keyJustPressed('pause') then
		objectPlayAnimation('boyfriend', 'hey', true)
	end

	if keyJustPressed('space') then
    	setProperty('boyfriend.offset.y', 10)
    	setProperty('boyfriend.offset.x', 310)
		objectPlayAnimation('boyfriend', 'attack', true)
	end
end

function onStepHit()
end