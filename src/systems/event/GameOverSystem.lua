local system = Tiny.processingSystem({
  filter = Tiny.filter('gameOverEvent')
})

function system:process(e, dt)
  World:removeSystem(Systems.water.UpdateWaterLevelSystem)
  World:removeSystem(Systems.trip.UpdateTripSystem)
  World:removeSystem(Systems.keyLock.KeyControlSystem)
  World:removeSystem(Systems.event.GameWinSystem)
  World:removeSystem(Systems.event.GameOverSystem)
  World:addEntity({drawText={text="GAME OVER"},position={x=WindowWidth/2-30,y=WindowHeight/2-30}})
end

return system
