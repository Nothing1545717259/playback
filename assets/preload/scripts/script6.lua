local shaderName = "bloom"
    function onStepHit()
        if curStep == 127 then
            shaderCoordFix()

            makeLuaSprite("bloom")
            runHaxeCode([[
                var shaderName = "]] .. shaderName .. [[";
                
                game.initLuaShader(shaderName);
                
                var AAAAA = game.createRuntimeShader(shaderName);
                game.camGame.setFilters([new ShaderFilter(AAAAA)]);
                game.getLuaObject("bloom").shader = AAAAA;
                return;
            ]])
        end
    end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
   end
end
function onUpdate(elapsed)
	setShaderFloat("bloom", 'iTime', os.clock())
end