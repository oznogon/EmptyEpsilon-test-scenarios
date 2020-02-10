function init()
  stealth = CpuShip():setTemplate('Stalker Q7'):setPosition(5000,0)
  stealth:setRadarSignatureInfo(-5.0, -5.0, -5.0)
  stealth.is_cloaked = true

  player = PlayerSpaceship():setFaction("Human Navy"):setTemplate("Atlantis")
  player:addCustomButton("Science", "cloak_test", "Toggle Cloak", function()
    if stealth.is_cloaked then
      stealth:setRadarSignatureInfo(0.25, 0.25, 0.25)
    else
      stealth:setRadarSignatureInfo(-5.0, -5.0, -5.0)
    end
    stealth.is_cloaked = not stealth.is_cloaked
  end)
end

function update(delta)
  -- No victory/defeat condition
end
