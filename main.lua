-- Importamos as bibliotecas do Love2D
love = require 'love'

function love.load()
  -- Carregamos uma imagem de fundo
  background = love.graphics.newImage('map.png')

  -- Criamos um objeto player
  player = {
    x = 100, -- posição x inicial
    y = 100, -- posição y inicial
    speed = 200, -- velocidade de movimento

  }
end

function love.update(dt)
  -- Verificamos se o usuário pressionou as setas de direção
  if love.keyboard.isDown('up') then
    -- Movemos o player para cima
    player.y = player.y - player.speed * dt
  elseif love.keyboard.isDown('down') then
    -- Movemos o player para baixo
    player.y = player.y + player.speed * dt
  end

  if love.keyboard.isDown('left') then
    -- Movemos o player para a esquerda
    player.x = player.x - player.speed * dt
  elseif love.keyboard.isDown('right') then
    -- Movemos o player para a direita
    player.x = player.x + player.speed * dt
  end
end

function love.draw()
  -- Desenhamos o fundo
  love.graphics.draw(background, 0, 0, 0)

  -- Desenhamos o player
  love.graphics.rectangle("fill", player.x, player.y, 20, 20)
end
