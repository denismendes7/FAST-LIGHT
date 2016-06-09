local composer = require( "composer" )
local screenW, screenH = display.contentWidth, display.contentHeight 
local scene = composer.newScene()
  
function scene:create( event )
  
local sceneGroup = self.view
  
local physics = require("physics") ; physics.start() 
--local vibrator = require('plugin.vibrator')
 

-- Vibrate for a second
--vibrator.vibrate(1000)
 


  local posicao
  local scoretotal
  local timeT
  local time = 10
  local scoreT
  local score = 0 
  
   media.playSound("musicfast.ogg", true)

  
  system.activate("multitouch")
  
   local musicfast = audio.loadSound("lose.wav")
  
  local musicafast = audio.loadSound("bug.wav")
  
  local botaofast = audio.loadSound("explosion.wav")
  
  local astromusic = audio.loadSound ("cannon.wav")

  

-->add imagem de fundo

background1 = display.newImage("spectrum1.jpg")
background1.height = 1000
background1.width = 1000
background1.x = 0
background1.y = 400

background2 = display.newImage("spectrum1.jpg")
background2.height = 1000
background2.width = 1000
background2.x = 0
background2.y = 400


function scrollCity(self)

	if self.x < - 180 then
		self.x = 470
	else 
		self.x = self.x - 22
	end
	
end



local  relogio = display.newImage("crono.png",true)
relogio.height = 50
relogio.width = 40
relogio.x = 30
relogio.y = 20


local  ponto = display.newImage("pontuacao.png",true)
ponto.height = 30
ponto.width = 40
ponto.x = 30
ponto.y = -20


local botaoimg = {}


-->add botao na posicao1
botaoimg[1] = display.newImage("bnt.png")
botaoimg[1].height = 85
botaoimg[1].width = 90
botaoimg[1].x = 65
botaoimg[1].y = 210
-->add botao na posicao2
botaoimg[2] = display.newImage("bnt.png")
botaoimg[2].height = 85
botaoimg[2].width = 90
botaoimg[2].x = 160
botaoimg[2].y = 180
-->add botao na posicao3
botaoimg[3] = display.newImage("bnt.png")
botaoimg[3].height = 85
botaoimg[3].width = 90
botaoimg[3].x = 250
botaoimg[3].y = 210
-->add botao na posicao4
botaoimg[4] = display.newImage("bnt.png")
botaoimg[4].height = 85
botaoimg[4].width = 90
botaoimg[4].x = 40
botaoimg[4].y = 300
-->add botao na posicao5
botaoimg[5] = display.newImage("bnt.png")
botaoimg[5].height = 85
botaoimg[5].width = 90
botaoimg[5].x = 260
botaoimg[5].y = 400
-->add botao na posicao6
botaoimg[6] = display.newImage("bnt.png")
botaoimg[6].height = 85
botaoimg[6].width = 90
botaoimg[6].x = 280
botaoimg[6].y = 300
-->add botao na posicao7
botaoimg[7] = display.newImage("bnt.png")
botaoimg[7].height = 85
botaoimg[7].width = 90
botaoimg[7].x = 60
botaoimg[7].y = 400
-->add botao na posicao8
botaoimg[8] = display.newImage("bnt.png")
botaoimg[8].height = 85
botaoimg[8].width = 90
botaoimg[8].x = 160
botaoimg[8].y = 430

local botao = {}


-->add botao na posicao1
botao[1] = display.newImage("ring.png",true)
botao[1].alpha = 0
botao[1].height = 75
botao[1].width = 75
botao[1].x = 65
botao[1].y = 210
botao[1].ligado = 0
-->add botao na posicao2
botao[2] = display.newImage("ring.png",true)
botao[2].alpha = 0
botao[2].height = 75
botao[2].width = 75
botao[2].x = 160
botao[2].y = 180
botao[2].ligado = 0
-->add botao na posicao3
botao[3] = display.newImage("ring.png",true)
botao[3].alpha = 0
botao[3].height = 75
botao[3].width = 75
botao[3].x = 250
botao[3].y = 210
botao[3].ligado = 0
-->add botao na posicao4
botao[4] = display.newImage("ring.png",true)
botao[4].alpha = 0
botao[4].height = 75
botao[4].width = 75
botao[4].x = 40
botao[4].y = 300
botao[4].ligado = 0
-->add botao na posicao5
botao[5] = display.newImage("ring.png",true)
botao[5].alpha = 0
botao[5].height = 75
botao[5].width = 75
botao[5].x = 260
botao[5].y = 400
botao[5].ligado = 0
-->add botao na posicao6
botao[6] = display.newImage("ring.png",true)
botao[6].alpha = 0
botao[6].height = 75
botao[6].width = 75
botao[6].x = 280
botao[6].y = 300
botao[6].ligado = 0
-->add botao na posicao7
botao[7] = display.newImage("ring.png",true)
botao[7].alpha = 0
botao[7].height = 75
botao[7].width = 75
botao[7].x = 60
botao[7].y = 400
botao[7].ligado = 0
-->add botao na posicao8
botao[8] = display.newImage("ring.png",true)
botao[8].alpha = 0
botao[8].height = 75
botao[8].width = 75
botao[8].x = 160
botao[8].y = 430
botao[8].ligado = 0



function acenderBotao(event)

posicao = math.random(1, 8)

altura = botao[posicao].height
largura = botao[posicao].width
x = botao[posicao].x
y = botao[posicao].y

botao[posicao].alpha = 1
botao[posicao].height = altura
botao[posicao].width = largura
botao[posicao].x = x
botao[posicao].y = y
botao[posicao].ligado = 1

timer.performWithDelay(2000,apagarBotaox)

end




function apagarBotaox(event)

posicaox = posicao

altura = botao[posicaox].height
largura = botao[posicaox].width
x = botao[posicaox].x
y = botao[posicaox].y



botao[posicaox].alpha = 0.0
botao[posicaox].height = altura
botao[posicaox].width = largura
botao[posicaox].x = x
botao[posicaox].y = y
botao[posicaox].ligado = 0

acenderBotao()


end



function onBotaoTouch(event)

botao[posicao] = event.target
  
if (botao[posicao].ligado == 1) then
  
local function apagarBotaoy(event)

posicaoy = posicao

altura = botao[posicaoy].height
largura = botao[posicaoy].width
x = botao[posicaoy].x
y = botao[posicaoy].y


botao[posicaoy].alpha = 0
botao[posicaoy].height = altura
botao[posicaoy].width = largura
botao[posicaoy].x = x
botao[posicaoy].y = y
botao[posicaoy].ligado = 0



end
	 apagarBotaoy()
	 updateScore()
	 audio.play(musicafast)
	 
      
elseif (botao[posicao].alpha == 0 )then

     time = time - 10
	 

end
   return true

end

local tempimg = display.newImage( "sphere.png" )

tempimg.height = 140
tempimg.width = 135
tempimg.x = 160 
tempimg.y = 305


local temp = display.newImage( "relogio.png" )
temp.id = "buton temp"

temp.alpha = 0
temp.height = 135
temp.width = 135
temp.x = 160 
temp.y = 305


function sortear()

local sorteio = botao[posicao]

if (sorteio == botao [1])then

temp.alpha = 1

end
end




 function onTempoTouch( event )
 
 temp = event.target
 
 if (temp.alpha == 1)then
     
	 temp.alpha = 0
     audio.play(astromusic)
     time = time + 3
	 -- Wait for 100ms, vibrate for 500ms, turn off for 200ms, vibrate for 250ms. Repeat.
     ---vibrator.vibrate({100, 500,  200, 250}, 1)
	 
end
      
  return true
 end
  
 


  function updateTime()
  
      time = time - 0.03
      timeT.text = time
	  
		if time <= 0 then
			--print "perdeu"
			
			-->add imagem de fundo
              local  tela = display.newImage("spectrum1.jpg")
                     tela.height = 700
                     tela.width = 700
                     tela.x = display.contentWidth /2
                     tela.y = display.contentHeight /2

			  local  scoreimg = display.newImage("pontuacao.png")
                     scoreimg.height = 50
                     scoreimg.width = 70
                     scoreimg.x = display.contentWidth /2
                     scoreimg.y = display.contentHeight /2 
					 
			  local  voltaimg = display.newImage("voltar.png")
                     voltaimg.height = 100
                     voltaimg.width = 100
                     voltaimg.x = 160
                     voltaimg.y = 400
					 
					 
					     function updateScoreTotal()
					  
                             scoretotal = score 						   
						     scoretotalT = display.newText(scoretotal,160,150,system.nativeFont,130)
                                           scoretotalT:setTextColor(1,1,1)  
    
                         end            
					 
					 
			
			local function goToFim(event)
                print("start button has been tapped")
                composer.gotoScene( "menu", {effect = "fade"} )
             return true
            end
            
			voltaimg:addEventListener("touch", goToFim)
			goToFim()
			composer.removeHidden()
			updateScoreTotal()
			media.stopSound("musicfast.ogg", true);
				 audio.play(musicfast)
			
		end
	
	  
  end
  


  function updateScore()
    score = score + 10
    scoreT.text = score
    
  end
    
	
  timeT = display.newText('0',200,20,system.nativeFont,30)
        timeT:setTextColor(1,1,1)
	
		
  scoreT = display.newText('0',90,-20,system.nativeFont,30)
        scoreT:setTextColor(1,1,1)     
		
		
		
		
background1.enterFrame = scrollCity
Runtime:addEventListener("enterFrame", background1)
background2.enterFrame = scrollCity
Runtime:addEventListener("enterFrame", background2)  
 
temp:addEventListener( "touch", onTempoTouch ) 
Runtime: addEventListener("enterFrame",updateTime) --- funcao tempo decrecente..
Runtime: addEventListener("enterFrame",sortear)

timer.performWithDelay(1000,acenderBotao)


botao[1]:addEventListener("touch",onBotaoTouch)
botao[2]:addEventListener("touch",onBotaoTouch)
botao[3]:addEventListener("touch",onBotaoTouch)
botao[4]:addEventListener("touch",onBotaoTouch)
botao[5]:addEventListener("touch",onBotaoTouch)
botao[6]:addEventListener("touch",onBotaoTouch)
botao[7]:addEventListener("touch",onBotaoTouch)
botao[8]:addEventListener("touch",onBotaoTouch)
--botao[9]:addEventListener("touch",onBotaoTouch)
  
  

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
	
Runtime: removeEventListener("enterFrame",updateTime)	 
Runtime: removeEventListener( "touch", onTempoTouch ) 
Runtime: removeEventListener("enterFrame",sortear)
Runtime: removeEventListener("enterFrame", background1)
Runtime: removeEventListener("enterFrame", background2)


   
   
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene
  
  