-----------------------------------------------------------------------------------------
--
-- main.lua
-- 
-- Created by : Fawaz Mezher
-- Created on : Feb 2018
-- 
-- how to calculate the area of a trapazoid
-----------------------------------------------------------------------------------------
--all the variables

--this shows the names of which value we should put in each textbox
local InstructionTextField = display.newText( "Enter each value in it respected box.", display.contentCenterX - 500, display.contentCenterY - 700, native.systemFont, 95 )

local lengthOfBaseATextField = display.newText( "Base a", display.contentCenterX - 800, display.contentCenterY - 300, native.systemFont, 90 )
lengthOfBaseATextField:setFillColor( 99, 10, 88 )

local lenghtOfBaseBTextField = display.newText( "Base b", display.contentCenterX - 800, display.contentCenterY - 100, native.systemFont, 90 )
lenghtOfBaseBTextField:setFillColor( 99, 10, 88 )

local lenghtOfHeightTextField = display.newText( "height", display.contentCenterX - 800, display.contentCenterY +100, native.systemFont, 100 )
lenghtOfHeightTextField:setFillColor( 99, 10, 88 )
-- the text boxes
local lengthOfBaseATextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 300, 450, 150 )
lengthOfBaseATextField.id = "length textField"

local lengthOfBaseBTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 100, 450, 150 )
lengthOfBaseBTextField.id = "length textField"

local lengthOfHeightTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY + 100, 450, 150 )
lengthOfHeightTextField.id = "length textField"

local areaOfTrapzoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 150 )
areaOfTrapzoidTextField.id = "areaOfTrapzoidTextField"
areaOfTrapzoidTextField:setFillColor( 1, 1, 1 )


-- the click button
local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +1000
calculateButton.y = display.contentCenterY +800
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )
    -- this function calculates the area of a trapizoid given the length of one of its sides
 
    local lengthOfBaseA
	local lengthOfBaseB 
	local lengthOfHeight
	local areaOfTrapzoid
 
    lengthOfBaseA = lengthOfBaseATextField.text
    lengthOfBaseB = lengthOfBaseBTextField.text
    lengthOfHeight = lengthOfHeightTextField.text
    areaOfTrapzoid = (lengthOfBaseA + lengthOfBaseB) / 2 * lengthOfHeight
    -- print( area of trapizoid )
    areaOfTrapzoidTextField.text = "The area is " .. areaOfTrapzoid.." cm^2"

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )

