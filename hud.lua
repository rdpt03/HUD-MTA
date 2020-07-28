--[[



----->USEM E ABUSEM<-----

----->Criado Por RDPT03<-------

-> Coloquem, editem, o que quizerem <-

]]

--COLOCAR LOGO
function showClientImage()--criar função da imagem
  guiCreateStaticImage( 0.85, 0.01 , 0.1,  0.15, "logo.png", true, nil)--colocar image
end
addEventHandler( "onClientResourceStart", getResourceRootElement( getThisResource() ), showClientImage )--ativar função

--Mostrar Money ping e fps (fps ainda nao)
function mostramoneypingfps () 
  local screenW,screenH = guiGetScreenSize()--obter resoluçao do ecra
  local resW, resH = 1280,720
  local x, y = (screenW/resW), (screenH/resH)
  local Dinheiro = getPlayerMoney(localPlayer)--obter dinheiro do player
  dxDrawText(""..Dinheiro.."€", screenW * 0.8683, screenH * 0.1608, screenW * 5.0133, screenH * 4.2736, tocolor(9, 131, 0, 255), 1, "pricedown", "left", "top", false, false, false, false, false)--printar o valor do money em baixo da imagem
 
end

--APLICAR HUD
 function aplicarHud() -- criar função pra criar a hud e ocultar a original do gta
  addEventHandler("onClientRender", getRootElement(), mostramoneypingfps) --ativar a parte fps ping money
  setPlayerHudComponentVisible("armour", false)--tirar elementos originais
  setPlayerHudComponentVisible("wanted", false)
  setPlayerHudComponentVisible("weapon", false)
  setPlayerHudComponentVisible("money", false)
  setPlayerHudComponentVisible("health", false)
  setPlayerHudComponentVisible("clock", false)
  setPlayerHudComponentVisible("breath", false)
  setPlayerHudComponentVisible("ammo", false)
  setPlayerHudComponentVisible("ammo", false)
  for _, component in ipairs( components ) do
    setPlayerHudComponentVisible( component, false )
  end
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), aplicarHud)--aplicar tudo