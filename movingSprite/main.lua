-----------------------------------------------------------------------------------------
-- the sprite moves and makes sounds
--
-- main.lua
-- Created by: Fawaz Mezher
-- Created on: March 2018 -- main.lua
--
-----------------------------------------------------------------------------------------

local knightFall = display.newImageRect( "./assets/sprites/knightFall.png", 600, 200 )
knightFall.x = display.contentCenterX + 550
knightFall.y = display.contentCenterY - 250
knightFall.id = "enter button"


local leftarrow = display.newImageRect( "./assets/sprites/leftarrow.png", 200, 200 )
leftarrow.x = display.contentCenterX 
leftarrow.y = display.contentCenterY 
leftarrow.id = " leftarrow "

local rightarrow = display.newImageRect( "./assets/sprites/rightarrow.png", 200, 200 )
rightarrow.x = display.contentCenterX 
rightarrow.y = display.contentCenterY
rightarrow.id = " rihgtarrow "

local drums = audio.loadsound('drums')

local function leftarrowTouch( event )
	knightFall.x = knightFall.x - 50

	if knightFall.x < 0 then
		knightFall.x = display.contentCenterX
	end
end

local function rightarrowTouch( event )
	knightFall.x = knightFall.x + 50

	if knightFall.x > 2048 then
		knightFall.x = display.contentCenterX
	end
end



local function knightFallTouch()
	audio.play('drums')
end 


leftarrow:addEventListener( "touch", leftarrowTouch )
rightarrow:addEventListener( "touch", rightarrowTouch )
knightFall:addEventListener("touch", knightFallTouch)