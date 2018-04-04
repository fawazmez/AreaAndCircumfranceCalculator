-----------------------------------------------------------------------------------------
--
--
--tells  you to relax or not 
--
-- main.lua
-- Created by: Fawaz Mezher
-- Created on: March 2018 
-----------------------------------------------------------------------------------------

-- 


display.newText("enter the day and age to see if you get student discount or not", 1024, 550, native.systemFont, 70)

local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY , 450, 120 )
dayTextField.id = "answer textField"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150 , 450, 120 )
ageTextField.id = "answer textField"


local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY + 300
enterButton.id = "enter button"

display.newText("enter the day", 400, 770, native.systemFont, 100)
display.newText("enter you age ", 400, 920, native.systemFont, 100)
 
local function enterButtonTouch( event )
    local day
    local age
    local agetonumber

    age = ageTextField.text
    agetonumber = tonumber(age)
	day = dayTextField.text

	
	if day == "saturday" or day == "sunday" then 
		display.newText("Go relax its weekend", 1024, 1200, native.systemFont, 100)
		
	elseif agetonumber <= 18 then
		display.newText("You have to go to school today", 1024, 1200, native.systemFont, 100)
	else
		display.newText("You have to go to work today", 1024, 1200, native.systemFont, 100)
	
	end
end

enterButton:addEventListener( "touch", enterButtonTouch )
