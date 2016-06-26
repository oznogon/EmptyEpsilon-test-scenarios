-- Name: Turret test
-- Description: An Atlantis with two turreted beams and four idle targets within range.
-- Type: Test

-- Create the player ship, and modify its two beam weapons to add turrets.
player = PlayerSpaceship():setFaction("Human Navy"):setTemplate("Atlantis"):setPosition(0, 0)
--                 Idx, Arc, Dir,  Range, Cycle, Dmg
player:setBeamWeapon(0,   5, -20, 1500.0,   3.0,  10)
player:setBeamWeapon(1,   5,  20, 1500.0,   3.0,  10)
--                       Idx, Arc, Dir, Rotation
player:setBeamWeaponTurret(0, 100, -20,     0.25)
player:setBeamWeaponTurret(1, 100,  20,     0.25)

-- Create four targets.
CpuShip():setFaction("Kraylor"):setTemplate("Tug"):setCallSign("1"):setPosition(-500, 500):setScannedByFaction("Human Navy", true)
CpuShip():setFaction("Kraylor"):setTemplate("Tug"):setCallSign("2"):setPosition(500, 500):setScannedByFaction("Human Navy", true)
CpuShip():setFaction("Kraylor"):setTemplate("Tug"):setCallSign("3"):setPosition(-500, -500):setScannedByFaction("Human Navy", true)
CpuShip():setFaction("Kraylor"):setTemplate("Tug"):setCallSign("4"):setPosition(500, -500):setScannedByFaction("Human Navy", true)

-- GM functions to create enemy ships with turrets, to test AI.
addGMFunction("Basic turret enemy", function()
  enemy = CpuShip():setFaction("Kraylor"):setTemplate("Atlantis X23"):setPosition(2500, 2500):setScannedByFaction("Human Navy", true):orderRoaming()
  --                 Idx, Arc, Dir,  Range, Cycle, Dmg
  enemy:setBeamWeapon(0,   5, -20, 1500.0,   6.0,   1)
  enemy:setBeamWeapon(1,   5,  20, 1500.0,   6.0,   1)
  enemy:setBeamWeapon(2,   5, 180, 1500.0,   6.0,   1)
  --                      Idx, Arc, Dir, Rotation
  enemy:setBeamWeaponTurret(0, 100, -20,     0.25)
  enemy:setBeamWeaponTurret(1, 100,  20,     0.25)
  enemy:setBeamWeaponTurret(2, 100, 180,     0.25)
end)

addGMFunction("360 turret enemy", function()
  enemy = CpuShip():setFaction("Kraylor"):setTemplate("Atlantis X23"):setPosition(2500, -2500):setScannedByFaction("Human Navy", true):orderRoaming()
  --                Idx, Arc, Dir,  Range, Cycle, Dmg
  enemy:setBeamWeapon(0,   5,   0, 1500.0,   6.0,   1)
  enemy:setBeamWeapon(1,   5,   0, 1500.0,   6.0,   1)
  enemy:setBeamWeapon(2,   5, 180, 1500.0,   6.0,   1)
  --                      Idx, Arc, Dir, Rotation
  enemy:setBeamWeaponTurret(0, 180,   0,     0.25)
  enemy:setBeamWeaponTurret(1, 180,   0,     0.25)
  enemy:setBeamWeaponTurret(2, 360, 180,     0.25)
end)

addGMFunction("Deathray turret enemy", function()
  enemy = CpuShip():setFaction("Kraylor"):setTemplate("Atlantis X23"):setPosition(-2500, 2500):setScannedByFaction("Human Navy", true):orderRoaming()
  --                Idx, Arc, Dir,  Range, Cycle, Dmg
  enemy:setBeamWeapon(0,   5,   0,  500.0,   6.0,   1)
  enemy:setBeamWeapon(1,   5,   0,  500.0,   6.0,   1)
  enemy:setBeamWeapon(2,   1,   0, 3000.0,  20.0, 200)
  --                      Idx, Arc, Dir, Rotation
  enemy:setBeamWeaponTurret(0, 360,   0,        1)
  enemy:setBeamWeaponTurret(1, 360,   0,        1)
  enemy:setBeamWeaponTurret(2,  45,   0,     0.05)
end)