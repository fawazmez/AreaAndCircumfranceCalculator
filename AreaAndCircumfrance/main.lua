-----------------------------------------------------------------------------------------
--
-- main.lua
-- 
-- Created by : Fawaz Mezher
-- Created on : Feb 2018
-- 
-- Calculates the circumfrance and area of the circle
-----------------------------------------------------------------------------------------
--all the variables

--this shows the names of which value we should put in each textbox
local InstructionTextField = display.newText( "Enter the radius in the box", display.contentCenterX - 800, display.contentCenterY - 700, native.systemFont, 95 )

-- the text boxes
local DiameterTextField = native.newTextField( display.contentCenterX - 800, display.contentCenterY - 300, 750, 150 )
DiameterTextField.id = "length textField"

--area and circumfrance text
local AreaTextField = display.newText( "Area", display.contentCenterX - 400, display.contentCenterY + 200, native.systemFont, 100 )
AreaTextField.id = "AreaTextField"
AreaTextField:setFillColor( 1, 1, 1 )

local CircumfranceTextField = display.newText( "Circumfrance", display.contentCenterX - 400, display.contentCenterY + 500, native.systemFont, 100 )
CircumfranceTextField.id = "CircumfranceTextField"
CircumfranceTextField:setFillColor( 1, 1, 1 )

-- the click button
local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +1000
calculateButton.y = display.contentCenterY +800
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )
    -- this function calculates the area and circumfrance
 
        local Diameter
	local Area 
	local Circumfrance
	
    
        Diameter = DiameterTextField.text
        Area = AreaTextField.text
        Circumfrance = CircumfranceTextField.text
  	Area = math.pi * (Diameter / 2)^2
	Circumfrance = 2 * math.pi * Diameter
	-- print( area and circumfrance )
   AreaTextField.text = "The area is " .. Area.."cm"
   CircumfranceTextField.text = "The circumfrance is " ..Circumfrance.."cm"


    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
