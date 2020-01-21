-- Name: SpaceObject examples
-- Description: Empty scenario demonstrating SpaceObject scripting function examples. Use the GM screen to run demo functions and the player ship's Relay station to view logs.
-- Type: Basic

function init()
  -- Create a player ship
  player = PlayerSpaceship():
    setFaction("Human Navy"):
    setTemplate("Atlantis"):
    setCallSign("Epsilon")
  
  --[[--------------------------------------------------------------------------
  | Demonstrate setPosition and getPosition                                    |
  ----------------------------------------------------------------------------]]
  addGMFunction("set/getPosition", function()
    -- Collect the player's current coordinates
    local x, y = player:getPosition()

    player:
      -- Report the player's current coordinates
      addToShipLog(
        string.format(
[[x, y = player:getPosition()
x = %s, y = %s]],
          tostring(x), tostring(y)),
        "White"):
      -- Move the player 500m "east" and 500m "south" on the map
      setPosition(x + 500.0, y + 500.0):
      addToShipLog(
      [[player:setPosition(x + 500.0, y + 500.0)]],
      "Yellow")
    -- Collect the player's new coordinates
    x, y = player:getPosition()

      -- Report the player's new coordinates
    player:addToShipLog(
      string.format(
        [[x = %s, y = %s]],
        tostring(x), tostring(y)),
      "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setRotation and getRotation                                    |
  ----------------------------------------------------------------------------]]
  addGMFunction("set/getRotation", function()
    player:
      -- Report the player's current rotation
      addToShipLog(
        string.format(
          [[player:getRotation() = %s]],
          tostring(player:getRotation())),
        "White"):
      -- Rotate the player 45 degrees clockwise
      setRotation(player:getRotation() + 45):
      addToShipLog(
        [[player:setRotation(player:getRotation() + 45)]],
        "Yellow"):
      -- Report the player's new rotation
      addToShipLog(
        string.format(
          [[player:getRotation() = %s]],
          tostring(player:getRotation())),
        "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setHeading and getHeading                                      |
  ----------------------------------------------------------------------------]]
  addGMFunction("set/getHeading", function()
    player:
      -- Report the player's current heading
      addToShipLog(
        string.format(
          [[player:getHeading() = %s]],
          tostring(player:getHeading())),
        "White"):
      -- Rotate the player 45 degrees clockwise
      setHeading(player:getHeading() + 45):
      addToShipLog(
        [[player:setHeading(player:getHeading() + 45)]],
        "Yellow"):
      -- Report the player's new heading
      addToShipLog(
        string.format(
          [[player:getHeading() = %s]],
          tostring(player:getHeading())),
        "Green")
  end)
  --[[--------------------------------------------------------------------------
  | Demonstrate getVelocity and getAngularVelocity                             |
  ----------------------------------------------------------------------------]]
  addGMFunction("get...Velocity", function()
    player:
      -- Report the player's directional velocity
      addToShipLog(
        string.format(
          [[player:getVelocity() = %s]],
          tostring(player:getVelocity())),
        "Green"):
      -- Report the player's rotational velocity
      addToShipLog(
        string.format(
          [[player:getAngularVelocity() = %s]],
          tostring(player:getAngularVelocity())),
        "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setFaction, setFactionId, getFaction, and getFactionId         |
  ----------------------------------------------------------------------------]]
  addGMFunction("get/setFaction/Id", function()
    player:
      -- Report the player's current faction
      addToShipLog(
        string.format(
          [[player:getFaction() = %s]],
          player:getFaction()),
        "White"):
      -- Report the player's current faction ID
      addToShipLog(
        string.format(
          [[player:getFactionId() = %s]],
          tostring(player:getFactionId())),
        "White"):
      -- Switch the player's faction to Kraylor
      setFaction("Kraylor"):
      addToShipLog(
        [[player:setFaction("Kraylor")]],
        "Yellow"):
      -- Report the player's current faction
      addToShipLog(
        string.format(
          [[player:getFaction() = %s]],
          player:getFaction()),
        "Green"):
      -- Report the player's current faction ID
      addToShipLog(
        string.format(
          [[player:getFactionId() = %s]],
          tostring(player:getFactionId())),
        "Green")

    -- Create a Kraylor station
    station = SpaceStation():
      setTemplate("Medium Station"):
      setFaction("Kraylor"):
      setCallSign("Faction Test" .. tostring(
        math.floor(random(0,100)))):
      setDescription("Testing factions"):
      setPosition(random(-10000, 10000), random(-10000, 10000))

    -- Report the Kraylor station to the player
    player:
      addToShipLog(
        [[Created station = SpaceStation():setFaction("Kraylor")]],
        "White"):
      addToShipLog(
        string.format(
          [[station:getFaction() = %s]],
          station:getFaction()),
        "White"):
      addToShipLog(
        string.format(
          [[station:getFactionId() = %s]],
          tostring(station:getFactionId())),
        "White"):
      -- Switch the player's faction to Human Navy...
      setFaction("Human Navy"):
      addToShipLog(
        [[player:setFaction("Human Navy")]],
        "Yellow"):
      addToShipLog(
        string.format(
          [[player:getFaction() = %s]],
          player:getFaction()),
        "Green"):
      addToShipLog(
        string.format(
          [[player:getFactionId() = %s]],
          tostring( player:getFactionId())),
        "Green")

    -- ... then the station's faction to match the player's, and report.
    station:setFactionId(player:getFactionId())

    player:
      addToShipLog(
        [[station:setFaction(player:getFactionId())]],
        "Yellow"):
      addToShipLog(
        string.format(
          [[station:getFaction() = %s]],
          station:getFaction()),
        "Green"):
      addToShipLog(
        string.format(
          [[station:getFactionId() = %s]],
          tostring(station:getFactionId())),
        "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setCommsScript                                                 |
  ----------------------------------------------------------------------------]]
  addGMFunction("setCommsScript", function()
    -- Create a ship to talk to
    comms_script_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Comms script test " .. tostring(
        math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000)):
      -- Override the default comms with a comms script
      setCommsScript("comms_station_scenario_00_spaceObject.lua")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setCommsFunction                                               |
  ----------------------------------------------------------------------------]]
  addGMFunction("setCommsFunction", function()
    -- Create a ship to talk to
    comms_function_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Comms function test " .. tostring(
        math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000)):
      -- Override the default comms with a comms function
      setCommsFunction(commsFunction)
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate isEnemy and isFriendly                                         |
  ----------------------------------------------------------------------------]]
  addGMFunction("isEnemy/Friendly", function()
    -- Create friendly, neutral, and hostile ships
    fof_test = {}

    fof_test[1] = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Friendly Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    fof_test[2] = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Independent"):
      setCallSign("Neutral Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    fof_test[3] = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Kraylor"):
      setCallSign("Enemy Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    -- For each ship ...
    for index, test_ship in ipairs(fof_test) do
      player:
        -- ... identify it and report whether it is friendly or hostile
        addToShipLog(
          string.format(
            [[Added fof_test[%s], a %s ship named %s]],
            tostring(index),
            test_ship:getFaction(),
            test_ship:getCallSign()),
          "White"):
        addToShipLog(
          string.format(
            [[player:isEnemy(fof_test[%s]) = %s]],
            tostring(index),
            tostring(player:isEnemy(test_ship))),
          "Green"):
        addToShipLog(
          string.format(
            [[player:isFriendly(fof_test[%s]) = %s]],
            tostring(index),
            tostring(player:isFriendly(test_ship))),
          "Green")
    end
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setCallSign and getCallSign                                    |
  ----------------------------------------------------------------------------]]
  addGMFunction("set/getCallSign", function()
    -- Determine whether to toggle the player's callsign
    local new_callsign = "Delta"
    if player:getCallSign() == "Delta" then
      new_callsign = "Epsilon"
    end

    player:
      -- Report the player's current callsign
      addToShipLog(
        string.format(
          [[player:getCallSign() = %s]],
          player:getCallSign()),
        "Green"):
      -- Set the player's new callsign
      setCallSign(new_callsign):
      addToShipLog(
        string.format(
          [[player:setCallSign(%s)]],
          new_callsign),
        "Yellow"):
      -- Report the player's new callsign
      addToShipLog(
        string.format(
          [[player:getCallSign() = %s]],
          player:getCallSign()),
        "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate areEnemiesInRange and getObjectsInRange                        |
  ----------------------------------------------------------------------------]]
  addGMFunction("...InRange", function()
    -- Create a hostile ship within a 5000m block around the map origin
    in_range_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Kraylor"):
      setCallSign("Enemy In Range Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-2500, 2500), random(-2500, 2500))

    player:
      -- Report whether any enemies are within a 5000m radius of the player
      addToShipLog(
        string.format(
          [[player:areEnemiesInRange(5000) = %s]],
          tostring(player:areEnemiesInRange(5000))),
        "Green"):
      addToShipLog(
        [[player:getObjectsInRange(5000) = ]],
        "Green")

    -- For each object within a 5000m radius of the player ...
    for index, object_in_range in ipairs(player:getObjectsInRange(5000)) do
      player:
        -- ... report its callsign
        addToShipLog(
          string.format(
            [[  %s]],
            object_in_range:getCallSign()),
          "Green")
    end
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate reputation point functions                                     |
  ----------------------------------------------------------------------------]]
  addGMFunction("...eputationPoints", function()
    player:
      -- Set the player's reputation with their current faction to 1000
      setReputationPoints(1000):
      addToShipLog(
        [[player:setReputationPoints(1000)]],
        "Yellow")

    -- Record whether we successfully take 500 reputation points from the player
    local took_reputation = player:takeReputationPoints(500)

    player:
      -- Report whether we successfully took reputation points from the player
      addToShipLog(
        string.format(
          [[took_reputation = player:takeReputationPoints(500) = %s]],
          tostring(took_reputation)),
        "Yellow"):
      -- Add 250 points to the player's reputation
      addReputationPoints(250):
      addToShipLog(
        [[player:addReputationPoints(250)]],
        "Yellow"):
      -- Report the player's reputation
      addToShipLog(
        string.format(
          [[player:getReputationPoints() = %s]],
          tostring(player:getReputationPoints())),
        "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate getSectorName                                                  |
  ----------------------------------------------------------------------------]]
  addGMFunction("getSectorName", function()
    player:
      -- Report the player's current sector name
      addToShipLog(
        string.format(
          [[player:getSectorName() = %s]],
          player:getSectorName()),
        "Green"):
      -- Move the player 20km "east" and 20km "south" of the map origin
      setPosition(20000,20000):
      -- Report the player's new sector name
      addToShipLog(
        string.format(
          [[player:setPosition(20000,20000):getSectorName() = %s]],
          player:getSectorName()),
        "Green"):
      -- Move the player 20km "west" and 20km "north" of the map origin
      setPosition(-20000,-20000):
      -- Report the player's new sector name
      addToShipLog(
        string.format(
          [[player:setPosition(-20000,-20000):getSectorName() = %s]],
          player:getSectorName()),
        "Green"):
      -- Move the player to the map origin
      setPosition(0,0):
      -- Report the player's new sector name
      addToShipLog(
        string.format(
          [[player:setPosition(0,0):getSectorName() = %s]],
          player:getSectorName()),
        "Green")
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate sendCommsMessage                                               |
  ----------------------------------------------------------------------------]]
  addGMFunction("sendCommsMes...", function()
    -- Create a ship to talk to
    send_comms_message_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Send Comms Message Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    -- Message the player from the new ship and record whether it's successful
    local success = send_comms_message_test:
      sendCommsMessage(
        player,
        string.format(
          [[Hello, %s.
This is %s using send_comms_message() to send you a message.]],
          player:getCallSign(),
          send_comms_message_test:getCallSign()))

    --[[------------------------------------------------------------------------
    | sendCommsMessage isn't blocked by hail requests; the message is recorded |
    | in the target ship's log even if the hail is unsuccessful.               |
    |                                                                          |
    | Note that ignored hails do not return false.                             |
    --------------------------------------------------------------------------]]
    if success == false then
      player:addToShipLog(
        string.format(
          [[%s attempted to hail us, but was unable to.]],
          send_comms_message_test:getCallSign()),
        "Red")
    else
      player:addToShipLog(
        string.format(
          [[%s attempted to hail us, and was successful.]],
          send_comms_message_test:getCallSign()),
        "Green")
    end
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate openCommsTo                                                    |
  ----------------------------------------------------------------------------]]
  addGMFunction("openCommsTo", function()
    -- Create a ship to talk to
    open_comms_to_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Open Comms To Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    -- Hail the player from the new ship and record whether it's successful
    local success = open_comms_to_test:openCommsTo(player)

    --[[------------------------------------------------------------------------
    | openCommsTo can be blocked by other open hail requests.                  |
    |                                                                          |
    | Note that ignored hails do not return false.                             |
    --------------------------------------------------------------------------]]
    if success == false then
      player:addToShipLog(
        string.format(
          [[%s attempted to hail us, but was unable to.]],
          open_comms_to_test:getCallSign()),
        "Red")
    else
      player:addToShipLog(
        string.format(
          [[%s attempted to hail us, and was successful.]],
          open_comms_to_test:getCallSign()),
        "Green")
    end
  end)

  --[[--------------------------------------------------------------------------
  | Demonstrate setRadarSignatureInfo and getRadarSignature...                 |
  ----------------------------------------------------------------------------]]
  addGMFunction("get/setRadarSig...", function()
    -- Create a ship to generate a signature
    radar_signature_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Radar Signature Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-10000, 10000), random(-10000, 10000)):
      -- Set its radar signature to 0 gravity, 0.5 electrical, 1.0 biological
      setRadarSignatureInfo(0.0, 0.5, 1.0)

    player:
      -- Report on the new ship
      addToShipLog(
        string.format(
          [[Created radar_signature_test as %s]],
          radar_signature_test:getCallSign()),
        "White"):
      addToShipLog(
        [[radar_signature_test:setRadarSignatureInfo(0.0, 0.5, 1.0)]],
        "Yellow"):
      -- Report each band of the new ship's radar signature
      addToShipLog(
        string.format(
          [[radar_signature_test:getRadarSignatureGravity() = %s]],
          tostring(radar_signature_test:getRadarSignatureGravity())),
        "Green"):
      addToShipLog(
        string.format(
          [[radar_signature_test:getRadarSignatureElectrical() = %s]],
          tostring(radar_signature_test:getRadarSignatureElectrical())),
        "Green"):
      addToShipLog(
        string.format(
          [[radar_signature_test:getRadarSignatureBiological() = %s]],
          tostring(radar_signature_test:getRadarSignatureBiological())),
        "Green")
  end)
end

--[[----------------------------------------------------------------------------
| Target function of setCommsFunction                                          |
------------------------------------------------------------------------------]]
function commsFunction()
  -- Respond when the player hails this ship
  setCommsMessage(
    string.format(
      [[Hello, %s. You're talking to commsFunction().]],
      player:getCallSign()))
end

--[[----------------------------------------------------------------------------
| Clean up the current play field                                              |
------------------------------------------------------------------------------]]
function cleanup()
  -- Find all objects in the play field using getAllObjects
  for index, object in ipairs(getAllObjects()) do
    -- Move any PlayerSpaceships to the map origin
    if object.typeName == "PlayerSpaceship" then
      object:setPosition(0, 0)
    -- Destroy all other objects
    else
      object:destroy()
    end
  end
end

function update(delta)
  -- No victory condition
end