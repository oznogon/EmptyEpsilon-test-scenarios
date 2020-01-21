-- Name: SpaceObject examples
-- Description: Empty scenario demonstrating SpaceObject scripting function examples. Use the GM screen to run demo functions and the player ship's Relay station to view logs.
-- Type: Basic

function init()
  player = PlayerSpaceship():
    setFaction("Human Navy"):
    setTemplate("Atlantis"):
    setCallSign("Epsilon")
  
  -- Demonstrate setPosition and getPosition
  addGMFunction("set/getPosition", function()
    local x, y = player:getPosition()

    player:addToShipLog(
      string.format(
        [[local x, y = player:getPosition() = %s, %s]],
        tostring(x), tostring(y)),
      "White")

    player:setPosition(x + 500.0, y + 500.0)

    player:addToShipLog(
      [[player:setPosition(x + 500.0, y + 500.0)]],
      "Yellow")

    x, y = player:getPosition()

    player:addToShipLog(
      string.format(
        [[x = %s, y = %s]],
        tostring(x), tostring(y)),
      "Green")
  end)

  -- Demonstrate setRotation and getRotation
  addGMFunction("set/getRotation", function()
    local rotation = player:getRotation()

    player:addToShipLog(
      string.format(
        [[local rotation = player:getRotation() = %s]],
        rotation),
      "White")

    player:setRotation(rotation + 45)

    player:addToShipLog(
      [[player:setRotation(rotation + 45)]],
      "Yellow")

    rotation = player:getRotation()

    player:addToShipLog(
      string.format(
        [[rotation = %s]],
        tostring(rotation)),
      "Green")
  end)

  -- Demonstrate setHeading and getHeading
  addGMFunction("set/getHeading", function()
    local heading = player:getHeading()

    player:setHeading(heading + 45)

    player:addToShipLog(
      string.format(
        [[local heading = player:getHeading() = %s]],
        heading),
      "White")

    player:addToShipLog(
      [[player:setHeading(heading + 45)]],
      "Yellow")

    heading = player:getHeading()

    player:addToShipLog(
      string.format(
        [[heading = %s]],
        tostring(heading)),
      "Green")
  end)

  -- Demonstrate getVelocity and getAngularVelocity
  addGMFunction("get...Velocity", function()
    local velocity = player:getVelocity()
    local angular_velocity = player:getAngularVelocity()

    player:addToShipLog(
      string.format(
        [[player:getVelocity() = %s]],
        tostring(velocity)),
      "Green")

    player:addToShipLog(
      string.format(
        [[player:getAngularVelocity() = %s]],
        tostring(angular_velocity)),
      "Green")
  end)

  -- Demonstrate setFaction, setFactionId, getFaction, and getFactionId
  addGMFunction("get/setFaction/Id", function()
    local timer = 5
    local faction = player:getFaction()
    local faction_id = player:getFactionId()

    -- Report player's current faction and faction ID
    player:
      addToShipLog(
        string.format(
          [[local faction = player:getFaction() = %s]],
          tostring(faction)),
        "White"):
      addToShipLog(
        string.format(
          [[local faction_id = player:getFactionId() = %s]],
          tostring(faction_id)),
        "White")

    -- Switch player's faction to Kraylor and report
    player:
      setFaction("Kraylor"):
      addToShipLog(
        [[player:setFaction("Kraylor")]],
        "Yellow")

    faction = player:getFaction()
    faction_id = player:getFactionId()

    player:
      addToShipLog(
        string.format(
          [[faction = player:getFaction() = %s]],
          tostring(faction)),
        "Green"):
      addToShipLog(
        string.format(
          [[faction_id = player:getFactionId() = %s]],
          tostring(faction_id)),
        "Green")

    -- Create a Kraylor station and report
    station = SpaceStation():
      setTemplate("Medium Station"):
      setFaction("Kraylor"):
      setCallSign("Faction test" .. tostring(
        math.floor(random(0,100)))):
      setDescription("Testing factions"):
      setPosition(random(-10000, 10000), random(-10000, 10000))

    local station_faction = station:getFaction()
    local station_faction_id = station:getFactionId()

    player:
      addToShipLog(
        [[Created station = SpaceStation():setFaction("Kraylor")]],
        "White"):
      addToShipLog(
        string.format(
          [[station_faction = station:getFaction() = %s]],
          tostring(station_faction)),
        "White"):
      addToShipLog(
        string.format(
          [[station_faction_id = station:getFactionId() = %s]],
          tostring(station_faction_id)),
        "White")

    -- Switch the player's faction to Human Navy...
    player:
      setFaction("Human Navy"):
      addToShipLog(
        [[player:setFaction("Human Navy")]],
        "Yellow")

    faction = player:getFaction()
    faction_id = player:getFactionId()

    player:
      addToShipLog(
        string.format(
          [[faction = player:getFaction() = %s]],
          tostring(faction)),
        "Green"):
      addToShipLog(
        string.format(
          [[faction_id = player:getFactionId() = %s]],
          tostring(faction_id)),
        "Green")

    -- Then the station's faction to match the player's, and report.
    station:setFactionId(player:getFactionId())

    player:addToShipLog(
        [[station:setFaction(player:getFactionId())]],
        "Yellow")

    station_faction = station:getFaction()
    station_faction_id = station:getFactionId()

    player:
      addToShipLog(
        string.format(
          [[station_faction = station:getFaction() = %s]],
          tostring(station_faction)),
        "Green"):
      addToShipLog(
        string.format(
          [[station_faction_id = station:getFactionId() = %s]],
          tostring(station_faction_id)),
        "Green")
  end)

  -- Demonstrate setCommsScript
  addGMFunction("setCommsScript", function()
    -- Create a ship to talk to
    comms_script_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Comms script test " .. tostring(
        math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    comms_script_test:setCommsScript(
      "comms_station_scenario_00_spaceObject.lua")
  end)

  -- Demonstrate setCommsFunction
  addGMFunction("setCommsFunction", function()
    comms_function_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Comms function test " .. tostring(
        math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    comms_function_test:setCommsFunction(commsStation)
  end)

  -- Demonstrate isEnemy and isFriendly
  addGMFunction("isEnemy/Friendly", function()
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

    for index, test_ship in ipairs(fof_test) do
      player:
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

  -- Demonstrate setCallSign and getCallSign
  addGMFunction("set/getCallSign", function()
    local new_callsign = "Delta"
    if player:getCallSign() == "Delta" then
      new_callsign = "Epsilon"
    end

    player:
      addToShipLog(
        string.format(
          [[player:getCallSign() = %s]],
          player:getCallSign()),
        "Green"):
      setCallSign(new_callsign):
      addToShipLog(
        string.format(
          [[player:setCallSign(%s)]],
          new_callsign),
        "Yellow"):
      addToShipLog(
        string.format(
          [[player:getCallSign() = %s]],
          player:getCallSign()),
        "Green")
  end)

  -- Demonstrate areEnemiesInRange and getObjectsInRange
  addGMFunction("...InRange", function()
    in_range_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Kraylor"):
      setCallSign("Enemy In Range Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-2500, 2500), random(-2500, 2500))

    player:
      addToShipLog(
        string.format(
          [[player:areEnemiesInRange(5000) = %s]],
          tostring(player:areEnemiesInRange(5000))),
        "Green"):
      addToShipLog(
        [[player:getObjectsInRange(5000) = ]],
        "Green")

    for index, object_in_range in ipairs(player:getObjectsInRange(5000)) do
      player:
        addToShipLog(
          string.format(
            [[  %s]],
            object_in_range:getCallSign()),
          "Green")
    end
  end)

  -- Demonstrate reputation point functions
  addGMFunction("...eputationPoints", function()
    player:
      setReputationPoints(1000):
      addToShipLog(
        [[player:setReputationPoints(1000)]],
        "Yellow")

    local took_reputation = player:takeReputationPoints(500)

    player:
      addToShipLog(
        string.format(
          [[took_reputation = player:takeReputationPoints(500) = %s]],
          tostring(took_reputation)),
        "Yellow"):
      addReputationPoints(250):
      addToShipLog(
        [[player:addReputationPoints(250)]],
        "Yellow"):
      addToShipLog(
        string.format(
          [[player:getReputationPoints() = %s]],
          tostring(player:getReputationPoints())),
        "Green")
  end)

  -- Demonstrate getSectorName
  addGMFunction("getSectorName", function()
    player:
      addToShipLog(
        string.format(
          [[player:getSectorName() = %s]],
          player:getSectorName()),
        "Green"):
      setPosition(20000,20000):
      addToShipLog(
        string.format(
          [[player:setPosition(20000,20000):getSectorName() = %s]],
          player:getSectorName()),
        "Green"):
      setPosition(-20000,-20000):
      addToShipLog(
        string.format(
          [[player:setPosition(-20000,-20000):getSectorName() = %s]],
          player:getSectorName()),
        "Green"):
      setPosition(0,0):
      addToShipLog(
        string.format(
          [[player:setPosition(0,0):getSectorName() = %s]],
          player:getSectorName()),
        "Green")
  end)

  -- Demonstrate sendCommsMessage and openCommsTo
  addGMFunction("sendCommsMes...", function()
    send_comms_message_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Send Comms Message Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    local success = send_comms_message_test:sendCommsMessage(
      player,
      string.format(
        [[Hello, %s.
This is %s using send_comms_message() to send you a message.]],
        player:getCallSign(),
        send_comms_message_test:getCallSign()))

    --[[ sendCommsMessage isn't blocked by hail requests;
         the message is recorded in the target ship's log.

         Note that ignored hails do not return false. ]]
    if success == false then
      player:addToShipLog(
        string.format(
          [[%s attempted to hail us, but was unable to.]],
          send_comms_message_success:getCallSign()),
        "Red")
    else
      player:addToShipLog(
        string.format(
          [[%s attempted to hail us, and was successful.]],
          send_comms_message_success:getCallSign()),
        "Green")
    end
  end)

  addGMFunction("openCommsTo", function()
    open_comms_to_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Open Comms To Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-5000, 5000), random(-5000, 5000))

    local success = open_comms_to_test:openCommsTo(player)

    --[[ openCommsTo can be blocked by open hail requests.

         Note that ignored hails do not return false. ]]
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

  addGMFunction("get/setRadarSig...", function()
    radar_signature_test = CpuShip():
      setTemplate("Atlantis"):
      setFaction("Human Navy"):
      setCallSign("Radar Signature Test " .. tostring(
          math.floor(random(0,100)))):
      setPosition(random(-10000, 10000), random(-10000, 10000))

    radar_signature_test:setRadarSignatureInfo(0.0, 0.5, 1.0)

    player:
      addToShipLog(
        string.format(
          [[Created radar_signature_test as %s]],
          radar_signature_test:getCallSign()),
        "White"):
      addToShipLog(
        [[radar_signature_test:setRadarSignatureInfo(0.0, 0.5, 1.0)]],
        "Yellow"):
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

function commsStation()
  -- Target function of setCommsFunction
  setCommsMessage(
    string.format(
      [[Hello, %s. You're talking to commsStation().]],
      player:getCallSign()))
end

function cleanup()
  --[[ Clean up the current play field.

       Find all objects and destroy everything that is not a PlayerSpaceship.

       If an object is a PlayerSpaceship, position it in the center of the
       game map. ]]
  for _, obj in ipairs(getAllObjects()) do
    if obj.typeName == "PlayerSpaceship" then
      obj:setPosition(0, 0)
    else
      obj:destroy()
    end
  end
end

function update(delta)
  --No victory condition
end
