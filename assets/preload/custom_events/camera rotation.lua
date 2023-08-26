function onEvent(name, value1, value2)
	if name == 'camera rotation' then
	
	Speed = tonumber(value1)
	Rotation = tonumber(value2)
	
	
	
	end

	if Speed and Rotation > 0 then	

	setProperty('camGame.angle', Rotation, Speed, 'QuadOut')

	end
end


--setProperty('camHUD.angle', 20, 'linear');