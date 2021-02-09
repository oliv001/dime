push = require 'push'

-- Display settings
VIRTUAL_WIDTH, VIRTUAL_HEIGHT = 1080, 720 -- Game Resolution
WINDOW_DESKTOP_RATIO = 0.7 -- Ratio between window and desktop (1 is fullscreen)
windowWidth, windowHeight = love.window.getDesktopDimensions()
windowHeight = windowHeight * WINDOW_DESKTOP_RATIO
windowWidth = windowHeight * 1.5 -- Ensures a 3:2 window ratio

PLAYER_SPEED = 140

-- Player. They will be a box for now
player = {
    x = VIRTUAL_WIDTH/2 - 5, y = VIRTUAL_HEIGHT/2 - 5
}


function love.load()
    -- Display settings
    love.graphics.setDefaultFilter('nearest', 'nearest')
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, windowWidth, windowHeight)

    
end


function love.update(dt)
    -- Movement
    if love.keyboard.isDown('w') then
        player.y = player.y - PLAYER_SPEED * dt
    elseif love.keyboard.isDown('s') then
        player.y = player.y + PLAYER_SPEED * dt
    elseif love.keyboard.isDown('a') then
        player.x = player.x - PLAYER_SPEED * dt
    elseif love.keyboard.isDown('d') then
        player.x = player.x + PLAYER_SPEED * dt
    end

end


function love.draw()
    push:start()

    love.graphics.clear(68/255, 94/255, 91/255, 150/255) --background
    love.graphics.setColor(179/255, 235/255 , 193/255, 210/255) --player?? we can make them a square for now ig
    love.graphics.rectangle('fill', player.x, player.y, 10, 10)

    push:finish()
end