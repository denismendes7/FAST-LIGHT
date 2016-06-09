
local screenW, screenH = display.contentWidth, display.contentHeight
local composer = require( "composer" )
local scene = composer.newScene()

-----------------------------------------------------------------------------------------------------------------
print("this is the menu file")
-- "scene:create()"

function scene:create(event)

local sceneGroup = self.view


local background1 = display.newImage("spectrum1.jpg")
background1.height = 1000
background1.width = 1000
background1.x = 0
background1.y = 400
 sceneGroup:insert(background1)

local background2 = display.newImage("spectrum1.jpg")
background2.height = 1000
background2.width = 1000
background2.x = 0
background2.y = 400
 sceneGroup:insert(background2)

function scrollCity(self)

	if self.x < - 180 then
		self.x = 470
	else 
		self.x = self.x - 5
	end
	
end    
 

 local scoremusic = audio.loadSound ("inicio.ogg")
 
 audio.play(scoremusic)

   -- media.playSound("win.wav", true)
 
	
	local Button = display.newImage("ring.png")
    Button.width=300
    Button.height=300
    Button.x = 160
    Button.y = 245
    sceneGroup:insert(Button)
	
	--local playimg = display.newImage("jogar.png")
    --playimg.width=70
    --playimg.height=50
    --playimg.x = 160
    --playimg.y = 322
	--sceneGroup:insert(playimg)
	
	local asphaltstitcherlogo = display.newText("Fast Light", screenW /2 , screenH / 2 , native.systemFont, 45)
    asphaltstitcherlogo:setFillColor(1,1,1)
    sceneGroup:insert(asphaltstitcherlogo)

    --local startButton = display.newImage("jogar.png")
    --startButton.width=100
    --startButton.height=100
    --startButton.x = 160
    --startButton.y = screenH * 0.86
    --sceneGroup:insert(startButton)



    local creditsButton = display.newImage("ceta.png")
    creditsButton.width=70
    creditsButton.height=70
    creditsButton.x=165
    creditsButton.y=screenH * 1
    sceneGroup:insert(creditsButton)



    local function goToStartGame(event)
       print("start button has been tapped")
        composer.gotoScene( "game", {effect = "fade"} )
		 
        return true
    end
    Button:addEventListener("tap", goToStartGame)


    
	local function goToCredits(event)
        print("credits button has been tapped")
        composer.gotoScene("credits", {effect = "fade"})
        return true
    end
    creditsButton:addEventListener("tap", goToCredits)

background1.enterFrame = scrollCity
Runtime:addEventListener("enterFrame", background1)
background2.enterFrame = scrollCity
Runtime:addEventListener("enterFrame", background2)  
    

end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen).
    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view
	
	

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene