-- Крестики нолики
-- Тестовое задание для Elephants Games

local push = require "lib/push"
VIRTUAL_WIDTH =256
VIRTUAL_HEIGHT = 144

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

xSprite = love.graphics.newImage('graphics/x.png')
oSprite = love.graphics.newImage('graphics/o.png')

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,
    {
        fullscreen = false,
        vsync = true,
        resizable = true
    })
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
    
end
 
function love.draw()
    push:start()
        love.graphics.draw(xSprite,10,10,0, 0.1,0.1)
        love.graphics.draw(oSprite, 30, 10, 0,0.1,0.1)
    push:finish()
end


