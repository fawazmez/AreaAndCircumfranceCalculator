-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- show how to use an if statement and random numbers
--
--
-- Created by: Fawaz Mezher
-- Created on: March 2018 
-----------------------------------------------------------------------------------------

local numberToGuessTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 100, 750, 140 )
numberToGuessTextField.id = "length textField"

local instructionTextField = display.newText( "Pick A number between 1 and 6", display.contentCenterX - 200, display.contentCenterY - 400, native.systemFont, 95 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +700
calculateButton.y = display.contentCenterY +500
calculateButton.id = "calculate button"

math.randomseed( os.time() )
local randomNumber = math.random( 1,6 )
print(randomNumber)

local function calculateButtonTouch( event )
    -- this function calculates the subtotal,tax,and total
 	local answer

    local numberToGuess = tonumber( numberToGuessTextField.text )
    
   
    if randomNumber == numberToGuess then
        answer = display.newText( " Correct YOU GOT IT " .. randomNumber, 500, 500 , native.systemFont, 60)
    else
       answer = display.newText( " Wrong the number is " .. randomNumber, 300, 501, native.systemFont,60)
    end

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )