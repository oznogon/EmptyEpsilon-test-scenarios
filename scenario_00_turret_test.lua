-- Name: Turret test
-- Description: An Atlantis with two turreted beams and four idle targets within range.
-- Type: Test

function init()
  -- Create the player ship, and modify its two beam weapons to add turrets
  player = PlayerSpaceship():
    setFaction("Human Navy"):
    setTemplate("Atlantis"):
    setPosition(0, 0):
    --          Idx, Arc, Dir,  Range, Cycle, Dmg
    setBeamWeapon(0,   5, -20, 1500.0,   3.0,  10):
    setBeamWeapon(1,   5,  20, 1500.0,   3.0,  10):
    --                Idx, Arc, Dir, Rotation
    setBeamWeaponTurret(0, 100, -20,     0.25):
    setBeamWeaponTurret(1, 100,  20,     0.25)

  -- Create four targets
  CpuShip():
    setFaction("Kraylor"):
    setTemplate("Tug"):
    setCallSign(tostring(index)):
    setPosition(-500, 500):
    setScannedByFaction("Human Navy", true)
  CpuShip():
    setFaction("Kraylor"):
    setTemplate("Tug"):
    setCallSign("2"):
    setPosition(500, 500):
    setScannedByFaction("Human Navy", true)
  CpuShip():
    setFaction("Kraylor"):
    setTemplate("Tug"):
    setCallSign("3"):
    setPosition(-500, -500):
    setScannedByFaction("Human Navy", true)
  CpuShip():
    setFaction("Kraylor"):
    setTemplate("Tug"):
    setCallSign("4"):
    setPosition(500, -500):
    setScannedByFaction("Human Navy", true)

  -- GM functions to create enemy ships with turrets, to test AI
  addGMFunction("Basic turret enemy", function()
    basic_enemy = CpuShip():
      setFaction("Kraylor"):
      setTemplate("Atlantis X23"):
      setPosition(2500, 2500):
      setScannedByFaction("Human Navy", true):
      orderRoaming():
      --        Index, Arc, Dir,  Range, Cycle, Dmg
      setBeamWeapon(0,   5, -20, 1500.0,   6.0,   1):
      setBeamWeapon(1,   5,  20, 1500.0,   6.0,   1):
      setBeamWeapon(2,   5, 180, 1500.0,   6.0,   1):
      --              Index, Arc, Dir, Rotation
      setBeamWeaponTurret(0, 100, -20,     0.25):
      setBeamWeaponTurret(1, 100,  20,     0.25):
      setBeamWeaponTurret(2, 100, 180,     0.25)
  end)

  addGMFunction("360 turret enemy", function()
    turret_360_enemy = CpuShip():
      setFaction("Kraylor"):
      setTemplate("Atlantis X23"):
      setPosition(2500, -2500):
      setScannedByFaction("Human Navy", true):
      orderRoaming():
      --        Index, Arc, Dir,  Range, Cycle, Dmg
      setBeamWeapon(0,   5,   0, 1500.0,   6.0,   1):
      setBeamWeapon(1,   5,   0, 1500.0,   6.0,   1):
      setBeamWeapon(2,   5, 180, 1500.0,   6.0,   1):
      --              Index, Arc, Dir, Rotation
      setBeamWeaponTurret(0, 180,   0,     0.25):
      setBeamWeaponTurret(1, 180,   0,     0.25):
      setBeamWeaponTurret(2, 360, 180,     0.25)
  end)

  addGMFunction("Deathray turret enemy", function()
    deathray_enemy = CpuShip():
      setFaction("Kraylor"):
      setTemplate("Atlantis X23"):
      setPosition(-2500, 2500):
      setScannedByFaction("Human Navy", true):
      orderRoaming():
      --        Index, Arc, Dir,  Range, Cycle, Dmg
      setBeamWeapon(0,   5,   0,  500.0,   6.0,   1):
      setBeamWeapon(1,   5,   0,  500.0,   6.0,   1):
      setBeamWeapon(2,   1,   0, 3000.0,  20.0, 200):
      --              Index, Arc, Dir, Rotation
      setBeamWeaponTurret(0, 360,   0,        1):
      setBeamWeaponTurret(1, 360,   0,        1):
      setBeamWeaponTurret(2,  45,   0,     0.05)
  end)
end