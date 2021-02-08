push = require 'push'

-- Display settings
VIRTUAL_WIDTH, VIRTUAL_HEIGHT = 1080, 720 -- Game Resolution
WINDOW_DESKTOP_RATIO = 0.7 -- Ratio between window and desktop (1 is fullscreen)
windowWidth, windowHeight = love.window.getDesktopDimensions()
windowHeight = windowHeight * WINDOW_DESKTOP_RATIO
windowWidth = windowHeight * 1.5 -- Ensures a 3:2 window ratio


function love.load()
    -- Display settings
    love.graphics.setDefaultFilter('nearest', 'nearest')
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, windowWidth, windowHeight)

    
end


function love.update(dt)

end


function love.keypressed(key)
    
end


function love.draw()
    push:start()

    push:finish()
end