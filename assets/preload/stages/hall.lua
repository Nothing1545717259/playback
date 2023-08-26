function onCreate()
	--la merda degli sfondi del cazzo
    precacheImage('stage');
    precacheImage('stage/evilBG');
    precacheImage('stage/tankSky');
    precacheImage('stage/tankMountains');
    precacheImage('stage/sky');
    precacheImage('stage/hall ALTY');
    precacheImage('stage/evilTree');
    precacheImage('stage/street');
    precacheImage('stage/lightzY ALT');
    precacheImage('stage/tankWatchtower');
    precacheImage('stage/hands');
    precacheImage('stage/stagefront new');
    precacheImage('stage/stagecurtains new');
    precacheImage('characters/BF DEFAULT ALT');
    precacheImage('characters/BF DEFAULT');
    precacheImage('characters/updike alt');
    precacheImage('characters/updike');
    precacheImage('characters');

	--sfondo del corridoio di Updike
	makeLuaSprite('hallback', 'stage/hall', -2550, -1150);
	setLuaSpriteScrollFactor('hallback', 1, 1);
	
	--makeLuaSprite('lightfront', 'stage/lightzY', -470, -1300);
	--setLuaSpriteScrollFactor('lightfront', 1.1, 1.1);

	makeLuaSprite('luggage', 'stage/luggage', 135, 620);
	setLuaSpriteScrollFactor('luggage', 1, 1);

	makeAnimatedLuaSprite('speaker', 'stage/intercom', -110, -110);
	addAnimationByPrefix('speaker','speakerBumping','intercom',24,true);
	setLuaSpriteScrollFactor('speaker', 1, 1);
	scaleObject('speaker', 1, 1)

	--sfondo del corridoio alternativo di Updike
	makeLuaSprite('whitebox', 'stage/white box', 600, 250);
	setLuaSpriteScrollFactor('whitebox', 1, 1);
	scaleObject('whitebox', 1, 1)

	makeAnimatedLuaSprite('door', 'stage/doors', 526, 166);
	addAnimationByPrefix('door','closing','door',24,true);
	setLuaSpriteScrollFactor('door', 1, 1);
	scaleObject('door', 1, 1)

	makeLuaSprite('hallbackalt', 'stage/hall ALTY', -2550, -1150);
	setLuaSpriteScrollFactor('hallbackalt', 1, 1);

	makeLuaSprite('lightfrontalt', 'stage/lightzY ALT', -470, -1300);
	setLuaSpriteScrollFactor('lightfrontalt', 1.1, 1.1);

	makeLuaSprite('lightfrontalt1', 'stage/lightt', -470, -1350);
	setLuaSpriteScrollFactor('lightfrontalt1', 1.1, 1.1);
	scaleObject('lightfrontalt1', 1, 1)

	makeLuaSprite('luggageAlt', 'stage/luggage alt', 135, 620);
	setLuaSpriteScrollFactor('luggageAlt', 1, 1);

	makeAnimatedLuaSprite('speakerAlt', 'stage/intercom alt', -110, -110);
	addAnimationByPrefix('speakerAlt', 'speakerAltBumping', 'intercom',24,true);
	setLuaSpriteScrollFactor('speakerAlt', 1, 1);
	scaleObject('speakerAlt', 1, 1);




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




	--sfondo della città di Pico
	makeLuaSprite('skyphilly', 'stage/sky', -800, -400);
	setLuaSpriteScrollFactor('skyphilly', 0.6, 0.6);
	scaleObject('skyphilly', 2, 2)
	
	makeLuaSprite('cityphilly', 'stage/city', -700, -400);
	setLuaSpriteScrollFactor('cityphilly', 0.7, 0.7);
	scaleObject('cityphilly', 1.6, 1.6)

	makeLuaSprite('windowphilly', 'stage/window', -700, -400);
	setLuaSpriteScrollFactor('windowphilly', 0.7, 0.7);
	scaleObject('windowphilly', 1.6, 1.6)

	makeLuaSprite('behindTrainphilly', 'stage/behindTrain', -800, -530);
	setLuaSpriteScrollFactor('behindTrainphilly', 1, 1);
	scaleObject('behindTrainphilly', 2, 2)

	makeLuaSprite('streetphilly', 'stage/street', -800, -530);
	setLuaSpriteScrollFactor('streetphilly', 1, 1);
	scaleObject('streetphilly', 2, 2)




	--sfondo del supermercato di Monster
	makeLuaSprite('evilBGmonster', 'stage/evilBG', -1350, -1450);
	setLuaSpriteScrollFactor('evilBGmonster', 0.6, 0.6);
	scaleObject('evilBGmonster', 1.5, 1.5)
	
	makeLuaSprite('evilTreemonster', 'stage/evilTree', 200, -1000);
	setLuaSpriteScrollFactor('evilTreemonster', 0.8, 0.8);
	scaleObject('evilTreemonster', 1.6, 1.6)

	makeLuaSprite('evilSnowmonster', 'stage/evilSnow', -1500, 700);
	setLuaSpriteScrollFactor('evilSnowmonster', 1, 1);
	scaleObject('evilSnowmonster', 1.6, 1.6)

	makeLuaSprite('evilBGmonsteroverlay', 'stage/evilBGoverlay', -1350, -1450);
	setLuaSpriteScrollFactor('evilBGmonsteroverlay', 0.6, 0.6);
	scaleObject('evilBGmonsteroverlay', 1.5, 1.5)




	--sfondo della città di Tankman
	makeLuaSprite('skytank', 'stage/tankSky', -1100, -500);
	setLuaSpriteScrollFactor('skytank', 0.6, 0.6);
	scaleObject('skytank', 2, 2)
	
	makeLuaSprite('cloudstank', 'stage/tankClouds', -1300, -100);
	setLuaSpriteScrollFactor('cloudstank', 0.55, 0.55);
	scaleObject('cloudstank', 2, 2)

	makeLuaSprite('mountainstank', 'stage/tankMountains', -950, -100);
	setLuaSpriteScrollFactor('mountainstank', 0.7, 0.7);
	scaleObject('mountainstank', 2, 2)

	makeLuaSprite('buildingstank', 'stage/tankBuildings', -650, -50);
	setLuaSpriteScrollFactor('buildingstank', 0.7, 0.7);
	scaleObject('buildingstank', 1.4, 1.4)

	makeLuaSprite('ruinstank', 'stage/tankRuins', -650, 0);
	setLuaSpriteScrollFactor('ruinstank', 0.8, 0.8);
	scaleObject('ruinstank', 1.4, 1.4)

	makeAnimatedLuaSprite('tankbg', 'stage/tankmanbackground', 550, -150);
	addAnimationByPrefix('tankbg','bouncetankbg','BG tank w lighting instance 1',24,true);
	setLuaSpriteScrollFactor('tankbg', 0.9, 0.9);
	scaleObject('tankbg', 1.3, 1.3)

	makeAnimatedLuaSprite('watchtower', 'stage/tankWatchtower', -150, 50);
	addAnimationByPrefix('watchtower','bouncetank','watchtower gradient color instance 1',24,true);
	setLuaSpriteScrollFactor('watchtower', 0.9, 0.9);
	scaleObject('watchtower', 1, 1)

	makeLuaSprite('groundtank', 'stage/tankGround', -750, -350);
	setLuaSpriteScrollFactor('groundtank', 1, 1);
	scaleObject('groundtank', 1.5, 1.5)



	--le teste dei Tankman
	makeAnimatedLuaSprite('righttankmanfar', 'stage/tank0', -770, 500);
	addAnimationByPrefix('righttankmanfar','bouncetank0','fg tankhead far right instance 1',24,true);
	setLuaSpriteScrollFactor('righttankmanfar', 1.1, 1.1);
	scaleObject('righttankmanfar', 1.4, 1.4)

	makeAnimatedLuaSprite('head1tankmanfar', 'stage/tank1', -250, 780);
	addAnimationByPrefix('head1tankmanfar','bouncetank1','fg tankhead 5 instance 1',24,true);
	setLuaSpriteScrollFactor('head1tankmanfar', 1.1, 1.1);
	scaleObject('head1tankmanfar', 1.2, 1.2)

	makeAnimatedLuaSprite('foregroundtank2', 'stage/tank2', 400, 700);
	addAnimationByPrefix('foregroundtank2','bouncetank2','foreground man 3 instance 1',24,true);
	setLuaSpriteScrollFactor('foregroundtank2', 1.1, 1.1);
	scaleObject('foregroundtank2', 1.4, 1.4)

	makeAnimatedLuaSprite('tankhead4', 'stage/tank3', 700, 820);
	addAnimationByPrefix('tankhead4','bouncetank3','fg tankhead 4 instance 1',24,true);
	setLuaSpriteScrollFactor('tankhead4', 1.1, 1.1);
	scaleObject('tankhead4', 1.2, 1.2)

	makeAnimatedLuaSprite('tankmanbobbin', 'stage/tank4', 1500, 500);
	addAnimationByPrefix('tankmanbobbin','bouncetank4','fg tankman bobbin 3 instance 1',24,true);
	setLuaSpriteScrollFactor('tankmanbobbin', 1.1, 1.1);
	scaleObject('tankmanbobbin', 1.4, 1.4)



	--sfondo strano
	makeLuaSprite('weird', 'stage/weirdbg', -750, -320);
	setLuaSpriteScrollFactor('weird', 0.6, 0.6);
	scaleObject('weird', 1.5, 1.5)

	makeLuaSprite('lightfrontweird', 'stage/lightzY weird', -480, -1400);
	setLuaSpriteScrollFactor('lightfrontweird', 1.1, 1.1);

	makeLuaSprite('light1frontweird', 'stage/lightt', -480, -1400);
	setLuaSpriteScrollFactor('light1frontweird', 1.1, 1.1);

	--questa parte è dedicata alla aggiunta delle immagini
	addLuaSprite('hallback', false);
	--addLuaSprite('lightfront', true);
	addLuaSprite('speaker', false);
	addLuaSprite('luggage', false);

	addLuaSprite('whitebox', false);
	addLuaSprite('door', false);
	addLuaSprite('hallbackalt', false);
	addLuaSprite('lightfrontalt', true);
	addLuaSprite('lightfrontalt1', true);
	addLuaSprite('speakerAlt', false);
	addLuaSprite('luggageAlt', false);


	addLuaSprite('stageback', false);
	addLuaSprite('curtains', true);
	addLuaSprite('audience', true);

	addLuaSprite('skyphilly', false);
	addLuaSprite('cityphilly', false);
	addLuaSprite('windowphilly', false);
	addLuaSprite('behindTrainphilly', false);
	addLuaSprite('streetphilly', false);

	addLuaSprite('evilBGmonster', false);
	addLuaSprite('evilTreemonster', false);
	addLuaSprite('evilSnowmonster', false);
	addLuaSprite('evilBGmonsteroverlay', true);

	addLuaSprite('skytank', false);
	addLuaSprite('cloudstank', false);
	addLuaSprite('mountainstank', false);
	addLuaSprite('buildingstank', false);
	addLuaSprite('ruinstank', false);
	addLuaSprite('tankbg', false);
	addLuaSprite('watchtower', false);
	addLuaSprite('groundtank', false);

	addLuaSprite('righttankmanfar', true);
	addLuaSprite('head1tankmanfar', true);
	addLuaSprite('foregroundtank2', true);
	addLuaSprite('tankmanbobbin', true);
	addLuaSprite('tankhead4', true);

	addLuaSprite('weird', false);
	addLuaSprite('lightfrontweird', true);

	--questa è la zona dedicata alla visibilità delle immagini
	setProperty('hallback.visible', true);
	--setProperty('lightfront.visible', true);
	setProperty('speaker.visible', true);
	setProperty('luggage.visible', false);

	setProperty('whitebox.visible', false);
	setProperty('door.visible', false);
	setProperty('hallbackalt.visible', false);
	setProperty('lightfrontalt.visible', false);
	setProperty('lightfrontalt1.visible', false);
	setProperty('speakerAlt.visible', false);
	setProperty('luggageAlt.visible', false);

	setProperty('stageback.visible', false);
	setProperty('curtains.visible', false);
	setProperty('audience.visible', false);

	setProperty('skyphilly.visible', false);
	setProperty('cityphilly.visible', false);
	setProperty('windowphilly.visible', false);
	setProperty('behindTrainphilly.visible', false);
	setProperty('streetphilly.visible', false);

	setProperty('evilBGmonster.visible', false);
	setProperty('evilTreemonster.visible', false);
	setProperty('evilSnowmonster.visible', false);
	setProperty('evilBGmonsteroverlay.visible', false);

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

	setProperty('weird.visible', false);
	setProperty('lightfrontweird.visible', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end