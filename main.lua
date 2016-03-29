local physics = require("physics")
physics.start()
-- physics.setDrawMode("hybrid")

local sky = display.newImage("sky-8.jpg")

local grass = display.newImage("grass.png")
grass.y = 325
grass.x = 200
grass.height = 400
grass.width = 400

function addPig()
  local pig = display.newImage("pig.png")
  pig.height = 100
  pig.width = 100
  pig.x = math.random(0, 400)
  physics.addBody(pig, { density=100.0, friction=0.5, bounce=0.25 })
end

local rectangle = { halfWidth=250, halfHeight=30, x=10, y=200, angle=0 }

physics.addBody(grass, "static", { box=rectangle, friction=0.5, bounce=0.3 })

display.currentStage:addEventListener("tap", addPig)
