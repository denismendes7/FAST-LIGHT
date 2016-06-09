local composer = require( "composer" )
local screenW, screenH = display.contentWidth, display.contentHeight
local scene = composer.newScene()







-- "scene:create()"
function scene:create( event )
    -- Pinguo 
local physics = require("physics")
---local show = require("show")

--Runtime:addEventListener("enterFrame",show.make)

physics.start()



    local sceneGroup = self.view

    -- Initialize the scene here.
    -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   
    local sceneGroup = self.view

    local background_menu = display.newImage("spectrum1.jpg")
	background_menu.width=1000
    background_menu.height=1000
	background_menu.x = 100
    background_menu.y = 100
    sceneGroup:insert(background_menu)
	
	local creditos = display.newImage("credts.png")
	creditos.width=280
    creditos.height=220
	creditos.x = 165
    creditos.y = 100
    sceneGroup:insert(creditos)

    local backButton = display.newImage("voltar.png",165, 450)
	 backButton.width=70
     backButton.height=70
    sceneGroup:insert(backButton)

    local function goToMenu(event)
        print("back button has been pressed")
        composer.gotoScene("menu", {effect = "fade"})
        return true
    end

    backButton:addEventListener("tap", goToMenu)
   
    

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