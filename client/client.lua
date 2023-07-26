--[[ local spawnCallback
local firstSpawn = true
local spawnPos = vector3(-36.27580642700195, 171.19190979003907, 94.99284362792969)

AddEventHandler('onClientResourceStart', function(resourceName)
  if GetCurrentResourceName() ~= resourceName then
    return
  end

  spawnCallback = function()
    if firstSpawn then
      -- Spawn them at the spawnpoint
      exports.spawnmanager:spawnPlayer({x = spawnPos.x, y = spawnPos.y, z = spawnPos.z, heading = 301.30, model = 'ig_roccopelosi', skipFade = false})
      firstSpawn = false
    else
      -- Respawn them at the same location
      exports.spawnmanager:spawnPlayer({x = spawnPos.x, y = spawnPos.y, z = spawnPos.z, heading = 301.30, skipFade = false}, function(spawn)
        ClearPedBloodDamage(PlayerPedId())
      end)
    end
  end

  exports.spawnmanager:setAutoSpawnCallback(spawnCallback)
  exports.spawnmanager:setAutoSpawn(true)
end)
 ]] 
